@interface _ICLexiconManager
+ (unint64_t)countWords:(id)words;
- (_ICLexiconManager)initWithLexiconSources:(id)sources;
- (id)addContactObserver:(id)observer;
- (id)addNamedEntitiesUpdateObserver:(id)observer;
- (id)loadLexicons;
- (id)loadLexicons:(id)lexicons;
- (id)stateName:(int)name;
- (int)debugEntityLoadState;
- (unint64_t)getContactCount;
- (void)_actuallyLoadLexicons;
- (void)_notifyNamedEntitiesUpdateObservers;
- (void)addContact:(id)contact;
- (void)changeContactLoadingState:(int)state;
- (void)changeNamedEntityLoadingState:(int)state;
- (void)completeContacts;
- (void)completeNamedEntities;
- (void)completeRecentContacts;
- (void)completeRecentNamedEntities;
- (void)dealloc;
- (void)doLoadLexicon;
- (void)handleContact:(id)contact;
- (void)handleNamedEntity:(id)entity;
- (void)handleRecentContact:(id)contact;
- (void)handleRecentNamedEntity:(id)entity;
- (void)hibernate;
- (void)printLexiconToNSLog:(_LXLexicon *)log;
- (void)provideFeedbackForString:(id)string type:(unsigned __int8)type style:(unsigned __int8)style;
- (void)removeContact:(id)contact;
- (void)removeContactObserver:(id)observer;
- (void)removeNamedEntitiesUpdateObserver:(id)observer;
- (void)resetNamedEntities;
- (void)setupContacts;
- (void)setupNamedEntities;
- (void)setupRecentContacts;
- (void)setupRecentNamedEntities;
- (void)unloadLexicons;
- (void)warmUp;
@end

@implementation _ICLexiconManager

- (_ICLexiconManager)initWithLexiconSources:(id)sources
{
  v32 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  v27.receiver = self;
  v27.super_class = _ICLexiconManager;
  v6 = [(_ICLexiconManager *)&v27 init];
  v7 = v6;
  if (v6)
  {
    pthread_mutex_init(&v6->_contactsCallbackLock, 0);
    pthread_mutex_init(&v7->_namedEntityCallbackLock, 0);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_UTILITY, 0);

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v12 = [@"com.apple.inputcontext.lexiconmanager." stringByAppendingString:uUIDString];

    v13 = dispatch_queue_create([v12 UTF8String], v9);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v13;

    objc_storeStrong(&v7->_sources, sources);
    v15 = objc_opt_new();
    contacts = v7->_contacts;
    v7->_contacts = v15;

    v17 = objc_opt_new();
    contactObservers = v7->_contactObservers;
    v7->_contactObservers = v17;

    v19 = objc_opt_new();
    namedEntitiesUpdateObservers = v7->_namedEntitiesUpdateObservers;
    v7->_namedEntitiesUpdateObservers = v19;

    *&v7->_contactChangeCount = 0;
    v7->_namedEntityLoadState = 0;
    v21 = [[_ICNamedEntityStore alloc] initWithName:@"InputContext-NamedEntity"];
    namedEntityStore = v7->_namedEntityStore;
    v7->_namedEntityStore = v21;

    v24 = _ICPersNamedEntityOSLogFacility(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [sourcesCopy count];
      *buf = 134218242;
      v29 = v25;
      v30 = 2112;
      v31 = v12;
      _os_log_impl(&dword_254BD0000, v24, OS_LOG_TYPE_DEFAULT, "initialized lexicon manager with %lu sources and serial queue %@", buf, 0x16u);
    }
  }

  return v7;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_contactsCallbackLock);
  pthread_mutex_destroy(&self->_namedEntityCallbackLock);
  v3.receiver = self;
  v3.super_class = _ICLexiconManager;
  [(_ICLexiconManager *)&v3 dealloc];
}

