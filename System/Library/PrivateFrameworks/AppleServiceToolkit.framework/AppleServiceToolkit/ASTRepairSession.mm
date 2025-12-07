@interface ASTRepairSession
+ (void)downloadAsset:(id)asset fileHandle:(id)handle completionHandler:(id)handler;
- (ASTRepairSession)init;
- (ASTRepairSession)initWithDelegate:(id)delegate;
- (BOOL)sendTestResult:(id)result error:(id *)error;
- (void)cancelSuite;
- (void)completeTestSuite:(id)suite description:(id)description;
- (void)dealloc;
- (void)end;
- (void)estimatedTimeRemainingForTest:(id)test completion:(id)completion;
- (void)progressForTest:(id)test completion:(id)completion;
- (void)requestSuiteStart:(id)start completionHandler:(id)handler;
- (void)requestSuiteSummary:(id)summary completionHandler:(id)handler;
- (void)requestSuitesAvailableWithCompletionHandler:(id)handler;
- (void)showInstructionalPrompt:(id)prompt withConfirmation:(id)confirmation;
- (void)start;
- (void)startTest:(id)test parameters:(id)parameters;
- (void)updateTestSuiteImage:(id)image;
- (void)updateTestSuiteProgress:(id)progress;
@end

@implementation ASTRepairSession

- (ASTRepairSession)init
{
  v6.receiver = self;
  v6.super_class = ASTRepairSession;
  v2 = [(ASTRepairSession *)&v6 init];
  if (v2)
  {
    v3 = [[ASTRepairSessionProvider alloc] initWithServiceName:@"com.apple.corerepair.diagnostics-controller"];
    v4 = provider;
    provider = v3;

    [provider setDelegate:v2];
  }

  return v2;
}

- (ASTRepairSession)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [(ASTRepairSession *)self init];
  v6 = v5;
  if (v5)
  {
    [(ASTSession *)v5 setDelegate:delegateCopy];
  }

  return v6;
}

- (BOOL)sendTestResult:(id)result error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v6 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[ASTRepairSession sendTestResult:error:]";
    _os_log_impl(&dword_240F3C000, v6, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] %s", buf, 0xCu);
  }

  v7 = dispatch_semaphore_create(0);
  v8 = provider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __41__ASTRepairSession_sendTestResult_error___block_invoke;
  v13[3] = &unk_278CBD540;
  v14 = v7;
  errorCopy = error;
  v9 = v7;
  [v8 sendTestResult:resultCopy withCompletion:v13];

  v10 = dispatch_time(0, 5000000000);
  v11 = dispatch_semaphore_wait(v9, v10) == 0;

  return v11;
}

intptr_t __41__ASTRepairSession_sendTestResult_error___block_invoke(uint64_t a1, id a2)
{
  if (a2)
  {
    v4 = a2;
    **(a1 + 40) = a2;
  }

  v5 = *(a1 + 32);

  return dispatch_semaphore_signal(v5);
}

+ (void)downloadAsset:(id)asset fileHandle:(id)handle completionHandler:(id)handler
{
  assetCopy = asset;
  handleCopy = handle;
  handlerCopy = handler;
  if (!provider)
  {
    v12 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ASTRepairSession downloadAsset:v12 fileHandle:? completionHandler:?];
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = -1007;
    goto LABEL_11;
  }

  if (([handleCopy isOpenForUpdating] & 1) == 0)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = -3000;
LABEL_11:
    v10 = [v13 errorWithDomain:@"ASTErrorDomain" code:v14 userInfo:0];
    goto LABEL_12;
  }

  v19 = 0;
  [handleCopy truncateAtOffset:0 error:&v19];
  v10 = v19;
  if (!v10)
  {
    v15 = provider;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __63__ASTRepairSession_downloadAsset_fileHandle_completionHandler___block_invoke;
    v16[3] = &unk_278CBD568;
    v18 = handlerCopy;
    v17 = handleCopy;
    [v15 requestAsset:assetCopy withCompletion:v16];

    goto LABEL_13;
  }

  v11 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [ASTRepairSession downloadAsset:v10 fileHandle:v11 completionHandler:?];
  }

LABEL_12:
  (*(handlerCopy + 2))(handlerCopy, 0, v10);
