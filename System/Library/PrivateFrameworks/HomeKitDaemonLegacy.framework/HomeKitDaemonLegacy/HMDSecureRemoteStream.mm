@interface HMDSecureRemoteStream
+ (id)logCategory;
- (BOOL)isAuthenticated;
- (BOOL)isIdle;
- (BOOL)isOpen;
- (HMDDevice)peerDevice;
- (HMDSecureRemoteStream)initWithCurrentDevice:(id)device peerDevice:(id)peerDevice clientMode:(BOOL)mode sessionID:(id)d accountRegistry:(id)registry;
- (NSDate)lastActivity;
- (NSNumber)maximumRemoteStreams;
- (NSString)propertyDescription;
- (NSString)shortDescription;
- (id)logIdentifier;
- (int64_t)qualityOfService;
- (void)__handleAccountRemovedFromRegistry:(id)registry;
- (void)__handleDeviceRemovedFromAccount:(id)account;
- (void)__handleRemovedIdentity:(id)identity;
- (void)_closeWithError:(id)error;
- (void)_configureWithCompletionQueue:(id)queue completionHandler:(id)handler;
- (void)closedWithError:(id)error;
- (void)dealloc;
- (void)handleCompletedMessage:(id)message options:(id)options responsePayload:(id)payload error:(id)error completionHandler:(id)handler;
- (void)handleSecureMessage:(id)message fromDevice:(id)device fromTransport:(id)transport;
- (void)sendMessage:(id)message completionHandler:(id)handler;
- (void)setAuthenticated:(BOOL)authenticated;
- (void)setIdle:(BOOL)idle;
- (void)setMaximumRemoteStreams:(id)streams;
- (void)setOpen:(BOOL)open;
- (void)setPeerDevice:(id)device;
- (void)setQualityOfService:(int64_t)service;
- (void)startAndInvokeOnQueue:(id)queue completionHandler:(id)handler;
- (void)stop;
@end

@implementation HMDSecureRemoteStream

- (id)logIdentifier
{
  sessionID = [(HMDSecureRemoteStream *)self sessionID];
  uUIDString = [sessionID UUIDString];

  return uUIDString;
}

- (void)__handleDeviceRemovedFromAccount:(id)account
{
  accountCopy = account;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HMDSecureRemoteStream___handleDeviceRemovedFromAccount___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = accountCopy;
  selfCopy = self;
  v6 = accountCopy;
  dispatch_async(queue, v7);
}

void __58__HMDSecureRemoteStream___handleDeviceRemovedFromAccount___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 valueForKey:@"HMDDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [*(a1 + 40) peerDevice];
    v7 = [v5 isEqual:v6];

    if (v7)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 40);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v13 = 138543362;
        v14 = v11;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received notification device was removed from account", &v13, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17 description:0 reason:@"Device was removed from account." suggestion:0];
      [*(a1 + 40) _closeWithError:v12];
    }
  }
}

- (void)__handleAccountRemovedFromRegistry:(id)registry
{
  registryCopy = registry;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HMDSecureRemoteStream___handleAccountRemovedFromRegistry___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = registryCopy;
  selfCopy = self;
  v6 = registryCopy;
  dispatch_async(queue, v7);
}

void __60__HMDSecureRemoteStream___handleAccountRemovedFromRegistry___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDAccountNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [*(a1 + 40) peerDevice];
    v7 = [v6 account];
    v8 = [v5 isEqual:v7];

    if (v8)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = *(a1 + 40);
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v14 = 138543362;
        v15 = v12;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received notification account was removed from registry", &v14, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17 description:0 reason:@"Account was removed from registry." suggestion:0];
      [*(a1 + 40) _closeWithError:v13];
    }
  }
}

- (void)__handleRemovedIdentity:(id)identity
{
  identityCopy = identity;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HMDSecureRemoteStream___handleRemovedIdentity___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = identityCopy;
  selfCopy = self;
  v6 = identityCopy;
  dispatch_async(queue, v7);
}

void __49__HMDSecureRemoteStream___handleRemovedIdentity___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDIdentityNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [*(a1 + 40) peerIdentity];
    v7 = HMFEqualObjects();

    if (v7)
    {
      v8 = [*(a1 + 32) userInfo];
      v9 = [v8 objectForKeyedSubscript:@"HMDAccountNotificationKey"];

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
        v12 = [*(a1 + 40) peerDevice];
        v13 = [v12 account];
        v14 = HMFEqualObjects();

        if (v14)
        {
          v15 = objc_autoreleasePoolPush();
          v16 = *(a1 + 40);
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = HMFGetLogIdentifier();
            v20 = 138543362;
            v21 = v18;
            _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Received notification peer identity was removed", &v20, 0xCu);
          }

          objc_autoreleasePoolPop(v15);
          v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17 description:0 reason:@"Identity was removed." suggestion:0];
          [*(a1 + 40) _closeWithError:v19];
        }
      }
    }
  }
}

- (void)handleSecureMessage:(id)message fromDevice:(id)device fromTransport:(id)transport
{
  messageCopy = message;
  deviceCopy = device;
  transportCopy = transport;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__HMDSecureRemoteStream_handleSecureMessage_fromDevice_fromTransport___block_invoke;
  v15[3] = &unk_279734870;
  v15[4] = self;
  v16 = messageCopy;
  v17 = transportCopy;
  v18 = deviceCopy;
  v12 = deviceCopy;
  v13 = transportCopy;
  v14 = messageCopy;
  dispatch_async(queue, v15);
}

