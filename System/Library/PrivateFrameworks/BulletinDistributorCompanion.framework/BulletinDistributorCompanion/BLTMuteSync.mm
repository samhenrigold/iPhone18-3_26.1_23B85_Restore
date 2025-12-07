@interface BLTMuteSync
- (BLTMuteSync)init;
- (BOOL)isMutedForTodaySectionIdentifier:(id)identifier;
- (NSSet)mutedForTodaySectionIdentifiers;
- (void)_cleanMuteIdentifiers;
- (void)_loadMutedSectionIdentifiers;
- (void)_queue_sync;
- (void)_updateObservers;
- (void)addSectionIdentifiers:(id)identifiers;
- (void)dealloc;
- (void)removeSectionIdentifiers:(id)identifiers;
@end

@implementation BLTMuteSync

- (BLTMuteSync)init
{
  v11.receiver = self;
  v11.super_class = BLTMuteSync;
  v2 = [(BLTMuteSync *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.bulletindistributor.mutesync", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(MEMORY[0x277D2BA60]);
    npsManager = v2->_npsManager;
    v2->_npsManager = v6;

    [(BLTMuteSync *)v2 _loadMutedSectionIdentifiers];
    [(BLTMuteSync *)v2 _cleanMuteIdentifiers];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, BLTSignificantTimeChanged, @"SignificantTimeChangeNotification", 0, 0);
    v9 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v9, v2, BLTMuteForTodaySectionIdentifiersChanged, @"BLTMuteForTodaySectionIdentifiersChangedNotification", 0, 0);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SignificantTimeChangeNotification", 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v4, self, @"BLTMuteForTodaySectionIdentifiersChangedNotification", 0);
  v5.receiver = self;
  v5.super_class = BLTMuteSync;
  [(BLTMuteSync *)&v5 dealloc];
}

- (void)_updateObservers
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"BLTMuteSyncMutedForTodayChangedNotification" object:0];
}

- (void)_cleanMuteIdentifiers
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__BLTMuteSync__cleanMuteIdentifiers__block_invoke;
  v4[3] = &unk_278D32FA0;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(queue, v4);
  if (*(v6 + 24) == 1)
  {
    [(BLTMuteSync *)self _updateObservers];
  }

  _Block_object_dispose(&v5, 8);
}

void __36__BLTMuteSync__cleanMuteIdentifiers__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = _BLTToday();
  v3 = [*(*(a1 + 32) + 8) allKeys];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (([v8 isEqual:v2] & 1) == 0)
        {
          [*(*(a1 + 32) + 8) removeObjectForKey:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = [*(*(a1 + 32) + 8) count];
  if (v9 != [v3 count])
  {
    [*(a1 + 32) _queue_sync];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)_loadMutedSectionIdentifiers
{
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__BLTMuteSync__loadMutedSectionIdentifiers__block_invoke;
  block[3] = &unk_278D31428;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __43__BLTMuteSync__loadMutedSectionIdentifiers__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nano"];
  v6 = [v5 synchronize];
  v7 = [v5 dictionaryForKey:@"MuteForTodaySectionIdentifiers"];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 componentsSeparatedByString:@"-"];
        v14 = objc_alloc_init(MEMORY[0x277CBEAB8]);
        v15 = [v13 objectAtIndexedSubscript:0];
        [v14 setDay:{objc_msgSend(v15, "integerValue")}];

        v16 = [v13 objectAtIndexedSubscript:1];
        [v14 setMonth:{objc_msgSend(v16, "integerValue")}];

        v17 = [v13 objectAtIndexedSubscript:2];
        [v14 setYear:{objc_msgSend(v17, "integerValue")}];

        v18 = [v7 objectForKeyedSubscript:v12];
        v19 = [MEMORY[0x277CBEB58] setWithArray:v18];
        [*(*(a1 + 32) + 8) setObject:v19 forKeyedSubscript:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }
}

- (void)_queue_sync
{
  v23 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v16 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nano"];
  synchronize = [v16 synchronize];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_mutedSectionIdentifiersForDay;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld-%ld-%ld", objc_msgSend(v9, "day"), objc_msgSend(v9, "month"), objc_msgSend(v9, "year")];
        v11 = [(NSMutableDictionary *)self->_mutedSectionIdentifiersForDay objectForKeyedSubscript:v9];
        allObjects = [v11 allObjects];

        [dictionary setObject:allObjects forKeyedSubscript:v10];
      }

      v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  if (![dictionary count])
  {

    dictionary = 0;
  }

  [v16 setObject:dictionary forKey:@"MuteForTodaySectionIdentifiers"];
  synchronize2 = [v16 synchronize];
  npsManager = self->_npsManager;
  v15 = [MEMORY[0x277CBEB98] setWithObjects:{@"MuteForTodaySectionIdentifiers", 0}];
  [(NPSManager *)npsManager synchronizeNanoDomain:@"com.apple.nano" keys:v15];
}

- (NSSet)mutedForTodaySectionIdentifiers
{
  v3 = _BLTToday();
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  v16 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__BLTMuteSync_mutedForTodaySectionIdentifiers__block_invoke;
  block[3] = &unk_278D313D8;
  v9 = v3;
  v10 = &v11;
  block[4] = self;
  v5 = v3;
  dispatch_sync(queue, block);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __46__BLTMuteSync_mutedForTodaySectionIdentifiers__block_invoke(void *a1)
{
  v5 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v2 = [v5 copy];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)isMutedForTodaySectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  mutedForTodaySectionIdentifiers = [(BLTMuteSync *)self mutedForTodaySectionIdentifiers];
  v6 = [mutedForTodaySectionIdentifiers containsObject:identifierCopy];

  return v6;
}

- (void)addSectionIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    dispatch_assert_queue_not_V2(self->_queue);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__BLTMuteSync_addSectionIdentifiers___block_invoke;
    block[3] = &unk_278D32FC8;
    block[4] = self;
    v7 = identifiersCopy;
    v8 = &v9;
    dispatch_sync(queue, block);
    if (*(v10 + 24) == 1)
    {
      [(BLTMuteSync *)self _updateObservers];
    }

    _Block_object_dispose(&v9, 8);
  }
}

void __37__BLTMuteSync_addSectionIdentifiers___block_invoke(uint64_t a1)
{
  v9 = _BLTToday();
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:?];

  if (!v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    [*(*(a1 + 32) + 8) setObject:v3 forKeyedSubscript:v9];
  }

  v4 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v9];
  v5 = [v4 count];

  v6 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v9];
  [v6 unionSet:*(a1 + 40)];

  v7 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v9];
  v8 = [v7 count];

  if (v8 != v5)
  {
    [*(a1 + 32) _queue_sync];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (void)removeSectionIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  dispatch_assert_queue_not_V2(self->_queue);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__BLTMuteSync_removeSectionIdentifiers___block_invoke;
  block[3] = &unk_278D32FC8;
  block[4] = self;
  v6 = identifiersCopy;
  v8 = v6;
  v9 = &v10;
  dispatch_sync(queue, block);
  if (*(v11 + 24) == 1)
  {
    [(BLTMuteSync *)self _updateObservers];
  }

  _Block_object_dispose(&v10, 8);
}

void __40__BLTMuteSync_removeSectionIdentifiers___block_invoke(uint64_t a1)
{
  v7 = _BLTToday();
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v7];
  v3 = [v2 count];

  v4 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v7];
  [v4 minusSet:*(a1 + 40)];

  v5 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v7];
  v6 = [v5 count];

  if (v6 != v3)
  {
    [*(a1 + 32) _queue_sync];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

@end