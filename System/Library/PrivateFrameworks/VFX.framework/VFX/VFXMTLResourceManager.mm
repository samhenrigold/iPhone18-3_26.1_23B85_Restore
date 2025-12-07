@interface VFXMTLResourceManager
+ (void)_fillVertexDescriptor:(id)descriptor withSemantic:(char)semantic inputSet:(int64_t)set bufferIndex:(int64_t)index vertexFormat:(unint64_t)format offset:(unint64_t)offset stride:(unint64_t)stride;
- ($A0006519144E89EAB0D3761C94EDBD8D)descForDepthStencilState:(id)state;
- (BOOL)_copyImage:(__CFXImage *)image toTexture:(id)texture desc:(id)desc textureOptions:(unsigned __int8)options needsMipMapGeneration:(BOOL)generation;
- (BOOL)allowHotReload;
- (VFXMTLResourceManager)initWithDevice:(id)device remoteEncoding:(BOOL)encoding;
- (__CFXProgram)defaultProgramUsingTessellation:(BOOL)tessellation;
- (id)_bufferForData:(__CFData *)data bytesPerIndex:(unint64_t)index;
- (id)_bufferForMTLBuffer:(void *)buffer;
- (id)_computePipelineStateForKernel:(id)kernel constants:(id)constants constantsHash:(id)hash threadGroupSizeIsMultipleOfThreadExecutionWidth:(BOOL)width;
- (id)_newComputeDescriptorForPipelineDesc:(id *)desc library:(id)library;
- (id)_textureDescriptorFromImage:(__CFXImage *)image needsMipMap:(BOOL)map textureOptions:(unsigned __int8)options;
- (id)areaLightPrecomputedDataTexture;
- (id)colorMatchingComputePipelineStateForBiPlanarPixelBufferWithFormatType:(unsigned int)type pixelBufferYCbCrMatrix:(id)matrix pixelBufferColorPrimaries:(id)primaries pixelBufferTransferFunction:(id)function sourceColorSpace:(CGColorSpace *)space destinationColorSpace:(CGColorSpace *)colorSpace renderContext:(id)context;
- (id)computeEvaluatorWithContext:(MTLContext *)context srcDesc:(const BufferDescriptor *)desc dstDesc:(const BufferDescriptor *)dstDesc duDesc:(const BufferDescriptor *)duDesc dvDesc:(const BufferDescriptor *)dvDesc;
- (id)computePipelineStateForKernel:(id)kernel withStageDescriptor:(id)descriptor stageDescriptorUpdateBlock:(id)block constants:(id)constants constantsHash:(id)hash;
- (id)copyTextureByConvertingToCubeMapIfApplicable:(id)applicable engineContext:(__CFXEngineContext *)context needsMipmap:(BOOL)mipmap;
- (id)defaultCubeTexture;
- (id)defaultLightingEnvironmentIrradianceTexture;
- (id)defaultLightingEnvironmentRadianceTexture;
- (id)defaultTexture;
- (id)defaultTexture1D;
- (id)defaultTexture3D;
- (id)defaultTextureForTextureType:(unint64_t)type;
- (id)depthStencilStateForDepthStencilDesc:(id)desc;
- (id)fetchArgumentBufferDescriptorWithRemoteID:(unint64_t)d offset:(unint64_t)offset;
- (id)getUniqueStageDescriptor:(id)descriptor;
- (id)hazardousResourceForKey:(id)key inLockedRegistry:(id *)registry onBehalfOfRenderContext:(id)context withHazardTrackingHandler:(id)handler;
- (id)iesTextureForProfile:(void *)profile renderContext:(id)context;
- (id)irradianceTextureForEnvironmentTexture:(id)texture renderContext:(id)context applySH:(id)h;
- (id)irradianceTextureForPrecomputedLightingEnvironment:(id)environment;
- (id)latlongTextureForCubemap:(id)cubemap pixelFormat:(unint64_t)format renderContext:(id)context needsMipmap:(BOOL)mipmap;
- (id)lazyMTKTextureLoader;
- (id)newComputePipelineStateForDesc:(id *)desc library:(id)library;
- (id)newComputePipelineStateWithFunctionName:(id)name;
- (id)newComputePipelineStateWithFunctionName:(id)name constantValues:(id)values;
- (id)newComputePipelineStateWithFunctionName:(id)name constantValues:(id)values linkedFunctions:(id)functions;
- (id)newComputePipelineStateWithFunctionName:(id)name library:(id)library constantValues:(id)values linkedFunctions:(id)functions;
- (id)newCubemapTextureForLatlongTexture:(id)texture pixelFormat:(unint64_t)format engineContext:(__CFXEngineContext *)context needsMipmap:(BOOL)mipmap;
- (id)newFunctionWithName:(id)name constants:(id)constants library:(id)library;
- (id)newRadianceTextureForEnvironmentTexture:(id)texture size:(unsigned int)size engineContext:(__CFXEngineContext *)context cpuAccessible:(BOOL)accessible;
- (id)newRenderPipelineStateWithDesc:(id *)desc;
- (id)newTextureUsingMTKTextureLoaderWithData:(id)data options:(id)options;
- (id)newTextureUsingMTKTextureLoaderWithURL:(id)l options:(id)options;
- (id)radianceTextureForEnvironmentTexture:(id)texture engineContext:(__CFXEngineContext *)context;
- (id)radianceTextureForPrecomputedLightingEnvironment:(id)environment;
- (id)renderResourceForAsset:(void *)asset withEngineContext:(__CFXEngineContext *)context entityCache:(int64_t *)cache isFallback:(BOOL *)fallback isDynamic:(BOOL *)dynamic;
- (id)renderResourceForDeformerStack:(__CFXDeformerStack *)stack node:(__CFXNode *)node dataKind:(unsigned __int8)kind;
- (id)renderResourceForImage:(__CFXImage *)image sampler:(id)sampler options:(unsigned __int8)options engineContext:(__CFXEngineContext *)context didFallbackToDefaultTexture:(BOOL *)texture;
- (id)renderResourceForImageProxy:(__CFXImageProxy *)proxy sampler:(id)sampler engineContext:(__CFXEngineContext *)context didFallbackToDefaultTexture:(BOOL *)texture;
- (id)renderResourceForMaterialProperty:(__CFXMaterialProperty *)property withEngineContext:(__CFXEngineContext *)context didFallbackToDefaultTexture:(BOOL *)texture isDynamic:(BOOL *)dynamic;
- (id)renderResourceForMorpher:(__CFXMorpher *)morpher baseMesh:(__CFXMesh *)mesh dataKind:(unsigned __int8)kind provider:(id)provider;
- (id)renderResourceForProgramDesc:(id *)desc renderPassDesc:(id *)passDesc;
- (id)renderResourceForSkinner:(__CFXSkinner *)skinner baseMesh:(__CFXMesh *)mesh dataKind:(unsigned __int8)kind provider:(id)provider;
- (id)samplerStateForSamplerDesc:(id)desc;
- (id)shFromCPU:(id)u commandBuffer:(id)buffer;
- (id)specularDFGDiffuseHammonTextureWithRenderContext:(id)context;
- (id)sphericalHarmonicsForEnvironmentTexture:(id)texture order:(unint64_t)order commandBuffer:(id)buffer;
- (id)unstageTexture:(id)texture commandBuffer:(id)buffer;
- (int64_t)decrementUsageCount;
- (unint64_t)registerRenderPipelineDescriptor:(id)descriptor state:(id)state;
- (unint64_t)resourceIDForBuffer:(id)buffer;
- (unint64_t)resourceIDForRenderPipelineState:(id)state;
- (unint64_t)resourceIDForTexture:(id)texture;
- (unsigned)builtinForBufferSlice:(id)slice;
- (unsigned)builtinForTexture:(id)texture;
- (void)__createPipelineStateWithDescriptor:(id)descriptor desc:(id *)desc pipeline:(id)pipeline;
- (void)__updateMutableMesh:(__CFXMesh *)mesh withMetalMesh:(id)metalMesh;
- (void)_bakeSphericalHamonicsBasedIrradianceTexture:(id)texture forEnvironmentTexture:(id)environmentTexture renderContext:(id)context applySH:(id)h;
- (void)_bakeStochasticIrradianceTexture:(id)texture forEnvironmentTexture:(id)environmentTexture mipmapLevelForSampling:(unint64_t)sampling renderContext:(id)context;
- (void)_configureComputePipeline:(id)pipeline withDescriptor:(id)descriptor;
- (void)_createPipelineStateWithDescriptor:(id)descriptor desc:(id *)desc pipeline:(id)pipeline;
- (void)_deallocRemoteResources;
- (void)_deformerStackDidChange:(id)change;
- (void)_deformerStackWillDie:(id)die;
- (void)_enqueueCopyFromTexture:(id)texture toTexture:(id)toTexture blitEncoder:(VFXMTLBlitCommandEncoder *)encoder generateMipMaps:(BOOL)maps;
- (void)_imageProxyWillDie:(id)die;
- (void)_imageWillDie:(id)die;
- (void)_materialWillDie:(id)die;
- (void)_meshElementWillDie:(id)die;
- (void)_meshSourceWillDie:(id)die;
- (void)_meshWillDie:(id)die;
- (void)_modelWillDie:(id)die;
- (void)_morphWillDie:(id)die;
- (void)_precomputedLightingEnvironmentWillDie:(id)die;
- (void)_programHashCodeWillDie:(id)die;
- (void)_programWillDie:(id)die;
- (void)_rasterizerStateDidDie:(const void *)die;
- (void)_removeHazardousResourcesForKey:(id)key fromLockedRegistry:(id *)registry byEnumeratingFirstUsingBlock:(id)block;
- (void)_removeMatchingProgram:(__CFXProgram *)program owner:(__CFXWorld *)owner;
- (void)_setupRemoteResourcesRegistry;
- (void)_skinWillDie:(id)die;
- (void)clearArgumentBufferDescriptors;
- (void)colorMatchBiPlanarPixelBufferWithFormatType:(unsigned int)type pixelBufferYCbCrMatrix:(id)matrix pixelBufferColorPrimaries:(id)primaries pixelBufferTransferFunction:(id)function sourceTextureY:(id)y sourceTextureCbCr:(id)cr sourceColorSpace:(CGColorSpace *)space destinationColorSpace:(CGColorSpace *)self0 destinationTexture:(id)self1 renderContext:(id)self2;
- (void)colorMatchSourceTexture:(id)texture sourceColorSpace:(CGColorSpace *)space destinationColorSpace:(CGColorSpace *)colorSpace destinationTexture:(id)destinationTexture renderContext:(id)context;
- (void)commandBufferDidCompleteWithError:(id)error;
- (void)dealloc;
- (void)encodeNewlyRegisteredResources:(__CFXRemoteFrameBuilder *)resources;
- (void)registerBuiltinBuffer:(id)buffer builtin:(unsigned __int8)builtin;
- (void)registerBuiltinTexture:(id)texture builtin:(unsigned __int8)builtin;
- (void)registerRenderPipeline:(id)pipeline forResourceID:(unint64_t)d;
- (void)remoteRegisterArgumentBufferDescriptor:(id)descriptor remoteID:(unint64_t)d offset:(unint64_t)offset;
- (void)remoteRegisterBuffer:(id)buffer remoteID:(unint64_t)d;
- (void)remoteRegisterRenderPipelineDescriptor:(id)descriptor remoteID:(unint64_t)d;
- (void)remoteRegisterTexture:(id)texture remoteID:(unint64_t)d;
- (void)remoteUnregisterBuffer:(unint64_t)buffer;
- (void)remoteUnregisterTexture:(unint64_t)texture;
- (void)removeResourceForKey:(id)key fromRegistry:(id *)registry;
- (void)removeResourceIDForResource:(id)resource;
- (void)setHazardousResource:(id)resource forKey:(id)key inLockedRegistry:(id *)registry onBehalfOfRenderContext:(id)context;
- (void)setRemoteResourceProvider:(id)provider;
@end

@implementation VFXMTLResourceManager

- (VFXMTLResourceManager)initWithDevice:(id)device remoteEncoding:(BOOL)encoding
{
  encodingCopy = encoding;
  v48 = *MEMORY[0x1E69E9840];
  v43.receiver = self;
  v43.super_class = VFXMTLResourceManager;
  v6 = [(VFXMTLResourceManager *)&v43 init];
  v8 = v6;
  if (v6)
  {
    v9 = sub_1AF0D5194(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v45 = v8;
      v46 = 2048;
      deviceCopy = device;
      _os_log_impl(&dword_1AF0CE000, v9, OS_LOG_TYPE_INFO, "Info: VFXMTLResourceManager(%p) initWithDevice device:%p", buf, 0x16u);
    }

    *(v8 + 16) = 0;
    if (encodingCopy)
    {
      v10 = 3;
    }

    else
    {
      v10 = 1;
    }

    v11 = CFXGPUDeviceCreateWithOptions(device, v10);
    *(v8 + 8) = v11;
    if (!sub_1AF28A1D8(v11, v12))
    {
      goto LABEL_10;
    }

    v15 = objc_msgSend_newCommandQueue(device, v13, v14);
    if (v15)
    {
      *(v8 + 24) = v15;
      objc_msgSend_setLabel_(v15, v16, @"com.apple.vfx");
LABEL_10:
      v17 = [VFXMTLLibraryManager alloc];
      *(v8 + 40) = objc_msgSend_initWithDevice_(v17, v18, device);
      v19 = malloc_type_calloc(0x358uLL, 1uLL, 0x100004048B25B04uLL);
      *(v8 + 32) = v19;
      objc_msgSend__setEngineStats_(*(v8 + 40), v20, v19);
      *(v8 + 48) = objc_alloc_init(VFXMTLShaderBindingsGenerator);
      v21 = [VFXMTLBufferAllocator alloc];
      *(v8 + 72) = objc_msgSend_initWithDevice_fixedSizeElement_buffersize_name_(v21, v22, *(v8 + 8), 352, 0x40000, @"VFXMaterialData");
      *(v8 + 56) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
      *(v8 + 64) = 0;
      *(v8 + 92) = 0;
      *(v8 + 88) = 0;
      *(v8 + 108) = 0;
      *(v8 + 104) = 0;
      *(v8 + 180) = 1;
      *(v8 + 176) = 0;
      *(v8 + 124) = 0;
      *(v8 + 120) = 0;
      *(v8 + 148) = 0;
      *(v8 + 144) = 0;
      *(v8 + 164) = 0;
      *(v8 + 160) = 0;
      *(v8 + 212) = 0;
      *(v8 + 208) = 0;
      *(v8 + 276) = 0;
      *(v8 + 272) = 0;
      *(v8 + 292) = 0;
      *(v8 + 288) = 0;
      *(v8 + 308) = 0;
      *(v8 + 304) = 0;
      *(v8 + 372) = 0;
      *(v8 + 368) = 0;
      *(v8 + 324) = 1;
      *(v8 + 320) = 0;
      *(v8 + 340) = 1;
      *(v8 + 336) = 0;
      *(v8 + 356) = 1;
      *(v8 + 352) = 0;
      *(v8 + 196) = 0;
      *(v8 + 192) = 0;
      *(v8 + 228) = 0;
      *(v8 + 224) = 0;
      *(v8 + 244) = 0;
      *(v8 + 240) = 0;
      *(v8 + 260) = 0;
      *(v8 + 256) = 0;
      *(v8 + 388) = 0;
      *(v8 + 384) = 0;
      *(v8 + 404) = 0;
      *(v8 + 400) = 0;
      *(v8 + 420) = 1;
      *(v8 + 416) = 0;
      *(v8 + 424) = objc_alloc_init(VFXMTLShadableKey);
      *(v8 + 432) = objc_alloc_init(MEMORY[0x1E695DF70]);
      *(v8 + 440) = 0;
      v25 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v23, v24);
      objc_msgSend_addObserver_selector_name_object_(v25, v26, v8, sel__meshSourceWillDie_, @"kCFXNotificationMeshSourceWillDie", 0);
      objc_msgSend_addObserver_selector_name_object_(v25, v27, v8, sel__meshElementWillDie_, @"kCFXNotificationMeshElementWillDie", 0);
      objc_msgSend_addObserver_selector_name_object_(v25, v28, v8, sel__worldWillDie_, @"kCFXNotificationWorldWillDie", 0);
      objc_msgSend_addObserver_selector_name_object_(v25, v29, v8, sel__meshWillDie_, @"kCFXNotificationMeshWillDie", 0);
      objc_msgSend_addObserver_selector_name_object_(v25, v30, v8, sel__imageWillDie_, @"kCFXNotificationImageWillDie", 0);
      objc_msgSend_addObserver_selector_name_object_(v25, v31, v8, sel__imageProxyWillDie_, @"kCFXNotificationImageProxyWillDie", 0);
      objc_msgSend_addObserver_selector_name_object_(v25, v32, v8, sel__programWillDie_, @"kCFXNotificationProgramWillDie", 0);
      objc_msgSend_addObserver_selector_name_object_(v25, v33, v8, sel__materialWillDie_, @"kCFXNotificationMaterialWillDie", 0);
      objc_msgSend_addObserver_selector_name_object_(v25, v34, v8, sel__modelWillDie_, @"kCFXNotificationModelWillDie", 0);
      objc_msgSend_addObserver_selector_name_object_(v25, v35, v8, sel__morphWillDie_, @"kCFXNotificationMorphWillDie", 0);
      objc_msgSend_addObserver_selector_name_object_(v25, v36, v8, sel__skinWillDie_, @"kCFXNotificationSkinWillDie", 0);
      objc_msgSend_addObserver_selector_name_object_(v25, v37, v8, sel__deformerStackWillDie_, @"kCFXNotificationDeformerStackWillDie", 0);
      objc_msgSend_addObserver_selector_name_object_(v25, v38, v8, sel__deformerStackDidChange_, @"kCFXNotificationDeformerStackDidChange", 0);
      objc_msgSend_addObserver_selector_name_object_(v25, v39, v8, sel__programHashCodeWillDie_, @"kCFXNotificationProgramHashCodeWillDie", 0);
      objc_msgSend_addObserver_selector_name_object_(v25, v40, v8, sel__precomputedLightingEnvironmentWillDie_, @"kCFXNotificationPrecomputedLightingEnvironmentWillDie", 0);
      *(v8 + 560) = sub_1AF1D534C(@"vfx_debug_vert", @"vfx_debug_frag");
      *(v8 + 568) = sub_1AF1D534C(@"debug_post_tessellation_vert", @"vfx_debug_frag");
      *(v8 + 576) = sub_1AF1D534C(@"vfx_debug_vert", @"debug_isolate_frag");
      sub_1AF1BE27C(v8, sub_1AF20C7C4, @"kCFXNotificationRasterizerStatesDidDie", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      return v8;
    }

    v42 = sub_1AF0D5194(0, v16);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE86B8(v42);
    }

    return 0;
  }

  return v8;
}

- (void)dealloc
{
  v3 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    sub_1AFDE86FC(self, v3);
  }

  v6 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v4, v5);
  objc_msgSend_removeObserver_(v6, v7, self);

  self->_availableIrradianceTextures.registry = 0;
  self->_availableRadianceTextures.registry = 0;

  self->_availableIESTextures.registry = 0;
  self->_availableImages.safeResourcesRegistry.registry = 0;

  self->_availableImages.hazardousResourcesTracker = 0;
  self->_availableImageProxy.registry = 0;

  self->_availableSamplers.registry = 0;
  self->_availableMeshes.registry = 0;

  self->_availableDeformerStacks.registry = 0;
  self->_availableSkinDeformerReadOnlyBuffers.registry = 0;

  self->_availableMorphDeformerReadOnlyBuffers.registry = 0;
  self->_availableTessellators.registry = 0;

  self->_availableComputePipelines.registry = 0;
  self->_availableComputePipelinesWithStageDescriptor.registry = 0;

  self->_availableColorMatchingComputePipelines.registry = 0;
  self->_availableBuffers.registry = 0;

  self->_availableMeshSources.registry = 0;
  self->_availableMeshElements.registry = 0;

  self->_availableRasterizerStates.registry = 0;
  self->_availableWireframeMaterials.registry = 0;

  self->_availableOpenSubdivComputeEvaluators.registry = 0;
  self->_availableShadables.registry = 0;
  CFRelease(self->_availablePipelineStates);

  defaultProgram = self->_defaultProgram;
  if (defaultProgram)
  {
    CFRelease(defaultProgram);
    self->_defaultProgram = 0;
  }

  defaultProgramForTessellation = self->_defaultProgramForTessellation;
  if (defaultProgramForTessellation)
  {
    CFRelease(defaultProgramForTessellation);
    self->_defaultProgramForTessellation = 0;
  }

  isolateProgram = self->_isolateProgram;
  if (isolateProgram)
  {
    CFRelease(isolateProgram);
    self->_isolateProgram = 0;
  }

  free(self->__engineStats);
  self->__engineStats = 0;

  objc_msgSend__deallocRemoteResources(self, v11, v12);
  CFRelease(self->_gpuDevice);
  v13.receiver = self;
  v13.super_class = VFXMTLResourceManager;
  [(VFXMTLResourceManager *)&v13 dealloc];
}

- (int64_t)decrementUsageCount
{
  v2 = self->_usageCount - 1;
  self->_usageCount = v2;
  return v2;
}

- (void)removeResourceForKey:(id)key fromRegistry:(id *)registry
{
  objc_msgSend_removeObjectForKey_(registry->var0, a2, key);
  if (self->_remote.resourceIDToTexture)
  {

    MEMORY[0x1EEE66B58](self, sel_removeResourceIDForResource_, key);
  }
}

