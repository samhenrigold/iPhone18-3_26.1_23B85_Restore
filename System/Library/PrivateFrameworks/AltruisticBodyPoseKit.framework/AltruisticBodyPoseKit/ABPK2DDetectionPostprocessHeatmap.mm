@interface ABPK2DDetectionPostprocessHeatmap
- (ABPK2DDetectionPostprocessHeatmap)initWithInputJoints:(unint64_t)joints andOutputJoints:(unint64_t)outputJoints use3DSkeletonForExtrapolation:(BOOL)extrapolation shouldPush3DSupportSkeleton:(BOOL)skeleton withExtrapolationTime:(double)time;
- (id)get2DDetectionResultforRotation:(int64_t)rotation croppedRect:(CGRect)rect;
- (id)getRaw2DDetectionResultforRotation:(int64_t)rotation croppedRect:(CGRect)rect;
- (int)extract2DSkeletonfromBuffers:(id)buffers withImagePreProcessingParams:(id)params atTimestamp:(double)timestamp previousSkeleton3D:(id)d;
- (void)getRawTrackedHumanForLiftingSkeleton:(id)skeleton;
- (void)getRawTrackedHumanSkeleton:(id)skeleton;
- (void)getRawTrackedHumanSkeletonVector:(id)vector;
- (void)getTrackedHumanForLiftingSkeleton:(id)skeleton;
- (void)getTrackedHumanSkeleton:(id)skeleton;
@end

@implementation ABPK2DDetectionPostprocessHeatmap

- (ABPK2DDetectionPostprocessHeatmap)initWithInputJoints:(unint64_t)joints andOutputJoints:(unint64_t)outputJoints use3DSkeletonForExtrapolation:(BOOL)extrapolation shouldPush3DSupportSkeleton:(BOOL)skeleton withExtrapolationTime:(double)time
{
  skeletonCopy = skeleton;
  extrapolationCopy = extrapolation;
  v42 = *MEMORY[0x277D85DE8];
  v39.receiver = self;
  v39.super_class = ABPK2DDetectionPostprocessHeatmap;
  v12 = [(ABPK2DDetectionPostprocessHeatmap *)&v39 init];
  v13 = v12;
  if (!v12)
  {
    return v13;
  }

  v12->_numberOfInputJoints = joints;
  v12->_numberOfOutputJoints = outputJoints;
  v14 = [[ABPK2DExtrapolationFiltering alloc] initWithUse3DSkeletonForExtrapolation:extrapolationCopy shouldPush3DSupportSkeleton:skeletonCopy withExtrapolationTime:time];
  extrapolationFiltering = v13->_extrapolationFiltering;
  v13->_extrapolationFiltering = v14;

  v13->_saveKeypoints = 1;
  v13->_humansDetected = 1;
  v17 = __ABPKLogSharedInstance(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v17, OS_LOG_TYPE_DEBUG, " ABPK2DDetectionPostprocessHeatmap: Initializing ", buf, 2u);
  }

  v19 = __ABPKLogSharedInstance(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = *&v13->_numberOfInputJoints;
    *buf = 134217984;
    v41 = v20;
    _os_log_impl(&dword_23EDDC000, v19, OS_LOG_TYPE_DEBUG, " \t Number of input joints: %zu ", buf, 0xCu);
  }

  v22 = __ABPKLogSharedInstance(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = *&v13->_numberOfOutputJoints;
    *buf = 134217984;
    v41 = v23;
    _os_log_impl(&dword_23EDDC000, v22, OS_LOG_TYPE_DEBUG, " \t Number of output joints: %zu ", buf, 0xCu);
  }

  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  trackedBodies = v13->_trackedBodies;
  v13->_trackedBodies = v24;

  v13->_abpkPersonTrackerFPS = 1;
  v26 = objc_alloc_init(ABPKPersonIDTracker);
  abpkPersonIDTracker = v13->_abpkPersonIDTracker;
  v13->_abpkPersonIDTracker = v26;

  v13->_abpkPersonIDTrackerSupportedOnDevice = 1;
  if (v13->_abpkPersonIDTracker)
  {
    v29 = __ABPKLogSharedInstance(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v29, OS_LOG_TYPE_DEBUG, " ABPKPersonIDTracker initialized in ABPK2DDetectionPostprocessHeatmap ", buf, 2u);
    }

    abpkPersonTrackerFPS = v13->_abpkPersonTrackerFPS;
    if (abpkPersonTrackerFPS > 1)
    {
      if (abpkPersonTrackerFPS == 2)
      {
        v32 = __ABPKLogSharedInstance(v30);
        v33 = 1045220557;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          v34 = " ABPKPersonIDTracker being initialized with fps: 5 ";
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      if (abpkPersonTrackerFPS == 3)
      {
        v32 = __ABPKLogSharedInstance(v30);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23EDDC000, v32, OS_LOG_TYPE_DEBUG, " ABPKPersonIDTracker being initialized with fps: 0 ", buf, 2u);
        }

        v33 = 2139095039;
        goto LABEL_29;
      }
    }

    else
    {
      if (!abpkPersonTrackerFPS)
      {
        v32 = __ABPKLogSharedInstance(v30);
        v33 = 1015580809;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          v34 = " ABPKPersonIDTracker being initialized with fps: 60 ";
          goto LABEL_28;
        }

LABEL_29:

        LODWORD(v13->_timeLastABPKTrackerRunThreshold) = v33;
        goto LABEL_30;
      }

      if (abpkPersonTrackerFPS == 1)
      {
        v32 = __ABPKLogSharedInstance(v30);
        v33 = 1023969417;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          v34 = " ABPKPersonIDTracker being initialized with fps: 30 ";
LABEL_28:
          _os_log_impl(&dword_23EDDC000, v32, OS_LOG_TYPE_DEBUG, v34, buf, 2u);
          goto LABEL_29;
        }

        goto LABEL_29;
      }
    }

