@interface SCNRenderer
+ (SCNRenderer)rendererWithContext:(EAGLContext *)context options:(NSDictionary *)options;
+ (SCNRenderer)rendererWithDevice:(id)device options:(NSDictionary *)options;
- (BOOL)_collectCompilationErrors;
- (BOOL)_drawSceneWithLegacyRenderer:(__C3DScene *)renderer;
- (BOOL)_drawSceneWithNewRenderer:(__C3DScene *)renderer;
- (BOOL)_enableARMode;
- (BOOL)_installContext;
- (BOOL)_isNodeInsideFrustum:(id)frustum withPointOfView:(id)view viewport:(SCNVector4)viewport;
- (BOOL)_needsRedrawAsap;
- (BOOL)_needsRepetitiveRedraw;
- (BOOL)_preloadResource:(id)resource abortHandler:(id)handler;
- (BOOL)_prepareObject:(id)object shouldAbortBlock:(id)block;
- (BOOL)_preparePreloadRenderer:(id)renderer;
- (BOOL)_recordWithoutExecute;
- (BOOL)_shouldDelegateARCompositing;
- (BOOL)autoAdjustCamera;
- (BOOL)autoenablesDefaultLighting;
- (BOOL)isNodeInsideFrustum:(id)frustum withPointOfView:(id)view;
- (BOOL)prepareObject:(id)object shouldAbortBlock:(id)block;
- (BOOL)renderMovieToURL:(id)l size:(CGSize)size antialiasingMode:(unint64_t)mode attributes:(id)attributes error:(id *)error;
- (BOOL)usesReverseZ;
- (CGImage)_createBackgroundColorImageWithSize:(CGSize)size;
- (CGImage)_createSnapshotAtTime:(double)time withSize:(CGSize)size antialiasingMode:(unint64_t)mode error:(id *)error;
- (CGImage)createSnapshot:(double)snapshot error:(id *)error;
- (CGRect)currentViewport;
- (MTLCommandQueue)commandQueue;
- (MTLDevice)device;
- (MTLRenderCommandEncoder)currentRenderCommandEncoder;
- (MTLRenderPassDescriptor)currentRenderPassDescriptor;
- (NSString)description;
- (SCNNode)audioListener;
- (SCNVector3)_projectPoint:(SCNVector3)point viewport:(SCNVector4)viewport;
- (SCNVector3)_unprojectPoint:(SCNVector3)point viewport:(SCNVector4)viewport;
- (SCNVector3)projectPoint:(SCNVector3)result;
- (SCNVector3)unprojectPoint:(SCNVector3)result;
- (SCNVector4)_viewport;
- (UIImage)snapshotAtTime:(CFTimeInterval)time withSize:(CGSize)size antialiasingMode:(SCNAntialiasingMode)antialiasingMode;
- (__C3DRendererContext)_rendererContextGL;
- (double)_computeNextFrameTime;
- (double)_systemTime;
- (id)_compilationErrors;
- (id)_computedLightingEnvironmentMapsPath;
- (id)_copyPassDescription;
- (id)_copyPerformanceStatistics;
- (id)_copyRenderGraphDescription;
- (id)_defaultPOVForScene:(id)scene;
- (id)_hitTest:(CGPoint)test viewport:(CGSize)viewport options:(id)options;
- (id)_initWithOptions:(id)options isPrivateRenderer:(BOOL)renderer privateRendererOwner:(id)owner clearsOnDraw:(BOOL)draw context:(void *)context renderingAPI:(unint64_t)i;
- (id)_nodesInsideFrustumWithPointOfView:(id)view viewport:(SCNVector4)viewport;
- (id)_prepareSKRenderer;
- (id)_readSubdivCacheForHash:(id)hash;
- (id)_setupSKRendererIfNeeded;
- (id)backgroundColor;
- (id)currentCommandBuffer;
- (id)hitTest:(CGPoint)test options:(id)options;
- (id)hitTestWithSegmentFromPoint:(SCNVector3)point toPoint:(SCNVector3)toPoint options:(id)options;
- (id)metalLayer;
- (id)nodesInsideFrustumWithPointOfView:(id)view;
- (id)programWithNode:(id)node withMaterial:(id)material;
- (id)snapshotAtTime:(double)time;
- (id)snapshotAtTime:(double)time withSize:(CGSize)size antialiasingMode:(unint64_t)mode error:(id *)error;
- (id)snapshotRendererWithSize:(CGSize)size;
- (unint64_t)_antialiasingMode;
- (unint64_t)colorPixelFormat;
- (unint64_t)depthPixelFormat;
- (void)_addGPUFrameCompletedHandler:(id)handler;
- (void)_addGPUFramePresentedHandler:(id)handler;
- (void)_addGPUFrameScheduledHandler:(id)handler;
- (void)_allowGPUBackgroundExecution;
- (void)_beginFrame;
- (void)_c3dBackgroundColorDidChange;
- (void)_clearBackBuffer;
- (void)_createOffscreenFramebufferIfNeeded;
- (void)_createPrepareFramebufferIfNeeded;
- (void)_deleteGLFramebuffer;
- (void)_didRenderScene:(id)scene;
- (void)_discardPendingGPUFrameCompletedHandlers;
- (void)_discardPendingGPUFramePresentedHandlers;
- (void)_discardPendingGPUFrameScheduledHandlers;
- (void)_displayLinkStatsTack;
- (void)_displayLinkStatsTick;
- (void)_draw;
- (void)_drawAtTime:(double)time;
- (void)_drawOverlaySceneAtTime:(double)time;
- (void)_drawScene:(__C3DScene *)scene;
- (void)_drawWithJitteringPresentationMode;
- (void)_endFrame;
- (void)_installGLContextAndSetViewport;
- (void)_installViewport;
- (void)_interfaceOrientationDidChange;
- (void)_jitterAtStep:(unint64_t)step updateMainFramebuffer:(BOOL)framebuffer redisplay:(BOOL)redisplay jitterer:(id)jitterer;
- (void)_play;
- (void)_prepareForTransition:(id)transition outgoingScene:(id)scene outgoingPointOfView:(id)view completionHandler:(id)handler;
- (void)_prepareGLRenderTarget;
- (void)_prepareRenderTarget;
- (void)_presentFramebuffer;
- (void)_projectPoints:(SCNVector3 *)points count:(unint64_t)count viewport:(SCNVector4)viewport;
- (void)_releasePreloadRenderer;
- (void)_reloadDebugOptions;
- (void)_renderAtTime:(double)time;
- (void)_renderAtTime:(double)time viewport:(CGRect)viewport encoder:(id)encoder passDescriptor:(id)descriptor commandQueue:(id)queue commandBuffer:(id)buffer;
- (void)_renderGraphFrameRecordingAtPath:(id)path withCompletion:(id)completion;
- (void)_renderSceneWithEngineContext:(__C3DEngineContext *)context sceneTime:(double)time;
- (void)_resolveAndDiscardGL;
- (void)_setBackingSize:(SCNRenderer *)self;
- (void)_setContentsScaleFactor:(double)factor;
- (void)_setInterfaceOrientation:(int64_t)orientation;
- (void)_setSceneTime:(double)time;
- (void)_setupOffscreenRendererWithSize:(CGSize)size;
- (void)_stop;
- (void)_update:(__C3DScene *)_update;
- (void)_updateEngineCallbacks;
- (void)_updatePointOfView;
- (void)_updateProbes:(id)probes withProgress:(id)progress;
- (void)_updateSystemTimeAndDeltaTimeWithCurrentTime:(double)time;
- (void)_updateWithSystemTime:(double)time;
- (void)_willRenderScene:(id)scene;
- (void)_writeSubdivCacheForHash:(id)hash dataProvider:(id)provider;
- (void)autoenablesDefaultLighting;
- (void)context;
- (void)dealloc;
- (void)prepareObjects:(id)objects withCompletionHandler:(id)handler;
- (void)presentScene:(id)scene withTransition:(id)transition incomingPointOfView:(id)view completionHandler:(id)handler;
- (void)render;
- (void)renderAtTime:(CFTimeInterval)time;
- (void)renderAtTime:(CFTimeInterval)time viewport:(CGRect)viewport commandBuffer:(id)commandBuffer passDescriptor:(MTLRenderPassDescriptor *)renderPassDescriptor;
- (void)renderAtTime:(double)time encoder:(id)encoder commandQueue:(id)queue passDescriptor:(id)descriptor viewPoints:(id)points;
- (void)renderAtTime:(double)time encoder:(id)encoder commandQueue:(id)queue passDescriptor:(id)descriptor viewPoints:(id)points coordinateSpace:(unint64_t)space;
- (void)renderContext:(id)context commandBufferDidCompleteWithError:(id)error;
- (void)renderContext:(id)context didFallbackToDefaultTextureForSource:(id)source message:(id)message;
- (void)renderWithCommandBuffer:(id)buffer viewPoints:(id)points;
- (void)renderWithCommandBuffer:(id)buffer viewpoints:(id)viewpoints coordinateSpace:(unint64_t)space;
- (void)renderWithViewport:(CGRect)viewport commandBuffer:(id)commandBuffer passDescriptor:(MTLRenderPassDescriptor *)renderPassDescriptor;
- (void)resolvedBackgroundColorDidChange;
- (void)setAudioListener:(id)listener;
- (void)setAutoAdjustCamera:(BOOL)camera;
- (void)setAutoenablesDefaultLighting:(BOOL)lighting;
- (void)setBackgroundColor:(id)color;
- (void)setContext:(id)context;
- (void)setDebugOptions:(unint64_t)options;
- (void)setDelegate:(id)delegate;
- (void)setFrozen:(BOOL)frozen;
- (void)setOverlaySKScene:(id)scene;
- (void)setPlaying:(BOOL)playing;
- (void)setPointOfCulling:(id)culling;
- (void)setPointOfView:(id)view;
- (void)setRendersContinuously:(BOOL)continuously;
- (void)setScene:(SCNScene *)scene;
- (void)setScene:(id)scene completionHandler:(id)handler;
- (void)setSceneTime:(double)time;
- (void)setShowsStatistics:(BOOL)statistics;
- (void)setTechnique:(id)technique;
- (void)setTemporalAntialiasingEnabled:(BOOL)enabled;
- (void)setUsesReverseZ:(BOOL)z;
- (void)set_antialiasingMode:(unint64_t)mode;
- (void)set_collectCompilationErrors:(BOOL)errors;
- (void)set_commandBufferStatusMonitor:(id)monitor;
- (void)set_computedLightingEnvironmentMapsPath:(id)path;
- (void)set_deltaTime:(double)time;
- (void)set_disableLinearRendering:(BOOL)rendering;
- (void)set_drawableSafeAreaInsets:(SCNRenderer *)self;
- (void)set_enableARMode:(BOOL)mode;
- (void)set_recordWithoutExecute:(BOOL)execute;
- (void)set_resourceManagerMonitor:(id)monitor;
- (void)set_screenTransform:(SCNMatrix4 *)transform;
- (void)set_shouldDelegateARCompositing:(BOOL)compositing;
- (void)set_shouldForwardSceneRendererDelegationMessagesToPrivateRendererOwner:(BOOL)owner;
- (void)set_showsAuthoringEnvironment:(BOOL)environment;
- (void)set_systemTime:(double)time;
- (void)set_viewport:(SCNVector4)set_viewport;
- (void)set_wantsSceneRendererDelegationMessages:(BOOL)messages;
- (void)setupAuthoringEnvironment;
- (void)updateAndDrawStatisticsIfNeeded;
- (void)updateCurrentTimeIfPlayingWithSystemTime:(double)time;
- (void)updateProbes:(NSArray *)lightProbes atTime:(CFTimeInterval)time;
@end

@implementation SCNRenderer

- (void)_updateEngineCallbacks
{
  engineContext = self->_engineContext;
  if (engineContext)
  {
    RenderCallbacks = C3DEngineContextGetRenderCallbacks(engineContext, a2);
    delegationConformance = self->_delegationConformance;
    if ((delegationConformance & 0x10) != 0 || (*&self->_selfDelegationConformance & 0x10) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 0x10) != 0)
    {
      *RenderCallbacks = _willRenderSceneEngineContextCallback;
      delegationConformance = self->_delegationConformance;
    }

    if ((delegationConformance & 0x20) != 0 || (*&self->_selfDelegationConformance & 0x20) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 0x20) != 0)
    {
      RenderCallbacks[1] = _didRenderSceneEngineContextCallback;
      delegationConformance = self->_delegationConformance;
    }

    if ((delegationConformance & 0x80) != 0 || (*&self->_selfDelegationConformance & 0x80) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 0x80) != 0)
    {
      RenderCallbacks[3] = _readSubdivCacheEngineContextCallback;
      delegationConformance = self->_delegationConformance;
    }

    if ((delegationConformance & 0x100) != 0 || (selfDelegationConformance = self->_selfDelegationConformance, (selfDelegationConformance & 0x100) != 0) || (*&self->_privateRendererOwnerDelegationConformance & 0x100) != 0)
    {
      RenderCallbacks[4] = _writeSubdivCacheEngineContextCallback;
      selfDelegationConformance = self->_selfDelegationConformance;
    }

    if ((selfDelegationConformance & 0x200) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 0x200) != 0)
    {
      RenderCallbacks[5] = _wantsMainPassCustomPostProcessEncodingEngineContextCallback;
      RenderCallbacks[6] = _mainPassCustomPostProcessUsesExtraRenderTargetEngineContextCallback;
      RenderCallbacks[7] = _useSpecificMainPassClearColorEngineContextCallback;
      RenderCallbacks[8] = _encodeMainPassCustomPostProcessEngineContextCallback;
    }

    RenderCallbacks[2] = _renderOverlayEngineContextCallback;
  }
}

- (unint64_t)_antialiasingMode
{
  if (C3DPreferencesGetBool(5))
  {
    return 0;
  }

  else
  {
    return self->__antialiasingMode;
  }
}

- (void)_setupOffscreenRendererWithSize:(CGSize)size
{
  width = size.width;
  height = size.height;
  -[SCNRenderer setBackgroundColor:](self, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
  v4.f64[0] = width;
  v4.f64[1] = height;
  *(self + 121) |= 0x10u;
  *self->_anon_58 = vmovn_s64(vcvtq_u64_f64(vrndpq_f64(v4)));
  privateRendererOwner = self->_privateRendererOwner;
  if (privateRendererOwner)
  {
    antialiasingMode = [(SCNSceneRenderer *)privateRendererOwner antialiasingMode];
  }

  else
  {
    antialiasingMode = 2 * (self->_renderingAPI == 0);
  }

  [(SCNRenderer *)self set_antialiasingMode:antialiasingMode];
}

- (id)_initWithOptions:(id)options isPrivateRenderer:(BOOL)renderer privateRendererOwner:(id)owner clearsOnDraw:(BOOL)draw context:(void *)context renderingAPI:(unint64_t)i
{
  drawCopy = draw;
  rendererCopy = renderer;
  v55.receiver = self;
  v55.super_class = SCNRenderer;
  v14 = [(SCNRenderer *)&v55 init];
  v15 = v14;
  if (v14)
  {
    v14->_scene = 0;
    v14->_viewpoints = 0;
    v14->_contentScaleFactor = 1.0;
    v14->_engineContext = C3DEngineContextCreateWithOptions(options, context);
    *(v15 + 216) = i;
    *(v15 + 121) |= 0x40u;
    if (!i)
    {
      C3DNotifyMetalIsUsed();
    }

    *(v15 + 32) = objc_alloc_init(SCNRecursiveLock);
    [v15 _updateEngineCallbacks];
    C3DEngineContextSetRenderingOptionForKey(*(v15 + 208), @"frustumCulling", *MEMORY[0x277CBED28]);
    C3DEngineContextSetClearsOnDraw(*(v15 + 208), drawCopy);
    v17 = *(v15 + 208);
    if (v17)
    {
      C3DEngineContextSetUserInfo(v17, v15);
    }

    else
    {
      v18 = scn_default_log(0, v16);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [SCNRenderer _initWithOptions:isPrivateRenderer:privateRendererOwner:clearsOnDraw:context:renderingAPI:];
      }
    }

    *(v15 + 185) = 1;
    if (rendererCopy)
    {
      v19 = 4;
    }

    else
    {
      v19 = 0;
    }

    *(v15 + 121) = *(v15 + 121) & 0xFB | v19;
    *(v15 + 344) = owner;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v21 = *(v15 + 121);
    if (isKindOfClass)
    {
      v22 = 8;
    }

    else
    {
      v22 = 0;
    }

    *(v15 + 121) = v21 & 0xF7 | v22;
    if ((v21 & 4) != 0)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v15 selector:sel__UIOrientationDidChangeNotification_ name:*MEMORY[0x277D76658] object:0];
      if ((*(v15 + 121) & 8) != 0)
      {
        v24 = [objc_msgSend(objc_msgSend(*(v15 + 344) "window")];
      }

      else
      {
        v24 = [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
      }

      C3DEngineContextSetInterfaceOrientation(*(v15 + 208), v24);
    }

    *(v15 + 56) = 0;
    if (rendererCopy)
    {
      if ((_initWithOptions_isPrivateRenderer_privateRendererOwner_clearsOnDraw_context_renderingAPI__first & 1) == 0)
      {
        _initWithOptions_isPrivateRenderer_privateRendererOwner_clearsOnDraw_context_renderingAPI__first = 1;
        getpid();
        proc_disable_wakemon();
      }

      objc_opt_class();
      v25 = objc_opt_isKindOfClass();
      if ((v25 & 1) == 0)
      {
        v27 = scn_default_log(v25, v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          [(SCNRenderer *)v27 _initWithOptions:v28 isPrivateRenderer:v29 privateRendererOwner:v30 clearsOnDraw:v31 context:v32 renderingAPI:v33, v34];
        }
      }

      v35 = MEMORY[0x277CCACA8];
      v36 = objc_opt_class();
      v37 = [objc_msgSend(v35 stringWithFormat:@"com.apple.scenekit.renderingQueue.%@%p", NSStringFromClass(v36), *(v15 + 344)), "cStringUsingEncoding:", 1];
      v38 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
      *(v15 + 40) = dispatch_queue_create(v37, v38);
    }

    if (*(v15 + 216))
    {
      if (context)
      {
        [v15 setContext:context];
        v39 = NSClassFromString(&cfstr_Skglobalshared.isa);
        [NSClassFromString(&cfstr_Skscnrenderer.isa) setPrefersOpenGL:1];
        if (![(objc_class *)v39 globalGLSharedContext])
        {
          [(objc_class *)v39 setGlobalGLSharedContext:context];
        }
      }
    }

    else
    {
      v40 = [context conformsToProtocol:&unk_282E57D28];
      if ((v40 & 1) == 0)
      {
        v42 = scn_default_log(v40, v41);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
        {
          [(SCNRenderer *)v42 _initWithOptions:v43 isPrivateRenderer:v44 privateRendererOwner:v45 clearsOnDraw:v46 context:v47 renderingAPI:v48, v49];
        }
      }

      *(v15 + 280) = [[SCNMTLRenderContext alloc] initWithDevice:context engineContext:*(v15 + 208)];
      _antialiasingMode = [v15 _antialiasingMode];
      v52 = SCNSampleCountForAntialiasingMode(_antialiasingMode, v51);
      [(SCNMTLRenderContext *)*(v15 + 280) setSampleCount:v52];
      C3DEngineContextSetRenderContext(*(v15 + 208), *(v15 + 280));

      v53 = NSClassFromString(&cfstr_Skglobalshared.isa);
      if (objc_opt_respondsToSelector())
      {
        [(objc_class *)v53 setGlobalMetalDevice:context];
      }
    }
  }

  return v15;
}

+ (SCNRenderer)rendererWithDevice:(id)device options:(NSDictionary *)options
{
  v5 = device;
  if (device || (result = [SCNView deviceForOptions:options], (v5 = result) != 0))
  {
    v8 = [[self alloc] _initWithOptions:options isPrivateRenderer:0 privateRendererOwner:0 clearsOnDraw:0 context:v5 renderingAPI:0];

    return v8;
  }

  return result;
}

+ (SCNRenderer)rendererWithContext:(EAGLContext *)context options:(NSDictionary *)options
{
  v4 = context;
  if (!context)
  {
    v6 = objc_alloc(MEMORY[0x277CD9388]);
    v4 = [v6 initWithAPI:2 properties:MEMORY[0x277CBEC10]];
  }

  v7 = [[self alloc] _initWithOptions:0 isPrivateRenderer:0 privateRendererOwner:0 clearsOnDraw:0 context:v4 renderingAPI:__inferRenderingAPIFromGLContext(v4)];

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  scene = [(SCNRenderer *)self scene];
  pointOfView = [(SCNRenderer *)self pointOfView];
  [(SCNRenderer *)self sceneTime];
  return [v3 stringWithFormat:@"<%@ %p: scene = %@, pointOfView = %@, sceneTime = %f, context = %p>", v5, self, scene, pointOfView, v8, -[SCNRenderer context](self, "context")];
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  objc_storeWeak(&self->_delegate, 0);

  self->_preloadRenderer = 0;
  self->_technique = 0;

  self->_mtlTexture = 0;
  if (self->_glContext)
  {
    currentContext = [MEMORY[0x277CD9388] currentContext];
    v5 = currentContext;
    glContext = self->_glContext;
    if (glContext && currentContext != glContext)
    {
      [MEMORY[0x277CD9388] setCurrentContext:?];
    }
  }

  else
  {
    v5 = 0;
  }

  if (self->_framebufferInfo.frameBuffer)
  {
    RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext, v3);
    deleteGLFramebufferInfo(&self->_framebufferInfo, RendererContextGL);
  }

  if (self->_engineContext)
  {
    [+[SCNSourceRendererRegistry sharedRegistry](SCNSourceRendererRegistry "sharedRegistry")];
    C3DEngineContextCleanup(self->_engineContext, v8);
    CFRelease(self->_engineContext);
  }

  v9 = self->_glContext;
  if (v9)
  {
    v10 = v5;
    if (v5 == v9)
    {
      if ([(EAGLContext *)v9 retainCount]!= 2)
      {
        goto LABEL_15;
      }

      v10 = 0;
    }

    [MEMORY[0x277CD9388] setCurrentContext:v10];
  }

LABEL_15:
  renderingQueue = self->__renderingQueue;
  if (renderingQueue)
  {
    dispatch_release(renderingQueue);
  }

  prepareQueue = self->__prepareQueue;
  if (prepareQueue)
  {
    dispatch_release(prepareQueue);
  }

  self->_glContext = 0;
  v13.receiver = self;
  v13.super_class = SCNRenderer;
  [(SCNRenderer *)&v13 dealloc];
}

- (id)currentCommandBuffer
{
  if (self->_renderingAPI)
  {
    return 0;
  }

  else
  {
    return [(SCNMTLRenderContext *)self->_renderContext currentCommandBuffer];
  }
}

- (MTLRenderPassDescriptor)currentRenderPassDescriptor
{
  if (self->_renderingAPI)
  {
    return 0;
  }

  else
  {
    return [(SCNMTLRenderContext *)self->_renderContext currentRenderPassDescriptor];
  }
}

- (MTLRenderCommandEncoder)currentRenderCommandEncoder
{
  if (self->_renderingAPI)
  {
    return 0;
  }

  else
  {
    return [(SCNMTLRenderContext *)self->_renderContext currentRenderCommandEncoder];
  }
}

- (MTLDevice)device
{
  if (self->_renderingAPI)
  {
    return 0;
  }

  else
  {
    return [(SCNMTLRenderContext *)self->_renderContext device];
  }
}

- (MTLCommandQueue)commandQueue
{
  if (self->_renderingAPI)
  {
    return 0;
  }

  else
  {
    return [(SCNMTLRenderContext *)self->_renderContext commandQueue];
  }
}

- (unint64_t)colorPixelFormat
{
  if (self->_renderingAPI)
  {
    return 0;
  }

  if ((*(self + 121) & 0x10) != 0)
  {
    mtlTexture = self->_mtlTexture;
  }

  else
  {
    mtlTexture = [(SCNRenderer *)self metalLayer];
  }

  return [(MTLTexture *)mtlTexture pixelFormat];
}

- (unint64_t)depthPixelFormat
{
  if (self->_renderingAPI)
  {
    return 0;
  }

  else
  {
    return 252;
  }
}

