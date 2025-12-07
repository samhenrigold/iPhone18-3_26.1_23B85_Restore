@interface WBSCyclerService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (WBSCyclerService)init;
- (id)_descriptionForErrorCode:(int64_t)code;
- (id)_errorWithCode:(int64_t)code;
- (id)_startCyclingFromBeginning:(BOOL)beginning;
- (void)_finishedWithResult:(int64_t)result error:(id)error;
- (void)_postFinishNotificationWithError:(id)error;
- (void)_setMaximumIterationCount:(unint64_t)count reply:(id)reply;
- (void)_setSeed:(unint64_t)seed reply:(id)reply;
- (void)_setTestSuiteName:(id)name reply:(id)reply;
- (void)fetchLogsWithReply:(id)reply;
- (void)fetchStatusWithReply:(id)reply;
- (void)sendRequestToTestSuite:(id)suite reply:(id)reply;
- (void)setTestTargetEndpoint:(id)endpoint reply:(id)reply;
- (void)setValue:(id)value forConfigurationKey:(id)key reply:(id)reply;
- (void)startCyclingFromBeginning:(BOOL)beginning reply:(id)reply;
- (void)stopCyclingWithReply:(id)reply;
@end

@implementation WBSCyclerService

- (WBSCyclerService)init
{
  v7.receiver = self;
  v7.super_class = WBSCyclerService;
  v2 = [(WBSCyclerService *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.internal.safaricyclerd"];
    xpcListener = v2->_xpcListener;
    v2->_xpcListener = v3;

    [(NSXPCListener *)v2->_xpcListener setDelegate:v2];
    [(NSXPCListener *)v2->_xpcListener resume];
    v2->_maximumIterationCount = 0;
    v5 = v2;
  }

  return v2;
}

- (void)setTestTargetEndpoint:(id)endpoint reply:(id)reply
{
  v23 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  replyCopy = reply;
  isRunning = [(WBSCyclerTestRunner *)self->_testRunner isRunning];
  if (isRunning)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXCycler(isRunning, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [WBSCyclerService setTestTargetEndpoint:reply:];
    }

    v11 = [(WBSCyclerService *)self _errorWithCode:0];
    replyCopy[2](replyCopy, v11);
  }

  else
  {
    inited = objc_initWeak(&location, self);
    v14 = WBS_LOG_CHANNEL_PREFIXCycler(inited, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v22 = endpointCopy;
      _os_log_impl(&dword_1BB6F3000, v14, OS_LOG_TYPE_INFO, "Received endpoint %{public}@ for test target", buf, 0xCu);
    }

    v15 = [[WBSCyclerTestTargetProxyController alloc] initWithEndpoint:endpointCopy];
    testTargetProxyController = self->_testTargetProxyController;
    p_testTargetProxyController = &self->_testTargetProxyController;
    *p_testTargetProxyController = v15;

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __48__WBSCyclerService_setTestTargetEndpoint_reply___block_invoke;
    v18[3] = &unk_1E7FB86B8;
    objc_copyWeak(&v19, &location);
    [*p_testTargetProxyController setDisconnectionHandler:v18];
    replyCopy[2](replyCopy, 0);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __48__WBSCyclerService_setTestTargetEndpoint_reply___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__WBSCyclerService_setTestTargetEndpoint_reply___block_invoke_2;
  block[3] = &unk_1E7FB86B8;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __48__WBSCyclerService_setTestTargetEndpoint_reply___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXCycler(WeakRetained, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __48__WBSCyclerService_setTestTargetEndpoint_reply___block_invoke_2_cold_1();
    }

    [v3[5] requestStop];
    v5 = v3[5];
    v3[5] = 0;

    v6 = v3[2];
    v3[2] = 0;

    v7 = [v3 _errorWithCode:3];
    [v3 _finishedWithResult:1 error:v7];
  }
}

