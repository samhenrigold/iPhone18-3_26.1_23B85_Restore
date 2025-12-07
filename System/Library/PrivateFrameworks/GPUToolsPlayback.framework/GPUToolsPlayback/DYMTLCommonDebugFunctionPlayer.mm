@interface DYMTLCommonDebugFunctionPlayer
+ (id)harvestableTexture:(id)texture;
+ (id)thumbnailTexture:(unint64_t)texture;
- (AttachmentInfo)_attachmentInfoForCommandEncoderID:(SEL)d;
- (BOOL)isBlitSamplingSupported;
- (BOOL)isCounterAvailable:(id)available;
- (BOOL)setupProfilingForListAtIndex:(unint64_t)index;
- (DYMTLCommonDebugFunctionPlayer)initWithCaptureStore:(id)store;
- (id).cxx_construct;
- (id)_generateDummyPipeline:(id)pipeline;
- (id)_generateThumbnailAndResourceInfoForRequestedTextures:(id)textures resolution:(id *)resolution commandBuffer:(id)buffer;
- (id)_texture2DFromTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice depthPlane:(unint64_t)plane commandBuffer:(id)buffer;
- (id)collectPixelDrawStats:(id)stats originalEncoderId:(unint64_t)id originalEncoder:(id)encoder originalPipeline:(id)pipeline atX:(unint64_t)x y:(unint64_t)y draw:(id)draw;
- (id)collectPixelDrawStatsTotal:(id)total originalPipeline:(id)pipeline atX:(unint64_t)x y:(unint64_t)y draw:(id)draw;
- (id)counterInfo:(id)info;
- (id)dependencyGraphThumbnailCache;
- (id)derivedCounterData;
- (id)generatePerPrimitiveHistory:(unint64_t)history commandQueue:(id)queue currentEncoderId:(unint64_t)id originalEncoder:(id)encoder originalPipeline:(id)pipeline atX:(unint64_t)x y:(unint64_t)y;
- (id)generatePerPrimitiveHistory_drawPrimitives_vertexStart_vertexCount:(unint64_t)count vertexStart:(unint64_t)start vertexCount:(unint64_t)vertexCount total:(unint64_t)total commandQueue:(id)queue currentEncoderId:(unint64_t)id originalEncoder:(id)encoder originalPipeline:(id)self0 atX:(unint64_t)self1 y:(unint64_t)self2;
- (id)pixelHistoryCache;
- (id)replayerLayerForDrawableId:(unint64_t)id;
- (id)setupCounterConfigurationAndGetFrameProfilerCounters;
- (id)thumbnailCache;
- (unint64_t)_executeIndirectCommandBufferUpToSubIndex:(unint64_t)index outBuffer:(id *)buffer outDataPointer:(const char *)pointer;
- (unint64_t)getStatLocations;
- (void)_addRenderPassDescriptorToEncoderMapFromArgumentPointer:(void *)pointer forEncoder:(unint64_t)encoder;
- (void)_addRenderPassDescriptorToEncoderMapFromRenderPassDescriptor:(DYMTLRenderPassDescriptor *)descriptor forEncoder:(unint64_t)encoder;
- (void)_createBatchIdFilterMapping:(BOOL)mapping withCommandEncoder:(id)encoder;
- (void)_endEncodingForAllRemainingEncoders:(void *)encoders;
- (void)_executeGraphicsFunction;
- (void)_extractTileMemoryWithRenderPassDescriptor:(DYMTLRenderPassDescriptor *)descriptor renderEncoderID:(unint64_t)d isDrawCall:(BOOL)call;
- (void)_forceAttachmentLoadActionToLoad:(id)load;
- (void)_forceAttachmentStoreActionToStore:(id)store;
- (void)_modifyDescriptorForLayering:(id)layering withBuffer:(id)buffer;
- (void)_modifyDescriptorForStore:(id)store;
- (void)_setupEncodersForBatchIdFiltering;
- (void)_splitBlitEncoder;
- (void)_splitCommandEncoders;
- (void)_splitComputeEncoder;
- (void)_splitRenderEncoders;
- (void)_superExecutePlatformFunction;
- (void)_swizzleAttachmentTextureForLoad:(id)load withBuffer:(id)buffer;
- (void)_trackObjects;
- (void)_updateMemorylessTextures:(id)textures;
- (void)_updateRemainingCommandsForEncoder;
- (void)allowOverlap:(BOOL)overlap withPState:(unsigned int)state;
- (void)commitEncodersAndCommandBuffers;
- (void)enableConsistentState:(BOOL)state;
- (void)enableStatsSampling:(BOOL)sampling;
- (void)encodeStoreActionForParallelRenderCommandEncoder:(id)encoder withDescriptor:(id)descriptor;
- (void)encodeStoreActionForRenderCommandEncoder:(id)encoder withDescriptor:(id)descriptor;
- (void)executeFunctions:(CoreFunction *)functions count:(unint64_t)count subCommandIndex:(unsigned int)index;
- (void)executeGraphicsFunction;
- (void)executePlatformFunction;
- (void)extractCommandBufferTranslationData;
- (void)extractComputeIndirectArgumentBuffers:(void *)buffers;
- (void)extractIndirectArgumentBuffers;
- (void)extractRenderIndirectArgumentBuffers:(void *)buffers;
- (void)prepareForCaptureExecution;
- (void)presentDrawable;
- (void)resetPixelHistoryCache;
- (void)sampleEncoderCounters;
- (void)sampleSplitEncoderCounters;
- (void)setConsistentStateTo:(unsigned int)to;
- (void)setDevice:(id)device;
- (void)setStatLocations:(unint64_t)locations;
- (void)setupAllStatLocationsWithBlitOption:(BOOL)option;
- (void)setupFrameTimeProfiling;
- (void)setupProfileInfo:(id)info;
- (void)setupProfilingForCounterLists;
- (void)stopFrameProfiling;
- (void)updateReplayerLayer:(unint64_t)layer withOriginalLayer:(unint64_t)originalLayer;
- (void)waitForCommmandBuffersCompletion;
@end

@implementation DYMTLCommonDebugFunctionPlayer

- (void)setDevice:(id)device
{
  deviceCopy = device;
  v19.receiver = self;
  v19.super_class = DYMTLCommonDebugFunctionPlayer;
  [(DYMTLFunctionPlayer *)&v19 setDevice:deviceCopy];
  device = [(DYMTLFunctionPlayer *)self device];
  self->_supportsTessellation = [device supportsFeatureSet:7];

  v6 = [[DYMTLDebugWireframeRenderer alloc] initWithDebugFunctionPlayer:self];
  wireframeRenderer = self->_wireframeRenderer;
  self->_wireframeRenderer = v6;

  v8 = [[DYMTLPostVertexDump alloc] initWithDebugFunctionPlayer:self];
  postVertexDump = self->_postVertexDump;
  self->_postVertexDump = v8;

  v10 = [[DYMTLShaderDebuggerTraceGenerator alloc] initWithDebugFunctionPlayer:self];
  shaderDebuggerTraceGenerator = self->_shaderDebuggerTraceGenerator;
  self->_shaderDebuggerTraceGenerator = v10;

  v12 = [DYMTLTextureRenderer alloc];
  device2 = [(DYMTLFunctionPlayer *)self device];
  v14 = [(DYMTLTextureRenderer *)v12 initWithDevice:device2];
  textureRenderer = self->_textureRenderer;
  self->_textureRenderer = v14;

  v16 = [[DYMTLPixelHistoryDrawStatsSupport alloc] initWithDebugFunctionPlayer:self];
  pixelHistoryDrawStatsRenderer = self->_pixelHistoryDrawStatsRenderer;
  self->_pixelHistoryDrawStatsRenderer = v16;

  name = [deviceCopy name];
  self->_isAGXDevice = [name compare:@"Unknown Unknown"] == 0;
}

- (DYMTLCommonDebugFunctionPlayer)initWithCaptureStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = DYMTLCommonDebugFunctionPlayer;
  v5 = [(DYMTLFunctionPlayer *)&v12 initWithCaptureStore:storeCopy];
  if (v5)
  {
    v6 = objc_opt_new();
    thumbnailDictionary = v5->_thumbnailDictionary;
    v5->_thumbnailDictionary = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dependencyGraphThumbnails = v5->_dependencyGraphThumbnails;
    v5->_dependencyGraphThumbnails = v8;

    [(DYMTLCommonDebugFunctionPlayer *)v5 resetPixelHistoryCache];
    if ([DYMTLCommonDebugFunctionPlayer initWithCaptureStore:]::onceToken != -1)
    {
      [DYMTLCommonDebugFunctionPlayer initWithCaptureStore:];
    }

    v10 = v5;
  }

  return v5;
}

void __55__DYMTLCommonDebugFunctionPlayer_initWithCaptureStore___block_invoke()
{
  v0 = objc_opt_new();
  v1 = sMemorylessTexturesAndReplacements;
  sMemorylessTexturesAndReplacements = v0;

  v2 = objc_opt_new();
  v3 = sThumbnailTextures;
  sThumbnailTextures = v2;
}

- (id)thumbnailCache
{
  v10[2] = *MEMORY[0x277D85DE8];
  device = [(DYMTLFunctionPlayer *)self device];
  v4 = [(DYMTLFunctionPlayer *)self keyForOriginalObject:device];

  v9[0] = *MEMORY[0x277D0B4B0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v4];
  v10[0] = v5;
  v9[1] = *MEMORY[0x277D0B4C0];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:self->_thumbnailDictionary];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (id)dependencyGraphThumbnailCache
{
  v10[2] = *MEMORY[0x277D85DE8];
  device = [(DYMTLFunctionPlayer *)self device];
  v4 = [(DYMTLFunctionPlayer *)self keyForOriginalObject:device];

  v9[0] = *MEMORY[0x277D0B4B0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v4];
  v10[0] = v5;
  v9[1] = *MEMORY[0x277D0B4C0];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:self->_dependencyGraphThumbnails];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (void)resetPixelHistoryCache
{
  v3 = objc_opt_new();
  pixelHistory = self->_pixelHistory;
  self->_pixelHistory = v3;

  v5 = objc_opt_new();
  [(NSMutableDictionary *)self->_pixelHistory setObject:v5 forKeyedSubscript:*MEMORY[0x277D0B3D0]];

  v6 = objc_opt_new();
  [(NSMutableDictionary *)self->_pixelHistory setObject:v6 forKeyedSubscript:*MEMORY[0x277D0B430]];

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::clear(&self->_pixelHistoryInverseObjectMap.__table_.__bucket_list_.__ptr_);
  v7 = objc_opt_new();
  pixelHistoryEncoderStateTrackings = self->_pixelHistoryEncoderStateTrackings;
  self->_pixelHistoryEncoderStateTrackings = v7;
}

- (id)pixelHistoryCache
{
  v10[2] = *MEMORY[0x277D85DE8];
  device = [(DYMTLFunctionPlayer *)self device];
  v4 = [(DYMTLFunctionPlayer *)self keyForOriginalObject:device inverseObjectMap:&self->_pixelHistoryInverseObjectMap];

  v9[0] = *MEMORY[0x277D0B4B0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v4];
  v10[0] = v5;
  v9[1] = *MEMORY[0x277D0B4C0];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:self->_pixelHistory];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (id)_generateThumbnailAndResourceInfoForRequestedTextures:(id)textures resolution:(id *)resolution commandBuffer:(id)buffer
{
  texturesCopy = textures;
  bufferCopy = buffer;
  v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = MEMORY[0x277D25728];
  device = [(DYMTLFunctionPlayer *)self device];
  v53 = [v8 forDevice:device];

  v10 = 0;
  v11 = *MEMORY[0x277D0B0E8];
  v58 = *MEMORY[0x277D0B0F8];
  v57 = *MEMORY[0x277D0B0F0];
  v56 = *MEMORY[0x277D0B0E0];
  v55 = *MEMORY[0x277D0B0D8];
  v48 = *MEMORY[0x277D0B108];
  v47 = *MEMORY[0x277D0B228];
  v60 = texturesCopy;
  selfCopy = self;
  v52 = *MEMORY[0x277D0B0E8];
  while (v10 < [texturesCopy count])
  {
    v12 = [texturesCopy objectAtIndexedSubscript:v10];
    v13 = [v12 objectForKeyedSubscript:v11];
    v14 = v13;
    if (v13)
    {
      unsignedLongLongValue = [v13 unsignedLongLongValue];
      v16 = [v12 objectForKeyedSubscript:v58];
      unsignedLongLongValue2 = [v16 unsignedLongLongValue];

      v18 = [v12 objectForKeyedSubscript:v57];
      unsignedLongLongValue3 = [v18 unsignedLongLongValue];

      v20 = [v12 objectForKeyedSubscript:v56];
      unsignedLongLongValue4 = [v20 unsignedLongLongValue];

      v62 = [v12 objectForKeyedSubscript:v55];
      v22 = [(DYMTLFunctionPlayer *)self objectForKey:unsignedLongLongValue];
      if (v22)
      {
        v23 = sMemorylessTexturesAndReplacements;
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v22];
        v25 = [v23 objectForKeyedSubscript:v24];

        v59 = v25;
        if (v25)
        {
          v26 = v25;

          v22 = v26;
        }

        textureType = [v22 textureType];
        if (textureType > 9)
        {
          v28 = v22;
        }

        else
        {
          if (((1 << textureType) & 0x2EF) != 0)
          {
            [v53 textureFromTexture:v22 slice:unsignedLongLongValue2 level:unsignedLongLongValue3 depthPlane:unsignedLongLongValue4 commandBuffer:bufferCopy];
          }

          else
          {
            [v53 resolveMultisampleTexture:v22 slice:unsignedLongLongValue2 level:unsignedLongLongValue3 depthPlane:unsignedLongLongValue4 commandBuffer:bufferCopy];
          }
          v28 = ;

          if (v62 && [v62 unsignedLongLongValue] == 9 && objc_msgSend(v28, "pixelFormat") == 260)
          {
            v29 = [v53 stencilTextureFromTexture:v28 commandBuffer:bufferCopy];

            v28 = v29;
          }

          if (v28)
          {
            if (objc_opt_respondsToSelector())
            {
              isSparse = [v28 isSparse];
              v63 = *&resolution->var0;
              var2 = resolution->var2;
              if (isSparse)
              {
                sparseTextureFence = selfCopy->_sparseTextureFence;
              }

              else
              {
                sparseTextureFence = 0;
              }
            }

            else
            {
              sparseTextureFence = 0;
              v63 = *&resolution->var0;
              var2 = resolution->var2;
            }

            v32 = [v53 generateThumbnailFromTexture:v28 commandBuffer:bufferCopy resolution:&v63 withFence:sparseTextureFence];
            if (v32)
            {
              v61 = objc_alloc_init(MEMORY[0x277CBEB38]);
              pixelFormat = [v28 pixelFormat];
              v34 = 10;
              if (pixelFormat != 1)
              {
                v34 = pixelFormat;
              }

              if (pixelFormat == 261)
              {
                v35 = 253;
              }

              else
              {
                v35 = v34;
              }

              v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedLongLongValue];
              [v61 setObject:v36 forKeyedSubscript:v52];

              v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v32];
              [v61 setObject:v37 forKeyedSubscript:v48];

              v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v35];
              [v61 setObject:v38 forKeyedSubscript:v47];

              if (v62)
              {
                [v61 setObject:v62 forKeyedSubscript:v55];
                v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedLongLongValue2];
                [v61 setObject:v39 forKeyedSubscript:v58];

                v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedLongLongValue3];
                [v61 setObject:v40 forKeyedSubscript:v57];

                v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedLongLongValue4];
                [v61 setObject:v41 forKeyedSubscript:v56];
              }

              [v49 addObject:v61];
              v42 = sThumbnailTextures;
              v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v32];
              [v42 objectForKey:v43];

              v44 = sThumbnailTextures;
              v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v32];
              [v44 setObject:v32 forKey:v45];
            }
          }
        }

        self = selfCopy;
        v11 = v52;
      }
    }

    ++v10;
    texturesCopy = v60;
  }

  return v49;
}

- (void)executeFunctions:(CoreFunction *)functions count:(unint64_t)count subCommandIndex:(unsigned int)index
{
  v5 = *&index;
  if ([(DYMTLCommonDebugFunctionPlayer *)self shouldIgnoreCaptureFile]&& [(DYFunctionPlayer *)self mainExecutionMode])
  {
    *(&self->super.super.super.super.isa + *MEMORY[0x277D0AFA0]) = &functions[count];
    *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF88]) += count;
    *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF80]) += count;
  }

  else
  {
    v9 = &functions[count];
    v10 = v9 - 1;
    if ((GPUTools::MTL::IsFuncEnumDrawCall(v9[-1].var0) & 1) != 0 || (GPUTools::MTL::IsFuncEnumIndirectExecuteDrawCall(v10->var0) & 1) != 0 || GPUTools::MTL::IsFuncEnumTileCall(v10->var0))
    {
      self->_targetCommandEncoderId = v9[-1].var4.var0;
    }

    v11.receiver = self;
    v11.super_class = DYMTLCommonDebugFunctionPlayer;
    [(DYFunctionPlayer *)&v11 executeFunctions:functions count:count subCommandIndex:v5];
  }
}

- (void)_splitBlitEncoder
{
  v10 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + *MEMORY[0x277D0AFA0]) + 48, 0);
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_encoderMap.__table_.__bucket_list_.__ptr_, &v10);
  if (v3)
  {
    v4 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_commandBufferMap.__table_.__bucket_list_.__ptr_, v3 + 3);
    if (v4)
    {
      v5 = v4;
      v6 = [(DYMTLFunctionPlayer *)self objectForKey:v10];
      if ([v6 conformsToProtocol:&unk_2860CCA30])
      {
        if (self->_nRemainingCommandsForCurrentEncoder)
        {
          v7 = [(DYMTLFunctionPlayer *)self objectForKey:v5[2]];
          v8 = objc_autoreleasePoolPush();
          [v6 endEncoding];
          blitCommandEncoder = [v7 blitCommandEncoder];
          [(DYMTLFunctionPlayer *)self setObject:blitCommandEncoder forKey:v10];

          objc_autoreleasePoolPop(v8);
        }
      }
    }
  }
}

- (void)_splitComputeEncoder
{
  v14 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + *MEMORY[0x277D0AFA0]) + 48, 0);
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_encoderMap.__table_.__bucket_list_.__ptr_, &v14);
  if (v3)
  {
    v4 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_commandBufferMap.__table_.__bucket_list_.__ptr_, v3 + 3);
    if (v4)
    {
      v5 = v4;
      v6 = [(DYMTLFunctionPlayer *)self objectForKey:v14];
      if ([v6 conformsToProtocol:&unk_2860CC178] && self->_nRemainingCommandsForCurrentEncoder)
      {
        v7 = [(DYMTLFunctionPlayer *)self objectForKey:v5[2]];
        v8 = objc_autoreleasePoolPush();
        [v6 endEncoding];
        v9 = DYMTLNewStatefulComputeCommandEncoder(v7, 0);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __54__DYMTLCommonDebugFunctionPlayer__splitComputeEncoder__block_invoke;
        v13[3] = &unk_27930F6B8;
        v13[4] = self;
        [v6 applyToEncoder:v9 rawBytesBlock:v13];
        if (self->_bSetStageInRegion)
        {
          v10 = *&self->_stageInRegion.origin.z;
          v12[0] = *&self->_stageInRegion.origin.x;
          v12[1] = v10;
          v12[2] = *&self->_stageInRegion.size.height;
          [v9 setStageInRegion:v12];
        }

        else if (self->_stageInIndirectBufferId)
        {
          v11 = [(DYMTLFunctionPlayer *)self objectForKey:?];
          [v9 setStageInRegionWithIndirectBuffer:v11 indirectBufferOffset:self->_stageInIndirectBufferOffset];
        }

        [(DYMTLFunctionPlayer *)self setObject:v9 forKey:v14];

        objc_autoreleasePoolPop(v8);
      }
    }
  }
}

uint64_t __54__DYMTLCommonDebugFunctionPlayer__splitComputeEncoder__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [DYMTLFunctionPlayer computeBytesKeyAtIndex:?];

  return [v1 computeBytesForKey:v2];
}

- (void)_splitRenderEncoders
{
  v29 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + *MEMORY[0x277D0AFA0]) + 48, 0);
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_encoderMap.__table_.__bucket_list_.__ptr_, &v29);
  if (v3)
  {
    v4 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_commandBufferMap.__table_.__bucket_list_.__ptr_, v3 + 3);
    if (v4)
    {
      v5 = v4;
      v6 = [(DYMTLFunctionPlayer *)self objectForKey:v29];
      if ([v6 conformsToProtocol:&unk_2860CBE88] && self->_nRemainingCommandsForCurrentEncoder)
      {
        v7 = [(DYMTLFunctionPlayer *)self objectForKey:v5[2]];
        descriptor = [v6 descriptor];
        for (i = 0; i != 8; ++i)
        {
          colorAttachments = [descriptor colorAttachments];
          v11 = [colorAttachments objectAtIndexedSubscript:i];
          [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:v11];

          colorAttachments2 = [descriptor colorAttachments];
          v13 = [colorAttachments2 objectAtIndexedSubscript:i];
          [v13 setResolveTexture:0];

          colorAttachments3 = [descriptor colorAttachments];
          v15 = [colorAttachments3 objectAtIndexedSubscript:i];
          [v15 setLoadAction:1];

          colorAttachments4 = [descriptor colorAttachments];
          v17 = [colorAttachments4 objectAtIndexedSubscript:i];
          [v17 setStoreAction:1];
        }

        depthAttachment = [descriptor depthAttachment];
        [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:depthAttachment];

        depthAttachment2 = [descriptor depthAttachment];
        [depthAttachment2 setResolveTexture:0];

        depthAttachment3 = [descriptor depthAttachment];
        [depthAttachment3 setLoadAction:1];

        depthAttachment4 = [descriptor depthAttachment];
        [depthAttachment4 setStoreAction:1];

        stencilAttachment = [descriptor stencilAttachment];
        [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:stencilAttachment];

        stencilAttachment2 = [descriptor stencilAttachment];
        [stencilAttachment2 setResolveTexture:0];

        stencilAttachment3 = [descriptor stencilAttachment];
        [stencilAttachment3 setLoadAction:1];

        stencilAttachment4 = [descriptor stencilAttachment];
        [stencilAttachment4 setStoreAction:1];

        v26 = objc_autoreleasePoolPush();
        [v6 endEncoding];
        v27 = DYMTLNewStatefulRenderCommandEncoder(v7, descriptor);
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __54__DYMTLCommonDebugFunctionPlayer__splitRenderEncoders__block_invoke;
        v28[3] = &unk_27930F3E0;
        v28[4] = self;
        [v6 applyAllStateToEncoder:v27 rawBytesBlock:v28];
        [(DYMTLFunctionPlayer *)self setObject:v27 forKey:v29];

        objc_autoreleasePoolPop(v26);
      }
    }
  }
}

uint64_t __54__DYMTLCommonDebugFunctionPlayer__splitRenderEncoders__block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 2)
  {
    v9 = *(a1 + 32);
    v10 = [DYMTLFunctionPlayer tileBytesKeyAtIndex:a4];

    return [v9 tileBytesForKey:v10];
  }

  else if (a2 == 1)
  {
    v7 = *(a1 + 32);
    v8 = [DYMTLFunctionPlayer fragmentBytesKeyAtIndex:a4];

    return [v7 fragmentBytesForKey:v8];
  }

  else if (a2)
  {
    return 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = [DYMTLFunctionPlayer vertexBytesKeyAtIndex:a4];

    return [v4 vertexBytesForKey:v5];
  }
}

- (void)_createBatchIdFilterMapping:(BOOL)mapping withCommandEncoder:(id)encoder
{
  mappingCopy = mapping;
  encoderCopy = encoder;
  if (mappingCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      LODWORD(v22) = 0;
      v23 = 0;
      [encoderCopy commandBatchIdRangeMin:&v22 max:&v23];
      p_currentEncoderBatchInfo = &self->_currentEncoderBatchInfo;
      end = p_currentEncoderBatchInfo->__end_;
      cap = p_currentEncoderBatchInfo->__cap_;
      if (end >= cap)
      {
        begin = p_currentEncoderBatchInfo->__begin_;
        v16 = end - p_currentEncoderBatchInfo->__begin_;
        v17 = v16 >> 3;
        v18 = (v16 >> 3) + 1;
        if (v18 >> 61)
        {
          std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
        }

        v19 = cap - begin;
        if (v19 >> 2 > v18)
        {
          v18 = v19 >> 2;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v18 = 0x1FFFFFFFFFFFFFFFLL;
        }

        if (v18)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(p_currentEncoderBatchInfo, v18);
        }

        v20 = (8 * v17);
        *v20 = v22;
        v20[1] = v23;
        v10 = 8 * v17 + 8;
        memcpy(0, begin, v16);
        v21 = p_currentEncoderBatchInfo->__begin_;
        p_currentEncoderBatchInfo->__begin_ = 0;
        p_currentEncoderBatchInfo->__end_ = v10;
        p_currentEncoderBatchInfo->__cap_ = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *end = v22;
        *(end + 1) = v23;
        v10 = (end + 8);
      }

      p_currentEncoderBatchInfo->__end_ = v10;
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    commandBatchIdOffset = [encoderCopy commandBatchIdOffset];
    v12 = self->_currentEncoderBatchInfo.__begin_;
    v13 = self->_currentEncoderBatchInfo.__end_;
    if (v12 != v13)
    {
      v14 = vdup_n_s32(commandBatchIdOffset);
      do
      {
        *v12 = vsub_s32(*v12, v14);
        ++v12;
      }

      while (v12 != v13);
    }

    v22 = self->_currentBatchEncoderIndex - 1;
    std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::pair<unsigned int,unsigned int>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<unsigned int,unsigned int>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<unsigned int,unsigned int>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::pair<unsigned int,unsigned int>>>>>::__emplace_unique_key_args<unsigned long,unsigned long,std::vector<std::pair<unsigned int,unsigned int>>&>(&self->_encoderIndexToBatchInfo.__table_.__bucket_list_.__ptr_, &v22);
    self->_currentEncoderBatchInfo.__end_ = self->_currentEncoderBatchInfo.__begin_;
  }
}

- (void)_splitCommandEncoders
{
  v3 = *MEMORY[0x277D0AFA0];
  if ((GPUTools::MTL::IsFuncEnumSampledBlitCall(**(&self->super.super.super.super.isa + v3)) & 1) != 0 || GPUTools::MTL::IsFuncEnumSampledBlitCallAGX(**(&self->super.super.super.super.isa + v3)))
  {
    --self->_nRemainingCommandsForCurrentEncoder;

    [(DYMTLCommonDebugFunctionPlayer *)self _splitBlitEncoder];
  }
}

- (void)_setupEncodersForBatchIdFiltering
{
  v3 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF98]);
  v4 = *MEMORY[0x277D0AFA0];
  v5 = **(&self->super.super.super.super.isa + v4);
  if ((v5 + 16354) < 4 || v5 == -16014)
  {
    v11 = v3;
    if ([v3 playbackMode] == 5)
    {
      currentBatchEncoderIndex = self->_currentBatchEncoderIndex;
      v8 = currentBatchEncoderIndex >= [(NSArray *)self->_batchInfos count];
      v3 = v11;
      if (v8)
      {
        goto LABEL_15;
      }

      v9 = [(NSArray *)self->_batchInfos objectAtIndexedSubscript:self->_currentBatchEncoderIndex];
      self->_currentEncoderBatchIndex = [v9 unsignedIntValue];

      if (self->_currentEncoderBatchIndex != -1)
      {
        v10 = [(DYMTLFunctionPlayer *)self objectForKey:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v4) + 24, 0)];
        std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_encoderIndexToBatchInfo.__table_.__bucket_list_.__ptr_, &self->_currentBatchEncoderIndex);
      }
    }

    else if ([v11 playbackMode] == 12)
    {
      v3 = v11;
      if (self->_currentBatchEncoderIndex)
      {
LABEL_14:
        ++self->_currentBatchEncoderIndex;
        goto LABEL_15;
      }

      std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::pair<unsigned int,unsigned int>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<unsigned int,unsigned int>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<unsigned int,unsigned int>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::pair<unsigned int,unsigned int>>>>>::clear(&self->_encoderIndexToBatchInfo);
    }

    v3 = v11;
    goto LABEL_14;
  }

LABEL_15:
}

- (void)executeGraphicsFunction
{
  v572 = *MEMORY[0x277D85DE8];
  v498 = objc_autoreleasePoolPush();
  selfCopy = self;
  v499 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF98]);
  playbackMode = [v499 playbackMode];
  if (playbackMode > 6)
  {
    if (playbackMode <= 9)
    {
      if (playbackMode != 7)
      {
        if (playbackMode != 8)
        {
          [(DYMTLCommonDebugFunctionPlayer *)self _splitCommandEncoders];
          [(DYMTLCommonDebugFunctionPlayer *)self _executeGraphicsFunction];
          shouldExecuteGraphicsFunction = [(DYMTLCommonDebugFunctionPlayer *)self shouldExecuteGraphicsFunction];
          goto LABEL_125;
        }

        if (!-[DYFunctionPlayer mainExecutionMode](self, "mainExecutionMode") || (v39 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF80]), v39 != [v499 targetFunctionIndex] - 1))
        {
LABEL_88:
          [(DYMTLCommonDebugFunctionPlayer *)selfCopy _executeGraphicsFunction];
          shouldExecuteGraphicsFunction = [(DYMTLCommonDebugFunctionPlayer *)selfCopy shouldExecuteGraphicsFunction];
LABEL_125:
          if (!shouldExecuteGraphicsFunction)
          {
            goto LABEL_324;
          }

          goto LABEL_119;
        }

        v40 = *MEMORY[0x277D0AFA0];
        *&__p = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&selfCopy->super.super.super.super.isa + v40) + 48, 0);
        if (!std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&selfCopy->_encoderMap.__table_.__bucket_list_.__ptr_, &__p))
        {
          goto LABEL_324;
        }

        engine = [(DYFunctionPlayer *)selfCopy engine];
        playbackOptions = [engine playbackOptions];

        v550.i64[0] = 0;
        if (GPUTools::MTL::IsFuncEnumIndirectExecuteCall(**(&selfCopy->super.super.super.super.isa + v40)))
        {
          v525 = 0;
          -[DYMTLCommonDebugFunctionPlayer _executeIndirectCommandBufferUpToSubIndex:outBuffer:outDataPointer:](selfCopy, "_executeIndirectCommandBufferUpToSubIndex:outBuffer:outDataPointer:", [v499 targetSubCommandIndex], &v525, &v550);
          v43 = v525;
        }

        else
        {
          v43 = 0;
        }

        [(DYMTLShaderDebuggerTraceGenerator *)selfCopy->_shaderDebuggerTraceGenerator prepareCommandEncoderForInstrumentedCall:__p generationOptions:playbackOptions];
        if (v43)
        {
          if (GPUTools::MTL::IsFuncEnumIndirectExecuteDrawCall(**(&selfCopy->super.super.super.super.isa + v40)))
          {
            v148 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:__p];
            indirectCommandManager = [(DYMTLFunctionPlayer *)selfCopy indirectCommandManager];
            [indirectCommandManager executeIndirectRenderCommand:v148 withData:v550.i64[0] atIndex:objc_msgSend(v499 forIndirectCommandBuffer:{"targetSubCommandIndex"), v43}];
LABEL_243:

            goto LABEL_244;
          }

          if (GPUTools::MTL::IsFuncEnumIndirectExecuteComputeCall(**(&selfCopy->super.super.super.super.isa + v40)))
          {
            v148 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:__p];
            indirectCommandManager = [(DYMTLFunctionPlayer *)selfCopy indirectCommandManager];
            [indirectCommandManager executeIndirectComputeCommand:v148 withData:v550.i64[0] atIndex:objc_msgSend(v499 forIndirectCommandBuffer:{"targetSubCommandIndex"), v43}];
            goto LABEL_243;
          }
        }

        else
        {
          [(DYMTLCommonDebugFunctionPlayer *)selfCopy _executeGraphicsFunction];
        }

