@interface HMDRapportDeviceClientWrapper
+ (id)logCategory;
- (HMDRapportDeviceClientWrapper)initWithClient:(id)client;
- (void)_completeQueuedRequestsWithError:(id)error;
- (void)_queueRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler;
- (void)activateWithCompletion:(id)completion;
- (void)invalidate;
- (void)sendRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler;
@end

@implementation HMDRapportDeviceClientWrapper

- (void)_completeQueuedRequestsWithError:(id)error
{
  v37 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (self)
  {
    requestQueue = self->_requestQueue;
  }

  else
  {
    requestQueue = 0;
  }

  if (([(NSMutableArray *)requestQueue hmf_isEmpty]& 1) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      if (self)
      {
        v9 = selfCopy->_requestQueue;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
      v11 = [(NSMutableArray *)v10 count];
      v22 = v6;
      if (self)
      {
        client = selfCopy->_client;
      }

      else
      {
        client = 0;
      }

      v13 = client;
      destinationDevice = [(RPCompanionLinkClient *)v13 destinationDevice];
      *buf = 138544130;
      v30 = v23;
      v31 = 2048;
      v32 = v11;
      v33 = 2112;
      v34 = destinationDevice;
      v35 = 2112;
      v36 = errorCopy;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Completing %lu queued request(s) to device: %@, with error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v6);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    if (self)
    {
      v15 = selfCopy->_requestQueue;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          (*(*(*(&v24 + 1) + 8 * i) + 16))();
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v18);
    }

    if (self)
    {
      v21 = selfCopy->_requestQueue;
    }

    else
    {
      v21 = 0;
    }

    [(NSMutableArray *)v21 removeAllObjects];
  }
}

- (void)_queueRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler
{
  v38 = *MEMORY[0x277D85DE8];
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    if (selfCopy)
    {
      client = selfCopy->_client;
    }

    else
    {
      client = 0;
    }

    v19 = client;
    destinationDevice = [(RPCompanionLinkClient *)v19 destinationDevice];
    *buf = 138543618;
    v35 = v17;
    v36 = 2112;
    v37 = destinationDevice;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Queuing request to device: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  objc_initWeak(buf, selfCopy);
  if (selfCopy)
  {
    requestQueue = selfCopy->_requestQueue;
  }

  else
  {
    requestQueue = 0;
  }

  v22 = requestQueue;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__HMDRapportDeviceClientWrapper__queueRequestID_request_options_responseHandler___block_invoke;
  aBlock[3] = &unk_278672B10;
  objc_copyWeak(&v33, buf);
  v23 = handlerCopy;
  v32 = v23;
  v24 = dCopy;
  v29 = v24;
  v25 = requestCopy;
  v30 = v25;
  v26 = optionsCopy;
  v31 = v26;
  v27 = _Block_copy(aBlock);
  [(NSMutableArray *)v22 addObject:v27];

  objc_destroyWeak(&v33);
  objc_destroyWeak(buf);
}

void __81__HMDRapportDeviceClientWrapper__queueRequestID_request_options_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = WeakRetained;
  if (v6)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (WeakRetained)
    {
      v5 = *(WeakRetained + 1);
    }

    else
    {
      v5 = 0;
    }

    [v5 sendRequestID:*(a1 + 32) request:*(a1 + 40) options:*(a1 + 48) responseHandler:*(a1 + 56)];
  }
}

- (void)sendRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  if (self && (activateState = self->_activateState, activateState >= 2))
  {
    if (activateState == 3)
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3212];
      v17 = [v15 hmInternalErrorWithCode:3203 underlyingError:v16];
      v18 = [v15 hmErrorWithCode:54 description:@"Communication failure." reason:@"Cannot send request on client that failed to activate." suggestion:0 underlyingError:v17];
      (*(handlerCopy + 2))(handlerCopy, 0, 0, v18);
    }

    else
    {
      if (activateState != 2)
      {
        v19 = objc_autoreleasePoolPush();
        selfCopy = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          v22 = HMFGetLogIdentifier();
          v25 = 138543362;
          v26 = v22;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: State is not activated.", &v25, 0xCu);
        }

        objc_autoreleasePoolPop(v19);
        v23 = [[HMDAssertionLogEvent alloc] initWithReason:@"State is not activated."];
        v24 = +[HMDMetricsManager sharedLogEventSubmitter];
        [v24 submitLogEvent:v23];
      }

      [(RPCompanionLinkClient *)self->_client sendRequestID:dCopy request:requestCopy options:optionsCopy responseHandler:handlerCopy];
    }
  }

  else
  {
    [(HMDRapportDeviceClientWrapper *)self _queueRequestID:dCopy request:requestCopy options:optionsCopy responseHandler:handlerCopy];
  }
}

