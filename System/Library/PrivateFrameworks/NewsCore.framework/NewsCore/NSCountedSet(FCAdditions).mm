@interface NSCountedSet(FCAdditions)
- (id)fc_description;
@end

@implementation NSCountedSet(FCAdditions)

- (id)fc_description
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = [self allObjects];
  v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = MEMORY[0x1E696AEC0];
        v9 = [v7 description];
        v10 = [v8 stringWithFormat:@"%@ (%lu) \n", v9, objc_msgSend(self, "countForObject:", v7)];
        [v2 appendString:v10];
      }

      v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  return v2;
}

@end