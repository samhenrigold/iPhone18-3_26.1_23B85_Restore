@interface VN6Mb1ME89lyW3HpahkEygIG(MediaAnalysis)
+ (uint64_t)vcp_sceneRequest;
@end

@implementation VN6Mb1ME89lyW3HpahkEygIG(MediaAnalysis)

+ (uint64_t)vcp_sceneRequest
{
  v2 = MEMORY[0x1E6984598];
  v3 = objc_opt_class();

  return [v2 vcp_sceneRequestWithRequestClass:v3 andRevision:2];
}

@end