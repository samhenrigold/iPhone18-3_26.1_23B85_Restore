@interface UNSApplicationLauncher
- (UNSApplicationLauncher)initWithLocationMonitor:(id)monitor;
- (id)_queue_actionForNotificationResponse:(id)response bundleIdentifier:(id)identifier withHandler:(id)handler error:(id *)error;
- (id)_queue_foregroundLaunchOptionsForApplication:(id)application withResponse:(id)response actionIdentifier:(id)identifier launchImageName:(id)name origin:(id)origin error:(id *)error;
- (id)_queue_newProcessAssertionForBundleID:(id)d PID:(int)iD flags:(unsigned int)flags reason:(unsigned int)reason name:(id)name watchdogInterval:(double)interval acquisitionHandler:(id)handler invalidationHandler:(id)self0;
- (void)_queue_acquireActivityKitAssertionIfNeededForBundleIdentifier:(id)identifier withResponse:(id)response;
- (void)_queue_addProcessAssertion:(id)assertion forBundleID:(id)d;
- (void)_queue_backgroundLaunchApplication:(id)application withResponse:(id)response completionHandler:(id)handler;
- (void)_queue_foregroundLaunchApplication:(id)application withOptions:(id)options responseActionIdentifier:(id)identifier endpoint:(id)endpoint completionHandler:(id)handler;
- (void)_queue_removeAllProcessAssertionsAndInvalidate:(BOOL)invalidate;
- (void)_queue_removeProcessAssertion:(id)assertion forBundleID:(id)d invalidate:(BOOL)invalidate;
- (void)_queue_removeProcessAssertionsHavingReason:(unsigned int)reason forBundleID:(id)d invalidate:(BOOL)invalidate;
- (void)_queue_willPresentNotification:(id)notification forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)_removeAllProcessAssertionsAndInvalidate:(BOOL)invalidate;
- (void)backgroundLaunchApplication:(id)application withResponse:(id)response completionHandler:(id)handler;
- (void)dealloc;
- (void)foregroundLaunchApplication:(id)application withResponse:(id)response launchImageName:(id)name origin:(id)origin endpoint:(id)endpoint completionHandler:(id)handler;
- (void)foregroundLaunchOptionsForApplication:(id)application withResponse:(id)response launchImageName:(id)name origin:(id)origin queue:(id)queue completionHandler:(id)handler;
- (void)willPresentNotification:(id)notification forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
@end

@implementation UNSApplicationLauncher

- (UNSApplicationLauncher)initWithLocationMonitor:(id)monitor
{
  monitorCopy = monitor;
  v14.receiver = self;
  v14.super_class = UNSApplicationLauncher;
  v6 = [(UNSApplicationLauncher *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locationMonitor, monitor);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    bundleIdentifierToAssertions = v7->_bundleIdentifierToAssertions;
    v7->_bundleIdentifierToAssertions = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.usernotificationsserver.UNSApplicationLauncher", v10);
    queue = v7->_queue;
    v7->_queue = v11;
  }

  return v7;
}

- (void)dealloc
{
  [(UNSApplicationLauncher *)self _removeAllProcessAssertionsAndInvalidate:1];
  v3.receiver = self;
  v3.super_class = UNSApplicationLauncher;
  [(UNSApplicationLauncher *)&v3 dealloc];
}

- (void)foregroundLaunchApplication:(id)application withResponse:(id)response launchImageName:(id)name origin:(id)origin endpoint:(id)endpoint completionHandler:(id)handler
{
  applicationCopy = application;
  responseCopy = response;
  nameCopy = name;
  originCopy = origin;
  endpointCopy = endpoint;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __117__UNSApplicationLauncher_foregroundLaunchApplication_withResponse_launchImageName_origin_endpoint_completionHandler___block_invoke;
  block[3] = &unk_279E10DC8;
  v28 = responseCopy;
  selfCopy = self;
  v30 = applicationCopy;
  v31 = nameCopy;
  v32 = originCopy;
  v33 = endpointCopy;
  v34 = handlerCopy;
  v21 = handlerCopy;
  v22 = endpointCopy;
  v23 = originCopy;
  v24 = nameCopy;
  v25 = applicationCopy;
  v26 = responseCopy;
  dispatch_async(queue, block);
}

void __117__UNSApplicationLauncher_foregroundLaunchApplication_withResponse_launchImageName_origin_endpoint_completionHandler___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) actionIdentifier];
  v2 = [*(a1 + 40) _queue_foregroundLaunchOptionsForApplication:*(a1 + 48) withResponse:*(a1 + 32) actionIdentifier:v3 launchImageName:*(a1 + 56) origin:*(a1 + 64) error:0];
  [*(a1 + 40) _queue_foregroundLaunchApplication:*(a1 + 48) withOptions:v2 responseActionIdentifier:v3 endpoint:*(a1 + 72) completionHandler:*(a1 + 80)];
}

