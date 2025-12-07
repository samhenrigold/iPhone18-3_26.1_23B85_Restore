@interface RPSystemRecordSession
- (CGSize)adjustedWindowSizeForSystemRecording;
- (id)dispatchCaptureQueue;
- (id)outputPath;
- (void)captureDidFailWithError:(id)error;
- (void)didCaptureSampleWithType:(int)type withSampleBuffer:(opaqueCMSampleBuffer *)buffer withTransformFlags:(unint64_t)flags;
- (void)handleDeviceLockedWarning;
- (void)handleDeviceRestrictionWarning;
- (void)handleIncomingCallWarning;
- (void)handleMemoryWarning;
- (void)handleResumeCaptureWithCompletionHandler:(id)handler;
- (void)handleResumeContextIDFailure;
- (void)handleSystemAlertStop;
- (void)handleTimerDidUpdate:(id)update;
- (void)pauseSession;
- (void)setCaptureMicrophoneEnabled:(BOOL)enabled;
- (void)startSystemRecordingWithMicrophoneEnabled:(BOOL)enabled cameraEnabled:(BOOL)cameraEnabled mixedRealityCameraEnabled:(BOOL)realityCameraEnabled contextID:(id)d windowSize:(CGSize)size handler:(id)handler;
- (void)stopSystemRecordingWithHandler:(id)handler;
- (void)stopSystemRecordingWithURLHandler:(id)handler;
@end

@implementation RPSystemRecordSession

- (id)outputPath
{
  v3 = +[NSFileManager defaultManager];
  bundleID = [(RPSession *)self bundleID];
  v5 = [v3 outputPath:2 bundleID:bundleID];

  return v5;
}

- (void)startSystemRecordingWithMicrophoneEnabled:(BOOL)enabled cameraEnabled:(BOOL)cameraEnabled mixedRealityCameraEnabled:(BOOL)realityCameraEnabled contextID:(id)d windowSize:(CGSize)size handler:(id)handler
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
    v49 = "[RPSystemRecordSession startSystemRecordingWithMicrophoneEnabled:cameraEnabled:mixedRealityCameraEnabled:contextID:windowSize:handler:]";
    v50 = 1024;
    v51 = 51;
    v52 = 2048;
    selfCopy = self;
    v54 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p starting in session state %d", buf, 0x22u);
  }

  height = [(RPSession *)self checkCaptureRequirementsWithMicrophoneEnabled:enabledCopy cameraEnabled:cameraEnabledCopy windowSize:width, height];
  if (height)
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100066300();
    }

    if ([height code] == -5805)
    {
      v18 = [NSError _rpUserErrorForCode:-5805 userInfo:0];
      [(RPSession *)self showAlertRecordingCaptureSessionWithError:v18];
    }

    [(RPSession *)self reportSessionEndReason:height];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, height);
    }
  }

  else
  {
    v47.receiver = self;
    v47.super_class = RPSystemRecordSession;
    [(RPSession *)&v47 startWithContextID:dCopy windowSize:width, height];
    if ([(RPSession *)self getAcknowledgementAlertResultsWithMicrophone:enabledCopy cameraEnabled:cameraEnabledCopy])
    {
      v19 = +[RPFeatureFlagUtility sharedInstance];
      systemBannerEnabled = [v19 systemBannerEnabled];

      if (systemBannerEnabled)
      {
        v21 = +[RPAngelProxy sharedInstance];
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_10004FF04;
        v46[3] = &unk_1000A2330;
        v46[4] = self;
        [v21 connectToAngelWithCompletionHandler:v46];
      }

      [(RPSystemRecordSession *)self adjustedWindowSizeForSystemRecording];
      v23 = v22;
      v25 = v24;
      v26 = +[RPFeatureFlagUtility sharedInstance];
      replayKitScreenRecordingHEVC = [v26 replayKitScreenRecordingHEVC];
      v28 = &AVVideoCodecTypeHEVC;
      if (!replayKitScreenRecordingHEVC)
      {
        v28 = &AVVideoCodecTypeH264;
      }

      v42 = *v28;

      self->_captureType = 0;
      v29 = +[RPFeatureFlagUtility sharedInstance];
      replayKitSDRToneMapping = [v29 replayKitSDRToneMapping];

      if (replayKitSDRToneMapping)
      {
        self->_captureType = 1;
      }

      v31 = +[RPFeatureFlagUtility sharedInstance];
      replayKitScreenRecordingHDR = [v31 replayKitScreenRecordingHDR];

      if (replayKitScreenRecordingHDR)
      {
        v33 = _SSHDRCaptureEnabled();
        if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          v49 = "[RPSystemRecordSession startSystemRecordingWithMicrophoneEnabled:cameraEnabled:mixedRealityCameraEnabled:contextID:windowSize:handler:]";
          v50 = 1024;
          v51 = 87;
          v52 = 1024;
          LODWORD(selfCopy) = v33;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d _SSHDRCaptureEnabled=%d", buf, 0x18u);
        }

        if (v33)
        {
          self->_captureType = 2;
          v34 = 1;
        }

        else
        {
          v34 = 0;
        }

        reportingAgent = [(RPSession *)self reportingAgent];
        [reportingAgent setIsHDR:v33];
      }

      else
      {
        v34 = 0;
      }

      v37 = [RPMovieWriter alloc];
      outputPath = [(RPSystemRecordSession *)self outputPath];
      v39 = [(RPMovieWriter *)v37 initWithWindowSize:outputPath outputPath:v42 videoCodecType:v34 assetWriterSetting:v23, v25];
      movieWriter = self->_movieWriter;
      self->_movieWriter = v39;

      v41 = self->_movieWriter;
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_100050068;
      v43[3] = &unk_1000A2628;
      v43[4] = self;
      v44 = handlerCopy;
      realityCameraEnabledCopy = realityCameraEnabled;
      [(RPMovieWriter *)v41 startWritingHandler:v43];
    }

    else
    {
      [(RPSession *)self setSessionState:3];
      if (handlerCopy)
      {
        v35 = [NSError _rpUserErrorForCode:-5803 userInfo:0];
        handlerCopy[2](handlerCopy, v35);
      }
    }
  }
}

