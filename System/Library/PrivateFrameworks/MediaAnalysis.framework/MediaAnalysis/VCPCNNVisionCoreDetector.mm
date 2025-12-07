@interface VCPCNNVisionCoreDetector
- (VCPCNNVisionCoreDetector)initWithOptions:(id)options;
- (id).cxx_construct;
- (id)allocatePostProcessingBuffers:(id)buffers error:(id *)error;
- (id)planExecutionandOutput:()vector<espresso_buffer_t descriptor:(std:(id)descriptor :allocator<espresso_buffer_t>> *)a3;
- (id)resultForPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation Error:(id *)error;
- (int)UpdateInputBuffersAndBindPixelBuffer:(__CVBuffer *)buffer;
- (int)downscaleBuffer:(__CVBuffer *)buffer scaledImage:(__CVBuffer *)image;
- (int)getBodyRegions:(id)regions fromVisionCorePostProcessingOutput:(id)output imageWidth:(int)width imageHeight:(int)height extendRatio:(float)ratio portrait_mode:(BOOL)portrait_mode;
- (int)getHandsRegions:(id)regions fromVisionCorePostProcessingOutput:(id)output imageWidth:(int)width imageHeight:(int)height extendRatio:(float)ratio portrait_mode:(BOOL)portrait_mode;
- (int)loadModel:(id)model withOptions:(id)options;
- (void)dealloc;
@end

@implementation VCPCNNVisionCoreDetector

- (VCPCNNVisionCoreDetector)initWithOptions:(id)options
{
  v116 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v101.receiver = self;
  v101.super_class = VCPCNNVisionCoreDetector;
  v4 = [(VCPCNNVisionCoreDetector *)&v101 init];
  v5 = v4;
  if (!v4)
  {
    v8 = 0;
    goto LABEL_78;
  }

  v4->_frameCount = 0;
  v79 = [objc_alloc(MEMORY[0x1E69DF970]) initWithMajor:1];
  v6 = [MEMORY[0x1E69DF918] descriptorForIdentifier:*MEMORY[0x1E69DF9C8] version:? objectTrackingEnabled:? segmentationEnabled:? lowFrameRate:? error:?];
  descriptor = v5->_descriptor;
  v5->_descriptor = v6;

  v5->_espressoNetwork.plan = 0;
  v5->_espressoNetwork.network_index = 0;
  if ([(VCPCNNVisionCoreDetector *)v5 loadModel:v5->_descriptor withOptions:optionsCopy])
  {
    v8 = 0;
    goto LABEL_77;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  outputBufferMapping = v5->_outputBufferMapping;
  v5->_outputBufferMapping = dictionary;

  allOutputNames = [(VisionCoreISPInferenceNetworkDescriptor *)v5->_descriptor allOutputNames];
  v11 = [objc_alloc(MEMORY[0x1E69DF940]) initWithCapacity:{objc_msgSend(allOutputNames, "count")}];
  inferenceOutputNamedObjects = v5->_inferenceOutputNamedObjects;
  v5->_inferenceOutputNamedObjects = v11;

  if ((![allOutputNames count] || !allOutputNames) && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector - outputNames nil or empty", buf, 2u);
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = allOutputNames;
  v13 = [(NSArray *)obj countByEnumeratingWithState:&v97 objects:v115 count:16];
  if (v13)
  {
    v78 = *v98;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v98 != v78)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v97 + 1) + 8 * i);
        v16 = [(VisionCoreISPInferenceNetworkDescriptor *)v5->_descriptor outputNamed:v15 error:0];
        v17 = v16;
        if (!v16)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "could not obtain model output", buf, 2u);
          }

          goto LABEL_59;
        }

        v96 = 0;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        *buf = 0u;
        v87 = 0u;
        shape = [v16 shape];
        [shape rank];
        v19 = shape;
        [shape sizes];
        v20 = espresso_buffer_pack_tensor_shape();
        if (v20)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v104 = 67109120;
            *&v104[4] = v20;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed with espresso status %i", v104, 8u);
          }

          goto LABEL_58;
        }

        [v17 dataType];
        LODWORD(v96) = VisionCoreEspressoStorageTypeForTensorDataType();
        v21 = v15;
        [v15 UTF8String];
        if (espresso_network_bind_buffer())
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v73 = _espressoPlanErrorMessage(v5->_espressoNetwork.plan);
            *v104 = 138412290;
            *&v104[4] = v73;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", v104, 0xCu);
          }

LABEL_58:

LABEL_59:
          v8 = 0;
          postProcessingOutputDescriptors = obj;
          goto LABEL_76;
        }

        v22 = objc_opt_new();
        v112 = v94;
        v113 = v95;
        v114 = v96;
        v108 = v90;
        v109 = v91;
        v110 = v92;
        v111 = v93;
        *v104 = *buf;
        v105 = v87;
        v106 = v88;
        v107 = v89;
        [v22 setBuffer:v104];
        [(NSMutableDictionary *)v5->_outputBufferMapping setObject:v22 forKeyedSubscript:obj];
        end = v5->_outputEspressoBuffers.__end_;
        cap = v5->_outputEspressoBuffers.__cap_;
        if (end >= cap)
        {
          begin = v5->_outputEspressoBuffers.__begin_;
          v35 = 0xCF3CF3CF3CF3CF3DLL * ((end - begin) >> 3);
          v36 = v35 + 1;
          if (v35 + 1 > 0x186186186186186)
          {
            std::vector<std::unique_ptr<VCPProtoKeypoint>>::__throw_length_error[abi:ne200100]();
          }

          v37 = 0xCF3CF3CF3CF3CF3DLL * ((cap - begin) >> 3);
          if (2 * v37 > v36)
          {
            v36 = 2 * v37;
          }

          if (v37 >= 0xC30C30C30C30C3)
          {
            v38 = 0x186186186186186;
          }

          else
          {
            v38 = v36;
          }

          if (v38)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<espresso_buffer_t>>(&v5->_outputEspressoBuffers, v38);
          }

          v39 = 168 * v35;
          v40 = *buf;
          v41 = v88;
          *(v39 + 16) = v87;
          *(v39 + 32) = v41;
          *v39 = v40;
          v42 = v89;
          v43 = v90;
          v44 = v92;
          *(v39 + 80) = v91;
          *(v39 + 96) = v44;
          *(v39 + 48) = v42;
          *(v39 + 64) = v43;
          v45 = v93;
          v46 = v94;
          v47 = v95;
          *(v39 + 160) = v96;
          *(v39 + 128) = v46;
          *(v39 + 144) = v47;
          *(v39 + 112) = v45;
          v33 = 168 * v35 + 168;
          v48 = v5->_outputEspressoBuffers.__begin_;
          v49 = v5->_outputEspressoBuffers.__end_ - v48;
          v50 = 168 * v35 - v49;
          memcpy((v39 - v49), v48, v49);
          v51 = v5->_outputEspressoBuffers.__begin_;
          v5->_outputEspressoBuffers.__begin_ = v50;
          v5->_outputEspressoBuffers.__end_ = v33;
          v5->_outputEspressoBuffers.__cap_ = 0;
          if (v51)
          {
            operator delete(v51);
          }
        }

        else
        {
          v25 = *buf;
          v26 = v88;
          *(end + 1) = v87;
          *(end + 2) = v26;
          *end = v25;
          v27 = v89;
          v28 = v90;
          v29 = v92;
          *(end + 5) = v91;
          *(end + 6) = v29;
          *(end + 3) = v27;
          *(end + 4) = v28;
          v30 = v93;
          v31 = v94;
          v32 = v95;
          *(end + 20) = v96;
          *(end + 8) = v31;
          *(end + 9) = v32;
          *(end + 7) = v30;
          v33 = end + 168;
        }

        v5->_outputEspressoBuffers.__end_ = v33;
        v52 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:*(v33 - 168) length:objc_msgSend(v17 freeWhenDone:{"storageByteCount"), 0}];
        if (!v52)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v104 = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector - no output data", v104, 2u);
          }

LABEL_64:
          v74 = 0;
          goto LABEL_79;
        }

        v53 = [(VisionCoreMutableNamedObjects *)v5->_inferenceOutputNamedObjects assignData:v52 toName:v15 error:0];

        if (!v53)
        {
          goto LABEL_64;
        }
      }

      v13 = [(NSArray *)obj countByEnumeratingWithState:&v97 objects:v115 count:16];
    }

    while (v13);
  }

  v55 = v5->_outputEspressoBuffers.__begin_;
  v54 = v5->_outputEspressoBuffers.__end_;
  if (0xCF3CF3CF3CF3CF3DLL * ((v54 - v55) >> 3) != [(NSArray *)obj count]&& MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector - outputBuffers not matching number of descriptors", buf, 2u);
  }

  v103[0] = @"last_mask";
  v103[1] = @"last_salient_mask";
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:2];
  inputMasksNames = v5->_inputMasksNames;
  v5->_inputMasksNames = v56;

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  postProcessingOutputDescriptors = v5->_inputMasksNames;
  v59 = [(NSArray *)postProcessingOutputDescriptors countByEnumeratingWithState:&v82 objects:v102 count:16];
  if (!v59)
  {
    goto LABEL_48;
  }

  v60 = *v83;
  while (2)
  {
    for (j = 0; j != v59; ++j)
    {
      if (*v83 != v60)
      {
        objc_enumerationMutation(postProcessingOutputDescriptors);
      }

      v62 = *(*(&v82 + 1) + 8 * j);
      v63 = [(VisionCoreISPInferenceNetworkDescriptor *)v5->_descriptor inputNamed:v62 error:0];
      v64 = v63;
      if (!v63)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "could not obtain inputDescriptor", buf, 2u);
        }

        goto LABEL_75;
      }

      v96 = 0;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      *buf = 0u;
      v87 = 0u;
      shape2 = [v63 shape];
      [shape2 rank];
      v66 = shape2;
      [shape2 sizes];
      if (espresso_buffer_pack_tensor_shape())
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v75 = _espressoPlanErrorMessage(v5->_espressoNetwork.plan);
          *v104 = 138412290;
          *&v104[4] = v75;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", v104, 0xCu);
        }

        goto LABEL_74;
      }

      [v64 dataType];
      LODWORD(v96) = VisionCoreEspressoStorageTypeForTensorDataType();
      v67 = v62;
      [v62 UTF8String];
      v68 = espresso_network_bind_buffer();
      if (v68)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v104 = 67109120;
          *&v104[4] = v68;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed with espresso status %i", v104, 8u);
        }

