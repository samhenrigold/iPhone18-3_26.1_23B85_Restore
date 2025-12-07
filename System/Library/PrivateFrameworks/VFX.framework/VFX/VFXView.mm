@interface VFXView
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (id)deviceForOptions:(id)options;
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
- (BOOL)_canJitter;
- (BOOL)_checkAndUpdateDisplayLinkStateIfNeeded;
- (BOOL)framebufferOnly;
- (BOOL)isNodeInsideFrustum:(id)frustum withPointOfView:(id)view;
- (CGColorSpace)colorSpace;
- (CGRect)currentViewport;
- (CGSize)_updateBackingSize;
- (CGSize)backingSizeForBoundSize:(CGSize)size;
- (MTLCommandQueue)commandQueue;
- (NSString)description;
- (VFXCameraController)defaultCameraController;
- (VFXView)initWithCoder:(id)coder;
- (VFXView)initWithFrame:(CGRect)frame options:(id)options;
- (double)contentScaleFactor;
- (double)projectPoint:(const char *)point;
- (double)scaleFactor;
- (id)_rendererForPrepare;
- (id)effect;
- (id)hitTest:(CGPoint)test options:(id)options;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)legacyView;
- (id)nodesInsideFrustumWithPointOfView:(id)view;
- (id)postRenderCallback;
- (id)scene;
- (id)setupLegacyView;
- (id)snapshot;
- (id)statistics;
- (int64_t)preferredFramesPerSecond;
- (uint64_t)unprojectPoint:(const char *)point;
- (unint64_t)pixelFormat;
- (unsigned)resizingMode;
- (void)_adjustBackingLayerPixelFormat;
- (void)_backgroundDidChange;
- (void)_commonInit:(id)init;
- (void)_createDisplayLinkIfNeeded;
- (void)_drawWithUpdate:(id)update;
- (void)_enterBackground:(id)background;
- (void)_enterForeground:(id)foreground;
- (void)_initializeDisplayLinkWithCompletionHandler:(id)handler;
- (void)_resizeIfNeeded;
- (void)_setNeedsDisplay;
- (void)_systemTimeAnimationStarted:(id)started;
- (void)_updateContentsScaleFactor;
- (void)_updateOpacity;
- (void)_worldDidUpdateEnabledTriggers:(id)triggers;
- (void)applyConfiguration:(id)configuration;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)displayLink:(id)link didUpdate:(id)update;
- (void)encodeWithCoder:(id)coder;
- (void)eventHandlerWantsRedraw;
- (void)invalidateDisplayLink;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pauseDisplayLink;
- (void)renderWithCompletion:(id)completion;
- (void)renderWithPresentWithTransaction:(BOOL)transaction completion:(id)completion;
- (void)resumeDisplayLink;
- (void)safeAreaInsetsDidChange;
- (void)setAllowsCameraControl:(BOOL)control;
- (void)setAntialiasingMode:(unint64_t)mode;
- (void)setAutoenablesDefaultLighting:(BOOL)lighting;
- (void)setBackgroundColor:(id)color;
- (void)setColorSpace:(CGColorSpace *)space;
- (void)setContentScaleFactor:(double)factor;
- (void)setDebugOptions:(unint64_t)options;
- (void)setDisplayLink:(id)link;
- (void)setEffect:(id)effect;
- (void)setEventHandler:(id)handler;
- (void)setFramebufferOnly:(BOOL)only;
- (void)setHidden:(BOOL)hidden;
- (void)setJitteringEnabled:(BOOL)enabled;
- (void)setLowLatency:(BOOL)latency;
- (void)setNavigationCameraController:(id)controller;
- (void)setNeedsDisplay;
- (void)setPixelFormat:(unint64_t)format;
- (void)setPointOfCulling:(id)culling;
- (void)setPointOfView:(id)view;
- (void)setPointOfView:(id)view animate:(BOOL)animate;
- (void)setPostRenderCallback:(id)callback;
- (void)setPreferredFramesPerSecond:(int64_t)second;
- (void)setRenderMode:(unint64_t)mode;
- (void)setRendererKind:(unint64_t)kind;
- (void)setRendersContinuously:(BOOL)continuously;
- (void)setResizingMode:(unsigned __int8)mode;
- (void)setScaleFactor:(double)factor;
- (void)setScene:(id)scene;
- (void)setShowsStatistics:(BOOL)statistics;
- (void)setWantsExtendedDynamicRange:(BOOL)range;
- (void)setWorld:(id)world;
- (void)set_legacyView:(id)view;
- (void)switchToCameraNamed:(id)named;
- (void)switchToNextCamera;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
- (void)updateLayerLatency;
- (void)vfx_setBackingLayer:(id)layer;
- (void)vfx_setGestureRecognizers:(id)recognizers;
- (void)vfx_updateGestureRecognizers;
- (void)willMoveToWindow:(id)window;
@end

@implementation VFXView

- (void)_initializeDisplayLinkWithCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1AF3B5310;
  aBlock[3] = &unk_1E7A7FD10;
  objc_copyWeak(&v17, &location);
  v5 = handlerCopy;
  v16 = v5;
  v6 = _Block_copy(aBlock);
  objc_msgSend__renderThreadPriority(self, v7, v8);
  v10 = v9;
  memset(&v19, 0, sizeof(v19));
  pthread_attr_init(&v19);
  pthread_attr_setschedpolicy(&v19, 2);
  v11 = v10;
  if (v10 == 0.0)
  {
    v11 = 45;
  }

  v14.sched_priority = v11;
  *v14.__opaque = 0;
  pthread_attr_setschedparam(&v19, &v14);
  v12 = _Block_copy(v6);
  v13 = 0;
  pthread_create(&v13, &v19, sub_1AF3B5570, v12);
  pthread_attr_destroy(&v19);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

+ (id)deviceForOptions:(id)options
{
  v4 = CFXMTLCreateSystemDefaultDevice();
  if (!v4 && (byte_1EB658E89 & 1) == 0)
  {
    byte_1EB658E89 = 1;
    v5 = sub_1AF0D5194(0, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFBA8C(v5);
    }
  }

  return v4;
}

- (void)_adjustBackingLayerPixelFormat
{
  if (self->_legacyView || !self->_renderer)
  {
    return;
  }

  objc_msgSend_lock(self, a2, v2);
  objc_msgSend_lock(self->_renderer, v4, v5);
  isOpaque = objc_msgSend_isOpaque(self, v6, v7);
  v11 = objc_msgSend__renderContextMetal(self->_renderer, v9, v10);
  v13 = objc_msgSend_setIsOpaque_(v11, v12, isOpaque);
  if (sub_1AF28A130(v13, v14))
  {
    v17 = objc_msgSend_window(self, v15, v16);
    v20 = objc_msgSend_screen(v17, v18, v19);
    if (objc_msgSend_gamut(v20, v21, v22) == 1)
    {
      v23 = 1;
LABEL_8:
      v26 = 1;
      v25 = v23;
      goto LABEL_9;
    }
  }

  v24 = objc_msgSend_wantsExtendedDynamicRange(self, v15, v16);
  v23 = 0;
  v25 = 0;
  v26 = 0;
  if (v24)
  {
    goto LABEL_8;
  }

LABEL_9:
  v27 = objc_msgSend_antialiasingMode(self->_renderer, v15, v16);
  v30 = objc_msgSend__renderContextMetal(self->_renderer, v28, v29);
  objc_msgSend_setWantsWideGamut_(v30, v31, v25);
  objc_msgSend_colorSpace(self, v32, v33);
  backingLayer = self->_backingLayer;
  if ((*(self + 425) & 0x10) == 0)
  {
    v36 = v26 | 8;
    if (!v27)
    {
      v36 = v26;
    }

    if (isOpaque)
    {
      v37 = v36;
    }

    else
    {
      v37 = v36 | 0x10;
    }

    v38 = sub_1AF1F2C50(v37);
    objc_msgSend_setPixelFormat_(backingLayer, v39, v38);
  }

  objc_msgSend_setWantsExtendedDynamicRangeContent_(backingLayer, v34, (*(self + 424) >> 2) & 1);
  objc_msgSend_unlock(self->_renderer, v40, v41);

  objc_msgSend_unlock(self, v42, v43);
}

- (unint64_t)pixelFormat
{
  if (self->_legacyView)
  {
    legacyView = self->_legacyView;
  }

  else
  {
    legacyView = objc_msgSend_layer(self, a2, v2);
  }

  return objc_msgSend_pixelFormat(legacyView, a2, v2);
}

