@interface MTMaterialView
+ (id)_deprecatedControlCenterMaterialWithRecipe:(int64_t)recipe configuration:(int64_t)configuration initialWeighting:(double)weighting scaleAdjustment:(id)adjustment;
+ (id)_recipeNameForTraitCollection:(id)collection withRecipeNamesByTraitCollection:(id)traitCollection;
+ (id)materialViewWithRecipe:(int64_t)recipe configuration:(int64_t)configuration;
+ (id)materialViewWithRecipe:(int64_t)recipe configuration:(int64_t)configuration initialWeighting:(double)weighting;
+ (id)materialViewWithRecipe:(int64_t)recipe configuration:(int64_t)configuration initialWeighting:(double)weighting compatibleWithTraitCollection:(id)collection;
+ (id)materialViewWithRecipe:(int64_t)recipe configuration:(int64_t)configuration initialWeighting:(double)weighting scaleAdjustment:(id)adjustment;
+ (id)materialViewWithRecipe:(int64_t)recipe options:(unint64_t)options initialWeighting:(double)weighting;
+ (id)materialViewWithRecipe:(int64_t)recipe options:(unint64_t)options initialWeighting:(double)weighting compatibleWithTraitCollection:(id)collection;
+ (id)materialViewWithRecipe:(int64_t)recipe options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment;
+ (id)materialViewWithRecipe:(int64_t)recipe options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment compatibleWithTraitCollection:(id)collection;
+ (id)materialViewWithRecipeNamed:(id)named inBundle:(id)bundle options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment;
+ (id)materialViewWithRecipeNamesByTraitCollection:(id)collection inBundle:(id)bundle configuration:(int64_t)configuration initialWeighting:(double)weighting scaleAdjustment:(id)adjustment;
+ (id)materialViewWithRecipeNamesByTraitCollection:(id)collection inBundle:(id)bundle options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment compatibleWithTraitCollection:(id)traitCollection;
+ (id)materialViewWithVisualStyleFromRecipe:(int64_t)recipe category:(int64_t)category style:(int64_t)style options:(unint64_t)options initialWeighting:(double)weighting compatibleWithTraitCollection:(id)collection;
+ (id)newDefaultHighlightAnimator;
+ (id)staticMaterialViewWithRecipe:(int64_t)recipe;
+ (void)initialize;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)addCompletionForCurrentAnimation:(id)animation forMaterialLayer:(id)layer reason:(id *)reason;
- (BOOL)hasInoperativeAppearance;
- (BOOL)ignoresScreenClip;
- (BOOL)isBlurEnabled;
- (BOOL)isCaptureOnly;
- (BOOL)isContentReplacedWithSnapshot;
- (BOOL)isInPlaceFilteringEnabled;
- (BOOL)isManagingInterpolationForMaterialLayer:(id)layer;
- (BOOL)isZoomEnabled;
- (BOOL)shouldCrossfade;
- (MTMaterialView)init;
- (NSString)debugIdentifier;
- (NSString)description;
- (NSString)groupName;
- (NSString)recipeName;
- (double)weighting;
- (id)_coreMaterialVisualStylingProviderForCategory:(id)category;
- (id)_groupNameWithBase:(id)base;
- (id)_initWithCoreMaterialRecipe:(id)recipe fromBundle:(id)bundle options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment;
- (id)_initWithRecipe:(int64_t)recipe options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment compatibleWithTraitCollection:(id)collection;
- (id)_initWithRecipeNamesByTraitCollection:(id)collection bundle:(id)bundle options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment compatibleWithTraitCollection:(id)traitCollection;
- (id)_recipeNameForCurrentTraitCollection;
- (id)backdropScaleAdjustment;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newShadowViewWithCaptureOnlyMaterialView:(BOOL)view;
- (id)visualStylingProviderForCategory:(int64_t)category;
- (unint64_t)_options;
- (void)_addObserver:(id)observer;
- (void)_invalidateAlphaTransformer;
- (void)_notifyObserversWithBlock:(id)block;
- (void)_reduceMotionStatusDidChange;
- (void)_reduceTransparencyStatusDidChange;
- (void)_removeObserver:(id)observer;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_setCornerRadius:(double)radius;
- (void)_setRecipeName:(id)name withWeighting:(double)weighting;
- (void)_setupAlphaTransformer;
- (void)_setupOrInvalidateAlphaTransformer;
- (void)_updateGroupNameIfNecessary;
- (void)_updateRecipeNameIfNeeded;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)prune;
- (void)setBackdropScaleAdjustment:(id)adjustment;
- (void)setBlurEnabled:(BOOL)enabled;
- (void)setCaptureOnly:(BOOL)only;
- (void)setContentReplacedWithSnapshot:(BOOL)snapshot;
- (void)setDebugIdentifier:(id)identifier;
- (void)setGroupName:(id)name;
- (void)setGroupNameBase:(id)base;
- (void)setHasInoperativeAppearance:(BOOL)appearance;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setIgnoresScreenClip:(BOOL)clip;
- (void)setInPlaceFilteringEnabled:(BOOL)enabled;
- (void)setRecipe:(int64_t)recipe;
- (void)setRecipeDynamic:(BOOL)dynamic;
- (void)setRecipeName:(id)name fromBundle:(id)bundle;
- (void)setShadowed:(BOOL)shadowed;
- (void)setShouldCrossfade:(BOOL)crossfade;
- (void)setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:(BOOL)adjustment;
- (void)setUseBuiltInAlphaTransformerAndBackdropScaleAdjustmentIfNecessary:(BOOL)necessary;
- (void)setWeighting:(double)weighting;
- (void)setZoomEnabled:(BOOL)enabled;
@end

@implementation MTMaterialView

- (double)weighting
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  [_materialLayer weighting];
  v4 = v3;

  return v4;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = MTMaterialView;
  [(MTMaterialView *)&v7 layoutSubviews];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__MTMaterialView_layoutSubviews__block_invoke;
  v6[3] = &unk_27835D300;
  v6[4] = self;
  v3 = MEMORY[0x223D601D0](v6);
  traitCollection = [(MTMaterialView *)self traitCollection];
  objc_opt_class();
  v5 = [traitCollection valueForNSIntegerTrait:?];

  if (v5 == 1)
  {
    [MEMORY[0x277D75D18] performWithoutAnimation:?];
  }

  else
  {
    v3[2](v3);
  }
}

