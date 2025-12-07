@interface BRCAutoBugCaptureReporter
+ (id)sharedABCReporter;
- (BOOL)_shouldIgnoreReportForOperationType:(id)type ofSubtype:(id)subtype forError:(id)error;
- (id)_init;
- (void)_captureLogsForOperationType:(id)type ofSubtype:(id)subtype withContext:(id)context timeout:(double)timeout;
- (void)captureLogsForOperationType:(id)type ofSubtype:(id)subtype forError:(id)error underlyingError:(id)underlyingError waitForCompletion:(BOOL)completion;
- (void)captureLogsForOperationType:(id)type ofSubtype:(id)subtype withContext:(id)context waitForCompletion:(BOOL)completion;
@end

@implementation BRCAutoBugCaptureReporter

+ (id)sharedABCReporter
{
  if (sharedABCReporter_onceToken != -1)
  {
    +[BRCAutoBugCaptureReporter sharedABCReporter];
  }

  v3 = sharedABCReporter_reporter;

  return v3;
}

uint64_t __46__BRCAutoBugCaptureReporter_sharedABCReporter__block_invoke()
{
  sharedABCReporter_reporter = [[BRCAutoBugCaptureReporter alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v10.receiver = self;
  v10.super_class = BRCAutoBugCaptureReporter;
  v2 = [(BRCAutoBugCaptureReporter *)&v10 init];
  if (v2)
  {
    v3 = [BRCUserDefaults defaultsForMangledID:0];
    [v3 autoBugCaptureReporterThrottlePeriod];
    v2->_reporterOperationRejectedThrottlePeriod = v4;

    v5 = [BRCUserDefaults defaultsForMangledID:0];
    autoBugCaptureReporterThrottleCapacity = [v5 autoBugCaptureReporterThrottleCapacity];

    v7 = [[BRCLRUDictionary alloc] initWithMaximumCapacity:autoBugCaptureReporterThrottleCapacity];
    reporterOperationRejectedThrottle = v2->_reporterOperationRejectedThrottle;
    v2->_reporterOperationRejectedThrottle = v7;
  }

  return v2;
}

- (void)_captureLogsForOperationType:(id)type ofSubtype:(id)subtype withContext:(id)context timeout:(double)timeout
{
  v42 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  subtypeCopy = subtype;
  contextCopy = context;
  subtypeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", typeCopy, subtypeCopy];
  v14 = self->_reporterOperationRejectedThrottle;
  objc_sync_enter(v14);
  v15 = [(BRCLRUDictionary *)self->_reporterOperationRejectedThrottle objectForKeyedSubscript:subtypeCopy];
  if (v15)
  {
    v16 = brc_current_date_nsec();
    longLongValue = [v15 longLongValue];
    if (v16 - longLongValue < brc_interval_to_nsec())
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138413314;
        v33 = typeCopy;
        v34 = 2112;
        v35 = subtypeCopy;
        v36 = 2112;
        v37 = contextCopy;
        v38 = 2112;
        v39 = v15;
        v40 = 2112;
        v41 = v18;
        _os_log_debug_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] Not sending recently rejected ABC report with signature: type = %@, subtype = %@, subtype context = %@, rejected time = %@%@", buf, 0x34u);
      }

      objc_sync_exit(v14);
      goto LABEL_15;
    }

    [(BRCLRUDictionary *)self->_reporterOperationRejectedThrottle removeObjectForKey:subtypeCopy];
  }

  objc_sync_exit(v14);
  v20 = brc_bread_crumbs();
  v21 = brc_default_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v33 = typeCopy;
    v34 = 2112;
    v35 = subtypeCopy;
    v36 = 2112;
    v37 = contextCopy;
    v38 = 2112;
    v39 = v20;
    _os_log_debug_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] Sending ABC report with signature: type = %@, subtype = %@, subtype context = %@%@", buf, 0x2Au);
  }

  v14 = objc_opt_new();
  v22 = [(BRCLRUDictionary *)v14 signatureWithDomain:@"iCloudDrive" type:typeCopy subType:subtypeCopy subtypeContext:contextCopy detectedProcess:@"bird" triggerThresholdValues:0];
  v23 = dispatch_group_create();
  dispatch_group_enter(v23);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __88__BRCAutoBugCaptureReporter__captureLogsForOperationType_ofSubtype_withContext_timeout___block_invoke;
  v28[3] = &unk_278500DF0;
  v29 = subtypeCopy;
  selfCopy = self;
  v24 = v23;
  v31 = v24;
  [(BRCLRUDictionary *)v14 snapshotWithSignature:v22 delay:0 events:0 payload:0 actions:v28 reply:0.0];
  if (timeout > 0.0)
  {
    v25 = dispatch_time(0, (timeout * 1000000000.0));
    if (dispatch_group_wait(v24, v25))
    {
      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, 0x90u))
      {
        [BRCAutoBugCaptureReporter _captureLogsForOperationType:v26 ofSubtype:v27 withContext:? timeout:?];
      }
    }
  }