- (void)setPixelFormat:(unint64_t)format
{
  legacyView = self->_legacyView;
  if (legacyView)
  {

    objc_msgSend_setPixelFormat_(legacyView, a2, format);
  }

  else if (self->_renderer)
  {
    objc_msgSend_lock(self, a2, format);
    v8 = objc_msgSend_colorSpace(self, v6, v7);
    *(self + 425) |= 0x10u;
    v11 = objc_msgSend_layer(self, v9, v10);
    objc_msgSend_setPixelFormat_(v11, v12, format);
    if ((*(self + 425) & 0x20) != 0)
    {
      objc_msgSend_setColorSpace_(self, v13, v8);
    }

    objc_msgSend_unlock(self, v13, v14);

    objc_msgSend__setNeedsDisplay(self, v15, v16);
  }
}

- (CGColorSpace)colorSpace
{
  v3 = objc_msgSend_layer(self, a2, v2);

  return MEMORY[0x1EEE66B58](v3, sel_colorspace, v4);
}

- (void)setColorSpace:(CGColorSpace *)space
{
  objc_msgSend_lock(self, a2, space);
  *(self + 425) |= 0x20u;
  v7 = objc_msgSend_layer(self, v5, v6);
  objc_msgSend_setColorspace_(v7, v8, space);
  objc_msgSend_unlock(self, v9, v10);

  objc_msgSend__setNeedsDisplay(self, v11, v12);
}

- (void)_commonInit:(id)init
{
  sub_1AF332204(self, a2);
  *(self + 424) |= 1u;
  *(self + 424) |= 0x20u;
  self->_currentSystemTime = CACurrentMediaTime();
  self->_lock = objc_alloc_init(VFXRecursiveLock);
  v7 = objc_msgSend_layer(self, v5, v6);
  sub_1AF3B64F4(v7);
  objc_msgSend_vfx_setBackingLayer_(self, v8, v7);
  self->_device = objc_msgSend_device(v7, v9, v10);
  v11 = objc_opt_class();
  if (objc_msgSend_shouldObserveApplicationStateToPreventBackgroundGPUAccess(v11, v12, v13))
  {
    if (_UIApplicationIsExtension())
    {
      v18 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v16, v17);
      objc_msgSend_addObserver_selector_name_object_(v18, v19, self, sel__enterForeground_, *MEMORY[0x1E696A2C0], 0);
      v22 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v20, v21);
      v24 = MEMORY[0x1E696A2D8];
    }

    else
    {
      v25 = objc_msgSend__applicationKeyWindow(MEMORY[0x1E69DD2E8], v16, v17);
      isHostedInAnotherProcess = objc_msgSend__isHostedInAnotherProcess(v25, v26, v27);
      v31 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v29, v30);
      if (isHostedInAnotherProcess)
      {
        objc_msgSend_addObserver_selector_name_object_(v31, v32, self, sel__enterForeground_, @"_UIViewServiceHostDidBecomeActiveNotification", 0);
        v35 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v33, v34);
        objc_msgSend_addObserver_selector_name_object_(v35, v36, self, sel__enterBackground_, @"_UIViewServiceHostWillResignActiveNotification", 0);
        goto LABEL_8;
      }

      objc_msgSend_addObserver_selector_name_object_(v31, v32, self, sel__enterForeground_, *MEMORY[0x1E69DDAB0], 0);
      v22 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v37, v38);
      v24 = MEMORY[0x1E69DDBC8];
    }

    objc_msgSend_addObserver_selector_name_object_(v22, v23, self, sel__enterBackground_, *v24, 0);
  }

LABEL_8:
  v39 = objc_msgSend_mainScreen(MEMORY[0x1E69DCEB0], v14, v15);
  objc_msgSend_nativeScale(v39, v40, v41);
  objc_msgSend_setContentScaleFactor_(self, v42, v43);
  objc_msgSend_setContentMode_(self, v44, 4);
  objc_msgSend_setMultipleTouchEnabled_(self, v45, 1);
  if (self->_device)
  {
    v46 = [VFXRenderer alloc];
    self->_renderer = objc_msgSend__initWithDevice_options_isPrivateRenderer_privateRendererOwner_clearsOnDraw_(v46, v47, self->_device, init, 1, self, 1);
  }

  v48 = [VFXJitterer alloc];
  self->_jitterer = objc_msgSend_initWithDelegate_(v48, v49, self);
  v52 = objc_msgSend__defaultBackgroundColor(self, v50, v51);
  objc_msgSend_setBackgroundColor_(self, v53, v52);
  if (sub_1AF0D5C40(1))
  {
    objc_msgSend_setAllowsCameraControl_(self, v54, 1);
  }

  if (sub_1AF0D5C40(0))
  {
    objc_msgSend_setShowsStatistics_(self, v55, 1);
  }

  v56 = [VFXCameraNavigationController alloc];
  v59 = objc_msgSend_initWithView_(v56, v57, self);

  objc_msgSend_setNavigationCameraController_(self, v58, v59);
}

- (VFXView)initWithFrame:(CGRect)frame options:(id)options
{
  height = frame.size.height;
  width = frame.size.width;
  v11.receiver = self;
  v11.super_class = VFXView;
  v7 = [(VFXView *)&v11 initWithFrame:frame.origin.x, frame.origin.y];
  v9 = v7;
  if (v7)
  {
    v7->_boundsSize.width = width;
    v7->_boundsSize.height = height;
    objc_msgSend__commonInit_(v7, v8, options);
  }

  return v9;
}

- (VFXView)initWithCoder:(id)coder
{
  v30.receiver = self;
  v30.super_class = VFXView;
  v4 = [(VFXView *)&v30 initWithCoder:?];
  v7 = v4;
  if (v4)
  {
    p_boundsSize = &v4->_boundsSize;
    objc_msgSend_bounds(v4, v5, v6);
    *&p_boundsSize->width = v9;
    v7->_boundsSize.height = v10;
    objc_msgSend__commonInit_(v7, v11, 0);
    if (objc_msgSend_containsValueForKey_(coder, v12, @"autoenablesDefaultLighting"))
    {
      v14 = objc_msgSend_decodeBoolForKey_(coder, v13, @"autoenablesDefaultLighting");
      objc_msgSend_setAutoenablesDefaultLighting_(v7, v15, v14);
    }

    if (objc_msgSend_containsValueForKey_(coder, v13, @"jitteringEnabled"))
    {
      v17 = objc_msgSend_decodeBoolForKey_(coder, v16, @"jitteringEnabled");
      objc_msgSend_setJitteringEnabled_(v7, v18, v17);
    }

    if (objc_msgSend_containsValueForKey_(coder, v16, @"temporalAntialiasingEnabled"))
    {
      v20 = objc_msgSend_decodeBoolForKey_(coder, v19, @"temporalAntialiasingEnabled");
      objc_msgSend_setTemporalAntialiasingEnabled_(v7, v21, v20);
    }

    if (objc_msgSend_containsValueForKey_(coder, v19, @"allowsCameraControl"))
    {
      v23 = objc_msgSend_decodeBoolForKey_(coder, v22, @"allowsCameraControl");
      objc_msgSend_setAllowsCameraControl_(v7, v24, v23);
    }

    if (objc_msgSend_containsValueForKey_(coder, v22, @"backgroundColor"))
    {
      v25 = objc_opt_class();
      v27 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v26, v25, @"backgroundColor");
      objc_msgSend_setBackgroundColor_(v7, v28, v27);
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v25.receiver = self;
  v25.super_class = VFXView;
  [(VFXView *)&v25 encodeWithCoder:?];
  v7 = objc_msgSend_autoenablesDefaultLighting(self, v5, v6);
  objc_msgSend_encodeBool_forKey_(coder, v8, v7, @"autoenablesDefaultLighting");
  isJitteringEnabled = objc_msgSend_isJitteringEnabled(self, v9, v10);
  objc_msgSend_encodeBool_forKey_(coder, v12, isJitteringEnabled, @"jitteringEnabled");
  isTemporalAntialiasingEnabled = objc_msgSend_isTemporalAntialiasingEnabled(self, v13, v14);
  objc_msgSend_encodeBool_forKey_(coder, v16, isTemporalAntialiasingEnabled, @"temporalAntialiasingEnabled");
  v19 = objc_msgSend_allowsCameraControl(self, v17, v18);
  objc_msgSend_encodeBool_forKey_(coder, v20, v19, @"allowsCameraControl");
  v23 = objc_msgSend_backgroundColor(self, v21, v22);
  objc_msgSend_encodeObject_forKey_(coder, v24, v23, @"backgroundColor");
}

- (void)dealloc
{
  *(self + 424) |= 0x20u;
  *(self + 424) |= 0x80u;
  objc_msgSend_vfx_setGestureRecognizers_(self, a2, 0);
  objc_msgSend_invalidateDisplayLink(self, v3, v4);
  objc_msgSend_delegateWillDie(self->_jitterer, v5, v6);

  v9 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v7, v8);
  objc_msgSend_removeObserver_(v9, v10, self);

  objc_msgSend_viewWillDie(self->_renderer, v11, v12);
  objc_msgSend_worldWillChange(self->_navigationCameraController, v13, v14);
  objc_msgSend_setDelegate_(self->_navigationCameraController, v15, 0);

  objc_msgSend_removeObserver_forKeyPath_(self->_world, v16, self, @"background.contents");
  v17.receiver = self;
  v17.super_class = VFXView;
  [(VFXView *)&v17 dealloc];
}

