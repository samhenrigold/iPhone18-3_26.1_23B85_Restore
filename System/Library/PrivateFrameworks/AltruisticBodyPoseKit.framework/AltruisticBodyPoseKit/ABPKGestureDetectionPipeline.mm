@interface ABPKGestureDetectionPipeline
- (ABPKGestureDetectionPipeline)initWithFrequency:(unsigned int)frequency;
- (BOOL)overlayResult:(id)result OnImage:(__CVBuffer *)image andGenerateOverlayImage:(__CVBuffer *)overlayImage;
- (int)runPoseEstimationWithInput:(__CVBuffer *)input abpkDeviceOrientation:(int64_t)orientation atTimeStamp:(double)stamp andOutput:(id)output;
- (int)runWithInput:(__CVBuffer *)input abpkDeviceOrientation:(int64_t)orientation atTimeStamp:(double)stamp andOutput:(id)output;
- (void)extractDataForJointIdx:(void *)idx@<X3> fromPoseTimeArray:(void *)array@<X8>;
- (void)runGestureDetection:(id)detection withTrackingId:(unsigned int)id andResult:(id)result;
@end

@implementation ABPKGestureDetectionPipeline

- (ABPKGestureDetectionPipeline)initWithFrequency:(unsigned int)frequency
{
  selfCopy = self;
  v39 = *MEMORY[0x277D85DE8];
  _startInitABPKSignpost = [(ABPKGestureDetectionPipeline *)self _startInitABPKSignpost];
  if (frequency > 0x1E || ((1 << frequency) & 0x40000420) == 0)
  {
    v33 = __ABPKLogSharedInstance(_startInitABPKSignpost);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      frequencyCopy = frequency;
      _os_log_impl(&dword_23EDDC000, v33, OS_LOG_TYPE_ERROR, " Failed to initialize Gesture Detection Pipeline. Unsupported Frequency: %d ", buf, 8u);
    }

    goto LABEL_29;
  }

  selfCopy->_fps = frequency;
  selfCopy->_maxPreviousPoses = 2 * frequency;
  selfCopy->_raisingMaxPreviousPoses = frequency / 3u + 1;
  selfCopy->_wavingMinPeriodicFrames = frequency / 3u + 1;
  selfCopy->_wavingAngleChangeLastFrames = ((139812 * ((5 * frequency) & 0x3FFFu)) >> 20) + 1;
  v6 = __ABPKLogSharedInstance(_startInitABPKSignpost);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v6, OS_LOG_TYPE_DEBUG, " Gesture Detection Config parameters: ", buf, 2u);
  }

  v8 = __ABPKLogSharedInstance(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    fps = selfCopy->_fps;
    *buf = 67109120;
    frequencyCopy = fps;
    _os_log_impl(&dword_23EDDC000, v8, OS_LOG_TYPE_DEBUG, " \t _fps: %d ", buf, 8u);
  }

  v11 = __ABPKLogSharedInstance(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    maxPreviousPoses = selfCopy->_maxPreviousPoses;
    *buf = 67109120;
    frequencyCopy = maxPreviousPoses;
    _os_log_impl(&dword_23EDDC000, v11, OS_LOG_TYPE_DEBUG, " \t maxPreviousPoses: %d ", buf, 8u);
  }

  v14 = __ABPKLogSharedInstance(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    raisingMaxPreviousPoses = selfCopy->_raisingMaxPreviousPoses;
    *buf = 67109120;
    frequencyCopy = raisingMaxPreviousPoses;
    _os_log_impl(&dword_23EDDC000, v14, OS_LOG_TYPE_DEBUG, " \t raisingMaxPreviousPoses: %d, ", buf, 8u);
  }

  v17 = __ABPKLogSharedInstance(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    wavingMinPeriodicFrames = selfCopy->_wavingMinPeriodicFrames;
    *buf = 67109120;
    frequencyCopy = wavingMinPeriodicFrames;
    _os_log_impl(&dword_23EDDC000, v17, OS_LOG_TYPE_DEBUG, " \t wavingMinPeriodicFrames: %d ", buf, 8u);
  }

  v20 = __ABPKLogSharedInstance(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    wavingAngleChangeLastFrames = selfCopy->_wavingAngleChangeLastFrames;
    *buf = 67109120;
    frequencyCopy = wavingAngleChangeLastFrames;
    _os_log_impl(&dword_23EDDC000, v20, OS_LOG_TYPE_DEBUG, " \t wavingAngleChangeLastFrames: %d ", buf, 8u);
  }

  v36.receiver = selfCopy;
  v36.super_class = ABPKGestureDetectionPipeline;
  selfCopy = [(ABPKGestureDetectionPipeline *)&v36 init];
  if (!selfCopy)
  {
    goto LABEL_19;
  }

  v22 = [[ABPK2DDetectionConfiguration alloc] initWithAlgorithmMode:0];
  config2D = selfCopy->_config2D;
  selfCopy->_config2D = v22;

  if (!selfCopy->_config2D)
  {
    v34 = __ABPKLogSharedInstance(v24);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v34, OS_LOG_TYPE_ERROR, " Failed to initialize config for 2D Detection module ", buf, 2u);
    }

    goto LABEL_28;
  }

  v25 = [[ABPK2DPoseEstimation alloc] initWith2DDetectionConfig:selfCopy->_config2D use3DSkeletonForExtrapolation:0 shouldPush3DSupportSkeleton:0];
  poseEstimation2D = selfCopy->_poseEstimation2D;
  selfCopy->_poseEstimation2D = v25;

  if (!selfCopy->_poseEstimation2D)
  {
    v34 = __ABPKLogSharedInstance(v27);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v34, OS_LOG_TYPE_ERROR, " Failed to initialize 2D Pose Estimation Algorithm. ", buf, 2u);
    }

