@interface MTCoreMaterialVisualStyling
- (CAFilter)_composedFilter;
- (MTCoreMaterialVisualStyling)initWithVisualStyleSet:(id)set styleName:(id)name description:(id)description andDescendantDescriptions:(id)descriptions;
- (NSString)description;
- (NSString)visualStyleSetName;
- (id)_preProcessFilteringDescription:(id)description;
- (void)_applyToLayer:(id)layer withColorBlock:(id)block;
- (void)_getCompositingFilter:(id *)filter tintColor:(CGColor *)color;
- (void)_getFilterType:(id *)type vibrantColor:(CGColor *)color tintColor:(CGColor *)tintColor inputReversed:(BOOL *)reversed;
- (void)_processBlendingDescription:(id)description;
- (void)_processFilteringDescription:(id)description;
- (void)_processTintingDescription:(id)description;
- (void)_processUserInfoDescription:(id)description;
- (void)dealloc;
@end

@implementation MTCoreMaterialVisualStyling

- (CAFilter)_composedFilter
{
  composedFilter = self->_composedFilter;
  if (!composedFilter)
  {
    if (self->_filterType)
    {
      v4 = [MEMORY[0x1E6979378] filterWithType:?];
      v5 = self->_composedFilter;
      self->_composedFilter = v4;

      compositingFilter = self->_compositingFilter;
      v7 = MTComposedFilterCreateDictionaryRepresentation(self->_filterType, self->_filterProperties, compositingFilter != 0);
      v8 = v7;
      if (compositingFilter)
      {
        lastObject = [v7 objectForKey:?];
      }

      else
      {
        v10 = [v7 valueForKey:?];
        lastObject = [v10 lastObject];
      }

      v11 = lastObject;
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

            if (([*(8 * i) isEqualToString:?] & 1) == 0)
            {
              v16 = [v11 objectForKey:?];
              [CAFilter setValue:"setValue:forKey:" forKey:?];
            }
          }

          v13 = [v11 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v13);
      }

      composedFilter = self->_composedFilter;
    }

    else
    {
      composedFilter = 0;
    }
  }

  return composedFilter;
}

