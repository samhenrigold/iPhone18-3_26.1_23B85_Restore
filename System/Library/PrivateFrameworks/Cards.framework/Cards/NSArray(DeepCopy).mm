@interface NSArray(DeepCopy)
- (id)_deepCopy;
@end

@implementation NSArray(DeepCopy)

- (id)_deepCopy
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(self, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 conformsToProtocol:{&unk_2855FC6C0, v12}])
        {
          v9 = [v8 copy];
          if (v9)
          {
            [v2 addObject:v9];
          }
        }
      }

      v5 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = [v2 copy];

  return v10;
}

@end