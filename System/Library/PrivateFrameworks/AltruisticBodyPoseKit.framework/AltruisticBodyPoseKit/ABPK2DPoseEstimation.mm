@interface ABPK2DPoseEstimation
- (ABPK2DPoseEstimation)initWith2DDetectionConfig:(id)config use3DSkeletonForExtrapolation:(BOOL)extrapolation shouldPush3DSupportSkeleton:(BOOL)skeleton;
- (int)runWithMLImageData:(id)data rotationOfResultTensor:(int64_t)tensor;
@end

@implementation ABPK2DPoseEstimation

- (ABPK2DPoseEstimation)initWith2DDetectionConfig:(id)config use3DSkeletonForExtrapolation:(BOOL)extrapolation shouldPush3DSupportSkeleton:(BOOL)skeleton
{
  skeletonCopy = skeleton;
  extrapolationCopy = extrapolation;
  configCopy = config;
  v23.receiver = self;
  v23.super_class = ABPK2DPoseEstimation;
  v10 = [(ABPK2DPoseEstimation *)&v23 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v10->_config2D, config);
  v12 = [[ABPK2DDetection alloc] initWithNetworkConfig:v11->_config2D];
  detection2dAlgorithm = v11->_detection2dAlgorithm;
  v11->_detection2dAlgorithm = v12;

  if (!v11->_detection2dAlgorithm)
  {
    v19 = __ABPKLogSharedInstance(v14);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22[0] = 0;
      v20 = " Failed to initialize 2D Detection Algorithm. ";
LABEL_9:
      _os_log_impl(&dword_23EDDC000, v19, OS_LOG_TYPE_ERROR, v20, v22, 2u);
    }

LABEL_10:

    v18 = 0;
    goto LABEL_11;
  }

  v15 = [ABPK2DDetectionPostProcessSelector get2DDetectionPostProcessWithNetworkConfig:configCopy use3DSkeletonForExtrapolation:extrapolationCopy shouldPush3DSupportSkeleton:skeletonCopy withExtrapolationTime:0.3];
  postprocess2d = v11->_postprocess2d;
  v11->_postprocess2d = v15;

  if (!v11->_postprocess2d)
  {
    v19 = __ABPKLogSharedInstance(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22[0] = 0;
      v20 = " Failed to initialize 2D Detection Post-processing. ";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

LABEL_4:
  v18 = v11;
LABEL_11:

  return v18;
}

- (int)runWithMLImageData:(id)data rotationOfResultTensor:(int64_t)tensor
{
  dataCopy = data;
  detection2dAlgorithm = self->_detection2dAlgorithm;
  pixelBuffer = [dataCopy pixelBuffer];
  abpkDeviceOrientation = [dataCopy abpkDeviceOrientation];
  [dataCopy timestamp];
  v10 = [(ABPK2DDetection *)detection2dAlgorithm runWithImage:pixelBuffer abpkOrientation:abpkDeviceOrientation atTimestamp:tensor rotationOfResultTensor:?];
  v11 = v10;
  if (v10)
  {
    v12 = __ABPKLogSharedInstance(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *v17 = 0;
      _os_log_impl(&dword_23EDDC000, v12, OS_LOG_TYPE_DEBUG, " \t Post-processing output ", v17, 2u);
    }

    postprocess2d = self->_postprocess2d;
    preprocessingParams = [dataCopy preprocessingParams];
    [dataCopy timestamp];
    LODWORD(postprocess2d) = [(ABPK2DDetectionPostprocess *)postprocess2d extract2DSkeletonfromBuffers:v11 withImagePreProcessingParams:preprocessingParams atTimestamp:0 previousSkeleton3D:?];

    if (postprocess2d)
    {
      v15 = -6661;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = -6661;
  }

  return v15;
}

@end