@interface MBTargetDeviceTransferEngine
- (BOOL)_checkFreeDiskSpace:(unint64_t)space preflightInfo:(id)info error:(id *)error;
- (BOOL)_handleCompletionWithError:(id *)error;
- (BOOL)_handleTimeout:(BOOL)timeout error:(id *)error;
- (BOOL)_removeDirectory:(id)directory error:(id *)error;
- (BOOL)_requestBackupWithSourceInfo:(id)info preflightInfo:(id)preflightInfo error:(id *)error;
- (BOOL)_restoreKeychainWithKeychainTransferResponse:(id)response error:(id *)error;
- (BOOL)_restoreWithSourceInfo:(id)info error:(id *)error;
- (BOOL)_setUpFileTransferSessionWithError:(id *)error;
- (BOOL)_waitForControlConnectionWithBlock:(id)block;
- (BOOL)cancel;
- (MBServiceManagerDeviceTransferDelegate)delegate;
- (MBTargetDeviceTransferEngine)initWithSessionInfo:(id)info;
- (id)_perform:(id)_perform;
- (id)_requestInitWithError:(id *)error;
- (id)_requestKeychainWithSourceInfo:(id)info error:(id *)error;
- (id)_requestPreflightWithSourceInfo:(id)info error:(id *)error;
- (id)_restoreEngineWithSourceInfo:(id)info;
- (void)_cancelDisconnectTimer;
- (void)_disableInfraWiFi;
- (void)_enableInfraWiFi;
- (void)_finishWithError:(id)error;
- (void)_handleFileTransferSessionProgress:(id)progress;
- (void)_postTransferProgressNotification:(id)notification;
- (void)_saveDeviceTransferInfo;
- (void)_sendDoneMessageWithError:(id)error;
- (void)_sendRestoreProgressMessageWithPercentage:(unint64_t)percentage;
- (void)_signalControlConnectionStarted;
- (void)_start;
- (void)_startDisconnectTimer;
- (void)_startTrackingPeerConnectionStatus;
- (void)_stopTrackingPeerConnectionStatus;
- (void)dealloc;
- (void)progressUpdatedWithPercentage:(double)percentage size:(unint64_t)size;
- (void)start;
- (void)startDataTransferWithPreflightInfo:(id)info completion:(id)completion;
- (void)startKeychainDataImportWithKeychainInfo:(id)info completion:(id)completion;
- (void)startKeychainDataTransferWithCompletion:(id)completion;
- (void)startPreflightWithCompletion:(id)completion;
- (void)updatedTotalProgress:(id)progress;
@end

@implementation MBTargetDeviceTransferEngine

- (MBTargetDeviceTransferEngine)initWithSessionInfo:(id)info
{
  infoCopy = info;
  if (!infoCopy)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine initWithSessionInfo:]", "MBTargetDeviceTransferEngine.m", 93, "sessionInfo");
  }

  v5 = infoCopy;
  fileTransferSession = [infoCopy fileTransferSession];
  if (!fileTransferSession)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine initWithSessionInfo:]", "MBTargetDeviceTransferEngine.m", 95, "fileTransferSession");
  }

  v7 = fileTransferSession;
  v8 = +[MBDriveSettingsContext defaultSettingsContext];
  v50.receiver = self;
  v50.super_class = MBTargetDeviceTransferEngine;
  v9 = [(MBEngine *)&v50 initWithSettingsContext:v8 debugContext:0 domainManager:0];
  if (v9)
  {
    v10 = objc_opt_class();
    Name = class_getName(v10);
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_UTILITY, 0);
    v14 = dispatch_queue_create(Name, v13);
    [(MBTargetDeviceTransferEngine *)v9 setQueue:v14];

    v15 = objc_opt_class();
    v16 = class_getName(v15);
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_attr_make_with_qos_class(v17, QOS_CLASS_UTILITY, 0);
    v19 = dispatch_queue_create(v16, v18);
    [(MBTargetDeviceTransferEngine *)v9 setSessionQueue:v19];

    v20 = objc_opt_class();
    class_getName(v20);
    v21 = os_transaction_create();
    [(MBTargetDeviceTransferEngine *)v9 setTransaction:v21];

    [(MBTargetDeviceTransferEngine *)v9 setFileTransferSession:v7];
    v22 = [@"/var/mobile/Library/Caches/Backup/DT" stringByAppendingString:@"/"];
    stringByStandardizingPath = [v22 stringByStandardizingPath];

    v24 = [NSURL fileURLWithPath:stringByStandardizingPath isDirectory:1];
    v25 = [[MBPeerTransferDrive alloc] initWithRootURL:v24 fileTransferSession:v7 uploadBatchSize:128 concurrentUploadBatchCount:1 concurrentOpenBatchCount:1];
    transferDrive = v9->_transferDrive;
    v9->_transferDrive = v25;

    v27 = [[MBDeviceTransferLocalDrive alloc] initWithPath:@"/var/mobile/Library/Caches/Backup/DT"];
    transferLocalDrive = v9->_transferLocalDrive;
    v9->_transferLocalDrive = v27;

    v29 = [MBDeviceTransferProgressModel alloc];
    v30 = objc_opt_new();
    v31 = [(MBDeviceTransferProgressModel *)v29 initWithEstimator:v30];
    progressModel = v9->_progressModel;
    v9->_progressModel = v31;

    progressModel = [(MBTargetDeviceTransferEngine *)v9 progressModel];
    [progressModel setDelegate:v9];

    v34 = dispatch_group_create();
    progressGroup = v9->_progressGroup;
    v9->_progressGroup = v34;

    v9->_lastRestoreProgressPercentage = -1;
    v36 = [[MBPowerAssertion alloc] initWithName:@"D2D" timeout:0.0];
    [(MBTargetDeviceTransferEngine *)v9 setPowerAssertion:v36];

    v49 = 0;
    v37 = [MBPersona personalPersonaWithError:&v49];
    v38 = v49;
    personalPersona = v9->_personalPersona;
    v9->_personalPersona = v37;

    if (!v9->_personalPersona)
    {
      v47 = +[NSAssertionHandler currentHandler];
      v48 = [NSString stringWithUTF8String:"[MBTargetDeviceTransferEngine initWithSessionInfo:]"];
      [v47 handleFailureInFunction:v48 file:@"MBTargetDeviceTransferEngine.m" lineNumber:118 description:{@"Unable to obtain personal persona: %@", v38}];
    }

    v40 = objc_opt_class();
    [MBPeerMessenger registerRequestClass:v40 responseClass:objc_opt_class() forTask:@"MBPeerTaskInit"];
    v41 = objc_opt_class();
    [MBPeerMessenger registerRequestClass:v41 responseClass:objc_opt_class() forTask:@"MBPeerTaskTransfer"];
    v42 = objc_opt_class();
    [MBPeerMessenger registerRequestClass:v42 responseClass:objc_opt_class() forTask:@"MBPeerTaskDone"];
    v43 = objc_opt_class();
    [MBPeerMessenger registerRequestClass:v43 responseClass:objc_opt_class() forTask:@"MBPeerTaskKeychain"];
    v44 = objc_opt_class();
    [MBPeerMessenger registerRequestClass:v44 responseClass:objc_opt_class() forTask:@"MBPeerTaskPreflight"];
    v45 = objc_opt_class();
    [MBPeerMessenger registerRequestClass:v45 responseClass:objc_opt_class() forTask:@"MBPeerTaskRestoreProgress"];
  }

  return v9;
}

- (void)dealloc
{
  transferDrive = [(MBTargetDeviceTransferEngine *)self transferDrive];
  [transferDrive stopListeningForFileTransfers];

  v4.receiver = self;
  v4.super_class = MBTargetDeviceTransferEngine;
  [(MBTargetDeviceTransferEngine *)&v4 dealloc];
}