void __32__MTMaterialView_layoutSubviews__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateRecipeNameIfNeeded];
  v2 = [*(a1 + 32) window];

  if (!v2)
  {
    *(*(a1 + 32) + 456) = 1;
  }
}

- (void)_updateRecipeNameIfNeeded
{
  recipe = self->_recipe;
  if (recipe)
  {
    if (self->_recipeDynamic)
    {
      traitCollection = [(MTMaterialView *)self traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];

      recipe = self->_recipe;
    }

    else
    {
      userInterfaceStyle = 0;
    }

    _recipeNameForCurrentTraitCollection = MTCoreMaterialRecipeForMaterialRecipeAndUserInterfaceStyleInShadow(recipe, userInterfaceStyle, self->_shadowed);
    if (!_recipeNameForCurrentTraitCollection)
    {
      goto LABEL_13;
    }

LABEL_9:
    v10 = _recipeNameForCurrentTraitCollection;
    _materialLayer = [(MTMaterialView *)self _materialLayer];
    recipeName = [_materialLayer recipeName];
    v9 = [recipeName isEqualToString:?];

    if ((v9 & 1) == 0)
    {
      [(MTMaterialView *)self setRecipeName:?];
    }

    _recipeNameForCurrentTraitCollection = v10;
    goto LABEL_13;
  }

  if (!self->_recipeNamesByTraitCollection)
  {
    _recipeNameForCurrentTraitCollection = 0;
    goto LABEL_13;
  }

  _recipeNameForCurrentTraitCollection = [(MTMaterialView *)self _recipeNameForCurrentTraitCollection];
  if (_recipeNameForCurrentTraitCollection)
  {
    goto LABEL_9;
  }

LABEL_13:
}

- (MTMaterialView)init
{
  v3.receiver = self;
  v3.super_class = MTMaterialView;
  result = [(MTMaterialView *)&v3 init];
  if (result)
  {
    result->_recipeDynamic = 1;
  }

  return result;
}

- (void)_updateGroupNameIfNecessary
{
  if (self->_groupNameBase)
  {
    v3 = [(MTMaterialView *)self _groupNameWithBase:?];
    [(MTMaterialView *)self setGroupName:?];
  }
}

double __40__MTMaterialView__setupAlphaTransformer__block_invoke_3(double a1)
{
  result = 1.0;
  if (a1 < 0.05)
  {
    if (a1 / 0.05 <= 0.0)
    {
      v3 = 0.0;
    }

    else
    {
      v3 = a1 / 0.05 + 0.0;
    }

    return fmin(v3, 1.0);
  }

  return result;
}

double __40__MTMaterialView__setupAlphaTransformer__block_invoke_78(double a1, double a2, double a3)
{
  if (a3 < 15.0 && a2 == 0.0)
  {
    a2 = a3 / 10.0;
  }

  return a1 * a3 + (1.0 - a1) * a2;
}

void __40__MTMaterialView__setupAlphaTransformer__block_invoke_73(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [WeakRetained _backdropFloatAnimatableProperty];

    WeakRetained = v8;
    if (v3)
    {
      v4 = [v8 _backdropFloatAnimatableProperty];
      [v4 value];
      v6 = v5;

      (*(*(a1 + 32) + 16))(v6);
      v7 = [v8 _materialLayer];
      [v7 _setPrivateOpacity:? removingIfIdentity:?];

      WeakRetained = v8;
    }
  }
}

- (id)_recipeNameForCurrentTraitCollection
{
  v3 = objc_opt_class();
  traitCollection = [(MTMaterialView *)self traitCollection];
  v5 = [v3 _recipeNameForTraitCollection:? withRecipeNamesByTraitCollection:?];

  return v5;
}

- (BOOL)shouldCrossfade
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  shouldCrossfade = [_materialLayer shouldCrossfade];

  return shouldCrossfade;
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = MTMaterialView;
  [(MTMaterialView *)&v5 didMoveToWindow];
  window = [(MTMaterialView *)self window];
  if (window)
  {
    needsLayoutOnMoveToWindow = self->_needsLayoutOnMoveToWindow;

    if (needsLayoutOnMoveToWindow)
    {
      [(MTMaterialView *)self setNeedsLayout];
      self->_needsLayoutOnMoveToWindow = 0;
    }
  }
}

void __40__MTMaterialView__setupAlphaTransformer__block_invoke_2_74(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _backdropFloatAnimatableProperty];

    if (v4)
    {
      v5 = [v3 _backdropFloatAnimatableProperty];
      [v5 presentationValue];
      v7 = v6;

      v8 = [v3 _backdropFloatAnimatableProperty];
      v9 = [MEMORY[0x277CD9E08] mt_keyPathForColorMatrixDrivenOpacity];
      if (v8 && ([v8 value], BSFloatEqualToFloat()))
      {
        [v3 stopSettingPresentationValueForKey:?];
      }

      else
      {
        v10 = (*(*(a1 + 32) + 16))(v7);
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v13 = 0u;
        [&v13 mt_colorMatrixForOpacity:?];
        v11 = [MEMORY[0x277CCAE60] valueWithBytes:v13 objCType:{v14, v15, v16, v17}];
        [v3 _setPresentationValue:? forKey:?];

        v12 = MTLogMaterials;
        if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543874;
          v19 = v3;
          v20 = 2050;
          v21 = v7;
          v22 = 2050;
          v23 = v10;
          _os_log_debug_impl(&dword_21E600000, v12, OS_LOG_TYPE_DEBUG, "%{public}@: Updating presentation value for progress: %{public}f; alpha: %{public}f", buf, 0x20u);
        }
      }
    }
  }
}

- (void)_setupOrInvalidateAlphaTransformer
{
  if (self->_useBuiltInAlphaTransformerAndBackdropScaleAdjustment)
  {
    if (UIAccessibilityIsReduceMotionEnabled() || UIAccessibilityIsReduceTransparencyEnabled())
    {

      [(MTMaterialView *)self _invalidateAlphaTransformer];
    }

    else
    {

      [(MTMaterialView *)self _setupAlphaTransformer];
    }
  }
}

