@interface SCNMTLRenderContext
+ (uint64_t)registerBindings;
- (BOOL)forceAsyncShaderCompilation;
- (SCNMTLRenderContext)initWithDevice:(__C3DEngineContext *)device engineContext:;
- (__n128)setScreenTransform:(uint64_t)transform;
- (const)createVolatileMeshElementOfType:(int)type primitiveCount:(uint64_t)count bytesPerIndex:;
- (double)contentScaleFactor;
- (double)processRendererElements:(int)elements count:(unsigned __int8 *)count engineIterationContext:;
- (double)renderTime;
- (double)screenTransform;
- (double)stopProcessingRendererElements:(uint64_t)elements;
- (float)_zFarForSkyboxRenderingProjectionMatrix:(const C3DMatrix4x4 *)matrix defaultZFar:;
- (float)setPreferredFramesPerSecond:(uint64_t)second;
- (id).cxx_construct;
- (id)_newMTLBufferFromPoolWithLength:(unint64_t)length;
- (id)_setMeshBuffers:(id *)result;
- (id)_setSceneBufferAtVertexIndex:(uint64_t)index fragmentIndex:;
- (id)commandBufferStatusMonitor;
- (id)resourceManagerMonitor;
- (id)setCommandBufferStatusMonitor:(id)result;
- (id)setResourceManagerMonitor:(id)result;
- (id)textureForEffectSlot:(id *)result;
- (os_unfair_lock_s)endFrameWaitingUntilCompleted:(void *)completed status:(void *)status error:;
- (uint64_t)_allowGPUBackgroundExecution;
- (uint64_t)_clusterInfo;
- (uint64_t)_createResourceCommandBufferIfNeeded;
- (uint64_t)_drawMeshElement:(uint64_t)element instanceCount:;
- (uint64_t)_drawPatchForMeshElement:(uint64_t)element instanceCount:;
- (uint64_t)_reflectionProbeArrayTexture;
- (uint64_t)_setReflectionProbeArrayTexture:(uint64_t)result;
- (uint64_t)authoring_drawDeformersForNode:(uint64_t)node authoringEnvironment:;
- (uint64_t)clientCommandBuffer;
- (uint64_t)clientRenderCommandEncoder;
- (uint64_t)clientRenderPassDescriptor;
- (uint64_t)collectsCompilationErrors;
- (uint64_t)commandQueue;
- (uint64_t)compilationErrors;
- (uint64_t)cubeArrayTypeIfSupported;
- (uint64_t)currentCommandBuffer;
- (uint64_t)currentRenderCommandEncoder;
- (uint64_t)currentRenderPassDescriptor;
- (uint64_t)device;
- (uint64_t)disableLinearRendering;
- (uint64_t)drawWireframeOverlayForElements:(unsigned int)elements range:(int)range store:(uint64_t)store passInstance:(unsigned __int8 *)instance;
- (uint64_t)enableARMode;
- (uint64_t)engineContext;
- (uint64_t)features;
- (uint64_t)frameConstantBufferPool;
- (uint64_t)frameTexturePool;
- (uint64_t)generatedTexturePath;
- (uint64_t)getCurrentPassHash;
- (uint64_t)getCurrentPassMaterial;
- (uint64_t)layerTarget;
- (uint64_t)mapVolatileMesh:(uint64_t)mesh verticesCount:;
- (uint64_t)profile;
- (uint64_t)radianceTextureForEffectSlot:(uint64_t)slot;
- (uint64_t)renderEncoder;
- (uint64_t)resourceBlitEncoder;
- (uint64_t)resourceCommandBuffer;
- (uint64_t)resourceComputeEncoder;
- (uint64_t)resourceManager;
- (uint64_t)resourceQueue;
- (uint64_t)reverseZ;
- (uint64_t)sampleCount;
- (uint64_t)setContentScaleFactor:(uint64_t)result;
- (uint64_t)setCurrentPassHash:(uint64_t)result;
- (uint64_t)setCurrentPassMaterial:(uint64_t)result;
- (uint64_t)setDebugOptions:(uint64_t)result;
- (uint64_t)setEnableARMode:(uint64_t)result;
- (uint64_t)setForceAsyncShaderCompilation:(uint64_t)result;
- (uint64_t)setSampleCount:(uint64_t)result;
- (uint64_t)setShouldDelegateARCompositing:(uint64_t)result;
- (uint64_t)setShouldPresentAfterMinimumDuration:(uint64_t)result;
- (uint64_t)setShowsAuthoringEnvironment:(uint64_t)result;
- (uint64_t)shouldDelegateARCompositing;
- (uint64_t)showsAuthoringEnvironment;
- (uint64_t)textureTarget;
- (uint64_t)unmapVolatileMeshElement:(uint64_t)result;
- (uint64_t)wantsWideGamut;
- (void)_SCNSceneRendererMainPassCustomPostProcessSupportDrawSceneBackgroundUsingEncoder:(uint64_t)encoder commandBuffer:(uint64_t)buffer renderPassDescriptor:;
- (void)_clearUnusedBindingPoints;
- (void)_commitResourceCommandBufferIfNeeded;
- (void)_createResourceCommandBufferIfNeeded;
- (void)_drawFullScreenTexture:(unsigned int)texture over:;
- (void)_drawPBRTextures;
- (void)_drawShadowMaps;
- (void)_executeDrawCommand:(id *)command;
- (void)_finalRenderTexture;
- (void)_logLightingInformation;
- (void)_prepareMaterialTextures:(__C3DMaterial *)textures;
- (void)_recycleMTLBufferToPool:(id)pool;
- (void)_updateProjectionMatrixForOrthographicSkyboxRenderingIfNeeded:(C3DMatrix4x4 *)needed;
- (void)addCommandBufferCompletedHandler:(uint64_t)handler;
- (void)addCommandBufferScheduledHandler:(uint64_t)handler;
- (void)addDrawablePresentedHandler:(uint64_t)handler;
- (void)authoring_drawPrimitives:(int)primitives vertexCount:(int)count instanceCount:(int)instanceCount vertexBuffers:(int)buffers offsets:(int)offsets range:(int)range vertexDescriptor:(uint64_t)descriptor withProgram:(uint64_t)self0 uniforms:(int)self1 uniformsLength:(int)self2 rasterizerStates:(uint64_t)self3 blendStates:(uint64_t)self4;
- (void)beginFrame:(uint64_t)frame;
- (void)beginRenderPass:(uint64_t)pass renderEncoder:(uint64_t)encoder parameters:;
- (void)dealloc;
- (void)discardPendingCommandBufferCompletedHandlers;
- (void)discardPendingCommandBufferScheduledHandlers;
- (void)discardPendingDrawablePresentedHandlers;
- (void)drawFullScreenQuadForPass:(void *)result;
- (void)drawRenderElement:(uint64_t)element withPass:(uint64_t)pass;
- (void)endFrameSceneSpecifics;
- (void)endRenderPass;
- (void)irradianceTextureForEffectSlot:(void *)result;
- (void)popDebugGroup;
- (void)pushDebugGroup:(void *)result;
- (void)renderBackground:(uint64_t)background engineContext:(float32x4_t *)context passInstance:;
- (void)renderSKSceneWithRenderer:overlay:atTime:;
- (void)renderVideoBackground:(__n128 *)background engineContext:(uint64_t)context slot:;
- (void)resetVolatileMeshElements;
- (void)resetVolatileMeshes;
- (void)setClientCommandBuffer:(void *)buffer;
- (void)setClientCommandQueue:(void *)queue;
- (void)setClientRenderCommandEncoder:(void *)encoder;
- (void)setClientRenderPassDescriptor:(void *)descriptor;
- (void)setCollectsCompilationErrors:(uint64_t)errors;
- (void)setDisableLinearRendering:(uint64_t)rendering;
- (void)setGeneratedTexturePath:(void *)path;
- (void)setIsOpaque:(uint64_t)opaque;
- (void)setRasterizerStates:(uint64_t)states;
- (void)setReverseZ:(uint64_t)z;
- (void)setWantsWideGamut:(uint64_t)gamut;
- (void)startProcessingRendererElementsWithEngineIterationContext:(uint64_t)context;
- (void)unmapVolatileMesh:(uint64_t)mesh modifiedVerticesCount:;
- (void)writeBytes:(const void *)bytes length:(unint64_t)length;
@end

@implementation SCNMTLRenderContext

- (id).cxx_construct
{
  self->_resourceBlitEncoder._encoder = 0;
  self->_resourceBlitEncoder._commandBuffer = 0;
  self->_resourceComputeEncoder._encoder = 0;
  self->_resourceComputeEncoder._bufferPool = 0;
  v3 = -4224;
  do
  {
    v4 = (self + v3);
    v4[449] = 0uLL;
    v4[448] = 0uLL;
    v4[447] = 0uLL;
    v4[446] = 0uLL;
    v4[407] = 0uLL;
    v4[408] = 0uLL;
    v4[409] = 0uLL;
    v4[410] = 0uLL;
    v4[411] = 0uLL;
    v4[412] = 0uLL;
    v4[413] = 0uLL;
    v4[414] = 0uLL;
    v4[415] = 0uLL;
    v4[416] = 0uLL;
    v4[417] = 0uLL;
    v4[418] = 0uLL;
    v4[419] = 0uLL;
    v4[420] = 0uLL;
    v4[421] = 0uLL;
    v4[422] = 0uLL;
    v4[423] = 0uLL;
    v4[424] = 0uLL;
    v4[425] = 0uLL;
    v4[426] = 0uLL;
    v4[427] = 0uLL;
    v4[428] = 0uLL;
    v4[429] = 0uLL;
    v4[430] = 0uLL;
    v4[443] = 0uLL;
    v4[442] = 0uLL;
    v4[441] = 0uLL;
    v4[440] = 0uLL;
    v4[439] = 0uLL;
    v4[438] = 0uLL;
    v4[437] = 0uLL;
    v4[436] = 0uLL;
    v3 += 704;
  }

  while (v3);
  bzero(&self->_nodeUniforms, 0x540uLL);
  self->_lighting.frameLightingSetDatas.__table_.__bucket_list_ = 0u;
  *&self->_lighting.frameLightingSetDatas.__table_.__first_node_.__next_ = 0u;
  self->_lighting.frameLightingSetDatas.__table_.__max_load_factor_ = 1.0;
  SCNMTLClusterSystem::SCNMTLClusterSystem(&self->_anon_3848[136]);
  return self;
}

+ (uint64_t)registerBindings
{
  objc_opt_self();
  [SCNMTLShaderBindingsGenerator registerSemantic:@"modelTransform" withBlock:&__block_literal_global_40];
  [SCNMTLShaderBindingsGenerator registerSemantic:@"inverseModelTransform" withBlock:&__block_literal_global_133];
  v0 = [SCNMTLShaderBindingsGenerator registerSemantic:@"modelViewTransform" withBlock:&__block_literal_global_138];
  if (C3DStandardShadersUseFunctionConstants(v0, v1))
  {
    [SCNMTLShaderBindingsGenerator registerSemantic:@"lightIndices" withBlock:&__block_literal_global_143];
  }

  [SCNMTLShaderBindingsGenerator registerSemantic:@"inverseModelViewTransform" withBlock:&__block_literal_global_150];
  [SCNMTLShaderBindingsGenerator registerSemantic:@"normalTransform" withBlock:&__block_literal_global_156];
  [SCNMTLShaderBindingsGenerator registerSemantic:@"modelViewProjectionTransform" withBlock:&__block_literal_global_162];
  [SCNMTLShaderBindingsGenerator registerSemantic:@"lastFrameModelTransform" withBlock:&__block_literal_global_168];
  [SCNMTLShaderBindingsGenerator registerSemantic:@"motionBlurIntensity" withBlock:&__block_literal_global_173];
  [SCNMTLShaderBindingsGenerator registerSemantic:@"inverseModelViewProjectionTransform" withBlock:&__block_literal_global_178];
  [SCNMTLShaderBindingsGenerator registerSemantic:@"boundingBox" withBlock:&__block_literal_global_183];
  [SCNMTLShaderBindingsGenerator registerSemantic:@"worldBoundingBox" withBlock:&__block_literal_global_188];
  [SCNMTLShaderBindingsGenerator registerSemantic:@"nodeOpacity" withBlock:&__block_literal_global_193];
  [SCNMTLShaderBindingsGenerator registerSemantic:@"shCoefficients" withBlock:&__block_literal_global_198_0];
  [SCNMTLShaderBindingsGenerator registerShadableArgumentBindingBlockForBuffers:&__block_literal_global_203 textures:&__block_literal_global_206 samplers:&__block_literal_global_212];
  [SCNMTLShaderBindingsGenerator registerArgument:@"scn_lights" frequency:0 needsRenderResource:1 block:&__block_literal_global_218];
  v2 = [SCNMTLShaderBindingsGenerator registerArgument:@"scn_lights_count" frequency:0 needsRenderResource:1 block:&__block_literal_global_224];
  if (C3DStandardShadersUseFunctionConstants(v2, v3))
  {
    [SCNMTLShaderBindingsGenerator registerArgument:@"scn_shCoefficients" frequency:1 block:&__block_literal_global_230];
  }

  [SCNMTLShaderBindingsGenerator registerArgument:@"scn_commonprofile" frequency:2 needsRenderResource:1 block:&__block_literal_global_203];
  [SCNMTLShaderBindingsGenerator registerArgument:@"scn_pointSize" frequency:2 block:&__block_literal_global_240];
  [SCNMTLShaderBindingsGenerator registerArgument:@"u_clusterTexture" frequency:0 block:&__block_literal_global_246];
  [SCNMTLShaderBindingsGenerator registerArgument:@"u_lightIndicesTexture" frequency:0 block:&__block_literal_global_252];
  [SCNMTLShaderBindingsGenerator registerArgument:@"u_areaLightBakedDataTexture" frequency:0 block:&__block_literal_global_258];
  [SCNMTLShaderBindingsGenerator registerArgument:@"u_shadowKernel" frequency:0 block:&__block_literal_global_264];
  v47[0] = 0;
  v5 = C3DEnumIterator<C3DEffectProperty,(signed char)0,(signed char)15>::end(v47, v4);
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    do
    {
      if (v8 != 8)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"u_%@Texture", __stringForProperty()];
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_275;
        v45[3] = &unk_2782FD518;
        v46 = v8;
        v45[4] = &__block_literal_global_268;
        v5 = [SCNMTLShaderBindingsGenerator registerArgument:v9 frequency:2 block:v45];
      }

      ++v8;
    }

    while (v8 != v7);
  }

  if (C3DStandardShadersUseFunctionConstants(v5, v6))
  {
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_2_279;
    v44[3] = &unk_2782FD540;
    v44[4] = &__block_literal_global_268;
    [SCNMTLShaderBindingsGenerator registerArgument:@"u_reflectiveCubeTexture" frequency:2 block:v44];
  }

  for (i = 0; i != 8; ++i)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"u_shadowTexture%d", i];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_3_283;
    v43[3] = &__block_descriptor_40_e55_v24__0__SCNMTLResourceBinding_8__SCNMTLRenderContext_16l;
    v43[4] = i;
    [SCNMTLShaderBindingsGenerator registerArgument:v11 frequency:1 block:v43];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_4_285;
    v42[3] = &__block_descriptor_40_e55_v24__0__SCNMTLResourceBinding_8__SCNMTLRenderContext_16l;
    v42[4] = i;
    +[SCNMTLShaderBindingsGenerator registerArgument:frequency:block:](SCNMTLShaderBindingsGenerator, "registerArgument:frequency:block:", [MEMORY[0x277CCACA8] stringWithFormat:@"u_goboTexture%d", i], 1, v42);
    +[SCNMTLShaderBindingsGenerator registerArgument:frequency:block:](SCNMTLShaderBindingsGenerator, "registerArgument:frequency:block:", [MEMORY[0x277CCACA8] stringWithFormat:@"u_iesTexture%d", i], 1, v42);
    +[SCNMTLShaderBindingsGenerator registerArgument:frequency:block:](SCNMTLShaderBindingsGenerator, "registerArgument:frequency:block:", [MEMORY[0x277CCACA8] stringWithFormat:@"u_iesCubeTexture%d", i], 1, v42);
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"color%d", i];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_301;
    v41[3] = &__block_descriptor_40_e42_v36__0_v8I16__SCNMTLRenderContext_20I28I32l;
    v41[4] = i;
    [SCNMTLShaderBindingsGenerator registerSemantic:v12 withBlock:v41];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"position%d", i];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_2_306;
    v40[3] = &__block_descriptor_40_e42_v36__0_v8I16__SCNMTLRenderContext_20I28I32l;
    v40[4] = i;
    [SCNMTLShaderBindingsGenerator registerSemantic:v13 withBlock:v40];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"direction%d", i];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_3_310;
    v39[3] = &__block_descriptor_40_e42_v36__0_v8I16__SCNMTLRenderContext_20I28I32l;
    v39[4] = i;
    [SCNMTLShaderBindingsGenerator registerSemantic:v14 withBlock:v39];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"right%d", i];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_4_314;
    v38[3] = &__block_descriptor_40_e42_v36__0_v8I16__SCNMTLRenderContext_20I28I32l;
    v38[4] = i;
    [SCNMTLShaderBindingsGenerator registerSemantic:v15 withBlock:v38];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"up%d", i];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_5_318;
    v37[3] = &__block_descriptor_40_e42_v36__0_v8I16__SCNMTLRenderContext_20I28I32l;
    v37[4] = i;
    [SCNMTLShaderBindingsGenerator registerSemantic:v16 withBlock:v37];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"iesMatrix%d", i];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_6_322;
    v36[3] = &__block_descriptor_40_e42_v36__0_v8I16__SCNMTLRenderContext_20I28I32l;
    v36[4] = i;
    [SCNMTLShaderBindingsGenerator registerSemantic:v17 withBlock:v36];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"attenuation%d", i];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_7_326;
    v35[3] = &__block_descriptor_40_e42_v36__0_v8I16__SCNMTLRenderContext_20I28I32l;
    v35[4] = i;
    [SCNMTLShaderBindingsGenerator registerSemantic:v18 withBlock:v35];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"spotAttenuation%d", i];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_8_330;
    v34[3] = &__block_descriptor_40_e42_v36__0_v8I16__SCNMTLRenderContext_20I28I32l;
    v34[4] = i;
    [SCNMTLShaderBindingsGenerator registerSemantic:v19 withBlock:v34];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"shadowMatrix%d", i];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_9_334;
    v33[3] = &__block_descriptor_40_e42_v36__0_v8I16__SCNMTLRenderContext_20I28I32l;
    v33[4] = i;
    [SCNMTLShaderBindingsGenerator registerSemantic:v20 withBlock:v33];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"shadowRadius%d", i];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_339;
    v32[3] = &__block_descriptor_40_e42_v36__0_v8I16__SCNMTLRenderContext_20I28I32l;
    v32[4] = i;
    [SCNMTLShaderBindingsGenerator registerSemantic:v21 withBlock:v32];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"shadowColor%d", i];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_2_343;
    v31[3] = &__block_descriptor_40_e42_v36__0_v8I16__SCNMTLRenderContext_20I28I32l;
    v31[4] = i;
    [SCNMTLShaderBindingsGenerator registerSemantic:v22 withBlock:v31];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"goboMatrix%d", i];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_3_347;
    v30[3] = &__block_descriptor_40_e42_v36__0_v8I16__SCNMTLRenderContext_20I28I32l;
    v30[4] = i;
    [SCNMTLShaderBindingsGenerator registerSemantic:v23 withBlock:v30];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"projectorColor%d", i];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_4_351;
    v29[3] = &__block_descriptor_40_e42_v36__0_v8I16__SCNMTLRenderContext_20I28I32l;
    v29[4] = i;
    [SCNMTLShaderBindingsGenerator registerSemantic:v24 withBlock:v29];
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"u_areaPolygonPositions%d", i];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_5_355;
    v28[3] = &__block_descriptor_40_e55_v24__0__SCNMTLResourceBinding_8__SCNMTLRenderContext_16l;
    v28[4] = i;
    [SCNMTLShaderBindingsGenerator registerArgument:v25 frequency:1 block:v28];
  }

  [SCNMTLShaderBindingsGenerator registerArgument:@"u_specularDFGDiffuseHammonTexture" frequency:0 block:&__block_literal_global_362];
  [SCNMTLShaderBindingsGenerator registerArgument:@"u_radianceTexture" frequency:0 block:&__block_literal_global_368];
  [SCNMTLShaderBindingsGenerator registerArgument:@"u_irradianceTexture" frequency:0 block:&__block_literal_global_374];
  [SCNMTLShaderBindingsGenerator registerArgument:@"u_reflectionProbeTexture" frequency:0 block:&__block_literal_global_380];
  [SCNMTLShaderBindingsGenerator registerArgument:@"u_ssaoTexture" frequency:0 block:&__block_literal_global_386];
  v26 = _Block_copy(&__block_literal_global_395);
  [SCNMTLShaderBindingsGenerator registerArgument:@"scn_bezier_curve_data" frequency:1 needsRenderResource:0 block:v26];
  [SCNMTLShaderBindingsGenerator registerArgument:@"scn_bezier_curve_controlPoints" frequency:1 needsRenderResource:0 block:v26];
  _Block_release(v26);
  return [SCNMTLShaderBindingsGenerator registerUserBlockTrampoline:&__block_literal_global_408];
}

- (uint64_t)resourceManager
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

- (uint64_t)reverseZ
{
  if (result)
  {
    return (*(result + 152) >> 6) & 1;
  }

  return result;
}

- (uint64_t)features
{
  if (result)
  {
    return *(result + 136);
  }

  return result;
}

- (SCNMTLRenderContext)initWithDevice:(__C3DEngineContext *)device engineContext:
{
  if (!self)
  {
    return 0;
  }

  if (!a2)
  {
    v14 = scn_default_log(self, 0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLRenderContext initWithDevice:engineContext:];
    }

    return 0;
  }

  v17.receiver = self;
  v17.super_class = SCNMTLRenderContext;
  v5 = objc_msgSendSuper2(&v17, sel_init);
  v7 = v5;
  if (v5)
  {
    v5[15] = a2;
    if (C3DUseOneCommandQueuePerDevice(v5, v6))
    {
      goto LABEL_7;
    }

    newCommandQueue = [(MTLDevice *)a2 newCommandQueue];
    v7[20] = newCommandQueue;
    if (newCommandQueue)
    {
      [newCommandQueue setLabel:@"com.apple.SceneKit"];
LABEL_7:
      v10 = MTLValidationEnabled();
      *(v7 + 128) = v10;
      v7[1944] = 0x3FF0000000000000;
      v7[3] = 0x3FF0000000000000;
      *(v7 + 4) = SCNMatrix4Identity;
      *(v7 + 104) = 0;
      *(v7 + 33) = 0;
      v7[18] = device;
      if (C3DStandardShadersUseFunctionConstants(v10, v11))
      {
        v12 = 32;
      }

      else
      {
        v12 = 0;
      }

      *(v7 + 152) = v7[19] & 0xDF | v12;
      if (C3DReverseZIsSupported())
      {
        v13 = 64;
      }

      else
      {
        v13 = 0;
      }

      *(v7 + 152) = v7[19] & 0xBF | v13;
      *(v7 + 34) |= 3u;
      if (SCNMTLDeviceSupportsDepthResolve(v7[15]))
      {
        *(v7 + 34) |= 4u;
      }

      if (SCNMTLDeviceSupportsStencilResolve(v7[15]))
      {
        *(v7 + 34) |= 0x4000u;
      }

      if (SCNMTLDeviceSupportsNonUniformThreadgroupSize(v7[15]))
      {
        *(v7 + 34) |= 0x40u;
      }

      if (SCNMTLDeviceSupportsDepth24UnormStencil8())
      {
        *(v7 + 34) |= 8u;
      }

      if (SCNMTLDeviceSupportsLayeredRendering(v7[15]))
      {
        *(v7 + 34) |= 0x20u;
      }

      if (SCNMTLDeviceSupportsMultipleViewports(v7[15]))
      {
        *(v7 + 34) |= 0x80u;
      }

      if (SCNMTLDeviceSupportsVertexAmplification(v7[15]))
      {
        *(v7 + 34) |= 0x2000u;
      }

      if (SCNMTLDeviceSupportsTessellation(v7[15]))
      {
        *(v7 + 34) |= 0x10u;
      }

      if (SCNMTLDeviceSupportsCubeMapTextureArrays(v7[15]))
      {
        *(v7 + 34) |= 0x100u;
      }

      if (SCNMTLDeviceSupportsCubeMapWrite(v7[15]))
      {
        *(v7 + 34) |= 0x200u;
      }

      if (SCNMTLDeviceSupportsBaseInstance(v7[15]))
      {
        *(v7 + 34) |= 0x400u;
      }

      if (SCNMTLDeviceSupportsProgrammableBlending(v7[15]))
      {
        *(v7 + 34) |= 0x800u;
      }

      if (SCNMTLDeviceSupportsDepthClipMode(v7[15]))
      {
        *(v7 + 34) |= 0x1000u;
      }

      if (SCNMTLDeviceSupportsTextureSwizzle(v7[15]))
      {
        *(v7 + 34) |= 0x8000u;
      }

      v7[14] = [SCNMTLResourceManager resourceManagerForDevice:a2];
      v7[275] = dispatch_queue_create("com.apple.scenekit.resourceCPUQueue", 0);
      v7[2] = malloc_type_calloc(0x358uLL, 1uLL, 0x100004048B25B04uLL);
      v7[21] = dispatch_semaphore_create(3);
      *(v7 + 999) = -1;
      operator new();
    }

    v16 = scn_default_log(0, v9);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLRenderContext initWithDevice:engineContext:];
    }

    return 0;
  }

  return v7;
}

- (void)dealloc
{
  [*self count];
  OUTLINED_FUNCTION_2_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

- (double)screenTransform
{
  if (self)
  {
    v2 = self[3];
    *a2 = self[2];
    a2[1] = v2;
    v3 = self[4];
    v4 = self[5];
    a2[2] = v3;
    a2[3] = v4;
  }

  else
  {
    *&v3 = 0;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return *&v3;
}

- (void)_clearUnusedBindingPoints
{
  renderPipeline = self->_cache.renderPipeline;
  if (renderPipeline)
  {
    [self->_renderEncoder->var24[1] pushDebugGroup:@"Clear binding points"];
    v4 = 0;
    for (i = 0; i != 31; ++i)
    {
      renderEncoder = self->_renderEncoder;
      if ((renderPipeline->_buffersUsageMask[1] & (1 << i)) != 0)
      {
        v7 = 65280;
      }

      else
      {
        v7 = v4;
      }

      if ((renderPipeline->_buffersUsageMask[0] & (1 << i)) == 0)
      {
        SCNMTLRenderCommandEncoder::setVertexBuffer(self->_renderEncoder, 0, 0, i);
      }

      if (v7 != 65280)
      {
        SCNMTLRenderCommandEncoder::setFragmentBuffer(renderEncoder, 0, 0, v7 >> 8);
      }

      v4 += 256;
    }

    v8 = 0;
    for (j = 0; j != 31; ++j)
    {
      v10 = self->_renderEncoder;
      if ((renderPipeline->_texturesUsageMask[1] & (1 << j)) != 0)
      {
        v11 = 65280;
      }

      else
      {
        v11 = v8;
      }

      if ((renderPipeline->_texturesUsageMask[0] & (1 << j)) == 0)
      {
        v12 = &v10->var0 + 8 * j;
        if (*(v12 + 72))
        {
          *(v12 + 72) = 0;
          v10->var25[(j >> 6) + 1] |= 1 << j;
        }
      }

      if (v11 != 65280 && *(&v10->var18[3] + (v11 >> 5)))
      {
        v13 = v11 << 48;
        v14 = v11 >> 8;
        v10->var18[v14 + 3] = 0;
        *(&v10[1].var1 + (v14 >> 6)) |= 1 << SHIBYTE(v13);
      }

      v8 += 256;
    }

    v15 = self->_renderEncoder->var24[1];

    [v15 popDebugGroup];
  }
}

- (void)beginFrame:(uint64_t)frame
{
  if (frame)
  {
    ++*(frame + 8);
    *(frame + 15440) = 0u;
    [*(frame + 112) reloadPipelinesIfNeeded];
    dispatch_semaphore_wait(*(frame + 168), 0xFFFFFFFFFFFFFFFFLL);
    atomic_fetch_add((frame + 176), 1u);

    *(frame + 184) = 0;
    *(frame + 192) = 0;
    *(frame + 213) = 0;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = a2;
    if (isKindOfClass)
    {
      *(frame + 192) = v5;
      *(frame + 213) = [v5 presentsWithTransaction];
    }

    else
    {
      *(frame + 184) = v5;
    }

    v6 = *(frame + 8 * (*(frame + 8) % 3) + 2064);
    *(frame + 2088) = v6;
    SCNMTLBufferPool::reset(v6);
    v7 = *(frame + 8 * (*(frame + 8) % 3) + 2000);
    *(frame + 2024) = v7;
    SCNMTLBufferPool::reset(v7);
    SCNMTLTexturePool::reset(*(frame + 2096));
    commandBuffer = *(frame + 15536);
    if (!commandBuffer)
    {
      os_variant_has_internal_diagnostics();
      commandBuffer = [-[SCNMTLRenderContext commandQueue](frame) commandBuffer];
    }

    *(frame + 240) = commandBuffer;
    if (*(frame + 15424) == 1)
    {
      [*(frame + 15432) removeAllObjects];
      commandBuffer = *(frame + 240);
    }

    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3052000000;
    v11[3] = __Block_byref_object_copy__3;
    v9 = *(frame + 168);
    v11[4] = __Block_byref_object_dispose__3;
    v11[5] = v9;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __34__SCNMTLRenderContext_beginFrame___block_invoke;
    v10[3] = &unk_2782FD3D0;
    v10[4] = frame;
    v10[5] = v11;
    [commandBuffer addCompletedHandler:v10];
    _Block_object_dispose(v11, 8);
  }
}

intptr_t __34__SCNMTLRenderContext_beginFrame___block_invoke(uint64_t a1, void *a2)
{
  [a2 GPUEndTime];
  v5 = v4;
  [a2 GPUStartTime];
  *(*(*(a1 + 32) + 16) + 200) = v5 - v6;
  if ([a2 status] != 4)
  {
    v7 = [*(*(a1 + 32) + 112) commandBufferDidCompleteWithError:a2];
    v9 = scn_default_log(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __34__SCNMTLRenderContext_beginFrame___block_invoke_cold_1(a2);
    }

    [objc_loadWeak((*(a1 + 32) + 15480)) renderContext:*(a1 + 32) commandBufferDidCompleteWithError:a2];
  }

  result = dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
  atomic_fetch_add((*(a1 + 32) + 176), 0xFFFFFFFF);
  return result;
}

void *__66__SCNMTLRenderContext_endFrameWaitingUntilCompleted_status_error___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v3 = *(a1 + 32);
  if (isKindOfClass)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    result = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (result)
    {
      v5 = result;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          (*(*(*(&v9 + 1) + 8 * v7) + 16))();
          v7 = v7 + 1;
        }

        while (v5 != v7);
        result = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        v5 = result;
      }

      while (result);
    }
  }

  else
  {
    v8 = v3[2];

    return v8(v3);
  }

  return result;
}

void *__66__SCNMTLRenderContext_endFrameWaitingUntilCompleted_status_error___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v3 = *(a1 + 32);
  if (isKindOfClass)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    result = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (result)
    {
      v5 = result;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          (*(*(*(&v9 + 1) + 8 * v7) + 16))();
          v7 = v7 + 1;
        }

        while (v5 != v7);
        result = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        v5 = result;
      }

      while (result);
    }
  }

  else
  {
    v8 = v3[2];

    return v8(v3);
  }

  return result;
}

void *__66__SCNMTLRenderContext_endFrameWaitingUntilCompleted_status_error___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v3 = *(a1 + 32);
  if (isKindOfClass)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    result = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (result)
    {
      v5 = result;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          (*(*(*(&v9 + 1) + 8 * v7) + 16))();
          v7 = v7 + 1;
        }

        while (v5 != v7);
        result = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        v5 = result;
      }

      while (result);
    }
  }

  else
  {
    v8 = v3[2];

    return v8(v3);
  }

  return result;
}

- (uint64_t)_clusterInfo
{
  if (self)
  {
    return self + 14736;
  }

  else
  {
    return 0;
  }
}

- (void)_createResourceCommandBufferIfNeeded
{
  if (!self->_resourceCommandBuffer)
  {
    v4[5] = v2;
    v4[6] = v3;
    [(SCNMTLRenderContext *)self _createResourceCommandBufferIfNeeded];
  }
}

void *__59__SCNMTLRenderContext__createResourceCommandBufferIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 status];
  if (result != 4)
  {
    v5 = [*(*(a1 + 32) + 112) commandBufferDidCompleteWithError:a2];
    v7 = scn_default_log(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __59__SCNMTLRenderContext__createResourceCommandBufferIfNeeded__block_invoke_cold_1(a2);
    }

    return [objc_loadWeak((*(a1 + 32) + 15480)) renderContext:*(a1 + 32) commandBufferDidCompleteWithError:a2];
  }

  return result;
}

double __54__SCNMTLRenderContext_irradianceTextureForEffectSlot___block_invoke(uint64_t result, void *a2, double a3)
{
  v3 = *(result + 32);
  if (v3)
  {
    v5 = [a2 contents];
    v6 = [a2 length];

    *&a3 = C3DLightProbesSetGlobalSH3(v3, v5, v6, v7).n128_u64[0];
  }

  return a3;
}

