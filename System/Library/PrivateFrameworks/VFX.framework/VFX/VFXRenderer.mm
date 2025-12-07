@interface VFXRenderer
+ (VFXRenderer)rendererWithCommandQueue:(id)queue options:(id)options;
+ (VFXRenderer)rendererWithDevice:(id)device options:(id)options;
+ (id)remoteDecoder;
+ (id)remoteEncoder;
+ (void)logSharedResources;
- (BOOL)_enableARMode;
- (BOOL)_isNodeInsideFrustum:(id)frustum withPointOfView:(id)view viewport:;
- (BOOL)_legacyAdditiveWritesToAlpha;
- (BOOL)_needsRedrawAsap;
- (BOOL)_needsRepetitiveRedraw;
- (BOOL)_shouldDelegateARCompositing;
- (BOOL)_supportsDidPresentDelegate;
- (BOOL)additiveWritesToAlpha;
- (BOOL)autoAdjustCamera;
- (BOOL)autoenablesDefaultLighting;
- (BOOL)enableDeferredRendering;
- (BOOL)hasMissingParticlePipelineState;
- (BOOL)hasRenderableObjects;
- (BOOL)isNodeInsideFrustum:(id)frustum withPointOfView:(id)view;
- (BOOL)prepareObject:(id)object shouldAbortBlock:(id)block;
- (BOOL)renderMovieToURL:(id)l size:(CGSize)size antialiasingMode:(unint64_t)mode attributes:(id)attributes error:(id *)error;
- (BOOL)showsDebugUI;
- (CGImage)_createBackgroundColorImageWithSize:(CGSize)size;
- (CGImage)_createSnapshotWithSize:(CGSize)size error:(id *)error;
- (CGRect)currentViewport;
- (CGRect)viewport;
- (CGSize)_backingSize;
- (MTLTexture)depthTexture;
- (MTLTexture)texture;
- (NSArray)binaryArchives;
- (NSString)description;
- (UIColor)backgroundColor;
- (VFXNode)audioListener;
- (VFXRenderer)initWithCommandQueue:(id)queue;
- (_TtC3VFX8VFXScene)scene;
- (_TtC3VFX9VFXEffect)effect;
- (__n128)_currentProjectionMatrix;
- (__n128)_currentViewMatrix;
- (__n128)_projectPoint:(__n128)point viewport:(const char *)viewport;
- (double)_computeNextFrameTime;
- (double)_unprojectPoint:(double)point viewport:(const char *)viewport;
- (float32x2_t)_screenSize;
- (id)_copyPerformanceStatistics;
- (id)_defaultPOVForWorld:(id)world;
- (id)_hitTest:(CGPoint)test viewport:(CGSize)viewport options:(id)options;
- (id)_initWithDevice:(id)device commandQueue:(id)queue options:(id)options isPrivateRenderer:(BOOL)renderer privateRendererOwner:(id)owner clearsOnDraw:(BOOL)draw;
- (id)_newLayeredRenderTargetWithSize:(CGSize)size arrayLength:(unsigned int)length;
- (id)_newRenderTargetWithSize:(CGSize)size;
- (id)_nodesInsideFrustumWithPointOfView:(id)view viewport:;
- (id)_readSubdivCacheForHash:(id)hash;
- (id)encodeRemoteFrameWithBuffers:(id)buffers textures:(id)textures;
- (id)hitTest:(CGPoint)test options:(id)options;
- (id)hitTestWithSegmentFromPoint:(VFXRenderer *)self toPoint:(SEL)point options:(id)options;
- (id)legacyRenderer;
- (id)makeCompatibleRenderer;
- (id)metalLayer;
- (id)nodesInsideFrustumWithPointOfView:(id)view;
- (id)postRenderCallback;
- (id)resourceConsumer;
- (id)setupLegacyRendererWithCommandQueue:(id)queue;
- (id)snapshotImageWithSize:(CGSize)size deltaTime:(double)time;
- (id)snapshotWithSize:(CGSize)size;
- (id)snapshotWithSize:(CGSize)size deltaTime:(double)time;
- (id)statistics;
- (uint64_t)unprojectPoint:(uint64_t)point;
- (uint64_t)workingColorSpace;
- (unint64_t)antialiasingMode;
- (unint64_t)debugUIOptions;
- (void)_addGPUFrameCompletedHandler:(id)handler;
- (void)_addGPUFramePresentedHandler:(id)handler;
- (void)_addGPUFrameScheduledHandler:(id)handler;
- (void)_allowGPUBackgroundExecution;
- (void)_beginFrame;
- (void)_cfxBackgroundColorDidChange;
- (void)_clearBackBuffer;
- (void)_didPresentAtTime:(double)time;
- (void)_didRenderWorld:(id)world;
- (void)_discardPendingGPUFrameCompletedHandlers;
- (void)_discardPendingGPUFramePresentedHandlers;
- (void)_discardPendingGPUFrameScheduledHandlers;
- (void)_displayLinkStatsTack;
- (void)_displayLinkStatsTick;
- (void)_endFrame;
- (void)_endImGuiFrameAndRender;
- (void)_interfaceOrientationDidChange;
- (void)_jitterAtStep:(unint64_t)step updateMainFramebuffer:(BOOL)framebuffer redisplay:(BOOL)redisplay jitterer:(id)jitterer;
- (void)_projectPoints:(VFXRenderer *)self count:(SEL)count viewport:;
- (void)_render;
- (void)_renderWithViewport:(CGRect)viewport encoder:(id)encoder passDescriptor:(id)descriptor commandQueue:(id)queue commandBuffer:(id)buffer;
- (void)_renderWorldOrRemoteData;
- (void)_setBackingSize:(CGSize)size;
- (void)_setInterfaceOrientation:(int64_t)orientation;
- (void)_setLegacyAdditiveWritesToAlpha:(BOOL)alpha;
- (void)_startCaptureIfNeeded;
- (void)_stopCapture;
- (void)_unprojectPoints:(VFXRenderer *)self count:(SEL)count viewport:;
- (void)_updateEngineCallbacks;
- (void)_updateProbes:(id)probes progress:(id)progress completionHandler:(id)handler;
- (void)_willRenderWorld:(id)world;
- (void)_worldDidChange;
- (void)_writeSubdivCacheForHash:(id)hash dataProvider:(id)provider;
- (void)clearBackBufferWithUpdate:(id)update;
- (void)dealloc;
- (void)decodeAndEnumerateRemoteFrame:(id)frame usingBlock:(id)block;
- (void)decodeRemoteFrame:(id)frame skipDrawCalls:(BOOL)calls;
- (void)drawStatisticsIfNeeded;
- (void)encodeWithCommandBuffer:(id)buffer;
- (void)finalizeEncoding;
- (void)lock;
- (void)prepareObjects:(id)objects withCompletionHandler:(id)handler;
- (void)projectPoint:(const char *)x1_0;
- (void)render;
- (void)renderContext:(id)context commandBufferDidCompleteWithError:(id)error;
- (void)renderContext:(id)context didFallbackToDefaultTextureForSource:(id)source message:(id)message;
- (void)renderToTexture:(id)texture options:(id)options;
- (void)renderWithCommandBuffer:(id)buffer viewPoints:(id)points mode:(unint64_t)mode;
- (void)renderWithTextureAttachmentProvider:(id)provider options:(id)options;
- (void)renderWithViewport:(CGRect)viewport commandBuffer:(id)buffer passDescriptor:(id)descriptor;
- (void)resolvedBackgroundColorDidChange;
- (void)setAdditiveWritesToAlpha:(BOOL)alpha;
- (void)setAntialiasingMode:(unint64_t)mode;
- (void)setAudioListener:(id)listener;
- (void)setAutoAdjustCamera:(BOOL)camera;
- (void)setAutoenablesDefaultLighting:(BOOL)lighting;
- (void)setBackgroundColor:(id)color;
- (void)setBinaryArchives:(id)archives;
- (void)setDebugOptions:(unint64_t)options;
- (void)setDebugUIOptions:(unint64_t)options;
- (void)setDelegate:(id)delegate;
- (void)setDepthTexture:(id)texture;
- (void)setEffect:(id)effect;
- (void)setEmulateRRM:(BOOL)m;
- (void)setEmulateStereo:(BOOL)stereo;
- (void)setEnableDeferredRendering:(BOOL)rendering;
- (void)setFrozen:(BOOL)frozen;
- (void)setJitteringEnabled:(BOOL)enabled;
- (void)setPointOfCulling:(id)culling;
- (void)setPointOfView:(id)view;
- (void)setPostRenderCallback:(id)callback;
- (void)setRenderGraph:(id)graph;
- (void)setRenderMode:(unint64_t)mode;
- (void)setRendererKind:(unint64_t)kind;
- (void)setRendersContinuously:(BOOL)continuously;
- (void)setScene:(id)scene;
- (void)setShowsStatistics:(BOOL)statistics;
- (void)setSideBySideStereo:(BOOL)stereo;
- (void)setTemporalAntialiasingEnabled:(BOOL)enabled;
- (void)setTexture:(id)texture;
- (void)setWorld:(id)world;
- (void)setWorld:(id)world completionHandler:(id)handler;
- (void)set_commandBufferStatusMonitor:(id)monitor;
- (void)set_drawableSafeAreaInsets:(VFXRenderer *)self;
- (void)set_enableARMode:(BOOL)mode;
- (void)set_resourceManagerMonitor:(id)monitor;
- (void)set_shouldDelegateARCompositing:(BOOL)compositing;
- (void)set_shouldForwardWorldRendererDelegationMessagesToPrivateRendererOwner:(BOOL)owner;
- (void)set_triggersEnabled:(BOOL)enabled;
- (void)set_viewport:(VFXRenderer *)self;
- (void)set_wantsWorldRendererDelegationMessages:(BOOL)messages;
- (void)setupAuthoringEnvironment;
- (void)startManipulatingPointOfView;
- (void)stopManipulatingPointOfView;
- (void)transferRenderGraphResourcesFrom:(id)from;
- (void)updateAtTime:(double)time;
- (void)updateProbes:(id)probes atTime:(double)time completionHandler:(id)handler;
@end

@implementation VFXRenderer

- (UIColor)backgroundColor
{
  legacyRenderer = self->_legacyRenderer;
  if (legacyRenderer)
  {

    return objc_msgSend_backgroundColor(legacyRenderer, a2, v2);
  }

  else
  {
    v7 = self->_backgroundColor;

    return v7;
  }
}

- (uint64_t)workingColorSpace
{
  if (sub_1AF28A130(self, a2))
  {
    if (qword_1ED734740 != -1)
    {
      sub_1AFDD6FB4();
    }

    v2 = &qword_1ED734748;
  }

  else
  {
    if (qword_1ED73AD70 != -1)
    {
      sub_1AFDD6FA0();
    }

    v2 = &qword_1ED73AD78;
  }

  return *v2;
}

+ (id)remoteEncoder
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VFXRendererInitForRemoteEncoding";
  v8[0] = MEMORY[0x1E695E118];
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v8, &v7, 1);
  v4 = objc_msgSend_rendererWithDevice_options_(VFXRenderer, v3, 0, v2);
  objc_msgSend_setRendererKind_(v4, v5, 6);
  return v4;
}

+ (id)remoteDecoder
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VFXRendererInitForRemoteDecoding";
  v8[0] = MEMORY[0x1E695E118];
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v8, &v7, 1);
  v4 = objc_msgSend_rendererWithDevice_options_(VFXRenderer, v3, 0, v2);
  objc_msgSend_setRendererKind_(v4, v5, 6);
  return v4;
}

- (id)encodeRemoteFrameWithBuffers:(id)buffers textures:(id)textures
{
  v6 = objc_msgSend__engineContext(self, a2, buffers, textures);
  v7 = sub_1AF1310A0(v6);
  objc_msgSend_render(self, v8, v9);
  v10 = sub_1AF13099C(v6);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1AF31B044;
  v14[3] = &unk_1E7A7EE38;
  v14[4] = buffers;
  CFXGPUDeviceFetchAllNewlyCreatedBuffers(v10, v14);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1AF31B0FC;
  v13[3] = &unk_1E7A7EE60;
  v13[4] = buffers;
  CFXGPUDeviceFetchAllNewlyDestroyedBuffers(v10, v13);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1AF31B180;
  v12[3] = &unk_1E7A7EE60;
  v12[4] = buffers;
  CFXGPUDeviceFetchAllNewlyDestroyedTextures(v10, v12);
  return sub_1AF0FB884(v7);
}

- (void)decodeRemoteFrame:(id)frame skipDrawCalls:(BOOL)calls
{
  v5 = objc_msgSend__engineContext(self, a2, frame, calls);
  sub_1AF131114(v5, frame);
  v7 = sub_1AF12E2AC(v5, v6);
  v10 = objc_msgSend_resourceManager(v7, v8, v9);

  sub_1AF22E280(frame, v10);
}

- (void)decodeAndEnumerateRemoteFrame:(id)frame usingBlock:(id)block
{
  v7 = objc_opt_new();
  v10 = objc_msgSend__engineContext(self, v8, v9);
  v12 = sub_1AF12E2AC(v10, v11);
  v15 = objc_msgSend_resourceManager(v12, v13, v14);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1AF31B318;
  v16[3] = &unk_1E7A7EEB0;
  v16[4] = v7;
  v16[5] = frame;
  v16[6] = v12;
  v16[7] = v15;
  v16[8] = block;
  sub_1AF22E074(frame, 0, 0, v16);
}

- (id)resourceConsumer
{
  v3 = objc_msgSend__engineContext(self, a2, v2);
  v5 = sub_1AF12E2AC(v3, v4);

  return objc_msgSend_resourceManager(v5, v6, v7);
}

- (id)_initWithDevice:(id)device commandQueue:(id)queue options:(id)options isPrivateRenderer:(BOOL)renderer privateRendererOwner:(id)owner clearsOnDraw:(BOOL)draw
{
  drawCopy = draw;
  rendererCopy = renderer;
  v93.receiver = self;
  v93.super_class = VFXRenderer;
  v14 = [(VFXRenderer *)&v93 init];
  v16 = v14;
  if (v14)
  {
    v14->_world = 0;
    v14->_viewpoints = 0;
    v14->_contentScaleFactor = 1.0;
    v14->_isSetupForRE = 0;
    v17 = objc_msgSend_objectForKeyedSubscript_(options, v15, @"kVFXRendererInitOptionForRERendering");
    if (objc_msgSend_BOOLValue(v17, v18, v19))
    {
      v22 = objc_msgSend_mutableCopy(options, v20, v21);
      objc_msgSend_setObject_forKeyedSubscript_(v22, v23, MEMORY[0x1E695E118], @"VFXRenderingInRE");
      options = v22;
      v24 = 1;
      *(v16 + 389) = 1;
    }

    else
    {
      v24 = 0;
    }

    v25 = objc_msgSend_objectForKeyedSubscript_(options, v20, @"VFXRendererInitForRemoteEncoding");
    v28 = objc_msgSend_BOOLValue(v25, v26, v27);
    *(v16 + 144) = VFXCoreGetShaderCache(device, v29);
    if (v28)
    {
      v30 = sub_1AF20C004(VFXMTLResourceManager, device, 1);
    }

    else
    {
      v30 = sub_1AF20C050(VFXMTLResourceManager, device);
    }

    v31 = v30;
    v32 = sub_1AFDE323C(v30);
    v33 = sub_1AF12E500(v32, options);
    *(v16 + 136) = v33;
    if (sub_1AF130D5C(v33))
    {
      v34 = 32;
    }

    else
    {
      v34 = 0;
    }

    *(v16 + 224) = *(v16 + 224) & 0xDF | v34;
    *(v16 + 32) = objc_alloc_init(VFXRecursiveLock);
    objc_msgSend__updateEngineCallbacks(v16, v35, v36);
    sub_1AF12FD44(*(v16 + 136), @"frustumCulling", *MEMORY[0x1E695E4D0]);
    sub_1AF12FDD4(*(v16 + 136), drawCopy);
    v38 = *(v16 + 136);
    if (v38)
    {
      sub_1AF12F3E0(v38, v16);
      sub_1AF12F47C(*(v16 + 136), owner);
    }

    else
    {
      v39 = sub_1AF0D5194(0, v37);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF7D64();
      }
    }

    if (rendererCopy)
    {
      v40 = 4;
    }

    else
    {
      v40 = 0;
    }

    *(v16 + 81) = *(v16 + 81) & 0xFB | v40;
    *(v16 + 272) = owner;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v44 = 8;
    }

    else
    {
      v44 = 0;
    }

    *(v16 + 81) = *(v16 + 81) & 0xF7 | v44;
    if (isKindOfClass)
    {
      v45 = objc_msgSend_metalLayer(v16, v42, v43);
      v48 = objc_msgSend_pixelFormat(v45, v46, v47);
    }

    else
    {
      v48 = sub_1AF1F2C50(0);
    }

    *(v16 + 56) = v48;
    if ((*(v16 + 81) & 4) != 0)
    {
      v51 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v49, v50);
      objc_msgSend_addObserver_selector_name_object_(v51, v52, v16, sel__UIOrientationDidChangeNotification_, *MEMORY[0x1E69DDAC0], 0);
      if ((*(v16 + 81) & 8) != 0)
      {
        v59 = objc_msgSend_window(*(v16 + 272), v53, v54);
        v62 = objc_msgSend_windowScene(v59, v60, v61);
        v58 = objc_msgSend_interfaceOrientation(v62, v63, v64);
      }

      else
      {
        v55 = objc_msgSend_sharedApplication(MEMORY[0x1E69DC668], v53, v54);
        v58 = objc_msgSend_statusBarOrientation(v55, v56, v57);
      }

      sub_1AF1305E0(*(v16 + 136), v58);
    }

    *(v16 + 48) = 2;
    if (rendererCopy)
    {
      if ((byte_1ED73B338 & 1) == 0)
      {
        byte_1ED73B338 = 1;
        getpid();
        proc_disable_wakemon();
      }

      objc_opt_class();
      v65 = objc_opt_isKindOfClass();
      if ((v65 & 1) == 0)
      {
        v67 = sub_1AF0D5194(v65, v66);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDF7DA0(v67, v68, v69, v70, v71, v72, v73, v74);
        }
      }

      v75 = MEMORY[0x1E696AEC0];
      v76 = objc_opt_class();
      v77 = NSStringFromClass(v76);
      v79 = objc_msgSend_stringWithFormat_(v75, v78, @"com.apple.vfx.renderingQueue.%@%p", v77, *(v16 + 272));
      v81 = objc_msgSend_cStringUsingEncoding_(v79, v80, 1);
      v82 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
      *(v16 + 40) = dispatch_queue_create(v81, v82);
    }

    v83 = [VFXMTLRenderContext alloc];
    *(v16 + 216) = objc_msgSend_initWithEngineContext_resourceManager_commandQueue_(v83, v84, *(v16 + 136), v31, queue);
    v87 = objc_msgSend_antialiasingMode(v16, v85, v86);
    v89 = sub_1AF1F31D4(v87, v88);
    objc_msgSend_setSampleCount_(*(v16 + 216), v90, v89);
    sub_1AF12E8BC(*(v16 + 136), *(v16 + 216), v91);

    sub_1AF130CFC(*(v16 + 136), v24);
  }

  return v16;
}