- (void)foregroundLaunchOptionsForApplication:(id)application withResponse:(id)response launchImageName:(id)name origin:(id)origin queue:(id)queue completionHandler:(id)handler
{
  applicationCopy = application;
  responseCopy = response;
  nameCopy = name;
  originCopy = origin;
  queueCopy = queue;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __124__UNSApplicationLauncher_foregroundLaunchOptionsForApplication_withResponse_launchImageName_origin_queue_completionHandler___block_invoke;
  block[3] = &unk_279E10DC8;
  v28 = responseCopy;
  selfCopy = self;
  v30 = applicationCopy;
  v31 = nameCopy;
  v32 = originCopy;
  v33 = queueCopy;
  v34 = handlerCopy;
  v21 = handlerCopy;
  v22 = queueCopy;
  v23 = originCopy;
  v24 = nameCopy;
  v25 = applicationCopy;
  v26 = responseCopy;
  dispatch_async(queue, block);
}

void __124__UNSApplicationLauncher_foregroundLaunchOptionsForApplication_withResponse_launchImageName_origin_queue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) actionIdentifier];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v18 = 0;
  v8 = [v3 _queue_foregroundLaunchOptionsForApplication:v5 withResponse:v4 actionIdentifier:v2 launchImageName:v6 origin:v7 error:&v18];
  v9 = v18;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __124__UNSApplicationLauncher_foregroundLaunchOptionsForApplication_withResponse_launchImageName_origin_queue_completionHandler___block_invoke_2;
  v14[3] = &unk_279E10DF0;
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v16 = v9;
  v17 = v11;
  v15 = v8;
  v12 = v9;
  v13 = v8;
  dispatch_async(v10, v14);
}

- (id)_queue_foregroundLaunchOptionsForApplication:(id)application withResponse:(id)response actionIdentifier:(id)identifier launchImageName:(id)name origin:(id)origin error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  responseCopy = response;
  identifierCopy = identifier;
  nameCopy = name;
  originCopy = origin;
  dispatch_assert_queue_V2(self->_queue);
  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];
  targetContentIdentifier = [content targetContentIdentifier];

  v22 = *MEMORY[0x277CE2060];
  if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v38 = applicationCopy;
    v39 = 2114;
    v40 = identifierCopy;
    _os_log_impl(&dword_270AA8000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Launch application in foreground for notification response action %{public}@", buf, 0x16u);
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __130__UNSApplicationLauncher__queue_foregroundLaunchOptionsForApplication_withResponse_actionIdentifier_launchImageName_origin_error___block_invoke;
  v33[3] = &unk_279E10E18;
  v23 = applicationCopy;
  v34 = v23;
  v24 = identifierCopy;
  v35 = v24;
  v25 = [(UNSApplicationLauncher *)self _queue_actionForNotificationResponse:responseCopy bundleIdentifier:v23 withHandler:v33 error:error];
  if (v25)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v36 = v25;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
    [dictionary bs_setSafeObject:v27 forKey:*MEMORY[0x277D0ABD0]];

    v28 = nameCopy;
    [dictionary bs_setSafeObject:nameCopy forKey:*MEMORY[0x277D0AC18]];
    [dictionary bs_setSafeObject:originCopy forKey:*MEMORY[0x277D0AC28]];
    v29 = MEMORY[0x277CBEC38];
    [dictionary bs_setSafeObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D0AC58]];
    [dictionary bs_setSafeObject:v29 forKey:*MEMORY[0x277D0AC70]];
    [dictionary bs_setSafeObject:targetContentIdentifier forKey:*MEMORY[0x277D77838]];
    v30 = [MEMORY[0x277D0AD60] optionsWithDictionary:dictionary];
  }

  else
  {
    v30 = 0;
    v28 = nameCopy;
  }

  return v30;
}

void __130__UNSApplicationLauncher__queue_foregroundLaunchOptionsForApplication_withResponse_actionIdentifier_launchImageName_origin_error___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CE2060];
  if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 138543874;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_270AA8000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Application foreground launch action for notification response action %{public}@ recieved action response %{public}@", &v7, 0x20u);
  }
}