LABEL_13:
}

void __63__ASTRepairSession_downloadAsset_fileHandle_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v10 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __63__ASTRepairSession_downloadAsset_fileHandle_completionHandler___block_invoke_cold_1(v6, v10);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(a1 + 32);
    v14 = 0;
    [v7 writeData:a2 error:&v14];
    v8 = v14;
    if (v14)
    {
      v14;
      v9 = ASTLogHandleForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __63__ASTRepairSession_downloadAsset_fileHandle_completionHandler___block_invoke_cold_2(v9);
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v11 = *(a1 + 40);
      v12 = *(v11 + 16);
      v13 = 0;
      v12(v11, 1, 0);
    }
  }
}

- (void)requestSuiteSummary:(id)summary completionHandler:(id)handler
{
  v10 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  summaryCopy = summary;
  v7 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ASTRepairSession requestSuiteSummary:completionHandler:]";
    _os_log_impl(&dword_240F3C000, v7, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] %s", &v8, 0xCu);
  }

  [provider requestSuiteResult:summaryCopy withCompletion:handlerCopy];
}

- (void)requestSuitesAvailableWithCompletionHandler:(id)handler
{
  v7 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v4 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ASTRepairSession requestSuitesAvailableWithCompletionHandler:]";
    _os_log_impl(&dword_240F3C000, v4, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] %s", &v5, 0xCu);
  }

  [provider requestSuitesAvailableWithCompletionHandler:handlerCopy];
}

- (void)start
{
  v3 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_240F3C000, v3, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] Starting...", buf, 2u);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __25__ASTRepairSession_start__block_invoke;
  v4[3] = &unk_278CBD590;
  v4[4] = self;
  [provider establishConnectionWithCompletionHandler:v4];
}

void __25__ASTRepairSession_start__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = v3;
      _os_log_impl(&dword_240F3C000, v4, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] Unable to establish the connection: %@", buf, 0xCu);
    }

    v5 = [*(a1 + 32) delegate];
    [v5 session:*(a1 + 32) didEndWithError:v3];
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __25__ASTRepairSession_start__block_invoke_19;
    v6[3] = &unk_278CBD590;
    v6[4] = *(a1 + 32);
    [provider startWithCompletionHandler:v6];
  }
}

void __25__ASTRepairSession_start__block_invoke_19(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_240F3C000, v4, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] Unable to start the connection: %@", &v6, 0xCu);
    }

    v5 = [*(a1 + 32) delegate];
    [v5 session:*(a1 + 32) didEndWithError:v3];
  }

  else
  {
    v5 = [*(a1 + 32) delegate];
    [v5 sessionDidStart:*(a1 + 32)];
  }
}

- (void)end
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[ASTRepairSession end]";
    _os_log_impl(&dword_240F3C000, v3, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] %s", buf, 0xCu);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __23__ASTRepairSession_end__block_invoke;
  v4[3] = &unk_278CBD590;
  v4[4] = self;
  [provider endWithCompletionHandler:v4];
}

void __23__ASTRepairSession_end__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  [v5 session:*(a1 + 32) didEndWithError:v4];
}

- (void)requestSuiteStart:(id)start completionHandler:(id)handler
{
  v10 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  startCopy = start;
  v7 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ASTRepairSession requestSuiteStart:completionHandler:]";
    _os_log_impl(&dword_240F3C000, v7, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] %s", &v8, 0xCu);
  }

  [provider requestSuiteStart:startCopy withCompletionHandler:handlerCopy];
}

- (void)dealloc
{
  [(ASTSession *)self setDelegate:0];
  v3 = provider;
  provider = 0;

  v4.receiver = self;
  v4.super_class = ASTRepairSession;
  [(ASTSession *)&v4 dealloc];
}

- (void)cancelSuite
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[ASTRepairSession cancelSuite]";
    _os_log_impl(&dword_240F3C000, v3, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] %s", &v7, 0xCu);
  }

  delegate = [(ASTSession *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ASTSession *)self delegate];
    [delegate2 sessionDidCancelSuite:self];
  }
}

