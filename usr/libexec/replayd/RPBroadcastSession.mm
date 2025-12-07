@interface RPBroadcastSession
- (BOOL)showAlertForBroadcastSessionWithError:(id)error;
- (BOOL)showResumeBroadcastAlert;
- (RPBroadcastSession)initWithClientProxy:(id)proxy callingPID:(int)d bundleID:(id)iD delegate:(id)delegate;
- (id)broadcastSessionAudioQueue;
- (id)broadcastSessionVideoQueue;
- (id)dispatchCaptureQueue;
- (id)enableBroadcastWithListenerEndpoint:(id)endpoint;
- (unsigned)orientationFromFigTransform:(unint64_t)transform;
- (void)captureDidFailWithError:(id)error;
- (void)didCaptureSampleWithType:(int)type withSampleBuffer:(opaqueCMSampleBuffer *)buffer withTransformFlags:(unint64_t)flags;
- (void)disableBroadcast;
- (void)enableBroadcastStartCaptureWithListenerEndpoint:(id)endpoint withHandler:(id)handler;
- (void)handleBroadcastError:(id)error;
- (void)handleClientApplicationDidEnterBackground;
- (void)handleClientApplicationDidEnterForeground;
- (void)handleDeviceLockedWarning;
- (void)handleDeviceRestrictionWarning;
- (void)handleDisplayWarning;
- (void)handleResumeCaptureWithCompletionHandler:(id)handler;
- (void)handleResumeContextIDFailure;
- (void)loadBroadcastUploadExtensionWithBaseIdentifier:(id)identifier withHandler:(id)handler;
- (void)notifyExtensionOfAction:(int64_t)action completion:(id)completion;
- (void)notifyExtensionOfAudioSampleBuffer:(opaqueCMSampleBuffer *)buffer withType:(int64_t)type;
- (void)notifyExtensionOfVideoSampleBuffer:(opaqueCMSampleBuffer *)buffer withType:(int64_t)type sampleOrientation:(unsigned int)orientation;
- (void)pauseSession;
- (void)processAcknowledgementSetupBroadcastWithMicrophoneEnabled:(BOOL)enabled cameraEnabled:(BOOL)cameraEnabled listenerEndpoint:(id)endpoint withHandler:(id)handler;
- (void)processSampleBuffer:(opaqueCMSampleBuffer *)buffer transformFlags:(unint64_t)flags;
- (void)resumeSessionWithWindowLayerContextID:(id)d completionHandler:(id)handler;
- (void)setupBroadcastWithHostBundleID:(id)d broadcastExtensionBundleID:(id)iD broadcastConfigurationData:(id)data userInfo:(id)info handler:(id)handler;
- (void)startBroadcastWithMicrophoneEnabled:(BOOL)enabled cameraEnabled:(BOOL)cameraEnabled contextID:(id)d windowSize:(CGSize)size listenerEndpoint:(id)endpoint handler:(id)handler;
- (void)startCaptureWithHandler:(id)handler;
- (void)stopBroadcastWithHandler:(id)handler;
- (void)updateBroadcastURL:(id)l;
@end

@implementation RPBroadcastSession

- (RPBroadcastSession)initWithClientProxy:(id)proxy callingPID:(int)d bundleID:(id)iD delegate:(id)delegate
{
  v9.receiver = self;
  v9.super_class = RPBroadcastSession;
  v6 = [(RPSession *)&v9 initWithClientProxy:proxy sessionType:3 callingPID:*&d bundleID:iD delegate:delegate];
  if (v6)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v11 = "[RPBroadcastSession initWithClientProxy:callingPID:bundleID:delegate:]";
      v12 = 1024;
      v13 = 66;
      v14 = 2048;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
    }

    broadcastURL = v6->_broadcastURL;
    v6->_broadcastURL = 0;
  }

  return v6;
}

- (void)startBroadcastWithMicrophoneEnabled:(BOOL)enabled cameraEnabled:(BOOL)cameraEnabled contextID:(id)d windowSize:(CGSize)size listenerEndpoint:(id)endpoint handler:(id)handler
{
  height = size.height;
  width = size.width;
  cameraEnabledCopy = cameraEnabled;
  enabledCopy = enabled;
  dCopy = d;
  endpointCopy = endpoint;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v21 = "[RPBroadcastSession startBroadcastWithMicrophoneEnabled:cameraEnabled:contextID:windowSize:listenerEndpoint:handler:]";
    v22 = 1024;
    v23 = 74;
    v24 = 2048;
    selfCopy = self;
    v26 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p starting in session state %d", buf, 0x22u);
  }

  if ([(RPSession *)self sessionState]!= 3)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v21 = "[RPBroadcastSession startBroadcastWithMicrophoneEnabled:cameraEnabled:contextID:windowSize:listenerEndpoint:handler:]";
      v22 = 1024;
      v23 = 97;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d attempting to start broadcast session when session was not in stopped state", buf, 0x12u);
    }

    height = [NSError _rpUserErrorForCode:-5830 userInfo:0];
    [(RPSession *)self reportSessionEndReason:height];
    if (!handlerCopy)
    {
      goto LABEL_17;
    }

