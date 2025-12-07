@interface ABPKMultiPerson2DTracking
- (ABPKMultiPerson2DTracking)init;
- (BOOL)overlayResult:(id)result OnImage:(__CVBuffer *)image andGenerateOverlayImage:(__CVBuffer *)overlayImage;
- (BOOL)overlayTrackedBodiesOnImage:(__CVBuffer *)image andGenerateOverlayImage:(__CVBuffer *)overlayImage;
- (CGRect)_rotateBoundingBoxToPortrait:(CGRect)portrait withImageRes:(CGSize)res;
- (int)runPoseEstimationWithInput:(__CVBuffer *)input abpkDeviceOrientation:(int64_t)orientation atTimeStamp:(double)stamp andOutput:(id)output;
- (int)runWithInput:(__CVBuffer *)input abpkDeviceOrientation:(int64_t)orientation atTimeStamp:(double)stamp andOutput:(id)output;
@end

@implementation ABPKMultiPerson2DTracking

- (ABPKMultiPerson2DTracking)init
{
  [(ABPKMultiPerson2DTracking *)self _startInitABPKSignpost];
  v22.receiver = self;
  v22.super_class = ABPKMultiPerson2DTracking;
  v3 = [(ABPKMultiPerson2DTracking *)&v22 init];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = objc_alloc_init(ABPKPersonIDTracker);
  abpkPersonIDTracker = v3->_abpkPersonIDTracker;
  v3->_abpkPersonIDTracker = v4;

  if (!v3->_abpkPersonIDTracker)
  {
    v18 = __ABPKLogSharedInstance(v6);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *v21 = 0;
    v19 = " Failed to initialize ABPK Person ID Tracker ";
LABEL_13:
    _os_log_impl(&dword_23EDDC000, v18, OS_LOG_TYPE_ERROR, v19, v21, 2u);
    goto LABEL_14;
  }

  v7 = [[ABPK2DDetectionConfiguration alloc] initWithAlgorithmMode:10];
  config2D = v3->_config2D;
  v3->_config2D = v7;

  if (!v3->_config2D)
  {
    v18 = __ABPKLogSharedInstance(v9);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *v21 = 0;
    v19 = " Failed to initialize config for 2D Detection module ";
    goto LABEL_13;
  }

  v10 = [[ABPK2DPoseEstimation alloc] initWith2DDetectionConfig:v3->_config2D use3DSkeletonForExtrapolation:0 shouldPush3DSupportSkeleton:0];
  poseEstimation2D = v3->_poseEstimation2D;
  v3->_poseEstimation2D = v10;

  if (!v3->_poseEstimation2D)
  {
    v18 = __ABPKLogSharedInstance(v12);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      v19 = " Failed to initialize 2D Pose Estimation Algorithm. ";
      goto LABEL_13;
    }

LABEL_14:

    v17 = 0;
    goto LABEL_15;
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  previousMultiPerson2DResult = v3->_previousMultiPerson2DResult;
  v3->_previousMultiPerson2DResult = v13;

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  trackedBodies = v3->_trackedBodies;
  v3->_trackedBodies = v15;

  v3->_lastTrackingId = -1;
LABEL_6:
  [(ABPKMultiPerson2DTracking *)v3 _endInitABPKSignpost];
  v17 = v3;
LABEL_15:

  return v17;
}

