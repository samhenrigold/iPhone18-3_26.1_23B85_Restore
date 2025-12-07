@interface STMSizeCache
- (NSArray)items;
- (STMSizeCache)initWithPrefsKey:(id)key;
- (STMSizeCacheDelegate)delegate;
- (id)itemForPath:(id)path;
- (id)itemsContainedByPath:(id)path;
- (id)itemsContainingPath:(id)path;
- (id)sizeOfItemForPath:(id)path;
- (id)updatedSizeOfItemForPath:(id)path;
- (unint64_t)processCacheEvents:(id)events;
- (void)_flushCache;
- (void)_writeCache;
- (void)addItem:(id)item andComputeSizeSynchronously:(BOOL)synchronously;
- (void)addItems:(id)items;
- (void)dealloc;
- (void)flushCacheToPref;
- (void)loadCacheFromPref;
- (void)notifyItemsAdded:(id)added;
- (void)notifySizesChanged:(id)changed;
- (void)pruneCache;
- (void)removeItem:(id)item;
- (void)removeItemForPath:(id)path;
- (void)updateLastCacheEventID:(unint64_t)d;
- (void)updateSizeOfItem:(id)item synchronous:(BOOL)synchronous;
@end

@implementation STMSizeCache

- (STMSizeCache)initWithPrefsKey:(id)key
{
  keyCopy = key;
  v22.receiver = self;
  v22.super_class = STMSizeCache;
  v5 = [(STMSizeCache *)&v22 init];
  if (v5)
  {
    array = [MEMORY[0x277CBEB18] array];
    v7 = *(v5 + 3);
    *(v5 + 3) = array;

    *(v5 + 1) = keyCopy;
    v8 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v9 = *(v5 + 8);
    *(v5 + 8) = v8;

    v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:200];
    v11 = *(v5 + 2);
    *(v5 + 2) = v10;

    v12 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    v13 = *(v5 + 4);
    *(v5 + 4) = v12;

    objc_initWeak(&location, v5);
    v14 = *(v5 + 4);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __33__STMSizeCache_initWithPrefsKey___block_invoke;
    v19 = &unk_279D1CE40;
    objc_copyWeak(&v20, &location);
    dispatch_source_set_event_handler(v14, &v16);
    dispatch_resume(*(v5 + 4));
    [v5 loadCacheFromPref];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __33__STMSizeCache_initWithPrefsKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _flushCache];
    WeakRetained = v2;
  }
}

- (void)dealloc
{
  [(STMSizeCache *)self setDelegate:0];
  v3.receiver = self;
  v3.super_class = STMSizeCache;
  [(STMSizeCache *)&v3 dealloc];
}

- (void)loadCacheFromPref
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = CFPreferencesCopyValue(self->_prefsKey, @"com.apple.settings.storage", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  if (!v3)
  {
    goto LABEL_39;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v44 = [v3 objectForKey:@"ItemSizes"];
  v4 = [v3 objectForKey:@"EventIDDate"];
  v5 = +[STAppOverrides overrides];
  v6 = [v5 objectForKeyedSubscript:@"com.apple.mobilemail"];
  includeFsPaths = [v6 includeFsPaths];
  firstObject = [includeFsPaths firstObject];

  selfCopy = self;
  [(NSLock *)self->_itemsLock lock];
  v42 = v4;
  v43 = v3;
  v41 = firstObject;
  if (v4 && ([v4 timeIntervalSinceNow], v9 > -1800.0))
  {
    v40 = [v3 objectForKey:@"EventID"];
    allKeys = [v44 allKeys];
    v39 = 0;
  }

  else if (firstObject)
  {
    v11 = MEMORY[0x277CBEA60];
    v12 = _CompressPath(firstObject);
    allKeys = [v11 arrayWithObject:v12];

    v40 = 0;
    v39 = 1;
  }

  else
  {
    v39 = 0;
    allKeys = 0;
    v40 = 0;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = allKeys;
  v13 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
  selfCopy2 = self;
  if (!v13)
  {
    goto LABEL_33;
  }

  v15 = v13;
  v47 = *v50;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v50 != v47)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v49 + 1) + 8 * i);
      if ([v17 hasPrefix:@"$"])
      {
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v18 = [&unk_287C8E878 countByEnumeratingWithState:&v53 objects:v58 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = 0;
          v21 = *v54;
          while (2)
          {
            v22 = 0;
            v23 = v20;
            v20 += v19;
            do
            {
              if (*v54 != v21)
              {
                objc_enumerationMutation(&unk_287C8E878);
              }

              v24 = *(*(&v53 + 1) + 8 * v22);
              if ([v17 hasPrefix:v24])
              {
                v26 = [v24 length];
                v27 = [&unk_287C8E860 objectAtIndexedSubscript:v23];
                v25 = [v17 stringByReplacingCharactersInRange:0 withString:{v26, v27}];

                selfCopy2 = selfCopy;
                goto LABEL_24;
              }

              ++v23;
              ++v22;
            }

            while (v19 != v22);
            v19 = [&unk_287C8E878 countByEnumeratingWithState:&v53 objects:v58 count:16];
            selfCopy2 = selfCopy;
            if (v19)
            {
              continue;
            }

            break;
          }
        }
      }

      v25 = v17;
