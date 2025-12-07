@interface SCNMTLResourceManager
+ (SCNMTLResourceManager)resourceManagerForDevice:(uint64_t)device;
+ (void)_fillVertexDescriptor:(id)descriptor withSemantic:(char)semantic inputSet:(int64_t)set bufferIndex:(int64_t)index vertexFormat:(unint64_t)format offset:(unint64_t)offset stride:(unint64_t)stride;
+ (void)unregisterManagerForDevice:(id)device;
- (BOOL)_copyImage:(__C3DImage *)image toTexture:(id)texture desc:(id)desc textureOptions:(int)options needsMipMapGeneration:(BOOL)generation;
- (SCNMTLMesh)renderResourceForMesh:(uint64_t)mesh dataKind:;
- (SCNMTLMeshElement)renderResourceForMeshElement:(uint64_t)element;
- (SCNMTLResourceManager)initWithDevice:(id)device;
- (SCNMTLShadable)renderResourceForMaterial:(__C3DGeometry *)material geometry:(SCNMTLRenderPipeline *)geometry renderPipeline:(uint64_t)pipeline engineContext:;
- (SCNMTLTessellator)renderResourceForTessellatedGeometry:(uint64_t)geometry;
- (SCNMetalWireframeResource)wireframeResourceForRendererElement:(uint64_t)element engineContext:(unsigned __int8 *)context passInstance:(uint64_t)instance hashPass:;
- (__C3DFXMetalProgram)defaultProgramUsingTessellation:(BOOL)tessellation;
- (id)_bufferForData:(__CFData *)data bytesPerIndex:(unint64_t)index;
- (id)_bufferForMTLBuffer:(void *)buffer;
- (id)_computePipelineStateForKernel:(id)kernel constants:(id)constants constantsHash:(id)hash threadGroupSizeIsMultipleOfThreadExecutionWidth:(BOOL)width;
- (id)_newComputeDescriptorForPipelineDesc:(id *)desc library:(id)library;
- (id)_textureDescriptorFromImage:(__C3DImage *)image needsMipMap:(BOOL)map textureOptions:(int)options;
- (id)areaLightPrecomputedDataTexture;
- (id)colorMatchingComputePipelineStateForBiPlanarPixelBufferWithFormatType:(unsigned int)type pixelBufferYCbCrMatrix:(id)matrix pixelBufferColorPrimaries:(id)primaries pixelBufferTransferFunction:(id)function sourceColorSpace:(CGColorSpace *)space destinationColorSpace:(CGColorSpace *)colorSpace renderContext:(id)context;
- (id)computeEvaluatorWithContext:(MTLContext *)context srcDesc:(const BufferDescriptor *)desc dstDesc:(const BufferDescriptor *)dstDesc duDesc:(const BufferDescriptor *)duDesc dvDesc:(const BufferDescriptor *)dvDesc;
- (id)computePipelineStateForKernel:(id)kernel withStageDescriptor:(id)descriptor stageDescriptorUpdateBlock:(id)block constants:(id)constants constantsHash:(id)hash;
- (id)copyTextureByConvertingToCubeMapIfApplicable:(id)applicable engineContext:(__C3DEngineContext *)context needsMipmap:(BOOL)mipmap;
- (id)defaultCubeTexture;
- (id)defaultLightingEnvironmentIrradianceTexture;
- (id)defaultLightingEnvironmentRadianceTexture;
- (id)defaultTexture;
- (id)defaultTexture3D;
- (id)getUniqueStageDescriptor:(id)descriptor;
- (id)iesTextureForProfile:(id)profile renderContext:(id)context;
- (id)irradianceTextureForEnvironmentTexture:(id)texture renderContext:(id)context applySH:(id)h;
- (id)irradianceTextureForPrecomputedLightingEnvironment:(id)environment;
- (id)latlongTextureForCubemap:(id)cubemap pixelFormat:(unint64_t)format renderContext:(id)context needsMipmap:(BOOL)mipmap;
- (id)lazyMTKTextureLoader;
- (id)newComputePipelineStateForDesc:(id *)desc library:(id)library;
- (id)newComputePipelineStateWithFunctionName:(id)name;
- (id)newComputePipelineStateWithFunctionName:(id)name constantValues:(id)values;
- (id)newComputePipelineStateWithFunctionName:(id)name library:(id)library constantValues:(id)values;
- (id)newCubemapTextureForLatlongTexture:(id)texture pixelFormat:(unint64_t)format engineContext:(__C3DEngineContext *)context needsMipmap:(BOOL)mipmap;
- (id)newRadianceTextureForEnvironmentTexture:(id)texture engineContext:(__C3DEngineContext *)context cpuAccessible:(BOOL)accessible commandBuffer:(id)buffer;
- (id)newRenderPipelineStateWithDesc:(id *)desc;
- (id)newTextureUsingMTKTextureLoaderWithData:(id)data options:(id)options;
- (id)newTextureUsingMTKTextureLoaderWithURL:(id)l options:(id)options;
- (id)newTextureWithDescriptor:(id)descriptor;
- (id)radianceTextureForEnvironmentTexture:(id)texture engineContext:(__C3DEngineContext *)context commandBuffer:(id)buffer;
- (id)radianceTextureForPrecomputedLightingEnvironment:(id)environment;
- (id)renderResourceForDeformerStack:(__C3DDeformerStack *)stack node:(__C3DNode *)node dataKind:(unsigned __int8)kind;
- (id)renderResourceForEffectSlot:(__C3DEffectSlot *)slot withEngineContext:(__C3DEngineContext *)context didFallbackToDefaultTexture:(BOOL *)texture;
- (id)renderResourceForImage:(__C3DImage *)image sampler:(__C3DTextureSampler *)sampler options:(int)options engineContext:(__C3DEngineContext *)context didFallbackToDefaultTexture:(BOOL *)texture;
- (id)renderResourceForImageProxy:(__C3DImageProxy *)proxy sampler:(__C3DTextureSampler *)sampler engineContext:(__C3DEngineContext *)context didFallbackToDefaultTexture:(BOOL *)texture;
- (id)renderResourceForMorpher:(__C3DMorpher *)morpher baseMesh:(__C3DMesh *)mesh dataKind:(unsigned __int8)kind provider:(id)provider;
- (id)renderResourceForProgramDesc:(id *)desc renderPassDescriptor:(id)descriptor;
- (id)renderResourceForSkinner:(__C3DSkinner *)skinner baseMesh:(__C3DMesh *)mesh dataKind:(unsigned __int8)kind provider:(id)provider;
- (id)shFromCPU:(id)u commandBuffer:(id)buffer;
- (id)specularDFGDiffuseHammonTextureWithRenderContext:(id)context;
- (id)sphericalHarmonicsForEnvironmentTexture:(id)texture order:(unint64_t)order commandBuffer:(id)buffer;
- (id)unstageTexture:(id)texture commandBuffer:(id)buffer;
- (uint64_t)commandQueue;
- (uint64_t)depthAndStencilStateWithReadWriteDepthDisabled;
- (uint64_t)libraryManager;
- (uint64_t)newPrivateBufferWithBytes:(uint64_t)bytes length:(void *)length blitEncoder:;
- (uint64_t)stats;
- (void)__updateMutableMesh:(__C3DMesh *)mesh withMetalMesh:(id)metalMesh;
- (void)_bakeSphericalHamonicsBasedIrradianceTexture:(id)texture forEnvironmentTexture:(id)environmentTexture renderContext:(id)context applySH:(id)h;
- (void)_bakeStochasticIrradianceTexture:(id)texture forEnvironmentTexture:(id)environmentTexture mipmapLevelForSampling:(unint64_t)sampling renderContext:(id)context;
- (void)_configureComputePipeline:(id)pipeline withDescriptor:(id)descriptor;
- (void)_createPipelineStateWithDescriptor:(id)descriptor desc:(id *)desc pipeline:(id)pipeline;
- (void)_deformerStackDidChange:(id)change;
- (void)_deformerStackWillDie:(id)die;
- (void)_enqueueCopyFromTexture:(id)texture toTexture:(id)toTexture blitEncoder:(SCNMTLBlitCommandEncoder *)encoder generateMipMaps:(BOOL)maps;
- (void)_geometryWillDie:(id)die;
- (void)_imageProxyWillDie:(id)die;
- (void)_imageWillDie:(id)die;
- (void)_materialWillDie:(id)die;
- (void)_meshElementWillDie:(id)die;
- (void)_meshSourceWillDie:(id)die;
- (void)_meshWillDie:(id)die;
- (void)_morphWillDie:(id)die;
- (void)_passWillDie:(id)die;
- (void)_precomputedLightingEnvironmentWillDie:(id)die;
- (void)_programHashCodeWillDie:(id)die;
- (void)_programWillDie:(id)die;
- (void)_removeMatchingProgram:(__C3DFXMetalProgram *)program pass:(__C3DFXPass *)pass;
- (void)_skinWillDie:(id)die;
- (void)colorMatchBiPlanarPixelBufferWithFormatType:(unsigned int)type pixelBufferYCbCrMatrix:(id)matrix pixelBufferColorPrimaries:(id)primaries pixelBufferTransferFunction:(id)function sourceTextureY:(id)y sourceTextureCbCr:(id)cr sourceColorSpace:(CGColorSpace *)space destinationColorSpace:(CGColorSpace *)self0 destinationTexture:(id)self1 renderContext:(id)self2;
- (void)colorMatchSourceTexture:(id)texture sourceColorSpace:(CGColorSpace *)space destinationColorSpace:(CGColorSpace *)colorSpace destinationTexture:(id)destinationTexture renderContext:(id)context;
- (void)commandBufferDidCompleteWithError:(id)error;
- (void)dealloc;
- (void)dispatchForCubemap:(uint64_t)cubemap computeEncoder:(void *)encoder pipelineState:;
- (void)dispatchForTexture:(uint64_t)texture computeEncoder:(void *)encoder pipelineState:;
- (void)newBufferWithBytes:(uint64_t)bytes length:options:;
- (void)newBufferWithLength:(uint64_t)length options:;
- (void)newConstantBufferWithLength:(void *)result options:(int)options;
- (void)removeAllShaders;
- (void)renderResourceForMeshSource:(uint64_t)source;
- (void)renderResourceForRasterizerState:(uint64_t)state reverseZ:;
- (void)renderResourceForSampler:(uint64_t)sampler;
- (void)resetRasterizerStates;
@end

@implementation SCNMTLResourceManager

- (uint64_t)commandQueue
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (id)computeEvaluatorWithContext:(MTLContext *)context srcDesc:(const BufferDescriptor *)desc dstDesc:(const BufferDescriptor *)dstDesc duDesc:(const BufferDescriptor *)duDesc dvDesc:(const BufferDescriptor *)dvDesc
{
  v12 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *&desc->var1) ^ ((0xC6A4A7935BD1E995 * *&desc->var1) >> 47))) ^ 0x4FB7DAE84DD6F2FCLL)) ^ dstDesc->var2);
  v13 = (0xC6A4A7935BD1E995 * (v12 ^ (v12 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v12 ^ (v12 >> 47))) >> 47);
  p_availableOpenSubdivComputeEvaluators = &self->_availableOpenSubdivComputeEvaluators;
  os_unfair_lock_lock(&self->_availableOpenSubdivComputeEvaluators.lock);
  registry = p_availableOpenSubdivComputeEvaluators->registry;
  if (!p_availableOpenSubdivComputeEvaluators->registry)
  {
    SCNResourceRegistrySetup(p_availableOpenSubdivComputeEvaluators, 0);
    registry = p_availableOpenSubdivComputeEvaluators->registry;
  }

  v16 = [(NSMapTable *)registry objectForKey:v13];
  if (!v16)
  {
    v17 = objc_alloc_init(SCNMTLOpenSubdivComputeEvaluator);
    OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::Create(desc, dstDesc, duDesc, dvDesc, context, v18);
  }

  os_unfair_lock_unlock(&p_availableOpenSubdivComputeEvaluators->lock);
  return v16;
}

+ (SCNMTLResourceManager)resourceManagerForDevice:(uint64_t)device
{
  objc_opt_self();
  if (+[SCNMTLResourceManager resourceManagerForDevice:]::onceToken != -1)
  {
    +[SCNMTLResourceManager resourceManagerForDevice:];
  }

  os_unfair_lock_lock(&__resourceManagersLock);
  v3 = [__resourceManagers objectForKey:a2];
  if (!v3)
  {
    v3 = [[SCNMTLResourceManager alloc] initWithDevice:a2];
    [__resourceManagers setObject:v3 forKey:a2];
  }

  os_unfair_lock_unlock(&__resourceManagersLock);
  return v3;
}

uint64_t __50__SCNMTLResourceManager_resourceManagerForDevice___block_invoke()
{
  __resourceManagersLock = 0;
  __resourceManagers = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  +[SCNMTLShaderBindingsGenerator allocateRegistry];

  return +[SCNMTLRenderContext registerBindings];
}

+ (void)unregisterManagerForDevice:(id)device
{
  os_unfair_lock_lock(&__resourceManagersLock);
  [__resourceManagers removeObjectForKey:device];

  os_unfair_lock_unlock(&__resourceManagersLock);
}

- (SCNMTLResourceManager)initWithDevice:(id)device
{
  v16.receiver = self;
  v16.super_class = SCNMTLResourceManager;
  v4 = [(SCNMTLResourceManager *)&v16 init];
  v6 = v4;
  if (v4)
  {
    v4->_device = device;
    if (!C3DUseOneCommandQueuePerDevice(v4, v5))
    {
LABEL_5:
      v6->_libraryManager = [[SCNMTLLibraryManager alloc] initWithDevice:v6->_device];
      v9 = malloc_type_calloc(0x358uLL, 1uLL, 0x100004048B25B04uLL);
      v6->__engineStats = v9;
      [(SCNMTLLibraryManager *)v6->_libraryManager _setEngineStats:v9];
      v6->_bindingsGenerator = objc_alloc_init(SCNMTLShaderBindingsGenerator);
      v6->_commonProfileBuffersAllocator = [[SCNMTLBufferAllocator alloc] initWithDevice:v6->_device fixedSizeElement:256 buffersize:0x40000 name:@"SCNMaterialData"];
      v6->_availablePipelineStates = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
      v6->_availablePipelineStatesLock._os_unfair_lock_opaque = 0;
      v6->_availableLightingSystemReflectionProbeTextures.lock._os_unfair_lock_opaque = 0;
      v6->_availableIrradianceTextures.lock._os_unfair_lock_opaque = 0;
      v6->_availableRadianceTextures.lock._os_unfair_lock_opaque = 0;
      v6->_availableIESTextures.lock._os_unfair_lock_opaque = 0;
      v6->_availableImages.lock._os_unfair_lock_opaque = 0;
      v6->_availableImageProxy.lock._os_unfair_lock_opaque = 0;
      v6->_availableSamplers.lock._os_unfair_lock_opaque = 0;
      v6->_availableMeshes.lock._os_unfair_lock_opaque = 0;
      v6->_availableDeformerStacks.lock._os_unfair_lock_opaque = 0;
      v6->_availableSkinDeformerReadOnlyBuffers.lock._os_unfair_lock_opaque = 0;
      v6->_availableMorphDeformerReadOnlyBuffers.lock._os_unfair_lock_opaque = 0;
      v6->_availableTessellators.lock._os_unfair_lock_opaque = 0;
      v6->_availableComputePipelines.lock._os_unfair_lock_opaque = 0;
      v6->_availableComputePipelinesWithStageDescriptor.lock._os_unfair_lock_opaque = 0;
      v6->_availableColorMatchingComputePipelines.lock._os_unfair_lock_opaque = 0;
      v6->_availableBuffers.lock._os_unfair_lock_opaque = 0;
      v6->_availableMeshSources.lock._os_unfair_lock_opaque = 0;
      v6->_availableMeshElements.lock._os_unfair_lock_opaque = 0;
      v6->_availableRasterizerStates.lock._os_unfair_lock_opaque = 0;
      v6->_availableWireframeMaterials.lock._os_unfair_lock_opaque = 0;
      v6->_availableOpenSubdivComputeEvaluators.lock._os_unfair_lock_opaque = 0;
      v6->_availableShadables.lock._os_unfair_lock_opaque = 0;
      v6->_availableShadablesSearchKey = objc_alloc_init(SCNMTLShadableKey);
      v6->_availableStageDescriptors = objc_alloc_init(MEMORY[0x277CBEB18]);
      v6->_stageDescriptorsLock._os_unfair_lock_opaque = 0;
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v6 selector:sel__meshSourceWillDie_ name:@"kC3DNotificationMeshSourceWillDie" object:0];
      [defaultCenter addObserver:v6 selector:sel__meshElementWillDie_ name:@"kC3DNotificationMeshElementWillDie" object:0];
      [defaultCenter addObserver:v6 selector:sel__meshWillDie_ name:@"kC3DNotificationMeshWillDie" object:0];
      [defaultCenter addObserver:v6 selector:sel__imageWillDie_ name:@"kC3DNotificationImageWillDie" object:0];
      [defaultCenter addObserver:v6 selector:sel__imageProxyWillDie_ name:@"kC3DNotificationImageProxyWillDie" object:0];
      [defaultCenter addObserver:v6 selector:sel__programWillDie_ name:@"kC3DNotificationProgramWillDie" object:0];
      [defaultCenter addObserver:v6 selector:sel__passWillDie_ name:@"kC3DNotificationPassWillDie" object:0];
      [defaultCenter addObserver:v6 selector:sel__materialWillDie_ name:@"kC3DNotificationMaterialWillDie" object:0];
      [defaultCenter addObserver:v6 selector:sel__geometryWillDie_ name:@"kC3DNotificationGeometryWillDie" object:0];
      [defaultCenter addObserver:v6 selector:sel__morphWillDie_ name:@"kC3DNotificationMorphWillDie" object:0];
      [defaultCenter addObserver:v6 selector:sel__skinWillDie_ name:@"kC3DNotificationSkinWillDie" object:0];
      [defaultCenter addObserver:v6 selector:sel__deformerStackWillDie_ name:@"kC3DNotificationDeformerStackWillDie" object:0];
      [defaultCenter addObserver:v6 selector:sel__deformerStackDidChange_ name:@"kC3DNotificationDeformerStackDidChange" object:0];
      [defaultCenter addObserver:v6 selector:sel__programHashCodeWillDie_ name:@"kC3DNotificationProgramHashCodeWillDie" object:0];
      [defaultCenter addObserver:v6 selector:sel__precomputedLightingEnvironmentWillDie_ name:@"kC3DNotificationPrecomputedLightingEnvironmentWillDie" object:0];
      v6->_defaultProgram = C3DFXMetalProgramCreateFromDefaultLibrary(@"debug_vert", @"debug_frag");
      v6->_defaultProgramForTessellation = C3DFXMetalProgramCreateFromDefaultLibrary(@"debug_post_tessellation_vert", @"debug_frag");
      v11 = C3DFXMetalProgramCreateFromDefaultLibrary(@"debug_vert", @"debug_isolate_frag");
      v6->_isolateProgram = v11;
      SharedInstance = C3DNotificationCenterGetSharedInstance(v11, v12);
      C3DNotificationCenterAddObserver(SharedInstance, v6, _rasterizerStateDidDie, @"kC3DNotificationRasterizerStatesDidDie", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      return v6;
    }

    newCommandQueue = [device newCommandQueue];
    if (newCommandQueue)
    {
      v6->_commandQueue = newCommandQueue;
      [(MTLCommandQueue *)newCommandQueue setLabel:@"com.apple.SceneKit"];
      goto LABEL_5;
    }

    v15 = scn_default_log(0, v8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLResourceManager initWithDevice:v15];
    }

    return 0;
  }

  return v6;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  self->_availableLightingSystemReflectionProbeTextures.registry = 0;
  self->_availableIrradianceTextures.registry = 0;

  self->_availableRadianceTextures.registry = 0;
  self->_availableIESTextures.registry = 0;

  self->_availableImages.registry = 0;
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

  [SCNMTLResourceManager unregisterManagerForDevice:self->_device];
  v6.receiver = self;
  v6.super_class = SCNMTLResourceManager;
  [(SCNMTLResourceManager *)&v6 dealloc];
}

- (void)_meshSourceWillDie:(id)die
{
  object = [die object];
  if (C3DGenericSourceIsPrimary(object, v5))
  {
    Data = C3DMeshSourceGetData();
    if (Data)
    {
      v7 = Data;
      if (CFDataGetLength(Data))
      {
        os_unfair_lock_lock(&self->_availableMeshSources.lock);
        [(NSMapTable *)self->_availableMeshSources.registry removeObjectForKey:v7];

        os_unfair_lock_unlock(&self->_availableMeshSources.lock);
      }
    }
  }
}

- (void)_meshElementWillDie:(id)die
{
  object = [die object];
  os_unfair_lock_lock(&self->_availableMeshElements.lock);
  v5 = [(NSMapTable *)self->_availableMeshElements.registry objectForKey:object];
  if (![-[SCNMTLMeshElement indexBuffer](v5) decrementUsedCount])
  {
    os_unfair_lock_lock(&self->_availableBuffers.lock);
    -[NSMapTable removeObjectForKey:](self->_availableBuffers.registry, "removeObjectForKey:", [-[SCNMTLMeshElement indexBuffer](v5) dataSource]);
    os_unfair_lock_unlock(&self->_availableBuffers.lock);
  }

  [(NSMapTable *)self->_availableMeshElements.registry removeObjectForKey:object];

  os_unfair_lock_unlock(&self->_availableMeshElements.lock);
}

- (void)_meshWillDie:(id)die
{
  object = [die object];
  os_unfair_lock_lock(&self->_availableMeshes.lock);
  [(NSMapTable *)self->_availableMeshes.registry removeObjectForKey:object];
  [(NSMapTable *)self->_availableMeshes.registry removeObjectForKey:object | 1];
  os_unfair_lock_unlock(&self->_availableMeshes.lock);
  os_unfair_lock_lock(&self->_availableSkinDeformerReadOnlyBuffers.lock);
  registry = self->_availableSkinDeformerReadOnlyBuffers.registry;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__SCNMTLResourceManager__meshWillDie___block_invoke;
  v8[3] = &__block_descriptor_40_e27_v32__0_8__NSMapTable_16_B24l;
  v8[4] = object;
  [(NSMapTable *)registry scn_enumerateKeysAndValuesUsingBlock:v8];
  os_unfair_lock_unlock(&self->_availableSkinDeformerReadOnlyBuffers.lock);
  os_unfair_lock_lock(&self->_availableMorphDeformerReadOnlyBuffers.lock);
  v6 = self->_availableMorphDeformerReadOnlyBuffers.registry;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SCNMTLResourceManager__meshWillDie___block_invoke_2;
  v7[3] = &__block_descriptor_40_e27_v32__0_8__NSMapTable_16_B24l;
  v7[4] = object;
  [(NSMapTable *)v6 scn_enumerateKeysAndValuesUsingBlock:v7];
  os_unfair_lock_unlock(&self->_availableMorphDeformerReadOnlyBuffers.lock);
}

uint64_t __38__SCNMTLResourceManager__meshWillDie___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 removeObjectForKey:*(a1 + 32)];
  v5 = *(a1 + 32) | 1;

  return [a3 removeObjectForKey:v5];
}

uint64_t __38__SCNMTLResourceManager__meshWillDie___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 removeObjectForKey:*(a1 + 32)];
  v5 = *(a1 + 32) | 1;

  return [a3 removeObjectForKey:v5];
}

- (void)_morphWillDie:(id)die
{
  object = [die object];
  os_unfair_lock_lock(&self->_availableMorphDeformerReadOnlyBuffers.lock);
  [(NSMapTable *)self->_availableMorphDeformerReadOnlyBuffers.registry removeObjectForKey:object];

  os_unfair_lock_unlock(&self->_availableMorphDeformerReadOnlyBuffers.lock);
}

- (void)_programHashCodeWillDie:(id)die
{
  object = [die object];
  os_unfair_lock_lock(&self->_availableWireframeMaterials.lock);
  [(NSMapTable *)self->_availableWireframeMaterials.registry removeObjectForKey:object];

  os_unfair_lock_unlock(&self->_availableWireframeMaterials.lock);
}

- (void)_skinWillDie:(id)die
{
  object = [die object];
  os_unfair_lock_lock(&self->_availableSkinDeformerReadOnlyBuffers.lock);
  [(NSMapTable *)self->_availableSkinDeformerReadOnlyBuffers.registry removeObjectForKey:object];

  os_unfair_lock_unlock(&self->_availableSkinDeformerReadOnlyBuffers.lock);
}

- (void)_deformerStackWillDie:(id)die
{
  os_unfair_lock_lock(&self->_availableDeformerStacks.lock);
  object = [die object];
  [(NSMapTable *)self->_availableDeformerStacks.registry removeObjectForKey:object];
  [(NSMapTable *)self->_availableDeformerStacks.registry removeObjectForKey:object | 1];

  os_unfair_lock_unlock(&self->_availableDeformerStacks.lock);
}

- (void)_deformerStackDidChange:(id)change
{
  os_unfair_lock_lock(&self->_availableDeformerStacks.lock);
  object = [change object];
  v7 = C3DDeformerStackWantsGPU(object, v6);
  registry = self->_availableDeformerStacks.registry;
  if (v7)
  {
    v9 = [(NSMapTable *)registry objectForKey:object];
    v10 = [(NSMapTable *)self->_availableDeformerStacks.registry objectForKey:object | 1];
    [(SCNMTLDeformerStack *)v9 invalidate];
    [(SCNMTLDeformerStack *)v10 invalidate];
  }

  else
  {
    [(NSMapTable *)registry removeObjectForKey:object];
    [(NSMapTable *)self->_availableDeformerStacks.registry removeObjectForKey:object | 1];
  }

  os_unfair_lock_unlock(&self->_availableDeformerStacks.lock);
}

