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
  v118 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__HMDRapportMessageTransport__didReceiveRequest_options_responseHandler___block_invoke;
  aBlock[3] = &unk_278688DD0;
  v11 = handlerCopy;
  v107 = v11;
  v103 = _Block_copy(aBlock);
  v12 = [(HMDRapportMessageTransport *)self _rpOptions:optionsCopy stringForKey:*MEMORY[0x277D442D0]];
  v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v12];
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138544386;
    v109 = v17;
    v110 = 2112;
    v111 = requestCopy;
    v112 = 2160;
    v113 = 1752392040;
    v114 = 2112;
    v115 = v13;
    v116 = 2112;
    v117 = optionsCopy;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Received message: %@, from: %{mask.hash}@, with options: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v14);
  v105 = 0;
  v18 = [HMDRemoteMessageSerialization remoteMessageWithDictionary:requestCopy isHH2Payload:1 error:&v105];
  v19 = v105;
  v20 = v19;
  v104 = v18;
  if (v18)
  {
    if (v12)
    {
      if (v13)
      {
        v99 = [(HMDRapportMessageTransport *)selfCopy _rpOptions:optionsCopy stringForKey:*MEMORY[0x277D442A0]];
        if (v99)
        {
          v98 = v11;
          accountRegistry = [(HMDRemoteMessageTransport *)selfCopy accountRegistry];
          v22 = [accountRegistry deviceForIDSIdentifier:v13];

          v100 = v22;
          if (v22)
          {
            remoteDestinationString = [v22 remoteDestinationString];
            v97 = remoteDestinationString;
            if (remoteDestinationString)
            {
              v24 = remoteDestinationString;
              v95 = v20;
              v103[2](v103, 0);
              userInfo = [v18 userInfo];
              v26 = [userInfo mutableCopy];

              [v26 setObject:v24 forKeyedSubscript:@"kIDSMessageSourceIDKey"];
              v27 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDRapportMessageTransport transportType](selfCopy, "transportType")}];
              [v26 setObject:v27 forKeyedSubscript:@"kRemoteMessageTransportAttributionKey"];

              v28 = [requestCopy hmf_dataForKey:@"kIDSMessageResponseErrorDataKey"];
              [v26 setObject:v28 forKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];

              internal = [v18 internal];
              v96 = v26;
              [internal setUserInfo:v26];

              v30 = [HMDRemoteDeviceMessageDestination alloc];
              destination = [v18 destination];
              target = [destination target];
              v94 = [(HMDRemoteDeviceMessageDestination *)v30 initWithTarget:target device:v100];

              [v18 setDestination:v94];
              [v18 setRestriction:{objc_msgSend(objc_opt_class(), "restriction")}];
              [v18 setSecure:{-[HMDRapportMessageTransport isSecure](selfCopy, "isSecure")}];
              v93 = [HMDDeviceHandle deviceHandleForDeviceIdentifier:v13];
              v33 = [[HMDRemoteMessageSenderContext alloc] initWithDeviceHandle:v93 accountHandle:0 accountIdentifier:0 deviceVersion:0 pairingIdentityIdentifier:v99];
              [v18 setSenderContext:v33];

              logEventSubmitter = [(HMDRapportMessageTransport *)selfCopy logEventSubmitter];
              v35 = [HMDRemoteMessageLogEvent receivedRemoteMessage:v18 transportType:[(HMDRapportMessageTransport *)selfCopy transportType]];
              [logEventSubmitter submitLogEvent:v35];

              remoteMessageListener = [(HMDRapportMessageTransport *)selfCopy remoteMessageListener];
              transportType = [(HMDRapportMessageTransport *)selfCopy transportType];
              senderContext = [v18 senderContext];
              [remoteMessageListener receivedRemoteMessageOverTransportType:transportType remoteMessageSenderContext:senderContext];

              delegate = [(HMFMessageTransport *)selfCopy delegate];
              v40 = selfCopy;
              v41 = v103;
              v20 = v95;
              [delegate messageTransport:v40 didReceiveMessage:v18];

              v42 = v94;
            }

            else
            {
              v88 = objc_autoreleasePoolPush();
              v89 = selfCopy;
              v90 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
              {
                v91 = HMFGetLogIdentifier();
                *buf = 138543618;
                v109 = v91;
                v110 = 2112;
                v111 = v18;
                _os_log_impl(&dword_229538000, v90, OS_LOG_TYPE_ERROR, "%{public}@Could not find remote destination for incoming message: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v88);
              v92 = MEMORY[0x277CCA9B8];
              v96 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3210];
              v42 = [v92 hmErrorWithCode:2 description:0 reason:0 suggestion:0 underlyingError:?];
              v41 = v103;
              (v103)[2](v103, v42);
            }

            v81 = v97;
            v11 = v98;
            v80 = v100;
            v87 = v96;
          }

          else
          {
            v82 = objc_autoreleasePoolPush();
            v83 = selfCopy;
            v84 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
            {
              v85 = HMFGetLogIdentifier();
              *buf = 138544130;
              v109 = v85;
              v110 = 2160;
              v111 = 1752392040;
              v112 = 2112;
              v113 = v12;
              v114 = 2112;
              v115 = v18;
              _os_log_impl(&dword_229538000, v84, OS_LOG_TYPE_ERROR, "%{public}@Could not find source device for sender IDS DeviceID: %{mask.hash}@ message: %@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v82);
            v86 = MEMORY[0x277CCA9B8];
            v81 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3209];
            v87 = [v86 hmErrorWithCode:2 description:0 reason:0 suggestion:0 underlyingError:v81];
            v41 = v103;
            (v103)[2](v103, v87);
            v11 = v98;
            v80 = 0;
          }
        }

        else
        {
          v102 = v12;
          v71 = requestCopy;
          v72 = v13;
          v73 = v20;
          v74 = v11;
          v75 = objc_autoreleasePoolPush();
          v76 = selfCopy;
          v77 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
          {
            v78 = HMFGetLogIdentifier();
            *buf = 138543874;
            v109 = v78;
            v110 = 2112;
            v111 = v18;
            v112 = 2112;
            v113 = optionsCopy;
            _os_log_impl(&dword_229538000, v77, OS_LOG_TYPE_ERROR, "%{public}@Rejecting incoming message, %@, because pairing identity identifier is missing in options: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v75);
          v79 = MEMORY[0x277CCA9B8];
          v80 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3208];
          v81 = [v79 hmErrorWithCode:2 description:0 reason:0 suggestion:0 underlyingError:v80];
          v41 = v103;
          (v103)[2](v103, v81);
          v11 = v74;
          v20 = v73;
          v13 = v72;
          requestCopy = v71;
          v12 = v102;
        }

        goto LABEL_32;
      }

      v101 = v12;
      v53 = requestCopy;
      v54 = 0;
      v55 = v19;
      v56 = v11;
      v65 = objc_autoreleasePoolPush();
      v66 = selfCopy;
      v67 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        v68 = HMFGetLogIdentifier();
        *buf = 138543874;
        v109 = v68;
        v110 = 2112;
        v111 = v18;
        v112 = 2112;
        v113 = optionsCopy;
        _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_ERROR, "%{public}@Rejecting incoming message, %@, because IDS Device ID is an invalid UUID in options: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v65);
      v69 = MEMORY[0x277CCA9B8];
      v62 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3207];
      v63 = v69;
      v64 = -1;
    }

    else
    {
      v101 = 0;
      v53 = requestCopy;
      v54 = v13;
      v55 = v19;
      v56 = v11;
      v57 = objc_autoreleasePoolPush();
      v58 = selfCopy;
      v59 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        v60 = HMFGetLogIdentifier();
        *buf = 138543874;
        v109 = v60;
        v110 = 2112;
        v111 = v18;
        v112 = 2112;
        v113 = optionsCopy;
        _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_ERROR, "%{public}@Rejecting incoming message, %@, because IDS Device ID is missing in options: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v57);
      v61 = MEMORY[0x277CCA9B8];
      v62 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3206];
      v63 = v61;
      v64 = 2;
    }

    v70 = [v63 hmErrorWithCode:v64 description:0 reason:0 suggestion:0 underlyingError:v62];
    v41 = v103;
    (v103)[2](v103, v70);

    v11 = v56;
    v20 = v55;
    v13 = v54;
    requestCopy = v53;
    v12 = v101;
    goto LABEL_32;
  }

  v43 = objc_autoreleasePoolPush();
  v44 = selfCopy;
  v45 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v46 = optionsCopy;
    v47 = v12;
    v48 = requestCopy;
    v49 = v13;
    v50 = v20;
    v52 = v51 = v11;
    *buf = 138544386;
    v109 = v52;
    v110 = 2112;
    v111 = v48;
    v112 = 2160;
    v113 = 1752392040;
    v114 = 2112;
    v115 = v49;
    v116 = 2112;
    v117 = v50;
    _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@Dropping invalid message, %@, from: %{mask.hash}@, error: %@", buf, 0x34u);

    v11 = v51;
    v20 = v50;
    v13 = v49;
    requestCopy = v48;
    v12 = v47;
    optionsCopy = v46;
  }

  objc_autoreleasePoolPop(v43);
  v41 = v103;
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
  v9 = [HMDRemoteMessageSerialization dictionaryForMessage:messageCopy isHH2Payload:1 error:error];
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
  aBlock[3] = &unk_278689A68;
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
      v36[2] = __60__HMDRapportMessageTransport_sendMessage_completionHandler___block_invoke_42;
      v36[3] = &unk_27867EC18;
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
      v43 = v10;
      v42 = v11;
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
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Could not send message: failed to serialize message %{public}@ with error: %@", buf, 0x20u);
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
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Could not send message %{public}@: No valid destinations", buf, 0x16u);
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

