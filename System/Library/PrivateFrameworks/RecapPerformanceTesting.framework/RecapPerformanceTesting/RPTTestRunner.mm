@interface RPTTestRunner
+ (void)playInteraction:(id)interaction completionHandler:(id)handler;
+ (void)runTestWithParameters:(id)parameters;
+ (void)runTestWithParameters:(id)parameters delegate:(id)delegate;
+ (void)runTestWithParameters:(id)parameters resultHandler:(id)handler;
- (BOOL)_isReadyForRunningParameters:(id)parameters error:(id *)error;
- (BOOL)_managePPTLifetimeEvent:(int64_t)event forParameters:(id)parameters;
- (BOOL)_startSerializedRunnerWithError:(id *)error;
- (BOOL)checkTestRequirementsWithError:(id *)error;
- (RPTTestRunner)initWithInteractionOptions:(id)options;
- (RPTTestRunnerDelegate)delegate;
- (void)_endSerializedRunner;
- (void)_failWithParameters:(id)parameters error:(id)error;
- (void)_finishWithParameters:(id)parameters;
- (void)_runTestWithParameters:(id)parameters;
- (void)_runTestWithParameters:(id)parameters retries:(int64_t)retries;
- (void)playInteraction:(id)interaction completionHandler:(id)handler;
- (void)runTestWithParameters:(id)parameters;
- (void)runTestWithParameters:(id)parameters resultHandler:(id)handler;
@end

@implementation RPTTestRunner

+ (void)playInteraction:(id)interaction completionHandler:(id)handler
{
  handlerCopy = handler;
  interactionCopy = interaction;
  v8 = [self alloc];
  v10 = +[RPTInteractionOptions defaultForPlatform];
  v9 = [v8 initWithInteractionOptions:v10];
  [v9 playInteraction:interactionCopy completionHandler:handlerCopy];
}

+ (void)runTestWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = [self alloc];
  v6 = +[RPTInteractionOptions defaultForPlatform];
  v7 = [v5 initWithInteractionOptions:v6];

  [v7 runTestWithParameters:parametersCopy];
}

+ (void)runTestWithParameters:(id)parameters resultHandler:(id)handler
{
  handlerCopy = handler;
  parametersCopy = parameters;
  v8 = [self alloc];
  v9 = +[RPTInteractionOptions defaultForPlatform];
  v10 = [v8 initWithInteractionOptions:v9];

  [v10 runTestWithParameters:parametersCopy resultHandler:handlerCopy];
}

+ (void)runTestWithParameters:(id)parameters delegate:(id)delegate
{
  delegateCopy = delegate;
  parametersCopy = parameters;
  v8 = [self alloc];
  v9 = +[RPTInteractionOptions defaultForPlatform];
  v10 = [v8 initWithInteractionOptions:v9];

  [v10 setDelegate:delegateCopy];
  [v10 runTestWithParameters:parametersCopy];
}

- (RPTTestRunner)initWithInteractionOptions:(id)options
{
  v18 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = RPTTestRunner;
  v5 = [(RPTTestRunner *)&v15 init];
  if (v5)
  {
    if (optionsCopy)
    {
      v6 = optionsCopy;
    }

    else
    {
      v6 = +[RPTInteractionOptions defaultForPlatform];
    }

    interactionOptions = v5->_interactionOptions;
    v5->_interactionOptions = v6;

    v8 = +[RPTSettings processEnvironment];
    settings = v5->_settings;
    v5->_settings = v8;

    v10 = objc_alloc_init(getRCPInlinePlayerClass());
    inlinePlayer = v5->_inlinePlayer;
    v5->_inlinePlayer = v10;

    v13 = RPTLogTestRunning(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = optionsCopy;
      _os_log_impl(&dword_261A17000, v13, OS_LOG_TYPE_DEFAULT, "RPT: [RPTTestRunner initWithOptions:]", buf, 0xCu);
    }
  }

  return v5;
}

- (void)playInteraction:(id)interaction completionHandler:(id)handler
{
  v5 = [RPTInteractionTestParameters interactionTestParametersWithTestName:0 interaction:interaction duration:handler completionHandler:1.0];
  [(RPTTestRunner *)self runTestWithParameters:v5];
}

