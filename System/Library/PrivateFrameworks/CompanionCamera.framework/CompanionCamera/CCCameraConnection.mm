@interface CCCameraConnection
- (BOOL)_burstSupport;
- (BOOL)_supportsMomentCapture;
- (BOOL)_supportsZoomMagnification;
- (BOOL)_toggleCameraDeviceSupport;
- (BOOL)_zoomSupport;
- (BOOL)isPreviewConnected;
- (CCCameraConnection)init;
- (CCCameraConnectionDelegate)delegate;
- (double)_currentZoomMagnification;
- (double)_maximumZoomMagnification;
- (double)_minimumZoomMagnification;
- (double)_zoomAmount;
- (id)_significantZoomMagnifications;
- (id)_supportedCaptureDevices;
- (id)_supportedCaptureModes;
- (int64_t)_captureDevice;
- (int64_t)_captureMode;
- (int64_t)_currentOrientation;
- (int64_t)_flashMode;
- (int64_t)_flashSupport;
- (int64_t)_hdrMode;
- (int64_t)_hdrSupport;
- (int64_t)_irisMode;
- (int64_t)_irisSupport;
- (int64_t)_sharedLibraryMode;
- (int64_t)_sharedLibrarySupport;
- (void)_checkin;
- (void)_closePreview;
- (void)_connect;
- (void)_disconnect;
- (void)_handleInterruption;
- (void)_handleInvalidation;
- (void)_openPreview;
- (void)_performPreviewStateTransitionsIfNeeded;
- (void)_zoomTimerFired;
- (void)burstCaptureDidStop;
- (void)burstCaptureNumberOfPhotosDidChange:(unint64_t)change;
- (void)burstCaptureWillStart;
- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidBegin:(id)begin;
- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidEnd:(id)end;
- (void)cameraViewfinderSession:(id)session didCapturePhotoWithStatus:(int)status thumbnailData:(id)data timestamp:(id *)timestamp;
- (void)cameraViewfinderSession:(id)session previewStreamDidCloseWithStatus:(int)status;
- (void)cameraViewfinderSessionPreviewStreamDidOpen:(id)open;
- (void)captureDeviceDidChange;
- (void)captureDeviceDidChange:(int64_t)change;
- (void)countdownCanceled;
- (void)dealloc;
- (void)didPauseCaptureTimerWithPauseTime:(id)time;
- (void)didResumeCaptureTimerWithNewStartTime:(id)time;
- (void)didStartCaptureTimer;
- (void)didStopCapture;
- (void)didUpdateShallowDepthOfFieldStatus:(int64_t)status;
- (void)didUpdateStereoCaptureStatus:(int64_t)status;
- (void)didUpdateThumbnailWithData:(id)data isVideo:(BOOL)video;
- (void)flashModeDidChange;
- (void)hdrModeDidChange;
- (void)irisModeDidChange;
- (void)modeSelected:(int64_t)selected;
- (void)open;
- (void)sharedLibraryModeDidChange;
- (void)sharedLibrarySupportDidChange;
- (void)switchedOrientation:(int64_t)orientation;
- (void)takePhotoWithCountdown:(unint64_t)countdown;
- (void)willStartCapturing;
- (void)xpc_beginBurstCaptureWithReply:(id)reply;
- (void)xpc_cancelCountdown;
- (void)xpc_endBurstCaptureWithReply:(id)reply;
- (void)xpc_ensureSwitchedToOneOfSupportedCaptureModes:(id)modes reply:(id)reply;
- (void)xpc_fetchCurrentStateIncludingSupportedCaptureModes:(BOOL)modes reply:(id)reply;
- (void)xpc_pauseCaptureWithReply:(id)reply;
- (void)xpc_resumeCaptureWithReply:(id)reply;
- (void)xpc_setCaptureDevice:(int64_t)device reply:(id)reply;
- (void)xpc_setCaptureMode:(int64_t)mode reply:(id)reply;
- (void)xpc_setFlashMode:(int64_t)mode;
- (void)xpc_setFocusPoint:(id)point;
- (void)xpc_setHDRMode:(int64_t)mode;
- (void)xpc_setIrisMode:(int64_t)mode;
- (void)xpc_setPreviewEndpoint:(id)endpoint;
- (void)xpc_setSharedLibraryMode:(int64_t)mode;
- (void)xpc_setZoom:(float)zoom reply:(id)reply;
- (void)xpc_setZoomMagnification:(float)magnification reply:(id)reply;
- (void)xpc_startCaptureWithMode:(int64_t)mode reply:(id)reply;
- (void)xpc_stopCaptureWithReply:(id)reply;
- (void)xpc_suspend;
- (void)xpc_toggleCameraDevice;
- (void)zoomDidChange:(double)change;
@end

@implementation CCCameraConnection

- (CCCameraConnection)init
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v20 = "[CCCameraConnection init]";
    v21 = 2080;
    v22 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v23 = 1024;
    v24 = 89;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  v18.receiver = self;
  v18.super_class = CCCameraConnection;
  v4 = [(CCCameraConnection *)&v18 init];
  if (v4)
  {
    v5 = objc_alloc_init(CCCameraConnectionInternal);
    v6 = *(v4 + 1);
    *(v4 + 1) = v5;

    [*(v4 + 1) setParent:v4];
    *(v4 + 25) = -1082130432;
    *(v4 + 112) = 0;
    objc_initWeak(buf, v4);
    v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    v8 = *(v4 + 11);
    *(v4 + 11) = v7;

    v9 = *(v4 + 11);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __26__CCCameraConnection_init__block_invoke;
    handler[3] = &unk_278DEF0C0;
    objc_copyWeak(&v17, buf);
    dispatch_source_set_event_handler(v9, handler);
    dispatch_resume(*(v4 + 11));
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __26__CCCameraConnection_init__block_invoke_2;
    v14[3] = &unk_278DEF0E8;
    objc_copyWeak(&v15, buf);
    notify_register_dispatch("com.apple.companion.camera.device-connected", v4 + 26, MEMORY[0x277D85CD0], v14);

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __26__CCCameraConnection_init__block_invoke_6;
    v12[3] = &unk_278DEF0E8;
    objc_copyWeak(&v13, buf);
    notify_register_dispatch("com.apple.companion.camera.device-disconnected", v4 + 27, MEMORY[0x277D85CD0], v12);

    v10 = +[CCCameraConnectionReliabilityMonitor sharedInstance];
    [v10 incrementInstanceCount];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  return v4;
}

