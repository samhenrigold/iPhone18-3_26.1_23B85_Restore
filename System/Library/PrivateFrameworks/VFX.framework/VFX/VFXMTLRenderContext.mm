@interface VFXMTLRenderContext
+ (void)registerBindings;
- ($56FBFA7F90079343FE03906F902E417E)bufferForBuiltin:(unsigned __int8)builtin;
- ($56FBFA7F90079343FE03906F902E417E)vfxCoreViewConstants;
- (BOOL)_executeDeformerStackOfCommand:(id *)command dataKind:(unsigned __int8)kind deformerStack:(__CFXDeformerStack *)stack metalDeformedMesh:(id *)mesh skinner:(__CFXSkinner *)skinner skinnerCalculationMode:(int)mode;
- (BOOL)_setupRenderPipelineOfCommand:(id *)command tessellator:(id)tessellator useTessellation:(BOOL)tessellation;
- (BOOL)constantOffsetAndSize:(int)size :(id)a4 :(int64_t *)a5 :(int64_t *)a6;
- (BOOL)mapVolatileMesh:(__CFXMesh *)mesh verticesCount:(int64_t)count;
- (CFXVFXRenderTargetInfo)renderTargetInfo;
- (MTLCommandBuffer)resourceCommandBuffer;
- (MTLCommandQueue)commandQueue;
- (MTLRenderCommandEncoder)currentRenderCommandEncoder;
- (MTLRenderPassDescriptor)currentRenderPassDescriptor;
- (RGCachedComputeCommandEncoder)resourceComputeEncoder;
- (VFXMTLBlitCommandEncoder)resourceBlitEncoder;
- (VFXMTLRenderContext)initWithEngineContext:(__CFXEngineContext *)context resourceManager:(id)manager commandQueue:(id)queue;
- (VFXWorldBuffer)_nextWorldBuffer;
- (VFXWorldBuffer)updateViewConstantsWithWorld:(__CFXWorld *)world;
- (__CFXMeshElement)createVolatileMeshElementOfType:(VFXMTLRenderContext *)self primitiveCount:(unsigned int)count bytesPerIndex:;
- (__n128)setScreenTransform:(__n128)transform;
- (const)constantData:(int)data;
- (float)_zFarForSkyboxRenderingProjectionMatrix:(id *)matrix defaultZFar:(float)far;
- (id).cxx_construct;
- (id)_finalRenderTexture;
- (id)_newMTLBufferFromPoolWithLength:(unint64_t)length;
- (id)_setupTessellatorOfCommand:(id *)command deformersDidMutateMeshForCurrentFrame:(BOOL)frame tessellationPipelineStateHash:(char *)hash;
- (id)allocateWithStagingBuffer:(id)buffer desc:(id *)desc forceCPUBlit:(BOOL)blit;
- (id)buffer:(int)buffer :(id)a4 :(int64_t *)a5 :(int64_t *)a6;
- (id)deformedRaytraceableMeshForNode:(__CFXNode *)node fallbackModel:(__CFXModel *)model;
- (id)irradianceTextureForMaterialProperty:(__CFXMaterialProperty *)property;
- (id)makeRenderPipelineForResourceID:(unint64_t)d;
- (id)radianceTextureForMaterialProperty:(__CFXMaterialProperty *)property;
- (id)renderResourcesFor:(id)for renderPassFormat:(id *)format;
- (id)sampler:(int)sampler :(id)a4;
- (id)texture:(int)texture :(id)a4;
- (int64_t)preferredFramesPerSecond;
- (uint64_t)_fillProcessingContextWithCullingContext:(uint64_t)context;
- (uint64_t)authoring_renderMesh:(uint64_t)mesh meshElement:(uint64_t)element withProgram:(uint64_t)program uniforms:(const void *)uniforms uniformsLength:(size_t)length rasterizerStates:(uint64_t)states blendStates:(uint64_t)blendStates texture:(uint64_t)self0 sampler:(uint64_t)self1 depthBias:(char)self2;
- (unint64_t)cubeArrayTypeIfSupported;
- (void)_VFXWorldRendererMainPassCustomPostProcessSupportDrawSceneBackgroundUsingEncoder:(id)encoder commandBuffer:(id)buffer renderPassDesc:(id *)desc;
- (void)_allowGPUBackgroundExecution;
- (void)_beginRenderPass:(id *)pass renderEncoder:(void *)encoder;
- (void)_bindRenderPipelineArgumentsOfCommand:(id *)command materialHashChanged:(BOOL)changed modelWithShaderModifier:(__CFXModel *)modifier modelWithShaderModifierHasChanged:(BOOL)hasChanged nodeHasChanged:(BOOL)nodeHasChanged programHasChanged:(BOOL)programHasChanged projHasChanged:(BOOL)projHasChanged viewHasChanged:(BOOL)self0;
- (void)_clearRenderCaches;
- (void)_clearUnusedBindingPoints;
- (void)_commitResourceCommandBufferIfNeeded;
- (void)_createResourceCommandBufferIfNeeded;
- (void)_drawFullScreenTexture:(id)texture;
- (void)_drawMeshElement:(id)element instanceCount:(unint64_t)count;
- (void)_drawPBRTextures;
- (void)_drawPatchForMeshElement:(id)element instanceCount:(unint64_t)count;
- (void)_drawShadowMaps;
- (void)_endResourceCommandBufferEncodingIfAny;
- (void)_executeDrawCommand:(id *)command;
- (void)_fillFrameUniformsWithWorld:(__CFXWorld *)world;
- (void)_fillProcessingContextWithEngineIterationContext:(id *)context;
- (void)_fillVFXCoreRenderData;
- (void)_installBindingsOfNode:(__CFXNode *)node probeCacheIndex:(unsigned int *)index;
- (void)_logLightingInformation;
- (void)_prepareMaterialTextures:(__CFXMaterial *)textures;
- (void)_recycleMTLBufferToPool:(id)pool;
- (void)_setMeshBuffers:(id)buffers;
- (void)_setWorldBufferAtVertexIndex:(int64_t)index fragmentIndex:(int64_t)fragmentIndex;
- (void)_updateProjectionMatrixForOrthographicSkyboxRenderingIfNeeded:(id *)needed;
- (void)_updateViewDependentConstants:(uint64_t)constants world:(__n128 *)world;
- (void)addCommandBufferCompletedHandler:(id)handler;
- (void)addCommandBufferScheduledHandler:(id)handler;
- (void)addDrawablePresentedHandler:(id)handler;
- (void)authoring_drawDeformersForNode:(__CFXNode *)node authoringEnvironment:(void *)environment;
- (void)authoring_drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer instanceCount:(unint64_t)instanceCount vertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets range:(_NSRange)self0 vertexDescriptor:(id)self1 withProgram:(__CFXProgram *)self2 uniforms:(const void *)self3 uniformsLength:(unint64_t)self4 rasterizerStates:(__CFXRasterizerStates *)self5 blendStates:(__CFXBlendStates *)self6;
- (void)authoring_drawPrimitives:(unint64_t)primitives vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount vertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets range:(_NSRange)range vertexDescriptor:(id)descriptor withProgram:(__CFXProgram *)self0 uniforms:(const void *)self1 uniformsLength:(unint64_t)self2 rasterizerStates:(__CFXRasterizerStates *)self3 blendStates:(__CFXBlendStates *)self4;
- (void)beginExternalFrameWithEncoder:(void *)encoder frameIndex:(unint64_t)index;
- (void)beginFrame:(id)frame;
- (void)beginRenderPass:(id)pass renderEncoder:(void *)encoder;
- (void)beginRenderPass:(id)pass renderEncoder:(void *)encoder parameters:(id)parameters;
- (void)dealloc;
- (void)discardPendingCommandBufferCompletedHandlers;
- (void)discardPendingCommandBufferScheduledHandlers;
- (void)discardPendingDrawablePresentedHandlers;
- (void)drawRenderElement:(__CFXRendererElement *)element withOverrides:(__CFXRenderingOverride *)overrides;
- (void)drawWireframeOverlayForElements:(id *)elements range:(id)range store:(__CFXRendererElementStore *)store passInstance:(__CFXPassInstance *)instance;
- (void)endExternalFrame;
- (void)endFrameWaitingUntilCompleted:(BOOL)completed status:(unint64_t *)status error:(id *)error;
- (void)endFrameWorldSpecifics;
- (void)endRenderPass;
- (void)processRendererElements:(id *)elements count:(unsigned int)count engineIterationContext:(id *)context;
- (void)renderBackground:(__CFXMaterialProperty *)background engineContext:(__CFXEngineContext *)context passInstance:(__CFXPassInstance *)instance;
- (void)renderVideoBackground:(__CFXImageProxy *)background engineContext:(__CFXEngineContext *)context materialProperty:(__CFXMaterialProperty *)property;
- (void)resetVolatileMeshElements;
- (void)resetVolatileMeshes;
- (void)setAttachmentProvider:(id)provider;
- (void)setCollectsCompilationErrors:(BOOL)errors;
- (void)setCurrentExternalDrawCallContext:(id)context;
- (void)setEnableARMode:(BOOL)mode;
- (void)setForceAsyncShaderCompilation:(BOOL)compilation;
- (void)setIsOpaque:(BOOL)opaque;
- (void)setPreferredFramesPerSecond:(int64_t)second;
- (void)setRasterizerStates:(__CFXRasterizerStates *)states;
- (void)setShouldDelegateARCompositing:(BOOL)compositing;
- (void)setWantsWideGamut:(BOOL)gamut;
- (void)startProcessingRendererElementsWithEngineIterationContext:(id *)context;
- (void)stopProcessingRendererElements:(BOOL)elements;
- (void)unmapVolatileMesh:(__CFXMesh *)mesh modifiedVerticesCount:(int64_t)count;
- (void)unmapVolatileMeshElement:(uint64_t)element;
- (void)updateFrameConstants;
- (void)updateRenderPassDescriptor:(id *)descriptor;
- (void)writeBytes:(const void *)bytes length:(unint64_t)length;
@end

@implementation VFXMTLRenderContext

- (VFXMTLRenderContext)initWithEngineContext:(__CFXEngineContext *)context resourceManager:(id)manager commandQueue:(id)queue
{
  v9 = sub_1AF13099C(context);
  MTLDevice = CFXGPUDeviceGetMTLDevice(v9);
  if (!v9)
  {
    v41 = sub_1AF0D5194(MTLDevice, v11);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE5F98();
    }

    return 0;
  }

  v13 = MTLDevice;
  if (queue)
  {
    v14 = objc_msgSend_device(queue, v11, v12);
    v17 = objc_msgSend_registryID(v14, v15, v16);
    v20 = objc_msgSend_registryID(v13, v18, v19);
    if (v17 != v20)
    {
      v42 = sub_1AF0D5194(v20, v21);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE5F30();
      }

      return 0;
    }
  }

  v47.receiver = self;
  v47.super_class = VFXMTLRenderContext;
  v22 = [(VFXMTLRenderContext *)&v47 init];
  if (!v22)
  {
    return v22;
  }

  managerCopy = manager;
  *(v22 + 14) = managerCopy;
  v24 = sub_1AFDE323C(managerCopy);
  v25 = CFRetain(v24);
  *(v22 + 15) = v25;
  if ((sub_1AF28A1D8(v25, v26) & 1) == 0)
  {
    v29 = objc_msgSend_newCommandQueue(v13, v27, v28);
    *(v22 + 19) = v29;
    if (v29)
    {
      objc_msgSend_setLabel_(v29, v30, @"com.apple.vfx");
      goto LABEL_8;
    }

    v43 = sub_1AF0D5194(0, v30);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE5F64();
    }

    return 0;
  }

LABEL_8:
  if (queue)
  {
    *(v22 + 2534) = queue;
  }

  *(v22 + 57) = objc_alloc_init(RGCachedComputeCommandEncoder);
  *(v22 + 128) = MTLValidationEnabled();
  *(v22 + 6) = 1065353216;
  *(v22 + 2) = VFXMatrix4Identity;
  *(v22 + 3) = *&qword_1AFE48510;
  *(v22 + 4) = xmmword_1AFE48520;
  *(v22 + 5) = *&qword_1AFE48530;
  *(v22 + 104) = 0;
  *(v22 + 17) = context;
  *(v22 + 33) |= 3u;
  if ([v13 supportsMSAADepthResolve])
  {
    *(v22 + 33) |= 4u;
  }

  if ([v13 supportsMSAAStencilResolve])
  {
    *(v22 + 33) |= 0x4000u;
  }

  if ([v13 supportsNonUniformThreadgroupSize])
  {
    *(v22 + 33) |= 0x40u;
  }

  if (sub_1AF1F3110())
  {
    *(v22 + 33) |= 8u;
  }

  if ([v13 supportsLayeredRendering])
  {
    *(v22 + 33) |= 0x20u;
  }

  if (sub_1AF1F311C(v13, v31, v32))
  {
    *(v22 + 33) |= 0x80u;
  }

  if (sub_1AF1F32C4(v13))
  {
    *(v22 + 33) |= 0x2000u;
  }

  if ([v13 supportsTessellation])
  {
    *(v22 + 33) |= 0x10u;
  }

  if ([v13 supportsTextureCubeArray])
  {
    *(v22 + 33) |= 0x100u;
  }

  if ([v13 supportsReadWriteTextureCubeArguments])
  {
    *(v22 + 33) |= 0x200u;
  }

  if ([v13 supportsBaseVertexInstanceDrawing])
  {
    *(v22 + 33) |= 0x400u;
  }

  if ([v13 supportsProgrammableBlending])
  {
    *(v22 + 33) |= 0x800u;
  }

  if ([v13 supportsDepthClipMode])
  {
    *(v22 + 33) |= 0x1000u;
  }

  if ([v13 supportsTextureSwizzle])
  {
    *(v22 + 33) |= 0x8000u;
  }

  *(v22 + 77) = dispatch_queue_create("com.apple.vfx.resourceCPUQueue", 0);
  *(v22 + 2) = malloc_type_calloc(0x358uLL, 1uLL, 0x100004048B25B04uLL);
  *(v22 + 235) = -1;
  v33 = sub_1AF131048(*(v22 + 17));
  *(v22 + 23) = dispatch_semaphore_create(v33);
  *(v22 + 63) = CFXBufferAllocatorPerFrameCreate(*(v22 + 15), @"FrameConstant", 0, v33, 0x10000);
  *(v22 + 64) = CFXBufferAllocatorPerFrameCreate(*(v22 + 15), @"Volatile", 0, v33, 0x10000);
  *(v22 + 65) = CFXTextureAllocatorPerFrameCreate(*(v22 + 15), v33);
  *(v22 + 59) = objc_alloc_init(MEMORY[0x1E695DF70]);
  *(v22 + 60) = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = objc_alloc(MEMORY[0x1E695DF70]);
  *(v22 + 61) = objc_msgSend_initWithCapacity_(v34, v35, 16);
  v36 = objc_alloc(MEMORY[0x1E695DF70]);
  *(v22 + 62) = objc_msgSend_initWithCapacity_(v36, v37, 16);
  v38 = *(v22 + 15);
  v39 = sub_1AF0D839C();
  *(v22 + 66) = CFXGPUDeviceCreateSampler(v38, v39);
  *(v22 + 67) = sub_1AF1D534C(@"background_2D_vertid", @"background_2D_frag");
  *(v22 + 70) = sub_1AF1D534C(@"background_cube_vertid", @"background_cube_frag");
  *(v22 + 73) = sub_1AF1D534C(@"background_video_vertid", @"background_video_frag");
  *(v22 + 74) = sub_1AF1D534C(@"background_video_vertid", @"background_video_alpha_0_frag");
  v40 = *(v22 + 33);
  if ((v40 & 0x80) != 0)
  {
    *(v22 + 69) = sub_1AF1D534C(@"background_2D_multiple_viewports_vertid", @"background_2D_multiple_viewports_frag");
    *(v22 + 72) = sub_1AF1D534C(@"background_cube_multiple_viewports_vertid", @"background_cube_multiple_viewports_frag");
    v40 = *(v22 + 33);
  }

  if ((v40 & 0x20) != 0)
  {
    *(v22 + 68) = sub_1AF1D534C(@"background_2D_layered_vertid", @"background_2D_layered_frag");
    *(v22 + 71) = sub_1AF1D534C(@"background_cube_layered_vertid", @"background_cube_layered_frag");
  }

  *v46 = 0;
  *&v46[8] = 0;
  *&v46[13] = 0;
  sub_1AF1C40BC(v46);
  *&v46[2] = 0;
  *v45 = *v46;
  *&v45[13] = *&v46[13];
  *(v22 + 75) = sub_1AF1C4354(v45);
  v46[3] = 1;
  *v45 = *v46;
  *&v45[13] = *&v46[13];
  *(v22 + 76) = sub_1AF1C4354(v45);
  *(v22 + 18984) = 0;
  *(v22 + 4780) = 0;
  *(v22 + 2394) = objc_alloc_init(CFXVFXRenderTargetInfo);
  *(v22 + 2397) = 252;
  *(v22 + 2399) = objc_alloc_init(VFXMTLREContext);
  *(v22 + 20232) = 0;
  return v22;
}

- (void)dealloc
{
  objc_msgSend_setGeneratedTexturePath_(self, v3, 0);
  objc_msgSend_setClientCommandBuffer_(self, v4, 0);
  objc_msgSend_setClientRenderPassDescriptor_(self, v5, 0);
  objc_msgSend_setClientRenderCommandEncoder_(self, v6, 0);
  objc_msgSend_setClientCommandQueue_(self, v7, 0);
  dispatch_release(self->_resourceQueue);
  dispatch_release(self->_inFlightFramesSemaphore);
  for (i = 0; i != 3; ++i)
  {
    v9 = self + i * 8;
    v10 = self->_background2DProgram[i];
    if (v10)
    {
      CFRelease(v10);
      *(v9 + 67) = 0;
    }

    v11 = *(v9 + 70);
    if (v11)
    {
      CFRelease(v11);
      *(v9 + 70) = 0;
    }
  }

  backgroundVideoProgram = self->_backgroundVideoProgram;
  if (backgroundVideoProgram)
  {
    CFRelease(backgroundVideoProgram);
    self->_backgroundVideoProgram = 0;
  }

  backgroundVideoAlpha0Program = self->_backgroundVideoAlpha0Program;
  if (backgroundVideoAlpha0Program)
  {
    CFRelease(backgroundVideoAlpha0Program);
    self->_backgroundVideoAlpha0Program = 0;
  }

  sub_1AF1C4640(self->_backgroundRasterizerStates);
  sub_1AF1C4640(self->_backgroundWithDepthRasterizerStates);
  renderEncoder = self->_renderEncoder;
  if (renderEncoder)
  {

    MEMORY[0x1B271C6B0](renderEncoder, 0x10A0C40617E9A74);
  }

  free(self->__engineStats);
  if (self->_commandBufferScheduledHandlers)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v16 = isKindOfClass;
    v18 = sub_1AF0D5194(isKindOfClass, v17);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (v16)
    {
      if (v19)
      {
        sub_1AFDE6000(&self->_commandBufferScheduledHandlers, v18, v20);
      }
    }

    else if (v19)
    {
      sub_1AFDE5FCC();
    }
  }

  if (self->_commandBufferCompletedHandlers)
  {
    objc_opt_class();
    v21 = objc_opt_isKindOfClass();
    v22 = v21;
    v24 = sub_1AF0D5194(v21, v23);
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (v25)
      {
        sub_1AFDE60BC(&self->_commandBufferCompletedHandlers, v24, v26);
      }
    }

    else if (v25)
    {
      sub_1AFDE6088();
    }
  }

  if (self->_drawablePresentedHandlers)
  {
    objc_opt_class();
    v27 = objc_opt_isKindOfClass();
    v28 = v27;
    v30 = sub_1AF0D5194(v27, v29);
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v28)
    {
      if (v31)
      {
        sub_1AFDE6178(&self->_commandBufferCompletedHandlers, v30, v32);
      }
    }

    else if (v31)
    {
      sub_1AFDE6144();
    }
  }

  CFRelease(self->_gpuDevice);
  objc_msgSend__clearRenderCaches(self, v33, v34);
  v35.receiver = self;
  v35.super_class = VFXMTLRenderContext;
  [(VFXMTLRenderContext *)&v35 dealloc];
}

- (MTLCommandQueue)commandQueue
{
  if (self->_clientCommandBuffer)
  {
    return objc_msgSend_commandQueue(self->_clientCommandBuffer, a2, v2);
  }

  clientCommandQueue = self->_clientCommandQueue;
  if (clientCommandQueue)
  {
    return clientCommandQueue;
  }

  clientCommandQueue = self->_ownedCommandQueue;
  if (clientCommandQueue)
  {
    return clientCommandQueue;
  }

  else
  {
    return sub_1AFDE8698(self->_resourceManager);
  }
}

- (void)setPreferredFramesPerSecond:(int64_t)second
{
  if (!second)
  {
    v4 = objc_msgSend_mainScreen(MEMORY[0x1E69DCEB0], a2, 0);
    second = objc_msgSend_maximumFramesPerSecond(v4, v5, v6);
    if (!second)
    {
      v8 = sub_1AF0D5194(0, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE6200();
      }

      second = 120;
    }
  }

  self->_targetedFrameInterval = 1.0 / second;
}

- (int64_t)preferredFramesPerSecond
{
  targetedFrameInterval = self->_targetedFrameInterval;
  if (targetedFrameInterval == 0.0)
  {
    return 0;
  }

  else
  {
    return (1.0 / targetedFrameInterval);
  }
}

- (__n128)setScreenTransform:(__n128)transform
{
  result[2] = a2;
  result[3] = transform;
  result[4] = a4;
  result[5] = a5;
  return result;
}

- (void)setWantsWideGamut:(BOOL)gamut
{
  v4 = *(self + 144);
  if ((v4 & 1) != gamut)
  {
    *(self + 144) = v4 & 0xFE | gamut;
    v5 = sub_1AF12DDCC(self->_engineContext, a2);

    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v5, 0, 1u);
  }
}

- (void)setEnableARMode:(BOOL)mode
{
  v3 = *(self + 144);
  if (((((v3 & 4) == 0) ^ mode) & 1) == 0)
  {
    if (mode)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    *(self + 144) = v3 & 0xFB | v4;
  }
}

- (void)setShouldDelegateARCompositing:(BOOL)compositing
{
  v3 = *(self + 144);
  if (((((v3 & 8) == 0) ^ compositing) & 1) == 0)
  {
    if (compositing)
    {
      v4 = 8;
    }

    else
    {
      v4 = 0;
    }

    *(self + 144) = v3 & 0xF7 | v4;
  }
}

- (void)setIsOpaque:(BOOL)opaque
{
  v4 = *(self + 144);
  if (((((v4 & 2) == 0) ^ opaque) & 1) == 0)
  {
    if (opaque)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *(self + 144) = v4 & 0xFD | v5;
    v6 = sub_1AF12DDCC(self->_engineContext, a2);

    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v6, 0, 1u);
  }
}

- (void)_clearUnusedBindingPoints
{
  v2 = *&self->_anon_4950[128];
  if (v2)
  {
    objc_msgSend_pushDebugGroup_(self->_renderEncoder->var3, a2, @"Clear binding points");
    v6 = 0;
    for (i = 0; i != 31; ++i)
    {
      renderEncoder = self->_renderEncoder;
      if ((v2[31] & (1 << i)) != 0)
      {
        v9 = 65280;
      }

      else
      {
        v9 = v6;
      }

      if ((v2[30] & (1 << i)) == 0)
      {
        objc_msgSend_setVertexBuffer_offset_atIndex_(renderEncoder->var3, v4, 0, 0, i);
      }

      if (v9 != 65280)
      {
        objc_msgSend_setFragmentBuffer_offset_atIndex_(renderEncoder->var3, v4, 0, 0, v9 >> 8);
      }

      v6 += 256;
    }

    v10 = 0;
    for (j = 0; j != 31; ++j)
    {
      v12 = self->_renderEncoder;
      if ((v2[33] & (1 << j)) != 0)
      {
        v13 = 65280;
      }

      else
      {
        v13 = v10;
      }

      if ((v2[32] & (1 << j)) == 0)
      {
        v16 = 0;
        sub_1AF1F3034(v12->var2, &v16, 1);
        objc_msgSend_setVertexTexture_atIndex_(v12->var3, v14, v16, j);
      }

      if (v13 != 65280)
      {
        v16 = 0;
        sub_1AF1F3034(v12->var2, &v16, 1);
        objc_msgSend_setFragmentTexture_atIndex_(v12->var3, v15, v16, v13 >> 8);
      }

      v10 += 256;
    }

    objc_msgSend_popDebugGroup(self->_renderEncoder->var3, v4, v5);
  }
}

