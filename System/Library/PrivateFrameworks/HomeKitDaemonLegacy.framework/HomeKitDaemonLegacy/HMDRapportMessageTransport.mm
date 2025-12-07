@interface HMDRapportMessageTransport
+ (id)logCategory;
+ (id)requestIDsToRegister;
- (BOOL)canSendMessage:(id)message;
- (BOOL)isValidMessage:(id)message;
- (HMDRapportMessageTransport)initWithAccountRegistry:(id)registry requestID:(id)d;
- (HMDRapportMessageTransport)initWithAccountRegistry:(id)registry requestID:(id)d rapportMessaging:(id)messaging logEventSubmitter:(id)submitter appleAccountManager:(id)manager;
- (id)_IDSIdentifierForDestination:(id)destination;
- (id)_IDSIdentifierForDevice:(id)device;
- (id)_IDSIdentifiersForMessage:(id)message;
- (id)_rpOptions:(id)options stringForKey:(id)key;
- (id)_serializeRemoteMessage:(id)message withResponseErrorData:(id)data serializationError:(id *)error;
- (id)start;
- (void)_configureRapport:(id)rapport;
- (void)_didReceiveRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)_setSharedUserIDSIdentifierForDevice:(id)device idsIdentifier:(id)identifier;
- (void)rapportMessaging:(id)messaging idsIdentifier:(id)identifier didAppearReachable:(BOOL)reachable;
- (void)sendMessage:(id)message completionHandler:(id)handler;
@end

@implementation HMDRapportMessageTransport