- (BOOL)_isReadyForRunningParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  delegate = [(RPTTestRunner *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(RPTTestRunner *)self delegate];
    v9 = [delegate2 testRunner:self isReadyForRunningParameters:parametersCopy];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_runTestWithParameters:(id)parameters retries:(int64_t)retries
{
  v19[3] = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  v17 = 0;
  v7 = [(RPTTestRunner *)self _isReadyForRunningParameters:parametersCopy error:&v17];
  v8 = v17;
  v9 = v8;
  if (v7)
  {
    [(RPTTestRunner *)self _runTestWithParameters:parametersCopy];
  }

  else if (retries < 1)
  {
    if (!v8)
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277CCA470];
      v18[0] = *MEMORY[0x277CCA460];
      v18[1] = v12;
      v19[0] = @"App not ready to test";
      v19[1] = @"Client reported not ready to test.";
      v18[2] = *MEMORY[0x277CCA498];
      v19[2] = @"Check your client code.";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
      v9 = [v11 errorWithDomain:@"com.apple.RecapPerformanceTesting" code:4 userInfo:v13];
    }

    [(RPTTestRunner *)self _failWithParameters:parametersCopy error:v9];
  }

  else
  {
    v10 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__RPTTestRunner__runTestWithParameters_retries___block_invoke;
    block[3] = &unk_279AF39C8;
    block[4] = self;
    v15 = parametersCopy;
    retriesCopy = retries;
    dispatch_after(v10, MEMORY[0x277D85CD0], block);
  }
}

- (void)runTestWithParameters:(id)parameters
{
  v7 = 0;
  parametersCopy = parameters;
  v5 = [(RPTTestRunner *)self _startSerializedRunnerWithError:&v7];
  v6 = v7;
  if (v5)
  {
    [(RPTTestRunner *)self _runTestWithParameters:parametersCopy retries:10];
  }

  else
  {
    [(RPTTestRunner *)self _failWithParameters:parametersCopy error:v6];
  }
}

- (void)_runTestWithParameters:(id)parameters
{
  v46 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  v5 = RPTLogTestRunning(parametersCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = parametersCopy;
    _os_log_impl(&dword_261A17000, v5, OS_LOG_TYPE_DEFAULT, "RPT: [RPTTestRunner runTestWithParameters:]", &buf, 0xCu);
  }

  testName = [parametersCopy testName];
  settings = [(RPTTestRunner *)self settings];
  recapOverrideFileURL = [settings recapOverrideFileURL];
  v9 = recapOverrideFileURL != 0;

  v11 = RPTLogTestRunning(v10);
  if (os_signpost_enabled(v11))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = testName;
    _os_signpost_emit_with_name_impl(&dword_261A17000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "RunTestWithParameters", "<testName>=%{public, name=testName}@", &buf, 0xCu);
  }

  v40 = 0;
  v12 = [(RPTTestRunner *)self checkTestRequirementsWithError:&v40];
  v13 = v40;
  v14 = v13;
  if (v12)
  {
    v15 = RPTLogTestRunning(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      testName2 = [parametersCopy testName];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = testName2;
      _os_log_impl(&dword_261A17000, v15, OS_LOG_TYPE_DEFAULT, "RPT: PrepareForTest begin %{public}@", &buf, 0xCu);
    }

    v18 = RPTLogTestRunning(v17);
    if (os_signpost_enabled(v18))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = testName;
      _os_signpost_emit_with_name_impl(&dword_261A17000, v18, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PrepareForTest", "<testName>=%{public, name=testName}@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__0;
    v44 = __Block_byref_object_dispose__0;
    v45 = 0;
    v19 = makeRCPPlayerPlaybackOptions();
    interactionOptions = [(RPTTestRunner *)self interactionOptions];
    RCPSyntheticEventStreamClass = getRCPSyntheticEventStreamClass();
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __40__RPTTestRunner__runTestWithParameters___block_invoke;
    v35[3] = &unk_279AF39F0;
    v39 = v9;
    p_buf = &buf;
    v22 = interactionOptions;
    v36 = v22;
    v23 = parametersCopy;
    v37 = v23;
    v24 = [RCPSyntheticEventStreamClass eventStreamWithEventActions:v35];
    inlinePlayer = [(RPTTestRunner *)self inlinePlayer];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __40__RPTTestRunner__runTestWithParameters___block_invoke_2;
    v27[3] = &unk_279AF3AE0;
    v28 = v23;
    v29 = 0;
    v34 = v9;
    selfCopy = self;
    v33 = &buf;
    v26 = v22;
    v31 = v26;
    v32 = testName;
    [inlinePlayer playEventStream:v24 options:v19 completion:v27];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    [(RPTTestRunner *)self _failWithParameters:parametersCopy error:v13];
  }
}