- (void)_queue_foregroundLaunchApplication:(id)application withOptions:(id)options responseActionIdentifier:(id)identifier endpoint:(id)endpoint completionHandler:(id)handler
{
  applicationCopy = application;
  optionsCopy = options;
  identifierCopy = identifier;
  endpointCopy = endpoint;
  handlerCopy = handler;
  v16 = handlerCopy;
  if (optionsCopy)
  {
    if (endpointCopy)
    {
      [MEMORY[0x277D0AD78] serviceWithEndpoint:endpointCopy];
    }

    else
    {
      [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
    }
    v17 = ;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __125__UNSApplicationLauncher__queue_foregroundLaunchApplication_withOptions_responseActionIdentifier_endpoint_completionHandler___block_invoke;
    v18[3] = &unk_279E10E40;
    v19 = applicationCopy;
    v20 = identifierCopy;
    v21 = v16;
    [v17 openApplication:v19 withOptions:optionsCopy completion:v18];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __125__UNSApplicationLauncher__queue_foregroundLaunchApplication_withOptions_responseActionIdentifier_endpoint_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277CE2060];
  if (v6)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_ERROR))
    {
      __125__UNSApplicationLauncher__queue_foregroundLaunchApplication_withOptions_responseActionIdentifier_endpoint_completionHandler___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    v9 = a1[5];
    v11 = 138543874;
    v12 = v8;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = 0;
    _os_log_impl(&dword_270AA8000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Foreground application launch succeeed for action response %{public}@: %{public}@", &v11, 0x20u);
  }

  v10 = a1[6];
  if (v10)
  {
    (*(v10 + 16))(v10, v6 == 0);
  }
}

- (void)backgroundLaunchApplication:(id)application withResponse:(id)response completionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  responseCopy = response;
  handlerCopy = handler;
  v11 = *MEMORY[0x277CE2060];
  if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = applicationCopy;
    v22 = 2112;
    v23 = responseCopy;
    _os_log_impl(&dword_270AA8000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] backgroundLaunchApplication: response: %@", buf, 0x16u);
  }

  queue = self->_queue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__UNSApplicationLauncher_backgroundLaunchApplication_withResponse_completionHandler___block_invoke;
  v16[3] = &unk_279E10D78;
  v16[4] = self;
  v17 = applicationCopy;
  v18 = responseCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = responseCopy;
  v15 = applicationCopy;
  dispatch_async(queue, v16);
}

uint64_t __85__UNSApplicationLauncher_backgroundLaunchApplication_withResponse_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_acquireActivityKitAssertionIfNeededForBundleIdentifier:*(a1 + 40) withResponse:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v2 _queue_backgroundLaunchApplication:v3 withResponse:v4 completionHandler:v5];
}

- (void)_queue_acquireActivityKitAssertionIfNeededForBundleIdentifier:(id)identifier withResponse:(id)response
{
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  responseCopy = response;
  actionIdentifier = [responseCopy actionIdentifier];
  v8 = [actionIdentifier isEqualToString:*MEMORY[0x277CE20F0]];

  if ((v8 & 1) == 0)
  {
    v9 = MEMORY[0x277CE2060];
    v10 = *MEMORY[0x277CE2060];
    if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      actionIdentifier2 = [responseCopy actionIdentifier];
      v25 = 138543618;
      v26 = identifierCopy;
      v27 = 2114;
      v28 = actionIdentifier2;
      _os_log_impl(&dword_270AA8000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Attempting to acquire live activity assertion for notification response with action identifier %{public}@.", &v25, 0x16u);
    }

    v13 = [objc_alloc(MEMORY[0x277D4D500]) initWithBundleIdentifier:identifierCopy];
    v14 = [objc_alloc(MEMORY[0x277D4D4F8]) initWithExplanation:@"Background Launch App To Launch Live Activity from Notification" target:v13 invalidationHandler:0];
    state = [v14 state];
    v16 = *v9;
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (state == 1)
    {
      if (v17)
      {
        v18 = v16;
        actionIdentifier3 = [responseCopy actionIdentifier];
        state2 = [v14 state];
        invalidationReason = [v14 invalidationReason];
        v25 = 138544130;
        v26 = identifierCopy;
        v27 = 2114;
        v28 = actionIdentifier3;
        v29 = 2050;
        v30 = state2;
        v31 = 2050;
        v32 = invalidationReason;
        v22 = "[%{public}@] Successfully to acquired live activity assertion for notification response with action identifier %{public}@. SNAAssertionState=%{public}lu SNAInvalidationReason=%{public}lu";
        v23 = v18;
        v24 = 42;
LABEL_9:
        _os_log_impl(&dword_270AA8000, v23, OS_LOG_TYPE_DEFAULT, v22, &v25, v24);
      }
    }

    else if (v17)
    {
      v18 = v16;
      actionIdentifier3 = [responseCopy actionIdentifier];
      v25 = 138543618;
      v26 = identifierCopy;
      v27 = 2114;
      v28 = actionIdentifier3;
      v22 = "[%{public}@] Failed to acquire live activity assertion for notification response with action identifier %{public}@.";
      v23 = v18;
      v24 = 22;
      goto LABEL_9;
    }
  }
}