- (void)_imageWillDie:(id)die
{
  object = [die object];
  os_unfair_lock_lock(&self->_availableImages.lock);
  for (i = 0; i != 16; ++i)
  {
    v6 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * (i ^ object ^ 0x1A929E4D6F47A654)) ^ ((0xC6A4A7935BD1E995 * (i ^ object ^ 0x1A929E4D6F47A654)) >> 47));
    v7 = v6 ^ (v6 >> 47);
    v8 = [(NSMapTable *)self->_availableImages.registry objectForKey:v7];
    if (v8)
    {
      v9 = v8;
      os_unfair_lock_lock(&self->_availableIrradianceTextures.lock);
      [(NSMapTable *)self->_availableIrradianceTextures.registry removeObjectForKey:v9];
      os_unfair_lock_unlock(&self->_availableIrradianceTextures.lock);
      os_unfair_lock_lock(&self->_availableRadianceTextures.lock);
      [(NSMapTable *)self->_availableRadianceTextures.registry removeObjectForKey:v9];
      os_unfair_lock_unlock(&self->_availableRadianceTextures.lock);
      [(NSMapTable *)self->_availableImages.registry removeObjectForKey:v7];
    }
  }

  os_unfair_lock_unlock(&self->_availableImages.lock);
}

- (void)_imageProxyWillDie:(id)die
{
  object = [die object];
  os_unfair_lock_lock(&self->_availableImageProxy.lock);
  [(NSMapTable *)self->_availableImageProxy.registry removeObjectForKey:object];

  os_unfair_lock_unlock(&self->_availableImageProxy.lock);
}

- (void)_precomputedLightingEnvironmentWillDie:(id)die
{
  object = [die object];
  os_unfair_lock_lock(&self->_availableIrradianceTextures.lock);
  [(NSMapTable *)self->_availableIrradianceTextures.registry removeObjectForKey:object];
  os_unfair_lock_unlock(&self->_availableIrradianceTextures.lock);
  os_unfair_lock_lock(&self->_availableRadianceTextures.lock);
  [(NSMapTable *)self->_availableRadianceTextures.registry removeObjectForKey:object];

  os_unfair_lock_unlock(&self->_availableRadianceTextures.lock);
}

- (void)_removeMatchingProgram:(__C3DFXMetalProgram *)program pass:(__C3DFXPass *)pass
{
  context[0] = program;
  context[1] = pass;
  theArray = 0;
  os_unfair_lock_lock(&self->_availablePipelineStatesLock);
  CFDictionaryApplyFunction(self->_availablePipelineStates, __removeMatchingProgram, context);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        v9 = CFDictionaryGetValue(self->_availablePipelineStates, ValueAtIndex);
        CFDictionaryRemoveValue(self->_availablePipelineStates, ValueAtIndex);
      }
    }

    CFRelease(theArray);
  }

  os_unfair_lock_unlock(&self->_availablePipelineStatesLock);
}

- (void)_programWillDie:(id)die
{
  v26 = *MEMORY[0x277D85DE8];
  object = [die object];
  os_unfair_lock_lock(&self->_availableShadables.lock);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  registry = self->_availableShadables.registry;
  v6 = [(NSMapTable *)registry countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(registry);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if (*(*(v11 + 24) + 16) == object)
        {
          if (!v8)
          {
            v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v8 addObject:v11];
        }
      }

      v7 = [(NSMapTable *)registry countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
    if (v8)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v12 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v17;
        do
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v17 != v14)
            {
              objc_enumerationMutation(v8);
            }

            [(NSMapTable *)self->_availableShadables.registry removeObjectForKey:*(*(&v16 + 1) + 8 * j)];
          }

          v13 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        }

        while (v13);
      }
    }
  }

  os_unfair_lock_unlock(&self->_availableShadables.lock);
  [(SCNMTLResourceManager *)self _removeMatchingProgram:object pass:0];
}

- (void)_passWillDie:(id)die
{
  v26 = *MEMORY[0x277D85DE8];
  object = [die object];
  os_unfair_lock_lock(&self->_availableShadables.lock);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  registry = self->_availableShadables.registry;
  v6 = [(NSMapTable *)registry countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(registry);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if (*(*(v11 + 24) + 24) == object)
        {
          if (!v8)
          {
            v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v8 addObject:v11];
        }
      }

      v7 = [(NSMapTable *)registry countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
    if (v8)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v12 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v17;
        do
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v17 != v14)
            {
              objc_enumerationMutation(v8);
            }

            [(NSMapTable *)self->_availableShadables.registry removeObjectForKey:*(*(&v16 + 1) + 8 * j)];
          }

          v13 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        }

        while (v13);
      }
    }
  }

  os_unfair_lock_unlock(&self->_availableShadables.lock);
  [(SCNMTLResourceManager *)self _removeMatchingProgram:0 pass:object];
}

- (void)_materialWillDie:(id)die
{
  v26 = *MEMORY[0x277D85DE8];
  object = [die object];
  os_unfair_lock_lock(&self->_availableShadables.lock);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  registry = self->_availableShadables.registry;
  v6 = [(NSMapTable *)registry countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(registry);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if (*(v11 + 8) == object)
        {
          if (!v8)
          {
            v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v8 addObject:v11];
        }
      }

      v7 = [(NSMapTable *)registry countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
    if (v8)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v12 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v17;
        do
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v17 != v14)
            {
              objc_enumerationMutation(v8);
            }

            [(NSMapTable *)self->_availableShadables.registry removeObjectForKey:*(*(&v16 + 1) + 8 * j)];
          }

          v13 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        }

        while (v13);
      }
    }
  }

  os_unfair_lock_unlock(&self->_availableShadables.lock);
}

- (void)_geometryWillDie:(id)die
{
  v26 = *MEMORY[0x277D85DE8];
  object = [die object];
  os_unfair_lock_lock(&self->_availableShadables.lock);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  registry = self->_availableShadables.registry;
  v6 = [(NSMapTable *)registry countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(registry);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if (*(v11 + 16) == object)
        {
          if (!v8)
          {
            v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v8 addObject:v11];
        }
      }

      v7 = [(NSMapTable *)registry countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
    if (v8)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v12 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v17;
        do
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v17 != v14)
            {
              objc_enumerationMutation(v8);
            }

            [(NSMapTable *)self->_availableShadables.registry removeObjectForKey:*(*(&v16 + 1) + 8 * j)];
          }

          v13 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        }

        while (v13);
      }
    }
  }

  os_unfair_lock_unlock(&self->_availableShadables.lock);
  os_unfair_lock_lock(&self->_availableTessellators.lock);
  [(NSMapTable *)self->_availableTessellators.registry removeObjectForKey:object];
  os_unfair_lock_unlock(&self->_availableTessellators.lock);
}

- (id)_bufferForMTLBuffer:(void *)buffer
{
  os_unfair_lock_lock(&self->_availableBuffers.lock);
  registry = self->_availableBuffers.registry;
  if (!registry)
  {
    registry = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:258 valueOptions:0 capacity:100];
    self->_availableBuffers.registry = registry;
  }

  v6 = [(NSMapTable *)registry objectForKey:buffer];
  if (v6)
  {
    v7 = v6;
    [(SCNMTLBuffer *)v6 incrementUsedCount];
  }

  else
  {
    v7 = objc_alloc_init(SCNMTLBuffer);
    [(SCNMTLBuffer *)v7 setBuffer:buffer];
    [(SCNMTLBuffer *)v7 setDataSource:buffer];
    [(SCNMTLBuffer *)v7 incrementUsedCount];
    [(NSMapTable *)self->_availableBuffers.registry setObject:v7 forKey:buffer];
  }

  os_unfair_lock_unlock(&self->_availableBuffers.lock);
  return v7;
}

- (id)_bufferForData:(__CFData *)data bytesPerIndex:(unint64_t)index
{
  v20[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_availableBuffers.lock);
  registry = self->_availableBuffers.registry;
  if (!registry)
  {
    registry = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:258 valueOptions:0 capacity:100];
    self->_availableBuffers.registry = registry;
  }

  v8 = [(NSMapTable *)registry objectForKey:data];
  if (v8)
  {
    v9 = v8;
    [(SCNMTLBuffer *)v8 incrementUsedCount];
  }

  else
  {
    v9 = objc_alloc_init(SCNMTLBuffer);
    BytePtr = CFDataGetBytePtr(data);
    Length = CFDataGetLength(data);
    if (BytePtr)
    {
      v12 = Length;
      if (index == 1)
      {
        v13 = 2 * Length;
        v14 = MEMORY[0x28223BE20](Length);
        if (v12)
        {
          v15 = (v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
          do
          {
            v16 = *BytePtr++;
            *v15++ = v16;
            --v12;
          }

          while (v12);
        }

        BytePtr = [MTLDevice newBufferWithBytes:"newBufferWithBytes:length:options:" length:v14 options:?];
        engineStats = self->__engineStats;
        ++engineStats->iboCount;
        engineStats->iboMemory += v13;
        [(SCNMTLBuffer *)v9 setOffset:0];
      }

      else
      {
        BytePtr = [(MTLDevice *)self->_device newBufferWithBytes:BytePtr length:Length options:0];
        v18 = self->__engineStats;
        ++v18->iboCount;
        v18->iboMemory += v12;
        [(SCNMTLBuffer *)v9 setOffset:0];
      }
    }

    [(SCNMTLBuffer *)v9 setBuffer:BytePtr];

    [(SCNMTLBuffer *)v9 setDataSource:data];
    [(SCNMTLBuffer *)v9 incrementUsedCount];
    [(NSMapTable *)self->_availableBuffers.registry setObject:v9 forKey:data];
  }

  os_unfair_lock_unlock(&self->_availableBuffers.lock);
  return v9;
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

  v14 = scn_default_log(self, a2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    _fillVertexDescriptor();
  }

  semanticCopy = 14;
LABEL_20:
  [objc_msgSend(objc_msgSend(descriptor "attributes")];
  [objc_msgSend(objc_msgSend(descriptor "attributes")];
  [objc_msgSend(objc_msgSend(descriptor "attributes")];
  [objc_msgSend(objc_msgSend(descriptor "layouts")];
  [objc_msgSend(objc_msgSend(descriptor "layouts")];
}

- (void)__updateMutableMesh:(__C3DMesh *)mesh withMetalMesh:(id)metalMesh
{
  MutabilityTimeStamp = C3DMeshGetMutabilityTimeStamp(mesh, a2);
  if (MutabilityTimeStamp != [(SCNMTLOpenSubdivComputeEvaluator *)metalMesh computeEvaluator])
  {
    [(SCNMTLMesh *)metalMesh setMutabilityTimestamp:?];
    os_unfair_lock_lock(&self->_availableMeshSources.lock);
    if (!self->_availableMeshSources.registry)
    {
      self->_availableMeshSources.registry = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:258 valueOptions:0 capacity:100];
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__SCNMTLResourceManager___updateMutableMesh_withMetalMesh___block_invoke;
    v8[3] = &unk_2782FC7D8;
    v8[4] = self;
    v8[5] = metalMesh;
    C3DMeshApplySources(mesh, 1, v8);
    os_unfair_lock_unlock(&self->_availableMeshSources.lock);
  }
}

void *__59__SCNMTLResourceManager___updateMutableMesh_withMetalMesh___block_invoke(uint64_t a1, uint64_t a2)
{
  result = C3DMeshSourceIsMutable(a2);
  if (result)
  {
    result = C3DMeshSourceGetMTLBuffer();
    if (!result)
    {
      Data = C3DMeshSourceGetData();
      v5 = [*(*(a1 + 32) + 216) objectForKey:Data];
      if ([-[SCNMTLMesh buffers](*(a1 + 40)) indexOfObject:v5] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = scn_default_log(0x7FFFFFFFFFFFFFFFLL, v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          __59__SCNMTLResourceManager___updateMutableMesh_withMetalMesh___block_invoke_cold_1();
        }
      }

      BytePtr = CFDataGetBytePtr(Data);
      Length = CFDataGetLength(Data);
      v10 = [v5 length];
      if (Length != v10)
      {
        v12 = scn_default_log(v10, v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          __59__SCNMTLResourceManager___updateMutableMesh_withMetalMesh___block_invoke_cold_2(Length, v5, v12);
        }
      }

      return memcpy([v5 contents], BytePtr, Length);
    }
  }

  return result;
}

- (SCNMTLMesh)renderResourceForMesh:(uint64_t)mesh dataKind:
{
  *(&v35[1] + 4) = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0;
  }

  v6 = mesh == 0;
  os_unfair_lock_lock((self + 208));
  v7 = *(self + 200);
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:258 valueOptions:0 capacity:100];
    *(self + 200) = v7;
  }

  v8 = [v7 objectForKey:v6 | a2];
  if (v8)
  {
    v10 = v8;
    if (C3DMeshIsMutable(a2, v9))
    {
      [self __updateMutableMesh:a2 withMetalMesh:v10];
    }
  }

  else
  {
    v10 = objc_alloc_init(SCNMTLMesh);
    C3DEntityGetName(a2, v11);
    vertexDescriptor = [MEMORY[0x277CD7090] vertexDescriptor];
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:C3DMeshGetSourcesCount(a2)];
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __56__SCNMTLResourceManager_renderResourceForMesh_dataKind___block_invoke;
    v27[3] = &unk_2782FC800;
    meshCopy = mesh;
    v27[7] = vertexDescriptor;
    v27[8] = &v30;
    v29 = mesh == 0;
    v27[4] = v10;
    v27[5] = self;
    v27[6] = v13;
    C3DMeshApplySources(a2, mesh, v27);
    if (mesh == 1)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __56__SCNMTLResourceManager_renderResourceForMesh_dataKind___block_invoke_2;
      v26[3] = &unk_2782FC828;
      v26[5] = v13;
      v26[6] = &v30;
      v26[4] = vertexDescriptor;
      C3DMeshApplySources(a2, 1, v26);
    }

    [(SCNMTLMesh *)v10 setVertexDescriptor:vertexDescriptor];
    [(SCNMTLMesh *)v10 setBuffers:v13];
    [(SCNMTLMesh *)v10 setVolatileStride:?];

    ElementsCount = C3DMeshGetElementsCount(a2, v14);
    v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:ElementsCount];
    if (ElementsCount >= 1)
    {
      for (i = 0; i != ElementsCount; ++i)
      {
        ElementAtIndex = C3DMeshGetElementAtIndex(a2, i, mesh);
        if (ElementAtIndex)
        {
          Type = C3DMeshElementGetType(ElementAtIndex, v19);
          v21 = C3DMeshElementTypeMapsToMTLPrimitiveType(Type);
          if (v21)
          {
            [v16 addObject:-[SCNMTLResourceManager renderResourceForMeshElement:](self)];
          }

          else if (mesh)
          {
            v23 = scn_default_log(v21, v22);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
            {
              [(SCNMTLResourceManager *)v34 renderResourceForMesh:v35 dataKind:v23];
            }
          }
        }
      }
    }

    [(SCNMTLMesh *)v10 setElements:v16];

    [*(self + 200) setObject:v10 forKey:v6 | a2];
    _Block_object_dispose(&v30, 8);
  }

  v24 = v10;
  os_unfair_lock_unlock((self + 208));
  return v10;
}

uint64_t __56__SCNMTLResourceManager_renderResourceForMesh_dataKind___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != 7)
  {
    v5 = a3;
    v7 = result;
    result = [(SCNMTLMesh *)*(result + 32) verticesCount];
    if (!result)
    {
      Count = C3DMeshSourceGetCount(a2, v8);
      result = [(SCNMTLMesh *)*(v7 + 32) setVerticesCount:?];
    }

    if ((v5 == 3 || a4 <= 0) && (v5 != 3 || a4 <= 7))
    {
      if (*(v7 + 72) == 1 && (result = C3DMeshSourceIsVolatile(a2), result))
      {
        Accessor = C3DMeshSourceGetAccessor(a2, v10, v11, v12, v13, v14, v15, v16);
        C3DSourceAccessorSetOffset(Accessor, *(*(*(v7 + 64) + 8) + 24));
        result = C3DSceneSourceGetLibrary(Accessor);
        *(*(*(v7 + 64) + 8) + 24) += result;
      }

      else if (!v5 || (*(v7 + 73) & 1) == 0)
      {
        return __56__SCNMTLResourceManager_renderResourceForMesh_dataKind___block_invoke_cold_1(v7, a2, v5, a4);
      }
    }
  }

  return result;
}

void *__56__SCNMTLResourceManager_renderResourceForMesh_dataKind___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = C3DMeshSourceIsVolatile(a2);
  if (result)
  {
    Accessor = C3DMeshSourceGetAccessor(a2, v9, v10, v11, v12, v13, v14, v15);
    C3DSourceAccessorSetStride(Accessor, *(*(*(a1 + 48) + 8) + 24));
    v17 = *(a1 + 32);
    v18 = [*(a1 + 40) count];

    return _fillVertexDescriptor(v17, a2, a3, a4, v18, v19, v20, v21);
  }

  return result;
}

- (id)renderResourceForDeformerStack:(__C3DDeformerStack *)stack node:(__C3DNode *)node dataKind:(unsigned __int8)kind
{
  v9 = kind == 0;
  os_unfair_lock_lock(&self->_availableDeformerStacks.lock);
  registry = self->_availableDeformerStacks.registry;
  if (!registry)
  {
    registry = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:258 valueOptions:0 capacity:100];
    self->_availableDeformerStacks.registry = registry;
  }

  stack = [(NSMapTable *)registry objectForKey:v9 | stack];
  if (!stack)
  {
    stack = [[SCNMTLDeformerStack alloc] initWithDeformerStack:stack node:node dataKind:kind resourceManager:self];
    [(NSMapTable *)self->_availableDeformerStacks.registry setObject:stack forKey:v9 | stack];
  }

  os_unfair_lock_unlock(&self->_availableDeformerStacks.lock);
  return stack;
}

- (id)renderResourceForSkinner:(__C3DSkinner *)skinner baseMesh:(__C3DMesh *)mesh dataKind:(unsigned __int8)kind provider:(id)provider
{
  kindCopy = kind;
  os_unfair_lock_lock(&self->_availableSkinDeformerReadOnlyBuffers.lock);
  if (!self->_availableSkinDeformerReadOnlyBuffers.registry)
  {
    self->_availableSkinDeformerReadOnlyBuffers.registry = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:258 valueOptions:0 capacity:100];
  }

  OverrideMaterial = C3DGeometryGetOverrideMaterial(skinner);
  v12 = [(NSMapTable *)self->_availableSkinDeformerReadOnlyBuffers.registry objectForKey:OverrideMaterial];
  if (!v12)
  {
    v12 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:258 valueOptions:0 capacity:1];
    [(NSMapTable *)self->_availableSkinDeformerReadOnlyBuffers.registry setObject:v12 forKey:OverrideMaterial];
  }

  v13 = (kindCopy == 0) | mesh;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = [v12 objectForKey:v13];
  if (!v20[5])
  {
    registry = self->_availableSkinDeformerReadOnlyBuffers.registry;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __77__SCNMTLResourceManager_renderResourceForSkinner_baseMesh_dataKind_provider___block_invoke;
    v18[3] = &unk_2782FC850;
    v18[6] = &v19;
    v18[7] = OverrideMaterial;
    v18[4] = v12;
    v18[5] = v13;
    [(NSMapTable *)registry scn_enumerateKeysAndValuesUsingBlock:v18];
    v15 = v20[5];
    if (!v15)
    {
      v15 = (*(provider + 2))(provider);
      v20[5] = v15;
    }

    [v12 setObject:v15 forKey:v13];
  }

  os_unfair_lock_unlock(&self->_availableSkinDeformerReadOnlyBuffers.lock);
  v16 = v20[5];
  _Block_object_dispose(&v19, 8);
  return v16;
}

uint64_t __77__SCNMTLResourceManager_renderResourceForSkinner_baseMesh_dataKind_provider___block_invoke(uint64_t result, void *a2, void *a3, _BYTE *a4)
{
  if (*(result + 32) != a3)
  {
    v6 = result;
    result = [SCNMTLSkinDeformer canSkin:a2 reuseRenderResourceForSkin:?];
    if (result)
    {
      result = [a3 objectForKey:v6[5]];
      *(*(v6[6] + 8) + 40) = result;
      if (*(*(v6[6] + 8) + 40))
      {
        *a4 = 1;
      }
    }
  }

  return result;
}

- (id)renderResourceForMorpher:(__C3DMorpher *)morpher baseMesh:(__C3DMesh *)mesh dataKind:(unsigned __int8)kind provider:(id)provider
{
  kindCopy = kind;
  os_unfair_lock_lock(&self->_availableMorphDeformerReadOnlyBuffers.lock);
  if (!self->_availableMorphDeformerReadOnlyBuffers.registry)
  {
    self->_availableMorphDeformerReadOnlyBuffers.registry = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:258 valueOptions:0 capacity:100];
  }

  OverrideMaterial = C3DGeometryGetOverrideMaterial(morpher);
  v12 = [(NSMapTable *)self->_availableMorphDeformerReadOnlyBuffers.registry objectForKey:OverrideMaterial];
  if (!v12)
  {
    v12 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:258 valueOptions:0 capacity:1];
    [(NSMapTable *)self->_availableMorphDeformerReadOnlyBuffers.registry setObject:v12 forKey:OverrideMaterial];
  }

  v13 = (kindCopy == 0) | mesh;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = [v12 objectForKey:v13];
  if (!v20[5])
  {
    registry = self->_availableMorphDeformerReadOnlyBuffers.registry;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __77__SCNMTLResourceManager_renderResourceForMorpher_baseMesh_dataKind_provider___block_invoke;
    v18[3] = &unk_2782FC850;
    v18[6] = &v19;
    v18[7] = OverrideMaterial;
    v18[4] = v12;
    v18[5] = v13;
    [(NSMapTable *)registry scn_enumerateKeysAndValuesUsingBlock:v18];
    v15 = v20[5];
    if (!v15)
    {
      v15 = (*(provider + 2))(provider);
      v20[5] = v15;
    }

    [v12 setObject:v15 forKey:v13];
  }

  os_unfair_lock_unlock(&self->_availableMorphDeformerReadOnlyBuffers.lock);
  v16 = v20[5];
  _Block_object_dispose(&v19, 8);
  return v16;
}

void *__77__SCNMTLResourceManager_renderResourceForMorpher_baseMesh_dataKind_provider___block_invoke(void *result, uint64_t a2, void *a3, _BYTE *a4)
{
  if (result[4] != a3)
  {
    v6 = result;
    result = +[SCNMTLMorphDeformer canMorph:reuseRenderResourceForMorph:];
    if (result)
    {
      result = [a3 objectForKey:v6[5]];
      *(*(v6[6] + 8) + 40) = result;
      if (*(*(v6[6] + 8) + 40))
      {
        *a4 = 1;
      }
    }
  }

  return result;
}