- (void)_connect
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v31 = "[CCCameraConnection _connect]";
    v32 = 2080;
    v33 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v34 = 1024;
    v35 = 147;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  if (!self->_remoteViewfinder)
  {
    v4 = +[ViewfinderReliability sharedInstance];
    [v4 logEvent:8];

    cameraViewfinder = [MEMORY[0x277CF3B78] cameraViewfinder];
    remoteViewfinder = self->_remoteViewfinder;
    self->_remoteViewfinder = cameraViewfinder;

    [(FigCameraViewfinder *)self->_remoteViewfinder setDelegate:self queue:MEMORY[0x277D85CD0]];
    v7 = self->_remoteViewfinder;
    v28 = *MEMORY[0x277CF3B48];
    v29 = &unk_2856ED530;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    [(FigCameraViewfinder *)v7 startWithOptions:v8];

    v9 = +[ViewfinderReliability sharedInstance];
    [v9 logEvent:9];
  }

  if (!self->_xpc)
  {
    v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2856EE960];
    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    [v10 setClasses:v13 forSelector:sel_xpc_ensureSwitchedToOneOfSupportedCaptureModes_reply_ argumentIndex:0 ofReply:0];

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    [v10 setClasses:v16 forSelector:sel_xpc_fetchCurrentStateIncludingSupportedCaptureModes_reply_ argumentIndex:0 ofReply:1];

    v17 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.companion.camera" options:4096];
    xpc = self->_xpc;
    self->_xpc = v17;

    [(NSXPCConnection *)self->_xpc setExportedInterface:v10];
    [(NSXPCConnection *)self->_xpc setExportedObject:self->_internal];
    v19 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2856F05E8];
    [(NSXPCConnection *)self->_xpc setRemoteObjectInterface:v19];

    objc_initWeak(&location, self);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __30__CCCameraConnection__connect__block_invoke;
    v25[3] = &unk_278DEF0C0;
    objc_copyWeak(&v26, &location);
    [(NSXPCConnection *)self->_xpc setInterruptionHandler:v25];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __30__CCCameraConnection__connect__block_invoke_2;
    v23[3] = &unk_278DEF0C0;
    objc_copyWeak(&v24, &location);
    [(NSXPCConnection *)self->_xpc setInvalidationHandler:v23];
    [(NSXPCConnection *)self->_xpc resume];
    v20 = nanocamera_log_control();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = self->_xpc;
      *buf = 138412290;
      v31 = v21;
      _os_log_impl(&dword_243CBC000, v20, OS_LOG_TYPE_DEFAULT, "Resumed xpc connection %@", buf, 0xCu);
    }

    [(CCCameraConnection *)self _checkin];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  v22 = +[CCCameraConnectionReliabilityMonitor sharedInstance];
  [v22 didConnect];
}

- (void)open
{
  if (self->_remoteViewfinderSession)
  {
    self->_remoteViewfinderSessionState = 1;
  }

  [(CCCameraConnection *)self _connect];
}

- (void)_checkin
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = "[CCCameraConnection _checkin]";
    v7 = 2080;
    v8 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v9 = 1024;
    v10 = 196;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v5, 0x1Cu);
  }

  v4 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global];
  [v4 checkin];
}

void __30__CCCameraConnection__connect__block_invoke_2(uint64_t a1)
{
  v2 = nanocamera_log_control();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243CBC000, v2, OS_LOG_TYPE_DEFAULT, "invalidation", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__CCCameraConnection__connect__block_invoke_91;
  block[3] = &unk_278DEF0C0;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v4);
}

void __26__CCCameraConnection_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _zoomTimerFired];
}

void __26__CCCameraConnection_init__block_invoke_2(uint64_t a1)
{
  v2 = nanocamera_log_control();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_243CBC000, v2, OS_LOG_TYPE_DEFAULT, "Device connected", v6, 2u);
  }

  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 applicationState];

  if (v4 != 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _connect];
  }
}

void __26__CCCameraConnection_init__block_invoke_6(uint64_t a1)
{
  v2 = nanocamera_log_control();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_243CBC000, v2, OS_LOG_TYPE_DEFAULT, "Device disconnected", v6, 2u);
  }

  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 applicationState];

  if (v4 != 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _disconnect];
  }
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v7 = "[CCCameraConnection dealloc]";
    v8 = 2080;
    v9 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v10 = 1024;
    v11 = 124;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  [(CCCameraConnection *)self close];
  notify_cancel(self->_deviceDisconnectedNotificationToken);
  notify_cancel(self->_deviceConnectedNotificationToken);
  v4 = +[CCCameraConnectionReliabilityMonitor sharedInstance];
  [v4 decrementInstanceCount];

  v5.receiver = self;
  v5.super_class = CCCameraConnection;
  [(CCCameraConnection *)&v5 dealloc];
}

void __30__CCCameraConnection__connect__block_invoke(uint64_t a1)
{
  v2 = nanocamera_log_control();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243CBC000, v2, OS_LOG_TYPE_DEFAULT, "interruption", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__CCCameraConnection__connect__block_invoke_90;
  block[3] = &unk_278DEF0C0;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v4);
}

void __30__CCCameraConnection__connect__block_invoke_90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInterruption];
}

void __30__CCCameraConnection__connect__block_invoke_91(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInvalidation];
}

void __30__CCCameraConnection__checkin__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)_disconnect
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[CCCameraConnection _disconnect]";
    v13 = 2080;
    v14 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v15 = 1024;
    v16 = 216;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v11, 0x1Cu);
  }

  if (self->_burstInProgress)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      v7 = [v6 cameraConnectionEndBurstCapture:self];

      if (v7)
      {
        self->_burstInProgress = 0;
      }
    }
  }

  xpc = self->_xpc;
  if (xpc)
  {
    [(NSXPCConnection *)xpc setInvalidationHandler:0];
    [(NSXPCConnection *)self->_xpc setInterruptionHandler:0];
    [(NSXPCConnection *)self->_xpc invalidate];
    [(CCCameraConnection *)self _handleInvalidation];
  }

  previewEndpoint = self->_previewEndpoint;
  self->_previewEndpoint = 0;

  [(CCCameraConnection *)self _closePreview];
  v10 = +[CCCameraConnectionReliabilityMonitor sharedInstance];
  [v10 didDisconnect];
}

- (void)didUpdateThumbnailWithData:(id)data isVideo:(BOOL)video
{
  videoCopy = video;
  dataCopy = data;
  v7 = nanocamera_log_control();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(CCCameraConnection *)self didUpdateThumbnailWithData:v7 isVideo:v8, v9, v10, v11, v12, v13];
  }

  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v14 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_96];
    [v14 xpc_didUpdateThumbnailWithData:dataCopy isVideo:videoCopy];
  }
}

void __57__CCCameraConnection_didUpdateThumbnailWithData_isVideo___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)burstCaptureWillStart
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = "[CCCameraConnection burstCaptureWillStart]";
    v7 = 2080;
    v8 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v9 = 1024;
    v10 = 264;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v5, 0x1Cu);
  }

  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v4 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_98];
    [v4 xpc_burstCaptureWillStart];
  }
}

void __43__CCCameraConnection_burstCaptureWillStart__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)burstCaptureNumberOfPhotosDidChange:(unint64_t)change
{
  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v5 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_100];
    [v5 xpc_burstCaptureNumberOfPhotosDidChange:change];
  }
}

void __58__CCCameraConnection_burstCaptureNumberOfPhotosDidChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)burstCaptureDidStop
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = "[CCCameraConnection burstCaptureDidStop]";
    v7 = 2080;
    v8 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v9 = 1024;
    v10 = 286;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v5, 0x1Cu);
  }

  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v4 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_102];
    [v4 xpc_burstCaptureDidStop];
  }
}

void __41__CCCameraConnection_burstCaptureDidStop__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)willStartCapturing
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[CCCameraConnection willStartCapturing]";
    v9 = 2080;
    v10 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v11 = 1024;
    v12 = 297;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v7, 0x1Cu);
  }

  self->_capturing = 1;
  captureStartDate = self->_captureStartDate;
  self->_captureStartDate = 0;

  self->_capturingPaused = 0;
  capturePauseDate = self->_capturePauseDate;
  self->_capturePauseDate = 0;

  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v6 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_104];
    [v6 xpc_willStartCapturing];
  }
}

