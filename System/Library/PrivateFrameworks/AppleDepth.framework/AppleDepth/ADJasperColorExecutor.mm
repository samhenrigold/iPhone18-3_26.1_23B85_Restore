@interface ADJasperColorExecutor
+ (id)defaults;
- (ADJasperColorExecutor)initWithInputPrioritization:(int64_t)prioritization;
- (ADJasperColorExecutor)initWithInputPrioritization:(int64_t)prioritization parameters:(id)parameters;
- (id)getIntermediates;
- (int)copyConfidenceAllowPixelFormatChange:(__CVBuffer *)change outputConfidence:(__CVBuffer *)confidence;
- (int)rotateConfidenceAllowPixelFormatChange:(__CVBuffer *)PixelBufferNoCopy rotation:(int64_t)rotation outputConfidence:(__CVBuffer *)confidence;
- (int64_t)allocateIntermediateBuffers;
- (int64_t)executeWithColor:(float32x4_t)color colorCameraCalibration:(float32x4_t)calibration colorWorldToPlatformTransform:(float32x4_t)transform pointClouds:(uint64_t)clouds lidarCameraCalibration:(__CVBuffer *)cameraCalibration pointCloudWorldToPlatformTransforms:(void *)transforms outDepthMap:(void *)map outConfMap:(void *)self0 outNonTemporalyConsistentDepthMap:(uint64_t)self1 outNonTemporalyConsistentConfMap:(CVPixelBufferRef *)self2 outConfidenceLevels:(__CVBuffer *)self3;
- (int64_t)numberOfExecutionSteps;
- (int64_t)prepareForEngineType:(unint64_t)type roi:(CGRect)roi exifOrientation:(unsigned int)orientation rotationPreference:(unint64_t)preference;
- (int64_t)prepareForEngineType:(unint64_t)type roi:(CGRect)roi exifOrientation:(unsigned int)orientation useTemporalConsistency:(BOOL)consistency;
- (int64_t)prepareForEngineType:(unint64_t)type roi:(CGRect)roi exifOrientation:(unsigned int)orientation useTemporalConsistency:(BOOL)consistency rotationPreference:(unint64_t)preference;
- (void)dealloc;
- (void)deallocateEspressoBuffers;
- (void)executeWithColor:(double)color colorCameraCalibration:(double)calibration colorWorldToPlatformTransform:(double)transform pointCloud:(uint64_t)cloud outDepthMap:(uint64_t)map outConfMap:(void *)confMap outNonTemporalyConsistentDepthMap:(void *)depthMap outNonTemporalyConsistentConfMap:(uint64_t)self0 outConfidenceLevels:(uint64_t)self1;
- (void)executeWithColor:(double)color pointCloud:(double)cloud outDepthMap:(double)map outConfMap:(uint64_t)confMap worldToCameraTransform:(uint64_t)transform cameraCalibration:(void *)calibration;
@end

@implementation ADJasperColorExecutor

- (int64_t)numberOfExecutionSteps
{
  executorParameters = [(ADExecutor *)self executorParameters];
  temporalConsistencyMethod = [executorParameters temporalConsistencyMethod];

  if (temporalConsistencyMethod == 2)
  {
    return 7;
  }

  executorParameters2 = [(ADExecutor *)self executorParameters];
  temporalConsistencyMethod2 = [executorParameters2 temporalConsistencyMethod];

  if (temporalConsistencyMethod2 == 1)
  {
    return 8;
  }

  else
  {
    return 5;
  }
}

