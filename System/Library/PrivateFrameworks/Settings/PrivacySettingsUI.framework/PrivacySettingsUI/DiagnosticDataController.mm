@interface DiagnosticDataController
- (DiagnosticDataController)init;
- (id)specifiers;
- (void)_loadDiagnosticsDataWithCompletion:(id)completion;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
@end

@implementation DiagnosticDataController

- (DiagnosticDataController)init
{
  v20.receiver = self;
  v20.super_class = DiagnosticDataController;
  v2 = [(DiagnosticDataController *)&v20 init];
  v3 = v2;
  if (v2)
  {
    v2->__state = 0;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"plist", @"synced", @"ips", @"metriclog", @"anon", @"crash", @"session", @"log", @"gz", 0}];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v4 forKey:@"Extensions"];
    v6 = _CFXPCCreateXPCObjectFromCFObject();
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy_;
    v18 = __Block_byref_object_dispose_;
    mach_service = xpc_connection_create_mach_service("com.apple.crash_mover", 0, 0);
    v7 = v15[5];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __32__DiagnosticDataController_init__block_invoke;
    handler[3] = &unk_279BA0FF0;
    handler[4] = &v14;
    xpc_connection_set_event_handler(v7, handler);
    xpc_connection_resume(v15[5]);
    v8 = xpc_connection_send_message_with_reply_sync(v15[5], v6);
    if (MEMORY[0x266761C20]() != MEMORY[0x277D86468] || (xpc_dictionary_get_value(v8, "Success"), v10 = objc_claimAutoreleasedReturnValue(), (v11 = v10) == 0) || (value = xpc_BOOL_get_value(v10), v11, !value))
    {
      NSLog(&cfstr_CrashMoverXpcS.isa);
    }

    _Block_object_dispose(&v14, 8);
  }

  return v3;
}

void __32__DiagnosticDataController_init__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x266761C20](a2);
  if (a2 == MEMORY[0x277D863F0] && v4 == MEMORY[0x277D86480])
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = DiagnosticDataController;
  [(DiagnosticDataController *)&v16 viewDidLoad];
  v3 = PUI_LocalizedStringForProblemReporting(@"PROBLEM_REPORTING_DATA");
  [(DiagnosticDataController *)self setTitle:v3];

  table = [(DiagnosticDataController *)self table];
  [table _setDisplaysCellContentStringsOnTapAndHold:1];

  v5 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:0];
  [(DiagnosticDataController *)self setSearchController:v5];

  searchController = [(DiagnosticDataController *)self searchController];
  [searchController setSearchResultsUpdater:self];

  searchController2 = [(DiagnosticDataController *)self searchController];
  [searchController2 setObscuresBackgroundDuringPresentation:0];

  searchController3 = [(DiagnosticDataController *)self searchController];
  searchBar = [searchController3 searchBar];
  [searchBar setAutocapitalizationType:0];

  searchController4 = [(DiagnosticDataController *)self searchController];
  searchBar2 = [searchController4 searchBar];
  [searchBar2 setKeyboardType:0];

  searchController5 = [(DiagnosticDataController *)self searchController];
  searchBar3 = [searchController5 searchBar];
  [searchBar3 setAutocorrectionType:1];

  searchController6 = [(DiagnosticDataController *)self searchController];
  navigationItem = [(DiagnosticDataController *)self navigationItem];
  [navigationItem setSearchController:searchController6];

  [(DiagnosticDataController *)self setDefinesPresentationContext:1];
}

- (void)_loadDiagnosticsDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__DiagnosticDataController__loadDiagnosticsDataWithCompletion___block_invoke;
  block[3] = &unk_279BA1038;
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(v4, block);
}