void __40__CCCameraConnection_willStartCapturing__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)didStartCaptureTimer
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[CCCameraConnection didStartCaptureTimer]";
    v10 = 2080;
    v11 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v12 = 1024;
    v13 = 314;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v8, 0x1Cu);
  }

  date = [MEMORY[0x277CBEAA8] date];
  captureStartDate = self->_captureStartDate;
  self->_captureStartDate = date;

  self->_capturingPaused = 0;
  capturePauseDate = self->_capturePauseDate;
  self->_capturePauseDate = 0;

  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v7 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_107];
    [v7 xpc_didStartCaptureTimerWithDate:self->_captureStartDate];
  }
}

void __42__CCCameraConnection_didStartCaptureTimer__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)didPauseCaptureTimerWithPauseTime:(id)time
{
  v14 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  v6 = nanocamera_log_control();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[CCCameraConnection didPauseCaptureTimerWithPauseTime:]";
    v10 = 2080;
    v11 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v12 = 1024;
    v13 = 329;
    _os_log_impl(&dword_243CBC000, v6, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v8, 0x1Cu);
  }

  self->_capturingPaused = 1;
  objc_storeStrong(&self->_capturePauseDate, time);
  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v7 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_109];
    [v7 xpc_didPauseCaptureTimerWithDate:self->_capturePauseDate];
  }
}

void __56__CCCameraConnection_didPauseCaptureTimerWithPauseTime___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)didResumeCaptureTimerWithNewStartTime:(id)time
{
  v15 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  v6 = nanocamera_log_control();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[CCCameraConnection didResumeCaptureTimerWithNewStartTime:]";
    v11 = 2080;
    v12 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v13 = 1024;
    v14 = 343;
    _os_log_impl(&dword_243CBC000, v6, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v9, 0x1Cu);
  }

  objc_storeStrong(&self->_captureStartDate, time);
  self->_capturingPaused = 0;
  capturePauseDate = self->_capturePauseDate;
  self->_capturePauseDate = 0;

  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v8 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_111];
    [v8 xpc_didResumeCaptureTimerWithDate:timeCopy];
  }
}

void __60__CCCameraConnection_didResumeCaptureTimerWithNewStartTime___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)didStopCapture
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[CCCameraConnection didStopCapture]";
    v9 = 2080;
    v10 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v11 = 1024;
    v12 = 358;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v7, 0x1Cu);
  }

  self->_capturing = 0;
  captureStartDate = self->_captureStartDate;
  self->_captureStartDate = 0;

  self->_capturingPaused = 0;
  capturePauseDate = self->_capturePauseDate;
  self->_capturePauseDate = 0;

  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v6 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_113];
    [v6 xpc_didStopCapture];
  }
}

void __36__CCCameraConnection_didStopCapture__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)captureDeviceDidChange:(int64_t)change
{
  v5 = nanocamera_log_control();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CCCameraConnection captureDeviceDidChange:];
  }

  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v6 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_115];
    [v6 xpc_captureDeviceDidChange:change];
  }
}

void __45__CCCameraConnection_captureDeviceDidChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)modeSelected:(int64_t)selected
{
  v5 = nanocamera_log_control();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CCCameraConnection modeSelected:];
  }

  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v6 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_117];
    [v6 xpc_captureModeSelected:selected];
  }
}

void __35__CCCameraConnection_modeSelected___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (int64_t)_currentOrientation
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained cameraConnectionOrientation:self];

  return v4;
}

- (void)switchedOrientation:(int64_t)orientation
{
  v5 = nanocamera_log_control();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(CCCameraConnection *)orientation switchedOrientation:v5];
  }

  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v6 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_119];
    [v6 xpc_orientationChanged:orientation];
  }
}

void __42__CCCameraConnection_switchedOrientation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)countdownCanceled
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = "[CCCameraConnection countdownCanceled]";
    v7 = 2080;
    v8 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v9 = 1024;
    v10 = 412;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v5, 0x1Cu);
  }

  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v4 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_121];
    [v4 xpc_countdownCanceled];
  }
}

void __39__CCCameraConnection_countdownCanceled__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)zoomDidChange:(double)change
{
  if (vabdd_f64(change, self->_lastSentZoomAmount) >= 0.05 && self->_previewEndpoint)
  {
    changeCopy = change;
    self->_pendingZoomAmount = changeCopy;
    zoomTimer = self->_zoomTimer;
    v6 = dispatch_time(0, 50000000);

    dispatch_source_set_timer(zoomTimer, v6, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  }
}

- (void)_zoomTimerFired
{
  dispatch_source_set_timer(self->_zoomTimer, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    self->_lastSentZoomAmount = self->_pendingZoomAmount;
    v4 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_123];
    *&v3 = self->_pendingZoomAmount;
    [v4 xpc_zoomChanged:v3];
  }
}

void __37__CCCameraConnection__zoomTimerFired__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)didUpdateShallowDepthOfFieldStatus:(int64_t)status
{
  self->_shallowDepthOfFieldStatus = status;
  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v5 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_125];
    [v5 xpc_didUpdateShallowDepthOfFieldStatus:status];
  }
}

void __57__CCCameraConnection_didUpdateShallowDepthOfFieldStatus___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)didUpdateStereoCaptureStatus:(int64_t)status
{
  self->_stereoCaptureStatus = status;
  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v5 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_127];
    [v5 xpc_didUpdateStereoCaptureStatus:status];
  }
}

void __51__CCCameraConnection_didUpdateStereoCaptureStatus___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)captureDeviceDidChange
{
  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v3 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_129];
    [v3 xpc_captureDeviceDidChange];
  }
}

void __44__CCCameraConnection_captureDeviceDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)flashModeDidChange
{
  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v3 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_131];
    [v3 xpc_flashModeDidChange:{-[CCCameraConnection _flashMode](self, "_flashMode")}];
  }
}

void __40__CCCameraConnection_flashModeDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)hdrModeDidChange
{
  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v3 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_133];
    [v3 xpc_hdrModeDidChange:{-[CCCameraConnection _hdrMode](self, "_hdrMode")}];
  }
}

void __38__CCCameraConnection_hdrModeDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)irisModeDidChange
{
  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v3 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_135];
    [v3 xpc_irisModeDidChange:{-[CCCameraConnection _irisMode](self, "_irisMode")}];
  }
}

void __39__CCCameraConnection_irisModeDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)sharedLibrarySupportDidChange
{
  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v3 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_137];
    [v3 xpc_sharedLibrarySupportDidChange:{-[CCCameraConnection _sharedLibrarySupport](self, "_sharedLibrarySupport")}];
  }
}

void __51__CCCameraConnection_sharedLibrarySupportDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)sharedLibraryModeDidChange
{
  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v3 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_139];
    [v3 xpc_sharedLibraryModeDidChange:{-[CCCameraConnection _sharedLibraryMode](self, "_sharedLibraryMode")}];
  }
}