LABEL_15:
    handlerCopy[2](handlerCopy, height);
    goto LABEL_17;
  }

  v19.receiver = self;
  v19.super_class = RPBroadcastSession;
  [(RPSession *)&v19 startWithContextID:dCopy windowSize:width, height];
  height = [(RPSession *)self checkCaptureRequirementsWithMicrophoneEnabled:enabledCopy cameraEnabled:cameraEnabledCopy windowSize:width, height];
  if (!height)
  {
    [(RPBroadcastSession *)self processAcknowledgementSetupBroadcastWithMicrophoneEnabled:enabledCopy cameraEnabled:cameraEnabledCopy listenerEndpoint:endpointCopy withHandler:handlerCopy];
    goto LABEL_17;
  }

  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100065B18();
  }

  [(RPSession *)self setSessionState:3];
  if (handlerCopy)
  {
    goto LABEL_15;
  }

LABEL_17:
}

- (void)stopBroadcastWithHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v9 = "[RPBroadcastSession stopBroadcastWithHandler:]";
    v10 = 1024;
    v11 = 109;
    v12 = 2048;
    selfCopy = self;
    v14 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p stopping in session state %d", buf, 0x22u);
  }

  if ([(RPSession *)self sessionState]== 3 || ![(RPSession *)self sessionState]|| [(RPSession *)self sessionState]== 2)
  {
    v5 = [NSError _rpUserErrorForCode:-5829 userInfo:0];
    [(RPSession *)self reportSessionEndReason:v5];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v5);
    }
  }

  else
  {
    [(RPSession *)self setSessionState:2];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004B2AC;
    v6[3] = &unk_1000A11E0;
    v6[4] = self;
    v7 = handlerCopy;
    [(RPBroadcastSession *)self notifyExtensionOfAction:4 completion:v6];
  }
}

- (void)disableBroadcast
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[RPBroadcastSession disableBroadcast]";
    v8 = 1024;
    v9 = 142;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d disableBroadcast", &v6, 0x12u);
  }

  [(RPSession *)self setSessionState:3];
  broadcastExtension = self->_broadcastExtension;
  self->_broadcastExtension = 0;

  broadcastUserInfo = self->_broadcastUserInfo;
  self->_broadcastUserInfo = 0;

  broadcastConfiguration = self->_broadcastConfiguration;
  self->_broadcastConfiguration = 0;
}

- (void)updateBroadcastURL:(id)l
{
  lCopy = l;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[RPBroadcastSession updateBroadcastURL:]";
    v8 = 1024;
    v9 = 158;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v6, 0x12u);
  }

  broadcastURL = self->_broadcastURL;
  self->_broadcastURL = lCopy;
}

- (void)processAcknowledgementSetupBroadcastWithMicrophoneEnabled:(BOOL)enabled cameraEnabled:(BOOL)cameraEnabled listenerEndpoint:(id)endpoint withHandler:(id)handler
{
  cameraEnabledCopy = cameraEnabled;
  enabledCopy = enabled;
  endpointCopy = endpoint;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136446466;
    v15 = "[RPBroadcastSession processAcknowledgementSetupBroadcastWithMicrophoneEnabled:cameraEnabled:listenerEndpoint:withHandler:]";
    v16 = 1024;
    v17 = 163;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v14, 0x12u);
  }

  if ([(RPSession *)self getAcknowledgementAlertResultsWithMicrophone:enabledCopy cameraEnabled:cameraEnabledCopy])
  {
    if ([(RPBroadcastSession *)self isBroadcastSetup])
    {
      [(RPBroadcastSession *)self enableBroadcastStartCaptureWithListenerEndpoint:endpointCopy withHandler:handlerCopy];
    }

    else
    {
      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136446466;
        v15 = "[RPBroadcastSession processAcknowledgementSetupBroadcastWithMicrophoneEnabled:cameraEnabled:listenerEndpoint:withHandler:]";
        v16 = 1024;
        v17 = 177;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d attempted to start broadcast without a session, bailing out", &v14, 0x12u);
      }

      [(RPSession *)self setSessionState:3];
      v13 = [NSError _rpUserErrorForCode:-5808 userInfo:0];
      [(RPSession *)self reportSessionEndReason:v13];
      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, v13);
      }
    }
  }

  else
  {
    [(RPBroadcastSession *)self disableBroadcast];
    if (handlerCopy)
    {
      v12 = [NSError _rpUserErrorForCode:-5801 userInfo:0];
      handlerCopy[2](handlerCopy, v12);
    }
  }
}

