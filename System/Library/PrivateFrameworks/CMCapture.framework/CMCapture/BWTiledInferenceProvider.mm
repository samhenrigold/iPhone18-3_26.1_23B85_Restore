@interface BWTiledInferenceProvider
+ (id)videoFormatWithPixelFormat:(unsigned int)format size:(unsigned int)size sliceCount:(BOOL)count includesInvalidContent:(BOOL)content appliesFinalCropRect:;
- (BWTiledInferenceProvider)initWithConfiguration:(id)configuration inputVideoRequirements:(id)requirements outputVideoRequirements:(id)videoRequirements resourceProvider:(id)provider;
- (CVMetalTextureRef)_cachedTexturesFromPixelBuffer:(uint64_t)buffer usage:;
- (id)newStorage;
- (int)loadNetworkWithURL:(id)l configName:(id)name inferenceType:(int)type maxTileCount:(id)count inputFormatsByBindingName:(id)bindingName outputFormatsByBindingName:(id)byBindingName additionalVideoRequirements:;
- (int)prepareForSubmissionWithWorkQueue:(id)queue;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler currentTileCount:;
- (uint64_t)_metalTextureFormatFromPixelBufferFormat:(int)format forPlane:;
- (void)dealloc;
- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer;
- (void)setCustomInferenceIdentifier:(id)identifier;
@end

@implementation BWTiledInferenceProvider

+ (id)videoFormatWithPixelFormat:(unsigned int)format size:(unsigned int)size sliceCount:(BOOL)count includesInvalidContent:(BOOL)content appliesFinalCropRect:
{
  v7 = v6;
  contentCopy = content;
  countCopy = count;
  v11 = *&format;
  v12 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  [(BWVideoFormatRequirements *)v12 setWidth:size];
  [(BWVideoFormatRequirements *)v12 setHeight:HIWORD(size)];
  [(BWVideoFormatRequirements *)v12 setSliceCount:countCopy];
  if (v7)
  {
    v13 = [BWInferenceFinalRectCropDescriptor finalCropRectDescriptorWithName:@"TiledEspresso"];
  }

  else
  {
    v13 = 0;
  }

  [(BWInferenceVideoFormatRequirements *)v12 setCropDescriptor:v13];
  v16 = [MEMORY[0x1E696AD98] numberWithInt:v11];
  -[BWVideoFormatRequirements setSupportedPixelFormats:](v12, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1]);
  [(BWInferenceVideoFormatRequirements *)v12 setDeviceOriented:0];
  [(BWVideoFormatRequirements *)v12 setBytesPerRowAlignment:64];
  [(BWInferenceVideoFormatRequirements *)v12 setIncludesInvalidContent:contentCopy];
  v15 = v12;
  return +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1]);
}

