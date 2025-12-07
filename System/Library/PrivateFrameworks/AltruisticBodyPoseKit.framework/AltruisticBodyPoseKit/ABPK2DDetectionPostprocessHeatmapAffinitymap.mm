@interface ABPK2DDetectionPostprocessHeatmapAffinitymap
- (ABPK2DDetectionPostprocessHeatmapAffinitymap)initWithInputJoints:(unint64_t)joints andOutputJoints:(unint64_t)outputJoints use3DSkeletonForExtrapolation:(BOOL)extrapolation shouldPush3DSupportSkeleton:(BOOL)skeleton withExtrapolationTime:(double)time;
- (id)get2DDetectionResultforRotation:(int64_t)rotation croppedRect:(CGRect)rect;
- (id)getRaw2DDetectionResultforRotation:(int64_t)rotation croppedRect:(CGRect)rect;
- (int)extract2DSkeletonfromBuffers:(id)buffers withImagePreProcessingParams:(id)params atTimestamp:(double)timestamp previousSkeleton3D:(id)d;
- (void)getRawTrackedHumanForLiftingSkeleton:(id)skeleton;
- (void)getRawTrackedHumanSkeleton:(id)skeleton;
- (void)getRawTrackedHumanSkeletonVector:(id)vector;
- (void)getTrackedHumanForLiftingSkeleton:(id)skeleton;
- (void)getTrackedHumanSkeleton:(id)skeleton;
@end

@implementation ABPK2DDetectionPostprocessHeatmapAffinitymap

- (ABPK2DDetectionPostprocessHeatmapAffinitymap)initWithInputJoints:(unint64_t)joints andOutputJoints:(unint64_t)outputJoints use3DSkeletonForExtrapolation:(BOOL)extrapolation shouldPush3DSupportSkeleton:(BOOL)skeleton withExtrapolationTime:(double)time
{
  skeletonCopy = skeleton;
  extrapolationCopy = extrapolation;
  v30 = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = ABPK2DDetectionPostprocessHeatmapAffinitymap;
  v12 = [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)&v27 init];
  v13 = v12;
  if (v12)
  {
    v12->_numberOfInputJoints = joints;
    v12->_numberOfOutputJoints = outputJoints;
    v14 = [[ABPK2DDetectionPostprocessGPU alloc] initWithNumberOfChannels:v12->_numberOfInputJoints];
    postprocessorGPU = v13->_postprocessorGPU;
    v13->_postprocessorGPU = v14;

    v16 = [[ABPK2DExtrapolationFiltering alloc] initWithUse3DSkeletonForExtrapolation:extrapolationCopy shouldPush3DSupportSkeleton:skeletonCopy withExtrapolationTime:time];
    extrapolationFiltering = v13->_extrapolationFiltering;
    v13->_extrapolationFiltering = v16;

    v13->_humansDetected = 1;
    v19 = __ABPKLogSharedInstance(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v19, OS_LOG_TYPE_DEBUG, " ABPK2DDetectionPostprocessHeatmapAffinitymap: Initializing ", buf, 2u);
    }

    v21 = __ABPKLogSharedInstance(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      numberOfInputJoints = v13->_numberOfInputJoints;
      *buf = 134217984;
      v29 = numberOfInputJoints;
      _os_log_impl(&dword_23EDDC000, v21, OS_LOG_TYPE_DEBUG, " \t Number of input joints: %zu ", buf, 0xCu);
    }

    v24 = __ABPKLogSharedInstance(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      numberOfOutputJoints = v13->_numberOfOutputJoints;
      *buf = 134217984;
      v29 = numberOfOutputJoints;
      _os_log_impl(&dword_23EDDC000, v24, OS_LOG_TYPE_DEBUG, " \t Number of output joints: %zu ", buf, 0xCu);
    }
  }

  return v13;
}