LABEL_244:
        if ([(DYMTLCommonDebugFunctionPlayer *)selfCopy shouldExecuteGraphicsFunction])
        {
          [(DYMTLCommonDebugFunctionPlayer *)selfCopy _trackObjects];
        }

        goto LABEL_324;
      }

      v34 = objc_autoreleasePoolPush();
      [(DYMTLCommonDebugFunctionPlayer *)self _executeGraphicsFunction];
      [(DYMTLCommonDebugFunctionPlayer *)self _trackObjects];
      v35 = *MEMORY[0x277D0AFA0];
      if (GPUTools::MTL::IsFuncEnumDrawCall(**(&selfCopy->super.super.super.super.isa + v35)))
      {
        v550.i64[0] = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&selfCopy->super.super.super.super.isa + v35) + 48, 0);
        v36 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&selfCopy->_encoderMap.__table_.__bucket_list_.__ptr_, &v550);
        if (v36)
        {
          v37 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&selfCopy->_commandBufferMap.__table_.__bucket_list_.__ptr_, v36 + 3);
          if (v37)
          {
            v562 = 0;
            v38 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&selfCopy->_encoderToParallelEncoderMap.__table_.__bucket_list_.__ptr_, &v550);
            if (v38)
            {
              v562 = v38[3];
              std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&selfCopy->_parallelEncoderMap.__table_.__bucket_list_.__ptr_, &v562);
              v459 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:v562];
            }

            else
            {
              v459 = 0;
            }

            contexta = [(DYMTLFunctionPlayer *)selfCopy objectForKey:v550.i64[0]];
            v454 = v34;
            if ([contexta conformsToProtocol:&unk_2860CBE88])
            {
              v451 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:v37[3]];
              v150 = v37[2];
              v479 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:v150];
              descriptor = [contexta descriptor];
              if (v459)
              {
                v151 = DYMTLGetAssociatedObject(v459, 0);

                descriptor = v151;
              }

              [v451 commandBuffer];
              v153 = v152 = 0;
              do
              {
                colorAttachments = [descriptor colorAttachments];
                v155 = [colorAttachments objectAtIndexedSubscript:v152];
                [(DYMTLCommonDebugFunctionPlayer *)selfCopy _updateMemorylessTextures:v155];

                colorAttachments2 = [descriptor colorAttachments];
                v157 = [colorAttachments2 objectAtIndexedSubscript:v152];
                [v157 setResolveTexture:0];

                colorAttachments3 = [descriptor colorAttachments];
                v159 = [colorAttachments3 objectAtIndexedSubscript:v152];
                [v159 setLoadAction:1];

                colorAttachments4 = [descriptor colorAttachments];
                v161 = [colorAttachments4 objectAtIndexedSubscript:v152];
                v162 = [v161 storeAction] == 4;

                if (!v162)
                {
                  colorAttachments5 = [descriptor colorAttachments];
                  v164 = [colorAttachments5 objectAtIndexedSubscript:v152];
                  [v164 setStoreAction:1];
                }

                ++v152;
              }

              while (v152 != 8);
              depthAttachment = [descriptor depthAttachment];
              [(DYMTLCommonDebugFunctionPlayer *)selfCopy _updateMemorylessTextures:depthAttachment];

              depthAttachment2 = [descriptor depthAttachment];
              [depthAttachment2 setResolveTexture:0];

              depthAttachment3 = [descriptor depthAttachment];
              [depthAttachment3 setLoadAction:1];

              depthAttachment4 = [descriptor depthAttachment];
              v169 = [depthAttachment4 storeAction] == 4;

              if (!v169)
              {
                depthAttachment5 = [descriptor depthAttachment];
                [depthAttachment5 setStoreAction:1];
              }

              stencilAttachment = [descriptor stencilAttachment];
              [(DYMTLCommonDebugFunctionPlayer *)selfCopy _updateMemorylessTextures:stencilAttachment];

              stencilAttachment2 = [descriptor stencilAttachment];
              [stencilAttachment2 setResolveTexture:0];

              stencilAttachment3 = [descriptor stencilAttachment];
              [stencilAttachment3 setLoadAction:1];

              stencilAttachment4 = [descriptor stencilAttachment];
              v175 = [stencilAttachment4 storeAction] == 4;

              if (!v175)
              {
                stencilAttachment5 = [descriptor stencilAttachment];
                [stencilAttachment5 setStoreAction:1];
              }

              stencilAttachment6 = [descriptor stencilAttachment];
              [stencilAttachment6 setStencilResolveFilter:0];

              if (v459)
              {
                v178 = DYMTLNewStatefulParallelRenderCommandEncoder(v153, descriptor);
                v179 = DYMTLNewStatefulRenderCommandEncoder(v178);
                [(DYMTLCommonDebugFunctionPlayer *)selfCopy encodeStoreActionForParallelRenderCommandEncoder:v178 withDescriptor:descriptor];
              }

              else
              {
                v179 = DYMTLNewStatefulRenderCommandEncoder(v153, descriptor);
                [(DYMTLCommonDebugFunctionPlayer *)selfCopy encodeStoreActionForRenderCommandEncoder:v179 withDescriptor:descriptor];
                v178 = 0;
              }

              v561[0] = MEMORY[0x277D85DD0];
              v561[1] = 3221225472;
              v561[2] = __57__DYMTLCommonDebugFunctionPlayer_executeGraphicsFunction__block_invoke;
              v561[3] = &unk_27930F3E0;
              v561[4] = selfCopy;
              [contexta applyAllStateToEncoder:v179 rawBytesBlock:v561];
              [(DYMTLFunctionPlayer *)selfCopy setObject:v153 forKey:v150];
              [(DYMTLFunctionPlayer *)selfCopy setObject:v179 forKey:v550.i64[0]];
              if (v459)
              {
                [(DYMTLFunctionPlayer *)selfCopy setObject:v178 forKey:v562];
              }

              [contexta endEncoding];
              if (v459)
              {
                [v459 endEncoding];
              }

              if (objc_opt_respondsToSelector())
              {
                playbackOptions2 = [v499 playbackOptions];
                if (playbackOptions2)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v220 = playbackOptions2;
                    v221 = [v220 objectForKeyedSubscript:*MEMORY[0x277D0B4C8]];
                    GPUTraceResourceResolutionDecode(&__p, v221);
                    v467 = *(&__p + 1);
                    v471 = __p;
                    v464 = v564;

                    v453 = [v220 objectForKeyedSubscript:*MEMORY[0x277D0B4E8]];

                    if (v453)
                    {
LABEL_300:
                      v462 = [v453 containsObject:@"All"];
                      v559 = 0u;
                      v560 = 0u;
                      v557 = 0u;
                      v558 = 0u;
                      v227 = v453;
                      v475 = v227;
                      v228 = [v227 countByEnumeratingWithState:&v557 objects:v571 count:16];
                      if (!v228)
                      {
                        v229 = 0;
                        v230 = 0;
                        goto LABEL_321;
                      }

                      v229 = 0;
                      v230 = 0;
                      v490 = *v558;
                      v493 = v228;
                      while (1)
                      {
                        for (i = 0; i != v493; ++i)
                        {
                          if (*v558 != v490)
                          {
                            objc_enumerationMutation(v227);
                          }

                          v232 = *(*(&v557 + 1) + 8 * i);
                          if ([v232 hasPrefix:@"Color."])
                          {
                            v233 = v232;
                            v234 = [@"Color." length];
                            v235 = [v233 substringWithRange:{v234, objc_msgSend(v233, "length") - v234}];
                            integerValue = [v235 integerValue];

                            if ((integerValue & 0xFFFFFFF8) != 0)
                            {
                              continue;
                            }

                            colorAttachments6 = [descriptor colorAttachments];
                            depthAttachment6 = [colorAttachments6 objectAtIndexedSubscript:integerValue & 7];

                            texture = [depthAttachment6 texture];
                            v240 = 1;
                          }

                          else if (objc_msgSend_isEqualToString_(v232))
                          {
                            depthAttachment6 = [descriptor depthAttachment];

                            texture = [depthAttachment6 texture];
                            v240 = 2;
                          }

                          else
                          {
                            if (!objc_msgSend_isEqualToString_(v232))
                            {
                              continue;
                            }

                            depthAttachment6 = [descriptor stencilAttachment];

                            texture = [depthAttachment6 texture];
                            v240 = 4;
                          }

                          v229 = depthAttachment6;

                          if (texture && depthAttachment6)
                          {
                            v488 = depthAttachment6;
                            v241 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(&selfCopy->super.super.super.super.isa + *MEMORY[0x277D0AF80])];
                            v242 = MEMORY[0x277D25728];
                            objd = v241;
                            device = [(DYMTLFunctionPlayer *)selfCopy device];
                            v244 = [v242 forDevice:device];

                            v245 = v240;
                            *&__p = v471;
                            *(&__p + 1) = v467;
                            v564 = v464;
                            v246 = v229;
                            level = [v229 level];
                            slice = [v246 slice];
                            depthPlane = [v246 depthPlane];
                            v553[0] = MEMORY[0x277D85DD0];
                            v553[1] = 3221225472;
                            v553[2] = __57__DYMTLCommonDebugFunctionPlayer_executeGraphicsFunction__block_invoke_2;
                            v553[3] = &unk_27930F6E0;
                            v553[4] = selfCopy;
                            v250 = objd;
                            v554 = v250;
                            v555 = texture;
                            v556 = v232;
                            v230 = v555;
                            LODWORD(v438) = v245;
                            [v244 resizeTexture:v555 resolution:&__p level:level slice:slice depthPlane:depthPlane inBuffer:v479 withType:v438 completion:v553];

                            v227 = v475;
                            v229 = v488;

                            if ((v462 & 1) == 0)
                            {
                              goto LABEL_321;
                            }
                          }

                          else
                          {
                            v230 = texture;
                          }
                        }

                        v493 = [v227 countByEnumeratingWithState:&v557 objects:v571 count:16];
                        if (!v493)
                        {
LABEL_321:

                          [v479 commit];
                          goto LABEL_322;
                        }
                      }
                    }

LABEL_297:
                    v224 = objc_opt_new();
                    v225 = 0;
                    do
                    {
                      v225 = [MEMORY[0x277CCACA8] stringWithFormat:@"Color.%u", v225];
                      [v224 addObject:v225];

                      v225 = (v225 + 1);
                    }

                    while (v225 != 8);
                    [v224 addObject:@"Depth."];
                    [v224 addObject:@"Stencil."];
                    [v224 addObject:@"First"];
                    v453 = [MEMORY[0x277CBEA60] arrayWithArray:v224];

                    goto LABEL_300;
                  }
                }
              }

              v471 = 512;
              v467 = 128;
              v464 = 32;
              goto LABEL_297;
            }

LABEL_322:

            v34 = v454;
          }
        }
      }

      objc_autoreleasePoolPop(v34);
      goto LABEL_324;
    }

    if ((playbackMode - 11) < 2)
    {
      goto LABEL_44;
    }

    if (playbackMode == 10)
    {
      v66 = *MEMORY[0x277D0AFA0];
      v67 = *(&self->super.super.super.super.isa + v66);
      v68 = *v67;
      if (*v67 <= -16163)
      {
        switch(v68)
        {
          case -16351:
            [(DYFunctionPlayer *)self processArguments];
            self->_parallelEncoderCommandBufferID = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v66) + 48, 0);
            v185 = (self + *MEMORY[0x277D0AF68]);
            v186 = GPUTools::MTL::MakeMTLRenderPassDescriptor(*v185[1], [(DYMTLFunctionPlayer *)self objectMap]);
            dependencyGraphParallelDescriptor = self->_dependencyGraphParallelDescriptor;
            self->_dependencyGraphParallelDescriptor = v186;

            GPUTools::MTL::Utils::MakeDYMTLRenderPassDescriptor(*v185[1], &self->_dependencyGraphDYMTLParallelDescriptor, v188);
            goto LABEL_328;
          case -16286:
            for (j = 0; j != 8; ++j)
            {
              colorAttachments7 = [(MTLRenderPassDescriptor *)selfCopy->_dependencyGraphParallelDescriptor colorAttachments];
              v191 = [colorAttachments7 objectAtIndexedSubscript:j];
              [(DYMTLCommonDebugFunctionPlayer *)selfCopy _updateMemorylessTextures:v191];

              colorAttachments8 = [(MTLRenderPassDescriptor *)selfCopy->_dependencyGraphParallelDescriptor colorAttachments];
              v193 = [colorAttachments8 objectAtIndexedSubscript:j];
              resolveTexture = [v193 resolveTexture];

              colorAttachments9 = [(MTLRenderPassDescriptor *)selfCopy->_dependencyGraphParallelDescriptor colorAttachments];
              v196 = [colorAttachments9 objectAtIndexedSubscript:j];
              if (resolveTexture)
              {
                [v196 setStoreAction:3];
              }

              else
              {
                [v196 setStoreAction:1];
              }
            }

            depthAttachment7 = [(MTLRenderPassDescriptor *)selfCopy->_dependencyGraphParallelDescriptor depthAttachment];
            [(DYMTLCommonDebugFunctionPlayer *)selfCopy _updateMemorylessTextures:depthAttachment7];

            depthAttachment8 = [(MTLRenderPassDescriptor *)selfCopy->_dependencyGraphParallelDescriptor depthAttachment];
            resolveTexture2 = [depthAttachment8 resolveTexture];

            depthAttachment9 = [(MTLRenderPassDescriptor *)selfCopy->_dependencyGraphParallelDescriptor depthAttachment];
            if (resolveTexture2)
            {
              [depthAttachment9 setStoreAction:3];
            }

            else
            {
              [depthAttachment9 setStoreAction:1];
            }

            stencilAttachment7 = [(MTLRenderPassDescriptor *)selfCopy->_dependencyGraphParallelDescriptor stencilAttachment];
            [(DYMTLCommonDebugFunctionPlayer *)selfCopy _updateMemorylessTextures:stencilAttachment7];

            stencilAttachment8 = [(MTLRenderPassDescriptor *)selfCopy->_dependencyGraphParallelDescriptor stencilAttachment];
            resolveTexture3 = [stencilAttachment8 resolveTexture];

            stencilAttachment9 = [(MTLRenderPassDescriptor *)selfCopy->_dependencyGraphParallelDescriptor stencilAttachment];
            if (resolveTexture3)
            {
              [stencilAttachment9 setStoreAction:3];
            }

            else
            {
              [stencilAttachment9 setStoreAction:1];
            }

            v277 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:selfCopy->_parallelEncoderCommandBufferID];
            v278 = [v277 renderCommandEncoderWithDescriptor:selfCopy->_dependencyGraphParallelDescriptor];
            v550.i64[0] = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&selfCopy->super.super.super.super.isa + v66) + 24, 0);
            [(DYMTLFunctionPlayer *)selfCopy setObject:v278 forKey:v550.i64[0]];
            std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(&selfCopy->_encoderMap.__table_.__bucket_list_.__ptr_, &v550);
            __p = selfCopy->_parallelEncoderCommandBufferID;
            v564 = v550.i64[0];
            v565 = 0;
            std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,EncoderInfo>(&selfCopy->_encoderMap.__table_.__bucket_list_.__ptr_, &v550, &v550, &__p);
            [(DYMTLCommonDebugFunctionPlayer *)selfCopy _addRenderPassDescriptorToEncoderMapFromRenderPassDescriptor:&selfCopy->_dependencyGraphDYMTLParallelDescriptor forEncoder:v550.i64[0]];
            std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(&selfCopy->_encoderToParallelEncoderMap.__table_.__bucket_list_.__ptr_, &v550);

            goto LABEL_328;
          case -16285:
            currentParallelDescriptor = self->_currentParallelDescriptor;
            self->_currentParallelDescriptor = 0;

            self->_currentParallelId = 0;
            self->_parallelEncoderCommandBufferID = 0;
            v136 = self->_dependencyGraphParallelDescriptor;
            self->_dependencyGraphParallelDescriptor = 0;

            goto LABEL_328;
        }
      }

      else
      {
        if ((v68 + 16162) <= 0xA && ((1 << (v68 + 34)) & 0x73F) != 0)
        {
          goto LABEL_328;
        }

        if (v68 == -15789)
        {
          if (!self->_sparseTextureFence)
          {
            device2 = [(DYMTLFunctionPlayer *)self device];
            newFence = [device2 newFence];
            sparseTextureFence = selfCopy->_sparseTextureFence;
            selfCopy->_sparseTextureFence = newFence;

            v67 = *(&selfCopy->super.super.super.super.isa + v66);
          }

          v73 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v67 + 12), 0)];
          [v73 updateFence:selfCopy->_sparseTextureFence];
        }
      }

      [(DYMTLCommonDebugFunctionPlayer *)selfCopy _executeGraphicsFunction];
      [(DYMTLCommonDebugFunctionPlayer *)selfCopy _trackObjects];
      v137 = *(&selfCopy->super.super.super.super.isa + v66);
      v138 = *v137;
      if (v138 == -16376 || v138 == -15789 || v138 == -16246)
      {
        *&__p = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v137 + 12), 0);
        v141 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&selfCopy->_encoderMap.__table_.__bucket_list_.__ptr_, &__p);
        v142 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&selfCopy->_commandBufferMap.__table_.__bucket_list_.__ptr_, v141 + 3);
        v143 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:v142[3]];
        v144 = v142[2];
        v145 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:v144];
        [v145 commit];
        [v145 waitUntilCompleted];
        commandBuffer = [v143 commandBuffer];

        [(DYMTLFunctionPlayer *)selfCopy setObject:commandBuffer forKey:v144];
        v137 = *(&selfCopy->super.super.super.super.isa + v66);
        v138 = *v137;
      }

      if (v138 == -16361)
      {
        v147 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v137 + 12), 0)];
        [v147 waitUntilCompleted];
      }

      else if (GPUTools::MTL::IsFuncEnumEndEncoding(v138))
      {
        if (objc_opt_respondsToSelector())
        {
          playbackOptions3 = [v499 playbackOptions];
          if (playbackOptions3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v202 = playbackOptions3;
            v203 = [v202 objectForKeyedSubscript:*MEMORY[0x277D0B4F0]];
            bOOLValue = [v203 BOOLValue];

            v205 = [v202 objectForKeyedSubscript:*MEMORY[0x277D0B100]];
            v206 = *MEMORY[0x277D0B4C8];
            v207 = [v202 objectForKeyedSubscript:*MEMORY[0x277D0B4C8]];
            v208 = v207 == 0;

            if (v208)
            {
              v212 = 16;
              v210 = 256;
              v211 = 128;
            }

            else
            {
              v209 = [v202 objectForKeyedSubscript:v206];
              GPUTraceResourceResolutionDecode(&__p, v209);
              v210 = *(&__p + 1);
              v211 = __p;
              v212 = v564;
            }

            v333 = bOOLValue ^ 1;
          }

          else
          {
            v205 = 0;
            v333 = 1;
            v212 = 16;
            v210 = 256;
            v211 = 128;
          }
        }

        else
        {
          v205 = 0;
          v333 = 1;
          v212 = 16;
          v210 = 256;
          v211 = 128;
        }

        v401 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(&selfCopy->super.super.super.super.isa + *MEMORY[0x277D0AF80])];
        v402 = [v205 objectForKey:v401];
        if (v402)
        {
          v403 = v333;
        }

        else
        {
          v403 = 1;
        }

        if ((v403 & 1) == 0)
        {
          v550.i64[0] = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&selfCopy->super.super.super.super.isa + v66) + 48, 0);
          v404 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&selfCopy->_encoderMap.__table_.__bucket_list_.__ptr_, &v550);
          if (v404)
          {
            v405 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&selfCopy->_commandBufferMap.__table_.__bucket_list_.__ptr_, v404 + 3);
            if (v405)
            {
              v562 = 0;
              v406 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&selfCopy->_encoderToParallelEncoderMap.__table_.__bucket_list_.__ptr_, &v550);
              if (v406)
              {
                v562 = v406[3];
                std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&selfCopy->_parallelEncoderMap.__table_.__bucket_list_.__ptr_, &v562);
                v407 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:v562];
              }

              else
              {
                v407 = 0;
              }

              v408 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:v405[2]];
              v409 = objc_autoreleasePoolPush();
              *&__p = v211;
              *(&__p + 1) = v210;
              v564 = v212;
              v410 = [(DYMTLCommonDebugFunctionPlayer *)selfCopy _generateThumbnailAndResourceInfoForRequestedTextures:v402 resolution:&__p commandBuffer:v408];
              [(NSMutableDictionary *)selfCopy->_dependencyGraphThumbnails setObject:v410 forKey:v401];

              objc_autoreleasePoolPop(v409);
            }
          }
        }
      }

      goto LABEL_324;
    }

    if (playbackMode != 13)
    {
      goto LABEL_74;
    }

    v22 = objc_autoreleasePoolPush();
    v458 = *MEMORY[0x277D0AFA0];
    v23 = **(&self->super.super.super.super.isa + v458) + 16162;
    if (v23 < 0xB && ((0x73Fu >> v23) & 1) != 0)
    {
      v24 = 1;
      goto LABEL_251;
    }

    context = v22;
    [(DYMTLCommonDebugFunctionPlayer *)self _executeGraphicsFunction];
    [(DYMTLCommonDebugFunctionPlayer *)self _trackObjects];
    *&__p = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v458) + 48, 0);
    v75 = *(&self->super.super.super.super.isa + v458);
    if (*v75 == -16353)
    {
      *&__p = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v75 + 6), 0);
    }

    if (objc_opt_respondsToSelector())
    {
      playbackOptions4 = [v499 playbackOptions];
      if (playbackOptions4)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v77 = playbackOptions4;
          v78 = [v77 objectForKeyedSubscript:*MEMORY[0x277D0B470]];
          unsignedLongLongValue = [v78 unsignedLongLongValue];

          v80 = [v77 objectForKeyedSubscript:*MEMORY[0x277D0B460]];
          unsignedLongLongValue2 = [v80 unsignedLongLongValue];

          v81 = [v77 objectForKeyedSubscript:*MEMORY[0x277D0B468]];
          unsignedLongLongValue3 = [v81 unsignedLongLongValue];

          v82 = [v77 objectForKeyedSubscript:*MEMORY[0x277D0B458]];
          v466 = [v82 unsignedLongLongValue] != 0;

          v83 = [v77 objectForKeyedSubscript:*MEMORY[0x277D0B450]];
          v470 = [v83 unsignedLongLongValue] != 0;

          v84 = [v77 objectForKeyedSubscript:*MEMORY[0x277D0B448]];
          unsignedLongLongValue4 = [v84 unsignedLongLongValue];

          v492 = [v77 objectForKeyedSubscript:*MEMORY[0x277D0B478]];

          v86 = __p;
          if (unsignedLongLongValue && __p != unsignedLongLongValue)
          {
            v24 = 2;
LABEL_250:

            v22 = context;
LABEL_251:
            objc_autoreleasePoolPop(v22);
            if ((v24 | 2) != 2)
            {
              goto LABEL_328;
            }

            goto LABEL_324;
          }

          v101 = unsignedLongLongValue4 != 0;
LABEL_156:
          pixelHistoryEncoderStateTrackings = selfCopy->_pixelHistoryEncoderStateTrackings;
          v103 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v86];
          v104 = [(NSMutableDictionary *)pixelHistoryEncoderStateTrackings objectForKeyedSubscript:v103];

          if (!v104)
          {
            v460 = 0;
            if (**(&selfCopy->super.super.super.super.isa + v458) != -16353)
            {
              v24 = 2;
              v474 = 0;
LABEL_249:

              goto LABEL_250;
            }

            v474 = 0;
            goto LABEL_166;
          }

          v474 = v104;
          encoderFunctionIndex = [v104 encoderFunctionIndex];
          v106 = [(NSMutableDictionary *)selfCopy->_pixelHistory objectForKeyedSubscript:*MEMORY[0x277D0B3D0]];
          v107 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:encoderFunctionIndex];
          v460 = [v106 objectForKeyedSubscript:v107];

          v108 = **(&selfCopy->super.super.super.super.isa + v458);
          if (v108 != -16353)
          {
            if (v460)
            {
              if (GPUTools::MTL::IsFuncEnumDrawCall(v108))
              {
                goto LABEL_166;
              }

              if (v470)
              {
                v109 = **(&selfCopy->super.super.super.super.isa + v458);
                if (IsFuncEnumPixelHistoryInterestingRenderPassStateItems(v109) || v109 == -16246)
                {
                  goto LABEL_166;
                }
              }
            }

            else
            {
              v460 = 0;
            }

LABEL_248:
            v24 = 2;
            goto LABEL_249;
          }

