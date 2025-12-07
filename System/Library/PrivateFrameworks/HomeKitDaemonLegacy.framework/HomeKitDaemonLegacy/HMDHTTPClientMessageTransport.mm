@interface HMDHTTPClientMessageTransport
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isReachable;
- (BOOL)isRunning;
- (HMDHTTPClientMessageTransport)init;
- (HMDHTTPClientMessageTransport)initWithIdentifier:(id)identifier netService:(id)service;
- (HMDHTTPClientMessageTransportDelegate)delegate;
- (NSUUID)sessionIdentifier;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)logIdentifier;
- (id)shortDescription;
- (void)_receiveMessage;
- (void)_sendResponseMessage:(id)message forTransactionIdentifier:(id)identifier;
- (void)_stopWithError:(id)error;
- (void)client:(id)client didRequestPingWithCompletionHandler:(id)handler;
- (void)clientDidBecomeUnreachable:(id)unreachable;
- (void)dealloc;
- (void)netService:(id)service didUpdateTXTRecord:(id)record;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)sendMessage:(id)message timeout:(double)timeout completionHandler:(id)handler;
- (void)sendPingWithCompletionHandler:(id)handler;
- (void)setRunning:(BOOL)running;
- (void)startWithCompletionHandler:(id)handler;
@end

@implementation HMDHTTPClientMessageTransport

- (HMDHTTPClientMessageTransportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(HMDHTTPClientMessageTransport *)self debugDescription];
  [dictionary setObject:v5 forKeyedSubscript:*MEMORY[0x277D0F0D0]];

  client = [(HMDHTTPClientMessageTransport *)self client];
  v7 = [client debugDescription];
  [dictionary setObject:v7 forKeyedSubscript:@"client"];

  netService = [(HMDHTTPClientMessageTransport *)self netService];
  v9 = [netService debugDescription];
  [dictionary setObject:v9 forKeyedSubscript:*MEMORY[0x277D0F108]];

  return dictionary;
}

- (void)netService:(id)service didUpdateTXTRecord:(id)record
{
  v16 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  recordCopy = record;
  hmd_sessionIdentifier = [serviceCopy hmd_sessionIdentifier];
  if (hmd_sessionIdentifier)
  {
    os_unfair_lock_lock_with_options();
    if (HMFEqualObjects())
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      v9 = self->_sessionIdentifier == 0;
      objc_storeStrong(&self->_sessionIdentifier, hmd_sessionIdentifier);
      os_unfair_lock_unlock(&self->_lock);
      if (!v9)
      {
        v10 = objc_autoreleasePoolPush();
        selfCopy = self;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier();
          v14 = 138543362;
          v15 = v13;
          _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Received notification session changed, resetting", &v14, 0xCu);
        }

        objc_autoreleasePoolPop(v10);
        __HMDHTTPClientMessageTransportReset(selfCopy);
      }
    }
  }
}

- (id)logIdentifier
{
  remoteDevice = [(HMDHTTPClientMessageTransport *)self remoteDevice];
  identifier = [remoteDevice identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (void)clientDidBecomeUnreachable:(id)unreachable
{
  v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:@"Communication failure." reason:@"The server is no longer reachable" suggestion:0];
  [(HMDHTTPClientMessageTransport *)self _stopWithError:v4];
}

- (void)client:(id)client didRequestPingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HMDHTTPClientMessageTransport_client_didRequestPingWithCompletionHandler___block_invoke;
  v7[3] = &unk_279735558;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(HMDHTTPClientMessageTransport *)self sendPingWithCompletionHandler:v7];
}

uint64_t __76__HMDHTTPClientMessageTransport_client_didRequestPingWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0);
  }

  return result;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v26 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (self->_netService == objectCopy)
  {
    v12 = NSStringFromSelector(sel_port);
    v13 = [pathCopy isEqualToString:v12];

    if (v13)
    {
      v14 = [changeCopy hmf_numberForKey:*MEMORY[0x277CCA300]];
      v15 = [changeCopy hmf_numberForKey:*MEMORY[0x277CCA2F0]];
      if ((HMFEqualObjects() & 1) == 0 && [v14 integerValue] != -1)
      {
        v16 = objc_autoreleasePoolPush();
        selfCopy = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v19 = HMFGetLogIdentifier();
          v20 = 138543874;
          v21 = v19;
          v22 = 2112;
          v23 = v14;
          v24 = 2112;
          v25 = v15;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Port change from '%@' to '%@'", &v20, 0x20u);
        }

        objc_autoreleasePoolPop(v16);
        __HMDHTTPClientMessageTransportReset(selfCopy);
      }
    }
  }
}