LABEL_30:
    v36 = __ABPKLogSharedInstance(v30);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      timeLastABPKTrackerRunThreshold = v13->_timeLastABPKTrackerRunThreshold;
      *buf = 134217984;
      v41 = timeLastABPKTrackerRunThreshold;
      _os_log_impl(&dword_23EDDC000, v36, OS_LOG_TYPE_DEBUG, " ABPKPersonIDTracker _timeLastABPKTrackerRunThreshold: %f ", buf, 0xCu);
    }

    v13->_timeLastABPKTrackerRun = 0.0;
    return v13;
  }

  v35 = __ABPKLogSharedInstance(v28);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v35, OS_LOG_TYPE_ERROR, " Failed to initialize ABPK Person ID Tracker ", buf, 2u);
  }

  v13->_abpkPersonIDTrackerSupportedOnDevice = 0;
  return v13;
}

- (int)extract2DSkeletonfromBuffers:(id)buffers withImagePreProcessingParams:(id)params atTimestamp:(double)timestamp previousSkeleton3D:(id)d
{
  v102 = *MEMORY[0x277D85DE8];
  buffersCopy = buffers;
  paramsCopy = params;
  dCopy = d;
  v12 = __ABPKLogSharedInstance([(ABPK2DDetectionPostprocessHeatmap *)self _startExtract2DSkeletonSignpostWithTimestamp:timestamp]);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v12, OS_LOG_TYPE_DEBUG, " ABPK2DDetectionPostprocessHeatmap: Extracting 2D skeleton from buffers ", buf, 2u);
  }

  objc_storeStrong(&self->_imagePreProcessingParams, params);
  rotationNeeded = [buffersCopy rotationNeeded];
  heatMapBuffer = [buffersCopy heatMapBuffer];
  CVPixelBufferLockBaseAddress(heatMapBuffer, 1uLL);
  [buffersCopy heatMapShape];
  v89 = v15;
  [buffersCopy heatMapShape];
  v86 = v16;
  BytesPerRow = CVPixelBufferGetBytesPerRow(heatMapBuffer);
  [(ABPK2DDetectionPostprocessHeatmap *)self _startMaxFilterSignpostWithTimestamp:timestamp];
  [(ABPK2DDetectionPostprocessHeatmap *)self _endMaxFilterSignpostWithTimestamp:timestamp];
  [(ABPK2DDetectionPostprocessHeatmap *)self _startExtractHumanSignpostWithTimestamp:timestamp];
  BaseAddress = CVPixelBufferGetBaseAddress(heatMapBuffer);
  v19 = v86;
  v20 = v86.n128_i32[1];
  v19.n128_u16[0] = 11878;
  abpk::parsePersonsfromHeatmapBuffer(BaseAddress, v86.n128_i32[1], BytesPerRow >> 1, buf, v19);
  v87 = rotationNeeded;
  v22 = __ABPKLogSharedInstance(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *v100 = 134217984;
    *&v100[4] = 0x6DB6DB6DB6DB6DB7 * ((v96 - *buf) >> 3);
    _os_log_impl(&dword_23EDDC000, v22, OS_LOG_TYPE_DEBUG, " \t Persons detected: %lu ", v100, 0xCu);
  }

  v24 = __ABPKLogSharedInstance(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *v100 = 0;
    _os_log_impl(&dword_23EDDC000, v24, OS_LOG_TYPE_DEBUG, " \t Converting person to human type ", v100, 2u);
  }

  valid = abpk::filterValidPersons(buf, v89, v20, 0.099976);
  v26 = __ABPKLogSharedInstance(valid);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    *v100 = 134217984;
    *&v100[4] = 0x6DB6DB6DB6DB6DB7 * ((v96 - *buf) >> 3);
    _os_log_impl(&dword_23EDDC000, v26, OS_LOG_TYPE_DEBUG, " \t Valid Persons detected: %lu ", v100, 0xCu);
  }

  v27 = abpk::convertPersonsToHuman(buf, self->_numberOfOutputJoints, v100);
  v28 = __ABPKLogSharedInstance(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    *v97 = 134217984;
    *&v97[4] = 0xEEEEEEEEEEEEEEEFLL * ((*&v100[8] - *v100) >> 3);
    _os_log_impl(&dword_23EDDC000, v28, OS_LOG_TYPE_DEBUG, " \t Humans detected: %lu ", v97, 0xCu);
  }

  CVPixelBufferUnlockBaseAddress(heatMapBuffer, 1uLL);
  CVPixelBufferRelease(heatMapBuffer);
  v29 = [(ABPK2DDetectionPostprocessHeatmap *)self _endExtractHumanSignpostWithTimestamp:timestamp];
  v31 = *buf;
  v30 = v96;
  if (v96 != *buf)
  {
    if (!self->_humansDetected)
    {
      v32 = __ABPKLogSharedInstance(v29);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *v97 = 0;
        _os_log_impl(&dword_23EDDC000, v32, OS_LOG_TYPE_DEBUG, " Humans detected in the image ", v97, 2u);
      }

      self->_humansDetected = 1;
      v31 = *buf;
      v30 = v96;
    }

    if (0x6DB6DB6DB6DB6DB7 * ((v30 - v31) >> 3) != 0xEEEEEEEEEEEEEEEFLL * ((*&v100[8] - *v100) >> 3))
    {
      v64 = __ABPKLogSharedInstance(v29);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        *v97 = 0;
        _os_log_impl(&dword_23EDDC000, v64, OS_LOG_TYPE_ERROR, " convertPersonsToHuman failed. Count difference. ", v97, 2u);
      }

      v66 = __ABPKLogSharedInstance(v65);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        *v97 = 134217984;
        *&v97[4] = 0x6DB6DB6DB6DB6DB7 * ((v96 - *buf) >> 3);
        _os_log_impl(&dword_23EDDC000, v66, OS_LOG_TYPE_ERROR, " Persons count: %zu ", v97, 0xCu);
      }

      v68 = __ABPKLogSharedInstance(v67);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        *v97 = 134217984;
        *&v97[4] = 0xEEEEEEEEEEEEEEEFLL * ((*&v100[8] - *v100) >> 3);
        _os_log_impl(&dword_23EDDC000, v68, OS_LOG_TYPE_ERROR, " Humans count %zu ", v97, 0xCu);
      }

      goto LABEL_69;
    }

    if (self->_numberOfOutputJoints != (*(*v100 + 8) - **v100) >> 3)
    {
      v69 = __ABPKLogSharedInstance(v29);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        *v97 = 0;
        _os_log_impl(&dword_23EDDC000, v69, OS_LOG_TYPE_ERROR, " convertPersonsToHuman failed. Invalid number of joints in the converted human type. ", v97, 2u);
      }

      v71 = __ABPKLogSharedInstance(v70);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        v72 = (*(*v100 + 8) - **v100) >> 3;
        numberOfOutputJoints = self->_numberOfOutputJoints;
        *v97 = 134218240;
        *&v97[4] = v72;
        v98 = 2048;
        v99 = numberOfOutputJoints;
        _os_log_impl(&dword_23EDDC000, v71, OS_LOG_TYPE_ERROR, " Actual joints: %zu. Expected: %zu ", v97, 0x16u);
      }

      goto LABEL_69;
    }

    v33 = __ABPKLogSharedInstance(v29);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *v97 = 0;
      _os_log_impl(&dword_23EDDC000, v33, OS_LOG_TYPE_DEBUG, " \t Converting 2d points from ML space to image space ", v97, 2u);
    }

    [paramsCopy inputResolution];
    v84 = v34;
    v85 = v35;
    [paramsCopy outputResolution];
    v38 = *v100;
    v39 = *&v100[8];
    if (*v100 != *&v100[8])
    {
      v40 = v36;
      v41 = v37;
      v42.f64[0] = v84;
      v42.f64[1] = v85;
      v90 = v42;
      do
      {
        v43 = *v38;
        v44 = v38[1];
        while (v43 != v44)
        {
          LODWORD(v45) = HIDWORD(*v43);
          if (COERCE_FLOAT(*v43) != -1.0 && v45 != -1.0)
          {
            *&v47 = v40 * COERCE_FLOAT(*v43);
            v48 = v41 * v45;
            *(&v47 + 1) = v48;
            [ABPKImagePreProcessingParams convert2DPoint:paramsCopy toInputSpaceWithParams:v47];
            *v43 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(v49), v90));
          }

          ++v43;
        }

        v38 += 15;
      }

      while (v38 != v39);
    }

    removeAllObjects = [(NSMutableArray *)self->_trackedBodies removeAllObjects];
    if (self->_abpkPersonIDTrackerSupportedOnDevice)
    {
      v51 = __ABPKLogSharedInstance(removeAllObjects);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        inputImageData = [buffersCopy inputImageData];
        Width = CVPixelBufferGetWidth([inputImageData pixelBuffer]);
        inputImageData2 = [buffersCopy inputImageData];
        Height = CVPixelBufferGetHeight([inputImageData2 pixelBuffer]);
        *v97 = 134218240;
        *&v97[4] = Width;
        v98 = 2048;
        v99 = Height;
        _os_log_impl(&dword_23EDDC000, v51, OS_LOG_TYPE_DEBUG, " \t Running ANSTTracker on image with resolution: (w,h)=(%lu,%lu) ", v97, 0x16u);
      }

      abpkPersonIDTracker = self->_abpkPersonIDTracker;
      imageDataForNeuralNetwork = [buffersCopy imageDataForNeuralNetwork];
      v58 = -[ABPKPersonIDTracker runWithInput:atTimeStamp:andOutput:](abpkPersonIDTracker, "runWithInput:atTimeStamp:andOutput:", [imageDataForNeuralNetwork pixelBuffer], self->_trackedBodies, timestamp) == 0;

      if (v58)
      {
        v60 = __ABPKLogSharedInstance(v59);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          *v97 = 0;
          _os_log_impl(&dword_23EDDC000, v60, OS_LOG_TYPE_DEBUG, " \t _abpkPersonIDTracker ran successfully ", v97, 2u);
        }
      }

      v61 = __ABPKLogSharedInstance(v59);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
      {
        v62 = [(NSMutableArray *)self->_trackedBodies count];
        *v97 = 134217984;
        *&v97[4] = v62;
        _os_log_impl(&dword_23EDDC000, v61, OS_LOG_TYPE_DEBUG, " \t _trackedBodies count: %lu ", v97, 0xCu);
      }
    }

    else
    {
      v58 = 0;
    }

    v74 = __ABPKLogSharedInstance([(ABPK2DDetectionPostprocessHeatmap *)self _startExtrapolationSignpostWithTimestamp:timestamp]);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
    {
      *v97 = 0;
      _os_log_impl(&dword_23EDDC000, v74, OS_LOG_TYPE_DEBUG, " \t Performing extrapolation ", v97, 2u);
    }

    if (v58 && [(NSMutableArray *)self->_trackedBodies count])
    {
      extrapolationFiltering = self->_extrapolationFiltering;
      v93 = *v100;
      v94 = v101;
      v101 = 0;
      memset(v100, 0, sizeof(v100));
      v76 = &v93;
      timestamp = [(ABPK2DExtrapolationFiltering *)extrapolationFiltering performExtrapolationOnHumans:&v93 withImageResolution:v87 atTimestamp:dCopy rotationNeeded:self->_trackedBodies previousSkeleton3D:v84 personTracker:v85, timestamp];
    }

    else
    {
      v78 = self->_extrapolationFiltering;
      v91 = *v100;
      v92 = v101;
      v101 = 0;
      memset(v100, 0, sizeof(v100));
      v76 = &v91;
      timestamp = [(ABPK2DExtrapolationFiltering *)v78 performExtrapolationOnHumans:&v91 withImageResolution:v87 atTimestamp:dCopy rotationNeeded:v84 previousSkeleton3D:v85, timestamp];
    }

    v79 = timestamp;
    *v97 = v76;
    std::vector<abpk::Human>::__destroy_vector::operator()[abi:ne200100](v97);
    [(ABPK2DDetectionPostprocessHeatmap *)self _endExtrapolationSignpostWithTimestamp:timestamp];
    v80 = [(ABPK2DDetectionPostprocessHeatmap *)self _endExtract2DSkeletonSignpostWithTimestamp:timestamp];
    if (!v79)
    {
      v82 = 0;
      goto LABEL_70;
    }

    v81 = __ABPKLogSharedInstance(v80);
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      *v97 = 0;
      _os_log_impl(&dword_23EDDC000, v81, OS_LOG_TYPE_ERROR, " 2D Extrapolation failed ", v97, 2u);
    }

    goto LABEL_68;
  }

  if (self->_humansDetected)
  {
    v63 = __ABPKLogSharedInstance(v29);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
    {
      *v97 = 0;
      _os_log_impl(&dword_23EDDC000, v63, OS_LOG_TYPE_DEBUG, " No humans detected in the image ", v97, 2u);
    }

LABEL_68:
    self->_humansDetected = 0;
  }

