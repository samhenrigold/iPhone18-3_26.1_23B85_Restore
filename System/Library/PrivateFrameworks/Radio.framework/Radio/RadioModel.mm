@interface RadioModel
+ (id)_persistentStoreConfigurationOptions;
+ (id)_radioDatabasePath;
+ (id)_radioDirectoryPath;
+ (id)backgroundModel;
+ (id)sharedModel;
+ (void)_postAccountDidDeauthenticateNotification;
+ (void)deleteAllData;
- (NSArray)allStations;
- (NSArray)featuredStations;
- (NSArray)previewStations;
- (NSArray)reportProblemIssueTypes;
- (NSArray)stationSortOrdering;
- (NSArray)userStations;
- (NSString)globalHash;
- (RadioModel)init;
- (id)_arrayByReplacingManagedObjectsInArray:(id)array;
- (id)_databasePropertyValueForKey:(id)key;
- (id)_init;
- (id)_initBackgroundModelWithPersistentStoreCoordinator:(id)coordinator;
- (id)_setByReplacingManagedObjectsInSet:(id)set;
- (id)convertObject:(id)object;
- (id)convertObjects:(id)objects;
- (id)convertObjectsInSet:(id)set;
- (id)newFeaturedStationWithDictionary:(id)dictionary;
- (id)newPreviewStationWithDictionary:(id)dictionary;
- (id)newStationWithDictionary:(id)dictionary;
- (id)stationWithHash:(id)hash;
- (id)stationWithID:(int64_t)d;
- (id)stationWithPersistentID:(int64_t)d;
- (id)stationWithStationStringID:(id)d;
- (int64_t)databaseVersion;
- (unint64_t)_numberOfSkipsUsedWithSkipTimestamps:(id)timestamps currentTimestamp:(double)timestamp skipInterval:(double)interval returningEarliestSkipTimestamp:(double *)skipTimestamp;
- (unint64_t)authenticatedAccountIdentifier;
- (unint64_t)globalVersion;
- (void)_beginBackgroundTaskAssertion;
- (void)_contextDidSaveNotification:(id)notification;
- (void)_createRadioDirectoryAndDatabaseIfNecessary;
- (void)_defaultRadioModelInitialization;
- (void)_endBackgroundTaskAssertion;
- (void)_performTransactionAndSave:(BOOL)save withBlock:(id)block;
- (void)_postContextDidChangeNotification:(id)notification;
- (void)_prepareModel;
- (void)_resetModel;
- (void)_setDatabasePropertyValue:(id)value forKey:(id)key;
- (void)dealloc;
- (void)deleteAllData;
- (void)deleteStation:(id)station;
- (void)deleteStationWithID:(int64_t)d;
- (void)setAuthenticatedAccountIdentifier:(unint64_t)identifier;
- (void)setDatabaseVersion:(int64_t)version;
- (void)setGlobalVersion:(unint64_t)version;
- (void)setReportProblemIssueTypes:(id)types;
- (void)setStationSortOrdering:(id)ordering;
- (void)setTrackPlaybackDescriptorQueue:(id)queue forStation:(id)station;
@end

@implementation RadioModel

- (void)_setDatabasePropertyValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (keyCopy)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{keyCopy, @"key", 0}];
    v9 = [(NSManagedObjectModel *)self->_model fetchRequestFromTemplateWithName:@"DatabasePropertyKeyToProperty" substitutionVariables:v8];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __47__RadioModel__setDatabasePropertyValue_forKey___block_invoke;
    v11[3] = &unk_279AEA948;
    v11[4] = self;
    v12 = v9;
    v13 = keyCopy;
    v14 = valueCopy;
    v10 = v9;
    [(RadioModel *)self performWriteTransactionWithBlock:v11];
  }
}

void __47__RadioModel__setDatabasePropertyValue_forKey___block_invoke(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 48) executeFetchRequest:a1[5] error:0];
  v3 = [v2 lastObject];

  [v3 willAccessValueForKey:@"value"];
  v4 = [v3 valueForKey:@"value"];
  [v3 didAccessValueForKey:@"value"];
  if (!v3)
  {
    v5 = objc_alloc(MEMORY[0x277CBE438]);
    v6 = [MEMORY[0x277CBE408] entityForName:@"DatabaseProperty" inManagedObjectContext:*(a1[4] + 48)];
    v3 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:*(a1[4] + 48)];

    [v3 willChangeValueForKey:@"key"];
    [v3 setValue:a1[6] forKey:@"key"];
    [v3 didChangeValueForKey:@"key"];
  }

  if (v4 != a1[7] && ([v4 isEqualToString:?] & 1) == 0)
  {
    v7 = os_log_create("com.apple.amp.radio", "Model");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_261792000, v7, OS_LOG_TYPE_INFO, "[RadioModel] Setting database property: %@", &v8, 0xCu);
    }

    [v3 willChangeValueForKey:@"value"];
    [v3 setValue:a1[7] forKey:@"value"];
    [v3 didChangeValueForKey:@"value"];
  }
}

- (id)_setByReplacingManagedObjectsInSet:(id)set
{
  v19 = *MEMORY[0x277D85DE8];
  setCopy = set;
  if ([setCopy count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(setCopy, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = setCopy;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [[RadioStation alloc] initWithModel:self managedObject:v11];
            [v5 addObject:v12];
          }

          else
          {
            [v5 addObject:{v11, v14}];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_resetModel
{
  v17 = *MEMORY[0x277D85DE8];
  [(NSFetchedResultsController *)self->_stationFetchedResultsController setDelegate:0];
  stationFetchedResultsController = self->_stationFetchedResultsController;
  self->_stationFetchedResultsController = 0;

  stationFetchRequest = self->_stationFetchRequest;
  self->_stationFetchRequest = 0;

  persistentStores = [(NSPersistentStoreCoordinator *)self->_storeCoordinator persistentStores];
  v6 = [persistentStores copy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(NSPersistentStoreCoordinator *)self->_storeCoordinator removePersistentStore:*(*(&v12 + 1) + 8 * v11++) error:0, v12];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_prepareModel
{
  [(RadioModel *)self _createRadioDirectoryAndDatabaseIfNecessary];
  v3 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
  context = self->_context;
  self->_context = v3;

  v5 = self->_context;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __27__RadioModel__prepareModel__block_invoke;
  v17[3] = &unk_279AEAE60;
  v17[4] = self;
  [(NSManagedObjectContext *)v5 performBlockAndWait:v17];
  v6 = objc_alloc_init(MEMORY[0x277CBE428]);
  stationFetchRequest = self->_stationFetchRequest;
  self->_stationFetchRequest = v6;

  v8 = self->_stationFetchRequest;
  v9 = [MEMORY[0x277CBE408] entityForName:@"Station" inManagedObjectContext:self->_context];
  [(NSFetchRequest *)v8 setEntity:v9];

  v10 = self->_stationFetchRequest;
  v11 = +[RadioManagedStation defaultPropertiesToFetch];
  [(NSFetchRequest *)v10 setPropertiesToFetch:v11];

  v12 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"sort_order" ascending:1];
  v13 = self->_stationFetchRequest;
  v14 = [MEMORY[0x277CBEA60] arrayWithObject:v12];
  [(NSFetchRequest *)v13 setSortDescriptors:v14];

  [(NSFetchRequest *)self->_stationFetchRequest setFetchBatchSize:10];
  v15 = [objc_alloc(MEMORY[0x277CBE430]) initWithFetchRequest:self->_stationFetchRequest managedObjectContext:self->_context sectionNameKeyPath:0 cacheName:0];
  stationFetchedResultsController = self->_stationFetchedResultsController;
  self->_stationFetchedResultsController = v15;

  [(NSFetchedResultsController *)self->_stationFetchedResultsController setDelegate:self];
}

uint64_t __27__RadioModel__prepareModel__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  if (*(v2 + 56))
  {
    v4 = MEMORY[0x277CBE1C8];
  }

  else
  {
    v4 = MEMORY[0x277CBE1D0];
  }

  [v3 setMergePolicy:*v4];
  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  v7 = *(v5 + 112);

  return [v6 setPersistentStoreCoordinator:v7];
}

- (void)_postContextDidChangeNotification:(id)notification
{
  v42 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = os_log_create("com.apple.amp.radio", "Model");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v41 = @"RadioModelDidChangeNotification";
    _os_log_impl(&dword_261792000, v5, OS_LOG_TYPE_INFO, "[RadioModel] Posting '%@'", buf, 0xCu);
  }

  userInfo = [notificationCopy userInfo];
  v7 = [userInfo mutableCopy];

  v8 = [v7 objectForKey:@"inserted"];
  v9 = [(RadioModel *)self convertObjectsInSet:v8];

  if ([v9 count])
  {
    v10 = [(RadioModel *)self _setByReplacingManagedObjectsInSet:v9];
    [v7 setObject:v10 forKey:@"inserted"];
  }

  v11 = [v7 objectForKey:@"updated"];
  v12 = [(RadioModel *)self convertObjectsInSet:v11];

  if ([v12 count])
  {
    v13 = [(RadioModel *)self _setByReplacingManagedObjectsInSet:v12];
    [v7 setObject:v13 forKey:@"updated"];
  }

  v14 = [v7 objectForKey:@"deleted"];
  v15 = [(RadioModel *)self convertObjectsInSet:v14];

  if ([v15 count])
  {
    v16 = [(RadioModel *)self _setByReplacingManagedObjectsInSet:v15];
    [v7 setObject:v16 forKey:@"deleted"];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"RadioModelDidChangeNotification" object:self userInfo:v7];

  if (self->_modelChangedTokenIsValid)
  {
    v29 = v12;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v18 = v9;
    v19 = [v18 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v35;
LABEL_12:
      v22 = 0;
      while (1)
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(v18);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v20 == ++v22)
        {
          v20 = [v18 countByEnumeratingWithState:&v34 objects:v39 count:16];
          if (v20)
          {
            goto LABEL_12;
          }

          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_18:

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v18 = v15;
      v23 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (!v23)
      {
LABEL_26:

LABEL_28:
        v12 = v29;
        goto LABEL_29;
      }

      v24 = v23;
      v25 = *v31;
LABEL_20:
      v26 = 0;
      while (1)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(v18);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v24 == ++v26)
        {
          v24 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v24)
          {
            goto LABEL_20;
          }

          goto LABEL_26;
        }
      }
    }

    modelChangedToken = self->_modelChangedToken;
    v28 = getpid();
    notify_set_state(modelChangedToken, v28);
    notify_post("com.apple.Radio.model-changed");
    goto LABEL_28;
  }

