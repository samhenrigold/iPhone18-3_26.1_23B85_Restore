@interface SPTransport
+ (id)sharedInstance;
- (BOOL)_sendProtobuf:(id)protobuf sender:(id)sender timeOut:(double)out securityType:(int64_t)type retryExpiration:(id)expiration tryGeneration:(unint64_t)generation withCompletion:(id)completion;
- (BOOL)handleDataProtectionSendFailureOrRetryFailureOnService:(id)service account:(id)account identifier:(id)identifier error:(id)error;
- (BOOL)isWiFiEnabled;
- (BOOL)isWiFiRequiredForSize:(int64_t)size;
- (BOOL)saveForPossibleResend:(id)resend;
- (BOOL)sendProtobuf:(id)protobuf sender:(id)sender timeOut:(double)out securityType:(int64_t)type withCompletion:(id)completion;
- (SPTransport)init;
- (id)serviceForTransport:(int64_t)transport;
- (void)_sendData:(id)data forApplication:(id)application idsPriority:(int64_t)priority installer:(id)installer withCompletion:(id)completion;
- (void)_sendPlist:(id)plist timeOut:(double)out securityType:(int64_t)type retryExpiration:(id)expiration tryGeneration:(unint64_t)generation withCompletion:(id)completion;
- (void)disableWiFiIfNeededForDataOfSize:(int64_t)size;
- (void)enableWiFiIfNeededForDataOfSize:(int64_t)size;
- (void)incomingInsecureProtobuf:(id)protobuf;
- (void)incomingProtobuf:(id)protobuf;
- (void)incomingSecureProtobuf:(id)protobuf;
- (void)keepWiFiAliveIfNeeded;
- (void)killWiFiTimer;
- (void)removeOutgoingMessageBlockIfIdentiferMatches:(id)matches sendError:(id)error;
- (void)sendData:(id)data forApplication:(id)application idsPriority:(int64_t)priority installer:(id)installer withCompletion:(id)completion;
- (void)sendPlist:(id)plist timeOut:(double)out securityType:(int64_t)type withCompletion:(id)completion;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)serviceSpaceDidBecomeAvailable:(id)available;
- (void)startWiFiTimer;
- (void)temporarilyRetainIDSMessageContext:(id)context;
- (void)wifiTimeOut;
@end

@implementation SPTransport

+ (id)sharedInstance
{
  if (qword_100051D78 != -1)
  {
    sub_100029F9C();
  }

  v3 = qword_100051D80;

  return v3;
}

- (SPTransport)init
{
  v20.receiver = self;
  v20.super_class = SPTransport;
  v2 = [(SPTransport *)&v20 init];
  v3 = [NSMutableDictionary dictionaryWithCapacity:0];
  messages = v2->_messages;
  v2->_messages = v3;

  v5 = dispatch_queue_create("com.apple.companionappd.transportMessagesAccess", 0);
  messagesAccessQueue = v2->_messagesAccessQueue;
  v2->_messagesAccessQueue = v5;

  v7 = dispatch_queue_create("com.apple.watchkit.transportSend", 0);
  sendQueue = v2->_sendQueue;
  v2->_sendQueue = v7;

  v9 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.sockpuppet"];
  [(SPTransport *)v2 setSecureRemoteService:v9];

  v10 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.sockpuppet.classd"];
  [(SPTransport *)v2 setInsecureRemoteService:v10];

  secureRemoteService = [(SPTransport *)v2 secureRemoteService];
  [secureRemoteService setProtobufAction:"incomingSecureProtobuf:" forIncomingRequestsOfType:1];

  insecureRemoteService = [(SPTransport *)v2 insecureRemoteService];
  [insecureRemoteService setProtobufAction:"incomingInsecureProtobuf:" forIncomingRequestsOfType:1];

  secureRemoteService2 = [(SPTransport *)v2 secureRemoteService];
  [secureRemoteService2 addDelegate:v2 queue:&_dispatch_main_q];

  insecureRemoteService2 = [(SPTransport *)v2 insecureRemoteService];
  [insecureRemoteService2 addDelegate:v2 queue:&_dispatch_main_q];

  v15 = dispatch_queue_create("com.apple.companionappd.retainedIDSMessageContexts", 0);
  retainedIDSMessageContextsQueue = v2->_retainedIDSMessageContextsQueue;
  v2->_retainedIDSMessageContextsQueue = v15;

  v17 = +[NSMutableArray array];
  retainedIDSMessageContexts = v2->_retainedIDSMessageContexts;
  v2->_retainedIDSMessageContexts = v17;

  *&v2->_canSend = 1;
  return v2;
}

- (void)enableWiFiIfNeededForDataOfSize:(int64_t)size
{
  selfCopy = self;
  v5 = objc_sync_enter(selfCopy);
  v6 = selfCopy->_wifiThresholdCount + size;
  selfCopy->_wifiThresholdCount = v6;
  if (v6 >= 5242880 && !selfCopy->_wifiEnabled)
  {
    v7 = wk_default_log(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136446466;
      v11 = "[SPTransport enableWiFiIfNeededForDataOfSize:]";
      v12 = 1024;
      v13 = 106;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: we will try to use wifi", &v10, 0x12u);
    }

    secureRemoteService = [(SPTransport *)selfCopy secureRemoteService];
    [secureRemoteService setPreferInfraWiFi:1];

    insecureRemoteService = [(SPTransport *)selfCopy insecureRemoteService];
    [insecureRemoteService setPreferInfraWiFi:1];

    selfCopy->_wifiEnabled = 1;
  }

  objc_sync_exit(selfCopy);
}

- (void)disableWiFiIfNeededForDataOfSize:(int64_t)size
{
  selfCopy = self;
  v5 = objc_sync_enter(selfCopy);
  v6 = selfCopy->_wifiThresholdCount - size;
  selfCopy->_wifiThresholdCount = v6 & ~(v6 >> 63);
  if (v6 < 5242880 && selfCopy->_wifiEnabled)
  {
    v7 = wk_default_log(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136446466;
      v11 = "[SPTransport disableWiFiIfNeededForDataOfSize:]";
      v12 = 1024;
      v13 = 125;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: don't need wifi anymore", &v10, 0x12u);
    }

    secureRemoteService = [(SPTransport *)selfCopy secureRemoteService];
    [secureRemoteService setPreferInfraWiFi:0];

    insecureRemoteService = [(SPTransport *)selfCopy insecureRemoteService];
    [insecureRemoteService setPreferInfraWiFi:0];

    [(SPTransport *)selfCopy killWiFiTimer];
    selfCopy->_wifiEnabled = 0;
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)isWiFiEnabled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  wifiEnabled = selfCopy->_wifiEnabled;
  objc_sync_exit(selfCopy);

  return wifiEnabled;
}