void __60__HMDRapportMessageTransport_sendMessage_completionHandler___block_invoke_42(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
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
    v36 = v7;
    v37 = 2114;
    v38 = v8;
    v39 = 2160;
    v40 = 1752392040;
    v41 = 2112;
    v42 = v3;
    v43 = 2114;
    v44 = v9;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Sending message %{public}@ to IDS DeviceID: %{mask.hash}@, with options: %{public}@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v4);
  v10 = [*(a1 + 56) destination];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = [v12 devices];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __60__HMDRapportMessageTransport_sendMessage_completionHandler___block_invoke_43;
    v33[3] = &unk_27867EBC8;
    v33[4] = *(a1 + 32);
    v34 = v3;
    v14 = [v13 na_firstObjectPassingTest:v33];
  }

  else
  {
    v14 = 0;
  }

  v15 = [*(a1 + 32) logEventSubmitter];
  v16 = +[HMDRemoteMessageLogEvent sentRemoteMessage:device:transportType:](HMDRemoteMessageLogEvent, "sentRemoteMessage:device:transportType:", *(a1 + 56), v14, [*(a1 + 32) transportType]);
  [v15 submitLogEvent:v16];

  v17 = [*(a1 + 32) rapportMessaging];
  v18 = objc_msgSend_copy(*(a1 + 64));
  v19 = [*(a1 + 32) requestID];
  v20 = [v3 UUIDString];
  v21 = objc_msgSend_copy(*(a1 + 48));
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __60__HMDRapportMessageTransport_sendMessage_completionHandler___block_invoke_2;
  v26[3] = &unk_27867EBF0;
  v22 = *(a1 + 40);
  v26[4] = *(a1 + 32);
  v27 = v22;
  v28 = *(a1 + 72);
  v29 = v3;
  v32 = *(a1 + 104);
  v25 = *(a1 + 88);
  v23 = v25;
  v31 = v25;
  v30 = *(a1 + 80);
  v24 = v3;
  [v17 sendRequest:v18 requestID:v19 destinationID:v20 options:v21 responseHandler:v26];
}