- (void)set_legacyView:(id)view
{
  self->_legacyView = view;
  objc_msgSend_delegateWillDie(self->_jitterer, v5, v6);

  self->_jitterer = 0;
  v9 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v7, v8);
  objc_msgSend_removeObserver_(v9, v10, self);

  self->_backgroundColor = 0;
  self->_backingLayer = 0;

  self->_navigationCameraController = 0;
  self->_renderer = 0;

  objc_msgSend_invalidateDisplayLink(self, v11, v12);
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  objc_msgSend_setHidden_(self->_legacyView, a2, hidden);
  v5.receiver = self;
  v5.super_class = VFXView;
  [(VFXView *)&v5 setHidden:hiddenCopy];
  self->_isHidden = hiddenCopy;
}

- (void)applyConfiguration:(id)configuration
{
  v5 = objc_msgSend_wantsExtendedDynamicRange(configuration, a2, configuration);
  objc_msgSend_setWantsExtendedDynamicRange_(self, v6, v5);
  if (objc_msgSend_colorSpaceName(configuration, v7, v8))
  {
    v11 = objc_msgSend_colorSpaceName(configuration, v9, v10);
    v12 = CGColorSpaceCreateWithName(v11);
    if (v12)
    {
      v13 = v12;
      objc_msgSend_setColorSpace_(self, v9, v12);
      CFRelease(v13);
    }
  }

  if (objc_msgSend_pixelFormat(configuration, v9, v10))
  {
    v16 = objc_msgSend_pixelFormat(configuration, v14, v15);
    objc_msgSend_setPixelFormat_(self, v17, v16);
  }

  if (objc_msgSend_additiveWritesToAlpha(configuration, v14, v15))
  {

    objc_msgSend_setAdditiveWritesToAlpha_(self, v18, 1);
  }
}

- (void)setWorld:(id)world
{
  if (self->_world != world)
  {
    objc_msgSend_lock(self, a2, world);
    v7 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v5, v6);
    objc_msgSend_removeObserver_name_object_(v7, v8, self, @"kCFXWorldDidUpdateNotification", 0);
    objc_msgSend_removeObserver_forKeyPath_(self->_world, v9, self, @"background.contents");
    objc_msgSend_worldWillChange(self->_navigationCameraController, v10, v11);

    worldCopy = world;
    self->_world = worldCopy;
    if (worldCopy)
    {
      v15 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v13, v14);
      v18 = objc_msgSend_worldRef(self->_world, v16, v17);
      objc_msgSend_addObserver_selector_name_object_(v15, v19, self, sel__worldDidUpdate_, @"kCFXWorldDidUpdateNotification", v18);
      objc_msgSend_addObserver_forKeyPath_options_context_(self->_world, v20, self, @"background.contents", 0, @"kVFXViewObservingContext");
      v23 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v21, v22);
      objc_msgSend_addObserver_selector_name_object_(v23, v24, self, sel__worldDidUpdateEnabledTriggers_, @"kCFXWorldDidUpdateEnabledTriggersNotification", self->_world);
      v27 = objc_msgSend_debugOptions(self, v25, v26);
      objc_msgSend_setDebugOptions_(self, v28, v27);
    }

    renderer = self->_renderer;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = sub_1AF3B738C;
    v42[3] = &unk_1E7A7A770;
    v42[4] = self;
    objc_msgSend_setWorld_completionHandler_(renderer, v13, world, v42);
    v32 = objc_msgSend_preferredConfiguration(world, v30, v31);
    objc_msgSend_applyConfiguration_(self, v33, v32);
    objc_msgSend_worldDidChange(self->_navigationCameraController, v34, v35);
    objc_msgSend_startRuntimeThread(self->_world, v36, v37);
    objc_msgSend_unlock(self, v38, v39);
    objc_msgSend__updateOpacity(self, v40, v41);
  }
}

- (void)setRenderMode:(unint64_t)mode
{
  objc_msgSend_setRenderMode_(self->_renderer, a2, mode);

  objc_msgSend__setNeedsDisplay(self, v4, v5);
}

- (void)setRendererKind:(unint64_t)kind
{
  objc_msgSend_setRendererKind_(self->_renderer, a2, kind);

  objc_msgSend__setNeedsDisplay(self, v4, v5);
}

- (void)vfx_setBackingLayer:(id)layer
{
  backingLayer = self->_backingLayer;
  if (backingLayer != layer)
  {

    self->_backingLayer = layer;
  }
}

- (void)setJitteringEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  objc_msgSend_setEnabled_(self->_jitterer, a2, enabled);
  objc_msgSend_setJitteringEnabled_(self->_renderer, v5, enabledCopy);

  objc_msgSend__setNeedsDisplay(self, v6, v7);
}

- (BOOL)_canJitter
{
  v3 = objc_msgSend__engineContext(self->_renderer, a2, v2);
  if (v3)
  {
    v4 = v3;
    v6 = sub_1AF130548(v3);
    v6.n128_u64[0] = vmvn_s8(vclez_f32(*&vextq_s8(v6, v6, 8uLL)));
    if (v6.n128_u32[0] & v6.n128_u32[1])
    {
      sub_1AF12E2AC(v4, v5);
      LOBYTE(v3) = 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)updateLayerLatency
{
  v5 = objc_msgSend_lowLatency(self, a2, v2);
  backingLayer = self->_backingLayer;
  if (v5)
  {
    objc_msgSend_setMaximumDrawableCount_(backingLayer, v4, 2);
  }

  else
  {
    objc_msgSend_setMaximumDrawableCount_(backingLayer, v4, 3);
  }

  objc_msgSend_setLowLatency_(backingLayer, v7, v5);
}

- (void)setLowLatency:(BOOL)latency
{
  if (self->_legacyView)
  {
    self->_lowLatency = latency;
    objc_msgSend_setLowLatency_(self->_legacyView, a2, latency);
  }

  else if (self->_lowLatency != latency)
  {
    self->_lowLatency = latency;
    MEMORY[0x1EEE66B58](self, sel_updateLayerLatency, latency);
  }
}

- (void)displayLink:(id)link didUpdate:(id)update
{
  v6 = objc_msgSend_world(self, a2, link);
  v9 = objc_msgSend_worldRef(v6, v7, v8);
  if (v9)
  {
    v12 = sub_1AF1CF878(v9, v10);
    if (v12)
    {
      v15 = v12;
      v16 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * self) ^ ((0x9DDFEA08EB382D69 * self) >> 47));
      v17 = 0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47));
      objc_initWeak(&location, self);
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = sub_1AF3B7914;
      v34[3] = &unk_1E7A7FD48;
      objc_copyWeak(&v35, &location);
      v34[4] = update;
      objc_msgSend_triggerRenderWithRendererIdentifier_with_(v15, v18, v17, v34);
      objc_destroyWeak(&v35);
      objc_destroyWeak(&location);
    }

    else
    {
      v32 = objc_msgSend__renderingQueue(self, v13, v14);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1AF3B7A10;
      block[3] = &unk_1E7A7E198;
      block[4] = self;
      block[5] = update;
      dispatch_sync(v32, block);
    }
  }

  else
  {
    objc_msgSend__backingSize(self->_renderer, v10, v11);
    v23 = v22;
    if (v22 >= 1.0 && v21 >= 1.0)
    {
      v25 = v21;
      objc_msgSend_drawableSize(self->_backingLayer, v19, v20);
      if (v23 != v29 || v25 != v28)
      {
        objc_msgSend_setDrawableSize_(self->_backingLayer, v26, v27, v23, v25);
      }

      renderer = self->_renderer;

      MEMORY[0x1EEE66B58](renderer, sel_clearBackBufferWithUpdate_, update);
    }
  }
}