- (void)_queue_backgroundLaunchApplication:(id)application withResponse:(id)response completionHandler:(id)handler
{
  v46 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  responseCopy = response;
  handlerCopy = handler;
  actionIdentifier = [responseCopy actionIdentifier];
  v11 = MEMORY[0x277CE2060];
  v12 = *MEMORY[0x277CE2060];
  if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = applicationCopy;
    *&buf[12] = 2114;
    *&buf[14] = actionIdentifier;
    _os_log_impl(&dword_270AA8000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Launch application in background for notification response %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v43 = __Block_byref_object_copy__3;
  v44 = __Block_byref_object_dispose__3;
  v45 = 0;
  objc_initWeak(&location, self);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __92__UNSApplicationLauncher__queue_backgroundLaunchApplication_withResponse_completionHandler___block_invoke;
  v31[3] = &unk_279E10E90;
  v31[4] = self;
  v13 = applicationCopy;
  v32 = v13;
  v14 = actionIdentifier;
  v33 = v14;
  objc_copyWeak(&v35, &location);
  v34 = buf;
  v15 = [(UNSApplicationLauncher *)self _queue_actionForNotificationResponse:responseCopy bundleIdentifier:v13 withHandler:v31];
  v16 = *v11;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v38 = 138543618;
    v39 = v13;
    v40 = 2112;
    v41 = v15;
    _os_log_impl(&dword_270AA8000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Launch application in background for notification response: %@", v38, 0x16u);
  }

  if (v15)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v37 = v15;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    [dictionary bs_setSafeObject:v18 forKey:*MEMORY[0x277D0ABD0]];

    [dictionary bs_setSafeObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D0ABF0]];
    notification = [responseCopy notification];
    request = [notification request];
    content = [request content];
    targetContentIdentifier = [content targetContentIdentifier];

    [dictionary bs_setSafeObject:targetContentIdentifier forKey:*MEMORY[0x277D77838]];
    v23 = [MEMORY[0x277D0AD60] optionsWithDictionary:dictionary];
    serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __92__UNSApplicationLauncher__queue_backgroundLaunchApplication_withResponse_completionHandler___block_invoke_12;
    v26[3] = &unk_279E10EE0;
    v26[4] = self;
    v27 = v13;
    v28 = v14;
    v30 = buf;
    v29 = handlerCopy;
    [serviceWithDefaultShellEndpoint openApplication:v27 withOptions:v23 completion:v26];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
  _Block_object_dispose(buf, 8);
}

void __92__UNSApplicationLauncher__queue_backgroundLaunchApplication_withResponse_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__UNSApplicationLauncher__queue_backgroundLaunchApplication_withResponse_completionHandler___block_invoke_2;
  block[3] = &unk_279E10E68;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v3;
  v5 = v3;
  objc_copyWeak(&v11, (a1 + 64));
  v10 = *(a1 + 56);
  dispatch_async(v4, block);
  objc_destroyWeak(&v11);
}

void __92__UNSApplicationLauncher__queue_backgroundLaunchApplication_withResponse_completionHandler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CE2060];
  if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = 138543874;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_270AA8000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Application background launch action for notification response action %{public}@ recieved action response %{public}@", &v7, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _queue_removeProcessAssertion:*(*(*(a1 + 56) + 8) + 40) forBundleID:*(a1 + 32) invalidate:1];
}

void __92__UNSApplicationLauncher__queue_backgroundLaunchApplication_withResponse_completionHandler___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__UNSApplicationLauncher__queue_backgroundLaunchApplication_withResponse_completionHandler___block_invoke_2_13;
  block[3] = &unk_279E10EB8;
  v15 = v6;
  v16 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v17 = v8;
  v18 = v9;
  v19 = v5;
  v13 = *(a1 + 56);
  v10 = v13;
  v20 = v13;
  v11 = v5;
  v12 = v6;
  dispatch_async(v7, block);
}

uint64_t __92__UNSApplicationLauncher__queue_backgroundLaunchApplication_withResponse_completionHandler___block_invoke_2_13(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x277CE2060];
  v4 = *MEMORY[0x277CE2060];
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __92__UNSApplicationLauncher__queue_backgroundLaunchApplication_withResponse_completionHandler___block_invoke_2_13_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      *buf = 138543618;
      v18 = v5;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Background application launch succeeded for action response %{public}@", buf, 0x16u);
    }

    v7 = *(a1 + 40);
    v8 = *(a1 + 56);
    v9 = [*(a1 + 64) pid];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __92__UNSApplicationLauncher__queue_backgroundLaunchApplication_withResponse_completionHandler___block_invoke_17;
    v14[3] = &unk_279E104B8;
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v10 = [v8 _queue_newProcessAssertionForBundleID:v7 PID:v9 flags:33 reason:10007 name:@"background notification action" watchdogInterval:0 acquisitionHandler:0.0 invalidationHandler:v14];
    v11 = *(*(a1 + 80) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    [*(a1 + 56) _queue_removeProcessAssertionsHavingReason:10007 forBundleID:*(a1 + 40) invalidate:1];
    [*(a1 + 56) _queue_addProcessAssertion:*(*(*(a1 + 80) + 8) + 40) forBundleID:*(a1 + 40)];
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(result + 16))(result, v2 == 0);
  }

  return result;
}