- (void)beginFrame:(id)frame
{
  v5 = self->_currentFrameIndex + 1;
  self->_currentFrameIndex = v5;
  dispatch_semaphore_wait(self->_inFlightFramesSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v7 = sub_1AF12DDCC(self->_engineContext, v6);
  if (v7)
  {
    v9 = sub_1AF1D13B8(v7, v8);
    vfx_counters_push_frame(v9);
  }

  v10 = sub_1AF130D04(self->_engineContext, v8);
  vfx_counters_push_frame(v10);
  prof_beginFlameSmallData("[VFXMTLRenderContext beginFrame:]", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/NewRenderer/VFXMTLRenderContext.mm", 1140, LODWORD(self->_currentFrameIndex) | 0x300000000);
  self->_counters = 0u;
  objc_msgSend_reloadPipelinesIfNeeded(self->_resourceManager, v11, v12);

  self->_textureTarget = 0;
  self->_layerTarget = 0;
  self->_shouldPresentWithTransaction = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    frameCopy = frame;
    self->_layerTarget = frameCopy;
    self->_shouldPresentWithTransaction = objc_msgSend_presentsWithTransaction(frameCopy, v14, v15);
  }

  else
  {
    self->_textureTarget = frame;
  }

  CFXBufferAllocatorPerFrameNextFrame(self->_frameConstantBufferPool.impl, v16);
  CFXBufferAllocatorPerFrameNextFrame(self->_frameVolatileBufferPool.impl, v17);
  CFXTextureAllocatorPerFrameNextFrame(self->_frameTexturePool.impl);
  clientCommandBuffer = self->_clientCommandBuffer;
  if (clientCommandBuffer)
  {
    self->_currentCommandBuffer = clientCommandBuffer;
    prof_eventSmallData(0, "Current CB creation to completion", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/NewRenderer/VFXMTLRenderContext.mm", 1199, v5 | 0x300000000);
  }

  else
  {
    os_variant_has_internal_diagnostics();
    v24 = objc_msgSend_commandQueue(self, v22, v23);
    self->_currentCommandBuffer = objc_msgSend_commandBuffer(v24, v25, v26);
    prof_eventSmallData(0, "Current CB creation to completion", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/NewRenderer/VFXMTLRenderContext.mm", 1225, v5 | 0x300000000);
    v21 = sub_1AF70CC44(self->_currentCommandBuffer, v27);
  }

  if (self->_compilationIssues.collectEnabled)
  {
    objc_msgSend_removeAllObjects(self->_compilationIssues.errors, v19, v20, v21);
  }

  self->_remote.vfcGlobalConstants = 0u;
  self->_remote.vfcViewConstants = 0u;
  self->_remote.viewConstants = 0u;
  inFlightFramesSemaphore = self->_inFlightFramesSemaphore;
  currentCommandBuffer = self->_currentCommandBuffer;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_1AF1FE3A4;
  v32[3] = &unk_1E7A7CC20;
  v32[5] = inFlightFramesSemaphore;
  v32[6] = v5;
  v32[4] = self;
  objc_msgSend_addCompletedHandler_(currentCommandBuffer, v19, v32);
  objc_msgSend_updateFrameConstants(self, v30, v31);
  prof_endFlame();
}

- (void)endFrameWorldSpecifics
{
  objc_msgSend_resetVolatileMeshes(self, a2, v2);

  MEMORY[0x1EEE66B58](self, sel_resetVolatileMeshElements, v4);
}

- (void)_endResourceCommandBufferEncodingIfAny
{
  if (self->_resourceBlitEncoder._encoder)
  {
    sub_1AF1FE520(&self->_resourceBlitEncoder, a2, v2);
  }

  if (objc_msgSend_isEncoding(self->_resourceComputeEncoder, a2, v2))
  {
    resourceComputeEncoder = self->_resourceComputeEncoder;

    objc_msgSend_endEncoding(resourceComputeEncoder, v4, v5);
  }
}

- (void)_commitResourceCommandBufferIfNeeded
{
  if (self->_resourceCommandBuffer)
  {
    objc_msgSend__endResourceCommandBufferEncodingIfAny(self, a2, v2);
    objc_msgSend_commit(self->_resourceCommandBuffer, v4, v5);

    self->_resourceCommandBuffer = 0;
  }
}

- (void)endFrameWaitingUntilCompleted:(BOOL)completed status:(unint64_t *)status error:(id *)error
{
  completedCopy = completed;
  currentFrameIndex = self->_currentFrameIndex;
  prof_beginFlameSmallData("[VFXMTLRenderContext endFrameWaitingUntilCompleted:status:error:]", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/NewRenderer/VFXMTLRenderContext.mm", 1330, currentFrameIndex | 0x300000000);
  objc_msgSend__commitResourceCommandBufferIfNeeded(self, v10, v11);
  os_unfair_lock_lock(&self->_gpuHandlersLock);
  commandBufferScheduledHandlers = self->_commandBufferScheduledHandlers;
  if (commandBufferScheduledHandlers)
  {
    currentCommandBuffer = self->_currentCommandBuffer;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = sub_1AF1FE924;
    v45[3] = &unk_1E7A7CC48;
    v45[4] = commandBufferScheduledHandlers;
    objc_msgSend_addScheduledHandler_(currentCommandBuffer, v12, v45);

    self->_commandBufferScheduledHandlers = 0;
  }

  commandBufferCompletedHandlers = self->_commandBufferCompletedHandlers;
  if (!commandBufferCompletedHandlers)
  {
    if (!prof_getEnabled())
    {
      goto LABEL_7;
    }

    commandBufferCompletedHandlers = self->_commandBufferCompletedHandlers;
  }

  v16 = self->_currentCommandBuffer;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = sub_1AF1FEA80;
  v44[3] = &unk_1E7A7CC70;
  v44[4] = commandBufferCompletedHandlers;
  v44[5] = currentFrameIndex;
  objc_msgSend_addCompletedHandler_(v16, v12, v44);

  self->_commandBufferCompletedHandlers = 0;
LABEL_7:
  if (!self->_metalDisplayLinkUpdate)
  {
    goto LABEL_18;
  }

  v17 = sub_1AF12F434(self->_engineContext, v12);
  v22 = objc_msgSend__supportsDidPresentDelegate(v17, v18, v19);
  drawablePresentedHandlers = self->_drawablePresentedHandlers;
  if (!((drawablePresentedHandlers != 0) | v22 & 1))
  {
    if (!prof_getEnabled())
    {
      goto LABEL_12;
    }

    drawablePresentedHandlers = self->_drawablePresentedHandlers;
  }

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_1AF1FEC98;
  v42[3] = &unk_1E7A7CC98;
  v42[5] = v17;
  v42[6] = currentFrameIndex;
  v43 = v22;
  v42[4] = drawablePresentedHandlers;
  v24 = objc_msgSend_drawable(self->_metalDisplayLinkUpdate, v20, v21);
  objc_msgSend_addPresentedHandler_(v24, v25, v42);

  self->_drawablePresentedHandlers = 0;
LABEL_12:
  if (self->_shouldPresentWithTransaction)
  {
    objc_msgSend_begin(MEMORY[0x1E6979518], v20, v21);
    if (!pthread_main_np())
    {
      objc_msgSend_activateBackground_(MEMORY[0x1E6979518], v20, 1);
    }
  }

  v26 = self->_currentCommandBuffer;
  v27 = objc_msgSend_drawable(self->_metalDisplayLinkUpdate, v20, v21);
  objc_msgSend_presentDrawable_(v26, v28, v27);
  if (self->_shouldPresentWithTransaction)
  {
    objc_msgSend_commit(MEMORY[0x1E6979518], v29, v30);
  }

  self->_metalDisplayLinkUpdate = 0;
LABEL_18:
  os_unfair_lock_unlock(&self->_gpuHandlersLock);
  objc_msgSend__commitResourceCommandBufferIfNeeded(self, v31, v32);
  clientCommandBuffer = self->_clientCommandBuffer;
  if (clientCommandBuffer)
  {
    if (completedCopy)
    {
      objc_msgSend_waitUntilCompleted(clientCommandBuffer, v33, v34);
      if (status)
      {
        *status = objc_msgSend_status(self->_clientCommandBuffer, v33, v36);
      }

      if (error)
      {
        *error = 0;
      }
    }

    objc_msgSend_setClientCommandBuffer_(self, v33, 0);
  }

  else
  {
    objc_msgSend_commit(self->_currentCommandBuffer, v33, v34);
    if (completedCopy)
    {
      objc_msgSend_waitUntilCompleted(self->_currentCommandBuffer, v37, v38);
      if (status)
      {
        *status = objc_msgSend_status(self->_currentCommandBuffer, v37, v39);
      }

      if (error)
      {
        *error = objc_msgSend_error(self->_currentCommandBuffer, v37, v39);
      }
    }
  }

  objc_msgSend_setClientRenderCommandEncoder_(self, v37, 0);
  objc_msgSend_setClientRenderPassDescriptor_(self, v40, 0);
  objc_msgSend_setClientCommandQueue_(self, v41, 0);
  self->_currentCommandBuffer = 0;
  *&self->_anon_4190[672] = 0;

  self->_textureTarget = 0;
  self->_layerTarget = 0;

  self->_metalDisplayLinkUpdate = 0;
  prof_endFlame();
}

- (id)_finalRenderTexture
{
  attachmentProvider = self->_attachmentProvider;
  v4 = RGResourceIdentifierFinalColor(self);
  Path = RGResourceIdentifierGetPath(v4);
  result = objc_msgSend_textureForAttachment_withDescriptor_(attachmentProvider, v6, Path, 0);
  if (!result)
  {
    if (self->_layerTarget)
    {
      v10 = objc_msgSend_drawable(self->_metalDisplayLinkUpdate, v8, v9);

      return objc_msgSend_texture(v10, v11, v12);
    }

    else
    {
      return self->_textureTarget;
    }
  }

  return result;
}

- (id)allocateWithStagingBuffer:(id)buffer desc:(id *)desc forceCPUBlit:(BOOL)blit
{
  blitCopy = blit;
  v7 = *&buffer.var1;
  var0 = buffer.var0;
  v10 = *(desc + 12);
  if (blit)
  {
    v11 = v10 & 0xFFFF8FFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10 & 0xFFFF8FFDFFFFFFFFLL | 0x200200000000;
  }

  *(desc + 12) = v11;
  impl = self->_frameTexturePool.impl;
  v53 = *&desc->var0.var0;
  v54 = *(desc + 2);
  v13 = CFXTextureAllocatorPerFrameAllocate(impl, &v53);
  v14 = sub_1AF1F1AAC() >> 3;
  v15 = *(desc + 4);
  v16 = v15 * v14;
  v17 = v16 * (v15 >> 16);
  v20 = objc_msgSend_width(v13, v18, v19);
  v23 = objc_msgSend_height(v13, v21, v22);
  v26 = objc_msgSend_depth(v13, v24, v25);
  if (blitCopy)
  {
    v53 = 0uLL;
    v54 = 0;
    v55 = v20;
    v56 = v23;
    v57 = v26;
    CPUPointer = CFXBufferSliceGetCPUPointer(var0, v7, v28);
    objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v13, v30, &v53, 0, 0, CPUPointer, v16, v17);
  }

  else
  {
    LOWORD(v53) = v14;
    WORD1(v53) = v16;
    DWORD1(v53) = v17;
    if (objc_msgSend_pixelFormat(v13, v27, v28, v53) != 23 && objc_msgSend_pixelFormat(v13, v31, v32) != 63)
    {
      v34 = objc_msgSend_pixelFormat(v13, v31, v33);
      if (v34 != 113)
      {
        v35 = sub_1AF0D5194(v34, v31);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE6350(v35, v31, v36, v37, v38, v39, v40, v41);
        }
      }
    }

    v42 = objc_msgSend_computePipelineStateForKernel_(self->_resourceManager, v31, @"copy_texture_3D_from_buffer_ushort");
    v45 = objc_msgSend_resourceComputeEncoder(self, v43, v44);
    v46 = sub_1AFDE323C(v42);
    objc_msgSend_setComputePipelineState_(v45, v47, v46);
    objc_msgSend_setBufferSlice_atIndex_(v45, v48, var0, v7, 0);
    objc_msgSend_setBytes_length_atIndex_(v45, v49, &v53, 8, 1);
    objc_msgSend_setTexture_atIndex_(v45, v50, v13, 0);
    objc_msgSend_dispatchOnTexture3D_(v45, v51, v13);
  }

  return v13;
}

- (void)_clearRenderCaches
{
  *&self->_anon_4950[128] = 0u;
  *&self->_anon_4950[112] = 0u;
  *&self->_anon_4950[96] = 0u;
  *&self->_anon_4950[80] = 0u;
  *&self->_anon_4950[64] = 0u;
  *&self->_anon_4950[48] = 0u;
  *&self->_anon_4950[32] = 0u;
  *&self->_anon_4950[16] = 0u;
  *self->_anon_4950 = 0u;
  *&self->_cache.tessellationPipelineStateHash = 0u;
  *&self->_cache.deformerStack = 0u;
  *&self->_cache.node = 0u;
  *&self->_cache.blendStates = 0u;
  *&self->_cache.metalShadable = 0u;
  *&self->_cache.material = 0u;
  *&self->_cache.metalMeshElement = 0u;
  *&self->_cache.metalMesh = 0u;
  *&self->_cache.rasterizerStates = 0u;
}

- (void)_createResourceCommandBufferIfNeeded
{
  if (!self->_resourceCommandBuffer)
  {
    v14[7] = v2;
    v14[8] = v3;
    os_variant_has_internal_diagnostics();
    v7 = objc_msgSend_commandQueue(self, v5, v6);
    self->_resourceCommandBuffer = objc_msgSend_commandBuffer(v7, v8, v9);
    prof_eventSmallData(0, "Resource CB creation to completion", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/NewRenderer/VFXMTLRenderContext.mm", 1757, LODWORD(self->_currentFrameIndex) | 0x300000000);
    sub_1AF70CC44(self->_resourceCommandBuffer, v10);
    v11 = self->_resourceCommandBuffer;
    resourceCommandBuffer = self->_resourceCommandBuffer;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1AF1FF240;
    v14[3] = &unk_1E7A7CC48;
    v14[4] = self;
    objc_msgSend_addCompletedHandler_(resourceCommandBuffer, v13, v14);
  }
}

- (MTLCommandBuffer)resourceCommandBuffer
{
  if (!self->_resourceCommandBuffer)
  {
    objc_msgSend__createResourceCommandBufferIfNeeded(self, a2, v2);
  }

  if (objc_msgSend_isEncoding(self->_resourceComputeEncoder, a2, v2))
  {
    objc_msgSend_endEncoding(self->_resourceComputeEncoder, v4, v5);
  }

  if (self->_resourceBlitEncoder._encoder)
  {
    sub_1AF1FE520(&self->_resourceBlitEncoder, v4, v5);
  }

  return self->_resourceCommandBuffer;
}

- (VFXMTLBlitCommandEncoder)resourceBlitEncoder
{
  if (!self->_resourceCommandBuffer)
  {
    objc_msgSend__createResourceCommandBufferIfNeeded(self, a2, v2);
  }

  if (objc_msgSend_isEncoding(self->_resourceComputeEncoder, a2, v2))
  {
    objc_msgSend_endEncoding(self->_resourceComputeEncoder, v4, v5);
  }

  if (!self->_resourceBlitEncoder._encoder)
  {
    sub_1AF1FF3B8(&self->_resourceBlitEncoder, self->_resourceCommandBuffer, 0);
  }

  return &self->_resourceBlitEncoder;
}

- (RGCachedComputeCommandEncoder)resourceComputeEncoder
{
  if (!self->_resourceCommandBuffer)
  {
    objc_msgSend__createResourceCommandBufferIfNeeded(self, a2, v2);
  }

  if (self->_resourceBlitEncoder._encoder)
  {
    sub_1AF1FE520(&self->_resourceBlitEncoder, a2, v2);
  }

  if ((objc_msgSend_isEncoding(self->_resourceComputeEncoder, a2, v2) & 1) == 0)
  {
    objc_msgSend_beginEncodingWithCommandBuffer_label_(self->_resourceComputeEncoder, v4, self->_resourceCommandBuffer, @"ResourceComputeEncoder");
  }

  return self->_resourceComputeEncoder;
}

- (void)_beginRenderPass:(id *)pass renderEncoder:(void *)encoder
{
  self->_renderEncoder = encoder;
  objc_msgSend__clearRenderCaches(self, a2, pass);
  v6 = *&self->_currentRenderPassDesc.colorFormat[6];
  *&self->_originalRenderPassDesc.colorFormat[4] = *&self->_currentRenderPassDesc.colorFormat[4];
  *&self->_originalRenderPassDesc.colorFormat[6] = v6;
  *&self->_originalRenderPassDesc.depthFormat = *&self->_currentRenderPassDesc.depthFormat;
  *&self->_originalRenderPassDesc.sampleCount = *&self->_currentRenderPassDesc.sampleCount;
  v7 = *&self->_currentRenderPassDesc.colorFormat[2];
  *self->_originalRenderPassDesc.colorFormat = *self->_currentRenderPassDesc.colorFormat;
  *&self->_originalRenderPassDesc.colorFormat[2] = v7;
  v8 = *pass->var0;
  *&self->_currentRenderPassDesc.colorFormat[2] = *&pass->var0[2];
  *self->_currentRenderPassDesc.colorFormat = v8;
  v9 = *&pass->var3;
  v11 = *&pass->var0[6];
  v10 = *&pass->var1;
  *&self->_currentRenderPassDesc.colorFormat[4] = *&pass->var0[4];
  *&self->_currentRenderPassDesc.colorFormat[6] = v11;
  *&self->_currentRenderPassDesc.depthFormat = v10;
  *&self->_currentRenderPassDesc.sampleCount = v9;

  bzero(self->_anon_4b00, 0x400uLL);
}

- (void)beginRenderPass:(id)pass renderEncoder:(void *)encoder
{
  v7 = objc_msgSend_colorAttachments(pass, a2, pass);
  v9 = objc_msgSend_objectAtIndexedSubscript_(v7, v8, 0);
  v14 = objc_msgSend_texture(v9, v10, v11);
  if (!v14)
  {
    v15 = objc_msgSend_depthAttachment(pass, v12, v13);
    v14 = objc_msgSend_texture(v15, v16, v17);
  }

  *self->_currentRenderSize = objc_msgSend_width(v14, v12, v13);
  *&self->_currentRenderSize[4] = objc_msgSend_height(v14, v18, v19);
  v22 = objc_msgSend_colorAttachments(pass, v20, v21);
  v24 = objc_msgSend_objectAtIndexedSubscript_(v22, v23, 0);
  objc_msgSend_clearColor(v24, v25, v26);
  self->_currentClearColor.red = v27;
  self->_currentClearColor.green = v28;
  self->_currentClearColor.blue = v29;
  self->_currentClearColor.alpha = v30;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v33 = sub_1AF218EA4(pass, v35, v31, v32);
  objc_msgSend__beginRenderPass_renderEncoder_(self, v34, v35, encoder, v33);
}

- (void)beginRenderPass:(id)pass renderEncoder:(void *)encoder parameters:(id)parameters
{
  v5 = *&parameters.var0;
  objc_msgSend_beginRenderPass_renderEncoder_(self, a2, pass, encoder);

  objc_msgSend_setRenderPassParameters_(self, v7, v5 & 0xFFFFFFFFFFFFLL);
}

- (void)endRenderPass
{
  self->_renderGraph = 0u;
  v2 = *&self->_originalRenderPassDesc.colorFormat[6];
  *&self->_currentRenderPassDesc.colorFormat[4] = *&self->_originalRenderPassDesc.colorFormat[4];
  *&self->_currentRenderPassDesc.colorFormat[6] = v2;
  *&self->_currentRenderPassDesc.depthFormat = *&self->_originalRenderPassDesc.depthFormat;
  v3 = *&self->_originalRenderPassDesc.colorFormat[2];
  *self->_currentRenderPassDesc.colorFormat = *self->_originalRenderPassDesc.colorFormat;
  self->_renderEncoder = 0;
  *&self->_currentRenderPassDesc.sampleCount = *&self->_originalRenderPassDesc.sampleCount;
  *&self->_currentRenderPassDesc.colorFormat[2] = v3;
}

- (void)beginExternalFrameWithEncoder:(void *)encoder frameIndex:(unint64_t)index
{
  self->_renderEncoder = encoder;
  if (self->_currentFrameIndex != index)
  {
    self->_currentFrameIndex = index;
    objc_msgSend__clearRenderCaches(self, a2, encoder);
    bzero(self->_anon_4b00, 0x400uLL);
    CFXBufferAllocatorPerFrameNextFrame(self->_frameConstantBufferPool.impl, v6);
    CFXBufferAllocatorPerFrameNextFrame(self->_frameVolatileBufferPool.impl, v7);
    CFXTextureAllocatorPerFrameNextFrame(self->_frameTexturePool.impl);
    v10 = sub_1AFDEB254(self->_reContext);
    self->_currentWorldBufferIndex = -1;

    objc_msgSend_updateFrameConstants(self, v8, v9, v10);
  }
}

- (void)endExternalFrame
{
  v4 = *&self->_originalRenderPassDesc.colorFormat[6];
  *&self->_currentRenderPassDesc.colorFormat[4] = *&self->_originalRenderPassDesc.colorFormat[4];
  *&self->_currentRenderPassDesc.colorFormat[6] = v4;
  *&self->_currentRenderPassDesc.depthFormat = *&self->_originalRenderPassDesc.depthFormat;
  *&self->_currentRenderPassDesc.sampleCount = *&self->_originalRenderPassDesc.sampleCount;
  v5 = *&self->_originalRenderPassDesc.colorFormat[2];
  *self->_currentRenderPassDesc.colorFormat = *self->_originalRenderPassDesc.colorFormat;
  *&self->_currentRenderPassDesc.colorFormat[2] = v5;
  objc_msgSend__commitResourceCommandBufferIfNeeded(self, a2, v2);
  self->_renderEncoder = 0;
  objc_msgSend_setClientRenderCommandEncoder_(self, v6, 0);
  objc_msgSend_setClientRenderPassDescriptor_(self, v7, 0);
  self->_currentCommandBuffer = 0;
  *&self->_anon_4190[672] = 0;
}

- (void)setAttachmentProvider:(id)provider
{
  if (self->_attachmentProvider != provider)
  {
    providerCopy = provider;
    attachmentProvider = self->_attachmentProvider;
    self->_attachmentProvider = provider;
    v7 = sub_1AF12E8A4(self->_engineContext);
    sub_1AF2709AC(v7, provider);
  }
}

- (id)irradianceTextureForMaterialProperty:(__CFXMaterialProperty *)property
{
  v5 = sub_1AF1676F4(property, a2);
  if (v5)
  {
    v7 = v5;
    resourceManager = self->_resourceManager;

    return MEMORY[0x1EEE66B58](resourceManager, sel_irradianceTextureForPrecomputedLightingEnvironment_, v7);
  }

  else
  {
    result = objc_msgSend_textureForMaterialProperty_(self, v6, property);
    if (result)
    {
      v11 = result;
      if (objc_msgSend_textureType(result, v9, v10) == 5)
      {
        lightingSystem = self->_processingContext.lightingSystem;
        if (lightingSystem)
        {
          lightingSystem = sub_1AF139110(lightingSystem, v12);
        }

        v14 = self->_resourceManager;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = sub_1AF1FF934;
        v16[3] = &unk_1E7A7CCB8;
        v16[4] = lightingSystem;
        return objc_msgSend_irradianceTextureForEnvironmentTexture_renderContext_applySH_(v14, v12, v11, self, v16);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (id)radianceTextureForMaterialProperty:(__CFXMaterialProperty *)property
{
  v5 = sub_1AF1676F4(property, a2);
  if (v5)
  {
    v7 = v5;
    resourceManager = self->_resourceManager;

    return MEMORY[0x1EEE66B58](resourceManager, sel_radianceTextureForPrecomputedLightingEnvironment_, v7);
  }

  else
  {
    v9 = objc_msgSend_textureForMaterialProperty_(self, v6, property);
    if (v9 && (v12 = v9, objc_msgSend_textureType(v9, v10, v11) == 5))
    {
      v13 = self->_resourceManager;

      return MEMORY[0x1EEE66B58](v13, sel_radianceTextureForEnvironmentTexture_engineContext_, v12);
    }

    else
    {
      return 0;
    }
  }
}

- (id)deformedRaytraceableMeshForNode:(__CFXNode *)node fallbackModel:(__CFXModel *)model
{
  v137 = *MEMORY[0x1E69E9840];
  if (node)
  {
    v7 = sub_1AF1B75A0(node, a2);
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    modelCopy = v7;
  }

  else
  {
    modelCopy = model;
  }

  v11 = sub_1AF174F44(modelCopy, 0, 0);
  v12 = v11 == 0;
  if (node)
  {
    v13 = sub_1AF1B7558(node, v9);
    if (v13)
    {
      v14 = v13;
      if (sub_1AF16B74C(v13, v9))
      {
        v15 = sub_1AF27DD4C(modelCopy, 0);
        v17 = objc_msgSend_renderResourceForDeformerStack_node_dataKind_(self->_resourceManager, v16, v14, node, v12);
        if (sub_1AFDE22C0(v17))
        {
          v19 = sub_1AF12DDCC(self->_engineContext, v18);
          v21 = sub_1AF1D0218(v19, v20);
          v22 = sub_1AF14CD4C(v21, node->var4);
          v105 = *v22;
          v107 = v22[1];
          v101 = v22[2];
          v103 = v22[3];
          v24 = sub_1AF1B92C8(node, v23);
          if (v24)
          {
            v25 = v24;
            v26 = sub_1AF1C9420(v24);
            *v27.i64 = sub_1AF1CA3E8(v25, v26, v105, v107, v101, v103);
            v31 = v27;
          }

          else
          {
            v29 = v101;
            v30 = v103;
            v31 = v105;
            v28 = v107;
          }

          v37 = 0;
          v38 = *self->_anon_2d0;
          v39 = *&self->_anon_2d0[16];
          v40 = *&self->_anon_2d0[32];
          v41 = *&self->_anon_2d0[48];
          v114 = v31;
          v115 = v28;
          v116 = v29;
          v117 = v30;
          do
          {
            *(&v121 + v37) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*(&v114 + v37))), v39, *&v114.f32[v37 / 4], 1), v40, *(&v114 + v37), 2), v41, *(&v114 + v37), 3);
            v37 += 16;
          }

          while (v37 != 64);
          v42 = 0;
          v104 = v122;
          v106 = v121;
          v100 = v124;
          v102 = v123;
          v43 = *&self->_anon_2d0[192];
          v44 = *&self->_anon_2d0[208];
          v45 = *&self->_anon_2d0[224];
          v46 = *&self->_anon_2d0[240];
          v114 = v31;
          v115 = v28;
          v116 = v29;
          v117 = v30;
          do
          {
            *(&v121 + v42) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, COERCE_FLOAT(*(&v114 + v42))), v44, *&v114.f32[v42 / 4], 1), v45, *(&v114 + v42), 2), v46, *(&v114 + v42), 3);
            v42 += 16;
          }

          while (v42 != 64);
          v98 = v122;
          v99 = v121;
          v96 = v124;
          v97 = v123;
          v47 = *&self->_anon_2d0[144];
          v133 = *&self->_anon_2d0[128];
          v134 = v47;
          v48 = *&self->_anon_2d0[176];
          v135 = *&self->_anon_2d0[160];
          v136 = v48;
        }

        if (sub_1AFDE22D8(v17))
        {
          objc_msgSend_renderSize(self, v49, v50);
          v51 = 0;
          v114.i64[0] = v52;
          v53 = *&self->_anon_3408[2152];
          v54 = *&self->_anon_3408[2168];
          v55 = *&self->_anon_3408[2184];
          v56 = *&self->_anon_3408[2200];
          do
          {
            v57 = 0;
            v108 = v53;
            v58 = *(&v108 & 0xFFFFFFFFFFFFFFF3 | (4 * (v51 & 3)));
            v59 = (&v109 & 0xFFFFFFFFFFFFFFF3 | (4 * (v51 & 3)));
            v109 = v54;
            v60 = *(&v54 + 3) - *v59;
            v61 = *(&v54 + 3) + *v59;
            v110 = v55;
            v62 = *(&v110 & 0xFFFFFFFFFFFFFFF3 | (4 * (v51 & 3)));
            v111 = v56;
            v63 = *(&v111 & 0xFFFFFFFFFFFFFFF3 | (4 * (v51 & 3)));
            v64 = *(&v55 + 3) - v62;
            v65 = *(&v55 + 3) + v62;
            v66 = 1;
            do
            {
              v67 = v66 & 1;
              if (v66)
              {
                v68 = v58;
              }

              else
              {
                v68 = -v58;
              }

              v69 = v57 | (2 * v51);
              v70 = *(&v115 + v69);
              v70.f32[0] = *(&v53 + 3) + v68;
              if (v66)
              {
                v71 = v61;
              }

              else
              {
                v71 = v60;
              }

              if (v66)
              {
                v72 = v65;
              }

              else
              {
                v72 = v64;
              }

              if (v66)
              {
                v73 = v63;
              }

              else
              {
                v73 = -v63;
              }

              v70.f32[1] = v71;
              v70.f32[2] = v72;
              v74 = vmulq_f32(v70, v70);
              v70.f32[3] = *(&v56 + 3) + v73;
              *(&v115 + v69) = vmulq_n_f32(v70, sqrtf(v74.f32[2] + vaddv_f32(*v74.f32)));
              v57 = 1;
              v66 = 0;
            }

            while (v67);
            ++v51;
          }

          while (v51 != 3);
        }

        v113 = 0;
        v121 = v106;
        v122 = v104;
        v123 = v102;
        v124 = v100;
        v125 = v99;
        v126 = v98;
        v127 = v97;
        v128 = v96;
        v129 = v133;
        v130 = v134;
        v131 = v135;
        v132 = v136;
        v112[4] = v118;
        v112[5] = v119;
        v112[6] = v120;
        v112[0] = v114;
        v112[1] = v115;
        v112[2] = v116;
        v112[3] = v117;
        v75 = sub_1AFDE22F0(v17, self, v15, &v121, v112, &v113);
        if (v11)
        {
          return sub_1AF17780C(modelCopy, self, v76);
        }

        v36 = v75;
        if (v75)
        {
          v77 = sub_1AFDEA208(v75);
          if (!objc_msgSend_count(v77, v78, v79))
          {
            v81 = sub_1AF1B2C1C(modelCopy, v80);
            v83 = sub_1AF1A3CCC(v81, v82);
            v84 = objc_alloc(MEMORY[0x1E695DF70]);
            v86 = objc_msgSend_initWithCapacity_(v84, v85, v83);
            if (v83 >= 1)
            {
              for (i = 0; i != v83; ++i)
              {
                v88 = sub_1AF1A3D1C(v81, i, v12);
                if (v88)
                {
                  v90 = sub_1AF1A7034(v88, v89);
                  v91 = sub_1AF1F156C(v90);
                  if (v91)
                  {
                    v93 = sub_1AFDE7F98(self->_resourceManager);
                    objc_msgSend_addObject_(v86, v94, v93);
                  }

                  else
                  {
                    v95 = sub_1AF0D5194(v91, v92);
                    if (os_log_type_enabled(v95, OS_LOG_TYPE_FAULT))
                    {
                      sub_1AFDE655C(&v121, (&v121 + 4), v95);
                    }
                  }
                }
              }
            }

            sub_1AFDEA214(v36, v86);
          }
        }

        return v36;
      }
    }
  }

  if (v11)
  {

    return sub_1AF17780C(modelCopy, self, v10);
  }

  else
  {
    v33 = sub_1AF1B2E04(modelCopy, v9);
    if (!v33)
    {
      return 0;
    }

    v34 = v33;
    resourceManager = self->_resourceManager;

    return sub_1AF20E1F8(resourceManager, v34, v12);
  }
}

- (void)_logLightingInformation
{
  NSLog(&cfstr_LightingsetUpl.isa, a2, self->_lighting.frameLightingSetDatas.__table_.__size_);
  next = self->_lighting.frameLightingSetDatas.__table_.__first_node_.__next_;
  if (next)
  {
    LODWORD(v4) = 0;
    do
    {
      v4 = (v4 + next[10]);
      next = *next;
    }

    while (next);
  }

  else
  {
    v4 = 0;
  }

  NSLog(&cfstr_LightingsetUpl_0.isa, v4);
}

