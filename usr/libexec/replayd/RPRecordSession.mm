@interface RPRecordSession
- (id)dispatchCaptureQueue;
- (id)outputPath;
- (void)captureDidFailWithError:(id)error;
- (void)didCaptureSampleWithType:(int)type withSampleBuffer:(opaqueCMSampleBuffer *)buffer withTransformFlags:(unint64_t)flags;
- (void)discardInAppRecordingWithHandler:(id)handler;
- (void)handleClientApplicationDidEnterBackground;
- (void)handleClientApplicationDidEnterForeground;
- (void)handleDeviceLockedWarning;
- (void)handleDeviceRestrictionWarning;
- (void)handleDisplayWarning;
- (void)handleResumeCaptureWithCompletionHandler:(id)handler;
- (void)handleResumeContextIDFailure;
- (void)pauseSession;
- (void)presentAcknowledgmentWithMicrophoneEnabled:(BOOL)enabled cameraEnabled:(BOOL)cameraEnabled withHandler:(id)handler;
- (void)startRecordingWithMicrophoneEnabled:(BOOL)enabled cameraEnabled:(BOOL)cameraEnabled contextID:(id)d windowSize:(CGSize)size handler:(id)handler;
- (void)stopRecordingWithHandler:(id)handler;
@end

@implementation RPRecordSession

- (id)outputPath
{
  v3 = +[NSFileManager defaultManager];
  bundleID = [(RPSession *)self bundleID];
  v5 = [v3 outputPath:0 bundleID:bundleID];

  return v5;
}

- (void)startRecordingWithMicrophoneEnabled:(BOOL)enabled cameraEnabled:(BOOL)cameraEnabled contextID:(id)d windowSize:(CGSize)size handler:(id)handler
{
  height = size.height;
  width = size.width;
  cameraEnabledCopy = cameraEnabled;
  enabledCopy = enabled;
  dCopy = d;
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v18 = "[RPRecordSession startRecordingWithMicrophoneEnabled:cameraEnabled:contextID:windowSize:handler:]";
    v19 = 1024;
    v20 = 45;
    v21 = 2048;
    selfCopy = self;
    v23 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p starting in session state %d", buf, 0x22u);
  }

  if ([(RPSession *)self sessionState]!= 3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPRecordSession: attempting to start record session when session was not in stopped state", buf, 2u);
    }

    height = [NSError _rpUserErrorForCode:-5830 userInfo:0];
    [(RPSession *)self reportSessionEndReason:height];
    if (!handlerCopy)
    {
      goto LABEL_16;
    }

LABEL_14:
    handlerCopy[2](handlerCopy, height);
    goto LABEL_16;
  }

  v16.receiver = self;
  v16.super_class = RPRecordSession;
  [(RPSession *)&v16 startWithContextID:dCopy windowSize:width, height];
  height = [(RPSession *)self checkCaptureRequirementsWithMicrophoneEnabled:enabledCopy cameraEnabled:cameraEnabledCopy windowSize:width, height];
  if (!height)
  {
    [(RPRecordSession *)self presentAcknowledgmentWithMicrophoneEnabled:enabledCopy cameraEnabled:cameraEnabledCopy withHandler:handlerCopy];
    goto LABEL_16;
  }

  if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100067B34(height);
  }

  [(RPSession *)self setSessionState:3];
  if (handlerCopy)
  {
    goto LABEL_14;
  }

LABEL_16:
}

- (void)stopRecordingWithHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v11 = "[RPRecordSession stopRecordingWithHandler:]";
    v12 = 1024;
    v13 = 85;
    v14 = 2048;
    selfCopy = self;
    v16 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p stopping in session state %d", buf, 0x22u);
  }

  if ([(RPSession *)self sessionState]== 3 || ![(RPSession *)self sessionState]|| [(RPSession *)self sessionState]== 2)
  {
    v5 = [NSError _rpUserErrorForCode:-5829 userInfo:0];
    [(RPSession *)self reportSessionEndReason:v5];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0, v5);
    }
  }

  else
  {
    [(RPSession *)self setSessionState:2];
    v6 = +[RPCaptureManager sharedInstance];
    [v6 stopCaptureForDelegate:self];

    movieWriter = self->_movieWriter;
    if (movieWriter)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10005CE70;
      v8[3] = &unk_1000A1868;
      v8[4] = self;
      v9 = handlerCopy;
      [(RPMovieWriter *)movieWriter finishWritingWithHandler:v8];
    }

    else
    {
      [(RPSession *)self setSessionState:3];
      [(RPSession *)self reportSummaryEvent:-5824 recordedFileSize:0];
      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v11 = "[RPRecordSession stopRecordingWithHandler:]";
        v12 = 1024;
        v13 = 122;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d no movie writer instance when attempting to stop", buf, 0x12u);
      }

      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, 0, 0);
      }
    }
  }
}

- (void)pauseSession
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v6 = "[RPRecordSession pauseSession]";
    v7 = 1024;
    v8 = 131;
    v9 = 2048;
    selfCopy = self;
    v11 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p pausing in session state %d", buf, 0x22u);
  }

  if ([(RPSession *)self sessionState]== 1)
  {
    v3 = +[RPCaptureManager sharedInstance];
    [v3 stopCaptureForDelegate:self];

    [(RPMovieWriter *)self->_movieWriter notifyRecordingMayBeStopped];
    [(RPClientProtocol *)self->super._clientProxy recordingDidPause];
    v4.receiver = self;
    v4.super_class = RPRecordSession;
    [(RPSession *)&v4 pauseSession];
  }
}

