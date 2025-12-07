@interface WRWorkflow
+ (WRWorkflow)workflowWithName:(id)name;
+ (WRWorkflow)workflowWithPlist:(id)plist checkForOverrides:(BOOL)overrides error:(id *)error;
+ (id)allWorkflows;
+ (id)makeOverridePlistDirectoryWithError:(id *)error;
+ (id)plistDirectory;
+ (uint64_t)diagnosticsEnabled;
+ (uint64_t)telemetryEnabled;
+ (void)allWorkflows;
+ (void)diagnosticsEnabled;
+ (void)plistDirectory;
- (BOOL)hasChangesRelativeTo:(id)to;
- (BOOL)hasOverallDiagnosticThresholdInterval;
- (BOOL)isEqual:(id)equal;
- (double)overallDiagnosticThresholdIntervalSeconds;
- (id)debugDescription;
- (id)encodedDict;
- (id)initWithPlist:(char)plist telemetryEnabled:(void *)enabled diagnosticsEnabled:(uint64_t)diagnosticsEnabled checkForOverrides:(uint64_t *)overrides error:;
- (id)wrsignpostForSignpostObject:(uint64_t)object;
- (id)wrsignpostWithName:(uint64_t)name;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
@end

@implementation WRWorkflow

+ (uint64_t)diagnosticsEnabled
{
  objc_opt_self();
  v12 = 0;
  v1 = WROverrideDiagnosticsEnablement(&v12);
  v2 = v12;
  v3 = v2;
  if (v1)
  {
    bOOLValue = [v1 BOOLValue];
LABEL_10:
    v10 = bOOLValue;
    goto LABEL_11;
  }

  if (v2)
  {
    v5 = __error();
    v6 = *v5;
    v7 = _wrlog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      +[WRWorkflow diagnosticsEnabled];
    }

    *__error() = v6;
  }

  v8 = WRIsSeedBuild();
  if ((v8 & 1) == 0)
  {
    bOOLValue = WRIsAppleInternal(v8, v9);
    goto LABEL_10;
  }

  v10 = 1;
LABEL_11:

  return v10;
}

+ (uint64_t)telemetryEnabled
{
  objc_opt_self();
  v9 = 0;
  v1 = WROverrideTelemetryEnablement(&v9);
  v2 = v9;
  v3 = v2;
  if (v1)
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    if (v2)
    {
      v5 = __error();
      v6 = *v5;
      v7 = _wrlog(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        +[WRWorkflow diagnosticsEnabled];
      }

      *__error() = v6;
    }

    bOOLValue = 1;
  }

  return bOOLValue;
}

+ (id)plistDirectory
{
  objc_opt_self();
  v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  resourceURL = [v1 resourceURL];
  if (!resourceURL)
  {
    v3 = __error();
    v4 = *v3;
    v5 = _wrlog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      +[WRWorkflow plistDirectory];
    }

    *__error() = v4;
  }

  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"WorkflowPlists" relativeToURL:resourceURL];

  return v6;
}

+ (id)makeOverridePlistDirectoryWithError:(id *)error
{
  if (geteuid())
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:513 userInfo:0];
      *error = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    overridePlistDirectory = [self overridePlistDirectory];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [defaultManager createDirectoryAtURL:overridePlistDirectory withIntermediateDirectories:1 attributes:0 error:error];

    v5 = 0;
    if (v8)
    {
      v5 = overridePlistDirectory;
    }
  }

  return v5;
}

+ (id)allWorkflows
{
  v89 = *MEMORY[0x277D85DE8];
  v2 = +[WRWorkflow telemetryEnabled];
  v3 = +[WRWorkflow diagnosticsEnabled];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __26__WRWorkflow_allWorkflows__block_invoke;
  v77[3] = &unk_279EE36E0;
  v6 = v5;
  v78 = v6;
  v61 = v3;
  v62 = v2;
  v80 = v2;
  v81 = v3;
  v58 = v4;
  v79 = v58;
  v7 = MEMORY[0x277C5A9A0](v77);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = +[WRWorkflow overridePlistDirectory];
  array = [MEMORY[0x277CBEA60] array];
  v11 = [defaultManager enumeratorAtURL:v9 includingPropertiesForKeys:array options:5 errorHandler:&__block_literal_global_2];

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v73 objects:v88 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v74;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v74 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v7[2](v7, *(*(&v73 + 1) + 8 * i));
      }

      v14 = [v12 countByEnumeratingWithState:&v73 objects:v88 count:16];
    }

    while (v14);
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v18 = +[WRWorkflow plistDirectory];
  array2 = [MEMORY[0x277CBEA60] array];
  v20 = [defaultManager2 enumeratorAtURL:v18 includingPropertiesForKeys:array2 options:5 errorHandler:0];

  v72 = 0u;
  v70 = 0u;
  v71 = 0u;
  v69 = 0u;
  v21 = v20;
  v22 = [v21 countByEnumeratingWithState:&v69 objects:v87 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v70;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v70 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v7[2](v7, *(*(&v69 + 1) + 8 * j));
      }

      v23 = [v21 countByEnumeratingWithState:&v69 objects:v87 count:16];
    }

    while (v23);
  }

  v68 = 0;
  v26 = WROverrideNewWorkflows(&v68);
  v27 = v68;
  v28 = v27;
  v29 = v58;
  if (v26)
  {
    v56 = v26;
    v57 = v6;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = v26;
    v30 = [obj countByEnumeratingWithState:&v64 objects:v86 count:16];
    if (!v30)
    {
      goto LABEL_37;
    }

    v31 = v30;
    v60 = *v65;
    while (1)
    {
      for (k = 0; k != v31; ++k)
      {
        v33 = v28;
        if (*v65 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v64 + 1) + 8 * k);
        v35 = [v34 objectForKeyedSubscript:{@"name", v56, v57}];
        v36 = [WRWorkflow alloc];
        v63 = v28;
        v37 = [(WRWorkflow *)v36 initWithPlist:v34 telemetryEnabled:v62 diagnosticsEnabled:v61 checkForOverrides:1 error:&v63];
        v28 = v63;

        if (!v37)
        {
          domain = [v28 domain];
          if ([domain isEqualToString:@"WorkflowResponsivenessError"])
          {
            code = [v28 code];

            if (code == 3)
            {
              v44 = __error();
              v45 = *v44;
              v46 = _wrlog(v44);
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v83 = v35;
                _os_log_impl(&dword_2746E5000, v46, OS_LOG_TYPE_DEFAULT, "%{public}@: New workflow disabled", buf, 0xCu);
              }

LABEL_34:

              *__error() = v45;
              goto LABEL_35;
            }
          }

          else
          {
          }

          v47 = __error();
          v45 = *v47;
          v46 = _wrlog(v47);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543618;
            v83 = v35;
            v84 = 2114;
            v85 = v28;
            _os_log_fault_impl(&dword_2746E5000, v46, OS_LOG_TYPE_FAULT, "%{public}@: Unable to create new workflow: %{public}@", buf, 0x16u);
          }

          goto LABEL_34;
        }

        if ([v29 containsObject:v37])
        {
          [v37 name];

          v38 = __error();
          v39 = *v38;
          v40 = _wrlog(v38);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            name = [v37 name];
            *buf = 138543362;
            v83 = name;
            _os_log_impl(&dword_2746E5000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@: New workflow is duplicate of existing workflow (whose settings are already overridden)", buf, 0xCu);
          }

          *__error() = v39;
          v29 = v58;
        }

        else
        {
          [v29 addObject:v37];
        }

LABEL_35:
      }

      v31 = [obj countByEnumeratingWithState:&v64 objects:v86 count:16];
      if (!v31)
      {
LABEL_37:

        v26 = v56;
        v6 = v57;
        goto LABEL_42;
      }
    }
  }

  if (v27)
  {
    v48 = __error();
    v49 = *v48;
    v50 = _wrlog(v48);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
    {
      +[WRWorkflow allWorkflows];
    }

    *__error() = v49;
  }

LABEL_42:
  [v29 sortUsingSelector:{sel_compare_, v56, v57}];
  if (![v29 count])
  {
    v51 = __error();
    v52 = *v51;
    v53 = _wrlog(v51);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      +[WRWorkflow allWorkflows];
    }

    *__error() = v52;
  }

  if ([v29 count])
  {
    v54 = [v29 copy];
  }

  else
  {
    v54 = 0;
  }

  return v54;
}

void __26__WRWorkflow_allWorkflows__block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 lastPathComponent];
  v5 = [v4 stringByDeletingPathExtension];

  if (v5)
  {
    if (([*(a1 + 32) containsObject:v5] & 1) == 0)
    {
      v37 = 0;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v3 error:&v37];
      v7 = v37;
      if (!v6)
      {
        v24 = WRIsDisabledWorkflow(v3);
        v25 = __error();
        v26 = *v25;
        v27 = _wrlog(v25);
        v28 = v27;
        if (v24)
        {
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v39 = v5;
            _os_log_impl(&dword_2746E5000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: Workflow disabled", buf, 0xCu);
          }

          *__error() = v26;
          [*(a1 + 32) addObject:v5];
        }

        else
        {
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v39 = v5;
            v40 = 2114;
            v41 = v3;
            v42 = 2112;
            v43 = v7;
            _os_log_error_impl(&dword_2746E5000, v28, OS_LOG_TYPE_ERROR, "%{public}@: Unable to read in %{public}@: %@", buf, 0x20u);
          }

          *__error() = v26;
        }

        v12 = v7;
        goto LABEL_32;
      }

      v8 = [WRWorkflow alloc];
      v9 = *(a1 + 48);
      v10 = *(a1 + 49);
      v36 = v7;
      v11 = [(WRWorkflow *)v8 initWithPlist:v6 telemetryEnabled:v9 diagnosticsEnabled:v10 checkForOverrides:1 error:&v36];
      v12 = v36;

      if (v11)
      {
        v13 = [v11 name];
        v14 = [v13 isEqual:v5];

        if (v14)
        {
          v15 = [*(a1 + 40) containsObject:v11];
          [v11 name];

          v16 = __error();
          v17 = *v16;
          v18 = _wrlog(v16);
          v19 = v18;
          if (v15)
          {
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v20 = [v11 name];
              *buf = 138543618;
              v39 = v20;
              v40 = 2114;
              v41 = v3;
              _os_log_impl(&dword_2746E5000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring duplicate workflow from %{public}@", buf, 0x16u);
            }

            *__error() = v17;
          }

          else
          {
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              __26__WRWorkflow_allWorkflows__block_invoke_cold_2();
            }

            *__error() = v17;
            [*(a1 + 40) addObject:v11];
          }

          goto LABEL_31;
        }

        [v11 name];

        v34 = __error();
        v32 = *v34;
        v33 = _wrlog(v34);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
        {
          __26__WRWorkflow_allWorkflows__block_invoke_cold_1();
        }