LABEL_166:
          v110 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&selfCopy->_encoderMap.__table_.__bucket_list_.__ptr_, &__p);
          if (v110)
          {
            v111 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&selfCopy->_commandEncoderDescriptorMap.__table_.__bucket_list_.__ptr_, v110 + 5);
            if (v111)
            {
              v445 = v111;
              v112 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&selfCopy->_commandBufferMap.__table_.__bucket_list_.__ptr_, v110 + 3);
              if (v112)
              {
                v442 = v101;
                v452 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:__p];
                v450 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:v112[3]];
                v443 = v112[2];
                v461 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:?];
                descriptor2 = [v452 descriptor];
                v113 = v110[4];
                v448 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:v113];
                v440 = v113;
                if (**(&selfCopy->super.super.super.super.isa + v458) == -16353)
                {
                  v478 = objc_opt_new();
                  v114 = 0;
                  do
                  {
                    v114 = [MEMORY[0x277CCACA8] stringWithFormat:@"Color.%u", v114];
                    [v478 addObject:v114];

                    v114 = (v114 + 1);
                  }

                  while (v114 != 8);
                  [v478 addObject:@"Depth."];
                  [v478 addObject:@"Stencil."];
                  obj = objc_opt_new();
                  v523 = 0u;
                  v524 = 0u;
                  v521 = 0u;
                  v522 = 0u;
                  v116 = v478;
                  v117 = [v116 countByEnumeratingWithState:&v521 objects:v569 count:16];
                  if (v117)
                  {
                    v118 = *v522;
                    do
                    {
                      for (k = 0; k != v117; ++k)
                      {
                        if (*v522 != v118)
                        {
                          objc_enumerationMutation(v116);
                        }

                        v120 = *(*(&v521 + 1) + 8 * k);
                        if (![v120 hasPrefix:@"Color."])
                        {
                          if (objc_msgSend_isEqualToString_(v120))
                          {
                            depthAttachment10 = [descriptor2 depthAttachment];
                            texture2 = [depthAttachment10 texture];
                            index = @"Depth";
                            if (!texture2)
                            {
                              goto LABEL_192;
                            }
                          }

                          else
                          {
                            if (!objc_msgSend_isEqualToString_(v120))
                            {
LABEL_191:
                              texture2 = 0;
                              depthAttachment10 = 0;
                              index = 0;
                              goto LABEL_192;
                            }

                            depthAttachment10 = [descriptor2 stencilAttachment];
                            texture2 = [depthAttachment10 texture];
                            index = @"Stencil";
                            if (!texture2)
                            {
                              goto LABEL_192;
                            }
                          }

LABEL_186:
                          if (depthAttachment10)
                          {
                            v126 = [(DYMTLFunctionPlayer *)selfCopy keyForOriginalObject:texture2 inverseObjectMap:&selfCopy->_pixelHistoryInverseObjectMap];
                            if (!v492 || (v127 = v126, ![v492 count]) || (objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLongLong:", v127), v128 = objc_claimAutoreleasedReturnValue(), v129 = objc_msgSend(v492, "containsObject:", v128), v128, (v129 & 1) != 0))
                            {
                              [obj setObject:depthAttachment10 forKeyedSubscript:index];
                            }
                          }

                          goto LABEL_192;
                        }

                        Index = GPUThumbnailOptionsColorGetIndex(v120);
                        if (Index >= 8)
                        {
                          goto LABEL_191;
                        }

                        colorAttachments10 = [descriptor2 colorAttachments];
                        depthAttachment10 = [colorAttachments10 objectAtIndexedSubscript:Index];

                        texture2 = [depthAttachment10 texture];
                        index = [MEMORY[0x277CCACA8] stringWithFormat:@"Color %i", Index];
                        if (texture2)
                        {
                          goto LABEL_186;
                        }

LABEL_192:
                      }

                      v117 = [v116 countByEnumeratingWithState:&v521 objects:v569 count:16];
                    }

                    while (v117);
                  }

                  v130 = objc_opt_new();
                  v131 = selfCopy->_pixelHistoryEncoderStateTrackings;
                  v132 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:__p];
                  [(NSMutableDictionary *)v131 setObject:v130 forKeyedSubscript:v132];

                  [v130 setEncoderFunctionIndex:*(&selfCopy->super.super.super.super.isa + *MEMORY[0x277D0AF80])];
                  [v130 setFilteredGenerationOptions:obj];
                  v133 = objc_opt_new();
                  [v130 setEncoderStateFunctionIndexes:v133];

                  v134 = v130;
                }

                else
                {
                  v134 = v474;
                }

                filteredGenerationOptions = [v134 filteredGenerationOptions];
                v465 = v134;
                v447 = filteredGenerationOptions;
                v253 = [filteredGenerationOptions count];
                if (v460 != 0 && v470)
                {
                  v254 = **(&selfCopy->super.super.super.super.isa + v458);
                  if (IsFuncEnumPixelHistoryInterestingRenderPassStateItems(v254))
                  {
                    v255 = objc_opt_new();
                    v256 = **(&selfCopy->super.super.super.super.isa + v458);
                    switch(v256)
                    {
                      case 0xFFFFC072:
                        v256 = 4294951219;
                        break;
                      case 0xFFFFC077:
                        v256 = 4294951220;
                        break;
                      case 0xFFFFC083:
                        v256 = 4294951077;
                        break;
                    }

                    v449 = v255;
                    encoderStateFunctionIndexes = [v134 encoderStateFunctionIndexes];
                    v339 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v256];
                    v446 = [encoderStateFunctionIndexes objectForKeyedSubscript:v339];

                    if (v446)
                    {
                      v340 = v449;
                      unsignedLongValue = [v446 unsignedLongValue];
                      lastInterestingFunctionIndex = [v465 lastInterestingFunctionIndex];
                      v343 = *MEMORY[0x277D0B3A8];
                      if (unsignedLongValue <= lastInterestingFunctionIndex)
                      {
LABEL_441:
                        v345 = [v460 objectForKeyedSubscript:v343];
                        v346 = *MEMORY[0x277D0AF80];
                        v347 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(&selfCopy->super.super.super.super.isa + v346)];
                        [v345 setObject:v340 forKeyedSubscript:v347];

                        v348 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(&selfCopy->super.super.super.super.isa + v346)];
                        encoderStateFunctionIndexes2 = [v465 encoderStateFunctionIndexes];
                        v349 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v256];
                        [encoderStateFunctionIndexes2 setObject:v348 forKeyedSubscript:v349];
                        v441 = v348;
LABEL_579:

                        v281 = v449;
LABEL_580:

                        filteredGenerationOptions = v447;
                        goto LABEL_581;
                      }

                      v344 = [v460 objectForKeyedSubscript:*MEMORY[0x277D0B3A8]];
                      [v344 removeObjectForKey:v446];
                    }

                    else
                    {
                      v343 = *MEMORY[0x277D0B3A8];
                    }

                    v340 = v449;
                    goto LABEL_441;
                  }

                  if (v254 == -16246)
                  {
                    v519 = 0u;
                    v520 = 0u;
                    v517 = 0u;
                    v518 = 0u;
                    encoderStateFunctionIndexes3 = [v134 encoderStateFunctionIndexes];
                    allKeys = [encoderStateFunctionIndexes3 allKeys];

                    v281 = allKeys;
                    v282 = [allKeys countByEnumeratingWithState:&v517 objects:v568 count:16];
                    if (v282)
                    {
                      v283 = *v518;
                      v284 = *MEMORY[0x277D0B3A8];
                      do
                      {
                        for (m = 0; m != v282; ++m)
                        {
                          if (*v518 != v283)
                          {
                            objc_enumerationMutation(allKeys);
                          }

                          v286 = *(*(&v517 + 1) + 8 * m);
                          encoderStateFunctionIndexes4 = [v465 encoderStateFunctionIndexes];
                          v288 = [encoderStateFunctionIndexes4 objectForKeyedSubscript:v286];

                          unsignedLongValue2 = [v288 unsignedLongValue];
                          if (unsignedLongValue2 > [v465 lastInterestingFunctionIndex])
                          {
                            v290 = [v460 objectForKeyedSubscript:v284];
                            [v290 removeObjectForKey:v288];
                          }
                        }

                        v281 = allKeys;
                        v282 = [allKeys countByEnumeratingWithState:&v517 objects:v568 count:16];
                      }

                      while (v282);
                    }

                    goto LABEL_580;
                  }
                }

                if (!v253)
                {
LABEL_581:

                  v24 = 0;
                  v474 = v465;
                  goto LABEL_249;
                }

                if (**(&selfCopy->super.super.super.super.isa + v458) == -16353)
                {
                  v291 = objc_opt_new();

                  v292 = [(NSMutableDictionary *)selfCopy->_pixelHistory objectForKeyedSubscript:*MEMORY[0x277D0B3D0]];
                  v293 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(&selfCopy->super.super.super.super.isa + *MEMORY[0x277D0AF80])];
                  [v292 setObject:v291 forKeyedSubscript:v293];

                  v294 = objc_opt_new();
                  [v291 setObject:v294 forKeyedSubscript:*MEMORY[0x277D0B3A8]];

                  v295 = objc_opt_new();
                  v480 = *MEMORY[0x277D0B3B8];
                  [v291 setObject:v295 forKeyedSubscript:?];

                  v296 = objc_opt_new();
                  v476 = *MEMORY[0x277D0B3C8];
                  [v291 setObject:v296 forKeyedSubscript:?];

                  v297 = objc_opt_new();
                  v472 = *MEMORY[0x277D0B3C0];
                  [v291 setObject:v297 forKeyedSubscript:?];

                  v515 = 0u;
                  v516 = 0u;
                  v513 = 0u;
                  v514 = 0u;
                  v298 = filteredGenerationOptions;
                  obja = v298;
                  v299 = [v298 countByEnumeratingWithState:&v513 objects:v567 count:16];
                  if (v299)
                  {
                    v300 = *v514;
                    do
                    {
                      for (n = 0; n != v299; ++n)
                      {
                        if (*v514 != v300)
                        {
                          objc_enumerationMutation(obja);
                        }

                        v302 = *(*(&v513 + 1) + 8 * n);
                        v303 = [obja objectForKeyedSubscript:v302];
                        texture3 = [v303 texture];
                        v305 = [(DYMTLFunctionPlayer *)selfCopy keyForOriginalObject:texture3 inverseObjectMap:&selfCopy->_pixelHistoryInverseObjectMap];
                        objc_opt_class();
                        isKindOfClass = objc_opt_isKindOfClass();
                        v307 = @"Color";
                        if ((isKindOfClass & 1) == 0)
                        {
                          objc_opt_class();
                          v308 = objc_opt_isKindOfClass();
                          v307 = @"Depth";
                          if ((v308 & 1) == 0)
                          {
                            objc_opt_class();
                            v309 = objc_opt_isKindOfClass();
                            v307 = @"Stencil";
                            if ((v309 & 1) == 0)
                            {
                              v307 = 0;
                            }
                          }
                        }

                        v305 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%llu", v307, v305];
                        v311 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v303, "loadAction")}];
                        v312 = [v291 objectForKeyedSubscript:v480];
                        [v312 setObject:v311 forKeyedSubscript:v305];

                        v313 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v303, "storeAction")}];
                        v314 = [v291 objectForKeyedSubscript:v476];
                        [v314 setObject:v313 forKeyedSubscript:v305];

                        v315 = [v291 objectForKeyedSubscript:v472];
                        [v315 setObject:v302 forKeyedSubscript:v305];
                      }

                      v298 = obja;
                      v299 = [obja countByEnumeratingWithState:&v513 objects:v567 count:16];
                    }

                    while (v299);
                  }

                  v460 = v291;
                }

                commandBuffer2 = [v450 commandBuffer];
                v444 = *MEMORY[0x277D0AF80];
                v317 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.dt.gputrace-replayer.pixel-history-contd-after-%u", *(&selfCopy->super.super.super.super.isa + v444)];
                v449 = commandBuffer2;
                [commandBuffer2 setLabel:v317];

                for (ii = 0; ii != 8; ++ii)
                {
                  colorAttachments11 = [descriptor2 colorAttachments];
                  v320 = [colorAttachments11 objectAtIndexedSubscript:ii];

                  [(DYMTLCommonDebugFunctionPlayer *)selfCopy _updateMemorylessTextures:v320];
                  [v320 setResolveTexture:0];
                  [v320 setLoadAction:1];
                  if ([v320 storeAction] != 4)
                  {
                    [v320 setStoreAction:1];
                  }
                }

                depthAttachment11 = [descriptor2 depthAttachment];
                [(DYMTLCommonDebugFunctionPlayer *)selfCopy _updateMemorylessTextures:depthAttachment11];
                [depthAttachment11 setResolveTexture:0];
                [depthAttachment11 setLoadAction:1];
                if ([depthAttachment11 storeAction] != 4)
                {
                  [depthAttachment11 setStoreAction:1];
                }

                stencilAttachment10 = [descriptor2 stencilAttachment];
                [(DYMTLCommonDebugFunctionPlayer *)selfCopy _updateMemorylessTextures:stencilAttachment10];
                [stencilAttachment10 setResolveTexture:0];
                [stencilAttachment10 setLoadAction:1];
                if ([stencilAttachment10 storeAction] != 4)
                {
                  [stencilAttachment10 setStoreAction:1];
                }

                v323 = DYMTLNewStatefulRenderCommandEncoder(v449, descriptor2);
                [(DYMTLCommonDebugFunctionPlayer *)selfCopy encodeStoreActionForRenderCommandEncoder:v323 withDescriptor:descriptor2];
                v512[0] = MEMORY[0x277D85DD0];
                v512[1] = 3221225472;
                v512[2] = __57__DYMTLCommonDebugFunctionPlayer_executeGraphicsFunction__block_invoke_4;
                v512[3] = &unk_27930F3E0;
                v512[4] = selfCopy;
                [v452 applyAllStateToEncoder:v323 rawBytesBlock:v512];
                [v452 endEncoding];
                [v461 commit];
                [v461 waitUntilCompleted];
                v324 = MEMORY[0x277D25728];
                device3 = [(DYMTLFunctionPlayer *)selfCopy device];
                v446 = v323;
                v441 = [v324 forDevice:device3];

                encoderStateFunctionIndexes2 = objc_opt_new();
                v481 = objc_opt_new();
                [encoderStateFunctionIndexes2 setObject:? forKeyedSubscript:?];
                v327 = **(&selfCopy->super.super.super.super.isa + v458);
                if (v327 != -16353 && GPUTools::MTL::IsFuncEnumDrawCall(v327))
                {
                  if ([(DYMTLDebugWireframeRenderer *)selfCopy->_wireframeRenderer currentRenderPipelineHasBufferOrTextureReadWrite:__p])
                  {
                    v328 = [MEMORY[0x277CCABB0] numberWithLongLong:*MEMORY[0x277D0B440]];
                    [encoderStateFunctionIndexes2 setObject:v328 forKeyedSubscript:*MEMORY[0x277D0B3D8]];
                  }

                  else
                  {
                    commandBuffer3 = [v450 commandBuffer];

                    v356 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.dt.gputrace-replayer.pixel-history-total-draws-%u", *(&selfCopy->super.super.super.super.isa + v444)];
                    [commandBuffer3 setLabel:v356];

                    [(DYMTLPixelHistoryDrawStatsSupport *)selfCopy->_pixelHistoryDrawStatsRenderer prepareWithCommandEncoderId:__p parallelEncoderId:0 pipelineId:v440 renderPassDescriptor:v445 + 3];
                    v511[0] = MEMORY[0x277D85DD0];
                    v511[1] = 3221225472;
                    v511[2] = __57__DYMTLCommonDebugFunctionPlayer_executeGraphicsFunction__block_invoke_5;
                    v511[3] = &unk_27930F730;
                    v511[4] = selfCopy;
                    v357 = [(DYMTLCommonDebugFunctionPlayer *)selfCopy collectPixelDrawStatsTotal:commandBuffer3 originalPipeline:v448 atX:unsignedLongLongValue2 y:unsignedLongLongValue3 draw:v511];
                    [commandBuffer3 commit];
                    [commandBuffer3 waitUntilCompleted];
                    [encoderStateFunctionIndexes2 addEntriesFromDictionary:v357];

                    v461 = commandBuffer3;
                  }
                }

                if (**(&selfCopy->super.super.super.super.isa + v458) != -16353)
                {
                  v358 = [encoderStateFunctionIndexes2 objectForKeyedSubscript:*MEMORY[0x277D0B3D8]];
                  v359 = [v358 longLongValue] == 0;

                  v360 = v466 && v359;
                  v326 = v449;
                  v361 = v323;
                  v349 = v481;
                  if (v360)
                  {
LABEL_578:
                    [(DYMTLFunctionPlayer *)selfCopy setObject:v326 forKey:v443];
                    [(DYMTLFunctionPlayer *)selfCopy setObject:v361 forKey:__p];
                    goto LABEL_579;
                  }
                }

                v473 = *(v445 + 1616);
                objb = [v450 commandBuffer];

                v362 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.dt.gputrace-replayer.pixel-history-blits-n-additional-stats-%u", *(&selfCopy->super.super.super.super.isa + v444)];
                [objb setLabel:v362];

                v477 = [(NSMutableDictionary *)selfCopy->_pixelHistory objectForKeyedSubscript:*MEMORY[0x277D0B430]];
                v509 = 0u;
                v510 = 0u;
                v507 = 0u;
                v508 = 0u;
                allValues = [v447 allValues];
                v463 = allValues;
                v364 = [allValues countByEnumeratingWithState:&v507 objects:v566 count:16];
                if (v364)
                {
                  v468 = *v508;
                  do
                  {
                    for (jj = 0; jj != v364; ++jj)
                    {
                      if (*v508 != v468)
                      {
                        objc_enumerationMutation(v463);
                      }

                      v366 = *(*(&v507 + 1) + 8 * jj);
                      texture4 = [v366 texture];
                      v368 = [(DYMTLFunctionPlayer *)selfCopy keyForOriginalObject:texture4 inverseObjectMap:&selfCopy->_pixelHistoryInverseObjectMap];
                      v369 = MEMORY[0x277D25720];
                      level2 = [v366 level];
                      slice2 = [v366 slice];
                      depthPlane2 = [v366 depthPlane];
                      v502[0] = MEMORY[0x277D85DD0];
                      v502[1] = 3221225472;
                      v502[2] = __57__DYMTLCommonDebugFunctionPlayer_executeGraphicsFunction__block_invoke_6;
                      v502[3] = &unk_27930F758;
                      v503 = v477;
                      v506 = v368;
                      v373 = texture4;
                      v504 = v373;
                      v505 = v481;
                      LOBYTE(v439) = v473;
                      [v369 pixelValueFromTexture:v373 level:level2 slice:slice2 depthPlane:depthPlane2 atX:unsignedLongLongValue2 y:unsignedLongLongValue3 inCommandBuffer:objb overHarvestForDepthStencil:v439 completion:v502];
                    }

                    allValues = v463;
                    v364 = [v463 countByEnumeratingWithState:&v507 objects:v566 count:16];
                  }

                  while (v364);
                }

                v374 = *MEMORY[0x277D0B3D8];
                v375 = [encoderStateFunctionIndexes2 objectForKeyedSubscript:*MEMORY[0x277D0B3D8]];
                v376 = [v375 longLongValue] > 0;

                if (v376)
                {
                  v501[0] = MEMORY[0x277D85DD0];
                  v501[1] = 3221225472;
                  v501[2] = __57__DYMTLCommonDebugFunctionPlayer_executeGraphicsFunction__block_invoke_7;
                  v501[3] = &unk_27930F730;
                  v501[4] = selfCopy;
                  v377 = objb;
                  v378 = [(DYMTLCommonDebugFunctionPlayer *)selfCopy collectPixelDrawStats:objb originalEncoderId:__p originalEncoder:v452 originalPipeline:v448 atX:unsignedLongLongValue2 y:unsignedLongLongValue3 draw:v501];
                }

                else
                {
                  v378 = 0;
                  v377 = objb;
                }

                [v377 commit];
                [v377 waitUntilCompleted];
                v469 = v378;
                if (!v378)
                {
                  if (GPUTools::MTL::IsFuncEnumDrawCall(**(&selfCopy->super.super.super.super.isa + v458)))
                  {
                    [encoderStateFunctionIndexes2 setObject:&unk_2860BA1C8 forKeyedSubscript:*MEMORY[0x277D0B3A0]];
                    [encoderStateFunctionIndexes2 setObject:&unk_2860BA1C8 forKeyedSubscript:*MEMORY[0x277D0B3B0]];
                    [encoderStateFunctionIndexes2 setObject:&unk_2860BA1C8 forKeyedSubscript:*MEMORY[0x277D0B410]];
                  }

                  goto LABEL_565;
                }

                [encoderStateFunctionIndexes2 addEntriesFromDictionary:v378];
                v379 = [encoderStateFunctionIndexes2 objectForKeyedSubscript:*MEMORY[0x277D0B3F0]];
                longLongValue = [v379 longLongValue];

                v381 = [encoderStateFunctionIndexes2 objectForKeyedSubscript:*MEMORY[0x277D0B400]];
                longLongValue2 = [v381 longLongValue];

                v383 = [encoderStateFunctionIndexes2 objectForKeyedSubscript:*MEMORY[0x277D0B3E0]];
                longLongValue3 = [v383 longLongValue];

                v385 = [encoderStateFunctionIndexes2 objectForKeyedSubscript:*MEMORY[0x277D0B3F8]];
                longLongValue4 = [v385 longLongValue];

                v387 = [MEMORY[0x277CCABB0] numberWithLongLong:longLongValue4];
                [encoderStateFunctionIndexes2 setObject:v387 forKeyedSubscript:*MEMORY[0x277D0B3A0]];

                depthStencilState = [v452 depthStencilState];
                v389 = depthStencilState;
                if (!depthStencilState || (DYMTLGetAssociatedObject(depthStencilState, 0), v390 = objc_claimAutoreleasedReturnValue(), v390, !v390))
                {
                  [encoderStateFunctionIndexes2 setObject:&unk_2860BA1B0 forKeyedSubscript:*MEMORY[0x277D0B3B0]];
                  [encoderStateFunctionIndexes2 setObject:&unk_2860BA1B0 forKeyedSubscript:*MEMORY[0x277D0B410]];
LABEL_564:

                  v377 = objb;
LABEL_565:
                  stencilAttachment11 = [descriptor2 stencilAttachment];
                  texture5 = [stencilAttachment11 texture];
                  depthAttachment12 = [descriptor2 depthAttachment];
                  texture6 = [depthAttachment12 texture];
                  if (texture5 | texture6)
                  {
                    commandBuffer4 = [v450 commandBuffer];

                    v377 = commandBuffer4;
                    v428 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.dt.gputrace-replayer.pixel-history-save-depth-stencil-%u", *(&selfCopy->super.super.super.super.isa + v444)];
                    [v377 setLabel:v428];

                    if (texture5)
                    {
                      LOBYTE(v439) = v473;
                      v429 = [MEMORY[0x277D25720] pixelValueFromTexture:texture5 level:objc_msgSend(stencilAttachment11 slice:"level") depthPlane:objc_msgSend(stencilAttachment11 atX:"slice") y:objc_msgSend(stencilAttachment11 inCommandBuffer:"depthPlane") overHarvestForDepthStencil:{unsignedLongLongValue2, unsignedLongLongValue3, v377, v439}];
                      pixelHistoryPixelPreviousStencil = selfCopy->_pixelHistoryPixelPreviousStencil;
                      selfCopy->_pixelHistoryPixelPreviousStencil = v429;
                    }

                    if (texture6)
                    {
                      if (texture5 == texture6)
                      {
                        v431 = selfCopy->_pixelHistoryPixelPreviousStencil;
                      }

                      else
                      {
                        LOBYTE(v439) = v473;
                        v431 = [MEMORY[0x277D25720] pixelValueFromTexture:texture6 level:objc_msgSend(depthAttachment12 slice:"level") depthPlane:objc_msgSend(depthAttachment12 atX:"slice") y:objc_msgSend(depthAttachment12 inCommandBuffer:"depthPlane") overHarvestForDepthStencil:{unsignedLongLongValue2, unsignedLongLongValue3, v377, v439}];
                      }

                      pixelHistoryPixelPreviousDepth = selfCopy->_pixelHistoryPixelPreviousDepth;
                      selfCopy->_pixelHistoryPixelPreviousDepth = v431;
                    }

                    [v377 commit];
                    [v377 waitUntilCompleted];
                  }

                  objc = v377;

                  [v465 setLastInterestingFunctionIndex:*(&selfCopy->super.super.super.super.isa + v444)];
                  v433 = [v460 objectForKeyedSubscript:*MEMORY[0x277D0B3A8]];
                  v434 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(&selfCopy->super.super.super.super.isa + v444)];
                  [v433 setObject:encoderStateFunctionIndexes2 forKeyedSubscript:v434];

                  if (v442)
                  {
                    v435 = [encoderStateFunctionIndexes2 objectForKeyedSubscript:v374];
                    longLongValue5 = [v435 longLongValue];

                    if (longLongValue5 >= 1)
                    {
                      v437 = [(DYMTLCommonDebugFunctionPlayer *)selfCopy generatePerPrimitiveHistory:longLongValue5 commandQueue:v450 currentEncoderId:__p originalEncoder:v452 originalPipeline:v448 atX:unsignedLongLongValue2 y:unsignedLongLongValue3];
                      [encoderStateFunctionIndexes2 setObject:v437 forKeyedSubscript:*MEMORY[0x277D0B408]];
                    }
                  }

                  v349 = v481;
                  v461 = objc;
                  v326 = v449;
                  v361 = v446;
                  goto LABEL_578;
                }

                if ([v390 isDepthWriteEnabled])
                {
                  v391 = [MEMORY[0x277CCABB0] numberWithLongLong:longLongValue4];
                  [encoderStateFunctionIndexes2 setObject:v391 forKeyedSubscript:*MEMORY[0x277D0B3B0]];
                }

                else
                {
                  [encoderStateFunctionIndexes2 setObject:&unk_2860BA1B0 forKeyedSubscript:*MEMORY[0x277D0B3B0]];
                }

                v393 = *MEMORY[0x277D0B440];
                if ((longLongValue | longLongValue2) < 0)
                {
                  v394 = v393;
                }

                else
                {
                  v394 = longLongValue2 < longLongValue;
                }

                if ((longLongValue2 | longLongValue3) < 0)
                {
                  v395 = v393;
                }

                else
                {
                  v395 = longLongValue3 < longLongValue2;
                }

                if (longLongValue4 < 0)
                {
                  if (longLongValue4 == *MEMORY[0x277D0B438])
                  {
                    longLongValue4 = 1;
                  }

                  else if (longLongValue4 == v393)
                  {
                    longLongValue4 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    longLongValue4 = 0;
                  }
                }

                frontFaceStencil = [v390 frontFaceStencil];
                if ([frontFaceStencil stencilFailureOperation])
                {
                }

                else
                {
                  backFaceStencil = [v390 backFaceStencil];
                  v413 = [backFaceStencil stencilFailureOperation] == 0;

                  if (v413)
                  {
                    v394 = 0;
                  }
                }

                frontFaceStencil2 = [v390 frontFaceStencil];
                if ([frontFaceStencil2 depthFailureOperation])
                {
                }

                else
                {
                  backFaceStencil2 = [v390 backFaceStencil];
                  v416 = [backFaceStencil2 depthFailureOperation] == 0;

                  if (v416)
                  {
                    goto LABEL_552;
                  }
                }

                if (v394)
                {
                  if (v395 > 0 && v394 < 0)
                  {
                    v394 = 1;
                  }

                  else
                  {
                    v394 = v394;
                  }
                }

                else
                {
                  v394 = v395;
                }

LABEL_552:
                frontFaceStencil3 = [v390 frontFaceStencil];
                if ([frontFaceStencil3 depthStencilPassOperation])
                {
                }

                else
                {
                  backFaceStencil3 = [v390 backFaceStencil];
                  v420 = [backFaceStencil3 depthStencilPassOperation] == 0;

                  if (v420)
                  {
LABEL_563:
                    v422 = [MEMORY[0x277CCABB0] numberWithInt:v394];
                    [encoderStateFunctionIndexes2 setObject:v422 forKeyedSubscript:*MEMORY[0x277D0B410]];

                    goto LABEL_564;
                  }
                }

                if (v394)
                {
                  if (longLongValue4 > 0 && v394 < 0)
                  {
                    v394 = 1;
                  }

                  else
                  {
                    v394 = v394;
                  }
                }

                else
                {
                  v394 = longLongValue4;
                }

                goto LABEL_563;
              }
            }
          }

          goto LABEL_248;
        }
      }
    }

    unsignedLongLongValue3 = 0;
    unsignedLongLongValue2 = 0;
    v492 = 0;
    v466 = 0;
    v470 = 0;
    v101 = 0;
    v86 = __p;
    goto LABEL_156;
  }

  if (playbackMode > 3)
  {
    if (playbackMode != 4)
    {
      if (playbackMode == 5)
      {
        goto LABEL_44;
      }

      if ([(DYFunctionPlayer *)self mainExecutionMode])
      {
        v14 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF80]);
        if (v14 == [v499 targetFunctionIndex] - 1)
        {
          v15 = *MEMORY[0x277D0AFA0];
          if ((GPUTools::MTL::IsFuncEnumDrawCall(**(&selfCopy->super.super.super.super.isa + v15)) & 1) != 0 || GPUTools::MTL::IsFuncEnumIndirectExecuteDrawCall(**(&selfCopy->super.super.super.super.isa + v15)))
          {
            *&__p = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&selfCopy->super.super.super.super.isa + v15) + 48, 0);
            v16 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&selfCopy->_encoderMap.__table_.__bucket_list_.__ptr_, &__p);
            v17 = v16;
            if (v16)
            {
              v18 = v16[4];
              v550.i64[0] = 0;
              v19 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&selfCopy->_encoderToParallelEncoderMap.__table_.__bucket_list_.__ptr_, &__p);
              if (!v19 || (v550.i64[0] = v19[3], (v17 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&selfCopy->_parallelEncoderMap.__table_.__bucket_list_.__ptr_, &v550)) != 0))
              {
                v562 = 0;
                if (GPUTools::MTL::IsFuncEnumIndirectExecuteDrawCall(**(&selfCopy->super.super.super.super.isa + v15)))
                {
                  v530 = 0;
                  v20 = -[DYMTLCommonDebugFunctionPlayer _executeIndirectCommandBufferUpToSubIndex:outBuffer:outDataPointer:](selfCopy, "_executeIndirectCommandBufferUpToSubIndex:outBuffer:outDataPointer:", [v499 targetSubCommandIndex], &v530, &v562);
                  v21 = v530;
                  if (v20)
                  {
                    v18 = v20;
                  }
                }

                else
                {
                  v21 = 0;
                }

                [(DYMTLPostVertexDump *)selfCopy->_postVertexDump createAndSetPostVertexDumpPipelineState:v17[3] commandEncoderId:__p pipelineId:v18];
                if (v21)
                {
                  indirectCommandManager2 = [(DYMTLFunctionPlayer *)selfCopy indirectCommandManager];
                  v223 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:__p];
                  [indirectCommandManager2 executeIndirectRenderCommand:v223 withData:v562 atIndex:objc_msgSend(v499 forIndirectCommandBuffer:{"targetSubCommandIndex"), v21}];
                }

                else
                {
                  v529.receiver = selfCopy;
                  v529.super_class = DYMTLCommonDebugFunctionPlayer;
                  [(DYMTLFunctionPlayer *)&v529 executeGraphicsFunction];
                }

                selfCopy->_targetFunctionNeedsSeparatedPostVertexDump = 0;
              }
            }

            goto LABEL_324;
          }
        }
      }

      goto LABEL_88;
    }

    if (!-[DYFunctionPlayer mainExecutionMode](self, "mainExecutionMode") || (v44 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF80]), v44 != [v499 targetFunctionIndex] - 1) || (v45 = *MEMORY[0x277D0AFA0], (GPUTools::MTL::IsFuncEnumDrawCall(**(&selfCopy->super.super.super.super.isa + v45)) & 1) == 0) && (GPUTools::MTL::IsFuncEnumIndirectExecuteDrawCall(**(&selfCopy->super.super.super.super.isa + v45)) & 1) == 0 && !GPUTools::MTL::IsFuncEnumTileCall(**(&selfCopy->super.super.super.super.isa + v45)))
    {
      if ([(DYFunctionPlayer *)selfCopy mainExecutionMode])
      {
        v60 = *(&selfCopy->super.super.super.super.isa + *MEMORY[0x277D0AF80]);
        if (v60 == [v499 targetFunctionIndex] - 1)
        {
          v61 = *MEMORY[0x277D0AFA0];
          if (GPUTools::MTL::IsFuncEnumIndirectExecuteComputeCall(**(&selfCopy->super.super.super.super.isa + v61)))
          {
            v62 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&selfCopy->super.super.super.super.isa + v61) + 48, 0);
            *&__p = 0;
            v531 = 0;
            -[DYMTLCommonDebugFunctionPlayer _executeIndirectCommandBufferUpToSubIndex:outBuffer:outDataPointer:](selfCopy, "_executeIndirectCommandBufferUpToSubIndex:outBuffer:outDataPointer:", [v499 targetSubCommandIndex], &v531, &__p);
            v63 = v531;
            v64 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:v62];
            indirectCommandManager3 = [(DYMTLFunctionPlayer *)selfCopy indirectCommandManager];
            [indirectCommandManager3 executeIndirectComputeCommand:v64 withData:__p atIndex:objc_msgSend(v499 forIndirectCommandBuffer:{"targetSubCommandIndex"), v63}];

            [(DYMTLCommonDebugFunctionPlayer *)selfCopy extractIndirectArgumentBuffers];
            [(DYMTLCommonDebugFunctionPlayer *)selfCopy extractCommandBufferTranslationData];

            goto LABEL_324;
          }
        }
      }

      [(DYMTLCommonDebugFunctionPlayer *)selfCopy _executeGraphicsFunction];
      if ([(DYFunctionPlayer *)selfCopy mainExecutionMode])
      {
        v74 = *(&selfCopy->super.super.super.super.isa + *MEMORY[0x277D0AF80]);
        if (v74 == [v499 targetFunctionIndex] - 1)
        {
          if (GPUTools::MTL::IsFuncEnumComputeCall(**(&selfCopy->super.super.super.super.isa + *MEMORY[0x277D0AFA0])))
          {
            [(DYMTLCommonDebugFunctionPlayer *)selfCopy extractIndirectArgumentBuffers];
            [(DYMTLCommonDebugFunctionPlayer *)selfCopy extractCommandBufferTranslationData];
          }
        }
      }

      shouldExecuteGraphicsFunction = [(DYMTLCommonDebugFunctionPlayer *)selfCopy shouldExecuteGraphicsFunction];
      goto LABEL_125;
    }

    *&__p = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&selfCopy->super.super.super.super.isa + v45) + 48, 0);
    v46 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&selfCopy->_encoderMap.__table_.__bucket_list_.__ptr_, &__p);
    v47 = v46;
    if (v46)
    {
      v48 = v46[4];
      v550.i64[0] = 0;
      v49 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&selfCopy->_encoderToParallelEncoderMap.__table_.__bucket_list_.__ptr_, &__p);
      if (!v49 || (v550.i64[0] = v49[3], (v47 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&selfCopy->_parallelEncoderMap.__table_.__bucket_list_.__ptr_, &v550)) != 0))
      {
        v562 = 0;
        if (GPUTools::MTL::IsFuncEnumIndirectExecuteDrawCall(**(&selfCopy->super.super.super.super.isa + v45)))
        {
          v544 = 0;
          v50 = -[DYMTLCommonDebugFunctionPlayer _executeIndirectCommandBufferUpToSubIndex:outBuffer:outDataPointer:](selfCopy, "_executeIndirectCommandBufferUpToSubIndex:outBuffer:outDataPointer:", [v499 targetSubCommandIndex], &v544, &v562);
          v495 = v544;
          if (v50)
          {
            v48 = v50;
          }
        }

        else
        {
          v495 = 0;
        }

        v214 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&selfCopy->_commandEncoderDescriptorMap.__table_.__bucket_list_.__ptr_, v47 + 5);
        v215 = v214;
        if (v214)
        {
          v216 = v214 + 3;
        }

        else
        {
          v216 = 0;
        }

        if (selfCopy->_wireframeRenderMode == 2)
        {
          v217 = 2;
        }

        else
        {
          v217 = [(DYMTLDebugWireframeRenderer *)selfCopy->_wireframeRenderer prepareWireframeTextureWithCommandBufferId:v47[3] commandEncoderId:__p parallelEncoderId:v550.i64[0] pipelineId:v48 renderPassDescriptor:v216];
          selfCopy->_wireframeRenderMode = v217;
        }

        if (v215)
        {
          v218 = (v215[185] + 1) > 1 || (v215[186] - 1) < 0xFFFFFFFFFFFFFFFELL;
        }

        else
        {
          v218 = 0;
        }

        if (v217 <= 1)
        {
          if (!v217)
          {
            if (v495)
            {
              indirectCommandManager4 = [(DYMTLFunctionPlayer *)selfCopy indirectCommandManager];
              v268 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:__p];
              [indirectCommandManager4 executeIndirectRenderCommand:v268 withData:v562 atIndex:objc_msgSend(v499 forIndirectCommandBuffer:{"targetSubCommandIndex"), v495}];

              v269 = selfCopy;
            }

            else
            {
              v269 = selfCopy;
              v543.receiver = selfCopy;
              v543.super_class = DYMTLCommonDebugFunctionPlayer;
              [(DYMTLFunctionPlayer *)&v543 executeGraphicsFunction];
            }

            [(DYMTLCommonDebugFunctionPlayer *)v269 extractIndirectArgumentBuffers];
            [(DYMTLCommonDebugFunctionPlayer *)v269 extractCommandBufferTranslationData];
            if (v218)
            {
              [(DYMTLCommonDebugFunctionPlayer *)v269 _extractTileMemoryWithRenderPassDescriptor:v216 renderEncoderID:__p isDrawCall:GPUTools::MTL::IsFuncEnumDrawCall(**(&v269->super.super.super.super.isa + v45))];
            }

            if ([(DYMTLPostVertexDump *)v269->_postVertexDump createAndSetPostVertexDumpPipelineState:v47[3] commandEncoderId:__p pipelineId:v48])
            {
              if (v495)
              {
                indirectCommandManager5 = [(DYMTLFunctionPlayer *)selfCopy indirectCommandManager];
                v335 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:__p];
                [indirectCommandManager5 executeIndirectRenderCommand:v335 withData:v562 atIndex:objc_msgSend(v499 forIndirectCommandBuffer:{"targetSubCommandIndex"), v495}];

                v269 = selfCopy;
              }

              else
              {
                v269 = selfCopy;
                v542.receiver = selfCopy;
                v542.super_class = DYMTLCommonDebugFunctionPlayer;
                [(DYMTLFunctionPlayer *)&v542 executeGraphicsFunction];
              }
            }

            if ([(DYMTLDebugWireframeRenderer *)v269->_wireframeRenderer createWireframeRenderCommandEncoder:v216])
            {
              if (v495)
              {
                indirectCommandManager6 = [(DYMTLFunctionPlayer *)selfCopy indirectCommandManager];
                v352 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:__p];
                [indirectCommandManager6 executeIndirectRenderCommand:v352 withData:v562 atIndex:objc_msgSend(v499 forIndirectCommandBuffer:{"targetSubCommandIndex"), v495}];

                v269 = selfCopy;
              }

              else
              {
                v269 = selfCopy;
                v541.receiver = selfCopy;
                v541.super_class = DYMTLCommonDebugFunctionPlayer;
                [(DYMTLFunctionPlayer *)&v541 executeGraphicsFunction];
              }

              if (v550.i64[0])
              {
                *(v47 + 48) = 1;
                std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(&v269->_encoderToParallelEncoderMap.__table_.__bucket_list_.__ptr_, &__p);
                v269->_lastEncoderID = 0;
                v550.i64[0] = 0;
              }

              if ([(DYMTLDebugWireframeRenderer *)v269->_wireframeRenderer createSolidRenderCommandEncoder:v216 commandBufferId:v47[3] commandEncoderId:__p parallelEncoderId:0])
              {
                if (v495)
                {
                  indirectCommandManager7 = [(DYMTLFunctionPlayer *)selfCopy indirectCommandManager];
                  v354 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:__p];
                  [indirectCommandManager7 executeIndirectRenderCommand:v354 withData:v562 atIndex:objc_msgSend(v499 forIndirectCommandBuffer:{"targetSubCommandIndex"), v495}];

                  v269 = selfCopy;
                }

                else
                {
                  v269 = selfCopy;
                  v540.receiver = selfCopy;
                  v540.super_class = DYMTLCommonDebugFunctionPlayer;
                  [(DYMTLFunctionPlayer *)&v540 executeGraphicsFunction];
                }

                [(DYMTLDebugWireframeRenderer *)v269->_wireframeRenderer createOutlineTexture];
              }
            }

            wireframeTexture = [(DYMTLDebugWireframeRenderer *)v269->_wireframeRenderer wireframeTexture];
            [(DYMTLFunctionPlayer *)v269 setObject:wireframeTexture forKey:*MEMORY[0x277D25740]];

            outlineTexture = [(DYMTLDebugWireframeRenderer *)selfCopy->_wireframeRenderer outlineTexture];
            [(DYMTLFunctionPlayer *)selfCopy setObject:outlineTexture forKey:*MEMORY[0x277D25730]];

            solidTexture = [(DYMTLDebugWireframeRenderer *)selfCopy->_wireframeRenderer solidTexture];
            [(DYMTLFunctionPlayer *)selfCopy setObject:solidTexture forKey:*MEMORY[0x277D25738]];
            goto LABEL_518;
          }

          if (v217 == 1)
          {
            if (v550.i64[0])
            {
              *(v47 + 48) = 1;
              std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(&selfCopy->_encoderToParallelEncoderMap.__table_.__bucket_list_.__ptr_, &__p);
              selfCopy->_lastEncoderID = 0;
            }

            if (v495)
            {
              indirectCommandManager8 = [(DYMTLFunctionPlayer *)selfCopy indirectCommandManager];
              v258 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:__p];
              [indirectCommandManager8 executeIndirectRenderCommand:v258 withData:v562 atIndex:objc_msgSend(v499 forIndirectCommandBuffer:{"targetSubCommandIndex"), v495}];

              v259 = selfCopy;
            }

            else
            {
              v259 = selfCopy;
              v539.receiver = selfCopy;
              v539.super_class = DYMTLCommonDebugFunctionPlayer;
              [(DYMTLFunctionPlayer *)&v539 executeGraphicsFunction];
            }

            if (GPUTools::MTL::IsFuncEnumDrawCall(**(&v259->super.super.super.super.isa + v45)))
            {
              v336 = 1;
            }

            else
            {
              v336 = GPUTools::MTL::IsFuncEnumIndirectExecuteDrawCall(**(&selfCopy->super.super.super.super.isa + v45));
            }

            selfCopy->_targetFunctionNeedsSeparatedPostVertexDump = v336;
            solidTexture = [(DYMTLDebugWireframeRenderer *)selfCopy->_wireframeRenderer wireframeTexture];
            [(DYMTLFunctionPlayer *)selfCopy setObject:solidTexture forKey:*MEMORY[0x277D25740]];
LABEL_518:
          }