- (void)_logLightingInformation
{
  if ((*(self + 152) & 0x20) == 0)
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
}

- (void)_updateProjectionMatrixForOrthographicSkyboxRenderingIfNeeded:(C3DMatrix4x4 *)needed
{
  if (needed->components[11] == 0.0)
  {
    v42 = v8;
    v43 = v7;
    v44 = v6;
    v45 = v5;
    v46 = v3;
    v47 = v4;
    CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(self->_engineContext, a2);
    v16.i32[0] = LODWORD(needed->components[10]);
    v12 = needed->components[11];
    v13 = v16.f32[0];
    v14 = needed->components[14];
    v15 = v14;
    v16.f32[0] = v14 / v16.f32[0];
    v17 = v14 / (v13 + 1.0);
    v18 = v14 / (v13 + -1.0);
    *&v18 = v18;
    if (v14 >= -2.0)
    {
      v18 = *&v16;
    }

    v19 = v14 < -1.0;
    v20 = (v15 + -1.0) / v13;
    v21 = (v15 + 1.0) / v13;
    *&v21 = v21;
    v22 = -(1.0 - v15) / v13;
    if (v19)
    {
      *&v16 = v21;
    }

    else
    {
      v22 = v20;
    }

    v23 = v12 == 0.0;
    if (v12 == 0.0)
    {
      v24 = v22;
    }

    else
    {
      v24 = v17;
    }

    if (!v23)
    {
      *&v16 = v18;
    }

    *&v24 = v24;
    v39 = vbsl_s8(vdup_lane_s32(vcgt_f32(v16, *&v24), 0), vrev64_s32(__PAIR64__(LODWORD(v24), v16.u32[0])), __PAIR64__(LODWORD(v24), v16.u32[0]));
    Viewport = C3DEngineContextGetViewport(self->_engineContext);
    if (Viewport.n128_f32[3] == 0.0)
    {
      v26 = 1.0;
    }

    else
    {
      v26 = Viewport.n128_f32[2] / Viewport.n128_f32[3];
    }

    v27 = *v39.i32;
    if (*&v39.i32[1] > *v39.i32)
    {
      v28 = *&v39.i32[1];
    }

    else
    {
      v28 = *v39.i32 + 1.0;
    }

    v29 = __tanpi(0.166666667);
    if (v29 == 0.0)
    {
      v30 = 1.0;
    }

    else
    {
      v30 = 1.0 / v29;
    }

    v31 = v30;
    v32 = LODWORD(v31);
    *&v33 = v28 / (v27 - v28);
    *&v34 = 0;
    *(&v34 + 1) = __PAIR64__(-1.0, v33);
    LODWORD(v37) = 0;
    *(&v37 + 1) = 0;
    *&v35 = v28 * v27 / (v27 - v28);
    *&v36 = 0;
    *(&v36 + 1) = v35;
    *(&v37 + 1) = v26 * v31;
    if ((CoordinatesSystemOptions & 8) != 0)
    {
      v38 = 0;
      v40[0] = LODWORD(v31);
      v40[1] = v37;
      v40[2] = v34;
      v40[3] = v36;
      do
      {
        v41[v38] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_21C27F910, COERCE_FLOAT(v40[v38])), xmmword_21C27F8C0, *&v40[v38], 1), xmmword_21C27F900, v40[v38], 2), xmmword_21C27FDD0, v40[v38], 3);
        ++v38;
      }

      while (v38 != 4);
      v32 = v41[0];
      v37 = v41[1];
      v34 = v41[2];
      v36 = v41[3];
    }

    *needed->components = v32;
    *&needed->components[4] = v37;
    *&needed->components[8] = v34;
    *&needed->components[12] = v36;
  }
}

- (float)_zFarForSkyboxRenderingProjectionMatrix:(const C3DMatrix4x4 *)matrix defaultZFar:
{
  if (result <= 0.0)
  {
    return 1.0;
  }

  return result;
}

- (uint64_t)authoring_drawDeformersForNode:(uint64_t)node authoringEnvironment:
{
  if (result)
  {
    if (a2)
    {
      v5 = result;
      result = C3DNodeGetDeformerStack(a2, a2);
      if (result)
      {
        v7 = result;
        result = C3DDeformerStackWantsGPU(result, v6);
        if (result)
        {
          BaseGeometry = C3DDeformerStackGetBaseGeometry(v7, v8);
          if (BaseGeometry)
          {
            EffectiveDataKindForRendering = C3DGeometryGetEffectiveDataKindForRendering(BaseGeometry, v10);
          }

          else
          {
            EffectiveDataKindForRendering = 1;
          }

          v12 = [*(v5 + 112) renderResourceForDeformerStack:v7 node:a2 dataKind:EffectiveDataKindForRendering];

          return [(SCNMTLDeformerStack *)v12 drawAuthoringEnvironment:node context:v5];
        }
      }
    }
  }

  return result;
}

- (void)startProcessingRendererElementsWithEngineIterationContext:(uint64_t)context
{
  v131 = *MEMORY[0x277D85DE8];
  if (!context)
  {
    return;
  }

  v2 = a2;
  v4 = *(a2 + 16);
  *(context + 2216) = v4;
  if (!v4)
  {
    v5 = scn_default_log(context, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLRenderContext *)v5 startProcessingRendererElementsWithEngineIterationContext:a2, v6, v7, v8, v9, v10, v11];
      v2 = a2;
    }
  }

  Scene = C3DEngineContextGetScene(*(v2 + 8), a2);
  v121 = Scene;
  if (*(v2 + 8) != *(context + 144))
  {
    v14 = scn_default_log(Scene, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLRenderContext *)v14 startProcessingRendererElementsWithEngineIterationContext:v13, v15, v16, v17, v18, v19, v20];
    }
  }

  *(context + 2224) = C3DSceneGetLightingSystem(v121, v13);
  *(context + 2264) = C3DSceneGetTransformTree(v121, v21);
  *(context + 2232) = C3DSceneGetDynamicBatchingSystem(v121, v22);
  *(context + 2240) = C3DFXPassInstanceGetPass(*(context + 2216), v23);
  *(context + 2248) = *(a2 + 24);
  *(context + 2256) = *(a2 + 40);
  AmbientLighting = C3DLightingSystemGetAmbientLighting(*(context + 2224));
  v25 = *(context + 144);
  *(context + 2680) = v26;
  *(context + 2672) = AmbientLighting;
  EyeMatrix4x4 = C3DEngineContextGetEyeMatrix4x4(v25, 0, 0);
  v116 = *(EyeMatrix4x4 + 48);
  v118 = *(EyeMatrix4x4 + 32);
  PointOfViewScale = C3DEngineContextGetPointOfViewScale(*(context + 144), v28);
  FogColor = C3DSceneGetFogColor(v121, v30);
  *(context + 2688) = *FogColor;
  if (*(&v118 + 3) == 0.0 && (C3DIsRunningInXcode(FogColor, v32) & 1) != 0)
  {
    v33 = xmmword_21C27F600;
  }

  else
  {
    *&v33 = C3DSceneComputeFogParameters(v121, v32, PointOfViewScale);
  }

  *(context + 2704) = v33;
  __asm { FMOV            V1.2S, #1.0 }

  *(context + 2720) = vdiv_f32(_D1, *(context + 232));
  LightingEnvironmentEffectSlot = C3DSceneGetLightingEnvironmentEffectSlot(v121, 0);
  v41 = LightingEnvironmentEffectSlot;
  Intensity = 1.0;
  if (LightingEnvironmentEffectSlot && (C3DEffectSlotHasImageOrTexture(LightingEnvironmentEffectSlot, v40) || C3DEffectSlotHasPrecomputedLightingEnvironment(v41, v43)))
  {
    Intensity = C3DEffectSlotGetIntensity(v41, v43);
  }

  *(context + 2748) = Intensity;
  if (*(context + 2192) == 0.0)
  {
    *(context + 2192) = C3DEngineContextGetSystemTime(*(context + 144));
  }

  v44 = C3DEngineContextGetSystemTime(*(context + 144)) - *(context + 2192);
  *(context + 2728) = v44;
  *(context + 2732) = __sincosf_stret(v44);
  v46 = 214013 * *(context + 2272) + 2531011;
  *(context + 2272) = v46;
  *(context + 2740) = HIWORD(v46) * 0.000015259;
  v47 = *(&v118 + 2);
  v48 = *(&v116 + 2);
  if (*(&v118 + 3) == 0.0)
  {
    v49 = (v48 + -1.0) / v47;
    v50 = (v48 + 1.0) / v47;
    *&v50 = v50;
    v51 = -(1.0 - v48) / v47;
    if (*(&v116 + 2) < -1.0)
    {
      v52 = v51;
    }

    else
    {
      v52 = v49;
    }

    *&v51 = *(&v116 + 2) / *(&v118 + 2);
    if (*(&v116 + 2) < -1.0)
    {
      v51 = v50;
    }
  }

  else
  {
    v53 = v48 / (v47 + 1.0);
    v51 = v48 / (v47 + -1.0);
    *&v51 = v51;
    v52 = v53;
    if (*(&v116 + 2) >= -2.0)
    {
      *&v45 = *(&v116 + 2) / *(&v118 + 2);
      v51 = v45;
    }
  }

  *&v45 = v52;
  *(context + 2880) = vbsl_s8(vdup_lane_s32(vcgt_f32(*&v51, *&v45), 0), vrev64_s32(__PAIR64__(LODWORD(v45), LODWORD(v51))), __PAIR64__(LODWORD(v45), LODWORD(v51)));
  if (*(context + 2256) == 1)
  {
    SCNMTLClusterSystem::compute(context + 14544);
    memcpy((context + 14736), __src, 0x1A0uLL);
    *(context + 2976) = *(context + 14800);
  }

  v54 = (context + 2288);
  if (!*(context + 1994))
  {
    v55 = 1;
    goto LABEL_32;
  }

  v55 = *(context + 1993);
  if (*(context + 1993))
  {
LABEL_32:
    v57 = 0;
    v119 = v4 + 3168;
    v117 = v4 + 2784;
    v58 = v4 + 3552;
    v59 = v4 + 3936;
    v114 = v4 + 4320;
    __asm { FMOV            V0.4S, #1.0 }

    v115 = _Q0;
    contextCopy = context;
    v62 = v55;
    while (1)
    {
      v63 = *(context + 1992);
      if (v57)
      {
        memcpy((contextCopy + 2288), v54, 0x2C0uLL);
      }

      v64 = v57 + v63;
      v65 = (v119 + ((v57 + v63) << 6));
      __src[0] = *v65;
      __src[1] = v65[1];
      __src[2] = v65[2];
      __src[3] = v65[3];
      v66 = v65[1];
      v67 = v65[2];
      v68 = v65[3];
      *(contextCopy + 2288) = *v65;
      *(contextCopy + 2304) = v66;
      *(contextCopy + 2320) = v67;
      *(contextCopy + 2336) = v68;
      v69 = (v117 + ((v57 + v63) << 6));
      v70 = v69[1];
      v71 = v69[2];
      v72 = v69[3];
      *(contextCopy + 2352) = *v69;
      *(contextCopy + 2368) = v70;
      *(contextCopy + 2384) = v71;
      *(contextCopy + 2400) = v72;
      v126 = __src[0];
      v127 = __src[1];
      v128 = __src[2];
      v129 = __src[3];
      C3DSceneComputeViewToCubemapMatrix(v121, &v126);
      v73 = v127;
      v74 = v128;
      v75 = v129;
      *(contextCopy + 2544) = v126;
      *(contextCopy + 2560) = v73;
      *(contextCopy + 2576) = v74;
      *(contextCopy + 2592) = v75;
      v76 = (v58 + ((v57 + v63) << 6));
      v77 = v76[1];
      v78 = v76[2];
      v79 = v76[3];
      *(contextCopy + 2416) = *v76;
      *(contextCopy + 2432) = v77;
      *(contextCopy + 2448) = v78;
      *(contextCopy + 2464) = v79;
      v80 = (v59 + ((v57 + v63) << 6));
      v81 = v80[1];
      v82 = v80[2];
      v83 = v80[3];
      *(contextCopy + 2480) = *v80;
      *(contextCopy + 2496) = v81;
      *(contextCopy + 2512) = v82;
      *(contextCopy + 2528) = v83;
      v84 = *(contextCopy + 2288);
      v85 = *(contextCopy + 2304);
      v86 = *(contextCopy + 2320);
      v87 = *(contextCopy + 2336);
      v88 = vmulq_f32(v84, v84);
      v89 = vmulq_f32(v85, v85);
      v90 = vmulq_f32(v86, v86);
      v91 = vzip2q_s32(v88, v90);
      v92 = vzip1q_s32(vzip1q_s32(v88, v90), v89);
      v93 = vtrn2q_s32(v88, v89);
      v93.i32[2] = v90.i32[1];
      v94 = vdivq_f32(v115, vaddq_f32(vzip1q_s32(v91, vdupq_laneq_s32(v89, 2)), vaddq_f32(v92, v93)));
      *(contextCopy + 2912) = vmulq_n_f32(v84, v94.f32[0]);
      *(contextCopy + 2928) = vmulq_lane_f32(v85, *v94.f32, 1);
      *(contextCopy + 2944) = vmulq_laneq_f32(v86, v94, 2);
      *(contextCopy + 2960) = v87;
      PointOfView = C3DEngineContextGetPointOfView(*(a2 + 8), v95);
      if (!PointOfView)
      {
        break;
      }

      Camera = C3DNodeGetCamera(PointOfView, v97);
      IsTemporalAntialiasingEnabled = C3DEngineContextIsTemporalAntialiasingEnabled(*(context + 144));
      if (!Camera)
      {
        goto LABEL_40;
      }

      v101 = C3DCameraGetMotionBlurIntensity(Camera, v99) > 0.0;
      if (v101)
      {
        goto LABEL_42;
      }

LABEL_41:
      if (IsTemporalAntialiasingEnabled)
      {
LABEL_42:
        v102 = (v114 + (v64 << 6));
        v103 = v102[1];
        v104 = v102[2];
        v105 = v102[3];
        *(contextCopy + 2608) = *v102;
        *(contextCopy + 2624) = v103;
        *(contextCopy + 2640) = v104;
        *(contextCopy + 2656) = v105;
        v106 = 0.5;
        if (v101)
        {
          v106 = C3DCameraGetMotionBlurIntensity(Camera, v99) * 0.5;
        }

        *(contextCopy + 2744) = v106;
      }

      v107 = &v54[704 * v64];
      *(contextCopy + 2752) = __invert_f4(v107[2]);
      *(contextCopy + 2816) = __invert_f4(v107[3]);
      ViewportAtIndex = C3DEngineContextGetViewportAtIndex(*(context + 144), v57);
      *(contextCopy + 2896) = vextq_s8(ViewportAtIndex, ViewportAtIndex, 8uLL);
      ++v57;
      contextCopy += 704;
      if (v62 == v57)
      {
        v56 = (704 * v62);
        goto LABEL_47;
      }
    }

    IsTemporalAntialiasingEnabled = C3DEngineContextIsTemporalAntialiasingEnabled(*(context + 144));
    Camera = 0;
LABEL_40:
    v101 = 0;
    goto LABEL_41;
  }

  v56 = 0;
LABEL_47:
  v126 = 0uLL;
  *&v127 = 0;
  SCNMTLBufferPool::allocateAndCopy(&v126, *(context + 2088), v54, v56);
  v109 = v127;
  *(context + 6512) = *(&v126 + 1);
  *(context + 6520) = v109;
  if ((*(context + 152) & 0x20) != 0)
  {
    ActiveNonAmbientLightCount = C3DLightingSystemGetActiveNonAmbientLightCount(*(context + 2224));
    if (ActiveNonAmbientLightCount)
    {
      v111 = 208 * ActiveNonAmbientLightCount;
      *(context + 6544) = v111;
      v123 = 0;
      v124 = 0;
      v125 = 0;
      SCNMTLBufferPool::allocate(&v123, *(context + 2088), v111);
      v112 = v123;
      *(context + 6528) = v124;
      *(context + 6536) = v125;
      *&__src[0] = 0;
      *(&__src[0] + 1) = __src;
      *&__src[1] = 0x2020000000;
      DWORD2(__src[1]) = 0;
      v113 = *(context + 2224);
      v122[0] = MEMORY[0x277D85DD0];
      v122[1] = 3221225472;
      v122[2] = __81__SCNMTLRenderContext_startProcessingRendererElementsWithEngineIterationContext___block_invoke;
      v122[3] = &unk_2782FD468;
      v122[4] = context;
      v122[5] = __src;
      v122[6] = v112;
      C3DLightingSystemApplyActiveNonAmbientLights(v113, v122);
      _Block_object_dispose(__src, 8);
    }

    else
    {
      *(context + 6544) = 0;
      *(context + 6528) = 0u;
    }
  }
}

float __81__SCNMTLRenderContext_startProcessingRendererElementsWithEngineIterationContext___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 400);
  *(a1[4] + 8 * *(*(a1[5] + 8) + 24) + 6552) = v6;
  if (*(a3 + 416))
  {
    v6 = *(a3 + 416);
  }

  *(a1[4] + 8 * *(*(a1[5] + 8) + 24) + 8600) = v6;
  if (*(a3 + 424) || (v7 = *(a3 + 408)) != 0)
  {
    *(a1[4] + 8 * *(*(a1[5] + 8) + 24) + 10648) = [SCNMTLResourceManager renderResourceForSampler:?];
  }

  Light = C3DNodeGetLight(a2, v7);
  v9 = a1[6];
  v10 = *(a1[5] + 8);
  v11 = *(v10 + 24);
  *(v10 + 24) = v11 + 1;
  v12 = v9 + 208 * v11;
  v13 = *a3;
  *v12 = *a3;
  v13.i32[3] = *(a3 + 396);
  *v12 = v13;
  Type = C3DLightGetType(Light, v14);
  v16.i32[0] = 1;
  v17.i32[0] = Type;
  *(v12 + 16) = vmulq_f32(*a3, vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v17, v16), 0), vdupq_n_s32(0x40490FDBu), vdupq_n_s32(0x447A0000u)));
  *(v12 + 32) = *(a3 + 16);
  *(v12 + 48) = *(a3 + 32);
  *(v12 + 80) = *(a3 + 64);
  *(v12 + 64) = *(a3 + 48);
  *(v12 + 96) = *(a3 + 80);
  *(v12 + 112) = *(a3 + 96);
  v18 = *(a3 + 144);
  v19 = *(a3 + 160);
  v20 = *(a3 + 176);
  *(v12 + 144) = *(a3 + 128);
  *(v12 + 160) = v18;
  *(v12 + 176) = v19;
  *(v12 + 192) = v20;
  result = *(a3 + 116);
  *(v12 + 128) = result;
  return result;
}

- (void)_prepareMaterialTextures:(__C3DMaterial *)textures
{
  CommonProfile = C3DMaterialGetCommonProfile(textures, a2);
  if (CommonProfile)
  {
    v6 = CommonProfile;
    LightingModel = C3DEffectCommonProfileGetLightingModel(CommonProfile, v5);
    if (LightingModel == 5)
    {
      [(SCNMTLResourceManager *)self->_resourceManager specularDFGDiffuseHammonTextureWithRenderContext:self];
    }

    v13 = 0;
    v9 = C3DEnumIterator<C3DEffectProperty,(signed char)0,(signed char)15>::end(&v13, v7);
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      do
      {
        if (C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel(LightingModel, v11))
        {
          EffectSlot = C3DEffectCommonProfileGetEffectSlot(v6, v11, 0);
          if (self)
          {
            if (EffectSlot)
            {
              [(SCNMTLResourceManager *)self->_resourceManager renderResourceForEffectSlot:EffectSlot withEngineContext:self->_engineContext didFallbackToDefaultTexture:0];
            }
          }
        }

        ++v11;
      }

      while (v11 != v10);
    }
  }
}

- (void)_executeDrawCommand:(id *)command
{
  selfCopy = self;
  v478 = *MEMORY[0x277D85DE8];
  var0 = command->var0;
  var1 = command->var1;
  var2 = command->var2;
  var3 = command->var3;
  var4 = command->var4;
  var5 = command->var5;
  var8 = command->var8;
  v403.i64[0] = command->var7;
  v396 = var8;
  v402.i32[0] = command->var9;
  commandCopy = command;
  LODWORD(lightBufferBindings) = command->var10;
  if (var2 && (self = C3DGeometryGetWantsHardwareTessellation(var2, a2), self) && (selfCopy->_features & 0x10) != 0)
  {
    v401.i32[0] = (commandCopy[9].i8[5] & 7) != 0;
    v10 = 1;
    if (var0)
    {
LABEL_5:
      if (!var2)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v10 = 0;
    v401.i32[0] = 0;
    if (var0)
    {
      goto LABEL_5;
    }
  }

  if (([SCNMTLRenderContext _executeDrawCommand:]::done & 1) == 0)
  {
    [SCNMTLRenderContext _executeDrawCommand:]::done = 1;
    v11 = scn_default_log(self, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLRenderContext _executeDrawCommand:];
    }
  }

  var0 = [(SCNMTLResourceManager *)selfCopy->_resourceManager defaultProgramUsingTessellation:v10];
  if (!var2)
  {
    goto LABEL_15;
  }

LABEL_12:
  if (C3DEntityGetShaderModifiers(var2, a2) || C3DGeometryGetOverrideMaterial(var2))
  {
    v392 = var2;
    goto LABEL_16;
  }

LABEL_15:
  v392 = 0;
LABEL_16:
  v12 = var0;
  v13 = CFGetTypeID(var0);
  TypeID = C3DFXMetalProgramGetTypeID();
  v19 = v13 == TypeID;
  v16 = v12;
  if (!v19)
  {
    TypeID = [(SCNMTLResourceManager *)selfCopy->_resourceManager defaultProgramUsingTessellation:v10];
    v16 = TypeID;
  }

  v385 = v10;
  v399 = &selfCopy->_lightsData.samplerStates[205];
  program = selfCopy->_cache.program;
  selfCopy->_cache.program = v16;
  mesh = selfCopy->_cache.mesh;
  v388 = program;
  v19 = mesh == var4 && program == v16;
  v20 = !v19;
  if (var2)
  {
    TypeID = C3DGeometryGetEffectiveDataKindForRendering(var2, v15);
    LODWORD(v395) = TypeID;
  }

  else
  {
    LODWORD(v395) = 1;
  }

  v384 = (v399 + 361);
  v394 = var3;
  v386 = v16;
  if (!var3)
  {
    if (selfCopy->_cache.deformerStack)
    {
      v25 = 1;
    }

    else
    {
      v25 = v20;
    }

    selfCopy->_cache.deformerStack = 0;
    if (v25)
    {
      v393 = 0;
      v24 = 0;
      v26 = 0;
      EffectiveCalculationMode = -1;
      v27 = v385;
      goto LABEL_45;
    }

    HIDWORD(v382) = 0;
    v393 = 0;
    v24 = 0;
    v31 = 0;
    LOBYTE(v26) = 0;
    EffectiveCalculationMode = -1;
    v27 = v385;
    if ((v385 & 1) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_122;
  }

  C3DNodeGetMorpher(var3, v15);
  Skinner = C3DNodeGetSkinner(var3, v21);
  v24 = Skinner != 0;
  v393 = Skinner;
  if (Skinner)
  {
    EffectiveCalculationMode = C3DSkinnerGetEffectiveCalculationMode(Skinner, var2);
  }

  else
  {
    EffectiveCalculationMode = -1;
  }

  TypeID = C3DNodeGetDeformerStack(var3, v23);
  if (selfCopy->_cache.deformerStack == TypeID)
  {
    v28 = v20;
  }

  else
  {
    v28 = 1;
  }

  selfCopy->_cache.deformerStack = TypeID;
  if (!TypeID || (v29 = TypeID, TypeID = C3DDeformerStackWantsGPU(TypeID, v15), !TypeID))
  {
    v27 = v385;
    if (v28)
    {
      v26 = 0;
      goto LABEL_45;
    }

    HIDWORD(v382) = 0;
    v31 = 0;
    LOBYTE(v26) = 0;
    if ((v385 & 1) == 0)
    {
      goto LABEL_117;
    }

LABEL_122:
    geometry = v31;
    v138 = var4;
    v139 = v24;
    v140 = var5;
    v141 = *&selfCopy->_anon_31b8[504];
    v447 = *&selfCopy->_anon_31b8[488];
    v448 = v141;
    v142 = *&selfCopy->_anon_31b8[536];
    v449 = *&selfCopy->_anon_31b8[520];
    v450 = v142;
    v143 = *&selfCopy->_anon_31b8[888];
    v451 = *&selfCopy->_anon_31b8[872];
    v452 = v143;
    v144 = *&selfCopy->_anon_31b8[920];
    v453 = *&selfCopy->_anon_31b8[904];
    v454 = v144;
    v145 = *&selfCopy->_anon_8f0[128];
    v146 = *&selfCopy->_anon_8f0[144];
    v147 = *&selfCopy->_anon_8f0[160];
    v458 = *&selfCopy->_anon_8f0[176];
    v457 = v147;
    v456 = v146;
    v455 = v145;
    metalMesh = selfCopy->_cache.metalMesh;
    currentFrameIndex = selfCopy->_currentFrameIndex;
    v150 = [SCNMTLResourceManager renderResourceForTessellatedGeometry:?];
    v466.i64[0] = metalMesh;
    v466.i64[1] = selfCopy;
    v467.i64[0] = &v447;
    v467.i32[2] = currentFrameIndex;
    v467.i8[12] = v26;
    *(&v467.i16[6] + 1) = 0;
    v467.i8[15] = 0;
    [(SCNMTLTessellator *)v150 update:&v466];
    metalMeshElement = selfCopy->_cache.metalMeshElement;
    v152 = commandCopy[9].i8[5] & 7;
    v383 = v150;
    TypeID = [(SCNMTLTessellator *)v150 pipelineStateHashForMeshElement:metalMeshElement patchType:v152];
    v137 = *(v399 + 3000) == TypeID;
    v400.i32[0] = TypeID;
    *(v399 + 3000) = TypeID;
    if (v401.i32[0])
    {
      var5 = v140;
      selfCopy->_cache.meshElement = v140;
      selfCopy->_cache.metalMeshElement = 0;
      v153 = 1;
      v27 = v385;
      v154 = v394;
      v24 = v139;
      if (!var5)
      {
        goto LABEL_154;
      }

      goto LABEL_143;
    }

    v27 = v385;
    var5 = v140;
    v24 = v139;
    var4 = v138;
    v31 = geometry;
    if (!geometry)
    {
      goto LABEL_134;
    }

    goto LABEL_126;
  }

  v400.i64[0] = var5;
  v30 = (commandCopy[9].i8[2] & 1) != 0 || C3DGeometryNeedsTexTangent(var2, 0);
  v64 = [(SCNMTLResourceManager *)selfCopy->_resourceManager renderResourceForDeformerStack:v29 node:var3 dataKind:v395];
  if (([(SCNMTLDeformerStack *)v64 computeDeformedMeshReliesOnTransforms]& 1) != 0 || *(v399 + 3128) == 1)
  {
    if ([(SCNMTLDeformerStack *)v64 computeDeformedMeshReliesOnTransforms])
    {
      v447.i64[0] = 0;
      CurrentBatchNodes = C3DDynamicBatchingSystemGetCurrentBatchNodes(selfCopy->_processingContext.dynamicBatchingSystem, &v447);
      if (v447.i64[0] >= 2)
      {
        v67 = scn_default_log(CurrentBatchNodes, v66);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
        {
          [(SCNMTLRenderContext *)v67 _executeDrawCommand:v68, v69, v70, v71, v72, v73, v74];
        }
      }
    }

    WorldTransformPtr = C3DTransformTreeGetWorldTransformPtr(selfCopy->_processingContext.transformTree, *(var3 + 22));
    v76 = *WorldTransformPtr;
    v77 = WorldTransformPtr[1];
    v78 = WorldTransformPtr[2];
    v79 = WorldTransformPtr[3];
    *&selfCopy->_nodeUniforms.instanceNode = *WorldTransformPtr;
    *&selfCopy->_nodeUniforms.probeCacheIndex = v77;
    *&selfCopy->_anon_31b8[8] = v78;
    *&selfCopy->_anon_31b8[24] = v79;
    if (v393)
    {
      *v76.i64 = C3DSkinnerAdjustTransformIfUsesNodeTransformCalculationMode(v393, EffectiveCalculationMode, v76, v77, v78, v79);
      *&selfCopy->_nodeUniforms.instanceNode = v76;
      *&selfCopy->_nodeUniforms.probeCacheIndex = v77;
      *&selfCopy->_anon_31b8[8] = v78;
      *&selfCopy->_anon_31b8[24] = v79;
    }

    eyeCount = selfCopy->_renderPassParameters.eyeCount;
    *&selfCopy->_anon_31b8[1328] = 2;
    if (eyeCount)
    {
      v81 = 0;
      anon_8f0 = selfCopy->_anon_8f0;
      do
      {
        v83 = 0;
        v84 = &anon_8f0[704 * v81];
        v85 = *v84;
        v86 = v84[1];
        v87 = v84[2];
        v88 = v84[3];
        v466 = v76;
        v467 = v77;
        v468 = v78;
        v469 = v79;
        do
        {
          *(&v447 + v83) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v85, COERCE_FLOAT(*(&v466 + v83))), v86, *&v466.f32[v83 / 4], 1), v87, *(&v466 + v83), 2), v88, *(&v466 + v83), 3);
          v83 += 16;
        }

        while (v83 != 64);
        v89 = v448;
        v90 = v449;
        v91 = v450;
        v92 = &selfCopy->_anon_31b8[64 * v81 + 488];
        *v92 = v447;
        *(v92 + 1) = v89;
        *(v92 + 2) = v90;
        *(v92 + 3) = v91;
        ++v81;
      }

      while (v81 != eyeCount);
      v93 = *&selfCopy->_anon_31b8[1328];
      if ((v93 & 4) == 0)
      {
        v94 = 0;
        *&selfCopy->_anon_31b8[1328] = v93 | 4;
        do
        {
          v95 = 0;
          v96 = &anon_8f0[704 * v94];
          v97 = v96[12];
          v98 = v96[13];
          v99 = v96[14];
          v100 = v96[15];
          v466 = v76;
          v467 = v77;
          v468 = v78;
          v469 = v79;
          do
          {
            *(&v447 + v95) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v97, COERCE_FLOAT(*(&v466 + v95))), v98, *&v466.f32[v95 / 4], 1), v99, *(&v466 + v95), 2), v100, *(&v466 + v95), 3);
            v95 += 16;
          }

          while (v95 != 64);
          v101 = v448;
          v102 = v449;
          v103 = v450;
          v104 = &selfCopy->_anon_31b8[64 * v94 + 872];
          *v104 = v447;
          *(v104 + 1) = v101;
          *(v104 + 2) = v102;
          *(v104 + 3) = v103;
          ++v94;
        }

        while (v94 != eyeCount);
      }
    }

    else
    {
      *&selfCopy->_anon_31b8[1328] = 6;
    }

    v105 = *&selfCopy->_anon_31b8[504];
    v466 = *&selfCopy->_anon_31b8[488];
    v467 = v105;
    v106 = *&selfCopy->_anon_31b8[536];
    v468 = *&selfCopy->_anon_31b8[520];
    v469 = v106;
    v107 = *&selfCopy->_anon_31b8[888];
    v470 = *&selfCopy->_anon_31b8[872];
    v471 = v107;
    v108 = *&selfCopy->_anon_31b8[920];
    v472 = *&selfCopy->_anon_31b8[904];
    v473 = v108;
    v109 = *&selfCopy->_anon_8f0[128];
    v110 = *&selfCopy->_anon_8f0[144];
    v111 = *&selfCopy->_anon_8f0[160];
    v458 = *&selfCopy->_anon_8f0[176];
    v457 = v111;
    v456 = v110;
    v455 = v109;
    v450 = v469;
    v448 = v467;
    v449 = v468;
    v447 = v466;
    v454 = v473;
    v453 = v472;
    v452 = v471;
    v451 = v470;
  }

  if ([(SCNMTLDeformerStack *)v64 computeDeformedMeshReliesOnFrustum])
  {
    v112 = 0;
    v445.i64[0] = *selfCopy->_renderSize;
    v113 = *&selfCopy->_anon_31b8[872];
    v114 = *&selfCopy->_anon_31b8[888];
    v115 = *&selfCopy->_anon_31b8[904];
    v116 = *&selfCopy->_anon_31b8[920];
    do
    {
      v117 = 0;
      v404 = v113;
      v118 = *(&v404 & 0xFFFFFFFFFFFFFFF3 | (4 * (v112 & 3)));
      v119 = (&v405 & 0xFFFFFFFFFFFFFFF3 | (4 * (v112 & 3)));
      v405 = v114;
      v120 = *(&v114 + 3) - *v119;
      v121 = *(&v114 + 3) + *v119;
      v406 = v115;
      v122 = *(&v406 & 0xFFFFFFFFFFFFFFF3 | (4 * (v112 & 3)));
      v407 = v116;
      v123 = *(&v407 & 0xFFFFFFFFFFFFFFF3 | (4 * (v112 & 3)));
      v124 = *(&v115 + 3) - v122;
      v125 = *(&v115 + 3) + v122;
      v126 = 1;
      do
      {
        v127 = v126 & 1;
        if (v126)
        {
          v128 = v118;
        }

        else
        {
          v128 = -v118;
        }

        v129 = v117 | (2 * v112);
        v130 = v446[v129];
        v130.f32[0] = *(&v113 + 3) + v128;
        if (v126)
        {
          v131 = v121;
        }

        else
        {
          v131 = v120;
        }

        if (v126)
        {
          v132 = v125;
        }

        else
        {
          v132 = v124;
        }

        if (v126)
        {
          v133 = v123;
        }

        else
        {
          v133 = -v123;
        }

        v130.f32[1] = v131;
        v130.f32[2] = v132;
        v134 = vmulq_f32(v130, v130);
        v130.f32[3] = *(&v116 + 3) + v133;
        v446[v129] = vmulq_n_f32(v130, sqrtf(v134.f32[2] + vaddv_f32(*v134.f32)));
        v117 = 1;
        v126 = 0;
      }

      while (v127);
      ++v112;
    }

    while (v112 != 3);
  }

  v135 = CACurrentMediaTime();
  v463[0] = 0;
  v474 = v455;
  v475 = v456;
  v476 = v457;
  v477 = v458;
  v470 = v451;
  v471 = v452;
  v472 = v453;
  v473 = v454;
  v466 = v447;
  v467 = v448;
  v468 = v449;
  v469 = v450;
  v444[4] = v446[3];
  v444[5] = v446[4];
  v444[6] = v446[5];
  v444[0] = v445;
  v444[1] = v446[0];
  v444[2] = v446[1];
  v444[3] = v446[2];
  v31 = [(SCNMTLDeformerStack *)v64 computeDeformedMeshForContext:selfCopy programHashCodeRequirements:v30 transforms:&v466 frustumInfo:v444 status:v463];
  selfCopy->__engineStats->mrphTime = CACurrentMediaTime() - v135 + selfCopy->__engineStats->mrphTime;
  if (*(v399 + 3128) == 1)
  {
    AuthoringEnvironment = C3DEngineContextGetAuthoringEnvironment(selfCopy->_engineContext, 0);
    v474 = v455;
    v475 = v456;
    v476 = v457;
    v477 = v458;
    v470 = v451;
    v471 = v452;
    v472 = v453;
    v473 = v454;
    v466 = v447;
    v467 = v448;
    v468 = v449;
    v469 = v450;
    TypeID = [(SCNMTLDeformerStack *)v64 updateDataForAuthoringEnvironment:&v466 transforms:selfCopy context:?];
  }

  v26 = v463[0];
  var5 = v400.i64[0];
  if (v28)
  {
    v27 = v385;
    if (v31)
    {
      *v384 = var4;
      TypeID = v31;
      goto LABEL_56;
    }

LABEL_45:
    if (commandCopy[9].i8[2] == 1 && (v27 & v401.i32[0] & 1) == 0)
    {
      C3DMeshCreateTangentsIfNeeded(var4, v395);
    }

    *v384 = var4;
    if (var4)
    {
      v31 = [(SCNMTLResourceManager *)selfCopy->_resourceManager renderResourceForMesh:v395 dataKind:?];
    }

    else
    {
      v31 = 0;
    }

    TypeID = 0;
LABEL_56:
    selfCopy->_cache.metalMesh = v31;
    HIDWORD(v382) = 1;
    v31 = TypeID;
    if (v27)
    {
      goto LABEL_57;
    }

    goto LABEL_117;
  }

  HIDWORD(v382) = 0;
  v27 = v385;
  if (v385)
  {
LABEL_57:
    if (!v26)
    {
      goto LABEL_122;
    }

    v32 = selfCopy->_renderPassParameters.eyeCount;
    v33 = *&selfCopy->_anon_31b8[1328];
    if ((v33 & 2) == 0)
    {
      *&selfCopy->_anon_31b8[1328] = v33 | 2;
      if (!v32)
      {
        if ((v33 & 4) == 0)
        {
          *&selfCopy->_anon_31b8[1328] = v33 | 6;
        }

        goto LABEL_121;
      }

      v34 = 0;
      v35 = *&selfCopy->_nodeUniforms.instanceNode;
      v36 = *&selfCopy->_nodeUniforms.probeCacheIndex;
      v37 = *&selfCopy->_anon_31b8[8];
      v38 = *&selfCopy->_anon_31b8[24];
      do
      {
        v39 = 0;
        v40 = &selfCopy->_anon_8f0[704 * v34];
        v41 = *v40;
        v42 = v40[1];
        v43 = v40[2];
        v44 = v40[3];
        v466 = v35;
        v467 = v36;
        v468 = v37;
        v469 = v38;
        do
        {
          *(&v447 + v39) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v41, COERCE_FLOAT(*(&v466 + v39))), v42, *&v466.f32[v39 / 4], 1), v43, *(&v466 + v39), 2), v44, *(&v466 + v39), 3);
          v39 += 16;
        }

        while (v39 != 64);
        v45 = v448;
        v46 = v449;
        v47 = v450;
        v48 = &selfCopy->_anon_31b8[64 * v34 + 488];
        *v48 = v447;
        *(v48 + 1) = v45;
        *(v48 + 2) = v46;
        *(v48 + 3) = v47;
        ++v34;
      }

      while (v34 != v32);
      v33 = *&selfCopy->_anon_31b8[1328];
    }

    if ((v33 & 4) == 0)
    {
      *&selfCopy->_anon_31b8[1328] = v33 | 4;
      if (v32)
      {
        v49 = 0;
        v50 = *&selfCopy->_nodeUniforms.instanceNode;
        v51 = *&selfCopy->_nodeUniforms.probeCacheIndex;
        v52 = *&selfCopy->_anon_31b8[8];
        v53 = *&selfCopy->_anon_31b8[24];
        do
        {
          v54 = 0;
          v55 = &selfCopy->_anon_8f0[704 * v49];
          v56 = v55[12];
          v57 = v55[13];
          v58 = v55[14];
          v59 = v55[15];
          v466 = v50;
          v467 = v51;
          v468 = v52;
          v469 = v53;
          do
          {
            *(&v447 + v54) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, COERCE_FLOAT(*(&v466 + v54))), v57, *&v466.f32[v54 / 4], 1), v58, *(&v466 + v54), 2), v59, *(&v466 + v54), 3);
            v54 += 16;
          }

          while (v54 != 64);
          v60 = v448;
          v61 = v449;
          v62 = v450;
          v63 = &selfCopy->_anon_31b8[64 * v49 + 872];
          *v63 = v447;
          *(v63 + 1) = v60;
          *(v63 + 2) = v61;
          *(v63 + 3) = v62;
          ++v49;
        }

        while (v49 != v32);
      }
    }