- (id)getIntermediates
{
  v58[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  inferenceDescriptor = [(ADJasperColorPipeline *)self->_pipeline inferenceDescriptor];
  colorInput = [inferenceDescriptor colorInput];
  v6 = [(ADExecutor *)self inferencePixelBufferForDescriptor:colorInput inputUserBuffer:0];

  if (v6)
  {
    v57[0] = @"name";
    v57[1] = @"image";
    v58[0] = @"PreProcessed Color";
    v58[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
    [v3 addObject:v7];
  }

  itmPreProcessedJasper = self->_itmPreProcessedJasper;
  if (itmPreProcessedJasper)
  {
    v55[0] = @"name";
    v55[1] = @"image";
    v56[0] = @"PreProcessed Jasper";
    v56[1] = itmPreProcessedJasper;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
    [v3 addObject:v9];
  }

  itmUnprocessedDepth = self->_itmUnprocessedDepth;
  if (itmUnprocessedDepth)
  {
    v53[0] = @"name";
    v53[1] = @"image";
    v54[0] = @"Unprocessed Depth";
    v54[1] = itmUnprocessedDepth;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
    [v3 addObject:v11];
  }

  itmPostProcessedDepth = self->_itmPostProcessedDepth;
  if (itmPostProcessedDepth)
  {
    v51[0] = @"name";
    v51[1] = @"image";
    v52[0] = @"PostProcessed Depth";
    v52[1] = itmPostProcessedDepth;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
    [v3 addObject:v13];
  }

  itmUnprocessedConf = self->_itmUnprocessedConf;
  if (itmUnprocessedConf)
  {
    v49[0] = @"name";
    v49[1] = @"image";
    v50[0] = @"Unprocessed Conf";
    v50[1] = itmUnprocessedConf;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
    [v3 addObject:v15];
  }

  itmPostProcessedConf = self->_itmPostProcessedConf;
  if (itmPostProcessedConf)
  {
    v47[0] = @"name";
    v47[1] = @"image";
    v48[0] = @"PostProcessed Conf";
    v48[1] = itmPostProcessedConf;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
    [v3 addObject:v17];
  }

  itmOpticalFlow = self->_itmOpticalFlow;
  if (itmOpticalFlow)
  {
    v45[0] = @"name";
    v45[1] = @"image";
    v46[0] = @"Optical Flow";
    v46[1] = itmOpticalFlow;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
    [v3 addObject:v19];
  }

  itmPrevProcessedFusedDepth = self->_itmPrevProcessedFusedDepth;
  if (itmPrevProcessedFusedDepth)
  {
    v43[0] = @"name";
    v43[1] = @"image";
    v44[0] = @"Prev Processed Fused Depth";
    v44[1] = itmPrevProcessedFusedDepth;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
    [v3 addObject:v21];
  }

  itmCurrProcessedFusedDepth = self->_itmCurrProcessedFusedDepth;
  if (itmCurrProcessedFusedDepth)
  {
    v41[0] = @"name";
    v41[1] = @"image";
    v42[0] = @"Curr Processed Fused Depth";
    v42[1] = itmCurrProcessedFusedDepth;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
    [v3 addObject:v23];
  }

  itmPrevProcessedFusedConf = self->_itmPrevProcessedFusedConf;
  if (itmPrevProcessedFusedConf)
  {
    v39[0] = @"name";
    v39[1] = @"image";
    v40[0] = @"Prev Processed Fused conf";
    v40[1] = itmPrevProcessedFusedConf;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
    [v3 addObject:v25];
  }

  itmCurrProcessedFusedConf = self->_itmCurrProcessedFusedConf;
  if (itmCurrProcessedFusedConf)
  {
    v37[0] = @"name";
    v37[1] = @"image";
    v38[0] = @"Curr Processed Fused conf";
    v38[1] = itmCurrProcessedFusedConf;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    [v3 addObject:v27];
  }

  itmWarpedPrevDepth = self->_itmWarpedPrevDepth;
  if (itmWarpedPrevDepth)
  {
    v35[0] = @"name";
    v35[1] = @"image";
    v36[0] = @"Prev Processed warped Depth";
    v36[1] = itmWarpedPrevDepth;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
    [v3 addObject:v29];
  }

  itmWarpedPrevConf = self->_itmWarpedPrevConf;
  if (itmWarpedPrevConf)
  {
    v33[0] = @"name";
    v33[1] = @"image";
    v34[0] = @"Prev Processed warped conf";
    v34[1] = itmWarpedPrevConf;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
    [v3 addObject:v31];
  }

  return v3;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_itmPreProcessedJasper);
  CVPixelBufferRelease(self->_itmUnprocessedDepth);
  CVPixelBufferRelease(self->_itmPostProcessedDepth);
  CVPixelBufferRelease(self->_itmUnprocessedConf);
  CVPixelBufferRelease(self->_itmPostProcessedConf);
  CVPixelBufferRelease(self->_itmOpticalFlow);
  CVPixelBufferRelease(self->_itmPrevProcessedFusedDepth);
  CVPixelBufferRelease(self->_itmPrevProcessedFusedConf);
  CVPixelBufferRelease(self->_itmCurrProcessedFusedConf);
  CVPixelBufferRelease(self->_itmWarpedPrevDepth);
  CVPixelBufferRelease(self->_itmWarpedPrevConf);
  CVPixelBufferRelease(self->_itmCurrProcessedFusedDepth);
  colorProcessingSession = self->_colorProcessingSession;
  if (colorProcessingSession)
  {
    PixelBufferUtilsSession::~PixelBufferUtilsSession(colorProcessingSession);
    MEMORY[0x245CBFCB0]();
  }

  v4.receiver = self;
  v4.super_class = ADJasperColorExecutor;
  [(ADExecutor *)&v4 dealloc];
}

- (int)copyConfidenceAllowPixelFormatChange:(__CVBuffer *)change outputConfidence:(__CVBuffer *)confidence
{
  PixelBufferNoCopy = change;
  PixelFormatType = CVPixelBufferGetPixelFormatType(change);
  v7 = CVPixelBufferGetPixelFormatType(confidence);
  v8 = PixelBufferUtils::pixelSizeForPixelFormat(PixelFormatType, 0);
  v9 = 0;
  if (v8 == PixelBufferUtils::pixelSizeForPixelFormat(v7, 0) && PixelFormatType != v7)
  {
    PixelBufferNoCopy = PixelBufferUtils::createPixelBufferNoCopy(PixelBufferNoCopy, v7, *MEMORY[0x277CBF398]);
    v9 = PixelBufferNoCopy;
  }

  v10 = PixelBufferUtils::copyPixelBuffer(confidence, PixelBufferNoCopy, 1);
  CVPixelBufferRelease(v9);
  return v10;
}

- (int)rotateConfidenceAllowPixelFormatChange:(__CVBuffer *)PixelBufferNoCopy rotation:(int64_t)rotation outputConfidence:(__CVBuffer *)confidence
{
  if (CVPixelBufferGetPixelFormatType(confidence) == 1717855600)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(confidence);
    PixelBufferNoCopy = PixelBufferUtils::createPixelBufferNoCopy(PixelBufferNoCopy, PixelFormatType, *MEMORY[0x277CBF398]);
    v9 = PixelBufferNoCopy;
  }

  else
  {
    v9 = 0;
  }

  v10 = PixelBufferUtils::rotatePixelBuffer(PixelBufferNoCopy, confidence, rotation, 0);
  CVPixelBufferRelease(v9);
  return v10;
}

- (int64_t)executeWithColor:(float32x4_t)color colorCameraCalibration:(float32x4_t)calibration colorWorldToPlatformTransform:(float32x4_t)transform pointClouds:(uint64_t)clouds lidarCameraCalibration:(__CVBuffer *)cameraCalibration pointCloudWorldToPlatformTransforms:(void *)transforms outDepthMap:(void *)map outConfMap:(void *)self0 outNonTemporalyConsistentDepthMap:(uint64_t)self1 outNonTemporalyConsistentConfMap:(CVPixelBufferRef *)self2 outConfidenceLevels:(__CVBuffer *)self3
{
  v180[1] = *MEMORY[0x277D85DE8];
  transformsCopy = transforms;
  mapCopy = map;
  confMapCopy = confMap;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v177 = 335684428;
  v178 = 0u;
  v179 = 0u;
  obj = selfCopy;
  v163 = mapCopy;
  kdebug_trace();
  if (!selfCopy[7])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(pixelBufferOut[0]) = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "must call prepare before execution", pixelBufferOut, 2u);
    }

    execute = -22960;
    goto LABEL_122;
  }

  if (!consistentConfMap)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(pixelBufferOut[0]) = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "must provide a pointer to CVPixelBufferRef", pixelBufferOut, 2u);
    }

    execute = -22953;
    goto LABEL_122;
  }

  v24 = selfCopy + 1;
  if (CGRectIsEmpty(*(selfCopy + 1)))
  {
    Width = CVPixelBufferGetWidth(cameraCalibration);
    Height = CVPixelBufferGetHeight(cameraCalibration);
    *v24 = 0;
    v24[1] = 0;
    *(obj + 3) = Width;
    *(obj + 4) = Height;
  }

  v27 = *(obj + 9);
  if (v27 == 3)
  {
    v27 = 1;
    pixelBuffer = cameraCalibration;
    if (levels)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v27 == 1)
    {
      v27 = 3;
    }

    pixelBuffer = cameraCalibration;
    if (levels)
    {
LABEL_9:
      v28 = *levels;
      if (!*levels)
      {
        processedDepthOutputDescriptor = [*(obj + 44) processedDepthOutputDescriptor];
        [processedDepthOutputDescriptor sizeForLayout:{objc_msgSend(obj, "layout")}];
        if ((v27 | 2) == 3)
        {
          v32 = v31;
        }

        else
        {
          v32 = v30;
        }

        if ((v27 | 2) == 3)
        {
          v33 = v30;
        }

        else
        {
          v33 = v31;
        }

        processedConfidenceOutputDescriptor = [*(obj + 44) processedConfidenceOutputDescriptor];
        pixelFormat = [processedConfidenceOutputDescriptor pixelFormat];
        pixelBufferOut[0] = 0;
        BufferAttributes = getBufferAttributes();
        v37 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], v32, v33, pixelFormat, BufferAttributes, pixelBufferOut);
        v38 = pixelBufferOut[0];
        if (v37)
        {
          v38 = 0;
        }

        *levels = v38;

        v28 = *levels;
      }

      v39 = *consistentConfMap;
      if (*consistentConfMap)
      {
        goto LABEL_38;
      }

      goto LABEL_29;
    }
  }

  v28 = 0;
  v39 = *consistentConfMap;
  if (!*consistentConfMap)
  {
LABEL_29:
    processedDepthOutputDescriptor2 = [*(obj + 44) processedDepthOutputDescriptor];
    [processedDepthOutputDescriptor2 sizeForLayout:{objc_msgSend(obj, "layout")}];
    if ((v27 | 2) == 3)
    {
      v44 = v43;
    }

    else
    {
      v44 = v42;
    }

    if ((v27 | 2) == 3)
    {
      v45 = v42;
    }

    else
    {
      v45 = v43;
    }

    processedDepthOutputDescriptor3 = [*(obj + 44) processedDepthOutputDescriptor];
    pixelFormat2 = [processedDepthOutputDescriptor3 pixelFormat];
    pixelBufferOut[0] = 0;
    v48 = getBufferAttributes();
    v49 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], v44, v45, pixelFormat2, v48, pixelBufferOut);
    v50 = pixelBufferOut[0];
    if (v49)
    {
      v50 = 0;
    }

    *consistentConfMap = v50;

    v39 = *consistentConfMap;
  }