- (void)_meshSourceWillDie:(id)die
{
  v4 = objc_msgSend_object(die, a2, die);
  if (sub_1AF17039C(v4, v5))
  {
    v7 = sub_1AF1AE6E8(v4, v6);
    if (v7)
    {
      v8 = v7;
      if (CFDataGetLength(v7))
      {
        os_unfair_lock_lock(&self->_availableMeshSources.lock);
        objc_msgSend_removeResourceForKey_fromRegistry_(self, v9, v8, &self->_availableMeshSources);

        os_unfair_lock_unlock(&self->_availableMeshSources.lock);
      }
    }
  }
}

- (void)_meshElementWillDie:(id)die
{
  v4 = objc_msgSend_object(die, a2, die);
  os_unfair_lock_lock(&self->_availableMeshElements.lock);
  v6 = objc_msgSend_objectForKey_(self->_availableMeshElements.registry, v5, v4);
  v7 = sub_1AFDE868C(v6);
  if (!objc_msgSend_decrementUsedCount(v7, v8, v9))
  {
    os_unfair_lock_lock(&self->_availableBuffers.lock);
    v11 = sub_1AFDE868C(v6);
    v14 = objc_msgSend_dataSource(v11, v12, v13);
    objc_msgSend_removeResourceForKey_fromRegistry_(self, v15, v14, &self->_availableBuffers);
    os_unfair_lock_unlock(&self->_availableBuffers.lock);
  }

  objc_msgSend_removeResourceForKey_fromRegistry_(self, v10, v4, &self->_availableMeshElements);

  os_unfair_lock_unlock(&self->_availableMeshElements.lock);
}

- (void)_meshWillDie:(id)die
{
  v4 = objc_msgSend_object(die, a2, die);
  os_unfair_lock_lock(&self->_availableMeshes.lock);
  objc_msgSend_removeResourceForKey_fromRegistry_(self, v5, v4, &self->_availableMeshes);
  objc_msgSend_removeResourceForKey_fromRegistry_(self, v6, v4 | 1, &self->_availableMeshes);
  os_unfair_lock_unlock(&self->_availableMeshes.lock);
  os_unfair_lock_lock(&self->_availableSkinDeformerReadOnlyBuffers.lock);
  registry = self->_availableSkinDeformerReadOnlyBuffers.registry;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1AF20CD04;
  v12[3] = &unk_1E7A7CE58;
  v12[4] = self;
  v12[5] = v4;
  objc_msgSend_vfx_enumerateKeysAndValuesUsingBlock_(registry, v8, v12);
  os_unfair_lock_unlock(&self->_availableSkinDeformerReadOnlyBuffers.lock);
  os_unfair_lock_lock(&self->_availableMorphDeformerReadOnlyBuffers.lock);
  v9 = self->_availableMorphDeformerReadOnlyBuffers.registry;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1AF20CD50;
  v11[3] = &unk_1E7A7CE58;
  v11[4] = self;
  v11[5] = v4;
  objc_msgSend_vfx_enumerateKeysAndValuesUsingBlock_(v9, v10, v11);
  os_unfair_lock_unlock(&self->_availableMorphDeformerReadOnlyBuffers.lock);
}

- (void)_morphWillDie:(id)die
{
  v4 = objc_msgSend_object(die, a2, die);
  os_unfair_lock_lock(&self->_availableMorphDeformerReadOnlyBuffers.lock);
  objc_msgSend_removeResourceForKey_fromRegistry_(self, v5, v4, &self->_availableMorphDeformerReadOnlyBuffers);

  os_unfair_lock_unlock(&self->_availableMorphDeformerReadOnlyBuffers.lock);
}

- (void)_programHashCodeWillDie:(id)die
{
  v4 = objc_msgSend_object(die, a2, die);
  os_unfair_lock_lock(&self->_availableWireframeMaterials.lock);
  objc_msgSend_removeResourceForKey_fromRegistry_(self, v5, v4, &self->_availableWireframeMaterials);

  os_unfair_lock_unlock(&self->_availableWireframeMaterials.lock);
}

- (void)_skinWillDie:(id)die
{
  v4 = objc_msgSend_object(die, a2, die);
  os_unfair_lock_lock(&self->_availableSkinDeformerReadOnlyBuffers.lock);
  objc_msgSend_removeResourceForKey_fromRegistry_(self, v5, v4, &self->_availableSkinDeformerReadOnlyBuffers);

  os_unfair_lock_unlock(&self->_availableSkinDeformerReadOnlyBuffers.lock);
}

- (void)_deformerStackWillDie:(id)die
{
  os_unfair_lock_lock(&self->_availableDeformerStacks.lock);
  v7 = objc_msgSend_object(die, v5, v6);
  objc_msgSend_removeResourceForKey_fromRegistry_(self, v8, v7, &self->_availableDeformerStacks);
  objc_msgSend_removeResourceForKey_fromRegistry_(self, v9, v7 | 1, &self->_availableDeformerStacks);

  os_unfair_lock_unlock(&self->_availableDeformerStacks.lock);
}

- (void)_deformerStackDidChange:(id)change
{
  os_unfair_lock_lock(&self->_availableDeformerStacks.lock);
  v7 = objc_msgSend_object(change, v5, v6);
  if (sub_1AF16B74C(v7, v8))
  {
    v10 = objc_msgSend_objectForKey_(self->_availableDeformerStacks.registry, v9, v7);
    v12 = objc_msgSend_objectForKey_(self->_availableDeformerStacks.registry, v11, v7 | 1);
    sub_1AFDE21EC(v10);
    sub_1AFDE21EC(v12);
  }

  else
  {
    objc_msgSend_removeResourceForKey_fromRegistry_(self, v9, v7, &self->_availableDeformerStacks);
    objc_msgSend_removeResourceForKey_fromRegistry_(self, v13, v7 | 1, &self->_availableDeformerStacks);
  }

  os_unfair_lock_unlock(&self->_availableDeformerStacks.lock);
}

- (void)_imageWillDie:(id)die
{
  v4 = objc_msgSend_object(die, a2, die);
  os_unfair_lock_lock(&self->_availableImages.safeResourcesRegistry.lock);
  v6 = 0;
  v7 = MEMORY[0x1E69E9820];
  do
  {
    v9[0] = v7;
    v8 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * (v6 ^ v4 ^ 0xC6A4A7935BD1E995)) ^ ((0xC6A4A7935BD1E995 * (v6 ^ v4 ^ 0xC6A4A7935BD1E995)) >> 47));
    v9[1] = 3221225472;
    v9[2] = sub_1AF20D0BC;
    v9[3] = &unk_1E7A7C0C8;
    v9[4] = self;
    objc_msgSend__removeHazardousResourcesForKey_fromLockedRegistry_byEnumeratingFirstUsingBlock_(self, v5, v8 ^ (v8 >> 47), &self->_availableImages, v9);
    ++v6;
  }

  while (v6 != 16);
  os_unfair_lock_unlock(&self->_availableImages.safeResourcesRegistry.lock);
}

- (void)_imageProxyWillDie:(id)die
{
  v4 = objc_msgSend_object(die, a2, die);
  os_unfair_lock_lock(&self->_availableImageProxy.lock);
  objc_msgSend_removeResourceForKey_fromRegistry_(self, v5, v4, &self->_availableImageProxy);

  os_unfair_lock_unlock(&self->_availableImageProxy.lock);
}

- (void)_precomputedLightingEnvironmentWillDie:(id)die
{
  v4 = objc_msgSend_object(die, a2, die);
  os_unfair_lock_lock(&self->_availableIrradianceTextures.lock);
  objc_msgSend_removeResourceForKey_fromRegistry_(self, v5, v4, &self->_availableIrradianceTextures);
  os_unfair_lock_unlock(&self->_availableIrradianceTextures.lock);
  os_unfair_lock_lock(&self->_availableRadianceTextures.lock);
  objc_msgSend_removeResourceForKey_fromRegistry_(self, v6, v4, &self->_availableRadianceTextures);

  os_unfair_lock_unlock(&self->_availableRadianceTextures.lock);
}

- (void)_rasterizerStateDidDie:(const void *)die
{
  os_unfair_lock_lock(&self->_availableRasterizerStates.lock);
  objc_msgSend_removeResourceForKey_fromRegistry_(self, v5, die, &self->_availableRasterizerStates);

  os_unfair_lock_unlock(&self->_availableRasterizerStates.lock);
}

- (void)_removeMatchingProgram:(__CFXProgram *)program owner:(__CFXWorld *)owner
{
  if (owner)
  {
    v6 = sub_1AF16CD08(owner, a2, program);
  }

  else
  {
    v6 = 0;
  }

  context[0] = program;
  context[1] = v6;
  theArray = 0;
  os_unfair_lock_lock(&self->_availablePipelineStatesLock);
  CFDictionaryApplyFunction(self->_availablePipelineStates, sub_1AF20D338, context);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; i != v8; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        v11 = CFDictionaryGetValue(self->_availablePipelineStates, ValueAtIndex);
        CFDictionaryRemoveValue(self->_availablePipelineStates, ValueAtIndex);
      }
    }

    CFRelease(theArray);
  }

  os_unfair_lock_unlock(&self->_availablePipelineStatesLock);
}

- (void)_programWillDie:(id)die
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_object(die, a2, die);
  os_unfair_lock_lock(&self->_availableShadables.lock);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  registry = self->_availableShadables.registry;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(registry, v6, &v25, v30, 16);
  if (v7)
  {
    v10 = v7;
    v11 = 0;
    v12 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(registry);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        if (*(objc_msgSend_pipeline(v14, v8, v9) + 24) == v4)
        {
          if (!v11)
          {
            v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          objc_msgSend_addObject_(v11, v8, v14);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(registry, v8, &v25, v30, 16);
    }

    while (v10);
    if (v11)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v8, &v21, v29, 16);
      if (v15)
      {
        v17 = v15;
        v18 = *v22;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v22 != v18)
            {
              objc_enumerationMutation(v11);
            }

            objc_msgSend_removeResourceForKey_fromRegistry_(self, v16, *(*(&v21 + 1) + 8 * j), &self->_availableShadables);
          }

          v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v16, &v21, v29, 16);
        }

        while (v17);
      }
    }
  }

  os_unfair_lock_unlock(&self->_availableShadables.lock);
  objc_msgSend__removeMatchingProgram_owner_(self, v20, v4, 0);
}

- (void)_materialWillDie:(id)die
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_object(die, a2, die);
  os_unfair_lock_lock(&self->_availableShadables.lock);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  registry = self->_availableShadables.registry;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(registry, v6, &v23, v28, 16);
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v11 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(registry);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        if (*(v13 + 8) == v4)
        {
          if (!v10)
          {
            v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          objc_msgSend_addObject_(v10, v8, v13);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(registry, v8, &v23, v28, 16);
    }

    while (v9);
    if (v10)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v8, &v19, v27, 16);
      if (v14)
      {
        v16 = v14;
        v17 = *v20;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v20 != v17)
            {
              objc_enumerationMutation(v10);
            }

            objc_msgSend_removeResourceForKey_fromRegistry_(self, v15, *(*(&v19 + 1) + 8 * j), &self->_availableShadables);
          }

          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v15, &v19, v27, 16);
        }

        while (v16);
      }
    }
  }

  os_unfair_lock_unlock(&self->_availableShadables.lock);
}

- (void)_modelWillDie:(id)die
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_object(die, a2, die);
  os_unfair_lock_lock(&self->_availableShadables.lock);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  registry = self->_availableShadables.registry;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(registry, v6, &v24, v29, 16);
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v11 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(registry);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        if (*(v13 + 16) == v4)
        {
          if (!v10)
          {
            v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          objc_msgSend_addObject_(v10, v8, v13);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(registry, v8, &v24, v29, 16);
    }

    while (v9);
    if (v10)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v8, &v20, v28, 16);
      if (v14)
      {
        v16 = v14;
        v17 = *v21;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v21 != v17)
            {
              objc_enumerationMutation(v10);
            }

            objc_msgSend_removeResourceForKey_fromRegistry_(self, v15, *(*(&v20 + 1) + 8 * j), &self->_availableShadables);
          }

          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v15, &v20, v28, 16);
        }

        while (v16);
      }
    }
  }

  os_unfair_lock_unlock(&self->_availableShadables.lock);
  os_unfair_lock_lock(&self->_availableTessellators.lock);
  objc_msgSend_removeResourceForKey_fromRegistry_(self, v19, v4, &self->_availableTessellators);
  os_unfair_lock_unlock(&self->_availableTessellators.lock);
}

- (id)_bufferForMTLBuffer:(void *)buffer
{
  os_unfair_lock_lock(&self->_availableBuffers.lock);
  registry = self->_availableBuffers.registry;
  if (!registry)
  {
    if (self->_availableBuffers.registryKeyIsObject)
    {
      v7 = 0;
    }

    else
    {
      v7 = 258;
    }

    v8 = objc_alloc(MEMORY[0x1E696AD18]);
    registry = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v8, v9, v7, 0, 100);
    self->_availableBuffers.registry = registry;
  }

  v10 = objc_msgSend_objectForKey_(registry, v5, buffer);
  if (v10)
  {
    v13 = v10;
    objc_msgSend_incrementUsedCount(v10, v11, v12);
  }

  else
  {
    v13 = objc_alloc_init(VFXMTLBuffer);
    objc_msgSend_setBuffer_(v13, v14, buffer);
    objc_msgSend_setDataSource_(v13, v15, buffer);
    objc_msgSend_incrementUsedCount(v13, v16, v17);
    objc_msgSend_setObject_forKey_(self->_availableBuffers.registry, v18, v13, buffer);
  }

  os_unfair_lock_unlock(&self->_availableBuffers.lock);
  return v13;
}

- (id)_bufferForData:(__CFData *)data bytesPerIndex:(unint64_t)index
{
  os_unfair_lock_lock(&self->_availableBuffers.lock);
  registry = self->_availableBuffers.registry;
  if (!registry)
  {
    if (self->_availableBuffers.registryKeyIsObject)
    {
      v9 = 0;
    }

    else
    {
      v9 = 258;
    }

    v10 = objc_alloc(MEMORY[0x1E696AD18]);
    registry = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v10, v11, v9, 0, 100);
    self->_availableBuffers.registry = registry;
  }

  v12 = objc_msgSend_objectForKey_(registry, v7, data);
  if (v12)
  {
    v15 = v12;
    objc_msgSend_incrementUsedCount(v12, v13, v14);
  }

  else
  {
    v15 = objc_alloc_init(VFXMTLBuffer);
    BytePtr = CFDataGetBytePtr(data);
    Length = CFDataGetLength(data);
    if (BytePtr)
    {
      v19 = Length;
      if (index == 1)
      {
        v20 = 2 * Length;
        v21 = malloc_type_malloc(2 * Length, 0x1000040BDFB0063uLL);
        v22 = v21;
        if (v19)
        {
          v23 = v21;
          do
          {
            v24 = *BytePtr++;
            *v23++ = v24;
            --v19;
          }

          while (v19);
        }

        BytePtr = CFXGPUDeviceCreateBufferWithBytes(self->_gpuDevice, v21, v20, 0);
        free(v22);
      }

      else
      {
        BytePtr = CFXGPUDeviceCreateBufferWithBytes(self->_gpuDevice, BytePtr, Length, 0);
        LODWORD(v20) = v19;
      }

      engineStats = self->__engineStats;
      engineStats->iboMemory += v20;
      ++engineStats->iboCount;
      objc_msgSend_setOffset_(v15, v25, 0);
    }

    objc_msgSend_setBuffer_(v15, v18, BytePtr);

    objc_msgSend_setDataSource_(v15, v27, data);
    objc_msgSend_incrementUsedCount(v15, v28, v29);
    objc_msgSend_setObject_forKey_(self->_availableBuffers.registry, v30, v15, data);
  }

  os_unfair_lock_unlock(&self->_availableBuffers.lock);
  return v15;
}

+ (void)_fillVertexDescriptor:(id)descriptor withSemantic:(char)semantic inputSet:(int64_t)set bufferIndex:(int64_t)index vertexFormat:(unint64_t)format offset:(unint64_t)offset stride:(unint64_t)stride
{
  if (semantic > 3)
  {
    switch(semantic)
    {
      case 4:
        semanticCopy = 2;
        goto LABEL_20;
      case 5:
        semanticCopy = 4;
        goto LABEL_20;
      case 6:
        semanticCopy = 5;
        goto LABEL_20;
    }
  }

  else
  {
    if (semantic < 2)
    {
      semanticCopy = semantic;
      goto LABEL_20;
    }

    if (semantic == 2)
    {
      semanticCopy = 3;
      goto LABEL_20;
    }

    if (semantic == 3)
    {
      if (set == -1)
      {
        semanticCopy = 6;
        goto LABEL_20;
      }

      semanticCopy = set + 6;
      if ((set + 6) != 14)
      {
        goto LABEL_20;
      }
    }
  }

  v14 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDE87A0();
  }

  semanticCopy = 14;
LABEL_20:
  v15 = objc_msgSend_attributes(descriptor, a2, descriptor);
  v17 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, semanticCopy);
  objc_msgSend_setFormat_(v17, v18, format);
  v21 = objc_msgSend_attributes(descriptor, v19, v20);
  v23 = objc_msgSend_objectAtIndexedSubscript_(v21, v22, semanticCopy);
  objc_msgSend_setOffset_(v23, v24, offset);
  v27 = objc_msgSend_attributes(descriptor, v25, v26);
  v29 = objc_msgSend_objectAtIndexedSubscript_(v27, v28, semanticCopy);
  objc_msgSend_setBufferIndex_(v29, v30, index + 18);
  v33 = objc_msgSend_layouts(descriptor, v31, v32);
  v35 = objc_msgSend_objectAtIndexedSubscript_(v33, v34, index + 18);
  objc_msgSend_setStride_(v35, v36, stride);
  v39 = objc_msgSend_layouts(descriptor, v37, v38);
  v41 = objc_msgSend_objectAtIndexedSubscript_(v39, v40, index + 18);
  objc_msgSend_setStepFunction_(v41, v42, 1);
}

- (void)__updateMutableMesh:(__CFXMesh *)mesh withMetalMesh:(id)metalMesh
{
  v7 = sub_1AF1A5794(mesh, a2);
  if (v7 != sub_1AFDE323C(metalMesh))
  {
    sub_1AFDEA2A8(metalMesh, v7);
    os_unfair_lock_lock(&self->_availableMeshSources.lock);
    if (!self->_availableMeshSources.registry)
    {
      if (self->_availableMeshSources.registryKeyIsObject)
      {
        v8 = 0;
      }

      else
      {
        v8 = 258;
      }

      v9 = objc_alloc(MEMORY[0x1E696AD18]);
      self->_availableMeshSources.registry = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v9, v10, v8, 0, 100);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1AF20E0F4;
    v11[3] = &unk_1E7A7CE80;
    v11[4] = self;
    v11[5] = metalMesh;
    sub_1AF1A2BEC(mesh, 1, v11);
    os_unfair_lock_unlock(&self->_availableMeshSources.lock);
  }
}

- (id)renderResourceForDeformerStack:(__CFXDeformerStack *)stack node:(__CFXNode *)node dataKind:(unsigned __int8)kind
{
  v9 = kind == 0;
  os_unfair_lock_lock(&self->_availableDeformerStacks.lock);
  registry = self->_availableDeformerStacks.registry;
  if (!registry)
  {
    if (self->_availableDeformerStacks.registryKeyIsObject)
    {
      v12 = 0;
    }

    else
    {
      v12 = 258;
    }

    v13 = objc_alloc(MEMORY[0x1E696AD18]);
    registry = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v13, v14, v12, 0, 100);
    self->_availableDeformerStacks.registry = registry;
  }

  v15 = objc_msgSend_objectForKey_(registry, v10, v9 | stack);
  if (!v15)
  {
    v15 = sub_1AFDE2074([VFXMTLDeformerStack alloc], stack, node, kind, self);
    objc_msgSend_setObject_forKey_(self->_availableDeformerStacks.registry, v16, v15, v9 | stack);
  }

  os_unfair_lock_unlock(&self->_availableDeformerStacks.lock);
  return v15;
}

- (id)renderResourceForSkinner:(__CFXSkinner *)skinner baseMesh:(__CFXMesh *)mesh dataKind:(unsigned __int8)kind provider:(id)provider
{
  kindCopy = kind;
  os_unfair_lock_lock(&self->_availableSkinDeformerReadOnlyBuffers.lock);
  if (!self->_availableSkinDeformerReadOnlyBuffers.registry)
  {
    if (self->_availableSkinDeformerReadOnlyBuffers.registryKeyIsObject)
    {
      v11 = 0;
    }

    else
    {
      v11 = 258;
    }

    v12 = objc_alloc(MEMORY[0x1E696AD18]);
    self->_availableSkinDeformerReadOnlyBuffers.registry = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v12, v13, v11, 0, 100);
  }

  v14 = sub_1AF15B294(skinner);
  v17 = objc_msgSend_objectForKey_(self->_availableSkinDeformerReadOnlyBuffers.registry, v15, v14);
  if (!v17)
  {
    v18 = objc_alloc(MEMORY[0x1E696AD18]);
    v17 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v18, v19, 258, 0, 1);
    objc_msgSend_setObject_forKey_(self->_availableSkinDeformerReadOnlyBuffers.registry, v20, v17, v14);
  }

  v21 = (kindCopy == 0) | mesh;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3052000000;
  v32 = sub_1AF20E9F4;
  v33 = sub_1AF20EA04;
  v34 = objc_msgSend_objectForKey_(v17, v16, v21);
  if (!v30[5])
  {
    registry = self->_availableSkinDeformerReadOnlyBuffers.registry;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_1AF20EA10;
    v28[3] = &unk_1E7A7CEF8;
    v28[6] = &v29;
    v28[7] = v14;
    v28[4] = v17;
    v28[5] = v21;
    objc_msgSend_vfx_enumerateKeysAndValuesUsingBlock_(registry, v22, v28);
    v25 = v30[5];
    if (!v25)
    {
      v25 = (*(provider + 2))(provider);
      v30[5] = v25;
    }

    objc_msgSend_setObject_forKey_(v17, v24, v25, v21);
  }

  os_unfair_lock_unlock(&self->_availableSkinDeformerReadOnlyBuffers.lock);
  v26 = v30[5];
  _Block_object_dispose(&v29, 8);
  return v26;
}