- (void)setValue:(id)value forConfigurationKey:(id)key reply:(id)reply
{
  valueCopy = value;
  keyCopy = key;
  replyCopy = reply;
  isRunning = [(WBSCyclerTestRunner *)self->_testRunner isRunning];
  if (isRunning)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXCycler(isRunning, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [WBSCyclerService setValue:forConfigurationKey:reply:];
    }

    selfCopy2 = self;
    v15 = 0;
  }

  else
  {
    if ([keyCopy isEqualToString:@"test-suite"])
    {
      [(WBSCyclerService *)self _setTestSuiteName:valueCopy reply:replyCopy];
      goto LABEL_12;
    }

    if ([keyCopy isEqualToString:@"seed"])
    {
      -[WBSCyclerService _setSeed:reply:](self, "_setSeed:reply:", [valueCopy integerValue], replyCopy);
      goto LABEL_12;
    }

    if ([keyCopy isEqualToString:@"maximum-iterations"])
    {
      -[WBSCyclerService _setMaximumIterationCount:reply:](self, "_setMaximumIterationCount:reply:", [valueCopy integerValue], replyCopy);
      goto LABEL_12;
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && [(objc_class *)self->_testSuiteClass setValue:valueCopy forConfigurationKey:keyCopy])
    {
      replyCopy[2](replyCopy, 0);
      goto LABEL_12;
    }

    selfCopy2 = self;
    v15 = 7;
  }

  v16 = [(WBSCyclerService *)selfCopy2 _errorWithCode:v15];
  (replyCopy)[2](replyCopy, v16);

LABEL_12:
}

- (void)startCyclingFromBeginning:(BOOL)beginning reply:(id)reply
{
  beginningCopy = beginning;
  replyCopy = reply;
  v8 = [(WBSCyclerService *)self _startCyclingFromBeginning:beginningCopy];
  (*(reply + 2))(replyCopy, v8);
}

- (void)stopCyclingWithReply:(id)reply
{
  testRunner = self->_testRunner;
  replyCopy = reply;
  isRunning = [(WBSCyclerTestRunner *)testRunner isRunning];
  if (isRunning)
  {
    requestStop = [(WBSCyclerTestRunner *)self->_testRunner requestStop];
    v10 = WBS_LOG_CHANNEL_PREFIXCycler(requestStop, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_1BB6F3000, v10, OS_LOG_TYPE_INFO, "Submitted request to stop cycling", v13, 2u);
    }

    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXCycler(isRunning, v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [WBSCyclerService stopCyclingWithReply:];
    }

    v12 = [(WBSCyclerService *)self _errorWithCode:1];
    replyCopy[2](replyCopy, v12);

    replyCopy = v12;
  }
}

- (void)sendRequestToTestSuite:(id)suite reply:(id)reply
{
  v21 = *MEMORY[0x1E69E9840];
  suiteCopy = suite;
  replyCopy = reply;
  isRunning = [(WBSCyclerTestRunner *)self->_testRunner isRunning];
  if ((isRunning & 1) == 0)
  {
    v16 = WBS_LOG_CHANNEL_PREFIXCycler(isRunning, v9);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [WBSCyclerService sendRequestToTestSuite:reply:];
    }

    testSuite = [(WBSCyclerService *)self _errorWithCode:1];
    replyCopy[2](replyCopy, testSuite);
    goto LABEL_7;
  }

  v10 = [(WBSCyclerTestRunner *)self->_testRunner handleRequest:suiteCopy completionHandler:replyCopy];
  v12 = WBS_LOG_CHANNEL_PREFIXCycler(v10, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    testRunner = self->_testRunner;
    v14 = v12;
    testSuite = [(WBSCyclerTestRunner *)testRunner testSuite];
    v17 = 138543618;
    v18 = suiteCopy;
    v19 = 2114;
    v20 = testSuite;
    _os_log_impl(&dword_1BB6F3000, v14, OS_LOG_TYPE_INFO, "Submitted request %{public}@ to test suite %{public}@", &v17, 0x16u);

LABEL_7:
  }
}

