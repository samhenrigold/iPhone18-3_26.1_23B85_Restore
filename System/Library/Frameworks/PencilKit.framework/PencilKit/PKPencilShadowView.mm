@interface PKPencilShadowView
+ (id)shadowViewForScene:(id)scene;
+ (void)createShadowViewForSceneIfNecessary:(id)necessary;
+ (void)hideShadowViewForSceneIfNecessary:(id)necessary;
- (CGPoint)location;
- (PKPencilShadowView)initWithFrame:(CGRect)frame;
- (id)_updateFrameIfNecessary;
- (uint64_t)_shadowShouldBeVisibleForCurrentTiledView;
- (uint64_t)_updateFrame;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)keepVisibleInTiledView:(id)view;
- (void)layoutSubviews;
- (void)pauseUpdateCycle;
- (void)setLocation:(CGPoint)location;
- (void)updateInk:(id)ink animated:(BOOL)animated;
- (void)updateOpacity:(double)opacity animated:(BOOL)animated;
@end

@implementation PKPencilShadowView

- (PKPencilShadowView)initWithFrame:(CGRect)frame
{
  v35.receiver = self;
  v35.super_class = PKPencilShadowView;
  v3 = [(PKPencilShadowView *)&v35 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_minimumFrameDuration = 0.00833333333;
    v3->_shadowAlphaMultiplier = 1.0;
    +[PKMetalUtility layerContentsScale];
    v4->_contentScale = v5;
    +[PKMetalPencilShadowRenderer pixelSize];
    contentScale = v4->_contentScale;
    v4->_viewSize.width = v7 / contentScale;
    v4->_viewSize.height = v8 / contentScale;
    v9 = +[PKHoverSettings sharedSettings];
    [v9 toolShadowMaxOpacityInDrawingCanvas];
    v4->_shadowAlpha = v10;

    v11 = objc_alloc_init(MEMORY[0x1E69793F0]);
    objc_storeStrong(&v4->_metalLayer, v11);
    [(CAMetalLayer *)v4->_metalLayer setPixelFormat:80];
    layer = [(PKPencilShadowView *)v4 layer];
    [layer addSublayer:v11];

    v13 = +[PKMetalUtility defaultDevice];
    [(CAMetalLayer *)v11 setDevice:v13];

    [(CAMetalLayer *)v11 setOpaque:0];
    [(CAMetalLayer *)v11 setFramebufferOnly:1];
    +[PKMetalPencilShadowRenderer pixelSize];
    [(CAMetalLayer *)v11 setDrawableSize:?];
    [(CAMetalLayer *)v11 setContentsScale:v4->_contentScale];
    [(CAMetalLayer *)v11 setPresentsWithTransaction:1];
    [(CAMetalLayer *)v11 setAllowsHitTesting:0];
    [(CAMetalLayer *)v11 setLowLatency:0];
    if (objc_opt_respondsToSelector())
    {
      [(CAMetalLayer *)v11 setLowWorkload:1];
    }

    metalLayer = v4->_metalLayer;
    v4->_metalLayer = v11;
    v15 = v11;

    [(PKPencilShadowView *)v4 setNeedsLayout];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_attr_make_with_qos_class(v16, QOS_CLASS_USER_INTERACTIVE, 0);

    v18 = dispatch_queue_create("com.apple.pencilkit.shadowRenderer", v17);
    renderQueue = v4->_renderQueue;
    v4->_renderQueue = v18;

    device = [(CAMetalLayer *)v4->_metalLayer device];
    v21 = [PKMetalResourceHandler sharedResourceHandlerWithDevice:device];

    v22 = [PKMetalPencilShadowRenderer alloc];
    device2 = [(CAMetalLayer *)v4->_metalLayer device];
    shaderLibrary = [(PKMetalResourceHandler *)v21 shaderLibrary];
    v25 = [(PKMetalPencilShadowRenderer *)v22 initWithDevice:device2 library:shaderLibrary];
    shadowRenderer = v4->_shadowRenderer;
    v4->_shadowRenderer = v25;

    v4->_updateCyclePaused = 1;
    [(PKPencilShadowView *)v4 setUserInteractionEnabled:0];
    layer2 = [(PKPencilShadowView *)v4 layer];
    [layer2 setAllowsHitTesting:0];

    [(PKPencilShadowView *)v4 setAnchorPoint:0.5, 0.0];
    v28 = v4->_renderQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__PKPencilShadowView_initWithFrame___block_invoke;
    block[3] = &unk_1E82D7148;
    v29 = v4;
    v34 = v29;
    dispatch_async(v28, block);
    v30 = +[PKRendererVSyncController sharedController];
    [(PKRendererVSyncController *)v30 addRendererController:v29];

    v31 = +[PKRendererVSyncController sharedController];
    v29->_useVSyncController = [(PKRendererVSyncController *)v31 isActive];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[PKRendererVSyncController sharedController];
  [(PKRendererVSyncController *)v3 removeRendererController:?];

  [(NSTimer *)self->_idleTimer invalidate];
  idleTimer = self->_idleTimer;
  self->_idleTimer = 0;

  v5.receiver = self;
  v5.super_class = PKPencilShadowView;
  [(PKPencilShadowView *)&v5 dealloc];
}

+ (void)createShadowViewForSceneIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if (_UIUpdateCycleEnabled())
  {
    v3 = [PKPencilObserverInteraction interactionForScene:necessaryCopy];
    [(PKPencilObserverInteraction *)v3 createShadowViewIfNecessary];
  }
}