- (BOOL)_installContext
{
  if (self->_renderContext)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = [(SCNRenderer *)self context:v2];
    if (v4)
    {
      [MEMORY[0x277CD9388] setCurrentContext:v4];
      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

- (void)_installViewport
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_isPrivateRenderer";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, self, a3, "Assertion '%s' failed. invalid renderer", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_clearBackBuffer
{
  renderContext = self->_renderContext;
  engineContext = self->_engineContext;
  if (renderContext)
  {
    RenderGraph = C3DEngineContextGetRenderGraph(engineContext);

    C3DRenderGraphClearDrawable(RenderGraph);
  }

  else
  {
    RendererContextGL = C3DEngineContextGetRendererContextGL(engineContext, a2);
    if (self->_backgroundColor)
    {
      p_c3dBackgroundColor = &self->_c3dBackgroundColor;
      v8 = 17664;
    }

    else
    {
      v8 = 1280;
      p_c3dBackgroundColor = 0;
    }

    C3DRendererContextClear(RendererContextGL, v8, p_c3dBackgroundColor);
  }
}

- (void)_setContentsScaleFactor:(double)factor
{
  factorCopy = factor;
  self->_contentScaleFactor = factorCopy;
  if (self->_renderContext)
  {
    renderContext = self->_renderContext;

    [(SCNMTLRenderContext *)renderContext setContentScaleFactor:factor];
  }

  else
  {
    RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext, a2);
    if (RendererContextGL)
    {

      C3DRendererContextSetContentScaleFactor(RendererContextGL, factorCopy);
    }
  }
}

- (void)_setBackingSize:(SCNRenderer *)self
{
  v3 = vceq_s32(*self->_anon_58, v2);
  if ((vpmin_u32(v3, v3).u32[0] & 0x80000000) == 0)
  {
    v5 = v2;
    *self->_anon_58 = v2;
    [(SCNRenderer *)self _invalidateFramebuffer];
    if (self->_renderContext && !self->_renderingAPI && (*(self + 121) & 8) != 0)
    {
      [-[SCNRenderer metalLayer](self "metalLayer")];
    }

    if (self->_overlayScene)
    {

      [(SCNRenderer *)self _prepareSKRenderer];
    }
  }
}

- (void)_deleteGLFramebuffer
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_renderingAPI == SCNRenderingAPIMetal || [EAGLContext currentContext] == _glContext";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, self, a3, "Assertion '%s' failed. invalid context", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_beginFrame
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_renderingAPI == SCNRenderingAPIMetal";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, self, a3, "Assertion '%s' failed. _beginFrame - unexpected rendering API", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_endFrame
{
  if (self->_renderContext)
  {
    if ((*&self->_selfDelegationConformance & 0x40) != 0)
    {
      SystemTime = C3DEngineContextGetSystemTime(self->_engineContext);
      selfCopy = self;
      selfCopy2 = self;
    }

    else if ((*&self->_privateRendererOwnerDelegationConformance & 0x40) != 0)
    {
      privateRendererOwner = self->_privateRendererOwner;
      SystemTime = C3DEngineContextGetSystemTime(self->_engineContext);
      selfCopy = privateRendererOwner;
      selfCopy2 = privateRendererOwner;
    }

    else
    {
      if ((*&self->_delegationConformance & 0x40) == 0)
      {
LABEL_15:
        renderContext = self->_renderContext;
        v13 = (*(self + 121) >> 4) & 1;

        [(SCNMTLRenderContext *)renderContext endFrameWaitingUntilCompleted:v13 status:0 error:0];
        return;
      }

      Weak = objc_loadWeak(&self->_delegate);
      selfCopy3 = self;
      if ((*(self + 121) & 4) != 0)
      {
        selfCopy3 = self->_privateRendererOwner;
      }

      SystemTime = C3DEngineContextGetSystemTime(self->_engineContext);
      selfCopy = Weak;
      selfCopy2 = selfCopy3;
    }

    [(SCNRenderer *)selfCopy _renderer:selfCopy2 inputTimeForCurrentFrameWithTime:SystemTime];
    [-[SCNRenderer metalLayer](self "metalLayer")];
    goto LABEL_15;
  }

  RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext, a2);
  if (self->_framebufferInfo.frameBuffer)
  {

    C3DRendererContextUnbindFramebuffer(RendererContextGL, v9);
  }
}

- (void)_resolveAndDiscardGL
{
  RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext, a2);
  if (self->_framebufferInfo.multisamplingFrameBuffer)
  {
    v5 = RendererContextGL;
    Size = C3DFramebufferGetSize(self->_framebufferInfo.frameBuffer, v4);
    *&v7 = 0;
    *(&v7 + 1) = Size;
    v8 = v7;
    C3DRendererContextResolveFramebuffer(v5, self->_framebufferInfo.frameBuffer, self->_framebufferInfo.multisamplingFrameBuffer, 1, 1, &v8);
  }
}

- (void)_prepareRenderTarget
{
  v3 = *(self + 121);
  if (v3)
  {
    if (self->_renderingAPI)
    {
      [(SCNRenderer *)self _deleteGLFramebuffer];
    }

    else
    {

      self->_mtlTexture = 0;
    }

    v3 = *(self + 121) & 0xFE;
    *(self + 121) = v3;
  }

  if ((v3 & 0x20) != 0 && !self->_renderingAPI)
  {

    [(SCNRenderer *)self _createPrepareFramebufferIfNeeded];
  }

  else if ((v3 & 0x10) != 0)
  {

    [(SCNRenderer *)self _createOffscreenFramebufferIfNeeded];
  }

  else if (self->_renderingAPI)
  {

    [(SCNRenderer *)self _prepareGLRenderTarget];
  }
}

- (void)_prepareGLRenderTarget
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __37__SCNRenderer__prepareGLRenderTarget__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 272) renderbufferStorage:36161 fromDrawable:{objc_msgSend(*(*(a1 + 32) + 344), "scn_backingLayer")}];
  if ((v1 & 1) == 0)
  {
    v3 = scn_default_log(v1, v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __37__SCNRenderer__prepareGLRenderTarget__block_invoke_cold_1();
    }
  }
}

- (void)_createOffscreenFramebufferIfNeeded
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

- (void)_createPrepareFramebufferIfNeeded
{
  if (!self->_renderingAPI)
  {
    v12 = v2;
    mtlTexture = self->_mtlTexture;
    if (*(self + 121))
    {

      self->_mtlTexture = 0;
      *(self + 121) &= ~1u;
    }

    else if (mtlTexture)
    {
      return;
    }

    v8 = [(SCNRenderer *)self _preparePixelFormat:v3];
    if (!v8)
    {
      wantsWideGamut = [(SCNMTLRenderContext *)self->_renderContext wantsWideGamut];
      if (self->__antialiasingMode)
      {
        v10 = wantsWideGamut | 8;
      }

      else
      {
        v10 = wantsWideGamut;
      }

      v8 = C3DMetalFramebufferPixelFormat(v10 | 0x10u);
    }

    v11 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v8 width:32 height:32 mipmapped:0];
    [v11 setUsage:5];
    [v11 setStorageMode:0];
    if (C3DEngineContextGetPreferredRenderMode(self->_engineContext) == 1)
    {
      [v11 setArrayLength:C3DEngineContextGetEyeCount(self->_engineContext)];
      [v11 setTextureType:3];
    }

    self->_mtlTexture = [-[SCNRenderer metalDevice](self "metalDevice")];
  }
}

- (void)set_antialiasingMode:(unint64_t)mode
{
  if (self->__antialiasingMode != mode)
  {
    self->__antialiasingMode = mode;
    [(SCNRenderer *)self _invalidateFramebuffer];
    _antialiasingMode = [(SCNRenderer *)self _antialiasingMode];
    v6 = SCNSampleCountForAntialiasingMode(_antialiasingMode, v5);
    _engineContext = [(SCNRenderer *)self _engineContext];
    RendererContextGL = C3DEngineContextGetRendererContextGL(_engineContext, v8);
    if (RendererContextGL)
    {

      C3DRendererContextSetSampleCount(RendererContextGL, v6);
    }

    else
    {
      renderContext = self->_renderContext;
      if (renderContext)
      {

        [(SCNMTLRenderContext *)renderContext setSampleCount:v6];
      }
    }
  }
}

- (void)set_screenTransform:(SCNMatrix4 *)transform
{
  v3 = *&transform->m21;
  v5[0] = *&transform->m11;
  v5[1] = v3;
  v4 = *&transform->m41;
  v5[2] = *&transform->m31;
  v5[3] = v4;
  [(SCNMTLRenderContext *)self->_renderContext setScreenTransform:v5];
}

- (__C3DRendererContext)_rendererContextGL
{
  result = self->_engineContext;
  if (result)
  {
    return C3DEngineContextGetRendererContextGL(result, a2);
  }

  return result;
}

- (BOOL)autoenablesDefaultLighting
{
  [(SCNRenderer *)self lock];
  _engineContext = [(SCNRenderer *)self _engineContext];
  if (_engineContext)
  {
    v5 = C3DEngineContextGetRenderingOptionForKey(_engineContext, @"defaultLight") == *MEMORY[0x277CBED28];
  }

  else
  {
    v6 = scn_default_log(0, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNRenderer autoenablesDefaultLighting];
    }

    v5 = 0;
  }

  [(SCNRenderer *)self unlock];
  return v5;
}

- (void)setAutoenablesDefaultLighting:(BOOL)lighting
{
  lightingCopy = lighting;
  [(SCNRenderer *)self lock];
  _engineContext = [(SCNRenderer *)self _engineContext];
  if (_engineContext)
  {
    v7 = _engineContext;
    Scene = C3DEngineContextGetScene(_engineContext, v6);
    if (Scene)
    {
      v10 = Scene;
      C3DSceneLock(Scene, v9);
      v11 = MEMORY[0x277CBED10];
      if (lightingCopy)
      {
        v11 = MEMORY[0x277CBED28];
      }

      C3DEngineContextSetRenderingOptionForKey(v7, @"defaultLight", *v11);
      C3DSceneUnlock(v10, v12);
    }

    else
    {
      v14 = MEMORY[0x277CBED10];
      if (lightingCopy)
      {
        v14 = MEMORY[0x277CBED28];
      }

      C3DEngineContextSetRenderingOptionForKey(v7, @"defaultLight", *v14);
    }
  }

  else
  {
    v13 = scn_default_log(0, v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SCNRenderer setAutoenablesDefaultLighting:];
    }
  }

  [(SCNRenderer *)self unlock];
}

- (void)setPointOfView:(id)view
{
  v139 = *MEMORY[0x277D85DE8];
  if (self->_pointOfView != view)
  {
    viewCopy = view;
    self->_pointOfViewWasSet = 1;
    isPresentationInstance = [view isPresentationInstance];
    if (isPresentationInstance)
    {
      v7 = scn_default_log(isPresentationInstance, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [(SCNRenderer *)v7 setPointOfView:v8, v9, v10, v11, v12, v13, v14];
      }
    }

    presentationNode = [(SCNNode *)[(SCNRenderer *)self pointOfView] presentationNode];
    v16 = self->_pointOfView;
    self->_pointOfView = viewCopy;
    +[SCNTransaction animationDuration];
    v18 = v17;
    v19 = (v17 > 0.0) & ~+[SCNTransaction disableActions];
    Scene = C3DEngineContextGetScene(self->_engineContext, v20);
    v23 = Scene;
    if (v19 == 1 && Scene != 0)
    {
      v19 = C3DSceneIsPausedForEditing(Scene, v22) ^ 1;
    }

    if (+[SCNTransaction immediateMode])
    {
      v19 = 0;
    }

    else
    {
      if (!presentationNode)
      {
        v19 = 0;
      }

      +[SCNTransaction begin];
    }

    v137[0] = MEMORY[0x277D85DD0];
    v137[1] = 3221225472;
    v137[2] = __30__SCNRenderer_setPointOfView___block_invoke;
    v137[3] = &unk_2782FC950;
    v137[4] = viewCopy;
    v137[5] = self;
    [SCNTransaction postCommandWithContext:v23 object:self applyBlock:v137];
    if (!v19)
    {
      goto LABEL_139;
    }

    ImplicitAnimationTimingFunction = +[SCNTransaction animationTimingFunction];
    if (!ImplicitAnimationTimingFunction)
    {
      ImplicitAnimationTimingFunction = SCNKitGetImplicitAnimationTimingFunction();
    }

    memset(&v136, 0, sizeof(v136));
    memset(&v135, 0, sizeof(v135));
    if ([viewCopy parentNode])
    {
      v26 = [objc_msgSend(viewCopy "parentNode")];
      if (v26)
      {
        v134 = SCNMatrix4Identity;
        objc_msgSend_convertTransform_fromNode_(v26);
        goto LABEL_24;
      }
    }

    else if (presentationNode)
    {
      objc_msgSend_worldTransform(presentationNode);
      goto LABEL_24;
    }

    memset(&v135, 0, sizeof(v135));
LABEL_24:
    memset(&v134, 0, sizeof(v134));
    presentationNode2 = [viewCopy presentationNode];
    if (presentationNode2)
    {
      objc_msgSend_transform(presentationNode2);
    }

    else
    {
      memset(&v134, 0, sizeof(v134));
    }

    m = v134;
    SCNMatrix4Invert(&a, &m);
    v134 = a;
    a = v135;
    m = v134;
    SCNMatrix4Mult(&v136, &a, &m);
    v28 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform"];
    [v28 setDuration:v18];
    [v28 setTimingFunction:ImplicitAnimationTimingFunction];
    [v28 setAdditive:1];
    a = v136;
    [v28 setFromValue:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithSCNMatrix4:", &a)}];
    a = SCNMatrix4Identity;
    [v28 setToValue:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithSCNMatrix4:", &a)}];
    [viewCopy addAnimation:v28 forKey:0];
    camera = [(SCNNode *)presentationNode camera];
    v30 = [objc_msgSend(viewCopy "presentationNode")];
    v125 = v30;
    if (-[SCNCamera hasCustomProjectionTransform](camera, "hasCustomProjectionTransform") || ([v30 hasCustomProjectionTransform] & 1) != 0)
    {
LABEL_130:
      v108 = ImplicitAnimationTimingFunction;
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v109 = [&unk_282E0FBD0 countByEnumeratingWithState:&v126 objects:v138 count:16];
      if (v109)
      {
        v110 = v109;
        v111 = *v127;
        do
        {
          for (i = 0; i != v110; ++i)
          {
            if (*v127 != v111)
            {
              objc_enumerationMutation(&unk_282E0FBD0);
            }

            v113 = *(*(&v126 + 1) + 8 * i);
            [objc_msgSend(v30 valueForKey:{v113), "doubleValue"}];
            v115 = v114;
            [-[SCNCamera valueForKey:](camera valueForKey:{v113), "doubleValue"}];
            if (v115 != v116)
            {
              v117 = v116;
              v118 = camera;
              v119 = viewCopy;
              v120 = MEMORY[0x277CD9E10];
              v121 = [@"camera." stringByAppendingString:v113];
              v122 = v120;
              viewCopy = v119;
              camera = v118;
              v30 = v125;
              v123 = [v122 animationWithKeyPath:v121];
              [v123 setDuration:v18];
              [v123 setTimingFunction:v108];
              [v123 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v117 - v115)}];
              [v123 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
              [v123 setAdditive:1];
              [viewCopy addAnimation:v123 forKey:0];
            }
          }

          v110 = [&unk_282E0FBD0 countByEnumeratingWithState:&v126 objects:v138 count:16];
        }

        while (v110);
      }

LABEL_139:
      if (!+[SCNTransaction immediateMode])
      {
        +[SCNTransaction commit];
      }

      return;
    }

    v31 = *self->_anon_58;
    if (HIDWORD(v31))
    {
      v32 = v31 / HIDWORD(v31);
    }

    else
    {
      v32 = 1.0;
    }

    if ([v30 useLegacyFov])
    {
      [v30 xFov];
      v34 = v33;
      [v30 yFov];
      if (v35 == 0.0 && v34 == 0.0)
      {
        v37 = 60.0;
      }

      else
      {
        v37 = v35;
      }

      if (v34 != 0.0 && v37 != 0.0)
      {
        v38 = tan(v34 / 180.0 * 3.14159265);
        if (v38 / tan(v37 / 180.0 * 3.14159265) <= v32)
        {
          v34 = 0.0;
        }

        else
        {
          v37 = 0.0;
        }
      }

      if ([(SCNCamera *)camera useLegacyFov])
      {
        [(SCNCamera *)camera xFov];
        v40 = v39;
        [(SCNCamera *)camera yFov];
        if (v41 == 0.0 && v40 == 0.0)
        {
          v43 = 60.0;
        }

        else
        {
          v43 = v41;
        }

        if (v40 != 0.0 && v43 != 0.0)
        {
          v124 = v32;
          v44 = tan(v40 / 180.0 * 3.14159265);
          if (v44 / tan(v43 / 180.0 * 3.14159265) <= v32)
          {
            v40 = 0.0;
          }

          else
          {
            v43 = 0.0;
          }
        }

        if (v34 != 0.0)
        {
          if (v40 == 0.0)
          {
            v45 = __tanpi(v43 / 360.0);
            v46 = atan(v32 * v45);
            if (v46 < 0.0)
            {
              v46 = 3.14159265 - v46;
            }

            v40 = v46 * 114.591559;
          }

          v43 = 0.0;
          goto LABEL_105;
        }

        v40 = 0.0;
        if (v43 == 0.0)
        {
          v67 = 0.0;
LABEL_92:
          v68 = __tanpi(v67);
          v69 = atan(v68 / v32);
          if (v69 < 0.0)
          {
            v69 = 3.14159265 - v69;
          }

          v43 = v69 * 114.591559;
        }
      }

      else
      {
        [(SCNCamera *)camera fieldOfView];
        v58 = v57;
        projectionDirection = [(SCNCamera *)camera projectionDirection];
        v60 = v58;
        if (v34 != 0.0)
        {
          v43 = 0.0;
          if (projectionDirection == 1)
          {
            v40 = v58;
          }

          else
          {
            v70 = __tanpi(v60 / 360.0);
            v71 = atan(v32 * v70);
            if (v71 < 0.0)
            {
              v71 = 3.14159265 - v71;
            }

            v40 = v71 * 114.591559;
          }

          goto LABEL_105;
        }

        v40 = 0.0;
        if (projectionDirection)
        {
          v67 = v60 / 360.0;
          goto LABEL_92;
        }

        v43 = v60;
      }

LABEL_105:
      if (v34 == 0.0)
      {
        if (v37 == 0.0)
        {
          goto LABEL_115;
        }

        if (v43 != v37)
        {
          v76 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"camera.yFov"];
          [v76 setDuration:v18];
          [v76 setTimingFunction:ImplicitAnimationTimingFunction];
          [v76 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v43 - v37)}];
          [v76 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
          [v76 setAdditive:1];
          [viewCopy addAnimation:v76 forKey:0];
        }

        v74 = MEMORY[0x277CD9E10];
        v75 = @"camera.xFov";
      }

      else
      {
        if (v40 != v34)
        {
          v73 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"camera.xFov"];
          [v73 setDuration:v18];
          [v73 setTimingFunction:ImplicitAnimationTimingFunction];
          [v73 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v40 - v34)}];
          [v73 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
          [v73 setAdditive:1];
          [viewCopy addAnimation:v73 forKey:0];
        }

        v74 = MEMORY[0x277CD9E10];
        v75 = @"camera.yFov";
      }

      v72 = [v74 animationWithKeyPath:{v75, *&v124}];
      [v72 setDuration:v18];
      [v72 setTimingFunction:ImplicitAnimationTimingFunction];
      [v72 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
      [v72 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
LABEL_114:
      [viewCopy addAnimation:v72 forKey:0];
LABEL_115:
      if ([(SCNCamera *)camera usesOrthographicProjection])
      {
        if ([v30 usesOrthographicProjection])
        {
          [(SCNCamera *)camera orthographicScale];
          v78 = v77;
          [v30 orthographicScale];
          if (v78 != v79)
          {
            v80 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"camera.orthographicScale"];
            [v80 setDuration:v18];
            [v80 setTimingFunction:ImplicitAnimationTimingFunction];
            v81 = MEMORY[0x277CCABB0];
            [(SCNCamera *)camera orthographicScale];
            v83 = v82;
            [v125 orthographicScale];
            v85 = v81;
            v30 = v125;
            [v80 setFromValue:{objc_msgSend(v85, "numberWithDouble:", v83 - v84)}];
            [v80 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
            [v80 setAdditive:1];
            [viewCopy addAnimation:v80 forKey:0];
          }
        }
      }

      [(SCNCamera *)camera lensShift];
      v87 = v86;
      [v30 lensShift];
      v89 = vmvn_s8(vceq_f32(v87, v88));
      if ((vpmax_u32(v89, v89).u32[0] & 0x80000000) != 0)
      {
        [(SCNCamera *)camera lensShift];
        v91 = v90;
        [v30 lensShift];
        v93 = vsub_f32(v91, v92);
        v94 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"camera.lensShift"];
        [v94 setDuration:v18];
        [v94 setTimingFunction:ImplicitAnimationTimingFunction];
        [v94 setFromValue:{objc_msgSend(MEMORY[0x277CCAE60], "SCN_valueWithCGPoint:", vcvtq_f64_f32(v93))}];
        [v94 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "SCN_valueWithCGPoint:", *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8))}];
        [v94 setAdditive:1];
        [viewCopy addAnimation:v94 forKey:0];
      }

      v95 = 0uLL;
      memset(&a, 0, 48);
      if (camera)
      {
        objc_msgSend_postProjectionTransform(camera);
        v95 = 0uLL;
      }

      *&m.m21 = v95;
      *&m.m31 = v95;
      *&m.m11 = v95;
      if (v30)
      {
        objc_msgSend_postProjectionTransform(v30);
      }

      *&t1.a = *&a.m11;
      *&t1.c = *&a.m21;
      *&t1.tx = *&a.m31;
      *&t2.a = *&m.m11;
      *&t2.c = *&m.m21;
      *&t2.tx = *&m.m31;
      if (!CGAffineTransformEqualToTransform(&t1, &t2))
      {
        v96 = vcvt_f32_f64(*&a.m31);
        v97 = vcvt_f32_f64(*&m.m31);
        v98 = vmvn_s8(vceq_f32(v96, v97));
        if ((vpmax_u32(v98, v98).u32[0] & 0x80000000) != 0)
        {
          v99 = vsub_f32(v96, v97);
          v100 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"camera.postProjectionTransformTranslation"];
          [v100 setDuration:v18];
          [v100 setTimingFunction:ImplicitAnimationTimingFunction];
          [v100 setFromValue:{objc_msgSend(MEMORY[0x277CCAE60], "SCN_valueWithCGPoint:", vcvtq_f64_f32(v99))}];
          [v100 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "SCN_valueWithCGPoint:", *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8))}];
          [v100 setAdditive:1];
          [viewCopy addAnimation:v100 forKey:0];
        }

        v101.f64[0] = *&a.m11;
        v101.f64[1] = *&a.m23;
        v102.f64[0] = *&m.m11;
        v102.f64[1] = *&m.m23;
        v103 = vcvt_f32_f64(v101);
        v104 = vcvt_f32_f64(v102);
        v105 = vmvn_s8(vceq_f32(v103, v104));
        if ((vpmax_u32(v105, v105).u32[0] & 0x80000000) != 0)
        {
          v106 = vsub_f32(v103, v104);
          v107 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"camera.postProjectionTransformScale"];
          [v107 setDuration:v18];
          [v107 setTimingFunction:ImplicitAnimationTimingFunction];
          [v107 setFromValue:{objc_msgSend(MEMORY[0x277CCAE60], "SCN_valueWithCGPoint:", vcvtq_f64_f32(v106))}];
          [v107 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "SCN_valueWithCGPoint:", *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8))}];
          [v107 setAdditive:1];
          [viewCopy addAnimation:v107 forKey:0];
        }
      }

      goto LABEL_130;
    }

    [v30 fieldOfView];
    v48 = v47;
    if ([(SCNCamera *)camera useLegacyFov])
    {
      [(SCNCamera *)camera xFov];
      v50 = v49;
      [(SCNCamera *)camera yFov];
      if (v51 == 0.0 && v50 == 0.0)
      {
        v53 = 60.0;
      }

      else
      {
        v53 = v51;
      }

      if (v50 != 0.0 && v53 != 0.0)
      {
        v54 = tan(v50 / 180.0 * 3.14159265);
        if (v54 / tan(v53 / 180.0 * 3.14159265) <= v32)
        {
          v50 = 0.0;
        }

        else
        {
          v53 = 0.0;
        }
      }

      if ([v30 projectionDirection] == 1)
      {
        v55 = v50;
        if (v50 == 0.0)
        {
          v56 = v32 * __tanpi(v53 / 360.0);
          goto LABEL_85;
        }
      }

      else
      {
        v55 = v53;
        if (v53 == 0.0)
        {
          v56 = __tanpi(v50 / 360.0) / v32;
LABEL_85:
          v66 = atan(v56);
          if (v66 < 0.0)
          {
            v66 = 3.14159265 - v66;
          }

LABEL_101:
          v55 = v66 * 114.591559;
        }
      }
    }

    else
    {
      [(SCNCamera *)camera fieldOfView];
      v55 = v61;
      projectionDirection2 = [v30 projectionDirection];
      if (projectionDirection2 != [(SCNCamera *)camera projectionDirection])
      {
        projectionDirection3 = [v30 projectionDirection];
        v64 = __tanpi(v55 / 360.0);
        if (projectionDirection3 == 1)
        {
          v65 = v32 * v64;
        }

        else
        {
          v65 = v64 / v32;
        }

        v66 = atan(v65);
        if (v66 < 0.0)
        {
          v66 = 3.14159265 - v66;
        }

        goto LABEL_101;
      }
    }

    if (v55 == v48)
    {
      goto LABEL_115;
    }

    v72 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"camera.fieldOfView"];
    [v72 setDuration:v18];
    [v72 setTimingFunction:ImplicitAnimationTimingFunction];
    [v72 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v55 - v48)}];
    [v72 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
    [v72 setAdditive:1];
    goto LABEL_114;
  }
}

void __30__SCNRenderer_setPointOfView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nodeRef];
  PointOfViewIfAny = C3DEngineContextGetPointOfViewIfAny(*(*(a1 + 40) + 208), v3);
  if (PointOfViewIfAny && (Camera = C3DNodeGetCamera(PointOfViewIfAny, v5)) != 0)
  {
    v8 = Camera;
    HasDepthOfField = C3DCameraHasDepthOfField(Camera, v7);
    v11 = C3DCameraGetTechnique(v8, v10) != 0;
  }

  else
  {
    v11 = 0;
    HasDepthOfField = 0;
  }

  C3DEngineContextSetPointOfView(*(*(a1 + 40) + 208), v2);
  if (v2)
  {
    v13 = C3DNodeGetCamera(v2, v12);
    if (v13)
    {
      v15 = v13;
      v16 = C3DCameraHasDepthOfField(v13, v14);
      v18 = C3DCameraGetTechnique(v15, v17) != 0;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    v19 = [MEMORY[0x277CCAB98] defaultCenter];
    v21 = [v19 postNotificationName:@"kC3DSceneDidUpdateNotification" object:{C3DGetScene(v2, v20)}];
    if (v16 != HasDepthOfField || v18 || v11)
    {
      SharedInstance = C3DNotificationCenterGetSharedInstance(v21, v22);
      v25 = C3DGetScene(v2, v24);

      C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", v25, 0, 1u);
    }
  }
}

