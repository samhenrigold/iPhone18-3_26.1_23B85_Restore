@interface PDSRequestQueue
- (BOOL)enqueueRequest:(id)request;
- (PDSRequestQueue)initWithMessageDelivery:(id)delivery userTracker:(id)tracker queue:(id)queue pushTokenBlock:(id)block entryStoreBlock:(id)storeBlock;
- (PDSRequestQueueDelegate)delegate;
- (id)_deviceInfo;
- (id)_hwVersion;
- (id)_machineID;
- (id)_osVersion;
- (void)_cancelPendingRequests;
- (void)_dequeueIfNeeded;
- (void)_flightRequest:(id)request;
- (void)_logEntries:(id)entries;
- (void)_logProtoUserPushToken:(id)token;
- (void)_reAuthAndContinueWithRequest:(id)request forUser:(id)user;
- (void)_removeDeadEntriesForUser:(id)user withError:(id *)error;
@end

@implementation PDSRequestQueue

- (PDSRequestQueue)initWithMessageDelivery:(id)delivery userTracker:(id)tracker queue:(id)queue pushTokenBlock:(id)block entryStoreBlock:(id)storeBlock
{
  deliveryCopy = delivery;
  trackerCopy = tracker;
  queueCopy = queue;
  blockCopy = block;
  storeBlockCopy = storeBlock;
  if (deliveryCopy)
  {
    if (trackerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PDSRequestQueue initWithMessageDelivery:userTracker:queue:pushTokenBlock:entryStoreBlock:];
    if (trackerCopy)
    {
LABEL_3:
      if (blockCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  [PDSRequestQueue initWithMessageDelivery:userTracker:queue:pushTokenBlock:entryStoreBlock:];
  if (blockCopy)
  {
LABEL_4:
    if (queueCopy)
    {
      goto LABEL_5;
    }

LABEL_12:
    [PDSRequestQueue initWithMessageDelivery:userTracker:queue:pushTokenBlock:entryStoreBlock:];
    if (storeBlockCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_11:
  [PDSRequestQueue initWithMessageDelivery:userTracker:queue:pushTokenBlock:entryStoreBlock:];
  if (!queueCopy)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (storeBlockCopy)
  {
    goto LABEL_6;
  }

LABEL_13:
  [PDSRequestQueue initWithMessageDelivery:userTracker:queue:pushTokenBlock:entryStoreBlock:];
LABEL_6:
  v25.receiver = self;
  v25.super_class = PDSRequestQueue;
  v18 = [(PDSRequestQueue *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_messageDelivery, delivery);
    objc_storeStrong(&v19->_userTracker, tracker);
    v20 = MEMORY[0x25F8A7090](blockCopy);
    pushTokenBlock = v19->_pushTokenBlock;
    v19->_pushTokenBlock = v20;

    v19->_authRetries = 0;
    objc_storeStrong(&v19->_queue, queue);
    v22 = MEMORY[0x25F8A7090](storeBlockCopy);
    entryStoreBlock = v19->_entryStoreBlock;
    v19->_entryStoreBlock = v22;

    v19->_messageTimeout = 36000;
  }

  return v19;
}

- (BOOL)enqueueRequest:(id)request
{
  requestCopy = request;
  delegate = [(PDSRequestQueue *)self delegate];

  if (!delegate || (-[PDSRequestQueue inflightRequest](self, "inflightRequest"), (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, -[PDSRequestQueue inflightRequest](self, "inflightRequest"), v8 = objc_claimAutoreleasedReturnValue(), [v8 entries], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(requestCopy, "entries"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqualToSet:", v10), v10, v9, v8, v7, (v11 & 1) != 0))
  {
    v12 = 0;
  }

  else
  {
    [(PDSRequestQueue *)self setQueuedRequest:requestCopy];
    [(PDSRequestQueue *)self _dequeueIfNeeded];
    v12 = 1;
  }

  return v12;
}

- (void)_dequeueIfNeeded
{
  inflightRequest = [(PDSRequestQueue *)self inflightRequest];

  if (!inflightRequest)
  {
    queuedRequest = [(PDSRequestQueue *)self queuedRequest];
    if (queuedRequest)
    {
      v5 = queuedRequest;
      [(PDSRequestQueue *)self setQueuedRequest:0];
      [(PDSRequestQueue *)self _flightRequest:v5];
      queuedRequest = v5;
    }
  }
}

- (id)_deviceInfo
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  _machineID = [(PDSRequestQueue *)self _machineID];
  v5 = objc_alloc_init(PDSProtoMapEntry);
  [(PDSProtoMapEntry *)v5 setKey:@"mid"];
  [(PDSProtoMapEntry *)v5 setValue:_machineID];
  v6 = objc_alloc_init(PDSProtoMapEntry);
  [(PDSProtoMapEntry *)v6 setKey:@"hwv"];
  _hwVersion = [(PDSRequestQueue *)self _hwVersion];
  [(PDSProtoMapEntry *)v6 setValue:_hwVersion];

  v8 = objc_alloc_init(PDSProtoMapEntry);
  [(PDSProtoMapEntry *)v8 setKey:@"osv"];
  _osVersion = [(PDSRequestQueue *)self _osVersion];
  [(PDSProtoMapEntry *)v8 setValue:_osVersion];

  [v3 addObject:v5];
  [v3 addObject:v6];
  [v3 addObject:v8];

  return v3;
}

- (id)_machineID
{
  if (_machineID_onceToken != -1)
  {
    [PDSRequestQueue _machineID];
  }

  v7 = 0;
  v2 = [_machineID_anisetteProvisioningController anisetteDataWithError:&v7];
  v3 = v7;
  v4 = v3;
  if (v3)
  {
    NSLog(&cfstr_Anisettedatawi.isa, v3);
  }

  machineID = [v2 machineID];
  if (![(__CFString *)machineID length])
  {

    machineID = @"Unknown";
  }

  return machineID;
}

uint64_t __29__PDSRequestQueue__machineID__block_invoke()
{
  _machineID___AKAnisetteProvisioningControllerClass = MEMORY[0x25F8A6CF0](@"AKAnisetteProvisioningController", @"AuthKit");
  _machineID_anisetteProvisioningController = objc_alloc_init(_machineID___AKAnisetteProvisioningControllerClass);

  return MEMORY[0x2821F96F8]();
}

- (id)_osVersion
{
  v2 = MEMORY[0x277CCACA8];
  mEMORY[0x277D19238] = [MEMORY[0x277D19238] sharedInstance];
  productName = [mEMORY[0x277D19238] productName];
  mEMORY[0x277D19238]2 = [MEMORY[0x277D19238] sharedInstance];
  productVersion = [mEMORY[0x277D19238]2 productVersion];
  mEMORY[0x277D19238]3 = [MEMORY[0x277D19238] sharedInstance];
  productBuildVersion = [mEMORY[0x277D19238]3 productBuildVersion];
  v9 = [v2 stringWithFormat:@"%@, %@, %@", productName, productVersion, productBuildVersion];

  return v9;
}

- (id)_hwVersion
{
  mEMORY[0x277D19238] = [MEMORY[0x277D19238] sharedInstance];
  model = [mEMORY[0x277D19238] model];

  if (![(__CFString *)model length])
  {

    model = @"Unknown";
  }

  return model;
}

- (void)_flightRequest:(id)request
{
  v157 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v3 = pds_defaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25DED8000, v3, OS_LOG_TYPE_DEFAULT, "PDSRequestQueue: constructing request to flight", buf, 2u);
  }

  v4 = pds_defaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    entries = [requestCopy entries];
    v6 = [entries count];
    *buf = 134217984;
    v153 = v6;
    _os_log_impl(&dword_25DED8000, v4, OS_LOG_TYPE_DEFAULT, "%lu total entries", buf, 0xCu);
  }

  entries2 = [requestCopy entries];
  [(PDSRequestQueue *)self _logEntries:entries2];

  [(PDSRequestQueue *)self setInflightRequest:requestCopy];
  v123 = objc_alloc_init(PDSProtoBatchRegisterReq);
  v139 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v130 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v125 = objc_alloc_init(MEMORY[0x277CBEB38]);
  delegate = [(PDSRequestQueue *)self delegate];
  v121 = [delegate ttlForRequest:requestCopy];

  _deviceInfo = [(PDSRequestQueue *)self _deviceInfo];
  v151 = 0u;
  v149 = 0u;
  v150 = 0u;
  v148 = 0u;
  obj = [requestCopy entries];
  v138 = [(PDSRegisterMessage *)obj countByEnumeratingWithState:&v148 objects:v156 count:16];
  if (v138)
  {
    v120 = 0;
    v118 = 0;
    v126 = 0;
    v137 = *v149;
    v119 = *MEMORY[0x277CEE9F0];
    v124 = *MEMORY[0x277CEE9E8];
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v149 != v137)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v148 + 1) + 8 * v9);
        user = [v10 user];
        userID = [user userID];
        v13 = [v139 objectForKeyedSubscript:userID];

        if (!v13)
        {
          v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
          user2 = [v10 user];
          userID2 = [user2 userID];
          [v139 setObject:v13 forKeyedSubscript:userID2];
        }

        v16 = MEMORY[0x277CCABB0];
        registration = [v10 registration];
        v18 = [v16 numberWithChar:{objc_msgSend(registration, "pushEnvironment")}];
        v19 = [v13 objectForKeyedSubscript:v18];

        if (v19)
        {
LABEL_13:
          if ([v10 state] != 2)
          {
            v20 = objc_alloc_init(PDSProtoTopic);
            registration2 = [v10 registration];
            topicString = [registration2 topicString];
            if (topicString)
            {
              registration3 = [v10 registration];
              qualifierString = [registration3 qualifierString];
              v25 = qualifierString == 0;

              if (!v25)
              {
                registration4 = [v10 registration];
                topicString2 = [registration4 topicString];
                [(PDSProtoTopic *)v20 setName:topicString2];

                registration5 = [v10 registration];
                qualifierString2 = [registration5 qualifierString];
                [(PDSProtoTopic *)v20 setQualifier:qualifierString2];

                [(PDSProtoUserPushTokenRegRequest *)v19 addTopic:v20];
                ++v126;
                goto LABEL_32;
              }
            }

            else
            {
            }

            v43 = pds_defaultLog();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_25DED8000, v43, OS_LOG_TYPE_DEFAULT, "Missing required info for entry! Not including entry in request", buf, 2u);
            }

LABEL_32:
          }

          goto LABEL_34;
        }

        user3 = [v10 user];
        userID3 = [user3 userID];
        v32 = [v130 objectForKeyedSubscript:userID3];
        v33 = MEMORY[0x277CCABB0];
        registration6 = [v10 registration];
        v35 = [v33 numberWithChar:{objc_msgSend(registration6, "pushEnvironment")}];
        LODWORD(v33) = [v32 containsObject:v35];

        if (v33)
        {
          v20 = pds_defaultLog();
          if (os_log_type_enabled(&v20->super.super, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25DED8000, &v20->super.super, OS_LOG_TYPE_DEFAULT, "The user/env for this entry has been omitted from the request. Skipping entry", buf, 2u);
          }

          v19 = 0;
          goto LABEL_32;
        }

        userTracker = [(PDSRequestQueue *)self userTracker];
        v147 = 0;
        user4 = [v10 user];
        v146 = 0;
        v133 = [userTracker tokenAndIdentifier:&v147 forUser:user4 withError:&v146];
        v135 = v147;
        v136 = v146;

        if (!v136 && v133 && v135)
        {
          user5 = [v10 user];
          [v125 setObject:user5 forKeyedSubscript:v135];

          v134 = objc_alloc_init(PDSProtoGSTokenAuth);
          [(PDSProtoGSTokenAuth *)v134 setGsAuthToken:v133];
          defaultLogger = objc_alloc_init(PDSProtoUserAuth);
          [(PDSProtoUserAuth *)defaultLogger setUserauthOneof:1];
          [(PDSProtoUserAuth *)defaultLogger setGsAuthToken:v134];
          registration7 = [v10 registration];
          pushEnvironment = [registration7 pushEnvironment];

          v42 = v124;
          if (pushEnvironment == 1)
          {
            goto LABEL_27;
          }

          if (pushEnvironment)
          {
            v128 = 0;
          }

          else
          {
            v42 = v119;
LABEL_27:
            v128 = v42;
          }

          pushTokenBlock = [(PDSRequestQueue *)self pushTokenBlock];
          v129 = (pushTokenBlock)[2](pushTokenBlock, v128);

          __imHexString = [v129 __imHexString];
          v68 = [__imHexString length] == 0;

          if (v68)
          {
            v78 = pds_defaultLog();
            if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v153 = v128;
              _os_log_impl(&dword_25DED8000, v78, OS_LOG_TYPE_DEFAULT, "Missing push token for environment %@! Omitting from request", buf, 0xCu);
            }

            user6 = [v10 user];
            userID4 = [user6 userID];
            v69 = [v130 objectForKeyedSubscript:userID4];

            if (!v69)
            {
              v69 = objc_alloc_init(MEMORY[0x277CBEB58]);
              user7 = [v10 user];
              userID5 = [user7 userID];
              [v130 setObject:v69 forKeyedSubscript:userID5];
            }

            v83 = MEMORY[0x277CCABB0];
            registration8 = [v10 registration];
            v84 = [v83 numberWithChar:{objc_msgSend(registration8, "pushEnvironment")}];
            [(PDSProtoUserPushToken *)v69 addObject:v84];

            v19 = 0;
            v120 = 1;
            v58 = 3;
          }

          else
          {
            v69 = objc_alloc_init(PDSProtoUserPushToken);
            [(PDSProtoUserPushToken *)v69 setUserId:v135];
            __imHexString2 = [v129 __imHexString];
            [(PDSProtoUserPushToken *)v69 setPushToken:__imHexString2];

            [(PDSProtoUserPushToken *)v69 setUserAuth:defaultLogger];
            v71 = pds_defaultLog();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_25DED8000, v71, OS_LOG_TYPE_DEFAULT, "Adding UserPushToken to request:", buf, 2u);
            }

            [(PDSRequestQueue *)self _logProtoUserPushToken:v69];
            v19 = objc_alloc_init(PDSProtoUserPushTokenRegRequest);
            [(PDSProtoUserPushTokenRegRequest *)v19 setUserPushToken:v69];
            [(PDSProtoUserPushTokenRegRequest *)v19 setDeviceInfos:_deviceInfo];
            [(PDSProtoUserPushTokenRegRequest *)v19 setTtl:v121];
            v72 = MEMORY[0x277CCABB0];
            registration9 = [v10 registration];
            registration8 = [v72 numberWithChar:{objc_msgSend(registration9, "pushEnvironment")}];

            user8 = [v10 user];
            userID6 = [user8 userID];
            v77 = [v139 objectForKeyedSubscript:userID6];
            [v77 setObject:v19 forKeyedSubscript:registration8];

            [(PDSProtoBatchRegisterReq *)v123 addUserPushTokenRegRequests:v19];
            v58 = 0;
          }

          goto LABEL_60;
        }

        v44 = pds_defaultLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v153 = v136;
          v154 = 2112;
          v155 = v135;
          _os_log_impl(&dword_25DED8000, v44, OS_LOG_TYPE_DEFAULT, "Issue obtaining token. Error: %@ -- DSID: %@", buf, 0x16u);
        }

        domain = [v136 domain];
        v46 = domain;
        if (domain != *MEMORY[0x277D37B18])
        {

LABEL_48:
          user9 = [v10 user];
          [(PDSRequestQueue *)self _reAuthAndContinueWithRequest:requestCopy forUser:user9];

          v60 = objc_alloc(MEMORY[0x277D18A50]);
          v61 = MEMORY[0x277CCABB0];
          requestInfo = [requestCopy requestInfo];
          v63 = [v61 numberWithUnsignedInteger:{objc_msgSend(requestInfo, "regReason")}];
          requestInfo2 = [requestCopy requestInfo];
          heartbeatDate = [requestInfo2 heartbeatDate];
          v134 = [v60 initWithFailureReason:@"Auth issue - potentially recoverable" registrationReason:v63 heartbeatDate:heartbeatDate];

          defaultLogger = [MEMORY[0x277D189A0] defaultLogger];
          [(PDSProtoUserAuth *)defaultLogger logMetric:v134];
          v19 = 0;
          v58 = 1;
          goto LABEL_60;
        }

        v47 = [v136 code] == -102;

        if (!v47)
        {
          goto LABEL_48;
        }

        v48 = pds_defaultLog();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25DED8000, v48, OS_LOG_TYPE_DEFAULT, "User is non-existent.  Skipping, removing dead entries for user, and continuing with request", buf, 2u);
        }

        user10 = [v10 user];
        userID7 = [user10 userID];
        v134 = [v130 objectForKeyedSubscript:userID7];

        if (!v134)
        {
          v134 = objc_alloc_init(MEMORY[0x277CBEB58]);
          user11 = [v10 user];
          userID8 = [user11 userID];
          [v130 setObject:v134 forKeyedSubscript:userID8];
        }

        v53 = MEMORY[0x277CCABB0];
        registration10 = [v10 registration];
        v55 = [v53 numberWithChar:{objc_msgSend(registration10, "pushEnvironment")}];
        [(PDSProtoGSTokenAuth *)v134 addObject:v55];

        user12 = [v10 user];
        v145 = 0;
        [(PDSRequestQueue *)self _removeDeadEntriesForUser:user12 withError:&v145];
        defaultLogger = v145;

        v57 = pds_defaultLog();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v153 = defaultLogger;
          _os_log_impl(&dword_25DED8000, v57, OS_LOG_TYPE_DEFAULT, "Removed entries for user with error: %@", buf, 0xCu);
        }

        v19 = 0;
        v118 = 1;
        v58 = 3;