void __92__UNSApplicationLauncher__queue_backgroundLaunchApplication_withResponse_completionHandler___block_invoke_17(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CE2060];
  if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138543618;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&dword_270AA8000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Assertion acquired for application background launch action for notification response action %{public}@ was invalidated", &v5, 0x16u);
  }
}

- (id)_queue_actionForNotificationResponse:(id)response bundleIdentifier:(id)identifier withHandler:(id)handler error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  identifierCopy = identifier;
  handlerCopy = handler;
  notification = [responseCopy notification];
  request = [notification request];
  trigger = [request trigger];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) != 0 && ([(UNCLocationMonitor *)self->_locationMonitor isBundleIdentifierAuthorizedForRegionMonitoring:identifierCopy]& 1) == 0)
  {
    v20 = *MEMORY[0x277CE2060];
    if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      actionIdentifier = [responseCopy actionIdentifier];
      *buf = 138543618;
      v30 = identifierCopy;
      v31 = 2114;
      v32 = actionIdentifier;
      _os_log_impl(&dword_270AA8000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Suppressing response action %{public}@ because app does not have location authorization.", buf, 0x16u);
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:1 userInfo:0];
      *error = v18 = 0;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x277D757C0]);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __98__UNSApplicationLauncher__queue_actionForNotificationResponse_bundleIdentifier_withHandler_error___block_invoke;
    v23[3] = &unk_279E10F08;
    v24 = identifierCopy;
    v28 = isKindOfClass & 1;
    v25 = responseCopy;
    selfCopy = self;
    v27 = handlerCopy;
    v18 = [v17 initWithResponse:v25 withHandler:v23];
  }

  return v18;
}

void __98__UNSApplicationLauncher__queue_actionForNotificationResponse_bundleIdentifier_withHandler_error___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CE2060];
  if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = v4;
    v8 = [v5 actionIdentifier];
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_270AA8000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] UINotificationResponseAction %{public}@ withHandler called", &v10, 0x16u);
  }

  if (*(a1 + 64) == 1)
  {
    [*(*(a1 + 48) + 8) markAsHavingReceivedLocation];
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }
}

- (void)willPresentNotification:(id)notification forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  notificationCopy = notification;
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __92__UNSApplicationLauncher_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke;
  v15[3] = &unk_279E10D78;
  v15[4] = self;
  v16 = notificationCopy;
  v17 = identifierCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = notificationCopy;
  dispatch_async(queue, v15);
}

- (void)_queue_willPresentNotification:(id)notification forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  v50 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  identifierCopy = identifier;
  handlerCopy = handler;
  v28 = notificationCopy;
  request = [notificationCopy request];
  trigger = [request trigger];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UNCLocationMonitor *)self->_locationMonitor markAsHavingReceivedLocation];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [trigger isContentAvailable] ^ 1;
      goto LABEL_6;
    }
  }

  v12 = 1;
LABEL_6:
  v13 = *MEMORY[0x277CE2060];
  if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    identifier = [request identifier];
    un_logDigest = [identifier un_logDigest];
    *buf = 138543618;
    *&buf[4] = identifierCopy;
    *&buf[12] = 2114;
    *&buf[14] = un_logDigest;
    _os_log_impl(&dword_270AA8000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Send willPresentNotification for notification %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v47 = __Block_byref_object_copy__3;
  v48 = __Block_byref_object_dispose__3;
  v49 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = 0;
  objc_initWeak(&location, self);
  v17 = objc_alloc(MEMORY[0x277D75D90]);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __99__UNSApplicationLauncher__queue_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke;
  v35[3] = &unk_279E10F58;
  v35[4] = self;
  v18 = identifierCopy;
  v36 = v18;
  v19 = request;
  v37 = v19;
  v39 = v43;
  v40 = buf;
  objc_copyWeak(&v41, &location);
  v20 = handlerCopy;
  v38 = v20;
  v21 = [v17 initWithNotification:v28 deliverable:v12 timeout:v35 withHandler:30.0];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v45 = v21;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
  [dictionary bs_setSafeObject:v23 forKey:*MEMORY[0x277D0ABD0]];

  [dictionary bs_setSafeObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D0ABF0]];
  v24 = [MEMORY[0x277D0AD60] optionsWithDictionary:dictionary];
  serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __99__UNSApplicationLauncher__queue_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke_24;
  v30[3] = &unk_279E10FA8;
  v30[4] = self;
  v26 = v18;
  v31 = v26;
  v27 = v19;
  v32 = v27;
  v33 = v43;
  v34 = buf;
  [serviceWithDefaultShellEndpoint openApplication:v26 withOptions:v24 completion:v30];

  objc_destroyWeak(&v41);
  objc_destroyWeak(&location);
  _Block_object_dispose(v43, 8);
  _Block_object_dispose(buf, 8);
}