- (int)runWithInput:(__CVBuffer *)input abpkDeviceOrientation:(int64_t)orientation atTimeStamp:(double)stamp andOutput:(id)output
{
  v163 = *MEMORY[0x277D85DE8];
  outputCopy = output;
  [(ABPKMultiPerson2DTracking *)self _startMultiPerson2DTrackingRunWithInputSignpostWithTimestamp:stamp];
  [(NSMutableArray *)self->_trackedBodies removeAllObjects];
  [(ABPKPersonIDTracker *)self->_abpkPersonIDTracker runWithInput:input atTimeStamp:self->_trackedBodies andOutput:stamp];
  v10 = [(NSMutableArray *)self->_trackedBodies count];
  selfCopy = self;
  if (v10)
  {
    v11 = __ABPKLogSharedInstance(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v11, OS_LOG_TYPE_DEBUG, " Found full bodies in the image ", buf, 2u);
    }

    for (i = 0; ; ++i)
    {
      v13 = [(NSMutableArray *)selfCopy->_trackedBodies count];
      if (v13 <= i)
      {
        break;
      }

      v14 = __ABPKLogSharedInstance(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = [(NSMutableArray *)selfCopy->_trackedBodies objectAtIndexedSubscript:i];
        objectID = [v15 objectID];
        *buf = 134217984;
        *&buf[4] = objectID;
        _os_log_impl(&dword_23EDDC000, v14, OS_LOG_TYPE_DEBUG, " Person Tracking Id: %lu ", buf, 0xCu);
      }

      v17 = [(NSMutableArray *)selfCopy->_trackedBodies objectAtIndexedSubscript:i];
      [v17 boundingBox];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;

      v27 = __ABPKLogSharedInstance(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218752;
        *&buf[4] = v21;
        *&buf[12] = 2048;
        *&buf[14] = v19;
        v159 = 2048;
        v160 = v25;
        v161 = 2048;
        v162 = v23;
        _os_log_impl(&dword_23EDDC000, v27, OS_LOG_TYPE_DEBUG, " Bounding Box: (%f,%f,%f,%f ", buf, 0x2Au);
      }
    }
  }

  v145 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = [(ABPKMultiPerson2DTracking *)selfCopy runPoseEstimationWithInput:input abpkDeviceOrientation:orientation atTimeStamp:stamp andOutput:?];
  v142 = v28;
  v29 = __ABPKLogSharedInstance(v28);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v30 = [v145 count];
    *buf = 134217984;
    *&buf[4] = v30;
    _os_log_impl(&dword_23EDDC000, v29, OS_LOG_TYPE_DEBUG, " Humans detected: %lu ", buf, 0xCu);
  }

  v32 = __ABPKLogSharedInstance(v31);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v32, OS_LOG_TYPE_DEBUG, " ANST Bounding boxes ", buf, 2u);
  }

  for (j = 0; ; ++j)
  {
    v34 = [(NSMutableArray *)selfCopy->_trackedBodies count];
    if (v34 <= j)
    {
      break;
    }

    v35 = __ABPKLogSharedInstance(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = j;
      _os_log_impl(&dword_23EDDC000, v35, OS_LOG_TYPE_DEBUG, " Person: %d ", buf, 8u);
    }

    v36 = [(NSMutableArray *)selfCopy->_trackedBodies objectAtIndexedSubscript:j];
    boundingBox = [v36 boundingBox];
    printCGRect(boundingBox, v38, v39, v40, v41);
  }

  v42 = __ABPKLogSharedInstance(v34);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v42, OS_LOG_TYPE_DEBUG, " 2d Skeleton Bounding boxes ", buf, 2u);
  }

  for (k = 0; ; ++k)
  {
    v44 = [v145 count];
    if (v44 <= k)
    {
      break;
    }

    v45 = __ABPKLogSharedInstance(v44);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = k;
      _os_log_impl(&dword_23EDDC000, v45, OS_LOG_TYPE_DEBUG, " Person: %d ", buf, 8u);
    }

    v46 = [v145 objectAtIndexedSubscript:k];
    boundingBox2 = [v46 boundingBox];
    printCGRect(boundingBox2, v48, v49, v50, v51);
  }

  v52 = __ABPKLogSharedInstance([(ABPKMultiPerson2DTracking *)selfCopy _startMultiPerson2DTrackingPersonTrackingSignpostWithTimestamp:stamp]);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v52, OS_LOG_TYPE_DEBUG, " Computing tracking ids ", buf, 2u);
  }

  std::vector<unsigned long>::vector[abi:ne200100](buf, [v145 count]);
  v53 = 0.0;
  __src = 0;
  v151 = 0;
  v152 = 0;
  while (1)
  {
    v54 = [v145 count];
    if (*&v53 >= v54)
    {
      break;
    }

    v55 = __ABPKLogSharedInstance(v54);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      *v154 = 134217984;
      v155 = v53;
      _os_log_impl(&dword_23EDDC000, v55, OS_LOG_TYPE_DEBUG, " Finding tracking id for skeleton: %lu ", v154, 0xCu);
    }

    v56 = 0.0;
    *&v57 = NAN;
    v58 = -10000.0;
    while (1)
    {
      v59 = [(NSMutableArray *)selfCopy->_trackedBodies count];
      if (*&v56 >= v59)
      {
        break;
      }

      v60 = __ABPKLogSharedInstance(v59);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        v61 = [(NSMutableArray *)selfCopy->_trackedBodies objectAtIndexedSubscript:*&v56];
        objectID2 = [v61 objectID];
        *v154 = 134218240;
        v155 = v56;
        v156 = 2048;
        v157 = objectID2;
        _os_log_impl(&dword_23EDDC000, v60, OS_LOG_TYPE_DEBUG, " \t Comparing with ANST tracked body %lu with objec-id: %lu ", v154, 0x16u);
      }

      __p = 0;
      v148 = 0;
      v149 = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, __src, v151, (v151 - __src) >> 3);
      v63 = [(NSMutableArray *)selfCopy->_trackedBodies objectAtIndexedSubscript:*&v56];
      objectID3 = [v63 objectID];
      if (v148 == __p)
      {
        v67 = 0;
      }

      else
      {
        v65 = (v148 - __p) >> 3;
        if (v65 <= 1)
        {
          v66 = 1;
        }

        else
        {
          v66 = (v148 - __p) >> 3;
        }

        if (*__p == objectID3)
        {
          v67 = 1;
        }

        else
        {
          v68 = 1;
          do
          {
            v69 = v68;
            if (v66 == v68)
            {
              break;
            }

            v70 = *(__p + v68++);
          }

          while (v70 != objectID3);
          v67 = v69 < v65;
        }
      }

      v71 = __p;
      if (__p)
      {
        v148 = __p;
        operator delete(__p);
      }

      if (v67)
      {
        v72 = __ABPKLogSharedInstance(v71);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
        {
          *v154 = 0;
          _os_log_impl(&dword_23EDDC000, v72, OS_LOG_TYPE_DEBUG, " \t Skipping. Tracking id already assigned ", v154, 2u);
        }

        goto LABEL_57;
      }

      v73 = [v145 objectAtIndexedSubscript:*&v53];
      [v73 boundingBox];
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v81 = v80;
      v82 = [(NSMutableArray *)selfCopy->_trackedBodies objectAtIndexedSubscript:*&v56];
      [v82 boundingBox];
      v87 = computeIOUbetweenRects(v75, v77, v79, v81, v83, v84, v85, v86);

      v89 = __ABPKLogSharedInstance(v88);
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
      {
        *v154 = 134217984;
        v155 = v87;
        _os_log_impl(&dword_23EDDC000, v89, OS_LOG_TYPE_DEBUG, " \t\t iou: %f ", v154, 0xCu);
      }

      if (v87 > v58)
      {
        v72 = [(NSMutableArray *)selfCopy->_trackedBodies objectAtIndexedSubscript:*&v56];
        *&v57 = COERCE_DOUBLE([v72 objectID]);
        v58 = v87;
LABEL_57:
      }

      ++*&v56;
    }

    v90 = __ABPKLogSharedInstance(v59);
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
    {
      *v154 = 134217984;
      v155 = v58;
      _os_log_impl(&dword_23EDDC000, v90, OS_LOG_TYPE_DEBUG, " \t Maximum IOU: %f ", v154, 0xCu);
    }

    if (v58 >= 0.0)
    {
      v93 = selfCopy;
      if (*&v57 == NAN)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v92 = __ABPKLogSharedInstance(v91);
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
      {
        *v154 = 0;
        _os_log_impl(&dword_23EDDC000, v92, OS_LOG_TYPE_DEBUG, " IOU is lower than threshold. No closest human found from the previous frame. Assigning new tracking id ", v154, 2u);
      }

      v93 = selfCopy;
LABEL_66:
      v57 = v93->_lastTrackingId + 1;
      v93->_lastTrackingId = v57;
    }

    *(*buf + 8 * *&v53) = *&v57;
    v94 = __ABPKLogSharedInstance(v91);
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
    {
      *v154 = 134217984;
      v155 = *&v57;
      _os_log_impl(&dword_23EDDC000, v94, OS_LOG_TYPE_DEBUG, " \t Tracking id: %lu ", v154, 0xCu);
    }

    v95 = v151;
    if (v151 >= v152)
    {
      v97 = __src;
      v98 = v151 - __src;
      v99 = (v151 - __src) >> 3;
      v100 = v99 + 1;
      if ((v99 + 1) >> 61)
      {
        std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
      }

      v101 = v152 - __src;
      if ((v152 - __src) >> 2 > v100)
      {
        v100 = v101 >> 2;
      }

      v102 = v101 >= 0x7FFFFFFFFFFFFFF8;
      v103 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v102)
      {
        v103 = v100;
      }

      if (v103)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v103);
      }

      *(8 * v99) = *&v57;
      v96 = (8 * v99 + 8);
      memcpy(0, v97, v98);
      v104 = __src;
      __src = 0;
      v151 = v96;
      v152 = 0;
      if (v104)
      {
        operator delete(v104);
      }
    }

    else
    {
      *v151 = *&v57;
      v96 = v95 + 8;
    }

    v151 = v96;
    v105 = [v145 objectAtIndexedSubscript:*&v53];
    skeletonDefinition = [v105 skeletonDefinition];
    jointCount = [skeletonDefinition jointCount];

    v108 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v109 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v110 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (jointCount)
    {
      for (m = 0; m != jointCount; ++m)
      {
        v112 = [v145 objectAtIndexedSubscript:*&v53];
        v144 = *([v112 keypoints2d] + 8 * m);

        v113 = [v145 objectAtIndexedSubscript:*&v53];
        v114 = *([v113 confidences] + 4 * m);

        v115 = [v145 objectAtIndexedSubscript:*&v53];
        v116 = *([v115 visibility] + 4 * m);

        v117 = [MEMORY[0x277CCABB0] numberWithFloat:v144];
        v153[0] = v117;
        HIDWORD(v118) = HIDWORD(v144);
        LODWORD(v118) = HIDWORD(v144);
        v119 = [MEMORY[0x277CCABB0] numberWithFloat:v118];
        v153[1] = v119;
        v120 = [MEMORY[0x277CBEA60] arrayWithObjects:v153 count:2];
        [v108 addObject:v120];

        LODWORD(v121) = v114;
        v122 = [MEMORY[0x277CCABB0] numberWithFloat:v121];
        [v109 addObject:v122];

        v123 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v116];
        [v110 addObject:v123];
      }
    }

    ++*&v53;
  }

  v124 = __ABPKLogSharedInstance([(ABPKMultiPerson2DTracking *)selfCopy _endMultiPerson2DTrackingPersonTrackingSignpostWithTimestamp:stamp]);
  if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
  {
    *v154 = 0;
    _os_log_impl(&dword_23EDDC000, v124, OS_LOG_TYPE_DEBUG, " Creating result ", v154, 2u);
  }

  if (v142)
  {
    v126 = __ABPKLogSharedInstance(v125);
    if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
    {
      *v154 = 0;
      _os_log_impl(&dword_23EDDC000, v126, OS_LOG_TYPE_ERROR, " Pose not valid. Skipping ", v154, 2u);
    }

    previousMultiPerson2DResult = selfCopy->_previousMultiPerson2DResult;
    selfCopy->_previousMultiPerson2DResult = 0;

    v129 = __ABPKLogSharedInstance(v128);
    if (os_log_type_enabled(v129, OS_LOG_TYPE_DEBUG))
    {
      *&v130 = COERCE_DOUBLE([(NSMutableArray *)selfCopy->_previousMultiPerson2DResult count]);
      *v154 = 134217984;
      v155 = *&v130;
      _os_log_impl(&dword_23EDDC000, v129, OS_LOG_TYPE_DEBUG, " _previousMultiPerson2DResult count: %lu ", v154, 0xCu);
    }

    v131 = -6661;
  }

  else
  {
    for (n = 0; n < [v145 count]; ++n)
    {
      v133 = [v145 objectAtIndexedSubscript:n];
      v134 = *(*buf + 8 * n);
      v135 = objc_alloc_init(ABPKSinglePerson2DResult);
      [(ABPKSinglePerson2DResult *)v135 set2dSkeleton:v133 isPoseValid:1 trackingId:v134];
      [outputCopy addObject:v135];
    }

    v136 = [outputCopy mutableCopy];
    v137 = selfCopy->_previousMultiPerson2DResult;
    selfCopy->_previousMultiPerson2DResult = v136;

    v139 = __ABPKLogSharedInstance(v138);
    if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
    {
      *&v140 = COERCE_DOUBLE([(NSMutableArray *)selfCopy->_previousMultiPerson2DResult count]);
      *v154 = 134217984;
      v155 = *&v140;
      _os_log_impl(&dword_23EDDC000, v139, OS_LOG_TYPE_DEBUG, " _previousMultiPerson2DResult count: %lu ", v154, 0xCu);
    }

    [(ABPKMultiPerson2DTracking *)selfCopy _endMultiPerson2DTrackingRunWithInputSignpostWithTimestamp:stamp];
    v131 = 0;
  }

  if (__src)
  {
    v151 = __src;
    operator delete(__src);
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  return v131;
}