LABEL_60:

        if (!v58)
        {
          goto LABEL_13;
        }

        if (v58 != 3)
        {
          goto LABEL_88;
        }

LABEL_34:
        ++v9;
      }

      while (v138 != v9);
      v85 = [(PDSRegisterMessage *)obj countByEnumeratingWithState:&v148 objects:v156 count:16];
      v138 = v85;
      if (!v85)
      {
        goto LABEL_66;
      }
    }
  }

  v120 = 0;
  v118 = 0;
  v126 = 0;
LABEL_66:

  v86 = pds_defaultLog();
  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v153) = v126;
    _os_log_impl(&dword_25DED8000, v86, OS_LOG_TYPE_DEFAULT, "Total active entries to flight: %d", buf, 8u);
  }

  userPushTokenRegRequests = [(PDSProtoBatchRegisterReq *)v123 userPushTokenRegRequests];
  v88 = [userPushTokenRegRequests count] == 0;

  if (v88)
  {
    v99 = pds_defaultLog();
    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25DED8000, v99, OS_LOG_TYPE_DEFAULT, "RegRequest is empty! Aborting", buf, 2u);
    }

    [(PDSRequestQueue *)self setInflightRequest:0];
    v100 = @"Missing Token";
    v101 = @"Missing user";
    if (v120)
    {
      v101 = @"Missing Token & User";
    }

    else
    {
      v100 = 0;
    }

    if (v118)
    {
      v102 = v101;
    }

    else
    {
      v102 = v100;
    }

    v103 = objc_alloc(MEMORY[0x277D18A50]);
    v104 = MEMORY[0x277CCABB0];
    requestInfo3 = [requestCopy requestInfo];
    v106 = [v104 numberWithUnsignedInteger:{objc_msgSend(requestInfo3, "regReason")}];
    requestInfo4 = [requestCopy requestInfo];
    heartbeatDate2 = [requestInfo4 heartbeatDate];
    obj = [v103 initWithFailureReason:v102 registrationReason:v106 heartbeatDate:heartbeatDate2];

    defaultLogger2 = [MEMORY[0x277D189A0] defaultLogger];
    [defaultLogger2 logMetric:obj];
  }

  else
  {
    obj = objc_alloc_init(PDSRegisterMessage);
    [(PDSProtoBatchRegisterReq *)v123 setRequestTtl:v121];
    v89 = pds_defaultLog();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v153 = v121;
      _os_log_impl(&dword_25DED8000, v89, OS_LOG_TYPE_DEFAULT, "Using request ttl: %ld", buf, 0xCu);
    }

    [(PDSRegisterMessage *)obj setProtoRequest:v123];
    requestInfo5 = [requestCopy requestInfo];
    -[PDSRegisterMessage setRegReason:](obj, "setRegReason:", [requestInfo5 regReason]);

    v91 = pds_defaultLog();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
    {
      requestInfo6 = [requestCopy requestInfo];
      regReason = [requestInfo6 regReason];
      *buf = 134217984;
      v153 = regReason;
      _os_log_impl(&dword_25DED8000, v91, OS_LOG_TYPE_DEFAULT, "Setting registration reason: %ld", buf, 0xCu);
    }

    [(IDSBaseMessage *)obj setTimeout:self->_messageTimeout];
    pushTokenBlock2 = [(PDSRequestQueue *)self pushTokenBlock];
    defaultLogger2 = pushTokenBlock2[2](pushTokenBlock2, *MEMORY[0x277CEE9F0]);

    __imHexString3 = [defaultLogger2 __imHexString];
    v97 = [__imHexString3 length] == 0;

    if (v97)
    {
      v109 = pds_defaultLog();
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25DED8000, v109, OS_LOG_TYPE_DEFAULT, "Missing push token! Failing request", buf, 2u);
      }

      v110 = objc_alloc(MEMORY[0x277D18A50]);
      v111 = MEMORY[0x277CCABB0];
      requestInfo7 = [requestCopy requestInfo];
      v113 = [v111 numberWithUnsignedInteger:{objc_msgSend(requestInfo7, "regReason")}];
      requestInfo8 = [requestCopy requestInfo];
      heartbeatDate3 = [requestInfo8 heartbeatDate];
      v116 = [v110 initWithFailureReason:@"Could not fetch production push token" registrationReason:v113 heartbeatDate:heartbeatDate3];

      defaultLogger3 = [MEMORY[0x277D189A0] defaultLogger];
      [defaultLogger3 logMetric:v116];

      [(PDSRequestQueue *)self setInflightRequest:0];
    }

    else
    {
      [(FTIDSMessage *)obj setPushToken:defaultLogger2];
      IDSAssignPushIdentityToMessage();
      objc_initWeak(buf, self);
      v140[0] = MEMORY[0x277D85DD0];
      v140[1] = 3221225472;
      v140[2] = __34__PDSRequestQueue__flightRequest___block_invoke;
      v140[3] = &unk_2799F84B0;
      objc_copyWeak(&v144, buf);
      v141 = v125;
      selfCopy = self;
      v143 = requestCopy;
      [(IDSBaseMessage *)obj setCompletionBlock:v140];
      [(PDSRequestQueue *)self _cancelPendingRequests];
      messageDelivery = [(PDSRequestQueue *)self messageDelivery];
      [messageDelivery sendMessage:obj];

      objc_destroyWeak(&v144);
      objc_destroyWeak(buf);
    }
  }