- (void)enableBroadcastStartCaptureWithListenerEndpoint:(id)endpoint withHandler:(id)handler
{
  endpointCopy = endpoint;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v12 = "[RPBroadcastSession enableBroadcastStartCaptureWithListenerEndpoint:withHandler:]";
    v13 = 1024;
    v14 = 203;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d found broadcast info, enabling for session", buf, 0x12u);
  }

  v8 = [(RPBroadcastSession *)self enableBroadcastWithListenerEndpoint:endpointCopy];
  if (v8)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100065BA4();
    }

    [(RPSession *)self setSessionState:3];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v8);
    }
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v12 = "[RPBroadcastSession enableBroadcastStartCaptureWithListenerEndpoint:withHandler:]";
      v13 = 1024;
      v14 = 216;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d broadcast started without error", buf, 0x12u);
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10004B9FC;
    v9[3] = &unk_1000A11E0;
    v9[4] = self;
    v10 = handlerCopy;
    [(RPBroadcastSession *)self notifyExtensionOfAction:1 completion:v9];
  }
}

- (void)startCaptureWithHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v18 = "[RPBroadcastSession startCaptureWithHandler:]";
    v19 = 1024;
    v20 = 233;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v5 = +[RPCaptureManager sharedInstance];
  callingPID = self->super._callingPID;
  microphoneEnabled = [(RPSession *)self microphoneEnabled];
  [(RPSession *)self windowSize];
  v9 = v8;
  v11 = v10;
  contextID = [(RPSession *)self contextID];
  v13 = [NSArray arrayWithObject:contextID];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004BBF8;
  v15[3] = &unk_1000A1840;
  v15[4] = self;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [v5 startCaptureForDelegate:self forProcessID:callingPID shouldStartMicrophoneCapture:microphoneEnabled windowSize:0 captureType:v13 contextIDs:v15 didStartHandler:{v9, v11}];
}

- (void)pauseSession
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v7 = "[RPBroadcastSession pauseSession]";
    v8 = 1024;
    v9 = 255;
    v10 = 2048;
    selfCopy = self;
    v12 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p pausing in session state %d", buf, 0x22u);
  }

  if ([(RPSession *)self sessionState]== 1)
  {
    v3 = +[RPCaptureManager sharedInstance];
    [v3 stopCaptureForDelegate:self];

    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10004BED0;
    v5[3] = &unk_1000A1088;
    v5[4] = self;
    [(RPBroadcastSession *)self notifyExtensionOfAction:2 completion:v5];
    v4.receiver = self;
    v4.super_class = RPBroadcastSession;
    [(RPSession *)&v4 pauseSession];
  }
}

- (void)resumeSessionWithWindowLayerContextID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v13 = "[RPBroadcastSession resumeSessionWithWindowLayerContextID:completionHandler:]";
    v14 = 1024;
    v15 = 270;
    v16 = 2048;
    selfCopy = self;
    v18 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p resuming in session state %d", buf, 0x22u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004C088;
  v10[3] = &unk_1000A11B8;
  v11 = handlerCopy;
  v9.receiver = self;
  v9.super_class = RPBroadcastSession;
  v8 = handlerCopy;
  [(RPSession *)&v9 resumeSessionWithWindowLayerContextID:dCopy completionHandler:v10];
  [(RPBroadcastSession *)self notifyExtensionOfAction:3 completion:&stru_1000A2578];
}

