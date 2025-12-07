@interface HMDeviceSetupOperationHandler
- (void)_handleReceivedRequest:(id)request responseHandler:(id)handler;
- (void)registerMessageHandlersForSession:(id)session;
@end

@implementation HMDeviceSetupOperationHandler

- (void)_handleReceivedRequest:(id)request responseHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"TRRequestMessageHandler"];
  v9 = requestCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    [v8 markWithReason:@"Received request"];
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v15;
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Received request: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    qualityOfService = [v11 qualityOfService];
    objc_initWeak(buf, selfCopy);
    setupSession = [(HMDeviceSetupOperationHandlerBase *)selfCopy setupSession];
    payload = [v11 payload];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __72__HMDeviceSetupOperationHandler__handleReceivedRequest_responseHandler___block_invoke;
    v24[3] = &unk_1E754BD08;
    v25 = v8;
    v26 = handlerCopy;
    objc_copyWeak(&v27, buf);
    [setupSession sendExchangeData:payload qualityOfService:qualityOfService completionHandler:v24];

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v22;
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Received an unexpected request: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    if (handlerCopy)
    {
      v23 = [MEMORY[0x1E696ABC0] hmErrorWithCode:22];
      (*(handlerCopy + 2))(handlerCopy, v23, 0);
    }
  }
}

void __72__HMDeviceSetupOperationHandler__handleReceivedRequest_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) begin];
  if (*(a1 + 40))
  {
    v7 = [[HMDeviceSetupResponseMessage alloc] initWithPayload:v5];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [*(a1 + 32) markWithReason:@"Sending response"];
    v9 = objc_autoreleasePoolPush();
    v10 = WeakRetained;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v12;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Sending response: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    (*(*(a1 + 40) + 16))();
  }

  [*(a1 + 32) end];
}

- (void)registerMessageHandlersForSession:(id)session
{
  v15 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Registering the handlers", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v12.receiver = selfCopy;
  v12.super_class = HMDeviceSetupOperationHandler;
  [(HMDeviceSetupOperationHandlerBase *)&v12 configureSessionForMessages];
  objc_initWeak(buf, selfCopy);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__HMDeviceSetupOperationHandler_registerMessageHandlersForSession___block_invoke;
  aBlock[3] = &unk_1E7547B18;
  objc_copyWeak(&v11, buf);
  v9 = _Block_copy(aBlock);
  [sessionCopy setRequestHandler:v9 forRequestClass:objc_opt_class()];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __67__HMDeviceSetupOperationHandler_registerMessageHandlersForSession___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleReceivedRequest:v6 responseHandler:v5];
}

@end