void __70__HMDSecureRemoteStream_handleSecureMessage_fromDevice_fromTransport___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x277CBEB98] setWithObject:@"kIDSMessageSourceIDKey"];
    v8 = [v6 secureDescriptionWithBlacklistKeys:v7];
    *buf = 138543618;
    v29 = v5;
    v30 = 2112;
    v31 = v8;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Received encrypted secure message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  if (([*(a1 + 32) supportsSharedIdentities] & 1) == 0)
  {
    [*(a1 + 32) setSupportsSharedIdentities:{objc_msgSend(*(a1 + 40), "hmf_BOOLForKey:", @"supportsSharedIdentities"}];
  }

  v9 = [*(a1 + 32) maximumRemoteStreams];

  if (!v9)
  {
    v10 = [*(a1 + 40) hmf_numberForKey:@"max"];
    if (v10)
    {
      [*(a1 + 32) setMaximumRemoteStreams:v10];
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = [v11 transportType];
    v13 = [objc_opt_class() restriction];
    if (v13 == 2)
    {
      v14 = 3;
    }

    else
    {
      v14 = v13;
    }
  }

  else
  {
    v12 = 0;
    v14 = -1;
  }

  v15 = [*(a1 + 56) productInfo];
  [v15 productClass];
  v16 = HMFProductClassToString();

  if (!v16)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = HMFGetLogIdentifier();
      v20 = *(a1 + 56);
      *buf = 138543618;
      v29 = v19;
      v30 = 2112;
      v31 = v20;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Unable to map productClass for device %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v16 = @"Unknown";
  }

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v14, @"kRemoteMessageRestrictionKey"}];
  v27[0] = v21;
  v26[1] = @"kRemoteMessageTransportAttributionKey";
  v22 = [MEMORY[0x277CCABB0] numberWithInt:v12];
  v27[1] = v22;
  v27[2] = v16;
  v26[2] = @"kRemoteMessagePeerInformationKey";
  v26[3] = @"HMDRemoteMessageReceivedTransportRestrictionKey";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "restriction")}];
  v27[3] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];

  v25 = [*(a1 + 32) remoteSession];
  [v25 transportReceivedMessage:*(a1 + 40) options:v24];
}

- (void)handleCompletedMessage:(id)message options:(id)options responsePayload:(id)payload error:(id)error completionHandler:(id)handler
{
  messageCopy = message;
  optionsCopy = options;
  payloadCopy = payload;
  errorCopy = error;
  handlerCopy = handler;
  queue = self->_queue;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __96__HMDSecureRemoteStream_handleCompletedMessage_options_responsePayload_error_completionHandler___block_invoke;
  v23[3] = &unk_279734848;
  v24 = payloadCopy;
  selfCopy = self;
  v26 = messageCopy;
  v27 = errorCopy;
  v28 = optionsCopy;
  v29 = handlerCopy;
  v18 = handlerCopy;
  v19 = optionsCopy;
  v20 = errorCopy;
  v21 = messageCopy;
  v22 = payloadCopy;
  dispatch_async(queue, v23);
}

void __96__HMDSecureRemoteStream_handleCompletedMessage_options_responsePayload_error_completionHandler___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hmf_dataForKey:@"kIDSMessageResponseErrorDataKey"];
  if (v2)
  {
    v3 = MEMORY[0x277CCAAC8];
    v4 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v33 = 0;
    v5 = [v3 _strictlyUnarchivedObjectOfClasses:v4 fromData:v2 error:&v33];
    v6 = v33;

    if (!v5)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 40);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543618;
        v35 = v10;
        v36 = 2112;
        v37 = v6;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize error with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52 description:@"Generic error." reason:@"Failed to deserialize remote error." suggestion:0 underlyingError:v6];
    }
  }

  else
  {
    v5 = 0;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 40);
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [*(a1 + 32) shortDescription];
    v16 = [*(a1 + 48) name];
    v17 = [*(a1 + 48) identifier];
    v18 = [v17 UUIDString];
    v19 = *(a1 + 56);
    v20 = *(a1 + 64);
    *buf = 138544898;
    v35 = v14;
    v36 = 2114;
    v37 = v15;
    v38 = 2114;
    v39 = v16;
    v40 = 2114;
    v41 = v18;
    v42 = 2114;
    v43 = v19;
    v44 = 2114;
    v45 = v5;
    v46 = 2114;
    v47 = v20;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Received response %{public}@ to secure message: %{public}@ and identifier %{public}@, with transport error: %{public}@, error: %{public}@, options: %{public}@", buf, 0x48u);
  }

  objc_autoreleasePoolPop(v11);
  v21 = [MEMORY[0x277D0F770] currentActivity];
  [v21 markWithReason:@"Calling response handler"];

  v22 = *(a1 + 56);
  if (!v22)
  {
    v22 = v5;
  }

  v23 = v22;
  v24 = *(a1 + 72);
  if (v24)
  {
    (*(v24 + 16))(v24, v23);
  }

  v25 = [*(a1 + 48) responseHandler];

  if (v25)
  {
    v26 = [*(a1 + 32) mutableCopy];
    v27 = [*(a1 + 64) objectForKeyedSubscript:@"kRemoteMessageTransportAttributionKey"];
    [v26 setObject:v27 forKeyedSubscript:@"kRemoteMessageTransportAttributionKey"];

    v28 = [*(a1 + 48) responseHandler];
    (v28)[2](v28, v23, v26);
  }

  v29 = objc_autoreleasePoolPush();
  v30 = *(a1 + 40);
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = HMFGetLogIdentifier();
    *buf = 138543362;
    v35 = v32;
    _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@The session is now idle", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v29);
  [*(a1 + 40) setIdle:1];
}