- (id)renderResourceForMorpher:(__CFXMorpher *)morpher baseMesh:(__CFXMesh *)mesh dataKind:(unsigned __int8)kind provider:(id)provider
{
  kindCopy = kind;
  os_unfair_lock_lock(&self->_availableMorphDeformerReadOnlyBuffers.lock);
  if (!self->_availableMorphDeformerReadOnlyBuffers.registry)
  {
    if (self->_availableMorphDeformerReadOnlyBuffers.registryKeyIsObject)
    {
      v11 = 0;
    }

    else
    {
      v11 = 258;
    }

    v12 = objc_alloc(MEMORY[0x1E696AD18]);
    self->_availableMorphDeformerReadOnlyBuffers.registry = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v12, v13, v11, 0, 100);
  }

  v14 = sub_1AF15B294(morpher);
  v17 = objc_msgSend_objectForKey_(self->_availableMorphDeformerReadOnlyBuffers.registry, v15, v14);
  if (!v17)
  {
    v18 = objc_alloc(MEMORY[0x1E696AD18]);
    v17 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v18, v19, 258, 0, 1);
    objc_msgSend_setObject_forKey_(self->_availableMorphDeformerReadOnlyBuffers.registry, v20, v17, v14);
  }

  v21 = (kindCopy == 0) | mesh;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3052000000;
  v32 = sub_1AF20E9F4;
  v33 = sub_1AF20EA04;
  v34 = objc_msgSend_objectForKey_(v17, v16, v21);
  if (!v30[5])
  {
    registry = self->_availableMorphDeformerReadOnlyBuffers.registry;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_1AF20EC98;
    v28[3] = &unk_1E7A7CEF8;
    v28[6] = &v29;
    v28[7] = v14;
    v28[4] = v17;
    v28[5] = v21;
    objc_msgSend_vfx_enumerateKeysAndValuesUsingBlock_(registry, v22, v28);
    v25 = v30[5];
    if (!v25)
    {
      v25 = (*(provider + 2))(provider);
      v30[5] = v25;
    }

    objc_msgSend_setObject_forKey_(v17, v24, v25, v21);
  }

  os_unfair_lock_unlock(&self->_availableMorphDeformerReadOnlyBuffers.lock);
  v26 = v30[5];
  _Block_object_dispose(&v29, 8);
  return v26;
}

- (void)commandBufferDidCompleteWithError:(id)error
{
  os_unfair_lock_lock(&self->_availableDeformerStacks.lock);
  objc_msgSend_vfx_enumerateKeysAndValuesUsingBlock_(self->_availableDeformerStacks.registry, v4, &unk_1F24E8C00);

  os_unfair_lock_unlock(&self->_availableDeformerStacks.lock);
}

- (id)hazardousResourceForKey:(id)key inLockedRegistry:(id *)registry onBehalfOfRenderContext:(id)context withHazardTrackingHandler:(id)handler
{
  v11 = objc_msgSend_objectForKey_(registry->var0.var0, a2, key);
  if (v11)
  {
    return v11;
  }

  var1 = registry->var1;
  v16 = objc_msgSend_objectForKey_(var1, v12, key);
  if (!v16)
  {
    return 0;
  }

  v18 = v16;
  v11 = objc_msgSend_objectForKey_(v16, v17, context);
  if (v11)
  {
    return v11;
  }

  v21 = objc_msgSend_objectEnumerator(v18, v19, v20);
  Object = objc_msgSend_nextObject(v21, v22, v23);
  if (!Object)
  {
    v26 = sub_1AF0D5194(0, v24);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE8D1C(v26, v27, v28, v29, v30, v31, v32, v33);
    }
  }

  v13 = (*(handler + 2))(handler, Object);
  v35 = v34;
  if (!v13)
  {
    v36 = sub_1AF0D5194(0, v34);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE8D94(v36, v34, v37, v38, v39, v40, v41, v42);
    }
  }

  v43 = objc_msgSend_setObject_forKey_(v18, v34, v13, context);
  if (!v35)
  {
    v45 = sub_1AF0D5194(v43, v44);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE7664(v45, v46, v47, v48, v49, v50, v51, v52);
    }
  }

  objc_initWeak(&location, self);
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = sub_1AF210848;
  v54[3] = &unk_1E7A7CF68;
  objc_copyWeak(v55, &location);
  v55[1] = key;
  v55[2] = registry;
  v54[4] = v13;
  v54[5] = context;
  v54[6] = var1;
  v54[7] = v18;
  objc_msgSend_addCompletedHandler_(v35, v53, v54);
  objc_destroyWeak(v55);
  objc_destroyWeak(&location);
  return v13;
}

- (void)setHazardousResource:(id)resource forKey:(id)key inLockedRegistry:(id *)registry onBehalfOfRenderContext:(id)context
{
  var1 = resource.var1;
  var0 = resource.var0;
  selfCopy = self;
  if (!resource.var0 && (v12 = sub_1AF0D5194(self, a2), self = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT), self))
  {
    sub_1AFDE8E0C(v12, a2, v13, v14, v15, v16, v17, v18);
    if (var1)
    {
      goto LABEL_6;
    }
  }

  else if (var1)
  {
    goto LABEL_6;
  }

  v19 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDE7664(v19, a2, v20, v21, v22, v23, v24, v25);
  }

LABEL_6:
  v26 = registry->var1;
  if (!v26)
  {
    if (registry->var0.var2)
    {
      v27 = 0;
    }

    else
    {
      v27 = 258;
    }

    v28 = objc_alloc(MEMORY[0x1E696AD18]);
    v26 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v28, v29, v27, 0, 1);
    registry->var1 = v26;
  }

  v31 = objc_msgSend_objectForKey_(v26, a2, key);
  if (!v31)
  {
    v32 = objc_alloc(MEMORY[0x1E696AD18]);
    v31 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v32, v33, 0, 0, 1);
    objc_msgSend_setObject_forKey_(v26, v34, v31, key);
  }

  objc_msgSend_setObject_forKey_(v31, v30, var0, context);
  objc_initWeak(&location, selfCopy);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = sub_1AF210B88;
  v36[3] = &unk_1E7A7CF68;
  objc_copyWeak(v37, &location);
  v37[1] = key;
  v37[2] = registry;
  v36[4] = var0;
  v36[5] = context;
  v36[6] = v26;
  v36[7] = v31;
  objc_msgSend_addCompletedHandler_(var1, v35, v36);
  objc_destroyWeak(v37);
  objc_destroyWeak(&location);
}

- (void)_removeHazardousResourcesForKey:(id)key fromLockedRegistry:(id *)registry byEnumeratingFirstUsingBlock:(id)block
{
  v9 = objc_msgSend_objectForKey_(registry->var0.var0, a2, key);
  if (v9)
  {
    (*(block + 2))(block, v9);
    objc_msgSend_removeResourceForKey_fromRegistry_(self, v11, key, registry);
  }

  var1 = registry->var1;
  if (var1)
  {
    v13 = objc_msgSend_objectForKey_(registry->var1, v10, key);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1AF210CD8;
    v18[3] = &unk_1E7A7CF90;
    v18[4] = block;
    objc_msgSend_vfx_enumerateKeysAndValuesUsingBlock_(v13, v14, v18);
    objc_msgSend_removeObjectForKey_(var1, v15, key);
    if (!objc_msgSend_count(var1, v16, v17))
    {

      registry->var1 = 0;
    }
  }
}

- (id)renderResourceForProgramDesc:(id *)desc renderPassDesc:(id *)passDesc
{
  v123[1] = *MEMORY[0x1E69E9840];
  var1 = desc->var1;
  var4 = desc->var4;
  var5 = desc->var5;
  var0 = desc->var15.var0;
  v81 = desc->var15.var1;
  memset(v122, 0, sizeof(v122));
  v121 = 0u;
  v120[0] = desc->var11;
  if (!v120[0])
  {
    v11 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE8E84(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  v19 = sub_1AF130338(var1);
  v21 = *&passDesc->var0[2];
  *(v122 + 8) = *passDesc->var0;
  v22 = *&passDesc->var0[4];
  *(&v122[1] + 8) = v21;
  *(&v122[2] + 8) = v22;
  v23 = *&passDesc->var1;
  *(&v122[3] + 8) = *&passDesc->var0[6];
  v120[1] = v19;
  *(&v121 + 1) = var4;
  LOBYTE(v122[0]) = var0;
  *(&v122[4] + 8) = v23;
  BYTE8(v122[5]) = desc->var7;
  var9 = desc->var9;
  if (var9 <= 1)
  {
    LOBYTE(var9) = 1;
  }

  BYTE10(v122[5]) = var9;
  var3 = passDesc->var3;
  if (var3 <= 1)
  {
    LOBYTE(var3) = 1;
  }

  BYTE9(v122[5]) = var3;
  v26 = var5;
  if (!passDesc->var0[0])
  {
    v26 = sub_1AF15BC40(var5, v20);
  }

  v27 = 0;
  *&v121 = v26;
  BYTE11(v122[5]) = desc->var6;
  v28 = 0x5253C9ADE8F4CA80;
  do
  {
    v29 = v120[v27++];
    v28 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v29) ^ ((0xC6A4A7935BD1E995 * v29) >> 47))) ^ v28);
  }

  while (v27 != 16);
  v30 = ((0xC6A4A7935BD1E995 * (v28 ^ (v28 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v28 ^ (v28 >> 47))) >> 47));
  os_unfair_lock_lock(&self->_availablePipelineStatesLock);
  Value = CFDictionaryGetValue(self->_availablePipelineStates, v30);
  if (Value)
  {
    v32 = Value;
LABEL_28:
    os_unfair_lock_unlock(&self->_availablePipelineStatesLock);
    return v32;
  }

  v33 = sub_1AF1D5940(var1, 0);
  if (v33)
  {
    v35 = v33;
    v80 = sub_1AF1D5940(var1, 1);
    v79 = sub_1AF1D5C2C(var1, v36);
    v118 = 0;
    v119 = 0;
    v40 = sub_1AF1D5D58(var1, v37);
    if (v40)
    {
      v41 = objc_msgSend_frameworkLibrary(self->_libraryManager, v38, v39);
      v42 = *&desc->var14;
      v86 = *&desc->var11;
      v87 = v42;
      v88 = *&desc->var15.var1;
      v43 = *&desc->var2;
      v82 = *&desc->var0;
      v83 = v43;
      v44 = *&desc->var6;
      v84 = *&desc->var4;
      v85 = v44;
      sub_1AF211210(&v118, off_1E7A7CFB0, 2uLL, &v82, v41);
    }

    if ((v40 & 2) != 0)
    {
      v123[0] = @"vfx::api_v2::crws_position";
      v47 = objc_msgSend_frameworkLibrary(self->_libraryManager, v38, v39);
      v48 = *&desc->var14;
      v86 = *&desc->var11;
      v87 = v48;
      v88 = *&desc->var15.var1;
      v49 = *&desc->var2;
      v82 = *&desc->var0;
      v83 = v49;
      v50 = *&desc->var6;
      v84 = *&desc->var4;
      v85 = v50;
      sub_1AF211210(&v119, v123, 1uLL, &v82, v47);
      v53 = objc_msgSend_frameworkLibrary(self->_libraryManager, v51, v52);
      v54 = *&desc->var14;
      v86 = *&desc->var11;
      v87 = v54;
      v88 = *&desc->var15.var1;
      v55 = *&desc->var2;
      v82 = *&desc->var0;
      v83 = v55;
      v56 = *&desc->var6;
      v84 = *&desc->var4;
      v85 = v56;
      sub_1AF211210(&v118, off_1E7A7CFC0, 2uLL, &v82, v53);
      v45 = v119;
    }

    else
    {
      v45 = 0;
    }

    v57 = *&desc->var14;
    v58 = *&desc->var15.var1;
    v86 = *&desc->var11;
    v87 = v57;
    v88 = v58;
    v59 = *&desc->var2;
    v82 = *&desc->var0;
    v83 = v59;
    v60 = *&desc->var6;
    v84 = *&desc->var4;
    v85 = v60;
    v61 = *passDesc->var0;
    v91 = *&passDesc->var0[2];
    v90 = v61;
    v62 = *&passDesc->var0[6];
    v94 = *&passDesc->var1;
    v63 = *&passDesc->var0[4];
    v93 = v62;
    memset(v106, 0, sizeof(v106));
    var6 = desc->var6;
    var7 = desc->var7;
    var10 = desc->var10;
    var13 = desc->var13;
    v68 = *&passDesc->var3;
    v92 = v63;
    v89 = 0;
    v95 = v68;
    v96 = var5;
    v97 = var6;
    v98 = var6;
    v99 = var6;
    v100 = var6;
    v101 = var6;
    v102 = var6;
    v103 = var6;
    v104 = var6;
    v105 = var7;
    v107 = v79;
    v108 = var10;
    v109 = v35;
    v110 = v80;
    v111 = v45;
    v112 = v118;
    v113 = v81;
    v114 = var13;
    v115 = 256;
    v116 = 1;
    v117 = 0;
    v32 = objc_msgSend_newRenderPipelineStateWithDesc_(self, v38, &v82);
    if (!v32)
    {
      v70 = sub_1AF0D5194(0, v69);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE8EFC(v70, v71, v72, v73, v74, v75, v76, v77);
      }
    }

    CFDictionarySetValue(self->_availablePipelineStates, v30, v32);

    goto LABEL_28;
  }

  if ((byte_1EB6586AB & 1) == 0)
  {
    byte_1EB6586AB = 1;
    v46 = sub_1AF0D5194(0, v34);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE8F74();
    }
  }

  os_unfair_lock_unlock(&self->_availablePipelineStatesLock);
  return 0;
}

- (__CFXProgram)defaultProgramUsingTessellation:(BOOL)tessellation
{
  v3 = &OBJC_IVAR___VFXMTLResourceManager__defaultProgram;
  if (tessellation)
  {
    v3 = &OBJC_IVAR___VFXMTLResourceManager__defaultProgramForTessellation;
  }

  return *(&self->super.isa + *v3);
}

- (void)__createPipelineStateWithDescriptor:(id)descriptor desc:(id *)desc pipeline:(id)pipeline
{
  memcpy(__dst, desc, sizeof(__dst));
  sub_1AF2196E8(__dst);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v30 = sub_1AF211868;
  v31 = &unk_1E7A7CFD8;
  pipelineCopy = pipeline;
  v9 = memcpy(v34, desc, sizeof(v34));
  descriptorCopy = descriptor;
  ++self->__engineStats->renderPipelineCount;
  if (desc->var13 - 1 >= 2)
  {
    if (desc->var13)
    {
      v22 = sub_1AF0D5194(v9, v10);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE902C();
      }
    }

    else
    {
      __dst[0] = 0;
      if (desc->var15)
      {
        v25 = 0;
        v18 = sub_1AFDE78C8(self);
        v20 = objc_msgSend_newRenderPipelineStateWithDescriptor_options_reflection_error_(v18, v19, descriptor, 3, &v25, __dst);
        v30(v29, v20, __dst[0]);
        if (v20)
        {
          objc_msgSend_generateBindingsForPipeline_withReflection_program_materialIdentifier_overrides_(self->_bindingsGenerator, v21, pipeline, v25, desc->var0.var1, desc->var0.var2, desc->var0.var4);
        }
      }

      else
      {
        v23 = sub_1AFDE78C8(self);
        v20 = objc_msgSend_newRenderPipelineStateWithDescriptor_error_(v23, v24, descriptor, __dst);
        v30(v29, v20, __dst[0]);
      }
    }
  }

  else
  {
    v12 = objc_msgSend_shaderCompilationGroup(self->_libraryManager, v10, v11);
    dispatch_group_enter(v12);
    var15 = desc->var15;
    v14 = sub_1AFDE78C8(self);
    v16 = v14;
    if (var15)
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_1AF2119A8;
      v27[3] = &unk_1E7A7D028;
      memcpy(v28, desc, sizeof(v28));
      v27[4] = self;
      v27[5] = pipeline;
      v27[6] = v12;
      v27[7] = v29;
      objc_msgSend_newRenderPipelineStateWithDescriptor_options_completionHandler_(v16, v17, descriptor, 3, v27);
    }

    else
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = sub_1AF211B38;
      v26[3] = &unk_1E7A7D050;
      v26[4] = v12;
      v26[5] = v29;
      objc_msgSend_newRenderPipelineStateWithDescriptor_completionHandler_(v14, v15, descriptor, v26);
    }
  }
}

- (void)_createPipelineStateWithDescriptor:(id)descriptor desc:(id *)desc pipeline:(id)pipeline
{
  memcpy(v27, desc, sizeof(v27));
  objc_msgSend___createPipelineStateWithDescriptor_desc_pipeline_(self, v9, descriptor, v27, pipeline);
  v12 = objc_msgSend_remoteResourceProvider(self, v10, v11);
  if (v12)
  {
    v13 = v12;
    v14 = [CFXRemoteRenderPipelineDescriptor alloc];
    memcpy(v27, desc, sizeof(v27));
    v16 = objc_msgSend_initWithDescriptor_(v14, v15, v27);
    v19 = objc_msgSend_state(pipeline, v17, v18);
    objc_msgSend_registerRenderPipelineDescriptor_state_(v13, v20, v16, v19);
  }

  if (sub_1AFDE7A50(self))
  {
    if (objc_msgSend_state(pipeline, v21, v22))
    {
      v25 = objc_msgSend_shaderArchive(self, v23, v24);
      objc_msgSend_addRenderPipelineWithDescriptor_(v25, v26, descriptor);
    }
  }
}

- (id)newRenderPipelineStateWithDesc:(id *)desc
{
  v5 = sub_1AF333168(self, a2);
  v8 = v5;
  if (v5)
  {
    v9 = !sub_1AFDE7A50(self);
    if (desc->var0.var1)
    {
LABEL_8:
      v14 = objc_alloc_init(VFXMTLRenderPipeline);
      memcpy(__dst, desc, sizeof(__dst));
      sub_1AF2196E8(__dst);
      libraryManager = self->_libraryManager;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_1AF211E58;
      v22[3] = &unk_1E7A7D078;
      memcpy(v23, desc, 0x160uLL);
      v23[352] = v8;
      v22[4] = self;
      v22[5] = v14;
      v23[353] = v9;
      v17 = *&desc->var0.var14;
      __dst[4] = *&desc->var0.var11;
      __dst[5] = v17;
      __dst[6] = *&desc->var0.var15.var1;
      v18 = *&desc->var0.var2;
      __dst[0] = *&desc->var0.var0;
      __dst[1] = v18;
      v19 = *&desc->var0.var6;
      __dst[2] = *&desc->var0.var4;
      __dst[3] = v19;
      objc_msgSend_libraryForProgramDesc_resourceManager_completionHandler_(libraryManager, v20, __dst, self, v22);
      return v14;
    }
  }

  else
  {
    v9 = 0;
  }

  if (!desc->var1)
  {
    goto LABEL_8;
  }

  objc_msgSend_hotReloadableLibrary(self->_libraryManager, v6, v7);
  v10 = sub_1AFDE79F4(self);
  memcpy(__dst, desc, sizeof(__dst));
  v12 = sub_1AF211324(__dst, v11, v10);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = objc_alloc_init(VFXMTLRenderPipeline);
  memcpy(__dst, desc, sizeof(__dst));
  objc_msgSend__createPipelineStateWithDescriptor_desc_pipeline_(self, v15, v13, __dst, v14);
  ++self->__engineStats->prgCount;
  return v14;
}

- (id)_newComputeDescriptorForPipelineDesc:(id *)desc library:(id)library
{
  v5 = objc_msgSend_newFunctionWithName_constants_library_(self, a2, desc->var0, desc->var1, library);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = objc_alloc_init(MEMORY[0x1E6974030]);
  objc_msgSend_setComputeFunction_(v7, v8, v6);

  var3 = desc->var3;
  if (var3)
  {
    var3[2](var3, v6, desc->var2);
  }

  if (desc->var7)
  {
    v11 = objc_alloc_init(MEMORY[0x1E6974100]);
    objc_msgSend_setFunctions_(v11, v12, desc->var7);
    objc_msgSend_setLinkedFunctions_(v7, v13, v11);
  }

  objc_msgSend_setThreadGroupSizeIsMultipleOfThreadExecutionWidth_(v7, v9, desc->var4);
  objc_msgSend_setStageInputDescriptor_(v7, v14, desc->var2);
  return v7;
}

