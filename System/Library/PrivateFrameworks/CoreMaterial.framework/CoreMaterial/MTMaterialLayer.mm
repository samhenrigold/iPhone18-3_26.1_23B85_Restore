@interface MTMaterialLayer
+ (NSSet)mt_animatableKeys;
+ (NSSet)mt_implicitlyAnimatableKeys;
+ (id)_attributeKeys;
+ (id)_unserializedAttributeKeys;
+ (void)initialize;
- (BOOL)_didValueChangeForKey:(id)key withPendingChange:(id)change;
- (BOOL)_isDelegateManagingInterpolation;
- (BOOL)_isDelegateManagingOpacity;
- (BOOL)_isInPlaceFilteringPossibleWithSettingsInterpolator:(id)interpolator;
- (BOOL)_needsPruning;
- (BOOL)allowsInPlaceFiltering;
- (BOOL)shouldArchiveValueForKey:(id)key;
- (MTMaterialLayer)init;
- (NSString)recipeName;
- (id)_effectiveDebugIdentifier;
- (id)backdropScaleAdjustment;
- (id)description;
- (id)visualStylingProviderForCategory:(id)category;
- (void)_adjustScaleOfBackdropLayer:(id)layer ifNecessaryWithSettingsInterpolator:(id)interpolator;
- (void)_configureBackdropLayer:(id)layer withSettingsInterpolator:(id)interpolator preservingFiltersIfIdentity:(BOOL)identity;
- (void)_configureBackdropLayerIfNecessaryWithSettingsInterpolator:(id)interpolator;
- (void)_configureDelegateFlagsForDelegate:(id)delegate;
- (void)_configureIfNecessaryWithSettingsInterpolator:(id)interpolator;
- (void)_pruneAtCompletionOfCurrentTransaction;
- (void)_updateForChangeInRecipeAndConfiguration;
- (void)_updateForChangeInWeighting;
- (void)_updateVisualStylingProviders;
- (void)addAnimation:(id)animation forKey:(id)key;
- (void)didChangeValueForKey:(id)key;
- (void)layoutSublayers;
- (void)prune;
- (void)setAllowsInPlaceFiltering:(BOOL)filtering;
- (void)setBackdropScaleAdjustment:(id)adjustment;
- (void)setBlurEnabled:(BOOL)enabled;
- (void)setContentReplacedWithSnapshot:(BOOL)snapshot;
- (void)setDelegate:(id)delegate;
- (void)setRecipeName:(id)name fromBundle:(id)bundle;
- (void)setReduceMotionEnabled:(BOOL)enabled;
- (void)setReduceTransparencyEnabled:(BOOL)enabled;
- (void)setUnsafeUnretainedDelegate:(id)delegate;
- (void)setZoomEnabled:(BOOL)enabled;
- (void)willChangeValueForKey:(id)key;
@end

@implementation MTMaterialLayer

+ (NSSet)mt_implicitlyAnimatableKeys
{
  if (mt_implicitlyAnimatableKeys_onceToken != -1)
  {
    +[MTMaterialLayer(Private) mt_implicitlyAnimatableKeys];
  }

  v3 = mt_implicitlyAnimatableKeys___animatableKeyPaths;

  return v3;
}

- (void)_updateForChangeInWeighting
{
  v16 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self->_pendingChange removeAllObjects];
  [(MTMaterialLayer *)self weighting];
  v4 = fmin(v3, 1.0);
  v5 = fmax(v4, 0.0);
  settingsInterpolator = self->_settingsInterpolator;
  if (!settingsInterpolator)
  {
    v7 = [MTMaterialSettingsInterpolator alloc];
    _recipeSettings = [(MTMaterialLayer *)self _recipeSettings];
    v9 = [(MTMaterialSettingsInterpolator *)v7 initWithSettings:?];
    v10 = self->_settingsInterpolator;
    self->_settingsInterpolator = v9;

    settingsInterpolator = self->_settingsInterpolator;
  }

  [(MTMaterialSettingsInterpolator *)settingsInterpolator setWeighting:?];
  [(MTMaterialLayer *)self _configureIfNecessaryWithSettingsInterpolator:?];
  if (!self->_reduceMotionEnabled)
  {
    if (![(MTMaterialLayer *)self _isDelegateManagingOpacity])
    {
      [(MTMaterialLayer *)self setOpacity:?];
    }

    if (self->_shouldCrossfade)
    {
      if ([(MTMaterialLayer *)self _isDelegateManagingInterpolation])
      {
        if (![(MTMaterialLayer *)self _isDelegateManagingOpacity])
        {
          [(MTMaterialLayer *)self setOpacity:?];
          v11 = MTLogMaterials;
          if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
          {
            *v14 = 138543874;
            *&v14[4] = self;
            *&v14[12] = 2050;
            *&v14[14] = v5;
            *&v14[22] = 2050;
            v15 = v5 / 0.05;
            v12 = "%{public}@: Performing crossfade with weighting: %{public}f; alpha: %{public}f";
LABEL_17:
            _os_log_debug_impl(&dword_1BF527000, v11, OS_LOG_TYPE_DEBUG, v12, v14, 0x20u);
          }
        }
      }

      else
      {
        if (v4 <= 0.0)
        {
          v13 = 0.0;
        }

        else
        {
          v13 = 20.0;
        }

        [(MTMaterialLayer *)self setOpacity:?];
        [(MTMaterialLayer *)self setOpacity:?];
        v11 = MTLogMaterials;
        if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
        {
          *v14 = 138543874;
          *&v14[4] = self;
          *&v14[12] = 2050;
          *&v14[14] = v5;
          *&v14[22] = 2050;
          v15 = v13;
          v12 = "%{public}@: Performing necessary crossfade with weighting: %{public}f; alpha: %{public}f";
          goto LABEL_17;
        }
      }
    }
  }

  [(MTMaterialLayer *)self _updateVisualStylingProviders:*v14];
}