- (BOOL)isWiFiRequiredForSize:(int64_t)size
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  LOBYTE(size) = selfCopy->_wifiThresholdCount + size > 5242880;
  objc_sync_exit(selfCopy);

  return size;
}

- (void)keepWiFiAliveIfNeeded
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_wifiEnabled)
  {
    [(SPTransport *)obj startWiFiTimer];
  }

  objc_sync_exit(obj);
}

- (void)startWiFiTimer
{
  wifiTimer = self->_wifiTimer;
  if (wifiTimer)
  {
    dispatch_source_cancel(wifiTimer);
    v4 = self->_wifiTimer;
    self->_wifiTimer = 0;
  }

  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  v6 = self->_wifiTimer;
  self->_wifiTimer = v5;

  v7 = self->_wifiTimer;
  v8 = dispatch_time(0, 60000000000);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  v9 = self->_wifiTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001E028;
  handler[3] = &unk_100044778;
  handler[4] = self;
  dispatch_source_set_event_handler(v9, handler);
  dispatch_resume(self->_wifiTimer);
}

- (void)killWiFiTimer
{
  obj = self;
  objc_sync_enter(obj);
  wifiTimer = obj->_wifiTimer;
  if (wifiTimer)
  {
    dispatch_source_cancel(wifiTimer);
    v3 = obj->_wifiTimer;
    obj->_wifiTimer = 0;
  }

  objc_sync_exit(obj);
}

- (void)wifiTimeOut
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (obj->_wifiEnabled)
  {
    secureRemoteService = [(SPTransport *)obj secureRemoteService];
    [secureRemoteService setPreferInfraWiFi:0];

    insecureRemoteService = [(SPTransport *)obj insecureRemoteService];
    [insecureRemoteService setPreferInfraWiFi:0];

    v2 = obj;
    obj->_wifiEnabled = 0;
  }

  objc_sync_exit(v2);
}

- (void)sendPlist:(id)plist timeOut:(double)out securityType:(int64_t)type withCompletion:(id)completion
{
  plistCopy = plist;
  completionCopy = completion;
  sendQueue = self->_sendQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E260;
  block[3] = &unk_100046030;
  block[4] = self;
  v16 = plistCopy;
  outCopy = out;
  typeCopy = type;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = plistCopy;
  dispatch_sync(sendQueue, block);
}