LABEL_519:

          goto LABEL_324;
        }

        if (v217 == 2)
        {
          p_isa = &selfCopy->super.super.super.super.isa;
          if ([(DYMTLDebugWireframeRenderer *)selfCopy->_wireframeRenderer createSolidRenderCommandEncoder:v216 commandBufferId:v47[3] commandEncoderId:__p parallelEncoderId:v550.i64[0]])
          {
            if (v550.i64[0])
            {
              *(v47 + 48) = 1;
              std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(&selfCopy->_encoderToParallelEncoderMap.__table_.__bucket_list_.__ptr_, &__p);
              selfCopy->_lastEncoderID = 0;
            }

            if (v495)
            {
              indirectCommandManager9 = [(DYMTLFunctionPlayer *)selfCopy indirectCommandManager];
              v272 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:__p];
              [indirectCommandManager9 executeIndirectRenderCommand:v272 withData:v562 atIndex:objc_msgSend(v499 forIndirectCommandBuffer:{"targetSubCommandIndex"), v495}];

              p_isa = &selfCopy->super.super.super.super.isa;
            }

            else
            {
              p_isa = &selfCopy->super.super.super.super.isa;
              v538.receiver = selfCopy;
              v538.super_class = DYMTLCommonDebugFunctionPlayer;
              [(DYMTLFunctionPlayer *)&v538 executeGraphicsFunction];
            }

            [p_isa[256] createOutlineTexture];
          }

          outlineTexture2 = [p_isa[256] outlineTexture];
          [p_isa setObject:outlineTexture2 forKey:*MEMORY[0x277D25730]];

          solidTexture = [(DYMTLDebugWireframeRenderer *)selfCopy->_wireframeRenderer solidTexture];
          [(DYMTLFunctionPlayer *)selfCopy setObject:solidTexture forKey:*MEMORY[0x277D25738]];
          goto LABEL_518;
        }

        if (v217 != 3)
        {
          goto LABEL_519;
        }

        if (GPUTools::MTL::IsFuncEnumDrawCall(**(&selfCopy->super.super.super.super.isa + v45)))
        {
          v494 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:v48];
          v260 = DYMTLGetAssociatedObject(v494, 2u);
          v491 = v260;
          if (v260)
          {
            v536 = 0u;
            v537 = 0u;
            v534 = 0u;
            v535 = 0u;
            vertexBindings = [v260 vertexBindings];
            v262 = [vertexBindings countByEnumeratingWithState:&v534 objects:v570 count:16];
            if (v262)
            {
              v263 = *v535;
              while (2)
              {
                for (kk = 0; kk != v262; ++kk)
                {
                  if (*v535 != v263)
                  {
                    objc_enumerationMutation(vertexBindings);
                  }

                  v265 = *(*(&v534 + 1) + 8 * kk);
                  if ([v265 access] == 1 && (objc_msgSend(v265, "type") | 2) == 2)
                  {
                    v266 = 1;
                    goto LABEL_443;
                  }
                }

                v262 = [vertexBindings countByEnumeratingWithState:&v534 objects:v570 count:16];
                if (v262)
                {
                  continue;
                }

                break;
              }
            }

            v266 = 0;
LABEL_443:
          }

          else
          {
            v266 = 0;
          }

          selfCopy->_targetFunctionNeedsSeparatedPostVertexDump = 0;
          if ([(DYMTLPostVertexDump *)selfCopy->_postVertexDump createAndSetPostVertexDumpPipelineState:v47[3] commandEncoderId:__p pipelineId:v48])
          {
            v533.receiver = selfCopy;
            v533.super_class = DYMTLCommonDebugFunctionPlayer;
            [(DYMTLFunctionPlayer *)&v533 executeGraphicsFunction];
            if (v266)
            {
              selfCopy->_targetFunctionNeedsSeparatedPostVertexDump = 1;

LABEL_513:
              [(DYMTLFunctionPlayer *)selfCopy setObject:0 forKey:*MEMORY[0x277D25740]];
              [(DYMTLFunctionPlayer *)selfCopy setObject:0 forKey:*MEMORY[0x277D25730]];
              [(DYMTLFunctionPlayer *)selfCopy setObject:0 forKey:*MEMORY[0x277D25738]];
              goto LABEL_519;
            }

            v396 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:__p];
            [v396 setRenderPipelineState:v494];
          }
        }

        if (v495)
        {
          indirectCommandManager10 = [(DYMTLFunctionPlayer *)selfCopy indirectCommandManager];
          v398 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:__p];
          [indirectCommandManager10 executeIndirectRenderCommand:v398 withData:v562 atIndex:objc_msgSend(v499 forIndirectCommandBuffer:{"targetSubCommandIndex"), v495}];
        }

        else
        {
          v532.receiver = selfCopy;
          v532.super_class = DYMTLCommonDebugFunctionPlayer;
          [(DYMTLFunctionPlayer *)&v532 executeGraphicsFunction];
        }

        [(DYMTLCommonDebugFunctionPlayer *)selfCopy extractIndirectArgumentBuffers];
        [(DYMTLCommonDebugFunctionPlayer *)selfCopy extractCommandBufferTranslationData];
        if (v218)
        {
          [(DYMTLCommonDebugFunctionPlayer *)selfCopy _extractTileMemoryWithRenderPassDescriptor:v216 renderEncoderID:__p isDrawCall:GPUTools::MTL::IsFuncEnumDrawCall(**(&selfCopy->super.super.super.super.isa + v45))];
        }

        goto LABEL_513;
      }
    }

LABEL_324:
    v251 = *MEMORY[0x277D0AFA0];
    if ((GPUTools::MTL::IsFuncEnumDrawCall(**(&selfCopy->super.super.super.super.isa + v251)) & 1) != 0 || (GPUTools::MTL::IsFuncEnumComputeCall(**(&selfCopy->super.super.super.super.isa + v251)) & 1) != 0 || GPUTools::MTL::IsFuncEnumTileCall(**(&selfCopy->super.super.super.super.isa + v251)))
    {
      [v499 setExecutedDrawCallCount:{objc_msgSend(v499, "executedDrawCallCount") + 1}];
    }

    goto LABEL_328;
  }

  if ((playbackMode - 1) >= 3)
  {
    if (!playbackMode)
    {
      if (self->_wireframeRenderMode == 1 || self->_targetFunctionNeedsSeparatedPostVertexDump)
      {
        if ([(DYFunctionPlayer *)self mainExecutionMode])
        {
          v4 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF80]);
          v31 = v4 == [v499 targetFunctionIndex] - 1;
          self = selfCopy;
          if (v31)
          {
            v5 = *MEMORY[0x277D0AFA0];
            self = selfCopy;
            if (GPUTools::MTL::IsFuncEnumDrawCall(**(&selfCopy->super.super.super.super.isa + v5)) & 1) != 0 || (self = selfCopy, (GPUTools::MTL::IsFuncEnumIndirectExecuteDrawCall(**(&selfCopy->super.super.super.super.isa + v5))) || (self = selfCopy, GPUTools::MTL::IsFuncEnumTileCall(**(&selfCopy->super.super.super.super.isa + v5))))
            {
              *&__p = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v5) + 48, 0);
              v6 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_encoderMap.__table_.__bucket_list_.__ptr_, &__p);
              if (v6)
              {
                v550.i64[0] = 0;
                v7 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&selfCopy->_encoderToParallelEncoderMap.__table_.__bucket_list_.__ptr_, &__p);
                if (!v7 || (v550.i64[0] = v7[3], (v6 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&selfCopy->_parallelEncoderMap.__table_.__bucket_list_.__ptr_, &v550)) != 0))
                {
                  v9 = v6[5];
                  v8 = v6 + 5;
                  if (selfCopy->_targetCommandEncoderId != v9)
                  {
                    [sMemorylessTexturesAndReplacements removeAllObjects];
                  }

                  v10 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&selfCopy->_commandEncoderDescriptorMap.__table_.__bucket_list_.__ptr_, v8);
                  if (v10)
                  {
                    v11 = v10 + 3;
                    v12 = (v10[185] + 1) > 1 || (v10[186] - 1) < 0xFFFFFFFFFFFFFFFELL;
                  }

                  else
                  {
                    v11 = 0;
                    v12 = 0;
                  }

                  v562 = 0;
                  if (GPUTools::MTL::IsFuncEnumIndirectExecuteDrawCall(**(&selfCopy->super.super.super.super.isa + v5)))
                  {
                    v528 = 0;
                    -[DYMTLCommonDebugFunctionPlayer _executeIndirectCommandBufferUpToSubIndex:outBuffer:outDataPointer:](selfCopy, "_executeIndirectCommandBufferUpToSubIndex:outBuffer:outDataPointer:", [v499 targetSubCommandIndex], &v528, &v562);
                    v329 = v528;
                    v330 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:__p];
                    indirectCommandManager11 = [(DYMTLFunctionPlayer *)selfCopy indirectCommandManager];
                    [indirectCommandManager11 executeIndirectRenderCommand:v330 withData:v562 atIndex:objc_msgSend(v499 forIndirectCommandBuffer:{"targetSubCommandIndex"), v329}];

                    v332 = selfCopy;
                  }

                  else
                  {
                    v332 = selfCopy;
                    v527.receiver = selfCopy;
                    v527.super_class = DYMTLCommonDebugFunctionPlayer;
                    v329 = 0;
                    [(DYMTLFunctionPlayer *)&v527 executeGraphicsFunction];
                  }

                  [(DYMTLCommonDebugFunctionPlayer *)v332 extractIndirectArgumentBuffers];
                  [(DYMTLCommonDebugFunctionPlayer *)v332 extractCommandBufferTranslationData];
                  if (v12)
                  {
                    [(DYMTLCommonDebugFunctionPlayer *)v332 _extractTileMemoryWithRenderPassDescriptor:v11 renderEncoderID:__p isDrawCall:GPUTools::MTL::IsFuncEnumDrawCall(**(&v332->super.super.super.super.isa + v5))];
                  }

                  v332->_targetFunctionNeedsSeparatedPostVertexDump = 0;
                }
              }

              goto LABEL_324;
            }
          }
        }
      }

      if ([(DYFunctionPlayer *)self mainExecutionMode])
      {
        v54 = *(&selfCopy->super.super.super.super.isa + *MEMORY[0x277D0AF80]);
        if (v54 == [v499 targetFunctionIndex] - 1)
        {
          v55 = *MEMORY[0x277D0AFA0];
          if (GPUTools::MTL::IsFuncEnumIndirectExecuteComputeCall(**(&selfCopy->super.super.super.super.isa + v55)))
          {
            v56 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&selfCopy->super.super.super.super.isa + v55) + 48, 0);
            *&__p = 0;
            v526 = 0;
            -[DYMTLCommonDebugFunctionPlayer _executeIndirectCommandBufferUpToSubIndex:outBuffer:outDataPointer:](selfCopy, "_executeIndirectCommandBufferUpToSubIndex:outBuffer:outDataPointer:", [v499 targetSubCommandIndex], &v526, &__p);
            v57 = v526;
            v58 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:v56];
            indirectCommandManager12 = [(DYMTLFunctionPlayer *)selfCopy indirectCommandManager];
            [indirectCommandManager12 executeIndirectComputeCommand:v58 withData:__p atIndex:objc_msgSend(v499 forIndirectCommandBuffer:{"targetSubCommandIndex"), v57}];

            [(DYMTLCommonDebugFunctionPlayer *)selfCopy extractIndirectArgumentBuffers];
            [(DYMTLCommonDebugFunctionPlayer *)selfCopy extractCommandBufferTranslationData];

            goto LABEL_324;
          }
        }
      }

      [(DYMTLCommonDebugFunctionPlayer *)selfCopy _executeGraphicsFunction];
      if (![(DYMTLCommonDebugFunctionPlayer *)selfCopy shouldExecuteGraphicsFunction])
      {
        goto LABEL_324;
      }

LABEL_119:
      [(DYMTLCommonDebugFunctionPlayer *)selfCopy _trackObjects];
      goto LABEL_324;
    }

LABEL_74:
    [(DYMTLCommonDebugFunctionPlayer *)self _executeGraphicsFunction];
    if (![(DYMTLCommonDebugFunctionPlayer *)self shouldExecuteGraphicsFunction])
    {
      goto LABEL_324;
    }

    goto LABEL_119;
  }

LABEL_44:
  if ([v499 playbackMode] == 5 || objc_msgSend(v499, "playbackMode") == 11 || objc_msgSend(v499, "playbackMode") == 12) && (GPUTools::MTL::IsFuncEnumSampleCall(**(&self->super.super.super.super.isa + *MEMORY[0x277D0AFA0])))
  {
    goto LABEL_324;
  }

  if (!self->_isAGXDevice || [v499 playbackMode] != 5 && objc_msgSend(v499, "playbackMode") != 2 && objc_msgSend(v499, "playbackMode") != 5 && objc_msgSend(v499, "playbackMode") != 12)
  {
LABEL_57:
    v29 = *MEMORY[0x277D0AFA0];
    v30 = **(&selfCopy->super.super.super.super.isa + v29);
    if ((v30 + 7158) < 3)
    {
      layerManager = [(DYMTLCommonFunctionPlayer *)selfCopy layerManager];
      v33 = [(DYMTLCommonDebugFunctionPlayer *)selfCopy replayerLayerForDrawableId:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&selfCopy->super.super.super.super.isa + v29) + 48, 0)];
      [layerManager prepareLayerForPresent:v33];
    }

    else
    {
      v31 = (v30 + 16359) < 2 || v30 == -16133;
      if (!v31)
      {
        if (selfCopy->_isAGXDevice)
        {
          if ([v499 playbackMode] == 12)
          {
            v95 = *(&selfCopy->super.super.super.super.isa + v29);
            v96 = *(v95 + 16);
            v97 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&selfCopy->_encoderToParallelEncoderMap.__table_.__bucket_list_.__ptr_, (v95 + 16));
            if (v97)
            {
              v96 = v97[3];
            }

            v98 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:v96];
            v99 = DYMTLGetOriginalObject(v98);

            v552.receiver = selfCopy;
            v552.super_class = DYMTLCommonDebugFunctionPlayer;
            [(DYMTLFunctionPlayer *)&v552 executeGraphicsFunction];
            v100 = GPUTools::MTL::IsFuncEnumGPUCommandCall(**(&selfCopy->super.super.super.super.isa + v29));
            if ((v100 & 1) != 0 || GPUTools::MTL::IsFuncEnumEndEncoding(**(&selfCopy->super.super.super.super.isa + v29)))
            {
              [(DYMTLCommonDebugFunctionPlayer *)selfCopy _createBatchIdFilterMapping:v100 withCommandEncoder:v99];
            }

LABEL_494:

            goto LABEL_495;
          }

          if ([v499 playbackMode] == 5 && selfCopy->_batchInfos)
          {
            v180 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:(*(&selfCopy->super.super.super.super.isa + v29))[2]];
            v99 = v180;
            currentEncoderBatchIndex = selfCopy->_currentEncoderBatchIndex;
            if (currentEncoderBatchIndex == -1 || (selfCopy->_currentEncoderBatchIndex = currentEncoderBatchIndex - 1, currentEncoderBatchIndex))
            {
              v182 = 0;
            }

            else
            {
              if (v180)
              {
                objc_msgSend_viewports(v180);
                v182 = 1;
                goto LABEL_236;
              }

              v182 = 1;
            }

            __p = 0uLL;
            v564 = 0;
LABEL_236:
            renderPipelineState = [v99 renderPipelineState];
            if (v182)
            {
              v184 = [(DYMTLCommonDebugFunctionPlayer *)selfCopy _generateDummyPipeline:renderPipelineState];
              if (v184)
              {
                [v99 setRenderPipelineState:v184];
                if (GPUTools::MTL::IsFuncEnumTileCall(**(&selfCopy->super.super.super.super.isa + v29)))
                {
                  v550 = vdupq_n_s64(1uLL);
                  v551 = 1;
                  [v99 dispatchThreadsPerTile:&v550];
                }

                else
                {
                  [v99 drawPrimitives:3 vertexStart:0 vertexCount:0 instanceCount:1];
                }

                [v99 setRenderPipelineState:renderPipelineState];
              }
            }

            else
            {
              v184 = 0;
            }

            v549.receiver = selfCopy;
            v549.super_class = DYMTLCommonDebugFunctionPlayer;
            [(DYMTLFunctionPlayer *)&v549 executeGraphicsFunction];
            if (v184)
            {
              v392 = v182;
            }

            else
            {
              v392 = 0;
            }

            if (v392 == 1)
            {
              [v99 setRenderPipelineState:v184];
              if (GPUTools::MTL::IsFuncEnumTileCall(**(&selfCopy->super.super.super.super.isa + v29)))
              {
                v550 = vdupq_n_s64(1uLL);
                v551 = 1;
                [v99 dispatchThreadsPerTile:&v550];
              }

              else
              {
                [v99 drawPrimitives:3 vertexStart:0 vertexCount:0 instanceCount:1];
              }

              [v99 setRenderPipelineState:renderPipelineState];
            }

            if (__p)
            {
              *(&__p + 1) = __p;
              operator delete(__p);
            }

            goto LABEL_494;
          }

          v548.receiver = selfCopy;
          v548.super_class = DYMTLCommonDebugFunctionPlayer;
          [(DYMTLFunctionPlayer *)&v548 executeGraphicsFunction];
          if (GPUTools::MTL::IsFuncEnumCreateCommandBuffer(**(&selfCopy->super.super.super.super.isa + v29)))
          {
            v213 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&selfCopy->super.super.super.super.isa + v29) + 24, 0)];
            v99 = DYMTLGetOriginalObject(v213);

            if (v99 && (objc_opt_respondsToSelector() & 1) != 0)
            {
              [v99 setDisableDeferredEndEncoding:1];
            }

            goto LABEL_494;
          }
        }

        else
        {
          v547.receiver = selfCopy;
          v547.super_class = DYMTLCommonDebugFunctionPlayer;
          [(DYMTLFunctionPlayer *)&v547 executeGraphicsFunction];
        }

LABEL_495:
        [(DYMTLCommonDebugFunctionPlayer *)selfCopy _trackObjects];
LABEL_91:
        if (selfCopy->_isAGXDevice)
        {
          if ([v499 playbackMode] == 3)
          {
            v51 = *(&selfCopy->super.super.super.super.isa + v29);
            v52 = *v51;
            if ((*v51 + 16343) < 2 || v52 == -12544 || v52 == -15701)
            {
              v53 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v51 + 6), 0)];
              if (v53)
              {
                v545[0] = MEMORY[0x277D85DD0];
                v545[1] = 3221225472;
                v545[2] = __57__DYMTLCommonDebugFunctionPlayer_executeGraphicsFunction__block_invoke_3;
                v545[3] = &unk_27930F708;
                v546 = v499;
                [v53 addCompletedHandler:v545];
              }
            }
          }

          else if ([v499 playbackMode] == 5 && selfCopy->_batchInfos || objc_msgSend(v499, "playbackMode") == 12)
          {
            [(DYMTLCommonDebugFunctionPlayer *)selfCopy _setupEncodersForBatchIdFiltering];
          }
        }

        goto LABEL_328;
      }

      layerManager = [(DYMTLCommonFunctionPlayer *)selfCopy layerManager];
      v33 = [(DYMTLCommonDebugFunctionPlayer *)selfCopy replayerLayerForDrawableId:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&selfCopy->super.super.super.super.isa + v29) + 72, 0)];
      [layerManager prepareLayerForPresent:v33];
    }

    goto LABEL_91;
  }

  objectMap = [(DYMTLFunctionPlayer *)self objectMap];
  v26 = *MEMORY[0x277D0AFA0];
  v27 = *(&selfCopy->super.super.super.super.isa + v26);
  v28 = *v27;
  if (*v27 == -16351)
  {
    if ([v499 playbackMode] == 2)
    {
      goto LABEL_328;
    }

    [(DYFunctionPlayer *)selfCopy processArguments];
    v90 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:(*(&selfCopy->super.super.super.super.isa + v26))[2]];
    v91 = GPUTools::MTL::MakeMTLRenderPassDescriptor(**(&selfCopy->super.super.super._executePlatform + *MEMORY[0x277D0AF68]), [(DYMTLFunctionPlayer *)selfCopy objectMap]);
    v92 = DYMTLNewStatefulRenderCommandEncoder(v90, v91);
    v550.i64[0] = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&selfCopy->super.super.super.super.isa + v26) + 24, 0);
    *&__p = &v550;
    v93 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(objectMap, &v550, &std::piecewise_construct, &__p);
    v94 = v93[3];
    v93[3] = v92;
  }

  else if (v28 == -16286)
  {
    v87 = [(DYMTLFunctionPlayer *)selfCopy objectForKey:*(v27 + 2)];
    v550.i64[0] = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&selfCopy->super.super.super.super.isa + v26) + 24, 0);
    *&__p = &v550;
    v88 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(objectMap, &v550, &std::piecewise_construct, &__p);
    v89 = v88[3];
    v88[3] = v87;
  }

  else if (v28 != -16246 || !std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&selfCopy->_encoderToParallelEncoderMap.__table_.__bucket_list_.__ptr_, v27 + 2))
  {
    goto LABEL_57;
  }

  if ([v499 playbackMode] == 5 && selfCopy->_batchInfos || objc_msgSend(v499, "playbackMode") == 12)
  {
    [(DYMTLCommonDebugFunctionPlayer *)selfCopy _setupEncodersForBatchIdFiltering];
  }

  [(DYMTLCommonDebugFunctionPlayer *)selfCopy _trackObjects];
LABEL_328:

  objc_autoreleasePoolPop(v498);
}

uint64_t __57__DYMTLCommonDebugFunctionPlayer_executeGraphicsFunction__block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 2)
  {
    v9 = *(a1 + 32);
    v10 = [DYMTLFunctionPlayer tileBytesKeyAtIndex:a4];

    return [v9 tileBytesForKey:v10];
  }

  else if (a2 == 1)
  {
    v7 = *(a1 + 32);
    v8 = [DYMTLFunctionPlayer fragmentBytesKeyAtIndex:a4];

    return [v7 fragmentBytesForKey:v8];
  }

  else if (a2)
  {
    return 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = [DYMTLFunctionPlayer vertexBytesKeyAtIndex:a4];

    return [v4 vertexBytesForKey:v5];
  }
}

void __57__DYMTLCommonDebugFunctionPlayer_executeGraphicsFunction__block_invoke_2(uint64_t a1, void *a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 4176) objectForKeyedSubscript:*(a1 + 40)];
  if (!v4)
  {
    v4 = objc_opt_new();
  }

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v3];
  v6 = *MEMORY[0x277D0B4C0];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D0B4C0]];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "pixelFormat")}];
  v8 = *MEMORY[0x277D0B228];
  [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x277D0B228]];

  v9 = *MEMORY[0x277D0B4D0];
  v10 = [v4 objectForKeyedSubscript:*MEMORY[0x277D0B4D0]];
  if (!v10)
  {
    v10 = objc_opt_new();
  }

  v16[0] = v6;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v3];
  v16[1] = v8;
  v17[0] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "pixelFormat")}];
  v17[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [v10 setObject:v13 forKeyedSubscript:*(a1 + 56)];

  [v4 setObject:v10 forKeyedSubscript:v9];
  [*(*(a1 + 32) + 4176) setObject:v4 forKeyedSubscript:*(a1 + 40)];
  v14 = sThumbnailTextures;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v3];
  [v14 setObject:v3 forKey:v15];
}

void __57__DYMTLCommonDebugFunctionPlayer_executeGraphicsFunction__block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    [v7 GPUStartTime];
    v5 = v4;
    [v7 GPUEndTime];
    [v3 addCommandBufferDurationStart:v5 andEnd:v6];
  }
}

uint64_t __57__DYMTLCommonDebugFunctionPlayer_executeGraphicsFunction__block_invoke_4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 2)
  {
    v9 = *(a1 + 32);
    v10 = [DYMTLFunctionPlayer tileBytesKeyAtIndex:a4];

    return [v9 tileBytesForKey:v10];
  }

  else if (a2 == 1)
  {
    v7 = *(a1 + 32);
    v8 = [DYMTLFunctionPlayer fragmentBytesKeyAtIndex:a4];

    return [v7 fragmentBytesForKey:v8];
  }

  else if (a2)
  {
    return 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = [DYMTLFunctionPlayer vertexBytesKeyAtIndex:a4];

    return [v4 vertexBytesForKey:v5];
  }
}

id __57__DYMTLCommonDebugFunctionPlayer_executeGraphicsFunction__block_invoke_5(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = DYMTLCommonDebugFunctionPlayer;
  return objc_msgSendSuper2(&v2, sel_executeGraphicsFunction);
}

void __57__DYMTLCommonDebugFunctionPlayer_executeGraphicsFunction__block_invoke_6(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 56)];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = *MEMORY[0x277D0B428];
  }

  else
  {
    v5 = objc_opt_new();
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 56)];
    [v7 setObject:v5 forKeyedSubscript:v8];

    v9 = objc_opt_new();
    v6 = *MEMORY[0x277D0B428];
    [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x277D0B428]];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "pixelFormat")}];
    [v5 setObject:v10 forKeyedSubscript:*MEMORY[0x277D0B228]];

    v11 = [*(a1 + 40) label];
    [v5 setObject:v11 forKeyedSubscript:*MEMORY[0x277D0B418]];
  }

  v12 = [v5 objectForKeyedSubscript:v6];
  [v12 addObject:v17];
  v13 = [v12 indexOfObject:v17];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
  v15 = *(a1 + 48);
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 56)];
  [v15 setObject:v14 forKeyedSubscript:v16];
}

id __57__DYMTLCommonDebugFunctionPlayer_executeGraphicsFunction__block_invoke_7(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = DYMTLCommonDebugFunctionPlayer;
  return objc_msgSendSuper2(&v2, sel_executeGraphicsFunction);
}

- (id)collectPixelDrawStatsTotal:(id)total originalPipeline:(id)pipeline atX:(unint64_t)x y:(unint64_t)y draw:(id)draw
{
  totalCopy = total;
  pipelineCopy = pipeline;
  drawCopy = draw;
  v15 = objc_opt_new();
  if ([(DYMTLPixelHistoryDrawStatsSupport *)self->_pixelHistoryDrawStatsRenderer createNumTotalRenderCommandEncoderInCommandBuffer:totalCopy originalPipeline:pipelineCopy])
  {
    drawCopy[2](drawCopy);
    pixelHistoryDrawStatsRenderer = self->_pixelHistoryDrawStatsRenderer;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __89__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStatsTotal_originalPipeline_atX_y_draw___block_invoke;
    v19[3] = &unk_27930F780;
    v20 = v15;
    [(DYMTLPixelHistoryDrawStatsSupport *)pixelHistoryDrawStatsRenderer collectPixelHistoryStencilDrawStatsAtX:x y:y completion:v19];
  }

  else
  {
    v17 = [MEMORY[0x277CCABB0] numberWithLongLong:*MEMORY[0x277D0B440]];
    [v15 setObject:v17 forKeyedSubscript:*MEMORY[0x277D0B3D8]];
  }

  return v15;
}

void __89__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStatsTotal_originalPipeline_atX_y_draw___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  [*(a1 + 32) setObject:? forKeyedSubscript:?];
}

- (id)collectPixelDrawStats:(id)stats originalEncoderId:(unint64_t)id originalEncoder:(id)encoder originalPipeline:(id)pipeline atX:(unint64_t)x y:(unint64_t)y draw:(id)draw
{
  statsCopy = stats;
  encoderCopy = encoder;
  pipelineCopy = pipeline;
  v60 = encoderCopy;
  drawCopy = draw;
  v67 = objc_opt_new();
  descriptor = [encoderCopy descriptor];
  v17 = MEMORY[0x277D25728];
  v66 = descriptor;
  device = [(DYMTLFunctionPlayer *)self device];
  v59 = [v17 forDevice:device];

  if ([(DYMTLPixelHistoryDrawStatsSupport *)self->_pixelHistoryDrawStatsRenderer createNumFragmentPassesRenderCommandEncoderInCommandBuffer:statsCopy originalRenderPassDescriptor:v66 originalPipeline:pipelineCopy])
  {
    v19 = [(DYMTLFunctionPlayer *)self objectForKey:id];
    v90[0] = 0;
    v90[1] = 0;
    v90[2] = [v19 width];
    v90[3] = [v19 height];
    [v19 setScissorRect:v90];
    drawCopy[2]();
    pixelHistoryDrawStatsRenderer = self->_pixelHistoryDrawStatsRenderer;
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke;
    v88[3] = &unk_27930F780;
    v89 = v67;
    [(DYMTLPixelHistoryDrawStatsSupport *)pixelHistoryDrawStatsRenderer collectPixelHistoryStencilDrawStatsAtX:x y:y completion:v88];
  }

  else
  {
    v21 = [MEMORY[0x277CCABB0] numberWithLongLong:*MEMORY[0x277D0B440]];
    [v67 setObject:v21 forKeyedSubscript:*MEMORY[0x277D0B3E8]];
  }

  if ([(DYMTLPixelHistoryDrawStatsSupport *)self->_pixelHistoryDrawStatsRenderer createNumFragmentPassesRenderCommandEncoderInCommandBuffer:statsCopy originalRenderPassDescriptor:v66 originalPipeline:pipelineCopy])
  {
    drawCopy[2]();
    v22 = self->_pixelHistoryDrawStatsRenderer;
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_2;
    v86[3] = &unk_27930F780;
    v87 = v67;
    [(DYMTLPixelHistoryDrawStatsSupport *)v22 collectPixelHistoryStencilDrawStatsAtX:x y:y completion:v86];
    v23 = v87;
  }

  else
  {
    v23 = [MEMORY[0x277CCABB0] numberWithLongLong:*MEMORY[0x277D0B440]];
    [v67 setObject:v23 forKeyedSubscript:*MEMORY[0x277D0B3F0]];
  }

  depthStencilState = [v60 depthStencilState];
  v58 = depthStencilState;
  if (depthStencilState)
  {
    v63 = DYMTLGetAssociatedObject(depthStencilState, 0);
  }

  else
  {
    v63 = 0;
  }

  stencilAttachment = [v66 stencilAttachment];
  depthAttachment = [v66 depthAttachment];
  texture = [stencilAttachment texture];
  if (texture)
  {
    frontFaceStencil = [v63 frontFaceStencil];
    if ([frontFaceStencil stencilCompareFunction] == 7)
    {
      backFaceStencil = [v63 backFaceStencil];
      v28 = [backFaceStencil stencilCompareFunction] == 7;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 1;
  }

  texture2 = [depthAttachment texture];
  if (texture2)
  {
    v30 = [v63 depthCompareFunction] == 7;
  }

  else
  {
    v30 = 1;
  }

  device2 = [(DYMTLFunctionPlayer *)self device];
  if ([device2 supportsFamily:3002])
  {
  }

  else
  {
    device3 = [(DYMTLFunctionPlayer *)self device];
    v33 = [device3 supportsFamily:3003];

    if (!v33)
    {
      v34 = 1;
      if (v28)
      {
        goto LABEL_23;
      }

LABEL_28:
      if (v30)
      {
        v45 = MEMORY[0x277D25720];
        mockStencilTexture = [(DYMTLPixelHistoryDrawStatsSupport *)self->_pixelHistoryDrawStatsRenderer mockStencilTexture];
        [v45 pixelValueToTexture:mockStencilTexture buffer:self->_pixelHistoryPixelPreviousStencil level:objc_msgSend(stencilAttachment slice:"level") depthPlane:objc_msgSend(stencilAttachment atX:"slice") y:objc_msgSend(stencilAttachment inCommandBuffer:{"depthPlane"), x, y, statsCopy}];

        v47 = self->_pixelHistoryDrawStatsRenderer;
        mockStencilTexture2 = [(DYMTLPixelHistoryDrawStatsSupport *)v47 mockStencilTexture];
        v49 = [(DYMTLPixelHistoryDrawStatsSupport *)v47 createNumVisibleRenderCommandEncoderInCommandBuffer:statsCopy originalRenderPassDescriptor:v66 originalPipeline:pipelineCopy depthStencilDescriptor:v63 mockStencilTexture:mockStencilTexture2 visibilityResultMode:v34 atX:x y:y];

        if (v49)
        {
          drawCopy[2]();
          v50 = self->_pixelHistoryDrawStatsRenderer;
          v76[0] = MEMORY[0x277D85DD0];
          v76[1] = 3221225472;
          v76[2] = __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_6;
          v76[3] = &unk_27930F7A8;
          v78 = v34;
          v77 = v67;
          [(DYMTLPixelHistoryDrawStatsSupport *)v50 collectPixelHistoryVisibilityDrawStatsAtCompletion:v76];
          v51 = v77;
        }

        else
        {
          v51 = [MEMORY[0x277CCABB0] numberWithLongLong:*MEMORY[0x277D0B440]];
          [v67 setObject:v51 forKeyedSubscript:*MEMORY[0x277D0B400]];
        }

        v36 = v60;
        v37 = v66;
        v54 = v58;

        v74[0] = MEMORY[0x277D85DD0];
        v74[1] = 3221225472;
        v74[2] = __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_7;
        v74[3] = &unk_27930F708;
        v75 = v67;
        [statsCopy addCompletedHandler:v74];
        mockStencilTexture3 = v75;
        goto LABEL_40;
      }

      mockStencilTexture3 = [(DYMTLPixelHistoryDrawStatsSupport *)self->_pixelHistoryDrawStatsRenderer mockStencilTexture];
      [MEMORY[0x277D25720] pixelValueToTexture:mockStencilTexture3 buffer:self->_pixelHistoryPixelPreviousStencil level:objc_msgSend(stencilAttachment slice:"level") depthPlane:objc_msgSend(stencilAttachment atX:"slice") y:objc_msgSend(stencilAttachment inCommandBuffer:{"depthPlane"), x, y, statsCopy}];
      if ([(DYMTLPixelHistoryDrawStatsSupport *)self->_pixelHistoryDrawStatsRenderer createNumVisibleRenderCommandEncoderInCommandBuffer:statsCopy originalRenderPassDescriptor:v66 originalPipeline:pipelineCopy depthStencilDescriptor:v63 mockDepthStencilTexture:mockStencilTexture3 visibilityResultMode:v34 atX:x y:y])
      {
        drawCopy[2]();
        v52 = self->_pixelHistoryDrawStatsRenderer;
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_8;
        v71[3] = &unk_27930F7A8;
        v73 = v34;
        v72 = v67;
        [(DYMTLPixelHistoryDrawStatsSupport *)v52 collectPixelHistoryVisibilityDrawStatsAtCompletion:v71];
        v53 = v72;
      }

      else
      {
        v53 = [MEMORY[0x277CCABB0] numberWithLongLong:*MEMORY[0x277D0B440]];
        [v67 setObject:v53 forKeyedSubscript:*MEMORY[0x277D0B3F8]];
      }

      v37 = v66;

      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_9;
      v69[3] = &unk_27930F708;
      v70 = v67;
      [statsCopy addCompletedHandler:v69];

      v36 = v60;
      goto LABEL_35;
    }
  }

  v34 = 2;
  if (!v28)
  {
    goto LABEL_28;
  }

LABEL_23:
  if (!v30)
  {
    v38 = MEMORY[0x277D25720];
    mockDepthTexture = [(DYMTLPixelHistoryDrawStatsSupport *)self->_pixelHistoryDrawStatsRenderer mockDepthTexture];
    [v38 pixelValueToTexture:mockDepthTexture buffer:self->_pixelHistoryPixelPreviousDepth level:objc_msgSend(depthAttachment slice:"level") depthPlane:objc_msgSend(depthAttachment atX:"slice") y:objc_msgSend(depthAttachment inCommandBuffer:{"depthPlane"), x, y, statsCopy}];

    v40 = self->_pixelHistoryDrawStatsRenderer;
    mockDepthTexture2 = [(DYMTLPixelHistoryDrawStatsSupport *)v40 mockDepthTexture];
    v42 = [(DYMTLPixelHistoryDrawStatsSupport *)v40 createNumVisibleRenderCommandEncoderInCommandBuffer:statsCopy originalRenderPassDescriptor:v66 originalPipeline:pipelineCopy depthStencilDescriptor:v63 mockDepthTexture:mockDepthTexture2 visibilityResultMode:v34 atX:x y:y];

    if (v42)
    {
      drawCopy[2]();
      v43 = self->_pixelHistoryDrawStatsRenderer;
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_4;
      v81[3] = &unk_27930F7A8;
      v83 = v34;
      v82 = v67;
      [(DYMTLPixelHistoryDrawStatsSupport *)v43 collectPixelHistoryVisibilityDrawStatsAtCompletion:v81];
      v44 = v82;
    }

    else
    {
      v55 = *MEMORY[0x277D0B440];
      v56 = [MEMORY[0x277CCABB0] numberWithLongLong:*MEMORY[0x277D0B440]];
      [v67 setObject:v56 forKeyedSubscript:*MEMORY[0x277D0B3E0]];

      v44 = [MEMORY[0x277CCABB0] numberWithLongLong:v55];
      [v67 setObject:v44 forKeyedSubscript:*MEMORY[0x277D0B3F8]];
    }

    v36 = v60;
    v37 = v66;
    v54 = v58;

    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_5;
    v79[3] = &unk_27930F708;
    v80 = v67;
    [statsCopy addCompletedHandler:v79];
    mockStencilTexture3 = v80;
    goto LABEL_40;
  }

  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_3;
  v84[3] = &unk_27930F708;
  v85 = v67;
  [statsCopy addCompletedHandler:v84];
  mockStencilTexture3 = v85;
  v36 = v60;
  v37 = v66;
LABEL_35:
  v54 = v58;
LABEL_40:

  return v67;
}

void __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  [*(a1 + 32) setObject:? forKeyedSubscript:?];
}