+ (VFXRenderer)rendererWithDevice:(id)device options:(id)options
{
  deviceCopy = device;
  if (device || (result = objc_msgSend_deviceForOptions_(VFXView, a2, options), (deviceCopy = result) != 0))
  {
    v8 = [self alloc];
    isPrivateRenderer_privateRendererOwner_clearsOnDraw = objc_msgSend__initWithDevice_options_isPrivateRenderer_privateRendererOwner_clearsOnDraw_(v8, v9, deviceCopy, options, 0, 0, 0);

    return isPrivateRenderer_privateRendererOwner_clearsOnDraw;
  }

  return result;
}

+ (VFXRenderer)rendererWithCommandQueue:(id)queue options:(id)options
{
  v6 = [self alloc];
  v9 = objc_msgSend_device(queue, v7, v8);
  isPrivateRenderer_privateRendererOwner_clearsOnDraw = objc_msgSend__initWithDevice_commandQueue_options_isPrivateRenderer_privateRendererOwner_clearsOnDraw_(v6, v10, v9, queue, options, 0, 0, 0);

  return isPrivateRenderer_privateRendererOwner_clearsOnDraw;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_world(self, v6, v7);
  v11 = objc_msgSend_pointOfView(self, v9, v10);
  return objc_msgSend_stringWithFormat_(v3, v12, @"<%@ %p: world = %@, pointOfView = %@>", v5, self, v8, v11);
}

- (void)dealloc
{
  objc_msgSend_device(self, a2, v2);
  v6 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v4, v5);
  objc_msgSend_removeObserver_(v6, v7, self);
  objc_storeWeak(&self->_delegate, 0);

  engineContext = self->_engineContext;
  if (engineContext)
  {
    sub_1AF130254(engineContext, v8);
    CFRelease(self->_engineContext);
  }

  renderingQueue = self->__renderingQueue;
  if (renderingQueue)
  {
    dispatch_release(renderingQueue);
  }

  if (!self->_keepResourceManagerWhenDealloc)
  {
    sub_1AF20C174(VFXMTLResourceManager);
  }

  v11.receiver = self;
  v11.super_class = VFXRenderer;
  [(VFXRenderer *)&v11 dealloc];
}

- (void)lock
{
  prof_beginFlame("[VFXRenderer lock]", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 855);
  objc_msgSend_lock(self->_lock, v3, v4);

  prof_endFlame();
}

- (void)_clearBackBuffer
{
  objc_msgSend_lock(self, a2, v2);
  v4 = sub_1AF12E8A4(self->_engineContext);
  sub_1AF270E68(v4, v5);

  objc_msgSend_unlock(self, v6, v7);
}

- (void)clearBackBufferWithUpdate:(id)update
{
  objc_msgSend_lock(self, a2, update);
  objc_msgSend_setMetalDisplayLinkUpdate_(self, v5, update);
  objc_msgSend__beginFrame(self, v6, v7);
  objc_msgSend__clearBackBuffer(self, v8, v9);
  objc_msgSend__endFrame(self, v10, v11);

  objc_msgSend_unlock(self, v12, v13);
}

- (float32x2_t)_screenSize
{
  v1 = self + 36;
  v2 = vld1_dup_f32(v1);
  return vdiv_f32(self[21], v2);
}

- (CGSize)_backingSize
{
  width = self->__drawableSize.width;
  height = self->__drawableSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_setBackingSize:(CGSize)size
{
  if (size.width != self->__drawableSize.width || size.height != self->__drawableSize.height)
  {
    self->__drawableSize = size;
    objc_msgSend__drawablePropertiesDidChange(self, a2, v3);
  }
}

- (void)_beginFrame
{
  if (self->_renderContext)
  {
    objc_msgSend__startCaptureIfNeeded(self, a2, v2);
    engineContext = self->_engineContext;
    objc_msgSend__contentsScaleFactor(self, v5, v6);
    sub_1AF130850(engineContext, v7);
    if (*(self + 81))
    {
      *(self + 81) &= ~1u;
      sub_1AF12E8B4(self->_engineContext);
      sub_1AF12E8AC(self->_engineContext);
    }

    renderContext = self->_renderContext;
    v11 = objc_msgSend_metalLayer(self, v8, v9);
    objc_msgSend_beginFrame_(renderContext, v12, v11);
    v15 = objc_msgSend_world(self, v13, v14);
    v18 = objc_msgSend_worldRef(v15, v16, v17);
    if (v18)
    {
      v20 = v18;
      if (sub_1AF1CF8AC(v18, v19))
      {
        v22 = sub_1AF1CF878(v20, v21);
        if (objc_msgSend_showsDebugUI(self, v23, v24))
        {
          objc_msgSend__contentsScaleFactor(self, v25, v26);
          v33 = *v27.i32;
          v34 = vcvtq_f64_f32(vdiv_f32(COERCE_FLOAT32X2_T(sub_1AF1305C8(self->_engineContext)), vdup_lane_s32(v27, 0)));
          v30 = sub_1AF130C80(self->_engineContext, v28, v29);
          if (!objc_msgSend_beginImgUIFrameWithViewportSize_backingScaleFactor_renderer_(v22, v31, v30, *&v34, v33))
          {
            return;
          }

          v32 = *(self + 224) | 0x10;
        }

        else
        {
          objc_msgSend_setImGUIEnabled_(v22, v25, 0);
          v32 = *(self + 224) & 0xEF;
        }

        *(self + 224) = v32;
      }
    }
  }
}

- (void)_endImGuiFrameAndRender
{
  v4 = objc_msgSend_world(self, a2, v2);
  v7 = objc_msgSend_worldRef(v4, v5, v6);
  if ((*(self + 224) & 0x10) != 0 && v7)
  {
    v9 = sub_1AF1CF878(v7, v8);
    v12 = sub_1AF130C80(self->_engineContext, v10, v11);
    v15 = objc_msgSend_currentCommandBuffer(self, v13, v14);
    v18 = objc_msgSend_currentRenderCommandEncoder(self, v16, v17);
    v21 = objc_msgSend_currentRenderPassDescriptor(self, v19, v20);
    if (objc_msgSend_endImgUIFrameWithCommandBuffer_encoder_renderPassDescriptor_renderer_(v9, v22, v15, v18, v21, v12))
    {
      *(self + 224) &= ~0x10u;
    }
  }
}

- (void)_endFrame
{
  if (self->_renderContext)
  {
    v4 = objc_msgSend_world(self, a2, v2);
    v7 = objc_msgSend_worldRef(v4, v5, v6);
    if (v7)
    {
      if ((*(self + 224) & 0x10) != 0)
      {
        v10 = sub_1AF1CF878(v7, v8);
        if (objc_msgSend_endImgUIFrame(v10, v11, v12))
        {
          *(self + 224) &= ~0x10u;
        }
      }
    }

    if ((*&self->_selfDelegationConformance & 0x40) != 0)
    {
      v18 = sub_1AF1302C4(self->_engineContext);
      objc_msgSend__renderer_inputTimeForCurrentFrameWithTime_(self, v19, self, v18);
    }

    else
    {
      if ((*&self->_privateRendererOwnerDelegationConformance & 0x40) != 0)
      {
        privateRendererOwner = self->_privateRendererOwner;
        v16 = sub_1AF1302C4(self->_engineContext);
        v17 = privateRendererOwner;
      }

      else
      {
        if ((*&self->_delegationConformance & 0x40) == 0)
        {
LABEL_16:
          objc_msgSend_endFrameWaitingUntilCompleted_status_error_(self->_renderContext, v8, 0, 0, 0);
          goto LABEL_17;
        }

        privateRendererOwner = self;
        if ((*(self + 81) & 4) != 0)
        {
          privateRendererOwner = self->_privateRendererOwner;
        }

        v14 = objc_msgSend_delegate(self, v8, v9);
        v16 = sub_1AF1302C4(self->_engineContext);
        v17 = v14;
      }

      objc_msgSend__renderer_inputTimeForCurrentFrameWithTime_(v17, v15, privateRendererOwner, v16);
    }

    v23 = v22;
    v24 = objc_msgSend_metalLayer(self, v20, v21);
    objc_msgSend_setInputTime_(v24, v25, v26, v23);
    goto LABEL_16;
  }

LABEL_17:

  objc_msgSend__stopCapture(self, a2, v2);
}

- (unint64_t)antialiasingMode
{
  if (sub_1AF0D5C40(3))
  {
    return 0;
  }

  else
  {
    return self->__antialiasingMode;
  }
}

- (void)setAntialiasingMode:(unint64_t)mode
{
  if (self->__antialiasingMode != mode)
  {
    self->__antialiasingMode = mode;
    objc_msgSend__drawablePropertiesDidChange(self, a2, mode);
    v7 = objc_msgSend_antialiasingMode(self, v5, v6);
    v10 = sub_1AF1F31D4(v7, v8);
    renderContext = self->_renderContext;
    if (renderContext)
    {
      objc_msgSend_setSampleCount_(renderContext, v9, v10);
    }

    engineContext = self->_engineContext;

    sub_1AF12E8AC(engineContext);
  }
}

- (__n128)_currentProjectionMatrix
{
  v1 = sub_1AF13050C(*(self + 136), 0);
  v2 = &VFXMatrix4Identity;
  if (v1)
  {
    v2 = v1;
  }

  return *v2;
}

- (__n128)_currentViewMatrix
{
  v1 = sub_1AF13050C(*(self + 136), 1);
  v2 = &VFXMatrix4Identity;
  if (v1)
  {
    v2 = v1;
  }

  return *v2;
}

- (BOOL)autoenablesDefaultLighting
{
  objc_msgSend_lock(self, a2, v2);
  v6 = objc_msgSend__engineContext(self, v4, v5);
  if (v6)
  {
    v10 = sub_1AF12E754(v6, @"defaultLight") == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v11 = sub_1AF0D5194(0, v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF7E18();
    }

    v10 = 0;
  }

  objc_msgSend_unlock(self, v8, v9);
  return v10;
}

- (void)setAutoenablesDefaultLighting:(BOOL)lighting
{
  lightingCopy = lighting;
  objc_msgSend_lock(self, a2, lighting);
  v7 = objc_msgSend__engineContext(self, v5, v6);
  if (v7)
  {
    v9 = v7;
    v10 = sub_1AF12DDCC(v7, v8);
    if (v10)
    {
      v12 = v10;
      sub_1AF1CEA20(v10, v11);
      v13 = MEMORY[0x1E695E4C0];
      if (lightingCopy)
      {
        v13 = MEMORY[0x1E695E4D0];
      }

      sub_1AF12FD44(v9, @"defaultLight", *v13);
      sub_1AF1CEA9C(v12, v14);
    }

    else
    {
      v18 = MEMORY[0x1E695E4C0];
      if (lightingCopy)
      {
        v18 = MEMORY[0x1E695E4D0];
      }

      sub_1AF12FD44(v9, @"defaultLight", *v18);
    }
  }

  else
  {
    v17 = sub_1AF0D5194(0, v8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF7E54();
    }
  }

  objc_msgSend_unlock(self, v15, v16);
}

- (void)setPointOfView:(id)view
{
  v290 = *MEMORY[0x1E69E9840];
  if (self->_pointOfView != view)
  {
    viewCopy = view;
    self->_pointOfViewWasSet = 1;
    isPresentationObject = objc_msgSend_isPresentationObject(view, a2, view);
    if (isPresentationObject)
    {
      v8 = sub_1AF0D5194(isPresentationObject, v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF7E90(v8, v6, v7, v9, v10, v11, v12, v13);
      }
    }

    v14 = objc_msgSend_pointOfView(self, v6, v7);
    v17 = objc_msgSend_presentationNode(v14, v15, v16);
    v18 = self->_pointOfView;
    self->_pointOfView = viewCopy;
    objc_msgSend_animationDuration(VFXTransaction, v19, v20);
    v22 = v21;
    v25 = objc_msgSend_worldRef(self->_world, v23, v24);
    v28 = objc_msgSend_world(self, v26, v27);
    v31 = objc_msgSend_clock(v28, v29, v30);
    isPaused = objc_msgSend_isPaused(v31, v32, v33);
    if (objc_msgSend_immediateMode(VFXTransaction, v35, v36))
    {
      v39 = 0;
    }

    else
    {
      v39 = (v22 > 0.0) & ~isPaused;
      objc_msgSend_begin(VFXTransaction, v37, v38);
      objc_msgSend_setAnimationDuration_(VFXTransaction, v40, v41, 0.0);
      if (!v17)
      {
        v39 = 0;
      }
    }

    world = self->_world;
    v284[0] = MEMORY[0x1E69E9820];
    v284[1] = 3221225472;
    v284[2] = sub_1AF31DA34;
    v284[3] = &unk_1E7A7E2E8;
    v284[5] = self;
    v284[6] = v25;
    v284[4] = viewCopy;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v37, world, v284);
    if (!v39)
    {
      goto LABEL_79;
    }

    v277 = objc_msgSend_animationTimingFunction(VFXTransaction, v43, v44);
    if (!v277)
    {
      v277 = sub_1AF291040(0, v45, v46);
    }

    if (objc_msgSend_parentNode(viewCopy, v45, v46))
    {
      v49 = objc_msgSend_parentNode(viewCopy, v47, v48);
      v52 = objc_msgSend_presentationNode(v49, v50, v51);
      objc_msgSend_convertTransform_fromNode_(v52, v53, v17, *&VFXMatrix4Identity, 0.0078125, 0.0, 0.0);
    }

    else
    {
      objc_msgSend_worldTransform(v17, v47, v48);
    }

    v64 = objc_msgSend_presentationNode(viewCopy, v54, v55, v58, v59, v56, v57, v62, v63, v60, v61);
    objc_msgSend_transform(v64, v65, v66);
    v292 = __invert_f4(v291);
    v68 = 0;
    *&v285.a = v271;
    *&v285.c = v269;
    *&v285.tx = v275;
    v286 = v273;
    do
    {
      *(&v287.a + v68) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v292.columns[0], COERCE_FLOAT(*(&v285.a + v68))), v292.columns[1], *(&v285.a + v68), 1), v292.columns[2], *(&v285.a + v68), 2), v292.columns[3], *(&v285.a + v68), 3);
      v68 += 16;
    }

    while (v68 != 64);
    tx = v287.tx;
    v276 = *&v288;
    a = v287.a;
    c = v287.c;
    v69 = objc_msgSend_animationWithKeyPath_(MEMORY[0x1E6979318], v67, @"transform");
    objc_msgSend_setDuration_(v69, v70, v71, v22);
    objc_msgSend_setTimingFunction_(v69, v72, v277);
    objc_msgSend_setAdditive_(v69, v73, 1);
    v76 = objc_msgSend_valueWithVFXMatrix4_(MEMORY[0x1E696B098], v74, v75, a, c, tx, v276);
    objc_msgSend_setFromValue_(v69, v77, v76);
    v80 = objc_msgSend_valueWithVFXMatrix4_(MEMORY[0x1E696B098], v78, v79, *&VFXMatrix4Identity, 0.0078125, 0.0, 0.0);
    objc_msgSend_setToValue_(v69, v81, v80);
    objc_msgSend_addAnimation_forKey_(viewCopy, v82, v69, 0);
    v85 = objc_msgSend_camera(v17, v83, v84);
    v88 = objc_msgSend_presentationNode(viewCopy, v86, v87);
    v91 = objc_msgSend_camera(v88, v89, v90);
    if (objc_msgSend_hasCustomProjectionTransform(v85, v92, v93) & 1) != 0 || (objc_msgSend_hasCustomProjectionTransform(v91, v94, v95))
    {
LABEL_63:
      v280 = 0u;
      v281 = 0u;
      v278 = 0u;
      v279 = 0u;
      v230 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F25D4750, v94, &v278, v289, 16);
      if (v230)
      {
        v231 = v230;
        v232 = *v279;
        do
        {
          for (i = 0; i != v231; ++i)
          {
            if (*v279 != v232)
            {
              objc_enumerationMutation(&unk_1F25D4750);
            }

            v234 = *(*(&v278 + 1) + 8 * i);
            v235 = objc_msgSend_valueForKeyPath_(v85, v43, v234);
            v237 = objc_msgSend_valueForKeyPath_(v85, v236, v234);
            if (v237)
            {
              v238 = v235 == 0;
            }

            else
            {
              v238 = 1;
            }

            if (!v238)
            {
              v239 = v237;
              if ((objc_msgSend_isEqual_(v235, v43, v237) & 1) == 0)
              {
                v240 = viewCopy;
                v241 = MEMORY[0x1E6979318];
                v242 = objc_msgSend_stringByAppendingString_(@"camera.", v43, v234);
                v244 = objc_msgSend_animationWithKeyPath_(v241, v243, v242);
                objc_msgSend_setDuration_(v244, v245, v246, v22);
                objc_msgSend_setTimingFunction_(v244, v247, v277);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v250 = MEMORY[0x1E696AD98];
                  objc_msgSend_doubleValue(v235, v248, v249);
                  v252 = v251;
                  objc_msgSend_doubleValue(v239, v253, v254);
                  v258 = objc_msgSend_numberWithDouble_(v250, v256, v257, v252 - v255);
                  objc_msgSend_setFromValue_(v244, v259, v258);
                  v262 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v260, v261, 0.0);
                  objc_msgSend_setToValue_(v244, v263, v262);
                  objc_msgSend_setAdditive_(v244, v264, 1);
                }

                else
                {
                  objc_msgSend_setFromValue_(v244, v248, v235);
                  objc_msgSend_setToValue_(v244, v266, v239);
                }

                viewCopy = v240;
                objc_msgSend_addAnimation_forKey_(v240, v265, v244, 0);
              }
            }
          }

          v231 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F25D4750, v43, &v278, v289, 16);
        }

        while (v231);
      }

LABEL_79:
      if ((objc_msgSend_immediateMode(VFXTransaction, v43, v44) & 1) == 0)
      {
        objc_msgSend_commit(VFXTransaction, v267, v268);
      }

      return;
    }

    height = self->__drawableSize.height;
    if (height == 0.0)
    {
      v98 = 1.0;
    }

    else
    {
      v98 = self->__drawableSize.width / height;
    }

    objc_msgSend_fieldOfView(v91, v94, v96);
    v100 = v99;
    v103 = objc_msgSend_fillMode(v91, v101, v102);
    if (v103 > 1)
    {
      if (v103 != 2)
      {
LABEL_27:
        v106 = 1;
        goto LABEL_30;
      }

      v106 = 0;
    }

    else
    {
      if (v103)
      {
        if (v103 == 1)
        {
          v106 = v98 > 1.0;
          goto LABEL_30;
        }

        goto LABEL_27;
      }

      v106 = v98 < 1.0;
    }