LABEL_38:
  executorParameters = [obj executorParameters];
  logger = [executorParameters logger];

  processInfo = [MEMORY[0x277CCAC38] processInfo];
  [processInfo systemUptime];
  v54 = v53;

  [logger logPixelBuffer:pixelBuffer name:"inputColor" timestamp:v54];
  v152 = v27;
  v153 = v39;
  consistentConfMapCopy = consistentConfMap;
  v154 = v28;
  for (i = 0; [mapCopy count] > i; ++i)
  {
    v56 = [mapCopy objectAtIndexedSubscript:i];
    *(&v174.__r_.__value_.__s + 23) = 15;
    strcpy(&v174, "inputPointCloud");
    std::to_string(&__p, i);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v59 = std::string::append(&v174, p_p, size);
    v60 = *&v59->__r_.__value_.__l.__data_;
    v176 = v59->__r_.__value_.__r.__words[2];
    *pixelBufferOut = v60;
    v59->__r_.__value_.__l.__size_ = 0;
    v59->__r_.__value_.__r.__words[2] = 0;
    v59->__r_.__value_.__r.__words[0] = 0;
    if (v176 >= 0)
    {
      v61 = pixelBufferOut;
    }

    else
    {
      v61 = pixelBufferOut[0];
    }

    [logger logPointCloud:v56 name:v61 timestamp:v54];
    if (SHIBYTE(v176) < 0)
    {
      operator delete(pixelBufferOut[0]);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_68:
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v174.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_69;
      }
    }

    else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_68;
    }

    if ((SHIBYTE(v174.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

LABEL_69:
    operator delete(v174.__r_.__value_.__l.__data_);
LABEL_54:

    if (!depthMap)
    {
      goto LABEL_40;
    }

    v62 = (depthMap + (i << 6));
    v167 = v62[1];
    v169 = *v62;
    v164 = v62[3];
    v165 = v62[2];
    *(&v174.__r_.__value_.__s + 23) = 19;
    strcpy(&v174, "inputPointCloudPose");
    std::to_string(&__p, i);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v63 = &__p;
    }

    else
    {
      v63 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v64 = __p.__r_.__value_.__l.__size_;
    }

    v65 = std::string::append(&v174, v63, v64);
    v66 = *&v65->__r_.__value_.__l.__data_;
    v176 = v65->__r_.__value_.__r.__words[2];
    *pixelBufferOut = v66;
    v65->__r_.__value_.__l.__size_ = 0;
    v65->__r_.__value_.__r.__words[2] = 0;
    v65->__r_.__value_.__r.__words[0] = 0;
    if (v176 >= 0)
    {
      v67 = pixelBufferOut;
    }

    else
    {
      v67 = pixelBufferOut[0];
    }

    [logger logMatrix4x4:v67 name:*&v169 timestamp:{*&v167, *&v165, *&v164, v54}];
    if (SHIBYTE(v176) < 0)
    {
      operator delete(pixelBufferOut[0]);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_71:
        if ((SHIBYTE(v174.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_72;
      }
    }

    else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v174.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

LABEL_72:
    operator delete(v174.__r_.__value_.__l.__data_);
LABEL_40:
    mapCopy = v163;
  }

  if (!mapCopy)
  {
    v70 = 0;
    goto LABEL_81;
  }

  if (confMapCopy)
  {
    if (transformsCopy && depthMap)
    {
      [logger logCalibration:confMapCopy name:"inputPointCloudCalibration" timestamp:v54];
      [logger logCalibration:transformsCopy name:"inputColorCalibration" timestamp:v54];
      [logger logMatrix4x4:"inputColorPose" name:*a2.i64 timestamp:{*color.i64, *calibration.i64, *transform.i64, v54}];
      v68 = MEMORY[0x277CED0F8];
      v180[0] = confMapCopy;
      v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v180 count:1];
      v70 = [v68 aggregatePointClouds:mapCopy calibrations:v69 worldToPlatformTransforms:depthMap projectingToCamera:transformsCopy worldToPlatformAtProjectionTime:{*a2.i64, *color.i64, *calibration.i64, *transform.i64}];

      goto LABEL_81;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(pixelBufferOut[0]) = 0;
      v86 = MEMORY[0x277D86220];
      v87 = "cannot aggregate and project point clouds without color calibration and world transform data";
      goto LABEL_128;
    }

LABEL_106:
    execute = -22953;
    goto LABEL_121;
  }

  if ([mapCopy count] == 1)
  {
    v70 = [mapCopy objectAtIndexedSubscript:0];
LABEL_81:
    [logger logPointCloud:v70 name:"intermediateAggregatedPointCloud" priority:1 timestamp:v54];
    v71 = *(obj + 43);
    if (v71)
    {
      v72 = [v71 pointCloudByRemovingPeridotShortRangeOccludedPoints:v70];

      [logger logPointCloud:v72 name:"intermediateAggregatedPointCloudRefined" priority:1 timestamp:v54];
    }

    else
    {
      v72 = v70;
    }

    v166 = *(obj + 9);
    executorParameters2 = [obj executorParameters];
    temporalConsistencyMethod = [executorParameters2 temporalConsistencyMethod];

    executorParameters3 = [obj executorParameters];
    if ([executorParameters3 temporalConsistencyMethod] == 2)
    {
      v75 = obj[257];

      if ((v75 & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LOWORD(pixelBufferOut[0]) = 0;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "cannot re-enable optical flow temporal consistency after executor was prepared without it.", pixelBufferOut, 2u);
        }

        execute = -22951;
        goto LABEL_121;
      }
    }

    else
    {
    }

    inferenceDescriptor = [*(obj + 44) inferenceDescriptor];
    colorInput = [inferenceDescriptor colorInput];
    v78 = [obj inferencePixelBufferForDescriptor:colorInput inputUserBuffer:pixelBuffer];

    if (!v78)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LOWORD(pixelBufferOut[0]) = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed allocating color input", pixelBufferOut, 2u);
      }

      execute = -22950;
      goto LABEL_121;
    }

    executorParameters4 = [obj executorParameters];
    stepsToExecute = [executorParameters4 stepsToExecute];

    executorParameters5 = [obj executorParameters];
    timeProfiler = [executorParameters5 timeProfiler];

    if (stepsToExecute < 1)
    {
      goto LABEL_112;
    }

    kdebug_trace();
    [timeProfiler startWithUTFString:"preprocess color"];
    [obj frameExecutionStart];
    if (v78 == pixelBuffer)
    {
      goto LABEL_111;
    }

    v82 = *(obj + 19);
    if (v82)
    {
      if (pixelBuffer)
      {
        v83 = *(v82 + 40);
        v85 = *(v82 + 24);
        v84 = *(v82 + 32);
        if (v85 == CVPixelBufferGetWidth(pixelBuffer) && v84 == CVPixelBufferGetHeight(pixelBuffer) && CVPixelBufferGetPixelFormatType(pixelBuffer) == v83 && PixelBufferUtilsSession::verifyOutput(*(obj + 19), v78))
        {
          v95 = PixelBufferUtilsSession::run(*(obj + 19), pixelBuffer, v78);
          if ((v95 & 1) == 0)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              LOWORD(pixelBufferOut[0]) = 0;
              _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed scaling color image", pixelBufferOut, 2u);
            }

            execute = -22950;
            goto LABEL_120;
          }

LABEL_111:
          [logger logPixelBuffer:v78 name:"modelInputColor" timestamp:v54];
          [timeProfiler stopWithUTFString:"preprocess color"];
          kdebug_trace();
          if (stepsToExecute == 1)
          {
            goto LABEL_112;
          }

          kdebug_trace();
          [timeProfiler startWithUTFString:"preprocess jasper"];
          execute = [*(obj + 44) projectJasperPoints:v72 cropTo:*(obj + 9) rotateBy:*(obj + 20) projectedPointsBuffer:{*(obj + 1), *(obj + 2), *(obj + 3), *(obj + 4)}];
          if (execute)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              LOWORD(pixelBufferOut[0]) = 0;
              v96 = MEMORY[0x277D86220];
              v97 = "failed projecting jasper points";
              goto LABEL_116;
            }

