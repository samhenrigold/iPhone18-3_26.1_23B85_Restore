@interface NSMutableArray(CalClassAdditions)
+ (CFMutableArrayRef)nonRetainingArray;
- (void)CalFilterUsingBlock:()CalClassAdditions;
- (void)removeAllObjectsWithClass:()CalClassAdditions;
@end

@implementation NSMutableArray(CalClassAdditions)

- (void)removeAllObjectsWithClass:()CalClassAdditions
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
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
  v0 = *(MEMORY[0x1E695E9C0] + 16);
  *&v3.version = *MEMORY[0x1E695E9C0];
  *&v3.release = v0;
  v3.equal = *(MEMORY[0x1E695E9C0] + 32);
  v3.retain = 0;
  v3.release = 0;
  v1 = CFArrayCreateMutable(0, 0, &v3);

  return v1;
}

- (void)CalFilterUsingBlock:()CalClassAdditions
{
  v4 = a3;
  v5 = MEMORY[0x1E696AE18];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__NSMutableArray_CalClassAdditions__CalFilterUsingBlock___block_invoke;
  v8[3] = &unk_1E7EC7250;
  v9 = v4;
  v6 = v4;
  v7 = [v5 predicateWithBlock:v8];
  [self filterUsingPredicate:v7];
}

@end