LABEL_74:

LABEL_75:
        v8 = 0;
        goto LABEL_76;
      }

      v69 = objc_opt_new();
      v112 = v94;
      v113 = v95;
      v114 = v96;
      v108 = v90;
      v109 = v91;
      v110 = v92;
      v111 = v93;
      *v104 = *buf;
      v105 = v87;
      v106 = v88;
      v107 = v89;
      [v69 setBuffer:v104];
      [(NSMutableDictionary *)v5->_inputBufferMapping setObject:v69 forKeyedSubscript:v62];
    }

    v59 = [(NSArray *)postProcessingOutputDescriptors countByEnumeratingWithState:&v82 objects:v102 count:16];
    if (v59)
    {
      continue;
    }

    break;
  }

LABEL_48:

  postProcessingOutputDescriptors = [(VisionCoreISPInferenceNetworkDescriptor *)v5->_descriptor postProcessingOutputDescriptors];
  v70 = [(VCPCNNVisionCoreDetector *)v5 allocatePostProcessingBuffers:postProcessingOutputDescriptors error:0];
  postProcessingObjects = v5->_postProcessingObjects;
  v5->_postProcessingObjects = v70;

  v5->_personBuffer = [(VisionCoreMutableNamedObjects *)v5->_postProcessingObjects pixelBufferForName:@"$postprocessed$Person" error:0];
  v5->_salientBuffer = [(VisionCoreMutableNamedObjects *)v5->_postProcessingObjects pixelBufferForName:@"$postprocessed$SalientPerson" error:0];
  v5->_skinBuffer = [(VisionCoreMutableNamedObjects *)v5->_postProcessingObjects pixelBufferForName:@"$postprocessed$Skin" error:0];
  v5->_hairBuffer = [(VisionCoreMutableNamedObjects *)v5->_postProcessingObjects pixelBufferForName:@"$postprocessed$Hair" error:0];
  v5->_skyBuffer = [(VisionCoreMutableNamedObjects *)v5->_postProcessingObjects pixelBufferForName:@"$postprocessed$Sky" error:0];
  allOutputNames2 = [(VisionCoreISPInferenceNetworkDescriptor *)v5->_descriptor allOutputNames];
  [allOutputNames2 count];

  v8 = v5;
LABEL_76:

LABEL_77:
LABEL_78:
  v74 = v8;
LABEL_79:

  return v74;
}

- (int)downscaleBuffer:(__CVBuffer *)buffer scaledImage:(__CVBuffer *)image
{
  v4 = -50;
  if (buffer)
  {
    if (image)
    {
      *image = 0;
      Scaler::Scale(&self->_scaler, buffer, image, 512, 384, 1111970369);
      v4 = v6;
      if (v6)
      {
        if (*image)
        {
          CFRelease(*image);
          *image = 0;
        }
      }
    }
  }

  return v4;
}

- (int)loadModel:(id)model withOptions:(id)options
{
  v30 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  optionsCopy = options;
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPCNNVisionCoreDetector creating ANE context", &v26, 2u);
  }

  context = espresso_create_context();
  self->_espressoContext = context;
  if (context)
  {
    v9 = espresso_context_set_low_precision_accumulation();
    if (v9)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector failed to set low precision numerical accumulation", &v26, 2u);
      }

      goto LABEL_33;
    }

    plan = espresso_create_plan();
    v11 = [optionsCopy objectForKeyedSubscript:@"planPriority"];
    v12 = v11 == 0;

    if (!v12)
    {
      v13 = [optionsCopy objectForKeyedSubscript:@"planPriority"];
      if ([v13 intValue] == 1)
      {

LABEL_17:
        v16 = [optionsCopy objectForKeyedSubscript:@"planPriority"];
        intValue = [v16 intValue];

        espresso_plan_set_priority();
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:intValue];
          v26 = 138412290;
          v27 = v18;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPCNNVisionCoreDetector - espresso plan priority is set to %@", &v26, 0xCu);
        }

        goto LABEL_23;
      }

      v14 = [optionsCopy objectForKeyedSubscript:@"planPriority"];
      v15 = [v14 intValue] == 0x2000;

      if (v15)
      {
        goto LABEL_17;
      }

      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v19 = [optionsCopy objectForKeyedSubscript:@"planPriority"];
        intValue2 = [v19 intValue];
        v26 = 67109120;
        LODWORD(v27) = intValue2;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPCNNVisionCoreDetector - invalid input espresso plan priority %d", &v26, 8u);
      }
    }

