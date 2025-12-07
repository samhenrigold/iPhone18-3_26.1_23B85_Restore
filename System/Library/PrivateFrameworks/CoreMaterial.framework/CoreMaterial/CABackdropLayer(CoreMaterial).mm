@interface CABackdropLayer(CoreMaterial)
+ (id)mt_orderedFilterTypes;
+ (id)mt_orderedFilterTypesBlurAtEnd;
- (double)mt_colorMatrixDrivenInoperativeOpacity;
- (double)mt_colorMatrixDrivenOpacity;
- (void)_mt_applyFilterDescription:()CoreMaterial remainingExistingFilters:filterOrder:removingIfIdentity:;
- (void)_mt_configureFilterOfType:()CoreMaterial ifNecessaryWithFilterOrder:;
- (void)_mt_configureFilterOfType:()CoreMaterial ifNecessaryWithName:andFilterOrder:;
- (void)_mt_removeFilterOfType:()CoreMaterial ifNecessaryWithName:;
- (void)_mt_setColorMatrix:()CoreMaterial withName:filterOrder:removingIfIdentity:;
- (void)_mt_setValue:()CoreMaterial forFilterOfType:valueKey:filterOrder:removingIfIdentity:;
- (void)mt_applyMaterialDescription:()CoreMaterial removingIfIdentity:;
- (void)mt_setColorMatrixDrivenInoperativeOpacity:()CoreMaterial removingIfIdentity:;
- (void)mt_setColorMatrixDrivenOpacity:()CoreMaterial removingIfIdentity:;
@end

@implementation CABackdropLayer(CoreMaterial)

+ (id)mt_orderedFilterTypes
{
  if (mt_orderedFilterTypes_onceToken != -1)
  {
    +[CABackdropLayer(CoreMaterial) mt_orderedFilterTypes];
  }

  v2 = mt_orderedFilterTypes___sortedFilterTypes;

  return v2;
}

+ (id)mt_orderedFilterTypesBlurAtEnd
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__CABackdropLayer_CoreMaterial__mt_orderedFilterTypesBlurAtEnd__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (mt_orderedFilterTypesBlurAtEnd_onceToken != -1)
  {
    dispatch_once(&mt_orderedFilterTypesBlurAtEnd_onceToken, block);
  }

  v1 = mt_orderedFilterTypesBlurAtEnd___sortedFilterTypesBlurAtEnd;

  return v1;
}

- (void)mt_applyMaterialDescription:()CoreMaterial removingIfIdentity:
{
  v4 = a4;
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MTLogMaterials;
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
  {
    v33 = @"not ";
    *buf = 138543874;
    selfCopy = self;
    if (v4)
    {
      v33 = &stru_1F3DFC648;
    }

    v43 = 2112;
    v44 = v33;
    v45 = 2114;
    v46 = v6;
    _os_log_debug_impl(&dword_1BF527000, v7, OS_LOG_TYPE_DEBUG, "%{public}@: applying backdrop settings (%@removing if identity): %{public}@", buf, 0x20u);
  }

  filters = [self filters];
  v9 = [filters mutableCopy];

  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:? objects:? count:?];
  if (v11)
  {
    v12 = v11;
    v13 = MEMORY[0];
    v34 = @"type";
    v35 = MEMORY[0];
    v36 = v10;
    v37 = v9;
    do
    {
      v14 = 0;
      v38 = v12;
      do
      {
        if (MEMORY[0] != v13)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(8 * v14) isEqualToString:v34])
        {
          v15 = [v10 objectForKey:?];
          v16 = [v15 valueForKey:?];
          v17 = v15;
          v18 = [v17 countByEnumeratingWithState:? objects:? count:?];
          obj = v17;
          if (v18)
          {
            v19 = v18;
            v20 = MEMORY[0];
            do
            {
              for (i = 0; i != v19; i = (i + 1))
              {
                if (MEMORY[0] != v20)
                {
                  objc_enumerationMutation(obj);
                }

                [self _mt_applyFilterDescription:? remainingExistingFilters:? filterOrder:? removingIfIdentity:?];
              }

              v17 = obj;
              v19 = [obj countByEnumeratingWithState:? objects:? count:?];
            }

            while (v19);
          }

          v39 = v14;

          v22 = v9;
          v23 = [v22 countByEnumeratingWithState:? objects:? count:?];
          if (v23)
          {
            v24 = v23;
            v25 = MEMORY[0];
            do
            {
              for (j = 0; j != v24; j = (j + 1))
              {
                if (MEMORY[0] != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(8 * j);
                name = [v27 name];
                if (([name isEqualToString:?] & 1) == 0)
                {
                  name2 = [v27 name];
                  v30 = [name2 isEqualToString:?];

                  if (v30)
                  {
                    continue;
                  }

                  name = [v27 type];
                  name3 = [v27 name];
                  [self _mt_removeFilterOfType:? ifNecessaryWithName:?];
                }
              }

              v24 = [v22 countByEnumeratingWithState:? objects:? count:?];
            }

            while (v24);
          }

          v10 = v36;
          v9 = v37;
          v13 = v35;
          v12 = v38;
          v14 = v39;
          v32 = obj;
        }

        else
        {
          v32 = [v10 objectForKey:?];
          [self setValue:? forKey:?];
        }

        v14 = (v14 + 1);
      }

      while (v14 != v12);
      v12 = [v10 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v12);
  }
}