_BYTE *__40__RPTTestRunner__runTestWithParameters___block_invoke(_BYTE *result, void *a2)
{
  if ((result[56] & 1) == 0)
  {
    v3 = result;
    v4 = a2;
    v5 = [[RPTDefaultPointerAndFingerInteroppingComposer alloc] initFromWrapping:v4 interactionOptions:*(v3 + 4)];
    v6 = *(*(v3 + 6) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [*(v3 + 4) senderProperties];
    [v4 setSenderProperties:v8];

    v9 = *(v3 + 5);
    v10 = *(*(*(v3 + 6) + 8) + 40);

    return [v9 prepareWithComposer:v10];
  }

  return result;
}

void __40__RPTTestRunner__runTestWithParameters___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = RPTLogTestRunning(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) testName];
    *buf = 138543362;
    v20 = v3;
    _os_log_impl(&dword_261A17000, v2, OS_LOG_TYPE_DEFAULT, "RPT: PrepareForTest end %{public}@", buf, 0xCu);
  }

  v5 = RPTLogTestRunning(v4);
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_261A17000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PrepareForTest", &unk_261A2A217, buf, 2u);
  }

  v6 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__RPTTestRunner__runTestWithParameters___block_invoke_80;
  block[3] = &unk_279AF3AE0;
  v7 = *(a1 + 40);
  v18 = *(a1 + 80);
  *&v8 = v7;
  *(&v8 + 1) = *(a1 + 48);
  v12 = v8;
  v9 = *(a1 + 32);
  v17 = *(a1 + 72);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v14 = v12;
  v15 = v11;
  v16 = *(a1 + 64);
  dispatch_after(v6, MEMORY[0x277D85CD0], block);
}

void __40__RPTTestRunner__runTestWithParameters___block_invoke_80(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = makeRCPPlayerPlaybackOptions();
  if (*(a1 + 80) == 1)
  {
    RCPEventStreamClass = getRCPEventStreamClass();
    v4 = [*(a1 + 40) settings];
    v5 = [v4 recapOverrideFileURL];
    v31 = 0;
    v6 = [RCPEventStreamClass eventStreamWithFileURL:v5 error:&v31];
    v7 = v31;

    if (!v6)
    {
      [*(a1 + 40) _failWithParameters:*(a1 + 48) error:v7];
      goto LABEL_12;
    }
  }

  else
  {
    RCPSyntheticEventStreamClass = getRCPSyntheticEventStreamClass();
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __40__RPTTestRunner__runTestWithParameters___block_invoke_2_81;
    v27[3] = &unk_279AF3A18;
    v30 = *(a1 + 72);
    v28 = *(a1 + 56);
    v29 = *(a1 + 48);
    v6 = [RCPSyntheticEventStreamClass eventStreamWithEventActions:v27];

    v7 = v28;
  }

  v10 = RPTLogTestRunning(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 48) testName];
    *buf = 138543362;
    v33 = v11;
    _os_log_impl(&dword_261A17000, v10, OS_LOG_TYPE_DEFAULT, "RPT: PrewarmForTest begin %{public}@", buf, 0xCu);
  }

  v13 = RPTLogTestRunning(v12);
  if (os_signpost_enabled(v13))
  {
    v14 = *(a1 + 64);
    v15 = @"NO";
    if (*(a1 + 80))
    {
      v15 = @"YES";
    }

    *buf = 138543618;
    v33 = v14;
    v34 = 2114;
    v35 = v15;
    _os_signpost_emit_with_name_impl(&dword_261A17000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PrewarmForTest", "<testName>=%{public, name=testName}@ <isOverride>=%{public, name=isOverride}@", buf, 0x16u);
  }

  v16 = [*(a1 + 40) inlinePlayer];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __40__RPTTestRunner__runTestWithParameters___block_invoke_88;
  v20[3] = &unk_279AF3AB8;
  v17 = *(a1 + 48);
  v18 = *(a1 + 40);
  v21 = v17;
  v22 = v18;
  v19 = *(a1 + 64);
  v26 = *(a1 + 80);
  v23 = v19;
  v24 = v6;
  v25 = v2;
  v7 = v6;
  [v16 prewarmForEventStream:v7 completion:v20];

LABEL_12:
}