- (void)_configureComputePipeline:(id)pipeline withDescriptor:(id)descriptor
{
  v16 = 0;
  ++self->__engineStats->computePipelineCount;
  v7 = CACurrentMediaTime();
  prof_beginFlame("configure compute pipeline", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/NewRenderer/VFXMTLResourceManager+Compilation.m", 653);
  v8 = sub_1AFDE78C8(self);
  v10 = objc_msgSend_newComputePipelineStateWithDescriptor_options_reflection_error_(v8, v9, descriptor, 0, 0, &v16);
  self->__engineStats->computePipelineCompilationTime = CACurrentMediaTime() - v7 + self->__engineStats->computePipelineCompilationTime;
  prof_endFlame();
  if (v10)
  {
    v14 = objc_msgSend_computeFunction(descriptor, v12, v13);
    sub_1AFDEA010(pipeline, v14);
    sub_1AFDE9FF0(pipeline, v10);
  }

  else
  {
    v15 = sub_1AF0D5194(v11, v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE912C();
    }
  }
}

- (id)newComputePipelineStateForDesc:(id *)desc library:(id)library
{
  v5 = *&desc->var2;
  v11[0] = *&desc->var0;
  v11[1] = v5;
  v11[2] = *&desc->var4;
  v6 = objc_msgSend__newComputeDescriptorForPipelineDesc_library_(self, a2, v11, library);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = objc_alloc_init(VFXMTLComputePipeline);
  objc_msgSend__configureComputePipeline_withDescriptor_(self, v9, v8, v7);

  return v8;
}

- (id)_computePipelineStateForKernel:(id)kernel constants:(id)constants constantsHash:(id)hash threadGroupSizeIsMultipleOfThreadExecutionWidth:(BOOL)width
{
  p_availableComputePipelines = &self->_availableComputePipelines;
  os_unfair_lock_lock(&self->_availableComputePipelines.lock);
  if (p_availableComputePipelines->registry)
  {
    if (!constants)
    {
LABEL_8:
      kernelCopy3 = kernel;
      if (hash)
      {
        kernelCopy3 = objc_msgSend_stringByAppendingString_(kernel, v13, hash);
      }

      goto LABEL_10;
    }
  }

  else
  {
    v12 = sub_1AF20C220(p_availableComputePipelines);
    if (!constants)
    {
      goto LABEL_8;
    }
  }

  if (hash)
  {
    goto LABEL_8;
  }

  v14 = sub_1AF0D5194(v12, v13);
  kernelCopy3 = kernel;
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
LABEL_10:
    v23 = objc_msgSend_objectForKey_(p_availableComputePipelines->registry, v13, kernelCopy3);
    goto LABEL_11;
  }

  sub_1AFDE91A4(v14, v13, v15, v16, v17, v18, v19, v20);
  kernelCopy3 = kernel;
  v23 = objc_msgSend_objectForKey_(p_availableComputePipelines->registry, v22, kernel);
LABEL_11:
  v26 = v23;
  if (!v23)
  {
    v27 = objc_msgSend_frameworkLibrary(self->_libraryManager, v24, v25);
    v31[0] = kernel;
    v31[1] = constants;
    v31[2] = 0;
    v31[3] = 0;
    widthCopy = width;
    memset(v33, 0, sizeof(v33));
    v26 = objc_msgSend_newComputePipelineStateForDesc_library_(self, v28, v31, v27);
    if (v26)
    {
      objc_msgSend_setObject_forKey_(p_availableComputePipelines->registry, v29, v26, kernelCopy3);
    }
  }

  os_unfair_lock_unlock(&p_availableComputePipelines->lock);
  return v26;
}

- (id)computePipelineStateForKernel:(id)kernel withStageDescriptor:(id)descriptor stageDescriptorUpdateBlock:(id)block constants:(id)constants constantsHash:(id)hash
{
  p_availableComputePipelinesWithStageDescriptor = &self->_availableComputePipelinesWithStageDescriptor;
  os_unfair_lock_lock(&self->_availableComputePipelinesWithStageDescriptor.lock);
  if (p_availableComputePipelinesWithStageDescriptor->registry)
  {
    if (!constants)
    {
LABEL_8:
      kernelCopy3 = kernel;
      if (hash)
      {
        kernelCopy3 = objc_msgSend_stringByAppendingString_(kernel, v15, hash);
      }

      goto LABEL_10;
    }
  }

  else
  {
    v14 = sub_1AF20C220(p_availableComputePipelinesWithStageDescriptor);
    if (!constants)
    {
      goto LABEL_8;
    }
  }

  if (hash)
  {
    goto LABEL_8;
  }

  v16 = sub_1AF0D5194(v14, v15);
  kernelCopy3 = kernel;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDE91A4(v16, v15, v17, v18, v19, v20, v21, v22);
    kernelCopy3 = kernel;
    v25 = objc_msgSend_objectForKey_(p_availableComputePipelinesWithStageDescriptor->registry, v24, kernel);
    goto LABEL_11;
  }

LABEL_10:
  v25 = objc_msgSend_objectForKey_(p_availableComputePipelinesWithStageDescriptor->registry, v15, kernelCopy3);
LABEL_11:
  v28 = v25;
  if (v25)
  {
    if (descriptor)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v28 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x1E695DF90], v26, 10);
    v25 = objc_msgSend_setObject_forKey_(p_availableComputePipelinesWithStageDescriptor->registry, v29, v28, kernelCopy3);
    if (descriptor)
    {
      goto LABEL_16;
    }
  }

  v30 = sub_1AF0D5194(v25, v26);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDE921C(v30, v26, v27, v31, v32, v33, v34, v35);
    if (!block)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_16:
  if (!block)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (!objc_msgSend_count(v28, v26, v27))
  {
    v52 = objc_msgSend_frameworkLibrary(self->_libraryManager, v36, v37);
    kernelCopy5 = kernel;
    constantsCopy2 = constants;
    descriptorCopy2 = descriptor;
    blockCopy = block;
    v62 = 0;
    v63 = 0;
    v48 = objc_msgSend_newComputePipelineStateForDesc_library_(self, v53, &kernelCopy5, v52);
    if (!v48)
    {
      goto LABEL_26;
    }

    UniqueStageDescriptor = objc_msgSend_getUniqueStageDescriptor_(self, v54, descriptor);
    objc_msgSend_setObject_forKey_(v28, v56, v48, UniqueStageDescriptor);
    goto LABEL_25;
  }

  v38 = objc_msgSend_allValues(v28, v36, v37);
  Object = objc_msgSend_firstObject(v38, v39, v40);
  v42 = sub_1AFDEA004(Object);
  (*(block + 2))(block, v42, descriptor);
LABEL_19:
  v43 = objc_msgSend_getUniqueStageDescriptor_(self, v26, descriptor);
  v45 = objc_msgSend_objectForKey_(v28, v44, v43);
  if (!v45)
  {
    v49 = objc_msgSend_frameworkLibrary(self->_libraryManager, v46, v47);
    kernelCopy5 = kernel;
    constantsCopy2 = constants;
    descriptorCopy2 = descriptor;
    blockCopy = 0;
    v62 = 0;
    v63 = 0;
    v48 = objc_msgSend_newComputePipelineStateForDesc_library_(self, v50, &kernelCopy5, v49);
    if (!v48)
    {
      goto LABEL_26;
    }

    objc_msgSend_setObject_forKey_(v28, v51, v48, v43);
LABEL_25:

    goto LABEL_26;
  }

  v48 = v45;
LABEL_26:
  os_unfair_lock_unlock(&p_availableComputePipelinesWithStageDescriptor->lock);
  return v48;
}

- (id)getUniqueStageDescriptor:(id)descriptor
{
  v107 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_availableStageDescriptorsLock);
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  availableStageDescriptors = self->_availableStageDescriptors;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(availableStageDescriptors, v6, &v102, v106, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v103;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v103 != v11)
        {
          objc_enumerationMutation(availableStageDescriptors);
        }

        v13 = 0;
        v14 = *(*(&v102 + 1) + 8 * i);
        while (1)
        {
          v15 = objc_msgSend_attributes(v14, v8, v9);
          v17 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, v13);
          v20 = objc_msgSend_format(v17, v18, v19);
          v23 = objc_msgSend_attributes(descriptor, v21, v22);
          v25 = objc_msgSend_objectAtIndexedSubscript_(v23, v24, v13);
          if (v20 != objc_msgSend_format(v25, v26, v27))
          {
            break;
          }

          v28 = objc_msgSend_attributes(v14, v8, v9);
          v30 = objc_msgSend_objectAtIndexedSubscript_(v28, v29, v13);
          v33 = objc_msgSend_offset(v30, v31, v32);
          v36 = objc_msgSend_attributes(descriptor, v34, v35);
          v38 = objc_msgSend_objectAtIndexedSubscript_(v36, v37, v13);
          if (v33 != objc_msgSend_offset(v38, v39, v40))
          {
            break;
          }

          v41 = objc_msgSend_attributes(v14, v8, v9);
          v43 = objc_msgSend_objectAtIndexedSubscript_(v41, v42, v13);
          v46 = objc_msgSend_bufferIndex(v43, v44, v45);
          v49 = objc_msgSend_attributes(descriptor, v47, v48);
          v51 = objc_msgSend_objectAtIndexedSubscript_(v49, v50, v13);
          if (v46 != objc_msgSend_bufferIndex(v51, v52, v53))
          {
            break;
          }

          if (++v13 == 31)
          {
            v54 = 0;
            while (1)
            {
              v55 = objc_msgSend_layouts(v14, v8, v9);
              v57 = objc_msgSend_objectAtIndexedSubscript_(v55, v56, v54);
              v60 = objc_msgSend_stride(v57, v58, v59);
              v63 = objc_msgSend_layouts(descriptor, v61, v62);
              v65 = objc_msgSend_objectAtIndexedSubscript_(v63, v64, v54);
              if (v60 != objc_msgSend_stride(v65, v66, v67))
              {
                goto LABEL_18;
              }

              v68 = objc_msgSend_layouts(v14, v8, v9);
              v70 = objc_msgSend_objectAtIndexedSubscript_(v68, v69, v54);
              v73 = objc_msgSend_stepFunction(v70, v71, v72);
              v76 = objc_msgSend_layouts(descriptor, v74, v75);
              v78 = objc_msgSend_objectAtIndexedSubscript_(v76, v77, v54);
              if (v73 != objc_msgSend_stepFunction(v78, v79, v80))
              {
                goto LABEL_18;
              }

              v81 = objc_msgSend_layouts(v14, v8, v9);
              v83 = objc_msgSend_objectAtIndexedSubscript_(v81, v82, v54);
              v86 = objc_msgSend_stepRate(v83, v84, v85);
              v89 = objc_msgSend_layouts(descriptor, v87, v88);
              v91 = objc_msgSend_objectAtIndexedSubscript_(v89, v90, v54);
              if (v86 != objc_msgSend_stepRate(v91, v92, v93))
              {
                goto LABEL_18;
              }

              if (++v54 == 31)
              {
                v94 = objc_msgSend_indexType(v14, v8, v9);
                if (v94 != objc_msgSend_indexType(descriptor, v95, v96))
                {
                  goto LABEL_18;
                }

                v97 = objc_msgSend_indexBufferIndex(v14, v8, v9);
                if (v97 != objc_msgSend_indexBufferIndex(descriptor, v98, v99))
                {
                  goto LABEL_18;
                }

                if (v14)
                {
                  goto LABEL_23;
                }

                goto LABEL_22;
              }
            }
          }
        }

LABEL_18:
        ;
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(availableStageDescriptors, v8, &v102, v106, 16);
    }

    while (v10);
  }

LABEL_22:
  v14 = objc_msgSend_copy(descriptor, v8, v9);
  objc_msgSend_addObject_(self->_availableStageDescriptors, v100, v14);

LABEL_23:
  os_unfair_lock_unlock(&self->_availableStageDescriptorsLock);
  return v14;
}

- (id)newFunctionWithName:(id)name constants:(id)constants library:(id)library
{
  libraryCopy = library;
  if (!library)
  {
    libraryCopy = objc_msgSend_frameworkLibrary(self->_libraryManager, a2, name);
  }

  v9 = objc_msgSend_functionDescriptor(MEMORY[0x1E6974070], a2, name);
  objc_msgSend_setName_(v9, v10, name);
  objc_msgSend_setConstantValues_(v9, v11, constants);
  v20 = 0;
  v15 = objc_msgSend_newFunctionWithDescriptor_error_(libraryCopy, v12, v9, &v20);
  if (!v15)
  {
    v16 = objc_msgSend_hotReloadableLibrary(self->_libraryManager, v13, v14);
    if (libraryCopy != v16)
    {
      v18 = sub_1AF0D5194(v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE9294();
      }
    }
  }

  return v15;
}

- (id)newComputePipelineStateWithFunctionName:(id)name
{
  v6 = objc_msgSend_frameworkLibrary(self->_libraryManager, a2, name);

  return objc_msgSend_newComputePipelineStateWithFunctionName_library_constantValues_linkedFunctions_(self, v5, name, v6, 0, 0);
}

- (id)newComputePipelineStateWithFunctionName:(id)name constantValues:(id)values
{
  v8 = objc_msgSend_frameworkLibrary(self->_libraryManager, a2, name);

  return objc_msgSend_newComputePipelineStateWithFunctionName_library_constantValues_linkedFunctions_(self, v7, name, v8, values, 0);
}

- (id)newComputePipelineStateWithFunctionName:(id)name constantValues:(id)values linkedFunctions:(id)functions
{
  v10 = objc_msgSend_frameworkLibrary(self->_libraryManager, a2, name);

  return objc_msgSend_newComputePipelineStateWithFunctionName_library_constantValues_linkedFunctions_(self, v9, name, v10, values, functions);
}

- (id)newComputePipelineStateWithFunctionName:(id)name library:(id)library constantValues:(id)values linkedFunctions:(id)functions
{
  v7[0] = name;
  v7[1] = values;
  memset(&v7[2], 0, 24);
  v7[5] = functions;
  return objc_msgSend_newComputePipelineStateForDesc_library_(self, a2, v7, library);
}

- (id)colorMatchingComputePipelineStateForBiPlanarPixelBufferWithFormatType:(unsigned int)type pixelBufferYCbCrMatrix:(id)matrix pixelBufferColorPrimaries:(id)primaries pixelBufferTransferFunction:(id)function sourceColorSpace:(CGColorSpace *)space destinationColorSpace:(CGColorSpace *)colorSpace renderContext:(id)context
{
  p_availableColorMatchingComputePipelines = &self->_availableColorMatchingComputePipelines;
  os_unfair_lock_lock(&self->_availableColorMatchingComputePipelines.lock);
  registry = p_availableColorMatchingComputePipelines->registry;
  if (!p_availableColorMatchingComputePipelines->registry)
  {
    sub_1AF20C220(p_availableColorMatchingComputePipelines);
    registry = p_availableColorMatchingComputePipelines->registry;
  }

  v20 = objc_msgSend_objectForKey_(registry, v17, colorSpace);
  if (!v20)
  {
    v21 = objc_alloc(MEMORY[0x1E696AD18]);
    v20 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v21, v22, 0, 0, 1);
    objc_msgSend_setObject_forKey_(p_availableColorMatchingComputePipelines->registry, v23, v20, colorSpace);
  }

  v25 = objc_msgSend_objectForKey_(v20, v19, space);
  if (!v25)
  {
    v26 = objc_alloc(MEMORY[0x1E696AD18]);
    v25 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v26, v27, 0, 0, 1);
    objc_msgSend_setObject_forKey_(v20, v28, v25, space);
  }

  v29 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v24, type != -1);
  v32 = objc_msgSend_objectForKey_(v25, v30, v29);
  if (!v32)
  {
    if (type == -1)
    {
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      sub_1AF164CB4(space, colorSpace, &v103);
      v34 = objc_alloc_init(MEMORY[0x1E6974060]);
      objc_msgSend_setConstantValue_type_withName_(v34, v35, &v103, 53, @"needsInputTRC");
      objc_msgSend_setConstantValue_type_withName_(v34, v36, &v103 + 1, 53, @"needsColorMatrix");
      objc_msgSend_setConstantValue_type_withName_(v34, v37, &v103 + 2, 53, @"needsOutputTRC");
      objc_msgSend_setConstantValue_type_withName_(v34, v38, &v103 + 4, 29, @"inputTRC_type");
      objc_msgSend_setConstantValue_type_withName_(v34, v39, &v103 + 8, 3, @"inputTRC_gamma");
      objc_msgSend_setConstantValue_type_withName_(v34, v40, &v103 | 0xC, 3, @"inputTRC_a");
      objc_msgSend_setConstantValue_type_withName_(v34, v41, &v104, 3, @"inputTRC_b");
      objc_msgSend_setConstantValue_type_withName_(v34, v42, &v104 + 4, 3, @"inputTRC_c");
      objc_msgSend_setConstantValue_type_withName_(v34, v43, &v104 + 8, 3, @"inputTRC_d");
      objc_msgSend_setConstantValue_type_withName_(v34, v44, &v104 + 12, 3, @"inputTRC_e");
      objc_msgSend_setConstantValue_type_withName_(v34, v45, &v105, 3, @"inputTRC_f");
      objc_msgSend_setConstantValue_type_withName_(v34, v46, &v106, 5, @"colorMatrixColumn0");
      objc_msgSend_setConstantValue_type_withName_(v34, v47, &v107, 5, @"colorMatrixColumn1");
      objc_msgSend_setConstantValue_type_withName_(v34, v48, &v108, 5, @"colorMatrixColumn2");
      objc_msgSend_setConstantValue_type_withName_(v34, v49, &v109, 29, @"outputTRC_type");
      objc_msgSend_setConstantValue_type_withName_(v34, v50, &v109 + 4, 3, @"outputTRC_gamma");
      objc_msgSend_setConstantValue_type_withName_(v34, v51, &v109 + 8, 3, @"outputTRC_a");
      objc_msgSend_setConstantValue_type_withName_(v34, v52, &v109 + 12, 3, @"outputTRC_b");
      objc_msgSend_setConstantValue_type_withName_(v34, v53, &v110, 3, @"outputTRC_c");
      objc_msgSend_setConstantValue_type_withName_(v34, v54, &v110 + 4, 3, @"outputTRC_d");
      objc_msgSend_setConstantValue_type_withName_(v34, v55, &v110 + 8, 3, @"outputTRC_e");
      objc_msgSend_setConstantValue_type_withName_(v34, v56, &v110 + 12, 3, @"outputTRC_f");
      v58 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(self, v57, @"color_matching_kernel", v34);
LABEL_48:
      v32 = v58;

      v97 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v96, type != -1);
      objc_msgSend_setObject_forKey_(v25, v98, v32, v97);

      goto LABEL_49;
    }

    if (type <= 875704949)
    {
      switch(type)
      {
        case 0x34323066u:
          v59 = 1;
          v33 = 1;
          goto LABEL_28;
        case 0x34323076u:
          v33 = 0;
          v59 = 1;
          goto LABEL_28;
        case 0x34323266u:
          v33 = 1;
LABEL_21:
          v59 = 2;
          goto LABEL_28;
      }

      goto LABEL_22;
    }

    switch(type)
    {
      case 0x34323276u:
        v33 = 0;
        goto LABEL_21;
      case 0x34343466u:
        v33 = 1;
        break;
      case 0x34343476u:
        v33 = 0;
        break;
      default:
LABEL_22:
        LOBYTE(v103) = HIBYTE(type);
        BYTE1(v103) = BYTE2(type);
        BYTE2(v103) = BYTE1(type);
        *(&v103 + 3) = type;
        v60 = sub_1AF0D5194(0, v31);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDE930C();
        }

        v59 = 0;
        v33 = 0;
LABEL_28:
        if (objc_msgSend_isEqualToString_(matrix, v31, *MEMORY[0x1E6965FD0]))
        {
          v62 = v33 == 0;
          v63 = 3;
        }

        else if (objc_msgSend_isEqualToString_(matrix, v61, *MEMORY[0x1E6965FC8]))
        {
          v62 = v33 == 0;
          v63 = 1;
        }

        else
        {
          isEqualToString = objc_msgSend_isEqualToString_(matrix, v61, *MEMORY[0x1E6965FB0]);
          if (!isEqualToString)
          {
            v100 = sub_1AF0D5194(isEqualToString, v61);
            if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDE937C();
            }

            v65 = 0;
LABEL_37:
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            v105 = 0u;
            v106 = 0u;
            v103 = 0u;
            v104 = 0u;
            if (objc_msgSend_isEqualToString_(primaries, v61, *MEMORY[0x1E6965DB8]) && (objc_msgSend_isEqualToString_(function, v66, *MEMORY[0x1E6965F50]) & 1) != 0)
            {
              v67 = MEMORY[0x1E695F180];
            }

            else
            {
              v68 = objc_msgSend_isEqualToString_(primaries, v66, *MEMORY[0x1E6965DD0]);
              if (!v68)
              {
                goto LABEL_45;
              }

              v68 = objc_msgSend_isEqualToString_(function, v66, *MEMORY[0x1E6965F50]);
              if (!v68)
              {
                goto LABEL_45;
              }

              v67 = MEMORY[0x1E695F0B0];
            }

            v68 = *v67;
            if (*v67)
            {
              v69 = CGColorSpaceCreateWithName(v68);
              sub_1AF164CB4(v69, colorSpace, &v103);
              CFRelease(v69);
LABEL_47:
              v34 = objc_alloc_init(MEMORY[0x1E6974060]);
              objc_msgSend_setConstantValue_type_withName_(v34, v71, &v103, 53, @"needsInputTRC");
              objc_msgSend_setConstantValue_type_withName_(v34, v72, &v103 + 1, 53, @"needsColorMatrix");
              objc_msgSend_setConstantValue_type_withName_(v34, v73, &v103 + 2, 53, @"needsOutputTRC");
              objc_msgSend_setConstantValue_type_withName_(v34, v74, &v103 + 4, 29, @"inputTRC_type");
              objc_msgSend_setConstantValue_type_withName_(v34, v75, &v103 + 8, 3, @"inputTRC_gamma");
              objc_msgSend_setConstantValue_type_withName_(v34, v76, &v103 | 0xC, 3, @"inputTRC_a");
              objc_msgSend_setConstantValue_type_withName_(v34, v77, &v104, 3, @"inputTRC_b");
              objc_msgSend_setConstantValue_type_withName_(v34, v78, &v104 + 4, 3, @"inputTRC_c");
              objc_msgSend_setConstantValue_type_withName_(v34, v79, &v104 + 8, 3, @"inputTRC_d");
              objc_msgSend_setConstantValue_type_withName_(v34, v80, &v104 + 12, 3, @"inputTRC_e");
              objc_msgSend_setConstantValue_type_withName_(v34, v81, &v105, 3, @"inputTRC_f");
              objc_msgSend_setConstantValue_type_withName_(v34, v82, &v106, 5, @"colorMatrixColumn0");
              objc_msgSend_setConstantValue_type_withName_(v34, v83, &v107, 5, @"colorMatrixColumn1");
              objc_msgSend_setConstantValue_type_withName_(v34, v84, &v108, 5, @"colorMatrixColumn2");
              objc_msgSend_setConstantValue_type_withName_(v34, v85, &v109, 29, @"outputTRC_type");
              objc_msgSend_setConstantValue_type_withName_(v34, v86, &v109 + 4, 3, @"outputTRC_gamma");
              objc_msgSend_setConstantValue_type_withName_(v34, v87, &v109 + 8, 3, @"outputTRC_a");
              objc_msgSend_setConstantValue_type_withName_(v34, v88, &v109 + 12, 3, @"outputTRC_b");
              objc_msgSend_setConstantValue_type_withName_(v34, v89, &v110, 3, @"outputTRC_c");
              objc_msgSend_setConstantValue_type_withName_(v34, v90, &v110 + 4, 3, @"outputTRC_d");
              objc_msgSend_setConstantValue_type_withName_(v34, v91, &v110 + 8, 3, @"outputTRC_e");
              objc_msgSend_setConstantValue_type_withName_(v34, v92, &v110 + 12, 3, @"outputTRC_f");
              v101 = v65;
              v102 = v59;
              objc_msgSend_setConstantValue_type_withName_(v34, v93, &v102, 29, @"biPlanarTextureChromaSubsampling");
              objc_msgSend_setConstantValue_type_withName_(v34, v94, &v101, 29, @"biPlanarTextureYCbCrMatrix");
              v58 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(self, v95, @"color_matching_kernel_biplanar", v34);
              goto LABEL_48;
            }

LABEL_45:
            v70 = sub_1AF0D5194(v68, v66);
            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDE93EC();
            }

            goto LABEL_47;
          }

          v62 = v33 == 0;
          v63 = 5;
        }

        if (v62)
        {
          v65 = v63;
        }

        else
        {
          v65 = v63 + 1;
        }

        goto LABEL_37;
    }

    v59 = 3;
    goto LABEL_28;
  }