void __63__DiagnosticDataController__loadDiagnosticsDataWithCompletion___block_invoke(uint64_t a1)
{
  v128 = *MEMORY[0x277D85DE8];
  v94 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = MEMORY[0x277CBEB18];
  v117 = 0;
  v118 = &v117;
  v119 = 0x2020000000;
  v3 = getOSAGetSubmittableLogsSymbolLoc_ptr;
  v120 = getOSAGetSubmittableLogsSymbolLoc_ptr;
  if (!getOSAGetSubmittableLogsSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v125 = __getOSAGetSubmittableLogsSymbolLoc_block_invoke;
    v126 = &unk_279BA0D08;
    v127 = &v117;
    __getOSAGetSubmittableLogsSymbolLoc_block_invoke(&buf);
    v3 = v118[3];
  }

  _Block_object_dispose(&v117, 8);
  if (!v3)
  {
    [PUILockdownModeController getEligibleDevicesWithCompletion:];
    goto LABEL_101;
  }

  v77 = a1;
  v4 = v3(0);
  v5 = [v2 arrayWithArray:v4];

  v117 = 0;
  v118 = &v117;
  v119 = 0x2050000000;
  v6 = getRTCReportingClass_softClass;
  v120 = getRTCReportingClass_softClass;
  if (!getRTCReportingClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v125 = __getRTCReportingClass_block_invoke;
    v126 = &unk_279BA0D08;
    v127 = &v117;
    __getRTCReportingClass_block_invoke(&buf);
    v6 = v118[3];
  }

  v7 = v6;
  _Block_object_dispose(&v117, 8);
  v116 = 0;
  v86 = [v6 _privacyLogs:&v116];
  v8 = v116;
  v83 = v8;
  if (v8)
  {
    v9 = _PUILoggingFacility(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v83;
      _os_log_impl(&dword_2657FE000, v9, OS_LOG_TYPE_DEFAULT, "RTCReporting log files not fetched: Error: %@", &buf, 0xCu);
    }
  }

  else
  {
    [v5 addObjectsFromArray:v86];
  }

  v117 = 0;
  v118 = &v117;
  v119 = 0x2050000000;
  v10 = getCloudTelemetryReporterClass_softClass;
  v120 = getCloudTelemetryReporterClass_softClass;
  if (!getCloudTelemetryReporterClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v125 = __getCloudTelemetryReporterClass_block_invoke;
    v126 = &unk_279BA0D08;
    v127 = &v117;
    __getCloudTelemetryReporterClass_block_invoke(&buf);
    v10 = v118[3];
  }

  v11 = v10;
  _Block_object_dispose(&v117, 8);
  v115 = 0;
  v85 = [v10 _privacyLogs:&v115];
  v12 = v115;
  v82 = v12;
  if (v12)
  {
    v13 = _PUILoggingFacility(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v82;
      _os_log_impl(&dword_2657FE000, v13, OS_LOG_TYPE_DEFAULT, "CloudTelemetry log files not fetched: Error: %@", &buf, 0xCu);
    }
  }

  else
  {
    [v5 addObjectsFromArray:v85];
  }

  v117 = 0;
  v118 = &v117;
  v119 = 0x2050000000;
  v14 = getAATransparencyLoggingClass_softClass;
  v120 = getAATransparencyLoggingClass_softClass;
  if (!getAATransparencyLoggingClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v125 = __getAATransparencyLoggingClass_block_invoke;
    v126 = &unk_279BA0D08;
    v127 = &v117;
    __getAATransparencyLoggingClass_block_invoke(&buf);
    v14 = v118[3];
  }

  v15 = v14;
  _Block_object_dispose(&v117, 8);
  v114 = 0;
  v84 = [v14 logsWithError:&v114];
  v16 = v114;
  v81 = v16;
  if (v16)
  {
    v17 = _PUILoggingFacility(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v81;
      _os_log_impl(&dword_2657FE000, v17, OS_LOG_TYPE_DEFAULT, "AppAnalytics log files not fetched: Error: %@", &buf, 0xCu);
    }
  }

  else
  {
    [v5 addObjectsFromArray:v84];
  }

  v117 = 0;
  v118 = &v117;
  v119 = 0x2050000000;
  v18 = get_DPReportFileManagerClass_softClass;
  v120 = get_DPReportFileManagerClass_softClass;
  if (!get_DPReportFileManagerClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v125 = __get_DPReportFileManagerClass_block_invoke;
    v126 = &unk_279BA0D08;
    v127 = &v117;
    __get_DPReportFileManagerClass_block_invoke(&buf);
    v18 = v118[3];
  }

  v19 = v18;
  _Block_object_dispose(&v117, 8);
  v92 = [v18 submittedReports];
  [v5 addObjectsFromArray:v92];
  v91 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/sysdiagnose" isDirectory:1];
  v20 = [MEMORY[0x277CCAA00] defaultManager];
  v21 = *MEMORY[0x277CBE8E8];
  v22 = [MEMORY[0x277CBEA60] arrayWithObject:*MEMORY[0x277CBE8E8]];
  v23 = [v20 contentsOfDirectoryAtURL:v91 includingPropertiesForKeys:v22 options:4 error:0];

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  obj = v23;
  v24 = [obj countByEnumeratingWithState:&v110 objects:v123 count:16];
  if (v24)
  {
    v25 = *v111;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v111 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = [*(*(&v110 + 1) + 8 * i) absoluteURL];
        [v5 addObject:v27];
      }

      v24 = [obj countByEnumeratingWithState:&v110 objects:v123 count:16];
    }

    while (v24);
  }

  v90 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/PerformanceTraces" isDirectory:1];
  v28 = [MEMORY[0x277CCAA00] defaultManager];
  v29 = [MEMORY[0x277CBEA60] arrayWithObject:v21];
  v30 = [v28 contentsOfDirectoryAtURL:v90 includingPropertiesForKeys:v29 options:4 error:0];

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v96 = v30;
  v31 = [v96 countByEnumeratingWithState:&v106 objects:v122 count:16];
  if (v31)
  {
    v32 = *v107;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v107 != v32)
        {
          objc_enumerationMutation(v96);
        }

        v34 = [*(*(&v106 + 1) + 8 * j) absoluteURL];
        [v5 addObject:v34];
      }

      v31 = [v96 countByEnumeratingWithState:&v106 objects:v122 count:16];
    }

    while (v31);
  }

  v105 = 0;
  v117 = 0;
  v118 = &v117;
  v119 = 0x2020000000;
  v35 = getDESSubmissionLogFileURLsSymbolLoc_ptr;
  v120 = getDESSubmissionLogFileURLsSymbolLoc_ptr;
  if (!getDESSubmissionLogFileURLsSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v125 = __getDESSubmissionLogFileURLsSymbolLoc_block_invoke;
    v126 = &unk_279BA0D08;
    v127 = &v117;
    __getDESSubmissionLogFileURLsSymbolLoc_block_invoke(&buf);
    v35 = v118[3];
  }

  _Block_object_dispose(&v117, 8);
  if (!v35)
  {
    [PUILockdownModeController getEligibleDevicesWithCompletion:];
    goto LABEL_101;
  }

  v89 = v35(&v105);
  v36 = v105;
  v80 = v36;
  if (v36)
  {
    v37 = _PUILoggingFacility(v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v80;
      _os_log_impl(&dword_2657FE000, v37, OS_LOG_TYPE_DEFAULT, "DES Submission Log Files not fetched: Error: %@", &buf, 0xCu);
    }
  }

  else if (v89)
  {
    [v5 addObjectsFromArray:v89];
  }

  v117 = 0;
  v118 = &v117;
  v119 = 0x2050000000;
  v38 = getSPMLLoggingClass_softClass;
  v120 = getSPMLLoggingClass_softClass;
  if (!getSPMLLoggingClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v125 = __getSPMLLoggingClass_block_invoke;
    v126 = &unk_279BA0D08;
    v127 = &v117;
    __getSPMLLoggingClass_block_invoke(&buf);
    v38 = v118[3];
  }

  v39 = v38;
  _Block_object_dispose(&v117, 8);
  v104 = 0;
  v88 = [v38 submitttedSpotlightReportsError:&v104];
  v40 = v104;
  v79 = v40;
  if (v40)
  {
    v41 = _PUILoggingFacility(v40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v79;
      _os_log_impl(&dword_2657FE000, v41, OS_LOG_TYPE_DEFAULT, "Search metadata reports not fetched: Error: %@", &buf, 0xCu);
    }
  }

  else if (v88)
  {
    [v5 addObjectsFromArray:v88];
  }

  v117 = 0;
  v118 = &v117;
  v119 = 0x2050000000;
  v42 = getPLDiagnosticsClass_softClass;
  v120 = getPLDiagnosticsClass_softClass;
  if (!getPLDiagnosticsClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v125 = __getPLDiagnosticsClass_block_invoke;
    v126 = &unk_279BA0D08;
    v127 = &v117;
    __getPLDiagnosticsClass_block_invoke(&buf);
    v42 = v118[3];
  }

  v43 = v42;
  _Block_object_dispose(&v117, 8);
  v44 = [v42 diagnosticsURLs];
  [v5 addObjectsFromArray:v44];

  v103 = 0;
  v117 = 0;
  v118 = &v117;
  v119 = 0x2020000000;
  v45 = getSDRGetAllLogFileURLsSymbolLoc_ptr;
  v120 = getSDRGetAllLogFileURLsSymbolLoc_ptr;
  if (!getSDRGetAllLogFileURLsSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v125 = __getSDRGetAllLogFileURLsSymbolLoc_block_invoke;
    v126 = &unk_279BA0D08;
    v127 = &v117;
    __getSDRGetAllLogFileURLsSymbolLoc_block_invoke(&buf);
    v45 = v118[3];
  }

  _Block_object_dispose(&v117, 8);
  if (!v45)
  {
    [PUILockdownModeController getEligibleDevicesWithCompletion:];
    goto LABEL_101;
  }

  v87 = v45(&v103);
  v46 = v103;
  v78 = v46;
  if (v46)
  {
    v47 = _PUILoggingFacility(v46);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v78;
      _os_log_impl(&dword_2657FE000, v47, OS_LOG_TYPE_DEFAULT, "System Diagnostic Reporter logs not fetched: Error: %@", &buf, 0xCu);
    }
  }

  else if (v87)
  {
    [v5 addObjectsFromArray:v87];
  }

  if (getDRGetAllLogFileURLsSymbolLoc())
  {
    v102 = 0;
    DRGetAllLogFileURLsSymbolLoc = getDRGetAllLogFileURLsSymbolLoc();
    if (DRGetAllLogFileURLsSymbolLoc)
    {
      v49 = DRGetAllLogFileURLsSymbolLoc(&v102);
      v50 = v102;
      v51 = v50;
      if (v50)
      {
        v52 = _PUILoggingFacility(v50);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v51;
          _os_log_impl(&dword_2657FE000, v52, OS_LOG_TYPE_DEFAULT, "DiagnosticPipeline logs not fetched: Error: %@", &buf, 0xCu);
        }
      }

      else if (v49)
      {
        [v5 addObjectsFromArray:v49];
      }

      goto LABEL_78;
    }

    [PUILockdownModeController getEligibleDevicesWithCompletion:];
