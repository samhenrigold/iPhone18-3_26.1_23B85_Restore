@interface RMDataStreamHandler
- (BOOL)endpoint:(id)endpoint shouldStartStreamingDataToReceiver:(id)receiver;
- (RMDataStreamHandler)initWithEndpoint:(id)endpoint isInternal:(BOOL)internal;
- (void)dealloc;
- (void)endpoint:(id)endpoint didReceiveMessage:(id)message withData:(id)data replyBlock:(id)block;
- (void)endpoint:(id)endpoint didReceiveStreamingRequest:(id)request withData:(id)data;
- (void)endpointShouldStopStreamingData:(id)data;
@end

@implementation RMDataStreamHandler

- (RMDataStreamHandler)initWithEndpoint:(id)endpoint isInternal:(BOOL)internal
{
  endpointCopy = endpoint;
  v11.receiver = self;
  v11.super_class = RMDataStreamHandler;
  v8 = [(RMDataStreamHandler *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_endpoint, endpoint);
    sub_10001541C(endpointCopy, v9);
    v9->_isInternal = internal;
    v9->_dataProviderStreaming = 0;
  }

  return v9;
}

- (void)dealloc
{
  if (self)
  {
    [(RBSProcessMonitor *)self->_processMonitor invalidate];
    sub_10000FA48(self, 0);
    endpoint = self->_endpoint;
  }

  else
  {
    [0 invalidate];
    sub_10000FA48(0, 0);
    endpoint = 0;
  }

  sub_10001541C(&endpoint->super.isa, 0);
  sub_10000FA04(self, 0);
  v4.receiver = self;
  v4.super_class = RMDataStreamHandler;
  [(RMDataStreamHandler *)&v4 dealloc];
}