LABEL_30:
    v107 = objc_msgSend_fillMode(v85, v104, v105);
    if (v107)
    {
      if (v107 != 1)
      {
        if (v107 == 2)
        {
          objc_msgSend_fieldOfView(v85, v108, v109);
          v113 = v112;
          if ((v106 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        else
        {
          objc_msgSend_fieldOfView(v85, v108, v109);
          v113 = v116;
          if (v106)
          {
LABEL_46:
            if (v113 != v100)
            {
              v118 = objc_msgSend_animationWithKeyPath_(MEMORY[0x1E6979318], v110, @"camera.fieldOfView");
              objc_msgSend_setDuration_(v118, v119, v120, v22);
              objc_msgSend_setTimingFunction_(v118, v121, v277);
              v124 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v122, v123, (v113 - v100));
              objc_msgSend_setFromValue_(v118, v125, v124);
              v128 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v126, v127, 0.0);
              objc_msgSend_setToValue_(v118, v129, v128);
              objc_msgSend_setAdditive_(v118, v130, 1);
              objc_msgSend_addAnimation_forKey_(viewCopy, v131, v118, 0);
            }

            if (objc_msgSend_usesOrthographicProjection(v85, v110, v111))
            {
              if (objc_msgSend_usesOrthographicProjection(v91, v132, v133))
              {
                objc_msgSend_orthographicScale(v85, v132, v133);
                v135 = v134;
                objc_msgSend_orthographicScale(v91, v136, v137);
                if (v135 != v138)
                {
                  v139 = objc_msgSend_animationWithKeyPath_(MEMORY[0x1E6979318], v132, @"camera.orthographicScale");
                  objc_msgSend_setDuration_(v139, v140, v141, v22);
                  objc_msgSend_setTimingFunction_(v139, v142, v277);
                  v143 = MEMORY[0x1E696AD98];
                  objc_msgSend_orthographicScale(v85, v144, v145);
                  v147 = v146;
                  objc_msgSend_orthographicScale(v91, v148, v149);
                  *&v151 = v147 - v150;
                  v154 = objc_msgSend_numberWithFloat_(v143, v152, v153, v151);
                  objc_msgSend_setFromValue_(v139, v155, v154);
                  v158 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v156, v157, 0.0);
                  objc_msgSend_setToValue_(v139, v159, v158);
                  objc_msgSend_setAdditive_(v139, v160, 1);
                  objc_msgSend_addAnimation_forKey_(viewCopy, v161, v139, 0);
                }
              }
            }

            objc_msgSend_filmOffset(v85, v132, v133);
            v163 = v162;
            objc_msgSend_filmOffset(v91, v164, v165);
            v169 = vmvn_s8(vceq_f32(v163, v168));
            if ((vpmax_u32(v169, v169).u32[0] & 0x80000000) != 0)
            {
              objc_msgSend_filmOffset(v85, v166, v167);
              v171 = v170;
              objc_msgSend_filmOffset(v91, v172, v173);
              v175 = vsub_f32(v171, v174);
              v177 = objc_msgSend_animationWithKeyPath_(MEMORY[0x1E6979318], v176, @"camera.filmOffset");
              objc_msgSend_setDuration_(v177, v178, v179, v22);
              objc_msgSend_setTimingFunction_(v177, v180, v277);
              v183 = objc_msgSend_VFX_valueWithCGPoint_(MEMORY[0x1E696B098], v181, v182, vcvtq_f64_f32(v175));
              objc_msgSend_setFromValue_(v177, v184, v183);
              v187 = objc_msgSend_VFX_valueWithCGPoint_(MEMORY[0x1E696AD98], v185, v186, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8));
              objc_msgSend_setToValue_(v177, v188, v187);
              objc_msgSend_setAdditive_(v177, v189, 1);
              objc_msgSend_addAnimation_forKey_(viewCopy, v190, v177, 0);
            }

            v191 = 0uLL;
            memset(&v287, 0, sizeof(v287));
            if (v85)
            {
              objc_msgSend_postProjectionTransform(v85, v166, v167);
              v191 = 0uLL;
            }

            *&v285.c = v191;
            *&v285.tx = v191;
            *&v285.a = v191;
            if (v91)
            {
              objc_msgSend_postProjectionTransform(v91, v166, v167);
            }

            t1 = v287;
            t2 = v285;
            if (!CGAffineTransformEqualToTransform(&t1, &t2))
            {
              v192 = vcvt_f32_f64(*&v287.tx);
              v193 = vcvt_f32_f64(*&v285.tx);
              v194 = vmvn_s8(vceq_f32(v192, v193));
              if ((vpmax_u32(v194, v194).u32[0] & 0x80000000) != 0)
              {
                v195 = vsub_f32(v192, v193);
                v196 = objc_msgSend_animationWithKeyPath_(MEMORY[0x1E6979318], v94, @"camera.postProjectionTransformTranslation");
                objc_msgSend_setDuration_(v196, v197, v198, v22);
                objc_msgSend_setTimingFunction_(v196, v199, v277);
                v202 = objc_msgSend_VFX_valueWithCGPoint_(MEMORY[0x1E696B098], v200, v201, vcvtq_f64_f32(v195));
                objc_msgSend_setFromValue_(v196, v203, v202);
                v206 = objc_msgSend_VFX_valueWithCGPoint_(MEMORY[0x1E696AD98], v204, v205, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8));
                objc_msgSend_setToValue_(v196, v207, v206);
                objc_msgSend_setAdditive_(v196, v208, 1);
                objc_msgSend_addAnimation_forKey_(viewCopy, v209, v196, 0);
              }

              v210.f64[0] = v287.a;
              v210.f64[1] = v287.d;
              v211.f64[0] = v285.a;
              v211.f64[1] = v285.d;
              v212 = vcvt_f32_f64(v210);
              v213 = vcvt_f32_f64(v211);
              v214 = vmvn_s8(vceq_f32(v212, v213));
              if ((vpmax_u32(v214, v214).u32[0] & 0x80000000) != 0)
              {
                v215 = vsub_f32(v212, v213);
                v216 = objc_msgSend_animationWithKeyPath_(MEMORY[0x1E6979318], v94, @"camera.postProjectionTransformScale");
                objc_msgSend_setDuration_(v216, v217, v218, v22);
                objc_msgSend_setTimingFunction_(v216, v219, v277);
                v222 = objc_msgSend_VFX_valueWithCGPoint_(MEMORY[0x1E696B098], v220, v221, vcvtq_f64_f32(v215));
                objc_msgSend_setFromValue_(v216, v223, v222);
                v226 = objc_msgSend_VFX_valueWithCGPoint_(MEMORY[0x1E696AD98], v224, v225, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8));
                objc_msgSend_setToValue_(v216, v227, v226);
                objc_msgSend_setAdditive_(v216, v228, 1);
                objc_msgSend_addAnimation_forKey_(viewCopy, v229, v216, 0);
              }
            }

            goto LABEL_63;
          }
        }

LABEL_40:
        if (objc_msgSend_fillMode(v91, v110, v111) != 4 && objc_msgSend_fillMode(v85, v110, v111) != 4)
        {
          if (v106)
          {
            v117 = sub_1AF31DB90(v113, v98);
          }

          else
          {
            v117 = sub_1AF31DC00(v113, v98);
          }

          v113 = v117;
        }

        goto LABEL_46;
      }

      v114 = v98 > 1.0;
    }

    else
    {
      v114 = v98 < 1.0;
    }

    objc_msgSend_fieldOfView(v85, v108, v109);
    v113 = v115;
    if (v106 == v114)
    {
      goto LABEL_46;
    }

    goto LABEL_40;
  }
}

- (void)setPointOfCulling:(id)culling
{
  pointOfCulling = self->_pointOfCulling;
  if (pointOfCulling != culling)
  {
    v6 = pointOfCulling;
    self->_pointOfCulling = culling;
    world = self->_world;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF31DD10;
    v9[3] = &unk_1E7A7E220;
    v9[4] = culling;
    v9[5] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, world, v9);
  }
}

- (void)_projectPoints:(VFXRenderer *)self count:(SEL)count viewport:
{
  v25 = v4;
  v5 = v3;
  v6 = v2;
  v8 = objc_msgSend__engineContext(self, count, v2);
  if (v8)
  {
    v10 = sub_1AF12F10C(v8, v9);
    if (v10)
    {
      v13 = v10;
      v14 = objc_msgSend_world(self, v11, v12);
      v17 = objc_msgSend_worldRef(v14, v15, v16);
      sub_1AF1CEA20(v17, v18);
      for (; v5; --v5)
      {
        v26 = *v6;
        v21 = objc_msgSend_world(self, v19, v20);
        v24 = objc_msgSend_worldRef(v21, v22, v23);
        if (sub_1AF281920(&v26, 1, v13, v24, &v26, v25))
        {
          *v6 = v26;
        }

        ++v6;
      }

      sub_1AF1CEA9C(v17, v19);
    }
  }
}

- (__n128)_projectPoint:(__n128)point viewport:(const char *)viewport
{
  v6 = objc_msgSend__engineContext(self, viewport, a5);
  if (v6)
  {
    v8 = sub_1AF12F10C(v6, v7);
    if (v8)
    {
      v11 = v8;
      v21 = a2;
      v12 = objc_msgSend_world(self, v9, v10);
      v15 = objc_msgSend_worldRef(v12, v13, v14);
      sub_1AF1CEA20(v15, v16);
      LOBYTE(v11) = sub_1AF281920(&v21, 1, v11, v15, &v21, point);
      sub_1AF1CEA9C(v15, v17);
      if (v11)
      {
        return v21;
      }
    }
  }

  return a2;
}

- (void)_unprojectPoints:(VFXRenderer *)self count:(SEL)count viewport:
{
  v20 = v4;
  v5 = v3;
  v6 = v2;
  v8 = objc_msgSend__engineContext(self, count, v2);
  if (v8)
  {
    v10 = sub_1AF12F10C(v8, v9);
    if (v10)
    {
      v13 = v10;
      v14 = objc_msgSend_world(self, v11, v12);
      v17 = objc_msgSend_worldRef(v14, v15, v16);
      sub_1AF1CEA20(v17, v18);
      for (; v5; --v5)
      {
        v21 = *v6;
        if (sub_1AF281AF8(&v21, 1, v13, v17, &v21, v20))
        {
          *v6 = v21;
        }

        ++v6;
      }

      sub_1AF1CEA9C(v17, v19);
    }
  }
}

- (double)_unprojectPoint:(double)point viewport:(const char *)viewport
{
  v5 = a2;
  objc_msgSend__unprojectPoints_count_viewport_(self, viewport, &v5, 1, point);
  return v5.n128_f64[0];
}

- (void)projectPoint:(const char *)x1_0
{
  v4.f64[0] = result[24];
  if (v4.f64[0] != 0.0)
  {
    v4.f64[1] = result[25];
    return objc_msgSend__projectPoint_viewport_(result, x1_0, a3, a2, *vcvt_hight_f32_f64(0, v4).i64);
  }

  return result;
}

- (uint64_t)unprojectPoint:(uint64_t)point
{
  if (*(result + 192) != 0.0)
  {
    return MEMORY[0x1EEE66B58](result, sel__unprojectPoint_viewport_, point);
  }

  return result;
}

- (BOOL)_supportsDidPresentDelegate
{
  if ((*&self->_delegationConformance & 0x400) != 0 || (*&self->_selfDelegationConformance & 0x400) != 0)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    return (*&self->_privateRendererOwnerDelegationConformance >> 10) & 1;
  }

  return v2;
}

- (void)_didPresentAtTime:(double)time
{
  if ((*&self->_delegationConformance & 0x400) != 0)
  {
    privateRendererOwner = self;
    if ((*(self + 81) & 4) != 0)
    {
      privateRendererOwner = self->_privateRendererOwner;
    }

    v7 = objc_msgSend_delegate(self, a2, v3);
    v10 = objc_msgSend_world(self, v8, v9);
    objc_msgSend__renderer_didPresentWorld_atTime_(v7, v11, privateRendererOwner, v10, time);
    if ((*&self->_selfDelegationConformance & 0x400) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((*&self->_selfDelegationConformance & 0x400) == 0)
  {
    if ((*&self->_privateRendererOwnerDelegationConformance & 0x400) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

  v12 = objc_msgSend_world(self, a2, v3);
  objc_msgSend__renderer_didPresentWorld_atTime_(self, v13, self, v12, time);
LABEL_9:
  if ((*&self->_privateRendererOwnerDelegationConformance & 0x400) != 0)
  {
    v14 = self->_privateRendererOwner;
    v16 = objc_msgSend_world(self, a2, v3);

    objc_msgSend__renderer_didPresentWorld_atTime_(v14, v15, v14, v16, time);
  }
}

- (void)_didRenderWorld:(id)world
{
  if ((*&self->_delegationConformance & 0x20) != 0 || (*&self->_selfDelegationConformance & 0x20) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 0x20) != 0)
  {
    objc_msgSend_setImmediateMode_(VFXTransaction, a2, 1);
    v7 = objc_msgSend_worldRef(world, v5, v6);
    objc_msgSend_setImmediateModeRestrictedContext_(VFXTransaction, v8, v7);
    v10 = sub_1AF12DE14(self->_engineContext, v9);
    v11 = CACurrentMediaTime();
    prof_beginFlame("Did render delegate", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 1639);
    v12 = sub_1AF12DE5C(self->_engineContext);
    v14 = sub_1AF0D5194(v12, v13);
    if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = v14;
      v14 = os_signpost_enabled(v14);
      if (v14)
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v12, "Delegate (didRender)", &unk_1AFF70A1D, buf, 2u);
      }
    }

    if ((*&self->_delegationConformance & 0x20) != 0)
    {
      privateRendererOwner = self;
      if ((*(self + 81) & 4) != 0)
      {
        privateRendererOwner = self->_privateRendererOwner;
      }

      v19 = objc_msgSend_delegate(self, v15, v16);
      v14 = objc_msgSend_renderer_didRenderWorld_atTime_(v19, v20, privateRendererOwner, world, self->_time);
    }

    if ((*&self->_selfDelegationConformance & 0x20) != 0)
    {
      v14 = objc_msgSend__renderer_didRenderWorld_atTime_(self, v15, self, world, self->_time);
    }

    if ((*&self->_privateRendererOwnerDelegationConformance & 0x20) != 0)
    {
      v14 = objc_msgSend__renderer_didRenderWorld_atTime_(self->_privateRendererOwner, v15, self->_privateRendererOwner, world, self->_time);
    }

    v21 = sub_1AF0D5194(v14, v15);
    if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v22 = v21;
      if (os_signpost_enabled(v21))
      {
        *v25 = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v22, OS_SIGNPOST_INTERVAL_END, v12, "Delegate (didRender)", &unk_1AFF70A1D, v25, 2u);
      }
    }

    *(v10 + 168) = *(v10 + 168) + CACurrentMediaTime() - v11;
    prof_endFlame();
    objc_msgSend_setImmediateModeRestrictedContext_(VFXTransaction, v23, 0);
    objc_msgSend_setImmediateMode_(VFXTransaction, v24, 0);
  }
}

- (void)_willRenderWorld:(id)world
{
  if ((*&self->_delegationConformance & 0x10) != 0 || (*&self->_selfDelegationConformance & 0x10) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 0x10) != 0)
  {
    objc_msgSend_setImmediateMode_(VFXTransaction, a2, 1);
    v7 = objc_msgSend_worldRef(world, v5, v6);
    objc_msgSend_setImmediateModeRestrictedContext_(VFXTransaction, v8, v7);
    v10 = sub_1AF12DE14(self->_engineContext, v9);
    v11 = CACurrentMediaTime();
    prof_beginFlame("will render delegate", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 1669);
    v12 = sub_1AF12DE5C(self->_engineContext);
    v14 = sub_1AF0D5194(v12, v13);
    if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = v14;
      v14 = os_signpost_enabled(v14);
      if (v14)
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v12, "Delegate (willRender)", &unk_1AFF70A1D, buf, 2u);
      }
    }

    time = self->_time;
    if ((*&self->_privateRendererOwnerDelegationConformance & 0x10) != 0)
    {
      v14 = objc_msgSend__renderer_willRenderWorld_atTime_(self->_privateRendererOwner, v15, self->_privateRendererOwner, world, self->_time);
    }

    if ((*&self->_selfDelegationConformance & 0x10) != 0)
    {
      v14 = objc_msgSend__renderer_willRenderWorld_atTime_(self, v15, self, world, time);
    }

    if ((*&self->_delegationConformance & 0x10) != 0)
    {
      privateRendererOwner = self;
      if ((*(self + 81) & 4) != 0)
      {
        privateRendererOwner = self->_privateRendererOwner;
      }

      v20 = objc_msgSend_delegate(self, v15, v16);
      v14 = objc_msgSend_renderer_willRenderWorld_atTime_(v20, v21, privateRendererOwner, world, time);
    }

    v22 = sub_1AF0D5194(v14, v15);
    if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v23 = v22;
      if (os_signpost_enabled(v22))
      {
        *v26 = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v23, OS_SIGNPOST_INTERVAL_END, v12, "Delegate (willRender)", &unk_1AFF70A1D, v26, 2u);
      }
    }

    *(v10 + 168) = *(v10 + 168) + CACurrentMediaTime() - v11;
    prof_endFlame();
    objc_msgSend_setImmediateModeRestrictedContext_(VFXTransaction, v24, 0);
    objc_msgSend_setImmediateMode_(VFXTransaction, v25, 0);
  }
}