- (void)stopSystemRecordingWithHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v17 = "[RPSystemRecordSession stopSystemRecordingWithHandler:]";
    v18 = 1024;
    v19 = 193;
    v20 = 2048;
    selfCopy = self;
    v22 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p stopping in session state %d", buf, 0x22u);
  }

  v5 = +[RPCaptureManager sharedInstance];
  [v5 stopCaptureForDelegate:self];

  if ([(RPSession *)self cameraEnabled])
  {
    v6 = +[RPAngelProxy sharedInstance];
    [v6 disableCameraPip];
  }

  movieWriter = self->_movieWriter;
  if (movieWriter)
  {
    sessionID = self->_sessionID;
    mixAudioTracks = self->_mixAudioTracks;
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1000506D4;
    v13 = &unk_1000A1840;
    selfCopy2 = self;
    v15 = handlerCopy;
    [(RPMovieWriter *)movieWriter finishWritingAndSaveToCameraRollWithSessionID:sessionID mixAudioTracks:mixAudioTracks handler:&v10];
  }

  else
  {
    [(RPSession *)self setSessionState:3];
    [(RPSession *)self reportSummaryEvent:-5824 recordedFileSize:0];
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v17 = "[RPSystemRecordSession stopSystemRecordingWithHandler:]";
      v18 = 1024;
      v19 = 229;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d no movie writer instance when attempting to stop", buf, 0x12u);
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }

  [(RPSession *)self clearSystemRecordingUI:v10];
  [(RPSession *)self checkAndPlaySystemSessionSound:0];
}

- (void)stopSystemRecordingWithURLHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v14 = "[RPSystemRecordSession stopSystemRecordingWithURLHandler:]";
    v15 = 1024;
    v16 = 245;
    v17 = 2048;
    selfCopy = self;
    v19 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p stopping in session state %d", buf, 0x22u);
  }

  v5 = +[RPCaptureManager sharedInstance];
  [v5 stopCaptureForDelegate:self];

  movieWriter = self->_movieWriter;
  if (movieWriter)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_100050A90;
    v10 = &unk_1000A1868;
    selfCopy2 = self;
    v12 = handlerCopy;
    [(RPMovieWriter *)movieWriter finishWritingWithHandler:&v7];
  }

  else
  {
    if (dword_1000B6840 <= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000664A4();
    }

    [(RPSession *)self setSessionState:3];
    [(RPSession *)self reportSummaryEvent:-5824 recordedFileSize:0];
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }
  }

  [(RPSession *)self clearSystemRecordingUI:v7];
  [(RPSession *)self checkAndPlaySystemSessionSound:0];
}

- (void)pauseSession
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v6 = "[RPSystemRecordSession pauseSession]";
    v7 = 1024;
    v8 = 287;
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

    [(RPClientProtocol *)self->super._clientProxy recordingDidPause];
    [(RPMovieWriter *)self->_movieWriter notifyRecordingMayBeStopped];
    v4.receiver = self;
    v4.super_class = RPSystemRecordSession;
    [(RPSession *)&v4 pauseSession];
  }
}

- (void)setCaptureMicrophoneEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(RPSession *)self setMicrophoneEnabled:?];
  if (enabledCopy)
  {
    self->_mixAudioTracks = 1;
    if ([(RPSession *)self sessionState]== 1 && enabledCopy)
    {
      v5 = +[RPCaptureManager sharedInstance];
      [v5 enableMicrophone];
    }
  }

  else
  {

    [(RPSession *)self sessionState];
  }
}

- (CGSize)adjustedWindowSizeForSystemRecording
{
  [(RPSession *)self windowSize];
  v3 = v2;
  v5 = v4;
  if (((v2 > v4) ^ +[RPHardwareUtility isNativeScreenOrientationPortrait]))
  {
    v6 = v5;
    v5 = v3;
    v3 = v6;
  }

  else if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446978;
    v10 = "[RPSystemRecordSession adjustedWindowSizeForSystemRecording]";
    v11 = 1024;
    v12 = 314;
    v13 = 2048;
    v14 = v5;
    v15 = 2048;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d rotating to window size width %.1f x height:%.1f", &v9, 0x26u);
  }

  v7 = v5;
  v8 = v3;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)didCaptureSampleWithType:(int)type withSampleBuffer:(opaqueCMSampleBuffer *)buffer withTransformFlags:(unint64_t)flags
{
  v7 = *&type;
  if ([(RPSession *)self sessionState]== 1)
  {
    [(RPSession *)self updateReportingSampleCount:v7];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10005104C;
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
  v5[2] = sub_1000511F0;
  v5[3] = &unk_1000A1348;
  errorCopy = error;
  selfCopy = self;
  v4 = errorCopy;
  [(RPSystemRecordSession *)self stopSystemRecordingWithHandler:v5];
}

- (id)dispatchCaptureQueue
{
  if (qword_1000B6A18 != -1)
  {
    sub_100066668();
  }

  v3 = qword_1000B6A10;

  return v3;
}

- (void)handleSystemAlertStop
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v5 = "[RPSystemRecordSession handleSystemAlertStop]";
    v6 = 1024;
    v7 = 371;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10005143C;
    v3[3] = &unk_1000A1BC0;
    v3[4] = self;
    [(RPSystemRecordSession *)self stopSystemRecordingWithHandler:v3];
  }
}

- (void)handleMemoryWarning
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v5 = "[RPSystemRecordSession handleMemoryWarning]";
    v6 = 1024;
    v7 = 383;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100051650;
    v3[3] = &unk_1000A1BC0;
    v3[4] = self;
    [(RPSystemRecordSession *)self stopSystemRecordingWithHandler:v3];
  }
}