- (id)_rpOptions:(id)options stringForKey:(id)key
{
  v4 = [options hmf_stringForKey:key];
  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)_didReceiveRequest:(id)request options:(id)options responseHandler:(id)handler
{
  v114 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__HMDRapportMessageTransport__didReceiveRequest_options_responseHandler___block_invoke;
  aBlock[3] = &unk_279735558;
  v11 = handlerCopy;
  v103 = v11;
  v99 = _Block_copy(aBlock);
  v12 = [(HMDRapportMessageTransport *)self _rpOptions:optionsCopy stringForKey:*MEMORY[0x277D442D0]];
  v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v12];
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138544386;
    v105 = v17;
    v106 = 2112;
    v107 = requestCopy;
    v108 = 2160;
    v109 = 1752392040;
    v110 = 2112;
    v111 = v13;
    v112 = 2112;
    v113 = optionsCopy;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Received message: %@, from: %{mask.hash}@, with options: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v14);
  v101 = 0;
  v18 = [HMDRemoteMessageSerialization remoteMessageWithDictionary:requestCopy error:&v101];
  v19 = v101;
  v20 = v19;
  v100 = v18;
  if (v18)
  {
    if (v12)
    {
      if (v13)
      {
        v95 = [(HMDRapportMessageTransport *)selfCopy _rpOptions:optionsCopy stringForKey:*MEMORY[0x277D442A0]];
        if (v95)
        {
          v94 = v11;
          accountRegistry = [(HMDRemoteMessageTransport *)selfCopy accountRegistry];
          v22 = [accountRegistry deviceForIDSIdentifier:v13];

          v96 = v22;
          if (v22)
          {
            remoteDestinationString = [v22 remoteDestinationString];
            v93 = remoteDestinationString;
            if (remoteDestinationString)
            {
              v24 = remoteDestinationString;
              v92 = v20;
              v99[2](v99, 0);
              userInfo = [v18 userInfo];
              v26 = [userInfo mutableCopy];

              [v26 setObject:v24 forKeyedSubscript:@"kIDSMessageSourceIDKey"];
              v27 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDRapportMessageTransport transportType](selfCopy, "transportType")}];
              [v26 setObject:v27 forKeyedSubscript:@"kRemoteMessageTransportAttributionKey"];

              v28 = [requestCopy hmf_dataForKey:@"kIDSMessageResponseErrorDataKey"];
              [v26 setObject:v28 forKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];

              internal = [v18 internal];
              [internal setUserInfo:v26];

              v30 = [HMDRemoteDeviceMessageDestination alloc];
              destination = [v18 destination];
              target = [destination target];
              v33 = [(HMDRemoteDeviceMessageDestination *)v30 initWithTarget:target device:v96];

              v34 = v33;
              [v18 setDestination:v33];
              [v18 setRestriction:{objc_msgSend(objc_opt_class(), "restriction")}];
              [v18 setSecure:{-[HMDRapportMessageTransport isSecure](selfCopy, "isSecure")}];
              v91 = [HMDDeviceHandle deviceHandleForDeviceIdentifier:v13];
              v35 = [[HMDRemoteMessageSenderContext alloc] initWithDeviceHandle:v91 accountHandle:0 accountIdentifier:0 deviceVersion:0 pairingIdentityIdentifier:v95];
              [v18 setSenderContext:v35];

              logEventSubmitter = [(HMDRapportMessageTransport *)selfCopy logEventSubmitter];
              v37 = [HMDRemoteMessageLogEvent receivedRemoteMessage:v18 transportType:[(HMDRapportMessageTransport *)selfCopy transportType]];
              [logEventSubmitter submitLogEvent:v37];

              v38 = v26;
              delegate = [(HMFMessageTransport *)selfCopy delegate];
              v40 = selfCopy;
              v41 = v99;
              v20 = v92;
              [delegate messageTransport:v40 didReceiveMessage:v18];
            }

            else
            {
              v86 = objc_autoreleasePoolPush();
              v87 = selfCopy;
              v88 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
              {
                v89 = HMFGetLogIdentifier();
                *buf = 138543618;
                v105 = v89;
                v106 = 2112;
                v107 = v18;
                _os_log_impl(&dword_2531F8000, v88, OS_LOG_TYPE_ERROR, "%{public}@Could not find remote destination for incoming message: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v86);
              v90 = MEMORY[0x277CCA9B8];
              v38 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3210];
              v34 = [v90 hmErrorWithCode:2 description:0 reason:0 suggestion:0 underlyingError:v38];
              v41 = v99;
              (v99)[2](v99, v34);
            }
          }

          else
          {
            v81 = objc_autoreleasePoolPush();
            v82 = selfCopy;
            v83 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
            {
              v84 = HMFGetLogIdentifier();
              *buf = 138544130;
              v105 = v84;
              v106 = 2160;
              v107 = 1752392040;
              v108 = 2112;
              v109 = v12;
              v110 = 2112;
              v111 = v18;
              _os_log_impl(&dword_2531F8000, v83, OS_LOG_TYPE_ERROR, "%{public}@Could not find source device for sender IDS DeviceID: %{mask.hash}@ message: %@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v81);
            v85 = MEMORY[0x277CCA9B8];
            v93 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3209];
            v38 = [v85 hmErrorWithCode:2 description:0 reason:0 suggestion:0 underlyingError:?];
            v41 = v99;
            (v99)[2](v99, v38);
          }

          v11 = v94;

          v79 = v96;
          v80 = v93;
        }

        else
        {
          v98 = v12;
          v70 = requestCopy;
          v71 = v13;
          v72 = v20;
          v73 = v11;
          v74 = objc_autoreleasePoolPush();
          v75 = selfCopy;
          v76 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            v77 = HMFGetLogIdentifier();
            *buf = 138543874;
            v105 = v77;
            v106 = 2112;
            v107 = v18;
            v108 = 2112;
            v109 = optionsCopy;
            _os_log_impl(&dword_2531F8000, v76, OS_LOG_TYPE_ERROR, "%{public}@Rejecting incoming message, %@, because pairing identity identifier is missing in options: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v74);
          v78 = MEMORY[0x277CCA9B8];
          v79 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3208];
          v80 = [v78 hmErrorWithCode:2 description:0 reason:0 suggestion:0 underlyingError:v79];
          v41 = v99;
          (v99)[2](v99, v80);
          v11 = v73;
          v20 = v72;
          v13 = v71;
          requestCopy = v70;
          v12 = v98;
        }

        goto LABEL_32;
      }

      v97 = v12;
      v52 = requestCopy;
      v53 = 0;
      v54 = v19;
      v55 = v11;
      v64 = objc_autoreleasePoolPush();
      v65 = selfCopy;
      v66 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        v67 = HMFGetLogIdentifier();
        *buf = 138543874;
        v105 = v67;
        v106 = 2112;
        v107 = v18;
        v108 = 2112;
        v109 = optionsCopy;
        _os_log_impl(&dword_2531F8000, v66, OS_LOG_TYPE_ERROR, "%{public}@Rejecting incoming message, %@, because IDS Device ID is an invalid UUID in options: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v64);
      v68 = MEMORY[0x277CCA9B8];
      v61 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3207];
      v62 = v68;
      v63 = -1;
    }

    else
    {
      v97 = 0;
      v52 = requestCopy;
      v53 = v13;
      v54 = v19;
      v55 = v11;
      v56 = objc_autoreleasePoolPush();
      v57 = selfCopy;
      v58 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v59 = HMFGetLogIdentifier();
        *buf = 138543874;
        v105 = v59;
        v106 = 2112;
        v107 = v18;
        v108 = 2112;
        v109 = optionsCopy;
        _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_ERROR, "%{public}@Rejecting incoming message, %@, because IDS Device ID is missing in options: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v56);
      v60 = MEMORY[0x277CCA9B8];
      v61 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3206];
      v62 = v60;
      v63 = 2;
    }

    v69 = [v62 hmErrorWithCode:v63 description:0 reason:0 suggestion:0 underlyingError:v61];
    v41 = v99;
    (v99)[2](v99, v69);

    v11 = v55;
    v20 = v54;
    v13 = v53;
    requestCopy = v52;
    v12 = v97;
    goto LABEL_32;
  }

  v42 = objc_autoreleasePoolPush();
  v43 = selfCopy;
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v45 = optionsCopy;
    v46 = v12;
    v47 = requestCopy;
    v48 = v13;
    v49 = v20;
    v51 = v50 = v11;
    *buf = 138544386;
    v105 = v51;
    v106 = 2112;
    v107 = v47;
    v108 = 2160;
    v109 = 1752392040;
    v110 = 2112;
    v111 = v48;
    v112 = 2112;
    v113 = v49;
    _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@Dropping invalid message, %@, from: %{mask.hash}@, error: %@", buf, 0x34u);

    v11 = v50;
    v20 = v49;
    v13 = v48;
    requestCopy = v47;
    v12 = v46;
    optionsCopy = v45;
  }

  objc_autoreleasePoolPop(v42);
  v41 = v99;
