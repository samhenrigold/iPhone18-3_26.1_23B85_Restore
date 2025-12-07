@interface DSSSharingModeService
+ (id)sharedInstance;
- (DSSSharingModeService)init;
- (void)dealloc;
- (void)emitAXOpened;
- (void)emitAXOpened:(BOOL)opened;
- (void)emitGuestBeganInitialEnrollment:(BOOL)enrollment;
- (void)emitGuestReEnrolled:(unint64_t)enrolled;
- (void)emitOpenedApps:(id)apps;
- (void)emitScreenMirroring;
- (void)emitScreenMirroring:(BOOL)mirroring;
- (void)emitSessionEnded:(id)ended;
- (void)emitSessionStarted:(unint64_t)started withOpenedApps:(id)apps;
- (void)emitTCCShown:(id)shown;
- (void)resetCAMetrics;
- (void)sharingModeDidEnd:(id)end;
- (void)sharingModeDidStart:(unint64_t)start withOpenedApps:(id)apps;
@end

@implementation DSSSharingModeService

+ (id)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[DSSSharingModeService sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __39__DSSSharingModeService_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_alloc_init(DSSSharingModeService);

  return MEMORY[0x2821F96F8]();
}

- (DSSSharingModeService)init
{
  v8.receiver = self;
  v8.super_class = DSSSharingModeService;
  v2 = [(DSSSharingModeService *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 URLForResource:@"SharingMode_Initialized" withExtension:@"wav"];

    AudioServicesCreateSystemSoundID(v4, &v2->_soundIDStarted);
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 URLForResource:@"SharingMode_Ended" withExtension:@"wav"];

    AudioServicesCreateSystemSoundID(v6, &v2->_soundIDEnded);
    [(DSSSharingModeService *)v2 resetCAMetrics];
  }

  return v2;
}

- (void)sharingModeDidStart:(unint64_t)start withOpenedApps:(id)apps
{
  [(DSSSharingModeService *)self emitSessionStarted:start withOpenedApps:apps];

  [(DSSSharingModeService *)self playStartSound];
}

- (void)sharingModeDidEnd:(id)end
{
  [(DSSSharingModeService *)self emitSessionEnded:end];

  [(DSSSharingModeService *)self playEndSound];
}

- (void)resetCAMetrics
{
  v40 = *MEMORY[0x277D85DE8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  sessionIdentifier = self->_sessionIdentifier;
  self->_sessionIdentifier = uUID;

  v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:0.0];
  sharingModeStartTime = self->_sharingModeStartTime;
  self->_sharingModeStartTime = v5;

  openedApps = self->_openedApps;
  self->_openedApps = 0;

  self->_mode = 0;
  self->_assetEnrolled = 0;
  *&self->_numAppsOpened = 0;
  v9 = DSSTelemetryLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    uUIDString = [(NSUUID *)self->_sessionIdentifier UUIDString];
    v11 = self->_sharingModeStartTime;
    mode = self->_mode;
    smEnabled = self->_smEnabled;
    clipOnsPresent = self->_clipOnsPresent;
    tccShown = self->_tccShown;
    axOpened = self->_axOpened;
    numAppsOpened = self->_numAppsOpened;
    assetEnrolled = self->_assetEnrolled;
    v18 = self->_openedApps;
    v20 = 138545666;
    v21 = uUIDString;
    v22 = 2114;
    v23 = v11;
    v24 = 2114;
    v25 = v18;
    v26 = 2050;
    v27 = mode;
    v28 = 1026;
    v29 = smEnabled;
    v30 = 1026;
    v31 = clipOnsPresent;
    v32 = 1026;
    v33 = tccShown;
    v34 = 1026;
    v35 = axOpened;
    v36 = 1026;
    v37 = numAppsOpened;
    v38 = 2050;
    v39 = assetEnrolled;
    _os_log_debug_impl(&dword_248A4A000, v9, OS_LOG_TYPE_DEBUG, "Reset the metrics to: %{public}@ %{public}@ %{public}@ %{public}lu %{public}d, %{public}d, %{public}d, %{public}d, %{public}d, %{public}lu", &v20, 0x52u);
  }
}