- (id)_readSubdivCacheForHash:(id)hash
{
  if (((*&self->_privateRendererOwnerDelegationConformance & 0x80) == 0 || (result = objc_msgSend__renderer_subdivDataForHash_(self->_privateRendererOwner, a2, self->_privateRendererOwner, hash)) == 0) && ((*&self->_selfDelegationConformance & 0x80) == 0 || (result = objc_msgSend__renderer_subdivDataForHash_(self, a2, self, hash)) == 0))
  {
    if ((*&self->_delegationConformance & 0x80) == 0)
    {
      return 0;
    }

    privateRendererOwner = self;
    if ((*(self + 81) & 4) != 0)
    {
      privateRendererOwner = self->_privateRendererOwner;
    }

    v7 = objc_msgSend_delegate(self, a2, hash);
    result = objc_msgSend__renderer_subdivDataForHash_(v7, v8, privateRendererOwner, hash);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

- (void)_writeSubdivCacheForHash:(id)hash dataProvider:(id)provider
{
  if ((*&self->_privateRendererOwnerDelegationConformance & 0x100) != 0)
  {
    objc_msgSend__renderer_didBuildSubdivDataForHash_dataProvider_(self->_privateRendererOwner, a2, self->_privateRendererOwner, hash, provider);
  }

  if ((*&self->_selfDelegationConformance & 0x100) != 0)
  {
    objc_msgSend__renderer_didBuildSubdivDataForHash_dataProvider_(self, a2, self, hash, provider);
  }

  if ((*&self->_delegationConformance & 0x100) != 0)
  {
    privateRendererOwner = self;
    if ((*(self + 81) & 4) != 0)
    {
      privateRendererOwner = self->_privateRendererOwner;
    }

    v8 = objc_msgSend_delegate(self, a2, hash);

    objc_msgSend__renderer_didBuildSubdivDataForHash_dataProvider_(v8, v9, privateRendererOwner, hash, provider);
  }
}

- (void)setAutoAdjustCamera:(BOOL)camera
{
  cameraCopy = camera;
  v4 = objc_msgSend__engineContext(self, a2, camera);
  if (v4)
  {

    sub_1AF12FE28(v4, cameraCopy);
  }
}

- (BOOL)autoAdjustCamera
{
  v3 = objc_msgSend__engineContext(self, a2, v2);
  if (v3)
  {
    LOBYTE(v3) = sub_1AF12FE84(v3, v4) != 0;
  }

  return v3;
}

- (id)_defaultPOVForWorld:(id)world
{
  result = objc_msgSend_defaultPointOfView(world, a2, world);
  if (!result)
  {
    v7 = objc_msgSend_rootNode(world, v5, v6);
    v9 = objc_msgSend_childNodesPassingTest_(v7, v8, &unk_1F24EC268);
    result = objc_msgSend_count(v9, v10, v11);
    if (result)
    {

      return objc_msgSend_objectAtIndex_(v9, v12, 0);
    }
  }

  return result;
}

- (void)_worldDidChange
{
  world = self->_world;
  if (world)
  {
    if (!self->_pointOfViewWasSet || (v4 = objc_msgSend_world(self->_pointOfView, a2, world), world = self->_world, v4 != world))
    {
      v6 = objc_msgSend__defaultPOVForWorld_(self, a2, world);
      if ((*(self + 81) & 4) != 0)
      {
        objc_msgSend_setPointOfView_(self->_privateRendererOwner, v5, v6);
      }

      else
      {
        objc_msgSend_setPointOfView_(self, v5, v6);
      }

      self->_pointOfViewWasSet = 0;
    }
  }
}

- (void)setWorld:(id)world completionHandler:(id)handler
{
  objc_msgSend_lock(self, a2, world);

  self->_world = world;
  sub_1AF12EA28(self->_engineContext, 0);
  engineContext = self->_engineContext;
  v10 = objc_msgSend_worldRef(self->_world, v8, v9);
  sub_1AF12FECC(engineContext, v10);
  v13 = objc_msgSend_defaultRenderGraph(world, v11, v12);
  objc_msgSend_setRenderGraph_(self, v14, v13);
  objc_msgSend__worldDidChange(self, v15, v16);
  if (handler)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1AF31EA1C;
    v21[3] = &unk_1E7A7EEF8;
    v21[4] = handler;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v17, 0, v21);
  }

  v19 = self->_engineContext;
  if (v19)
  {
    v20 = sub_1AF12EE9C(v19, 0);
    if (v20)
    {
      sub_1AF0FCE5C(v20, world);
    }
  }

  objc_msgSend_unlock(self, v17, v18);
}

- (void)setWorld:(id)world
{
  if (self->_world != world)
  {
    objc_msgSend_lock(self, a2, world);

    worldCopy = world;
    self->_world = worldCopy;
    engineContext = self->_engineContext;
    if (engineContext)
    {
      v10 = objc_msgSend_worldRef(worldCopy, v7, v8);
      sub_1AF12FECC(engineContext, v10);
    }

    v11 = objc_msgSend_defaultRenderGraph(world, v7, v8);
    objc_msgSend_setRenderGraph_(self, v12, v11);
    objc_msgSend__worldDidChange(self, v13, v14);

    objc_msgSend_unlock(self, v15, v16);
  }
}

- (void)setBackgroundColor:(id)color
{
  legacyRenderer = self->_legacyRenderer;
  if (legacyRenderer)
  {

    objc_msgSend_setBackgroundColor_(legacyRenderer, a2, color);
  }

  else
  {
    backgroundColor = self->_backgroundColor;
    if (backgroundColor != color)
    {

      colorCopy = color;
      self->_backgroundColor = colorCopy;
      v10.i64[0] = objc_msgSend_vfx_CFXColorIgnoringColorSpace_success_(colorCopy, v8, 0, 0);
      v10.i64[1] = v11;
      v12 = vmulq_f32(vdupq_n_s32(HIDWORD(v11)), v10);
      v12.var0.var0[3] = *(&v11 + 1);
      self->_cfxBackgroundColor = v12;

      MEMORY[0x1EEE66B58](self, sel__cfxBackgroundColorDidChange, v9);
    }
  }
}

- (void)_cfxBackgroundColorDidChange
{
  v5 = objc_msgSend__engineContext(self, a2, v2);
  if (!v5)
  {
    v6 = sub_1AF0D5194(0, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2B48(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  sub_1AF1303B0(v5, *self->_cfxBackgroundColor.var0.var0, *&self->_cfxBackgroundColor.var0.var1.var2);
}

- (void)resolvedBackgroundColorDidChange
{
  v4.i64[0] = objc_msgSend_vfx_CFXColorIgnoringColorSpace_success_(self->_backgroundColor, a2, 0, 0);
  v4.i64[1] = v5;
  v6 = vmulq_f32(vdupq_n_s32(HIDWORD(v5)), v4);
  v6.var0.var0[3] = *(&v5 + 1);
  self->_cfxBackgroundColor = v6;

  MEMORY[0x1EEE66B58](self, sel__cfxBackgroundColorDidChange, v3);
}

- (id)metalLayer
{
  if ((*(self + 81) & 8) != 0)
  {
    return objc_msgSend_vfx_backingLayer(self->_privateRendererOwner, a2, v2);
  }

  else
  {
    return 0;
  }
}

- (void)_updateEngineCallbacks
{
  engineContext = self->_engineContext;
  if (engineContext)
  {
    v4 = sub_1AF12F398(engineContext, a2);
    delegationConformance = self->_delegationConformance;
    if ((delegationConformance & 0x10) != 0 || (*&self->_selfDelegationConformance & 0x10) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 0x10) != 0)
    {
      *v4 = sub_1AF31ED84;
      delegationConformance = self->_delegationConformance;
    }

    if ((delegationConformance & 0x20) != 0 || (*&self->_selfDelegationConformance & 0x20) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 0x20) != 0)
    {
      v4[1] = sub_1AF31EDE0;
      delegationConformance = self->_delegationConformance;
    }

    if ((delegationConformance & 0x80) != 0 || (*&self->_selfDelegationConformance & 0x80) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 0x80) != 0)
    {
      v4[2] = sub_1AF31EE3C;
      delegationConformance = self->_delegationConformance;
    }

    if ((delegationConformance & 0x100) != 0 || (selfDelegationConformance = self->_selfDelegationConformance, (selfDelegationConformance & 0x100) != 0) || (*&self->_privateRendererOwnerDelegationConformance & 0x100) != 0)
    {
      v4[3] = sub_1AF31EE84;
      selfDelegationConformance = self->_selfDelegationConformance;
    }

    if ((selfDelegationConformance & 0x200) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 0x200) != 0)
    {
      v4[4] = sub_1AF31E650;
      v4[5] = sub_1AF31E6A0;
      v4[6] = sub_1AF31E714;
      v4[7] = sub_1AF31EED4;
    }
  }
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
  if (objc_opt_respondsToSelector())
  {
    v14 = 1024;
  }

  else
  {
    v14 = 0;
  }

  *&self->_delegationConformance = *&self->_delegationConformance & 0xFBFF | v14;

  objc_msgSend__updateEngineCallbacks(self, v12, v13);
}

- (void)set_wantsWorldRendererDelegationMessages:(BOOL)messages
{
  if (messages)
  {
    v4 = 64;
  }

  else
  {
    v4 = 0;
  }

  *(self + 224) = *(self + 224) & 0xBF | v4;
  if (!messages || (*(self + 81) & 4) != 0)
  {
    v14 = 0;
    *&self->_selfDelegationConformance &= 0xFC00u;
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

    *&self->_selfDelegationConformance = *&self->_selfDelegationConformance & 0xFDFF | v13;
    if (objc_opt_respondsToSelector())
    {
      v14 = 1024;
    }

    else
    {
      v14 = 0;
    }
  }

  *&self->_delegationConformance = *&self->_delegationConformance & 0xFBFF | v14;

  objc_msgSend__updateEngineCallbacks(self, a2, messages);
}

- (void)set_shouldForwardWorldRendererDelegationMessagesToPrivateRendererOwner:(BOOL)owner
{
  if (owner)
  {
    v4 = 0x80;
  }

  else
  {
    v4 = 0;
  }

  *(self + 224) = v4 & 0x80 | *(self + 224) & 0x7F;
  if (owner && (*(self + 81) & 4) != 0)
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
      v15 = 512;
    }

    else
    {
      v15 = 0;
    }

    *&self->_privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFDFF | v15;
    if (objc_opt_respondsToSelector())
    {
      v5 = 1024;
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
    privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFC00;
  }

  *&self->_privateRendererOwnerDelegationConformance = privateRendererOwnerDelegationConformance & 0xFBFF | v5;

  objc_msgSend__updateEngineCallbacks(self, a2, owner);
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
    renderContext = self->_renderContext;

    MEMORY[0x1EEE66B58](renderContext, sel_setResourceManagerMonitor_, selfCopy);
  }
}

- (void)renderContext:(id)context didFallbackToDefaultTextureForSource:(id)source message:(id)message
{
  privateRendererOwner = self;
  if ((*(self + 81) & 4) != 0)
  {
    privateRendererOwner = self->_privateRendererOwner;
  }

  Weak = objc_loadWeak(&self->_resourceManagerMonitor);

  MEMORY[0x1EEE66B58](Weak, sel_renderer_didFallbackToDefaultTextureForSource_message_, privateRendererOwner);
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
    renderContext = self->_renderContext;

    MEMORY[0x1EEE66B58](renderContext, sel_setCommandBufferStatusMonitor_, selfCopy);
  }
}

- (void)renderContext:(id)context commandBufferDidCompleteWithError:(id)error
{
  privateRendererOwner = self;
  if ((*(self + 81) & 4) != 0)
  {
    privateRendererOwner = self->_privateRendererOwner;
  }

  Weak = objc_loadWeak(&self->_commandBufferStatusMonitor);

  MEMORY[0x1EEE66B58](Weak, sel_renderer_commandBufferDidCompleteWithError_, privateRendererOwner);
}

- (BOOL)_needsRepetitiveRedraw
{
  if (self->_isAnimating)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    return (*(self + 81) >> 1) & 1;
  }

  return v2;
}

- (void)updateAtTime:(double)time
{
  objc_msgSend_lock(self, a2, v3);
  v8 = sub_1AF130770(self->_engineContext, v6, v7);
  prof_beginFlameSmallData("[VFXRenderer updateAtTime:]", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 2227, v8 | 0x300000000);
  v10 = sub_1AF12DDCC(self->_engineContext, v9);
  v13 = objc_msgSend_world(self, v11, v12);
  if (!v10)
  {
    goto LABEL_4;
  }

  v16 = v13;
  sub_1AF1CEA20(v10, v14);
  if (v10 != objc_msgSend_worldRef(v16, v17, v18))
  {
    sub_1AF1CEA9C(v10, v19);
LABEL_4:
    objc_msgSend_unlock(self, v14, v15);
    goto LABEL_135;
  }

  v21 = 0.0;
  if (prof_getEnabled())
  {
    v21 = CACurrentMediaTime();
  }

  v22 = sub_1AF1CF8AC(v10, v20);
  v25 = v22;
  if (v22)
  {
    v182 = sub_1AF0FB884(v22);
    objc_msgSend_beginTransaction(v182, v26, v27);
  }

  else
  {
    v182 = 0;
  }

  self->_isAnimating = 0;
  objc_msgSend_setImmediateModeWithAtomicTime_(VFXTransaction, v23, v24, time);
  objc_msgSend_setImmediateModeRestrictedContext_(VFXTransaction, v28, v10);
  v29 = sub_1AF12DE5C(self->_engineContext);
  context = objc_autoreleasePoolPush();
  sub_1AF12F8F0(self->_engineContext, v30, v31);
  self->_time = time;
  v34 = objc_msgSend_delegate(self, v32, v33);
  v36 = sub_1AF12DE14(self->_engineContext, v35);
  v37 = CACurrentMediaTime();
  prof_beginFlame("updateAtTime", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 2274);
  if (*&self->_delegationConformance & 1) != 0 || (*&self->_selfDelegationConformance & 1) != 0 || (*&self->_privateRendererOwnerDelegationConformance)
  {
    v40 = CACurrentMediaTime();
    prof_beginFlame("updateAtTime delegate", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 2278);
    v43 = sub_1AF0D5194(v41, v42);
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v45 = v43;
      v43 = os_signpost_enabled(v43);
      if (v43)
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v45, OS_SIGNPOST_INTERVAL_BEGIN, v29, "Delegate (update)", &unk_1AFF70A1D, buf, 2u);
      }
    }

    if (*&self->_privateRendererOwnerDelegationConformance)
    {
      v43 = objc_msgSend__renderer_updateAtTime_(self->_privateRendererOwner, v44, self->_privateRendererOwner, time, context);
    }

    if (*&self->_selfDelegationConformance)
    {
      v43 = objc_msgSend__renderer_updateAtTime_(self, v44, self, time);
    }

    if (*&self->_delegationConformance)
    {
      privateRendererOwner = self;
      if ((*(self + 81) & 4) != 0)
      {
        privateRendererOwner = self->_privateRendererOwner;
      }

      v43 = objc_msgSend_renderer_updateAtTime_(v34, v44, privateRendererOwner, time, context);
    }

    v47 = sub_1AF0D5194(v43, v44);
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v48 = v47;
      if (os_signpost_enabled(v47))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v48, OS_SIGNPOST_INTERVAL_END, v29, "Delegate (update)", &unk_1AFF70A1D, buf, 2u);
      }
    }

    v36[21] = CACurrentMediaTime() - v40 + v36[21];
    prof_endFlame();
  }

  v49 = objc_msgSend_clock(v16, v38, v39, context);
  objc_msgSend_lastUpdateTime(v16, v50, v51);
  v53 = v52;
  objc_msgSend_updateWithAbsoluteTime_(v49, v54, v55, time);
  objc_msgSend_time(v49, v56, v57);
  v59 = v58;
  objc_msgSend_setLastUpdateTime_(v16, v60, v61);
  if (v59 - v53 >= 0.0)
  {
    v62 = v59 - v53;
  }

  else
  {
    v62 = 0.0166666667;
  }

  sub_1AF1302BC(self->_engineContext, time);
  sub_1AF1302CC(self->_engineContext, v59);
  sub_1AF1302AC(self->_engineContext, v62);
  sub_1AF12ECCC(self->_engineContext);
  isPaused = objc_msgSend_isPaused(v49, v63, v64);
  if (self->_privateRendererOwner)
  {
    v67 = v62 <= 1.0;
  }

  else
  {
    v67 = 1;
  }

  if (!v67)
  {
    v62 = 0.0166666667;
  }

  v68 = sub_1AF1CFFC0(v10, v65);
  sub_1AF1DF22C(v68, v69);
  v70 = CACurrentMediaTime();
  prof_beginFlame("Animations", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 2345);
  v72 = sub_1AF1CF830(v10, v71);
  v74 = v72;
  if (v72 && !self->_cameraIsManipulated)
  {
    v75 = sub_1AF0D5194(v72, v73);
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v77 = v75;
      if (os_signpost_enabled(v75))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v77, OS_SIGNPOST_INTERVAL_BEGIN, v29, "Animations", &unk_1AFF70A1D, buf, 2u);
      }
    }

    sub_1AF116CA4(v74, v76, time);
    sub_1AF116CF8(v74, v78, v59);
    sub_1AF116E78(v74, v79);
    v82 = sub_1AF0D5194(v80, v81);
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v83 = v82;
      if (os_signpost_enabled(v82))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v83, OS_SIGNPOST_INTERVAL_END, v29, "Animations", &unk_1AFF70A1D, buf, 2u);
      }
    }

    sub_1AF1190C0(v74);
    self->_isAnimating = sub_1AF117AA8(v74, isPaused);
  }

  v36[16] = CACurrentMediaTime() - v70 + v36[16];
  prof_endFlame();
  v85 = sub_1AF1D00B0(v10, v84);
  sub_1AF134224(v85, v86);
  if (v25)
  {
    v87 = CACurrentMediaTime();
    prof_beginFlame("VFXCore", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 2368);
    v90 = sub_1AF0D5194(v88, v89);
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v91 = v90;
      if (os_signpost_enabled(v90))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v91, OS_SIGNPOST_INTERVAL_BEGIN, v29, "VFXCoreSimulate", &unk_1AFF70A1D, buf, 2u);
      }
    }

    sub_1AF14E5CC(self->_engineContext, isPaused, v59, v62);
    v94 = sub_1AF0D5194(v92, v93);
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v95 = v94;
      if (os_signpost_enabled(v94))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v95, OS_SIGNPOST_INTERVAL_END, v29, "VFXCoreSimulate", &unk_1AFF70A1D, buf, 2u);
      }
    }

    v36[15] = CACurrentMediaTime() - v87 + v36[15];
    prof_endFlame();
  }

  if ((*&self->_delegationConformance & 2) != 0 || (*&self->_selfDelegationConformance & 2) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 2) != 0)
  {
    v96 = CACurrentMediaTime();
    prof_beginFlame("didApply Animations", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 2378);
    v99 = sub_1AF0D5194(v97, v98);
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v101 = v99;
      v99 = os_signpost_enabled(v99);
      if (v99)
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v101, OS_SIGNPOST_INTERVAL_BEGIN, v29, "Delegate (didApplyAnimation)", &unk_1AFF70A1D, buf, 2u);
      }
    }

    if ((*&self->_privateRendererOwnerDelegationConformance & 2) != 0)
    {
      v99 = objc_msgSend__renderer_didApplyAnimationsAtTime_(self->_privateRendererOwner, v100, self->_privateRendererOwner, time);
    }

    if ((*&self->_selfDelegationConformance & 2) != 0)
    {
      v99 = objc_msgSend__renderer_didApplyAnimationsAtTime_(self, v100, self, time);
    }

    if ((*&self->_delegationConformance & 2) != 0)
    {
      selfCopy = self;
      if ((*(self + 81) & 4) != 0)
      {
        selfCopy = self->_privateRendererOwner;
      }

      v99 = objc_msgSend_renderer_didApplyAnimationsAtTime_(v34, v100, selfCopy, time);
    }

    v103 = sub_1AF0D5194(v99, v100);
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v104 = v103;
      if (os_signpost_enabled(v103))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v104, OS_SIGNPOST_INTERVAL_END, v29, "Delegate (didApplyAnimation)", &unk_1AFF70A1D, buf, 2u);
      }
    }

    v36[21] = CACurrentMediaTime() - v96 + v36[21];
    prof_endFlame();
  }

  v105 = CACurrentMediaTime();
  prof_beginFlame("Authoring", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 2397);
  v106 = sub_1AF1D1084(v10, 0);
  if (v106)
  {
    sub_1AF108368(v106, self);
  }

  v36[20] = CACurrentMediaTime() - v105 + v36[20];
  prof_endFlame();
  v107 = CACurrentMediaTime();
  prof_beginFlame("Physics", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 2406);
  v108 = sub_1AF16CDEC(&v10->super.isa);
  IfNeeded = objc_msgSend__physicsWorldCreateIfNeeded_(v108, v109, 0);
  v112 = IfNeeded;
  if (IfNeeded)
  {
    v113 = sub_1AF0D5194(IfNeeded, v111);
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v116 = v113;
      if (os_signpost_enabled(v113))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v116, OS_SIGNPOST_INTERVAL_BEGIN, v29, "Physics", &unk_1AFF70A1D, buf, 2u);
      }
    }

    v117 = objc_msgSend__step_(v112, v114, v115, v62);
    v119 = sub_1AF0D5194(v117, v118);
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v122 = v119;
      if (os_signpost_enabled(v119))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v122, OS_SIGNPOST_INTERVAL_END, v29, "Physics", &unk_1AFF70A1D, buf, 2u);
      }
    }

    if ((isPaused & 1) == 0 && !self->_isAnimating)
    {
      self->_isAnimating = objc_msgSend__needsRedraw(v112, v120, v121);
    }
  }

  v36[14] = CACurrentMediaTime() - v107 + v36[14];
  prof_endFlame();
  if ((*&self->_delegationConformance & 4) != 0 || (*&self->_selfDelegationConformance & 4) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 4) != 0)
  {
    v123 = CACurrentMediaTime();
    prof_beginFlame("didSimulate Physics", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 2420);
    v126 = sub_1AF0D5194(v124, v125);
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v128 = v126;
      v126 = os_signpost_enabled(v126);
      if (v126)
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v128, OS_SIGNPOST_INTERVAL_BEGIN, v29, "Delegate (didUpdatePhysics)", &unk_1AFF70A1D, buf, 2u);
      }
    }

    if ((*&self->_privateRendererOwnerDelegationConformance & 4) != 0)
    {
      v126 = objc_msgSend__renderer_didSimulatePhysicsAtTime_(self->_privateRendererOwner, v127, self->_privateRendererOwner, time);
    }

    if ((*&self->_selfDelegationConformance & 4) != 0)
    {
      v126 = objc_msgSend__renderer_didSimulatePhysicsAtTime_(self, v127, self, time);
    }

    if ((*&self->_delegationConformance & 4) != 0)
    {
      selfCopy2 = self;
      if ((*(self + 81) & 4) != 0)
      {
        selfCopy2 = self->_privateRendererOwner;
      }

      v126 = objc_msgSend_renderer_didSimulatePhysicsAtTime_(v34, v127, selfCopy2, time);
    }

    v130 = sub_1AF0D5194(v126, v127);
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v131 = v130;
      if (os_signpost_enabled(v130))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v131, OS_SIGNPOST_INTERVAL_END, v29, "Delegate (didUpdatePhysics)", &unk_1AFF70A1D, buf, 2u);
      }
    }

    v36[21] = CACurrentMediaTime() - v123 + v36[21];
    prof_endFlame();
  }

  v132 = CACurrentMediaTime();
  prof_beginFlame("Constraints", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 2439);
  v136 = sub_1AF1CECF0(v10, v133);
  if (v136)
  {
    v137 = objc_msgSend__engineContext(self, v134, v135);
    v136[4] = v137;
    v139 = sub_1AF0D5194(v137, v138);
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v141 = v139;
      if (os_signpost_enabled(v139))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v141, OS_SIGNPOST_INTERVAL_BEGIN, v29, "Constraints", &unk_1AFF70A1D, buf, 2u);
      }
    }

    v142 = sub_1AF15956C(v136, v140);
    v144 = sub_1AF0D5194(v142, v143);
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v145 = v144;
      if (os_signpost_enabled(v144))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v145, OS_SIGNPOST_INTERVAL_END, v29, "Constraints", &unk_1AFF70A1D, buf, 2u);
      }
    }
  }

  v36[13] = CACurrentMediaTime() - v132 + v36[13];
  prof_endFlame();
  if ((*&self->_delegationConformance & 8) != 0 || (*&self->_selfDelegationConformance & 8) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 8) != 0)
  {
    v148 = CACurrentMediaTime();
    prof_beginFlame("didApply constraints", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 2451);
    v151 = sub_1AF0D5194(v149, v150);
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v153 = v151;
      v151 = os_signpost_enabled(v151);
      if (v151)
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v153, OS_SIGNPOST_INTERVAL_BEGIN, v29, "Delegate (didApplyConstraints)", &unk_1AFF70A1D, buf, 2u);
      }
    }

    if ((*&self->_privateRendererOwnerDelegationConformance & 8) != 0)
    {
      v151 = objc_msgSend__renderer_didApplyConstraintsAtTime_(self->_privateRendererOwner, v152, self->_privateRendererOwner, time);
    }

    if ((*&self->_selfDelegationConformance & 8) != 0)
    {
      v151 = objc_msgSend__renderer_didApplyConstraintsAtTime_(self, v152, self, time);
    }

    if ((*&self->_delegationConformance & 8) != 0)
    {
      selfCopy3 = self;
      if ((*(self + 81) & 4) != 0)
      {
        selfCopy3 = self->_privateRendererOwner;
      }

      v151 = objc_msgSend_renderer_didApplyConstraintsAtTime_(v34, v152, selfCopy3, time);
    }

    v155 = sub_1AF0D5194(v151, v152);
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v156 = v155;
      if (os_signpost_enabled(v155))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v156, OS_SIGNPOST_INTERVAL_END, v29, "Delegate (didApplyConstraints)", &unk_1AFF70A1D, buf, 2u);
      }
    }

    v36[21] = CACurrentMediaTime() - v148 + v36[21];
    prof_endFlame();
  }

  v157 = sub_1AF0D5194(v146, v147);
  if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v158 = v157;
    if (os_signpost_enabled(v157))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v158, OS_SIGNPOST_INTERVAL_BEGIN, v29, "Audio", &unk_1AFF70A1D, buf, 2u);
    }
  }

  v159 = sub_1AF15AC70(self->_engineContext);
  v161 = sub_1AF0D5194(v159, v160);
  if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v162 = v161;
    if (os_signpost_enabled(v161))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v162, OS_SIGNPOST_INTERVAL_END, v29, "Audio", &unk_1AFF70A1D, buf, 2u);
    }
  }

  v36[12] = CACurrentMediaTime() - v37 + v36[12];
  prof_endFlame();
  objc_autoreleasePoolPop(contexta);
  objc_msgSend_setImmediateModeRestrictedContext_(VFXTransaction, v163, 0);
  objc_msgSend_setImmediateMode_(VFXTransaction, v164, 0);
  objc_msgSend_endTransaction(v182, v165, v166);
  if (prof_getEnabled())
  {
    v168 = sub_1AF1D13B8(v10, v167);
    v170 = sub_1AF1D1400(v10, v169);
    v171 = CACurrentMediaTime();
    vfx_counters_update(v168, v170, v172, v173, v174, v175, v176, v177, v171 - v21);
  }

  sub_1AF1CEA9C(v10, v167);
  objc_msgSend_unlock(self, v178, v179);