- (SCNMTLShadable)renderResourceForMaterial:(__C3DGeometry *)material geometry:(SCNMTLRenderPipeline *)geometry renderPipeline:(uint64_t)pipeline engineContext:
{
  v225 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  if (!self)
  {
    return 0;
  }

  if (!a2)
  {
    v6 = scn_default_log(self, 0);
    self = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (self)
    {
      [SCNMTLResourceManager renderResourceForMaterial:geometry:renderPipeline:engineContext:];
    }
  }

  if (!geometry)
  {
    v7 = scn_default_log(self, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [SCNMTLResourceManager renderResourceForMaterial:geometry:renderPipeline:engineContext:];
    }
  }

  v186 = a2;
  ValueStorageModificationCount = C3DEntityGetValueStorageModificationCount(a2);
  materialCopy3 = material;
  if (material)
  {
    v10 = C3DEntityGetValueStorageModificationCount(material);
    materialCopy3 = material;
  }

  else
  {
    v10 = 0;
  }

  v11 = selfCopy;
  os_unfair_lock_lock((selfCopy + 416));
  if (!*(selfCopy + 408))
  {
    v11 = selfCopy;
    *(selfCopy + 408) = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:100];
    materialCopy3 = material;
  }

  *(*(v11 + 424) + 8) = v186;
  *(*(v11 + 424) + 16) = materialCopy3;
  *(*(v11 + 424) + 24) = geometry;
  v176 = [*(v11 + 408) objectForKey:*(v11 + 424)];
  if (!v176 || ValueStorageModificationCount != [(SCNMTLShadable *)v176 materialModificationCount]|| v10 != [(SCNMTLShadable *)v176 geometryModificationCount])
  {
    v176 = objc_alloc_init(SCNMTLShadable);
    [(SCNMTLShadable *)v176 setMaterialModificationCount:ValueStorageModificationCount];
    [(SCNMTLShadable *)v176 setGeometryModificationCount:v10];
    CommonProfileIfNoTechnique = C3DMaterialGetCommonProfileIfNoTechnique(v186, v12);
    v201 = 0u;
    v202 = 0u;
    v199 = 0u;
    v200 = 0u;
    obj = [(SCNMTLRenderPipeline *)geometry shadableBufferBindings];
    v181 = [(NSArray *)obj countByEnumeratingWithState:&v199 objects:v224 count:16];
    if (!v181)
    {
      goto LABEL_149;
    }

    v180 = *v200;
    while (1)
    {
      v183 = 0;
      do
      {
        if (*v200 != v180)
        {
          objc_enumerationMutation(obj);
        }

        v184 = *(*(&v199 + 1) + 8 * v183);
        if ([v184 needsRenderResource])
        {
          name = [v184 name];
          type = [v184 type];
          if (type != 3)
          {
            if (type != 2)
            {
              if (type)
              {
                goto LABEL_144;
              }

              if (CommonProfileIfNoTechnique && objc_msgSend_isEqualToString_(name))
              {
                DWORD2(v218) = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, 2);
                HIDWORD(v218) = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, 3);
                DWORD1(v221) = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, 12);
                DWORD2(v221) = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, 13);
                HIDWORD(v221) = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, 14);
                LODWORD(v219) = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, 7);
                LODWORD(v220) = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, 4);
                DWORD1(v220) = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, 6);
                DWORD2(v220) = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, 5);
                HIDWORD(v220) = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, 10);
                LODWORD(v221) = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, 11);
                LODWORD(v222) = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, 15);
                *buf = C3DEffectCommonProfileGetColorModulatedByIntensity(CommonProfileIfNoTechnique, 2);
                *&buf[8] = v16;
                *&buf[16] = C3DEffectCommonProfileGetColorModulatedByIntensity(CommonProfileIfNoTechnique, 3);
                *&buf[24] = v17;
                LODWORD(v216) = C3DEffectCommonProfileGetColorLuminanceModulatedByIntensity(CommonProfileIfNoTechnique, 12);
                DWORD1(v216) = C3DEffectCommonProfileGetColorLuminanceModulatedByIntensity(CommonProfileIfNoTechnique, 13);
                *&v213 = C3DEffectCommonProfileGetColorModulatedByIntensity(CommonProfileIfNoTechnique, 4);
                *(&v213 + 1) = v18;
                *&v214 = C3DEffectCommonProfileGetColorModulatedByIntensity(CommonProfileIfNoTechnique, 6);
                *(&v214 + 1) = v19;
                *&v215 = C3DEffectCommonProfileGetColorModulatedByIntensity(CommonProfileIfNoTechnique, 5);
                *(&v215 + 1) = v20;
                LODWORD(v218) = C3DEffectCommonProfileGetColorLuminanceModulatedByIntensity(CommonProfileIfNoTechnique, 10);
                DWORD1(v218) = C3DEffectCommonProfileGetColorLuminanceModulatedByIntensity(CommonProfileIfNoTechnique, 11);
                if (C3DEffectCommonProfileIsUsingAmbientOcclusion(CommonProfileIfNoTechnique))
                {
                  v21 = 8;
                }

                else
                {
                  v21 = 1;
                }

                *&v210 = C3DEffectCommonProfileGetColorModulatedByIntensity(CommonProfileIfNoTechnique, v21);
                *(&v210 + 1) = v22;
                DWORD1(v219) = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, v21);
                *&v212 = C3DEffectCommonProfileGetColorModulatedByIntensity(CommonProfileIfNoTechnique, 9);
                *(&v212 + 1) = v23;
                HIDWORD(v219) = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, 9);
                if (C3DWasLinkedBeforeMajorOSYear2017() && C3DEffectCommonProfileIsUsingSelfIllumination(CommonProfileIfNoTechnique))
                {
                  Intensity = 0.0;
                  v211 = 0uLL;
                }

                else
                {
                  *&v211 = C3DEffectCommonProfileGetColorModulatedByIntensity(CommonProfileIfNoTechnique, 0);
                  *(&v211 + 1) = v71;
                  Intensity = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, 0);
                }

                *(&v219 + 2) = Intensity;
                *(&v222 + 1) = C3DEffectCommonProfileGetFloatProperty(CommonProfileIfNoTechnique, 16) * 128.0;
                DWORD2(v222) = C3DEffectCommonProfileGetSelfIlluminationOcclusion(CommonProfileIfNoTechnique);
                HIDWORD(v222) = C3DEffectCommonProfileGetFloatProperty(CommonProfileIfNoTechnique, 18);
                FloatProperty = C3DEffectCommonProfileGetFloatProperty(CommonProfileIfNoTechnique, 19);
                v73 = C3DEffectCommonProfileGetFloatProperty(CommonProfileIfNoTechnique, 20);
                v74 = 0;
                *&v75 = ((1.0 - FloatProperty) * (1.0 - FloatProperty)) / ((FloatProperty + 1.0) * (FloatProperty + 1.0));
                *(&v75 + 1) = 1.0 - *&v75;
                *(&v75 + 2) = v73;
                v223 = v75;
                memset(v208, 0, sizeof(v208));
                v195 = 0;
                v196 = &v195;
                v197 = 0x2020000000;
                v198 = 0;
                do
                {
                  EffectSlot = C3DEffectCommonProfileGetEffectSlot(CommonProfileIfNoTechnique, v74, 0);
                  v78 = EffectSlot;
                  if (EffectSlot && C3DEffectSlotHasImageOrTexture(EffectSlot, v77) && C3DKeyframeControllerHasInterpolationModesPerKey(v78))
                  {
                    ImageTransform = C3DEffectSlotGetImageTransform(v78, v79);
                    v81 = v196[3];
                    v196[3] = v81 + 1;
                    *(v208 + v81) = ImageTransform;
                  }

                  ++v74;
                }

                while (v74 != 16);
                v194[0] = MEMORY[0x277D85DD0];
                v194[1] = 3221225472;
                v194[2] = __89__SCNMTLResourceManager_renderResourceForMaterial_geometry_renderPipeline_engineContext___block_invoke;
                v194[3] = &unk_2782FC878;
                v194[5] = v208;
                v194[4] = &v195;
                C3DEntityEnumerateKeyValuesWithBlock(v186, v194);
                if (material)
                {
                  C3DEntityEnumerateKeyValuesWithBlock(material, v194);
                }

                if (v196[3] < 1)
                {
                  if ([v184 argumentEncoder])
                  {
                    v179 = objc_alloc_init(SCNMTLBuffer);
                    v108 = [*(selfCopy + 8) newBufferWithLength:objc_msgSend(objc_msgSend(v184 options:{"argumentEncoder"), "encodedLength"), 0}];
                    [(SCNMTLBuffer *)v179 setBuffer:v108];

                    [objc_msgSend(v184 "argumentEncoder")];
                    v193 = 0;
                    v110 = C3DEnumIterator<C3DEffectProperty,(signed char)0,(signed char)15>::end(&v193, v109);
                    if (v110)
                    {
                      v111 = 0;
                      v112 = 26;
                      v113 = 27;
                      do
                      {
                        if (v111 != 8)
                        {
                          v114 = v111;
                          if (v111 == 1)
                          {
                            if (C3DEffectCommonProfileIsUsingAmbientOcclusion(CommonProfileIfNoTechnique))
                            {
                              v114 = 8;
                            }

                            else
                            {
                              v114 = 1;
                            }
                          }

                          v115 = C3DEffectCommonProfileGetEffectSlot(CommonProfileIfNoTechnique, v114, 0);
                          if (v115)
                          {
                            v116 = [selfCopy renderResourceForEffectSlot:v115 withEngineContext:pipeline didFallbackToDefaultTexture:0];
                            TextureSampler = C3DEffectSlotGetTextureSampler(v115, v117);
                            if (v116)
                            {
                              v119 = TextureSampler;
                              [objc_msgSend(v184 "argumentEncoder")];
                              v120 = [objc_msgSend(v184 "usedResources")];
                              if (!v119)
                              {
                                C3DTextureSamplerGetDefault(v120, v121);
                              }

                              [objc_msgSend(v184 "argumentEncoder")];
                            }
                          }

                          v112 += 2;
                          v113 += 2;
                        }

                        ++v111;
                      }

                      while (v111 != v110);
                    }

                    v122 = [objc_msgSend(v184 "argumentEncoder")];
                    v123 = *buf;
                    v124 = *&buf[16];
                    v125 = v211;
                    v122[2] = v210;
                    v122[3] = v125;
                    *v122 = v123;
                    v122[1] = v124;
                    v126 = v212;
                    v127 = v213;
                    v128 = v215;
                    v122[6] = v214;
                    v122[7] = v128;
                    v122[4] = v126;
                    v122[5] = v127;
                    v129 = v216;
                    v130 = v217;
                    v131 = v219;
                    v122[10] = v218;
                    v122[11] = v131;
                    v122[8] = v129;
                    v122[9] = v130;
                    v132 = v220;
                    v133 = v221;
                    v134 = v223;
                    v122[14] = v222;
                    v122[15] = v134;
                    v122[12] = v132;
                    v122[13] = v133;
                  }

                  else
                  {
                    v179 = [*(selfCopy + 64) newSubBufferWithBytes:buf length:256 renderContext:{C3DEngineContextGetRenderContext(pipeline, v107)}];
                  }

                  v143 = *(selfCopy + 24);
                  ++*(v143 + 240);
                  *(v143 + 264) += 256;
                }

                else
                {
                  v179 = objc_alloc_init(SCNMTLBuffer);
                  v82 = v196[3] << 6;
                  v83 = v82 + 256;
                  v84 = [*(selfCopy + 8) newBufferWithLength:v82 + 256 options:0];
                  v85 = *(selfCopy + 24);
                  ++*(v85 + 240);
                  *(v85 + 264) += v83;
                  contents = [v84 contents];
                  v88 = *buf;
                  v89 = *&buf[16];
                  v90 = v211;
                  *(contents + 32) = v210;
                  *(contents + 48) = v90;
                  *contents = v88;
                  *(contents + 16) = v89;
                  v91 = v212;
                  v92 = v213;
                  v93 = v215;
                  *(contents + 96) = v214;
                  *(contents + 112) = v93;
                  *(contents + 64) = v91;
                  *(contents + 80) = v92;
                  v94 = v216;
                  v95 = v217;
                  v96 = v219;
                  *(contents + 160) = v218;
                  *(contents + 176) = v96;
                  *(contents + 128) = v94;
                  *(contents + 144) = v95;
                  v97 = v220;
                  v98 = v221;
                  v99 = v223;
                  *(contents + 224) = v222;
                  *(contents + 240) = v99;
                  *(contents + 192) = v97;
                  *(contents + 208) = v98;
                  if (v196[3] >= 1)
                  {
                    v100 = 0;
                    v101 = (contents + 304);
                    do
                    {
                      v102 = *(v208 + v100);
                      if (!v102)
                      {
                        v103 = scn_default_log(contents, v87);
                        contents = os_log_type_enabled(v103, OS_LOG_TYPE_FAULT);
                        if (contents)
                        {
                          [SCNMTLResourceManager renderResourceForMaterial:v206 geometry:&v207 renderPipeline:v103 engineContext:?];
                        }
                      }

                      v104 = v102[1];
                      v105 = v102[2];
                      v106 = v102[3];
                      *(v101 - 3) = *v102;
                      *(v101 - 2) = v104;
                      *(v101 - 1) = v105;
                      *v101 = v106;
                      ++v100;
                      v101 += 4;
                    }

                    while (v100 < v196[3]);
                  }

                  [(SCNMTLBuffer *)v179 setBuffer:v84];
                }

                _Block_object_dispose(&v195, 8);
LABEL_143:
                type2 = [v184 type];
                v174 = v174 & 0xFFFFFFFFFFFF0000 | *(v184 + 9);
                [(SCNMTLShadable *)v176 setResource:v179 ofType:type2 atIndices:?];

                goto LABEL_144;
              }

              v179 = objc_alloc_init(SCNMTLBuffer);
              ValueForKey = C3DEntityGetValueForKey(v186, name);
              v40 = ValueForKey;
              v41 = material == 0;
              if (ValueForKey)
              {
                v41 = 1;
              }

              if (!v41)
              {
                ValueForKey = C3DEntityGetValueForKey(material, name);
                v40 = ValueForKey;
              }

              if (!v40 && ([SCNMTLResourceManager renderResourceForMaterial:geometry:renderPipeline:engineContext:]::done & 1) == 0)
              {
                [SCNMTLResourceManager renderResourceForMaterial:geometry:renderPipeline:engineContext:]::done = 1;
                v42 = scn_default_log(ValueForKey, v39);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  name2 = [v184 name];
                  v163 = *(v184 + 9);
                  v164 = *(v184 + 10);
                  *buf = 138412802;
                  *&buf[4] = name2;
                  *&buf[12] = 1024;
                  *&buf[14] = v163;
                  *&buf[18] = 1024;
                  *&buf[20] = v164;
                  _os_log_error_impl(&dword_21BEF7000, v42, OS_LOG_TYPE_ERROR, "Error: missing value for attachment %@ [vertex: %d fragment: %d]", buf, 0x18u);
                }
              }

              v43 = [objc_msgSend(v184 "argument")];
              if ([(__CFDictionary *)v40 conformsToProtocol:&unk_282E56C78])
              {
                v44 = [(__CFDictionary *)v40 length];
                if (v44 >= v43)
                {
                  [(SCNMTLBuffer *)v179 setBuffer:v40];
                }

                else
                {
                  if (([SCNMTLResourceManager renderResourceForMaterial:geometry:renderPipeline:engineContext:]::done & 1) == 0)
                  {
                    [SCNMTLResourceManager renderResourceForMaterial:geometry:renderPipeline:engineContext:]::done = 1;
                    v46 = scn_default_log(v44, v45);
                    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                    {
                      v165 = *(v184 + 9);
                      v166 = *(v184 + 10);
                      v167 = [(__CFDictionary *)v40 length];
                      *buf = 67109888;
                      *&buf[4] = v165;
                      *&buf[8] = 1024;
                      *&buf[10] = v166;
                      *&buf[14] = 1024;
                      *&buf[16] = v43;
                      *&buf[20] = 1024;
                      *&buf[22] = v167;
                      _os_log_error_impl(&dword_21BEF7000, v46, OS_LOG_TYPE_ERROR, "Error: incorrect buffer size  for attachments vertex [%d] fragments [%d]. Expected:%d Provided:%d", buf, 0x1Au);
                    }
                  }

                  v47 = [*(selfCopy + 8) newBufferWithLength:v43 options:0];
                  [(SCNMTLBuffer *)v179 setBuffer:v47];

                  [(SCNMTLBuffer *)v179 setOffset:0];
                }

                goto LABEL_143;
              }

              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              if (isKindOfClass)
              {
                v52 = [(__CFDictionary *)v40 length];
                if (v52 > v43)
                {
                  v43 = v52;
                }
              }

              v53 = [*(selfCopy + 8) newBufferWithLength:v43 options:0];
              [(SCNMTLBuffer *)v179 setBuffer:v53];

              [(SCNMTLBuffer *)v179 setOffset:0];
              contents2 = [(SCNMTLBuffer *)v179 contents];
              v55 = contents2;
              if (v40)
              {
                v56 = CFGetTypeID(v40);
                if (v56 == C3DValueGetTypeID(v56, v57))
                {
                  v58 = C3DValueWriteToMTLData(v40, [objc_msgSend(v184 "argument")], v55);
                  if (!v58)
                  {
                    v60 = scn_default_log(v58, v59);
                    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      *&buf[4] = name;
                      *&buf[12] = 2112;
                      *&buf[14] = v40;
                      v61 = v60;
                      v62 = "Error: Argument '%@' : failed to write value to Metal buffer (%@)";
                      v63 = 22;
                      goto LABEL_147;
                    }
                  }
                }

                else if (isKindOfClass)
                {
                  bytes = [(__CFDictionary *)v40 bytes];
                  v136 = [(__CFDictionary *)v40 length];
                  v138 = v136;
                  if (v43 == v136)
                  {
                    memcpy(v55, bytes, v43);
                  }

                  else
                  {
                    v144 = scn_default_log(v136, v137);
                    if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412802;
                      *&buf[4] = name;
                      *&buf[12] = 2048;
                      *&buf[14] = v138;
                      *&buf[22] = 2048;
                      *&buf[24] = v43;
                      v61 = v144;
                      v62 = "Error: Argument '%@' : mismatch between the NSData and the buffer size %ld != %ld";
                      v63 = 32;
LABEL_147:
                      _os_log_error_impl(&dword_21BEF7000, v61, OS_LOG_TYPE_ERROR, v62, buf, v63);
                    }
                  }
                }

                else
                {
                  v139 = CFGetTypeID(v40);
                  v140 = CFCopyTypeIDDescription(v139);
                  v142 = scn_default_log(v140, v141);
                  if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    *&buf[4] = name;
                    *&buf[12] = 2112;
                    *&buf[14] = v140;
                    _os_log_error_impl(&dword_21BEF7000, v142, OS_LOG_TYPE_ERROR, "Error: Argument '%@' : only NSData and NSValue are supported for shadable value storage (found '%@'). Please make sure that your custom shader modifier uniform types match the custom properties of the shadable object", buf, 0x16u);
                  }

                  CFRelease(v140);
                }
              }

              else
              {
                bzero(contents2, v43);
              }

              if ([objc_msgSend(v184 "argument")] == 1)
              {
                contents3 = [(SCNMTLBuffer *)v179 contents];
                v146 = [objc_msgSend(objc_msgSend(v184 "argument")];
                v147 = [objc_msgSend(objc_msgSend(v184 "argument")];
                v191 = 0u;
                v192 = 0u;
                v189 = 0u;
                v190 = 0u;
                v148 = [v147 countByEnumeratingWithState:&v189 objects:v205 count:16];
                if (v148)
                {
                  v149 = *v190;
                  if (material)
                  {
                    v150 = v40 == 0;
                  }

                  else
                  {
                    v150 = 0;
                  }

                  v151 = v150;
                  do
                  {
                    for (i = 0; i != v148; ++i)
                    {
                      if (*v190 != v149)
                      {
                        objc_enumerationMutation(v147);
                      }

                      v153 = *(*(&v189 + 1) + 8 * i);
                      v154 = [v146 stringByAppendingString:{objc_msgSend(v153, "name")}];
                      v155 = C3DEntityGetValueForKey(v186, v154);
                      if (v151)
                      {
                        v155 = C3DEntityGetValueForKey(material, v154);
                      }

                      if (v155)
                      {
                        v156 = CFGetTypeID(v155);
                        TypeID = C3DValueGetTypeID(v156, v157);
                        if (v156 == TypeID)
                        {
                          C3DValueWriteToStructMember(v155, v153, contents3);
                        }

                        else
                        {
                          v160 = scn_default_log(TypeID, v159);
                          if (os_log_type_enabled(v160, OS_LOG_TYPE_FAULT))
                          {
                            [SCNMTLResourceManager renderResourceForMaterial:v203 geometry:&v204 renderPipeline:v160 engineContext:?];
                          }
                        }
                      }
                    }

                    v148 = [v147 countByEnumeratingWithState:&v189 objects:v205 count:16];
                  }

                  while (v148);
                }
              }

              goto LABEL_143;
            }

            v25 = C3DEntityGetValueForKey(v186, name);
            v27 = v25;
            v28 = material == 0;
            if (v25)
            {
              v28 = 1;
            }

            if (!v28)
            {
              v25 = C3DEntityGetValueForKey(material, name);
              v27 = v25;
            }

            if (v27)
            {
              v29 = CFGetTypeID(v27);
              v31 = C3DEffectSlotGetTypeID(v29, v30);
              if (v29 == v31)
              {
                v34 = [selfCopy renderResourceForEffectSlot:v27 withEngineContext:pipeline didFallbackToDefaultTexture:0];
                v35 = v27;
                v36 = selfCopy;
                if (v34)
                {
                  v35 = v27;
LABEL_72:
                  type3 = [v184 type];
                  v175 = v175 & 0xFFFFFFFFFFFF0000 | *(v184 + 9);
                  v67 = [(SCNMTLShadable *)v176 setResource:v34 ofType:type3 atIndices:?];
                  v69 = *(v184 + 11);
                  v70 = *(v184 + 12);
                  if (v70 != 255 || v69 != 255)
                  {
                    if (!v35 || (v67 = C3DEffectSlotGetTextureSampler(v35, v68), (v68 = v67) == 0))
                    {
                      C3DTextureSamplerGetDefault(v67, v68);
                    }

                    v172 = v172 & 0xFFFFFFFFFFFF0000 | v69 | (v70 << 8);
                    [(SCNMTLShadable *)v176 setResource:[SCNMTLResourceManager renderResourceForSampler:selfCopy] ofType:3 atIndices:?];
                  }

                  goto LABEL_144;
                }

LABEL_71:
                v34 = *(v36 + 496);
                RenderContext = C3DEngineContextGetRenderContext(pipeline, v33);
                [-[SCNMTLRenderContext resourceManagerMonitor](RenderContext) renderContext:RenderContext didFallbackToDefaultTextureForSource:v184 message:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Unable to find texture for binding %@ (%@, material=%@)"), v184, name, v35, v27, material, v186)}];
                goto LABEL_72;
              }

              v64 = scn_default_log(v31, v32);
              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                *&buf[4] = name;
                *&buf[12] = 2048;
                *&buf[14] = v186;
                *&buf[22] = 2048;
                *&buf[24] = material;
                v49 = v64;
                v50 = "Warning: Missing effect slot for binding %@ (material: %p, geometry: %p)";
LABEL_69:
                _os_log_impl(&dword_21BEF7000, v49, OS_LOG_TYPE_DEFAULT, v50, buf, 0x20u);
              }
            }

            else
            {
              v48 = scn_default_log(v25, v26);
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                *&buf[4] = name;
                *&buf[12] = 2048;
                *&buf[14] = v186;
                *&buf[22] = 2048;
                *&buf[24] = material;
                v49 = v48;
                v50 = "Warning: Missing shadable value for binding %@ (material: %p, geometry: %p)";
                goto LABEL_69;
              }
            }

            v35 = 0;
            v36 = selfCopy;
            goto LABEL_71;
          }

          v37 = scn_default_log(3, v15);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            [SCNMTLResourceManager renderResourceForMaterial:v188 geometry:v37 renderPipeline:? engineContext:?];
          }
        }

LABEL_144:
        ++v183;
      }

      while (v183 != v181);
      v168 = [(NSArray *)obj countByEnumeratingWithState:&v199 objects:v224 count:16];
      v181 = v168;
      if (!v168)
      {
LABEL_149:
        v169 = objc_alloc_init(SCNMTLShadableKey);
        v169->_material = v186;
        v169->_geometry = material;
        v169->_pipeline = geometry;
        [*(selfCopy + 408) setObject:v176 forKey:v169];

        break;
      }
    }
  }

  os_unfair_lock_unlock((selfCopy + 416));
  return v176;
}

uint64_t __89__SCNMTLResourceManager_renderResourceForMaterial_geometry_renderPipeline_engineContext___block_invoke(uint64_t a1, int a2, CFTypeRef cf)
{
  v5 = CFGetTypeID(cf);
  result = C3DEffectSlotGetTypeID(v5, v6);
  if (cf && v5 == result)
  {
    result = C3DKeyframeControllerHasInterpolationModesPerKey(cf);
    if (result)
    {
      result = C3DEffectSlotGetImageTransform(cf, v8);
      v9 = *(a1 + 40);
      v10 = *(*(a1 + 32) + 8);
      v11 = *(v10 + 24);
      *(v10 + 24) = v11 + 1;
      *(v9 + 8 * v11) = result;
    }
  }

  return result;
}

void __71__SCNMTLResourceManager_depthAndStencilStateWithReadWriteDepthDisabled__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6D60]);
  [v2 setDepthCompareFunction:7];
  [v2 setDepthWriteEnabled:0];
  *(*(a1 + 32) + 488) = [*(*(a1 + 32) + 8) newDepthStencilStateWithDescriptor:v2];
}

- (void)commandBufferDidCompleteWithError:(id)error
{
  os_unfair_lock_lock(&self->_availableDeformerStacks.lock);
  [(NSMapTable *)self->_availableDeformerStacks.registry scn_enumerateKeysAndValuesUsingBlock:&__block_literal_global_231];

  os_unfair_lock_unlock(&self->_availableDeformerStacks.lock);
}

- (id)copyTextureByConvertingToCubeMapIfApplicable:(id)applicable engineContext:(__C3DEngineContext *)context needsMipmap:(BOOL)mipmap
{
  mipmapCopy = mipmap;
  width = [applicable width];
  if (width == 2 * [applicable height])
  {
    pixelFormat = [applicable pixelFormat];
    if (pixelFormat == 115 || pixelFormat == 125)
    {
      v11 = 115;
    }

    else
    {
      v11 = 70;
    }

    return [(SCNMTLResourceManager *)self newCubemapTextureForLatlongTexture:applicable pixelFormat:v11 engineContext:context needsMipmap:mipmapCopy];
  }

  else
  {

    return applicable;
  }
}

- (id)newTextureWithDescriptor:(id)descriptor
{
  if ([descriptor pixelFormat])
  {
    v6 = [(MTLDevice *)self->_device newTextureWithDescriptor:descriptor];
    if (v6)
    {
      ++self->__engineStats->texCount;
      width = [descriptor width];
      v8 = [descriptor height] * width;
      v9 = v8 * [descriptor depth];
      [descriptor pixelFormat];
      self->__engineStats->texMemory += (v9 * SCNMTLPixelFormatGetBitSize()) >> 3;
    }
  }

  else
  {
    v10 = scn_default_log(0, v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SCNMTLResourceManager(Textures) *)v10 newTextureWithDescriptor:v11, v12, v13, v14, v15, v16, v17];
    }

    return 0;
  }

  return v6;
}

- (id)newTextureUsingMTKTextureLoaderWithURL:(id)l options:(id)options
{
  v7 = [objc_alloc(MEMORY[0x277CD71F0]) initWithDevice:-[SCNMTLOpenSubdivComputeEvaluator computeEvaluator](self)];
  if (!v7)
  {
    v8 = scn_default_log(0, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLResourceManager(Textures) *)v8 newTextureUsingMTKTextureLoaderWithURL:v9 options:v10, v11, v12, v13, v14, v15];
    }
  }

  v21 = 0;
  v16 = [v7 newTextureWithContentsOfURL:l options:options error:&v21];

  if (v21)
  {
    v19 = scn_default_log(v17, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLResourceManager(Textures) newTextureUsingMTKTextureLoaderWithURL:? options:?];
    }

    return 0;
  }

  return v16;
}

- (id)newTextureUsingMTKTextureLoaderWithData:(id)data options:(id)options
{
  v7 = [objc_alloc(MEMORY[0x277CD71F0]) initWithDevice:-[SCNMTLOpenSubdivComputeEvaluator computeEvaluator](self)];
  if (!v7)
  {
    v8 = scn_default_log(0, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLResourceManager(Textures) *)v8 newTextureUsingMTKTextureLoaderWithURL:v9 options:v10, v11, v12, v13, v14, v15];
    }
  }

  v21 = 0;
  v16 = [v7 newTextureWithData:data options:options error:&v21];

  if (v21)
  {
    v19 = scn_default_log(v17, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLResourceManager(Textures) newTextureUsingMTKTextureLoaderWithURL:? options:?];
    }

    return 0;
  }

  return v16;
}