- (void)_finishWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (atomic_exchange(&selfCopy->_finished, 1u))
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    if (![(MBEngine *)selfCopy isCanceled]|| ([MBError errorWithCode:202 format:@"Canceled"], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v7 = errorCopy;
    }

    [(MBTargetDeviceTransferEngine *)selfCopy setCompletionError:v7];
    objc_sync_exit(selfCopy);

    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = objc_opt_class();
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Finishing %@", buf, 0xCu);
      v9 = objc_opt_class();
      _MBLog(@"Df", "Finishing %@", v9);
    }

    [(MBTargetDeviceTransferEngine *)selfCopy startTime];
    v10 = 0.0;
    if (v11 > 0.0)
    {
      +[NSDate timeIntervalSinceReferenceDate];
      v13 = v12;
      [(MBTargetDeviceTransferEngine *)selfCopy startTime];
      v10 = v13 - v14;
    }

    transaction = [(MBTargetDeviceTransferEngine *)selfCopy transaction];
    [(MBTargetDeviceTransferEngine *)selfCopy setTransaction:0];
    deviceLockAssertion = [(MBTargetDeviceTransferEngine *)selfCopy deviceLockAssertion];
    [(MBTargetDeviceTransferEngine *)selfCopy setDeviceLockAssertion:0];
    [deviceLockAssertion drop];

    powerAssertion = [(MBTargetDeviceTransferEngine *)selfCopy powerAssertion];
    [(MBTargetDeviceTransferEngine *)selfCopy setPowerAssertion:0];
    [(MBTargetDeviceTransferEngine *)selfCopy _stopTrackingPeerConnectionStatus];
    sessionQueue = [(MBTargetDeviceTransferEngine *)selfCopy sessionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010F820;
    block[3] = &unk_1003BC0B0;
    block[4] = selfCopy;
    dispatch_async(sessionQueue, block);

    transferLocalDrive = [(MBTargetDeviceTransferEngine *)selfCopy transferLocalDrive];
    [transferLocalDrive invalidate];

    transferDrive = [(MBTargetDeviceTransferEngine *)selfCopy transferDrive];
    [transferDrive invalidate];

    if ([(MBTargetDeviceTransferEngine *)selfCopy connectionType]== 1 && [(MBTargetDeviceTransferEngine *)selfCopy chargeToken])
    {
      [(MBTargetDeviceTransferEngine *)selfCopy chargeToken];
      MBCancelChargeLimit();
      [(MBTargetDeviceTransferEngine *)selfCopy setChargeToken:0];
    }

    progressGroup = [(MBTargetDeviceTransferEngine *)selfCopy progressGroup];
    v22 = dispatch_get_global_queue(17, 0);
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10010F828;
    v35[3] = &unk_1003BC060;
    v23 = v7;
    v36 = v23;
    v37 = selfCopy;
    dispatch_group_async(progressGroup, v22, v35);

    v24 = +[MBDaemon sharedDaemon];
    [v24 holdWorkAssertion:a2];

    progressGroup2 = [(MBTargetDeviceTransferEngine *)selfCopy progressGroup];
    sessionQueue2 = [(MBTargetDeviceTransferEngine *)selfCopy sessionQueue];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10010F9F4;
    v30[3] = &unk_1003BD018;
    v30[4] = selfCopy;
    v31 = v23;
    v34 = v10;
    v32 = powerAssertion;
    v33 = transaction;
    v27 = transaction;
    v28 = powerAssertion;
    v29 = v23;
    dispatch_group_notify(progressGroup2, sessionQueue2, v30);
  }
}

- (BOOL)_handleCompletionWithError:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _handleCompletionWithError:]", "MBTargetDeviceTransferEngine.m", 230, "error");
  }

  if ([(MBEngine *)self isCanceled])
  {
    completionError = [MBError errorWithCode:202 format:@"Canceled"];
    if (completionError)
    {
LABEL_4:
      v6 = completionError;
      *error = completionError;
    }
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if ([(MBTargetDeviceTransferEngine *)selfCopy isFinished])
    {
      completionError = [(MBTargetDeviceTransferEngine *)selfCopy completionError];
      if (!completionError)
      {
        completionError = [MBError errorWithCode:1 format:@"Invalid state (finished)"];
      }
    }

    else
    {
      completionError = 0;
    }

    objc_sync_exit(selfCopy);

    if (completionError)
    {
      goto LABEL_4;
    }
  }

  return completionError == 0;
}

- (BOOL)cancel
{
  v16.receiver = self;
  v16.super_class = MBTargetDeviceTransferEngine;
  cancel = [(MBEngine *)&v16 cancel];
  if (!cancel)
  {
    transferLocalDrive = [(MBTargetDeviceTransferEngine *)self transferLocalDrive];
    [transferLocalDrive invalidate];

    transferDrive = [(MBTargetDeviceTransferEngine *)self transferDrive];
    [transferDrive invalidate];

    requestBackupSemaphore = [(MBTargetDeviceTransferEngine *)self requestBackupSemaphore];
    if (requestBackupSemaphore)
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Signaling backup request semaphore", v15, 2u);
        _MBLog(@"Df", "Signaling backup request semaphore");
      }

      dispatch_semaphore_signal(requestBackupSemaphore);
    }

    requestKeychainSemaphore = [(MBTargetDeviceTransferEngine *)self requestKeychainSemaphore];

    if (requestKeychainSemaphore)
    {
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Signaling keychain transfer request semaphore", v15, 2u);
        _MBLog(@"Df", "Signaling keychain transfer request semaphore");
      }

      dispatch_semaphore_signal(requestKeychainSemaphore);
    }

    requestPreflightSemaphore = [(MBTargetDeviceTransferEngine *)self requestPreflightSemaphore];

    if (requestPreflightSemaphore)
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Signaling keychain preflight request semaphore", v15, 2u);
        _MBLog(@"Df", "Signaling keychain preflight request semaphore");
      }

      dispatch_semaphore_signal(requestPreflightSemaphore);
    }

    requestInitSemaphore = [(MBTargetDeviceTransferEngine *)self requestInitSemaphore];

    if (requestInitSemaphore)
    {
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Signaling init request semaphore", v15, 2u);
        _MBLog(@"Df", "Signaling init request semaphore");
      }

      dispatch_semaphore_signal(requestInitSemaphore);
    }

    [(MBTargetDeviceTransferEngine *)self _signalControlConnectionStarted];
    [(MBTargetDeviceTransferEngine *)self _finishWithError:0];
  }

  return cancel;
}

- (id)_perform:(id)_perform
{
  _performCopy = _perform;
  v5 = objc_autoreleasePoolPush();
  if ([(MBEngine *)self isCanceled])
  {
    v6 = [MBError errorWithCode:202 format:@"Canceled"];
  }

  else
  {
    v10 = 0;
    v7 = _performCopy[2](_performCopy, &v10);
    v8 = v10;
    v6 = v8;
    if ((v7 & 1) == 0 && !v8)
    {
      __assert_rtn("[MBTargetDeviceTransferEngine _perform:]", "MBTargetDeviceTransferEngine.m", 291, "result || error");
    }
  }

  objc_autoreleasePoolPop(v5);

  return v6;
}

- (void)_startDisconnectTimer
{
  sessionQueue = [(MBTargetDeviceTransferEngine *)self sessionQueue];
  dispatch_assert_queue_V2(sessionQueue);

  [(MBTargetDeviceTransferEngine *)self _cancelDisconnectTimer];
  if (![(MBTargetDeviceTransferEngine *)self isFinished])
  {
    v4 = +[MBBehaviorOptions sharedOptions];
    d2dTransferDisconnectTimeout = [v4 d2dTransferDisconnectTimeout];

    sessionQueue2 = [(MBTargetDeviceTransferEngine *)self sessionQueue];
    v7 = d2dTransferDisconnectTimeout;
    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, sessionQueue2);

    v9 = dispatch_walltime(0, 1000000000 * v7);
    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
    objc_initWeak(&location, self);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100110370;
    handler[3] = &unk_1003BE6A0;
    objc_copyWeak(&v12, &location);
    dispatch_source_set_event_handler(v8, handler);
    [(MBTargetDeviceTransferEngine *)self setDisconnectTimer:v8];
    dispatch_resume(v8);
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Started the disconnect timer (%llus)", buf, 0xCu);
      _MBLog(@"Df", "Started the disconnect timer (%llus)", v7);
    }

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)_cancelDisconnectTimer
{
  sessionQueue = [(MBTargetDeviceTransferEngine *)self sessionQueue];
  dispatch_assert_queue_V2(sessionQueue);

  disconnectTimer = [(MBTargetDeviceTransferEngine *)self disconnectTimer];
  if (disconnectTimer)
  {
    [(MBTargetDeviceTransferEngine *)self setDisconnectTimer:0];
    dispatch_source_cancel(disconnectTimer);
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Canceled the disconnect timer", v6, 2u);
      _MBLog(@"Df", "Canceled the disconnect timer");
    }
  }
}

- (void)_signalControlConnectionStarted
{
  connectSemaphore = [(MBTargetDeviceTransferEngine *)self connectSemaphore];
  if (connectSemaphore)
  {
    v3 = connectSemaphore;
    dispatch_semaphore_signal(connectSemaphore);
    connectSemaphore = v3;
  }
}

- (BOOL)_waitForControlConnectionWithBlock:(id)block
{
  blockCopy = block;
  v5 = dispatch_semaphore_create(0);
  [(MBTargetDeviceTransferEngine *)self setConnectSemaphore:v5];
  blockCopy[2](blockCopy);

  v6 = +[MBBehaviorOptions sharedOptions];
  d2dTransferDisconnectTimeout = [v6 d2dTransferDisconnectTimeout];

  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v13 = d2dTransferDisconnectTimeout;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Waiting for up to %llus to allow a control connection to show up", buf, 0xCu);
    _MBLog(@"Df", "Waiting for up to %llus to allow a control connection to show up", d2dTransferDisconnectTimeout);
  }

  v9 = dispatch_time(0, 1000000000 * d2dTransferDisconnectTimeout);
  v10 = dispatch_semaphore_wait(v5, v9) == 0;
  [(MBTargetDeviceTransferEngine *)self setConnectSemaphore:0];

  return v10;
}

- (void)_startTrackingPeerConnectionStatus
{
  v2 = 0;
  atomic_compare_exchange_strong(&self->_trackPeerConnectionStatus, &v2, 1u);
  if (!v2)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      p_peerConnected = &self->_peerConnected;
      v6 = atomic_load(p_peerConnected);
      *buf = 67109120;
      v9 = v6 & 1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Started tracking the peer connection status (%d)", buf, 8u);
      v7 = atomic_load(p_peerConnected);
      _MBLog(@"Df", "Started tracking the peer connection status (%d)", v7 & 1);
    }
  }
}

