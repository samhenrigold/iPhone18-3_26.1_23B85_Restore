uint64_t MTDynamicBlurRadiusGraphicsQuality(uint64_t a1, uint64_t a2)
{
  if (MTDynamicBlurRadiusGraphicsQuality_onceToken != -1)
  {
    MTDynamicBlurRadiusGraphicsQuality_cold_1();
  }

  if (MTDynamicBlurRadiusGraphicsQuality___dynamicBlurRadiusGraphicsQuality)
  {
    return 10;
  }

  else
  {
    return 100;
  }
}

uint64_t MTCompareBlurInputQualities(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  if (!MTIsValidBlurInputQuality(v4) || (MTIsValidBlurInputQuality(v3) & 1) == 0)
  {
    MTCompareBlurInputQualities_cold_1();
  }

  if ([(__CFString *)v4 isEqualToString:?])
  {
    v5 = @"medium";
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  if ([(__CFString *)v3 isEqualToString:?])
  {
    v7 = @"medium";
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  if (([(__CFString *)v6 isEqualToString:?]& 1) != 0)
  {
    v9 = 0;
  }

  else if (([(__CFString *)v6 isEqualToString:?]& 1) != 0)
  {
    v9 = -1;
  }

  else if (([(__CFString *)v6 isEqualToString:?]& 1) != 0)
  {
    v9 = 1;
  }

  else if ([(__CFString *)v8 isEqualToString:?])
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

id MTCAFilterCurvesInputValuesKeys(uint64_t a1)
{
  if (MTCAFilterCurvesInputValuesKeys_onceToken != -1)
  {
    MTCAFilterCurvesInputValuesKeys_cold_1();
  }

  v2 = MTCAFilterCurvesInputValuesKeys___curvesFilterInputValuesKeys;

  return v2;
}

uint64_t MTIsValidBlurInputQuality(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:?] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:?];
  }

  return v2;
}

id _MTGetCoreMaterialPlatformConfiguration()
{
  v0 = __platformConfiguration;
  if (!__platformConfiguration)
  {
    v1 = objc_alloc_init(MTCoreMaterialDefaultPlatformConfiguration);
    v2 = __platformConfiguration;
    __platformConfiguration = v1;

    v0 = __platformConfiguration;
  }

  return v0;
}

id MTFilterKeyPathForFilter(void *a1)
{
  v1 = a1;
  v2 = MTFilterKeyPathForFilter___filterKeyCache;
  if (!MTFilterKeyPathForFilter___filterKeyCache)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = MTFilterKeyPathForFilter___filterKeyCache;
    MTFilterKeyPathForFilter___filterKeyCache = v3;

    v2 = MTFilterKeyPathForFilter___filterKeyCache;
  }

  v5 = [v2 objectForKeyedSubscript:?];
  if (!v5)
  {
    v5 = [@"filters" stringByAppendingFormat:v1];
    [MTFilterKeyPathForFilter___filterKeyCache setObject:? forKeyedSubscript:?];
  }

  return v5;
}

