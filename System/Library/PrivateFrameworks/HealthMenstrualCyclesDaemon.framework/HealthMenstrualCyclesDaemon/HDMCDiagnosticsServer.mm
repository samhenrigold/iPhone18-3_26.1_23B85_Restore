@interface HDMCDiagnosticsServer
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
+ (id)requiredEntitlements;
- (HDMCDiagnosticsServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate profileExtension:(id)extension;
- (void)remote_triggerAnalysisForDiagnosticsWithCompletion:(id)completion;
@end

@implementation HDMCDiagnosticsServer

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  dCopy = d;
  configurationCopy = configuration;
  clientCopy = client;
  delegateCopy = delegate;
  profile = [clientCopy profile];
  v16 = [profile profileExtensionWithIdentifier:*MEMORY[0x277D11920]];

  if (v16)
  {
    v17 = [objc_alloc(objc_opt_class()) initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy profileExtension:v16];
  }

  else
  {
    v18 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"No profile extension found for %@", objc_opt_class()}];
    if (v18)
    {
      if (error)
      {
        v19 = v18;
        *error = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v17 = 0;
  }

  return v17;
}

- (HDMCDiagnosticsServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate profileExtension:(id)extension
{
  clientCopy = client;
  extensionCopy = extension;
  v18.receiver = self;
  v18.super_class = HDMCDiagnosticsServer;
  v15 = [(HDStandardTaskServer *)&v18 initWithUUID:d configuration:configuration client:clientCopy delegate:delegate];
  if (v15)
  {
    profile = [clientCopy profile];
    objc_storeWeak(&v15->_profile, profile);

    objc_storeStrong(&v15->_profileExtension, extension);
    objc_storeStrong(&v15->_client, client);
  }

  return v15;
}

+ (id)requiredEntitlements
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = *MEMORY[0x277CCC420];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)remote_triggerAnalysisForDiagnosticsWithCompletion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *buf = 138543362;
    v13 = objc_opt_class();
    v7 = v13;
    _os_log_impl(&dword_2293D1000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Trigger analysis for diagnostics", buf, 0xCu);
  }

  v8 = dispatch_get_global_queue(25, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__HDMCDiagnosticsServer_remote_triggerAnalysisForDiagnosticsWithCompletion___block_invoke;
  v10[3] = &unk_27865AEF0;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  dispatch_async(v8, v10);
}

void __76__HDMCDiagnosticsServer_remote_triggerAnalysisForDiagnosticsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) analysisManager];
  v5 = 0;
  v3 = [v2 _analyzeWithForceIncludeCycles:1 forceAnalyzeCompleteHistory:1 error:&v5];
  v4 = v5;

  (*(*(a1 + 40) + 16))(*(a1 + 40), v3 != 0, v4);
}

@end