LABEL_121:
    LOBYTE(v26) = 1;
    goto LABEL_122;
  }

LABEL_117:
  v400.i32[0] = 0;
  v383 = 0;
  v137 = *(v399 + 3000) == 0;
  *(v399 + 3000) = 0;
  if (!v31)
  {
    goto LABEL_134;
  }

LABEL_126:
  TypeID = C3DGeometryUsesDeformerBasedDynamicMesh(var2);
  if (TypeID)
  {
    if (var5)
    {
      v155 = scn_default_log(TypeID, v15);
      if (os_log_type_enabled(v155, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLRenderContext *)v155 _executeDrawCommand:v156, v157, v158, v159, v160, v161, v162];
      }
    }

    MeshElementCountForDeformerBasedDynamicMesh = C3DGeometryGetMeshElementCountForDeformerBasedDynamicMesh(var2);
    if (MeshElementCountForDeformerBasedDynamicMesh != 1)
    {
      v165 = scn_default_log(MeshElementCountForDeformerBasedDynamicMesh, v164);
      if (os_log_type_enabled(v165, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLRenderContext *)v165 _executeDrawCommand:v166, v167, v168, v169, v170, v171, v172];
      }
    }

    v173 = [-[SCNMTLMesh elements](v31) objectAtIndexedSubscript:0];
    v153 = 0;
    selfCopy->_cache.meshElement = 0;
    selfCopy->_cache.metalMeshElement = v173;
LABEL_142:
    v154 = v394;
    if (!var5)
    {
      goto LABEL_154;
    }

    goto LABEL_143;
  }

LABEL_134:
  if (selfCopy->_cache.meshElement == var5)
  {
    goto LABEL_141;
  }

  if (!((v31 == 0) | v401.i8[0] & 1))
  {
    IndexOfElement = C3DMeshGetIndexOfElement(var4, var5, v395);
    if (IndexOfElement != -1)
    {
      v176 = [-[SCNMTLMesh elements](v31) objectAtIndexedSubscript:IndexOfElement];
      selfCopy->_cache.meshElement = var5;
      selfCopy->_cache.metalMeshElement = v176;
      if (![(SCNMTLMesh *)v176 buffers])
      {
        PrimitiveRange = C3DMeshElementGetPrimitiveRange(var5);
        [(SCNMTLMeshElement *)v176 setPrimitiveRange:v310];
        v154 = v394;
        if (![(SCNMTLMesh *)v176 volatileBuffer])
        {
          return;
        }

        goto LABEL_300;
      }
    }

LABEL_141:
    v153 = 0;
    goto LABEL_142;
  }

  selfCopy->_cache.meshElement = var5;
  if (var5)
  {
    TypeID = [SCNMTLResourceManager renderResourceForMeshElement:?];
    p_metalMeshElement = &selfCopy->_cache.metalMeshElement;
    selfCopy->_cache.metalMeshElement = TypeID;
    v154 = v394;
    if (TypeID)
    {
      goto LABEL_298;
    }
  }

  else
  {
    p_metalMeshElement = &selfCopy->_cache.metalMeshElement;
    selfCopy->_cache.metalMeshElement = 0;
    v154 = v394;
  }

  v277 = scn_default_log(TypeID, v15);
  if (!os_log_type_enabled(v277, OS_LOG_TYPE_FAULT))
  {
    if (!var5)
    {
      goto LABEL_299;
    }

    goto LABEL_298;
  }

  [(SCNMTLRenderContext *)v277 _executeDrawCommand:v278, v279, v280, v281, v282, v283, v284];
  if (var5)
  {
LABEL_298:
    v285 = C3DMeshElementGetPrimitiveRange(var5);
    [(SCNMTLMeshElement *)*p_metalMeshElement setPrimitiveRange:v285, v286];
  }

LABEL_299:
  volatileBuffer = [(SCNMTLMesh *)*p_metalMeshElement volatileBuffer];
  v27 = v385;
  if (!volatileBuffer)
  {
    return;
  }

LABEL_300:
  v153 = 0;
  if (!var5)
  {
    goto LABEL_154;
  }

LABEL_143:
  Type = C3DMeshElementGetType(var5, v15);
  LODWORD(var5) = 0;
  if (Type <= 2u)
  {
    if (Type >= 2u)
    {
      if (Type == 2)
      {
        LODWORD(var5) = 2;
      }

      goto LABEL_154;
    }

LABEL_153:
    LODWORD(var5) = 3;
    goto LABEL_154;
  }

  if (Type == 3)
  {
    LODWORD(var5) = 1;
    goto LABEL_154;
  }

  if (Type != 4)
  {
    if (Type != 5)
    {
      goto LABEL_154;
    }

    goto LABEL_153;
  }

  if (v153)
  {
    goto LABEL_153;
  }

  v308 = scn_default_log(Type, v15);
  if (os_log_type_enabled(v308, OS_LOG_TYPE_ERROR))
  {
    [SCNMTLRenderContext _executeDrawCommand:];
  }

  LODWORD(var5) = 0;
LABEL_154:
  CommonProfile = var1;
  v179 = *(v399 + 2969);
  *(v399 + 2969) = var5;
  v180 = v386;
  v182 = selfCopy->_cache.material != CommonProfile || v388 != v386;
  LODWORD(v395) = v182;
  selfCopy->_cache.material = CommonProfile;
  if (CommonProfile)
  {
    CommonProfile = C3DMaterialGetCommonProfile(CommonProfile, v15);
  }

  selfCopy->_cache.commonProfile = CommonProfile;
  geometry = selfCopy->_cache.geometry;
  selfCopy->_cache.geometry = var2;
  Count = C3DSourceAccessorGetCount(selfCopy->_processingContext.dynamicBatchingSystem);
  v185 = selfCopy->_cache.node == v154 && v388 == v180;
  v186 = v24 && EffectiveCalculationMode == 3;
  if (!v185)
  {
    v186 = 1;
  }

  if (Count > 1)
  {
    v186 = 1;
  }

  LODWORD(v382) = v186;
  selfCopy->_cache.node = v154;
  v187 = selfCopy->_cache.metalMesh;
  if (v27)
  {
    tessellationVertexDescriptorHash = [(SCNMTLMesh *)v187 tessellationVertexDescriptorHash];
  }

  else
  {
    tessellationVertexDescriptorHash = [(SCNMTLMesh *)v187 vertexDescriptorHash];
  }

  v190 = tessellationVertexDescriptorHash;
  BlendStates = v403.i64[0];
  vertexDescriptorHash = selfCopy->_cache.vertexDescriptorHash;
  selfCopy->_cache.vertexDescriptorHash = tessellationVertexDescriptorHash;
  v193 = 1.0;
  if (v154 && !v402.i32[0])
  {
    C3DNodeGetWorldAlpha(v154, v189);
    v193 = v194;
  }

  v444[0] = 0uLL;
  if (BlendStates)
  {
    BlendStates = C3DFXPassGetBlendStates(BlendStates, v189);
  }

  v195 = var1;
  if (var1 && !BlendStates)
  {
    BlendStates = C3DMaterialGetBlendStates(var1, v402.u32[0], lightBufferBindings, (*(selfCopy + 152) >> 3) & 1, v444[0].f32, v193);
  }

  if (BlendStates && C3DBlendStatesNeedsConstantColor(BlendStates, v189) && (renderEncoder = selfCopy->_renderEncoder, v199 = v444[0], v200 = vmvnq_s8(vceqq_f32(*&renderEncoder->var10, v444[0])), (vmaxvq_u32(v200) & 0x80000000) != 0))
  {
    *&renderEncoder->var10 = v444[0];
    v200.i32[0] = v199.i32[1];
    LODWORD(v197) = v199.i32[3];
    LODWORD(v196) = v199.i32[2];
    [renderEncoder->var24[1] setBlendColorRed:*v199.i64 green:*v200.i64 blue:v196 alpha:v197];
    if (v195)
    {
      goto LABEL_184;
    }
  }

  else if (var1)
  {
LABEL_184:
    v201 = C3DMaterialGetColorBufferWriteMask(v195, v189);
    goto LABEL_187;
  }

  v201 = 15;
LABEL_187:
  v202 = v386;
  if (commandCopy[9].i8[4])
  {
    v203 = 0;
  }

  else
  {
    v203 = v201;
  }

  v204 = *(v399 + 2968);
  *(v399 + 2968) = v203;
  v205 = selfCopy->_cache.blendStates;
  selfCopy->_cache.blendStates = BlendStates;
  if (v388 == v202 && vertexDescriptorHash == v190 && v205 == BlendStates && v204 == v203 && v137 && v179 == var5)
  {
    goto LABEL_216;
  }

  if (v27)
  {
    v206 = [(SCNMTLTessellator *)v383 newPipelineStateConfiguratorForMeshElement:selfCopy->_cache.metalMeshElement patchType:commandCopy[9].i8[5] & 7 device:selfCopy->_device];
  }

  else
  {
    v206 = 0;
  }

  IsWarmUp = C3DEngineContextIsWarmUp(selfCopy->_engineContext);
  v209 = IsWarmUp;
  if (*(selfCopy + 152) < 0)
  {
    v210 = 2;
  }

  else
  {
    v210 = IsWarmUp;
  }

  if (selfCopy->_renderPassParameters.multiVertexOutputStreamGenerator == 2)
  {
    v211 = 2;
  }

  else
  {
    v211 = 1;
  }

  v212 = selfCopy->_cache.metalMesh;
  if (v400.i32[0])
  {
    tessellationVertexDescriptorHash2 = [(SCNMTLMesh *)v212 tessellationVertexDescriptorHash];
    tessellationVertexDescriptor = [(SCNMTLMesh *)&selfCopy->_cache.metalMesh->super.isa tessellationVertexDescriptor];
  }

  else
  {
    tessellationVertexDescriptorHash2 = [(SCNMTLMesh *)v212 vertexDescriptorHash];
    tessellationVertexDescriptor = [(SCNMTLResourceManager *)selfCopy->_cache.metalMesh commandQueue];
  }

  v215 = selfCopy->_renderPassParameters.eyeCount;
  renderMode = selfCopy->_renderPassParameters.renderMode;
  if (*(v399 + 3136) == 1)
  {
    errors = selfCopy->_compilationIssues.errors;
  }

  else
  {
    errors = 0;
  }

  resourceManager = selfCopy->_resourceManager;
  v447.i64[0] = v386;
  v447.i64[1] = var1;
  v448.i64[0] = v392;
  v448.i64[1] = v403.i64[0];
  v449.i64[0] = v403.i64[0];
  v449.i64[1] = BlendStates;
  v450.i64[0] = v394;
  v450.i8[8] = v203;
  v450.i8[9] = var5;
  v450.i8[10] = v215;
  v450.i8[11] = v211;
  v450.i32[3] = 0;
  *&v451 = tessellationVertexDescriptor;
  *(&v451 + 1) = tessellationVertexDescriptorHash2;
  LOBYTE(v452) = renderMode;
  BYTE1(v452) = v210;
  *(&v452 + 2) = 0;
  WORD3(v452) = 0;
  *(&v452 + 1) = errors;
  LOBYTE(v453) = v400.i8[0];
  DWORD1(v453) = 0;
  *(&v453 + 1) = 0;
  *(&v453 + 1) = v206;
  *&v454 = 0;
  renderPipeline = [(SCNMTLResourceManager *)resourceManager renderResourceForProgramDesc:&v447 renderPassDescriptor:selfCopy->_currentRenderPassDescriptor, v382];
  selfCopy->_cache.renderPipeline = renderPipeline;
  if (v206)
  {
    _Block_release(v206);
    renderPipeline = selfCopy->_cache.renderPipeline;
  }

  if ([(SCNMTLRenderPipeline *)renderPipeline state])
  {
    state = [(SCNMTLRenderPipeline *)selfCopy->_cache.renderPipeline state];
    v222 = selfCopy->_renderEncoder;
    if (v222->var23 != state)
    {
      v222->var23 = state;
      [v222->var24[1] setRenderPipelineState:state];
    }

LABEL_216:
    v443 = 1;
    v223 = selfCopy->_cache.renderPipeline;
    if (!v223 || ![(SCNMTLRenderPipeline *)v223 state])
    {
      return;
    }

    v441 = 0u;
    v442 = 0u;
    v439 = 0u;
    v440 = 0u;
    frameBufferBindings = [(SCNMTLRenderPipeline *)selfCopy->_cache.renderPipeline frameBufferBindings];
    v225 = [(NSArray *)frameBufferBindings countByEnumeratingWithState:&v439 objects:v465 count:16];
    if (v225)
    {
      v226 = v225;
      v227 = *v440;
      do
      {
        for (i = 0; i != v226; ++i)
        {
          if (*v440 != v227)
          {
            objc_enumerationMutation(frameBufferBindings);
          }

          v229 = *(*(&v439 + 1) + 8 * i);
          bindBlock = [v229 bindBlock];
          (*(bindBlock + 16))(bindBlock, v229, selfCopy);
        }

        v226 = [(NSArray *)frameBufferBindings countByEnumeratingWithState:&v439 objects:v465 count:16];
      }

      while (v226);
    }

    if ([(SCNMTLRenderPipeline *)selfCopy->_cache.renderPipeline passBufferBindings])
    {
      Storage = C3DFXPassGetStorage(v403.i64[0], v231);
      v435 = 0u;
      v436 = 0u;
      v437 = 0u;
      v438 = 0u;
      v400.i64[0] = [(SCNMTLRenderPipeline *)selfCopy->_cache.renderPipeline passBufferBindings];
      v403.i64[0] = [v400.i64[0] countByEnumeratingWithState:&v435 objects:v464 count:16];
      if (v403.i64[0])
      {
        v402.i64[0] = *v436;
        do
        {
          v233 = 0;
          do
          {
            if (*v436 != v402.i64[0])
            {
              objc_enumerationMutation(v400.i64[0]);
            }

            v234 = *(*(&v435 + 1) + 8 * v233);
            if ([v234 type])
            {
              if ([v234 type] != 2)
              {
                goto LABEL_281;
              }

              Weak = objc_loadWeak(&selfCopy->_resourceManagerMonitor);
              v237 = Weak;
              v238 = *(v234 + 56);
              if (*(v238 + 16) == 1)
              {
                RenderGraph = C3DEngineContextGetRenderGraph(selfCopy->_engineContext);
                TextureSampler = *(v238 + 64);
                if (!TextureSampler)
                {
                  TextureSampler = *(v238 + 56);
                }

                TextureNamed = C3D::Pass::inputTextureNamed(selfCopy->_processingContext.renderGraphPass, [TextureSampler UTF8String]);
                if (!TextureNamed)
                {
                  TextureNamed = C3DRenderGraphGetTextureNamed(RenderGraph, [TextureSampler UTF8String]);
                  if (!TextureNamed)
                  {
                    if (v237)
                    {
                      renderGraph = [MEMORY[0x277CCACA8] stringWithFormat:@"No registered texture for binding %@ and symbol %@ in pass or render graph.\nPass: %s (%p)\nRender graph: %p", v234, TextureSampler, (**selfCopy->_processingContext.renderGraphPass)(selfCopy->_processingContext.renderGraphPass), selfCopy->_processingContext.renderGraphPass, RenderGraph];
                      goto LABEL_272;
                    }

LABEL_275:
                    TextureNamed = [(SCNMTLResourceManager *)selfCopy->_resourceManager defaultTexture];
                  }
                }

                defaultTexture = TextureNamed;
LABEL_277:
                v272 = selfCopy->_renderEncoder;
                v273 = *(v234 + 9);
                if (v273 != 0xFF)
                {
                  SCNMTLRenderCommandEncoder::setVertexTexture(selfCopy->_renderEncoder, defaultTexture, v273);
                }

                if ((~v273 & 0xFF00) != 0)
                {
                  SCNMTLRenderCommandEncoder::setFragmentTexture(v272, defaultTexture, v273 >> 8);
                }

                goto LABEL_281;
              }

              if (Storage)
              {
                v249 = *(v238 + 88);
                v250 = *(Storage + v249);
                if (v250)
                {
                  TextureSampler = C3DFXSamplerGetTextureSampler(*(Storage + v249), v236);
                  Texture = C3DFXSamplerGetTexture(v250, v251);
                  if (Texture || (Image = C3DFXSamplerGetImage(v250, v253)) != 0 && (Texture = [(SCNMTLResourceManager *)selfCopy->_resourceManager renderResourceForImage:Image sampler:TextureSampler options:0 engineContext:selfCopy->_engineContext didFallbackToDefaultTexture:0]) != 0)
                  {
                    defaultTexture = Texture;
                    if (*(v234 + 12) != 255 || *(v234 + 11) != 255)
                    {
                      v255 = [SCNMTLResourceManager renderResourceForSampler:?];
                      v256 = v255;
                      v257 = selfCopy->_renderEncoder;
                      v258 = *(v234 + 9);
                      if (*(v234 + 9) != 0xFF && v257->var16[v258 + 3] != v255)
                      {
                        v257->var16[v258 + 3] = v255;
                        [v257->var24[1] setVertexSamplerState:v255 atIndex:?];
                      }

                      if ((~v258 & 0xFF00) != 0)
                      {
                        v259 = v258 >> 8;
                        if (v257->var19[v259 + 3] != v256)
                        {
                          v257->var19[v259 + 3] = v256;
                          [v257->var24[1] setFragmentSamplerState:v256 atIndex:?];
                        }
                      }
                    }

                    goto LABEL_277;
                  }

                  if (!v237)
                  {
                    goto LABEL_275;
                  }

                  v269 = MEMORY[0x277CCACA8];
                  v270 = C3DFXSamplerGetTexture(v250, v268);
                  renderGraph = [v269 stringWithFormat:@"No texture or image provided for binding %@ by sampler %@.\nTexture: %@\nImage: %@", v234, TextureSampler, v270, C3DFXSamplerGetImage(v250, v271)];
LABEL_272:
                  v266 = renderGraph;
                  goto LABEL_273;
                }

                if (!Weak)
                {
                  goto LABEL_275;
                }

                v238 = [MEMORY[0x277CCACA8] stringWithFormat:@"No sampler found for binding %@ and input %@", v234, v238];
              }

              else
              {
                v264 = scn_default_log(Weak, v236);
                if (os_log_type_enabled(v264, OS_LOG_TYPE_ERROR))
                {
                  [(SCNMTLRenderContext *)v463 _executeDrawCommand:v234, (v463 + 4)];
                  if (!v237)
                  {
                    goto LABEL_275;
                  }
                }

                else if (!v237)
                {
                  goto LABEL_275;
                }

                v238 = [MEMORY[0x277CCACA8] stringWithFormat:@"No pass storage for binding %@", v234, v381];
              }

              v266 = v238;
              TextureSampler = v234;
LABEL_273:
              defaultTexture = [(SCNMTLResourceManager *)selfCopy->_resourceManager defaultTexture];
              [v237 renderContext:selfCopy didFallbackToDefaultTextureForSource:TextureSampler message:v266];
              goto LABEL_277;
            }

            bufferSize = [v234 bufferSize];
            v401.i64[0] = &v382;
            v245 = MEMORY[0x28223BE20](bufferSize);
            v246 = &v382 - v244;
            if (Storage)
            {
              if ([v234 inputsCount] >= 1)
              {
                v247 = 0;
                v248 = 0;
                do
                {
                  memcpy(&v246[*(*(v234 + 48) + v247 + 8)], (Storage + *(*(*(v234 + 48) + v247) + 88)), *(*(v234 + 48) + v247 + 12));
                  ++v248;
                  v247 += 16;
                }

                while (v248 < [v234 inputsCount]);
              }
            }

            else
            {
              bzero(&v382 - v244, bufferSize);
            }

            v260 = *(v234 + 9);
            v261 = selfCopy->_renderEncoder;
            v447 = 0uLL;
            v448.i64[0] = 0;
            SCNMTLBufferPool::allocateAndCopy(&v447, v261->var25[0], v246, bufferSize);
            v262 = v447.i64[1];
            v263 = v448.i64[0];
            if (v260 != 0xFF)
            {
              SCNMTLRenderCommandEncoder::setVertexBuffer(v261, v447.i64[1], v448.i64[0], v260);
            }

            if ((~v260 & 0xFF00) != 0)
            {
              SCNMTLRenderCommandEncoder::setFragmentBuffer(v261, v262, v263, v260 >> 8);
            }

LABEL_281:
            ++v233;
          }

          while (v233 != v403.i64[0]);
          v403.i64[0] = [v400.i64[0] countByEnumeratingWithState:&v435 objects:v464 count:16];
        }

        while (v403.i64[0]);
      }
    }

    v274 = v395;
    if (geometry != v392)
    {
      v274 = 1;
    }

    if ((v274 & 1) != 0 || v388 != v386)
    {
      v275 = selfCopy->_cache.material ? [(SCNMTLResourceManager *)selfCopy->_resourceManager renderResourceForMaterial:v392 geometry:selfCopy->_cache.renderPipeline renderPipeline:selfCopy->_engineContext engineContext:?]: 0;
      selfCopy->_cache.metalShadable = v275;
      v431 = 0u;
      v432 = 0u;
      v433 = 0u;
      v434 = 0u;
      shadableBufferBindings = [(SCNMTLRenderPipeline *)selfCopy->_cache.renderPipeline shadableBufferBindings];
      v289 = [(NSArray *)shadableBufferBindings countByEnumeratingWithState:&v431 objects:v462 count:16];
      if (v289)
      {
        v290 = v289;
        v291 = *v432;
        do
        {
          for (j = 0; j != v290; ++j)
          {
            if (*v432 != v291)
            {
              objc_enumerationMutation(shadableBufferBindings);
            }

            v293 = *(*(&v431 + 1) + 8 * j);
            bindBlock2 = [v293 bindBlock];
            if (bindBlock2)
            {
              (*(bindBlock2 + 16))(bindBlock2, v293, selfCopy);
            }
          }

          v290 = [(NSArray *)shadableBufferBindings countByEnumeratingWithState:&v431 objects:v462 count:16];
        }

        while (v290);
      }
    }

    v295 = v393;
    if (commandCopy[9].i8[3] == 1)
    {
      if ((*(selfCopy + 152) & 0x20) != 0)
      {
        selfCopy->_lighting.currentLightingSet = vadd_s8(commandCopy[6], -1);
      }

      else
      {
        passInstance = selfCopy->_processingContext.passInstance;
        v479 = __invert_f4(*(passInstance + 3168));
        v402 = v479.columns[1];
        v403 = v479.columns[0];
        v400 = v479.columns[3];
        v401 = v479.columns[2];
        v297 = &commandCopy[6];
        v298 = selfCopy->_cache.renderPipeline;
        v299 = *&commandCopy[6] ^ v298 ^ selfCopy->_renderPassParameters.eyeCount ^ selfCopy->_renderPassParameters.renderMode;
        v430 = v299;
        if (selfCopy->_lighting.currentLightingHashKey != v299)
        {
          selfCopy->_lighting.currentLightingHashKey = v299;
          lightBufferBindings = [(SCNMTLRenderPipeline *)v298 lightBufferBindings];
          if (lightBufferBindings)
          {
            C3DLightingSystemGetLightingSetDesc(selfCopy->_processingContext.lightingSystem, v297, &selfCopy->_lighting.currentLightingDesc);
            v447.i64[0] = &v430;
            v395 = std::__hash_table<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&selfCopy->_lighting.frameLightingSetDatas, &v430, &std::piecewise_construct, &v447);
            if (v395[3])
            {
              v424 = 0u;
              v425 = 0u;
              v422 = 0u;
              v423 = 0u;
              v300 = [(NSArray *)lightBufferBindings countByEnumeratingWithState:&v422 objects:v460 count:16];
              if (v300)
              {
                v301 = v300;
                v302 = *v423;
                do
                {
                  for (k = 0; k != v301; ++k)
                  {
                    if (*v423 != v302)
                    {
                      objc_enumerationMutation(lightBufferBindings);
                    }

                    v304 = selfCopy->_renderEncoder;
                    v305 = v395[3];
                    v306 = v395[4];
                    v307 = *(*(*(&v422 + 1) + 8 * k) + 9);
                    if (*(*(*(&v422 + 1) + 8 * k) + 9) != 0xFF)
                    {
                      SCNMTLRenderCommandEncoder::setVertexBuffer(selfCopy->_renderEncoder, v395[3], v395[4], v307);
                    }

                    if ((~v307 & 0xFF00) != 0)
                    {
                      SCNMTLRenderCommandEncoder::setFragmentBuffer(v304, v305, v306, v307 >> 8);
                    }
                  }

                  v301 = [(NSArray *)lightBufferBindings countByEnumeratingWithState:&v422 objects:v460 count:16];
                }

                while (v301);
              }
            }

            else
            {
              v428 = 0u;
              v429 = 0u;
              v426 = 0u;
              v427 = 0u;
              geometry = [(NSArray *)lightBufferBindings countByEnumeratingWithState:&v426 objects:v461 count:16];
              if (geometry)
              {
                var1 = (passInstance + 3168);
                v389 = *v427;
                do
                {
                  v311 = 0;
                  do
                  {
                    if (*v427 != v389)
                    {
                      objc_enumerationMutation(lightBufferBindings);
                    }

                    v392 = v311;
                    v312 = *(*(&v426 + 1) + 8 * v311);
                    if ([v312 semanticsCount] >= 1)
                    {
                      v313 = [v312 bufferSize] * selfCopy->_renderPassParameters.eyeCount;
                      v314 = v395;
                      v395[5] = v313;
                      v445 = 0uLL;
                      *&v446[0] = 0;
                      SCNMTLBufferPool::allocate(&v445, selfCopy->_frameConstantBufferPool, v313);
                      v315 = *&v446[0];
                      v314[3] = v445.i64[1];
                      v314[4] = v315;
                      if (selfCopy->_renderPassParameters.eyeCount)
                      {
                        v316 = 0;
                        do
                        {
                          v317 = 0;
                          v318 = (var1 + 64 * v316);
                          v319 = *v318;
                          v320 = v318[1];
                          v321 = v318[2];
                          v322 = v318[3];
                          v466 = v403;
                          v467 = v402;
                          v468 = v401;
                          v469 = v400;
                          do
                          {
                            *(&v447 + v317) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v319, COERCE_FLOAT(*(&v466 + v317))), v320, *&v466.f32[v317 / 4], 1), v321, *(&v466 + v317), 2), v322, *(&v466 + v317), 3);
                            v317 += 16;
                          }

                          while (v317 != 64);
                          v323 = 0;
                          v324 = v448;
                          v325 = v449;
                          v326 = v450;
                          *&selfCopy->_lighting.needLightingSpaceTransformation = v447;
                          *&selfCopy->_anon_3848[8] = v324;
                          *&selfCopy->_anon_3848[24] = v325;
                          *&selfCopy->_anon_3848[40] = v326;
                          v466 = v403;
                          v467 = v402;
                          v468 = v401;
                          v469 = v400;
                          do
                          {
                            *(&v447 + v323) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v319, COERCE_FLOAT(*(&v466 + v323))), v320, *&v466.f32[v323 / 4], 1), v321, *(&v466 + v323), 2), v322, *(&v466 + v323), 3);
                            v323 += 16;
                          }

                          while (v323 != 64);
                          v327 = v448;
                          v328 = v449;
                          v329 = v450;
                          *&selfCopy->_anon_3848[56] = v447;
                          *&selfCopy->_anon_3848[72] = v327;
                          *&selfCopy->_anon_3848[88] = v328;
                          *&selfCopy->_anon_3848[104] = v329;
                          *(v399 + 2240) = 1;
                          if ([v312 semanticsCount] >= 1)
                          {
                            v330 = 0;
                            v331 = 0;
                            do
                            {
                              (*(*(*(v312 + 48) + v330) + 16))();
                              ++v331;
                              v330 += 16;
                            }

                            while (v331 < [v312 semanticsCount]);
                          }

                          bufferSize2 = [v312 bufferSize];
                          v445.i64[0] += bufferSize2;
                          ++v316;
                        }

                        while (v316 < selfCopy->_renderPassParameters.eyeCount);
                      }
                    }

                    v333 = selfCopy->_renderEncoder;
                    v334 = v395[3];
                    v335 = v395[4];
                    v336 = *(v312 + 9);
                    if (v336 != 0xFF)
                    {
                      SCNMTLRenderCommandEncoder::setVertexBuffer(selfCopy->_renderEncoder, v395[3], v395[4], v336);
                    }

                    if ((~v336 & 0xFF00) != 0)
                    {
                      SCNMTLRenderCommandEncoder::setFragmentBuffer(v333, v334, v335, v336 >> 8);
                    }

                    v311 = (&v392->var0.var0.var0 + 1);
                  }

                  while ((&v392->var0.var0.var0 + 1) != geometry);
                  geometry = [(NSArray *)lightBufferBindings countByEnumeratingWithState:&v426 objects:v461 count:16];
                }

                while (geometry);
              }
            }
          }
        }

        v295 = v393;
      }
    }

    if (v382)
    {
      if ((*(selfCopy + 152) & 0x20) != 0)
      {
        *&selfCopy->_anon_31b8[1336] = v396;
      }

      v420 = 0u;
      v421 = 0u;
      v418 = 0u;
      v419 = 0u;
      v403.i64[0] = [(SCNMTLRenderPipeline *)selfCopy->_cache.renderPipeline nodeBufferBindings];
      v337 = [v403.i64[0] countByEnumeratingWithState:&v418 objects:v459 count:16];
      if (v337)
      {
        v338 = v337;
        v339 = *v419;
        v401.i64[0] = *v419;
        do
        {
          v340 = 0;
          v402.i64[0] = v338;
          do
          {
            if (*v419 != v339)
            {
              objc_enumerationMutation(v403.i64[0]);
            }

            v341 = *(*(&v418 + 1) + 8 * v340);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              semanticsCount = [v341 semanticsCount];
              if (semanticsCount < 1)
              {
                v358 = scn_default_log(semanticsCount, v343);
                if (os_log_type_enabled(v358, OS_LOG_TYPE_ERROR))
                {
                  [(SCNMTLRenderContext *)&v445 _executeDrawCommand:v358];
                }
              }

              else
              {
                bufferSize3 = [v341 bufferSize];
                v345 = selfCopy->_renderPassParameters.eyeCount;
                v408[0] = MEMORY[0x277D85DD0];
                v408[1] = 3221225472;
                v409 = __43__SCNMTLRenderContext__executeDrawCommand___block_invoke;
                v410 = &unk_2782FD490;
                v413 = v295;
                v414 = v396;
                v416 = EffectiveCalculationMode;
                v417 = v345;
                v415 = bufferSize3;
                v411 = selfCopy;
                v412 = v341;
                v346 = C3DDynamicBatchingSystemGetCurrentBatchNodes(selfCopy->_processingContext.dynamicBatchingSystem, &v443);
                v347 = bufferSize3 * v345;
                if (v443 < 2)
                {
                  v359 = MEMORY[0x28223BE20](v346);
                  (v409)(v408, v394, &v382 - ((v347 + 15) & 0xFFFFFFFFFFFFFFF0), v359);
                  v360 = *(v341 + 9);
                  v361 = selfCopy->_renderEncoder;
                  v447 = 0uLL;
                  v448.i64[0] = 0;
                  SCNMTLBufferPool::allocateAndCopy(&v447, v361->var25[0], &v382 - ((v347 + 15) & 0xFFFFFFFFFFFFFFF0), v347);
                  v362 = v447.i64[1];
                  v363 = v448.i64[0];
                  if (v360 != 0xFF)
                  {
                    SCNMTLRenderCommandEncoder::setVertexBuffer(v361, v447.i64[1], v448.i64[0], v360);
                  }

                  if ((~v360 & 0xFF00) != 0)
                  {
                    SCNMTLRenderCommandEncoder::setFragmentBuffer(v361, v362, v363, v360 >> 8);
                  }

                  v295 = v393;
                  v339 = v401.i64[0];
                  v338 = v402.i64[0];
                }

                else
                {
                  v348 = v346;
                  v447 = 0uLL;
                  v448.i64[0] = 0;
                  SCNMTLBufferPool::allocate(&v447, selfCopy->_frameConstantBufferPool, v443 * v347);
                  if (v443 >= 1)
                  {
                    v349 = 0;
                    v350 = v447.i64[0];
                    do
                    {
                      (v409)(v408, *(v348 + 8 * v349), v350);
                      v350 += v347;
                      ++v349;
                    }

                    while (v349 < v443);
                  }

                  v351 = selfCopy->_renderEncoder;
                  v352 = v447.i64[1];
                  v353 = v448.i64[0];
                  v354 = *(v341 + 9);
                  if (v354 != 0xFF)
                  {
                    SCNMTLRenderCommandEncoder::setVertexBuffer(selfCopy->_renderEncoder, v447.i64[1], v448.i64[0], v354);
                  }

                  if ((~v354 & 0xFF00) != 0)
                  {
                    SCNMTLRenderCommandEncoder::setFragmentBuffer(v351, v352, v353, v354 >> 8);
                  }

                  v339 = v401.i64[0];
                  v338 = v402.i64[0];
                }
              }
            }

            else
            {
              if (![v341 bindBlock])
              {
                v356 = scn_default_log(0, v355);
                if (os_log_type_enabled(v356, OS_LOG_TYPE_FAULT))
                {
                  [(SCNMTLRenderContext *)&v466 _executeDrawCommand:v356];
                }
              }

              bindBlock3 = [v341 bindBlock];
              (*(bindBlock3 + 16))(bindBlock3, v341, selfCopy);
            }

            ++v340;
          }

          while (v340 != v338);
          v338 = [v403.i64[0] countByEnumeratingWithState:&v418 objects:v459 count:16];
        }

        while (v338);
      }
    }

    v364 = v394;
    if (v388 != v386)
    {
      v365 = selfCopy->_renderEncoder;
      buffer = selfCopy->_sceneUniforms.buffer;
      offset = selfCopy->_sceneUniforms.offset;
      sceneBuffer = selfCopy->_cache.renderPipeline->_sceneBuffer;
      if (sceneBuffer.vertexIndex != -1)
      {
        SCNMTLRenderCommandEncoder::setVertexBuffer(selfCopy->_renderEncoder, selfCopy->_sceneUniforms.buffer, selfCopy->_sceneUniforms.offset, sceneBuffer.vertexIndex);
      }

      if ((~*&sceneBuffer & 0xFF00) != 0)
      {
        SCNMTLRenderCommandEncoder::setFragmentBuffer(v365, buffer, offset, *&sceneBuffer >> 8);
      }
    }

    stats = v443;
    if (v364 && v443 <= 1)
    {
      v370 = *&selfCopy->_nodeUniforms.probeCacheIndex;
      v371 = *&selfCopy->_anon_31b8[8];
      v372 = vmulq_f32(*&selfCopy->_nodeUniforms.instanceNode, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v371, v371, 0xCuLL), v371, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v370, v370), v370, 0xCuLL))), vextq_s8(vuzp1q_s32(v371, v371), v371, 0xCuLL), vextq_s8(vextq_s8(v370, v370, 0xCuLL), v370, 8uLL)));
      v373 = (v372.f32[2] + vaddv_f32(*v372.f32)) > 0.0;
      v374 = selfCopy->_renderEncoder;
      v375 = v385;
      v376 = HIDWORD(v382);
      if (v374->var0)
      {
        v373 = *(&xmmword_21C2816A0 + v373);
      }

      if (v374->var1 == v373)
      {
        goto LABEL_403;
      }
    }

    else
    {
      v374 = selfCopy->_renderEncoder;
      v373 = !v374->var0;
      v375 = v385;
      v376 = HIDWORD(v382);
      if (v374->var1 == v373)
      {
LABEL_403:
        if (v376)
        {
          [SCNMTLRenderContext _setMeshBuffers:?];
          stats = v443;
        }

        if (stats <= 1)
        {
          stats = [(SCNMTLResourceManager *)selfCopy->_cache.metalMeshElement stats];
        }

        if (v375)
        {
          if (stats <= 1)
          {
            v377 = 1;
          }

          else
          {
            v377 = stats;
          }

          v378 = commandCopy[9].i8[5] & 7;
          v379 = selfCopy->_renderEncoder;
          v380 = *v384;
          v402 = *(v399 + 363);
          v403 = v380;
          SCNMTLRenderCommandEncoder::_bindPendingTextures(v379, v231);
          SCNMTLRenderCommandEncoder::applyChangedStates(v379);
          v447 = v403;
          v448 = v402;
          v449.i64[0] = v377;
          v449.i64[1] = selfCopy;
          v450.i8[0] = v378;
          *(v450.i32 + 1) = 0;
          v450.i32[1] = 0;
          [(SCNMTLTessellator *)v383 draw:&v447];
        }

        else
        {
          [(SCNMTLRenderContext *)selfCopy _drawMeshElement:stats instanceCount:?];
        }

        return;
      }
    }

    v374->var1 = v373;
    v374->var5 = 1;
    goto LABEL_403;
  }

  selfCopy->_cache.renderPipeline = 0;
  selfCopy->_cache.program = 0;
  if (v209)
  {
    if (var1)
    {
      [(SCNMTLRenderContext *)selfCopy _prepareMaterialTextures:?];
    }
  }

  else if (([SCNMTLRenderContext _executeDrawCommand:]::done & 1) == 0)
  {
    [SCNMTLRenderContext _executeDrawCommand:]::done = 1;
    v276 = scn_default_log(0, v220);
    if (os_log_type_enabled(v276, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLRenderContext _executeDrawCommand:];
    }
  }
}