__CFString *_IdentityPropertyForFilterType(void *a1)
{
  v1 = a1;
  v2 = @"inputAmount";
  if ([v1 isEqualToString:?] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:"))
  {
    v3 = kMTCAFilterPropertyNameInputRadius;
LABEL_4:
    v4 = *v3;
LABEL_5:

    v2 = v4;
    goto LABEL_6;
  }

  if ([v1 isEqualToString:?])
  {
    v3 = kMTCAFilterPropertyNameInputColorMatrix;
    goto LABEL_4;
  }

  if ([v1 isEqualToString:?])
  {
    v4 = 0;
    goto LABEL_5;
  }

LABEL_6:

  return v2;
}

void *_IsIdentityProperty(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E6979310] mt_orderedFilterTypes];
  if ([v5 containsObject:?])
  {
    v6 = _IdentityPropertyForFilterType(v3);
    v7 = [v4 isEqualToString:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL _IsValueIdentity(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (!_IsIdentityProperty(v6, a3))
  {
LABEL_6:
    IsIdentity = 0;
    goto LABEL_10;
  }

  if (![v6 isEqualToString:?])
  {
    if (([v6 isEqualToString:?] & 1) == 0)
    {
      [v5 floatValue];
      IsIdentity = MTIdentityValueForFilter(v6) == v8;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  if (v5)
  {
    [v10 CAColorMatrixValue];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  IsIdentity = MTCAColorMatrixIsIdentity(v10);
LABEL_10:

  return IsIdentity;
}

BOOL MTCAColorMatrixIsIdentity(_OWORD *a1)
{
  v1 = a1[3];
  v4[2] = a1[2];
  v4[3] = v1;
  v4[4] = a1[4];
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return MTCAColorMatrixEqualToMatrix(v4, MEMORY[0x1E6979280]);
}

id MTMaterialCreateDictionaryRepresentation(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E695DF90];
  v5 = a1;
  v6 = objc_alloc_init(v4);
  v7 = _MTRecipeForRecipeWithOptions(v5, v3);

  v8 = [v3 objectForKey:?];
  v9 = MTMaterialSettingsForRecipeFromBundle(v7, v8);

  if (v9)
  {
    v10 = [v9 baseMaterialSettings];
    v11 = MTTintingFilteringSettingsCreateDictionaryRepresentation(v10, v3);

    v6 = v11;
  }

  return v6;
}

id MTVisualStylingCreateDictionaryRepresentation(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _MTRecipeForRecipeWithOptions(a1, v9);
  v11 = [v9 objectForKey:?];
  if (v11)
  {
    MTSharedVisualStyleSetForStyleNameFromBundle(v10, v11);
  }

  else
  {
    MTSharedVisualStyleSetForRecipeAndCategory(v10, v7);
  }
  v12 = ;
  v13 = v12;
  if (!v12 || ([v12 visualStylingForStyle:?], (v14 = objc_claimAutoreleasedReturnValue()) == 0) || (v15 = v14, MTVisualStylingSettingsCreateDictionaryRepresentation(v14, v9), v16 = objc_claimAutoreleasedReturnValue(), v15, !v16))
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF20]);
  }

  return v16;
}

__CFString *_MTRecipeForRecipeWithOptions(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = [v4 objectForKey:?];
  v7 = [v6 BOOLValue];

  v8 = v5;
  if (v7)
  {
    if (([(__CFString *)v5 isEqualToString:?]& 1) != 0)
    {
      v9 = MTCoreMaterialRecipePlatformChromeLightReduceTransparency;
    }

    else
    {
      v8 = v5;
      if (![(__CFString *)v5 isEqualToString:?])
      {
        goto LABEL_8;
      }

      v10 = [v4 objectForKey:?];
      v11 = [v10 integerValue];

      v9 = MTCoreMaterialRecipePlatformChromeDarkReduceTransparency;
      if (v11 == 1)
      {
        v9 = MTCoreMaterialRecipePlatformChromeDarkReduceTransparencyLayer1;
      }
    }

    v8 = *v9;
  }

LABEL_8:

  return v8;
}

id MTMaterialSettingsForRecipeFromBundle(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v4;
  if (v5 && ([v5 isEqualToString:?] & 1) == 0)
  {
    v8 = _RecipeNameForCoreMaterialRecipe(v5);
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v11 = v10;

    v7 = _SharedMaterialSettingsForRecipeWithNameFromBundle(v11, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id _RecipeNameForCoreMaterialRecipe(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 isEqualToString:?] & 1) == 0)
  {
    if (_LoadCoreMaterialRecipeNames_onceToken != -1)
    {
      _RecipeNameForCoreMaterialRecipe_cold_1();
    }

    if ([__coreMaterialRecipeNames containsObject:?])
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id MTSharedVisualStyleSetForRecipeAndCategory(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = _RecipeNameForCoreMaterialRecipe(v3);
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    v10 = v9;

    v11 = v5;
    v12 = _SharedMaterialSettingsForRecipeWithNameFromBundle(v10, 0);
    v13 = [v12 styleNameForCategory:?];

    v6 = MTSharedVisualStyleSetForStyleNameFromBundle(v13, 0);

    v3 = v10;
  }

  return v6;
}

MTRecipeMaterialSettings *_SharedMaterialSettingsForRecipeWithNameFromBundle(void *a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3 || ([v3 isEqualToString:?] & 1) != 0)
  {
    v5 = 0;
    goto LABEL_47;
  }

  if (_SharedMaterialSettingsForRecipeWithNameFromBundle_onceToken != -1)
  {
    _SharedMaterialSettingsForRecipeWithNameFromBundle_cold_1();
  }

  v6 = _RecipeNamesToSharedInstances();
  v5 = [v6 objectForKey:?];

  if (!v5)
  {
    os_unfair_lock_lock(&_SharedMaterialSettingsForRecipeWithNameFromBundle___lock);
    v31 = [MEMORY[0x1E696AAE8] coreMaterialOverrideRecipeBundle];
    v30 = [MEMORY[0x1E696AAE8] coreMaterialRecipeBundle];
    v7 = v3;
    v8 = 0;
    v9 = v7;
    while (1)
    {
      v10 = [v4 URLForMaterialRecipeDescendant:?];
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v12 = [v31 URLForMaterialRecipeDescendant:?];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = [v30 URLForMaterialRecipeDescendant:?];
        }

        v11 = v14;

        if (!v11)
        {
          v20 = v9;
LABEL_32:
          v23 = [v4 URLForMaterialRecipe:?];
          if (v23 || ([v31 URLForMaterialRecipe:?], (v23 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v30, "URLForMaterialRecipe:"), (v23 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v24 = v23;
            v25 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:? error:?];
            v26 = 0;
            v27 = v26;
            if (!v25 || v26)
            {
              if (os_log_type_enabled(MTLogConfiguration, OS_LOG_TYPE_ERROR))
              {
                _SharedMaterialSettingsForRecipeWithNameFromBundle_cold_4();
              }

              v5 = 0;
            }

            else
            {
              if (os_log_type_enabled(MTLogConfiguration, OS_LOG_TYPE_DEBUG))
              {
                _SharedMaterialSettingsForRecipeWithNameFromBundle_cold_2();
              }

              v5 = [MTRecipeMaterialSettings initWithRecipeName:"initWithRecipeName:andDescription:descendantDescriptions:bundle:" andDescription:? descendantDescriptions:? bundle:?];
              if (v5)
              {
                v28 = _RecipeNamesToSharedInstances();
                [v28 setObject:? forKey:?];

                if (os_log_type_enabled(MTLogConfiguration, OS_LOG_TYPE_DEBUG))
                {
                  _SharedMaterialSettingsForRecipeWithNameFromBundle_cold_3();
                }
              }
            }
          }

          else
          {
            v5 = 0;
          }

          os_unfair_lock_unlock(&_SharedMaterialSettingsForRecipeWithNameFromBundle___lock);

          break;
        }
      }

      v15 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:? error:?];
      v16 = 0;
      v17 = v16;
      v18 = MTLogConfiguration;
      if (v15)
      {
        v19 = v16 == 0;
      }

      else
      {
        v19 = 0;
      }

      if (v19)
      {
        if (os_log_type_enabled(MTLogConfiguration, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v33 = v11;
          _os_log_debug_impl(&dword_1BF527000, v18, OS_LOG_TYPE_DEBUG, "Loaded descendant material recipe plist at URL: %{public}@", buf, 0xCu);
        }

        v20 = [v15 objectForKey:?];

        v21 = [v15 objectForKey:?];
        v22 = v21;
        v7 = 0;
        if (v20 && v21)
        {
          if (!v8)
          {
            v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v8 insertObject:? atIndex:?];
          v7 = v20;
        }
      }

      else
      {
        if (os_log_type_enabled(MTLogConfiguration, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v33 = v11;
          v34 = 2114;
          v35 = v17;
          _os_log_error_impl(&dword_1BF527000, v18, OS_LOG_TYPE_ERROR, "Failed to load descendant material recipe plist at URL (%{public}@): %{public}@", buf, 0x16u);
        }

        v7 = 0;
        v20 = v9;
      }

      v9 = v20;
      if (!v7)
      {
        goto LABEL_32;
      }
    }
  }

LABEL_47:

  return v5;
}

id _RecipeNamesToSharedInstances()
{
  if (_RecipeNamesToSharedInstances_onceToken != -1)
  {
    _RecipeNamesToSharedInstances_cold_1();
  }

  v1 = _RecipeNamesToSharedInstances___recipeNamesToSharedInstances;

  return v1;
}

id MTTintingFilteringSettingsCreateDictionaryRepresentation(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v3)
  {
    v6 = [v4 objectForKey:?];
    v7 = [v6 BOOLValue];

    [v3 tintColor];
    v8 = [MTColor colorWithCGColor:?];
    [v3 tintAlpha];
    v9 = [v8 colorWithAlphaComponent:?];
    [v5 setTintColor:? includingOptimizations:? withAdditionalInfoPromise:?];

    v10 = [v3 luminanceValues];
    [v3 luminanceAmount];
    [v5 setLuminanceAmount:? values:? ignoringIdentity:? includingOptimizations:? withAdditionalInfoPromise:?];
    v11 = [v4 objectForKey:?];
    v12 = [v11 BOOLValue];

    if (v12)
    {
      [v3 saturation];
      [v5 setSaturation:? ignoringIdentity:? includingOptimizations:? withAdditionalInfoPromise:?];
      [v3 brightness];
      [v5 setBrightness:? ignoringIdentity:? includingOptimizations:? withAdditionalInfoPromise:?];
    }

    else
    {
      [v3 blurRadius];
      [v3 variableBlurInputMask];
      v22[10] = MEMORY[0x1E69E9820];
      v22[11] = 3221225472;
      v22[12] = __MTTintingFilteringSettingsCreateDictionaryRepresentation_block_invoke_2;
      v22[13] = &unk_1E80BE028;
      v24 = v7;
      v23 = v3;
      [v5 setBlurRadius:? inputMaskImage:? ignoringIdentity:? includingOptimizations:? withAdditionalInfoPromise:?];

      [v23 saturation];
      [v5 setSaturation:? ignoringIdentity:? includingOptimizations:? withAdditionalInfoPromise:?];
      [v23 brightness];
      [v5 setBrightness:? ignoringIdentity:? includingOptimizations:? withAdditionalInfoPromise:?];
      [v23 isAverageColorEnabled];
    }

    [v5 setAverageColorEnabled:? includingOptimizations:? withAdditionalInfoPromise:?];
    [v3 zoom];
    [v5 setZoom:? ignoringIdentity:? includingOptimizations:? withAdditionalInfoPromise:?];
    [v22 colorMatrix];
    [v5 setColorMatrix:? ignoringIdentity:? includingOptimizations:? withAdditionalInfoPromise:?];
    v13 = [v3 curvesValues];
    [v5 setCurvesInputValues:? ignoringIdentity:? includingOptimizations:? withAdditionalInfoPromise:?];

    if (v7)
    {
      v14 = MEMORY[0x1E696AD98];
      [v3 backdropScale];
      v15 = [v14 numberWithDouble:?];
      v16 = [v15 mt_isIdentityValueForMaterialSettingsProperty:?];

      if ((v16 & 1) == 0)
      {
        v17 = MEMORY[0x1E696AD98];
        [v3 backdropScale];
        v18 = [v17 numberWithDouble:?];
        [v5 setObject:? forKey:?];
      }
    }

    if ([v3 isBlurAtEnd])
    {
      [MEMORY[0x1E6979310] mt_orderedFilterTypesBlurAtEnd];
    }

    else
    {
      [MEMORY[0x1E6979310] mt_orderedFilterTypes];
    }
    v19 = ;
    [v5 sortFiltersWithOrder:?];
    v20 = [v3 userInfo];
    if (v20)
    {
      [v5 setObject:? forKey:?];
    }
  }

  return v5;
}