LABEL_28:

LABEL_29:
    v32 = 0;
    goto LABEL_30;
  }

  v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
  joints2DBufferDict = selfCopy->_joints2DBufferDict;
  selfCopy->_joints2DBufferDict = v28;

  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  previousGestureDetectionResult = selfCopy->_previousGestureDetectionResult;
  selfCopy->_previousGestureDetectionResult = v30;

  selfCopy->_lastTrackingId = -1;
LABEL_19:
  [(ABPKGestureDetectionPipeline *)selfCopy _endInitABPKSignpost];
  selfCopy = selfCopy;
  v32 = selfCopy;
LABEL_30:

  return v32;
}

- (int)runWithInput:(__CVBuffer *)input abpkDeviceOrientation:(int64_t)orientation atTimeStamp:(double)stamp andOutput:(id)output
{
  v136 = *MEMORY[0x277D85DE8];
  outputCopy = output;
  [(ABPKGestureDetectionPipeline *)self _startGestureDetectionRunWithInputSignpostWithTimestamp:stamp];
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = [(ABPKGestureDetectionPipeline *)self runPoseEstimationWithInput:input abpkDeviceOrientation:orientation atTimeStamp:v10 andOutput:stamp];
  v117 = v11;
  v12 = __ABPKLogSharedInstance(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf[0]) = 134217984;
    *(buf + 4) = [v10 count];
    _os_log_impl(&dword_23EDDC000, v12, OS_LOG_TYPE_DEBUG, " Humans detected: %lu ", buf, 0xCu);
  }

  v123 = v10;

  v13 = __ABPKLogSharedInstance([(ABPKGestureDetectionPipeline *)self _startGestureDetectionPersonTrackingSignpostWithTimestamp:stamp]);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23EDDC000, v13, OS_LOG_TYPE_DEBUG, " Computing tracking ids ", buf, 2u);
  }

  std::vector<unsigned long>::vector[abi:ne200100](buf, [v10 count]);
  __src = 0;
  v128 = 0;
  v129 = 0;
  if ([(NSMutableArray *)self->_previousGestureDetectionResult count])
  {
    v14 = 0.0;
    while (1)
    {
      v15 = [v10 count];
      if (*&v14 >= v15)
      {
        goto LABEL_71;
      }

      v16 = __ABPKLogSharedInstance(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *v131 = 134217984;
        v132 = v14;
        _os_log_impl(&dword_23EDDC000, v16, OS_LOG_TYPE_DEBUG, " Finding tracking for current skeleton: %lu ", v131, 0xCu);
      }

      v17 = 0.0;
      trackingId3 = -1000;
      v18 = 10000.0;
      while (1)
      {
        v19 = [(NSMutableArray *)self->_previousGestureDetectionResult count];
        if (*&v17 >= v19)
        {
          break;
        }

        v20 = __ABPKLogSharedInstance(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v21 = [(NSMutableArray *)self->_previousGestureDetectionResult objectAtIndexedSubscript:*&v17];
          trackingId = [v21 trackingId];
          *v131 = 134218240;
          v132 = v17;
          v133 = 1024;
          v134 = trackingId;
          _os_log_impl(&dword_23EDDC000, v20, OS_LOG_TYPE_DEBUG, " \t Comparing with previous skeleton %lu with tracking_id: %u ", v131, 0x12u);
        }

        __p = 0;
        v125 = 0;
        v126 = 0;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, __src, v128, (v128 - __src) >> 3);
        v23 = [(NSMutableArray *)self->_previousGestureDetectionResult objectAtIndexedSubscript:*&v17];
        trackingId2 = [v23 trackingId];
        if (v125 == __p)
        {
          v27 = 0;
        }

        else
        {
          v25 = (v125 - __p) >> 3;
          if (v25 <= 1)
          {
            v26 = 1;
          }

          else
          {
            v26 = (v125 - __p) >> 3;
          }

          if (*__p == trackingId2)
          {
            v27 = 1;
          }

          else
          {
            v28 = 1;
            do
            {
              v29 = v28;
              if (v26 == v28)
              {
                break;
              }

              v30 = *(__p + v28++);
            }

            while (v30 != trackingId2);
            v27 = v29 < v25;
          }
        }

        v31 = __p;
        if (__p)
        {
          v125 = __p;
          operator delete(__p);
        }

        if (v27)
        {
          v32 = __ABPKLogSharedInstance(v31);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            *v131 = 0;
            _os_log_impl(&dword_23EDDC000, v32, OS_LOG_TYPE_DEBUG, " \t Skipping. Tracking id already assigned ", v131, 2u);
          }

          goto LABEL_38;
        }

        v33 = [v123 objectAtIndexedSubscript:*&v14];
        keypoints2d = [v33 keypoints2d];
        v35 = [(NSMutableArray *)self->_previousGestureDetectionResult objectAtIndexedSubscript:*&v17];
        skeleton2D = [v35 skeleton2D];
        keypoints2d2 = [skeleton2D keypoints2d];
        v38 = [v123 objectAtIndexedSubscript:*&v14];
        skeletonDefinition = [v38 skeletonDefinition];
        jointCount = [skeletonDefinition jointCount];
        for (i = 0.0; jointCount; --jointCount)
        {
          *v42.f32 = *keypoints2d;
          *&v42.u32[2] = *keypoints2d2;
          if ((vmaxv_u16(vmovn_s32(vcltzq_f32(v42))) & 1) == 0)
          {
            v43 = vsub_f32(*keypoints2d, *keypoints2d2);
            i = i + sqrtf(vaddv_f32(vmul_f32(v43, v43)));
          }

          ++keypoints2d2;
          ++keypoints2d;
        }

        v45 = __ABPKLogSharedInstance(v44);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          *v131 = 134217984;
          v132 = i;
          _os_log_impl(&dword_23EDDC000, v45, OS_LOG_TYPE_DEBUG, " \t\t distance: %f ", v131, 0xCu);
        }

        if (i < v18)
        {
          v32 = [(NSMutableArray *)self->_previousGestureDetectionResult objectAtIndexedSubscript:*&v17];
          trackingId3 = [v32 trackingId];
          v18 = i;
LABEL_38:
        }

        ++*&v17;
      }

      v46 = __ABPKLogSharedInstance(v19);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        *v131 = 134217984;
        v132 = v18;
        _os_log_impl(&dword_23EDDC000, v46, OS_LOG_TYPE_DEBUG, " \t Minimum Distance: %f ", v131, 0xCu);
      }

      if (v18 <= 1500.0)
      {
        v49 = trackingId3;
        if (trackingId3 == -1000)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v48 = __ABPKLogSharedInstance(v47);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          *v131 = 0;
          _os_log_impl(&dword_23EDDC000, v48, OS_LOG_TYPE_DEBUG, " Distance is higher than threshold. No closest human found from the previous frame. Assigning new tracking id ", v131, 2u);
        }