LABEL_30:

        *__error() = v32;
LABEL_31:

LABEL_32:
        goto LABEL_33;
      }

      v29 = [v12 domain];
      if ([v29 isEqualToString:@"WorkflowResponsivenessError"])
      {
        v30 = [v12 code];

        if (v30 == 3)
        {
          v31 = __error();
          v32 = *v31;
          v33 = _wrlog(v31);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v39 = v5;
            _os_log_impl(&dword_2746E5000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: Workflow disabled", buf, 0xCu);
          }

          goto LABEL_30;
        }
      }

      else
      {
      }

      v35 = __error();
      v32 = *v35;
      v33 = _wrlog(v35);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        __26__WRWorkflow_allWorkflows__block_invoke_cold_3();
      }

      goto LABEL_30;
    }
  }

  else
  {
    v21 = __error();
    v22 = *v21;
    v23 = _wrlog(v21);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      __26__WRWorkflow_allWorkflows__block_invoke_cold_4();
    }

    *__error() = v22;
  }

LABEL_33:
}

- (id)initWithPlist:(char)plist telemetryEnabled:(void *)enabled diagnosticsEnabled:(uint64_t)diagnosticsEnabled checkForOverrides:(uint64_t *)overrides error:
{
  diagnosticsEnabledCopy = diagnosticsEnabled;
  enabledCopy = enabled;
  v420 = *MEMORY[0x277D85DE8];
  v315 = a2;
  if (!self)
  {
    v32 = 0;
    goto LABEL_180;
  }

  v398 = 0;
  if (overrides)
  {
    overridesCopy = overrides;
    *overrides = 0;
  }

  else
  {
    overridesCopy = &v398;
  }

  v397.receiver = self;
  v397.super_class = WRWorkflow;
  v316 = objc_msgSendSuper2(&v397, sel_init);

  if (v316)
  {
    v18 = WRCheckForBadWorkflowDict(v315);
    *overridesCopy = v18;
    if (!v18)
    {
      v311 = [v315 objectForKeyedSubscript:@"name"];
      if (!v311)
      {
        [(WRWorkflow *)overridesCopy initWithPlist:v19 telemetryEnabled:v20 diagnosticsEnabled:v21 checkForOverrides:v22 error:v23, v24];
        v32 = 0;
        goto LABEL_178;
      }

      if ([WRWorkflowEventTracker isReservedWorkflowName:v311])
      {
        WRMakeError(8, @"Workflow name is reserved: %@", v26, v27, v28, v29, v30, v31, v311);
        *overridesCopy = v32 = 0;
LABEL_178:

        goto LABEL_179;
      }

      v33 = v311;
      if (diagnosticsEnabledCopy)
      {
        v396 = 0;
        v294 = WROverrideTelemetryEnablementForWorkflow(v311, &v396);
        v34 = v396;
        if (v294)
        {
          v312 = v34;
          bOOLValue = [v294 BOOLValue];
          v36 = __error();
          v37 = *v36;
          v38 = _wrlog(v36);
          v39 = os_log_type_enabled(v38, OS_LOG_TYPE_INFO);
          if (bOOLValue)
          {
            if (v39)
            {
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v311;
              _os_log_impl(&dword_2746E5000, v38, OS_LOG_TYPE_INFO, "%{public}@: overridden telemetry (enabled)", &buf, 0xCu);
            }

            *__error() = v37;
            v33 = v311;
LABEL_27:
            v43 = [v33 copy];
            v44 = v316[2];
            v316[2] = v43;

            *&buf = 0;
            *(&buf + 1) = &buf;
            v418 = 0x2020000000;
            v419 = 0;
            v392 = 0;
            v393 = &v392;
            v394 = 0x2020000000;
            v395 = 0;
            v45 = objc_alloc_init(MEMORY[0x277D55040]);
            v46 = v316[7];
            v316[7] = v45;

            v47 = objc_alloc_init(MEMORY[0x277D55040]);
            v48 = v316[8];
            v316[8] = v47;

            if (diagnosticsEnabledCopy)
            {

              v391 = 0;
              v49 = WROverrideForWorkflow(v311, &v391);
              v50 = v391;
              v312 = v50;
              if (!v49 && v50)
              {
                v51 = __error();
                v52 = *v51;
                v53 = _wrlog(v51);
                if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
                {
                  [WRWorkflow initWithPlist:telemetryEnabled:diagnosticsEnabled:checkForOverrides:error:];
                }

                v49 = 0;
                *__error() = v52;
              }
            }

            else
            {
              v49 = 0;
            }

            v54 = [v49 objectForKeyedSubscript:@"maximum_duration"];
            v55 = v54;
            if (!v54)
            {
              v55 = [v315 objectForKeyedSubscript:@"maximum_duration"];
            }

            [v55 doubleValue];
            v289 = v49;
            v316[9] = v56;
            if (!v54)
            {
            }

            if (diagnosticsEnabledCopy)
            {

              v390 = 0;
              v57 = WROverrideDiagnosticsEnablementForWorkflow(v311, &v390);
              v58 = v390;
              v312 = v58;
              if (v57)
              {
                enabledCopy = [v57 BOOLValue];
              }

              else if (v58)
              {
                v65 = __error();
                v66 = *v65;
                v67 = _wrlog(v65);
                if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
                {
                  [WRWorkflow initWithPlist:telemetryEnabled:diagnosticsEnabled:checkForOverrides:error:];
                }

                *__error() = v66;
              }
            }

            v68 = objc_opt_class();
            v69 = DictGetArrayOfClass(v315, @"diagnostics", v68, overridesCopy);
            v288 = v69;
            if (v69 || !*overridesCopy)
            {
              v70 = [WRDiagnostic diagnosticsForWorkflowName:v311 signpostName:0 diagnosticDicts:v69 diagnosticsEnabled:enabledCopy checkForOverrides:diagnosticsEnabledCopy error:overridesCopy];
              v71 = v316[6];
              v316[6] = v70;

              if (v316[6])
              {
                *(*(&buf + 1) + 24) = 1;
                v386 = 0u;
                v387 = 0u;
                v389 = 0u;
                v388 = 0u;
                v72 = v316[6];
                v73 = [v72 countByEnumeratingWithState:&v386 objects:v416 count:16];
                if (v73)
                {
                  v74 = *v387;
                  while (2)
                  {
                    for (i = 0; i != v73; ++i)
                    {
                      if (*v387 != v74)
                      {
                        objc_enumerationMutation(v72);
                      }

                      if ([*(*(&v386 + 1) + 8 * i) reportOmittingNetworkBoundIntervals])
                      {
                        v282 = 1;
                        goto LABEL_65;
                      }
                    }

                    v73 = [v72 countByEnumeratingWithState:&v386 objects:v416 count:16];
                    if (v73)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v282 = 0;
LABEL_65:

                v76 = overridesCopy;
LABEL_66:
                v77 = objc_opt_class();
                v84 = DictGetArrayOfClass(v315, @"signposts", v77, v76);
                v287 = v84;
                if (!v84)
                {
                  if (!*v76)
                  {
                    v32 = 0;
LABEL_175:

                    goto LABEL_176;
                  }

                  WRMakeError(7, @"No signposts in plist", v78, v79, v80, v81, v82, v83, v278);
                  *overridesCopy = v32 = 0;
LABEL_174:
                  v84 = v287;
                  goto LABEL_175;
                }

                v85 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v84, "count")}];
                v86 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
                v87 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
                v382 = 0;
                v383 = &v382;
                v384 = 0x2020000000;
                v385 = 0;
                v378 = 0;
                v379 = &v378;
                v380 = 0x2020000000;
                v381 = 0;
                v88 = objc_alloc_init(MEMORY[0x277CBEB58]);
                v365[0] = MEMORY[0x277D85DD0];
                v365[1] = 3221225472;
                v365[2] = __88__WRWorkflow_initWithPlist_telemetryEnabled_diagnosticsEnabled_checkForOverrides_error___block_invoke;
                v365[3] = &unk_279EE3730;
                v372 = &v382;
                v376 = enabledCopy;
                v377 = diagnosticsEnabledCopy;
                v292 = v311;
                v366 = v292;
                p_buf = &buf;
                v283 = v88;
                v367 = v283;
                v374 = &v378;
                v299 = v85;
                v368 = v299;
                v290 = v316;
                v369 = v290;
                v375 = &v392;
                v286 = v86;
                v370 = v286;
                v284 = v87;
                v371 = v284;
                v300 = MEMORY[0x277C5A9A0](v365);
                v363 = 0u;
                v364 = 0u;
                v361 = 0u;
                v362 = 0u;
                obj = v84;
                v89 = [obj countByEnumeratingWithState:&v361 objects:v415 count:16];
                if (!v89)
                {
                  goto LABEL_91;
                }

                v306 = *v362;
                do
                {
                  for (j = 0; j != v89; ++j)
                  {
                    if (*v362 != v306)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v91 = *(*(&v361 + 1) + 8 * j);
                    v92 = WRCheckForBadSignpostDict(v91);
                    *overridesCopy = v92;
                    if (v92)
                    {
                      goto LABEL_134;
                    }

                    v93 = [v91 objectForKeyedSubscript:@"name"];
                    if (diagnosticsEnabledCopy)
                    {
                      v360 = 0;
                      v94 = WROverrideForSignpost(v292, v93, &v360);
                      v95 = v360;
                      v96 = v95;
                      if (v94)
                      {
                        v97 = 1;
                      }

                      else
                      {
                        v97 = v95 == 0;
                      }

                      if (!v97)
                      {
                        v98 = __error();
                        v99 = *v98;
                        v100 = _wrlog(v98);
                        if (os_log_type_enabled(v100, OS_LOG_TYPE_FAULT))
                        {
                          *v409 = 138543874;
                          v410 = v292;
                          v411 = 2114;
                          v412 = v93;
                          v413 = 2112;
                          v414 = v96;
                          _os_log_fault_impl(&dword_2746E5000, v100, OS_LOG_TYPE_FAULT, "%{public}@: %{public}@: Invalid signpost override: %@", v409, 0x20u);
                        }

                        *__error() = v99;
                      }
                    }

                    else
                    {
                      v94 = 0;
                    }

                    v101 = (v300)[2](v300, v94, v91);
                    v102 = v101;
                    if (v101)
                    {
                      domain = [v101 domain];
                      if (![domain isEqualToString:@"WorkflowResponsivenessError"])
                      {

LABEL_133:
                        v132 = v102;
                        *overridesCopy = v102;

LABEL_134:
LABEL_135:
                        v32 = 0;
                        goto LABEL_173;
                      }

                      v104 = [v102 code] == 3;

                      if (!v104)
                      {
                        goto LABEL_133;
                      }

                      v105 = __error();
                      v106 = *v105;
                      v107 = _wrlog(v105);
                      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                      {
                        *v409 = 138543618;
                        v410 = v292;
                        v411 = 2114;
                        v412 = v93;
                        _os_log_impl(&dword_2746E5000, v107, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: signpost disabled", v409, 0x16u);
                      }

                      *__error() = v106;
                    }
                  }

                  v89 = [obj countByEnumeratingWithState:&v361 objects:v415 count:16];
                }

                while (v89);
LABEL_91:

                if (diagnosticsEnabledCopy)
                {

                  v359 = 0;
                  v108 = WROverrideNewSignpostsForWorkflow(v292, &v359);
                  v109 = v359;
                  v110 = v109;
                  if (v108)
                  {
                    v357 = 0u;
                    v358 = 0u;
                    v355 = 0u;
                    v356 = 0u;
                    obja = v108;
                    v111 = [obja countByEnumeratingWithState:&v355 objects:v408 count:16];
                    v281 = v108;
                    if (!v111)
                    {
                      goto LABEL_125;
                    }

                    v302 = *v356;
                    while (1)
                    {
                      v307 = v111;
                      for (k = 0; k != v307; ++k)
                      {
                        if (*v356 != v302)
                        {
                          objc_enumerationMutation(obja);
                        }

                        v113 = *(*(&v355 + 1) + 8 * k);
                        v114 = [v113 objectForKeyedSubscript:@"name"];
                        v313 = v110;
                        if (v114)
                        {
                          v353 = 0u;
                          v354 = 0u;
                          v351 = 0u;
                          v352 = 0u;
                          v115 = v299;
                          v116 = [v115 countByEnumeratingWithState:&v351 objects:v407 count:16];
                          if (!v116)
                          {

LABEL_112:
                            v125 = (v300)[2](v300, v113, 0);

                            if (!v125)
                            {
                              v313 = 0;
                              goto LABEL_123;
                            }

                            domain2 = [v125 domain];
                            if ([domain2 isEqualToString:@"WorkflowResponsivenessError"])
                            {
                              v127 = [v125 code] == 3;

                              if (v127)
                              {
                                v128 = __error();
                                v129 = *v128;
                                v130 = _wrlog(v128);
                                if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
                                {
                                  *v409 = 138543618;
                                  v410 = v292;
                                  v411 = 2114;
                                  v412 = v114;
                                  _os_log_impl(&dword_2746E5000, v130, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: new signpost disabled", v409, 0x16u);
                                }

LABEL_122:

                                *__error() = v129;
                                v313 = v125;
                                goto LABEL_123;
                              }
                            }

                            else
                            {
                            }

                            v131 = __error();
                            v129 = *v131;
                            v130 = _wrlog(v131);
                            if (os_log_type_enabled(v130, OS_LOG_TYPE_FAULT))
                            {
                              *v409 = 138543618;
                              v410 = v292;
                              v411 = 2112;
                              v412 = v125;
                              _os_log_fault_impl(&dword_2746E5000, v130, OS_LOG_TYPE_FAULT, "%{public}@: Invalid signpost override: %@", v409, 0x16u);
                            }

                            goto LABEL_122;
                          }

                          v117 = 0;
                          v118 = *v352;
                          do
                          {
                            for (m = 0; m != v116; ++m)
                            {
                              if (*v352 != v118)
                              {
                                objc_enumerationMutation(v115);
                              }

                              name = [*(*(&v351 + 1) + 8 * m) name];
                              v121 = [name isEqualToString:v114];

                              v117 |= v121;
                            }

                            v116 = [v115 countByEnumeratingWithState:&v351 objects:v407 count:16];
                          }

                          while (v116);

                          if ((v117 & 1) == 0)
                          {
                            goto LABEL_112;
                          }
                        }

                        else
                        {
                          v122 = __error();
                          v123 = *v122;
                          v124 = _wrlog(v122);
                          if (os_log_type_enabled(v124, OS_LOG_TYPE_FAULT))
                          {
                            *v409 = 138543618;
                            v410 = v292;
                            v411 = 2112;
                            v412 = v113;
                            _os_log_fault_impl(&dword_2746E5000, v124, OS_LOG_TYPE_FAULT, "%{public}@: Invalid new signpost with no name: %@", v409, 0x16u);
                          }

                          *__error() = v123;
                        }

LABEL_123:

                        v110 = v313;
                      }

                      v111 = [obja countByEnumeratingWithState:&v355 objects:v408 count:16];
                      if (!v111)
                      {
LABEL_125:
                        v312 = v110;

                        v108 = v281;
                        goto LABEL_141;
                      }
                    }
                  }

                  if (v109)
                  {
                    v312 = v109;
                    v133 = __error();
                    v134 = *v133;
                    v135 = _wrlog(v133);
                    if (os_log_type_enabled(v135, OS_LOG_TYPE_FAULT))
                    {
                      [WRWorkflow initWithPlist:telemetryEnabled:diagnosticsEnabled:checkForOverrides:error:];
                    }

                    *__error() = v134;
                  }

                  else
                  {
                    v312 = 0;
                  }

LABEL_141:
                }

                if (![v299 count])
                {
                  v157 = WRMakeError(7, @"No signposts in plist", v136, v137, v138, v139, v140, v141, v278);
                  goto LABEL_172;
                }

                if (![v286 count])
                {
                  v157 = WRMakeError(7, @"No start signpost in plist", v142, v143, v144, v145, v146, v147, v278);
                  goto LABEL_172;
                }

                if (![v284 count])
                {
                  v157 = WRMakeError(7, @"No end signpost in plist", v148, v149, v150, v151, v152, v153, v278);
                  goto LABEL_172;
                }

                v154 = _WRGetString(v289, v315, @"contextual_telemetry");
                v155 = v290[10];
                v290[10] = v154;

                v156 = v290[10];
                if (v156)
                {
                  if ([v156 isEqualToString:@"YES"])
                  {
                    *(v290 + 9) = 1;
                    goto LABEL_156;
                  }

                  if ([v290[10] isEqualToString:@"NO"])
                  {
LABEL_155:
                    *(v290 + 9) = 0;
LABEL_156:
                    if (*(v379 + 24) != 1)
                    {
                      if ([v299 count] < 2)
                      {
                        if ([v290 hasMaximumEventDuration])
                        {
                          firstObject = [v299 firstObject];
                          [firstObject name];

                          v179 = __error();
                          v180 = *v179;
                          v181 = _wrlog(v179);
                          if (os_log_type_enabled(v181, OS_LOG_TYPE_DEBUG))
                          {
                            name2 = [firstObject name];
                            [WRWorkflow initWithPlist:v292 telemetryEnabled:name2 diagnosticsEnabled:v409 checkForOverrides:v181 error:?];
                          }

                          *__error() = v180;
                          [(WRSignpost *)firstObject setEventIdentifierIsSignpostID:?];
                          *(v290 + 8) = 1;

                          goto LABEL_192;
                        }

                        v190 = __error();
                        v175 = *v190;
                        v176 = _wrlog(v190);
                        if (os_log_type_enabled(v176, OS_LOG_TYPE_DEBUG))
                        {
                          [WRWorkflow initWithPlist:telemetryEnabled:diagnosticsEnabled:checkForOverrides:error:];
                        }
                      }

                      else
                      {
                        v174 = __error();
                        v175 = *v174;
                        v176 = _wrlog(v174);
                        if (os_log_type_enabled(v176, OS_LOG_TYPE_DEBUG))
                        {
                          [WRWorkflow initWithPlist:telemetryEnabled:diagnosticsEnabled:checkForOverrides:error:];
                        }
                      }

                      *__error() = v175;
                      goto LABEL_192;
                    }

                    if ([v290 hasMaximumEventDuration])
                    {
                      v349 = 0u;
                      v350 = 0u;
                      v347 = 0u;
                      v348 = 0u;
                      v167 = v286;
                      v168 = [v167 countByEnumeratingWithState:&v347 objects:v406 count:16];
                      if (v168)
                      {
                        v169 = *v348;
                        while (2)
                        {
                          for (n = 0; n != v168; ++n)
                          {
                            if (*v348 != v169)
                            {
                              objc_enumerationMutation(v167);
                            }

                            v171 = *(*(&v347 + 1) + 8 * n);
                            eventIdentifierFieldName = [v171 eventIdentifierFieldName];
                            v173 = eventIdentifierFieldName == 0;

                            if (v173)
                            {
                              name3 = [v171 name];
                              *overridesCopy = WRMakeError(7, @"Workflow supports concurrent events, but start signpost %@ has no event identifier field name", v184, v185, v186, v187, v188, v189, name3);

                              goto LABEL_135;
                            }
                          }

                          v168 = [v167 countByEnumeratingWithState:&v347 objects:v406 count:16];
                          if (v168)
                          {
                            continue;
                          }

                          break;
                        }
                      }

                      *(v290 + 8) = 1;
LABEL_192:
                      [v299 sortUsingSelector:sel_compare_];
                      v191 = [v299 copy];
                      v192 = v290[5];
                      v290[5] = v191;

                      [v286 sortUsingSelector:sel_compare_];
                      v193 = [v286 copy];
                      v194 = v290[3];
                      v290[3] = v193;

                      v195 = objc_alloc_init(MEMORY[0x277CBEB18]);
                      v345[0] = MEMORY[0x277D85DD0];
                      v345[1] = 3221225472;
                      v345[2] = __88__WRWorkflow_initWithPlist_telemetryEnabled_diagnosticsEnabled_checkForOverrides_error___block_invoke_99;
                      v345[3] = &unk_279EE3758;
                      v196 = v195;
                      v346 = v196;
                      [v284 enumerateKeysAndObjectsUsingBlock:v345];
                      [v196 sortUsingComparator:&__block_literal_global_103];
                      v197 = [v196 copy];
                      v301 = v196;
                      v198 = v290[4];
                      v290[4] = v197;

                      v343 = 0u;
                      v344 = 0u;
                      v341 = 0u;
                      v342 = 0u;
                      v303 = v283;
                      v199 = [v303 countByEnumeratingWithState:&v341 objects:v405 count:16];
                      if (v199)
                      {
                        v308 = *v342;
                        do
                        {
                          v200 = v199;
                          for (ii = 0; ii != v200; ++ii)
                          {
                            if (*v342 != v308)
                            {
                              objc_enumerationMutation(v303);
                            }

                            v202 = *(*(&v341 + 1) + 8 * ii);
                            v339 = 0u;
                            v340 = 0u;
                            v337 = 0u;
                            v338 = 0u;
                            v203 = v290[5];
                            v204 = [v203 countByEnumeratingWithState:&v337 objects:v404 count:16];
                            if (v204)
                            {
                              v205 = *v338;
                              do
                              {
                                for (jj = 0; jj != v204; ++jj)
                                {
                                  if (*v338 != v205)
                                  {
                                    objc_enumerationMutation(v203);
                                  }

                                  v207 = *(*(&v337 + 1) + 8 * jj);
                                  individuationFieldName = [v207 individuationFieldName];
                                  v209 = [individuationFieldName isEqualToString:v202];

                                  if (v209)
                                  {
                                    v210 = v316[8];
                                    subsystem = [v207 subsystem];
                                    category = [v207 category];
                                    [v210 addSubsystem:subsystem category:category];
                                  }
                                }

                                v204 = [v203 countByEnumeratingWithState:&v337 objects:v404 count:16];
                              }

                              while (v204);
                            }
                          }

                          v199 = [v303 countByEnumeratingWithState:&v341 objects:v405 count:16];
                        }

                        while (v199);
                      }

                      v213 = v316;
                      if (v282)
                      {
LABEL_209:
                        v214 = v316[7];
                        goto LABEL_216;
                      }

                      if (*(*(&buf + 1) + 24) == 1)
                      {
                        if ((v393[3] & 1) == 0)
                        {
                          goto LABEL_209;
                        }
                      }

                      else
                      {
                        v214 = 0;
LABEL_216:
                        v221 = v316[8];
                        v316[8] = v214;

                        v213 = v316;
                      }

                      v335 = 0u;
                      v336 = 0u;
                      v333 = 0u;
                      v334 = 0u;
                      v304 = v213[6];
                      v222 = [v304 countByEnumeratingWithState:&v333 objects:v403 count:16];
                      if (v222)
                      {
                        v309 = *v334;
LABEL_219:
                        v223 = 0;
                        while (1)
                        {
                          if (*v334 != v309)
                          {
                            objc_enumerationMutation(v304);
                          }

                          v224 = *(*(&v333 + 1) + 8 * v223);
                          if ([v224 triggerEventTimeout] && (objc_msgSend(v290, "hasMaximumEventDuration") & 1) == 0)
                          {
                            name4 = [v224 name];
                            v271 = WRMakeError(8, @"Workflow diagnostic %@ has event timeout threshold, but workflow has no maximum duration", v265, v266, v267, v268, v269, v270, name4);
                            goto LABEL_269;
                          }

                          if ([v224 reportOmittingNetworkBoundIntervals] && (v383[3] & 1) == 0)
                          {
                            break;
                          }

                          reportOtherSignpostWithName = [v224 reportOtherSignpostWithName];

                          if (reportOtherSignpostWithName)
                          {
                            v331 = 0u;
                            v332 = 0u;
                            v329 = 0u;
                            v330 = 0u;
                            v226 = v290[5];
                            v227 = [v226 countByEnumeratingWithState:&v329 objects:v402 count:16];
                            if (v227)
                            {
                              v228 = *v330;
                              while (2)
                              {
                                for (kk = 0; kk != v227; ++kk)
                                {
                                  if (*v330 != v228)
                                  {
                                    objc_enumerationMutation(v226);
                                  }

                                  name5 = [*(*(&v329 + 1) + 8 * kk) name];
                                  reportOtherSignpostWithName2 = [v224 reportOtherSignpostWithName];
                                  v232 = [name5 isEqualToString:reportOtherSignpostWithName2];

                                  if (v232)
                                  {

                                    goto LABEL_237;
                                  }
                                }

                                v227 = [v226 countByEnumeratingWithState:&v329 objects:v402 count:16];
                                if (v227)
                                {
                                  continue;
                                }

                                break;
                              }
                            }

                            name4 = [v224 name];
                            reportOtherSignpostWithName3 = [v224 reportOtherSignpostWithName];
                            *overridesCopy = WRMakeError(8, @"Workflow diagnostic %@ reports signpost %@, but no such signpost exists", v251, v252, v253, v254, v255, v256, name4);

                            goto LABEL_270;
                          }

LABEL_237:
                          if (++v223 == v222)
                          {
                            v222 = [v304 countByEnumeratingWithState:&v333 objects:v403 count:16];
                            if (v222)
                            {
                              goto LABEL_219;
                            }

                            goto LABEL_239;
                          }
                        }

                        name4 = [v224 name];
                        v271 = WRMakeError(8, @"Workflow diagnostic %@ omits network-bound work, but no network-bound signposts", v272, v273, v274, v275, v276, v277, name4);
LABEL_269:
                        *overridesCopy = v271;
LABEL_270:

LABEL_271:
                        v32 = 0;
                        goto LABEL_272;
                      }

LABEL_239:

                      v327 = 0u;
                      v328 = 0u;
                      v325 = 0u;
                      v326 = 0u;
                      v233 = v290[5];
                      v234 = [v233 countByEnumeratingWithState:&v325 objects:v401 count:16];
                      if (v234)
                      {
                        v295 = *v326;
                        objb = v233;
                        do
                        {
                          v235 = 0;
                          v285 = v234;
                          do
                          {
                            if (*v326 != v295)
                            {
                              objc_enumerationMutation(v233);
                            }

                            v236 = *(*(&v325 + 1) + 8 * v235);
                            v321 = 0u;
                            v322 = 0u;
                            v323 = 0u;
                            v324 = 0u;
                            diagnostics = [v236 diagnostics];
                            v238 = [diagnostics countByEnumeratingWithState:&v321 objects:v400 count:16];
                            v293 = v236;
                            v291 = v235;
                            v305 = diagnostics;
                            if (v238)
                            {
                              v310 = *v322;
                              while (2)
                              {
                                v239 = 0;
                                do
                                {
                                  v240 = v238;
                                  if (*v322 != v310)
                                  {
                                    objc_enumerationMutation(v305);
                                  }

                                  v241 = *(*(&v321 + 1) + 8 * v239);
                                  reportOtherSignpostWithName4 = [v241 reportOtherSignpostWithName];

                                  if (reportOtherSignpostWithName4)
                                  {
                                    v319 = 0u;
                                    v320 = 0u;
                                    v317 = 0u;
                                    v318 = 0u;
                                    v243 = v290[5];
                                    v244 = [v243 countByEnumeratingWithState:&v317 objects:v399 count:16];
                                    if (v244)
                                    {
                                      v245 = *v318;
                                      while (2)
                                      {
                                        for (mm = 0; mm != v244; ++mm)
                                        {
                                          if (*v318 != v245)
                                          {
                                            objc_enumerationMutation(v243);
                                          }

                                          name6 = [*(*(&v317 + 1) + 8 * mm) name];
                                          reportOtherSignpostWithName5 = [v241 reportOtherSignpostWithName];
                                          v249 = [name6 isEqualToString:reportOtherSignpostWithName5];

                                          if (v249)
                                          {

                                            goto LABEL_260;
                                          }
                                        }

                                        v244 = [v243 countByEnumeratingWithState:&v317 objects:v399 count:16];
                                        if (v244)
                                        {
                                          continue;
                                        }

                                        break;
                                      }
                                    }

                                    name7 = [v293 name];
                                    name8 = [v241 name];
                                    reportOtherSignpostWithName6 = [v241 reportOtherSignpostWithName];
                                    *overridesCopy = WRMakeError(8, @"Signpost %@ diagnostic %@ reports other signpost %@, but no such signpost exists", v259, v260, v261, v262, v263, v264, name7);

                                    goto LABEL_271;
                                  }

LABEL_260:
                                  ++v239;
                                  v238 = v240;
                                }

                                while (v239 != v240);
                                v238 = [v305 countByEnumeratingWithState:&v321 objects:v400 count:16];
                                if (v238)
                                {
                                  continue;
                                }

                                break;
                              }
                            }

                            v235 = v291 + 1;
                            v233 = objb;
                          }

                          while (v291 + 1 != v285);
                          v233 = objb;
                          v234 = [objb countByEnumeratingWithState:&v325 objects:v401 count:16];
                        }

                        while (v234);
                      }

                      v32 = v290;
LABEL_272:

LABEL_173:
                      _Block_object_dispose(&v378, 8);
                      _Block_object_dispose(&v382, 8);

                      goto LABEL_174;
                    }

                    v157 = WRMakeError(7, @"Workflow supports concurrent events, but has no maximum_duration (required by concurrent events)", v161, v162, v163, v164, v165, v166, v278);
LABEL_172:
                    v32 = 0;
                    *overridesCopy = v157;
                    goto LABEL_173;
                  }

                  if ([v290[10] isEqualToString:@"seed"])
                  {
                    v158 = WRIsSeedBuild();
                    if (v158)
                    {
                      v160 = 1;
                      goto LABEL_153;
                    }
                  }

                  else
                  {
                    v158 = [v290[10] isEqualToString:@"internal"];
                    if (!v158)
                    {
                      v157 = WRMakeError(8, @"Workflow contextual telemetry value is invalid: %@", v215, v216, v217, v218, v219, v220, v290[10]);
                      goto LABEL_172;
                    }
                  }
                }

                else
                {
                  v158 = [v299 count];
                  if (v158 == 1)
                  {
                    goto LABEL_155;
                  }
                }

                v160 = WRIsAppleInternal(v158, v159);
LABEL_153:
                *(v290 + 9) = v160;
                goto LABEL_156;
              }

              v76 = overridesCopy;
              if (!*overridesCopy)
              {
                v282 = 0;
                goto LABEL_66;
              }
            }

            v32 = 0;
LABEL_176:

            _Block_object_dispose(&v392, 8);
            _Block_object_dispose(&buf, 8);

            goto LABEL_177;
          }

          if (v39)
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v311;
            _os_log_impl(&dword_2746E5000, v38, OS_LOG_TYPE_INFO, "%{public}@: overridden telemetry (disabled)", &buf, 0xCu);
          }

          *__error() = v37;
          *overridesCopy = WRMakeError(3, @"Workflow disabled by override", v59, v60, v61, v62, v63, v64, v278);

          goto LABEL_45;
        }

        if (v34)
        {
          v40 = __error();
          v41 = *v40;
          v42 = _wrlog(v40);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
          {
            [WRWorkflow initWithPlist:telemetryEnabled:diagnosticsEnabled:checkForOverrides:error:];
          }

          *__error() = v41;
        }

        v33 = v311;
      }

      else
      {
        v34 = 0;
      }

      v312 = v34;
      if (plist)
      {
        v294 = 0;
        goto LABEL_27;
      }

      [(WRWorkflow *)overridesCopy initWithPlist:v25 telemetryEnabled:v26 diagnosticsEnabled:v27 checkForOverrides:v28 error:v29, v30, v31];
LABEL_45:
      v32 = 0;
LABEL_177:

      goto LABEL_178;
    }
  }

  else
  {
    [(WRWorkflow *)overridesCopy initWithPlist:v11 telemetryEnabled:v12 diagnosticsEnabled:v13 checkForOverrides:v14 error:v15, v16, v17];
  }

  v32 = 0;
LABEL_179:

LABEL_180:
  return v32;
}