- (BWTiledInferenceProvider)initWithConfiguration:(id)configuration inputVideoRequirements:(id)requirements outputVideoRequirements:(id)videoRequirements resourceProvider:(id)provider
{
  v12.receiver = self;
  v12.super_class = BWTiledInferenceProvider;
  v10 = [(BWTiledInferenceProvider *)&v12 init];
  if (v10)
  {
    v10->_configuration = configuration;
    objc_storeWeak(&v10->_resourceProvider, provider);
    v10->_inputVideoRequirements = requirements;
    v10->_outputVideoRequirements = videoRequirements;
    *v10->_maxTileCount = 0;
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWTiledInferenceProvider;
  [(BWTiledInferenceProvider *)&v3 dealloc];
}

- (void)setCustomInferenceIdentifier:(id)identifier
{
  customInferenceIdentifier = self->_customInferenceIdentifier;
  if (customInferenceIdentifier != identifier)
  {

    self->_customInferenceIdentifier = identifier;
  }
}

- (int)loadNetworkWithURL:(id)l configName:(id)name inferenceType:(int)type maxTileCount:(id)count inputFormatsByBindingName:(id)bindingName outputFormatsByBindingName:(id)byBindingName additionalVideoRequirements:
{
  if (self->_espressoProvider)
  {
    return 0;
  }

  v52 = v8;
  v53 = v9;
  countCopy = count;
  v14 = *&type;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  array4 = [MEMORY[0x1E695DF70] array];
  if (![(NSArray *)self->_inputVideoRequirements count])
  {
    [BWTiledInferenceProvider loadNetworkWithURL:v51 configName:? inferenceType:? maxTileCount:? inputFormatsByBindingName:? outputFormatsByBindingName:? additionalVideoRequirements:?];
    return v51[0];
  }

  if (![(NSArray *)self->_outputVideoRequirements count])
  {
    [BWTiledInferenceProvider loadNetworkWithURL:v51 configName:? inferenceType:? maxTileCount:? inputFormatsByBindingName:? outputFormatsByBindingName:? additionalVideoRequirements:?];
    return v51[0];
  }

  if (![bindingName count])
  {
    [BWTiledInferenceProvider loadNetworkWithURL:v51 configName:? inferenceType:? maxTileCount:? inputFormatsByBindingName:? outputFormatsByBindingName:? additionalVideoRequirements:?];
    return v51[0];
  }

  if (![byBindingName count])
  {
    [BWTiledInferenceProvider loadNetworkWithURL:v51 configName:? inferenceType:? maxTileCount:? inputFormatsByBindingName:? outputFormatsByBindingName:? additionalVideoRequirements:?];
    return v51[0];
  }

  if (([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) == 0)
  {
    [BWTiledInferenceProvider loadNetworkWithURL:v51 configName:? inferenceType:? maxTileCount:? inputFormatsByBindingName:? outputFormatsByBindingName:? additionalVideoRequirements:?];
    return v51[0];
  }

  byBindingNameCopy = byBindingName;
  v20 = [objc_loadWeak(&self->_resourceProvider) espressoContextForExecutionTarget:3];
  *self->_maxTileCount = countCopy;
  v21 = [BWEspressoInferenceProvider alloc];
  v22 = v14;
  priority = [(BWInferenceConfiguration *)self->_configuration priority];
  LOBYTE(v37) = 0;
  LODWORD(v36) = 0;
  v24 = -[BWEspressoInferenceProvider initWithType:networkURL:networkConfiguration:context:executionTarget:schedulerPriority:preventionReasons:resourceProvider:allowedCompressionDirection:concurrentSubmissionLimit:updateMetadataWithCropRect:](v21, "initWithType:networkURL:networkConfiguration:context:executionTarget:schedulerPriority:preventionReasons:resourceProvider:allowedCompressionDirection:concurrentSubmissionLimit:updateMetadataWithCropRect:", v22, l, name, v20, 3, priority, [MEMORY[0x1E695DFD8] set], objc_loadWeak(&self->_resourceProvider), v36, 2, v37);
  self->_espressoProvider = v24;
  if (!v24)
  {
    [BWTiledInferenceProvider loadNetworkWithURL:v51 configName:? inferenceType:? maxTileCount:? inputFormatsByBindingName:? outputFormatsByBindingName:? additionalVideoRequirements:?];
    return v51[0];
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v25 = [bindingName countByEnumeratingWithState:&v47 objects:v46 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v48;
    while (2)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v48 != v27)
        {
          objc_enumerationMutation(bindingName);
        }

        v29 = *(*(&v47 + 1) + 8 * i);
        [array3 addObject:v29];
        [array addObject:{-[BWEspressoInferenceProvider bindEspressoInput:fromAttachedMediaUsingKey:withVideoFormat:](self->_espressoProvider, "bindEspressoInput:fromAttachedMediaUsingKey:withVideoFormat:", v29, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"TileInput_%@", v29), objc_msgSend(bindingName, "objectForKeyedSubscript:", v29))}];
        if (![array lastObject])
        {
          [BWTiledInferenceProvider loadNetworkWithURL:v51 configName:? inferenceType:? maxTileCount:? inputFormatsByBindingName:? outputFormatsByBindingName:? additionalVideoRequirements:?];
          return v51[0];
        }
      }

      v26 = [bindingName countByEnumeratingWithState:&v47 objects:v46 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  self->_tileInputBindingNames = array3;
  self->_tileInputVideoRequirements = array;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v30 = [byBindingNameCopy countByEnumeratingWithState:&v42 objects:v41 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v43;
    while (2)
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v43 != v32)
        {
          objc_enumerationMutation(byBindingNameCopy);
        }

        v34 = *(*(&v42 + 1) + 8 * j);
        [array4 addObject:v34];
        [array2 addObject:{-[BWEspressoInferenceProvider bindEspressoOutput:asAttachedMediaUsingKey:withVideoFormat:](self->_espressoProvider, "bindEspressoOutput:asAttachedMediaUsingKey:withVideoFormat:", v34, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"TileOutput_%@", v34), objc_msgSend(byBindingNameCopy, "objectForKeyedSubscript:", v34))}];
        if (![array2 lastObject])
        {
          [BWTiledInferenceProvider loadNetworkWithURL:v51 configName:? inferenceType:? maxTileCount:? inputFormatsByBindingName:? outputFormatsByBindingName:? additionalVideoRequirements:?];
          return v51[0];
        }
      }

      v31 = [byBindingNameCopy countByEnumeratingWithState:&v42 objects:v41 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

  self->_tileOutputBindingNames = array4;
  self->_tileOutputVideoRequirements = array2;
  v35 = v54;
  result = 0;
  self->_additionalVideoRequirements = v35;
  return result;
}

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler currentTileCount:
{
  v9 = v7;
  v13 = [(NSArray *)self->_inputVideoRequirements count:buffer];
  v100 = [(NSArray *)self->_tileInputVideoRequirements count];
  v14 = [(NSArray *)self->_outputVideoRequirements count];
  v15 = [(NSArray *)self->_tileOutputVideoRequirements count];
  if ([objc_msgSend(storage "espressoStorages")] != 2)
  {
    [BWTiledInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
LABEL_125:
    v103 = 0;
    v56 = 0;
    v16 = 0;
    v105 = 0;
    v17 = 0;
    v107 = 0;
    v18 = 0;
    v54 = v112;
    v55 = 1;
    goto LABEL_64;
  }

  if (v9 > *self->_maxTileCount)
  {
    [BWTiledInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
    goto LABEL_125;
  }

  v95 = HIWORD(v9);
  if (HIWORD(v9) > *&self->_maxTileCount[2])
  {
    [BWTiledInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
    goto LABEL_125;
  }

  count = v14;
  handlerCopy = handler;
  v104 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v13];
  v106 = malloc_type_calloc(2 * (v100 & 0x7FFFFFFF), 8uLL, 0x2004093837F09uLL);
  if (!v106)
  {
    [BWTiledInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
    v103 = 0;
    v56 = 0;
    v16 = 0;
    v105 = 0;
    v17 = 0;
    v107 = 0;
    v54 = v112;
    v55 = 1;
    v18 = v104;
    goto LABEL_64;
  }

  v87 = v9;
  v16 = malloc_type_calloc(2 * (v100 & 0x7FFFFFFF), 8uLL, 0x80040B8603338uLL);
  if (!v16)
  {
    [BWTiledInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
    v103 = 0;
    v56 = 0;
    v105 = 0;
    v17 = 0;
    v107 = 0;
LABEL_129:
    v54 = v112;
    v55 = 1;
    v18 = v104;
    goto LABEL_53;
  }

  v86 = v9;
  v107 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:?];
  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSArray count](self->_additionalVideoRequirements, "count")}];
  v92 = v15;
  v105 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:?];
  v90 = malloc_type_calloc(v14, 8uLL, 0x2004093837F09uLL);
  if (!v90)
  {
    [BWTiledInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
    v103 = 0;
    v56 = 0;
    goto LABEL_129;
  }

  v18 = v104;
  v103 = malloc_type_calloc(v14, 8uLL, 0x80040B8603338uLL);
  if (!v103)
  {
    [BWTiledInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
    v103 = 0;
    goto LABEL_131;
  }

  v101 = v17;
  if (v13)
  {
    v19 = 0;
    while (1)
    {
      v20 = [(NSArray *)self->_inputVideoRequirements objectAtIndexedSubscript:v19];
      v21 = [-[NSArray objectAtIndexedSubscript:](self->_inputVideoRequirements objectAtIndexedSubscript:{v19), "attachedMediaKey"}];
      videoStorageType = [v20 videoStorageType];
      if (videoStorageType == 1)
      {
        break;
      }

      if (!videoStorageType)
      {
        v23 = -[BWTiledInferenceProvider _cachedTexturesFromPixelBuffer:usage:](self, [storage pixelBufferForRequirement:v20], 17);
LABEL_14:
        [v104 setObject:v23 forKeyedSubscript:v21];
      }

      if (![v104 objectForKeyedSubscript:v21])
      {
        [BWTiledInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
        v54 = v112;
        v55 = 1;
        goto LABEL_51;
      }

      if (v13 == ++v19)
      {
        goto LABEL_17;
      }
    }

    v124 = *[objc_msgSend(storage "textureStorage")];
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v124 count:2];
    goto LABEL_14;
  }

LABEL_17:
  if (v100)
  {
    for (i = 0; i != v100; ++i)
    {
      v25 = [(NSArray *)self->_tileInputVideoRequirements objectAtIndexedSubscript:i];
      v26 = 0;
      v27 = 2 * i;
      v28 = 1;
      do
      {
        v29 = v28;
        v30 = [objc_msgSend(storage pixelBufferPoolForRequirement:{v25), "newPixelBuffer"}];
        if (!v30)
        {
          [BWTiledInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
          v54 = v112;
          v55 = 1;
          handler = handlerCopy;
          v18 = v104;
          goto LABEL_51;
        }

        v31 = v30;
        v106[v26 | v27] = v30;
        v16[v26 | v27] = [(BWTiledInferenceProvider *)self _cachedTexturesFromPixelBuffer:v30 usage:23];
        [objc_msgSend(objc_msgSend(storage "espressoStorages")];
        v28 = 0;
        v26 = 1;
      }

      while ((v29 & 1) != 0);
    }
  }

  v96 = v16;
  v32 = 0;
  v33 = 1;
  do
  {
    v34 = v33;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    tileOutputVideoRequirements = self->_tileOutputVideoRequirements;
    v36 = [(NSArray *)tileOutputVideoRequirements countByEnumeratingWithState:&v120 objects:v119 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v121;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v121 != v38)
          {
            objc_enumerationMutation(tileOutputVideoRequirements);
          }

          [objc_msgSend(objc_msgSend(storage "espressoStorages")];
        }

        v37 = [(NSArray *)tileOutputVideoRequirements countByEnumeratingWithState:&v120 objects:v119 count:16];
      }

      while (v37);
    }

    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    additionalVideoRequirements = self->_additionalVideoRequirements;
    v41 = [(NSArray *)additionalVideoRequirements countByEnumeratingWithState:&v115 objects:v114 count:16];
    if (v41)
    {
      v43 = v41;
      v44 = *v116;
      do
      {
        for (k = 0; k != v43; ++k)
        {
          if (*v116 != v44)
          {
            objc_enumerationMutation(additionalVideoRequirements);
          }

          v46 = *(*(&v115 + 1) + 8 * k);
          v47 = [objc_msgSend(storage pixelBufferPoolForRequirement:{v46), "newPixelBuffer"}];
          if (!v47)
          {
            [BWTiledInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
            v54 = v112;
LABEL_49:
            v55 = 1;
            handler = handlerCopy;
            v18 = v104;
            goto LABEL_50;
          }

          v48 = v47;
          [objc_msgSend(objc_msgSend(storage "espressoStorages")];
          CFRelease(v48);
        }

        v43 = [(NSArray *)additionalVideoRequirements countByEnumeratingWithState:&v115 objects:v114 count:16];
      }

      while (v43);
    }

    v33 = 0;
    v32 = 1;
  }

  while ((v34 & 1) != 0);
  v18 = v104;
  v16 = v96;
  v17 = v101;
  if (count)
  {
    for (m = 0; count != m; ++m)
    {
      v50 = [(NSArray *)self->_outputVideoRequirements objectAtIndexedSubscript:m];
      videoStorageType2 = [v50 videoStorageType];
      if (videoStorageType2)
      {
        if (videoStorageType2 == 1)
        {
          emitter = fig_log_get_emitter();
          v54 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFF841ALL, "<<<< BWTiledInferenceProvider >>>>", 0x209, v8, v81, v82, v85);
          goto LABEL_103;
        }
      }

      else
      {
        v53 = [objc_msgSend(storage pixelBufferPoolForRequirement:{v50), "newPixelBuffer"}];
        if (!v53)
        {
          [BWTiledInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
LABEL_131:
          v54 = v112;
LABEL_103:
          v55 = 1;
LABEL_114:
          handler = handlerCopy;
          goto LABEL_52;
        }

        *&v90[8 * m] = v53;
        v103[m] = [(BWTiledInferenceProvider *)self _cachedTexturesFromPixelBuffer:v53 usage:22];
      }

      v52 = [-[FigMetalContext commandQueue](self->_metalContext "commandQueue")];
      -[BWTiledInferenceProvider preProcessOutputTexture:forMediaKey:encodeToCmdBuffer:](self, "preProcessOutputTexture:forMediaKey:encodeToCmdBuffer:", v103[m], [-[NSArray objectAtIndexedSubscript:](self->_outputVideoRequirements objectAtIndexedSubscript:{m), "attachedMediaKey"}], v52);
      [v52 commit];
    }
  }

  if (!v87)
  {
    v62 = 0;
LABEL_106:
    [objc_msgSend(objc_msgSend(storage "espressoStorages")];
    [objc_msgSend(objc_msgSend(storage "espressoStorages")];
    v16 = v96;
    if (count)
    {
      for (n = 0; n != count; ++n)
      {
        [storage setPixelBuffer:*&v90[8 * n] forRequirement:{-[NSArray objectAtIndexedSubscript:](self->_outputVideoRequirements, "objectAtIndexedSubscript:", n)}];
      }
    }

    v55 = v62 == 0;
    if (v62)
    {
      v110[0] = MEMORY[0x1E69E9820];
      v110[1] = 3221225472;
      v110[2] = __127__BWTiledInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler_currentTileCount___block_invoke_2;
      v110[3] = &unk_1E798FB70;
      v111 = 0;
      v110[4] = self;
      v110[5] = handlerCopy;
      [v62 addScheduledHandler:v110];
      [v62 commit];
    }

    textureCache = self->_textureCache;
    if (textureCache)
    {
      CVMetalTextureCacheFlush(textureCache, 0);
    }

    [(BWTiledInferenceProvider *)self purgeIntermediateResources];
    v54 = 0;
    goto LABEL_114;
  }

  v62 = 0;
  v91 = 0;
  v102 = 0;
  while (v86 < 0x10000)
  {
LABEL_100:
    if (++v91 == v87)
    {
      goto LABEL_106;
    }
  }

  v63 = 0;
  v42.i32[0] = v91;
  v88 = vmovl_u16(v42).u32[0];
  while (1)
  {
    v97 = v63;
    v98 = __PAIR64__(v63, v88);
    if (v100)
    {
      v64 = 0;
      HIWORD(v109) = v63;
      LOWORD(v109) = v88;
      v65 = &v96[v102];
      while (1)
      {
        v66 = [-[FigMetalContext commandQueue](self->_metalContext "commandQueue")];
        v67 = [(BWTiledInferenceProvider *)self createInputTileFor:[(NSArray *)self->_tileInputBindingNames objectAtIndexedSubscript:v64] to:*v65 withInputs:v104 atPosition:v109 encodeToCmdBuffer:v66];
        if (v67)
        {
          break;
        }

        [v107 setObject:*v65 forKeyedSubscript:{-[NSArray objectAtIndexedSubscript:](self->_tileInputBindingNames, "objectAtIndexedSubscript:", v64)}];
        [v66 commit];
        if (v100 - 1 == v64)
        {
          [v66 waitUntilScheduled];
        }

        ++v64;
        v65 += 2;
        if (v100 == v64)
        {
          goto LABEL_78;
        }
      }

      v54 = v67;
      [BWTiledInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:];
      goto LABEL_49;
    }

LABEL_78:
    forceSynchronousInference = [(BWTiledEspressoInferenceConfiguration *)self->_configuration forceSynchronousInference];
    espressoProvider = self->_espressoProvider;
    v70 = [objc_msgSend(storage "espressoStorages")];
    if (forceSynchronousInference)
    {
      v112 = *&time->var0;
      var3 = time->var3;
      v71 = [(BWEspressoInferenceProvider *)espressoProvider executeOnSampleBuffer:buffer usingStorage:v70 withExecutionTime:&v112 completionHandler:0];
    }

    else
    {
      espressoWorkQueue = self->_espressoWorkQueue;
      v112 = *&time->var0;
      var3 = time->var3;
      v71 = [(BWEspressoInferenceProvider *)espressoProvider submitForSampleBuffer:buffer usingStorage:v70 withSubmissionTime:&v112 workQueue:espressoWorkQueue completionHandler:0];
    }

    v54 = v71;
    v18 = v104;
    v17 = v101;
    if (v71)
    {
      [BWTiledInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:];
LABEL_117:
      v55 = 1;
      handler = handlerCopy;
      v16 = v96;
      goto LABEL_52;
    }

    if (v92)
    {
      v73 = 0;
      while (1)
      {
        v74 = [objc_msgSend(objc_msgSend(storage "espressoStorages")];
        if (!v74)
        {
          break;
        }

        [v105 setObject:-[BWTiledInferenceProvider _cachedTexturesFromPixelBuffer:usage:](self forKeyedSubscript:{v74, 17), -[NSArray objectAtIndexedSubscript:](self->_tileOutputBindingNames, "objectAtIndexedSubscript:", v73++)}];
        if (v92 == v73)
        {
          goto LABEL_86;
        }
      }

      [BWTiledInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
      v54 = v112;
      goto LABEL_117;
    }

LABEL_86:
    if ([(NSArray *)self->_additionalVideoRequirements count])
    {
      break;
    }

LABEL_90:
    if (count)
    {
      v78 = 0;
      HIWORD(v108) = WORD2(v98);
      LOWORD(v108) = v98;
      while (1)
      {
        v62 = [-[FigMetalContext commandQueue](self->_metalContext "commandQueue")];
        LODWORD(v85) = v108;
        v79 = -[BWTiledInferenceProvider writeOutputFor:to:fromNetworkOutputTiles:withAdditionalTextures:withInputTileTextures:withInputFullTextures:atPosition:encodeToCmdBuffer:](self, "writeOutputFor:to:fromNetworkOutputTiles:withAdditionalTextures:withInputTileTextures:withInputFullTextures:atPosition:encodeToCmdBuffer:", [-[NSArray objectAtIndexedSubscript:](self->_outputVideoRequirements objectAtIndexedSubscript:{v78), "attachedMediaKey"}], v103[v78], v105, v17, v107, v104, v85, v62);
        if (v79)
        {
          break;
        }

        if (count - 1 != v78)
        {
          [v62 commit];
        }

        if (count == ++v78)
        {
          goto LABEL_96;
        }
      }

      v54 = v79;
      [BWTiledInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:];
      goto LABEL_117;
    }

LABEL_96:
    [v62 addCompletedHandler:&__block_literal_global_37];
    if (v87 - 1 != v91 || v95 - 1 != v97)
    {
      [v62 commit];
    }

    v102 = !v102;
    [v107 removeAllObjects];
    [v17 removeAllObjects];
    [v105 removeAllObjects];
    v63 = v97 + 1;
    if (v97 + 1 == v95)
    {
      goto LABEL_100;
    }
  }

  v75 = 0;
  while (1)
  {
    v76 = [-[NSArray objectAtIndexedSubscript:](self->_additionalVideoRequirements objectAtIndexedSubscript:{v75), "attachedMediaKey"}];
    v77 = [objc_msgSend(objc_msgSend(storage "espressoStorages")];
    if (!v77)
    {
      break;
    }

    v17 = v101;
    [v101 setObject:-[BWTiledInferenceProvider _cachedTexturesFromPixelBuffer:usage:](self forKeyedSubscript:{v77, 23), v76}];
    if ([(NSArray *)self->_additionalVideoRequirements count]<= ++v75)
    {
      goto LABEL_90;
    }
  }

  [BWTiledInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:? currentTileCount:?];
  v54 = v112;
  v55 = 1;
  handler = handlerCopy;
LABEL_50:
  v16 = v96;
LABEL_51:
  v17 = v101;
LABEL_52:
  v56 = v90;
LABEL_53:
  v57 = (2 * v100);
  if (v57)
  {
    v58 = v106;
    do
    {
      if (*v58)
      {
        CFRelease(*v58);
      }

      ++v58;
      --v57;
    }

    while (v57);
  }

  free(v106);
  if (v56 && count)
  {
    v59 = 0;
    do
    {
      v60 = *&v56[v59];
      if (v60)
      {
        CFRelease(v60);
      }

      v59 += 8;
    }

    while (8 * count != v59);
  }

LABEL_64:
  free(v56);
  free(v103);
  free(v16);

  if (handler && v55)
  {
    (*(handler + 2))(handler, v54, self);
  }

  return v54;
}

uint64_t __127__BWTiledInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler_currentTileCount___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler
{
  v7 = *self->_maxTileCount;
  v9 = *time;
  return [(BWTiledInferenceProvider *)self submitForSampleBuffer:buffer usingStorage:storage withSubmissionTime:&v9 workQueue:queue completionHandler:handler currentTileCount:v7];
}

- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer
{
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  outputVideoRequirements = self->_outputVideoRequirements;
  v10 = [(NSArray *)outputVideoRequirements countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(outputVideoRequirements);
        }

        [(BWTiledInferenceProvider *)self propagateInferenceResultForOutputRequirement:*(*(&v15 + 1) + 8 * i) storage:storage propagationSampleBuffer:sampleBuffer];
      }

      v11 = [(NSArray *)outputVideoRequirements countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v11);
  }
}

- (id)newStorage
{
  if (self->_espressoProvider)
  {
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    if ([(NSArray *)self->_inputVideoRequirements count])
    {
      v5 = 0;
      do
      {
        v6 = [(NSArray *)self->_inputVideoRequirements objectAtIndexedSubscript:v5];
        if (![v6 videoStorageType])
        {
          [array2 addObject:v6];
        }

        ++v5;
      }

      while (v5 < [(NSArray *)self->_inputVideoRequirements count]);
    }

    array3 = [MEMORY[0x1E695DF70] array];
    if ([(NSArray *)self->_outputVideoRequirements count])
    {
      v8 = 0;
      do
      {
        v9 = [(NSArray *)self->_outputVideoRequirements objectAtIndexedSubscript:v8];
        if (![v9 videoStorageType])
        {
          [array3 addObject:v9];
        }

        ++v8;
      }

      while (v8 < [(NSArray *)self->_outputVideoRequirements count]);
    }

    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      [array addObject:{-[BWEspressoInferenceProvider newStorage](self->_espressoProvider, "newStorage")}];
      [array3 addObjectsFromArray:{objc_msgSend(objc_msgSend(array, "objectAtIndexedSubscript:", v10), "requirementsNeedingPixelBuffers")}];
      [array3 addObjectsFromArray:{objc_msgSend(objc_msgSend(array, "objectAtIndexedSubscript:", v10), "requirementsNeedingPixelBufferPools")}];
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      additionalVideoRequirements = self->_additionalVideoRequirements;
      v14 = [(NSArray *)additionalVideoRequirements countByEnumeratingWithState:&v20 objects:v19 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v21;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v21 != v16)
            {
              objc_enumerationMutation(additionalVideoRequirements);
            }

            [array3 addObject:*(*(&v20 + 1) + 8 * i)];
          }

          v15 = [(NSArray *)additionalVideoRequirements countByEnumeratingWithState:&v20 objects:v19 count:16];
        }

        while (v15);
      }

      v11 = 0;
      v10 = 1;
    }

    while ((v12 & 1) != 0);
    return [[BWTiledInferenceStorage alloc] initWithRequirementsNeedingPixelBuffers:array2 requirementsNeedingPixelBufferPools:array3 espressoStorages:array];
  }

  else
  {
    [BWTiledInferenceProvider newStorage];
    return 0;
  }
}

- (CVMetalTextureRef)_cachedTexturesFromPixelBuffer:(uint64_t)buffer usage:
{
  if (result)
  {
    v4 = result;
    image = 0;
    result = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    if (result)
    {
      v5 = result;
      PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
      PlaneCount = CVPixelBufferGetPlaneCount(a2);
      v8 = 0;
      v9 = 0;
      if (PlaneCount <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = PlaneCount;
      }

      v15 = v10;
      v17 = *MEMORY[0x1E6966010];
      allocator = *MEMORY[0x1E695E480];
      while (1)
      {
        WidthOfPlane = CVPixelBufferGetWidthOfPlane(a2, v8);
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(a2, v8);
        v13 = [(BWTiledInferenceProvider *)v4 _metalTextureFormatFromPixelBufferFormat:v9 forPlane:?];
        if (!v13)
        {
          break;
        }

        v14 = v13;
        v19 = v17;
        v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:buffer];
        if (CVMetalTextureCacheCreateTextureFromImage(allocator, *(v4 + 15), a2, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1], v14, WidthOfPlane >> (PixelFormatType == 1647719528), HeightOfPlane >> (PixelFormatType == 1647719528), v8, &image))
        {
          break;
        }

        [(__CVBuffer *)v5 setObject:CVMetalTextureGetTexture(image) atIndexedSubscript:v8];
        if (![(__CVBuffer *)v5 objectAtIndexedSubscript:v8])
        {
          break;
        }

        if (image)
        {
          CFRelease(image);
        }

        v8 = ++v9;
        if (v15 <= v9)
        {
          return v5;
        }
      }

      result = image;
      if (image)
      {
        CFRelease(image);
        return 0;
      }
    }
  }

  return result;
}

- (int)prepareForSubmissionWithWorkQueue:(id)queue
{
  if (!self->_espressoProvider)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v10, v11, v12, v13, v14, v15, v16);
    return 0;
  }

  v5 = objc_alloc(MEMORY[0x1E6991778]);
  v6 = [v5 initWithbundle:objc_msgSend(MEMORY[0x1E696AAE8] andOptionalCommandQueue:{"bundleForClass:", objc_opt_class()), -[BWTiledEspressoInferenceConfiguration metalCommandQueue](self->_configuration, "metalCommandQueue")}];
  self->_metalContext = v6;
  if (!v6)
  {
    return -12786;
  }

  v11 = *MEMORY[0x1E6966000];
  v12 = &unk_1F2243150;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  if (CVMetalTextureCacheCreate(*MEMORY[0x1E695E480], v7, [(FigMetalContext *)self->_metalContext device], 0, &self->_textureCache))
  {
    return 0;
  }

  v8 = [(BWEspressoInferenceProvider *)self->_espressoProvider prepareForSubmissionWithWorkQueue:queue];
  if (v8)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v8, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    self->_espressoWorkQueue = queue;
  }

  return v8;
}