- (void)setPointOfCulling:(id)culling
{
  pointOfCulling = self->_pointOfCulling;
  if (pointOfCulling != culling)
  {
    v6 = pointOfCulling;
    self->_pointOfCulling = culling;
    Scene = C3DEngineContextGetScene(self->_engineContext, v7);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __33__SCNRenderer_setPointOfCulling___block_invoke;
    v9[3] = &unk_2782FC950;
    v9[4] = culling;
    v9[5] = self;
    [SCNTransaction postCommandWithContext:Scene object:self applyBlock:v9];
  }
}

CFTypeRef __33__SCNRenderer_setPointOfCulling___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nodeRef];
  v3 = *(*(a1 + 40) + 208);

  return C3DEngineContextSetPointOfCulling(v3, v2);
}

- (void)_projectPoints:(SCNVector3 *)points count:(unint64_t)count viewport:(SCNVector4)viewport
{
  y = viewport.y;
  x = viewport.x;
  _engineContext = [(SCNRenderer *)self _engineContext];
  if (_engineContext)
  {
    v10 = _engineContext;
    PointOfView = C3DEngineContextGetPointOfView(_engineContext, v9);
    if (PointOfView)
    {
      v12 = PointOfView;
      v13 = [(SCNRenderer *)self adjustViewportForRendering:COERCE_DOUBLE(__PAIR64__(LODWORD(y), LODWORD(x)))];
      v22 = v14;
      if (C3DWasLinkedBeforeMajorOSYear2020(v13, v15))
      {
        CoordinatesSystemOptions = 0;
        if (!count)
        {
          return;
        }
      }

      else
      {
        CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(v10, v16);
        if (!count)
        {
          return;
        }
      }

      p_z = &points->z;
      do
      {
        v17.n128_u64[0] = *(p_z - 1);
        v17.n128_f32[2] = *p_z;
        v23 = v17;
        if (_C3DProjectPoints(&v23, 1, v12, [(SCNScene *)[(SCNRenderer *)self scene] sceneRef], CoordinatesSystemOptions, &v23, v22))
        {
          v17.n128_u64[1] = v23.n128_u64[1];
          *(p_z - 1) = v23.n128_u64[0];
          *p_z = v17.n128_f32[2];
        }

        p_z += 3;
        --count;
      }

      while (count);
    }
  }
}

- (SCNVector3)_projectPoint:(SCNVector3)point viewport:(SCNVector4)viewport
{
  y = viewport.y;
  x = viewport.x;
  z = point.z;
  v26 = *&point.x;
  v27 = point.y;
  _engineContext = [(SCNRenderer *)self _engineContext];
  if (_engineContext)
  {
    v7 = _engineContext;
    PointOfView = C3DEngineContextGetPointOfView(_engineContext, v6);
    if (PointOfView)
    {
      v9 = PointOfView;
      v10 = [(SCNRenderer *)self adjustViewportForRendering:COERCE_DOUBLE(__PAIR64__(LODWORD(y), LODWORD(x)))];
      v25 = v11;
      v12 = v26;
      v12.n128_f32[1] = v27;
      v12.n128_f32[2] = z;
      v29 = v12;
      if (C3DWasLinkedBeforeMajorOSYear2020(v10, v13))
      {
        CoordinatesSystemOptions = 0;
      }

      else
      {
        CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(v7, v14);
      }

      sceneRef = [(SCNScene *)[(SCNRenderer *)self scene] sceneRef];
      C3DSceneLock(sceneRef, v17);
      v18 = _C3DProjectPoints(&v29, 1, v9, sceneRef, CoordinatesSystemOptions, &v29, v25);
      C3DSceneUnlock(sceneRef, v19);
      if (v18)
      {
        v27 = v29.n128_f32[1];
        v26.n128_u32[0] = v29.n128_u32[0];
        z = v29.n128_f32[2];
      }
    }
  }

  v20 = v26.n128_f32[0];
  v21 = v27;
  v22 = z;
  result.z = v22;
  result.y = v21;
  result.x = v20;
  return result;
}

- (SCNVector3)_unprojectPoint:(SCNVector3)point viewport:(SCNVector4)viewport
{
  y = viewport.y;
  x = viewport.x;
  z = point.z;
  v26 = *&point.x;
  v27 = point.y;
  _engineContext = [(SCNRenderer *)self _engineContext];
  if (_engineContext)
  {
    v7 = _engineContext;
    PointOfView = C3DEngineContextGetPointOfView(_engineContext, v6);
    if (PointOfView)
    {
      v9 = PointOfView;
      v10 = [(SCNRenderer *)self adjustViewportForRendering:COERCE_DOUBLE(__PAIR64__(LODWORD(y), LODWORD(x)))];
      v25 = v11;
      v12 = v26;
      v12.f32[1] = v27;
      v12.f32[2] = z;
      v29 = v12;
      if (C3DWasLinkedBeforeMajorOSYear2020(v10, v13))
      {
        CoordinatesSystemOptions = 0;
      }

      else
      {
        CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(v7, v14);
      }

      sceneRef = [(SCNScene *)[(SCNRenderer *)self scene] sceneRef];
      C3DSceneLock(sceneRef, v17);
      v18 = _C3DUnProjectPoints(&v29, 1, v9, sceneRef, CoordinatesSystemOptions, &v29, v25);
      C3DSceneUnlock(sceneRef, v19);
      if (v18)
      {
        v27 = v29.f32[1];
        v26.i32[0] = v29.i32[0];
        z = v29.f32[2];
      }
    }
  }

  v20 = v26.f32[0];
  v21 = v27;
  v22 = z;
  result.z = v22;
  result.y = v21;
  result.x = v20;
  return result;
}

- (SCNVector3)projectPoint:(SCNVector3)result
{
  v4 = *self->_anon_58;
  if (v4.i32[0])
  {
    v5 = COERCE_DOUBLE(vcvt_f32_u32(v4));
    LODWORD(v3) = HIDWORD(v5);
    [(SCNRenderer *)self _projectPoint:*&result.x viewport:*&result.y, *&result.z, 0.0, 0.0, v5, v3];
  }

  return result;
}

- (SCNVector3)unprojectPoint:(SCNVector3)result
{
  v4 = *self->_anon_58;
  if (v4.i32[0])
  {
    v5 = COERCE_DOUBLE(vcvt_f32_u32(v4));
    LODWORD(v3) = HIDWORD(v5);
    [(SCNRenderer *)self _unprojectPoint:*&result.x viewport:*&result.y, *&result.z, 0.0, 0.0, v5, v3];
  }

  return result;
}

- (void)_didRenderScene:(id)scene
{
  if ((*&self->_delegationConformance & 0x20) != 0 || (*&self->_selfDelegationConformance & 0x20) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 0x20) != 0)
  {
    [SCNTransaction setImmediateMode:1];
    +[SCNTransaction setImmediateModeRestrictedContext:](SCNTransaction, "setImmediateModeRestrictedContext:", [scene sceneRef]);
    Stats = C3DEngineContextGetStats(self->_engineContext, v5);
    v7 = CACurrentMediaTime();
    [(SCNRenderer *)self _getFrameIndex];
    kdebug_trace();
    if (!self->_renderingAPI && ![(SCNMTLRenderContext *)self->_renderContext clientCommandBuffer])
    {
      [(SCNMTLRenderContext *)self->_renderContext _commitResourceCommandBufferIfNeeded];
      [-[SCNMTLRenderContext currentCommandBuffer](self->_renderContext) enqueue];
    }

    forceSystemTime = self->_forceSystemTime;
    if (forceSystemTime == 0.0)
    {
      forceSystemTime = self->_currentSystemTime;
    }

    if ((*&self->_delegationConformance & 0x20) != 0)
    {
      Weak = objc_loadWeak(&self->_delegate);
      privateRendererOwner = self;
      if ((*(self + 121) & 4) != 0)
      {
        privateRendererOwner = self->_privateRendererOwner;
      }

      [Weak renderer:privateRendererOwner didRenderScene:scene atTime:forceSystemTime];
    }

    if ((*&self->_selfDelegationConformance & 0x20) != 0)
    {
      [(SCNRenderer *)self _renderer:self didRenderScene:scene atTime:forceSystemTime];
    }

    if ((*&self->_privateRendererOwnerDelegationConformance & 0x20) != 0)
    {
      [(SCNSceneRenderer *)self->_privateRendererOwner _renderer:self->_privateRendererOwner didRenderScene:scene atTime:forceSystemTime];
    }

    kdebug_trace();
    *(Stats + 168) = *(Stats + 168) + CACurrentMediaTime() - v7;
    [SCNTransaction setImmediateModeRestrictedContext:0];

    [SCNTransaction setImmediateMode:0];
  }
}

- (void)_willRenderScene:(id)scene
{
  selfCopy = self;
  if ((*&self->_delegationConformance & 0x10) != 0 || (*&self->_selfDelegationConformance & 0x10) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 0x10) != 0)
  {
    [SCNTransaction setImmediateMode:1];
    +[SCNTransaction setImmediateModeRestrictedContext:](SCNTransaction, "setImmediateModeRestrictedContext:", [scene sceneRef]);
    Stats = C3DEngineContextGetStats(selfCopy->_engineContext, v5);
    v7 = CACurrentMediaTime();
    [(SCNRenderer *)selfCopy _getFrameIndex];
    kdebug_trace();
    forceSystemTime = selfCopy->_forceSystemTime;
    if (forceSystemTime == 0.0)
    {
      forceSystemTime = selfCopy->_currentSystemTime;
    }

    if ((*&selfCopy->_privateRendererOwnerDelegationConformance & 0x10) != 0)
    {
      [(SCNSceneRenderer *)selfCopy->_privateRendererOwner _renderer:selfCopy->_privateRendererOwner willRenderScene:scene atTime:forceSystemTime];
    }

    if ((*&selfCopy->_selfDelegationConformance & 0x10) != 0)
    {
      [(SCNRenderer *)selfCopy _renderer:selfCopy willRenderScene:scene atTime:forceSystemTime];
    }

    if ((*&selfCopy->_delegationConformance & 0x10) != 0)
    {
      Weak = objc_loadWeak(&selfCopy->_delegate);
      if ((*(selfCopy + 121) & 4) != 0)
      {
        selfCopy = selfCopy->_privateRendererOwner;
      }

      [Weak renderer:selfCopy willRenderScene:scene atTime:forceSystemTime];
    }

    kdebug_trace();
    *(Stats + 168) = *(Stats + 168) + CACurrentMediaTime() - v7;
    [SCNTransaction setImmediateModeRestrictedContext:0];

    [SCNTransaction setImmediateMode:0];
  }
}

- (id)_readSubdivCacheForHash:(id)hash
{
  selfCopy = self;
  if (((*&self->_privateRendererOwnerDelegationConformance & 0x80) == 0 || (result = [(SCNSceneRenderer *)self->_privateRendererOwner _renderer:self->_privateRendererOwner subdivDataForHash:hash]) == 0) && ((*&selfCopy->_selfDelegationConformance & 0x80) == 0 || (result = [(SCNRenderer *)selfCopy _renderer:selfCopy subdivDataForHash:hash]) == 0))
  {
    if ((*&selfCopy->_delegationConformance & 0x80) == 0)
    {
      return 0;
    }

    Weak = objc_loadWeak(&selfCopy->_delegate);
    if ((*(selfCopy + 121) & 4) != 0)
    {
      selfCopy = selfCopy->_privateRendererOwner;
    }

    result = [Weak _renderer:selfCopy subdivDataForHash:hash];
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

- (void)_writeSubdivCacheForHash:(id)hash dataProvider:(id)provider
{
  selfCopy = self;
  if ((*&self->_privateRendererOwnerDelegationConformance & 0x100) != 0)
  {
    [(SCNSceneRenderer *)self->_privateRendererOwner _renderer:self->_privateRendererOwner didBuildSubdivDataForHash:hash dataProvider:provider];
  }

  if ((*&selfCopy->_selfDelegationConformance & 0x100) != 0)
  {
    [(SCNRenderer *)selfCopy _renderer:selfCopy didBuildSubdivDataForHash:hash dataProvider:provider];
  }

  if ((*&selfCopy->_delegationConformance & 0x100) != 0)
  {
    Weak = objc_loadWeak(&selfCopy->_delegate);
    if ((*(selfCopy + 121) & 4) != 0)
    {
      selfCopy = selfCopy->_privateRendererOwner;
    }

    [Weak _renderer:selfCopy didBuildSubdivDataForHash:hash dataProvider:provider];
  }
}

- (void)setAutoAdjustCamera:(BOOL)camera
{
  cameraCopy = camera;
  _engineContext = [(SCNRenderer *)self _engineContext];
  if (_engineContext)
  {

    C3DEngineContextSetAutoAdjustZRange(_engineContext, cameraCopy);
  }
}

- (BOOL)autoAdjustCamera
{
  _engineContext = [(SCNRenderer *)self _engineContext];
  if (_engineContext)
  {
    LOBYTE(_engineContext) = C3DEngineContextGetAutoAdjustZRange(_engineContext, v3) != 0;
  }

  return _engineContext;
}

- (id)_defaultPOVForScene:(id)scene
{
  v5 = [objc_msgSend(scene "rootNode")];
  if ([v5 count])
  {

    return [v5 objectAtIndex:0];
  }

  else
  {
    sceneRef = [scene sceneRef];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _isEditor = [(SCNSceneRenderer *)self->_privateRendererOwner _isEditor];
    }

    else
    {
      _isEditor = 0;
    }

    result = C3DCreateDefaultCameraNode(sceneRef, _isEditor);
    if (result)
    {
      v9 = result;
      v10 = [SCNNode nodeWithNodeRef:result];
      CFRelease(v9);
      return v10;
    }
  }

  return result;
}

BOOL __35__SCNRenderer__defaultPOVForScene___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = [a2 camera];
  if (v4)
  {
    *a3 = 1;
  }

  return v4 != 0;
}

- (void)_updatePointOfView
{
  engineContext = self->_engineContext;
  if (engineContext)
  {
    PointOfView = C3DEngineContextGetPointOfView(engineContext, a2);
    if (self->_pointOfView)
    {
      v5 = 1;
    }

    else
    {
      v5 = PointOfView == 0;
    }

    if (!v5)
    {
      [(SCNRenderer *)self setPointOfView:[SCNNode nodeWithNodeRef:PointOfView]];
      self->_pointOfViewWasSet = 0;
    }
  }
}

- (void)_prepareForTransition:(id)transition outgoingScene:(id)scene outgoingPointOfView:(id)view completionHandler:(id)handler
{
  transitionContext = self->_transitionContext;
  if (transitionContext)
  {

    self->_transitionContext = 0;
  }

  v12 = objc_alloc_init(SCNRendererTransitionContext);
  self->_transitionContext = v12;
  if (handler)
  {
    v13 = _Block_copy(handler);
    v12 = self->_transitionContext;
  }

  else
  {
    v13 = 0;
  }

  v12->completionHandler = v13;
  [(SCNRendererTransitionContext *)self->_transitionContext setOutgoingScene:scene];
  [(SCNRendererTransitionContext *)self->_transitionContext setOutgoingPointOfView:view];
  [(SCNRendererTransitionContext *)self->_transitionContext setTransition:transition];
  [(SCNRendererTransitionContext *)self->_transitionContext setTransitionStartTime:CACurrentMediaTime()];
  if ([transition pausesIncomingScene])
  {
    [(SCNScene *)self->_scene setPaused:1];
  }

  if ([transition pausesOutgoingScene])
  {

    [scene setPaused:1];
  }
}

- (void)presentScene:(id)scene withTransition:(id)transition incomingPointOfView:(id)view completionHandler:(id)handler
{
  scene = self->_scene;
  pointOfView = [(SCNRenderer *)self pointOfView];
  [(SCNRenderer *)self lock];
  +[SCNTransaction begin];
  [SCNTransaction setAnimationDuration:0.0];
  [SCNTransaction setImmediateMode:1];
  [(SCNRenderer *)self setScene:scene];
  [(SCNRenderer *)self setPointOfView:view];
  if (transition)
  {
    [(SCNRenderer *)self _prepareForTransition:transition outgoingScene:scene outgoingPointOfView:pointOfView completionHandler:handler];
  }

  +[SCNTransaction commit];

  [(SCNRenderer *)self unlock];
}

- (void)setScene:(id)scene completionHandler:(id)handler
{
  self->_scene = scene;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__SCNRenderer_setScene_completionHandler___block_invoke;
  v12[3] = &unk_2782FB820;
  v12[4] = self;
  [SCNTransaction postCommandWithContext:0 object:self applyBlock:v12];
  if (scene && (!self->_pointOfViewWasSet || [(SCNNode *)self->_pointOfView scene]!= self->_scene))
  {
    v7 = [(SCNRenderer *)self _defaultPOVForScene:scene];
    if ((*(self + 121) & 4) != 0)
    {
      privateRendererOwner = self->_privateRendererOwner;
    }

    else
    {
      privateRendererOwner = self;
    }

    [privateRendererOwner setPointOfView:v7];
    self->_pointOfViewWasSet = 0;
  }

  if (handler)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__SCNRenderer_setScene_completionHandler___block_invoke_2;
    v11[3] = &unk_2782FF140;
    v11[4] = handler;
    [SCNTransaction postCommandWithContext:0 object:self applyBlock:v11];
  }

  engineContext = self->_engineContext;
  if (engineContext)
  {
    AuthoringEnvironment = C3DEngineContextGetAuthoringEnvironment(engineContext, 0);
    if (AuthoringEnvironment)
    {
      C3DAuthoringEnvironmentSceneDidChange(AuthoringEnvironment, scene);
    }
  }
}

void __42__SCNRenderer_setScene_completionHandler___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 208);
  if (v2)
  {
    v3 = [*(v1 + 8) sceneRef];

    C3DEngineContextSetupWithScene(v2, v3);
  }
}

- (void)setScene:(SCNScene *)scene
{
  if (self->_scene != scene)
  {
    [(SCNRenderer *)self lock];

    v6 = scene;
    self->_scene = v6;
    engineContext = self->_engineContext;
    if (engineContext)
    {
      C3DEngineContextSetupWithScene(engineContext, [(SCNScene *)v6 sceneRef]);
    }

    [(SCNRenderer *)self unlock];
  }
}

- (id)backgroundColor
{
  v2 = self->_backgroundColor;

  return v2;
}

- (void)setBackgroundColor:(id)color
{
  backgroundColor = self->_backgroundColor;
  if (backgroundColor != color)
  {

    colorCopy = color;
    self->_backgroundColor = colorCopy;
    v8.i64[0] = [(UIColor *)colorCopy scn_C3DColorIgnoringColorSpace:0 success:0];
    v8.i64[1] = v9;
    v10 = vmulq_f32(vdupq_n_s32(HIDWORD(v9)), v8);
    v10.var0.var0[3] = *(&v9 + 1);
    self->_c3dBackgroundColor = v10;

    [(SCNRenderer *)self _c3dBackgroundColorDidChange];
  }
}

- (void)_c3dBackgroundColorDidChange
{
  _engineContext = [(SCNRenderer *)self _engineContext];
  if (!_engineContext)
  {
    v5 = scn_default_log(0, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetStats_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  C3DEngineContextSetMainClearColor(_engineContext, *self->_c3dBackgroundColor.var0.var0, *&self->_c3dBackgroundColor.var0.var1.var2);
}

- (void)resolvedBackgroundColorDidChange
{
  v3.i64[0] = [(UIColor *)self->_backgroundColor scn_C3DColorIgnoringColorSpace:0 success:0];
  v3.i64[1] = v4;
  v5 = vmulq_f32(vdupq_n_s32(HIDWORD(v4)), v3);
  v5.var0.var0[3] = *(&v4 + 1);
  self->_c3dBackgroundColor = v5;

  [(SCNRenderer *)self _c3dBackgroundColorDidChange];
}

- (id)metalLayer
{
  if ((*(self + 121) & 8) != 0)
  {
    return [(SCNSceneRenderer *)self->_privateRendererOwner scn_backingLayer];
  }

  else
  {
    return 0;
  }
}

- (id)_setupSKRendererIfNeeded
{
  result = self->_overlayRenderer;
  if (!result)
  {
    v4 = NSClassFromString(&cfstr_Skscnrenderer.isa);
    if (self->_renderingAPI)
    {
      [(SCNRenderer *)self context];
      glContext = self->_glContext;
      [(SCNRenderer *)self lock];
      if (glContext)
      {
        v6 = [(objc_class *)v4 rendererWithContext:glContext options:0];
        self->_overlayRenderer = v6;
        [(__SKSCNRenderer *)v6 setScene:self->_overlayScene];
      }

      [(SCNRenderer *)self unlock];
    }

    else
    {
      self->_overlayRenderer = [(objc_class *)v4 rendererWithDevice:[(SCNRenderer *)self metalDevice] options:0];
    }

    [(SCNRenderer *)self _contentsScaleFactor];
    [(__SKSCNRenderer *)self->_overlayRenderer setBackingScaleFactor:?];
    return self->_overlayRenderer;
  }

  return result;
}

- (id)_prepareSKRenderer
{
  _setupSKRendererIfNeeded = [(SCNRenderer *)self _setupSKRendererIfNeeded];
  [_setupSKRendererIfNeeded bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *self->_anon_58;
  v13 = v12;
  v14 = HIDWORD(v12);
  [(SCNRenderer *)self _contentsScaleFactor];
  v16 = v13 / v15;
  v17 = v14 / v15;
  [_setupSKRendererIfNeeded setBackingScaleFactor:?];
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v20.origin.x = v5;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  v21.size.width = v16;
  v21.size.height = v17;
  if (!CGRectEqualToRect(v20, v21))
  {
    scene = [_setupSKRendererIfNeeded scene];
    if ([scene scaleMode] == 3)
    {
      [scene setSize:{v16, v17}];
    }

    [_setupSKRendererIfNeeded setBounds:{0.0, 0.0, v16, v17}];
  }

  return _setupSKRendererIfNeeded;
}

- (void)setOverlaySKScene:(id)scene
{
  [(SCNRenderer *)self lock];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  self->_overlayScene = scene;
  if (scene)
  {
    if ((*(self + 121) & 4) != 0)
    {
      [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    }

    [(SCNRenderer *)self _setupSKRendererIfNeeded];
  }

  sceneRef = [(SCNScene *)self->_scene sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__SCNRenderer_setOverlaySKScene___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = scene;
  v6[5] = self;
  [SCNTransaction postCommandWithContext:sceneRef object:0 applyBlock:v6];
  [(SCNRenderer *)self unlock];
}

void __33__SCNRenderer_setOverlaySKScene___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 368);
  if (v2)
  {

    [v3 setScene:?];
  }

  else
  {

    *(*(a1 + 40) + 368) = 0;
  }
}

- (void)setTechnique:(id)technique
{
  technique = self->_technique;
  if (technique != technique)
  {
    v9[7] = v3;
    v9[8] = v4;

    self->_technique = technique;
    sceneRef = [(SCNScene *)self->_scene sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __28__SCNRenderer_setTechnique___block_invoke;
    v9[3] = &unk_2782FB820;
    v9[4] = self;
    [SCNTransaction postCommandWithContext:sceneRef object:0 applyBlock:v9];
  }
}

void __28__SCNRenderer_setTechnique___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _engineContext];
  if (v2)
  {
    v4 = v2;
    v5 = [*(*(a1 + 32) + 352) techniqueRef];
    FXContext = C3DEngineContextGetFXContext(v4, v6);
    if (FXContext)
    {
      C3DFXContextSetPostProcessTechnique(FXContext, v5, v4);
    }

    RenderGraph = C3DEngineContextGetRenderGraph(v4);
    if (RenderGraph)
    {

      C3DRenderGraphSetCustomTechnique(RenderGraph, v5);
    }
  }

  else
  {
    v9 = scn_default_log(0, v3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __28__SCNRenderer_setTechnique___block_invoke_cold_1();
    }
  }
}

- (id)_copyPassDescription
{
  [(SCNRenderer *)self lock];
  FXContext = C3DEngineContextGetFXContext(self->_engineContext, v3);
  v5 = C3DFXContextCopyPassDescription(FXContext, self->_engineContext);
  [(SCNRenderer *)self unlock];
  return v5;
}

- (id)_copyRenderGraphDescription
{
  [(SCNRenderer *)self lock];
  RenderGraph = C3DEngineContextGetRenderGraph(self->_engineContext);
  v4 = [C3DRenderGraphGetDescription(RenderGraph) copy];
  [(SCNRenderer *)self unlock];
  return v4;
}

- (void)_renderGraphFrameRecordingAtPath:(id)path withCompletion:(id)completion
{
  [(SCNRenderer *)self lock];
  RenderGraph = C3DEngineContextGetRenderGraph(self->_engineContext);
  C3DRenderGraphRecordFrame(RenderGraph, path, completion);

  [(SCNRenderer *)self unlock];
}

- (BOOL)_recordWithoutExecute
{
  [(SCNRenderer *)self lock];
  RenderGraph = C3DEngineContextGetRenderGraph(self->_engineContext);
  IsRecordingWithoutExecute = C3DRenderGraphIsRecordingWithoutExecute(RenderGraph);
  [(SCNRenderer *)self unlock];
  return IsRecordingWithoutExecute;
}

- (void)set_recordWithoutExecute:(BOOL)execute
{
  [(SCNRenderer *)self lock];
  [(SCNRenderer *)self willChangeValueForKey:@"_recordWithoutExecute"];
  RenderGraph = C3DEngineContextGetRenderGraph(self->_engineContext);
  C3DRenderGraphSetRecordWithoutExecute(RenderGraph, execute);
  [(SCNRenderer *)self didChangeValueForKey:@"_recordWithoutExecute"];

  [(SCNRenderer *)self unlock];
}

- (id)_computedLightingEnvironmentMapsPath
{
  RenderContext = C3DEngineContextGetRenderContext(self->_engineContext, a2);

  return [(SCNMTLRenderContext *)RenderContext generatedTexturePath];
}

- (void)set_computedLightingEnvironmentMapsPath:(id)path
{
  RenderContext = C3DEngineContextGetRenderContext(self->_engineContext, a2);

  [(SCNMTLRenderContext *)RenderContext setGeneratedTexturePath:path];
}

- (BOOL)_preloadResource:(id)resource abortHandler:(id)handler
{
  if (self->_renderingAPI)
  {
    currentContext = [MEMORY[0x277CD9388] currentContext];
    [MEMORY[0x277CD9388] setCurrentContext:{-[SCNRenderer context](self, "context")}];
  }

  else
  {
    currentContext = 0;
  }

  sceneRef = [resource sceneRef];
  v10 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef, v9);
  }

  [(SCNRenderer *)self lock];
  *(self + 121) |= 0x20u;
  if (!self->_renderingAPI)
  {
    *&v13 = 0;
    *(&v13 + 1) = vcvt_f32_u32(*self->_anon_58);
    v23 = v13;
    C3DEngineContextSetDrawableSize(self->_engineContext, *(&v13 + 1));
    [(SCNRenderer *)self adjustViewportForRendering:*&v23];
    v12 = C3DEngineContextSetViewport(self->_engineContext, v14, v15);
LABEL_10:
    [(SCNRenderer *)self _beginFrame:v12];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = C3DWarmupSceneVRAMResourcesForEngineContext([resource sceneRef], self->_engineContext, handler);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = C3DWarmupNodeTreeVRAMResourcesForEngineContext([resource nodeRef], self->_engineContext, handler);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = C3DWarmupGeometryVRAMResourcesForEngineContext([resource geometryRef], self->_engineContext, handler);
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v18 = 0;
            goto LABEL_22;
          }

          v16 = C3DWarmupMaterialVRAMResourcesForEngineContext([resource materialRef], self->_engineContext, handler);
        }
      }
    }

    v18 = v16;
