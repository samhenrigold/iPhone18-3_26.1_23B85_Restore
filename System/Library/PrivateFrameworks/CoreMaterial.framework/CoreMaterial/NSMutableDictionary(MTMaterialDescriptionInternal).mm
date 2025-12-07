@interface NSMutableDictionary(MTMaterialDescriptionInternal)
- (void)_processAdditionalInfo:()MTMaterialDescriptionInternal forFilterInFiltersArray:;
- (void)setAverageColorEnabled:()MTMaterialDescriptionInternal includingOptimizations:withAdditionalInfoPromise:;
- (void)setBlurRadius:()MTMaterialDescriptionInternal inputMaskImage:ignoringIdentity:includingOptimizations:withAdditionalInfoPromise:;
- (void)setBrightness:()MTMaterialDescriptionInternal ignoringIdentity:includingOptimizations:withAdditionalInfoPromise:;
- (void)setColorMatrix:()MTMaterialDescriptionInternal ignoringIdentity:includingOptimizations:withAdditionalInfoPromise:;
- (void)setCurvesInputValues:()MTMaterialDescriptionInternal ignoringIdentity:includingOptimizations:withAdditionalInfoPromise:;
- (void)setLuminanceAmount:()MTMaterialDescriptionInternal values:ignoringIdentity:includingOptimizations:withAdditionalInfoPromise:;
- (void)setSaturation:()MTMaterialDescriptionInternal ignoringIdentity:includingOptimizations:withAdditionalInfoPromise:;
- (void)setTintColor:()MTMaterialDescriptionInternal includingOptimizations:withAdditionalInfoPromise:;
- (void)setValue:()MTMaterialDescriptionInternal forProperty:ofFilter:isCompositingFilter:;
- (void)setZoom:()MTMaterialDescriptionInternal ignoringIdentity:includingOptimizations:withAdditionalInfoPromise:;
- (void)sortFiltersWithOrder:()MTMaterialDescriptionInternal;
@end

@implementation NSMutableDictionary(MTMaterialDescriptionInternal)

- (void)setValue:()MTMaterialDescriptionInternal forProperty:ofFilter:isCompositingFilter:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    if (a6)
    {
      v13 = [self objectForKey:?];
      v14 = 0;
      if (v13)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v15 = [self objectForKey:?];
      if (!v15)
      {
        v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [self setObject:? forKey:?];
      }

      v14 = v15;
      v16 = [v14 countByEnumeratingWithState:? objects:? count:?];
      if (v16)
      {
        v17 = v16;
        v23 = a6;
        selfCopy = self;
        v25 = v11;
        v18 = MEMORY[0];
        while (2)
        {
          for (i = 0; i != v17; i = (i + 1))
          {
            if (MEMORY[0] != v18)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(8 * i);
            v21 = [v20 objectForKey:?];
            v22 = [v12 isEqualToString:?];

            if (v22)
            {
              v13 = v20;
              goto LABEL_17;
            }
          }

          v17 = [v14 countByEnumeratingWithState:? objects:? count:?];
          if (v17)
          {
            continue;
          }

          break;
        }

        v13 = 0;
LABEL_17:
        self = selfCopy;
        v11 = v25;
        a6 = v23;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        goto LABEL_22;
      }
    }

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v13 setObject:? forKey:?];
    if (!a6)
    {
      [v14 addObject:?];
      if (!v10)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    [self setObject:? forKey:?];
LABEL_22:
    if (!v10)
    {
LABEL_24:

      goto LABEL_25;
    }

LABEL_23:
    [v13 setObject:? forKey:?];
    goto LABEL_24;
  }

LABEL_25:
}

- (void)_processAdditionalInfo:()MTMaterialDescriptionInternal forFilterInFiltersArray:
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v9 = [v6 countByEnumeratingWithState:0 objects:? count:?];
      if (v9)
      {
        v10 = v9;
        v11 = MEMORY[0];
        do
        {
          for (i = 0; i != v10; i = (i + 1))
          {
            if (MEMORY[0] != v11)
            {
              objc_enumerationMutation(v6);
            }

            v13 = [v6 objectForKey:?];
            [self setValue:? forProperty:? ofFilter:? isCompositingFilter:?];
          }

          v10 = [v6 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v10);
      }
    }
  }
}

