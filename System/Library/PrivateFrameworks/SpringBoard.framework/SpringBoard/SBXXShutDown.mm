@interface SBXXShutDown
@end

@implementation SBXXShutDown

void ___SBXXShutDown_block_invoke(uint64_t a1)
{
  v4 = [SBApp restartManager];
  v1 = MEMORY[0x277CCACA8];
  v2 = FBSProcessPrettyDescription();
  v3 = [v1 stringWithFormat:@"Request from process = %@", v2];
  [v4 shutdownForReason:v3];
}

@end