- (void)emitSessionStarted:(unint64_t)started withOpenedApps:(id)apps
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = [apps componentsJoinedByString:{@", "}];
  v7 = DSSTelemetryLog(v6);
  if (os_signpost_enabled(v7))
  {
    v24 = 134349314;
    startedCopy = started;
    v26 = 2114;
    v27 = v6;
    _os_signpost_emit_with_name_impl(&dword_248A4A000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SharingModeSession", " enableTelemetry=YES mode=%{public,signpost.telemetry:number1}lu, openedAppsList=%{public,signpost.telemetry:string1}@", &v24, 0x16u);
  }

  v8 = [MEMORY[0x277CBEAA8] now];
  sharingModeStartTime = self->_sharingModeStartTime;
  self->_sharingModeStartTime = v8;

  self->_mode = started;
  uUID = [MEMORY[0x277CCAD78] UUID];
  sessionIdentifier = self->_sessionIdentifier;
  self->_sessionIdentifier = uUID;

  v13 = DSSTelemetryLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    uUIDString = [(NSUUID *)self->_sessionIdentifier UUIDString];
    v15 = self->_sharingModeStartTime;
    mode = self->_mode;
    smEnabled = self->_smEnabled;
    clipOnsPresent = self->_clipOnsPresent;
    tccShown = self->_tccShown;
    axOpened = self->_axOpened;
    numAppsOpened = self->_numAppsOpened;
    assetEnrolled = self->_assetEnrolled;
    openedApps = self->_openedApps;
    v24 = 138545666;
    startedCopy = uUIDString;
    v26 = 2114;
    v27 = v15;
    v28 = 2114;
    v29 = openedApps;
    v30 = 2050;
    v31 = mode;
    v32 = 1026;
    v33 = smEnabled;
    v34 = 1026;
    v35 = clipOnsPresent;
    v36 = 1026;
    v37 = tccShown;
    v38 = 1026;
    v39 = axOpened;
    v40 = 1026;
    v41 = numAppsOpened;
    v42 = 2050;
    v43 = assetEnrolled;
    _os_log_debug_impl(&dword_248A4A000, v13, OS_LOG_TYPE_DEBUG, "Metrics at start of the session: %{public}@ %{public}@ %{public}@ %{public}lu %{public}d, %{public}d, %{public}d, %{public}d, %{public}d, %{public}lu", &v24, 0x52u);
  }
}

- (void)emitSessionEnded:(id)ended
{
  v65 = *MEMORY[0x277D85DE8];
  endedCopy = ended;
  v5 = DSSTelemetryLog(endedCopy);
  if (os_signpost_enabled(v5))
  {
    *buf = 138543362;
    v40 = endedCopy;
    _os_signpost_emit_with_name_impl(&dword_248A4A000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SharingModeSession", " enableTelemetry=YES sourceString=%{public,signpost.telemetry:string2}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = [v6 timeIntervalSinceDate:self->_sharingModeStartTime];
  v9 = v8 / 60.0;
  v10 = DSSTelemetryLog(v7);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    uUIDString = [(NSUUID *)self->_sessionIdentifier UUIDString];
    sharingModeStartTime = self->_sharingModeStartTime;
    mode = self->_mode;
    smEnabled = self->_smEnabled;
    clipOnsPresent = self->_clipOnsPresent;
    tccShown = self->_tccShown;
    axOpened = self->_axOpened;
    numAppsOpened = self->_numAppsOpened;
    assetEnrolled = self->_assetEnrolled;
    openedApps = self->_openedApps;
    *buf = 138546434;
    v40 = uUIDString;
    v41 = 2114;
    v42 = sharingModeStartTime;
    v43 = 2114;
    v44 = v6;
    v45 = 2050;
    v46 = v9;
    v47 = 2114;
    v48 = endedCopy;
    v49 = 2114;
    v50 = openedApps;
    v51 = 2050;
    v52 = mode;
    v53 = 1026;
    v54 = smEnabled;
    v55 = 1026;
    v56 = clipOnsPresent;
    v57 = 1026;
    v58 = tccShown;
    v59 = 1026;
    v60 = axOpened;
    v61 = 1026;
    v62 = numAppsOpened;
    v63 = 2050;
    v64 = assetEnrolled;
    _os_log_debug_impl(&dword_248A4A000, v10, OS_LOG_TYPE_DEBUG, "Metrics at end of the session: %{public}@ %{public}@ %{public}@ %{public}f %{public}@ %{public}@ %{public}lu %{public}d %{public}d %{public}d %{public}d %{public}d %{public}lu", buf, 0x70u);
  }

  v34 = v6;

  v37[0] = @"duration";
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  v38[0] = v11;
  v37[1] = @"mode";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_mode];
  v38[1] = v12;
  v38[2] = endedCopy;
  v37[2] = @"endSource";
  v37[3] = @"numOfAppsOpened";
  v13 = [MEMORY[0x277CCABB0] numberWithInt:self->_numAppsOpened];
  v38[3] = v13;
  v37[4] = @"clipOnsPresent";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_clipOnsPresent];
  v38[4] = v14;
  v37[5] = @"axOpened";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_axOpened];
  v38[5] = v15;
  v37[6] = @"tccShown";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_tccShown];
  v38[6] = v16;
  v37[7] = @"assetReenrolled";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_assetEnrolled];
  v38[7] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:8];

  v35[5] = MEMORY[0x277D85DD0];
  v35[6] = 3221225472;
  v35[7] = __42__DSSSharingModeService_emitSessionEnded___block_invoke;
  v35[8] = &unk_278F62370;
  v19 = v18;
  v36 = v19;
  v20 = AnalyticsSendEventLazy();
  if ((v20 & 1) == 0)
  {
    v21 = DSSTelemetryLog(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [DSSSharingModeService emitSessionEnded:v21];
    }
  }

  v22 = self->_openedApps;
  if (v22 && self->_mode == 1)
  {
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __42__DSSSharingModeService_emitSessionEnded___block_invoke_44;
    v35[3] = &unk_278F62398;
    v35[4] = self;
    v22 = [(NSArray *)v22 enumerateObjectsUsingBlock:v35];
  }

  v23 = DSSTelemetryLog(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [DSSSharingModeService emitSessionEnded:v23];
  }

  [(DSSSharingModeService *)self resetCAMetrics];
}