LABEL_32:
}

uint64_t __73__HMDRapportMessageTransport__didReceiveRequest_options_responseHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2);
  }

  return result;
}

- (id)_serializeRemoteMessage:(id)message withResponseErrorData:(id)data serializationError:(id *)error
{
  messageCopy = message;
  dataCopy = data;
  v9 = [HMDRemoteMessageSerialization dictionaryForMessage:messageCopy error:error];
  v10 = [v9 mutableCopy];

  if (v10)
  {
    type = [messageCopy type];
    if (dataCopy && type == 1)
    {
      [v10 setObject:dataCopy forKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];
    }

    v12 = objc_msgSend_copy(v10);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)sendMessage:(id)message completionHandler:(id)handler
{
  v53 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__HMDRapportMessageTransport_sendMessage_completionHandler___block_invoke;
  aBlock[3] = &unk_279733F30;
  v8 = handlerCopy;
  v50 = v8;
  v9 = messageCopy;
  v49 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [(HMDRapportMessageTransport *)self _IDSIdentifiersForMessage:v9];
  if ([v11 count])
  {
    v12 = [objc_opt_class() remoteMessageFromMessage:v9 secure:1 accountRegistry:0];
    userInfo = [v9 userInfo];
    v14 = [userInfo objectForKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];
    v47 = 0;
    v15 = [(HMDRapportMessageTransport *)self _serializeRemoteMessage:v12 withResponseErrorData:v14 serializationError:&v47];
    v35 = v47;

    if (v15)
    {
      v16 = objc_opt_new();
      [v9 timeout];
      if (v17 > 0.0)
      {
        v18 = MEMORY[0x277CCABB0];
        [v9 timeout];
        v19 = [v18 numberWithDouble:?];
        [v16 setObject:v19 forKeyedSubscript:*MEMORY[0x277D442F0]];
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v46[0] = 0;
      v46[1] = v46;
      v46[2] = 0x2020000000;
      v46[3] = 0;
      v52 = 0;
      identifier = [v9 identifier];
      name = [v9 name];

      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __60__HMDRapportMessageTransport_sendMessage_completionHandler___block_invoke_28;
      v36[3] = &unk_27972D030;
      v36[4] = self;
      v22 = identifier;
      v37 = v22;
      v23 = v16;
      v38 = v23;
      v39 = v12;
      v40 = v15;
      v24 = name;
      v41 = v24;
      v44 = buf;
      v45 = v46;
      v42 = v11;
      v43 = v10;
      [v42 na_each:v36];

      _Block_object_dispose(v46, 8);
      _Block_object_dispose(buf, 8);

      v9 = 0;
    }

    else
    {
      context = objc_autoreleasePoolPush();
      selfCopy = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        identifier2 = [v9 identifier];
        *buf = 138543874;
        *&buf[4] = v32;
        *&buf[12] = 2114;
        *&buf[14] = identifier2;
        *&buf[22] = 2112;
        v52 = v35;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Could not send message: failed to serialize message %{public}@ with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(context);
      (*(v10 + 2))(v10, v35);
    }
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      identifier3 = [v9 identifier];
      *buf = 138543618;
      *&buf[4] = v28;
      *&buf[12] = 2114;
      *&buf[14] = identifier3;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Could not send message %{public}@: No valid destinations", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Invalid parameter." reason:@"No destinations have a valid IDS DeviceID." suggestion:0];
    (*(v10 + 2))(v10, v12);
  }
}

void __60__HMDRapportMessageTransport_sendMessage_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 40));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }

  [*(a1 + 32) respondWithPayload:0 error:v5];
}