uint64_t __43__SCNMTLRenderContext__executeDrawCommand___block_invoke(uint64_t result, uint64_t a2)
{
  v2 = result;
  *(*(result + 32) + 14048) = a2;
  if (a2)
  {
    WorldTransformPtr = C3DTransformTreeGetWorldTransformPtr(*(*(result + 32) + 2264), *(a2 + 88));
    v6 = WorldTransformPtr[1];
    v7 = WorldTransformPtr[2];
    v8 = WorldTransformPtr[3];
    v9 = *(v2 + 32);
    v9[794] = *WorldTransformPtr;
    v9[795] = v6;
    v9[796] = v7;
    v9[797] = v8;
    v10 = *(v2 + 48);
    if (v10)
    {
      *&v11 = C3DSkinnerAdjustTransformIfUsesNodeTransformCalculationMode(v10, *(v2 + 72), *(*(v2 + 32) + 12704), *(*(v2 + 32) + 12720), *(*(v2 + 32) + 12736), *(*(v2 + 32) + 12752));
      v12 = *(v2 + 32);
      v12[794] = v11;
      v12[795] = v13;
      v12[796] = v14;
      v12[797] = v15;
    }

    result = C3DNodeGetLastFrameWorldMatrix(a2, v5);
    v16 = *(result + 16);
    v17 = *(result + 32);
    v18 = *(result + 48);
    v19 = *(v2 + 32);
    v19[798] = *result;
    v19[799] = v16;
    v19[800] = v17;
    v19[801] = v18;
  }

  else
  {
    v20 = *(MEMORY[0x277D860B8] + 16);
    v21 = *(MEMORY[0x277D860B8] + 32);
    v22 = *(MEMORY[0x277D860B8] + 48);
    v23 = *(result + 32);
    v23[794] = *MEMORY[0x277D860B8];
    v23[795] = v20;
    v23[796] = v21;
    v23[797] = v22;
    v24 = *(result + 32);
    v24[801] = v24[797];
    v24[800] = v24[796];
    v24[799] = v24[795];
    v24[798] = v24[794];
  }

  *(*(v2 + 32) + 14056) = 0;
  *(*(v2 + 32) + 14064) = *(v2 + 56);
  if (*(v2 + 76))
  {
    v25 = 0;
    do
    {
      result = [*(v2 + 40) semanticsCount];
      if (result >= 1)
      {
        v26 = 0;
        for (i = 0; i < result; ++i)
        {
          (*(*(*(*(v2 + 40) + 48) + v26) + 16))();
          result = [*(v2 + 40) semanticsCount];
          v26 += 16;
        }
      }

      ++v25;
    }

    while (v25 < *(v2 + 76));
  }

  return result;
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a4 + 12704);
  v5 = *(a4 + 12720);
  v6 = *(a4 + 12752);
  *(a2 + 32) = *(a4 + 12736);
  *(a2 + 48) = v6;
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v6 = *(a4 + 14056);
  if ((v6 & 2) == 0)
  {
    *(a4 + 14056) = v6 | 2;
    if (a6)
    {
      v7 = 0;
      v8 = *(a4 + 12704);
      v9 = *(a4 + 12720);
      v10 = *(a4 + 12736);
      v11 = *(a4 + 12752);
      do
      {
        v12 = 0;
        v13 = (a4 + 2288 + 704 * v7);
        v14 = *v13;
        v15 = v13[1];
        v16 = v13[2];
        v17 = v13[3];
        v26[0] = v8;
        v26[1] = v9;
        v26[2] = v10;
        v26[3] = v11;
        do
        {
          v27[v12] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(v26[v12])), v15, *&v26[v12], 1), v16, v26[v12], 2), v17, v26[v12], 3);
          ++v12;
        }

        while (v12 != 4);
        v18 = v27[1];
        v19 = v27[2];
        v20 = v27[3];
        v21 = (a4 + 13216 + (v7 << 6));
        *v21 = v27[0];
        v21[1] = v18;
        v21[2] = v19;
        v21[3] = v20;
        ++v7;
      }

      while (v7 != a6);
    }
  }

  v22 = a4 + (a5 << 6);
  result = *(v22 + 13216);
  v24 = *(v22 + 13232);
  v25 = *(v22 + 13264);
  *(a2 + 32) = *(v22 + 13248);
  *(a2 + 48) = v25;
  *a2 = result;
  *(a2 + 16) = v24;
  return result;
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_4(uint64_t result, void *a2, int a3, uint64_t a4)
{
  if (a3 != 8)
  {
    v6 = scn_default_log(result, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __39__SCNMTLRenderContext_registerBindings__block_invoke_4_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  *a2 = *(a4 + 14080);
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_148(uint64_t a1, simd_float4x4 *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v6 = *(a4 + 14056);
  if ((v6 & 2) == 0)
  {
    *(a4 + 14056) = v6 | 2;
    if (a6)
    {
      v7 = 0;
      v8 = *(a4 + 12704);
      v9 = *(a4 + 12720);
      v10 = *(a4 + 12736);
      v11 = *(a4 + 12752);
      do
      {
        v12 = 0;
        v13 = (a4 + 2288 + 704 * v7);
        v14 = *v13;
        v15 = v13[1];
        v16 = v13[2];
        v17 = v13[3];
        v22[0] = v8;
        v22[1] = v9;
        v22[2] = v10;
        v22[3] = v11;
        do
        {
          v23[v12] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(v22[v12])), v15, *&v22[v12], 1), v16, v22[v12], 2), v17, v22[v12], 3);
          ++v12;
        }

        while (v12 != 4);
        v18 = v23[1];
        v19 = v23[2];
        v20 = v23[3];
        v21 = (a4 + 13216 + (v7 << 6));
        *v21 = v23[0];
        v21[1] = v18;
        v21[2] = v19;
        v21[3] = v20;
        ++v7;
      }

      while (v7 != a6);
    }
  }

  *a2 = __invert_f4(*(a4 + (a5 << 6) + 13216));
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_2_154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = *(a4 + 14056);
  if ((v6 & 1) == 0)
  {
    *(a4 + 14056) = v6 | 1;
    if ((v6 & 2) == 0)
    {
      *(a4 + 14056) = v6 | 3;
      if (!a6)
      {
        goto LABEL_11;
      }

      v7 = 0;
      v8 = *(a4 + 12704);
      v9 = *(a4 + 12720);
      v10 = *(a4 + 12736);
      v11 = *(a4 + 12752);
      do
      {
        v12 = 0;
        v13 = (a4 + 2288 + 704 * v7);
        v14 = *v13;
        v15 = v13[1];
        v16 = v13[2];
        v17 = v13[3];
        v44[0] = v8;
        v44[1] = v9;
        v44[2] = v10;
        v44[3] = v11;
        do
        {
          v45[v12] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(v44[v12])), v15, *&v44[v12], 1), v16, v44[v12], 2), v17, v44[v12], 3);
          ++v12;
        }

        while (v12 != 4);
        v18 = v45[1];
        v19 = v45[2];
        v20 = v45[3];
        v21 = (a4 + 13216 + (v7 << 6));
        *v21 = v45[0];
        v21[1] = v18;
        v21[2] = v19;
        v21[3] = v20;
        ++v7;
      }

      while (v7 != a6);
    }

    if (a6)
    {
      v22 = a4 + 12832;
      v23 = a6;
      __asm { FMOV            V0.4S, #1.0 }

      do
      {
        v29 = *(v22 + 384);
        v30 = *(v22 + 400);
        v31 = *(v22 + 416);
        v32 = *(v22 + 432);
        v33 = vmulq_f32(v29, v29);
        v34 = vmulq_f32(v30, v30);
        v35 = vmulq_f32(v31, v31);
        v36 = vzip2q_s32(v33, v35);
        v37 = vzip1q_s32(vzip1q_s32(v33, v35), v34);
        v38 = vtrn2q_s32(v33, v34);
        v38.i32[2] = v35.i32[1];
        v39 = vdivq_f32(_Q0, vaddq_f32(vzip1q_s32(v36, vdupq_laneq_s32(v34, 2)), vaddq_f32(v37, v38)));
        *v22 = vmulq_n_f32(v29, v39.f32[0]);
        *(v22 + 16) = vmulq_lane_f32(v30, *v39.f32, 1);
        *(v22 + 32) = vmulq_laneq_f32(v31, v39, 2);
        *(v22 + 48) = v32;
        v22 += 64;
        --v23;
      }

      while (v23);
    }
  }

LABEL_11:
  v40 = a4 + (a5 << 6);
  result = *(v40 + 12832);
  v42 = *(v40 + 12848);
  v43 = *(v40 + 12880);
  *(a2 + 32) = *(v40 + 12864);
  *(a2 + 48) = v43;
  *a2 = result;
  *(a2 + 16) = v42;
  return result;
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_3_160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v6 = *(a4 + 14056);
  if ((v6 & 4) == 0)
  {
    *(a4 + 14056) = v6 | 4;
    if (a6)
    {
      v7 = 0;
      v8 = *(a4 + 12704);
      v9 = *(a4 + 12720);
      v10 = *(a4 + 12736);
      v11 = *(a4 + 12752);
      do
      {
        v12 = 0;
        v13 = (a4 + 2288 + 704 * v7);
        v14 = v13[12];
        v15 = v13[13];
        v16 = v13[14];
        v17 = v13[15];
        v26[0] = v8;
        v26[1] = v9;
        v26[2] = v10;
        v26[3] = v11;
        do
        {
          v27[v12] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(v26[v12])), v15, *&v26[v12], 1), v16, v26[v12], 2), v17, v26[v12], 3);
          ++v12;
        }

        while (v12 != 4);
        v18 = v27[1];
        v19 = v27[2];
        v20 = v27[3];
        v21 = (a4 + 13600 + (v7 << 6));
        *v21 = v27[0];
        v21[1] = v18;
        v21[2] = v19;
        v21[3] = v20;
        ++v7;
      }

      while (v7 != a6);
    }
  }

  v22 = a4 + (a5 << 6);
  result = *(v22 + 13600);
  v24 = *(v22 + 13616);
  v25 = *(v22 + 13648);
  *(a2 + 32) = *(v22 + 13632);
  *(a2 + 48) = v25;
  *a2 = result;
  *(a2 + 16) = v24;
  return result;
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_4_166(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a4 + 12768);
  v5 = *(a4 + 12784);
  v6 = *(a4 + 12816);
  *(a2 + 32) = *(a4 + 12800);
  *(a2 + 48) = v6;
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

float __39__SCNMTLRenderContext_registerBindings__block_invoke_5(uint64_t a1, float *a2, uint64_t a3, uint64_t a4)
{
  result = *(a4 + 2744);
  *a2 = result;
  return result;
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_6(uint64_t a1, simd_float4x4 *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v6 = *(a4 + 14056);
  if ((v6 & 4) == 0)
  {
    *(a4 + 14056) = v6 | 4;
    if (a6)
    {
      v7 = 0;
      v8 = *(a4 + 12704);
      v9 = *(a4 + 12720);
      v10 = *(a4 + 12736);
      v11 = *(a4 + 12752);
      do
      {
        v12 = 0;
        v13 = (a4 + 2288 + 704 * v7);
        v14 = v13[12];
        v15 = v13[13];
        v16 = v13[14];
        v17 = v13[15];
        v22[0] = v8;
        v22[1] = v9;
        v22[2] = v10;
        v22[3] = v11;
        do
        {
          v23[v12] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(v22[v12])), v15, *&v22[v12], 1), v16, v22[v12], 2), v17, v22[v12], 3);
          ++v12;
        }

        while (v12 != 4);
        v18 = v23[1];
        v19 = v23[2];
        v20 = v23[3];
        v21 = (a4 + 13600 + (v7 << 6));
        *v21 = v23[0];
        v21[1] = v18;
        v21[2] = v19;
        v21[3] = v20;
        ++v7;
      }

      while (v7 != a6);
    }
  }

  *a2 = __invert_f4(*(a4 + (a5 << 6) + 13600));
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4)
{
  C3DNodeGetLocalBoundingBox(a4[878].i64[0], &v8);
  v6 = vaddq_f32(v8, v9);
  a4[874] = vsubq_f32(v8, v9);
  a4[875] = v6;
  result = a4[875];
  *a2 = a4[874];
  *(a2 + 16) = result;
  return result;
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4)
{
  C3DNodeGetLocalBoundingBox(a4[878].i64[0], &v13);
  v6 = a4[794];
  v7 = a4[795];
  v8 = a4[796];
  v9 = v14;
  v9.i32[1] = v14.i32[0];
  v10 = vaddq_f32(a4[797], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v7, *v13.f32, 1), v6, v13.f32[0]), v8, v13, 2));
  v9.i32[2] = v14.i32[0];
  v11 = vaddq_f32(vaddq_f32(vabsq_f32(vmulq_f32(v6, v9)), vabsq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*v14.i8, 1), v14), v7))), vabsq_f32(vmulq_f32(vzip2q_s32(vtrn1q_s32(v14, v14), v14), v8)));
  a4[876] = vsubq_f32(v10, v11);
  a4[877] = vaddq_f32(v10, v11);
  result = a4[877];
  *a2 = a4[876];
  *(a2 + 16) = result;
  return result;
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_9(uint64_t a1, float *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 14048);
  if (v5)
  {
    C3DNodeGetWorldAlpha(v5, a2);
  }

  else
  {
    v6 = 1.0;
  }

  *a2 = v6;
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  LightProbesSystem = C3DLightingSystemGetLightProbesSystem(*(a4 + 2224), a2);
  SphericalHarmonicsOrder = C3DLightProbesSystemGetSphericalHarmonicsOrder(LightProbesSystem);
  if (SphericalHarmonicsOrder == 3)
  {
    if (C3DNodeGetMovability(*(a4 + 14048), v9) || !C3DNodeGetLocalBoundingBox(*(a4 + 14048), &v39))
    {
      C3DLightProbesQuerySH3(LightProbesSystem, *(a4 + 14064), &v41, *(a4 + 12752));
    }

    else
    {
      v22 = *(a4 + 12704);
      v23 = *(a4 + 12720);
      v24 = *(a4 + 12736);
      v25 = vaddq_f32(*(a4 + 12752), vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v23, *v39.f32, 1), v22, v39.f32[0]), v24, v39, 2));
      v25.i32[3] = 1.0;
      v26 = v40;
      v26.i32[1] = v40.i32[0];
      v26.i32[2] = v40.i32[0];
      C3DLightProbesQueryBoxSH3(LightProbesSystem, *(a4 + 14064), &v41, v25, vaddq_f32(vaddq_f32(vabsq_f32(vmulq_f32(v22, v26)), vabsq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*v40.i8, 1), v40), v23))), vabsq_f32(vmulq_f32(vzip2q_s32(vtrn1q_s32(v40, v40), v40), v24))));
    }

    if (a3 != 112)
    {
      v29 = scn_default_log(v27, v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        __39__SCNMTLRenderContext_registerBindings__block_invoke_10_cold_1(v29, v30, v31, v32, v33, v34, v35, v36);
      }
    }

    v37 = v46;
    *(a2 + 64) = v45;
    *(a2 + 80) = v37;
    *(a2 + 96) = v47;
    v38 = v42;
    *a2 = v41;
    *(a2 + 16) = v38;
    result = v44;
    *(a2 + 32) = v43;
    *(a2 + 48) = result;
  }

  else if (SphericalHarmonicsOrder == 2)
  {
    C3DLightProbesQuerySH2(LightProbesSystem, *(a4 + 14064), &v41, *(a4 + 12752));
    if (a3 != 48)
    {
      v13 = scn_default_log(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        __39__SCNMTLRenderContext_registerBindings__block_invoke_10_cold_1(v13, v14, v15, v16, v17, v18, v19, v20);
      }
    }

    v21 = v42;
    *a2 = v41;
    *(a2 + 16) = v21;
    result.n128_u64[0] = v43;
    *(a2 + 32) = v43;
  }

  return result;
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 9);
  v6 = *(a2 + 10);
  v7 = [*(a3 + 15232) bufferAtIndices:*(a2 + 9)];
  if ([v7 buffer])
  {
    v8 = *(a2 + 16);
    if (v8)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v26 objects:v33 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v27;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(a3 + 248) + 3392) useResource:*(*(&v26 + 1) + 8 * i) usage:4];
          }

          v10 = [v8 countByEnumeratingWithState:&v26 objects:v33 count:16];
        }

        while (v10);
      }
    }

    v13 = *(a3 + 248);
    v14 = [v7 buffer];
    v15 = [v7 offset];
    v16 = *(a2 + 9);
    if (v16 != 0xFF)
    {
      SCNMTLRenderCommandEncoder::setVertexBuffer(v13, v14, v15, v16);
    }

    if ((~v16 & 0xFF00) != 0)
    {
      v17 = v16 >> 8;
      v18 = v13;
      v19 = v14;
      v20 = v15;
LABEL_14:
      SCNMTLRenderCommandEncoder::setFragmentBuffer(v18, v19, v20, v17);
    }
  }

  else if (v5 != -1 && (v21 = *(a3 + 248), !*(v21 + 16 * v5 + 80)) || v6 != -1 && (v21 = *(a3 + 248), !*(v21 + 16 * v6 + 1728)))
  {
    v22 = [objc_msgSend(a2 "argument")];
    v23 = *(a2 + 9);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    SCNMTLBufferPool::allocate(&v30, *(v21 + 3400), v22);
    bzero(v30, v22);
    v24 = v31;
    v25 = v32;
    if (v23 != 0xFF)
    {
      SCNMTLRenderCommandEncoder::setVertexBuffer(v21, v31, v32, v23);
    }

    if ((~v23 & 0xFF00) != 0)
    {
      v17 = v23 >> 8;
      v18 = v21;
      v19 = v24;
      v20 = v25;
      goto LABEL_14;
    }
  }
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_2_204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a3 + 15232) textureAtIndices:*(a2 + 9)];
  if (!v5)
  {
    v5 = [*(a3 + 112) defaultTexture];
    Weak = objc_loadWeak((a3 + 15472));
    if (Weak)
    {
      [Weak renderContext:a3 didFallbackToDefaultTextureForSource:a2 message:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Unable to find texture for binding %@ and shadable %@", a2, *(a3 + 15232))}];
    }
  }

  v7 = *(a3 + 248);
  v8 = *(a2 + 9);
  if (v8 != 0xFF)
  {
    SCNMTLRenderCommandEncoder::setVertexTexture(*(a3 + 248), v5, v8);
  }

  if ((~v8 & 0xFF00) != 0)
  {
    SCNMTLRenderCommandEncoder::setFragmentTexture(v7, v5, v8 >> 8);
  }

  v9 = *(a2 + 11);
  v10 = *(a2 + 12);
  if (v10 != 255 || v9 != 255)
  {
    v11 = [*(a3 + 15232) samplerAtIndices:v9 | (v10 << 8)];
    v12 = v11;
    v13 = *(a3 + 248);
    if (v9 != 255 && *(v13 + 1600 + 8 * v9) != v11)
    {
      *(v13 + 1600 + 8 * v9) = v11;
      [*(v13 + 3392) setVertexSamplerState:v11 atIndex:?];
    }

    if (v10 != 255 && *(v13 + 3248 + 8 * v10) != v12)
    {
      *(v13 + 3248 + 8 * v10) = v12;
      v14 = *(v13 + 3392);

      [v14 setFragmentSamplerState:v12 atIndex:?];
    }
  }
}

void *__39__SCNMTLRenderContext_registerBindings__block_invoke_3_210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a3 + 15232) samplerAtIndices:*(a2 + 9)];
  v6 = result;
  v7 = *(a3 + 248);
  v8 = *(a2 + 9);
  if (v8 != 0xFF && *(v7 + 1600 + 8 * v8) != result)
  {
    *(v7 + 1600 + 8 * v8) = result;
    result = [*(v7 + 3392) setVertexSamplerState:result atIndex:?];
  }

  if ((~v8 & 0xFF00) != 0)
  {
    v9 = v8 >> 8;
    if (*(v7 + 3248 + 8 * v9) != v6)
    {
      *(v7 + 3248 + 8 * v9) = v6;
      v10 = *(v7 + 3392);

      return [v10 setFragmentSamplerState:v6 atIndex:?];
    }
  }

  return result;
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_4_216(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 248);
  v4 = *(a3 + 14856);
  v5 = *(a3 + 14864);
  v6 = *(a2 + 9);
  if (*(a2 + 9) != 0xFF)
  {
    SCNMTLRenderCommandEncoder::setVertexBuffer(*(a3 + 248), *(a3 + 14856), *(a3 + 14864), v6);
  }

  if ((~v6 & 0xFF00) != 0)
  {

    SCNMTLRenderCommandEncoder::setFragmentBuffer(v3, v4, v5, v6 >> 8);
  }
}