MTVisualStyleSet *MTSharedVisualStyleSetForStyleNameFromBundle(void *a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    v30 = _StylesToSharedInstances(v4);
    v6 = [v30 objectForKey:?];
    if (!v6)
    {
      obj = v30;
      objc_sync_enter(obj);
      v31 = [MEMORY[0x1E696AAE8] coreMaterialOverrideRecipeBundle];
      v29 = [MEMORY[0x1E696AAE8] coreMaterialRecipeBundle];
      v7 = v3;
      v8 = 0;
      *&v9 = 138543362;
      v27 = v9;
      v10 = v7;
      do
      {
        v11 = [v5 URLForVisualStyleSetDescendant:v27];
        if (v11)
        {
        }

        else
        {
          v12 = [v31 URLForVisualStyleSetDescendant:?];
          v13 = v12;
          if (v12)
          {
            v14 = v12;
          }

          else
          {
            v14 = [v29 URLForVisualStyleSetDescendant:?];
          }

          v11 = v14;

          if (!v11)
          {
            break;
          }
        }

        v15 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:? error:?];
        v16 = 0;
        v17 = v16;
        v18 = MTLogConfiguration;
        if (!v15 || v16)
        {
          if (os_log_type_enabled(MTLogConfiguration, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v33 = v11;
            v34 = 2114;
            v35 = v17;
            _os_log_error_impl(&dword_1BF527000, v18, OS_LOG_TYPE_ERROR, "Failed to load descendant style set plist at URL (%{public}@): %{public}@", buf, 0x16u);
          }

          v7 = 0;
        }

        else
        {
          if (os_log_type_enabled(MTLogConfiguration, OS_LOG_TYPE_DEBUG))
          {
            *buf = v27;
            v33 = v11;
            _os_log_debug_impl(&dword_1BF527000, v18, OS_LOG_TYPE_DEBUG, "Loaded descendant style set plist at URL: %{public}@", buf, 0xCu);
          }

          v19 = [v15 objectForKey:?];

          v20 = [v15 objectForKey:?];
          v21 = v20;
          v7 = 0;
          if (v19 && v20)
          {
            if (!v8)
            {
              v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [v8 insertObject:? atIndex:?];
            v7 = v19;
          }

          v10 = v19;
        }
      }

      while (v7);
      v22 = [v5 URLForVisualStyleSet:?];
      if (v22 || ([v31 URLForVisualStyleSet:?], (v22 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v29, "URLForVisualStyleSet:"), (v22 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v23 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:? error:?];
        v24 = 0;
        v25 = v24;
        if (!v23 || v24)
        {
          if (os_log_type_enabled(MTLogConfiguration, OS_LOG_TYPE_ERROR))
          {
            MTSharedVisualStyleSetForStyleNameFromBundle_cold_3();
          }

          v6 = 0;
        }

        else
        {
          if (os_log_type_enabled(MTLogConfiguration, OS_LOG_TYPE_DEBUG))
          {
            MTSharedVisualStyleSetForStyleNameFromBundle_cold_1();
          }

          v6 = [MTVisualStyleSet initWithName:"initWithName:visualStyleSetDescription:andDescendantDescriptions:" visualStyleSetDescription:? andDescendantDescriptions:?];
          if (v6)
          {
            [obj setObject:? forKey:?];
            if (os_log_type_enabled(MTLogConfiguration, OS_LOG_TYPE_DEBUG))
            {
              MTSharedVisualStyleSetForStyleNameFromBundle_cold_2();
            }
          }
        }
      }

      else
      {
        v6 = 0;
      }

      objc_sync_exit(obj);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id _StylesToSharedInstances(uint64_t a1)
{
  if (_StylesToSharedInstances_onceToken != -1)
  {
    _StylesToSharedInstances_cold_1();
  }

  v2 = _StylesToSharedInstances___stylesToSharedInstances;

  return v2;
}

double MTIdentityValueForFilter(void *a1)
{
  v1 = [a1 isEqualToString:?];
  result = 0.0;
  if (v1)
  {
    return 1.0;
  }

  return result;
}

id __MTTintingFilteringSettingsCreateDictionaryRepresentation_block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = [*(a1 + 32) blurInputQuality];
    v4 = [v3 isEqualToString:?];

    if ((v4 & 1) == 0)
    {
      v5 = [*(a1 + 32) blurInputQuality];
      [v2 setObject:? forKey:?];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

CGColorSpaceRef __GrayColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0E0]);
  GrayColorSpace___GrayColorSpace = result;
  return result;
}

id MTAllOrdinalVisualStyles(uint64_t a1)
{
  if (MTAllOrdinalVisualStyles_onceToken != -1)
  {
    MTAllOrdinalVisualStyles_cold_1();
  }

  v2 = MTAllOrdinalVisualStyles___visualStyles;

  return v2;
}

void __MTAllOrdinalVisualStyles_block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = @"primary";
  v3 = @"secondary";
  v4 = @"tertiary";
  v5 = @"quaternary";
  v6 = @"highlight";
  v7 = @"separator";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  v1 = MTAllOrdinalVisualStyles___visualStyles;
  MTAllOrdinalVisualStyles___visualStyles = v0;
}

uint64_t MTCompareObjectsWithOrder(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 indexOfObject:?];
  v7 = [v4 indexOfObject:?];

  if (v6 < v7)
  {
    return -1;
  }

  else
  {
    return v6 > v7;
  }
}

void __MTAllPlatformColorVisualStyles_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:@"platformGray" count:{@"platformBlue", @"platformTeal", @"platformOrange", @"platformGreen", v2}];
  v1 = MTAllPlatformColorVisualStyles___systemColorVisualStyles;
  MTAllPlatformColorVisualStyles___systemColorVisualStyles = v0;
}

id MTAllPlatformColorVisualStyles(uint64_t a1)
{
  if (MTAllPlatformColorVisualStyles_onceToken != -1)
  {
    MTAllPlatformColorVisualStyles_cold_1();
  }

  v2 = MTAllPlatformColorVisualStyles___systemColorVisualStyles;

  return v2;
}

id MTVisualStylingSettingsCreateDictionaryRepresentation(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v3)
  {
    v6 = [v3 tintColorDescription];

    if (v6)
    {
      v7 = [v3 tintColorDescription];
      [v5 setObject:? forKey:?];

      v8 = MEMORY[0x1E696AD98];
      [v3 tintAlpha];
      v9 = [v8 numberWithDouble:?];
      [v5 setObject:? forKey:?];
    }

    v10 = [v3 compositingFilter];
    if (v10 && ([v4 objectForKey:?], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "BOOLValue"), v11, !v12))
    {
      [v5 setObject:? forKey:?];
    }

    else
    {
      v13 = [v3 filterType];
      v14 = [v3 filterProperties];
      v15 = MTComposedFilterCreateDictionaryRepresentation(v13, v14, v10 != 0);
      [v5 addEntriesFromDictionary:?];
    }

    v16 = [v3 userInfo];
    if (v16)
    {
      [v5 setObject:? forKey:?];
    }
  }

  return v5;
}