void __99__UNSApplicationLauncher__queue_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__UNSApplicationLauncher__queue_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke_2;
  block[3] = &unk_279E10F30;
  v7 = v3;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = *(a1 + 64);
  v5 = v3;
  objc_copyWeak(&v12, (a1 + 80));
  v10 = *(a1 + 56);
  dispatch_async(v4, block);

  objc_destroyWeak(&v12);
}

void __99__UNSApplicationLauncher__queue_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v2 = UNSafeCast();
  v3 = [v2 options];
  v4 = *MEMORY[0x277CE2060];
  if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = v4;
    v8 = [v5 identifier];
    v9 = [v8 un_logDigest];
    v12 = 138543874;
    v13 = v6;
    v14 = 2048;
    v15 = v3;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&dword_270AA8000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received response %ld for willPresentNotification for notification %{public}@", &v12, 0x20u);
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
  if (*(*(*(a1 + 72) + 8) + 40))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    [WeakRetained _queue_removeProcessAssertion:*(*(*(a1 + 72) + 8) + 40) forBundleID:*(a1 + 40) invalidate:1];
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, v3, 0);
  }
}

void __99__UNSApplicationLauncher__queue_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__UNSApplicationLauncher__queue_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke_2_25;
  block[3] = &unk_279E10F80;
  v13 = v6;
  v14 = *(a1 + 40);
  v8 = *(a1 + 48);
  v18 = *(a1 + 56);
  v9 = *(a1 + 32);
  v15 = v8;
  v16 = v9;
  v17 = v5;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, block);
}

void __99__UNSApplicationLauncher__queue_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke_2_25(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = MEMORY[0x277CE2060];
  v5 = *MEMORY[0x277CE2060];
  v6 = *MEMORY[0x277CE2060];
  if (v2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __99__UNSApplicationLauncher__queue_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke_2_25_cold_1(a1, v5, v3);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v7 = *(a1 + 48);
      v9 = v5;
      v10 = [v7 identifier];
      v11 = [v10 un_logDigest];
      *buf = 138543618;
      v28 = v8;
      v29 = 2114;
      v30 = v11;
      _os_log_impl(&dword_270AA8000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] willPresentNotification delivery succeeded for notification %{public}@", buf, 0x16u);
    }

    if (*(*(*(a1 + 72) + 8) + 24))
    {
      v12 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 40);
        v13 = *(a1 + 48);
        v15 = v12;
        v16 = [v13 identifier];
        v17 = [v16 un_logDigest];
        *buf = 138543618;
        v28 = v14;
        v29 = 2114;
        v30 = v17;
        _os_log_impl(&dword_270AA8000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Already received response; not acquiring assertion for willPresentNotification for notification %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v18 = *(a1 + 40);
      v19 = *(a1 + 56);
      v20 = [*(a1 + 64) pid];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __99__UNSApplicationLauncher__queue_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke_29;
      v24[3] = &unk_279E104B8;
      v25 = *(a1 + 40);
      v26 = *(a1 + 48);
      v21 = [v19 _queue_newProcessAssertionForBundleID:v18 PID:v20 flags:33 reason:10007 name:@"will present notification" watchdogInterval:0 acquisitionHandler:0.0 invalidationHandler:v24];
      v22 = *(*(a1 + 80) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;

      [*(a1 + 56) _queue_removeProcessAssertionsHavingReason:10007 forBundleID:*(a1 + 40) invalidate:1];
      [*(a1 + 56) _queue_addProcessAssertion:*(*(*(a1 + 80) + 8) + 40) forBundleID:*(a1 + 40)];
    }
  }
}

void __99__UNSApplicationLauncher__queue_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke_29(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CE2060];
  if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 identifier];
    v7 = [v6 un_logDigest];
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Assertion acquired for willPresentNotification for notification %{public}@ was invalidated", &v8, 0x16u);
  }
}

