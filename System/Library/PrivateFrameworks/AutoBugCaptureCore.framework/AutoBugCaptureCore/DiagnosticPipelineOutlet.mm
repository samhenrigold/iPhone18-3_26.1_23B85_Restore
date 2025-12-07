@interface DiagnosticPipelineOutlet
- (BOOL)logRequiresUploadConsent:(id)consent;
- (BOOL)publishReportForCase:(id)case options:(id)options;
- (id)caseSignatureFieldFromCase:(uint64_t)case;
- (id)contextDictionaryFromCase:(uint64_t)case;
- (id)issueDescriptionFromCase:(uint64_t)case;
- (uint64_t)shouldPublishReportForCase:(uint64_t)case;
@end

@implementation DiagnosticPipelineOutlet

void __57__DiagnosticPipelineOutlet_publishReportForCase_options___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEBC0];
  v7 = a2;
  v8 = [[v6 alloc] initWithString:v7];

  v9 = [*(a1 + 32) logRequiresUploadConsent:v8];
  v10 = objc_alloc(MEMORY[0x277D051F0]);
  v11 = [v8 path];
  v12 = *(a1 + 56);
  v23 = 0;
  v13 = [v10 initWithPath:v11 transferOwnership:v12 errorOut:&v23];
  v14 = v23;

  if (v14 || !v13)
  {
    v16 = casemanagementLogHandle(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [v8 path];
      *buf = 138412546;
      v25 = v17;
      v26 = 2112;
      v27 = v14;
      v18 = " Failed to create DRClientLog object representing %@: %@";
      v19 = v16;
      v20 = 22;
      goto LABEL_8;
    }
  }

  else
  {
    if (!v9)
    {
      [*(*(*(a1 + 48) + 8) + 40) addObject:v13];
      goto LABEL_11;
    }

    v16 = casemanagementLogHandle(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [v8 path];
      *buf = 138412290;
      v25 = v17;
      v18 = " Log file at %@ is privacy sensitive and requires user consent for automatic upload";
      v19 = v16;
      v20 = 12;
LABEL_8:
      _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v21 = *(*(a1 + 48) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = 0;

  *a4 = 1;
LABEL_11:
}

- (BOOL)logRequiresUploadConsent:(id)consent
{
  lastPathComponent = [consent lastPathComponent];
  v4 = +[ABCAdministrator sharedInstance];
  configurationManager = [v4 configurationManager];
  autoBugCaptureUploadPreapproved = [configurationManager autoBugCaptureUploadPreapproved];

  if (autoBugCaptureUploadPreapproved)
  {
    v7 = 0;
  }

  else
  {
    v7 = [lastPathComponent hasSuffix:@".pcapng"];
  }

  return v7;
}

- (id)contextDictionaryFromCase:(uint64_t)case
{
  v3 = a2;
  if (case)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    caseId = [v3 caseId];
    uUIDString = [caseId UUIDString];
    OUTLINED_FUNCTION_3_0();

    caseGroupId = [v3 caseGroupId];
    OUTLINED_FUNCTION_2_0();

    caseDomain = [v3 caseDomain];
    OUTLINED_FUNCTION_2_0();

    caseType = [v3 caseType];
    OUTLINED_FUNCTION_2_0();

    caseSubType = [v3 caseSubType];
    OUTLINED_FUNCTION_2_0();

    caseSubTypeContext = [v3 caseSubTypeContext];
    OUTLINED_FUNCTION_2_0();

    caseDetectedProcess = [v3 caseDetectedProcess];
    OUTLINED_FUNCTION_2_0();

    v13 = MEMORY[0x277CCABB0];
    [v3 caseOpenedTime];
    v14 = [v13 numberWithDouble:?];
    OUTLINED_FUNCTION_2_0();

    v15 = [(DiagnosticPipelineOutlet *)case caseSignatureFieldFromCase:v3];
    [v4 setObject:v15 forKeyedSubscript:@"caseSignature"];

    v16 = +[SystemProperties sharedInstance];
    buildVariant = [v3 buildVariant];
    if (buildVariant)
    {
      OUTLINED_FUNCTION_2_0();
    }

    else
    {
      buildVariant2 = [v16 buildVariant];
      OUTLINED_FUNCTION_3_0();
    }

    buildVersion = [v3 buildVersion];
    if (buildVersion)
    {
      OUTLINED_FUNCTION_2_0();
    }

    else
    {
      buildVersion2 = [v16 buildVersion];
      OUTLINED_FUNCTION_3_0();
    }

    v21 = +[ABCAdministrator sharedInstance];
    configurationManager = [v21 configurationManager];

    v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(configurationManager, "hasAppleEmail")}];
    OUTLINED_FUNCTION_3_0();

    v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(configurationManager, "isCarryDevice")}];
    OUTLINED_FUNCTION_3_0();

    basebandChipset = [v3 basebandChipset];
    v26 = basebandChipset;
    if (basebandChipset)
    {
      basebandChipset2 = basebandChipset;
    }

    else
    {
      basebandChipset2 = [v16 basebandChipset];
    }

    v28 = basebandChipset2;

    if ([v28 length])
    {
      OUTLINED_FUNCTION_3_0();
    }

    basebandFirmwareVersion = [v3 basebandFirmwareVersion];
    v30 = basebandFirmwareVersion;
    if (basebandFirmwareVersion)
    {
      basebandFirmwareVersion2 = basebandFirmwareVersion;
    }

    else
    {
      basebandFirmwareVersion2 = [v16 basebandFirmwareVersion];
    }

    v32 = basebandFirmwareVersion2;

    if ([v32 length])
    {
      [v4 setObject:v32 forKeyedSubscript:@"basebandFirmwareVersion"];
    }

    regulatoryDomainCountry = [v3 regulatoryDomainCountry];
    if ([regulatoryDomainCountry length])
    {
      [v4 setObject:regulatoryDomainCountry forKeyedSubscript:@"regulatoryDomainCountry"];
    }

    homeCarrier = [v3 homeCarrier];
    if ([homeCarrier length])
    {
      [v4 setObject:homeCarrier forKeyedSubscript:@"homeCarrier"];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)caseSignatureFieldFromCase:(uint64_t)case
{
  if (case)
  {
    v2 = MEMORY[0x277CBEB18];
    v3 = a2;
    v4 = objc_alloc_init(v2);
    caseDomain = [v3 caseDomain];
    v6 = caseDomain;
    if (caseDomain)
    {
      v7 = caseDomain;
    }

    else
    {
      v7 = &stru_285368168;
    }

    [v4 addObject:v7];

    caseType = [v3 caseType];
    OUTLINED_FUNCTION_1_1(caseType);

    caseSubType = [v3 caseSubType];
    OUTLINED_FUNCTION_1_1(caseSubType);

    caseSubTypeContext = [v3 caseSubTypeContext];
    OUTLINED_FUNCTION_1_1(caseSubTypeContext);

    caseDetectedProcess = [v3 caseDetectedProcess];

    if (caseDetectedProcess)
    {
      v12 = caseDetectedProcess;
    }

    else
    {
      v12 = &stru_285368168;
    }

    [v4 addObject:v12];

    v13 = [v4 componentsJoinedByString:@"^"];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)issueDescriptionFromCase:(uint64_t)case
{
  if (case)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = a2;
    v4 = [v2 alloc];
    caseDomain = [v3 caseDomain];
    caseType = [v3 caseType];
    caseSubType = [v3 caseSubType];

    v8 = [v4 initWithFormat:@"AutoBugCapture case for %@, type:%@ subtype:%@", caseDomain, caseType, caseSubType];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)shouldPublishReportForCase:(uint64_t)case
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!case)
  {
    v15 = 0;
    goto LABEL_13;
  }

  v4 = +[ABCAdministrator sharedInstance];
  configurationManager = [v4 configurationManager];

  submitToDiagnosticPipeline = [configurationManager submitToDiagnosticPipeline];
  if (!submitToDiagnosticPipeline)
  {
    v8 = casemanagementLogHandle(submitToDiagnosticPipeline);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    LOWORD(v39) = 0;
LABEL_8:
    OUTLINED_FUNCTION_0_2();
    goto LABEL_9;
  }

  dampeningType = [v3 dampeningType];
  if (!dampeningType)
  {
    attachments = [v3 attachments];
    v18 = [attachments count];

    if (v18)
    {
      diagnosticPipelineSubmissionRate = [configurationManager diagnosticPipelineSubmissionRate];
      v22 = (v21 * 100.0);
      if (v22 > 0x63)
      {
        v8 = casemanagementLogHandle(diagnosticPipelineSubmissionRate);
        v15 = 1;
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          goto LABEL_12;
        }

        LOWORD(v39) = 0;
        OUTLINED_FUNCTION_0_2();
        v38 = 2;
      }

      else
      {
        v23 = arc4random_uniform(0x64u);
        v24 = v23;
        v25 = casemanagementLogHandle(v23);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v39 = 67109376;
          v40 = 100;
          v41 = 1024;
          v42 = v22;
          OUTLINED_FUNCTION_0_2();
          _os_log_impl(v26, v27, v28, v29, v30, 0xEu);
        }

        v32 = casemanagementLogHandle(v31);
        v8 = v32;
        if (v24 >= v22)
        {
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_11;
          }

          v39 = 67109632;
          v40 = 100;
          v41 = 1024;
          v42 = v22;
          v43 = 1024;
          v44 = v24;
          v9 = &dword_241804000;
          v10 = "Failed to pass probability check (%u to %u against). Will not submit this case to DiagnosticPipeline. [%d]";
          v11 = &v39;
          v12 = v8;
          v13 = OS_LOG_TYPE_DEFAULT;
          v14 = 20;
          goto LABEL_10;
        }

        v15 = 1;
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          goto LABEL_12;
        }

        v39 = 67109120;
        v40 = v24;
        OUTLINED_FUNCTION_0_2();
        v38 = 8;
      }

      _os_log_impl(v33, v34, v35, v36, v37, v38);
      goto LABEL_12;
    }

    v8 = casemanagementLogHandle(v19);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    LOWORD(v39) = 0;
    goto LABEL_8;
  }

  v8 = casemanagementLogHandle(dampeningType);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v39) = 0;
    v9 = &dword_241804000;
    v10 = "Dampened cases will not be submitted to DP";
    v11 = &v39;
    v12 = v8;
    v13 = OS_LOG_TYPE_DEBUG;