- (BOOL)_isDelegateManagingOpacity
{
  if ((*&self->_materialLayerDelegateFlags & 2) == 0)
  {
    return 0;
  }

  delegate = [(MTMaterialLayer *)self delegate];
  v4 = [delegate isManagingOpacityForMaterialLayer:?];

  return v4;
}

- (void)_updateVisualStylingProviders
{
  obj = self->_visualStyleCategoriesToProviders;
  v4 = [NSMutableDictionary countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0];
    do
    {
      for (i = 0; i != v5; i = (i + 1))
      {
        if (MEMORY[0] != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(8 * i);
        v9 = [(NSMutableDictionary *)self->_visualStyleCategoriesToProviders objectForKey:?];
        [(MTMaterialSettingsInterpolator *)self->_settingsInterpolator weighting];
        v11 = v10;
        if (v10 < 0.5 && ([(MTMaterialSettingsInterpolator *)self->_settingsInterpolator initialSettings], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          initialSettings = [(MTMaterialSettingsInterpolator *)self->_settingsInterpolator initialSettings];
          recipeName = [initialSettings recipeName];
        }

        else
        {
          finalSettings = [(MTMaterialSettingsInterpolator *)self->_settingsInterpolator finalSettings];
          recipeName = [finalSettings recipeName];

          if (v11 >= 0.5)
          {
            goto LABEL_11;
          }
        }

LABEL_11:
        v15 = MTSharedVisualStyleSetForRecipeAndCategory(recipeName, v8);
        [v9 _setVisualStyleSet:?];
      }

      v5 = [NSMutableDictionary countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
    }

    while (v5);
  }
}

- (void)layoutSublayers
{
  v18 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = MTMaterialLayer;
  [(MTMaterialLayer *)&v13 layoutSublayers];
  if (self->_needsConfiguring)
  {
    [(MTMaterialLayer *)self _configureIfNecessaryWithSettingsInterpolator:?];
  }

  v3 = [(NSHashTable *)self->_prunePromises copy];
  v4 = [v3 countByEnumeratingWithState:? objects:? count:?];
  if (v4)
  {
    v6 = v4;
    v7 = MEMORY[0];
    *&v5 = 138543618;
    v12 = v5;
    do
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (MEMORY[0] != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(8 * i);
        [v9 timeIntervalSincePromise];
        if (v10 < -5.0)
        {
          v11 = MTLogMaterials;
          if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
          {
            *buf = v12;
            selfCopy = self;
            v16 = 2114;
            v17 = v9;
            _os_log_error_impl(&dword_1BF527000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Found expired prune promise: %{public}@", buf, 0x16u);
          }

          [v9 fulfillPromise];
          [(NSHashTable *)self->_prunePromises removeObject:?];
        }
      }

      v6 = [v3 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v6);
  }
}

- (MTMaterialLayer)init
{
  v6.receiver = self;
  v6.super_class = MTMaterialLayer;
  v2 = [(MTMaterialLayer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingChange = v2->_pendingChange;
    v2->_pendingChange = v3;

    [(MTMaterialLayer *)v2 _reevaluateDefaultShouldCrossfade];
    v2->_blurEnabled = 1;
    v2->_zoomEnabled = 1;
    v2->_allowsInPlaceFiltering = 0x7FFFFFFFFFFFFFFFLL;
    [(MTMaterialLayer *)v2 setAllowsGroupBlending:?];
    [(MTMaterialLayer *)v2 _setNeedsConfiguring];
  }

  return v2;
}

- (void)_updateForChangeInRecipeAndConfiguration
{
  [(NSMutableDictionary *)self->_pendingChange removeAllObjects];
  objc_storeStrong(&self->_previousSettingsInterpolator, self->_settingsInterpolator);
  v3 = [MTMaterialSettingsInterpolator alloc];
  _recipeSettings = [(MTMaterialLayer *)self _recipeSettings];
  v5 = [(MTMaterialSettingsInterpolator *)v3 initWithSettings:?];
  settingsInterpolator = self->_settingsInterpolator;
  self->_settingsInterpolator = v5;

  v7 = self->_settingsInterpolator;
  finalSettings = [(MTMaterialSettingsInterpolator *)self->_previousSettingsInterpolator finalSettings];
  [(MTMaterialSettingsInterpolator *)v7 setInitialSettings:?];

  if (self->_previousSettingsInterpolator)
  {
    [(MTMaterialLayer *)self setWeighting:?];
  }

  else
  {
    [(MTMaterialLayer *)self _configureIfNecessaryWithSettingsInterpolator:?];
  }

  [(MTMaterialLayer *)self _updateVisualStylingProviders];
}

- (BOOL)allowsInPlaceFiltering
{
  v3.receiver = self;
  v3.super_class = MTMaterialLayer;
  return [(MTMaterialLayer *)&v3 allowsInPlaceFiltering];
}

- (NSString)recipeName
{
  _recipeSettings = [(MTMaterialLayer *)self _recipeSettings];
  recipeName = [_recipeSettings recipeName];

  return recipeName;
}

- (BOOL)_isDelegateManagingInterpolation
{
  if ((*&self->_materialLayerDelegateFlags & 4) == 0)
  {
    return 0;
  }

  delegate = [(MTMaterialLayer *)self delegate];
  v4 = [delegate isManagingInterpolationForMaterialLayer:?];

  return v4;
}

- (BOOL)_needsPruning
{
  initialSettings = [(MTMaterialSettingsInterpolator *)self->_settingsInterpolator initialSettings];
  v3 = initialSettings != 0;

  return v3;
}

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {

    MTRegisterCoreMaterialLogging();
  }
}

void __55__MTMaterialLayer_Private__mt_implicitlyAnimatableKeys__block_invoke()
{
  v18 = objc_alloc(MEMORY[0x1E695DFD8]);
  v21 = MTFilterKeyPathForFilter(*MEMORY[0x1E6979880]);
  v16 = [v21 stringByAppendingFormat:@"inputColorMatrix"];
  v20 = MTFilterKeyPathForFilter(@"opacityColorMatrix");
  v14 = [v20 stringByAppendingFormat:@"inputColorMatrix"];
  v19 = MTFilterKeyPathForFilter(@"inoperativeColorMatrix");
  v10 = [v19 stringByAppendingFormat:@"inputColorMatrix"];
  v17 = MTFilterKeyPathForFilter(*MEMORY[0x1E6979C70]);
  v12 = [v17 stringByAppendingFormat:@"inputAmount"];
  v0 = *MEMORY[0x1E6979C68];
  v15 = MTFilterKeyPathForFilter(*MEMORY[0x1E6979C68]);
  v1 = [v15 stringByAppendingFormat:@"inputAmount"];
  v13 = MTFilterKeyPathForFilter(v0);
  v2 = [v13 stringByAppendingFormat:@"inputValues"];
  v11 = MTFilterKeyPathForFilter(*MEMORY[0x1E6979928]);
  v3 = [v11 stringByAppendingFormat:@"inputRadius"];
  v4 = MTFilterKeyPathForFilter(*MEMORY[0x1E6979890]);
  v5 = [v4 stringByAppendingFormat:@"inputAmount"];
  v6 = MTFilterKeyPathForFilter(*MEMORY[0x1E6979848]);
  v7 = [v6 stringByAppendingFormat:@"inputAmount"];
  v8 = [v18 initWithObjects:{v14, v10, v12, v1, v2, v3, v5, v7, @"zoom", 0}];
  v9 = mt_implicitlyAnimatableKeys___animatableKeyPaths;
  mt_implicitlyAnimatableKeys___animatableKeyPaths = v8;
}

- (void)_pruneAtCompletionOfCurrentTransaction
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [[MTPrunePromise alloc] initWithMaterialLayer:?];
  prunePromises = self->_prunePromises;
  if (!prunePromises)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v6 = self->_prunePromises;
    self->_prunePromises = weakObjectsHashTable;

    prunePromises = self->_prunePromises;
  }

  [(NSHashTable *)prunePromises addObject:?];
  delegate = [(MTMaterialLayer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = v3;
    v9 = [delegate addCompletionForCurrentAnimation:? forMaterialLayer:? reason:?];
    v10 = 0;
    v11 = MTLogMaterials;
    v12 = os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v12)
      {
        *buf = 138543362;
        selfCopy3 = self;
        _os_log_impl(&dword_1BF527000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Delegate successfully added completion", buf, 0xCu);
      }
    }

    else
    {
      if (v12)
      {
        *buf = 138543618;
        selfCopy3 = self;
        v18 = 2114;
        v19 = v10;
        _os_log_impl(&dword_1BF527000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Delegate didn't add completion (%{public}@) – pruning immediately", buf, 0x16u);
      }

      [(MTPrunePromise *)v8 fulfillPromise];
    }
  }

  else
  {
    v13 = MTLogMaterials;
    if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_1BF527000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Delegate doesn't handle completions – adding to current transaction", buf, 0xCu);
    }

    v14 = MEMORY[0x1E6979518];
    v15 = v3;
    [v14 mt_addCompletionBlock:?];
    v10 = v15;
  }
}

- (void)setReduceTransparencyEnabled:(BOOL)enabled
{
  if (self->_reduceTransparencyEnabled != enabled)
  {
    self->_reduceTransparencyEnabled = enabled;
    [(MTMaterialLayer *)self _setNeedsConfiguring];
  }
}

- (void)setReduceMotionEnabled:(BOOL)enabled
{
  if (self->_reduceMotionEnabled != enabled)
  {
    self->_reduceMotionEnabled = enabled;
    [(MTMaterialLayer *)self _setNeedsConfiguring];
  }
}

- (id)visualStylingProviderForCategory:(id)category
{
  categoryCopy = category;
  v5 = categoryCopy;
  v6 = 0;
  if (categoryCopy)
  {
    if (@"none" != categoryCopy)
    {
      v6 = [(NSMutableDictionary *)self->_visualStyleCategoriesToProviders objectForKey:?];
      if (!v6)
      {
        if (!self->_visualStyleCategoriesToProviders)
        {
          v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
          visualStyleCategoriesToProviders = self->_visualStyleCategoriesToProviders;
          self->_visualStyleCategoriesToProviders = v7;
        }

        v6 = objc_alloc_init(MTCoreMaterialVisualStylingProvider);
        [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
        [(MTMaterialLayer *)self _updateVisualStylingProviders];
      }
    }
  }

  return v6;
}

- (void)prune
{
  v7 = *MEMORY[0x1E69E9840];
  if ([(MTMaterialLayer *)self _needsPruning])
  {
    v3 = MTLogMaterials;
    if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1BF527000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Pruning", &v5, 0xCu);
    }

    previousSettingsInterpolator = self->_previousSettingsInterpolator;
    self->_previousSettingsInterpolator = 0;

    [(MTMaterialSettingsInterpolator *)self->_settingsInterpolator setInitialSettings:?];
    [(MTMaterialSettingsInterpolator *)self->_settingsInterpolator finalizeWeighting];
    [(MTMaterialLayer *)self _configureIfNecessaryWithSettingsInterpolator:?];
  }
}

- (void)setDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = MTMaterialLayer;
  delegateCopy = delegate;
  [(MTMaterialLayer *)&v5 setDelegate:delegateCopy];
  [(MTMaterialLayer *)self _configureDelegateFlagsForDelegate:v5.receiver, v5.super_class];
}