uint64_t __26__WRWorkflow_allWorkflows__block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = __error();
  v7 = *v6;
  v8 = _wrlog(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __26__WRWorkflow_allWorkflows__block_invoke_13_cold_1();
  }

  *__error() = v7;
  return 1;
}

+ (WRWorkflow)workflowWithName:(id)name
{
  v76 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v4 = +[WRWorkflow telemetryEnabled];
  v5 = +[WRWorkflow diagnosticsEnabled];
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __31__WRWorkflow_workflowWithName___block_invoke;
  v62[3] = &unk_279EE3708;
  v47 = nameCopy;
  v63 = v47;
  v64 = &v67;
  v45 = v5;
  v46 = v4;
  v65 = v4;
  v66 = v5;
  v6 = MEMORY[0x277C5A9A0](v62);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = +[WRWorkflow overridePlistDirectory];
  array = [MEMORY[0x277CBEA60] array];
  v10 = [defaultManager enumeratorAtURL:v8 includingPropertiesForKeys:array options:5 errorHandler:0];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v58 objects:v75 count:16];
  if (v12)
  {
    v13 = *v59;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v59 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = v6[2](v6, *(*(&v58 + 1) + 8 * i));
        if (v15 || (v68[3] & 1) != 0)
        {
          v20 = v11;
          goto LABEL_31;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v58 objects:v75 count:16];
    }

    while (v12);
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v17 = +[WRWorkflow plistDirectory];
  array2 = [MEMORY[0x277CBEA60] array];
  v19 = [defaultManager2 enumeratorAtURL:v17 includingPropertiesForKeys:array2 options:5 errorHandler:0];

  v57 = 0u;
  v55 = 0u;
  v56 = 0u;
  v54 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v54 objects:v74 count:16];
  if (v21)
  {
    v22 = *v55;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v55 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v15 = v6[2](v6, *(*(&v54 + 1) + 8 * j));
        if (v15 || (v68[3] & 1) != 0)
        {

          goto LABEL_31;
        }
      }

      v21 = [v20 countByEnumeratingWithState:&v54 objects:v74 count:16];
    }

    while (v21);
  }

  v53 = 0;
  v11 = WROverrideNewWorkflows(&v53);
  v24 = v53;
  v20 = v24;
  if (v11)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v11 = v11;
    v25 = [v11 countByEnumeratingWithState:&v49 objects:v73 count:16];
    if (!v25)
    {
      goto LABEL_28;
    }

    v26 = *v50;
