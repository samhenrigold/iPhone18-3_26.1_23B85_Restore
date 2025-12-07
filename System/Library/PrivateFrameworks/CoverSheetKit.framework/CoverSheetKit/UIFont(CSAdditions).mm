@interface UIFont(CSAdditions)
- (BOOL)cs_supportsVariantWeights;
- (id)cs_fontWithVariantWeight:()CSAdditions;
- (uint64_t)cs_variantWeight;
- (uint64_t)cs_variantWeightRange;
@end

@implementation UIFont(CSAdditions)

- (BOOL)cs_supportsVariantWeights
{
  v1 = CTFontCopyVariation(self);
  if (v1)
  {
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:2003265652];
    v3 = [(__CFDictionary *)v1 objectForKeyedSubscript:v2];
    v4 = v3 != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)cs_variantWeight
{
  v28 = *MEMORY[0x1E69E9840];
  cs_cachedVariantWeight = [self cs_cachedVariantWeight];

  if (cs_cachedVariantWeight)
  {
    cs_cachedVariantWeight2 = [self cs_cachedVariantWeight];
    unsignedIntegerValue = [cs_cachedVariantWeight2 unsignedIntegerValue];

    return unsignedIntegerValue;
  }

  else
  {
    v6 = CTFontCopyVariation(self);
    if (v6 && ([MEMORY[0x1E696AD98] numberWithUnsignedInteger:2003265652], v7 = objc_claimAutoreleasedReturnValue(), -[__CFDictionary objectForKeyedSubscript:](v6, "objectForKeyedSubscript:", v7), v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
    {
      [self cs_setCachedVariantWeight:v8];
      unsignedIntegerValue2 = [v8 unsignedIntegerValue];
    }

    else
    {
      v22 = v6;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v10 = CTFontCopyVariationAxesInternal();
      v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v24;
        v14 = *MEMORY[0x1E6965910];
        v15 = *MEMORY[0x1E6965908];
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v17 = *(*(&v23 + 1) + 8 * i);
            v18 = [v17 objectForKeyedSubscript:v14];
            v19 = v18;
            if (v18)
            {
              if ([v18 unsignedIntegerValue] == 2003265652)
              {
                v20 = [v17 objectForKeyedSubscript:v15];
                if (v20)
                {
                  v21 = v20;
                  [self cs_setCachedVariantWeight:v20];
                  unsignedIntegerValue2 = [v21 unsignedIntegerValue];

                  goto LABEL_18;
                }
              }
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      [self cs_setCachedVariantWeight:&unk_1F15930C8];
      unsignedIntegerValue2 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_18:

      v6 = v22;
    }

    return unsignedIntegerValue2;
  }
}

- (uint64_t)cs_variantWeightRange
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v1 = CTFontCopyVariationAxesInternal();
  v2 = [v1 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = *v17;
    v4 = *MEMORY[0x1E6965910];
    v15 = *MEMORY[0x1E6965920];
    v5 = *MEMORY[0x1E6965918];
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v17 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = [v7 objectForKeyedSubscript:v4];
        v9 = v8;
        if (v8 && [v8 unsignedIntegerValue] == 2003265652)
        {
          v10 = [v7 objectForKeyedSubscript:v15];
          v11 = [v7 objectForKeyedSubscript:v5];
          v12 = v11;
          if (v10)
          {
            v13 = v11 == 0;
          }

          else
          {
            v13 = 1;
          }

          if (!v13)
          {
            v2 = [v10 unsignedIntValue] + 1;
            [v12 unsignedIntValue];

            goto LABEL_16;
          }
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v2);
  }

LABEL_16:

  return v2;
}

- (id)cs_fontWithVariantWeight:()CSAdditions
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15 = *MEMORY[0x1E69658F8];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:2003265652];
  v13 = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
  v14 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  fontDescriptor = [self fontDescriptor];
  v9 = [fontDescriptor fontDescriptorByAddingAttributes:v7];

  v10 = MEMORY[0x1E69DB878];
  [self pointSize];
  v11 = [v10 fontWithDescriptor:v9 size:?];

  return v11;
}

@end