@interface SLRemoteTaskManager
- (SLRemoteTaskManager)initWithDelegate:(id)delegate targetSerialQueue:(id)queue synchronous:(BOOL)synchronous;
- (SLRemoteTaskManagerDelegate)delegate;
- (id)_serviceWithErrorHandler:(id)handler;
- (void)startTask:(id)task withTimeout:(double)timeout timeoutHandler:(id)handler errorHandler:(id)errorHandler;
@end

@implementation SLRemoteTaskManager

- (SLRemoteTaskManager)initWithDelegate:(id)delegate targetSerialQueue:(id)queue synchronous:(BOOL)synchronous
{
  synchronousCopy = synchronous;
  v28 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = SLRemoteTaskManager;
  v10 = [(SLRemoteTaskManager *)&v19 init];
  v11 = v10;
  if (v10)
  {
    v12 = SLFrameworkLogHandle(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = @"NO";
      *buf = 134218754;
      v21 = v11;
      if (synchronousCopy)
      {
        v13 = @"YES";
      }

      v22 = 2112;
      v23 = delegateCopy;
      v24 = 2112;
      v25 = queueCopy;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_231772000, v12, OS_LOG_TYPE_INFO, "[%p] initWithDelegate: %@ targetSerialQueue: %@ synchronous: %@", buf, 0x2Au);
    }

    objc_storeWeak(&v11->_delegate, delegateCopy);
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_attr_make_with_qos_class(v14, QOS_CLASS_USER_INTERACTIVE, 0);

    v16 = dispatch_queue_create("com.apple.SocialLayer.SLRemoteTaskManager", v15);
    backgroundConcurrentQueue = v11->_backgroundConcurrentQueue;
    v11->_backgroundConcurrentQueue = v16;

    objc_storeStrong(&v11->_targetSerialQueue, queue);
    v11->_synchronous = synchronousCopy;
  }

  return v11;
}

- (void)startTask:(id)task withTimeout:(double)timeout timeoutHandler:(id)handler errorHandler:(id)errorHandler
{
  taskCopy = task;
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  if ([(SLRemoteTaskManager *)self synchronous])
  {
    [(SLRemoteTaskManager *)self targetSerialQueue];
  }

  else
  {
    [(SLRemoteTaskManager *)self backgroundConcurrentQueue];
  }
  v13 = ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__SLRemoteTaskManager_startTask_withTimeout_timeoutHandler_errorHandler___block_invoke;
  block[3] = &unk_278927818;
  timeoutCopy = timeout;
  block[4] = self;
  v18 = handlerCopy;
  v19 = errorHandlerCopy;
  v20 = taskCopy;
  v14 = taskCopy;
  v15 = errorHandlerCopy;
  v16 = handlerCopy;
  dispatch_async(v13, block);
}

void __73__SLRemoteTaskManager_startTask_withTimeout_timeoutHandler_errorHandler___block_invoke(uint64_t a1)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__14;
  v29 = __Block_byref_object_dispose__14;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__14;
  v23 = __Block_byref_object_dispose__14;
  v2 = [*(a1 + 32) targetSerialQueue];
  v3 = *(a1 + 64);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__SLRemoteTaskManager_startTask_withTimeout_timeoutHandler_errorHandler___block_invoke_5;
  v16[3] = &unk_278926290;
  v18 = &v25;
  v17 = *(a1 + 40);
  v24 = [SLGracePeriodTimer timerWithQueue:v2 delay:v16 action:v3];

  v4 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__SLRemoteTaskManager_startTask_withTimeout_timeoutHandler_errorHandler___block_invoke_2;
  v12[3] = &unk_2789277C8;
  v14 = &v25;
  v15 = &v19;
  v13 = *(a1 + 48);
  v5 = [v4 _serviceWithErrorHandler:v12];
  if (v5)
  {
    [v20[5] arm];
    v6 = (*(*(a1 + 56) + 16))();
    v7 = v26[5];
    v26[5] = v6;

    v8 = [*(a1 + 32) targetSerialQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __73__SLRemoteTaskManager_startTask_withTimeout_timeoutHandler_errorHandler___block_invoke_3;
    v11[3] = &unk_2789277F0;
    v11[4] = &v25;
    v11[5] = &v19;
    dispatch_async(v8, v11);
  }

  else
  {
    v9 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA068];
    v32[0] = @"XPC connection error. We were unable to retrieve a connection to the handshake service in sociallayerd";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v8 = [v9 errorWithDomain:@"com.apple.SocialLayer.SLRemoteTaskManager" code:1 userInfo:v10];

    (*(*(a1 + 48) + 16))();
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
}

uint64_t __73__SLRemoteTaskManager_startTask_withTimeout_timeoutHandler_errorHandler___block_invoke_5(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) cancel];
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void __73__SLRemoteTaskManager_startTask_withTimeout_timeoutHandler_errorHandler___block_invoke_2(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  [*(*(a1[5] + 8) + 40) cancel];
  if ([*(*(a1[6] + 8) + 40) isValid])
  {
    [*(*(a1[6] + 8) + 40) suppress];
    v2 = MEMORY[0x277CCA9B8];
    v5 = *MEMORY[0x277CCA068];
    v6[0] = @"XPC connection error. sociallayerd may have crashed";
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
    v4 = [v2 errorWithDomain:@"com.apple.SocialLayer.SLRemoteTaskManager" code:1 userInfo:v3];

    (*(a1[4] + 16))();
  }
}

void *__73__SLRemoteTaskManager_startTask_withTimeout_timeoutHandler_errorHandler___block_invoke_3(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 40) isCancelled];
  if ((result & 1) == 0)
  {
    result = [*(*(*(a1 + 40) + 8) + 40) isValid];
    if ((result & 1) == 0)
    {
      v3 = *(*(*(a1 + 32) + 8) + 40);

      return [v3 cancel];
    }
  }

  return result;
}

- (id)_serviceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(SLRemoteTaskManager *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(SLRemoteTaskManager *)self delegate];
    v8 = [delegate2 taskServiceWithErrorHandler:handlerCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (SLRemoteTaskManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end