LABEL_23:
    v21 = [modelCopy URL];
    absoluteString = [v21 absoluteString];

    if (!absoluteString)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v26 = 138412546;
        v27 = modelCopy;
        v28 = 2112;
        v29 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector - could not obtain model file path for %@ - %@", &v26, 0x16u);
      }

      v9 = -18;
      goto LABEL_32;
    }

    v23 = absoluteString;
    [absoluteString UTF8String];
    v9 = espresso_plan_add_network();
    if (v9)
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }
    }

    else
    {
      v9 = espresso_plan_build();
      if (!v9 || MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }
    }

    v24 = _espressoPlanErrorMessage(plan);
    v26 = 138412290;
    v27 = v24;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector - %@", &v26, 0xCu);

LABEL_32:
    goto LABEL_33;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector failed to create ANE context", &v26, 2u);
  }

  v9 = -18;
LABEL_33:

  return v9;
}

- (int)UpdateInputBuffersAndBindPixelBuffer:(__CVBuffer *)buffer
{
  allInputNames = [(VisionCoreISPInferenceNetworkDescriptor *)self->_descriptor allInputNames];
  v6 = [allInputNames count];
  if (allInputNames)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector - inputNames nil or empty", buf, 2u);
    }

    v8 = -50;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E69DF940]) initWithCapacity:{objc_msgSend(allInputNames, "count")}];
    v10 = [(VisionCoreISPInferenceNetworkDescriptor *)self->_descriptor inputNamed:@"input_image" error:0];
    objc_opt_class();
    objc_opt_isKindOfClass();
    name = [v10 name];
    v12 = [v9 assignPixelBuffer:buffer toName:name error:0];

    if (v12)
    {
      name2 = [v10 name];
      [name2 UTF8String];
      v8 = espresso_network_bind_cvpixelbuffer();

      if (v8)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector - Failed to bind pixel buffer", buf, 2u);
        }
      }

      else
      {
        frameCount = self->_frameCount;
        if (frameCount >= 1)
        {
          v15 = [(VisionCoreISPInferenceNetworkDescriptor *)self->_descriptor inputNamed:@"prior_mask" error:0];
          v16 = [(NSMutableDictionary *)self->_inputBufferMapping objectForKeyedSubscript:@"last_mask"];
          v17 = v16;
          if (v16)
          {
            objc_msgSend_buffer(v16);
            v18 = *buf;
          }

          else
          {
            v18 = 0;
            v62 = 0;
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            *buf = 0u;
            v53 = 0u;
          }

          v19 = [(NSMutableDictionary *)self->_outputBufferMapping objectForKeyedSubscript:@"prior_mask"];
          v20 = v19;
          if (v19)
          {
            objc_msgSend_buffer(v19);
            v21 = v30;
          }

          else
          {
            v21 = 0;
            v50 = 0;
            v46 = 0u;
            v48 = 0u;
            v42 = 0u;
            v44 = 0u;
            v38 = 0u;
            v40 = 0u;
            v34 = 0u;
            v36 = 0u;
            v30 = 0u;
            v32 = 0u;
          }

          memcpy(v18, v21, [v15 storageByteCount]);

          v22 = [(VisionCoreISPInferenceNetworkDescriptor *)self->_descriptor inputNamed:@"salient_person_prior_mask" error:0];
          v23 = [(NSMutableDictionary *)self->_inputBufferMapping objectForKeyedSubscript:@"last_salient_mask"];
          v24 = v23;
          if (v23)
          {
            objc_msgSend_buffer(v23);
            v25 = *buf;
          }

          else
          {
            v25 = 0;
            v62 = 0;
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            *buf = 0u;
            v53 = 0u;
          }

          v26 = [(NSMutableDictionary *)self->_outputBufferMapping objectForKeyedSubscript:@"salient_person_prior_mask"];
          v27 = v26;
          if (v26)
          {
            objc_msgSend_buffer(v26);
            v28 = v31;
          }

          else
          {
            v28 = 0;
            v51 = 0;
            v47 = 0u;
            v49 = 0u;
            v43 = 0u;
            v45 = 0u;
            v39 = 0u;
            v41 = 0u;
            v35 = 0u;
            v37 = 0u;
            v31 = 0u;
            v33 = 0u;
          }

          memcpy(v25, v28, [v22 storageByteCount]);

          frameCount = self->_frameCount;
        }

        v8 = 0;
        self->_frameCount = frameCount + 1;
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector - Failed to assign buffer", buf, 2u);
      }

      v8 = -18;
    }
  }

  return v8;
}