- (id)enableBroadcastWithListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v23 = "[RPBroadcastSession enableBroadcastWithListenerEndpoint:]";
    v24 = 1024;
    v25 = 281;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d enableBroadcastWithExtension", buf, 0x12u);
  }

  objc_initWeak(&location, self);
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v23 = "[RPBroadcastSession enableBroadcastWithListenerEndpoint:]";
    v24 = 1024;
    v25 = 288;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d setting up extension proxy", buf, 0x12u);
  }

  if (endpointCopy)
  {
    v5 = [[RPBroadcastExtensionProxy alloc] initWithBroadcastUploadListenerEndpoint:endpointCopy];
    broadcastUploadExtensionProxy = self->_broadcastUploadExtensionProxy;
    self->_broadcastUploadExtensionProxy = v5;
  }

  else
  {
    v7 = [[RPBroadcastExtensionProxy alloc] initWithBroadcastUploadExtension:self->_broadcastExtension];
    v8 = self->_broadcastUploadExtensionProxy;
    self->_broadcastUploadExtensionProxy = v7;

    v9 = dispatch_semaphore_create(0);
    v10 = self->_broadcastUploadExtensionProxy;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10004C520;
    v18[3] = &unk_1000A1348;
    broadcastUploadExtensionProxy = v9;
    v19 = broadcastUploadExtensionProxy;
    selfCopy = self;
    [(RPBroadcastExtensionProxy *)v10 establishConnectionWithHandler:v18];
    dispatch_semaphore_wait(&broadcastUploadExtensionProxy->super, 0xFFFFFFFFFFFFFFFFLL);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10004C610;
  v16[3] = &unk_1000A1B28;
  objc_copyWeak(&v17, &location);
  [(RPBroadcastExtensionProxy *)self->_broadcastUploadExtensionProxy setServiceInfoHandler:v16];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10004C66C;
  v14[3] = &unk_1000A2198;
  objc_copyWeak(&v15, &location);
  [(RPBroadcastExtensionProxy *)self->_broadcastUploadExtensionProxy setBroadcastURLHandler:v14];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10004C6C8;
  v12[3] = &unk_1000A1650;
  objc_copyWeak(&v13, &location);
  [(RPBroadcastExtensionProxy *)self->_broadcastUploadExtensionProxy setErrorHandler:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return 0;
}

- (void)handleBroadcastError:(id)error
{
  errorCopy = error;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v8 = "[RPBroadcastSession handleBroadcastError:]";
    v9 = 1024;
    v10 = 335;
    v11 = 2112;
    v12 = errorCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d error %@", buf, 0x1Cu);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10004C8B4;
    v5[3] = &unk_1000A1348;
    v5[4] = self;
    v6 = errorCopy;
    [(RPBroadcastSession *)self stopBroadcastWithHandler:v5];
  }
}

- (void)setupBroadcastWithHostBundleID:(id)d broadcastExtensionBundleID:(id)iD broadcastConfigurationData:(id)data userInfo:(id)info handler:(id)handler
{
  dCopy = d;
  iDCopy = iD;
  dataCopy = data;
  infoCopy = info;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v27 = "[RPBroadcastSession setupBroadcastWithHostBundleID:broadcastExtensionBundleID:broadcastConfigurationData:userInfo:handler:]";
    v28 = 1024;
    v29 = 346;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v17 = [NSBundle baseIdentifier:iDCopy];
  [(RPBroadcastSession *)self setBroadcastHostBundleId:v17];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10004CAE4;
  v21[3] = &unk_1000A21C0;
  v22 = dataCopy;
  selfCopy = self;
  v24 = infoCopy;
  v25 = handlerCopy;
  v18 = handlerCopy;
  v19 = infoCopy;
  v20 = dataCopy;
  [(RPBroadcastSession *)self loadBroadcastUploadExtensionWithBaseIdentifier:v17 withHandler:v21];
}

- (void)loadBroadcastUploadExtensionWithBaseIdentifier:(id)identifier withHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = "[RPBroadcastSession loadBroadcastUploadExtensionWithBaseIdentifier:withHandler:]";
    v14 = 1024;
    v15 = 378;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d looking for upload extension", buf, 0x12u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004CDAC;
  v9[3] = &unk_1000A25A0;
  v10 = identifierCopy;
  v11 = handlerCopy;
  v7 = identifierCopy;
  v8 = handlerCopy;
  [NSExtension extensionsWithMatchingPointName:@"com.apple.broadcast-services-upload" baseIdentifier:v7 completion:v9];
}

- (id)dispatchCaptureQueue
{
  if (qword_1000B69E8 != -1)
  {
    sub_100065CBC();
  }

  v3 = qword_1000B69E0;

  return v3;
}

