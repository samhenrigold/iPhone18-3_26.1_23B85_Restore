@interface NSSet(CALExtensions)
- (id)allObjectsWithClass:()CALExtensions;
@end

@implementation NSSet(CALExtensions)

- (id)allObjectsWithClass:()CALExtensions
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [v4 addObject:{v10, v12}];
        }
      }

      v7 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

@end