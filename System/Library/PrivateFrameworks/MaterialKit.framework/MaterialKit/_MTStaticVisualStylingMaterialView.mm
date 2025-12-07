@interface _MTStaticVisualStylingMaterialView
- (id)_coreMaterialVisualStylingProviderForCategory:(id)category;
- (id)_initWithCoreMaterialRecipe:(id)recipe fromBundle:(id)bundle options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_invalidateContentVisualStyling;
- (void)_setCoreMaterialVisualStylingProvider:(id)provider ForCategory:(id)category;
- (void)_updateContentVisualStylingIfNecessary;
- (void)_updateContentVisualStylingWithProvider:(id)provider;
- (void)_updateCoreMaterialVisualStylingProviders;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)setBackdropScaleAdjustment:(id)adjustment;
- (void)setBlurEnabled:(BOOL)enabled;
- (void)setCaptureOnly:(BOOL)only;
- (void)setContentReplacedWithSnapshot:(BOOL)snapshot;
- (void)setIgnoresScreenClip:(BOOL)clip;
- (void)setRecipe:(int64_t)recipe;
- (void)setRecipeName:(id)name;
- (void)setShouldCrossfade:(BOOL)crossfade;
- (void)setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:(BOOL)adjustment;
- (void)setUseBuiltInAlphaTransformerAndBackdropScaleAdjustmentIfNecessary:(BOOL)necessary;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
- (void)setZoomEnabled:(BOOL)enabled;
@end

@implementation _MTStaticVisualStylingMaterialView