LABEL_47:
        v49 = self->_lastTrackingId + 1;
        self->_lastTrackingId = v49;
      }

      v120 = *&v49;
      *(*&buf[0] + 8 * *&v14) = v49;
      v50 = __ABPKLogSharedInstance(v47);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        *v131 = 134217984;
        v132 = v120;
        _os_log_impl(&dword_23EDDC000, v50, OS_LOG_TYPE_DEBUG, " \t Tracking id: %lu ", v131, 0xCu);
      }

      v51 = v128;
      if (v128 >= v129)
      {
        v53 = __src;
        v54 = v128 - __src;
        v55 = (v128 - __src) >> 3;
        v56 = v55 + 1;
        if ((v55 + 1) >> 61)
        {
          std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
        }

        v57 = v129 - __src;
        if ((v129 - __src) >> 2 > v56)
        {
          v56 = v57 >> 2;
        }

        v58 = v57 >= 0x7FFFFFFFFFFFFFF8;
        v59 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v58)
        {
          v59 = v56;
        }

        if (v59)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v59);
        }

        *(8 * v55) = v120;
        v52 = (8 * v55 + 8);
        memcpy(0, v53, v54);
        v60 = __src;
        __src = 0;
        v128 = v52;
        v129 = 0;
        if (v60)
        {
          operator delete(v60);
        }
      }

      else
      {
        *v128 = v120;
        v52 = v51 + 8;
      }

      v128 = v52;
      v61 = [v123 objectAtIndexedSubscript:*&v14];
      skeletonDefinition2 = [v61 skeletonDefinition];
      jointCount2 = [skeletonDefinition2 jointCount];

      v121 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v64 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v65 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (jointCount2)
      {
        for (j = 0; j != jointCount2; ++j)
        {
          v67 = [v123 objectAtIndexedSubscript:*&v14];
          v122 = *([v67 keypoints2d] + 8 * j);

          v68 = [v123 objectAtIndexedSubscript:*&v14];
          v69 = *([v68 confidences] + 4 * j);

          v70 = [v123 objectAtIndexedSubscript:*&v14];
          v71 = *([v70 visibility] + 4 * j);

          v72 = [MEMORY[0x277CCABB0] numberWithFloat:v122];
          v130[0] = v72;
          HIDWORD(v73) = HIDWORD(v122);
          LODWORD(v73) = HIDWORD(v122);
          v74 = [MEMORY[0x277CCABB0] numberWithFloat:v73];
          v130[1] = v74;
          v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v130 count:2];
          [v121 addObject:v75];

          LODWORD(v76) = v69;
          v77 = [MEMORY[0x277CCABB0] numberWithFloat:v76];
          [v64 addObject:v77];

          v78 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v71];
          [v65 addObject:v78];
        }
      }

      v79 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", *&v120];
      v80 = [(NSMutableDictionary *)self->_joints2DBufferDict objectForKeyedSubscript:v79];
      v81 = v80 == 0;

      if (v81)
      {
        joints2DBufferDict = self->_joints2DBufferDict;
        v83 = [[ABPKCircularArray alloc] initWithCapacity:self->_maxPreviousPoses];
        [(NSMutableDictionary *)joints2DBufferDict setValue:v83 forKey:v79];
      }

      v84 = [(NSMutableDictionary *)self->_joints2DBufferDict objectForKeyedSubscript:v79];
      [v84 add:v121];

      ++*&v14;
      v10 = v123;
    }
  }

  for (k = 0; k < [v10 count]; ++k)
  {
    *(*&buf[0] + 8 * k) = self->_lastTrackingId + 1;
    v86 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", k];
    v87 = self->_joints2DBufferDict;
    v88 = [[ABPKCircularArray alloc] initWithCapacity:self->_maxPreviousPoses];
    [(NSMutableDictionary *)v87 setValue:v88 forKey:v86];

    v10 = v123;
  }

  self->_lastTrackingId += [v10 count];