- (void)sendMessage:(id)message completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__HMDSecureRemoteStream_sendMessage_completionHandler___block_invoke;
  v12[3] = &unk_279734820;
  v13 = messageCopy;
  selfCopy = self;
  v15 = handlerCopy;
  v16 = a2;
  v10 = handlerCopy;
  v11 = messageCopy;
  dispatch_async(queue, v12);
}

void __55__HMDSecureRemoteStream_sendMessage_completionHandler___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (!v4)
  {
    v5 = [*(a1 + 32) name];
    v6 = [*(a1 + 32) destination];
    v7 = [*(a1 + 32) messagePayload];
    v2 = [HMDRemoteMessage secureMessageWithName:v5 destination:v6 messagePayload:v7];

    v8 = [*(a1 + 32) identifier];
    [v2 setIdentifier:v8];

    v9 = [*(a1 + 32) responseHandler];
    [v2 setResponseHandler:v9];
  }

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 40);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = HMFGetLogIdentifier();
    v14 = *(a1 + 32);
    *buf = 138543618;
    v41 = v13;
    v42 = 2112;
    v43 = v14;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Sending message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  [*(a1 + 40) setIdle:0];
  v15 = *(a1 + 32);
  v37 = 0;
  v16 = [HMDRemoteMessageSerialization dictionaryForMessage:v15 error:&v37];
  v17 = v37;
  if (!v16)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 40);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v21;
      v42 = 2112;
      v43 = v17;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Message serialization failed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  v38[0] = @"kRemoteMessageRestrictionKey";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "restriction")}];
  v39[0] = v22;
  v38[1] = @"kIDSMessageRequestTransactionIDKey";
  v23 = [v2 identifier];
  v24 = [v23 UUIDString];
  v39[1] = v24;
  v38[2] = @"kRemoteMessageAttributedMessageNameKey";
  v25 = [v2 name];
  v39[2] = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];

  objc_initWeak(buf, *(a1 + 40));
  v27 = objc_alloc(MEMORY[0x277D0F770]);
  v28 = MEMORY[0x259C01AE0](*(a1 + 40), *(a1 + 56));
  v36 = [v27 initWithName:v28];

  v29 = [*(a1 + 40) remoteSession];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __55__HMDSecureRemoteStream_sendMessage_completionHandler___block_invoke_371;
  v31[3] = &unk_2797347F8;
  v32 = v36;
  objc_copyWeak(&v35, buf);
  v30 = v2;
  v33 = v30;
  v34 = *(a1 + 48);
  [v29 sendRequest:v16 options:v26 responseHandler:v31];

  objc_destroyWeak(&v35);
  __HMFActivityScopeLeave();

  objc_destroyWeak(buf);
}

void __55__HMDSecureRemoteStream_sendMessage_completionHandler___block_invoke_371(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [*(a1 + 32) begin];
  v15 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleCompletedMessage:*(a1 + 40) options:v8 responsePayload:v7 error:v9 completionHandler:*(a1 + 48)];
  }

  else
  {
    [*(a1 + 32) markWithReason:@"Calling response handler"];
    v12 = *(a1 + 48);
    if (v12)
    {
      (*(v12 + 16))(v12, v9);
    }

    v13 = [*(a1 + 40) responseHandler];

    if (v13)
    {
      v14 = [*(a1 + 40) responseHandler];
      (v14)[2](v14, v9, v7);
    }
  }

  __HMFActivityScopeLeave();
  [*(a1 + 32) invalidate];
}

- (void)stop
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__HMDSecureRemoteStream_stop__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

void __29__HMDSecureRemoteStream_stop__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isOpen])
  {
    [*(a1 + 32) setOpen:0];
    v2 = [*(a1 + 32) remoteSession];

    if (v2)
    {
      v3 = [*(a1 + 32) remoteSession];
      [v3 stop];
    }

    else
    {
      v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:20 userInfo:0];
      [*(a1 + 32) _closeWithError:?];
    }
  }
}