LABEL_15:
}

void __88__BRCAutoBugCaptureReporter__captureLogsForOperationType_ofSubtype_withContext_timeout___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D6B198]];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __88__BRCAutoBugCaptureReporter__captureLogsForOperationType_ofSubtype_withContext_timeout___block_invoke_cold_1(v6, v7);
    }
  }

  else
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:brc_current_date_nsec()];
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [v3 objectForKeyedSubscript:*MEMORY[0x277D6B168]];
      v11 = [v3 objectForKeyedSubscript:*MEMORY[0x277D6B180]];
      v12 = *(a1 + 32);
      v13 = 138413314;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v8;
      _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ABC report got rejected - error code = %@, description = %@ adding throttle (%@, %@)%@", &v13, 0x34u);
    }

    v7 = *(*(a1 + 40) + 8);
    objc_sync_enter(v7);
    [*(*(a1 + 40) + 8) setObject:v6 forKeyedSubscript:*(a1 + 32)];
    objc_sync_exit(v7);
  }

  dispatch_group_leave(*(a1 + 48));
}

- (void)captureLogsForOperationType:(id)type ofSubtype:(id)subtype withContext:(id)context waitForCompletion:(BOOL)completion
{
  v6 = 0.0;
  if (completion)
  {
    v6 = 10.0;
  }

  [(BRCAutoBugCaptureReporter *)self _captureLogsForOperationType:type ofSubtype:subtype withContext:context timeout:v6];
}

- (void)captureLogsForOperationType:(id)type ofSubtype:(id)subtype forError:(id)error underlyingError:(id)underlyingError waitForCompletion:(BOOL)completion
{
  completionCopy = completion;
  typeCopy = type;
  subtypeCopy = subtype;
  underlyingErrorCopy = underlyingError;
  v14 = [error brc_telemetryReportableErrorWithRecordName:0];
  if (![(BRCAutoBugCaptureReporter *)self _shouldIgnoreReportForOperationType:typeCopy ofSubtype:subtypeCopy forError:v14])
  {
    v15 = MEMORY[0x277CCACA8];
    domain = [v14 domain];
    v17 = [v15 stringWithFormat:@"%@.%ld", domain, objc_msgSend(v14, "code")];

    if (underlyingErrorCopy)
    {
      domain2 = [underlyingErrorCopy domain];
      v19 = [v17 stringByAppendingFormat:@".%@.%ld", domain2, objc_msgSend(underlyingErrorCopy, "code")];

      v17 = v19;
    }

    [(BRCAutoBugCaptureReporter *)self captureLogsForOperationType:typeCopy ofSubtype:subtypeCopy withContext:v17 waitForCompletion:completionCopy];
  }
}