LABEL_135:
  prof_endFlame();
}

- (void)drawStatisticsIfNeeded
{
  v3 = sub_1AF332204(self, a2);
  v6 = v3;
  if (self->_showStatistics || v3)
  {
    v7 = objc_msgSend_stats(self->_renderContext, v4, v5);
    v10 = objc_msgSend_resourceManager(self->_renderContext, v8, v9);
    v11 = sub_1AFDE8614(v10);
    sub_1AF134BC4(v7, v12);
    Current = CFAbsoluteTimeGetCurrent();
    statisticsTimeStamp = self->_statisticsTimeStamp;
    v17 = objc_msgSend__authoringEnvironment(self, v15, v16);
    if (statisticsTimeStamp <= Current)
    {
      v18 = v17;
      sub_1AF1348BC(v7, v11, __src);
      sub_1AF134B58(v7, v19);
      if (self->_showStatistics)
      {
        sub_1AF1029B4(v18, __src, v11);
      }

      if (v6)
      {
        sub_1AF332334(__src);
      }

      self->_statisticsTimeStamp = Current + 1.0;
    }
  }
}

- (void)startManipulatingPointOfView
{
  objc_msgSend_lock(self, a2, v2);
  v6 = objc_msgSend_pointOfView(self, v4, v5);
  v9 = objc_msgSend_presentationNode(v6, v7, v8);
  objc_msgSend_transform(v9, v10, v11);
  objc_msgSend_setTransform_(v6, v12, v13);
  v16 = objc_msgSend_camera(v6, v14, v15);
  v19 = objc_msgSend_presentationCamera(v16, v17, v18);
  objc_msgSend_focalLength(v19, v20, v21);
  v23 = v22;
  v26 = objc_msgSend_camera(v6, v24, v25);
  LODWORD(v27) = v23;
  objc_msgSend_setFocalLength_(v26, v28, v29, v27);
  self->_cameraIsManipulated = 1;

  objc_msgSend_unlock(self, v30, v31);
}

- (void)stopManipulatingPointOfView
{
  objc_msgSend_lock(self, a2, v2);
  self->_cameraIsManipulated = 0;

  objc_msgSend_unlock(self, v4, v5);
}

- (id)hitTest:(CGPoint)test options:(id)options
{
  if (self->__drawableSize.width == 0.0)
  {
    return MEMORY[0x1E695E0F0];
  }

  else
  {
    return MEMORY[0x1EEE66B58](self, sel__hitTest_viewport_options_, options);
  }
}

- (id)hitTestWithSegmentFromPoint:(VFXRenderer *)self toPoint:(SEL)point options:(id)options
{
  v12 = v3;
  v13 = v4;
  v6 = objc_msgSend_world(self, point, options);
  v9 = objc_msgSend_rootNode(v6, v7, v8);

  return objc_msgSend_hitTestWithSegmentFromPoint_toPoint_options_(v9, v10, options, v12, v13);
}

- (id)_hitTest:(CGPoint)test viewport:(CGSize)viewport options:(id)options
{
  optionsCopy = options;
  height = viewport.height;
  width = viewport.width;
  x = test.x;
  y = test.y;
  v7 = objc_msgSend_world(self, a2, options);
  v10 = objc_msgSend_worldRef(v7, v8, v9);
  if (v10 && (v11 = CFRetain(v10)) != 0)
  {
    v13 = v11;
    sub_1AF1CEA20(v11, v12);
    v16 = objc_msgSend__engineContext(self, v14, v15);
    if (!v16)
    {
      goto LABEL_13;
    }

    v18 = v16;
    v19 = sub_1AF12F10C(v16, v17);
    if (!v19)
    {
      goto LABEL_13;
    }

    v20 = v19;
    if (optionsCopy)
    {
      if (!objc_msgSend_objectForKey_(optionsCopy, v17, @"kHitTestRootNode") || (v22 = objc_msgSend_objectForKey_(optionsCopy, v21, @"kHitTestRootNode"), v25 = objc_msgSend_nodeRef(v22, v23, v24), optionsCopy = objc_msgSend_mutableCopy(optionsCopy, v26, v27), objc_msgSend_setObject_forKey_(optionsCopy, v28, v25, @"kHitTestRootNode"), optionsCopy))
      {
        if (objc_msgSend_objectForKey_(optionsCopy, v21, @"kHitTestShowDebugInfo"))
        {
          optionsCopy = objc_msgSend_mutableCopy(optionsCopy, v29, v30);
          v31 = sub_1AF12EE9C(v18, 0);
          objc_msgSend_setObject_forKey_(optionsCopy, v32, v31, @"auth");
        }
      }
    }

    v33.f64[0] = x;
    v33.f64[1] = y;
    v34.f64[0] = width;
    v34.f64[1] = height;
    v35 = sub_1AF286C78(v13, v20, optionsCopy, COERCE_DOUBLE(vcvt_f32_f64(v33)), vcvt_hight_f32_f64(0, v34), v34);
    if (v35)
    {
      v36 = v35;
      v37 = objc_msgSend_hitTestResultsFromHitTestResultRef_(VFXHitTestResult, v17, v35);
      CFRelease(v36);
    }

    else
    {
LABEL_13:
      v37 = 0;
    }

    sub_1AF1CEA9C(v13, v17);
    CFRelease(v13);
  }

  else
  {
    v37 = 0;
  }

  if (v37)
  {
    return v37;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (BOOL)_isNodeInsideFrustum:(id)frustum withPointOfView:(id)view viewport:
{
  if ((view || (view = objc_msgSend_pointOfView(self, a2, frustum)) != 0) && objc_msgSend_getFrustum_withViewport_(view, a2, v41))
  {
    if (objc_msgSend_isPresentationObject(frustum, v5, v6))
    {
      v9 = objc_msgSend_nodeRef(frustum, v7, v8);
      v11 = sub_1AF1B9B04(v9, v10);
      v33 = v11[1];
      v34 = *v11;
      v35 = v11[2];
      v36 = v11[3];
      v14 = objc_msgSend_nodeRef(frustum, v12, v13);
      sub_1AF1B81E4(v14, 1, &v39);
    }

    else
    {
      objc_msgSend_worldTransform(frustum, v7, v8);
      v33 = v17;
      v34 = v16;
      v35 = v18;
      v36 = v19;
      DWORD2(v37[0]) = 0;
      *&v37[0] = 0;
      v38.i32[2] = 0;
      v38.i64[0] = 0;
      objc_msgSend_getBoundingBoxMin_max_(frustum, v20, v37, &v38);
      v21 = v37[0];
      v22 = v38;
      v21.i32[3] = 1.0;
      v22.i32[3] = 1.0;
      v23.i64[0] = 0x3F0000003F000000;
      v23.i64[1] = 0x3F0000003F000000;
      v39 = vmulq_f32(vaddq_f32(v21, v22), v23);
      v40 = vmulq_f32(vsubq_f32(v22, v21), v23);
    }

    for (i = 0; i != 6; ++i)
    {
      v41[i] = vnegq_f32(v41[i]);
    }

    v25 = 0;
    v15 = 0;
    v37[2] = v41[2];
    v37[3] = v41[3];
    v37[4] = v41[4];
    v37[5] = v41[5];
    v26 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v36, v35, v39, 2), v33, *v39.f32, 1), v34, v39.f32[0]);
    v26.i32[3] = v39.i32[3];
    v37[0] = v41[0];
    v37[1] = v41[1];
    v27 = v40;
    v27.i32[1] = v40.i32[0];
    v27.i32[2] = v40.i32[0];
    v28 = vmlaq_f32(vmlaq_f32(vmulq_f32(vabsq_f32(v33), vuzp2q_s32(vdupq_lane_s32(*v40.i8, 1), v40)), v27, vabsq_f32(v34)), vzip2q_s32(vtrn1q_s32(v40, v40), v40), vabsq_f32(v35));
    do
    {
      v29 = v37[v25];
      v30 = vmulq_f32(v26, v29);
      *v30.i8 = vadd_f32(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
      v31 = vmulq_f32(v28, vabsq_f32(v29));
      *v30.i8 = vadd_f32(vzip1_s32(*v30.i8, *v31.f32), vzip2_s32(*v30.i8, *v31.f32));
      if (*v30.i32 > (v31.f32[2] + *&v30.i32[1]))
      {
        break;
      }

      v15 = v25++ > 4;
    }

    while (v25 != 6);
  }

  else
  {
    return 0;
  }

  return v15;
}

- (BOOL)isNodeInsideFrustum:(id)frustum withPointOfView:(id)view
{
  if (self->__drawableSize.width == 0.0)
  {
    return 0;
  }

  else
  {
    return MEMORY[0x1EEE66B58](self, sel__isNodeInsideFrustum_withPointOfView_viewport_, frustum);
  }
}

- (id)_nodesInsideFrustumWithPointOfView:(id)view viewport:
{
  viewCopy = view;
  v7 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, view);
  if ((viewCopy || (viewCopy = objc_msgSend_pointOfView(self, v5, v6)) != 0) && objc_msgSend_world(self, v5, v6) && objc_msgSend_getFrustum_withViewport_(viewCopy, v8, v27, 0.0))
  {
    v11 = objc_msgSend_worldRef(self->_world, v9, v10);
    sub_1AF1CEA20(v11, v12);
    v14 = sub_1AF1D01D0(v11, v13);
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_1AF320C50;
    v23[3] = &unk_1E7A7EF20;
    v23[4] = v7;
    v15 = sub_1AF1271CC(v23, &v24);
    v18 = objc_msgSend_camera(viewCopy, v16, v17, v15);
    v24 = objc_msgSend_categoryBitMask(v18, v19, v20);
    DWORD1(v25) = 2;
    sub_1AF127B58(v14);
    sub_1AF1CEA9C(v11, v21);
  }

  return v7;
}

- (id)nodesInsideFrustumWithPointOfView:(id)view
{
  if (self->__drawableSize.width == 0.0)
  {
    return MEMORY[0x1E695E0F0];
  }

  else
  {
    return MEMORY[0x1EEE66B58](self, sel__nodesInsideFrustumWithPointOfView_viewport_, view);
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

  *(self + 81) = *(self + 81) & 0xFD | v3;
}

- (void)setJitteringEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 224) = *(self + 224) & 0xFD | v3;
}

- (void)setTemporalAntialiasingEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 224) = *(self + 224) & 0xFB | v3;
}

- (BOOL)additiveWritesToAlpha
{
  if (self->_legacyRenderer)
  {
    return (MEMORY[0x1EEE66B58])(self, sel__legacyAdditiveWritesToAlpha);
  }

  else
  {
    return *(self + 224) & 1;
  }
}

- (void)setAdditiveWritesToAlpha:(BOOL)alpha
{
  if (self->_legacyRenderer)
  {

    MEMORY[0x1EEE66B58](self, sel__setLegacyAdditiveWritesToAlpha_, alpha);
  }

  else
  {
    v5 = *(self + 224);
    if ((v5 & 1) != alpha)
    {
      v9 = v3;
      v10 = v4;
      *(self + 224) = v5 & 0xFE | alpha;
      renderingQueue = self->__renderingQueue;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_1AF320E74;
      v7[3] = &unk_1E7A7EF48;
      v7[4] = self;
      alphaCopy = alpha;
      dispatch_async(renderingQueue, v7);
    }
  }
}

- (void)setFrozen:(BOOL)frozen
{
  frozenCopy = frozen;
  objc_msgSend_lock(self, a2, frozen);
  if (frozenCopy)
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  *(self + 224) = *(self + 224) & 0xF7 | v7;

  objc_msgSend_unlock(self, v5, v6);
}

- (id)_copyPerformanceStatistics
{
  objc_msgSend_lock(self, a2, v2);
  v6 = objc_msgSend__engineContext(self, v4, v5);
  if (v6 && (v9 = sub_1AF12DE14(v6, v7)) != 0)
  {
    sub_1AF332294(v9, v13, 0);
    v11 = sub_1AF33248C(v13, 0, v10);
  }

  else
  {
    v11 = 0;
  }

  objc_msgSend_unlock(self, v7, v8);
  return v11;
}

- (void)_displayLinkStatsTick
{
  v3 = objc_msgSend__engineContext(self, a2, v2);
  if (v3)
  {
    v5 = sub_1AF12DE14(v3, v4);
    if (v5)
    {
      *(v5 + 184) = *(v5 + 184) + CACurrentMediaTime() - *(v5 + 208);
    }
  }
}