LABEL_22:
    v27 = 0;
    while (1)
    {
      if (*v50 != v26)
      {
        objc_enumerationMutation(v11);
      }

      v28 = *(*(&v49 + 1) + 8 * v27);
      v29 = [v28 objectForKeyedSubscript:@"name"];
      v30 = [v29 isEqualToString:v47];

      if (v30)
      {
        break;
      }

      if (v25 == ++v27)
      {
        v25 = [v11 countByEnumeratingWithState:&v49 objects:v73 count:16];
        if (v25)
        {
          goto LABEL_22;
        }

LABEL_28:

        v15 = 0;
LABEL_31:

        goto LABEL_32;
      }
    }

    v48 = v20;
    v15 = [[WRWorkflow alloc] initWithPlist:v28 telemetryEnabled:v46 diagnosticsEnabled:v45 checkForOverrides:1 error:&v48];
    v32 = v48;

    if (v15)
    {
      v33 = v15;
LABEL_51:

      v20 = v32;
      goto LABEL_31;
    }

    domain = [v32 domain];
    if ([domain isEqualToString:@"WorkflowResponsivenessError"])
    {
      v38 = [v32 code] == 3;

      if (v38)
      {
        v39 = __error();
        v40 = *v39;
        v41 = _wrlog(v39);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v72 = v47;
          _os_log_impl(&dword_2746E5000, v41, OS_LOG_TYPE_INFO, "%{public}@: New workflow disabled", buf, 0xCu);
        }

        *__error() = v40;
        goto LABEL_51;
      }
    }

    else
    {
    }

    v42 = __error();
    v43 = *v42;
    v44 = _wrlog(v42);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      +[WRWorkflow workflowWithName:];
    }

    *__error() = v43;
    goto LABEL_51;
  }

  if (v24)
  {
    v34 = __error();
    v35 = *v34;
    v36 = _wrlog(v34);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      +[WRWorkflow allWorkflows];
    }

    v15 = 0;
    *__error() = v35;
    goto LABEL_31;
  }

  v15 = 0;