void __48__CCCameraConnection_sharedLibraryModeDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)xpc_ensureSwitchedToOneOfSupportedCaptureModes:(id)modes reply:(id)reply
{
  v20 = *MEMORY[0x277D85DE8];
  modesCopy = modes;
  replyCopy = reply;
  v8 = nanocamera_log_control();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v15 = "[CCCameraConnection xpc_ensureSwitchedToOneOfSupportedCaptureModes:reply:]";
    v16 = 2080;
    v17 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v18 = 1024;
    v19 = 533;
    _os_log_impl(&dword_243CBC000, v8, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__CCCameraConnection_xpc_ensureSwitchedToOneOfSupportedCaptureModes_reply___block_invoke;
  block[3] = &unk_278DEF130;
  block[4] = self;
  v12 = modesCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = modesCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __75__CCCameraConnection_xpc_ensureSwitchedToOneOfSupportedCaptureModes_reply___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _captureMode];
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:v2];
  LOBYTE(v3) = [v3 containsObject:v4];

  if ((v3 & 1) == 0)
  {
    v5 = [*(a1 + 40) mutableCopy];
    v6 = [*(a1 + 32) _supportedCaptureModes];
    [v5 intersectOrderedSet:v6];

    if ([v5 count])
    {
      v7 = [v5 firstObject];
      v8 = [v7 integerValue];

      v9 = nanocamera_log_control();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = _ncCaptureModeFromCCCaptureMode(v8);
        if (v10 < 0xD && ((0x1FABu >> v10) & 1) != 0)
        {
          v11 = off_278DEF290[v10];
        }

        else
        {
          v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v10];
        }

        *buf = 138412290;
        v17 = v11;
        _os_log_impl(&dword_243CBC000, v9, OS_LOG_TYPE_DEFAULT, "Forcing mode to %@", buf, 0xCu);
      }

      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        v14 = objc_loadWeakRetained((*(a1 + 32) + 160));
        [v14 cameraConnection:*(a1 + 32) setCaptureMode:v8];
      }
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)takePhotoWithCountdown:(unint64_t)countdown
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = nanocamera_log_control();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v8 = "[CCCameraConnection takePhotoWithCountdown:]";
    v9 = 2080;
    v10 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v11 = 1024;
    v12 = 559;
    _os_log_impl(&dword_243CBC000, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__CCCameraConnection_takePhotoWithCountdown___block_invoke;
  v6[3] = &unk_278DEF158;
  v6[4] = self;
  v6[5] = countdown;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __45__CCCameraConnection_takePhotoWithCountdown___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  [WeakRetained cameraConnection:*(a1 + 32) takePhotoWithCountdown:*(a1 + 40)];
}

- (void)xpc_beginBurstCaptureWithReply:(id)reply
{
  v15 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v5 = nanocamera_log_control();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v10 = "[CCCameraConnection xpc_beginBurstCaptureWithReply:]";
    v11 = 2080;
    v12 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v13 = 1024;
    v14 = 568;
    _os_log_impl(&dword_243CBC000, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__CCCameraConnection_xpc_beginBurstCaptureWithReply___block_invoke;
  v7[3] = &unk_278DEF180;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __53__CCCameraConnection_xpc_beginBurstCaptureWithReply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 160));
    v5 = [v4 cameraConnectionBeginBurstCapture:*(a1 + 32)];

    if (v5)
    {
      *(*(a1 + 32) + 112) = 1;
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (void)xpc_endBurstCaptureWithReply:(id)reply
{
  v15 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v5 = nanocamera_log_control();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v10 = "[CCCameraConnection xpc_endBurstCaptureWithReply:]";
    v11 = 2080;
    v12 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v13 = 1024;
    v14 = 586;
    _os_log_impl(&dword_243CBC000, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__CCCameraConnection_xpc_endBurstCaptureWithReply___block_invoke;
  v7[3] = &unk_278DEF180;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __51__CCCameraConnection_xpc_endBurstCaptureWithReply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 160));
    v5 = [v4 cameraConnectionEndBurstCapture:*(a1 + 32)];

    if (v5)
    {
      *(*(a1 + 32) + 112) = 0;
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (void)xpc_setCaptureDevice:(int64_t)device reply:(id)reply
{
  v18 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v7 = nanocamera_log_control();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v13 = "[CCCameraConnection xpc_setCaptureDevice:reply:]";
    v14 = 2080;
    v15 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v16 = 1024;
    v17 = 604;
    _os_log_impl(&dword_243CBC000, v7, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CCCameraConnection_xpc_setCaptureDevice_reply___block_invoke;
  block[3] = &unk_278DEF1A8;
  v10 = replyCopy;
  deviceCopy = device;
  block[4] = self;
  v8 = replyCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __49__CCCameraConnection_xpc_setCaptureDevice_reply___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1[4] + 160));
    [v4 cameraConnection:a1[4] setCaptureDevice:a1[6]];
  }

  result = a1[5];
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)xpc_setCaptureMode:(int64_t)mode reply:(id)reply
{
  v18 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v7 = nanocamera_log_control();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v13 = "[CCCameraConnection xpc_setCaptureMode:reply:]";
    v14 = 2080;
    v15 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v16 = 1024;
    v17 = 619;
    _os_log_impl(&dword_243CBC000, v7, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__CCCameraConnection_xpc_setCaptureMode_reply___block_invoke;
  block[3] = &unk_278DEF1A8;
  v10 = replyCopy;
  modeCopy = mode;
  block[4] = self;
  v8 = replyCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __47__CCCameraConnection_xpc_setCaptureMode_reply___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1[4] + 160));
    [v4 cameraConnection:a1[4] setCaptureMode:a1[6]];
  }

  result = a1[5];
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)xpc_startCaptureWithMode:(int64_t)mode reply:(id)reply
{
  v18 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v7 = nanocamera_log_control();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v13 = "[CCCameraConnection xpc_startCaptureWithMode:reply:]";
    v14 = 2080;
    v15 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v16 = 1024;
    v17 = 634;
    _os_log_impl(&dword_243CBC000, v7, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__CCCameraConnection_xpc_startCaptureWithMode_reply___block_invoke;
  block[3] = &unk_278DEF1A8;
  v10 = replyCopy;
  modeCopy = mode;
  block[4] = self;
  v8 = replyCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __53__CCCameraConnection_xpc_startCaptureWithMode_reply___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == [*(a1 + 32) _captureMode])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = objc_loadWeakRetained((*(a1 + 32) + 160));
      v5 = [v4 cameraConnectionStartCapture:*(a1 + 32)];

      if (v5)
      {
        *(*(a1 + 32) + 113) = 1;
      }
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (void)xpc_pauseCaptureWithReply:(id)reply
{
  v15 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v5 = nanocamera_log_control();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v10 = "[CCCameraConnection xpc_pauseCaptureWithReply:]";
    v11 = 2080;
    v12 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v13 = 1024;
    v14 = 653;
    _os_log_impl(&dword_243CBC000, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__CCCameraConnection_xpc_pauseCaptureWithReply___block_invoke;
  v7[3] = &unk_278DEF180;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __48__CCCameraConnection_xpc_pauseCaptureWithReply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 160));
    [v4 cameraConnectionPauseCapture:*(a1 + 32)];
  }

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)xpc_resumeCaptureWithReply:(id)reply
{
  v15 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v5 = nanocamera_log_control();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v10 = "[CCCameraConnection xpc_resumeCaptureWithReply:]";
    v11 = 2080;
    v12 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v13 = 1024;
    v14 = 668;
    _os_log_impl(&dword_243CBC000, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__CCCameraConnection_xpc_resumeCaptureWithReply___block_invoke;
  v7[3] = &unk_278DEF180;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __49__CCCameraConnection_xpc_resumeCaptureWithReply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 160));
    [v4 cameraConnectionResumeCapture:*(a1 + 32)];
  }

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)xpc_stopCaptureWithReply:(id)reply
{
  v15 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v5 = nanocamera_log_control();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v10 = "[CCCameraConnection xpc_stopCaptureWithReply:]";
    v11 = 2080;
    v12 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v13 = 1024;
    v14 = 683;
    _os_log_impl(&dword_243CBC000, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__CCCameraConnection_xpc_stopCaptureWithReply___block_invoke;
  v7[3] = &unk_278DEF180;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __47__CCCameraConnection_xpc_stopCaptureWithReply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 160));
    v5 = [v4 cameraConnectionStopCapture:*(a1 + 32)];

    if (v5)
    {
      *(*(a1 + 32) + 113) = 0;
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (void)xpc_suspend
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v6 = "[CCCameraConnection xpc_suspend]";
    v7 = 2080;
    v8 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v9 = 1024;
    v10 = 701;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__CCCameraConnection_xpc_suspend__block_invoke;
  block[3] = &unk_278DEF1D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __33__CCCameraConnection_xpc_suspend__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 160));
    [v4 cameraConnectionSuspend:*(a1 + 32)];
  }
}