void __40__RPTTestRunner__runTestWithParameters___block_invoke_2_81(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v4 = a2;
  [v3 setForwardingTarget:v4];
  v5 = [*(a1 + 32) senderProperties];
  [v4 setSenderProperties:v5];

  v6 = [*(a1 + 40) composerBlock];
  v6[2](v6, *(*(*(a1 + 48) + 8) + 40));
}

void __40__RPTTestRunner__runTestWithParameters___block_invoke_88(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = RPTLogTestRunning(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) testName];
    *buf = 138543362;
    v29 = v5;
    _os_log_impl(&dword_261A17000, v4, OS_LOG_TYPE_DEFAULT, "RPT: PrewarmForTest end %{public}@", buf, 0xCu);
  }

  v7 = RPTLogTestRunning(v6);
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_261A17000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PrewarmForTest", &unk_261A2A217, buf, 2u);
  }

  v8 = *(a1 + 40);
  if (v3)
  {
    [v8 _failWithParameters:*(a1 + 32) error:v3];
  }

  else
  {
    v9 = [v8 _managePPTLifetimeEvent:0 forParameters:*(a1 + 32)];
    if (v9)
    {
      v10 = [MEMORY[0x277D75128] sharedApplication];
      [v10 startedTest:*(a1 + 48)];
    }

    v11 = RPTLogTestRunning(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 32) testName];
      *buf = 138543362;
      v29 = v12;
      _os_log_impl(&dword_261A17000, v11, OS_LOG_TYPE_DEFAULT, "RPT: PerformTest begin %{public}@", buf, 0xCu);
    }

    v14 = RPTLogTestRunning(v13);
    if (os_signpost_enabled(v14))
    {
      v15 = *(a1 + 48);
      v16 = @"NO";
      if (*(a1 + 72))
      {
        v16 = @"YES";
      }

      *buf = 138543618;
      v29 = v15;
      v30 = 2114;
      v31 = v16;
      _os_signpost_emit_with_name_impl(&dword_261A17000, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PerformTest", "<testName>=%{public, name=testName}@ <isOverride>=%{public, name=isOverride}@ isAnimation=YES ", buf, 0x16u);
    }

    v17 = [*(a1 + 40) inlinePlayer];
    v18 = *(a1 + 56);
    v19 = *(a1 + 64);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __40__RPTTestRunner__runTestWithParameters___block_invoke_90;
    v23[3] = &unk_279AF3A90;
    v20 = *(a1 + 32);
    v21 = *(a1 + 40);
    v22 = *(a1 + 48);
    v24 = v20;
    v25 = v21;
    v26 = v22;
    v27 = *(a1 + 72);
    [v17 playEventStream:v18 options:v19 completion:v23];
  }
}

void __40__RPTTestRunner__runTestWithParameters___block_invoke_90(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __40__RPTTestRunner__runTestWithParameters___block_invoke_2_91;
  v17[3] = &unk_279AF3A40;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v5 = MEMORY[0x2667162B0](v17);
  v6 = objc_opt_respondsToSelector();
  if (v6)
  {
    v7 = RPTLogTestRunning(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) testName];
      *buf = 138543362;
      v22 = v8;
      _os_log_impl(&dword_261A17000, v7, OS_LOG_TYPE_DEFAULT, "RPT: PostEventStreamPerformTest begin %{public}@", buf, 0xCu);
    }

    v10 = RPTLogTestRunning(v9);
    if (os_signpost_enabled(v10))
    {
      v11 = *(a1 + 48);
      v12 = @"NO";
      if (*(a1 + 56))
      {
        v12 = @"YES";
      }

      *buf = 138543618;
      v22 = v11;
      v23 = 2114;
      v24 = v12;
      _os_signpost_emit_with_name_impl(&dword_261A17000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PostEventStreamPerformTest", "<testName>=%{public, name=testName}@ <isOverride>=%{public, name=isOverride}@", buf, 0x16u);
    }

    v13 = *(a1 + 32);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __40__RPTTestRunner__runTestWithParameters___block_invoke_94;
    v14[3] = &unk_279AF3A68;
    v15 = v13;
    v16 = v5;
    [v15 waitForPostEventStreamDelayWithHandler:v14];
  }

  else
  {
    v5[2](v5);
  }
}