+ (void)hideShadowViewForSceneIfNecessary:(id)necessary
{
  v3 = [PKPencilObserverInteraction interactionForScene:necessary];
  if (v3)
  {
    *(v3 + 32) = 0;
    v5 = v3;
    [*(v3 + 48) removeFromSuperview];
    v4 = v5[6];
    v5[6] = 0;

    v3 = v5;
  }
}

+ (id)shadowViewForScene:(id)scene
{
  v3 = [PKPencilObserverInteraction interactionForScene:scene];
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 48);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

void __38__PKPencilShadowView_startUpdateCycle__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _UIMediaTimeForMachTime();
  v5 = v4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained;
    [WeakRetained bounds];
    IsEmpty = CGRectIsEmpty(v12);
    v7 = v10;
    if (!IsEmpty && (*(v10 + 546) & 1) == 0)
    {
      v9 = v5 + *(v10 + 472) * 2.0 + -0.001;
      if (CACurrentMediaTime() < v9)
      {
        atomic_store(*&v9, (v10 + 584));
      }

      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      [MEMORY[0x1E6979518] setAnimationDuration:0.0];
      [(PKPencilShadowView *)v10 _updateFrame];
      [MEMORY[0x1E6979518] commit];
      v7 = v10;
    }
  }
}

void __38__PKPencilShadowView_startUpdateCycle__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _UIMediaTimeForMachTime();
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 >= 1)
  {
    v7 = 1.0 / v6;
    mach_absolute_time();
    _UIMediaTimeForMachTime();
    v9 = v5 - v7 - v8;
    if (v9 > 0.0 && v9 < v7 / 3.0)
    {
      v11 = _UIMachTimeForMediaTime();
      mach_wait_until(v11);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    v49 = WeakRetained;
    [WeakRetained bounds];
    IsEmpty = CGRectIsEmpty(v72);
    v13 = v49;
    if (!IsEmpty)
    {
      ShouldBeVisibleForCurrentTiled = [(PKPencilShadowView *)v49 _shadowShouldBeVisibleForCurrentTiledView];
      v16 = v49;
      if ((ShouldBeVisibleForCurrentTiled & 1) != 0 || *(v49 + 416) == 0.0)
      {
        v17 = *(v49 + 552);
        *(v49 + 552) = v17 + 1;
        *(v49 + 546) = (v17 < 15) & v17;
        if (*(v49 + 576) == 1 && (*(v49 + 546) & 1) == 0)
        {
          v18 = COERCE_DOUBLE(atomic_load((v49 + 584)));
          if (v5 < v18)
          {
            v19 = -5;
            while (!__CFADD__(v19++, 1))
            {
              usleep(0xFAu);
              v16 = v49;
              v21 = COERCE_DOUBLE(atomic_load((v49 + 584)));
              if (v5 >= v21)
              {
                goto LABEL_21;
              }
            }

            *(v16 + 546) = 1;
            _UIMachTimeForMediaTime();
            kdebug_trace();
            v16 = v49;
          }
        }

LABEL_21:
        v22 = *(v16 + 424);
        v23 = *(v16 + 416);
        v24 = 10.0;
        if (v23 > v22)
        {
          v24 = 30.0;
        }

        v25 = (v23 + v22 * (v24 + -1.0)) / v24;
        *(v16 + 424) = v25;
        v26 = *(v16 + 632) * (*(v16 + 480) * v25);
        v27 = 0.0;
        if (v26 >= 0.00390625)
        {
          v27 = v26;
          if (v26 > 0.99609375)
          {
            v27 = 1.0;
          }
        }

        v28 = CACurrentMediaTime();
        v29 = v49;
        if (*(v49 + 624) && *(v49 + 416) == 1.0 && *(v49 + 424) > 0.9 && v28 - *(v49 + 496) > 0.1 && (*(v49 + 544) & 1) == 0)
        {
          [v49 updateInk:0 animated:1];
          v29 = v49;
        }

        [v29 zPosition];
        v31 = v30;
        [v49 altitude];
        v33 = v32;
        [v49 rollAngle];
        v35 = v34;
        v36 = *(v49 + 512);
        v37 = [v49 ink];
        if (v36 == 1)
        {
          v38 = *(v49 + 528);

          v39 = *(v49 + 520);
          v40 = v49;
          v41 = v28 - *(v49 + 504) + v28 - *(v49 + 504);
          v42 = 1.0;
          if (v41 >= 1.0)
          {
            v43 = *(v49 + 528);
            *(v49 + 528) = 0;

            v44 = *(v49 + 520);
            *(v49 + 520) = 0;

            v40 = v49;
            *(v49 + 512) = 0;
            v37 = v38;
          }

          else
          {
            v37 = v38;
            v42 = v41;
          }
        }

        else
        {
          v39 = 0;
          v42 = 1.0;
          v40 = v49;
        }

        if (v27 == 0.0 || (*(v40 + 546) & 1) == 0)
        {
          [MEMORY[0x1E6979518] activate];
          [MEMORY[0x1E6979518] begin];
          [MEMORY[0x1E6979518] setDisableActions:1];
          [MEMORY[0x1E6979518] setAnimationDuration:0.0];
          [v49 setAlpha:v27];
          [v49 setHidden:v27 == 0.0];
          if (v27 > 0.0)
          {
            v45 = *(v49 + 440);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __48__PKPencilShadowView__vsyncWithTargetTimestamp___block_invoke;
            block[3] = &unk_1E82DAA60;
            block[4] = v49;
            v51 = v37;
            v52 = v39;
            v53 = v35;
            v54 = v33;
            v55 = v42;
            dispatch_async(v45, block);
            if ([*(v49 + 408) isDrawableAvailable])
            {
              v46 = [*(v49 + 408) nextDrawable];
              if (v46)
              {
                v65 = 0;
                v66 = &v65;
                v67 = 0x3032000000;
                v68 = __Block_byref_object_copy__21;
                v69 = __Block_byref_object_dispose__21;
                v70 = 0;
                v47 = *(v49 + 440);
                *buf = MEMORY[0x1E69E9820];
                v57 = 3221225472;
                v58 = __53__PKPencilShadowView__renderAtHeight_altitude_alpha___block_invoke;
                v59 = &unk_1E82DAA88;
                v62 = &v65;
                v60 = v49;
                v48 = v46;
                v61 = v48;
                v63 = v33;
                v64 = v31;
                dispatch_sync(v47, buf);
                [v66[5] waitUntilScheduled];
                [v48 present];

                _Block_object_dispose(&v65, 8);
              }

              else
              {
                v48 = 0;
              }
            }

            else
            {
              v48 = os_log_create("com.apple.pencilkit", "");
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1C7CCA000, v48, OS_LOG_TYPE_DEFAULT, "PKPencilShadowView: No drawable available; skipping frame", buf, 2u);
              }
            }
          }

          [MEMORY[0x1E6979518] commit];
          if (v27 == 0.0 && *(v49 + 416) == 0.0 && (*(v49 + 512) & 1) == 0)
          {
            [(PKPencilShadowView *)v49 pauseUpdateCycle];
          }
        }
      }

      else
      {
        [v49 updateOpacity:1 animated:0.0];
      }

      v13 = v49;
    }
  }
}