- (BOOL)isZoomEnabled
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  isZoomEnabled = [_materialLayer isZoomEnabled];

  return isZoomEnabled;
}

- (BOOL)isBlurEnabled
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  isBlurEnabled = [_materialLayer isBlurEnabled];

  return isBlurEnabled;
}

- (void)dealloc
{
  if (self->_reduceTransparencyObserverToken)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter _removeObserver:?];

    self->_reduceTransparencyObserverToken = 0;
  }

  if (self->_reduceMotionObserverToken)
  {
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 _removeObserver:?];

    self->_reduceMotionObserverToken = 0;
  }

  v5.receiver = self;
  v5.super_class = MTMaterialView;
  [(MTMaterialView *)&v5 dealloc];
}

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {

    MTRegisterMaterialKitLogging();
  }
}

- (void)_setupAlphaTransformer
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  selfCopy = self;
  _os_log_debug_impl(&dword_21E600000, a2, OS_LOG_TYPE_DEBUG, "%{public}@: Instantiating backdrop float animatable property", &v2, 0xCu);
}

- (id)_initWithRecipe:(int64_t)recipe options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment compatibleWithTraitCollection:(id)collection
{
  adjustmentCopy = adjustment;
  collectionCopy = collection;
  if (!collectionCopy)
  {
    collectionCopy = [MEMORY[0x277D75C80] currentTraitCollection];
  }

  v12 = MTCoreMaterialRecipeForMaterialRecipeAndUserInterfaceStyle(recipe, [collectionCopy userInterfaceStyle]);
  v13 = [MTMaterialView _initWithCoreMaterialRecipe:"_initWithCoreMaterialRecipe:fromBundle:options:initialWeighting:scaleAdjustment:" fromBundle:? options:? initialWeighting:? scaleAdjustment:?];

  if (v13)
  {
    v13[62] = recipe;
  }

  return v13;
}

- (id)_initWithRecipeNamesByTraitCollection:(id)collection bundle:(id)bundle options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment compatibleWithTraitCollection:(id)traitCollection
{
  collectionCopy = collection;
  bundleCopy = bundle;
  adjustmentCopy = adjustment;
  traitCollectionCopy = traitCollection;
  currentTraitCollection = traitCollectionCopy;
  if (collectionCopy)
  {
    if (traitCollectionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [MTMaterialView _initWithRecipeNamesByTraitCollection:a2 bundle:self options:? initialWeighting:? scaleAdjustment:? compatibleWithTraitCollection:?];
  if (!currentTraitCollection)
  {
LABEL_3:
    currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  }

LABEL_4:
  v19 = [objc_opt_class() _recipeNameForTraitCollection:? withRecipeNamesByTraitCollection:?];
  v20 = [MTMaterialView _initWithCoreMaterialRecipe:"_initWithCoreMaterialRecipe:fromBundle:options:initialWeighting:scaleAdjustment:" fromBundle:? options:? initialWeighting:? scaleAdjustment:?];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(v20 + 53, collection);
  }

  return v21;
}

+ (id)materialViewWithRecipe:(int64_t)recipe options:(unint64_t)options initialWeighting:(double)weighting
{
  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  v7 = [self materialViewWithRecipe:? options:? initialWeighting:? compatibleWithTraitCollection:?];

  return v7;
}

+ (id)materialViewWithRecipe:(int64_t)recipe options:(unint64_t)options initialWeighting:(double)weighting compatibleWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v8 = [[self alloc] _initWithRecipe:? options:? initialWeighting:? scaleAdjustment:? compatibleWithTraitCollection:?];

  return v8;
}

+ (id)newDefaultHighlightAnimator
{
  v2 = objc_alloc(MEMORY[0x277D75D40]);
  v3 = objc_alloc_init(MEMORY[0x277D753D0]);
  v4 = [v2 initWithDuration:? timingParameters:?];

  return v4;
}

- (NSString)groupName
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  groupName = [_materialLayer groupName];

  return groupName;
}

- (void)setGroupName:(id)name
{
  nameCopy = name;
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  [_materialLayer setGroupName:?];

  [(MTMaterialView *)self _notifyObserversWithBlock:?];
}

void __31__MTMaterialView_setGroupName___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 groupNameDidChangeForMaterialView:?];
  }
}

- (void)setGroupNameBase:(id)base
{
  baseCopy = base;
  if (([baseCopy isEqualToString:?] & 1) == 0)
  {
    v4 = [baseCopy copy];
    groupNameBase = self->_groupNameBase;
    self->_groupNameBase = v4;

    if (self->_groupNameBase)
    {
      [(MTMaterialView *)self _updateGroupNameIfNecessary];
    }

    else
    {
      [(MTMaterialView *)self setGroupName:?];
    }
  }
}

- (void)setWeighting:(double)weighting
{
  v4 = fmax(fmin(weighting, 1.0), 0.0);
  [(MTMaterialView *)self weighting];
  if (v4 != v5)
  {
    _materialLayer = [(MTMaterialView *)self _materialLayer];
    [_materialLayer setWeighting:?];

    _backdropFloatAnimatableProperty = [(MTMaterialView *)self _backdropFloatAnimatableProperty];
    [_backdropFloatAnimatableProperty setValue:?];

    [(MTMaterialView *)self _notifyObserversWithBlock:?];
  }
}

void __31__MTMaterialView_setWeighting___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 weightingDidChangeForMaterialView:?];
  }
}

- (void)setRecipe:(int64_t)recipe
{
  if (self->_recipe != recipe)
  {
    self->_recipe = recipe;
    if (self->_recipeDynamic)
    {
      traitCollection = [(MTMaterialView *)self traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];
    }

    else
    {
      userInterfaceStyle = 0;
    }

    v8 = MTCoreMaterialRecipeForMaterialRecipeAndUserInterfaceStyleInShadow(recipe, userInterfaceStyle, self->_shadowed);
    [(MTMaterialView *)self setRecipeName:?];
  }
}