uint64_t __40__RPTTestRunner__runTestWithParameters___block_invoke_2_91(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = RPTLogTestRunning(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) testName];
    v15 = 138543362;
    v16 = v3;
    _os_log_impl(&dword_261A17000, v2, OS_LOG_TYPE_DEFAULT, "RPT: PerformTest end %{public}@", &v15, 0xCu);
  }

  v5 = RPTLogTestRunning(v4);
  if (os_signpost_enabled(v5))
  {
    LOWORD(v15) = 0;
    _os_signpost_emit_with_name_impl(&dword_261A17000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PerformTest", &unk_261A2A217, &v15, 2u);
  }

  if ([*(a1 + 40) _managePPTLifetimeEvent:1 forParameters:*(a1 + 32)])
  {
    v6 = [MEMORY[0x277D75128] sharedApplication];
    [v6 finishedTest:*(a1 + 48) waitForCommit:1 extraResults:0];
  }

  v7 = [*(a1 + 32) completionHandler];

  if (v7)
  {
    v9 = [*(a1 + 32) completionHandler];
    v9[2]();
  }

  v10 = RPTLogTestRunning(v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 32) testName];
    v15 = 138543362;
    v16 = v11;
    _os_log_impl(&dword_261A17000, v10, OS_LOG_TYPE_DEFAULT, "RPT: RunTestWithParameters end %{public}@", &v15, 0xCu);
  }

  v13 = RPTLogTestRunning(v12);
  if (os_signpost_enabled(v13))
  {
    LOWORD(v15) = 0;
    _os_signpost_emit_with_name_impl(&dword_261A17000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RunTestWithParameters", &unk_261A2A217, &v15, 2u);
  }

  return [*(a1 + 40) _finishWithParameters:*(a1 + 32)];
}