- (void)setTintColor:()MTMaterialDescriptionInternal includingOptimizations:withAdditionalInfoPromise:
{
  v7 = a5;
  if (a3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    [&v10 sourceOverColorMatrix];
    v8 = [MEMORY[0x1E696B098] valueWithBytes:v10 objCType:{v11, v12, v13, v14}];
    [self setValue:? forProperty:? ofFilterInFiltersArray:?];

    if (v7)
    {
      v9 = v7[2](v7);
      [self _processAdditionalInfo:? forFilterInFiltersArray:?];
    }

    else
    {
      [self _processAdditionalInfo:? forFilterInFiltersArray:?];
    }
  }
}

- (void)setLuminanceAmount:()MTMaterialDescriptionInternal values:ignoringIdentity:includingOptimizations:withAdditionalInfoPromise:
{
  v17 = a4;
  v11 = a7;
  v12 = *MEMORY[0x1E6979C70];
  if (!a5 || MTIdentityValueForFilter(*MEMORY[0x1E6979C70]) != a2)
  {
    v13 = *MEMORY[0x1E6979C68];
    if (!v17)
    {
      v13 = v12;
    }

    v14 = v13;
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [self setValue:? forProperty:? ofFilterInFiltersArray:?];

    if ([v17 count] == 4)
    {
      [self setValue:? forProperty:? ofFilterInFiltersArray:?];
    }

    if (v11)
    {
      v16 = v11[2](v11);
      [self _processAdditionalInfo:? forFilterInFiltersArray:?];
    }

    else
    {
      [self _processAdditionalInfo:? forFilterInFiltersArray:?];
    }
  }
}

- (void)setBlurRadius:()MTMaterialDescriptionInternal inputMaskImage:ignoringIdentity:includingOptimizations:withAdditionalInfoPromise:
{
  v21 = a7;
  v12 = *MEMORY[0x1E6979928];
  if (!a5 || MTIdentityValueForFilter(*MEMORY[0x1E6979928]) != a2)
  {
    if (a4)
    {
      v13 = *MEMORY[0x1E6979D70];
    }

    else
    {
      v13 = v12;
    }

    v14 = v13;
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [self setValue:? forProperty:? ofFilterInFiltersArray:?];

    if (a4)
    {
      [self setValue:? forProperty:? ofFilterInFiltersArray:?];
    }

    if (v21)
    {
      v16 = v21[2]();
      v17 = v16;
      if (a6)
      {
        if (v16)
        {
          v18 = [v16 mutableCopy];

          v17 = v18;
LABEL_14:
          v19 = _MTGetCoreMaterialPlatformConfiguration();
          if (objc_opt_respondsToSelector())
          {
            blurEdgesOptimization = [v19 blurEdgesOptimization];
            [v17 setObject:? forKey:?];
          }

          if ((objc_opt_respondsToSelector() & 1) == 0 || [v19 isDitherOptimizationSupported])
          {
            [v17 setObject:? forKey:?];
          }

          goto LABEL_21;
        }

LABEL_13:
        v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
        goto LABEL_14;
      }
    }

    else
    {
      if (a6)
      {
        goto LABEL_13;
      }

      v17 = 0;
    }

LABEL_21:
    [self _processAdditionalInfo:? forFilterInFiltersArray:?];
  }
}

- (void)setAverageColorEnabled:()MTMaterialDescriptionInternal includingOptimizations:withAdditionalInfoPromise:
{
  v8 = a5;
  if (a3)
  {
    v10 = v8;
    [self setValue:? forProperty:? ofFilterInFiltersArray:?];
    if (a4)
    {
      [self setObject:? forKey:?];
    }

    if (v10)
    {
      v9 = v10[2](v10);
      [self _processAdditionalInfo:? forFilterInFiltersArray:?];
    }

    else
    {
      [self _processAdditionalInfo:? forFilterInFiltersArray:?];
    }

    v8 = v10;
  }
}