LABEL_49:
  os_unfair_lock_unlock(&p_availableColorMatchingComputePipelines->lock);
  return v32;
}

- (BOOL)allowHotReload
{
  if (sub_1AFDE7A50(self))
  {
    return 0;
  }

  else
  {
    return objc_msgSend_hasCommonProfilePrecompiledFunctions(self, v3, v4) ^ 1;
  }
}

- (id)computeEvaluatorWithContext:(MTLContext *)context srcDesc:(const BufferDescriptor *)desc dstDesc:(const BufferDescriptor *)dstDesc duDesc:(const BufferDescriptor *)duDesc dvDesc:(const BufferDescriptor *)dvDesc
{
  v7 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *&desc->var1) ^ ((0xC6A4A7935BD1E995 * *&desc->var1) >> 47))) ^ 0x4FB7DAE84DD6F2FCLL)) ^ dstDesc->var2);
  v8 = (0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) >> 47);
  p_availableOpenSubdivComputeEvaluators = &self->_availableOpenSubdivComputeEvaluators;
  os_unfair_lock_lock(&self->_availableOpenSubdivComputeEvaluators.lock);
  registry = p_availableOpenSubdivComputeEvaluators->registry;
  if (!p_availableOpenSubdivComputeEvaluators->registry)
  {
    sub_1AF20C220(p_availableOpenSubdivComputeEvaluators);
    registry = p_availableOpenSubdivComputeEvaluators->registry;
  }

  v12 = objc_msgSend_objectForKey_(registry, v10, v8);
  if (!v12)
  {
    v13 = objc_alloc_init(VFXMTLOpenSubdivComputeEvaluator);
    sub_1AFDBACE8();
  }

  os_unfair_lock_unlock(&p_availableOpenSubdivComputeEvaluators->lock);
  return v12;
}

- (id)defaultLightingEnvironmentIrradianceTexture
{
  v37[1] = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (!self->_defaultLightingEnvironmentIrradianceTexture)
  {
    v3 = MEMORY[0x1E696AAE8];
    v4 = objc_opt_class();
    v6 = objc_msgSend_bundleForClass_(v3, v5, v4);
    v8 = objc_msgSend_URLForResource_withExtension_(v6, v7, @"VFXDefaultIrradiance", @"ktx");
    v36 = *MEMORY[0x1E69743F8];
    v37[0] = MEMORY[0x1E695E110];
    v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, v37, &v36, 1);
    v12 = objc_msgSend_newTextureUsingMTKTextureLoaderWithURL_options_(self, v11, v8, v10);
    self->_defaultLightingEnvironmentIrradianceTexture = v12;
    v15 = objc_msgSend_textureType(v12, v13, v14);
    if (v15 != 5)
    {
      v18 = sub_1AF0D5194(v15, v16);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE9460(v18, v16, v17, v19, v20, v21, v22, v23);
      }
    }

    v24 = objc_msgSend_pixelFormat(self->_defaultLightingEnvironmentIrradianceTexture, v16, v17);
    if (v24 != 115)
    {
      v26 = sub_1AF0D5194(v24, v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE94D8(v26, v27, v28, v29, v30, v31, v32, v33);
      }
    }
  }

  defaultLightingEnvironmentIrradianceTexture = self->_defaultLightingEnvironmentIrradianceTexture;
  objc_sync_exit(self);
  return defaultLightingEnvironmentIrradianceTexture;
}

- (id)defaultLightingEnvironmentRadianceTexture
{
  v37[1] = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (!self->_defaultLightingEnvironmentRadianceTexture)
  {
    v3 = MEMORY[0x1E696AAE8];
    v4 = objc_opt_class();
    v6 = objc_msgSend_bundleForClass_(v3, v5, v4);
    v8 = objc_msgSend_URLForResource_withExtension_(v6, v7, @"VFXDefaultRadiance", @"ktx");
    v36 = *MEMORY[0x1E69743F8];
    v37[0] = MEMORY[0x1E695E110];
    v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, v37, &v36, 1);
    v12 = objc_msgSend_newTextureUsingMTKTextureLoaderWithURL_options_(self, v11, v8, v10);
    self->_defaultLightingEnvironmentRadianceTexture = v12;
    v15 = objc_msgSend_textureType(v12, v13, v14);
    if (v15 != 5)
    {
      v18 = sub_1AF0D5194(v15, v16);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE9550(v18, v16, v17, v19, v20, v21, v22, v23);
      }
    }

    v24 = objc_msgSend_pixelFormat(self->_defaultLightingEnvironmentRadianceTexture, v16, v17);
    if (v24 != 115)
    {
      v26 = sub_1AF0D5194(v24, v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE95C8(v26, v27, v28, v29, v30, v31, v32, v33);
      }
    }
  }

  defaultLightingEnvironmentRadianceTexture = self->_defaultLightingEnvironmentRadianceTexture;
  objc_sync_exit(self);
  return defaultLightingEnvironmentRadianceTexture;
}

- (id)irradianceTextureForPrecomputedLightingEnvironment:(id)environment
{
  v38[1] = *MEMORY[0x1E69E9840];
  p_availableIrradianceTextures = &self->_availableIrradianceTextures;
  os_unfair_lock_lock(&self->_availableIrradianceTextures.lock);
  registry = p_availableIrradianceTextures->registry;
  if (!p_availableIrradianceTextures->registry)
  {
    sub_1AF20C220(p_availableIrradianceTextures);
    registry = p_availableIrradianceTextures->registry;
  }

  v8 = objc_msgSend_objectForKey_(registry, v6, environment);
  if (v8)
  {
    v11 = v8;
    os_unfair_lock_unlock(&p_availableIrradianceTextures->lock);
  }

  else
  {
    v12 = objc_msgSend_irradianceData(environment, v9, v10);
    v37 = *MEMORY[0x1E69743F8];
    v38[0] = MEMORY[0x1E695E110];
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, v38, &v37, 1);
    v11 = objc_msgSend_newTextureUsingMTKTextureLoaderWithData_options_(self, v15, v12, v14);
    v18 = objc_msgSend_textureType(v11, v16, v17);
    if (v18 != 5)
    {
      v21 = sub_1AF0D5194(v18, v19);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE9640(v21, v19, v20, v22, v23, v24, v25, v26);
      }
    }

    v27 = objc_msgSend_pixelFormat(v11, v19, v20);
    if (v27 != 115)
    {
      v29 = sub_1AF0D5194(v27, v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE96B8(v29, v28, v30, v31, v32, v33, v34, v35);
      }
    }

    objc_msgSend_setObject_forKey_(p_availableIrradianceTextures->registry, v28, v11, environment);
    os_unfair_lock_unlock(&p_availableIrradianceTextures->lock);
  }

  return v11;
}

- (id)radianceTextureForPrecomputedLightingEnvironment:(id)environment
{
  v38[1] = *MEMORY[0x1E69E9840];
  p_availableRadianceTextures = &self->_availableRadianceTextures;
  os_unfair_lock_lock(&self->_availableRadianceTextures.lock);
  registry = p_availableRadianceTextures->registry;
  if (!p_availableRadianceTextures->registry)
  {
    sub_1AF20C220(p_availableRadianceTextures);
    registry = p_availableRadianceTextures->registry;
  }

  v8 = objc_msgSend_objectForKey_(registry, v6, environment);
  if (v8)
  {
    v11 = v8;
    os_unfair_lock_unlock(&p_availableRadianceTextures->lock);
  }

  else
  {
    v12 = objc_msgSend_radianceData(environment, v9, v10);
    v37 = *MEMORY[0x1E69743F8];
    v38[0] = MEMORY[0x1E695E110];
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, v38, &v37, 1);
    v11 = objc_msgSend_newTextureUsingMTKTextureLoaderWithData_options_(self, v15, v12, v14);
    v18 = objc_msgSend_textureType(v11, v16, v17);
    if (v18 != 5)
    {
      v21 = sub_1AF0D5194(v18, v19);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE9730(v21, v19, v20, v22, v23, v24, v25, v26);
      }
    }

    v27 = objc_msgSend_pixelFormat(v11, v19, v20);
    if (v27 != 115)
    {
      v29 = sub_1AF0D5194(v27, v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE97A8(v29, v28, v30, v31, v32, v33, v34, v35);
      }
    }

    objc_msgSend_setObject_forKey_(p_availableRadianceTextures->registry, v28, v11, environment);
    os_unfair_lock_unlock(&p_availableRadianceTextures->lock);
  }

  return v11;
}

- (id)irradianceTextureForEnvironmentTexture:(id)texture renderContext:(id)context applySH:(id)h
{
  p_availableIrradianceTextures = &self->_availableIrradianceTextures;
  os_unfair_lock_lock(&self->_availableIrradianceTextures.lock);
  registry = p_availableIrradianceTextures->registry;
  if (!p_availableIrradianceTextures->registry)
  {
    sub_1AF20C220(p_availableIrradianceTextures);
    registry = p_availableIrradianceTextures->registry;
  }

  v12 = objc_msgSend_objectForKey_(registry, v10, texture);
  if (v12)
  {
    v13 = v12;
    os_unfair_lock_unlock(&p_availableIrradianceTextures->lock);
  }

  else
  {
    v20 = 0uLL;
    v21 = 0;
    CFXTextureDescriptorMakeCube(0x40u, 0x73u, &v20);
    LOBYTE(v21) = 5;
    v14 = sub_1AFDE323C(self);
    v18 = v20;
    v19 = v21;
    v13 = CFXGPUDeviceCreateTexture(v14, &v18);
    objc_msgSend_setObject_forKey_(p_availableIrradianceTextures->registry, v15, v13, texture);
    os_unfair_lock_unlock(&p_availableIrradianceTextures->lock);

    objc_msgSend__bakeSphericalHamonicsBasedIrradianceTexture_forEnvironmentTexture_renderContext_applySH_(self, v16, v13, texture, context, h);
  }

  return v13;
}

- (void)_bakeStochasticIrradianceTexture:(id)texture forEnvironmentTexture:(id)environmentTexture mipmapLevelForSampling:(unint64_t)sampling renderContext:(id)context
{
  samplingCopy = sampling;
  v10 = objc_msgSend_computePipelineStateForKernel_(self, a2, @"compute_diffusePreIntegrated_texture2d");
  v11 = sub_1AFDE323C(v10);
  v14 = objc_msgSend_resourceComputeEncoder(context, v12, v13);
  objc_msgSend_setComputePipelineState_(v14, v15, v11);
  for (i = 0; i != 6; ++i)
  {
    v19 = objc_msgSend_pixelFormat(texture, v16, v17);
    v21 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(texture, v20, v19, 2, 0, 1, i, 1);
    objc_msgSend_setTexture_atIndex_(v14, v22, v21, 0);
    objc_msgSend_setTexture_atIndex_(v14, v23, environmentTexture, 1);
    v31 = i;
    v32 = samplingCopy;
    objc_msgSend_setBytes_length_atIndex_(v14, v24, &v32, 4, 0);
    objc_msgSend_setBytes_length_atIndex_(v14, v25, &v31, 4, 1);
    objc_msgSend_dispatchOnTexture2D_(v14, v26, v21);
  }

  if (objc_msgSend_mipmapLevelCount(texture, v16, v17) > 1)
  {
    v29 = objc_msgSend_resourceBlitEncoder(context, v27, v28);
    sub_1AF213F78(v29, texture, v30);
  }
}

- (void)_bakeSphericalHamonicsBasedIrradianceTexture:(id)texture forEnvironmentTexture:(id)environmentTexture renderContext:(id)context applySH:(id)h
{
  v11 = objc_msgSend_resourceCommandBuffer(context, a2, texture);
  v15 = objc_msgSend_sphericalHarmonicsForEnvironmentTexture_order_commandBuffer_(self, v12, environmentTexture, 3, v11);
  if (h)
  {
    v16 = objc_msgSend_resourceCommandBuffer(context, v13, v14);
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = sub_1AF214240;
    v62[3] = &unk_1E7A7D0A0;
    v62[4] = v15;
    v62[5] = h;
    objc_msgSend_addCompletedHandler_(v16, v17, v62);
  }

  v18 = objc_msgSend_frameworkLibrary(self->_libraryManager, v13, v14);
  *(&v59 + 1) = objc_msgSend_pixelFormat(texture, v19, v20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  v60 = @"vfx_draw_fullscreen_quad_vertex";
  v61 = @"cubemap_from_sh";
  v22 = objc_msgSend_newRenderPipelineStateWithDesc_(self, v21, &v58);
  v25 = objc_msgSend_resourceCommandBuffer(context, v23, v24);
  for (i = 0; i != 6; ++i)
  {
    v27 = objc_alloc_init(MEMORY[0x1E6974128]);
    v30 = objc_msgSend_colorAttachments(v27, v28, v29);
    v32 = objc_msgSend_objectAtIndexedSubscript_(v30, v31, 0);
    objc_msgSend_setTexture_(v32, v33, texture);
    v36 = objc_msgSend_colorAttachments(v27, v34, v35);
    v38 = objc_msgSend_objectAtIndexedSubscript_(v36, v37, 0);
    objc_msgSend_setLevel_(v38, v39, 0);
    v42 = objc_msgSend_colorAttachments(v27, v40, v41);
    v44 = objc_msgSend_objectAtIndexedSubscript_(v42, v43, 0);
    objc_msgSend_setSlice_(v44, v45, i);
    v47 = objc_msgSend_renderCommandEncoderWithDescriptor_(v25, v46, v27);

    v50 = objc_msgSend_state(v22, v48, v49);
    objc_msgSend_setRenderPipelineState_(v47, v51, v50);
    objc_msgSend_setFragmentTexture_atIndex_(v47, v52, environmentTexture, 1);
    LODWORD(v58) = i;
    objc_msgSend_setFragmentBuffer_offset_atIndex_(v47, v53, v15, 0, 0, v58);
    objc_msgSend_setFragmentBytes_length_atIndex_(v47, v54, &v58, 4, 1);
    objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v47, v55, 4, 0, 4);
    objc_msgSend_endEncoding(v47, v56, v57);
  }
}

- (id)newRadianceTextureForEnvironmentTexture:(id)texture size:(unsigned int)size engineContext:(__CFXEngineContext *)context cpuAccessible:(BOOL)accessible
{
  accessibleCopy = accessible;
  memset(v67, 0, sizeof(v67));
  CFXTextureDescriptorMakeCube(size, 0x73u, v67);
  v13 = log2f(size);
  v14 = *&v67[12] & 0xFFFF8F00FF00FFFFLL | ((vcvtms_s32_f32(v13) + 1) << 16);
  v15 = 0x201300000000;
  if (accessibleCopy)
  {
    v15 = 0x1300000000;
  }

  *&v67[12] = v14 | v15;
  v16 = objc_msgSend_mipmapLevelCount(texture, v11, v12);
  v17 = (*&v67[12] << 40) >> 56;
  v67[14] = (((*&v67[12] << 8) >> 24 << 16) + 16515072) >> 16;
  v20 = objc_msgSend_mipmapLevelCount(texture, v18, v19);
  if (((v17 << 16) + 16515072) << 40 >> 56 >= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = (((v17 << 16) + 16515072) << 40) >> 56;
  }

  v67[14] = v21;
  v22 = sub_1AFDE323C(self);
  v65 = *v67;
  v66 = *&v67[16];
  v23 = CFXGPUDeviceCreateTexture(v22, &v65);
  v25 = sub_1AF1305F8(context, 512);
  if (v25)
  {
    v26 = objc_msgSend_computePipelineStateForKernel_(self, v24, @"compute_specularPreIntegratedLD_texturecube");
  }

  else
  {
    v26 = objc_msgSend_computePipelineStateForKernel_(self, v24, @"compute_specularPreIntegratedLD_texture2d");
  }

  v27 = sub_1AFDE323C(v26);
  v29 = sub_1AF12E2AC(context, v28);
  v32 = objc_msgSend_resourceComputeEncoder(v29, v30, v31);
  objc_msgSend_setComputePipelineState_(v32, v33, v27);
  objc_msgSend_setTexture_atIndex_(v32, v34, texture, 1);
  if (objc_msgSend_mipmapLevelCount(v23, v35, v36))
  {
    v39 = 0;
    do
    {
      if (v16 < 2)
      {
        v46 = 0;
      }

      else
      {
        v40 = objc_msgSend_mipmapLevelCount(texture, v37, v38);
        if (v40 < v17)
        {
          v43 = -1;
        }

        else
        {
          v43 = v40 - v17;
        }

        v44 = objc_msgSend_pixelFormat(texture, v41, v42);
        v46 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(texture, v45, v44, 5, v39 + v43 + 1, 1, 0, 6);
        objc_msgSend_setTexture_atIndex_(v32, v47, v46, 1);
      }

      v48 = 0;
      do
      {
        if (v25)
        {
          v49 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v23, v37, 115, 5, v39, 1, 0, 6);
        }

        else
        {
          LODWORD(v65) = v48;
          objc_msgSend_setBytes_length_atIndex_(v32, v37, &v65, 4, 1);
          v49 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v23, v51, 115, 2, v39, 1, v48, 1);
        }

        v52 = v49;
        objc_msgSend_setTexture_atIndex_(v32, v50, v49, 0);
        v55 = objc_msgSend_mipmapLevelCount(v23, v53, v54);
        v58 = 0.0;
        if (v55 >= 2)
        {
          v58 = 1.0 / (objc_msgSend_mipmapLevelCount(v23, v56, v57, 0.0) - 1);
        }

        LODWORD(v65) = fminf(fmaxf((v58 * v39) * (v58 * v39), 0.01), 1.0);
        objc_msgSend_setBytes_length_atIndex_(v32, v56, &v65, 4, 0);
        if (v25)
        {
          objc_msgSend_dispatchOnTextureCube_(v32, v59, v52);
        }

        else
        {
          objc_msgSend_dispatchOnTexture2D_(v32, v59, v52);
        }

        v61 = v48++ > 4 || v25;
      }

      while ((v61 & 1) == 0);

      ++v39;
    }

    while (v39 < objc_msgSend_mipmapLevelCount(v23, v62, v63));
  }

  objc_msgSend_endEncoding(v32, v37, v38);
  return v23;
}

- (id)radianceTextureForEnvironmentTexture:(id)texture engineContext:(__CFXEngineContext *)context
{
  p_availableRadianceTextures = &self->_availableRadianceTextures;
  os_unfair_lock_lock(&self->_availableRadianceTextures.lock);
  registry = p_availableRadianceTextures->registry;
  if (!p_availableRadianceTextures->registry)
  {
    sub_1AF20C220(p_availableRadianceTextures);
    registry = p_availableRadianceTextures->registry;
  }

  v10 = objc_msgSend_objectForKey_(registry, v8, texture);
  if (v10)
  {
    v12 = v10;
    os_unfair_lock_unlock(&p_availableRadianceTextures->lock);
  }

  else
  {
    v12 = objc_msgSend_newRadianceTextureForEnvironmentTexture_size_engineContext_cpuAccessible_(self, v11, texture, 256, context, 0);
    objc_msgSend_setObject_forKey_(p_availableRadianceTextures->registry, v13, v12, texture);
    os_unfair_lock_unlock(&p_availableRadianceTextures->lock);
  }

  return v12;
}