LABEL_29:
}

- (void)_performTransactionAndSave:(BOOL)save withBlock:(id)block
{
  blockCopy = block;
  context = self->_context;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__RadioModel__performTransactionAndSave_withBlock___block_invoke;
  v9[3] = &unk_279AEA920;
  v9[4] = self;
  v10 = blockCopy;
  saveCopy = save;
  v8 = blockCopy;
  [(NSManagedObjectContext *)context performBlockAndWait:v9];
}

uint64_t __51__RadioModel__performTransactionAndSave_withBlock___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  ++*(*(a1 + 32) + 120);
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  result = *(a1 + 32);
  if (*(result + 120) == 1 && *(a1 + 48) == 1)
  {
    v4 = [*(result + 48) hasChanges];
    result = *(a1 + 32);
    if (v4)
    {
      if (*(result + 56) == 1)
      {
        [result _beginBackgroundTaskAssertion];
        result = *(a1 + 32);
      }

      [*(result + 48) processPendingChanges];
      v5 = *(*(a1 + 32) + 48);
      v10 = 0;
      v6 = [v5 save:&v10];
      v7 = v10;
      if ((v6 & 1) == 0)
      {
        v8 = os_log_create("com.apple.amp.radio", "Model");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v12 = v7;
          _os_log_impl(&dword_261792000, v8, OS_LOG_TYPE_ERROR, "[RadioModel] Error: Unable to save (%@)", buf, 0xCu);
        }
      }

      v9 = *(a1 + 32);
      if (v9[56] == 1)
      {
        [v9 _endBackgroundTaskAssertion];
      }

      result = *(a1 + 32);
    }
  }

  --*(result + 120);
  return result;
}

- (void)_endBackgroundTaskAssertion
{
  accessSerialQueue = self->_accessSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__RadioModel__endBackgroundTaskAssertion__block_invoke;
  block[3] = &unk_279AEAE60;
  block[4] = self;
  dispatch_async(accessSerialQueue, block);
}

void __41__RadioModel__endBackgroundTaskAssertion__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  v3 = v2 < 1;
  v4 = v2 - 1;
  if (!v3)
  {
    *(v1 + 32) = v4;
    v6 = *(a1 + 32);
    if (!v6[4])
    {
      v7 = v6[5];
      if (v7)
      {
        dispatch_source_cancel(v7);
        v8 = *(a1 + 32);
        v9 = *(v8 + 40);
        *(v8 + 40) = 0;

        v6 = *(a1 + 32);
      }

      objc_initWeak(&location, v6);
      v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(*(a1 + 32) + 8));
      v11 = *(a1 + 32);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v13 = *(*(a1 + 32) + 40);
      v14 = dispatch_time(0, 1000000000);
      dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
      v15 = *(*(a1 + 32) + 40);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __41__RadioModel__endBackgroundTaskAssertion__block_invoke_2;
      v16[3] = &unk_279AEA8F8;
      objc_copyWeak(&v17, &location);
      dispatch_source_set_event_handler(v15, v16);
      dispatch_resume(*(*(a1 + 32) + 40));
      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }
}

void __41__RadioModel__endBackgroundTaskAssertion__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if (!WeakRetained[4])
    {
      v3 = os_log_create("com.apple.amp.radio", "Model");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = v2;
        _os_log_impl(&dword_261792000, v3, OS_LOG_TYPE_INFO, "[RadioModel] Invalidating process assertion for model: %@", &v7, 0xCu);
      }

      [*(v2 + 3) invalidate];
      v4 = *(v2 + 3);
      *(v2 + 3) = 0;
    }

    v5 = *(v2 + 5);
    if (v5)
    {
      dispatch_source_cancel(v5);
      v6 = *(v2 + 5);
      *(v2 + 5) = 0;
    }
  }
}

- (id)_databasePropertyValueForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{keyCopy, @"key", 0}];
    v6 = [(NSManagedObjectModel *)self->_model fetchRequestFromTemplateWithName:@"DatabasePropertyKeyToProperty" substitutionVariables:v5];
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__124;
    v17 = __Block_byref_object_dispose__125;
    v18 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__RadioModel__databasePropertyValueForKey___block_invoke;
    v10[3] = &unk_279AEA880;
    v10[4] = self;
    v7 = v6;
    v11 = v7;
    v12 = &v13;
    [(RadioModel *)self performTransactionWithBlock:v10];
    v8 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __43__RadioModel__databasePropertyValueForKey___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 48) executeFetchRequest:a1[5] error:0];
  v6 = [v2 lastObject];

  if (v6)
  {
    [v6 willAccessValueForKey:@"value"];
    v3 = [v6 valueForKey:@"value"];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [v6 didAccessValueForKey:@"value"];
  }
}

- (void)_createRadioDirectoryAndDatabaseIfNecessary
{
  v72 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&__databaseLock);
  if (!self->_storeCoordinator)
  {
    if (!self->_model)
    {
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = [v4 pathForResource:@"Radio" ofType:@"momd"];

      if (!v5)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"RadioModel.m" lineNumber:1092 description:@"unable to find model"];
      }

      v64 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5 isDirectory:0];
      v6 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:v64];
      model = self->_model;
      self->_model = v6;

      entitiesByName = [(NSManagedObjectModel *)self->_model entitiesByName];
      v9 = [entitiesByName objectForKey:@"Station"];

      v10 = objc_alloc_init(MEMORY[0x277CBE428]);
      [v10 setEntity:v9];
      v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"station_id == $stationID"];
      [v10 setPredicate:v11];

      v63 = v5;
      v12 = +[RadioManagedStation defaultPropertiesToFetch];
      [v10 setPropertiesToFetch:v12];

      [(NSManagedObjectModel *)self->_model setFetchRequestTemplate:v10 forName:@"StationIDToStation"];
      v13 = objc_alloc_init(MEMORY[0x277CBE428]);
      v62 = v9;
      [v13 setEntity:v9];
      v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"station_hash == $stationHash"];
      [v13 setPredicate:v14];

      v15 = +[RadioManagedStation defaultPropertiesToFetch];
      [v13 setPropertiesToFetch:v15];

      [(NSManagedObjectModel *)self->_model setFetchRequestTemplate:v13 forName:@"StationHashToStation"];
      v16 = objc_alloc_init(MEMORY[0x277CBE428]);
      [v16 setEntity:v9];
      v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"station_string_id == $stationStringID"];
      [v16 setPredicate:v17];

      v18 = +[RadioManagedStation defaultPropertiesToFetch];
      [v16 setPropertiesToFetch:v18];

      [(NSManagedObjectModel *)self->_model setFetchRequestTemplate:v16 forName:@"StationStringIDToStation"];
      v19 = objc_alloc_init(MEMORY[0x277CBE428]);
      entitiesByName2 = [(NSManagedObjectModel *)self->_model entitiesByName];
      v21 = [entitiesByName2 objectForKey:@"SkipHistory"];
      [v19 setEntity:v21];

      v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"skip_identifier == $skipIdentifier"];
      [v19 setPredicate:v22];

      [v19 setPropertiesToFetch:&unk_2874055F0];
      [(NSManagedObjectModel *)self->_model setFetchRequestTemplate:v19 forName:@"SkipIdentifierToSkipHistory"];
      v23 = objc_alloc_init(MEMORY[0x277CBE428]);
      entitiesByName3 = [(NSManagedObjectModel *)self->_model entitiesByName];
      v25 = [entitiesByName3 objectForKey:@"SkipHistory"];
      [v23 setEntity:v25];

      v26 = [MEMORY[0x277CCAC30] predicateWithFormat:@"station_hash == $stationHash"];
      [v23 setPredicate:v26];

      [v23 setPropertiesToFetch:&unk_287405608];
      [(NSManagedObjectModel *)self->_model setFetchRequestTemplate:v23 forName:@"StationHashToSkipHistory"];
      v27 = objc_alloc_init(MEMORY[0x277CBE428]);
      entitiesByName4 = [(NSManagedObjectModel *)self->_model entitiesByName];
      v29 = [entitiesByName4 objectForKey:@"SkipHistory"];
      [v27 setEntity:v29];

      v30 = [MEMORY[0x277CCAC30] predicateWithFormat:@"station_id == $stationID"];
      [v27 setPredicate:v30];

      [v27 setPropertiesToFetch:&unk_287405620];
      [(NSManagedObjectModel *)self->_model setFetchRequestTemplate:v27 forName:@"StationIDToSkipHistory"];
      v31 = objc_alloc_init(MEMORY[0x277CBE428]);
      entitiesByName5 = [(NSManagedObjectModel *)self->_model entitiesByName];
      v33 = [entitiesByName5 objectForKey:@"DatabaseProperty"];
      [v31 setEntity:v33];

      v34 = [MEMORY[0x277CCAC30] predicateWithFormat:@"key == $key"];
      [v31 setPredicate:v34];

      [(NSManagedObjectModel *)self->_model setFetchRequestTemplate:v31 forName:@"DatabasePropertyKeyToProperty"];
    }

    v35 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:self->_model];
    storeCoordinator = self->_storeCoordinator;
    self->_storeCoordinator = v35;
  }

  _radioDirectoryPath = [objc_opt_class() _radioDirectoryPath];
  v38 = objc_alloc_init(MEMORY[0x277CCAA00]);
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v41 = [&unk_287405638 containsObject:bundleIdentifier];

  v67 = 0;
  if ([v38 fileExistsAtPath:_radioDirectoryPath isDirectory:&v67])
  {
    if (v67)
    {
      goto LABEL_16;
    }

    [v38 removeItemAtPath:_radioDirectoryPath error:0];
  }

  if ((v41 & 1) != 0 || ([_radioDirectoryPath stringByDeletingLastPathComponent], v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v38, "isWritableFileAtPath:", v42), v42, v43))
  {
    [v38 createDirectoryAtPath:_radioDirectoryPath withIntermediateDirectories:1 attributes:0 error:0];
  }

  else
  {
    v44 = os_log_create("com.apple.amp.radio", "Model");
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      stringByDeletingLastPathComponent = [_radioDirectoryPath stringByDeletingLastPathComponent];
      *buf = 138412290;
      v69 = stringByDeletingLastPathComponent;
      _os_log_impl(&dword_261792000, v44, OS_LOG_TYPE_ERROR, "[RadioModel] Error: Unable to write to '%@' to create database", buf, 0xCu);
    }
  }