- (void)setSaturation:()MTMaterialDescriptionInternal ignoringIdentity:includingOptimizations:withAdditionalInfoPromise:
{
  v11 = a6;
  if (!a4 || MTIdentityValueForFilter(*MEMORY[0x1E6979890]) != a2)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [self setValue:? forProperty:? ofFilterInFiltersArray:?];

    if (v11)
    {
      v10 = v11[2]();
      [self _processAdditionalInfo:? forFilterInFiltersArray:?];
    }

    else
    {
      [self _processAdditionalInfo:? forFilterInFiltersArray:?];
    }
  }
}

- (void)setBrightness:()MTMaterialDescriptionInternal ignoringIdentity:includingOptimizations:withAdditionalInfoPromise:
{
  v11 = a6;
  if (!a4 || MTIdentityValueForFilter(*MEMORY[0x1E6979848]) != a2)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [self setValue:? forProperty:? ofFilterInFiltersArray:?];

    if (v11)
    {
      v10 = v11[2]();
      [self _processAdditionalInfo:? forFilterInFiltersArray:?];
    }

    else
    {
      [self _processAdditionalInfo:? forFilterInFiltersArray:?];
    }
  }
}

- (void)setColorMatrix:()MTMaterialDescriptionInternal ignoringIdentity:includingOptimizations:withAdditionalInfoPromise:
{
  v9 = a6;
  if (!a4 || (v10 = a3[3], v14[2] = a3[2], v14[3] = v10, v14[4] = a3[4], v11 = a3[1], v14[0] = *a3, v14[1] = v11, !MTCAColorMatrixIsIdentity(v14)))
  {
    v12 = [MEMORY[0x1E696B098] valueWithBytes:*a3 objCType:{*(a3 + 2), *(a3 + 3), a3[2], *(a3 + 6), *(a3 + 7), a3[4]}];
    [self setValue:? forProperty:? ofFilterInFiltersArray:?];

    if (v9)
    {
      v13 = v9[2](v9);
      [self _processAdditionalInfo:? forFilterInFiltersArray:?];
    }

    else
    {
      [self _processAdditionalInfo:? forFilterInFiltersArray:?];
    }
  }
}

- (void)setZoom:()MTMaterialDescriptionInternal ignoringIdentity:includingOptimizations:withAdditionalInfoPromise:
{
  if (a2 != 0.0 || (a4 & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [self setObject:? forKey:?];
  }
}

- (void)setCurvesInputValues:()MTMaterialDescriptionInternal ignoringIdentity:includingOptimizations:withAdditionalInfoPromise:
{
  v9 = a3;
  v10 = a6;
  if (!a4 || [v9 count])
  {
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:0 objects:? count:?];
    if (v12)
    {
      v13 = v12;
      v14 = MEMORY[0];
      do
      {
        for (i = 0; i != v13; i = (i + 1))
        {
          if (MEMORY[0] != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [v11 objectForKeyedSubscript:?];
          [self setValue:? forProperty:? ofFilterInFiltersArray:?];
        }

        v13 = [v11 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v13);
    }

    if (v10)
    {
      v17 = v10[2](v10);
      [self _processAdditionalInfo:? forFilterInFiltersArray:?];
    }

    else
    {
      [self _processAdditionalInfo:? forFilterInFiltersArray:?];
    }
  }
}

- (void)sortFiltersWithOrder:()MTMaterialDescriptionInternal
{
  v4 = a3;
  v5 = [self objectForKey:?];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __75__NSMutableDictionary_MTMaterialDescriptionInternal__sortFiltersWithOrder___block_invoke;
  v10 = &unk_1E80BE050;
  v11 = v4;
  v6 = v4;
  [v5 sortUsingComparator:?];
}

@end