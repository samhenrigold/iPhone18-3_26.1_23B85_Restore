@interface NSMutableSet(EmailFoundationAdditions)
- (id)ef_uniquedObject:()EmailFoundationAdditions;
- (void)ef_addOptionalObject:()EmailFoundationAdditions;
- (void)ef_removeObjectsInArray:()EmailFoundationAdditions;
@end

@implementation NSMutableSet(EmailFoundationAdditions)

- (id)ef_uniquedObject:()EmailFoundationAdditions
{
  v4 = a3;
  v5 = [self member:v4];
  if (!v5)
  {
    v5 = [v4 copyWithZone:0];
    [self addObject:v5];
  }

  return v5;
}

- (void)ef_removeObjectsInArray:()EmailFoundationAdditions
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [self removeObject:{*(*(&v8 + 1) + 8 * v7++), v8}];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)ef_addOptionalObject:()EmailFoundationAdditions
{
  v4 = a3;
  if (v4)
  {
    [self addObject:v4];
  }
}

@end