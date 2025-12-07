@interface NSCountedSet(SafariCoreExtras)
- (id)safari_highestFrequencyObject;
@end

@implementation NSCountedSet(SafariCoreExtras)

- (id)safari_highestFrequencyObject
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allObjects = [self allObjects];
  v3 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(allObjects);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [self countForObject:v9];
        if (v10 > v6)
        {
          v11 = v10;
          v12 = v9;

          v5 = v12;
          v6 = v11;
        }
      }

      v4 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end