- (void)_sendPlist:(id)plist timeOut:(double)out securityType:(int64_t)type retryExpiration:(id)expiration tryGeneration:(unint64_t)generation withCompletion:(id)completion
{
  plistCopy = plist;
  expirationCopy = expiration;
  completionCopy = completion;
  isRunningInF201DemoMode = spUtils_isRunningInF201DemoMode(completionCopy, v17);
  if (isRunningInF201DemoMode)
  {
    v115 = @"error";
    selfCopy2 = +[NSNull null];
    v116 = selfCopy2;
    v20 = [NSDictionary dictionaryWithObjects:&v116 forKeys:&v115 count:1];
    completionCopy[2](completionCopy, v20);

    goto LABEL_53;
  }

  if (generation)
  {
LABEL_4:
    if (!self->_canSend)
    {
      v31 = wk_default_log(isRunningInF201DemoMode);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10002A148();
      }

      selfCopy2 = [SPError errorWithCode:14];
      v113 = @"error";
      v114 = selfCopy2;
      v21 = [NSDictionary dictionaryWithObjects:&v114 forKeys:&v113 count:1];
      completionCopy[2](completionCopy, v21);
      goto LABEL_52;
    }

    if (!plistCopy)
    {
      v32 = wk_default_log(isRunningInF201DemoMode);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_10002A0C4();
      }

      selfCopy2 = [SPError errorWithCode:10];
      v111 = @"error";
      v112 = selfCopy2;
      v21 = [NSDictionary dictionaryWithObjects:&v112 forKeys:&v111 count:1];
      completionCopy[2](completionCopy, v21);
      goto LABEL_52;
    }

    v77 = 0;
    v21 = [NSPropertyListSerialization dataWithPropertyList:plistCopy format:200 options:0 error:&v77];
    v22 = v77;
    if (v22)
    {
      selfCopy2 = v22;
      v23 = wk_default_log(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100029FB0();
      }

      v109 = @"error";
      v110 = selfCopy2;
      v69 = [NSDictionary dictionaryWithObjects:&v110 forKeys:&v109 count:1];
      completionCopy[2](completionCopy, v69);

      goto LABEL_52;
    }

    if (!v21)
    {
      v39 = wk_default_log(0);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_10002A040();
      }

      selfCopy2 = [SPError errorWithCode:10];
      v107 = @"error";
      v108 = selfCopy2;
      v71 = [NSDictionary dictionaryWithObjects:&v108 forKeys:&v107 count:1];
      completionCopy[2](completionCopy, v71);

      goto LABEL_52;
    }

    v33 = [plistCopy objectForKeyedSubscript:@"i"];
    if (!v33)
    {
      v33 = @"com.apple.companionappd";
    }

    v105[0] = @"action";
    v105[1] = @"application";
    v106[0] = @"sendPlist1";
    v106[1] = v33;
    v70 = v33;
    v105[2] = @"length";
    v34 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v21 length]);
    v106[2] = v34;
    v66 = [NSDictionary dictionaryWithObjects:v106 forKeys:v105 count:3];

    v35 = +[SPPowerLog sharedInstance];
    [v35 logEvent:v66 withName:@"SP-transport"];

    v65 = [NSSet setWithObject:v70];
    v103[0] = IDSSendMessageOptionEncryptPayloadKey;
    v103[1] = IDSSendMessageOptionForceLocalDeliveryKey;
    v104[0] = &__kCFBooleanTrue;
    v104[1] = &__kCFBooleanFalse;
    v103[2] = IDSSendMessageOptionDuetIdentifiersOverrideKey;
    v104[2] = v65;
    v36 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:3];
    delegate = [(SPTransport *)self delegate];
    [delegate logDataSent:objc_msgSend(v21 application:{"length"), v70}];

    if (IDSMaxMessageTimeout + -1.0 == out)
    {
      v67 = [v36 mutableCopy];
      v38 = [NSNumber numberWithDouble:out];
      [v67 setObject:v38 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
    }

    else
    {
      v67 = v36;
    }

    v40 = [(SPTransport *)self serviceForTransport:type];
    v68 = v40;
    if (v40)
    {
      accounts = [v40 accounts];
      anyObject = [accounts anyObject];
      v42 = [NSSet setWithObject:IDSDefaultPairedDevice];
      v75 = 0;
      v76 = 0;
      [v68 sendData:v21 fromAccount:anyObject toDestinations:v42 priority:200 options:v67 identifier:&v76 error:&v75];
      v64 = v76;
      selfCopy2 = v75;

      v44 = wk_default_log(v43);
      v45 = v44;
      if (selfCopy2)
      {
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          accounts2 = [v68 accounts];
          anyObject2 = [accounts2 anyObject];
          serviceName = [anyObject2 serviceName];
          *buf = 136447234;
          v92 = "[SPTransport _sendPlist:timeOut:securityType:retryExpiration:tryGeneration:withCompletion:]";
          v93 = 1024;
          v94 = 310;
          v95 = 2114;
          v96 = serviceName;
          v97 = 2114;
          v98 = v70;
          v99 = 2114;
          v100 = selfCopy2;
          _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%{public}s:%d: sendPlist, Error - could not send data on service (%{public}@) for %{public}@ (%{public}@)", buf, 0x30u);
        }

        v89 = @"error";
        v90 = selfCopy2;
        v46 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
        completionCopy[2](completionCopy, v46);
        goto LABEL_51;
      }

      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        secureRemoteService = [(SPTransport *)self secureRemoteService];
        v92 = "[SPTransport _sendPlist:timeOut:securityType:retryExpiration:tryGeneration:withCompletion:]";
        v93 = 1024;
        v49 = @"insecure";
        v94 = 314;
        *buf = 136447234;
        if (v68 == secureRemoteService)
        {
          v49 = @"secure";
        }

        v95 = 2114;
        v96 = v64;
        v97 = 2114;
        v98 = v70;
        v99 = 2114;
        v100 = v49;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: sent message with identifier %{public}@ for %{public}@ on %{public}@ service", buf, 0x30u);
      }

      if ([(SPTransport *)self saveForPossibleResend:v68])
      {
        selfCopy = self;
        v51 = objc_sync_enter(selfCopy);
        v52 = wk_default_log(v51);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          v92 = "[SPTransport _sendPlist:timeOut:securityType:retryExpiration:tryGeneration:withCompletion:]";
          v93 = 1024;
          v94 = 320;
          v95 = 2114;
          v96 = v64;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Blocking further sends until %{public}@ succeeds or fails", buf, 0x1Cu);
        }

        [(SPTransport *)selfCopy setOutgoingMessageBlockedUntil:v64];
        objc_sync_exit(selfCopy);

        if (!expirationCopy)
        {
          expirationCopy = [NSDate dateWithTimeIntervalSinceNow:20.0];
        }

        v88[0] = v64;
        v87[0] = @"id";
        v87[1] = @"completion";
        v53 = [completionCopy copy];
        v88[1] = v53;
        v88[2] = plistCopy;
        v87[2] = @"propertyList";
        v87[3] = @"timeOut";
        v63 = [NSNumber numberWithDouble:out];
        v88[3] = v63;
        v87[4] = @"securityType";
        v54 = [NSNumber numberWithInteger:type];
        v88[4] = v54;
        v88[5] = expirationCopy;
        v87[5] = @"retryExpiration";
        v87[6] = @"lastSendAttemptDate";
        v55 = +[NSDate date];
        v88[6] = v55;
        v87[7] = @"tryGeneration";
        v56 = [NSNumber numberWithUnsignedInteger:generation];
        v88[7] = v56;
        v57 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:8];
      }

      else
      {
        v85[0] = @"id";
        v85[1] = @"completion";
        v86[0] = v64;
        v53 = [completionCopy copy];
        v86[1] = v53;
        v57 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:2];
      }

      messagesAccessQueue = self->_messagesAccessQueue;
      v72[0] = _NSConcreteStackBlock;
      v72[1] = 3221225472;
      v72[2] = sub_10001F06C;
      v72[3] = &unk_100045538;
      v72[4] = self;
      v73 = v57;
      v64 = v64;
      v74 = v64;
      v46 = v57;
      dispatch_sync(messagesAccessQueue, v72);
    }

    else
    {
      v101 = @"error";
      v46 = [SPError errorWithCode:16];
      v102 = v46;
      v47 = [NSDictionary dictionaryWithObjects:&v102 forKeys:&v101 count:1];
      completionCopy[2](completionCopy, v47);

      v64 = 0;
    }

    selfCopy2 = 0;
LABEL_51:

LABEL_52:
    goto LABEL_53;
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  outgoingMessageBlockedUntil = [(SPTransport *)selfCopy2 outgoingMessageBlockedUntil];

  if (!outgoingMessageBlockedUntil)
  {
    objc_sync_exit(selfCopy2);

    goto LABEL_4;
  }

  v26 = wk_default_log(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    outgoingMessageBlockedUntil2 = [(SPTransport *)selfCopy2 outgoingMessageBlockedUntil];
    *buf = 136446722;
    v92 = "[SPTransport _sendPlist:timeOut:securityType:retryExpiration:tryGeneration:withCompletion:]";
    v93 = 1024;
    v94 = 215;
    v95 = 2114;
    v96 = outgoingMessageBlockedUntil2;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Currently blocking outgoing messages on %{public}@", buf, 0x1Cu);
  }

  blockedOutgoingMessagesQueue = selfCopy2->_blockedOutgoingMessagesQueue;
  if (!blockedOutgoingMessagesQueue)
  {
    v29 = dispatch_queue_create("com.apple.watchkit.blockedOutgoingMessage", 0);
    v30 = selfCopy2->_blockedOutgoingMessagesQueue;
    selfCopy2->_blockedOutgoingMessagesQueue = v29;

    dispatch_suspend(selfCopy2->_blockedOutgoingMessagesQueue);
    blockedOutgoingMessagesQueue = selfCopy2->_blockedOutgoingMessagesQueue;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001EF64;
  block[3] = &unk_100046058;
  block[4] = selfCopy2;
  v79 = plistCopy;
  outCopy = out;
  typeCopy = type;
  expirationCopy = expirationCopy;
  v80 = expirationCopy;
  v84 = 0;
  v81 = completionCopy;
  dispatch_async(blockedOutgoingMessagesQueue, block);

  objc_sync_exit(selfCopy2);
LABEL_53:
}

- (void)sendData:(id)data forApplication:(id)application idsPriority:(int64_t)priority installer:(id)installer withCompletion:(id)completion
{
  dataCopy = data;
  applicationCopy = application;
  installerCopy = installer;
  completionCopy = completion;
  sendQueue = self->_sendQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10001F1D4;
  v21[3] = &unk_100046080;
  v21[4] = self;
  v22 = dataCopy;
  v23 = applicationCopy;
  v24 = installerCopy;
  v25 = completionCopy;
  priorityCopy = priority;
  v17 = completionCopy;
  v18 = installerCopy;
  v19 = applicationCopy;
  v20 = dataCopy;
  dispatch_sync(sendQueue, v21);
}

- (void)_sendData:(id)data forApplication:(id)application idsPriority:(int64_t)priority installer:(id)installer withCompletion:(id)completion
{
  dataCopy = data;
  applicationCopy = application;
  completionCopy = completion;
  isRunningInF201DemoMode = spUtils_isRunningInF201DemoMode(completionCopy, v14);
  if (isRunningInF201DemoMode)
  {
    v80 = @"error";
    v16 = +[NSNull null];
    v81 = v16;
    v17 = &v81;
    v18 = &v80;
LABEL_13:
    v39 = [NSDictionary dictionaryWithObjects:v17 forKeys:v18 count:1];
    completionCopy[2](completionCopy, v39);

    goto LABEL_24;
  }

  if (!self->_canSend)
  {
    v38 = wk_default_log(isRunningInF201DemoMode);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_10002A250();
    }

    v16 = [SPError errorWithCode:14];
    v78 = @"error";
    v79 = v16;
    v17 = &v79;
    v18 = &v78;
    goto LABEL_13;
  }

  if (dataCopy)
  {
    v76[0] = @"action";
    v76[1] = @"application";
    v77[0] = @"sendData";
    v77[1] = applicationCopy;
    v76[2] = @"length";
    v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [dataCopy length]);
    v77[2] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:3];

    v21 = +[SPPowerLog sharedInstance];
    [v21 logEvent:v20 withName:@"SP-transport"];

    v52 = [NSString stringWithFormat:@"%@.installer", @"com.apple.companionappd"];
    v22 = [NSSet setWithObject:?];
    v74[0] = IDSSendMessageOptionEncryptPayloadKey;
    v74[1] = IDSSendMessageOptionForceLocalDeliveryKey;
    v75[0] = &__kCFBooleanFalse;
    v75[1] = &__kCFBooleanFalse;
    v75[2] = &__kCFBooleanTrue;
    v74[2] = IDSSendMessageOptionBypassDuetKey;
    v74[3] = IDSSendMessageOptionTimeoutKey;
    v23 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    v74[4] = IDSSendMessageOptionDuetIdentifiersOverrideKey;
    v75[3] = v23;
    v75[4] = v22;
    v51 = v22;
    v24 = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:5];

    v25 = [(SPTransport *)self serviceForTransport:1];
    v26 = v25;
    if (v25)
    {
      v50 = v20;
      accounts = [v25 accounts];
      anyObject = [accounts anyObject];
      v29 = [NSSet setWithObject:IDSDefaultPairedDevice];
      v30 = v24;
      v31 = v29;
      v56 = 0;
      v57 = 0;
      v49 = v30;
      [v26 sendData:dataCopy fromAccount:anyObject toDestinations:v29 priority:priority options:&v56 identifier:? error:?];
      v32 = v57;
      v16 = v56;

      v34 = wk_default_log(v33);
      v35 = v34;
      if (v16)
      {
        v36 = &PLLogRegisteredEvent_ptr;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          accounts2 = [v26 accounts];
          anyObject2 = [accounts2 anyObject];
          serviceName = [anyObject2 serviceName];
          *buf = 136447234;
          v63 = "[SPTransport _sendData:forApplication:idsPriority:installer:withCompletion:]";
          v64 = 1024;
          v65 = 404;
          v66 = 2114;
          v67 = serviceName;
          v68 = 2114;
          v69 = applicationCopy;
          v70 = 2114;
          v71 = v16;
          _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}s:%d: Error - could not send data on service (%{public}@) for %{public}@ (%{public}@)", buf, 0x30u);

          v36 = &PLLogRegisteredEvent_ptr;
        }

        v60 = @"error";
        v61 = v16;
        v37 = [v36[210] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        completionCopy[2](completionCopy, v37);
      }

      else
      {
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          secureRemoteService = [(SPTransport *)self secureRemoteService];
          *buf = 136447234;
          v63 = "[SPTransport _sendData:forApplication:idsPriority:installer:withCompletion:]";
          v42 = @"insecure";
          v64 = 1024;
          v65 = 408;
          if (v26 == secureRemoteService)
          {
            v42 = @"secure";
          }

          v66 = 2114;
          v67 = v32;
          v68 = 2114;
          v69 = applicationCopy;
          v70 = 2114;
          v71 = v42;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: sent message with identifier %{public}@ for %{public}@ on %{public}@ service", buf, 0x30u);
        }

        v58[0] = @"id";
        v58[1] = @"completion";
        v59[0] = v32;
        v43 = [completionCopy copy];
        v59[1] = v43;
        v44 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:2];

        messagesAccessQueue = self->_messagesAccessQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10001F8CC;
        block[3] = &unk_100045538;
        block[4] = self;
        v54 = v44;
        v32 = v32;
        v55 = v32;
        v37 = v44;
        dispatch_sync(messagesAccessQueue, block);

        v16 = 0;
      }

      v24 = v49;
      v20 = v50;
    }

    else
    {
      v72 = @"error";
      v37 = [SPError errorWithCode:16];
      v73 = v37;
      v40 = [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1];
      completionCopy[2](completionCopy, v40);

      v32 = 0;
      v16 = 0;
    }
  }

  else
  {
    v16 = wk_default_log(isRunningInF201DemoMode);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10002A1CC();
    }
  }