- (void)_updateContentsScaleFactor
{
  objc_msgSend_contentScaleFactor(self, a2, v2);
  *&v6 = v6;
  renderer = self->_renderer;

  objc_msgSend__setContentsScaleFactor_(renderer, v4, v5, v6);
}

- (CGSize)backingSizeForBoundSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  objc_msgSend__contentsScaleFactor(self->_renderer, a2, v3);
  v7 = v6;
  v8 = width * v6;
  v9 = height * v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)_updateBackingSize
{
  objc_msgSend_lock(self, a2, v2);
  objc_msgSend__updateContentsScaleFactor(self, v4, v5);
  objc_msgSend_bounds(self, v6, v7);
  self->_boundsSize.width = v8;
  self->_boundsSize.height = v9;
  objc_msgSend_backingSizeForBoundSize_(self, v10, v11, v8, v9);
  v13 = v12;
  v15 = v14;
  prof_beginFlame("Set drawableSize", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/Views/VFXView.m", 1041);
  objc_msgSend_setDrawableSize_(self->_backingLayer, v16, v17, v13, v15);
  prof_endFlame();
  objc_msgSend_unlock(self, v18, v19);
  v20 = v13;
  v21 = v15;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)_drawWithUpdate:(id)update
{
  if (!self->_legacyView)
  {
    if (*(self + 424) < 0 || (*(self + 424) & 0x20) != 0)
    {
      if ((*(self + 424) & 0x40) == 0)
      {
        return;
      }

      *(self + 424) &= ~0x40u;
    }

    self->_didTriggerRedrawWhileRendering = 0;
    objc_msgSend_stopIfNeeded(self->_jitterer, a2, update);
    objc_msgSend__displayLinkStatsTick(self->_renderer, v5, v6);
    objc_msgSend_lock(self, v7, v8);
    v11 = objc_msgSend_drawable(update, v9, v10);
    v14 = objc_msgSend_texture(v11, v12, v13);
    v17 = objc_msgSend_width(v14, v15, v16);
    v20 = objc_msgSend_drawable(update, v18, v19);
    v23 = objc_msgSend_texture(v20, v21, v22);
    v26 = objc_msgSend_height(v23, v24, v25);
    if (v17 && v26)
    {
      v29 = v17;
      v30 = v26;
      navigationCameraController = self->_navigationCameraController;
      v32 = CACurrentMediaTime();
      objc_msgSend_viewWillDrawAtTime_(navigationCameraController, v33, v34, v32);
      objc_msgSend_lock(self->_renderer, v35, v36);
      context = objc_autoreleasePoolPush();
      objc_msgSend__backingSize(self->_renderer, v37, v38);
      if (v42 != v29 || v41 != v30)
      {
        objc_msgSend__setBackingSize_(self->_renderer, v39, v40, v29, v30);
        objc_msgSend_set_viewport_(self->_renderer, v44, v45, 0.0);
      }

      objc_msgSend_lock(self->_world, v39, v40);
      objc_msgSend_setMetalDisplayLinkUpdate_(self->_renderer, v46, update);
      world = self->_world;
      if (world && (v50 = objc_msgSend_worldRef(world, v47, v48), (v52 = sub_1AF1CF8AC(v50, v51)) != 0))
      {
        v53 = sub_1AF0FB884(v52);
        objc_msgSend_beginTransaction(v53, v54, v55);
      }

      else
      {
        v53 = 0;
      }

      objc_msgSend__beginFrame(self->_renderer, v47, v48);
      v58 = objc_msgSend__engineContext(self->_renderer, v56, v57);
      v59 = sub_1AF12DE5C(v58);
      v61 = sub_1AF0D5194(v59, v60);
      if ((v59 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v62 = v61;
        if (os_signpost_enabled(v61))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v62, OS_SIGNPOST_INTERVAL_BEGIN, v59, "RenderFrame (View)", &unk_1AFF70A1D, buf, 2u);
        }
      }

      v63 = CACurrentMediaTime();
      objc_msgSend_targetTimestamp(update, v64, v65);
      if (v68 != 0.0)
      {
        objc_msgSend_targetTimestamp(update, v66, v67);
        v63 = v69;
      }

      self->_currentSystemTime = v63;
      objc_msgSend_updateAtTime_(self->_renderer, v66, v67, v63);
      objc_msgSend__render(self->_renderer, v70, v71);
      objc_msgSend__endFrame(self->_renderer, v72, v73);
      objc_msgSend_endTransaction(v53, v74, v75);
      v78 = objc_msgSend_unlock(self->_world, v76, v77);
      v80 = sub_1AF0D5194(v78, v79);
      if ((v59 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v81 = v80;
        if (os_signpost_enabled(v80))
        {
          *v99 = 0;
          _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v81, OS_SIGNPOST_INTERVAL_END, v59, "RenderFrame (View)", &unk_1AFF70A1D, v99, 2u);
        }
      }

      objc_autoreleasePoolPop(context);
      objc_msgSend_nextFrameTime(self->_renderer, v82, v83);
      v85 = v84;
      v86 = CACurrentMediaTime();
      objc_msgSend_unlock(self->_renderer, v87, v88);
      objc_msgSend_viewDidDrawAtTime_(self->_navigationCameraController, v89, v90, self->_currentSystemTime);
      if (objc_msgSend__checkAndUpdateDisplayLinkStateIfNeeded(self, v91, v92))
      {
        v95 = v85 - v86;
        if (v85 - v86 > 2.0)
        {
          objc_msgSend_restart(self->_jitterer, v93, v94, v95);
        }
      }

      objc_msgSend_unlock(self, v93, v94, v95);
      objc_msgSend__displayLinkStatsTack(self->_renderer, v96, v97);
    }

    else
    {

      objc_msgSend_unlock(self, v27, v28);
    }
  }
}