- (void)setBlurEnabled:(BOOL)enabled
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  [_materialLayer setBlurEnabled:?];

  [(MTMaterialView *)self _updateGroupNameIfNecessary];
}

- (void)setZoomEnabled:(BOOL)enabled
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  [_materialLayer setZoomEnabled:?];

  [(MTMaterialView *)self _updateGroupNameIfNecessary];
}

- (BOOL)isCaptureOnly
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  captureOnly = [_materialLayer captureOnly];

  return captureOnly;
}

- (void)setCaptureOnly:(BOOL)only
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  [_materialLayer setCaptureOnly:?];
}

- (void)setShadowed:(BOOL)shadowed
{
  if (self->_shadowed != shadowed)
  {
    self->_shadowed = shadowed;
    recipe = self->_recipe;
    if (recipe)
    {
      if (self->_recipeDynamic)
      {
        traitCollection = [(MTMaterialView *)self traitCollection];
        userInterfaceStyle = [traitCollection userInterfaceStyle];

        recipe = self->_recipe;
        shadowed = self->_shadowed;
      }

      else
      {
        userInterfaceStyle = 0;
      }

      v7 = MTCoreMaterialRecipeForMaterialRecipeAndUserInterfaceStyleInShadow(recipe, userInterfaceStyle, shadowed);
      [(MTMaterialView *)self setRecipeName:?];
    }
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    highlightView = self->_highlightView;
    if (!highlightView)
    {
      v5 = objc_alloc(MEMORY[0x277D75D18]);
      [(MTMaterialView *)self bounds];
      v6 = [v5 initWithFrame:?];
      v7 = self->_highlightView;
      self->_highlightView = v6;

      [(UIView *)self->_highlightView setUserInteractionEnabled:?];
      [(UIView *)self->_highlightView setAutoresizingMask:?];
      [MEMORY[0x277D75D18] performWithoutAnimation:?];
      highlightView = self->_highlightView;
    }

    [(UIView *)highlightView setAlpha:?];
  }
}

void __33__MTMaterialView_setHighlighted___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) layer];
  [v6 cornerRadius];
  if (v2 > 0.0)
  {
    v3 = [*(*(a1 + 32) + 448) layer];
    [v6 cornerRadius];
    [v3 setCornerRadius:?];
    v4 = [v6 cornerCurve];
    [v3 setCornerCurve:?];
  }

  [*(a1 + 32) addSubview:?];
  v5 = [*(a1 + 32) visualStylingProviderForCategory:?];
  [v5 automaticallyUpdateView:? withStyle:? andObserverBlock:?];

  [*(*(a1 + 32) + 448) setAlpha:?];
}

id __33__MTMaterialView_setHighlighted___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 alpha];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__MTMaterialView_setHighlighted___block_invoke_3;
  v6[3] = &__block_descriptor_40_e36_v24__0__MTVisualStylingProvider_8_16l;
  v6[4] = v3;
  v4 = MEMORY[0x223D601D0](v6);

  return v4;
}

- (BOOL)hasInoperativeAppearance
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  _hasInoperativeAppearance = [_materialLayer _hasInoperativeAppearance];

  return _hasInoperativeAppearance;
}

- (void)setHasInoperativeAppearance:(BOOL)appearance
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  [_materialLayer _setHasInoperativeAppearance:? removingIfIdentity:?];
}

- (NSString)debugIdentifier
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  debugIdentifier = [_materialLayer debugIdentifier];

  return debugIdentifier;
}

- (void)setDebugIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  [_materialLayer setDebugIdentifier:?];
}

- (void)prune
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  [_materialLayer prune];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  mt_implicitlyAnimatableKeys = [objc_opt_class() mt_implicitlyAnimatableKeys];
  if ([mt_implicitlyAnimatableKeys containsObject:?])
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MTMaterialView;
    v7 = [(MTMaterialView *)&v9 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v7;
}

- (void)_setCornerRadius:(double)radius
{
  v4.receiver = self;
  v4.super_class = MTMaterialView;
  [(MTMaterialView *)&v4 _setCornerRadius:?];
  [(UIView *)self->_highlightView _setCornerRadius:?];
}

- (void)_setContinuousCornerRadius:(double)radius
{
  v4.receiver = self;
  v4.super_class = MTMaterialView;
  [(MTMaterialView *)&v4 _setContinuousCornerRadius:?];
  [(UIView *)self->_highlightView _setContinuousCornerRadius:?];
}

- (BOOL)isManagingInterpolationForMaterialLayer:(id)layer
{
  _isInRetargetableAnimationBlock = [MEMORY[0x277D75D18] _isInRetargetableAnimationBlock];
  if (_isInRetargetableAnimationBlock)
  {
    v4 = MEMORY[0x277D75D18];

    LOBYTE(_isInRetargetableAnimationBlock) = [v4 areAnimationsEnabled];
  }

  return _isInRetargetableAnimationBlock;
}