- (void)fetchStatusWithReply:(id)reply
{
  replyCopy = reply;
  if (objc_opt_respondsToSelector())
  {
    iterationCounter = [(WBSCyclerTestSuite *)self->_testSuite iterationCounter];
    iterationCount = [iterationCounter iterationCount];
  }

  else
  {
    iterationCount = 0;
  }

  if (self->_lastTestStart)
  {
    lastTestEnd = self->_lastTestEnd;
    v8 = lastTestEnd;
    if (!lastTestEnd)
    {
      v8 = [MEMORY[0x1E695DF00] now];
    }

    [v8 timeIntervalSince1970];
    v10 = v9;
    [(NSDate *)self->_lastTestStart timeIntervalSince1970];
    v12 = v10 - v11;
    if (!lastTestEnd)
    {
    }
  }

  else
  {
    v12 = 0.0;
  }

  v13 = [WBSCyclerStatus alloc];
  v14 = NSStringFromClass(self->_testSuiteClass);
  v15 = [(WBSCyclerStatus *)v13 initWithActiveTestSuiteName:v14 seed:+[WBSCyclerRandomnessUtilities isConnectedToTestTarget:"seed"]isRunning:self->_testTargetProxyController != 0 iterationCount:[(WBSCyclerTestRunner *)self->_testRunner isRunning] executionTime:iterationCount, v12];

  replyCopy[2](replyCopy, v15, 0);
}

- (void)fetchLogsWithReply:(id)reply
{
  replyCopy = reply;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v5 = getOSLogStoreClass_softClass;
  v27 = getOSLogStoreClass_softClass;
  if (!getOSLogStoreClass_softClass)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __getOSLogStoreClass_block_invoke;
    v23[3] = &unk_1E7FB6EC8;
    v23[4] = &v24;
    __getOSLogStoreClass_block_invoke(v23);
    v5 = v25[3];
  }

  v6 = v5;
  _Block_object_dispose(&v24, 8);
  v22 = 0;
  v7 = [v5 storeWithScope:1 error:&v22];
  v8 = v22;
  if (v8)
  {
    v10 = v8;
    v11 = WBS_LOG_CHANNEL_PREFIXCycler(v8, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(WBSCyclerService *)v11 fetchLogsWithReply:v10];
    }

    replyCopy[2](replyCopy, 0, v10);
  }

  else
  {
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"category = 'Cycler' AND timestamp >= %@", self->_lastTestStart];
    v21 = 0;
    v13 = [v7 entriesEnumeratorWithOptions:0 position:0 predicate:v12 error:&v21];
    v10 = v21;
    allObjects = [v13 allObjects];
    v15 = objc_opt_new();
    localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
    [v15 setTimeZone:localTimeZone];

    [v15 setDateFormat:@"yyyy-MM-dd hh:mm:ss.SSSZ"];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __39__WBSCyclerService_fetchLogsWithReply___block_invoke;
    v19[3] = &unk_1E7FC52B8;
    v20 = v15;
    v17 = v15;
    v18 = [allObjects safari_mapObjectsUsingBlock:v19];
    (replyCopy)[2](replyCopy, v18, 0);
  }
}

id __39__WBSCyclerService_fetchLogsWithReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 date];
  v6 = [v3 stringFromDate:v5];
  v7 = [v4 composedMessage];

  v8 = [v2 stringWithFormat:@"[%@] %@", v6, v7];

  return v8;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v5 = MEMORY[0x1E696B0D0];
  connectionCopy = connection;
  v7 = [v5 interfaceWithProtocol:&unk_1F3AAB090];
  [connectionCopy setExportedInterface:v7];

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

