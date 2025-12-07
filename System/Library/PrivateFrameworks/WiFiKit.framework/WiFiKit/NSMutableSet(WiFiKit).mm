@interface NSMutableSet(WiFiKit)
- (void)compareAndUpdateDuplicateScanRecords:()WiFiKit;
@end

@implementation NSMutableSet(WiFiKit)

- (void)compareAndUpdateDuplicateScanRecords:()WiFiKit
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  selfCopy = self;
  v5 = [self mutableCopy];
  [v5 intersectSet:v4];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    v9 = v24;
    v10 = &unk_279EBE748;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v24[0] = __62__NSMutableSet_WiFiKit__compareAndUpdateDuplicateScanRecords___block_invoke;
        v24[1] = v10;
        v24[2] = v12;
        v13 = [v4 objectsPassingTest:v23];
        if ([v13 count] == 1)
        {
          v14 = v9;
          v15 = v8;
          v16 = v4;
          v17 = v10;
          anyObject = [v13 anyObject];
          if ([anyObject compare:v12] == 1)
          {
            [selfCopy removeObject:v12];
            [selfCopy addObject:anyObject];
          }

          v10 = v17;
          v4 = v16;
          v8 = v15;
          v9 = v14;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v19 = [v4 mutableCopy];
  [v19 minusSet:selfCopy];
  if ([v19 count])
  {
    allObjects = [v19 allObjects];
    [selfCopy addObjectsFromArray:allObjects];
  }
}

@end