- (id)specularDFGDiffuseHammonTextureWithRenderContext:(id)context
{
  objc_sync_enter(self);
  specularDFGDiffuseHammonTexture = self->_specularDFGDiffuseHammonTexture;
  if (!specularDFGDiffuseHammonTexture)
  {
    v21 = 0uLL;
    v22 = 0;
    CFXTextureDescriptorMake2D(0x80u, 0x80u, 0x73u, &v21);
    LOBYTE(v22) = 3;
    v8 = objc_msgSend_gpuDevice(context, v6, v7);
    v19 = v21;
    v20 = v22;
    self->_specularDFGDiffuseHammonTexture = CFXGPUDeviceCreateTexture(v8, &v19);
    v10 = objc_msgSend_computePipelineStateForKernel_(self, v9, @"compute_specularPreIntegratedDFG_diffuseHammon");
    v11 = sub_1AFDE323C(v10);
    v14 = objc_msgSend_resourceComputeEncoder(context, v12, v13);
    objc_msgSend_setComputePipelineState_(v14, v15, v11);
    objc_msgSend_setTexture_atIndex_(v14, v16, self->_specularDFGDiffuseHammonTexture, 0);
    objc_msgSend_dispatchOnTexture2D_(v14, v17, self->_specularDFGDiffuseHammonTexture);
    specularDFGDiffuseHammonTexture = self->_specularDFGDiffuseHammonTexture;
  }

  objc_sync_exit(self);
  return specularDFGDiffuseHammonTexture;
}

- (id)areaLightPrecomputedDataTexture
{
  objc_sync_enter(self);
  areaLightPrecomputedDataTexture = self->_areaLightPrecomputedDataTexture;
  if (!areaLightPrecomputedDataTexture)
  {
    memset(v16, 0, sizeof(v16));
    CFXTextureDescriptorMake2DArray(0x40u, 0x40u, 3, 0x7Du, v16);
    *&v16[12] &= 0xFFFF8FFFFFFFFFFFLL;
    v4 = sub_1AFDE323C(self);
    v12 = *v16;
    v13 = *&v16[16];
    v5 = CFXGPUDeviceCreateTexture(v4, &v12);
    self->_areaLightPrecomputedDataTexture = v5;
    v12 = 0uLL;
    v13 = 0;
    v14 = vdupq_n_s64(0x40uLL);
    v15 = 1;
    objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v5, v6, &v12, 0, 0, &unk_1AFE22A70, 1024, 0x10000);
    v7 = self->_areaLightPrecomputedDataTexture;
    v12 = 0uLL;
    v13 = 0;
    v14 = vdupq_n_s64(0x40uLL);
    v15 = 1;
    objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v7, v8, &v12, 0, 1, &unk_1AFE32A70, 1024, 0x10000);
    v9 = self->_areaLightPrecomputedDataTexture;
    v12 = 0uLL;
    v13 = 0;
    v14 = vdupq_n_s64(0x40uLL);
    v15 = 1;
    objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v9, v10, &v12, 0, 2, &unk_1AFE32A70, 1024, 0x10000);
    areaLightPrecomputedDataTexture = self->_areaLightPrecomputedDataTexture;
  }

  objc_sync_exit(self);
  return areaLightPrecomputedDataTexture;
}

- (void)_setupRemoteResourcesRegistry
{
  p_remote = &self->_remote;
  if (self->_remote.var0)
  {
    v3 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE9820(v3);
    }
  }

  v4 = objc_alloc(MEMORY[0x1E696AD18]);
  p_remote->var0 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v4, v5, 258, 0, 16);
  v6 = objc_alloc(MEMORY[0x1E696AD18]);
  p_remote->resourceIDToTexture = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v6, v7, 258, 0, 16);
  v8 = objc_alloc(MEMORY[0x1E696AD18]);
  p_remote->bufferToBuiltin = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v8, v9, 258, 258, 16);
  v10 = objc_alloc(MEMORY[0x1E696AD18]);
  p_remote->textureToBuiltin = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v10, v11, 258, 258, 16);
  v12 = objc_alloc(MEMORY[0x1E696AD18]);
  p_remote->renderPipelineDescToResourceID = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v12, v13, 0, 258, 16);
  v14 = objc_alloc(MEMORY[0x1E696AD18]);
  p_remote->resourceIDToRenderPipeline = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v14, v15, 258, 0, 16);
  v16 = objc_alloc(MEMORY[0x1E696AD18]);
  p_remote->resourceIDToRenderPipelineDesc = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v16, v17, 258, 0, 16);
  v18 = objc_alloc(MEMORY[0x1E696AD18]);
  p_remote->renderPipelineStateToDescriptor = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v18, v19, 258, 0, 16);
  v20 = objc_alloc(MEMORY[0x1E695DF70]);
  p_remote->newlyRegisteredRenderPipelineResourceIDs = objc_msgSend_initWithCapacity_(v20, v21, 16);
}

- (void)_deallocRemoteResources
{
  p_remote = &self->_remote;

  newlyRegisteredRenderPipelineResourceIDs = p_remote->newlyRegisteredRenderPipelineResourceIDs;
}

- (void)setRemoteResourceProvider:(id)provider
{
  resourceProvider = self->_remote.resourceProvider;
  if (resourceProvider != provider)
  {
    if (resourceProvider)
    {
      CFRelease(resourceProvider);
      self->_remote.resourceProvider = 0;
    }

    if (provider)
    {
      v6 = CFRetain(provider);
    }

    else
    {
      v6 = 0;
    }

    self->_remote.resourceProvider = v6;
  }
}

- (id)depthStencilStateForDepthStencilDesc:(id)desc
{
  DepthStencil = CFXGPUDeviceCreateDepthStencil(self->_gpuDevice, *&desc.var0, *(&desc + 8));

  return DepthStencil;
}

- (unint64_t)resourceIDForBuffer:(id)buffer
{
  p_remote = &self->_remote;
  var0 = self->_remote.var0;
  if (!var0)
  {
    objc_msgSend__setupRemoteResourcesRegistry(self, a2, buffer);
    var0 = p_remote->var0;
  }

  objc_msgSend_setObject_forKey_(var0, a2, buffer, buffer);
  return buffer;
}

- (unint64_t)resourceIDForTexture:(id)texture
{
  p_remote = &self->_remote;
  if (!self->_remote.var0)
  {
    objc_msgSend__setupRemoteResourcesRegistry(self, a2, texture);
  }

  objc_msgSend_setObject_forKey_(p_remote->resourceIDToTexture, a2, texture, texture);
  return texture;
}

- ($A0006519144E89EAB0D3761C94EDBD8D)descForDepthStencilState:(id)state
{
  DepthStencilDesc = CFXGPUDeviceGetDepthStencilDesc(self->_gpuDevice, state);
  v4 = v4;
  result.var0 = DepthStencilDesc;
  result.var1 = *(&DepthStencilDesc + 4);
  return result;
}

- (void)removeResourceIDForResource:(id)resource
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 134217984;
    resourceCopy = resource;
    _os_log_impl(&dword_1AF0CE000, v5, OS_LOG_TYPE_INFO, "Info: removeResourceIDForResource %llu", &v9, 0xCu);
  }

  p_remote = &self->_remote;
  objc_msgSend_removeObjectForKey_(p_remote->resourceIDToTexture, v6, resource);
  objc_msgSend_removeObjectForKey_(p_remote->var0, v8, resource);
}

- (id)samplerStateForSamplerDesc:(id)desc
{
  Sampler = CFXGPUDeviceCreateSampler(self->_gpuDevice, *&desc);

  return Sampler;
}

- (void)registerRenderPipeline:(id)pipeline forResourceID:(unint64_t)d
{
  p_remote = &self->_remote;
  if (!self->_remote.var0)
  {
    objc_msgSend__setupRemoteResourcesRegistry(self, a2, pipeline);
  }

  resourceIDToRenderPipeline = p_remote->resourceIDToRenderPipeline;

  objc_msgSend_setObject_forKey_(resourceIDToRenderPipeline, a2, pipeline, d);
}

- (unint64_t)resourceIDForRenderPipelineState:(id)state
{
  p_remote = &self->_remote;
  v4 = objc_msgSend_objectForKey_(self->_remote.renderPipelineStateToDescriptor, a2, state);
  if (v4)
  {
    result = objc_msgSend_objectForKey_(p_remote->renderPipelineDescToResourceID, v5, v4);
    if (result)
    {
      return result;
    }

    v8 = sub_1AF0D5194(0, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE98A4(v8);
    }
  }

  else
  {
    v9 = sub_1AF0D5194(0, v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE98E8(v9);
    }
  }

  return 0;
}

- (unint64_t)registerRenderPipelineDescriptor:(id)descriptor state:(id)state
{
  p_remote = &self->_remote;
  if (!self->_remote.var0)
  {
    objc_msgSend__setupRemoteResourcesRegistry(self, a2, descriptor);
  }

  if (state)
  {
    objc_msgSend_setObject_forKey_(p_remote->renderPipelineStateToDescriptor, a2, descriptor, state);
  }

  v7 = objc_msgSend_objectForKey_(p_remote->renderPipelineDescToResourceID, a2, descriptor);
  if (v7)
  {
    return v7;
  }

  v10 = objc_msgSend_hash(descriptor, v8, v9);
  objc_msgSend_setObject_forKey_(p_remote->renderPipelineDescToResourceID, v11, v10, descriptor);
  objc_msgSend_setObject_forKey_(p_remote->resourceIDToRenderPipelineDesc, v12, descriptor, v10);
  v14 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v13, v10);
  objc_msgSend_addObject_(p_remote->newlyRegisteredRenderPipelineResourceIDs, v15, v14);
  return v10;
}

- (void)remoteRegisterRenderPipelineDescriptor:(id)descriptor remoteID:(unint64_t)d
{
  v16 = *MEMORY[0x1E69E9840];
  p_remote = &self->_remote;
  if (!self->_remote.var0)
  {
    objc_msgSend__setupRemoteResourcesRegistry(self, a2, descriptor);
  }

  v7 = objc_msgSend_objectForKey_(p_remote->renderPipelineDescToResourceID, a2, descriptor);
  if (v7)
  {
    v9 = v7;
    v10 = sub_1AF0D5194(v7, v8);
    v11 = v10;
    if (v9 == d)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        descriptorCopy = descriptor;
        _os_log_impl(&dword_1AF0CE000, v11, OS_LOG_TYPE_DEFAULT, "Warning: RemoteRenderPipelineDesc %@ already registered", &v14, 0xCu);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE992C(descriptor, v9, v11);
    }
  }

  else
  {
    objc_msgSend_setObject_forKey_(p_remote->renderPipelineDescToResourceID, v8, d, descriptor);
    resourceIDToRenderPipelineDesc = p_remote->resourceIDToRenderPipelineDesc;

    objc_msgSend_setObject_forKey_(resourceIDToRenderPipelineDesc, v12, descriptor, d);
  }
}

- (void)remoteRegisterArgumentBufferDescriptor:(id)descriptor remoteID:(unint64_t)d offset:(unint64_t)offset
{
  p_remote = &self->_remote;
  v9 = malloc_type_realloc(self->_remote.argumentBufferEntries, 24 * self->_remote.argumentBufferEntriesCount + 24, 0x108004098BBCF0FuLL);
  p_remote->argumentBufferEntries = v9;
  v10 = (v9 + 24 * p_remote->argumentBufferEntriesCount);
  *v10 = d;
  v10[1] = offset;
  descriptorCopy = descriptor;
  argumentBufferEntriesCount = p_remote->argumentBufferEntriesCount;
  *(p_remote->argumentBufferEntries + 3 * argumentBufferEntriesCount + 2) = descriptorCopy;
  p_remote->argumentBufferEntriesCount = argumentBufferEntriesCount + 1;
}

- (id)fetchArgumentBufferDescriptorWithRemoteID:(unint64_t)d offset:(unint64_t)offset
{
  argumentBufferEntriesCount = self->_remote.argumentBufferEntriesCount;
  if (argumentBufferEntriesCount < 1)
  {
    return 0;
  }

  for (i = (self->_remote.argumentBufferEntries + 16); *(i - 2) != d || *(i - 1) != offset; i += 3)
  {
    if (!--argumentBufferEntriesCount)
    {
      return 0;
    }
  }

  return *i;
}

- (void)clearArgumentBufferDescriptors
{
  p_remote = &self->_remote;
  p_argumentBufferEntries = &self->_remote.argumentBufferEntries;
  argumentBufferEntries = self->_remote.argumentBufferEntries;
  if (argumentBufferEntries)
  {
    if (p_remote->argumentBufferEntriesCount >= 1)
    {
      v5 = 0;
      v6 = 16;
      do
      {

        ++v5;
        v6 += 24;
      }

      while (v5 < p_remote->argumentBufferEntriesCount);
      argumentBufferEntries = *p_argumentBufferEntries;
    }

    free(argumentBufferEntries);
  }

  *p_argumentBufferEntries = 0;
  p_argumentBufferEntries[1] = 0;
}

- (void)remoteRegisterBuffer:(id)buffer remoteID:(unint64_t)d
{
  p_remote = &self->_remote;
  var0 = self->_remote.var0;
  if (!var0)
  {
    objc_msgSend__setupRemoteResourcesRegistry(self, a2, buffer);
    var0 = p_remote->var0;
  }

  objc_msgSend_setObject_forKey_(var0, a2, buffer, d);
}

- (void)remoteRegisterTexture:(id)texture remoteID:(unint64_t)d
{
  p_remote = &self->_remote;
  if (!self->_remote.var0)
  {
    objc_msgSend__setupRemoteResourcesRegistry(self, a2, texture);
  }

  resourceIDToTexture = p_remote->resourceIDToTexture;

  objc_msgSend_setObject_forKey_(resourceIDToTexture, a2, texture, d);
}

- (void)remoteUnregisterBuffer:(unint64_t)buffer
{
  p_remote = &self->_remote;
  var0 = self->_remote.var0;
  if (!var0)
  {
    objc_msgSend__setupRemoteResourcesRegistry(self, a2, buffer);
    var0 = p_remote->var0;
  }

  objc_msgSend_removeObjectForKey_(var0, a2, buffer);
}

- (void)remoteUnregisterTexture:(unint64_t)texture
{
  p_remote = &self->_remote;
  if (!self->_remote.var0)
  {
    objc_msgSend__setupRemoteResourcesRegistry(self, a2, texture);
  }

  resourceIDToTexture = p_remote->resourceIDToTexture;

  objc_msgSend_removeObjectForKey_(resourceIDToTexture, a2, texture);
}

- (void)encodeNewlyRegisteredResources:(__CFXRemoteFrameBuilder *)resources
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  p_remote = &self->_remote;
  newlyRegisteredRenderPipelineResourceIDs = self->_remote.newlyRegisteredRenderPipelineResourceIDs;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(newlyRegisteredRenderPipelineResourceIDs, a2, &v19, v25, 16);
  if (v6)
  {
    v10 = v6;
    v11 = *v20;
    *&v9 = 134217984;
    v18 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(newlyRegisteredRenderPipelineResourceIDs);
        }

        v13 = objc_msgSend_unsignedIntegerValue(*(*(&v19 + 1) + 8 * i), v7, v8, v18);
        v15 = objc_msgSend_objectForKey_(p_remote->resourceIDToRenderPipelineDesc, v14, v13);
        if (v15)
        {
          sub_1AF22DF6C(resources, v13, v15);
        }

        else
        {
          v17 = sub_1AF0D5194(0, v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v24 = v13;
            _os_log_error_impl(&dword_1AF0CE000, v17, OS_LOG_TYPE_ERROR, "Error: Missing RenderPipelineDesc for resourceID %llu", buf, 0xCu);
          }
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(newlyRegisteredRenderPipelineResourceIDs, v7, &v19, v25, 16);
    }

    while (v10);
  }

  objc_msgSend_removeAllObjects(p_remote->newlyRegisteredRenderPipelineResourceIDs, v7, v8);
}

- (unsigned)builtinForBufferSlice:(id)slice
{
  v3 = *&slice.var1;
  var0 = slice.var0;
  p_remote = &self->_remote;
  if (!self->_remote.var0)
  {
    objc_msgSend__setupRemoteResourcesRegistry(self, a2, slice.var0);
  }

  CPUPointer = CFXBufferSliceGetCPUPointer(var0, v3, slice.var0);
  return objc_msgSend_objectForKey_(p_remote->bufferToBuiltin, v7, CPUPointer);
}

- (unsigned)builtinForTexture:(id)texture
{
  p_remote = &self->_remote;
  if (!self->_remote.var0)
  {
    objc_msgSend__setupRemoteResourcesRegistry(self, a2, texture);
  }

  return objc_msgSend_objectForKey_(p_remote->textureToBuiltin, a2, texture);
}

- (void)registerBuiltinBuffer:(id)buffer builtin:(unsigned __int8)builtin
{
  builtinCopy = builtin;
  v5 = *&buffer.var1;
  var0 = buffer.var0;
  p_remote = &self->_remote;
  if (!self->_remote.var0)
  {
    objc_msgSend__setupRemoteResourcesRegistry(self, a2, buffer.var0);
  }

  CPUPointer = CFXBufferSliceGetCPUPointer(var0, v5, buffer.var0);
  bufferToBuiltin = p_remote->bufferToBuiltin;

  objc_msgSend_setObject_forKey_(bufferToBuiltin, v8, builtinCopy, CPUPointer);
}

- (void)registerBuiltinTexture:(id)texture builtin:(unsigned __int8)builtin
{
  builtinCopy = builtin;
  p_remote = &self->_remote;
  if (!self->_remote.var0)
  {
    objc_msgSend__setupRemoteResourcesRegistry(self, a2, texture);
  }

  textureToBuiltin = p_remote->textureToBuiltin;

  objc_msgSend_setObject_forKey_(textureToBuiltin, a2, builtinCopy, texture);
}

- (id)shFromCPU:(id)u commandBuffer:(id)buffer
{
  v88 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_unstageTexture_commandBuffer_(self, a2, u, buffer);
  v7 = 0;
  memset(v87, 0, 108);
  while (1)
  {
    v8 = objc_msgSend_pixelFormat(v6, v4, v5);
    if ((v8 & 0xFFFFFFFFFFFFFFFELL) != 0x46)
    {
      break;
    }

    v11 = 4 * objc_msgSend_width(v6, v9, v10);
    v14 = v11 * objc_msgSend_height(v6, v12, v13);
    v15 = malloc_type_calloc(v14, 1uLL, 0x100004052888210uLL);
    v18 = objc_msgSend_width(v6, v16, v17);
    v21 = objc_msgSend_height(v6, v19, v20);
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = v18;
    v85 = v21;
    v86 = 1;
    objc_msgSend_getBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice_(v6, v22, v15, v11, v14, &v81, 0, v7);
    v25 = objc_msgSend_width(v6, v23, v24);
    v28 = objc_msgSend_height(v6, v26, v27);
    v29 = malloc_type_calloc(v28 * v25, 0x10uLL, 0x1000040451B5BE8uLL);
    LODWORD(v18) = 16 * objc_msgSend_width(v6, v30, v31);
    v34 = objc_msgSend_width(v6, v32, v33);
    v37 = objc_msgSend_height(v6, v35, v36);
    sub_1AF2159F8(v29, v18, v15, v11, v34, v37);
LABEL_7:
    free(v15);
LABEL_9:
    v77 = objc_msgSend_width(v6, v64, v65);
    sub_1AF2156C8(v29, v77, v7, 3u, v87);
    free(v29);
    if (++v7 == 6)
    {
      return CFXGPUDeviceCreateBufferWithBytes(self->_gpuDevice, v87, 0x6CuLL, 0);
    }
  }

  v38 = v8;
  if (v8 == 125)
  {
    v66 = 16 * objc_msgSend_width(v6, v9, v10);
    v69 = v66 * objc_msgSend_height(v6, v67, v68);
    v29 = malloc_type_calloc(v69, 1uLL, 0xED5CF897uLL);
    v72 = objc_msgSend_width(v6, v70, v71);
    v75 = objc_msgSend_height(v6, v73, v74);
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = v72;
    v85 = v75;
    v86 = 1;
    objc_msgSend_getBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice_(v6, v76, v29, v66, v69, &v81, 0, v7);
    goto LABEL_9;
  }

  if (v8 == 115)
  {
    v39 = 8 * objc_msgSend_width(v6, v9, v10);
    v42 = v39 * objc_msgSend_height(v6, v40, v41);
    v15 = malloc_type_calloc(v42, 1uLL, 0x100004052888210uLL);
    v45 = objc_msgSend_width(v6, v43, v44);
    v48 = objc_msgSend_height(v6, v46, v47);
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = v45;
    v85 = v48;
    v86 = 1;
    objc_msgSend_getBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice_(v6, v49, v15, v39, v42, &v81, 0, v7);
    v52 = objc_msgSend_width(v6, v50, v51);
    v55 = objc_msgSend_height(v6, v53, v54);
    v29 = malloc_type_calloc(v55 * v52, 0x10uLL, 0x1000040451B5BE8uLL);
    LODWORD(v45) = 16 * objc_msgSend_width(v6, v56, v57);
    v60 = objc_msgSend_width(v6, v58, v59);
    v63 = objc_msgSend_height(v6, v61, v62);
    sub_1AF215B48(v29, v45, v15, v39, v60, v63);
    goto LABEL_7;
  }

  v79 = sub_1AF0D5194(v8, v9);
  if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE99B4(v38, v79);
  }

  return 0;
}