id *__39__SCNMTLRenderContext_registerBindings__block_invoke_5_222(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a3 + 14872);
  v3 = *(a2 + 9);
  v4 = *(a3 + 248);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  result = SCNMTLBufferPool::allocateAndCopy(&v9, *(v4 + 3400), &v8, 4uLL);
  v6 = v10;
  v7 = v11;
  if (v3 != 0xFF)
  {
    result = SCNMTLRenderCommandEncoder::setVertexBuffer(v4, v10, v11, v3);
  }

  if ((~v3 & 0xFF00) != 0)
  {
    return SCNMTLRenderCommandEncoder::setFragmentBuffer(v4, v6, v7, v3 >> 8);
  }

  return result;
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_6_228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LightProbesSystem = C3DLightingSystemGetLightProbesSystem(*(a3 + 2224), a2);
  SphericalHarmonicsOrder = C3DLightProbesSystemGetSphericalHarmonicsOrder(LightProbesSystem);
  if (SphericalHarmonicsOrder != 3)
  {
    v8 = scn_default_log(SphericalHarmonicsOrder, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __39__SCNMTLRenderContext_registerBindings__block_invoke_6_228_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  SCNMTLBufferPool::allocate(&v20, *(a3 + 2088), 112);
  C3DLightProbesQuerySH3(LightProbesSystem, *(a3 + 14064), v20, *(a3 + 12752));
  v16 = *(a3 + 248);
  v17 = v21;
  v18 = v22;
  v19 = *(a2 + 9);
  if (v19 != 0xFF)
  {
    SCNMTLRenderCommandEncoder::setVertexBuffer(v16, v21, v22, v19);
  }

  if ((~v19 & 0xFF00) != 0)
  {
    SCNMTLRenderCommandEncoder::setFragmentBuffer(v16, v17, v18, v19 >> 8);
  }
}

id *__39__SCNMTLRenderContext_registerBindings__block_invoke_238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __asm { FMOV            V0.4S, #1.0 }

  v22 = _Q0;
  v10 = *(a3 + 15192);
  if (v10)
  {
    v11 = *(a3 + 2900) * *(a3 + 2436);
    *&v18 = C3DMeshElementGetPointSize(v10) * v11;
    MinimumPointScreenRadius = C3DMeshElementGetMinimumPointScreenRadius(*(a3 + 15192));
    DWORD2(v22) = C3DMeshElementGetMaximumPointScreenRadius(*(a3 + 15192));
    *&v22 = __PAIR64__(LODWORD(MinimumPointScreenRadius), v18);
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  result = SCNMTLBufferPool::allocateAndCopy(&v19, *(a3 + 2088), &v22, 0x10uLL);
  v13 = *(a3 + 248);
  v14 = v20;
  v15 = v21;
  v16 = *(a2 + 9);
  if (v16 != 0xFF)
  {
    result = SCNMTLRenderCommandEncoder::setVertexBuffer(v13, v20, v21, v16);
  }

  if ((~v16 & 0xFF00) != 0)
  {
    return SCNMTLRenderCommandEncoder::setFragmentBuffer(v13, v14, v15, v16 >> 8);
  }

  return result;
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_2_244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 248);
  v4 = *(a3 + 14760);
  v5 = *(a2 + 9);
  if (*(a2 + 9) != 0xFF)
  {
    SCNMTLRenderCommandEncoder::setVertexTexture(v3, v4, v5);
  }

  if ((~v5 & 0xFF00) != 0)
  {

    SCNMTLRenderCommandEncoder::setFragmentTexture(v3, v4, v5 >> 8);
  }
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_3_250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 248);
  v4 = *(a3 + 14768);
  v5 = *(a2 + 9);
  if (*(a2 + 9) != 0xFF)
  {
    SCNMTLRenderCommandEncoder::setVertexTexture(v3, v4, v5);
  }

  if ((~v5 & 0xFF00) != 0)
  {

    SCNMTLRenderCommandEncoder::setFragmentTexture(v3, v4, v5 >> 8);
  }
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_4_256(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a3 + 112) areaLightPrecomputedDataTexture];
  v6 = *(a3 + 248);
  v7 = *(a2 + 9);
  if (v7 != 0xFF)
  {
    SCNMTLRenderCommandEncoder::setVertexTexture(v6, v5, v7);
  }

  if ((~v7 & 0xFF00) != 0)
  {

    SCNMTLRenderCommandEncoder::setFragmentTexture(v6, v5, v7 >> 8);
  }
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_5_262(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 2208);
  if (!v5)
  {
    if ((*(a3 + 152) & 0x40) != 0)
    {
      v6 = 1.0;
    }

    else
    {
      v6 = -1.0;
    }

    C3DSetupHaltonFilterKernelConic(v9, 32, 1.0, 1.0, v6);
    v5 = [*(a3 + 120) newBufferWithBytes:v9 length:512 options:0];
    *(a3 + 2208) = v5;
  }

  v7 = *(a3 + 248);
  v8 = *(a2 + 9);
  if (v8 != 0xFF)
  {
    SCNMTLRenderCommandEncoder::setVertexBuffer(v7, v5, 0, v8);
  }

  if ((~v8 & 0xFF00) != 0)
  {
    SCNMTLRenderCommandEncoder::setFragmentBuffer(v7, v5, 0, v8 >> 8);
  }
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_6_265(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(*(a4 + 15240), a2, 0);
  if (EffectSlot)
  {
    v7 = [*(a4 + 112) renderResourceForEffectSlot:EffectSlot withEngineContext:*(a4 + 144) didFallbackToDefaultTexture:0];
    v34 = v7;
    TextureSampler = C3DEffectSlotGetTextureSampler(EffectSlot, v8);
    v11 = TextureSampler;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = 0;
  }

  v7 = [*(a4 + 112) defaultTexture];
  v34 = v7;
  if (!v7)
  {
    v13 = scn_default_log(0, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextApplyTextureSampler_cold_1(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  TextureSampler = objc_loadWeak((a4 + 15472));
  if (TextureSampler)
  {
    TextureSampler = [TextureSampler renderContext:a4 didFallbackToDefaultTextureForSource:a3 message:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Unable to find texture for binding %@ and effect slot %@", a3, EffectSlot)}];
  }

LABEL_10:
  if (!v11)
  {
    C3DTextureSamplerGetDefault(TextureSampler, v10);
  }

  v21 = *(a3 + 11);
  v22 = *(a3 + 12);
  if ([v7 pixelFormat] == 520 || objc_msgSend(v7, "pixelFormat") == 500)
  {
    v23 = [SCNMTLResourceManager renderResourceForSampler:?];
    v25 = v23;
    v26 = *(*(a4 + 248) + 3392);
    if (*(a3 + 9) != 255)
    {
      v27 = scn_default_log(v23, v24);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        __39__SCNMTLRenderContext_registerBindings__block_invoke_6_265_cold_2();
      }
    }

    if (*(a3 + 10) != 255)
    {
      SCNMTLEnsureIOSurfaceBackingBufferValidity(*(a4 + 240), &v34, 1u);
      [v26 setFragmentTexture:v34 atTextureIndex:*(a3 + 10) samplerState:v25 atSamplerIndex:v22];
    }
  }

  else
  {
    v28 = *(a4 + 248);
    v29 = *(a3 + 9);
    if (v29 != 0xFF)
    {
      SCNMTLRenderCommandEncoder::setVertexTexture(*(a4 + 248), v7, v29);
    }

    if ((~v29 & 0xFF00) != 0)
    {
      SCNMTLRenderCommandEncoder::setFragmentTexture(v28, v7, v29 >> 8);
    }

    if (v22 != -1 || v21 != -1)
    {
      v31 = [SCNMTLResourceManager renderResourceForSampler:?];
      v32 = v31;
      v33 = *(a4 + 248);
      if (v21 != -1 && *(v33 + 1600 + 8 * v21) != v31)
      {
        *(v33 + 1600 + 8 * v21) = v31;
        [*(v33 + 3392) setVertexSamplerState:v31 atIndex:v21];
      }

      if (v22 != -1 && *(v33 + 3248 + 8 * v22) != v32)
      {
        *(v33 + 3248 + 8 * v22) = v32;
        [*(v33 + 3392) setFragmentSamplerState:v32 atIndex:v22];
      }
    }
  }
}

uint64_t __39__SCNMTLRenderContext_registerBindings__block_invoke_275(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 40) == 1)
  {
    C3DEffectCommonProfileIsUsingAmbientOcclusion(*(a3 + 15240));
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_3_283(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 32);
  if ((*(a3 + 152) & 0x20) != 0)
  {
    v4 = a3 + 8 * *(a3 + v3 + 14080);
    v5 = 6552;
  }

  else
  {
    v4 = a3 + 8 * v3;
    v5 = 14880;
  }

  v6 = *(v4 + v5);
  if (v6)
  {
    v7 = *(a3 + 248);
    v8 = *(a2 + 9);
    if (*(a2 + 9) != 0xFF)
    {
      SCNMTLRenderCommandEncoder::setVertexTexture(v7, v6, v8);
    }

    if ((~v8 & 0xFF00) != 0)
    {

      SCNMTLRenderCommandEncoder::setFragmentTexture(v7, v6, v8 >> 8);
    }
  }
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_4_285(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result[4];
  if ((*(a3 + 152) & 0x20) != 0)
  {
    v9 = a3 + 8 * *(a3 + v5 + 14080);
    v7 = *(v9 + 8600);
    v8 = *(v9 + 10648);
  }

  else
  {
    v6 = a3 + 8 * v5;
    v7 = *(v6 + 14944);
    if (v7)
    {
      v8 = *(v6 + 15008);
      goto LABEL_9;
    }

    v7 = [*(a3 + 112) defaultTexture];
    v23 = *(a3 + 112);
    C3DTextureSamplerGetDefault(v7, v24);
    v8 = [SCNMTLResourceManager renderResourceForSampler:v23];
    result = objc_loadWeak((a3 + 15472));
    if (result)
    {
      result = [result renderContext:a3 didFallbackToDefaultTextureForSource:a2 message:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Unable to find IES or gobo texture for binding %@", a2)}];
    }
  }

  if (!v7)
  {
    v10 = scn_default_log(result, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextApplyTextureSampler_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    v7 = 0;
  }

LABEL_9:
  v18 = *(a3 + 248);
  v19 = *(a2 + 9);
  if (*(a2 + 9) != 0xFF)
  {
    SCNMTLRenderCommandEncoder::setVertexTexture(*(a3 + 248), v7, v19);
  }

  if ((~v19 & 0xFF00) != 0)
  {
    SCNMTLRenderCommandEncoder::setFragmentTexture(v18, v7, v19 >> 8);
  }

  v20 = *(a2 + 11);
  v21 = *(a2 + 12);
  if (v21 != -1 || v20 != 255)
  {
    v22 = *(a3 + 248);
    if (v20 != -1 && *(v22 + 1600 + 8 * v20) != v8)
    {
      *(v22 + 1600 + 8 * v20) = v8;
      [*(v22 + 3392) setVertexSamplerState:v8 atIndex:?];
    }

    if (v21 != -1 && *(v22 + 3248 + 8 * v21) != v8)
    {
      *(v22 + 3248 + 8 * v21) = v8;
      [*(v22 + 3392) setFragmentSamplerState:v8 atIndex:v21];
    }
  }
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_301(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8 * *(a1 + 32) + 14336);
  result = *v4;
  *a2 = *v4;
  return result;
}

uint64_t __39__SCNMTLRenderContext_registerBindings__block_invoke_2_306(uint64_t result, float32x4_t *a2, uint64_t a3, float32x4_t *a4)
{
  if (a4[908].i8[0] == 1)
  {
    v4 = *(a4[896].i64[*(result + 32)] + 16);
    v5 = vaddq_f32(a4[903], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4[900], v4.f32[0]), a4[901], *v4.f32, 1), a4[902], v4, 2));
  }

  else
  {
    v5 = *(a4[896].i64[*(result + 32)] + 16);
  }

  *a2 = v5;
  return result;
}

uint64_t __39__SCNMTLRenderContext_registerBindings__block_invoke_3_310(uint64_t result, float32x4_t *a2, uint64_t a3, float32x4_t *a4)
{
  if (a4[908].i8[0] == 1)
  {
    v4 = *(a4[896].i64[*(result + 32)] + 32);
    v5 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4[900], v4.f32[0]), a4[901], *v4.f32, 1), a4[902], v4, 2), 0, a4[903]);
  }

  else
  {
    v5 = *(a4[896].i64[*(result + 32)] + 32);
  }

  *a2 = v5;
  return result;
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_4_314(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  result = *(*(a4 + 8 * *(a1 + 32) + 14336) + 64);
  *a2 = result;
  return result;
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_5_318(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  result = *(*(a4 + 8 * *(a1 + 32) + 14336) + 48);
  *a2 = result;
  return result;
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_6_322(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8 * *(a1 + 32) + 14336);
  result = *(v4 + 128);
  v6 = *(v4 + 144);
  v7 = *(v4 + 160);
  v8 = *(v4 + 176);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_7_326(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  result = *(*(a4 + 8 * *(a1 + 32) + 14336) + 80);
  *a2 = result;
  return result;
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_8_330(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  result = *(*(a4 + 8 * *(a1 + 32) + 14336) + 96);
  *a2 = result;
  return result;
}

void *__39__SCNMTLRenderContext_registerBindings__block_invoke_9_334(uint64_t a1, void *a2, unsigned int a3, simd_float4x4 *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (a3 >= 0x101)
  {
    v8 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __39__SCNMTLRenderContext_registerBindings__block_invoke_9_334_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (a4[227].columns[0].i8[0] == 1)
  {
    for (i = 0; i != 4; ++i)
    {
      v17 = (a4[224].columns[0].i64[*(a1 + 32)] + (i << 6));
      v27 = v17[8];
      v28 = v17[9];
      v25 = v17[11];
      v26 = v17[10];
      v33 = __invert_f4(a4[225]);
      v18 = 0;
      v29 = v33;
      do
      {
        v30[v18] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(*&v29.columns[v18])), v28, *v29.columns[v18].f32, 1), v26, v29.columns[v18], 2), v25, v29.columns[v18], 3);
        ++v18;
      }

      while (v18 != 4);
      v19 = v30[1];
      v20 = v30[2];
      v21 = v30[3];
      v22 = &v31[64 * i];
      *v22 = v30[0];
      v22[1] = v19;
      v22[2] = v20;
      v22[3] = v21;
    }

    v23 = v31;
  }

  else
  {
    v23 = (a4[224].columns[0].i64[*(a1 + 32)] + 128);
  }

  return memcpy(a2, v23, v7);
}

float __39__SCNMTLRenderContext_registerBindings__block_invoke_339(uint64_t a1, float *a2, uint64_t a3, uint64_t a4)
{
  result = *(*(a4 + 8 * *(a1 + 32) + 14336) + 116);
  *a2 = result;
  return result;
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_2_343(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  result = *(*(a4 + 8 * *(a1 + 32) + 14336) + 384);
  *a2 = result;
  return result;
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_3_347(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8 * *(a1 + 32) + 14336);
  result = *(v4 + 128);
  v6 = *(v4 + 144);
  v7 = *(v4 + 160);
  v8 = *(v4 + 176);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_4_351(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  result = *(*(a4 + 8 * *(a1 + 32) + 14336) + 384);
  *a2 = result;
  return result;
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_5_355(id *result, uint64_t a2, void *a3)
{
  v5 = a3[1884];
  v6 = a3[1885];
  v7 = a3[result[4] + 1886];
  if (!v5)
  {
    v8 = scn_default_log(result, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __39__SCNMTLRenderContext_registerBindings__block_invoke_5_355_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = a3[31];
  v17 = *(a2 + 9);
  if (v17 != 0xFF)
  {
    SCNMTLRenderCommandEncoder::setVertexBuffer(v16, v5, v7 + v6, v17);
  }

  if ((~v17 & 0xFF00) != 0)
  {
    SCNMTLRenderCommandEncoder::setFragmentBuffer(v16, v5, (v7 + v6), v17 >> 8);
  }
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a3 + 112) specularDFGDiffuseHammonTextureWithRenderContext:?];
  v6 = *(a3 + 248);
  v7 = *(a2 + 9);
  if (v7 != 0xFF)
  {
    SCNMTLRenderCommandEncoder::setVertexTexture(v6, v5, v7);
  }

  if ((~v7 & 0xFF00) != 0)
  {

    SCNMTLRenderCommandEncoder::setFragmentTexture(v6, v5, v7 >> 8);
  }
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_2_366(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Scene = C3DEngineContextGetScene(*(a3 + 144), a2);
  LightingEnvironmentEffectSlot = C3DSceneGetLightingEnvironmentEffectSlot(Scene, 0);
  if (!LightingEnvironmentEffectSlot || (v8 = LightingEnvironmentEffectSlot, !C3DEffectSlotHasImageOrTexture(LightingEnvironmentEffectSlot, v7)) && !C3DEffectSlotHasPrecomputedLightingEnvironment(v8, v9) || (v10 = [SCNMTLRenderContext radianceTextureForEffectSlot:a3]) == 0)
  {
    if (!C3DEngineContextGetAllowsDefaultLightingEnvironmentFallback(*(a3 + 144), v7) || (v10 = [*(a3 + 112) defaultLightingEnvironmentRadianceTexture]) == 0)
    {
      v10 = [*(a3 + 112) defaultCubeTexture];
    }
  }

  v11 = v10;
  v12 = *(a3 + 248);
  v13 = *(a2 + 9);
  if (v13 != 0xFF)
  {
    SCNMTLRenderCommandEncoder::setVertexTexture(v12, v10, v13);
  }

  if ((~v13 & 0xFF00) != 0)
  {

    SCNMTLRenderCommandEncoder::setFragmentTexture(v12, v11, v13 >> 8);
  }
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_3_372(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Scene = C3DEngineContextGetScene(*(a3 + 144), a2);
  LightingEnvironmentEffectSlot = C3DSceneGetLightingEnvironmentEffectSlot(Scene, 0);
  if (!LightingEnvironmentEffectSlot || (v8 = LightingEnvironmentEffectSlot, !C3DEffectSlotHasImageOrTexture(LightingEnvironmentEffectSlot, v7)) && !C3DEffectSlotHasPrecomputedLightingEnvironment(v8, v9) || (v10 = [SCNMTLRenderContext irradianceTextureForEffectSlot:a3]) == 0)
  {
    if (!C3DEngineContextGetAllowsDefaultLightingEnvironmentFallback(*(a3 + 144), v7) || (v10 = [*(a3 + 112) defaultLightingEnvironmentIrradianceTexture]) == 0)
    {
      v10 = [*(a3 + 112) defaultCubeTexture];
    }
  }

  v11 = v10;
  v12 = *(a3 + 248);
  v13 = *(a2 + 9);
  if (v13 != 0xFF)
  {
    SCNMTLRenderCommandEncoder::setVertexTexture(v12, v10, v13);
  }

  if ((~v13 & 0xFF00) != 0)
  {

    SCNMTLRenderCommandEncoder::setFragmentTexture(v12, v11, v13 >> 8);
  }
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_4_378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 15152);
  v4 = *(a3 + 248);
  v5 = *(a2 + 9);
  if (*(a2 + 9) != 0xFF)
  {
    SCNMTLRenderCommandEncoder::setVertexTexture(v4, v3, v5);
  }

  if ((~v5 & 0xFF00) != 0)
  {

    SCNMTLRenderCommandEncoder::setFragmentTexture(v4, v3, v5 >> 8);
  }
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_5_384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  TextureWithName = C3DEngineContextGetTextureWithName(*(a3 + 144), @"SSAO-Final");
  if (!TextureWithName)
  {
    TextureWithName = [*(a3 + 112) defaultTexture];
    Weak = objc_loadWeak((a3 + 15472));
    if (Weak)
    {
      [Weak renderContext:a3 didFallbackToDefaultTextureForSource:a2 message:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Unable to find SSAO-Final texture in render graph for binding %@", a2)}];
    }
  }

  v7 = *(a3 + 248);
  v8 = *(a2 + 9);
  if (v8 != 0xFF)
  {
    SCNMTLRenderCommandEncoder::setVertexTexture(v7, TextureWithName, v8);
  }

  if ((~v8 & 0xFF00) != 0)
  {

    SCNMTLRenderCommandEncoder::setFragmentTexture(v7, TextureWithName, v8 >> 8);
  }
}

id *__39__SCNMTLRenderContext_registerBindings__block_invoke_6_393(_BOOL8 Name_cold_1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 15264);
  v6 = *(a3 + 15224);
  v7 = *(a3 + 15272);
  if (!v5 && (v8 = scn_default_log(Name_cold_1, a2), Name_cold_1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v8, a2, v9, v10, v11, v12, v13, v14);
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else if (v6)
  {
    goto LABEL_6;
  }

  v15 = scn_default_log(Name_cold_1, a2);
  Name_cold_1 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);
  if (Name_cold_1)
  {
    C3DGeometryGetName_cold_1(v15, a2, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (!v7)
  {
    v22 = scn_default_log(Name_cold_1, a2);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      __39__SCNMTLRenderContext_registerBindings__block_invoke_6_393_cold_3(v22, a2, v23, v24, v25, v26, v27, v28);
    }
  }

  v29 = [*(a3 + 112) renderResourceForDeformerStack:v7 node:v5 dataKind:{C3DGeometryGetEffectiveDataKindForRendering(v6, a2)}];
  result = -[SCNMTLDeformerStack bufferForCommonProfileArgumentNamed:](v29, [a2 name]);
  v31 = result;
  v32 = *(a3 + 248);
  v33 = *(a2 + 9);
  if (v33 != 0xFF)
  {
    result = SCNMTLRenderCommandEncoder::setVertexBuffer(v32, result, 0, v33);
  }

  if ((~v33 & 0xFF00) != 0)
  {
    return SCNMTLRenderCommandEncoder::setFragmentBuffer(v32, v31, 0, v33 >> 8);
  }

  return result;
}

uint64_t __39__SCNMTLRenderContext_registerBindings__block_invoke_405(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = [a2 frequency];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_2_409;
  v9[3] = &unk_2782FD5C8;
  v9[4] = a2;
  return [a4 addResourceBindingsForArgument:a3 frequency:v7 needsRenderResource:0 block:v9];
}

uint64_t __39__SCNMTLRenderContext_registerBindings__block_invoke_2_409(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 1998) = *(a2 + 9);
  v5 = *(a3 + 15264);
  if (v5)
  {
    C3DEntityGetObjCWrapper(v5);
  }

  v6 = *(a3 + 15216);
  if (v6)
  {
    C3DEntityGetObjCWrapper(v6);
  }

  C3DEngineContextGetUserInfo(*(a3 + 144), a2);
  v7 = *([*(a1 + 32) block] + 16);

  return v7();
}

void __53__SCNMTLRenderContext_mapVolatileMesh_verticesCount___block_invoke(uint64_t a1, uint64_t a2)
{
  if (C3DMeshSourceIsVolatile(a2))
  {
    Accessor = C3DMeshSourceGetAccessor(a2, v4, v5, v6, v7, v8, v9, v10);
    C3DSourceAccessorSetCount(Accessor, *(a1 + 32));
    v13 = *(a1 + 40) + C3DSourceAccessorGetOffset(Accessor, v12);

    C3DMeshSourceSetVolatileData(a2, v13);
  }
}

void __63__SCNMTLRenderContext_unmapVolatileMesh_modifiedVerticesCount___block_invoke(uint64_t a1, uint64_t a2)
{
  if (C3DMeshSourceIsVolatile(a2))
  {

    C3DMeshSourceSetVolatileData(a2, 0);
  }
}

- (void)resetVolatileMeshes
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  volatileMeshes = self->_volatileMeshes;
  v4 = [(NSMutableArray *)volatileMeshes countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(volatileMeshes);
        }

        [(SCNMTLMesh *)*(*(&v8 + 1) + 8 * i) setVolatileBuffer:?];
      }

      v5 = [(NSMutableArray *)volatileMeshes countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_volatileMeshes removeAllObjects];
}

- (id)_newMTLBufferFromPoolWithLength:(unint64_t)length
{
  lastObject = [(NSMutableArray *)self->_bufferPool lastObject];
  if (lastObject)
  {
    v6 = lastObject;
    v7 = lastObject;
    [(NSMutableArray *)self->_bufferPool removeLastObject];
  }

  else
  {
    v6 = objc_alloc_init(SCNMTLBuffer);
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  SCNMTLBufferPool::allocate(&v9, self->_frameVolatileBufferPool, length);
  [(SCNMTLBuffer *)v6 setBuffer:v10];
  [(SCNMTLBuffer *)v6 setOffset:v11];
  if (![(SCNMTLBuffer *)v6 buffer])
  {

    return 0;
  }

  return v6;
}

- (void)_recycleMTLBufferToPool:(id)pool
{
  if (!pool)
  {
    v5 = scn_default_log(self, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLRenderContext *)v5 _recycleMTLBufferToPool:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  [(NSMutableArray *)self->_bufferPool addObject:pool];
  [pool setUsedCount:0];
  [pool setBuffer:0];
  [pool setOffset:0];
  [pool setDataSource:0];
}

- (void)resetVolatileMeshElements
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  usedVolatileMeshElements = self->_usedVolatileMeshElements;
  v4 = [(NSMutableArray *)usedVolatileMeshElements countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(usedVolatileMeshElements);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [SCNMTLResourceManager renderResourceForMeshElement:?];
        [(SCNMTLRenderContext *)self _recycleMTLBufferToPool:[(SCNMTLMeshElement *)v9 indexBuffer]];
        [(SCNMTLMeshElement *)v9 setIndexBuffer:?];
        [(SCNMTLMeshElement *)v9 setSharedIndexBufferOffset:?];
        C3DMeshElementSetVolatileDataPtr(v8, 0);
      }

      v5 = [(NSMutableArray *)usedVolatileMeshElements countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_freeVolatileMeshElements addObjectsFromArray:self->_usedVolatileMeshElements];
  [(NSMutableArray *)self->_usedVolatileMeshElements removeAllObjects];
}

- (void)writeBytes:(const void *)bytes length:(unint64_t)length
{
  renderEncoder = self->_renderEncoder;
  currentStreamBufferIndices = self->_currentStreamBufferIndices;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  SCNMTLBufferPool::allocateAndCopy(&v8, renderEncoder->var25[0], bytes, length);
  v6 = v9;
  v7 = v10;
  if (currentStreamBufferIndices.vertexIndex != -1)
  {
    SCNMTLRenderCommandEncoder::setVertexBuffer(renderEncoder, v9, v10, currentStreamBufferIndices.vertexIndex);
  }

  if ((~*&currentStreamBufferIndices & 0xFF00) != 0)
  {
    SCNMTLRenderCommandEncoder::setFragmentBuffer(renderEncoder, v6, v7, *&currentStreamBufferIndices >> 8);
  }
}

- (void)setGeneratedTexturePath:(void *)path
{
  if (path)
  {
    objc_setProperty_nonatomic(path, newValue, newValue, 15568);
  }
}

- (void)setClientCommandBuffer:(void *)buffer
{
  if (buffer)
  {
    objc_setProperty_nonatomic(buffer, newValue, newValue, 15536);
  }
}

- (void)setClientRenderPassDescriptor:(void *)descriptor
{
  if (descriptor)
  {
    objc_setProperty_nonatomic(descriptor, newValue, newValue, 15520);
  }
}

- (void)setClientRenderCommandEncoder:(void *)encoder
{
  if (encoder)
  {
    objc_setProperty_nonatomic(encoder, newValue, newValue, 15528);
  }
}

- (void)setClientCommandQueue:(void *)queue
{
  if (queue)
  {
    objc_setProperty_nonatomic(queue, newValue, newValue, 15560);
  }
}

- (uint64_t)device
{
  if (result)
  {
    return *(result + 120);
  }

  return result;
}

- (uint64_t)engineContext
{
  if (result)
  {
    return *(result + 144);
  }

  return result;
}

- (uint64_t)commandQueue
{
  if (!self)
  {
    return 0;
  }

  if (*(self + 15536))
  {
    return [*(self + 15536) commandQueue];
  }

  v2 = *(self + 15560);
  if (v2)
  {
    return v2;
  }

  v2 = *(self + 160);
  if (v2)
  {
    return v2;
  }

  return [(SCNMTLResourceManager *)*(self + 112) commandQueue];
}

- (float)setPreferredFramesPerSecond:(uint64_t)second
{
  if (second)
  {
    if (!a2)
    {
      a2 = [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
      if (!a2)
      {
        v3 = scn_default_log(0, 0);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          *v6 = 0;
          OUTLINED_FUNCTION_0_2(&dword_21BEF7000, v3, v4, "Unreachable code: setPreferredFramesPerSecond - no screen", v6);
        }

        a2 = 120;
      }
    }

    result = 1.0 / a2;
    *(second + 208) = result;
  }

  return result;
}

- (uint64_t)frameConstantBufferPool
{
  if (result)
  {
    return *(result + 2088);
  }

  return result;
}

- (__n128)setScreenTransform:(uint64_t)transform
{
  if (transform)
  {
    result = *a2;
    v3 = *(a2 + 16);
    v4 = *(a2 + 48);
    *(transform + 64) = *(a2 + 32);
    *(transform + 80) = v4;
    *(transform + 32) = result;
    *(transform + 48) = v3;
  }

  return result;
}

- (uint64_t)profile
{
  if (result)
  {
    return *(result + 132);
  }

  return result;
}

- (void)setWantsWideGamut:(uint64_t)gamut
{
  if (gamut)
  {
    v3 = *(gamut + 152);
    if ((v3 & 1) != a2)
    {
      *(gamut + 152) = v3 & 0xFE | a2;
      Scene = C3DEngineContextGetScene(*(gamut + 144), a2);
      C3DNotificationCenterGetSharedInstance(Scene, v5);
      OUTLINED_FUNCTION_22();

      C3DNotificationCenterPostNotification(v6, v7, v8, v9, v10);
    }
  }
}

- (uint64_t)wantsWideGamut
{
  if (result)
  {
    return *(result + 152) & 1;
  }

  return result;
}

- (void)setDisableLinearRendering:(uint64_t)rendering
{
  if (rendering)
  {
    v3 = *(rendering + 152);
    if (((((v3 & 4) == 0) ^ a2) & 1) == 0)
    {
      if (a2)
      {
        v4 = 4;
      }

      else
      {
        v4 = 0;
      }

      *(rendering + 152) = v3 & 0xFB | v4;
      Scene = C3DEngineContextGetScene(*(rendering + 144), a2);
      C3DNotificationCenterGetSharedInstance(Scene, v6);
      OUTLINED_FUNCTION_22();

      C3DNotificationCenterPostNotification(v7, v8, v9, v10, v11);
    }
  }
}

- (uint64_t)disableLinearRendering
{
  if (result)
  {
    return (*(result + 152) >> 2) & 1;
  }

  return result;
}

- (uint64_t)setEnableARMode:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 152);
    if (((((v2 & 8) == 0) ^ a2) & 1) == 0)
    {
      if (a2)
      {
        v3 = 8;
      }

      else
      {
        v3 = 0;
      }

      *(result + 152) = v2 & 0xF7 | v3;
    }
  }

  return result;
}

- (uint64_t)enableARMode
{
  if (result)
  {
    return (*(result + 152) >> 3) & 1;
  }

  return result;
}

- (uint64_t)setShouldDelegateARCompositing:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 152);
    if (((((v2 & 0x10) == 0) ^ a2) & 1) == 0)
    {
      if (a2)
      {
        v3 = 16;
      }

      else
      {
        v3 = 0;
      }

      *(result + 152) = v2 & 0xEF | v3;
    }
  }

  return result;
}

- (uint64_t)shouldDelegateARCompositing
{
  if (result)
  {
    return (*(result + 152) >> 4) & 1;
  }

  return result;
}

- (void)setReverseZ:(uint64_t)z
{
  if (z)
  {
    if (a2)
    {
      if (C3DReverseZIsSupported())
      {
        v3 = 64;
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v3 = 0;
    }

    *(z + 152) = *(z + 152) & 0xBF | v3;
    C3DEngineContextSetCoordinatesSystemOptions(*(z + 144), 8, v3 != 0);
    v4 = *(z + 112);

    [(SCNMTLResourceManager *)v4 resetRasterizerStates];
  }
}

- (void)setIsOpaque:(uint64_t)opaque
{
  if (opaque)
  {
    v3 = *(opaque + 152);
    if (((((v3 & 2) == 0) ^ a2) & 1) == 0)
    {
      if (a2)
      {
        v4 = 2;
      }

      else
      {
        v4 = 0;
      }

      *(opaque + 152) = v3 & 0xFD | v4;
      Scene = C3DEngineContextGetScene(*(opaque + 144), a2);
      C3DNotificationCenterGetSharedInstance(Scene, v6);
      OUTLINED_FUNCTION_22();

      C3DNotificationCenterPostNotification(v7, v8, v9, v10, v11);
    }
  }
}

- (uint64_t)setSampleCount:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    result = SCNMTLDeviceSupportedSampleCountForSampleCount(*(result + 120), a2);
    *(v2 + 96) = result;
  }

  return result;
}

- (uint64_t)sampleCount
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

- (uint64_t)resourceQueue
{
  if (result)
  {
    return *(result + 2200);
  }

  return result;
}

- (void)endFrameSceneSpecifics
{
  if (result)
  {
    v1 = result;
    [result resetVolatileMeshes];

    return [v1 resetVolatileMeshElements];
  }

  return result;
}

- (void)_commitResourceCommandBufferIfNeeded
{
  if (self)
  {
    OUTLINED_FUNCTION_40();
    if (v3)
    {
      if (*(v1 + 264))
      {
        SCNMTLBlitCommandEncoder::endEncoding((v1 + 264), v2);
      }

      if (*(v1 + 1936))
      {
        SCNMTLComputeCommandEncoder::endEncoding((v1 + 280), v2);
      }

      [*(v1 + 256) commit];
      *(v1 + 256) = 0;
    }
  }
}