- (id)_queue_newProcessAssertionForBundleID:(id)d PID:(int)iD flags:(unsigned int)flags reason:(unsigned int)reason name:(id)name watchdogInterval:(double)interval acquisitionHandler:(id)handler invalidationHandler:(id)self0
{
  v13 = *&flags;
  v14 = *&iD;
  v81 = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  handlerCopy = handler;
  invalidationHandlerCopy = invalidationHandler;
  objc_initWeak(&location, self);
  objc_initWeak(&from, self->_queue);
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy__3;
  v73 = __Block_byref_object_dispose__3;
  v74 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3042000000;
  v66 = __Block_byref_object_copy__30;
  v67 = __Block_byref_object_dispose__31;
  v68 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__3;
  v61 = __Block_byref_object_dispose__3;
  v62 = 0;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3810000000;
  v55[3] = "";
  v56 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __142__UNSApplicationLauncher__queue_newProcessAssertionForBundleID_PID_flags_reason_name_watchdogInterval_acquisitionHandler_invalidationHandler___block_invoke;
  aBlock[3] = &unk_279E10FF8;
  v50 = v55;
  objc_copyWeak(&v53, &from);
  v20 = dCopy;
  v47 = v20;
  v21 = nameCopy;
  v48 = v21;
  v51 = &v63;
  objc_copyWeak(&v54, &location);
  v52 = &v57;
  v22 = invalidationHandlerCopy;
  v49 = v22;
  v23 = _Block_copy(aBlock);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __142__UNSApplicationLauncher__queue_newProcessAssertionForBundleID_PID_flags_reason_name_watchdogInterval_acquisitionHandler_invalidationHandler___block_invoke_32;
  v42[3] = &unk_279E11020;
  v24 = handlerCopy;
  v43 = v24;
  v25 = v23;
  v44 = v25;
  v45 = &v57;
  v26 = _Block_copy(v42);
  v27 = [objc_alloc(MEMORY[0x277CEEEA8]) initWithPID:v14 flags:v13 reason:reason name:v21 withHandler:v26];
  v28 = v70[5];
  v70[5] = v27;

  [v70[5] setInvalidationHandler:v25];
  objc_storeWeak(v64 + 5, v70[5]);
  if (interval > 0.0)
  {
    v29 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
    v30 = v58[5];
    v58[5] = v29;

    v31 = v58[5];
    v32 = dispatch_time(0, (interval * 1000000000.0));
    dispatch_source_set_timer(v31, v32, 0, 0);
    v33 = v58[5];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __142__UNSApplicationLauncher__queue_newProcessAssertionForBundleID_PID_flags_reason_name_watchdogInterval_acquisitionHandler_invalidationHandler___block_invoke_2_35;
    handler[3] = &unk_279E11048;
    v40 = &v57;
    v41 = &v69;
    v39 = v25;
    dispatch_source_set_event_handler(v33, handler);
  }

  v34 = *MEMORY[0x277CE2060];
  if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v78 = v20;
    v79 = 2114;
    v80 = v21;
    _os_log_impl(&dword_270AA8000, v34, OS_LOG_TYPE_DEFAULT, "[%{public}@] Created process assertion for %{public}@ ", buf, 0x16u);
  }

  v35 = v70[5];

  objc_destroyWeak(&v54);
  objc_destroyWeak(&v53);
  _Block_object_dispose(v55, 8);
  _Block_object_dispose(&v57, 8);

  _Block_object_dispose(&v63, 8);
  objc_destroyWeak(&v68);
  _Block_object_dispose(&v69, 8);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v35;
}

void __142__UNSApplicationLauncher__queue_newProcessAssertionForBundleID_PID_flags_reason_name_watchdogInterval_acquisitionHandler_invalidationHandler___block_invoke(uint64_t a1)
{
  if ((atomic_exchange((*(*(a1 + 56) + 8) + 48), 1u) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __142__UNSApplicationLauncher__queue_newProcessAssertionForBundleID_PID_flags_reason_name_watchdogInterval_acquisitionHandler_invalidationHandler___block_invoke_2;
    v5[3] = &unk_279E10FD0;
    v6 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 64);
    v7 = v3;
    v9 = v4;
    objc_copyWeak(&v11, (a1 + 88));
    v10 = *(a1 + 72);
    v8 = *(a1 + 48);
    dispatch_async(WeakRetained, v5);

    objc_destroyWeak(&v11);
  }
}

void __142__UNSApplicationLauncher__queue_newProcessAssertionForBundleID_PID_flags_reason_name_watchdogInterval_acquisitionHandler_invalidationHandler___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CE2060];
  if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v11 = 138543618;
    v12 = v3;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_270AA8000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidated process assertion for %{public}@", &v11, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((*(*(a1 + 56) + 8) + 40));
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained((a1 + 72));
    [v6 _queue_removeProcessAssertion:WeakRetained forBundleID:*(a1 + 32) invalidate:0];
  }

  v7 = *(*(*(a1 + 64) + 8) + 40);
  if (v7)
  {
    dispatch_source_cancel(v7);
    v8 = *(*(a1 + 64) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

void __142__UNSApplicationLauncher__queue_newProcessAssertionForBundleID_PID_flags_reason_name_watchdogInterval_acquisitionHandler_invalidationHandler___block_invoke_32(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, a2);
  }

  if (v2)
  {
    v5 = *(*(a1[6] + 8) + 40);
    if (v5)
    {

      dispatch_resume(v5);
    }
  }

  else
  {
    v6 = *(a1[5] + 16);

    v6();
  }
}

