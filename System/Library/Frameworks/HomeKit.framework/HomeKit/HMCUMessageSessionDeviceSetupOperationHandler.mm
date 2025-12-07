@interface HMCUMessageSessionDeviceSetupOperationHandler
- (int)convertSetupErrorToOSStatus:(id)status;
- (void)_handleReceivedRequestDictionary:(id)dictionary responseHandler:(id)handler;
- (void)registerMessageHandlersForMessageSession:(id)session;
@end

@implementation HMCUMessageSessionDeviceSetupOperationHandler

- (int)convertSetupErrorToOSStatus:(id)status
{
  statusCopy = status;
  domain = [statusCopy domain];
  v5 = [domain isEqualToString:@"HMErrorDomain"];

  if (v5)
  {
    v6 = -27480;
  }

  else
  {
    domain2 = [statusCopy domain];
    v8 = [domain2 isEqualToString:*MEMORY[0x1E69A2978]];

    if (!v8)
    {
      v9 = -6700;
      goto LABEL_7;
    }

    v6 = -15080;
  }

  v9 = (v6 | 0x40000) + [statusCopy code];
LABEL_7:

  return v9;
}

- (void)_handleReceivedRequestDictionary:(id)dictionary responseHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  handlerCopy = handler;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"TRRequestMessageHandler"];
  v9 = [dictionaryCopy dataForKey:@"da"];
  v10 = [dictionaryCopy hmf_numberForKey:@"qos"];
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      integerValue = [v10 integerValue];
    }

    else
    {
      integerValue = -1;
    }

    [v8 markWithReason:@"Received request"];
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v23;
      v33 = 2112;
      v34 = dictionaryCopy;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_INFO, "%{public}@Received request: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    objc_initWeak(buf, selfCopy);
    setupSession = [(HMDeviceSetupOperationHandlerBase *)selfCopy setupSession];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __98__HMCUMessageSessionDeviceSetupOperationHandler__handleReceivedRequestDictionary_responseHandler___block_invoke;
    v25[3] = &unk_1E754BD08;
    v26 = v8;
    objc_copyWeak(&v28, buf);
    v27 = handlerCopy;
    [setupSession sendExchangeData:v9 qualityOfService:integerValue completionHandler:v25];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v16;
      v33 = 2112;
      v34 = dictionaryCopy;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Received an unexpected request with no data %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x1E696ABC0] hmErrorWithCode:27];
    code = [v17 code];
    v29 = @"err";
    v30 = v17;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    (*(handlerCopy + 2))(handlerCopy, (code + 300200), 0, v19);
  }
}

void __98__HMCUMessageSessionDeviceSetupOperationHandler__handleReceivedRequestDictionary_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) begin];
  v7 = [MEMORY[0x1E695DF90] dictionary];
  [v7 setObject:v5 forKeyedSubscript:@"da"];
  [v7 setObject:v6 forKeyedSubscript:@"err"];
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
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Sending response payload: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  if (v6)
  {
    [v10 convertSetupErrorToOSStatus:v6];
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) end];
}

- (void)registerMessageHandlersForMessageSession:(id)session
{
  v14 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v13 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Registering the handlers", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v11.receiver = selfCopy;
  v11.super_class = HMCUMessageSessionDeviceSetupOperationHandler;
  [(HMDeviceSetupOperationHandlerBase *)&v11 configureSessionForMessages];
  objc_initWeak(buf, selfCopy);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __90__HMCUMessageSessionDeviceSetupOperationHandler_registerMessageHandlersForMessageSession___block_invoke;
  v9[3] = &unk_1E754BCE0;
  objc_copyWeak(&v10, buf);
  [sessionCopy registerRequestID:@"HMDSS.cu.rq" options:0 handler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __90__HMCUMessageSessionDeviceSetupOperationHandler_registerMessageHandlersForMessageSession___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleReceivedRequestDictionary:v7 responseHandler:v6];
}

@end