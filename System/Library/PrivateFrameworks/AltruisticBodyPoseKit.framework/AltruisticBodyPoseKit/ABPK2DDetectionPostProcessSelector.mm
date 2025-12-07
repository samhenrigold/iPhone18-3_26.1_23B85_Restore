@interface ABPK2DDetectionPostProcessSelector
+ (id)get2DDetectionPostProcessWithNetworkConfig:(id)config use3DSkeletonForExtrapolation:(BOOL)extrapolation shouldPush3DSupportSkeleton:(BOOL)skeleton;
+ (id)get2DDetectionPostProcessWithNetworkConfig:(id)config use3DSkeletonForExtrapolation:(BOOL)extrapolation shouldPush3DSupportSkeleton:(BOOL)skeleton withExtrapolationTime:(double)time;
@end

@implementation ABPK2DDetectionPostProcessSelector

+ (id)get2DDetectionPostProcessWithNetworkConfig:(id)config use3DSkeletonForExtrapolation:(BOOL)extrapolation shouldPush3DSupportSkeleton:(BOOL)skeleton
{
  v5 = [self get2DDetectionPostProcessWithNetworkConfig:config use3DSkeletonForExtrapolation:extrapolation shouldPush3DSupportSkeleton:skeleton withExtrapolationTime:0.3];

  return v5;
}

+ (id)get2DDetectionPostProcessWithNetworkConfig:(id)config use3DSkeletonForExtrapolation:(BOOL)extrapolation shouldPush3DSupportSkeleton:(BOOL)skeleton withExtrapolationTime:(double)time
{
  skeletonCopy = skeleton;
  extrapolationCopy = extrapolation;
  configCopy = config;
  if ([configCopy algMode] == 4)
  {
    v10 = [ABPK2DDetectionPostprocessHeatmap alloc];
    v11 = 17;
LABEL_13:
    v15 = [(ABPK2DDetectionPostprocessHeatmap *)v10 initWithInputJoints:19 andOutputJoints:v11 use3DSkeletonForExtrapolation:extrapolationCopy shouldPush3DSupportSkeleton:skeletonCopy withExtrapolationTime:time];
    goto LABEL_14;
  }

  if ([configCopy algMode] == 1)
  {
    goto LABEL_4;
  }

  if ([configCopy algMode] == 2 || !objc_msgSend(configCopy, "algMode"))
  {
    v12 = off_278C715A8;
    goto LABEL_12;
  }

  algMode = [configCopy algMode];
  if (algMode == 10)
  {
LABEL_4:
    v12 = off_278C715A0;
LABEL_12:
    v10 = objc_alloc(*v12);
    v11 = 19;
    goto LABEL_13;
  }

  v14 = __ABPKLogSharedInstance(algMode);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *v17 = 0;
    _os_log_impl(&dword_23EDDC000, v14, OS_LOG_TYPE_ERROR, " Invalid algorithm mode specified ", v17, 2u);
  }

  v15 = 0;
LABEL_14:

  return v15;
}

@end