- (void)_enqueueCopyFromTexture:(id)texture toTexture:(id)toTexture blitEncoder:(SCNMTLBlitCommandEncoder *)encoder generateMipMaps:(BOOL)maps
{
  mapsCopy = maps;
  width = [texture width];
  if (width == [toTexture width])
  {
    height = [texture height];
    if (height == [toTexture height])
    {
      depth = [texture depth];
      if (depth == [toTexture depth])
      {
        SCNMTLBlitCommandEncoder::copyTextureToTexture(&encoder->_encoder, texture, 0, toTexture, 0);
        if (mapsCopy)
        {

          SCNMTLBlitCommandEncoder::generateMipmapsForTexture(&encoder->_encoder, toTexture);
        }
      }
    }
  }
}

- (id)_textureDescriptorFromImage:(__C3DImage *)image needsMipMap:(BOOL)map textureOptions:(int)options
{
  optionsCopy = options;
  mapCopy = map;
  v9 = objc_alloc_init(MEMORY[0x277CD7058]);
  ImageType = C3DImageGetImageType(image, v10);
  [v9 setTextureType:{C3DImageTypeToMTLTextureType(ImageType, v12)}];
  v13 = 1;
  [v9 setUsage:1];
  [v9 setStorageMode:0];
  TextureSize = C3DImageGetTextureSize(image, v14);
  if (*TextureSize.i32 >= 1.0)
  {
    v17 = *TextureSize.i32;
  }

  else
  {
    v17 = 1.0;
  }

  [v9 setWidth:{v17, *&TextureSize, *&v16}];
  v18 = v32;
  if (v32 < 1.0)
  {
    v18 = 1.0;
  }

  [v9 setHeight:v18];
  [v9 setDepth:{C3DImageGetDepth(image, v19)}];
  if (mapCopy)
  {
    v20 = fmax([v9 width], objc_msgSend(v9, "height"));
    v13 = (floorf(log2f(v20)) + 1.0);
  }

  [v9 setMipmapLevelCount:v13];
  if ([v9 mipmapLevelCount] >= 2 && objc_msgSend(v9, "textureType") == 5)
  {
    [v9 setUsage:{objc_msgSend(v9, "usage") | 0x10}];
  }

  TextureRawData = C3DImageGetTextureRawData(image);
  if (TextureRawData)
  {
    v22 = TextureRawData;
    if (C3DLinearRenderingIsEnabled() && (*(v22 + 10) & 1) == 0)
    {
      [v9 setMipmapLevelCount:{C3DImageGetTextureRawDataMipmapLevelCount(image, 0)}];
      if ((optionsCopy & 1) == 0)
      {
        v23 = SCNMTLPixelFormatSRGBVariant(*(v22 + 36));
        goto LABEL_16;
      }
    }

    else
    {
      [v9 setMipmapLevelCount:{C3DImageGetTextureRawDataMipmapLevelCount(image, 0)}];
    }

    v23 = SCNMTLPixelFormatNonSRGBVariant(*(v22 + 36));
LABEL_16:
    [v9 setPixelFormat:v23];
    return v9;
  }

  v24 = C3DImageCopyBitmap(image, 1);
  if (v24)
  {
    v26 = v24;
    BitsPerComponent = CGBitmapContextGetBitsPerComponent(v24);
    BitsPerPixel = CGBitmapContextGetBitsPerPixel(v26);
    v29 = BitsPerPixel / BitsPerComponent;
    [v9 setPixelFormat:SCNMTLPixelFormatFromBitmapContextDescription(BitsPerPixel / BitsPerComponent, BitsPerComponent, v26, optionsCopy)];
    if (v29 == 1 && SCNMTLDeviceSupportsTextureSwizzle(self->_device))
    {
      [v9 setSwizzle:16908802];
    }

    CGContextRelease(v26);
  }

  else
  {
    v30 = scn_default_log(0, v25);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLResourceManager(Textures) _textureDescriptorFromImage:image needsMipMap:v30 textureOptions:?];
    }

    return 0;
  }

  return v9;
}

- (BOOL)_copyImage:(__C3DImage *)image toTexture:(id)texture desc:(id)desc textureOptions:(int)options needsMipMapGeneration:(BOOL)generation
{
  imageCopy = image;
  ImageType = C3DImageGetImageType(image, a2);
  TextureRawData = C3DImageGetTextureRawData(imageCopy);
  if (!TextureRawData)
  {
    v51 = C3DImageCopyBitmap(imageCopy, 1);
    if (!v51)
    {
      v52 = scn_default_log(0, v50);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        [SCNMTLResourceManager(Textures) _copyImage:imageCopy toTexture:v52 desc:? textureOptions:? needsMipMapGeneration:?];
      }
    }

    v53 = imageCopy;
    Data = CGBitmapContextGetData(v51);
    if (!Data)
    {
      v55 = scn_default_log(0, v54);
      if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        if (!v51)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      [(SCNMTLResourceManager(Textures) *)v55 _copyImage:v56 toTexture:v57 desc:v58 textureOptions:v59 needsMipMapGeneration:v60, v61, v62];
      if (v51)
      {
LABEL_20:
        CFRelease(v51);
        v51 = 0;
      }
    }

LABEL_21:
    BytesPerRow = CGBitmapContextGetBytesPerRow(v51);
    BitsPerComponent = CGBitmapContextGetBitsPerComponent(v51);
    v65 = (CGBitmapContextGetBitsPerPixel(v51) / BitsPerComponent * BitsPerComponent) >> 3;
    v66 = v65 * [desc width];
    width = [desc width];
    height = [desc height];
    if (ImageType == 2)
    {
      width2 = [desc width];
      depth = [desc depth];
      v96[0] = MEMORY[0x277D85DD0];
      v96[1] = 3221225472;
      v96[2] = __98__SCNMTLResourceManager_Textures___copyImage_toTexture_desc_textureOptions_needsMipMapGeneration___block_invoke_4;
      v96[3] = &unk_2782FCC90;
      v96[4] = desc;
      v96[5] = texture;
      v96[6] = v66;
      C3DImageEnumerateTexture3DSlicePixelBuffers(2, width2, depth, BytesPerRow, v66, v65, Data, v96);
      if (!v51)
      {
        return generation;
      }
    }

    else
    {
      v80 = height;
      if (C3DImageIsCubeMap(v53, v69))
      {
        width3 = [desc width];
        v95[0] = MEMORY[0x277D85DD0];
        v95[1] = 3221225472;
        v95[2] = __98__SCNMTLResourceManager_Textures___copyImage_toTexture_desc_textureOptions_needsMipMapGeneration___block_invoke_2_5;
        v95[3] = &unk_2782FCC68;
        memset(&v95[6], 0, 24);
        v95[9] = width;
        v95[10] = v80;
        v95[11] = 1;
        v95[12] = v66;
        v95[4] = texture;
        v95[5] = desc;
        C3DImageEnumerateCubeMapFacePixelBuffers(ImageType, width3, BytesPerRow, v66, v65, Data, v95);
        if (!v51)
        {
          return generation;
        }
      }

      else
      {
        memset(v94, 0, 24);
        v94[3] = width;
        v94[4] = v80;
        v94[5] = 1;
        [texture replaceRegion:v94 mipmapLevel:0 slice:0 withBytes:Data bytesPerRow:v66 bytesPerImage:{objc_msgSend(desc, "height") * v66}];
        if (!v51)
        {
          return generation;
        }
      }
    }

    CFRelease(v51);
    return generation;
  }

  v13 = TextureRawData;
  IsCubeMap = C3DImageIsCubeMap(imageCopy, v12);
  HasCubeMapComplexLayout = C3DImageHasCubeMapComplexLayout(imageCopy, v15);
  LOBYTE(v94[0]) = 0;
  TextureRawDataMipmapLevelCount = C3DImageGetTextureRawDataMipmapLevelCount(imageCopy, v94);
  mipmapLevelCount = [desc mipmapLevelCount];
  if (TextureRawDataMipmapLevelCount > mipmapLevelCount)
  {
    v19 = scn_default_log(mipmapLevelCount, v18);
    mipmapLevelCount = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);
    if (mipmapLevelCount)
    {
      [(SCNMTLResourceManager(Textures) *)v19 _copyImage:v18 toTexture:v20 desc:v21 textureOptions:v22 needsMipMapGeneration:v23, v24, v25];
    }
  }

  generationCopy = generation;
  if (IsCubeMap)
  {
    if (HasCubeMapComplexLayout)
    {
      if (TextureRawDataMipmapLevelCount)
      {
        for (i = 0; i != TextureRawDataMipmapLevelCount; ++i)
        {
          width4 = [desc width];
          height2 = [desc height];
          ValueAtIndex = CFArrayGetValueAtIndex(*(v13 + 40), i);
          Length = CFDataGetLength(ValueAtIndex);
          BytePtr = CFDataGetBytePtr(ValueAtIndex);
          Size = C3DImageGetSize(imageCopy, v32);
          v35 = Length;
          if (*(v13 + 7) < 2u)
          {
            v47 = *(v13 + 4) >> 3;
            v90 = *&Size;
            v91 = BytePtr;
            v48 = imageCopy;
            v49 = [desc width] * v47;
            width5 = [desc width];
            v97[0] = MEMORY[0x277D85DD0];
            v97[1] = 3221225472;
            v97[2] = __98__SCNMTLResourceManager_Textures___copyImage_toTexture_desc_textureOptions_needsMipMapGeneration___block_invoke_2;
            v97[3] = &unk_2782FCC68;
            memset(&v97[6], 0, 24);
            v97[9] = width4;
            v97[10] = height2;
            v97[11] = 1;
            v97[12] = v49;
            v97[4] = texture;
            v97[5] = desc;
            v42 = v97;
            v43 = ImageType;
            v44 = (v35 / v90);
            v41 = v49;
            imageCopy = v48;
            v45 = v47;
            v46 = v91;
          }

          else
          {
            LOBYTE(v34) = *(v13 + 8);
            v36 = ((v35 / *(&Size + 1)) * v34);
            v37 = *(v13 + 4) >> 3;
            LODWORD(v37) = [desc width] / *(v13 + 7) * v37;
            height3 = [desc height];
            v39 = *(v13 + 8);
            v98[0] = MEMORY[0x277D85DD0];
            v98[1] = 3221225472;
            v98[2] = __98__SCNMTLResourceManager_Textures___copyImage_toTexture_desc_textureOptions_needsMipMapGeneration___block_invoke;
            v98[3] = &unk_2782FCC40;
            memset(&v98[5], 0, 24);
            v98[4] = texture;
            v98[8] = width4;
            v98[9] = height2;
            width5 = height3 / v39;
            v41 = v37;
            v99 = v37;
            v98[10] = 1;
            v98[11] = height3 / v39;
            v42 = v98;
            v43 = ImageType;
            v44 = v36;
            v45 = 0;
            v46 = BytePtr;
          }

          C3DImageEnumerateCubeMapFacePixelBuffers(v43, width5, v44, v41, v45, v46, v42);
        }
      }
    }

    else if (v94[0])
    {
      if (TextureRawDataMipmapLevelCount)
      {
        for (j = 0; j < TextureRawDataMipmapLevelCount; ++j)
        {
          for (k = 0; k != 6; ++k)
          {
            v84 = CFArrayGetValueAtIndex(*(v13 + 40), 6 * j + k);
            mipmapLevelCount = replaceSlice(texture, desc, k, j, v84, v13);
          }
        }
      }
    }

    else
    {
      for (m = 0; m != 6; ++m)
      {
        v87 = CFArrayGetValueAtIndex(*(v13 + 40), m);
        mipmapLevelCount = replaceRegion(texture, desc, m, v87, v13);
      }
    }
  }

  else
  {
    mipmapLevelCount = replaceRegion(texture, desc, 0, *(v13 + 40), v13);
  }

  generation = TextureRawDataMipmapLevelCount < 2 && generationCopy;
  if (!texture)
  {
    v72 = scn_default_log(mipmapLevelCount, v18);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      [(SCNMTLResourceManager(Textures) *)v72 _copyImage:v73 toTexture:v74 desc:v75 textureOptions:v76 needsMipMapGeneration:v77, v78, v79];
    }
  }

  return generation;
}

uint64_t __98__SCNMTLResourceManager_Textures___copyImage_toTexture_desc_textureOptions_needsMipMapGeneration___block_invoke(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v6[0] = *(a1 + 40);
  v6[1] = v4;
  v6[2] = *(a1 + 72);
  return [v3 replaceRegion:v6 mipmapLevel:0 slice:a2 withBytes:a3 bytesPerRow:*(a1 + 96) bytesPerImage:*(a1 + 88) * *(a1 + 96)];
}

uint64_t __98__SCNMTLResourceManager_Textures___copyImage_toTexture_desc_textureOptions_needsMipMapGeneration___block_invoke_2(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 64);
  v5[0] = *(a1 + 48);
  v5[1] = v3;
  v6 = *(a1 + 80);
  return [*(a1 + 32) replaceRegion:v5 mipmapLevel:0 slice:a2 withBytes:a3 bytesPerRow:*(a1 + 96) bytesPerImage:{*(a1 + 96) * objc_msgSend(*(a1 + 40), "height", v5[0], v3, v6)}];
}

uint64_t __98__SCNMTLResourceManager_Textures___copyImage_toTexture_desc_textureOptions_needsMipMapGeneration___block_invoke_4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) width];
  v7 = [*(a1 + 32) height];
  v9[0] = 0;
  v9[1] = 0;
  v9[2] = v5;
  v9[3] = v6;
  v9[4] = v7;
  v9[5] = 1;
  return [*(a1 + 40) replaceRegion:v9 mipmapLevel:0 slice:0 withBytes:a3 bytesPerRow:*(a1 + 48) bytesPerImage:{*(a1 + 48) * objc_msgSend(*(a1 + 32), "height", 0, 0, v5, v6, v7, 1)}];
}

uint64_t __98__SCNMTLResourceManager_Textures___copyImage_toTexture_desc_textureOptions_needsMipMapGeneration___block_invoke_2_5(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 64);
  v5[0] = *(a1 + 48);
  v5[1] = v3;
  v6 = *(a1 + 80);
  return [*(a1 + 32) replaceRegion:v5 mipmapLevel:0 slice:a2 withBytes:a3 bytesPerRow:*(a1 + 96) bytesPerImage:{*(a1 + 96) * objc_msgSend(*(a1 + 40), "height", v5[0], v3, v6)}];
}

- (id)newCubemapTextureForLatlongTexture:(id)texture pixelFormat:(unint64_t)format engineContext:(__C3DEngineContext *)context needsMipmap:(BOOL)mipmap
{
  mipmapCopy = mipmap;
  v26 = *MEMORY[0x277D85DE8];
  width = [texture width];
  if (width >> 1 >= 0x800)
  {
    v12 = 2048;
  }

  else
  {
    v12 = width >> 1;
  }

  v13 = [MEMORY[0x277CD7058] textureCubeDescriptorWithPixelFormat:format size:v12 mipmapped:mipmapCopy];
  [v13 setUsage:19];
  [v13 setStorageMode:2];
  v14 = [(SCNMTLResourceManager *)self newTextureWithDescriptor:v13];
  RenderContext = C3DEngineContextGetRenderContext(context, v15);
  HasFeatures = C3DEngineContextHasFeatures(context, 512);
  v18 = HasFeatures;
  if (HasFeatures)
  {
    v19 = @"compute_cube_from_equi";
  }

  else
  {
    v19 = @"compute_cube_from_equi_views";
  }

  computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)[(SCNMTLResourceManager *)self computePipelineStateForKernel:v19] computeEvaluator];
  resourceComputeEncoder = [(SCNMTLRenderContext *)RenderContext resourceComputeEncoder];
  bzero(resourceComputeEncoder, 0x678uLL);
  v22 = resourceComputeEncoder[207];
  [v22 setComputePipelineState:computeEvaluator];
  [v22 setTexture:texture atIndex:0];
  if (v18)
  {
    [v22 setTexture:v14 atIndex:1];
  }

  else
  {
    _fillViewsFromCubeMap(v14, 0, v25);
    [v22 setTextures:v25 withRange:{1, 6}];
  }

  [(SCNMTLResourceManager *)self dispatchForCubemap:v14 computeEncoder:v22 pipelineState:computeEvaluator];
  if (mipmapCopy)
  {
    resourceBlitEncoder = [(SCNMTLRenderContext *)RenderContext resourceBlitEncoder];
    SCNMTLBlitCommandEncoder::generateMipmapsForTexture(resourceBlitEncoder, v14);
  }

  return v14;
}

- (id)latlongTextureForCubemap:(id)cubemap pixelFormat:(unint64_t)format renderContext:(id)context needsMipmap:(BOOL)mipmap
{
  mipmapCopy = mipmap;
  mipmap = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:format width:2 * objc_msgSend(cubemap height:"width") mipmapped:objc_msgSend(cubemap, "height"), mipmap];
  [mipmap setUsage:3];
  [mipmap setStorageMode:2];
  v11 = [(SCNMTLResourceManager *)self newTextureWithDescriptor:mipmap];
  computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)[(SCNMTLResourceManager *)self computePipelineStateForKernel:@"compute_equi_from_cube"] computeEvaluator];
  resourceComputeEncoder = [(SCNMTLRenderContext *)context resourceComputeEncoder];
  bzero(resourceComputeEncoder, 0x678uLL);
  v14 = resourceComputeEncoder[207];
  [v14 setComputePipelineState:computeEvaluator];
  [v14 setTexture:cubemap atIndex:0];
  [v14 setTexture:v11 atIndex:1];
  v19[0] = [mipmap width];
  v19[1] = [mipmap height];
  v19[2] = 1;
  v17 = vdupq_n_s64(1uLL);
  v18 = 1;
  [v14 dispatchThreadgroups:v19 threadsPerThreadgroup:&v17];
  if (mipmapCopy)
  {
    resourceBlitEncoder = [(SCNMTLRenderContext *)context resourceBlitEncoder];
    SCNMTLBlitCommandEncoder::generateMipmapsForTexture(resourceBlitEncoder, v11);
  }

  return v11;
}

- (id)unstageTexture:(id)texture commandBuffer:(id)buffer
{
  textureCopy = texture;
  if ([texture storageMode] == 2)
  {
    v7 = objc_alloc_init(MEMORY[0x277CD7058]);
    [v7 setTextureType:{objc_msgSend(textureCopy, "textureType")}];
    [v7 setPixelFormat:objc_msgSend(textureCopy, "pixelFormat")];
    [v7 setWidth:{objc_msgSend(textureCopy, "width")}];
    [v7 setHeight:{objc_msgSend(textureCopy, "height")}];
    [v7 setDepth:{objc_msgSend(textureCopy, "depth")}];
    [v7 setMipmapLevelCount:{objc_msgSend(textureCopy, "mipmapLevelCount")}];
    [v7 setUsage:0];
    [v7 setStorageMode:0];
    v8 = [(MTLDevice *)self->_device newTextureWithDescriptor:v7];
    v11._encoder = 0;
    v11._commandBuffer = 0;
    SCNMTLBlitCommandEncoder::beginEncoding(&v11, buffer, 0);
    SCNMTLBlitCommandEncoder::copyTextureToTexture(&v11._encoder, textureCopy, v8);
    SCNMTLBlitCommandEncoder::endEncoding(&v11, v9);
    return v8;
  }

  return textureCopy;
}

- (id)renderResourceForEffectSlot:(__C3DEffectSlot *)slot withEngineContext:(__C3DEngineContext *)context didFallbackToDefaultTexture:(BOOL *)texture
{
  if (texture)
  {
    *texture = 1;
    result = C3DEffectSlotGetMTLTexture(slot, a2);
    if (result)
    {
      *texture = 0;
      return result;
    }
  }

  else
  {
    result = C3DEffectSlotGetMTLTexture(slot, a2);
    if (result)
    {
      return result;
    }
  }

  ImageProxy = C3DEffectSlotGetImageProxy(slot, v10);
  if (!ImageProxy)
  {
    goto LABEL_9;
  }

  v13 = ImageProxy;
  TextureSampler = C3DEffectSlotGetTextureSampler(slot, v12);
  if (!TextureSampler)
  {
    TextureSampler = C3DTextureSamplerGetDefault(0, v14);
  }

  result = [(SCNMTLResourceManager *)self renderResourceForImageProxy:v13 sampler:TextureSampler engineContext:context didFallbackToDefaultTexture:texture];
  if (!result)
  {
LABEL_9:
    result = C3DEffectSlotGetImage(slot, v12);
    if (result)
    {
      v17 = result;
      v18 = C3DEffectSlotGetTextureSampler(slot, v16);
      TextureOptions = C3DEffectSlotGetTextureOptions(slot);

      return [(SCNMTLResourceManager *)self renderResourceForImage:v17 sampler:v18 options:TextureOptions engineContext:context didFallbackToDefaultTexture:texture];
    }
  }

  return result;
}

- (id)renderResourceForImageProxy:(__C3DImageProxy *)proxy sampler:(__C3DTextureSampler *)sampler engineContext:(__C3DEngineContext *)context didFallbackToDefaultTexture:(BOOL *)texture
{
  if (!proxy)
  {
    v11 = scn_default_log(self, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLResourceManager(Textures) *)v11 renderResourceForImageProxy:v12 sampler:v13 engineContext:v14 didFallbackToDefaultTexture:v15, v16, v17, v18];
    }
  }

  p_availableImageProxy = &self->_availableImageProxy;
  os_unfair_lock_lock(&p_availableImageProxy->lock);
  registry = p_availableImageProxy->registry;
  if (!p_availableImageProxy->registry)
  {
    SCNResourceRegistrySetup(p_availableImageProxy, 0);
    registry = p_availableImageProxy->registry;
  }

  v21 = [(NSMapTable *)registry objectForKey:proxy];
  if (!v21)
  {
    TextureProxy = C3DImageProxyCreateTextureProxy(proxy, sampler, context);
    if (!TextureProxy)
    {
      os_unfair_lock_unlock(&p_availableImageProxy->lock);
      MetalTexture = 0;
      goto LABEL_18;
    }

    v21 = TextureProxy;
    *(TextureProxy + 40) = proxy;
    [(NSMapTable *)p_availableImageProxy->registry setObject:TextureProxy forKey:proxy];
    CFRelease(v21);
  }

  v30 = 257;
  MetalTexture = C3DTextureProxyGetMetalTexture(v21, context, sampler, &v30);
  os_unfair_lock_unlock(&p_availableImageProxy->lock);
  if (MetalTexture)
  {
    if (v30 == 1 && sampler && (v30 & 0x100) != 0 && C3DTextureSamplerGetMipFilter(sampler, v24))
    {
      RenderContext = C3DEngineContextGetRenderContext(context, v25);
      resourceBlitEncoder = [(SCNMTLRenderContext *)RenderContext resourceBlitEncoder];
      SCNMTLBlitCommandEncoder::generateMipmapsForTexture(resourceBlitEncoder, MetalTexture);
    }

    if (texture)
    {
      v28 = 0;
LABEL_20:
      *texture = v28;
      return MetalTexture;
    }

    return MetalTexture;
  }

LABEL_18:
  if (texture)
  {
    v28 = 1;
    goto LABEL_20;
  }

  return MetalTexture;
}

- (id)lazyMTKTextureLoader
{
  result = self->_mtkTextureLoader;
  if (!result)
  {
    result = [objc_alloc(MEMORY[0x277CD71F0]) initWithDevice:self->_device];
    self->_mtkTextureLoader = result;
  }

  return result;
}