- (BOOL)addCompletionForCurrentAnimation:(id)animation forMaterialLayer:(id)layer reason:(id *)reason
{
  animationCopy = animation;
  layerCopy = layer;
  if (!animationCopy)
  {
    if (reason)
    {
      v12 = @"no argument block";
LABEL_13:
      v11 = 0;
      *reason = v12;
      goto LABEL_15;
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  if (![MEMORY[0x277D75D18] _isInAnimationBlockWithAnimationsEnabled])
  {
    if (reason)
    {
      if ([MEMORY[0x277D75D18] _isInAnimationBlock])
      {
        v12 = @"animations disabled";
      }

      else
      {
        v12 = @"no animation";
      }

      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v9 = MEMORY[0x277D75D18];
  v14 = animationCopy;
  v10 = [v9 _addCompletion:?];
  v11 = v10;
  if (reason && (v10 & 1) == 0)
  {
    *reason = @"failed to add completion";
  }

LABEL_15:
  return v11;
}

- (id)visualStylingProviderForCategory:(int64_t)category
{
  v4 = MTCoreMaterialVisualStyleCategoryForVisualStyleCategory(category);
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_cmVisualStyleCategoriesToProviders objectForKey:?];
    if (!v5)
    {
      if (!self->_cmVisualStyleCategoriesToProviders)
      {
        v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
        cmVisualStyleCategoriesToProviders = self->_cmVisualStyleCategoriesToProviders;
        self->_cmVisualStyleCategoriesToProviders = v6;
      }

      [(MTMaterialView *)self _updateRecipeNameIfNeeded];
      v8 = [(MTMaterialView *)self _coreMaterialVisualStylingProviderForCategory:?];
      visualStyleSetName = [v8 visualStyleSetName];
      v10 = [visualStyleSetName length];

      if (v10)
      {
        v5 = [[MTVisualStylingProvider alloc] initWithCoreMaterialVisualStylingProvider:?];
        [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_invalidateAlphaTransformer
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  selfCopy = self;
  _os_log_debug_impl(&dword_21E600000, a2, OS_LOG_TYPE_DEBUG, "%{public}@: Tearing down backdrop float animatable property", &v2, 0xCu);
}

+ (id)_recipeNameForTraitCollection:(id)collection withRecipeNamesByTraitCollection:(id)traitCollection
{
  traitCollectionCopy = traitCollection;
  v6 = traitCollectionCopy;
  v7 = 0;
  if (collection && traitCollectionCopy)
  {
    collectionCopy = collection;
    allKeys = [v6 allKeys];
    v10 = MEMORY[0x277D75C80];
    [collectionCopy userInterfaceStyle];

    v11 = [v10 traitCollectionWithUserInterfaceStyle:?];
    v12 = [allKeys arrayByAddingObject:?];

    v13 = [MEMORY[0x277D75C80] traitCollectionWithTraitsFromCollections:?];
    if (v13)
    {
      v7 = [v6 objectForKey:?];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)_setRecipeName:(id)name withWeighting:(double)weighting
{
  nameCopy = name;
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  [_materialLayer setRecipeName:? fromBundle:?];

  _materialLayer2 = [(MTMaterialView *)self _materialLayer];
  [_materialLayer2 setWeighting:?];

  [(MTMaterialView *)self _notifyObserversWithBlock:?];
  [(MTMaterialView *)self _updateGroupNameIfNecessary];
}

void __47__MTMaterialView__setRecipeName_withWeighting___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 recipeNameDidChangeForMaterialView:?];
  }
}

- (id)_groupNameWithBase:(id)base
{
  v4 = MEMORY[0x277CCAB68];
  baseCopy = base;
  v6 = [v4 alloc];
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  recipeName = [_materialLayer recipeName];
  v9 = [v6 initWithFormat:baseCopy, recipeName];

  if (![(MTMaterialView *)self isBlurEnabled])
  {
    [v9 appendString:?];
  }

  if (![(MTMaterialView *)self isZoomEnabled])
  {
    [v9 appendString:?];
  }

  if ([(MTMaterialView *)self isShadowed])
  {
    [v9 appendString:?];
  }

  _materialLayer2 = [(MTMaterialView *)self _materialLayer];
  reducesCaptureBitDepth = [_materialLayer2 reducesCaptureBitDepth];

  if (reducesCaptureBitDepth)
  {
    [v9 appendString:?];
  }

  return v9;
}

- (void)_reduceMotionStatusDidChange
{
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  isReduceMotionEnabled = [_materialLayer isReduceMotionEnabled];

  if (IsReduceMotionEnabled != isReduceMotionEnabled)
  {
    _materialLayer2 = [(MTMaterialView *)self _materialLayer];
    [_materialLayer2 setReduceMotionEnabled:?];

    [(MTMaterialView *)self _setupOrInvalidateAlphaTransformer];
  }
}

- (void)_reduceTransparencyStatusDidChange
{
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  isReduceTransparencyEnabled = [_materialLayer isReduceTransparencyEnabled];

  if (IsReduceTransparencyEnabled != isReduceTransparencyEnabled)
  {
    _materialLayer2 = [(MTMaterialView *)self _materialLayer];
    [_materialLayer2 setReduceTransparencyEnabled:?];

    [(MTMaterialView *)self _setupOrInvalidateAlphaTransformer];
  }
}

- (void)_notifyObserversWithBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    observers = self->_observers;
    if (observers)
    {
      v6 = observers;
      v7 = [NSHashTable countByEnumeratingWithState:v6 objects:"countByEnumeratingWithState:objects:count:" count:0];
      if (v7)
      {
        v8 = v7;
        v9 = MEMORY[0];
        do
        {
          for (i = 0; i != v8; i = (i + 1))
          {
            if (MEMORY[0] != v9)
            {
              objc_enumerationMutation(v6);
            }

            blockCopy[2](blockCopy, *(8 * i));
          }

          v8 = [NSHashTable countByEnumeratingWithState:v6 objects:"countByEnumeratingWithState:objects:count:" count:?];
        }

        while (v8);
      }
    }
  }
}

- (NSString)description
{
  debugIdentifier = [(MTMaterialView *)self debugIdentifier];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = v5;
  if (debugIdentifier)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:debugIdentifier];
    v8 = [v4 stringWithFormat:v6, v7, self];
  }

  else
  {
    v8 = [v4 stringWithFormat:v5, &stru_282FA21D0, self];
  }

  return v8;
}

+ (id)materialViewWithRecipe:(int64_t)recipe options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment
{
  v7 = MEMORY[0x277D75C80];
  adjustmentCopy = adjustment;
  currentTraitCollection = [v7 currentTraitCollection];
  v10 = [self materialViewWithRecipe:? options:? initialWeighting:? scaleAdjustment:? compatibleWithTraitCollection:?];

  return v10;
}

+ (id)materialViewWithRecipe:(int64_t)recipe options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment compatibleWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  adjustmentCopy = adjustment;
  v11 = [[self alloc] _initWithRecipe:? options:? initialWeighting:? scaleAdjustment:? compatibleWithTraitCollection:?];

  return v11;
}

+ (id)materialViewWithRecipeNamed:(id)named inBundle:(id)bundle options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment
{
  adjustmentCopy = adjustment;
  bundleCopy = bundle;
  namedCopy = named;
  v13 = [[self alloc] _initWithCoreMaterialRecipe:? fromBundle:? options:? initialWeighting:? scaleAdjustment:?];

  return v13;
}