- (void)_displayLinkStatsTack
{
  v3 = objc_msgSend__engineContext(self, a2, v2);
  if (v3)
  {
    v5 = sub_1AF12DE14(v3, v4);
    if (v5)
    {
      *(v5 + 208) = CACurrentMediaTime();
    }
  }
}

- (void)setShowsStatistics:(BOOL)statistics
{
  if (statistics)
  {
    objc_msgSend_setupAuthoringEnvironment(self, a2, statistics);
  }

  self->_showStatistics = statistics;
}

- (id)statistics
{
  VFXSetPerformanceStatisticsEnabled(1);
  v5 = objc_msgSend__copyPerformanceStatistics(self, v3, v4);

  return v5;
}

- (BOOL)showsDebugUI
{
  v4 = objc_msgSend__engineContext(self, a2, v2);
  v6 = sub_1AF12F6A0(v4, v5);
  v7 = -801;
  if (v6 == 3)
  {
    v7 = -769;
  }

  return (self->_debugUIOptions & v7) != 0;
}

- (void)setRenderMode:(unint64_t)mode
{
  engineContext = self->_engineContext;
  self->_renderMode = mode;
  v5 = objc_msgSend_world(self, a2, mode);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1AF321138;
  v7[3] = &unk_1E7A7E6A0;
  v7[4] = engineContext;
  v7[5] = mode;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, v5, v7);
}

- (void)setRendererKind:(unint64_t)kind
{
  objc_msgSend_lock(self, a2, kind);
  engineContext = self->_engineContext;
  self->_rendererKind = kind;
  sub_1AF12E7B4(engineContext, kind);

  objc_msgSend_unlock(self, v6, v7);
}

- (void)setEmulateStereo:(BOOL)stereo
{
  engineContext = self->_engineContext;
  self->_emulateStereo = stereo;
  v5 = objc_msgSend_world(self, a2, stereo);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1AF32124C;
  v7[3] = &unk_1E7A7EF68;
  v7[4] = engineContext;
  stereoCopy = stereo;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, v5, v7);
}

- (void)setEmulateRRM:(BOOL)m
{
  engineContext = self->_engineContext;
  self->_emulateRRM = m;
  v5 = objc_msgSend_world(self, a2, m);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1AF321304;
  v7[3] = &unk_1E7A7EF68;
  v7[4] = engineContext;
  mCopy = m;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, v5, v7);
}

- (void)setSideBySideStereo:(BOOL)stereo
{
  stereoCopy = stereo;
  objc_msgSend_lock(self, a2, stereo);
  engineContext = self->_engineContext;
  self->_isSideBySideStereo = stereoCopy;
  sub_1AF12F824(engineContext, stereoCopy);

  objc_msgSend_unlock(self, v6, v7);
}

- (void)setDebugOptions:(unint64_t)options
{
  if (self->_debugOptions != options)
  {
    objc_msgSend_setupAuthoringEnvironment(self, a2, options);
    self->_debugOptions = options;
    objc_msgSend_lock(self, v6, v7);
    objc_msgSend_debugOptionsDidChange_(self->_authoringEnvironment, v8, options);
    sub_1AF12EE70(self->_engineContext, options);
    objc_msgSend_setDebugOptions_(self->_renderContext, v9, (options >> 5) & 2 | (options >> 3) & 4);
    v12 = objc_msgSend__showsAuthoringEnvironment(self, v10, v11);
    objc_msgSend_setShowsAuthoringEnvironment_(self->_renderContext, v13, v12);

    objc_msgSend_unlock(self, v14, v15);
  }
}

- (unint64_t)debugUIOptions
{
  objc_msgSend_lock(self, a2, v2);
  v4 = sub_1AF12EE78(self->_engineContext);
  objc_msgSend_unlock(self, v5, v6);
  return v4;
}

- (void)setDebugUIOptions:(unint64_t)options
{
  objc_msgSend_lock(self, a2, options);
  self->_debugUIOptions = options;
  sub_1AF12EE80(self->_engineContext, options);

  objc_msgSend_unlock(self, v5, v6);
}

- (BOOL)_enableARMode
{
  renderContext = self->_renderContext;
  if (renderContext)
  {
    LOBYTE(renderContext) = objc_msgSend_enableARMode(renderContext, a2, v2);
  }

  return renderContext;
}

- (void)set_enableARMode:(BOOL)mode
{
  renderContext = self->_renderContext;
  if (renderContext)
  {
    MEMORY[0x1EEE66B58](renderContext, sel_setEnableARMode_, mode);
  }
}

- (BOOL)_shouldDelegateARCompositing
{
  renderContext = self->_renderContext;
  if (renderContext)
  {
    LOBYTE(renderContext) = (MEMORY[0x1EEE66B58])(renderContext, sel_shouldDelegateARCompositing);
  }

  return renderContext;
}

- (void)set_shouldDelegateARCompositing:(BOOL)compositing
{
  renderContext = self->_renderContext;
  if (renderContext)
  {
    MEMORY[0x1EEE66B58](renderContext, sel_setShouldDelegateARCompositing_, compositing);
  }
}

- (void)setupAuthoringEnvironment
{
  if (!self->_authoringEnvironment)
  {
    objc_msgSend_lock(self, a2, v2);
    if (self->_privateRendererOwner)
    {
      IfNeeded = objc_msgSend_authoringEnvironmentForWorldRenderer_createIfNeeded_(VFXAuthoringEnvironment, v5, self->_privateRendererOwner, 1);
    }

    else
    {
      IfNeeded = objc_msgSend_authoringEnvironmentForWorldRenderer_createIfNeeded_(VFXAuthoringEnvironment, v5, self, 1);
    }

    self->_authoringEnvironment = IfNeeded;

    objc_msgSend_unlock(self, v7, v8);
  }
}

- (CGRect)currentViewport
{
  v9 = *MEMORY[0x1E695F058];
  v10 = *(MEMORY[0x1E695F058] + 16);
  v3 = objc_msgSend__engineContext(self, a2, v2);
  v4 = v9;
  v5 = v10;
  if (v3)
  {
    v6 = sub_1AF130548(v3);
    v5 = vcvt_hight_f64_f32(v6);
    v4 = vcvtq_f64_f32(v6.n128_u64[0]);
  }

  v7 = v4.f64[1];
  v8 = v5.f64[1];
  result.size.width = v5.f64[0];
  result.origin.x = v4.f64[0];
  result.size.height = v8;
  result.origin.y = v7;
  return result;
}

- (CGRect)viewport
{
  (MEMORY[0x1EEE66B58])(self, sel_currentViewport);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)set_viewport:(VFXRenderer *)self
{
  v11 = v3;
  objc_msgSend_lock(self, a2, v2);
  *self->__viewport = v11;
  v7 = objc_msgSend__engineContext(self, v5, v6);
  if (v7)
  {
    v10 = v7;
    sub_1AF1305D0(v7, *vextq_s8(v11, v11, 8uLL).i64);
    sub_1AF130550(v10, v11);
  }

  objc_msgSend_unlock(self, v8, v9);
}

- (void)set_drawableSafeAreaInsets:(VFXRenderer *)self
{
  v5 = v3;
  *self->__drawableSafeAreaInsets = v3;
  v4 = objc_msgSend__engineContext(self, a2, v2);
  if (v4)
  {

    sub_1AF1305F0(v4, v5);
  }
}

- (VFXNode)audioListener
{
  v3 = sub_1AF12DDCC(self->_engineContext, a2);
  v5 = v3;
  if (v3)
  {
    sub_1AF1CEA20(v3, v4);
  }

  v6 = sub_1AF15AC20(self->_engineContext);
  v8 = sub_1AF16CDEC(v6);
  if (v5)
  {
    sub_1AF1CEA9C(v5, v7);
  }

  return v8;
}

- (void)setAudioListener:(id)listener
{
  world = self->_world;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF321778;
  v4[3] = &unk_1E7A7E220;
  v4[4] = self;
  v4[5] = listener;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, world, v4);
}

- (void)_renderWorldOrRemoteData
{
  v3 = sub_1AF12DDCC(self->_engineContext, a2);
  v4 = sub_1AF131088(self->_engineContext);
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    v6 = sub_1AF12EE9C(self->_engineContext, 0);
    if (v6)
    {
      sub_1AF0FCEEC(v6);
    }

    v8 = sub_1AF12DE14(self->_engineContext, v7);
    v9 = CACurrentMediaTime();
    prof_beginFlame("Apply notification queue", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 3235);
    sub_1AF130920(self->_engineContext, v10);
    *(v8 + 152) = *(v8 + 152) + CACurrentMediaTime() - v9;
    prof_endFlame();
    sub_1AF12DEB0(self->_engineContext, v11);
    sub_1AF12DC44(self->_engineContext, v12);
    if (self->_viewpoints)
    {
      viewpointCoordinateSpace = self->_viewpointCoordinateSpace;
    }

    else
    {
      viewpointCoordinateSpace = 2;
    }

    sub_1AF130840(self->_engineContext, viewpointCoordinateSpace);
    *&v16 = sub_1AF12FBD8(self->_engineContext, v14).n128_u64[0];
    viewpoints = self->_viewpoints;
    if (viewpoints)
    {
      v18 = objc_msgSend_objectAtIndexedSubscript_(viewpoints, v15, 0, v16);
      v21 = objc_msgSend_passDescriptor(v18, v19, v20);
      v24 = objc_msgSend_colorAttachments(v21, v22, v23);
      v26 = objc_msgSend_objectAtIndexedSubscript_(v24, v25, 0);
      v29 = objc_msgSend_texture(v26, v27, v28);
      v32 = objc_msgSend_textureType(v29, v30, v31);
      v35 = v32;
      v38 = v32 == 5 || v32 == 3 || v32 == 8;
      v39 = v38 & (objc_msgSend_features(self->_renderContext, v33, v34) >> 5);
      v42 = (v35 == 2) & (objc_msgSend_features(self->_renderContext, v40, v41) >> 7);
      v46 = objc_msgSend_count(self->_viewpoints, v43, v44);
      if (v46)
      {
        v47 = 0;
        v48 = 0;
        v49 = 1;
        do
        {
          engineContext = self->_engineContext;
          v51 = objc_msgSend_objectAtIndexedSubscript_(self->_viewpoints, v45, v47);
          v54 = objc_msgSend_passDescriptor(v51, v52, v53);
          sub_1AF1307E0(engineContext, v54, v48);
          if (v49)
          {
            v55 = objc_msgSend_objectAtIndexedSubscript_(self->_viewpoints, v45, v47);
            v58 = objc_msgSend_passDescriptor(v55, v56, v57);
            v61 = objc_msgSend_colorAttachments(v58, v59, v60);
            v63 = objc_msgSend_objectAtIndexedSubscript_(v61, v62, 0);
            v49 = v29 == objc_msgSend_texture(v63, v64, v65);
          }

          else
          {
            v49 = 0;
          }

          v47 = ++v48;
        }

        while (v46 > v48);
      }

      else
      {
        v49 = 1;
      }

      if (v42)
      {
        v66 = 2;
      }

      else
      {
        v66 = v39;
      }

      if (((v46 > 1 && v49) & (v42 | v39)) != 0)
      {
        v67 = v66;
      }

      else
      {
        v67 = 0;
      }

      sub_1AF1307A8(self->_engineContext, v67);
      v68 = self->_engineContext;
      v71 = objc_msgSend_count(self->_viewpoints, v69, v70);
      sub_1AF1307D8(v68, v71);
      if (v46)
      {
        v73 = 0;
        v74 = 0;
        do
        {
          v75 = objc_msgSend_objectAtIndexedSubscript_(self->_viewpoints, v72, v73);
          v78 = 0uLL;
          if (v75)
          {
            objc_msgSend_viewport(v75, v76, v77, 0.0);
            v78 = vcvt_hight_f32_f64(vcvt_f32_f64(v99), v100);
          }

          sub_1AF130558(self->_engineContext, v74, v78);
          v80 = objc_msgSend_objectAtIndexedSubscript_(self->_viewpoints, v79, v73, 0, 0, 0, 0, 0, 0, 0, 0);
          objc_msgSend_viewMatrix(v80, v81, v82);
          v99 = v83;
          v100 = v84;
          v101 = v85;
          v102 = v86;
          *&v87 = sub_1AF12FB54(self->_engineContext, 1, &v99, v74).n128_u64[0];
          v89 = objc_msgSend_objectAtIndexedSubscript_(self->_viewpoints, v88, v73, v87);
          objc_msgSend_projectionMatrix(v89, v90, v91);
          v99 = v92;
          v100 = v93;
          v101 = v94;
          v102 = v95;
          sub_1AF12FB54(self->_engineContext, 0, &v99, v74);
          v73 = (v74 + 1);
          v74 = v73;
        }

        while (v46 > v73);
      }
    }

    else
    {
      sub_1AF130550(self->_engineContext, *self->__viewport);
    }

    if (self->_renderContext)
    {
      v96 = sub_1AF12E8A4(self->_engineContext);
      nullsub_106();
      sub_1AF270460(v96, v97, v98);
    }
  }
}

- (BOOL)_needsRedrawAsap
{
  if ((objc_msgSend__needsRepetitiveRedraw(self, a2, v2) & 1) == 0)
  {
    if (sub_1AF12ED90(self->_engineContext, v4) == INFINITY)
    {
      v5 = sub_1AF12DDCC(self->_engineContext, v6);
      if (!v5)
      {
        return v5;
      }

      v8 = v5;
      v9 = sub_1AF12F10C(self->_engineContext, v7);
      if (v9)
      {
        v11 = sub_1AF1BB260(v9, v10);
        if (v11)
        {
          v13 = v11;
          if (sub_1AF15D690(v11, v12) && (sub_1AF15D63C(v13, v14) & 1) != 0)
          {
            v15 = sub_1AF15C5B4(v13, v14);
            v17 = sub_1AF1614F0(v15, v16);
            v19 = sub_1AF160E58(v15, v18);
            if (v17 < v19)
            {
              v19 = v17;
            }

            v20 = v19;
            v21 = v19 + 1.0;
            if (v20 <= 0.01)
            {
              v21 = 1.01;
            }

            v23 = (5.0 / logf(v21) * 60.0);
            if (!v23)
            {
              goto LABEL_20;
            }
          }

          else
          {
            if ((sub_1AF15CEC0(v13, v14) & 1) == 0)
            {
              goto LABEL_20;
            }

            v23 = 2;
          }

          adaptativeState0 = self->_adaptativeState0;
          if (adaptativeState0 != sub_1AF1CFF1C(v8, v22))
          {
            self->_adaptativeState0 = sub_1AF1CFF1C(v8, v25);
            self->_adaptativeEndFrame = sub_1AF1CFE84(v8, v26) + v23;
          }

          if (sub_1AF1CFE84(v8, v25) < self->_adaptativeEndFrame)
          {
            goto LABEL_2;
          }
        }
      }
    }

LABEL_20:
    LOBYTE(v5) = 0;
    return v5;
  }

LABEL_2:
  LOBYTE(v5) = 1;
  return v5;
}

- (double)_computeNextFrameTime
{
  v3 = sub_1AF12ED90(self->_engineContext, a2);
  if (objc_msgSend__needsRedrawAsap(self, v4, v5))
  {
    v6 = CACurrentMediaTime();
    if (v3 >= v6)
    {
      return v6;
    }
  }

  return v3;
}

- (void)_startCaptureIfNeeded
{
  if (self->_captureMetalFrameStarted || !self->_shouldCaptureNextMetalFrame)
  {
    return;
  }

  v4 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], a2, v2);
  v7 = objc_msgSend_environment(v4, v5, v6);
  if (objc_msgSend_objectForKeyedSubscript_(v7, v8, @"XPC_SERVICE_NAME"))
  {
    goto LABEL_4;
  }

  v52 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v9, v10);
  v55 = objc_msgSend_environment(v52, v53, v54);
  v57 = objc_msgSend_objectForKeyedSubscript_(v55, v56, @"MTLCAPTURE_DESTINATION_DEVELOPER_TOOLS_ENABLE");
  if (objc_msgSend_isEqual_(v57, v58, @"1"))
  {
    v11 = 0;
    v12 = 1;
    goto LABEL_6;
  }

  v61 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v59, v60);
  v64 = objc_msgSend_environment(v61, v62, v63);
  v66 = objc_msgSend_objectForKeyedSubscript_(v64, v65, @"MTL_CAPTURE_ENABLED");
  isEqual = objc_msgSend_isEqual_(v66, v67, @"1");
  if (isEqual)
  {
LABEL_4:
    v11 = 1;
  }

  else
  {
    v11 = 1;
    if ((byte_1EB658CD0 & 1) == 0)
    {
      byte_1EB658CD0 = 1;
      v70 = sub_1AF0D5194(isEqual, v69);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF7F08();
      }
    }
  }

  v12 = 2;
LABEL_6:
  v13 = objc_alloc_init(MEMORY[0x1E6973FF8]);
  v16 = objc_msgSend_commandQueue(self->_renderContext, v14, v15);
  objc_msgSend_setCaptureObject_(v13, v17, v16);
  if (v11)
  {
    v20 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v18, v19);
    v23 = objc_msgSend_temporaryDirectory(v20, v21, v22);
    v25 = objc_msgSend_URLByAppendingPathComponent_(v23, v24, @"vfx-capture.gputrace");
    objc_msgSend_setOutputURL_(v13, v26, v25);
  }

  v71 = 0;
  v27 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v18, v19);
  v30 = objc_msgSend_outputURL(v13, v28, v29);
  v33 = objc_msgSend_path(v30, v31, v32);
  if (objc_msgSend_fileExistsAtPath_(v27, v34, v33))
  {
    v37 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v35, v36);
    v40 = objc_msgSend_outputURL(v13, v38, v39);
    v42 = objc_msgSend_removeItemAtURL_error_(v37, v41, v40, &v71);
    if (v71)
    {
      v43 = sub_1AF0D5194(v42, v35);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF7F44();
      }
    }
  }

  objc_msgSend_setDestination_(v13, v35, v12);
  v71 = 0;
  v46 = objc_msgSend_sharedCaptureManager(MEMORY[0x1E6974000], v44, v45);
  started = objc_msgSend_startCaptureWithDescriptor_error_(v46, v47, v13, &v71);
  if (v71)
  {
    v51 = sub_1AF0D5194(started, v49);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF7F44();
    }
  }

  else
  {
    objc_msgSend_outputURL(v13, v49, v50);
    *&self->_shouldCaptureNextMetalFrame = 256;
  }
}

- (void)_stopCapture
{
  if (self->_captureMetalFrameStarted)
  {
    v4 = objc_msgSend_sharedCaptureManager(MEMORY[0x1E6974000], a2, v2);
    objc_msgSend_stopCapture(v4, v5, v6);
    self->_captureMetalFrameStarted = 0;
  }
}