- (void)setUnsafeUnretainedDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = MTMaterialLayer;
  delegateCopy = delegate;
  [(MTMaterialLayer *)&v5 setUnsafeUnretainedDelegate:delegateCopy];
  [(MTMaterialLayer *)self _configureDelegateFlagsForDelegate:v5.receiver, v5.super_class];
}

- (void)addAnimation:(id)animation forKey:(id)key
{
  v27 = *MEMORY[0x1E69E9840];
  animationCopy = animation;
  keyCopy = key;
  v8 = animationCopy;
  if (!-[MTMaterialLayer _delegateManagesWeighting](self, "_delegateManagesWeighting") && [keyCopy isEqualToString:?])
  {

    goto LABEL_25;
  }

  v9 = v8;
  if ([(MTMaterialLayer *)self _delegateManagesWeighting])
  {
    goto LABEL_23;
  }

  mt_implicitlyAnimatableKeys = [objc_opt_class() mt_implicitlyAnimatableKeys];
  v11 = [mt_implicitlyAnimatableKeys containsObject:?];

  v9 = v8;
  if (!v11)
  {
    goto LABEL_23;
  }

  v25 = 0u;
  v26 = 0u;
  v23[1] = 0u;
  v24 = 0u;
  mt_animatableKeys = [objc_opt_class() mt_animatableKeys];
  v13 = [mt_animatableKeys countByEnumeratingWithState:? objects:? count:?];
  if (!v13)
  {
LABEL_17:
    v18 = mt_animatableKeys;
    goto LABEL_21;
  }

  v14 = v13;
  v15 = *v24;
LABEL_8:
  v16 = 0;
  while (1)
  {
    if (*v24 != v15)
    {
      objc_enumerationMutation(mt_animatableKeys);
    }

    v17 = [(MTMaterialLayer *)self animationForKey:?];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      goto LABEL_15;
    }

    v18 = [(MTMaterialLayer *)self animationForKey:?];

    if (v18)
    {
      break;
    }

LABEL_15:
    if (v14 == ++v16)
    {
      v14 = [mt_animatableKeys countByEnumeratingWithState:? objects:? count:?];
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v8 && (isKindOfClass & 1) != 0)
  {
    v20 = v8;
    v9 = [v18 copy];
    [v9 setToValue:?];
    [v9 setByValue:?];
    keyPath = [v20 keyPath];
    [v9 setKeyPath:?];

    fromValue = [v20 fromValue];
    [v9 setFromValue:?];

    goto LABEL_22;
  }

LABEL_21:
  v9 = v8;
LABEL_22:

LABEL_23:
  if (v9)
  {
    v23[0].receiver = self;
    v23[0].super_class = MTMaterialLayer;
    [(objc_super *)v23 addAnimation:v9 forKey:keyCopy];
  }

LABEL_25:
}