+ (id)materialViewWithRecipeNamesByTraitCollection:(id)collection inBundle:(id)bundle options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment compatibleWithTraitCollection:(id)traitCollection
{
  traitCollectionCopy = traitCollection;
  adjustmentCopy = adjustment;
  bundleCopy = bundle;
  collectionCopy = collection;
  v16 = [[self alloc] _initWithRecipeNamesByTraitCollection:? bundle:? options:? initialWeighting:? scaleAdjustment:? compatibleWithTraitCollection:?];

  return v16;
}

+ (id)materialViewWithVisualStyleFromRecipe:(int64_t)recipe category:(int64_t)category style:(int64_t)style options:(unint64_t)options initialWeighting:(double)weighting compatibleWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v13 = MTCoreMaterialVisualStyleCategoryForVisualStyleCategory(category);
  v14 = MTCoreMaterialVisualStyleForVisualStyle(style);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __135__MTMaterialView_Private__materialViewWithVisualStyleFromRecipe_category_style_options_initialWeighting_compatibleWithTraitCollection___block_invoke;
  v26[3] = &unk_27835D480;
  recipeCopy = recipe;
  v15 = v13;
  v27 = v15;
  v16 = v14;
  v28 = v16;
  v17 = MEMORY[0x223D601D0](v26);
  v18 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:?];
  v19 = v17[2](v17, 1);
  if (v19)
  {
    v20 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:?];
    [v18 setObject:? forKey:?];

    v21 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:?];
    [v18 setObject:? forKey:?];
  }

  v22 = v17[2](v17, 2);
  if (v22)
  {
    v23 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:?];
    [v18 setObject:? forKey:?];
  }

  v24 = [[self alloc] _initWithRecipeNamesByTraitCollection:? bundle:? options:? initialWeighting:? scaleAdjustment:? compatibleWithTraitCollection:?];

  return v24;
}

id __135__MTMaterialView_Private__materialViewWithVisualStyleFromRecipe_category_style_options_initialWeighting_compatibleWithTraitCollection___block_invoke(void *a1, uint64_t a2)
{
  v2 = MTCoreMaterialRecipeForMaterialRecipeAndUserInterfaceStyle(a1[6], a2);
  v3 = MTCoreMaterialRecipeForVisualStyleFromRecipeFromBundle();

  return v3;
}

- (NSString)recipeName
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  recipeName = [_materialLayer recipeName];

  return recipeName;
}

- (void)setRecipeName:(id)name fromBundle:(id)bundle
{
  bundleCopy = bundle;
  if (name && bundleCopy)
  {
    self->_recipe = 0;
  }

  recipeBundle = self->_recipeBundle;
  self->_recipeBundle = bundleCopy;
  nameCopy = name;

  [MTMaterialView _setRecipeName:"_setRecipeName:withWeighting:" withWeighting:?];
}

- (BOOL)isInPlaceFilteringEnabled
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  allowsInPlaceFiltering = [_materialLayer allowsInPlaceFiltering];

  return allowsInPlaceFiltering;
}

- (void)setInPlaceFilteringEnabled:(BOOL)enabled
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  [_materialLayer setAllowsInPlaceFiltering:?];
}

- (id)backdropScaleAdjustment
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  backdropScaleAdjustment = [_materialLayer backdropScaleAdjustment];

  return backdropScaleAdjustment;
}

- (void)setBackdropScaleAdjustment:(id)adjustment
{
  adjustmentCopy = adjustment;
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  [_materialLayer setBackdropScaleAdjustment:?];
}

- (void)setShouldCrossfade:(BOOL)crossfade
{
  crossfadeCopy = crossfade;
  if ([(MTMaterialView *)self shouldCrossfade]!= crossfade)
  {
    if (crossfadeCopy)
    {
      [(MTMaterialView *)self setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:?];
    }

    _materialLayer = [(MTMaterialView *)self _materialLayer];
    [_materialLayer setShouldCrossfade:?];
  }
}

- (void)setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:(BOOL)adjustment
{
  if (self->_useBuiltInAlphaTransformerAndBackdropScaleAdjustment != adjustment)
  {
    self->_useBuiltInAlphaTransformerAndBackdropScaleAdjustment = adjustment;
    if (adjustment)
    {
      _materialLayer = [(MTMaterialView *)self _materialLayer];
      [_materialLayer setShouldCrossfade:?];

      [(MTMaterialView *)self _setupOrInvalidateAlphaTransformer];
    }

    else
    {
      [(MTMaterialView *)self _invalidateAlphaTransformer];
      _materialLayer2 = [(MTMaterialView *)self _materialLayer];
      [_materialLayer2 _reevaluateDefaultShouldCrossfade];
    }
  }
}

- (void)setUseBuiltInAlphaTransformerAndBackdropScaleAdjustmentIfNecessary:(BOOL)necessary
{
  if (!necessary || MTDynamicBlurRadiusGraphicsQuality() != 100)
  {

    [(MTMaterialView *)self setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:?];
  }
}

- (void)setRecipeDynamic:(BOOL)dynamic
{
  if (self->_recipeDynamic != dynamic)
  {
    self->_recipeDynamic = dynamic;
    [(MTMaterialView *)self setNeedsLayout];
    [MEMORY[0x277D75D18] animateWithDuration:? animations:?];
  }
}

- (BOOL)ignoresScreenClip
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  ignoresScreenClip = [_materialLayer ignoresScreenClip];

  return ignoresScreenClip;
}

- (void)setIgnoresScreenClip:(BOOL)clip
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  [_materialLayer setIgnoresScreenClip:?];
}