- (id)_startCyclingFromBeginning:(BOOL)beginning
{
  beginningCopy = beginning;
  v40 = *MEMORY[0x1E69E9840];
  isRunning = [(WBSCyclerTestRunner *)self->_testRunner isRunning];
  if (isRunning)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXCycler(isRunning, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [WBSCyclerService _startCyclingFromBeginning:];
    }

    selfCopy3 = self;
    v9 = 0;
LABEL_18:
    v25 = [(WBSCyclerService *)selfCopy3 _errorWithCode:v9];
    goto LABEL_19;
  }

  if (!self->_testTargetProxyController)
  {
    v23 = WBS_LOG_CHANNEL_PREFIXCycler(isRunning, v6);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [WBSCyclerService _startCyclingFromBeginning:];
    }

    selfCopy3 = self;
    v9 = 2;
    goto LABEL_18;
  }

  testSuiteClass = self->_testSuiteClass;
  if (!testSuiteClass)
  {
    v24 = WBS_LOG_CHANNEL_PREFIXCycler(0, v6);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [WBSCyclerService _startCyclingFromBeginning:];
    }

    selfCopy3 = self;
    v9 = 4;
    goto LABEL_18;
  }

  if (beginningCopy)
  {
    v11 = objc_alloc_init(testSuiteClass);
    testSuite = self->_testSuite;
    self->_testSuite = v11;

    v13 = [MEMORY[0x1E695DF00] now];
    lastTestStart = self->_lastTestStart;
    self->_lastTestStart = v13;

    lastTestEnd = self->_lastTestEnd;
    self->_lastTestEnd = 0;

    lastError = self->_lastError;
    self->_lastError = 0;

    if (objc_opt_respondsToSelector())
    {
      v17 = [[WBSCyclerIterationCounter alloc] initWithMaximumIterationCount:self->_maximumIterationCount];
      [(WBSCyclerTestSuite *)self->_testSuite setIterationCounter:v17];
    }

    v18 = +[WBSCyclerRandomnessUtilities reseed];
    v20 = WBS_LOG_CHANNEL_PREFIXCycler(v18, v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = self->_testSuite;
      v22 = v20;
      *buf = 138543618;
      v37 = v21;
      v38 = 2048;
      v39 = +[WBSCyclerRandomnessUtilities seed];
      _os_log_impl(&dword_1BB6F3000, v22, OS_LOG_TYPE_DEFAULT, "Starting %{public}@ with seed %lu", buf, 0x16u);
    }
  }

  else
  {
    v27 = WBS_LOG_CHANNEL_PREFIXCycler(testSuiteClass, v6);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = self->_testSuite;
      *buf = 138543362;
      v37 = v28;
      _os_log_impl(&dword_1BB6F3000, v27, OS_LOG_TYPE_DEFAULT, "Resuming %{public}@", buf, 0xCu);
    }
  }

  v29 = [WBSCyclerTestRunner alloc];
  v30 = self->_testSuite;
  testTargetProxy = [(WBSCyclerTestTargetProxyController *)self->_testTargetProxyController testTargetProxy];
  v32 = [(WBSCyclerTestRunner *)v29 initWithTestSuite:v30 target:testTargetProxy];
  testRunner = self->_testRunner;
  self->_testRunner = v32;

  v34 = self->_testRunner;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __47__WBSCyclerService__startCyclingFromBeginning___block_invoke;
  v35[3] = &unk_1E7FC52E0;
  v35[4] = self;
  [(WBSCyclerTestRunner *)v34 runWithCompletionHandler:v35];
  v25 = 0;
LABEL_19:

  return v25;
}

- (void)_setTestSuiteName:(id)name reply:(id)reply
{
  v22 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  replyCopy = reply;
  v8 = NSClassFromString(nameCopy);
  if (!v8)
  {
    v15 = WBS_LOG_CHANNEL_PREFIXCycler(0, v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [WBSCyclerService _setTestSuiteName:reply:];
    }

    selfCopy2 = self;
    v17 = 5;
    goto LABEL_12;
  }

  v10 = v8;
  v11 = [(objc_class *)v8 conformsToProtocol:&unk_1F3AA9B78];
  if ((v11 & 1) == 0)
  {
    v18 = WBS_LOG_CHANNEL_PREFIXCycler(v11, v12);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [WBSCyclerService _setTestSuiteName:reply:];
    }

    selfCopy2 = self;
    v17 = 6;
LABEL_12:
    v19 = [(WBSCyclerService *)selfCopy2 _errorWithCode:v17];
    replyCopy[2](replyCopy, v19);

    goto LABEL_13;
  }

  self->_testSuiteClass = v10;
  v13 = WBS_LOG_CHANNEL_PREFIXCycler(v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    testSuiteClass = self->_testSuiteClass;
    v20 = 138543362;
    v21 = testSuiteClass;
    _os_log_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_INFO, "Set test suite to %{public}@", &v20, 0xCu);
  }

  replyCopy[2](replyCopy, 0);