id MTComposedFilterCreateDictionaryRepresentation(void *a1, void *a2, uint64_t a3)
{
  v102 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = a2;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v6 setValue:? forProperty:? ofFilter:? isCompositingFilter:?];
  v7 = [v5 mutableCopy];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = v4;
  v67 = v7;
  v10 = v8;
  v11 = v9;
  v12 = v10;
  v66 = v5;
  if ([v9 isEqualToString:?] || objc_msgSend(v9, "isEqualToString:"))
  {
    [v12 setObject:? forKeyedSubscript:?];
    [v12 setObject:? forKeyedSubscript:?];
    v13 = v67;
  }

  else
  {
    v13 = v67;
    if ([v9 isEqualToString:?])
    {
      v65 = v12;
      obja = v6;
      v37 = objc_alloc(MEMORY[0x1E695DEC8]);
      v38 = [v67 objectForKeyedSubscript:?];
      v39 = v38;
      if (!v38)
      {
        v39 = [v67 objectForKeyedSubscript:?];
      }

      v40 = [v67 objectForKeyedSubscript:?];
      v41 = v40;
      if (!v40)
      {
        v41 = [v67 objectForKeyedSubscript:?];
      }

      v42 = [v67 objectForKeyedSubscript:?];
      v43 = [v67 objectForKeyedSubscript:?];
      v44 = [v67 objectForKeyedSubscript:?];
      v45 = v37;
      v46 = v39;
      v47 = [v45 initWithObjects:{v41, v42, v43, v44, 0}];

      if (!v40)
      {
      }

      v12 = v65;
      if (!v38)
      {
      }

      v95 = @"darkenShadowHighlights";
      v96 = @"darkenShadows";
      v97 = @"saturationAdjustment";
      v98 = @"increaseSaturation";
      v99 = @"darkenAll";
      v100 = @"blueYellowContrast";
      v101 = @"redGreenContrast";
      v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
      v13 = v67;
      [v67 removeObjectsForKeys:?];

      v6 = obja;
      if ([v47 count] >= 3)
      {
        v49 = *(MEMORY[0x1E6979280] + 48);
        v87 = *(MEMORY[0x1E6979280] + 32);
        v88 = v49;
        v89 = *(MEMORY[0x1E6979280] + 64);
        v50 = *(MEMORY[0x1E6979280] + 16);
        v85 = *MEMORY[0x1E6979280];
        v86 = v50;
        v51 = [v47 firstObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v53 = v47;
          v54 = [v53 countByEnumeratingWithState:? objects:? count:?];
          if (v54)
          {
            v55 = v54;
            v56 = *v82;
            do
            {
              for (i = 0; i != v55; i = (i + 1))
              {
                if (*v82 != v56)
                {
                  objc_enumerationMutation(v53);
                }

                MTCAColorMatrixMakeWithDictionaryRepresentation(*(*(&v81 + 1) + 8 * i), v80);
                v77 = v87;
                v78 = v88;
                v79 = v89;
                v75 = v85;
                v76 = v86;
                CAColorMatrixConcat();
              }

              v55 = [v53 countByEnumeratingWithState:? objects:? count:?];
            }

            while (v55);
          }
        }

        else
        {
          v53 = [v47 objectAtIndexedSubscript:?];
          [v53 floatValue];
          v59 = v58;
          v60 = [v47 objectAtIndexedSubscript:?];
          [v60 floatValue];
          v61 = [v47 objectAtIndexedSubscript:?];
          [v61 floatValue];
          v62 = [v47 count];
          if (v62 >= 4)
          {
            v43 = [v47 objectAtIndexedSubscript:?];
            [v43 floatValue];
          }

          if ([v47 count] <= 4)
          {
            MTCAColorMatrixMakeWithVibrantShadowAttributes(&v90, v59);
            v87 = v92;
            v88 = v93;
            v89 = v94;
            v85 = v90;
            v86 = v91;
          }

          else
          {
            v63 = [v47 objectAtIndexedSubscript:?];
            [v63 floatValue];
            MTCAColorMatrixMakeWithVibrantShadowAttributes(&v90, v59);
            v87 = v92;
            v88 = v93;
            v89 = v94;
            v85 = v90;
            v86 = v91;
          }

          if (v62 >= 4)
          {
          }

          v6 = obja;
          v12 = v65;
        }

        v80[2] = v87;
        v80[3] = v88;
        v80[4] = v89;
        v80[0] = v85;
        v80[1] = v86;
        v64 = MTCAColorMatrixCreateDictionaryRepresentation(v80, *&v86);
        [v67 setObject:? forKeyedSubscript:?];
      }
    }
  }

  v14 = [v13 allKeys];
  v15 = [v12 allKeys];
  v16 = [v14 arrayByAddingObjectsFromArray:?];

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v16;
  v17 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v17)
  {
    v18 = v17;
    v19 = *v72;
    do
    {
      for (j = 0; j != v18; j = (j + 1))
      {
        if (*v72 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v71 + 1) + 8 * j);
        v22 = v12;
        v23 = [v12 objectForKey:?];
        v24 = v23;
        if (v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = v21;
        }

        v26 = v25;

        v27 = [v13 objectForKey:?];
        if (v27)
        {
          v28 = v27;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = v11;
            v30 = v6;
            v31 = [MTColor colorWithDescription:?];
            v32 = v31;
            if (v31)
            {
              v33 = [v31 CGColor];
              goto LABEL_18;
            }

            if (MTCAColorMatrixIsDictionaryRepresentation(v28))
            {
              v34 = MEMORY[0x1E696B098];
              MTCAColorMatrixMakeWithDictionaryRepresentation(v28, v70);
              v33 = [v34 valueWithBytes:? objCType:?];
LABEL_18:
              v35 = v33;

              v28 = v35;
            }

            v6 = v30;
            v11 = v29;
            v13 = v67;
          }

          [v6 setValue:? forProperty:? ofFilter:? isCompositingFilter:?];
        }

        v12 = v22;
      }

      v18 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v18);
  }

  return v6;
}

uint64_t MTCAColorMatrixIsDictionaryRepresentation(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:?];
  if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v2, v2))
  {
    v3 = [v1 objectForKeyedSubscript:?];
    if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v3, v3))
    {
      v4 = [v1 objectForKeyedSubscript:?];
      if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v4, v4))
      {
        v5 = [v1 objectForKeyedSubscript:?];
        if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v5, v5))
        {
          v6 = [v1 objectForKeyedSubscript:?];
          if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v6, v6))
          {
            v7 = [v1 objectForKeyedSubscript:?];
            if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v7, v7))
            {
              v8 = [v1 objectForKeyedSubscript:?];
              if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v8, v8))
              {
                v9 = [v1 objectForKeyedSubscript:?];
                if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v9, v9))
                {
                  v23 = [v1 objectForKeyedSubscript:?];
                  if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v23, v23))
                  {
                    v22 = [v1 objectForKeyedSubscript:?];
                    if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v22, v22))
                    {
                      v21 = [v1 objectForKeyedSubscript:?];
                      if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v21, v21))
                      {
                        v20 = [v1 objectForKeyedSubscript:?];
                        if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v20, v20))
                        {
                          v19 = [v1 objectForKeyedSubscript:?];
                          if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v19, v19))
                          {
                            v18 = [v1 objectForKeyedSubscript:?];
                            if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v18, v18))
                            {
                              v17 = [v1 objectForKeyedSubscript:?];
                              if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v17, v17))
                              {
                                v16 = [v1 objectForKeyedSubscript:?];
                                if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v16, v16))
                                {
                                  v15 = [v1 objectForKeyedSubscript:?];
                                  if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v15, v15))
                                  {
                                    v14 = [v1 objectForKeyedSubscript:?];
                                    if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v14, v14))
                                    {
                                      v13 = [v1 objectForKeyedSubscript:?];
                                      if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v13, v13))
                                      {
                                        v12 = [v1 objectForKeyedSubscript:?];
                                        v10 = __MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v12, v12);
                                      }

                                      else
                                      {
                                        v10 = 0;
                                      }
                                    }

                                    else
                                    {
                                      v10 = 0;
                                    }
                                  }

                                  else
                                  {
                                    v10 = 0;
                                  }
                                }

                                else
                                {
                                  v10 = 0;
                                }
                              }

                              else
                              {
                                v10 = 0;
                              }
                            }

                            else
                            {
                              v10 = 0;
                            }
                          }

                          else
                          {
                            v10 = 0;
                          }
                        }

                        else
                        {
                          v10 = 0;
                        }
                      }

                      else
                      {
                        v10 = 0;
                      }
                    }

                    else
                    {
                      v10 = 0;
                    }
                  }

                  else
                  {
                    v10 = 0;
                  }
                }

                else
                {
                  v10 = 0;
                }
              }

              else
              {
                v10 = 0;
              }
            }

            else
            {
              v10 = 0;
            }
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __MTCAColorMatrixIsDictionaryRepresentation_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void MTCAColorMatrixMakeWithDictionaryRepresentation(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = MEMORY[0x1E6979280];
  v5 = *(MEMORY[0x1E6979280] + 48);
  *(a2 + 32) = *(MEMORY[0x1E6979280] + 32);
  *(a2 + 48) = v5;
  *(a2 + 64) = v4[4];
  v6 = v4[1];
  *a2 = *v4;
  *(a2 + 16) = v6;
  if (v3)
  {
    v67 = v3;
    v7 = [v3 objectForKeyedSubscript:?];
    if (v7)
    {
      v8 = [v67 objectForKeyedSubscript:?];
      [v8 floatValue];
      *a2 = v9;
    }

    v10 = [v67 objectForKeyedSubscript:?];
    if (v10)
    {
      v11 = [v67 objectForKeyedSubscript:?];
      [v11 floatValue];
      *(a2 + 4) = v12;
    }

    v13 = [v67 objectForKeyedSubscript:?];
    if (v13)
    {
      v14 = [v67 objectForKeyedSubscript:?];
      [v14 floatValue];
      *(a2 + 8) = v15;
    }

    v16 = [v67 objectForKeyedSubscript:?];
    if (v16)
    {
      v17 = [v67 objectForKeyedSubscript:?];
      [v17 floatValue];
      *(a2 + 12) = v18;
    }

    v19 = [v67 objectForKeyedSubscript:?];
    if (v19)
    {
      v20 = [v67 objectForKeyedSubscript:?];
      [v20 floatValue];
      *(a2 + 16) = v21;
    }

    v22 = [v67 objectForKeyedSubscript:?];
    if (v22)
    {
      v23 = [v67 objectForKeyedSubscript:?];
      [v23 floatValue];
      *(a2 + 20) = v24;
    }

    v25 = [v67 objectForKeyedSubscript:?];
    if (v25)
    {
      v26 = [v67 objectForKeyedSubscript:?];
      [v26 floatValue];
      *(a2 + 24) = v27;
    }

    v28 = [v67 objectForKeyedSubscript:?];
    if (v28)
    {
      v29 = [v67 objectForKeyedSubscript:?];
      [v29 floatValue];
      *(a2 + 28) = v30;
    }

    v31 = [v67 objectForKeyedSubscript:?];
    if (v31)
    {
      v32 = [v67 objectForKeyedSubscript:?];
      [v32 floatValue];
      *(a2 + 32) = v33;
    }

    v34 = [v67 objectForKeyedSubscript:?];
    if (v34)
    {
      v35 = [v67 objectForKeyedSubscript:?];
      [v35 floatValue];
      *(a2 + 36) = v36;
    }

    v37 = [v67 objectForKeyedSubscript:?];
    if (v37)
    {
      v38 = [v67 objectForKeyedSubscript:?];
      [v38 floatValue];
      *(a2 + 40) = v39;
    }

    v40 = [v67 objectForKeyedSubscript:?];
    if (v40)
    {
      v41 = [v67 objectForKeyedSubscript:?];
      [v41 floatValue];
      *(a2 + 44) = v42;
    }

    v43 = [v67 objectForKeyedSubscript:?];
    if (v43)
    {
      v44 = [v67 objectForKeyedSubscript:?];
      [v44 floatValue];
      *(a2 + 48) = v45;
    }

    v46 = [v67 objectForKeyedSubscript:?];
    if (v46)
    {
      v47 = [v67 objectForKeyedSubscript:?];
      [v47 floatValue];
      *(a2 + 52) = v48;
    }

    v49 = [v67 objectForKeyedSubscript:?];
    if (v49)
    {
      v50 = [v67 objectForKeyedSubscript:?];
      [v50 floatValue];
      *(a2 + 56) = v51;
    }

    v52 = [v67 objectForKeyedSubscript:?];
    if (v52)
    {
      v53 = [v67 objectForKeyedSubscript:?];
      [v53 floatValue];
      *(a2 + 60) = v54;
    }

    v55 = [v67 objectForKeyedSubscript:?];
    if (v55)
    {
      v56 = [v67 objectForKeyedSubscript:?];
      [v56 floatValue];
      *(a2 + 64) = v57;
    }

    v58 = [v67 objectForKeyedSubscript:?];
    if (v58)
    {
      v59 = [v67 objectForKeyedSubscript:?];
      [v59 floatValue];
      *(a2 + 68) = v60;
    }

    v61 = [v67 objectForKeyedSubscript:?];
    if (v61)
    {
      v62 = [v67 objectForKeyedSubscript:?];
      [v62 floatValue];
      *(a2 + 72) = v63;
    }

    v64 = [v67 objectForKeyedSubscript:?];
    if (v64)
    {
      v65 = [v67 objectForKeyedSubscript:?];
      [v65 floatValue];
      *(a2 + 76) = v66;
    }

    v3 = v67;
  }
}