LABEL_22:
    if (self->_renderingAPI)
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext, v17);
      C3DRendererContextUnbindFramebuffer(RendererContextGL, v20);
      glFlush();
    }

    else
    {
      [(SCNRenderer *)self _endFrame];
    }

    *(self + 121) &= ~0x20u;
    [(SCNRenderer *)self unlock];
    if (v10)
    {
      C3DSceneUnlock(v10, v21);
    }

    if (self->_renderingAPI)
    {
      [MEMORY[0x277CD9388] setCurrentContext:currentContext];
    }

    return v18;
  }

  if ([(SCNRenderer *)self _installContext])
  {
    glViewport(0, 0, 32, 32);
    goto LABEL_10;
  }

  if (v10)
  {
    C3DSceneUnlock(v10, v11);
  }

  [(SCNRenderer *)self unlock];
  return 0;
}

- (BOOL)_preparePreloadRenderer:(id)renderer
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (self->_preloadRenderer)
  {
LABEL_15:
    LOBYTE(v16) = 1;
    return v16;
  }

  if (!self->_renderingAPI)
  {
    v8 = [SCNOffscreenRenderer offscreenRendererWithDevice:[(SCNRenderer *)self metalDevice] sceneRendererDelegate:self size:32.0, 32.0];
    self->_preloadRenderer = &v8->super;
    [(SCNRenderer *)v8 set_antialiasingMode:self->__antialiasingMode];
    [(SCNRenderer *)self->_preloadRenderer set_resourceManagerMonitor:objc_loadWeak(&self->_resourceManagerMonitor)];
    if ((*(self + 121) & 8) != 0)
    {
      -[SCNRenderer set_preparePixelFormat:](self->_preloadRenderer, "set_preparePixelFormat:", [renderer pixelFormat]);
    }

    RenderGraph = C3DEngineContextGetRenderGraph([(SCNRenderer *)self->_preloadRenderer _engineContext]);
    colorPixelFormat = [(SCNRenderer *)self colorPixelFormat];
    if (colorPixelFormat)
    {
      v11 = colorPixelFormat;
    }

    else
    {
      v11 = 80;
    }

    C3DRenderGraphSetWarmupPixelFormat(RenderGraph, v11);
    goto LABEL_11;
  }

  if ([(SCNRenderer *)self context])
  {
    context = [(SCNRenderer *)self context];
    v19 = *MEMORY[0x277CD93A8];
    v20[0] = [context sharegroup];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    self->_preloadRenderer = +[SCNOffscreenRenderer offscreenRendererWithContext:size:](SCNOffscreenRenderer, "offscreenRendererWithContext:size:", [objc_alloc(MEMORY[0x277CD9388]) initWithAPI:2 properties:v6], 32.0, 32.0);
LABEL_11:
    if ([(SCNRenderer *)self _collectCompilationErrors])
    {
      C3DEngineContextGetRendererContextGL(self->_engineContext, v12);
      _renderContextMetal = [(SCNRenderer *)self->_preloadRenderer _renderContextMetal];
      if (_renderContextMetal)
      {
        [(SCNMTLRenderContext *)_renderContextMetal setCollectsCompilationErrors:?];
      }
    }

    _engineContext = [(SCNRenderer *)self->_preloadRenderer _engineContext];
    RenderingOptionForKey = C3DEngineContextGetRenderingOptionForKey([(SCNRenderer *)self _engineContext], @"defaultLight");
    C3DEngineContextSetRenderingOptionForKey(_engineContext, @"defaultLight", RenderingOptionForKey);
    goto LABEL_15;
  }

  v17 = scn_default_log(0, v4);
  v16 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
  if (v16)
  {
    [SCNRenderer _preparePreloadRenderer:];
    LOBYTE(v16) = 0;
  }

  return v16;
}

- (void)_releasePreloadRenderer
{
  _engineContext = [(SCNRenderer *)self->_preloadRenderer _engineContext];
  if (_engineContext && (RendererContextGL = C3DEngineContextGetRendererContextGL(_engineContext, v4)) != 0)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __38__SCNRenderer__releasePreloadRenderer__block_invoke;
    v6[3] = &__block_descriptor_40_e5_v8__0l;
    v6[4] = RendererContextGL;
    C3DRendererContextExecuteOnContext(RendererContextGL, v6);
  }

  else
  {

    self->_preloadRenderer = 0;
  }
}

- (BOOL)prepareObject:(id)object shouldAbortBlock:(id)block
{
  objc_sync_enter(self);
  if (!self->_renderingAPI && (*(self + 121) & 8) != 0)
  {
    layer = [(SCNSceneRenderer *)self->_privateRendererOwner layer];
  }

  else
  {
    layer = 0;
  }

  v8 = [(SCNRenderer *)self _preparePreloadRenderer:layer];
  if (v8)
  {
    +[SCNTransaction flush];
    [(SCNRenderer *)self _prepareObject:object shouldAbortBlock:block];
    [(SCNRenderer *)self _releasePreloadRenderer];
  }

  objc_sync_exit(self);
  return v8;
}

- (BOOL)_prepareObject:(id)object shouldAbortBlock:(id)block
{
  [(SCNRenderer *)self _getFrameIndex];
  kdebug_trace();
  _engineContext = [(SCNRenderer *)self->_preloadRenderer _engineContext];
  RendererContextGL = C3DEngineContextGetRendererContextGL(_engineContext, v8);
  if (RendererContextGL)
  {
    Stats = C3DEngineContextGetStats(_engineContext, v9);
    v11 = C3DEngineStatsResetResourceStats(Stats, v13);
  }

  if ([MEMORY[0x277CCAC48] currentProgress])
  {
    v14 = objc_autoreleasePoolPush();
    v15 = [(SCNRenderer *)self->_preloadRenderer _preloadResource:object abortHandler:?];
    objc_autoreleasePoolPop(v14);
  }

  else
  {
    v15 = [(SCNRenderer *)self->_preloadRenderer _preloadResource:object abortHandler:block];
  }

  if (RendererContextGL)
  {
    v17 = C3DEngineContextGetStats(_engineContext, v16);
    _engineContext2 = [(SCNRenderer *)self _engineContext];
    v20 = C3DEngineContextGetStats(_engineContext2, v19);
    C3DEngineStatsMergeResourceStats(v17, v20);
  }

  else
  {
    RenderContext = C3DEngineContextGetRenderContext(_engineContext, v16);
    v23 = C3DEngineContextGetRenderContext(self->_engineContext, v22);
    if (RenderContext && v23)
    {
      compilationErrors = [(SCNMTLRenderContext *)v23 compilationErrors];
      [compilationErrors addEntriesFromDictionary:-[SCNMTLRenderContext compilationErrors](RenderContext)];
    }
  }

  kdebug_trace();
  return v15;
}

uint64_t __47__SCNRenderer__prepareObject_shouldAbortBlock___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isCancelled])
  {
    return 1;
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)prepareObjects:(id)objects withCompletionHandler:(id)handler
{
  if (!self->_renderingAPI && (*(self + 121) & 8) != 0)
  {
    layer = [(SCNSceneRenderer *)self->_privateRendererOwner layer];
  }

  else
  {
    layer = 0;
  }

  if (!self->__prepareQueue)
  {
    [(SCNRenderer *)self lock];
    if (!self->__prepareQueue)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = objc_opt_class();
      v10 = [objc_msgSend(v8 stringWithFormat:@"com.apple.scenekit.prepareQueue.%@%p", NSStringFromClass(v9), self->_privateRendererOwner), "cStringUsingEncoding:", 1];
      v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
      self->__prepareQueue = dispatch_queue_create(v10, v11);
    }

    [(SCNRenderer *)self unlock];
  }

  currentProgress = [MEMORY[0x277CCAC48] currentProgress];
  if (currentProgress)
  {
    currentProgress = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:{objc_msgSend(objects, "count")}];
  }

  prepareQueue = self->__prepareQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SCNRenderer_prepareObjects_withCompletionHandler___block_invoke;
  block[3] = &unk_2782FF1E0;
  block[4] = currentProgress;
  block[5] = self;
  block[6] = layer;
  block[7] = objects;
  block[8] = handler;
  dispatch_async(prepareQueue, block);
}

void __52__SCNRenderer_prepareObjects_withCompletionHandler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v18;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __52__SCNRenderer_prepareObjects_withCompletionHandler___block_invoke_2;
    v18[3] = &unk_2782FF190;
    v18[4] = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 40);
  objc_sync_enter(v4);
  if ([*(a1 + 40) _preparePreloadRenderer:*(a1 + 48)])
  {
    +[SCNTransaction flush];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = *(a1 + 56);
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v6)
    {
      v7 = *v15;
      v8 = 1;
LABEL_7:
      v9 = 0;
      while (1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        [*(a1 + 32) becomeCurrentWithPendingUnitCount:1];
        LOBYTE(v10) = [*(a1 + 40) _prepareObject:v10 shouldAbortBlock:v3];
        [*(a1 + 32) resignCurrent];
        v8 &= v10;
        if ([*(a1 + 32) isCancelled])
        {
          break;
        }

        if (v6 == ++v9)
        {
          v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
          if (v6)
          {
            goto LABEL_7;
          }

          break;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    [*(a1 + 40) _releasePreloadRenderer];
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(v4);
  v11 = *(a1 + 64);
  if (v11)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__SCNRenderer_prepareObjects_withCompletionHandler___block_invoke_3;
    v12[3] = &unk_2782FF1B8;
    v12[4] = v11;
    v13 = v8;
    dispatch_async(MEMORY[0x277D85CD0], v12);
  }
}

- (id)programWithNode:(id)node withMaterial:(id)material
{
  _engineContext = [(SCNRenderer *)self _engineContext];
  RendererContextGL = C3DEngineContextGetRendererContextGL(_engineContext, v9);
  if (!RendererContextGL || !C3DRendererContextGetGLContext(RendererContextGL, v11))
  {
    return 0;
  }

  if (!_engineContext)
  {
    [SCNRenderer programWithNode:a2 withMaterial:self];
  }

  nodeRef = [node nodeRef];
  if (!nodeRef)
  {
    return 0;
  }

  v13 = nodeRef;
  v14 = [objc_msgSend(node "geometry")];
  if (!v14)
  {
    return 0;
  }

  v16 = v14;
  Mesh = C3DGeometryGetMesh(v14, v15);
  if (!Mesh)
  {
    return 0;
  }

  v18 = Mesh;
  materialRef = [material materialRef];
  if (![(SCNScene *)[(SCNRenderer *)self scene] sceneRef])
  {
    [SCNRenderer programWithNode:a2 withMaterial:?];
  }

  v20 = C3DEngineContextEvaluateProgram(_engineContext, v13, v16, v18, materialRef);
  if (!v20)
  {
    return 0;
  }

  v21 = v20;
  v22 = +[SCNProgram program];
  v23 = CFGetTypeID(v21);
  if (v23 == C3DFXGLSLProgramGetTypeID(v23, v24))
  {
    ShaderSources = C3DFXGLSLProgramGetShaderSources(v21);
    v27 = v26;
    [(SCNProgram *)v22 setVertexShader:ShaderSources];
    [(SCNProgram *)v22 setFragmentShader:v27];
  }

  else
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  return v22;
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  *&self->_delegationConformance = *&self->_delegationConformance & 0xFFFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  *&self->_delegationConformance = *&self->_delegationConformance & 0xFFFD | v4;
  if (objc_opt_respondsToSelector())
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  *&self->_delegationConformance = *&self->_delegationConformance & 0xFFFB | v5;
  if (objc_opt_respondsToSelector())
  {
    v6 = 8;
  }

  else
  {
    v6 = 0;
  }

  *&self->_delegationConformance = *&self->_delegationConformance & 0xFFF7 | v6;
  if (objc_opt_respondsToSelector())
  {
    v7 = 16;
  }

  else
  {
    v7 = 0;
  }

  *&self->_delegationConformance = *&self->_delegationConformance & 0xFFEF | v7;
  if (objc_opt_respondsToSelector())
  {
    v8 = 32;
  }

  else
  {
    v8 = 0;
  }

  *&self->_delegationConformance = *&self->_delegationConformance & 0xFFDF | v8;
  if (objc_opt_respondsToSelector())
  {
    v9 = 64;
  }

  else
  {
    v9 = 0;
  }

  *&self->_delegationConformance = *&self->_delegationConformance & 0xFFBF | v9;
  if (objc_opt_respondsToSelector())
  {
    v10 = 128;
  }

  else
  {
    v10 = 0;
  }

  *&self->_delegationConformance = *&self->_delegationConformance & 0xFF7F | v10;
  if (objc_opt_respondsToSelector())
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  *&self->_delegationConformance = *&self->_delegationConformance & 0xFCFF | v11;

  [(SCNRenderer *)self _updateEngineCallbacks];
}

- (void)set_wantsSceneRendererDelegationMessages:(BOOL)messages
{
  if (messages)
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  *(self + 288) = *(self + 288) & 0xF7 | v4;
  if (!messages || (*(self + 121) & 4) != 0)
  {
    v13 = 0;
    selfDelegationConformance = *&self->_selfDelegationConformance & 0xFE00;
  }

  else
  {
    *&self->_selfDelegationConformance = *&self->_selfDelegationConformance & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *&self->_selfDelegationConformance = *&self->_selfDelegationConformance & 0xFFFD | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *&self->_selfDelegationConformance = *&self->_selfDelegationConformance & 0xFFFB | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    *&self->_selfDelegationConformance = *&self->_selfDelegationConformance & 0xFFF7 | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 16;
    }

    else
    {
      v8 = 0;
    }

    *&self->_selfDelegationConformance = *&self->_selfDelegationConformance & 0xFFEF | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 32;
    }

    else
    {
      v9 = 0;
    }

    *&self->_selfDelegationConformance = *&self->_selfDelegationConformance & 0xFFDF | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 128;
    }

    else
    {
      v10 = 0;
    }

    *&self->_selfDelegationConformance = *&self->_selfDelegationConformance & 0xFF7F | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }

    *&self->_selfDelegationConformance = *&self->_selfDelegationConformance & 0xFEFF | v11;
    if (objc_opt_respondsToSelector())
    {
      v12 = 64;
    }

    else
    {
      v12 = 0;
    }

    *&self->_selfDelegationConformance = *&self->_selfDelegationConformance & 0xFFBF | v12;
    if (objc_opt_respondsToSelector())
    {
      v13 = 512;
    }

    else
    {
      v13 = 0;
    }

    selfDelegationConformance = self->_selfDelegationConformance;
  }

  *&self->_selfDelegationConformance = selfDelegationConformance & 0xFDFF | v13;

  [(SCNRenderer *)self _updateEngineCallbacks];
}

- (void)set_shouldForwardSceneRendererDelegationMessagesToPrivateRendererOwner:(BOOL)owner
{
  if (owner)
  {
    v4 = 16;
  }

  else
  {
    v4 = 0;
  }

  *(self + 288) = *(self + 288) & 0xEF | v4;
  if (owner && (*(self + 121) & 4) != 0)
  {
    *&self->_privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    *&self->_privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFFFD | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    *&self->_privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFFFB | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    *&self->_privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFFF7 | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 16;
    }

    else
    {
      v10 = 0;
    }

    *&self->_privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFFEF | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 32;
    }

    else
    {
      v11 = 0;
    }

    *&self->_privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFFDF | v11;
    if (objc_opt_respondsToSelector())
    {
      v12 = 128;
    }

    else
    {
      v12 = 0;
    }

    *&self->_privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFF7F | v12;
    if (objc_opt_respondsToSelector())
    {
      v13 = 256;
    }

    else
    {
      v13 = 0;
    }

    *&self->_privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFEFF | v13;
    if (objc_opt_respondsToSelector())
    {
      v14 = 64;
    }

    else
    {
      v14 = 0;
    }

    *&self->_privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFFBF | v14;
    if (objc_opt_respondsToSelector())
    {
      v5 = 512;
    }

    else
    {
      v5 = 0;
    }

    privateRendererOwnerDelegationConformance = self->_privateRendererOwnerDelegationConformance;
  }

  else
  {
    v5 = 0;
    privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFE00;
  }

  *&self->_privateRendererOwnerDelegationConformance = privateRendererOwnerDelegationConformance & 0xFDFF | v5;

  [(SCNRenderer *)self _updateEngineCallbacks];
}

- (void)set_resourceManagerMonitor:(id)monitor
{
  if (objc_loadWeak(&self->_resourceManagerMonitor) != monitor)
  {
    if (monitor)
    {
      monitorCopy = monitor;
    }

    else
    {
      monitorCopy = 0;
    }

    if (monitor)
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    objc_storeWeak(&self->_resourceManagerMonitor, monitorCopy);
    [(SCNMTLRenderContext *)self->_renderContext setResourceManagerMonitor:selfCopy];
    _renderContextMetal = [(SCNRenderer *)self->_preloadRenderer _renderContextMetal];

    [(SCNMTLRenderContext *)_renderContextMetal setResourceManagerMonitor:selfCopy];
  }
}

- (void)renderContext:(id)context didFallbackToDefaultTextureForSource:(id)source message:(id)message
{
  privateRendererOwner = self;
  if ((*(self + 121) & 4) != 0)
  {
    privateRendererOwner = self->_privateRendererOwner;
  }

  Weak = objc_loadWeak(&self->_resourceManagerMonitor);

  [Weak renderer:privateRendererOwner didFallbackToDefaultTextureForSource:source message:message];
}

- (void)set_commandBufferStatusMonitor:(id)monitor
{
  if (objc_loadWeak(&self->_commandBufferStatusMonitor) != monitor)
  {
    if (monitor)
    {
      monitorCopy = monitor;
    }

    else
    {
      monitorCopy = 0;
    }

    if (monitor)
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    objc_storeWeak(&self->_commandBufferStatusMonitor, monitorCopy);
    [(SCNMTLRenderContext *)self->_renderContext setCommandBufferStatusMonitor:selfCopy];
    _renderContextMetal = [(SCNRenderer *)self->_preloadRenderer _renderContextMetal];

    [(SCNMTLRenderContext *)_renderContextMetal setCommandBufferStatusMonitor:selfCopy];
  }
}

- (void)renderContext:(id)context commandBufferDidCompleteWithError:(id)error
{
  privateRendererOwner = self;
  if ((*(self + 121) & 4) != 0)
  {
    privateRendererOwner = self->_privateRendererOwner;
  }

  Weak = objc_loadWeak(&self->_commandBufferStatusMonitor);

  [Weak renderer:privateRendererOwner commandBufferDidCompleteWithError:error];
}

- (void)updateCurrentTimeIfPlayingWithSystemTime:(double)time
{
  sceneRef = [(SCNScene *)self->_scene sceneRef];
  v7 = sceneRef;
  currentSceneTime = self->_currentSceneTime;
  playing = self->_playing;
  if (!playing || sceneRef == 0)
  {
    self->_lastSystemTime = time;
    if (sceneRef)
    {
      v11 = !playing;
    }

    else
    {
      v11 = 1;
    }

    v12 = currentSceneTime;
    if (v11)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  PlaybackSpeed = C3DSceneGetPlaybackSpeed(sceneRef, v6);
  StartTime = C3DSceneGetStartTime(v7, v14);
  if (currentSceneTime < StartTime)
  {
    currentSceneTime = StartTime;
  }

  lastSystemTime = self->_lastSystemTime;
  if (lastSystemTime != 0.0)
  {
    v17 = time - lastSystemTime;
    if (v17 > 1.0)
    {
      v17 = 0.0166666667;
    }

    currentSceneTime = currentSceneTime + v17 * PlaybackSpeed;
  }

  self->_lastSystemTime = time;
  v12 = currentSceneTime;
  if (self->_playing)
  {
LABEL_19:
    EndTime = C3DSceneGetEndTime(v7, v6);
    if (currentSceneTime <= EndTime)
    {
      v12 = currentSceneTime;
    }

    else
    {
      v20 = EndTime;
      if (self->_loops)
      {
        v12 = 0.0;
        if (v20 != 0.0)
        {
          v21 = C3DSceneGetStartTime(v7, v18);
          v12 = fmod(currentSceneTime - v20, v20) + v21;
        }
      }

      else
      {
        [(SCNRenderer *)self setPlaying:0];
        v12 = v20;
      }
    }
  }

LABEL_25:

  [(SCNRenderer *)self _setSceneTime:v12];
}

- (BOOL)_needsRepetitiveRedraw
{
  if (self->_isAnimating || self->_playing)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    return (*(self + 121) >> 1) & 1;
  }

  return v2;
}

- (void)_setSceneTime:(double)time
{
  if ((*(self + 288) & 4) == 0)
  {
    [(SCNRenderer *)self willChangeValueForKey:@"sceneTime"];
    self->_currentSceneTime = time;

    [(SCNRenderer *)self didChangeValueForKey:@"sceneTime"];
  }
}

- (void)setSceneTime:(double)time
{
  if ((*(self + 288) & 4) == 0)
  {
    if ((*(self + 121) & 4) != 0)
    {
      sceneRef = [(SCNScene *)self->_scene sceneRef];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __28__SCNRenderer_setSceneTime___block_invoke;
      v6[3] = &unk_2782FB7D0;
      v6[4] = self;
      *&v6[5] = time;
      [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
    }

    else
    {
      self->_currentSceneTime = time;
    }
  }
}

- (double)_systemTime
{
  result = self->_forceSystemTime;
  if (result == 0.0)
  {
    return self->_currentSystemTime;
  }

  return result;
}

- (void)set_systemTime:(double)time
{
  if ((*(self + 288) & 4) == 0)
  {
    self->_currentSystemTime = time;
    [(SCNRenderer *)self updateCurrentTimeIfPlayingWithSystemTime:?];
  }
}

- (void)set_deltaTime:(double)time
{
  if ((*(self + 288) & 4) != 0)
  {
    time = 0.0;
  }

  self->_deltaTime = time;
}

- (void)setContext:(id)context
{
  if (self->_engineContext && self->_glContext != context)
  {
    currentContext = [MEMORY[0x277CD9388] currentContext];
    if (self->_glContext)
    {
      [MEMORY[0x277CD9388] setCurrentContext:?];
      [(SCNRenderer *)self _deleteGLFramebuffer];
    }

    self->_glContext = context;
    [MEMORY[0x277CD9388] setCurrentContext:currentContext];
    if (self->_glContext)
    {
      [MEMORY[0x277CD9388] setCurrentContext:?];
      C3DEngineContextSetGLContext(self->_engineContext, self->_glContext);
      if (self->_authoringEnvironment)
      {
        if (self->_privateRendererOwner)
        {
          privateRendererOwner = self->_privateRendererOwner;
        }

        else
        {
          privateRendererOwner = self;
        }

        v8 = [SCNAuthoringEnvironment authoringEnvironmentForSceneRenderer:privateRendererOwner createIfNeeded:1];

        self->_authoringEnvironment = v8;
      }

      C3DFXInvalidatePasses(self->_engineContext, v6);
      RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext, v9);
      if (RendererContextGL)
      {
        v11 = RendererContextGL;
        _antialiasingMode = [(SCNRenderer *)self _antialiasingMode];
        v14 = SCNSampleCountForAntialiasingMode(_antialiasingMode, v13);

        C3DRendererContextSetSampleCount(v11, v14);
      }
    }
  }
}