LABEL_24:

      if ([defaultManager fileExistsAtPath:v25])
      {
        v28 = [(NSMutableDictionary *)selfCopy2->_itemsByPath objectForKey:v25];
        if (v28)
        {
          v29 = v28;
          if (![(STMSizeCacheEntry *)v28 status])
          {
LABEL_29:
            v32 = [v44 objectForKey:v17];
            [(STMSizeCacheEntry *)v29 setItemSize:v32];

            [(STMSizeCacheEntry *)v29 setStatus:2];
            [(NSMutableDictionary *)selfCopy2->_itemsByPath setObject:v29 forKey:v25];
          }

          goto LABEL_31;
        }

        v30 = [STMSizeCacheEntry alloc];
        v31 = [MEMORY[0x277CBEBC0] fileURLWithPath:v25];
        v29 = [(STMSizeCacheEntry *)v30 initWithURL:v31];

        goto LABEL_29;
      }

LABEL_31:
    }

    v15 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
  }

  while (v15);
LABEL_33:

  if (v39)
  {
    v33 = [(NSMutableDictionary *)selfCopy2->_itemsByPath objectForKeyedSubscript:v41];
    [v33 setStatus:3];
    [(STMSizeCache *)selfCopy2 updateSizeOfItem:v33 synchronous:0];
  }

  longLongValue = [v40 longLongValue];
  v3 = v43;
  if (longLongValue)
  {
    CurrentEventId = longLongValue;
    v36 = selfCopy;
    objc_storeStrong(&selfCopy->_cacheEventDate, v42);
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    v36 = selfCopy;
    cacheEventDate = selfCopy->_cacheEventDate;
    selfCopy->_cacheEventDate = date;

    CurrentEventId = FSEventsGetCurrentEventId();
  }

  v36->_cacheEventID = CurrentEventId;
  [(NSLock *)v36->_itemsLock unlock];

LABEL_39:
}

- (void)_writeCache
{
  v30 = *MEMORY[0x277D85DE8];
  [(STMSizeCache *)self pruneCache];
  [(NSLock *)self->_itemsLock lock];
  allValues = [(NSMutableDictionary *)self->_itemsByPath allValues];
  v20 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_cacheEventID];
  cacheEventDate = [(STMSizeCache *)self cacheEventDate];
  [(NSLock *)self->_itemsLock unlock];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(allValues, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = allValues;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        if ([v11 status] == 2)
        {
          itemSize = [v11 itemSize];
          if (itemSize)
          {
            itemPath = [v11 itemPath];
            v14 = _CompressPath(itemPath);
            [v5 setObject:itemSize forKey:v14];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v15 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    [v15 setObject:v5 forKey:@"ItemSizes"];
    v16 = v20;
    [v15 setObject:v20 forKey:@"EventID"];
    if (cacheEventDate)
    {
      [v15 setObject:cacheEventDate forKey:@"EventIDDate"];
    }
  }

  else
  {
    v15 = 0;
    v16 = v20;
  }

  v17 = CFRetain(self->_prefsKey);
  v18 = CFRetain(@"com.apple.settings.storage");
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__STMSizeCache__writeCache__block_invoke;
  block[3] = &unk_279D1D2B8;
  v22 = v15;
  v23 = v17;
  v24 = v18;
  v19 = v15;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __27__STMSizeCache__writeCache__block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x277CBF040];
  v3 = *MEMORY[0x277CBF030];
  CFPreferencesSetValue(*(a1 + 40), *(a1 + 32), *(a1 + 48), *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  CFPreferencesSynchronize(*(a1 + 48), v2, v3);
  CFRelease(*(a1 + 40));
  v4 = *(a1 + 48);

  CFRelease(v4);
}

- (void)_flushCache
{
  v3 = dispatch_get_global_queue(9, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__STMSizeCache__flushCache__block_invoke;
  block[3] = &unk_279D1CE88;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)flushCacheToPref
{
  cacheFlushTimer = self->_cacheFlushTimer;
  v3 = dispatch_time(0, 5000000000);

  dispatch_source_set_timer(cacheFlushTimer, v3, 0xFFFFFFFFFFFFFFFFLL, 0x12A05F200uLL);
}

- (void)notifyItemsAdded:(id)added
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    if (objc_opt_respondsToSelector())
    {
      [v5 sizeCacheItemsUpdated:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)notifySizesChanged:(id)changed
{
  changedCopy = changed;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained sizeCache:self itemSizesChanged:changedCopy];
    }

    else if (objc_opt_respondsToSelector())
    {
      [WeakRetained sizeCacheItemsUpdated:self];
    }
  }
}