- (void)setRasterizerStates:(__CFXRasterizerStates *)states
{
  statesCopy = states;
  if (!states)
  {
    statesCopy = sub_1AF1C45EC();
  }

  if (self->_cache.rasterizerStates != statesCopy)
  {
    v29 = 0;
    v30[0] = 0;
    *(v30 + 5) = 0;
    sub_1AF1C458C(statesCopy, a2, &v29);
    rasterizerStates = self->_cache.rasterizerStates;
    if (rasterizerStates)
    {
      v27 = 0;
      v28[0] = 0;
      *(v28 + 5) = 0;
      sub_1AF1C458C(rasterizerStates, v5, &v27);
      v7 = v29;
      if (v27 == v29)
      {
        v8 = 2;
      }

      else
      {
        v8 = 3;
      }

      if (BYTE1(v27) == BYTE1(v29))
      {
        v9 = v27 != v29;
      }

      else
      {
        v9 = v8;
      }

      if (BYTE2(v27) == BYTE2(v29))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 | 4;
      }

      if (BYTE2(v29) == 1 && BYTE4(v27) != BYTE4(v29) || (v27 & 0x10000) == 0)
      {
        v10 |= 8u;
      }

      if (BYTE2(v29) && BYTE3(v27) != BYTE3(v29) || (v27 & 0x10000) == 0)
      {
        v10 |= 0x10u;
      }

      if ((v29 & 0x10000000000) != 0 || BYTE5(v27) == 1)
      {
        LOBYTE(v10) = v10 | 0x20;
      }

      else if (!v10)
      {
        v19 = sub_1AF0D5194(v29, v5);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE65A4(v19, v20, v21, v22, v23, v24, v25, v26);
        }

        goto LABEL_30;
      }

      if ((v10 & 1) == 0)
      {
        if ((v10 & 2) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    else
    {
      LOBYTE(v10) = -1;
      v7 = v29;
    }

    renderEncoder = self->_renderEncoder;
    v17 = sub_1AF1F1250(v7, v5);
    objc_msgSend_setCullMode_(renderEncoder->var3, v18, v17);
    if ((v10 & 2) == 0)
    {
LABEL_28:
      if ((v10 & 0x3C) != 0)
      {
        v14 = sub_1AFDE7C58(self->_resourceManager);
        objc_msgSend_setDepthStencilState_(self->_renderEncoder->var3, v15, v14);
      }

LABEL_30:
      self->_cache.rasterizerStates = statesCopy;
      return;
    }

LABEL_27:
    v11 = self->_renderEncoder;
    v12 = sub_1AF1F12A4(BYTE1(v29), v5);
    objc_msgSend_setTriangleFillMode_(v11->var3, v13, v12);
    goto LABEL_28;
  }
}

- (void)_setWorldBufferAtVertexIndex:(int64_t)index fragmentIndex:(int64_t)fragmentIndex
{
  fragmentIndexCopy = fragmentIndex;
  indexCopy = index;
  if (sub_1AF12E2A0(self->_engineContext))
  {
    v7 = sub_1AF1310A0(self->_engineContext);

    sub_1AF1FD200(v7, indexCopy | (fragmentIndexCopy << 8), 3);
  }

  else
  {
    renderEncoder = self->_renderEncoder;
    CFXBufferSliceGetMTLBuffer();
    v11 = v9;
    offset = self->_worldUniforms.impl._offset;
    v13 = fragmentIndexCopy << 8;
    if (indexCopy != 0xFF)
    {
      objc_msgSend_setVertexBuffer_offset_atIndex_(renderEncoder->var3, v10, v9, offset, indexCopy);
    }

    if (v13 != 65280)
    {
      var3 = renderEncoder->var3;

      objc_msgSend_setFragmentBuffer_offset_atIndex_(var3, v10, v11, offset, v13 >> 8);
    }
  }
}

- (void)_setMeshBuffers:(id)buffers
{
  v15[14] = *MEMORY[0x1E69E9840];
  memset(v14, 0, sizeof(v14));
  v5 = sub_1AFDEA1E8(buffers);
  v8 = objc_msgSend_count(v5, v6, v7);
  if (v8 >= 0xE)
  {
    v9 = 14;
  }

  else
  {
    v9 = v8;
  }

  v10 = sub_1AFDEA1E8(buffers);
  objc_msgSend_getObjects_range_(v10, v11, v15, 0, v9);
  if (sub_1AFDEA228(buffers))
  {
    *(v14 + v9) = sub_1AFDEA248(buffers);
    v15[v9++] = sub_1AFDEA228(buffers);
  }

  renderEncoder = self->_renderEncoder;
  if (v9 == 1)
  {
    objc_msgSend_setVertexBuffer_offset_atIndex_(renderEncoder->var3, v12, v15[0], *&v14[0], 18);
  }

  else
  {
    objc_msgSend_setVertexBuffers_offsets_withRange_(renderEncoder->var3, v12, v15, v14, 18, v9);
  }
}

- (void)_drawMeshElement:(id)element instanceCount:(unint64_t)count
{
  ++self->__engineStats->drawCount;
  if (!element)
  {
    v7 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE661C(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  if (sub_1AFDEA1E8(element))
  {
    renderEncoder = self->_renderEncoder;
    v16 = sub_1AFDE323C(element);
    v17 = sub_1AFDEA208(element);
    v18 = sub_1AFDE868C(element);
    v21 = objc_msgSend_buffer(v18, v19, v20);
    v22 = sub_1AFDEA330(element);
    v23 = sub_1AFDE868C(element);
    v26 = objc_msgSend_offset(v23, v24, v25);
    v27 = v22 + sub_1AFDE8614(element);
    v28 = sub_1AFDEA1E8(element);
    v29 = sub_1AFDEA248(element);
    objc_msgSend_drawIndexedPrimitives_indexType_indexBuffer_indexBufferOffset_indirectBuffer_indirectBufferOffset_(renderEncoder->var3, v30, v16, v17, v21, v26 + v27, v28, v29);
  }

  else
  {
    v35 = sub_1AFDE868C(element);
    v36 = self->_renderEncoder;
    v37 = sub_1AFDE323C(element);
    if (v35)
    {
      v38 = sub_1AFDEA228(element);
      v39 = sub_1AFDEA208(element);
      v40 = sub_1AFDE868C(element);
      v43 = objc_msgSend_buffer(v40, v41, v42);
      v44 = sub_1AFDEA330(element);
      v45 = sub_1AFDE868C(element);
      v48 = objc_msgSend_offset(v45, v46, v47);
      v50 = v44 + sub_1AFDE8614(element);
      var3 = v36->var3;
      v52 = v48 + v50;
      if (v36->var0 * count < 2)
      {
        objc_msgSend_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_(var3, v49, v37, v38, v39, v43, v52);
      }

      else
      {
        objc_msgSend_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_(var3, v49, v37, v38, v39, v43, v52);
      }
    }

    else
    {
      v53 = sub_1AFDEA330(element);
      v55 = sub_1AFDEA228(element);
      v56 = v36->var3;
      if (v36->var0 * count < 2)
      {
        objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v56, v54, v37, v53, v55);
      }

      else
      {
        objc_msgSend_drawPrimitives_vertexStart_vertexCount_instanceCount_(v56, v54, v37, v53, v55);
      }
    }
  }

  v31 = sub_1AFDEA5A8(element);
  engineStats = self->__engineStats;
  engineStats->primitivesProcessed += v31 * count;
  metalMesh = self->_cache.metalMesh;
  if (metalMesh)
  {
    v34 = sub_1AFDEA290(metalMesh) * count;
    engineStats = self->__engineStats;
  }

  else
  {
    v34 = 0;
  }

  engineStats->verticesProcessed += v34;
}

- (void)_drawPatchForMeshElement:(id)element instanceCount:(unint64_t)count
{
  if (sub_1AFDEA208(element) != 1)
  {
    v7 = sub_1AFDEA208(element);
    if (v7)
    {
      v9 = sub_1AF0D5194(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE6694(v9, v10, v11, v12, v13, v14, v15, v16);
      }
    }
  }

  v17 = sub_1AFDE323C(element);
  if (v17 != 3)
  {
    v19 = sub_1AF0D5194(v17, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE670C(v19, v20, v21, v22, v23, v24, v25, v26);
    }
  }

  ++self->__engineStats->drawCount;
  renderEncoder = self->_renderEncoder;
  v28 = sub_1AFDEA534(element);
  v29 = sub_1AFDE868C(element);
  v32 = objc_msgSend_buffer(v29, v30, v31);
  v33 = sub_1AFDE868C(element);
  v36 = objc_msgSend_offset(v33, v34, v35);
  v37 = sub_1AFDE8614(element);
  objc_msgSend_drawIndexedPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_instanceCount_baseInstance_(renderEncoder->var3, v38, 3, 0, v28, 0, 0, v32, v37 + v36, renderEncoder->var0 * count, 0);
  v39 = sub_1AFDEA534(element);
  engineStats = self->__engineStats;
  engineStats->primitivesProcessed += v39 * count;
  metalMesh = self->_cache.metalMesh;
  if (metalMesh)
  {
    v42 = sub_1AFDEA290(metalMesh) * count;
    engineStats = self->__engineStats;
  }

  else
  {
    v42 = 0;
  }

  engineStats->verticesProcessed += v42;
}

- (void)_updateProjectionMatrixForOrthographicSkyboxRenderingIfNeeded:(id *)needed
{
  v9 = *(needed + 2);
  if (*(&v9 + 3) == 0.0)
  {
    v32 = v8;
    v33 = v7;
    v34 = v6;
    v35 = v5;
    v36 = v3;
    v37 = v4;
    v11 = *(needed + 14);
    v12 = (v11 + -1.0) / *(&v9 + 2);
    *&v12 = v12;
    *v13.i32 = v11 / *(&v9 + 2);
    *&v9 = *v13.i32;
    v13.i32[1] = LODWORD(v12);
    v29 = vbsl_s8(vdup_lane_s32(vcgt_f32(*&v9, *&v12), 0), vrev64_s32(v13), v13);
    v14 = sub_1AF130548(self->_engineContext);
    if (v14.n128_f32[3] == 0.0)
    {
      v15 = 1.0;
    }

    else
    {
      v15 = v14.n128_f32[2] / v14.n128_f32[3];
    }

    v16 = *v29.i32;
    v17 = __tanpi(0.166666667);
    v18 = 0;
    if (v17 == 0.0)
    {
      v19 = 1.0;
    }

    else
    {
      v19 = 1.0 / v17;
    }

    v20 = v19;
    v21 = v16 + 1.0;
    if (*&v29.i32[1] > *v29.i32)
    {
      v21 = *&v29.i32[1];
    }

    v22 = v21 / (v16 - v21);
    *&v23 = v22;
    *&v22 = v22 * v16;
    *&v24 = 0;
    *(&v24 + 1) = __PAIR64__(-1.0, v23);
    *&v25 = 0;
    *(&v25 + 1) = LODWORD(v22);
    LODWORD(v22) = 0;
    *(&v22 + 1) = v15 * v20;
    v30[0] = LODWORD(v20);
    v30[1] = *&v22;
    v30[2] = v24;
    v30[3] = v25;
    do
    {
      v31[v18] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(v30[v18])), xmmword_1AFE20160, *&v30[v18], 1), xmmword_1AFE206C0, v30[v18], 2), xmmword_1AFE20BF0, v30[v18], 3);
      ++v18;
    }

    while (v18 != 4);
    v26 = v31[1];
    v27 = v31[2];
    v28 = v31[3];
    *needed = v31[0];
    *(needed + 1) = v26;
    *(needed + 2) = v27;
    *(needed + 3) = v28;
  }
}

- (float)_zFarForSkyboxRenderingProjectionMatrix:(id *)matrix defaultZFar:(float)far
{
  farCopy = 1000000.0;
  if (fabsf(far) != INFINITY)
  {
    farCopy = far;
  }

  v5 = far <= 0.0;
  result = 1.0;
  if (!v5)
  {
    return farCopy;
  }

  return result;
}

- (void)renderBackground:(__CFXMaterialProperty *)background engineContext:(__CFXEngineContext *)context passInstance:(__CFXPassInstance *)instance
{
  v180 = *MEMORY[0x1E69E9840];
  v167 = 0;
  v10 = sub_1AF16679C(background, a2);
  v12 = sub_1AF167578(background, v11);
  v13 = sub_1AF130338(context);
  v15 = v13;
  if (v13 && sub_1AF121B74(v13) != v12)
  {
    sub_1AF1302E4(context, 0);
    v15 = 0;
  }

  if (v12)
  {
    if (!v15)
    {
      v15 = sub_1AF276584(v12, v10, context);
      sub_1AF1302E4(context, v15);
      CFRelease(v15);
      if (!v15)
      {
        return;
      }
    }

    v16 = sub_1AF276950(v15, context, v10, &v158);
  }

  else
  {
    v16 = objc_msgSend_textureForMaterialProperty_(self, v14, background);
  }

  v18 = v16;
  v167 = v16;
  if (!v16)
  {
    return;
  }

  v141 = sub_1AF12DDCC(context, v17);
  if (objc_msgSend_textureType(v18, v19, v20) == 5)
  {
    v26 = sub_1AF12E014(context);
    v27 = self->_backgroundCubeProgram[self->_renderPassParameters.viewMapping];
    v28 = sub_1AF13050C(context, 1);
    v29 = sub_1AF167434(background);
    v148 = v28[2];
    v151 = *v28;
    v145 = v28[1];
    if (v29)
    {
      v142 = v28[3];
      v31 = sub_1AF167220(background, v30);
      v32 = 0;
      v33 = v31[1];
      v34 = v31[2];
      v35 = v31[3];
      v172 = *v31;
      v173 = v33;
      v174 = v34;
      v175 = v35;
      do
      {
        *(&v158 + v32) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v151, COERCE_FLOAT(*(&v172 + v32))), v145, *&v172.f32[v32 / 4], 1), v148, *(&v172 + v32), 2), v142, *(&v172 + v32), 3);
        v32 += 16;
      }

      while (v32 != 64);
      v145 = v159;
      v148 = v160;
      v151 = v158;
    }

    v36 = v26;
    v37 = sub_1AF13050C(self->_engineContext, 0);
    v38 = v37[3];
    v40 = *v37;
    v39 = v37[1];
    v170 = v37[2];
    v171 = v38;
    v168 = v40;
    v169 = v39;
    objc_msgSend__updateProjectionMatrixForOrthographicSkyboxRenderingIfNeeded_(self, v41, &v168);
    v43 = 0;
    v44 = v168;
    v45 = v169;
    v46 = v170;
    v47 = v171;
    v172 = v151;
    v173 = v145;
    v174 = v148;
    v175 = xmmword_1AFE201A0;
    do
    {
      *(&v158 + v43) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v44, COERCE_FLOAT(*(&v172 + v43))), v45, *&v172.f32[v43 / 4], 1), v46, *(&v172 + v43), 2), v47, *(&v172 + v43), 3);
      v43 += 16;
    }

    while (v43 != 64);
    v143 = v158;
    v146 = v159;
    v49 = v160;
    v48 = v161;
  }

  else
  {
    v36 = sub_1AF130340(context, v21, v22, v23, v24, v25);
    v27 = self->_background2DProgram[self->_renderPassParameters.viewMapping];
    if (!sub_1AF167434(background))
    {
      v152 = xmmword_1AFE201A0;
      v149 = xmmword_1AFE20180;
      v146 = xmmword_1AFE20160;
      v143 = xmmword_1AFE20150;
      goto LABEL_22;
    }

    v50 = sub_1AF167220(background, v42);
    v143 = *v50;
    v146 = v50[1];
    v49 = v50[2];
    v48 = v50[3];
  }

  v149 = v49;
  v152 = v48;
LABEL_22:
  objc_msgSend_pushDebugGroup_(self, v42, @"VFX - Draw world background");
  v51 = sub_1AF20E1F8(self->_resourceManager, v36, 1);
  *&v178[7] = 0;
  *v178 = 0;
  v52 = sub_1AFDEA004(v51);
  v139 = v51;
  v54 = sub_1AFDEA078(v51, v53);
  v56 = v54;
  if (self->_currentClearColor.alpha == 1.0)
  {
    v57 = sub_1AF15BC40(v54, v55);
  }

  else
  {
    v57 = sub_1AF15BBC4(v54, v55);
  }

  eyeCount = self->_renderPassParameters.eyeCount;
  viewMapping = self->_renderPassParameters.viewMapping;
  if (self->_renderPassParameters.multiVertexOutputStreamGenerator == 2)
  {
    v61 = 2;
  }

  else
  {
    v61 = 1;
  }

  v179 = 0;
  *&v178[15] = 0;
  resourceManager = self->_resourceManager;
  *&v158 = 0;
  *(&v158 + 1) = v27;
  v159 = 0uLL;
  *&v160 = 0;
  *(&v160 + 1) = v57;
  LOWORD(v161) = 783;
  BYTE2(v161) = eyeCount;
  BYTE3(v161) = v61;
  DWORD1(v161) = 0;
  *(&v161 + 1) = v52;
  *&v162[0] = v56;
  BYTE8(v162[0]) = viewMapping;
  memset(&v162[1] + 8, 0, 24);
  *(v162 + 9) = *v178;
  v63 = objc_msgSend_renderResourceForProgramDesc_renderPassDesc_(resourceManager, v58, &v158, &self->_currentRenderPassDesc);
  renderEncoder = self->_renderEncoder;
  v67 = objc_msgSend_state(v63, v65, v66);
  objc_msgSend_setRenderPipelineState_(renderEncoder->var3, v68, v67);
  v70 = 608;
  if (!self->_renderPassParameters.viewMapping)
  {
    v70 = 600;
  }

  objc_msgSend_setRasterizerStates_(self, v69, *(&self->super.isa + v70));
  v166 = sub_1AF166598(background, v71);
  sub_1AF1F905C(self->_renderEncoder, &v166, 4uLL, 0);
  v72 = sub_1AFDE8554(self->_resourceManager);
  if (objc_msgSend_pixelFormat(v18, v73, v74) == 520 || objc_msgSend_pixelFormat(v18, v75, v76) == 500)
  {
    v77 = sub_1AF20107C(self->_renderEncoder, v75);
    sub_1AF1F3034(self->_currentCommandBuffer, &v167, 1);
    v79 = objc_msgSend_setFragmentTexture_atTextureIndex_samplerState_atSamplerIndex_(v77, v78, v167, 0, v72, 0);
  }

  else
  {
    sub_1AF1F8FCC(self->_renderEncoder, v18, 0);
    v79 = objc_msgSend_setFragmentSamplerState_atIndex_(self->_renderEncoder->var3, v81, v72, 0);
  }

  if (self->_renderPassParameters.viewMapping)
  {
    v138 = v36;
    if (!instance)
    {
      v82 = sub_1AF0D5194(v79, v80);
      v79 = os_log_type_enabled(v82, OS_LOG_TYPE_FAULT);
      if (v79)
      {
        sub_1AFDE6784(v82, v80, v83, v84, v85, v86, v87, v88);
      }
    }

    if (self->_renderPassParameters.eyeCount)
    {
      v89 = 0;
      do
      {
        if (v89 >= 6)
        {
          v90 = sub_1AF0D5194(v79, v80);
          if (os_log_type_enabled(v90, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDE67FC(v176, &v177, v90);
          }
        }

        v91 = (&instance[15].var13 + 8 * v89);
        v92 = sub_1AF167434(background);
        v150 = v91[1];
        v153 = *v91;
        v144 = v91[3];
        v147 = v91[2];
        if (v92)
        {
          v94 = sub_1AF167220(background, v93);
          v95 = 0;
          v96 = v94[1];
          v97 = v94[2];
          v98 = v94[3];
          v168 = *v94;
          v169 = v96;
          v170 = v97;
          v171 = v98;
          do
          {
            *(&v172 + v95) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v153, COERCE_FLOAT(*(&v168 + v95))), v150, *&v168.f32[v95 / 4], 1), v147, *(&v168 + v95), 2), v144, *(&v168 + v95), 3);
            v95 += 16;
          }

          while (v95 != 64);
          v150 = v173;
          v153 = v172;
          v144 = v175;
          v147 = v174;
        }

        v99 = &instance[17].var5[8 * v89 + 12];
        v100 = v99[1];
        v154 = *v99;
        v155 = v100;
        v101 = v99[3];
        v156 = v99[2];
        v157 = v101;
        objc_msgSend__updateProjectionMatrixForOrthographicSkyboxRenderingIfNeeded_(self, v93, &v154, v138);
        v103 = 0;
        v104 = v154;
        v105 = v155;
        v106 = v156;
        v107 = v157;
        v168 = v153;
        v169 = v150;
        v170 = v147;
        v171 = v144;
        do
        {
          *(&v172 + v103) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v104, COERCE_FLOAT(*(&v168 + v103))), v105, *&v168.f32[v103 / 4], 1), v106, *(&v168 + v103), 2), v107, *(&v168 + v103), 3);
          v103 += 16;
        }

        while (v103 != 64);
        v108 = v173;
        v109 = v174;
        v110 = v175;
        v111 = (&v158 + 4 * v89);
        *v111 = v172;
        v111[1] = v108;
        v111[2] = v109;
        v111[3] = v110;
        *&v112 = sub_1AF1D0EBC(v141, v102);
        v113 = &v164[64 * v89];
        *v113 = v112;
        v113[1] = v114;
        v113[2] = v115;
        v113[3] = v116;
        ++v89;
      }

      while (v89 < self->_renderPassParameters.eyeCount);
    }

    v117 = sub_1AF13050C(self->_engineContext, 0);
    var12 = instance[27].var12;
    *&var12 = *&var12;
    objc_msgSend__zFarForSkyboxRenderingProjectionMatrix_defaultZFar_(self, v119, v117, *&var12);
    v165 = v120;
    sub_1AF176E98(self->_renderEncoder, &v158, 0x310uLL, 0);
    v36 = v138;
  }

  else
  {
    v158 = v143;
    v159 = v146;
    v160 = v149;
    v161 = v152;
    *&v123 = sub_1AF1D0EBC(v141, v80);
    v162[0] = v123;
    v162[1] = v124;
    v162[2] = v125;
    v162[3] = v126;
    v127 = sub_1AF13050C(self->_engineContext, 0);
    v128 = instance[27].var12;
    *&v128 = *&v128;
    objc_msgSend__zFarForSkyboxRenderingProjectionMatrix_defaultZFar_(self, v129, v127, *&v128);
    v163 = v130;
    sub_1AF176E98(self->_renderEncoder, &v158, 0x90uLL, 0);
  }

  if (self->_cache.geometry != v36)
  {
    self->_cache.geometry = v36;
    objc_msgSend__setMeshBuffers_(self, v121, v139);
  }

  if (objc_msgSend_textureType(v167, v121, v122, v138) == 5)
  {
    v132 = sub_1AFDEA208(v139);
    v134 = objc_msgSend_objectAtIndexedSubscript_(v132, v133, 0);
    objc_msgSend__drawMeshElement_instanceCount_(self, v135, v134, 1);
  }

  else
  {
    sub_1AF2010C8(self->_renderEncoder, v131);
  }

  objc_msgSend_popDebugGroup(self, v136, v137);
}

- (void)renderVideoBackground:(__CFXImageProxy *)background engineContext:(__CFXEngineContext *)context materialProperty:(__CFXMaterialProperty *)property
{
  v90 = *MEMORY[0x1E69E9840];
  objc_msgSend_pushDebugGroup_(self, a2, @"VFX - Draw video background");
  v10 = sub_1AF276754(background, v9);
  v11 = sub_1AF130338(context);
  if (!v11)
  {
    goto LABEL_4;
  }

  v12 = v11;
  if (sub_1AF121B74(v11) != background)
  {
    sub_1AF1302E4(context, 0);
LABEL_4:
    v13 = sub_1AF1C4F6C();
    v12 = sub_1AF276584(background, v13, context);
    sub_1AF1302E4(context, v12);
    CFRelease(v12);
    goto LABEL_6;
  }

  v13 = sub_1AF1C4F6C();
LABEL_6:
  v14 = sub_1AF276950(v12, context, v13, v88);
  v87 = v14;
  if (!v14)
  {
    return;
  }

  v20 = v14;
  propertyCopy = property;
  v21 = sub_1AF130340(context, v15, v16, v17, v18, v19);
  v72 = sub_1AF20E1F8(self->_resourceManager, v21, 1);
  *(v89 + 7) = 0;
  *&v89[0] = 0;
  v23 = sub_1AF12F10C(self->_engineContext, v22);
  if (v23)
  {
    v25 = sub_1AF1BB260(v23, v24);
  }

  else
  {
    v25 = 0;
  }

  v26 = sub_1AF15C4BC(v25, v24);
  v69 = v21;
  if ((*(self + 144) & 4) != 0 && v25 && self->_renderPassParameters.isMainPass && v26 && sub_1AF161288(v26, v27))
  {
    v28 = 592;
  }

  else
  {
    v28 = 584;
  }

  v29 = *(&self->super.isa + v28);
  v30 = sub_1AFDEA004(v72);
  v32 = sub_1AFDEA078(v72, v31);
  eyeCount = self->_renderPassParameters.eyeCount;
  viewMapping = self->_renderPassParameters.viewMapping;
  if (self->_renderPassParameters.multiVertexOutputStreamGenerator == 2)
  {
    v36 = 2;
  }

  else
  {
    v36 = 1;
  }

  *(&v89[1] + 7) = 0;
  *(v89 + 15) = 0;
  resourceManager = self->_resourceManager;
  v74 = 0;
  v75 = v29;
  v76 = 0u;
  v77 = 0u;
  v78 = 783;
  v79 = eyeCount;
  v80 = v36;
  v81 = 0;
  v82 = v30;
  v83 = v32;
  v84 = viewMapping;
  *&v85[15] = *(v89 + 15);
  *v85 = v89[0];
  v86 = 0;
  v38 = objc_msgSend_renderResourceForProgramDesc_renderPassDesc_(resourceManager, v33, &v74, &self->_currentRenderPassDesc, v69);
  renderEncoder = self->_renderEncoder;
  v42 = objc_msgSend_state(v38, v40, v41);
  objc_msgSend_setRenderPipelineState_(renderEncoder->var3, v43, v42);
  objc_msgSend_setRasterizerStates_(self, v44, self->_backgroundRasterizerStates);
  v45 = sub_1AFDE8554(self->_resourceManager);
  if (objc_msgSend_pixelFormat(v20, v46, v47) == 520 || objc_msgSend_pixelFormat(v20, v48, v49) == 500)
  {
    v50 = sub_1AF20107C(self->_renderEncoder, v48);
    sub_1AF1F3034(self->_currentCommandBuffer, &v87, 1);
    v52 = objc_msgSend_setFragmentTexture_atTextureIndex_samplerState_atSamplerIndex_(v50, v51, v87, 0, v45, 0);
  }

  else
  {
    sub_1AF1F8FCC(self->_renderEncoder, v20, 0);
    v52 = objc_msgSend_setFragmentSamplerState_atIndex_(self->_renderEncoder->var3, v54, v45, 0);
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      if (v10 == 1)
      {
        __asm { FMOV            V1.2S, #1.0 }

        v74 = 0x3F80000000000000;
        v75 = _D1;
        *&v76 = 0;
        *(&v76 + 1) = 1065353216;
      }
    }

    else
    {
      v60 = sub_1AF0D5194(v52, v53);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE68BC();
      }
    }

    goto LABEL_35;
  }

  if (v10 == 2)
  {
    sub_1AF2014BC(background, context);
  }

  else if (v10 != 3)
  {
    goto LABEL_35;
  }

  *&v61 = sub_1AF2014BC(background, context);
  v74 = v61;
  v75 = v62;
  *&v76 = v63;
  *(&v76 + 1) = v64;
LABEL_35:
  sub_1AF176E98(self->_renderEncoder, &v74, 0x20uLL, 0);
  v73 = sub_1AF166598(propertyCopy, v65);
  sub_1AF1F905C(self->_renderEncoder, &v73, 4uLL, 0);
  if (self->_cache.geometry != v70)
  {
    self->_cache.geometry = v70;
    objc_msgSend__setMeshBuffers_(self, v66, v72);
  }

  sub_1AF2016F4(self->_renderEncoder, v66);
  objc_msgSend_popDebugGroup(self, v67, v68);
}

- (uint64_t)authoring_renderMesh:(uint64_t)mesh meshElement:(uint64_t)element withProgram:(uint64_t)program uniforms:(const void *)uniforms uniformsLength:(size_t)length rasterizerStates:(uint64_t)states blendStates:(uint64_t)blendStates texture:(uint64_t)self0 sampler:(uint64_t)self1 depthBias:(char)self2
{
  result = sub_1AF218E70(self + 200);
  if (result)
  {
    lengthCopy = length;
    v21 = sub_1AF20E1F8(*(self + 112), mesh, 1);
    if (sub_1AF1A57DC(mesh, v22))
    {
      if (!sub_1AFDEA228(v21))
      {
        v24 = sub_1AF0D5194(0, v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE6924(v24, v25, v26, v27, v28, v29, v30, v31);
        }
      }
    }

    v32 = sub_1AFDE7F98(*(self + 112));
    v33 = sub_1AF1A73D4(element);
    v59 = v32;
    sub_1AFDEA4AC(v32, v33, v34);
    if (*(self + 468) == 2)
    {
      v35 = 2;
    }

    else
    {
      v35 = 1;
    }

    v36 = *(self + 465);
    v37 = sub_1AFDEA004(v21);
    v39 = sub_1AFDEA078(v21, v38);
    v40 = *(self + 467);
    v41 = *(self + 112);
    v60[0] = 0;
    v60[1] = program;
    memset(&v60[2], 0, 24);
    v60[5] = blendStates;
    v61 = 15;
    v62 = v36;
    v63 = v35;
    v64 = 0;
    v65 = v37;
    v66 = v39;
    v67 = v40;
    v68 = 0u;
    memset(v69, 0, sizeof(v69));
    v43 = objc_msgSend_renderResourceForProgramDesc_renderPassDesc_(v41, v42, v60, self + 200);
    v44 = *(self + 424);
    v47 = objc_msgSend_state(v43, v45, v46);
    objc_msgSend_setRenderPipelineState_(*(v44 + 16), v48, v47);
    *(self + 18896) = 0;
    objc_msgSend_setRasterizerStates_(self, v49, states);
    if (uniforms)
    {
      sub_1AF176E98(*(self + 424), uniforms, lengthCopy, 1);
    }

    if (bias)
    {
      LODWORD(v52) = -2.0;
      LODWORD(v53) = -2.0;
      objc_msgSend_setDepthBias_slopeScale_clamp_(*(*(self + 424) + 16), v50, v51, v52, v53, 0.0);
    }

    if (texture)
    {
      v54 = objc_msgSend_renderResourceForImage_sampler_options_engineContext_didFallbackToDefaultTexture_(*(self + 112), v50, texture, sampler, 0, *(self + 136), 0);
      sub_1AF1F8FCC(*(self + 424), v54, 0);
    }

    if (*(self + 18632) != mesh)
    {
      *(self + 18632) = mesh;
      objc_msgSend__setMeshBuffers_(self, v50, v21);
    }

    result = objc_msgSend__drawMeshElement_instanceCount_(self, v50, v59, 1, lengthCopy);
    if (bias)
    {
      return objc_msgSend_setDepthBias_slopeScale_clamp_(*(*(self + 424) + 16), v55, v56, 0.0, 0.0, 0.0);
    }
  }

  else if ((byte_1EB6586A0 & 1) == 0)
  {
    byte_1EB6586A0 = 1;
    v57 = sub_1AF0D5194(result, v20);
    result = os_log_type_enabled(v57, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1AFDE68F0();
    }
  }

  return result;
}

- (void)authoring_drawPrimitives:(unint64_t)primitives vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount vertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets range:(_NSRange)range vertexDescriptor:(id)descriptor withProgram:(__CFXProgram *)self0 uniforms:(const void *)self1 uniformsLength:(unint64_t)self2 rasterizerStates:(__CFXRasterizerStates *)self3 blendStates:(__CFXBlendStates *)self4
{
  v20 = sub_1AF218E70(&self->_currentRenderPassDesc);
  if (v20)
  {
    instanceCountCopy = instanceCount;
    primitivesCopy = primitives;
    countCopy = count;
    self->_cache.geometry = 0;
    if (self->_renderPassParameters.multiVertexOutputStreamGenerator == 2)
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    v56 = 0;
    v55 = 0;
    eyeCount = self->_renderPassParameters.eyeCount;
    v25 = objc_msgSend_hash(descriptor, v21, v22, range.location, range.length);
    viewMapping = self->_renderPassParameters.viewMapping;
    resourceManager = self->_resourceManager;
    v46[0] = 0;
    v46[1] = program;
    memset(&v46[2], 0, 24);
    v46[5] = blendStates;
    v47 = 15;
    v48 = eyeCount;
    v49 = v23;
    v50 = 0;
    descriptorCopy = descriptor;
    v52 = v25;
    v53 = viewMapping;
    v54 = 0;
    v57 = 0u;
    v58 = 0u;
    v29 = objc_msgSend_renderResourceForProgramDesc_renderPassDesc_(resourceManager, v28, v46, &self->_currentRenderPassDesc);
    renderEncoder = self->_renderEncoder;
    v33 = objc_msgSend_state(v29, v31, v32);
    objc_msgSend_setRenderPipelineState_(renderEncoder->var3, v34, v33);
    objc_msgSend_setRasterizerStates_(self, v35, states);
    if (uniforms)
    {
      sub_1AF176E98(self->_renderEncoder, uniforms, length, 1);
    }

    objc_msgSend_setVertexBuffers_offsets_withRange_(self->_renderEncoder->var3, v36, buffers, offsets, v41, v42);
    v38 = self->_renderEncoder;
    var3 = v38->var3;
    if (v38->var0 * instanceCountCopy < 2)
    {
      objc_msgSend_drawPrimitives_vertexStart_vertexCount_(var3, v37, primitivesCopy, 0, countCopy);
    }

    else
    {
      objc_msgSend_drawPrimitives_vertexStart_vertexCount_instanceCount_(var3, v37, primitivesCopy, 0, countCopy);
    }
  }

  else if ((byte_1EB6586A1 & 1) == 0)
  {
    byte_1EB6586A1 = 1;
    v40 = sub_1AF0D5194(v20, v21);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE699C();
    }
  }
}