- (void)context
{
  renderingAPI = self->_renderingAPI;
  if (renderingAPI)
  {
    if (!self->_glContext)
    {
      if (self->_isRunningInExtension)
      {
LABEL_6:
        if (renderingAPI == 2)
        {
          v4 = 3;
        }

        else
        {
          v4 = 2;
        }

        [(SCNRenderer *)self setContext:SCNCreateGLESContext(v4)];
        return self->_glContext;
      }

      if ([objc_msgSend(MEMORY[0x277D75128] "sharedApplication")] != 2)
      {
        LODWORD(renderingAPI) = self->_renderingAPI;
        goto LABEL_6;
      }
    }

    return self->_glContext;
  }

  return 0;
}

- (void)_update:(__C3DScene *)_update
{
  [(SCNRenderer *)self _systemTime];
  v6 = v5;
  [(SCNRenderer *)self _getFrameIndex];
  C3DEngineContextSetSystemTime(self->_engineContext, v6);
  C3DEngineContextSetDeltaTime(self->_engineContext, self->_deltaTime);
  deltaTime = self->_deltaTime;
  IsPaused = C3DSceneIsPaused(_update);
  IsPausedForEditing = C3DSceneIsPausedForEditing(_update, v9);
  v11 = 0.0;
  if (IsPaused)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = deltaTime;
  }

  if (v12 >= 0.0)
  {
    v11 = v12;
  }

  if (v11 <= 1.0)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0.0166666667;
  }

  self->_isAnimating = 0;
  [SCNTransaction setImmediateMode:1];
  [SCNTransaction setImmediateModeRestrictedContext:_update];
  context = objc_autoreleasePoolPush();
  Stats = C3DEngineContextGetStats(self->_engineContext, v14);
  Weak = objc_loadWeak(&self->_delegate);
  if (*&self->_delegationConformance & 1) != 0 || (*&self->_selfDelegationConformance & 1) != 0 || (*&self->_privateRendererOwnerDelegationConformance)
  {
    v18 = CACurrentMediaTime();
    kdebug_trace();
    if (*&self->_privateRendererOwnerDelegationConformance)
    {
      [(SCNSceneRenderer *)self->_privateRendererOwner _renderer:self->_privateRendererOwner updateAtTime:v6, context];
    }

    if (*&self->_selfDelegationConformance)
    {
      [(SCNRenderer *)self _renderer:self updateAtTime:v6];
    }

    if (*&self->_delegationConformance)
    {
      privateRendererOwner = self;
      if ((*(self + 121) & 4) != 0)
      {
        privateRendererOwner = self->_privateRendererOwner;
      }

      [Weak renderer:privateRendererOwner updateAtTime:{v6, context}];
    }

    kdebug_trace();
    Stats[21] = Stats[21] + CACurrentMediaTime() - v18;
  }

  ModelValueStorage = C3DSceneGetModelValueStorage(_update, v16);
  C3DModelValueStoragePrepareNextFrame(ModelValueStorage, v21);
  v22 = CACurrentMediaTime();
  AnimationManager = C3DSceneGetAnimationManager(_update, v23);
  if (AnimationManager)
  {
    v25 = AnimationManager;
    C3DAnimationManagerSetPausedForEditing(AnimationManager, IsPausedForEditing);
    kdebug_trace();
    C3DAnimationManagerApplyAnimations(v25, v26, v6, self->_currentSceneTime);
    kdebug_trace();
    kdebug_trace();
    currentSceneTime = v6;
    if (IsPausedForEditing)
    {
      currentSceneTime = self->_currentSceneTime;
    }

    C3DAnimationManagerApplyActions(v25, currentSceneTime);
    kdebug_trace();
    C3DAnimationManagerApplyBindings(v25);
    if (IsPausedForEditing & 1 | ((IsPaused & 1) == 0))
    {
      self->_isAnimating = C3DAnimationManagerNeedsRedraw(v25, IsPausedForEditing);
    }
  }

  Stats[16] = Stats[16] + CACurrentMediaTime() - v22;
  if ((*&self->_delegationConformance & 2) != 0 || (*&self->_selfDelegationConformance & 2) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 2) != 0)
  {
    v28 = CACurrentMediaTime();
    kdebug_trace();
    if ((*&self->_privateRendererOwnerDelegationConformance & 2) != 0)
    {
      [(SCNSceneRenderer *)self->_privateRendererOwner _renderer:self->_privateRendererOwner didApplyAnimationsAtTime:v6];
    }

    if ((*&self->_selfDelegationConformance & 2) != 0)
    {
      [(SCNRenderer *)self _renderer:self didApplyAnimationsAtTime:v6];
    }

    if ((*&self->_delegationConformance & 2) != 0)
    {
      selfCopy = self;
      if ((*(self + 121) & 4) != 0)
      {
        selfCopy = self->_privateRendererOwner;
      }

      [Weak renderer:selfCopy didApplyAnimationsAtTime:{v6, context}];
    }

    kdebug_trace();
    Stats[21] = Stats[21] + CACurrentMediaTime() - v28;
  }

  v30 = CACurrentMediaTime();
  v31 = [C3DEntityGetObjCWrapper(_update) _physicsWorldCreateIfNeeded:0];
  if (v31)
  {
    v32 = v31;
    kdebug_trace();
    [v32 _updatePhysicsFieldsTransforms];
    if (IsPausedForEditing)
    {
      kdebug_trace();
    }

    else
    {
      [v32 _step:v13];
      kdebug_trace();
      if ((IsPaused & 1) == 0 && !self->_isAnimating)
      {
        self->_isAnimating = [v32 _needsRedraw];
      }
    }
  }

  Stats[14] = Stats[14] + CACurrentMediaTime() - v30;
  if ((*&self->_delegationConformance & 4) != 0 || (*&self->_selfDelegationConformance & 4) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 4) != 0)
  {
    v33 = CACurrentMediaTime();
    kdebug_trace();
    if ((*&self->_privateRendererOwnerDelegationConformance & 4) != 0)
    {
      [(SCNSceneRenderer *)self->_privateRendererOwner _renderer:self->_privateRendererOwner didSimulatePhysicsAtTime:v6];
    }

    if ((*&self->_selfDelegationConformance & 4) != 0)
    {
      [(SCNRenderer *)self _renderer:self didSimulatePhysicsAtTime:v6];
    }

    if ((*&self->_delegationConformance & 4) != 0)
    {
      selfCopy2 = self;
      if ((*(self + 121) & 4) != 0)
      {
        selfCopy2 = self->_privateRendererOwner;
      }

      [Weak renderer:selfCopy2 didSimulatePhysicsAtTime:{v6, context}];
    }

    kdebug_trace();
    Stats[21] = Stats[21] + CACurrentMediaTime() - v33;
  }

  v35 = CACurrentMediaTime();
  ControllerManager = C3DSceneGetControllerManager(_update, v36);
  if (ControllerManager)
  {
    v38 = ControllerManager;
    *(ControllerManager + 32) = [(SCNRenderer *)self _engineContext];
    kdebug_trace();
    C3DConstraintManagerApply(v38, v39);
    kdebug_trace();
  }

  Stats[13] = Stats[13] + CACurrentMediaTime() - v35;
  if ((*&self->_delegationConformance & 8) != 0 || (*&self->_selfDelegationConformance & 8) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 8) != 0)
  {
    v40 = CACurrentMediaTime();
    kdebug_trace();
    if ((*&self->_privateRendererOwnerDelegationConformance & 8) != 0)
    {
      [(SCNSceneRenderer *)self->_privateRendererOwner _renderer:self->_privateRendererOwner didApplyConstraintsAtTime:v6];
    }

    if ((*&self->_selfDelegationConformance & 8) != 0)
    {
      [(SCNRenderer *)self _renderer:self didApplyConstraintsAtTime:v6];
    }

    if ((*&self->_delegationConformance & 8) != 0)
    {
      selfCopy3 = self;
      if ((*(self + 121) & 4) != 0)
      {
        selfCopy3 = self->_privateRendererOwner;
      }

      [Weak renderer:selfCopy3 didApplyConstraintsAtTime:{v6, context}];
    }

    kdebug_trace();
    Stats[21] = Stats[21] + CACurrentMediaTime() - v40;
  }

  v42 = CACurrentMediaTime();
  ParticleManager = C3DSceneGetParticleManager(_update, 0);
  v44 = ParticleManager;
  if (!IsPausedForEditing)
  {
    v47 = 1;
    if (!ParticleManager)
    {
      goto LABEL_82;
    }

    goto LABEL_76;
  }

  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  _authoringEnvironment = [(SCNRenderer *)self _authoringEnvironment];
  if (_authoringEnvironment)
  {
    SelectedNodes = C3DAuthoringEnvironmentGetSelectedNodes(_authoringEnvironment);
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __23__SCNRenderer__update___block_invoke;
    v52[3] = &unk_2782FF208;
    v52[4] = &v53;
    [SelectedNodes enumerateObjectsUsingBlock:v52];
  }

  v47 = *(v54 + 24);
  _Block_object_dispose(&v53, 8);
  if (v44)
  {
LABEL_76:
    kdebug_trace();
    if ((v47 & 1) == 0)
    {
      v13 = 0.0;
    }

    EnginePipeline = C3DSceneGetEnginePipeline(_update, v48);
    C3DParticleManagerUpdate(v44, EnginePipeline, v13);
    if (!self->_isAnimating && ((v47 ^ 1) & 1) == 0)
    {
      self->_isAnimating = C3DParticleManagerNeedRedraw(v44);
    }

    kdebug_trace();
  }

LABEL_82:
  Stats[15] = Stats[15] + CACurrentMediaTime() - v42;
  kdebug_trace();
  C3DAudioManagerUpdateNodes(self->_engineContext);
  kdebug_trace();
  AuthoringEnvironment2 = C3DSceneGetAuthoringEnvironment2(_update, 0);
  if (AuthoringEnvironment2)
  {
    C3DAuthoringEnvironment2Update(AuthoringEnvironment2, self);
  }

  objc_autoreleasePoolPop(context);
  [SCNTransaction setImmediateModeRestrictedContext:0];
  [SCNTransaction setImmediateMode:0];
}

const __CFDictionary *__23__SCNRenderer__update___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = C3DNodeGetParticleSystems(a2, a2);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)_updateWithSystemTime:(double)time
{
  [(SCNRenderer *)self lock];
  [(SCNRenderer *)self _updateSystemTimeAndDeltaTimeWithCurrentTime:time];
  +[SCNTransaction lock];
  engineContext = self->_engineContext;
  if (engineContext)
  {
    Scene = C3DEngineContextGetScene(engineContext, v5);
    if (Scene)
    {
      v9 = Scene;
      C3DSceneLock(Scene, v8);
      [(SCNRenderer *)self _update:v9];
      C3DSceneUnlock(v9, v10);
    }
  }

  +[SCNTransaction unlock];

  [(SCNRenderer *)self unlock];
}

- (void)updateAndDrawStatisticsIfNeeded
{
  v3 = SCNGetPerformanceStatisticsEnabled(self, a2);
  v5 = v3;
  if (self->_showStatistics || v3)
  {
    if (self->_renderingAPI)
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext, v4);
      Stats = C3DRendererContextGetStats(RendererContextGL, v7);
      stats = 0;
    }

    else
    {
      Stats = [(SCNMTLResourceManager *)self->_renderContext commandQueue];
      resourceManager = [(SCNMTLRenderContext *)self->_renderContext resourceManager];
      stats = [(SCNMTLResourceManager *)resourceManager stats];
    }

    C3DEngineStatsFinish(Stats, v8);
    Current = CFAbsoluteTimeGetCurrent();
    statisticsTimeStamp = self->_statisticsTimeStamp;
    _authoringEnvironment = [(SCNRenderer *)self _authoringEnvironment];
    if (statisticsTimeStamp <= Current)
    {
      v15 = _authoringEnvironment;
      memset(v17, 0, 512);
      C3DEngineStatsEndFrameAndCopy(Stats, stats, v17);
      C3DEngineStatsReset(Stats, v16);
      if (self->_showStatistics)
      {
        C3DAuthoringEnvironmentUpdateStats(v15, v17, stats);
      }

      if (v5)
      {
        SCNPushPerformanceStatistics(v17);
      }

      self->_statisticsTimeStamp = Current + 1.0;
    }
  }
}

- (void)_drawOverlaySceneAtTime:(double)time
{
  if (self->_overlayScene && !self->_disableOverlays)
  {
    Stats = C3DEngineContextGetStats(self->_engineContext, a2);
    v6 = CACurrentMediaTime();
    _prepareSKRenderer = [(SCNRenderer *)self _prepareSKRenderer];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([self->_overlayScene _isDirty] & 1) == 0)
    {
      if (![(SCNRenderer *)self _needsRepetitiveRedraw])
      {
        [self->_overlayScene _notifyNextDirtyState];
      }
    }

    else
    {
      C3DEngineContextSetNextFrameTimeToAsap(self->_engineContext, v8);
    }

    if (self->_renderingAPI)
    {
      [_prepareSKRenderer updateAtTime:time];
      RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext, v9);
      C3DRendererContextPushGroupMarker(RendererContextGL, "SpriteKit - Draw Overlay");
      [_prepareSKRenderer render:0];
      C3DRendererContextPopGroupMarker();
    }

    else
    {
      [SCNMTLRenderContext renderSKSceneWithRenderer:overlay:atTime:];
    }

    *(Stats + 160) = *(Stats + 160) + CACurrentMediaTime() - v6;
  }
}

- (id)hitTest:(CGPoint)test options:(id)options
{
  v4 = *self->_anon_58;
  if (v4)
  {
    return [(SCNRenderer *)self _hitTest:options viewport:test.x options:test.y, v4, HIDWORD(v4)];
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (id)hitTestWithSegmentFromPoint:(SCNVector3)point toPoint:(SCNVector3)toPoint options:(id)options
{
  z = toPoint.z;
  y = toPoint.y;
  x = toPoint.x;
  v9 = point.z;
  v10 = point.y;
  v11 = point.x;
  rootNode = [(SCNScene *)[(SCNRenderer *)self scene] rootNode];
  *&v13 = v11;
  *&v14 = v10;
  *&v15 = v9;
  *&v16 = x;
  *&v17 = y;
  *&v18 = z;

  return [(SCNNode *)rootNode hitTestWithSegmentFromPoint:options toPoint:v13 options:v14, v15, v16, v17, v18];
}

- (id)_hitTest:(CGPoint)test viewport:(CGSize)viewport options:(id)options
{
  height = viewport.height;
  width = viewport.width;
  x = test.x;
  y = test.y;
  scene = [(SCNRenderer *)self scene];
  +[SCNTransaction lock];
  sceneRef = [(SCNScene *)scene sceneRef];
  if (sceneRef && (v9 = CFRetain(sceneRef)) != 0)
  {
    v11 = v9;
    C3DSceneLock(v9, v10);
    _engineContext = [(SCNRenderer *)self _engineContext];
    if (!_engineContext)
    {
      goto LABEL_13;
    }

    v14 = _engineContext;
    PointOfView = C3DEngineContextGetPointOfView(_engineContext, v13);
    if (!PointOfView)
    {
      goto LABEL_13;
    }

    v16 = PointOfView;
    if (options)
    {
      if (![options objectForKey:@"kHitTestRootNode"] || (v17 = objc_msgSend(objc_msgSend(options, "objectForKey:", @"kHitTestRootNode"), "nodeRef"), options = objc_msgSend(options, "mutableCopy"), objc_msgSend(options, "setObject:forKey:", v17, @"kHitTestRootNode"), options))
      {
        if ([options objectForKey:@"kHitTestShowDebugInfo"])
        {
          options = [options mutableCopy];
          [options setObject:C3DEngineContextGetAuthoringEnvironment(v14 forKey:{0), @"auth"}];
        }
      }
    }

    v18.f64[0] = x;
    v18.f64[1] = y;
    v19 = COERCE_DOUBLE(vcvt_f32_f64(v18));
    v18.f64[0] = width;
    v18.f64[1] = height;
    [(SCNRenderer *)self adjustViewportForRendering:*vcvt_hight_f32_f64(0, v18).i64];
    HitTestResultsAtPoint = C3DSceneCreateHitTestResultsAtPoint(v11, v16, options, v19, v20, v21);
    if (HitTestResultsAtPoint)
    {
      v23 = HitTestResultsAtPoint;
      v24 = [SCNHitTestResult hitTestResultsFromHitTestResultRef:HitTestResultsAtPoint];
      CFRelease(v23);
    }

    else
    {
LABEL_13:
      v24 = 0;
    }

    C3DSceneUnlock(v11, v13);
    +[SCNTransaction unlock];
    CFRelease(v11);
  }

  else
  {
    +[SCNTransaction unlock];
    v24 = 0;
  }

  if (v24)
  {
    return v24;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (BOOL)_isNodeInsideFrustum:(id)frustum withPointOfView:(id)view viewport:(SCNVector4)viewport
{
  if ((view || (x = viewport.x, y = viewport.y, v6 = -[SCNRenderer pointOfView](self, "pointOfView"), viewport.y = y, viewport.x = x, (view = v6) != 0)) && (v7 = viewport.y, v44 = 0u, v45 = 0u, v42 = 0u, v43 = 0u, v40 = 0u, v41 = 0u, [view getFrustum:&v40 withViewport:*&viewport.x]))
  {
    memset(v39, 0, sizeof(v39));
    v37 = 0u;
    v38 = 0u;
    if ([frustum isPresentationInstance])
    {
      nodeRef = [frustum nodeRef];
      WorldMatrix = C3DNodeGetWorldMatrix(nodeRef, v9);
      C3DNodeComputeHierarchicalBoundingBox([frustum nodeRef], 1, &v37);
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      if (frustum)
      {
        objc_msgSend_worldTransform(frustum);
      }

      WorldMatrix = v39;
      *&v12 = C3DMatrix4x4FromSCNMatrix4(v39, &v29).n128_u64[0];
      v36.i32[2] = 0;
      v36.i64[0] = 0;
      v35.i32[2] = 0;
      v35.i64[0] = 0;
      [frustum getBoundingBoxMin:&v36 max:{&v35, v12}];
      v13.i64[0] = 0x3F0000003F000000;
      v13.i64[1] = 0x3F0000003F000000;
      v14 = vmulq_f32(vaddq_f32(v36, v35), v13);
      v15 = vmulq_f32(vsubq_f32(v35, v36), v13);
      v14.i32[3] = 1.0;
      v15.i32[3] = 0;
      v37 = v14;
      v38 = v15;
    }

    for (i = 0; i != 96; i += 16)
    {
      *(&v40 + i) = vnegq_f32(*(&v40 + i));
    }

    v17 = 0;
    v11 = 0;
    v18 = WorldMatrix[1];
    v19 = WorldMatrix[2];
    v20 = vaddq_f32(WorldMatrix[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v18, *v37.f32, 1), *WorldMatrix, v37.f32[0]), v19, v37, 2));
    v20.i32[3] = 1.0;
    v21 = v38;
    v21.i32[1] = v38.i32[0];
    v21.i32[2] = v38.i32[0];
    v22 = vaddq_f32(vaddq_f32(vabsq_f32(vmulq_f32(*WorldMatrix, v21)), vabsq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*v38.i8, 1), v38), v18))), vabsq_f32(vmulq_f32(vzip2q_s32(vtrn1q_s32(v38, v38), v38), v19)));
    v31 = v42;
    v32 = v43;
    v33 = v44;
    v34 = v45;
    v29 = v40;
    v30 = v41;
    do
    {
      v23 = *(&v29 + v17);
      v24 = vmulq_f32(v20, v23);
      *v24.i8 = vadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
      v25 = vmulq_f32(v22, vabsq_f32(v23));
      *v24.i8 = vadd_f32(vzip1_s32(*v24.i8, *v25.f32), vzip2_s32(*v24.i8, *v25.f32));
      if (*v24.i32 > (v25.f32[2] + *&v24.i32[1]))
      {
        break;
      }

      v11 = v17++ > 4;
    }

    while (v17 != 6);
  }

  else
  {
    return 0;
  }

  return v11;
}

- (BOOL)isNodeInsideFrustum:(id)frustum withPointOfView:(id)view
{
  v5 = *self->_anon_58;
  if (!v5.i32[0])
  {
    return 0;
  }

  v6 = COERCE_DOUBLE(vcvt_f32_u32(v5));
  LODWORD(v4) = HIDWORD(v6);
  return [(SCNRenderer *)self _isNodeInsideFrustum:frustum withPointOfView:view viewport:0.0, 0.0, v6, v4];
}

- (id)_nodesInsideFrustumWithPointOfView:(id)view viewport:(SCNVector4)viewport
{
  array = [MEMORY[0x277CBEB18] array];
  if (view || (view = [(SCNRenderer *)self pointOfView]) != 0)
  {
    if ([(SCNRenderer *)self scene])
    {
      memset(v17, 0, sizeof(v17));
      if ([view getFrustum:v17 withViewport:0.0])
      {
        sceneRef = [(SCNScene *)self->_scene sceneRef];
        C3DSceneLock(sceneRef, v8);
        CullingSystem = C3DSceneGetCullingSystem(sceneRef, v9);
        v16 = 0;
        camera = 0u;
        v15 = 0u;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __59__SCNRenderer__nodesInsideFrustumWithPointOfView_viewport___block_invoke;
        v13[3] = &unk_2782FF230;
        v13[4] = array;
        camera = [objc_msgSend(view camera];
        DWORD1(v15) = 1;
        C3DCullingSystemCull(CullingSystem);
        C3DSceneUnlock(sceneRef, v11);
      }
    }
  }

  return array;
}

id *__59__SCNRenderer__nodesInsideFrustumWithPointOfView_viewport___block_invoke(id *result, uint64_t *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v15 = v8;
    v16 = v7;
    v17 = v6;
    v18 = v5;
    v19 = v4;
    v20 = v3;
    v21 = v9;
    v22 = v10;
    v11 = a3;
    v13 = result;
    do
    {
      v14 = *a2++;
      result = [v13[4] addObject:{+[SCNNode nodeWithNodeRef:](SCNNode, "nodeWithNodeRef:", v14, v15, v16, v17, v18, v19, v20, v21, v22)}];
      --v11;
    }

    while (v11);
  }

  return result;
}

- (id)nodesInsideFrustumWithPointOfView:(id)view
{
  v4 = *self->_anon_58;
  if (!v4.i32[0])
  {
    return MEMORY[0x277CBEBF8];
  }

  v5 = COERCE_DOUBLE(vcvt_f32_u32(v4));
  LODWORD(v3) = HIDWORD(v5);
  return [(SCNRenderer *)self _nodesInsideFrustumWithPointOfView:view viewport:0.0, 0.0, v5, v3];
}

- (void)_play
{
  if (!self->_playing)
  {
    self->_lastSystemTime = 0.0;
    self->_playing = 1;
  }
}

- (void)_stop
{
  self->_playing = 0;
  scene = self->_scene;
  if (scene)
  {
    sceneRef = [(SCNScene *)scene sceneRef];
    StartTime = C3DSceneGetStartTime(sceneRef, v5);
  }

  else
  {
    StartTime = 0.0;
  }

  [(SCNRenderer *)self _setSceneTime:StartTime];
}

- (void)setPlaying:(BOOL)playing
{
  if (playing)
  {
    [(SCNRenderer *)self _play];
  }

  else
  {
    [(SCNRenderer *)self _pause];
  }
}

- (void)setRendersContinuously:(BOOL)continuously
{
  if (continuously)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 121) = *(self + 121) & 0xFD | v3;
}

- (void)setTemporalAntialiasingEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 288) = *(self + 288) & 0xFD | v3;
}

- (void)setFrozen:(BOOL)frozen
{
  frozenCopy = frozen;
  [(SCNRenderer *)self lock];
  if (frozenCopy)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  *(self + 288) = *(self + 288) & 0xFB | v5;

  [(SCNRenderer *)self unlock];
}

- (id)_copyPerformanceStatistics
{
  *v9 = 0u;
  [(SCNRenderer *)self lock:0];
  _engineContext = [(SCNRenderer *)self _engineContext];
  if (_engineContext && (Stats = C3DEngineContextGetStats(_engineContext, v4)) != 0)
  {
    SCNConvertEngineStatsToPerformanceData(Stats, &v8, 0);
    v6 = _SCNGetPerformanceStatisticsFromPerformanceData(&v8, 0);
  }

  else
  {
    v6 = 0;
  }

  [(SCNRenderer *)self unlock];
  return v6;
}

- (void)_displayLinkStatsTick
{
  _engineContext = [(SCNRenderer *)self _engineContext];
  if (_engineContext)
  {
    Stats = C3DEngineContextGetStats(_engineContext, v3);
    if (Stats)
    {
      *(Stats + 184) = *(Stats + 184) + CACurrentMediaTime() - *(Stats + 208);
    }
  }
}

- (void)_displayLinkStatsTack
{
  _engineContext = [(SCNRenderer *)self _engineContext];
  if (_engineContext)
  {
    Stats = C3DEngineContextGetStats(_engineContext, v3);
    if (Stats)
    {
      *(Stats + 208) = CACurrentMediaTime();
    }
  }
}

- (void)setShowsStatistics:(BOOL)statistics
{
  if (statistics)
  {
    [(SCNRenderer *)self setupAuthoringEnvironment];
  }

  self->_showStatistics = statistics;
}

