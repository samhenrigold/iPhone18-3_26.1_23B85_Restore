@interface CADUnacknowledgedEventsPredicate
+ (id)predicate;
- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database;
- (id)predicateFormat;
@end

@implementation CADUnacknowledgedEventsPredicate

+ (id)predicate
{
  objc_opt_class();
  v2 = objc_opt_new();

  return v2;
}

- (id)predicateFormat
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = CalDatabaseCopyOfAllUnacknowledgedEventsInStore();
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