void __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  [*(a1 + 32) setObject:? forKeyedSubscript:?];
}

void __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277D0B3F0]];
  v3 = *MEMORY[0x277D0B400];
  v4 = v2;
  [*(a1 + 32) setObject:? forKeyedSubscript:?];

  v5 = [*(a1 + 32) objectForKeyedSubscript:v3];
  [*(a1 + 32) setObject:? forKeyedSubscript:?];

  v6 = [*(a1 + 32) objectForKeyedSubscript:v3];
  [*(a1 + 32) setObject:? forKeyedSubscript:?];
}

void __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (!a2 || *(a1 + 40) == 2)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
    [*(a1 + 32) setObject:? forKeyedSubscript:?];

    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
    [*(a1 + 32) setObject:? forKeyedSubscript:?];
  }

  else
  {
    v4 = *MEMORY[0x277D0B438];
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:*MEMORY[0x277D0B438]];
    [*(a1 + 32) setObject:? forKeyedSubscript:?];

    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:v4];
    [*(a1 + 32) setObject:? forKeyedSubscript:?];
  }
}

void __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277D0B3F0]];
  [*(a1 + 32) setObject:? forKeyedSubscript:?];
}

void __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_6(uint64_t a1, uint64_t a2)
{
  if (!a2 || *(a1 + 40) == 2)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
    [*(a1 + 32) setObject:? forKeyedSubscript:?];
  }

  else
  {
    v3 = [MEMORY[0x277CCABB0] numberWithLongLong:*MEMORY[0x277D0B438]];
    [*(a1 + 32) setObject:? forKeyedSubscript:?];
  }
}

void __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_7(uint64_t a1)
{
  v2 = *MEMORY[0x277D0B400];
  v3 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277D0B400]];
  [*(a1 + 32) setObject:? forKeyedSubscript:?];

  v4 = [*(a1 + 32) objectForKeyedSubscript:v2];
  [*(a1 + 32) setObject:? forKeyedSubscript:?];
}

void __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_8(uint64_t a1, uint64_t a2)
{
  if (!a2 || *(a1 + 40) == 2)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
    [*(a1 + 32) setObject:? forKeyedSubscript:?];
  }

  else
  {
    v3 = [MEMORY[0x277CCABB0] numberWithLongLong:*MEMORY[0x277D0B438]];
    [*(a1 + 32) setObject:? forKeyedSubscript:?];
  }
}

void __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_9(uint64_t a1)
{
  v6 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277D0B3F8]];
  v2 = *MEMORY[0x277D0B3F0];
  v3 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277D0B3F0]];
  v4 = [v6 isEqualToNumber:v3];

  if (v4)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v2];
    [*(a1 + 32) setObject:? forKeyedSubscript:?];

    [*(a1 + 32) objectForKeyedSubscript:v2];
  }

  else
  {
    v5 = *MEMORY[0x277D0B440];
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:*MEMORY[0x277D0B440]];
    [*(a1 + 32) setObject:? forKeyedSubscript:?];

    [MEMORY[0x277CCABB0] numberWithLongLong:v5];
  }
  v8 = ;
  [*(a1 + 32) setObject:? forKeyedSubscript:?];
}

- (id)generatePerPrimitiveHistory:(unint64_t)history commandQueue:(id)queue currentEncoderId:(unint64_t)id originalEncoder:(id)encoder originalPipeline:(id)pipeline atX:(unint64_t)x y:(unint64_t)y
{
  queueCopy = queue;
  encoderCopy = encoder;
  pipelineCopy = pipeline;
  v18 = pipelineCopy;
  v19 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AFA0]);
  if (*v19 == -16250)
  {
    v20 = [(DYMTLCommonDebugFunctionPlayer *)self generatePerPrimitiveHistory_drawPrimitives_vertexStart_vertexCount:**(v19 + 72) vertexStart:**(v19 + 96) vertexCount:**(v19 + 120) total:history commandQueue:queueCopy currentEncoderId:id originalEncoder:encoderCopy originalPipeline:pipelineCopy atX:x y:y];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)generatePerPrimitiveHistory_drawPrimitives_vertexStart_vertexCount:(unint64_t)count vertexStart:(unint64_t)start vertexCount:(unint64_t)vertexCount total:(unint64_t)total commandQueue:(id)queue currentEncoderId:(unint64_t)id originalEncoder:(id)encoder originalPipeline:(id)self0 atX:(unint64_t)self1 y:(unint64_t)self2
{
  encoderCopy = encoder;
  v45[1] = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  encoderCopy2 = encoder;
  pipelineCopy = pipeline;
  if (!total)
  {
    encoderCopy = objc_opt_new();
    goto LABEL_24;
  }

  if (count != 3)
  {
    goto LABEL_24;
  }

  if (vertexCount == 3)
  {
    v19 = MEMORY[0x277CBEB38];
    v45[0] = *MEMORY[0x277D0B3D8];
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
    commandBuffer = [v19 dictionaryWithObjects:&unk_2860BA1F8 forKeys:v20];

    v21 = MEMORY[0x277CBEAC0];
    v44 = commandBuffer;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:start];
    v43 = v36;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
    encoderCopy = [v21 dictionaryWithObjects:v35 forKeys:v22];
  }

  else
  {
    encoderCopy = objc_opt_new();
    commandBuffer = [queueCopy commandBuffer];
    v23 = (vertexCount / 6);
    v24 = 3 * v23;
    if (v23)
    {
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __200__DYMTLCommonDebugFunctionPlayer_generatePerPrimitiveHistory_drawPrimitives_vertexStart_vertexCount_vertexStart_vertexCount_total_commandQueue_currentEncoderId_originalEncoder_originalPipeline_atX_y___block_invoke;
      v42[3] = &unk_27930F7D0;
      v42[4] = self;
      v42[5] = id;
      v42[6] = 3;
      v42[7] = start;
      v42[8] = 3 * v23;
      v35 = [(DYMTLCommonDebugFunctionPlayer *)self collectPixelDrawStatsTotal:commandBuffer originalPipeline:pipelineCopy atX:x y:y draw:v42];
    }

    else
    {
      v35 = 0;
    }

    v33 = vertexCount - v24;
    v34 = v24 + start;
    if (vertexCount == v24)
    {
      v36 = 0;
      v25 = commandBuffer;
    }

    else
    {
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __200__DYMTLCommonDebugFunctionPlayer_generatePerPrimitiveHistory_drawPrimitives_vertexStart_vertexCount_vertexStart_vertexCount_total_commandQueue_currentEncoderId_originalEncoder_originalPipeline_atX_y___block_invoke_2;
      v41[3] = &unk_27930F7D0;
      v41[4] = self;
      v41[5] = id;
      v41[6] = 3;
      v41[7] = v24 + start;
      v41[8] = vertexCount - v24;
      v25 = commandBuffer;
      v36 = [(DYMTLCommonDebugFunctionPlayer *)self collectPixelDrawStatsTotal:commandBuffer originalPipeline:pipelineCopy atX:x y:y draw:v41];
    }

    [v25 commit];
    [v25 waitUntilCompleted];
    v26 = MEMORY[0x277D0B3D8];
    if (v35)
    {
      v27 = [v35 objectForKeyedSubscript:*MEMORY[0x277D0B3D8]];
      longLongValue = [v27 longLongValue];
    }

    else
    {
      longLongValue = 0;
    }

    if (v36)
    {
      v29 = [v36 objectForKeyedSubscript:*v26];
      longLongValue2 = [v29 longLongValue];
    }

    else
    {
      longLongValue2 = 0;
    }

    if (longLongValue >= 1)
    {
      v31 = [(DYMTLCommonDebugFunctionPlayer *)self generatePerPrimitiveHistory_drawPrimitives_vertexStart_vertexCount:3 vertexStart:start vertexCount:v24 total:longLongValue commandQueue:queueCopy currentEncoderId:id originalEncoder:encoderCopy2 originalPipeline:pipelineCopy atX:x y:y];
      [encoderCopy addEntriesFromDictionary:v31];
    }

    if (longLongValue2 < 1)
    {
      goto LABEL_23;
    }

    v22 = [(DYMTLCommonDebugFunctionPlayer *)self generatePerPrimitiveHistory_drawPrimitives_vertexStart_vertexCount:3 vertexStart:v34 vertexCount:v33 total:longLongValue2 commandQueue:queueCopy currentEncoderId:id originalEncoder:encoderCopy2 originalPipeline:pipelineCopy atX:x y:y];
    [encoderCopy addEntriesFromDictionary:v22];
  }

LABEL_23:
LABEL_24:

  return encoderCopy;
}

void __200__DYMTLCommonDebugFunctionPlayer_generatePerPrimitiveHistory_drawPrimitives_vertexStart_vertexCount_vertexStart_vertexCount_total_commandQueue_currentEncoderId_originalEncoder_originalPipeline_atX_y___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  [v2 drawPrimitives:*(a1 + 48) vertexStart:*(a1 + 56) vertexCount:*(a1 + 64)];
}

void __200__DYMTLCommonDebugFunctionPlayer_generatePerPrimitiveHistory_drawPrimitives_vertexStart_vertexCount_vertexStart_vertexCount_total_commandQueue_currentEncoderId_originalEncoder_originalPipeline_atX_y___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  [v2 drawPrimitives:*(a1 + 48) vertexStart:*(a1 + 56) vertexCount:*(a1 + 64)];
}

- (void)extractIndirectArgumentBuffers
{
  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  v3 = *MEMORY[0x277D0AFA0];
  if ((GPUTools::MTL::IsFuncEnumDrawCall(**(&self->super.super.super.super.isa + v3)) & 1) != 0 || (GPUTools::MTL::IsFuncEnumIndirectExecuteDrawCall(**(&self->super.super.super.super.isa + v3)) & 1) != 0 || GPUTools::MTL::IsFuncEnumTileCall(**(&self->super.super.super.super.isa + v3)))
  {
    [(DYMTLCommonDebugFunctionPlayer *)self extractRenderIndirectArgumentBuffers:&v5];
  }

  else if ((GPUTools::MTL::IsFuncEnumComputeCall(**(&self->super.super.super.super.isa + v3)) & 1) != 0 || GPUTools::MTL::IsFuncEnumIndirectExecuteComputeCall(**(&self->super.super.super.super.isa + v3)))
  {
    [(DYMTLCommonDebugFunctionPlayer *)self extractComputeIndirectArgumentBuffers:&v5];
  }

  indirectArgumentManager = [(DYMTLFunctionPlayer *)self indirectArgumentManager];
  [indirectArgumentManager notifyReplayerTargetIndirectArgumentBuffers:&v5];

  std::__tree<std::__value_type<objc_object  {objcproto9MTLBuffer}*,std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>>,std::__map_value_compare<objc_object  {objcproto9MTLBuffer}*,std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>,std::less<objc_object  {objcproto9MTLBuffer}*>,true>,std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}><std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>>>::destroy(&v5, v6[0]);
}

- (void)extractCommandBufferTranslationData
{
  indirectCommandManager = [(DYMTLFunctionPlayer *)self indirectCommandManager];
  [indirectCommandManager updateReplayerTranslationBuffer];
}

- (void)extractRenderIndirectArgumentBuffers:(void *)buffers
{
  v55[0] = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + *MEMORY[0x277D0AFA0]) + 48, 0);
  v52[0] = v55;
  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>([(DYMTLFunctionPlayer *)self objectMap], v55, &std::piecewise_construct, v52)[3];
  renderPipelineState = [v5 renderPipelineState];
  v7 = DYMTLGetAssociatedObject(renderPipelineState, 2u);
  if (v7)
  {
    v30 = DYMTLGetNullableAssociatedObject(renderPipelineState, 0);
    v52[0] = 0;
    v52[1] = v52;
    v52[2] = 0x4812000000;
    v52[3] = __Block_byref_object_copy__4;
    v52[4] = __Block_byref_object_dispose__4;
    v52[5] = "";
    v54[0] = 0;
    v54[1] = 0;
    v53 = v54;
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __71__DYMTLCommonDebugFunctionPlayer_extractRenderIndirectArgumentBuffers___block_invoke;
    v51[3] = &unk_27930F430;
    v51[4] = v52;
    [v5 enumerateVertexBuffersUsingBlock:v51];
    vertexBindings = [v7 vertexBindings];
    firstObject = [vertexBindings firstObject];
    if (firstObject)
    {
      firstObject2 = [vertexBindings firstObject];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {

LABEL_21:
        goto LABEL_22;
      }

      firstObject3 = [vertexBindings firstObject];
      dataTypeDescription = [firstObject3 dataTypeDescription];
      v13 = objc_opt_respondsToSelector();

      if ((v13 & 1) == 0)
      {
LABEL_22:

        _Block_object_dispose(v52, 8);
        std::__tree<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>>>::destroy(&v53, v54[0]);

        goto LABEL_23;
      }
    }

    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __71__DYMTLCommonDebugFunctionPlayer_extractRenderIndirectArgumentBuffers___block_invoke_2;
    v47[3] = &unk_27930F7F8;
    v49 = v52;
    buffersCopy = buffers;
    v14 = v30;
    v48 = v14;
    [vertexBindings enumerateObjectsUsingBlock:v47];
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x4812000000;
    v44[3] = __Block_byref_object_copy__4;
    v44[4] = __Block_byref_object_dispose__4;
    v44[5] = "";
    v46[0] = 0;
    v46[1] = 0;
    v45 = v46;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __71__DYMTLCommonDebugFunctionPlayer_extractRenderIndirectArgumentBuffers___block_invoke_3;
    v43[3] = &unk_27930F430;
    v43[4] = v44;
    [v5 enumerateFragmentBuffersUsingBlock:v43];
    buffersCopy2 = buffers;
    fragmentBindings = [v7 fragmentBindings];
    firstObject4 = [fragmentBindings firstObject];
    if (firstObject4)
    {
      firstObject5 = [fragmentBindings firstObject];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {

LABEL_19:
        goto LABEL_20;
      }

      firstObject6 = [fragmentBindings firstObject];
      dataTypeDescription2 = [firstObject6 dataTypeDescription];
      v19 = objc_opt_respondsToSelector();

      if ((v19 & 1) == 0)
      {
LABEL_20:

        _Block_object_dispose(v44, 8);
        std::__tree<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>>>::destroy(&v45, v46[0]);
        firstObject = v48;
        goto LABEL_21;
      }
    }

    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __71__DYMTLCommonDebugFunctionPlayer_extractRenderIndirectArgumentBuffers___block_invoke_4;
    v39[3] = &unk_27930F7F8;
    v41 = v44;
    v42 = buffersCopy2;
    v40 = v14;
    [fragmentBindings enumerateObjectsUsingBlock:v39];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_18:
      firstObject4 = v40;
      goto LABEL_19;
    }

    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x4812000000;
    v36[3] = __Block_byref_object_copy__4;
    v36[4] = __Block_byref_object_dispose__4;
    v36[5] = "";
    v38[0] = 0;
    v38[1] = 0;
    v37 = v38;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __71__DYMTLCommonDebugFunctionPlayer_extractRenderIndirectArgumentBuffers___block_invoke_5;
    v35[3] = &unk_27930F430;
    v35[4] = v36;
    [v5 enumerateTileBuffersUsingBlock:v35];
    v27 = DYMTLGetNullableAssociatedObject(renderPipelineState, 1u);
    tileBindings = [v7 tileBindings];
    firstObject7 = [tileBindings firstObject];
    if (!firstObject7)
    {
      goto LABEL_12;
    }

    firstObject8 = [tileBindings firstObject];
    if (objc_opt_respondsToSelector())
    {
      firstObject9 = [tileBindings firstObject];
      dataTypeDescription3 = [firstObject9 dataTypeDescription];
      v25 = objc_opt_respondsToSelector();

      if (v25)
      {
LABEL_12:
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __71__DYMTLCommonDebugFunctionPlayer_extractRenderIndirectArgumentBuffers___block_invoke_6;
        v31[3] = &unk_27930F7F8;
        v33 = v36;
        v34 = buffersCopy2;
        v26 = v27;
        v32 = v26;
        [tileBindings enumerateObjectsUsingBlock:v31];

LABEL_17:
        _Block_object_dispose(v36, 8);
        std::__tree<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>>>::destroy(&v37, v38[0]);
        goto LABEL_18;
      }
    }

    else
    {
    }

    goto LABEL_17;
  }

LABEL_23:
}

id *__71__DYMTLCommonDebugFunctionPlayer_extractRenderIndirectArgumentBuffers___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 8);
  v7 = a3;
  v8 = &v7;
  v5 = std::__tree<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v4 + 48), &v7, &std::piecewise_construct, &v8);
  return DYMTLBoundBufferInfo::operator=(v5 + 5, a2);
}

void __71__DYMTLCommonDebugFunctionPlayer_extractRenderIndirectArgumentBuffers___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 type] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 dataTypeDescription];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v3 dataTypeDescription];
      v6 = [v5 elementIsArgumentBuffer];

      if (v6)
      {
        v7 = *(*(a1 + 40) + 8);
        v8 = [v3 index];
        v11 = *(v7 + 56);
        v10 = (v7 + 56);
        v9 = v11;
        if (!v11)
        {
          goto LABEL_13;
        }

        v12 = v10;
        do
        {
          v13 = v9[4];
          v14 = v13 >= v8;
          v15 = v13 < v8;
          if (v14)
          {
            v12 = v9;
          }

          v9 = v9[v15];
        }

        while (v9);
        if (v12 == v10 || v8 < v12[4])
        {
LABEL_13:
          v12 = v10;
        }

        if (v12 != (*(*(a1 + 40) + 8) + 56))
        {
          v16 = v12[5];
          if (v16)
          {
            if (!v12[6])
            {
              v25 = v16;
              v17 = *(a1 + 48);
              v22 = &v25;
              v18 = std::__tree<std::__value_type<objc_object  {objcproto9MTLBuffer}*,std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>>,std::__map_value_compare<objc_object  {objcproto9MTLBuffer}*,std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>,std::less<objc_object  {objcproto9MTLBuffer}*>,true>,std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}><std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>>>::__emplace_unique_key_args<objc_object  {objcproto9MTLBuffer}*,std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto9MTLBuffer} const&>,std::tuple<>>(v17, &v25, &std::piecewise_construct, &v22);
              if (v12[5] && !v12[6])
              {
                v19 = v12[7];
              }

              else
              {
                v19 = 0;
              }

              v20 = [*(a1 + 32) vertexFunction];
              v21 = v3;
              v22 = v19;
              v23 = v20;
              v24 = v21;
              std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>::push_back[abi:ne200100](v18 + 5, &v22);
            }
          }
        }
      }
    }

    else
    {
    }
  }
}

id *__71__DYMTLCommonDebugFunctionPlayer_extractRenderIndirectArgumentBuffers___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 8);
  v7 = a3;
  v8 = &v7;
  v5 = std::__tree<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v4 + 48), &v7, &std::piecewise_construct, &v8);
  return DYMTLBoundBufferInfo::operator=(v5 + 5, a2);
}

void __71__DYMTLCommonDebugFunctionPlayer_extractRenderIndirectArgumentBuffers___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 type] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 dataTypeDescription];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v3 dataTypeDescription];
      v6 = [v5 elementIsArgumentBuffer];

      if (v6)
      {
        v7 = *(*(a1 + 40) + 8);
        v8 = [v3 index];
        v11 = *(v7 + 56);
        v10 = (v7 + 56);
        v9 = v11;
        if (!v11)
        {
          goto LABEL_13;
        }

        v12 = v10;
        do
        {
          v13 = v9[4];
          v14 = v13 >= v8;
          v15 = v13 < v8;
          if (v14)
          {
            v12 = v9;
          }

          v9 = v9[v15];
        }

        while (v9);
        if (v12 == v10 || v8 < v12[4])
        {
LABEL_13:
          v12 = v10;
        }

        if (v12 != (*(*(a1 + 40) + 8) + 56))
        {
          v16 = v12[5];
          if (v16)
          {
            if (!v12[6])
            {
              v25 = v16;
              v17 = *(a1 + 48);
              v22 = &v25;
              v18 = std::__tree<std::__value_type<objc_object  {objcproto9MTLBuffer}*,std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>>,std::__map_value_compare<objc_object  {objcproto9MTLBuffer}*,std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>,std::less<objc_object  {objcproto9MTLBuffer}*>,true>,std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}><std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>>>::__emplace_unique_key_args<objc_object  {objcproto9MTLBuffer}*,std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto9MTLBuffer} const&>,std::tuple<>>(v17, &v25, &std::piecewise_construct, &v22);
              if (v12[5] && !v12[6])
              {
                v19 = v12[7];
              }

              else
              {
                v19 = 0;
              }

              v20 = [*(a1 + 32) fragmentFunction];
              v21 = v3;
              v22 = v19;
              v23 = v20;
              v24 = v21;
              std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>::push_back[abi:ne200100](v18 + 5, &v22);
            }
          }
        }
      }
    }

    else
    {
    }
  }
}

id *__71__DYMTLCommonDebugFunctionPlayer_extractRenderIndirectArgumentBuffers___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 8);
  v7 = a3;
  v8 = &v7;
  v5 = std::__tree<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v4 + 48), &v7, &std::piecewise_construct, &v8);
  return DYMTLBoundBufferInfo::operator=(v5 + 5, a2);
}

void __71__DYMTLCommonDebugFunctionPlayer_extractRenderIndirectArgumentBuffers___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 type] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 dataTypeDescription];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v3 dataTypeDescription];
      v6 = [v5 elementIsArgumentBuffer];

      if (v6)
      {
        v7 = *(*(a1 + 40) + 8);
        v8 = [v3 index];
        v11 = *(v7 + 56);
        v10 = (v7 + 56);
        v9 = v11;
        if (!v11)
        {
          goto LABEL_13;
        }

        v12 = v10;
        do
        {
          v13 = v9[4];
          v14 = v13 >= v8;
          v15 = v13 < v8;
          if (v14)
          {
            v12 = v9;
          }

          v9 = v9[v15];
        }

        while (v9);
        if (v12 == v10 || v8 < v12[4])
        {
LABEL_13:
          v12 = v10;
        }

        if (v12 != (*(*(a1 + 40) + 8) + 56))
        {
          v16 = v12[5];
          if (v16)
          {
            if (!v12[6])
            {
              v25 = v16;
              v17 = *(a1 + 48);
              v22 = &v25;
              v18 = std::__tree<std::__value_type<objc_object  {objcproto9MTLBuffer}*,std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>>,std::__map_value_compare<objc_object  {objcproto9MTLBuffer}*,std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>,std::less<objc_object  {objcproto9MTLBuffer}*>,true>,std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}><std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>>>::__emplace_unique_key_args<objc_object  {objcproto9MTLBuffer}*,std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto9MTLBuffer} const&>,std::tuple<>>(v17, &v25, &std::piecewise_construct, &v22);
              if (v12[5] && !v12[6])
              {
                v19 = v12[7];
              }

              else
              {
                v19 = 0;
              }

              v20 = [*(a1 + 32) tileFunction];
              v21 = v3;
              v22 = v19;
              v23 = v20;
              v24 = v21;
              std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>::push_back[abi:ne200100](v18 + 5, &v22);
            }
          }
        }
      }
    }

    else
    {
    }
  }
}

- (void)extractComputeIndirectArgumentBuffers:(void *)buffers
{
  v23 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + *MEMORY[0x277D0AFA0]) + 48, 0);
  v20[0] = &v23;
  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>([(DYMTLFunctionPlayer *)self objectMap], &v23, &std::piecewise_construct, v20)[3];
  computePipelineState = [v5 computePipelineState];
  v13 = DYMTLGetAssociatedObject(computePipelineState, 2u);
  v14 = DYMTLGetAssociatedObject(computePipelineState, 0);
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x4812000000;
  v20[3] = __Block_byref_object_copy__4;
  v20[4] = __Block_byref_object_dispose__4;
  v20[5] = "";
  v22[0] = 0;
  v22[1] = 0;
  v21 = v22;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __72__DYMTLCommonDebugFunctionPlayer_extractComputeIndirectArgumentBuffers___block_invoke;
  v19[3] = &unk_27930F430;
  v19[4] = v20;
  [v5 enumerateBuffersUsingBlock:v19];
  arguments = [v13 arguments];
  firstObject = [arguments firstObject];
  if (!firstObject)
  {
    goto LABEL_4;
  }

  firstObject2 = [arguments firstObject];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_6;
  }

  firstObject3 = [arguments firstObject];
  dataTypeDescription = [firstObject3 dataTypeDescription];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
LABEL_4:
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __72__DYMTLCommonDebugFunctionPlayer_extractComputeIndirectArgumentBuffers___block_invoke_2;
    v15[3] = &unk_27930F7F8;
    v17 = v20;
    buffersCopy = buffers;
    v16 = v14;
    [arguments enumerateObjectsUsingBlock:v15];
    firstObject = v16;
LABEL_6:
  }

  _Block_object_dispose(v20, 8);
  std::__tree<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>>>::destroy(&v21, v22[0]);
}

id *__72__DYMTLCommonDebugFunctionPlayer_extractComputeIndirectArgumentBuffers___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 8);
  v7 = a3;
  v8 = &v7;
  v5 = std::__tree<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v4 + 48), &v7, &std::piecewise_construct, &v8);
  return DYMTLBoundBufferInfo::operator=(v5 + 5, a2);
}

void __72__DYMTLCommonDebugFunctionPlayer_extractComputeIndirectArgumentBuffers___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 type] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 dataTypeDescription];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v3 dataTypeDescription];
      v6 = [v5 elementIsArgumentBuffer];

      if (v6)
      {
        v7 = *(*(a1 + 40) + 8);
        v8 = [v3 index];
        v11 = *(v7 + 56);
        v10 = (v7 + 56);
        v9 = v11;
        if (!v11)
        {
          goto LABEL_13;
        }

        v12 = v10;
        do
        {
          v13 = v9[4];
          v14 = v13 >= v8;
          v15 = v13 < v8;
          if (v14)
          {
            v12 = v9;
          }

          v9 = v9[v15];
        }

        while (v9);
        if (v12 == v10 || v8 < v12[4])
        {
LABEL_13:
          v12 = v10;
        }

        if (v12 != (*(*(a1 + 40) + 8) + 56))
        {
          v16 = v12[5];
          if (v16)
          {
            if (!v12[6])
            {
              v25 = v16;
              v17 = *(a1 + 48);
              v22 = &v25;
              v18 = std::__tree<std::__value_type<objc_object  {objcproto9MTLBuffer}*,std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>>,std::__map_value_compare<objc_object  {objcproto9MTLBuffer}*,std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>,std::less<objc_object  {objcproto9MTLBuffer}*>,true>,std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}><std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>>>::__emplace_unique_key_args<objc_object  {objcproto9MTLBuffer}*,std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto9MTLBuffer} const&>,std::tuple<>>(v17, &v25, &std::piecewise_construct, &v22);
              if (v12[5] && !v12[6])
              {
                v19 = v12[7];
              }

              else
              {
                v19 = 0;
              }

              v20 = [*(a1 + 32) computeFunction];
              v21 = v3;
              v22 = v19;
              v23 = v20;
              v24 = v21;
              std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>::push_back[abi:ne200100](v18 + 5, &v22);
            }
          }
        }
      }
    }

    else
    {
    }
  }
}

- (void)_extractTileMemoryWithRenderPassDescriptor:(DYMTLRenderPassDescriptor *)descriptor renderEncoderID:(unint64_t)d isDrawCall:(BOOL)call
{
  callCopy = call;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x4812000000;
  v33 = __Block_byref_object_copy__511;
  v34 = __Block_byref_object_dispose__512;
  v35 = "";
  memset(v36, 0, sizeof(v36));
  v8 = [(DYMTLFunctionPlayer *)self objectForKey:d];
  renderPipelineState = [v8 renderPipelineState];
  tileWidth = descriptor->tileWidth;
  tileHeight = descriptor->tileHeight;
  width = [v8 width];
  height = [v8 height];
  v14 = [DYMTLTileMemoryExtractor alloc];
  device = [(DYMTLFunctionPlayer *)self device];
  v29[0] = tileWidth;
  v29[1] = tileHeight;
  v29[2] = 1;
  v28[0] = width;
  v28[1] = height;
  v28[2] = 0;
  v16 = [(DYMTLTileMemoryExtractor *)v14 initWithRenderEncoder:v8 metalDevice:device tileSize:v29 texSize:v28];
  tileMemoryExtractor = self->_tileMemoryExtractor;
  self->_tileMemoryExtractor = v16;

  v18 = DYMTLGetAssociatedObject(renderPipelineState, 2u);
  [(DYMTLTileMemoryExtractor *)self->_tileMemoryExtractor processReflection:v18 isDrawCall:callCopy];
  if ([(DYMTLTileMemoryExtractor *)self->_tileMemoryExtractor getImageBlockStatus])
  {
    [(DYMTLTileMemoryExtractor *)self->_tileMemoryExtractor harvestImageBlockData:&v37];
  }

  if ([(DYMTLTileMemoryExtractor *)self->_tileMemoryExtractor getThreadgroupStatus])
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __104__DYMTLCommonDebugFunctionPlayer__extractTileMemoryWithRenderPassDescriptor_renderEncoderID_isDrawCall___block_invoke;
    v27[3] = &unk_27930F820;
    v27[4] = self;
    v27[5] = &v30;
    [v8 enumerateThreadgroupMemoryUsingBlock:v27];
  }

  v19 = v37;
  if (v38 != v37)
  {
    v20 = 0;
    v21 = *MEMORY[0x277D0B278];
    v22 = 1;
    do
    {
      [(DYMTLFunctionPlayer *)self setObject:*(v19 + 8 * v20) forKey:v21 + v20];
      v20 = v22;
      v19 = v37;
      ++v22;
    }

    while (v20 < (v38 - v37) >> 3);
  }

  v23 = v31[6];
  if (v31[7] != v23)
  {
    v24 = 0;
    v25 = *MEMORY[0x277D0B280];
    v26 = 1;
    do
    {
      [(DYMTLFunctionPlayer *)self setObject:v23[v24] forKey:v25 + v24];
      v24 = v26;
      v23 = v31[6];
      ++v26;
    }

    while (v24 < v31[7] - v23);
  }

  _Block_object_dispose(&v30, 8);
  v29[0] = v36;
  std::vector<objc_object  {objcproto10MTLTexture}* {__strong}>::__destroy_vector::operator()[abi:ne200100](v29);
  v30 = &v37;
  std::vector<objc_object  {objcproto10MTLTexture}* {__strong}>::__destroy_vector::operator()[abi:ne200100](&v30);
}

void __104__DYMTLCommonDebugFunctionPlayer__extractTileMemoryWithRenderPassDescriptor_renderEncoderID_isDrawCall___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [*(*(a1 + 32) + 3952) harvestThreadgroupAtIndex:a3 size:*a2];
  if (v4)
  {
    std::vector<objc_object  {objcproto9MTLBuffer}* {__strong}>::push_back[abi:ne200100]((*(*(a1 + 40) + 8) + 48), &v4);
  }
}

- (void)_superExecutePlatformFunction
{
  if ((**(&self->super.super.super.super.isa + *MEMORY[0x277D0AFA0]) + 7167) >= 2)
  {
    v5 = v2;
    v6 = v3;
    v4.receiver = self;
    v4.super_class = DYMTLCommonDebugFunctionPlayer;
    [(DYMTLCommonFunctionPlayer *)&v4 executePlatformFunction];
  }
}