- (BOOL)shouldArchiveValueForKey:(id)key
{
  keyCopy = key;
  _unserializedAttributeKeys = [objc_opt_class() _unserializedAttributeKeys];
  if ([_unserializedAttributeKeys containsObject:?])
  {
    v6 = 0;
  }

  else
  {
    _attributeKeys = [objc_opt_class() _attributeKeys];
    if ([_attributeKeys containsObject:?])
    {
      v6 = 1;
    }

    else
    {
      v9.receiver = self;
      v9.super_class = MTMaterialLayer;
      v6 = [(MTMaterialLayer *)&v9 shouldArchiveValueForKey:keyCopy];
    }
  }

  return v6;
}

- (void)willChangeValueForKey:(id)key
{
  keyCopy = key;
  if (([keyCopy isEqualToString:?] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:") & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:"))
  {
    v5 = [(MTMaterialLayer *)self valueForKey:?];
    v6 = v5;
    if (v5)
    {
      null = v5;
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v8 = null;

    [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
  }

  v9.receiver = self;
  v9.super_class = MTMaterialLayer;
  [(MTMaterialLayer *)&v9 willChangeValueForKey:keyCopy];
}

- (void)didChangeValueForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:?])
  {
    if ([MTMaterialLayer _didValueChangeForKey:"_didValueChangeForKey:withPendingChange:" withPendingChange:?])
    {
      recipe = [(MTMaterialLayer *)self recipe];
      v6 = MTMaterialSettingsForRecipeFromBundle(recipe, 0);
      [(MTMaterialLayer *)self _setRecipeSettings:?];
    }
  }

  else if (([keyCopy isEqualToString:?] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:"))
  {
    if ([MTMaterialLayer _didValueChangeForKey:"_didValueChangeForKey:withPendingChange:" withPendingChange:?])
    {
      if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
      {
        [MTMaterialLayer didChangeValueForKey:];
      }

      [(MTMaterialLayer *)self _updateForChangeInRecipeAndConfiguration];
      if (![(MTMaterialLayer *)self _delegateManagesWeighting])
      {
        _recipeSettings = [(MTMaterialLayer *)self _recipeSettings];

        if (_recipeSettings)
        {
          [(MTMaterialLayer *)self setWeighting:?];
        }
      }

      if ([(MTMaterialLayer *)self _needsPruning])
      {
        [(MTMaterialLayer *)self _pruneAtCompletionOfCurrentTransaction];
      }
    }
  }

  else if ([keyCopy isEqualToString:?] && -[MTMaterialLayer _didValueChangeForKey:withPendingChange:](self, "_didValueChangeForKey:withPendingChange:"))
  {
    [(MTMaterialLayer *)self _updateForChangeInWeighting];
  }

  v8.receiver = self;
  v8.super_class = MTMaterialLayer;
  [(MTMaterialLayer *)&v8 didChangeValueForKey:keyCopy];
}

- (void)setAllowsInPlaceFiltering:(BOOL)filtering
{
  if (self->_allowsInPlaceFiltering != filtering)
  {
    v6 = v3;
    v7 = v4;
    self->_allowsInPlaceFiltering = filtering;
    v5.receiver = self;
    v5.super_class = MTMaterialLayer;
    [(MTMaterialLayer *)&v5 setAllowsInPlaceFiltering:?];
  }
}

- (void)_configureIfNecessaryWithSettingsInterpolator:(id)interpolator
{
  self->_needsConfiguring = 0;
  [(MTMaterialLayer *)self setBackgroundColor:?];
  finalSettings = [(MTMaterialSettingsInterpolator *)self->_settingsInterpolator finalSettings];

  if (finalSettings)
  {
    [(MTMaterialLayer *)self _configureBackdropLayerIfNecessaryWithSettingsInterpolator:?];
  }

  else if (![(MTMaterialLayer *)self _delegateManagesWeighting])
  {
    v5 = +[MTColor pinkColor];
    [v5 CGColor];
    [(MTMaterialLayer *)self setBackgroundColor:?];
  }

  [(MTMaterialLayer *)self setNeedsLayout];
}

- (BOOL)_isInPlaceFilteringPossibleWithSettingsInterpolator:(id)interpolator
{
  interpolatorCopy = interpolator;
  v5 = interpolatorCopy;
  if (self->_blurEnabled && ([interpolatorCopy isBlurEnabled] & 1) != 0)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = [v5 isAverageColorEnabledEver] ^ 1;
  }

  return v6;
}