- (void)sendPingWithCompletionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = objc_alloc(MEMORY[0x277D0F840]);
  v6 = MEMORY[0x277CBEBC0];
  client = [(HMDHTTPClientMessageTransport *)self client];
  baseURL = [client baseURL];
  v9 = [v6 URLWithString:@"/ping" relativeToURL:baseURL];
  v10 = [v5 initWithURL:v9 method:@"GET" body:0 timeoutInterval:5.0];

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v21 = v14;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Sending ping request: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  objc_initWeak(buf, selfCopy);
  client2 = [(HMDHTTPClientMessageTransport *)selfCopy client];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__HMDHTTPClientMessageTransport_sendPingWithCompletionHandler___block_invoke;
  v17[3] = &unk_279735530;
  objc_copyWeak(&v19, buf);
  v16 = handlerCopy;
  v18 = v16;
  [client2 sendRequest:v10 completionHandler:v17];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

void __63__HMDHTTPClientMessageTransport_sendPingWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v11;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Received response to ping with error: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (v6)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v9;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Failed to ping server", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    (*(v16 + 16))(v16, v6);
  }
}

- (void)sendMessage:(id)message timeout:(double)timeout completionHandler:(id)handler
{
  v38 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handlerCopy = handler;
  v33 = 0;
  v10 = [MEMORY[0x277CCAC58] dataWithPropertyList:messageCopy format:100 options:0 error:&v33];
  v11 = v33;
  if (v10)
  {
    if (timeout <= 0.0)
    {
      timeout = 60.0;
    }

    v12 = objc_alloc(MEMORY[0x277D0F840]);
    v13 = MEMORY[0x277CBEBC0];
    client = [(HMDHTTPClientMessageTransport *)self client];
    baseURL = [client baseURL];
    v16 = [v13 URLWithString:@"/sendMessage" relativeToURL:baseURL];
    v17 = [v12 initWithURL:v16 method:@"POST" body:v10 timeoutInterval:timeout];

    identifier = [(HMDHTTPClientMessageTransport *)self identifier];
    uUIDString = [identifier UUIDString];
    [v17 setHeaderValue:uUIDString forHeaderKey:@"Client-Identifier"];

    v20 = +[HMDHTTPMessageTransport protocolVersion];
    versionString = [v20 versionString];
    [v17 setHeaderValue:versionString forHeaderKey:@"Protocol-Version"];

    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v25;
      v36 = 2112;
      v37 = v17;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Sending message request: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    client2 = [(HMDHTTPClientMessageTransport *)selfCopy client];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __71__HMDHTTPClientMessageTransport_sendMessage_timeout_completionHandler___block_invoke;
    v31[3] = &unk_279735508;
    v31[4] = selfCopy;
    v32 = handlerCopy;
    [client2 sendRequest:v17 completionHandler:v31];
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v30;
      v36 = 2112;
      v37 = v11;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize response message with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, v11);
    }
  }
}