- (void)authoring_drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer instanceCount:(unint64_t)instanceCount vertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets range:(_NSRange)self0 vertexDescriptor:(id)self1 withProgram:(__CFXProgram *)self2 uniforms:(const void *)self3 uniformsLength:(unint64_t)self4 rasterizerStates:(__CFXRasterizerStates *)self5 blendStates:(__CFXBlendStates *)self6
{
  v23 = sub_1AF218E70(&self->_currentRenderPassDesc);
  if (v23)
  {
    primitivesCopy = primitives;
    countCopy = count;
    bufferCopy = buffer;
    self->_cache.geometry = 0;
    if (self->_renderPassParameters.multiVertexOutputStreamGenerator == 2)
    {
      v26 = 2;
    }

    else
    {
      v26 = 1;
    }

    v60 = 0;
    v59 = 0;
    eyeCount = self->_renderPassParameters.eyeCount;
    v28 = objc_msgSend_hash(descriptor, v24, v25, offsets, range.location, range.length);
    viewMapping = self->_renderPassParameters.viewMapping;
    resourceManager = self->_resourceManager;
    v50[0] = 0;
    v50[1] = program;
    memset(&v50[2], 0, 24);
    v50[5] = blendStates;
    v51 = 15;
    v52 = eyeCount;
    v53 = v26;
    v54 = 0;
    descriptorCopy = descriptor;
    v56 = v28;
    v57 = viewMapping;
    v58 = 0;
    v61 = 0u;
    v62 = 0u;
    v32 = objc_msgSend_renderResourceForProgramDesc_renderPassDesc_(resourceManager, v31, v50, &self->_currentRenderPassDesc);
    renderEncoder = self->_renderEncoder;
    v36 = objc_msgSend_state(v32, v34, v35);
    objc_msgSend_setRenderPipelineState_(renderEncoder->var3, v37, v36);
    objc_msgSend_setRasterizerStates_(self, v38, states);
    if (uniforms)
    {
      sub_1AF176E98(self->_renderEncoder, uniforms, length, 1);
    }

    objc_msgSend_setVertexBuffers_offsets_withRange_(self->_renderEncoder->var3, v39, buffers, v44, v45, v46);
    v41 = self->_renderEncoder;
    var3 = v41->var3;
    if (v41->var0 * instanceCount < 2)
    {
      objc_msgSend_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_(var3, v40, primitivesCopy, countCopy, type, bufferCopy, 0);
    }

    else
    {
      objc_msgSend_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_(var3, v40, primitivesCopy, countCopy, type, bufferCopy, 0);
    }
  }

  else if ((byte_1EB6586A2 & 1) == 0)
  {
    byte_1EB6586A2 = 1;
    v43 = sub_1AF0D5194(v23, v24);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE699C();
    }
  }
}

- (void)authoring_drawDeformersForNode:(__CFXNode *)node authoringEnvironment:(void *)environment
{
  if (node)
  {
    v7 = sub_1AF1B7558(node, a2);
    if (v7)
    {
      v9 = v7;
      if (sub_1AF16B74C(v7, v8))
      {
        v11 = sub_1AF1B75A0(node, v10);
        if (v11)
        {
          v13 = sub_1AF1B40A0(v11, v12);
          v15 = objc_msgSend_renderResourceForDeformerStack_node_dataKind_(self->_resourceManager, v14, v9, node, v13);
        }

        else
        {
          v15 = objc_msgSend_renderResourceForDeformerStack_node_dataKind_(self->_resourceManager, v12, v9, node, 1);
        }

        sub_1AFDE287C(v15, environment, self);
      }
    }
  }
}

- (void)processRendererElements:(id *)elements count:(unsigned int)count engineIterationContext:(id *)context
{
  LODWORD(i) = count;
  *&v46[5] = *MEMORY[0x1E69E9840];
  var1 = context->var1;
  var2 = context->var2;
  v42 = *(context->var0 + 20);
  v41 = sub_1AF130504(var1);
  v40 = sub_1AF12EDD8(var1, v10);
  if (self->_debugOptions & 2) != 0 && (BYTE2(var2[27].var5[4]))
  {
    v12 = 1;
    objc_msgSend_setTriangleFillMode_(self->_renderEncoder->var3, v11, 1);
    sub_1AF2021D8(self->_renderEncoder, 1);
  }

  else
  {
    v12 = 0;
  }

  contextCopy = context;
  objc_msgSend_startProcessingRendererElementsWithEngineIterationContext_(self, v11, context);
  if (!context->var10)
  {
    return;
  }

  v39 = sub_1AF1302DC(var1);
  v38 = sub_1AF1D0188(*&var2[27].var7, v14);
  if (sub_1AF12E2A0(var1))
  {
    v17 = sub_1AF1310A0(var1);
    if (!i)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v17 = 0;
    if (!i)
    {
      goto LABEL_46;
    }
  }

  v35 = v12;
  v18 = 0;
  v19 = 0;
  elementsCopy = elements;
  v36 = i;
  for (i = i; i; --i)
  {
    v20 = *elements++;
    contextCopy = contextCopy & 0xFFFFFFFF00000000 | v20;
    v21 = sub_1AF1474D8(v42, contextCopy);
    v22 = v21;
    if (context->var12 && !sub_1AF146200(v21))
    {
LABEL_42:
      v26 = v19;
      v22 = v18;
      goto LABEL_43;
    }

    CurrentPassHash = objc_msgSend_getCurrentPassHash(self, v15, v16, v35);
    v25 = sub_1AF1D632C(var2, v24);
    v26 = sub_1AF1402E0(v40, v22, v25, CurrentPassHash);
    if (v18)
    {
      if (!sub_1AF145EB0(v18) && !sub_1AF145EB0(v22) && v18[2] == *(v22 + 16) && v18[3] == *(v22 + 24) && v18[6] == *(v22 + 48) && v19 == v26 && v18[7] == *(v22 + 56) && v18[8] == *(v22 + 64) && sub_1AF16B7C8(v18[1], *(v22 + 8)) && sub_1AF12DBA4(v38, *(v22 + 8)))
      {
        goto LABEL_42;
      }

      sub_1AF202238(self, v18, var2);
      sub_1AF12DB94(v38);
      v19 = 0;
    }

    if (!sub_1AF145EB0(v22) && !v39 && v26 && sub_1AF13E540(v26) && (v27 = *(v22 + 16)) != 0 && sub_1AF1B3F80(v27))
    {
      v28 = sub_1AF13E540(v26);
      if ((v28 & 1) == 0)
      {
        v30 = sub_1AF0D5194(v28, v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE69D0(v45, v46, v30);
        }
      }

      sub_1AF12DBA4(v38, *(v22 + 8));
    }

    else
    {
      if (v17)
      {
        sub_1AF1B7A3C(*(v22 + 8), &v44);
        sub_1AF22D78C(v17, 0, xmmword_1AFE22A50, unk_1AFE22A60);
        sub_1AF202238(self, v22, var2);
        sub_1AF22D814(v17, v31);
      }

      else
      {
        sub_1AF202238(self, v22, var2);
      }

      v22 = 0;
      v26 = v19;
    }

    if (v41 && ((*(v41 + 16))() & 1) != 0)
    {
      break;
    }

    ++self->__engineStats->drawStep;
LABEL_43:
    v18 = v22;
    v19 = v26;
  }

  elements = elementsCopy;
  LODWORD(i) = v36;
  LODWORD(v12) = v35;
  if (v22)
  {
    sub_1AF202238(self, v22, var2);
    sub_1AF12DB94(v38);
  }

LABEL_46:
  isMainPass = self->_processingContext.isMainPass;
  if ((objc_msgSend_debugOptions(self, v15, v16, v35) & 4) != 0 && isMainPass)
  {
    objc_msgSend_drawWireframeOverlayForElements_range_store_passInstance_(self, v33, elements, 0, i, v42, context->var2);
  }

  if (v12)
  {
    sub_1AF2021D8(self->_renderEncoder, 0);
    objc_msgSend_setTriangleFillMode_(self->_renderEncoder->var3, v34, 0);
  }

  objc_msgSend_stopProcessingRendererElements_(self, v33, isMainPass);
}

- (void)startProcessingRendererElementsWithEngineIterationContext:(id *)context
{
  v5 = sub_1AF12DDCC(context->var1, a2);
  objc_msgSend__fillProcessingContextWithEngineIterationContext_(self, v6, context);
  objc_msgSend__fillFrameUniformsWithWorld_(self, v7, v5);
  self->_renderGraphParticleMaterialOverride = context->var5;
  if (context->var11)
  {

    objc_msgSend__fillVFXCoreRenderData(self, v8, v9);
  }
}

- (uint64_t)_fillProcessingContextWithCullingContext:(uint64_t)context
{
  v5 = *(context + 14688);
  *(self + 640) = sub_1AF1D00F8(v5, a2);
  *(self + 688) = sub_1AF1D0218(v5, v6);
  result = sub_1AF1D0188(v5, v7);
  *(self + 648) = result;
  *(self + 664) = context;
  *(self + 656) = 0;
  *(self + 672) = 0;
  *(self + 680) = 256;
  *(self + 696) = 0;
  return result;
}

- (void)_fillProcessingContextWithEngineIterationContext:(id *)context
{
  selfCopy = self;
  if (context->var1 != self->_engineContext)
  {
    v5 = sub_1AF0D5194(self, a2);
    self = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT);
    if (self)
    {
      sub_1AFDE6BF8(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  var2 = context->var2;
  if (!var2)
  {
    v13 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE6C70(v13, a2, v14, v15, v16, v17, v18, v19);
    }
  }

  objc_msgSend__fillProcessingContextWithCullingContext_(selfCopy, a2, &var2->var7);
  selfCopy->_processingContext.renderingOverrides = sub_1AF1D632C(var2, v20);
  selfCopy->_processingContext.passInstance = var2;
  var4 = context->var4;
  selfCopy->_processingContext.renderGraphPass = context->var3;
  selfCopy->_processingContext.passRequiresLighting = context->var6;
  selfCopy->_processingContext.isMainPass = context->var9;
  selfCopy->_processingContext.programHashCodeStoreKey = var4;
}

- (void)updateFrameConstants
{
  v3 = sub_1AF1302D4(self->_engineContext);
  v4 = modf(v3, &__y);
  *&self->_anon_2d0[768] = sub_1AF130770(self->_engineContext, v5, v6);
  v7 = v3;
  *&self->_anon_2d0[440] = v7;
  v8 = v4;
  *&self->_anon_2d0[444] = v8;
  v9 = sub_1AF1302B4(self->_engineContext);
  *&self->_anon_2d0[448] = v9;
}

- (void)_updateViewDependentConstants:(uint64_t)constants world:(__n128 *)world
{
  if (*(self + 467))
  {
    v4 = *(self + 465);
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v7 = 0;
    v8 = (self + 720);
    v66 = constants + 7168;
    v67 = constants + 0x2000;
    v9 = constants + 10240;
    v10 = constants + 9216;
    v64 = constants + 11264;
    v11 = v4;
    __asm { FMOV            V0.4S, #1.0 }

    v65 = _Q0;
    v17 = self + 736;
    do
    {
      v18 = *(self + 464);
      if (v7)
      {
        memcpy((v17 - 16), v8, 0x310uLL);
      }

      v19 = v7 + v18;
      v20 = (v67 + ((v7 + v18) << 6));
      v21 = *v20;
      v22 = *(v20 + 1);
      v23 = *(v20 + 2);
      v24 = *(v20 + 3);
      *(v17 - 16) = *v20;
      *v17 = v22;
      *(v17 + 16) = v23;
      *(v17 + 32) = v24;
      v25 = (v66 + ((v7 + v18) << 6));
      v26 = v25[1];
      v27 = v25[2];
      v28 = v25[3];
      *(v17 + 48) = *v25;
      *(v17 + 64) = v26;
      *(v17 + 80) = v27;
      *(v17 + 96) = v28;
      v29 = vmulq_f32(v21, v21);
      v30 = vmulq_f32(v22, v22);
      v31 = vmulq_f32(v23, v23);
      v32 = vzip1q_s32(v29, v31);
      v33 = vzip2q_s32(v29, v31);
      v34 = vtrn2q_s32(v29, v30);
      v34.i32[2] = v31.i32[1];
      v35 = vaddq_f32(vzip1q_s32(v33, vdupq_laneq_s32(v30, 2)), vaddq_f32(vzip1q_s32(v32, v30), v34));
      v36 = vceqzq_f32(v35);
      v36.i32[3] = 0;
      v37 = vbslq_s8(vcltzq_s32(v36), v35, vdivq_f32(v65, v35));
      *(v17 + 672) = vmulq_n_f32(v21, v37.f32[0]);
      *(v17 + 688) = vmulq_lane_f32(v22, *v37.f32, 1);
      *(v17 + 704) = vmulq_laneq_f32(v23, v37, 2);
      *(v17 + 720) = v24;
      v38 = (v9 + ((v7 + v18) << 6));
      v39 = v38[1];
      v40 = v38[2];
      v41 = v38[3];
      *(v17 + 176) = *v38;
      *(v17 + 192) = v39;
      *(v17 + 208) = v40;
      *(v17 + 224) = v41;
      v69.columns[0] = v21;
      v69.columns[1] = v22;
      v69.columns[2] = v23;
      v69.columns[3] = v24;
      sub_1AF1D0B30(world, &v69);
      v42 = v69.columns[1];
      v43 = v69.columns[2];
      v44 = v69.columns[3];
      *(v17 + 240) = v69.columns[0];
      *(v17 + 256) = v42;
      *(v17 + 272) = v43;
      *(v17 + 288) = v44;
      v45 = (v10 + ((v7 + v18) << 6));
      v46 = v45[1];
      v47 = v45[2];
      v48 = v45[3];
      *(v17 + 112) = *v45;
      *(v17 + 128) = v46;
      *(v17 + 144) = v47;
      *(v17 + 160) = v48;
      if (sub_1AF130540(*(self + 136)))
      {
        v50 = (v64 + (v19 << 6));
        v51 = v50[1];
        v52 = v50[2];
        v53 = v50[3];
        *(v17 + 304) = *v50;
        *(v17 + 320) = v51;
        *(v17 + 336) = v52;
        *(v17 + 352) = v53;
        v54 = sub_1AF12F10C(*(constants + 14696), v49);
        if (v54)
        {
          v56 = sub_1AF1BB260(v54, v55);
          if (v56)
          {
            v58 = v56;
            if (sub_1AF15CEC0(v56, v57))
            {
              v60 = sub_1AF15C3C4(v58, v59);
              *(v17 + 436) = sub_1AF160FEC(v60, v61) * 0.5;
            }
          }
        }
      }

      v62 = &v8[784 * v19];
      *(v17 + 512) = __invert_f4(v62[2]);
      *(v17 + 576) = __invert_f4(v62[3]);
      v63 = sub_1AF125C8C(constants, v7);
      *(v17 + 656) = vextq_s8(v63, v63, 8uLL);
      ++v7;
      v17 += 784;
    }

    while (v11 != v7);
  }
}

- (void)_fillFrameUniformsWithWorld:(__CFXWorld *)world
{
  v5 = sub_1AF1384DC(self->_processingContext.lightingSystem);
  *&self->_anon_2d0[392] = v6;
  *&self->_anon_2d0[384] = v5;
  v7 = sub_1AF12FAE8(self->_engineContext, 0, 0);
  v36 = *(v7 + 48);
  v37 = *(v7 + 32);
  v9 = sub_1AF12EF08(self->_engineContext, v8);
  v11 = sub_1AF1D048C(world, v10);
  *&self->_anon_2d0[400] = *v11;
  if (*(&v37 + 3) == 0.0 && sub_1AF28A2DC(v11, v12))
  {
    v13 = xmmword_1AFE20180;
  }

  else
  {
    sub_1AF1D04D4(world, v12, v9);
  }

  *&self->_anon_2d0[416] = v13;
  __asm { FMOV            V1.2S, #16.0 }

  v19 = vmaxnm_f32(*self->_currentRenderSize, _D1);
  *self->_currentRenderSize = v19;
  __asm { FMOV            V1.2S, #1.0 }

  *&self->_anon_2d0[432] = vdiv_f32(_D1, v19);
  v21 = sub_1AF1D005C(world, 0);
  if (v21)
  {
    v23 = v21;
    if (sub_1AF166220(v21, v22) || (v25 = sub_1AF1676A0(v23, v24), v26 = 1.0, v25))
    {
      v26 = sub_1AF166598(v23, v24);
    }

    *&self->_anon_2d0[456] = v26;
    v21 = sub_1AF167220(v23, v24);
  }

  else
  {
    *&self->_anon_2d0[456] = 1065353216;
  }

  v27 = MEMORY[0x1E69E9B18];
  if (v21)
  {
    v27 = v21;
  }

  v28 = v27[1];
  v29 = v27[2];
  v30 = v27[3];
  *&self->_anon_2d0[464] = *v27;
  *&self->_anon_2d0[480] = v28;
  *&self->_anon_2d0[496] = v29;
  v31.i32[1] = DWORD1(v37);
  v31.f32[0] = *(&v36 + 2) / *(&v37 + 2);
  v32 = (*(&v36 + 2) + -1.0) / *(&v37 + 2);
  if (*(&v37 + 3) != 0.0)
  {
    v32 = *(&v36 + 2) / (*(&v37 + 2) + 1.0);
  }

  *&v32 = v32;
  v33 = vcgt_f32(v31, *&v32);
  v31.i32[1] = LODWORD(v32);
  *&self->_anon_2d0[512] = v30;
  *&self->_anon_2d0[656] = vbsl_s8(vdup_lane_s32(v33, 0), vrev64_s32(v31), v31);
  if (self->_processingContext.passRequiresLighting)
  {
    sub_1AF130864(self->_engineContext);
    sub_1AF1F6CD8(&self->_anon_4190[144]);
    memcpy(&self->_anon_4190[336], __src, 0x150uLL);
    *&self->_anon_2d0[752] = *&self->_anon_4190[384];
  }

  objc_msgSend__updateViewDependentConstants_world_(self, v22, self->_processingContext.cullingContext, world, v36);
  if ((sub_1AF13103C(self->_engineContext) & 1) == 0)
  {
    if (self->_renderPassParameters.viewMapping)
    {
      eyeCount = self->_renderPassParameters.eyeCount;
    }

    else
    {
      eyeCount = 1;
    }

    self->_worldUniforms.impl._buffer = CFXBufferAllocatorPerFrameAllocateWithBytes(self->_frameConstantBufferPool.impl, self->_anon_2d0, 784 * eyeCount);
    *&self->_worldUniforms.impl._offset = v35;
  }
}

- (void)_fillVFXCoreRenderData
{
  if (self->_renderPassParameters.viewMapping)
  {
    eyeCount = self->_renderPassParameters.eyeCount;
  }

  else
  {
    eyeCount = 1;
  }

  v5 = eyeCount;
  cullingContext = self->_processingContext.cullingContext;
  if (eyeCount)
  {
    v6 = (self->_processingContext.cullingContext + 64 * self->_renderPassParameters.renderSliceIndex + 7216);
    v7 = 0uLL;
    v8 = v5;
    do
    {
      v9 = *v6;
      v6 += 4;
      v2.i32[1] = v9.i32[1];
      v7 = vaddq_f32(v7, v9);
      --v8;
    }

    while (v8);
  }

  else
  {
    v7 = 0uLL;
  }

  *v2.i32 = v5;
  v10 = vdivq_f32(v7, vdupq_lane_s32(v2, 0));
  if (v5 >= 2)
  {
    v11 = 2;
  }

  else
  {
    v11 = v5;
  }

  v102 = v11;
  if (v5 > 2 && (byte_1EB6586A3 & 1) == 0)
  {
    byte_1EB6586A3 = 1;
    v103 = v10;
    v12 = sub_1AF0D5194(self, a2);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    v10 = v103;
    if (v13)
    {
      sub_1AFDE6CE8(v5, v12);
      v10 = v103;
    }
  }

  anon_4440 = self->_anon_4440;
  *&self->_anon_4440[800] = v10;
  *&v14 = *self->_currentRenderSize;
  *(&v14 + 1) = *&self->_anon_2d0[432];
  *&self->_anon_4440[816] = v14;
  *&self->_anon_4440[832] = v102;
  *&self->_anon_4440[836] = self->_renderPassParameters.multiVertexOutputStreamGenerator == 2;
  if (v5)
  {
    v15 = 0;
    v16 = xmmword_1AFE20150;
    v17 = xmmword_1AFE20160;
    v18 = xmmword_1AFE20180;
    do
    {
      v20 = 0;
      v21 = (cullingContext + 64 * v15 + 11264);
      v22 = *v21;
      v23 = v21[1];
      v24 = v21[2];
      v25 = v21[3];
      v26 = *&self->_anon_4440[800];
      HIDWORD(v26) = 1.0;
      v105 = v16;
      v106 = v17;
      v107 = v18;
      v108 = v26;
      do
      {
        *(&v109 + v20) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*(&v105 + v20))), v23, *(&v105 + v20), 1), v24, *(&v105 + v20), 2), v25, *(&v105 + v20), 3);
        v20 += 16;
      }

      while (v20 != 64);
      v27 = 0;
      v28 = v110;
      v29 = v111;
      v30 = v112;
      v31 = &self->_anon_4440[64 * v15 + 992];
      *v31 = v109;
      *(v31 + 1) = v28;
      *(v31 + 2) = v29;
      *(v31 + 3) = v30;
      v32 = &self->_anon_2d0[784 * v15];
      v33 = *v32;
      v34 = *(v32 + 1);
      v35 = *(v32 + 2);
      v36 = *(v32 + 3);
      v105 = v16;
      v106 = v17;
      v107 = v18;
      v108 = v26;
      do
      {
        *(&v109 + v27) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, COERCE_FLOAT(*(&v105 + v27))), v34, *(&v105 + v27), 1), v35, *(&v105 + v27), 2), v36, *(&v105 + v27), 3);
        v27 += 16;
      }

      while (v27 != 64);
      v37 = 0;
      v38 = v109;
      v39 = v110;
      v40 = v111;
      v41 = v112;
      v42 = &anon_4440[64 * v15];
      *v42 = v109;
      *(v42 + 1) = v39;
      *(v42 + 2) = v40;
      *(v42 + 3) = v41;
      v43 = *(v32 + 8);
      v44 = *(v32 + 9);
      v45 = *(v32 + 10);
      v46 = *(v32 + 11);
      v105 = v38;
      v106 = v39;
      v107 = v40;
      v108 = v41;
      do
      {
        *(&v109 + v37) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, COERCE_FLOAT(*(&v105 + v37))), v44, *(&v105 + v37), 1), v45, *(&v105 + v37), 2), v46, *(&v105 + v37), 3);
        v37 += 16;
      }

      while (v37 != 64);
      v47 = v110;
      v48 = v111;
      v49 = v112;
      v50 = &self->_anon_4440[64 * v15 + 128];
      *v50 = v109;
      *(v50 + 1) = v47;
      *(v50 + 2) = v48;
      *(v50 + 3) = v49;
      v51 = &self->_anon_4440[64 * v15 + 256];
      v52 = *(v32 + 8);
      v53 = *(v32 + 9);
      v54 = *(v32 + 11);
      *(v51 + 2) = *(v32 + 10);
      *(v51 + 3) = v54;
      *v51 = v52;
      *(v51 + 1) = v53;
      v55 = &self->_anon_4440[64 * v15 + 384];
      v56 = *(v32 + 33);
      v57 = *(v32 + 34);
      v58 = *(v32 + 36);
      *(v55 + 2) = *(v32 + 35);
      *(v55 + 3) = v58;
      *v55 = v56;
      *(v55 + 1) = v57;
      *&self->_anon_4440[16 * v15 + 512] = vsubq_f32(*(cullingContext + 4 * v15 + 451), *&self->_anon_4440[800]);
      v59 = sub_1AF125C8C(cullingContext, v15);
      v19 = &self->_anon_4440[816];
      v60 = vld1q_dup_f64(v19);
      *&self->_anon_4440[16 * v15++ + 928] = vdivq_f32(v59, v60);
      v17 = xmmword_1AFE20160;
      v16 = xmmword_1AFE20150;
      v18 = xmmword_1AFE20180;
    }

    while (v15 != v102);
  }

  sub_1AFB1D8C4(anon_4440, 0);
  sub_1AFB1D910(anon_4440, *&self->_anon_2d0[656]);
  sub_1AFB1D8EC();
  v61 = *&self->_anon_2d0[400];
  v62 = HIDWORD(*&self->_anon_2d0[400]);
  *&self->_anon_4440[1120] = *&self->_anon_2d0[416];
  v63 = WORD1(v61) & 0x8000;
  v64 = (v61 >> 23);
  v65 = v64 - 112;
  v66 = v63 | 0x7BFF;
  if ((v61 & 0x7FFFFF) != 0)
  {
    LOWORD(v67) = v63 + 1;
  }

  else
  {
    v67 = WORD1(v61) & 0x8000;
  }

  v68 = v67 | 0x7C00;
  if (v64 == 255)
  {
    v66 = v68;
  }

  v69 = v64 - 113;
  if (v64 >= 0x71)
  {
    v70 = v66;
  }

  else
  {
    v70 = WORD1(v61) & 0x8000;
  }

  v71 = WORD1(v61) & 0x8000 | (v61 >> 13) & 0x3FF | (v65 << 10);
  if (v69 > 0x1D)
  {
    LOWORD(v71) = v70;
  }

  v72 = HIWORD(v62) & 0x8000;
  v73 = (v62 >> 23);
  v74 = v73 - 112;
  v75 = v72 | 0x7BFF;
  if ((v62 & 0x7FFFFF) != 0)
  {
    LOWORD(v76) = v72 + 1;
  }

  else
  {
    v76 = HIWORD(v62) & 0x8000;
  }

  v77 = v76 | 0x7C00;
  if (v73 == 255)
  {
    v75 = v77;
  }

  v78 = v73 - 113;
  if (v73 >= 0x71)
  {
    v79 = v75;
  }

  else
  {
    v79 = HIWORD(v62) & 0x8000;
  }

  v80 = HIWORD(v62) & 0x8000 | (v62 >> 13) & 0x3FF | (v74 << 10);
  if (v78 > 0x1D)
  {
    LOWORD(v80) = v79;
  }

  v81 = HIWORD(DWORD2(v61)) & 0x8000;
  v82 = (DWORD2(v61) >> 23);
  v83 = v82 - 112;
  v84 = v81 | 0x7BFF;
  if ((DWORD2(v61) & 0x7FFFFF) != 0)
  {
    LOWORD(v85) = v81 + 1;
  }

  else
  {
    v85 = HIWORD(DWORD2(v61)) & 0x8000;
  }

  v86 = v85 | 0x7C00;
  if (v82 == 255)
  {
    v84 = v86;
  }

  v87 = v82 - 113;
  if (v82 >= 0x71)
  {
    v88 = v84;
  }

  else
  {
    v88 = WORD5(v61) & 0x8000;
  }

  v89 = HIWORD(DWORD2(v61)) & 0x8000 | (DWORD2(v61) >> 13) & 0x3FF | (v83 << 10);
  if (v87 > 0x1D)
  {
    LOWORD(v89) = v88;
  }

  v90 = HIWORD(HIDWORD(v61)) & 0x8000;
  v91 = (HIDWORD(v61) >> 23);
  v92 = v91 - 112;
  v93 = v91 - 113;
  v94 = v90 | 0x7BFF;
  if ((HIDWORD(v61) & 0x7FFFFF) != 0)
  {
    LOWORD(v95) = v90 + 1;
  }

  else
  {
    v95 = HIWORD(HIDWORD(v61)) & 0x8000;
  }

  v96 = v95 | 0x7C00;
  if (v91 == 255)
  {
    v94 = v96;
  }

  if (v91 >= 0x71)
  {
    v97 = v94;
  }

  else
  {
    v97 = HIWORD(v61) & 0x8000;
  }

  v98 = HIWORD(HIDWORD(v61)) & 0x8000 | (HIDWORD(v61) >> 13) & 0x3FF | (v92 << 10);
  if (v93 > 0x1D)
  {
    LOWORD(v98) = v97;
  }

  LOWORD(v99) = v71;
  WORD1(v99) = v80;
  WORD2(v99) = v89;
  HIWORD(v99) = v98;
  *&self->_anon_4440[1136] = v99;
  self->_vfxViewUniforms.impl._buffer = CFXBufferAllocatorPerFrameAllocateWithBytes(self->_frameConstantBufferPool.impl, anon_4440, 0x480uLL);
  *&self->_vfxViewUniforms.impl._offset = v100;
}

- (void)setCurrentExternalDrawCallContext:(id)context
{
  self->_currentExternalDrawCallContext = context;
  reContext = self->_reContext;

  sub_1AFDEB10C(reContext);
}