- (void)endpoint:(id)endpoint didReceiveMessage:(id)message withData:(id)data replyBlock:(id)block
{
  endpointCopy = endpoint;
  messageCopy = message;
  dataCopy = data;
  blockCopy = block;
  if (!self)
  {
    goto LABEL_14;
  }

  for (i = self->_endpoint; i != endpointCopy; i = 0)
  {
    v14 = sub_10000942C(blockCopy);
    dataCopy = "self.endpoint == endpoint";
    if (sub_1000086B4(v14))
    {
      sub_10000861C();
      sub_100009B60(&_mh_execute_header, v15, v16, "{msg%{public}.0s:Endpoint must be same as the initially passed endpoint, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v32);
    }

    messageCopy = sub_10000942C(v17);
    if (os_signpost_enabled(messageCopy))
    {
      sub_10000861C();
      sub_100009B50();
      sub_100009B98(v18, v19, v20, v21, v22, v23, v32);
    }

    v25 = sub_10000942C(v24);
    if (sub_1000086CC(v25))
    {
      sub_10000861C();
      sub_100009B7C(&_mh_execute_header, v26, v27, "{msg%{public}.0s:Endpoint must be same as the initially passed endpoint, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v32);
    }

    sub_100009BD8();
    blockCopy = abort_report_np("%s:%d: assertion failure in %s", v28, v29, v30);
LABEL_14:
    ;
  }
}

- (void)endpoint:(id)endpoint didReceiveStreamingRequest:(id)request withData:(id)data
{
  endpointCopy = endpoint;
  requestCopy = request;
  dataCopy = data;
  v11 = dataCopy;
  if (self)
  {
    endpoint = self->_endpoint;
  }

  else
  {
    endpoint = 0;
  }

  if (endpoint == endpointCopy)
  {
    if (!dataCopy)
    {
      sub_100009BE4();
      if (v13)
      {
        goto LABEL_7;
      }

      goto LABEL_48;
    }

    if (qword_10002C560 != -1)
    {
      dispatch_once(&qword_10002C560, &stru_100024E80);
    }

    v66 = 0;
    v15 = [NSKeyedUnarchiver unarchivedObjectOfClasses:qword_10002C558 fromData:v11 error:&v66];
    v16 = v66;
    v17 = [NSUUID alloc];
    v18 = [v15 objectForKeyedSubscript:@"Identifier"];
    v65 = [v17 initWithUUIDString:v18];

    sub_100009BE4();
    if (!v13)
    {
      dispatch_once(&qword_10002C0C8, &stru_100024F40);
    }

    v19 = qword_10002C0D0;
    if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v68 = v65;
      sub_100009BB4(&_mh_execute_header, v19, v20, "Identifier: %@", buf);
    }

    v21 = [v15 objectForKeyedSubscript:@"Interval"];
    sub_100009BE4();
    v64 = v15;
    if (!v13)
    {
      dispatch_once(&qword_10002C0C8, &stru_100024F40);
    }

    v22 = qword_10002C0D0;
    if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v68 = v21;
      sub_100009BB4(&_mh_execute_header, v22, v23, "Interval: %@", buf);
    }

    if (self && self->_dataProviderStreaming)
    {
      sub_100009BE4();
      if (!v13)
      {
        dispatch_once(&qword_10002C0C8, &stru_100024F40);
      }

      v22 = qword_10002C0D0;
      if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "Received a new streaming request while the previous streaming is still active", buf, 2u);
      }

      [(RMDataStreamHandler *)self endpointShouldStopStreamingData:endpointCopy];
    }

    sub_100013E3C(self, 0);
    v24 = v64;
    if (self->_isInternal)
    {
      v25 = v16;
      if ([requestCopy isEqualToString:@"kRMStartStreamingDummyData"])
      {
        v26 = -[RMDummyDataProviderConfiguration initWithUniqueIdentifier:updateInterval:]([RMDummyDataProviderConfiguration alloc], "initWithUniqueIdentifier:updateInterval:", v65, [v21 unsignedLongLongValue]);
        v39 = [RMDummyDataProvider alloc];
        v29 = sub_100015290(endpointCopy);
        v40 = [(RMDummyDataProvider *)v39 initWithConfiguration:v26 receiverQueue:v29];
        sub_100013E3C(self, v40);

        goto LABEL_39;
      }

      if ([requestCopy isEqualToString:@"kRMStartStreamingAudioListenerPose"])
      {
        v26 = [v64 objectForKeyedSubscript:@"TempestOptions"];
        v27 = [v64 objectForKeyedSubscript:@"ForceSessionRestart"];
        bOOLValue = [v27 BOOLValue];

        v29 = [[RMAudioListenerPoseProviderConfiguration alloc] initWithUniqueIdentifier:v65 tempestOptions:v26 forceSessionRestart:bOOLValue];
        v30 = [RMAudioListenerPoseProvider alloc];
        v31 = sub_100009BCC();
        v32 = sub_100015290(v31);
        v33 = [v27 initWithConfiguration:v29 receiverQueue:v32];
        sub_100013E3C(self, v33);

LABEL_39:
        v24 = v64;
      }

LABEL_40:

      goto LABEL_9;
    }

    v25 = v16;
    if ([requestCopy isEqualToString:@"kRMStartStreamingHeadphoneMotion"])
    {
      v41 = [v64 objectForKeyedSubscript:@"lowLatency"];
      bOOLValue2 = [v41 BOOLValue];

      v43 = [RMHeadphoneMotionProvider alloc];
      v44 = sub_100009BCC();
      v26 = sub_100015290(v44);
      v38 = sub_100012A50(v41, v26, bOOLValue2);
    }

    else if ([requestCopy isEqualToString:@"kRMStartStreamingHeadphoneActivity"])
    {
      v45 = [RMHeadphoneActivityProvider alloc];
      v46 = sub_100009BCC();
      v26 = sub_100015290(v46);
      v38 = sub_100011FEC(&v22->isa, v26);
    }

    else
    {
      if (![requestCopy isEqualToString:@"kRMStartStreamingHeadphoneStatus"])
      {
        goto LABEL_40;
      }

      v34 = [v64 objectForKeyedSubscript:kCMHeadphoneRequireActivitySupport];
      bOOLValue3 = [v34 BOOLValue];

      v36 = [RMHeadphoneStatusProvider alloc];
      v37 = sub_100009BCC();
      v26 = sub_100015290(v37);
      v38 = [v34 initWithReceiverQueue:v26 requireActivitySupport:bOOLValue3];
    }

    v29 = v38;
    sub_100013E3C(self, v38);
    goto LABEL_39;
  }

  v47 = sub_10000942C(dataCopy);
  v11 = "assert";
  requestCopy = "self.endpoint == endpoint";
  if (sub_1000086B4(v47))
  {
    sub_100009B24();
    sub_100009B60(&_mh_execute_header, v48, v49, "{msg%{public}.0s:Endpoint must be same as the initially passed endpoint, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf);
  }

  endpointCopy = sub_10000942C(v50);
  if (os_signpost_enabled(endpointCopy))
  {
    sub_100009B24();
    sub_100009B50();
    sub_100009B98(v51, v52, v53, v54, v55, v56, buf);
  }

  v58 = sub_10000942C(v57);
  if (sub_1000086CC(v58))
  {
    sub_100009B24();
    sub_100009B7C(&_mh_execute_header, v59, v60, "{msg%{public}.0s:Endpoint must be same as the initially passed endpoint, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf);
  }

  sub_100009BD8();
  abort_report_np("%s:%d: assertion failure in %s", v61, v62, v63);
LABEL_48:
  dispatch_once(&qword_10002C0C8, &stru_100024F40);
LABEL_7:
  v14 = qword_10002C0D0;
  if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Configuration message doesn't contain any data", buf, 2u);
  }

LABEL_9:
}