- (BOOL)_shouldIgnoreReportForOperationType:(id)type ofSubtype:(id)subtype forError:(id)error
{
  typeCopy = type;
  subtypeCopy = subtype;
  errorCopy = error;
  if (![typeCopy isEqualToString:@"SyncHealth"] || (objc_msgSend(subtypeCopy, "isEqualToString:", @"SyncUp") & 1) == 0 && !objc_msgSend(subtypeCopy, "isEqualToString:", @"SyncDown") || (objc_msgSend(errorCopy, "domain"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", *MEMORY[0x277CBBF50]), v10, !v11))
  {
LABEL_9:
    if ([typeCopy isEqualToString:@"SyncHealth"] && objc_msgSend(subtypeCopy, "isEqualToString:", @"SyncDown") && objc_msgSend(errorCopy, "brc_isCloudKitErrorZoneMigrated"))
    {
      v12 = [BRCUserDefaults defaultsForMangledID:0];
      if ([v12 ignoreCKCZMigrationAlreadyDoneErrorForABC])
      {
        v16 = brc_bread_crumbs();
        v17 = brc_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [BRCAutoBugCaptureReporter _shouldIgnoreReportForOperationType:errorCopy ofSubtype:? forError:?];
        }

        goto LABEL_22;
      }
    }

    if ([typeCopy isEqualToString:@"SyncHealth"] && objc_msgSend(subtypeCopy, "isEqualToString:", @"Upload") && objc_msgSend(errorCopy, "brc_isCloudKitMMCSItemNotAvailable"))
    {
      v12 = [BRCUserDefaults defaultsForMangledID:0];
      if ([v12 ignoreCKMMCSItemNotAvailableErrorForABC])
      {
        v16 = brc_bread_crumbs();
        v17 = brc_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [BRCAutoBugCaptureReporter _shouldIgnoreReportForOperationType:errorCopy ofSubtype:? forError:?];
        }

        goto LABEL_22;
      }
    }

    v18 = 0;
    goto LABEL_25;
  }

  v12 = [BRCUserDefaults defaultsForMangledID:0];
  ignoredCKErrorsForABC = [v12 ignoredCKErrorsForABC];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
  v15 = [ignoredCKErrorsForABC containsObject:v14];

  if (!v15)
  {

    goto LABEL_9;
  }

  v16 = brc_bread_crumbs();
  v17 = brc_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [BRCAutoBugCaptureReporter _shouldIgnoreReportForOperationType:errorCopy ofSubtype:? forError:?];
  }

LABEL_22:

  v18 = 1;
LABEL_25:

  return v18;
}

- (void)_captureLogsForOperationType:(uint64_t)a1 ofSubtype:(NSObject *)a2 withContext:timeout:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_223E7A000, a2, 0x90u, "[ERROR] Waiting for snapshotWithSignature timed out%@", &v2, 0xCu);
}

void __88__BRCAutoBugCaptureReporter__captureLogsForOperationType_ofSubtype_withContext_timeout___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Sent ABC report successfully%@", &v2, 0xCu);
}

- (void)_shouldIgnoreReportForOperationType:(void *)a1 ofSubtype:forError:.cold.1(void *a1)
{
  [a1 code];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v1, v2, "[DEBUG] Ignoring CloudKit open error (Operation not permitted) protected class error %ld%@", v3, v4, v5, v6);
}

- (void)_shouldIgnoreReportForOperationType:(void *)a1 ofSubtype:forError:.cold.2(void *a1)
{
  [a1 code];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v1, v2, "[DEBUG] Ignoring expected CK 'cross-zone migration already done' error %ld%@", v3, v4, v5, v6);
}

- (void)_shouldIgnoreReportForOperationType:(void *)a1 ofSubtype:forError:.cold.3(void *a1)
{
  [a1 code];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v1, v2, "[DEBUG] Ignoring expected CK error %ld%@", v3, v4, v5, v6);
}

@end