- (uint64_t)_metalTextureFormatFromPixelBufferFormat:(int)format forPlane:
{
  if (result)
  {
    if (a2 != 641230384)
    {
      switch(a2)
      {
        case 645424688:
          goto LABEL_32;
        case 758670896:
          goto LABEL_28;
        case 762865200:
          goto LABEL_32;
        case 792225328:
          goto LABEL_28;
        case 796419632:
LABEL_32:
          if (format)
          {
            return 589;
          }

          else
          {
            return 588;
          }

        case 843264056:
          return 30;
        case 843264104:
          return 65;
      }

      if (a2 != 875704422 && a2 != 875704438)
      {
        if (a2 == 1111970369)
        {
          return 80;
        }

        if (a2 != 2088265264)
        {
          switch(a2)
          {
            case 1278226534:
              return 55;
            case 1278226536:
              return 25;
            case 1380411457:
            case 1647719528:
              return 115;
            case 1751527984:
              v5 = format == 0;
              v6 = 65;
              v7 = 25;
              goto LABEL_29;
          }

          if (a2 != 1885745712)
          {
            if (a2 != 2019963440)
            {
              if (a2 != 2084070960)
              {
                if (a2 == 1278226488)
                {
                  return 10;
                }

                else
                {
                  return 0;
                }
              }

              goto LABEL_28;
            }

            v5 = format == 0;
            v6 = 60;
            v7 = 20;
LABEL_29:
            if (v5)
            {
              return v7;
            }

            else
            {
              return v6;
            }
          }
        }

        goto LABEL_32;
      }
    }

LABEL_28:
    v5 = format == 0;
    v6 = 30;
    v7 = 10;
    goto LABEL_29;
  }

  return result;
}