- (void)_closeWithError:(id)error
{
  errorCopy = error;
  [(HMDSecureRemoteStream *)self setOpen:0];
  [(HMDSecureRemoteStream *)self setAuthenticated:0];
  delegate = [(HMFMessageTransport *)self delegate];
  if ([delegate conformsToProtocol:&unk_286696D78])
  {
    v5 = delegate;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (objc_opt_respondsToSelector())
  {
    [v6 secureRemoteStream:self didCloseWithError:errorCopy];
  }
}

- (void)closedWithError:(id)error
{
  errorCopy = error;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__HMDSecureRemoteStream_closedWithError___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(queue, v7);
}

- (void)_configureWithCompletionQueue:(id)queue completionHandler:(id)handler
{
  v51 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  handlerCopy = handler;
  systemStore = [MEMORY[0x277CFEC78] systemStore];
  v47 = 0;
  v9 = [systemStore getLocalPairingIdentity:&v47];
  v10 = v47;

  if (v9)
  {
    v11 = [HMDSecureRemoteStreamInternal alloc];
    role = [(HMDSecureRemoteStream *)self role];
    v13 = [(HMDSecureRemoteStreamInternal *)v11 initWithType:role commitTimeout:hrsCommitTimeoutNanoseconds clientIdleTimeout:hrsIdleClientTimeoutNanoseconds serverIdleTimeout:hrsIdleServertTimeoutNanoseconds sendInternalTimeout:hrsSendInternalRequestTimeoutNanoseconds sendUserTimeout:hrsSendUserRequestTimeoutNanoseconds];
    [(HMDSecureRemoteStream *)self setRemoteSession:v13];

    queue = self->_queue;
    remoteSession = [(HMDSecureRemoteStream *)self remoteSession];
    [remoteSession setDispatchQueue:queue];

    objc_initWeak(location, self);
    if ([(HMDSecureRemoteStream *)self role]== 1)
    {
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_2;
      v40[3] = &unk_2797346E0;
      objc_copyWeak(&v43, location);
      v41 = queueCopy;
      v42 = handlerCopy;
      remoteSession2 = [(HMDSecureRemoteStream *)self remoteSession];
      [remoteSession2 setStartedHandler:v40];

      objc_destroyWeak(&v43);
    }

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_4;
    v38[3] = &unk_279734708;
    objc_copyWeak(&v39, location);
    remoteSession3 = [(HMDSecureRemoteStream *)self remoteSession];
    [remoteSession3 setStoppedHandler:v38];

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_344;
    v36[3] = &unk_279734730;
    objc_copyWeak(&v37, location);
    remoteSession4 = [(HMDSecureRemoteStream *)self remoteSession];
    [remoteSession4 setGetLocalIdentityHandler:v36];

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_348;
    v34[3] = &unk_279734758;
    objc_copyWeak(&v35, location);
    remoteSession5 = [(HMDSecureRemoteStream *)self remoteSession];
    [remoteSession5 setFindPeerHandler:v34];

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_356;
    v32[3] = &unk_2797347A8;
    objc_copyWeak(&v33, location);
    remoteSession6 = [(HMDSecureRemoteStream *)self remoteSession];
    [remoteSession6 setRequestHandler:v32];

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_3_366;
    v30[3] = &unk_2797347D0;
    objc_copyWeak(&v31, location);
    remoteSession7 = [(HMDSecureRemoteStream *)self remoteSession];
    [remoteSession7 setTransportSendMessage:v30];

    remoteSession8 = [(HMDSecureRemoteStream *)self remoteSession];
    [remoteSession8 start];

    role2 = [(HMDSecureRemoteStream *)self role];
    if (handlerCopy && queueCopy && role2 == 2)
    {
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_368;
      v28[3] = &unk_2797348C0;
      v29 = handlerCopy;
      dispatch_async(queueCopy, v28);
    }

    objc_destroyWeak(&v31);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&v37);
    objc_destroyWeak(&v39);
    objc_destroyWeak(location);
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v27;
      v49 = 2112;
      v50 = v10;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot open stream, failed to get local pairing identity with error: %@", location, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    if (queueCopy && handlerCopy)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke;
      block[3] = &unk_279735738;
      v45 = v10;
      v46 = handlerCopy;
      dispatch_async(queueCopy, block);
    }
  }
}

void __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48 description:@"Not supported" reason:@"Cannot send messages without a valid pairing identity" suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (v3)
  {
    [WeakRetained _closeWithError:v3];
  }

  else
  {
    [WeakRetained setOpen:1];
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_3;
      v8[3] = &unk_279735738;
      v10 = v7;
      v9 = v3;
      dispatch_async(v6, v8);
    }
  }
}

void __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v8;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received notification that remote session has stopped due to error: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [v6 _closeWithError:v3];
  }
}

id __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_344(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CFEC78] systemStore];
  v5 = [v4 getLocalPairingIdentity:a2];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && v5)
  {
    v7 = +[HMDDeviceCapabilities deviceCapabilities];
    if ([v7 isRemoteGatewayCapable])
    {
      v8 = [WeakRetained supportsSharedIdentities];

      if ((v8 & 1) == 0)
      {
        v9 = [WeakRetained currentDevice];
        v10 = [v9 account];
        v11 = [v10 identities];
        v12 = [v11 containsObject:v5];

        if (v12)
        {
          v13 = objc_autoreleasePoolPush();
          v14 = WeakRetained;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = HMFGetLogIdentifier();
            v25 = 138543362;
            v26 = v16;
            _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Swapping out the local pairing identifier for legacy remote sessions", &v25, 0xCu);
          }

          objc_autoreleasePoolPop(v13);
          v17 = objc_alloc(MEMORY[0x277D0F8A8]);
          v18 = [v14 currentDevice];
          v19 = [v18 identifier];
          v20 = [v19 UUIDString];
          v21 = [v5 publicKey];
          v22 = [v5 privateKey];
          v23 = [v17 initWithIdentifier:v20 publicKey:v21 privateKey:v22];

          v5 = v23;
        }
      }
    }

    else
    {
    }
  }

  return v5;
}