- (void)setRecipe:(int64_t)recipe
{
  v4.receiver = self;
  v4.super_class = _MTStaticVisualStylingMaterialView;
  [(MTMaterialView *)&v4 setRecipe:recipe];
  [(_MTStaticVisualStylingMaterialView *)self _invalidateContentVisualStyling];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _MTStaticVisualStylingMaterialView;
  [(MTMaterialView *)&v3 layoutSubviews];
  if (!self->_contentVisualStylingProvider)
  {
    [(_MTStaticVisualStylingMaterialView *)self _updateContentVisualStylingIfNecessary];
  }
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = _MTStaticVisualStylingMaterialView;
  [(_MTStaticVisualStylingMaterialView *)&v3 didMoveToSuperview];
  [(_MTStaticVisualStylingMaterialView *)self _updateContentVisualStylingWithProvider:?];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = _MTStaticVisualStylingMaterialView;
  [(_MTStaticVisualStylingMaterialView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(_MTStaticVisualStylingMaterialView *)self _updateContentVisualStylingIfNecessary];
}

- (void)setRecipeName:(id)name
{
  nameCopy = name;
  recipeName = self->_recipeName;
  if (recipeName != nameCopy)
  {
    v7 = nameCopy;
    recipeName = [(NSString *)recipeName isEqualToString:?];
    nameCopy = v7;
    if ((recipeName & 1) == 0)
    {
      objc_storeStrong(&self->_recipeName, name);
      recipeName = [(_MTStaticVisualStylingMaterialView *)self _invalidateContentVisualStyling];
      nameCopy = v7;
    }
  }

  MEMORY[0x2821F96F8](recipeName, nameCopy);
}

- (void)setBlurEnabled:(BOOL)enabled
{
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
  {
    [_MTStaticVisualStylingMaterialView setBlurEnabled:];
  }
}

- (void)setZoomEnabled:(BOOL)enabled
{
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
  {
    [_MTStaticVisualStylingMaterialView setZoomEnabled:];
  }
}

- (void)setCaptureOnly:(BOOL)only
{
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
  {
    [_MTStaticVisualStylingMaterialView setCaptureOnly:];
  }
}

- (void)setBackdropScaleAdjustment:(id)adjustment
{
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
  {
    [_MTStaticVisualStylingMaterialView setBackdropScaleAdjustment:];
  }
}

- (void)setShouldCrossfade:(BOOL)crossfade
{
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
  {
    [_MTStaticVisualStylingMaterialView setShouldCrossfade:];
  }
}

- (void)setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:(BOOL)adjustment
{
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
  {
    [_MTStaticVisualStylingMaterialView setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:];
  }
}

- (void)setUseBuiltInAlphaTransformerAndBackdropScaleAdjustmentIfNecessary:(BOOL)necessary
{
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
  {
    [_MTStaticVisualStylingMaterialView setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:];
  }
}

- (void)setIgnoresScreenClip:(BOOL)clip
{
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
  {
    [_MTStaticVisualStylingMaterialView setIgnoresScreenClip:];
  }
}

- (void)setContentReplacedWithSnapshot:(BOOL)snapshot
{
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
  {
    [_MTStaticVisualStylingMaterialView setContentReplacedWithSnapshot:];
  }
}

- (id)_initWithCoreMaterialRecipe:(id)recipe fromBundle:(id)bundle options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment
{
  recipeCopy = recipe;
  v16.receiver = self;
  v16.super_class = _MTStaticVisualStylingMaterialView;
  v13 = [(MTMaterialView *)&v16 _initWithCoreMaterialRecipe:recipeCopy fromBundle:bundle options:options initialWeighting:adjustment scaleAdjustment:weighting];
  v14 = v13;
  if (v13)
  {
    [v13 setRecipeName:?];
  }

  return v14;
}

- (void)_setCoreMaterialVisualStylingProvider:(id)provider ForCategory:(id)category
{
  providerCopy = provider;
  categoryCopy = category;
  if (providerCopy && categoryCopy && *MEMORY[0x277CFFF88] != categoryCopy)
  {
    visualStyleCategoriesToCoreMaterialProviders = self->_visualStyleCategoriesToCoreMaterialProviders;
    if (!visualStyleCategoriesToCoreMaterialProviders)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v9 = self->_visualStyleCategoriesToCoreMaterialProviders;
      self->_visualStyleCategoriesToCoreMaterialProviders = v8;

      visualStyleCategoriesToCoreMaterialProviders = self->_visualStyleCategoriesToCoreMaterialProviders;
    }

    [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
  }
}

- (id)_coreMaterialVisualStylingProviderForCategory:(id)category
{
  categoryCopy = category;
  v5 = categoryCopy;
  v6 = 0;
  if (categoryCopy)
  {
    if (*MEMORY[0x277CFFF88] != categoryCopy)
    {
      v6 = [(NSMutableDictionary *)self->_visualStyleCategoriesToCoreMaterialProviders objectForKey:?];
      if (!v6)
      {
        v6 = objc_alloc_init(MEMORY[0x277CFFF98]);
        [_MTStaticVisualStylingMaterialView _setCoreMaterialVisualStylingProvider:"_setCoreMaterialVisualStylingProvider:ForCategory:" ForCategory:?];
        [(_MTStaticVisualStylingMaterialView *)self _updateCoreMaterialVisualStylingProviders];
      }
    }
  }

  return v6;
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  _coreMaterialVisualStylingProvider = [provider _coreMaterialVisualStylingProvider];
  v6 = MTCoreMaterialVisualStyleCategoryForVisualStyleCategory(category);
  [_MTStaticVisualStylingMaterialView _setCoreMaterialVisualStylingProvider:"_setCoreMaterialVisualStylingProvider:ForCategory:" ForCategory:?];
}

- (void)_updateCoreMaterialVisualStylingProviders
{
  v3 = 520;
  obj = self->_visualStyleCategoriesToCoreMaterialProviders;
  v4 = [NSMutableDictionary countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0];
    do
    {
      v7 = 0;
      v16 = v5;
      do
      {
        if (MEMORY[0] != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [*(&self->super.super.super.super.isa + v3) objectForKey:v16];
        recipe = [(MTMaterialView *)self recipe];
        recipeName = [(_MTStaticVisualStylingMaterialView *)self recipeName];
        if (recipe)
        {
          if ([(MTMaterialView *)self isRecipeDynamic])
          {
            [(_MTStaticVisualStylingMaterialView *)self traitCollection];
            v11 = v6;
            v13 = v12 = v3;
            userInterfaceStyle = [v13 userInterfaceStyle];

            v3 = v12;
            v6 = v11;
            v5 = v16;
          }

          else
          {
            userInterfaceStyle = 0;
          }

          v15 = MTCoreMaterialRecipeForMaterialRecipeAndUserInterfaceStyle(recipe, userInterfaceStyle);

          recipeName = v15;
        }

        if (recipeName)
        {
          [v8 updateVisualStyleSetFromRecipe:? andCategory:?];
        }

        v7 = (v7 + 1);
      }

      while (v5 != v7);
      v5 = [NSMutableDictionary countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
    }

    while (v5);
  }
}

- (void)_invalidateContentVisualStyling
{
  contentVisualStylingProvider = self->_contentVisualStylingProvider;
  self->_contentVisualStylingProvider = 0;

  [(_MTStaticVisualStylingMaterialView *)self setNeedsLayout];
}

- (void)_updateContentVisualStylingIfNecessary
{
  if (!self->_contentVisualStylingProvider)
  {
    v3 = objc_alloc_init(MEMORY[0x277CFFF98]);
    contentVisualStylingProvider = self->_contentVisualStylingProvider;
    self->_contentVisualStylingProvider = v3;

    [(MTCoreMaterialVisualStylingProvider *)self->_contentVisualStylingProvider addObserver:?];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(_MTStaticVisualStylingMaterialView *)self setBackgroundColor:?];
  }

  recipe = [(MTMaterialView *)self recipe];
  recipeName = [(_MTStaticVisualStylingMaterialView *)self recipeName];
  v8 = recipeName;
  if (recipe)
  {
    v12 = recipeName;
    if ([(MTMaterialView *)self isRecipeDynamic])
    {
      traitCollection = [(_MTStaticVisualStylingMaterialView *)self traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];
    }

    else
    {
      userInterfaceStyle = 0;
    }

    v11 = MTCoreMaterialRecipeForMaterialRecipeAndUserInterfaceStyle(recipe, userInterfaceStyle);

    v8 = v11;
  }

  if (v8)
  {
    v13 = v8;
    recipeName = [(MTCoreMaterialVisualStylingProvider *)self->_contentVisualStylingProvider updateVisualStyleSetGeneratedFromRecipe:?];
    v8 = v13;
    if (recipeName)
    {
      recipeName = [(_MTStaticVisualStylingMaterialView *)self _updateContentVisualStylingWithProvider:?];
      v8 = v13;
    }
  }

  MEMORY[0x2821F96F8](recipeName, v8);
}

- (void)_updateContentVisualStylingWithProvider:(id)provider
{
  v5 = [provider visualStylingForStyle:?];
  [(_MTStaticVisualStylingMaterialView *)self alpha];
  layer = [(_MTStaticVisualStylingMaterialView *)self layer];
  [layer mt_replaceAllVisualStylingWithStyling:?];

  [(_MTStaticVisualStylingMaterialView *)self setAlpha:?];
}

@end