LABEL_69:
  v82 = -6661;
LABEL_70:
  *v97 = v100;
  std::vector<abpk::Human>::__destroy_vector::operator()[abi:ne200100](v97);
  *v100 = buf;
  std::vector<abpk::HeatmapPersonData>::__destroy_vector::operator()[abi:ne200100](v100);

  return v82;
}

- (void)getRawTrackedHumanSkeleton:(id)skeleton
{
  skeletonCopy = skeleton;
  rawTrackedHuman = [(ABPK2DDetectionPostprocessHeatmap *)self rawTrackedHuman];
  v5 = *rawTrackedHuman;
  [(ABPKImagePreProcessingParams *)self->_imagePreProcessingParams inputResolution];
  [skeletonCopy setNormalizedKeypoints2d:v5 withImageRes:?];
  [skeletonCopy setJointVisibility:rawTrackedHuman[3]];
  [skeletonCopy setJointConfidences:rawTrackedHuman[6]];
  [skeletonCopy setHasMissingJoints:rawTrackedHuman[13] < ((rawTrackedHuman[1] - *rawTrackedHuman) >> 3)];
}

- (void)getRawTrackedHumanSkeletonVector:(id)vector
{
  vectorCopy = vector;
  rawTrackedHumanVector = [(ABPK2DDetectionPostprocessHeatmap *)self rawTrackedHumanVector];
  v5 = *rawTrackedHumanVector;
  v6 = rawTrackedHumanVector[1];
  if (*rawTrackedHumanVector != v6)
  {
    do
    {
      v7 = objc_alloc_init(ABPK2dSkeleton);
      v8 = *v5;
      [(ABPKImagePreProcessingParams *)self->_imagePreProcessingParams inputResolution];
      [(ABPK2dSkeleton *)v7 setNormalizedKeypoints2d:v8 withImageRes:?];
      [(ABPK2dSkeleton *)v7 setJointVisibility:v5[3]];
      [(ABPK2dSkeleton *)v7 setJointConfidences:v5[6]];
      [(ABPK2dSkeleton *)v7 setHasMissingJoints:v5[13] < ((v5[1] - *v5) >> 3)];
      [vectorCopy addObject:v7];

      v5 += 15;
    }

    while (v5 != v6);
  }
}

