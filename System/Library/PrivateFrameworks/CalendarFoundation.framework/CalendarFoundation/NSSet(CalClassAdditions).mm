@interface NSSet(CalClassAdditions)
+ (id)intersectionOfSet:()CalClassAdditions withSet:;
- (id)allObjectsWithClass:()CalClassAdditions;
- (void)CalMutableRecursiveCopy;
@end

@implementation NSSet(CalClassAdditions)

- (void)CalMutableRecursiveCopy
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(self, "count")}];
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
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          calMutableRecursiveCopy = [v8 CalMutableRecursiveCopy];
        }

        else if ((objc_opt_respondsToSelector() & 1) != 0 && [v8 conformsToProtocol:{&unk_1F37B6050, v12}])
        {
          calMutableRecursiveCopy = [v8 mutableCopy];
        }

        else
        {
          calMutableRecursiveCopy = [v8 copy];
        }

        v10 = calMutableRecursiveCopy;
        [v2 addObject:{calMutableRecursiveCopy, v12}];

        ++v7;
      }

      while (v5 != v7);
      v5 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

- (id)allObjectsWithClass:()CalClassAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DFA8] set];
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

+ (id)intersectionOfSet:()CalClassAdditions withSet:
{
  v5 = MEMORY[0x1E695DFA8];
  v6 = a4;
  v7 = [v5 setWithSet:a3];
  [v7 intersectSet:v6];

  return v7;
}

@end