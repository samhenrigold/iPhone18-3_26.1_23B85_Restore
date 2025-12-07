@interface PUILockdownModeUtilities
+ (BOOL)getCanShowLockdownMode;
+ (BOOL)isCaptivePortalModeIgnoredForContainerPath:(id)path;
+ (BOOL)isLockdownModeEnabled;
+ (BOOL)isLockdownModeEnabledInAccount;
+ (void)setCaptivePortalModeIgnoredForContainerPath:(id)path ignored:(BOOL)ignored;
+ (void)setLockdownModeEnabled:(BOOL)enabled forAllDevices:(BOOL)devices completion:(id)completion;
@end

@implementation PUILockdownModeUtilities

+ (BOOL)getCanShowLockdownMode
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v2 = getUMUserManagerClass_softClass;
  v11 = getUMUserManagerClass_softClass;
  if (!getUMUserManagerClass_softClass)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getUMUserManagerClass_block_invoke;
    v7[3] = &unk_279BA0D08;
    v7[4] = &v8;
    __getUMUserManagerClass_block_invoke(v7);
    v2 = v9[3];
  }

  v3 = v2;
  _Block_object_dispose(&v8, 8);
  sharedManager = [v2 sharedManager];
  isSharedIPad = [sharedManager isSharedIPad];

  return isSharedIPad ^ 1;
}

+ (BOOL)isLockdownModeEnabled
{
  shared = [getLockdownModeManagerClass() shared];
  enabled = [shared enabled];

  return enabled;
}

+ (BOOL)isLockdownModeEnabledInAccount
{
  shared = [getLockdownModeManagerClass() shared];
  enabledInAccount = [shared enabledInAccount];

  return enabledInAccount;
}

+ (void)setLockdownModeEnabled:(BOOL)enabled forAllDevices:(BOOL)devices completion:(id)completion
{
  devicesCopy = devices;
  enabledCopy = enabled;
  v15[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  shared = [getLockdownModeManagerClass() shared];
  v14 = @"allDevices";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:devicesCopy];
  v15[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__PUILockdownModeUtilities_setLockdownModeEnabled_forAllDevices_completion___block_invoke;
  v12[3] = &unk_279BA0D80;
  v13 = completionCopy;
  v11 = completionCopy;
  [shared setEnabled:enabledCopy options:v10 completion:v12];
}

+ (BOOL)isCaptivePortalModeIgnoredForContainerPath:(id)path
{
  pathCopy = path;
  v4 = [get_WKSystemPreferencesClass() isCaptivePortalModeIgnored:pathCopy];

  return v4;
}

+ (void)setCaptivePortalModeIgnoredForContainerPath:(id)path ignored:(BOOL)ignored
{
  ignoredCopy = ignored;
  pathCopy = path;
  [get_WKSystemPreferencesClass() setCaptivePortalModeIgnored:pathCopy ignore:ignoredCopy];
}

@end