- (NSArray)items
{
  [(NSLock *)self->_itemsLock lock];
  allValues = [(NSMutableDictionary *)self->_itemsByPath allValues];
  [(NSLock *)self->_itemsLock unlock];

  return allValues;
}

- (id)itemForPath:(id)path
{
  itemsLock = self->_itemsLock;
  pathCopy = path;
  [(NSLock *)itemsLock lock];
  v6 = [(NSMutableDictionary *)self->_itemsByPath objectForKey:pathCopy];

  [(NSLock *)self->_itemsLock unlock];

  return v6;
}

- (void)updateSizeOfItem:(id)item synchronous:(BOOL)synchronous
{
  synchronousCopy = synchronous;
  v20[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  status = [itemCopy status];
  itemSize = [itemCopy itemSize];
  if ((status - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __45__STMSizeCache_updateSizeOfItem_synchronous___block_invoke;
    v16[3] = &unk_279D1D2E0;
    v9 = itemCopy;
    v17 = v9;
    v18 = itemSize;
    selfCopy = self;
    v10 = MEMORY[0x26D68F390](v16);
    dispatchQueue = [v9 dispatchQueue];

    if (dispatchQueue)
    {
      dispatchQueue2 = [v9 dispatchQueue];
      v13 = dispatchQueue2;
      if (synchronousCopy)
      {
        dispatch_sync(dispatchQueue2, v10);
      }

      else
      {
        dispatch_async(dispatchQueue2, v10);
      }
    }

    else
    {
      v13 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v10];
      queue = [v9 queue];
      v20[0] = v13;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
      [queue addOperations:v15 waitUntilFinished:synchronousCopy];
    }
  }
}

void __45__STMSizeCache_updateSizeOfItem_synchronous___block_invoke(id *a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  [a1[4] calculateSize];
  v2 = [a1[4] itemSize];
  if (v2 && ([a1[5] isEqual:v2] & 1) == 0)
  {
    v3 = a1[6];
    v5[0] = a1[4];
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
    [v3 notifySizesChanged:v4];
  }

  [a1[6] flushCacheToPref];
}

- (id)updatedSizeOfItemForPath:(id)path
{
  pathCopy = path;
  v11 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager fileExistsAtPath:pathCopy isDirectory:&v11];

  if (v6)
  {
    if (v11 == 1)
    {
      v7 = STMakeDirPath(pathCopy);

      pathCopy = v7;
    }

    v8 = [(STMSizeCache *)self itemForPath:pathCopy];
    if (v8)
    {
      [(STMSizeCache *)self updateSizeOfItem:v8 synchronous:1];
      itemSize = [v8 itemSize];
    }

    else
    {
      itemSize = 0;
    }
  }

  else
  {
    itemSize = 0;
  }

  return itemSize;
}

- (id)sizeOfItemForPath:(id)path
{
  pathCopy = path;
  v12 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager fileExistsAtPath:pathCopy isDirectory:&v12];

  if (v6)
  {
    if (v12 == 1)
    {
      v7 = STMakeDirPath(pathCopy);

      pathCopy = v7;
    }

    v8 = [(STMSizeCache *)self itemForPath:pathCopy];
    v9 = v8;
    if (v8)
    {
      itemSize = [v8 itemSize];
      [(STMSizeCache *)self updateSizeOfItem:v9 synchronous:0];
    }

    else
    {
      itemSize = 0;
    }
  }

  else
  {
    itemSize = 0;
  }

  return itemSize;
}

- (id)itemsContainingPath:(id)path
{
  v21 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  [(NSLock *)self->_itemsLock lock];
  allValues = [(NSMutableDictionary *)self->_itemsByPath allValues];
  [(NSLock *)self->_itemsLock unlock];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = allValues;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        itemPath = [v12 itemPath];
        if ([pathCopy hasPrefix:itemPath])
        {
          [v6 addObject:v12];
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)itemsContainedByPath:(id)path
{
  v30 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  [(NSLock *)self->_itemsLock lock];
  allValues = [(NSMutableDictionary *)self->_itemsByPath allValues];
  [(NSLock *)self->_itemsLock unlock];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(allValues, "count")}];
  v28 = 0;
  if ([defaultManager fileExistsAtPath:pathCopy isDirectory:&v28])
  {
    v21 = defaultManager;
    v23 = v7;
    if (v28 == 1)
    {
      v8 = STMakeDirPath(pathCopy);

      pathCopy = v8;
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = allValues;
    v9 = allValues;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          itemPath = [v14 itemPath];
          v17 = [pathCopy commonPrefixWithString:itemPath options:0];
          v18 = [v17 isEqualToString:pathCopy];

          if (v18)
          {
            [v23 addObject:v14];
          }

          objc_autoreleasePoolPop(v15);
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v11);
    }

    v7 = v23;
    v19 = v23;
    defaultManager = v21;
    allValues = v22;
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  return v19;
}

