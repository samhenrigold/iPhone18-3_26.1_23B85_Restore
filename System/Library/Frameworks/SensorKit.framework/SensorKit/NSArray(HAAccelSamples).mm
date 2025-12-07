@interface NSArray(HAAccelSamples)
+ (uint64_t)sr_arrayWithHAAccelSamples:()HAAccelSamples;
@end

@implementation NSArray(HAAccelSamples)

+ (uint64_t)sr_arrayWithHAAccelSamples:()HAAccelSamples
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = [[SRPhotoplethysmogramAccelerometerSample alloc] initWithHAPPGAccelSample:*(*(&v11 + 1) + 8 * v8)];
        [array addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return [MEMORY[0x1E695DEC8] arrayWithArray:array];
}

@end