LABEL_120:

            goto LABEL_121;
          }

          [logger logPixelBuffer:*(obj + 20) name:"modelInputProjectedPointCloud" timestamp:v54];
          [timeProfiler stopWithUTFString:"preprocess jasper"];
          kdebug_trace();
          if (stepsToExecute >= 3)
          {
            kdebug_trace();
            [timeProfiler startWithUTFString:"network execution"];
            execute = [*(obj + 7) execute];
            if (execute)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_120;
              }

              LOWORD(pixelBufferOut[0]) = 0;
              v96 = MEMORY[0x277D86220];
              v97 = "failed executing espresso plan";
              goto LABEL_116;
            }

            [logger logPixelBuffer:*(obj + 21) name:"modelOutputDepth" timestamp:v54];
            [logger logPixelBuffer:*(obj + 23) name:"modelOutputUncertainty" timestamp:v54];
            if (!temporalConsistencyMethod || !a14 || (v100 = a15, v99 = a14, v166))
            {
              v99 = v153;
              v100 = v154;
              if (temporalConsistencyMethod | v166)
              {
                v99 = *(obj + 22);
                v100 = *(obj + 24);
              }
            }

            [timeProfiler stopWithUTFString:"network execution"];
            kdebug_trace();
            if (stepsToExecute != 3)
            {
              kdebug_trace();
              [timeProfiler startWithUTFString:"postprocess depth"];
              execute = [*(obj + 44) postProcessWithDepth:*(obj + 21) confidence:*(obj + 23) depthOutput:v99 confidenceOutput:v100];
              if (execute)
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_120;
                }

                LOWORD(pixelBufferOut[0]) = 0;
                v96 = MEMORY[0x277D86220];
                v97 = "failed postprocessing depth";
LABEL_116:
                _os_log_error_impl(&dword_2402F6000, v96, OS_LOG_TYPE_ERROR, v97, pixelBufferOut, 2u);
                goto LABEL_120;
              }

              [logger logPixelBuffer:v99 name:"intermediateDepthOutProcessed" priority:1 timestamp:v54];
              [logger logPixelBuffer:v100 name:"intermediateConfidenceOutProcessed" priority:1 timestamp:v54];
              v150 = v99;
              v101 = stepsToExecute - 4;
              if (!temporalConsistencyMethod)
              {
                v104 = 0;
                v105 = "postprocess depth";
                goto LABEL_145;
              }

              executorParameters6 = [obj executorParameters];
              v103 = [executorParameters6 temporalConsistencyMethod] == 2;

              if (v103)
              {
                execute = [*(obj + 18) executeWithFrame:v78 intoOpticalFlowBuffer:*(obj + 27)];
                if (execute)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    LOWORD(pixelBufferOut[0]) = 0;
                    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed running lktExecutor", pixelBufferOut, 2u);
                  }

                  v104 = 0;
                  goto LABEL_230;
                }

                v104 = 0;
                [logger logPixelBuffer:*(obj + 27) name:"intermediateOpticalFlow" timestamp:v54];
LABEL_157:
                v111 = "postprocess depth";
LABEL_158:
                [timeProfiler stopWithUTFString:v111];
                kdebug_trace();
                if (!v101)
                {
                  goto LABEL_221;
                }

                kdebug_trace();
                [timeProfiler startWithUTFString:"postprocess warp n fuse"];
                v112 = v153;
                v113 = v154;
                if (v166)
                {
                  v112 = *(obj + 29);
                  v113 = *(obj + 31);
                }

                if (obj[256] == 1)
                {
                  if (PixelBufferUtils::copyPixelBuffer(v112, v150, 1))
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      LOWORD(pixelBufferOut[0]) = 0;
                      v107 = MEMORY[0x277D86220];
                      v108 = "failed copy initial prev depth";
                      goto LABEL_228;
                    }

LABEL_229:
                    execute = -22950;
LABEL_230:

                    goto LABEL_120;
                  }

                  if ([obj copyConfidenceAllowPixelFormatChange:v100 outputConfidence:v113])
                  {
                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_229;
                    }

                    LOWORD(pixelBufferOut[0]) = 0;
                    v107 = MEMORY[0x277D86220];
                    v108 = "failed copy initial prev conf";
                    goto LABEL_228;
                  }

                  obj[256] = 0;
LABEL_220:
                  [timeProfiler stopWithUTFString:"postprocess warp n fuse"];
                  kdebug_trace();
                  if (v101 == 1)
                  {
LABEL_221:
                    execute = -22977;
                    goto LABEL_230;
                  }

                  kdebug_trace();
                  [timeProfiler startWithUTFString:"postprocess previous depth"];
                  if (PixelBufferUtils::copyPixelBuffer(*(obj + 28), v112, 0))
                  {
                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_229;
                    }

                    LOWORD(pixelBufferOut[0]) = 0;
                    v107 = MEMORY[0x277D86220];
                    v108 = "failed storing previous depth";
                    goto LABEL_228;
                  }

                  if ([obj copyConfidenceAllowPixelFormatChange:v113 outputConfidence:*(obj + 30)])
                  {
                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_229;
                    }

                    LOWORD(pixelBufferOut[0]) = 0;
                    v107 = MEMORY[0x277D86220];
                    v108 = "failed storing previous confidence";
                    goto LABEL_228;
                  }

                  *(obj + 17) = a2;
                  *(obj + 18) = color;
                  *(obj + 19) = calibration;
                  *(obj + 20) = transform;
                  objc_storeStrong(obj + 42, v104);
                  v101 -= 2;
                  v105 = "postprocess previous depth";