- (void)_presentFramebuffer
{
  if (self->_renderContext)
  {

    [(SCNRenderer *)self _endFrame];
  }

  else
  {
    if (self->_renderingAPI)
    {
      currentContext = [MEMORY[0x277CD9388] currentContext];
      if (currentContext != self->_glContext)
      {
        v4 = scn_default_log(currentContext, a2);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
        {
          [(SCNRenderer *)v4 _deleteGLFramebuffer:a2];
        }
      }
    }

    Stats = C3DEngineContextGetStats(self->_engineContext, a2);
    v12 = CACurrentMediaTime();
    glPushGroupMarkerEXT(0, "SceneKit - Flush");
    [(SCNRenderer *)self _resolveAndDiscardGL];
    RenderTarget = C3DFramebufferGetRenderTarget(self->_framebufferInfo.frameBuffer, 0);
    RenderBuffer = C3DRenderTargetGetRenderBuffer(RenderTarget, v14);
    glBindRenderbuffer(0x8D41u, RenderBuffer);
    [(EAGLContext *)self->_glContext presentRenderbuffer:36161];
    glPopGroupMarkerEXT();
    *(Stats + 176) = *(Stats + 176) + CACurrentMediaTime() - v12;
  }
}

- (void)setDebugOptions:(unint64_t)options
{
  if (self->_debugOptions != options)
  {
    [(SCNRenderer *)self setupAuthoringEnvironment];
    self->_debugOptions = options;
    [(SCNRenderer *)self lock];
    renderingAPI = self->_renderingAPI;
    _showsAuthoringEnvironment = [(SCNRenderer *)self _showsAuthoringEnvironment];
    if (_showsAuthoringEnvironment)
    {
      _showsAuthoringEnvironment = [-[SCNRenderer _authoringEnvironment](self "_authoringEnvironment")];
      v9 = _showsAuthoringEnvironment & 0xFFFFFFFFFFFFFF82;
    }

    else
    {
      v9 = 0;
    }

    v10 = (options << 6) & 0x40 | (options >> 1) & 1 | ((options << 60) >> 63) & 0x28 | ((options << 53) >> 63) & 0x14 | v9;
    if ((options & 4) != 0)
    {
      v12 = C3DIsRunningInXcode(_showsAuthoringEnvironment, v8);
      v13 = v10 | 0x1000;
      if (v12)
      {
        v13 = v10;
      }

      v11 = v13 | 0x200;
    }

    else
    {
      v11 = (options << 6) & 0x40 | (options >> 1) & 1 | ((options << 60) >> 63) & 0x28 | ((options << 53) >> 63) & 0x14 | v9 & 0xFFFFFFFFFFFFEDFFLL;
    }

    v14 = v11 & 0xFFFFFFFFFFFFFF7FLL | (((options >> 4) & 1) << 7);
    v15 = v14 & 0xFFFFFFFFFFFFFBFFLL;
    if ((options & 0x20) != 0)
    {
      v15 = v14 | 0x400;
    }

    if (renderingAPI)
    {
      v14 = v15;
    }

    v16 = (options << 6) & 0x4000 | (16 * options) & 0xA800 | (((options >> 12) & 1) << 17) | v14 & 0xFFFFFFFFFFFD17FFLL;
    [(SCNRenderer *)self set_showsAuthoringEnvironment:v16 != 0];
    [-[SCNRenderer _authoringEnvironment](self "_authoringEnvironment")];
    if (!renderingAPI)
    {
      RenderContext = C3DEngineContextGetRenderContext(self->_engineContext, v17);
      [(SCNMTLRenderContext *)RenderContext setDebugOptions:?];
    }

    [(SCNRenderer *)self unlock];
  }
}

- (BOOL)usesReverseZ
{
  renderContext = self->_renderContext;
  if (renderContext)
  {
    LOBYTE(renderContext) = [(SCNMTLRenderContext *)renderContext reverseZ];
  }

  return renderContext;
}

- (void)setUsesReverseZ:(BOOL)z
{
  zCopy = z;
  if ([(SCNRenderer *)self usesReverseZ]!= z)
  {
    renderContext = self->_renderContext;

    [(SCNMTLRenderContext *)renderContext setReverseZ:zCopy];
  }
}

- (void)_reloadDebugOptions
{
  if ([(SCNRenderer *)self _showsAuthoringEnvironment])
  {
    v3 = [-[SCNRenderer _authoringEnvironment](self "_authoringEnvironment")];
    v4 = v3 & 8 | (2 * (v3 & 1)) | (v3 >> 6) & 1 | (((v3 >> 4) & 1) << 10) | (v3 >> 7) & 4 | (v3 >> 3) & 0x10 | (v3 >> 5) & 0x20 | (v3 >> 4) & 0x80 | (v3 >> 6) & 0x100 | (v3 >> 4) & 0xA00 | (v3 >> 5) & 0x1000;
  }

  else
  {
    v4 = 0;
  }

  self->_debugOptions = self->_debugOptions & 0x60 | v4;
}

- (void)set_disableLinearRendering:(BOOL)rendering
{
  if (rendering)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 121) = v3 & 0x80 | *(self + 121) & 0x7F;
}

- (BOOL)_enableARMode
{
  renderContext = self->_renderContext;
  if (renderContext)
  {
    LOBYTE(renderContext) = [(SCNMTLRenderContext *)renderContext enableARMode];
  }

  return renderContext;
}

- (void)set_enableARMode:(BOOL)mode
{
  renderContext = self->_renderContext;
  if (renderContext)
  {
    [(SCNMTLRenderContext *)renderContext setEnableARMode:mode];
  }
}

- (BOOL)_shouldDelegateARCompositing
{
  renderContext = self->_renderContext;
  if (renderContext)
  {
    LOBYTE(renderContext) = [(SCNMTLRenderContext *)renderContext shouldDelegateARCompositing];
  }

  return renderContext;
}

- (void)set_shouldDelegateARCompositing:(BOOL)compositing
{
  renderContext = self->_renderContext;
  if (renderContext)
  {
    [(SCNMTLRenderContext *)renderContext setShouldDelegateARCompositing:compositing];
  }
}

- (BOOL)_collectCompilationErrors
{
  RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext, a2);
  if (RendererContextGL)
  {

    return C3DRendererContextGetCompilationErrorsCollection(RendererContextGL);
  }

  else
  {
    RenderContext = C3DEngineContextGetRenderContext(self->_engineContext, v4);
    if (self->_renderContext)
    {

      return [(SCNMTLRenderContext *)RenderContext collectsCompilationErrors];
    }

    else
    {
      return 0;
    }
  }
}

- (void)set_collectCompilationErrors:(BOOL)errors
{
  errorsCopy = errors;
  RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext, a2);
  if (RendererContextGL)
  {
    C3DRendererContextSetCompilationErrorsCollection(RendererContextGL, errorsCopy);
  }

  RenderContext = C3DEngineContextGetRenderContext(self->_engineContext, v6);
  if (self->_renderContext)
  {

    [(SCNMTLRenderContext *)RenderContext setCollectsCompilationErrors:errorsCopy];
  }
}

- (id)_compilationErrors
{
  snapshotRenderer = self->_snapshotRenderer;
  if (snapshotRenderer)
  {

    return [(SCNRenderer *)snapshotRenderer _compilationErrors];
  }

  else
  {
    RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext, a2);
    if (RendererContextGL)
    {

      return C3DRendererContextGetCompilationErrors(RendererContextGL);
    }

    else
    {
      RenderContext = C3DEngineContextGetRenderContext(self->_engineContext, v6);
      if (self->_renderContext)
      {

        return [(SCNMTLRenderContext *)RenderContext compilationErrors];
      }

      else
      {
        return 0;
      }
    }
  }
}

- (void)set_showsAuthoringEnvironment:(BOOL)environment
{
  if (self->_showAuthoringEnvironment != environment)
  {
    self->_showAuthoringEnvironment = environment;
    if (environment)
    {
      [(SCNRenderer *)self setupAuthoringEnvironment];
    }

    RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext, a2);
    if (RendererContextGL)
    {
      C3DAnimationManagerSetPausedForEditing(RendererContextGL, environment);
    }

    RenderContext = C3DEngineContextGetRenderContext(self->_engineContext, v7);
    if (self->_renderContext)
    {
      [(SCNMTLRenderContext *)RenderContext setShowsAuthoringEnvironment:environment];
    }

    [(SCNRenderer *)self _reloadDebugOptions];
  }
}

- (void)setupAuthoringEnvironment
{
  if (!self->_authoringEnvironment)
  {
    [(SCNRenderer *)self lock];
    if (self->_privateRendererOwner)
    {
      privateRendererOwner = self->_privateRendererOwner;
    }

    else
    {
      privateRendererOwner = self;
    }

    self->_authoringEnvironment = [SCNAuthoringEnvironment authoringEnvironmentForSceneRenderer:privateRendererOwner createIfNeeded:1];
    [(SCNRenderer *)self _reloadDebugOptions];

    [(SCNRenderer *)self unlock];
  }
}

- (SCNVector4)_viewport
{
  x = self->__viewport.x;
  y = self->__viewport.y;
  z = self->__viewport.z;
  w = self->__viewport.w;
  result.w = w;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)currentViewport
{
  _engineContext = [(SCNRenderer *)self _engineContext];
  if (_engineContext)
  {
    Viewport = C3DEngineContextGetViewport(_engineContext);
    v4 = vcvt_hight_f64_f32(Viewport);
    v5 = vcvtq_f64_f32(Viewport.n128_u64[0]);
  }

  else
  {
    v5 = *MEMORY[0x277CBF3A0];
    v4 = *(MEMORY[0x277CBF3A0] + 16);
  }

  v6 = v5.f64[1];
  v7 = v4.f64[1];
  result.size.width = v4.f64[0];
  result.origin.x = v5.f64[0];
  result.size.height = v7;
  result.origin.y = v6;
  return result;
}

- (void)set_viewport:(SCNVector4)set_viewport
{
  x = set_viewport.x;
  self->__viewport = set_viewport;
  y = set_viewport.y;
  w = set_viewport.w;
  z = set_viewport.z;
  _engineContext = [(SCNRenderer *)self _engineContext];
  if (_engineContext)
  {
    v5 = _engineContext;
    C3DEngineContextSetDrawableSize(_engineContext, COERCE_DOUBLE(__PAIR64__(LODWORD(w), LODWORD(z))));
    [(SCNRenderer *)self adjustViewportForRendering:COERCE_DOUBLE(__PAIR64__(LODWORD(y), LODWORD(x)))];

    C3DEngineContextSetViewport(v5, v6, v7);
  }
}

- (void)set_drawableSafeAreaInsets:(SCNRenderer *)self
{
  v4 = v2;
  *self->__drawableSafeAreaInsets = v2;
  _engineContext = [(SCNRenderer *)self _engineContext];
  if (_engineContext)
  {

    C3DEngineContextSetDrawableSafeAreaInsets(_engineContext, v4);
  }
}

- (SCNNode)audioListener
{
  Scene = C3DEngineContextGetScene(self->_engineContext, a2);
  if (Scene)
  {
    v5 = Scene;
    C3DSceneLock(Scene, v4);
    Listener = C3DAudioManagerGetListener(self->_engineContext);
    ObjCWrapper = C3DEntityGetObjCWrapper(Listener);
    C3DSceneUnlock(v5, v8);
    return ObjCWrapper;
  }

  else
  {
    v10 = C3DAudioManagerGetListener(self->_engineContext);

    return C3DEntityGetObjCWrapper(v10);
  }
}

- (void)setAudioListener:(id)listener
{
  Scene = C3DEngineContextGetScene(self->_engineContext, a2);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__SCNRenderer_setAudioListener___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = listener;
  [SCNTransaction postCommandWithContext:Scene object:self applyBlock:v6];
}

void *__32__SCNRenderer_setAudioListener___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 208);
  v2 = [*(a1 + 40) nodeRef];

  return C3DAudioManagerSetListener(v1, v2);
}

- (void)_drawWithJitteringPresentationMode
{
  v3 = CACurrentMediaTime();

  [(SCNRenderer *)self _drawAtTime:v3];
}

- (void)_renderSceneWithEngineContext:(__C3DEngineContext *)context sceneTime:(double)time
{
  if (!context)
  {
    v7 = scn_default_log(self, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetStats_cold_1(v7, a2, v8, v9, v10, v11, v12, v13);
    }
  }

  C3DEngineContextResetNextFrameTime(context, a2);
  C3DEngineContextSetSceneTime(context, time);
  Scene = C3DEngineContextGetScene(context, v14);
  if (Scene)
  {
    v17 = Scene;
    RendererContextGL = C3DEngineContextGetRendererContextGL(context, v16);
    ResourceManager = C3DEngineContextGetResourceManager(context, v19);
    v22 = ResourceManager;
    if (!self->_renderContext)
    {
      if (!RendererContextGL)
      {
        v23 = scn_default_log(ResourceManager, v21);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          C3DEngineContextRenderScene_cold_2(v23, v24, v25, v26, v27, v28, v29, v30);
        }
      }

      C3DResourceManagerLockVRAMResourceAccess(v22);
      C3DRendererContextInvalidateCache(RendererContextGL);
    }

    AuthoringEnvironment = C3DEngineContextGetAuthoringEnvironment(context, 0);
    if (AuthoringEnvironment)
    {
      C3DAuthoringEnvironmentBeginFrame(AuthoringEnvironment);
    }

    Stats = C3DEngineContextGetStats(context, v32);
    v34 = CACurrentMediaTime();
    EnginePipeline = C3DSceneGetEnginePipeline(v17, v35);
    if (!EnginePipeline)
    {
      v38 = scn_default_log(0, v36);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        C3DEngineContextRenderScene_cold_3(v38, v36, v39, v40, v41, v42, v43, v44);
      }
    }

    v101[0] = EnginePipeline;
    v101[1] = context;
    v102 = 0u;
    v103 = 0u;
    C3DEnginePipelineApplyNotificationQueue(v101, v36);
    *(Stats + 152) = *(Stats + 152) + CACurrentMediaTime() - v34;
    C3DEngineContextReloadShadersIfNeeded(context, v45);
    renderContext = self->_renderContext;
    if (renderContext)
    {
      [(SCNMTLRenderContext *)renderContext resourceManager];
      C3DSceneSourcePerformConsistencyCheck();
    }

    else
    {
      C3DRendererContextPushGroupMarker(RendererContextGL, "Resource Manager Flush");
      C3DResourceManagerFlush(v22);
      C3DRendererContextPopGroupMarker();
    }

    C3DEngineContextApplyModifiers(context, EnginePipeline);
    if (self->_viewpoints)
    {
      viewpointCoordinateSpace = self->_viewpointCoordinateSpace;
    }

    else
    {
      viewpointCoordinateSpace = 2;
    }

    C3DEngineContextSetViewpointCoordinateSpace(context, viewpointCoordinateSpace);
    viewpoints = self->_viewpoints;
    if (viewpoints)
    {
      v49 = [(NSArray *)viewpoints objectAtIndexedSubscript:0];
      v50 = v49;
      v99 = 0u;
      v100 = 0u;
      v98 = 0u;
      if (v49)
      {
        objc_msgSend_viewport(v49);
        if (*(&v100 + 1) != *&v100)
        {
          [(SCNRenderer *)self setUsesReverseZ:*(&v100 + 1) < *&v100, *(&v100 + 1)];
        }
      }

      v109 = __invert_f4(*_PromotedConst);
      v92 = v109.columns[1];
      v93 = v109.columns[0];
      v90 = v109.columns[3];
      v91 = v109.columns[2];
      v51 = [objc_msgSend(objc_msgSend(objc_msgSend(v50 "passDescriptor")];
      textureType = [v51 textureType];
      v53 = textureType;
      v56 = textureType == 5 || textureType == 3 || textureType == 8;
      features = [(SCNMTLRenderContext *)self->_renderContext features];
      features2 = [(SCNMTLRenderContext *)self->_renderContext features];
      v59 = v53 == 2;
      v60 = [(NSArray *)self->_viewpoints count];
      if (v60)
      {
        v61 = v60;
        v88 = v22;
        v89 = RendererContextGL;
        v62 = v56;
        v63 = 0;
        v64 = 0;
        v65 = 1;
        v66 = v62 & (features >> 5);
        v67 = v59 & (features2 >> 7);
        do
        {
          C3DEngineContextSetRenderPassDescriptorForEye(context, [-[NSArray objectAtIndexedSubscript:](self->_viewpoints objectAtIndexedSubscript:{v63, v88, v89), "passDescriptor"}], v64);
          v65 = v65 && v51 == [objc_msgSend(objc_msgSend(objc_msgSend(-[NSArray objectAtIndexedSubscript:](self->_viewpoints objectAtIndexedSubscript:{v63), "passDescriptor"), "colorAttachments"), "objectAtIndexedSubscript:", 0), "texture"}];
          v63 = ++v64;
        }

        while (v61 > v64);
        if (v67)
        {
          v68 = 2;
        }

        else
        {
          v68 = v66;
        }

        if (((v61 != 1 && v65) & (v67 | v66)) != 0)
        {
          v69 = v68;
        }

        else
        {
          v69 = 0;
        }

        C3DEngineContextSetPreferredRenderMode(context, v69);
        C3DEngineContextSetEyeCount(context, v61);
        v22 = v88;
        RendererContextGL = v89;
        v70 = 0;
        v71 = 0;
        do
        {
          v72 = [(NSArray *)self->_viewpoints objectAtIndexedSubscript:v70];
          v74 = v72;
          v75 = 0uLL;
          if (v72)
          {
            objc_msgSend_viewport(v72, 0.0);
            v73 = *v106.f64;
            v75 = vcvt_hight_f32_f64(vcvt_f32_f64(v105), v106);
          }

          C3DEngineContextSetViewportAtIndex(context, v71, v75, v73);
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          [v74 simdViewMatrix];
          v94 = v76;
          v95 = v77;
          v96 = v78;
          v97 = v79;
          [v74 simdProjectionMatrix];
          v94 = v80;
          v95 = v81;
          v96 = v82;
          v97 = v83;
          if (*(&v82 + 2) > 0.0)
          {
            v84 = 0;
            v104[0] = v80;
            v104[1] = v81;
            v104[2] = v82;
            v104[3] = v83;
            v105 = 0u;
            v106 = 0u;
            v107 = 0u;
            v108 = 0u;
            do
            {
              *(&v105 + v84 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v93, COERCE_FLOAT(v104[v84])), v92, *&v104[v84], 1), v91, v104[v84], 2), v90, v104[v84], 3);
              ++v84;
            }

            while (v84 != 4);
            v94 = v105;
            v95 = v106;
            v96 = v107;
            v97 = v108;
          }

          C3DEngineContextSetEyeMatrix4x4(context, 0, &v94, v71);
          v70 = (v71 + 1);
          v71 = v70;
        }

        while (v61 > v70);
      }

      else
      {
        C3DEngineContextSetPreferredRenderMode(context, 0);
        C3DEngineContextSetEyeCount(context, 0);
      }
    }

    else
    {
      [(SCNRenderer *)self adjustViewportForRendering:*&self->__viewport.x];
      C3DEngineContextSetViewport(context, v86, v87);
    }

    if (self->_renderContext)
    {
      C3DEngineContextRenderWithRenderGraph(context);
    }

    else
    {
      C3DEngineContextRenderMainTechnique(context, v85);
    }

    if (!self->_renderContext)
    {
      C3DRendererContextUnbindTextureUnits(RendererContextGL);
      C3DRendererContextResetToDefaultStates(RendererContextGL);
      C3DRendererContextResetVolatileObjects(RendererContextGL);
      C3DResourceManagerUnlockVRAMResourceAccess(v22);
    }
  }
}

- (BOOL)_drawSceneWithNewRenderer:(__C3DScene *)renderer
{
  if (renderer)
  {
    v5 = *(self + 121);
    if ((v5 & 0x18) == 8)
    {
      isJitteringEnabled = 0;
    }

    else
    {
      isJitteringEnabled = [(SCNRenderer *)self isJitteringEnabled];
      v5 = *(self + 121);
    }

    if ((v5 & 4) == 0)
    {
      +[SCNTransaction lock];
    }

    C3DSceneLock(renderer, a2);
    commandQueue = [(SCNMTLResourceManager *)self->_renderContext commandQueue];
    if ((*(self + 288) & 4) != 0)
    {
      C3DEngineStatsReset(commandQueue, v8);
    }

    else
    {
      *(commandQueue + 12) = 0;
    }

    C3DSceneBumpFrameStamp(renderer, v8);
    if ((*(self + 121) & 0x40) != 0)
    {
      [(SCNRenderer *)self _update:renderer];
    }

    if (isJitteringEnabled)
    {
      C3DEngineContextSetJitteringEnabled(self->_engineContext, 1);
    }

    C3DEngineContextSetTemporalAntialiasingEnabled(self->_engineContext, [(SCNRenderer *)self isTemporalAntialiasingEnabled]);
    [(SCNRenderer *)self _renderSceneWithEngineContext:self->_engineContext sceneTime:self->_currentSceneTime];
    if (isJitteringEnabled)
    {
      C3DEngineContextSetJitteringEnabled(self->_engineContext, 1);
      [(SCNRenderer *)self _endFrame];
      for (i = 0; ; ++i)
      {
        [(SCNRenderer *)self _beginFrame];
        C3DEngineContextSetUpdateMainFramebuffer(self->_engineContext, i == 80);
        C3DEngineContextSetJitteringStep(self->_engineContext, i);
        [(SCNRenderer *)self _renderSceneWithEngineContext:self->_engineContext sceneTime:self->_currentSceneTime];
        if (i == 80)
        {
          break;
        }

        [(SCNRenderer *)self _endFrame];
      }

      C3DEngineContextSetJitteringEnabled(self->_engineContext, 0);
    }

    [(SCNRenderer *)self _computeNextFrameTime];
    [(SCNRenderer *)self set_nextFrameTime:?];
    [(SCNMTLRenderContext *)self->_renderContext endFrameSceneSpecifics];
    C3DSceneUnlock(renderer, v10);
    if ((*(self + 121) & 4) == 0)
    {
      +[SCNTransaction unlock];
    }

    [(SCNRenderer *)self updateAndDrawStatisticsIfNeeded];
  }

  return renderer != 0;
}

- (BOOL)_drawSceneWithLegacyRenderer:(__C3DScene *)renderer
{
  if (renderer)
  {
    v5 = (*(self + 121) & 0x18) != 8 && [(SCNRenderer *)self isJitteringEnabled];
    RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext, a2);
    if ((*(self + 121) & 4) == 0)
    {
      Viewport = C3DEngineContextGetViewport(self->_engineContext);
      *self->_anon_58 = vcvt_u32_f32(vrndp_f32(*&vextq_s8(Viewport, Viewport, 8uLL)));
    }

    Stats = C3DRendererContextGetStats(RendererContextGL, v6);
    if ((*(self + 288) & 4) != 0)
    {
      C3DEngineStatsReset(Stats, v10);
    }

    else
    {
      *(Stats + 12) = 0;
    }

    if ((*(self + 121) & 4) == 0)
    {
      +[SCNTransaction lock];
    }

    C3DSceneLock(renderer, v10);
    currentContext = [MEMORY[0x277CD9388] currentContext];
    [MEMORY[0x277CD9388] setCurrentContext:self->_glContext];
    C3DSceneBumpFrameStamp(renderer, v12);
    [(SCNRenderer *)self _update:renderer];
    if (v5)
    {
      C3DEngineContextSetJitteringEnabled(self->_engineContext, 1);
    }

    engineContext = self->_engineContext;
    currentSceneTime = self->_currentSceneTime;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __44__SCNRenderer__drawSceneWithLegacyRenderer___block_invoke;
    v18[3] = &unk_2782FB608;
    v18[4] = self;
    C3DEngineContextRenderScene(engineContext, 0, v18, currentSceneTime);
    if (v5)
    {
      C3DEngineContextSetJitteringEnabled(self->_engineContext, 1);
      C3DEngineContextSetJitteringStep(self->_engineContext, 0);
      for (i = 0; i != 81; ++i)
      {
        C3DEngineContextSetUpdateMainFramebuffer(self->_engineContext, i == 80);
        C3DEngineContextSetJitteringStep(self->_engineContext, i);
        C3DEngineContextRenderScene(self->_engineContext, 0, 0, self->_currentSceneTime);
      }

      C3DEngineContextSetJitteringEnabled(self->_engineContext, 0);
    }

    [MEMORY[0x277CD9388] setCurrentContext:currentContext];
    [(SCNRenderer *)self _computeNextFrameTime];
    [(SCNRenderer *)self set_nextFrameTime:?];
    C3DSceneUnlock(renderer, v16);
    if ((*(self + 121) & 4) == 0)
    {
      +[SCNTransaction unlock];
    }

    C3DEngineContextSetForceShaderReload(self->_engineContext, 0);
  }

  return renderer != 0;
}

