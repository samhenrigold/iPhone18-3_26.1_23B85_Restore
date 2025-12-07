@interface PFLBackgroundRunner
+ (void)initialize;
- (BOOL)prepareForActivity:(id)activity;
- (PFLBackgroundRunner)init;
- (unsigned)start;
- (void)cleanup;
- (void)stop;
@end

@implementation PFLBackgroundRunner

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[PFLBackgroundRunner initialize];
  }
}

uint64_t __33__PFLBackgroundRunner_initialize__block_invoke()
{
  sLog_6 = os_log_create("com.apple.NLP", "PFLBackgroundRunner");

  return MEMORY[0x2821F96F8]();
}

- (PFLBackgroundRunner)init
{
  v3.receiver = self;
  v3.super_class = PFLBackgroundRunner;
  return [(PFLBackgroundRunner *)&v3 init];
}

- (void)cleanup
{
  assertion = [(PFLBackgroundRunner *)self assertion];

  if (assertion)
  {
    assertion2 = [(PFLBackgroundRunner *)self assertion];
    [assertion2 invalidate];
  }
}

- (BOOL)prepareForActivity:(id)activity
{
  v23[1] = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  userInfo = [activityCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"QuickTypePFLBackgroundTask"];

  if ([v6 length])
  {
    v20 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v20];
    v8 = v20;
    [(PFLBackgroundRunner *)self setTask:v7];

    task = [(PFLBackgroundRunner *)self task];

    if (task)
    {
      v10 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.NLPLearner" name:@"AccessGPU"];
      v11 = objc_alloc(MEMORY[0x277D46DB8]);
      v12 = [MEMORY[0x277D47008] targetWithPid:getpid()];
      v23[0] = v10;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
      v14 = [v11 initWithExplanation:@"PFL training" target:v12 attributes:v13];

      v19 = 0;
      v15 = [v14 acquireWithError:&v19];
      v16 = v19;

      v17 = sLog_6;
      if (v15)
      {
        if (os_log_type_enabled(sLog_6, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v22 = v14;
          _os_log_impl(&dword_25AE22000, v17, OS_LOG_TYPE_INFO, "acquired assertion for background task runner %@", buf, 0xCu);
        }

        [(PFLBackgroundRunner *)self setAssertion:v14];
      }

      else
      {
        if (os_log_type_enabled(sLog_6, OS_LOG_TYPE_ERROR))
        {
          [PFLBackgroundRunner prepareForActivity:];
        }

        [v14 invalidate];
      }
    }

    else
    {
      if (os_log_type_enabled(sLog_6, OS_LOG_TYPE_ERROR))
      {
        [PFLBackgroundRunner prepareForActivity:];
      }

      v15 = 0;
      v16 = v8;
    }
  }

  else
  {
    if (os_log_type_enabled(sLog_6, OS_LOG_TYPE_ERROR))
    {
      [PFLBackgroundRunner prepareForActivity:];
    }

    v15 = 0;
  }

  return v15;
}

- (unsigned)start
{
  v24 = *MEMORY[0x277D85DE8];
  task = [(PFLBackgroundRunner *)self task];
  v4 = [task url];

  v5 = sLog_6;
  if (os_log_type_enabled(sLog_6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_25AE22000, v5, OS_LOG_TYPE_DEFAULT, "starting PFLBackgroundRunner with task url %@", &buf, 0xCu);
  }

  v20 = 0;
  v6 = [objc_alloc(MEMORY[0x277D05628]) initWithResumptionURL:v4 error:&v20];
  v7 = v20;
  v8 = v7;
  if (!v6 || v7)
  {
    if (os_log_type_enabled(sLog_6, OS_LOG_TYPE_ERROR))
    {
      [PFLBackgroundRunner start];
    }

    v13 = 1;
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v22 = 0x2020000000;
    v23 = 1;
    v9 = dispatch_group_create();
    dispatch_group_enter(v9);
    defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __28__PFLBackgroundRunner_start__block_invoke;
    v16[3] = &unk_279928CB0;
    p_buf = &buf;
    v11 = v9;
    v17 = v11;
    v18 = v6;
    [v18 downloadAttachmentsWithConfiguration:defaultSessionConfiguration completion:v16];

    dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    [(PFLBackgroundRunner *)self cleanup];
    if (*(*(&buf + 1) + 24))
    {
      v12 = sLog_6;
      v13 = 0;
      if (os_log_type_enabled(sLog_6, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_25AE22000, v12, OS_LOG_TYPE_DEFAULT, "finished posting results", v15, 2u);
        v13 = 0;
      }
    }

    else
    {
      v13 = 1;
    }

    _Block_object_dispose(&buf, 8);
  }

  return v13;
}

