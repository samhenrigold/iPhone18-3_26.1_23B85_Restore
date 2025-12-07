@interface BRCLocalItemSyncErrorReporter
- (BRCLocalItemSyncErrorReporter)initWithABCReporter:(id)reporter dbItemSyncErrorCapturer:(id)capturer;
- (void)_reportSyncErrorForItemWithRowID:(unint64_t)d captureType:(int)type error:(id)error underlyingError:(id)underlyingError serviceCode:(int)code problemType:(int)problemType syncSubType:(id)subType;
@end

@implementation BRCLocalItemSyncErrorReporter

- (BRCLocalItemSyncErrorReporter)initWithABCReporter:(id)reporter dbItemSyncErrorCapturer:(id)capturer
{
  reporterCopy = reporter;
  capturerCopy = capturer;
  v12.receiver = self;
  v12.super_class = BRCLocalItemSyncErrorReporter;
  v9 = [(BRCLocalItemSyncErrorReporter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_abcReporter, reporter);
    objc_storeStrong(&v10->_dbItemSyncErrorCapturer, capturer);
  }

  return v10;
}

- (void)_reportSyncErrorForItemWithRowID:(unint64_t)d captureType:(int)type error:(id)error underlyingError:(id)underlyingError serviceCode:(int)code problemType:(int)problemType syncSubType:(id)subType
{
  v9 = *&code;
  underlyingErrorCopy = underlyingError;
  subTypeCopy = subType;
  v15 = [error brc_telemetryReportableErrorWithRecordName:0];
  dbItemSyncErrorCapturer = self->_dbItemSyncErrorCapturer;
  brc_cloudKitErrorMessage = [v15 brc_cloudKitErrorMessage];
  [(BRCDatabaseItemSyncErrorCapturing *)dbItemSyncErrorCapturer captureSyncErrorForItemWithRowID:d error:v15 errorMessage:brc_cloudKitErrorMessage underlyingError:underlyingErrorCopy serviceCode:v9];

  if (type)
  {
    [(BRCAutoBugCaptureReporter *)self->_abcReporter captureLogsForOperationType:@"SyncHealth" ofSubtype:subTypeCopy forError:v15 underlyingError:underlyingErrorCopy];
  }
}

@end