- (double)mt_colorMatrixDrivenOpacity
{
  mt_keyPathForColorMatrixDrivenOpacity = [objc_opt_class() mt_keyPathForColorMatrixDrivenOpacity];
  v3 = [self valueForKeyPath:?];

  if (v3)
  {
    [v6 CAColorMatrixValue];
    v4 = v6[18];
  }

  else
  {
    v4 = 1.0;
  }

  return v4;
}

- (void)mt_setColorMatrixDrivenOpacity:()CoreMaterial removingIfIdentity:
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  if (objc_opt_class())
  {
    [&v6 mt_colorMatrixForOpacity:?];
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
  }

  [self _mt_removeFilterOfType:? ifNecessaryWithName:?];
  return [self _mt_setColorMatrix:v6 withName:v7 filterOrder:v8 removingIfIdentity:{v9, v10}];
}

- (double)mt_colorMatrixDrivenInoperativeOpacity
{
  mt_keyPathForColorMatrixDrivenInoperativeOpacity = [objc_opt_class() mt_keyPathForColorMatrixDrivenInoperativeOpacity];
  v3 = [self valueForKeyPath:?];

  if (v3)
  {
    [v6 CAColorMatrixValue];
    v4 = v6[18];
  }

  else
  {
    v4 = 1.0;
  }

  return v4;
}

- (void)mt_setColorMatrixDrivenInoperativeOpacity:()CoreMaterial removingIfIdentity:
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  if (objc_opt_class())
  {
    [&v6 mt_colorMatrixForOpacity:?];
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
  }

  [self _mt_removeFilterOfType:? ifNecessaryWithName:?];
  return [self _mt_setColorMatrix:v6 withName:v7 filterOrder:v8 removingIfIdentity:{v9, v10}];
}

- (void)_mt_configureFilterOfType:()CoreMaterial ifNecessaryWithName:andFilterOrder:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v12 = MTFilterKeyPathForFilter(v11);
  v13 = [self valueForKeyPath:?];
  if (!v13)
  {
    filters = [self filters];
    v15 = [filters mutableCopy];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v18 = v17;

    v19 = [MEMORY[0x1E6979378] filterWithType:?];
    v13 = v19;
    if (v9)
    {
      [v19 setName:?];
    }

    [v18 addObject:?];
    v20 = [v18 count];
    if (v10 && v20 >= 2)
    {
      v21 = v10;
      [v18 sortUsingComparator:?];
    }

    [self setFilters:?];
  }
}

- (void)_mt_configureFilterOfType:()CoreMaterial ifNecessaryWithFilterOrder:
{
  v9 = a3;
  v6 = a4;
  v7 = MTFilterKeyPathForFilter(v9);
  v8 = [self valueForKeyPath:?];

  if (!v8)
  {
    [self _mt_configureFilterOfType:? ifNecessaryWithName:? andFilterOrder:?];
  }
}

- (void)_mt_removeFilterOfType:()CoreMaterial ifNecessaryWithName:
{
  v12 = a3;
  v6 = a4;
  filters = [self filters];
  v8 = [filters mutableCopy];

  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v12;
  }

  v10 = MTFilterKeyPathForFilter(v9);
  v11 = [self valueForKeyPath:?];
  [v8 removeObject:?];

  [self setFilters:?];
}

