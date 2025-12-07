@interface LACUIPackagedView
- (BOOL)_isRendered;
- (CGPoint)convertPointToSublayerCoordinates:(CGPoint)coordinates;
- (CGRect)convertRectFromSublayerCoordinates:(CGRect)coordinates;
- (LACUIPackagedView)initWithURL:(id)l error:(id *)error;
- (void)_setState:(int)state animated:(int)animated allowRetry:(void *)retry completion:;
- (void)_updateRootLayer;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setStateNamed:(id)named animated:(BOOL)animated completion:(id)completion;
@end

@implementation LACUIPackagedView

- (LACUIPackagedView)initWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v22.receiver = self;
  v22.super_class = LACUIPackagedView;
  v7 = [(LACUIPackagedView *)&v22 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = *MEMORY[0x277CDA7F8];
  v21 = 0;
  v9 = [MEMORY[0x277CD9F28] packageWithContentsOfURL:lCopy type:v8 options:0 error:&v21];
  v10 = v21;
  v11 = v10;
  if (error)
  {
    v10 = v10;
    *error = v11;
  }

  if (v9)
  {
    rootLayer = [v9 rootLayer];
    rootLayer = v7->_rootLayer;
    v7->_rootLayer = rootLayer;

    -[CALayer setGeometryFlipped:](v7->_rootLayer, "setGeometryFlipped:", [v9 isGeometryFlipped]);
    layer = [(LACUIPackagedView *)v7 layer];
    [layer setMasksToBounds:0];

    layer2 = [(LACUIPackagedView *)v7 layer];
    [layer2 addSublayer:v7->_rootLayer];

    v16 = [[LACUIPackagedViewStateController alloc] initWithLayer:v7->_rootLayer];
    stateController = v7->_stateController;
    v7->_stateController = v16;

LABEL_6:
    v18 = v7;
    goto LABEL_10;
  }

  v19 = LA_LOG_LACUIPackagedView(v10);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [(LACUIPackagedView *)lCopy initWithURL:v11 error:v19];
  }

  v18 = 0;
LABEL_10:

  return v18;
}

- (void)setStateNamed:(id)named animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  namedCopy = named;
  v10 = [[LACUIPackagedViewState alloc] initWithName:namedCopy];

  [(LACUIPackagedView *)self setState:v10 animated:animatedCopy completion:completionCopy];
}

- (CGRect)convertRectFromSublayerCoordinates:(CGRect)coordinates
{
  rootLayer = self->_rootLayer;
  if (rootLayer)
  {
    objc_msgSend_transform(rootLayer, a2, coordinates.origin.x, coordinates.origin.y, coordinates.size.width, coordinates.size.height);
  }

  CA_CGRectApplyTransform();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGPoint)convertPointToSublayerCoordinates:(CGPoint)coordinates
{
  rootLayer = self->_rootLayer;
  if (rootLayer)
  {
    objc_msgSend_transform(rootLayer, a2, coordinates.x, coordinates.y);
  }

  else
  {
    memset(&v6, 0, sizeof(v6));
  }

  CATransform3DInvert(&v7, &v6);
  CA_CGPointApplyTransform();
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = LACUIPackagedView;
  [(LACUIPackagedView *)&v3 layoutSubviews];
  [(LACUIPackagedView *)self _updateRootLayer];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = LACUIPackagedView;
  [(LACUIPackagedView *)&v3 didMoveToWindow];
  if (self->_setInitialStateWhenMovedToWindow)
  {
    [(LACUIPackagedViewStateController *)self->_stateController setInitialState];
  }
}

- (void)_setState:(int)state animated:(int)animated allowRetry:(void *)retry completion:
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a2;
  retryCopy = retry;
  if (self)
  {
    if (state)
    {
      window = [self window];

      if (!window)
      {
        if (animated)
        {
          objc_initWeak(location, self);
          v13 = dispatch_time(0, 10000000);
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __62__LACUIPackagedView__setState_animated_allowRetry_completion___block_invoke;
          v19[3] = &unk_27981EB70;
          objc_copyWeak(&v22, location);
          v20 = v9;
          stateCopy = state;
          v21 = retryCopy;
          dispatch_after(v13, MEMORY[0x277D85CD0], v19);

          objc_destroyWeak(&v22);
          objc_destroyWeak(location);
          goto LABEL_15;
        }

        v16 = LA_LOG_LACUIPackagedView(v12);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *location = 138412546;
          *&location[4] = self;
          v25 = 2112;
          v26 = v9;
          _os_log_error_impl(&dword_256063000, v16, OS_LOG_TYPE_ERROR, "%@ animated transition to '%@' state will be skipped because view is not rendered", location, 0x16u);
        }
      }

      v15 = self[51];
      window2 = [self window];
      v14 = window2 != 0;
    }

    else
    {
      v14 = 0;
      v15 = self[51];
    }

    if (retryCopy)
    {
      v18 = retryCopy;
    }

    else
    {
      v18 = &__block_literal_global_12;
    }

    [v15 setState:v9 animated:v14 completion:v18];
  }

LABEL_15:
}

- (void)_updateRootLayer
{
  if (self)
  {
    v1 = self[53];
    [self bounds];

    LACUILayerScaleToFitInRect(v1, v2, v3, v4, v5);
  }
}

- (BOOL)_isRendered
{
  if (!self)
  {
    return 0;
  }

  window = [self window];
  v2 = window != 0;

  return v2;
}

void __62__LACUIPackagedView__setState_animated_allowRetry_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [(LACUIPackagedView *)WeakRetained _setState:*(a1 + 56) animated:0 allowRetry:*(a1 + 40) completion:?];
}

- (void)initWithURL:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_256063000, log, OS_LOG_TYPE_ERROR, "Failed to load %{public}@: %{public}@", &v3, 0x16u);
}

@end