- (VFXWorldBuffer)updateViewConstantsWithWorld:(__CFXWorld *)world
{
  *&STACK[0x880] = 0u;
  *&STACK[0x890] = 0u;
  *&STACK[0x860] = 0u;
  *&STACK[0x870] = 0u;
  *&STACK[0x840] = 0u;
  *&STACK[0x850] = 0u;
  *&STACK[0x820] = 0u;
  *&STACK[0x830] = 0u;
  *&STACK[0x800] = 0u;
  *&STACK[0x810] = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  __s1 = 0u;
  v75 = 0u;
  sub_1AF22BB20(self->_reContext, &__s1, a2, world);
  anon_4b00 = self->_anon_4b00;
  if (!memcmp(&__s1, self->_anon_4b00, 0x400uLL))
  {
    return objc_msgSend__currentWorldBuffer(self, v5, v6);
  }

  memcpy(self->_anon_4b00, &__s1, sizeof(self->_anon_4b00));
  WorldBuffer = objc_msgSend__nextWorldBuffer(self, v7, v8);
  if (self->_renderPassParameters.viewMapping)
  {
    eyeCount = self->_renderPassParameters.eyeCount;
  }

  else
  {
    eyeCount = 1;
  }

  *&v11 = sub_1AFDEB144(self->_reContext);
  v72 = v12;
  v73 = v11;
  v70 = v14;
  v71 = v13;
  if (eyeCount)
  {
    v15 = 0;
    __asm { FMOV            V0.4S, #1.0 }

    v68 = _Q0;
    do
    {
      v21 = 0;
      v22 = anon_4b00;
      v23 = &anon_4b00[64 * v15];
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[2];
      v27 = v23[3];
      *&STACK[0xAC0] = v73;
      *&STACK[0xAD0] = v72;
      *&STACK[0xAE0] = v71;
      *&STACK[0xAF0] = v70;
      do
      {
        *(&STACK[0xB00] + v21) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, COERCE_FLOAT(*(&STACK[0xAC0] + v21))), v25, *(&STACK[0xAC0] + v21), 1), v26, *(&STACK[0xAC0] + v21), 2), v27, *(&STACK[0xAC0] + v21), 3);
        v21 += 16;
      }

      while (v21 != 64);
      v96.columns[0] = *&STACK[0xB00];
      v96.columns[1] = *&STACK[0xB10];
      v96.columns[2] = *&STACK[0xB20];
      v96.columns[3] = *&STACK[0xB30];
      v28 = WorldBuffer;
      v29 = WorldBuffer + 784 * v15;
      *v29 = *&STACK[0xB00];
      *(v29 + 1) = v96.columns[1];
      *(v29 + 2) = v96.columns[2];
      *(v29 + 3) = v96.columns[3];
      v97 = __invert_f4(v96);
      v30 = 0;
      *(v29 + 1) = v97;
      v31 = &self->_anon_4b00[64 * v15 + 512];
      v97.columns[1] = *(v31 + 1);
      v97.columns[2] = *(v31 + 2);
      v97.columns[3] = *(v31 + 3);
      *(v29 + 8) = *v31;
      *(v29 + 9) = v97.columns[1];
      *(v29 + 10) = v97.columns[2];
      *(v29 + 11) = v97.columns[3];
      v32 = &self->_anon_4b00[64 * v15 + 256];
      v33 = *v32;
      v34 = *(v32 + 1);
      v35 = *(v32 + 2);
      v36 = *(v32 + 3);
      *&STACK[0xAC0] = v73;
      *&STACK[0xAD0] = v72;
      *&STACK[0xAE0] = v71;
      *&STACK[0xAF0] = v70;
      do
      {
        *(&STACK[0xB00] + v30) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, COERCE_FLOAT(*(&STACK[0xAC0] + v30))), v34, *(&STACK[0xAC0] + v30), 1), v35, *(&STACK[0xAC0] + v30), 2), v36, *(&STACK[0xAC0] + v30), 3);
        v30 += 16;
      }

      while (v30 != 64);
      v98.columns[0] = *&STACK[0xB00];
      v98.columns[1] = *&STACK[0xB10];
      v98.columns[2] = *&STACK[0xB20];
      v98.columns[3] = *&STACK[0xB30];
      *(v29 + 12) = *&STACK[0xB00];
      *(v29 + 13) = v98.columns[1];
      *(v29 + 14) = v98.columns[2];
      *(v29 + 15) = v98.columns[3];
      v37 = &self->_anon_4b00[64 * v15 + 640];
      v38 = *(v37 + 1);
      v39 = *(v37 + 2);
      v40 = *(v37 + 3);
      *(v29 + 33) = *v37;
      *(v29 + 34) = v38;
      *(v29 + 35) = v39;
      *(v29 + 36) = v40;
      *(v29 + 592) = __invert_f4(v98);
      v41 = &self->_anon_2d0[784 * v15];
      v42 = *(v41 + 3);
      v44 = *v41;
      v43 = *(v41 + 1);
      *(v29 + 18) = *(v41 + 2);
      *(v29 + 19) = v42;
      *(v29 + 16) = v44;
      *(v29 + 17) = v43;
      sub_1AF1D0B30(world, v29 + 4);
      v45 = *(v29 + 1);
      v46 = *(v29 + 2);
      v47 = *(v29 + 3);
      v48 = vmulq_f32(*v29, *v29);
      v49 = vmulq_f32(v45, v45);
      v50 = vmulq_f32(v46, v46);
      v51 = vzip1q_s32(v48, v50);
      v52 = vzip2q_s32(v48, v50);
      v53 = vtrn2q_s32(v48, v49);
      v53.i32[2] = v50.i32[1];
      v54 = vaddq_f32(vzip1q_s32(v52, vdupq_laneq_s32(v49, 2)), vaddq_f32(vzip1q_s32(v51, v49), v53));
      v55 = vceqzq_f32(v54);
      v55.i32[3] = 0;
      v56 = vbslq_s8(vcltzq_s32(v55), v54, vdivq_f32(v68, v54));
      *(v29 + 43) = vmulq_n_f32(*v29, v56.f32[0]);
      *(v29 + 44) = vmulq_lane_f32(v45, *v56.f32, 1);
      *(v29 + 45) = vmulq_laneq_f32(v46, v56, 2);
      *(v29 + 46) = v47;
      *(v29 + 54) = vextq_s8(*&self->_anon_4b00[880], *&self->_anon_4b00[880], 8uLL).u64[0];
      v57 = *&self->_anon_4b00[880];
      *(&v57 + 1) = *(v29 + 85);
      *(v29 + 42) = v57;
      *(&v57 + 1) = *&self->_anon_4b00[16 * v15 + 832];
      *(v29 + 42) = v57;
      memcpy(v41, v29, 0x180uLL);
      v58 = *(v29 + 36);
      v60 = *(v29 + 33);
      v59 = *(v29 + 34);
      *(v41 + 35) = *(v29 + 35);
      *(v41 + 36) = v58;
      *(v41 + 33) = v60;
      *(v41 + 34) = v59;
      v61 = *(v29 + 40);
      v63 = *(v29 + 37);
      v62 = *(v29 + 38);
      *(v41 + 39) = *(v29 + 39);
      *(v41 + 40) = v61;
      *(v41 + 37) = v63;
      *(v41 + 38) = v62;
      v64 = *(v29 + 43);
      v65 = *(v29 + 44);
      v66 = *(v29 + 46);
      *(v41 + 45) = *(v29 + 45);
      *(v41 + 46) = v66;
      *(v41 + 43) = v64;
      *(v41 + 44) = v65;
      *(v41 + 42) = *(v29 + 42);
      ++v15;
      anon_4b00 = v22;
      WorldBuffer = v28;
    }

    while (v15 != eyeCount);
  }

  return WorldBuffer;
}

- (VFXWorldBuffer)_nextWorldBuffer
{
  if (self->_renderPassParameters.viewMapping)
  {
    eyeCount = self->_renderPassParameters.eyeCount;
  }

  else
  {
    eyeCount = 1;
  }

  self->_worldUniforms.impl._buffer = CFXBufferAllocatorPerFrameAllocateWithBytes(self->_frameConstantBufferPool.impl, self->_anon_2d0, 784 * eyeCount);
  *&self->_worldUniforms.impl._offset = v4;
  ++self->_currentWorldBufferIndex;

  return objc_msgSend__currentWorldBuffer(self, v4, v5);
}

- (void)updateRenderPassDescriptor:(id *)descriptor
{
  v3 = *&self->_currentRenderPassDesc.colorFormat[6];
  *&self->_originalRenderPassDesc.colorFormat[4] = *&self->_currentRenderPassDesc.colorFormat[4];
  *&self->_originalRenderPassDesc.colorFormat[6] = v3;
  *&self->_originalRenderPassDesc.sampleCount = *&self->_currentRenderPassDesc.sampleCount;
  v4 = *&self->_currentRenderPassDesc.colorFormat[2];
  *self->_originalRenderPassDesc.colorFormat = *self->_currentRenderPassDesc.colorFormat;
  *&self->_originalRenderPassDesc.colorFormat[2] = v4;
  *&self->_originalRenderPassDesc.depthFormat = *&self->_currentRenderPassDesc.depthFormat;
  v5 = *descriptor->var0;
  *&self->_currentRenderPassDesc.colorFormat[2] = *&descriptor->var0[2];
  *self->_currentRenderPassDesc.colorFormat = v5;
  v7 = *&descriptor->var0[6];
  v6 = *&descriptor->var1;
  v8 = *&descriptor->var3;
  *&self->_currentRenderPassDesc.colorFormat[4] = *&descriptor->var0[4];
  *&self->_currentRenderPassDesc.sampleCount = v8;
  *&self->_currentRenderPassDesc.depthFormat = v6;
  *&self->_currentRenderPassDesc.colorFormat[6] = v7;
}

- (void)stopProcessingRendererElements:(BOOL)elements
{
  v18 = *MEMORY[0x1E69E9840];
  if (elements)
  {
    if (self->_processingContext.passRequiresLighting)
    {
      if (sub_1AF12EE9C(self->_engineContext, 0))
      {
        if ((sub_1AF12EE68(self->_engineContext) & 0x100000) != 0)
        {
          cullingContext = self->_processingContext.cullingContext;
          if (!*(cullingContext + 1828))
          {
            v5 = *(cullingContext + 3);
            v14 = *(cullingContext + 2);
            v15 = v5;
            v6 = *(cullingContext + 5);
            v16 = *(cullingContext + 4);
            v17 = v6;
            v7 = *(cullingContext + 1);
            v12 = *cullingContext;
            v13 = v7;
            renderEncoder = self->_renderEncoder;
            engineContext = self->_engineContext;
            v11[2] = v14;
            v11[3] = v5;
            v11[4] = v16;
            v11[5] = v6;
            v11[0] = v12;
            v11[1] = v7;
            sub_1AF1F8704(&self->_anon_4190[144], renderEncoder, engineContext, v11, &self->_anon_4190[336]);
          }
        }
      }
    }

    debugOptions = self->_debugOptions;
    if ((debugOptions & 0x10) != 0)
    {
      objc_msgSend__drawPBRTextures(self, a2, elements);
      debugOptions = self->_debugOptions;
    }

    if ((debugOptions & 8) != 0)
    {
      objc_msgSend__drawShadowMaps(self, a2, elements);
    }
  }

  self->_processingContext.programHashCodeStoreKey = 0;
  *&self->_processingContext.cullingContext = 0u;
  *&self->_processingContext.passRequiresLighting = 0u;
  *&self->_processingContext.passInstance = 0u;
  *&self->_processingContext.dynamicBatchingSystem = 0u;
  self->_vfxViewUniforms = 0u;
  self->_renderGraphParticleMaterialOverride = -1;
}

- (void)_prepareMaterialTextures:(__CFXMaterial *)textures
{
  v4 = sub_1AF1A1270(textures, a2);
  if (v4)
  {
    v6 = v4;
    v8 = sub_1AF165AE4(v4, v5);
    if (v8 == 3)
    {
      objc_msgSend_specularDFGDiffuseHammonTextureWithRenderContext_(self->_resourceManager, v7, self);
    }

    v14 = 0;
    v9 = sub_1AF203660(&v14, v7);
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      do
      {
        if (sub_1AF165594(v8, v11))
        {
          v12 = sub_1AF1656E4(v6, v11, 0);
          if (v12)
          {
            objc_msgSend_textureForMaterialProperty_(self, v13, v12);
          }
        }

        ++v11;
      }

      while (v11 != v10);
    }
  }
}

- (BOOL)_executeDeformerStackOfCommand:(id *)command dataKind:(unsigned __int8)kind deformerStack:(__CFXDeformerStack *)stack metalDeformedMesh:(id *)mesh skinner:(__CFXSkinner *)skinner skinnerCalculationMode:(int)mode
{
  v8 = *&mode;
  kindCopy = kind;
  v15 = sub_1AF16B74C(stack, a2);
  if (v15)
  {
    v17 = command->var12 || sub_1AF27DD4C(command->var3, 0);
    v18 = objc_msgSend_renderResourceForDeformerStack_node_dataKind_(self->_resourceManager, v16, stack, command->var4, kindCopy);
    if ((sub_1AFDE22C0(v18) & 1) != 0 || self->_showsAuthoringEnvironment)
    {
      if (sub_1AFDE22C0(v18))
      {
        *&v100 = 0;
        v19 = sub_1AF12DC38(self->_processingContext.dynamicBatchingSystem, &v100);
        if (v100 >= 2)
        {
          v21 = sub_1AF0D5194(v19, v20);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDE6DC0(v21, v22, v23, v24, v25, v26, v27, v28);
          }
        }
      }

      v29 = sub_1AF14CD4C(self->_processingContext.transformTree, command->var4->var4);
      v30 = *v29;
      v31 = v29[1];
      v32 = v29[2];
      v33 = v29[3];
      *&self->_nodeUniforms.instanceNode = *v29;
      *&self->_nodeUniforms.probeCacheIndex = v31;
      *&self->_anon_3408[8] = v32;
      *&self->_anon_3408[24] = v33;
      if (skinner)
      {
        *v30.i64 = sub_1AF1CA3E8(skinner, v8, v30, v31, v32, v33);
        *&self->_nodeUniforms.instanceNode = v30;
        *&self->_nodeUniforms.probeCacheIndex = v31;
        *&self->_anon_3408[8] = v32;
        *&self->_anon_3408[24] = v33;
      }

      eyeCount = self->_renderPassParameters.eyeCount;
      *&self->_anon_3408[3248] = 2;
      if (eyeCount)
      {
        v35 = 0;
        anon_2d0 = self->_anon_2d0;
        do
        {
          v37 = 0;
          v38 = &anon_2d0[784 * v35];
          v39 = *v38;
          v40 = v38[1];
          v41 = v38[2];
          v42 = v38[3];
          v113 = v30;
          v114 = v31;
          v115 = v32;
          v116 = v33;
          do
          {
            *(&v100 + v37) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v39, COERCE_FLOAT(*(&v113 + v37))), v40, *&v113.f32[v37 / 4], 1), v41, *(&v113 + v37), 2), v42, *(&v113 + v37), 3);
            v37 += 16;
          }

          while (v37 != 64);
          v43 = v101;
          v44 = v102;
          v45 = v103;
          v46 = &self->_anon_3408[64 * v35 + 1128];
          *v46 = v100;
          *(v46 + 1) = v43;
          *(v46 + 2) = v44;
          *(v46 + 3) = v45;
          ++v35;
        }

        while (v35 != eyeCount);
        v47 = *&self->_anon_3408[3248];
        if ((v47 & 4) == 0)
        {
          v48 = 0;
          *&self->_anon_3408[3248] = v47 | 4;
          do
          {
            v49 = 0;
            v50 = &anon_2d0[784 * v48];
            v51 = v50[12];
            v52 = v50[13];
            v53 = v50[14];
            v54 = v50[15];
            v113 = v30;
            v114 = v31;
            v115 = v32;
            v116 = v33;
            do
            {
              *(&v100 + v49) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v51, COERCE_FLOAT(*(&v113 + v49))), v52, *&v113.f32[v49 / 4], 1), v53, *(&v113 + v49), 2), v54, *(&v113 + v49), 3);
              v49 += 16;
            }

            while (v49 != 64);
            v55 = v101;
            v56 = v102;
            v57 = v103;
            v58 = &self->_anon_3408[64 * v48 + 2152];
            *v58 = v100;
            *(v58 + 1) = v55;
            *(v58 + 2) = v56;
            *(v58 + 3) = v57;
            ++v48;
          }

          while (v48 != eyeCount);
        }
      }

      else
      {
        *&self->_anon_3408[3248] = 6;
      }

      v59 = *&self->_anon_3408[1144];
      v120 = *&self->_anon_3408[1128];
      v121 = v59;
      v60 = *&self->_anon_3408[1176];
      v122 = *&self->_anon_3408[1160];
      v123 = v60;
      v61 = *&self->_anon_3408[2168];
      v124 = *&self->_anon_3408[2152];
      v125 = v61;
      v62 = *&self->_anon_3408[2200];
      v126 = *&self->_anon_3408[2184];
      v127 = v62;
      v63 = *&self->_anon_2d0[128];
      v64 = *&self->_anon_2d0[144];
      v65 = *&self->_anon_2d0[176];
      v130 = *&self->_anon_2d0[160];
      v131 = v65;
      v128 = v63;
      v129 = v64;
    }

    if (sub_1AFDE22D8(v18))
    {
      objc_msgSend_renderSize(self, v66, v67);
      v68 = 0;
      v113.i64[0] = v69;
      v70 = *&self->_anon_3408[2152];
      v71 = *&self->_anon_3408[2168];
      v72 = *&self->_anon_3408[2184];
      v73 = *&self->_anon_3408[2200];
      do
      {
        v74 = 0;
        v95 = v70;
        v75 = *(&v95 & 0xFFFFFFFFFFFFFFF3 | (4 * (v68 & 3)));
        v76 = (&v96 & 0xFFFFFFFFFFFFFFF3 | (4 * (v68 & 3)));
        v96 = v71;
        v77 = *(&v71 + 3) - *v76;
        v78 = *(&v71 + 3) + *v76;
        v97 = v72;
        v79 = *(&v97 & 0xFFFFFFFFFFFFFFF3 | (4 * (v68 & 3)));
        v98 = v73;
        v80 = *(&v98 & 0xFFFFFFFFFFFFFFF3 | (4 * (v68 & 3)));
        v81 = *(&v72 + 3) - v79;
        v82 = *(&v72 + 3) + v79;
        v83 = 1;
        do
        {
          v84 = v83 & 1;
          if (v83)
          {
            v85 = v75;
          }

          else
          {
            v85 = -v75;
          }

          v86 = v74 | (2 * v68);
          v87 = *(&v114 + v86);
          v87.f32[0] = *(&v70 + 3) + v85;
          if (v83)
          {
            v88 = v78;
          }

          else
          {
            v88 = v77;
          }

          if (v83)
          {
            v89 = v82;
          }

          else
          {
            v89 = v81;
          }

          if (v83)
          {
            v90 = v80;
          }

          else
          {
            v90 = -v80;
          }

          v87.f32[1] = v88;
          v87.f32[2] = v89;
          v91 = vmulq_f32(v87, v87);
          v87.f32[3] = *(&v73 + 3) + v90;
          *(&v114 + v86) = vmulq_n_f32(v87, sqrtf(v91.f32[2] + vaddv_f32(*v91.f32)));
          v74 = 1;
          v83 = 0;
        }

        while (v84);
        ++v68;
      }

      while (v68 != 3);
    }

    v92 = CACurrentMediaTime();
    prof_beginFlame("Deformer", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/NewRenderer/VFXMTLRenderContext.mm", 3808);
    v112 = 0;
    v108 = v128;
    v109 = v129;
    v110 = v130;
    v111 = v131;
    v104 = v124;
    v105 = v125;
    v106 = v126;
    v107 = v127;
    v100 = v120;
    v101 = v121;
    v102 = v122;
    v103 = v123;
    v99[4] = v117;
    v99[5] = v118;
    v99[6] = v119;
    v99[0] = v113;
    v99[1] = v114;
    v99[2] = v115;
    v99[3] = v116;
    *mesh = sub_1AFDE22F0(v18, self, v17, &v100, v99, &v112);
    self->__engineStats->mrphTime = CACurrentMediaTime() - v92 + self->__engineStats->mrphTime;
    prof_endFlame();
    if (self->_showsAuthoringEnvironment)
    {
      v93 = sub_1AF12EE9C(self->_engineContext, 0);
      v108 = v128;
      v109 = v129;
      v110 = v130;
      v111 = v131;
      v104 = v124;
      v105 = v125;
      v106 = v126;
      v107 = v127;
      v100 = v120;
      v101 = v121;
      v102 = v122;
      v103 = v123;
      sub_1AFDE27EC(v18, v93, &v100, self);
    }

    LOBYTE(v15) = v112;
  }

  return v15;
}

- (id)_setupTessellatorOfCommand:(id *)command deformersDidMutateMeshForCurrentFrame:(BOOL)frame tessellationPipelineStateHash:(char *)hash
{
  if (!frame)
  {
    goto LABEL_18;
  }

  eyeCount = self->_renderPassParameters.eyeCount;
  v10 = *&self->_anon_3408[3248];
  if ((v10 & 2) != 0)
  {
    goto LABEL_9;
  }

  *&self->_anon_3408[3248] = v10 | 2;
  if (eyeCount)
  {
    v11 = 0;
    v12 = *&self->_nodeUniforms.instanceNode;
    v13 = *&self->_nodeUniforms.probeCacheIndex;
    v14 = *&self->_anon_3408[8];
    v15 = *&self->_anon_3408[24];
    do
    {
      v16 = 0;
      v17 = &self->_anon_2d0[784 * v11];
      v18 = *v17;
      v19 = *(v17 + 1);
      v20 = *(v17 + 2);
      v21 = *(v17 + 3);
      v66 = v12;
      v67 = v13;
      v68 = v14;
      v69 = v15;
      do
      {
        *(&v54 + v16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*(&v66 + v16))), v19, *(&v66 + v16), 1), v20, *(&v66 + v16), 2), v21, *(&v66 + v16), 3);
        v16 += 16;
      }

      while (v16 != 64);
      v22 = v55;
      v23 = v56;
      v24 = v57;
      v25 = &self->_anon_3408[64 * v11 + 1128];
      *v25 = v54;
      *(v25 + 1) = v22;
      *(v25 + 2) = v23;
      *(v25 + 3) = v24;
      ++v11;
    }

    while (v11 != eyeCount);
    v10 = *&self->_anon_3408[3248];
LABEL_9:
    if ((v10 & 4) == 0)
    {
      *&self->_anon_3408[3248] = v10 | 4;
      if (eyeCount)
      {
        v26 = 0;
        v27 = *&self->_nodeUniforms.instanceNode;
        v28 = *&self->_nodeUniforms.probeCacheIndex;
        v29 = *&self->_anon_3408[8];
        v30 = *&self->_anon_3408[24];
        do
        {
          v31 = 0;
          v32 = &self->_anon_2d0[784 * v26];
          v33 = *(v32 + 12);
          v34 = *(v32 + 13);
          v35 = *(v32 + 14);
          v36 = *(v32 + 15);
          v66 = v27;
          v67 = v28;
          v68 = v29;
          v69 = v30;
          do
          {
            *(&v54 + v31) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, COERCE_FLOAT(*(&v66 + v31))), v34, *(&v66 + v31), 1), v35, *(&v66 + v31), 2), v36, *(&v66 + v31), 3);
            v31 += 16;
          }

          while (v31 != 64);
          v37 = v55;
          v38 = v56;
          v39 = v57;
          v40 = &self->_anon_3408[64 * v26 + 2152];
          *v40 = v54;
          *(v40 + 1) = v37;
          *(v40 + 2) = v38;
          *(v40 + 3) = v39;
          ++v26;
        }

        while (v26 != eyeCount);
      }
    }

    goto LABEL_18;
  }

  if ((v10 & 4) == 0)
  {
    *&self->_anon_3408[3248] = v10 | 6;
  }

LABEL_18:
  v41 = *&self->_anon_3408[1144];
  v54 = *&self->_anon_3408[1128];
  v55 = v41;
  v42 = *&self->_anon_3408[1176];
  v56 = *&self->_anon_3408[1160];
  v57 = v42;
  v43 = *&self->_anon_3408[2168];
  v58 = *&self->_anon_3408[2152];
  v59 = v43;
  v44 = *&self->_anon_3408[2200];
  v60 = *&self->_anon_3408[2184];
  v61 = v44;
  v45 = *&self->_anon_2d0[128];
  v46 = *&self->_anon_2d0[144];
  v47 = *&self->_anon_2d0[176];
  v64 = *&self->_anon_2d0[160];
  v65 = v47;
  v62 = v45;
  v63 = v46;
  HIBYTE(v67) = 0;
  *(&v67 + 13) = 0;
  metalMesh = self->_cache.metalMesh;
  currentFrameIndex = self->_currentFrameIndex;
  v50 = sub_1AFDE8154(self->_resourceManager);
  *&v66 = metalMesh;
  *(&v66 + 1) = self;
  *&v67 = &v54;
  DWORD2(v67) = currentFrameIndex;
  BYTE12(v67) = frame;
  objc_msgSend_update_(v50, v51, &v66);
  *hash = objc_msgSend_pipelineStateHashForMeshElement_patchType_(v50, v52, self->_cache.metalMeshElement, *(command + 85) & 7);
  return v50;
}

- (BOOL)_setupRenderPipelineOfCommand:(id *)command tessellator:(id)tessellator useTessellation:(BOOL)tessellation
{
  v7 = &self->_anon_3408[3064];
  if (tessellation)
  {
    metalMeshElement = self->_cache.metalMeshElement;
    v10 = *(command + 85);
    v11 = objc_msgSend_device(self, a2, command);
    v60 = objc_msgSend_newPipelineStateConfiguratorForMeshElement_patchType_device_(tessellator, v12, metalMeshElement, v10 & 7, v11);
  }

  else
  {
    v60 = 0;
  }

  var2 = command->var2;
  v14 = sub_1AF1304FC(self->_engineContext);
  v52 = v14;
  if ((*(self + 144) & 0x10) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = v14;
  }

  if (self->_renderPassParameters.multiVertexOutputStreamGenerator == 2)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  v58 = v18;
  v59 = v17;
  metalMesh = self->_cache.metalMesh;
  if (v7[2504])
  {
    v57 = sub_1AFDEA150(metalMesh, v15, v16);
    v22 = sub_1AFDEA120(&self->_cache.metalMesh->super.isa, v20, v21);
  }

  else
  {
    v57 = sub_1AFDEA078(metalMesh, v15);
    v22 = sub_1AFDEA004(self->_cache.metalMesh);
  }

  v56 = v22;
  v55 = v7[2504];
  v50 = var2;
  if (var2)
  {
    v54 = sub_1AF16CD08(var2, v23, v24);
    v26 = sub_1AF1C3FAC(var2, v25);
    if (v26)
    {
      v53 = sub_1AF16CD08(v26, v27, v28);
      goto LABEL_18;
    }
  }

  else
  {
    v54 = 0;
  }

  v53 = 0;
LABEL_18:
  var1 = command->var1;
  program = self->_cache.program;
  var8 = command->var8;
  blendStates = self->_cache.blendStates;
  v33 = v7[2328];
  v34 = v7[2329];
  eyeCount = self->_renderPassParameters.eyeCount;
  viewMapping = self->_renderPassParameters.viewMapping;
  if (v7[2608] == 1)
  {
    errors = self->_compilationIssues.errors;
  }

  else
  {
    errors = 0;
  }

  resourceManager = self->_resourceManager;
  v61[0] = var1;
  v61[1] = program;
  v61[2] = v54;
  v61[3] = v53;
  v61[4] = var8;
  v61[5] = blendStates;
  v62 = v33;
  v63 = v34;
  v64 = eyeCount;
  v65 = v58;
  v66 = 0;
  v67 = v56;
  v68 = v57;
  v69 = viewMapping;
  v70 = v59;
  v71 = 0;
  v72 = 0;
  v73 = errors;
  v74 = v55;
  memset(v75, 0, sizeof(v75));
  v76 = v60;
  v77 = 0;
  v40 = objc_msgSend_renderResourceForProgramDesc_renderPassDesc_(resourceManager, v39, v61, &self->_currentRenderPassDesc);
  *&self->_anon_4950[128] = v40;
  if (v60)
  {
    _Block_release(v60);
    v40 = *&self->_anon_4950[128];
  }

  v45 = objc_msgSend_state(v40, v41, v42, v50);
  if (v45)
  {
    v46 = objc_msgSend_state(*&self->_anon_4950[128], v43, v44);
    objc_msgSend_setRenderPipelineState_(self->_renderEncoder->var3, v47, v46);
  }

  else
  {
    *&self->_anon_4950[128] = 0;
    self->_cache.program = 0;
    if (v52)
    {
      if (v51)
      {
        objc_msgSend__prepareMaterialTextures_(self, v43, v51);
      }
    }

    else if ((byte_1EB6586A4 & 1) == 0)
    {
      byte_1EB6586A4 = 1;
      v49 = sub_1AF0D5194(0, v43);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE6E38();
      }
    }
  }

  return v45 != 0;
}

- (void)_installBindingsOfNode:(__CFXNode *)node probeCacheIndex:(unsigned int *)index
{
  nodeCopy = node;
  v76 = *MEMORY[0x1E69E9840];
  if (node)
  {
    v7 = sub_1AF1B92C8(node, a2);
    v8 = v7;
    if (v7)
    {
      v53 = sub_1AF1C9420(v7);
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
  }

  v53 = -1;
LABEL_6:
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = objc_msgSend_nodeBufferBindings(*&self->_anon_4950[128], a2, node);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v69, v75, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v70;
    v49 = nodeCopy;
    indexCopy = index;
    v51 = *v70;
    v52 = v8;
    do
    {
      v13 = 0;
      v54 = v11;
      do
      {
        if (*v70 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v69 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = objc_msgSend_semanticsCount(v14, v15, v16);
          if (v17 < 1)
          {
            v43 = sub_1AF0D5194(v17, v18);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDE6EB4(&buf, v57, v43);
            }
          }

          else
          {
            v20 = objc_msgSend_bufferSize(v14, v18, v19);
            eyeCount = self->_renderPassParameters.eyeCount;
            v58 = 0;
            v59[0] = MEMORY[0x1E69E9820];
            v59[1] = 3221225472;
            v60 = sub_1AF2043F4;
            v61 = &unk_1E7A7CCE0;
            v64 = v8;
            indexCopy2 = index;
            v67 = v53;
            v68 = eyeCount;
            v66 = v20;
            selfCopy = self;
            v63 = v14;
            v22 = sub_1AF12DC38(self->_processingContext.dynamicBatchingSystem, &v58);
            v23 = v20 * eyeCount;
            if (v58 < 2)
            {
              CFXBufferAllocatorPerFrameAllocateWithLength(self->_frameConstantBufferPool.impl, v20 * eyeCount);
              LODWORD(v36) = v44;
              CPUPointer = CFXBufferSliceGetCPUPointer(v45, v44, v46);
              v60(v59, nodeCopy, CPUPointer);
              renderEncoder = self->_renderEncoder;
              CFXBufferSliceGetMTLBuffer();
              v35 = v48;
              v36 = v36;
              v37 = *(v14 + 9);
              if (v37 != 0xFF)
              {
                objc_msgSend_setVertexBuffer_offset_atIndex_(renderEncoder->var3, v34, v48, v36, v37);
              }

              v38 = (~v37 & 0xFF00) == 0;
            }

            else
            {
              v24 = v22;
              CFXBufferAllocatorPerFrameAllocateWithLength(self->_frameConstantBufferPool.impl, v58 * v23);
              v26 = v25;
              v29 = CFXBufferSliceGetCPUPointer(v27, v25, v28);
              if (v58 >= 1)
              {
                v30 = v29;
                for (i = 0; i < v58; ++i)
                {
                  v60(v59, *(v24 + 8 * i), v30);
                  v30 += v23;
                }
              }

              CFXBufferSliceDidModify();
              renderEncoder = self->_renderEncoder;
              CFXBufferSliceGetMTLBuffer();
              v35 = v33;
              v36 = v26;
              v37 = *(v14 + 9);
              if (v37 != 0xFF)
              {
                objc_msgSend_setVertexBuffer_offset_atIndex_(renderEncoder->var3, v34, v33, v26, v37);
              }

              v38 = (~v37 & 0xFF00) == 0;
              nodeCopy = v49;
              index = indexCopy;
            }

            v11 = v54;
            if (!v38)
            {
              objc_msgSend_setFragmentBuffer_offset_atIndex_(renderEncoder->var3, v34, v35, v36, v37 >> 8);
            }

            v12 = v51;
            v8 = v52;
          }
        }

        else
        {
          if (!objc_msgSend_bindBlock(v14, v15, v16))
          {
            v41 = sub_1AF0D5194(0, v39);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
            {
              sub_1AFDE6E6C(v73, &v74, v41);
            }
          }

          v42 = objc_msgSend_bindBlock(v14, v39, v40);
          (*(v42 + 16))(v42, v14, self);
        }

        ++v13;
      }

      while (v13 != v11);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, &v69, v75, 16);
    }

    while (v11);
  }
}

