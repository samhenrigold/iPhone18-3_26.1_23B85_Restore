@interface DBSDisplayZoomConfigurationController
+ (DBSDisplayZoomConfigurationController)defaultController;
- (id)currentDisplayZoomMode;
- (id)displayZoomModes;
- (void)setDisplayZoomMode:(id)mode withRelaunchURL:(id)l transitionWithScreenshot:(BOOL)screenshot;
@end

@implementation DBSDisplayZoomConfigurationController

+ (DBSDisplayZoomConfigurationController)defaultController
{
  if (defaultController_onceToken != -1)
  {
    +[DBSDisplayZoomConfigurationController defaultController];
  }

  v3 = defaultController__defaultController;

  return v3;
}

uint64_t __58__DBSDisplayZoomConfigurationController_defaultController__block_invoke(uint64_t a1, uint64_t a2)
{
  defaultController__defaultController = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)currentDisplayZoomMode
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__DBSDisplayZoomConfigurationController_currentDisplayZoomMode__block_invoke;
  block[3] = &unk_278459558;
  block[4] = self;
  if (currentDisplayZoomMode_onceToken != -1)
  {
    dispatch_once(&currentDisplayZoomMode_onceToken, block);
  }

  return currentDisplayZoomMode__currentDisplayZoomMode;
}

void __63__DBSDisplayZoomConfigurationController_currentDisplayZoomMode__block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (DBSGetMobileFrameBuffer())
  {
    v3 = 0;
    v2 = 0;
    IOMobileFramebufferGetCanvasSizes();
    v1 = DBSLogForCategory(1uLL);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __63__DBSDisplayZoomConfigurationController_currentDisplayZoomMode__block_invoke_cold_1(v1);
    }
  }
}

- (id)displayZoomModes
{
  if (displayZoomModes_onceToken != -1)
  {
    [DBSDisplayZoomConfigurationController displayZoomModes];
  }

  v3 = displayZoomModes__displayZoomModes;

  return v3;
}

void __57__DBSDisplayZoomConfigurationController_displayZoomModes__block_invoke()
{
  v85 = MGCopyAnswer();
  v0 = [v85 objectForKeyedSubscript:@"default"];
  v1 = [v85 objectForKeyedSubscript:@"zoomed"];
  v2 = [v85 objectForKeyedSubscript:@"dense"];
  v3 = [v85 objectForKeyedSubscript:@"denser"];
  v4 = objc_opt_new();
  if ([v0 count] == 4)
  {
    v5 = [v0 objectAtIndexedSubscript:0];
    [v5 floatValue];
    v7 = v6;

    v8 = [v0 objectAtIndexedSubscript:1];
    [v8 floatValue];
    v10 = v9;

    v11 = [v0 objectAtIndexedSubscript:2];
    [v11 floatValue];
    v13 = v12;

    v14 = [v0 objectAtIndexedSubscript:3];
    [v14 floatValue];
    v16 = v15;

    v17 = [DBSDisplayZoomMode alloc];
    v18 = DBS_LocalizedStringForMagnify(@"STANDARD");
    v19 = [(DBSDisplayZoomMode *)v17 initWithDisplayZoomOption:0 localizedName:v18 size:v7 * v10, v13 * v16];

    v20 = DBSStringForDisplayZoomOption(0);
    [v4 setObject:v19 forKeyedSubscript:v20];
  }

  v21 = [v1 count];
  if (v21 == 4)
  {
    v23 = [v1 objectAtIndexedSubscript:0];
    [v23 floatValue];
    v25 = v24;

    v26 = [v1 objectAtIndexedSubscript:1];
    [v26 floatValue];
    v28 = v27;

    v29 = [v1 objectAtIndexedSubscript:2];
    [v29 floatValue];
    v31 = v30;

    v32 = [v1 objectAtIndexedSubscript:3];
    [v32 floatValue];
    v34 = v33;

    v35 = [DBSDisplayZoomMode alloc];
    v36 = DBS_LocalizedStringForMagnify(@"ZOOMED");
    v37 = [(DBSDisplayZoomMode *)v35 initWithDisplayZoomOption:1 localizedName:v36 size:v25 * v28, v31 * v34];

    v38 = DBSStringForDisplayZoomOption(1);
    [v4 setObject:v37 forKeyedSubscript:v38];
  }

  if (DBSReverseZoomEnabled(v21, v22))
  {
    v39 = [v2 count];
    if (v39 == 4)
    {
      v41 = [v2 objectAtIndexedSubscript:0];
      [v41 floatValue];
      v43 = v42;

      v44 = [v2 objectAtIndexedSubscript:1];
      [v44 floatValue];
      v46 = v45;

      v47 = [v2 objectAtIndexedSubscript:2];
      [v47 floatValue];
      v49 = v48;

      v50 = [v2 objectAtIndexedSubscript:3];
      [v50 floatValue];
      v52 = v51;

      v53 = [DBSDisplayZoomMode alloc];
      v54 = DBS_LocalizedStringForMagnify(@"DENSE");
      v55 = [(DBSDisplayZoomMode *)v53 initWithDisplayZoomOption:2 localizedName:v54 size:v43 * v46, v49 * v52];

      v56 = DBSStringForDisplayZoomOption(2);
      [v4 setObject:v55 forKeyedSubscript:v56];
    }

    if (DBSMostDisplaySpaceEnabled(v39, v40) && [v3 count] == 4)
    {
      v57 = [v3 objectAtIndexedSubscript:0];
      [v57 floatValue];
      v59 = v58;

      v60 = [v3 objectAtIndexedSubscript:1];
      [v60 floatValue];
      v62 = v61;

      v63 = [v3 objectAtIndexedSubscript:2];
      [v63 floatValue];
      v65 = v64;

      v66 = [v3 objectAtIndexedSubscript:3];
      [v66 floatValue];
      v68 = v67;

      v69 = [DBSDisplayZoomMode alloc];
      v70 = DBS_LocalizedStringForMagnify(@"DENSER");
      v71 = [(DBSDisplayZoomMode *)v69 initWithDisplayZoomOption:3 localizedName:v70 size:v59 * v62, v65 * v68];

      v72 = DBSStringForDisplayZoomOption(3);
      [v4 setObject:v71 forKeyedSubscript:v72];
    }
  }

  v73 = DBSStringForDisplayZoomOption(1);
  v74 = [v4 objectForKeyedSubscript:v73];

  v75 = DBSStringForDisplayZoomOption(2);
  v76 = [v4 objectForKeyedSubscript:v75];

  [v74 size];
  v78 = v77;
  v80 = v79;
  [v76 size];
  if (v78 == v82 && v80 == v81)
  {
    v83 = DBSStringForDisplayZoomOption(1);
    [v4 removeObjectForKey:v83];
  }

  v84 = displayZoomModes__displayZoomModes;
  displayZoomModes__displayZoomModes = v4;
}