void MTRegisterCoreMaterialLogging()
{
  if (MTRegisterCoreMaterialLogging_onceToken != -1)
  {
    MTRegisterCoreMaterialLogging_cold_1();
  }
}

uint64_t __MTRegisterCoreMaterialLogging_block_invoke()
{
  v0 = os_log_create(MTLogSubsystem, "Materials");
  v1 = MTLogMaterials;
  MTLogMaterials = v0;

  v2 = os_log_create(MTLogSubsystem, "Configuration");
  MTLogConfiguration = v2;

  return MEMORY[0x1EEE66BB8](v2);
}

void __MTDynamicBlurRadiusGraphicsQuality_block_invoke()
{
  v0 = _MTLowQualityDevicesForDynamicBlurRadius();
  v1 = _MTCurrentProduct();
  v2 = [v0 containsObject:?];

  if (v2)
  {
    MTDynamicBlurRadiusGraphicsQuality___dynamicBlurRadiusGraphicsQuality = 1;
  }
}

void *_MTLowQualityDevicesForDynamicBlurRadius()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"iPad5, 2", @"iPad5, 3", @"iPad5, 4", @"iPad7, 1", @"iPad7, 2", 0}];

  return v0;
}

id _MTCurrentProduct()
{
  if (_MTCurrentProduct_onceToken != -1)
  {
    _MTCurrentProduct_cold_1();
  }

  v1 = _MTCurrentProduct___currentProduct;

  return v1;
}

CGImageRef MTCGImageCreateWithName(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  if (!v6)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:?];
  }

  v7 = v5;
  if (v7)
  {
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
    if (a3 <= 0.0)
    {
      a3 = MTBuiltInScreenScale();
    }

    if (a3 == 0.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = [v8 mutableCopy];
      v10 = a3;
      if (a3 >= 1)
      {
        v11 = [v7 stringByAppendingFormat:1];
        if (v10 != 1)
        {
          v12 = 2;
          do
          {
            [v9 insertObject:? atIndex:?];

            v11 = [v7 stringByAppendingFormat:v12];
            ++v12;
          }

          while (1 - v10 + v12 != 2);
        }

        if (v11)
        {
          [v9 insertObject:? atIndex:?];
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = MEMORY[0x1E695E0F0];
  if (v9)
  {
    v13 = v9;
  }

  v14 = v13;

  v15 = [v14 countByEnumeratingWithState:? objects:? count:?];
  if (v15)
  {
    v16 = v15;
    v17 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v16; i = (i + 1))
      {
        if (MEMORY[0] != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [v6 URLForResource:? withExtension:?];
        if (v19)
        {
          v20 = v19;
          goto LABEL_28;
        }
      }

      v16 = [v14 countByEnumeratingWithState:? objects:? count:?];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v20 = 0;
LABEL_28:

  v21 = CGDataProviderCreateWithURL(v20);
  v22 = CGImageCreateWithPNGDataProvider(v21, 0, 0, kCGRenderingIntentDefault);
  CGDataProviderRelease(v21);

  return v22;
}

double MTBuiltInScreenScale()
{
  if (MTBuiltInScreenScale_onceToken != -1)
  {
    MTBuiltInScreenScale_cold_1();
  }

  return *&MTBuiltInScreenScale___builtInScreenScale;
}

double __MTBuiltInScreenScale_block_invoke()
{
  MGGetFloat32Answer();
  result = v0;
  MTBuiltInScreenScale___builtInScreenScale = *&result;
  return result;
}

id MTProtocolGetProperties(void *a1, char a2)
{
  v3 = a1;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  outCount = 0;
  if (a2)
  {
    v5 = protocol_copyPropertyList2(v3, &outCount, 1, 1);
  }

  else
  {
    v5 = 0;
  }

  v14 = 0;
  if ((a2 & 2) != 0)
  {
    v7 = protocol_copyPropertyList2(v3, &v14, 0, 1);
    v6 = v14;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = outCount;
  if (v6 + outCount)
  {
    v9 = 0;
    do
    {
      if (v9 >= v8)
      {
        v10 = v7;
      }

      else
      {
        v8 = 0;
        v10 = v5;
      }

      v11 = MEMORY[0x1E696AEC0];
      property_getName(v10[v9 - v8]);
      v12 = [v11 stringWithUTF8String:?];
      [v4 addObject:?];

      ++v9;
      v8 = outCount;
    }

    while (v9 < v14 + outCount);
  }

  if (v5)
  {
    free(v5);
  }

  if (v7)
  {
    free(v7);
  }

  return v4;
}

void __MTCAFilterCurvesInputValuesKeys_block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6979B38];
  v4 = *MEMORY[0x1E6979BB0];
  v5 = v0;
  v1 = *MEMORY[0x1E6979988];
  v6 = *MEMORY[0x1E6979A28];
  v7 = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  v3 = MTCAFilterCurvesInputValuesKeys___curvesFilterInputValuesKeys;
  MTCAFilterCurvesInputValuesKeys___curvesFilterInputValuesKeys = v2;
}

void *MTDimensionsForContinuousCornerRadiusInBounds(void *result)
{
  if (result)
  {
    return [MEMORY[0x1E6979398] cornerCurveExpansionFactor:?];
  }

  return result;
}

double MTResizableAreaForCornerDimensionsInBounds(double a1, double a2, double a3, double a4, double a5)
{
  v7 = 1.0 / a3;
  if (MTFloatEqualToFloat(a1 + a1, a4))
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v7;
  }

  MTFloatEqualToFloat(a2 + a2, a5);
  return v8;
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

float32x4_t MTCAColorMatrixInterpolate@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>, double a4@<D0>)
{
  v4 = fmax(fmin(a4, 1.0), 0.0);
  v5 = a1[1];
  v6 = vsubq_f32(*a2, *a1);
  v7 = vcvtq_f64_f32(*v5.f32);
  v8 = vcvt_hight_f64_f32(v5);
  v9 = vsubq_f32(a2[1], v5);
  *a3 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(*a1->f32), vcvtq_f64_f32(*v6.f32), v4)), vmlaq_n_f64(vcvt_hight_f64_f32(*a1), vcvt_hight_f64_f32(v6), v4));
  a3[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_n_f64(v7, vcvtq_f64_f32(*v9.f32), v4)), vmlaq_n_f64(v8, vcvt_hight_f64_f32(v9), v4));
  v10 = a1[2];
  v11 = a1[3];
  v12 = vsubq_f32(a2[2], v10);
  v13 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(*v10.f32), vcvtq_f64_f32(*v12.f32), v4)), vmlaq_n_f64(vcvt_hight_f64_f32(v10), vcvt_hight_f64_f32(v12), v4));
  v14 = vsubq_f32(a2[3], v11);
  a3[2] = v13;
  a3[3] = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(*v11.f32), vcvtq_f64_f32(*v14.f32), v4)), vmlaq_n_f64(vcvt_hight_f64_f32(v11), vcvt_hight_f64_f32(v14), v4));
  v15 = a1[4];
  v16 = vcvtq_f64_f32(*v15.f32);
  v17 = vcvt_hight_f64_f32(v15);
  v18 = vsubq_f32(a2[4], v15);
  result = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_n_f64(v16, vcvtq_f64_f32(*v18.f32), v4)), vmlaq_n_f64(v17, vcvt_hight_f64_f32(v18), v4));
  a3[4] = result;
  return result;
}