void __42__DSSSharingModeService_emitSessionEnded___block_invoke_44(uint64_t a1, void *a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 48);
  v8[0] = @"sessionID";
  v8[1] = @"bundleID";
  v9[0] = v4;
  v9[1] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v6 = AnalyticsSendEventLazy();
  if ((v6 & 1) == 0)
  {
    v7 = DSSTelemetryLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __42__DSSSharingModeService_emitSessionEnded___block_invoke_44_cold_1(v7);
    }
  }
}

- (void)emitOpenedApps:(id)apps
{
  appsCopy = apps;
  if (appsCopy)
  {
    v6 = appsCopy;
    objc_storeStrong(&self->_openedApps, apps);
    self->_numAppsOpened = [(NSArray *)self->_openedApps count];
    appsCopy = v6;
  }
}

- (void)emitScreenMirroring
{
  v3 = DSSTelemetryLog(self);
  if (os_signpost_enabled(v3))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_248A4A000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SharingModeScreenMirroring", " enableTelemetry=YES Screen Mirroring", v4, 2u);
  }

  self->_smEnabled = 1;
}

- (void)emitScreenMirroring:(BOOL)mirroring
{
  mirroringCopy = mirroring;
  v6 = *MEMORY[0x277D85DE8];
  v4 = DSSTelemetryLog(self);
  if (os_signpost_enabled(v4))
  {
    v5[0] = 67240192;
    v5[1] = mirroringCopy;
    _os_signpost_emit_with_name_impl(&dword_248A4A000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SharingModeScreenMirroring", " enableTelemetry=YES screenMirroringt=%{public,signpost.telemetry:number1}d", v5, 8u);
  }
}

- (void)emitGuestBeganInitialEnrollment:(BOOL)enrollment
{
  enrollmentCopy = enrollment;
  v7 = *MEMORY[0x277D85DE8];
  v5 = DSSTelemetryLog(self);
  if (os_signpost_enabled(v5))
  {
    v6[0] = 67240192;
    v6[1] = enrollmentCopy;
    _os_signpost_emit_with_name_impl(&dword_248A4A000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SharingModeGuestBeganInitialEnrollment", " enableTelemetry=YES clipOnsPresent=%{public,signpost.telemetry:number1}d", v6, 8u);
  }

  self->_clipOnsPresent = enrollmentCopy;
}

- (void)emitGuestReEnrolled:(unint64_t)enrolled
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = DSSTelemetryLog(self);
  if (os_signpost_enabled(v5))
  {
    v6 = 134349056;
    enrolledCopy = enrolled;
    _os_signpost_emit_with_name_impl(&dword_248A4A000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SharingModeGuestReEnrolled", " enableTelemetry=YES asset=%{public,signpost.telemetry:number1}lu", &v6, 0xCu);
  }

  self->_assetEnrolled = enrolled;
}

- (void)emitTCCShown:(id)shown
{
  v8 = *MEMORY[0x277D85DE8];
  shownCopy = shown;
  v5 = DSSTelemetryLog(shownCopy);
  if (os_signpost_enabled(v5))
  {
    v6 = 138543362;
    v7 = shownCopy;
    _os_signpost_emit_with_name_impl(&dword_248A4A000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SharingModeTCCShown", " enableTelemetry=YES bundleID=%{public,signpost.telemetry:string1}@", &v6, 0xCu);
  }

  self->_tccShown = 1;
}

- (void)emitAXOpened
{
  v3 = DSSTelemetryLog(self);
  if (os_signpost_enabled(v3))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_248A4A000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SharingModeAXOpened", " enableTelemetry=YES AX Modified", v4, 2u);
  }

  self->_axOpened = 1;
}

- (void)emitAXOpened:(BOOL)opened
{
  openedCopy = opened;
  v6 = *MEMORY[0x277D85DE8];
  v4 = DSSTelemetryLog(self);
  if (os_signpost_enabled(v4))
  {
    v5[0] = 67240192;
    v5[1] = openedCopy;
    _os_signpost_emit_with_name_impl(&dword_248A4A000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SharingModeAXOpened", " enableTelemetry=YES modified=%{public,signpost.telemetry:number1}d", v5, 8u);
  }
}

- (void)dealloc
{
  AudioServicesDisposeSystemSoundID(self->_soundIDStarted);
  AudioServicesDisposeSystemSoundID(self->_soundIDEnded);
  v3.receiver = self;
  v3.super_class = DSSSharingModeService;
  [(DSSSharingModeService *)&v3 dealloc];
}

@end