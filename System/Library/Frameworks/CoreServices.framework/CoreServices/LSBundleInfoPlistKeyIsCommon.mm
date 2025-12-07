@interface LSBundleInfoPlistKeyIsCommon
@end

@implementation LSBundleInfoPlistKeyIsCommon

void ___LSBundleInfoPlistKeyIsCommon_block_invoke()
{
  v12[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = *MEMORY[0x1E695E128];
  v12[0] = *MEMORY[0x1E695E198];
  v12[1] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v3 = [v0 setWithArray:v2];
  v4 = _LSBundleInfoPlistKeyIsCommon::explicitlyIgnoredKeys;
  _LSBundleInfoPlistKeyIsCommon::explicitlyIgnoredKeys = v3;

  v5 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1EEF8F190];
  v6 = _LSBundleInfoPlistKeyIsCommon::prefixes;
  _LSBundleInfoPlistKeyIsCommon::prefixes = v5;

  v7 = MEMORY[0x1E695DFD8];
  v11[0] = @"Capabilities";
  v11[1] = @"DeviceFamily";
  v11[2] = @"ProductType";
  v11[3] = @"disabled";
  v11[4] = @"MallocBehavior";
  v11[5] = @"com.apple.developer.translation-ui-provider.network-access";
  v11[6] = @"AVInitialRouteSharingPolicy";
  v11[7] = @"LSEligibilityInstallPredicate";
  v11[8] = @"LSEligibilityUninstallPredicate";
  v11[9] = @"LSRequiredFeatureFlags";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:10];
  v9 = [v7 setWithArray:v8];
  v10 = _LSBundleInfoPlistKeyIsCommon::explicitlyIncludedKeys;
  _LSBundleInfoPlistKeyIsCommon::explicitlyIncludedKeys = v9;
}

@end