id __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_348(uint64_t a1, void *a2, void *a3)
{
  v83 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = +[HMDIdentityRegistry sharedRegistry];
    v8 = [v7 identityForIdentifier:v5];

    if (v8)
    {
      [WeakRetained setPeerIdentity:v8];
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      v10 = +[HMDIdentityRegistry sharedRegistry];
      [v9 addObserver:WeakRetained selector:sel___handleRemovedIdentity_ name:@"HMDIdentityRegistryRemovedIdentity" object:v10];

      v11 = [WeakRetained peerDevice];
      v12 = +[HMDAccountRegistry sharedRegistry];
      v13 = [v12 deviceForDevice:v11];

      if (v13 && v11 != v13)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = WeakRetained;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v67 = a3;
          v18 = v17 = v5;
          *buf = 138543874;
          v75 = v18;
          v76 = 2112;
          v77 = v11;
          v78 = 2112;
          v79 = v13;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Peer device resolved from the registry -- tracked: %@, resolved: %@", buf, 0x20u);

          v5 = v17;
          a3 = v67;
        }

        objc_autoreleasePoolPop(v14);
        v19 = v13;

        [v15 setPeerDevice:v19];
        v11 = v19;
      }

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v20 = +[HMDIdentityRegistry sharedRegistry];
      v21 = [v20 accountsForIdentity:v8];

      v22 = [v21 countByEnumeratingWithState:&v70 objects:v82 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v71;
LABEL_10:
        v25 = 0;
        while (1)
        {
          if (*v71 != v24)
          {
            objc_enumerationMutation(v21);
          }

          if ([*(*(&v70 + 1) + 8 * v25) isAuthenticated])
          {
            break;
          }

          if (v23 == ++v25)
          {
            v23 = [v21 countByEnumeratingWithState:&v70 objects:v82 count:16];
            if (v23)
            {
              goto LABEL_10;
            }

            goto LABEL_16;
          }
        }

        v31 = [v11 identities];
        v32 = [v31 containsObject:v8];

        if (v32)
        {
          v33 = objc_autoreleasePoolPush();
          v34 = WeakRetained;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = HMFGetLogIdentifier();
            *buf = 138543362;
            v75 = v36;
            _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Successfully authenticated peer identity", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v33);
          [v34 setAuthenticated:1];
          goto LABEL_25;
        }

        v38 = [v11 account];
        v45 = objc_autoreleasePoolPush();
        v46 = WeakRetained;
        v47 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v68 = v45;
          v49 = v48 = v5;
          v50 = [v11 shortDescription];
          *buf = 138543618;
          v75 = v49;
          v76 = 2112;
          v77 = v50;
          _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@Failed to authenticate peer identity for device: %@", buf, 0x16u);

          v5 = v48;
          v45 = v68;
        }

        objc_autoreleasePoolPop(v45);
        v51 = objc_autoreleasePoolPush();
        v52 = v46;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = HMFGetLogIdentifier();
          [v8 identifier];
          v55 = v69 = v38;
          [v11 shortDescription];
          v66 = v51;
          v57 = v56 = v5;
          *buf = 138544130;
          v75 = v54;
          v76 = 2112;
          v77 = v55;
          v78 = 2112;
          v79 = v57;
          v80 = 2112;
          v81 = v69;
          _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_INFO, "%{public}@The provided pairing identity, %@, for peer, %@, is not registered to account: %@", buf, 0x2Au);

          v5 = v56;
          v51 = v66;

          v38 = v69;
        }

        objc_autoreleasePoolPop(v51);
        if (a3)
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:55];
          *a3 = v30 = 0;
        }

        else
        {
          v30 = 0;
        }
      }

      else
      {
LABEL_16:

        v26 = objc_autoreleasePoolPush();
        v27 = WeakRetained;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543362;
          v75 = v29;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Skipping account authentication check as the peer account is not authenticated", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v26);
LABEL_25:
        v37 = [v11 remoteDestinationString];
        v38 = [HMDAccountHandle accountHandleForDestination:v37];

        if (v38)
        {
          v39 = [[HMDUser alloc] initWithAccountHandle:v38 home:0 pairingIdentity:v8 privilege:2];
          [WeakRetained setPeer:v39];
        }

        else
        {
          v58 = objc_autoreleasePoolPush();
          v59 = WeakRetained;
          v60 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            v61 = HMFGetLogIdentifier();
            [v11 remoteDestinationString];
            v63 = v62 = v5;
            *buf = 138543618;
            v75 = v61;
            v76 = 2112;
            v77 = v63;
            _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_DEFAULT, "%{public}@[HMDSecureSession] Unable to get the 'userID' from destination '%@'", buf, 0x16u);

            v5 = v62;
          }

          objc_autoreleasePoolPop(v58);
        }

        v64 = [v8 publicKey];
        v30 = [v64 data];
      }
    }

    else
    {
      v40 = objc_autoreleasePoolPush();
      v41 = WeakRetained;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = HMFGetLogIdentifier();
        v44 = [v41 peerDevice];
        *buf = 138543874;
        v75 = v43;
        v76 = 2112;
        v77 = v5;
        v78 = 2112;
        v79 = v44;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to find identity, %@, for peer: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v40);
      if (a3)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
        *a3 = v30 = 0;
      }

      else
      {
        v30 = 0;
      }
    }
  }

  else if (a3)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:20 userInfo:0];
    *a3 = v30 = 0;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