- (void)doLoadLexicon
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = _ICPersNamedEntityOSLogFacility(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254BD0000, v3, OS_LOG_TYPE_DEFAULT, "_ICLexiconManager loading lexicons", buf, 2u);
  }

  [(_ICLexiconManager *)self changeContactLoadingState:1];
  [(_ICLexiconManager *)self changeNamedEntityLoadingState:1];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = self->_sources;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) startLoadingWithManager:{self, v9}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)stateName:(int)name
{
  if ((name - 1) > 3)
  {
    return @"Unloaded";
  }

  else
  {
    return off_2797ADD50[name - 1];
  }
}

- (void)changeContactLoadingState:(int)state
{
  v3 = *&state;
  v12 = *MEMORY[0x277D85DE8];
  v5 = _ICPersContactOSLogFacility(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(_ICLexiconManager *)self stateName:self->_contactLoadState];
    v7 = [(_ICLexiconManager *)self stateName:v3];
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_254BD0000, v5, OS_LOG_TYPE_INFO, "Contacts: State Change: %@ to %@", &v8, 0x16u);
  }

  self->_contactLoadState = v3;
}

- (void)changeNamedEntityLoadingState:(int)state
{
  v3 = *&state;
  v12 = *MEMORY[0x277D85DE8];
  v5 = _ICPersNamedEntityOSLogFacility(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(_ICLexiconManager *)self stateName:self->_namedEntityLoadState];
    v7 = [(_ICLexiconManager *)self stateName:v3];
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_254BD0000, v5, OS_LOG_TYPE_INFO, "Named Entities: State Change: %@ to %@", &v8, 0x16u);
  }

  self->_namedEntityLoadState = v3;
}