LABEL_101:
    __break(1u);
  }

LABEL_78:
  if (![v5 count])
  {
LABEL_95:
    v73 = MEMORY[0x277D3FAD8];
    v74 = PUI_LocalizedStringForProblemReporting(@"PROBLEM_REPORTING_NO_DATA");
    v75 = [v73 preferenceSpecifierNamed:v74 target:0 set:0 get:0 detail:0 cell:13 edit:0];

    v76 = [MEMORY[0x277CCABB0] numberWithBool:0];
    [v75 setProperty:v76 forKey:*MEMORY[0x277D3FF38]];

    [v94 addObject:v75];
    goto LABEL_96;
  }

  [v5 sortUsingComparator:&__block_literal_global_0];
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v95 = v5;
  v53 = [v95 countByEnumeratingWithState:&v98 objects:v121 count:16];
  if (!v53)
  {

    goto LABEL_95;
  }

  v54 = 0;
  v55 = *v99;
  v93 = *MEMORY[0x277D3F908];
  do
  {
    for (k = 0; k != v53; ++k)
    {
      if (*v99 != v55)
      {
        objc_enumerationMutation(v95);
      }

      v57 = *(*(&v98 + 1) + 8 * k);
      v58 = [v57 URLByStandardizingPath];
      v59 = [v58 absoluteString];
      v60 = [v59 hasSuffix:@"/"];

      if ((v60 & 1) == 0)
      {
        v61 = MEMORY[0x277D3FAD8];
        v62 = [v57 lastPathComponent];
        v63 = objc_opt_class();
        v64 = [v61 preferenceSpecifierNamed:v62 target:0 set:0 get:0 detail:v63 cell:2 edit:objc_opt_class()];

        v65 = [v57 lastPathComponent];
        LODWORD(v63) = [v65 hasSuffix:@"PLSQL.pll.anon"];

        if (v63)
        {
          [v64 setDetailControllerClass:objc_opt_class()];
          v117 = 0;
          v118 = &v117;
          v119 = 0x2050000000;
          v66 = getPLDatabaseReaderClass_softClass;
          v120 = getPLDatabaseReaderClass_softClass;
          if (!getPLDatabaseReaderClass_softClass)
          {
            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v125 = __getPLDatabaseReaderClass_block_invoke;
            v126 = &unk_279BA0D08;
            v127 = &v117;
            __getPLDatabaseReaderClass_block_invoke(&buf);
            v66 = v118[3];
          }

          v67 = v66;
          _Block_object_dispose(&v117, 8);
          v68 = [v66 alloc];
          v69 = [v57 absoluteString];
          v70 = [v68 initWithDatabaseFile:v69];

          [v64 setProperty:v70 forKey:@"powerlogReader"];
          v71 = [v70 tableNamesFromDatabase];
          [v64 setValues:v71 titles:v71];
        }

        v72 = [v57 path];
        [v64 setProperty:v72 forKey:v93];

        [v94 addObject:v64];
        v54 = 1;
      }
    }

    v53 = [v95 countByEnumeratingWithState:&v98 objects:v121 count:16];
  }

  while (v53);

  if ((v54 & 1) == 0)
  {
    goto LABEL_95;
  }