- (unint64_t)_options
{
  v3 = [(MTMaterialView *)self isBlurEnabled]^ 1;
  if (![(MTMaterialView *)self isZoomEnabled])
  {
    v3 |= 2uLL;
  }

  if ([(MTMaterialView *)self isCaptureOnly])
  {
    v3 |= 4uLL;
  }

  if ([(MTMaterialView *)self isShadowed])
  {
    return v3 | 8;
  }

  else
  {
    return v3;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (self->_recipeNamesByTraitCollection)
  {
    v5 = objc_alloc(objc_opt_class());
    [(MTMaterialView *)self _options];
    [(MTMaterialView *)self weighting];
    backdropScaleAdjustment = [(MTMaterialView *)self backdropScaleAdjustment];
    traitCollection = [(MTMaterialView *)self traitCollection];
    v8 = [v5 _initWithRecipeNamesByTraitCollection:? bundle:? options:? initialWeighting:? scaleAdjustment:? compatibleWithTraitCollection:?];
LABEL_5:
    v11 = v8;
    goto LABEL_6;
  }

  recipe = self->_recipe;
  v10 = objc_alloc(objc_opt_class());
  if (recipe)
  {
    [(MTMaterialView *)self _options];
    [(MTMaterialView *)self weighting];
    backdropScaleAdjustment = [(MTMaterialView *)self backdropScaleAdjustment];
    traitCollection = [(MTMaterialView *)self traitCollection];
    v8 = [v10 _initWithRecipe:? options:? initialWeighting:? scaleAdjustment:? compatibleWithTraitCollection:?];
    goto LABEL_5;
  }

  backdropScaleAdjustment = [(MTMaterialView *)self _materialLayer];
  traitCollection = [backdropScaleAdjustment recipe];
  recipeName = traitCollection;
  if (!traitCollection)
  {
    _materialLayer = [(MTMaterialView *)self _materialLayer];
    recipeName = [_materialLayer recipeName];
  }

  [(MTMaterialView *)self _options];
  [(MTMaterialView *)self weighting];
  backdropScaleAdjustment2 = [(MTMaterialView *)self backdropScaleAdjustment];
  v11 = [v10 _initWithCoreMaterialRecipe:? fromBundle:? options:? initialWeighting:? scaleAdjustment:?];

  if (!traitCollection)
  {
  }

LABEL_6:

  groupNameBase = [(MTMaterialView *)self groupNameBase];
  [v11 setGroupNameBase:?];

  [(MTMaterialView *)self shouldCrossfade];
  [v11 setShouldCrossfade:?];
  [(MTMaterialView *)self useBuiltInAlphaTransformerAndBackdropScaleAdjustment];
  [v11 setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:?];
  [(MTMaterialView *)self useBuiltInAlphaTransformerAndBackdropScaleAdjustmentIfNecessary];
  [v11 setUseBuiltInAlphaTransformerAndBackdropScaleAdjustmentIfNecessary:?];
  [(MTMaterialView *)self isRecipeDynamic];
  [v11 setRecipeDynamic:?];
  [(MTMaterialView *)self ignoresScreenClip];
  [v11 setIgnoresScreenClip:?];
  return v11;
}

- (id)newShadowViewWithCaptureOnlyMaterialView:(BOOL)view
{
  v3 = [[MTMaterialShadowView alloc] initWithMaterialView:?];
  [(MTMaterialShadowView *)v3 setCaptureOnlyMaterialViewSuppliedByClient:?];
  return v3;
}

- (BOOL)isContentReplacedWithSnapshot
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  isContentReplacedWithSnapshot = [_materialLayer isContentReplacedWithSnapshot];

  return isContentReplacedWithSnapshot;
}

- (void)setContentReplacedWithSnapshot:(BOOL)snapshot
{
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  [_materialLayer setContentReplacedWithSnapshot:?];
}

- (void)_addObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    observers = self->_observers;
    v9 = v5;
    if (!observers)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v8 = self->_observers;
      self->_observers = weakObjectsHashTable;

      observers = self->_observers;
    }

    observerCopy = [(NSHashTable *)observers addObject:?];
    v5 = v9;
  }

  MEMORY[0x2821F96F8](observerCopy, v5);
}

- (void)_removeObserver:(id)observer
{
  if (observer)
  {
    observers = self->_observers;
    if (observers)
    {
      [(NSHashTable *)observers removeObject:?];
    }
  }
}