LABEL_88:
}

void __34__PDSRequestQueue__flightRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__PDSRequestQueue__flightRequest___block_invoke_2;
    block[3] = &unk_2799F8488;
    block[4] = v5;
    v11 = v3;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v12 = v7;
    v13 = v8;
    v14 = v9;
    dispatch_async(v6, block);
  }
}

void __34__PDSRequestQueue__flightRequest___block_invoke_2(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setInflightRequest:0];
  [*(a1 + 32) _dequeueIfNeeded];
  v2 = [*(a1 + 40) protoResponse];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v25 = v2;
  v4 = [v2 userPushTokenRegResponses];
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [(PDSResponse *)v9 userPushToken];
        v11 = [v10 userId];

        if (v11)
        {
          v12 = [*(a1 + 48) objectForKeyedSubscript:v11];
          if (v12)
          {
            v13 = [MEMORY[0x277CCABB0] numberWithInt:{-[PDSResponse status](v9, "status")}];
            [v3 setObject:v13 forKeyedSubscript:v12];

            if ([*(a1 + 56) _isAuthIssue:{-[PDSResponse status](v9, "status")}] && (objc_msgSend(v26, "containsObject:", v12) & 1) == 0)
            {
              v14 = pds_defaultLog();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                v15 = [(PDSResponse *)v9 status];
                *buf = 67109120;
                LODWORD(v32) = v15;
                _os_log_impl(&dword_25DED8000, v14, OS_LOG_TYPE_DEFAULT, "Auth issue: %i", buf, 8u);
              }

              [*(a1 + 32) _reAuthAndContinueWithRequest:*(a1 + 64) forUser:v12];
              [v26 addObject:v12];
            }
          }

          else
          {
            v16 = pds_defaultLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v32 = v11;
              _os_log_impl(&dword_25DED8000, v16, OS_LOG_TYPE_DEFAULT, "A matching user for: %@ not found", buf, 0xCu);
            }
          }
        }

        else
        {
          v12 = pds_defaultLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v32 = v9;
            _os_log_impl(&dword_25DED8000, v12, OS_LOG_TYPE_DEFAULT, "alDSID not included in response: %@", buf, 0xCu);
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v6);
  }

  v17 = [*(a1 + 32) delegate];
  v18 = [v17 ttlForRequest:*(a1 + 64)];

  if ([v25 hasResponseTtl])
  {
    v18 = [v25 responseTtl];
  }

  v19 = [PDSResponse alloc];
  v20 = [v25 status];
  v21 = [v3 copy];
  v22 = [(PDSResponse *)v19 initWithStatus:v20 statusByUser:v21 ttl:v18];

  v23 = pds_oversizedLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v22;
    _os_log_impl(&dword_25DED8000, v23, OS_LOG_TYPE_DEFAULT, "PDSRequestQueue: response received: %@", buf, 0xCu);
  }

  v24 = [*(a1 + 32) delegate];
  [v24 requestQueue:*(a1 + 32) processedRequest:*(a1 + 64) withResponse:v22];
}

