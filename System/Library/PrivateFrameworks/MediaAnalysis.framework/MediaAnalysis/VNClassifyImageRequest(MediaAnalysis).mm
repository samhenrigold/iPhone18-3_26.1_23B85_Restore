@interface VNClassifyImageRequest(MediaAnalysis)
+ (id)vcp_sceneRequest;
@end

@implementation VNClassifyImageRequest(MediaAnalysis)

+ (id)vcp_sceneRequest
{
  v2 = [MEMORY[0x1E6984598] vcp_sceneRequestWithRequestClass:objc_opt_class() andRevision:3737841667];
  [v2 setMaximumLeafObservations:15];
  [v2 setMaximumHierarchicalObservations:15];

  return v2;
}

@end