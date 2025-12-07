@interface SBXXReboot
@end

@implementation SBXXReboot

void ___SBXXReboot_block_invoke(uint64_t a1)
{
  v4 = [SBApp restartManager];
  v1 = MEMORY[0x277CCACA8];
  v2 = FBSProcessPrettyDescription();
  v3 = [v1 stringWithFormat:@"Request from process = %@", v2];
  [v4 rebootForReason:v3];
}

@end