- (void)_reAuthAndContinueWithRequest:(id)request forUser:(id)user
{
  v25 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  userCopy = user;
  v8 = pds_defaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    authRetries = [(PDSRequestQueue *)self authRetries];
    _os_log_impl(&dword_25DED8000, v8, OS_LOG_TYPE_DEFAULT, "Attempting Reauth - Current reauth attempts: %ld", buf, 0xCu);
  }

  lastReauthAttempt = [(PDSRequestQueue *)self lastReauthAttempt];

  if (lastReauthAttempt)
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    lastReauthAttempt2 = [(PDSRequestQueue *)self lastReauthAttempt];
    [v10 timeIntervalSinceDate:lastReauthAttempt2];
    v13 = v12;

    if (v13 > 43200.0)
    {
      [(PDSRequestQueue *)self setAuthRetries:0];
    }
  }

  if ([(PDSRequestQueue *)self authRetries]> 2)
  {
    v18 = pds_defaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25DED8000, v18, OS_LOG_TYPE_DEFAULT, "No reauth attempts remaining", buf, 2u);
    }
  }

  else
  {
    [(PDSRequestQueue *)self setAuthRetries:[(PDSRequestQueue *)self authRetries]+ 1];
    [(PDSRequestQueue *)self setInflightRequest:requestCopy];
    v14 = [MEMORY[0x277CBEAA8] now];
    [(PDSRequestQueue *)self setLastReauthAttempt:v14];

    v15 = pds_defaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25DED8000, v15, OS_LOG_TYPE_DEFAULT, "We have retries left, attempting reauth", buf, 2u);
    }

    objc_initWeak(buf, self);
    v16 = dispatch_time(0, 10000000000 * [(PDSRequestQueue *)self authRetries]- 10000000000);
    queue = self->_queue;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __57__PDSRequestQueue__reAuthAndContinueWithRequest_forUser___block_invoke;
    v19[3] = &unk_2799F8528;
    v19[4] = self;
    v20 = userCopy;
    objc_copyWeak(&v22, buf);
    v21 = requestCopy;
    dispatch_after(v16, queue, v19);

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }
}