id MTCAColorMatrixCreateDictionaryRepresentation(_DWORD *a1, double a2)
{
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v11 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v12 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v13 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v14 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v15 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v16 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v17 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v18 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v19 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v20 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v21 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v22 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v23 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];

  return v2;
}

CGFloat MTCGColorPerceivedLightness(CGColor *a1)
{
  NumberOfComponents = CGColorGetNumberOfComponents(a1);
  Components = CGColorGetComponents(a1);
  if (NumberOfComponents == 4)
  {
    return sqrt(Components[1] * (Components[1] * 0.587) + *Components * 0.299 * *Components + Components[2] * 0.114 * Components[2]);
  }

  result = 0.0;
  if (NumberOfComponents == 2)
  {
    return *Components;
  }

  return result;
}

BOOL MTCanGenerateVisualStylingDescriptionFromRecipeSettings(void *a1)
{
  v1 = [a1 baseMaterialSettings];
  v2 = v1;
  if (v1)
  {
    VisualStylingDescriptionFromConfigurationSettings = _CanGenerateVisualStylingDescriptionFromConfigurationSettings(v1);
  }

  else
  {
    VisualStylingDescriptionFromConfigurationSettings = 0;
  }

  return VisualStylingDescriptionFromConfigurationSettings;
}

BOOL _CanGenerateVisualStylingDescriptionFromConfigurationSettings(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E696AD98];
  [v1 luminanceAmount];
  v3 = [v2 numberWithDouble:?];
  v4 = [v3 mt_isIdentityValueForMaterialSettingsProperty:?];

  v5 = MEMORY[0x1E696AD98];
  [v1 isAverageColorEnabled];
  v6 = [v5 numberWithBool:?];
  v7 = [v6 mt_isIdentityValueForMaterialSettingsProperty:?];

  v8 = [v1 curvesValues];

  v9 = MEMORY[0x1E696AD98];
  [v1 saturation];
  v10 = [v9 numberWithDouble:?];
  v11 = [v10 mt_isIdentityValueForMaterialSettingsProperty:?];

  v12 = MEMORY[0x1E696AD98];
  [v1 brightness];
  v13 = [v12 numberWithDouble:?];
  v14 = [v13 mt_isIdentityValueForMaterialSettingsProperty:?];

  v15 = [v1 tintColorDescription];

  v16 = MEMORY[0x1E696B098];
  if (v1)
  {
    [&v22 colorMatrix];
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
  }

  v17 = v8 != 0;
  v18 = [v16 valueWithBytes:v22 objCType:{v23, v24, v25, v26}];
  v19 = [v18 mt_isIdentityValueForMaterialSettingsProperty:?];

  if ((v1 == 0) | (v4 ^ 1) & 1 | (v7 ^ 1 | v17) & 1 | (v15 != 0) | ((v19 & 1) == 0))
  {
    v20 = (v1 == 0) | v4 ^ 1 | v7 ^ 1 | v17;
  }

  else
  {
    v20 = v11 & v14;
  }

  return (v20 & 1) == 0;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

float32x4_t _MTCAColorMatrixFloydRound@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X8>)
{
  v2.i64[0] = 0x4300000043000000;
  v2.i64[1] = 0x4300000043000000;
  v3.i64[0] = 0x3C0000003C000000;
  v3.i64[1] = 0x3C0000003C000000;
  v4 = vmulq_f32(vrndaq_f32(vmulq_f32(a1[1], v2)), v3);
  *a2 = vmulq_f32(vrndaq_f32(vmulq_f32(*a1, v2)), v3);
  a2[1] = v4;
  v5 = vmulq_f32(vrndaq_f32(vmulq_f32(a1[3], v2)), v3);
  a2[2] = vmulq_f32(vrndaq_f32(vmulq_f32(a1[2], v2)), v3);
  a2[3] = v5;
  result = vmulq_f32(vrndaq_f32(vmulq_f32(a1[4], v2)), v3);
  a2[4] = result;
  return result;
}

void MTCAColorMatrixMakeWithVibrantShadowAttributes(float32x4_t *a1@<X8>, float a2@<S0>)
{
  MTFloatIsZero(fmaxf(fminf(a2, 0.99902), -0.99902));
  v7 = *(MEMORY[0x1E6979280] + 48);
  v16 = *(MEMORY[0x1E6979280] + 32);
  v17 = v7;
  v18 = *(MEMORY[0x1E6979280] + 64);
  v8 = *(MEMORY[0x1E6979280] + 16);
  v14 = *MEMORY[0x1E6979280];
  v11 = v16;
  v12 = v7;
  v13 = v18;
  v9 = v14;
  v10 = v8;
  CAColorMatrixConcat();
  CAColorMatrixConcat();
  CAColorMatrixConcat();
  CAColorMatrixConcat();
  v17 = v12;
  v15 = v10;
  _MTCAColorMatrixFloydRound(&v9, a1);
}

CGColorSpaceRef __RGBColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
  RGBColorSpace___RGBColorSpace = result;
  return result;
}