- (BOOL)endpoint:(id)endpoint shouldStartStreamingDataToReceiver:(id)receiver
{
  endpointCopy = endpoint;
  receiverCopy = receiver;
  v8 = receiverCopy;
  if (self)
  {
    endpoint = self->_endpoint;
  }

  else
  {
    endpoint = 0;
  }

  if (endpoint != endpointCopy)
  {
    v35 = sub_10000942C(receiverCopy);
    v8 = "self.endpoint == endpoint";
    if (sub_1000086B4(v35))
    {
      sub_100009ACC(1.7164e-36);
      sub_100009B60(&_mh_execute_header, v36, v37, "{msg%{public}.0s:Endpoint must be same as the initially passed endpoint, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf);
    }

    endpointCopy = sub_10000942C(v38);
    if (os_signpost_enabled(endpointCopy))
    {
      sub_100009ACC(1.7164e-36);
      sub_100009B50();
      sub_100009B98(v39, v40, v41, v42, v43, v44, buf);
    }

    v46 = sub_10000942C(v45);
    if (sub_1000086CC(v46))
    {
      sub_100009ACC(1.7164e-36);
      sub_100009B7C(&_mh_execute_header, v47, v48, "{msg%{public}.0s:Endpoint must be same as the initially passed endpoint, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf);
    }

    sub_100009BD8();
    abort_report_np("%s:%d: assertion failure in %s", v49, v50, v51);
    goto LABEL_34;
  }

  if (!self || (v10 = self->_dataProvider) == 0)
  {
    if (qword_10002C0C8 == -1)
    {
LABEL_7:
      v11 = qword_10002C0D0;
      if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Streaming can't start because no dataProvider has been initialized!", buf, 2u);
      }

      v12 = 0;
      goto LABEL_10;
    }

LABEL_34:
    dispatch_once(&qword_10002C0C8, &stru_100024F40);
    goto LABEL_7;
  }

  v14 = v10;
  v15 = sub_100012944(&endpointCopy->isa);
  objc_setProperty_nonatomic_copy(self, v16, v15, 24);

  if (!self->_endpointName)
  {
    objc_setProperty_nonatomic_copy(self, v17, @"unknown", 24);
    if (qword_10002C0C8 != -1)
    {
      dispatch_once(&qword_10002C0C8, &stru_100024F40);
    }

    v18 = qword_10002C0D0;
    if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_FAULT))
    {
      *buf = 138477827;
      v61 = endpointCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "Failed to determine the endpoint name for endpoint: %{private}@", buf, 0xCu);
    }
  }

  self->_startTime = sub_1000087A8();
  if (qword_10002C0C8 != -1)
  {
    dispatch_once(&qword_10002C0C8, &stru_100024F40);
  }

  v19 = qword_10002C0D0;
  if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
  {
    endpointName = self->_endpointName;
    *buf = 138543362;
    v61 = endpointName;
    v21 = v19;
    sub_100009BB4(&_mh_execute_header, v21, v22, "Data stream started on endpoint: %{public}@", buf);
  }

  isInternal = self->_isInternal;
  v24 = self->_endpointName;
  v58[0] = @"client";
  v58[1] = @"tracking";
  v59[0] = v24;
  v59[1] = &__kCFBooleanTrue;
  v58[2] = @"eventType";
  v25 = v24;
  v26 = [NSNumber numberWithLong:!isInternal];
  v59[2] = v26;
  v27 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:3];

  if (qword_10002C0C8 != -1)
  {
    dispatch_once(&qword_10002C0C8, &stru_100024F40);
  }

  v28 = qword_10002C0D0;
  if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v61 = v27;
    sub_100009BB4(&_mh_execute_header, v28, v29, "Sending PowerLog event: %{private}@", buf);
  }

  PLLogRegisteredEvent();
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100009560;
  v54[3] = &unk_100024ED0;
  v55 = endpointCopy;
  v30 = v14;
  v56 = v30;
  v31 = v8;
  v57 = v31;
  v32 = [RBSProcessMonitor monitorWithConfiguration:v54];
  sub_10000FA48(self, v32);

  dataProvider = self->_dataProvider;
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100009A1C;
  v52[3] = &unk_100024EF8;
  v53 = v31;
  v34 = [(RMDataProvider *)dataProvider startProducingDataWithCallback:v52];
  v12 = v34 == 0;
  if (!v34)
  {
    self->_dataProviderStreaming = 1;
  }