LABEL_71:
  [(ABPKGestureDetectionPipeline *)self _endGestureDetectionPersonTrackingSignpostWithTimestamp:stamp];
  v89 = [(ABPKGestureDetectionPipeline *)self _startGestureDetectionAlgorithmSignpostWithTimestamp:stamp];
  if (v117)
  {
    v90 = __ABPKLogSharedInstance(v89);
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      *v131 = 0;
      _os_log_impl(&dword_23EDDC000, v90, OS_LOG_TYPE_ERROR, " Pose not valid. Skipping ", v131, 2u);
    }

    previousGestureDetectionResult = self->_previousGestureDetectionResult;
    self->_previousGestureDetectionResult = 0;

    v93 = __ABPKLogSharedInstance(v92);
    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
    {
      *&v94 = COERCE_DOUBLE([(NSMutableArray *)self->_previousGestureDetectionResult count]);
      *v131 = 134217984;
      v132 = *&v94;
      _os_log_impl(&dword_23EDDC000, v93, OS_LOG_TYPE_DEBUG, " _previousGestureDetectionResult count: %lu ", v131, 0xCu);
    }

    allKeys = [(NSMutableDictionary *)self->_joints2DBufferDict allKeys];
    for (m = 0; [allKeys count] > m; ++m)
    {
      v97 = self->_joints2DBufferDict;
      v98 = [allKeys objectAtIndexedSubscript:m];
      [(NSMutableDictionary *)v97 removeObjectForKey:v98];
    }

    v99 = -6661;
    v100 = v123;
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    v103 = __ABPKLogSharedInstance(v102);
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      *v131 = 0;
      _os_log_impl(&dword_23EDDC000, v103, OS_LOG_TYPE_ERROR, " Pose valid. Running the gesture detection pipeline ", v131, 2u);
    }

    for (n = 0; n < [v123 count]; ++n)
    {
      v105 = objc_alloc_init(ABPKGestureDetectionResult);
      v106 = *(*&buf[0] + 8 * n);
      v107 = [v123 objectAtIndexedSubscript:n];
      [(ABPKGestureDetectionPipeline *)self runGestureDetection:v107 withTrackingId:v106 andResult:v105];

      [outputCopy addObject:v105];
    }

    v108 = [outputCopy mutableCopy];
    v109 = self->_previousGestureDetectionResult;
    self->_previousGestureDetectionResult = v108;

    v111 = __ABPKLogSharedInstance(v110);
    if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
    {
      *&v112 = COERCE_DOUBLE([(NSMutableArray *)self->_previousGestureDetectionResult count]);
      *v131 = 134217984;
      v132 = *&v112;
      _os_log_impl(&dword_23EDDC000, v111, OS_LOG_TYPE_DEBUG, " _previousGestureDetectionResult count: %lu ", v131, 0xCu);
    }

    v113 = CFAbsoluteTimeGetCurrent();
    v115 = __ABPKLogSharedInstance(v114);
    if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
    {
      *v131 = 134217984;
      v132 = v113 - Current;
      _os_log_impl(&dword_23EDDC000, v115, OS_LOG_TYPE_DEBUG, " timeGestureDetection: %f ", v131, 0xCu);
    }

    v100 = v123;
    [(ABPKGestureDetectionPipeline *)self _endGestureDetectionAlgorithmSignpostWithTimestamp:stamp];
    [(ABPKGestureDetectionPipeline *)self _endGestureDetectionRunWithInputSignpostWithTimestamp:stamp];
    v99 = 0;
  }

  if (__src)
  {
    v128 = __src;
    operator delete(__src);
  }

  if (*&buf[0])
  {
    *(&buf[0] + 1) = *&buf[0];
    operator delete(*&buf[0]);
  }

  return v99;
}

