@interface RPBackgroundActivity
- (RPBackgroundActivity)initWithBackgroundActivityIdentifier:(id)identifier;
- (void)activateWithUserInteractionHandler:(id)handler;
- (void)deactivate;
- (void)dealloc;
- (void)publishNewDataWithUserInteractionHandler:(id)handler;
- (void)updateTimerString:(id)string;
@end

@implementation RPBackgroundActivity

- (RPBackgroundActivity)initWithBackgroundActivityIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v15 = "[RPBackgroundActivity initWithBackgroundActivityIdentifier:]";
    v16 = 1024;
    v17 = 28;
    v18 = 2112;
    v19 = identifierCopy;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Initializing with identifier: %@", buf, 0x1Cu);
  }

  if (!identifierCopy || ![(__CFString *)identifierCopy length])
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPBackgroundActivity initWithBackgroundActivityIdentifier:];
    }

    identifierCopy = @"com.apple.systemstatus.background-activity.replaykit.callrecording.recording";
  }

  v13.receiver = self;
  v13.super_class = RPBackgroundActivity;
  v5 = [(RPBackgroundActivity *)&v13 init];
  if (v5)
  {
    v6 = [(__CFString *)identifierCopy copy];
    backgroundActivityIdentifier = v5->_backgroundActivityIdentifier;
    v5->_backgroundActivityIdentifier = v6;

    v5->_backgroundActivityActive = 0;
    currentTimerString = v5->_currentTimerString;
    v5->_currentTimerString = 0;

    v9 = dispatch_queue_create("com.apple.replaykit.backgroundactivity", 0);
    synchronizationQueue = v5->_synchronizationQueue;
    v5->_synchronizationQueue = v9;

    v11 = objc_alloc_init(MEMORY[0x277D6B910]);
    [(RPBackgroundActivity *)v5 setPublisher:v11];
  }

  return v5;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v7 = "[RPBackgroundActivity dealloc]";
    v8 = 1024;
    v9 = 50;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Deallocating RPBackgroundActivity", buf, 0x12u);
  }

  [(RPBackgroundActivity *)self deactivate];
  publisher = [(RPBackgroundActivity *)self publisher];

  if (publisher)
  {
    publisher2 = [(RPBackgroundActivity *)self publisher];
    [publisher2 invalidate];

    [(RPBackgroundActivity *)self setPublisher:0];
  }

  [(RPBackgroundActivity *)self setCurrentAttribution:0];
  [(RPBackgroundActivity *)self setCurrentTimerString:0];
  v5.receiver = self;
  v5.super_class = RPBackgroundActivity;
  [(RPBackgroundActivity *)&v5 dealloc];
}

- (void)activateWithUserInteractionHandler:(id)handler
{
  v11 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v8 = "[RPBackgroundActivity activateWithUserInteractionHandler:]";
    v9 = 1024;
    v10 = 63;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Activating background activity", buf, 0x12u);
  }

  synchronizationQueue = self->_synchronizationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__RPBackgroundActivity_activateWithUserInteractionHandler___block_invoke;
  block[3] = &unk_278B61B70;
  block[4] = self;
  dispatch_sync(synchronizationQueue, block);
  [(RPBackgroundActivity *)self publishNewDataWithUserInteractionHandler:handlerCopy];
}

void __59__RPBackgroundActivity_activateWithUserInteractionHandler___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 8) == 1)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v2 = 136446466;
      v3 = "[RPBackgroundActivity activateWithUserInteractionHandler:]_block_invoke";
      v4 = 1024;
      v5 = 67;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Background activity already active, skipping activation", &v2, 0x12u);
    }
  }

  else
  {
    *(v1 + 8) = 1;
  }
}

- (void)deactivate
{
  v7 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[RPBackgroundActivity deactivate]";
    *&buf[12] = 1024;
    *&buf[14] = 77;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Deactivating background activity", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v6 = 0;
  synchronizationQueue = self->_synchronizationQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__RPBackgroundActivity_deactivate__block_invoke;
  v4[3] = &unk_278B61B98;
  v4[4] = self;
  v4[5] = buf;
  dispatch_sync(synchronizationQueue, v4);
  if (*(*&buf[8] + 24) == 1)
  {
    [(RPBackgroundActivity *)self publishNewDataWithUserInteractionHandler:0];
  }

  _Block_object_dispose(buf, 8);
}

