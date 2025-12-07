@interface SRPPGSampleArray
- (SRPPGSampleArray)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
@end

@implementation SRPPGSampleArray

- (SRPPGSampleArray)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  v23 = *MEMORY[0x1E69E9840];
  if ([representation length])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = [objc_alloc(MEMORY[0x1E69A2B60]) initWithBinaryRepresentation:representation];
    if (v8)
    {
      v9 = v8;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      frameEnumerator = [v8 frameEnumerator];
      v11 = [frameEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        do
        {
          v14 = 0;
          do
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(frameEnumerator);
            }

            v15 = [[SRPhotoplethysmogramSample alloc] initWithHAPPGFrame:*(*(&v18 + 1) + 8 * v14)];
            [v7 addObject:v15];

            ++v14;
          }

          while (v12 != v14);
          v12 = [frameEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v12);
      }
    }

    v16 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v7];
  }

  else
  {

    return 0;
  }

  return v16;
}

@end