LABEL_24:
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  sendQueue = self->_sendQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10001FA44;
  v21[3] = &unk_1000460A8;
  successCopy = success;
  v21[4] = self;
  v22 = identifierCopy;
  v23 = serviceCopy;
  v24 = errorCopy;
  v25 = accountCopy;
  v17 = accountCopy;
  v18 = errorCopy;
  v19 = serviceCopy;
  v20 = identifierCopy;
  dispatch_async(sendQueue, v21);
}

- (void)serviceSpaceDidBecomeAvailable:(id)available
{
  v4 = wk_default_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[SPTransport serviceSpaceDidBecomeAvailable:]";
    v7 = 1024;
    v8 = 467;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: ", &v5, 0x12u);
  }

  self->_canSend = 1;
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  dataCopy = data;
  dCopy = d;
  contextCopy = context;
  v17 = wk_default_log(contextCopy);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    secureRemoteService = [(SPTransport *)self secureRemoteService];
    v20 = @"insecure";
    v32 = "[SPTransport service:account:incomingData:fromID:context:]";
    v33 = 1024;
    v34 = 473;
    v31 = 136446978;
    if (secureRemoteService == serviceCopy)
    {
      v20 = @"secure";
    }

    v35 = 2114;
    v36 = outgoingResponseIdentifier;
    v37 = 2114;
    v38 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: received data msg with identifier %{public}@ on %{public}@ service", &v31, 0x26u);
  }

  if (dataCopy)
  {
    secureRemoteService2 = [(SPTransport *)self secureRemoteService];
    if (secureRemoteService2 == serviceCopy && self->_delegate)
    {
      v27 = objc_opt_respondsToSelector();

      if (v27)
      {
        [(SPTransportDelegate *)self->_delegate didReceiveSecureData];
      }
    }

    else
    {
    }

    if (self->_delegate)
    {
      delegate = [(SPTransport *)self delegate];
      v24 = objc_opt_respondsToSelector();

      if (v24)
      {
        delegate2 = [(SPTransport *)self delegate];
        [delegate2 incomingData:dataCopy];

        [(SPTransport *)self temporarilyRetainIDSMessageContext:contextCopy];
      }
    }
  }

  else
  {
    v26 = wk_default_log(v21);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      accounts = [serviceCopy accounts];
      anyObject = [accounts anyObject];
      serviceName = [anyObject serviceName];
      v31 = 136447490;
      v32 = "[SPTransport service:account:incomingData:fromID:context:]";
      v33 = 1024;
      v34 = 475;
      v35 = 2114;
      v36 = accountCopy;
      v37 = 2114;
      v38 = serviceName;
      v39 = 2114;
      v40 = dCopy;
      v41 = 2114;
      v42 = contextCopy;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}s:%d: IDS incomingData == nil,  account: %{public}@, serviceName: %{public}@, fromID: %{public}@, context: %{public}@", &v31, 0x3Au);
    }
  }
}

- (BOOL)sendProtobuf:(id)protobuf sender:(id)sender timeOut:(double)out securityType:(int64_t)type withCompletion:(id)completion
{
  protobufCopy = protobuf;
  senderCopy = sender;
  completionCopy = completion;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  sendQueue = self->_sendQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000206BC;
  block[3] = &unk_1000460D0;
  v23 = completionCopy;
  v24 = &v27;
  block[4] = self;
  v21 = protobufCopy;
  outCopy = out;
  typeCopy = type;
  v22 = senderCopy;
  v16 = completionCopy;
  v17 = senderCopy;
  v18 = protobufCopy;
  dispatch_sync(sendQueue, block);
  LOBYTE(sendQueue) = *(v28 + 24);

  _Block_object_dispose(&v27, 8);
  return sendQueue;
}