LABEL_16:
  _radioDatabasePath = [objc_opt_class() _radioDatabasePath];
  v47 = [MEMORY[0x277CBEBC0] fileURLWithPath:_radioDatabasePath isDirectory:0];
  v48 = [(NSPersistentStoreCoordinator *)self->_storeCoordinator persistentStoreForURL:v47];

  if (!v48)
  {
    _persistentStoreConfigurationOptions = [objc_opt_class() _persistentStoreConfigurationOptions];
    v50 = *MEMORY[0x277CBE2E8];
    v51 = [(NSPersistentStoreCoordinator *)self->_storeCoordinator addPersistentStoreWithType:*MEMORY[0x277CBE2E8] configuration:0 URL:v47 options:_persistentStoreConfigurationOptions error:0];
    if (!v51)
    {
      if (v41 & 1) != 0 || ([v38 isWritableFileAtPath:_radioDatabasePath])
      {
        v52 = os_log_create("com.apple.amp.radio", "Model");
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_261792000, v52, OS_LOG_TYPE_ERROR, "[RadioModel] Database missing or corrupt, starting over.", buf, 2u);
        }

        v53 = self->_storeCoordinator;
        _persistentStoreConfigurationOptions2 = [objc_opt_class() _persistentStoreConfigurationOptions];
        v66 = 0;
        v55 = [(NSPersistentStoreCoordinator *)v53 _destroyPersistentStoreAtURL:v47 withType:v50 options:_persistentStoreConfigurationOptions2 error:&v66];
        v56 = v66;

        v57 = os_log_create("com.apple.amp.radio", "Model");
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v58 = @"NO";
          if (v55)
          {
            v58 = @"YES";
          }

          *buf = 138412546;
          v69 = v58;
          v70 = 2112;
          v71 = v56;
          _os_log_impl(&dword_261792000, v57, OS_LOG_TYPE_ERROR, "[RadioModel] Attempted database reset with success: %@ (%@)", buf, 0x16u);
        }

        v59 = self->_storeCoordinator;
        v65 = 0;
        v51 = [(NSPersistentStoreCoordinator *)v59 addPersistentStoreWithType:v50 configuration:0 URL:v47 options:_persistentStoreConfigurationOptions error:&v65];
        v60 = v65;
        if (!v51)
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Radio: Unable to create database (%@)", v60}];
        }
      }

      else
      {
        v56 = os_log_create("com.apple.amp.radio", "Model");
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_261792000, v56, OS_LOG_TYPE_ERROR, "[RadioModel] Database missing or corrupt, giving up.", buf, 2u);
        }

        v51 = 0;
      }
    }
  }

  os_unfair_lock_unlock(&__databaseLock);
}

- (unint64_t)_numberOfSkipsUsedWithSkipTimestamps:(id)timestamps currentTimestamp:(double)timestamp skipInterval:(double)interval returningEarliestSkipTimestamp:(double *)skipTimestamp
{
  v25 = *MEMORY[0x277D85DE8];
  timestampsCopy = timestamps;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [timestampsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v10)
  {
    v12 = 0;
    v14 = 1.79769313e308;
    if (!skipTimestamp)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v21;
  v14 = 1.79769313e308;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v21 != v13)
      {
        objc_enumerationMutation(timestampsCopy);
      }

      [*(*(&v20 + 1) + 8 * i) doubleValue];
      if (v16 < v14)
      {
        v14 = v16;
      }

      if (timestamp - v16 < interval)
      {
        ++v12;
      }
    }

    v11 = [timestampsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v11);
  if (skipTimestamp)
  {
LABEL_13:
    v17 = [timestampsCopy count];
    v18 = 0.0;
    if (v17)
    {
      v18 = v14;
    }

    *skipTimestamp = v18;
  }

LABEL_16:

  return v12;
}

- (void)_defaultRadioModelInitialization
{
  v3 = dispatch_queue_create("com.apple.Radio.RadioModel.accessSerialQueue", 0);
  accessSerialQueue = self->_accessSerialQueue;
  self->_accessSerialQueue = v3;

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __46__RadioModel__defaultRadioModelInitialization__block_invoke;
  handler[3] = &unk_279AEA8D0;
  handler[4] = self;
  v5 = MEMORY[0x277D85CD0];
  self->_modelChangedTokenIsValid = notify_register_dispatch("com.apple.Radio.model-changed", &self->_modelChangedToken, MEMORY[0x277D85CD0], handler) == 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__RadioModel__defaultRadioModelInitialization__block_invoke_300;
  v8[3] = &unk_279AEA8D0;
  v8[4] = self;
  v6 = notify_register_dispatch("com.apple.Radio.model-deleted", &self->_modelDeletedToken, v5, v8);

  self->_modelDeletedTokenIsValid = v6 == 0;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contextDidSaveNotification_ name:*MEMORY[0x277CBE1A8] object:0];
}

void __46__RadioModel__defaultRadioModelInitialization__block_invoke(uint64_t a1, int token)
{
  v17 = *MEMORY[0x277D85DE8];
  state64 = 0;
  notify_get_state(token, &state64);
  v3 = os_log_create("com.apple.amp.radio", "Model");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v16) = state64;
    _os_log_impl(&dword_261792000, v3, OS_LOG_TYPE_INFO, "[RadioModel] Model changed with pid: %i", buf, 8u);
  }

  v4 = state64;
  v5 = getpid();
  v6 = v5;
  if (*(*(a1 + 32) + 48))
  {
    v7 = v4 == v5;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = os_log_create("com.apple.amp.radio", "Model");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_261792000, v8, OS_LOG_TYPE_INFO, "[RadioModel] Rebuilding model for external change...", buf, 2u);
    }

    v9 = *(a1 + 32);
    v10 = v9[6];
    if (v10 && v4 != v6)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __46__RadioModel__defaultRadioModelInitialization__block_invoke_295;
      v13[3] = &unk_279AEAE60;
      v13[4] = v9;
      [v10 performBlockAndWait:v13];
      v9 = *(a1 + 32);
    }

    [v9 _prepareModel];
    v11 = os_log_create("com.apple.amp.radio", "Model");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = @"RadioModelDidChangeNotification";
      _os_log_impl(&dword_261792000, v11, OS_LOG_TYPE_INFO, "[RadioModel] Posting '%@' due to an external change", buf, 0xCu);
    }

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 postNotificationName:@"RadioModelDidChangeNotification" object:*(a1 + 32)];
  }
}

void __46__RadioModel__defaultRadioModelInitialization__block_invoke_300(uint64_t a1, int token)
{
  v19 = *MEMORY[0x277D85DE8];
  state64 = 0;
  notify_get_state(token, &state64);
  v3 = os_log_create("com.apple.amp.radio", "Model");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v16) = state64;
    _os_log_impl(&dword_261792000, v3, OS_LOG_TYPE_INFO, "[RadioModel] Model deleted with pid: %i", buf, 8u);
  }

  v4 = state64;
  v5 = getpid();
  v6 = os_log_create("com.apple.amp.radio", "Model");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_261792000, v6, OS_LOG_TYPE_INFO, "[RadioModel] Rebuilding model for external deletion...", buf, 2u);
  }

  v7 = *(a1 + 32);
  v8 = v7[6];
  if (v8)
  {
    v9 = v4 == v5;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __46__RadioModel__defaultRadioModelInitialization__block_invoke_301;
    v13[3] = &unk_279AEAE60;
    v13[4] = v7;
    [v8 performBlockAndWait:v13];
    v7 = *(a1 + 32);
  }

  [v7 _prepareModel];
  v10 = os_log_create("com.apple.amp.radio", "Model");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v16 = @"RadioModelWasDeletedNotification";
    v17 = 2112;
    v18 = @"RadioModelDidChangeNotification";
    _os_log_impl(&dword_261792000, v10, OS_LOG_TYPE_INFO, "[RadioModel] Posting '%@', '%@' due to an external deletion", buf, 0x16u);
  }

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 postNotificationName:@"RadioModelWasDeletedNotification" object:*(a1 + 32)];

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 postNotificationName:@"RadioModelDidChangeNotification" object:*(a1 + 32)];
}