- (void)handleIncomingCallWarning
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v5 = "[RPSystemRecordSession handleIncomingCallWarning]";
    v6 = 1024;
    v7 = 397;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10005189C;
    v3[3] = &unk_1000A1BC0;
    v3[4] = self;
    [(RPSystemRecordSession *)self stopSystemRecordingWithHandler:v3];
  }
}

- (void)handleDeviceLockedWarning
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v5 = "[RPSystemRecordSession handleDeviceLockedWarning]";
    v6 = 1024;
    v7 = 409;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100051AB0;
    v3[3] = &unk_1000A1BC0;
    v3[4] = self;
    [(RPSystemRecordSession *)self stopSystemRecordingWithHandler:v3];
  }
}

- (void)handleDeviceRestrictionWarning
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v5 = "[RPSystemRecordSession handleDeviceRestrictionWarning]";
    v6 = 1024;
    v7 = 421;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100051CC4;
    v3[3] = &unk_1000A1BC0;
    v3[4] = self;
    [(RPSystemRecordSession *)self stopSystemRecordingWithHandler:v3];
  }
}

- (void)handleTimerDidUpdate:(id)update
{
  updateCopy = update;
  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v4 = +[RPFeatureFlagUtility sharedInstance];
    systemBannerEnabled = [v4 systemBannerEnabled];

    if (systemBannerEnabled)
    {
      v6 = +[RPAngelProxy sharedInstance];
      [v6 updateTimer:updateCopy];
    }

    [(RPClientProtocol *)self->super._clientProxy recordingTimerDidUpdate:updateCopy];
  }
}

- (void)handleResumeCaptureWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v22 = "[RPSystemRecordSession handleResumeCaptureWithCompletionHandler:]";
    v23 = 1024;
    v24 = 446;
    v25 = 2048;
    selfCopy = self;
    v27 = 1024;
    sessionState = [(RPSession *)self sessionState];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p resuming in session state %d", buf, 0x22u);
  }

  v5 = +[RPFeatureFlagUtility sharedInstance];
  screenRecordingPassthroughCamera = [v5 screenRecordingPassthroughCamera];

  if (screenRecordingPassthroughCamera)
  {
    mixedRealityCameraEnabled = [(RPSession *)self mixedRealityCameraEnabled];
  }

  else
  {
    mixedRealityCameraEnabled = 1;
  }

  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v22 = "[RPSystemRecordSession handleResumeCaptureWithCompletionHandler:]";
    v23 = 1024;
    v24 = 453;
    v25 = 1024;
    LODWORD(selfCopy) = mixedRealityCameraEnabled;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d enableMixedRealityCamera=%d", buf, 0x18u);
  }

  self->super._sessionIsResuming = 1;
  [(RPMovieWriter *)self->_movieWriter notifyRecordingResumed];
  v8 = +[RPCaptureManager sharedInstance];
  microphoneEnabled = [(RPSession *)self microphoneEnabled];
  [(RPSession *)self windowSize];
  v11 = v10;
  v13 = v12;
  captureType = self->_captureType;
  contextID = [(RPSession *)self contextID];
  v16 = [NSArray arrayWithObject:contextID];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10005214C;
  v19[3] = &unk_1000A1840;
  v19[4] = self;
  v20 = handlerCopy;
  v17 = handlerCopy;
  LOBYTE(v18) = 1;
  [v8 startCaptureForDelegate:self forProcessID:0xFFFFFFFFLL shouldStartMicrophoneCapture:microphoneEnabled windowSize:captureType captureType:v16 contextIDs:mixedRealityCameraEnabled mixedRealityCamera:v11 systemCapture:v13 didStartHandler:{v18, v19}];
}

- (void)handleResumeContextIDFailure
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v5 = "[RPSystemRecordSession handleResumeContextIDFailure]";
    v6 = 1024;
    v7 = 474;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  if ([(RPSession *)self sessionState]== 1 || [(RPSession *)self sessionState]== 4)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10005239C;
    v3[3] = &unk_1000A1BC0;
    v3[4] = self;
    [(RPSystemRecordSession *)self stopSystemRecordingWithHandler:v3];
  }
}

@end