void __71__HMDHTTPClientMessageTransport_sendMessage_timeout_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v50 = v10;
    v51 = 2112;
    v52 = v5;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Received response to /sendMessage: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (!v6)
  {
    v16 = [v5 body];
    v17 = [v16 length];

    if (v17)
    {
      v18 = MEMORY[0x277CCAC58];
      v19 = [v5 body];
      v48 = 0;
      v20 = [v18 propertyListWithData:v19 options:0 format:0 error:&v48];
      v21 = v48;

      if (v20)
      {
        v22 = v20;
        objc_opt_class();
        v23 = objc_opt_isKindOfClass() & 1;
        if (v23)
        {
          v24 = v22;
        }

        else
        {
          v24 = 0;
        }

        v25 = v24;

        if (v23)
        {
          v26 = [v5 headerFields];
          v27 = [v26 hmf_stringForKey:@"Protocol-Version"];

          if (v27)
          {
            v28 = [objc_alloc(MEMORY[0x277D0F940]) initWithString:v27];
          }

          else
          {
            v28 = 0;
          }

          if ([HMDHTTPMessageTransport protocolVersionSupportsExtendedMessages:v28])
          {
            v29 = [v22 hmf_dictionaryForKey:@"p"];
            v45 = [v22 hmf_numberForKey:@"s"];
            v30 = [MEMORY[0x277CCA9B8] hmd_HTTPMessageTransportErrorWithCode:{objc_msgSend(v45, "unsignedIntegerValue")}];
          }

          else
          {
            v29 = v22;
            v30 = 0;
          }

LABEL_32:
          v46 = *(a1 + 40);
          if (v46)
          {
            (*(v46 + 16))(v46, v29, v30);
          }

          goto LABEL_34;
        }

        v36 = objc_autoreleasePoolPush();
        v37 = *(a1 + 32);
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v47 = HMFGetLogIdentifier();
          v39 = [*(a1 + 32) shortDescription];
          v40 = objc_opt_class();
          *buf = 138543874;
          v50 = v47;
          v51 = 2112;
          v52 = v39;
          v53 = 2112;
          v54 = v40;
          v41 = v21;
          v42 = v36;
          v43 = v40;
          _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@[%@ Invalid message class type: %@", buf, 0x20u);

          v36 = v42;
          v21 = v41;
        }

        objc_autoreleasePoolPop(v36);
        if (*(a1 + 40))
        {
          v44 = [MEMORY[0x277CCA9B8] hmErrorWithCode:22 description:@"Invalid class." reason:@"Invalid message class." suggestion:0];
          (*(*(a1 + 40) + 16))();
        }
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        v32 = *(a1 + 32);
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          *buf = 138543618;
          v50 = v34;
          v51 = 2112;
          v52 = v21;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize message payload with error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        v35 = *(a1 + 40);
        if (v35)
        {
          (*(v35 + 16))(v35, 0, v21);
        }
      }

      v29 = 0;
      v30 = 0;
LABEL_34:

      goto LABEL_35;
    }

    v29 = 0;
    v30 = 0;
    goto LABEL_32;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 32);
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v50 = v14;
    v51 = 2112;
    v52 = v6;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to send message with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))(v15, 0, v6);
  }

LABEL_35:
}

- (void)_sendResponseMessage:(id)message forTransactionIdentifier:(id)identifier
{
  v32 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  identifierCopy = identifier;
  if (messageCopy)
  {
    v27 = 0;
    v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:messageCopy format:100 options:0 error:&v27];
    v9 = v27;
    if (!v8)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v29 = v13;
        v30 = 2112;
        v31 = v9;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize response message with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  v14 = objc_alloc(MEMORY[0x277D0F840]);
  v15 = MEMORY[0x277CBEBC0];
  client = [(HMDHTTPClientMessageTransport *)self client];
  baseURL = [client baseURL];
  v18 = [v15 URLWithString:@"/sendResponse" relativeToURL:baseURL];
  v19 = [v14 initWithURL:v18 method:@"PUT" body:v8 timeoutInterval:60.0];

  identifier = [(HMDHTTPClientMessageTransport *)self identifier];
  uUIDString = [identifier UUIDString];
  [v19 setHeaderValue:uUIDString forHeaderKey:@"Client-Identifier"];

  uUIDString2 = [identifierCopy UUIDString];
  [v19 setHeaderValue:uUIDString2 forHeaderKey:@"Transaction-Identifier"];

  client2 = [(HMDHTTPClientMessageTransport *)self client];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __79__HMDHTTPClientMessageTransport__sendResponseMessage_forTransactionIdentifier___block_invoke;
  v25[3] = &unk_2797354E0;
  v25[4] = self;
  v26 = identifierCopy;
  v24 = identifierCopy;
  [client2 sendRequest:v19 completionHandler:v25];
}

void __79__HMDHTTPClientMessageTransport__sendResponseMessage_forTransactionIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      v18 = 138543874;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v6;
      v13 = "%{public}@Failed to send response for transaction, %@, with error: %@";
      v14 = v10;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 32;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v14, v15, v13, &v18, v16);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v17 = *(a1 + 40);
    v18 = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = v17;
    v13 = "%{public}@Successfully sent response for transaction: %@";
    v14 = v10;
    v15 = OS_LOG_TYPE_DEBUG;
    v16 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
}