LABEL_96:
  (*(*(v77 + 32) + 16))();
}

uint64_t __63__DiagnosticDataController__loadDiagnosticsDataWithCompletion___block_invoke_452(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 lastPathComponent];
  v6 = [v4 lastPathComponent];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (id)specifiers
{
  v19[1] = *MEMORY[0x277D85DE8];
  _state = [(DiagnosticDataController *)self _state];
  v4 = MEMORY[0x277D3FC48];
  if (!_state)
  {
    _allSpecifiers = [(DiagnosticDataController *)self _allSpecifiers];

    if (!_allSpecifiers)
    {
      objc_initWeak(&location, self);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __38__DiagnosticDataController_specifiers__block_invoke;
      v16[3] = &unk_279BA1088;
      objc_copyWeak(&v17, &location);
      [(DiagnosticDataController *)self _loadDiagnosticsDataWithCompletion:v16];
      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }

    v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:15 edit:0];
    v19[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v8 = *v4;
    v9 = *(&self->super.super.super.super.super.isa + v8);
    *(&self->super.super.super.super.super.isa + v8) = v7;
  }

  searchController = [(DiagnosticDataController *)self searchController];
  if (([searchController isActive] & 1) == 0)
  {
    v11 = [(DiagnosticDataController *)self _state]== 1;

    if (!v11)
    {
      goto LABEL_9;
    }

    _allSpecifiers2 = [(DiagnosticDataController *)self _allSpecifiers];
    v13 = *v4;
    searchController = *(&self->super.super.super.super.super.isa + v13);
    *(&self->super.super.super.super.super.isa + v13) = _allSpecifiers2;
  }

LABEL_9:
  v14 = *(&self->super.super.super.super.super.isa + *v4);

  return v14;
}