- (int)runPoseEstimationWithInput:(__CVBuffer *)input abpkDeviceOrientation:(int64_t)orientation atTimeStamp:(double)stamp andOutput:(id)output
{
  v51 = *MEMORY[0x277D85DE8];
  outputCopy = output;
  [(ABPKGestureDetectionPipeline *)self _startGestureDetectionImagePreProcessingSignpostWithTimestamp:stamp];
  Width = CVPixelBufferGetWidth(input);
  Height = CVPixelBufferGetHeight(input);
  v13 = __ABPKLogSharedInstance(Height);
  v14 = Width;
  v15 = Height;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = Height;
    v49 = 2048;
    v50 = Width;
    _os_log_impl(&dword_23EDDC000, v13, OS_LOG_TYPE_DEBUG, " Sensor image resolution: (height,width):(%f,%f) ", buf, 0x16u);
  }

  abpkDeviceOrientation = [(ABPK2DDetectionConfiguration *)self->_config2D abpkDeviceOrientation];
  if (abpkDeviceOrientation != orientation)
  {
    v17 = __ABPKLogSharedInstance(abpkDeviceOrientation);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = convertABPKDeviceOrientationEnumToString([(ABPK2DDetectionConfiguration *)self->_config2D abpkDeviceOrientation]);
      convertABPKDeviceOrientationEnumToString(orientation);
      v19 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412546;
      *&buf[4] = v18;
      v49 = 2112;
      v50 = v19;
      _os_log_impl(&dword_23EDDC000, v17, OS_LOG_TYPE_DEBUG, " Device orientation changed from %@ to %@ ", buf, 0x16u);
    }

    [(ABPK2DDetectionConfiguration *)self->_config2D setAbpkDeviceOrientation:orientation];
  }

  v20 = [ABPK2DMLModelConfigSelector inputDimensionsForModelWithABPKNetworkConfig:self->_config2D];
  v22 = v21;
  v24 = v23;
  v25 = __ABPKLogSharedInstance(v20);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = v24;
    v49 = 2048;
    v50 = v22;
    _os_log_impl(&dword_23EDDC000, v25, OS_LOG_TYPE_DEBUG, " ML image resolution: (height,width):(%f,%f) ", buf, 0x16u);
  }

  v26 = [[ABPKImagePreProcessingParams alloc] initWithType:2 inputResolution:v14 outputResolution:v15, v22, v24];
  v27 = [[ABPKImagePreProcessing alloc] initWithPreProcessingParams:v26];
  v28 = v27;
  if (v27)
  {
    *buf = 0;
    v29 = __ABPKLogSharedInstance(v27);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *v45 = 0;
      _os_log_impl(&dword_23EDDC000, v29, OS_LOG_TYPE_DEBUG, " Image Preprocessing ", v45, 2u);
    }

    v46 = *MEMORY[0x277CC4DE8];
    v47 = MEMORY[0x277CBEC10];
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v31 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], v22, v24, 0x42475241u, v30, buf);
    if (v31)
    {
      v32 = __ABPKLogSharedInstance(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *v45 = 0;
        v33 = " Could not create mlImage buffer of type kCVPixelFormatType_32BGRA ";
LABEL_21:
        _os_log_impl(&dword_23EDDC000, v32, OS_LOG_TYPE_ERROR, v33, v45, 2u);
      }
    }

    else
    {
      v36 = [(ABPKImagePreProcessing *)v28 preprocessData:input outputBuffer:*buf];
      logProfilingDetails = [(ABPKImagePreProcessing *)v28 logProfilingDetails];
      if (!v36)
      {
        [(ABPKGestureDetectionPipeline *)self _endGestureDetectionImagePreProcessingSignpostWithTimestamp:stamp];
        v39 = __ABPKLogSharedInstance([(ABPKGestureDetectionPipeline *)self _startGestureDetection2DDetectionMLSignpostWithTimestamp:stamp]);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          *v45 = 0;
          _os_log_impl(&dword_23EDDC000, v39, OS_LOG_TYPE_DEBUG, " Running 2d pose estimation ", v45, 2u);
        }

        v41 = __ABPKLogSharedInstance(v40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          *v45 = 0;
          _os_log_impl(&dword_23EDDC000, v41, OS_LOG_TYPE_DEBUG, " \t Running the ML model ", v45, 2u);
        }

        v42 = [ABPKMLImageData alloc];
        v32 = [(ABPKMLImageData *)v42 initWithPixelBuffer:*buf timestamp:orientation abpkDeviceOrientation:v26 preprocessingParameters:stamp];
        v43 = [(ABPK2DPoseEstimation *)self->_poseEstimation2D runWithMLImageData:v32 rotationOfResultTensor:0];
        if (v43 == -6661)
        {
          v44 = __ABPKLogSharedInstance(v43);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *v45 = 0;
            _os_log_impl(&dword_23EDDC000, v44, OS_LOG_TYPE_ERROR, " 2D Pose estimation failed. ", v45, 2u);
          }

          v35 = -6661;
        }

        else
        {
          [(ABPK2DPoseEstimation *)self->_poseEstimation2D getRawTrackedHumanSkeletonVector:outputCopy];
          CVPixelBufferRelease(*buf);
          [(ABPKGestureDetectionPipeline *)self _endGestureDetection2DDetectionPostProcessingSignpostWithTimestamp:stamp];
          v35 = 0;
        }

        goto LABEL_23;
      }

      v32 = __ABPKLogSharedInstance(logProfilingDetails);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *v45 = 0;
        v33 = " Could not pre-process image ";
        goto LABEL_21;
      }
    }

    v35 = -6660;
