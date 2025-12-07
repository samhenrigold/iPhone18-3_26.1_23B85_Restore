@interface CADNotifiableEventsPredicate
+ (id)predicate;
- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database;
- (id)defaultPropertiesToLoad;
- (id)predicateFormat;
@end

@implementation CADNotifiableEventsPredicate

+ (id)predicate
{
  objc_opt_class();
  v2 = objc_opt_new();

  return v2;
}

- (id)defaultPropertiesToLoad
{
  v8[4] = *MEMORY[0x277D85DE8];
  v2 = CADEKPersistentEventDefaultPropertiesToLoad();
  v3 = *MEMORY[0x277CF7328];
  v8[0] = *MEMORY[0x277CF72B0];
  v8[1] = v3;
  v4 = *MEMORY[0x277CF7320];
  v8[2] = *MEMORY[0x277CF7340];
  v8[3] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:4];
  v6 = [v2 arrayByAddingObjectsFromArray:v5];

  return v6;
}

- (id)predicateFormat
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = CalDatabaseCopyOfAllNotifiableEventsInStore();
  if (![v3 count])
  {
    return v3;
  }

  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = CalEventOccurrenceCreateForInitialOccurrence();
        [v4 addObject:{v10, v12}];
        CFRelease(v10);
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

@end