LABEL_145:
                  [timeProfiler stopWithUTFString:v105];
                  kdebug_trace();
                  if (v101)
                  {
                    kdebug_trace();
                    [timeProfiler startWithUTFString:"output rotation"];
                    if (v166)
                    {
                      v106 = v150;
                      if (temporalConsistencyMethod)
                      {
                        v106 = *(obj + 29);
                      }

                      if (PixelBufferUtils::rotatePixelBuffer(v106, v153, v152, 0))
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          LOWORD(pixelBufferOut[0]) = 0;
                          v107 = MEMORY[0x277D86220];
                          v108 = "failed rotating depth. please verify output buffer dimensions";
                          goto LABEL_228;
                        }

                        goto LABEL_229;
                      }

                      if (a14 && temporalConsistencyMethod && PixelBufferUtils::rotatePixelBuffer(v150, a14, v152, 0))
                      {
                        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_229;
                        }

                        LOWORD(pixelBufferOut[0]) = 0;
                        v107 = MEMORY[0x277D86220];
                        v108 = "failed rotating non-temporal depth. please verify output buffer dimensions";
LABEL_228:
                        _os_log_error_impl(&dword_2402F6000, v107, OS_LOG_TYPE_ERROR, v108, pixelBufferOut, 2u);
                        goto LABEL_229;
                      }

                      [obj convertIntrinsicsFrom:pixelBuffer cropBy:v153 to:{*(obj + 1), *(obj + 2), *(obj + 3), *(obj + 4)}];
                      [logger logPixelBuffer:*consistentConfMapCopy name:"intermediateDepthOutProcessedRotated" priority:1 timestamp:v54];
                      if (v154)
                      {
                        v138 = v100;
                        if (temporalConsistencyMethod)
                        {
                          v138 = *(obj + 31);
                        }

                        [obj rotateConfidenceAllowPixelFormatChange:v138 rotation:v152 outputConfidence:v154];
                        [logger logPixelBuffer:*levels name:"intermediateConfidenceOutProcessedRotated" priority:1 timestamp:v54];
                      }

                      if (a15 && temporalConsistencyMethod)
                      {
                        [obj rotateConfidenceAllowPixelFormatChange:v100 rotation:v152 outputConfidence:a15];
                      }
                    }

                    if (a16 && v154)
                    {
                      executorParameters7 = [obj executorParameters];
                      pipelineParameters = [executorParameters7 pipelineParameters];
                      confidenceUnits = [pipelineParameters confidenceUnits];

                      pipelineParameters2 = [*(obj + 44) pipelineParameters];
                      confidenceLevelRanges = [pipelineParameters2 confidenceLevelRanges];

                      if ([confidenceLevelRanges confidenceUnits] != confidenceUnits)
                      {
                        v144 = [confidenceLevelRanges rangesForUnits:confidenceUnits];

                        confidenceLevelRanges = v144;
                      }

                      execute = [ADUtils postProcessConfidence:v154 confidenceOutput:a16 rawConfidenceUnits:confidenceUnits outConfidenceUnits:1 confidenceLevelRanges:confidenceLevelRanges];
                      if (execute)
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          LOWORD(pixelBufferOut[0]) = 0;
                          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed creating confidence levels", pixelBufferOut, 2u);
                        }

                        goto LABEL_230;
                      }

                      [logger logPixelBuffer:a16 name:"intermediateConfidenceLevelsOut" timestamp:v54];
                    }

                    [logger logPixelBuffer:v153 name:"outputDepth" timestamp:v54];
                    if (v154)
                    {
                      [logger logPixelBuffer:v154 name:"outputUncertainty" timestamp:v54];
                    }

                    [timeProfiler stopWithUTFString:"output rotation"];
                    kdebug_trace();
                    if (v101 != 1)
                    {
                      [obj frameExecutionEnd];
                      execute = 0;
                      goto LABEL_230;
                    }
                  }

                  goto LABEL_221;
                }

                executorParameters8 = [obj executorParameters];
                v115 = [executorParameters8 temporalConsistencyMethod] == 1;

                if (v115)
                {
                  v116 = *(obj + 9) - 1;
                  v117 = 0.0;
                  if (v116 <= 2)
                  {
                    v117 = flt_240407138[v116];
                  }

                  v118 = __sincosf_stret(v117);
                  cosval_low = LODWORD(v118.__cosval);
                  cosval_low.f32[1] = -v118.__sinval;
                  v149 = cosval_low;
                  sinval_low = LODWORD(v118.__sinval);
                  sinval_low.i32[1] = LODWORD(v118.__cosval);
                  v171 = sinval_low;
                  v181 = __invert_f4(*(obj + 272));
                  v147 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, v181.columns[1].f32[0]), color, *v181.columns[1].f32, 1), calibration, v181.columns[1], 2), transform, v181.columns[1], 3);
                  v148 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, v181.columns[0].f32[0]), color, *v181.columns[0].f32, 1), calibration, v181.columns[0], 2), transform, v181.columns[0], 3);
                  v146 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, v181.columns[2].f32[0]), color, *v181.columns[2].f32, 1), calibration, v181.columns[2], 2), transform, v181.columns[2], 3);
                  v145 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, v181.columns[3].f32[0]), color, *v181.columns[3].f32, 1), calibration, v181.columns[3], 2), transform, v181.columns[3], 3);
                  v181.columns[2] = xmmword_240406E10;
                  v181.columns[3] = xmmword_240406E20;
                  v181.columns[0] = v149;
                  v181.columns[1] = v171;
                  v182 = __invert_f4(v181);
                  v121 = vmlaq_f32(vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(v148, v118.__cosval), v147, *v149.f32, 1), 0, v146), 0, v145);
                  v122 = vmlaq_f32(vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(v148, v118.__sinval), v147, *v171.f32, 1), 0, v146), 0, v145);
                  v123 = vmlaq_f32(vmulq_f32(v148, 0), 0, v147);
                  v124 = vmlaq_f32(vaddq_f32(v146, v123), 0, v145);
                  v125 = vaddq_f32(v145, vmlaq_f32(v123, 0, v146));
                  v126 = [*(obj + 44) warpPreviousDepth:*(obj + 28) intoCurrentDepth:*(obj + 25) previousConfidence:*(obj + 30) intoCurrentConfidence:*(obj + 26) usingPoseDelta:*(obj + 42) previousCalibration:v104 currentCalibration:{*vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v182.columns[0], v121.f32[0]), v182.columns[1], *v121.f32, 1), v182.columns[2], v121, 2), v182.columns[3], v121, 3).i64, *vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v182.columns[0], v122.f32[0]), v182.columns[1], *v122.f32, 1), v182.columns[2], v122, 2), v182.columns[3], v122, 3).i64, *vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v182.columns[0], v124.f32[0]), v182.columns[1], *v124.f32, 1), v182.columns[2], v124, 2), v182.columns[3], v124, 3).i64, *vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v182.columns[0], v125.f32[0]), v182.columns[1], *v125.f32, 1), v182.columns[2], v125, 2), v182.columns[3], v125, 3).i64}];