- (void)didMoveToSuperview
{
  superview = [(PKPencilShadowView *)self superview];

  if (superview)
  {
    window = [(PKPencilShadowView *)self window];
    screen = [window screen];
    maximumFramesPerSecond = [screen maximumFramesPerSecond];

    if (maximumFramesPerSecond >= 1)
    {
      self->_minimumFrameDuration = 1.0 / maximumFramesPerSecond;
    }
  }

  else
  {

    [(PKPencilShadowView *)self pauseUpdateCycle];
  }
}

- (void)pauseUpdateCycle
{
  if (self)
  {
    *(self + 545) = 1;
    if (*(self + 568))
    {
      _UIUpdateRequestDeactivate();
      _UIUpdateSequenceRemoveItem();
      _UIUpdateSequenceRemoveItem();
      *(self + 568) = 0;
      *(self + 560) = 0;
    }

    *(self + 424) = 0;
    [*(self + 488) invalidate];
    v2 = *(self + 488);
    *(self + 488) = 0;
  }
}

- (void)updateOpacity:(double)opacity animated:(BOOL)animated
{
  self->_targetOpacity = opacity;
  if (opacity > 0.0 && self->_updateCyclePaused)
  {
    self->_updateCyclePaused = 0;
    self->_presentationCount = 0;
    if (!self->_vsyncItem)
    {
      window = [(PKPencilShadowView *)self window];
      screen = [window screen];
      maximumFramesPerSecond = [screen maximumFramesPerSecond];

      objc_initWeak(&location, self);
      _UIUpdateRequestActivate();
      v14[2] = MEMORY[0x1E69E9820];
      v14[3] = 3221225472;
      v14[4] = __38__PKPencilShadowView_startUpdateCycle__block_invoke;
      v14[5] = &unk_1E82DA9E8;
      objc_copyWeak(&v15, &location);
      self->_commitItem = _UIUpdateSequenceInsertItem();
      from[0] = MEMORY[0x1E69E9820];
      from[1] = 3221225472;
      from[2] = __38__PKPencilShadowView_startUpdateCycle__block_invoke_2;
      from[3] = &unk_1E82DAA10;
      v14[1] = maximumFramesPerSecond;
      objc_copyWeak(v14, &location);
      self->_vsyncItem = _UIUpdateSequenceInsertItem();
      objc_destroyWeak(v14);
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    if (!self->_idleTimer)
    {
      objc_initWeak(from, self);
      v8 = MEMORY[0x1E695DFF0];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __45__PKPencilShadowView_updateOpacity_animated___block_invoke;
      v11[3] = &unk_1E82DAA38;
      objc_copyWeak(&v12, from);
      v9 = [v8 scheduledTimerWithTimeInterval:1 repeats:v11 block:0.5];
      idleTimer = self->_idleTimer;
      self->_idleTimer = v9;

      objc_destroyWeak(&v12);
      objc_destroyWeak(from);
    }
  }
}

void __45__PKPencilShadowView_updateOpacity_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (WeakRetained[61])
    {
      v3 = WeakRetained;
      v2 = CACurrentMediaTime();
      WeakRetained = v3;
      if (v2 - *(v3 + 62) > 10.0 && (v3[68] & 1) == 0)
      {
        [v3 updateOpacity:1 animated:0.0];
        WeakRetained = v3;
      }
    }
  }
}