LABEL_10:
  return v12;
}

- (void)endpointShouldStopStreamingData:(id)data
{
  dataCopy = data;
  p_super = &dataCopy->super;
  if (self)
  {
    endpoint = self->_endpoint;
  }

  else
  {
    endpoint = 0;
  }

  if (endpoint == dataCopy)
  {
    p_info = RMFacePoseCaptureContext.info;
    if (qword_10002C0C8 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v20 = sub_10000942C(dataCopy);
    self = "self.endpoint == endpoint";
    if (sub_1000086B4(v20))
    {
      sub_100009AF8();
      sub_100009B60(&_mh_execute_header, v21, v22, "{msg%{public}.0s:Endpoint must be same as the initially passed endpoint, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &v39);
    }

    p_super = sub_10000942C(v23);
    if (os_signpost_enabled(p_super))
    {
      sub_100009AF8();
      sub_100009B50();
      sub_100009B98(v24, v25, v26, v27, v28, v29, &v39);
    }

    v31 = sub_10000942C(v30);
    if (sub_1000086CC(v31))
    {
      sub_100009AF8();
      sub_100009B7C(&_mh_execute_header, v32, v33, "{msg%{public}.0s:Endpoint must be same as the initially passed endpoint, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &v39);
    }

    sub_100009BD8();
    abort_report_np("%s:%d: assertion failure in %s", v34, v35, v36);
  }

  dispatch_once(&qword_10002C0C8, &stru_100024F40);
LABEL_5:
  v8 = qword_10002C0D0;
  if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      endpointName = self->_endpointName;
    }

    else
    {
      endpointName = 0;
    }

    v39 = 138543362;
    v40 = endpointName;
    v10 = v8;
    sub_100009BB4(&_mh_execute_header, v10, v11, "Data stream stopped on endpoint: %{public}@", &v39);
  }

  if (self)
  {
    v12 = !self->_isInternal;
    v13 = self->_endpointName;
  }

  else
  {
    v13 = 0;
    v12 = 1;
  }

  v37[0] = @"client";
  v37[1] = @"tracking";
  v38[0] = v13;
  v38[1] = &__kCFBooleanFalse;
  v37[2] = @"eventType";
  v14 = v13;
  v15 = [NSNumber numberWithLong:v12];
  v38[2] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:3];

  if (p_info[25] != -1)
  {
    dispatch_once(&qword_10002C0C8, &stru_100024F40);
  }

  v17 = qword_10002C0D0;
  if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
  {
    v39 = 138477827;
    v40 = v16;
    sub_100009BB4(&_mh_execute_header, v17, v18, "Sending PowerLog event: %{private}@", &v39);
  }

  PLLogRegisteredEvent();
  if (self && self->_isInternal || (AnalyticsSendEventLazy(), self))
  {
    [(RBSProcessMonitor *)self->_processMonitor invalidate];
    sub_10000FA48(self, 0);
    dataProvider = self->_dataProvider;
  }

  else
  {
    [0 invalidate];
    sub_10000FA48(0, 0);
    dataProvider = 0;
  }

  [(RMDataProvider *)dataProvider stopProducingData];
  if (self)
  {
    self->_dataProviderStreaming = 0;
  }
}

@end