uint64_t __40__RPTTestRunner__runTestWithParameters___block_invoke_94(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = RPTLogTestRunning(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) testName];
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_261A17000, v2, OS_LOG_TYPE_DEFAULT, "RPT: PostEventStreamPerformTest end %{public}@", &v7, 0xCu);
  }

  v5 = RPTLogTestRunning(v4);
  if (os_signpost_enabled(v5))
  {
    LOWORD(v7) = 0;
    _os_signpost_emit_with_name_impl(&dword_261A17000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PostEventStreamPerformTest", &unk_261A2A217, &v7, 2u);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)runTestWithParameters:(id)parameters resultHandler:(id)handler
{
  parametersCopy = parameters;
  if (handler)
  {
    handlerCopy = handler;
    handler = objc_opt_new();
    [handler setResultsHandler:handlerCopy];
  }

  [(RPTTestRunner *)self setDelegate:handler];
  [(RPTTestRunner *)self runTestWithParameters:parametersCopy];
}

- (BOOL)_startSerializedRunnerWithError:(id *)error
{
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  ++_testIsRunning;
  objc_sync_exit(v4);

  delegate = [(RPTTestRunner *)self delegate];
  objc_setAssociatedObject(self, "RPTTestRunner_delegateKey", delegate, 0x301);

  return 1;
}

- (void)_endSerializedRunner
{
  objc_setAssociatedObject(self, "RPTTestRunner_delegateKey", 0, 0x301);
  obj = objc_opt_class();
  objc_sync_enter(obj);
  --_testIsRunning;
  objc_sync_exit(obj);
}

- (void)_finishWithParameters:(id)parameters
{
  v12 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  delegate = [(RPTTestRunner *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(RPTTestRunner *)self delegate];
    [delegate2 testRunner:self didFinishRunningParameters:parametersCopy];
  }

  v9 = RPTLogTestRunning(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = parametersCopy;
    _os_log_impl(&dword_261A17000, v9, OS_LOG_TYPE_DEFAULT, "RPT: [RPTTestRunner _finishWithParameters:]", &v10, 0xCu);
  }

  [(RPTTestRunner *)self _endSerializedRunner];
}

- (void)_failWithParameters:(id)parameters error:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  errorCopy = error;
  testName = [parametersCopy testName];
  if (testName)
  {
    v9 = testName;
    v10 = [(RPTTestRunner *)self _managePPTLifetimeEvent:2 forParameters:parametersCopy];

    if (v10)
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      testName2 = [parametersCopy testName];
      v13 = [errorCopy debugDescription];
      [mEMORY[0x277D75128] failedTest:testName2 withFailure:v13];
    }
  }

  v14 = RPTLogTestRunning(testName);
  if (os_signpost_enabled(v14))
  {
    v15 = [errorCopy debugDescription];
    v21 = 138412290;
    v22 = v15;
    _os_signpost_emit_with_name_impl(&dword_261A17000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RunTestWithParameters", "<failure?>=%@", &v21, 0xCu);
  }

  delegate = [(RPTTestRunner *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    delegate2 = [(RPTTestRunner *)self delegate];
    [delegate2 testRunner:self didFailRunningParameters:parametersCopy withError:errorCopy];
  }

  v20 = RPTLogTestRunning(v18);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [(RPTTestRunner *)parametersCopy _failWithParameters:errorCopy error:v20];
  }

  [(RPTTestRunner *)self _endSerializedRunner];
}

- (BOOL)_managePPTLifetimeEvent:(int64_t)event forParameters:(id)parameters
{
  parametersCopy = parameters;
  if (objc_opt_respondsToSelector())
  {
    LODWORD(event) = [parametersCopy managesTestStartAndEnd] ^ 1;
  }

  else
  {
    delegate = [(RPTTestRunner *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(RPTTestRunner *)self delegate];
      LOBYTE(event) = [delegate2 testRunner:self shouldManagePPTLifetimeEvent:event forParamaters:parametersCopy];
    }

    else
    {
      testName = [parametersCopy testName];
      LOBYTE(event) = testName != 0;
    }
  }

  return event;
}

- (BOOL)checkTestRequirementsWithError:(id *)error
{
  v23[3] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  if (!RecapLibraryCore(0))
  {
    v5 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277CCA470];
    v22[0] = *MEMORY[0x277CCA460];
    v22[1] = v6;
    v23[0] = @"Recap.framework is unavaliable.";
    v23[1] = @"The framework failed to be loaded in via soft-linking.";
    v22[2] = *MEMORY[0x277CCA498];
    v23[2] = @"Check you are on a supported platform.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
    v8 = [v5 errorWithDomain:@"com.apple.RecapPerformanceTesting" code:3 userInfo:v7];
    [v4 addObject:v8];
  }

  v9 = +[RPTEntitlementChecker checkerForCurrentProcess];
  v10 = v9;
  if (v9)
  {
    v19 = 0;
    v11 = [v9 checkWithError:&v19];
    v12 = v19;
    if ((v11 & 1) == 0)
    {
      [v4 addObject:v12];
    }

    v13 = [v4 count];
    v14 = v13 == 0;
    if (error && v13)
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277CCA578];
      v20[0] = *MEMORY[0x277CCA460];
      v20[1] = v16;
      v21[0] = @"Test running requirements failed.";
      v21[1] = v4;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
      *error = [v15 errorWithDomain:@"com.apple.RecapPerformanceTesting" code:1 userInfo:v17];

      v14 = 0;
    }
  }

  else
  {
    v12 = RPTLogTestRunning(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [RPTTestRunner checkTestRequirementsWithError:v12];
    }

    v14 = 1;
  }

  return v14;
}

- (RPTTestRunnerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_failWithParameters:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_261A17000, log, OS_LOG_TYPE_ERROR, "RPT: [RPTTestRunner _failWithParameters:]", &v3, 0x16u);
}

@end