- (os_unfair_lock_s)endFrameWaitingUntilCompleted:(void *)completed status:(void *)status error:
{
  if (result)
  {
    v7 = result;
    os_unfair_lock_lock(result + 3872);
    v8 = *&v7[3874]._os_unfair_lock_opaque;
    if (v8)
    {
      v9 = *&v7[60]._os_unfair_lock_opaque;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __66__SCNMTLRenderContext_endFrameWaitingUntilCompleted_status_error___block_invoke;
      v32[3] = &unk_2782FD3F8;
      v32[4] = v8;
      [v9 addScheduledHandler:v32];

      *&v7[3874]._os_unfair_lock_opaque = 0;
    }

    v10 = *&v7[3876]._os_unfair_lock_opaque;
    if (v10)
    {
      v11 = *&v7[60]._os_unfair_lock_opaque;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __66__SCNMTLRenderContext_endFrameWaitingUntilCompleted_status_error___block_invoke_2;
      v31[3] = &unk_2782FD3F8;
      v31[4] = v10;
      [v11 addCompletedHandler:v31];

      *&v7[3876]._os_unfair_lock_opaque = 0;
    }

    os_unfair_lock_unlock(v7 + 3872);
    if (*&v7[50]._os_unfair_lock_opaque)
    {
      os_unfair_lock_lock(v7 + 3872);
      if (*&v7[3878]._os_unfair_lock_opaque)
      {
        OUTLINED_FUNCTION_4_1();
        v27 = 3221225472;
        v28 = __66__SCNMTLRenderContext_endFrameWaitingUntilCompleted_status_error___block_invoke_3;
        v29 = &unk_2782FD420;
        v30 = v12;
        [*&v7[50]._os_unfair_lock_opaque addPresentedHandler:v26];

        *&v7[3878]._os_unfair_lock_opaque = 0;
      }

      os_unfair_lock_unlock(v7 + 3872);
      if (BYTE1(v7[53]._os_unfair_lock_opaque) == 1)
      {
        [MEMORY[0x277CD9FF0] begin];
        if (!pthread_main_np())
        {
          [MEMORY[0x277CD9FF0] activateBackground:1];
        }
      }

      if (LOBYTE(v7[53]._os_unfair_lock_opaque) == 1 && [*&v7[48]._os_unfair_lock_opaque maximumDrawableCount] == 3)
      {
        [*&v7[60]._os_unfair_lock_opaque presentDrawable:*&v7[50]._os_unfair_lock_opaque afterMinimumDuration:*&v7[52]._os_unfair_lock_opaque];
      }

      else
      {
        [*&v7[60]._os_unfair_lock_opaque presentDrawable:*&v7[50]._os_unfair_lock_opaque];
      }

      if (BYTE1(v7[53]._os_unfair_lock_opaque) == 1)
      {
        [MEMORY[0x277CD9FF0] commit];
      }

      *&v7[50]._os_unfair_lock_opaque = 0;
    }

    [(SCNMTLRenderContext *)v7 _commitResourceCommandBufferIfNeeded];
    v13 = *&v7[3884]._os_unfair_lock_opaque;
    if (v13)
    {
      if (a2)
      {
        [v13 waitUntilCompleted];
        if (completed)
        {
          *completed = [*&v7[3884]._os_unfair_lock_opaque status];
        }

        if (status)
        {
          *status = 0;
        }
      }

      v14 = OUTLINED_FUNCTION_34();
      objc_setProperty_nonatomic(v14, v15, v16, 15536);
    }

    else
    {
      [*&v7[60]._os_unfair_lock_opaque commit];
      if (a2)
      {
        [*&v7[60]._os_unfair_lock_opaque waitUntilCompleted];
        if (completed)
        {
          *completed = [*&v7[60]._os_unfair_lock_opaque status];
        }

        if (status)
        {
          *status = [*&v7[60]._os_unfair_lock_opaque error];
        }
      }
    }

    v17 = OUTLINED_FUNCTION_34();
    objc_setProperty_nonatomic(v17, v18, v19, 15528);
    v20 = OUTLINED_FUNCTION_34();
    objc_setProperty_nonatomic(v20, v21, v22, 15520);
    v23 = OUTLINED_FUNCTION_34();
    objc_setProperty_nonatomic(v23, v24, v25, 15560);
    *&v7[60]._os_unfair_lock_opaque = 0;
    *&v7[3788]._os_unfair_lock_opaque = 0;

    *&v7[46]._os_unfair_lock_opaque = 0;
    *&v7[48]._os_unfair_lock_opaque = 0;

    *&v7[50]._os_unfair_lock_opaque = 0;
    return [+[SCNSourceRendererRegistry sharedRegistry](SCNSourceRendererRegistry "sharedRegistry")];
  }

  return result;
}

- (uint64_t)textureTarget
{
  if (result)
  {
    return *(result + 184);
  }

  return result;
}

- (uint64_t)layerTarget
{
  if (result)
  {
    return *(result + 192);
  }

  return result;
}

- (void)_finalRenderTexture
{
  if (result)
  {
    v1 = result;
    if (result[24])
    {
      v2 = result[25];
      if (!v2)
      {
        v3 = CACurrentMediaTime();
        v4 = objc_alloc_init(MEMORY[0x277CCA8B0]);
        C3DEngineContextGetFrameIndex(v1[18]);
        v5 = -3;
        do
        {
          v6 = v5;
          OUTLINED_FUNCTION_47(725684156);
          v7 = CACurrentMediaTime();
          nextDrawable = [v1[24] nextDrawable];
          *(v1[2] + 176) = CACurrentMediaTime() - v7 + *(v1[2] + 176);
          v9 = OUTLINED_FUNCTION_47(725684160);
          if (nextDrawable)
          {
            break;
          }

          v5 = v6 + 1;
        }

        while (v6);
        if (!nextDrawable)
        {
          v11 = scn_default_log(v9, v10);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *v12 = 0;
            _os_log_impl(&dword_21BEF7000, v11, OS_LOG_TYPE_DEFAULT, "Warning: Failed getting a valid drawable. Skipping this frame.", v12, 2u);
          }
        }

        *(v1[2] + 192) = CACurrentMediaTime() - v3 + *(v1[2] + 192);
        v1[25] = nextDrawable;

        v2 = v1[25];
      }

      return [v2 texture];
    }

    else
    {
      return result[23];
    }
  }

  return result;
}

- (uint64_t)_reflectionProbeArrayTexture
{
  if (result)
  {
    return *(result + 15152);
  }

  return result;
}

- (uint64_t)_setReflectionProbeArrayTexture:(uint64_t)result
{
  if (result)
  {
    *(result + 15152) = a2;
  }

  return result;
}

- (uint64_t)resourceCommandBuffer
{
  if (result)
  {
    OUTLINED_FUNCTION_40();
    if (!v3)
    {
      [v1 _createResourceCommandBufferIfNeeded];
    }

    if (*(v1 + 1936))
    {
      SCNMTLComputeCommandEncoder::endEncoding((v1 + 280), v2);
    }

    if (*(v1 + 264))
    {
      SCNMTLBlitCommandEncoder::endEncoding((v1 + 264), v2);
    }

    return *(v1 + 256);
  }

  return result;
}

- (uint64_t)resourceBlitEncoder
{
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40();
  if (!v3)
  {
    [v1 _createResourceCommandBufferIfNeeded];
  }

  if (*(v1 + 1936))
  {
    SCNMTLComputeCommandEncoder::endEncoding((v1 + 280), v2);
  }

  v4 = v1 + 264;
  if (!*(v1 + 264))
  {
    SCNMTLBlitCommandEncoder::beginEncoding(v1 + 264, *(v1 + 256), 0);
  }

  return v4;
}

- (uint64_t)resourceComputeEncoder
{
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40();
  if (!v3)
  {
    [v1 _createResourceCommandBufferIfNeeded];
  }

  if (*(v1 + 264))
  {
    SCNMTLBlitCommandEncoder::endEncoding((v1 + 264), v2);
  }

  v4 = v1 + 280;
  if (!*(v1 + 1936))
  {
    SCNMTLComputeCommandEncoder::beginEncoding((v1 + 280), *(v1 + 256), *(v1 + 136), @"ResourceComputeEncoder", *(v1 + 2088));
  }

  return v4;
}

- (void)beginRenderPass:(uint64_t)pass renderEncoder:(uint64_t)encoder parameters:
{
  if (self)
  {
    *(self + 248) = pass;
    v7 = [objc_msgSend(objc_msgSend(a2 "colorAttachments")];
    if (!v7)
    {
      v7 = [objc_msgSend(a2 "depthAttachment")];
    }

    *(self + 232) = [v7 width];
    *(self + 236) = [v7 height];
    bzero((self + 15168), 0x88uLL);
    v8 = *(self + 216);
    *(self + 216) = a2;
    *(self + 224) = v8;
    *(self + 1996) = WORD2(encoder);
    *(self + 1992) = encoder;
  }
}

- (void)endRenderPass
{
  if (self)
  {
    v2 = *(self + 248);
    v3 = *(v2 + 3392);
    if (v3 == *(self + 15528))
    {
      bzero(*(self + 248), 0xD70uLL);
    }

    else
    {
      v4 = *(v2 + 3384);
      v5 = *(v2 + 3400);
      bzero(*(self + 248), 0xD70uLL);
      *(v2 + 3384) = v4;
      *(v2 + 3392) = v3;
      *(v2 + 3400) = v5;
      *(v2 + 40) = 257;
      OUTLINED_FUNCTION_36(1);
    }

    *(v2 + 64) = 1;
    *(v2 + 72) = 1;
    *(self + 248) = 0;
    *(self + 216) = *(self + 224);
  }
}

- (id)textureForEffectSlot:(id *)result
{
  if (result)
  {
    return [result[14] renderResourceForEffectSlot:a2 withEngineContext:result[18] didFallbackToDefaultTexture:0];
  }

  return result;
}

- (void)irradianceTextureForEffectSlot:(void *)result
{
  if (result)
  {
    OUTLINED_FUNCTION_5_1();
    PrecomputedLightingEnvironment = C3DEffectSlotGetPrecomputedLightingEnvironment(v3, v3);
    v5 = v1[14];
    if (PrecomputedLightingEnvironment)
    {

      return [v5 irradianceTextureForPrecomputedLightingEnvironment:?];
    }

    else
    {
      result = [v5 renderResourceForEffectSlot:v2 withEngineContext:v1[18] didFallbackToDefaultTexture:0];
      if (result)
      {
        v6 = result;
        if ([result textureType] == 5)
        {
          v8 = v1[278];
          if (v8)
          {
            C3DLightingSystemGetLightProbesSystem(v8, v7);
          }

          OUTLINED_FUNCTION_4_1();
          v12 = 3221225472;
          v13 = __54__SCNMTLRenderContext_irradianceTextureForEffectSlot___block_invoke;
          v14 = &__block_descriptor_40_e21_v16__0___MTLBuffer__8l;
          v15 = v9;
          return [v10 irradianceTextureForEnvironmentTexture:v6 renderContext:v1 applySH:v11];
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

- (uint64_t)radianceTextureForEffectSlot:(uint64_t)slot
{
  if (!slot)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_1();
  PrecomputedLightingEnvironment = C3DEffectSlotGetPrecomputedLightingEnvironment(v3, v3);
  v5 = *(v1 + 112);
  if (PrecomputedLightingEnvironment)
  {

    return [v5 radianceTextureForPrecomputedLightingEnvironment:?];
  }

  v7 = [v5 renderResourceForEffectSlot:v2 withEngineContext:*(v1 + 144) didFallbackToDefaultTexture:0];
  if (!v7 || [v7 textureType] != 5)
  {
    return 0;
  }

  [(SCNMTLRenderContext *)v1 resourceCommandBuffer];
  v8 = OUTLINED_FUNCTION_38();

  return [v8 radianceTextureForEnvironmentTexture:? engineContext:? commandBuffer:?];
}

- (void)setRasterizerStates:(uint64_t)states
{
  v23 = *MEMORY[0x277D85DE8];
  if (states)
  {
    OUTLINED_FUNCTION_5_1();
    if (!v3)
    {
      v2 = C3DRasterizerStatesDefault();
    }

    if (*(v1 + 15168) != v2)
    {
      v16 = 0;
      v17 = 0;
      v19 = 0;
      v18 = 0;
      C3DRasterizerStatesGetDesc(v2, v3, &v16);
      v5 = *(v1 + 15168);
      if (v5)
      {
        v20 = 0uLL;
        v22 = 0;
        v21 = 0;
        C3DRasterizerStatesGetDesc(v5, v4, &v20);
        v6 = v16;
        if (v20 == v16)
        {
          v7 = 2;
        }

        else
        {
          v7 = 3;
        }

        if (DWORD1(v20) == HIDWORD(v16))
        {
          v8 = v20 != v16;
        }

        else
        {
          v8 = v7;
        }

        if (BYTE8(v20) == v17)
        {
          v9 = v8;
        }

        else
        {
          v9 = (v8 | 4u);
        }

        if (v17 == 1 && BYTE10(v20) != BYTE2(v17) || (BYTE8(v20) & 1) == 0)
        {
          v9 = (v9 | 8);
        }

        if (v17 && BYTE9(v20) != BYTE1(v17) || (BYTE8(v20) & 1) == 0)
        {
          v9 = (v9 | 0x10);
        }

        if ((v17 & 0x1000000) != 0 || BYTE11(v20) == 1)
        {
          LOBYTE(v9) = v9 | 0x20;
        }

        else if (!v9)
        {
          v14 = scn_default_log(v16, v4);
          if (OUTLINED_FUNCTION_33(v14))
          {
            LODWORD(v20) = 136315138;
            *(&v20 + 4) = "setMask";
            OUTLINED_FUNCTION_0_0(&dword_21BEF7000, v9, v15, "Assertion '%s' failed. Null argument", &v20);
          }

          goto LABEL_38;
        }

        if ((v9 & 1) == 0)
        {
LABEL_32:
          if ((v9 & 2) != 0)
          {
            v12 = *(v1 + 248);
            v13 = C3DFillModeToMTLFillMode(HIDWORD(v16), v4);
            if ((*(v12 + 74) & 1) == 0 && *(v12 + 24) != v13)
            {
              *(v12 + 24) = v13;
              *(v12 + 42) = 1;
            }
          }

          if ((v9 & 0x3C) != 0)
          {
            [(SCNMTLResourceManager *)*(v1 + 112) renderResourceForRasterizerState:v2 reverseZ:(*(v1 + 152) >> 6) & 1];
            [OUTLINED_FUNCTION_5_2() setDepthStencilState:?];
          }

LABEL_38:
          *(v1 + 15168) = v2;
          return;
        }
      }

      else
      {
        LOBYTE(v9) = -1;
        v6 = v16;
      }

      v10 = *(v1 + 248);
      v11 = C3DCullModeToMTLCullMode(v6, v4);
      if ((*(v10 + 73) & 1) == 0 && *(v10 + 16) != v11)
      {
        *(v10 + 16) = v11;
        *(v10 + 41) = 1;
      }

      goto LABEL_32;
    }
  }
}

- (void)pushDebugGroup:(void *)result
{
  if (result)
  {
    return [*(result[31] + 3392) pushDebugGroup:a2];
  }

  return result;
}

- (void)popDebugGroup
{
  if (result)
  {
    return [*(result[31] + 3392) popDebugGroup];
  }

  return result;
}

- (id)_setSceneBufferAtVertexIndex:(uint64_t)index fragmentIndex:
{
  if (result)
  {
    v4 = result;
    if (a2 != -1)
    {
      result = SCNMTLRenderCommandEncoder::setVertexBuffer(result[31], result[814], result[815], a2);
    }

    if (index != -1)
    {
      v5 = v4[31];
      v6 = v4[814];
      v7 = v4[815];

      return SCNMTLRenderCommandEncoder::setFragmentBuffer(v5, v6, v7, index);
    }
  }

  return result;
}

- (id)_setMeshBuffers:(id *)result
{
  v8[14] = *MEMORY[0x277D85DE8];
  if (result)
  {
    OUTLINED_FUNCTION_26();
    memset(v7, 0, sizeof(v7));
    v4 = [-[SCNMTLMesh buffers](v3) count];
    if (v4 >= 0xE)
    {
      v5 = 14;
    }

    else
    {
      v5 = v4;
    }

    [-[SCNMTLMesh buffers](v2) getObjects:v8 range:{0, v5}];
    if ([(SCNMTLMesh *)v2 volatileBuffer])
    {
      *(v7 + v5) = [(SCNMTLMesh *)v2 volatileOffset];
      v8[v5++] = [(SCNMTLMesh *)v2 volatileBuffer];
    }

    v6 = *(v1 + 248);
    if (v5 == 1)
    {
      return SCNMTLRenderCommandEncoder::setVertexBuffer(v6, v8[0], *&v7[0], 18);
    }

    else
    {
      return SCNMTLRenderCommandEncoder::setVertexBuffers(v6, v8, v7, 18, v5);
    }
  }

  return result;
}

- (uint64_t)_drawMeshElement:(uint64_t)element instanceCount:
{
  v38 = *MEMORY[0x277D85DE8];
  if (result)
  {
    OUTLINED_FUNCTION_26();
    ++*(*(v7 + 16) + 8);
    if (!v8)
    {
      v9 = scn_default_log(v7, 0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v36 = 136315138;
        v37 = "element";
        OUTLINED_FUNCTION_0_0(&dword_21BEF7000, v9, v10, "Assertion '%s' failed. Null argument", &v36);
      }
    }

    if ([(SCNMTLMesh *)v4 buffers])
    {
      v11 = *(v3 + 248);
      computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)v4 computeEvaluator];
      [(SCNMTLMesh *)v4 elements];
      v12 = OUTLINED_FUNCTION_25();
      buffer = [-[SCNMTLMeshElement indexBuffer](v12) buffer];
      effectiveIndexOffset = [(SCNMTLMeshElement *)v4 effectiveIndexOffset];
      offset = [-[SCNMTLMeshElement indexBuffer](v4) offset];
      elementCopy = element;
      element = effectiveIndexOffset + [(SCNMTLResourceManager *)v4 libraryManager];
      buffers = [(SCNMTLMesh *)v4 buffers];
      volatileOffset = [(SCNMTLMesh *)v4 volatileOffset];
      SCNMTLRenderCommandEncoder::_bindPendingTextures(v11, v19);
      SCNMTLRenderCommandEncoder::applyChangedStates(v11);
      v20 = offset + element;
      LODWORD(element) = elementCopy;
      [*(v11 + 3392) drawIndexedPrimitives:computeEvaluator indexType:v5 indexBuffer:buffer indexBufferOffset:v20 indirectBuffer:buffers indirectBufferOffset:volatileOffset];
    }

    else
    {
      indexBuffer = [(SCNMTLMeshElement *)v4 indexBuffer];
      v22 = *(v3 + 248);
      computeEvaluator2 = [(SCNMTLOpenSubdivComputeEvaluator *)v4 computeEvaluator];
      if (indexBuffer)
      {
        [(SCNMTLMesh *)v4 volatileBuffer];
        v24 = OUTLINED_FUNCTION_25();
        elements = [(SCNMTLMesh *)v24 elements];
        buffer2 = [-[SCNMTLMeshElement indexBuffer](v4) buffer];
        effectiveIndexOffset2 = [(SCNMTLMeshElement *)v4 effectiveIndexOffset];
        offset2 = [-[SCNMTLMeshElement indexBuffer](v4) offset];
        libraryManager = [(SCNMTLResourceManager *)v4 libraryManager];
        SCNMTLRenderCommandEncoder::drawIndexedPrimitives(v22, computeEvaluator2, indexBuffer, elements, buffer2, offset2 + effectiveIndexOffset2 + libraryManager, element, 0);
      }

      else
      {
        [(SCNMTLMeshElement *)v4 effectiveIndexOffset];
        v30 = OUTLINED_FUNCTION_25();
        volatileBuffer = [(SCNMTLMesh *)v30 volatileBuffer];
        SCNMTLRenderCommandEncoder::drawPrimitives(v22, computeEvaluator2, 0, volatileBuffer, element, 0);
      }
    }

    effectivePrimitiveCount = [(SCNMTLMeshElement *)v4 effectivePrimitiveCount];
    result = OUTLINED_FUNCTION_28(effectivePrimitiveCount);
    if (result)
    {
      result = [(SCNMTLMesh *)result verticesCount];
      v34 = result * element;
      v33 = *(v3 + 16);
    }

    else
    {
      v34 = 0;
    }

    *v33 += v34;
  }

  return result;
}

- (uint64_t)_drawPatchForMeshElement:(uint64_t)element instanceCount:
{
  v27 = *MEMORY[0x277D85DE8];
  if (result)
  {
    OUTLINED_FUNCTION_26();
    if ([(SCNMTLMesh *)v7 elements]!= 1)
    {
      elements = [(SCNMTLMesh *)v4 elements];
      if (elements)
      {
        v10 = scn_default_log(elements, v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          v25 = 136315138;
          v26 = "element.indexType == MTLIndexTypeUInt32 || element.indexType == MTLIndexTypeUInt16";
          OUTLINED_FUNCTION_0_0(&dword_21BEF7000, v10, v11, "Assertion '%s' failed. Control point indices must be 16-bit or 32-bit", &v25);
        }
      }
    }

    computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)v4 computeEvaluator];
    if (computeEvaluator != 3)
    {
      v14 = scn_default_log(computeEvaluator, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v25 = 136315138;
        v26 = "element.primitiveType == MTLPrimitiveTypeTriangle";
        OUTLINED_FUNCTION_0_0(&dword_21BEF7000, v14, v15, "Assertion '%s' failed. Only triangle arrays are supported for tessellation", &v25);
      }
    }

    ++*(*(v3 + 16) + 8);
    v16 = *(v3 + 248);
    primitiveCount = [(SCNMTLMeshElement *)v4 primitiveCount];
    [-[SCNMTLMeshElement indexBuffer](v4) buffer];
    v18 = OUTLINED_FUNCTION_25();
    offset = [-[SCNMTLMeshElement indexBuffer](v18) offset];
    v20 = [(SCNMTLResourceManager *)v4 libraryManager]+ offset;
    SCNMTLRenderCommandEncoder::_bindPendingTextures(v16, v21);
    SCNMTLRenderCommandEncoder::applyChangedStates(v16);
    [*(v16 + 3392) drawIndexedPatches:3 patchStart:0 patchCount:primitiveCount patchIndexBuffer:0 patchIndexBufferOffset:0 controlPointIndexBuffer:v5 controlPointIndexBufferOffset:v20 instanceCount:*(v16 + 64) * element baseInstance:0];
    primitiveCount2 = [(SCNMTLMeshElement *)v4 primitiveCount];
    result = OUTLINED_FUNCTION_28(primitiveCount2);
    if (result)
    {
      result = [(SCNMTLMesh *)result verticesCount];
      v24 = result * element;
      v23 = *(v3 + 16);
    }

    else
    {
      v24 = 0;
    }

    *v23 += v24;
  }

  return result;
}

- (void)renderBackground:(uint64_t)background engineContext:(float32x4_t *)context passInstance:
{
  v118 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return;
  }

  OUTLINED_FUNCTION_26();
  v109 = 0;
  ImageProxy = C3DEffectSlotGetImageProxy(v8, v8);
  Player = C3DAnimationNodeGetPlayer(background);
  TextureProxy = Player;
  if (Player && C3DTextureGetIOSurface(Player) != ImageProxy)
  {
    C3DEngineContextSetBackgroundTextureProxy(background, 0);
    TextureProxy = 0;
  }

  if (!ImageProxy)
  {
    MetalTexture = [*(v4 + 112) renderResourceForEffectSlot:v5 withEngineContext:*(v4 + 144) didFallbackToDefaultTexture:0];
    goto LABEL_13;
  }

  TextureSampler = C3DEffectSlotGetTextureSampler(v5, v11);
  if (TextureSampler)
  {
    if (!TextureProxy)
    {
LABEL_11:
      TextureProxy = C3DImageProxyCreateTextureProxy(ImageProxy, TextureSampler, background);
      C3DEngineContextSetBackgroundTextureProxy(background, TextureProxy);
      CFRelease(TextureProxy);
      if (!TextureProxy)
      {
        return;
      }
    }
  }

  else
  {
    TextureSampler = C3DTextureSamplerGetDefault(0, v13);
    if (!TextureProxy)
    {
      goto LABEL_11;
    }
  }

  MetalTexture = C3DTextureProxyGetMetalTexture(TextureProxy, background, TextureSampler, v110);
LABEL_13:
  v17 = MetalTexture;
  v109 = MetalTexture;
  if (MetalTexture)
  {
    Scene = C3DEngineContextGetScene(background, v16);
    if ([v17 textureType] == 5)
    {
      EnvironmentCubeMesh = C3DEngineContextGetEnvironmentCubeMesh(background);
      v20 = *(v4 + 8 * *(v4 + 1994) + 2144);
      C3DEngineContextGetMatrix4x4(background, 1);
      v21 = OUTLINED_FUNCTION_25();
      if (C3DKeyframeControllerHasInterpolationModesPerKey(v21))
      {
        ImageTransform = C3DEffectSlotGetImageTransform(v5, v22);
        C3DMatrix4x4Mult(ImageTransform, background, v110);
      }

      else
      {
        v29 = *background;
        v30 = *(background + 32);
        *&v110[16] = *(background + 16);
        *&v110[32] = v30;
        *v110 = v29;
      }

      v111 = xmmword_21C27F610;
      v31 = OUTLINED_FUNCTION_37();
      Matrix4x4 = C3DEngineContextGetMatrix4x4(v31, v32);
      v34 = Matrix4x4[3];
      v36 = *Matrix4x4;
      v35 = Matrix4x4[1];
      v103 = Matrix4x4[2];
      v104 = v34;
      v101 = v36;
      v102 = v35;
      [v4 _updateProjectionMatrixForOrthographicSkyboxRenderingIfNeeded:&v101];
      C3DMatrix4x4Mult(v110, &v101, &v105);
    }

    else
    {
      EnvironmentCubeMesh = C3DEngineContextGetQuadMesh(background);
      v20 = *(v4 + 8 * *(v4 + 1994) + 2120);
      if (C3DKeyframeControllerHasInterpolationModesPerKey(v5))
      {
        v25 = C3DEffectSlotGetImageTransform(v5, v24);
        v26 = v25[3];
        v28 = *v25;
        v27 = v25[1];
        v107 = v25[2];
        v108 = v26;
        v105 = v28;
        v106 = v27;
      }

      else
      {
        C3DMatrix4x4MakeIdentity(&v105);
      }
    }

    [OUTLINED_FUNCTION_5_2() pushDebugGroup:@"SceneKit - Draw scene background"];
    v98 = EnvironmentCubeMesh;
    v37 = [(SCNMTLResourceManager *)*(v4 + 112) renderResourceForMesh:1 dataKind:?];
    *(v117 + 7) = 0;
    *&v117[0] = 0;
    commandQueue = [(SCNMTLResourceManager *)v37 commandQueue];
    v96 = v37;
    vertexDescriptorHash = [(SCNMTLMesh *)v37 vertexDescriptorHash];
    [objc_msgSend(objc_msgSend(*(v4 + 216) "colorAttachments")];
    v42 = v41;
    IsOpaque = C3DEffectSlotIsOpaque(v5, v43);
    if ((IsOpaque & 1) != 0 || v42 == 0.0)
    {
      C3DBlendStatesDefaultReplace(IsOpaque, v45);
    }

    else
    {
      C3DBlendStatesDefaultOver(IsOpaque, v45);
    }

    OUTLINED_FUNCTION_21();
    if (v50)
    {
      v51 = v47 + 1;
    }

    else
    {
      v51 = v47;
    }

    *(&v117[1] + 7) = 0;
    *(v117 + 15) = 0;
    v52 = *(v4 + 112);
    memset(&v110[8], 0, 32);
    *v110 = v20;
    *&v110[40] = v46;
    *&v111 = 0;
    WORD4(v111) = 783;
    BYTE10(v111) = v48;
    BYTE11(v111) = v51;
    HIDWORD(v111) = 0;
    v112.n128_u64[0] = commandQueue;
    v112.n128_u64[1] = vertexDescriptorHash;
    v113[0] = v49;
    *&v113[16] = *(v117 + 15);
    *&v113[1] = v117[0];
    *&v114 = 0;
    v53 = [v52 renderResourceForProgramDesc:v110 renderPassDescriptor:{*(v4 + 216), v96}];
    v54 = *(v4 + 248);
    state = [v53 state];
    if (*(v54 + 3376) != state)
    {
      *(v54 + 3376) = state;
      [*(v54 + 3392) setRenderPipelineState:state];
    }

    [SCNMTLRenderContext setRasterizerStates:v4];
    Intensity = 1.0;
    if ((C3DWasLinkedBeforeMajorOSYear2020(v57, v58) & 1) == 0)
    {
      Intensity = C3DEffectSlotGetIntensity(v5, v59);
    }

    v100 = Intensity;
    SCNMTLRenderCommandEncoder::setFragmentBytes(*(v4 + 248), &v100, 4uLL, 0);
    if (!C3DEffectSlotGetTextureSampler(v5, v60))
    {
      C3DTextureSamplerGetDefault(0, 0);
    }

    v61 = [SCNMTLResourceManager renderResourceForSampler:?];
    if ([v17 pixelFormat] == 520 || objc_msgSend(v17, "pixelFormat") == 500)
    {
      v62 = *(*(v4 + 248) + 3392);
      SCNMTLEnsureIOSurfaceBackingBufferValidity(*(v4 + 240), &v109, 1u);
      v63 = [v62 setFragmentTexture:v109 atTextureIndex:0 samplerState:v61 atSamplerIndex:0];
    }

    else
    {
      SCNMTLRenderCommandEncoder::setFragmentTexture(*(v4 + 248), v17, 0);
      v94 = *(v4 + 248);
      if (*(v94 + 3248) != v61)
      {
        v63 = OUTLINED_FUNCTION_45(v94);
      }
    }

    if (*(v4 + 1994))
    {
      v65 = v98;
      if (!context)
      {
        v66 = scn_default_log(v63, v64);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
        {
          *v110 = 136315138;
          *&v110[4] = "currentPassInstance";
          OUTLINED_FUNCTION_0_0(&dword_21BEF7000, v66, v67, "Assertion '%s' failed. Null argument", v110);
        }
      }

      if (*(v4 + 1993))
      {
        v68 = 0;
        v69 = context + 198;
        v70 = v110;
        do
        {
          if (C3DKeyframeControllerHasInterpolationModesPerKey(v5))
          {
            v72 = C3DEffectSlotGetImageTransform(v5, v71);
            C3DMatrix4x4Mult(v72, v69, &v101);
          }

          else
          {
            v73 = v69[1];
            v101 = *v69;
            v102 = v73;
            v103 = v69[2];
          }

          v104 = xmmword_21C27F610;
          v74 = v69[25];
          v99[0] = v69[24];
          v99[1] = v74;
          v75 = v69[27];
          v99[2] = v69[26];
          v99[3] = v75;
          [v4 _updateProjectionMatrixForOrthographicSkyboxRenderingIfNeeded:v99];
          C3DMatrix4x4Mult(&v101, v99, &v105);
          v76 = v106;
          v77 = v107;
          v78 = v108;
          *v70 = v105;
          *(v70 + 1) = v76;
          *(v70 + 2) = v77;
          *(v70 + 3) = v78;
          *(v70 + 24) = C3DSceneComputeWorldToCubemapMatrix(Scene);
          *(v70 + 25) = v79;
          *(v70 + 26) = v80;
          *(v70 + 27) = v81;
          ++v68;
          v69 += 4;
          v70 += 64;
        }

        while (v68 < *(v4 + 1993));
      }

      v82 = OUTLINED_FUNCTION_37();
      v84 = C3DEngineContextGetMatrix4x4(v82, v83);
      OUTLINED_FUNCTION_46(v84);
      v116 = v85;
      SCNMTLRenderCommandEncoder::setVertexBytes(*(v4 + 248), v110, 0x310uLL, 0);
    }

    else
    {
      *v110 = v105;
      *&v110[16] = v106;
      *&v110[32] = v107;
      v111 = v108;
      v112 = C3DSceneComputeWorldToCubemapMatrix(Scene);
      *v113 = v86;
      *&v113[16] = v87;
      v114 = v88;
      v89 = OUTLINED_FUNCTION_37();
      v91 = C3DEngineContextGetMatrix4x4(v89, v90);
      OUTLINED_FUNCTION_46(v91);
      v115 = v92;
      SCNMTLRenderCommandEncoder::setVertexBytes(*(v4 + 248), v110, 0x90uLL, 0);
      v65 = v98;
    }

    if (*(v4 + 15176) != v65)
    {
      *(v4 + 15176) = v65;
      [SCNMTLRenderContext _setMeshBuffers:v4];
    }

    if ([v109 textureType] == 5)
    {
      v95 = [-[SCNMTLMesh elements](v97) objectAtIndexedSubscript:0];
      [(SCNMTLRenderContext *)v4 _drawMeshElement:v95 instanceCount:1];
    }

    else
    {
      SCNMTLRenderCommandEncoder::drawFullScreenTriangle(*(v4 + 248), v93);
    }

    [OUTLINED_FUNCTION_5_2() popDebugGroup];
  }
}

- (void)renderVideoBackground:(__n128 *)background engineContext:(uint64_t)context slot:
{
  v72 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    return result;
  }

  v7 = result;
  [*(result[31] + 3392) pushDebugGroup:@"SceneKit - Draw video background"];
  SourceType = C3DImageProxyGetSourceType(a2, v8);
  Player = C3DAnimationNodeGetPlayer(background);
  if (!Player)
  {
    goto LABEL_5;
  }

  TextureProxy = Player;
  IOSurface = C3DTextureGetIOSurface(Player);
  if (IOSurface != a2)
  {
    Player = C3DEngineContextSetBackgroundTextureProxy(background, 0);
LABEL_5:
    Default = C3DTextureSamplerGetDefault(Player, v11);
    TextureProxy = C3DImageProxyCreateTextureProxy(a2, Default, background);
    C3DEngineContextSetBackgroundTextureProxy(background, TextureProxy);
    CFRelease(TextureProxy);
    goto LABEL_7;
  }

  Default = C3DTextureSamplerGetDefault(IOSurface, v14);
LABEL_7:
  result = C3DTextureProxyGetMetalTexture(TextureProxy, background, Default, v69);
  v68 = result;
  if (result)
  {
    v16 = result;
    QuadMesh = C3DEngineContextGetQuadMesh(background);
    C3DMatrix4x4MakeIdentity(v67);
    v59 = [(SCNMTLResourceManager *)v7[14] renderResourceForMesh:1 dataKind:?];
    *&v70[7] = 0;
    *v70 = 0;
    PointOfView = C3DEngineContextGetPointOfView(v7[18], v18);
    Camera = 0;
    if (PointOfView)
    {
      Camera = C3DNodeGetCamera(PointOfView, v19);
    }

    v57 = QuadMesh;
    if ((v7[19] & 8) != 0 && *(v7 + 1996) == 1 && Camera && C3DCameraGetARGrainTexture(Camera, v19))
    {
      v22 = 272;
    }

    else
    {
      v22 = 271;
    }

    v23 = v7[v22];
    commandQueue = [(SCNMTLResourceManager *)v59 commandQueue];
    [(SCNMTLMesh *)v59 vertexDescriptorHash];
    OUTLINED_FUNCTION_21();
    if (_ZF)
    {
      v30 = v26 + 1;
    }

    else
    {
      v30 = v26;
    }

    v71 = 0;
    *&v70[15] = 0;
    v31 = v7[14];
    LOWORD(v64) = 783;
    BYTE2(v64) = v27;
    HIBYTE(v64) = v30;
    v65[0] = v28;
    *&v65[16] = 0;
    *&v65[1] = *v70;
    v32 = OUTLINED_FUNCTION_48(v31, commandQueue, v57, v59, v60, v23, 0, 0, 0, 0, 0, 0, v64, commandQueue, v25, *v65, *v70 >> 56, *&v65[16], 0, v66);
    v33 = v7[31];
    state = [v32 state];
    if (*(v33 + 3376) != state)
    {
      OUTLINED_FUNCTION_29(state);
    }

    [SCNMTLRenderContext setRasterizerStates:v7];
    v35 = [SCNMTLResourceManager renderResourceForSampler:?];
    if ([v16 pixelFormat] == 520 || objc_msgSend(v16, "pixelFormat") == 500)
    {
      v36 = *(v7[31] + 3392);
      SCNMTLEnsureIOSurfaceBackingBufferValidity(v7[30], &v68, 1u);
      v37 = [v36 setFragmentTexture:v68 atTextureIndex:0 samplerState:v35 atSamplerIndex:0];
      v39 = v58;
    }

    else
    {
      SCNMTLRenderCommandEncoder::setFragmentTexture(v7[31], v16, 0);
      v42 = v7[31];
      v39 = v58;
      if (*(v42 + 3248) != v35)
      {
        v37 = OUTLINED_FUNCTION_45(v42);
      }
    }

    switch(SourceType)
    {
      case 0:
        v40 = scn_default_log(v37, v38);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v61) = 0;
          OUTLINED_FUNCTION_0_2(&dword_21BEF7000, v40, v41, "Unreachable code: Cannot render video background with an unspecified source type.", &v61);
        }

        break;
      case 1:
        __asm { FMOV            V1.2S, #1.0 }

        v61 = 0x3F80000000000000;
        v62 = _D1;
        *&v63 = 1065353216;
        break;
      case 2:
        __textureCoordinatesForCaptureDeviceImageProxy(a2, background);
        goto LABEL_31;
      case 3:
LABEL_31:
        *&v43 = __textureCoordinatesForCaptureDeviceImageProxy(a2, background);
        v61 = v43;
        *&v62 = v44;
        *(&v62 + 1) = v45;
        *&v63 = v46;
        break;
      default:
        break;
    }

    v51 = SCNMTLRenderCommandEncoder::setVertexBytes(v7[31], &v61, 0x20uLL, 0);
    Intensity = 1.0;
    if ((C3DWasLinkedBeforeMajorOSYear2020(v51, v53) & 1) == 0)
    {
      Intensity = C3DEffectSlotGetIntensity(context, v54);
    }

    *(&v60 + 1) = Intensity;
    SCNMTLRenderCommandEncoder::setFragmentBytes(v7[31], &v60 + 4, 4uLL, 0);
    if (v7[1897] != v39)
    {
      v7[1897] = v39;
      [SCNMTLRenderContext _setMeshBuffers:v7];
    }

    SCNMTLRenderCommandEncoder::drawFullScreenQuad(v7[31], v55);
    return [OUTLINED_FUNCTION_5_2() popDebugGroup];
  }

  return result;
}