- (void)executePlatformFunction
{
  v3 = objc_autoreleasePoolPush();
  v4 = *MEMORY[0x277D0AFA0];
  if (**(&self->super.super.super.super.isa + v4) != -7161)
  {
    v5 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF98]);
    playbackMode = [v5 playbackMode];
    v7 = playbackMode > 0xC || ((1 << playbackMode) & 0x182E) == 0;
    if (v7 || (**(&self->super.super.super.super.isa + v4) + 7158) > 2)
    {
      [(DYMTLCommonDebugFunctionPlayer *)self _superExecutePlatformFunction];
    }

    else
    {
      layerManager = [(DYMTLCommonFunctionPlayer *)self layerManager];
      v9 = [(DYMTLCommonDebugFunctionPlayer *)self replayerLayerForDrawableId:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v4) + 48, 0)];
      [layerManager prepareLayerForPresent:v9];
    }

    v10 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v4) + 48, 0);
    v11 = *(&self->super.super.super.super.isa + v4);
    if (*v11 == -7167)
    {
      v18 = v10;
      v19 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v11 + 6), 0);
      v24 = v19;
      v20 = [(DYMTLFunctionPlayer *)self objectForKey:v18];
      v21 = v20;
      if (v20)
      {
        texture = [v20 texture];
        DYMTLAddDrawableTextureDescriptor(texture);
        [(DYMTLFunctionPlayer *)self setObject:texture forKey:v19];
        v25 = &v24;
        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_textureToDrawableMap.__table_.__bucket_list_.__ptr_, &v24, &std::piecewise_construct, &v25)[3] = v18;
      }
    }

    else if (*v11 == -7166)
    {
      v12 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v11 + 12), 0);
      v24 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v4) + 24, 0);
      v13 = [(DYMTLCommonDebugFunctionPlayer *)self replayerLayerForDrawableId:v24];
      v23 = v12;
      [(DYMTLCommonDebugFunctionPlayer *)self updateReplayerLayer:v24 withOriginalLayer:v12];
      v14 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->super._drawableRenderabilityStatusMap.__table_.__bucket_list_.__ptr_, &v24);
      if (!v14 || *(v14 + 24) != 1 || ([(DYMTLFunctionPlayer *)self objectForKey:v24], (nextDrawable = objc_claimAutoreleasedReturnValue()) == 0))
      {
        do
        {
          nextDrawable = [v13 nextDrawable];
          v25 = &v24;
          *(std::__hash_table<std::__hash_value_type<unsigned long long,BOOL>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,BOOL>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->super._drawableRenderabilityStatusMap.__table_.__bucket_list_.__ptr_, &v24, &std::piecewise_construct, &v25) + 24) = 1;
        }

        while (!nextDrawable);
      }

      [(DYMTLFunctionPlayer *)self setObject:nextDrawable forKey:v24];
      v25 = &v24;
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_drawableIdToLayerIdMap.__table_.__bucket_list_.__ptr_, &v24, &std::piecewise_construct, &v25)[3] = v23;
      v25 = &v24;
      v16 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto15CAMetalDrawable}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>(&self->super._drawableMap.__table_.__bucket_list_.__ptr_, &v24, &std::piecewise_construct, &v25);
      v17 = v16[3];
      v16[3] = nextDrawable;
    }

    if ([v5 playbackMode] <= 1)
    {
      [(DYMTLCommonDebugFunctionPlayer *)self _trackObjects];
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (void)enableConsistentState:(BOOL)state
{
  stateCopy = state;
  v7.receiver = self;
  v7.super_class = DYMTLCommonDebugFunctionPlayer;
  commandQueue = [(DYMTLFunctionPlayer *)&v7 commandQueue];
  v5 = commandQueue;
  if (commandQueue)
  {
    if (stateCopy)
    {
      v6 = [commandQueue getStatOptions] | 0x80000000;
    }

    else
    {
      v6 = [commandQueue getStatOptions] & 0x7FFFFFFF;
    }

    [v5 setStatOptions:v6];
  }
}

- (void)allowOverlap:(BOOL)overlap withPState:(unsigned int)state
{
  v4 = *&state;
  overlapCopy = overlap;
  v10.receiver = self;
  v10.super_class = DYMTLCommonDebugFunctionPlayer;
  commandQueue = [(DYMTLFunctionPlayer *)&v10 commandQueue];
  v8 = commandQueue;
  if (commandQueue)
  {
    [commandQueue setGPUPriority:overlapCopy ^ 1];
    [v8 setStatEnabled:overlapCopy];
    if (v4)
    {
      [(DYMTLCommonDebugFunctionPlayer *)self setConsistentStateTo:v4];
    }

    if (overlapCopy)
    {
      v9 = 2952790016;
    }

    else
    {
      v9 = 0x10000000;
    }

    [v8 setStatOptions:v9];
  }
}

- (void)setConsistentStateTo:(unsigned int)to
{
  v3 = *&to;
  device = [(DYMTLFunctionPlayer *)self device];
  v5 = DYMTLGetOriginalObject(device);

  if (objc_opt_respondsToSelector())
  {
    [v5 setConsistentGPUPerfStateTo:v3];
  }
}

- (void)prepareForCaptureExecution
{
  v4.receiver = self;
  v4.super_class = DYMTLCommonDebugFunctionPlayer;
  [(DYFunctionPlayer *)&v4 prepareForCaptureExecution];
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::clear(&self->_commandBufferMap.__table_.__bucket_list_.__ptr_);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::clear(&self->_encoderMap.__table_.__bucket_list_.__ptr_);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::clear(&self->_parallelEncoderMap.__table_.__bucket_list_.__ptr_);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::clear(&self->_encoderToParallelEncoderMap.__table_.__bucket_list_.__ptr_);
  self->_lastEncoderID = 0;
  self->_disableWireframe = 0;
  [(DYMTLCommonDebugFunctionPlayer *)self resetFunctionPlayerData];
  layerManager = [(DYMTLCommonFunctionPlayer *)self layerManager];
  [layerManager resetLayersVisibility];
  std::__hash_table<std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSData * {__strong}>>>::clear(&self->super._drawableMap);
}

- (void)_endEncodingForAllRemainingEncoders:(void *)encoders
{
  v3 = *(encoders + 2);
  if (v3)
  {
    selfCopy3 = self;
    v5 = &selRef_newRenderPipelineStateWithBinaryFunctions_error_;
    while ((v3[6] & 1) != 0)
    {
LABEL_42:
      v3 = *v3;
      if (!v3)
      {
        return;
      }
    }

    v37 = [(DYMTLFunctionPlayer *)selfCopy3 objectForKey:v3[2]];
    if ([v37 conformsToProtocol:v5[205]])
    {
      if ([objc_msgSend(v37 performSelector:{sel_parent), "conformsToProtocol:", &unk_2860CCE90}])
      {
        v6 = DYMTLGetAssociatedObject(v37, 0);
        for (i = 0; i != 8; ++i)
        {
          colorAttachments = [v6 colorAttachments];
          v9 = [colorAttachments objectAtIndexedSubscript:i];
          texture = [v9 texture];
          if (texture)
          {
            colorAttachments2 = [v6 colorAttachments];
            v12 = [colorAttachments2 objectAtIndexedSubscript:i];
            storeAction = [v12 storeAction];

            if (storeAction == 4 && (objc_opt_respondsToSelector() & 1) != 0)
            {
              [v37 setColorStoreAction:1 atIndex:i];
            }
          }

          else
          {
          }
        }

        [v6 depthAttachment];
        selfCopy3 = self;
        v14 = v5 = &selRef_newRenderPipelineStateWithBinaryFunctions_error_;
        texture2 = [v14 texture];
        if (texture2)
        {
          depthAttachment = [v6 depthAttachment];
          storeAction2 = [depthAttachment storeAction];

          if (storeAction2 == 4 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v37 setDepthStoreAction:1];
          }
        }

        else
        {
        }

        stencilAttachment = [v6 stencilAttachment];
        texture3 = [stencilAttachment texture];
        if (texture3)
        {
          stencilAttachment2 = [v6 stencilAttachment];
          storeAction3 = [stencilAttachment2 storeAction];

          if (storeAction3 != 4 || (objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_40;
          }

          goto LABEL_33;
        }

        goto LABEL_39;
      }
    }

    else if ([v37 conformsToProtocol:&unk_2860CCF90])
    {
      v6 = DYMTLGetAssociatedObject(v37, 0);
      for (j = 0; j != 8; ++j)
      {
        colorAttachments3 = [v6 colorAttachments];
        v20 = [colorAttachments3 objectAtIndexedSubscript:j];
        texture4 = [v20 texture];
        if (texture4)
        {
          colorAttachments4 = [v6 colorAttachments];
          v23 = [colorAttachments4 objectAtIndexedSubscript:j];
          storeAction4 = [v23 storeAction];

          if (storeAction4 == 4 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v37 setColorStoreAction:1 atIndex:j];
          }
        }

        else
        {
        }
      }

      [v6 depthAttachment];
      selfCopy3 = self;
      v25 = v5 = &selRef_newRenderPipelineStateWithBinaryFunctions_error_;
      texture5 = [v25 texture];
      if (texture5)
      {
        depthAttachment2 = [v6 depthAttachment];
        storeAction5 = [depthAttachment2 storeAction];

        if (storeAction5 == 4 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v37 setDepthStoreAction:1];
        }
      }

      else
      {
      }

      stencilAttachment = [v6 stencilAttachment];
      texture6 = [stencilAttachment texture];
      if (texture6)
      {
        stencilAttachment3 = [v6 stencilAttachment];
        storeAction6 = [stencilAttachment3 storeAction];

        if (storeAction6 != 4 || (objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_40;
        }

LABEL_33:
        [v37 setStencilStoreAction:1];
LABEL_40:

        goto LABEL_41;
      }

LABEL_39:

      goto LABEL_40;
    }

LABEL_41:
    [v37 endEncoding];
    *(v3 + 48) = 1;

    goto LABEL_42;
  }
}

- (void)commitEncodersAndCommandBuffers
{
  [(DYMTLCommonDebugFunctionPlayer *)self _endEncodingForAllRemainingEncoders:&self->_encoderMap];
  [(DYMTLCommonDebugFunctionPlayer *)self _endEncodingForAllRemainingEncoders:&self->_parallelEncoderMap];
  currentParallelDescriptor = self->_currentParallelDescriptor;
  self->_currentParallelDescriptor = 0;

  self->_currentParallelId = 0;
  for (i = self->_commandBufferMap.__table_.__first_node_.__next_; i; i = *i)
  {
    if ((i[4] & 1) == 0)
    {
      v5 = [(DYMTLFunctionPlayer *)self objectForKey:i[2]];
      [v5 commit];
      *(i + 32) = 1;
    }
  }
}

- (void)waitForCommmandBuffersCompletion
{
  for (i = self->_commandQueueSet.__table_.__first_node_.__next_; i; i = *i)
  {
    v4 = [(DYMTLFunctionPlayer *)self objectForKey:i[2]];
    [v4 finish];
  }
}

- (id)_texture2DFromTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice depthPlane:(unint64_t)plane commandBuffer:(id)buffer
{
  textureCopy = texture;
  bufferCopy = buffer;
  v14 = objc_opt_new();
  [v14 setTextureType:2];
  [v14 setPixelFormat:objc_msgSend(textureCopy, "pixelFormat")];
  width = [textureCopy width];
  if (width >> level <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = width >> level;
  }

  [v14 setWidth:v16];
  height = [textureCopy height];
  if (height >> level <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = height >> level;
  }

  [v14 setHeight:v18];
  if (!self->_isAGXDevice)
  {
    [v14 setResourceOptions:32];
  }

  if ([textureCopy isFramebufferOnly])
  {
    v19 = textureCopy;
  }

  else
  {
    device = [(DYMTLFunctionPlayer *)self device];
    v19 = DYMTLNewTexture(device, v14);

    if ([textureCopy textureType] == 4 || objc_msgSend(textureCopy, "textureType") == 8)
    {
      renderPassDescriptor = [MEMORY[0x277CD6F48] renderPassDescriptor];
      colorAttachments = [renderPassDescriptor colorAttachments];
      v23 = [colorAttachments objectAtIndexedSubscript:0];

      [v23 setTexture:textureCopy];
      [v23 setLevel:level];
      [v23 setSlice:slice];
      [v23 setDepthPlane:plane];
      [v23 setResolveTexture:v19];
      [v23 setLoadAction:1];
      [v23 setStoreAction:2];
      v24 = DYMTLNewStatefulRenderCommandEncoder(bufferCopy, renderPassDescriptor);
      [v24 endEncoding];
    }

    else
    {
      renderPassDescriptor = [bufferCopy blitCommandEncoder];
      v28[0] = 0;
      v28[1] = 0;
      v28[2] = plane;
      v27[0] = [v19 width];
      v27[1] = [v19 height];
      v27[2] = 1;
      memset(v26, 0, sizeof(v26));
      [renderPassDescriptor copyFromTexture:textureCopy sourceSlice:slice sourceLevel:level sourceOrigin:v28 sourceSize:v27 toTexture:v19 destinationSlice:0 destinationLevel:0 destinationOrigin:v26];
      [renderPassDescriptor endEncoding];
    }
  }

  return v19;
}

- (void)presentDrawable
{
  v72 = *MEMORY[0x277D85DE8];
  if (self->_lastEncoderID)
  {
    GPUTools::AutoCATransaction::AutoCATransaction(v71, 1, 1);
    v3 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_encoderMap.__table_.__bucket_list_.__ptr_, &self->_lastEncoderID);
    if (!v3)
    {
      goto LABEL_45;
    }

    v4 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_encoderToParallelEncoderMap.__table_.__bucket_list_.__ptr_, v3 + 5);
    if (v4)
    {
      v3 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_parallelEncoderMap.__table_.__bucket_list_.__ptr_, v4 + 3);
      if (!v3)
      {
        goto LABEL_45;
      }
    }

    if (!v3[5])
    {
      goto LABEL_45;
    }

    objc_msgSend__attachmentInfoForCommandEncoderID_(self);
    if (!v67)
    {
      goto LABEL_45;
    }

    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_commandBufferMap.__table_.__bucket_list_.__ptr_, v3 + 3);
    if (!v5)
    {
      goto LABEL_45;
    }

    v65 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF98]);
    v6 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_textureToDrawableMap.__table_.__bucket_list_.__ptr_, &v67);
    v66 = 0;
    if (v6)
    {
      v66 = v6[3];
      v7 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_drawableIdToLayerIdMap.__table_.__bucket_list_.__ptr_, &v66);
      v8 = v66;
      if (v7)
      {
        v9 = [(DYMTLFunctionPlayer *)self objectForKey:v66];
        texture = [v9 texture];

        v11 = v7[3] == -1;
        v8 = v66;
        goto LABEL_13;
      }
    }

    else
    {
      v8 = 0;
    }

    texture = 0;
    v11 = 1;
LABEL_13:
    v12 = [(DYMTLCommonDebugFunctionPlayer *)self replayerLayerForDrawableId:v8];
    if (v11)
    {
      v13 = [(DYMTLFunctionPlayer *)self objectForKey:v67];

      if (!v13)
      {
        texture = 0;
        texture2 = 0;
        v27 = 0;
LABEL_44:

LABEL_45:
        GPUTools::AutoCATransaction::~AutoCATransaction(v71);
        return;
      }

      width = [v13 width];
      if (width >> v68 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = width >> v68;
      }

      height = [v13 height];
      if (height >> v68 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = height >> v68;
      }

      v18 = objc_opt_class();
      layerManager = [(DYMTLCommonFunctionPlayer *)self layerManager];
      [layerManager boundsForCurrentInterfaceOrientation];
      [v18 shrinkSourceSize:v15 toDestSize:v17];
      v21 = v20;
      v23 = v22;

      [v12 setBounds:{0.0, 0.0, v21, v23}];
      [v12 setDrawableSize:{objc_msgSend(v13, "width"), objc_msgSend(v13, "height")}];
      device = [(DYMTLFunctionPlayer *)self device];
      [v12 setDevice:device];

      [v12 setPixelFormat:80];
      layerManager2 = [(DYMTLCommonFunctionPlayer *)self layerManager];
      [layerManager2 defaultContentsScale];
      [v12 setContentsScale:?];

      texture = v13;
    }

    context = objc_autoreleasePoolPush();
    do
    {
      nextDrawable = [v12 nextDrawable];
      v27 = nextDrawable;
    }

    while (!nextDrawable);
    texture2 = [nextDrawable texture];
    if (texture2 && texture)
    {
      v61 = [(DYMTLFunctionPlayer *)self objectForKey:v5[3]];
      commandBuffer = [v61 commandBuffer];
      renderPassDescriptor = [MEMORY[0x277CD6F48] renderPassDescriptor];
      colorAttachments = [renderPassDescriptor colorAttachments];
      v30 = [colorAttachments objectAtIndexedSubscript:0];

      [v30 setTexture:texture2];
      [v30 setLoadAction:2];
      [v30 setStoreAction:1];
      [v30 setClearColor:{0.0, 0.0, 0.0, 1.0}];
      if (!v66)
      {
        v31 = texture;
        v32 = v31;
        if (([v31 pixelFormat] & 0xFFFFFFFFFFFFFFFELL) == 0x226)
        {
          v33 = [MEMORY[0x277CD7050] texture2DDescriptorWithPixelFormat:objc_msgSend(texture2 width:"pixelFormat") height:objc_msgSend(texture2 mipmapped:"width"), objc_msgSend(texture2, "height"), 0];
          device2 = [v61 device];
          v32 = DYMTLNewTexture(device2, v33);
        }

        if ([v32 storageMode] == 3)
        {
          v35 = sMemorylessTexturesAndReplacements;
          v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v32];
          v37 = [v35 objectForKeyedSubscript:v36];

          if (v37)
          {
            v38 = v37;
          }

          else
          {
            v38 = v32;
          }

          v39 = v38;

          v32 = v39;
        }

        v40 = [(DYMTLCommonDebugFunctionPlayer *)self _texture2DFromTexture:v32 level:v68 slice:v69 depthPlane:v70 commandBuffer:commandBuffer];

        texture = v40;
      }

      v41 = DYMTLNewStatefulRenderCommandEncoder(commandBuffer, renderPassDescriptor);
      [(DYMTLTextureRenderer *)self->_textureRenderer renderTexture:texture withEncoder:v41 enableBlending:0 layerIndex:0];
      if ([v65 enableWireframePresent])
      {
        if (!self->_disableWireframe)
        {
          wireframeTexture = [(DYMTLDebugWireframeRenderer *)self->_wireframeRenderer wireframeTexture];
          v43 = wireframeTexture == 0;

          if (!v43)
          {
            wireframeLineColor = [v65 wireframeLineColor];
            wireframeLineColor2 = [v65 wireframeLineColor];
            wireframeLineColor3 = [v65 wireframeLineColor];
            wireframeLineColor4 = [v65 wireframeLineColor];
            *&v46 = (wireframeLineColor & 0xFF000000) / 4278200000.0;
            *&v47 = (wireframeLineColor2 & 0xFF0000) / 16712000.0;
            *&v48 = (wireframeLineColor3 & 0xFF00) / 65280.0;
            *&v49 = wireframeLineColor4 / 255.0;
            [(DYMTLTextureRenderer *)self->_textureRenderer setBlendColorRed:v46 green:v47 blue:v48 alpha:v49];
            textureRenderer = self->_textureRenderer;
            wireframeTexture2 = [(DYMTLDebugWireframeRenderer *)self->_wireframeRenderer wireframeTexture];
            [(DYMTLTextureRenderer *)textureRenderer renderTexture:wireframeTexture2 withEncoder:v41 enableBlending:1 layerIndex:0];
          }
        }
      }

      if ([v65 enableOutlinePresent])
      {
        outlineTexture = [(DYMTLDebugWireframeRenderer *)self->_wireframeRenderer outlineTexture];
        v53 = outlineTexture == 0;

        if (!v53)
        {
          LODWORD(v54) = 1.0;
          LODWORD(v55) = 1.0;
          [(DYMTLTextureRenderer *)self->_textureRenderer setBlendColorRed:v54 green:0.0 blue:0.0 alpha:v55];
          v56 = self->_textureRenderer;
          outlineTexture2 = [(DYMTLDebugWireframeRenderer *)self->_wireframeRenderer outlineTexture];
          [(DYMTLTextureRenderer *)v56 renderTexture:outlineTexture2 withEncoder:v41 enableBlending:1 layerIndex:0];
        }
      }

      [v41 endEncoding];
      [commandBuffer commit];
      [commandBuffer waitUntilCompleted];
      layerManager3 = [(DYMTLCommonFunctionPlayer *)self layerManager];
      [layerManager3 prepareLayerForPresent:v12];
      [v27 present];
    }

    objc_autoreleasePoolPop(context);
    goto LABEL_44;
  }
}

- (id)replayerLayerForDrawableId:(unint64_t)id
{
  idCopy = id;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_metalLayers.__table_.__bucket_list_.__ptr_, &idCopy);
  if (v4)
  {
    v5 = v4[3];
  }

  else
  {
    v6 = *MEMORY[0x277D0AF98];
    if ([*(&self->super.super.super.super.isa + v6) conformsToProtocol:&unk_2860CCFF0])
    {
      v7 = *(&self->super.super.super.super.isa + v6);
      v5 = [v7 createLayerWithID:idCopy contentRect:0 contentsScale:0 properties:0.0 isCoreAnimationSurface:{0.0, 1.0, 1.0, 1.0}];
      if (v5)
      {
        v8 = idCopy == 0;
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        [v7 boundsForCurrentInterfaceOrientation];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        [v7 defaultContentsScale];
        [v7 updateLayer:v5 contentRect:0 contentsScale:v10 properties:{v12, v14, v16, v17}];
        [v5 setFramebufferOnly:0];
        v21 = &idCopy;
        v18 = std::__hash_table<std::__hash_value_type<unsigned long long,CAMetalLayer * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CAMetalLayer * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CAMetalLayer * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CAMetalLayer * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_metalLayers.__table_.__bucket_list_.__ptr_, &idCopy, &std::piecewise_construct, &v21);
        objc_storeStrong(v18 + 3, v5);
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)updateReplayerLayer:(unint64_t)layer withOriginalLayer:(unint64_t)originalLayer
{
  v20 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  v5 = [(DYMTLCommonFunctionPlayer *)self layerForID:originalLayer];
  *&v9[0] = &layerCopy;
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,CAMetalLayer * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CAMetalLayer * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CAMetalLayer * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CAMetalLayer * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_metalLayers.__table_.__bucket_list_.__ptr_, &layerCopy, &std::piecewise_construct, v9)[3];
  GPUTools::AutoCATransaction::AutoCATransaction(v19, 1, 1);
  [v5 bounds];
  [v6 setBounds:?];
  [v5 position];
  [v6 setPosition:?];
  [v5 anchorPoint];
  [v6 setAnchorPoint:?];
  [v5 anchorPointZ];
  [v6 setAnchorPointZ:?];
  if (v5)
  {
    objc_msgSend_transform(v5);
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
  }

  v9[4] = v14;
  v9[5] = v15;
  v9[6] = v16;
  v9[7] = v17;
  v9[0] = v10;
  v9[1] = v11;
  v9[2] = v12;
  v9[3] = v13;
  [v6 setTransform:v9];
  [v6 setPixelFormat:objc_msgSend(v5, "pixelFormat")];
  device = [v5 device];
  if (device)
  {
    [v5 device];
  }

  else
  {
    [(DYMTLFunctionPlayer *)self device];
  }
  v8 = ;
  [v6 setDevice:v8];

  [v5 contentsScale];
  [v6 setContentsScale:?];
  [v6 setFramebufferOnly:0];
  [v5 drawableSize];
  [v6 setDrawableSize:?];
  GPUTools::AutoCATransaction::~AutoCATransaction(v19);
}

+ (id)thumbnailTexture:(unint64_t)texture
{
  v4 = sThumbnailTextures;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = sThumbnailTextures;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:texture];
  [v7 removeObjectForKey:v8];

  return v6;
}

+ (id)harvestableTexture:(id)texture
{
  textureCopy = texture;
  v4 = sMemorylessTexturesAndReplacements;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:textureCopy];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = textureCopy;
  if (v6)
  {
    v8 = sMemorylessTexturesAndReplacements;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:textureCopy];
    v7 = [v8 objectForKeyedSubscript:v9];
  }

  return v7;
}

- (void)encodeStoreActionForRenderCommandEncoder:(id)encoder withDescriptor:(id)descriptor
{
  encoderCopy = encoder;
  descriptorCopy = descriptor;
  depthAttachment = [descriptorCopy depthAttachment];
  storeAction = [depthAttachment storeAction];

  if (storeAction == 4)
  {
    [encoderCopy setDepthStoreAction:1];
  }

  stencilAttachment = [descriptorCopy stencilAttachment];
  storeAction2 = [stencilAttachment storeAction];

  if (storeAction2 == 4)
  {
    [encoderCopy setStencilStoreAction:1];
  }

  for (i = 0; i != 8; ++i)
  {
    colorAttachments = [descriptorCopy colorAttachments];
    v12 = [colorAttachments objectAtIndexedSubscript:i];
    storeAction3 = [v12 storeAction];

    if (storeAction3 == 4)
    {
      [encoderCopy setColorStoreAction:1 atIndex:i];
    }
  }
}

- (void)encodeStoreActionForParallelRenderCommandEncoder:(id)encoder withDescriptor:(id)descriptor
{
  encoderCopy = encoder;
  descriptorCopy = descriptor;
  depthAttachment = [descriptorCopy depthAttachment];
  storeAction = [depthAttachment storeAction];

  if (storeAction == 4)
  {
    depthAttachment2 = [descriptorCopy depthAttachment];
    resolveTexture = [depthAttachment2 resolveTexture];
    if (resolveTexture)
    {
      v10 = 3;
    }

    else
    {
      v10 = 1;
    }

    [encoderCopy setDepthStoreAction:v10];
  }

  stencilAttachment = [descriptorCopy stencilAttachment];
  storeAction2 = [stencilAttachment storeAction];

  if (storeAction2 == 4)
  {
    stencilAttachment2 = [descriptorCopy stencilAttachment];
    resolveTexture2 = [stencilAttachment2 resolveTexture];
    if (resolveTexture2)
    {
      v15 = 3;
    }

    else
    {
      v15 = 1;
    }

    [encoderCopy setStencilStoreAction:v15];
  }

  for (i = 0; i != 8; ++i)
  {
    colorAttachments = [descriptorCopy colorAttachments];
    v18 = [colorAttachments objectAtIndexedSubscript:i];
    storeAction3 = [v18 storeAction];

    if (storeAction3 == 4)
    {
      colorAttachments2 = [descriptorCopy colorAttachments];
      v21 = [colorAttachments2 objectAtIndexedSubscript:i];
      resolveTexture3 = [v21 resolveTexture];
      if (resolveTexture3)
      {
        v23 = 3;
      }

      else
      {
        v23 = 1;
      }

      [encoderCopy setColorStoreAction:v23 atIndex:i];
    }
  }
}

- (void)_executeGraphicsFunction
{
  v3 = *MEMORY[0x277D0AFA0];
  v4 = *(&self->super.super.super.super.isa + v3);
  v5 = *v4;
  if (*v4 > -16161)
  {
    if (v5 > -16154)
    {
      if (v5 > -7159)
      {
        if ((v5 + 7158) >= 3)
        {
          goto LABEL_83;
        }

        v61 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v4 + 12), 0);
        layerManager = [(DYMTLCommonFunctionPlayer *)self layerManager];
        descriptor = [(DYMTLCommonDebugFunctionPlayer *)self replayerLayerForDrawableId:v61];
        [layerManager prepareLayerForPresent:descriptor];
        v59.receiver = self;
        v59.super_class = DYMTLCommonDebugFunctionPlayer;
        [(DYMTLFunctionPlayer *)&v59 executeGraphicsFunction];
        v69 = &v61;
        v8 = std::__hash_table<std::__hash_value_type<unsigned long long,BOOL>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,BOOL>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->super._drawableRenderabilityStatusMap.__table_.__bucket_list_.__ptr_, &v61, &std::piecewise_construct, &v69);
        goto LABEL_46;
      }

      if (v5 != -16153)
      {
        if (v5 != -16152)
        {
          if (v5 != -16133)
          {
            goto LABEL_83;
          }

LABEL_14:
          v61 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v4 + 18), 0);
          layerManager = [(DYMTLCommonFunctionPlayer *)self layerManager];
          descriptor = [(DYMTLCommonDebugFunctionPlayer *)self replayerLayerForDrawableId:v61];
          [layerManager prepareLayerForPresent:descriptor];
          v60.receiver = self;
          v60.super_class = DYMTLCommonDebugFunctionPlayer;
          [(DYMTLFunctionPlayer *)&v60 executeGraphicsFunction];
          v69 = &v61;
          v8 = std::__hash_table<std::__hash_value_type<unsigned long long,BOOL>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,BOOL>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->super._drawableRenderabilityStatusMap.__table_.__bucket_list_.__ptr_, &v61, &std::piecewise_construct, &v69);
LABEL_46:
          *(v8 + 24) = 0;
LABEL_47:

          return;
        }

        goto LABEL_71;
      }

LABEL_78:
      layerManager = [(DYMTLFunctionPlayer *)self objectForKey:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v3) + 48, 0)];
      descriptor = [layerManager descriptor];
      depthAttachment = [descriptor depthAttachment];
      storeAction = [depthAttachment storeAction];

      if (storeAction == 4)
      {
        v65.receiver = self;
        v65.super_class = DYMTLCommonDebugFunctionPlayer;
        [(DYMTLFunctionPlayer *)&v65 executeGraphicsFunction];
      }

      goto LABEL_47;
    }

    if (v5 <= -16159)
    {
      if (v5 != -16160)
      {
        v28 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v4 + 12), 0);
        v29 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_persistantEncoder2ParallelMap.__table_.__bucket_list_.__ptr_, &self->_targetCommandEncoderId);
        if (self->_currentParallelDescriptor)
        {
          v30 = v29 == 0;
        }

        else
        {
          v30 = 1;
        }

        if (!v30 && v29[3] == v28)
        {
          return;
        }

        goto LABEL_58;
      }
    }

    else
    {
      if (v5 == -16158)
      {
        v47 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v4 + 12), 0);
        v48 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_persistantEncoder2ParallelMap.__table_.__bucket_list_.__ptr_, &self->_targetCommandEncoderId);
        if (self->_currentParallelDescriptor)
        {
          v49 = v48 == 0;
        }

        else
        {
          v49 = 1;
        }

        if (!v49 && v48[3] == v47)
        {
          return;
        }

        goto LABEL_78;
      }

      if (v5 != -16157)
      {
        if (v5 != -16154)
        {
          goto LABEL_83;
        }

        goto LABEL_58;
      }

      v42 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v4 + 12), 0);
      v43 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_persistantEncoder2ParallelMap.__table_.__bucket_list_.__ptr_, &self->_targetCommandEncoderId);
      if (self->_currentParallelDescriptor)
      {
        v44 = v43 == 0;
      }

      else
      {
        v44 = 1;
      }

      if (!v44 && v43[3] == v42)
      {
        return;
      }
    }

LABEL_71:
    layerManager = [(DYMTLFunctionPlayer *)self objectForKey:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v3) + 48, 0)];
    descriptor = [layerManager descriptor];
    stencilAttachment = [descriptor stencilAttachment];
    storeAction2 = [stencilAttachment storeAction];

    if (storeAction2 == 4)
    {
      v64.receiver = self;
      v64.super_class = DYMTLCommonDebugFunctionPlayer;
      [(DYMTLFunctionPlayer *)&v64 executeGraphicsFunction];
    }

    goto LABEL_47;
  }

  if (v5 <= -16287)
  {
    if (v5 <= -16354)
    {
      if ((v5 + 16359) >= 2)
      {
        if (v5 == -16354)
        {
          if ([*(&self->super.super.super.super.isa + *MEMORY[0x277D0AF98]) playbackMode] == 9)
          {
            [(DYMTLCommonDebugFunctionPlayer *)self _updateRemainingCommandsForEncoder];
          }

          v62.receiver = self;
          v62.super_class = DYMTLCommonDebugFunctionPlayer;
          [(DYMTLFunctionPlayer *)&v62 executeGraphicsFunction];
          return;
        }

LABEL_83:
        v58.receiver = self;
        v58.super_class = DYMTLCommonDebugFunctionPlayer;
        [(DYMTLFunctionPlayer *)&v58 executeGraphicsFunction];
        return;
      }

      goto LABEL_14;
    }

    if (v5 != -16353)
    {
      if (v5 == -16352)
      {
        v63.receiver = self;
        v63.super_class = DYMTLCommonDebugFunctionPlayer;
        [(DYMTLFunctionPlayer *)&v63 executeGraphicsFunction];
        self->_bSetStageInRegion = 0;
        self->_stageInIndirectBufferId = 0;
        return;
      }

      if (v5 != -16351)
      {
        goto LABEL_83;
      }
    }

    goto LABEL_28;
  }

  if (v5 > -16196)
  {
    if (v5 == -16195)
    {
LABEL_28:
      [(DYFunctionPlayer *)self processArguments];
      self->_isTileRenderPassDescriptor = 0;
      obj = GPUTools::MTL::MakeMTLRenderPassDescriptor(**(&self->super.super.super._executePlatform + *MEMORY[0x277D0AF68]), [(DYMTLFunctionPlayer *)self objectMap]);
      v9 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v3) + 24, 0);
      v10 = v9;
      targetCommandEncoderId = self->_targetCommandEncoderId;
      if (targetCommandEncoderId)
      {
        v12 = v9 == targetCommandEncoderId;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        [(DYMTLCommonDebugFunctionPlayer *)self _modifyDescriptorForStore:obj];
      }

      v13 = [(DYMTLFunctionPlayer *)self objectForKey:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v3) + 48, 0)];
      [(DYMTLCommonDebugFunctionPlayer *)self _modifyDescriptorForLayering:obj withBuffer:v13];
      if (**(&self->super.super.super.super.isa + v3) == -16353)
      {
        v14 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF98]);
        if ([v14 playbackMode] == 10 || objc_msgSend(v14, "playbackMode") == 13)
        {
          for (i = 0; i != 8; ++i)
          {
            colorAttachments = [obj colorAttachments];
            v17 = [colorAttachments objectAtIndexedSubscript:i];
            [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:v17];

            colorAttachments2 = [obj colorAttachments];
            v19 = [colorAttachments2 objectAtIndexedSubscript:i];
            resolveTexture = [v19 resolveTexture];

            colorAttachments3 = [obj colorAttachments];
            v22 = [colorAttachments3 objectAtIndexedSubscript:i];
            if (resolveTexture)
            {
              [v22 setStoreAction:3];
            }

            else
            {
              [v22 setStoreAction:1];
            }
          }

          depthAttachment2 = [obj depthAttachment];
          [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:depthAttachment2];

          depthAttachment3 = [obj depthAttachment];
          resolveTexture2 = [depthAttachment3 resolveTexture];

          depthAttachment4 = [obj depthAttachment];
          if (resolveTexture2)
          {
            [depthAttachment4 setStoreAction:3];
          }

          else
          {
            [depthAttachment4 setStoreAction:1];
          }

          stencilAttachment2 = [obj stencilAttachment];
          [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:stencilAttachment2];

          stencilAttachment3 = [obj stencilAttachment];
          resolveTexture3 = [stencilAttachment3 resolveTexture];

          stencilAttachment4 = [obj stencilAttachment];
          if (resolveTexture3)
          {
            [stencilAttachment4 setStoreAction:3];
          }

          else
          {
            [stencilAttachment4 setStoreAction:1];
          }
        }

        v56 = DYMTLNewStatefulRenderCommandEncoder(v13, obj);
        [(DYMTLFunctionPlayer *)self setObject:v56 forKey:v10];
        [(DYMTLCommonDebugFunctionPlayer *)self encodeStoreActionForRenderCommandEncoder:v56 withDescriptor:obj];
      }

      else
      {
        objc_storeStrong(&self->_currentParallelDescriptor, obj);
        self->_currentParallelId = v10;
        v36 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_persistantEncoder2ParallelMap.__table_.__bucket_list_.__ptr_, &self->_targetCommandEncoderId);
        if (v36 && v36[3] == v10)
        {
          for (j = 0; j != 8; ++j)
          {
            colorAttachments4 = [(MTLRenderPassDescriptor *)self->_currentParallelDescriptor colorAttachments];
            v39 = [colorAttachments4 objectAtIndexedSubscript:j];
            [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:v39];
          }

          depthAttachment5 = [(MTLRenderPassDescriptor *)self->_currentParallelDescriptor depthAttachment];
          [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:depthAttachment5];

          stencilAttachment5 = [(MTLRenderPassDescriptor *)self->_currentParallelDescriptor stencilAttachment];
          [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:stencilAttachment5];

          [(DYMTLCommonDebugFunctionPlayer *)self _modifyDescriptorForStore:self->_currentParallelDescriptor];
        }

        v14 = DYMTLNewStatefulParallelRenderCommandEncoder(v13, obj);
        [(DYMTLFunctionPlayer *)self setObject:v14 forKey:v10];
        [(DYMTLCommonDebugFunctionPlayer *)self encodeStoreActionForParallelRenderCommandEncoder:v14 withDescriptor:obj];
      }

      return;
    }

    if (v5 != -16162)
    {
      if (v5 != -16161)
      {
        goto LABEL_83;
      }

      goto LABEL_78;
    }