- (void)invalidate
{
  if (self)
  {
    self->_activateState = 3;
    v3 = MEMORY[0x277CCA9B8];
    v4 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3211];
    v5 = [v3 hmInternalErrorWithCode:3203 underlyingError:v4];
    v6 = [v3 hmErrorWithCode:54 description:@"Communication failure." reason:@"The client was invalidated." suggestion:0 underlyingError:v5];
    [(HMDRapportDeviceClientWrapper *)self _completeQueuedRequestsWithError:v6];

    client = self->_client;
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3211];
    v10 = [v8 hmInternalErrorWithCode:3203 underlyingError:v9];
    v11 = [v8 hmErrorWithCode:54 description:@"Communication failure." reason:@"The client was invalidated." suggestion:0 underlyingError:v10];
    [0 _completeQueuedRequestsWithError:v11];

    client = 0;
  }

  [(RPCompanionLinkClient *)client invalidate];
}

- (void)activateWithCompletion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (self)
  {
    if (self->_activateState)
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543362;
        v22 = v16;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Activate called more than once.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      v17 = [[HMDAssertionLogEvent alloc] initWithReason:@"Activate called more than once."];
      v18 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v18 submitLogEvent:v17];

      if (self->_activateState)
      {
        v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 description:@"Unexpected error." reason:@"Activate called more than once." suggestion:0];
        completionCopy[2](completionCopy, v12);
        goto LABEL_11;
      }
    }

    self->_activateState = 1;
  }

  v5 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    if (self)
    {
      client = selfCopy2->_client;
    }

    else
    {
      client = 0;
    }

    v10 = client;
    destinationDevice = [(RPCompanionLinkClient *)v10 destinationDevice];
    *buf = 138543618;
    v22 = v8;
    v23 = 2112;
    v24 = destinationDevice;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Activating client for destination: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (self)
  {
    self = selfCopy2->_client;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __56__HMDRapportDeviceClientWrapper_activateWithCompletion___block_invoke;
  v19[3] = &unk_278689A68;
  v19[4] = selfCopy2;
  v20 = completionCopy;
  [(HMDRapportDeviceClientWrapper *)self activateWithCompletion:v19];
  v12 = v20;
LABEL_11:
}

void __56__HMDRapportDeviceClientWrapper_activateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (v3)
  {
    v4 = MEMORY[0x277CCA9B8];
    v5 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3203 underlyingError:v3];
    v6 = [v4 hmErrorWithCode:54 description:@"Communication failure." reason:@"Failed to activate Rapport client." suggestion:0 underlyingError:v5];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 40) + 16))();
  v7 = *(a1 + 32);
  if (v7 && *(v7 + 16) == 1)
  {
    v8 = 2;
    if (v6)
    {
      v8 = 3;
    }

    *(v7 + 16) = v8;
    [*(a1 + 32) _completeQueuedRequestsWithError:v6];
  }
}

- (HMDRapportDeviceClientWrapper)initWithClient:(id)client
{
  clientCopy = client;
  v11.receiver = self;
  v11.super_class = HMDRapportDeviceClientWrapper;
  v6 = [(HMDRapportDeviceClientWrapper *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_client, client);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    requestQueue = v7->_requestQueue;
    v7->_requestQueue = v8;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t5_39925 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t5_39925, &__block_literal_global_39926);
  }

  v3 = logCategory__hmf_once_v6_39927;

  return v3;
}

void __44__HMDRapportDeviceClientWrapper_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v6_39927;
  logCategory__hmf_once_v6_39927 = v0;
}

@end