- (void)_resizeIfNeeded
{
  objc_msgSend_contentScaleFactor(self, a2, v2);
  v5 = v4;
  objc_msgSend_bounds(self, v6, v7);
  v12 = self->_boundsSize.width == v11 && self->_boundsSize.height == v10;
  if (!v12 || (v13 = v5, objc_msgSend__contentsScaleFactor(self->_renderer, v8, v9), v14 != v13))
  {
    objc_msgSend__updateBackingSize(self, v8, v9);

    objc_msgSend__setNeedsDisplay(self, v15, v16);
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = VFXView;
  [(VFXView *)&v5 layoutSubviews];
  objc_msgSend__resizeIfNeeded(self, v3, v4);
}

- (void)setPointOfView:(id)view animate:(BOOL)animate
{
  animateCopy = animate;
  objc_msgSend_begin(VFXTransaction, a2, view);
  if (animateCopy)
  {
    objc_msgSend_setAnimationDuration_(VFXTransaction, v7, v8, 0.75);
  }

  else
  {
    objc_msgSend_setAnimationDuration_(VFXTransaction, v7, v8, 0.0);
  }

  objc_msgSend_setPointOfView_(self, v9, view);

  objc_msgSend_commit(VFXTransaction, v10, v11);
}

- (void)setPointOfView:(id)view
{
  if (objc_msgSend_pointOfView(self, a2, view) != view)
  {
    objc_msgSend_cameraWillChange(self->_navigationCameraController, v5, v6);
    objc_msgSend_setPointOfView_(self->_renderer, v7, view);
    objc_msgSend_cameraDidChange(self->_navigationCameraController, v8, v9);
    v12 = objc_msgSend_world(self, v10, v11);
    IfNeeded = objc_msgSend_authoringEnvironmentForWorld_createIfNeeded_(VFXAuthoringEnvironment2, v13, v12, 0);

    MEMORY[0x1EEE66B58](IfNeeded, sel_didSetPointOfView_, view);
  }
}

- (CGRect)currentViewport
{
  (MEMORY[0x1EEE66B58])(self->_renderer, sel_currentViewport);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setPointOfCulling:(id)culling
{
  if (objc_msgSend_pointOfCulling(self, a2, culling) != culling)
  {
    renderer = self->_renderer;

    MEMORY[0x1EEE66B58](renderer, sel_setPointOfCulling_, culling);
  }
}

- (void)setAllowsCameraControl:(BOOL)control
{
  v4 = sub_1AF0D5C40(1) | control;
  if (v4 != objc_msgSend_enabled(self->_navigationCameraController, v5, v6))
  {
    navigationCameraController = self->_navigationCameraController;

    objc_msgSend_setEnabled_(navigationCameraController, v7, v4);
  }
}

- (VFXCameraController)defaultCameraController
{
  v3 = objc_msgSend_navigationCameraController(self, a2, v2);

  return objc_msgSend_cameraController(v3, v4, v5);
}

- (void)setWantsExtendedDynamicRange:(BOOL)range
{
  v3 = *(self + 424);
  if (((((v3 & 4) == 0) ^ range) & 1) == 0)
  {
    if (range)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    *(self + 424) = v3 & 0xFB | v4;
    *(self + 425) &= ~0x20u;
    *(self + 425) &= ~0x10u;
    objc_msgSend__adjustBackingLayerPixelFormat(self, a2, range);
  }
}

- (void)setRendersContinuously:(BOOL)continuously
{
  v3 = *(self + 424);
  if (((((v3 & 2) == 0) ^ continuously) & 1) == 0)
  {
    if (continuously)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *(self + 424) = v3 & 0xFD | v5;
    objc_msgSend_setRendersContinuously_(self->_renderer, a2, continuously);
    if ((*(self + 424) & 2) != 0)
    {
      v12 = objc_msgSend_displayLink(self, v6, v7);

      objc_msgSend_setPaused_(v12, v13, 0);
    }

    else
    {
      objc_msgSend_nextFrameTime(self->_renderer, v6, v7);
      if (v10 - CACurrentMediaTime() > 2.0)
      {
        jitterer = self->_jitterer;

        objc_msgSend_restart(jitterer, v8, v9);
      }
    }
  }
}

- (id)hitTest:(CGPoint)test options:(id)options
{
  y = test.y;
  objc_msgSend__flipY_(self, a2, options, test.x);
  renderer = self->_renderer;

  return MEMORY[0x1EEE66B58](renderer, sel__hitTest_viewport_options_, options);
}

- (BOOL)isNodeInsideFrustum:(id)frustum withPointOfView:(id)view
{
  renderer = self->_renderer;
  objc_msgSend__viewport(self, a2, frustum);

  return MEMORY[0x1EEE66B58](renderer, sel__isNodeInsideFrustum_withPointOfView_viewport_, frustum);
}

- (id)nodesInsideFrustumWithPointOfView:(id)view
{
  renderer = self->_renderer;
  objc_msgSend__viewport(self, a2, view);

  return MEMORY[0x1EEE66B58](renderer, sel__nodesInsideFrustumWithPointOfView_viewport_, view);
}

- (id)_rendererForPrepare
{
  CompatibleRenderer = objc_msgSend_makeCompatibleRenderer(self->_renderer, a2, v2);
  objc_msgSend__viewport(CompatibleRenderer, v5, v6);
  if (v9 == 0.0)
  {
    objc_msgSend_backingSizeForBoundSize_(self, v7, v8, self->_boundsSize.width, self->_boundsSize.height);
    v18 = v11;
    v19 = v10;
    objc_msgSend__setBackingSize_(CompatibleRenderer, v12, v13);
    v14.f64[0] = v19;
    v14.f64[1] = v18;
    objc_msgSend_set_viewport_(CompatibleRenderer, v15, v16, *vcvt_hight_f32_f64(0, v14).i64);
  }

  return CompatibleRenderer;
}

- (double)projectPoint:(const char *)point
{
  v5 = self[55];
  objc_msgSend__viewport(self, point, a4);
  objc_msgSend__projectPoint_viewport_(v5, v6, v7, a2, v8);
  LODWORD(a2) = v9;
  LODWORD(v10) = HIDWORD(v10);
  objc_msgSend__flipY_(self, v11, v12, v10);
  return COERCE_DOUBLE(__PAIR64__(v13, LODWORD(a2)));
}

- (uint64_t)unprojectPoint:(const char *)point
{
  LODWORD(a2) = HIDWORD(a2);
  objc_msgSend__flipY_(self, point, a4, a2);
  v5 = self[55];
  objc_msgSend__viewport(self, v6, v7);

  return MEMORY[0x1EEE66B58](v5, sel__unprojectPoint_viewport_, v8);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == @"kVFXViewObservingContext")
  {
    if (objc_msgSend_isEqualToString_(path, a2, @"background.contents", object, change))
    {

      objc_msgSend__updateOpacity(self, v7, v8);
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = VFXView;
    [(VFXView *)&v9 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  v17.receiver = self;
  v17.super_class = &OBJC_METACLASS___VFXView;
  v5 = objc_msgSendSuper2(&v17, sel_keyPathsForValuesAffectingValueForKey_);
  v8 = objc_msgSend__kvoKeysForwardedToRenderer(self, v6, v7);
  if (objc_msgSend_containsObject_(v8, v9, key))
  {
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v10, @"renderer.%@", key);
    v14 = objc_msgSend_setWithObject_(v11, v13, v12);
    return objc_msgSend_setByAddingObjectsFromSet_(v14, v15, v5);
  }

  return v5;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  v5 = objc_msgSend__kvoKeysForwardedToRenderer(self, a2, key);
  if (objc_msgSend_containsObject_(v5, v6, key))
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___VFXView;
  return objc_msgSendSuper2(&v8, sel_automaticallyNotifiesObserversForKey_, key);
}

- (void)setEventHandler:(id)handler
{
  objc_msgSend_setNavigationCameraController_(self, a2, handler);
  objc_msgSend_setView_(handler, v5, self);

  objc_msgSend_setAllowsCameraControl_(self, v6, 1);
}

- (void)setNavigationCameraController:(id)controller
{
  navigationCameraController = self->_navigationCameraController;
  if (navigationCameraController != controller)
  {
    objc_msgSend_setDelegate_(navigationCameraController, a2, 0);

    self->_navigationCameraController = controller;
    v8 = objc_msgSend_navigationCameraController(self, v6, v7);
    objc_msgSend_setDelegate_(v8, v9, self);

    MEMORY[0x1EEE66B58](self, sel_vfx_updateGestureRecognizers, v10);
  }
}

- (void)eventHandlerWantsRedraw
{
  v3 = objc_msgSend_displayLink(self, a2, v2);

  objc_msgSend_setPaused_(v3, v4, 0);
}

- (void)_backgroundDidChange
{
  objc_msgSend__updateOpacity(self, a2, v2);

  objc_msgSend__adjustBackingLayerPixelFormat(self, v4, v5);
}

- (void)_updateOpacity
{
  v4 = objc_msgSend_background(self->_world, a2, v2);
  v7 = objc_msgSend_contents(v4, v5, v6);
  v8 = sub_1AF3710D4(v7);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !v8)
  {
    v8 = objc_msgSend_backgroundColor(self, v9, v10);
    if (!v8)
    {
      v8 = objc_msgSend__defaultBackgroundColor(self, v9, v11);
    }
  }

  v20 = 0;
  objc_msgSend_vfx_CFXColorIgnoringColorSpace_success_(v8, v9, 0, &v20);
  LODWORD(v14) = HIDWORD(v12);
  v15 = *(self + 424);
  v16 = (v20 ^ 1) & 1u | (*(&v12 + 1) == 1.0);
  *(self + 424) = v15 & 0xFE | v20 ^ 1 | (*(&v12 + 1) == 1.0);
  if (v16 != (v15 & 1))
  {
    v17 = objc_msgSend_layer(self, v12, v13, v14);
    objc_msgSend_setOpaque_(v17, v18, v16);
    objc_msgSend_setOpaque_(self, v19, *(self + 424) & 1);
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  legacyView = self->_legacyView;
  if (legacyView)
  {

    objc_msgSend_setBackgroundColor_(legacyView, a2, color);
  }

  else
  {
    backgroundColor = self->_backgroundColor;
    if (backgroundColor != color)
    {

      self->_backgroundColor = colorCopy;
    }

    if (!colorCopy)
    {
      colorCopy = objc_msgSend__defaultBackgroundColor(self, a2, color);
    }

    v17.receiver = self;
    v17.super_class = VFXView;
    [(VFXView *)&v17 setBackgroundColor:colorCopy];
    v9 = objc_msgSend_traitCollection(self, v7, v8);
    v12 = objc_msgSend_world(self, v10, v11);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1AF3B8C8C;
    v16[3] = &unk_1E7A7E3B0;
    v16[4] = v9;
    v16[5] = self;
    v16[6] = colorCopy;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v13, v12, v16);
    objc_msgSend__backgroundDidChange(self, v14, v15);
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v14.receiver = self;
  v14.super_class = VFXView;
  [(VFXView *)&v14 traitCollectionDidChange:?];
  v7 = objc_msgSend_traitCollection(self, v5, v6);
  if (objc_msgSend_hasDifferentColorAppearanceComparedToTraitCollection_(v7, v8, change))
  {
    v11 = objc_msgSend_world(self, v9, v10);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1AF3B8E08;
    v13[3] = &unk_1E7A7E220;
    v13[4] = v7;
    v13[5] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v12, v11, v13);
  }
}

- (void)setAutoenablesDefaultLighting:(BOOL)lighting
{
  objc_msgSend_setAutoenablesDefaultLighting_(self->_renderer, a2, lighting);

  objc_msgSend__setNeedsDisplay(self, v4, v5);
}

- (MTLCommandQueue)commandQueue
{
  if (self->_legacyView)
  {
    return objc_msgSend_commandQueue(self->_legacyView, a2, v2);
  }

  else
  {
    return objc_msgSend_commandQueue(self->_renderer, a2, v2);
  }
}

- (void)setDisplayLink:(id)link
{
  displayLink = self->_displayLink;
  if (displayLink != link)
  {
    objc_msgSend_invalidate(displayLink, a2, link);

    self->_displayLink = link;
  }
}

- (void)invalidateDisplayLink
{
  objc_msgSend_invalidate(self->_displayLink, a2, v2);

  self->_displayLink = 0;
}

- (void)_createDisplayLinkIfNeeded
{
  if (!self->_legacyView && !self->_displayLink && !self->_displayLinkCreationRequested)
  {
    if (self->_renderer)
    {
      v4 = objc_msgSend_lowLatency(self, a2, v2);
      self->_displayLinkCreationRequested = 1;
      v8[0] = 0;
      v8[1] = v8;
      v8[2] = 0x3052000000;
      v8[3] = sub_1AF3B91E8;
      v8[4] = sub_1AF3B91F8;
      v8[5] = self;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = sub_1AF3B9204;
      v6[3] = &unk_1E7A7FD98;
      v6[4] = v8;
      v7 = v4;
      objc_msgSend__initializeDisplayLinkWithCompletionHandler_(self, v5, v6);
      _Block_object_dispose(v8, 8);
    }
  }
}

- (BOOL)_checkAndUpdateDisplayLinkStateIfNeeded
{
  displayLink = self->_displayLink;
  if (!displayLink)
  {
    return 0;
  }

  if ((*(self + 424) & 2) != 0 || self->_didTriggerRedrawWhileRendering)
  {
    v5 = 0;
  }

  else
  {
    v7 = objc_msgSend_eventHandler(self, a2, v2);
    v5 = objc_msgSend_wantsRedraw(v7, v8, v9) ^ 1;
    displayLink = self->_displayLink;
  }

  objc_msgSend_nextFrameTime(self->_renderer, a2, v2);

  return MEMORY[0x1EEE66B58](displayLink, sel_setPaused_nextFrameTimeHint_lastUpdate_, v5);
}

- (int64_t)preferredFramesPerSecond
{
  v4 = objc_msgSend_displayLink(self, a2, v2);
  if (v4)
  {
    objc_msgSend_preferredFrameRate(v4, v5, v6);
  }

  else
  {
    return self->_preferredFramePerSeconds;
  }

  return v7;
}

- (void)setPreferredFramesPerSecond:(int64_t)second
{
  legacyView = self->_legacyView;
  if (!legacyView)
  {
    v6 = objc_msgSend_displayLink(self, a2, second);
    if (v6)
    {
      *&v9 = second;
      objc_msgSend_setPreferredFrameRate_(v6, v7, v8, v9);
    }

    self->_preferredFramePerSeconds = second;
    v10 = objc_msgSend_renderer(self, v7, v8);
    legacyView = objc_msgSend__renderContextMetal(v10, v11, v12);
  }

  MEMORY[0x1EEE66B58](legacyView, sel_setPreferredFramesPerSecond_, second);
}

- (void)_setNeedsDisplay
{
  v4 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], a2, v2);
  if (objc_msgSend_isMainThread(v4, v5, v6))
  {
    if ((*(self + 424) & 0x20) == 0)
    {
      objc_msgSend_stopIfNeeded(self->_jitterer, v7, v8);
      displayLink = self->_displayLink;
      if (displayLink)
      {
        if (objc_msgSend_isPaused(displayLink, v9, v10))
        {
          v14 = self->_displayLink;

          objc_msgSend_setNeedsDisplay(v14, v12, v13);
        }
      }

      else
      {

        objc_msgSend__createDisplayLinkIfNeeded(self, v9, v10);
      }
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1AF3B95C8;
    block[3] = &unk_1E7A7A770;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_systemTimeAnimationStarted:(id)started
{
  v3 = objc_msgSend_displayLink(self, a2, started);

  objc_msgSend_setPaused_(v3, v4, 0);
}

- (void)_worldDidUpdateEnabledTriggers:(id)triggers
{
  v5 = objc_msgSend_debugOptions(self, a2, triggers);

  objc_msgSend_setDebugOptions_(self, v4, v5);
}

- (void)setShowsStatistics:(BOOL)statistics
{
  statisticsCopy = statistics;
  v5 = sub_1AF0D5C40(0);
  objc_msgSend_lock(self->_renderer, v6, v7);
  objc_msgSend_setShowsStatistics_(self->_renderer, v8, v5 | statisticsCopy);
  objc_msgSend_unlock(self->_renderer, v9, v10);

  objc_msgSend__setNeedsDisplay(self, v11, v12);
}

- (id)statistics
{
  VFXSetPerformanceStatisticsEnabled(1);
  v5 = objc_msgSend__copyPerformanceStatistics(self->_renderer, v3, v4);

  return v5;
}

- (id)snapshot
{
  width = self->_boundsSize.width;
  height = self->_boundsSize.height;
  objc_msgSend_contentScaleFactor(self, a2, v2);
  v7 = width * v6;
  objc_msgSend_contentScaleFactor(self, v8, v9);
  renderer = self->_renderer;

  return objc_msgSend_snapshotWithSize_(renderer, v10, v11, v7, height * v12);
}

- (NSString)description
{
  objc_msgSend_frame(self, a2, v2);
  v4 = NSStringFromCGRect(v16);
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v10 = objc_msgSend_world(self, v8, v9);
  v13 = objc_msgSend_pointOfView(self, v11, v12);
  return objc_msgSend_stringWithFormat_(v5, v14, @"<%@: %p | world=%@ frame=%@ pointOfView=%@>", v7, self, v10, v4, v13);
}

- (void)switchToCameraNamed:(id)named
{
  v5 = objc_msgSend_world(self, a2, named);
  v8 = objc_msgSend_rootNode(v5, v6, v7);
  v10 = objc_msgSend_childNodeWithName_recursively_(v8, v9, named, 1);
  if (v10)
  {

    MEMORY[0x1EEE66B58](self, sel_setPointOfView_animate_, v10);
  }

  else
  {
    v12 = sub_1AF0D5194(0, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFBAD0(named, v12);
    }
  }
}

- (void)switchToNextCamera
{
  v4 = objc_msgSend_world(self, a2, v2);
  v7 = objc_msgSend_rootNode(v4, v5, v6);
  v9 = objc_msgSend_childNodesPassingTest_(v7, v8, &unk_1F24ED398);
  if (objc_msgSend_count(v9, v10, v11))
  {
    v14 = objc_msgSend_pointOfView(self->_renderer, v12, v13);
    v16 = objc_msgSend_indexOfObject_(v9, v15, v14);
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      Object = objc_msgSend_firstObject(v9, v17, v18);
    }

    else
    {
      v20 = v16 + 1;
      v21 = objc_msgSend_count(v9, v17, v18);
      Object = objc_msgSend_objectAtIndex_(v9, v22, v20 % v21);
    }

    MEMORY[0x1EEE66B58](self, sel_setPointOfView_animate_, Object);
  }
}

- (void)setDebugOptions:(unint64_t)options
{
  objc_msgSend_setDebugOptions_(self->_renderer, a2, options);

  objc_msgSend__setNeedsDisplay(self, v4, v5);
}

- (void)setAntialiasingMode:(unint64_t)mode
{
  objc_msgSend_setAntialiasingMode_(self->_renderer, a2, mode);

  objc_msgSend__setNeedsDisplay(self, v4, v5);
}

- (double)contentScaleFactor
{
  v3.receiver = self;
  v3.super_class = VFXView;
  [(VFXView *)&v3 contentScaleFactor];
  return result;
}

- (void)setContentScaleFactor:(double)factor
{
  v8.receiver = self;
  v8.super_class = VFXView;
  [(VFXView *)&v8 setContentScaleFactor:factor];
  if (self->_renderer)
  {
    objc_msgSend__updateBackingSize(self, v4, v5);
    objc_msgSend_setNeedsDisplay(self, v6, v7);
  }
}

- (void)setNeedsDisplay
{
  v5.receiver = self;
  v5.super_class = VFXView;
  [(VFXView *)&v5 setNeedsDisplay];
  objc_msgSend__setNeedsDisplay(self, v3, v4);
}

- (void)vfx_updateGestureRecognizers
{
  v6 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2);
  navigationCameraController = self->_navigationCameraController;
  if (navigationCameraController)
  {
    v8 = objc_msgSend_gestureRecognizers(navigationCameraController, v4, v5);
    objc_msgSend_addObjectsFromArray_(v6, v9, v8);
  }

  objc_msgSend_vfx_setGestureRecognizers_(self, v4, v6);
}

- (void)vfx_setGestureRecognizers:(id)recognizers
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  controllerGestureRecognizers = self->_controllerGestureRecognizers;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(controllerGestureRecognizers, a2, &v22, v27, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(controllerGestureRecognizers);
        }

        objc_msgSend_removeGestureRecognizer_(self, v7, *(*(&v22 + 1) + 8 * i));
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(controllerGestureRecognizers, v7, &v22, v27, 16);
    }

    while (v8);
  }

  recognizersCopy = recognizers;
  self->_controllerGestureRecognizers = recognizersCopy;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(recognizersCopy, v12, &v18, v26, 16);
  if (v13)
  {
    v15 = v13;
    v16 = *v19;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(recognizersCopy);
        }

        objc_msgSend_addGestureRecognizer_(self, v14, *(*(&v18 + 1) + 8 * j));
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(recognizersCopy, v14, &v18, v26, 16);
    }

    while (v15);
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v58 = *MEMORY[0x1E69E9840];
  if (sub_1AF28D89C())
  {
    v9 = objc_msgSend_hitTest_options_(self, v8, 0, x, y);
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v53, v57, 16);
    if (v11)
    {
      v14 = v11;
      v15 = *v54;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v54 != v15)
          {
            objc_enumerationMutation(v9);
          }

          v17 = *(*(&v53 + 1) + 8 * i);
          v18 = objc_msgSend_node(v17, v12, v13);
          v21 = objc_msgSend_model(v18, v19, v20);
          v24 = objc_msgSend_materials(v21, v22, v23);
          if (objc_msgSend_count(v24, v25, v26))
          {
            v29 = objc_msgSend_materials(v21, v27, v28);
            v32 = objc_msgSend_meshElementIndex(v17, v30, v31);
            v35 = objc_msgSend_materials(v21, v33, v34);
            v38 = objc_msgSend_count(v35, v36, v37);
            v40 = objc_msgSend_objectAtIndexedSubscript_(v29, v39, v32 % v38);
            v43 = objc_msgSend_diffuse(v40, v41, v42);
          }

          else
          {
            v40 = 0;
            v43 = objc_msgSend_diffuse(0, v27, v28);
          }

          objc_msgSend_contents(v43, v44, v45);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            sub_1AF3B50B0(self);
            v49 = objc_msgSend_diffuse(v40, v47, v48);
            return objc_msgSend_contents(v49, v50, v51);
          }
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v53, v57, 16);
        if (v14)
        {
          continue;
        }

        break;
      }
    }
  }

  v52.receiver = self;
  v52.super_class = VFXView;
  return [(VFXView *)&v52 hitTest:event withEvent:x, y];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v42 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_showsStatistics(self, a2, began) || (v9 = objc_msgSend_anyObject(began, v7, v8), objc_msgSend_locationInView_(v9, v10, self), v12 = v11, v14 = v13, objc_msgSend_bounds(self, v15, v16), v18 = v17 - v14, v21 = objc_msgSend__authoringEnvironment(self, v19, v20), (objc_msgSend_didTapAtPoint_(v21, v22, v23, v12, v18) & 1) == 0))
  {
    if (objc_msgSend_triggersEnabled(self, v7, v8))
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v25 = objc_msgSend_touchesForView_(event, v24, self);
      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v37, v41, 16);
      if (v27)
      {
        v30 = v27;
        v31 = *v38;
        do
        {
          v32 = 0;
          do
          {
            if (*v38 != v31)
            {
              objc_enumerationMutation(v25);
            }

            v33 = *(*(&v37 + 1) + 8 * v32);
            v34 = objc_msgSend_triggerManager(self->_world, v28, v29);
            objc_msgSend_triggerTouch_event_fromView_(v34, v35, @"VFXTriggerTypeTapBegan", v33, self);
            ++v32;
          }

          while (v30 != v32);
          v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v37, v41, 16);
        }

        while (v30);
      }
    }

    v36.receiver = self;
    v36.super_class = VFXView;
    [(VFXView *)&v36 touchesBegan:began withEvent:event];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_triggersEnabled(self, a2, ended))
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = objc_msgSend_touchesForView_(event, v7, self);
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v20, v24, 16);
    if (v10)
    {
      v13 = v10;
      v14 = *v21;
      do
      {
        v15 = 0;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v8);
          }

          v16 = *(*(&v20 + 1) + 8 * v15);
          v17 = objc_msgSend_triggerManager(self->_world, v11, v12);
          objc_msgSend_triggerTouch_event_fromView_(v17, v18, @"VFXTriggerTypeTapEnded", v16, self);
          ++v15;
        }

        while (v13 != v15);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v20, v24, 16);
      }

      while (v13);
    }
  }

  v19.receiver = self;
  v19.super_class = VFXView;
  [(VFXView *)&v19 touchesBegan:ended withEvent:event];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_triggersEnabled(self, a2, moved))
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = objc_msgSend_touchesForView_(event, v7, self);
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v20, v24, 16);
    if (v10)
    {
      v13 = v10;
      v14 = *v21;
      do
      {
        v15 = 0;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v8);
          }

          v16 = *(*(&v20 + 1) + 8 * v15);
          v17 = objc_msgSend_triggerManager(self->_world, v11, v12);
          objc_msgSend_triggerTouch_event_fromView_(v17, v18, @"VFXTriggerTypeTapDragged", v16, self);
          ++v15;
        }

        while (v13 != v15);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v20, v24, 16);
      }

      while (v13);
    }
  }

  v19.receiver = self;
  v19.super_class = VFXView;
  [(VFXView *)&v19 touchesBegan:moved withEvent:event];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_triggersEnabled(self, a2, cancelled))
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = objc_msgSend_touchesForView_(event, v7, self);
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v20, v24, 16);
    if (v10)
    {
      v13 = v10;
      v14 = *v21;
      do
      {
        v15 = 0;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v8);
          }

          v16 = *(*(&v20 + 1) + 8 * v15);
          v17 = objc_msgSend_triggerManager(self->_world, v11, v12);
          objc_msgSend_triggerTouch_event_fromView_(v17, v18, @"VFXTriggerTypeTapCancelled", v16, self);
          ++v15;
        }

        while (v13 != v15);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v20, v24, 16);
      }

      while (v13);
    }
  }

  v19.receiver = self;
  v19.super_class = VFXView;
  [(VFXView *)&v19 touchesBegan:cancelled withEvent:event];
}