LABEL_13:
}

- (void)_setSeed:(unint64_t)seed reply:(id)reply
{
  v10 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v7 = WBS_LOG_CHANNEL_PREFIXCycler(replyCopy, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    seedCopy = seed;
    _os_log_impl(&dword_1BB6F3000, v7, OS_LOG_TYPE_INFO, "Seed set to %lu", &v8, 0xCu);
  }

  [WBSCyclerRandomnessUtilities setSeed:seed];
  replyCopy[2](replyCopy, 0);
}

- (void)_setMaximumIterationCount:(unint64_t)count reply:(id)reply
{
  v11 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v8 = WBS_LOG_CHANNEL_PREFIXCycler(replyCopy, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 134217984;
    countCopy = count;
    _os_log_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_INFO, "Set maximum iterations to %lu", &v9, 0xCu);
  }

  self->_maximumIterationCount = count;
  replyCopy[2](replyCopy, 0);
}

- (void)_finishedWithResult:(int64_t)result error:(id)error
{
  v18 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v8 = [MEMORY[0x1E695DF00] now];
  lastTestEnd = self->_lastTestEnd;
  self->_lastTestEnd = v8;

  objc_storeStrong(&self->_lastError, error);
  switch(result)
  {
    case 2:
      v15 = WBS_LOG_CHANNEL_PREFIXCycler(v10, v11);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [WBSCyclerService _finishedWithResult:error:];
      }

      break;
    case 1:
      v14 = WBS_LOG_CHANNEL_PREFIXCycler(v10, v11);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(WBSCyclerService *)self _finishedWithResult:errorCopy error:v14];
      }

      break;
    case 0:
      v12 = WBS_LOG_CHANNEL_PREFIXCycler(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        testSuite = self->_testSuite;
        v16 = 138543362;
        v17 = testSuite;
        _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_INFO, "%{public}@ passed", &v16, 0xCu);
      }

      break;
  }

  [(WBSCyclerService *)self _postFinishNotificationWithError:errorCopy];
}

- (void)_postFinishNotificationWithError:(id)error
{
  v11[3] = *MEMORY[0x1E69E9840];
  if (error)
  {
    v10[0] = @"errorDomain";
    errorCopy = error;
    domain = [errorCopy domain];
    v11[0] = domain;
    v10[1] = @"errorCode";
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    v11[1] = v6;
    v10[2] = @"errorLocalizedDescription";
    localizedDescription = [errorCopy localizedDescription];

    v11[2] = localizedDescription;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  }

  else
  {
    v8 = 0;
  }

  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.SafariShared.Cycler.DidFinishRunningTest" object:self->_identifier userInfo:v8];
}

- (id)_errorWithCode:(int64_t)code
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A578];
  v5 = [(WBSCyclerService *)self _descriptionForErrorCode:?];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 errorWithDomain:@"WBSCyclerServiceErrorDomain" code:code userInfo:v6];

  return v7;
}

- (id)_descriptionForErrorCode:(int64_t)code
{
  if ((code - 1) > 6)
  {
    return @"A test is already running";
  }

  else
  {
    return off_1E7FC5318[code - 1];
  }
}

- (void)setTestTargetEndpoint:reply:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __48__WBSCyclerService_setTestTargetEndpoint_reply___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setValue:forConfigurationKey:reply:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)stopCyclingWithReply:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendRequestToTestSuite:reply:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)fetchLogsWithReply:(void *)a1 .cold.1(void *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 localizedDescription];
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_ERROR, "Error reading log store: %{public}@", v5, 0xCu);
}

- (void)_startCyclingFromBeginning:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_startCyclingFromBeginning:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_startCyclingFromBeginning:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_setTestSuiteName:reply:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_setTestSuiteName:reply:.cold.2()
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_finishedWithResult:(os_log_t)log error:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "%{public}@ failed with error: %{public}@", &v4, 0x16u);
}

@end