void __60__HMDRapportMessageTransport_sendMessage_completionHandler___block_invoke_28(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    *buf = 138544386;
    v27 = v7;
    v28 = 2114;
    v29 = v8;
    v30 = 2160;
    v31 = 1752392040;
    v32 = 2112;
    v33 = v3;
    v34 = 2114;
    v35 = v9;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Sending message %{public}@ to IDS DeviceID: %{mask.hash}@, with options: %{public}@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v4);
  v10 = [*(a1 + 32) logEventSubmitter];
  v11 = +[HMDRemoteMessageLogEvent sentRemoteMessage:device:transportType:](HMDRemoteMessageLogEvent, "sentRemoteMessage:device:transportType:", *(a1 + 56), 0, [*(a1 + 32) transportType]);
  [v10 submitLogEvent:v11];

  v12 = [*(a1 + 32) rapportMessaging];
  v13 = objc_msgSend_copy(*(a1 + 64));
  v14 = [*(a1 + 32) requestID];
  v15 = [v3 UUIDString];
  v16 = objc_msgSend_copy(*(a1 + 48));
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60__HMDRapportMessageTransport_sendMessage_completionHandler___block_invoke_30;
  v19[3] = &unk_27972D008;
  v17 = *(a1 + 40);
  v19[4] = *(a1 + 32);
  v20 = v17;
  v21 = *(a1 + 72);
  v22 = v3;
  v25 = *(a1 + 96);
  v23 = *(a1 + 80);
  v24 = *(a1 + 88);
  v18 = v3;
  [v12 sendRequest:v13 requestID:v14 destinationID:v15 options:v16 responseHandler:v19];
}