void __57__PDSRequestQueue__reAuthAndContinueWithRequest_forUser___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userTracker];
  v3 = *(a1 + 40);
  v11 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__PDSRequestQueue__reAuthAndContinueWithRequest_forUser___block_invoke_2;
  v8[3] = &unk_2799F8500;
  objc_copyWeak(&v10, (a1 + 56));
  v9 = *(a1 + 48);
  [v2 refreshCredentialsForUser:v3 withError:&v11 completion:v8];
  v4 = v11;

  if (v4)
  {
    v5 = pds_defaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __57__PDSRequestQueue__reAuthAndContinueWithRequest_forUser___block_invoke_cold_1((a1 + 40), v4, v5);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained setInflightRequest:0];
  }

  else
  {
    WeakRetained = pds_defaultLog();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&dword_25DED8000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Kicked off refresh for user %@", buf, 0xCu);
    }
  }

  objc_destroyWeak(&v10);
}

void __57__PDSRequestQueue__reAuthAndContinueWithRequest_forUser___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__PDSRequestQueue__reAuthAndContinueWithRequest_forUser___block_invoke_3;
    block[3] = &unk_2799F84D8;
    block[4] = v6;
    v9 = v4;
    v10 = *(a1 + 32);
    dispatch_async(v7, block);
  }
}