- (void)getTrackedHumanSkeleton:(id)skeleton
{
  skeletonCopy = skeleton;
  trackedHuman = [(ABPK2DDetectionPostprocessHeatmap *)self trackedHuman];
  v5 = *trackedHuman;
  [(ABPKImagePreProcessingParams *)self->_imagePreProcessingParams inputResolution];
  [skeletonCopy setNormalizedKeypoints2d:v5 withImageRes:?];
  [skeletonCopy setJointVisibility:trackedHuman[3]];
  [skeletonCopy setJointConfidences:trackedHuman[6]];
  [skeletonCopy setHasMissingJoints:trackedHuman[13] < ((trackedHuman[1] - *trackedHuman) >> 3)];
}

- (void)getTrackedHumanForLiftingSkeleton:(id)skeleton
{
  skeletonCopy = skeleton;
  trackedHumanForLifting = [(ABPK2DDetectionPostprocessHeatmap *)self trackedHumanForLifting];
  v5 = *trackedHumanForLifting;
  [(ABPKImagePreProcessingParams *)self->_imagePreProcessingParams inputResolution];
  [skeletonCopy setNormalizedKeypoints2d:v5 withImageRes:?];
  [skeletonCopy setJointVisibility:trackedHumanForLifting[3]];
  [skeletonCopy setJointConfidences:trackedHumanForLifting[6]];
  [skeletonCopy setHasMissingJoints:trackedHumanForLifting[13] < ((trackedHumanForLifting[1] - *trackedHumanForLifting) >> 3)];
}