- (void)_bindRenderPipelineArgumentsOfCommand:(id *)command materialHashChanged:(BOOL)changed modelWithShaderModifier:(__CFXModel *)modifier modelWithShaderModifierHasChanged:(BOOL)hasChanged nodeHasChanged:(BOOL)nodeHasChanged programHasChanged:(BOOL)programHasChanged projHasChanged:(BOOL)projHasChanged viewHasChanged:(BOOL)self0
{
  hasChangedCopy = hasChanged;
  v135 = *MEMORY[0x1E69E9840];
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v15 = objc_msgSend_frameBufferBindings(*&self->_anon_4950[128], a2, command);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v119, v134, 16);
  if (v17)
  {
    v20 = v17;
    v21 = *v120;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v120 != v21)
        {
          objc_enumerationMutation(v15);
        }

        v23 = *(*(&v119 + 1) + 8 * i);
        v24 = objc_msgSend_bindBlock(v23, v18, v19);
        (*(v24 + 16))(v24, v23, self);
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v119, v134, 16);
    }

    while (v20);
  }

  commandCopy2 = command;
  if (changed || hasChangedCopy)
  {
    v26 = self->_cache.material ? sub_1AF20ED1C(self->_resourceManager, command->var2, modifier, *&self->_anon_4950[128], self->_engineContext) : 0;
    self->_cache.metalShadable = v26;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v27 = objc_msgSend_shadableBufferBindings(*&self->_anon_4950[128], v18, v19);
    v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v115, v133, 16);
    if (v29)
    {
      v31 = v29;
      v32 = *v116;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v116 != v32)
          {
            objc_enumerationMutation(v27);
          }

          v34 = *(*(&v115 + 1) + 8 * j);
          v35 = objc_msgSend_bindBlock(v34, v18, v30);
          if (v35)
          {
            (*(v35 + 16))(v35, v34, self);
          }
        }

        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v18, &v115, v133, 16);
      }

      while (v31);
    }
  }

  if (command->var13)
  {
    cullingContext = self->_processingContext.cullingContext;
    v136 = __invert_f4(*(cullingContext + 128));
    v104 = v136.columns[1];
    v105 = v136.columns[0];
    v102 = v136.columns[3];
    v103 = v136.columns[2];
    v38 = *&self->_anon_4950[128];
    v39 = *&command->var7 ^ v38 ^ self->_renderPassParameters.eyeCount ^ self->_renderPassParameters.viewMapping;
    v114 = v39;
    if (self->_lighting.currentLightingHashKey != v39)
    {
      self->_lighting.currentLightingHashKey = v39;
      obj = objc_msgSend_lightBufferBindings(v38, v18, v37);
      if (obj)
      {
        sub_1AF138864(self->_processingContext.lightingSystem, &command->var7, &self->_lighting.currentLightingDesc);
        *&v127 = &v114;
        v101 = sub_1AF20B88C(&self->_lighting.frameLightingSetDatas.__table_.__bucket_list_.__ptr_, &v114, &unk_1AFE22A40, &v127);
        if (v101[3])
        {
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v106, v131, 16);
          if (v41)
          {
            v42 = v41;
            v43 = *v107;
            do
            {
              for (k = 0; k != v42; ++k)
              {
                if (*v107 != v43)
                {
                  objc_enumerationMutation(obj);
                }

                renderEncoder = self->_renderEncoder;
                v46 = v101[3];
                v47 = v101[4];
                v48 = *(*(*(&v106 + 1) + 8 * k) + 9);
                if (*(*(*(&v106 + 1) + 8 * k) + 9) != 0xFF)
                {
                  objc_msgSend_setVertexBuffer_offset_atIndex_(renderEncoder->var3, v18, v101[3], v101[4], v48);
                }

                if ((~v48 & 0xFF00) != 0)
                {
                  objc_msgSend_setFragmentBuffer_offset_atIndex_(renderEncoder->var3, v18, v46, v47, v48 >> 8);
                }
              }

              v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v106, v131, 16);
            }

            while (v42);
          }
        }

        else
        {
          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v110, v132, 16);
          if (v99)
          {
            v98 = *v111;
            do
            {
              v50 = 0;
              do
              {
                if (*v111 != v98)
                {
                  objc_enumerationMutation(obj);
                }

                v100 = v50;
                v51 = *(*(&v110 + 1) + 8 * v50);
                if (objc_msgSend_semanticsCount(v51, v18, v49) >= 1)
                {
                  v52 = objc_msgSend_bufferSize(v51, v18, v49) * self->_renderPassParameters.eyeCount;
                  v101[5] = v52;
                  CFXBufferAllocatorPerFrameAllocateWithLength(self->_frameConstantBufferPool.impl, v52);
                  v54 = v53;
                  v56 = v55;
                  CFXBufferSliceGetMTLBuffer();
                  v101[3] = v57;
                  v101[4] = v56;
                  CPUPointer = CFXBufferSliceGetCPUPointer(v54, v56, v58);
                  if (self->_renderPassParameters.eyeCount)
                  {
                    v62 = CPUPointer;
                    v63 = 0;
                    do
                    {
                      v64 = 0;
                      v65 = (cullingContext + 64 * v63 + 0x2000);
                      v66 = *v65;
                      v67 = v65[1];
                      v68 = v65[2];
                      v69 = v65[3];
                      v123 = v105;
                      v124 = v104;
                      v125 = v103;
                      v126 = v102;
                      do
                      {
                        *(&v127 + v64) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v66, COERCE_FLOAT(*(&v123 + v64))), v67, *&v123.f32[v64 / 4], 1), v68, *(&v123 + v64), 2), v69, *(&v123 + v64), 3);
                        v64 += 16;
                      }

                      while (v64 != 64);
                      v70 = 0;
                      v71 = v128;
                      v72 = v129;
                      v73 = v130;
                      *self->_anon_4190 = v127;
                      *&self->_anon_4190[16] = v71;
                      *&self->_anon_4190[32] = v72;
                      *&self->_anon_4190[48] = v73;
                      v123 = v105;
                      v124 = v104;
                      v125 = v103;
                      v126 = v102;
                      do
                      {
                        *(&v127 + v70) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v66, COERCE_FLOAT(*(&v123 + v70))), v67, *&v123.f32[v70 / 4], 1), v68, *(&v123 + v70), 2), v69, *(&v123 + v70), 3);
                        v70 += 16;
                      }

                      while (v70 != 64);
                      v74 = v128;
                      v75 = v129;
                      v76 = v130;
                      *&self->_anon_4190[64] = v127;
                      *&self->_anon_4190[80] = v74;
                      *&self->_anon_4190[96] = v75;
                      *&self->_anon_4190[112] = v76;
                      self->_anon_4190[128] = 1;
                      if (objc_msgSend_semanticsCount(v51, v60, v61) >= 1)
                      {
                        v79 = 0;
                        v80 = 0;
                        do
                        {
                          (*(*(*(v51 + 48) + v79) + 16))();
                          ++v80;
                          v79 += 16;
                        }

                        while (v80 < objc_msgSend_semanticsCount(v51, v81, v82));
                      }

                      v62 += objc_msgSend_bufferSize(v51, v77, v78);
                      ++v63;
                    }

                    while (v63 < self->_renderPassParameters.eyeCount);
                  }

                  CFXBufferSliceDidModify();
                }

                v83 = self->_renderEncoder;
                v84 = v101[3];
                v85 = v101[4];
                v86 = *(v51 + 9);
                if (*(v51 + 9) != 0xFF)
                {
                  objc_msgSend_setVertexBuffer_offset_atIndex_(v83->var3, v18, v101[3], v101[4], v86);
                }

                if ((~v86 & 0xFF00) != 0)
                {
                  objc_msgSend_setFragmentBuffer_offset_atIndex_(v83->var3, v18, v84, v85, v86 >> 8);
                }

                v50 = v100 + 1;
              }

              while (v100 + 1 != v99);
              v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v110, v132, 16);
            }

            while (v99);
          }
        }
      }
    }

    commandCopy2 = command;
  }

  if (nodeHasChanged || viewHasChanged || projHasChanged)
  {
    objc_msgSend__installBindingsOfNode_probeCacheIndex_(self, v18, commandCopy2->var4, commandCopy2->var9);
  }

  if (programHasChanged || projHasChanged)
  {
    if (sub_1AF12E2A0(self->_engineContext))
    {
      v87 = sub_1AF1310A0(self->_engineContext);
      sub_1AF1FD200(v87, *(*&self->_anon_4950[128] + 8), 3);
    }

    else
    {
      v88 = self->_renderEncoder;
      CFXBufferSliceGetMTLBuffer();
      v91 = v89;
      offset = self->_worldUniforms.impl._offset;
      v93 = *&self->_anon_4950[128];
      v94 = *(v93 + 8);
      if (*(v93 + 8) != 0xFF)
      {
        objc_msgSend_setVertexBuffer_offset_atIndex_(v88->var3, v90, v89, offset, v94);
      }

      if ((~v94 & 0xFF00) != 0)
      {
        objc_msgSend_setFragmentBuffer_offset_atIndex_(v88->var3, v90, v91, offset, v94 >> 8);
      }
    }
  }
}

- (void)_executeDrawCommand:(id *)command
{
  var3 = command->var3;
  var5 = command->var5;
  var6 = command->var6;
  var10 = command->var10;
  var11 = command->var11;
  v9 = sub_1AF12E2A0(self->_engineContext);
  if (v9)
  {
    v9 = objc_msgSend__clearRenderCaches(self, v10, v11);
  }

  if (var3 && (v9 = sub_1AF1B402C(var3, v10), v9) && (self->_features & 0x10) != 0)
  {
    v13 = (*(command + 85) & 7) != 0;
    v12 = 1;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  if (command->var0)
  {
    if (!var3)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if ((byte_1EB6586A5 & 1) == 0)
    {
      byte_1EB6586A5 = 1;
      v14 = sub_1AF0D5194(v9, v10);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE6EF4();
      }
    }

    command->var0 = objc_msgSend_defaultProgramUsingTessellation_(self->_resourceManager, v10, v12);
    if (!var3)
    {
      goto LABEL_17;
    }
  }

  if (sub_1AF16E098(var3, v10) || sub_1AF15B294(var3))
  {
    v158 = var3;
    goto LABEL_18;
  }

LABEL_17:
  v158 = 0;
LABEL_18:
  v154 = var10;
  program = self->_cache.program;
  var0 = command->var0;
  self->_cache.program = command->var0;
  v159 = program;
  v160 = var0;
  v18 = self->_cache.geometry != var5 || program != var0;
  if (var3)
  {
    v19 = sub_1AF1B40A0(var3, v10);
  }

  else
  {
    v19 = 1;
  }

  var4 = command->var4;
  if (!var4)
  {
    v152 = 0;
    v171 = 0;
    v156 = -1;
    goto LABEL_38;
  }

  v21 = sub_1AF1B92C8(var4, v10);
  v22 = v21;
  v152 = v21 != 0;
  if (v21)
  {
    v156 = sub_1AF1C9420(v21);
  }

  else
  {
    v156 = -1;
  }

  var4 = command->var4;
  v171 = 0;
  if (!var4)
  {
LABEL_38:
    v23 = 0;
    v24 = 0;
    if (self->_cache.deformerStack)
    {
      v25 = 1;
    }

    else
    {
      v25 = v18;
    }

    self->_cache.deformerStack = 0;
    if ((v25 & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_42;
  }

  var4 = sub_1AF1B7558(var4, v10);
  if (self->_cache.deformerStack != var4)
  {
    v18 = 1;
  }

  self->_cache.deformerStack = var4;
  if (var4)
  {
    var4 = objc_msgSend__executeDeformerStackOfCommand_dataKind_deformerStack_metalDeformedMesh_skinner_skinnerCalculationMode_(self, v10, command, v19, var4, &v171, v22, v156);
    v23 = var4;
    if (!v18)
    {
      v24 = 0;
      goto LABEL_58;
    }
  }

  else
  {
    v23 = 0;
    v24 = 0;
    if (!v18)
    {
      goto LABEL_58;
    }
  }

LABEL_42:
  var4 = v171;
  if (v171)
  {
    self->_cache.geometry = var5;
  }

  else
  {
    if (var5)
    {
      v26 = sub_1AF1706B8(var5);
      if (v26 != 1)
      {
        v27 = sub_1AF0D5194(v26, v10);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE6F28(v27, v10, v28, v29, v30, v31, v32, v33);
        }
      }
    }

    if (command->var12 && (v12 & v13 & 1) == 0)
    {
      sub_1AF27DDF0(var5, v19);
    }

    self->_cache.geometry = var5;
    if (var5)
    {
      var4 = sub_1AF20E1F8(self->_resourceManager, var5, v19);
    }

    else
    {
      var4 = 0;
    }
  }

  self->_cache.metalMesh = var4;
  v24 = 1;
LABEL_58:
  v147 = v24;
  v170 = 0;
  if (v12)
  {
    var4 = objc_msgSend__setupTessellatorOfCommand_deformersDidMutateMeshForCurrentFrame_tessellationPipelineStateHash_(self, v10, command, v23, &v170);
    v149 = var4;
    v151 = self->_anon_4950[120] == v170;
    self->_anon_4950[120] = v170;
    if (v13)
    {
      v34 = 0;
      v35 = var6;
      v36 = v154;
      v37 = v159;
      goto LABEL_71;
    }
  }

  else
  {
    v149 = 0;
    v151 = self->_anon_4950[120] == 0;
    self->_anon_4950[120] = 0;
  }

  if (v171)
  {
    var4 = sub_1AF170774(var5);
    if (var4)
    {
      if (var6)
      {
        v38 = sub_1AF0D5194(var4, v10);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE6FA0(v38, v39, v40, v41, v42, v43, v44, v45);
        }
      }

      v46 = sub_1AF170790(var5);
      v36 = v154;
      v37 = v159;
      if (v46 != 1)
      {
        v48 = sub_1AF0D5194(v46, v47);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE7018(v48, v49, v50, v51, v52, v53, v54, v55);
        }
      }

      v56 = sub_1AFDEA208(v171);
      v34 = objc_msgSend_objectAtIndexedSubscript_(v56, v57, 0);
      v35 = 0;
LABEL_71:
      self->_cache.meshElement = v35;
      self->_cache.metalMeshElement = v34;
      if (!var6)
      {
        goto LABEL_97;
      }

LABEL_94:
      v87 = sub_1AF1A7034(var6, v10);
      if (v87 > 5)
      {
        LOBYTE(var6) = 0;
      }

      else
      {
        var6 = (0x30001020303uLL >> (8 * (v87 & 0x1F)));
      }

      goto LABEL_97;
    }
  }

  if (self->_cache.meshElement == var6)
  {
    v36 = v154;
    v37 = v159;
    if (var6)
    {
      goto LABEL_94;
    }
  }

  else
  {
    if (v171 == 0 || v13)
    {
      self->_cache.meshElement = var6;
      if (var6)
      {
        var4 = sub_1AFDE7F98(self->_resourceManager);
        p_metalMeshElement = &self->_cache.metalMeshElement;
        self->_cache.metalMeshElement = var4;
        v37 = v159;
        if (var4)
        {
          goto LABEL_91;
        }
      }

      else
      {
        p_metalMeshElement = &self->_cache.metalMeshElement;
        self->_cache.metalMeshElement = 0;
        v37 = v159;
      }

      v76 = sub_1AF0D5194(var4, v10);
      if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE7090(v76, v77, v78, v79, v80, v81, v82, v83);
        if (!var6)
        {
LABEL_92:
          v86 = sub_1AFDEA228(*p_metalMeshElement);
          v36 = v154;
          if (!v86)
          {
            return;
          }

          goto LABEL_93;
        }
      }

      else if (!var6)
      {
        goto LABEL_92;
      }

LABEL_91:
      v84 = sub_1AF1A73D4(var6);
      sub_1AFDEA4AC(*p_metalMeshElement, v84, v85);
      goto LABEL_92;
    }

    if (var5)
    {
      v59 = sub_1AF1706B8(var5);
      if (v59 != 1)
      {
        v61 = sub_1AF0D5194(v59, v60);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE6F28(v61, v62, v63, v64, v65, v66, v67, v68);
        }
      }
    }

    v69 = sub_1AF1A5020(var5, var6, v19);
    v37 = v159;
    if (v69 != -1)
    {
      v70 = v69;
      v71 = sub_1AFDEA208(v171);
      v73 = objc_msgSend_objectAtIndexedSubscript_(v71, v72, v70);
      self->_cache.meshElement = var6;
      self->_cache.metalMeshElement = v73;
      v36 = v154;
      if (!sub_1AFDEA1E8(v73))
      {
        v74 = sub_1AF1A73D4(var6);
        sub_1AFDEA4AC(v73, v74, v75);
        if (!sub_1AFDEA228(v73))
        {
          return;
        }
      }

LABEL_93:
      if (!var6)
      {
        goto LABEL_97;
      }

      goto LABEL_94;
    }

    v36 = v154;
    if (var6)
    {
      goto LABEL_94;
    }
  }

LABEL_97:
  primitiveTopologyClass = self->_cache.primitiveTopologyClass;
  self->_cache.primitiveTopologyClass = var6;
  var2 = command->var2;
  v90 = self->_cache.material != var2 || v37 != v160;
  v146 = v90;
  self->_cache.material = var2;
  if (var2)
  {
    var2 = sub_1AF1A1270(var2, v10);
  }

  self->_cache.commonProfile = var2;
  v91 = self->_cache.model != v158;
  self->_cache.model = var3;
  v92 = sub_1AF12DB9C(self->_processingContext.dynamicBatchingSystem);
  v95 = v92;
  v96 = command->var4;
  v97 = self->_cache.node != v96;
  v98 = v37 != v160 || v91;
  v145 = v98;
  if (v37 != v160)
  {
    v97 = 1;
  }

  v99 = v97 || v152 && v156 == 1;
  if (v92 > 1)
  {
    v99 = 1;
  }

  v157 = v99;
  self->_cache.node = v96;
  cullingContext = self->_processingContext.cullingContext;
  v101 = *(cullingContext + 1829);
  if (self->_cache.pointOfView == v101 && (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*self->_anon_4950, *(cullingContext + 513)), vceqq_f32(*&self->_cache.tessellationPipelineStateHash, *(cullingContext + 512))), vandq_s8(vceqq_f32(*&self->_anon_4950[16], *(cullingContext + 514)), vceqq_f32(*&self->_anon_4950[32], *(cullingContext + 515))))) & 0x80000000) != 0)
  {
    v153 = 0;
  }

  else
  {
    self->_cache.pointOfView = v101;
    v102 = *(cullingContext + 512);
    v103 = *(cullingContext + 513);
    v104 = *(cullingContext + 514);
    *&self->_anon_4950[32] = *(cullingContext + 515);
    *&self->_anon_4950[16] = v104;
    *self->_anon_4950 = v103;
    *&self->_cache.tessellationPipelineStateHash = v102;
    v153 = 1;
  }

  v105 = vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*&self->_anon_4950[64], *(cullingContext + 577)), vceqq_f32(*&self->_anon_4950[48], *(cullingContext + 576))), vandq_s8(vceqq_f32(*&self->_anon_4950[80], *(cullingContext + 578)), vceqq_f32(*&self->_anon_4950[96], *(cullingContext + 579)))));
  if ((v105 & 0x80000000) == 0)
  {
    v106 = (cullingContext + 9216);
    v107 = *v106;
    v108 = v106[1];
    v109 = v106[3];
    *&self->_anon_4950[80] = v106[2];
    *&self->_anon_4950[96] = v109;
    *&self->_anon_4950[48] = v107;
    *&self->_anon_4950[64] = v108;
  }

  metalMesh = self->_cache.metalMesh;
  v150 = v12;
  if (v12)
  {
    v111 = sub_1AFDEA150(metalMesh, v93, v94);
  }

  else
  {
    v111 = sub_1AFDEA078(metalMesh, v93);
  }

  v114 = v111;
  v115 = *&self->_anon_4950[112];
  *&self->_anon_4950[112] = v111;
  if ((v36 & 1) == 0)
  {
    v116 = command->var4;
    if (v116)
    {
      sub_1AF1BA79C(v116, v112);
    }
  }

  v169 = 0uLL;
  v117 = command->var2;
  if (v117)
  {
    v118 = objc_msgSend_enableARMode(self, v112, v113);
    v119 = sub_1AF1A1870(v117, v36, var11, v118, &v169);
    v120 = v119;
    if (v119 && sub_1AF15B9CC(v119, v112))
    {
      LODWORD(v122) = DWORD2(v169);
      LODWORD(v121) = DWORD1(v169);
      LODWORD(v123) = HIDWORD(v169);
      objc_msgSend_setBlendColorRed_green_blue_alpha_(self->_renderEncoder->var3, v112, v113, *&v169, v121, v122, v123);
    }

    v124 = command->var2;
    v125 = v159;
    if (v124)
    {
      v126 = sub_1AF1A16A0(v124, v112);
    }

    else
    {
      v126 = 15;
    }
  }

  else
  {
    v120 = 0;
    v126 = 15;
    v125 = v159;
  }

  if (command->var14)
  {
    v127 = 0;
  }

  else
  {
    v127 = v126;
  }

  colorBufferWriteMask = self->_cache.colorBufferWriteMask;
  self->_cache.colorBufferWriteMask = v127;
  blendStates = self->_cache.blendStates;
  self->_cache.blendStates = v120;
  if (v125 == v160 && v115 == v114 && blendStates == v120 && colorBufferWriteMask == v127 && v151 && primitiveTopologyClass == var6 || objc_msgSend__setupRenderPipelineOfCommand_tessellator_useTessellation_(self, v112, command, v149, v150))
  {
    v130 = *&self->_anon_4950[128];
    if (v130)
    {
      if (objc_msgSend_state(v130, v112, v113))
      {
        HIBYTE(v144) = v153;
        LOBYTE(v144) = v105 >= 0;
        objc_msgSend__bindRenderPipelineArgumentsOfCommand_materialHashChanged_modelWithShaderModifier_modelWithShaderModifierHasChanged_nodeHasChanged_programHasChanged_projHasChanged_viewHasChanged_(self, v131, command, v146, v158, v145, v157, v125 != v160, v144);
        if (command->var4 && v95 <= 1)
        {
          v134 = *&self->_nodeUniforms.probeCacheIndex;
          v135 = *&self->_anon_3408[8];
          v133 = vmulq_f32(*&self->_nodeUniforms.instanceNode, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v135, v135, 0xCuLL), v135, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v134, v134), v134, 0xCuLL))), vextq_s8(vuzp1q_s32(v135, v135), v135, 0xCuLL), vextq_s8(vextq_s8(v134, v134, 0xCuLL), v134, 8uLL)));
          v133.f32[0] = v133.f32[2] + vaddv_f32(*v133.f32);
          v136 = v133.f32[0] > 0.0;
          renderEncoder = self->_renderEncoder;
          if (renderEncoder->var6)
          {
            objc_msgSend_setFrontFacingWinding_(renderEncoder->var3, v132, *(&xmmword_1AFE22A20 + v136), *v133.i64);
LABEL_149:
            if (v147)
            {
              objc_msgSend__setMeshBuffers_(self, v138, self->_cache.metalMesh);
            }

            if (v95 <= 1)
            {
              v95 = sub_1AFDE8698(self->_cache.metalMeshElement);
            }

            if (v150)
            {
              v139 = sub_1AF170740(self->_cache.geometry);
              memset(v168, 0, sizeof(v168));
              metalMeshElement = self->_cache.metalMeshElement;
              if (v95 <= 1)
              {
                v142 = 1;
              }

              else
              {
                v142 = v95;
              }

              v143 = *(command + 85) & 7;
              v161 = v139;
              v162 = *&self->_cache.metalMesh;
              v163 = metalMeshElement;
              v164 = v142;
              v165 = 0;
              selfCopy = self;
              v167 = v143;
              objc_msgSend_draw_(v149, v140, &v161);
            }

            else
            {
              objc_msgSend__drawMeshElement_instanceCount_(self, v138, self->_cache.metalMeshElement, v95);
            }

            return;
          }
        }

        else
        {
          renderEncoder = self->_renderEncoder;
          v136 = !renderEncoder->var6;
        }

        objc_msgSend_setFrontFacingWinding_(renderEncoder->var3, v132, v136, *v133.i64);
        goto LABEL_149;
      }
    }
  }
}