- (void)_configureBackdropLayerIfNecessaryWithSettingsInterpolator:(id)interpolator
{
  interpolatorCopy = interpolator;
  if ([interpolatorCopy isBackdropRequiredEver])
  {
    [(MTMaterialLayer *)self setEnabled:?];
    if (([interpolatorCopy isWeightingChanging] & 1) == 0)
    {
      [interpolatorCopy weighting];
    }

    [MTMaterialLayer _configureBackdropLayer:"_configureBackdropLayer:withSettingsInterpolator:preservingFiltersIfIdentity:" withSettingsInterpolator:? preservingFiltersIfIdentity:?];
    if (self->_allowsInPlaceFiltering == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6.receiver = self;
      v6.super_class = MTMaterialLayer;
      [(MTMaterialLayer *)&v6 setAllowsInPlaceFiltering:[(MTMaterialLayer *)self _isInPlaceFilteringPossibleWithSettingsInterpolator:?]];
    }
  }

  else if (([(MTMaterialLayer *)self captureOnly]& 1) == 0)
  {
    [(MTMaterialLayer *)self setFilters:?];
    [(MTMaterialLayer *)self setEnabled:?];
    tintColor = [interpolatorCopy tintColor];
    [tintColor CGColor];
    [(MTMaterialLayer *)self setBackgroundColor:?];
  }
}