- (void)_receiveMessage
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(HMDHTTPClientMessageTransport *)self isRunning])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Send long-polled /receiveMessage", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v7 = objc_alloc(MEMORY[0x277D0F840]);
    v8 = MEMORY[0x277CBEBC0];
    client = [(HMDHTTPClientMessageTransport *)selfCopy client];
    baseURL = [client baseURL];
    v11 = [v8 URLWithString:@"/receiveMessage" relativeToURL:baseURL];
    v12 = [v7 initWithURL:v11 method:@"GET" body:0 timeoutInterval:3600.0];

    identifier = [(HMDHTTPClientMessageTransport *)selfCopy identifier];
    uUIDString = [identifier UUIDString];
    [v12 setHeaderValue:uUIDString forHeaderKey:@"Client-Identifier"];

    date = [MEMORY[0x277CBEAA8] date];
    client2 = [(HMDHTTPClientMessageTransport *)selfCopy client];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __48__HMDHTTPClientMessageTransport__receiveMessage__block_invoke;
    v18[3] = &unk_2797354E0;
    v18[4] = selfCopy;
    v19 = date;
    v17 = date;
    [client2 sendRequest:v12 completionHandler:v18];
  }
}

void __48__HMDHTTPClientMessageTransport__receiveMessage__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v46 = v10;
    v47 = 2112;
    v48 = v5;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Received a response to /receiveMessage: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (!v6)
  {
    v15 = [v5 headerFields];
    v16 = [v15 hmf_UUIDForKey:@"Transaction-Identifier"];

    if (v16)
    {
      v17 = MEMORY[0x277CCAC58];
      v18 = [v5 body];
      v44 = 0;
      v19 = [v17 propertyListWithData:v18 options:0 format:0 error:&v44];
      v20 = v44;

      if (v19)
      {
        v21 = v19;
        objc_opt_class();
        v22 = objc_opt_isKindOfClass() & 1;
        if (v22)
        {
          v23 = v21;
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;

        if (v22)
        {
          v25 = [*(a1 + 32) delegate];
          v26 = *(a1 + 32);
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __48__HMDHTTPClientMessageTransport__receiveMessage__block_invoke_42;
          v42[3] = &unk_2797354B8;
          v42[4] = v26;
          v43 = v16;
          [v25 client:v26 didReceiveMessage:v21 completionHandler:v42];
        }

        else
        {
          context = objc_autoreleasePoolPush();
          v35 = *(a1 + 32);
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v37 = v40 = v24;
            v38 = objc_opt_class();
            *buf = 138543618;
            v46 = v37;
            v47 = 2112;
            v48 = v38;
            v39 = v38;
            _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@Invalid message class type: %@", buf, 0x16u);

            v24 = v40;
          }

          objc_autoreleasePoolPop(context);
        }
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        v32 = *(a1 + 32);
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          *buf = 138543618;
          v46 = v34;
          v47 = 2112;
          v48 = v20;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize message payload with error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
      }
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = *(a1 + 32);
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543362;
        v46 = v30;
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Missing the message transaction identifier", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v27);
    }

    v14 = *(a1 + 32);
    goto LABEL_25;
  }

  v11 = [MEMORY[0x277CBEAA8] date];
  [v11 timeIntervalSinceDate:*(a1 + 40)];
  v13 = v12;

  v14 = *(a1 + 32);
  if (v13 > 60.0)
  {
LABEL_25:
    [v14 _receiveMessage];
    goto LABEL_26;
  }

  [v14 _stopWithError:v6];
LABEL_26:
}

- (void)_stopWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  client = [(HMDHTTPClientMessageTransport *)self client];

  if (client)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = errorCopy;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Stopping the client with error: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDHTTPClientMessageTransport *)selfCopy setRunning:0];
    client2 = [(HMDHTTPClientMessageTransport *)selfCopy client];
    [client2 cancelPendingRequests];

    delegate = [(HMDHTTPClientMessageTransport *)selfCopy delegate];
    [delegate client:selfCopy didStopWithError:errorCopy];
  }
}

- (void)startWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(HMDHTTPClientMessageTransport *)self isReachable])
  {
    if (![(HMDHTTPClientMessageTransport *)self isRunning])
    {
      [(HMDHTTPClientMessageTransport *)self setRunning:1];
      [(HMDHTTPClientMessageTransport *)self _receiveMessage];
      netService = [(HMDHTTPClientMessageTransport *)self netService];
      [netService resolveWithTimeout:0 completionHandler:0.0];
    }

    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:@"Communication Failure." reason:@"The server is unreachable." suggestion:0];
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v5);
  }
}

- (BOOL)isReachable
{
  client = [(HMDHTTPClientMessageTransport *)self client];
  isReachable = [client isReachable];

  return isReachable;
}