- (uint64_t)loadNetworkWithURL:(_DWORD *)a1 configName:inferenceType:maxTileCount:inputFormatsByBindingName:outputFormatsByBindingName:additionalVideoRequirements:.cold.1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFF842BLL, "<<<< BWTiledInferenceProvider >>>>", 0x15B, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

- (uint64_t)loadNetworkWithURL:(_DWORD *)a1 configName:inferenceType:maxTileCount:inputFormatsByBindingName:outputFormatsByBindingName:additionalVideoRequirements:.cold.2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFF8422, "<<<< BWTiledInferenceProvider >>>>", 0x16C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

- (uint64_t)loadNetworkWithURL:(_DWORD *)a1 configName:inferenceType:maxTileCount:inputFormatsByBindingName:outputFormatsByBindingName:additionalVideoRequirements:.cold.3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFF8422, "<<<< BWTiledInferenceProvider >>>>", 0x179, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

- (uint64_t)loadNetworkWithURL:(_DWORD *)a1 configName:inferenceType:maxTileCount:inputFormatsByBindingName:outputFormatsByBindingName:additionalVideoRequirements:.cold.4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFF8422, "<<<< BWTiledInferenceProvider >>>>", 0x162, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

- (uint64_t)loadNetworkWithURL:(_DWORD *)a1 configName:inferenceType:maxTileCount:inputFormatsByBindingName:outputFormatsByBindingName:additionalVideoRequirements:.cold.5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFF8422, "<<<< BWTiledInferenceProvider >>>>", 0x158, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