- (MTCoreMaterialVisualStyling)initWithVisualStyleSet:(id)set styleName:(id)name description:(id)description andDescendantDescriptions:(id)descriptions
{
  v56 = *MEMORY[0x1E69E9840];
  setCopy = set;
  nameCopy = name;
  descriptionCopy = description;
  descriptionsCopy = descriptions;
  v55.receiver = self;
  v55.super_class = MTCoreMaterialVisualStyling;
  v14 = [(MTCoreMaterialVisualStyling *)&v55 init];
  v15 = v14;
  if (v14)
  {
    v51 = nameCopy;
    v53 = setCopy;
    objc_storeWeak(&v14->_visualStyleSet, setCopy);
    objc_storeStrong(&v15->_visualStyleName, name);
    v16 = [descriptionCopy objectForKey:?];
    [(MTCoreMaterialVisualStyling *)v15 _processTintingDescription:?];

    v17 = [descriptionsCopy valueForKey:?];
    v18 = [v17 countByEnumeratingWithState:? objects:? count:?];
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
            objc_enumerationMutation(v17);
          }

          v22 = *(8 * i);
          null = [MEMORY[0x1E695DFB0] null];

          if (v22 != null)
          {
            [(MTCoreMaterialVisualStyling *)v15 _processTintingDescription:?];
          }
        }

        v19 = [v17 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v19);
    }

    v24 = [descriptionCopy objectForKey:?];
    [(MTCoreMaterialVisualStyling *)v15 _processBlendingDescription:?];

    v25 = [descriptionsCopy valueForKey:?];
    v26 = [v25 countByEnumeratingWithState:? objects:? count:?];
    if (v26)
    {
      v27 = v26;
      v28 = MEMORY[0];
      do
      {
        for (j = 0; j != v27; j = (j + 1))
        {
          if (MEMORY[0] != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(8 * j);
          null2 = [MEMORY[0x1E695DFB0] null];

          if (v30 != null2)
          {
            [(MTCoreMaterialVisualStyling *)v15 _processBlendingDescription:?];
          }
        }

        v27 = [v25 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v27);
    }

    if (!v15->_compositingFilter)
    {
      v32 = [descriptionCopy objectForKey:?];
      v33 = [(MTCoreMaterialVisualStyling *)v15 _preProcessFilteringDescription:?];
      [(MTCoreMaterialVisualStyling *)v15 _processFilteringDescription:?];

      v34 = [descriptionsCopy valueForKey:?];
      v35 = [v34 countByEnumeratingWithState:? objects:? count:?];
      if (v35)
      {
        v36 = v35;
        v37 = MEMORY[0];
        do
        {
          for (k = 0; k != v36; k = (k + 1))
          {
            if (MEMORY[0] != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = *(8 * k);
            null3 = [MEMORY[0x1E695DFB0] null];

            if (v39 != null3)
            {
              v41 = [(MTCoreMaterialVisualStyling *)v15 _preProcessFilteringDescription:?];
              [(MTCoreMaterialVisualStyling *)v15 _processFilteringDescription:?];
            }
          }

          v36 = [v34 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v36);
      }
    }

    v42 = [descriptionCopy objectForKey:{v51, v53}];
    [(MTCoreMaterialVisualStyling *)v15 _processUserInfoDescription:?];

    v43 = [descriptionsCopy valueForKey:?];
    v44 = [v43 countByEnumeratingWithState:? objects:? count:?];
    if (v44)
    {
      v45 = v44;
      v46 = MEMORY[0];
      do
      {
        for (m = 0; m != v45; m = (m + 1))
        {
          if (MEMORY[0] != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(8 * m);
          null4 = [MEMORY[0x1E695DFB0] null];

          if (v48 != null4)
          {
            [(MTCoreMaterialVisualStyling *)v15 _processUserInfoDescription:?];
          }
        }

        v45 = [v43 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v45);
    }

    nameCopy = v52;
    setCopy = v54;
  }

  return v15;
}

- (void)dealloc
{
  tintColor = self->_tintColor;
  if (tintColor)
  {
    CGColorRelease(tintColor);
  }

  v4.receiver = self;
  v4.super_class = MTCoreMaterialVisualStyling;
  [(MTCoreMaterialVisualStyling *)&v4 dealloc];
}

- (void)_processTintingDescription:(id)description
{
  descriptionCopy = description;
  v4 = [descriptionCopy objectForKey:?];
  tintColorDescription = self->_tintColorDescription;
  self->_tintColorDescription = v4;

  tintColor = self->_tintColor;
  if (tintColor)
  {
    CGColorRelease(tintColor);
  }

  if (self->_tintColorDescription)
  {
    v7 = [MTColor colorWithDescription:?];
    self->_tintColor = CGColorRetain([v7 CGColor]);
  }

  else
  {
    self->_tintColor = 0;
  }

  v8 = [descriptionCopy objectForKey:?];
  if (v8)
  {
    v9 = [descriptionCopy objectForKey:?];
    [v9 floatValue];
    self->_tintAlpha = v10;
  }

  else
  {
    self->_tintAlpha = 1.0;
  }

  v11 = [descriptionCopy objectForKey:?];
  tintColorName = self->_tintColorName;
  self->_tintColorName = v11;

  v13 = [descriptionCopy objectForKey:?];
  if (v13)
  {
    v14 = [descriptionCopy objectForKey:?];
    self->_tintColorUIStyle = [v14 integerValue];
  }

  else
  {
    self->_tintColorUIStyle = 0;
  }
}

- (void)_processBlendingDescription:(id)description
{
  descriptionCopy = description;
  v5 = [descriptionCopy objectForKey:?];
  compositingFilter = self->_compositingFilter;
  self->_compositingFilter = v5;

  objc_storeStrong(&self->_filterType, self->_compositingFilter);
  v7 = [descriptionCopy objectForKey:?];

  filterProperties = self->_filterProperties;
  self->_filterProperties = v7;
}

- (id)_preProcessFilteringDescription:(id)description
{
  v52 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = descriptionCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = descriptionCopy;
  if (!v4)
  {
    v27 = *(MEMORY[0x1E6979280] + 48);
    v28 = *(MEMORY[0x1E6979280] + 32);
    v43 = v28;
    v44 = v27;
    v26 = *(MEMORY[0x1E6979280] + 64);
    v45 = v26;
    v24 = *MEMORY[0x1E6979280];
    v25 = *(MEMORY[0x1E6979280] + 16);
    v41 = *MEMORY[0x1E6979280];
    v42 = v25;
    v29 = descriptionCopy;
    v6 = descriptionCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v9)
    {
      v10 = v9;
      v11 = *v38;
      while (2)
      {
        for (i = 0; i != v10; i = (i + 1))
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v37 + 1) + 8 * i);
          v14 = [v13 objectForKey:{v24, v25, v26, v27, v28}];
          if ([v14 isEqualToString:?])
          {
            v15 = [v13 objectForKey:?];
            v16 = [v15 objectForKey:?];
            [v16 floatValue];

            CAColorMatrixMakeSaturation();
            v31[2] = v43;
            v31[3] = v44;
            v31[4] = v45;
            v31[0] = v41;
            v31[1] = v42;
            CAColorMatrixConcat();
          }

          else if ([v14 isEqualToString:?])
          {
            v17 = [v13 objectForKey:?];
            v18 = [v17 objectForKey:?];
            [v18 floatValue];

            CAColorMatrixMakeBrightness();
            CAColorMatrixConcat();
            v43 = v34;
            v44 = v35;
            v45 = v36;
            v41 = v32;
            v42 = v33;
          }

          else
          {
            if (![v14 isEqualToString:?])
            {
              v43 = v28;
              v44 = v27;
              v45 = v26;
              v41 = v24;
              v42 = v25;

              goto LABEL_25;
            }

            v19 = [v13 objectForKey:?];
            v20 = [v19 objectForKey:?];

            if (MTCAColorMatrixIsDictionaryRepresentation(v20))
            {
              MTCAColorMatrixMakeWithDictionaryRepresentation(v20, v31);
              CAColorMatrixConcat();
              v43 = v34;
              v44 = v35;
              v45 = v36;
              v41 = v32;
              v42 = v33;
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:? objects:? count:?];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_25:

    v34 = v43;
    v35 = v44;
    v36 = v45;
    v32 = v41;
    v33 = v42;
    if (MTCAColorMatrixIsIdentity(&v32))
    {
      v5 = 0;
    }

    else
    {
      v50 = *MEMORY[0x1E6979D78];
      v48 = @"filterType";
      v49 = @"filterProperties";
      v46 = @"inputColorMatrix";
      v34 = v43;
      v35 = v44;
      v36 = v45;
      v32 = v41;
      v33 = v42;
      v21 = MTCAColorMatrixCreateDictionaryRepresentation(&v32, *&v42);
      v47 = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
      v51 = v22;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    }

    descriptionCopy = v29;
  }

  return v5;
}

- (void)_processFilteringDescription:(id)description
{
  descriptionCopy = description;
  v5 = [descriptionCopy objectForKey:?];
  filterType = self->_filterType;
  self->_filterType = v5;

  v7 = [descriptionCopy objectForKey:?];

  filterProperties = self->_filterProperties;
  self->_filterProperties = v7;

  if (self->_filterType && self->_filterProperties)
  {
    compositingFilter = self->_compositingFilter;
    self->_compositingFilter = 0;
  }
}

- (void)_processUserInfoDescription:(id)description
{
  descriptionCopy = description;
  if ([descriptionCopy count])
  {
    userInfo = self->_userInfo;
    if (userInfo)
    {
      v6 = [(NSDictionary *)userInfo mutableCopy];
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v7 = v6;
    v8 = descriptionCopy;
    v9 = [v8 countByEnumeratingWithState:0 objects:? count:?];
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
            objc_enumerationMutation(v8);
          }

          v13 = [v8 objectForKey:?];
          [NSDictionary setObject:v7 forKey:"setObject:forKey:"];
        }

        v10 = [v8 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v10);
    }

    v14 = self->_userInfo;
    self->_userInfo = v7;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
  v6 = MTVisualStylingSettingsCreateDictionaryRepresentation(self, v5);
  v7 = [v3 stringWithFormat:v4, self, v6];

  return v7;
}

- (NSString)visualStyleSetName
{
  WeakRetained = objc_loadWeakRetained(&self->_visualStyleSet);
  visualStyleSetName = [WeakRetained visualStyleSetName];

  return visualStyleSetName;
}

- (void)_applyToLayer:(id)layer withColorBlock:(id)block
{
  layerCopy = layer;
  blockCopy = block;
  v7 = blockCopy;
  if (blockCopy && self->_tintColor)
  {
    (*(blockCopy + 2))(blockCopy);
  }

  [layerCopy setOpacity:?];
  if (self->_compositingFilter || self->_filterType)
  {
    superlayer = [layerCopy superlayer];
    [superlayer setAllowsGroupBlending:?];

    if (self->_compositingFilter)
    {
      _composedFilter = [(MTCoreMaterialVisualStyling *)self _composedFilter];
      [layerCopy setCompositingFilter:?];
    }

    else
    {
      filters = [layerCopy filters];
      v11 = filters;
      v12 = MEMORY[0x1E695E0F0];
      if (filters)
      {
        v12 = filters;
      }

      v13 = v12;

      _composedFilter = [(MTCoreMaterialVisualStyling *)self _composedFilter];
      v14 = [v13 arrayByAddingObject:?];

      [layerCopy setFilters:?];
    }
  }
}

- (void)_getCompositingFilter:(id *)filter tintColor:(CGColor *)color
{
  compositingFilter = self->_compositingFilter;
  if (compositingFilter)
  {
    if (filter)
    {
      *filter = compositingFilter;
    }

    if (color)
    {
      *color = self->_tintColor;
    }
  }
}

- (void)_getFilterType:(id *)type vibrantColor:(CGColor *)color tintColor:(CGColor *)tintColor inputReversed:(BOOL *)reversed
{
  filterType = self->_filterType;
  if (filterType)
  {
    if (type)
    {
      *type = filterType;
    }

    if (color)
    {
      _composedFilter = [(MTCoreMaterialVisualStyling *)self _composedFilter];
      *color = [_composedFilter valueForKey:?];
    }

    if (tintColor)
    {
      _composedFilter2 = [(MTCoreMaterialVisualStyling *)self _composedFilter];
      *tintColor = [_composedFilter2 valueForKey:?];
    }

    if (reversed)
    {
      _composedFilter3 = [(MTCoreMaterialVisualStyling *)self _composedFilter];
      v13 = [_composedFilter3 valueForKey:?];
      *reversed = [v13 BOOLValue];
    }
  }
}

@end