- (void)startTest:(id)test parameters:(id)parameters
{
  v19 = *MEMORY[0x277D85DE8];
  testCopy = test;
  parametersCopy = parameters;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "[ASTRepairSession startTest:parameters:]";
    v15 = 2112;
    v16 = testCopy;
    v17 = 2112;
    v18 = parametersCopy;
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] %s, testId: %@, parameters: %@", &v13, 0x20u);
  }

  delegate = [(ASTSession *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [ASTTestResult resultWithTestId:testCopy parameters:parametersCopy];
    delegate2 = [(ASTSession *)self delegate];
    [delegate2 session:self startTest:testCopy parameters:parametersCopy testResult:v11];
  }
}

- (void)progressForTest:(id)test completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  testCopy = test;
  completionCopy = completion;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[ASTRepairSession progressForTest:completion:]";
    v15 = 2112;
    v16 = testCopy;
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] %s, testId: %@", &v13, 0x16u);
  }

  delegate = [(ASTSession *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(ASTSession *)self delegate];
    v12 = [delegate2 session:self progressForTest:testCopy];
    completionCopy[2](completionCopy, v12);
  }

  completionCopy[2](completionCopy, 0);
}

- (void)estimatedTimeRemainingForTest:(id)test completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  testCopy = test;
  completionCopy = completion;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[ASTRepairSession estimatedTimeRemainingForTest:completion:]";
    v15 = 2112;
    v16 = testCopy;
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] %s, testId: %@", &v13, 0x16u);
  }

  delegate = [(ASTSession *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(ASTSession *)self delegate];
    v12 = [delegate2 session:self estimatedTimeRemainingForTest:testCopy];
    completionCopy[2](completionCopy, v12);
  }

  completionCopy[2](completionCopy, 0);
}

- (void)updateTestSuiteProgress:(id)progress
{
  v13 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[ASTRepairSession updateTestSuiteProgress:]";
    v11 = 2112;
    v12 = progressCopy;
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] %s, progress: %@", &v9, 0x16u);
  }

  delegate = [(ASTSession *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(ASTSession *)self delegate];
    [delegate2 session:self didUpdateTestSuiteProgress:progressCopy];
  }
}

- (void)completeTestSuite:(id)suite description:(id)description
{
  v16 = *MEMORY[0x277D85DE8];
  suiteCopy = suite;
  descriptionCopy = description;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[ASTRepairSession completeTestSuite:description:]";
    v14 = 2112;
    v15 = suiteCopy;
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] %s, suiteName: %@", &v12, 0x16u);
  }

  delegate = [(ASTSession *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(ASTSession *)self delegate];
    [delegate2 session:self didCompleteTestSuite:suiteCopy description:descriptionCopy];
  }
}

- (void)updateTestSuiteImage:(id)image
{
  v11 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[ASTRepairSession updateTestSuiteImage:]";
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] %s", &v9, 0xCu);
  }

  delegate = [(ASTSession *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(ASTSession *)self delegate];
    [delegate2 session:self didUpdateTestSuiteImage:imageCopy];
  }
}

- (void)showInstructionalPrompt:(id)prompt withConfirmation:(id)confirmation
{
  v14 = *MEMORY[0x277D85DE8];
  promptCopy = prompt;
  confirmationCopy = confirmation;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[ASTRepairSession showInstructionalPrompt:withConfirmation:]";
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] %s", &v12, 0xCu);
  }

  delegate = [(ASTSession *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(ASTSession *)self delegate];
    [delegate2 session:self didRequestInstructionalPrompt:promptCopy withConfirmation:confirmationCopy];
  }
}

+ (void)downloadAsset:(void *)a1 fileHandle:(NSObject *)a2 completionHandler:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 debugDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_240F3C000, a2, OS_LOG_TYPE_ERROR, "Error occurred trying to truncate file: %@", &v4, 0xCu);
}

void __63__ASTRepairSession_downloadAsset_fileHandle_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_240F3C000, a2, OS_LOG_TYPE_ERROR, "[ASTRepairSession] Unable to retrieve the asset: %@", &v2, 0xCu);
}

void __63__ASTRepairSession_downloadAsset_fileHandle_completionHandler___block_invoke_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = 0;
  _os_log_error_impl(&dword_240F3C000, log, OS_LOG_TYPE_ERROR, "[ASTRepairSession] Unable to write data: %@", &v1, 0xCu);
}

@end