LABEL_183:
                  execute = v126;
                  if (v126)
                  {
                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_230;
                    }

                    LOWORD(pixelBufferOut[0]) = 0;
                    v134 = MEMORY[0x277D86220];
                    v135 = "failed warping depth";
                  }

                  else
                  {
                    [logger logPixelBuffer:*(obj + 25) name:"intermediatePrevWarpedDepth" priority:1 timestamp:v54];
                    [logger logPixelBuffer:*(obj + 26) name:"intermediatePrevWarpedConf" priority:1 timestamp:v54];
                    execute = [*(obj + 44) fuseCurrentDepth:v150 previousDepth:*(obj + 25) intoOutputDepth:v112 currentConfidence:v100 previousConfidence:*(obj + 26) intoOutputConfidence:v113];
                    if (!execute)
                    {
                      goto LABEL_220;
                    }

                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_230;
                    }

                    LOWORD(pixelBufferOut[0]) = 0;
                    v134 = MEMORY[0x277D86220];
                    v135 = "failed fusing depth";
                  }

                  _os_log_error_impl(&dword_2402F6000, v134, OS_LOG_TYPE_ERROR, v135, pixelBufferOut, 2u);
                  goto LABEL_230;
                }

                executorParameters9 = [obj executorParameters];
                v133 = [executorParameters9 temporalConsistencyMethod] == 2;

                if (v133)
                {
                  v126 = [*(obj + 44) warpPreviousDepth:*(obj + 28) intoCurrentDepth:*(obj + 25) previousConfidence:*(obj + 30) intoCurrentConfidence:*(obj + 26) usingOpticalFlow:*(obj + 27)];
                  goto LABEL_183;
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  LOWORD(pixelBufferOut[0]) = 0;
                  v136 = MEMORY[0x277D86220];
                  v137 = "unknown temporal consistency method";
                  goto LABEL_233;
                }
              }

              else
              {
                executorParameters10 = [obj executorParameters];
                v110 = [executorParameters10 temporalConsistencyMethod] == 1;

                if (!v110)
                {
                  v104 = 0;
                  goto LABEL_157;
                }

                [timeProfiler stopWithUTFString:"postprocess depth"];
                kdebug_trace();
                v101 = stepsToExecute - 5;
                if (stepsToExecute < 5)
                {
                  v104 = 0;
                  goto LABEL_221;
                }

                kdebug_trace();
                [timeProfiler startWithUTFString:"preprocess calibration"];
                if (!*(obj + 42))
                {
                  obj[256] = 1;
                }

                v127 = CVPixelBufferGetWidth(*(obj + 25));
                v128 = CVPixelBufferGetHeight(*(obj + 25));
                v104 = [transformsCopy mutableCopy];
                executorParameters11 = [obj executorParameters];
                ignoreDistortionInDepthReprojection = [executorParameters11 ignoreDistortionInDepthReprojection];

                if (ignoreDistortionInDepthReprojection)
                {
                  v131 = objc_opt_new();
                  [v104 setDistortionModel:v131];
                }

                [v104 crop:{*(obj + 1), *(obj + 2), *(obj + 3), *(obj + 4)}];
                if ([v104 adjustForImageRotation:*(obj + 9)])
                {
                  if ([v104 scale:{v127, v128}])
                  {
                    [logger logCalibration:v104 name:"intermediateScaledCalibration" priority:1 timestamp:v54];
                    v111 = "preprocess calibration";
                    goto LABEL_158;
                  }

                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    LOWORD(pixelBufferOut[0]) = 0;
                    v136 = MEMORY[0x277D86220];
                    v137 = "failed scaling calibration";
                    goto LABEL_233;
                  }
                }

                else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  LOWORD(pixelBufferOut[0]) = 0;
                  v136 = MEMORY[0x277D86220];
                  v137 = "failed rotating calibration";
LABEL_233:
                  _os_log_error_impl(&dword_2402F6000, v136, OS_LOG_TYPE_ERROR, v137, pixelBufferOut, 2u);
                  execute = -22951;
                  goto LABEL_230;
                }
              }

              execute = -22951;
              goto LABEL_230;
            }
          }

LABEL_112:
          execute = -22977;
          goto LABEL_120;
        }
      }

      v88 = *(obj + 19);
      if (v88)
      {
        PixelBufferUtilsSession::~PixelBufferUtilsSession(v88);
        MEMORY[0x245CBFCB0]();
      }
    }

    v89 = CVPixelBufferGetWidth(pixelBuffer);
    v90 = CVPixelBufferGetHeight(pixelBuffer);
    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    v92 = CVPixelBufferGetWidth(v78);
    v93 = CVPixelBufferGetHeight(v78);
    v94 = CVPixelBufferGetPixelFormatType(v78);
    PixelBufferUtilsSession::createCropScaleConvertRotateSession(PixelFormatType, v94, *(obj + 18), v89, v90, v92, v93, *(obj + 1), *(obj + 2), *(obj + 3), *(obj + 4), *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24));
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_106;
  }

  LOWORD(pixelBufferOut[0]) = 0;
  v86 = MEMORY[0x277D86220];
  v87 = "cannot execute on multiple point clouds without aggregation information";
LABEL_128:
  _os_log_error_impl(&dword_2402F6000, v86, OS_LOG_TYPE_ERROR, v87, pixelBufferOut, 2u);
  execute = -22953;
LABEL_121:

LABEL_122:
  kdebug_trace();
  objc_sync_exit(obj);

  return execute;
}

- (void)executeWithColor:(double)color colorCameraCalibration:(double)calibration colorWorldToPlatformTransform:(double)transform pointCloud:(uint64_t)cloud outDepthMap:(uint64_t)map outConfMap:(void *)confMap outNonTemporalyConsistentDepthMap:(void *)depthMap outNonTemporalyConsistentConfMap:(uint64_t)self0 outConfidenceLevels:(uint64_t)self1
{
  v34[1] = *MEMORY[0x277D85DE8];
  confMapCopy = confMap;
  depthMapCopy = depthMap;
  v22 = depthMapCopy;
  consistentConfMapCopy = consistentConfMap;
  levelsCopy = levels;
  if (depthMapCopy)
  {
    v34[0] = depthMapCopy;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  }

  else
  {
    v23 = 0;
  }

  if (consistentConfMap)
  {
    v24 = &consistentConfMapCopy;
  }

  else
  {
    v24 = 0;
  }

  v25 = &levelsCopy;
  if (!levels)
  {
    v25 = 0;
  }

  v26 = [self executeWithColor:map colorCameraCalibration:confMapCopy colorWorldToPlatformTransform:v23 pointClouds:0 lidarCameraCalibration:0 pointCloudWorldToPlatformTransforms:v24 outDepthMap:a2 outConfMap:color outNonTemporalyConsistentDepthMap:calibration outNonTemporalyConsistentConfMap:transform outConfidenceLevels:{v25, a12, a13, a14}];
  if (v22)
  {
  }

  return v26;
}