- (id)renderResourceForImage:(__C3DImage *)image sampler:(__C3DTextureSampler *)sampler options:(int)options engineContext:(__C3DEngineContext *)context didFallbackToDefaultTexture:(BOOL *)texture
{
  if (!image && (v13 = scn_default_log(self, a2), os_log_type_enabled(v13, OS_LOG_TYPE_FAULT)))
  {
    [(SCNMTLResourceManager(Textures) *)v13 renderResourceForImageProxy:a2 sampler:v14 engineContext:v15 didFallbackToDefaultTexture:v16, v17, v18, v19];
    if (sampler)
    {
LABEL_4:
      if (C3DTextureSamplerGetMipFilter(sampler, a2))
      {
        goto LABEL_7;
      }
    }
  }

  else if (sampler)
  {
    goto LABEL_4;
  }

  if ((options & 4) == 0)
  {
    v20 = 0;
    optionsCopy = options;
    goto LABEL_8;
  }

LABEL_7:
  optionsCopy = options | 4;
  v20 = 1;
LABEL_8:
  v22 = options & 0xFFFFFF00;
  v23 = 0xC6A4A7935BD1E995 * (image ^ optionsCopy ^ 0x1A929E4D6F47A654 ^ v22);
  v24 = (0xC6A4A7935BD1E995 * (v23 ^ (v23 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v23 ^ (v23 >> 47))) >> 47);
  p_availableImages = &self->_availableImages;
  os_unfair_lock_lock(&self->_availableImages.lock);
  registry = self->_availableImages.registry;
  if (!registry)
  {
    SCNResourceRegistrySetup(&self->_availableImages.registry, 0);
    registry = p_availableImages->registry;
  }

  v27 = [(NSMapTable *)registry objectForKey:v24];
  if (v27)
  {
    defaultTexture = v27;
    goto LABEL_29;
  }

  RenderContext = C3DEngineContextGetRenderContext(context, v28);
  C3DImageGetName(image);
  if (!C3DImageIsCatalogTexture(image))
  {
    if ((optionsCopy & 2) != 0 && C3DImageIsConvertibleToCubeMap(image, v30))
    {
      optionsCopy = [(SCNMTLResourceManager *)self _textureDescriptorFromImage:image needsMipMap:0 textureOptions:v22 | optionsCopy];
      if (optionsCopy)
      {
        v38 = optionsCopy;
        v39 = [(MTLDevice *)self->_device newTextureWithDescriptor:optionsCopy];
        v40 = v22 | optionsCopy;
        v41 = v39;
        [(SCNMTLResourceManager *)self _copyImage:image toTexture:v39 desc:v38 textureOptions:v40 needsMipMapGeneration:0];
        defaultTexture = [(SCNMTLResourceManager *)self copyTextureByConvertingToCubeMapIfApplicable:v41 engineContext:context needsMipmap:v20];
        v42 = defaultTexture;

LABEL_22:
        C3DImageReleaseBitmapCache(image, v43);
        goto LABEL_23;
      }
    }

    else
    {
      optionsCopy2 = [(SCNMTLResourceManager *)self _textureDescriptorFromImage:image needsMipMap:v20 textureOptions:v22 | optionsCopy];
      if (optionsCopy2)
      {
        v45 = optionsCopy2;
        defaultTexture = [(SCNMTLResourceManager *)self newTextureWithDescriptor:optionsCopy2];
        v46 = defaultTexture;
        LODWORD(v20) = [(SCNMTLResourceManager *)self _copyImage:image toTexture:defaultTexture desc:v45 textureOptions:v22 | optionsCopy needsMipMapGeneration:v20];
        goto LABEL_22;
      }
    }

LABEL_28:
    defaultTexture = self->_defaultTexture;
    [-[SCNMTLRenderContext resourceManagerMonitor](RenderContext) renderContext:RenderContext didFallbackToDefaultTextureForSource:image message:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Unable to find texture for source %@", image)}];
    [(NSMapTable *)p_availableImages->registry setObject:defaultTexture forKey:v24];
    goto LABEL_29;
  }

  CatalogTextureName = C3DImageGetCatalogTextureName(image, v30);
  v32 = SCNGetResourceBundle();
  v50 = 0;
  lazyMTKTextureLoader = [(SCNMTLResourceManager *)self lazyMTKTextureLoader];
  defaultTexture = [lazyMTKTextureLoader newTextureWithName:CatalogTextureName scaleFactor:v32 bundle:MEMORY[0x277CBEC10] options:&v50 error:1.0];
  v34 = defaultTexture;
  if (!defaultTexture)
  {
    v36 = scn_default_log(v34, v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLResourceManager(Textures) renderResourceForImage:sampler:options:engineContext:didFallbackToDefaultTexture:];
    }
  }

LABEL_23:
  if (!defaultTexture)
  {
    goto LABEL_28;
  }

  [(NSMapTable *)p_availableImages->registry setObject:defaultTexture forKey:v24];
  if (v20 && C3DImageGetTextureRawDataMipmapLevelCount(image, 0) <= 1 && SCNMTLPixelFormatSupportsMipmapGeneration([(MTLTexture *)defaultTexture pixelFormat]))
  {
    resourceBlitEncoder = [(SCNMTLRenderContext *)RenderContext resourceBlitEncoder];
    SCNMTLBlitCommandEncoder::generateMipmapsForTexture(resourceBlitEncoder, defaultTexture);
  }

LABEL_29:
  os_unfair_lock_unlock(&self->_availableImages.lock);
  if (texture)
  {
    *texture = self->_defaultTexture == defaultTexture;
  }

  return defaultTexture;
}

- (id)defaultTexture
{
  v14[6] = *MEMORY[0x277D85DE8];
  p_availableImages = &self->_availableImages;
  os_unfair_lock_lock(&self->_availableImages.lock);
  if (!p_availableImages->registry)
  {
    SCNResourceRegistrySetup(p_availableImages, 0);
  }

  v13 = p_availableImages;
  if (!self->_defaultTexture)
  {
    v5 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:70 width:4 height:4 mipmapped:1, v13];
    [v5 setUsage:1];
    [v5 setStorageMode:0];
    self->_defaultTexture = [(SCNMTLResourceManager *)self newTextureWithDescriptor:v5];
    mipmapLevelCount = [v5 mipmapLevelCount];
    if (mipmapLevelCount)
    {
      v7 = 4;
      v8 = 1;
      do
      {
        MEMORY[0x28223BE20](mipmapLevelCount);
        v10 = &v14[-1] - v9;
        memset(&v14[-1] - v9, 255, 4 * v7 * v7);
        defaultTexture = self->_defaultTexture;
        memset(v14, 0, 24);
        v14[3] = v7;
        v14[4] = v7;
        v14[5] = 1;
        [(MTLTexture *)defaultTexture replaceRegion:v14 mipmapLevel:v8 - 1 slice:0 withBytes:v10 bytesPerRow:4 * v7 bytesPerImage:4 * v7 * v7];
        mipmapLevelCount = [v5 mipmapLevelCount];
        if (v8 >= mipmapLevelCount)
        {
          break;
        }

        ++v8;
        v12 = v7 > 1;
        v7 >>= 1;
      }

      while (v12);
    }
  }

  os_unfair_lock_unlock(v13 + 2);
  return self->_defaultTexture;
}

- (id)defaultCubeTexture
{
  v16[6] = *MEMORY[0x277D85DE8];
  p_availableImages = &self->_availableImages;
  os_unfair_lock_lock(&self->_availableImages.lock);
  if (!p_availableImages->registry)
  {
    SCNResourceRegistrySetup(p_availableImages, 0);
  }

  v14 = p_availableImages;
  if (!self->_defaultCubeTexture)
  {
    v4 = [MEMORY[0x277CD7058] textureCubeDescriptorWithPixelFormat:70 size:4 mipmapped:1];
    [v4 setUsage:1];
    [v4 setStorageMode:0];
    self->_defaultCubeTexture = [(SCNMTLResourceManager *)self newTextureWithDescriptor:v4];
    v15 = v4;
    mipmapLevelCount = [v4 mipmapLevelCount];
    if (mipmapLevelCount)
    {
      v6 = 0;
      v7 = 4;
      do
      {
        MEMORY[0x28223BE20](mipmapLevelCount);
        v9 = &v13 - v8;
        bzero(&v13 - v8, 4 * v7 * v7);
        for (i = 0; i != 6; ++i)
        {
          defaultCubeTexture = self->_defaultCubeTexture;
          memset(v16, 0, 24);
          v16[3] = v7;
          v16[4] = v7;
          v16[5] = 1;
          [(MTLTexture *)defaultCubeTexture replaceRegion:v16 mipmapLevel:v6 slice:i withBytes:v9 bytesPerRow:4 * v7 bytesPerImage:4 * v7 * v7];
        }

        ++v6;
        v7 >>= 1;
        mipmapLevelCount = [v15 mipmapLevelCount];
      }

      while (v6 < mipmapLevelCount);
    }
  }

  os_unfair_lock_unlock(v14 + 2);
  return self->_defaultCubeTexture;
}

- (id)defaultTexture3D
{
  selfCopy = self;
  v34[6] = *MEMORY[0x277D85DE8];
  p_availableImages = &self->_availableImages;
  os_unfair_lock_lock(&self->_availableImages.lock);
  if (!p_availableImages->registry)
  {
    SCNResourceRegistrySetup(p_availableImages, 0);
  }

  v4 = 504;
  if (!selfCopy->_defaultTexture3D)
  {
    v27 = p_availableImages;
    v5 = objc_alloc_init(MEMORY[0x277CD7058]);
    [v5 setPixelFormat:70];
    [v5 setWidth:16];
    [v5 setHeight:16];
    [v5 setDepth:16];
    [v5 setTextureType:7];
    [v5 setMipmapLevelCount:1];
    [v5 setStorageMode:0];
    [v5 setUsage:1];
    selfCopy->_defaultTexture3D = [(SCNMTLResourceManager *)selfCopy newTextureWithDescriptor:v5];
    v6 = 4 * [v5 width];
    height = [v5 height];
    v26[1] = v26;
    v31 = v6 * height;
    v8 = MEMORY[0x28223BE20](height);
    v32 = v26 - v9;
    if ([v5 depth])
    {
      v33 = 0;
      v28 = v32 + 3;
      v29 = 504;
      v30 = selfCopy;
      do
      {
        depth = [v5 depth];
        if ([v5 height])
        {
          v11 = 0;
          v12 = v28;
          v13 = 255 * v33 / (depth - 1);
          do
          {
            height2 = [v5 height];
            if ([v5 width])
            {
              v15 = 0;
              v16 = 0;
              v17 = height2 - 1;
              v18 = v12;
              v19 = 255 * v11 / v17;
              do
              {
                *(v18 - 3) = v15 / ([v5 width] - 1);
                *(v18 - 2) = v19;
                *(v18 - 1) = v13;
                *v18 = -1;
                v18 += 4;
                ++v16;
                v15 += 255;
              }

              while (v16 < [v5 width]);
            }

            ++v11;
            v12 += v6;
          }

          while (v11 < [v5 height]);
        }

        v4 = v29;
        selfCopy = v30;
        v20 = *(&v30->super.isa + v29);
        width = [v5 width];
        height3 = [v5 height];
        v34[0] = 0;
        v34[1] = 0;
        v23 = v33;
        v34[2] = v33;
        v34[3] = width;
        v34[4] = height3;
        v34[5] = 1;
        [v20 replaceRegion:v34 mipmapLevel:0 slice:0 withBytes:v32 bytesPerRow:v6 bytesPerImage:v31];
        depth2 = [v5 depth];
        v33 = v23 + 1;
      }

      while (v23 + 1 < depth2);
    }

    p_availableImages = v27;
  }

  os_unfair_lock_unlock(&p_availableImages->lock);
  return *(&selfCopy->super.isa + v4);
}

- (id)iesTextureForProfile:(id)profile renderContext:(id)context
{
  p_availableIESTextures = &self->_availableIESTextures;
  os_unfair_lock_lock(&self->_availableIESTextures.lock);
  registry = p_availableIESTextures->registry;
  if (!p_availableIESTextures->registry)
  {
    SCNResourceRegistrySetup(p_availableIESTextures, 1);
    registry = p_availableIESTextures->registry;
  }

  v8 = [(NSMapTable *)registry objectForKey:profile];
  if (v8)
  {
    v9 = v8;
    os_unfair_lock_unlock(&p_availableIESTextures->lock);
  }

  else
  {
    if (C3DIESInfoLoad(profile, v20))
    {
      CACurrentMediaTime();
      BitSize = SCNMTLPixelFormatGetBitSize();
      v11 = BitSize >> 3 << 8;
      v12 = BitSize >> 3 << 12;
      v13 = malloc_type_malloc(v12, 0x7541B84FuLL);
      v14 = SCNMTLPixelFormatGetBitSize();
      C3DIESInfoGenerateTexture2D(v20, v13, 256, 0x10u, 1, v14 >> 3);
      v15 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:25 width:256 height:16 mipmapped:0];
      [v15 setStorageMode:0];
      [v15 setUsage:1];
      v9 = [(MTLDevice *)self->_device newTextureWithDescriptor:v15];
      memset(v17, 0, sizeof(v17));
      v18 = xmmword_21C281030;
      v19 = 1;
      [v9 replaceRegion:v17 mipmapLevel:0 slice:0 withBytes:v13 bytesPerRow:v11 bytesPerImage:v12];
      free(v13);
      [(NSMapTable *)p_availableIESTextures->registry setObject:v9 forKey:profile];
    }

    else
    {
      v9 = 0;
    }

    C3DIESInfoDestroy(v20);
    os_unfair_lock_unlock(&p_availableIESTextures->lock);
  }

  return v9;
}

- (void)colorMatchSourceTexture:(id)texture sourceColorSpace:(CGColorSpace *)space destinationColorSpace:(CGColorSpace *)colorSpace destinationTexture:(id)destinationTexture renderContext:(id)context
{
  v10 = [(SCNMTLResourceManager *)self colorMatchingComputePipelineStateForSourceColorSpace:space destinationColorSpace:colorSpace renderContext:context];
  resourceComputeEncoder = [(SCNMTLRenderContext *)context resourceComputeEncoder];
  computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)v10 computeEvaluator];
  if (resourceComputeEncoder->_computePipelineState != computeEvaluator)
  {
    resourceComputeEncoder->_computePipelineState = computeEvaluator;
    [(MTLComputeCommandEncoder *)resourceComputeEncoder->_encoder setComputePipelineState:computeEvaluator];
  }

  if (resourceComputeEncoder->_textures[0] != texture)
  {
    resourceComputeEncoder->_textures[0] = texture;
    resourceComputeEncoder->_texturesToBind[0] |= 1uLL;
  }

  if (resourceComputeEncoder->_textures[1] != destinationTexture)
  {
    resourceComputeEncoder->_textures[1] = destinationTexture;
    resourceComputeEncoder->_texturesToBind[0] |= 2uLL;
  }

  width = [texture width];
  height = [texture height];

  SCNMTLComputeCommandEncoder::dispatchOnGrid2D(resourceComputeEncoder, width, height);
}

- (void)colorMatchBiPlanarPixelBufferWithFormatType:(unsigned int)type pixelBufferYCbCrMatrix:(id)matrix pixelBufferColorPrimaries:(id)primaries pixelBufferTransferFunction:(id)function sourceTextureY:(id)y sourceTextureCbCr:(id)cr sourceColorSpace:(CGColorSpace *)space destinationColorSpace:(CGColorSpace *)self0 destinationTexture:(id)self1 renderContext:(id)self2
{
  v14 = [(SCNMTLResourceManager *)self colorMatchingComputePipelineStateForBiPlanarPixelBufferWithFormatType:*&type pixelBufferYCbCrMatrix:matrix pixelBufferColorPrimaries:primaries pixelBufferTransferFunction:function sourceColorSpace:space destinationColorSpace:colorSpace renderContext:context];
  resourceComputeEncoder = [(SCNMTLRenderContext *)context resourceComputeEncoder];
  computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)v14 computeEvaluator];
  if (resourceComputeEncoder->_computePipelineState != computeEvaluator)
  {
    resourceComputeEncoder->_computePipelineState = computeEvaluator;
    [(MTLComputeCommandEncoder *)resourceComputeEncoder->_encoder setComputePipelineState:computeEvaluator];
  }

  if (resourceComputeEncoder->_textures[0] != y)
  {
    resourceComputeEncoder->_textures[0] = y;
    resourceComputeEncoder->_texturesToBind[0] |= 1uLL;
  }

  if (resourceComputeEncoder->_textures[1] != cr)
  {
    resourceComputeEncoder->_textures[1] = cr;
    resourceComputeEncoder->_texturesToBind[0] |= 2uLL;
  }

  if (resourceComputeEncoder->_textures[2] != texture)
  {
    resourceComputeEncoder->_textures[2] = texture;
    resourceComputeEncoder->_texturesToBind[0] |= 4uLL;
  }

  width = [texture width];
  height = [texture height];

  SCNMTLComputeCommandEncoder::dispatchOnGrid2D(resourceComputeEncoder, width, height);
}

- (id)defaultLightingEnvironmentIrradianceTexture
{
  v28[1] = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  if (!self->_defaultLightingEnvironmentIrradianceTexture)
  {
    v3 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "URLForResource:withExtension:", @"SCNDefaultIrradiance", @"ktx"}];
    v27 = *MEMORY[0x277CD71B0];
    v28[0] = MEMORY[0x277CBEC28];
    v4 = -[SCNMTLResourceManager newTextureUsingMTKTextureLoaderWithURL:options:](self, "newTextureUsingMTKTextureLoaderWithURL:options:", v3, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1]);
    self->_defaultLightingEnvironmentIrradianceTexture = v4;
    textureType = [(MTLTexture *)v4 textureType];
    if (textureType != 5)
    {
      v7 = scn_default_log(textureType, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLResourceManager(PBR) *)v7 defaultLightingEnvironmentIrradianceTexture:v8];
      }
    }

    pixelFormat = [(MTLTexture *)self->_defaultLightingEnvironmentIrradianceTexture pixelFormat];
    if (pixelFormat != 115)
    {
      v17 = scn_default_log(pixelFormat, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLResourceManager(PBR) *)v17 defaultLightingEnvironmentIrradianceTexture:v18];
      }
    }
  }

  defaultLightingEnvironmentIrradianceTexture = self->_defaultLightingEnvironmentIrradianceTexture;
  objc_sync_exit(self);
  return defaultLightingEnvironmentIrradianceTexture;
}

- (id)defaultLightingEnvironmentRadianceTexture
{
  v28[1] = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  if (!self->_defaultLightingEnvironmentRadianceTexture)
  {
    v3 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "URLForResource:withExtension:", @"SCNDefaultRadiance", @"ktx"}];
    v27 = *MEMORY[0x277CD71B0];
    v28[0] = MEMORY[0x277CBEC28];
    v4 = -[SCNMTLResourceManager newTextureUsingMTKTextureLoaderWithURL:options:](self, "newTextureUsingMTKTextureLoaderWithURL:options:", v3, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1]);
    self->_defaultLightingEnvironmentRadianceTexture = v4;
    textureType = [(MTLTexture *)v4 textureType];
    if (textureType != 5)
    {
      v7 = scn_default_log(textureType, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLResourceManager(PBR) *)v7 defaultLightingEnvironmentRadianceTexture:v8];
      }
    }

    pixelFormat = [(MTLTexture *)self->_defaultLightingEnvironmentRadianceTexture pixelFormat];
    if (pixelFormat != 115)
    {
      v17 = scn_default_log(pixelFormat, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLResourceManager(PBR) *)v17 defaultLightingEnvironmentRadianceTexture:v18];
      }
    }
  }

  defaultLightingEnvironmentRadianceTexture = self->_defaultLightingEnvironmentRadianceTexture;
  objc_sync_exit(self);
  return defaultLightingEnvironmentRadianceTexture;
}

- (id)irradianceTextureForPrecomputedLightingEnvironment:(id)environment
{
  v32[1] = *MEMORY[0x277D85DE8];
  p_availableIrradianceTextures = &self->_availableIrradianceTextures;
  os_unfair_lock_lock(&self->_availableIrradianceTextures.lock);
  registry = p_availableIrradianceTextures->registry;
  if (!p_availableIrradianceTextures->registry)
  {
    SCNResourceRegistrySetup(p_availableIrradianceTextures, 0);
    registry = p_availableIrradianceTextures->registry;
  }

  v7 = [(NSMapTable *)registry objectForKey:environment];
  if (v7)
  {
    v8 = v7;
    os_unfair_lock_unlock(&p_availableIrradianceTextures->lock);
  }

  else
  {
    irradianceData = [environment irradianceData];
    v31 = *MEMORY[0x277CD71B0];
    v32[0] = MEMORY[0x277CBEC28];
    v8 = -[SCNMTLResourceManager newTextureUsingMTKTextureLoaderWithData:options:](self, "newTextureUsingMTKTextureLoaderWithData:options:", irradianceData, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1]);
    textureType = [v8 textureType];
    if (textureType != 5)
    {
      v12 = scn_default_log(textureType, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLResourceManager(PBR) *)v12 irradianceTextureForPrecomputedLightingEnvironment:v13, v14, v15, v16, v17, v18, v19];
      }
    }

    pixelFormat = [v8 pixelFormat];
    if (pixelFormat != 115)
    {
      v22 = scn_default_log(pixelFormat, v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLResourceManager(PBR) *)v22 irradianceTextureForPrecomputedLightingEnvironment:v23, v24, v25, v26, v27, v28, v29];
      }
    }

    [(NSMapTable *)p_availableIrradianceTextures->registry setObject:v8 forKey:environment];
    os_unfair_lock_unlock(&p_availableIrradianceTextures->lock);
  }

  return v8;
}

- (id)radianceTextureForPrecomputedLightingEnvironment:(id)environment
{
  v32[1] = *MEMORY[0x277D85DE8];
  p_availableRadianceTextures = &self->_availableRadianceTextures;
  os_unfair_lock_lock(&self->_availableRadianceTextures.lock);
  registry = p_availableRadianceTextures->registry;
  if (!p_availableRadianceTextures->registry)
  {
    SCNResourceRegistrySetup(p_availableRadianceTextures, 0);
    registry = p_availableRadianceTextures->registry;
  }

  v7 = [(NSMapTable *)registry objectForKey:environment];
  if (v7)
  {
    v8 = v7;
    os_unfair_lock_unlock(&p_availableRadianceTextures->lock);
  }

  else
  {
    radianceData = [environment radianceData];
    v31 = *MEMORY[0x277CD71B0];
    v32[0] = MEMORY[0x277CBEC28];
    v8 = -[SCNMTLResourceManager newTextureUsingMTKTextureLoaderWithData:options:](self, "newTextureUsingMTKTextureLoaderWithData:options:", radianceData, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1]);
    textureType = [v8 textureType];
    if (textureType != 5)
    {
      v12 = scn_default_log(textureType, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLResourceManager(PBR) *)v12 radianceTextureForPrecomputedLightingEnvironment:v13, v14, v15, v16, v17, v18, v19];
      }
    }

    pixelFormat = [v8 pixelFormat];
    if (pixelFormat != 115)
    {
      v22 = scn_default_log(pixelFormat, v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLResourceManager(PBR) *)v22 radianceTextureForPrecomputedLightingEnvironment:v23, v24, v25, v26, v27, v28, v29];
      }
    }

    [(NSMapTable *)p_availableRadianceTextures->registry setObject:v8 forKey:environment];
    os_unfair_lock_unlock(&p_availableRadianceTextures->lock);
  }

  return v8;
}

- (id)irradianceTextureForEnvironmentTexture:(id)texture renderContext:(id)context applySH:(id)h
{
  p_availableIrradianceTextures = &self->_availableIrradianceTextures;
  os_unfair_lock_lock(&self->_availableIrradianceTextures.lock);
  registry = p_availableIrradianceTextures->registry;
  if (!p_availableIrradianceTextures->registry)
  {
    SCNResourceRegistrySetup(p_availableIrradianceTextures, 0);
    registry = p_availableIrradianceTextures->registry;
  }

  v11 = [(NSMapTable *)registry objectForKey:texture];
  if (v11)
  {
    v12 = v11;
    os_unfair_lock_unlock(&p_availableIrradianceTextures->lock);
  }

  else
  {
    v13 = [MEMORY[0x277CD7058] textureCubeDescriptorWithPixelFormat:115 size:64 mipmapped:0];
    [v13 setUsage:1];
    [v13 setUsage:{objc_msgSend(v13, "usage") | 4}];
    [v13 setStorageMode:2];
    v12 = [(SCNMTLResourceManager *)self newTextureWithDescriptor:v13];
    [(NSMapTable *)p_availableIrradianceTextures->registry setObject:v12 forKey:texture];
    os_unfair_lock_unlock(&p_availableIrradianceTextures->lock);

    [(SCNMTLResourceManager *)self _bakeSphericalHamonicsBasedIrradianceTexture:v12 forEnvironmentTexture:texture renderContext:context applySH:h];
  }

  return v12;
}

- (void)_bakeStochasticIrradianceTexture:(id)texture forEnvironmentTexture:(id)environmentTexture mipmapLevelForSampling:(unint64_t)sampling renderContext:(id)context
{
  samplingCopy = sampling;
  computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)[(SCNMTLResourceManager *)self computePipelineStateForKernel:@"compute_diffusePreIntegrated_texture2d"] computeEvaluator];
  threadExecutionWidth = [computeEvaluator threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [computeEvaluator maxTotalThreadsPerThreadgroup];
  v13 = vcvtms_u32_f32(sqrtf(maxTotalThreadsPerThreadgroup));
  if (threadExecutionWidth * threadExecutionWidth <= maxTotalThreadsPerThreadgroup)
  {
    v14 = threadExecutionWidth;
  }

  else
  {
    v14 = v13;
  }

  contextCopy = context;
  resourceComputeEncoder = [(SCNMTLRenderContext *)context resourceComputeEncoder];
  bzero(resourceComputeEncoder, 0x678uLL);
  v16 = resourceComputeEncoder[207];
  [v16 setComputePipelineState:computeEvaluator];
  v17 = 0;
  v18 = v14 - 1;
  do
  {
    v19 = [texture newTextureViewWithPixelFormat:objc_msgSend(texture textureType:"pixelFormat" levels:contextCopy) slices:2, 0, 1, v17, 1];
    [v16 setTexture:v19 atIndex:0];
    [v16 setTexture:environmentTexture atIndex:1];
    v26 = v17;
    v27 = samplingCopy;
    [v16 setBytes:&v27 length:4 atIndex:0];
    [v16 setBytes:&v26 length:4 atIndex:1];
    v20 = (v18 + [v19 width]) / v14;
    height = [v19 height];
    v25[0] = v20;
    v25[1] = (v18 + height) / v14;
    v25[2] = 1;
    v24[0] = v14;
    v24[1] = v14;
    v24[2] = 1;
    [v16 dispatchThreadgroups:v25 threadsPerThreadgroup:v24];

    ++v17;
  }

  while (v17 != 6);
  if ([texture mipmapLevelCount] > 1)
  {
    resourceBlitEncoder = [(SCNMTLRenderContext *)contextCopy resourceBlitEncoder];
    SCNMTLBlitCommandEncoder::generateMipmapsForTexture(resourceBlitEncoder, texture);
  }
}