void __34__RPBackgroundActivity_deactivate__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 8))
  {
    *(v1 + 8) = 0;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446466;
    v3 = "[RPBackgroundActivity deactivate]_block_invoke";
    v4 = 1024;
    v5 = 82;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Background activity not active, skipping deactivation", &v2, 0x12u);
  }
}

- (void)updateTimerString:(id)string
{
  v16 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = "[RPBackgroundActivity updateTimerString:]";
    *&buf[12] = 1024;
    *&buf[14] = 95;
    *&buf[18] = 2112;
    *&buf[20] = stringCopy;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d timer=%@", buf, 0x1Cu);
  }

  if (stringCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    buf[24] = 0;
    synchronizationQueue = self->_synchronizationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__RPBackgroundActivity_updateTimerString___block_invoke;
    block[3] = &unk_278B61BC0;
    v11 = buf;
    block[4] = self;
    v10 = stringCopy;
    dispatch_sync(synchronizationQueue, block);
    if (*(*&buf[8] + 24))
    {
      if (self->_publisher)
      {
        objc_initWeak(location, self);
        publisher = self->_publisher;
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = __42__RPBackgroundActivity_updateTimerString___block_invoke_5;
        v7[3] = &unk_278B61BE8;
        objc_copyWeak(&v8, location);
        [(STBackgroundActivitiesStatusDomainPublisher *)publisher updateVolatileData:v7 completion:0];
        objc_destroyWeak(&v8);
        objc_destroyWeak(location);
      }

      else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [RPBackgroundActivity updateTimerString:];
      }
    }

    else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *location = 136446466;
      *&location[4] = "[RPBackgroundActivity updateTimerString:]";
      v13 = 1024;
      v14 = 109;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Background activity not active, storing timer string for later use", location, 0x12u);
    }

    _Block_object_dispose(buf, 8);
  }

  else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RPBackgroundActivity updateTimerString:];
  }
}

void __42__RPBackgroundActivity_updateTimerString___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 8);
  v2 = [*(a1 + 40) copy];
  [*(a1 + 32) setCurrentTimerString:v2];
}

void __42__RPBackgroundActivity_updateTimerString___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained currentAttribution];

    if (v9)
    {
      v10 = objc_alloc(MEMORY[0x277D6B900]);
      v11 = [v8 currentAttribution];
      v12 = [v11 backgroundActivityIdentifier];
      v13 = [v8 currentAttribution];
      v14 = [v13 activityAttribution];
      v15 = [v10 initWithBackgroundActivityIdentifier:v12 activityAttribution:v14];

      v16 = [v8 currentAttribution];
      [v5 removeAttribution:v16];

      [v5 addAttribution:v15];
      [v8 setCurrentAttribution:v15];
    }

    else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136446466;
      v18 = "[RPBackgroundActivity updateTimerString:]_block_invoke";
      v19 = 1024;
      v20 = 136;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d No current attribution to update with timer string", &v17, 0x12u);
    }

    [v6 setUserInitiated:0];
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136446466;
    v18 = "[RPBackgroundActivity updateTimerString:]_block_invoke";
    v19 = 1024;
    v20 = 122;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Self was deallocated during timer update", &v17, 0x12u);
  }
}

- (void)publishNewDataWithUserInteractionHandler:(id)handler
{
  v34 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  synchronizationQueue = self->_synchronizationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__RPBackgroundActivity_publishNewDataWithUserInteractionHandler___block_invoke;
  block[3] = &unk_278B61C10;
  block[4] = self;
  block[5] = &v24;
  dispatch_sync(synchronizationQueue, block);
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v25 + 24);
    *buf = 136446722;
    v29 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]";
    v30 = 1024;
    v31 = 148;
    v32 = 1024;
    LODWORD(v33) = v6;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Publishing new data with active state: %d", buf, 0x18u);
  }

  publisher = [(RPBackgroundActivity *)self publisher];
  v8 = publisher == 0;

  if (!v8)
  {
    v9 = self->_currentAttribution;
    if (*(v25 + 24) == 1)
    {
      v10 = MEMORY[0x277D6B8E8];
      BSAuditTokenForCurrentProcess();
      v11 = [v10 attributionWithAuditToken:buf];
      if (v11)
      {
        v12 = [objc_alloc(MEMORY[0x277D6B900]) initWithBackgroundActivityIdentifier:self->_backgroundActivityIdentifier activityAttribution:v11];
        if (v12)
        {
          if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v29 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]";
            v30 = 1024;
            v31 = 174;
            v32 = 2112;
            v33 = v12;
            _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Created new background activity attribution=%@", buf, 0x1Cu);
          }

          goto LABEL_16;
        }

        if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [RPBackgroundActivity publishNewDataWithUserInteractionHandler:];
        }
      }

      else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [RPBackgroundActivity publishNewDataWithUserInteractionHandler:];
      }

      v15 = 0;
      goto LABEL_24;
    }

    v12 = 0;