- (BOOL)_sendProtobuf:(id)protobuf sender:(id)sender timeOut:(double)out securityType:(int64_t)type retryExpiration:(id)expiration tryGeneration:(unint64_t)generation withCompletion:(id)completion
{
  protobufCopy = protobuf;
  senderCopy = sender;
  expirationCopy = expiration;
  completionCopy = completion;
  isRunningInF201DemoMode = spUtils_isRunningInF201DemoMode(completionCopy, v20);
  if (isRunningInF201DemoMode)
  {
    v115 = @"error";
    selfCopy = +[NSNull null];
    v116 = selfCopy;
    v23 = [NSDictionary dictionaryWithObjects:&v116 forKeys:&v115 count:1];
    completionCopy[2](completionCopy, v23);

LABEL_3:
    v24 = 1;
    goto LABEL_50;
  }

  if (!generation)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    outgoingMessageBlockedUntil = [(SPTransport *)selfCopy outgoingMessageBlockedUntil];

    if (outgoingMessageBlockedUntil)
    {
      v30 = wk_default_log(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        outgoingMessageBlockedUntil2 = [(SPTransport *)selfCopy outgoingMessageBlockedUntil];
        *buf = 136446722;
        v98 = "[SPTransport _sendProtobuf:sender:timeOut:securityType:retryExpiration:tryGeneration:withCompletion:]";
        v99 = 1024;
        v100 = 512;
        v101 = 2114;
        v102 = outgoingMessageBlockedUntil2;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Currently blocking outgoing messages on %{public}@", buf, 0x1Cu);
      }

      blockedOutgoingMessagesQueue = selfCopy->_blockedOutgoingMessagesQueue;
      if (!blockedOutgoingMessagesQueue)
      {
        v33 = dispatch_queue_create("com.apple.watchkit.blockedOutgoingMessage", 0);
        v34 = selfCopy->_blockedOutgoingMessagesQueue;
        selfCopy->_blockedOutgoingMessagesQueue = v33;

        dispatch_suspend(selfCopy->_blockedOutgoingMessagesQueue);
        blockedOutgoingMessagesQueue = selfCopy->_blockedOutgoingMessagesQueue;
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002135C;
      block[3] = &unk_1000460F8;
      block[4] = selfCopy;
      v84 = protobufCopy;
      senderCopy = senderCopy;
      v85 = senderCopy;
      outCopy = out;
      typeCopy = type;
      expirationCopy = expirationCopy;
      v86 = expirationCopy;
      v90 = 0;
      v87 = completionCopy;
      dispatch_async(blockedOutgoingMessagesQueue, block);

      objc_sync_exit(selfCopy);
      goto LABEL_3;
    }

    objc_sync_exit(selfCopy);
  }

  if (self->_canSend)
  {
    typeCopy2 = type;
    v25 = [(__CFString *)senderCopy isEqualToString:@".XC"];
    v26 = v25;
    if (v25)
    {
      v27 = wk_default_log(v25);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v98 = "[SPTransport _sendProtobuf:sender:timeOut:securityType:retryExpiration:tryGeneration:withCompletion:]";
        v99 = 1024;
        v100 = 539;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: isXcodeCommand, setting IDSSendMessageOptionBypassDuetKey=YES", buf, 0x12u);
      }
    }

    else if (senderCopy)
    {
      goto LABEL_21;
    }

    senderCopy = @"com.apple.companionappd";
LABEL_21:
    v111[0] = @"action";
    v111[1] = @"application";
    v112[0] = @"sendPlist2";
    v112[1] = senderCopy;
    v111[2] = @"length";
    uncompressedData = [protobufCopy uncompressedData];
    v37 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [uncompressedData length]);
    v112[2] = v37;
    v77 = [NSDictionary dictionaryWithObjects:v112 forKeys:v111 count:3];

    v38 = +[SPPowerLog sharedInstance];
    [v38 logEvent:v77 withName:@"SP-transport"];

    v73 = [NSSet setWithObject:senderCopy];
    v109[0] = IDSSendMessageOptionEncryptPayloadKey;
    v109[1] = IDSSendMessageOptionForceLocalDeliveryKey;
    v110[0] = &__kCFBooleanTrue;
    v110[1] = &__kCFBooleanFalse;
    v109[2] = IDSSendMessageOptionDuetIdentifiersOverrideKey;
    v110[2] = v73;
    v39 = [NSDictionary dictionaryWithObjects:v110 forKeys:v109 count:3];
    v40 = v39;
    if (v26)
    {
      v41 = [v39 mutableCopy];
      [v41 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionBypassDuetKey];
    }

    else
    {
      v41 = v39;
    }

    if (IDSMaxMessageTimeout + -1.0 == out)
    {
      v74 = [v41 mutableCopy];
      v42 = [NSNumber numberWithDouble:out];
      [v74 setObject:v42 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
    }

    else
    {
      v74 = v41;
    }

    v43 = wk_default_log(v39);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      sub_10002A2D4(protobufCopy, v43);
    }

    delegate = [(SPTransport *)self delegate];
    data = [protobufCopy data];
    [delegate logDataSent:objc_msgSend(data application:{"length"), senderCopy}];

    v46 = [(SPTransport *)self serviceForTransport:typeCopy2];
    v75 = v46;
    if (v46)
    {
      accounts = [v46 accounts];
      anyObject = [accounts anyObject];
      v49 = [NSSet setWithObject:IDSDefaultPairedDevice];
      v81 = 0;
      v82 = 0;
      [v75 sendProtobuf:protobufCopy fromAccount:anyObject toDestinations:v49 priority:200 options:v74 identifier:&v82 error:&v81];
      v72 = v82;
      selfCopy = v81;

      v51 = wk_default_log(v50);
      v52 = v51;
      if (!selfCopy)
      {
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          secureRemoteService = [(SPTransport *)self secureRemoteService];
          v98 = "[SPTransport _sendProtobuf:sender:timeOut:securityType:retryExpiration:tryGeneration:withCompletion:]";
          v99 = 1024;
          v56 = @"insecure";
          v100 = 597;
          *buf = 136447234;
          if (v75 == secureRemoteService)
          {
            v56 = @"secure";
          }

          v101 = 2114;
          v102 = v72;
          v103 = 2114;
          v104 = senderCopy;
          v105 = 2114;
          v106 = v56;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: sent message with identifier %{public}@ for %{public}@ on %{public}@ service", buf, 0x30u);
        }

        if ([(SPTransport *)self saveForPossibleResend:v75])
        {
          selfCopy2 = self;
          v58 = objc_sync_enter(selfCopy2);
          v59 = wk_default_log(v58);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v98 = "[SPTransport _sendProtobuf:sender:timeOut:securityType:retryExpiration:tryGeneration:withCompletion:]";
            v99 = 1024;
            v100 = 603;
            v101 = 2114;
            v102 = v72;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Blocking further sends until %{public}@ succeeds or fails", buf, 0x1Cu);
          }

          [(SPTransport *)selfCopy2 setOutgoingMessageBlockedUntil:v72];
          objc_sync_exit(selfCopy2);

          if (!expirationCopy)
          {
            expirationCopy = [NSDate dateWithTimeIntervalSinceNow:20.0];
          }

          v94[0] = v72;
          v93[0] = @"id";
          v93[1] = @"completion";
          v60 = [completionCopy copy];
          v94[1] = v60;
          v93[2] = @"sender";
          v93[3] = @"protobuf";
          v94[2] = senderCopy;
          v94[3] = protobufCopy;
          v93[4] = @"timeOut";
          v69 = [NSNumber numberWithDouble:out];
          v94[4] = v69;
          v93[5] = @"securityType";
          v71 = [NSNumber numberWithInteger:typeCopy2];
          v94[5] = v71;
          v94[6] = expirationCopy;
          v93[6] = @"retryExpiration";
          v93[7] = @"lastSendAttemptDate";
          v61 = +[NSDate date];
          v94[7] = v61;
          v93[8] = @"tryGeneration";
          v62 = [NSNumber numberWithUnsignedInteger:generation];
          v94[8] = v62;
          v63 = [NSDictionary dictionaryWithObjects:v94 forKeys:v93 count:9];
        }

        else
        {
          v91[0] = @"id";
          v91[1] = @"completion";
          v92[0] = v72;
          v60 = [completionCopy copy];
          v92[1] = v60;
          v63 = [NSDictionary dictionaryWithObjects:v92 forKeys:v91 count:2];
        }

        messagesAccessQueue = self->_messagesAccessQueue;
        v78[0] = _NSConcreteStackBlock;
        v78[1] = 3221225472;
        v78[2] = sub_100021478;
        v78[3] = &unk_100045538;
        v78[4] = self;
        v79 = v63;
        v72 = v72;
        v80 = v72;
        v53 = v63;
        dispatch_sync(messagesAccessQueue, v78);

        selfCopy = 0;
        v24 = 1;
        goto LABEL_49;
      }

      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        accounts2 = [v75 accounts];
        anyObject2 = [accounts2 anyObject];
        serviceName = [anyObject2 serviceName];
        *buf = 136447234;
        v98 = "[SPTransport _sendProtobuf:sender:timeOut:securityType:retryExpiration:tryGeneration:withCompletion:]";
        v99 = 1024;
        v100 = 591;
        v101 = 2114;
        v102 = serviceName;
        v103 = 2114;
        v104 = senderCopy;
        v105 = 2114;
        v106 = selfCopy;
        _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%{public}s:%d: Error - could not send data on service (%{public}@) for %{public}@ (%{public}@)", buf, 0x30u);
      }

      v95 = @"error";
      v96 = selfCopy;
      v53 = [NSDictionary dictionaryWithObjects:&v96 forKeys:&v95 count:1];
      completionCopy[2](completionCopy, v53);
    }

    else
    {
      v107 = @"error";
      v53 = [SPError errorWithCode:16];
      v108 = v53;
      v54 = [NSDictionary dictionaryWithObjects:&v108 forKeys:&v107 count:1];
      completionCopy[2](completionCopy, v54);

      v72 = 0;
      selfCopy = 0;
    }

    v24 = 0;