LABEL_23:

    goto LABEL_24;
  }

  v34 = __ABPKLogSharedInstance(0);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v34, OS_LOG_TYPE_ERROR, " Could not initialize imagePreprocessor ", buf, 2u);
  }

  v35 = -6660;
LABEL_24:

  return v35;
}

- (void)extractDataForJointIdx:(void *)idx@<X3> fromPoseTimeArray:(void *)array@<X8>
{
  idxCopy = idx;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEEC2B8ne200100Em(array, *(self + 56));
  if (*(self + 56))
  {
    v7 = 0;
    do
    {
      v8 = [idxCopy objectAtIndexedSubscript:v7];
      v9 = [v8 objectAtIndexedSubscript:a2];
      v10 = [v9 objectAtIndexedSubscript:0];
      [v10 floatValue];
      v17 = v11;
      v12 = [idxCopy objectAtIndexedSubscript:v7];
      v13 = [v12 objectAtIndexedSubscript:a2];
      v14 = [v13 objectAtIndexedSubscript:1];
      [v14 floatValue];
      v18 = __PAIR64__(v15, v17);

      *(*array + 8 * v7++) = v18;
    }

    while (v7 < *(self + 56));
  }
}

- (void)runGestureDetection:(id)detection withTrackingId:(unsigned int)id andResult:(id)result
{
  v6 = *&id;
  v66 = *MEMORY[0x277D85DE8];
  detectionCopy = detection;
  resultCopy = result;
  v49 = detectFaceVisible(*([detectionCopy visibility] + 56), *(objc_msgSend(detectionCopy, "visibility") + 60), *objc_msgSend(detectionCopy, "visibility"), *(objc_msgSend(detectionCopy, "visibility") + 68), *(objc_msgSend(detectionCopy, "visibility") + 72));
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v6];
  v11 = [(NSMutableDictionary *)self->_joints2DBufferDict objectForKeyedSubscript:v10];
  contents = [v11 contents];

  v14 = __ABPKLogSharedInstance(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf[0]) = 134217984;
    *(buf + 4) = [contents count];
    _os_log_impl(&dword_23EDDC000, v14, OS_LOG_TYPE_DEBUG, " poseTimeArray size: %lu ", buf, 0xCu);
  }

  v15 = [contents count];
  if (v15 >= self->_maxPreviousPoses)
  {
    objc_msgSend_extractDataForJointIdx_fromPoseTimeArray_(self);
    objc_msgSend_extractDataForJointIdx_fromPoseTimeArray_(self);
    objc_msgSend_extractDataForJointIdx_fromPoseTimeArray_(self);
    objc_msgSend_extractDataForJointIdx_fromPoseTimeArray_(self);
    objc_msgSend_extractDataForJointIdx_fromPoseTimeArray_(self);
    objc_msgSend_extractDataForJointIdx_fromPoseTimeArray_(self);
    objc_msgSend_extractDataForJointIdx_fromPoseTimeArray_(self);
    DataForJointIdx_fromPoseTimeArray = objc_msgSend_extractDataForJointIdx_fromPoseTimeArray_(self);
    v18 = __ABPKLogSharedInstance(DataForJointIdx_fromPoseTimeArray);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *v50 = 0;
      _os_log_impl(&dword_23EDDC000, v18, OS_LOG_TYPE_DEBUG, " Starting waving left hand detection ", v50, 2u);
    }

    v19 = detectWavingHand(v61, v59, v57, *&buf[0], v63, self->_maxPreviousPoses, self->_wavingAngleChangeLastFrames, self->_wavingMinPeriodicFrames);
    v20 = __ABPKLogSharedInstance(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *v50 = 0;
      _os_log_impl(&dword_23EDDC000, v20, OS_LOG_TYPE_DEBUG, " Starting waving right hand detection ", v50, 2u);
    }

    v21 = detectWavingHand(v55, v53, __p, *&buf[0], v63, self->_maxPreviousPoses, self->_wavingAngleChangeLastFrames, self->_wavingMinPeriodicFrames);
    v22 = v21;
    if (self->_maxPreviousPoses != self->_raisingMaxPreviousPoses)
    {
      v48 = v10;
      v23 = v19;
      v19 = resultCopy;
      v24 = 8 * (self->_maxPreviousPoses - self->_raisingMaxPreviousPoses);
      v25 = *&buf[0];
      v26 = *(&buf[0] + 1) - (*&buf[0] + v24);
      if (*(&buf[0] + 1) != *&buf[0] + v24)
      {
        v21 = memmove(*&buf[0], (*&buf[0] + v24), *(&buf[0] + 1) - (*&buf[0] + v24));
      }

      *(&buf[0] + 1) = v25 + v26;
      v27 = v63;
      v28 = v64 - &v63[v24];
      if (v64 != &v63[v24])
      {
        v21 = memmove(v63, &v63[v24], v64 - &v63[v24]);
      }

      v64 = &v27[v28];
      v29 = v61;
      v30 = v62 - (v61 + v24);
      if (v62 != v61 + v24)
      {
        v21 = memmove(v61, v61 + v24, v62 - (v61 + v24));
      }

      v62 = &v29[v30];
      v31 = v59;
      v32 = v60 - (v59 + v24);
      if (v60 != v59 + v24)
      {
        v21 = memmove(v59, v59 + v24, v60 - (v59 + v24));
      }

      v60 = &v31[v32];
      v33 = v57;
      v34 = v58 - (v57 + v24);
      if (v58 != v57 + v24)
      {
        v21 = memmove(v57, v57 + v24, v58 - (v57 + v24));
      }

      v58 = &v33[v34];
      v35 = v55;
      v36 = v56 - (v55 + v24);
      if (v56 != v55 + v24)
      {
        v21 = memmove(v55, v55 + v24, v56 - (v55 + v24));
      }

      v56 = &v35[v36];
      v37 = v53;
      v38 = v54 - (v53 + v24);
      if (v54 != v53 + v24)
      {
        v21 = memmove(v53, v53 + v24, v54 - (v53 + v24));
      }

      v54 = &v37[v38];
      v39 = __p;
      v40 = v52 - (__p + v24);
      if (v52 != __p + v24)
      {
        v21 = memmove(__p, __p + v24, v52 - (__p + v24));
      }

      v52 = &v39[v40];
      resultCopy = v19;
      LODWORD(v19) = v23;
      v10 = v48;
    }

    v41 = __ABPKLogSharedInstance(v21);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      *v50 = 0;
      _os_log_impl(&dword_23EDDC000, v41, OS_LOG_TYPE_DEBUG, " Starting raising left hand detection ", v50, 2u);
    }

    v42 = detectRaisingHand(v61, v59, v57, *&buf[0], v63, self->_raisingMaxPreviousPoses);
    v43 = v42;
    v44 = __ABPKLogSharedInstance(v42);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      *v50 = 0;
      _os_log_impl(&dword_23EDDC000, v44, OS_LOG_TYPE_DEBUG, " Starting raising right hand detection ", v50, 2u);
    }

    v45 = detectRaisingHand(v55, v53, __p, *&buf[0], v63, self->_raisingMaxPreviousPoses);
    v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v47 = v46;
    if (v43 || v45)
    {
      [v46 addObject:&unk_285175480];
    }

    if (v19 | v22)
    {
      [v47 addObject:&unk_285175498];
    }

    if (v49)
    {
      [v47 addObject:&unk_2851754B0];
    }

    [resultCopy set2dSkeleton:detectionCopy isPoseValid:1 trackingId:v6 gestureTypes:v47];

    if (__p)
    {
      v52 = __p;
      operator delete(__p);
    }

    if (v53)
    {
      v54 = v53;
      operator delete(v53);
    }

    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }

    if (v57)
    {
      v58 = v57;
      operator delete(v57);
    }

    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }

    if (v61)
    {
      v62 = v61;
      operator delete(v61);
    }

    if (v63)
    {
      v64 = v63;
      operator delete(v63);
    }

    if (*&buf[0])
    {
      *(&buf[0] + 1) = *&buf[0];
      operator delete(*&buf[0]);
    }
  }

  else
  {
    v16 = __ABPKLogSharedInstance(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_23EDDC000, v16, OS_LOG_TYPE_DEBUG, " Pose history not sufficient for gesture detection ", buf, 2u);
    }

    [resultCopy set2dSkeleton:detectionCopy isPoseValid:1 trackingId:v6 gestureTypes:MEMORY[0x277CBEBF8]];
  }
}