- (void)_configureBackdropLayer:(id)layer withSettingsInterpolator:(id)interpolator preservingFiltersIfIdentity:(BOOL)identity
{
  v40 = *MEMORY[0x1E69E9840];
  layerCopy = layer;
  interpolatorCopy = interpolator;
  v9 = interpolatorCopy;
  if (layerCopy)
  {
    [(MTMaterialSettingsInterpolator *)interpolatorCopy weighting];
    if (self->_reduceMotionEnabled && ([(MTMaterialSettingsInterpolator *)v9 initialSettings], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
    {
      v19 = [MTMaterialSettingsInterpolator alloc];
      finalSettings = [(MTMaterialSettingsInterpolator *)v9 finalSettings];
      v21 = [(MTMaterialSettingsInterpolator *)v19 initWithSettings:?];

      [(MTMaterialSettingsInterpolator *)v21 setWeighting:?];
      v25 = 1;
      v9 = v21;
    }

    else
    {
      v25 = 0;
    }

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
    {
      [MTMaterialLayer _configureBackdropLayer:withSettingsInterpolator:preservingFiltersIfIdentity:];
    }

    if (self->_blurEnabled && [(MTMaterialSettingsInterpolator *)v9 isBlurEnabled])
    {
      [MTMaterialLayer _adjustScaleOfBackdropLayer:"_adjustScaleOfBackdropLayer:ifNecessaryWithSettingsInterpolator:" ifNecessaryWithSettingsInterpolator:?];
      if (self->_reduceTransparencyEnabled)
      {
        [v11 setAverageColorEnabled:? includingOptimizations:? withAdditionalInfoPromise:?];
        v12 = MTLogMaterials;
        if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
        {
          [MTMaterialLayer _configureBackdropLayer:v12 withSettingsInterpolator:? preservingFiltersIfIdentity:?];
        }
      }

      else
      {
        [(MTMaterialSettingsInterpolator *)v9 blurRadius];
        [(MTMaterialSettingsInterpolator *)v9 variableBlurInputMask];
        v31 = MEMORY[0x1E69E9820];
        v32 = 3221225472;
        v33 = __96__MTMaterialLayer__configureBackdropLayer_withSettingsInterpolator_preservingFiltersIfIdentity___block_invoke;
        v34 = &unk_1E80BDB30;
        v35 = v9;
        [v11 setBlurRadius:? inputMaskImage:? ignoringIdentity:? includingOptimizations:? withAdditionalInfoPromise:?];
        if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
        {
          [MTMaterialLayer _configureBackdropLayer:withSettingsInterpolator:preservingFiltersIfIdentity:];
        }
      }
    }

    else
    {
      [layerCopy setScale:?];
    }

    if ([(MTMaterialSettingsInterpolator *)v9 isAverageColorEnabledEver])
    {
      [(MTMaterialSettingsInterpolator *)v9 isAverageColorEnabled];
      [v11 setAverageColorEnabled:? includingOptimizations:? withAdditionalInfoPromise:?];
    }

    if ([(MTMaterialSettingsInterpolator *)v9 isLuminanceEnabled])
    {
      [(MTMaterialSettingsInterpolator *)v9 luminanceAmount];
      luminanceValues = [(MTMaterialSettingsInterpolator *)v9 luminanceValues];
      [v11 setLuminanceAmount:? values:? ignoringIdentity:? includingOptimizations:? withAdditionalInfoPromise:?];
      if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
      {
        [MTMaterialLayer _configureBackdropLayer:withSettingsInterpolator:preservingFiltersIfIdentity:];
      }
    }

    if ([(MTMaterialSettingsInterpolator *)v9 isCurvesEnabled])
    {
      curvesValues = [(MTMaterialSettingsInterpolator *)v9 curvesValues];
      [v11 setCurvesInputValues:? ignoringIdentity:? includingOptimizations:? withAdditionalInfoPromise:?];
      if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
      {
        [MTMaterialLayer _configureBackdropLayer:withSettingsInterpolator:preservingFiltersIfIdentity:];
      }
    }

    if ([(MTMaterialSettingsInterpolator *)v9 isSaturationEnabled])
    {
      [(MTMaterialSettingsInterpolator *)v9 saturation];
      [v11 setSaturation:? ignoringIdentity:? includingOptimizations:? withAdditionalInfoPromise:?];
      if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
      {
        [MTMaterialLayer _configureBackdropLayer:withSettingsInterpolator:preservingFiltersIfIdentity:];
      }
    }

    if ([(MTMaterialSettingsInterpolator *)v9 isBrightnessEnabled])
    {
      [(MTMaterialSettingsInterpolator *)v9 brightness];
      [v11 setBrightness:? ignoringIdentity:? includingOptimizations:? withAdditionalInfoPromise:?];
      if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
      {
        [MTMaterialLayer _configureBackdropLayer:withSettingsInterpolator:preservingFiltersIfIdentity:];
      }
    }

    if ([(MTMaterialSettingsInterpolator *)v9 isColorMatrixEnabled])
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      if (v9)
      {
        [&v26 colorMatrix];
      }

      v37 = v28;
      v38 = v29;
      v39 = v30;
      *buf = v26;
      *&buf[16] = v27;
      [v11 setColorMatrix:? ignoringIdentity:? includingOptimizations:? withAdditionalInfoPromise:?];
      v15 = MTLogMaterials;
      if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
      {
        v37 = v28;
        v38 = v29;
        v39 = v30;
        *buf = v26;
        *&buf[16] = v27;
        v22 = v15;
        v24 = MTCAColorMatrixCreateDictionaryRepresentation(buf, v23);
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v24;
        _os_log_debug_impl(&dword_1BF527000, v22, OS_LOG_TYPE_DEBUG, "%{public}@: Updated brightness: %{public}@", buf, 0x16u);
      }
    }

    if ([(MTMaterialSettingsInterpolator *)v9 isTintEnabled])
    {
      tintColor = [(MTMaterialSettingsInterpolator *)v9 tintColor];
      [v11 setTintColor:? includingOptimizations:? withAdditionalInfoPromise:?];
      if (tintColor && os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
      {
        [MTMaterialLayer _configureBackdropLayer:withSettingsInterpolator:preservingFiltersIfIdentity:];
      }
    }

    v17 = self->_reduceTransparencyEnabled || self->_reduceMotionEnabled;
    if (self->_zoomEnabled && [(MTMaterialSettingsInterpolator *)v9 isZoomEnabled])
    {
      if (!v17)
      {
        [(MTMaterialSettingsInterpolator *)v9 zoom];
      }

      [v11 setZoom:? ignoringIdentity:? includingOptimizations:? withAdditionalInfoPromise:?];
      if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
      {
        [MTMaterialLayer _configureBackdropLayer:withSettingsInterpolator:preservingFiltersIfIdentity:];
      }
    }

    if ([(MTMaterialSettingsInterpolator *)v9 isBlurAtEnd])
    {
      [MEMORY[0x1E6979310] mt_orderedFilterTypesBlurAtEnd];
    }

    else
    {
      [MEMORY[0x1E6979310] mt_orderedFilterTypes];
    }
    v18 = ;
    [v11 sortFiltersWithOrder:?];
    [layerCopy mt_applyMaterialDescription:? removingIfIdentity:?];
    if ((v25 & 1) == 0 && self->_blurEnabled)
    {
      [(MTMaterialSettingsInterpolator *)v9 isBlurEnabled];
    }

    [MTMaterialLayer _setPrivateOpacity:"_setPrivateOpacity:removingIfIdentity:" removingIfIdentity:?];
  }
}

id __96__MTMaterialLayer__configureBackdropLayer_withSettingsInterpolator_preservingFiltersIfIdentity___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) blurInputQuality];
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];

  return v1;
}

id __96__MTMaterialLayer__configureBackdropLayer_withSettingsInterpolator_preservingFiltersIfIdentity___block_invoke_46(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = MTDefaultLuminanceColorMap(a1, a2);
  if (v2)
  {
    v4 = @"inputColorMap";
    v5 = v2;
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
  }

  return v2;
}

