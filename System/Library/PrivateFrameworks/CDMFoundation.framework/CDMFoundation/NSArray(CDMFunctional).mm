@interface NSArray(CDMFunctional)
- (id)_cdm_filterWithBlock:()CDMFunctional;
- (id)_cdm_mapWithBlock:()CDMFunctional;
@end

@implementation NSArray(CDMFunctional)

- (id)_cdm_mapWithBlock:()CDMFunctional
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [self count];
  if (v4 && v5)
  {
    array = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(self, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    selfCopy = self;
    v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(selfCopy);
          }

          v12 = v4[2](v4, *(*(&v14 + 1) + 8 * i));
          if (v12)
          {
            [array addObject:{v12, v14}];
          }
        }

        v9 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  return array;
}

- (id)_cdm_filterWithBlock:()CDMFunctional
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [self count];
  if (v4 && v5)
  {
    array = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(self, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    selfCopy = self;
    v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(selfCopy);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if (v4[2](v4, v12))
          {
            [array addObject:{v12, v14}];
          }
        }

        v9 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  return array;
}

@end