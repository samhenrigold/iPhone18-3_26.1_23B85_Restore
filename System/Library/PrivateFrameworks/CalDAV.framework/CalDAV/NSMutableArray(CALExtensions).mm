@interface NSMutableArray(CALExtensions)
+ (CFMutableArrayRef)nonRetainingArray;
- (void)removeAllObjectsWithClass:()CALExtensions;
@end

@implementation NSMutableArray(CALExtensions)

- (void)removeAllObjectsWithClass:()CALExtensions
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_isKindOfClass())
        {
          [v4 addObject:{v10, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [selfCopy removeObjectsInArray:v4];
}

+ (CFMutableArrayRef)nonRetainingArray
{
  v0 = *(MEMORY[0x277CBF128] + 16);
  *&v3.version = *MEMORY[0x277CBF128];
  *&v3.release = v0;
  v3.equal = *(MEMORY[0x277CBF128] + 32);
  v3.retain = 0;
  v3.release = 0;
  v1 = CFArrayCreateMutable(0, 0, &v3);

  return v1;
}

@end