- (void)xpc_setPreviewEndpoint:(id)endpoint
{
  v15 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  v5 = nanocamera_log_preview(endpointCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v10 = "[CCCameraConnection xpc_setPreviewEndpoint:]";
    v11 = 2080;
    v12 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v13 = 1024;
    v14 = 712;
    _os_log_impl(&dword_243CBC000, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__CCCameraConnection_xpc_setPreviewEndpoint___block_invoke;
  v7[3] = &unk_278DEF1F8;
  v7[4] = self;
  v8 = endpointCopy;
  v6 = endpointCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __45__CCCameraConnection_xpc_setPreviewEndpoint___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  v2 = *(a1 + 32);
  if (v2[4])
  {

    return [v2 _openPreview];
  }

  else
  {

    return [v2 _closePreview];
  }
}

- (void)xpc_setFocusPoint:(id)point
{
  pointCopy = point;
  v9 = 0uLL;
  if (!strcmp([pointCopy objCType], "{CGPoint=dd}"))
  {
    [pointCopy getValue:&v9];
    v6 = nanocamera_log_control();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(CCCameraConnection *)&v9 xpc_setFocusPoint:v6];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__CCCameraConnection_xpc_setFocusPoint___block_invoke;
    block[3] = &unk_278DEF220;
    block[4] = self;
    v8 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v5 = nanocamera_log_control();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CCCameraConnection xpc_setFocusPoint:];
    }
  }
}

void __40__CCCameraConnection_xpc_setFocusPoint___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 160));
    [v4 cameraConnection:*(a1 + 32) setFocusPoint:{*(a1 + 40), *(a1 + 48)}];
  }
}

- (id)_supportedCaptureDevices
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = [v5 cameraConnectionSupportedCaptureDevices:self];

    v7 = [MEMORY[0x277CBEB70] orderedSetWithArray:v6];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB70] orderedSetWithObjects:{&unk_2856ED548, &unk_2856ED560, 0}];
  }

  return v7;
}

- (int64_t)_captureDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionCaptureDevice:self];

  return v6;
}

- (id)_supportedCaptureModes
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = [v5 cameraConnectionSupportedCaptureModes:self];

    v7 = [MEMORY[0x277CBEB70] orderedSetWithArray:v6];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB70] orderedSetWithObject:&unk_2856ED548];
  }

  return v7;
}

- (int64_t)_captureMode
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionCaptureMode:self];

  return v6;
}

- (BOOL)_toggleCameraDeviceSupport
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionToggleCameraDeviceSupport:self];

  return v6;
}

- (BOOL)_zoomSupport
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionZoomSupport:self];

  return v6;
}

- (double)_zoomAmount
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 cameraConnectionZoomAmount:self];
    v4 = v6;
  }

  if (v4 > 1.0 || v4 < 0.0)
  {
    return 0.0;
  }

  else
  {
    return v4;
  }
}

- (int64_t)_flashSupport
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionFlashSupport:self];

  return v6;
}

- (int64_t)_flashMode
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionFlashSupport:self];

  if (!v6)
  {
    return 0;
  }

  v7 = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = objc_loadWeakRetained(&self->_delegate);
  v10 = [v9 cameraConnectionFlashMode:self];

  return v10;
}

- (int64_t)_hdrSupport
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionHDRSupport:self];

  return v6;
}

- (int64_t)_hdrMode
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionHDRSupport:self];

  if (!v6)
  {
    return 0;
  }

  v7 = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = objc_loadWeakRetained(&self->_delegate);
  v10 = [v9 cameraConnectionHDRMode:self];

  return v10;
}

- (int64_t)_irisSupport
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionIrisSupport:self];

  return v6;
}

- (int64_t)_irisMode
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionIrisSupport:self];

  if (!v6)
  {
    return 0;
  }

  v7 = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = objc_loadWeakRetained(&self->_delegate);
  v10 = [v9 cameraConnectionIrisMode:self];

  return v10;
}

- (int64_t)_sharedLibrarySupport
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionSharedLibrarySupport:self];

  return v6;
}

- (int64_t)_sharedLibraryMode
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionSharedLibrarySupport:self];

  if (!v6)
  {
    return 0;
  }

  v7 = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = objc_loadWeakRetained(&self->_delegate);
  v10 = [v9 cameraConnectionSharedLibraryMode:self];

  return v10;
}

- (BOOL)_supportsZoomMagnification
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionZoomMagnificationSupport:self];

  return v6;
}

- (double)_minimumZoomMagnification
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0.0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  [v5 cameraConnectionMinimumZoomMagnification:self];
  v7 = v6;

  return v7;
}

- (double)_maximumZoomMagnification
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0.0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  [v5 cameraConnectionMaximumZoomMagnification:self];
  v7 = v6;

  return v7;
}

- (id)_significantZoomMagnifications
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = [v5 cameraConnectionSignificantZoomMagnifications:self];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (double)_currentZoomMagnification
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0.0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  [v5 cameraConnectionCurrentZoomMagnification:self];
  v7 = v6;

  return v7;
}

- (BOOL)_supportsMomentCapture
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionSupportsMomentCapture:self];

  return v6;
}

- (BOOL)_burstSupport
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 cameraConnectionBurstSupport:self];

  return v6;
}