- (BOOL)_needsRedrawAsap
{
  if (![(SCNRenderer *)self _needsRepetitiveRedraw])
  {
    if (C3DEngineContextGetNextFrameTime(self->_engineContext, v3) == INFINITY)
    {
      Scene = C3DEngineContextGetScene(self->_engineContext, v5);
      if (!Scene)
      {
        return Scene;
      }

      v7 = Scene;
      PointOfView = C3DEngineContextGetPointOfView(self->_engineContext, v6);
      if (PointOfView)
      {
        Camera = C3DNodeGetCamera(PointOfView, v9);
        if (Camera)
        {
          v12 = Camera;
          if (C3DCameraGetWantsHDR(Camera, v11) && (C3DCameraGetWantsExposureAdaptation(v12, v13) & 1) != 0)
          {
            ExposureAdaptationDarkeningSpeedFactor = C3DCameraGetExposureAdaptationDarkeningSpeedFactor(v12, v13);
            ExposureAdaptationBrighteningSpeedFactor = C3DCameraGetExposureAdaptationBrighteningSpeedFactor(v12, v15);
            if (ExposureAdaptationDarkeningSpeedFactor < ExposureAdaptationBrighteningSpeedFactor)
            {
              ExposureAdaptationBrighteningSpeedFactor = ExposureAdaptationDarkeningSpeedFactor;
            }

            v17 = ExposureAdaptationBrighteningSpeedFactor;
            v18 = ExposureAdaptationBrighteningSpeedFactor + 1.0;
            if (v17 <= 0.01)
            {
              v18 = 1.01;
            }

            v20 = (5.0 / logf(v18) * 60.0);
            if (!v20)
            {
              goto LABEL_24;
            }
          }

          else
          {
            if (C3DCameraGetMotionBlurIntensity(v12, v13) == 0.0)
            {
              goto LABEL_24;
            }

            v20 = 2;
          }

          FXContext = C3DEngineContextGetFXContext(self->_engineContext, v19);
          if (FXContext)
          {
            v23 = *(FXContext + 116);
          }

          else
          {
            v23 = 0;
          }

          if (self->_adaptativeTechniqueTimeStamp != v23 || (adaptativeState0 = self->_adaptativeState0, adaptativeState0 != C3DSceneGetStateStamp(v7, v22)))
          {
            self->_adaptativeState0 = C3DSceneGetStateStamp(v7, v22);
            self->_adaptativeEndFrame = C3DSceneGetFrameStamp(v7, v25) + v20;
            self->_adaptativeTechniqueTimeStamp = v23;
          }

          if (C3DSceneGetFrameStamp(v7, v22) < self->_adaptativeEndFrame)
          {
            goto LABEL_2;
          }
        }
      }
    }

LABEL_24:
    LOBYTE(Scene) = 0;
    return Scene;
  }

LABEL_2:
  LOBYTE(Scene) = 1;
  return Scene;
}

- (double)_computeNextFrameTime
{
  NextFrameTime = C3DEngineContextGetNextFrameTime(self->_engineContext, a2);
  if ([(SCNRenderer *)self _needsRedrawAsap])
  {
    v4 = CACurrentMediaTime();
    if (NextFrameTime >= v4)
    {
      return v4;
    }
  }

  return NextFrameTime;
}

- (void)_drawScene:(__C3DScene *)scene
{
  if (!self->_engineContext)
  {
    goto LABEL_8;
  }

  if (self->_renderContext)
  {
    if ([(SCNRenderer *)self _drawSceneWithNewRenderer:scene])
    {
      return;
    }

    goto LABEL_8;
  }

  v4 = [(SCNRenderer *)self _drawSceneWithLegacyRenderer:scene];
  AuthoringEnvironment = C3DEngineContextGetAuthoringEnvironment(self->_engineContext, 0);
  if (AuthoringEnvironment)
  {
    C3DAuthoringEnvironmentEndFrame(AuthoringEnvironment);
  }

  if (!v4)
  {
LABEL_8:
    [(SCNRenderer *)self set_nextFrameTime:scene, INFINITY];

    [(SCNRenderer *)self _clearBackBuffer];
  }
}

- (void)_updateSystemTimeAndDeltaTimeWithCurrentTime:(double)time
{
  forceSystemTime = self->_forceSystemTime;
  if (forceSystemTime == 0.0)
  {
    [(SCNRenderer *)self _systemTime];
    lastSystemTime = v7;
    forceSystemTime = time;
  }

  else if (self->_lastSystemTime == 0.0)
  {
    lastSystemTime = self->_forceSystemTime;
  }

  else
  {
    lastSystemTime = self->_lastSystemTime;
  }

  [(SCNRenderer *)self set_systemTime:forceSystemTime];
  v8 = forceSystemTime - lastSystemTime;
  if (lastSystemTime == 0.0)
  {
    v8 = 0.0;
  }

  [(SCNRenderer *)self set_deltaTime:v8];
}

- (void)_draw
{
  v3 = CACurrentMediaTime();

  [(SCNRenderer *)self _drawAtTime:v3];
}

- (void)_drawAtTime:(double)time
{
  v4 = *(self + 121);
  if ((v4 & 0x40) != 0)
  {
    [(SCNRenderer *)self _updateSystemTimeAndDeltaTimeWithCurrentTime:time];
    v4 = *(self + 121);
  }

  if ((v4 & 4) != 0)
  {
    [(SCNRenderer *)self _installViewport];
  }

  else if (self->_renderingAPI)
  {
    currentContext = [MEMORY[0x277CD9388] currentContext];
    if (currentContext != self->_glContext)
    {
      v7 = scn_default_log(currentContext, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [(SCNRenderer *)v7 _deleteGLFramebuffer:v8];
      }
    }

    Error = glGetError();
    if (Error)
    {
      v17 = scn_default_log(Error, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [SCNRenderer _drawAtTime:];
      }
    }

    C3DEngineContextGetRendererContextGL(self->_engineContext, v16);
    *v18.i64 = C3DRendererContextGetViewport();
    v56 = v18;
    C3DEngineContextSetDrawableSize(self->_engineContext, *vextq_s8(v18, v18, 8uLL).i64);
    [(SCNRenderer *)self adjustViewportForRendering:*v56.i64];
    time = C3DEngineContextSetViewport(self->_engineContext, v19, v20);
  }

  [(SCNRenderer *)self lock:time];
  engineContext = self->_engineContext;
  if (engineContext)
  {
    Scene = C3DEngineContextGetScene(engineContext, v21);
  }

  else
  {
    Scene = 0;
  }

  transitionContext = self->_transitionContext;
  if (transitionContext)
  {
    v25 = transitionContext->_renderers[0];
    [(SCNRenderer *)self _systemTime];
    v27 = v26;
    _prepareSKRenderer = [(SCNRenderer *)self _prepareSKRenderer];
    [(SKTransition *)[(SCNRendererTransitionContext *)self->_transitionContext transition] _duration];
    v30 = 1.0;
    if (v29 == 0.0)
    {
      v31 = 1.0;
    }

    else
    {
      v31 = v29;
    }

    [(SCNRendererTransitionContext *)self->_transitionContext transitionStartTime];
    v33 = (v27 - v32) / v31;
    if (v33 <= 1.0)
    {
      v30 = v33;
    }

    v58 = 0;
    v57 = 0;
    [_prepareSKRenderer settingsForTransition:-[SCNRendererTransitionContext transition](self->_transitionContext atTime:"transition") renderIncomingToTexture:&v58 + 1 renderOutgoingToTexture:&v58 renderIncomingToScreen:&v57 + 1 renderOutgoingToScreen:{&v57, v30}];
    v34 = *self->_anon_58;
    v35 = HIDWORD(*self->_anon_58);
    if (v58 == 1)
    {
      v36 = [(SCNRendererTransitionContext *)self->_transitionContext prepareRendererAtIndex:0 withScene:[(SCNRendererTransitionContext *)self->_transitionContext outgoingScene] renderSize:[(SCNRendererTransitionContext *)self->_transitionContext outgoingPointOfView] pointOfView:self parentRenderer:v34, v35];
      [(SCNRenderer *)self _viewport];
      [v36 set_viewport:?];
      if (!v25 || ([objc_msgSend(v36 "scene")] & 1) == 0)
      {
        [v36 renderAtTime:v27];
      }
    }

    else
    {
      v36 = 0;
    }

    if (HIBYTE(v58) == 1)
    {
      if (v58)
      {
        v37 = v36;
      }

      else
      {
        v37 = 0;
      }

      v36 = [(SCNRendererTransitionContext *)self->_transitionContext prepareRendererAtIndex:1 withScene:self->_scene renderSize:self->_pointOfView pointOfView:self parentRenderer:v34, v35];
      [(SCNRenderer *)self _viewport];
      [v36 set_viewport:?];
      if (!v25 || ([objc_msgSend(v36 "scene")] & 1) == 0)
      {
        [v36 renderAtTime:v27];
      }
    }

    else
    {
      v37 = 0;
    }

    if (HIBYTE(v57) == 1)
    {
      [(SCNRenderer *)self _drawScene:Scene];
    }

    if (v57 == 1)
    {
      [-[SCNRendererTransitionContext prepareRendererAtIndex:withScene:renderSize:pointOfView:parentRenderer:](self->_transitionContext prepareRendererAtIndex:0 withScene:-[SCNRendererTransitionContext outgoingScene](self->_transitionContext renderSize:"outgoingScene") pointOfView:-[SCNRendererTransitionContext outgoingPointOfView](self->_transitionContext parentRenderer:{"outgoingPointOfView"), self, v34, v35), "_drawAtTime:", v27}];
    }

    if (self->_renderingAPI)
    {
      transition = [(SCNRendererTransitionContext *)self->_transitionContext transition];
      textureID = [v36 textureID];
      textureID2 = [v37 textureID];
      *&v41 = v30;
      [_prepareSKRenderer renderTransition:transition withInputTexture:textureID outputTexture:textureID2 inputTextureSize:v34 outputTextureSize:v35 time:{v34, v35, v41}];
    }

    else
    {
      mTLTexture = [v36 MTLTexture];
      mTLTexture2 = [v37 MTLTexture];
      renderContext = self->_renderContext;
      v45 = HIBYTE(v57) | v57;
      RenderGraph = C3DEngineContextGetRenderGraph(self->_engineContext);
      C3DRenderGraphSpriteKitTransitionBegin(RenderGraph, ((v45 & 1) == 0));
      transition2 = [(SCNRendererTransitionContext *)self->_transitionContext transition];
      currentRenderCommandEncoder = [(SCNMTLRenderContext *)renderContext currentRenderCommandEncoder];
      currentRenderPassDescriptor = [(SCNMTLRenderContext *)renderContext currentRenderPassDescriptor];
      commandQueue = [(SCNMTLRenderContext *)renderContext commandQueue];
      v48 = v30;
      *&v52 = v48;
      [_prepareSKRenderer renderTransition:transition2 withInputTexture:mTLTexture outputTexture:mTLTexture2 time:currentRenderCommandEncoder encoder:currentRenderPassDescriptor pass:commandQueue commandQueue:v52];
      v53 = C3DEngineContextGetRenderGraph(self->_engineContext);
      C3DRenderGraphSpriteKitTransitionEnd(v53);
    }

    [(SCNRenderer *)self set_nextFrameTime:CACurrentMediaTime()];
    if (v30 == 1.0)
    {
      if ([(SKTransition *)[(SCNRendererTransitionContext *)self->_transitionContext transition] pausesIncomingScene])
      {
        [(SCNScene *)self->_scene setPaused:0];
      }

      v54 = self->_transitionContext;
      completionHandler = v54->completionHandler;
      if (completionHandler)
      {
        completionHandler[2]();
        v54 = self->_transitionContext;
      }

      self->_transitionContext = 0;
    }
  }

  else
  {
    [(SCNRenderer *)self _drawScene:Scene];
  }

  if (!self->_pointOfView && Scene == [(SCNScene *)self->_scene sceneRef])
  {
    [(SCNRenderer *)self _updatePointOfView];
  }

  [(SCNRenderer *)self unlock];
}

- (void)_renderAtTime:(double)time
{
  [(SCNRenderer *)self _getFrameIndex];
  kdebug_trace();
  self->_forceSystemTime = time;
  [(SCNRenderer *)self _drawAtTime:time];
  self->_forceSystemTime = 0.0;

  kdebug_trace();
}

- (void)renderAtTime:(CFTimeInterval)time
{
  [(SCNRenderer *)self _beginFrame];
  [(SCNRenderer *)self _renderAtTime:time];
  if (self->_renderingAPI)
  {
    [(SCNRenderer *)self _resolveAndDiscardGL];
  }

  [(SCNRenderer *)self _endFrame];
}

- (void)renderWithViewport:(CGRect)viewport commandBuffer:(id)commandBuffer passDescriptor:(MTLRenderPassDescriptor *)renderPassDescriptor
{
  *(self + 121) &= ~0x40u;
  -[SCNRenderer _renderAtTime:viewport:encoder:passDescriptor:commandQueue:commandBuffer:](self, "_renderAtTime:viewport:encoder:passDescriptor:commandQueue:commandBuffer:", 0, renderPassDescriptor, [commandBuffer commandQueue], commandBuffer, 0.0, viewport.origin.x, viewport.origin.y, viewport.size.width, viewport.size.height);
  *(self + 121) |= 0x40u;
}

- (void)renderAtTime:(CFTimeInterval)time viewport:(CGRect)viewport commandBuffer:(id)commandBuffer passDescriptor:(MTLRenderPassDescriptor *)renderPassDescriptor
{
  height = viewport.size.height;
  width = viewport.size.width;
  y = viewport.origin.y;
  x = viewport.origin.x;
  commandQueue = [commandBuffer commandQueue];

  [(SCNRenderer *)self _renderAtTime:0 viewport:renderPassDescriptor encoder:commandQueue passDescriptor:commandBuffer commandQueue:time commandBuffer:x, y, width, height];
}

- (void)_renderAtTime:(double)time viewport:(CGRect)viewport encoder:(id)encoder passDescriptor:(id)descriptor commandQueue:(id)queue commandBuffer:(id)buffer
{
  y = viewport.origin.y;
  width = viewport.size.width;
  v43 = *&viewport.size.height;
  x = viewport.origin.x;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v16 = scn_default_log(isKindOfClass, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [(SCNRenderer *)v16 _renderAtTime:v17 viewport:v18 encoder:v19 passDescriptor:v20 commandQueue:v21 commandBuffer:v22, v23];
    }
  }

  colorAttachments = [objc_msgSend(objc_msgSend(objc_msgSend(descriptor colorAttachments];
  if (colorAttachments == 2)
  {
    v25 = 1;
  }

  else
  {
    v25 = 2 * (colorAttachments == 4);
  }

  [(SCNRenderer *)self set_antialiasingMode:v25];
  [(SCNMTLRenderContext *)self->_renderContext setClientRenderPassDescriptor:descriptor];
  v26 = [objc_msgSend(descriptor "depthAttachment")];
  if (encoder)
  {
    if (v26)
    {
      if ([(SCNMTLRenderContext *)self->_renderContext reverseZ])
      {
        v27 = [objc_msgSend(descriptor "depthAttachment")];
        if (v29 == 1.0 && (_renderAtTime_viewport_encoder_passDescriptor_commandQueue_commandBuffer__done & 1) == 0)
        {
          _renderAtTime_viewport_encoder_passDescriptor_commandQueue_commandBuffer__done = 1;
          v30 = scn_default_log(v27, v28);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [SCNRenderer _renderAtTime:viewport:encoder:passDescriptor:commandQueue:commandBuffer:];
          }
        }
      }
    }
  }

  [(SCNMTLRenderContext *)self->_renderContext setClientCommandQueue:queue];
  [(SCNMTLRenderContext *)self->_renderContext setClientRenderCommandEncoder:encoder];
  [(SCNMTLRenderContext *)self->_renderContext setClientCommandBuffer:buffer];
  v31.f64[0] = width;
  v32.f64[0] = x;
  v31.f64[1] = v44;
  *self->_anon_58 = vmovn_s64(vcvtq_u64_f64(vrndpq_f64(v31)));
  v32.f64[1] = y;
  self->__viewport = vcvt_hight_f32_f64(vcvt_f32_f64(v32), v31);
  [(SCNRenderer *)self adjustViewportForRendering:?];
  v48 = v33;
  colorAttachments2 = [objc_msgSend(objc_msgSend(descriptor colorAttachments];
  if (!colorAttachments2)
  {
    colorAttachments2 = [objc_msgSend(objc_msgSend(descriptor "colorAttachments")];
  }

  engineContext = self->_engineContext;
  if (descriptor)
  {
    width = [colorAttachments2 width];
    height = [colorAttachments2 height];
    *&v38 = width;
    *(&v38 + 1) = height;
    v39 = v38;
  }

  else
  {
    *&v39 = vextq_s8(v48, v48, 8uLL).u64[0];
  }

  v40 = C3DEngineContextSetDrawableSize(engineContext, v39);
  if (colorAttachments2)
  {
    [(SCNMTLRenderContext *)self->_renderContext beginFrame:colorAttachments2];
    [(SCNRenderer *)self _renderAtTime:time];
    [(SCNMTLRenderContext *)self->_renderContext endFrameWaitingUntilCompleted:0 status:0 error:?];
  }

  else
  {
    v42 = scn_default_log(v40, v41);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [SCNRenderer _renderAtTime:viewport:encoder:passDescriptor:commandQueue:commandBuffer:];
    }
  }
}

- (void)renderWithCommandBuffer:(id)buffer viewPoints:(id)points
{
  self->_viewpoints = points;
  self->_viewpointCoordinateSpace = 0;
  if (points)
  {
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    v6 = [points objectAtIndexedSubscript:0];
    if (v6)
    {
      objc_msgSend_viewport(v6);
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
      v7 = 0u;
    }

    -[SCNRenderer renderWithViewport:commandBuffer:passDescriptor:](self, "renderWithViewport:commandBuffer:passDescriptor:", buffer, [-[NSArray objectAtIndexedSubscript:](self->_viewpoints objectAtIndexedSubscript:{0, v7, v8, v9), "passDescriptor"}], 0.0, 0.0, 0.0, 0.0);
    self->_viewpoints = 0;
  }
}

- (void)renderWithCommandBuffer:(id)buffer viewpoints:(id)viewpoints coordinateSpace:(unint64_t)space
{
  self->_viewpoints = viewpoints;
  self->_viewpointCoordinateSpace = space;
  if (viewpoints)
  {
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    v7 = [viewpoints objectAtIndexedSubscript:0];
    if (v7)
    {
      objc_msgSend_viewport(v7);
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
      v8 = 0u;
    }

    -[SCNRenderer renderWithViewport:commandBuffer:passDescriptor:](self, "renderWithViewport:commandBuffer:passDescriptor:", buffer, [-[NSArray objectAtIndexedSubscript:](self->_viewpoints objectAtIndexedSubscript:{0, v8, v9, v10), "passDescriptor"}], 0.0, 0.0, 0.0, 0.0);
    self->_viewpoints = 0;
  }
}

- (void)renderAtTime:(double)time encoder:(id)encoder commandQueue:(id)queue passDescriptor:(id)descriptor viewPoints:(id)points
{
  self->_viewpoints = points;
  self->_viewpointCoordinateSpace = 0;
  if (points)
  {
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    v12 = [points objectAtIndexedSubscript:0];
    if (v12)
    {
      objc_msgSend_viewport(v12);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
      v13 = 0u;
    }

    [(SCNRenderer *)self _renderAtTime:encoder viewport:descriptor encoder:queue passDescriptor:0 commandQueue:time commandBuffer:0.0, 0.0, 0.0, 0.0, v13, v14, v15];
    self->_viewpoints = 0;
  }
}

- (void)renderAtTime:(double)time encoder:(id)encoder commandQueue:(id)queue passDescriptor:(id)descriptor viewPoints:(id)points coordinateSpace:(unint64_t)space
{
  self->_viewpoints = points;
  self->_viewpointCoordinateSpace = space;
  if (points)
  {
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    v13 = [points objectAtIndexedSubscript:0];
    if (v13)
    {
      objc_msgSend_viewport(v13);
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
    }

    [(SCNRenderer *)self _renderAtTime:encoder viewport:descriptor encoder:queue passDescriptor:0 commandQueue:time commandBuffer:0.0, 0.0, 0.0, 0.0, v14, v15, v16];
    self->_viewpoints = 0;
  }
}

- (void)render
{
  v3 = CACurrentMediaTime();

  [(SCNRenderer *)self renderAtTime:v3];
}

- (void)_installGLContextAndSetViewport
{
  if (self->_renderingAPI)
  {
    [(SCNRenderer *)self _installContext];
    if (self->_glContext)
    {
      if (self->_renderingAPI)
      {
        currentContext = [MEMORY[0x277CD9388] currentContext];
        if (currentContext != self->_glContext)
        {
          v5 = scn_default_log(currentContext, v4);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
          {
            [(SCNRenderer *)v5 _deleteGLFramebuffer:v6];
          }
        }
      }

      glViewport(0, 0, *self->_anon_58, HIDWORD(*self->_anon_58));
    }
  }
}

- (CGImage)createSnapshot:(double)snapshot error:(id *)error
{
  [(SCNRenderer *)self _beginFrame];
  [(SCNRenderer *)self _installGLContextAndSetViewport];
  [(SCNRenderer *)self _renderAtTime:snapshot];
  if (self->_renderingAPI)
  {
    [(SCNRenderer *)self _resolveAndDiscardGL];
    [(SCNRenderer *)self _endFrame];
    RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext, v7);
    if (RendererContextGL)
    {
      v10 = RendererContextGL;
      v11 = *self->_anon_58;
      v12 = v11;
      v13 = HIDWORD(v11);
      v14 = malloc_type_malloc((4 * HIDWORD(v11) * v11), 0x100004077774924uLL);
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v16 = CGBitmapContextCreate(v14, v12, v13, 8uLL, (4 * v12), DeviceRGB, 0x4001u);
      CGColorSpaceRelease(DeviceRGB);
      if (self->_renderingAPI)
      {
        currentContext = [MEMORY[0x277CD9388] currentContext];
        if (currentContext != self->_glContext)
        {
          v19 = scn_default_log(currentContext, v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            [(SCNRenderer *)v19 _deleteGLFramebuffer:v20];
          }
        }
      }

      C3DRendererContextBindFramebuffer(v10, self->_framebufferInfo.frameBuffer);
      glReadPixels(0, 0, v12, v13, 0x1908u, 0x1401u, v14);
      C3DRendererContextUnbindFramebuffer(v10, v27);
      Image = CGBitmapContextCreateImage(v16);
      CGContextRelease(v16);
      free(v14);
      v29 = CGBitmapContextCreate(0, v12, v13, 8uLL, (4 * v12), DeviceRGB, 0x4001u);
      CGContextScaleCTM(v29, 1.0, -1.0);
      CGContextTranslateCTM(v29, 0.0, -v13);
      v38.size.width = v12;
      v38.size.height = v13;
      v38.origin.x = 0.0;
      v38.origin.y = 0.0;
      CGContextDrawImage(v29, v38, Image);
      CGImageRelease(Image);
      v30 = CGBitmapContextCreateImage(v29);
      CGContextRelease(v29);
    }

    else
    {
      v33 = scn_default_log(0, v9);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21BEF7000, v33, OS_LOG_TYPE_DEFAULT, "Warning: createSnapshot: no GL context", buf, 2u);
      }

      return 0;
    }
  }

  else
  {
    v36 = 0;
    *buf = 0;
    v31 = [(SCNMTLRenderContext *)self->_renderContext endFrameWaitingUntilCompleted:&v36 status:buf error:?];
    if (v36 == 4)
    {
      return C3DCreateImageWithTexture([(SCNRenderer *)self MTLTexture]);
    }

    else
    {
      v34 = scn_default_log(v31, v32);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [SCNRenderer createSnapshot:buf error:v34];
      }

      v30 = 0;
      if (error)
      {
        *error = *buf;
      }
    }
  }

  return v30;
}

- (id)snapshotAtTime:(double)time
{
  v3 = [(SCNRenderer *)self createSnapshot:0 error:time];
  v4 = [MEMORY[0x277D755B8] imageWithCGImage:v3];
  CGImageRelease(v3);
  return v4;
}

- (CGImage)_createBackgroundColorImageWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = size.width;
  v7 = size.height;
  v8 = 4 * (size.width & 0x3FFFFFFF);
  v9 = malloc_type_malloc(v8 * size.height, 0x100004077774924uLL);
  v11 = C3DColorSpaceSRGB(v9, v10);
  v12 = CGBitmapContextCreate(v9, v6, v7, 8uLL, v8, v11, 0x4001u);
  CGContextSetFillColorWithColor(v12, [-[SCNRenderer backgroundColor](self "backgroundColor")]);
  v15.size.width = width;
  v15.size.height = height;
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  CGContextFillRect(v12, v15);
  Image = CGBitmapContextCreateImage(v12);
  CGContextRelease(v12);
  free(v9);
  return Image;
}

- (UIImage)snapshotAtTime:(CFTimeInterval)time withSize:(CGSize)size antialiasingMode:(SCNAntialiasingMode)antialiasingMode
{
  height = size.height;
  width = size.width;
  height = [(SCNRenderer *)self _createSnapshotAtTime:antialiasingMode withSize:0 antialiasingMode:time error:?];
  if (!height)
  {
    height = [(SCNRenderer *)self _createBackgroundColorImageWithSize:width, height];
  }

  v9 = [MEMORY[0x277D755B8] imageWithCGImage:height];
  CGImageRelease(height);
  return v9;
}

- (id)snapshotAtTime:(double)time withSize:(CGSize)size antialiasingMode:(unint64_t)mode error:(id *)error
{
  result = [(SCNRenderer *)self _createSnapshotAtTime:mode withSize:error antialiasingMode:time error:size.width, size.height];
  if (result)
  {
    v7 = result;
    v8 = [MEMORY[0x277D755B8] imageWithCGImage:result];
    CGImageRelease(v7);
    return v8;
  }

  return result;
}

- (CGImage)_createSnapshotAtTime:(double)time withSize:(CGSize)size antialiasingMode:(unint64_t)mode error:(id *)error
{
  height = size.height;
  v17 = vrndx_f32(vcvt_f32_f64(size));
  v11 = vcvtq_f64_f32(v17);
  if ((*(self + 121) & 4) == 0)
  {
    v16 = v11;
    [(SCNRenderer *)self _setBackingSize:COERCE_DOUBLE(vmovn_s64(vcvtq_u64_f64(vrndpq_f64(v11))))];
    v11 = v16;
  }

  v12 = [(SCNRenderer *)self snapshotRendererWithSize:*&v11];
  [v12 set_computedLightingEnvironmentMapsPath:{-[SCNRenderer _computedLightingEnvironmentMapsPath](self, "_computedLightingEnvironmentMapsPath")}];
  [v12 set_antialiasingMode:mode];
  LODWORD(v13) = v17.i32[1];
  [v12 set_viewport:{0.0, 0.0, *&v17, v13}];
  if (self->_renderingAPI)
  {
    [(SCNRenderer *)self lock];
  }

  v14 = [v12 createSnapshot:error error:time];
  if (self->_renderingAPI)
  {
    [(SCNRenderer *)self unlock];
  }

  if (!self->_pointOfView)
  {
    -[SCNRenderer setPointOfView:](self, "setPointOfView:", [v12 pointOfView]);
    self->_pointOfViewWasSet = 0;
  }

  if ((*(self + 121) & 4) != 0)
  {

    self->_snapshotRenderer = 0;
  }

  return v14;
}