void __28__PFLBackgroundRunner_start__block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    if (os_log_type_enabled(sLog_6, OS_LOG_TYPE_ERROR))
    {
      __28__PFLBackgroundRunner_start__block_invoke_cold_1();
    }

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v4 = sLog_6;
    if (os_log_type_enabled(sLog_6, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = v4;
      v7 = [v5 recipe];
      v8 = [*(a1 + 40) matchingRecordSet];
      *buf = 138412802;
      v33 = v5;
      v34 = 2112;
      v35 = v7;
      v36 = 2112;
      v37 = v8;
      _os_log_impl(&dword_25AE22000, v6, OS_LOG_TYPE_DEFAULT, "training with session:%@ recipe:%@ recordSet:%@", buf, 0x20u);
    }

    v9 = [*(a1 + 40) recipe];
    v10 = [*(a1 + 40) matchingRecordSet];
    v30 = 0;
    v31 = 0;
    v11 = trainMLPModelForDES(v9, v10, &v31, &v30);
    v12 = v31;
    v13 = v30;

    v14 = sLog_6;
    v15 = os_log_type_enabled(sLog_6, OS_LOG_TYPE_DEFAULT);
    if (v13 || !v11)
    {
      if (v15)
      {
        v20 = *(a1 + 40);
        v21 = v14;
        v22 = [v20 recipe];
        v23 = [*(a1 + 40) matchingRecordSet];
        *buf = 138412802;
        v33 = v22;
        v34 = 2112;
        v35 = v23;
        v36 = 2112;
        v37 = v13;
        _os_log_impl(&dword_25AE22000, v21, OS_LOG_TYPE_DEFAULT, "quicktype training failed for recipe:%@ recordSet:%@ err:%@", buf, 0x20u);
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
      v24 = *(a1 + 32);
      v16 = a1 + 32;
      dispatch_group_enter(v24);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __28__PFLBackgroundRunner_start__block_invoke_71;
      v28[3] = &unk_279928C88;
      v18 = &v29;
      v25 = *(v16 + 8);
      v29 = *v16;
      [v25 completeWithError:v13 completionHandler:v28];
    }

    else
    {
      if (v15)
      {
        *buf = 138412290;
        v33 = v11;
        _os_log_impl(&dword_25AE22000, v14, OS_LOG_TYPE_DEFAULT, "training succeeded with json result %@", buf, 0xCu);
      }

      v17 = *(a1 + 32);
      v16 = a1 + 32;
      dispatch_group_enter(v17);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __28__PFLBackgroundRunner_start__block_invoke_72;
      v26[3] = &unk_279928C88;
      v18 = &v27;
      v19 = *(v16 + 8);
      v27 = *v16;
      [v19 completeWithJSONResult:v11 binaryResult:v12 completionHandler:v26];
    }

    dispatch_group_leave(*v16);
  }
}

- (void)stop
{
  v3 = sLog_6;
  if (os_log_type_enabled(sLog_6, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25AE22000, v3, OS_LOG_TYPE_DEFAULT, "stopping background task runner", v4, 2u);
  }

  [(PFLBackgroundRunner *)self cleanup];
}

@end