void __38__DiagnosticDataController_specifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__DiagnosticDataController_specifiers__block_invoke_2;
  v5[3] = &unk_279BA1060;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __38__DiagnosticDataController_specifiers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) copy];
  [WeakRetained set_allSpecifiers:v3];

  v4 = [WeakRetained unprotectedSpecifiers];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__DiagnosticDataController_specifiers__block_invoke_3;
  aBlock[3] = &unk_279BA0B28;
  aBlock[4] = WeakRetained;
  v5 = _Block_copy(aBlock);
  if ([v4 count])
  {
    [WeakRetained removeContiguousSpecifiers:v4 animated:1];
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }

  else
  {
    v5[2](v5);
  }
}

uint64_t __38__DiagnosticDataController_specifiers__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 _allSpecifiers];
  [v2 insertContiguousSpecifiers:v3 atIndex:0 animated:1];

  v4 = *(a1 + 32);
  v5 = [v4 _allSpecifiers];
  [v4 setSpecifiers:v5];

  v6 = *(a1 + 32);

  return [v6 set_state:1];
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  searchBar = [controller searchBar];
  text = [searchBar text];

  if ([text length])
  {
    array = [MEMORY[0x277CBEB18] array];
    _allSpecifiers = [(DiagnosticDataController *)self _allSpecifiers];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __67__DiagnosticDataController_updateSearchResultsForSearchController___block_invoke;
    v12 = &unk_279BA0E10;
    v13 = text;
    v14 = array;
    _allSpecifiers2 = array;
    [_allSpecifiers enumerateObjectsUsingBlock:&v9];

    [(DiagnosticDataController *)self setSpecifiers:_allSpecifiers2, v9, v10, v11, v12];
  }

  else
  {
    _allSpecifiers2 = [(DiagnosticDataController *)self _allSpecifiers];
    [(DiagnosticDataController *)self setSpecifiers:_allSpecifiers2];
  }
}

void __67__DiagnosticDataController_updateSearchResultsForSearchController___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 name];
  v4 = [v3 localizedCaseInsensitiveContainsString:*(a1 + 32)];

  if (v4)
  {
    [*(a1 + 40) addObject:v5];
  }
}

@end