- (void)_bakeSphericalHamonicsBasedIrradianceTexture:(id)texture forEnvironmentTexture:(id)environmentTexture renderContext:(id)context applySH:(id)h
{
  v11 = [(SCNMTLResourceManager *)self sphericalHarmonicsForEnvironmentTexture:environmentTexture order:3 commandBuffer:[(SCNMTLRenderContext *)context resourceCommandBuffer]];
  if (h)
  {
    resourceCommandBuffer = [(SCNMTLRenderContext *)context resourceCommandBuffer];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __119__SCNMTLResourceManager_PBR___bakeSphericalHamonicsBasedIrradianceTexture_forEnvironmentTexture_renderContext_applySH___block_invoke;
    v22[3] = &unk_2782FD860;
    v22[4] = v11;
    v22[5] = h;
    [resourceCommandBuffer addCompletedHandler:v22];
  }

  *&v19 = [texture pixelFormat];
  *(&v20 + 1) = @"scn_draw_fullscreen_quad_vertex";
  *&v21 = @"cubemap_from_sh";
  v13 = [(SCNMTLResourceManager *)self newRenderPipelineStateWithDesc:&v18];
  resourceCommandBuffer2 = [(SCNMTLRenderContext *)context resourceCommandBuffer];
  for (i = 0; i != 6; ++i)
  {
    v16 = objc_alloc_init(MEMORY[0x277CD6F50]);
    [objc_msgSend(objc_msgSend(v16 "colorAttachments")];
    [objc_msgSend(objc_msgSend(v16 "colorAttachments")];
    [objc_msgSend(objc_msgSend(v16 "colorAttachments")];
    v17 = [resourceCommandBuffer2 renderCommandEncoderWithDescriptor:v16];

    [v17 setRenderPipelineState:{objc_msgSend(v13, "state")}];
    [v17 setFragmentTexture:environmentTexture atIndex:1];
    LODWORD(v18) = i;
    [v17 setFragmentBuffer:v11 offset:0 atIndex:{0, v18}];
    [v17 setFragmentBytes:&v18 length:4 atIndex:1];
    [v17 drawPrimitives:4 vertexStart:0 vertexCount:4];
    [v17 endEncoding];
  }
}

- (id)newRadianceTextureForEnvironmentTexture:(id)texture engineContext:(__C3DEngineContext *)context cpuAccessible:(BOOL)accessible commandBuffer:(id)buffer
{
  accessibleCopy = accessible;
  v11 = [MEMORY[0x277CD7058] textureCubeDescriptorWithPixelFormat:115 size:256 mipmapped:1];
  [v11 setUsage:1];
  [v11 setUsage:{objc_msgSend(v11, "usage") | 0x10}];
  [v11 setUsage:{objc_msgSend(v11, "usage") | 2}];
  if (accessibleCopy)
  {
    v12 = 0;
  }

  else
  {
    v12 = 2;
  }

  [v11 setStorageMode:v12];
  mipmapLevelCount = [texture mipmapLevelCount];
  mipmapLevelCount2 = [v11 mipmapLevelCount];
  [v11 setMipmapLevelCount:{objc_msgSend(v11, "mipmapLevelCount") - 4}];
  v13 = [(SCNMTLResourceManager *)self newTextureWithDescriptor:v11];
  HasFeatures = C3DEngineContextHasFeatures(context, 512);
  if (HasFeatures)
  {
    v15 = @"compute_specularPreIntegratedLD_texturecube";
  }

  else
  {
    v15 = @"compute_specularPreIntegratedLD_texture2d";
  }

  computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)[(SCNMTLResourceManager *)self computePipelineStateForKernel:v15] computeEvaluator];
  threadExecutionWidth = [computeEvaluator threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [computeEvaluator maxTotalThreadsPerThreadgroup];
  do
  {
    v19 = threadExecutionWidth;
    v20 = 6 * threadExecutionWidth * threadExecutionWidth;
    threadExecutionWidth >>= 1;
  }

  while (v20 > maxTotalThreadsPerThreadgroup);
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:computeEvaluator];
  [computeCommandEncoder setTexture:texture atIndex:1];
  if ([v13 mipmapLevelCount])
  {
    v22 = 0;
    v23 = 6;
    if (!HasFeatures)
    {
      v23 = 1;
    }

    v45 = v23;
    do
    {
      if (mipmapLevelCount < 2)
      {
        v44 = 0;
      }

      else
      {
        mipmapLevelCount3 = [texture mipmapLevelCount];
        if (mipmapLevelCount3 < mipmapLevelCount2)
        {
          v25 = -1;
        }

        else
        {
          v25 = mipmapLevelCount3 - mipmapLevelCount2;
        }

        v44 = [texture newTextureViewWithPixelFormat:objc_msgSend(texture textureType:"pixelFormat") levels:5 slices:v22 + v25 + 1, 1, 0, 6];
        [computeCommandEncoder setTexture:? atIndex:?];
      }

      v26 = 0;
      do
      {
        if (HasFeatures)
        {
          v27 = v13;
          v28 = 5;
          v29 = v22;
          v30 = 0;
          v31 = 6;
        }

        else
        {
          LODWORD(v47[0]) = v26;
          [computeCommandEncoder setBytes:v47 length:4 atIndex:1];
          v27 = v13;
          v28 = 2;
          v29 = v22;
          v30 = v26;
          v31 = 1;
        }

        v32 = [v27 newTextureViewWithPixelFormat:115 textureType:v28 levels:v29 slices:1, v30, v31];
        [computeCommandEncoder setTexture:v32 atIndex:0];
        mipmapLevelCount4 = [v13 mipmapLevelCount];
        v34 = 0.0;
        if (mipmapLevelCount4 >= 2)
        {
          v34 = 1.0 / ([v13 mipmapLevelCount] - 1);
        }

        v48 = fminf(fmaxf(v34 * v22, 0.01), 1.0);
        [computeCommandEncoder setBytes:&v48 length:4 atIndex:0];
        width = [v32 width];
        if (v19 >= width)
        {
          v36 = width;
        }

        else
        {
          v36 = v19;
        }

        v37 = (v36 - 1 + [v32 width]) / v36;
        height = [v32 height];
        v47[0] = v37;
        v47[1] = (v36 - 1 + height) / v36;
        v47[2] = v45;
        v46[0] = v36;
        v46[1] = v36;
        v46[2] = 1;
        [computeCommandEncoder dispatchThreadgroups:v47 threadsPerThreadgroup:v46];

        v40 = v26++ > 4 || HasFeatures;
      }

      while ((v40 & 1) == 0);

      ++v22;
    }

    while (v22 < [v13 mipmapLevelCount]);
  }

  [computeCommandEncoder endEncoding];
  return v13;
}

- (id)radianceTextureForEnvironmentTexture:(id)texture engineContext:(__C3DEngineContext *)context commandBuffer:(id)buffer
{
  p_availableRadianceTextures = &self->_availableRadianceTextures;
  os_unfair_lock_lock(&self->_availableRadianceTextures.lock);
  registry = p_availableRadianceTextures->registry;
  if (!p_availableRadianceTextures->registry)
  {
    SCNResourceRegistrySetup(p_availableRadianceTextures, 0);
    registry = p_availableRadianceTextures->registry;
  }

  v11 = [(NSMapTable *)registry objectForKey:texture];
  if (v11)
  {
    v12 = v11;
    os_unfair_lock_unlock(&p_availableRadianceTextures->lock);
  }

  else
  {
    v12 = [(SCNMTLResourceManager *)self newRadianceTextureForEnvironmentTexture:texture engineContext:context cpuAccessible:0 commandBuffer:buffer];
    [(NSMapTable *)p_availableRadianceTextures->registry setObject:v12 forKey:texture];
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
    v6 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:115 width:128 height:128 mipmapped:0];
    [v6 setUsage:3];
    [v6 setStorageMode:2];
    self->_specularDFGDiffuseHammonTexture = [(SCNMTLResourceManager *)self newTextureWithDescriptor:v6];
    computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)[(SCNMTLResourceManager *)self computePipelineStateForKernel:@"compute_specularPreIntegratedDFG_diffuseHammon"] computeEvaluator];
    resourceComputeEncoder = [(SCNMTLRenderContext *)context resourceComputeEncoder];
    bzero(resourceComputeEncoder, 0x678uLL);
    v9 = resourceComputeEncoder[207];
    [v9 setComputePipelineState:computeEvaluator];
    [v9 setTexture:self->_specularDFGDiffuseHammonTexture atIndex:0];
    [(SCNMTLResourceManager *)self dispatchForTexture:v9 computeEncoder:computeEvaluator pipelineState:?];
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
    v4 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:125 width:64 height:64 mipmapped:0];
    [v4 setStorageMode:0];
    [v4 setTextureType:3];
    [v4 setArrayLength:3];
    v5 = [(MTLDevice *)self->_device newTextureWithDescriptor:v4];
    self->_areaLightPrecomputedDataTexture = v5;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = vdupq_n_s64(0x40uLL);
    v13 = 1;
    [(MTLTexture *)v5 replaceRegion:&v9 mipmapLevel:0 slice:0 withBytes:&area_lights_pre_computed_tables bytesPerRow:1024 bytesPerImage:0x10000];
    v6 = self->_areaLightPrecomputedDataTexture;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = vdupq_n_s64(0x40uLL);
    v13 = 1;
    [(MTLTexture *)v6 replaceRegion:&v9 mipmapLevel:0 slice:1 withBytes:&unk_21C2916F0 bytesPerRow:1024 bytesPerImage:0x10000];
    v7 = self->_areaLightPrecomputedDataTexture;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = vdupq_n_s64(0x40uLL);
    v13 = 1;
    [(MTLTexture *)v7 replaceRegion:&v9 mipmapLevel:0 slice:2 withBytes:&unk_21C2916F0 bytesPerRow:1024 bytesPerImage:0x10000];
    areaLightPrecomputedDataTexture = self->_areaLightPrecomputedDataTexture;
  }

  objc_sync_exit(self);
  return areaLightPrecomputedDataTexture;
}

- (id)shFromCPU:(id)u commandBuffer:(id)buffer
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = [(SCNMTLResourceManager *)self unstageTexture:u commandBuffer:buffer];
  v5 = 0;
  memset(v32, 0, 108);
  while (1)
  {
    pixelFormat = [v4 pixelFormat];
    if ((pixelFormat & 0xFFFFFFFFFFFFFFFELL) != 0x46)
    {
      break;
    }

    v8 = 4 * [v4 width];
    v9 = v8 * [v4 height];
    v10 = malloc_type_calloc(v9, 1uLL, 0x100004052888210uLL);
    width = [v4 width];
    height = [v4 height];
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = width;
    v30 = height;
    v31 = 1;
    [v4 getBytes:v10 bytesPerRow:v8 bytesPerImage:v9 fromRegion:&v26 mipmapLevel:0 slice:v5];
    v13 = malloc_type_calloc([v4 height] * objc_msgSend(v4, "width"), 0x10uLL, 0x1000040451B5BE8uLL);
    convert_rgba8unorm_to_rgbaf32(v13, 16 * [v4 width], v10, v8, objc_msgSend(v4, "width"), objc_msgSend(v4, "height"));
LABEL_7:
    free(v10);
LABEL_9:
    compute_sh(v13, [v4 width], v5, 3u, v32);
    free(v13);
    if (++v5 == 6)
    {
      return [(MTLDevice *)self->_device newBufferWithBytes:v32 length:108 options:0];
    }
  }

  v14 = pixelFormat;
  if (pixelFormat == 125)
  {
    v19 = 16 * [v4 width];
    v20 = v19 * [v4 height];
    v13 = malloc_type_calloc(v20, 1uLL, 0x60039EF2uLL);
    width2 = [v4 width];
    height2 = [v4 height];
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = width2;
    v30 = height2;
    v31 = 1;
    [v4 getBytes:v13 bytesPerRow:v19 bytesPerImage:v20 fromRegion:&v26 mipmapLevel:0 slice:v5];
    goto LABEL_9;
  }

  if (pixelFormat == 115)
  {
    v15 = 8 * [v4 width];
    v16 = v15 * [v4 height];
    v10 = malloc_type_calloc(v16, 1uLL, 0x100004052888210uLL);
    width3 = [v4 width];
    height3 = [v4 height];
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = width3;
    v30 = height3;
    v31 = 1;
    [v4 getBytes:v10 bytesPerRow:v15 bytesPerImage:v16 fromRegion:&v26 mipmapLevel:0 slice:v5];
    v13 = malloc_type_calloc([v4 height] * objc_msgSend(v4, "width"), 0x10uLL, 0x1000040451B5BE8uLL);
    convert_rgba16f_to_rgbaf32(v13, 16 * [v4 width], v10, v15, objc_msgSend(v4, "width"), objc_msgSend(v4, "height"));
    goto LABEL_7;
  }

  v24 = scn_default_log(pixelFormat, v7);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [SCNMTLResourceManager(SH) shFromCPU:v14 commandBuffer:v24];
  }

  return 0;
}

- (id)sphericalHarmonicsForEnvironmentTexture:(id)texture order:(unint64_t)order commandBuffer:(id)buffer
{
  v9 = order * order;
  v22 = [(MTLDevice *)self->_device newBufferWithLength:12 * order * order options:0];
  v10 = -[SCNMTLOpenSubdivComputeEvaluator computeEvaluator](-[SCNMTLResourceManager computePipelineStateForKernel:](self, "computePipelineStateForKernel:", [MEMORY[0x277CCACA8] stringWithFormat:@"compute_sh%d_from_cubemap_threadgroup_mem", order]));
  v11 = v10;
  if (!v10)
  {
    v11 = -[SCNMTLOpenSubdivComputeEvaluator computeEvaluator](-[SCNMTLResourceManager computePipelineStateForKernel:](self, "computePipelineStateForKernel:", [MEMORY[0x277CCACA8] stringWithFormat:@"compute_sh%d_from_cubemap", order]));
  }

  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:v11];
  if ([texture mipmapLevelCount] >= 0xA)
  {
    mipmapLevelCount = [texture mipmapLevelCount];
    v14 = 9;
    if (mipmapLevelCount > 9)
    {
      v14 = mipmapLevelCount;
    }

    texture = [texture newTextureViewWithPixelFormat:objc_msgSend(texture textureType:"pixelFormat") levels:5 slices:v14 - 9, 1, 0, 6];
  }

  [computeCommandEncoder setTexture:texture atIndex:0];
  if (v10)
  {
    v15 = [(MTLDevice *)self->_device newBufferWithLength:72 * v9 options:32];
    [computeCommandEncoder setBuffer:v15 offset:0 atIndex:1];
    v16 = (16 * v9);
    threadExecutionWidth = [v11 threadExecutionWidth];
    v18 = 0x7FFF / v16;
    if (threadExecutionWidth < v18)
    {
      v18 = threadExecutionWidth;
    }

    if (v18 >= 0x40)
    {
      v19 = 64;
    }

    else
    {
      v19 = v18;
    }

    [computeCommandEncoder setThreadgroupMemoryLength:v19 * v16 atIndex:0];
    v24 = xmmword_21C2A1730;
    v25 = 1;
    *v23 = v19;
    *&v23[8] = vdupq_n_s64(1uLL);
    [computeCommandEncoder dispatchThreadgroups:&v24 threadsPerThreadgroup:v23];
    [computeCommandEncoder setComputePipelineState:{-[SCNMTLOpenSubdivComputeEvaluator computeEvaluator](-[SCNMTLResourceManager computePipelineStateForKernel:](self, "computePipelineStateForKernel:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"sum_sh%d", order)))}];
    v20 = v22;
    [computeCommandEncoder setBuffer:v22 offset:0 atIndex:0];
    v24 = xmmword_21C2A1740;
    v25 = 1;
    *v23 = xmmword_21C2A1740;
    *&v23[16] = 1;
    [computeCommandEncoder dispatchThreadgroups:&v24 threadsPerThreadgroup:v23];
  }

  else
  {
    v20 = v22;
    [computeCommandEncoder setBuffer:v22 offset:0 atIndex:0];
    v24 = xmmword_21C2A1740;
    v25 = 1;
    *v23 = xmmword_21C2A1740;
    *&v23[16] = 1;
    [computeCommandEncoder dispatchThreadgroups:&v24 threadsPerThreadgroup:v23];
  }

  [computeCommandEncoder endEncoding];
  return v20;
}

- (id)renderResourceForProgramDesc:(id *)desc renderPassDescriptor:(id)descriptor
{
  var0 = desc->var0;
  var3 = desc->var3;
  var5 = desc->var5;
  v10 = desc->var16.var0;
  var1 = desc->var16.var1;
  v95 = 0u;
  v96 = 0u;
  memset(v94, 0, sizeof(v94));
  v93 = 0u;
  v92[0] = desc->var12;
  if (!v92[0])
  {
    v11 = scn_default_log(self, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLResourceManager(Compilation) *)v11 renderResourceForProgramDesc:v12 renderPassDescriptor:v13, v14, v15, v16, v17, v18];
    }
  }

  v19 = 0;
  v92[1] = C3DFXMetalProgramGetHash(var0);
  *(&v93 + 1) = var3;
  LOBYTE(v94[0]) = v10;
  do
  {
    *(v94 + v19 + 1) = [objc_msgSend(objc_msgSend(objc_msgSend(descriptor "colorAttachments")];
    ++v19;
  }

  while (v19 != 8);
  *(&v95 + 1) = [objc_msgSend(objc_msgSend(descriptor "depthAttachment")];
  *&v96 = [objc_msgSend(objc_msgSend(descriptor "stencilAttachment")];
  BYTE8(v96) = desc->var8;
  var10 = desc->var10;
  if (var10 <= 1)
  {
    LOBYTE(var10) = 1;
  }

  BYTE10(v96) = var10;
  v21 = [objc_msgSend(objc_msgSend(objc_msgSend(descriptor "colorAttachments")];
  if (v21 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  v23 = [objc_msgSend(objc_msgSend(descriptor "depthAttachment")];
  if (v22 <= v23)
  {
    v22 = v23;
  }

  v24 = [objc_msgSend(objc_msgSend(descriptor "stencilAttachment")];
  v25 = v22;
  if (v22 <= v24)
  {
    v25 = v24;
  }

  BYTE9(v96) = v25;
  v27 = [objc_msgSend(objc_msgSend(objc_msgSend(descriptor "colorAttachments")];
  v28 = var5;
  if (!v27)
  {
    v28 = C3DBlendStatesDefaultReplace(var5, v26);
  }

  v29 = 0;
  *&v93 = v28;
  BYTE11(v96) = desc->var7;
  v30 = 0x5253C9ADE8F4CA80;
  do
  {
    v31 = v92[v29++];
    v30 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v31) ^ ((0xC6A4A7935BD1E995 * v31) >> 47))) ^ v30);
  }

  while (v29 != 16);
  v32 = ((0xC6A4A7935BD1E995 * (v30 ^ (v30 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v30 ^ (v30 >> 47))) >> 47));
  os_unfair_lock_lock(&self->_availablePipelineStatesLock);
  Value = CFDictionaryGetValue(self->_availablePipelineStates, v32);
  if (Value)
  {
    v34 = Value;
    os_unfair_lock_unlock(&self->_availablePipelineStatesLock);
    return v34;
  }

  TypeID = C3DFXMetalProgramGetTypeID();
  v36 = CFGetTypeID(var0);
  if (TypeID != v36)
  {
    v61 = scn_default_log(v36, v37);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLResourceManager(Compilation) renderResourceForProgramDesc:renderPassDescriptor:];
    }

    goto LABEL_32;
  }

  FunctionName = C3DFXMetalProgramGetFunctionName(var0, 0);
  if (!FunctionName)
  {
    if ((renderResourceForProgramDesc_renderPassDescriptor__done & 1) == 0)
    {
      renderResourceForProgramDesc_renderPassDescriptor__done = 1;
      v63 = scn_default_log(0, v39);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        [SCNMTLResourceManager(Compilation) renderResourceForProgramDesc:renderPassDescriptor:];
      }
    }

LABEL_32:
    os_unfair_lock_unlock(&self->_availablePipelineStatesLock);
    return 0;
  }

  v67 = FunctionName;
  key = v32;
  v66 = C3DFXMetalProgramGetFunctionName(var0, 1);
  Constants = C3DFXMetalProgramGetConstants(var0, v40);
  v86 = 0;
  v87 = &v86;
  v88 = 0x3052000000;
  v89 = __Block_byref_object_copy__12;
  v90 = __Block_byref_object_dispose__12;
  v91 = 0;
  v80 = 0;
  v81 = &v80;
  v82 = 0x3052000000;
  v83 = __Block_byref_object_copy__12;
  v84 = __Block_byref_object_dispose__12;
  v85 = 0;
  LinkedFunctionsFamilies = C3DFXMetalProgramGetLinkedFunctionsFamilies(var0, v41);
  v75 = MEMORY[0x277D85DD0];
  v76 = 3221225472;
  v77 = __88__SCNMTLResourceManager_Compilation__renderResourceForProgramDesc_renderPassDescriptor___block_invoke;
  v78 = &unk_278301C00;
  v79 = &v86;
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v72 = __88__SCNMTLResourceManager_Compilation__renderResourceForProgramDesc_renderPassDescriptor___block_invoke_2;
  v73 = &unk_278301C00;
  v74 = &v80;
  if (LinkedFunctionsFamilies)
  {
    v43 = 0;
    v44 = 1;
    do
    {
      v45 = v44;
      frameworkLibrary = [-[SCNMTLLibraryManager frameworkLibrary](self->_libraryManager frameworkLibrary];
      v72(v71, frameworkLibrary);

      v44 = 0;
      v43 = 1;
    }

    while ((v45 & 1) != 0);
  }

  *&__src[22] = 0;
  memset(&__src[20], 0, 32);
  memset(&__src[18], 0, 32);
  v47 = *&desc->var13;
  __src[4] = *&desc->var11;
  __src[5] = v47;
  __src[6] = desc->var16;
  var17 = desc->var17;
  v49 = *&desc->var2;
  __src[0] = *&desc->var0;
  __src[1] = v49;
  v50 = *&desc->var6;
  __src[2] = *&desc->var4;
  __src[3] = v50;
  *(&__src[12] + 8) = 0u;
  *(&__src[11] + 8) = 0u;
  *(&__src[10] + 8) = 0u;
  *(&__src[9] + 8) = 0u;
  *(&__src[8] + 8) = 0u;
  *(&__src[7] + 8) = 0u;
  *&__src[7] = var17;
  *(&__src[13] + 1) = var5;
  *&__src[14] = desc->var7;
  *(&__src[14] + 1) = *&__src[14];
  *&__src[15] = *&__src[14];
  *(&__src[15] + 1) = *&__src[14];
  *&__src[16] = *&__src[14];
  *(&__src[16] + 1) = *&__src[14];
  __src[17] = 0uLL;
  LOBYTE(__src[18]) = desc->var8;
  var11 = desc->var11;
  *(&__src[18] + 1) = Constants;
  *&__src[19] = var11;
  *(&__src[19] + 1) = v67;
  *&__src[20] = v66;
  *(&__src[20] + 1) = v87[5];
  *&__src[21] = v81[5];
  *(&__src[21] + 1) = var1;
  LOBYTE(__src[22]) = desc->var14;
  WORD1(__src[22]) = 257;
  SCNMTLRenderPipelineApplyRenderPassDescriptor(&__src[8], descriptor);
  memcpy(__dst, __src, sizeof(__dst));
  v34 = [(SCNMTLResourceManager *)self newRenderPipelineStateWithDesc:__dst];
  if (!v34)
  {
    v53 = scn_default_log(0, v52);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLResourceManager(Compilation) *)v53 renderResourceForProgramDesc:v54 renderPassDescriptor:v55, v56, v57, v58, v59, v60];
    }
  }

  CFDictionarySetValue(self->_availablePipelineStates, key, v34);

  os_unfair_lock_unlock(&self->_availablePipelineStatesLock);
  _Block_object_dispose(&v80, 8);
  _Block_object_dispose(&v86, 8);
  return v34;
}

uint64_t __88__SCNMTLResourceManager_Compilation__renderResourceForProgramDesc_renderPassDescriptor___block_invoke(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (v4)
  {
    v5 = [objc_msgSend(v4 "privateFunctions")];
    v6 = *(*(*(a1 + 32) + 8) + 40);

    return [v6 setPrivateFunctions:v5];
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 40) = objc_alloc_init(MEMORY[0x277CD6EB8]);
    v8[0] = a2;
    return [*(*(*(a1 + 32) + 8) + 40) setPrivateFunctions:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v8, 1)}];
  }
}

uint64_t __88__SCNMTLResourceManager_Compilation__renderResourceForProgramDesc_renderPassDescriptor___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (v4)
  {
    v5 = [objc_msgSend(v4 "privateFunctions")];
    v6 = *(*(*(a1 + 32) + 8) + 40);

    return [v6 setPrivateFunctions:v5];
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 40) = objc_alloc_init(MEMORY[0x277CD6EB8]);
    v8[0] = a2;
    return [*(*(*(a1 + 32) + 8) + 40) setPrivateFunctions:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v8, 1)}];
  }
}

- (__C3DFXMetalProgram)defaultProgramUsingTessellation:(BOOL)tessellation
{
  v3 = &OBJC_IVAR___SCNMTLResourceManager__defaultProgram;
  if (tessellation)
  {
    v3 = &OBJC_IVAR___SCNMTLResourceManager__defaultProgramForTessellation;
  }

  return *(&self->super.isa + *v3);
}