- (void)drawRenderElement:(__CFXRendererElement *)element withOverrides:(__CFXRenderingOverride *)overrides
{
  v84 = *MEMORY[0x1E69E9840];
  if (!self->_engineContext)
  {
    v7 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE7108(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = sub_1AF146110(element);
  v16 = sub_1AF146118(element);
  v17 = sub_1AF146158(element);
  v18 = sub_1AF146178(element);
  v66 = 0;
  v67 = 0;
  v65 = 0;
  sub_1AF133CC8(element, overrides, self->_engineContext, &v67, &v65, &v66);
  v20 = sub_1AF146200(element);
  v21 = v65;
  if (!v20 || !v65)
  {
    if (v20)
    {
      v22 = 0;
      v23 = 1;
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  if ((sub_1AF13E49C(v65) & 1) == 0)
  {
LABEL_10:
    if (v15)
    {
      sub_1AF1BA79C(v15, v19);
      if (v24 <= 0.0)
      {
        return;
      }
    }

    if (!v65)
    {
      v62 = v17;
      v64 = 0;
      v23 = 0;
      v59 = 0;
      goto LABEL_23;
    }

    v25 = sub_1AF1A1270(v67, v19);
    if (v25)
    {
      v22 = sub_1AF166C38(v25, v19);
      v23 = 0;
    }

    else
    {
      v23 = 0;
      v22 = 0;
    }

    goto LABEL_17;
  }

  v22 = 0;
  v23 = 1;
LABEL_17:
  v21 = v65;
LABEL_18:
  v59 = v22;
  v62 = v17;
  if (!v21)
  {
    v64 = 0;
LABEL_23:
    v63 = 0;
    if (!overrides)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v64 = sub_1AF13E4F8(v21);
  if (!v65)
  {
    goto LABEL_23;
  }

  v63 = sub_1AF13E510(v65);
  if (!overrides)
  {
    goto LABEL_26;
  }

LABEL_24:
  v26 = sub_1AF1D62E4(overrides, v19);
  if (v26)
  {
    v28 = v26;
    objc_msgSend_setRasterizerStates_(self, v27, v26);
    goto LABEL_28;
  }

LABEL_26:
  v28 = sub_1AF1461DC(element);
  if (!v28)
  {
    v30 = 1;
    goto LABEL_30;
  }

  objc_msgSend_setRasterizerStates_(self, v29, v28);
LABEL_28:
  v30 = 0;
LABEL_30:
  p_var5 = &element->var5;
  v32 = *(element + 40);
  v33 = v23;
  selfCopy = self;
  v35 = (v32 & 0x40) != 0 && self->_processingContext.passRequiresLighting;
  v37 = v65;
  v36 = v66;
  v38 = v67;
  v39 = (v32 >> 14) & 1;
  var3 = element->var3;
  if (v33 & 1) != 0 || (*(selfCopy->_processingContext.cullingContext + 14650))
  {
    goto LABEL_39;
  }

  if (v59 == 1)
  {
    v68 = v66;
    *&v69 = v65;
    *(&v69 + 1) = v67;
    v70 = v16;
    v71 = v15;
    v72 = v62;
    v73 = v18;
    v74 = var3;
    overridesCopy5 = overrides;
    v76 = p_var5;
    v77 = v33;
    v78 = v64;
    v79 = v63;
    v80 = v35;
    v81 = 1;
    v82 = (v32 >> 11) & 7;
    v83 = 0;
    v49 = selfCopy;
    v56 = v33;
    v58 = v35;
    v54 = p_var5;
    v61 = v82;
    objc_msgSend__executeDrawCommand_(selfCopy, v29, &v68);
    v68 = v36;
    *&v69 = v37;
    *(&v69 + 1) = v38;
    v70 = v16;
    v71 = v15;
    v72 = v62;
    v73 = v18;
    v74 = var3;
    overridesCopy5 = overrides;
    v76 = v54;
    v77 = v56;
    v78 = v64;
    v79 = v63;
    v80 = v58;
    v81 = 0;
    v82 = v61;
    v83 = 0;
    objc_msgSend__executeDrawCommand_(v49, v50, &v68);
    return;
  }

  if (v59 != 2)
  {
LABEL_39:
    v68 = v66;
    *&v69 = v65;
    *(&v69 + 1) = v67;
    v70 = v16;
    v71 = v15;
    v72 = v62;
    v73 = v18;
    v74 = var3;
    overridesCopy5 = overrides;
    v76 = p_var5;
    v77 = v33;
    v78 = v64;
    v79 = v63;
    v80 = v35;
    v81 = (v32 & 0x4000) != 0;
    v82 = (v32 >> 11) & 7;
    v83 = 0;
    objc_msgSend__executeDrawCommand_(selfCopy, v29, &v68);
  }

  else
  {
    v51 = selfCopy;
    v55 = v33;
    v57 = v35;
    v53 = p_var5;
    v60 = (v32 >> 11) & 7;
    v52 = v30;
    objc_msgSend_setCullMode_(selfCopy->_renderEncoder->var3, v29, 1);
    v68 = v36;
    *&v69 = v37;
    *(&v69 + 1) = v38;
    v70 = v16;
    v71 = v15;
    v72 = v62;
    v73 = v18;
    v74 = var3;
    overridesCopy5 = overrides;
    v76 = v53;
    v77 = v55;
    v78 = v64;
    v79 = v63;
    v80 = v57;
    v81 = v39;
    v82 = v60;
    v83 = 0;
    objc_msgSend__executeDrawCommand_(v51, v41, &v68);
    objc_msgSend_setCullMode_(v51->_renderEncoder->var3, v42, 2);
    v68 = v36;
    *&v69 = v37;
    *(&v69 + 1) = v38;
    v70 = v16;
    v71 = v15;
    v72 = v62;
    v73 = v18;
    v74 = var3;
    overridesCopy5 = overrides;
    v76 = v53;
    v77 = v55;
    v78 = v64;
    v79 = v63;
    v80 = v57;
    v81 = v39;
    v82 = v60;
    v83 = 0;
    objc_msgSend__executeDrawCommand_(v51, v43, &v68);
    if ((v52 & 1) == 0)
    {
      v68 = 0;
      *&v69 = 0;
      *(&v69 + 5) = 0;
      sub_1AF1C458C(v28, v44, &v68);
      renderEncoder = v51->_renderEncoder;
      v47 = sub_1AF1F1250(v68, v46);
      objc_msgSend_setCullMode_(renderEncoder->var3, v48, v47);
    }
  }
}

- (void)setForceAsyncShaderCompilation:(BOOL)compilation
{
  if (compilation)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 144) = *(self + 144) & 0xEF | v3;
}

- (void)setCollectsCompilationErrors:(BOOL)errors
{
  self->_compilationIssues.collectEnabled = errors;
  errors = self->_compilationIssues.errors;
  if (errors)
  {
    if (!errors)
    {
      errors = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_compilationIssues.errors = errors;
    }

    objc_msgSend_removeAllObjects(errors, a2, errors);
  }

  else
  {

    self->_compilationIssues.errors = 0;
  }
}

- (void)drawWireframeOverlayForElements:(id *)elements range:(id)range store:(__CFXRendererElementStore *)store passInstance:(__CFXPassInstance *)instance
{
  storeCopy = store;
  var1 = range.var1;
  var0 = range.var0;
  v48 = *MEMORY[0x1E69E9840];
  objc_msgSend_pushDebugGroup_(self, a2, @"VFX - Draw wireframe", range.var0, range.var1, store, instance, a7);
  LODWORD(v13) = -1138501878;
  LODWORD(v14) = -1194215657;
  LODWORD(v15) = -10.0;
  objc_msgSend_setDepthBias_slopeScale_clamp_(self->_renderEncoder->var3, v16, v17, v15, v13, v14);
  if (var0 < var0 + var1)
  {
    v21 = &elements[var0];
    *&v20 = 257;
    v39 = v20;
    v22 = var0 + var1 - var0;
    v40 = storeCopy;
    do
    {
      v23 = *v21++;
      elements = (elements & 0xFFFFFFFF00000000 | v23);
      v24 = sub_1AF1474D8(storeCopy, elements);
      v25 = sub_1AF146110(v24);
      v26 = sub_1AF146118(v24);
      v27 = sub_1AF146158(v24);
      if (v27)
      {
        v28 = v27;
        v29 = sub_1AF146178(v24);
        if (v29)
        {
          v30 = v29;
          v31 = sub_1AFDE8204(self->_resourceManager, v24, self->_engineContext, instance, self->_processingContext.programHashCodeStoreKey);
          if (v31)
          {
            material = v31->material;
            program = v31->program;
            v33 = sub_1AF15B364(material);
            objc_msgSend_setRasterizerStates_(self, v34, v33);
            v35 = (*(v24 + 80) >> 11) & 7;
            v43[0] = program;
            v43[1] = 0;
            v43[2] = material;
            v43[3] = v26;
            storeCopy = v40;
            v43[4] = v25;
            v43[5] = v28;
            v43[6] = v30;
            memset(&v43[7], 0, 24);
            v44 = v39;
            v45 = 0;
            v46 = v35;
            v47 = 0;
            objc_msgSend__executeDrawCommand_(self, v36, v43);
          }
        }
      }

      --v22;
    }

    while (v22);
  }

  objc_msgSend_setDepthBias_slopeScale_clamp_(self->_renderEncoder->var3, v18, v19, 0.0, 0.0, 0.0, v39);
  objc_msgSend_popDebugGroup(self, v37, v38);
}

+ (void)registerBindings
{
  objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, a2, @"modelTransform", &unk_1F24E87A0);
  objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v2, @"inverseModelTransform", &unk_1F24E87C0);
  objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v3, @"modelViewTransform", &unk_1F24E87E0);
  objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v4, @"inverseModelViewTransform", &unk_1F24E8800);
  objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v5, @"normalTransform", &unk_1F24E8820);
  objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v6, @"modelViewProjectionTransform", &unk_1F24E8840);
  objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v7, @"inverseModelViewProjectionTransform", &unk_1F24E8860);
  objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v8, @"lastFrameModelTransform", &unk_1F24E8880);
  objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v9, @"motionBlurIntensity", &unk_1F24E88A0);
  objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v10, @"boundingBox", &unk_1F24E88C0);
  objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v11, @"worldBoundingBox", &unk_1F24E88E0);
  objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v12, @"nodeOpacity", &unk_1F24E8900);
  objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v13, @"shCoefficients", &unk_1F24E8920);
  objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v14, @"categoryBitmask", &unk_1F24E8940);
  objc_msgSend_registerShadableArgumentBindingBlockForBuffers_textures_samplers_(VFXMTLShaderBindingsGenerator, v15, &unk_1F24E8960, &unk_1F24E8980, &unk_1F24E89A0);
  objc_msgSend_registerArgument_frequency_needsRenderResource_block_(VFXMTLShaderBindingsGenerator, v16, @"vfx_lights", 0, 1, &unk_1F24E89C0);
  objc_msgSend_registerArgument_frequency_needsRenderResource_block_(VFXMTLShaderBindingsGenerator, v17, @"vfx_lights_count", 0, 1, &unk_1F24E89E0);
  objc_msgSend_registerArgument_frequency_needsRenderResource_block_(VFXMTLShaderBindingsGenerator, v18, @"vfx_commonprofile", 2, 1, &unk_1F24E8960);
  objc_msgSend_registerArgument_frequency_needsRenderResource_block_(VFXMTLShaderBindingsGenerator, v19, @"u_shaderModifierParametersGeometry", 2, 1, &unk_1F24E8960);
  objc_msgSend_registerArgument_frequency_needsRenderResource_block_(VFXMTLShaderBindingsGenerator, v20, @"u_shaderModifierParametersSurface", 2, 1, &unk_1F24E8960);
  objc_msgSend_registerArgument_frequency_needsRenderResource_block_(VFXMTLShaderBindingsGenerator, v21, @"u_shaderModifierParametersFragment", 2, 1, &unk_1F24E8960);
  objc_msgSend_registerArgument_frequency_needsRenderResource_block_(VFXMTLShaderBindingsGenerator, v22, @"u_shaderModifierParametersLighting", 2, 1, &unk_1F24E8960);
  objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v23, @"vfx_pointSize", 2, &unk_1F24E8A00);
  objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v24, @"u_clusterTexture", 0, &unk_1F24E8A20);
  objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v25, @"u_lightIndicesTexture", 0, &unk_1F24E8A40);
  objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v26, @"u_areaLightBakedDataTexture", 0, &unk_1F24E8A60);
  objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v27, @"u_shadowKernel", 0, &unk_1F24E8A80);
  v116[0] = 0;
  v29 = sub_1AF203660(v116, v28);
  if (v29)
  {
    v31 = v29;
    v32 = 0;
    do
    {
      v33 = MEMORY[0x1E696AEC0];
      v34 = sub_1AF1EC048(v32, v30);
      v36 = objc_msgSend_stringWithFormat_(v33, v35, @"u_%@Texture", v34);
      v114[0] = MEMORY[0x1E69E9820];
      v114[1] = 3221225472;
      v114[2] = sub_1AF207E4C;
      v114[3] = &unk_1E7A7CD68;
      v114[4] = &unk_1F24E8AA0;
      v115 = v32;
      objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v37, v36, 2, v114);
      ++v32;
    }

    while (v32 != v31);
  }

  objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v30, @"u_shadowTexture", 1, &unk_1F24E8AC0);
  v39 = 0;
  v98 = MEMORY[0x1E69E9820];
  do
  {
    v113[0] = v98;
    v113[1] = 3221225472;
    v113[2] = sub_1AF207F50;
    v113[3] = &unk_1E7A7CD88;
    v113[4] = v39;
    v40 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v38, @"u_goboTexture%d", v39);
    objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v41, v40, 1, v113);
    v43 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v42, @"u_iesTexture%d", v39);
    objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v44, v43, 1, v113);
    v46 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v45, @"u_iesCubeTexture%d", v39);
    objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v47, v46, 1, v113);
    v49 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v48, @"color%d", v39);
    v112[0] = MEMORY[0x1E69E9820];
    v112[1] = 3221225472;
    v112[2] = sub_1AF2080E8;
    v112[3] = &unk_1E7A7CDA8;
    v112[4] = v39;
    objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v50, v49, v112);
    v52 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v51, @"position%d", v39);
    v111[0] = MEMORY[0x1E69E9820];
    v111[1] = 3221225472;
    v111[2] = sub_1AF208100;
    v111[3] = &unk_1E7A7CDA8;
    v111[4] = v39;
    objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v53, v52, v111);
    v55 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v54, @"direction%d", v39);
    v110[0] = MEMORY[0x1E69E9820];
    v110[1] = 3221225472;
    v110[2] = sub_1AF20815C;
    v110[3] = &unk_1E7A7CDA8;
    v110[4] = v39;
    objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v56, v55, v110);
    v58 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v57, @"right%d", v39);
    v109[0] = MEMORY[0x1E69E9820];
    v109[1] = 3221225472;
    v109[2] = sub_1AF2081BC;
    v109[3] = &unk_1E7A7CDA8;
    v109[4] = v39;
    objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v59, v58, v109);
    v61 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v60, @"up%d", v39);
    v108[0] = MEMORY[0x1E69E9820];
    v108[1] = 3221225472;
    v108[2] = sub_1AF2081D4;
    v108[3] = &unk_1E7A7CDA8;
    v108[4] = v39;
    objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v62, v61, v108);
    v64 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v63, @"iesMatrix%d", v39);
    v107[0] = MEMORY[0x1E69E9820];
    v107[1] = 3221225472;
    v107[2] = sub_1AF2081EC;
    v107[3] = &unk_1E7A7CDA8;
    v107[4] = v39;
    objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v65, v64, v107);
    v67 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v66, @"attenuation%d", v39);
    v106[0] = MEMORY[0x1E69E9820];
    v106[1] = 3221225472;
    v106[2] = sub_1AF20820C;
    v106[3] = &unk_1E7A7CDA8;
    v106[4] = v39;
    objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v68, v67, v106);
    v70 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v69, @"spotAttenuation%d", v39);
    v105[0] = MEMORY[0x1E69E9820];
    v105[1] = 3221225472;
    v105[2] = sub_1AF208224;
    v105[3] = &unk_1E7A7CDA8;
    v105[4] = v39;
    objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v71, v70, v105);
    v73 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v72, @"shadowMatrix%d", v39);
    v104[0] = MEMORY[0x1E69E9820];
    v104[1] = 3221225472;
    v104[2] = sub_1AF20823C;
    v104[3] = &unk_1E7A7CDA8;
    v104[4] = v39;
    objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v74, v73, v104);
    v76 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v75, @"shadowRadius%d", v39);
    v103[0] = MEMORY[0x1E69E9820];
    v103[1] = 3221225472;
    v103[2] = sub_1AF2083B8;
    v103[3] = &unk_1E7A7CDA8;
    v103[4] = v39;
    objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v77, v76, v103);
    v79 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v78, @"shadowColor%d", v39);
    v102[0] = MEMORY[0x1E69E9820];
    v102[1] = 3221225472;
    v102[2] = sub_1AF2083D0;
    v102[3] = &unk_1E7A7CDA8;
    v102[4] = v39;
    objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v80, v79, v102);
    v82 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v81, @"goboMatrix%d", v39);
    v101[0] = MEMORY[0x1E69E9820];
    v101[1] = 3221225472;
    v101[2] = sub_1AF2083E8;
    v101[3] = &unk_1E7A7CDA8;
    v101[4] = v39;
    objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v83, v82, v101);
    v85 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v84, @"projectorColor%d", v39);
    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 3221225472;
    v100[2] = sub_1AF208408;
    v100[3] = &unk_1E7A7CDA8;
    v100[4] = v39;
    objc_msgSend_registerSemantic_withBlock_(VFXMTLShaderBindingsGenerator, v86, v85, v100);
    v88 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v87, @"u_areaPolygonPositions%d", v39);
    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 3221225472;
    v99[2] = sub_1AF208420;
    v99[3] = &unk_1E7A7CD88;
    v99[4] = v39;
    objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v89, v88, 1, v99);
    ++v39;
  }

  while (v39 != 8);
  objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v38, @"u_specularDFGDiffuseHammonTexture", 0, &unk_1F24E8AE0);
  objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v90, @"u_radianceTexture", 0, &unk_1F24E8B00);
  objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v91, @"u_irradianceTexture", 0, &unk_1F24E8B20);
  objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v92, @"u_reflectionProbeTexture", 0, &unk_1F24E8B40);
  objc_msgSend_registerArgument_frequency_block_(VFXMTLShaderBindingsGenerator, v93, @"u_ssaoTexture", 0, &unk_1F24E8B60);
  v94 = _Block_copy(&unk_1F24E8B80);
  objc_msgSend_registerArgument_frequency_needsRenderResource_block_(VFXMTLShaderBindingsGenerator, v95, @"vfx_bezier_curve_data", 1, 0, v94);
  objc_msgSend_registerArgument_frequency_needsRenderResource_block_(VFXMTLShaderBindingsGenerator, v96, @"vfx_bezier_curve_controlPoints", 1, 0, v94);
  _Block_release(v94);
  objc_msgSend_registerCustomProgramBindingBlockTrampoline_(VFXMTLShaderBindingsGenerator, v97, &unk_1F24E8BA0);
}

- (BOOL)mapVolatileMesh:(__CFXMesh *)mesh verticesCount:(int64_t)count
{
  v7 = sub_1AF1A57DC(mesh, a2);
  v9 = v7;
  if (v7)
  {
    v10 = sub_1AF20E1F8(self->_resourceManager, mesh, 1);
    if (!sub_1AFDEA260(v10))
    {
      v12 = sub_1AF0D5194(0, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE7484(v12, v13, v14, v15, v16, v17, v18, v19);
      }
    }

    sub_1AFDEA228(v10);
    v20 = sub_1AFDEA260(v10) * count;
    CFXBufferAllocatorPerFrameAllocateWithLength(self->_frameVolatileBufferPool.impl, v20);
    v22 = v21;
    v24 = v23;
    sub_1AFDEA284(v10, v20);
    CFXBufferSliceGetMTLBuffer();
    sub_1AFDEA234(v10, v25);
    sub_1AFDEA254(v10, v24);
    CPUPointer = CFXBufferSliceGetCPUPointer(v22, v24, v26);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = sub_1AF208E78;
    v38[3] = &unk_1E7A7CE10;
    v38[4] = count;
    v38[5] = CPUPointer;
    sub_1AF1A2BEC(mesh, 1, v38);
    objc_msgSend_addObject_(self->_volatileMeshes, v28, v10);
  }

  else
  {
    v29 = sub_1AF0D5194(v7, v8);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE740C(v29, v30, v31, v32, v33, v34, v35, v36);
    }
  }

  return v9;
}

- (void)unmapVolatileMesh:(__CFXMesh *)mesh modifiedVerticesCount:(int64_t)count
{
  v7 = sub_1AF1A57DC(mesh, a2);
  if (v7)
  {
    v9 = sub_1AF20E1F8(self->_resourceManager, mesh, 1);
    v10 = sub_1AFDEA278(v9);
    if (count < 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = sub_1AFDEA260(v9) * count;
    }

    if (!sub_1AFDEA228(v9))
    {
      v21 = sub_1AF0D5194(0, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE74FC(v21, v22, v23, v24, v25, v26, v27, v28);
      }
    }

    sub_1AFDEA228(v9);
    sub_1AFDEA248(v9);
    CFXBufferSliceMake();
    if (v11)
    {
      CFXBufferSliceDidModify();
    }

    sub_1AF1A2BEC(mesh, 1, &unk_1F24E8BC0);
  }

  else
  {
    v12 = sub_1AF0D5194(v7, v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE740C(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }
}

- (void)resetVolatileMeshes
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  volatileMeshes = self->_volatileMeshes;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(volatileMeshes, a2, &v11, v15, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(volatileMeshes);
        }

        sub_1AFDEA234(*(*(&v11 + 1) + 8 * i), 0);
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(volatileMeshes, v10, &v11, v15, 16);
    }

    while (v7);
  }

  objc_msgSend_removeAllObjects(self->_volatileMeshes, v5, v6);
}

- (id)_newMTLBufferFromPoolWithLength:(unint64_t)length
{
  Object = objc_msgSend_lastObject(self->_bufferPool, a2, length);
  if (Object)
  {
    v6 = Object;
    v7 = Object;
    objc_msgSend_removeLastObject(self->_bufferPool, v8, v9);
  }

  else
  {
    v6 = objc_alloc_init(VFXMTLBuffer);
  }

  CFXBufferAllocatorPerFrameAllocateWithLength(self->_frameVolatileBufferPool.impl, length);
  v11 = v10;
  CFXBufferSliceGetMTLBuffer();
  objc_msgSend_setBuffer_(v6, v13, v12);
  objc_msgSend_setOffset_(v6, v14, v11);
  if (!objc_msgSend_buffer(v6, v15, v16))
  {

    return 0;
  }

  return v6;
}

- (void)_recycleMTLBufferToPool:(id)pool
{
  if (!pool)
  {
    v5 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE7574(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  objc_msgSend_addObject_(self->_bufferPool, a2, pool);
  objc_msgSend_setUsedCount_(pool, v12, 0);
  objc_msgSend_setBuffer_(pool, v13, 0);
  objc_msgSend_setOffset_(pool, v14, 0);
  objc_msgSend_setDataSource_(pool, v15, 0);
}

- (__CFXMeshElement)createVolatileMeshElementOfType:(VFXMTLRenderContext *)self primitiveCount:(unsigned int)count bytesPerIndex:
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  if (objc_msgSend_count(self->_freeVolatileMeshElements, *&count, v2))
  {
    Object = objc_msgSend_lastObject(self->_freeVolatileMeshElements, v9, v10);
    objc_msgSend_addObject_(self->_usedVolatileMeshElements, v12, Object);
    v15 = objc_msgSend_removeLastObject(self->_freeVolatileMeshElements, v13, v14);
    if (Object)
    {
      goto LABEL_7;
    }
  }

  else
  {
    Object = sub_1AF1A7F90(0, v9);
    objc_msgSend_addObject_(self->_usedVolatileMeshElements, v17, Object);
    CFRelease(Object);
    if (Object)
    {
      goto LABEL_7;
    }
  }

  v18 = sub_1AF0D5194(v15, v16);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDBBAC(v18, v19, v20, v21, v22, v23, v24, v25);
  }

LABEL_7:
  sub_1AF1A699C(Object, v7);
  sub_1AF1A72A0(Object, v6, 0, v5);
  v26 = sub_1AFDE7F98(self->_resourceManager);
  v27 = sub_1AFDE868C(v26);
  if (v27)
  {
    v29 = sub_1AF0D5194(v27, v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE75EC(v29, v30, v31, v32, v33, v34, v35, v36);
    }
  }

  sub_1AFDEA33C(v26, Object);
  v37 = sub_1AFDEA004(v26);
  v39 = objc_msgSend__newMTLBufferFromPoolWithLength_(self, v38, v37 * v5);
  sub_1AFDEA31C(v26, v39);

  v42 = objc_msgSend_buffer(v39, v40, v41);
  v45 = objc_msgSend_contents(v42, v43, v44);
  v48 = objc_msgSend_offset(v39, v46, v47);
  v49 = sub_1AFDE8614(v26);
  sub_1AF1A8000(Object, v45 + v48 + v49);
  return Object;
}

- (void)unmapVolatileMeshElement:(uint64_t)element
{
  v4 = sub_1AFDE7F98(*(self + 112));
  sub_1AF1A809C(element, v5);
  sub_1AFDEA004(v4);
  v6 = sub_1AFDE868C(v4);
  objc_msgSend_buffer(v6, v7, v8);
  v9 = sub_1AFDE868C(v4);
  objc_msgSend_offset(v9, v10, v11);
  CFXBufferSliceMake();

  CFXBufferSliceDidModify();
}

- (void)resetVolatileMeshElements
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  usedVolatileMeshElements = self->_usedVolatileMeshElements;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(usedVolatileMeshElements, a2, &v16, v20, 16);
  if (v4)
  {
    v6 = v4;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(usedVolatileMeshElements);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = sub_1AFDE7F98(self->_resourceManager);
        v11 = sub_1AFDE868C(v10);
        objc_msgSend__recycleMTLBufferToPool_(self, v12, v11);
        sub_1AFDEA31C(v10, 0);
        sub_1AFDEA634(v10, 0);
        sub_1AF1A8000(v9, 0);
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(usedVolatileMeshElements, v13, &v16, v20, 16);
    }

    while (v6);
  }

  objc_msgSend_addObjectsFromArray_(self->_freeVolatileMeshElements, v5, self->_usedVolatileMeshElements);
  objc_msgSend_removeAllObjects(self->_usedVolatileMeshElements, v14, v15);
}

- (MTLRenderCommandEncoder)currentRenderCommandEncoder
{
  result = self->_renderEncoder;
  if (result)
  {
    return sub_1AF20107C(result, a2);
  }

  return result;
}

- (MTLRenderPassDescriptor)currentRenderPassDescriptor
{
  v2 = sub_1AF12E8A4(self->_engineContext);

  return sub_1AF270B88(v2);
}

- (void)_drawPBRTextures
{
  v4 = objc_msgSend_currentRenderPassDescriptor(self, a2, v2);
  v7 = objc_msgSend_colorAttachments(v4, v5, v6);
  v9 = objc_msgSend_objectAtIndexedSubscript_(v7, v8, 0);
  v12 = objc_msgSend_texture(v9, v10, v11);
  v15 = objc_msgSend_pixelFormat(v12, v13, v14);
  v18 = objc_msgSend_currentRenderPassDescriptor(self, v16, v17);
  v21 = objc_msgSend_colorAttachments(v18, v19, v20);
  v23 = objc_msgSend_objectAtIndexedSubscript_(v21, v22, 0);
  v26 = objc_msgSend_texture(v23, v24, v25);
  v29 = objc_msgSend_sampleCount(v26, v27, v28);
  if (v15)
  {
    if (self->_debug.pixelFormat != v15 || self->_debug.sampleCount != v29)
    {
      self->_debug.pixelFormat = v15;
      self->_debug.sampleCount = v29;
      v31 = sub_1AFDE868C(self->_resourceManager);
      v34 = objc_msgSend_frameworkLibrary(v31, v32, v33);
      v36 = sub_1AF15BBC4(v34, v35);
      *self->_currentRenderPassDesc.colorFormat = 0u;
      *&self->_currentRenderPassDesc.colorFormat[2] = 0u;
      *&self->_currentRenderPassDesc.colorFormat[4] = 0u;
      *&self->_currentRenderPassDesc.colorFormat[6] = 0u;
      *&self->_currentRenderPassDesc.depthFormat = 0u;
      *&self->_currentRenderPassDesc.sampleCount = 0;

      resourceManager = self->_resourceManager;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v126 = 0u;
      v133 = v34;
      v134 = 0u;
      v135 = 0u;
      v136 = 0u;
      v137 = 0u;
      v138 = 0u;
      v139 = 0;
      v140 = v36;
      v144 = 0u;
      v145 = 0u;
      v141 = 0u;
      v142 = 0u;
      v143 = 0u;
      v146 = 0;
      v147 = @"quad_vertex";
      v148 = @"quad_display_cube_equirectangular";
      v149 = 0u;
      v150 = 0u;
      v39 = objc_msgSend_newRenderPipelineStateWithDesc_(resourceManager, v38, &v126);
      self->_debug.displayCubemapPipeline = v39;
      v41 = sub_1AF15BC40(v39, v40);

      v42 = self->_resourceManager;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v126 = 0u;
      v133 = v34;
      v134 = 0u;
      v135 = 0u;
      v136 = 0u;
      v137 = 0u;
      v138 = 0u;
      v139 = 0;
      v140 = v41;
      v144 = 0u;
      v145 = 0u;
      v141 = 0u;
      v142 = 0u;
      v143 = 0u;
      v146 = 0;
      v147 = @"quad_vertex";
      v148 = @"quad_display_texture2D";
      v149 = 0u;
      v150 = 0u;
      self->_debug.displayTexture2DPipeline = objc_msgSend_newRenderPipelineStateWithDesc_(v42, v43, &v126);
    }

    objc_msgSend_setCullMode_(self->_renderEncoder->var3, v30, 0);
    renderEncoder = self->_renderEncoder;
    v45 = sub_1AFDE8620(self->_resourceManager);
    objc_msgSend_setDepthStencilState_(renderEncoder->var3, v46, v45);
    v50 = sub_1AF12DDCC(self->_engineContext, v47);
    v51 = *&self->_anon_4190[672];
    if (v51)
    {
      v52 = objc_msgSend_arrayLength(v51, v48, v49);
      v55 = objc_msgSend_mipmapLevelCount(*&self->_anon_4190[672], v53, v54);
      v58 = objc_msgSend_pixelFormat(*&self->_anon_4190[672], v56, v57);
      v61 = sub_1AF130548(self->_engineContext);
      v62 = v61.n128_f32[2];
      v121 = v61.n128_u64[0];
      v63 = v61.n128_f32[3];
      v64 = v61.n128_f32[2] / v61.n128_f32[3];
      v65 = 1.0 / v52;
      v66 = 4.0 / v61.n128_f32[3];
      v67 = (v65 + ((4.0 / v61.n128_f32[3]) * -2.0)) * 2.5;
      v125 = v65 + ((4.0 / v61.n128_f32[3]) * -2.0);
      if ((v61.n128_f32[2] / v61.n128_f32[3]) <= 1.0)
      {
        v68 = v64 * v67;
      }

      else
      {
        v68 = v67 / v64;
      }

      v124 = v68;
      v81 = objc_msgSend_textureType(*&self->_anon_4190[672], v59, v60, v121);
      IsCube = VFXMTLTextureTypeIsCube(v81);
      v85 = self->_renderEncoder;
      if (IsCube)
      {
        v86 = objc_msgSend_state(self->_debug.displayCubemapPipeline, v83, v84);
        objc_msgSend_setRenderPipelineState_(v85->var3, v87, v86);
        if (v52)
        {
          v90 = 0;
          v91 = -*(&v122 + 1) / v63;
          *&v89 = *&v122 / v62;
          v123 = v89;
          do
          {
            v92 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(*&self->_anon_4190[672], v88, v58, 5, 0, v55, v90, 6, v123);
            sub_1AF1F8FCC(self->_renderEncoder, v92, 0);
            LODWORD(v93) = v123;
            *(&v93 + 1) = v66 + v91;
            *(&v93 + 1) = __PAIR64__(LODWORD(v125), LODWORD(v124));
            v126 = v93;
            sub_1AF176E98(self->_renderEncoder, &v126, 0x10uLL, 0);
            objc_msgSend_drawPrimitives_vertexStart_vertexCount_(self->_renderEncoder->var3, v94, 4, 0, 4);
            v91 = v65 + v91;
            v90 += 6;
            --v52;
          }

          while (v52);
        }
      }

      else
      {
        v95 = objc_msgSend_state(self->_debug.displayTexture2DPipeline, v83, v84);
        objc_msgSend_setRenderPipelineState_(v85->var3, v96, v95);
        if (v52)
        {
          v98 = 0;
          v99 = 0.0;
          do
          {
            v100 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(*&self->_anon_4190[672], v97, v58, 2, 0, v55, v98, 1);
            sub_1AF1F8FCC(self->_renderEncoder, v100, 0);
            LODWORD(v101) = 0;
            *(&v101 + 1) = v66 + v99;
            *(&v101 + 1) = __PAIR64__(LODWORD(v125), LODWORD(v124));
            v126 = v101;
            sub_1AF176E98(self->_renderEncoder, &v126, 0x10uLL, 0);
            objc_msgSend_drawPrimitives_vertexStart_vertexCount_(self->_renderEncoder->var3, v102, 4, 0, 4);
            ++v98;
            v99 = v65 + v99;
          }

          while (v52 != v98);
        }
      }
    }

    else
    {
      v69 = sub_1AF1D005C(v50, 0);
      if (v69)
      {
        v71 = v69;
        if (sub_1AF166220(v69, v70) || sub_1AF1676A0(v71, v72))
        {
          v73 = objc_msgSend_radianceTextureForMaterialProperty_(self, v72, v71);
          if (v73)
          {
            v76 = v73;
            v77 = self->_renderEncoder;
            v78 = objc_msgSend_state(self->_debug.displayCubemapPipeline, v74, v75);
            objc_msgSend_setRenderPipelineState_(v77->var3, v79, v78);
            sub_1AF1F8FCC(self->_renderEncoder, v76, 0);
            v126 = xmmword_1AFE229F0;
            sub_1AF176E98(self->_renderEncoder, &v126, 0x10uLL, 0);
            objc_msgSend_drawPrimitives_vertexStart_vertexCount_(self->_renderEncoder->var3, v80, 4, 0, 4);
          }
        }
      }
    }

    v103 = sub_1AF1D005C(v50, 0);
    if (v103)
    {
      v105 = v103;
      if (sub_1AF166220(v103, v104) || sub_1AF1676A0(v105, v104))
      {
        v106 = objc_msgSend_irradianceTextureForMaterialProperty_(self, v104, v105);
        if (v106)
        {
          v108 = v106;
          v109 = self->_renderEncoder;
          v110 = objc_msgSend_state(self->_debug.displayCubemapPipeline, v104, v107);
          objc_msgSend_setRenderPipelineState_(v109->var3, v111, v110);
          sub_1AF1F8FCC(self->_renderEncoder, v108, 0);
          v126 = xmmword_1AFE22A00;
          sub_1AF176E98(self->_renderEncoder, &v126, 0x10uLL, 0);
          objc_msgSend_drawPrimitives_vertexStart_vertexCount_(self->_renderEncoder->var3, v112, 4, 0, 4);
        }
      }
    }

    v113 = objc_msgSend_specularDFGDiffuseHammonTextureWithRenderContext_(self->_resourceManager, v104, self);
    if (v113)
    {
      v116 = v113;
      v117 = self->_renderEncoder;
      v118 = objc_msgSend_state(self->_debug.displayTexture2DPipeline, v114, v115);
      objc_msgSend_setRenderPipelineState_(v117->var3, v119, v118);
      sub_1AF1F8FCC(self->_renderEncoder, v116, 0);
      v126 = xmmword_1AFE22A10;
      sub_1AF176E98(self->_renderEncoder, &v126, 0x10uLL, 0);
      objc_msgSend_drawPrimitives_vertexStart_vertexCount_(self->_renderEncoder->var3, v120, 4, 0, 4);
    }
  }
}