- (uint64_t)loadNetworkWithURL:(_DWORD *)a1 configName:inferenceType:maxTileCount:inputFormatsByBindingName:outputFormatsByBindingName:additionalVideoRequirements:.cold.6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFF8422, "<<<< BWTiledInferenceProvider >>>>", 0x157, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

- (uint64_t)loadNetworkWithURL:(_DWORD *)a1 configName:inferenceType:maxTileCount:inputFormatsByBindingName:outputFormatsByBindingName:additionalVideoRequirements:.cold.7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFF8422, "<<<< BWTiledInferenceProvider >>>>", 0x156, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

- (uint64_t)loadNetworkWithURL:(_DWORD *)a1 configName:inferenceType:maxTileCount:inputFormatsByBindingName:outputFormatsByBindingName:additionalVideoRequirements:.cold.8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFF8422, "<<<< BWTiledInferenceProvider >>>>", 0x155, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:(_DWORD *)a1 usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFF8422, "<<<< BWTiledInferenceProvider >>>>", 0x1A1, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:(_DWORD *)a1 usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFF8420, "<<<< BWTiledInferenceProvider >>>>", 0x1D6, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:(_DWORD *)a1 usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFF841ALL, "<<<< BWTiledInferenceProvider >>>>", 0x1E0, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:(_DWORD *)a1 usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFF841ALL, "<<<< BWTiledInferenceProvider >>>>", 0x1F2, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:(_DWORD *)a1 usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFF841ALL, "<<<< BWTiledInferenceProvider >>>>", 0x201, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFF8422, "<<<< BWTiledInferenceProvider >>>>", 0x227, v1, v2, v3, v5);
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFF8422, "<<<< BWTiledInferenceProvider >>>>", 0x245, v1, v2, v3, v5);
}