void sub_1BF537878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _CanGenerateMaterialDescriptionForFilteringFromVisualStyling(void *a1)
{
  v1 = a1;
  v2 = [v1 filterType];
  if ([v2 isEqualToString:?])
  {
    v3 = [v1 filterProperties];
    v4 = v3 != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t MTSupportsDeepColor(uint64_t a1, uint64_t a2)
{
  if (MTSupportsDeepColor_onceToken != -1)
  {
    MTSupportsDeepColor_cold_1();
  }

  return MTSupportsDeepColor___supportsDeepColor;
}

uint64_t __MTSupportsDeepColor_block_invoke()
{
  result = MGGetBoolAnswer();
  MTSupportsDeepColor___supportsDeepColor = result;
  return result;
}

double MTEdgeOutsetsForCoreMaterialShadowProperties(uint64_t a1, double a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 16) * a2;
  if (-(v3 - v2 * a2) >= 1.0)
  {
    return -(v3 - v2 * a2);
  }

  else
  {
    return 1.0;
  }
}

CGImageRef MTShadowImageCreateWithCoreMaterialShadowProperties(double *a1, int a2, double *a3, CGFloat a4, double a5, double a6, double a7)
{
  if (a1[3] <= 0.0)
  {
    return 0;
  }

  v13 = 1.0;
  if (a2)
  {
    [MEMORY[0x1E6979398] cornerCurveExpansionFactor:?];
  }

  v14 = ceil(v13 * a5 * a4) / a4;
  if (v14 >= a6 * 0.5)
  {
    v15 = a6 * 0.5;
  }

  else
  {
    v15 = v14;
  }

  if (v14 >= a7 * 0.5)
  {
    v16 = a7 * 0.5;
  }

  else
  {
    v16 = v14;
  }

  if (MTFloatEqualToFloat(v15 + v15, a6))
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 1.0 / a4;
  }

  v45 = v17;
  if (MTFloatEqualToFloat(v16 + v16, a7))
  {
    v18 = 0.0;
  }

  else
  {
    v18 = 1.0 / a4;
  }

  v19 = a1[3];
  v20 = a1[2] * a4;
  if (-(v20 - v19 * a4) >= 1.0)
  {
    v21 = -(v20 - v19 * a4);
  }

  else
  {
    v21 = 1.0;
  }

  v22 = a1[1] * a4;
  if (-(v22 - v19 * a4) >= 1.0)
  {
    v23 = -(v22 - v19 * a4);
  }

  else
  {
    v23 = 1.0;
  }

  v24 = v20 + v19 * a4;
  if (v24 >= 1.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 1.0;
  }

  v26 = v22 + v19 * a4;
  if (v26 >= 1.0)
  {
    v27 = v26;
  }

  else
  {
    v27 = 1.0;
  }

  v44 = v15;
  v28 = v45 + v15 * 2.0;
  v29 = v18 + v16 * 2.0;
  v47.origin.x = v23;
  v47.origin.y = v21;
  v47.size.width = v28;
  v47.size.height = v29;
  v43 = v27;
  v30 = v27 + CGRectGetWidth(v47) + v23;
  v48.origin.x = v23;
  v48.origin.y = v21;
  v48.size.width = v28;
  v48.size.height = v29;
  v31 = v25 + CGRectGetHeight(v48) + v21;
  v32 = (v31 * a4);
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v34 = CGBitmapContextCreate(0, (v30 * a4), v32, 8uLL, AlignedBytesPerRow, 0, 7u);
  v35 = v34;
  if (v34)
  {
    v49.size.width = (v30 * a4);
    v49.origin.x = 0.0;
    v49.origin.y = 0.0;
    v49.size.height = v32;
    CGContextClearRect(v34, v49);
    CGContextTranslateCTM(v35, 0.0, v32);
    CGContextScaleCTM(v35, a4, -a4);
    CGContextGetCTM(&v46, v35);
    CGContextSetBaseCTM();
  }

  v36 = objc_alloc_init(MEMORY[0x1E6979398]);
  v50.origin.x = -v23;
  v50.origin.y = -v21;
  v50.size.width = v30;
  v50.size.height = v31;
  CGRectGetWidth(v50);
  v51.origin.x = -v23;
  v51.origin.y = -v21;
  v51.size.width = v30;
  v51.size.height = v31;
  CGRectGetHeight(v51);
  [v36 setFrame:?];
  v37 = objc_alloc_init(MEMORY[0x1E6979398]);
  [v36 addSublayer:?];
  [v37 setFrame:?];
  v38 = +[MTColor blackColor];
  [v38 CGColor];
  [v37 setBackgroundColor:?];

  [v37 setCornerCurve:?];
  [v37 setCornerRadius:?];
  [v37 setShadowOpacity:?];
  [v37 setShadowOffset:?];
  [v37 setShadowRadius:?];
  [v36 renderInContext:?];
  v39 = objc_alloc_init(MEMORY[0x1E6979398]);
  [v39 setFrame:?];
  v40 = +[MTColor blackColor];
  [v40 CGColor];
  [v39 setBackgroundColor:?];

  [v39 setCornerCurve:?];
  [v39 setCornerRadius:?];
  CGContextSetBlendMode(v35, kCGBlendModeClear);
  [v37 removeFromSuperlayer];
  [v36 addSublayer:?];
  [v36 renderInContext:?];
  Image = CGBitmapContextCreateImage(v35);
  CGContextRelease(v35);
  if (a3)
  {
    *a3 = v16 + v21;
    a3[1] = v44 + v23;
    a3[2] = v16 + v25;
    a3[3] = v44 + v43;
  }

  return Image;
}

uint64_t MTDefaultLuminanceColorMap(uint64_t a1, uint64_t a2)
{
  if (MTDefaultLuminanceColorMap_onceToken != -1)
  {
    MTDefaultLuminanceColorMap_cold_1();
  }

  return MTDefaultLuminanceColorMap___defaultLuminanceColorMap;
}

CGImageRef __MTDefaultLuminanceColorMap_block_invoke()
{
  result = MTCGImageCreateWithName(@"luminanceColorMap", 0, 0.0);
  MTDefaultLuminanceColorMap___defaultLuminanceColorMap = result;
  return result;
}

IOSurfaceRef MTIOSurfaceCreate(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v4 = a1;
  if (MTSupportsDeepColor(a1, a2))
  {
    if ((v4 & 1) == 0)
    {
      v7 = a3;
      v11 = llroundf(v7);
      v12 = a4;
      v13 = llroundf(v12);
      v14 = *MEMORY[0x1E696CE58];
      v15 = MEMORY[0x1BFB5A970](*MEMORY[0x1E696CE58], 4 * v11);
      v16 = v15 * v13;
      v8 = _makeIOSurfacePlaneProperties(v11, v13, v15, 0, v15 * v13);
      v17 = MEMORY[0x1BFB5A970](v14, v11);
      v9 = _makeIOSurfacePlaneProperties(v11, v13, v17, v16, v17 * v13);
      v20 = [MEMORY[0x1E696AD98] numberWithLong:?];
      v21 = [MEMORY[0x1E696AD98] numberWithLong:?];
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:?];
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];

      goto LABEL_7;
    }

    CGBitmapGetAlignedBytesPerRow();
    v8 = [MEMORY[0x1E696AD98] numberWithInt:?];
    v9 = [MEMORY[0x1E696AD98] numberWithInt:?];
  }

  else
  {
    CGBitmapGetAlignedBytesPerRow();
    v8 = [MEMORY[0x1E696AD98] numberWithLong:?];
    v9 = [MEMORY[0x1E696AD98] numberWithLong:?];
  }

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:?];
  v25 = [MEMORY[0x1E696AD98] numberWithInt:?];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];

LABEL_7:
  v18 = IOSurfaceCreate(v10);

  return v18;
}

id _makeIOSurfacePlaneProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:?];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:?];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:?];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:?];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:?];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];

  return v5;
}

id MTDiscoveredMaterialRecipes(uint64_t a1)
{
  if (MTDiscoveredMaterialRecipes_onceToken != -1)
  {
    MTDiscoveredMaterialRecipes_cold_1();
  }

  v2 = MTDiscoveredMaterialRecipes___materialRecipes;

  return v2;
}

