@interface MSNTTR
+ (id)sharedInstance;
- (BOOL)TTRInProgress;
- (void)beginTTRWithTitle:(id)title;
- (void)beginTTRWithTitle:(id)title date:(id)date;
- (void)completeTTR:(id)r;
- (void)continueTTR;
- (void)handleCallback:(unint64_t)callback;
@end

@implementation MSNTTR

+ (id)sharedInstance
{
  if (os_variant_allows_internal_security_policies())
  {
    if (sharedInstance_onceToken != -1)
    {
      +[MSNTTR sharedInstance];
    }

    v2 = sharedInstance_ttr;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __24__MSNTTR_sharedInstance__block_invoke()
{
  sharedInstance_ttr = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)beginTTRWithTitle:(id)title
{
  v4 = MEMORY[0x277CBEAA8];
  titleCopy = title;
  date = [v4 date];
  [(MSNTTR *)self beginTTRWithTitle:titleCopy date:date];
}

- (void)beginTTRWithTitle:(id)title date:(id)date
{
  v40 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  dateCopy = date;
  v8 = os_variant_allows_internal_security_policies();
  if ((v8 & 1) == 0)
  {
    qword_27F958928 = "TTR instance should not exist on customer build.";
    v34 = MSNLog(v8);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [MSNTTR beginTTRWithTitle:date:];
    }

LABEL_21:

    abort();
  }

  v9 = +[MSNTTR sharedInstance];

  if (v9 != self)
  {
    qword_27F958928 = "MSNTTR is a singleton.";
    v34 = MSNLog(v10);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [MSNTTR beginTTRWithTitle:date:];
    }

    goto LABEL_21;
  }

  tTRInProgress = [(MSNTTR *)self TTRInProgress];
  v12 = tTRInProgress;
  v13 = MSNLog(tTRInProgress);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_258731000, v13, OS_LOG_TYPE_INFO, "Suppressing TTR due to TTR already in progress.", buf, 2u);
    }
  }

  else
  {
    selfCopy = self;
    v37 = dateCopy;
    if (v14)
    {
      *buf = 138412290;
      v39 = titleCopy;
      _os_log_impl(&dword_258731000, v13, OS_LOG_TYPE_INFO, "Attemting TTR: %@", buf, 0xCu);
    }

    v13 = objc_alloc_init(MEMORY[0x277CCAB50]);
    uRLQueryAllowedCharacterSet = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
    [v13 formUnionWithCharacterSet:uRLQueryAllowedCharacterSet];

    [v13 removeCharactersInString:@"&"];
    v16 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v16 setDateFormat:@"HH:mm:ss"];
    systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
    [v16 setTimeZone:systemTimeZone];

    v18 = MEMORY[0x277CCACA8];
    [titleCopy stringByAddingPercentEncodingWithAllowedCharacters:v13];
    v20 = v19 = titleCopy;
    v21 = [@"MediaSafetyNet" stringByAddingPercentEncodingWithAllowedCharacters:v13];
    v22 = [@"all" stringByAddingPercentEncodingWithAllowedCharacters:v13];
    v23 = [@"1066524" stringByAddingPercentEncodingWithAllowedCharacters:v13];
    v24 = MEMORY[0x277CCACA8];
    v25 = [v16 stringFromDate:dateCopy];
    v36 = v19;
    v26 = [v24 stringWithFormat:@"The mic or camera was unexpectedly used on the home/lock screen. Describe what you were doing, especially whether you were intentionally recording. Say what apps you were using and whether you noticed any indicators (such as double-height status bar or pill). The recorded device state was:\n\n%@\n\nThe event occurred at: %@", v19, v25];
    v27 = [v26 stringByAddingPercentEncodingWithAllowedCharacters:v13];
    v28 = [v18 stringWithFormat:@"tap-to-radar://new?Title=%@&ComponentName=%@&ComponentVersion=%@&Reproducibility=Not%%20Applicable&ComponentID=%@&Classification=Crash/Hang/Data%%20Loss&Description=%@", v20, v21, v22, v23, v27];

    v29 = [MEMORY[0x277CBEBC0] URLWithString:v28];
    [(MSNTTR *)selfCopy setUrl:v29];

    v31 = MSNLog(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v39 = v28;
      _os_log_impl(&dword_258731000, v31, OS_LOG_TYPE_INFO, "TTR: %@", buf, 0xCu);
    }

    if (g_uiState == 1)
    {
      v33 = MSNLog(v32);
      dateCopy = v37;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_258731000, v33, OS_LOG_TYPE_INFO, "Delaying TTR due to lockscreen.", buf, 2u);
      }

      [(MSNTTR *)selfCopy setPendedTTR:1];
    }

    else
    {
      [(MSNTTR *)selfCopy continueTTR];
      dateCopy = v37;
    }

    titleCopy = v36;
  }
}

- (BOOL)TTRInProgress
{
  v2 = [(MSNTTR *)self url];
  v3 = v2 != 0;

  return v3;
}

- (void)continueTTR
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  [MSNTTR continueTTR];
}

- (void)handleCallback:(unint64_t)callback
{
  v5 = [(MSNTTR *)self url];
  [(MSNTTR *)self setUrl:0];
  CFPreferencesSetAppValue(@"MediaSafetyNetWaitingTTR", 0, @"com.apple.mediaserverd");
  v6 = CFPreferencesAppSynchronize(@"com.apple.mediaserverd");
  if (callback == 1)
  {
    v9 = MSNLog(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_258731000, v9, OS_LOG_TYPE_INFO, "User cancelled TTR.", buf, 2u);
    }
  }

  else if (callback == 2)
  {
    v7 = MSNLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_258731000, v7, OS_LOG_TYPE_INFO, "User cancelled TTR and suppressed forever.", buf, 2u);
    }

    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:31536000.0];
    CFPreferencesSetAppValue(@"MediaSafetyNetLastTTR", v8, @"com.apple.mediaserverd");

    CFPreferencesAppSynchronize(@"com.apple.mediaserverd");
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __25__MSNTTR_handleCallback___block_invoke;
    v10[3] = &unk_2798A3D18;
    v10[4] = self;
    v11 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

- (void)completeTTR:(id)r
{
  v16 = *MEMORY[0x277D85DE8];
  rCopy = r;
  v4 = MSNLog(rCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = rCopy;
    _os_log_impl(&dword_258731000, v4, OS_LOG_TYPE_INFO, "Completing TTR: %@.", &buf, 0xCu);
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v5 = getLSApplicationWorkspaceClass_softClass;
  v11 = getLSApplicationWorkspaceClass_softClass;
  if (!getLSApplicationWorkspaceClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v13 = __getLSApplicationWorkspaceClass_block_invoke;
    v14 = &unk_2798A3E08;
    v15 = &v8;
    __getLSApplicationWorkspaceClass_block_invoke(&buf);
    v5 = v9[3];
  }

  v6 = v5;
  _Block_object_dispose(&v8, 8);
  defaultWorkspace = [v5 defaultWorkspace];
  [defaultWorkspace openURL:rCopy configuration:0 completionHandler:&__block_literal_global_57];
}

void __22__MSNTTR_completeTTR___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = MSNLog(v5);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __22__MSNTTR_completeTTR___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_258731000, v7, OS_LOG_TYPE_INFO, "TTR done: %@.", &v8, 0xCu);
  }
}

@end