- (void)_render
{
  if ((*(self + 81) & 4) != 0)
  {
    drawableSize = self->__drawableSize;
    v55 = vcvt_hight_f32_f64(0, drawableSize);
    sub_1AF1305D0(self->_engineContext, COERCE_DOUBLE(vcvt_f32_f64(drawableSize)));
    sub_1AF130550(self->_engineContext, v55);
  }

  objc_msgSend_lock(self, a2, v2, *&v55);
  v7 = sub_1AF130770(self->_engineContext, v5, v6);
  prof_beginFlameSmallData("[VFXRenderer _render]", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXRenderer.mm", 3449, v7 | 0x300000000);
  v9 = 0.0;
  if (prof_getEnabled())
  {
    v9 = CACurrentMediaTime();
  }

  v10 = sub_1AF12DDCC(self->_engineContext, v8);
  if (self->_engineContext && self->_renderContext)
  {
    v13 = v10;
    if (v10)
    {
      if ((*(self + 81) & 8) != 0)
      {
        isJitteringEnabled = 0;
      }

      else
      {
        isJitteringEnabled = objc_msgSend_isJitteringEnabled(self, v11, v12);
      }

      sub_1AF1CEA20(v13, v11);
      v19 = sub_1AF1CF8AC(v13, v18);
      if (v19)
      {
        v17 = sub_1AF0FB884(v19);
        objc_msgSend_beginTransaction(v17, v22, v23);
      }

      else
      {
        v17 = 0;
      }

      v24 = objc_msgSend_stats(self->_renderContext, v20, v21);
      if ((*(self + 224) & 8) != 0)
      {
        sub_1AF134B58(v24, v25);
      }

      else
      {
        *(v24 + 12) = 0;
      }

      sub_1AF1CFCF4(v13, v25);
      if (isJitteringEnabled)
      {
        isJitteringEnabled = 1;
        sub_1AF1309A4(self->_engineContext, 1);
      }
    }

    else
    {
      isJitteringEnabled = 0;
      v17 = 0;
    }

    objc_msgSend__renderWorldOrRemoteData(self, v11, v12);
    if (isJitteringEnabled)
    {
      sub_1AF1309A4(self->_engineContext, 1);
      objc_msgSend__endFrame(self, v28, v29);
      for (i = 0; ; ++i)
      {
        objc_msgSend__beginFrame(self, v30, v31);
        sub_1AF1309DC(self->_engineContext, i == 80);
        sub_1AF1309CC(self->_engineContext, i);
        objc_msgSend__renderWorldOrRemoteData(self, v33, v34);
        if (i == 80)
        {
          break;
        }

        objc_msgSend__endFrame(self, v35, v36);
      }

      sub_1AF1309A4(self->_engineContext, 0);
    }

    if (v13)
    {
      sub_1AF1CFD54(v13, v26);
      objc_msgSend__computeNextFrameTime(self, v37, v38);
      self->_nextFrameTime = v39;
      objc_msgSend_endFrameWorldSpecifics(self->_renderContext, v40, v41);
      objc_msgSend_endTransaction(v17, v42, v43);
      if (prof_getEnabled())
      {
        v45 = sub_1AF1D13B8(v13, v44);
        v47 = sub_1AF1D1448(v13, v46);
        v48 = CACurrentMediaTime();
        vfx_counters_update(v45, v47, v49, v50, v51, v52, v53, v54, v48 - v9);
      }

      sub_1AF1CEA9C(v13, v44);
    }

    objc_msgSend_drawStatisticsIfNeeded(self, v26, v27);
  }

  else
  {
    self->_nextFrameTime = INFINITY;
    objc_msgSend__clearBackBuffer(self, v11, v12);
  }

  objc_msgSend_unlock(self, v15, v16);

  prof_endFlame();
}

- (void)render
{
  objc_msgSend_lock(self, a2, v2);
  objc_msgSend__beginFrame(self, v4, v5);
  v6 = sub_1AF12DE5C(self->_engineContext);
  v8 = sub_1AF0D5194(v6, v7);
  if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v8;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v6, "RenderFrame", &unk_1AFF70A1D, buf, 2u);
    }
  }

  v12 = objc_msgSend__render(self, v9, v10);
  v14 = sub_1AF0D5194(v12, v13);
  if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v17 = v14;
    if (os_signpost_enabled(v14))
    {
      *v20 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v17, OS_SIGNPOST_INTERVAL_END, v6, "RenderFrame", &unk_1AFF70A1D, v20, 2u);
    }
  }

  objc_msgSend__endFrame(self, v15, v16);
  objc_msgSend_unlock(self, v18, v19);
}

- (void)renderWithTextureAttachmentProvider:(id)provider options:(id)options
{
  objc_msgSend_lock(self, a2, provider);
  objc_msgSend__startCaptureIfNeeded(self, v7, v8);
  v104 = *self->__viewport;
  width = self->__drawableSize.width;
  height = self->__drawableSize.height;
  viewpointCoordinateSpace = self->_viewpointCoordinateSpace;
  isSideBySideStereo = objc_msgSend_isSideBySideStereo(options, v12, v13);
  objc_msgSend_setSideBySideStereo_(self, v15, isSideBySideStereo);
  objc_msgSend_setAttachmentProvider_(self->_renderContext, v16, provider);
  v19 = objc_msgSend_commandBuffer(options, v17, v18);
  objc_msgSend_setClientCommandBuffer_(self->_renderContext, v20, v19);
  v23 = objc_msgSend_rayMap(options, v21, v22);
  objc_msgSend_setRayMap_(self->_renderContext, v24, v23);
  v27 = objc_msgSend_rasterizationRateMap(options, v25, v26);
  objc_msgSend_setRasterizationRateMap_(self->_renderContext, v28, v27);
  v31 = objc_msgSend_depthPixelFormat(self->_renderContext, v29, v30);
  v34 = objc_msgSend_stencilPixelFormat(self->_renderContext, v32, v33);
  v37 = objc_msgSend_depthPixelFormat(options, v35, v36);
  if (VFXMTLTexturePixelFormatIsDepth(v37))
  {
    v40 = objc_msgSend_depthPixelFormat(options, v38, v39);
    objc_msgSend_setDepthPixelFormat_(self->_renderContext, v41, v40);
  }

  v42 = objc_msgSend_stencilPixelFormat(options, v38, v39);
  if (VFXMTLTexturePixelFormatIsStencil(v42))
  {
    v45 = objc_msgSend_stencilPixelFormat(options, v43, v44);
    objc_msgSend_setStencilPixelFormat_(self->_renderContext, v46, v45);
  }

  if (objc_msgSend_viewpoints(options, v43, v44))
  {
    self->_viewpoints = objc_msgSend_viewpoints(options, v47, v48);
    self->_viewpointCoordinateSpace = objc_msgSend_coordinateSpace(options, v49, v50);
    v53 = objc_msgSend_finalColorDescriptor(provider, v51, v52);
    v55 = objc_msgSend_objectAtIndexedSubscript_(self->_viewpoints, v54, 0);
    if (v55)
    {
      objc_msgSend_viewport(v55, v56, v57);
      v58 = vcvt_hight_f32_f64(vcvt_f32_f64(0), 0);
    }

    else
    {
      v58 = 0uLL;
    }

    v103 = v58;
    if (v53)
    {
      *v71.i32 = objc_msgSend_width(v53, v56, v57);
      v102 = v71;
      v74 = objc_msgSend_height(v53, v72, v73);
      v68 = v102;
      *&v68.i32[1] = v74;
    }

    else
    {
      v68 = vextq_s8(v58, v58, 8uLL);
    }

    v69 = *v68.i32;
    if (self->__drawableSize.width == *v68.i32)
    {
      v70 = *&v68.i32[1];
      if (self->__drawableSize.height == *&v68.i32[1])
      {
        goto LABEL_18;
      }
    }

    else
    {
      v70 = *&v68.i32[1];
    }

    goto LABEL_17;
  }

  v59 = objc_msgSend_finalColorDescriptor(provider, v47, v48);
  *v62.i32 = objc_msgSend_width(v59, v60, v61);
  v102 = v62;
  v65 = objc_msgSend_height(v59, v63, v64);
  v66 = v65;
  v67.n128_u64[0] = 0;
  v67.n128_u64[1] = __PAIR64__(v65, v102.u32[0]);
  v103 = v67;
  v68 = v102;
  *&v68.i32[1] = v65;
  v69 = *v102.i32;
  if (self->__drawableSize.width != *v102.i32)
  {
    v70 = v66;
LABEL_17:
    v102 = v68;
    sub_1AF12E8B4(self->_engineContext);
    sub_1AF12E8AC(self->_engineContext);
    v68.i64[0] = v102.i64[0];
    goto LABEL_18;
  }

  v70 = v66;
  if (self->__drawableSize.height != v66)
  {
    goto LABEL_17;
  }

LABEL_18:
  self->__drawableSize.width = v69;
  self->__drawableSize.height = v70;
  *self->__viewport = v103;
  sub_1AF1305D0(self->_engineContext, *v68.i64);
  sub_1AF130550(self->_engineContext, v103);
  engineContext = self->_engineContext;
  objc_msgSend__contentsScaleFactor(self, v76, v77);
  sub_1AF130850(engineContext, v78);
  lastOptionsHash = self->_lastOptionsHash;
  if (lastOptionsHash != objc_msgSend_hash(options, v80, v81))
  {
    sub_1AF12E8AC(self->_engineContext);
    self->_lastOptionsHash = objc_msgSend_hash(options, v83, v84);
  }

  objc_msgSend_beginFrame_(self->_renderContext, v82, 0, *&v102);
  objc_msgSend__render(self, v85, v86);
  renderContext = self->_renderContext;
  v90 = objc_msgSend_waitUntilCompleted(options, v88, v89);
  objc_msgSend_endFrameWaitingUntilCompleted_status_error_(renderContext, v91, v90, 0, 0);
  objc_msgSend_setAttachmentProvider_(self->_renderContext, v92, 0);
  self->_viewpointCoordinateSpace = viewpointCoordinateSpace;
  objc_msgSend_setClientCommandBuffer_(self->_renderContext, v93, 0);
  objc_msgSend_setRayMap_(self->_renderContext, v94, 0);
  objc_msgSend_setRasterizationRateMap_(self->_renderContext, v95, 0);
  objc_msgSend_setDepthPixelFormat_(self->_renderContext, v96, v31);
  objc_msgSend_setStencilPixelFormat_(self->_renderContext, v97, v34);
  if (self->__drawableSize.width != width || self->__drawableSize.height != height)
  {
    sub_1AF12E8B4(self->_engineContext);
    sub_1AF12E8AC(self->_engineContext);
  }

  self->__drawableSize.width = width;
  self->__drawableSize.height = height;
  *self->__viewport = v104;
  sub_1AF130550(self->_engineContext, v104);
  sub_1AF1305D0(self->_engineContext, *vextq_s8(*self->__viewport, *self->__viewport, 8uLL).i64);
  self->_viewpoints = 0;
  objc_msgSend__stopCapture(self, v98, v99);
  objc_msgSend_unlock(self, v100, v101);
}

- (void)renderToTexture:(id)texture options:(id)options
{
  objc_msgSend_lock(self, a2, texture);
  v21 = *self->__viewport;
  v7 = [VFXRenderToTextureFinalAttachmentProvider alloc];
  v9 = objc_msgSend_initWithTexture_(v7, v8, texture);
  shouldLoadFinalColor = objc_msgSend_shouldLoadFinalColor(options, v10, v11);
  objc_msgSend_setShouldLoad_(v9, v13, shouldLoadFinalColor);
  engineContext = self->_engineContext;
  v17 = objc_msgSend_disableCoreRendering(options, v15, v16);
  sub_1AF131174(engineContext, v17);
  objc_msgSend_renderWithTextureAttachmentProvider_options_(self, v18, v9, options);

  *self->__viewport = v21;
  sub_1AF130550(self->_engineContext, v21);
  sub_1AF1305D0(self->_engineContext, *vextq_s8(*self->__viewport, *self->__viewport, 8uLL).i64);

  objc_msgSend_unlock(self, v19, v20);
}

- (void)renderWithViewport:(CGRect)viewport commandBuffer:(id)buffer passDescriptor:(id)descriptor
{
  objc_msgSend_commandQueue(buffer, a2, buffer);

  MEMORY[0x1EEE66B58](self, sel__renderWithViewport_encoder_passDescriptor_commandQueue_commandBuffer_, 0);
}

- (void)_renderWithViewport:(CGRect)viewport encoder:(id)encoder passDescriptor:(id)descriptor commandQueue:(id)queue commandBuffer:(id)buffer
{
  y = viewport.origin.y;
  width = viewport.size.width;
  v82 = *&viewport.size.height;
  x = viewport.origin.x;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v15 = sub_1AF0D5194(isKindOfClass, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF7FBC(v15, v13, v14, v16, v17, v18, v19, v20);
    }
  }

  v21 = objc_msgSend_colorAttachments(descriptor, v13, v14, v82);
  v23 = objc_msgSend_objectAtIndexedSubscript_(v21, v22, 0);
  v26 = objc_msgSend_texture(v23, v24, v25);
  v29 = objc_msgSend_sampleCount(v26, v27, v28);
  if (v29 == 2)
  {
    objc_msgSend_setAntialiasingMode_(self, v30, 1);
  }

  else
  {
    objc_msgSend_setAntialiasingMode_(self, v30, 2 * (v29 == 4));
  }

  objc_msgSend_setClientRenderPassDescriptor_(self->_renderContext, v31, descriptor);
  v34 = objc_msgSend_depthAttachment(descriptor, v32, v33);
  v37 = objc_msgSend_texture(v34, v35, v36);
  if (encoder)
  {
    if (v37)
    {
      v40 = objc_msgSend_depthAttachment(descriptor, v38, v39);
      v43 = objc_msgSend_clearDepth(v40, v41, v42);
      if (v44 == 1.0 && (byte_1EB658CD1 & 1) == 0)
      {
        byte_1EB658CD1 = 1;
        v45 = sub_1AF0D5194(v43, v38);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF8034();
        }
      }
    }
  }

  objc_msgSend_setClientCommandQueue_(self->_renderContext, v38, queue);
  objc_msgSend_setClientRenderCommandEncoder_(self->_renderContext, v46, encoder);
  objc_msgSend_setClientCommandBuffer_(self->_renderContext, v47, buffer);
  v50 = objc_msgSend_colorAttachments(descriptor, v48, v49);
  v52 = objc_msgSend_objectAtIndexedSubscript_(v50, v51, 0);
  v57 = objc_msgSend_resolveTexture(v52, v53, v54);
  if (!v57)
  {
    v58 = objc_msgSend_colorAttachments(descriptor, v55, v56);
    v60 = objc_msgSend_objectAtIndexedSubscript_(v58, v59, 0);
    v57 = objc_msgSend_texture(v60, v61, v62);
  }

  v63.f64[0] = width;
  v64.f64[0] = x;
  v63.f64[1] = v83;
  v64.f64[1] = y;
  v65 = vcvt_hight_f32_f64(vcvt_f32_f64(v64), v63);
  v86 = v65;
  if (v57)
  {
    v88 = objc_msgSend_width(v57, v55, v56);
    v68 = objc_msgSend_height(v57, v66, v67);
    *&v69 = v88;
    *(&v69 + 1) = v68;
  }

  else
  {
    v69 = vextq_s8(v65, v65, 8uLL).u64[0];
  }

  v70 = *&v69;
  v89 = *&v69;
  if (self->__drawableSize.width == *&v69)
  {
    v71 = *(&v69 + 1);
    if (self->__drawableSize.height == *(&v69 + 1))
    {
      goto LABEL_22;
    }
  }

  else
  {
    v71 = *(&v69 + 1);
  }

  sub_1AF12E8B4(self->_engineContext);
  sub_1AF12E8AC(self->_engineContext);
LABEL_22:
  self->__drawableSize.width = v70;
  self->__drawableSize.height = v71;
  *self->__viewport = v86;
  sub_1AF130550(self->_engineContext, v86);
  sub_1AF1305D0(self->_engineContext, v89);
  started = objc_msgSend__startCaptureIfNeeded(self, v72, v73);
  if (v57)
  {
    objc_msgSend_beginFrame_(self->_renderContext, v75, v57);
    objc_msgSend__render(self, v76, v77);
    objc_msgSend_endFrameWaitingUntilCompleted_status_error_(self->_renderContext, v78, 0, 0, 0);
  }

  else
  {
    v81 = sub_1AF0D5194(started, v75);
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF8070();
    }
  }

  objc_msgSend__stopCapture(self, v79, v80);
}

- (void)renderWithCommandBuffer:(id)buffer viewPoints:(id)points mode:(unint64_t)mode
{
  self->_viewpoints = points;
  self->_viewpointCoordinateSpace = mode;
  if (points)
  {
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v7 = objc_msgSend_objectAtIndexedSubscript_(points, a2, 0);
    if (v7)
    {
      objc_msgSend_viewport(v7, v8, v9);
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
      v15 = 0u;
    }

    v10 = objc_msgSend_objectAtIndexedSubscript_(self->_viewpoints, v8, 0, v15, v16, v17);
    v13 = objc_msgSend_passDescriptor(v10, v11, v12);
    objc_msgSend_renderWithViewport_commandBuffer_passDescriptor_(self, v14, buffer, v13, 0.0, 0.0, 0.0, 0.0);
    self->_viewpoints = 0;
  }
}

- (id)makeCompatibleRenderer
{
  v4 = objc_msgSend_device(self, a2, v2);
  v6 = objc_msgSend_rendererWithDevice_options_(VFXRenderer, v5, v4, 0);
  v9 = objc_msgSend_antialiasingMode(self, v7, v8);
  objc_msgSend_setAntialiasingMode_(v6, v10, v9);
  v13 = objc_msgSend_pixelFormat(self, v11, v12);
  objc_msgSend_setPixelFormat_(v6, v14, v13);
  v17 = objc_msgSend_backgroundColor(self, v15, v16);
  objc_msgSend_setBackgroundColor_(v6, v18, v17);
  v21 = objc_msgSend_debugOptions(self, v19, v20);
  objc_msgSend_setDebugOptions_(v6, v22, v21);
  v25 = objc_msgSend_rendererKind(self, v23, v24);
  objc_msgSend_setRendererKind_(v6, v26, v25);
  objc_msgSend__backingSize(self, v27, v28);
  objc_msgSend__setBackingSize_(v6, v29, v30);
  objc_msgSend__viewport(self, v31, v32);
  objc_msgSend_set_viewport_(v6, v33, v34);
  objc_msgSend__contentsScaleFactor(self, v35, v36);
  objc_msgSend__setContentsScaleFactor_(v6, v37, v38);
  return v6;
}

- (void)transferRenderGraphResourcesFrom:(id)from
{
  sub_1AF12E8A4(self->_engineContext);
  v6 = objc_msgSend__engineContext(from, v4, v5);
  sub_1AF12E8A4(v6);

  sub_1AF270DD0();
}

- (id)_newRenderTargetWithSize:(CGSize)size
{
  memset(v8, 0, sizeof(v8));
  CFXTextureDescriptorMake2D(size.width, size.height, self->_pixelFormat, v8);
  *&v8[12] = *&v8[12] & 0xFFFF8F00FFFFFFFFLL | 0x400000000;
  v4 = sub_1AF13099C(self->_engineContext);
  v6 = *v8;
  v7 = *&v8[16];
  return CFXGPUDeviceCreateTexture(v4, &v6);
}