- (void)_adjustScaleOfBackdropLayer:(id)layer ifNecessaryWithSettingsInterpolator:(id)interpolator
{
  v37 = *MEMORY[0x1E69E9840];
  layerCopy = layer;
  interpolatorCopy = interpolator;
  v9 = MTDynamicBlurRadiusGraphicsQuality(interpolatorCopy, v8);
  if (!self->_blurEnabled)
  {
    goto LABEL_21;
  }

  v10 = v9;
  if (![interpolatorCopy isBlurEnabled] || self->_reduceTransparencyEnabled)
  {
    goto LABEL_21;
  }

  [interpolatorCopy backdropScale];
  backdropScaleAdjustment = self->_backdropScaleAdjustment;
  if (backdropScaleAdjustment || v10 != 100)
  {
    if (backdropScaleAdjustment)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v11 > 0.0 && v11 < 1.0)
  {
LABEL_10:
    if (v11 > 0.0 && v11 < 1.0)
    {
      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __83__MTMaterialLayer__adjustScaleOfBackdropLayer_ifNecessaryWithSettingsInterpolator___block_invoke;
      v29 = &__block_descriptor_40_e8_d16__0d8l;
      v30 = v11;
LABEL_15:
      [(MTMaterialLayer *)self setDefaultBackdropScaleAdjustment:v21, v22, v23, v24, v25, v26, v27, v28, v29, *&v30];
      goto LABEL_16;
    }

    if (v10 != 100)
    {
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __83__MTMaterialLayer__adjustScaleOfBackdropLayer_ifNecessaryWithSettingsInterpolator___block_invoke_2;
      v24 = &__block_descriptor_40_e8_d16__0d8l;
      v25 = v10;
      goto LABEL_15;
    }

LABEL_16:
    v14 = [MEMORY[0x1E696AD98] mt_identityValueForMaterialSettingsProperty:?];
    [v14 floatValue];

    defaultBackdropScaleAdjustment = self->_backdropScaleAdjustment;
    if (defaultBackdropScaleAdjustment || (defaultBackdropScaleAdjustment = self->_defaultBackdropScaleAdjustment) != 0)
    {
      [interpolatorCopy weighting];
      defaultBackdropScaleAdjustment[2](defaultBackdropScaleAdjustment);
    }

    goto LABEL_19;
  }

  v13 = self->_defaultBackdropScaleAdjustment;
  self->_defaultBackdropScaleAdjustment = 0;

LABEL_19:
  [(MTMaterialLayer *)self setScale:?];
  v16 = MTLogMaterials;
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
  {
    v17 = v16;
    [interpolatorCopy weighting];
    v19 = v18;
    [layerCopy scale];
    *buf = 138543874;
    selfCopy = self;
    v33 = 2050;
    v34 = v19;
    v35 = 2050;
    v36 = v20;
    _os_log_debug_impl(&dword_1BF527000, v17, OS_LOG_TYPE_DEBUG, "%{public}@: weighting: %{public}f; backdrop scale: %{public}f", buf, 0x20u);
  }

LABEL_21:
}

+ (id)_attributeKeys
{
  if (_attributeKeys_onceToken != -1)
  {
    +[MTMaterialLayer _attributeKeys];
  }

  v3 = _attributeKeys___attributeKeys;

  return v3;
}

uint64_t __33__MTMaterialLayer__attributeKeys__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"configuration", 0}];
  _attributeKeys___attributeKeys = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

+ (id)_unserializedAttributeKeys
{
  if (_unserializedAttributeKeys_onceToken != -1)
  {
    +[MTMaterialLayer _unserializedAttributeKeys];
  }

  v3 = _unserializedAttributeKeys___attributeKeys;

  return v3;
}

uint64_t __45__MTMaterialLayer__unserializedAttributeKeys__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:0];
  _unserializedAttributeKeys___attributeKeys = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

- (void)_configureDelegateFlagsForDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegateCopy managesWeightingForMaterialLayer:?];
  }

  else
  {
    v4 = 0;
  }

  *&self->_materialLayerDelegateFlags = *&self->_materialLayerDelegateFlags & 0xFE | v4;
  if (objc_opt_respondsToSelector())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *&self->_materialLayerDelegateFlags = *&self->_materialLayerDelegateFlags & 0xFD | v5;
  if (objc_opt_respondsToSelector())
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  *&self->_materialLayerDelegateFlags = *&self->_materialLayerDelegateFlags & 0xFB | v6;
}

- (BOOL)_didValueChangeForKey:(id)key withPendingChange:(id)change
{
  keyCopy = key;
  LOBYTE(v7) = 0;
  if (keyCopy && change)
  {
    v8 = [change objectForKey:?];
    null = [MEMORY[0x1E695DFB0] null];

    if (v8 == null)
    {

      v8 = 0;
    }

    v10 = [(MTMaterialLayer *)self valueForKey:?];
    if ((v8 == 0) == (v10 != 0))
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      v7 = [v8 isEqual:?] ^ 1;
    }
  }

  return v7;
}

- (id)_effectiveDebugIdentifier
{
  debugIdentifier = self->_debugIdentifier;
  if (debugIdentifier)
  {
    groupName = debugIdentifier;
  }

  else
  {
    groupName = [(MTMaterialLayer *)self groupName];
  }

  return groupName;
}

- (id)description
{
  _effectiveDebugIdentifier = [(MTMaterialLayer *)self _effectiveDebugIdentifier];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = v5;
  if (_effectiveDebugIdentifier)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:_effectiveDebugIdentifier];
    v8 = [v4 stringWithFormat:v6, v7, self];
  }

  else
  {
    v8 = [v4 stringWithFormat:v5, &stru_1F3DFC648, self];
  }

  return v8;
}

+ (NSSet)mt_animatableKeys
{
  if (mt_animatableKeys_onceToken != -1)
  {
    +[MTMaterialLayer(Private) mt_animatableKeys];
  }

  v3 = mt_animatableKeys___animatableKeyPaths;

  return v3;
}