- (void)getRawTrackedHumanForLiftingSkeleton:(id)skeleton
{
  skeletonCopy = skeleton;
  rawTrackedHuman = [(ABPK2DDetectionPostprocessHeatmap *)self rawTrackedHuman];
  v5 = *rawTrackedHuman;
  [(ABPKImagePreProcessingParams *)self->_imagePreProcessingParams inputResolution];
  [skeletonCopy setNormalizedKeypoints2d:v5 withImageRes:?];
  [skeletonCopy setJointVisibility:rawTrackedHuman[3]];
  [skeletonCopy setJointConfidences:rawTrackedHuman[6]];
}

- (id)get2DDetectionResultforRotation:(int64_t)rotation croppedRect:(CGRect)rect
{
  trackedHuman = [(ABPK2DDetectionPostprocessHeatmap *)self trackedHuman];
  trackedHumanForLifting = [(ABPK2DDetectionPostprocessHeatmap *)self trackedHumanForLifting];
  if (trackedHumanForLifting[13] >= ((trackedHumanForLifting[1] - *trackedHumanForLifting) >> 3))
  {
    v8 = [[ABPK2D3DLiftingData alloc] initWithHumanForLifting:trackedHumanForLifting imageSize:rotation rotation:1000.0 croppedRect:1000.0, 0.0, 0.0, 1.0, 1.0];
  }

  else
  {
    v8 = 0;
  }

  v9 = [ABPK2DDetectionResult alloc];
  v10 = *abpk::Human::jointVector(trackedHuman);
  v11 = trackedHuman[3];
  v14 = trackedHuman;
  v12 = *trackedHuman;
  v13 = v14[1];
  [(ABPKImagePreProcessingParams *)self->_imagePreProcessingParams inputResolution];
  v15 = [ABPK2DDetectionResult initWithJoints:v9 trackingStates:"initWithJoints:trackingStates:numberOfJoints:imageResolution:rotation:croppedRect:liftingData:" numberOfJoints:v10 imageResolution:v11 rotation:(v13 - v12) >> 3 croppedRect:rotation liftingData:v8];

  return v15;
}

- (id)getRaw2DDetectionResultforRotation:(int64_t)rotation croppedRect:(CGRect)rect
{
  rawTrackedHuman = [(ABPK2DDetectionPostprocessHeatmap *)self rawTrackedHuman];
  v7 = [[ABPK2D3DLiftingData alloc] initWithHumanForLifting:rawTrackedHuman imageSize:rotation rotation:1000.0 croppedRect:1000.0, 0.0, 0.0, 1.0, 1.0];
  v8 = [ABPK2DDetectionResult alloc];
  v9 = *abpk::Human::jointVector(rawTrackedHuman);
  v10 = rawTrackedHuman[3];
  v13 = rawTrackedHuman;
  v11 = *rawTrackedHuman;
  v12 = v13[1];
  [(ABPKImagePreProcessingParams *)self->_imagePreProcessingParams inputResolution];
  v14 = [ABPK2DDetectionResult initWithJoints:v8 trackingStates:"initWithJoints:trackingStates:numberOfJoints:imageResolution:rotation:croppedRect:liftingData:" numberOfJoints:v9 imageResolution:v10 rotation:(v12 - v11) >> 3 croppedRect:rotation liftingData:v7];

  return v14;
}

@end