- (uint64_t)submitForSampleBuffer:(_DWORD *)a1 usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFF841BLL, "<<<< BWTiledInferenceProvider >>>>", 0x24B, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:(_DWORD *)a1 usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFF841BLL, "<<<< BWTiledInferenceProvider >>>>", 0x256, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFF8422, "<<<< BWTiledInferenceProvider >>>>", 0x262, v1, v2, v3, v5);
}

- (uint64_t)submitForSampleBuffer:(_DWORD *)a1 usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFF841ALL, "<<<< BWTiledInferenceProvider >>>>", 0x1BE, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:(_DWORD *)a1 usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFF841ALL, "<<<< BWTiledInferenceProvider >>>>", 0x1BC, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:(_DWORD *)a1 usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.13(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFF841ALL, "<<<< BWTiledInferenceProvider >>>>", 0x1AF, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:(_DWORD *)a1 usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.14(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFF841ALL, "<<<< BWTiledInferenceProvider >>>>", 0x1AD, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:(_DWORD *)a1 usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.15(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFF8422, "<<<< BWTiledInferenceProvider >>>>", 0x1A3, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:(_DWORD *)a1 usingStorage:withSubmissionTime:workQueue:completionHandler:currentTileCount:.cold.16(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFF8422, "<<<< BWTiledInferenceProvider >>>>", 0x1A2, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

@end