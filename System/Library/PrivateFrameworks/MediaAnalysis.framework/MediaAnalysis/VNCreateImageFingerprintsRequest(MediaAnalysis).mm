@interface VNCreateImageFingerprintsRequest(MediaAnalysis)
+ (uint64_t)vcp_sceneRequest;
@end

@implementation VNCreateImageFingerprintsRequest(MediaAnalysis)

+ (uint64_t)vcp_sceneRequest
{
  v2 = MEMORY[0x1E6984598];
  v3 = objc_opt_class();

  return [v2 vcp_sceneRequestWithRequestClass:v3 andRevision:1];
}

@end