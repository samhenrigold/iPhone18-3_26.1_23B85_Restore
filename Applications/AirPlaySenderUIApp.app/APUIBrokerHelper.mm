@interface APUIBrokerHelper
+ (id)sharedInstance;
- (APUIBrokerHelper)init;
- (void)_handleAuthenticationResponse:(id)response requestUUID:(id)d error:(id)error completion:(id)completion;
- (void)_handleBrokerResponse:(id)response;
- (void)_handleGetInfoResponse:(id)response requestUUID:(id)d error:(id)error completion:(id)completion;
- (void)_sendBrokerRequest:(id)request params:(id)params timeout:(unint64_t)timeout completion:(id)completion;
- (void)getBrokerGroupInfo:(id)info completion:(id)completion;
- (void)performBrokerAuthenticationForBrokerGroup:(id)group withBrokerAuth:(id)auth completion:(id)completion;
@end

@implementation APUIBrokerHelper

- (APUIBrokerHelper)init
{
  v10.receiver = self;
  v10.super_class = APUIBrokerHelper;
  v2 = [(APUIBrokerHelper *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("APUIBrokerHelper.queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = dispatch_queue_create("APUIBrokerHelper.notification", 0);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v5;

    v7 = +[NSMutableDictionary dictionary];
    pendingRequests = v2->_pendingRequests;
    v2->_pendingRequests = v7;
  }

  if (dword_100022470 <= 50 && (dword_100022470 != -1 || _LogCategory_Initialize()))
  {
    sub_10000B8C0(v2);
  }

  return v2;
}

- (void)_handleGetInfoResponse:(id)response requestUUID:(id)d error:(id)error completion:(id)completion
{
  responseCopy = response;
  dCopy = d;
  errorCopy = error;
  completionCopy = completion;
  if (dword_100022470 <= 50 && (dword_100022470 != -1 || _LogCategory_Initialize()))
  {
    if (responseCopy && !IsAppleInternalBuild())
    {
      v14 = @"#Redacted#";
    }

    else
    {
      v14 = responseCopy;
    }

    LogPrintF(&dword_100022470, "[APUIBrokerHelper _handleGetInfoResponse:requestUUID:error:completion:]", 33554482, "[%{ptr}] Handling discovery broker GetInfo %'@ response error: %{error} %@", self, dCopy, errorCopy, v14);
  }

  v15 = NSErrorToOSStatus();
  if (v15)
  {
    v19 = v15;
    sub_10000B904(v15);
    v16 = 0;
  }

  else
  {
    v16 = [(__CFString *)responseCopy objectForKeyedSubscript:@"BrokerGroupInfo"];
    if (v16)
    {
      if (dword_100022470 <= 50 && (dword_100022470 != -1 || _LogCategory_Initialize()))
      {
        v17 = IsAppleInternalBuild();
        v18 = @"#Redacted#";
        if (v17)
        {
          v18 = v16;
        }

        LogPrintF(&dword_100022470, "[APUIBrokerHelper _handleGetInfoResponse:requestUUID:error:completion:]", 33554482, "[%{ptr}] GetInfo response - request %'@ succeeded with brokerGroupInfo %@\n", self, dCopy, v18);
      }

      v19 = 0;
    }

    else
    {
      sub_10000B914();
      v19 = -6705;
    }
  }

  if (completionCopy)
  {
    notificationQueue = self->_notificationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002E9C;
    block[3] = &unk_10001C658;
    v23 = completionCopy;
    v24 = v19;
    v22 = v16;
    dispatch_async(notificationQueue, block);
  }
}

- (void)getBrokerGroupInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000301C;
  block[3] = &unk_10001C6A8;
  v12 = infoCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = infoCopy;
  dispatch_async(queue, block);
}

- (void)_handleAuthenticationResponse:(id)response requestUUID:(id)d error:(id)error completion:(id)completion
{
  responseCopy = response;
  dCopy = d;
  errorCopy = error;
  completionCopy = completion;
  if (dword_100022470 <= 50 && (dword_100022470 != -1 || _LogCategory_Initialize()))
  {
    if (responseCopy && !IsAppleInternalBuild())
    {
      v14 = @"#Redacted#";
    }

    else
    {
      v14 = responseCopy;
    }

    LogPrintF(&dword_100022470, "[APUIBrokerHelper _handleAuthenticationResponse:requestUUID:error:completion:]", 33554482, "[%{ptr}] Handling discovery broker authentication %'@ response error: %{error} %@", self, dCopy, errorCopy, v14);
  }

  v15 = NSErrorToOSStatus();
  if (v15)
  {
    v19 = v15;
    sub_10000B928(v15);
    v16 = 0;
    goto LABEL_20;
  }

  if (!responseCopy)
  {
    sub_10000B94C();
    v16 = 0;
LABEL_26:
    v19 = -6705;
    goto LABEL_20;
  }

  v16 = [(__CFString *)responseCopy objectForKeyedSubscript:@"AuthTargetReceiverDeviceID"];
  if (!v16)
  {
    sub_10000B938();
    goto LABEL_26;
  }

  if (dword_100022470 <= 50 && (dword_100022470 != -1 || _LogCategory_Initialize()))
  {
    v17 = IsAppleInternalBuild();
    v18 = @"#Redacted#";
    if (v17)
    {
      v18 = v16;
    }

    LogPrintF(&dword_100022470, "[APUIBrokerHelper _handleAuthenticationResponse:requestUUID:error:completion:]", 33554482, "[%{ptr}] Auth response - request %'@ succeeded with authTargetReceiverDeviceID %@\n", self, dCopy, v18);
  }

  v19 = 0;
LABEL_20:
  if (completionCopy)
  {
    notificationQueue = self->_notificationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003350;
    block[3] = &unk_10001C658;
    v23 = completionCopy;
    v24 = v19;
    v22 = v16;
    dispatch_async(notificationQueue, block);
  }
}

- (void)performBrokerAuthenticationForBrokerGroup:(id)group withBrokerAuth:(id)auth completion:(id)completion
{
  groupCopy = group;
  authCopy = auth;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000034F0;
  v15[3] = &unk_10001C6D0;
  v16 = authCopy;
  v17 = groupCopy;
  selfCopy = self;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = groupCopy;
  v14 = authCopy;
  dispatch_async(queue, v15);
}

- (void)_sendBrokerRequest:(id)request params:(id)params timeout:(unint64_t)timeout completion:(id)completion
{
  requestCopy = request;
  paramsCopy = params;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000036E8;
  block[3] = &unk_10001C720;
  block[4] = self;
  v18 = paramsCopy;
  v20 = completionCopy;
  timeoutCopy = timeout;
  v19 = requestCopy;
  v14 = completionCopy;
  v15 = requestCopy;
  v16 = paramsCopy;
  dispatch_async(queue, block);
}

- (void)_handleBrokerResponse:(id)response
{
  responseCopy = response;
  v17 = responseCopy;
  if (!responseCopy)
  {
    sub_10000BB0C();
    v8 = 0;
    goto LABEL_13;
  }

  v5 = responseCopy;
  if (dword_100022470 <= 50)
  {
    if (dword_100022470 != -1 || (v6 = _LogCategory_Initialize(), v5 = v17, v6))
    {
      sub_10000B970(v5, self);
      v5 = v17;
    }
  }

  v7 = [(__CFString *)v5 objectForKeyedSubscript:@"RequestType", v17];
  if (!v7)
  {
    sub_10000BA80(self, &v18);
LABEL_20:
    v8 = v18;
    goto LABEL_13;
  }

  v8 = v7;
  v9 = [(__CFString *)v17 objectForKeyedSubscript:@"RequestUUID"];
  if (!v9)
  {
    sub_10000B9E8(self, v8, &v18);
    goto LABEL_20;
  }

  v10 = v9;
  v11 = [(__CFString *)v17 objectForKeyedSubscript:@"Status"];
  intValue = [v11 intValue];

  if (intValue)
  {
    sub_10000B9D8(intValue);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v14 = [(NSMutableDictionary *)selfCopy->_pendingRequests objectForKeyedSubscript:v10];
  if (v14)
  {
    v15 = v14;
    objc_sync_enter(v15);
    [v15 setResponse:v17];
    [v15 setStatus:intValue];
    objc_sync_exit(v15);

    objc_sync_exit(selfCopy);
    semaphore = [v15 semaphore];
    dispatch_semaphore_signal(semaphore);
  }

  else
  {
    objc_sync_exit(selfCopy);
  }

LABEL_13:
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003EA0;
  block[3] = &unk_10001C740;
  block[4] = self;
  if (qword_100022950 != -1)
  {
    dispatch_once(&qword_100022950, block);
  }

  v2 = qword_100022958;

  return v2;
}

@end