LABEL_32:

  _Block_object_dispose(&v67, 8);

  return v15;
}

id *__31__WRWorkflow_workflowWithName___block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 lastPathComponent];
  v5 = [v4 stringByDeletingPathExtension];

  if (v5)
  {
    if (![v5 isEqual:*(a1 + 32)])
    {
      v19 = 0;
      goto LABEL_33;
    }

    v36 = 0;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v3 error:&v36];
    v7 = v36;
    if (!v6)
    {
      v23 = WRIsDisabledWorkflow(v3);
      v24 = __error();
      v25 = *v24;
      v26 = _wrlog(v24);
      v27 = v26;
      if (v23)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v28 = *(a1 + 32);
          *buf = 138543362;
          v38 = v28;
          _os_log_impl(&dword_2746E5000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: Workflow disabled", buf, 0xCu);
        }

        v19 = 0;
        *__error() = v25;
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }

      else
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          v34 = *(a1 + 32);
          *buf = 138543874;
          v38 = v34;
          v39 = 2114;
          v40 = v3;
          v41 = 2114;
          v42 = v7;
          _os_log_fault_impl(&dword_2746E5000, v27, OS_LOG_TYPE_FAULT, "%{public}@: Unable to read in %{public}@: %{public}@", buf, 0x20u);
        }

        v19 = 0;
        *__error() = v25;
      }

      v12 = v7;
      goto LABEL_32;
    }

    v8 = [WRWorkflow alloc];
    v9 = *(a1 + 48);
    v10 = *(a1 + 49);
    v35 = v7;
    v11 = [(WRWorkflow *)v8 initWithPlist:v6 telemetryEnabled:v9 diagnosticsEnabled:v10 checkForOverrides:1 error:&v35];
    v12 = v35;

    if (v11)
    {
      v13 = [v11 name];
      v14 = [v13 isEqual:v5];

      [v11 name];
      v15 = __error();
      v16 = *v15;
      v17 = _wrlog(v15);
      v18 = v17;
      if (v14)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          __31__WRWorkflow_workflowWithName___block_invoke_cold_2();
        }

        *__error() = v16;
        v19 = v11;
        goto LABEL_31;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        __26__WRWorkflow_allWorkflows__block_invoke_cold_1();
      }