- (void)_stopTrackingPeerConnectionStatus
{
  v2 = 1;
  atomic_compare_exchange_strong(&self->_trackPeerConnectionStatus, &v2, 0);
  if (v2 == 1)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      p_peerConnected = &self->_peerConnected;
      v6 = atomic_load(p_peerConnected);
      *buf = 67109120;
      v9 = v6 & 1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopped tracking the peer connection status (%d)", buf, 8u);
      v7 = atomic_load(p_peerConnected);
      _MBLog(@"Df", "Stopped tracking the peer connection status (%d)", v7 & 1);
    }
  }
}

- (void)_handleFileTransferSessionProgress:(id)progress
{
  progressCopy = progress;
  sessionQueue = [(MBTargetDeviceTransferEngine *)self sessionQueue];
  dispatch_assert_queue_V2(sessionQueue);

  if (![(MBTargetDeviceTransferEngine *)self isFinished])
  {
    delegate = [(MBTargetDeviceTransferEngine *)self delegate];
    -[MBTargetDeviceTransferEngine setConnectionType:](self, "setConnectionType:", +[MBDeviceTransferConnectionInfo connectionTypeFromLinkType:](MBDeviceTransferConnectionInfo, "connectionTypeFromLinkType:", [progressCopy linkType]));
    if ([progressCopy type] != 10)
    {
      if ([progressCopy type] != 11)
      {
LABEL_20:

        goto LABEL_21;
      }

      v7 = objc_opt_new();
      [v7 setConnectionState:2];
      [v7 setConnectionType:{-[MBTargetDeviceTransferEngine connectionType](self, "connectionType")}];
      v11 = atomic_load(&self->_trackPeerConnectionStatus);
      if (v11)
      {
        atomic_store(0, &self->_peerConnected);
        [(MBTargetDeviceTransferEngine *)self _startDisconnectTimer];
        connection = [(MBTargetDeviceTransferEngine *)self connection];
        [delegate connection:connection didUpdateDeviceTransferConnectionInfo:v7];
      }

LABEL_19:

      goto LABEL_20;
    }

    atomic_store(1u, &self->_peerConnectedOnce);
    [(MBTargetDeviceTransferEngine *)self _cancelDisconnectTimer];
    v7 = objc_opt_new();
    [v7 setConnectionState:1];
    [v7 setConnectionType:{-[MBTargetDeviceTransferEngine connectionType](self, "connectionType")}];
    if ([(MBTargetDeviceTransferEngine *)self connectionType]== 1)
    {
      v8 = MBSetChargeLimit(25);
      v9 = MBGetDefaultLog();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v10)
        {
          *buf = 67109120;
          v17 = 25;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Set charge limit to %d", buf, 8u);
          _MBLog(@"Df", "Set charge limit to %d", 25);
        }

        [(MBTargetDeviceTransferEngine *)self setChargeToken:v8];
      }

      else
      {
        if (v10)
        {
          *buf = 67109120;
          v17 = 25;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to set charge limit to %d", buf, 8u);
          _MBLog(@"Df", "Failed to set charge limit to %d", 25);
        }
      }
    }

    v13 = atomic_load(&self->_trackPeerConnectionStatus);
    if (v13)
    {
      atomic_store(1u, &self->_peerConnected);
    }

    else
    {
      v14 = 0;
      atomic_compare_exchange_strong(&self->_peerConnected, &v14, 1u);
      if (v14)
      {
LABEL_18:
        [(MBTargetDeviceTransferEngine *)self _signalControlConnectionStarted];
        goto LABEL_19;
      }
    }

    connection2 = [(MBTargetDeviceTransferEngine *)self connection];
    [delegate connection:connection2 didUpdateDeviceTransferConnectionInfo:v7];

    goto LABEL_18;
  }

LABEL_21:
}

- (BOOL)_setUpFileTransferSessionWithError:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _setUpFileTransferSessionWithError:]", "MBTargetDeviceTransferEngine.m", 406, "error");
  }

  fileTransferSession = [(MBTargetDeviceTransferEngine *)self fileTransferSession];
  if (!fileTransferSession)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _setUpFileTransferSessionWithError:]", "MBTargetDeviceTransferEngine.m", 408, "fileTransferSession");
  }

  transferDrive = [(MBTargetDeviceTransferEngine *)self transferDrive];
  if (!transferDrive)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _setUpFileTransferSessionWithError:]", "MBTargetDeviceTransferEngine.m", 410, "transferDrive");
  }

  v7 = +[MBBehaviorOptions sharedOptions];
  sessionQueue = [(MBTargetDeviceTransferEngine *)self sessionQueue];
  [fileTransferSession setDispatchQueue:sessionQueue];

  [fileTransferSession setFlags:{objc_msgSend(fileTransferSession, "flags") | 3}];
  if ([v7 d2dTransferUSBOnly])
  {
    [fileTransferSession setFlags:{objc_msgSend(fileTransferSession, "flags") | 0x30}];
    [fileTransferSession setFlags:{objc_msgSend(fileTransferSession, "flags") & 0xFFFFFFF3}];
  }

  if (([v7 d2dTransferUseCompression] & 1) == 0)
  {
    [fileTransferSession setFlags:{objc_msgSend(fileTransferSession, "flags") & 0xFFFFFEFF}];
  }

  v9 = [NSURL fileURLWithPath:@"/var/mobile/Library/Caches/Backup/RFReceiveTemp" isDirectory:1];
  [fileTransferSession setTemporaryDirectoryURL:v9];

  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = fileTransferSession;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting up the FT session: %@", buf, 0xCu);
    _MBLog(@"Df", "Setting up the FT session: %@", fileTransferSession);
  }

  objc_initWeak(buf, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100110FA8;
  v19[3] = &unk_1003BED78;
  objc_copyWeak(&v20, buf);
  [fileTransferSession setCompletionHandler:v19];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001110A8;
  v17[3] = &unk_1003BEDA0;
  objc_copyWeak(&v18, buf);
  [fileTransferSession setProgressHandler:v17];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001111CC;
  v16[3] = &unk_1003BEDC8;
  v16[4] = self;
  [MBPeerMessenger registerRequestHandler:v16 forTask:@"MBPeerTaskDone" session:fileTransferSession];
  [(MBTargetDeviceTransferEngine *)self _startTrackingPeerConnectionStatus];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10011138C;
  v14[3] = &unk_1003BC0B0;
  v11 = transferDrive;
  v15 = v11;
  v12 = [(MBTargetDeviceTransferEngine *)self _waitForControlConnectionWithBlock:v14];
  if (!v12)
  {
    *error = [MBError errorWithCode:15 format:@"Timed out"];
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);

  return v12;
}

- (void)_disableInfraWiFi
{
  v3 = +[MBBehaviorOptions sharedOptions];
  d2dTransferUSBOnly = [v3 d2dTransferUSBOnly];

  if (d2dTransferUSBOnly)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not disabling infra WiFi in USB-only mode", buf, 2u);
      _MBLog(@"Df", "Not disabling infra WiFi in USB-only mode");
    }
  }

  else
  {
    fileTransferSession = [(MBTargetDeviceTransferEngine *)self fileTransferSession];
    if (!fileTransferSession)
    {
      __assert_rtn("[MBTargetDeviceTransferEngine _disableInfraWiFi]", "MBTargetDeviceTransferEngine.m", 473, "fileTransferSession");
    }

    v5 = fileTransferSession;
    [fileTransferSession setFlags:[fileTransferSession flags]| 4];
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      flags = [v5 flags];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Disabled infra WiFi, flags:0x%x", buf, 8u);
      _MBLog(@"Df", "Disabled infra WiFi, flags:0x%x", [v5 flags]);
    }
  }
}

- (void)_enableInfraWiFi
{
  v3 = +[MBBehaviorOptions sharedOptions];
  d2dTransferUSBOnly = [v3 d2dTransferUSBOnly];

  if (d2dTransferUSBOnly)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not enabling infra WiFi in USB-only mode", buf, 2u);
      _MBLog(@"Df", "Not enabling infra WiFi in USB-only mode");
    }
  }

  else
  {
    fileTransferSession = [(MBTargetDeviceTransferEngine *)self fileTransferSession];
    if (!fileTransferSession)
    {
      __assert_rtn("[MBTargetDeviceTransferEngine _enableInfraWiFi]", "MBTargetDeviceTransferEngine.m", 484, "fileTransferSession");
    }

    v5 = fileTransferSession;
    [fileTransferSession setFlags:[fileTransferSession flags]& 0xFFFFFFFB];
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      flags = [v5 flags];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Enabled infra WiFi, flags:0x%x", buf, 8u);
      _MBLog(@"Df", "Enabled infra WiFi, flags:0x%x", [v5 flags]);
    }
  }
}

- (BOOL)_checkFreeDiskSpace:(unint64_t)space preflightInfo:(id)info error:(id *)error
{
  infoCopy = info;
  if (!infoCopy)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _checkFreeDiskSpace:preflightInfo:error:]", "MBTargetDeviceTransferEngine.m", 491, "preflightInfo");
  }

  if (!error)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _checkFreeDiskSpace:preflightInfo:error:]", "MBTargetDeviceTransferEngine.m", 492, "error");
  }

  v8 = infoCopy;
  v9 = [infoCopy sourceDeviceDataSize] + 0x1C0000000;
  if (v9 > space)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v14 = v9;
      v15 = 2048;
      v16 = 0x1C0000000;
      v17 = 2048;
      spaceCopy = space;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Insufficient free disk space - totalSize:%llu, reservedSize:%llu, freeDiskSpace:%llu", buf, 0x20u);
      _MBLog(@"E ", "Insufficient free disk space - totalSize:%llu, reservedSize:%llu, freeDiskSpace:%llu", v9, 0x1C0000000, space);
    }

    v11 = [MBError errorWithCode:106 format:@"Insufficient free disk space"];
    *error = v11;
    if (!v11)
    {
      __assert_rtn("[MBTargetDeviceTransferEngine _checkFreeDiskSpace:preflightInfo:error:]", "MBTargetDeviceTransferEngine.m", 502, "result || *error");
    }
  }

  return v9 <= space;
}

