@interface NSSet(DiffBuilding)
- (void)diffAgainstObject:()DiffBuilding usingDiffBuilder:withDescription:;
@end

@implementation NSSet(DiffBuilding)

- (void)diffAgainstObject:()DiffBuilding usingDiffBuilder:withDescription:
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 mutableCopy];
  [v8 minusSet:self];
  v9 = [self mutableCopy];
  [v9 minusSet:v6];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [v7 diffObject:0 againstObject:*(*(&v24 + 1) + 8 * v14++) withDescription:@"added"];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v12);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = v9;
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [v7 diffObject:*(*(&v20 + 1) + 8 * v19++) againstObject:0 withDescription:{@"removed", v20}];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v17);
  }
}

@end