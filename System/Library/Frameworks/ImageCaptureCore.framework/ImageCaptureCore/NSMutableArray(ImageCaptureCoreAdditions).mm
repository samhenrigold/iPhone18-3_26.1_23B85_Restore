@interface NSMutableArray(ImageCaptureCoreAdditions)
- (void)addItemsMatchingType:()ImageCaptureCoreAdditions fromFolder:;
- (void)addItemsMatchingTypes:()ImageCaptureCoreAdditions fromFolder:;
- (void)addTruth:()ImageCaptureCoreAdditions code:;
@end

@implementation NSMutableArray(ImageCaptureCoreAdditions)

- (void)addTruth:()ImageCaptureCoreAdditions code:
{
  if (a3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLong:a4];
    [self addObject:v5];
  }
}

- (void)addItemsMatchingType:()ImageCaptureCoreAdditions fromFolder:
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [MEMORY[0x1E6982C40] typeWithIdentifier:v6];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v25 = v8;
    files = [v8 files];
    v11 = [files countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(files);
          }

          v15 = *(*(&v30 + 1) + 8 * i);
          v16 = MEMORY[0x1E6982C40];
          v17 = [v15 UTI];
          v18 = [v16 typeWithIdentifier:v17];

          if ([v18 conformsToType:v9])
          {
            [self addObject:v15];
          }
        }

        v12 = [files countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v12);
    }

    v8 = v25;
  }

  else
  {
    files2 = [v7 files];
    [self addObjectsFromArray:files2];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  folders = [v8 folders];
  v21 = [folders countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v27;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(folders);
        }

        [self addItemsMatchingType:v6 fromFolder:*(*(&v26 + 1) + 8 * j)];
      }

      v22 = [folders countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v22);
  }
}

- (void)addItemsMatchingTypes:()ImageCaptureCoreAdditions fromFolder:
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v6);
        }

        [self addItemsMatchingType:*(*(&v12 + 1) + 8 * v11++) fromFolder:v7];
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

@end