- (void)executeWithColor:(double)color pointCloud:(double)cloud outDepthMap:(double)map outConfMap:(uint64_t)confMap worldToCameraTransform:(uint64_t)transform cameraCalibration:(void *)calibration
{
  v25[1] = *MEMORY[0x277D85DE8];
  calibrationCopy = calibration;
  v17 = a11;
  if (calibrationCopy)
  {
    v25[0] = calibrationCopy;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  }

  else
  {
    v18 = 0;
  }

  v19 = [self executeWithColor:transform colorCameraCalibration:v17 colorWorldToPlatformTransform:v18 pointClouds:0 lidarCameraCalibration:0 pointCloudWorldToPlatformTransforms:a9 outDepthMap:a2 outConfMap:{color, cloud, map, a10}];
  if (calibrationCopy)
  {
  }

  return v19;
}

- (int64_t)prepareForEngineType:(unint64_t)type roi:(CGRect)roi exifOrientation:(unsigned int)orientation rotationPreference:(unint64_t)preference
{
  v7 = *&orientation;
  height = roi.size.height;
  width = roi.size.width;
  y = roi.origin.y;
  x = roi.origin.x;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  kdebug_trace();
  inferenceDescriptor = [(ADJasperColorPipeline *)selfCopy->_pipeline inferenceDescriptor];
  executorParameters = [(ADExecutor *)selfCopy executorParameters];
  selfCopy->_opticalFlowAllocated = [executorParameters temporalConsistencyMethod] == 2;

  executorParameters2 = [(ADExecutor *)selfCopy executorParameters];
  selfCopy->_vioTemporalAllocated = [executorParameters2 temporalConsistencyMethod] != 0;

  colorInput = [inferenceDescriptor colorInput];
  imageDescriptor = [colorInput imageDescriptor];
  height = [(ADExecutor *)selfCopy prepareForEngineType:type roi:imageDescriptor descriptorForROI:v7 exifOrientation:preference rotationPreference:inferenceDescriptor inferenceDescriptor:x, y, width, height];

  if (!height)
  {
    selfCopy->_firstTimeExecution = 1;
    height = [(ADJasperColorExecutor *)selfCopy allocateIntermediateBuffers];
    if (selfCopy->_opticalFlowAllocated)
    {
      lKTTexturesDescriptor = [(ADJasperColorPipeline *)selfCopy->_pipeline LKTTexturesDescriptor];
      v21 = [[ADLKTExecutor alloc] initWithDescriptor:lKTTexturesDescriptor forLayout:[(ADExecutor *)selfCopy layout]];
      lktExecutor = selfCopy->_lktExecutor;
      selfCopy->_lktExecutor = v21;
    }

    colorProcessingSession = selfCopy->_colorProcessingSession;
    if (colorProcessingSession)
    {
      PixelBufferUtilsSession::~PixelBufferUtilsSession(colorProcessingSession);
      MEMORY[0x245CBFCB0]();
      selfCopy->_colorProcessingSession = 0;
    }

    executorParameters3 = [(ADExecutor *)selfCopy executorParameters];
    pipelineParameters = [executorParameters3 pipelineParameters];
    deviceName = [pipelineParameters deviceName];
    if (![ADDeviceConfiguration hasLidarToColorIncreasedBaseline:deviceName])
    {
      goto LABEL_9;
    }

    defaults = [objc_opt_class() defaults];
    v28 = [defaults BOOLForKey:kADDeviceConfigurationKeyJasperColorRemoveShortRangeOccludedPointsOnLargeBaselineDevices];

    if (v28)
    {
      v29 = objc_opt_new();
      pcRefiner = selfCopy->_pcRefiner;
      selfCopy->_pcRefiner = v29;

      executorParameters3 = [(ADExecutor *)selfCopy executorParameters];
      pipelineParameters = [executorParameters3 pipelineParameters];
      deviceName = [pipelineParameters pointCloudFilter];
      [(ADAggregatedPointCloudRefiner *)selfCopy->_pcRefiner setFilter:deviceName];
LABEL_9:
    }
  }

  kdebug_trace();
  objc_sync_exit(selfCopy);

  return height;
}

- (int64_t)prepareForEngineType:(unint64_t)type roi:(CGRect)roi exifOrientation:(unsigned int)orientation useTemporalConsistency:(BOOL)consistency rotationPreference:(unint64_t)preference
{
  consistencyCopy = consistency;
  v8 = *&orientation;
  height = roi.size.height;
  width = roi.size.width;
  y = roi.origin.y;
  x = roi.origin.x;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v18 = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "-[prepareForEngineType:roi:exifOrientation:useTemporalConsistency:rotationPreference:] is deprecated. please use temporalConsistencyMethod property in the executor parameters instead", v18, 2u);
  }

  if (consistencyCopy)
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  executorParameters = [(ADExecutor *)self executorParameters];
  [executorParameters setTemporalConsistencyMethod:v15];

  return [(ADJasperColorExecutor *)self prepareForEngineType:type roi:v8 exifOrientation:0 rotationPreference:x, y, width, height];
}

- (int64_t)prepareForEngineType:(unint64_t)type roi:(CGRect)roi exifOrientation:(unsigned int)orientation useTemporalConsistency:(BOOL)consistency
{
  consistencyCopy = consistency;
  v7 = *&orientation;
  height = roi.size.height;
  width = roi.size.width;
  y = roi.origin.y;
  x = roi.origin.x;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v15 = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "-[prepareForEngineType:roi:exifOrientation:useTemporalConsistency:] is deprecated. please use temporalConsistencyMethod property in the executor parameters instead", v15, 2u);
  }

  return [(ADJasperColorExecutor *)self prepareForEngineType:type roi:v7 exifOrientation:consistencyCopy useTemporalConsistency:0 rotationPreference:x, y, width, height];
}