- (void)pruneCache
{
  v15 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [(NSLock *)self->_itemsLock lock];
  allKeys = [(NSMutableDictionary *)self->_itemsByPath allKeys];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (([defaultManager fileExistsAtPath:v9] & 1) == 0)
        {
          [(NSMutableDictionary *)self->_itemsByPath removeObjectForKey:v9];
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(NSLock *)self->_itemsLock unlock];
}

- (void)addItem:(id)item andComputeSizeSynchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  v13[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  itemPath = [itemCopy itemPath];
  [(NSLock *)self->_itemsLock lock];
  v8 = [(NSMutableDictionary *)self->_itemsByPath objectForKey:itemPath];
  v9 = v8;
  if (v8)
  {
    v10 = v8 == itemCopy;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && ![itemCopy status] && objc_msgSend(v9, "status") == 2)
  {
    itemSize = [v9 itemSize];
    [itemCopy setItemSize:itemSize];

    [itemCopy setStatus:{objc_msgSend(v9, "status")}];
  }

  [(NSMutableDictionary *)self->_itemsByPath setObject:itemCopy forKey:itemPath];
  [(NSLock *)self->_itemsLock unlock];
  if (!v9)
  {
    v13[0] = itemCopy;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [(STMSizeCache *)self notifyItemsAdded:v12];
  }

  [(STMSizeCache *)self updateSizeOfItem:itemCopy synchronous:synchronouslyCopy];
}

- (void)addItems:(id)items
{
  v14 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [itemsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(itemsCopy);
        }

        [(STMSizeCache *)self addItem:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [itemsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeItemForPath:(id)path
{
  pathCopy = path;
  [(NSLock *)self->_itemsLock lock];
  v4 = [(NSMutableDictionary *)self->_itemsByPath objectForKey:pathCopy];
  if (v4)
  {
    [(NSMutableDictionary *)self->_itemsByPath removeObjectForKey:pathCopy];
  }

  [(NSLock *)self->_itemsLock unlock];
}

- (void)removeItem:(id)item
{
  itemPath = [item itemPath];
  [(STMSizeCache *)self removeItemForPath:itemPath];
}

- (unint64_t)processCacheEvents:(id)events
{
  v49 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  [(NSLock *)self->_itemsLock lock];
  v5 = [eventsCopy count];
  STLog(1, @"%ld events to process", v6, v7, v8, v9, v10, v11, v5);
  v12 = [eventsCopy keysSortedByValueUsingSelector:sel_eventIDCompare_];
  v40 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(eventsCopy, "count")}];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v13)
  {
    v14 = v13;
    evtID2 = 0;
    v16 = *v45;
    v39 = *v45;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v45 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v44 + 1) + 8 * i);
        v19 = objc_autoreleasePoolPush();
        v20 = [eventsCopy objectForKeyedSubscript:v18];
        v21 = [(NSMutableDictionary *)self->_itemsByPath objectForKeyedSubscript:v18];
        v28 = v21;
        if (v21)
        {
          if ([v21 status] != 1)
          {
            evtID = [v20 evtID];
            path = [v20 path];
            v29 = _CompressPath(path);
            [v20 flags];
            itemPath = [v28 itemPath];
            STLog(1, @"Processing FSEvent #%llu : path = %@ (flags: %x), cache entry path : %@", v30, v31, v32, v33, v34, v35, evtID);

            v16 = v39;
            if ([v28 status] == 2)
            {
              v36 = 3;
            }

            else
            {
              v36 = 0;
            }

            [v28 setStatus:v36];
            [v40 addObject:v28];
          }

          evtID2 = [v20 evtID];
        }

        else
        {
          STLog(1, @"No associated cache entry for eventKey: %@", v22, v23, v24, v25, v26, v27, v18);
        }

        objc_autoreleasePoolPop(v19);
      }

      v14 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v14);
  }

  else
  {
    evtID2 = 0;
  }

  [(NSLock *)self->_itemsLock unlock];
  [(STMSizeCache *)self notifySizesChanged:v40];

  return evtID2;
}

- (void)updateLastCacheEventID:(unint64_t)d
{
  self->_cacheEventID = d;
  self->_cacheEventDate = [MEMORY[0x277CBEAA8] date];

  MEMORY[0x2821F96F8]();
}

- (STMSizeCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end