void __46__RadioModel__defaultRadioModelInitialization__block_invoke_301(uint64_t a1)
{
  [*(a1 + 32) _resetModel];
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;
}

void __46__RadioModel__defaultRadioModelInitialization__block_invoke_295(uint64_t a1)
{
  [*(a1 + 32) _resetModel];
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;
}

- (void)_beginBackgroundTaskAssertion
{
  accessSerialQueue = self->_accessSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__RadioModel__beginBackgroundTaskAssertion__block_invoke;
  block[3] = &unk_279AEAE60;
  block[4] = self;
  dispatch_sync(accessSerialQueue, block);
}

void __43__RadioModel__beginBackgroundTaskAssertion__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  ++*(*(a1 + 32) + 32);
  v2 = *(a1 + 32);
  v3 = v2[5];
  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;

    v2 = *(a1 + 32);
  }

  if (v2[4] >= 1 && !v2[3])
  {
    v6 = dispatch_semaphore_create(0);
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v7 = objc_alloc(MEMORY[0x277CEEEA8]);
    v8 = getpid();
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __43__RadioModel__beginBackgroundTaskAssertion__block_invoke_2;
    v22 = &unk_279AEA8A8;
    v24 = &v25;
    v9 = v6;
    v23 = v9;
    v10 = [v7 initWithPID:v8 flags:21 reason:4 name:@"RadioModelSaveAssertion" withHandler:&v19];
    v11 = *(a1 + 32);
    v12 = *(v11 + 24);
    *(v11 + 24) = v10;

    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    v13 = os_log_create("com.apple.amp.radio", "Model");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      *buf = 138412290;
      v30 = v14;
      _os_log_impl(&dword_261792000, v13, OS_LOG_TYPE_INFO, "[RadioModel] Obtained process assertion for model %@", buf, 0xCu);
    }

    if ((v26[3] & 1) == 0)
    {
      v15 = os_log_create("com.apple.amp.radio", "Model");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = *(a1 + 32);
        *buf = 138412290;
        v30 = v16;
        _os_log_impl(&dword_261792000, v15, OS_LOG_TYPE_INFO, "[RadioModel] Failed to acquire process assertion for model %@", buf, 0xCu);
      }

      [*(*(a1 + 32) + 24) invalidate];
      v17 = *(a1 + 32);
      v18 = *(v17 + 24);
      *(v17 + 24) = 0;
    }

    _Block_object_dispose(&v25, 8);
  }
}

- (id)_arrayByReplacingManagedObjectsInArray:(id)array
{
  v19 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if ([arrayCopy count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(arrayCopy, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = arrayCopy;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [[RadioStation alloc] initWithModel:self managedObject:v11];
            [v5 addObject:v12];
          }

          else
          {
            [v5 addObject:{v11, v14}];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setDatabaseVersion:(int64_t)version
{
  version = [MEMORY[0x277CCACA8] stringWithFormat:@"%lli", version];
  [(RadioModel *)self _setDatabasePropertyValue:version forKey:@"databaseVersion"];
}

- (int64_t)databaseVersion
{
  v2 = [(RadioModel *)self _databasePropertyValueForKey:@"databaseVersion"];
  longLongValue = [v2 longLongValue];

  return longLongValue;
}

- (NSArray)userStations
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__124;
  v10 = __Block_byref_object_dispose__125;
  v11 = 0;
  context = self->_context;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __26__RadioModel_userStations__block_invoke;
  v5[3] = &unk_279AEAE88;
  v5[4] = self;
  v5[5] = &v6;
  [(NSManagedObjectContext *)context performBlockAndWait:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __26__RadioModel_userStations__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 88) fetchedObjects];
  if (!v2)
  {
    v3 = *(*(a1 + 32) + 88);
    v21 = 0;
    v4 = [v3 performFetch:&v21];
    v5 = v21;
    if ((v4 & 1) == 0)
    {
      v6 = os_log_create("com.apple.amp.radio", "Model");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v5;
        _os_log_impl(&dword_261792000, v6, OS_LOG_TYPE_ERROR, "[RadioModel] Error: Unable to fetch stations (%@.)", buf, 0xCu);
      }
    }

    v2 = [*(*(a1 + 32) + 88) fetchedObjects];
  }

  if ([v2 count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v2, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v2;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          if ([v13 stationID])
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }

    v14 = [*(a1 + 32) _arrayByReplacingManagedObjectsInArray:v7];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }
}

- (id)stationWithStationStringID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{dCopy, @"stationStringID", 0}];
    v6 = [(NSManagedObjectModel *)self->_model fetchRequestFromTemplateWithName:@"StationStringIDToStation" substitutionVariables:v5];
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__124;
    v17 = __Block_byref_object_dispose__125;
    v18 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __41__RadioModel_stationWithStationStringID___block_invoke;
    v10[3] = &unk_279AEA880;
    v10[4] = self;
    v7 = v6;
    v11 = v7;
    v12 = &v13;
    [(RadioModel *)self performTransactionWithBlock:v10];
    v8 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __41__RadioModel_stationWithStationStringID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 48) executeFetchRequest:a1[5] error:0];
  v6 = [v2 lastObject];

  if (v6)
  {
    v3 = [[RadioStation alloc] initWithModel:a1[4] managedObject:v6];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

- (id)stationWithPersistentID:(int64_t)d
{
  v5 = objc_alloc_init(MEMORY[0x277CBE428]);
  entitiesByName = [(NSManagedObjectModel *)self->_model entitiesByName];
  v7 = [entitiesByName objectForKey:@"Station"];
  [v5 setEntity:v7];

  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"persistent_id == %lli", d];
  [v5 setPredicate:v8];

  v9 = +[RadioManagedStation defaultPropertiesToFetch];
  v10 = [v9 mutableCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
  }

  v13 = v12;

  if (([v13 containsObject:@"persistent_id"] & 1) == 0)
  {
    [v13 addObject:@"persistent_id"];
  }

  [v5 setPropertiesToFetch:v13];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__124;
  v24 = __Block_byref_object_dispose__125;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __38__RadioModel_stationWithPersistentID___block_invoke;
  v17[3] = &unk_279AEA880;
  v17[4] = self;
  v14 = v5;
  v18 = v14;
  v19 = &v20;
  [(RadioModel *)self performTransactionWithBlock:v17];
  v15 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v15;
}

void __38__RadioModel_stationWithPersistentID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 48) executeFetchRequest:a1[5] error:0];
  v6 = [v2 lastObject];

  if (v6)
  {
    v3 = [[RadioStation alloc] initWithModel:a1[4] managedObject:v6];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

- (id)stationWithID:(int64_t)d
{
  v5 = objc_alloc(MEMORY[0x277CBEAC0]);
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
  v7 = [v5 initWithObjectsAndKeys:{v6, @"stationID", 0}];

  v8 = [(NSManagedObjectModel *)self->_model fetchRequestFromTemplateWithName:@"StationIDToStation" substitutionVariables:v7];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__124;
  v19 = __Block_byref_object_dispose__125;
  v20 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __28__RadioModel_stationWithID___block_invoke;
  v12[3] = &unk_279AEA880;
  v12[4] = self;
  v9 = v8;
  v13 = v9;
  v14 = &v15;
  [(RadioModel *)self performTransactionWithBlock:v12];
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

void __28__RadioModel_stationWithID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 48) executeFetchRequest:a1[5] error:0];
  v6 = [v2 lastObject];

  if (v6)
  {
    v3 = [[RadioStation alloc] initWithModel:a1[4] managedObject:v6];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

- (id)stationWithHash:(id)hash
{
  hashCopy = hash;
  if (hashCopy)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{hashCopy, @"stationHash", 0}];
    v6 = [(NSManagedObjectModel *)self->_model fetchRequestFromTemplateWithName:@"StationHashToStation" substitutionVariables:v5];
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__124;
    v17 = __Block_byref_object_dispose__125;
    v18 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __30__RadioModel_stationWithHash___block_invoke;
    v10[3] = &unk_279AEA880;
    v10[4] = self;
    v7 = v6;
    v11 = v7;
    v12 = &v13;
    [(RadioModel *)self performTransactionWithBlock:v10];
    v8 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __30__RadioModel_stationWithHash___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 48) executeFetchRequest:a1[5] error:0];
  v6 = [v2 lastObject];

  if (v6)
  {
    v3 = [[RadioStation alloc] initWithModel:a1[4] managedObject:v6];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

- (NSArray)stationSortOrdering
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  userStations = [(RadioModel *)self userStations];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(userStations, "count")}];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  userStations2 = [(RadioModel *)self userStations];
  v7 = [userStations2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(userStations2);
        }

        v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "stationID")}];
        [v5 addObject:v11];
      }

      v8 = [userStations2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)setTrackPlaybackDescriptorQueue:(id)queue forStation:(id)station
{
  queueCopy = queue;
  stationCopy = station;
  model = [stationCopy model];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__RadioModel_setTrackPlaybackDescriptorQueue_forStation___block_invoke;
  v10[3] = &unk_279AEACA0;
  v11 = stationCopy;
  v12 = queueCopy;
  v8 = queueCopy;
  v9 = stationCopy;
  [model performWriteTransactionWithBlock:v10];
}