- (void)startPreflightWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine startPreflightWithCompletion:]", "MBTargetDeviceTransferEngine.m", 507, "completion");
  }

  v5 = completionCopy;
  v6 = MBFreeDiskSpace();
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Starting preflight (freeDiskSpace:%llu)", &buf, 0xCu);
    _MBLog(@"Df", "Starting preflight (freeDiskSpace:%llu)", v6);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x3032000000;
  v31 = sub_100111BA4;
  v32 = sub_100111BB4;
  v33 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = sub_100111BA4;
  v27[4] = sub_100111BB4;
  v28 = 0;
  v8 = dispatch_group_create();
  v9 = self->_transferSummary;
  dispatch_group_enter(v8);
  queue = [(MBTargetDeviceTransferEngine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100111BBC;
  block[3] = &unk_1003BD5B8;
  p_buf = &buf;
  block[4] = self;
  v23 = v8;
  v11 = v9;
  v24 = v11;
  v26 = v27;
  v12 = v8;
  dispatch_async(queue, block);

  v13 = dispatch_get_global_queue(17, 0);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100111E60;
  v16[3] = &unk_1003BEE68;
  v21 = &buf;
  v19 = v5;
  v20 = v27;
  v17 = v11;
  selfCopy = self;
  v14 = v5;
  v15 = v11;
  dispatch_group_notify(v12, v13, v16);

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&buf, 8);
}

- (void)startKeychainDataTransferWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine startKeychainDataTransferWithCompletion:]", "MBTargetDeviceTransferEngine.m", 597, "completion");
  }

  v5 = completionCopy;
  v6 = MBFreeDiskSpace();
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Starting keychain data transfer (freeDiskSpace:%llu)", &buf, 0xCu);
    _MBLog(@"Df", "Starting keychain data transfer (freeDiskSpace:%llu)", v6);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = sub_100111BA4;
  v31 = sub_100111BB4;
  v32 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_100111BA4;
  v26[4] = sub_100111BB4;
  v27 = 0;
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  v9 = self->_transferSummary;
  queue = [(MBTargetDeviceTransferEngine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001127E0;
  block[3] = &unk_1003BD5B8;
  p_buf = &buf;
  block[4] = self;
  v22 = v8;
  v11 = v9;
  v23 = v11;
  v25 = v26;
  v12 = v8;
  dispatch_async(queue, block);

  v13 = dispatch_get_global_queue(17, 0);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100112A70;
  v16[3] = &unk_1003BEE68;
  v20 = &buf;
  v16[4] = self;
  v17 = v11;
  v18 = v5;
  v19 = v26;
  v14 = v5;
  v15 = v11;
  dispatch_group_notify(v12, v13, v16);

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&buf, 8);
}

- (void)startKeychainDataImportWithKeychainInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  if (!infoCopy)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine startKeychainDataImportWithKeychainInfo:completion:]", "MBTargetDeviceTransferEngine.m", 650, "keychainInfo");
  }

  v8 = completionCopy;
  if (!completionCopy)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine startKeychainDataImportWithKeychainInfo:completion:]", "MBTargetDeviceTransferEngine.m", 651, "completion");
  }

  v9 = MBFreeDiskSpace();
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Starting keychain data import (freeDiskSpace:%llu)", &buf, 0xCu);
    _MBLog(@"Df", "Starting keychain data import (freeDiskSpace:%llu)", v9);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x3032000000;
  v31 = sub_100111BA4;
  v32 = sub_100111BB4;
  v33 = 0;
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  v12 = self->_transferSummary;
  queue = [(MBTargetDeviceTransferEngine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100112FC8;
  block[3] = &unk_1003BEEB8;
  block[4] = self;
  v25 = v11;
  p_buf = &buf;
  v26 = infoCopy;
  v14 = v12;
  v27 = v14;
  v15 = infoCopy;
  v16 = v11;
  dispatch_async(queue, block);

  v17 = dispatch_get_global_queue(17, 0);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100113370;
  v20[3] = &unk_1003BDBF0;
  v22 = v8;
  v23 = &buf;
  v21 = v14;
  v18 = v8;
  v19 = v14;
  dispatch_group_notify(v16, v17, v20);

  _Block_object_dispose(&buf, 8);
}

- (void)startDataTransferWithPreflightInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  if (!infoCopy)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine startDataTransferWithPreflightInfo:completion:]", "MBTargetDeviceTransferEngine.m", 711, "preflightInfo");
  }

  v8 = completionCopy;
  if (!completionCopy)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine startDataTransferWithPreflightInfo:completion:]", "MBTargetDeviceTransferEngine.m", 712, "completion");
  }

  v9 = MBFreeDiskSpace();
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Starting data transfer (freeDiskSpace:%llu)", &buf, 0xCu);
    _MBLog(@"Df", "Starting data transfer (freeDiskSpace:%llu)", v9);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x3032000000;
  v27 = sub_100111BA4;
  v28 = sub_100111BB4;
  v29 = 0;
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  queue = [(MBTargetDeviceTransferEngine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001137E0;
  block[3] = &unk_1003BEF08;
  block[4] = self;
  v21 = v11;
  v22 = infoCopy;
  p_buf = &buf;
  v24 = v9;
  v13 = infoCopy;
  v14 = v11;
  dispatch_async(queue, block);

  v15 = dispatch_get_global_queue(17, 0);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100113C84;
  v17[3] = &unk_1003BEF30;
  v18 = v8;
  v19 = &buf;
  v17[4] = self;
  v16 = v8;
  dispatch_group_notify(v14, v15, v17);

  _Block_object_dispose(&buf, 8);
}

- (BOOL)_removeDirectory:(id)directory error:(id *)error
{
  directoryCopy = directory;
  if (!error)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _removeDirectory:error:]", "MBTargetDeviceTransferEngine.m", 793, "error");
  }

  v6 = directoryCopy;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removing %@", buf, 0xCu);
    _MBLog(@"Df", "Removing %@", v6);
  }

  v8 = +[NSFileManager defaultManager];
  v9 = [v8 removeItemAtPath:v6 error:error];

  if (v9)
  {
    goto LABEL_5;
  }

  domain = [*error domain];
  if ([domain isEqualToString:NSCocoaErrorDomain])
  {
    code = [*error code];

    if (code == 4)
    {
LABEL_5:
      v10 = 1;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = *error;
    *buf = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to remove the directory at %@: %@", buf, 0x16u);
    _MBLog(@"E ", "Failed to remove the directory at %@: %@", v6, *error);
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (void)_start
{
  queue = [(MBTargetDeviceTransferEngine *)self queue];
  dispatch_assert_queue_V2(queue);

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1001144C8;
  v38[3] = &unk_1003BC400;
  v38[4] = self;
  v4 = [(MBTargetDeviceTransferEngine *)self _perform:v38];
  if (!v4)
  {
    persona = [(MBTargetDeviceTransferEngine *)self persona];
    userRestoreDirectory = [persona userRestoreDirectory];
    v37 = 0;
    v8 = [(MBTargetDeviceTransferEngine *)self _removeDirectory:userRestoreDirectory error:&v37];
    v5 = v37;

    if (v8)
    {
      userIncompleteRestoreDirectory = [persona userIncompleteRestoreDirectory];
      v36 = v5;
      v10 = [(MBTargetDeviceTransferEngine *)self _removeDirectory:userIncompleteRestoreDirectory error:&v36];
      v11 = v36;

      if ((v10 & 1) == 0)
      {
LABEL_13:
        [(MBTargetDeviceTransferEngine *)self _finishWithError:v11];
        v5 = v11;
        goto LABEL_15;
      }

      persona2 = [(MBTargetDeviceTransferEngine *)self persona];
      shouldRestoreToSharedVolume = [persona2 shouldRestoreToSharedVolume];

      if (!shouldRestoreToSharedVolume)
      {
        goto LABEL_8;
      }

      sharedRestoreDirectory = [persona sharedRestoreDirectory];
      v35 = v11;
      v15 = [(MBTargetDeviceTransferEngine *)self _removeDirectory:sharedRestoreDirectory error:&v35];
      v5 = v35;

      if (v15)
      {
        sharedIncompleteRestoreDirectory = [persona sharedIncompleteRestoreDirectory];
        v34 = v5;
        v17 = [(MBTargetDeviceTransferEngine *)self _removeDirectory:sharedIncompleteRestoreDirectory error:&v34];
        v11 = v34;

        if (v17)
        {
LABEL_8:
          transferDrive = [(MBTargetDeviceTransferEngine *)self transferDrive];
          [transferDrive cleanUpReceivedFilesDirectory];

          v33 = v11;
          LOBYTE(transferDrive) = [(MBTargetDeviceTransferEngine *)self _setUpFileTransferSessionWithError:&v33];
          v19 = v33;

          if (transferDrive)
          {
            progressModel = [(MBTargetDeviceTransferEngine *)self progressModel];
            [progressModel updateTotalProgressWithPhaseProgress:1 phase:0.0];

            v21 = self->_transferSummary;
            v27 = 0;
            v28 = &v27;
            v29 = 0x3032000000;
            v30 = sub_100111BA4;
            v31 = sub_100111BB4;
            v32 = 0;
            v23[0] = _NSConcreteStackBlock;
            v23[1] = 3221225472;
            v23[2] = sub_100114548;
            v23[3] = &unk_1003BEF58;
            v22 = v21;
            selfCopy = self;
            v26 = &v27;
            v24 = v22;
            v5 = [(MBTargetDeviceTransferEngine *)self _perform:v23];

            [(MBTargetDeviceTransferEngine *)self setPeerInitResponse:v28[5]];
            if (v5)
            {
              [(MBTargetDeviceTransferEngine *)self _finishWithError:v5];
            }

            _Block_object_dispose(&v27, 8);
          }

          else
          {
            [(MBTargetDeviceTransferEngine *)self _finishWithError:v19];
            v5 = v19;
          }

          goto LABEL_15;
        }

        goto LABEL_13;
      }
    }

    [(MBTargetDeviceTransferEngine *)self _finishWithError:v5];
LABEL_15:

    goto LABEL_16;
  }

  v5 = v4;
  [(MBTargetDeviceTransferEngine *)self _finishWithError:v4];
LABEL_16:
}

- (void)start
{
  v3 = objc_opt_new();
  transferSummary = self->_transferSummary;
  self->_transferSummary = v3;

  [(MBTargetDeviceTransferSummary *)self->_transferSummary trackEngineStart];
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = objc_opt_class();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "========== %@ starting", buf, 0xCu);
    v6 = objc_opt_class();
    _MBLog(@"Df", "========== %@ starting", v6);
  }

  MBLogDeviceProperties();
  +[NSDate timeIntervalSinceReferenceDate];
  [(MBTargetDeviceTransferEngine *)self setStartTime:?];
  powerAssertion = [(MBTargetDeviceTransferEngine *)self powerAssertion];
  [powerAssertion hold];

  queue = [(MBTargetDeviceTransferEngine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011473C;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)_handleTimeout:(BOOL)timeout error:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _handleTimeout:error:]", "MBTargetDeviceTransferEngine.m", 894, "error");
  }

  timeoutCopy = timeout;
  if ([(MBEngine *)self isCanceled])
  {
    v6 = @"Canceled";
    v7 = 202;
  }

  else
  {
    if (!timeoutCopy)
    {
      return 1;
    }

    v6 = @"Timed out";
    v7 = 15;
  }

  v8 = [MBError errorWithCode:v7 format:v6];
  if (v8)
  {
    v9 = v8;
    *error = v9;

    return 0;
  }

  return 1;
}