- (void)didCaptureSampleWithType:(int)type withSampleBuffer:(opaqueCMSampleBuffer *)buffer withTransformFlags:(unint64_t)flags
{
  v7 = *&type;
  if ([(RPSession *)self sessionState]!= 1)
  {
    return;
  }

  [(RPSession *)self updateReportingSampleCount:v7];
  if (v7 == 2)
  {
    if (![(RPSession *)self microphoneEnabled])
    {
      DataBuffer = CMSampleBufferGetDataBuffer(buffer);
      DataLength = CMBlockBufferGetDataLength(DataBuffer);
      CMBlockBufferFillDataBytes(0, DataBuffer, 0, DataLength);
    }

    selfCopy2 = self;
    bufferCopy2 = buffer;
    v11 = 3;
  }

  else
  {
    if (v7 != 1)
    {
      if (!v7)
      {

        [(RPBroadcastSession *)self processSampleBuffer:buffer transformFlags:flags];
      }

      return;
    }

    selfCopy2 = self;
    bufferCopy2 = buffer;
    v11 = 2;
  }

  [(RPBroadcastSession *)selfCopy2 notifyExtensionOfAudioSampleBuffer:bufferCopy2 withType:v11];
}

- (void)captureDidFailWithError:(id)error
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004D15C;
  v5[3] = &unk_1000A1348;
  errorCopy = error;
  selfCopy = self;
  v4 = errorCopy;
  [(RPBroadcastSession *)self stopBroadcastWithHandler:v5];
}

- (BOOL)showAlertForBroadcastSessionWithError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy && ([errorCopy domain], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    localizedFailureReason = [v5 localizedFailureReason];

    if (localizedFailureReason)
    {
      [v5 localizedFailureReason];
    }

    else
    {
      [v5 localizedDescription];
    }
    v9 = ;
    v10 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"BROADCAST_FAILED_ALERT_MESSAGE_FORMAT"];
    infoDictionary = [(NSExtension *)self->_broadcastExtension infoDictionary];
    v12 = [infoDictionary objectForKey:_kCFBundleDisplayNameKey];
    v13 = [NSString stringWithFormat:v10, v12, v9];

    v14 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"BROADCAST_STATUSBAR_TAPPED_ALERT_TITLE"];
    v15 = v13;
    v16 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"BROADCAST_FAILED_ALERT_OK_BUTTON"];
    v17 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"BROADCAST_FAILED_ALERT_GO_TO_APP_BUTTON"];
    v27[0] = kCFUserNotificationAlertHeaderKey;
    v27[1] = kCFUserNotificationAlertMessageKey;
    v28[0] = v14;
    v28[1] = v15;
    v27[2] = kCFUserNotificationOtherButtonTitleKey;
    v27[3] = kCFUserNotificationDefaultButtonTitleKey;
    v28[2] = v16;
    v28[3] = v17;
    v18 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, 0, [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:4]);
    if (v18)
    {
      v19 = v18;
      *buf = 0;
      CFUserNotificationReceiveResponse(v18, 0.0, buf);
      if (*buf == 2)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100065D7C();
        }
      }

      else if (!*buf)
      {
        v26 = v9;
        identifier = [(NSExtension *)self->_broadcastExtension identifier];
        v21 = [LSPlugInKitProxy pluginKitProxyForIdentifier:identifier];

        containingBundle = [v21 containingBundle];
        bundleIdentifier = [containingBundle bundleIdentifier];

        v24 = +[LSApplicationWorkspace defaultWorkspace];
        [v24 openApplicationWithBundleID:bundleIdentifier];

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100065E00();
        }

        v9 = v26;
      }

      CFRelease(v19);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100065E84();
    }

    v8 = 0;
  }

  else
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "[RPBroadcastSession showAlertForBroadcastSessionWithError:]";
      v30 = 1024;
      v31 = 456;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Not showing the alert, as there is no error or the error domain is nil", buf, 0x12u);
    }

    v8 = 1;
  }

  return v8;
}