- (void)setStationSortOrdering:(id)ordering
{
  orderingCopy = ordering;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__RadioModel_setStationSortOrdering___block_invoke;
  v8[3] = &unk_279AEAE60;
  v8[4] = self;
  [(RadioModel *)self performTransactionWithBlock:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__RadioModel_setStationSortOrdering___block_invoke_2;
  v6[3] = &unk_279AEACA0;
  v6[4] = self;
  v7 = orderingCopy;
  v5 = orderingCopy;
  [(RadioModel *)self performWriteTransactionWithBlock:v6];
}

void __37__RadioModel_setStationSortOrdering___block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userStations];
  v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v2];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(a1 + 32) stationWithID:{objc_msgSend(*(*(&v24 + 1) + 8 * i), "longLongValue")}];
        v11 = v10;
        if (v10)
        {
          [v10 setSortOrder:v7];
          [v3 removeObject:v11];
          v7 = (v7 + 1);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v12 = [v3 allObjects];
  v13 = [v12 sortedArrayUsingComparator:&__block_literal_global_236];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      v18 = 0;
      v19 = v7;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v7 = (v19 + 1);
        [*(*(&v20 + 1) + 8 * v18++) setSortOrder:{v19, v20}];
        v19 = v7;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v16);
  }
}

uint64_t __37__RadioModel_setStationSortOrdering___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6 options:1];
  return v7;
}

- (void)setReportProblemIssueTypes:(id)types
{
  if (types)
  {
    v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:types options:0 error:0];
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 encoding:4];
    [(RadioModel *)self _setDatabasePropertyValue:v4 forKey:@"reportProblemIssueTypes"];
  }

  else
  {

    [RadioModel _setDatabasePropertyValue:"_setDatabasePropertyValue:forKey:" forKey:?];
  }
}

- (void)setGlobalVersion:(unint64_t)version
{
  if ([(RadioModel *)self globalVersion]!= version)
  {
    version = [MEMORY[0x277CCACA8] stringWithFormat:@"%lli", version];
    [(RadioModel *)self _setDatabasePropertyValue:version forKey:@"globalVersion"];
  }
}

- (void)setAuthenticatedAccountIdentifier:(unint64_t)identifier
{
  identifier = [MEMORY[0x277CCACA8] stringWithFormat:@"%lli", identifier];
  [RadioModel _setDatabasePropertyValue:"_setDatabasePropertyValue:forKey:" forKey:?];
  if (!identifier)
  {
    [objc_opt_class() _postAccountDidDeauthenticateNotification];
  }
}

- (NSArray)reportProblemIssueTypes
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [(RadioModel *)self _databasePropertyValueForKey:@"reportProblemIssueTypes"];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CCAAA0];
    v5 = [v2 dataUsingEncoding:4];
    v6 = [v4 JSONObjectWithData:v5 options:0 error:0];

    objc_opt_class();
    v7 = 0;
    if (objc_opt_isKindOfClass())
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v7 = 0;
              goto LABEL_14;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_14:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)previewStations
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__124;
  v10 = __Block_byref_object_dispose__125;
  v11 = 0;
  context = self->_context;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__RadioModel_previewStations__block_invoke;
  v5[3] = &unk_279AEAE88;
  v5[4] = self;
  v5[5] = &v6;
  [(NSManagedObjectContext *)context performBlockAndWait:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __29__RadioModel_previewStations__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 88) fetchedObjects];
  if (!v2)
  {
    v3 = *(*(a1 + 32) + 88);
    v21 = 0;
    v4 = [v3 performFetch:&v21];
    v5 = v21;
    if ((v4 & 1) == 0)
    {
      v6 = os_log_create("com.apple.amp.radio", "Model");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v5;
        _os_log_impl(&dword_261792000, v6, OS_LOG_TYPE_ERROR, "[RadioModel] Error: Unable to fetch stations (%@.)", buf, 0xCu);
      }
    }

    v2 = [*(*(a1 + 32) + 88) fetchedObjects];
  }

  if ([v2 count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v2, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v2;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          if ([v13 isPreview])
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }

    v14 = [*(a1 + 32) _arrayByReplacingManagedObjectsInArray:v7];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }
}

