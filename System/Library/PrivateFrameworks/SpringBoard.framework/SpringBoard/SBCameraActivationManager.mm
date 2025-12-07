@interface SBCameraActivationManager
- (id)initWithWorkspace:(void *)workspace lockScreenManager:;
- (uint64_t)activateCaptureApplicationWithBundleID:(void *)d URL:(uint64_t)l launchType:(unint64_t)type fromSource:(void *)source withPreludeAnimationToken:(void *)token completion:;
- (uint64_t)workspace;
@end

@implementation SBCameraActivationManager

- (uint64_t)workspace
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (id)initWithWorkspace:(void *)workspace lockScreenManager:
{
  v6 = a2;
  workspaceCopy = workspace;
  if (self)
  {
    if (!v6)
    {
      [SBCameraActivationManager initWithWorkspace:self lockScreenManager:?];
    }

    if (!workspaceCopy)
    {
      [SBCameraActivationManager initWithWorkspace:self lockScreenManager:?];
    }

    v10.receiver = self;
    v10.super_class = SBCameraActivationManager;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(self + 2, workspace);
    }
  }

  return self;
}

- (uint64_t)activateCaptureApplicationWithBundleID:(void *)d URL:(uint64_t)l launchType:(unint64_t)type fromSource:(void *)source withPreludeAnimationToken:(void *)token completion:
{
  v51 = *MEMORY[0x277D85DE8];
  v13 = a2;
  dCopy = d;
  sourceCopy = source;
  tokenCopy = token;
  v31 = tokenCopy;
  if (self)
  {
    if (!(v13 | dCopy))
    {
      tokenCopy = [MEMORY[0x277CBEBC0] URLWithString:@"camera://"];
      dCopy = tokenCopy;
    }

    lCopy = l;
    v17 = SBLogCameraActivation(tokenCopy);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = SBMainWorkspaceTransitionSourceDescription(type);
      *buf = 138543874;
      v46 = v13;
      v47 = 2114;
      v48 = dCopy;
      v49 = 2114;
      v50 = v18;
      _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "(Activating capture application %{public}@ (with url: %{public}@) from source: %{public}@", buf, 0x20u);
    }

    v19 = *(self + 8);
    v20 = *(self + 16);
    if (v13)
    {
      v21 = +[SBApplicationController sharedInstance];
      v22 = [v21 applicationWithBundleIdentifier:v13];

      v23 = 0;
    }

    else
    {
      v43 = 0;
      v22 = SBWorkspaceApplicationForURLWithError(dCopy, 0, &v43);
      v23 = v43;
    }

    v24 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:v22];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __131__SBCameraActivationManager_activateCaptureApplicationWithBundleID_URL_launchType_fromSource_withPreludeAnimationToken_completion___block_invoke;
    v32[3] = &unk_2783AD930;
    v42 = (type - 32 < 0x27) & (0x4800000001uLL >> (type - 32));
    typeCopy = type;
    v33 = v24;
    v34 = sourceCopy;
    v35 = v23;
    v41 = lCopy;
    v36 = v13;
    v25 = v31;
    selfCopy = self;
    v39 = v31;
    v37 = v20;
    v26 = v20;
    v27 = v23;
    v28 = v24;
    v44 = [v19 requestTransitionWithOptions:0 displayConfiguration:0 builder:v32 validator:&__block_literal_global_37];
  }

  else
  {
    v44 = 0;
    v25 = tokenCopy;
  }

  return v44;
}

void __131__SBCameraActivationManager_activateCaptureApplicationWithBundleID_URL_launchType_fromSource_withPreludeAnimationToken_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setEventLabel:@"CameraCaptureActivation"];
  [v3 setSource:*(a1 + 88)];
  v4 = [MEMORY[0x277CF0CD0] processHandle];
  [v3 setOriginatingProcess:v4];

  if (*(a1 + 104) == 1)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __131__SBCameraActivationManager_activateCaptureApplicationWithBundleID_URL_launchType_fromSource_withPreludeAnimationToken_completion___block_invoke_2;
    v17[3] = &unk_2783A96A0;
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    [v3 modifyApplicationContext:v17];
    v5 = *(a1 + 48);
    if (v5)
    {
      [*(a1 + 32) setObject:v5 forActivationSetting:5];
    }

    [*(a1 + 32) setFlag:1 forActivationSetting:35];
    if (+[SBCaptureHardwareButton deviceSupportsCaptureButton])
    {
      v6 = +[SBCaptureHardwareButton isCaptureFeatureEnabled];
    }

    else
    {
      v6 = 0;
    }

    if ((LCSFeatureEnabled() & 1) != 0 || v6)
    {
      if (!*(a1 + 96))
      {
        [*(a1 + 32) setFlag:1 forActivationSetting:36];
      }

      v7 = +[SBCaptureApplicationCenter sharedInstance];
      v8 = [v7 shouldInstallLaunchMonitoringForCaptureApplicationBundleIdentfier:*(a1 + 56)];

      if ((v8 & 1) == 0)
      {
        [*(a1 + 32) setFlag:1 forActivationSetting:38];
      }
    }
  }

  if (*(a1 + 80))
  {
    v9 = [*(a1 + 64) willAttemptToHandleTransitionRequest:v3];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __131__SBCameraActivationManager_activateCaptureApplicationWithBundleID_URL_launchType_fromSource_withPreludeAnimationToken_completion___block_invoke_3;
    v13[3] = &unk_2783AD908;
    v16 = v9;
    v11 = *(a1 + 80);
    v10 = *(a1 + 88);
    v13[4] = *(a1 + 72);
    v15 = v10;
    v14 = v11;
    v12 = [v3 addCompletionHandler:v13];
  }
}

void __131__SBCameraActivationManager_activateCaptureApplicationWithBundleID_URL_launchType_fromSource_withPreludeAnimationToken_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setActivatingEntity:*(a1 + 32)];
  if (*(a1 + 40))
  {
    v3 = [SBConsumableTokenWrapper consumableTokenWrapperWithToken:?];
    [v4 setPreludeAnimationTokenWrapper:v3];
  }
}

void __131__SBCameraActivationManager_activateCaptureApplicationWithBundleID_URL_launchType_fromSource_withPreludeAnimationToken_completion___block_invoke_3(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56))
  {
    v4 = @"Cover Sheet";
  }

  else
  {
    v4 = @"Unlocked";
  }

  v5 = v4;
  v6 = SBLogCameraActivation(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = SBMainWorkspaceTransitionSourceDescription(*(a1 + 48));
    v9 = 138544130;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    v13 = 2114;
    v14 = v8;
    v15 = 1024;
    v16 = a2;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@) activated %@ camera from source %{public}@ successfully: %{BOOL}u", &v9, 0x26u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)initWithWorkspace:(const char *)a1 lockScreenManager:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"lockScreenManager != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    v9 = @"SBCameraActivationManager.m";
    v10 = 1024;
    v11 = 59;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithWorkspace:(const char *)a1 lockScreenManager:(uint64_t)a2 .cold.2(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"workspace != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    v9 = @"SBCameraActivationManager.m";
    v10 = 1024;
    v11 = 58;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end