- (id)_initWithCoreMaterialRecipe:(id)recipe fromBundle:(id)bundle options:(unint64_t)options initialWeighting:(double)weighting scaleAdjustment:(id)adjustment
{
  recipeCopy = recipe;
  bundleCopy = bundle;
  adjustmentCopy = adjustment;
  v15 = [(MTMaterialView *)self init];
  if (v15)
  {
    if (!recipeCopy)
    {
      [MTMaterialView(SubclassOverrides) _initWithCoreMaterialRecipe:a2 fromBundle:v15 options:? initialWeighting:? scaleAdjustment:?];
    }

    objc_storeStrong(&v15->_recipeBundle, bundle);
    [(MTMaterialView *)v15 setUserInteractionEnabled:?];
    [(MTMaterialView *)v15 setBackdropScaleAdjustment:?];
    _materialLayer = [(MTMaterialView *)v15 _materialLayer];
    UIAccessibilityIsReduceTransparencyEnabled();
    [_materialLayer setReduceTransparencyEnabled:?];

    _materialLayer2 = [(MTMaterialView *)v15 _materialLayer];
    UIAccessibilityIsReduceMotionEnabled();
    [_materialLayer2 setReduceMotionEnabled:?];

    _materialLayer3 = [(MTMaterialView *)v15 _materialLayer];
    [_materialLayer3 setRecipeName:? fromBundle:?];

    [(MTMaterialView *)v15 setBlurEnabled:?];
    [(MTMaterialView *)v15 setZoomEnabled:?];
    [(MTMaterialView *)v15 setCaptureOnly:?];
    [(MTMaterialView *)v15 setShadowed:?];
    [(MTMaterialView *)v15 setWeighting:?];
    if (fabs(weighting) < 2.22044605e-16)
    {
      _materialLayer4 = [(MTMaterialView *)v15 _materialLayer];
      [_materialLayer4 _setNeedsConfiguring];

      [(MTMaterialView *)v15 setNeedsLayout];
      [(MTMaterialView *)v15 layoutIfNeeded];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v15->_reduceTransparencyObserverToken = [defaultCenter _addObserver:? selector:? name:? object:? options:?];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    v15->_reduceMotionObserverToken = [defaultCenter2 _addObserver:? selector:? name:? object:? options:?];
  }

  return v15;
}

- (id)_coreMaterialVisualStylingProviderForCategory:(id)category
{
  categoryCopy = category;
  _materialLayer = [(MTMaterialView *)self _materialLayer];
  v6 = [_materialLayer visualStylingProviderForCategory:?];

  return v6;
}

+ (id)staticMaterialViewWithRecipe:(int64_t)recipe
{
  v3 = MTCoreMaterialRecipeForMaterialRecipeAndUserInterfaceStyle(recipe, 0);
  if (v3 && [MEMORY[0x277CFFF98] canGenerateVisualStyleSetFromRecipe:?])
  {
    v4 = [(MTMaterialView *)_MTStaticVisualStylingMaterialView materialViewWithRecipe:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_deprecatedControlCenterMaterialWithRecipe:(int64_t)recipe configuration:(int64_t)configuration initialWeighting:(double)weighting scaleAdjustment:(id)adjustment
{
  adjustmentCopy = adjustment;
  if (([self _isWorkaroundRequiredForRecipe:?] & 1) == 0)
  {
    [MTMaterialView(DEPRECATED) _deprecatedControlCenterMaterialWithRecipe:a2 configuration:self initialWeighting:? scaleAdjustment:?];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __120__MTMaterialView_DEPRECATED___deprecatedControlCenterMaterialWithRecipe_configuration_initialWeighting_scaleAdjustment___block_invoke;
  v17[3] = &__block_descriptor_40_e44____MTStaticVisualStylingMaterialView_16__0q8l;
  v17[4] = recipe;
  v11 = MEMORY[0x223D601D0](v17);
  v12 = v11;
  v13 = 0;
  if (configuration <= 1)
  {
    if (configuration > 1)
    {
      goto LABEL_13;
    }
  }

  else if (configuration != 2)
  {
    if (configuration == 3)
    {
      v14 = *(v11 + 16);
    }

    else
    {
      if (configuration != 4)
      {
        goto LABEL_13;
      }

      v14 = *(v11 + 16);
    }

    v15 = v14();
    goto LABEL_12;
  }

  v15 = [self materialViewWithRecipe:? options:? initialWeighting:? scaleAdjustment:?];
LABEL_12:
  v13 = v15;
LABEL_13:

  return v13;
}

id __120__MTMaterialView_DEPRECATED___deprecatedControlCenterMaterialWithRecipe_configuration_initialWeighting_scaleAdjustment___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MTVisualStylingProvider _visualStylingProviderForRecipe:"_visualStylingProviderForRecipe:andCategory:" andCategory:?];
  v4 = MTCoreMaterialVisualStyleForVisualStyle(a2);
  v5 = [v3 _coreMaterialVisualStylingProvider];
  v6 = [v5 visualStyleSetName];
  v7 = MTCoreMaterialRecipeForVisualStyleFromStyleWithName();

  v8 = [(MTMaterialView *)_MTStaticVisualStylingMaterialView materialViewWithRecipeNamed:?];
  v9 = [MTVisualStylingProvider _visualStylingProviderForRecipe:"_visualStylingProviderForRecipe:andCategory:" andCategory:?];
  [v8 setVisualStylingProvider:? forCategory:?];

  v10 = [MTVisualStylingProvider _visualStylingProviderForRecipe:"_visualStylingProviderForRecipe:andCategory:" andCategory:?];
  [v8 setVisualStylingProvider:? forCategory:?];

  return v8;
}

+ (id)materialViewWithRecipe:(int64_t)recipe configuration:(int64_t)configuration
{
  if ([self _isWorkaroundRequiredForRecipe:?])
  {
    [self _deprecatedControlCenterMaterialWithRecipe:? configuration:? initialWeighting:? scaleAdjustment:?];
  }

  else
  {
    [self materialViewWithRecipe:?];
  }
  v5 = ;

  return v5;
}

+ (id)materialViewWithRecipe:(int64_t)recipe configuration:(int64_t)configuration initialWeighting:(double)weighting
{
  if ([self _isWorkaroundRequiredForRecipe:?])
  {
    [self _deprecatedControlCenterMaterialWithRecipe:? configuration:? initialWeighting:? scaleAdjustment:?];
  }

  else
  {
    [self materialViewWithRecipe:? options:? initialWeighting:?];
  }
  v6 = ;

  return v6;
}

+ (id)materialViewWithRecipe:(int64_t)recipe configuration:(int64_t)configuration initialWeighting:(double)weighting compatibleWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  if ([self _isWorkaroundRequiredForRecipe:?])
  {
    [self _deprecatedControlCenterMaterialWithRecipe:? configuration:? initialWeighting:? scaleAdjustment:?];
  }

  else
  {
    [self materialViewWithRecipe:? options:? initialWeighting:? compatibleWithTraitCollection:?];
  }
  v8 = ;

  return v8;
}

+ (id)materialViewWithRecipe:(int64_t)recipe configuration:(int64_t)configuration initialWeighting:(double)weighting scaleAdjustment:(id)adjustment
{
  adjustmentCopy = adjustment;
  if ([self _isWorkaroundRequiredForRecipe:?])
  {
    [self _deprecatedControlCenterMaterialWithRecipe:? configuration:? initialWeighting:? scaleAdjustment:?];
  }

  else
  {
    [self materialViewWithRecipe:? options:? initialWeighting:? scaleAdjustment:?];
  }
  v8 = ;

  return v8;
}

+ (id)materialViewWithRecipeNamesByTraitCollection:(id)collection inBundle:(id)bundle configuration:(int64_t)configuration initialWeighting:(double)weighting scaleAdjustment:(id)adjustment
{
  v10 = MEMORY[0x277D75C80];
  adjustmentCopy = adjustment;
  bundleCopy = bundle;
  collectionCopy = collection;
  currentTraitCollection = [v10 currentTraitCollection];
  v15 = [self materialViewWithRecipeNamesByTraitCollection:? inBundle:? options:? initialWeighting:? scaleAdjustment:? compatibleWithTraitCollection:?];

  return v15;
}

- (void)_initWithRecipeNamesByTraitCollection:(uint64_t)a1 bundle:(uint64_t)a2 options:initialWeighting:scaleAdjustment:compatibleWithTraitCollection:.cold.1(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:@"recipeNamesByTraitCollection" object:? file:? lineNumber:? description:?];
}

@end