@interface CHUISWidgetHostViewControllerView
- (CGSize)intrinsicContentSize;
- (CHUISWidgetHostViewController)parentController;
- (double)_currentDisplayScale;
- (id)accessibilityHUDRepresentation;
- (void)setFrame:(CGRect)frame;
@end

@implementation CHUISWidgetHostViewControllerView

- (double)_currentDisplayScale
{
  BSDispatchQueueAssertMain();
  traitCollection = [(CHUISWidgetHostViewControllerView *)self traitCollection];
  [traitCollection displayScale];
  v5 = v4;

  return v5;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v33 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  metrics = [WeakRetained metrics];

  [(CHUISWidgetHostViewControllerView *)self _currentDisplayScale];
  [metrics _effectiveSizePixelAlignedForDisplayScale:?];
  v12 = width == v11 && height == v10;
  if (v12 || (v13 = objc_loadWeakRetained(&self->_parentController), v14 = [v13 metricsDefineSize], v13, (v14 & 1) == 0))
  {
    v26.receiver = self;
    v26.super_class = CHUISWidgetHostViewControllerView;
    height = [(CHUISWidgetHostViewControllerView *)&v26 setFrame:x, y, width, height];
    v20 = CHUISLogViewController(height);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_loadWeakRetained(&self->_parentController);
      _cachedSceneLogDigest = [v21 _cachedSceneLogDigest];
      v34.width = width;
      v34.height = height;
      v23 = NSStringFromCGSize(v34);
      *buf = 134218498;
      v28 = v21;
      v29 = 2114;
      v30 = _cachedSceneLogDigest;
      v31 = 2112;
      v32 = v23;
      _os_log_impl(&dword_1D928E000, v20, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Changing frame to %@", buf, 0x20u);
    }

    v24 = objc_loadWeakRetained(&self->_parentController);
    [v24 setPreferredContentSize:{width, height}];

    v16 = objc_loadWeakRetained(&self->_parentController);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __46__CHUISWidgetHostViewControllerView_setFrame___block_invoke;
    v25[3] = &__block_descriptor_64_e78___UIApplicationSceneTransitionContext_16__0__CHUISMutableWidgetSceneSettings_8l;
    *&v25[4] = x;
    *&v25[5] = y;
    *&v25[6] = width;
    *&v25[7] = height;
    [v16 modifySceneSettings:v25];
  }

  else
  {
    v16 = CHUISLogViewController(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_loadWeakRetained(&self->_parentController);
      _cachedSceneLogDigest2 = [v17 _cachedSceneLogDigest];
      *buf = 134218242;
      v28 = v17;
      v29 = 2114;
      v30 = _cachedSceneLogDigest2;
      _os_log_impl(&dword_1D928E000, v16, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Eating frame change in view because not configured to change the frame.", buf, 0x16u);
    }
  }
}

id __46__CHUISWidgetHostViewControllerView_setFrame___block_invoke(uint64_t a1, void *a2)
{
  [a2 setFrame:{0.0, 0.0, *(a1 + 48), *(a1 + 56)}];
  if ([MEMORY[0x1E69DD250] _isInAnimationBlockWithAnimationsEnabled])
  {
    v2 = objc_alloc_init(MEMORY[0x1E69DC6A0]);
    v3 = [MEMORY[0x1E69DCE70] _synchronizedDrawingFence];
    [v2 setAnimationFence:v3];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (CGSize)intrinsicContentSize
{
  parentController = [(CHUISWidgetHostViewControllerView *)self parentController];
  metricsDefineSize = [parentController metricsDefineSize];

  if (metricsDefineSize)
  {
    WeakRetained = objc_loadWeakRetained(&self->_parentController);
    metrics = [WeakRetained metrics];

    [(CHUISWidgetHostViewControllerView *)self _currentDisplayScale];
    [metrics _effectiveSizePixelAlignedForDisplayScale:?];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = CHUISWidgetHostViewControllerView;
    [(CHUISWidgetHostViewControllerView *)&v15 intrinsicContentSize];
    v8 = v11;
    v10 = v12;
  }

  v13 = v8;
  v14 = v10;
  result.height = v14;
  result.width = v13;
  return result;
}

- (id)accessibilityHUDRepresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  v4 = [WeakRetained _snapshotViewIgnoringEffects:1];

  [v4 setAutoresizingMask:18];
  [v4 setContentMode:1];
  traitCollection = [(CHUISWidgetHostViewControllerView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  v7 = objc_alloc(MEMORY[0x1E698E810]);
  if (userInterfaceStyle == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = [v7 initWithEffectType:0 backgroundType:v8 color:0];
  v10 = objc_alloc(MEMORY[0x1E698E818]);
  [v4 bounds];
  v11 = [v10 initWithFrame:?];
  [v11 setConfiguration:v9];
  contentView = [v11 contentView];
  [contentView addSubview:v4];

  v13 = [objc_alloc(MEMORY[0x1E69DC618]) initWithCustomView:v11];

  return v13;
}

- (CHUISWidgetHostViewController)parentController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  return WeakRetained;
}

@end