- (void)dealloc
{
  if (self->_espressoNetwork.plan)
  {
    espresso_plan_destroy();
  }

  if (self->_espressoContext)
  {
    espresso_context_destroy();
  }

  v3 = [(NSMutableDictionary *)self->_inputBufferMapping objectForKeyedSubscript:@"last_mask"];

  if (v3)
  {
    v4 = [(NSMutableDictionary *)self->_inputBufferMapping objectForKeyedSubscript:@"last_mask"];
    v5 = v4;
    if (v4)
    {
      objc_msgSend_buffer(v4);
      v6 = v25;
    }

    else
    {
      v6 = 0;
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
    }

    free(v6);
  }

  v7 = [(NSMutableDictionary *)self->_inputBufferMapping objectForKeyedSubscript:@"last_salient_mask"];

  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_inputBufferMapping objectForKeyedSubscript:@"last_salient_mask"];
    v9 = v8;
    if (v8)
    {
      objc_msgSend_buffer(v8);
      v10 = v25;
    }

    else
    {
      v10 = 0;
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
    }

    free(v10);
  }

  v11 = [(NSMutableDictionary *)self->_outputBufferMapping objectForKeyedSubscript:@"prior_mask"];

  if (v11)
  {
    v12 = [(NSMutableDictionary *)self->_outputBufferMapping objectForKeyedSubscript:@"prior_mask"];
    v13 = v12;
    if (v12)
    {
      objc_msgSend_buffer(v12);
      v14 = v25;
    }

    else
    {
      v14 = 0;
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
    }

    free(v14);
  }

  v15 = [(NSMutableDictionary *)self->_outputBufferMapping objectForKeyedSubscript:@"salient_person_prior_mask"];

  if (v15)
  {
    v16 = [(NSMutableDictionary *)self->_outputBufferMapping objectForKeyedSubscript:@"salient_person_prior_mask"];
    v17 = v16;
    if (v16)
    {
      objc_msgSend_buffer(v16);
      v18 = v25;
    }

    else
    {
      v18 = 0;
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
    }

    free(v18);
  }

  personBuffer = self->_personBuffer;
  if (personBuffer)
  {
    CFRelease(personBuffer);
  }

  salientBuffer = self->_salientBuffer;
  if (salientBuffer)
  {
    CFRelease(salientBuffer);
  }

  skinBuffer = self->_skinBuffer;
  if (skinBuffer)
  {
    CFRelease(skinBuffer);
  }

  hairBuffer = self->_hairBuffer;
  if (hairBuffer)
  {
    CFRelease(hairBuffer);
  }

  skyBuffer = self->_skyBuffer;
  if (skyBuffer)
  {
    CFRelease(skyBuffer);
  }

  v24.receiver = self;
  v24.super_class = VCPCNNVisionCoreDetector;
  [(VCPCNNVisionCoreDetector *)&v24 dealloc];
}

- (id)allocatePostProcessingBuffers:(id)buffers error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  buffersCopy = buffers;
  v5 = [objc_alloc(MEMORY[0x1E69DF940]) initWithCapacity:{objc_msgSend(buffersCopy, "count")}];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = buffersCopy;
  v6 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v6)
  {
    v7 = *v39;
    v25 = *MEMORY[0x1E69660D8];
    v8 = *MEMORY[0x1E6966020];
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v39 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v38 + 1) + 8 * v9);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
        v44[0] = v25;
        v44[1] = v8;
        v45[0] = MEMORY[0x1E695E0F8];
        v45[1] = &unk_1F49BBBA8;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
        pixelBufferOut[0] = 0;
        CVPixelBufferCreate(0, [v11 pixelWidth], objc_msgSend(v11, "pixelHeight"), objc_msgSend(v11, "pixelFormatType"), v12, pixelBufferOut);
        v13 = pixelBufferOut[0];
        name = [v11 name];
        LOBYTE(v13) = [v5 assignPixelBuffer:v13 toName:name error:error];

        if ((v13 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v37 = 0;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        *pixelBufferOut = 0u;
        v28 = 0u;
        shape = [v10 shape];
        [shape rank];
        v16 = shape;
        [shape sizes];
        v17 = espresso_buffer_pack_tensor_shape();
        [v10 dataType];
        LODWORD(v37) = VisionCoreEspressoStorageTypeForTensorDataType();
        pixelBufferOut[0] = malloc_type_malloc([v10 storageByteCount], 0xF197E84EuLL);
        if (v17)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v43 = v17;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector - Failed with espresso status %i", buf, 8u);
          }

          goto LABEL_22;
        }

        v18 = objc_alloc(MEMORY[0x1E695DEF0]);
        v19 = [v18 initWithBytes:pixelBufferOut[0] length:{objc_msgSend(v10, "storageByteCount")}];
        if (!v19)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector - no input data", buf, 2u);
          }

LABEL_22:

LABEL_23:
          v22 = 0;
          goto LABEL_24;
        }

        name2 = [v10 name];
        v21 = [v5 assignData:v19 toName:name2 error:error];

        if ((v21 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      if (v6 == ++v9)
      {
        v6 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v22 = v5;
LABEL_24:

  return v22;
}

- (id)planExecutionandOutput:()vector<espresso_buffer_t descriptor:(std:(id)descriptor :allocator<espresso_buffer_t>> *)a3
{
  if (espresso_plan_execute_sync())
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "execution not successful", v7, 2u);
    }

    v5 = 0;
  }

  else
  {
    v5 = self->_inferenceOutputNamedObjects;
  }

  return v5;
}