- (int)extract2DSkeletonfromBuffers:(id)buffers withImagePreProcessingParams:(id)params atTimestamp:(double)timestamp previousSkeleton3D:(id)d
{
  buffersCopy = buffers;
  paramsCopy = params;
  dCopy = d;
  v13 = __ABPKLogSharedInstance([(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self _startExtract2DSkeletonSignpostWithTimestamp:timestamp]);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v13, OS_LOG_TYPE_DEBUG, " ABPK2DDetectionPostprocessHeatmapAffinitymap: Extracting 2D skeleton from buffers ", buf, 2u);
  }

  objc_storeStrong(&self->_imagePreProcessingParams, params);
  rotationNeeded = [buffersCopy rotationNeeded];
  CVPixelBufferLockBaseAddress([buffersCopy heatMapBuffer], 0);
  CVPixelBufferLockBaseAddress([buffersCopy affinityMapBuffer], 0);
  BaseAddress = CVPixelBufferGetBaseAddress([buffersCopy affinityMapBuffer]);
  [buffersCopy affinityMapShape];
  v53 = v16;
  [buffersCopy affinityMapShape];
  v18 = v17;
  *buf = self->_numberOfInputJoints + 1;
  v64 = v53;
  v65 = v17;
  v62[0] = 36;
  v62[1] = v53;
  v62[2] = v17;
  [buffersCopy affinityMapStrides];
  v61[0] = v19;
  [buffersCopy affinityMapStrides];
  v61[1] = v20;
  [buffersCopy affinityMapStrides];
  v61[2] = v21;
  v60 = 0;
  IOSurface = CVPixelBufferGetIOSurface([buffersCopy heatMapBuffer]);
  [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self _startMaxFilterSignpostWithTimestamp:timestamp];
  v23 = [(ABPK2DDetectionPostprocessGPU *)self->_postprocessorGPU process:IOSurface counter:&v60 shape:v18, v53];
  [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self _endMaxFilterSignpostWithTimestamp:timestamp];
  [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self _startExtractHumanSignpostWithTimestamp:timestamp];
  v58 = 0uLL;
  v59 = 0;
  if (self->_numberOfInputJoints == 17)
  {
    abpk::extractHumansLegacy(v23, v23, BaseAddress, buf, v62, v61, 0, v60, v56);
  }

  else
  {
    abpk::extractHumans(v23, v23, BaseAddress, buf, v62, v61, 0, v60, v56);
  }

  std::vector<abpk::Human>::__vdeallocate(&v58);
  v58 = *v56;
  v59 = v57;
  v57 = 0;
  memset(v56, 0, sizeof(v56));
  v66 = v56;
  std::vector<abpk::Human>::__destroy_vector::operator()[abi:ne200100](&v66);
  [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self _endExtractHumanSignpostWithTimestamp:timestamp];
  CVPixelBufferUnlockBaseAddress([buffersCopy heatMapBuffer], 0);
  CVPixelBufferUnlockBaseAddress([buffersCopy affinityMapBuffer], 0);
  CVPixelBufferRelease([buffersCopy heatMapBuffer]);
  CVPixelBufferRelease([buffersCopy affinityMapBuffer]);
  if (*(&v58 + 1) == v58)
  {
    if (self->_humansDetected)
    {
      v48 = __ABPKLogSharedInstance(v24);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        *v56 = 0;
        _os_log_impl(&dword_23EDDC000, v48, OS_LOG_TYPE_DEBUG, " No humans detected in the image ", v56, 2u);
      }

      self->_humansDetected = 0;
    }

    timestamp = -6661;
  }

  else
  {
    if (!self->_humansDetected)
    {
      v25 = __ABPKLogSharedInstance(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *v56 = 0;
        _os_log_impl(&dword_23EDDC000, v25, OS_LOG_TYPE_DEBUG, " Humans detected in the image ", v56, 2u);
      }

      self->_humansDetected = 1;
    }

    v26 = __ABPKLogSharedInstance(v24);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *v56 = 0;
      _os_log_impl(&dword_23EDDC000, v26, OS_LOG_TYPE_DEBUG, " \t Converting 2d points from ML space to image space ", v56, 2u);
    }

    [paramsCopy inputResolution];
    v50 = v27;
    v51 = v28;
    [paramsCopy outputResolution];
    v32 = *(&v58 + 1);
    v31 = v58;
    if (v58 != *(&v58 + 1))
    {
      v33 = v29;
      v34 = v30;
      v35.f64[0] = v50;
      v35.f64[1] = v51;
      v52 = v35;
      do
      {
        v36 = *v31;
        v37 = v31[1];
        while (v36 != v37)
        {
          LODWORD(v38) = HIDWORD(*v36);
          if (COERCE_FLOAT(*v36) != -1.0 && v38 != -1.0)
          {
            *&v40 = v33 * COERCE_FLOAT(*v36);
            v41 = v34 * v38;
            *(&v40 + 1) = v41;
            [ABPKImagePreProcessingParams convert2DPoint:paramsCopy toInputSpaceWithParams:v40];
            *v36 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(v42), v52));
          }

          ++v36;
        }

        v31 += 15;
      }

      while (v31 != v32);
    }

    v43 = __ABPKLogSharedInstance([(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self _startExtrapolationSignpostWithTimestamp:timestamp]);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      *v56 = 0;
      _os_log_impl(&dword_23EDDC000, v43, OS_LOG_TYPE_DEBUG, " \t Performing extrapolation ", v56, 2u);
    }

    extrapolationFiltering = self->_extrapolationFiltering;
    v54 = v58;
    v55 = v59;
    v59 = 0;
    v58 = 0uLL;
    timestamp = [(ABPK2DExtrapolationFiltering *)extrapolationFiltering performExtrapolationOnHumans:&v54 withImageResolution:rotationNeeded atTimestamp:dCopy rotationNeeded:v50 previousSkeleton3D:v51, timestamp];
    *v56 = &v54;
    std::vector<abpk::Human>::__destroy_vector::operator()[abi:ne200100](v56);
    [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self _endExtrapolationSignpostWithTimestamp:timestamp];
    v46 = [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self _endExtract2DSkeletonSignpostWithTimestamp:timestamp];
    if (timestamp)
    {
      v47 = __ABPKLogSharedInstance(v46);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *v56 = 0;
        _os_log_impl(&dword_23EDDC000, v47, OS_LOG_TYPE_ERROR, " 2D Extrapolation failed ", v56, 2u);
      }
    }
  }

  *v56 = &v58;
  std::vector<abpk::Human>::__destroy_vector::operator()[abi:ne200100](v56);

  return timestamp;
}

- (void)getRawTrackedHumanSkeleton:(id)skeleton
{
  skeletonCopy = skeleton;
  rawTrackedHuman = [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self rawTrackedHuman];
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
  rawTrackedHumanVector = [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self rawTrackedHumanVector];
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
  trackedHuman = [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self trackedHuman];
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
  trackedHumanForLifting = [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self trackedHumanForLifting];
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
  rawTrackedHuman = [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self rawTrackedHuman];
  v5 = *rawTrackedHuman;
  [(ABPKImagePreProcessingParams *)self->_imagePreProcessingParams inputResolution];
  [skeletonCopy setNormalizedKeypoints2d:v5 withImageRes:?];
  [skeletonCopy setJointVisibility:rawTrackedHuman[3]];
  [skeletonCopy setJointConfidences:rawTrackedHuman[6]];
}

- (id)get2DDetectionResultforRotation:(int64_t)rotation croppedRect:(CGRect)rect
{
  trackedHuman = [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self trackedHuman];
  trackedHumanForLifting = [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self trackedHumanForLifting];
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
  rawTrackedHuman = [(ABPK2DDetectionPostprocessHeatmapAffinitymap *)self rawTrackedHuman];
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