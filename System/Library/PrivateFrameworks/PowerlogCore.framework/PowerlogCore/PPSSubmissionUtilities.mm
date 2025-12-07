@interface PPSSubmissionUtilities
+ (BOOL)submit:(id)submit;
+ (id)taskingTables;
@end

@implementation PPSSubmissionUtilities

+ (BOOL)submit:(id)submit
{
  v30 = *MEMORY[0x1E69E9840];
  submitCopy = submit;
  if ([submitCopy isValid])
  {
    issueCategory = [submitCopy issueCategory];
    issueDescription = [submitCopy issueDescription];
    fileType = [submitCopy fileType];
    filePath = [submitCopy filePath];
    path = [filePath path];
    targetContainer = [submitCopy targetContainer];
    recordType = [submitCopy recordType];
    [submitCopy contextDictionary];
    v21 = v23 = 0;
    v11 = DRSubmitLogToCKContainer();
    v22 = 0;

    v13 = PLLogSubmission(v12);
    v14 = v13;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        issueCategory2 = [submitCopy issueCategory];
        *buf = 138412802;
        v25 = @"com.apple.perfpowerservices";
        v26 = 2112;
        v27 = issueCategory2;
        v28 = 2112;
        v29 = submitCopy;
        _os_log_impl(&dword_1D8611000, v14, OS_LOG_TYPE_INFO, "Submitted record for '%@:%@'  to DiagnosticPipeline: %@", buf, 0x20u);
      }

      if (![submitCopy isExpedited])
      {
        v19 = 1;
LABEL_19:

        goto LABEL_20;
      }

      v16 = _DRCTriggerCloudKitWork();
      v14 = 0;
      v17 = PLLogSubmission(v14);
      v18 = v17;
      if (v16)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1D8611000, v18, OS_LOG_TYPE_INFO, "Successfully triggered DiagnosticPipeline upload session", buf, 2u);
        }

        v19 = 1;
        goto LABEL_18;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(PPSSubmissionUtilities *)v14 submit:v18];
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(PPSSubmissionUtilities *)submitCopy submit:v14];
    }

    v19 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v19 = 0;
LABEL_20:

  return v19;
}

+ (id)taskingTables
{
  if (!+[PLDefaults taskMode])
  {
    goto LABEL_5;
  }

  if (taskingTables_onceToken != -1)
  {
    +[PPSSubmissionUtilities taskingTables];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v2 = 0;
  }

  else
  {
LABEL_5:
    v2 = taskingTables_result;
  }

  return v2;
}

void __39__PPSSubmissionUtilities_taskingTables__block_invoke()
{
  v0 = [PLDefaults objectForKey:@"PPSTaskingTables" ifNotSet:0];
  v1 = taskingTables_result;
  taskingTables_result = v0;

  v2 = +[PLDefaults debugEnabled];
  if (v2)
  {
    v3 = PLLogSubmission(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __39__PPSSubmissionUtilities_taskingTables__block_invoke_cold_1(v3);
    }
  }
}

+ (void)submit:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [a1 issueCategory];
  v5 = 138412802;
  v6 = @"com.apple.perfpowerservices";
  v7 = 2112;
  v8 = v4;
  v9 = 2112;
  v10 = a1;
  _os_log_error_impl(&dword_1D8611000, a2, OS_LOG_TYPE_ERROR, "Failed to submit record for '%@:%@' to DiagnosticPipeline: %@", &v5, 0x20u);
}

+ (void)submit:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1D8611000, a2, OS_LOG_TYPE_ERROR, "Failed to trigger DiagnosticPipeline upload session with error '%@'", &v4, 0xCu);
}

void __39__PPSSubmissionUtilities_taskingTables__block_invoke_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412290;
  v2 = taskingTables_result;
  _os_log_debug_impl(&dword_1D8611000, log, OS_LOG_TYPE_DEBUG, "PPSTaskingTables=%@", &v1, 0xCu);
}

@end