- (void)setDisplayZoomMode:(id)mode withRelaunchURL:(id)l transitionWithScreenshot:(BOOL)screenshot
{
  v23 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  lCopy = l;
  v9 = DBSLogForCategory(1uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = DBSStringForDisplayZoomOption([modeCopy displayZoomOption]);
    [modeCopy size];
    v11 = NSStringFromCGSize(v24);
    *buf = 136315650;
    v18 = "[DBSDisplayZoomConfigurationController setDisplayZoomMode:withRelaunchURL:transitionWithScreenshot:]";
    v19 = 2114;
    v20 = v10;
    v21 = 2114;
    v22 = v11;
    _os_log_impl(&dword_22102E000, v9, OS_LOG_TYPE_DEFAULT, "%s: Setting new canvas size (option: '%{public}@', size: '%{public}@').", buf, 0x20u);
  }

  DBSGetMobileFrameBuffer();
  [modeCopy size];
  IOMobileFramebufferSetCanvasSize();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"DBSMagnifyModeDidChangeNotification", 0, 0, 1u);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __101__DBSDisplayZoomConfigurationController_setDisplayZoomMode_withRelaunchURL_transitionWithScreenshot___block_invoke;
  v14[3] = &unk_278459758;
  screenshotCopy = screenshot;
  v15 = lCopy;
  v13 = lCopy;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

void __101__DBSDisplayZoomConfigurationController_setDisplayZoomMode_withRelaunchURL_transitionWithScreenshot___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 3;
  }

  else
  {
    v1 = 1;
  }

  v4 = [MEMORY[0x277D66BB8] actionWithReason:@"magnify mode" options:v1 targetURL:*(a1 + 32)];
  v2 = [MEMORY[0x277D0AE18] sharedService];
  v3 = [MEMORY[0x277CBEB98] setWithObject:v4];
  [v2 sendActions:v3 withResult:0];
}

void __63__DBSDisplayZoomConfigurationController_currentDisplayZoomMode__block_invoke_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[DBSDisplayZoomConfigurationController currentDisplayZoomMode]_block_invoke";
  _os_log_error_impl(&dword_22102E000, log, OS_LOG_TYPE_ERROR, "%s: Failed to establish connection to framebuffer (device, no error).", &v1, 0xCu);
}

@end