- (void)_actuallyLoadLexicons
{
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42___ICLexiconManager__actuallyLoadLexicons__block_invoke;
  v4[3] = &unk_2797ADC20;
  objc_copyWeak(&v5, &location);
  dispatch_async(serialQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (id)loadLexicons:(id)lexicons
{
  lexiconsCopy = lexicons;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  serialQueue = self->_serialQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34___ICLexiconManager_loadLexicons___block_invoke;
  v8[3] = &unk_2797ADC70;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(serialQueue, v8);
  [(_ICLexiconManager *)self _actuallyLoadLexicons];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)loadLexicons
{
  v7[2] = *MEMORY[0x277D85DE8];
  [(_ICLexiconManager *)self _actuallyLoadLexicons];
  wordLexicon = [(_ICNamedEntityStore *)self->_namedEntityStore wordLexicon];
  v7[0] = wordLexicon;
  phraseLexicon = [(_ICNamedEntityStore *)self->_namedEntityStore phraseLexicon];
  v7[1] = phraseLexicon;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  return v5;
}

- (void)unloadLexicons
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _ICPersNamedEntityOSLogFacility(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(_ICLexiconManager *)self stateName:self->_contactLoadState];
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&dword_254BD0000, v3, OS_LOG_TYPE_INFO, " Unloading, state = %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  serialQueue = self->_serialQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35___ICLexiconManager_unloadLexicons__block_invoke;
  v6[3] = &unk_2797ADAB8;
  objc_copyWeak(&v7, buf);
  v6[4] = self;
  dispatch_async(serialQueue, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (id)addContactObserver:(id)observer
{
  observerCopy = observer;
  v5 = [observerCopy copy];
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40___ICLexiconManager_addContactObserver___block_invoke;
  block[3] = &unk_2797ADC98;
  objc_copyWeak(&v14, &location);
  block[4] = self;
  v12 = v5;
  v13 = observerCopy;
  v7 = observerCopy;
  v8 = v5;
  dispatch_async(serialQueue, block);
  v9 = MEMORY[0x259C27030](v8);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v9;
}

- (void)removeContactObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43___ICLexiconManager_removeContactObserver___block_invoke;
  block[3] = &unk_2797ADCC0;
  objc_copyWeak(&v9, &location);
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)addNamedEntitiesUpdateObserver:(id)observer
{
  v4 = [observer copy];
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52___ICLexiconManager_addNamedEntitiesUpdateObserver___block_invoke;
  block[3] = &unk_2797ADCC0;
  objc_copyWeak(&v11, &location);
  v10 = v4;
  v6 = v4;
  dispatch_async(serialQueue, block);
  v7 = MEMORY[0x259C27030](v6);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

- (void)removeNamedEntitiesUpdateObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55___ICLexiconManager_removeNamedEntitiesUpdateObserver___block_invoke;
  block[3] = &unk_2797ADCC0;
  objc_copyWeak(&v9, &location);
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_notifyNamedEntitiesUpdateObservers
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = _ICPersNamedEntityOSLogFacility(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSMutableArray *)self->_namedEntitiesUpdateObservers count];
    *buf = 134218240;
    selfCopy = self;
    v17 = 2048;
    v18 = v4;
    _os_log_impl(&dword_254BD0000, v3, OS_LOG_TYPE_DEFAULT, "%p Calling %ld named entities update observers", buf, 0x16u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_namedEntitiesUpdateObservers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addContact:(id)contact
{
  contactCopy = contact;
  source = [contactCopy source];
  v6 = source;
  contact = _ICPersNamedEntityOSLogFacility(source);
  v8 = os_log_type_enabled(contact, OS_LOG_TYPE_DEBUG);
  if (v6 == 1)
  {
    if (v8)
    {
      [(_ICLexiconManager *)contactCopy addContact:contact, v9, v10, v11, v12, v13, v14];
    }

    contact = [contactCopy contact];
    contacts = self->_contacts;
    identifier = [contactCopy identifier];
    [(NSMutableDictionary *)contacts setObject:contact forKeyedSubscript:identifier];
  }

  else if (v8)
  {
    [(_ICLexiconManager *)contactCopy addContact:contact, v9, v10, v11, v12, v13, v14];
  }
}

- (void)removeContact:(id)contact
{
  contactCopy = contact;
  v5 = _ICPersNamedEntityOSLogFacility(contactCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(_ICLexiconManager *)contactCopy removeContact:v5, v6, v7, v8, v9, v10, v11];
  }

  contacts = self->_contacts;
  identifier = [contactCopy identifier];
  [(NSMutableDictionary *)contacts removeObjectForKey:identifier];
}

- (void)resetNamedEntities
{
  pthread_mutex_lock(&self->_namedEntityCallbackLock);
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39___ICLexiconManager_resetNamedEntities__block_invoke;
  v4[3] = &unk_2797ADC20;
  objc_copyWeak(&v5, &location);
  dispatch_async(serialQueue, v4);
  pthread_mutex_unlock(&self->_namedEntityCallbackLock);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)setupNamedEntities
{
  pthread_mutex_lock(&self->_namedEntityCallbackLock);
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39___ICLexiconManager_setupNamedEntities__block_invoke;
  v4[3] = &unk_2797ADC20;
  objc_copyWeak(&v5, &location);
  dispatch_async(serialQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)handleNamedEntity:(id)entity
{
  entityCopy = entity;
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39___ICLexiconManager_handleNamedEntity___block_invoke;
  block[3] = &unk_2797ADCE8;
  v8 = entityCopy;
  v6 = entityCopy;
  objc_copyWeak(&v9, &location);
  dispatch_async(serialQueue, block);
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

- (void)completeNamedEntities
{
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42___ICLexiconManager_completeNamedEntities__block_invoke;
  v4[3] = &unk_2797ADC20;
  objc_copyWeak(&v5, &location);
  dispatch_async(serialQueue, v4);
  pthread_mutex_unlock(&self->_namedEntityCallbackLock);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)setupRecentNamedEntities
{
  pthread_mutex_lock(&self->_namedEntityCallbackLock);
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45___ICLexiconManager_setupRecentNamedEntities__block_invoke;
  v4[3] = &unk_2797ADC20;
  objc_copyWeak(&v5, &location);
  dispatch_async(serialQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)handleRecentNamedEntity:(id)entity
{
  entityCopy = entity;
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45___ICLexiconManager_handleRecentNamedEntity___block_invoke;
  block[3] = &unk_2797ADCE8;
  v8 = entityCopy;
  v6 = entityCopy;
  objc_copyWeak(&v9, &location);
  dispatch_async(serialQueue, block);
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

- (void)completeRecentNamedEntities
{
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48___ICLexiconManager_completeRecentNamedEntities__block_invoke;
  v4[3] = &unk_2797ADC20;
  objc_copyWeak(&v5, &location);
  dispatch_async(serialQueue, v4);
  pthread_mutex_unlock(&self->_namedEntityCallbackLock);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)setupContacts
{
  pthread_mutex_lock(&self->_contactsCallbackLock);
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34___ICLexiconManager_setupContacts__block_invoke;
  v4[3] = &unk_2797ADC20;
  objc_copyWeak(&v5, &location);
  dispatch_async(serialQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)handleContact:(id)contact
{
  contactCopy = contact;
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35___ICLexiconManager_handleContact___block_invoke;
  block[3] = &unk_2797ADCE8;
  v8 = contactCopy;
  v6 = contactCopy;
  objc_copyWeak(&v9, &location);
  dispatch_async(serialQueue, block);
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

- (void)completeContacts
{
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37___ICLexiconManager_completeContacts__block_invoke;
  block[3] = &unk_2797ADCE8;
  block[4] = self;
  objc_copyWeak(&v5, &location);
  dispatch_async(serialQueue, block);
  pthread_mutex_unlock(&self->_contactsCallbackLock);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)setupRecentContacts
{
  pthread_mutex_lock(&self->_contactsCallbackLock);
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40___ICLexiconManager_setupRecentContacts__block_invoke;
  v4[3] = &unk_2797ADC20;
  objc_copyWeak(&v5, &location);
  dispatch_async(serialQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)handleRecentContact:(id)contact
{
  contactCopy = contact;
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41___ICLexiconManager_handleRecentContact___block_invoke;
  v7[3] = &unk_2797ADB08;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = contactCopy;
  v6 = contactCopy;
  dispatch_async(serialQueue, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)completeRecentContacts
{
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43___ICLexiconManager_completeRecentContacts__block_invoke;
  block[3] = &unk_2797ADCE8;
  block[4] = self;
  objc_copyWeak(&v5, &location);
  dispatch_async(serialQueue, block);
  pthread_mutex_unlock(&self->_contactsCallbackLock);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)warmUp
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_sources;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) warmUp];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)hibernate
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_sources;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) hibernate];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)printLexiconToNSLog:(_LXLexicon *)log
{
  RootCursor = LXLexiconCreateRootCursor();
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = __Block_byref_object_copy__1;
  v6[4] = __Block_byref_object_dispose__1;
  v7 = @"IC-DICT: ";
  LXCursorEnumerateEntriesRecursively();
  CFRelease(RootCursor);
  v5 = _ICPersNamedEntityOSLogFacility(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_ICLexiconManager printLexiconToNSLog:];
  }

  _Block_object_dispose(v6, 8);
}

+ (unint64_t)countWords:(id)words
{
  v3 = MEMORY[0x277CCA900];
  wordsCopy = words;
  whitespaceAndNewlineCharacterSet = [v3 whitespaceAndNewlineCharacterSet];
  v6 = [wordsCopy componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

  v7 = [v6 indexesOfObjectsPassingTest:&__block_literal_global_2];
  v8 = [v6 count];
  v9 = v8 - [v7 count];

  return v9;
}

- (unint64_t)getContactCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36___ICLexiconManager_getContactCount__block_invoke;
  v5[3] = &unk_2797ADC70;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int)debugEntityLoadState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41___ICLexiconManager_debugEntityLoadState__block_invoke;
  v5[3] = &unk_2797ADC70;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)provideFeedbackForString:(id)string type:(unsigned __int8)type style:(unsigned __int8)style
{
  styleCopy = style;
  typeCopy = type;
  v20 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = self->_sources;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 provideFeedbackForString:stringCopy type:typeCopy style:{styleCopy, v15}];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)addContact:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_254BD0000, a2, a3, " Rejecting contact %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)addContact:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_254BD0000, a2, a3, " Adding contact %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)removeContact:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_254BD0000, a2, a3, " Removing contact %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end