uint64_t __57__PDSRequestQueue__reAuthAndContinueWithRequest_forUser___block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setInflightRequest:0];
  v2 = pds_defaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_25DED8000, v2, OS_LOG_TYPE_DEFAULT, "Credential refresh completed: error: %@", &v5, 0xCu);
  }

  return [*(a1 + 32) enqueueRequest:*(a1 + 48)];
}

- (void)_cancelPendingRequests
{
  v18 = *MEMORY[0x277D85DE8];
  messageDelivery = [(PDSRequestQueue *)self messageDelivery];
  hasQueuedItems = [messageDelivery hasQueuedItems];

  if (hasQueuedItems)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    messageDelivery2 = [(PDSRequestQueue *)self messageDelivery];
    queuedMessages = [messageDelivery2 queuedMessages];

    v7 = [queuedMessages countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(queuedMessages);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            messageDelivery3 = [(PDSRequestQueue *)self messageDelivery];
            [messageDelivery3 cancelMessage:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [queuedMessages countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (void)_logEntries:(id)entries
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = entries;
  v19 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v19)
  {
    v3 = 0;
    v18 = *v22;
    v4 = @"\n";
    do
    {
      for (i = 0; i != v19; ++i)
      {
        v20 = v3;
        v6 = v4;
        if (*v22 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        registration = [v7 registration];
        qualifierString = [registration qualifierString];
        registration2 = [v7 registration];
        topicString = [registration2 topicString];
        [v7 state];
        v12 = PDSStringForEntryState();
        user = [v7 user];
        userID = [user userID];
        v4 = [(__CFString *)v6 stringByAppendingFormat:@"\t PDSEntry: Qual:%@ Topic:%@ State:%@ User:%@\n", qualifierString, topicString, v12, userID];

        if (v20 < 5)
        {
          v3 = v20 + 1;
        }

        else
        {
          v15 = pds_oversizedLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v26 = v4;
            _os_log_impl(&dword_25DED8000, v15, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
          }

          v3 = 0;
          v4 = @"\n";
        }
      }

      v19 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v19);
    if (v3 >= 1)
    {
      v16 = pds_oversizedLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v4;
        _os_log_impl(&dword_25DED8000, v16, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }
    }
  }

  else
  {
    v4 = @"\n";
  }
}

- (void)_logProtoUserPushToken:(id)token
{
  v11 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v4 = pds_defaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    userId = [tokenCopy userId];
    pushToken = [tokenCopy pushToken];
    v7 = 138412546;
    v8 = userId;
    v9 = 2112;
    v10 = pushToken;
    _os_log_impl(&dword_25DED8000, v4, OS_LOG_TYPE_DEFAULT, "PDSUserPushTokenRequest: UserID:%@ PushToken:%@", &v7, 0x16u);
  }
}

- (void)_removeDeadEntriesForUser:(id)user withError:(id *)error
{
  v13 = *MEMORY[0x277D85DE8];
  userCopy = user;
  v7 = pds_defaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = userCopy;
    _os_log_impl(&dword_25DED8000, v7, OS_LOG_TYPE_DEFAULT, "Removing all entries with state [remove] for user: %@", &v11, 0xCu);
  }

  entryStoreBlock = [(PDSRequestQueue *)self entryStoreBlock];
  v9 = entryStoreBlock[2]();

  if (v9)
  {
    [v9 deleteEntriesForUser:userCopy withState:2 withError:error];
  }

  else
  {
    v10 = pds_defaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_25DED8000, v10, OS_LOG_TYPE_DEFAULT, "EntryStore is nil! aborting", &v11, 2u);
    }
  }
}

- (PDSRequestQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithMessageDelivery:userTracker:queue:pushTokenBlock:entryStoreBlock:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"messageDelivery" object:? file:? lineNumber:? description:?];
}

- (void)initWithMessageDelivery:userTracker:queue:pushTokenBlock:entryStoreBlock:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"userTracker" object:? file:? lineNumber:? description:?];
}

- (void)initWithMessageDelivery:userTracker:queue:pushTokenBlock:entryStoreBlock:.cold.3()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"pushTokenBlock" object:? file:? lineNumber:? description:?];
}

- (void)initWithMessageDelivery:userTracker:queue:pushTokenBlock:entryStoreBlock:.cold.4()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"queue" object:? file:? lineNumber:? description:?];
}

- (void)initWithMessageDelivery:userTracker:queue:pushTokenBlock:entryStoreBlock:.cold.5()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"entryStoreBlock" object:? file:? lineNumber:? description:?];
}

void __57__PDSRequestQueue__reAuthAndContinueWithRequest_forUser___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_25DED8000, log, OS_LOG_TYPE_ERROR, "Credential refresh failed for user: %@ error: %@", &v4, 0x16u);
}

@end