- (id)_requestInitWithError:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _requestInitWithError:]", "MBTargetDeviceTransferEngine.m", 913, "error");
  }

  fileTransferSession = [(MBTargetDeviceTransferEngine *)self fileTransferSession];
  if (!fileTransferSession)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _requestInitWithError:]", "MBTargetDeviceTransferEngine.m", 915, "fileTransferSession");
  }

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending the init request to the source", buf, 2u);
    _MBLog(@"Df", "Sending the init request to the source");
  }

  v7 = dispatch_semaphore_create(0);
  [(MBTargetDeviceTransferEngine *)self setRequestInitSemaphore:v7];
  if ([(MBEngine *)self isCanceled]&& ![(MBTargetDeviceTransferEngine *)self _handleTimeout:0 error:error])
  {
    v19 = 0;
    goto LABEL_34;
  }

  *buf = 0;
  v53 = buf;
  v54 = 0x3032000000;
  v55 = sub_100111BA4;
  v56 = sub_100111BB4;
  v57 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_100111BA4;
  v50 = sub_100111BB4;
  v51 = 0;
  v41 = MBDeviceUDID_Legacy();
  v40 = MBDeviceName();
  v39 = MBDeviceClass();
  v8 = MBBuildVersion();
  v9 = MBProductVersion();
  v10 = [[MBPeerInitRequest alloc] initWithTargetDeviceUDID:v41 deviceName:v40 deviceClass:v39 buildVersion:v8 productVersion:v9];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100114F38;
  v42[3] = &unk_1003BEF80;
  v44 = &v46;
  v45 = buf;
  v11 = v7;
  v43 = v11;
  [MBPeerMessenger sendRequest:v10 session:fileTransferSession responseHandler:v42];
  v12 = dispatch_time(0, 3600000000000);
  v13 = dispatch_semaphore_wait(v11, v12);
  [(MBTargetDeviceTransferEngine *)self setRequestInitSemaphore:0];
  if ([(MBTargetDeviceTransferEngine *)self _handleTimeout:v13 != 0 error:error])
  {
    if (*(v53 + 5))
    {
      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = objc_opt_class();
          v17 = *(v53 + 5);
          *v58 = 138412546;
          v59 = v16;
          v60 = 2112;
          v61 = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Request %@ failed: %@", v58, 0x16u);
        }

        v18 = objc_opt_class();
        _MBLog(@"E ", "Request %@ failed: %@", v18, *(v53 + 5));
      }

      v19 = 0;
      *error = *(v53 + 5);
      goto LABEL_33;
    }

    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v47[5];
      *v58 = 138412290;
      v59 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Received init response: %@", v58, 0xCu);
      _MBLog(@"Df", "Received init response: %@", v47[5]);
    }

    sourceProtocolVersion = [v47[5] sourceProtocolVersion];
    if (!sourceProtocolVersion)
    {
      __assert_rtn("[MBTargetDeviceTransferEngine _requestInitWithError:]", "MBTargetDeviceTransferEngine.m", 953, "sourceProtocolVersion");
    }

    sourceProductVersion = [v47[5] sourceProductVersion];
    if (!sourceProductVersion)
    {
      __assert_rtn("[MBTargetDeviceTransferEngine _requestInitWithError:]", "MBTargetDeviceTransferEngine.m", 955, "sourceProductVersion");
    }

    sourceRequiredProductVersion = [v47[5] sourceRequiredProductVersion];
    sourceDeviceClass = [v47[5] sourceDeviceClass];
    v37 = sourceProductVersion;
    if (!sourceDeviceClass)
    {
      __assert_rtn("[MBTargetDeviceTransferEngine _requestInitWithError:]", "MBTargetDeviceTransferEngine.m", 958, "sourceDeviceClass");
    }

    v25 = sourceDeviceClass;
    if ([sourceProtocolVersion unsignedLongValue] <= 1)
    {
      v27 = MBProductVersion();
      v28 = MBIsRestoreCompatible();

      if (v28)
      {
        v29 = MBDeviceClass();
        v30 = [v25 isEqualToString:v29];

        if (v30)
        {
          v31 = 0;
LABEL_32:
          v19 = v47[5];

          goto LABEL_33;
        }

        v26 = @"Cross-device data transfer is not supported";
        v32 = 1;
LABEL_28:
        v31 = [MBError errorWithCode:v32 format:v26];
        if (v31)
        {
          v33 = v47[5];
          v47[5] = 0;

          v34 = v31;
          *error = v31;
          v35 = MBGetDefaultLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *v58 = 138412290;
            v59 = v31;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Failed to handshake with the source: %@", v58, 0xCu);
            _MBLog(@"E ", "Failed to handshake with the source: %@", v31);
          }
        }

        goto LABEL_32;
      }

      v26 = @"Incompatible product version";
    }

    else
    {
      v26 = @"Incompatible protocol version";
    }

    v32 = 203;
    goto LABEL_28;
  }

  v19 = 0;
LABEL_33:

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(buf, 8);

LABEL_34:

  return v19;
}

