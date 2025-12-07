@interface NSMapTable(WBSNSMapTableExtras)
- (id)safari_allKeys;
- (id)safari_allValues;
@end

@implementation NSMapTable(WBSNSMapTableExtras)

- (id)safari_allKeys
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  keyEnumerator = [self keyEnumerator];
  v4 = [keyEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(keyEnumerator);
        }

        [v2 addObject:*(*(&v9 + 1) + 8 * i)];
      }

      v5 = [keyEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v2;
}

- (id)safari_allValues
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  objectEnumerator = [self objectEnumerator];
  v4 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        [v2 addObject:*(*(&v9 + 1) + 8 * i)];
      }

      v5 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v2;
}

@end