- (id)newStationWithDictionary:(id)dictionary
{
  v163 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = os_log_create("com.apple.amp.radio", "Model");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = dictionaryCopy;
    _os_log_impl(&dword_261792000, v4, OS_LOG_TYPE_INFO, "[RadioModel] Adding/updating station with dictionary: %@", &buf, 0xCu);
  }

  v107 = [dictionaryCopy objectForKey:@"station-id"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    longLongValue = [v107 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  v108 = [dictionaryCopy objectForKey:@"station-hash"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v108 = 0;
  }

  v109 = [dictionaryCopy objectForKey:@"radio-station-id"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v109 = 0;
  }

  if (!longLongValue && !v108 && !v109)
  {
    v5 = os_log_create("com.apple.amp.radio", "Model");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = dictionaryCopy;
      _os_log_impl(&dword_261792000, v5, OS_LOG_TYPE_ERROR, "Missing station-id/station-hash/radio-station-id in dictionary: %@", &buf, 0xCu);
    }

    v6 = 0;
    goto LABEL_145;
  }

  v156 = 0;
  v98 = [dictionaryCopy objectForKey:@"persistent-id"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v98;
    sscanf([v98 UTF8String], "%llx", &v156);
  }

  v91 = [dictionaryCopy objectForKey:@"adam-id"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    longLongValue2 = [v91 longLongValue];
  }

  else
  {
    longLongValue2 = 0;
  }

  v8 = [dictionaryCopy objectForKey:@"name"];
  v101 = [v8 copy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v101 = 0;
  }

  v9 = [dictionaryCopy objectForKey:@"description"];
  v99 = [v9 copy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v99 = 0;
  }

  v10 = [dictionaryCopy objectForKey:@"core-seed-name"];
  v96 = [v10 copy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v96 = 0;
  }

  v94 = [dictionaryCopy objectForKey:@"seeds"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v94 = 0;
  }

  v90 = [dictionaryCopy objectForKey:@"mix-type"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [v90 intValue];
  }

  else
  {
    intValue = 1;
  }

  v68 = intValue;
  v12 = [dictionaryCopy objectForKey:@"skip-identifier"];
  v93 = [v12 copy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v93 = 0;
  }

  v104 = [dictionaryCopy objectForKey:@"rules"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v104 objectForKey:@"edit-enabled"];
    if (objc_opt_respondsToSelector())
    {
      bOOLValue = [v13 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    v92 = [v104 objectForKey:@"edit-fields"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v154 = 0u;
      v155 = 0u;
      v152 = 0u;
      v153 = 0u;
      v16 = [v92 copy];
      v17 = [v16 countByEnumeratingWithState:&v152 objects:v162 count:16];
      if (v17)
      {
        v18 = *v153;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v153 != v18)
            {
              objc_enumerationMutation(v16);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              goto LABEL_51;
            }
          }

          v17 = [v16 countByEnumeratingWithState:&v152 objects:v162 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v16 = v92;
LABEL_51:
      v92 = 0;
    }

    v20 = [v104 objectForKey:@"like-enabled"];
    if (objc_opt_respondsToSelector())
    {
      bOOLValue2 = [v20 BOOLValue];
    }

    else
    {
      bOOLValue2 = 0;
    }

    v21 = [v104 objectForKey:@"skip-enabled"];
    if (objc_opt_respondsToSelector())
    {
      bOOLValue3 = [v21 BOOLValue];
    }

    else
    {
      bOOLValue3 = 1;
    }

    v22 = [v104 objectForKey:@"skip-rules"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v23 = [v22 objectForKey:@"interval-in-seconds"];
      intValue2 = 0.0;
      if (objc_opt_respondsToSelector())
      {
        intValue2 = [v23 intValue];
      }

      v24 = [v22 objectForKey:@"frequency"];
      if (objc_opt_respondsToSelector())
      {
        intValue3 = [v24 intValue];
      }

      else
      {
        intValue3 = 0;
      }
    }

    else
    {
      intValue3 = 0;
      intValue2 = 0.0;
    }

    v25 = [v104 objectForKey:@"sharing-enabled"];
    if (objc_opt_respondsToSelector())
    {
      bOOLValue4 = [v25 BOOLValue];
    }

    else
    {
      bOOLValue4 = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
    bOOLValue4 = 0;
    v92 = 0;
    intValue3 = 0;
    bOOLValue3 = 1;
    intValue2 = 0.0;
    bOOLValue2 = 0;
    bOOLValue = 1;
  }

  v26 = [dictionaryCopy objectForKey:@"artwork"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v28 = 0;
    v27 = v26;
    v26 = 0;
    goto LABEL_74;
  }

  if (v26)
  {
    v27 = [MEMORY[0x277CCAC58] dataWithPropertyList:v26 format:200 options:0 error:0];
    v28 = v27;
LABEL_74:

    goto LABEL_75;
  }

  v28 = 0;
LABEL_75:
  v89 = [dictionaryCopy objectForKey:@"artwork-url"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = [MEMORY[0x277CBEBC0] URLWithString:v89];
  }

  else
  {
    v29 = 0;
  }

  v88 = [dictionaryCopy objectForKey:@"virtual-play"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue5 = [v88 BOOLValue];
  }

  else
  {
    bOOLValue5 = 1;
  }

  v87 = [dictionaryCopy objectForKey:@"ad-data"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = [MEMORY[0x277CCAC58] dataWithPropertyList:v87 format:200 options:0 error:0];
  }

  else
  {
    v30 = 0;
  }

  v72 = v30;
  if (![v30 length])
  {
    v31 = [dictionaryCopy objectForKey:@"iAd-data"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v72 = v31;
    }

    else
    {

      v72 = 0;
    }
  }

  v86 = [dictionaryCopy objectForKey:@"is-explicit"];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue6 = [v86 BOOLValue];
  }

  else
  {
    bOOLValue6 = 0;
  }

  v85 = [dictionaryCopy objectForKey:@"is-featured"];
  objc_opt_class();
  v73 = objc_opt_isKindOfClass();
  if (v73)
  {
    bOOLValue7 = [v85 BOOLValue];
  }

  else
  {
    bOOLValue7 = 0;
  }

  v84 = [dictionaryCopy objectForKey:@"is-iad-gateway-video-enabled"];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue8 = [v84 BOOLValue];
  }

  else
  {
    bOOLValue8 = 0;
  }

  v83 = [dictionaryCopy objectForKey:@"is-sponsored"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue9 = [v83 BOOLValue];
  }

  else
  {
    bOOLValue9 = 0;
  }

  v82 = [dictionaryCopy objectForKey:@"impression-threshold"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntegerValue = [v82 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v81 = [dictionaryCopy objectForKey:@"is-premium-placement"];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue10 = [v81 BOOLValue];
  }

  else
  {
    bOOLValue10 = 0;
  }

  v80 = [dictionaryCopy objectForKey:@"preview-only"];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue11 = [v80 BOOLValue];
  }

  else
  {
    bOOLValue11 = 0;
  }

  v79 = [dictionaryCopy objectForKey:@"requires-subscription"];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue12 = [v79 BOOLValue];
  }

  else
  {
    bOOLValue12 = 0;
  }

  v32 = [dictionaryCopy objectForKey:@"stream-url"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v54 = [MEMORY[0x277CBEBC0] URLWithString:v32];
  }

  else
  {
    v54 = 0;
  }

  v78 = [dictionaryCopy objectForKey:@"stream-key-cert-url"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v53 = [MEMORY[0x277CBEBC0] URLWithString:v78];
  }

  else
  {
    v53 = 0;
  }

  v77 = [dictionaryCopy objectForKey:@"stream-key-server-url"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v52 = [MEMORY[0x277CBEBC0] URLWithString:v77];
  }

  else
  {
    v52 = 0;
  }

  v76 = [dictionaryCopy objectForKey:@"is-shared"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue13 = [v76 BOOLValue];
  }

  else
  {
    bOOLValue13 = 0;
  }

  v75 = [dictionaryCopy objectForKey:@"is-subscribed"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue14 = [v75 BOOLValue];
  }

  else
  {
    bOOLValue14 = 0;
  }

  v74 = [dictionaryCopy objectForKey:@"subscriber-count"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue4 = [v74 intValue];
  }

  else
  {
    intValue4 = 0;
  }

  v34 = [dictionaryCopy objectForKey:@"share-token"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v34 = 0;
  }

  v35 = [dictionaryCopy objectForKey:@"debug-dict"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v35 = 0;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v158 = 0x3032000000;
  v159 = __Block_byref_object_copy__124;
  v160 = __Block_byref_object_dispose__125;
  if (!longLongValue)
  {
    v36 = 0;
    v161 = 0;
LABEL_139:
    if (v156)
    {
      v37 = [(RadioModel *)self stationWithPersistentID:?];
      v38 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v37;

      v36 = *(*(&buf + 1) + 40);
    }

    goto LABEL_141;
  }

  v161 = [(RadioModel *)self stationWithID:?];

  v36 = *(*(&buf + 1) + 40);
  if (!v36)
  {
    goto LABEL_139;
  }

LABEL_141:
  if (!v36 && v109)
  {
    v39 = [(RadioModel *)self stationWithStationStringID:v109];
    v40 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v39;
  }

  v110[0] = MEMORY[0x277D85DD0];
  v110[1] = 3221225472;
  v110[2] = __39__RadioModel_newStationWithDictionary___block_invoke;
  v110[3] = &unk_279AEA838;
  p_buf = &buf;
  v110[4] = self;
  v128 = longLongValue;
  v111 = v108;
  v129 = longLongValue2;
  v70 = v29;
  v112 = v70;
  v49 = v28;
  v113 = v49;
  v46 = v101;
  v114 = v46;
  v47 = v99;
  v115 = v47;
  v48 = v96;
  v116 = v48;
  v95 = v94;
  v117 = v95;
  v136 = bOOLValue;
  v100 = v92;
  v118 = v100;
  v137 = isKindOfClass & 1;
  v138 = bOOLValue2;
  v139 = bOOLValue12;
  v140 = bOOLValue3;
  v134 = intValue3;
  v97 = v93;
  v119 = v97;
  v130 = intValue2;
  v141 = bOOLValue5;
  v131 = v68;
  v142 = v73 & 1;
  v143 = bOOLValue7;
  v144 = bOOLValue6;
  v145 = bOOLValue8;
  v146 = bOOLValue9;
  v102 = v72;
  v120 = v102;
  v132 = unsignedIntegerValue;
  v147 = bOOLValue10;
  v148 = bOOLValue11;
  v121 = v109;
  v106 = v54;
  v122 = v106;
  v41 = v53;
  v123 = v41;
  v42 = v52;
  v124 = v42;
  v149 = bOOLValue13;
  v150 = bOOLValue14;
  v135 = intValue4;
  v43 = v34;
  v125 = v43;
  v151 = bOOLValue4;
  v44 = v35;
  v126 = v44;
  v133 = v156;
  [(RadioModel *)self performWriteTransactionWithBlock:v110];
  v6 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);
LABEL_145:

  return v6;
}

void *__39__RadioModel_newStationWithDictionary___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 168) + 8) + 40);
  if (!v2)
  {
    v3 = objc_alloc(MEMORY[0x277CBE438]);
    v4 = [*(*(a1 + 32) + 96) entity];
    v5 = [v3 initWithEntity:v4 insertIntoManagedObjectContext:*(*(a1 + 32) + 48)];

    if (v5)
    {
      [v5 setSortOrder:0xFFFFFFFFLL];
      v6 = [[RadioStation alloc] initWithModel:*(a1 + 32) managedObject:v5];
      v7 = *(*(a1 + 168) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    v2 = *(*(*(a1 + 168) + 8) + 40);
  }

  [v2 setStationID:*(a1 + 176)];
  [*(*(*(a1 + 168) + 8) + 40) setStationHash:*(a1 + 40)];
  [*(*(*(a1 + 168) + 8) + 40) setAdamID:*(a1 + 184)];
  [*(*(*(a1 + 168) + 8) + 40) setArtworkURL:*(a1 + 48)];
  [*(*(*(a1 + 168) + 8) + 40) setArtworkURLData:*(a1 + 56)];
  [*(*(*(a1 + 168) + 8) + 40) setName:*(a1 + 64)];
  [*(*(*(a1 + 168) + 8) + 40) setStationDescription:*(a1 + 72)];
  [*(*(*(a1 + 168) + 8) + 40) setCoreSeedName:*(a1 + 80)];
  [*(*(*(a1 + 168) + 8) + 40) setSeedTracks:*(a1 + 88)];
  [*(*(*(a1 + 168) + 8) + 40) setEditEnabled:*(a1 + 232)];
  [*(*(*(a1 + 168) + 8) + 40) setEditableFields:*(a1 + 96)];
  [*(*(*(a1 + 168) + 8) + 40) setHasSkipRules:*(a1 + 233)];
  [*(*(*(a1 + 168) + 8) + 40) setLikesEnabled:*(a1 + 234)];
  [*(*(*(a1 + 168) + 8) + 40) setRequiresSubscription:*(a1 + 235)];
  [*(*(*(a1 + 168) + 8) + 40) setSkipEnabled:*(a1 + 236)];
  [*(*(*(a1 + 168) + 8) + 40) setSkipFrequency:*(a1 + 224)];
  [*(*(*(a1 + 168) + 8) + 40) setSkipIdentifier:*(a1 + 104)];
  [*(*(*(a1 + 168) + 8) + 40) setSkipInterval:*(a1 + 192)];
  [*(*(*(a1 + 168) + 8) + 40) setVirtualPlayEnabled:*(a1 + 237)];
  [*(*(*(a1 + 168) + 8) + 40) setSongMixType:*(a1 + 200)];
  [*(*(*(a1 + 168) + 8) + 40) setAdData:*(a1 + 112)];
  if (*(a1 + 238) == 1)
  {
    [*(*(*(a1 + 168) + 8) + 40) setFeatured:*(a1 + 239)];
  }

  [*(*(*(a1 + 168) + 8) + 40) setIsExplicit:*(a1 + 240)];
  [*(*(*(a1 + 168) + 8) + 40) setGatewayVideoAdEnabled:*(a1 + 241)];
  [*(*(*(a1 + 168) + 8) + 40) setSponsored:*(a1 + 242)];
  [*(*(*(a1 + 168) + 8) + 40) setImpressionThreshold:*(a1 + 208)];
  [*(*(*(a1 + 168) + 8) + 40) setPremiumPlacement:*(a1 + 243)];
  [*(*(*(a1 + 168) + 8) + 40) setPreviewOnly:*(a1 + 244)];
  [*(*(*(a1 + 168) + 8) + 40) setStationStringID:*(a1 + 120)];
  [*(*(*(a1 + 168) + 8) + 40) setStreamURL:*(a1 + 128)];
  [*(*(*(a1 + 168) + 8) + 40) setStreamCertificateURL:*(a1 + 136)];
  [*(*(*(a1 + 168) + 8) + 40) setStreamKeyURL:*(a1 + 144)];
  [*(*(*(a1 + 168) + 8) + 40) setShared:*(a1 + 245)];
  [*(*(*(a1 + 168) + 8) + 40) setSubscribed:*(a1 + 246)];
  [*(*(*(a1 + 168) + 8) + 40) setSubscriberCount:*(a1 + 228)];
  [*(*(*(a1 + 168) + 8) + 40) setShareToken:*(a1 + 152)];
  [*(*(*(a1 + 168) + 8) + 40) setSharingEnabled:*(a1 + 247)];
  result = [*(*(*(a1 + 168) + 8) + 40) setDebugDictionary:*(a1 + 160)];
  if (*(a1 + 216))
  {
    v10 = *(*(*(a1 + 168) + 8) + 40);

    return [v10 setPersistentID:?];
  }

  return result;
}

- (id)newPreviewStationWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__124;
  v15 = __Block_byref_object_dispose__125;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__RadioModel_newPreviewStationWithDictionary___block_invoke;
  v8[3] = &unk_279AEA880;
  v10 = &v11;
  v8[4] = self;
  v5 = dictionaryCopy;
  v9 = v5;
  [(RadioModel *)self performWriteTransactionWithBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __46__RadioModel_newPreviewStationWithDictionary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newStationWithDictionary:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(*(a1 + 48) + 8) + 40) setStationID:0];
  v5 = *(*(*(a1 + 48) + 8) + 40);

  return [v5 setSortOrder:0];
}