- (void)_createPipelineStateWithDescriptor:(id)descriptor desc:(id *)desc pipeline:(id)pipeline
{
  memcpy(__dst, desc, sizeof(__dst));
  SCNMTLRenderPipelineDescRetain(__dst);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v22 = __87__SCNMTLResourceManager_Compilation___createPipelineStateWithDescriptor_desc_pipeline___block_invoke;
  v23 = &unk_278301C38;
  memcpy(v26, desc, sizeof(v26));
  pipelineCopy = pipeline;
  descriptorCopy = descriptor;
  ++self->__engineStats->renderPipelineCount;
  v11 = CACurrentMediaTime();
  if (desc->var13 - 1 >= 2)
  {
    if (desc->var13)
    {
      v15 = scn_default_log(v9, v10);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [SCNMTLLibraryManager libraryForProgramDesc:completionHandler:];
      }
    }

    else
    {
      __dst[0] = 0;
      if (desc->var15)
      {
        v16 = 0;
        v14 = [(MTLDevice *)self->_device newRenderPipelineStateWithDescriptor:descriptor options:3 reflection:&v16 error:__dst];
        self->__engineStats->renderPipelineCompilationTime = CACurrentMediaTime() - v11 + self->__engineStats->renderPipelineCompilationTime;
        v22(v21, v14, __dst[0]);
        if (v14)
        {
          [(SCNMTLShaderBindingsGenerator *)self->_bindingsGenerator generateBindingsForPipeline:pipeline withReflection:v16 program:desc->var0.var0 material:desc->var0.var1 geometry:desc->var0.var2 pass:desc->var0.var3];
        }
      }

      else
      {
        v14 = [(MTLDevice *)self->_device newRenderPipelineStateWithDescriptor:descriptor error:__dst];
        self->__engineStats->renderPipelineCompilationTime = CACurrentMediaTime() - v11 + self->__engineStats->renderPipelineCompilationTime;
        v22(v21, v14, __dst[0]);
      }
    }
  }

  else
  {
    shaderCompilationGroup = [(SCNMTLLibraryManager *)self->_libraryManager shaderCompilationGroup];
    dispatch_group_enter(shaderCompilationGroup);
    device = self->_device;
    if (desc->var15)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __87__SCNMTLResourceManager_Compilation___createPipelineStateWithDescriptor_desc_pipeline___block_invoke_11;
      v18[3] = &unk_278301C88;
      memcpy(v19, desc, sizeof(v19));
      v20 = v11;
      v18[4] = self;
      v18[5] = pipeline;
      v18[6] = shaderCompilationGroup;
      v18[7] = v21;
      [(MTLDevice *)device newRenderPipelineStateWithDescriptor:descriptor options:3 completionHandler:v18];
    }

    else
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __87__SCNMTLResourceManager_Compilation___createPipelineStateWithDescriptor_desc_pipeline___block_invoke_3;
      v17[3] = &unk_278301CB0;
      *&v17[7] = v11;
      v17[5] = shaderCompilationGroup;
      v17[6] = v21;
      v17[4] = self;
      [(MTLDevice *)device newRenderPipelineStateWithDescriptor:descriptor completionHandler:v17];
    }
  }
}

void __87__SCNMTLResourceManager_Compilation___createPipelineStateWithDescriptor_desc_pipeline___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    if (a3)
    {
      v6 = scn_default_log(a1, 0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __87__SCNMTLResourceManager_Compilation___createPipelineStateWithDescriptor_desc_pipeline___block_invoke_cold_1(a1, a3, v6);
      }
    }
  }

  [*(a1 + 32) setState:a2];
  v7 = *(a1 + 32) + 32;
  v9 = *(a1 + 224);
  v8 = *(a1 + 240);
  v10 = *(a1 + 208);
  *(v7 + 80) = *(a1 + 256);
  *(v7 + 48) = v9;
  *(v7 + 64) = v8;
  *(v7 + 32) = v10;
  v11 = *(a1 + 192);
  *v7 = *(a1 + 176);
  *(v7 + 16) = v11;
  [*(a1 + 32) setVertexDescriptor:{objc_msgSend(*(a1 + 40), "vertexDescriptor")}];
  [*(a1 + 32) setVertexFunction:{objc_msgSend(*(a1 + 40), "vertexFunction")}];
  [*(a1 + 32) setFragmentFunction:{objc_msgSend(*(a1 + 40), "fragmentFunction")}];
  *(*(a1 + 32) + 16) = *(a1 + 48);
  *(*(a1 + 32) + 24) = *(a1 + 72);
  memcpy(__dst, (a1 + 48), sizeof(__dst));
  SCNMTLRenderPipelineDescRelease(__dst);
}

void __87__SCNMTLResourceManager_Compilation___createPipelineStateWithDescriptor_desc_pipeline___block_invoke_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memcpy(__dst, (a1 + 64), sizeof(__dst));
  SCNMTLRenderPipelineDescRetain(__dst);
  v8 = [*(*(a1 + 32) + 32) deviceQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__SCNMTLResourceManager_Compilation___createPipelineStateWithDescriptor_desc_pipeline___block_invoke_2;
  v10[3] = &unk_278301C60;
  v12 = *(a1 + 424);
  v9 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v10[5] = a4;
  v10[6] = a2;
  v10[7] = v9;
  v10[8] = a3;
  memcpy(v13, (a1 + 64), sizeof(v13));
  v11 = *(a1 + 48);
  dispatch_async(v8, v10);
}

void __87__SCNMTLResourceManager_Compilation___createPipelineStateWithDescriptor_desc_pipeline___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 32) + 24) + 304) = CACurrentMediaTime() - *(a1 + 88) + *(*(*(a1 + 32) + 24) + 304);
  (*(*(a1 + 80) + 16))();
  if (*(a1 + 48))
  {
    [*(*(a1 + 32) + 40) generateBindingsForPipeline:*(a1 + 56) withReflection:*(a1 + 64) program:*(a1 + 96) material:*(a1 + 104) geometry:*(a1 + 112) pass:*(a1 + 120)];
    v2 = *(a1 + 48);
  }

  else
  {
    v2 = 0;
  }

  [*(a1 + 56) setState:v2];
  memcpy(__dst, (a1 + 96), sizeof(__dst));
  SCNMTLRenderPipelineDescRelease(__dst);
  dispatch_group_leave(*(a1 + 72));
}

void __87__SCNMTLResourceManager_Compilation___createPipelineStateWithDescriptor_desc_pipeline___block_invoke_3(uint64_t a1)
{
  *(*(*(a1 + 32) + 24) + 304) = CACurrentMediaTime() - *(a1 + 56) + *(*(*(a1 + 32) + 24) + 304);
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

- (id)newRenderPipelineStateWithDesc:(id *)desc
{
  if (desc->var1)
  {
    memcpy(__dst, desc, 0x168uLL);
    v5 = _pipelineDescriptorForPipelineDesc(__dst);
    if (v5)
    {
      v6 = v5;
      v7 = objc_alloc_init(SCNMTLRenderPipeline);
      memcpy(__dst, desc, 0x168uLL);
      [(SCNMTLResourceManager *)self _createPipelineStateWithDescriptor:v6 desc:__dst pipeline:v7];
      ++self->__engineStats->prgCount;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = objc_alloc_init(SCNMTLRenderPipeline);
    memcpy(__dst, desc, 0x168uLL);
    SCNMTLRenderPipelineDescRetain(__dst);
    libraryManager = self->_libraryManager;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __69__SCNMTLResourceManager_Compilation__newRenderPipelineStateWithDesc___block_invoke;
    v13[3] = &unk_278301CD8;
    memcpy(v14, desc, sizeof(v14));
    v13[4] = self;
    v13[5] = v7;
    v9 = *&desc->var0.var13;
    __dst[4] = *&desc->var0.var11;
    __dst[5] = v9;
    __dst[6] = desc->var0.var16;
    *&__dst[7] = desc->var0.var17;
    v10 = *&desc->var0.var2;
    __dst[0] = *&desc->var0.var0;
    __dst[1] = v10;
    v11 = *&desc->var0.var6;
    __dst[2] = *&desc->var0.var4;
    __dst[3] = v11;
    [(SCNMTLLibraryManager *)libraryManager libraryForProgramDesc:__dst completionHandler:v13];
  }

  return v7;
}

void __69__SCNMTLResourceManager_Compilation__newRenderPipelineStateWithDesc___block_invoke(uint64_t a1, void *a2)
{
  v3 = (a1 + 48);
  v4 = *(a1 + 48);
  v5 = *(a1 + 104);
  v6 = *(a1 + 136);
  v47 = *(a1 + 120);
  v48 = v6;
  v49 = *(a1 + 152);
  v7 = *(a1 + 72);
  v43 = *(a1 + 56);
  v44 = v7;
  v45 = *(a1 + 88);
  v46 = v5;
  v8 = *(a1 + 192);
  v37 = *(a1 + 176);
  v38 = v8;
  v9 = *(a1 + 208);
  v10 = *(a1 + 224);
  v11 = *(a1 + 240);
  v12 = *(a1 + 264);
  v42 = *(a1 + 256);
  v40 = v10;
  v41 = v11;
  v39 = v9;
  v13 = *(a1 + 272);
  v14 = *(a1 + 288);
  v15 = *(a1 + 304);
  v16 = *(a1 + 320);
  Constants = *(a1 + 344);
  v36 = *(a1 + 336);
  v34 = v15;
  v35 = v16;
  v32 = v13;
  v33 = v14;
  v19 = *(a1 + 352);
  FunctionName = *(a1 + 360);
  v20 = *(a1 + 368);
  v21 = *(a1 + 392);
  v30 = *(a1 + 376);
  v31 = v21;
  v22 = *(*(a1 + 32) + 32);
  if (a2)
  {
    v23 = a2;
    if ([v22 commonProfileCacheLibrary] == a2 && v4)
    {
      FunctionName = C3DFXMetalProgramGetFunctionName(v4, 0);
      v20 = C3DFXMetalProgramGetFunctionName(v4, 1);
    }
  }

  else
  {
    v23 = [v22 frameworkLibrary];
    v4 = [*(a1 + 32) defaultProgramUsingTessellation:*(a1 + 392) != 0];
    FunctionName = C3DFXMetalProgramGetFunctionName(v4, 0);
    v20 = C3DFXMetalProgramGetFunctionName(v4, 1);
    Constants = C3DFXMetalProgramGetConstants(v4, v24);
    v12 = 0;
  }

  *__dst = v4;
  *&__dst[56] = v46;
  *&__dst[72] = v47;
  *&__dst[88] = v48;
  *&__dst[104] = v49;
  *&__dst[8] = v43;
  *&__dst[24] = v44;
  *&__dst[40] = v45;
  *&__dst[120] = v23;
  *&__dst[144] = v38;
  *&__dst[128] = v37;
  *&__dst[192] = v41;
  *&__dst[176] = v40;
  *&__dst[160] = v39;
  *&__dst[208] = v42;
  *&__dst[216] = v12;
  *&__dst[272] = v35;
  *&__dst[256] = v34;
  *&__dst[224] = v32;
  *&__dst[240] = v33;
  *&__dst[288] = v36;
  *&__dst[296] = Constants;
  *&__dst[304] = v19;
  *&__dst[312] = FunctionName;
  *&__dst[320] = v20;
  *&__dst[328] = v30;
  *&__dst[344] = v31;
  v25 = _pipelineDescriptorForPipelineDesc(__dst);
  if (v25)
  {
    v26 = v25;
    v27 = *(a1 + 32);
    v28 = *(a1 + 40);
    *__dst = v4;
    *&__dst[56] = v46;
    *&__dst[72] = v47;
    *&__dst[88] = v48;
    *&__dst[104] = v49;
    *&__dst[8] = v43;
    *&__dst[24] = v44;
    *&__dst[40] = v45;
    *&__dst[120] = v23;
    *&__dst[144] = v38;
    *&__dst[128] = v37;
    *&__dst[192] = v41;
    *&__dst[176] = v40;
    *&__dst[160] = v39;
    *&__dst[208] = v42;
    *&__dst[216] = v12;
    *&__dst[272] = v35;
    *&__dst[256] = v34;
    *&__dst[224] = v32;
    *&__dst[240] = v33;
    *&__dst[288] = v36;
    *&__dst[296] = Constants;
    *&__dst[304] = v19;
    *&__dst[312] = FunctionName;
    *&__dst[320] = v20;
    *&__dst[328] = v30;
    *&__dst[344] = v31;
    [v27 _createPipelineStateWithDescriptor:v26 desc:__dst pipeline:v28];
  }

  memcpy(__dst, v3, sizeof(__dst));
  SCNMTLRenderPipelineDescRelease(__dst);
}

- (id)_newComputeDescriptorForPipelineDesc:(id *)desc library:(id)library
{
  v6 = objc_alloc_init(MEMORY[0x277CD6D30]);
  var1 = desc->var1;
  if (!var1)
  {
    v10 = [library newFunctionWithName:desc->var0];
    if (v10)
    {
      goto LABEL_5;
    }

    v14 = scn_default_log(0, v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLResourceManager(Compilation) _newComputeDescriptorForPipelineDesc:library:];
    }

LABEL_12:

    return 0;
  }

  v16 = 0;
  v8 = [library newFunctionWithName:desc->var0 constantValues:var1 error:&v16];
  if (!v8)
  {
    v13 = scn_default_log(0, v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLResourceManager(Compilation) _newComputeDescriptorForPipelineDesc:library:];
    }

    goto LABEL_12;
  }

  v10 = v8;
LABEL_5:
  [v6 setComputeFunction:v10];

  var3 = desc->var3;
  if (var3)
  {
    var3[2](var3, v10, desc->var2);
  }

  [v6 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:desc->var4];
  [v6 setStageInputDescriptor:desc->var2];
  return v6;
}

- (void)_configureComputePipeline:(id)pipeline withDescriptor:(id)descriptor
{
  v12 = 0;
  ++self->__engineStats->computePipelineCount;
  v7 = CACurrentMediaTime();
  v8 = [(MTLDevice *)self->_device newComputePipelineStateWithDescriptor:descriptor options:0 reflection:0 error:&v12];
  self->__engineStats->computePipelineCompilationTime = CACurrentMediaTime() - v7 + self->__engineStats->computePipelineCompilationTime;
  if (v8)
  {
    -[SCNMTLComputePipeline setComputeFunction:](pipeline, [descriptor computeFunction]);
    [(SCNMTLComputePipeline *)pipeline setState:v8];
  }

  else
  {
    v11 = scn_default_log(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLResourceManager(Compilation) _configureComputePipeline:withDescriptor:];
    }
  }
}

- (id)newComputePipelineStateForDesc:(id *)desc library:(id)library
{
  v5 = *&desc->var2;
  v10[0] = *&desc->var0;
  v10[1] = v5;
  v11 = *&desc->var4;
  v6 = [(SCNMTLResourceManager *)self _newComputeDescriptorForPipelineDesc:v10 library:library];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = objc_alloc_init(SCNMTLComputePipeline);
  [(SCNMTLResourceManager *)self _configureComputePipeline:v8 withDescriptor:v7];

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
        kernelCopy3 = [kernel stringByAppendingString:hash];
      }

      goto LABEL_10;
    }
  }

  else
  {
    v12 = SCNResourceRegistrySetup(p_availableComputePipelines, 1);
    if (!constants)
    {
      goto LABEL_8;
    }
  }

  if (hash)
  {
    goto LABEL_8;
  }

  v14 = scn_default_log(v12, v13);
  kernelCopy3 = kernel;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    [(SCNMTLResourceManager(Compilation) *)v14 _computePipelineStateForKernel:v15 constants:v16 constantsHash:v17 threadGroupSizeIsMultipleOfThreadExecutionWidth:v18, v19, v20, v21];
    kernelCopy3 = kernel;
  }

LABEL_10:
  v23 = [(NSMapTable *)p_availableComputePipelines->registry objectForKey:kernelCopy3];
  if (!v23)
  {
    frameworkLibrary = [(SCNMTLLibraryManager *)self->_libraryManager frameworkLibrary];
    v26[0] = kernel;
    v26[1] = constants;
    v26[2] = 0;
    v26[3] = 0;
    widthCopy = width;
    memset(v28, 0, sizeof(v28));
    v23 = [(SCNMTLResourceManager *)self newComputePipelineStateForDesc:v26 library:frameworkLibrary];
    if (v23)
    {
      [(NSMapTable *)p_availableComputePipelines->registry setObject:v23 forKey:kernelCopy3];
    }
  }

  os_unfair_lock_unlock(&p_availableComputePipelines->lock);
  return v23;
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
        kernelCopy3 = [kernel stringByAppendingString:hash];
      }

      goto LABEL_10;
    }
  }

  else
  {
    v14 = SCNResourceRegistrySetup(p_availableComputePipelinesWithStageDescriptor, 1);
    if (!constants)
    {
      goto LABEL_8;
    }
  }

  if (hash)
  {
    goto LABEL_8;
  }

  v16 = scn_default_log(v14, v15);
  kernelCopy3 = kernel;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    [(SCNMTLResourceManager(Compilation) *)v16 _computePipelineStateForKernel:v17 constants:v18 constantsHash:v19 threadGroupSizeIsMultipleOfThreadExecutionWidth:v20, v21, v22, v23];
    kernelCopy3 = kernel;
  }

LABEL_10:
  v25 = [(NSMapTable *)p_availableComputePipelinesWithStageDescriptor->registry objectForKey:kernelCopy3];
  v27 = v25;
  if (v25)
  {
    if (descriptor)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v27 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
    v25 = [(NSMapTable *)p_availableComputePipelinesWithStageDescriptor->registry setObject:v27 forKey:kernelCopy3];
    if (descriptor)
    {
      goto LABEL_15;
    }
  }

  v28 = scn_default_log(v25, v26);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
  {
    [(SCNMTLResourceManager(Compilation) *)v28 computePipelineStateForKernel:v29 withStageDescriptor:v30 stageDescriptorUpdateBlock:v31 constants:v32 constantsHash:v33, v34, v35];
    if (!block)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_15:
  if (!block)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (![v27 count])
  {
    frameworkLibrary = [(SCNMTLLibraryManager *)self->_libraryManager frameworkLibrary];
    kernelCopy5 = kernel;
    constantsCopy2 = constants;
    descriptorCopy2 = descriptor;
    blockCopy = block;
    v50 = 0;
    v39 = [(SCNMTLResourceManager *)self newComputePipelineStateForDesc:&kernelCopy5 library:frameworkLibrary];
    if (!v39)
    {
      goto LABEL_25;
    }

    v43 = [(SCNMTLResourceManager *)self getUniqueStageDescriptor:descriptor];
    v41 = v27;
    v42 = v39;
    goto LABEL_24;
  }

  v36 = -[SCNMTLResourceManager commandQueue]([objc_msgSend(v27 "allValues")]);
  (*(block + 2))(block, v36, descriptor);
LABEL_18:
  v37 = [(SCNMTLResourceManager *)self getUniqueStageDescriptor:descriptor];
  v38 = [v27 objectForKey:v37];
  if (!v38)
  {
    frameworkLibrary2 = [(SCNMTLLibraryManager *)self->_libraryManager frameworkLibrary];
    kernelCopy5 = kernel;
    constantsCopy2 = constants;
    blockCopy = 0;
    v50 = 0;
    descriptorCopy2 = descriptor;
    v39 = [(SCNMTLResourceManager *)self newComputePipelineStateForDesc:&kernelCopy5 library:frameworkLibrary2];
    if (!v39)
    {
      goto LABEL_25;
    }

    v41 = v27;
    v42 = v39;
    v43 = v37;
LABEL_24:
    [v41 setObject:v42 forKey:v43];

    goto LABEL_25;
  }

  v39 = v38;
LABEL_25:
  os_unfair_lock_unlock(&p_availableComputePipelinesWithStageDescriptor->lock);
  return v39;
}