void __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_356(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v76 = *MEMORY[0x277D85DE8];
  v9 = a2;
  queue = a3;
  v10 = a4;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v69 = 0;
    v13 = [HMDRemoteMessageSerialization remoteMessageWithDictionary:v9 error:&v69];
    v14 = v69;
    v15 = [v13 name];
    v16 = [v15 isEqualToString:@"kRemoteAccessReverseConnectionRequestKey"];

    if (v16)
    {
      v59 = v14;
      v17 = v11;
      v18 = objc_autoreleasePoolPush();
      v19 = WeakRetained;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        [v13 name];
        v23 = v22 = v10;
        *buf = 138543618;
        v71 = v21;
        v72 = 2112;
        v73 = v23;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Received request to setup reverse secure connection: %@", buf, 0x16u);

        v10 = v22;
      }

      objc_autoreleasePoolPop(v18);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_358;
      block[3] = &unk_2797348C0;
      v11 = v17;
      v68 = v17;
      dispatch_async(queue, block);
      v24 = v68;
      v14 = v59;
    }

    else
    {
      v60 = v11;
      v25 = [v10 hmf_numberForKey:@"HMDRemoteMessageReceivedTransportRestrictionKey"];
      v26 = [v25 unsignedIntegerValue];

      [v13 setRestriction:v26];
      v27 = [v13 messagePayload];
      v24 = [v27 mutableCopy];

      if (!v24)
      {
        v24 = [MEMORY[0x277CBEB38] dictionary];
      }

      v28 = [WeakRetained peerDevice];
      v29 = [v28 remoteDestinationString];
      [v24 setObject:v29 forKeyedSubscript:@"kIDSMessageSourceIDKey"];

      [v13 setMessagePayload:v24];
      v30 = [v13 userInfo];
      v31 = [v30 mutableCopy];

      v32 = [WeakRetained peerDevice];
      v33 = [v32 remoteDestinationString];
      [v31 setObject:v33 forKeyedSubscript:@"kIDSMessageSourceIDKey"];

      v34 = [WeakRetained peer];
      if (v34)
      {
        [v31 setObject:v34 forKeyedSubscript:@"kIDSMessageSourceUserKey"];
      }

      v57 = v34;
      v35 = [v10 objectForKeyedSubscript:@"kRemoteMessageTransportAttributionKey"];
      [v31 setObject:v35 forKeyedSubscript:@"kRemoteMessageTransportAttributionKey"];

      v36 = [v13 internal];
      v58 = v31;
      [v36 setUserInfo:v31];

      v37 = [HMDRemoteDeviceMessageDestination alloc];
      v38 = [v13 destination];
      v39 = [v38 target];
      v40 = [WeakRetained peerDevice];
      v41 = [(HMDRemoteDeviceMessageDestination *)v37 initWithTarget:v39 device:v40];

      v56 = v41;
      [v13 setDestination:v41];
      [v13 setSecure:1];
      v42 = objc_autoreleasePoolPush();
      v43 = WeakRetained;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v45 = v53 = v42;
        [v13 messagePayload];
        v46 = v55 = v9;
        [MEMORY[0x277CBEB98] setWithObject:@"kIDSMessageSourceIDKey"];
        v48 = v47 = v14;
        [v46 secureDescriptionWithBlacklistKeys:v48];
        v49 = v54 = v10;
        *buf = 138543874;
        v71 = v45;
        v72 = 2112;
        v73 = v13;
        v74 = 2112;
        v75 = v49;
        _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@Received decrypted secure message, %@, with payload: %@", buf, 0x20u);

        v14 = v47;
        v9 = v55;

        v10 = v54;
        v42 = v53;
      }

      objc_autoreleasePoolPop(v42);
      v50 = [v13 name];
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_361;
      v62[3] = &unk_279734780;
      v62[4] = v43;
      v63 = v50;
      v64 = queue;
      v11 = v60;
      v66 = v60;
      v65 = v10;
      v51 = v50;
      [v13 setInternalResponseHandler:v62];
      v52 = [v43 delegate];
      [v52 messageTransport:v43 didReceiveMessage:v13];
    }
  }
}