LABEL_30:

      v19 = 0;
      *__error() = v16;
LABEL_31:

LABEL_32:
      goto LABEL_33;
    }

    v29 = [v12 domain];
    if ([v29 isEqualToString:@"WorkflowResponsivenessError"])
    {
      v30 = [v12 code];

      if (v30 == 3)
      {
        v31 = __error();
        v16 = *v31;
        v18 = _wrlog(v31);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v38 = v5;
          _os_log_impl(&dword_2746E5000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Workflow disabled", buf, 0xCu);
        }

        goto LABEL_30;
      }
    }

    else
    {
    }

    v32 = __error();
    v16 = *v32;
    v18 = _wrlog(v32);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __26__WRWorkflow_allWorkflows__block_invoke_cold_3();
    }

    goto LABEL_30;
  }

  v20 = __error();
  v21 = *v20;
  v22 = _wrlog(v20);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    __26__WRWorkflow_allWorkflows__block_invoke_cold_4();
  }

  v19 = 0;
  *__error() = v21;
LABEL_33:

  return v19;
}

+ (WRWorkflow)workflowWithPlist:(id)plist checkForOverrides:(BOOL)overrides error:(id *)error
{
  overridesCopy = overrides;
  plistCopy = plist;
  lastPathComponent = [plistCopy lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  v11 = objc_alloc(MEMORY[0x277CBEAC0]);
  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:plistCopy];

  v13 = [v11 initWithContentsOfURL:v12 error:error];
  if (!v13)
  {
    v15 = 0;
    goto LABEL_8;
  }

  v14 = [(WRWorkflow *)[self alloc] initWithPlist:v13 telemetryEnabled:1 diagnosticsEnabled:1 checkForOverrides:overridesCopy error:error];
  v15 = v14;
  if (!v14)
  {
LABEL_8:
    error = 0;
    goto LABEL_9;
  }

  name = [v14 name];
  v17 = [name isEqual:stringByDeletingPathExtension];

  if (v17)
  {
    v15 = v15;
    error = v15;
    goto LABEL_9;
  }

  if (error)
  {
    name2 = [v15 name];
    *error = WRMakeError(8, @"Filename %@ doesn't match workflow name %@", v18, v19, v20, v21, v22, v23, stringByDeletingPathExtension);

    goto LABEL_8;
  }

LABEL_9:

  return error;
}

id __88__WRWorkflow_initWithPlist_telemetryEnabled_diagnosticsEnabled_checkForOverrides_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v122 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:0x288387F78];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 BOOLValue];

    if (v9)
    {
LABEL_3:
      v16 = WRMakeError(3, @"Signpost disabled", v10, v11, v12, v13, v14, v15, v100);
      goto LABEL_79;
    }
  }

  else
  {
    v17 = [v6 objectForKeyedSubscript:0x288387F78];
    v18 = [v17 BOOLValue];

    if (v18)
    {
      goto LABEL_3;
    }
  }

  v25 = _WRGetString(v5, v6, @"name");
  if (!v25)
  {
    WRMakeError(7, @"No name for signpost", v19, v20, v21, v22, v23, v24, v100);
    goto LABEL_9;
  }

  if (![WRWorkflowEventTracker isReservedSignpostName:v25])
  {
    v38 = _WRGetString(v5, v6, @"subsystem");
    if (!v38)
    {
      v16 = WRMakeError(7, @"No subsystem for signpost %@", v32, v33, v34, v35, v36, v37, v25);
LABEL_77:

      goto LABEL_78;
    }

    v45 = _WRGetString(v5, v6, @"category");
    if (!v45)
    {
      v16 = WRMakeError(7, @"No category for signpost %@", v39, v40, v41, v42, v43, v44, v25);
LABEL_76:

      goto LABEL_77;
    }

    v46 = [v5 objectForKeyedSubscript:@"start"];
    v47 = v46;
    if (v46)
    {
      v113 = [v46 BOOLValue];
    }

    else
    {
      v48 = [v6 objectForKeyedSubscript:@"start"];
      v113 = [v48 BOOLValue];
    }

    v49 = _WRGetString(v5, v6, @"end_group");
    if (v49)
    {
      v112 = 1;
    }

    else
    {
      v50 = [v5 objectForKeyedSubscript:@"end"];
      v51 = v50;
      if (v50)
      {
        v112 = [v50 BOOLValue];
      }

      else
      {
        v52 = [v6 objectForKeyedSubscript:@"end"];
        v112 = [v52 BOOLValue];
      }
    }

    v53 = [v5 objectForKeyedSubscript:@"network_bound"];
    if (v53)
    {
      v54 = v53;
      v55 = [v53 BOOLValue];

      if (v55)
      {
LABEL_25:
        v56 = 1;
        *(*(*(a1 + 80) + 8) + 24) = 1;
LABEL_28:
        v59 = objc_opt_class();
        v120 = 0;
        v60 = DictGetArrayOfClass(v6, @"diagnostics", v59, &v120);
        v61 = v120;
        v62 = v61;
        if (!v60 && v61)
        {
          v63 = v61;
          v16 = v63;
LABEL_75:

          goto LABEL_76;
        }

        v110 = v49;
        v111 = v45;
        v64 = *(a1 + 32);
        v65 = *(a1 + 112);
        v66 = *(a1 + 113);
        v119 = v61;
        v67 = [WRDiagnostic diagnosticsForWorkflowName:v64 signpostName:v25 diagnosticDicts:v60 diagnosticsEnabled:v65 checkForOverrides:v66 error:&v119];
        v68 = v119;

        v108 = v68;
        v109 = v67;
        if (v67)
        {
          *(*(*(a1 + 88) + 8) + 24) = 1;
        }

        else if (v68)
        {
          v63 = v68;
          v16 = v63;
          v49 = v110;
          v45 = v111;
          goto LABEL_75;
        }

        v69 = [v5 objectForKeyedSubscript:@"environment_field_names"];
        v70 = v69;
        if (!v69)
        {
          v70 = [v6 objectForKeyedSubscript:@"environment_field_names"];
        }

        v107 = [v70 sortedArrayUsingSelector:sel_compare_];
        if (!v69)
        {
        }

        v71 = _WRGetString(v5, v6, @"individuation_field_name");
        v78 = v71;
        v49 = v110;
        if (!v71 || ((v113 ^ 1) & 1) != 0)
        {
          if (v71 && ((v112 ^ 1) & 1) == 0)
          {
            [*(a1 + 40) addObject:v71];
          }

          v101 = v60;
          v80 = _WRGetString(v5, v6, @"event_identifier_field_name");
          if (v80)
          {
            *(*(*(a1 + 96) + 8) + 24) = 1;
          }

          v102 = _WRGetString(v5, v6, @"custom_environment_core_analytics_event_name");
          v103 = v80;
          LOBYTE(v100) = v56;
          v104 = v78;
          v105 = v38;
          v106 = [[WRSignpost alloc] initWithSubsystem:v38 category:v111 name:v25 eventIdentifierFieldName:v80 individuationFieldName:v78 environmentFieldNames:v107 networkBound:v100 customEnvironmentCoreAnalyticsEventName:v102 diagnostics:v109];
          v115 = 0u;
          v116 = 0u;
          v117 = 0u;
          v118 = 0u;
          v81 = *(a1 + 48);
          v82 = [v81 countByEnumeratingWithState:&v115 objects:v121 count:16];
          if (v82)
          {
            v83 = v82;
            v84 = *v116;
            obj = v81;
            while (2)
            {
              for (i = 0; i != v83; ++i)
              {
                if (*v116 != v84)
                {
                  objc_enumerationMutation(obj);
                }

                v86 = *(*(&v115 + 1) + 8 * i);
                v87 = [v86 name];
                v88 = [v87 isEqualToString:v25];

                if (v88)
                {
                  v89 = v106;
                  if ([v86 isEqual:v106])
                  {
                    v96 = @"Duplicate signpost dictionary for signpost %@";
                  }

                  else
                  {
                    v96 = @"Multiple signposts with name %@";
                  }

                  v16 = WRMakeError(8, v96, v90, v91, v92, v93, v94, v95, v25);
                  v38 = v105;
                  v49 = v110;
                  v45 = v111;
                  v60 = v101;
                  v63 = v108;
                  goto LABEL_72;
                }
              }

              v81 = obj;
              v83 = [obj countByEnumeratingWithState:&v115 objects:v121 count:16];
              if (v83)
              {
                continue;
              }

              break;
            }
          }

          [*(a1 + 48) addObject:v106];
          v45 = v111;
          [*(*(a1 + 56) + 56) addSubsystem:v105 category:v111];
          if (v113 & 1 | v112 & 1 | (v109 != 0))
          {
            [*(*(a1 + 56) + 64) addSubsystem:v105 category:v111];
          }

          else
          {
            *(*(*(a1 + 104) + 8) + 24) = 1;
          }

          v38 = v105;
          v49 = v110;
          v60 = v101;
          v63 = v108;
          v89 = v106;
          if (v113)
          {
            [*(a1 + 64) addObject:v106];
          }

          if (v112)
          {
            if (!v110)
            {
              v49 = @"NOGROUP";
            }

            v97 = [*(a1 + 72) objectForKeyedSubscript:v49];
            obj = v97;
            if (v97)
            {
              [v97 addObject:v106];
            }

            else
            {
              v98 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v106, 0}];
              [*(a1 + 72) setObject:v98 forKeyedSubscript:v49];

              v89 = v106;
            }

            v16 = 0;
LABEL_72:
          }

          else
          {
            v16 = 0;
          }

          v79 = v104;
        }

        else
        {
          v16 = WRMakeError(8, @"Start signposts cannot be individuated (%@) for signpost %@", v72, v73, v74, v75, v76, v77, v71);
          v79 = v78;
          v45 = v111;
          v63 = v108;
        }

        goto LABEL_75;
      }
    }

    else
    {
      v57 = [v6 objectForKeyedSubscript:@"network_bound"];
      v58 = [v57 BOOLValue];

      if (v58)
      {
        goto LABEL_25;
      }
    }

    v56 = 0;
    goto LABEL_28;
  }

  WRMakeError(8, @"Signpost name is reserved: %@", v26, v27, v28, v29, v30, v31, v25);
  v16 = LABEL_9:;