LABEL_16:
    objc_initWeak(buf, self);
    publisher = self->_publisher;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __65__RPBackgroundActivity_publishNewDataWithUserInteractionHandler___block_invoke_9;
    v20[3] = &unk_278B61C38;
    v21 = v9;
    v14 = v12;
    v22 = v14;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__RPBackgroundActivity_publishNewDataWithUserInteractionHandler___block_invoke_10;
    v16[3] = &unk_278B61CB0;
    objc_copyWeak(&v19, buf);
    v15 = v14;
    v17 = v15;
    v18 = handlerCopy;
    [(STBackgroundActivitiesStatusDomainPublisher *)publisher updateVolatileData:v20 completion:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
LABEL_24:

    goto LABEL_25;
  }

  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RPBackgroundActivity publishNewDataWithUserInteractionHandler:];
  }

LABEL_25:
  _Block_object_dispose(&v24, 8);
}

void __65__RPBackgroundActivity_publishNewDataWithUserInteractionHandler___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    if (__RPLogLevel <= 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v11 = 136446722;
        v12 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
        v13 = 1024;
        v14 = 180;
        v15 = 2112;
        v16 = v8;
        _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Removing background activity attribution=%@", &v11, 0x1Cu);
      }

      v7 = *(a1 + 32);
    }

    [v5 removeAttribution:v7];
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    if (__RPLogLevel <= 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        v11 = 136446722;
        v12 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
        v13 = 1024;
        v14 = 184;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Adding background activity attribution=%@", &v11, 0x1Cu);
      }

      v9 = *(a1 + 40);
    }

    [v5 addAttribution:v9];
  }

  [v6 setUserInitiated:1];
}

void __65__RPBackgroundActivity_publishNewDataWithUserInteractionHandler___block_invoke_10(id *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 6);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__RPBackgroundActivity_publishNewDataWithUserInteractionHandler___block_invoke_11;
    block[3] = &unk_278B61C60;
    block[4] = WeakRetained;
    v9 = a1[4];
    dispatch_sync(v4, block);
    v5 = v3[5];
    if (v5)
    {
      if (a1[5])
      {
        if (__RPLogLevel > 1)
        {
          goto LABEL_8;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v11 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
          v12 = 1024;
          v13 = 205;
          _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Setting user interaction handler", buf, 0x12u);
        }

        v5 = v3[5];
        if (v5)
        {
LABEL_8:
          v6[0] = MEMORY[0x277D85DD0];
          v6[1] = 3221225472;
          v6[2] = __65__RPBackgroundActivity_publishNewDataWithUserInteractionHandler___block_invoke_12;
          v6[3] = &unk_278B61C88;
          v7 = a1[5];
          [v5 handleUserInteractionsWithBlock:v6];
        }
      }

      else
      {
        if (__RPLogLevel > 1)
        {
          goto LABEL_19;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v11 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
          v12 = 1024;
          v13 = 213;
          _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Clearing user interaction handler", buf, 0x12u);
        }

        v5 = v3[5];
        if (v5)
        {
LABEL_19:
          [v5 handleUserInteractionsWithBlock:0];
        }
      }
    }

    else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __65__RPBackgroundActivity_publishNewDataWithUserInteractionHandler___block_invoke_10_cold_1();
    }
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
    v12 = 1024;
    v13 = 191;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Self was deallocated during publish operation", buf, 0x12u);
  }
}

void __65__RPBackgroundActivity_publishNewDataWithUserInteractionHandler___block_invoke_12(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
    v6 = 1024;
    v7 = 208;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d User interaction detected", &v4, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
}

@end