- (id)_requestPreflightWithSourceInfo:(id)info error:(id *)error
{
  infoCopy = info;
  if (!infoCopy)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _requestPreflightWithSourceInfo:error:]", "MBTargetDeviceTransferEngine.m", 979, "sourceInfo");
  }

  if (!error)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _requestPreflightWithSourceInfo:error:]", "MBTargetDeviceTransferEngine.m", 980, "error");
  }

  v7 = infoCopy;
  fileTransferSession = [(MBTargetDeviceTransferEngine *)self fileTransferSession];
  if (!fileTransferSession)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _requestPreflightWithSourceInfo:error:]", "MBTargetDeviceTransferEngine.m", 982, "fileTransferSession");
  }

  v9 = +[NSDate date];
  [(MBTargetDeviceTransferEngine *)self setPreflightStartDate:v9];

  [(MBTargetDeviceTransferEngine *)self setPreflightDuration:0];
  v10 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  progressModel = [(MBTargetDeviceTransferEngine *)self progressModel];
  [progressModel updateTotalProgressWithPhaseProgress:2 phase:0.0];

  sourceDeviceName = [v7 sourceDeviceName];
  sourceDeviceUDID = [v7 sourceDeviceUDID];
  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = sourceDeviceName;
    *&buf[12] = 2112;
    *&buf[14] = sourceDeviceUDID;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Starting to preflight on %@ (%@)", buf, 0x16u);
    _MBLog(@"Df", "Starting to preflight on %@ (%@)", sourceDeviceName, sourceDeviceUDID);
  }

  v15 = dispatch_semaphore_create(0);
  [(MBTargetDeviceTransferEngine *)self setRequestPreflightSemaphore:v15];
  if ([(MBEngine *)self isCanceled]&& ![(MBTargetDeviceTransferEngine *)self _handleTimeout:0 error:error])
  {
    v25 = 0;
  }

  else
  {
    v28 = v10;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v44 = sub_100111BA4;
    v45 = sub_100111BB4;
    v46 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = sub_100111BA4;
    v37 = sub_100111BB4;
    v38 = 0;
    v16 = [[MBPeerPreflightRequest alloc] initWithFreeDiskSpace:MBFreeDiskSpace() purgeSize:0];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100115598;
    v29[3] = &unk_1003BEFA8;
    v31 = &v33;
    v32 = buf;
    v17 = v15;
    v30 = v17;
    [MBPeerMessenger sendRequest:v16 session:fileTransferSession responseHandler:v29];
    v18 = dispatch_time(0, 604800000000000);
    v19 = dispatch_semaphore_wait(v17, v18);
    [(MBTargetDeviceTransferEngine *)self setRequestPreflightSemaphore:0];
    if ([(MBTargetDeviceTransferEngine *)self _handleTimeout:v19 != 0 error:error])
    {
      if (*(*&buf[8] + 40))
      {
        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = v20;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = objc_opt_class();
            v23 = *(*&buf[8] + 40);
            *v39 = 138412546;
            v40 = v22;
            v41 = 2112;
            v42 = v23;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Request %@ failed: %@", v39, 0x16u);
          }

          v24 = objc_opt_class();
          _MBLog(@"E ", "Request %@ failed: %@", v24, *(*&buf[8] + 40));
        }

        v25 = 0;
        *error = *(*&buf[8] + 40);
      }

      else
      {
        [(MBTargetDeviceTransferEngine *)self setPreflightDuration:(clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) - v28) / 0x3B9ACA00];
        v26 = MBGetDefaultLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *v39 = 138412546;
          v40 = sourceDeviceName;
          v41 = 2112;
          v42 = sourceDeviceUDID;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Finished preflighting on %@ (%@)", v39, 0x16u);
          _MBLog(@"Df", "Finished preflighting on %@ (%@)", sourceDeviceName, sourceDeviceUDID);
        }

        v25 = v34[5];
      }
    }

    else
    {
      v25 = 0;
    }

    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(buf, 8);
  }

  return v25;
}

- (id)_requestKeychainWithSourceInfo:(id)info error:(id *)error
{
  infoCopy = info;
  if (!infoCopy)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _requestKeychainWithSourceInfo:error:]", "MBTargetDeviceTransferEngine.m", 1028, "sourceInfo");
  }

  if (!error)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _requestKeychainWithSourceInfo:error:]", "MBTargetDeviceTransferEngine.m", 1029, "error");
  }

  v7 = infoCopy;
  fileTransferSession = [(MBTargetDeviceTransferEngine *)self fileTransferSession];
  if (!fileTransferSession)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _requestKeychainWithSourceInfo:error:]", "MBTargetDeviceTransferEngine.m", 1031, "fileTransferSession");
  }

  sourceDeviceName = [v7 sourceDeviceName];
  sourceDeviceUDID = [v7 sourceDeviceUDID];
  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = sourceDeviceName;
    *&buf[12] = 2112;
    *&buf[14] = sourceDeviceUDID;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Starting to transfer the keychain data from %@ (%@)", buf, 0x16u);
    _MBLog(@"Df", "Starting to transfer the keychain data from %@ (%@)", sourceDeviceName, sourceDeviceUDID);
  }

  v26 = dispatch_semaphore_create(0);
  [(MBTargetDeviceTransferEngine *)self setRequestKeychainSemaphore:?];
  if ([(MBEngine *)self isCanceled]&& ![(MBTargetDeviceTransferEngine *)self _handleTimeout:0 error:error])
  {
    v23 = 0;
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v42 = sub_100111BA4;
    v43 = sub_100111BB4;
    v44 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = sub_100111BA4;
    v35 = sub_100111BB4;
    v36 = 0;
    errorCopy = error;
    v13 = objc_opt_new();
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100115B64;
    v27[3] = &unk_1003BEFD0;
    v29 = &v31;
    v30 = buf;
    v14 = v26;
    v28 = v14;
    v15 = v13;
    [MBPeerMessenger sendRequest:v13 session:fileTransferSession responseHandler:v27];
    v16 = dispatch_time(0, 3600000000000);
    v17 = dispatch_semaphore_wait(v14, v16);
    [(MBTargetDeviceTransferEngine *)self setRequestKeychainSemaphore:0];
    if ([(MBTargetDeviceTransferEngine *)self _handleTimeout:v17 != 0 error:errorCopy])
    {
      if (*(*&buf[8] + 40))
      {
        v18 = MBGetDefaultLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = v18;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = objc_opt_class();
            v21 = *(*&buf[8] + 40);
            *v37 = 138412546;
            v38 = v20;
            v39 = 2112;
            v40 = v21;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Request %@ failed: %@", v37, 0x16u);
          }

          v22 = objc_opt_class();
          _MBLog(@"E ", "Request %@ failed: %@", v22, *(*&buf[8] + 40));
        }

        v23 = 0;
        *errorCopy = *(*&buf[8] + 40);
      }

      else
      {
        v24 = MBGetDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *v37 = 138412546;
          v38 = sourceDeviceName;
          v39 = 2112;
          v40 = sourceDeviceUDID;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Finished transferring the keychain data from %@ (%@)", v37, 0x16u);
          _MBLog(@"Df", "Finished transferring the keychain data from %@ (%@)", sourceDeviceName, sourceDeviceUDID);
        }

        v23 = v32[5];
      }
    }

    else
    {
      v23 = 0;
    }

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(buf, 8);
  }

  return v23;
}

- (BOOL)_restoreKeychainWithKeychainTransferResponse:(id)response error:(id *)error
{
  responseCopy = response;
  if (!responseCopy)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _restoreKeychainWithKeychainTransferResponse:error:]", "MBTargetDeviceTransferEngine.m", 1070, "keybagTransferResponse");
  }

  if (!error)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _restoreKeychainWithKeychainTransferResponse:error:]", "MBTargetDeviceTransferEngine.m", 1071, "error");
  }

  v7 = responseCopy;
  keychainFileName = [responseCopy keychainFileName];
  keybagData = [v7 keybagData];
  passwordData = [v7 passwordData];
  transferDrive = [(MBTargetDeviceTransferEngine *)self transferDrive];
  v12 = [transferDrive fullURLForDriveRelativePath:keychainFileName];
  path = [v12 path];

  if (!path)
  {
    v28 = @"nil keychain file path";
LABEL_23:
    [MBError errorWithCode:1 format:v28];
    *error = v20 = 0;
    goto LABEL_28;
  }

  if (!keybagData)
  {
    v28 = @"nil keybag data";
    goto LABEL_23;
  }

  if (!passwordData)
  {
    v28 = @"nil password data";
    goto LABEL_23;
  }

  v14 = +[NSFileManager defaultManager];
  v35 = 0;
  v15 = [v14 attributesOfItemAtPath:path error:&v35];
  v16 = v35;

  v32 = v15;
  if (v15)
  {
    v31 = [v15 objectForKeyedSubscript:NSFileSize];
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      unsignedLongLongValue = [v31 unsignedLongLongValue];
      v19 = [keybagData length];
      *buf = 138412802;
      v37 = path;
      v38 = 2048;
      v39 = unsignedLongLongValue;
      v40 = 2048;
      v41 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Restoring the keychain from %@ (size:%llu, keybagData.length:%ld)", buf, 0x20u);
      _MBLog(@"Df", "Restoring the keychain from %@ (size:%llu, keybagData.length:%ld)", path, [v31 unsignedLongLongValue], objc_msgSend(keybagData, "length"));
    }

    v34 = v16;
    v20 = RestoreKeychainFromDisk(path, keybagData, passwordData, &v34);
    v21 = v34;

    if (!v20)
    {
      v22 = MBGetDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v37 = path;
        v38 = 2112;
        v39 = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to restore the keychain from %@: %@", buf, 0x16u);
        _MBLog(@"E ", "Failed to restore the keychain from %@: %@", path, v21);
      }

      v23 = v21;
      *error = v21;
    }

    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = path;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Removing the keychain temporary file at %@", buf, 0xCu);
      _MBLog(@"Df", "Removing the keychain temporary file at %@", path);
    }

    v25 = +[NSFileManager defaultManager];
    v33 = v21;
    v26 = [v25 removeItemAtPath:path error:&v33];
    v16 = v33;

    if ((v26 & 1) == 0)
    {
      v27 = MBGetDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v37 = path;
        v38 = 2112;
        v39 = v16;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to remove the keychain temporary file at %@: %@", buf, 0x16u);
        _MBLog(@"E ", "Failed to remove the keychain temporary file at %@: %@", path, v16);
      }
    }
  }

  else
  {
    v29 = MBGetDefaultLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v37 = path;
      v38 = 2112;
      v39 = v16;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to fetch the attributes for %@: %@", buf, 0x16u);
      _MBLog(@"E ", "Failed to fetch the attributes for %@: %@", path, v16);
    }

    [MBError errorWithCode:1 error:v16 format:@"Failed to fetch the attributes for the keychain temporary file"];
    *error = v20 = 0;
  }

LABEL_28:
  return v20;
}

