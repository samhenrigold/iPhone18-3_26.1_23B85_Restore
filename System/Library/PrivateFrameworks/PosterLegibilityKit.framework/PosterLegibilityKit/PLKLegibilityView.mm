@interface PLKLegibilityView
- (BOOL)_shouldBeBackdropAware;
- (BOOL)_updateTraitBasedBackdropAwareness;
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (PLKLegibilityView)init;
- (PLKLegibilityView)initWithFrame:(CGRect)frame;
- (void)_commonInit;
- (void)_setLegibilityNeedsUpdate:(id)update;
- (void)_updateContentViewForLegibilityChanges;
- (void)_updateShadowViewForLegibilityChanges;
- (void)layoutSubviews;
- (void)noteBackdropAwarenessTraitDidUpdate;
- (void)setBackdropAware:(BOOL)aware;
- (void)setContent:(id)content;
- (void)setHideForegroundContent:(BOOL)content;
- (void)setImage:(id)image;
- (void)setShadowImage:(id)image;
- (void)setTraitBasedBackdropAwarenessEnabled:(BOOL)enabled;
- (void)sizeToFit;
@end

@implementation PLKLegibilityView

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = PLKLegibilityView;
  [(PLKLegibilityView *)&v6 layoutSubviews];
  [(PLKLegibilityView *)self bounds];
  traitCollection = [(PLKLegibilityView *)self traitCollection];
  [traitCollection displayScale];
  v5 = v4;

  [(_PFTImageView *)self->_contentView bounds];
  [(_PFTImageView *)self->_shadowView bounds];
  [(UIView *)self->_containerView plk_setBoundsAndPositionFromFrame:?];
  UIRectCenteredIntegralRectScale();
  [(UIView *)self->_contentView plk_setBoundsAndPositionFromFrame:v5];
  UIRectCenteredIntegralRectScale();
  [(UIView *)self->_shadowView plk_setBoundsAndPositionFromFrame:v5];
}

- (void)_updateContentViewForLegibilityChanges
{
  [(PLKLegibilityView *)self _currentOptions];
  legibilityDescriptor = [(PLKLegibilityContent *)self->_content legibilityDescriptor];
  if (self->_hideForegroundContent || !self->_content)
  {
    p_contentView = &self->_contentView;
    goto LABEL_6;
  }

  p_contentView = &self->_contentView;
  image = [(_PFTImageView *)self->_contentView image];

  if (image)
  {
    image2 = [(_PFTImageView *)*p_contentView image];
    [image2 plk_isAlphaMask];

LABEL_6:
    [(_PFTImageView *)*p_contentView setHidden:?];
  }

  foreground = [legibilityDescriptor foreground];
  layer = [(_PFTImageView *)self->_contentView layer];
  [foreground configureCALayer:? forContentRenderedWithContextType:? options:?];
}

- (void)_updateShadowViewForLegibilityChanges
{
  legibilityDescriptor = [(PLKLegibilityContent *)self->_content legibilityDescriptor];
  [(PLKLegibilityView *)self _currentOptions];
  image = [(_PFTImageView *)self->_shadowView image];

  if (image)
  {
    image2 = [(_PFTImageView *)self->_shadowView image];
    [image2 plk_isAlphaMask];
  }

  background = [legibilityDescriptor background];
  layer = [(_PFTImageView *)self->_shadowView layer];
  [background configureCALayer:? forContentRenderedWithContextType:? options:?];
}

- (PLKLegibilityView)init
{
  v5.receiver = self;
  v5.super_class = PLKLegibilityView;
  v2 = [(PLKLegibilityView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PLKLegibilityView *)v2 _commonInit];
  }

  return v3;
}