- (id)snapshotRendererWithSize:(CGSize)size
{
  snapshotRenderer = self->_snapshotRenderer;
  if (snapshotRenderer)
  {
    height = size.height;
    [(SCNRenderer *)snapshotRenderer _setBackingSize:COERCE_DOUBLE(vmovn_s64(vcvtq_u64_f64(vrndpq_f64(size))))];
  }

  else
  {
    sizeCopy = size;
    v16 = *&size.height;
    renderingAPI = self->_renderingAPI;
    v7 = objc_opt_class();
    if (renderingAPI)
    {
      v8 = [v7 rendererWithContext:-[SCNRenderer context](self options:{"context"), 0}];
    }

    else
    {
      v8 = [v7 rendererWithDevice:-[SCNRenderer device](self options:{"device"), 0}];
    }

    v9 = v8;
    self->_snapshotRenderer = v9;
    [(SCNRenderer *)v9 _setupOffscreenRendererWithSize:sizeCopy.width, *&v16];
  }

  [(SCNRenderer *)self lock:sizeCopy];
  +[SCNTransaction begin];
  [SCNTransaction setDisableActions:1];
  [SCNTransaction setImmediateMode:1];
  [(SCNScene *)[(SCNRenderer *)self scene] lock];
  [(SCNRenderer *)self _contentsScaleFactor];
  *&v10 = v10;
  self->_snapshotRenderer->_contentScaleFactor = *&v10;
  [(SCNRenderer *)self->_snapshotRenderer setScene:[(SCNRenderer *)self scene]];
  [(SCNRenderer *)self->_snapshotRenderer setOverlaySKScene:[(SCNRenderer *)self overlaySKScene]];
  [(SCNRenderer *)self->_snapshotRenderer setJitteringEnabled:[(SCNRenderer *)self isJitteringEnabled]];
  [(SCNRenderer *)self->_snapshotRenderer setJitteringEnabled:[(SCNRenderer *)self isJitteringEnabled]];
  [(SCNRenderer *)self->_snapshotRenderer setVertexAmplificationEnabled:[(SCNRenderer *)self vertexAmplificationEnabled]];
  [(SCNRenderer *)self->_snapshotRenderer setPointOfView:[(SCNRenderer *)self pointOfView]];
  [(SCNRenderer *)self->_snapshotRenderer setAutoenablesDefaultLighting:[(SCNRenderer *)self autoenablesDefaultLighting]];
  [(SCNRenderer *)self->_snapshotRenderer setAutoAdjustCamera:[(SCNRenderer *)self autoAdjustCamera]];
  [(SCNRenderer *)self->_snapshotRenderer setLoops:[(SCNRenderer *)self loops]];
  [(SCNRenderer *)self->_snapshotRenderer setPlaying:[(SCNRenderer *)self isPlaying]];
  [(SCNRenderer *)self sceneTime];
  [(SCNRenderer *)self->_snapshotRenderer setSceneTime:?];
  [(SCNRenderer *)self->_snapshotRenderer setDelegate:[(SCNRenderer *)self delegate]];
  [(SCNRenderer *)self->_snapshotRenderer set_wantsSceneRendererDelegationMessages:[(SCNRenderer *)self _wantsSceneRendererDelegationMessages]];
  [(SCNRenderer *)self->_snapshotRenderer setBackgroundColor:[(SCNRenderer *)self backgroundColor]];
  [(SCNRenderer *)self->_snapshotRenderer setTechnique:[(SCNRenderer *)self technique]];
  [(SCNRenderer *)self->_snapshotRenderer setDebugOptions:[(SCNRenderer *)self debugOptions]];
  [(SCNRenderer *)self _superSamplingFactor];
  [(SCNRenderer *)self->_snapshotRenderer set_superSamplingFactor:?];
  objc_msgSend__screenTransform(self);
  v11 = self->_snapshotRenderer;
  v17[0] = v17[4];
  v17[1] = v17[5];
  v17[2] = v17[6];
  v17[3] = v17[7];
  [(SCNRenderer *)v11 set_screenTransform:v17];
  [(SCNRenderer *)self->_snapshotRenderer set_collectCompilationErrors:[(SCNRenderer *)self _collectCompilationErrors]];
  [(SCNRenderer *)self->_snapshotRenderer set_resourceManagerMonitor:[(SCNRenderer *)self _resourceManagerMonitor]];
  [(SCNRenderer *)self->_snapshotRenderer set_commandBufferStatusMonitor:[(SCNRenderer *)self _commandBufferStatusMonitor]];
  [(SCNRenderer *)self->_snapshotRenderer __setTransitionContext:self->_transitionContext];
  C3DEngineContextSetClearsOnDraw([(SCNRenderer *)self->_snapshotRenderer _engineContext], 1);
  _engineContext = [(SCNRenderer *)self->_snapshotRenderer _engineContext];
  InterfaceOrientation = C3DEngineContextGetInterfaceOrientation(self->_engineContext);
  C3DEngineContextSetInterfaceOrientation(_engineContext, InterfaceOrientation);
  [(SCNScene *)[(SCNRenderer *)self scene] unlock];
  +[SCNTransaction commit];
  [(SCNRenderer *)self unlock];
  return self->_snapshotRenderer;
}

- (void)_updateProbes:(id)probes withProgress:(id)progress
{
  [progress becomeCurrentWithPendingUnitCount:1];
  [(SCNRenderer *)self updateProbes:probes atTime:CACurrentMediaTime()];

  [progress resignCurrent];
}

- (void)updateProbes:(NSArray *)lightProbes atTime:(CFTimeInterval)time
{
  v127 = *MEMORY[0x277D85DE8];
  if (![(SCNRenderer *)self scene])
  {
    v8 = scn_default_log(0, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(SCNRenderer *)v8 updateProbes:v9 atTime:v10, v11, v12, v13, v14, v15];
    }
  }

  device = [(SCNRenderer *)self device];
  commandQueue = [(SCNRenderer *)self commandQueue];
  v17 = [MEMORY[0x277CD7058] textureCubeDescriptorWithPixelFormat:115 size:1024 mipmapped:0];
  [v17 setResourceOptions:32];
  [v17 setUsage:5];
  v102 = [(MTLDevice *)device newTextureWithDescriptor:v17];
  v103 = [SCNRenderer rendererWithDevice:device options:0];
  [(SCNRenderer *)v103 setScene:[(SCNRenderer *)self scene]];
  v20 = [-[SCNRenderer backgroundColor](self "backgroundColor")];
  v19 = *(&v20 + 1);
  v18 = *&v20;
  v22 = v21;
  v24 = v23;
  sceneRef = [(SCNScene *)[(SCNRenderer *)self scene] sceneRef];
  BackgroundEffectSlot = C3DSceneGetBackgroundEffectSlot(sceneRef, 0);
  if (BackgroundEffectSlot)
  {
    ColorIfApplicable = C3DEffectSlotGetColorIfApplicable(BackgroundEffectSlot, v26);
    if (ColorIfApplicable)
    {
      v18 = *ColorIfApplicable;
      v19 = ColorIfApplicable[1];
      v22 = ColorIfApplicable[2];
      v24 = ColorIfApplicable[3];
    }
  }

  obj = [(SCNNode *)[(SCNScene *)[(SCNRenderer *)self scene] rootNode] childNodesPassingTest:&__block_literal_global_671];
  if ([MEMORY[0x277CCAC48] currentProgress])
  {
    v28 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:{-[NSArray count](lightProbes, "count")}];
  }

  else
  {
    v28 = 0;
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v29 = [(NSArray *)lightProbes countByEnumeratingWithState:&v113 objects:v126 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v114;
    v32 = v18;
    v33 = v19;
    v34 = v22;
    v35 = v24;
    v86 = *(MEMORY[0x277D860B8] + 16);
    v87 = *MEMORY[0x277D860B8];
    v83 = vnegq_f32(*MEMORY[0x277D860B8]);
    v84 = *(MEMORY[0x277D860B8] + 48);
    v85 = *(MEMORY[0x277D860B8] + 32);
    v81 = vnegq_f32(v86);
    v82 = vnegq_f32(v85);
    selfCopy = self;
    v80 = lightProbes;
    v88 = *v114;
    v89 = v28;
    do
    {
      v36 = 0;
      v91 = v30;
      do
      {
        if (*v114 != v31)
        {
          objc_enumerationMutation(lightProbes);
        }

        v37 = *(*(&v113 + 1) + 8 * v36);
        light = [v37 light];
        if (light && (v40 = [objc_msgSend(v37 "light")], light = SCNLightTypeToC3DLightType(v40, v41), light == 4))
        {
          v42 = [objc_msgSend(v37 "light")];
          if (v42 < 2)
          {
            v46 = v42;
            if ([v28 isCancelled])
            {
              goto LABEL_44;
            }

            v94 = v36;
            commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
            [v28 becomeCurrentWithPendingUnitCount:1];
            renderPassDescriptor = [MEMORY[0x277CD6F50] renderPassDescriptor];
            [objc_msgSend(objc_msgSend(renderPassDescriptor "colorAttachments")];
            [objc_msgSend(objc_msgSend(renderPassDescriptor "colorAttachments")];
            v48 = v37;
            v49 = +[SCNNode node];
            [(SCNNode *)v49 setCamera:+[SCNCamera camera]];
            [(SCNCamera *)[(SCNNode *)v49 camera] setFieldOfView:90.0];
            [objc_msgSend(v48 "light")];
            [(SCNCamera *)[(SCNNode *)v49 camera] setZNear:v50];
            [objc_msgSend(v48 "light")];
            [(SCNCamera *)[(SCNNode *)v49 camera] setZFar:v51];
            [(SCNNode *)v49 setLight:+[SCNLight light]];
            [(SCNLight *)[(SCNNode *)v49 light] setType:@"probe"];
            [(SCNRenderer *)v103 setPointOfView:v49];
            [v48 simdWorldTransform];
            v99 = v53;
            v100 = v52;
            v97 = v55;
            v98 = v54;
            isHidden = [v48 isHidden];
            v96 = v48;
            [v48 setHidden:1];
            v125[0] = v85;
            v125[1] = v86;
            v125[2] = v83;
            v125[3] = v84;
            v125[4] = v82;
            v125[5] = v86;
            v125[6] = v87;
            v125[7] = v84;
            v125[8] = v87;
            v125[9] = v85;
            v125[10] = v81;
            v125[11] = v84;
            v125[12] = v87;
            v125[13] = v82;
            v125[14] = v86;
            v125[15] = v84;
            v125[16] = v87;
            v125[17] = v86;
            v125[18] = v85;
            v125[19] = v84;
            v125[20] = v83;
            v125[21] = v86;
            v125[22] = v82;
            v125[23] = v84;
            WantsSSR = C3DSceneGetWantsSSR(sceneRef, v56);
            C3DSceneSetWantsSSR(sceneRef, 0);
            for (i = 0; i != 6; ++i)
            {
              v59 = [v102 newTextureViewWithPixelFormat:objc_msgSend(v102 textureType:"pixelFormat") levels:2 slices:0, objc_msgSend(v102, "mipmapLevelCount"), i, 1];
              [objc_msgSend(objc_msgSend(renderPassDescriptor "colorAttachments")];
              v60 = 0;
              v61 = &v125[4 * i];
              v62 = v61[1];
              v63 = v61[2];
              v64 = v61[3];
              v117[0] = *v61;
              v117[1] = v62;
              v117[2] = v63;
              v117[3] = v64;
              v118 = 0u;
              v119 = 0u;
              v120 = 0u;
              v121 = 0u;
              do
              {
                *(&v118 + v60 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v100, COERCE_FLOAT(v117[v60])), v99, *&v117[v60], 1), v98, v117[v60], 2), v97, v117[v60], 3);
                ++v60;
              }

              while (v60 != 4);
              [(SCNNode *)v49 setSimdTransform:*&v118, *&v119, *&v120, *&v121];
              +[SCNTransaction flush];
              -[SCNRenderer renderAtTime:viewport:commandBuffer:passDescriptor:](v103, "renderAtTime:viewport:commandBuffer:passDescriptor:", 0, renderPassDescriptor, time, 0.0, 0.0, [v59 width], objc_msgSend(v59, "height"));
            }

            [v96 setHidden:isHidden];
            C3DSceneSetWantsSSR(sceneRef, WantsSSR);
            resourceManager = [(SCNMTLRenderContext *)[(SCNRenderer *)v103 _renderContextMetal] resourceManager];
            if (v46)
            {
              v66 = [resourceManager newRadianceTextureForEnvironmentTexture:v102 engineContext:selfCopy->_engineContext cpuAccessible:1 commandBuffer:commandBuffer];
              [commandBuffer commit];
              [commandBuffer waitUntilCompleted];
              [objc_msgSend(objc_msgSend(v96 "light")];

              v31 = v88;
              v28 = v89;
              v30 = v91;
              v36 = v94;
            }

            else
            {
              v67 = [resourceManager sphericalHarmonicsForEnvironmentTexture:v102 order:3 commandBuffer:commandBuffer];
              [commandBuffer commit];
              [commandBuffer waitUntilCompleted];
              nodeRef = [v96 nodeRef];
              v69 = [objc_msgSend(v96 "light")];
              v101 = v67;
              contents = [v67 contents];
              v105 = 0u;
              v106 = 0u;
              v107 = 0u;
              v108 = 0u;
              v71 = [(NSArray *)obj countByEnumeratingWithState:&v105 objects:v124 count:16];
              if (v71)
              {
                v72 = v71;
                v73 = *v106;
                do
                {
                  for (j = 0; j != v72; ++j)
                  {
                    if (*v106 != v73)
                    {
                      objc_enumerationMutation(obj);
                    }

                    C3DLightAddLightSHContribution(v69, nodeRef, [objc_msgSend(*(*(&v105 + 1) + 8 * j) "light")], objc_msgSend(*(*(&v105 + 1) + 8 * j), "nodeRef"), 3u, contents);
                  }

                  v72 = [(NSArray *)obj countByEnumeratingWithState:&v105 objects:v124 count:16];
                }

                while (v72);
              }

              v75 = [v101 length];
              v28 = v89;
              v30 = v91;
              v36 = v94;
              if (v75 != 108)
              {
                v77 = scn_default_log(v75, v76);
                if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
                {
                  [(SCNRenderer *)buf updateProbes:v77 atTime:?];
                }
              }

              [objc_msgSend(v96 "light")];
              lightProbes = v80;
              v31 = v88;
            }

            [v28 resignCurrent];
          }

          else
          {
            v44 = scn_default_log(v42, v43);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              [SCNRenderer updateProbes:v110 atTime:?];
            }
          }
        }

        else
        {
          v45 = scn_default_log(light, v39);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            [SCNRenderer updateProbes:v112 atTime:?];
          }
        }

        ++v36;
      }

      while (v36 != v30);
      v78 = [(NSArray *)lightProbes countByEnumeratingWithState:&v113 objects:v126 count:16];
      v30 = v78;
    }

    while (v78);
  }

LABEL_44:
}

uint64_t __35__SCNRenderer_updateProbes_atTime___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 light];
  if (result)
  {
    v4 = [a2 nodeRef];
    if (C3DNodeIsHiddenOrIsHiddenByAncestor(v4, v5))
    {
      return 0;
    }

    else
    {
      result = [objc_msgSend(a2 "light")];
      if (result)
      {
        if (objc_msgSend_isEqualToString_([objc_msgSend(a2 "light")]) & 1) != 0 || (objc_msgSend_isEqualToString_(objc_msgSend(objc_msgSend(a2, "light"), "type")))
        {
          return 1;
        }

        else
        {
          v6 = [objc_msgSend(a2 "light")];

          return objc_msgSend_isEqualToString_(v6);
        }
      }
    }
  }

  return result;
}

- (void)_jitterAtStep:(unint64_t)step updateMainFramebuffer:(BOOL)framebuffer redisplay:(BOOL)redisplay jitterer:(id)jitterer
{
  renderingAPI = [(SCNRenderer *)self renderingAPI];
  renderingQueue = self->__renderingQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__SCNRenderer__jitterAtStep_updateMainFramebuffer_redisplay_jitterer___block_invoke;
  v13[3] = &unk_2782FF258;
  v13[4] = self;
  v13[5] = jitterer;
  v13[6] = step;
  framebufferCopy = framebuffer;
  v15 = renderingAPI != 0;
  redisplayCopy = redisplay;
  dispatch_sync(renderingQueue, v13);
}

void *__70__SCNRenderer__jitterAtStep_updateMainFramebuffer_redisplay_jitterer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _engineContext];
  result = [*(a1 + 40) isAborting];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) _installContext];
    if (result)
    {
      [*(a1 + 32) lock];
      +[SCNTransaction lock];
      C3DEngineContextSetJitteringEnabled(v2, 1);
      C3DEngineContextSetJitteringStep(v2, *(a1 + 48));
      C3DEngineContextSetUpdateMainFramebuffer(v2, *(a1 + 56));
      v4 = objc_alloc_init(MEMORY[0x277CCA8B0]);
      if (*(a1 + 57) == 1)
      {
        glPushGroupMarkerEXT(0, "SceneKit - Jitter");
      }

      [*(a1 + 32) _beginFrame];
      [*(a1 + 32) _drawAtTime:CACurrentMediaTime()];
      C3DEngineContextSetUpdateMainFramebuffer(v2, 1);
      C3DEngineContextSetJitteringEnabled(v2, 0);
      [*(a1 + 32) _endFrame];
      if (*(a1 + 58) == 1)
      {
        [*(*(a1 + 32) + 344) _jitterRedisplay];
      }

      if (*(a1 + 57) == 1)
      {
        glPopGroupMarkerEXT();
      }

      [v4 drain];
      +[SCNTransaction unlock];
      v5 = *(a1 + 32);

      return [v5 unlock];
    }
  }

  return result;
}

- (void)_addGPUFrameScheduledHandler:(id)handler
{
  if (self->_renderingAPI)
  {
    v4 = scn_default_log(self, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SCNRenderer _addGPUFrameScheduledHandler:];
    }

    (*(handler + 2))(handler);
  }

  else
  {
    [SCNTransaction postCommandWithContext:0 object:MEMORY[0x277D85DD0] applyBlock:3221225472, __44__SCNRenderer__addGPUFrameScheduledHandler___block_invoke, &unk_2782FF280, self, handler];
  }
}

- (void)_addGPUFrameCompletedHandler:(id)handler
{
  if (self->_renderingAPI)
  {
    v4 = scn_default_log(self, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SCNRenderer _addGPUFrameCompletedHandler:];
    }

    (*(handler + 2))(handler);
  }

  else
  {
    [SCNTransaction postCommandWithContext:0 object:MEMORY[0x277D85DD0] applyBlock:3221225472, __44__SCNRenderer__addGPUFrameCompletedHandler___block_invoke, &unk_2782FF280, self, handler];
  }
}

- (void)_addGPUFramePresentedHandler:(id)handler
{
  if (self->_renderingAPI)
  {
    v4 = scn_default_log(self, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SCNRenderer _addGPUFramePresentedHandler:];
    }

    (*(handler + 2))(handler);
  }

  else if ((*(self + 121) & 4) != 0)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__SCNRenderer__addGPUFramePresentedHandler___block_invoke;
    v7[3] = &unk_2782FF280;
    v7[4] = self;
    v7[5] = handler;
    [SCNTransaction postCommandWithContext:0 object:self applyBlock:v7];
  }

  else
  {
    v6 = scn_default_log(self, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNRenderer _addGPUFramePresentedHandler:];
    }

    [(SCNRenderer *)self _addGPUFrameCompletedHandler:handler];
  }
}

- (void)_discardPendingGPUFrameScheduledHandlers
{
  if (self->_renderingAPI)
  {
    v2 = scn_default_log(self, a2);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [SCNRenderer _discardPendingGPUFrameScheduledHandlers];
    }
  }

  else
  {
    [SCNTransaction postCommandWithContext:"postCommandWithContext:object:applyBlock:" object:0 applyBlock:?];
  }
}

- (void)_discardPendingGPUFrameCompletedHandlers
{
  if (self->_renderingAPI)
  {
    v2 = scn_default_log(self, a2);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [SCNRenderer _discardPendingGPUFrameCompletedHandlers];
    }
  }

  else
  {
    [SCNTransaction postCommandWithContext:"postCommandWithContext:object:applyBlock:" object:0 applyBlock:?];
  }
}

- (void)_discardPendingGPUFramePresentedHandlers
{
  if (self->_renderingAPI)
  {
    v2 = scn_default_log(self, a2);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [SCNRenderer _discardPendingGPUFramePresentedHandlers];
    }
  }

  else if ((*(self + 121) & 4) != 0)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __55__SCNRenderer__discardPendingGPUFramePresentedHandlers__block_invoke;
    v5[3] = &unk_2782FB820;
    v5[4] = self;
    [SCNTransaction postCommandWithContext:0 object:self applyBlock:v5];
  }

  else
  {
    v4 = scn_default_log(self, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SCNRenderer _discardPendingGPUFramePresentedHandlers];
    }

    [(SCNRenderer *)self _discardPendingGPUFrameCompletedHandlers];
  }
}

- (void)_allowGPUBackgroundExecution
{
  if (self->_renderingAPI)
  {
    v2 = scn_default_log(self, a2);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [SCNRenderer _allowGPUBackgroundExecution];
    }
  }

  else
  {
    [SCNTransaction postCommandWithContext:"postCommandWithContext:object:applyBlock:" object:0 applyBlock:?];
  }
}

- (void)_interfaceOrientationDidChange
{
  if ((*(self + 121) & 8) != 0)
  {
    v3 = [objc_msgSend(-[SCNSceneRenderer window](self->_privateRendererOwner "window")];
  }

  else
  {
    v3 = [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
  }

  [(SCNRenderer *)self _setInterfaceOrientation:v3];
}

- (void)_setInterfaceOrientation:(int64_t)orientation
{
  orientationCopy = orientation;
  [(SCNRenderer *)self lock];
  C3DEngineContextSetInterfaceOrientation(self->_engineContext, orientationCopy);

  [(SCNRenderer *)self unlock];
}

- (BOOL)renderMovieToURL:(id)l size:(CGSize)size antialiasingMode:(unint64_t)mode attributes:(id)attributes error:(id *)error
{
  v9 = [[SCNMovieExportOperation alloc] initWithRenderer:self size:attributes attributes:l outputURL:size.width, size.height];
  [(_SCNExportOperation *)v9 setAntialiasingMode:mode];
  [(SCNMovieExportOperation *)v9 main];
  error = [(_SCNExportOperation *)v9 error];
  v11 = error;
  if (error && error)
  {
    *error = [(_SCNExportOperation *)v9 error];
  }

  return v11 == 0;
}

- (void)_initWithOptions:isPrivateRenderer:privateRendererOwner:clearsOnDraw:context:renderingAPI:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_initWithOptions:(uint64_t)a3 isPrivateRenderer:(uint64_t)a4 privateRendererOwner:(uint64_t)a5 clearsOnDraw:(uint64_t)a6 context:(uint64_t)a7 renderingAPI:(uint64_t)a8 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[privateRendererOwner isKindOfClass:[SCNView class]]";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Private renderer only supports SCNView", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_initWithOptions:(uint64_t)a3 isPrivateRenderer:(uint64_t)a4 privateRendererOwner:(uint64_t)a5 clearsOnDraw:(uint64_t)a6 context:(uint64_t)a7 renderingAPI:(uint64_t)a8 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[(id)context conformsToProtocol:@protocol(MTLDevice)]";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. device context doesn't conform to MTLDevice protocol", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)autoenablesDefaultLighting
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setAutoenablesDefaultLighting:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setPointOfView:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[pov isPresentationInstance] == 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. can't set a presentation instance as a point of view", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __28__SCNRenderer_setTechnique___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_preparePreloadRenderer:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (uint64_t)programWithNode:(uint64_t)a1 withMaterial:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"SCNRenderer.m" lineNumber:3347 description:@"We should have an engine context at this stage"];
}

- (void)_renderAtTime:(uint64_t)a3 viewport:(uint64_t)a4 encoder:(uint64_t)a5 passDescriptor:(uint64_t)a6 commandQueue:(uint64_t)a7 commandBuffer:(uint64_t)a8 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[_renderContext isKindOfClass:[SCNMTLRenderContext class]]";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. can't call renderAtTime:withEncoder:pass:commandQueue: with a GL context", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_renderAtTime:viewport:encoder:passDescriptor:commandQueue:commandBuffer:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_renderAtTime:viewport:encoder:passDescriptor:commandQueue:commandBuffer:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createSnapshot:(id *)a1 error:(NSObject *)a2 .cold.2(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: Failed to create snapshot with error %@", &v4, 0xCu);
}

- (void)updateProbes:(uint64_t)a3 atTime:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "self.scene";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)updateProbes:(os_log_t)log atTime:.cold.2(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "shBuffer.length == ((shOrder * shOrder) * 3 * sizeof(float))";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. MTLBuffer containing the SH coefficients has not the expected size", buf, 0xCu);
}

- (void)updateProbes:(_BYTE *)a1 atTime:(_BYTE *)a2 .cold.3(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_4_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)updateProbes:(_BYTE *)a1 atTime:(_BYTE *)a2 .cold.4(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_4_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

@end