- (void)pauseDisplayLink
{
  objc_msgSend_stopIfNeeded(self->_jitterer, a2, v2);
  v6 = objc_msgSend_displayLink(self, v4, v5);

  objc_msgSend_setPaused_(v6, v7, 1);
}

- (void)resumeDisplayLink
{
  objc_msgSend__createDisplayLinkIfNeeded(self, a2, v2);
  v6 = objc_msgSend_displayLink(self, v4, v5);
  v7 = (*(self + 424) & 2) == 0;
  objc_msgSend_nextFrameTime(self->_renderer, v8, v9);

  MEMORY[0x1EEE66B58](v6, sel_setPaused_nextFrameTimeHint_lastUpdate_, v7);
}

- (void)didMoveToWindow
{
  if (objc_msgSend_window(self, a2, v2))
  {
    *(self + 424) &= ~0x20u;
    objc_msgSend_resumeDisplayLink(self, v4, v5);
    objc_msgSend__setNeedsDisplay(self, v6, v7);
  }

  v14.receiver = self;
  v14.super_class = VFXView;
  [(VFXView *)&v14 didMoveToWindow];
  objc_msgSend__adjustBackingLayerPixelFormat(self, v8, v9);
  objc_msgSend__updateBackingSize(self, v10, v11);
  objc_msgSend__interfaceOrientationDidChange(self->_renderer, v12, v13);
}