LABEL_78:

LABEL_79:

  return v16;
}

void __88__WRWorkflow_initWithPlist_telemetryEnabled_diagnosticsEnabled_checkForOverrides_error___block_invoke_99(uint64_t a1, __CFString *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2 == @"NOGROUP")
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(a1 + 32);
          v19 = *(*(&v15 + 1) + 8 * v12);
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
          [v13 addObject:v14];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [v5 sortedArrayUsingSelector:sel_compare_];
    [v7 addObject:v8];
  }
}

uint64_t __88__WRWorkflow_initWithPlist_telemetryEnabled_diagnosticsEnabled_checkForOverrides_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 >= [v5 count])
  {
    v8 = [v4 count];
    if (v8 <= [v5 count])
    {
      if ([v4 count])
      {
        v9 = 0;
        while (1)
        {
          v10 = [v4 objectAtIndexedSubscript:v9];
          v11 = [v5 objectAtIndexedSubscript:v9];
          v7 = [v10 compare:v11];

          if (v7)
          {
            break;
          }

          if (++v9 >= [v4 count])
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
LABEL_9:
        v7 = 0;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (id)encodedDict
{
  v84 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  name = [(WRWorkflow *)self name];
  v5 = [v3 initWithObjectsAndKeys:{name, @"name", 0}];

  if ([(WRWorkflow *)self hasMaximumEventDuration])
  {
    v6 = MEMORY[0x277CCABB0];
    [(WRWorkflow *)self maximumEventDuration];
    v7 = [v6 numberWithDouble:?];
    [v5 setObject:v7 forKeyedSubscript:@"maximum_duration"];
  }

  contextualTelemetryRawValue = [(WRWorkflow *)self contextualTelemetryRawValue];
  v57 = v5;
  [v5 setObject:contextualTelemetryRawValue forKeyedSubscript:0x288387E18];

  v9 = objc_alloc(MEMORY[0x277CBEB18]);
  allSignposts = [(WRWorkflow *)self allSignposts];
  v61 = [v9 initWithCapacity:{objc_msgSend(allSignposts, "count")}];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = [(WRWorkflow *)self allSignposts];
  v62 = [obj countByEnumeratingWithState:&v76 objects:v83 count:16];
  if (v62)
  {
    v59 = *v77;
    selfCopy = self;
    do
    {
      v11 = 0;
      do
      {
        if (*v77 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v63 = v11;
        v12 = *(*(&v76 + 1) + 8 * v11);
        v13 = objc_alloc(MEMORY[0x277CBEB38]);
        name2 = [v12 name];
        subsystem = [v12 subsystem];
        category = [v12 category];
        v17 = [v13 initWithObjectsAndKeys:{name2, @"name", subsystem, @"subsystem", category, @"category", 0}];

        startSignposts = [(WRWorkflow *)self startSignposts];
        v19 = [startSignposts indexOfObjectIdenticalTo:v12];

        if (v19 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v17 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"start"];
        }

        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        endSignpostGroups = [(WRWorkflow *)self endSignpostGroups];
        v21 = [endSignpostGroups countByEnumeratingWithState:&v72 objects:v82 count:16];
        if (v21)
        {
          v22 = v21;
          LODWORD(v23) = 0;
          v24 = *v73;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v73 != v24)
              {
                objc_enumerationMutation(endSignpostGroups);
              }

              v26 = *(*(&v72 + 1) + 8 * i);
              if ([v26 indexOfObjectIdenticalTo:v12] != 0x7FFFFFFFFFFFFFFFLL)
              {
                if ([v26 count] < 2)
                {
                  [v17 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"end"];
                }

                else
                {
                  v23 = (v23 + 1);
                  v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"group%d", v23];
                  [v17 setObject:v27 forKeyedSubscript:@"end_group"];
                }
              }
            }

            v22 = [endSignpostGroups countByEnumeratingWithState:&v72 objects:v82 count:16];
          }

          while (v22);
        }

        individuationFieldName = [v12 individuationFieldName];
        [v17 setObject:individuationFieldName forKeyedSubscript:@"individuation_field_name"];

        environmentFieldNames = [v12 environmentFieldNames];
        [v17 setObject:environmentFieldNames forKeyedSubscript:@"environment_field_names"];

        if ([v12 networkBound])
        {
          [v17 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"network_bound"];
        }

        diagnostics = [v12 diagnostics];
        v31 = [diagnostics count];

        if (v31)
        {
          v32 = objc_alloc(MEMORY[0x277CBEB18]);
          diagnostics2 = [v12 diagnostics];
          v34 = [v32 initWithCapacity:{objc_msgSend(diagnostics2, "count")}];

          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          diagnostics3 = [v12 diagnostics];
          v36 = [diagnostics3 countByEnumeratingWithState:&v68 objects:v81 count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v69;
            do
            {
              for (j = 0; j != v37; ++j)
              {
                if (*v69 != v38)
                {
                  objc_enumerationMutation(diagnostics3);
                }

                encodedDict = [*(*(&v68 + 1) + 8 * j) encodedDict];
                [v34 addObject:encodedDict];
              }

              v37 = [diagnostics3 countByEnumeratingWithState:&v68 objects:v81 count:16];
            }

            while (v37);
          }

          v41 = [v34 copy];
          [v17 setObject:v41 forKeyedSubscript:@"diagnostics"];
        }

        [v61 addObject:v17];

        v11 = v63 + 1;
        self = selfCopy;
      }

      while (v63 + 1 != v62);
      v62 = [obj countByEnumeratingWithState:&v76 objects:v83 count:16];
    }

    while (v62);
  }

  v42 = [v61 copy];
  [v57 setObject:v42 forKeyedSubscript:@"signposts"];

  workflowDiagnostics = [(WRWorkflow *)self workflowDiagnostics];
  v44 = [workflowDiagnostics count];

  if (v44)
  {
    v45 = objc_alloc(MEMORY[0x277CBEB18]);
    workflowDiagnostics2 = [(WRWorkflow *)self workflowDiagnostics];
    v47 = [v45 initWithCapacity:{objc_msgSend(workflowDiagnostics2, "count")}];

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    workflowDiagnostics3 = [(WRWorkflow *)self workflowDiagnostics];
    v49 = [workflowDiagnostics3 countByEnumeratingWithState:&v64 objects:v80 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v65;
      do
      {
        for (k = 0; k != v50; ++k)
        {
          if (*v65 != v51)
          {
            objc_enumerationMutation(workflowDiagnostics3);
          }

          encodedDict2 = [*(*(&v64 + 1) + 8 * k) encodedDict];
          [v47 addObject:encodedDict2];
        }

        v50 = [workflowDiagnostics3 countByEnumeratingWithState:&v64 objects:v80 count:16];
      }

      while (v50);
    }

    v54 = [v47 copy];
    [v57 setObject:v54 forKeyedSubscript:@"diagnostics"];
  }

  v55 = [v57 copy];

  return v55;
}