- (void)discardInAppRecordingWithHandler:(id)handler
{
  handlerCopy = handler;
  if ([(RPSession *)self sessionState]== 3 && self->_currentRecordingURL)
  {
    v5 = +[NSFileManager defaultManager];
    currentRecordingURL = self->_currentRecordingURL;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10005D254;
    v7[3] = &unk_1000A1840;
    v7[4] = self;
    v8 = handlerCopy;
    [v5 _srRemoveFile:currentRecordingURL completion:v7];
  }
}

- (id)dispatchCaptureQueue
{
  if (qword_1000B6A70 != -1)
  {
    sub_100067C70();
  }

  v3 = qword_1000B6A68;

  return v3;
}

- (void)presentAcknowledgmentWithMicrophoneEnabled:(BOOL)enabled cameraEnabled:(BOOL)cameraEnabled withHandler:(id)handler
{
  cameraEnabledCopy = cameraEnabled;
  enabledCopy = enabled;
  handlerCopy = handler;
  if ([(RPSession *)self getAcknowledgementAlertResultsWithMicrophone:enabledCopy cameraEnabled:cameraEnabledCopy])
  {
    v9 = [RPMovieWriter alloc];
    [(RPSession *)self windowSize];
    v11 = v10;
    v13 = v12;
    outputPath = [(RPRecordSession *)self outputPath];
    v15 = [(RPMovieWriter *)v9 initWithWindowSize:outputPath outputPath:v11, v13];
    movieWriter = self->_movieWriter;
    self->_movieWriter = v15;

    v17 = self->_movieWriter;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10005D4D0;
    v19[3] = &unk_1000A1840;
    v19[4] = self;
    v20 = handlerCopy;
    [(RPMovieWriter *)v17 startWritingHandler:v19];
  }

  else
  {
    [(RPSession *)self setSessionState:3];
    if (handlerCopy)
    {
      v18 = [NSError _rpUserErrorForCode:-5801 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, v18);
    }
  }
}

- (void)didCaptureSampleWithType:(int)type withSampleBuffer:(opaqueCMSampleBuffer *)buffer withTransformFlags:(unint64_t)flags
{
  v7 = *&type;
  if ([(RPSession *)self sessionState]== 1)
  {
    [(RPSession *)self updateReportingSampleCount:v7];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10005D8BC;
    v9[3] = &unk_1000A2650;
    v10 = v7;
    v9[4] = self;
    v9[5] = flags;
    [(RPSession *)self updatePauseOffsetForSampleBuffer:buffer withSampleType:v7 handler:v9];
  }
}

- (void)captureDidFailWithError:(id)error
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005DA60;
  v5[3] = &unk_1000A29B0;
  errorCopy = error;
  selfCopy = self;
  v4 = errorCopy;
  [(RPRecordSession *)self stopRecordingWithHandler:v5];
}

- (void)handleResumeCaptureWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v18 = "[RPRecordSession handleResumeCaptureWithCompletionHandler:]";
    v19 = 1024;
    v20 = 277;
    v21 = 2048;
    selfCopy = self;
    v23 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p resuming in session state %d", buf, 0x22u);
  }

  self->super._sessionIsResuming = 1;
  [(RPMovieWriter *)self->_movieWriter notifyRecordingResumed];
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
  v15[2] = sub_10005DD28;
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
    v4 = "[RPRecordSession handleClientApplicationDidEnterBackground]";
    v5 = 1024;
    v6 = 300;
    v7 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session state %d", &v3, 0x18u);
  }

  [(RPRecordSession *)self pauseSession];
}

- (void)handleClientApplicationDidEnterForeground
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446722;
    v4 = "[RPRecordSession handleClientApplicationDidEnterForeground]";
    v5 = 1024;
    v6 = 307;
    v7 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session state %d", &v3, 0x18u);
  }

  if ([(RPSession *)self sessionState]== 4)
  {
    [(RPClientProtocol *)self->super._clientProxy shouldResumeSessionType:@"RPInAppRecording"];
  }
}

- (void)handleDisplayWarning
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v5 = "[RPRecordSession handleDisplayWarning]";
    v6 = 1024;
    v7 = 317;
    v8 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session state %d", buf, 0x18u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10005E174;
    v3[3] = &unk_1000A29D8;
    v3[4] = self;
    [(RPRecordSession *)self stopRecordingWithHandler:v3];
  }
}

- (void)handleDeviceLockedWarning
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446722;
    v4 = "[RPRecordSession handleDeviceLockedWarning]";
    v5 = 1024;
    v6 = 328;
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
    v5 = "[RPRecordSession handleDeviceRestrictionWarning]";
    v6 = 1024;
    v7 = 346;
    v8 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session state %d", buf, 0x18u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10005E474;
    v3[3] = &unk_1000A29D8;
    v3[4] = self;
    [(RPRecordSession *)self stopRecordingWithHandler:v3];
  }
}

- (void)handleResumeContextIDFailure
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v5 = "[RPRecordSession handleResumeContextIDFailure]";
    v6 = 1024;
    v7 = 358;
    v8 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d session state %d", buf, 0x18u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10005E698;
    v3[3] = &unk_1000A29D8;
    v3[4] = self;
    [(RPRecordSession *)self stopRecordingWithHandler:v3];
  }
}

@end