uint64_t __142__UNSApplicationLauncher__queue_newProcessAssertionForBundleID_PID_flags_reason_name_watchdogInterval_acquisitionHandler_invalidationHandler___block_invoke_2_35(void *a1)
{
  v2 = *(a1[5] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  [*(*(a1[6] + 8) + 40) invalidate];
  v4 = *(a1[4] + 16);

  return v4();
}

- (void)_queue_addProcessAssertion:(id)assertion forBundleID:(id)d
{
  assertionCopy = assertion;
  dCopy = d;
  if (assertionCopy && dCopy)
  {
    array = [(NSMutableDictionary *)self->_bundleIdentifierToAssertions objectForKey:dCopy];
    if (!array)
    {
      array = [MEMORY[0x277CBEB18] array];
      [(NSMutableDictionary *)self->_bundleIdentifierToAssertions setObject:array forKey:dCopy];
    }

    [array addObject:assertionCopy];
  }
}

- (void)_queue_removeProcessAssertion:(id)assertion forBundleID:(id)d invalidate:(BOOL)invalidate
{
  invalidateCopy = invalidate;
  v19 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  dCopy = d;
  v10 = dCopy;
  if (assertionCopy && dCopy)
  {
    v11 = [(NSMutableDictionary *)self->_bundleIdentifierToAssertions objectForKey:dCopy];
    if ([v11 containsObject:assertionCopy])
    {
      v12 = *MEMORY[0x277CE2060];
      if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        name = [assertionCopy name];
        v15 = 138543618;
        v16 = v10;
        v17 = 2114;
        v18 = name;
        _os_log_impl(&dword_270AA8000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing process assertion for %{public}@", &v15, 0x16u);
      }

      [v11 removeObject:assertionCopy];
      if (![v11 count])
      {
        [(NSMutableDictionary *)self->_bundleIdentifierToAssertions removeObjectForKey:v10];
      }

      if (invalidateCopy)
      {
        [assertionCopy invalidate];
      }
    }
  }
}

- (void)_queue_removeProcessAssertionsHavingReason:(unsigned int)reason forBundleID:(id)d invalidate:(BOOL)invalidate
{
  dCopy = d;
  if (dCopy)
  {
    v9 = [(NSMutableDictionary *)self->_bundleIdentifierToAssertions objectForKey:dCopy];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __92__UNSApplicationLauncher__queue_removeProcessAssertionsHavingReason_forBundleID_invalidate___block_invoke;
    v14[3] = &__block_descriptor_37_e29__16__0__BKSProcessAssertion_8l;
    reasonCopy = reason;
    invalidateCopy = invalidate;
    v10 = [v9 bs_mapNoNulls:v14];
    v11 = [v10 count];
    bundleIdentifierToAssertions = self->_bundleIdentifierToAssertions;
    if (v11)
    {
      v13 = [v10 mutableCopy];
      [(NSMutableDictionary *)bundleIdentifierToAssertions setObject:v13 forKey:dCopy];
    }

    else
    {
      [(NSMutableDictionary *)bundleIdentifierToAssertions removeObjectForKey:dCopy];
    }
  }
}

id __92__UNSApplicationLauncher__queue_removeProcessAssertionsHavingReason_forBundleID_invalidate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 reason] == *(a1 + 32))
  {
    if (*(a1 + 36) == 1)
    {
      [v3 invalidate];
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (void)_removeAllProcessAssertionsAndInvalidate:(BOOL)invalidate
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__UNSApplicationLauncher__removeAllProcessAssertionsAndInvalidate___block_invoke;
  v4[3] = &unk_279E11090;
  v4[4] = self;
  invalidateCopy = invalidate;
  dispatch_async(queue, v4);
}

- (void)_queue_removeAllProcessAssertionsAndInvalidate:(BOOL)invalidate
{
  v25 = *MEMORY[0x277D85DE8];
  if (invalidate)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    allValues = [(NSMutableDictionary *)self->_bundleIdentifierToAssertions allValues];
    v5 = [allValues countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        v8 = 0;
        do
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          v9 = *(*(&v19 + 1) + 8 * v8);
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v16;
            do
            {
              v14 = 0;
              do
              {
                if (*v16 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [*(*(&v15 + 1) + 8 * v14++) invalidate];
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
            }

            while (v12);
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [allValues countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v6);
    }
  }

  [(NSMutableDictionary *)self->_bundleIdentifierToAssertions removeAllObjects];
}

void __99__UNSApplicationLauncher__queue_willPresentNotification_forBundleIdentifier_withCompletionHandler___block_invoke_2_25_cold_1(uint64_t a1, void *a2, uint64_t *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = a2;
  v7 = [v4 identifier];
  v8 = [v7 un_logDigest];
  v9 = *a3;
  v10 = 138543874;
  v11 = v5;
  v12 = 2114;
  v13 = v8;
  v14 = 2114;
  v15 = v9;
  _os_log_error_impl(&dword_270AA8000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] willPresentNotification delivery failed for notification %{public}@: %{public}@", &v10, 0x20u);
}

@end