- (void)_mt_applyFilterDescription:()CoreMaterial remainingExistingFilters:filterOrder:removingIfIdentity:
{
  v9 = a3;
  v10 = a4;
  v32 = a5;
  allKeys = [v9 allKeys];
  v12 = [allKeys mutableCopy];

  v13 = v9;
  v14 = [v9 objectForKey:?];
  v15 = MTFilterKeyPathForFilter(v14);
  v16 = [self valueForKeyPath:?];
  [v10 removeObject:?];

  [v12 removeObject:?];
  v31 = v10;
  if ([v14 isEqualToString:?])
  {
    v17 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:?];
    v18 = objc_alloc(MEMORY[0x1E695DFD8]);
    v19 = MTCAFilterCurvesInputValuesKeys(v18);
    v20 = [v18 initWithArray:?];
    v21 = [v17 intersectsSet:?];

    if (!a6 || v21)
    {
      [self _mt_configureFilterOfType:? ifNecessaryWithFilterOrder:?];
    }

    else
    {
      [self _mt_removeFilterOfTypeIfNecessary:?];
    }
  }

  else
  {
    v22 = _IdentityPropertyForFilterType(v14);
    [v12 removeObject:?];
    if (v22)
    {
      v23 = [v9 objectForKey:?];
      [self _mt_setValue:? forFilterOfType:? valueKey:? filterOrder:? removingIfIdentity:?];
    }

    else
    {
      [self _mt_setValue:? forFilterOfType:? valueKey:? filterOrder:? removingIfIdentity:?];
    }
  }

  v24 = v12;
  v25 = [v24 countByEnumeratingWithState:? objects:? count:?];
  if (v25)
  {
    v26 = v25;
    v27 = MEMORY[0];
    do
    {
      for (i = 0; i != v26; i = (i + 1))
      {
        if (MEMORY[0] != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [v13 objectForKey:?];
        [self _mt_setValue:? forFilterOfType:? valueKey:? filterOrder:? removingIfIdentity:?];
      }

      v26 = [v24 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v26);
  }
}

- (void)_mt_setValue:()CoreMaterial forFilterOfType:valueKey:filterOrder:removingIfIdentity:
{
  v24 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = _IsIdentityProperty(v12, v13);
  if (v24)
  {
    if ((a7 & v15) != 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v16 = [v12 isEqualToString:?];
    if ((v16 & a7 & v15 & 1) == 0)
    {
      if (!v16)
      {
        goto LABEL_6;
      }

      goto LABEL_8;
    }
  }

  if (_IsValueIdentity(v24, v12, v13))
  {
LABEL_6:
    [self _mt_removeFilterOfTypeIfNecessary:?];
    goto LABEL_18;
  }

LABEL_8:
  if (v15)
  {
    [self _mt_configureFilterOfType:? ifNecessaryWithFilterOrder:?];
  }

  v17 = MTFilterKeyPathForFilter(v12);
  v18 = [v17 stringByAppendingFormat:v13];
  v19 = [self valueForKeyPath:?];
  if (v19)
  {
    v20 = v19;
    v21 = [self valueForKeyPath:?];
    v22 = v24;
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v23 = [v21 isEqual:?];
    }

    else
    {
      v23 = v21 == v22;
    }

    if ((v23 & 1) == 0)
    {
      [self setValue:? forKeyPath:?];
    }
  }

LABEL_18:
}

- (void)_mt_setColorMatrix:()CoreMaterial withName:filterOrder:removingIfIdentity:
{
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E696B098] valueWithBytes:? objCType:?];
  v12 = v11;
  if (a6 && _IsValueIdentity(v11, *MEMORY[0x1E6979880], @"inputColorMatrix"))
  {
    [self _mt_removeFilterOfType:? ifNecessaryWithName:?];
  }

  else
  {
    [self _mt_configureFilterOfType:? ifNecessaryWithName:? andFilterOrder:?];
    v13 = MTFilterKeyPathForFilter(v9);
    v14 = [v13 stringByAppendingFormat:@"inputColorMatrix"];
    [self setValue:? forKeyPath:?];
  }
}

@end