- (void)setRunning:(BOOL)running
{
  os_unfair_lock_lock_with_options();
  self->_running = running;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isRunning
{
  os_unfair_lock_lock_with_options();
  running = self->_running;
  os_unfair_lock_unlock(&self->_lock);
  return running;
}

- (NSUUID)sessionIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_sessionIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  v5 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  if (pointerCopy)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v7 = &stru_286509E58;
  }

  netService = [(HMDHTTPClientMessageTransport *)self netService];
  name = [netService name];
  sessionIdentifier = [(HMDHTTPClientMessageTransport *)self sessionIdentifier];
  uUIDString = [sessionIdentifier UUIDString];
  [(HMDHTTPClientMessageTransport *)self isReachable];
  v12 = HMFBooleanToString();
  [(HMDHTTPClientMessageTransport *)self isRunning];
  v13 = HMFBooleanToString();
  v14 = [v5 stringWithFormat:@"<%@%@, Identifier = %@, Session Identifier = %@, Reachable = %@, Running = %@>", shortDescription, v7, name, uUIDString, v12, v13];

  if (pointerCopy)
  {
  }

  return v14;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  netService = [(HMDHTTPClientMessageTransport *)self netService];
  name = [netService name];
  v7 = [v3 stringWithFormat:@"%@ %@", shortDescription, name];

  return v7;
}

- (void)dealloc
{
  netService = self->_netService;
  v4 = NSStringFromSelector(sel_port);
  [(HMFNetService *)netService removeObserver:self forKeyPath:v4];

  v5.receiver = self;
  v5.super_class = HMDHTTPClientMessageTransport;
  [(HMDHTTPClientMessageTransport *)&v5 dealloc];
}

- (HMDHTTPClientMessageTransport)initWithIdentifier:(id)identifier netService:(id)service
{
  v34 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  serviceCopy = service;
  v8 = serviceCopy;
  if (!identifierCopy)
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v28;
      v29 = "%{public}@The identifier is required";
LABEL_10:
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, v29, buf, 0xCu);
    }

LABEL_11:

    objc_autoreleasePoolPop(v26);
    v25 = 0;
    goto LABEL_12;
  }

  if (!serviceCopy)
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v28;
      v29 = "%{public}@The netService is required";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v31.receiver = self;
  v31.super_class = HMDHTTPClientMessageTransport;
  v9 = [(HMDHTTPClientMessageTransport *)&v31 init];
  if (v9)
  {
    v10 = objc_msgSend_copy(identifierCopy);
    identifier = v9->_identifier;
    v9->_identifier = v10;

    objc_storeStrong(&v9->_netService, service);
    [v8 setDelegate:v9];
    v12 = NSStringFromSelector(sel_port);
    [v8 addObserver:v9 forKeyPath:v12 options:3 context:0];

    v13 = [HMDHTTPDevice alloc];
    v14 = objc_alloc(MEMORY[0x277CCAD78]);
    name = [v8 name];
    v16 = [v14 initWithUUIDString:name];
    v17 = [(HMDHTTPDevice *)v13 initWithIdentifier:v16];
    remoteDevice = v9->_remoteDevice;
    v9->_remoteDevice = v17;

    hmd_sessionIdentifier = [v8 hmd_sessionIdentifier];
    sessionIdentifier = v9->_sessionIdentifier;
    v9->_sessionIdentifier = hmd_sessionIdentifier;

    defaultConfiguration = [MEMORY[0x277D0F7D0] defaultConfiguration];
    [defaultConfiguration setRequiresEncryption:1];
    [defaultConfiguration setAllowsAnonymousConnection:1];
    [defaultConfiguration setAllowsCellularAccess:0];
    [defaultConfiguration setSupportsWakeOnLAN:1];
    [defaultConfiguration setMonitorsReachability:1];
    v22 = [objc_alloc(MEMORY[0x277D0F7C8]) initWithService:v8 configuration:defaultConfiguration];
    client = v9->_client;
    v9->_client = v22;

    [(HMFHTTPClient *)v9->_client setDelegate:v9];
  }

  selfCopy2 = v9;
  v25 = selfCopy2;
LABEL_12:

  return v25;
}

- (HMDHTTPClientMessageTransport)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t27_190138 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t27_190138, &__block_literal_global_190139);
  }

  v3 = logCategory__hmf_once_v28_190140;

  return v3;
}

uint64_t __44__HMDHTTPClientMessageTransport_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v28_190140;
  logCategory__hmf_once_v28_190140 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end