- (void)willMoveToWindow:(id)window
{
  if (!window)
  {
    sub_1AF3B50F0(self);
    objc_msgSend_pauseDisplayLink(self, v5, v6);
    *(self + 424) |= 0x20u;
  }

  v7.receiver = self;
  v7.super_class = VFXView;
  [(VFXView *)&v7 willMoveToWindow:window];
}

- (void)_enterForeground:(id)foreground
{
  if (!self->_legacyView)
  {
    *(self + 424) &= ~0x80u;
    if (*(self + 425))
    {
      *(self + 425) &= ~1u;
      v4 = objc_msgSend_world(self, a2, foreground);
      v7 = objc_msgSend_clock(v4, v5, v6);
      objc_msgSend_setPaused_(v7, v8, 0);
    }

    v9 = sub_1AF15ACD8(0, a2, foreground);
    if (v9)
    {
      objc_msgSend_startAndReturnError_(v9, v10, 0);
    }

    v12 = objc_msgSend_renderer(self, v10, v11);
    objc_msgSend_lock(v12, v13, v14);
    v17 = objc_msgSend_world(self, v15, v16);
    v20 = objc_msgSend_worldRef(v17, v18, v19);
    if (v20)
    {
      v23 = v20;
      v24 = sub_1AF1CF878(v20, v21);
      sub_1AF1CEA20(v23, v25);
      objc_msgSend_enterForeground(v24, v26, v27);
      sub_1AF1CEA9C(v23, v28);
    }

    v29 = objc_msgSend_renderer(self, v21, v22);
    objc_msgSend_unlock(v29, v30, v31);
    if ((*(self + 424) & 0x20) == 0)
    {

      objc_msgSend_resumeDisplayLink(self, v32, v33);
    }
  }
}