- (void)authoring_drawPrimitives:(int)primitives vertexCount:(int)count instanceCount:(int)instanceCount vertexBuffers:(int)buffers offsets:(int)offsets range:(int)range vertexDescriptor:(uint64_t)descriptor withProgram:(uint64_t)self0 uniforms:(int)self1 uniformsLength:(int)self2 rasterizerStates:(uint64_t)self3 blendStates:(uint64_t)self4
{
  if (self)
  {
    OUTLINED_FUNCTION_43();
    a41 = v48;
    a42 = v57;
    v58 = v49;
    if (*(v49 + 216))
    {
      v60 = v56;
      v61 = v55;
      v62 = v54;
      v63 = v53;
      v64 = v52;
      v65 = v51;
      v66 = v50;
      v83 = a48;
      v84 = a45;
      v81 = a44;
      v67 = a43;
      *(v49 + 15176) = 0;
      if (*(v49 + 1995) == 2)
      {
        v68 = 2;
      }

      else
      {
        v68 = 1;
      }

      v82 = v68;
      HIWORD(a27) = 0;
      *(&a27 + 2) = 0;
      v69 = *(v49 + 1993);
      v70 = [v67 hash];
      v71 = *(v58 + 1994);
      v72 = *(v58 + 112);
      a16 = v81;
      a17 = 0u;
      a18 = 0u;
      a19 = v83;
      a20 = 0;
      a21 = 15;
      a22 = v69;
      a23 = v82;
      a24 = 0;
      a25 = v67;
      a26 = v70;
      LOWORD(a27) = v71;
      a28 = 0u;
      a29 = 0u;
      v73 = [v72 renderResourceForProgramDesc:&a16 renderPassDescriptor:*(v58 + 216)];
      v74 = *(v58 + 248);
      state = [v73 state];
      if (*(v74 + 3376) != state)
      {
        OUTLINED_FUNCTION_29(state);
      }

      [SCNMTLRenderContext setRasterizerStates:v58];
      if (v84)
      {
        SCNMTLRenderCommandEncoder::setVertexBytes(*(v58 + 248), v84, a46, 1);
      }

      SCNMTLRenderCommandEncoder::setVertexBuffers(*(v58 + 248), v63, v62, v61, v60);
      SCNMTLRenderCommandEncoder::drawPrimitives(*(v58 + 248), v66, 0, v65, v64, 0);
    }

    else if (([SCNMTLRenderContext authoring_drawPrimitives:vertexCount:instanceCount:vertexBuffers:offsets:range:vertexDescriptor:withProgram:uniforms:uniformsLength:rasterizerStates:blendStates:]::done & 1) == 0)
    {
      [SCNMTLRenderContext authoring_drawPrimitives:vertexCount:instanceCount:vertexBuffers:offsets:range:vertexDescriptor:withProgram:uniforms:uniformsLength:rasterizerStates:blendStates:]::done = 1;
      v59 = scn_default_log(v49, v50);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        LOWORD(a16) = 0;
        OUTLINED_FUNCTION_8_2();
        _os_log_error_impl(v76, v77, v78, v79, v80, 2u);
      }
    }

    OUTLINED_FUNCTION_42();
  }
}

- (double)processRendererElements:(int)elements count:(unsigned __int8 *)count engineIterationContext:
{
  v51 = *MEMORY[0x277D85DE8];
  if (result)
  {
    countCopy = count;
    LODWORD(v5) = elements;
    v6 = a2;
    v8 = count[1];
    C3DEngineContextGetFXContext(v8, a2);
    v9 = countCopy[2];
    v48 = *(*countCopy + 6);
    WarmUpAbortHandler = C3DEngineContextGetWarmUpAbortHandler(v8);
    ProgramHashCodeStore = C3DEngineContextGetProgramHashCodeStore(v8, v11);
    v12 = *(result + 15544);
    if ((v12 & 2) != 0)
    {
      v13 = *(result + 248);
      if ((*(v13 + 74) & 1) == 0 && *(v13 + 24) != 1)
      {
        *(v13 + 24) = 1;
        *(v13 + 42) = 1;
      }

      *(v13 + 74) = 1;
    }

    v14 = OUTLINED_FUNCTION_35();
    [(SCNMTLRenderContext *)v14 startProcessingRendererElementsWithEngineIterationContext:v15];
    MaxDrawingCommand = C3DEngineContextGetMaxDrawingCommand(v8);
    DynamicBatchingSystem = C3DSceneGetDynamicBatchingSystem(*(v9 + 4808), v16);
    if (v5)
    {
      v41 = v12;
      v43 = countCopy;
      v17 = 0;
      v18 = 0;
      v42 = v5;
      v5 = v5;
      v44 = v6;
      while (1)
      {
        v19 = *v6++;
        v8 = v8 & 0xFFFFFFFF00000000 | v19;
        Element = C3DRendererElementStoreGetElement(v48, v8);
        v22 = *(result + 2248);
        if (v22)
        {
          v23 = (*(*v22 + 80))(v22);
        }

        else
        {
          v23 = 0;
        }

        Pass = C3DFXPassInstanceGetPass(v9, v20);
        ProgramHashCodeForRenderElement = C3DProgramHashCodeStoreGetProgramHashCodeForRenderElement(ProgramHashCodeStore, Element, Pass, v23);
        v26 = ProgramHashCodeForRenderElement;
        if (!v17)
        {
          goto LABEL_25;
        }

        if (*(v17 + 16) != *(Element + 16) || *(v17 + 24) != *(Element + 24))
        {
          break;
        }

        v27 = v18 == ProgramHashCodeForRenderElement && *(v17 + 48) == *(Element + 48);
        if (!v27 || *(v17 + 56) != *(Element + 56) || !C3DDeformerStackAreDeformedNodesCompatibleWithInstancing(*(v17 + 8), *(Element + 8)) || !C3DDynamicBatchingSystemCurrentBatchAppend(DynamicBatchingSystem, *(Element + 8)))
        {
          break;
        }

        Element = v17;
LABEL_38:
        if (!--v5)
        {
LABEL_39:
          countCopy = v43;
          v6 = v44;
          LODWORD(v5) = v42;
          LOBYTE(v12) = v41;
          if (Element)
          {
            _processRendererElement(result, Element, v9);
            C3DDynamicBatchingSystemCurrentBatchReset(DynamicBatchingSystem);
          }

          goto LABEL_41;
        }
      }

      v28 = OUTLINED_FUNCTION_35();
      _processRendererElement(v28, v29, v9);
      C3DDynamicBatchingSystemCurrentBatchReset(DynamicBatchingSystem);
      v18 = 0;
LABEL_25:
      if (!MaxDrawingCommand && v26 && C3DProgramHashCodeUseDynamicBatching(v26) && (v30 = *(Element + 16)) != 0 && C3DGeometryIsDynamicBatchingEnabled(v30))
      {
        v31 = C3DProgramHashCodeUseDynamicBatching(v26);
        if ((v31 & 1) == 0)
        {
          v33 = scn_default_log(v31, v32);
          if (OUTLINED_FUNCTION_33(v33))
          {
            *buf = 136315138;
            v50 = "!programHashCode || C3DProgramHashCodeUseDynamicBatching(programHashCode)";
            _os_log_fault_impl(&dword_21BEF7000, v17, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. shader does not support batching!", buf, 0xCu);
          }
        }

        C3DDynamicBatchingSystemCurrentBatchAppend(DynamicBatchingSystem, *(Element + 8));
        v18 = v26;
        if (!WarmUpAbortHandler)
        {
          goto LABEL_37;
        }
      }

      else
      {
        _processRendererElement(result, Element, v9);
        Element = 0;
        if (!WarmUpAbortHandler)
        {
LABEL_37:
          ++*(*(result + 16) + 12);
          v17 = Element;
          goto LABEL_38;
        }
      }

      if ((*(WarmUpAbortHandler + 16))(WarmUpAbortHandler))
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

LABEL_41:
    RenderGraph = C3DEngineContextGetRenderGraph(*(result + 144));
    v35 = *(result + 2248);
    if (v35)
    {
      v36 = (*(*v35 + 64))(v35);
    }

    else
    {
      v36 = 0;
    }

    isMainPass = C3D::RenderGraph::isMainPass(RenderGraph, v36);
    v38 = isMainPass;
    if ((*(result + 15544) & 4) != 0 && isMainPass)
    {
      [(SCNMTLRenderContext *)result drawWireframeOverlayForElements:v6 range:0 store:v5 passInstance:v48, countCopy[2]];
    }

    if ((v12 & 2) != 0)
    {
      v39 = *(result + 248);
      *(v39 + 74) = 0;
      if (*(v39 + 24))
      {
        *(v39 + 24) = 0;
        *(v39 + 42) = 1;
      }
    }

    return [(SCNMTLRenderContext *)result stopProcessingRendererElements:v38];
  }

  return v40;
}

- (uint64_t)drawWireframeOverlayForElements:(unsigned int)elements range:(int)range store:(uint64_t)store passInstance:(unsigned __int8 *)instance
{
  v39 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v10 = result;
    [*(result[31] + 3392) pushDebugGroup:@"SceneKit - Draw wireframe"];
    v11 = OUTLINED_FUNCTION_5_2();
    LODWORD(v12) = -1138501878;
    LODWORD(v13) = -1194215657;
    LODWORD(v14) = -10.0;
    [v11 setDepthBias:v14 slopeScale:v12 clamp:v13];
    if (elements < elements + range)
    {
      v15 = (a2 + 4 * elements);
      v16 = elements + range - elements;
      do
      {
        v17 = *v15++;
        a2 = a2 & 0xFFFFFFFF00000000 | v17;
        Element = C3DRendererElementStoreGetElement(store, a2);
        Node = C3DRendererElementGetNode(Element);
        Geometry = C3DRendererElementGetGeometry(Element, v20);
        Mesh = C3DRendererElementGetMesh(Element, v22);
        MeshElement = C3DRendererElementGetMeshElement(Element, v24);
        if (MeshElement)
        {
          v26 = MeshElement;
          v27 = v10[281];
          if (v27)
          {
            v28 = (*(*v27 + 80))(v27);
          }

          else
          {
            v28 = 0;
          }

          v29 = [(SCNMTLResourceManager *)v10[14] wireframeResourceForRendererElement:v10[18] engineContext:instance passInstance:v28 hashPass:?];
          if (v29)
          {
            material = v29->material;
            program = v29->program;
            C3DMeshSourceGetMTLVertexFormat(material);
            [SCNMTLRenderContext setRasterizerStates:v10];
            v30 = (Element[36] >> 11) & 7;
            v34[0] = program;
            v34[1] = material;
            v34[2] = Geometry;
            v34[3] = Node;
            v34[4] = Mesh;
            v34[5] = v26;
            memset(&v34[6], 0, 24);
            v35 = 257;
            v36 = 0;
            v37 = v30;
            v38 = 0;
            [v10 _executeDrawCommand:v34];
          }
        }

        --v16;
      }

      while (v16);
    }

    [OUTLINED_FUNCTION_5_2() setDepthBias:0.0 slopeScale:0.0 clamp:0.0];
    return [OUTLINED_FUNCTION_5_2() popDebugGroup];
  }

  return result;
}

- (double)stopProcessingRendererElements:(uint64_t)elements
{
  if (elements)
  {
    if (a2)
    {
      if (*(elements + 2256) == 1)
      {
        v3 = OUTLINED_FUNCTION_37();
        AuthoringEnvironment = C3DEngineContextGetAuthoringEnvironment(v3, v4);
        if (AuthoringEnvironment)
        {
          if (C3DAuthoringEnvironmentShouldDisplayLightInfluences(AuthoringEnvironment))
          {
            v6 = *(elements + 2216);
            if (!*(v6 + 4760))
            {
              memcpy(v9, (v6 + 96), sizeof(v9));
              SCNMTLClusterSystem::displayInfoDebug(elements + 14544, *(elements + 248), *(elements + 144), v9, (elements + 14736));
            }
          }
        }
      }

      v7 = *(elements + 15544);
      if ((v7 & 0x10) != 0)
      {
        [elements _drawPBRTextures];
        v7 = *(elements + 15544);
      }

      if ((v7 & 8) != 0)
      {
        [elements _drawShadowMaps];
      }
    }

    *(elements + 2264) = 0;
    result = 0.0;
    *(elements + 2232) = 0u;
    *(elements + 2248) = 0u;
    *(elements + 2216) = 0u;
  }

  return result;
}

- (void)drawRenderElement:(uint64_t)element withPass:(uint64_t)pass
{
  OUTLINED_FUNCTION_43();
  a45 = v47;
  a46 = v51;
  a33 = *MEMORY[0x277D85DE8];
  if (!v48)
  {
    goto LABEL_53;
  }

  v52 = v50;
  v53 = v49;
  v54 = v48;
  if (!*(v48 + 144))
  {
    v55 = scn_default_log(v48, v49);
    if (OUTLINED_FUNCTION_33(v55))
    {
      LODWORD(a18) = 136315138;
      *(&a18 + 4) = "_engineContext";
      OUTLINED_FUNCTION_0_0(&dword_21BEF7000, v46, v56, "Assertion '%s' failed. Null argument", &a18);
    }
  }

  Node = C3DRendererElementGetNode(v53);
  Geometry = C3DRendererElementGetGeometry(v53, v58);
  Mesh = C3DRendererElementGetMesh(v53, v60);
  MeshElement = C3DRendererElementGetMeshElement(v53, v62);
  a17 = 0uLL;
  a16 = 0;
  if (v52)
  {
    DrawInstruction = C3DFXPassGetDrawInstruction(v52, v63);
    v66 = v52;
    if (DrawInstruction == 2)
    {
      v66 = v52;
      if ((*(Node + 221) & 0x10) != 0)
      {
        v66 = *(v54 + 2240);
      }
    }
  }

  else
  {
    v66 = 0;
  }

  C3DEnginePipelineGetRenderComponentsForRenderPass(v53, v66, *(v54 + 144), &a17 + 1, &a16, &a17, 0);
  IsOpaque = C3DRendererElementIsOpaque(v53);
  v69 = a16;
  if (!IsOpaque || !a16)
  {
    if (IsOpaque)
    {
      v117 = 0;
      v70 = 1;
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  if ((C3DProgramHashCodeIsOpaque(a16) & 1) == 0)
  {
LABEL_16:
    if (Node)
    {
      C3DNodeGetWorldAlpha(Node, v67);
      if (v71 <= 0.0)
      {
        goto LABEL_53;
      }
    }

    if (!a16)
    {
      HasConstantAlpha = 0;
      v122 = 0;
      v117 = 0;
      goto LABEL_30;
    }

    CommonProfile = C3DMaterialGetCommonProfile(*(&a17 + 1), v67);
    if (CommonProfile)
    {
      v73 = CommonProfile;
      TransparencyMode = C3DEffectCommonProfileGetTransparencyMode(CommonProfile, v67);
      v117 = TransparencyMode;
      if (C3DProgramHashCodeHasShaderModifiers(a16))
      {
        v70 = 0;
      }

      else
      {
        ConstantAlpha = C3DEffectCommonProfileGetConstantAlpha(v73);
        v70 = 0;
        if (TransparencyMode != 1 && ConstantAlpha <= 0.0)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
      v70 = 0;
      v117 = 0;
    }

    goto LABEL_24;
  }

  v117 = 0;
  v70 = 1;
LABEL_24:
  v69 = a16;
LABEL_25:
  v122 = v70;
  if (v69)
  {
    HasConstantAlpha = C3DProgramHashCodeHasConstantAlpha(v69);
    if (a16)
    {
      v121 = C3DProgramHashCodeNeedTangents(a16);
      if (!v52)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else
  {
    HasConstantAlpha = 0;
  }

LABEL_30:
  v121 = 0;
  if (!v52)
  {
    goto LABEL_32;
  }

LABEL_31:
  RasterizerStates = C3DFXPassGetRasterizerStates(v52, v67);
  if (RasterizerStates)
  {
    RaterizerStates = RasterizerStates;
    goto LABEL_59;
  }

LABEL_32:
  RaterizerStates = C3DRendererElementGetRaterizerStates(v53, v67);
  if (RaterizerStates)
  {
LABEL_59:
    [SCNMTLRenderContext setRasterizerStates:v54];
    v77 = 0;
    goto LABEL_34;
  }

  v77 = 1;
LABEL_34:
  v78 = v53 + 68;
  v79 = *(v53 + 72);
  if ((v79 & 0x40) != 0)
  {
    v81 = MeshElement;
    v82 = Node;
    v80 = v54;
    v83 = *(v54 + 2256);
  }

  else
  {
    v80 = v54;
    v81 = MeshElement;
    v82 = Node;
    v83 = 0;
  }

  v84 = a17;
  v85 = (v79 >> 14) & 1;
  v86 = *(v53 + 56);
  if (v122 & 1) != 0 || (*(*(v80 + 2216) + 4769))
  {
    goto LABEL_51;
  }

  if (v117 == 2)
  {
    a18 = a17;
    a19 = Geometry;
    a20 = v82;
    a21 = Mesh;
    a22 = v81;
    a23 = v86;
    a24 = v52;
    a25 = v78;
    a26 = v122;
    a27 = HasConstantAlpha;
    a28 = v121;
    a29 = v83 & 1;
    a30 = 1;
    OUTLINED_FUNCTION_23();
    v105 = v104;
    v123 = v106;
    v119 = v107;
    v114 = v109;
    v116 = v108;
    [v104 _executeDrawCommand:?];
    a18 = v84;
    a19 = Geometry;
    a20 = v82;
    a21 = Mesh;
    a22 = v81;
    a23 = v86;
    a24 = v52;
    a25 = v119;
    a26 = v123;
    a27 = HasConstantAlpha;
    a28 = v121;
    a29 = v114;
    a30 = 0;
    a31 = v116;
    a32 = 0;
    v103 = v105;
    goto LABEL_52;
  }

  if (v117 != 3)
  {
LABEL_51:
    OUTLINED_FUNCTION_10_2();
    a25 = v100;
    a26 = v101;
    OUTLINED_FUNCTION_24();
    a29 = v102;
    a30 = v85;
    OUTLINED_FUNCTION_23();
LABEL_52:
    [v103 _executeDrawCommand:?];
    goto LABEL_53;
  }

  v112 = v77;
  v87 = *(v80 + 248);
  if ((*(v87 + 73) & 1) == 0 && *(v87 + 16) != 1)
  {
    *(v87 + 16) = 1;
    *(v87 + 41) = 1;
  }

  OUTLINED_FUNCTION_10_2();
  v118 = v88;
  a25 = v88;
  a26 = v89;
  OUTLINED_FUNCTION_24();
  v113 = v91;
  v115 = v90;
  a29 = v91;
  a30 = v85;
  OUTLINED_FUNCTION_23();
  v111 = v92;
  [v92 _executeDrawCommand:?];
  v93 = v111[31];
  if ((*(v93 + 73) & 1) == 0 && *(v93 + 16) != 2)
  {
    *(v93 + 16) = 2;
    *(v93 + 41) = 1;
  }

  OUTLINED_FUNCTION_10_2();
  a25 = v118;
  a26 = v122;
  OUTLINED_FUNCTION_24();
  a29 = v113;
  a30 = v85;
  a31 = v115;
  a32 = 0;
  v95 = v94;
  [v94 _executeDrawCommand:&a18];
  if ((v112 & 1) == 0)
  {
    a18 = 0uLL;
    LODWORD(a20) = 0;
    a19 = 0;
    C3DRasterizerStatesGetDesc(RaterizerStates, v96, &a18);
    v97 = v95[31];
    v99 = C3DCullModeToMTLCullMode(a18, v98);
    if ((*(v97 + 73) & 1) == 0 && *(v97 + 16) != v99)
    {
      *(v97 + 16) = v99;
      *(v97 + 41) = 1;
    }
  }

LABEL_53:
  OUTLINED_FUNCTION_42();
}

- (uint64_t)showsAuthoringEnvironment
{
  if (self)
  {
    return OUTLINED_FUNCTION_30(*(self + 15416));
  }

  else
  {
    return OUTLINED_FUNCTION_30(0);
  }
}

- (uint64_t)setShowsAuthoringEnvironment:(uint64_t)result
{
  if (result)
  {
    *(result + 15416) = a2;
  }

  return result;
}

- (BOOL)forceAsyncShaderCompilation
{
  if (result)
  {
    return *(result + 152) < 0;
  }

  return result;
}

- (uint64_t)setForceAsyncShaderCompilation:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 0x80;
    }

    else
    {
      v2 = 0;
    }

    *(result + 152) = v2 & 0x80 | *(result + 152) & 0x7F;
  }

  return result;
}

- (uint64_t)collectsCompilationErrors
{
  if (self)
  {
    return OUTLINED_FUNCTION_30(*(self + 15424));
  }

  else
  {
    return OUTLINED_FUNCTION_30(0);
  }
}

- (void)setCollectsCompilationErrors:(uint64_t)errors
{
  if (errors)
  {
    *(errors + 15424) = a2;
    v3 = *(errors + 15432);
    if (a2)
    {
      if (!v3)
      {
        v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
        *(errors + 15432) = v3;
      }

      [v3 removeAllObjects];
    }

    else
    {

      *(errors + 15432) = 0;
    }
  }
}

- (uint64_t)compilationErrors
{
  if (result)
  {
    return *(result + 15432);
  }

  return result;
}

- (uint64_t)mapVolatileMesh:(uint64_t)mesh verticesCount:
{
  v21 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_1();
  IsVolatile = C3DMeshIsVolatile(v6, v6);
  if ((IsVolatile & 1) == 0)
  {
    v15 = scn_default_log(IsVolatile, v8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v19) = 136315138;
      *(&v19 + 4) = "0";
      OUTLINED_FUNCTION_0_0(&dword_21BEF7000, v15, v16, "Assertion '%s' failed. You can only map volatile mesh", &v19);
    }

    return 0;
  }

  v9 = [(SCNMTLResourceManager *)*(v3 + 112) renderResourceForMesh:v4 dataKind:1];
  if (![(SCNMTLMesh *)v9 volatileStride])
  {
    v11 = scn_default_log(0, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v19) = 136315138;
      *(&v19 + 4) = "metalMesh.volatileStride != 0";
      OUTLINED_FUNCTION_0_0(&dword_21BEF7000, v11, v12, "Assertion '%s' failed. Mesh should have volatile data to allocate", &v19);
    }
  }

  [(SCNMTLMesh *)v9 volatileBuffer];
  v13 = [(SCNMTLMesh *)v9 volatileStride]* mesh;
  v19 = 0uLL;
  v20 = 0;
  SCNMTLBufferPool::allocate(&v19, *(v3 + 2024), v13);
  [(SCNMTLMesh *)v9 setVolatileSize:v13];
  [(SCNMTLMesh *)v9 setVolatileBuffer:?];
  [(SCNMTLMesh *)v9 setVolatileOffset:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __53__SCNMTLRenderContext_mapVolatileMesh_verticesCount___block_invoke;
  v18[3] = &__block_descriptor_48_e201_v32__0____C3DMeshSource____C3DGenericSource____C3DEntity____CFRuntimeBase_QAQ__v____CFString_____CFString_____CFDictionary_____C3DScene_q_____C3DSourceAccessor________CFData__v_v_qb1b1b1_SCC_8c16q20C28l;
  v18[4] = mesh;
  v18[5] = v19;
  v14 = 1;
  C3DMeshApplySources(v4, 1, v18);
  [*(v3 + 2032) addObject:v9];
  return v14;
}

- (void)unmapVolatileMesh:(uint64_t)mesh modifiedVerticesCount:
{
  v18 = *MEMORY[0x277D85DE8];
  if (self)
  {
    IsVolatile = C3DMeshIsVolatile(a2, a2);
    if (IsVolatile)
    {
      v8 = [(SCNMTLResourceManager *)*(self + 112) renderResourceForMesh:a2 dataKind:1];
      [(SCNMTLRenderContext *)v8 sampleCount];
      if ((mesh & 0x8000000000000000) == 0)
      {
        [(SCNMTLMesh *)v8 volatileStride];
      }

      volatileBuffer = [(SCNMTLMesh *)v8 volatileBuffer];
      volatileOffset = [(SCNMTLMesh *)v8 volatileOffset];
      if (!volatileBuffer)
      {
        v12 = scn_default_log(volatileOffset, v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          v16 = 136315138;
          v17 = "sub.buffer != nil";
          OUTLINED_FUNCTION_0_0(&dword_21BEF7000, v12, v13, "Assertion '%s' failed. Mesh should be mapped", &v16);
        }
      }

      C3DMeshApplySources(a2, 1, &__block_literal_global_416);
    }

    else
    {
      v14 = scn_default_log(IsVolatile, v7);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v16 = 136315138;
        v17 = "0";
        OUTLINED_FUNCTION_0_0(&dword_21BEF7000, v14, v15, "Assertion '%s' failed. You can only map volatile mesh", &v16);
      }
    }
  }
}

- (const)createVolatileMeshElementOfType:(int)type primitiveCount:(uint64_t)count bytesPerIndex:
{
  v25 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0;
  }

  if ([*(self + 2056) count])
  {
    Volatile = [*(self + 2056) lastObject];
    [*(self + 2048) addObject:Volatile];
    removeLastObject = [*(self + 2056) removeLastObject];
  }

  else
  {
    Volatile = C3DMeshElementCreateVolatile(0, v8);
    [*(self + 2048) addObject:Volatile];
    CFRelease(Volatile);
  }

  if (!Volatile)
  {
    v12 = scn_default_log(removeLastObject, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v23 = 136315138;
      v24 = "meshElement";
      OUTLINED_FUNCTION_0_0(&dword_21BEF7000, v12, v13, "Assertion '%s' failed. Null argument", &v23);
    }
  }

  C3DMeshElementSetType(Volatile, a2);
  C3DMeshElementSetPrimitives(Volatile, type, 0, count);
  v14 = [SCNMTLResourceManager renderResourceForMeshElement:?];
  indexBuffer = [(SCNMTLMeshElement *)v14 indexBuffer];
  if (indexBuffer)
  {
    v17 = scn_default_log(indexBuffer, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v23 = 136315138;
      v24 = "metalMeshElement.indexBuffer == nil";
      OUTLINED_FUNCTION_0_0(&dword_21BEF7000, v17, v18, "Assertion '%s' failed. Mesh should not be already mapped", &v23);
    }
  }

  [(SCNMTLMeshElement *)v14 setupWithElement:?];
  v19 = [self _newMTLBufferFromPoolWithLength:-[SCNMTLResourceManager commandQueue](v14) * count];
  [(SCNMTLMeshElement *)v14 setIndexBuffer:v19];

  [objc_msgSend(v19 "buffer")];
  offset = [OUTLINED_FUNCTION_20() offset];
  libraryManager = [(SCNMTLResourceManager *)v14 libraryManager];
  C3DMeshElementSetVolatileDataPtr(Volatile, self + offset + libraryManager);
  return Volatile;
}

- (uint64_t)unmapVolatileMeshElement:(uint64_t)result
{
  if (result)
  {
    v3 = [SCNMTLResourceManager renderResourceForMeshElement:?];
    [-[SCNMTLMeshElement indexBuffer](v3) buffer];
    [-[SCNMTLMeshElement indexBuffer](v3) offset];
    C3DMeshElementGetBytesPerIndex(a2, v4);

    return [(SCNMTLResourceManager *)v3 commandQueue];
  }

  return result;
}

- (void)drawFullScreenQuadForPass:(void *)result
{
  v26 = *MEMORY[0x277D85DE8];
  if (result)
  {
    OUTLINED_FUNCTION_5_1();
    if (!*(v5 + 144))
    {
      v7 = scn_default_log(v5, v6);
      if (OUTLINED_FUNCTION_33(v7))
      {
        LODWORD(v15) = 136315138;
        *(&v15 + 4) = "_engineContext";
        OUTLINED_FUNCTION_0_0(&dword_21BEF7000, v3, v8, "Assertion '%s' failed. Null argument", &v15);
      }
    }

    C3DEngineContextGetQuadMesh(v1[18]);
    v9 = OUTLINED_FUNCTION_20();
    C3DFXPassGetProgram(v9, v10);
    v11 = OUTLINED_FUNCTION_39();
    Material = C3DFXPassGetMaterial(v11, v12);
    ElementAtIndex = C3DMeshGetElementAtIndex(v3, 0, 1);
    *&v15 = v4;
    *(&v15 + 1) = Material;
    v16 = 0;
    v17 = 0;
    v18 = v3;
    v19 = ElementAtIndex;
    v20 = 0;
    v21 = v2;
    v22 = 0;
    v23 = 257;
    v24 = 0;
    v25 = 0;
    return [v1 _executeDrawCommand:&v15];
  }

  return result;
}