LABEL_58:
    v31 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v3) + 48, 0);
    v32 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v3) + 96, 0);
    layerManager = [(DYMTLFunctionPlayer *)self objectForKey:v31];
    descriptor = [layerManager descriptor];
    colorAttachments5 = [descriptor colorAttachments];
    v34 = [colorAttachments5 objectAtIndexedSubscript:v32];
    storeAction3 = [v34 storeAction];

    if (storeAction3 == 4)
    {
      v66.receiver = self;
      v66.super_class = DYMTLCommonDebugFunctionPlayer;
      [(DYMTLFunctionPlayer *)&v66 executeGraphicsFunction];
    }

    goto LABEL_47;
  }

  if (v5 != -16286)
  {
    if (v5 == -16285)
    {
      currentParallelDescriptor = self->_currentParallelDescriptor;
      self->_currentParallelDescriptor = 0;

      self->_currentParallelId = 0;
      v67.receiver = self;
      v67.super_class = DYMTLCommonDebugFunctionPlayer;
      [(DYMTLFunctionPlayer *)&v67 executeGraphicsFunction];
      return;
    }

    goto LABEL_83;
  }

  v68.receiver = self;
  v68.super_class = DYMTLCommonDebugFunctionPlayer;
  [(DYMTLFunctionPlayer *)&v68 executeGraphicsFunction];
  v69 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v3) + 24, 0);
  if (self->_currentParallelId)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(&self->_persistantEncoder2ParallelMap.__table_.__bucket_list_.__ptr_, &v69);
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,unsigned long long &>(&self->_persistantEncoder2ParallelMap.__table_.__bucket_list_.__ptr_, &v69, &v69, &self->_currentParallelId);
  }
}

- (AttachmentInfo)_attachmentInfoForCommandEncoderID:(SEL)d
{
  v15 = a4;
  v7 = 0;
  v8 = &v7;
  v9 = 0x5012000000;
  v10 = __Block_byref_object_copy__633;
  v11 = __Block_byref_object_dispose__634;
  v12 = "";
  v13 = 0u;
  v14 = 0u;
  if (std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_commandEncoderDescriptorMap.__table_.__bucket_list_.__ptr_, &v15))
  {
    GPUTools::MTL::Utils::EnumerateValidAttachmentsForType();
  }

  v5 = *(v8 + 4);
  *&retstr->var0 = *(v8 + 3);
  *&retstr->var2 = v5;
  _Block_object_dispose(&v7, 8);
  return result;
}

uint64_t __69__DYMTLCommonDebugFunctionPlayer__attachmentInfoForCommandEncoderID___block_invoke(uint64_t result, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *a5 = 1;
  v5 = 3;
  v6 = 2;
  v7 = 1;
  v8 = a2 + 4;
  if ((a2[9] & 0xFFFFFFFELL) == 2)
  {
    v7 = 5;
  }

  else
  {
    v8 = a2;
  }

  if ((a2[9] & 0xFFFFFFFELL) == 2)
  {
    v6 = 6;
    v5 = 7;
  }

  *(*(*(result + 32) + 8) + 48) = *v8;
  *(*(*(result + 32) + 8) + 56) = a2[v7];
  *(*(*(result + 32) + 8) + 64) = a2[v6];
  *(*(*(result + 32) + 8) + 72) = a2[v5];
  return result;
}

- (void)_addRenderPassDescriptorToEncoderMapFromRenderPassDescriptor:(DYMTLRenderPassDescriptor *)descriptor forEncoder:(unint64_t)encoder
{
  v6[0] = encoder;
  v6[2] = v6;
  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,GPUTools::MTL::Utils::DYMTLRenderPassDescriptor>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,GPUTools::MTL::Utils::DYMTLRenderPassDescriptor>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,GPUTools::MTL::Utils::DYMTLRenderPassDescriptor>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,GPUTools::MTL::Utils::DYMTLRenderPassDescriptor>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_commandEncoderDescriptorMap.__table_.__bucket_list_.__ptr_, v6);
  memcpy(v5 + 3, descriptor, 0x63BuLL);
}

- (void)_addRenderPassDescriptorToEncoderMapFromArgumentPointer:(void *)pointer forEncoder:(unint64_t)encoder
{
  v6 = 0;
  v9 = 0;
  do
  {
    v7 = &v8[v6];
    *(v7 + 3) = 0uLL;
    *(v7 + 4) = 0uLL;
    *(v7 + 1) = 0uLL;
    *(v7 + 2) = 0uLL;
    *(v7 + 10) = 0;
    *(v7 + 11) = 1;
    *(v7 + 6) = 0uLL;
    *(v7 + 7) = 0uLL;
    *(v7 + 16) = 0x3FF0000000000000;
    v6 += 144;
    *(v7 + 18) = 0;
    *(v7 + 19) = 0;
  }

  while (v6 != 1152);
  v14 = 0;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v15 = 1;
  v16 = 0u;
  v17 = 0u;
  v18 = 0x3FF0000000000000;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  v25 = 1;
  v27 = 0u;
  v26 = 0u;
  v28 = 0x3FF0000000000000;
  v29 = 0u;
  GPUTools::MTL::Utils::MakeDYMTLRenderPassDescriptor(*pointer, v8, pointer);
  [(DYMTLCommonDebugFunctionPlayer *)self _addRenderPassDescriptorToEncoderMapFromRenderPassDescriptor:v8 forEncoder:encoder];
}

- (void)_trackObjects
{
  v3 = *MEMORY[0x277D0AFA0];
  v21 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v3) + 48, 0);
  _isFunctionCommandEncoderCreation = [(DYMTLCommonDebugFunctionPlayer *)self _isFunctionCommandEncoderCreation];
  if ([(DYMTLCommonDebugFunctionPlayer *)self _isReceiverTypeCommandEncoderRelated]|| _isFunctionCommandEncoderCreation)
  {
    v5 = 48;
    if (_isFunctionCommandEncoderCreation)
    {
      v5 = 24;
    }

    self->_lastEncoderID = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v3) + v5, 0);
    self->_disableWireframe = _isFunctionCommandEncoderCreation;
  }

  v6 = *(&self->super.super.super.super.isa + v3);
  v7 = *v6;
  if (*v6 <= -16247)
  {
    if (v7 <= -16339)
    {
      if (v7 <= -16354)
      {
        if (v7 > -16364)
        {
          if (v7 != -16363)
          {
            if (v7 != -16361)
            {
              if (v7 != -16354)
              {
                return;
              }

LABEL_54:
              v20 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v6 + 6), 0);
              std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(&self->_encoderMap.__table_.__bucket_list_.__ptr_, &v20);
              v18 = 0;
              v17 = v21;
              v19 = 0;
              std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,EncoderInfo>(&self->_encoderMap.__table_.__bucket_list_.__ptr_, &v20, &v20, &v17);
              return;
            }

LABEL_42:
            *(std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_commandBufferMap.__table_.__bucket_list_.__ptr_, &v21) + 32) = 1;
            return;
          }

          std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(&self->_commandBufferMap.__table_.__bucket_list_.__ptr_, &v21);
LABEL_62:
          self->_lastEncoderID = 0;
          return;
        }

        if (v7 != -16383)
        {
          v11 = -16376;
LABEL_59:
          if (v7 != v11)
          {
            return;
          }

          goto LABEL_72;
        }

        goto LABEL_61;
      }

      if (v7 <= -16344)
      {
        if (v7 != -16353)
        {
          if (v7 == -16352)
          {
            goto LABEL_54;
          }

          if (v7 == -16351)
          {
            v20 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v6 + 6), 0);
            std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(&self->_parallelEncoderMap.__table_.__bucket_list_.__ptr_, &v20);
            v17 = v21;
            v18 = v20;
            v19 = 0;
            std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,EncoderInfo>(&self->_parallelEncoderMap.__table_.__bucket_list_.__ptr_, &v20, &v20, &v17);
            [(DYMTLCommonDebugFunctionPlayer *)self _addRenderPassDescriptorToEncoderMapFromArgumentPointer:*(&self->super.super.super._executePlatform + *MEMORY[0x277D0AF68]) forEncoder:v20];
          }

          return;
        }

        goto LABEL_74;
      }

      if ((v7 + 16343) >= 2)
      {
        return;
      }

LABEL_71:
      v20 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v6 + 6), 0);
      std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(&self->_commandBufferMap.__table_.__bucket_list_.__ptr_, &v20);
      *&v17 = v21;
      BYTE8(v17) = 0;
      std::__hash_table<std::__hash_value_type<unsigned long long,CommandBufferInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CommandBufferInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CommandBufferInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CommandBufferInfo>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,CommandBufferInfo>(&self->_commandBufferMap.__table_.__bucket_list_.__ptr_, &v20, &v20, &v17);
      return;
    }

    if (v7 <= -16287)
    {
      if (v7 <= -16317)
      {
        if (v7 != -16338)
        {
          v11 = -16325;
          goto LABEL_59;
        }

LABEL_61:
        std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(&self->_encoderMap.__table_.__bucket_list_.__ptr_, &v21);
        goto LABEL_62;
      }

      if ((v7 + 16316) >= 2)
      {
        if (v7 == -16287)
        {
          std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(&self->_parallelEncoderMap.__table_.__bucket_list_.__ptr_, &v21);
        }

        return;
      }

LABEL_46:
      *&v17 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v6 + 6), 0);
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long &>(&self->_commandQueueSet.__table_.__bucket_list_.__ptr_, &v17, &v17);
      return;
    }

    if (v7 <= -16281)
    {
      if (v7 == -16286)
      {
        v20 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v6 + 6), 0);
        v15 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_parallelEncoderMap.__table_.__bucket_list_.__ptr_, &v21);
        std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(&self->_encoderMap.__table_.__bucket_list_.__ptr_, &v20);
        v17 = v15[3];
        v18 = v20;
        v19 = 0;
        std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,EncoderInfo>(&self->_encoderMap.__table_.__bucket_list_.__ptr_, &v20, &v20, &v17);
        v16 = v21;
        *&v17 = &v20;
        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_encoderToParallelEncoderMap.__table_.__bucket_list_.__ptr_, &v20, &std::piecewise_construct, &v17)[3] = v16;
      }

      else if (v7 == -16285)
      {
        v10 = 1912;
LABEL_73:
        *(std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>((&self->super.super.super.super.isa + v10), &v21) + 48) = 1;
        return;
      }

      return;
    }

    if (v7 == -16280)
    {
      goto LABEL_61;
    }

    v8 = -16279;
LABEL_49:
    if (v7 == v8)
    {
      v12 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_encoderMap.__table_.__bucket_list_.__ptr_, &v21);
      v12[4] = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v3) + 72, 0);
    }

    return;
  }

  if (v7 <= -15890)
  {
    if (v7 > -16171)
    {
      if ((v7 + 16014) < 2)
      {
        goto LABEL_54;
      }

      if (v7 != -16170)
      {
        if (v7 == -15908)
        {
          goto LABEL_42;
        }

        return;
      }
    }

    else
    {
      if (v7 > -16196)
      {
        if (v7 == -16195)
        {
LABEL_74:
          v20 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v6 + 6), 0);
          std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(&self->_encoderMap.__table_.__bucket_list_.__ptr_, &v20);
          v17 = v21;
          v18 = v20;
          v19 = 0;
          std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,EncoderInfo>(&self->_encoderMap.__table_.__bucket_list_.__ptr_, &v20, &v20, &v17);
          [(DYMTLCommonDebugFunctionPlayer *)self _addRenderPassDescriptorToEncoderMapFromArgumentPointer:*(&self->super.super.super._executePlatform + *MEMORY[0x277D0AF68]) forEncoder:v20];
          p_encoderToParallelEncoderMap = &self->_encoderToParallelEncoderMap;
          v14 = &v20;
          goto LABEL_75;
        }

        if (v7 == -16193)
        {
          goto LABEL_61;
        }

        v8 = -16192;
        goto LABEL_49;
      }

      if (v7 != -16246)
      {
        if (v7 != -16238)
        {
          return;
        }

        p_encoderToParallelEncoderMap = &self->_textureToDrawableMap;
        v14 = &v21;
LABEL_75:
        std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(p_encoderToParallelEncoderMap, v14);
        return;
      }
    }

LABEL_72:
    v10 = 1872;
    goto LABEL_73;
  }

  if (v7 > -15790)
  {
    if (v7 <= -15351)
    {
      if (v7 == -15789)
      {
        goto LABEL_72;
      }

      v9 = -15701;
    }

    else
    {
      if (v7 == -15350)
      {
        goto LABEL_46;
      }

      if (v7 == -15343)
      {
        goto LABEL_42;
      }

      v9 = -12544;
    }

    if (v7 != v9)
    {
      return;
    }

    goto LABEL_71;
  }

  if (v7 <= -15871)
  {
    if (v7 != -15889)
    {
      v11 = -15884;
      goto LABEL_59;
    }

    goto LABEL_61;
  }

  if (v7 == -15870)
  {
    goto LABEL_54;
  }

  if (v7 == -15790)
  {
    goto LABEL_61;
  }
}

- (void)_forceAttachmentLoadActionToLoad:(id)load
{
  loadCopy = load;
  texture = [loadCopy texture];
  if (texture)
  {
    loadAction = [loadCopy loadAction];

    if (!loadAction)
    {
      [loadCopy setLoadAction:1];
    }
  }
}

- (void)_forceAttachmentStoreActionToStore:(id)store
{
  storeCopy = store;
  texture = [storeCopy texture];
  if (texture)
  {
    if ([storeCopy storeAction])
    {
      storeAction = [storeCopy storeAction];

      if (storeAction != 4)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    resolveTexture = [storeCopy resolveTexture];
    if (resolveTexture)
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }

    [storeCopy setStoreAction:v6];
  }

LABEL_10:
}

- (void)_updateMemorylessTextures:(id)textures
{
  texturesCopy = textures;
  texture = [texturesCopy texture];
  if ([texture storageMode] == 3)
  {
    v5 = sMemorylessTexturesAndReplacements;
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:texture];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (!v7)
    {
      resolveTexture2 = DYMTLGetAssociatedObject(texture, 0);
      [resolveTexture2 setStorageMode:2];
      device = [(DYMTLFunctionPlayer *)self device];
      v7 = DYMTLNewTexture(device, resolveTexture2);

      if (!v7)
      {
        goto LABEL_15;
      }

      v10 = sMemorylessTexturesAndReplacements;
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:texture];
      [v10 setObject:v7 forKeyedSubscript:v11];
    }

    if (![texturesCopy loadAction])
    {
      [texturesCopy setLoadAction:2];
    }

    [texturesCopy setTexture:v7];
  }

  resolveTexture = [texturesCopy resolveTexture];

  if (!resolveTexture)
  {
    goto LABEL_16;
  }

  resolveTexture2 = [texturesCopy resolveTexture];
  if ([resolveTexture2 storageMode] == 3)
  {
    v13 = sMemorylessTexturesAndReplacements;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:resolveTexture2];
    v15 = [v13 objectForKeyedSubscript:v14];

    if (!v15)
    {
      v16 = DYMTLGetAssociatedObject(resolveTexture2, 0);
      [v16 setStorageMode:2];
      device2 = [(DYMTLFunctionPlayer *)self device];
      v15 = DYMTLNewTexture(device2, v16);

      if (!v15)
      {
LABEL_14:

        goto LABEL_15;
      }

      v18 = sMemorylessTexturesAndReplacements;
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:resolveTexture2];
      [v18 setObject:v15 forKeyedSubscript:v19];
    }

    [texturesCopy setResolveTexture:v15];
    v16 = v15;
    goto LABEL_14;
  }

LABEL_15:

LABEL_16:
}

- (id)_generateDummyPipeline:(id)pipeline
{
  pipelineCopy = pipeline;
  v5 = pipelineCopy;
  if (!pipelineCopy)
  {
    v19 = 0;
    goto LABEL_19;
  }

  v6 = DYMTLGetAssociatedObject(pipelineCopy, 2u);
  if (v6)
  {
    if (!self->_nopDrawVertexFunction)
    {
      device = [(DYMTLFunctionPlayer *)self device];
      v23 = 0;
      v8 = [device newLibraryWithSource:@"#include <metal_stdlib>\n\nusing namespace metal;\n\nstruct TransformMatrices\n{\n    float4 modelview_projection_matrix[4];\n};\n\nstruct VertexOutput\n{\n    float4 pos [[position]];\n    float4 color;\n};\n\nvertex VertexOutput defaultVertexProgram(uint vid [[ vertex_id ]])\n{\n    VertexOutput out;\n\n    out.pos   = float4(0.0 options:0.0 error:{0.0, 1.0);\n    out.color = float4(0.0, 0.0, 0.0, 1.0);\n\n    return out;\n}\n\nfragment float4 defaultFragmentProgram(VertexOutput vo [[ stage_in ]])\n{\n    return float4(vo.color.bgr, 1.0f);\n}\n\nkernel void defaultKernel()\n{\n\n}\n\n", 0, &v23}];
      v9 = v23;

      v10 = [v8 newFunctionWithName:@"defaultVertexProgram"];
      nopDrawVertexFunction = self->_nopDrawVertexFunction;
      self->_nopDrawVertexFunction = v10;

      v12 = [v8 newFunctionWithName:@"defaultFragmentProgram"];
      nopDrawFragFunction = self->_nopDrawFragFunction;
      self->_nopDrawFragFunction = v12;

      v14 = [v8 newFunctionWithName:@"defaultKernel"];
      nopTileFunction = self->_nopTileFunction;
      self->_nopTileFunction = v14;
    }

    v16 = DYMTLGetNullableAssociatedObject(v5, 0);
    v17 = [v16 copy];

    if (v17)
    {
      if (!self->_nopDrawVertexFunction || !self->_nopDrawFragFunction)
      {
        v19 = 0;
LABEL_17:

        goto LABEL_18;
      }

      [v17 setVertexFunction:?];
      [v17 setFragmentFunction:self->_nopDrawFragFunction];
      device2 = [(DYMTLFunctionPlayer *)self device];
      v19 = [device2 newRenderPipelineStateWithDescriptor:v17 error:0];
    }

    else
    {
      v20 = DYMTLGetNullableAssociatedObject(v5, 1u);
      device2 = [v20 copy];

      if (device2 && self->_nopTileFunction)
      {
        [device2 setTileFunction:?];
        device3 = [(DYMTLFunctionPlayer *)self device];
        v19 = [device3 newRenderPipelineStateWithTileDescriptor:device2 options:0 reflection:0 error:0];
      }

      else
      {
        v19 = 0;
      }
    }

    goto LABEL_17;
  }

  v19 = 0;
LABEL_18:

LABEL_19:

  return v19;
}

- (void)_swizzleAttachmentTextureForLoad:(id)load withBuffer:(id)buffer
{
  loadCopy = load;
  bufferCopy = buffer;
  texture = [loadCopy texture];
  v9 = texture;
  if (texture)
  {
    v10 = DYMTLGetAssociatedObject(texture, 0);
    [v10 setRotation:0];
    if (([v10 usage] & 1) == 0)
    {
      [v10 setUsage:{objc_msgSend(v10, "usage") | 5}];
      device = [(DYMTLFunctionPlayer *)self device];
      v12 = DYMTLNewTexture(device, v10);

      if ([loadCopy loadAction] == 1)
      {
        blitCommandEncoder = [bufferCopy blitCommandEncoder];
        slice = [loadCopy slice];
        level = [loadCopy level];
        v20[0] = 0;
        v20[1] = 0;
        v20[2] = [loadCopy depthPlane];
        v19[0] = [v9 width];
        v19[1] = [v9 height];
        v19[2] = 1;
        slice2 = [loadCopy slice];
        level2 = [loadCopy level];
        v18[0] = 0;
        v18[1] = 0;
        v18[2] = [loadCopy depthPlane];
        [blitCommandEncoder copyFromTexture:v9 sourceSlice:slice sourceLevel:level sourceOrigin:v20 sourceSize:v19 toTexture:v12 destinationSlice:slice2 destinationLevel:level2 destinationOrigin:v18];
        [blitCommandEncoder endEncoding];
      }

      [loadCopy setTexture:v12];
      [(DYMTLFunctionPlayer *)self setObject:v12 forKey:v12];
    }
  }
}

- (void)_modifyDescriptorForLayering:(id)layering withBuffer:(id)buffer
{
  layeringCopy = layering;
  bufferCopy = buffer;
  v7 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF98]);
  if ([v7 playbackMode] != 7)
  {
    goto LABEL_23;
  }

  for (i = 0; i != 8; ++i)
  {
    colorAttachments = [layeringCopy colorAttachments];
    v10 = [colorAttachments objectAtIndexedSubscript:i];
    [(DYMTLCommonDebugFunctionPlayer *)self _forceAttachmentLoadActionToLoad:v10];

    colorAttachments2 = [layeringCopy colorAttachments];
    v12 = [colorAttachments2 objectAtIndexedSubscript:i];
    [(DYMTLCommonDebugFunctionPlayer *)self _forceAttachmentStoreActionToStore:v12];

    colorAttachments3 = [layeringCopy colorAttachments];
    v14 = [colorAttachments3 objectAtIndexedSubscript:i];
    if (v14)
    {
      colorAttachments4 = [layeringCopy colorAttachments];
      v16 = [colorAttachments4 objectAtIndexedSubscript:i];
      texture = [v16 texture];

      if (texture)
      {
        colorAttachments5 = [layeringCopy colorAttachments];
        v19 = [colorAttachments5 objectAtIndexedSubscript:i];
        [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:v19];

        colorAttachments6 = [layeringCopy colorAttachments];
        v21 = [colorAttachments6 objectAtIndexedSubscript:i];
        [(DYMTLCommonDebugFunctionPlayer *)self _swizzleAttachmentTextureForLoad:v21 withBuffer:bufferCopy];

        goto LABEL_8;
      }
    }

    else
    {
    }

    colorAttachments6 = [layeringCopy colorAttachments];
    [colorAttachments6 setObject:0 atIndexedSubscript:i];
LABEL_8:
  }

  depthAttachment = [layeringCopy depthAttachment];
  if (depthAttachment)
  {
    stencilAttachment = [layeringCopy stencilAttachment];
    if (stencilAttachment)
    {
      depthAttachment2 = [layeringCopy depthAttachment];
      texture2 = [depthAttachment2 texture];
      stencilAttachment2 = [layeringCopy stencilAttachment];
      texture3 = [stencilAttachment2 texture];

      if (texture2 == texture3)
      {
        depthAttachment3 = [layeringCopy depthAttachment];
        [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:depthAttachment3];

        depthAttachment4 = [layeringCopy depthAttachment];
        [(DYMTLCommonDebugFunctionPlayer *)self _swizzleAttachmentTextureForLoad:depthAttachment4 withBuffer:bufferCopy];

        depthAttachment5 = [layeringCopy depthAttachment];
        texture4 = [depthAttachment5 texture];
        stencilAttachment3 = [layeringCopy stencilAttachment];
        [stencilAttachment3 setTexture:texture4];

        goto LABEL_21;
      }
    }

    else
    {
    }
  }

  depthAttachment6 = [layeringCopy depthAttachment];
  [(DYMTLCommonDebugFunctionPlayer *)self _forceAttachmentLoadActionToLoad:depthAttachment6];

  depthAttachment7 = [layeringCopy depthAttachment];
  [(DYMTLCommonDebugFunctionPlayer *)self _forceAttachmentStoreActionToStore:depthAttachment7];

  depthAttachment8 = [layeringCopy depthAttachment];
  if (depthAttachment8 && ([layeringCopy depthAttachment], v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v36, "texture"), v37 = objc_claimAutoreleasedReturnValue(), v37, v36, depthAttachment8, v37))
  {
    depthAttachment9 = [layeringCopy depthAttachment];
    [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:depthAttachment9];

    depthAttachment10 = [layeringCopy depthAttachment];
    [(DYMTLCommonDebugFunctionPlayer *)self _swizzleAttachmentTextureForLoad:depthAttachment10 withBuffer:bufferCopy];
  }

  else
  {
    [layeringCopy setDepthAttachment:0];
  }

  stencilAttachment4 = [layeringCopy stencilAttachment];
  [(DYMTLCommonDebugFunctionPlayer *)self _forceAttachmentLoadActionToLoad:stencilAttachment4];

  stencilAttachment5 = [layeringCopy stencilAttachment];
  [(DYMTLCommonDebugFunctionPlayer *)self _forceAttachmentStoreActionToStore:stencilAttachment5];

  stencilAttachment6 = [layeringCopy stencilAttachment];
  if (stencilAttachment6 && ([layeringCopy stencilAttachment], v43 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v43, "texture"), v44 = objc_claimAutoreleasedReturnValue(), v44, v43, stencilAttachment6, v44))
  {
    stencilAttachment7 = [layeringCopy stencilAttachment];
    [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:stencilAttachment7];

    depthAttachment5 = [layeringCopy stencilAttachment];
    [(DYMTLCommonDebugFunctionPlayer *)self _swizzleAttachmentTextureForLoad:depthAttachment5 withBuffer:bufferCopy];
LABEL_21:
  }

  else
  {
    [layeringCopy setStencilAttachment:0];
  }

LABEL_23:
}

- (void)_modifyDescriptorForStore:(id)store
{
  storeCopy = store;
  v4 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF98]);
  if ([v4 playbackMode] == 4 || !objc_msgSend(v4, "playbackMode"))
  {
    for (i = 0; i != 8; ++i)
    {
      colorAttachments = [storeCopy colorAttachments];
      v7 = [colorAttachments objectAtIndexedSubscript:i];
      [(DYMTLCommonDebugFunctionPlayer *)self _forceAttachmentStoreActionToStore:v7];

      colorAttachments2 = [storeCopy colorAttachments];
      v9 = [colorAttachments2 objectAtIndexedSubscript:i];
      texture = [v9 texture];

      colorAttachments3 = [storeCopy colorAttachments];
      if (texture)
      {
        v12 = [colorAttachments3 objectAtIndexedSubscript:i];
        [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:v12];
      }

      else
      {
        [colorAttachments3 setObject:0 atIndexedSubscript:i];
      }
    }

    depthAttachment = [storeCopy depthAttachment];
    [(DYMTLCommonDebugFunctionPlayer *)self _forceAttachmentStoreActionToStore:depthAttachment];

    depthAttachment2 = [storeCopy depthAttachment];
    texture2 = [depthAttachment2 texture];

    if (texture2)
    {
      depthAttachment3 = [storeCopy depthAttachment];
      [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:depthAttachment3];
    }

    else
    {
      [storeCopy setDepthAttachment:0];
    }

    stencilAttachment = [storeCopy stencilAttachment];
    [(DYMTLCommonDebugFunctionPlayer *)self _forceAttachmentStoreActionToStore:stencilAttachment];

    stencilAttachment2 = [storeCopy stencilAttachment];
    texture3 = [stencilAttachment2 texture];

    if (texture3)
    {
      stencilAttachment3 = [storeCopy stencilAttachment];
      [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:stencilAttachment3];
    }

    else
    {
      [storeCopy setStencilAttachment:0];
    }
  }
}

- (BOOL)isBlitSamplingSupported
{
  v9.receiver = self;
  v9.super_class = DYMTLCommonDebugFunctionPlayer;
  device = [(DYMTLFunctionPlayer *)&v9 device];
  v3 = device;
  if (device)
  {
    name = [device name];
    lowercaseString = [name lowercaseString];
    v6 = [lowercaseString hasPrefix:@"nvidia"];

    v7 = v6 ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)setupCounterConfigurationAndGetFrameProfilerCounters
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = DYMTLCommonDebugFunctionPlayer;
  commandQueue = [(DYMTLFunctionPlayer *)&v15 commandQueue];
  if (commandQueue)
  {
    if ([(DYMTLCommonDebugFunctionPlayer *)self isBlitSamplingSupported])
    {
      v4 = 41493;
    }

    else
    {
      v4 = 33297;
    }

    [commandQueue setStatLocations:v4];
    [commandQueue availableCounters];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v5 = v12 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if (objc_msgSend_isEqualToString_(*(*(&v11 + 1) + 8 * i), v11))
          {

            goto LABEL_15;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    [(NSMutableArray *)self->_frameCounters removeObject:self->_statVertices];
    [(NSMutableArray *)self->_frameCounters removeObject:self->_statPixels];
LABEL_15:
    v9 = self->_frameCounters;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)enableStatsSampling:(BOOL)sampling
{
  samplingCopy = sampling;
  v7.receiver = self;
  v7.super_class = DYMTLCommonDebugFunctionPlayer;
  commandQueue = [(DYMTLFunctionPlayer *)&v7 commandQueue];
  v6 = commandQueue;
  if (commandQueue)
  {
    [commandQueue setStatEnabled:samplingCopy];
    if (samplingCopy)
    {
      [v6 setStatOptions:1];
      if (self->_isAGXDevice)
      {
        [v6 setStatOptions:0x10000000];
        [v6 setGPUPriority:0];
      }
    }
  }
}

- (BOOL)isCounterAvailable:(id)available
{
  v18 = *MEMORY[0x277D85DE8];
  availableCopy = available;
  v16.receiver = self;
  v16.super_class = DYMTLCommonDebugFunctionPlayer;
  commandQueue = [(DYMTLFunctionPlayer *)&v16 commandQueue];
  v6 = commandQueue;
  if (commandQueue)
  {
    [commandQueue availableCounters];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v7 = v13 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v8)
    {
      v9 = *v13;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v7);
          }

          if (objc_msgSend_isEqualToString_(availableCopy, v12))
          {
            LOBYTE(v8) = 1;
            goto LABEL_12;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)setupAllStatLocationsWithBlitOption:(BOOL)option
{
  optionCopy = option;
  v7.receiver = self;
  v7.super_class = DYMTLCommonDebugFunctionPlayer;
  commandQueue = [(DYMTLFunctionPlayer *)&v7 commandQueue];
  if (commandQueue)
  {
    if (self->_isAGXDevice)
    {
      v6 = 63;
    }

    else
    {
      v6 = 33297;
    }

    if (!self->_isAGXDevice && optionCopy)
    {
      if ([(DYMTLCommonDebugFunctionPlayer *)self isBlitSamplingSupported])
      {
        v6 = 41493;
      }

      else
      {
        v6 = 33297;
      }
    }

    [commandQueue setStatLocations:v6];
  }
}

- (void)setupProfilingForCounterLists
{
  if (self->_isAGXDevice)
  {
    v10.receiver = self;
    v10.super_class = DYMTLCommonDebugFunctionPlayer;
    commandQueue = [(DYMTLFunctionPlayer *)&v10 commandQueue];
    if (commandQueue)
    {
      v4 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF98]);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __63__DYMTLCommonDebugFunctionPlayer_setupProfilingForCounterLists__block_invoke_2;
      v8[3] = &unk_27930F870;
      v5 = &v9;
      v8[4] = self;
      v9 = v4;
      v6 = v4;
      [commandQueue addPerfSampleHandler:v8];
LABEL_6:
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = DYMTLCommonDebugFunctionPlayer;
    commandQueue = [(DYMTLFunctionPlayer *)&v13 commandQueue];
    if (commandQueue)
    {
      v7 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF98]);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __63__DYMTLCommonDebugFunctionPlayer_setupProfilingForCounterLists__block_invoke;
      v11[3] = &unk_27930F870;
      v5 = &v12;
      v11[4] = self;
      v12 = v7;
      v6 = v7;
      [commandQueue addPerfSampleHandler:v11];
      goto LABEL_6;
    }
  }
}