- (BOOL)showResumeBroadcastAlert
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v20 = "[RPBroadcastSession showResumeBroadcastAlert]";
    v21 = 1024;
    v22 = 521;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if (![(RPSession *)self shouldBypassAlertForTest])
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v20 = "[RPBroadcastSession showResumeBroadcastAlert]";
      v21 = 1024;
      v22 = 527;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
    }

    v4 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"BROADCAST_RESUME_ALERT_MESSAGE_FORMAT"];
    infoDictionary = [(NSExtension *)self->_broadcastExtension infoDictionary];
    v6 = [infoDictionary objectForKey:_kCFBundleDisplayNameKey];
    v7 = [NSString stringWithFormat:v4, v6];

    v8 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"BROADCAST_STATUSBAR_TAPPED_ALERT_TITLE"];
    v9 = v7;
    v10 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"RECORDING_STATUSBAR_TAPPED_ALERT_DECLINE_BUTTON"];
    v11 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"BROADCAST_ACTIVITIES_PREFERRED_ACCEPT_BUTTON"];
    v17[0] = kCFUserNotificationAlertHeaderKey;
    v17[1] = kCFUserNotificationAlertMessageKey;
    v18[0] = v8;
    v18[1] = v9;
    v17[2] = kCFUserNotificationOtherButtonTitleKey;
    v17[3] = kCFUserNotificationDefaultButtonTitleKey;
    v18[2] = v10;
    v18[3] = v11;
    v12 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, 0, [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4]);
    if (!v12)
    {
      if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100065F08();
      }

      v3 = 0;
      goto LABEL_24;
    }

    v13 = v12;
    responseFlags = 0;
    CFUserNotificationReceiveResponse(v12, 0.0, &responseFlags);
    v3 = responseFlags == 0;
    if (responseFlags)
    {
      if (responseFlags != 2 || dword_1000B6840 > 1 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      *buf = 136446466;
      v20 = "[RPBroadcastSession showResumeBroadcastAlert]";
      v21 = 1024;
      v22 = 560;
      v14 = " [INFO] %{public}s:%d declined resume broadcast";
    }

    else
    {
      if (dword_1000B6840 > 1 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      *buf = 136446466;
      v20 = "[RPBroadcastSession showResumeBroadcastAlert]";
      v21 = 1024;
      v22 = 558;
      v14 = " [INFO] %{public}s:%d accepted resume broadcast";
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v14, buf, 0x12u);
LABEL_23:
    CFRelease(v13);
LABEL_24:

    return v3;
  }

  return 1;
}

- (void)processSampleBuffer:(opaqueCMSampleBuffer *)buffer transformFlags:(unint64_t)flags
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[RPBroadcastSession processSampleBuffer:transformFlags:]";
    v9 = 1024;
    v10 = 590;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d processing sample buffer for streaming", &v7, 0x12u);
  }

  if ([(RPSession *)self sessionState]== 4)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446466;
      v8 = "[RPBroadcastSession processSampleBuffer:transformFlags:]";
      v9 = 1024;
      v10 = 593;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session is paused discard sample", &v7, 0x12u);
    }
  }

  else
  {
    [(RPBroadcastSession *)self notifyExtensionOfVideoSampleBuffer:buffer withType:1 sampleOrientation:[(RPBroadcastSession *)self orientationFromFigTransform:flags]];
  }
}

- (void)notifyExtensionOfAudioSampleBuffer:(opaqueCMSampleBuffer *)buffer withType:(int64_t)type
{
  if (self->_broadcastExtension)
  {
    if (self->_broadcastUploadExtensionProxy)
    {
      if (![(RPSession *)self dispatchLimitReached:type])
      {
        if (buffer)
        {
          CFRetain(buffer);
        }

        v7 = sub_1000575D0(buffer, type);
        broadcastSessionAudioQueue = [(RPBroadcastSession *)self broadcastSessionAudioQueue];
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_10004DC90;
        v10[3] = &unk_1000A2280;
        v10[4] = self;
        v11 = v7;
        typeCopy = type;
        bufferCopy = buffer;
        v9 = v7;
        dispatch_async(broadcastSessionAudioQueue, v10);
      }
    }

    else if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100065F94();
    }
  }

  else if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100066020();
  }
}

