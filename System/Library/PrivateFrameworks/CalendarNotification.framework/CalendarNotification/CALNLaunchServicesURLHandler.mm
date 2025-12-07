@interface CALNLaunchServicesURLHandler
+ (id)_openApplicationOptionsForResponse:(id)response;
+ (id)sharedInstance;
- (void)openURL:(id)l response:(id)response;
@end

@implementation CALNLaunchServicesURLHandler

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__CALNLaunchServicesURLHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_9 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_9, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

uint64_t __46__CALNLaunchServicesURLHandler_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_instance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)openURL:(id)l response:(id)response
{
  v30 = *MEMORY[0x277D85DE8];
  lCopy = l;
  responseCopy = response;
  v7 = os_transaction_create();
  if (responseCopy)
  {
    notificationRecord = [responseCopy notificationRecord];
    v9 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      sourceIdentifier = [notificationRecord sourceIdentifier];
      sourceClientIdentifier = [notificationRecord sourceClientIdentifier];
      actionIdentifier = [responseCopy actionIdentifier];
      *buf = 138544130;
      v23 = sourceIdentifier;
      v24 = 2114;
      v25 = sourceClientIdentifier;
      v26 = 2114;
      v27 = actionIdentifier;
      v28 = 2112;
      v29 = lCopy;
      _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Opening url for response, source identifier = %{public}@, source client identifier = %{public}@, action identifier = %{public}@, url = %@", buf, 0x2Au);
    }
  }

  else
  {
    notificationRecord = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(notificationRecord, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = lCopy;
      _os_log_impl(&dword_242909000, notificationRecord, OS_LOG_TYPE_DEFAULT, "Opening url: %@", buf, 0xCu);
    }
  }

  v13 = objc_alloc_init(MEMORY[0x277CC1F00]);
  v14 = [objc_opt_class() _openApplicationOptionsForResponse:responseCopy];
  [v13 setFrontBoardOptions:v14];

  targetConnectionEndpoint = [responseCopy targetConnectionEndpoint];
  [v13 setTargetConnectionEndpoint:targetConnectionEndpoint];

  [v13 setSensitive:1];
  if ([lCopy isFileURL])
  {
    [lCopy startAccessingSecurityScopedResource];
  }

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __49__CALNLaunchServicesURLHandler_openURL_response___block_invoke;
  v19[3] = &unk_278D6F790;
  v20 = lCopy;
  v21 = v7;
  v17 = v7;
  v18 = lCopy;
  [defaultWorkspace openURL:v18 configuration:v13 completionHandler:v19];
}

void __49__CALNLaunchServicesURLHandler_openURL_response___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __49__CALNLaunchServicesURLHandler_openURL_response___block_invoke_cold_1(v6, a1, v7);
    }
  }

  if ([*(a1 + 32) isFileURL])
  {
    [*(a1 + 32) stopAccessingSecurityScopedResource];
  }
}

+ (id)_openApplicationOptionsForResponse:(id)response
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  responseCopy = response;
  v5 = [v3 alloc];
  v6 = *MEMORY[0x277D0AC70];
  v11[0] = *MEMORY[0x277D0AC58];
  v11[1] = v6;
  v12[0] = MEMORY[0x277CBEC38];
  v12[1] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = [v5 initWithDictionary:v7];

  originIdentifier = [responseCopy originIdentifier];

  if (originIdentifier)
  {
    [v8 setObject:originIdentifier forKeyedSubscript:*MEMORY[0x277D0AC28]];
  }

  return v8;
}

void __49__CALNLaunchServicesURLHandler_openURL_response___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 32);
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_242909000, log, OS_LOG_TYPE_ERROR, "Could not open url, error = %@, url = %@", &v4, 0x16u);
}

@end