- (id)resultForPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation Error:(id *)error
{
  v6 = *&orientation;
  v69[1] = *MEMORY[0x1E69E9840];
  v9 = mach_absolute_time();
  v10 = VCPSignPostLog(v9);
  v11 = os_signpost_id_generate(v10);

  v13 = VCPSignPostLog(v12);
  v14 = v13;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "VCPCNNVisionCoreDetectorDownscale", "", buf, 2u);
  }

  *buf = 0;
  v15 = [(VCPCNNVisionCoreDetector *)self downscaleBuffer:buffer scaledImage:buf];
  if (v15)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v60 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector - downscaling pixelBuffer failed", v60, 2u);
    }

    if (error)
    {
      v16 = MEMORY[0x1E696ABC0];
      v68 = *MEMORY[0x1E696A578];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VCPCNNVisionCoreDetector - downscaling buffer failed"];
      v69[0] = v17;
      postProcessingOutputDescriptors = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:&v68 count:1];
      v19 = [v16 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:postProcessingOutputDescriptors];
LABEL_21:
      v24 = 0;
      *error = v19;
      goto LABEL_22;
    }
  }

  else
  {
    v20 = VCPSignPostLog(v15);
    v21 = v20;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *v60 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v21, OS_SIGNPOST_INTERVAL_END, v11, "VCPCNNVisionCoreDetectorDownscale", "", v60, 2u);
    }

    if (v9)
    {
      v22 = mach_absolute_time();
      VCPPerformance_LogMeasurement("VCPCNNVisionCoreDetectorDownscale", v22 - v9);
    }

    if (![(VCPCNNVisionCoreDetector *)self UpdateInputBuffersAndBindPixelBuffer:*buf])
    {
      v26 = mach_absolute_time();
      v27 = VCPSignPostLog(v26);
      v28 = os_signpost_id_generate(v27);

      v30 = VCPSignPostLog(v29);
      v31 = v30;
      if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
      {
        *v60 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v28, "VCPCNNVisionCoreDetectorExecution", "", v60, 2u);
      }

      __p = 0;
      v58 = 0;
      v59 = 0;
      std::vector<espresso_buffer_t>::__init_with_size[abi:ne200100]<espresso_buffer_t*,espresso_buffer_t*>(&__p, self->_outputEspressoBuffers.__begin_, self->_outputEspressoBuffers.__end_, 0xCF3CF3CF3CF3CF3DLL * ((self->_outputEspressoBuffers.__end_ - self->_outputEspressoBuffers.__begin_) >> 3));
      v17 = [(VCPCNNVisionCoreDetector *)self planExecutionandOutput:&__p descriptor:self->_descriptor];
      v32 = __p;
      if (__p)
      {
        v58 = __p;
        operator delete(__p);
      }

      v33 = VCPSignPostLog(v32);
      v34 = v33;
      if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
      {
        *v60 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v34, OS_SIGNPOST_INTERVAL_END, v28, "VCPCNNVisionCoreDetectorExecution", "", v60, 2u);
      }

      if (v26)
      {
        v35 = mach_absolute_time();
        VCPPerformance_LogMeasurement("VCPCNNVisionCoreDetectorExecution", v35 - v26);
      }

      v36 = mach_absolute_time();
      v37 = VCPSignPostLog(v36);
      v38 = os_signpost_id_generate(v37);

      v40 = VCPSignPostLog(v39);
      v41 = v40;
      if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
      {
        *v60 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v41, OS_SIGNPOST_INTERVAL_BEGIN, v38, "VCPCNNVisionCoreDetectorPostProcessing", "", v60, 2u);
      }

      postProcessingOutputDescriptors = [(VisionCoreISPInferenceNetworkDescriptor *)self->_descriptor postProcessingOutputDescriptors];
      requiresPostProcessing = [(VisionCoreISPInferenceNetworkDescriptor *)self->_descriptor requiresPostProcessing];
      if (postProcessingOutputDescriptors)
      {
        v43 = 0;
      }

      else
      {
        v43 = requiresPostProcessing;
      }

      if (v43 == 1)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v60 = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector - Descriptor requires post processing - but no postProcessingDescriptors returned", v60, 2u);
        }

        if (!error)
        {
          v24 = 0;
          goto LABEL_22;
        }

        v44 = MEMORY[0x1E696ABC0];
        v64 = *MEMORY[0x1E696A578];
        v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VCPCNNVisionCoreDetector - Descriptor requires post processing - but no postProcessingDescriptors returned"];
        v65 = v45;
        v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        [v44 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v46];
        *error = v24 = 0;
      }

      else
      {
        v47 = objc_alloc(MEMORY[0x1E69DF920]);
        v45 = [v47 initWithInputImageBuffer:*buf inputImageOrientation:v6 inferenceOutputNamedObjects:v17];
        LODWORD(v56) = v6;
        LODWORD(v55) = v6;
        v46 = [objc_alloc(MEMORY[0x1E69DF928]) initWithPostProcessedPersonImageBuffer:self->_personBuffer personImageOrientation:v6 salientPersonImageBuffer:self->_salientBuffer salientPersonImageBufferOrientation:v6 skinImageBuffer:self->_skinBuffer skinImageBufferOrientation:v6 hairImageBuffer:self->_hairBuffer hairImageBufferOrientation:v55 skyImageBuffer:self->_skyBuffer skyImageBufferOrientation:v56];
        v48 = [(VisionCoreISPInferenceNetworkDescriptor *)self->_descriptor performPostProcessingForInput:v45 postProcessingOutput:v46 error:error];
        if (v48)
        {
          v49 = VCPSignPostLog(v48);
          v50 = v49;
          if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
          {
            *v60 = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v50, OS_SIGNPOST_INTERVAL_END, v38, "VCPCNNVisionCoreDetectorPostProcessing", "", v60, 2u);
          }

          if (v36)
          {
            v51 = mach_absolute_time();
            VCPPerformance_LogMeasurement("VCPCNNVisionCoreDetectorPostProcessing", v51 - v36);
          }

          v46 = v46;
          v24 = v46;
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *v60 = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector - ISP post processing failure", v60, 2u);
          }

          if (error)
          {
            v52 = MEMORY[0x1E696ABC0];
            v62 = *MEMORY[0x1E696A578];
            v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VCPCNNVisionCoreDetector - ISP post processing failure"];
            v63 = v53;
            v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
            *error = [v52 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v54];
          }

          v24 = 0;
        }
      }