- (id)newFeaturedStationWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__124;
  v15 = __Block_byref_object_dispose__125;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__RadioModel_newFeaturedStationWithDictionary___block_invoke;
  v8[3] = &unk_279AEA880;
  v10 = &v11;
  v8[4] = self;
  v5 = dictionaryCopy;
  v9 = v5;
  [(RadioModel *)self performWriteTransactionWithBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);
  return v6;
}

void *__47__RadioModel_newFeaturedStationWithDictionary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newStationWithDictionary:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  result = [*(*(*(a1 + 48) + 8) + 40) isSponsored];
  if ((result & 1) == 0)
  {
    v6 = *(*(*(a1 + 48) + 8) + 40);

    return [v6 setFeatured:1];
  }

  return result;
}

- (unint64_t)globalVersion
{
  v2 = [(RadioModel *)self _databasePropertyValueForKey:@"globalVersion"];
  longLongValue = [v2 longLongValue];

  return longLongValue;
}

- (NSString)globalHash
{
  v2 = [(RadioModel *)self _databasePropertyValueForKey:@"globalHash"];
  v3 = [v2 copy];

  return v3;
}

- (NSArray)featuredStations
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__124;
  v10 = __Block_byref_object_dispose__125;
  v11 = 0;
  context = self->_context;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__RadioModel_featuredStations__block_invoke;
  v5[3] = &unk_279AEAE88;
  v5[4] = self;
  v5[5] = &v6;
  [(NSManagedObjectContext *)context performBlockAndWait:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __30__RadioModel_featuredStations__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 88) fetchedObjects];
  if (!v2)
  {
    v3 = *(*(a1 + 32) + 88);
    v21 = 0;
    v4 = [v3 performFetch:&v21];
    v5 = v21;
    if ((v4 & 1) == 0)
    {
      v6 = os_log_create("com.apple.amp.radio", "Model");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v5;
        _os_log_impl(&dword_261792000, v6, OS_LOG_TYPE_ERROR, "[RadioModel] Error: Unable to fetch stations (%@.)", buf, 0xCu);
      }
    }

    v2 = [*(*(a1 + 32) + 88) fetchedObjects];
  }

  if ([v2 count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v2, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v2;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          if (![v13 stationID] && ((objc_msgSend(v13, "isFeatured") & 1) != 0 || objc_msgSend(v13, "isSponsored")))
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }

    v14 = [*(a1 + 32) _arrayByReplacingManagedObjectsInArray:v7];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }
}

- (void)deleteStation:(id)station
{
  v11 = *MEMORY[0x277D85DE8];
  stationCopy = station;
  if (stationCopy)
  {
    v5 = os_log_create("com.apple.amp.radio", "Model");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = stationCopy;
      _os_log_impl(&dword_261792000, v5, OS_LOG_TYPE_INFO, "[RadioModel] Deleting station: %@", buf, 0xCu);
    }

    model = [stationCopy model];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __28__RadioModel_deleteStation___block_invoke;
    v7[3] = &unk_279AEACA0;
    v7[4] = self;
    v8 = stationCopy;
    [model performWriteTransactionWithBlock:v7];
  }
}

void __28__RadioModel_deleteStation___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  v2 = [*(a1 + 40) managedObject];
  [v1 deleteObject:v2];
}

- (void)deleteStationWithID:(int64_t)d
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __34__RadioModel_deleteStationWithID___block_invoke;
  v3[3] = &unk_279AEAC78;
  v3[4] = self;
  v3[5] = d;
  [(RadioModel *)self performWriteTransactionWithBlock:v3];
}

void __34__RadioModel_deleteStationWithID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 stationWithID:*(a1 + 40)];
  [v1 deleteStation:v2];
}

- (void)deleteAllData
{
  v2 = objc_opt_class();

  [v2 deleteAllData];
}

- (id)convertObjectsInSet:(id)set
{
  v17 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [setCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(setCopy);
        }

        v10 = [(RadioModel *)self convertObject:*(*(&v12 + 1) + 8 * i)];
        if (v10)
        {
          if (!v7)
          {
            v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
          }

          [v7 addObject:v10];
        }
      }

      v6 = [setCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)convertObjects:(id)objects
{
  v17 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [objectsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(objectsCopy);
        }

        v10 = [(RadioModel *)self convertObject:*(*(&v12 + 1) + 8 * i)];
        if (v10)
        {
          if (!v7)
          {
            v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v7 addObject:v10];
        }
      }

      v6 = [objectsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)convertObject:(id)object
{
  objectCopy = object;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__124;
  v41 = __Block_byref_object_dispose__125;
  v42 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    managedObjectContext = [objectCopy managedObjectContext];
    v7 = managedObjectContext;
    if (managedObjectContext && ![managedObjectContext isEqual:self->_context])
    {
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __28__RadioModel_convertObject___block_invoke;
      v33[3] = &unk_279AEA880;
      selfCopy = self;
      v36 = &v37;
      v34 = objectCopy;
      [(RadioModel *)self performTransactionWithBlock:v33];
      v10 = v34;
    }

    else
    {
      v8 = v38;
      v9 = objectCopy;
      v10 = v8[5];
      v8[5] = v9;
    }
  }

  else if ([objectCopy conformsToProtocol:&unk_287408FB8])
  {
    if ([objectCopy isDatabaseBacked])
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x3032000000;
      v30 = __Block_byref_object_copy__124;
      v31 = __Block_byref_object_dispose__125;
      v32 = 0;
      managedObject = [objectCopy managedObject];
      v12 = managedObject;
      if (managedObject)
      {
        managedObjectContext2 = [managedObject managedObjectContext];
        v14 = [managedObjectContext2 isEqual:self->_context];

        if (v14)
        {
          objc_storeStrong(v38 + 5, object);
        }

        else
        {
          v20 = MEMORY[0x277D85DD0];
          v21 = 3221225472;
          v22 = __28__RadioModel_convertObject___block_invoke_2;
          v23 = &unk_279AEA880;
          v26 = &v27;
          selfCopy2 = self;
          v25 = v12;
          [(RadioModel *)self performTransactionWithBlock:&v20];
          if (v28[5])
          {
            v17 = objc_alloc(objc_opt_class());
            v18 = [v17 initWithModel:self managedObject:{v28[5], v20, v21, v22, v23, selfCopy2}];
            v19 = v38[5];
            v38[5] = v18;
          }
        }
      }

      _Block_object_dispose(&v27, 8);
    }

    else
    {
      objc_storeStrong(v38 + 5, object);
    }
  }

  v15 = v38[5];
  _Block_object_dispose(&v37, 8);

  return v15;
}

void __28__RadioModel_convertObject___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) objectID];
  v2 = [*(*(a1 + 40) + 48) existingObjectWithID:v5 error:0];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __28__RadioModel_convertObject___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v6 = [*(a1 + 40) objectID];
  v3 = [v2 existingObjectWithID:v6 error:0];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (unint64_t)authenticatedAccountIdentifier
{
  v2 = [(RadioModel *)self _databasePropertyValueForKey:@"accountIdentifier"];
  longLongValue = [v2 longLongValue];

  return longLongValue;
}

