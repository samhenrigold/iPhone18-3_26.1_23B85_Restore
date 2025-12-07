@interface BRCEventsAnalytics
+ (id)sharedAnalytics;
- (void)_sendDictionaryToCoreAnalytics:(id)analytics eventName:(id)name;
- (void)registerAndSendNewApplyFailureWithOutcome:(id)outcome;
- (void)registerAndSendNewContainerResetWithOutcome:(id)outcome;
- (void)registerAndSendNewFolderSharePCSChainingTime:(double)time chainedRecordsCount:(id)count zoneMangledID:(id)d enhancedDrivePrivacyEnabled:(BOOL)enabled itemIDString:(id)string error:(id)error analyticsReporter:(id)reporter;
- (void)registerAndSendNewPeriodicSyncWithOutcome:(id)outcome;
- (void)registerAndSendNewShareAcceptationWithLastStep:(id)step zoneMangledID:(id)d enhancedDrivePrivacyEnabled:(BOOL)enabled itemIDString:(id)string error:(id)error analyticsReporter:(id)reporter;
- (void)registerAndSendShareSaveError:(id)error analyticsReporter:(id)reporter;
@end

@implementation BRCEventsAnalytics

+ (id)sharedAnalytics
{
  if (sharedAnalytics_onceToken != -1)
  {
    +[BRCEventsAnalytics sharedAnalytics];
  }

  v3 = sharedAnalytics_analytics;

  return v3;
}

uint64_t __37__BRCEventsAnalytics_sharedAnalytics__block_invoke()
{
  sharedAnalytics_analytics = objc_alloc_init(BRCEventsAnalytics);

  return MEMORY[0x2821F96F8]();
}

- (void)registerAndSendNewShareAcceptationWithLastStep:(id)step zoneMangledID:(id)d enhancedDrivePrivacyEnabled:(BOOL)enabled itemIDString:(id)string error:(id)error analyticsReporter:(id)reporter
{
  enabledCopy = enabled;
  stepCopy = step;
  dCopy = d;
  stringCopy = string;
  errorCopy = error;
  reporterCopy = reporter;
  if ([errorCopy brc_isFrontBoardOpenApplicationRequestDenied] & 1) != 0 || (objc_msgSend(errorCopy, "br_isCloudDocsErrorCode:", 29))
  {
    v18 = errorCopy;
  }

  else
  {
    v18 = [errorCopy brc_telemetryReportableErrorWithRecordName:0];

    if (v18)
    {
      v19 = +[BRCAutoBugCaptureReporter sharedABCReporter];
      [v19 captureLogsForOperationType:@"FolderSharing" ofSubtype:@"ShareAcceptation" forError:v18];
    }

    v20 = [AppTelemetryTimeSeriesEvent newShareAcceptationEventWithLastStep:stepCopy zoneMangledID:dCopy enhancedDrivePrivacyEnabled:enabledCopy itemIDString:stringCopy error:v18];
    [reporterCopy postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v20];
    v21 = objc_opt_new();
    [v21 setObject:stepCopy forKey:@"lastStep"];
    [v21 setObject:@"none" forKey:@"error"];
    register_error_in_dictionary(v21, v18);
    [(BRCEventsAnalytics *)self _sendDictionaryToCoreAnalytics:v21 eventName:@"com.apple.iCloudDrive.shareAcceptation"];
  }
}

- (void)registerAndSendShareSaveError:(id)error analyticsReporter:(id)reporter
{
  errorCopy = error;
  reporterCopy = reporter;
  v6 = [errorCopy brc_telemetryReportableErrorWithRecordName:0];
  if (v6)
  {
    v7 = +[BRCAutoBugCaptureReporter sharedABCReporter];
    [v7 captureLogsForOperationType:@"FolderSharing" ofSubtype:@"ShareSave" forError:v6];
  }

  v8 = [AppTelemetryTimeSeriesEvent newShareSaveEventWithError:errorCopy];
  [reporterCopy postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v8];
}

- (void)registerAndSendNewPeriodicSyncWithOutcome:(id)outcome
{
  outcomeCopy = outcome;
  v5 = objc_opt_new();
  [v5 setObject:outcomeCopy forKey:@"periodicSync"];

  [(BRCEventsAnalytics *)self _sendDictionaryToCoreAnalytics:v5 eventName:@"com.apple.iCloudDrive.periodicSync"];
}

- (void)registerAndSendNewContainerResetWithOutcome:(id)outcome
{
  outcomeCopy = outcome;
  v5 = objc_opt_new();
  [v5 setObject:outcomeCopy forKey:@"containerReset"];

  [(BRCEventsAnalytics *)self _sendDictionaryToCoreAnalytics:v5 eventName:@"com.apple.iCloudDrive.containerReset"];
}

- (void)registerAndSendNewApplyFailureWithOutcome:(id)outcome
{
  outcomeCopy = outcome;
  v5 = objc_opt_new();
  [v5 setObject:outcomeCopy forKey:@"applyFailure"];

  [(BRCEventsAnalytics *)self _sendDictionaryToCoreAnalytics:v5 eventName:@"com.apple.iCloudDrive.applyFailure"];
}

- (void)registerAndSendNewFolderSharePCSChainingTime:(double)time chainedRecordsCount:(id)count zoneMangledID:(id)d enhancedDrivePrivacyEnabled:(BOOL)enabled itemIDString:(id)string error:(id)error analyticsReporter:(id)reporter
{
  enabledCopy = enabled;
  countCopy = count;
  reporterCopy = reporter;
  stringCopy = string;
  dCopy = d;
  v19 = [error brc_telemetryReportableErrorWithRecordName:0];
  if (v19)
  {
    v20 = +[BRCAutoBugCaptureReporter sharedABCReporter];
    [v20 captureLogsForOperationType:@"FolderSharing" ofSubtype:@"PCSChaining" forError:v19];
  }

  brc_cloudKitErrorMessage = [v19 brc_cloudKitErrorMessage];
  v22 = [AppTelemetryTimeSeriesEvent newFolderSharePCSChainingEventWithTime:dCopy zoneMangledID:enabledCopy enhancedDrivePrivacyEnabled:stringCopy itemIDString:v19 error:brc_cloudKitErrorMessage errorDescription:time];

  [reporterCopy postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v22];
  v23 = objc_opt_new();
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", *&time];
  [v23 setObject:v24 forKey:@"PCSChainingTime"];

  if (countCopy)
  {
    [v23 setObject:countCopy forKey:@"numOfUnchainedFiles"];
  }

  register_error_in_dictionary(v23, v19);
  [(BRCEventsAnalytics *)self _sendDictionaryToCoreAnalytics:v23 eventName:@"com.apple.iCloudDrive.folderSharePCSChainingTime"];
}

- (void)_sendDictionaryToCoreAnalytics:(id)analytics eventName:(id)name
{
  analyticsCopy = analytics;
  nameCopy = name;
  if (+[BRCAnalyticsReporter isTelemetryReportingEnabled])
  {
    v7 = [analyticsCopy objectForKeyedSubscript:@"error"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v7 isEqualToString:@"CKErrorDomain.2"])
      {
        v8 = brc_bread_crumbs();
        v9 = brc_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          [BRCEventsAnalytics _sendDictionaryToCoreAnalytics:v8 eventName:v9];
        }

LABEL_9:
      }
    }

    else if (v7)
    {
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [(BRCEventsAnalytics *)v7 _sendDictionaryToCoreAnalytics:v8 eventName:v9];
      }

      goto LABEL_9;
    }

    AnalyticsIsEventUsed();
    v10 = analyticsCopy;
    AnalyticsSendEventLazy();
  }
}

@end