void __60__HMDRapportMessageTransport_sendMessage_completionHandler___block_invoke_30(uint64_t a1, void *a2, void *a3, void *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v8 hmf_numberForKey:*MEMORY[0x277D442F8]];
  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 32);
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (v9)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = v9;
      v17 = v11;
      v18 = v8;
      v19 = v7;
      v20 = *(a1 + 40);
      v32 = *(a1 + 48);
      v21 = [v10 unsignedIntValue];
      v22 = *(a1 + 56);
      *buf = 138544642;
      v34 = v15;
      v35 = 2114;
      v36 = v20;
      v7 = v19;
      v8 = v18;
      v11 = v17;
      v9 = v16;
      v37 = 2112;
      *v38 = v32;
      *&v38[8] = 1024;
      *&v38[10] = v21;
      v39 = 2112;
      v40 = v22;
      v41 = 2112;
      v42 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Message failed over rapport, %{public}@ / %@ with rapport xid 0x%X, to IDS DeviceID: %@ with error: %@", buf, 0x3Au);
    }

    objc_autoreleasePoolPop(v11);
    atomic_fetch_add((*(*(a1 + 80) + 8) + 24), 1uLL);
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v23 = HMFGetLogIdentifier();
      v24 = *(a1 + 40);
      v25 = [v10 unsignedIntValue];
      v26 = *(a1 + 56);
      *buf = 138544130;
      v34 = v23;
      v35 = 2114;
      v36 = v24;
      v37 = 1024;
      *v38 = v25;
      *&v38[4] = 2112;
      *&v38[6] = v26;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Message succeeded over rapport, %{public}@ with rapport xid 0x%X, to IDS DeviceID: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v27 = atomic_fetch_add((*(*(a1 + 88) + 8) + 24), 1uLL) + 1;
  if (v27 == [*(a1 + 64) count])
  {
    v28 = atomic_load((*(*(a1 + 80) + 8) + 24));
    if (v28 >= [*(a1 + 64) count])
    {
      v29 = MEMORY[0x277CCA9B8];
      v30 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3203 underlyingError:v9];
      v31 = [v29 hmErrorWithCode:54 description:@"Communication failure." reason:0 suggestion:0 underlyingError:v30];

      (*(*(a1 + 72) + 16))();
    }

    else
    {
      (*(*(a1 + 72) + 16))();
    }
  }
}

- (void)_setSharedUserIDSIdentifierForDevice:(id)device idsIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  identifierCopy = identifier;
  if (!deviceCopy)
  {
    _HMFPreconditionFailure();
LABEL_12:
    _HMFPreconditionFailure();
  }

  v8 = identifierCopy;
  if (!identifierCopy)
  {
    goto LABEL_12;
  }

  account = [deviceCopy account];
  isCurrentAccount = [account isCurrentAccount];

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (isCurrentAccount)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = deviceCopy;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Not updating IDS device identifier for device because it belongs to the current account: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v16;
      v19 = 2112;
      v20 = deviceCopy;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Setting shared user's IDS device identifier for device: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [deviceCopy setSharedUserIDSIdentifier:v8];
  }
}

- (id)_IDSIdentifierForDestination:(id)destination
{
  destinationCopy = destination;
  if (destinationCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v5 = destinationCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    sharedUserIDSIdentifier = 0;
    if (isKindOfClass)
    {
      device = [destinationCopy device];
      idsIdentifier = [device idsIdentifier];
      v10 = idsIdentifier;
      if (idsIdentifier)
      {
        sharedUserIDSIdentifier = idsIdentifier;
      }

      else
      {
        device2 = [destinationCopy device];
        sharedUserIDSIdentifier = [device2 sharedUserIDSIdentifier];
      }
    }
  }

  else
  {
    sharedUserIDSIdentifier = 0;
  }

  return sharedUserIDSIdentifier;
}