- (BOOL)hasChangesRelativeTo:(id)to
{
  toCopy = to;
  [(WRWorkflow *)self maximumEventDuration];
  v6 = v5;
  [toCopy maximumEventDuration];
  if (v6 != v7)
  {
    goto LABEL_36;
  }

  contextualTelemetryRawValue = [(WRWorkflow *)self contextualTelemetryRawValue];
  contextualTelemetryRawValue2 = [toCopy contextualTelemetryRawValue];
  if ((contextualTelemetryRawValue != 0) == (contextualTelemetryRawValue2 == 0))
  {
    goto LABEL_35;
  }

  contextualTelemetryRawValue3 = [(WRWorkflow *)self contextualTelemetryRawValue];
  if (!contextualTelemetryRawValue3)
  {
    goto LABEL_8;
  }

  v11 = contextualTelemetryRawValue3;
  contextualTelemetryRawValue4 = [toCopy contextualTelemetryRawValue];
  if (!contextualTelemetryRawValue4)
  {

LABEL_8:
    goto LABEL_9;
  }

  v13 = contextualTelemetryRawValue4;
  contextualTelemetryRawValue5 = [(WRWorkflow *)self contextualTelemetryRawValue];
  contextualTelemetryRawValue6 = [toCopy contextualTelemetryRawValue];
  v16 = [contextualTelemetryRawValue5 isEqualToString:contextualTelemetryRawValue6];

  if ((v16 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_9:
  workflowDiagnostics = [(WRWorkflow *)self workflowDiagnostics];
  v18 = [workflowDiagnostics count];
  workflowDiagnostics2 = [toCopy workflowDiagnostics];
  v20 = [workflowDiagnostics2 count];

  if (v18 == v20)
  {
    workflowDiagnostics3 = [(WRWorkflow *)self workflowDiagnostics];
    v22 = [workflowDiagnostics3 count];

    if (v22)
    {
      v23 = 0;
      do
      {
        workflowDiagnostics4 = [(WRWorkflow *)self workflowDiagnostics];
        v25 = [workflowDiagnostics4 objectAtIndexedSubscript:v23];

        workflowDiagnostics5 = [toCopy workflowDiagnostics];
        v27 = [workflowDiagnostics5 objectAtIndexedSubscript:v23];

        LOBYTE(workflowDiagnostics5) = [v25 isEqual:v27];
        if ((workflowDiagnostics5 & 1) == 0)
        {
          goto LABEL_36;
        }

        ++v23;
        workflowDiagnostics6 = [(WRWorkflow *)self workflowDiagnostics];
        v29 = [workflowDiagnostics6 count];
      }

      while (v23 < v29);
    }

    allSignposts = [(WRWorkflow *)self allSignposts];
    v31 = [allSignposts count];
    allSignposts2 = [toCopy allSignposts];
    v33 = [allSignposts2 count];

    if (v31 == v33)
    {
      allSignposts3 = [(WRWorkflow *)self allSignposts];
      v35 = [allSignposts3 count];

      if (v35)
      {
        v36 = 0;
        while (1)
        {
          allSignposts4 = [(WRWorkflow *)self allSignposts];
          contextualTelemetryRawValue = [allSignposts4 objectAtIndexedSubscript:v36];

          allSignposts5 = [toCopy allSignposts];
          contextualTelemetryRawValue2 = [allSignposts5 objectAtIndexedSubscript:v36];

          if (![contextualTelemetryRawValue isEqual:contextualTelemetryRawValue2] || (-[WRSignpost hasChangesRelativeTo:](contextualTelemetryRawValue, contextualTelemetryRawValue2) & 1) != 0)
          {
            break;
          }

          ++v36;
          allSignposts6 = [(WRWorkflow *)self allSignposts];
          v40 = [allSignposts6 count];

          if (v36 >= v40)
          {
            goto LABEL_20;
          }
        }

LABEL_35:

        goto LABEL_36;
      }

LABEL_20:
      startSignposts = [(WRWorkflow *)self startSignposts];
      v42 = [startSignposts count];
      startSignposts2 = [toCopy startSignposts];
      v44 = [startSignposts2 count];

      if (v42 == v44)
      {
        startSignposts3 = [(WRWorkflow *)self startSignposts];
        v46 = [startSignposts3 count];

        if (v46)
        {
          v47 = 0;
          do
          {
            startSignposts4 = [(WRWorkflow *)self startSignposts];
            v49 = [startSignposts4 objectAtIndexedSubscript:v47];

            startSignposts5 = [toCopy startSignposts];
            v51 = [startSignposts5 objectAtIndexedSubscript:v47];

            LOBYTE(startSignposts5) = [v49 isEqual:v51];
            if ((startSignposts5 & 1) == 0)
            {
              goto LABEL_36;
            }

            ++v47;
            startSignposts6 = [(WRWorkflow *)self startSignposts];
            v53 = [startSignposts6 count];
          }

          while (v47 < v53);
        }

        endSignpostGroups = [(WRWorkflow *)self endSignpostGroups];
        v55 = [endSignpostGroups count];
        endSignpostGroups2 = [toCopy endSignpostGroups];
        v57 = [endSignpostGroups2 count];

        if (v55 == v57)
        {
          endSignpostGroups3 = [(WRWorkflow *)self endSignpostGroups];
          v59 = [endSignpostGroups3 count];

          if (!v59)
          {
            v70 = 0;
            goto LABEL_37;
          }

          v60 = 0;
          while (1)
          {
            endSignpostGroups4 = [(WRWorkflow *)self endSignpostGroups];
            contextualTelemetryRawValue = [endSignpostGroups4 objectAtIndexedSubscript:v60];

            endSignpostGroups5 = [toCopy endSignpostGroups];
            contextualTelemetryRawValue2 = [endSignpostGroups5 objectAtIndexedSubscript:v60];

            v63 = [contextualTelemetryRawValue count];
            if (v63 != [contextualTelemetryRawValue2 count])
            {
              goto LABEL_35;
            }

            if ([contextualTelemetryRawValue count])
            {
              v64 = 0;
              do
              {
                v65 = [contextualTelemetryRawValue objectAtIndexedSubscript:v64];
                v66 = [contextualTelemetryRawValue2 objectAtIndexedSubscript:v64];
                v67 = [v65 isEqual:v66];

                if ((v67 & 1) == 0)
                {
                  goto LABEL_35;
                }
              }

              while (++v64 < [contextualTelemetryRawValue count]);
            }

            ++v60;
            endSignpostGroups6 = [(WRWorkflow *)self endSignpostGroups];
            v69 = [endSignpostGroups6 count];

            v70 = 0;
            if (v60 >= v69)
            {
              goto LABEL_37;
            }
          }
        }
      }
    }
  }

LABEL_36:
  v70 = 1;
LABEL_37:

  return v70;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      name = [(WRWorkflow *)self name];
      name2 = [(WRWorkflow *)v5 name];

      v8 = [name isEqual:name2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  name = [(WRWorkflow *)self name];
  v3 = [name hash];

  return v3;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  name = [(WRWorkflow *)self name];
  name2 = [compareCopy name];

  v7 = [name compare:name2];
  return v7;
}

- (id)debugDescription
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ (%lu signposts)", self->_name, -[NSArray count](self->_allSignposts, "count")];

  return v2;
}

- (double)overallDiagnosticThresholdIntervalSeconds
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  workflowDiagnostics = [(WRWorkflow *)self workflowDiagnostics];
  v3 = [workflowDiagnostics countByEnumeratingWithState:&v11 objects:v15 count:16];
  v4 = 0.0;
  if (v3)
  {
    v5 = v3;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(workflowDiagnostics);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 hasTriggerThresholdDurationSingle])
        {
          [v8 triggerThresholdDurationSingle];
          v4 = v9;
          goto LABEL_11;
        }
      }

      v5 = [workflowDiagnostics countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)hasOverallDiagnosticThresholdInterval
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  workflowDiagnostics = [(WRWorkflow *)self workflowDiagnostics];
  v3 = [workflowDiagnostics countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(workflowDiagnostics);
        }

        if ([*(*(&v7 + 1) + 8 * i) hasTriggerThresholdDurationSingle])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [workflowDiagnostics countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)wrsignpostWithName:(uint64_t)name
{
  v3 = a2;
  if (name)
  {
    allSignposts = [OUTLINED_FUNCTION_13_0() allSignposts];
    OUTLINED_FUNCTION_76();
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(allSignposts);
          }

          v9 = *(v13 + 8 * i);
          name = [v9 name];
          v11 = [name isEqualToString:v3];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        OUTLINED_FUNCTION_76();
        v6 = [allSignposts countByEnumeratingWithState:? objects:? count:?];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)wrsignpostForSignpostObject:(uint64_t)object
{
  v3 = a2;
  if (object)
  {
    allSignposts = [OUTLINED_FUNCTION_13_0() allSignposts];
    OUTLINED_FUNCTION_76();
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(allSignposts);
          }

          v9 = *(v11 + 8 * i);
          if (([(WRSignpost *)v9 matchesSignpost:v3]& 1) != 0)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        OUTLINED_FUNCTION_76();
        v6 = [allSignposts countByEnumeratingWithState:? objects:? count:?];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)diagnosticsEnabled
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)plistDirectory
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)allWorkflows
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_12_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __26__WRWorkflow_allWorkflows__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14();
  v1 = [v0 name];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_15_0(&dword_2746E5000, v2, v3, "%{public}@: workflow name doesn't match plist filename %{public}@", v4, v5, v6, v7);
}

void __26__WRWorkflow_allWorkflows__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_14();
  v1 = [v0 name];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __26__WRWorkflow_allWorkflows__block_invoke_cold_4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)initWithPlist:telemetryEnabled:diagnosticsEnabled:checkForOverrides:error:.cold.5()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_12_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)initWithPlist:(uint8_t *)buf telemetryEnabled:(os_log_t)log diagnosticsEnabled:checkForOverrides:error:.cold.6(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_2746E5000, log, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@: Inferring support of concurrent events", buf, 0x16u);
}

- (void)initWithPlist:telemetryEnabled:diagnosticsEnabled:checkForOverrides:error:.cold.7()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_12_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (id)initWithPlist:(uint64_t)a3 telemetryEnabled:(uint64_t)a4 diagnosticsEnabled:(uint64_t)a5 checkForOverrides:(uint64_t)a6 error:(uint64_t)a7 .cold.8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = WRMakeError(3, @"Workflow disabled", a3, a4, a5, a6, a7, a8, v10);
  *a1 = result;
  return result;
}

- (id)initWithPlist:(uint64_t)a3 telemetryEnabled:(uint64_t)a4 diagnosticsEnabled:(uint64_t)a5 checkForOverrides:(uint64_t)a6 error:(uint64_t)a7 .cold.9(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = WRMakeError(7, @"No workflow name in workflow plist", a3, a4, a5, a6, a7, a8, v10);
  *a1 = result;
  return result;
}

- (id)initWithPlist:(uint64_t)a3 telemetryEnabled:(uint64_t)a4 diagnosticsEnabled:(uint64_t)a5 checkForOverrides:(uint64_t)a6 error:(uint64_t)a7 .cold.10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = WRMakeError(2, @"Unable to init", a3, a4, a5, a6, a7, a8, v10);
  *a1 = result;
  return result;
}

void __31__WRWorkflow_workflowWithName___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_14();
  v1 = [v0 name];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end