- (void)xpc_fetchCurrentStateIncludingSupportedCaptureModes:(BOOL)modes reply:(id)reply
{
  replyCopy = reply;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__CCCameraConnection_xpc_fetchCurrentStateIncludingSupportedCaptureModes_reply___block_invoke;
  block[3] = &unk_278DEF248;
  modesCopy = modes;
  block[4] = self;
  v9 = replyCopy;
  v7 = replyCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __80__CCCameraConnection_xpc_fetchCurrentStateIncludingSupportedCaptureModes_reply___block_invoke(uint64_t a1)
{
  v144 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _supportedCaptureDevices];
  v83 = [*(a1 + 32) _captureDevice];
  if (*(a1 + 48) == 1)
  {
    v3 = [*(a1 + 32) _supportedCaptureModes];
  }

  else
  {
    v3 = 0;
  }

  v82 = [*(a1 + 32) _captureMode];
  v4 = *(a1 + 32);
  v81 = *(v4 + 113);
  v5 = *(v4 + 120);
  v6 = *(a1 + 32);
  v80 = *(v6 + 128);
  v7 = *(v6 + 136);
  v79 = [*(a1 + 32) _currentOrientation];
  v78 = [*(a1 + 32) _toggleCameraDeviceSupport];
  v77 = [*(a1 + 32) _zoomSupport];
  [*(a1 + 32) _zoomAmount];
  v9 = v8;
  v76 = [*(a1 + 32) _supportsZoomMagnification];
  [*(a1 + 32) _minimumZoomMagnification];
  v11 = v10;
  [*(a1 + 32) _maximumZoomMagnification];
  v13 = v12;
  v14 = [*(a1 + 32) _significantZoomMagnifications];
  [*(a1 + 32) _currentZoomMagnification];
  v16 = v15;
  v75 = [*(a1 + 32) _flashSupport];
  v74 = [*(a1 + 32) _flashMode];
  v73 = [*(a1 + 32) _hdrSupport];
  v72 = [*(a1 + 32) _hdrMode];
  v71 = [*(a1 + 32) _irisSupport];
  v70 = [*(a1 + 32) _irisMode];
  v69 = [*(a1 + 32) _sharedLibrarySupport];
  v68 = [*(a1 + 32) _sharedLibraryMode];
  v67 = [*(a1 + 32) _supportsMomentCapture];
  v17 = [*(a1 + 32) _burstSupport];
  v18 = *(a1 + 32);
  v66 = v18[7];
  v19 = v18[18];
  v20 = v18[19];
  v21 = nanocamera_log_control();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v23 = _ncCaptureDeviceFromCCCaptureDevice(v83);
    if (v23)
    {
      if (v23)
      {
        v24 = @"Front";
      }

      else
      {
        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v23];
      }
    }

    else
    {
      v24 = @"Back";
    }

    v58 = v24;
    v25 = @"not-included";
    if (v3)
    {
      v25 = v3;
    }

    v54 = v25;
    v26 = _ncCaptureModeFromCCCaptureMode(v82);
    if (v26 < 0xD && ((0x1FABu >> v26) & 1) != 0)
    {
      v27 = off_278DEF290[v26];
    }

    else
    {
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v26];
    }

    v65 = v27;
    v28 = _ncOrientationFromDeviceOrientation(v79);
    if (v28 >= 5)
    {
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v28];
    }

    else
    {
      v29 = off_278DEF2F8[v28];
    }

    v57 = v29;
    v30 = _ncFlashSupportFromCCFlashSupport(v75);
    if (v30 >= 3)
    {
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v30];
    }

    else
    {
      v31 = off_278DEF340[v30];
    }

    v64 = v31;
    v32 = _ncFlashModeFromCCFlashMode(v74);
    if (v32 >= 3)
    {
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v32];
    }

    else
    {
      v33 = off_278DEF358[v32];
    }

    v63 = v33;
    v34 = _ncHDRSupportFromCCHDRSupport(v73);
    if (v34 >= 4)
    {
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v34];
    }

    else
    {
      v35 = off_278DEF320[v34];
    }

    v62 = v35;
    v36 = _ncHDRModeFromCCHDRMode(v72);
    if (v36 >= 3)
    {
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v36];
    }

    else
    {
      v37 = off_278DEF358[v36];
    }

    v61 = v37;
    v38 = _ncIrisSupportFromCCIrisSupport(v71);
    if (v38 >= 3)
    {
      v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v38];
    }

    else
    {
      v39 = off_278DEF340[v38];
    }

    v60 = v39;
    v40 = _ncIrisModeFromCCIrisMode(v70);
    if (v40 >= 3)
    {
      v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v40];
    }

    else
    {
      v41 = off_278DEF358[v40];
    }

    v59 = v41;
    v42 = _ncSharedLibrarySupportFromCCSharedLibrarySupport(v69);
    if (v42)
    {
      if (v42)
      {
        v43 = @"OnOff";
      }

      else
      {
        v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v42];
      }
    }

    else
    {
      v43 = @"None";
    }

    v56 = v43;
    v44 = _ncSharedLibraryModeFromCCSharedLibraryMode(v68);
    if (v44)
    {
      if (v44)
      {
        v45 = @"On";
      }

      else
      {
        v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v44];
      }
    }

    else
    {
      v45 = @"Off";
    }

    v55 = v45;
    v46 = _ncShallowDepthOfFieldStatusFromCCShallowDepthOfFieldStatus(v19);
    if (v46 >= 0x10)
    {
      v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v46];
    }

    else
    {
      v47 = off_278DEF370[v46];
    }

    v53 = v47;
    v48 = _ncStereoCaptureStatusFromCCStereoCaptureStatus(v20);
    if (v48 < 5 && ((0x17u >> v48) & 1) != 0)
    {
      v49 = off_278DEF3F0[v48];
    }

    else
    {
      v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v48];
    }

    v52 = v49;
    *buf = 138419714;
    v85 = v2;
    v86 = 2112;
    v87 = v58;
    v88 = 2112;
    v89 = v54;
    v90 = 2112;
    v91 = v65;
    v92 = 1024;
    v93 = v81;
    v94 = 2112;
    v95 = v5;
    v96 = 1024;
    v97 = v80;
    v98 = 2112;
    v99 = v7;
    v100 = 2112;
    v101 = v57;
    v102 = 1024;
    v103 = v78;
    v104 = 1024;
    v105 = v77;
    v106 = 2048;
    v107 = v9;
    v108 = 1024;
    v109 = v76;
    v110 = 2048;
    v111 = v11;
    v112 = 2048;
    v113 = v13;
    v114 = 2112;
    v115 = v14;
    v116 = 2048;
    v117 = v16;
    v118 = 2112;
    v119 = v64;
    v120 = 2112;
    v121 = v63;
    v122 = 2112;
    v123 = v62;
    v124 = 2112;
    v125 = v61;
    v126 = 2112;
    v127 = v60;
    v128 = 2112;
    v129 = v59;
    v130 = 2112;
    v131 = v56;
    v132 = 2112;
    v133 = v55;
    v134 = 1024;
    v135 = v67;
    v136 = 1024;
    v137 = v17;
    v138 = 2048;
    v139 = v66;
    v140 = 2112;
    v141 = v53;
    v142 = 2112;
    v143 = v49;
    _os_log_debug_impl(&dword_243CBC000, v21, OS_LOG_TYPE_DEBUG, "supportedCaptureDevices:%@ captureDevice:%@ supportedCaptureModes:%@ captureMode:%@ capturing:%d captureStartDate:%@ capturingPaused:%d capturePauseDate:%@ orientation:%@ toggleCameraDeviceSupport:%d zoomSupport:%d zoomAmount:%f zoomMagnificationSupport:%d minimumZoomMagnification:%f maximumZoomMagnification:%f significantZoomMagnifications:%@ currentZoomMagnification:%f flashSupport:%@ flashMode:%@ hdrSupport:%@ hdrMode:%@ irisSupport:%@ irisMode:%@ sharedLibrarySupport:%@ sharedLibraryMode:%@ supportsMomentCapture:%d burstSupport:%d viewfinderSessionState:%lu shallowDepthOfFieldStatus:%@ stereoCaptureStatus:%@", buf, 0x112u);
  }

  v22 = *(a1 + 40);
  if (v22)
  {
    HIBYTE(v51) = v17;
    LOBYTE(v51) = v67;
    BYTE2(v50) = v76;
    BYTE1(v50) = v77;
    LOBYTE(v50) = v78;
    (*(v22 + 16))(v22, v2, v83, v3, v82, v81, v5, v80, v9, v11, v13, v16, v7, v79, v50, v14, v75, v74, v73, v72, v71, v70, v69, v68, v51, v66, v19, v20);
  }
}