- (void)notifyExtensionOfVideoSampleBuffer:(opaqueCMSampleBuffer *)buffer withType:(int64_t)type sampleOrientation:(unsigned int)orientation
{
  if (!self->_broadcastExtension)
  {
    if (dword_1000B6840 > 1 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LODWORD(timingInfoOut.duration.value) = 136446466;
    *(&timingInfoOut.duration.value + 4) = "[RPBroadcastSession notifyExtensionOfVideoSampleBuffer:withType:sampleOrientation:]";
    LOWORD(timingInfoOut.duration.flags) = 1024;
    *(&timingInfoOut.duration.flags + 2) = 640;
    v18 = " [INFO] %{public}s:%d no broadcast extension found!";
LABEL_13:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v18, &timingInfoOut, 0x12u);
    return;
  }

  if (!self->_broadcastUploadExtensionProxy)
  {
    if (dword_1000B6840 > 1 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LODWORD(timingInfoOut.duration.value) = 136446466;
    *(&timingInfoOut.duration.value + 4) = "[RPBroadcastSession notifyExtensionOfVideoSampleBuffer:withType:sampleOrientation:]";
    LOWORD(timingInfoOut.duration.flags) = 1024;
    *(&timingInfoOut.duration.flags + 2) = 645;
    v18 = " [INFO] %{public}s:%d broadcast extension not ready";
    goto LABEL_13;
  }

  v6 = *&orientation;
  if (![(RPSession *)self dispatchLimitReached:type])
  {
    if (buffer)
    {
      CFRetain(buffer);
    }

    v9 = +[NSMutableDictionary dictionary];
    v10 = [NSNumber numberWithUnsignedInt:v6];
    [v9 setObject:v10 forKeyedSubscript:@"RPSampleBufferVideoOrientation"];

    v11 = [NSNumber numberWithInteger:type];
    [v9 setObject:v11 forKeyedSubscript:@"RPBroadcastProcessExtensionPayloadKeySampleType"];

    ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
    CFRetain(ImageBuffer);
    IOSurface = CVPixelBufferGetIOSurface(ImageBuffer);
    v14 = objc_alloc_init(RPIOSurfaceObject);
    [(RPIOSurfaceObject *)v14 setIOSurface:IOSurface];
    [v9 setObject:v14 forKeyedSubscript:@"RPBroadcastProcessExtensionPayloadKeyIOSurface"];
    memset(&timingInfoOut, 0, sizeof(timingInfoOut));
    CMSampleBufferGetSampleTimingInfo(buffer, 0, &timingInfoOut);
    v15 = [NSData dataWithBytes:&timingInfoOut length:72];
    [v9 setObject:v15 forKeyedSubscript:@"RPBroadcastProcessExtensionPayloadKeyTimingInfo"];
    broadcastSessionVideoQueue = [(RPBroadcastSession *)self broadcastSessionVideoQueue];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10004E13C;
    v19[3] = &unk_1000A2280;
    v19[4] = self;
    v20 = v9;
    bufferCopy = buffer;
    typeCopy = type;
    v17 = v9;
    dispatch_async(broadcastSessionVideoQueue, v19);

    CFRelease(ImageBuffer);
  }
}

- (void)notifyExtensionOfAction:(int64_t)action completion:(id)completion
{
  completionCopy = completion;
  if (!self->_broadcastExtension)
  {
    if (dword_1000B6840 > 1 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 136446466;
    v20 = "[RPBroadcastSession notifyExtensionOfAction:completion:]";
    v21 = 1024;
    v22 = 691;
    v13 = " [INFO] %{public}s:%d no broadcast extension found!";
    goto LABEL_15;
  }

  if (!self->_broadcastUploadExtensionProxy)
  {
    if (dword_1000B6840 > 1 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 136446466;
    v20 = "[RPBroadcastSession notifyExtensionOfAction:completion:]";
    v21 = 1024;
    v22 = 697;
    v13 = " [INFO] %{public}s:%d broadcast extension not ready";
LABEL_15:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v13, buf, 0x12u);
LABEL_16:
    completionCopy[2](completionCopy);
    goto LABEL_19;
  }

  v7 = +[NSMutableDictionary dictionary];
  v8 = [NSNumber numberWithInteger:action];
  [v7 setObject:v8 forKeyedSubscript:@"RPBroadcastProcessExtensionPayloadKeyActionType"];

  [v7 setObject:self->_broadcastUserInfo forKeyedSubscript:@"RPBroadcastExtensionKeyExtensionUserInfo"];
  if (action == 4)
  {
    v9 = dispatch_semaphore_create(0);
    broadcastUploadExtensionProxy = self->_broadcastUploadExtensionProxy;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10004E5F4;
    v15[3] = &unk_1000A1088;
    v11 = v9;
    v16 = v11;
    [(RPBroadcastExtensionProxy *)broadcastUploadExtensionProxy processPayload:v7 completion:v15];
    v12 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v11, v12) && dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000660AC();
    }

    completionCopy[2](completionCopy);
  }

  else
  {
    v14 = self->_broadcastUploadExtensionProxy;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10004E5E4;
    v17[3] = &unk_1000A1F28;
    v18 = completionCopy;
    [(RPBroadcastExtensionProxy *)v14 processPayload:v7 completion:v17];
    v11 = v18;
  }

LABEL_19:
}

- (id)broadcastSessionAudioQueue
{
  if (qword_1000B69F8 != -1)
  {
    sub_100066158();
  }

  v3 = qword_1000B69F0;

  return v3;
}