- (PLKLegibilityView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PLKLegibilityView;
  v3 = [(PLKLegibilityView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PLKLegibilityView *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  v3 = objc_opt_new();
  containerView = self->_containerView;
  self->_containerView = v3;

  v5 = self->_containerView;
  [(PLKLegibilityView *)self bounds];
  [(_PLKLegibilityContainerView *)v5 setFrame:?];
  [(_PLKLegibilityContainerView *)self->_containerView setAutoresizingMask:?];
  [(PLKLegibilityView *)self addSubview:?];
  v6 = objc_opt_new();
  contentView = self->_contentView;
  self->_contentView = v6;

  v8 = objc_opt_new();
  shadowView = self->_shadowView;
  self->_shadowView = v8;

  [(_PLKLegibilityContainerView *)self->_containerView addSubview:?];
  [(_PLKLegibilityContainerView *)self->_containerView addSubview:?];
  self->_isTraitBasedBackdropAwarenessEnabled = [objc_opt_class() defaultsToTraitBasedBackdropAwarenessEnabled];

  [(PLKLegibilityView *)self _updateTraitBasedBackdropAwareness];
}

- (void)sizeToFit
{
  [(_PFTImageView *)self->_contentView sizeToFit];
  image = [(_PFTImageView *)self->_contentView image];
  [image size];
  BSRectWithSize();
  [(PLKLegibilityView *)self center];
  traitCollection = [(PLKLegibilityView *)self traitCollection];
  [traitCollection displayScale];
  UIRectCenteredAboutPointScale();

  [(UIView *)self plk_setBoundsAndPositionFromFrame:?];

  [(PLKLegibilityView *)self layoutIfNeeded];
}

- (void)setHideForegroundContent:(BOOL)content
{
  if (self->_hideForegroundContent != content)
  {
    self->_hideForegroundContent = content;
    [(PLKLegibilityView *)self _updateContentViewForLegibilityChanges];
  }
}

- (void)setBackdropAware:(BOOL)aware
{
  if (self->_isBackdropAware != aware)
  {
    self->_isBackdropAware = aware;
    [(PLKLegibilityView *)self noteBackdropAwarenessTraitDidUpdate];
  }
}

- (void)setTraitBasedBackdropAwarenessEnabled:(BOOL)enabled
{
  if (self->_isTraitBasedBackdropAwarenessEnabled != enabled)
  {
    self->_isTraitBasedBackdropAwarenessEnabled = enabled;
    [(PLKLegibilityView *)self noteBackdropAwarenessTraitDidUpdate];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  image = [(_PFTImageView *)self->_contentView image];
  if (image == imageCopy || [imageCopy isEqual:?])
  {
    [(PLKLegibilityView *)self _updateContentViewForLegibilityChanges];
  }

  else
  {
    [(_PFTImageView *)self->_contentView setImage:?];
    traitCollection = [(PLKLegibilityView *)self traitCollection];
    [traitCollection displayScale];
    v7 = v6;

    [(PLKLegibilityView *)self bounds];
    [(UIView *)self->_containerView plk_setBoundsAndPositionFromFrame:?];
    [imageCopy size];
    BSRectWithSize();
    UIRectCenteredIntegralRectScale();
    [(UIView *)self->_contentView plk_setBoundsAndPositionFromFrame:v7];
    [(PLKLegibilityView *)self invalidateIntrinsicContentSize];
    [(PLKLegibilityView *)self _updateContentViewForLegibilityChanges];
    activeContentImageFuture = self->_activeContentImageFuture;
    self->_activeContentImageFuture = 0;
  }
}

- (void)setShadowImage:(id)image
{
  imageCopy = image;
  image = [(_PFTImageView *)self->_shadowView image];
  if (image == imageCopy || [imageCopy isEqual:?])
  {
    [(PLKLegibilityView *)self _updateShadowViewForLegibilityChanges];
  }

  else
  {
    [(_PFTImageView *)self->_shadowView setImage:?];
    traitCollection = [(PLKLegibilityView *)self traitCollection];
    [traitCollection displayScale];
    v7 = v6;

    [(PLKLegibilityView *)self bounds];
    [imageCopy size];
    BSRectWithSize();
    UIRectCenteredIntegralRectScale();
    [(UIView *)self->_containerView plk_setBoundsAndPositionFromFrame:v7];
    [(UIView *)self->_shadowView plk_setBoundsAndPositionFromFrame:?];
    [(PLKLegibilityView *)self _updateShadowViewForLegibilityChanges];
    activeLegibilityImageFuture = self->_activeLegibilityImageFuture;
    self->_activeLegibilityImageFuture = 0;
  }
}

- (void)setContent:(id)content
{
  if (self->_content != content)
  {
    [(PLKLegibilityView *)self _setLegibilityNeedsUpdate:?];
  }
}

- (BOOL)_shouldBeBackdropAware
{
  if (!self->_isTraitBasedBackdropAwarenessEnabled)
  {
    return self->_isBackdropAware;
  }

  traitCollection = [(PLKLegibilityView *)self traitCollection];
  plk_shouldBeBackdropAware = [traitCollection plk_shouldBeBackdropAware];

  if (!plk_shouldBeBackdropAware)
  {
    return self->_isBackdropAware;
  }

  bOOLValue = [plk_shouldBeBackdropAware BOOLValue];

  return bOOLValue;
}

- (void)_setLegibilityNeedsUpdate:(id)update
{
  updateCopy = update;
  BSDispatchQueueAssertMain();
  v6 = [updateCopy isEqualToLegibilityContent:?];
  if ((v6 & 1) == 0)
  {
    v7 = PLKLogCommon(v6);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

    if (v8)
    {
      v10 = PLKLogCommon(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(PLKLegibilityView *)self _setLegibilityNeedsUpdate:updateCopy, v10];
      }
    }

    v11 = (self->_asyncUpdateCounter + 1);
    self->_asyncUpdateCounter = v11;
    objc_storeStrong(&self->_content, update);
    if (!self->_content || (+[PLKLegibilityContent noContent], v12 = objc_claimAutoreleasedReturnValue(), v12, v12 == updateCopy))
    {
      activeLegibilityImageFuture = self->_activeLegibilityImageFuture;
      self->_activeLegibilityImageFuture = 0;

      activeContentImageFuture = self->_activeContentImageFuture;
      self->_activeContentImageFuture = 0;

      [(PLKLegibilityView *)self setImage:?];
      [(PLKLegibilityView *)self setShadowImage:?];
    }

    else
    {
      objc_initWeak(location, self);
      v31[0] = 0;
      v31[1] = v31;
      v31[2] = 0x2020000000;
      v32 = 0;
      contentImageFuture = [updateCopy contentImageFuture];
      if (contentImageFuture == self->_activeContentImageFuture)
      {
        [(PLKLegibilityView *)self setImage:?];
      }

      else
      {
        objc_storeStrong(&self->_activeContentImageFuture, contentImageFuture);
        v14 = self->_activeContentImageFuture;
        v25 = MEMORY[0x277D85DD0];
        v26 = 3221225472;
        v27 = __47__PLKLegibilityView__setLegibilityNeedsUpdate___block_invoke;
        v28 = &unk_27835B708;
        objc_copyWeak(v30, location);
        v30[1] = v11;
        v29 = v31;
        mainThreadScheduler = [MEMORY[0x277D3EC60] mainThreadScheduler];
        [PFTFuture addCompletionBlock:v14 scheduler:"addCompletionBlock:scheduler:"];

        objc_destroyWeak(v30);
      }

      v23[0] = 0;
      v23[1] = v23;
      v23[2] = 0x2020000000;
      v24 = 0;
      legibilityImageFuture = [updateCopy legibilityImageFuture];
      if (legibilityImageFuture == self->_activeLegibilityImageFuture)
      {
        [(PLKLegibilityView *)self setShadowImage:?];
      }

      else
      {
        objc_storeStrong(&self->_activeLegibilityImageFuture, legibilityImageFuture);
        v19 = self->_activeLegibilityImageFuture;
        v21 = MEMORY[0x277D85DD0];
        objc_copyWeak(v22, location);
        v22[1] = v11;
        mainThreadScheduler2 = [MEMORY[0x277D3EC60] mainThreadScheduler];
        [PFTFuture addCompletionBlock:v19 scheduler:"addCompletionBlock:scheduler:"];

        objc_destroyWeak(v22);
      }

      _Block_object_dispose(v23, 8);
      _Block_object_dispose(v31, 8);
      objc_destroyWeak(location);
    }
  }
}

void __47__PLKLegibilityView__setLegibilityNeedsUpdate___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained && *(a1 + 48) == WeakRetained[57])
  {
    [WeakRetained setImage:?];
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void __47__PLKLegibilityView__setLegibilityNeedsUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained && *(a1 + 48) == WeakRetained[57])
  {
    [WeakRetained setShadowImage:?];
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

- (void)noteBackdropAwarenessTraitDidUpdate
{
  [(PLKLegibilityView *)self _updateContentViewForLegibilityChanges];

  [(PLKLegibilityView *)self _updateShadowViewForLegibilityChanges];
}

- (BOOL)_updateTraitBasedBackdropAwareness
{
  v11 = *MEMORY[0x277D85DE8];
  backdropAwarenessTraitRegistration = self->_backdropAwarenessTraitRegistration;
  if (!self->_isTraitBasedBackdropAwarenessEnabled)
  {
    if (backdropAwarenessTraitRegistration)
    {
      [(PLKLegibilityView *)self unregisterForTraitChanges:?];
      v9 = self->_backdropAwarenessTraitRegistration;
      self->_backdropAwarenessTraitRegistration = 0;

      return 1;
    }

    return 0;
  }

  if (backdropAwarenessTraitRegistration)
  {
    return 0;
  }

  v4 = objc_opt_self();
  v5 = 1;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:v11];
  v7 = [PLKLegibilityView registerForTraitChanges:"registerForTraitChanges:withTarget:action:" withTarget:? action:?];
  v8 = self->_backdropAwarenessTraitRegistration;
  self->_backdropAwarenessTraitRegistration = v7;

  return v5;
}

- (CGSize)intrinsicContentSize
{
  [(_PFTImageView *)self->_contentView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  [_PFTImageView systemLayoutSizeFittingSize:"systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority:" withHorizontalFittingPriority:? verticalFittingPriority:?];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)_setLegibilityNeedsUpdate:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218242;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_21E5D5000, log, OS_LOG_TYPE_DEBUG, "<PLKLegiblityView:%p _setLegibilityNeedsUpdate:%@>", &v3, 0x16u);
}

@end