LABEL_49:

    goto LABEL_50;
  }

  v35 = wk_default_log(isRunningInF201DemoMode);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    sub_10002A3B8();
  }

  selfCopy = [SPError errorWithCode:14];
  v113 = @"error";
  v114 = selfCopy;
  v76 = [NSDictionary dictionaryWithObjects:&v114 forKeys:&v113 count:1];
  completionCopy[2](completionCopy, v76);
  v24 = 0;

LABEL_50:
  return v24;
}

- (id)serviceForTransport:(int64_t)transport
{
  selfCopy = self;
  if (transport == 2)
  {
    insecureRemoteService = [(SPTransport *)self insecureRemoteService];

    if (!insecureRemoteService)
    {
      v8 = wk_default_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10002A43C();
      }

      goto LABEL_16;
    }

LABEL_17:
    self = [(SPTransport *)selfCopy insecureRemoteService];
    goto LABEL_18;
  }

  if (transport == 1)
  {
    if ([(SPTransportDelegate *)self->_delegate unlockedSinceBoot])
    {
LABEL_9:
      self = [(SPTransport *)selfCopy secureRemoteService];
      goto LABEL_18;
    }

    insecureRemoteService2 = [(SPTransport *)selfCopy insecureRemoteService];

    if (!insecureRemoteService2)
    {
      v8 = wk_default_log(v10);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10002A4C0();
      }

LABEL_16:

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if (transport)
  {
    goto LABEL_18;
  }

  unlockedSinceBoot = [(SPTransportDelegate *)self->_delegate unlockedSinceBoot];
  if (unlockedSinceBoot)
  {
    goto LABEL_9;
  }

  v5 = wk_default_log(unlockedSinceBoot);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10002A544();
  }

  self = 0;
LABEL_18:

  return self;
}

- (BOOL)saveForPossibleResend:(id)resend
{
  resendCopy = resend;
  secureRemoteService = [(SPTransport *)self secureRemoteService];

  if (secureRemoteService != resendCopy)
  {

    return 0;
  }

  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  dateOfFirstUnlock = [(SPTransportDelegate *)self->_delegate dateOfFirstUnlock];
  v8 = dateOfFirstUnlock;
  if (!dateOfFirstUnlock || (v9 = [dateOfFirstUnlock timeIntervalSinceNow], v11 = v10, v10 <= -20.0))
  {

    return 0;
  }

  v13 = wk_default_log(v9);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136446978;
    v15 = "[SPTransport saveForPossibleResend:]";
    v16 = 1024;
    v17 = 676;
    v18 = 2048;
    v19 = -v11;
    v20 = 2048;
    v21 = 0x4034000000000000;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: First unlock was %1.0f seconds ago (less than %1.0f seconds), so saving for possible resend upon failure", &v14, 0x26u);
  }

  return 1;
}

- (void)incomingSecureProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  delegate = self->_delegate;
  if (delegate)
  {
    delegate = objc_opt_respondsToSelector();
    if (delegate)
    {
      delegate = [(SPTransportDelegate *)self->_delegate didReceiveSecureData];
    }
  }

  v6 = wk_default_log(delegate);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    context = [protobufCopy context];
    outgoingResponseIdentifier = [context outgoingResponseIdentifier];
    v9 = 136446722;
    v10 = "[SPTransport incomingSecureProtobuf:]";
    v11 = 1024;
    v12 = 690;
    v13 = 2114;
    v14 = outgoingResponseIdentifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: received protobuf msg with identifier %{public}@ on secure service", &v9, 0x1Cu);
  }

  [(SPTransport *)self incomingProtobuf:protobufCopy];
}

- (void)incomingInsecureProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v5 = wk_default_log(protobufCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    context = [protobufCopy context];
    outgoingResponseIdentifier = [context outgoingResponseIdentifier];
    v8 = 136446722;
    v9 = "[SPTransport incomingInsecureProtobuf:]";
    v10 = 1024;
    v11 = 696;
    v12 = 2114;
    v13 = outgoingResponseIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: received protobuf msg with identifier %{public}@ on insecure service", &v8, 0x1Cu);
  }

  [(SPTransport *)self incomingProtobuf:protobufCopy];
}