LABEL_22:
      goto LABEL_24;
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v60 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPCNNVisionCoreDetector - update input buffers and binding buffer failed", v60, 2u);
    }

    if (error)
    {
      v23 = MEMORY[0x1E696ABC0];
      v66 = *MEMORY[0x1E696A578];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VCPCNNVisionCoreDetector - update input buffers and binding buffer failed"];
      v67 = v17;
      postProcessingOutputDescriptors = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
      v19 = [v23 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:postProcessingOutputDescriptors];
      goto LABEL_21;
    }
  }

  v24 = 0;
LABEL_24:
  CF<__CVBuffer *>::~CF(buf);

  return v24;
}

- (int)getHandsRegions:(id)regions fromVisionCorePostProcessingOutput:(id)output imageWidth:(int)width imageHeight:(int)height extendRatio:(float)ratio portrait_mode:(BOOL)portrait_mode
{
  portrait_modeCopy = portrait_mode;
  v85 = *MEMORY[0x1E69E9840];
  regionsCopy = regions;
  [output hands];
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  obj = v69 = 0u;
  v14 = [obj countByEnumeratingWithState:&v68 objects:v84 count:16];
  if (v14)
  {
    widthCopy = width;
    heightCopy = height;
    v17 = *v69;
    v18 = vcvts_n_f32_s32(width, 9uLL);
    v19 = (height / 384.0);
    v67 = ratio + 1.0;
    v65 = 134219264;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v69 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v68 + 1) + 8 * i);
        groupID = [v21 groupID];
        [v21 boundingBox];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;
        chirality = [v21 chirality];
        if (chirality == 1)
        {
          v32 = 0xFFFFFFFFLL;
        }

        else
        {
          v32 = chirality == 2;
        }

        confidence = [v21 confidence];
        v34 = v28 * v18 * 0.5;
        v35 = v30 * v19 * 0.5;
        v36 = v34 + v24 * v18;
        v37 = v35 + v26 * v19;
        if (v34 < v35)
        {
          v34 = v30 * v19 * 0.5;
        }

        v38 = v67 * v34;
        v39 = v36 - v38;
        if ((v36 - v38) < 0.0)
        {
          v39 = 0.0;
        }

        v40 = v37 - v38;
        if ((v37 - v38) < 0.0)
        {
          v40 = 0.0;
        }

        v41 = v38 + v36;
        if (v41 > widthCopy)
        {
          v41 = widthCopy;
        }

        heightCopy2 = v38 + v37;
        v43 = v39 / widthCopy;
        if (heightCopy2 > heightCopy)
        {
          heightCopy2 = height;
        }

        v44 = v41 - v39;
        v45 = v40 / heightCopy;
        v46 = v44 / widthCopy;
        v47 = (heightCopy2 - v40) / heightCopy;
        if (portrait_modeCopy)
        {
          v48 = (1.0 - v43) - v46;
          v43 = v40 / heightCopy;
          if (v48 >= 0.0)
          {
            v45 = v48;
          }

          else
          {
            v45 = 0.0;
          }

          v49 = v47;
        }

        else
        {
          v49 = v44 / widthCopy;
          v46 = v47;
        }

        v50 = [VCPBoundingBox alloc];
        *&v51 = confidence;
        *&v52 = v43;
        *&v53 = v45;
        *&v54 = v49;
        *&v55 = v46;
        v56 = [(VCPBoundingBox *)v50 initWithXYAndSize:v52 y:v53 width:v54 height:v55 confidence:v51];
        [(VCPBoundingBox *)v56 setClassIndex:v32];
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          [(VCPBoundingBox *)v56 minX];
          v58 = v57;
          [(VCPBoundingBox *)v56 minY];
          v60 = v59;
          [(VCPBoundingBox *)v56 maxX];
          v62 = v61;
          [(VCPBoundingBox *)v56 maxY];
          *buf = v65;
          v73 = v58;
          v74 = 2048;
          v75 = v60;
          v76 = 2048;
          v77 = v62;
          v78 = 2048;
          v79 = v63;
          v80 = 1024;
          v81 = v32;
          v82 = 2048;
          v83 = groupID;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPCNNVisionCoreDetector: using VisionCore box (xyxy, chirality) = [%f, %f, %f, %f, %d], groupID = %lu", buf, 0x3Au);
        }

        [(VCPBoundingBox *)v56 setGroupID:groupID];
        [regionsCopy addObject:v56];
      }

      v14 = [obj countByEnumeratingWithState:&v68 objects:v84 count:16];
    }

    while (v14);
  }

  return 0;
}

