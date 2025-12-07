@interface NSArray(Concate)
- (id)flattenArray;
@end

@implementation NSArray(Concate)

- (id)flattenArray
{
  v14 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        [array addObjectsFromArray:{*(*(&v9 + 1) + 8 * i), v9}];
      }

      v5 = [selfCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return array;
}

@end