- (id)broadcastSessionVideoQueue
{
  if (qword_1000B6A08 != -1)
  {
    sub_10006616C();
  }

  v3 = qword_1000B6A00;

  return v3;
}

- (unsigned)orientationFromFigTransform:(unint64_t)transform
{
  if (transform - 1 > 6)
  {
    return 1;
  }

  else
  {
    return dword_100076608[transform - 1];
  }
}

- (void)handleResumeCaptureWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v18 = "[RPBroadcastSession handleResumeCaptureWithCompletionHandler:]";
    v19 = 1024;
    v20 = 804;
    v21 = 2048;
    selfCopy = self;
    v23 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p resuming in session state %d", buf, 0x22u);
  }

  self->super._sessionIsResuming = 1;
  v5 = +[RPCaptureManager sharedInstance];
  callingPID = self->super._callingPID;
  microphoneEnabled = [(RPSession *)self microphoneEnabled];
  [(RPSession *)self windowSize];
  v9 = v8;
  v11 = v10;
  contextID = [(RPSession *)self contextID];
  v13 = [NSArray arrayWithObject:contextID];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004E998;
  v15[3] = &unk_1000A1840;
  v15[4] = self;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [v5 startCaptureForDelegate:self forProcessID:callingPID shouldStartMicrophoneCapture:microphoneEnabled windowSize:0 captureType:v13 contextIDs:v15 didStartHandler:{v9, v11}];
}

- (void)handleClientApplicationDidEnterBackground
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446722;
    v4 = "[RPBroadcastSession handleClientApplicationDidEnterBackground]";
    v5 = 1024;
    v6 = 824;
    v7 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session state %d", &v3, 0x18u);
  }

  [(RPBroadcastSession *)self pauseSession];
}

- (void)handleClientApplicationDidEnterForeground
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v5 = "[RPBroadcastSession handleClientApplicationDidEnterForeground]";
    v6 = 1024;
    v7 = 831;
    v8 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session state %d", buf, 0x18u);
  }

  if ([(RPSession *)self sessionState]== 4)
  {
    if ([(RPBroadcastSession *)self showResumeBroadcastAlert])
    {
      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v5 = "[RPBroadcastSession handleClientApplicationDidEnterForeground]";
        v6 = 1024;
        v7 = 835;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d resume", buf, 0x12u);
      }

      [(RPClientProtocol *)self->super._clientProxy shouldResumeSessionType:@"RPInAppBroadcast"];
    }

    else
    {
      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v5 = "[RPBroadcastSession handleClientApplicationDidEnterForeground]";
        v6 = 1024;
        v7 = 838;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d stop", buf, 0x12u);
      }

      v3[0] = _NSConcreteStackBlock;
      v3[1] = 3221225472;
      v3[2] = sub_10004EDD0;
      v3[3] = &unk_1000A1BC0;
      v3[4] = self;
      [(RPBroadcastSession *)self stopBroadcastWithHandler:v3];
    }
  }
}

- (void)handleDisplayWarning
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v5 = "[RPBroadcastSession handleDisplayWarning]";
    v6 = 1024;
    v7 = 850;
    v8 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session state %d", buf, 0x18u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10004EFF4;
    v3[3] = &unk_1000A1BC0;
    v3[4] = self;
    [(RPBroadcastSession *)self stopBroadcastWithHandler:v3];
  }
}

- (void)handleDeviceLockedWarning
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446722;
    v4 = "[RPBroadcastSession handleDeviceLockedWarning]";
    v5 = 1024;
    v6 = 861;
    v7 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session state %d", &v3, 0x18u);
  }
}

- (void)handleDeviceRestrictionWarning
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v5 = "[RPBroadcastSession handleDeviceRestrictionWarning]";
    v6 = 1024;
    v7 = 879;
    v8 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session state %d", buf, 0x18u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10004F2F4;
    v3[3] = &unk_1000A1BC0;
    v3[4] = self;
    [(RPBroadcastSession *)self stopBroadcastWithHandler:v3];
  }
}

- (void)handleResumeContextIDFailure
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v5 = "[RPBroadcastSession handleResumeContextIDFailure]";
    v6 = 1024;
    v7 = 891;
    v8 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session state %d", buf, 0x18u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10004F518;
    v3[3] = &unk_1000A1BC0;
    v3[4] = self;
    [(RPBroadcastSession *)self stopBroadcastWithHandler:v3];
  }
}

@end