- (int64_t)allocateIntermediateBuffers
{
  inferenceDescriptor = [(ADJasperColorPipeline *)self->_pipeline inferenceDescriptor];
  depthOutput = [inferenceDescriptor depthOutput];
  imageDescriptor = [depthOutput imageDescriptor];

  [imageDescriptor sizeForLayout:{-[ADExecutor layout](self, "layout")}];
  +[ADUtils updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:](ADUtils, "updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:", [imageDescriptor pixelFormat], &self->_itmPostProcessedDepth, v6, v7);
  inferenceDescriptor2 = [(ADJasperColorPipeline *)self->_pipeline inferenceDescriptor];
  confidenceOutput = [inferenceDescriptor2 confidenceOutput];
  imageDescriptor2 = [confidenceOutput imageDescriptor];

  [imageDescriptor2 sizeForLayout:{-[ADExecutor layout](self, "layout")}];
  +[ADUtils updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:](ADUtils, "updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:", [imageDescriptor2 pixelFormat], &self->_itmPostProcessedConf, v11, v12);
  if (self->_itmPostProcessedDepth && self->_itmPostProcessedConf)
  {
    if (self->_opticalFlowAllocated || self->_vioTemporalAllocated)
    {
      [imageDescriptor sizeForLayout:{-[ADExecutor layout](self, "layout")}];
      +[ADUtils updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:](ADUtils, "updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:", [imageDescriptor pixelFormat], &self->_itmPrevProcessedFusedDepth, v13, v14);
      [imageDescriptor sizeForLayout:{-[ADExecutor layout](self, "layout")}];
      +[ADUtils updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:](ADUtils, "updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:", [imageDescriptor pixelFormat], &self->_itmWarpedPrevDepth, v15, v16);
      [imageDescriptor sizeForLayout:{-[ADExecutor layout](self, "layout")}];
      +[ADUtils updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:](ADUtils, "updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:", [imageDescriptor pixelFormat], &self->_itmCurrProcessedFusedDepth, v17, v18);
      [imageDescriptor2 sizeForLayout:{-[ADExecutor layout](self, "layout")}];
      +[ADUtils updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:](ADUtils, "updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:", [imageDescriptor2 pixelFormat], &self->_itmPrevProcessedFusedConf, v19, v20);
      [imageDescriptor2 sizeForLayout:{-[ADExecutor layout](self, "layout")}];
      +[ADUtils updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:](ADUtils, "updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:", [imageDescriptor2 pixelFormat], &self->_itmCurrProcessedFusedConf, v21, v22);
      [imageDescriptor2 sizeForLayout:{-[ADExecutor layout](self, "layout")}];
      +[ADUtils updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:](ADUtils, "updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:", [imageDescriptor2 pixelFormat], &self->_itmWarpedPrevConf, v23, v24);
      lKTTexturesDescriptor = [(ADJasperColorPipeline *)self->_pipeline LKTTexturesDescriptor];
      shiftmapDescriptor = [lKTTexturesDescriptor shiftmapDescriptor];

      [shiftmapDescriptor sizeForLayout:{-[ADExecutor layout](self, "layout")}];
      +[ADUtils updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:](ADUtils, "updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:", [shiftmapDescriptor pixelFormat], &self->_itmOpticalFlow, v27, v28);
    }

    [(ADJasperColorExecutor *)self deallocateEspressoBuffers];
    inferenceDescriptor3 = [(ADJasperColorPipeline *)self->_pipeline inferenceDescriptor];
    colorInput = [inferenceDescriptor3 colorInput];
    v31 = [(ADExecutor *)self preAllocateInferencePixelBufferForDescriptor:colorInput];

    if (!v31)
    {
      espressoRunner = self->super._espressoRunner;
      jasperInput = [inferenceDescriptor3 jasperInput];
      self->_itmPreProcessedJasper = [(ADEspressoRunnerProtocol *)espressoRunner createAndRegisterPixelBufferForDescriptor:jasperInput];

      v34 = self->super._espressoRunner;
      depthOutput2 = [inferenceDescriptor3 depthOutput];
      self->_itmUnprocessedDepth = [(ADEspressoRunnerProtocol *)v34 createAndRegisterPixelBufferForDescriptor:depthOutput2];

      v36 = self->super._espressoRunner;
      confidenceOutput2 = [inferenceDescriptor3 confidenceOutput];
      self->_itmUnprocessedConf = [(ADEspressoRunnerProtocol *)v36 createAndRegisterPixelBufferForDescriptor:confidenceOutput2];

      if (self->_itmPreProcessedJasper && self->_itmUnprocessedDepth && self->_itmUnprocessedConf)
      {
        if (!self->_opticalFlowAllocated && !self->_vioTemporalAllocated || self->_itmCurrProcessedFusedDepth && self->_itmPrevProcessedFusedDepth && self->_itmOpticalFlow)
        {
          v31 = 0;
        }

        else
        {
          [(ADJasperColorExecutor *)self deallocateEspressoBuffers];
          v31 = -22965;
        }
      }

      else
      {
        [(ADJasperColorExecutor *)self deallocateEspressoBuffers];
        v31 = -22971;
      }
    }
  }

  else
  {
    v31 = -22965;
  }

  return v31;
}

- (void)deallocateEspressoBuffers
{
  CVPixelBufferRelease(self->_itmPreProcessedJasper);
  self->_itmPreProcessedJasper = 0;
  CVPixelBufferRelease(self->_itmUnprocessedDepth);
  self->_itmUnprocessedDepth = 0;
  CVPixelBufferRelease(self->_itmUnprocessedConf);
  self->_itmUnprocessedConf = 0;
}

- (ADJasperColorExecutor)initWithInputPrioritization:(int64_t)prioritization parameters:(id)parameters
{
  parametersCopy = parameters;
  v15 = 335686668;
  v16 = 0u;
  v17 = 0u;
  kdebug_trace();
  v14.receiver = self;
  v14.super_class = ADJasperColorExecutor;
  v7 = [(ADExecutor *)&v14 init];
  if (v7)
  {
    if (!parametersCopy)
    {
      parametersCopy = objc_opt_new();
    }

    v8 = [ADJasperColorPipeline alloc];
    pipelineParameters = [parametersCopy pipelineParameters];
    v10 = [(ADJasperColorPipeline *)v8 initWithInputPrioritization:prioritization andParameters:pipelineParameters];
    pipeline = v7->_pipeline;
    v7->_pipeline = v10;

    if (!v7->_pipeline)
    {
      v12 = 0;
      goto LABEL_8;
    }

    [(ADExecutor *)v7 setExecutorParameters:parametersCopy];
    v7->_colorProcessingSession = 0;
    v7->_itmPreProcessedJasper = 0;
    v7->_itmUnprocessedDepth = 0;
    v7->_itmPostProcessedDepth = 0;
    v7->_itmUnprocessedConf = 0;
    v7->_itmPostProcessedConf = 0;
    v7->_itmPrevProcessedFusedDepth = 0;
    v7->_itmPrevProcessedFusedConf = 0;
    v7->_itmCurrProcessedFusedConf = 0;
    v7->_itmWarpedPrevDepth = 0;
    v7->_itmWarpedPrevConf = 0;
    v7->_itmOpticalFlow = 0;
    v7->_firstTimeExecution = 1;
    v7->_opticalFlowAllocated = 0;
    v7->_vioTemporalAllocated = 0;
  }

  v12 = v7;
LABEL_8:
  kdebug_trace();

  return v12;
}

- (ADJasperColorExecutor)initWithInputPrioritization:(int64_t)prioritization
{
  v5 = objc_opt_new();
  v6 = [(ADJasperColorExecutor *)self initWithInputPrioritization:prioritization parameters:v5];

  return v6;
}

+ (id)defaults
{
  v7[1] = *MEMORY[0x277D85DE8];
  p_opt_class_meths = &OBJC_PROTOCOL___NSObject.opt_class_meths;
  {
    v6 = kADDeviceConfigurationKeyJasperColorRemoveShortRangeOccludedPointsOnLargeBaselineDevices;
    v7[0] = MEMORY[0x277CBEC38];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    +[ADJasperColorExecutor defaults]::result = [ADDeviceConfiguration preferencesWithDefaultValues:v5];

    p_opt_class_meths = (&OBJC_PROTOCOL___NSObject + 48);
  }

  v3 = p_opt_class_meths[145];

  return v3;
}

@end