LABEL_9:
    v14 = 2;
LABEL_10:
    _os_log_impl(v9, v12, v13, v10, v11, v14);
  }

LABEL_11:
  v15 = 0;
LABEL_12:

LABEL_13:
  return v15;
}

- (BOOL)publishReportForCase:(id)case options:(id)options
{
  v50 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  optionsCopy = options;
  v8 = [(DiagnosticPipelineOutlet *)self shouldPublishReportForCase:caseCopy];
  if (v8)
  {
    caseDomain = [caseCopy caseDomain];
    v10 = [(DiagnosticPipelineOutlet *)self issueDescriptionFromCase:caseCopy];
    v11 = [(DiagnosticPipelineOutlet *)self contextDictionaryFromCase:caseCopy];
    v12 = +[ABCAdministrator sharedInstance];
    configurationManager = [v12 configurationManager];
    cloudKitEnabled = [configurationManager cloudKitEnabled];

    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 1;
    *buf = 0;
    v37 = buf;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__1;
    v40 = __Block_byref_object_dispose__1;
    v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
    attachments = [caseCopy attachments];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __57__DiagnosticPipelineOutlet_publishReportForCase_options___block_invoke;
    v34[3] = &unk_278CF0C18;
    v35 = cloudKitEnabled ^ 1;
    v34[4] = self;
    v34[5] = &v42;
    v34[6] = buf;
    [attachments enumerateObjectsUsingBlock:v34];

    if (*(v43 + 24) == 1)
    {
      v17 = casemanagementLogHandle(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        caseId = [caseCopy caseId];
        uUIDString = [caseId UUIDString];
        *v46 = 138543362;
        v47 = uUIDString;
        OUTLINED_FUNCTION_4_0(&dword_241804000, v20, v21, "Submitting case id %{public}@ to DiagnosticPipeline");
      }

      v22 = DRSubmitLogs();
      v23 = 0;
      v24 = v23;
      if (v22)
      {
        v25 = 1;
      }

      else
      {
        v32 = casemanagementLogHandle(v23);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *v46 = 138412546;
          v47 = v24;
          v48 = 2112;
          v49 = caseCopy;
          _os_log_impl(&dword_241804000, v32, OS_LOG_TYPE_DEFAULT, "Error occurred when submitting case to DiagnosticPipeline: %@ (case: %@)", v46, 0x16u);
        }

        v25 = 4;
      }

      [caseCopy setDPSubmissionState:v25];
    }

    else
    {
      v27 = casemanagementLogHandle(v16);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        caseId2 = [caseCopy caseId];
        uUIDString2 = [caseId2 UUIDString];
        *v46 = 138543362;
        v47 = uUIDString2;
        OUTLINED_FUNCTION_4_0(&dword_241804000, v30, v31, "Skipping submission of case id %{public}@ to DiagnosticPipeline due to preflight errors");
      }

      [caseCopy setDPSubmissionState:3];
      v22 = 0;
    }

    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v42, 8);
  }

  else
  {
    v26 = casemanagementLogHandle(v8);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_DEFAULT, "Case not eligible for submission to DiagnosticPipeline", buf, 2u);
    }

    [caseCopy setDPSubmissionState:2];
    v22 = 0;
  }

  return v22;
}

@end