void __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_3_366(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v5];
    v9 = [WeakRetained sessionID];
    v10 = [v9 UUIDString];
    [v8 setObject:v10 forKeyedSubscript:@"kIDSSecureSessionIDKey"];

    v11 = [v8 hmf_stringForKey:@"op"];
    LODWORD(v10) = [v11 isEqualToString:@"pv"];

    if (v10)
    {
      [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"supportsSharedIdentities"];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:maximumSecureRemoteStreams];
      [v8 setObject:v12 forKeyedSubscript:@"max"];

      if ([WeakRetained role] == 2)
      {
        [v8 setObject:0 forKeyedSubscript:@"op"];
      }
    }

    v13 = objc_autoreleasePoolPush();
    v14 = WeakRetained;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v5 shortDescription];
      v18 = [v14 peerDevice];
      v41 = 138544130;
      v42 = v16;
      v43 = 2112;
      v44 = v17;
      v45 = 2112;
      v46 = v18;
      v47 = 2112;
      v48 = v6;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Sending encrypted secure message %@ to %@ with options:\n%@", &v41, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    v19 = [HMDRemoteDeviceMessageDestination alloc];
    v20 = [MEMORY[0x277CCAD78] UUID];
    v21 = [v14 peerDevice];
    v22 = [(HMDRemoteDeviceMessageDestination *)v19 initWithTarget:v20 device:v21];

    v23 = [v14 remoteSession];
    [v23 requestTimeout];
    v25 = v24;

    v26 = 0.0;
    if (v25 > 0.0)
    {
      v27 = [v14 remoteSession];
      [v27 requestTimeout];
      v26 = v28;
    }

    v29 = [v14 role];
    v30 = @"kSecureServerIDSMessageRequestKey";
    if (v29 == 1)
    {
      v30 = @"kSecureClientIDSMessageRequestKey";
    }

    v31 = v30;
    v32 = [v6 hmf_numberForKey:@"kRemoteMessageRestrictionKey"];
    v33 = v32;
    if (!v32 || (v34 = [v32 unsignedIntegerValue], v34 == -1))
    {
      v35 = 19;
    }

    else
    {
      v35 = v34 | 0x10;
    }

    v36 = [[HMDRemoteMessage alloc] initWithName:v31 destination:v22 payload:v8 type:3 timeout:0 secure:v35 restriction:v26];
    v37 = [v6 hmf_stringForKey:@"kRemoteMessageAttributedMessageNameKey"];

    [(HMDRemoteMessage *)v36 setAttributedMessageName:v37];
    v38 = [v14 delegate];
    if ([v38 conformsToProtocol:&unk_286696D78])
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    v40 = v39;

    if (v40)
    {
      [v40 secureRemoteStream:v14 receivedRequestToSendMessage:v36];
    }
  }
}

void __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_361(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v12 = [v6 shortDescription];
    *buf = 138544130;
    v29 = v10;
    v30 = 2114;
    v31 = v11;
    v32 = 2112;
    v33 = v12;
    v34 = 2114;
    v35 = v5;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Responding to decrypted secure message: %{public}@, payload %@ with error: %{public}@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  if (v5)
  {
    v26 = @"kIDSMessageResponseErrorDataKey";
    v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
    v27 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];

    v15 = *(a1 + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_362;
    block[3] = &unk_2797355D0;
    v25 = *(a1 + 64);
    v23 = v14;
    v24 = *(a1 + 56);
    v16 = v14;
    dispatch_async(v15, block);
  }

  else
  {
    v17 = *(a1 + 48);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_2_363;
    v18[3] = &unk_2797355D0;
    v21 = *(a1 + 64);
    v19 = v6;
    v20 = *(a1 + 56);
    dispatch_async(v17, v18);

    v16 = v21;
  }
}

uint64_t __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_2_363(void *a1)
{
  if (a1[4])
  {
    v1 = a1[4];
  }

  else
  {
    v1 = MEMORY[0x277CBEC10];
  }

  return (*(a1[6] + 16))(a1[6], v1, a1[5], 0);
}

- (void)startAndInvokeOnQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMDSecureRemoteStream_startAndInvokeOnQueue_completionHandler___block_invoke;
  block[3] = &unk_2797355D0;
  block[4] = self;
  v12 = queueCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = queueCopy;
  dispatch_async(queue, block);
}