- (id)getUniqueStageDescriptor:(id)descriptor
{
  v27 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_stageDescriptorsLock);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  availableStageDescriptors = self->_availableStageDescriptors;
  v6 = [(NSMutableArray *)availableStageDescriptors countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(availableStageDescriptors);
        }

        v10 = 0;
        v11 = *(*(&v22 + 1) + 8 * i);
        while (1)
        {
          v12 = [objc_msgSend(objc_msgSend(v11 "attributes")];
          if (v12 != [objc_msgSend(objc_msgSend(descriptor "attributes")])
          {
            break;
          }

          v13 = [objc_msgSend(objc_msgSend(v11 "attributes")];
          if (v13 != [objc_msgSend(objc_msgSend(descriptor "attributes")])
          {
            break;
          }

          v14 = [objc_msgSend(objc_msgSend(v11 "attributes")];
          if (v14 != [objc_msgSend(objc_msgSend(descriptor "attributes")])
          {
            break;
          }

          if (++v10 == 31)
          {
            v15 = 0;
            while (1)
            {
              v16 = [objc_msgSend(objc_msgSend(v11 "layouts")];
              if (v16 != [objc_msgSend(objc_msgSend(descriptor "layouts")])
              {
                goto LABEL_18;
              }

              v17 = [objc_msgSend(objc_msgSend(v11 "layouts")];
              if (v17 != [objc_msgSend(objc_msgSend(descriptor "layouts")])
              {
                goto LABEL_18;
              }

              v18 = [objc_msgSend(objc_msgSend(v11 "layouts")];
              if (v18 != [objc_msgSend(objc_msgSend(descriptor "layouts")])
              {
                goto LABEL_18;
              }

              if (++v15 == 31)
              {
                indexType = [v11 indexType];
                if (indexType != [descriptor indexType])
                {
                  goto LABEL_18;
                }

                indexBufferIndex = [v11 indexBufferIndex];
                if (indexBufferIndex != [descriptor indexBufferIndex])
                {
                  goto LABEL_18;
                }

                if (v11)
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

      v7 = [(NSMutableArray *)availableStageDescriptors countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

LABEL_22:
  v11 = [descriptor copy];
  [(NSMutableArray *)self->_availableStageDescriptors addObject:v11];

LABEL_23:
  os_unfair_lock_unlock(&self->_stageDescriptorsLock);
  return v11;
}

- (id)newComputePipelineStateWithFunctionName:(id)name
{
  frameworkLibrary = [(SCNMTLLibraryManager *)self->_libraryManager frameworkLibrary];

  return [(SCNMTLResourceManager *)self newComputePipelineStateWithFunctionName:name library:frameworkLibrary constantValues:0];
}

- (id)newComputePipelineStateWithFunctionName:(id)name constantValues:(id)values
{
  frameworkLibrary = [(SCNMTLLibraryManager *)self->_libraryManager frameworkLibrary];

  return [(SCNMTLResourceManager *)self newComputePipelineStateWithFunctionName:name library:frameworkLibrary constantValues:values];
}

- (id)newComputePipelineStateWithFunctionName:(id)name library:(id)library constantValues:(id)values
{
  v6[0] = name;
  v6[1] = values;
  v6[2] = 0;
  v7[0] = 0;
  *(v7 + 7) = 0;
  return [(SCNMTLResourceManager *)self newComputePipelineStateForDesc:v6 library:library];
}

- (id)colorMatchingComputePipelineStateForBiPlanarPixelBufferWithFormatType:(unsigned int)type pixelBufferYCbCrMatrix:(id)matrix pixelBufferColorPrimaries:(id)primaries pixelBufferTransferFunction:(id)function sourceColorSpace:(CGColorSpace *)space destinationColorSpace:(CGColorSpace *)colorSpace renderContext:(id)context
{
  p_availableColorMatchingComputePipelines = &self->_availableColorMatchingComputePipelines;
  os_unfair_lock_lock(&self->_availableColorMatchingComputePipelines.lock);
  registry = p_availableColorMatchingComputePipelines->registry;
  if (!p_availableColorMatchingComputePipelines->registry)
  {
    SCNResourceRegistrySetup(p_availableColorMatchingComputePipelines, 1);
    registry = p_availableColorMatchingComputePipelines->registry;
  }

  v18 = [(NSMapTable *)registry objectForKey:colorSpace];
  if (!v18)
  {
    v18 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:1];
    [(NSMapTable *)p_availableColorMatchingComputePipelines->registry setObject:v18 forKey:colorSpace];
  }

  v19 = [v18 objectForKey:space];
  if (!v19)
  {
    v19 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:1];
    [v18 setObject:v19 forKey:space];
  }

  v21 = [v19 objectForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", type != -1)}];
  if (!v21)
  {
    if (type == -1)
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      C3DGetColorMatchingComputeKernelParameters(space, colorSpace, &v41);
      v23 = objc_alloc_init(MEMORY[0x277CD6D70]);
      [v23 setConstantValue:&v41 type:53 withName:@"needsInputTRC"];
      [v23 setConstantValue:&v41 + 1 type:53 withName:@"needsColorMatrix"];
      [v23 setConstantValue:&v41 + 2 type:53 withName:@"needsOutputTRC"];
      [v23 setConstantValue:&v41 + 4 type:29 withName:@"inputTRC_type"];
      [v23 setConstantValue:&v41 + 8 type:3 withName:@"inputTRC_gamma"];
      [v23 setConstantValue:&v41 | 0xC type:3 withName:@"inputTRC_a"];
      [v23 setConstantValue:&v42 type:3 withName:@"inputTRC_b"];
      [v23 setConstantValue:&v42 + 4 type:3 withName:@"inputTRC_c"];
      [v23 setConstantValue:&v42 + 8 type:3 withName:@"inputTRC_d"];
      [v23 setConstantValue:&v42 + 12 type:3 withName:@"inputTRC_e"];
      [v23 setConstantValue:&v43 type:3 withName:@"inputTRC_f"];
      [v23 setConstantValue:&v44 type:5 withName:@"colorMatrixColumn0"];
      [v23 setConstantValue:&v45 type:5 withName:@"colorMatrixColumn1"];
      [v23 setConstantValue:&v46 type:5 withName:@"colorMatrixColumn2"];
      [v23 setConstantValue:&v47 type:29 withName:@"outputTRC_type"];
      [v23 setConstantValue:&v47 + 4 type:3 withName:@"outputTRC_gamma"];
      [v23 setConstantValue:&v47 + 8 type:3 withName:@"outputTRC_a"];
      [v23 setConstantValue:&v47 + 12 type:3 withName:@"outputTRC_b"];
      [v23 setConstantValue:&v48 type:3 withName:@"outputTRC_c"];
      [v23 setConstantValue:&v48 + 4 type:3 withName:@"outputTRC_d"];
      [v23 setConstantValue:&v48 + 8 type:3 withName:@"outputTRC_e"];
      [v23 setConstantValue:&v48 + 12 type:3 withName:@"outputTRC_f"];
      v24 = @"color_matching_kernel";
LABEL_48:
      v21 = [(SCNMTLResourceManager *)self newComputePipelineStateWithFunctionName:v24 constantValues:v23];

      [v19 setObject:v21 forKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", type != -1)}];
      goto LABEL_49;
    }

    if (type <= 875704949)
    {
      switch(type)
      {
        case 0x34323066u:
          v25 = 1;
          v22 = 1;
          goto LABEL_28;
        case 0x34323076u:
          v22 = 0;
          v25 = 1;
          goto LABEL_28;
        case 0x34323266u:
          v22 = 1;
LABEL_21:
          v25 = 2;
          goto LABEL_28;
      }

      goto LABEL_22;
    }

    switch(type)
    {
      case 0x34323276u:
        v22 = 0;
        goto LABEL_21;
      case 0x34343466u:
        v22 = 1;
        break;
      case 0x34343476u:
        v22 = 0;
        break;
      default:
LABEL_22:
        LOBYTE(v41) = HIBYTE(type);
        BYTE1(v41) = BYTE2(type);
        BYTE2(v41) = BYTE1(type);
        *(&v41 + 3) = type;
        v26 = scn_default_log(0, v20);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [SCNMTLResourceManager(Compilation) colorMatchingComputePipelineStateForBiPlanarPixelBufferWithFormatType:pixelBufferYCbCrMatrix:pixelBufferColorPrimaries:pixelBufferTransferFunction:sourceColorSpace:destinationColorSpace:renderContext:];
        }

        v25 = 0;
        v22 = 0;
LABEL_28:
        if (objc_msgSend_isEqualToString_(matrix))
        {
          v27 = v22 == 0;
          v28 = 3;
        }

        else if (objc_msgSend_isEqualToString_(matrix))
        {
          v27 = v22 == 0;
          v28 = 1;
        }

        else
        {
          isEqualToString = objc_msgSend_isEqualToString_(matrix);
          if (!isEqualToString)
          {
            v38 = scn_default_log(isEqualToString, v30);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              [SCNMTLResourceManager(Compilation) colorMatchingComputePipelineStateForBiPlanarPixelBufferWithFormatType:pixelBufferYCbCrMatrix:pixelBufferColorPrimaries:pixelBufferTransferFunction:sourceColorSpace:destinationColorSpace:renderContext:];
            }

            v31 = 0;
LABEL_37:
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            if (objc_msgSend_isEqualToString_(primaries) && (objc_msgSend_isEqualToString_(function) & 1) != 0)
            {
              v33 = MEMORY[0x277CBF488];
            }

            else
            {
              v34 = objc_msgSend_isEqualToString_(primaries);
              if (!v34)
              {
                goto LABEL_45;
              }

              v34 = objc_msgSend_isEqualToString_(function);
              if (!v34)
              {
                goto LABEL_45;
              }

              v33 = MEMORY[0x277CBF3D8];
            }

            v34 = *v33;
            if (*v33)
            {
              v35 = CGColorSpaceCreateWithName(v34);
              C3DGetColorMatchingComputeKernelParameters(v35, colorSpace, &v41);
              CFRelease(v35);
LABEL_47:
              v23 = objc_alloc_init(MEMORY[0x277CD6D70]);
              [v23 setConstantValue:&v41 type:53 withName:@"needsInputTRC"];
              [v23 setConstantValue:&v41 + 1 type:53 withName:@"needsColorMatrix"];
              [v23 setConstantValue:&v41 + 2 type:53 withName:@"needsOutputTRC"];
              [v23 setConstantValue:&v41 + 4 type:29 withName:@"inputTRC_type"];
              [v23 setConstantValue:&v41 + 8 type:3 withName:@"inputTRC_gamma"];
              [v23 setConstantValue:&v41 | 0xC type:3 withName:@"inputTRC_a"];
              [v23 setConstantValue:&v42 type:3 withName:@"inputTRC_b"];
              [v23 setConstantValue:&v42 + 4 type:3 withName:@"inputTRC_c"];
              [v23 setConstantValue:&v42 + 8 type:3 withName:@"inputTRC_d"];
              [v23 setConstantValue:&v42 + 12 type:3 withName:@"inputTRC_e"];
              [v23 setConstantValue:&v43 type:3 withName:@"inputTRC_f"];
              [v23 setConstantValue:&v44 type:5 withName:@"colorMatrixColumn0"];
              [v23 setConstantValue:&v45 type:5 withName:@"colorMatrixColumn1"];
              [v23 setConstantValue:&v46 type:5 withName:@"colorMatrixColumn2"];
              [v23 setConstantValue:&v47 type:29 withName:@"outputTRC_type"];
              [v23 setConstantValue:&v47 + 4 type:3 withName:@"outputTRC_gamma"];
              [v23 setConstantValue:&v47 + 8 type:3 withName:@"outputTRC_a"];
              [v23 setConstantValue:&v47 + 12 type:3 withName:@"outputTRC_b"];
              [v23 setConstantValue:&v48 type:3 withName:@"outputTRC_c"];
              [v23 setConstantValue:&v48 + 4 type:3 withName:@"outputTRC_d"];
              [v23 setConstantValue:&v48 + 8 type:3 withName:@"outputTRC_e"];
              [v23 setConstantValue:&v48 + 12 type:3 withName:@"outputTRC_f"];
              v39 = v31;
              v40 = v25;
              [v23 setConstantValue:&v40 type:29 withName:@"biPlanarTextureChromaSubsampling"];
              [v23 setConstantValue:&v39 type:29 withName:@"biPlanarTextureYCbCrMatrix"];
              v24 = @"color_matching_kernel_biplanar";
              goto LABEL_48;
            }

LABEL_45:
            v36 = scn_default_log(v34, v32);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              [SCNMTLResourceManager(Compilation) colorMatchingComputePipelineStateForBiPlanarPixelBufferWithFormatType:primaries pixelBufferYCbCrMatrix:function pixelBufferColorPrimaries:v36 pixelBufferTransferFunction:? sourceColorSpace:? destinationColorSpace:? renderContext:?];
            }

            goto LABEL_47;
          }

          v27 = v22 == 0;
          v28 = 5;
        }

        if (v27)
        {
          v31 = v28;
        }

        else
        {
          v31 = v28 + 1;
        }

        goto LABEL_37;
    }

    v25 = 3;
    goto LABEL_28;
  }

LABEL_49:
  os_unfair_lock_unlock(&p_availableColorMatchingComputePipelines->lock);
  return v21;
}

- (void)removeAllShaders
{
  if (self)
  {
    [*(self + 32) clearCompiledLibraries];
    v2 = *(self + 48);

    CFDictionaryRemoveAllValues(v2);
  }
}

- (void)resetRasterizerStates
{
  if (self)
  {
    os_unfair_lock_lock((self + 256));

    *(self + 248) = 0;

    os_unfair_lock_unlock((self + 256));
  }
}

- (void)renderResourceForRasterizerState:(uint64_t)state reverseZ:
{
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_1();
  os_unfair_lock_lock(v6 + 64);
  v7 = *(v3 + 248);
  if (!v7)
  {
    v8 = objc_alloc(MEMORY[0x277CCAB00]);
    v7 = OUTLINED_FUNCTION_2_6(v8, v9);
    *(v3 + 248) = v7;
  }

  v11 = [v7 objectForKey:v4];
  if (!v11)
  {
    v26 = 0;
    v27 = 0;
    v29 = 0;
    v28 = 0;
    C3DRasterizerStatesGetDesc(v4, v10, &v26);
    v13 = objc_alloc_init(MEMORY[0x277CD6D60]);
    if (v27 == 1)
    {
      if (state)
      {
        v14 = C3DComparisonFuncToMTLCompareFunctionReverse(BYTE2(v27), v12);
      }

      else
      {
        v14 = C3DComparisonFuncToMTLCompareFunction(BYTE2(v27), v12);
      }

      v15 = v14;
    }

    else
    {
      v15 = 7;
    }

    [v13 setDepthCompareFunction:v15];
    [v13 setDepthWriteEnabled:BYTE1(v27)];
    if (BYTE3(v27) == 1)
    {
      C3DComparisonFuncToMTLCompareFunction(BYTE5(v27), v16);
      [objc_msgSend(OUTLINED_FUNCTION_3() "frontFaceStencil")];
      C3DStencilOpToMTLStencilOperation(BYTE3(v28), v17);
      [objc_msgSend(OUTLINED_FUNCTION_3() "frontFaceStencil")];
      C3DStencilOpToMTLStencilOperation(BYTE2(v28), v18);
      [objc_msgSend(OUTLINED_FUNCTION_3() "frontFaceStencil")];
      C3DStencilOpToMTLStencilOperation(BYTE1(v28), v19);
      [objc_msgSend(OUTLINED_FUNCTION_3() "frontFaceStencil")];
      [objc_msgSend(v13 "frontFaceStencil")];
      v20 = HIBYTE(v27);
      [objc_msgSend(v13 "frontFaceStencil")];
      C3DComparisonFuncToMTLCompareFunction(BYTE4(v28), v21);
      [objc_msgSend(OUTLINED_FUNCTION_3() "backFaceStencil")];
      C3DStencilOpToMTLStencilOperation(BYTE2(v29), v22);
      [objc_msgSend(OUTLINED_FUNCTION_3() "backFaceStencil")];
      C3DStencilOpToMTLStencilOperation(BYTE1(v29), v23);
      [objc_msgSend(OUTLINED_FUNCTION_3() "backFaceStencil")];
      C3DStencilOpToMTLStencilOperation(v29, v24);
      [objc_msgSend(OUTLINED_FUNCTION_3() "backFaceStencil")];
      [objc_msgSend(v13 "backFaceStencil")];
      [objc_msgSend(v13 "backFaceStencil")];
    }

    v11 = [*(v3 + 8) newDepthStencilStateWithDescriptor:v13];

    [*(v3 + 248) setObject:v11 forKey:v4];
  }

  os_unfair_lock_unlock((v3 + 256));
  return v11;
}

- (void)renderResourceForMeshSource:(uint64_t)source
{
  v20 = *MEMORY[0x277D85DE8];
  if (!source)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_1();
  IsVolatile = C3DMeshSourceIsVolatile(v2);
  if (IsVolatile)
  {
    v5 = scn_default_log(IsVolatile, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v18 = 136315138;
      v19 = "C3DMeshSourceIsVolatile(meshSource) != true";
      OUTLINED_FUNCTION_0_0(&dword_21BEF7000, v5, v6, "Assertion '%s' failed. cannot use volatile meshSource", &v18);
    }
  }

  MTLBuffer = C3DMeshSourceGetMTLBuffer();
  if (!MTLBuffer)
  {
    Data = C3DMeshSourceGetData();
    if (Data)
    {
      v9 = Data;
      Length = CFDataGetLength(Data);
      if (Length)
      {
        v11 = Length;
        BytePtr = CFDataGetBytePtr(v9);
        os_unfair_lock_lock((v1 + 224));
        v13 = *(v1 + 216);
        if (!v13)
        {
          v14 = objc_alloc(MEMORY[0x277CCAB00]);
          v13 = OUTLINED_FUNCTION_2_6(v14, v15);
          *(v1 + 216) = v13;
        }

        MTLBuffer = [v13 objectForKey:v9];
        if (!MTLBuffer)
        {
          MTLBuffer = [*(v1 + 8) newBufferWithBytes:BytePtr length:v11 options:0];
          v16 = *(v1 + 24);
          ++*(v16 + 228);
          *(v16 + 256) += v11;
          [*(v1 + 216) setObject:MTLBuffer forKey:v9];
        }

        os_unfair_lock_unlock((v1 + 224));
        return MTLBuffer;
      }
    }

    return 0;
  }

  return MTLBuffer;
}

- (SCNMTLMeshElement)renderResourceForMeshElement:(uint64_t)element
{
  if (!element)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_1();
  SharedMeshElement = C3DMeshElementGetSharedMeshElement(v3);
  if (SharedMeshElement == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [SCNMTLResourceManager renderResourceForMeshElement:v1];
  }

  os_unfair_lock_lock((v1 + 240));
  v6 = *(v1 + 232);
  if (!v6)
  {
    v7 = objc_alloc(MEMORY[0x277CCAB00]);
    v6 = OUTLINED_FUNCTION_2_6(v7, v8);
    *(v1 + 232) = v6;
  }

  v9 = [v6 objectForKey:SharedMeshElement];
  if (!v9)
  {
    v11 = objc_alloc_init(SCNMTLMeshElement);
    [(SCNMTLMeshElement *)v11 setupWithElement:v2];
    if (SharedMeshElement == v2)
    {
      if (C3DMeshElementGetMTLBuffer(v2))
      {
        indexBuffer = [v1 _bufferForMTLBuffer:C3DMeshElementGetMTLBuffer(v2)];
      }

      else
      {
        v21 = 0;
        Indexes = C3DMeshElementGetIndexes(v2, &v21);
        if (!Indexes)
        {
LABEL_20:
          [*(v1 + 232) setObject:v11 forKey:v2];

          goto LABEL_21;
        }

        indexBuffer = [v1 _bufferForData:Indexes bytesPerIndex:v21];
      }
    }

    else
    {
      indexBuffer = [(SCNMTLMeshElement *)v5 indexBuffer];
    }

    [(SCNMTLMeshElement *)v11 setIndexBuffer:indexBuffer];
    goto LABEL_20;
  }

  v11 = v9;
  if (SharedMeshElement != v2)
  {
    indexBuffer2 = [(SCNMTLMeshElement *)v5 indexBuffer];
    [(SCNMTLMeshElement *)v11 setIndexBuffer:indexBuffer2];
LABEL_12:
    IndexCount = C3DMeshElementGetIndexCount(v2, v13);
    [(SCNMTLMeshElement *)v11 setIndexCount:?];
    SharedIndexBufferOffset = C3DMeshElementGetSharedIndexBufferOffset(v2, v16);
    [(SCNMTLMeshElement *)v11 setSharedIndexBufferOffset:?];
    goto LABEL_13;
  }

  if (C3DMeshElementIsVolatile(v2, v10))
  {
    goto LABEL_12;
  }

LABEL_13:
  InstanceCount = C3DMeshElementGetInstanceCount(v2, v13);
  [(SCNMTLMeshElement *)v11 setInstanceCount:?];
LABEL_21:
  os_unfair_lock_unlock((v1 + 240));
  return v11;
}

- (SCNMTLTessellator)renderResourceForTessellatedGeometry:(uint64_t)geometry
{
  if (!geometry)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_1();
  os_unfair_lock_lock(v3 + 92);
  v4 = *(v1 + 360);
  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277CCAB00]);
    v4 = OUTLINED_FUNCTION_2_6(v5, v6);
    *(v1 + 360) = v4;
  }

  v7 = [v4 objectForKey:v2];
  if (!v7)
  {
    v7 = [[SCNMTLTessellator alloc] initWithGeometry:v2 resourceManager:v1];
    [*(v1 + 360) setObject:v7 forKey:v2];
  }

  os_unfair_lock_unlock((v1 + 368));
  return v7;
}

- (SCNMetalWireframeResource)wireframeResourceForRendererElement:(uint64_t)element engineContext:(unsigned __int8 *)context passInstance:(uint64_t)instance hashPass:
{
  if (!self)
  {
    return 0;
  }

  RenderContext = C3DEngineContextGetRenderContext(element, a2);
  ProgramHashCodeStore = C3DEngineContextGetProgramHashCodeStore(element, v11);
  ProgramHashCodeForRenderElement = C3DProgramHashCodeStoreGetProgramHashCodeForRenderElement(ProgramHashCodeStore, a2, 0, instance);
  if (!ProgramHashCodeForRenderElement)
  {
    return 0;
  }

  v14 = ProgramHashCodeForRenderElement;
  os_unfair_lock_lock((self + 384));
  v15 = *(self + 376);
  if (!v15)
  {
    v16 = objc_alloc(MEMORY[0x277CCAB00]);
    v15 = OUTLINED_FUNCTION_2_6(v16, v17);
    *(self + 376) = v15;
  }

  v18 = [v15 objectForKey:v14];
  if (!v18)
  {
    Node = C3DRendererElementGetNode(a2);
    Geometry = C3DRendererElementGetGeometry(a2, v19);
    Mesh = C3DRendererElementGetMesh(a2, v20);
    MeshElement = C3DRendererElementGetMeshElement(a2, v21);
    Material = C3DRendererElementGetMaterial(a2, v22);
    v25 = C3DMaterialCopyForFlatShading(Material, v24);
    CommonProfileConditioners = C3DEngineContextGetCommonProfileConditioners(element);
    v27 = context[24];
    v28 = (8 * (context[27] & 3)) & 0x9F | (a2[36] >> 11) & 7 | (32 * (context[28] & 3));
    if ([(SCNMTLRenderContext *)RenderContext reverseZ])
    {
      v29 = 0x80;
    }

    else
    {
      v29 = 0;
    }

    v30 = C3DProgramHashCodeCreate(Node, Geometry, Mesh, MeshElement, 0, v25, (v27 << 16) & 0xFFFFFFFF00FFFFFFLL | ((v28 | v29) << 24) | CommonProfileConditioners);
    v31 = C3DEngineContextEvaluateProgramWithHashCode(element, v30, Material, 0);
    v18 = objc_alloc_init(SCNMetalWireframeResource);
    v32 = v18->material;
    if (v32 != v25)
    {
      if (v32)
      {
        CFRelease(v32);
        v18->material = 0;
      }

      if (v25)
      {
        v33 = CFRetain(v25);
      }

      else
      {
        v33 = 0;
      }

      v18->material = v33;
    }

    program = v18->program;
    if (program != v31)
    {
      if (program)
      {
        CFRelease(program);
        v18->program = 0;
      }

      if (v31)
      {
        v35 = CFRetain(v31);
      }

      else
      {
        v35 = 0;
      }

      v18->program = v35;
    }

    programHashCode = v18->programHashCode;
    if (programHashCode != v30)
    {
      C3DProgramHashCodeRelease(programHashCode);
      if (v30)
      {
        v37 = CFRetain(v30);
      }

      else
      {
        v37 = 0;
      }

      v18->programHashCode = v37;
    }

    [*(self + 376) setObject:v18 forKey:{v14, MeshElement}];

    CFRelease(v25);
    C3DProgramHashCodeRelease(v30);
  }

  os_unfair_lock_unlock((self + 384));
  return v18;
}

- (void)newConstantBufferWithLength:(void *)result options:(int)options
{
  if (result)
  {
    result = [OUTLINED_FUNCTION_1_5(result) newBufferWithLength:? options:?];
    v4 = *(v2 + 24);
    ++*(v4 + 240);
    *(v4 + 264) += options;
  }

  return result;
}

- (void)newBufferWithBytes:(uint64_t)bytes length:options:
{
  if (bytes)
  {
    [OUTLINED_FUNCTION_1_5(bytes) newBufferWithBytes:? length:? options:?];
    OUTLINED_FUNCTION_0_7(*(v1 + 24));
  }
}

- (uint64_t)newPrivateBufferWithBytes:(uint64_t)bytes length:(void *)length blitEncoder:
{
  if (!self)
  {
    return 0;
  }

  v8 = [*(self + 8) newBufferWithLength:bytes options:32];
  v9 = [*(self + 8) newBufferWithBytes:a2 length:bytes options:0];
  [length copyFromBuffer:v9 sourceOffset:0 toBuffer:v8 destinationOffset:0 size:bytes];

  OUTLINED_FUNCTION_0_7(*(self + 24));
  return v8;
}

- (void)newBufferWithLength:(uint64_t)length options:
{
  if (length)
  {
    [OUTLINED_FUNCTION_1_5(length) newBufferWithLength:? options:?];
    OUTLINED_FUNCTION_0_7(*(v1 + 24));
  }
}

- (void)renderResourceForSampler:(uint64_t)sampler
{
  if (!sampler)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_1();
  if (!v4)
  {
    Default = C3DTextureSamplerGetDefault(v3, 0);
  }

  os_unfair_lock_lock((v1 + 160));
  if (!*(v1 + 152))
  {
    v5 = objc_alloc(MEMORY[0x277CCAB00]);
    *(v1 + 152) = OUTLINED_FUNCTION_2_6(v5, v6);
  }

  C3DMeshSourceGetMTLVertexFormat(Default);
  v7 = [OUTLINED_FUNCTION_4() objectForKey:?];
  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CD6FD0]);
    MinFilter = C3DTextureSamplerGetMinFilter(Default, v9);
    C3DFilterModeToMTLFilter(MinFilter, v11);
    [OUTLINED_FUNCTION_4() setMinFilter:?];
    MagFilter = C3DTextureSamplerGetMagFilter(Default, v12);
    C3DFilterModeToMTLFilter(MagFilter, v14);
    [OUTLINED_FUNCTION_4() setMagFilter:?];
    MipFilter = C3DTextureSamplerGetMipFilter(Default, v15);
    C3DFilterModeToMTLMipFilter(MipFilter, v17);
    [OUTLINED_FUNCTION_4() setMipFilter:?];
    WrapModeS = C3DTextureSamplerGetWrapModeS(Default, v18);
    C3DWrapModeToMTLAddressMode(WrapModeS, v20);
    [OUTLINED_FUNCTION_4() setSAddressMode:?];
    WrapModeT = C3DTextureSamplerGetWrapModeT(Default, v21);
    C3DWrapModeToMTLAddressMode(WrapModeT, v23);
    [OUTLINED_FUNCTION_4() setTAddressMode:?];
    WrapModeP = C3DTextureSamplerGetWrapModeP(Default, v24);
    C3DWrapModeToMTLAddressMode(WrapModeP, v26);
    [OUTLINED_FUNCTION_4() setRAddressMode:?];
    Anisotropy = C3DTextureSamplerGetAnisotropy(Default, v27);
    if (Anisotropy < 1.0)
    {
      Anisotropy = 1.0;
    }

    [v8 setMaxAnisotropy:{fminf(Anisotropy, 16.0)}];
    v7 = [*(v1 + 8) newSamplerStateWithDescriptor:v8];

    [*(v1 + 152) setObject:v7 forKey:C3DMeshSourceGetMTLVertexFormat(Default)];
  }

  os_unfair_lock_unlock((v1 + 160));
  return v7;
}

- (void)dispatchForTexture:(uint64_t)texture computeEncoder:(void *)encoder pipelineState:
{
  if (result)
  {
    v6 = OUTLINED_FUNCTION_10_1(result, a2, texture, encoder);
    width = [v4 width];
    if (v6 >= width)
    {
      v8 = width;
    }

    else
    {
      v8 = v6;
    }

    height = [v4 height];
    if (v6 >= height)
    {
      v6 = height;
    }

    maxTotalThreadsPerThreadgroup = [v5 maxTotalThreadsPerThreadgroup];
    do
    {
      v11 = v6;
      v12 = v6 * v8;
      v6 >>= 1;
    }

    while (v12 > maxTotalThreadsPerThreadgroup);
    [v4 width];
    [v4 height];
    return OUTLINED_FUNCTION_9_1(1, v8, v11, v13);
  }

  return result;
}

- (void)dispatchForCubemap:(uint64_t)cubemap computeEncoder:(void *)encoder pipelineState:
{
  if (result)
  {
    v6 = OUTLINED_FUNCTION_10_1(result, a2, cubemap, encoder);
    width = [v4 width];
    if (v6 >= width)
    {
      v6 = width;
    }

    maxTotalThreadsPerThreadgroup = [v5 maxTotalThreadsPerThreadgroup];
    v9 = v6;
    do
    {
      v10 = v9;
      v11 = v9 * v6;
      v9 >>= 1;
    }

    while (v11 > maxTotalThreadsPerThreadgroup);
    [v4 width];
    [v4 height];
    return OUTLINED_FUNCTION_9_1(1, v6, v10, v12);
  }

  return result;
}

- (uint64_t)stats
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)depthAndStencilStateWithReadWriteDepthDisabled
{
  if (result)
  {
    v1 = result;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__SCNMTLResourceManager_depthAndStencilStateWithReadWriteDepthDisabled__block_invoke;
    block[3] = &unk_2782FB608;
    block[4] = result;
    if ([SCNMTLResourceManager depthAndStencilStateWithReadWriteDepthDisabled]::onceToken != -1)
    {
      dispatch_once(&[SCNMTLResourceManager depthAndStencilStateWithReadWriteDepthDisabled]::onceToken, block);
    }

    return *(v1 + 488);
  }

  return result;
}

- (uint64_t)libraryManager
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

void __59__SCNMTLResourceManager___updateMutableMesh_withMetalMesh___block_invoke_cold_2(int a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315650;
  v5 = "dataSize == buf.length";
  v6 = 1024;
  v7 = a1;
  v8 = 1024;
  v9 = [a2 length];
  _os_log_fault_impl(&dword_21BEF7000, a3, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. size mismatch in mutable buffers %u!=%u", &v4, 0x18u);
}

- (void)renderResourceForMesh:(NSObject *)a3 dataKind:.cold.1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "dataKind == kC3DMeshDataKindOriginal";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a3, a3, "Assertion '%s' failed. Only original data kind can have non 'GPU' primitive type", a1);
}

void *__56__SCNMTLResourceManager_renderResourceForMesh_dataKind___block_invoke_cold_1(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  result = [SCNMTLResourceManager renderResourceForMeshSource:?];
  if (result)
  {
    v9 = result;
    v13 = [*(a1 + 48) indexOfObject:result];
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [*(a1 + 48) count];
      [*(a1 + 48) addObject:v9];
    }

    v14 = *(a1 + 56);

    return _fillVertexDescriptor(v14, a2, a3, a4, v13, v10, v11, v12);
  }

  return result;
}

- (void)renderResourceForMaterial:(os_log_t)log geometry:renderPipeline:engineContext:.cold.3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Unreachable code: Sampler are not yet implemented as separate bindings", buf, 2u);
}

- (void)renderResourceForMaterial:(NSObject *)a3 geometry:renderPipeline:engineContext:.cold.4(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "textureMatrix";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a3, a3, "Assertion '%s' failed. Null argument", a1);
}

- (void)renderResourceForMaterial:(NSObject *)a3 geometry:renderPipeline:engineContext:.cold.5(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "0";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a3, a3, "Assertion '%s' failed. only C3DValue are supported for partial struct storage", a1);
}

void __87__SCNMTLResourceManager_Compilation___createPipelineStateWithDescriptor_desc_pipeline___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 96);
  v5 = 138412546;
  v6 = v4;
  v7 = 2112;
  v8 = [a2 description];
  _os_log_error_impl(&dword_21BEF7000, a3, OS_LOG_TYPE_ERROR, "Error: Compiler error while building render pipeline state for node %@:\n%@", &v5, 0x16u);
}

@end