- (NSArray)allStations
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__124;
  v10 = __Block_byref_object_dispose__125;
  v11 = 0;
  context = self->_context;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __25__RadioModel_allStations__block_invoke;
  v5[3] = &unk_279AEAE88;
  v5[4] = self;
  v5[5] = &v6;
  [(NSManagedObjectContext *)context performBlockAndWait:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __25__RadioModel_allStations__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 88) fetchedObjects];
  if (!v2)
  {
    v3 = *(*(a1 + 32) + 88);
    v10 = 0;
    v4 = [v3 performFetch:&v10];
    v5 = v10;
    if ((v4 & 1) == 0)
    {
      v6 = os_log_create("com.apple.amp.radio", "Model");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v5;
        _os_log_impl(&dword_261792000, v6, OS_LOG_TYPE_ERROR, "[RadioModel] Error: Unable to fetch stations (%@.)", buf, 0xCu);
      }
    }

    v2 = [*(*(a1 + 32) + 88) fetchedObjects];
  }

  if ([v2 count])
  {
    v7 = [*(a1 + 32) _arrayByReplacingManagedObjectsInArray:v2];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

- (void)_contextDidSaveNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  persistentStoreCoordinator = [(NSManagedObjectContext *)object persistentStoreCoordinator];
  v7 = [persistentStoreCoordinator isEqual:self->_storeCoordinator];

  if (v7)
  {
    context = self->_context;
    if (object == context)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __42__RadioModel__contextDidSaveNotification___block_invoke_3;
      v10[3] = &unk_279AEACA0;
      v10[4] = self;
      v9 = &v11;
      v11 = notificationCopy;
      dispatch_async(MEMORY[0x277D85CD0], v10);
    }

    else
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __42__RadioModel__contextDidSaveNotification___block_invoke;
      v12[3] = &unk_279AEACA0;
      v12[4] = self;
      v9 = &v13;
      v13 = notificationCopy;
      [(NSManagedObjectContext *)context performBlock:v12];
    }
  }
}

void __42__RadioModel__contextDidSaveNotification___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) mergeChangesFromContextDidSaveNotification:*(a1 + 40)];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__RadioModel__contextDidSaveNotification___block_invoke_2;
  v3[3] = &unk_279AEACA0;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBE1A8] object:0];
  [(NSOperationQueue *)self->_backgroundCleanupQueue cancelAllOperations];
  backgroundTaskInvalidateTimerSource = self->_backgroundTaskInvalidateTimerSource;
  if (backgroundTaskInvalidateTimerSource)
  {
    dispatch_source_cancel(backgroundTaskInvalidateTimerSource);
  }

  [(BKSProcessAssertion *)self->_backgroundProcessAssertion invalidate];
  if (self->_modelChangedTokenIsValid)
  {
    notify_cancel(self->_modelChangedToken);
  }

  if (self->_modelDeletedTokenIsValid)
  {
    notify_cancel(self->_modelDeletedToken);
  }

  [(NSFetchedResultsController *)self->_stationFetchedResultsController setDelegate:0];

  v5.receiver = self;
  v5.super_class = RadioModel;
  [(RadioModel *)&v5 dealloc];
}

- (id)_initBackgroundModelWithPersistentStoreCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v11.receiver = self;
  v11.super_class = RadioModel;
  v6 = [(RadioModel *)&v11 init];
  v7 = v6;
  if (v6)
  {
    [(RadioModel *)v6 _defaultRadioModelInitialization];
    v7->_isBackgroundModel = 1;
    objc_storeStrong(&v7->_storeCoordinator, coordinator);
    managedObjectModel = [(NSPersistentStoreCoordinator *)v7->_storeCoordinator managedObjectModel];
    model = v7->_model;
    v7->_model = managedObjectModel;

    [(RadioModel *)v7 _prepareModel];
  }

  return v7;
}

- (id)_init
{
  v5.receiver = self;
  v5.super_class = RadioModel;
  v2 = [(RadioModel *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(RadioModel *)v2 _defaultRadioModelInitialization];
    [(RadioModel *)v3 _prepareModel];
  }

  return v3;
}

- (RadioModel)init
{
  [MEMORY[0x277CBEAD8] raise:@"RadioModelUnsupportedException" format:{@"-init is not supported, use +sharedModel or +backgroundModel"}];

  return 0;
}

+ (id)_radioDirectoryPath
{
  if (_radioDirectoryPath_sOnceToken != -1)
  {
    dispatch_once(&_radioDirectoryPath_sOnceToken, &__block_literal_global_284);
  }

  v3 = _radioDirectoryPath_sRadioDirectory;

  return v3;
}

uint64_t __33__RadioModel__radioDirectoryPath__block_invoke()
{
  _radioDirectoryPath_sRadioDirectory = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Media/Radio"];

  return MEMORY[0x2821F96F8]();
}

+ (id)_radioDatabasePath
{
  _radioDirectoryPath = [self _radioDirectoryPath];
  v3 = [_radioDirectoryPath stringByAppendingPathComponent:@"Radio.db"];

  return v3;
}

+ (void)_postAccountDidDeauthenticateNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.Radio.account.did-deauthenticate", 0, 0, 1u);
}

+ (id)_persistentStoreConfigurationOptions
{
  v8[6] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBE2D8];
  v7[0] = *MEMORY[0x277CBE2E0];
  v7[1] = v2;
  v8[0] = &unk_2874055A0;
  v8[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277CBE178];
  v7[2] = *MEMORY[0x277CBE1D8];
  v7[3] = v3;
  v4 = *MEMORY[0x277CBE248];
  v7[4] = *MEMORY[0x277CBE240];
  v7[5] = v4;
  v8[2] = MEMORY[0x277CBEC38];
  v8[3] = MEMORY[0x277CBEC38];
  v8[4] = *MEMORY[0x277CCA1B8];
  v8[5] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:6];

  return v5;
}

+ (void)deleteAllData
{
  v3 = +[RadioImageCache sharedCache];
  [v3 _removeAllCachedImages];

  v4 = +[RadioModel sharedModel];
  v5 = +[RadioModel backgroundModel];
  context = [v4 context];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __27__RadioModel_deleteAllData__block_invoke;
  v10[3] = &unk_279AEA810;
  v11 = v5;
  v12 = v4;
  selfCopy = self;
  v7 = v4;
  v8 = v5;
  [context performBlockAndWait:v10];

  v9 = +[RadioRequest defaultURLCache];
  [v9 removeAllCachedResponses];
}

void __27__RadioModel_deleteAllData__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__RadioModel_deleteAllData__block_invoke_2;
  v5[3] = &unk_279AEA810;
  v6 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  [v2 performBlockAndWait:v5];
}

void __27__RadioModel_deleteAllData__block_invoke_2(id *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  [a1[4] _resetModel];
  [a1[5] _resetModel];
  v2 = os_log_create("com.apple.amp.radio", "Model");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_261792000, v2, OS_LOG_TYPE_INFO, "[RadioModel] Destroying data...", buf, 2u);
  }

  v3 = [a1[6] _radioDatabasePath];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
    v5 = os_log_create("com.apple.amp.radio", "Model");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v22 = v4;
      v23 = 2112;
      v24 = v3;
      _os_log_impl(&dword_261792000, v5, OS_LOG_TYPE_INFO, "[RadioModel] Destroying database at URL: %@ (path: %@)", buf, 0x16u);
    }

    v6 = @"NO";
    if (v4)
    {
      os_unfair_lock_lock(&__databaseLock);
      v7 = *(a1[4] + 14);
      v8 = *MEMORY[0x277CBE2E8];
      v9 = [a1[6] _persistentStoreConfigurationOptions];
      v20 = 0;
      LODWORD(v8) = [v7 _destroyPersistentStoreAtURL:v4 withType:v8 options:v9 error:&v20];
      v10 = v20;

      os_unfair_lock_unlock(&__databaseLock);
      if (v8)
      {
        v6 = @"YES";
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v6 = @"NO";
  }

  v11 = os_log_create("com.apple.amp.radio", "Model");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v22 = v6;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_261792000, v11, OS_LOG_TYPE_INFO, "[RadioModel] Destroy results: success: %@, error: %@", buf, 0x16u);
  }

  v12 = os_log_create("com.apple.amp.radio", "Model");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v22 = @"RadioModelWasDeletedNotification";
    _os_log_impl(&dword_261792000, v12, OS_LOG_TYPE_INFO, "[RadioModel] Posting '%@'", buf, 0xCu);
  }

  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  v14 = +[RadioModel sharedModel];
  [v13 postNotificationName:@"RadioModelWasDeletedNotification" object:v14];

  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  v16 = +[RadioModel backgroundModel];
  [v15 postNotificationName:@"RadioModelWasDeletedNotification" object:v16];

  v17 = a1[4];
  if (*(v17 + 84) == 1)
  {
    v18 = v17[20];
    v19 = getpid();
    notify_set_state(v18, v19);
  }

  notify_post("com.apple.Radio.model-deleted");
  [a1[4] _postContextDidChangeNotification:0];
  [a1[5] _postContextDidChangeNotification:0];
  [a1[6] _postAccountDidDeauthenticateNotification];
}

+ (id)sharedModel
{
  if (sharedModel___once != -1)
  {
    dispatch_once(&sharedModel___once, &__block_literal_global_145);
  }

  v3 = sharedModel___sharedModel;

  return v3;
}

uint64_t __25__RadioModel_sharedModel__block_invoke()
{
  sharedModel___sharedModel = [[RadioModel alloc] _init];

  return MEMORY[0x2821F96F8]();
}

+ (id)backgroundModel
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__RadioModel_backgroundModel__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (backgroundModel___once != -1)
  {
    dispatch_once(&backgroundModel___once, block);
  }

  v2 = backgroundModel___backgroundModel;

  return v2;
}

void __29__RadioModel_backgroundModel__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v4 = +[RadioModel sharedModel];
  v2 = [v1 _initBackgroundModelWithPersistentStoreCoordinator:v4[14]];
  v3 = backgroundModel___backgroundModel;
  backgroundModel___backgroundModel = v2;
}

@end