- (BOOL)_requestBackupWithSourceInfo:(id)info preflightInfo:(id)preflightInfo error:(id *)error
{
  infoCopy = info;
  preflightInfoCopy = preflightInfo;
  if (!infoCopy)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _requestBackupWithSourceInfo:preflightInfo:error:]", "MBTargetDeviceTransferEngine.m", 1116, "sourceInfo");
  }

  if (!preflightInfoCopy)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _requestBackupWithSourceInfo:preflightInfo:error:]", "MBTargetDeviceTransferEngine.m", 1117, "preflightInfo");
  }

  if (!error)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _requestBackupWithSourceInfo:preflightInfo:error:]", "MBTargetDeviceTransferEngine.m", 1118, "error");
  }

  v43 = preflightInfoCopy;
  fileTransferSession = [(MBTargetDeviceTransferEngine *)self fileTransferSession];
  if (!fileTransferSession)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _requestBackupWithSourceInfo:preflightInfo:error:]", "MBTargetDeviceTransferEngine.m", 1120, "fileTransferSession");
  }

  v44 = self->_transferSummary;
  v10 = +[NSDate date];
  [(MBTargetDeviceTransferEngine *)self setFileTransferStartDate:v10];
  progressModel = [(MBTargetDeviceTransferEngine *)self progressModel];
  [progressModel setFileTransferStartDate:v10];

  progressModel2 = [(MBTargetDeviceTransferEngine *)self progressModel];
  [progressModel2 updateTotalProgressWithPhaseProgress:3 phase:0.0];

  sourceDeviceDataSize = [v43 sourceDeviceDataSize];
  sourceDeviceName = [infoCopy sourceDeviceName];
  [infoCopy sourceDeviceUDID];
  *&v41 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  [(MBTargetDeviceTransferSummary *)v44 trackDataTransferStart];
  +[NSDate timeIntervalSinceReferenceDate];
  v14 = v13;
  v15 = MBGetDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    *&buf[4] = sourceDeviceDataSize;
    *&buf[12] = 2112;
    *&buf[14] = sourceDeviceName;
    *&buf[22] = 2112;
    v59 = v41;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Starting to transfer data (%llu) from %@ (%@)", buf, 0x20u);
    _MBLog(@"Df", "Starting to transfer data (%llu) from %@ (%@)", sourceDeviceDataSize, sourceDeviceName, v41);
  }

  objc_initWeak(&location, self);
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100116928;
  v49[3] = &unk_1003BEFF8;
  objc_copyWeak(&v50, &location);
  transferDrive = [(MBTargetDeviceTransferEngine *)self transferDrive];
  [transferDrive setReceiveProgressHandler:v49];

  v17 = dispatch_semaphore_create(0);
  [(MBTargetDeviceTransferEngine *)self setRequestBackupSemaphore:v17];
  if ([(MBEngine *)self isCanceled]&& ![(MBTargetDeviceTransferEngine *)self _handleTimeout:0 error:error])
  {
    v30 = 0;
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v59 = sub_100111BA4;
    v60 = sub_100111BB4;
    v61 = 0;
    v40 = MBDeviceUDID_Legacy();
    v39 = [NSNumber numberWithUnsignedLongLong:MBFreeDiskSpace()];
    v18 = [[MBPeerTransferRequest alloc] initWithTargetDeviceUDID:v40 freeDiskSpace:v39];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1001169CC;
    v46[3] = &unk_1003BF020;
    v48 = buf;
    v19 = v17;
    v47 = v19;
    [MBPeerMessenger sendRequest:v18 session:fileTransferSession responseHandler:v46];
    v20 = dispatch_time(0, 604800000000000);
    v21 = dispatch_semaphore_wait(v19, v20);
    [(MBTargetDeviceTransferEngine *)self setRequestBackupSemaphore:0];
    transferDrive2 = [(MBTargetDeviceTransferEngine *)self transferDrive];
    [transferDrive2 setReceiveProgressHandler:0];

    progressModel3 = [(MBTargetDeviceTransferEngine *)self progressModel];
    progressInfo = [progressModel3 progressInfo];

    -[MBTargetDeviceTransferSummary trackDataTransferEndWithTotalByteCount:totalFileCount:bytesTransferred:filesTransferred:](v44, "trackDataTransferEndWithTotalByteCount:totalFileCount:bytesTransferred:filesTransferred:", [progressInfo totalByteCount], objc_msgSend(progressInfo, "totalFileCount"), objc_msgSend(progressInfo, "bytesTransferred"), objc_msgSend(progressInfo, "filesTransferred"));
    if ([(MBTargetDeviceTransferEngine *)self _handleTimeout:v21 != 0 error:error])
    {
      if (*(*&buf[8] + 40))
      {
        v25 = MBGetDefaultLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = v25;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = objc_opt_class();
            v28 = *(*&buf[8] + 40);
            *v52 = 138412546;
            v53 = v27;
            v54 = 2112;
            v55 = v28;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Request %@ failed: %@", v52, 0x16u);
          }

          v29 = objc_opt_class();
          _MBLog(@"E ", "Request %@ failed: %@", v29, *(*&buf[8] + 40));
        }

        v30 = 0;
        *error = *(*&buf[8] + 40);
      }

      else
      {
        +[NSDate timeIntervalSinceReferenceDate];
        v32 = v31;
        v33 = MBGetDefaultLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *v52 = 138412546;
          v53 = sourceDeviceName;
          v54 = 2112;
          v55 = *&v41;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Finished transferring data from %@ (%@)", v52, 0x16u);
          _MBLog(@"Df", "Finished transferring data from %@ (%@)", sourceDeviceName, v41);
        }

        v34 = MBGetDefaultLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = v32 - v14;
          *v52 = 134218496;
          v53 = sourceDeviceDataSize;
          v54 = 2048;
          v55 = v35;
          v56 = 2048;
          v57 = (sourceDeviceDataSize >> 20) / v35;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Total bytes transferred: %llu. Total time spent on transferring: %f. Average throughput: %.2f", v52, 0x20u);
          _MBLog(@"Df", "Total bytes transferred: %llu. Total time spent on transferring: %f. Average throughput: %.2f", sourceDeviceDataSize, v35, (sourceDeviceDataSize >> 20) / v35);
        }

        v36 = +[NSDate date];
        [(MBTargetDeviceTransferEngine *)self setFileTransferEndDate:v36];

        v30 = 1;
      }
    }

    else
    {
      v30 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  objc_destroyWeak(&v50);
  objc_destroyWeak(&location);

  return v30;
}

- (void)_saveDeviceTransferInfo
{
  v3 = objc_opt_new();
  v4 = MBBuildVersion();
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:@"BuildVersion"];
  }

  v27 = v4;
  v5 = [NSNumber numberWithInteger:[(MBTargetDeviceTransferEngine *)self connectionType]];
  [v3 setObject:v5 forKeyedSubscript:@"ConnectionType"];

  peerInitResponse = [(MBTargetDeviceTransferEngine *)self peerInitResponse];
  v7 = peerInitResponse;
  if (peerInitResponse)
  {
    sourceDeviceUDID = [peerInitResponse sourceDeviceUDID];
    if (sourceDeviceUDID)
    {
      [v3 setObject:sourceDeviceUDID forKeyedSubscript:@"SourceDeviceUDID"];
    }

    sourceProtocolVersion = [v7 sourceProtocolVersion];
    if (sourceProtocolVersion)
    {
      [v3 setObject:sourceProtocolVersion forKeyedSubscript:@"SourceDeviceProtocolVersion"];
    }

    sourceBuildVersion = [v7 sourceBuildVersion];
    if (sourceBuildVersion)
    {
      [v3 setObject:sourceBuildVersion forKeyedSubscript:@"SourceDeviceBuildVersion"];
    }
  }

  progressModel = [(MBTargetDeviceTransferEngine *)self progressModel];
  progressInfo = [progressModel progressInfo];

  if (progressInfo)
  {
    v13 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [progressInfo bytesTransferred]);
    [v3 setObject:v13 forKeyedSubscript:@"BytesTransferred"];

    v14 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [progressInfo filesTransferred]);
    [v3 setObject:v14 forKeyedSubscript:@"FilesTransferred"];
  }

  preflightStartDate = [(MBTargetDeviceTransferEngine *)self preflightStartDate];
  preflightDuration = [(MBTargetDeviceTransferEngine *)self preflightDuration];
  if (preflightDuration)
  {
    v17 = [NSNumber numberWithUnsignedLongLong:preflightDuration];
    [v3 setObject:v17 forKeyedSubscript:@"PreflightDuration"];
  }

  if (preflightStartDate)
  {
    [v3 setObject:preflightStartDate forKeyedSubscript:@"PreflightStartDate"];
  }

  fileTransferStartDate = [(MBTargetDeviceTransferEngine *)self fileTransferStartDate];
  fileTransferEndDate = [(MBTargetDeviceTransferEngine *)self fileTransferEndDate];
  v20 = fileTransferEndDate;
  if (fileTransferStartDate && fileTransferEndDate)
  {
    [fileTransferEndDate timeIntervalSinceDate:fileTransferStartDate];
    v22 = v21;
    [v3 setObject:fileTransferStartDate forKeyedSubscript:@"FileTransferStartDate"];
    v23 = [NSNumber numberWithLongLong:v22];
    [v3 setObject:v23 forKeyedSubscript:@"FileTransferDuration"];
  }

  restoreStartDate = [(MBTargetDeviceTransferEngine *)self restoreStartDate];
  if (restoreStartDate)
  {
    [v3 setObject:restoreStartDate forKeyedSubscript:@"RestoreStartDate"];
  }

  v25 = [MBPersona personalPersonaWithError:0];
  [v25 setPreferencesValue:v3 forKey:@"DeviceTransferInfo"];
  v26 = MBGetDefaultLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v29 = @"DeviceTransferInfo";
    v30 = 2112;
    v31 = v3;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Saved %{public}@: %@", buf, 0x16u);
    _MBLog(@"Df", "Saved %{public}@: %@", @"DeviceTransferInfo", v3);
  }
}