- (id)sphericalHarmonicsForEnvironmentTexture:(id)texture order:(unint64_t)order commandBuffer:(id)buffer
{
  v9 = order * order;
  sub_1AFDE851C(self, 12 * order * order, 0);
  v11 = v10;
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, @"compute_sh%d_from_cubemap_threadgroup_mem", order);
  v15 = objc_msgSend_computePipelineStateForKernel_(self, v14, v13);
  v18 = sub_1AFDE323C(v15);
  v19 = v18;
  if (!v18)
  {
    v20 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v16, @"compute_sh%d_from_cubemap", order);
    v22 = objc_msgSend_computePipelineStateForKernel_(self, v21, v20);
    v19 = sub_1AFDE323C(v22);
  }

  v23 = objc_msgSend_computeCommandEncoder(buffer, v16, v17);
  objc_msgSend_setComputePipelineState_(v23, v24, v19);
  if (objc_msgSend_mipmapLevelCount(texture, v25, v26) >= 0xA)
  {
    v29 = objc_msgSend_mipmapLevelCount(texture, v27, v28);
    v32 = 9;
    if (v29 > 9)
    {
      v32 = v29;
    }

    v33 = v32 - 9;
    v34 = objc_msgSend_pixelFormat(texture, v30, v31);
    texture = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(texture, v35, v34, 5, v33, 1, 0, 6);
  }

  objc_msgSend_setTexture_atIndex_(v23, v27, texture, 0);
  if (v18)
  {
    sub_1AFDE851C(self, 72 * v9, 32);
    v38 = v37;
    objc_msgSend_setBuffer_offset_atIndex_(v23, v39, v37, 0, 1);
    v40 = (16 * v9);
    v43 = objc_msgSend_threadExecutionWidth(v19, v41, v42);
    v45 = 0x7FFF / v40;
    if (v43 < v45)
    {
      v45 = v43;
    }

    if (v45 >= 0x40)
    {
      v46 = 64;
    }

    else
    {
      v46 = v45;
    }

    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v23, v44, v46 * v40, 0);
    v61 = xmmword_1AFE42AC0;
    v62 = 1;
    *v60 = v46;
    *&v60[8] = vdupq_n_s64(1uLL);
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v23, v47, &v61, v60);
    v49 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v48, @"sum_sh%d", order);
    v51 = objc_msgSend_computePipelineStateForKernel_(self, v50, v49);
    v52 = sub_1AFDE323C(v51);
    objc_msgSend_setComputePipelineState_(v23, v53, v52);
    objc_msgSend_setBuffer_offset_atIndex_(v23, v54, v11, 0, 0);
    v61 = xmmword_1AFE42AD0;
    v62 = 1;
    *v60 = xmmword_1AFE42AD0;
    *&v60[16] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v23, v55, &v61, v60);
  }

  else
  {
    objc_msgSend_setBuffer_offset_atIndex_(v23, v36, v11, 0, 0);
    v61 = xmmword_1AFE42AD0;
    v62 = 1;
    *v60 = xmmword_1AFE42AD0;
    *&v60[16] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v23, v58, &v61, v60);
  }

  objc_msgSend_endEncoding(v23, v56, v57);
  return v11;
}

- (id)copyTextureByConvertingToCubeMapIfApplicable:(id)applicable engineContext:(__CFXEngineContext *)context needsMipmap:(BOOL)mipmap
{
  v6 = objc_msgSend_width(applicable, a2, applicable);
  if (v6 == 2 * objc_msgSend_height(applicable, v7, v8))
  {
    objc_msgSend_pixelFormat(applicable, v9, v10);

    return MEMORY[0x1EEE66B58](self, sel_newCubemapTextureForLatlongTexture_pixelFormat_engineContext_needsMipmap_, applicable);
  }

  else
  {

    return applicable;
  }
}

- (id)newTextureUsingMTKTextureLoaderWithURL:(id)l options:(id)options
{
  v7 = objc_alloc(MEMORY[0x1E6974438]);
  v8 = sub_1AFDE78C8(self);
  v11 = objc_msgSend_initWithDevice_(v7, v9, v8);
  if (!v11)
  {
    v12 = sub_1AF0D5194(0, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE9A2C(v12, v10, v13, v14, v15, v16, v17, v18);
    }
  }

  v25 = 0;
  v19 = objc_msgSend_newTextureWithContentsOfURL_options_error_(v11, v10, l, options, &v25);

  if (v25)
  {
    v22 = sub_1AF0D5194(v20, v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE9AA4(&v25, v22, v23);
    }

    return 0;
  }

  return v19;
}

- (id)newTextureUsingMTKTextureLoaderWithData:(id)data options:(id)options
{
  v7 = objc_alloc(MEMORY[0x1E6974438]);
  v8 = sub_1AFDE78C8(self);
  v11 = objc_msgSend_initWithDevice_(v7, v9, v8);
  if (!v11)
  {
    v12 = sub_1AF0D5194(0, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE9A2C(v12, v10, v13, v14, v15, v16, v17, v18);
    }
  }

  v25 = 0;
  v19 = objc_msgSend_newTextureWithData_options_error_(v11, v10, data, options, &v25);

  if (v25)
  {
    v22 = sub_1AF0D5194(v20, v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE9AA4(&v25, v22, v23);
    }

    return 0;
  }

  return v19;
}

- (void)_enqueueCopyFromTexture:(id)texture toTexture:(id)toTexture blitEncoder:(VFXMTLBlitCommandEncoder *)encoder generateMipMaps:(BOOL)maps
{
  mapsCopy = maps;
  v10 = objc_msgSend_width(texture, a2, texture);
  if (v10 == objc_msgSend_width(toTexture, v11, v12))
  {
    v15 = objc_msgSend_height(texture, v13, v14);
    if (v15 == objc_msgSend_height(toTexture, v16, v17))
    {
      v20 = objc_msgSend_depth(texture, v18, v19);
      if (v20 == objc_msgSend_depth(toTexture, v21, v22))
      {
        sub_1AF21683C(&encoder->_encoder, texture, 0, toTexture, 0);
        if (mapsCopy)
        {

          sub_1AF213F78(&encoder->_encoder, toTexture, v23);
        }
      }
    }
  }
}

- (id)_textureDescriptorFromImage:(__CFXImage *)image needsMipMap:(BOOL)map textureOptions:(unsigned __int8)options
{
  mapCopy = map;
  v9 = objc_alloc_init(MEMORY[0x1E69741C0]);
  v11 = sub_1AF197E50(image, v10);
  v13 = sub_1AF1F11FC(v11, v12);
  objc_msgSend_setTextureType_(v9, v14, v13);
  v15 = 1;
  objc_msgSend_setUsage_(v9, v16, 1);
  objc_msgSend_setStorageMode_(v9, v17, 0);
  v20 = sub_1AF197D7C(image, v18);
  if (*v20.i32 >= 1.0)
  {
    objc_msgSend_setWidth_(v9, *&v19, *v20.i32, *&v20, *&v21);
  }

  else
  {
    objc_msgSend_setWidth_(v9, *&v19, 1.0, *&v20, *&v21);
  }

  v23 = v59;
  if (v59 < 1.0)
  {
    v23 = 1.0;
  }

  objc_msgSend_setHeight_(v9, v22, v23);
  v25 = sub_1AF197DFC(image, v24);
  objc_msgSend_setDepth_(v9, v26, v25);
  if (mapCopy)
  {
    v29 = objc_msgSend_width(v9, v27, v28);
    v32 = fmax(v29, objc_msgSend_height(v9, v30, v31));
    v15 = (floorf(log2f(v32)) + 1.0);
  }

  objc_msgSend_setMipmapLevelCount_(v9, v27, v15);
  if (objc_msgSend_mipmapLevelCount(v9, v33, v34) >= 2 && objc_msgSend_textureType(v9, v35, v36) == 5)
  {
    v39 = objc_msgSend_usage(v9, v37, v38);
    objc_msgSend_setUsage_(v9, v40, v39 | 0x10);
  }

  v41 = sub_1AF196128(image);
  if (v41)
  {
    v42 = v41;
    v43 = *(v41 + 7);
    v44 = sub_1AF198570(image, 0);
    objc_msgSend_setMipmapLevelCount_(v9, v45, v44);
    v46 = *(v42 + 20);
    if (v43 & 1) != 0 || (options)
    {
      v47 = VFXMTLPixelFormatNonSRGBVariant(v46);
    }

    else
    {
      v47 = VFXMTLPixelFormatSRGBVariant(v46);
    }

    objc_msgSend_setPixelFormat_(v9, v48, v47);
  }

  else
  {
    v49 = sub_1AF197BC0(image, 1);
    if (v49)
    {
      v51 = v49;
      BitsPerComponent = CGBitmapContextGetBitsPerComponent(v49);
      v53 = CGBitmapContextGetBitsPerPixel(v51) / BitsPerComponent;
      sub_1AFDE78C8(self);
      v54 = sub_1AF1F1624(v53, BitsPerComponent, v51, options);
      objc_msgSend_setPixelFormat_(v9, v55, v54);
      if (v53 == 1 && [sub_1AFDE78C8(self) supportsTextureSwizzle])
      {
        objc_msgSend_setSwizzle_(v9, v56, 16908802);
      }

      CGContextRelease(v51);
    }

    else
    {
      v58 = sub_1AF0D5194(0, v50);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE9B98(image, v58);
      }

      return 0;
    }
  }

  return v9;
}

- (BOOL)_copyImage:(__CFXImage *)image toTexture:(id)texture desc:(id)desc textureOptions:(unsigned __int8)options needsMipMapGeneration:(BOOL)generation
{
  imageCopy = image;
  v102 = sub_1AF197E50(image, a2);
  v11 = sub_1AF196128(imageCopy);
  if (!v11)
  {
    v61 = sub_1AF197BC0(imageCopy, 1);
    if (!v61)
    {
      v62 = sub_1AF0D5194(0, v60);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE9CCC(imageCopy, v62);
      }
    }

    v63 = imageCopy;
    Data = CGBitmapContextGetData(v61);
    if (!Data)
    {
      v65 = sub_1AF0D5194(0, v64);
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        if (!v61)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      sub_1AFDE9D44(v65);
      if (v61)
      {
LABEL_20:
        CFRelease(v61);
        v61 = 0;
      }
    }

LABEL_21:
    BytesPerRow = CGBitmapContextGetBytesPerRow(v61);
    BitsPerComponent = CGBitmapContextGetBitsPerComponent(v61);
    v68 = (CGBitmapContextGetBitsPerPixel(v61) / BitsPerComponent * BitsPerComponent) >> 3;
    v71 = v68 * objc_msgSend_width(desc, v69, v70);
    v74 = objc_msgSend_width(desc, v72, v73);
    v77 = objc_msgSend_height(desc, v75, v76);
    if (v102 == 2)
    {
      v80 = objc_msgSend_width(desc, v78, v79);
      v83 = objc_msgSend_depth(desc, v81, v82);
      v105[0] = MEMORY[0x1E69E9820];
      v105[1] = 3221225472;
      v105[2] = sub_1AF2172E4;
      v105[3] = &unk_1E7A7D118;
      v105[4] = desc;
      v105[5] = texture;
      v105[6] = v71;
      sub_1AF19834C(2, v80, v83, BytesPerRow, v71, v68, Data, v105);
      if (!v61)
      {
        return generation;
      }
    }

    else
    {
      v85 = v77;
      if (sub_1AF196D70(v63, v78))
      {
        v88 = objc_msgSend_width(desc, v86, v87);
        v104[0] = MEMORY[0x1E69E9820];
        v104[1] = 3221225472;
        v104[2] = sub_1AF217370;
        v104[3] = &unk_1E7A7D0F0;
        memset(&v104[6], 0, 24);
        v104[9] = v74;
        v104[10] = v85;
        v104[11] = 1;
        v104[12] = v71;
        v104[4] = texture;
        v104[5] = desc;
        sub_1AF198078(v102, v88, BytesPerRow, v71, v68, Data, v104);
        if (!v61)
        {
          return generation;
        }
      }

      else
      {
        memset(v103, 0, 24);
        v103[3] = v74;
        v103[4] = v85;
        v103[5] = 1;
        v92 = objc_msgSend_height(desc, v86, v87);
        objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(texture, v93, v103, 0, 0, Data, v71, v92 * v71);
        if (!v61)
        {
          return generation;
        }
      }
    }

    CFRelease(v61);
    return generation;
  }

  v13 = v11;
  v14 = sub_1AF196D70(imageCopy, v12);
  v16 = sub_1AF197EEC(imageCopy, v15);
  LOBYTE(v103[0]) = 0;
  v98 = sub_1AF198570(imageCopy, v103);
  v19 = objc_msgSend_mipmapLevelCount(desc, v17, v18);
  if (v98 > v19)
  {
    v22 = sub_1AF0D5194(v19, v20);
    v19 = os_log_type_enabled(v22, OS_LOG_TYPE_FAULT);
    if (v19)
    {
      sub_1AFDE9C10(v22, v20, v21, v23, v24, v25, v26, v27);
    }
  }

  generationCopy = generation;
  if (v14)
  {
    if (v16)
    {
      if (v98)
      {
        for (i = 0; i != v98; ++i)
        {
          v29 = objc_msgSend_width(desc, v20, v21);
          v32 = objc_msgSend_height(desc, v30, v31);
          ValueAtIndex = CFArrayGetValueAtIndex(*(v13 + 24), i);
          Length = CFDataGetLength(ValueAtIndex);
          BytePtr = CFDataGetBytePtr(ValueAtIndex);
          v39 = sub_1AF1965C4(imageCopy, v36);
          v41 = Length;
          if (*(v13 + 4) < 2u)
          {
            v55 = *(v13 + 1) >> 3;
            v99 = *&v39;
            v100 = BytePtr;
            v56 = imageCopy;
            v57 = objc_msgSend_width(desc, v37, v38) * v55;
            v48 = objc_msgSend_width(desc, v58, v59);
            v106[0] = MEMORY[0x1E69E9820];
            v106[1] = 3221225472;
            v106[2] = sub_1AF217264;
            v106[3] = &unk_1E7A7D0F0;
            memset(&v106[6], 0, 24);
            v106[9] = v29;
            v106[10] = v32;
            v106[11] = 1;
            v106[12] = v57;
            v106[4] = texture;
            v106[5] = desc;
            v50 = v106;
            v51 = v102;
            v52 = (v41 / v99);
            v49 = v57;
            imageCopy = v56;
            v53 = v55;
            v54 = v100;
          }

          else
          {
            LOBYTE(v40) = *(v13 + 5);
            v42 = ((v41 / *(&v39 + 1)) * v40);
            v43 = *(v13 + 1) >> 3;
            LODWORD(v43) = objc_msgSend_width(desc, v37, v38) / *(v13 + 4) * v43;
            v46 = objc_msgSend_height(desc, v44, v45);
            v47 = *(v13 + 5);
            v107[0] = MEMORY[0x1E69E9820];
            v107[1] = 3221225472;
            v107[2] = sub_1AF21720C;
            v107[3] = &unk_1E7A7D0C8;
            memset(&v107[5], 0, 24);
            v107[4] = texture;
            v107[8] = v29;
            v107[9] = v32;
            v48 = v46 / v47;
            v49 = v43;
            v108 = v43;
            v107[10] = 1;
            v107[11] = v46 / v47;
            v50 = v107;
            v51 = v102;
            v52 = v42;
            v53 = 0;
            v54 = BytePtr;
          }

          sub_1AF198078(v51, v48, v52, v49, v53, v54, v50);
        }
      }
    }

    else if (v103[0])
    {
      if (v98)
      {
        for (j = 0; j < v98; ++j)
        {
          for (k = 0; k != 6; ++k)
          {
            v91 = CFArrayGetValueAtIndex(*(v13 + 24), 6 * j + k);
            v19 = sub_1AF21627C(texture, desc, k, j, v91, v13);
          }
        }
      }
    }

    else
    {
      for (m = 0; m != 6; ++m)
      {
        v96 = CFArrayGetValueAtIndex(*(v13 + 24), m);
        v19 = sub_1AF2163AC(texture, desc, m, v96, v13);
      }
    }
  }

  else
  {
    v19 = sub_1AF2163AC(texture, desc, 0, *(v13 + 24), v13);
  }

  generation = v98 < 2 && generationCopy;
  if (!texture)
  {
    v84 = sub_1AF0D5194(v19, v20);
    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE9C88(v84);
    }
  }

  return generation;
}

- (id)newCubemapTextureForLatlongTexture:(id)texture pixelFormat:(unint64_t)format engineContext:(__CFXEngineContext *)context needsMipmap:(BOOL)mipmap
{
  mipmapCopy = mipmap;
  formatCopy = format;
  v39 = *MEMORY[0x1E69E9840];
  v11 = objc_msgSend_width(texture, a2, texture);
  if (v11 >> 1 >= 0x800)
  {
    LODWORD(v12) = 2048;
  }

  else
  {
    v12 = v11 >> 1;
  }

  memset(v36, 0, sizeof(v36));
  CFXTextureDescriptorMakeCube(v12, formatCopy, v36);
  v13 = log2f(v12);
  *&v36[12] = *&v36[12] & 0xFFFF8F00FF00FFFFLL | ((vcvtms_s32_f32(v13) + 1) << 16) | 0x201300000000;
  v14 = sub_1AFDE323C(self);
  v37 = *v36;
  v38 = *&v36[16];
  v15 = CFXGPUDeviceCreateTexture(v14, &v37);
  v17 = sub_1AF12E2AC(context, v16);
  v18 = sub_1AF1305F8(context, 512);
  v20 = v18;
  if (v18)
  {
    v21 = objc_msgSend_computePipelineStateForKernel_(self, v19, @"compute_cube_from_equi");
  }

  else
  {
    v21 = objc_msgSend_computePipelineStateForKernel_(self, v19, @"compute_cube_from_equi_views");
  }

  v22 = sub_1AFDE323C(v21);
  v25 = objc_msgSend_resourceComputeEncoder(v17, v23, v24);
  objc_msgSend_setComputePipelineState_(v25, v26, v22);
  objc_msgSend_setTexture_atIndex_(v25, v27, texture, 0);
  if (v20)
  {
    objc_msgSend_setTexture_atIndex_(v25, v28, v15, 1);
  }

  else
  {
    sub_1AF21620C(v15, 0, &v37);
    objc_msgSend_setTextures_withRange_(v25, v30, &v37, 1, 6);
  }

  objc_msgSend_dispatchOnTextureCube_(v25, v29, v15);
  if (mipmapCopy)
  {
    v33 = objc_msgSend_resourceBlitEncoder(v17, v31, v32);
    sub_1AF213F78(v33, v15, v34);
  }

  return v15;
}

- (id)latlongTextureForCubemap:(id)cubemap pixelFormat:(unint64_t)format renderContext:(id)context needsMipmap:(BOOL)mipmap
{
  mipmapCopy = mipmap;
  formatCopy = format;
  memset(v36, 0, sizeof(v36));
  v11 = 2 * objc_msgSend_width(cubemap, a2, cubemap);
  v14 = objc_msgSend_height(cubemap, v12, v13);
  CFXTextureDescriptorMake2D(v11, v14, formatCopy, v36);
  *&v36[12] = *&v36[12] & 0xFFFFFF00FF00FFFFLL | 0x300100000;
  v17 = objc_msgSend_gpuDevice(context, v15, v16);
  v34 = *v36;
  v35 = *&v36[16];
  v18 = CFXGPUDeviceCreateTexture(v17, &v34);
  v20 = objc_msgSend_computePipelineStateForKernel_(self, v19, @"compute_equi_from_cube");
  v21 = sub_1AFDE323C(v20);
  v24 = objc_msgSend_resourceComputeEncoder(context, v22, v23);
  objc_msgSend_setComputePipelineState_(v24, v25, v21);
  objc_msgSend_setTexture_atIndex_(v24, v26, cubemap, 0);
  objc_msgSend_setTexture_atIndex_(v24, v27, v18, 1);
  objc_msgSend_dispatchOnTexture2D_(v24, v28, v18);
  if (mipmapCopy)
  {
    v31 = objc_msgSend_resourceBlitEncoder(context, v29, v30);
    sub_1AF213F78(v31, v18, v32);
  }

  return v18;
}

- (id)unstageTexture:(id)texture commandBuffer:(id)buffer
{
  textureCopy = texture;
  if (objc_msgSend_storageMode(texture, a2, texture) == 2)
  {
    memset(v16, 0, sizeof(v16));
    CFXTextureDescriptorFromMTLTexture(textureCopy, v16, v7, v8);
    *&v16[12] &= 0xFFFF8F00FFFFFFFFLL;
    v9 = sub_1AFDE323C(self);
    v14 = *v16;
    v15 = *&v16[16];
    v10 = CFXGPUDeviceCreateTexture(v9, &v14);
    v14 = 0uLL;
    sub_1AF1FF3B8(&v14, buffer, 0);
    sub_1AF2177B4(&v14, textureCopy, v10);
    sub_1AF1FE520(&v14, v11, v12);
    return v10;
  }

  return textureCopy;
}

- (id)renderResourceForAsset:(void *)asset withEngineContext:(__CFXEngineContext *)context entityCache:(int64_t *)cache isFallback:(BOOL *)fallback isDynamic:(BOOL *)dynamic
{
  v10 = sub_1AF12DDCC(context, a2);
  v11 = *cache;
  v13 = sub_1AF1CF8AC(v10, v12);
  v16 = sub_1AF0FB884(v13);
  if (!v11)
  {
    v17 = objc_msgSend_entityTag(asset, v14, v15);
    result = objc_msgSend_entityWithTag_(v16, v18, v17);
    if (!result)
    {
      return result;
    }

    v11 = result;
    *cache = result;
  }

  sub_1AF130C80(context, v14, v15);

  return MEMORY[0x1EEE66B58](v16, sel_textureForEntity_isFallback_isDynamic_renderer_, v11);
}