uint64_t __65__HMDSecureRemoteStream_startAndInvokeOnQueue_completionHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) role];
    v7 = @"server";
    if (v6 == 1)
    {
      v7 = @"client";
    }

    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Starting secure session in %@ mode", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _configureWithCompletionQueue:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (NSDate)lastActivity
{
  os_unfair_lock_lock_with_options();
  v3 = self->_lastActivity;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setIdle:(BOOL)idle
{
  idleCopy = idle;
  if (idle)
  {
    obj = 0;
  }

  else
  {
    obj = [MEMORY[0x277CBEAA8] date];
  }

  os_unfair_lock_lock_with_options();
  idle = self->_idle;
  if (idle != idleCopy)
  {
    self->_idle = idleCopy;
  }

  if (obj)
  {
    objc_storeStrong(&self->_lastActivity, obj);
  }

  os_unfair_lock_unlock(&self->_lock);
  if (idle != idleCopy)
  {
    delegate = [(HMFMessageTransport *)self delegate];
    if ([delegate conformsToProtocol:&unk_286696D78])
    {
      v7 = delegate;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (idleCopy && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v8 secureRemoteStreamIsIdle:self];
    }
  }
}

- (BOOL)isIdle
{
  os_unfair_lock_lock_with_options();
  idle = self->_idle;
  os_unfair_lock_unlock(&self->_lock);
  return idle;
}

- (void)setAuthenticated:(BOOL)authenticated
{
  os_unfair_lock_lock_with_options();
  self->_authenticated = authenticated;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isAuthenticated
{
  os_unfair_lock_lock_with_options();
  authenticated = self->_authenticated;
  os_unfair_lock_unlock(&self->_lock);
  return authenticated;
}

- (void)setOpen:(BOOL)open
{
  os_unfair_lock_lock_with_options();
  self->_open = open;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isOpen
{
  os_unfair_lock_lock_with_options();
  open = self->_open;
  os_unfair_lock_unlock(&self->_lock);
  return open;
}

- (void)setMaximumRemoteStreams:(id)streams
{
  streamsCopy = streams;
  os_unfair_lock_lock_with_options();
  maximumRemoteStreams = self->_maximumRemoteStreams;
  self->_maximumRemoteStreams = streamsCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)maximumRemoteStreams
{
  os_unfair_lock_lock_with_options();
  v3 = self->_maximumRemoteStreams;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setQualityOfService:(int64_t)service
{
  os_unfair_lock_lock_with_options();
  self->_qualityOfService = service;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)qualityOfService
{
  os_unfair_lock_lock_with_options();
  qualityOfService = self->_qualityOfService;
  os_unfair_lock_unlock(&self->_lock);
  return qualityOfService;
}

- (void)setPeerDevice:(id)device
{
  deviceCopy = device;
  os_unfair_lock_lock_with_options();
  peerDevice = self->_peerDevice;
  if (peerDevice != deviceCopy)
  {
    account = [(HMDDevice *)peerDevice account];
    if (account)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter removeObserver:self name:@"HMDAccountRemovedDeviceNotification" object:account];
    }

    objc_storeStrong(&self->_peerDevice, device);
    account2 = [(HMDDevice *)self->_peerDevice account];
    if (account2)
    {
      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel___handleDeviceRemovedFromAccount_ name:@"HMDAccountRemovedDeviceNotification" object:account2];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDDevice)peerDevice
{
  os_unfair_lock_lock_with_options();
  v3 = self->_peerDevice;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)propertyDescription
{
  v3 = MEMORY[0x277CCACA8];
  sessionID = [(HMDSecureRemoteStream *)self sessionID];
  role = [(HMDSecureRemoteStream *)self role];
  v6 = @"unknown";
  if (role == 2)
  {
    v6 = @"server";
  }

  if (role == 1)
  {
    v6 = @"client";
  }

  v7 = v6;
  [(HMDSecureRemoteStream *)self qualityOfService];
  v8 = HMFQualityOfServiceToString();
  [(HMDSecureRemoteStream *)self isIdle];
  v9 = HMFBooleanToString();
  lastActivity = [(HMDSecureRemoteStream *)self lastActivity];
  v11 = [v3 stringWithFormat:@", Identifier = %@, Role = %@, QoS = %@, Idle = %@, Last Activity = %@", sessionID, v7, v8, v9, lastActivity];

  return v11;
}

- (NSString)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  sessionID = [(HMDSecureRemoteStream *)self sessionID];
  uUIDString = [sessionID UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", shortDescription, uUIDString];

  return v7;
}

- (void)dealloc
{
  [(HMDSecureRemoteStreamInternal *)self->_remoteSession stop];
  v3.receiver = self;
  v3.super_class = HMDSecureRemoteStream;
  [(HMDSecureRemoteStream *)&v3 dealloc];
}

- (HMDSecureRemoteStream)initWithCurrentDevice:(id)device peerDevice:(id)peerDevice clientMode:(BOOL)mode sessionID:(id)d accountRegistry:(id)registry
{
  modeCopy = mode;
  deviceCopy = device;
  peerDeviceCopy = peerDevice;
  dCopy = d;
  registryCopy = registry;
  v32.receiver = self;
  v32.super_class = HMDSecureRemoteStream;
  v17 = [(HMDSecureRemoteStream *)&v32 init];
  if (v17)
  {
    v30 = peerDeviceCopy;
    v31 = deviceCopy;
    v18 = HMDispatchQueueNameString();
    uTF8String = [v18 UTF8String];
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create(uTF8String, v20);
    queue = v17->_queue;
    v17->_queue = v21;

    objc_storeStrong(&v17->_currentDevice, device);
    objc_storeStrong(&v17->_peerDevice, peerDevice);
    if (modeCopy)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    v17->_role = v23;
    objc_storeStrong(&v17->_sessionID, d);
    v17->_idle = 1;
    v17->_qualityOfService = 9;
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    lastActivity = v17->_lastActivity;
    v17->_lastActivity = distantPast;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v17 selector:sel___handleAccountRemovedFromRegistry_ name:@"HMDAccountRegistryRemovedAccountNotification" object:registryCopy];

    account = [(HMDDevice *)v17->_peerDevice account];
    if (account)
    {
      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:v17 selector:sel___handleDeviceRemovedFromAccount_ name:@"HMDAccountRemovedDeviceNotification" object:account];
    }

    peerDeviceCopy = v30;
    deviceCopy = v31;
  }

  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t98 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t98, &__block_literal_global_397);
  }

  v3 = logCategory__hmf_once_v99;

  return v3;
}

uint64_t __36__HMDSecureRemoteStream_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v99;
  logCategory__hmf_once_v99 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end