- (uint64_t)currentRenderCommandEncoder
{
  if (result)
  {
    v1 = *(result + 248);
    if (v1)
    {
      return *(v1 + 3392);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)currentRenderPassDescriptor
{
  if (result)
  {
    return *(C3DEngineContextGetRenderGraph(*(result + 144)) + 152);
  }

  return result;
}

- (uint64_t)currentCommandBuffer
{
  if (result)
  {
    return *(result + 240);
  }

  return result;
}

- (void)_drawPBRTextures
{
  OUTLINED_FUNCTION_44();
  v193 = v2;
  v194 = v4;
  v5 = v3;
  if (v3)
  {
    v3 = *(C3DEngineContextGetRenderGraph(v3[18]) + 152);
  }

  v6 = [objc_msgSend(objc_msgSend(objc_msgSend(v3 "colorAttachments")];
  if (v5)
  {
    v7 = *(C3DEngineContextGetRenderGraph(v5[18]) + 152);
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_msgSend(objc_msgSend(objc_msgSend(v7 "colorAttachments")];
  if (v6)
  {
    if (v5[1921] != v6 || v5[1922] != v8)
    {
      v5[1921] = v6;
      v5[1922] = v8;
      frameworkLibrary = [-[SCNMTLResourceManager libraryManager](v5[14]) frameworkLibrary];
      bzero(v187, 0x168uLL);
      v188 = frameworkLibrary;
      v190 = C3DBlendStatesDefaultOver(v10, v11);
      v191 = @"quad_vertex";
      v192 = @"quad_display_cube_equirectangular";
      RenderGraph = C3DEngineContextGetRenderGraph(v5[18]);
      SCNMTLRenderPipelineApplyRenderPassDescriptor(&v189, *(RenderGraph + 152));

      v13 = v5[14];
      OUTLINED_FUNCTION_18(v14, v15, v16, v17, v18, v19, v20, v21, v129.n128_i64[0], v129.n128_i64[1], v134.n128_i64[0], v134.n128_i64[1], v137, *(&v137 + 1), v140, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187[0]);
      v22 = [v13 newRenderPipelineStateWithDesc:&v142];
      v5[1923] = v22;
      v190 = C3DBlendStatesDefaultReplace(v22, v23);
      v192 = @"quad_display_texture2D";

      v24 = v5[14];
      OUTLINED_FUNCTION_18(v25, v26, v27, v28, v29, v30, v31, v32, v130, v132, v135, v136, v138, v139, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187[0]);
      v5[1924] = [v24 newRenderPipelineStateWithDesc:&v142];
    }

    v33 = v5[31];
    if ((*(v33 + 73) & 1) == 0 && *(v33 + 16))
    {
      *(v33 + 16) = 0;
      *(v33 + 41) = 1;
    }

    [*(v33 + 3392) setDepthStencilState:-[SCNMTLResourceManager depthAndStencilStateWithReadWriteDepthDisabled](v5[14])];
    Scene = C3DEngineContextGetScene(v5[18], v34);
    v36 = v5[1894];
    if (v36)
    {
      arrayLength = [v36 arrayLength];
      mipmapLevelCount = [v5[1894] mipmapLevelCount];
      pixelFormat = [v5[1894] pixelFormat];
      Viewport = C3DEngineContextGetViewport(v5[18]);
      v40 = Viewport.n128_f32[2];
      v129 = Viewport;
      v41 = Viewport.n128_f32[3];
      Viewport.n128_f32[0] = Viewport.n128_f32[2] / Viewport.n128_f32[3];
      v43 = 1.0 / arrayLength;
      v44 = 4.0 / Viewport.n128_f32[3];
      *&v45 = v43 + ((4.0 / Viewport.n128_f32[3]) * -2.0);
      v46 = *&v45 * 2.5;
      v137 = v45;
      if ((Viewport.n128_f32[2] / Viewport.n128_f32[3]) <= 1.0)
      {
        Viewport.n128_f32[0] = Viewport.n128_f32[0] * v46;
      }

      else
      {
        Viewport.n128_f32[0] = v46 / Viewport.n128_f32[0];
      }

      v134 = Viewport;
      IsCube = SCNMTLTextureTypeIsCube([v5[1894] textureType]);
      v68 = v5[31];
      if (IsCube)
      {
        state = [v5[1923] state];
        if (*(v68 + 3376) != state)
        {
          *(v68 + 3376) = state;
          [*(v68 + 3392) setRenderPipelineState:state];
        }

        if (arrayLength)
        {
          v71 = 0;
          v72 = -v129.n128_f32[1] / v41;
          v70.n128_f32[0] = v129.n128_f32[0] / v40;
          v129 = v70;
          do
          {
            OUTLINED_FUNCTION_31([v5[1894] newTextureViewWithPixelFormat:pixelFormat textureType:5 levels:0 slices:mipmapLevelCount, v71, 6, *&v129]);
            LODWORD(v73) = v131;
            *(&v73 + 1) = v44 + v72;
            *(&v73 + 1) = __PAIR64__(v137, v134.n128_u32[0]);
            *v187 = v73;
            OUTLINED_FUNCTION_1_8(v74, v75, v76, v77, v78, v79, v80, v81, v131, v133, v134.n128_i64[0], v134.n128_i64[1], v137, *(&v137 + 1), v140, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186);
            v82 = v5[31];
            SCNMTLRenderCommandEncoder::_bindPendingTextures(v82, v83);
            SCNMTLRenderCommandEncoder::applyChangedStates(v82);
            OUTLINED_FUNCTION_6_1(*(v82 + 3392), v84);
            v72 = v43 + v72;
            v71 += 6;
            --arrayLength;
          }

          while (arrayLength);
        }
      }

      else
      {
        state2 = [v5[1924] state];
        if (*(v68 + 3376) != state2)
        {
          *(v68 + 3376) = state2;
          [*(v68 + 3392) setRenderPipelineState:state2];
        }

        if (arrayLength)
        {
          v86 = 0;
          v87 = 0.0;
          do
          {
            OUTLINED_FUNCTION_31([v5[1894] newTextureViewWithPixelFormat:pixelFormat textureType:2 levels:0 slices:mipmapLevelCount, v86, 1]);
            LODWORD(v88) = 0;
            *(&v88 + 1) = v44 + v87;
            *(&v88 + 1) = __PAIR64__(v137, v134.n128_u32[0]);
            *v187 = v88;
            OUTLINED_FUNCTION_1_8(v89, v90, v91, v92, v93, v94, v95, v96, v129.n128_i64[0], v129.n128_i64[1], v134.n128_i64[0], v134.n128_i64[1], v137, *(&v137 + 1), v140, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186);
            v97 = v5[31];
            SCNMTLRenderCommandEncoder::_bindPendingTextures(v97, v98);
            SCNMTLRenderCommandEncoder::applyChangedStates(v97);
            OUTLINED_FUNCTION_6_1(*(v97 + 3392), v99);
            ++v86;
            v87 = v43 + v87;
          }

          while (arrayLength != v86);
        }
      }
    }

    else
    {
      LightingEnvironmentEffectSlot = C3DSceneGetLightingEnvironmentEffectSlot(Scene, 0);
      if (LightingEnvironmentEffectSlot)
      {
        v49 = LightingEnvironmentEffectSlot;
        if (C3DEffectSlotHasImageOrTexture(LightingEnvironmentEffectSlot, v48) || C3DEffectSlotHasPrecomputedLightingEnvironment(v49, v50))
        {
          v51 = OUTLINED_FUNCTION_35();
          v52 = [SCNMTLRenderContext radianceTextureForEffectSlot:v51];
          if (v52)
          {
            v53 = v52;
            v54 = v5[31];
            state3 = [v5[1923] state];
            if (*(v54 + 3376) != state3)
            {
              *(v54 + 3376) = state3;
              [*(v54 + 3392) setRenderPipelineState:state3];
            }

            SCNMTLRenderCommandEncoder::setFragmentTexture(v5[31], v53, 0);
            *v187 = xmmword_21C281670;
            OUTLINED_FUNCTION_1_8(v56, v57, v58, v59, v60, v61, v62, v63, v129.n128_i64[0], v129.n128_i64[1], v134.n128_i64[0], v134.n128_i64[1], v137, *(&v137 + 1), v140, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186);
            v64 = v5[31];
            SCNMTLRenderCommandEncoder::_bindPendingTextures(v64, v65);
            SCNMTLRenderCommandEncoder::applyChangedStates(v64);
            OUTLINED_FUNCTION_6_1(*(v64 + 3392), v66);
          }
        }
      }
    }

    v100 = C3DSceneGetLightingEnvironmentEffectSlot(Scene, 0);
    if (v100)
    {
      v102 = v100;
      if (C3DEffectSlotHasImageOrTexture(v100, v101) || C3DEffectSlotHasPrecomputedLightingEnvironment(v102, v103))
      {
        if ([SCNMTLRenderContext irradianceTextureForEffectSlot:v5])
        {
          [v5[1923] state];
          OUTLINED_FUNCTION_27();
          if (!v105)
          {
            OUTLINED_FUNCTION_12_0(v117);
          }

          OUTLINED_FUNCTION_19();
          *v187 = xmmword_21C281680;
          OUTLINED_FUNCTION_1_8(v118, v119, v120, v121, v122, v123, v124, v125, v129.n128_i64[0], v129.n128_i64[1], v134.n128_i64[0], v134.n128_i64[1], v137, *(&v137 + 1), v140, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186);
          v126 = v5[31];
          SCNMTLRenderCommandEncoder::_bindPendingTextures(v126, v127);
          SCNMTLRenderCommandEncoder::applyChangedStates(v126);
          OUTLINED_FUNCTION_6_1(*(v126 + 3392), v128);
        }
      }
    }

    if ([v5[14] specularDFGDiffuseHammonTextureWithRenderContext:v5])
    {
      [v5[1924] state];
      OUTLINED_FUNCTION_27();
      if (!v105)
      {
        OUTLINED_FUNCTION_12_0(v104);
      }

      OUTLINED_FUNCTION_19();
      *v187 = xmmword_21C281690;
      OUTLINED_FUNCTION_1_8(v106, v107, v108, v109, v110, v111, v112, v113, v129.n128_i64[0], v129.n128_i64[1], v134.n128_i64[0], v134.n128_i64[1], v137, *(&v137 + 1), v140, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186);
      v114 = v5[31];
      SCNMTLRenderCommandEncoder::_bindPendingTextures(v114, v115);
      SCNMTLRenderCommandEncoder::applyChangedStates(v114);
      OUTLINED_FUNCTION_6_1(*(v114 + 3392), v116);
    }
  }

  OUTLINED_FUNCTION_17();
}

- (void)_drawShadowMaps
{
  OUTLINED_FUNCTION_44();
  v136 = v4;
  v137 = v6;
  v7 = v5;
  if (v5)
  {
    v5 = *(C3DEngineContextGetRenderGraph(v5[18]) + 152);
  }

  v8 = [objc_msgSend(objc_msgSend(v5 "colorAttachments")];
  if (v8)
  {
    v9 = v8;
    [v8 pixelFormat];
    sampleCount = [OUTLINED_FUNCTION_20() sampleCount];
    if (v7[1921] != v2 || v7[1922] != sampleCount)
    {
      v7[1921] = v2;
      v7[1922] = sampleCount;
      frameworkLibrary = [-[SCNMTLResourceManager libraryManager](v7[14]) frameworkLibrary];
      v3 = v132;
      bzero(v132, 0x168uLL);
      v133 = frameworkLibrary;
      v134[23] = @"quad_vertex";
      v135 = @"quad_display_depth2D";
      RenderGraph = C3DEngineContextGetRenderGraph(v7[18]);
      SCNMTLRenderPipelineApplyRenderPassDescriptor(v134, *(RenderGraph + 152));

      v13 = v7[14];
      OUTLINED_FUNCTION_18(v14, v15, v16, v17, v18, v19, v20, v21, v70, *(&v70 + 1), v75, v78, v80, v83, v85, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132[0]);
      v7[1925] = [v13 newRenderPipelineStateWithDesc:&v87];
      v135 = @"quad_display_depth_cube";

      v22 = v7[14];
      OUTLINED_FUNCTION_18(v23, v24, v25, v26, v27, v28, v29, v30, v71, v73, v76, v79, v81, v84, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132[0]);
      v7[1926] = [v22 newRenderPipelineStateWithDesc:&v87];
    }

    v31 = v7[31];
    if ((*(v31 + 73) & 1) == 0 && *(v31 + 16))
    {
      *(v31 + 16) = 0;
      *(v31 + 41) = 1;
    }

    [*(v31 + 3392) setDepthStencilState:-[SCNMTLResourceManager depthAndStencilStateWithReadWriteDepthDisabled](v7[14])];
    height = [v9 height];
    v33 = 0;
    v34 = 0;
    *&v35 = (height / [v9 width]) * 0.125;
    LODWORD(v36) = 1008981770;
    v37 = v7 + 1860;
    v38 = *&v35 + 0.01;
    v77 = v36;
    v82 = v35;
    while (1)
    {
      v39 = v37[v34];
      if (v39)
      {
        break;
      }

LABEL_20:
      if (++v34 == 8)
      {
        goto LABEL_29;
      }
    }

    if ([v37[v34] textureType] == 5)
    {
      v40 = v7[1926];
    }

    else
    {
      if ([v39 textureType] != 2)
      {
        if ([v39 textureType] == 3)
        {
          [v7[1925] state];
          OUTLINED_FUNCTION_27();
          if (!v42)
          {
            OUTLINED_FUNCTION_12_0(v55);
          }

          if ([v39 arrayLength])
          {
            v57 = 0;
            *&v56 = (v33 * -0.135) + 0.865;
            v70 = v56;
            do
            {
              [v39 pixelFormat];
              v3 = [v39 newTextureViewWithPixelFormat:v3 textureType:2 levels:0 slices:objc_msgSend(OUTLINED_FUNCTION_39(), "mipmapLevelCount"), v57, 1];
              SCNMTLRenderCommandEncoder::setFragmentTexture(v7[31], v3, 0);
              *&v58 = *&v77 + (v57 * v38);
              DWORD1(v58) = v72;
              *(&v58 + 1) = v82 | 0x3E00000000000000;
              *v132 = v58;
              OUTLINED_FUNCTION_1_8(v59, v60, v61, v62, v63, v64, v65, v66, v72, v74, v77, *(&v77 + 1), v82, *(&v82 + 1), v85, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131);
              v67 = v7[31];
              SCNMTLRenderCommandEncoder::_bindPendingTextures(v67, v68);
              SCNMTLRenderCommandEncoder::applyChangedStates(v67);
              OUTLINED_FUNCTION_6_1(*(v67 + 3392), v69);

              ++v57;
            }

            while (v57 < [v39 arrayLength]);
          }
        }

        goto LABEL_19;
      }

      v40 = v7[1925];
    }

    [v40 state];
    OUTLINED_FUNCTION_27();
    if (!v42)
    {
      OUTLINED_FUNCTION_12_0(v41);
    }

    OUTLINED_FUNCTION_19();
    LODWORD(v43) = v77;
    *(&v43 + 1) = (v33 * -0.135) + 0.865;
    *(&v43 + 1) = __PAIR64__(0.125, v82);
    *v132 = v43;
    OUTLINED_FUNCTION_1_8(v44, v45, v46, v47, v48, v49, v50, v51, v70, *(&v70 + 1), v77, *(&v77 + 1), v82, *(&v82 + 1), v85, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131);
    v52 = v7[31];
    SCNMTLRenderCommandEncoder::_bindPendingTextures(v52, v53);
    SCNMTLRenderCommandEncoder::applyChangedStates(v52);
    OUTLINED_FUNCTION_6_1(*(v52 + 3392), v54);
LABEL_19:
    ++v33;
    goto LABEL_20;
  }

LABEL_29:
  OUTLINED_FUNCTION_17();
}

- (void)_drawFullScreenTexture:(unsigned int)texture over:
{
  if (result)
  {
    OUTLINED_FUNCTION_5_1();
    v6 = *(C3DEngineContextGetRenderGraph(*(v5 + 144)) + 152);
    v7 = [objc_msgSend(objc_msgSend(v6 "depthAttachment")];
    v8 = [objc_msgSend(objc_msgSend(v6 "stencilAttachment")];
    v9 = 0;
    v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v7)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v7)))) >> 47));
    do
    {
      v11 = [objc_msgSend(v6 "colorAttachments")];
      v12 = [objc_msgSend(v11 "texture")];
      v13 = [objc_msgSend(v11 "texture")];
      v14 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v12 ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ v10)));
      v15 = 0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47));
      ++v9;
      v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * (v15 ^ v13)) >> 47) ^ (0x9DDFEA08EB382D69 * (v15 ^ v13)))) ^ ((0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * (v15 ^ v13)) >> 47) ^ (0x9DDFEA08EB382D69 * (v15 ^ v13)))) >> 47));
    }

    while (v9 != 8);
    v16 = v3 + 16 * texture + 15304;
    if (*v16 != v10)
    {
      *v16 = v10;
      frameworkLibrary = [-[SCNMTLResourceManager libraryManager](*(v3 + 112)) frameworkLibrary];
      bzero(__src, 0x168uLL);
      __src[15] = frameworkLibrary;
      if (texture)
      {
        v20 = @"scn_draw_fullscreen_fragment_sk";
        v21 = C3DBlendStatesDefaultOver(v18, v19);
      }

      else
      {
        v21 = 0;
        v20 = @"scn_draw_fullscreen_gamma_fragment";
      }

      __src[27] = v21;
      __src[39] = @"scn_draw_fullscreen_triangle_vertex";
      __src[40] = v20;
      RenderGraph = C3DEngineContextGetRenderGraph(*(v3 + 144));
      SCNMTLRenderPipelineApplyRenderPassDescriptor(&__src[16], *(RenderGraph + 152));

      v23 = *(v3 + 112);
      memcpy(v28, __src, sizeof(v28));
      *(v16 + 8) = [v23 newRenderPipelineStateWithDesc:v28];
    }

    v24 = *(v3 + 248);
    if ((*(v24 + 73) & 1) == 0 && *(v24 + 16))
    {
      *(v24 + 16) = 0;
      *(v24 + 41) = 1;
    }

    [*(v24 + 3392) setDepthStencilState:-[SCNMTLResourceManager depthAndStencilStateWithReadWriteDepthDisabled](*(v3 + 112))];
    [*(v16 + 8) state];
    OUTLINED_FUNCTION_27();
    if (!v26)
    {
      OUTLINED_FUNCTION_12_0(v25);
    }

    OUTLINED_FUNCTION_19();
    return SCNMTLRenderCommandEncoder::drawFullScreenTriangle(*(v3 + 248), v27);
  }

  return result;
}

- (double)renderTime
{
  if (!self)
  {
    return 0.0;
  }

  LODWORD(result) = *(self + 2728);
  return result;
}

- (void)renderSKSceneWithRenderer:overlay:atTime:
{
  OUTLINED_FUNCTION_44();
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v2;
  OUTLINED_FUNCTION_5_1();
  [v5 updateAtTime:?];
  v6 = *(v0 + 216);
  if (C3DLinearRenderingIsEnabled())
  {
    commandBuffer = [-[SCNMTLRenderContext commandQueue](v0) commandBuffer];
    v8 = [objc_msgSend(objc_msgSend(v6 "colorAttachments")];
    if (!v8)
    {
      v8 = [objc_msgSend(objc_msgSend(v6 "colorAttachments")];
      if (!v8)
      {
LABEL_5:
        OUTLINED_FUNCTION_17();
        return;
      }
    }

    v13 = v8;
    width = [v8 width];
    height = [v13 height];
    pixelFormat = [v13 pixelFormat];
    v17 = SCNMTLPixelFormatNonSRGBVariant(pixelFormat);
    if (pixelFormat == 555)
    {
      v18 = 552;
    }

    else
    {
      v18 = v17;
    }

    v19 = 0x277CD7000;
    if (v4)
    {
      v20 = (v0 + 15352);
      v21 = *(v0 + 15352);
      if (!v21)
      {
        goto LABEL_24;
      }

      [v21 width];
      v21 = OUTLINED_FUNCTION_41();
      if (v22 != width)
      {
        goto LABEL_24;
      }

      [v21 height];
      v21 = OUTLINED_FUNCTION_41();
      if (v23 != height)
      {
        goto LABEL_24;
      }

      if ([v21 pixelFormat] == v18)
      {
LABEL_25:
        v29 = *v20;
        width2 = [*v20 width];
        if (width2 == [*(v0 + 15360) width] && (v31 = objc_msgSend(v29, "height"), v31 == objc_msgSend(*(v0 + 15360), "height")))
        {
          v32 = *(v0 + 15360);
        }

        else
        {
          v33 = [*(v19 + 88) texture2DDescriptorWithPixelFormat:260 width:width height:height mipmapped:0];
          [v33 setStorageMode:2];
          [v33 setUsage:4];

          v32 = [*(v0 + 120) newTextureWithDescriptor:v33];
          *(v0 + 15360) = v32;
        }

        renderPassDescriptor = [MEMORY[0x277CD6F50] renderPassDescriptor];
        [objc_msgSend(objc_msgSend(renderPassDescriptor "colorAttachments")];
        [objc_msgSend(objc_msgSend(renderPassDescriptor "colorAttachments")];
        [objc_msgSend(objc_msgSend(renderPassDescriptor "colorAttachments")];
        [objc_msgSend(objc_msgSend(renderPassDescriptor "colorAttachments")];
        [objc_msgSend(renderPassDescriptor "depthAttachment")];
        CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(*(v0 + 144), v35);
        depthAttachment = [renderPassDescriptor depthAttachment];
        v38 = 1.0;
        if ((CoordinatesSystemOptions & 8) != 0)
        {
          v38 = 0.0;
        }

        [depthAttachment setClearDepth:v38];
        [objc_msgSend(renderPassDescriptor "depthAttachment")];
        [objc_msgSend(renderPassDescriptor "depthAttachment")];
        [objc_msgSend(renderPassDescriptor "stencilAttachment")];
        [objc_msgSend(renderPassDescriptor "stencilAttachment")];
        [objc_msgSend(renderPassDescriptor "stencilAttachment")];
        v39 = [commandBuffer renderCommandEncoderWithDescriptor:renderPassDescriptor];
        [v1 renderWithEncoder:v39 pass:renderPassDescriptor commandQueue:-[SCNMTLRenderContext commandQueue](v0)];
        [v39 endEncoding];
        [commandBuffer commit];
        OUTLINED_FUNCTION_17();

        [(SCNMTLRenderContext *)v40 _drawFullScreenTexture:v41 over:v42];
        return;
      }
    }

    else
    {
      v20 = (v0 + 15344);
      v21 = *(v0 + 15344);
      if (!v21)
      {
LABEL_24:

        v28 = [*(v19 + 88) texture2DDescriptorWithPixelFormat:v18 width:width height:height mipmapped:0];
        [v28 setStorageMode:2];
        [v28 setUsage:21];
        *v20 = [*(v0 + 120) newTextureWithDescriptor:v28];
        goto LABEL_25;
      }

      width3 = [v21 width];
      [v13 width];
      v21 = OUTLINED_FUNCTION_41();
      if (width3 != v25 || (v26 = [v21 height], objc_msgSend(v13, "height"), v21 = OUTLINED_FUNCTION_41(), v26 != v27))
      {
        v19 = 0x277CD7000uLL;
        goto LABEL_24;
      }

      v19 = 0x277CD7000;
      if ([v21 pixelFormat] == v18)
      {
        goto LABEL_25;
      }
    }

    v21 = *v20;
    goto LABEL_24;
  }

  [OUTLINED_FUNCTION_5_2() pushDebugGroup:@"SpriteKit - NonLinear Encoding"];
  [v1 renderWithEncoder:*(*(v0 + 248) + 3392) pass:v6 commandQueue:-[SCNMTLRenderContext commandQueue](v0)];
  v9 = *(v0 + 248);
  v10 = *(v9 + 3400);
  v44 = *(v9 + 3384);
  bzero(v9, 0xD70uLL);
  *(v9 + 64) = 1;
  *(v9 + 72) = 1;
  *(v9 + 3384) = v44;
  *(v9 + 3400) = v10;
  *(v9 + 40) = 257;
  OUTLINED_FUNCTION_36(1);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_17();

  [v11 popDebugGroup];
}

- (uint64_t)setCurrentPassHash:(uint64_t)result
{
  if (result)
  {
    *(result + 15456) = a2;
  }

  return result;
}

- (uint64_t)setCurrentPassMaterial:(uint64_t)result
{
  if (result)
  {
    *(result + 15464) = a2;
  }

  return result;
}

- (uint64_t)getCurrentPassHash
{
  if (result)
  {
    return *(result + 15456);
  }

  return result;
}

- (uint64_t)getCurrentPassMaterial
{
  if (result)
  {
    return *(result + 15464);
  }

  return result;
}

- (uint64_t)cubeArrayTypeIfSupported
{
  if (result)
  {
    if (*(result + 137))
    {
      return 6;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

- (void)addCommandBufferScheduledHandler:(uint64_t)handler
{
  v8[2] = *MEMORY[0x277D85DE8];
  if (handler)
  {
    OUTLINED_FUNCTION_5_1();
    os_unfair_lock_lock(v3 + 3872);
    v4 = [v2 copy];
    v5 = v4;
    if (*(v1 + 15496))
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v7 = *(v1 + 15496);
      if (isKindOfClass)
      {
        [OUTLINED_FUNCTION_38() addObject:?];
      }

      else
      {
        v8[0] = *(v1 + 15496);
        v8[1] = v5;
        *(v1 + 15496) = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:v8 count:2];
      }
    }

    else
    {
      *(v1 + 15496) = v4;
    }

    os_unfair_lock_unlock((v1 + 15488));
  }
}

- (void)addCommandBufferCompletedHandler:(uint64_t)handler
{
  v8[2] = *MEMORY[0x277D85DE8];
  if (handler)
  {
    OUTLINED_FUNCTION_5_1();
    os_unfair_lock_lock(v3 + 3872);
    v4 = [v2 copy];
    v5 = v4;
    if (*(v1 + 15504))
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v7 = *(v1 + 15504);
      if (isKindOfClass)
      {
        [OUTLINED_FUNCTION_38() addObject:?];
      }

      else
      {
        v8[0] = *(v1 + 15504);
        v8[1] = v5;
        *(v1 + 15504) = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:v8 count:2];
      }
    }

    else
    {
      *(v1 + 15504) = v4;
    }

    os_unfair_lock_unlock((v1 + 15488));
  }
}

- (void)addDrawablePresentedHandler:(uint64_t)handler
{
  v8[2] = *MEMORY[0x277D85DE8];
  if (handler)
  {
    OUTLINED_FUNCTION_5_1();
    os_unfair_lock_lock(v3 + 3872);
    v4 = [v2 copy];
    v5 = v4;
    if (*(v1 + 15512))
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v7 = *(v1 + 15512);
      if (isKindOfClass)
      {
        [OUTLINED_FUNCTION_38() addObject:?];
      }

      else
      {
        v8[0] = *(v1 + 15512);
        v8[1] = v5;
        *(v1 + 15512) = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:v8 count:2];
      }
    }

    else
    {
      *(v1 + 15512) = v4;
    }

    os_unfair_lock_unlock((v1 + 15488));
  }
}

- (void)discardPendingCommandBufferScheduledHandlers
{
  if (self)
  {
    OUTLINED_FUNCTION_32(self);

    *(v1 + 15496) = 0;

    os_unfair_lock_unlock((v1 + v2));
  }
}

- (void)discardPendingCommandBufferCompletedHandlers
{
  if (self)
  {
    OUTLINED_FUNCTION_32(self);

    *(v1 + 15504) = 0;

    os_unfair_lock_unlock((v1 + v2));
  }
}

- (void)discardPendingDrawablePresentedHandlers
{
  if (self)
  {
    OUTLINED_FUNCTION_32(self);

    *(v1 + 15512) = 0;

    os_unfair_lock_unlock((v1 + v2));
  }
}

- (uint64_t)_allowGPUBackgroundExecution
{
  if (result && !result[1942] && !result[1945])
  {
    v1 = result[20];
    if (v1)
    {
      commandQueue = result[20];
    }

    else
    {
      commandQueue = [(SCNMTLResourceManager *)result[14] commandQueue];
      v1 = commandQueue;
    }

    result = [commandQueue getBackgroundGPUPriority];
    if (result == 3)
    {

      return [v1 setBackgroundGPUPriority:2];
    }
  }

  return result;
}

- (void)_SCNSceneRendererMainPassCustomPostProcessSupportDrawSceneBackgroundUsingEncoder:(uint64_t)encoder commandBuffer:(uint64_t)buffer renderPassDescriptor:
{
  if (self)
  {
    OUTLINED_FUNCTION_26();
    Scene = C3DEngineContextGetScene(*(v8 + 144), v9);
    BackgroundEffectSlot = C3DSceneGetBackgroundEffectSlot(Scene, 0);
    if (BackgroundEffectSlot)
    {
      v12 = BackgroundEffectSlot;
      v13 = v4[31];
      if (*(v13 + 3392) == v5)
      {
        v19 = v4[18];

        C3DEngineContextRenderBackgroundMap(v19, v12, 0);
      }

      else
      {
        v14 = v4[27];
        v4[31] = v21;
        v4[27] = buffer;
        SCNMTLRenderCommandEncoder::useCommandEncoder(v21, encoder, v5, v4[261]);
        v15 = v4[31];
        v16 = *(v15 + 3400);
        v20 = *(v15 + 3384);
        bzero(v15, 0xD70uLL);
        *(v15 + 64) = 1;
        *(v15 + 72) = 1;
        *(v15 + 3384) = v20;
        *(v15 + 3400) = v16;
        *(v15 + 40) = 257;
        *(v15 + 42) = 1;
        *(v15 + 8) = 0u;
        *(v15 + 24) = 0u;
        v17 = v4[31];
        v18 = *v17 ^ 1;
        if (*(v17 + 1) != v18)
        {
          *(v17 + 1) = v18;
          v17[40] = 1;
        }

        C3DEngineContextRenderBackgroundMap(v4[18], v12, 0);
        v4[31] = v13;
        v4[27] = v14;
      }
    }
  }
}

- (uint64_t)clientRenderPassDescriptor
{
  if (result)
  {
    return *(result + 15520);
  }

  return result;
}

- (uint64_t)clientRenderCommandEncoder
{
  if (result)
  {
    return *(result + 15528);
  }

  return result;
}

- (uint64_t)clientCommandBuffer
{
  if (result)
  {
    return *(result + 15536);
  }

  return result;
}

- (uint64_t)setDebugOptions:(uint64_t)result
{
  if (result)
  {
    *(result + 15544) = a2;
  }

  return result;
}

- (double)contentScaleFactor
{
  if (self)
  {
    return *(self + 15552);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)setContentScaleFactor:(uint64_t)result
{
  if (result)
  {
    *(result + 15552) = a2;
  }

  return result;
}

- (uint64_t)frameTexturePool
{
  if (result)
  {
    return *(result + 2096);
  }

  return result;
}

- (uint64_t)setShouldPresentAfterMinimumDuration:(uint64_t)result
{
  if (result)
  {
    *(result + 212) = a2;
  }

  return result;
}

- (uint64_t)renderEncoder
{
  if (result)
  {
    return *(result + 248);
  }

  return result;
}

- (id)resourceManagerMonitor
{
  if (result)
  {
    return OUTLINED_FUNCTION_13_0(result, 15472);
  }

  return result;
}

- (id)setResourceManagerMonitor:(id)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_14(result, a2, 15472);
  }

  return result;
}

- (id)commandBufferStatusMonitor
{
  if (result)
  {
    return OUTLINED_FUNCTION_13_0(result, 15480);
  }

  return result;
}

- (id)setCommandBufferStatusMonitor:(id)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_14(result, a2, 15480);
  }

  return result;
}

- (uint64_t)generatedTexturePath
{
  if (result)
  {
    return *(result + 15568);
  }

  return result;
}

void __34__SCNMTLRenderContext_beginFrame___block_invoke_cold_1(void *a1)
{
  [a1 status];
  [OUTLINED_FUNCTION_20() error];
  [OUTLINED_FUNCTION_39() logs];
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_2_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

- (uint64_t)_createResourceCommandBufferIfNeeded
{
  os_variant_has_internal_diagnostics();
  commandBuffer = [-[SCNMTLRenderContext commandQueue](self) commandBuffer];
  *a2 = commandBuffer;
  *a3 = MEMORY[0x277D85DD0];
  a3[1] = 3221225472;
  a3[2] = __59__SCNMTLRenderContext__createResourceCommandBufferIfNeeded__block_invoke;
  a3[3] = &unk_2782FD3F8;
  a3[4] = self;
  return [commandBuffer addCompletedHandler:a3];
}

void __59__SCNMTLRenderContext__createResourceCommandBufferIfNeeded__block_invoke_cold_1(void *a1)
{
  [a1 status];
  [OUTLINED_FUNCTION_20() error];
  [OUTLINED_FUNCTION_39() logs];
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_2_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

- (void)startProcessingRendererElementsWithEngineIterationContext:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_processingContext.passInstance";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)startProcessingRendererElementsWithEngineIterationContext:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "engineIterationContext->engineContext == _engineContext";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. unexpected engine context", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_executeDrawCommand:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "dynamicBatchCount < 2";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. C3DDeformerTransforms is not supported when instancing is active", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_executeDrawCommand:(uint64_t)a3 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "meshElement == NULL";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. ", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_executeDrawCommand:(uint64_t)a3 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "C3DGeometryGetMeshElementCountForDeformerBasedDynamicMesh(geometry) == 1";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. ", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_executeDrawCommand:(uint64_t)a3 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_cache.metalMeshElement";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_executeDrawCommand:(uint64_t *)a3 .cold.7(uint8_t *a1, void *a2, uint64_t *a3)
{
  v5 = [a2 name];
  *a1 = 138412290;
  *a3 = v5;
  OUTLINED_FUNCTION_8_2();
  _os_log_error_impl(v6, v7, v8, v9, a1, 0xCu);
}

- (void)_executeDrawCommand:(NSObject *)a3 .cold.8(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "resourceBinding.bindBlock";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a3, a3, "Assertion '%s' failed. Null argument", a1);
}

- (void)_executeDrawCommand:(NSObject *)a3 .cold.9(uint8_t *a1, _BYTE *a2, NSObject *a3)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_0_2(&dword_21BEF7000, a3, a3, "Error: binding is broken : neither block or semantic", a1);
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_4_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "size == C3D_MAX_LIGHTS";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Light indices buffer has wrong size", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_10_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "size == sizeof(coefs)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. size mismatch for sh coefficients", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_6_228_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "3 == C3DLightProbesSystemGetSphericalHarmonicsOrder(probesSystem)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. only shOrder 3 supported with function constants", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_9_334_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "size <= (sizeof(simd_float4x4) * C3D_MAX_CASCADE_COUNT)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Cannot set more than 4 matrices for cascade shadows", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_5_355_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "buffer";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_6_393_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "deformerStack";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_recycleMTLBufferToPool:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "mtlBuffer != nil";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. MeshElement should be mapped", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end