- (BOOL)overlayResult:(id)result OnImage:(__CVBuffer *)image andGenerateOverlayImage:(__CVBuffer *)overlayImage
{
  *(&v38 + 1) = *MEMORY[0x277D85DE8];
  resultCopy = result;
  *buf = xmmword_23EE281B0;
  v27 = xmmword_23EE281C0;
  *&v8 = 255;
  *(&v8 + 1) = 255;
  v28 = xmmword_23EE281D0;
  v29 = v8;
  v30 = xmmword_23EE281E0;
  v31 = xmmword_23EE281F0;
  *&v9 = 0xFF000000FFLL;
  *(&v9 + 1) = 0xFF000000FFLL;
  v32 = v9;
  v33 = 0u;
  v34 = xmmword_23EE28200;
  v35 = xmmword_23EE28210;
  v36 = xmmword_23EE28220;
  v37 = xmmword_23EE28230;
  v24 = 0;
  v25 = 0;
  __p = 0;
  _ZNSt3__16vectorIDv3_iNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&__p, buf, &v38, 0xCuLL);
  v10 = 0;
  *&v11 = 134217984;
  v22 = v11;
  while (1)
  {
    v12 = [resultCopy count];
    if (v10 >= v12)
    {
      break;
    }

    v13 = __ABPKLogSharedInstance(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = v22;
      *&buf[4] = v10;
      _os_log_impl(&dword_23EDDC000, v13, OS_LOG_TYPE_DEBUG, " \x10Overlaying result for Person: %lu ", buf, 0xCu);
    }

    v14 = [resultCopy objectAtIndexedSubscript:v10];
    gestureTypes = [v14 gestureTypes];
    v16 = [gestureTypes count];

    trackingId = [v14 trackingId];
    if (v16)
    {
      v18 = __ABPKLogSharedInstance(trackingId);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v18, OS_LOG_TYPE_DEBUG, " Gesture detected ", buf, 2u);
      }

      *&v19 = 0xFF00000000;
    }

    else
    {
      v19 = *(__p + trackingId % ((v24 - __p) >> 4));
    }

    if (v10)
    {
      imageCopy = overlayImage;
    }

    else
    {
      imageCopy = image;
    }

    [v14 overlayResultOnImage:imageCopy withResult:overlayImage withColor:*&v19];

    ++v10;
  }

  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  return 1;
}

@end