- (int)getBodyRegions:(id)regions fromVisionCorePostProcessingOutput:(id)output imageWidth:(int)width imageHeight:(int)height extendRatio:(float)ratio portrait_mode:(BOOL)portrait_mode
{
  portrait_modeCopy = portrait_mode;
  v81 = *MEMORY[0x1E69E9840];
  regionsCopy = regions;
  fullBodyResults = [output fullBodyResults];
  if (portrait_modeCopy)
  {
    heightCopy = width;
  }

  else
  {
    heightCopy = height;
  }

  v68 = 0u;
  v69 = 0u;
  if (portrait_modeCopy)
  {
    widthCopy2 = height;
  }

  else
  {
    widthCopy2 = width;
  }

  v66 = 0uLL;
  v67 = 0uLL;
  obj = fullBodyResults;
  v17 = [obj countByEnumeratingWithState:&v66 objects:v80 count:16];
  if (v17)
  {
    v18 = vcvts_n_f32_s32(widthCopy2, 9uLL);
    v19 = *v67;
    v65 = v18;
    v20 = (heightCopy / 384.0);
    heightCopy3 = height;
    v22 = ratio + 1.0;
    widthCopy3 = width;
    v63 = 134219008;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v67 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v66 + 1) + 8 * i);
        groupID = [v25 groupID];
        [v25 boundingBox];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;
        confidence = [v25 confidence];
        v36 = v32 * v65;
        v37 = v34 * v20;
        v38 = v28 * v65;
        v39 = v30 * v20;
        if (portrait_modeCopy)
        {
          v40 = heightCopy3 - v38;
          v38 = v30 * v20;
          v39 = v40 - v36;
          v41 = v37;
        }

        else
        {
          v41 = v36;
          v36 = v37;
        }

        v42 = [VCPBoundingBox alloc];
        *&v45 = (v36 * 0.5) + v39;
        *&v46 = v22 * (v36 * 0.5);
        *&v47 = *&v46 + *&v45;
        if ((*&v46 + *&v45) > heightCopy3)
        {
          *&v47 = height;
        }

        v48 = *&v45 - *&v46;
        v49 = 0.0;
        if (v48 >= 0.0)
        {
          *&v43 = v48;
        }

        else
        {
          *&v43 = 0.0;
        }

        v50 = (v41 * 0.5) + v38;
        v51 = v22 * (v41 * 0.5);
        widthCopy4 = v51 + v50;
        if ((v51 + v50) > widthCopy3)
        {
          widthCopy4 = width;
        }

        v53 = v50 - v51;
        if (v53 >= 0.0)
        {
          v49 = v53;
        }

        *&v45 = *&v43 / heightCopy3;
        *&v46 = v49 / widthCopy3;
        *&v43 = (*&v47 - *&v43) / heightCopy3;
        *&v47 = (widthCopy4 - v49) / widthCopy3;
        *&v44 = confidence;
        v54 = [(VCPBoundingBox *)v42 initWithXYAndSize:v46 y:v45 width:v47 height:v43 confidence:v44];
        [(VCPBoundingBox *)v54 setGroupID:groupID];
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          [(VCPBoundingBox *)v54 minX];
          v56 = v55;
          [(VCPBoundingBox *)v54 minY];
          v58 = v57;
          [(VCPBoundingBox *)v54 maxX];
          v60 = v59;
          [(VCPBoundingBox *)v54 maxY];
          *buf = v63;
          v71 = v56;
          v72 = 2048;
          v73 = v58;
          v74 = 2048;
          v75 = v60;
          v76 = 2048;
          v77 = v61;
          v78 = 2048;
          v79 = groupID;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPCNNVisionCoreDetector: person fullbody box (xyxy) = [%f, %f, %f, %f], groupID = %lu", buf, 0x34u);
        }

        [regionsCopy addObject:v54];
      }

      v17 = [obj countByEnumeratingWithState:&v66 objects:v80 count:16];
    }

    while (v17);
  }

  return 0;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 14) = 0;
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 13) = 0;
  return self;
}

@end