- (int)runPoseEstimationWithInput:(__CVBuffer *)input abpkDeviceOrientation:(int64_t)orientation atTimeStamp:(double)stamp andOutput:(id)output
{
  v51 = *MEMORY[0x277D85DE8];
  outputCopy = output;
  [(ABPKMultiPerson2DTracking *)self _startMultiPerson2DTrackingImagePreProcessingSignpostWithTimestamp:stamp];
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
        [(ABPKMultiPerson2DTracking *)self _endMultiPerson2DTrackingImagePreProcessingSignpostWithTimestamp:stamp];
        v39 = __ABPKLogSharedInstance([(ABPKMultiPerson2DTracking *)self _startMultiPerson2DTracking2DDetectionMLSignpostWithTimestamp:stamp]);
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
          [(ABPKMultiPerson2DTracking *)self _endMultiPerson2DTracking2DDetectionPostProcessingSignpostWithTimestamp:stamp];
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

- (CGRect)_rotateBoundingBoxToPortrait:(CGRect)portrait withImageRes:(CGSize)res
{
  width = portrait.size.width;
  v5 = res.width * 0.5 - (portrait.origin.y - res.width * 0.5);
  v6 = res.height * 0.5 + portrait.origin.x - res.height * 0.5;
  v7 = v5 - portrait.size.height;
  height = portrait.size.height;
  v9 = width;
  result.size.height = v9;
  result.size.width = height;
  result.origin.y = v6;
  result.origin.x = v7;
  return result;
}

- (BOOL)overlayTrackedBodiesOnImage:(__CVBuffer *)image andGenerateOverlayImage:(__CVBuffer *)overlayImage
{
  *(&v47 + 1) = *MEMORY[0x277D85DE8];
  *buf = xmmword_23EE281B0;
  *&buf[16] = xmmword_23EE281C0;
  *&v7 = 255;
  *(&v7 + 1) = 255;
  v37 = xmmword_23EE281D0;
  v38 = v7;
  v39 = xmmword_23EE281E0;
  v40 = xmmword_23EE281F0;
  *&v8 = 0xFF000000FFLL;
  *(&v8 + 1) = 0xFF000000FFLL;
  v41 = v8;
  v42 = 0u;
  v43 = xmmword_23EE28200;
  v44 = xmmword_23EE28210;
  v45 = xmmword_23EE28220;
  v46 = xmmword_23EE28230;
  v34 = 0;
  v35 = 0;
  __p = 0;
  _ZNSt3__16vectorIDv3_iNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&__p, buf, &v47, 0xCuLL);
  Width = CVPixelBufferGetWidth(image);
  Height = CVPixelBufferGetHeight(image);
  v11 = __ABPKLogSharedInstance(Height);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = Height;
    *&buf[12] = 2048;
    *&buf[14] = Width;
    _os_log_impl(&dword_23EDDC000, v11, OS_LOG_TYPE_DEBUG, " \x10overlayTrackedBodiesOnImage inputimage res: (h,w) = (%lu,%lu) ", buf, 0x16u);
  }

  v12 = 0;
  *&v13 = 134217984;
  v31 = v13;
  while (1)
  {
    v14 = [(NSMutableArray *)self->_trackedBodies count];
    if (v12 >= v14)
    {
      break;
    }

    v15 = __ABPKLogSharedInstance(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = [(NSMutableArray *)self->_trackedBodies objectAtIndexedSubscript:v12];
      objectID = [v16 objectID];
      *buf = v31;
      *&buf[4] = objectID;
      _os_log_impl(&dword_23EDDC000, v15, OS_LOG_TYPE_DEBUG, " \x10Overlaying result for Tracked Body with iD: %lu ", buf, 0xCu);
    }

    v18 = [(NSMutableArray *)self->_trackedBodies objectAtIndexedSubscript:v12];
    objectID2 = [v18 objectID];
    v32 = *(__p + objectID2 % ((v34 - __p) >> 4));

    v20 = [(NSMutableArray *)self->_trackedBodies objectAtIndexedSubscript:v12];
    [v20 boundingBox];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    if (v12)
    {
      imageCopy = overlayImage;
    }

    else
    {
      imageCopy = image;
    }

    overlay2dBoundingBox(imageCopy, overlayImage, v22, v24, v26, v28, *&v32);
    ++v12;
  }

  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  return 1;
}