- (void)updateInk:(id)ink animated:(BOOL)animated
{
  animatedCopy = animated;
  inkCopy = ink;
  ink = self->_ink;
  inkCopy2 = ink;
  v10 = inkCopy2;
  if (inkCopy2 != inkCopy)
  {
    identifier = [(PKInk *)inkCopy2 identifier];
    identifier2 = [(PKInk *)inkCopy identifier];
    v13 = [identifier isEqual:identifier2];

    if ((v13 & 1) == 0)
    {
      objc_storeStrong(&self->_ink, ink);
      if (animatedCopy && !self->_updateCyclePaused)
      {
        self->_animatingInk = 1;
        self->_animatingInkBeginTimestamp = CACurrentMediaTime();
        objc_storeStrong(&self->_animatingInkOld, ink);
        objc_storeStrong(&self->_animatingInkNew, ink);
      }

      else
      {
        self->_animatingInk = 0;
        renderQueue = self->_renderQueue;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __41__PKPencilShadowView_updateInk_animated___block_invoke;
        v15[3] = &unk_1E82D6E70;
        v15[4] = self;
        v16 = inkCopy;
        dispatch_async(renderQueue, v15);
      }
    }
  }
}

- (void)setLocation:(CGPoint)location
{
  self->_location = location;
  if (CACurrentMediaTime() - self->_latestKeepVisibleTimestamp < 10.0)
  {
    [(PKPencilShadowView *)self updateOpacity:1 animated:1.0];
  }

  [(PKPencilShadowView *)&self->super.super.super.isa _updateFrameIfNecessary];
}

