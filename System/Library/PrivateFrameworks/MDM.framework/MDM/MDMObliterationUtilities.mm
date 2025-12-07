@interface MDMObliterationUtilities
+ (void)obliterateDeviceWithPreserveDataPlan:(BOOL)plan disallowProximitySetup:(BOOL)setup returnToServiceEnabled:(BOOL)enabled exclusionPaths:(id)paths revertToSnapshotName:(id)name bootstrapToken:(id)token preObliterationAction:(id)action completionHander:(id)self0;
@end

@implementation MDMObliterationUtilities

+ (void)obliterateDeviceWithPreserveDataPlan:(BOOL)plan disallowProximitySetup:(BOOL)setup returnToServiceEnabled:(BOOL)enabled exclusionPaths:(id)paths revertToSnapshotName:(id)name bootstrapToken:(id)token preObliterationAction:(id)action completionHander:(id)self0
{
  enabledCopy = enabled;
  setupCopy = setup;
  planCopy = plan;
  v45 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  nameCopy = name;
  tokenCopy = token;
  actionCopy = action;
  handerCopy = hander;
  v20 = *DMCLogObjects();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316674;
    *&buf[4] = "+[MDMObliterationUtilities obliterateDeviceWithPreserveDataPlan:disallowProximitySetup:returnToServiceEnabled:exclusionPaths:revertToSnapshotName:bootstrapToken:preObliterationAction:completionHander:]";
    *&buf[12] = 1024;
    *&buf[14] = planCopy;
    *&buf[18] = 1024;
    *&buf[20] = setupCopy;
    v37 = 1024;
    v38 = enabledCopy;
    v39 = 2112;
    v40 = pathsCopy;
    v41 = 2112;
    v42 = nameCopy;
    v43 = 2112;
    v44 = tokenCopy;
    _os_log_impl(&dword_2561F5000, v20, OS_LOG_TYPE_DEBUG, "%s preserveDataPlan: %d, disallowProximitySetup: %d, returnToServiceEnabled: %d, exclusionPaths: %@, revertToSnapshotName: %@, bootstrapToken: %@", buf, 0x3Cu);
  }

  if (actionCopy)
  {
    actionCopy[2](actionCopy);
  }

  v21 = objc_alloc_init(MEMORY[0x277D072B0]);
  [v21 setHideProgress:1];
  [v21 setEraseDataPlan:!planCopy];
  [v21 setDisallowProximitySetup:setupCopy];
  if (!enabledCopy)
  {
    goto LABEL_13;
  }

  [v21 setExclusionPaths:pathsCopy];
  if (!nameCopy || !tokenCopy)
  {
    v24 = *DMCLogObjects();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v24, OS_LOG_TYPE_DEFAULT, "MDMObliterationUtilities: snapshot name or bootstrap token is nil, doing regular obliteration", buf, 2u);
    }

LABEL_13:
    v23 = 4;
    goto LABEL_14;
  }

  [v21 setRevertToSnapshotName:nameCopy];
  [v21 setBootstrapToken:tokenCopy];
  v22 = *DMCLogObjects();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v22, OS_LOG_TYPE_DEFAULT, "MDMObliterationUtilities: Doing RRTS obliteration", buf, 2u);
  }

  v23 = 6;
LABEL_14:
  v25 = [objc_alloc(MEMORY[0x277D072B8]) initWithMode:v23 options:v21 reason:@"mdmd erase device command"];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v37) = 0;
  v26 = dispatch_queue_create("ddr_erase_device_queue", 0);
  v27 = dispatch_time(0, 0x6FC23B000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __201__MDMObliterationUtilities_obliterateDeviceWithPreserveDataPlan_disallowProximitySetup_returnToServiceEnabled_exclusionPaths_revertToSnapshotName_bootstrapToken_preObliterationAction_completionHander___block_invoke;
  block[3] = &unk_27982C0C0;
  block[4] = buf;
  dispatch_after(v27, v26, block);
  mEMORY[0x277D072C0] = [MEMORY[0x277D072C0] sharedInstance];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __201__MDMObliterationUtilities_obliterateDeviceWithPreserveDataPlan_disallowProximitySetup_returnToServiceEnabled_exclusionPaths_revertToSnapshotName_bootstrapToken_preObliterationAction_completionHander___block_invoke_13;
  v31[3] = &unk_27982C100;
  v29 = v26;
  v32 = v29;
  v34 = buf;
  v30 = handerCopy;
  v33 = v30;
  [mEMORY[0x277D072C0] resetWithRequest:v25 completion:v31];

  _Block_object_dispose(buf, 8);
}

void __201__MDMObliterationUtilities_obliterateDeviceWithPreserveDataPlan_disallowProximitySetup_returnToServiceEnabled_exclusionPaths_revertToSnapshotName_bootstrapToken_preObliterationAction_completionHander___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "ddr_erase_device";
      v8 = 2048;
      v9 = 0x403E000000000000;
      _os_log_impl(&dword_2561F5000, v2, OS_LOG_TYPE_ERROR, "Task %s hasn't finished within %.1f seconds", &v6, 0x16u);
    }

    v3 = [@"ddr_erase_device" stringByAppendingString:@"_stackshot.ips"];
    v4 = MEMORY[0x277D034B8];
    v5 = DMCHangTracerDirectory();
    [v4 dumpStackshotToPath:v5 fileName:v3];
  }
}

void __201__MDMObliterationUtilities_obliterateDeviceWithPreserveDataPlan_disallowProximitySetup_returnToServiceEnabled_exclusionPaths_revertToSnapshotName_bootstrapToken_preObliterationAction_completionHander___block_invoke_13(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __201__MDMObliterationUtilities_obliterateDeviceWithPreserveDataPlan_disallowProximitySetup_returnToServiceEnabled_exclusionPaths_revertToSnapshotName_bootstrapToken_preObliterationAction_completionHander___block_invoke_2;
  block[3] = &unk_27982C0C0;
  block[4] = a1[6];
  dispatch_async(v4, block);
  if (v3)
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [v3 DMCVerboseDescription];
      *buf = 138543362;
      v10 = v7;
      _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_ERROR, "Could not erase device: %{public}@", buf, 0xCu);
    }
  }

  (*(a1[5] + 16))();
}

@end