- (BOOL)_restoreWithSourceInfo:(id)info error:(id *)error
{
  infoCopy = info;
  if (!infoCopy)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _restoreWithSourceInfo:error:]", "MBTargetDeviceTransferEngine.m", 1232, "sourceInfo");
  }

  if (!error)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _restoreWithSourceInfo:error:]", "MBTargetDeviceTransferEngine.m", 1233, "error");
  }

  v7 = infoCopy;
  v8 = self->_transferSummary;
  [(MBTargetDeviceTransferSummary *)v8 trackRestoreStart];
  sourceDeviceName = [v7 sourceDeviceName];
  sourceDeviceUDID = [v7 sourceDeviceUDID];
  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = sourceDeviceName;
    v22 = 2112;
    v23 = sourceDeviceUDID;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Starting to restore data from %@ (%@)", buf, 0x16u);
    _MBLog(@"Df", "Starting to restore data from %@ (%@)", sourceDeviceName, sourceDeviceUDID);
  }

  v12 = +[NSDate date];
  [(MBTargetDeviceTransferEngine *)self setRestoreStartDate:v12];
  progressModel = [(MBTargetDeviceTransferEngine *)self progressModel];
  [progressModel setRestoreStartDate:v12];

  [(MBTargetDeviceTransferEngine *)self progressUpdatedWithPercentage:0 size:0.0];
  [(MBTargetDeviceTransferEngine *)self _saveDeviceTransferInfo];
  v14 = [(MBTargetDeviceTransferEngine *)self _restoreEngineWithSourceInfo:v7];
  restore = [v14 restore];
  [(MBTargetDeviceTransferSummary *)v8 trackRestoreEnd];
  v16 = MBGetDefaultLog();
  v17 = v16;
  if (restore)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v21 = sourceDeviceName;
      v22 = 2112;
      v23 = sourceDeviceUDID;
      v24 = 2112;
      v25 = restore;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to restore data from %@ (%@): %@", buf, 0x20u);
      _MBLog(@"E ", "Failed to restore data from %@ (%@): %@", sourceDeviceName, sourceDeviceUDID, restore);
    }

    v18 = restore;
    *error = restore;
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = sourceDeviceName;
      v22 = 2112;
      v23 = sourceDeviceUDID;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Finished restoring data from %@ (%@)", buf, 0x16u);
      _MBLog(@"Df", "Finished restoring data from %@ (%@)", sourceDeviceName, sourceDeviceUDID);
    }
  }

  return restore == 0;
}

- (id)_restoreEngineWithSourceInfo:(id)info
{
  infoCopy = info;
  v5 = +[MBDriveSettingsContext defaultSettingsContext];
  [v5 setIsDeviceTransfer:1];
  v6 = MBAllDrivePlugins();
  [v5 setPlugins:v6];

  sourceDeviceUDID = [infoCopy sourceDeviceUDID];
  [v5 setSourceIdentifier:sourceDeviceUDID];

  v8 = MBDeviceUDID_Legacy();
  [v5 setTargetIdentifier:v8];

  transferLocalDrive = [(MBTargetDeviceTransferEngine *)self transferLocalDrive];
  if (!transferLocalDrive)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _restoreEngineWithSourceInfo:]", "MBTargetDeviceTransferEngine.m", 1275, "self.transferLocalDrive");
  }

  transferLocalDrive2 = [(MBTargetDeviceTransferEngine *)self transferLocalDrive];
  [v5 setDrive:transferLocalDrive2];

  v11 = +[MBCKManager sharedInstance];
  [v5 setManager:v11];

  [v5 setApplicationIDs:0];
  v12 = [[MBDriveRestoreEngine alloc] initWithSettingsContext:v5 debugContext:0];
  progress = [(MBDriveRestoreEngine *)v12 progress];
  [progress setDelegate:self];

  return v12;
}

- (void)_sendDoneMessageWithError:(id)error
{
  errorCopy = error;
  fileTransferSession = [(MBTargetDeviceTransferEngine *)self fileTransferSession];
  if (!fileTransferSession)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _sendDoneMessageWithError:]", "MBTargetDeviceTransferEngine.m", 1288, "fileTransferSession");
  }

  v6 = fileTransferSession;
  v7 = atomic_load(&self->_peerConnectedOnce);
  if (v7 & 1) == 0 || (v8 = atomic_load(&self->_receivedDoneMessage), (v8) || (v9 = atomic_load(&self->_sentDoneMessage), (v9) || (atomic_exchange(&self->_sendingDoneMessage, 1u))
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = objc_opt_class();
      _os_log_impl(&_mh_execute_header, &v10->super, OS_LOG_TYPE_DEFAULT, "Not sending %@", buf, 0xCu);
      v11 = objc_opt_class();
      _MBLog(@"Df", "Not sending %@", v11);
    }
  }

  else
  {
    v10 = self->_transferSummary;
    [(MBTargetDeviceTransferSummary *)v10 trackDoneStart];
    v12 = [[MBPeerDoneRequest alloc] initWithError:errorCopy];
    v13 = dispatch_semaphore_create(0);
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_100117598;
    v23 = &unk_1003BF048;
    v14 = v12;
    v24 = v14;
    selfCopy = self;
    v15 = v13;
    v26 = v15;
    [MBPeerMessenger sendRequest:v14 session:v6 responseHandler:&v20];
    v16 = dispatch_time(0, 30000000000);
    if (dispatch_semaphore_wait(v15, v16))
    {
      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        *buf = 138412290;
        v28 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Timed out waiting for %@", buf, 0xCu);
        v19 = objc_opt_class();
        _MBLog(@"E ", "Timed out waiting for %@", v19, v20, v21, v22, v23, v24, selfCopy);
      }

      [(MBTargetDeviceTransferEngine *)self _stopTrackingPeerConnectionStatus];
    }

    [(MBTargetDeviceTransferSummary *)v10 trackDoneEnd];
  }
}

- (void)_sendRestoreProgressMessageWithPercentage:(unint64_t)percentage
{
  fileTransferSession = [(MBTargetDeviceTransferEngine *)self fileTransferSession];
  if (!fileTransferSession)
  {
    __assert_rtn("[MBTargetDeviceTransferEngine _sendRestoreProgressMessageWithPercentage:]", "MBTargetDeviceTransferEngine.m", 1326, "fileTransferSession");
  }

  v6 = fileTransferSession;
  v7 = atomic_load(&self->_peerConnectedOnce);
  if ((v7 & 1) != 0 && (v8 = atomic_load(&self->_receivedDoneMessage), (v8 & 1) == 0))
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (selfCopy->_lastRestoreProgressPercentage == percentage)
    {
      objc_sync_exit(selfCopy);
    }

    else
    {
      selfCopy->_lastRestoreProgressPercentage = percentage;
      objc_sync_exit(selfCopy);

      if (percentage <= 0x64 && (atomic_exchange(&selfCopy->_sendingRestoreProgressMessage, 1u) & 1) == 0)
      {
        progressGroup = [(MBTargetDeviceTransferEngine *)selfCopy progressGroup];
        v13 = dispatch_get_global_queue(17, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001179A8;
        block[3] = &unk_1003BDB10;
        percentageCopy = percentage;
        v15 = v6;
        v16 = selfCopy;
        dispatch_group_async(progressGroup, v13, block);

        v9 = v15;
        goto LABEL_12;
      }
    }

    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:
      *buf = 138412290;
      v19 = objc_opt_class();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not sending %@", buf, 0xCu);
      v11 = objc_opt_class();
      _MBLog(@"Df", "Not sending %@", v11);
    }
  }

LABEL_12:
}

- (void)_postTransferProgressNotification:(id)notification
{
  notificationCopy = notification;
  v4 = +[MBNotificationCenter sharedNotificationCenter];
  v5 = kMBTargetDeviceTransferProgressNotification;
  [notificationCopy progress];
  [v4 postNotification:v5 ifStateChanged:(v6 * 100.0)];

  v9 = +[MBNotificationCenter sharedNotificationCenter];
  v7 = kMBTargetDeviceTransferMinutesRemainingNotification;
  minutesRemaining = [notificationCopy minutesRemaining];

  [v9 postNotification:v7 ifStateChanged:minutesRemaining];
}

- (void)updatedTotalProgress:(id)progress
{
  progressCopy = progress;
  if (![(MBEngine *)self isCanceled])
  {
    progressGroup = [(MBTargetDeviceTransferEngine *)self progressGroup];
    sessionQueue = [(MBTargetDeviceTransferEngine *)self sessionQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100117E8C;
    v7[3] = &unk_1003BC060;
    v7[4] = self;
    v8 = progressCopy;
    dispatch_group_async(progressGroup, sessionQueue, v7);
  }
}

- (void)progressUpdatedWithPercentage:(double)percentage size:(unint64_t)size
{
  progressModel = [(MBTargetDeviceTransferEngine *)self progressModel];
  [progressModel updateTotalProgressWithPhaseProgress:4 phase:percentage / 100.0];

  [(MBTargetDeviceTransferEngine *)self _sendRestoreProgressMessageWithPercentage:percentage];
}

- (MBServiceManagerDeviceTransferDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end