- (void)_drawShadowMaps
{
  v4 = objc_msgSend_currentRenderPassDescriptor(self, a2, v2);
  v7 = objc_msgSend_colorAttachments(v4, v5, v6);
  v9 = objc_msgSend_objectAtIndexedSubscript_(v7, v8, 0);
  v12 = objc_msgSend_texture(v9, v10, v11);
  if (v12)
  {
    v15 = v12;
    v16 = objc_msgSend_pixelFormat(v12, v13, v14);
    v19 = objc_msgSend_sampleCount(v15, v17, v18);
    if (self->_debug.pixelFormat != v16 || self->_debug.sampleCount != v19)
    {
      self->_debug.pixelFormat = v16;
      self->_debug.sampleCount = v19;
      v21 = sub_1AFDE868C(self->_resourceManager);
      v24 = objc_msgSend_frameworkLibrary(v21, v22, v23);
      v25 = *&self->_currentRenderPassDesc.colorFormat[6];
      v98 = *&self->_currentRenderPassDesc.colorFormat[4];
      v99 = v25;
      v100 = *&self->_currentRenderPassDesc.depthFormat;
      v101 = *&self->_currentRenderPassDesc.sampleCount;
      v26 = *&self->_currentRenderPassDesc.colorFormat[2];
      v96 = *self->_currentRenderPassDesc.colorFormat;
      v97 = v26;

      resourceManager = self->_resourceManager;
      v82 = v98;
      v83 = v99;
      v84 = v100;
      v80 = v96;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v72 = 0u;
      v79 = v24;
      v85 = v101;
      v81 = v97;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v92 = @"quad_vertex";
      v93 = @"quad_display_depth2D";
      v94 = 0u;
      v95 = 0u;
      self->_debug.displayDepth2DPipeline = objc_msgSend_newRenderPipelineStateWithDesc_(resourceManager, v28, &v72);

      v82 = v98;
      v83 = v99;
      v84 = v100;
      v80 = v96;
      v29 = self->_resourceManager;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v72 = 0u;
      v79 = v24;
      v85 = v101;
      v81 = v97;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v92 = @"quad_vertex";
      v93 = @"quad_display_depth_cube";
      v94 = 0u;
      v95 = 0u;
      self->_debug.displayDepthCubePipeline = objc_msgSend_newRenderPipelineStateWithDesc_(v29, v30, &v72);
    }

    objc_msgSend_setCullMode_(self->_renderEncoder->var3, v20, 0);
    renderEncoder = self->_renderEncoder;
    v32 = sub_1AFDE8620(self->_resourceManager);
    objc_msgSend_setDepthStencilState_(renderEncoder->var3, v33, v32);
    v36 = objc_msgSend_height(v15, v34, v35);
    v71 = (v36 / objc_msgSend_width(v15, v37, v38)) * 0.125;
    v39 = *&self->_anon_4190[456];
    if (objc_msgSend_textureType(v39, v40, v41) == 5)
    {
      v44 = self->_renderEncoder;
      v45 = objc_msgSend_state(self->_debug.displayDepthCubePipeline, v42, v43);
LABEL_9:
      objc_msgSend_setRenderPipelineState_(v44->var3, v46, v45);
      sub_1AF1F8FCC(self->_renderEncoder, v39, 0);
      *&v49 = 0x3F5D70A43C23D70ALL;
      *(&v49 + 1) = __PAIR64__(0.125, LODWORD(v71));
      v72 = v49;
      sub_1AF176E98(self->_renderEncoder, &v72, 0x10uLL, 0);
      objc_msgSend_drawPrimitives_vertexStart_vertexCount_(self->_renderEncoder->var3, v50, 4, 0, 4);
      return;
    }

    if (objc_msgSend_textureType(v39, v42, v43) == 2)
    {
      v44 = self->_renderEncoder;
      v45 = objc_msgSend_state(self->_debug.displayDepth2DPipeline, v47, v48);
      goto LABEL_9;
    }

    if (objc_msgSend_textureType(v39, v47, v48) == 3)
    {
      v53 = self->_renderEncoder;
      v54 = objc_msgSend_state(self->_debug.displayDepth2DPipeline, v51, v52);
      objc_msgSend_setRenderPipelineState_(v53->var3, v55, v54);
      if (objc_msgSend_arrayLength(v39, v56, v57))
      {
        v60 = 0;
        do
        {
          v61 = objc_msgSend_pixelFormat(v39, v58, v59);
          v64 = objc_msgSend_mipmapLevelCount(v39, v62, v63);
          v66 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v39, v65, v61, 2, 0, v64, v60, 1);
          sub_1AF1F8FCC(self->_renderEncoder, v66, 0);
          *&v67 = (v60 * (v71 + 0.01)) + 0.01;
          DWORD1(v67) = 1063088292;
          *(&v67 + 1) = __PAIR64__(0.125, LODWORD(v71));
          v72 = v67;
          sub_1AF176E98(self->_renderEncoder, &v72, 0x10uLL, 0);
          objc_msgSend_drawPrimitives_vertexStart_vertexCount_(self->_renderEncoder->var3, v68, 4, 0, 4);

          ++v60;
        }

        while (v60 < objc_msgSend_arrayLength(v39, v69, v70));
      }
    }
  }
}

- (void)_drawFullScreenTexture:(id)texture
{
  v5 = objc_msgSend_currentRenderPassDescriptor(self, a2, texture);
  v8 = objc_msgSend_depthAttachment(v5, v6, v7);
  v11 = objc_msgSend_texture(v8, v9, v10);
  v14 = objc_msgSend_pixelFormat(v11, v12, v13);
  v17 = objc_msgSend_stencilAttachment(v5, v15, v16);
  v20 = objc_msgSend_texture(v17, v18, v19);
  v23 = objc_msgSend_pixelFormat(v20, v21, v22);
  v26 = 0;
  v27 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * (v23 ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ v14)))) ^ ((0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * (v23 ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ v14)))) >> 47));
  do
  {
    v28 = objc_msgSend_colorAttachments(v5, v24, v25);
    v30 = objc_msgSend_objectAtIndexedSubscript_(v28, v29, v26);
    v33 = objc_msgSend_texture(v30, v31, v32);
    v36 = objc_msgSend_pixelFormat(v33, v34, v35);
    v39 = objc_msgSend_texture(v30, v37, v38);
    v42 = objc_msgSend_sampleCount(v39, v40, v41);
    v43 = 0x9DDFEA08EB382D69 * (v27 ^ ((0x9DDFEA08EB382D69 * (v36 ^ v27)) >> 47) ^ (0x9DDFEA08EB382D69 * (v36 ^ v27)));
    v44 = 0x9DDFEA08EB382D69 * (v43 ^ (v43 >> 47));
    ++v26;
    v27 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v44 ^ ((0x9DDFEA08EB382D69 * (v44 ^ v42)) >> 47) ^ (0x9DDFEA08EB382D69 * (v44 ^ v42)))) ^ ((0x9DDFEA08EB382D69 * (v44 ^ ((0x9DDFEA08EB382D69 * (v44 ^ v42)) >> 47) ^ (0x9DDFEA08EB382D69 * (v44 ^ v42)))) >> 47));
  }

  while (v26 != 8);
  if (self->_compositeRendering[0].hash != v27)
  {
    self->_compositeRendering[0].hash = v27;
    v45 = sub_1AFDE868C(self->_resourceManager);
    v48 = objc_msgSend_frameworkLibrary(v45, v46, v47);
    v64 = *&self->_currentRenderPassDesc.colorFormat[4];
    v65 = *&self->_currentRenderPassDesc.colorFormat[6];
    v66 = *&self->_currentRenderPassDesc.depthFormat;
    v67 = *&self->_currentRenderPassDesc.sampleCount;
    v62 = *self->_currentRenderPassDesc.colorFormat;
    v63 = *&self->_currentRenderPassDesc.colorFormat[2];

    resourceManager = self->_resourceManager;
    memset(v60, 0, sizeof(v60));
    v61 = v48;
    v72 = 0;
    v73 = 0;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    memset(v71, 0, sizeof(v71));
    v74 = @"vfx_draw_fullscreen_triangle_vertex";
    v75 = @"vfx_draw_fullscreen_gamma_fragment";
    v76 = 0u;
    v77 = 0u;
    self->_compositeRendering[0].pipeline = objc_msgSend_newRenderPipelineStateWithDesc_(resourceManager, v50, v60);
  }

  objc_msgSend_setCullMode_(self->_renderEncoder->var3, v24, 0);
  renderEncoder = self->_renderEncoder;
  v52 = sub_1AFDE8620(self->_resourceManager);
  objc_msgSend_setDepthStencilState_(renderEncoder->var3, v53, v52);
  v54 = self->_renderEncoder;
  v57 = objc_msgSend_state(self->_compositeRendering[0].pipeline, v55, v56);
  objc_msgSend_setRenderPipelineState_(v54->var3, v58, v57);
  sub_1AF1F8FCC(self->_renderEncoder, texture, 0);
  sub_1AF2010C8(self->_renderEncoder, v59);
}

- (void)writeBytes:(const void *)bytes length:(unint64_t)length
{
  renderEncoder = self->_renderEncoder;
  currentStreamBufferIndices = self->_currentStreamBufferIndices;
  CFXBufferAllocatorPerFrameAllocateWithBytes(renderEncoder->var5->impl, bytes, length);
  v7 = v6;
  CFXBufferSliceGetMTLBuffer();
  v10 = v8;
  if (currentStreamBufferIndices != 0xFF)
  {
    objc_msgSend_setVertexBuffer_offset_atIndex_(renderEncoder->var3, v9, v8, v7, currentStreamBufferIndices);
  }

  if ((~currentStreamBufferIndices & 0xFF00) != 0)
  {
    var3 = renderEncoder->var3;

    objc_msgSend_setFragmentBuffer_offset_atIndex_(var3, v9, v10, v7, currentStreamBufferIndices >> 8);
  }
}

- (unint64_t)cubeArrayTypeIfSupported
{
  if ((self->_features & 0x100) != 0)
  {
    return 6;
  }

  else
  {
    return 3;
  }
}

- (void)addCommandBufferScheduledHandler:(id)handler
{
  v14[2] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_gpuHandlersLock);
  v7 = objc_msgSend_copy(handler, v5, v6);
  v8 = v7;
  if (self->_commandBufferScheduledHandlers)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    commandBufferScheduledHandlers = self->_commandBufferScheduledHandlers;
    if (isKindOfClass)
    {
      objc_msgSend_addObject_(self->_commandBufferScheduledHandlers, v10, v8);
    }

    else
    {
      v14[0] = self->_commandBufferScheduledHandlers;
      v14[1] = v8;
      v12 = objc_alloc(MEMORY[0x1E695DF70]);
      self->_commandBufferScheduledHandlers = objc_msgSend_initWithObjects_count_(v12, v13, v14, 2);
    }
  }

  else
  {
    self->_commandBufferScheduledHandlers = v7;
  }

  os_unfair_lock_unlock(&self->_gpuHandlersLock);
}

- (void)addCommandBufferCompletedHandler:(id)handler
{
  v14[2] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_gpuHandlersLock);
  v7 = objc_msgSend_copy(handler, v5, v6);
  v8 = v7;
  if (self->_commandBufferCompletedHandlers)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    commandBufferCompletedHandlers = self->_commandBufferCompletedHandlers;
    if (isKindOfClass)
    {
      objc_msgSend_addObject_(self->_commandBufferCompletedHandlers, v10, v8);
    }

    else
    {
      v14[0] = self->_commandBufferCompletedHandlers;
      v14[1] = v8;
      v12 = objc_alloc(MEMORY[0x1E695DF70]);
      self->_commandBufferCompletedHandlers = objc_msgSend_initWithObjects_count_(v12, v13, v14, 2);
    }
  }

  else
  {
    self->_commandBufferCompletedHandlers = v7;
  }

  os_unfair_lock_unlock(&self->_gpuHandlersLock);
}

- (void)addDrawablePresentedHandler:(id)handler
{
  v14[2] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_gpuHandlersLock);
  v7 = objc_msgSend_copy(handler, v5, v6);
  v8 = v7;
  if (self->_drawablePresentedHandlers)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    drawablePresentedHandlers = self->_drawablePresentedHandlers;
    if (isKindOfClass)
    {
      objc_msgSend_addObject_(self->_drawablePresentedHandlers, v10, v8);
    }

    else
    {
      v14[0] = self->_drawablePresentedHandlers;
      v14[1] = v8;
      v12 = objc_alloc(MEMORY[0x1E695DF70]);
      self->_drawablePresentedHandlers = objc_msgSend_initWithObjects_count_(v12, v13, v14, 2);
    }
  }

  else
  {
    self->_drawablePresentedHandlers = v7;
  }

  os_unfair_lock_unlock(&self->_gpuHandlersLock);
}

- (void)discardPendingCommandBufferScheduledHandlers
{
  os_unfair_lock_lock(&self->_gpuHandlersLock);

  self->_commandBufferScheduledHandlers = 0;

  os_unfair_lock_unlock(&self->_gpuHandlersLock);
}

- (void)discardPendingCommandBufferCompletedHandlers
{
  os_unfair_lock_lock(&self->_gpuHandlersLock);

  self->_commandBufferCompletedHandlers = 0;

  os_unfair_lock_unlock(&self->_gpuHandlersLock);
}

- (void)discardPendingDrawablePresentedHandlers
{
  os_unfair_lock_lock(&self->_gpuHandlersLock);

  self->_drawablePresentedHandlers = 0;

  os_unfair_lock_unlock(&self->_gpuHandlersLock);
}

- (void)_allowGPUBackgroundExecution
{
  if (!self->_clientCommandBuffer && !objc_msgSend_clientCommandQueue(self, a2, v2))
  {
    ownedCommandQueue = self->_ownedCommandQueue;
    if (ownedCommandQueue)
    {
      if (objc_msgSend_getBackgroundGPUPriority(self->_ownedCommandQueue, v4, v5) != 3)
      {
        return;
      }

      v8 = ownedCommandQueue;
    }

    else
    {
      v9 = sub_1AFDE8698(self->_resourceManager);
      if (objc_msgSend_getBackgroundGPUPriority(v9, v10, v11) != 3)
      {
        return;
      }

      v8 = v9;
    }

    objc_msgSend_setBackgroundGPUPriority_(v8, v7, 2);
  }
}

- (void)_VFXWorldRendererMainPassCustomPostProcessSupportDrawSceneBackgroundUsingEncoder:(id)encoder commandBuffer:(id)buffer renderPassDesc:(id *)desc
{
  v7 = sub_1AF12DDCC(self->_engineContext, a2);
  v8 = sub_1AF1D0008(v7, 0);
  if (v8)
  {
    v10 = v8;
    if (sub_1AF20107C(self->_renderEncoder, v9) != encoder)
    {
      sub_1AF20B70C();
    }

    engineContext = self->_engineContext;

    sub_1AF12E1B8(engineContext, v10);
  }
}

- (CFXVFXRenderTargetInfo)renderTargetInfo
{
  v4 = objc_msgSend_currentRenderPassDescriptor(self, a2, v2);
  objc_msgSend_setDescriptor_(self->_renderTargetInfo, v5, v4);
  objc_msgSend_renderSize(self, v6, v7);
  v25 = v8;
  objc_msgSend_renderSize(self, v9, v10);
  v24 = v11;
  objc_msgSend_renderSize(self, v12, v13);
  objc_msgSend_renderSize(self, v14, v15);
  __asm { FMOV            V0.2S, #1.0 }

  objc_msgSend_set_renderTargetSize_(self->_renderTargetInfo, v21, v22, COERCE_DOUBLE(__PAIR64__(v24, v25)));
  return self->_renderTargetInfo;
}

- ($56FBFA7F90079343FE03906F902E417E)bufferForBuiltin:(unsigned __int8)builtin
{
  MEMORY[0x1EEE9AC00](self);
  v5 = v4;
  v68 = *MEMORY[0x1E69E9840];
  switch(v3)
  {
    case 3:
      CFXBufferSliceGetMTLBuffer();
      if (v56)
      {
        v53 = *(v5 + 19080);
        v54 = *(v5 + 19088);
      }

      else
      {
        v53 = CFXBufferAllocatorPerFrameAllocateWithBytes(*(v5 + 504), (v5 + 720), 0x310uLL);
        *(v5 + 19080) = v53;
        *(v5 + 19088) = v54;
      }

      break;
    case 2:
      CFXBufferSliceGetMTLBuffer();
      if (v55)
      {
        v53 = *(v5 + 19064);
        v54 = *(v5 + 19072);
      }

      else
      {
        v53 = CFXBufferAllocatorPerFrameAllocateWithBytes(*(v5 + 504), (v5 + 17472), 0x480uLL);
        *(v5 + 19064) = v53;
        *(v5 + 19072) = v54;
      }

      break;
    case 1:
      CFXBufferSliceGetMTLBuffer();
      if (!v8)
      {
        v9 = *(v5 + 1160);
        v10 = *(v5 + 1168);
        if (!*(v5 + 19056))
        {
          v11 = objc_msgSend_newFunctionWithName_constants_library_(*(v5 + 112), v6, @"global_constants_encoder", 0, 0);
          *(v5 + 19056) = objc_msgSend_newArgumentEncoderWithBufferIndex_(v11, v12, 0);
        }

        v13 = objc_msgSend_defaultLightingEnvironmentIrradianceTexture(*(v5 + 112), v6, v7);
        v16 = objc_msgSend_defaultLightingEnvironmentRadianceTexture(*(v5 + 112), v14, v15);
        v18 = objc_msgSend_specularDFGDiffuseHammonTextureWithRenderContext_(*(v5 + 112), v17, v5);
        v21 = objc_msgSend_encodedLength(*(v5 + 19056), v19, v20);
        CFXBufferAllocatorPerFrameAllocateWithLength(*(v5 + 504), v21);
        *(v5 + 19040) = v22;
        *(v5 + 19048) = v23;
        v24 = *(v5 + 19056);
        CFXBufferSliceGetMTLBuffer();
        objc_msgSend_setArgumentBuffer_offset_(v24, v26, v25, *(v5 + 19048));
        v28 = objc_msgSend_constantDataAtIndex_(*(v5 + 19056), v27, 0);
        *v28 = v10;
        v28[1] = v9;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v59 = 0u;
        v29 = *(MEMORY[0x1E69E9B10] + 16);
        v57[0] = *MEMORY[0x1E69E9B10];
        v57[1] = v29;
        v57[2] = *(MEMORY[0x1E69E9B10] + 32);
        v58 = 0u;
        LODWORD(v58) = 1065353216;
        CFXBufferAllocatorPerFrameAllocateWithBytes(*(v5 + 504), v57, 0xD0uLL);
        v31 = v30;
        v32 = *(v5 + 19056);
        CFXBufferSliceGetMTLBuffer();
        objc_msgSend_setBuffer_offset_atIndex_(v32, v34, v33, v31, 10);
        v35 = *(v5 + 424);
        CFXBufferSliceGetMTLBuffer();
        objc_msgSend_useResource_usage_stages_(*(v35 + 16), v37, v36, 1, 3);
        bzero(v57, 0x65C0uLL);
        CFXBufferAllocatorPerFrameAllocateWithBytes(*(v5 + 504), v57, 0x65C0uLL);
        v39 = v38;
        v40 = *(v5 + 19056);
        CFXBufferSliceGetMTLBuffer();
        objc_msgSend_setBuffer_offset_atIndex_(v40, v42, v41, v39, 11);
        v43 = *(v5 + 424);
        CFXBufferSliceGetMTLBuffer();
        objc_msgSend_useResource_usage_stages_(*(v43 + 16), v45, v44, 1, 3);
        objc_msgSend_setTexture_atIndex_(*(v5 + 19056), v46, 0, 24);
        objc_msgSend_setTexture_atIndex_(*(v5 + 19056), v47, v13, 20);
        objc_msgSend_setTexture_atIndex_(*(v5 + 19056), v48, v16, 21);
        objc_msgSend_setTexture_atIndex_(*(v5 + 19056), v49, v18, 22);
        objc_msgSend_useResource_usage_stages_(*(*(v5 + 424) + 16), v50, v13, 1, 3);
        objc_msgSend_useResource_usage_stages_(*(*(v5 + 424) + 16), v51, v16, 1, 3);
        objc_msgSend_useResource_usage_stages_(*(*(v5 + 424) + 16), v52, v18, 1, 3);
      }

      v53 = *(v5 + 19040);
      v54 = *(v5 + 19048);
      break;
    default:
      v53 = 0;
      v54 = 0;
      break;
  }

  result.var1 = v54;
  result.var2 = HIDWORD(v54);
  result.var0 = v53;
  return result;
}

- (id)makeRenderPipelineForResourceID:(unint64_t)d
{
  v4 = objc_msgSend_renderPipelineDescForResourceID_(self->_resourceManager, a2, d);
  if (v4)
  {
    v7 = v4;
    v8 = objc_msgSend_programHashCode(v4, v5, v6);
    if (v8)
    {
      v10 = sub_1AF130160(self->_engineContext, v8);
      HIWORD(v36) = 0;
      *(&v36 + 10) = 0;
      memset(v39, 0, sizeof(v39));
      v13 = objc_msgSend_vertexDescriptor(v7, v11, v12);
      v16 = objc_msgSend_vertexDescriptor(v7, v14, v15);
      v19 = objc_msgSend_hash(v16, v17, v18);
      resourceManager = self->_resourceManager;
      *&v32 = 0;
      *(&v32 + 1) = v10;
      v33 = 0u;
      v34 = 0u;
      *&v35 = 33620223;
      *(&v35 + 1) = v13;
      *&v36 = v19;
      WORD4(v36) = 0;
      v37 = 0;
      v38 = 0;
      v40 = 0;
      v41 = 0;
      v22 = objc_msgSend_renderResourceForProgramDesc_renderPassDesc_(resourceManager, v21, &v32, &self->_currentRenderPassDesc);
      v25 = objc_msgSend_state(v22, v23, v24);
    }

    else
    {
      v29 = *&self->_currentRenderPassDesc.colorFormat[6];
      v34 = *&self->_currentRenderPassDesc.colorFormat[4];
      v35 = v29;
      v37 = *&self->_currentRenderPassDesc.sampleCount;
      v30 = *&self->_currentRenderPassDesc.colorFormat[2];
      v32 = *self->_currentRenderPassDesc.colorFormat;
      v33 = v30;
      v36 = *&self->_currentRenderPassDesc.depthFormat;
      v25 = objc_msgSend_renderResourcesFor_renderPassFormat_(self, v9, v7, &v32);
    }

    v28 = v25;
    objc_msgSend_registerRenderPipelineDescriptor_state_(self->_resourceManager, v26, v7, v25);
  }

  else
  {
    if ((byte_1EB6586A6 & 1) == 0)
    {
      byte_1EB6586A6 = 1;
      v27 = sub_1AF0D5194(0, v5);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE7754();
      }
    }

    return 0;
  }

  return v28;
}

- ($56FBFA7F90079343FE03906F902E417E)vfxCoreViewConstants
{
  v2 = *&self->_vfxViewUniforms.impl._offset;
  buffer = self->_vfxViewUniforms.impl._buffer;
  result.var1 = v2;
  result.var2 = HIDWORD(v2);
  result.var0 = buffer;
  return result;
}

- (id).cxx_construct
{
  self->_resourceBlitEncoder._encoder = 0;
  self->_resourceBlitEncoder._commandBuffer = 0;
  self->_frameTexturePool.impl = 0;
  v3 = -12544;
  self->_frameConstantBufferPool.impl = 0;
  self->_frameVolatileBufferPool.impl = 0;
  do
  {
    v4 = (self + v3);
    v4[875] = 0uLL;
    v4[874] = 0uLL;
    v4[873] = 0uLL;
    v4[872] = 0uLL;
    v4[829] = 0uLL;
    v4[830] = 0uLL;
    v4[831] = 0uLL;
    v4[832] = 0uLL;
    v4[833] = 0uLL;
    v4[834] = 0uLL;
    v4[835] = 0uLL;
    v4[836] = 0uLL;
    v4[837] = 0uLL;
    v4[838] = 0uLL;
    v4[839] = 0uLL;
    v4[840] = 0uLL;
    v4[841] = 0uLL;
    v4[842] = 0uLL;
    v4[843] = 0uLL;
    v4[844] = 0uLL;
    v4[845] = 0uLL;
    v4[846] = 0uLL;
    v4[847] = 0uLL;
    v4[848] = 0uLL;
    v4[849] = 0uLL;
    v4[850] = 0uLL;
    v4[851] = 0uLL;
    v4[852] = 0uLL;
    v4[869] = 0uLL;
    v4[868] = 0uLL;
    v4[867] = 0uLL;
    v4[866] = 0uLL;
    v4[865] = 0uLL;
    v4[864] = 0uLL;
    v4[863] = 0uLL;
    v4[862] = 0uLL;
    v4[861] = 0uLL;
    v4[860] = 0uLL;
    v4[859] = 0uLL;
    v4[858] = 0uLL;
    v3 += 784;
  }

  while (v3);
  *&self->_lighting.frameLightingSetDatas.__table_.__first_node_.__next_ = 0u;
  self->_lighting.frameLightingSetDatas.__table_.__bucket_list_ = 0u;
  bzero(&self->_worldUniforms, 0xCE0uLL);
  self->_lighting.frameLightingSetDatas.__table_.__max_load_factor_ = 1.0;
  sub_1AF1F6C30(&self->_anon_4190[144]);
  *&self->_anon_4190[336] = 0u;
  *&self->_anon_4190[432] = 0u;
  self->_remote.vfcGlobalConstants = 0u;
  self->_remote.vfcViewConstants = 0u;
  self->_remote.viewConstants = 0u;
  return self;
}

- (id)texture:(int)texture :(id)a4
{
  if (!objc_msgSend_isEqualToString_(a4, a2, @"shadowMap"))
  {
    return 0;
  }

  v5 = sub_1AF13AE54(self->_processingContext.lightingSystem);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  engineContext = self->_engineContext;

  return sub_1AF130664(engineContext, v6);
}

- (id)buffer:(int)buffer :(id)a4 :(int64_t *)a5 :(int64_t *)a6
{
  v7 = *&buffer;
  v9 = objc_msgSend_engineContext(self, a2, *&buffer, a4, a5, a6);
  v10 = sub_1AF12E8A4(v9);
  if (!v10)
  {
    return 0;
  }

  v12 = v10;
  isEqualToString = objc_msgSend_isEqualToString_(a4, v11, @"passConstants");
  if (!isEqualToString)
  {
    v36 = sub_1AF0D5194(isEqualToString, v14);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE7788(a4, v7, v36);
    }

    return 0;
  }

  v16 = objc_msgSend_resourceManager(self, v14, v15);
  v17 = sub_1AFDE868C(v16);
  v20 = objc_msgSend_frameworkLibrary(v17, v18, v19);
  v22 = objc_msgSend_newFunctionWithName_(v20, v21, @"pass_constants_encoder");
  v24 = objc_msgSend_newArgumentEncoderWithBufferIndex_(v22, v23, 0);

  resourceManager = self->_resourceManager;
  v28 = objc_msgSend_encodedLength(v24, v26, v27);
  sub_1AFDE851C(resourceManager, v28, 0);
  v30 = v29;
  objc_msgSend_setArgumentBuffer_offset_(v24, v31, v29, 0);
  v33 = sub_1AF270A00(v12, @"VFX-Depth-Linear", v32);
  objc_msgSend_setTexture_atIndex_(v24, v34, v33, 30);

  return v30;
}

- (id)sampler:(int)sampler :(id)a4
{
  v4 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE781C();
  }

  return 0;
}

- (const)constantData:(int)data
{
  anon_4440 = self->_anon_4440;
  if (data != 8)
  {
    anon_4440 = 0;
  }

  if (data == 1)
  {
    return self->_anon_4440;
  }

  else
  {
    return anon_4440;
  }
}

- (BOOL)constantOffsetAndSize:(int)size :(id)a4 :(int64_t *)a5 :(int64_t *)a6
{
  if (size != 1)
  {
    if (size == 8)
    {
      if (objc_msgSend_isEqualToString_(a4, a2, @"crWorldToViewArray"))
      {
        *a5 = 0;
LABEL_15:
        v13 = self->_renderPassParameters.eyeCount << 6;
LABEL_16:
        result = 1;
        goto LABEL_30;
      }

      if (objc_msgSend_isEqualToString_(a4, v10, @"crWorldToProjArray"))
      {
        v15 = 128;
LABEL_14:
        *a5 = v15;
        goto LABEL_15;
      }

      if (objc_msgSend_isEqualToString_(a4, v14, @"viewToProjArray"))
      {
        v15 = 256;
        goto LABEL_14;
      }

      if (objc_msgSend_isEqualToString_(a4, v16, @"projToViewArray"))
      {
        v15 = 384;
        goto LABEL_14;
      }

      if (objc_msgSend_isEqualToString_(a4, v17, @"crwsCameraPositionArray"))
      {
        v19 = 512;
LABEL_19:
        *a5 = v19;
        v13 = 16 * self->_renderPassParameters.eyeCount;
        goto LABEL_16;
      }

      if (objc_msgSend_isEqualToString_(a4, v18, @"renderTargetSize"))
      {
        v11 = 816;
        goto LABEL_7;
      }

      if (objc_msgSend_isEqualToString_(a4, v20, @"viewportCount"))
      {
        v22 = 832;
LABEL_26:
        *a5 = v22;
        result = 1;
        v13 = 4;
        goto LABEL_30;
      }

      if (objc_msgSend_isEqualToString_(a4, v21, @"useVertexAmplification"))
      {
        v22 = 836;
        goto LABEL_26;
      }

      if (objc_msgSend_isEqualToString_(a4, v23, @"viewportPercentsArray"))
      {
        v19 = 928;
        goto LABEL_19;
      }
    }

LABEL_29:
    v13 = 0;
    result = 0;
    *a5 = 0;
    goto LABEL_30;
  }

  if (!objc_msgSend_isEqualToString_(a4, a2, @"crwsReferencePosition"))
  {
    goto LABEL_29;
  }

  v11 = 800;
LABEL_7:
  *a5 = v11;
  result = 1;
  v13 = 16;
LABEL_30:
  *a6 = v13;
  return result;
}

- (id)renderResourcesFor:(id)for renderPassFormat:(id *)format
{
  var3 = format->var3;
  v6 = *&format->var0[2];
  v12[0] = *format->var0;
  v12[1] = v6;
  v7 = *&format->var0[6];
  v12[2] = *&format->var0[4];
  v12[3] = v7;
  v12[4] = *&format->var1;
  v13 = var3;
  forCopy = for;
  selfCopy = self;
  v10 = sub_1AF70CCBC(forCopy, v12);

  return v10;
}

@end