- (id)_IDSIdentifiersForMessage:(id)message
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (message)
  {
    destination = [message destination];
    if (destination)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v6 = destination;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;
      v8 = 0;
      if (isKindOfClass)
      {
        v9 = [(HMDRapportMessageTransport *)self _IDSIdentifierForDestination:destination];
        v10 = v9;
        if (v9)
        {
          v12[0] = v9;
          v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
        }

        else
        {
          v8 = MEMORY[0x277CBEBF8];
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_IDSIdentifierForDevice:(id)device
{
  deviceCopy = device;
  v4 = deviceCopy;
  if (deviceCopy)
  {
    idsIdentifier = [deviceCopy idsIdentifier];
    v6 = idsIdentifier;
    if (idsIdentifier)
    {
      sharedUserIDSIdentifier = idsIdentifier;
    }

    else
    {
      sharedUserIDSIdentifier = [v4 sharedUserIDSIdentifier];
    }

    v8 = sharedUserIDSIdentifier;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_configureRapport:(id)rapport
{
  rapportCopy = rapport;
  rapportMessaging = [(HMDRapportMessageTransport *)self rapportMessaging];
  v6 = +[HMDRapportMessageTransport requestIDsToRegister];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__HMDRapportMessageTransport__configureRapport___block_invoke;
  v12[3] = &unk_279735D00;
  v12[4] = self;
  [rapportMessaging configureDiscoveryClientForRequestIDs:v6 withCompletion:v12];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__HMDRapportMessageTransport__configureRapport___block_invoke_2;
  aBlock[3] = &unk_27972CFE0;
  objc_copyWeak(&v10, &location);
  v7 = _Block_copy(aBlock);
  rapportMessaging2 = [(HMDRapportMessageTransport *)self rapportMessaging];
  [rapportMessaging2 registerRequestHandlerForRequestID:rapportCopy withRequestHandler:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __48__HMDRapportMessageTransport__configureRapport___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) startPromise];
  v1 = [MEMORY[0x277D0F7C0] futureWithNoValue];
  [v2 resolveWithFuture:v1];
}

void __48__HMDRapportMessageTransport__configureRapport___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didReceiveRequest:v9 options:v8 responseHandler:v7];
}

- (void)rapportMessaging:(id)messaging idsIdentifier:(id)identifier didAppearReachable:(BOOL)reachable
{
  reachableCopy = reachable;
  identifierCopy = identifier;
  reachabilityDelegate = [(HMDRemoteMessageTransport *)self reachabilityDelegate];
  [reachabilityDelegate transport:self idsIdentifier:identifierCopy didAppearReachable:reachableCopy];
}

- (BOOL)isValidMessage:(id)message
{
  messageCopy = message;
  destination = [messageCopy destination];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = ([messageCopy restriction] >> 3) & 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)canSendMessage:(id)message
{
  v18 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if ([(HMDRapportMessageTransport *)self isValidMessage:messageCopy])
  {
    v5 = [(HMDRapportMessageTransport *)self _IDSIdentifiersForMessage:messageCopy];
    v6 = [v5 count];
    v7 = v6 != 0;
    if (!v6)
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        identifier = [messageCopy identifier];
        v14 = 138543618;
        v15 = v11;
        v16 = 2114;
        v17 = identifier;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Not sending message %{public}@ because no destination devices have an IDS DeviceID", &v14, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)start
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    requestID = [(HMDRapportMessageTransport *)selfCopy requestID];
    v11 = 138543618;
    v12 = v6;
    v13 = 2112;
    v14 = requestID;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Starting Rapport Transport: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  requestID2 = [(HMDRapportMessageTransport *)selfCopy requestID];
  [(HMDRapportMessageTransport *)selfCopy _configureRapport:requestID2];

  startFuture = [(HMDRemoteMessageTransport *)selfCopy startFuture];

  return startFuture;
}

- (HMDRapportMessageTransport)initWithAccountRegistry:(id)registry requestID:(id)d rapportMessaging:(id)messaging logEventSubmitter:(id)submitter appleAccountManager:(id)manager
{
  dCopy = d;
  messagingCopy = messaging;
  submitterCopy = submitter;
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = HMDRapportMessageTransport;
  v17 = [(HMDRemoteMessageTransport *)&v20 initWithAccountRegistry:registry];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_requestID, d);
    objc_storeStrong(&v18->_rapportMessaging, messaging);
    objc_storeStrong(&v18->_logEventSubmitter, submitter);
    objc_storeStrong(&v18->_appleAccountManager, manager);
  }

  return v18;
}

- (HMDRapportMessageTransport)initWithAccountRegistry:(id)registry requestID:(id)d
{
  dCopy = d;
  registryCopy = registry;
  v8 = +[HMDRapportMessaging sharedInstance];
  v9 = +[HMDMetricsManager sharedLogEventSubmitter];
  v10 = +[HMDAppleAccountManager sharedManager];
  v11 = [(HMDRapportMessageTransport *)self initWithAccountRegistry:registryCopy requestID:dCopy rapportMessaging:v8 logEventSubmitter:v9 appleAccountManager:v10];

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t19_131909 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t19_131909, &__block_literal_global_131910);
  }

  v3 = logCategory__hmf_once_v20_131911;

  return v3;
}

uint64_t __41__HMDRapportMessageTransport_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v20_131911;
  logCategory__hmf_once_v20_131911 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)requestIDsToRegister
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"com.apple.home.messaging.rid";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end