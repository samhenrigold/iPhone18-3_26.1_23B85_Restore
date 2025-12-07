@interface FPFSSQLRestoreManager
- (FPFSSQLRestoreManager)initWithUserURL:(id)l fromBuild:(id)build restoreType:(id)type cleanupOnSuccess:(BOOL)success;
- (void)reportDatabaseRestoreCompletionTelemetryWithError:(id)error atStep:(id)step;
- (void)reportPurgencyRestoreCompletionTelemetryWithError:(id)error;
- (void)restoreWithCompletionHandler:(id)handler;
@end

@implementation FPFSSQLRestoreManager

- (FPFSSQLRestoreManager)initWithUserURL:(id)l fromBuild:(id)build restoreType:(id)type cleanupOnSuccess:(BOOL)success
{
  lCopy = l;
  buildCopy = build;
  typeCopy = type;
  v23.receiver = self;
  v23.super_class = FPFSSQLRestoreManager;
  v13 = [(FPFSSQLRestoreManager *)&v23 init];
  if (v13)
  {
    v14 = [[_TtC18FileProviderDaemon20FPFSSQLRestoreEngine alloc] initWithUserURL:lCopy backupBuild:buildCopy restoreType:typeCopy];
    restoreEngine = v13->_restoreEngine;
    v13->_restoreEngine = v14;

    defaultManager = [MEMORY[0x1E699C730] defaultManager];
    v17 = [defaultManager sessionForProviderID:@"d2d_restore_global" version:0];
    rtcReportingDatabase = v13->_rtcReportingDatabase;
    v13->_rtcReportingDatabase = v17;

    defaultManager2 = [MEMORY[0x1E699C730] defaultManager];
    v20 = [defaultManager2 sessionForProviderID:@"d2d_restore_purgency" version:0];
    rtcReportingPurgency = v13->_rtcReportingPurgency;
    v13->_rtcReportingPurgency = v20;

    v13->_cleanupOnSuccess = success;
    objc_storeStrong(&v13->_backupBuild, build);
    objc_storeStrong(&v13->_restoreType, type);
  }

  return v13;
}

- (void)restoreWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  restoreEngine = self->_restoreEngine;
  if (restoreEngine)
  {
    cleanupOnSuccess = self->_cleanupOnSuccess;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__FPFSSQLRestoreManager_restoreWithCompletionHandler___block_invoke;
    v8[3] = &unk_1E83C0D78;
    v8[4] = self;
    v9 = handlerCopy;
    [(FPFSSQLRestoreEngine *)restoreEngine restoreWithCleanupOnSuccess:cleanupOnSuccess completionHandler:v8];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 1, 0);
  }
}

void __54__FPFSSQLRestoreManager_restoreWithCompletionHandler___block_invoke(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  v7 = a3;
  [*(a1 + 32) reportDatabaseRestoreCompletionTelemetryWithError:v7 atStep:a4];
  if (v7)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = *(v9 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__FPFSSQLRestoreManager_restoreWithCompletionHandler___block_invoke_2;
    v11[3] = &unk_1E83C0D50;
    v11[4] = v9;
    v14 = a2;
    v12 = 0;
    v13 = v8;
    [v10 restorePurgenciesAndResidencyReasonsWithCompletionHandler:v11];
  }
}

uint64_t __54__FPFSSQLRestoreManager_restoreWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) reportPurgencyRestoreCompletionTelemetryWithError:a2];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)reportDatabaseRestoreCompletionTelemetryWithError:(id)error atStep:(id)step
{
  v22 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  stepCopy = step;
  if (errorCopy)
  {
    v8 = errorCopy;
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"success" code:0 userInfo:0];
  }

  v9 = v8;
  v10 = @"no step";
  if (stepCopy)
  {
    v10 = stepCopy;
  }

  v11 = v10;
  v12 = fp_current_or_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = @"nil";
    if (errorCopy)
    {
      v14 = errorCopy;
    }

    *buf = 138412546;
    v19 = v14;
    v20 = 2112;
    v21 = stepCopy;
    _os_log_debug_impl(&dword_1CEFC7000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] reporting d2d database restore telemetry with error %@, step %@", buf, 0x16u);
  }

  v15[0] = @"operationType";
  v15[1] = @"reason";
  v15[2] = @"operationSide";
  v16 = v11;
  v17 = vbslq_s8(vceqzq_s64(*&self->_backupBuild), vdupq_n_s64(@"na"), *&self->_backupBuild);
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:v15 count:3];
  [(FPRTCReportingSession *)self->_rtcReportingDatabase postReportWithCategory:1 type:1 payload:v13 error:v9];
}

- (void)reportPurgencyRestoreCompletionTelemetryWithError:(id)error
{
  v15 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    v6 = errorCopy;
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"success" code:0 userInfo:0];
  }

  v7 = v6;
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = @"nil";
    if (v5)
    {
      v10 = v5;
    }

    *buf = 138412290;
    v14 = v10;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] reporting d2d purgency restore telemetry with error %@", buf, 0xCu);
  }

  v11[0] = @"reason";
  v11[1] = @"operationSide";
  v12 = vbslq_s8(vceqzq_s64(*&self->_backupBuild), vdupq_n_s64(@"na"), *&self->_backupBuild);
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:v11 count:2];
  [(FPRTCReportingSession *)self->_rtcReportingPurgency postReportWithCategory:1 type:1 payload:v9 error:v7];
}

@end