- (void)_enterBackground:(id)background
{
  if (!self->_legacyView)
  {
    *(self + 424) |= 0x80u;
    v5 = objc_msgSend_world(self, a2, background);
    v8 = objc_msgSend_clock(v5, v6, v7);
    if ((objc_msgSend_isPaused(v8, v9, v10) & 1) == 0)
    {
      *(self + 425) |= 1u;
      v13 = objc_msgSend_world(self, v11, v12);
      v16 = objc_msgSend_clock(v13, v14, v15);
      objc_msgSend_setPaused_(v16, v17, 1);
    }

    objc_msgSend_pauseDisplayLink(self, v11, v12);
    v20 = sub_1AF15ACD8(0, v18, v19);
    if (v20)
    {
      objc_msgSend_pause(v20, v21, v22);
    }

    v23 = objc_msgSend_renderer(self, v21, v22);
    objc_msgSend_lock(v23, v24, v25);
    v28 = objc_msgSend_world(self, v26, v27);
    v31 = objc_msgSend_worldRef(v28, v29, v30);
    if (v31)
    {
      v34 = v31;
      v35 = sub_1AF1CF878(v31, v32);
      sub_1AF1CEA20(v34, v36);
      objc_msgSend_enterBackground(v35, v37, v38);
      sub_1AF1CEA9C(v34, v39);
    }

    v40 = objc_msgSend_renderer(self, v32, v33);

    objc_msgSend_unlock(v40, v41, v42);
  }
}

- (void)safeAreaInsetsDidChange
{
  v13.receiver = self;
  v13.super_class = VFXView;
  [(VFXView *)&v13 safeAreaInsetsDidChange];
  objc_msgSend_safeAreaInsets(self, v3, v4);
  v6.f64[1] = v5;
  v8.f64[1] = v7;
  objc_msgSend_set_drawableSafeAreaInsets_(self->_renderer, v9, v10, *vcvt_hight_f32_f64(vcvt_f32_f64(v8), v6).i64);
  objc_msgSend__interfaceOrientationDidChange(self->_renderer, v11, v12);
}

- (id)setupLegacyView
{
  v3 = [_TtC3VFX13VFXViewLegacy alloc];
  objc_msgSend_bounds(self, v4, v5);
  v8 = objc_msgSend_initWithFrame_(v3, v6, v7);
  objc_msgSend_addSubview_(self, v9, v8);
  objc_msgSend_setAutoresizingMask_(v8, v10, 18);
  v13 = objc_msgSend_backgroundColor(self, v11, v12);
  objc_msgSend_setBackgroundColor_(v8, v14, v13);
  v22.receiver = self;
  v22.super_class = VFXView;
  [(VFXView *)&v22 setBackgroundColor:0];
  objc_msgSend_set_legacyView_(self, v15, v8);
  if (objc_msgSend_lowLatency(self, v16, v17))
  {
    objc_msgSend_setLowLatency_(v8, v18, 1);
  }

  return objc_msgSend__legacyView(self, v19, v20);
}

- (id)legacyView
{
  result = objc_msgSend__legacyView(self, a2, v2);
  if (!result)
  {

    return MEMORY[0x1EEE66B58](self, sel_setupLegacyView, v5);
  }

  return result;
}

- (id)scene
{
  v3 = objc_msgSend_legacyView(self, a2, v2);

  return objc_msgSend_scene(v3, v4, v5);
}

- (void)setScene:(id)scene
{
  v4 = objc_msgSend_legacyView(self, a2, scene);

  objc_msgSend_setScene_(v4, v5, scene);
}

- (id)postRenderCallback
{
  v3 = objc_msgSend_legacyView(self, a2, v2);

  return MEMORY[0x1EEE66B58](v3, sel_postRenderCallback, v4);
}

- (void)setPostRenderCallback:(id)callback
{
  v4 = objc_msgSend_legacyView(self, a2, callback);

  MEMORY[0x1EEE66B58](v4, sel_setPostRenderCallback_, callback);
}

- (void)renderWithCompletion:(id)completion
{
  v4 = objc_msgSend_legacyView(self, a2, completion);

  MEMORY[0x1EEE66B58](v4, sel_renderWithCompletion_, completion);
}

- (void)renderWithPresentWithTransaction:(BOOL)transaction completion:(id)completion
{
  transactionCopy = transaction;
  v5 = objc_msgSend_legacyView(self, a2, transaction);

  MEMORY[0x1EEE66B58](v5, sel_renderWithPresentWithTransaction_completion_, transactionCopy);
}

- (id)effect
{
  v3 = objc_msgSend_legacyView(self, a2, v2);

  return MEMORY[0x1EEE66B58](v3, sel_effect, v4);
}

- (void)setEffect:(id)effect
{
  v4 = objc_msgSend_legacyView(self, a2, effect);

  MEMORY[0x1EEE66B58](v4, sel_setEffect_, effect);
}

- (unsigned)resizingMode
{
  v3 = objc_msgSend_legacyView(self, a2, v2);

  return MEMORY[0x1EEE66B58](v3, sel_resizingMode, v4);
}

- (void)setResizingMode:(unsigned __int8)mode
{
  modeCopy = mode;
  v4 = objc_msgSend_legacyView(self, a2, mode);

  MEMORY[0x1EEE66B58](v4, sel_setResizingMode_, modeCopy);
}

- (double)scaleFactor
{
  v3 = objc_msgSend_legacyView(self, a2, v2);

  MEMORY[0x1EEE66B58](v3, sel_scaleFactor, v4);
  return result;
}

- (void)setScaleFactor:(double)factor
{
  v4 = objc_msgSend_legacyView(self, a2, v3);

  MEMORY[0x1EEE66B58](v4, sel_setScaleFactor_, v5);
}

- (BOOL)framebufferOnly
{
  v3 = objc_msgSend_legacyView(self, a2, v2);

  return objc_msgSend_framebufferOnly(v3, v4, v5);
}

- (void)setFramebufferOnly:(BOOL)only
{
  onlyCopy = only;
  v4 = objc_msgSend_legacyView(self, a2, only);

  objc_msgSend_setFramebufferOnly_(v4, v5, onlyCopy);
}

@end