- (BOOL)overlayResult:(id)result OnImage:(__CVBuffer *)image andGenerateOverlayImage:(__CVBuffer *)overlayImage
{
  *(&v34 + 1) = *MEMORY[0x277D85DE8];
  resultCopy = result;
  *buf = xmmword_23EE281B0;
  v23 = xmmword_23EE281C0;
  *&v8 = 255;
  *(&v8 + 1) = 255;
  v24 = xmmword_23EE281D0;
  v25 = v8;
  v26 = xmmword_23EE281E0;
  v27 = xmmword_23EE281F0;
  *&v9 = 0xFF000000FFLL;
  *(&v9 + 1) = 0xFF000000FFLL;
  v28 = v9;
  v29 = 0u;
  v30 = xmmword_23EE28200;
  v31 = xmmword_23EE28210;
  v32 = xmmword_23EE28220;
  v33 = xmmword_23EE28230;
  v20 = 0;
  v21 = 0;
  __p = 0;
  _ZNSt3__16vectorIDv3_iNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&__p, buf, &v34, 0xCuLL);
  v10 = 0;
  *&v11 = 134217984;
  v18 = v11;
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
      *buf = v18;
      *&buf[4] = v10;
      _os_log_impl(&dword_23EDDC000, v13, OS_LOG_TYPE_DEBUG, " \x10Overlaying result for Person: %lu ", buf, 0xCu);
    }

    v14 = [resultCopy objectAtIndexedSubscript:v10];
    trackingId = [v14 trackingId];
    if (v10)
    {
      imageCopy = overlayImage;
    }

    else
    {
      imageCopy = image;
    }

    [v14 overlayResultOnImage:imageCopy withResult:overlayImage withColor:*(__p + 2 * (trackingId % ((v20 - __p) >> 4)))];

    ++v10;
  }

  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  return 1;
}

@end