uint64_t __60__HMDRapportMessageTransport_sendMessage_completionHandler___block_invoke_43(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _IDSIdentifierForDevice:a2];
  v4 = [v3 isEqual:*(a1 + 40)];

  return v4;
}

void __60__HMDRapportMessageTransport_sendMessage_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v46 = *MEMORY[0x277D85DE8];
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
      v35 = *(a1 + 48);
      v21 = [v10 unsignedIntValue];
      v22 = *(a1 + 56);
      *buf = 138544642;
      v37 = v15;
      v38 = 2114;
      v39 = v20;
      v7 = v19;
      v8 = v18;
      v11 = v17;
      v9 = v16;
      v40 = 2112;
      *v41 = v35;
      *&v41[8] = 1024;
      *&v41[10] = v21;
      v42 = 2112;
      v43 = v22;
      v44 = 2112;
      v45 = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Message failed over rapport, %{public}@ / %@ with rapport xid 0x%X, to IDS DeviceID: %@ with error: %@", buf, 0x3Au);
    }

    objc_autoreleasePoolPop(v11);
    atomic_fetch_add((*(*(a1 + 80) + 8) + 24), 1uLL);
    add = atomic_fetch_add((*(*(a1 + 88) + 8) + 24), 1uLL);
    v24 = MEMORY[0x277CCA9B8];
    v25 = [*(a1 + 56) UUIDString];
    v26 = [v24 hmInternalErrorWithCode:3204 description:@"Partial communication failure" reason:v25 suggestion:0 underlyingError:v9];

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v27 = HMFGetLogIdentifier();
      v28 = *(a1 + 40);
      v29 = [v10 unsignedIntValue];
      v30 = *(a1 + 56);
      *buf = 138544130;
      v37 = v27;
      v38 = 2114;
      v39 = v28;
      v40 = 1024;
      *v41 = v29;
      *&v41[4] = 2112;
      *&v41[6] = v30;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Message succeeded over rapport, %{public}@ with rapport xid 0x%X, to IDS DeviceID: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v11);
    add = atomic_fetch_add((*(*(a1 + 88) + 8) + 24), 1uLL);
  }

  if (add + 1 == [*(a1 + 64) count])
  {
    v31 = atomic_load((*(*(a1 + 80) + 8) + 24));
    if (v31 >= [*(a1 + 64) count])
    {
      v32 = MEMORY[0x277CCA9B8];
      v33 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3203 underlyingError:v9];
      v34 = [v32 hmErrorWithCode:54 description:@"Communication failure." reason:0 suggestion:0 underlyingError:v33];

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
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Not updating IDS device identifier for device because it belongs to the current account: %@", &v17, 0x16u);
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
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Setting shared user's IDS device identifier for device: %@", &v17, 0x16u);
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
  v21[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = messageCopy;
  if (messageCopy)
  {
    destination = [messageCopy destination];
    if (destination)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v8 = destination;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;
      if (isKindOfClass)
      {
        v10 = [(HMDRapportMessageTransport *)self _IDSIdentifierForDestination:destination];
        v11 = v10;
        if (v10)
        {
          v21[0] = v10;
          v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
        }

        else
        {
          v12 = MEMORY[0x277CBEBF8];
        }
      }

      else
      {
        v13 = destination;
        objc_opt_class();
        v14 = objc_opt_isKindOfClass();
        if (v14)
        {
          v15 = v13;
        }

        else
        {
          v15 = 0;
        }

        v11 = v15;

        if (v14)
        {
          devices = [v13 devices];
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __56__HMDRapportMessageTransport__IDSIdentifiersForMessage___block_invoke;
          v18[3] = &unk_27867EBA0;
          v18[4] = self;
          v19 = v5;
          v20 = v13;
          v12 = [devices na_map:v18];
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id __56__HMDRapportMessageTransport__IDSIdentifiersForMessage___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _IDSIdentifierForDevice:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) identifier];
      v12 = *(a1 + 48);
      v14 = 138543874;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Could not send message %{public}@ to destination %{public}@: invalid destination or device does not have an IDS DeviceID", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  return v5;
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
  v12[3] = &unk_27868A728;
  v12[4] = self;
  [rapportMessaging configureDiscoveryClientForRequestIDs:v6 withCompletion:v12];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__HMDRapportMessageTransport__configureRapport___block_invoke_2;
  aBlock[3] = &unk_27867EB78;
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
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    destination2 = [messageCopy destination];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_6;
    }
  }

  v7 = ([messageCopy restriction] >> 3) & 1;
LABEL_6:

  return v7;
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
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Not sending message %{public}@ because no destination devices have an IDS DeviceID", &v14, 0x16u);
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Starting Rapport Transport: %@", &v11, 0x16u);
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
  if (logCategory__hmf_once_t22_196116 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t22_196116, &__block_literal_global_196117);
  }

  v3 = logCategory__hmf_once_v23_196118;

  return v3;
}

void __41__HMDRapportMessageTransport_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v23_196118;
  logCategory__hmf_once_v23_196118 = v0;
}

+ (id)requestIDsToRegister
{
  v4[4] = *MEMORY[0x277D85DE8];
  v4[0] = @"com.apple.home.hh2.messaging.rid";
  v4[1] = @"com.apple.home.hh2.messaging.ble";
  v4[2] = @"com.apple.home.hh2.hmmm.rid";
  v4[3] = @"hmmm.client.rid.prefix_com.apple.private.alloy.energykit";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:4];

  return v2;
}

@end