- (void)incomingProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v5 = wk_default_log(protobufCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10002A5C8(protobufCopy, v5);
  }

  if (self->_delegate)
  {
    delegate = [(SPTransport *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(SPTransport *)self delegate];
      [delegate2 incomingProtobuf:protobufCopy];

      context = [protobufCopy context];
      [(SPTransport *)self temporarilyRetainIDSMessageContext:context];
    }
  }
}

- (void)temporarilyRetainIDSMessageContext:(id)context
{
  contextCopy = context;
  retainedIDSMessageContextsQueue = self->_retainedIDSMessageContextsQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100021B0C;
  v7[3] = &unk_1000447A0;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_sync(retainedIDSMessageContextsQueue, v7);
}

- (BOOL)handleDataProtectionSendFailureOrRetryFailureOnService:(id)service account:(id)account identifier:(id)identifier error:(id)error
{
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_100020138;
  v52 = sub_100020148;
  v53 = 0;
  messagesAccessQueue = self->_messagesAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000221C4;
  block[3] = &unk_100045A40;
  v47 = &v48;
  block[4] = self;
  v14 = identifierCopy;
  v46 = v14;
  dispatch_sync(messagesAccessQueue, block);
  v15 = v49[5];
  if (v15)
  {
    v16 = [v15 objectForKeyedSubscript:@"protobuf"];

    v17 = [v49[5] objectForKeyedSubscript:@"propertyList"];

    if (v16 != 0 || v17 != 0)
    {
      if ([errorCopy code] == 31)
      {
        domain = [errorCopy domain];
        v19 = [domain isEqualToString:IDSErrorDomain];
      }

      else
      {
        v19 = 0;
      }

      v21 = [v49[5] objectForKeyedSubscript:@"retryExpiration"];
      v22 = +[NSDate date];
      v37 = v21;
      v20 = [v21 compare:v22] != -1;

      if (!v20)
      {
        if (v19)
        {
          v31 = wk_default_log(v23);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            sub_10002A7C8();
          }
        }

        else
        {
          v31 = wk_default_log(v23);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            sub_10002A730();
          }
        }

        goto LABEL_31;
      }

      v24 = [v49[5] objectForKeyedSubscript:@"tryGeneration"];
      unsignedLongValue = [v24 unsignedLongValue];

      v26 = 2.0;
      if (unsignedLongValue == 1)
      {
        v26 = 0.25;
      }

      if (unsignedLongValue)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0.0;
      }

      v28 = self->_messagesAccessQueue;
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_100022230;
      v43[3] = &unk_1000447A0;
      v43[4] = self;
      v44 = v14;
      dispatch_sync(v28, v43);
      if (v19)
      {
        v30 = wk_default_log(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          v55 = "[SPTransport handleDataProtectionSendFailureOrRetryFailureOnService:account:identifier:error:]";
          v56 = 1024;
          v57 = 768;
          v58 = 2048;
          v59 = v27;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Got data protection class send failure, but we've done first unlock. Will try again in %1.0f seconds", buf, 0x1Cu);
        }
      }

      else
      {
        v30 = wk_default_log(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_10002A858();
        }
      }

      if (v16)
      {
        v32 = dispatch_time(0, (v27 * 1000000000.0));
        sendQueue = self->_sendQueue;
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_100022284;
        v41[3] = &unk_100046120;
        v41[4] = self;
        v42[1] = &v48;
        v34 = v42;
        v42[0] = v37;
        v42[2] = unsignedLongValue;
        v35 = v41;
      }

      else
      {
        if (!v17)
        {
LABEL_27:

LABEL_31:
          goto LABEL_32;
        }

        v32 = dispatch_time(0, (v27 * 1000000000.0));
        sendQueue = self->_sendQueue;
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_1000223CC;
        v39[3] = &unk_100046120;
        v39[4] = self;
        v40[1] = &v48;
        v34 = v40;
        v40[0] = v37;
        v40[2] = unsignedLongValue;
        v35 = v39;
      }

      dispatch_after(v32, sendQueue, v35);

      goto LABEL_27;
    }
  }

  v20 = 0;
LABEL_32:

  _Block_object_dispose(&v48, 8);
  return v20;
}

- (void)removeOutgoingMessageBlockIfIdentiferMatches:(id)matches sendError:(id)error
{
  matchesCopy = matches;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  outgoingMessageBlockedUntil = [(SPTransport *)selfCopy outgoingMessageBlockedUntil];
  v10 = [outgoingMessageBlockedUntil isEqualToString:matchesCopy];

  if (v10)
  {
    v12 = wk_default_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (errorCopy)
      {
        errorCopy = [NSString stringWithFormat:@"failed with error %@", errorCopy];
      }

      else
      {
        errorCopy = @"succeeded";
      }

      *buf = 136446978;
      v19 = "[SPTransport removeOutgoingMessageBlockIfIdentiferMatches:sendError:]";
      v20 = 1024;
      v21 = 791;
      v22 = 2114;
      v23 = matchesCopy;
      v24 = 2114;
      v25 = errorCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: we were blocked on %{public}@ and it %{public}@. unblocking", buf, 0x26u);
      if (errorCopy)
      {
      }
    }

    if (selfCopy->_blockedOutgoingMessagesQueue)
    {
      v15 = wk_default_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v19 = "[SPTransport removeOutgoingMessageBlockIfIdentiferMatches:sendError:]";
        v20 = 1024;
        v21 = 793;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: flushing _blockedOutgoingMessagesQueue", buf, 0x12u);
      }

      blockedOutgoingMessagesQueue = selfCopy->_blockedOutgoingMessagesQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002275C;
      block[3] = &unk_100044778;
      block[4] = selfCopy;
      dispatch_async(blockedOutgoingMessagesQueue, block);
      dispatch_resume(selfCopy->_blockedOutgoingMessagesQueue);
    }

    [(SPTransport *)selfCopy setOutgoingMessageBlockedUntil:0];
  }

  objc_sync_exit(selfCopy);
}

@end