void __MTDiscoveredMaterialRecipes_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (_DiscoveredMaterialRecipeURLs_onceToken != -1)
  {
    __MTDiscoveredMaterialRecipes_block_invoke_cold_1();
  }

  obj = _DiscoveredMaterialRecipeURLs___discoveredMaterialRecipeURLs;
  v15 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v15)
  {
    v14 = MEMORY[0];
    do
    {
      v1 = 0;
      do
      {
        if (MEMORY[0] != v14)
        {
          objc_enumerationMutation(obj);
        }

        v2 = [*(8 * v1) lastPathComponent];
        v3 = [v2 stringByDeletingPathExtension];

        if (_LoadCoreMaterialRecipeNames_onceToken != -1)
        {
          __MTDiscoveredMaterialRecipes_block_invoke_cold_2();
        }

        v4 = __coreMaterialRecipeNames;
        v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
        if (!v5)
        {

LABEL_22:
          [v0 addObject:?];
          goto LABEL_23;
        }

        v6 = v5;
        v16 = v1;
        v7 = 0;
        v8 = MEMORY[0];
        do
        {
          for (i = 0; i != v6; i = (i + 1))
          {
            if (MEMORY[0] != v8)
            {
              objc_enumerationMutation(v4);
            }

            v10 = _RecipeNameForCoreMaterialRecipe(*(8 * i));
            v11 = [v3 isEqualToString:?];

            if (v11)
            {
              [v0 addObject:?];
              v7 = 1;
            }
          }

          v6 = [v4 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v6);

        v1 = v16;
        if ((v7 & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_23:

        v1 = (v1 + 1);
      }

      while (v1 != v15);
      v15 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v15);
  }

  v12 = MTDiscoveredMaterialRecipes___materialRecipes;
  MTDiscoveredMaterialRecipes___materialRecipes = v0;
}

id _MTCoreMaterialRecipeForVisualStyleFromStyleWithNameFromBundleWithProvidedStyles(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = 0;
  if (v7 && v8)
  {
    v12 = MTSharedVisualStyleSetForStyleNameFromBundle(v8, v9);
    v13 = v7;
    v14 = v12;
    v15 = v10;
    if (v14)
    {
      v16 = [v14 visualStyleSetName];
      v17 = [MTVisualStyleSet recipeNameForRecipeFromStyle:"recipeNameForRecipeFromStyle:fromStyleSetWithName:" fromStyleSetWithName:?];

      v18 = _RecipeNamesToSharedInstances();
      v19 = [v18 objectForKey:?];
      if (!v19)
      {
        if (objc_opt_respondsToSelector())
        {
          v19 = [v14 _newMaterialSettingsForStyle:? withProvidedStyles:?];
          if (v19)
          {
            obj = v18;
            objc_sync_enter(obj);
            [obj setObject:? forKey:?];
            objc_sync_exit(obj);
          }
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      v11 = [v19 recipeName];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

id MTCoreMaterialRecipeForVisualStyleFromRecipeFromBundle(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = _SharedMaterialSettingsForRecipeWithNameFromBundle(a1, v7);
  v11 = [v10 styleNameForCategory:?];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __MTCoreMaterialRecipeForVisualStyleFromRecipeFromBundle_block_invoke;
  v17[3] = &unk_1E80BDFA8;
  v18 = v10;
  v12 = v10;
  v13 = MEMORY[0x1BFB5AC50](v17);
  v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:?];
  (v13)[2](v13, @"stroke", v14);
  (v13)[2](v13, @"fill", v14);
  (v13)[2](v13, @"overlay", v14);
  v15 = _MTCoreMaterialRecipeForVisualStyleFromStyleWithNameFromBundleWithProvidedStyles(v8, v11, v7, v14);

  return v15;
}

void __MTCoreMaterialRecipeForVisualStyleFromRecipeFromBundle_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) styleNameForCategory:?];
  if (v6)
  {
    [v5 setObject:? forKey:?];
  }
}

void *MTSharedVisualStyleSetGeneratedFromRecipe(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v3 = _RecipeNameForCoreMaterialRecipe(v1);
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = v2;
    }

    v6 = v5;

    v7 = [MTRecipeMaterialSettings styleSetNameForStyleSetFromRecipeWithName:?];
    v8 = _StylesToSharedInstances(v7);
    v9 = [v8 objectForKey:?];
    if (!v9)
    {
      v10 = MTMaterialSettingsForRecipeFromBundle(v6, 0);
      if (objc_opt_respondsToSelector())
      {
        v9 = [v10 _newVisualStyleSet];
        if (v9)
        {
          v11 = v8;
          objc_sync_enter(v11);
          [v11 setObject:? forKey:?];
          objc_sync_exit(v11);
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
    v6 = 0;
  }

  return v9;
}

id MTAllVisualStyleCategories(uint64_t a1)
{
  if (MTAllVisualStyleCategories_onceToken != -1)
  {
    MTAllVisualStyleCategories_cold_1();
  }

  v2 = MTAllVisualStyleCategories___categories;

  return v2;
}

void __MTAllVisualStyleCategories_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:@"stroke" count:{@"fill", @"overlay", v2}];
  v1 = MTAllVisualStyleCategories___categories;
  MTAllVisualStyleCategories___categories = v0;
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_2_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id __MTTintingFilteringSettingsCreateDictionaryRepresentation_block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = @"inputColorMap";
  v5 = MTDefaultLuminanceColorMap(a1, a2);
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];

  return v2;
}

id MTStylingProvidingSolidColorLayerStyleDictionaryForPlusLAndWhiteTint(CGColor *a1, double a2, double a3)
{
  v12[13] = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12[0] = 0;
  v10 = 0;
  _ColorGetComponents(a1, v12, &v11, &v10);
  v12[11] = @"tinting";
  v12[9] = @"tintColor";
  v12[5] = &unk_1F3E01848;
  v12[1] = @"alpha";
  v12[2] = @"red";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v12[6] = v3;
  v12[3] = @"green";
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v12[7] = v4;
  v12[4] = @"blue";
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v12[8] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
  v12[10] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
  v12[12] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];

  return v8;
}

id MTStylingProvidingSolidColorLayerHighlightStyleDictionary(CGColor *a1)
{
  v7[20] = *MEMORY[0x1E69E9840];
  MTCGColorPerceivedLightness(a1);
  v7[16] = @"tinting";
  v7[17] = @"filtering";
  v7[18] = &unk_1F3E01948;
  v7[14] = *MEMORY[0x1E6979D78];
  v7[12] = @"filterType";
  v7[13] = @"filterProperties";
  v7[10] = @"inputColorMatrix";
  CAColorMatrixMakeBrightness();
  v2 = MTCAColorMatrixCreateDictionaryRepresentation(v7, v1);
  v7[11] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
  v7[15] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
  v7[19] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];

  return v5;
}

id MTStylingProvidingSolidColorLayerStyleDictionaryForPlusDAmount(CGColor *a1, double a2)
{
  v11[13] = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11[0] = 0;
  v9 = 0;
  _ColorGetComponents(a1, v11, &v10, &v9);
  v11[11] = @"tinting";
  v11[9] = @"tintColor";
  v11[5] = &unk_1F3E01848;
  v11[1] = @"alpha";
  v11[2] = @"red";
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v11[6] = v2;
  v11[3] = @"green";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v11[7] = v3;
  v11[4] = @"blue";
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v11[8] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
  v11[10] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
  v11[12] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];

  return v7;
}

CGFloat _ColorGetComponents(CGColor *a1, void *a2, void *a3, void *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    NumberOfComponents = CGColorGetNumberOfComponents(a1);
    Components = CGColorGetComponents(a1);
    if (NumberOfComponents == 4)
    {
      *a2 = *Components;
      *a3 = *(Components + 1);
      Components += 2;
    }

    else
    {
      if (NumberOfComponents != 2)
      {
        return result;
      }

      v11 = *Components;
      *a2 = *Components;
      *a3 = v11;
    }

    result = *Components;
    *a4 = *Components;
  }

  return result;
}

void _MTSetCoreMaterialPlatformConfiguration(void *a1)
{
  v2 = a1;
  if (__platformConfiguration != v2)
  {
    v3 = v2;
    objc_storeStrong(&__platformConfiguration, a1);
    v2 = v3;
  }
}

double MTPreferredDisplayModeScale(uint64_t a1, uint64_t a2)
{
  if (MTPreferredDisplayModeScale___once != -1)
  {
    MTPreferredDisplayModeScale_cold_1();
  }

  return *&MTPreferredDisplayModeScale___cachedScale;
}

void __MTPreferredDisplayModeScale_block_invoke()
{
  v1 = [MEMORY[0x1E6979328] mainDisplay];
  v0 = [v1 preferredMode];
  *&MTPreferredDisplayModeScale___cachedScale = [v0 preferredScale];
}

void MTCompareBlurInputQualities_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [v1 handleFailureInFunction:@"MTIsValidBlurInputQuality(inputQuality1) && MTIsValidBlurInputQuality(inputQuality2)" file:? lineNumber:? description:?];
}