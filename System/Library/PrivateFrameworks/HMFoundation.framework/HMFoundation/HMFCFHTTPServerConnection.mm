@interface HMFCFHTTPServerConnection
@end

@implementation HMFCFHTTPServerConnection

void __66___HMFCFHTTPServerConnection__sendStatusCode_forRequest_bodyData___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = WeakRetained;
    v9 = HMFGetOSLogHandle(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier(v7);
      v11 = 138543874;
      v12 = v10;
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_22ADEC000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Failed to send internal response, %@, with error: %@", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void __43___HMFCFHTTPServerConnection_sendResponse___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) request];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v6 = HMFGetOSLogHandle(v4, v5);
  v7 = v6;
  if (v2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier(v4);
      v9 = *(a1 + 32);
      v17 = 138543618;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_INFO, "%{public}@Sending response: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v10 = [v2 activity];
    [v10 markWithReason:@"Sending"];

    v11 = [*(a1 + 40) pendingRespones];
    [v11 addObject:*(a1 + 32)];

    [*(a1 + 32) responseRef];
    _CFHTTPServerResponseEnqueue();
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier(v4);
      v13 = *(a1 + 32);
      v17 = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_ERROR, "%{public}@The response is invalid: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v14 = [*(a1 + 32) completionHandler];

    if (v14)
    {
      v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      v16 = [*(a1 + 32) completionHandler];
      (v16)[2](v16, v15);

      [*(a1 + 32) setCompletionHandler:0];
    }
  }
}

uint64_t __41___HMFCFHTTPServerConnection_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle(@"Networking.HTTP.Server.Connection.Internal", @"com.apple.HMFoundation");
  v1 = qword_280AFC360;
  qword_280AFC360 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end