void __63__DYMTLCommonDebugFunctionPlayer_setupProfilingForCounterLists__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v55 = a2;
  v7 = a3;
  if (v7 && a4)
  {
    v54 = v55;
    v57 = v7;
    v8 = [v54 getListIndex];
    v9 = [*(*(a1 + 32) + 5904) objectAtIndexedSubscript:v8];
    v62 = [v9 count];

    if ([v7 length] < (8 * v62))
    {
LABEL_43:

      goto LABEL_44;
    }

    v60 = v8;
    v56 = a4;
    v10 = [v7 bytes];
    v11 = *(a1 + 32);
    v12 = *(v10 + 8 * *(v11 + 3976));
    if (*(v11 + 4056) == v54)
    {
      v13 = 4096;
      v14 = v62;
      if (*(v11 + 4064) == v12 && v62 == (*(v11 + 4104) - *(v11 + 4096)) >> 3)
      {
LABEL_12:
        v21 = 0;
        v22 = 0;
        *(v11 + 4056) = v54;
        v64 = 0;
        v65 = 0;
        v58 = 8 * v14;
        v66 = 0;
        v23 = v56;
        v24 = v60;
        do
        {
          v25 = v13;
          v26 = [v7 bytes];
          v27 = v62;
          v28 = v26 + 8 * v22 * v62;
          v29 = *(a1 + 32);
          v30 = *(v28 + 8 * *(v29 + 3976));
          v31 = *(v28 + 8 * *(v29 + 3980));
          if (*(v29 + 4080) != v30 || *(v29 + 4088) != v31)
          {
            ++*(v29 + 4072);
            v33 = (*(a1 + 32) + 4080);
            *v33 = v30;
            v33[1] = v31;
          }

          v13 = v25;
          if (v62)
          {
            v59 = v22;
            v34 = 0;
            v35 = v26 + v21;
            v61 = v26 + v21;
            do
            {
              v36 = *(a1 + 32);
              v37 = *(v36 + 3984);
              if (*(v28 + 8 * v37))
              {
                v38 = *(v35 + 8 * v34);
                if ((*(*(v36 + 3912) + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v34))
                {
                  v39 = *(*(v36 + v13) + 8 * v34);
                  v40 = v38 >= v39;
                  v41 = v38 - v39;
                  if (v40)
                  {
                    v38 = v41;
                  }

                  else
                  {
                    v38 = 0;
                  }
                }

                v42 = v34 + *(*(v36 + 1808) + 8 * v24);
                v43 = v65;
                if (v65 >= v66)
                {
                  v63 = v13;
                  v45 = a1;
                  v46 = v64;
                  v47 = v65 - v64;
                  v48 = 0xAAAAAAAAAAAAAAABLL * ((v65 - v64) >> 4);
                  v49 = v48 + 1;
                  if (v48 + 1 > 0x555555555555555)
                  {
                    std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
                  }

                  v50 = v28;
                  if (0x5555555555555556 * ((v66 - v64) >> 4) > v49)
                  {
                    v49 = 0x5555555555555556 * ((v66 - v64) >> 4);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v66 - v64) >> 4) >= 0x2AAAAAAAAAAAAAALL)
                  {
                    v49 = 0x555555555555555;
                  }

                  if (v49)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>(&v64, v49);
                  }

                  v51 = (16 * ((v65 - v64) >> 4));
                  *v51 = *(v36 + 4064);
                  v51[1] = *(v36 + 4072);
                  v51[2] = *(v28 + 8 * v37);
                  v51[3] = v42;
                  v51[4] = v38;
                  v51[5] = 0;
                  v44 = 48 * v48 + 48;
                  v52 = (48 * v48 - v47);
                  memcpy(v52, v46, v47);
                  v53 = v64;
                  v64 = v52;
                  v65 = v44;
                  v66 = 0;
                  if (v53)
                  {
                    operator delete(v53);
                  }

                  a1 = v45;
                  v24 = v60;
                  v35 = v61;
                  v27 = v62;
                  v13 = v63;
                  v28 = v50;
                }

                else
                {
                  *v65 = *(v36 + 4064);
                  v43[1] = *(v36 + 4072);
                  v43[2] = *(v28 + 8 * v37);
                  v43[3] = v42;
                  v43[4] = v38;
                  v43[5] = 0;
                  v44 = (v43 + 6);
                }

                v65 = v44;
                v36 = *(a1 + 32);
              }

              *(*(v36 + 4096) + 8 * v34) = *(v35 + 8 * v34);
              ++v34;
            }

            while (v27 != v34);
            v23 = v56;
            v7 = v57;
            v22 = v59;
          }

          ++v22;
          v21 += v58;
        }

        while (v22 != v23);
        [*(a1 + 40) addCommandBufferFrameProfile:&v64];
        if (v64)
        {
          v65 = v64;
          operator delete(v64);
        }

        goto LABEL_43;
      }
    }

    else
    {
      v14 = v62;
    }

    std::vector<unsigned long long>::resize((v11 + 4096), v14);
    v15 = *(a1 + 32);
    v16 = *(v15 + 4104) - *(v15 + 4096);
    if (v16 >= 1)
    {
      bzero(*(v15 + 4096), v16);
      v15 = *(a1 + 32);
    }

    *(v15 + 4064) = v12;
    *(*(a1 + 32) + 4072) = 0;
    v17 = *(a1 + 32);
    v18 = [v7 bytes];
    v19 = *(a1 + 32);
    v20 = *(v18 + 8 * *(v19 + 3980));
    v19 += 4080;
    *v19 = *(v17 + 4064);
    *(v19 + 8) = v20;
    v11 = *(a1 + 32);
    v14 = v62;
    v13 = 4096;
    goto LABEL_12;
  }

LABEL_44:
}

void __63__DYMTLCommonDebugFunctionPlayer_setupProfilingForCounterLists__block_invoke_2(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  v6 = a2;
  v68 = a3;
  v7 = v6;
  v72 = [v7 getListIndex];
  v8 = [*(*(a1 + 32) + 5904) objectAtIndexedSubscript:v72];
  v73 = [v8 count];

  v9 = *(a1 + 32);
  if (v9[507] != v7 || v73 != (v9[513] - v9[512]) >> 3)
  {
    std::vector<unsigned long long>::resize(v9 + 512, v73);
    v9 = *(a1 + 32);
    v10 = v9[512];
    v11 = v9[513] - v10;
    if (v11 >= 1)
    {
      bzero(v10, v11);
      v9 = *(a1 + 32);
    }
  }

  v66 = v7;
  v9[507] = v7;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v78 = 0u;
  v79 = 0u;
  v80 = 1065353216;
  v12 = 4 * ([*(a1 + 40) playbackMode] != 9);
  v71 = a1;
  if (v12 < a4)
  {
    v70 = 8 * v12 * v73;
    do
    {
      v13 = [v68 bytes];
      v69 = v12;
      v14 = v13 + 8 * v12 * v73;
      v15 = *(a1 + 32);
      if (*(v14 + 8 * *(v15 + 3976)) != -1)
      {
        v16 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v78, (v14 + 8 * *(v15 + 3980)));
        v17 = v72;
        v18 = v73;
        if (v16)
        {
          v74 = v16[3];
          if (v73)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v19 = *(&v79 + 1);
          __src = (v14 + 8 * *(*(a1 + 32) + 3980));
          v74 = 0;
          std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v78, __src, &std::piecewise_construct, &__src)[3] = v19;
          v17 = v72;
          v18 = v73;
          if (v73)
          {
LABEL_12:
            v20 = 0;
            v21 = v13 + v70;
            do
            {
              v22 = *(a1 + 32);
              if (*(v14 + 8 * *(v22 + 3992)) == 2)
              {
                v23 = *(v22 + 3912);
                v24 = *(v21 + 8 * v20);
                if ((*(v23 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v20))
                {
                  v24 -= *(*(v22 + 4096) + 8 * v20);
                }

                v25 = *(v22 + 3996);
                v26 = *(v14 + 8 * v25);
                if ((*(v23 + ((v25 >> 3) & 0x1FFFFFF8)) >> v25))
                {
                  v26 -= *(*(v22 + 4096) + 8 * v25);
                }

                v27 = *(v22 + 3976);
                v28 = *(v22 + 3988);
                v29 = v20 + *(*(v22 + 1808) + 8 * v17);
                v30 = v82;
                if (v82 >= v83)
                {
                  v32 = v81;
                  v33 = v82 - v81;
                  v34 = 0xAAAAAAAAAAAAAAABLL * ((v82 - v81) >> 4);
                  v35 = v34 + 1;
                  if (v34 + 1 > 0x555555555555555)
                  {
                    std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
                  }

                  if (0x5555555555555556 * ((v83 - v81) >> 4) > v35)
                  {
                    v35 = 0x5555555555555556 * ((v83 - v81) >> 4);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v83 - v81) >> 4) >= 0x2AAAAAAAAAAAAAALL)
                  {
                    v35 = 0x555555555555555;
                  }

                  if (v35)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>(&v81, v35);
                  }

                  v36 = (16 * ((v82 - v81) >> 4));
                  *v36 = *(v14 + 8 * v27);
                  v36[1] = v74;
                  v36[2] = *(v14 + 8 * v28);
                  v36[3] = v29;
                  v36[4] = v24;
                  v36[5] = v26;
                  v31 = (48 * v34 + 48);
                  v37 = (48 * v34 - v33);
                  memcpy(v37, v32, v33);
                  v38 = v81;
                  v81 = v37;
                  v82 = v31;
                  v83 = 0;
                  if (v38)
                  {
                    operator delete(v38);
                  }

                  a1 = v71;
                  v17 = v72;
                  v18 = v73;
                }

                else
                {
                  *v82 = *(v14 + 8 * v27);
                  *(v30 + 1) = v74;
                  *(v30 + 2) = *(v14 + 8 * v28);
                  *(v30 + 3) = v29;
                  *(v30 + 4) = v24;
                  *(v30 + 5) = v26;
                  v31 = (v30 + 48);
                }

                v82 = v31;
              }

              else
              {
                *(*(v22 + 4096) + 8 * v20) = *(v21 + 8 * v20);
              }

              ++v20;
            }

            while (v18 != v20);
          }
        }
      }

      v12 = v69 + 1;
      v70 += 8 * v73;
    }

    while (v69 + 1 != a4);
  }

  v39 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v82 - v81) >> 4));
  if (v82 == v81)
  {
    v40 = 0;
  }

  else
  {
    v40 = v39;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,false>(v81, v82, &__src, v40, 1);
  __src = 0;
  v76 = 0;
  v77 = 0;
  std::vector<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>::reserve(&__src, 2 * v73 * *(&v79 + 1));
  v41 = v81;
  v42 = v82;
  v43 = v72;
  if (v81 != v82)
  {
    v44 = 0;
    do
    {
      if (v44 && (v45 = *(v44 + 3), v45 == *(v41 + 3)) && *(v44 + 2) == *(v41 + 2) && ((v47 = v44, v46 = *v44, *(v47 + 1) == *(v41 + 1)) ? (v48 = v46 == *v41) : (v48 = 0), v48))
      {
        v62 = *(a1 + 32);
        v63 = v45 - *(*(v62 + 1808) + 8 * v43);
        if (v63 != *(v62 + 3976) && v63 != *(v62 + 3980) && v63 != *(v62 + 3984) && v63 != *(v62 + 3988) && v63 != *(v62 + 3992))
        {
          v64 = v76;
          v65 = *(v76 - 1);
          *(v76 - 2) += *(v41 + 4);
          *(v64 - 1) = v65 + *(v41 + 5);
        }
      }

      else
      {
        v49 = v76;
        if (v76 >= v77)
        {
          v53 = __src;
          v54 = v76 - __src;
          v55 = 0xAAAAAAAAAAAAAAABLL * ((v76 - __src) >> 4);
          v56 = v55 + 1;
          if (v55 + 1 > 0x555555555555555)
          {
            std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v77 - __src) >> 4) > v56)
          {
            v56 = 0x5555555555555556 * ((v77 - __src) >> 4);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v77 - __src) >> 4) >= 0x2AAAAAAAAAAAAAALL)
          {
            v56 = 0x555555555555555;
          }

          if (v56)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>(&__src, v56);
          }

          v57 = (16 * ((v76 - __src) >> 4));
          v58 = *v41;
          v59 = *(v41 + 2);
          v57[1] = *(v41 + 1);
          v57[2] = v59;
          *v57 = v58;
          v52 = 48 * v55 + 48;
          v60 = v57 - v54;
          memcpy(v57 - v54, v53, v54);
          v61 = __src;
          __src = v60;
          v76 = v52;
          v77 = 0;
          if (v61)
          {
            operator delete(v61);
          }

          a1 = v71;
          v43 = v72;
        }

        else
        {
          v50 = *v41;
          v51 = *(v41 + 2);
          *(v76 + 1) = *(v41 + 1);
          v49[2] = v51;
          *v49 = v50;
          v52 = (v49 + 3);
        }

        v76 = v52;
      }

      v44 = v41;
      v41 += 48;
    }

    while (v41 != v42);
  }

  [*(a1 + 40) addCommandBufferFrameProfile:&__src];
  if (__src)
  {
    v76 = __src;
    operator delete(__src);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,BOOL>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,BOOL>>>::~__hash_table(&v78);
  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }
}

- (void)setupFrameTimeProfiling
{
  v8.receiver = self;
  v8.super_class = DYMTLCommonDebugFunctionPlayer;
  commandQueue = [(DYMTLFunctionPlayer *)&v8 commandQueue];
  if (commandQueue)
  {
    v4 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF98]);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __57__DYMTLCommonDebugFunctionPlayer_setupFrameTimeProfiling__block_invoke;
    v6[3] = &unk_27930F898;
    v7 = v4;
    v5 = v4;
    [commandQueue addPerfSampleHandler:v6];
  }
}

void __57__DYMTLCommonDebugFunctionPlayer_setupFrameTimeProfiling__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 label];
  isEqualToString = objc_msgSend_isEqualToString_(v6);

  if ((isEqualToString & 1) == 0)
  {
    memset(__p, 0, sizeof(__p));
    [v4 GPUStartTime];
    [v4 GPUEndTime];
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>(__p, 1uLL);
  }
}

- (BOOL)setupProfilingForListAtIndex:(unint64_t)index
{
  v43 = *MEMORY[0x277D85DE8];
  v41.receiver = self;
  v41.super_class = DYMTLCommonDebugFunctionPlayer;
  commandQueue = [(DYMTLFunctionPlayer *)&v41 commandQueue];
  if (!commandQueue || (-[NSMutableArray objectAtIndexedSubscript:](self->_counterListsPerPass, "objectAtIndexedSubscript:", index), v5 = objc_claimAutoreleasedReturnValue(), v6 = [commandQueue requestCounters:v5 withIndex:index], v5, v6))
  {
    v7 = 0;
    goto LABEL_40;
  }

  counterInfos = self->_counterInfos;
  if (!counterInfos)
  {
    counterInfo = [commandQueue counterInfo];
    v10 = self->_counterInfos;
    self->_counterInfos = counterInfo;

    counterInfos = self->_counterInfos;
  }

  if ([(NSDictionary *)counterInfos count])
  {
    std::vector<BOOL>::resize(&self->_isDeltaCounter, [(NSDictionary *)self->_counterInfos count], 0);
  }

  if (self->_isAGXDevice)
  {
    self->_nSecIndex = -1;
    v11 = 7;
  }

  else
  {
    v11 = 3;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = [(NSMutableArray *)self->_counterListsPerPass objectAtIndexedSubscript:index];
  v13 = [v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (!v13)
  {
    v7 = 1;
    goto LABEL_39;
  }

  obj = v12;
  v14 = 0;
  v15 = 0;
  v16 = *v38;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v38 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = [(NSDictionary *)self->_counterInfos objectForKeyedSubscript:*(*(&v37 + 1) + 8 * i)];
      v19 = [v18 objectForKeyedSubscript:@"type"];

      if (!v19)
      {
        v7 = 0;
        goto LABEL_37;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        unsignedIntegerValue = [v19 unsignedIntegerValue];
        begin = self->_isDeltaCounter.__begin_;
        v22 = v14 >> 6;
        v23 = 1 << v14;
        if (unsignedIntegerValue == 1)
        {
LABEL_19:
          v24 = begin[v22] | v23;
LABEL_23:
          begin[v22] = v24;
          goto LABEL_24;
        }

LABEL_22:
        v24 = begin[v22] & ~v23;
        goto LABEL_23;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        isEqualToString = objc_msgSend_isEqualToString_(v19);
        begin = self->_isDeltaCounter.__begin_;
        v22 = v14 >> 6;
        v23 = 1 << v14;
        if (isEqualToString)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      }

LABEL_24:
      if (v15 < v11)
      {
        v26 = objc_msgSend_isEqualToString_(@"MTLStatCommandBufferIndex");
        v27 = &OBJC_IVAR___DYMTLCommonDebugFunctionPlayer__commandBufferIndex;
        if (v26 & 1) != 0 || (v28 = objc_msgSend_isEqualToString_(@"MTLStatEncoderIndex"), v27 = &OBJC_IVAR___DYMTLCommonDebugFunctionPlayer__encoderIndex, (v28) || (v29 = objc_msgSend_isEqualToString_(@"MTLStatCommandIndex"), v27 = &OBJC_IVAR___DYMTLCommonDebugFunctionPlayer__drawIndex, (v29) || (v30 = objc_msgSend_isEqualToString_(@"MTLStatDataMaster"), v27 = &OBJC_IVAR___DYMTLCommonDebugFunctionPlayer__datamasterIndex, (v30) || (v31 = objc_msgSend_isEqualToString_(@"MTLStatSampleLocation"), v27 = &OBJC_IVAR___DYMTLCommonDebugFunctionPlayer__sampleLocationIndex, (v31) || (v32 = objc_msgSend_isEqualToString_(@"MTLStatTotalGPUCycles"), v27 = &OBJC_IVAR___DYMTLCommonDebugFunctionPlayer__gpuCyclesIndex, (v32) || (v33 = objc_msgSend_isEqualToString_(@"MTLStat_nSec"), v27 = &OBJC_IVAR___DYMTLCommonDebugFunctionPlayer__nSecIndex, v33))
        {
          *(&self->super.super.super.super.isa + *v27) = v14;
          ++v15;
        }
      }

      ++v14;
    }

    v13 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

  v7 = 1;
LABEL_37:
  v12 = obj;
LABEL_39:

LABEL_40:
  return v7;
}

- (id)counterInfo:(id)info
{
  v48 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v41 = infoCopy;
  v40 = objc_opt_new();
  v46.receiver = self;
  v46.super_class = DYMTLCommonDebugFunctionPlayer;
  commandQueue = [(DYMTLFunctionPlayer *)&v46 commandQueue];
  v6 = commandQueue;
  if (commandQueue)
  {
    v39 = commandQueue;
    isStatEnabled = [commandQueue isStatEnabled];
    if ((isStatEnabled & 1) == 0)
    {
      [v6 setStatEnabled:1];
    }

    if (infoCopy)
    {
      v7 = infoCopy;
      if (self->_isAGXDevice)
      {
        [MEMORY[0x277CBEB18] arrayWithObjects:{@"MTLStatCommandBufferIndex", @"MTLStatEncoderIndex", @"MTLStatCommandIndex", @"MTLStatDataMaster", @"MTLStatSampleLocation", @"MTLStatTotalGPUCycles", @"MTLStat_nSec", 0}];
      }

      else
      {
        [MEMORY[0x277CBEB18] arrayWithObjects:{@"MTLStatCommandBufferIndex", @"MTLStatEncoderIndex", @"MTLStatCommandIndex", @"MTLStat_nSec", 0}];
      }
      v9 = ;
      v10 = [MEMORY[0x277CBEB98] setWithArray:v9];
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v11 = v7;
      v12 = [v11 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v12)
      {
        v13 = *v43;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v43 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v42 + 1) + 8 * i);
            if (([v10 containsObject:v15] & 1) == 0)
            {
              [v9 addObject:v15];
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v12);
      }

      availableCounters = v9;
      v6 = v39;
    }

    else
    {
      availableCounters = [v6 availableCounters];
    }

    v16 = [v6 subdivideCounterList:availableCounters];
    v17 = [v16 mutableCopy];
    counterListsPerPass = self->_counterListsPerPass;
    self->_counterListsPerPass = v17;

    v19 = [(NSMutableArray *)self->_counterListsPerPass count];
    p_baseCounterIndexForList = &self->_baseCounterIndexForList;
    self->_baseCounterIndexForList.__end_ = self->_baseCounterIndexForList.__begin_;
    if (v19)
    {
      v21 = 0;
      v22 = 0;
      do
      {
        end = self->_baseCounterIndexForList.__end_;
        cap = self->_baseCounterIndexForList.__cap_;
        if (end >= cap)
        {
          begin = p_baseCounterIndexForList->__begin_;
          v27 = end - p_baseCounterIndexForList->__begin_;
          v28 = v27 >> 3;
          v29 = (v27 >> 3) + 1;
          if (v29 >> 61)
          {
            std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
          }

          v30 = cap - begin;
          if (v30 >> 2 > v29)
          {
            v29 = v30 >> 2;
          }

          v31 = v30 >= 0x7FFFFFFFFFFFFFF8;
          v32 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v31)
          {
            v32 = v29;
          }

          if (v32)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(&self->_baseCounterIndexForList, v32);
          }

          *(8 * v28) = v22;
          v25 = (8 * v28 + 8);
          memcpy(0, begin, v27);
          v33 = p_baseCounterIndexForList->__begin_;
          p_baseCounterIndexForList->__begin_ = 0;
          self->_baseCounterIndexForList.__end_ = v25;
          self->_baseCounterIndexForList.__cap_ = 0;
          if (v33)
          {
            operator delete(v33);
          }

          infoCopy = v41;
        }

        else
        {
          *end = v22;
          v25 = end + 1;
        }

        self->_baseCounterIndexForList.__end_ = v25;
        v34 = [(NSMutableArray *)self->_counterListsPerPass objectAtIndexedSubscript:v21];
        v35 = [v34 count];

        v22 += v35;
        ++v21;
      }

      while (v19 != v21);
    }

    [v40 setObject:self->_counterListsPerPass forKeyedSubscript:*MEMORY[0x277D0B0C8]];
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
    [v40 setObject:v36 forKeyedSubscript:*MEMORY[0x277D0B398]];

    [v40 setObject:availableCounters forKeyedSubscript:*MEMORY[0x277D0B0D0]];
    if ((isStatEnabled & 1) == 0)
    {
      [v39 setStatEnabled:0];
    }

    v6 = v39;
  }

  return v40;
}

- (void)sampleEncoderCounters
{
  v5.receiver = self;
  v5.super_class = DYMTLCommonDebugFunctionPlayer;
  commandQueue = [(DYMTLFunctionPlayer *)&v5 commandQueue];
  if (commandQueue)
  {
    if (self->_isAGXDevice)
    {
      v4 = 63;
    }

    else if ([(DYMTLCommonDebugFunctionPlayer *)self isBlitSamplingSupported])
    {
      v4 = 63;
    }

    else
    {
      v4 = 51;
    }

    [commandQueue setStatLocations:v4];
  }
}

- (void)sampleSplitEncoderCounters
{
  v4.receiver = self;
  v4.super_class = DYMTLCommonDebugFunctionPlayer;
  commandQueue = [(DYMTLFunctionPlayer *)&v4 commandQueue];
  v3 = commandQueue;
  if (commandQueue)
  {
    [commandQueue setStatLocations:12];
  }
}

- (void)setStatLocations:(unint64_t)locations
{
  v6.receiver = self;
  v6.super_class = DYMTLCommonDebugFunctionPlayer;
  commandQueue = [(DYMTLFunctionPlayer *)&v6 commandQueue];
  v5 = commandQueue;
  if (commandQueue)
  {
    [commandQueue setStatLocations:locations];
  }
}

- (unint64_t)getStatLocations
{
  v6.receiver = self;
  v6.super_class = DYMTLCommonDebugFunctionPlayer;
  commandQueue = [(DYMTLFunctionPlayer *)&v6 commandQueue];
  v3 = commandQueue;
  if (commandQueue)
  {
    getStatLocations = [commandQueue getStatLocations];
  }

  else
  {
    getStatLocations = 0;
  }

  return getStatLocations;
}

- (void)stopFrameProfiling
{
  v5.receiver = self;
  v5.super_class = DYMTLCommonDebugFunctionPlayer;
  commandQueue = [(DYMTLFunctionPlayer *)&v5 commandQueue];
  v4 = commandQueue;
  if (commandQueue)
  {
    [commandQueue setStatEnabled:0];
    if (self->_isAGXDevice)
    {
      [v4 setGPUPriority:1];
    }
  }
}

- (id)derivedCounterData
{
  v15.receiver = self;
  v15.super_class = DYMTLCommonDebugFunctionPlayer;
  device = [(DYMTLFunctionPlayer *)&v15 device];
  if (device)
  {
    v3 = [objc_alloc(MEMORY[0x277D25718]) initWithMTLDevice:device];
    v4 = objc_opt_new();
    counterDictionary = [v3 counterDictionary];
    allKeys = [counterDictionary allKeys];
    v7 = [allKeys count];

    if (v7)
    {
      counterDictionary2 = [v3 counterDictionary];
      [v4 setObject:counterDictionary2 forKeyedSubscript:*MEMORY[0x277D0B138]];

      derivedCounterScript = [v3 derivedCounterScript];
      [v4 setObject:derivedCounterScript forKeyedSubscript:*MEMORY[0x277D0B140]];

      analysisScript = [v3 analysisScript];
      [v4 setObject:analysisScript forKeyedSubscript:*MEMORY[0x277D0B110]];

      configurationVariables = [v3 configurationVariables];
      [v4 setObject:configurationVariables forKeyedSubscript:*MEMORY[0x277D0B120]];

      metalPluginName = [v3 metalPluginName];

      if (metalPluginName)
      {
        metalPluginName2 = [v3 metalPluginName];
        [v4 setObject:metalPluginName2 forKeyedSubscript:@"MetalPluginName"];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setupProfileInfo:(id)info
{
  infoCopy = info;
  objc_storeStrong(&self->_profileInfo, info);
  profileInfo = self->_profileInfo;
  if (profileInfo)
  {
    v6 = [(NSDictionary *)profileInfo objectForKeyedSubscript:@"activePerEncoderDrawCallCount"];
    splitEncoderCommandCount = self->_splitEncoderCommandCount;
    self->_splitEncoderCommandCount = v6;
  }
}

- (void)_updateRemainingCommandsForEncoder
{
  if (self->_splitEncoderCommandCount)
  {
    currentEncoderIndex = [(DYMTLCommonDebugFunctionPlayer *)self currentEncoderIndex];
    if ([(NSArray *)self->_splitEncoderCommandCount count]> currentEncoderIndex)
    {
      v4 = [(NSArray *)self->_splitEncoderCommandCount objectAtIndexedSubscript:[(DYMTLCommonDebugFunctionPlayer *)self currentEncoderIndex]];
      if (v4)
      {
        v5 = v4;
        self->_nRemainingCommandsForCurrentEncoder = [v4 unsignedIntValue];
        v4 = v5;
      }
    }
  }
}

- (unint64_t)_executeIndirectCommandBufferUpToSubIndex:(unint64_t)index outBuffer:(id *)buffer outDataPointer:(const char *)pointer
{
  v10 = *MEMORY[0x277D0AFA0];
  v11 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v10) + 48, 0);
  v12 = [(DYMTLFunctionPlayer *)self objectForKey:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v10) + 72, 0)];
  v13 = [v12 size];
  if (v13 - 1 >= index)
  {
    indexCopy = index;
  }

  else
  {
    indexCopy = v13 - 1;
  }

  [(DYFunctionPlayer *)self processArguments];
  v15 = 0;
  v16 = *(&self->super.super.super.super.isa + v10);
  v17 = *v16;
  if (v17 <= -15963)
  {
    if (v17 != -15964)
    {
      v18 = -15963;
      goto LABEL_9;
    }

LABEL_11:
    v15 = **(&self->super.super.super._executeGraphics + *MEMORY[0x277D0AF68]);
    v5 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v16 + 24), 0);
    GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v10) + 96, 1uLL);
    v17 = **(&self->super.super.super.super.isa + v10);
    goto LABEL_12;
  }

  if (v17 == -15962)
  {
    goto LABEL_11;
  }

  v18 = -15961;
LABEL_9:
  if (v17 == v18)
  {
    v19 = self + *MEMORY[0x277D0AF68];
    v15 = **(v19 + 4);
    v5 = ***(v19 + 5);
  }

LABEL_12:
  if (GPUTools::MTL::IsFuncEnumIndirectExecuteDrawCall(v17))
  {
    v20 = [(DYMTLFunctionPlayer *)self objectForKey:v11];
    v21 = v20;
    if (indexCopy > v5)
    {
      [v20 executeCommandsInBuffer:v12 withRange:{v5, indexCopy - v5}];
    }

    indirectCommandManager = [(DYMTLFunctionPlayer *)self indirectCommandManager];
    v23 = [indirectCommandManager setupRenderCommandEncoder:v21 withData:v15 atIndex:indexCopy forIndirectCommandBuffer:v12];
  }

  else
  {
    if (!GPUTools::MTL::IsFuncEnumIndirectExecuteComputeCall(**(&self->super.super.super.super.isa + v10)))
    {
      v25 = 0;
      goto LABEL_22;
    }

    v24 = [(DYMTLFunctionPlayer *)self objectForKey:v11];
    v21 = v24;
    if (indexCopy > v5)
    {
      [v24 executeCommandsInBuffer:v12 withRange:{v5, indexCopy - v5}];
    }

    indirectCommandManager = [(DYMTLFunctionPlayer *)self indirectCommandManager];
    v23 = [indirectCommandManager setupComputeCommandEncoder:v21 withData:v15 atIndex:indexCopy forIndirectCommandBuffer:v12];
  }

  v25 = v23;

LABEL_22:
  v26 = v12;
  *buffer = v12;
  *pointer = v15;

  return v25;
}

- (id).cxx_construct
{
  *(self + 105) = 0u;
  *(self + 106) = 0u;
  *(self + 428) = 1065353216;
  *(self + 1720) = 0u;
  *(self + 1736) = 0u;
  *(self + 438) = 1065353216;
  *(self + 110) = 0u;
  *(self + 111) = 0u;
  *(self + 448) = 1065353216;
  *(self + 227) = 0;
  *(self + 228) = 0;
  *(self + 226) = 0;
  *(self + 1832) = 0u;
  *(self + 1848) = 0u;
  *(self + 466) = 1065353216;
  *(self + 117) = 0u;
  *(self + 118) = 0u;
  *(self + 476) = 1065353216;
  *(self + 1912) = 0u;
  *(self + 1928) = 0u;
  *(self + 486) = 1065353216;
  *(self + 122) = 0u;
  *(self + 123) = 0u;
  *(self + 496) = 1065353216;
  *(self + 510) = 1065353216;
  *(self + 2008) = 0u;
  *(self + 2024) = 0u;
  *(self + 261) = 0;
  v2 = self + 2224;
  v3 = 1152;
  do
  {
    *(v2 - 6) = 0uLL;
    *(v2 - 5) = 0uLL;
    *(v2 - 8) = 0uLL;
    *(v2 - 7) = 0uLL;
    *(v2 - 8) = 0;
    *(v2 - 7) = 1;
    *(v2 - 3) = 0uLL;
    *(v2 - 2) = 0uLL;
    *(v2 - 2) = 0x3FF0000000000000;
    *v2 = 0;
    v2[1] = 0;
    v2 += 18;
    v3 -= 144;
  }

  while (v3);
  *(self + 414) = 0;
  *(self + 206) = 0u;
  *(self + 205) = 0u;
  *(self + 204) = 0u;
  *(self + 203) = 0u;
  *(self + 415) = 1;
  *(self + 208) = 0u;
  *(self + 209) = 0u;
  *(self + 420) = 0x3FF0000000000000;
  *(self + 211) = 0u;
  *(self + 212) = 0u;
  *(self + 213) = 0u;
  *(self + 214) = 0u;
  *(self + 215) = 0u;
  *(self + 432) = 0;
  *(self + 433) = 1;
  *(self + 218) = 0u;
  *(self + 217) = 0u;
  *(self + 438) = 0x3FF0000000000000;
  *(self + 220) = 0u;
  *(self + 3720) = 0u;
  *(self + 3736) = 0u;
  *(self + 938) = 1065353216;
  *(self + 471) = 0;
  *(self + 472) = 0;
  *(self + 470) = 0;
  *(self + 490) = 0;
  *(self + 491) = 0;
  *(self + 489) = 0;
  *(self + 251) = 0u;
  *(self + 252) = 0u;
  *(self + 1012) = 1065353216;
  *(self + 510) = 0;
  *(self + 511) = 0;
  *(self + 513) = 0;
  *(self + 514) = 0;
  *(self + 512) = 0;
  *(self + 4136) = 0u;
  *(self + 4152) = 0u;
  *(self + 1042) = 1065353216;
  *(self + 527) = 0;
  v4 = self + 4352;
  v5 = 1152;
  do
  {
    *(v4 - 6) = 0uLL;
    *(v4 - 5) = 0uLL;
    *(v4 - 8) = 0uLL;
    *(v4 - 7) = 0uLL;
    *(v4 - 8) = 0;
    *(v4 - 7) = 1;
    *(v4 - 3) = 0uLL;
    *(v4 - 2) = 0uLL;
    *(v4 - 2) = 0x3FF0000000000000;
    *v4 = 0;
    v4[1] = 0;
    v4 += 18;
    v5 -= 144;
  }

  while (v5);
  *(self + 680) = 0;
  *(self + 339) = 0u;
  *(self + 338) = 0u;
  *(self + 337) = 0u;
  *(self + 336) = 0u;
  *(self + 681) = 1;
  *(self + 341) = 0u;
  *(self + 342) = 0u;
  *(self + 686) = 0x3FF0000000000000;
  *(self + 344) = 0u;
  *(self + 345) = 0u;
  *(self + 346) = 0u;
  *(self + 347) = 0u;
  *(self + 348) = 0u;
  *(self + 698) = 0;
  *(self + 699) = 1;
  *(self + 351) = 0u;
  *(self + 350) = 0u;
  *(self + 704) = 0x3FF0000000000000;
  *(self + 353) = 0u;
  *(self + 365) = 0u;
  *(self + 366) = 0u;
  *(self + 1468) = 1065353216;
  return self;
}

@end