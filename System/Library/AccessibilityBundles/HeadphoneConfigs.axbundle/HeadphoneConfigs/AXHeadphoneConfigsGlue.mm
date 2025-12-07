@interface AXHeadphoneConfigsGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXHeadphoneConfigsGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:? withPreValidationHandler:? postValidationHandler:? safeCategoryInstallationHandler:?];

    _Failover = [objc_allocWithZone(AXHeadphoneConfigsGlue) init];

    MEMORY[0x2A1C71028]();
  }
}

uint64_t __55__AXHeadphoneConfigsGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:?];
  [v2 setOverrideProcessName:?];
  [v2 setDebugBuild:?];

  return MEMORY[0x2A1C5E698]();
}

void __55__AXHeadphoneConfigsGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:? canInteractWithTargetClass:?];
  [v2 installSafeCategory:? canInteractWithTargetClass:?];
  [v2 installSafeCategory:? canInteractWithTargetClass:?];
  [v2 installSafeCategory:? canInteractWithTargetClass:?];
  [v2 installSafeCategory:? canInteractWithTargetClass:?];
}

@end