- (id)_newLayeredRenderTargetWithSize:(CGSize)size arrayLength:(unsigned int)length
{
  memset(v9, 0, sizeof(v9));
  CFXTextureDescriptorMake2DArray(size.width, size.height, *&length, self->_pixelFormat, v9);
  *&v9[12] = *&v9[12] & 0xFFFF8F00FFFFFFFFLL | 0x400000000;
  v5 = sub_1AF13099C(self->_engineContext);
  v7 = *v9;
  v8 = *&v9[16];
  return CFXGPUDeviceCreateTexture(v5, &v7);
}

- (BOOL)prepareObject:(id)object shouldAbortBlock:(id)block
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = isKindOfClass;
  if (isKindOfClass)
  {
    v10 = sub_1AF12DE5C(self->_engineContext);
    v12 = sub_1AF0D5194(v10, v11);
    if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = v12;
      if (os_signpost_enabled(v12))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PrepareObject", &unk_1AFF70A1D, buf, 2u);
      }
    }

    objc_msgSend_flush(VFXTransaction, v13, v14);
    v18 = objc_msgSend_worldRef(object, v16, v17);
    objc_msgSend_lock(self, v19, v20);
    v23 = objc_msgSend_world(self, v21, v22);
    v26 = objc_msgSend_pointOfView(self, v24, v25);
    objc_msgSend_setWorld_(self, v27, object);
    sub_1AF1CEA20(v18, v28);
    v31 = objc_msgSend__engineContext(self, v29, v30);
    sub_1AF130454(v31, block);
    v34 = objc_msgSend_immediateMode(VFXTransaction, v32, v33);
    objc_msgSend_setImmediateMode_(VFXTransaction, v35, 1);
    v38 = objc_msgSend_presentationScene(object, v36, v37);
    v41 = sub_1AF130C80(self->_engineContext, v39, v40);
    objc_msgSend_prepareWithRenderer_(v38, v42, v41);
    objc_msgSend_updateAtTime_(self, v43, v44, self->_time);
    objc_msgSend_setImmediateMode_(VFXTransaction, v45, v34);
    v46 = objc_alloc_init(VFXRenderOptions);
    objc_msgSend_setWaitUntilCompleted_(v46, v47, 1);
    objc_msgSend_setDisableCoreRendering_(v46, v48, self->_isSetupForRE);
    if (self->_isSetupForRE)
    {
      objc_msgSend_setRendererKind_(self, v49, 0);
      objc_msgSend_setDepthPixelFormat_(v46, v51, 252);
      objc_msgSend_setStencilPixelFormat_(v46, v52, 253);
      objc_msgSend_setPixelFormat_(self, v53, 81);
      v55 = objc_msgSend__newLayeredRenderTargetWithSize_arrayLength_(self, v54, 2, 16.0, 16.0);
      objc_msgSend_renderToTexture_options_(self, v56, v55, v46);

      objc_msgSend_setPixelFormat_(self, v57, 115);
      v59 = objc_msgSend__newLayeredRenderTargetWithSize_arrayLength_(self, v58, 2, 16.0, 16.0);
      objc_msgSend_renderToTexture_options_(self, v60, v59, v46);
    }

    else
    {
      v59 = objc_msgSend__newRenderTargetWithSize_(self, v49, v50, 16.0, 16.0);
      objc_msgSend_renderToTexture_options_(self, v62, v59, v46);
      if (objc_msgSend_hasMissingParticlePipelineState(self, v63, v64))
      {
        objc_msgSend_renderToTexture_options_(self, v65, v59, v46);
      }
    }

    v68 = objc_msgSend__engineContext(self, v66, v67);
    sub_1AF1304B0(v68, v69);
    objc_msgSend_setWorld_(self, v70, v23);
    objc_msgSend_setPointOfView_(self, v71, v26);
    sub_1AF1CEA9C(v18, v72);
    objc_msgSend_unlock(self, v73, v74);
    v77 = objc_msgSend__renderContextMetal(self, v75, v76);
    v80 = objc_msgSend_resourceManager(v77, v78, v79);
    v81 = sub_1AFDE868C(v80);
    v84 = objc_msgSend_waitForShadersCompilation(v81, v82, v83);
    v86 = sub_1AF0D5194(v84, v85);
    if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v87 = v86;
      if (os_signpost_enabled(v86))
      {
        *v89 = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v87, OS_SIGNPOST_INTERVAL_END, v10, "PrepareObject", &unk_1AFF70A1D, v89, 2u);
      }
    }
  }

  else
  {
    v61 = sub_1AF0D5194(isKindOfClass, v8);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF80AC();
    }
  }

  return v9 & 1;
}

- (void)prepareObjects:(id)objects withCompletionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF80E8();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(objects, v8, &v14, v18, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(objects);
        }

        objc_msgSend_prepareObject_shouldAbortBlock_(self, v10, *(*(&v14 + 1) + 8 * v13++), 0);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(objects, v10, &v14, v18, 16);
    }

    while (v11);
  }

  if (handler)
  {
    (*(handler + 2))(handler, 1);
  }
}

- (CGImage)_createBackgroundColorImageWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = size.width;
  v7 = size.height;
  v8 = 4 * (size.width & 0x3FFFFFFF);
  v9 = malloc_type_malloc(v8 * size.height, 0x100004077774924uLL);
  v11 = sub_1AF164420(v9, v10);
  v12 = CGBitmapContextCreate(v9, v6, v7, 8uLL, v8, v11, 0x4001u);
  v15 = objc_msgSend_backgroundColor(self, v13, v14);
  v18 = objc_msgSend_CGColor(v15, v16, v17);
  CGContextSetFillColorWithColor(v12, v18);
  v21.size.width = width;
  v21.size.height = height;
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  CGContextFillRect(v12, v21);
  Image = CGBitmapContextCreateImage(v12);
  CGContextRelease(v12);
  free(v9);
  return Image;
}

- (id)snapshotWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  objc_msgSend_lock(self, a2, v3);
  SnapshotWithSize_error = objc_msgSend__createSnapshotWithSize_error_(self, v7, 0, width, height);
  if (!SnapshotWithSize_error)
  {
    SnapshotWithSize_error = objc_msgSend__createBackgroundColorImageWithSize_(self, v8, v9, width, height);
  }

  v11 = objc_msgSend_imageWithCGImage_(MEMORY[0x1E69DCAB8], v8, SnapshotWithSize_error);
  CGImageRelease(SnapshotWithSize_error);
  objc_msgSend_unlock(self, v12, v13);
  return v11;
}

- (CGImage)_createSnapshotWithSize:(CGSize)size error:(id *)error
{
  width = size.width;
  v6 = rintf(width);
  height = size.height;
  v8 = rintf(height);
  if ((*(self + 81) & 4) == 0)
  {
    objc_msgSend__setBackingSize_(self, a2, error, v6, v8);
  }

  v9 = objc_msgSend__newRenderTargetWithSize_(self, a2, error, v6, v8);
  v10 = objc_alloc_init(VFXRenderOptions);
  objc_msgSend_setWaitUntilCompleted_(v10, v11, 1);
  objc_msgSend_renderToTexture_options_(self, v12, v9, v10);

  v15 = sub_1AF1F2C7C(v9, v13, v14);
  return v15;
}

- (void)_updateProbes:(id)probes progress:(id)progress completionHandler:(id)handler
{
  objc_msgSend_becomeCurrentWithPendingUnitCount_(progress, a2, 1);
  v9 = CACurrentMediaTime();
  objc_msgSend_updateProbes_atTime_completionHandler_(self, v10, probes, handler, v9);

  MEMORY[0x1EEE66B58](progress, sel_resignCurrent, v11);
}

- (void)updateProbes:(id)probes atTime:(double)time completionHandler:(id)handler
{
  if (!objc_msgSend_world(self, a2, probes, time))
  {
    v10 = sub_1AF0D5194(0, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF8124(v10, v8, v9, v11, v12, v13, v14, v15);
    }
  }

  v16 = objc_msgSend_world(self, v8, v9);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1AF323510;
  v18[3] = &unk_1E7A7EFB8;
  v18[4] = self;
  v18[5] = probes;
  v18[6] = handler;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v17, v16, v18);
}

- (void)_jitterAtStep:(unint64_t)step updateMainFramebuffer:(BOOL)framebuffer redisplay:(BOOL)redisplay jitterer:(id)jitterer
{
  renderingQueue = self->__renderingQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1AF323918;
  v7[3] = &unk_1E7A7EFE0;
  v7[4] = self;
  v7[5] = jitterer;
  v7[6] = step;
  framebufferCopy = framebuffer;
  redisplayCopy = redisplay;
  dispatch_sync(renderingQueue, v7);
}

- (void)_addGPUFrameScheduledHandler:(id)handler
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF323AA4;
  v3[3] = &unk_1E7A7F008;
  v3[4] = self;
  v3[5] = handler;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, 0, v3);
}

- (void)_addGPUFrameCompletedHandler:(id)handler
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF323B2C;
  v3[3] = &unk_1E7A7F008;
  v3[4] = self;
  v3[5] = handler;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, 0, v3);
}

- (void)_addGPUFramePresentedHandler:(id)handler
{
  if ((*(self + 81) & 4) != 0)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF323C00;
    v7[3] = &unk_1E7A7F008;
    v7[4] = self;
    v7[5] = handler;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, 0, v7);
  }

  else
  {
    v5 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF819C();
    }

    objc_msgSend__addGPUFrameCompletedHandler_(self, v6, handler);
  }
}

- (void)_discardPendingGPUFrameScheduledHandlers
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF323C88;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, 0, v2);
}

- (void)_discardPendingGPUFrameCompletedHandlers
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF323D10;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, 0, v2);
}

- (void)_discardPendingGPUFramePresentedHandlers
{
  if ((*(self + 81) & 4) != 0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF323DD4;
    v6[3] = &unk_1E7A7E1D0;
    v6[4] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, 0, v6);
  }

  else
  {
    v3 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF821C();
    }

    objc_msgSend__discardPendingGPUFrameCompletedHandlers(self, v4, v5);
  }
}

- (void)_allowGPUBackgroundExecution
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF323E5C;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, 0, v2);
}

- (void)_interfaceOrientationDidChange
{
  if ((*(self + 81) & 8) != 0)
  {
    v8 = objc_msgSend_window(self->_privateRendererOwner, a2, v2);
    v11 = objc_msgSend_windowScene(v8, v9, v10);
    v7 = objc_msgSend_interfaceOrientation(v11, v12, v13);
  }

  else
  {
    v4 = objc_msgSend_sharedApplication(MEMORY[0x1E69DC668], a2, v2);
    v7 = objc_msgSend_statusBarOrientation(v4, v5, v6);
  }

  MEMORY[0x1EEE66B58](self, sel__setInterfaceOrientation_, v7);
}

- (void)_setInterfaceOrientation:(int64_t)orientation
{
  orientationCopy = orientation;
  objc_msgSend_lock(self, a2, orientation);
  sub_1AF1305E0(self->_engineContext, orientationCopy);

  objc_msgSend_unlock(self, v5, v6);
}

- (BOOL)hasMissingParticlePipelineState
{
  v2 = sub_1AF12DF70(self->_engineContext);
  if (v2)
  {

    LOBYTE(v2) = sub_1AF70C94C(v2);
  }

  return v2;
}

- (void)setRenderGraph:(id)graph
{
  if (self->_renderGraph != graph)
  {
    objc_msgSend_lock(self, a2, graph);

    self->_renderGraph = graph;
    objc_msgSend_invalidateCompiledGraph(graph, v6, v7);
    objc_msgSend_prepareForLoad(graph, v8, v9);
    sub_1AF12F878(self->_engineContext, self->_renderGraph);

    objc_msgSend_unlock(self, v10, v11);
  }
}

- (void)set_triggersEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  objc_msgSend_lock(self, a2, enabled);
  if (enabledCopy)
  {
    v5 = 32;
  }

  else
  {
    v5 = 0;
  }

  *(self + 224) = *(self + 224) & 0xDF | v5;
  sub_1AF130D50(self->_engineContext, enabledCopy);

  objc_msgSend_unlock(self, v6, v7);
}

- (void)setBinaryArchives:(id)archives
{
  v4 = objc_msgSend_copy(archives, a2, archives);
  v7 = objc_msgSend_resourceManager(self->_renderContext, v5, v6);
  sub_1AFDE79B4(v7);
  v10 = objc_msgSend_resourceManager(self->_renderContext, v8, v9);
  v11 = sub_1AFDE79F4(v10);
  v14 = objc_msgSend_device(self, v12, v13);

  VFXCoreSetBinaryArchives(v11, v14);
}

- (NSArray)binaryArchives
{
  v3 = objc_msgSend_resourceManager(self->_renderContext, a2, v2);

  return sub_1AFDE79F4(v3);
}

+ (void)logSharedResources
{
  v5 = CFXMTLCreateSystemDefaultDevice();
  v2 = sub_1AF20C050(VFXMTLResourceManager, v5);
  sub_1AFDE78D8(&v2->super.isa, v3, v4);
  sub_1AF20C174(VFXMTLResourceManager);
}

- (VFXRenderer)initWithCommandQueue:(id)queue
{
  v8.receiver = self;
  v8.super_class = VFXRenderer;
  v4 = [(VFXRenderer *)&v8 init];
  v6 = v4;
  if (v4)
  {
    objc_msgSend_setupLegacyRendererWithCommandQueue_(v4, v5, queue);
  }

  return v6;
}

- (id)setupLegacyRendererWithCommandQueue:(id)queue
{
  v5 = [_TtC3VFX17VFXRendererLegacy alloc];
  v7 = objc_msgSend_initWithCommandQueue_(v5, v6, queue);
  v10 = objc_msgSend_backgroundColor(self, v8, v9);
  objc_msgSend_setBackgroundColor_(v7, v11, v10);
  v14 = objc_msgSend_world(self, v12, v13);
  v17 = objc_msgSend_scene(v14, v15, v16);
  objc_msgSend_setScene_(v7, v18, v17);
  objc_msgSend_set_legacyRenderer_(self, v19, v7);

  return objc_msgSend__legacyRenderer(self, v20, v21);
}

- (id)legacyRenderer
{
  result = objc_msgSend__legacyRenderer(self, a2, v2);
  if (!result)
  {

    return objc_msgSend_setupLegacyRendererWithCommandQueue_(self, v5, 0);
  }

  return result;
}

- (_TtC3VFX8VFXScene)scene
{
  v3 = objc_msgSend_legacyRenderer(self, a2, v2);

  return objc_msgSend_scene(v3, v4, v5);
}

- (void)setScene:(id)scene
{
  v4 = objc_msgSend_legacyRenderer(self, a2, scene);

  objc_msgSend_setScene_(v4, v5, scene);
}

- (_TtC3VFX9VFXEffect)effect
{
  v3 = objc_msgSend_legacyRenderer(self, a2, v2);

  return MEMORY[0x1EEE66B58](v3, sel_effect, v4);
}

- (void)setEffect:(id)effect
{
  v4 = objc_msgSend_legacyRenderer(self, a2, effect);

  MEMORY[0x1EEE66B58](v4, sel_setEffect_, effect);
}

- (MTLTexture)texture
{
  v3 = objc_msgSend_legacyRenderer(self, a2, v2);

  return objc_msgSend_texture(v3, v4, v5);
}

- (void)setTexture:(id)texture
{
  v4 = objc_msgSend_legacyRenderer(self, a2, texture);

  objc_msgSend_setTexture_(v4, v5, texture);
}

- (MTLTexture)depthTexture
{
  v3 = objc_msgSend_legacyRenderer(self, a2, v2);

  return MEMORY[0x1EEE66B58](v3, sel_depthTexture, v4);
}

- (void)setDepthTexture:(id)texture
{
  v4 = objc_msgSend_legacyRenderer(self, a2, texture);

  objc_msgSend_setDepthTexture_(v4, v5, texture);
}

- (BOOL)hasRenderableObjects
{
  v3 = objc_msgSend_legacyRenderer(self, a2, v2);

  return MEMORY[0x1EEE66B58](v3, sel_hasRenderableObjects, v4);
}

- (void)encodeWithCommandBuffer:(id)buffer
{
  v4 = objc_msgSend_legacyRenderer(self, a2, buffer);

  MEMORY[0x1EEE66B58](v4, sel_encodeWithCommandBuffer_, buffer);
}

- (void)finalizeEncoding
{
  v3 = objc_msgSend_legacyRenderer(self, a2, v2);

  MEMORY[0x1EEE66B58](v3, sel_finalizeEncoding, v4);
}

- (BOOL)enableDeferredRendering
{
  v3 = objc_msgSend_legacyRenderer(self, a2, v2);

  return MEMORY[0x1EEE66B58](v3, sel_enableDeferredRendering, v4);
}

- (void)setEnableDeferredRendering:(BOOL)rendering
{
  renderingCopy = rendering;
  v4 = objc_msgSend_legacyRenderer(self, a2, rendering);

  MEMORY[0x1EEE66B58](v4, sel_setEnableDeferredRendering_, renderingCopy);
}

- (BOOL)_legacyAdditiveWritesToAlpha
{
  v3 = objc_msgSend_legacyRenderer(self, a2, v2);

  return objc_msgSend_additiveWritesToAlpha(v3, v4, v5);
}

- (void)_setLegacyAdditiveWritesToAlpha:(BOOL)alpha
{
  alphaCopy = alpha;
  v4 = objc_msgSend_legacyRenderer(self, a2, alpha);

  objc_msgSend_setAdditiveWritesToAlpha_(v4, v5, alphaCopy);
}

- (id)snapshotWithSize:(CGSize)size deltaTime:(double)time
{
  v5 = objc_msgSend_legacyRenderer(self, a2, v4);

  return MEMORY[0x1EEE66B58](v5, sel_snapshotWithSize_deltaTime_, v6);
}

- (id)snapshotImageWithSize:(CGSize)size deltaTime:(double)time
{
  v5 = objc_msgSend_legacyRenderer(self, a2, v4);

  return MEMORY[0x1EEE66B58](v5, sel_snapshotImageWithSize_deltaTime_, v6);
}

- (id)postRenderCallback
{
  v3 = objc_msgSend_legacyRenderer(self, a2, v2);

  return MEMORY[0x1EEE66B58](v3, sel_postRenderCallback, v4);
}

- (void)setPostRenderCallback:(id)callback
{
  v4 = objc_msgSend_legacyRenderer(self, a2, callback);

  MEMORY[0x1EEE66B58](v4, sel_setPostRenderCallback_, callback);
}

- (BOOL)renderMovieToURL:(id)l size:(CGSize)size antialiasingMode:(unint64_t)mode attributes:(id)attributes error:(id *)error
{
  height = size.height;
  width = size.width;
  v14 = [VFXMovieExportOperation alloc];
  v16 = objc_msgSend_initWithRenderer_size_attributes_outputURL_(v14, v15, self, attributes, l, width, height);
  objc_msgSend_setAntialiasingMode_(v16, v17, mode);
  objc_msgSend_main(v16, v18, v19);
  v22 = objc_msgSend_error(v16, v20, v21);
  v25 = v22;
  if (error && v22)
  {
    *error = objc_msgSend_error(v16, v23, v24);
  }

  return v25 == 0;
}

@end