- (id)_updateFrameIfNecessary
{
  if (result)
  {
    v1 = result;
    [result[51] bounds];
    v4 = v3 == *(v1 + 57) && v2 == *(v1 + 58);
    if (!v4 || ((result = [v1 bounds], v6 == *(v1 + 57)) ? (v7 = v5 == *(v1 + 58)) : (v7 = 0), !v7 || *(v1 + 545) == 1))
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      [MEMORY[0x1E6979518] setAnimationDuration:0.0];
      [(PKPencilShadowView *)v1 _updateFrame];
      v8 = MEMORY[0x1E6979518];

      return [v8 commit];
    }
  }

  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKPencilShadowView;
  [(PKPencilShadowView *)&v3 layoutSubviews];
  [(CAMetalLayer *)self->_metalLayer setFrame:0.0, 0.0, self->_viewSize.width, self->_viewSize.height];
}

- (uint64_t)_shadowShouldBeVisibleForCurrentTiledView
{
  if (result)
  {
    if (*(result + 544))
    {
      return 1;
    }

    else
    {
      v14 = v4;
      v15 = v3;
      v16 = v2;
      v17 = v1;
      v18 = v5;
      v19 = v6;
      v7 = objc_loadWeakRetained((result + 536));
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v10 = [bundleIdentifier isEqualToString:@"com.apple.freeform"];

      if (v10)
      {

        if (v7)
        {
          return 1;
        }
      }

      else
      {
        v11 = v7;
        if (v7)
        {
          window = [v7 window];

          v11 = v7;
          if (window)
          {
            v11 = v7;
            while (([v11 isHidden] & 1) == 0)
            {
              superview = [v11 superview];

              v11 = superview;
              if (!superview)
              {

                return 1;
              }
            }
          }
        }
      }

      CACurrentMediaTime();
      return 0;
    }
  }

  return result;
}

- (void)keepVisibleInTiledView:(id)view
{
  objc_storeWeak(&self->_keepVisibleInTiledView, view);
  self->_latestKeepVisibleTimestamp = CACurrentMediaTime();
  ShouldBeVisibleForCurrentTiled = [(PKPencilShadowView *)self _shadowShouldBeVisibleForCurrentTiledView];
  v5 = 0.0;
  if (ShouldBeVisibleForCurrentTiled)
  {
    v5 = 1.0;
  }

  [(PKPencilShadowView *)self updateOpacity:1 animated:v5];
}

- (uint64_t)_updateFrame
{
  v2 = *(self + 464) * 0.5;
  +[PKMetalPencilShadowRenderer maxBlurSize];
  v4 = v2 * v3;
  +[PKMetalPencilShadowRenderer pixelSize];
  memset(&v19, 0, sizeof(v19));
  v6 = v4 / v5;
  [self azimuth];
  CGAffineTransformMakeRotation(&v19, v7);
  v8 = v19.tx + v6 * v19.c + v19.a * 0.0;
  v9 = v19.ty + v6 * v19.d + v19.b * 0.0;
  [self location];
  v11 = v10 - *(self + 456) * 0.5 - v8;
  [self location];
  v13 = v12 - v9;
  v14 = *(self + 456);
  v15 = *(self + 464);
  v16 = *(MEMORY[0x1E695EFD0] + 16);
  *&v18.a = *MEMORY[0x1E695EFD0];
  *&v18.c = v16;
  *&v18.tx = *(MEMORY[0x1E695EFD0] + 32);
  [self setTransform:&v18];
  [self setFrame:{v11, v13, v14, v15}];
  v18 = v19;
  [self setTransform:&v18];
  return [*(self + 408) setFrame:{0.0, 0.0, *(self + 456), *(self + 464)}];
}

uint64_t __53__PKPencilShadowView__renderAtHeight_altitude_alpha___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 432) commandQueue];
  v3 = [v2 commandBuffer];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  +[PKMetalPencilShadowRenderer pixelSize];
  v7 = v6;
  v8 = *(*(a1 + 32) + 432);
  v9 = [*(a1 + 40) texture];
  [v8 renderInto:v9 commandBuffer:*(*(*(a1 + 48) + 8) + 40) position:1 azimuth:v7 * 0.5 altitude:0.0 height:0.0 alpha:*(a1 + 56) scale:*(a1 + 64) clearFramebuffer:1.0 grayscale:{1.0, 0.1}];

  v10 = *(*(*(a1 + 48) + 8) + 40);

  return [v10 commit];
}

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

@end