uint64_t __45__MTMaterialLayer_Private__mt_animatableKeys__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"recipeName", @"configuration", @"weighting", 0}];
  mt_animatableKeys___animatableKeyPaths = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

- (void)setBlurEnabled:(BOOL)enabled
{
  if (self->_blurEnabled != enabled)
  {
    self->_blurEnabled = enabled;
    [(MTMaterialLayer *)self _setNeedsConfiguring];
  }
}

- (void)setZoomEnabled:(BOOL)enabled
{
  self->_zoomEnabled = enabled;
  if (enabled)
  {
    [(MTMaterialLayer *)self _setNeedsConfiguring];
  }

  else
  {
    [(MTMaterialLayer *)self setZoom:?];
  }
}

- (id)backdropScaleAdjustment
{
  v2 = MEMORY[0x1BFB5AC50](self->_backdropScaleAdjustment, a2);

  return v2;
}

- (void)setBackdropScaleAdjustment:(id)adjustment
{
  if (self->_backdropScaleAdjustment != adjustment)
  {
    v4 = [adjustment copy];
    backdropScaleAdjustment = self->_backdropScaleAdjustment;
    self->_backdropScaleAdjustment = v4;

    [(MTMaterialLayer *)self _setNeedsConfiguring];
  }
}

- (void)setContentReplacedWithSnapshot:(BOOL)snapshot
{
  v58 = *MEMORY[0x1E69E9840];
  if (self->_contentReplacedWithSnapshot != snapshot)
  {
    if (snapshot)
    {
      [(MTMaterialLayer *)self bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v12 = MTBuiltInScreenScale();
      v60.origin.x = v5;
      v60.origin.y = v7;
      v60.size.width = v9;
      v60.size.height = v11;
      v13 = v12 * CGRectGetWidth(v60);
      v61.origin.x = v5;
      v61.origin.y = v7;
      v61.size.width = v9;
      v61.size.height = v11;
      Height = CGRectGetHeight(v61);
      v16 = MTIOSurfaceCreate(0, v15, v13, v12 * Height);
      if (v16)
      {
        v17 = v16;
        memset(&v39, 0, sizeof(v39));
        v62.origin.x = v5;
        v62.origin.y = v7;
        v62.size.width = v9;
        v62.size.height = v11;
        v18 = -CGRectGetMinX(v62);
        v63.origin.x = v5;
        v63.origin.y = v7;
        v63.size.width = v9;
        v63.size.height = v11;
        MinY = CGRectGetMinY(v63);
        CATransform3DMakeTranslation(&a, v18, -MinY, 0.0);
        CATransform3DMakeScale(&v37, v12, v12, 1.0);
        CATransform3DConcat(&v39, &a, &v37);
        v20 = *MEMORY[0x1E6979FB0];
        v49 = *MEMORY[0x1E6979FD0];
        v21 = *MEMORY[0x1E6979F68];
        v40 = v20;
        v41 = v21;
        mainDisplay = [MEMORY[0x1E6979328] mainDisplay];
        name = [mainDisplay name];
        v24 = *MEMORY[0x1E6979F50];
        v50 = name;
        v51 = v17;
        v25 = *MEMORY[0x1E697A000];
        v42 = v24;
        v43 = v25;
        a = v39;
        v26 = [MEMORY[0x1E696B098] valueWithCATransform3D:?];
        v27 = *MEMORY[0x1E6979FF0];
        v52 = v26;
        v53 = MEMORY[0x1E695E118];
        v28 = *MEMORY[0x1E6979FF8];
        v44 = v27;
        v45 = v28;
        v54 = MEMORY[0x1E695E118];
        v55 = MEMORY[0x1E695E118];
        v29 = *MEMORY[0x1E6979F40];
        v46 = *MEMORY[0x1E6979FA0];
        v47 = v29;
        v30 = MEMORY[0x1E696AD98];
        context = [(MTMaterialLayer *)self context];
        [context contextId];
        v32 = [v30 numberWithUnsignedInt:?];
        v56 = v32;
        v48 = *MEMORY[0x1E6979FA8];
        v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
        v57 = v33;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];

        if (CARenderServerSnapshot())
        {
          self->_contentReplacedWithSnapshot = 1;
          [(MTMaterialLayer *)self setEnabled:?];
          [(MTMaterialLayer *)self setFilters:?];
          [(MTMaterialLayer *)self setContents:?];
          [(MTMaterialLayer *)self setMasksToBounds:?];
        }

        else
        {
          v36 = MTLogMaterials;
          if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
          {
            [(MTMaterialLayer(Private) *)self setContentReplacedWithSnapshot:v36];
          }
        }

        CFRelease(v17);
      }

      else
      {
        v35 = MTLogMaterials;
        if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_ERROR))
        {
          [(MTMaterialLayer(Private) *)self setContentReplacedWithSnapshot:v35];
        }
      }
    }

    else
    {
      self->_contentReplacedWithSnapshot = 0;
      [(MTMaterialLayer *)self setContents:?];
      [(MTMaterialLayer *)self setEnabled:?];
      [(MTMaterialLayer *)self setMasksToBounds:?];

      [(MTMaterialLayer *)self _setNeedsConfiguring];
    }
  }
}

- (void)setRecipeName:(id)name fromBundle:(id)bundle
{
  v5 = MTMaterialSettingsForRecipeFromBundle(name, bundle);
  [(MTMaterialLayer *)self _setRecipeSettings:?];
}

- (void)_configureBackdropLayer:(uint64_t)a1 withSettingsInterpolator:(NSObject *)a2 preservingFiltersIfIdentity:.cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_1BF527000, a2, OS_LOG_TYPE_DEBUG, "%{public}@: Reduced transparency enabled, so replacing blur with average color", &v2, 0xCu);
}

@end