- (id)renderResourceForMaterialProperty:(__CFXMaterialProperty *)property withEngineContext:(__CFXEngineContext *)context didFallbackToDefaultTexture:(BOOL *)texture isDynamic:(BOOL *)dynamic
{
  if (texture)
  {
    *texture = 1;
    v11 = sub_1AF167644(property, a2);
    if (v11)
    {
      isDynamic = v11;
      *texture = 0;
      return isDynamic;
    }
  }

  else
  {
    v14 = sub_1AF167644(property, a2);
    if (v14)
    {
      return v14;
    }
  }

  v15 = sub_1AF167578(property, v12);
  if (v15)
  {
    v17 = v15;
    v18 = sub_1AF16679C(property, v16);
    v14 = objc_msgSend_renderResourceForImageProxy_sampler_engineContext_didFallbackToDefaultTexture_(self, v19, v17, v18, context, texture);
    if (v14)
    {
      return v14;
    }
  }

  v21 = sub_1AF166428(property, v16);
  if (!v21)
  {
    isDynamic = sub_1AF167054(property, v22);
    if (isDynamic)
    {
      v28 = sub_1AF167158(property, v27);
      v35 = v28;
      isDynamic = objc_msgSend_renderResourceForAsset_withEngineContext_entityCache_isFallback_isDynamic_(self, v29, isDynamic, context, &v35, texture, dynamic);
      if (isDynamic && !v28)
      {
        sub_1AF1671CC(property, v35);
      }

      if (sub_1AF167CD8(property) == 26)
      {
        var4 = property->var4;
        if (var4 != isDynamic)
        {
          if (var4)
          {
            CFRelease(var4);
            property->var4 = 0;
          }

          if (isDynamic)
          {
            v32 = CFRetain(isDynamic);
          }

          else
          {
            v32 = 0;
          }

          property->var4 = v32;
          v33 = sub_1AF12DDCC(context, v30);
          sub_1AF1D121C(v33, v34);
        }
      }
    }

    return isDynamic;
  }

  v23 = v21;
  v24 = sub_1AF16679C(property, v22);
  v26 = sub_1AF1678F4(property);

  return objc_msgSend_renderResourceForImage_sampler_options_engineContext_didFallbackToDefaultTexture_(self, v25, v23, v24, v26, context, texture);
}

- (id)renderResourceForImageProxy:(__CFXImageProxy *)proxy sampler:(id)sampler engineContext:(__CFXEngineContext *)context didFallbackToDefaultTexture:(BOOL *)texture
{
  if (!proxy)
  {
    v11 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE9EF0(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  p_availableImageProxy = &self->_availableImageProxy;
  os_unfair_lock_lock(&p_availableImageProxy->lock);
  registry = p_availableImageProxy->registry;
  if (!p_availableImageProxy->registry)
  {
    sub_1AF20C220(p_availableImageProxy);
    registry = p_availableImageProxy->registry;
  }

  v22 = objc_msgSend_objectForKey_(registry, v20, proxy);
  if (!v22)
  {
    v23 = sub_1AF276584(proxy, *&sampler, context);
    if (!v23)
    {
      os_unfair_lock_unlock(&p_availableImageProxy->lock);
      v25 = 0;
      goto LABEL_17;
    }

    v22 = v23;
    objc_msgSend_setObject_forKey_(p_availableImageProxy->registry, v24, v23, proxy);
    CFRelease(v22);
  }

  v34 = 257;
  v25 = sub_1AF276950(v22, context, *&sampler, &v34);
  os_unfair_lock_unlock(&p_availableImageProxy->lock);
  if (v25)
  {
    if (v34 == 1 && HIBYTE(v34) == 1 && (*&sampler & 0xFF0000) != 0)
    {
      v27 = sub_1AF12E2AC(context, v26);
      v30 = objc_msgSend_resourceBlitEncoder(v27, v28, v29);
      sub_1AF213F78(v30, v25, v31);
    }

    if (texture)
    {
      v32 = 0;
LABEL_19:
      *texture = v32;
      return v25;
    }

    return v25;
  }

LABEL_17:
  if (texture)
  {
    v32 = 1;
    goto LABEL_19;
  }

  return v25;
}

- (id)lazyMTKTextureLoader
{
  result = self->_mtkTextureLoader;
  if (!result)
  {
    v4 = objc_alloc(MEMORY[0x1E6974438]);
    v5 = sub_1AFDE78C8(self);
    result = objc_msgSend_initWithDevice_(v4, v6, v5);
    self->_mtkTextureLoader = result;
  }

  return result;
}

- (id)renderResourceForImage:(__CFXImage *)image sampler:(id)sampler options:(unsigned __int8)options engineContext:(__CFXEngineContext *)context didFallbackToDefaultTexture:(BOOL *)texture
{
  optionsCopy = options;
  samplerCopy = sampler;
  if (!image)
  {
    v13 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE9EF0(v13, a2, v14, v15, v16, v17, v18, v19);
    }
  }

  if ((*&samplerCopy & 0xFF0000) != 0)
  {
    v20 = 1;
  }

  else
  {
    v20 = (optionsCopy >> 2) & 1;
  }

  if ((*&samplerCopy & 0xFF0000) != 0)
  {
    v21 = optionsCopy | 4;
  }

  else
  {
    v21 = optionsCopy;
  }

  v22 = (0xC6A4A7935BD1E995 * (image ^ 0xC6A4A7935BD1E995 ^ v21)) ^ ((0xC6A4A7935BD1E995 * (image ^ 0xC6A4A7935BD1E995 ^ v21)) >> 47);
  v23 = (0xC6A4A7935BD1E995 * v22) ^ ((0xC6A4A7935BD1E995 * v22) >> 47);
  v24 = sub_1AF12E2AC(context, a2);
  os_unfair_lock_lock(&self->_availableImages.safeResourcesRegistry.lock);
  if (!self->_availableImages.safeResourcesRegistry.registry)
  {
    sub_1AF20C220(&self->_availableImages);
  }

  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = sub_1AF2182A0;
  v72[3] = &unk_1E7A7D140;
  v72[4] = self;
  v72[5] = v24;
  locked = objc_msgSend_hazardousResourceForKey_inLockedRegistry_onBehalfOfRenderContext_withHazardTrackingHandler_(self, v25, v23, &self->_availableImages, v24, v72);
  if (locked)
  {
    defaultTexture = locked;
    goto LABEL_32;
  }

  sub_1AF1974B4(image, v27, v28);
  if (!sub_1AF1971B0(image))
  {
    if ((v21 & 2) != 0 && sub_1AF197D50(image, v30))
    {
      v43 = objc_msgSend__textureDescriptorFromImage_needsMipMap_textureOptions_(self, v30, image, 0, v21);
      if (v43)
      {
        v44 = v43;
        v70 = 0uLL;
        v71 = 0;
        CFXTextureDescriptorFromMTLTextureDescriptor(v43, &v70, v40, v41);
        v45 = sub_1AFDE323C(self);
        v68 = v70;
        v69 = v71;
        v67 = CFXGPUDeviceCreateTexture(v45, &v68);
        objc_msgSend__copyImage_toTexture_desc_textureOptions_needsMipMapGeneration_(self, v46, image, v67, v44, v21, 0);
        defaultTexture = objc_msgSend_copyTextureByConvertingToCubeMapIfApplicable_engineContext_needsMipmap_(self, v47, v67, context, v20);
        v48 = defaultTexture;

LABEL_24:
        sub_1AF197C5C(image, v49);
        goto LABEL_25;
      }
    }

    else
    {
      v50 = objc_msgSend__textureDescriptorFromImage_needsMipMap_textureOptions_(self, v30, image, v20, v21);
      if (v50)
      {
        v51 = v50;
        v70 = 0uLL;
        v71 = 0;
        CFXTextureDescriptorFromMTLTextureDescriptor(v50, &v70, v40, v41);
        v52 = sub_1AFDE323C(self);
        v68 = v70;
        v69 = v71;
        defaultTexture = CFXGPUDeviceCreateTexture(v52, &v68);
        v53 = defaultTexture;
        LODWORD(v20) = objc_msgSend__copyImage_toTexture_desc_textureOptions_needsMipMapGeneration_(self, v54, image, defaultTexture, v51, v21, v20);
        goto LABEL_24;
      }
    }

LABEL_30:
    defaultTexture = self->_defaultTexture;
    v61 = objc_msgSend_resourceManagerMonitor(v24, v40, v41);
    v63 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v62, @"Unable to find texture for source %@", image);
    objc_msgSend_renderContext_didFallbackToDefaultTextureForSource_message_(v61, v64, v24, image, v63);
    goto LABEL_31;
  }

  v31 = sub_1AF1971C0(image, v30);
  v34 = VFXGetResourceBundle(v31, v32, v33);
  *&v70 = 0;
  v37 = objc_msgSend_lazyMTKTextureLoader(self, v35, v36);
  defaultTexture = objc_msgSend_newTextureWithName_scaleFactor_bundle_options_error_(v37, v38, v31, v34, MEMORY[0x1E695E0F8], &v70, 1.0);
  v39 = defaultTexture;
  if (!defaultTexture)
  {
    v42 = sub_1AF0D5194(v39, v40);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE9F68();
    }
  }

LABEL_25:
  if (!defaultTexture)
  {
    goto LABEL_30;
  }

  if (v20)
  {
    if (sub_1AF198570(image, 0) <= 1)
    {
      v56 = objc_msgSend_pixelFormat(defaultTexture, v40, v55);
      if (sub_1AF1F1544(v56))
      {
        v58 = objc_msgSend_resourceBlitEncoder(v24, v40, v57);
        sub_1AF213F78(v58, defaultTexture, v59);
        objc_msgSend_setHazardousResource_forKey_inLockedRegistry_onBehalfOfRenderContext_(self, v60, defaultTexture, *(v58 + 8), v23, &self->_availableImages, v24);
        goto LABEL_32;
      }
    }
  }

LABEL_31:
  objc_msgSend_setObject_forKey_(self->_availableImages.safeResourcesRegistry.registry, v40, defaultTexture, v23);
LABEL_32:
  os_unfair_lock_unlock(&self->_availableImages.safeResourcesRegistry.lock);
  if (texture)
  {
    v65 = self->_defaultTexture1D == defaultTexture || self->_defaultTexture == defaultTexture || self->_defaultTexture3D == defaultTexture;
    *texture = v65;
  }

  return defaultTexture;
}

- (id)defaultTexture
{
  v22 = *MEMORY[0x1E69E9840];
  p_availableImages = &self->_availableImages;
  os_unfair_lock_lock(&self->_availableImages.safeResourcesRegistry.lock);
  if (!p_availableImages->safeResourcesRegistry.registry)
  {
    sub_1AF20C220(p_availableImages);
  }

  if (!self->_defaultTexture)
  {
    v15 = p_availableImages;
    memset(v21, 0, sizeof(v21));
    CFXTextureDescriptorMake2D(4u, 4u, 0x46u, v21);
    *&v21[12] = *&v21[12] & 0xFFFF8F00FF00FFFFLL | 0x100030000;
    v4 = sub_1AFDE323C(self);
    v16 = *v21;
    v17 = *&v21[16];
    v5 = CFXGPUDeviceCreateTexture(v4, &v16);
    self->_defaultTexture = v5;
    if (v21[14])
    {
      v6 = 4;
      v7 = 1;
      do
      {
        MEMORY[0x1EEE9AC00](v5);
        v9 = &v14 - v8;
        memset(&v14 - v8, 255, 4 * v6 * v6);
        defaultTexture = self->_defaultTexture;
        v16 = 0uLL;
        v17 = 0;
        v18 = v6;
        v19 = v6;
        v20 = 1;
        v5 = objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(defaultTexture, v11, &v16, v7 - 1, 0, v9, 4 * v6, 4 * v6 * v6);
        v12 = v7 < (*&v21[12] << 40) >> 56 && v6 > 1;
        v6 >>= 1;
        ++v7;
      }

      while (v12);
    }

    p_availableImages = v15;
  }

  os_unfair_lock_unlock(&p_availableImages->safeResourcesRegistry.lock);
  return self->_defaultTexture;
}

- (id)defaultTexture1D
{
  v14 = *MEMORY[0x1E69E9840];
  p_availableImages = &self->_availableImages;
  os_unfair_lock_lock(&self->_availableImages.safeResourcesRegistry.lock);
  if (!p_availableImages->safeResourcesRegistry.registry)
  {
    sub_1AF20C220(p_availableImages);
  }

  if (!self->_defaultTexture1D)
  {
    memset(v13, 0, sizeof(v13));
    CFXTextureDescriptorMake1D(4, 0x46u, v13);
    *&v13[12] = *&v13[12] & 0xFFFF8F00FFFFFFFFLL | 0x100000000;
    v4 = sub_1AFDE323C(self);
    v9 = *v13;
    v10 = *&v13[16];
    v5 = CFXGPUDeviceCreateTexture(v4, &v9);
    self->_defaultTexture1D = v5;
    MEMORY[0x1EEE9AC00](v5);
    defaultTexture1D = self->_defaultTexture1D;
    v9 = 0uLL;
    v10 = 0;
    v11 = xmmword_1AFE42AF0;
    v12 = 1;
    objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(defaultTexture1D, v7, &v9, 0, 0, -1, -1);
  }

  os_unfair_lock_unlock(&p_availableImages->safeResourcesRegistry.lock);
  return self->_defaultTexture1D;
}

- (id)defaultCubeTexture
{
  v22 = *MEMORY[0x1E69E9840];
  p_availableImages = &self->_availableImages;
  os_unfair_lock_lock(&self->_availableImages.safeResourcesRegistry.lock);
  if (!p_availableImages->safeResourcesRegistry.registry)
  {
    sub_1AF20C220(p_availableImages);
  }

  if (!self->_defaultCubeTexture)
  {
    v15 = p_availableImages;
    memset(v21, 0, sizeof(v21));
    CFXTextureDescriptorMakeCube(4u, 0x46u, v21);
    *&v21[12] = *&v21[12] & 0xFFFF8F00FF00FFFFLL | 0x100030000;
    v4 = sub_1AFDE323C(self);
    v16 = *v21;
    v17 = *&v21[16];
    v5 = CFXGPUDeviceCreateTexture(v4, &v16);
    self->_defaultCubeTexture = v5;
    if (v21[14])
    {
      v6 = 0;
      v7 = 4;
      do
      {
        MEMORY[0x1EEE9AC00](v5);
        v9 = &v14 - v8;
        bzero(&v14 - v8, 4 * v7 * v7);
        for (i = 0; i != 6; ++i)
        {
          defaultCubeTexture = self->_defaultCubeTexture;
          v16 = 0uLL;
          v17 = 0;
          v18 = v7;
          v19 = v7;
          v20 = 1;
          v5 = objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(defaultCubeTexture, v10, &v16, v6, i, v9, 4 * v7, 4 * v7 * v7);
        }

        ++v6;
        v7 >>= 1;
      }

      while (v6 < (*&v21[12] << 40) >> 56);
    }

    p_availableImages = v15;
  }

  os_unfair_lock_unlock(&p_availableImages->safeResourcesRegistry.lock);
  return self->_defaultCubeTexture;
}

- (id)defaultTexture3D
{
  v31 = *MEMORY[0x1E69E9840];
  p_availableImages = &self->_availableImages;
  os_unfair_lock_lock(&self->_availableImages.safeResourcesRegistry.lock);
  if (!p_availableImages->safeResourcesRegistry.registry)
  {
    sub_1AF20C220(p_availableImages);
  }

  if (!self->_defaultTexture3D)
  {
    memset(v30, 0, sizeof(v30));
    CFXTextureDescriptorMake3D(0x10u, 0x10u, 0x10u, 0x46u, v30);
    *&v30[12] = *&v30[12] & 0xFFFF8F00FFFFFFFFLL | 0x100000000;
    v4 = sub_1AFDE323C(self);
    v25 = *v30;
    v26 = *&v30[16];
    v5 = CFXGPUDeviceCreateTexture(v4, &v25);
    v24[1] = v24;
    self->_defaultTexture3D = v5;
    v6 = 4 * *&v30[4];
    v7 = v6 * (*&v30[4] >> 16);
    v9 = MEMORY[0x1EEE9AC00](v5);
    v11 = v24 - v10;
    LODWORD(v12) = *&v30[4];
    v13 = (*&v30[4] << 16) >> 48;
    if (v13 >= 1)
    {
      for (i = 0; i < v13; ++i)
      {
        v15 = v12 >> 16;
        v12 = v12;
        if (v15 > 0)
        {
          v16 = 0;
          v17 = v12 - 1;
          v18 = v11 + 3;
          do
          {
            if (v12 >= 1)
            {
              v19 = 0;
              v20 = v18;
              v21 = v12;
              do
              {
                v8 = v19 / v17;
                *(v20 - 3) = v19 / v17;
                *(v20 - 2) = 255 * v16 / (v15 - 1);
                *(v20 - 1) = 255 * i / (v13 - 1);
                *v20 = -1;
                v20 += 4;
                v19 += 255;
                --v21;
              }

              while (v21);
            }

            ++v16;
            v18 += v6;
          }

          while (v16 != v15);
        }

        defaultTexture3D = self->_defaultTexture3D;
        v25 = 0uLL;
        v26 = i;
        v27 = v12;
        v28 = v15;
        v29 = 1;
        objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(defaultTexture3D, v8, &v25, 0, 0, v11, v6, v7, v9);
        LODWORD(v12) = *&v30[4];
        v13 = (*&v30[4] << 16) >> 48;
      }
    }
  }

  os_unfair_lock_unlock(&p_availableImages->safeResourcesRegistry.lock);
  return self->_defaultTexture3D;
}

- (id)defaultTextureForTextureType:(unint64_t)type
{
  if (type == 7)
  {
    return MEMORY[0x1EEE66B58](self, sel_defaultTexture3D, 7);
  }

  if (type)
  {
    return objc_msgSend_defaultTexture(self, a2, type);
  }

  return MEMORY[0x1EEE66B58](self, sel_defaultTexture1D, 0);
}

- (id)iesTextureForProfile:(void *)profile renderContext:(id)context
{
  p_availableIESTextures = &self->_availableIESTextures;
  os_unfair_lock_lock(&self->_availableIESTextures.lock);
  registry = p_availableIESTextures->registry;
  if (!p_availableIESTextures->registry)
  {
    sub_1AF20C220(p_availableIESTextures);
    registry = p_availableIESTextures->registry;
  }

  v9 = objc_msgSend_objectForKey_(registry, v7, profile);
  if (v9)
  {
    v10 = v9;
    os_unfair_lock_unlock(&p_availableIESTextures->lock);
  }

  else
  {
    _infoHangle = [profile _infoHangle];
    CACurrentMediaTime();
    v12 = sub_1AF1F1AAC();
    v13 = v12 >> 3 << 8;
    v14 = v12 >> 3 << 12;
    v15 = malloc_type_malloc(v14, 0xF32F5BBCuLL);
    v16 = sub_1AF1F1AAC();
    sub_1AF1959F4(_infoHangle, v15, 256, 0x10u, 1, v16 >> 3);
    memset(v25, 0, sizeof(v25));
    CFXTextureDescriptorMake2D(0x100u, 0x10u, 0x19u, v25);
    *&v25[12] = *&v25[12] & 0xFFFF8F00FF00FFFFLL | 0x100090000;
    v17 = sub_1AFDE323C(self);
    v21 = *v25;
    v22 = *&v25[16];
    v10 = CFXGPUDeviceCreateTexture(v17, &v21);
    v21 = 0uLL;
    v22 = 0;
    v23 = xmmword_1AFE42B00;
    v24 = 1;
    objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v10, v18, &v21, 0, 0, v15, v13, v14);
    free(v15);
    objc_msgSend_setObject_forKey_(p_availableIESTextures->registry, v19, v10, profile);
    os_unfair_lock_unlock(&p_availableIESTextures->lock);
  }

  return v10;
}

- (void)colorMatchSourceTexture:(id)texture sourceColorSpace:(CGColorSpace *)space destinationColorSpace:(CGColorSpace *)colorSpace destinationTexture:(id)destinationTexture renderContext:(id)context
{
  v10 = objc_msgSend_colorMatchingComputePipelineStateForSourceColorSpace_destinationColorSpace_renderContext_(self, a2, space, colorSpace, context);
  v13 = objc_msgSend_resourceComputeEncoder(context, v11, v12);
  v14 = sub_1AFDE323C(v10);
  objc_msgSend_setComputePipelineState_(v13, v15, v14);
  objc_msgSend_setTexture_atIndex_(v13, v16, texture, 0);
  objc_msgSend_setTexture_atIndex_(v13, v17, destinationTexture, 1);

  objc_msgSend_dispatchOnTexture2D_(v13, v18, texture);
}

- (void)colorMatchBiPlanarPixelBufferWithFormatType:(unsigned int)type pixelBufferYCbCrMatrix:(id)matrix pixelBufferColorPrimaries:(id)primaries pixelBufferTransferFunction:(id)function sourceTextureY:(id)y sourceTextureCbCr:(id)cr sourceColorSpace:(CGColorSpace *)space destinationColorSpace:(CGColorSpace *)self0 destinationTexture:(id)self1 renderContext:(id)self2
{
  v14 = objc_msgSend_colorMatchingComputePipelineStateForBiPlanarPixelBufferWithFormatType_pixelBufferYCbCrMatrix_pixelBufferColorPrimaries_pixelBufferTransferFunction_sourceColorSpace_destinationColorSpace_renderContext_(self, a2, *&type, matrix, primaries, function, space, colorSpace, context);
  v17 = objc_msgSend_resourceComputeEncoder(context, v15, v16);
  v18 = sub_1AFDE323C(v14);
  objc_msgSend_setComputePipelineState_(v17, v19, v18);
  objc_msgSend_setTexture_atIndex_(v17, v20, y, 0);
  objc_msgSend_setTexture_atIndex_(v17, v21, cr, 1);
  objc_msgSend_setTexture_atIndex_(v17, v22, texture, 2);

  objc_msgSend_dispatchOnTexture2D_(v17, v23, texture);
}

@end