- (void)xpc_cancelCountdown
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__CCCameraConnection_xpc_cancelCountdown__block_invoke;
  block[3] = &unk_278DEF1D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __41__CCCameraConnection_xpc_cancelCountdown__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 160));
    [v4 cameraConnectionCancelCountdown:*(a1 + 32)];
  }
}

- (void)xpc_setZoom:(float)zoom reply:(id)reply
{
  replyCopy = reply;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__CCCameraConnection_xpc_setZoom_reply___block_invoke;
  block[3] = &unk_278DEF270;
  zoomCopy = zoom;
  block[4] = self;
  v9 = replyCopy;
  v7 = replyCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __40__CCCameraConnection_xpc_setZoom_reply___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 100) = *(a1 + 48);
  v3 = 0.0;
  if ([*(a1 + 32) _zoomSupport])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained((*(a1 + 32) + 160));
      [v6 cameraConnection:*(a1 + 32) setZoomAmount:*(a1 + 48)];

      [*(a1 + 32) _zoomAmount];
      v3 = v2.n128_f64[0];
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    v8 = *(result + 16);
    v2.n128_f32[0] = v3;

    return v8(v2);
  }

  return result;
}

- (void)xpc_setZoomMagnification:(float)magnification reply:(id)reply
{
  replyCopy = reply;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__CCCameraConnection_xpc_setZoomMagnification_reply___block_invoke;
  block[3] = &unk_278DEF270;
  magnificationCopy = magnification;
  block[4] = self;
  v9 = replyCopy;
  v7 = replyCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __53__CCCameraConnection_xpc_setZoomMagnification_reply___block_invoke(uint64_t a1)
{
  v3 = 0.0;
  if ([*(a1 + 32) _supportsZoomMagnification])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained((*(a1 + 32) + 160));
      [v6 cameraConnection:*(a1 + 32) setZoomMagnificationAmount:*(a1 + 48)];

      [*(a1 + 32) _currentZoomMagnification];
      v3 = v2.n128_f64[0];
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    v8 = *(result + 16);
    v2.n128_f32[0] = v3;

    return v8(v2);
  }

  return result;
}

- (void)xpc_setFlashMode:(int64_t)mode
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__CCCameraConnection_xpc_setFlashMode___block_invoke;
  v3[3] = &unk_278DEF158;
  v3[4] = self;
  v3[5] = mode;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __39__CCCameraConnection_xpc_setFlashMode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 160));
    [v4 cameraConnection:*(a1 + 32) setFlashMode:*(a1 + 40)];
  }
}

- (void)xpc_setHDRMode:(int64_t)mode
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __37__CCCameraConnection_xpc_setHDRMode___block_invoke;
  v3[3] = &unk_278DEF158;
  v3[4] = self;
  v3[5] = mode;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __37__CCCameraConnection_xpc_setHDRMode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 160));
    [v4 cameraConnection:*(a1 + 32) setHDRMode:*(a1 + 40)];
  }
}

- (void)xpc_setIrisMode:(int64_t)mode
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__CCCameraConnection_xpc_setIrisMode___block_invoke;
  v3[3] = &unk_278DEF158;
  v3[4] = self;
  v3[5] = mode;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __38__CCCameraConnection_xpc_setIrisMode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 160));
    [v4 cameraConnection:*(a1 + 32) setIrisMode:*(a1 + 40)];
  }
}

- (void)xpc_setSharedLibraryMode:(int64_t)mode
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__CCCameraConnection_xpc_setSharedLibraryMode___block_invoke;
  v3[3] = &unk_278DEF158;
  v3[4] = self;
  v3[5] = mode;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __47__CCCameraConnection_xpc_setSharedLibraryMode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 160));
    [v4 cameraConnection:*(a1 + 32) setSharedLibraryMode:*(a1 + 40)];
  }
}

- (void)xpc_toggleCameraDevice
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__CCCameraConnection_xpc_toggleCameraDevice__block_invoke;
  block[3] = &unk_278DEF1D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __44__CCCameraConnection_xpc_toggleCameraDevice__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 160));
    [v4 cameraConnectionToggleCameraDevice:*(a1 + 32)];
  }
}

- (void)_openPreview
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_preview(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315650;
    v5 = "[CCCameraConnection _openPreview]";
    v6 = 2080;
    v7 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v8 = 1024;
    v9 = 1068;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v4, 0x1Cu);
  }

  self->_desiredPreviewState = 2;
  [(CCCameraConnection *)self _performPreviewStateTransitionsIfNeeded];
}

- (void)_closePreview
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_preview(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315650;
    v5 = "[CCCameraConnection _closePreview]";
    v6 = 2080;
    v7 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v8 = 1024;
    v9 = 1076;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v4, 0x1Cu);
  }

  self->_desiredPreviewState = 0;
  [(CCCameraConnection *)self _performPreviewStateTransitionsIfNeeded];
}

- (void)_performPreviewStateTransitionsIfNeeded
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_preview(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    desiredPreviewState = self->_desiredPreviewState;
    currentPreviewState = self->_currentPreviewState;
    *buf = 67109376;
    *v20 = desiredPreviewState;
    *&v20[4] = 1024;
    *&v20[6] = currentPreviewState;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "Preview desired state: %d, current state: %d", buf, 0xEu);
  }

  v7 = self->_desiredPreviewState;
  if (v7)
  {
    if (v7 == 2 && !self->_currentPreviewState && self->_remoteViewfinderSession && self->_previewEndpoint)
    {
      v8 = nanocamera_log_preview(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        previewEndpoint = self->_previewEndpoint;
        remoteViewfinderSession = self->_remoteViewfinderSession;
        *buf = 138412546;
        *v20 = previewEndpoint;
        *&v20[8] = 2112;
        v21 = remoteViewfinderSession;
        _os_log_impl(&dword_243CBC000, v8, OS_LOG_TYPE_DEFAULT, "Opening preview stream, destination: %@, session:%@", buf, 0x16u);
      }

      v11 = +[ViewfinderReliability sharedInstance];
      [v11 logEvent:12];

      v12 = self->_remoteViewfinderSession;
      v13 = self->_previewEndpoint;
      v17 = *MEMORY[0x277CF3B50];
      v18 = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      [(FigCameraViewfinderSession *)v12 openPreviewStreamWithOptions:v14];

      self->_currentPreviewState = 1;
    }
  }

  else if (self->_currentPreviewState == 2 && self->_remoteViewfinderSession)
  {
    v15 = nanocamera_log_preview(v6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_remoteViewfinderSession;
      *buf = 138412290;
      *v20 = v16;
      _os_log_impl(&dword_243CBC000, v15, OS_LOG_TYPE_DEFAULT, "Closing preview stream, session:%@", buf, 0xCu);
    }

    [(FigCameraViewfinderSession *)self->_remoteViewfinderSession closePreviewStream];
    self->_currentPreviewState = 3;
  }
}

- (BOOL)isPreviewConnected
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_preview(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = "[CCCameraConnection isPreviewConnected]";
    v7 = 2080;
    v8 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v9 = 1024;
    v10 = 1104;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v5, 0x1Cu);
  }

  return self->_remoteViewfinderSession && self->_previewEndpoint != 0;
}

- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidBegin:(id)begin
{
  v16 = *MEMORY[0x277D85DE8];
  beginCopy = begin;
  v7 = nanocamera_log_preview(beginCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[CCCameraConnection cameraViewfinder:viewfinderSessionDidBegin:]";
    v12 = 2080;
    v13 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v14 = 1024;
    v15 = 1111;
    _os_log_impl(&dword_243CBC000, v7, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v10, 0x1Cu);
  }

  v8 = +[ViewfinderReliability sharedInstance];
  [v8 logEvent:10];

  objc_storeStrong(&self->_remoteViewfinderSession, begin);
  self->_remoteViewfinderSessionState = 1;
  if ([(CCCameraConnection *)self _shouldReportEvent])
  {
    v9 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_228];
    [v9 xpc_viewfinderSessionStateDidChange:self->_remoteViewfinderSessionState];
  }

  self->_currentPreviewState = 0;
  [(CCCameraConnection *)self _performPreviewStateTransitionsIfNeeded];
}

void __65__CCCameraConnection_cameraViewfinder_viewfinderSessionDidBegin___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidEnd:(id)end
{
  v17 = *MEMORY[0x277D85DE8];
  endCopy = end;
  v6 = nanocamera_log_preview(endCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[CCCameraConnection cameraViewfinder:viewfinderSessionDidEnd:]";
    v13 = 2080;
    v14 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v15 = 1024;
    v16 = 1129;
    _os_log_impl(&dword_243CBC000, v6, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v11, 0x1Cu);
  }

  v7 = +[ViewfinderReliability sharedInstance];
  [v7 logEvent:11];

  remoteViewfinderSession = self->_remoteViewfinderSession;
  if (remoteViewfinderSession != endCopy)
  {
    v10 = nanocamera_log_preview(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CCCameraConnection cameraViewfinder:viewfinderSessionDidEnd:];
    }

    goto LABEL_6;
  }

  self->_currentPreviewState = 0;
  self->_remoteViewfinderSession = 0;

  if (self->_remoteViewfinderSessionState)
  {
    self->_remoteViewfinderSessionState = 2;
    if ([(CCCameraConnection *)self _shouldReportEvent])
    {
      v10 = [(NSXPCConnection *)self->_xpc remoteObjectProxyWithErrorHandler:&__block_literal_global_230];
      [v10 xpc_viewfinderSessionStateDidChange:self->_remoteViewfinderSessionState];
LABEL_6:
    }
  }
}

void __63__CCCameraConnection_cameraViewfinder_viewfinderSessionDidEnd___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CCCameraConnection__checkin__block_invoke_cold_1();
  }
}

- (void)cameraViewfinderSession:(id)session didCapturePhotoWithStatus:(int)status thumbnailData:(id)data timestamp:(id *)timestamp
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = nanocamera_log_preview(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[CCCameraConnection cameraViewfinderSession:didCapturePhotoWithStatus:thumbnailData:timestamp:]";
    v9 = 2080;
    v10 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v11 = 1024;
    v12 = 1154;
    _os_log_impl(&dword_243CBC000, v6, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v7, 0x1Cu);
  }
}

- (void)cameraViewfinderSessionPreviewStreamDidOpen:(id)open
{
  v16 = *MEMORY[0x277D85DE8];
  openCopy = open;
  v5 = nanocamera_log_preview(openCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[CCCameraConnection cameraViewfinderSessionPreviewStreamDidOpen:]";
    v12 = 2080;
    v13 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v14 = 1024;
    v15 = 1159;
    _os_log_impl(&dword_243CBC000, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v10, 0x1Cu);
  }

  v6 = +[ViewfinderReliability sharedInstance];
  [v6 logEvent:13];

  remoteViewfinderSession = self->_remoteViewfinderSession;
  if (!remoteViewfinderSession || remoteViewfinderSession == openCopy)
  {
    self->_currentPreviewState = 2;
    [(CCCameraConnection *)self _performPreviewStateTransitionsIfNeeded];
  }

  else
  {
    v9 = nanocamera_log_preview(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CCCameraConnection cameraViewfinderSessionPreviewStreamDidOpen:];
    }
  }
}

- (void)cameraViewfinderSession:(id)session previewStreamDidCloseWithStatus:(int)status
{
  v4 = *&status;
  v14 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v7 = nanocamera_log_preview(sessionCopy);
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CCCameraConnection cameraViewfinderSession:v4 previewStreamDidCloseWithStatus:v8];
    }

    [ViewfinderErrorReporter report:100 status:v4];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13[0] = 67109120;
      v13[1] = 0;
      _os_log_impl(&dword_243CBC000, v8, OS_LOG_TYPE_DEFAULT, "previewStreamDidCloseWithStatus: %d", v13, 8u);
    }
  }

  v9 = +[ViewfinderReliability sharedInstance];
  [v9 logEvent:14];

  remoteViewfinderSession = self->_remoteViewfinderSession;
  if (!remoteViewfinderSession || remoteViewfinderSession == sessionCopy)
  {
    self->_currentPreviewState = 0;
    [(CCCameraConnection *)self _performPreviewStateTransitionsIfNeeded];
  }

  else
  {
    v12 = nanocamera_log_preview(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CCCameraConnection cameraViewfinderSession:previewStreamDidCloseWithStatus:];
    }
  }
}

- (void)_handleInterruption
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[CCCameraConnection _handleInterruption]";
    v9 = 2080;
    v10 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v11 = 1024;
    v12 = 1194;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v7, 0x1Cu);
  }

  ++self->_interruptionCount;
  v4 = nanocamera_log_control();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    interruptionCount = self->_interruptionCount;
    v7 = 134217984;
    v8 = interruptionCount;
    _os_log_impl(&dword_243CBC000, v4, OS_LOG_TYPE_DEFAULT, "Connection interrupted %lu times", &v7, 0xCu);
  }

  if (self->_interruptionCount < 0xA)
  {
    [(CCCameraConnection *)self _checkin];
  }

  else
  {
    v6 = nanocamera_log_control();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_243CBC000, v6, OS_LOG_TYPE_DEFAULT, "Connection interruption limit reached", &v7, 2u);
    }
  }
}

- (void)_handleInvalidation
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = nanocamera_log_control();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[CCCameraConnection _handleInvalidation]";
    v8 = 2080;
    v9 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/CompanionCamera/CCCameraConnection.m";
    v10 = 1024;
    v11 = 1209;
    _os_log_impl(&dword_243CBC000, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v6, 0x1Cu);
  }

  self->_interruptionCount = 0;
  xpc = self->_xpc;
  self->_xpc = 0;

  previewEndpoint = self->_previewEndpoint;
  self->_previewEndpoint = 0;

  [(CCCameraConnection *)self _closePreview];
}

- (CCCameraConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didUpdateThumbnailWithData:(uint64_t)a3 isVideo:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 16);
  OUTLINED_FUNCTION_4(&dword_243CBC000, a2, a3, "_xpc is %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)switchedOrientation:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _ncOrientationFromDeviceOrientation(a1);
  if (v3 > 4)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v3];
  }

  else
  {
    v4 = off_278DEF2F8[v3];
  }

  *buf = 138412290;
  v6 = v4;
  _os_log_debug_impl(&dword_243CBC000, a2, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
}

- (void)xpc_setFocusPoint:(uint64_t *)a1 .cold.2(uint64_t *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  v4 = 134218240;
  v5 = v2;
  v6 = 2048;
  v7 = v3;
  _os_log_debug_impl(&dword_243CBC000, a2, OS_LOG_TYPE_DEBUG, "Focus Point: {%.4f, %.4f}", &v4, 0x16u);
}

- (void)cameraViewfinderSession:(int)a1 previewStreamDidCloseWithStatus:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_243CBC000, a2, OS_LOG_TYPE_ERROR, "previewStreamDidCloseWithStatus: %d", v2, 8u);
}

@end