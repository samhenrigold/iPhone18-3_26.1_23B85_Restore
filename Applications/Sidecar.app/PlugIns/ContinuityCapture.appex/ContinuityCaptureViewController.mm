@interface ContinuityCaptureViewController
+ (void)initialize;
- (ContinuityCaptureViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_disconnectSession;
- (void)_handleLayout:(id)layout ignoringStandby:(BOOL)standby;
- (void)_observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)_resolveUserPauseState;
- (void)_setConnectionInterruptTimer;
- (void)_showHowToReconnectDialog;
- (void)_terminate;
- (void)_updateUI;
- (void)callActive:(BOOL)active;
- (void)dealloc;
- (void)deviceLockStateMonitor:(id)monitor didUpdateDeviceLockState:(BOOL)state;
- (void)incomingCall:(BOOL)call data:(id)data shouldDisplayNotification:(BOOL)notification;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)receivedItems:(id)items;
- (void)requestDidFinish:(id)finish;
- (void)requestDidStart:(id)start;
- (void)setActive:(BOOL)active;
- (void)setBackgrounded:(BOOL)backgrounded;
- (void)sidecarServiceActive;
- (void)updateRequestState;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ContinuityCaptureViewController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (ContinuityCaptureViewController)initWithNibName:(id)name bundle:(id)bundle
{
  global_queue = dispatch_get_global_queue(2, 0);
  dispatch_async(global_queue, &stru_100014608);
  v13.receiver = self;
  v13.super_class = ContinuityCaptureViewController;
  v8 = [(ContinuityCaptureViewController *)&v13 initWithNibName:name bundle:bundle];
  v9 = v8;
  if (v8)
  {
    objc_sync_enter(v8);
    v9->_activeRequests = objc_alloc_init(NSMutableArray);
    objc_sync_exit(v9);
    v9->_uiState = 0;
    FigCaptureSessionRemoteSetWombatInUse();
    v10 = +[ContinuityCaptureRemoteUISystemStatus sharedInstance];
    [(ContinuityCaptureRemoteUISystemStatus *)v10 addObserver:v9 forKeyPath:CMContinuityCaptureSystemStatusPowerButtonPressedKVOKey options:3 context:0];
    v11 = +[ContinuityCaptureRemoteUISystemStatus sharedInstance];
    [(ContinuityCaptureRemoteUISystemStatus *)v11 addObserver:v9 forKeyPath:CMContinuityCaptureCallStateKVOKey options:3 context:0];
    [+[ContinuityCaptureRemoteUISystemStatus sharedInstance](ContinuityCaptureRemoteUISystemStatus holdIdleSleepAssertionForReason:"holdIdleSleepAssertionForReason:", &stru_100014A90];
    [+[ContinuityCaptureRemoteUISystemStatus sharedInstance](ContinuityCaptureRemoteUISystemStatus addObserver:"addObserver:", v9];
  }

  return v9;
}

- (void)dealloc
{
  if (dword_100019EC8)
  {
    v10 = 0;
    v9 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigCaptureSessionRemoteSetWombatInUse();
  FigCaptureSessionRemoteSetWombatEnabled();

  [(FigCaptureDeviceLockStateMonitor *)self->_lockStateMonitor removeDeviceLockStateObserver:self];
  [(FBSDisplayLayoutMonitor *)self->_layoutMonitor invalidate];

  connectionInterruptTimer = self->_connectionInterruptTimer;
  if (connectionInterruptTimer)
  {
    dispatch_source_cancel(connectionInterruptTimer);
  }

  v5 = +[ContinuityCaptureRemoteUISystemStatus sharedInstance];
  [(ContinuityCaptureRemoteUISystemStatus *)v5 removeObserver:self forKeyPath:CMContinuityCaptureSystemStatusPowerButtonPressedKVOKey context:0];
  v6 = +[ContinuityCaptureRemoteUISystemStatus sharedInstance];
  [(ContinuityCaptureRemoteUISystemStatus *)v6 removeObserver:self forKeyPath:CMContinuityCaptureCallStateKVOKey context:0];
  [+[ContinuityCaptureRemoteUISystemStatus sharedInstance](ContinuityCaptureRemoteUISystemStatus removeObserver:"removeObserver:", self];
  continuityCaptureDevice = self->_continuityCaptureDevice;
  if (continuityCaptureDevice)
  {
    [(CMContinuityCaptureRemoteCompositeDevice *)continuityCaptureDevice removeObserver:self forKeyPath:CMContinuityCaptureRemoteCompositeStateKVOKey context:0];
    [(CMContinuityCaptureRemoteCompositeDevice *)self->_continuityCaptureDevice invalidate];
  }

  v8.receiver = self;
  v8.super_class = ContinuityCaptureViewController;
  [(ContinuityCaptureViewController *)&v8 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc_init(ContinuityCaptureShieldUIContentView);
  [(ContinuityCaptureShieldUIContentView *)v3 setDelegate:self];

  [(ContinuityCaptureViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  if (dword_100019EC8)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7.receiver = self;
  v7.super_class = ContinuityCaptureViewController;
  [(ContinuityCaptureViewController *)&v7 viewDidLoad];
  [-[ContinuityCaptureViewController view](self "view")];
  [-[ContinuityCaptureViewController view](self "view")];
  [-[ContinuityCaptureViewController view](self "view")];
  [-[ContinuityCaptureViewController view](self "view")];
  self->_connectionType = 0;
  [(ContinuityCaptureViewController *)self _updateUI];
  self->_sidecarLayoutValue = -1;
  v4 = objc_alloc_init(FigCaptureDeviceLockStateMonitor);
  self->_lockStateMonitor = v4;
  [(FigCaptureDeviceLockStateMonitor *)v4 addDeviceLockStateObserver:self];
  v5 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
  [v5 setNeedsUserInteractivePriority:1];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100005AD8;
  v6[3] = &unk_100014658;
  v6[4] = self;
  [v5 setTransitionHandler:v6];
  self->_layoutMonitor = [FBSDisplayLayoutMonitor monitorWithConfiguration:v5];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v8 = 0;
  v7 = 0;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v6.receiver = self;
  v6.super_class = ContinuityCaptureViewController;
  [(ContinuityCaptureViewController *)&v6 viewWillAppear:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v8 = 0;
  v7 = 0;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v6.receiver = self;
  v6.super_class = ContinuityCaptureViewController;
  [(ContinuityCaptureViewController *)&v6 viewDidAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8 = 0;
  v7 = 0;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v6.receiver = self;
  v6.super_class = ContinuityCaptureViewController;
  [(ContinuityCaptureViewController *)&v6 viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8 = 0;
  v7 = 0;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v6.receiver = self;
  v6.super_class = ContinuityCaptureViewController;
  [(ContinuityCaptureViewController *)&v6 viewDidDisappear:disappearCopy];
}

- (void)incomingCall:(BOOL)call data:(id)data shouldDisplayNotification:(BOOL)notification
{
  if (dword_100019EC8)
  {
    v12 = 0;
    v11 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006200;
  block[3] = &unk_100014680;
  callCopy = call;
  block[4] = self;
  block[5] = data;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)callActive:(BOOL)active
{
  if (dword_100019EC8)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000063D4;
  block[3] = &unk_1000146A8;
  activeCopy = active;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_showHowToReconnectDialog
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (dword_100019EC8)
  {
    v8 = 0;
    v7 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = +[UIAlertController alertControllerWithTitle:message:preferredStyle:](UIAlertController, "alertControllerWithTitle:message:preferredStyle:", [+[NSBundle mainBundle](NSBundle localizedStringForKey:"localizedStringForKey:value:table:" value:@"ALERT_DISCONNECTED_TITLE" table:&stru_100014A90, 0], [+[NSBundle localizedStringForKey:"localizedStringForKey:value:table:"];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000066C8;
  v6[3] = &unk_1000146D0;
  v6[4] = self;
  -[UIAlertController addAction:](v4, "addAction:", +[UIAlertAction actionWithTitle:style:handler:](UIAlertAction, "actionWithTitle:style:handler:", [+[NSBundle mainBundle](NSBundle localizedStringForKey:"localizedStringForKey:value:table:" value:@"ALERT_DISCONNECTED_BUTTON_TITLE_DISCONNECT" table:&stru_100014A90, 0], 2, v6));
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000067FC;
  v5[3] = &unk_1000146D0;
  v5[4] = self;
  -[UIAlertController addAction:](v4, "addAction:", +[UIAlertAction actionWithTitle:style:handler:](UIAlertAction, "actionWithTitle:style:handler:", [+[NSBundle mainBundle](NSBundle localizedStringForKey:"localizedStringForKey:value:table:" value:@"ALERT_DISCONNECTED_BUTTON_TITLE_CANCEL" table:&stru_100014A90, 0], 1, v5));
  [(ContinuityCaptureViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_updateUI
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  uiState = self->_uiState;
  if (dword_100019EC8)
  {
    v16 = 0;
    v15 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  view = [(ContinuityCaptureViewController *)self view];
  connectionType = self->_connectionType;
  if (connectionType)
  {
    if (connectionType != 1)
    {
      goto LABEL_8;
    }

    v7 = @"mic.circle.fill";
  }

  else
  {
    v7 = @"video.circle.fill";
  }

  [view setImage:{+[UIImage systemImageNamed:](UIImage, "systemImageNamed:", v7)}];
LABEL_8:
  macName = [objc_msgSend(-[ContinuityCaptureViewController request](self "request")];
  if (![(NSString *)macName length])
  {
    macName = self->_macName;
  }

  if (uiState == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  [view setPauseButtonState:v9];
  if ((uiState - 1) >= 2)
  {
    if (!uiState)
    {
      if ([(NSString *)macName length])
      {
        v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [+[NSBundle localizedStringForKey:"localizedStringForKey:value:table:"];
      }

      else
      {
        v11 = [+[NSBundle mainBundle](NSBundle localizedStringForKey:"localizedStringForKey:value:table:" value:@"LABEL_CONNECTING_TO_MAC" table:&stru_100014A90, 0];
      }

      [view setPrimaryText:v11];
    }
  }

  else
  {
    if ([(NSString *)macName length])
    {
      v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [+[NSBundle localizedStringForKey:"localizedStringForKey:value:table:"];
    }

    else
    {
      v10 = [+[NSBundle mainBundle](NSBundle localizedStringForKey:"localizedStringForKey:value:table:" value:@"LABEL_CONNECTED_TO_MAC" table:&stru_100014A90, 0];
    }

    [view setPrimaryText:v10];
    v12 = self->_connectionType;
    if (v12 == 1)
    {
      v13 = +[NSBundle mainBundle];
      v14 = @"LABEL_DISCONNECT_DESCRIPTION_MICROPHONE";
    }

    else
    {
      if (v12)
      {
        return;
      }

      v13 = +[NSBundle mainBundle];
      v14 = @"LABEL_DISCONNECT_DESCRIPTION_CAMERA";
    }

    [view setSecondaryText:{-[NSBundle localizedStringForKey:value:table:](v13, "localizedStringForKey:value:table:", v14, &stru_100014A90, 0)}];
  }
}

- (void)updateRequestState
{
  objc_sync_enter(self);
  if (self->_configForPreStreamStart && [(NSMutableArray *)self->_activeRequests count])
  {
    [(CMContinuityCaptureSidecarServer *)self->_requestServer setCurrentSessionID:self->_sessionID];
    if (dword_100019EC8)
    {
      v10 = 0;
      v9 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = [[CMContinuityCaptureRemoteCompositeDevice alloc] initWithTransportServer:self->_requestServer videoPreviewLayer:{-[ContinuityCaptureVideoPreviewView videoPreviewLayer](self->_videoPreviewView, "videoPreviewLayer")}];
    self->_continuityCaptureDevice = v5;
    [(CMContinuityCaptureRemoteCompositeDevice *)v5 addObserver:self forKeyPath:CMContinuityCaptureRemoteCompositeStateKVOKey options:3 context:0];
    [(CMContinuityCaptureSidecarServer *)self->_requestServer activate];
    continuityCaptureDevice = self->_continuityCaptureDevice;
    configForPreStreamStart = self->_configForPreStreamStart;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100006FD4;
    v8[3] = &unk_1000146F8;
    v8[4] = self;
    [(CMContinuityCaptureRemoteCompositeDevice *)continuityCaptureDevice startStream:configForPreStreamStart option:0 completion:v8];
  }

  else if (dword_100019EC8)
  {
    v10 = 0;
    v9 = 0;
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  objc_sync_exit(self);
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  if (dword_100019EC8)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7.receiver = self;
  v7.super_class = ContinuityCaptureViewController;
  if ([(ContinuityCaptureViewController *)&v7 respondsToSelector:"setActive:"])
  {
    v6.receiver = self;
    v6.super_class = ContinuityCaptureViewController;
    [(ContinuityCaptureViewController *)&v6 setActive:activeCopy];
  }

  if (activeCopy)
  {
    [(ContinuityCaptureViewController *)self setBackgroundStyle:4];
  }

  self->_inactive = !activeCopy;
  [(ContinuityCaptureViewController *)self _resolveUserPauseState];
}

- (void)setBackgrounded:(BOOL)backgrounded
{
  backgroundedCopy = backgrounded;
  if (dword_100019EC8)
  {
    v8 = 0;
    v7 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6.receiver = self;
  v6.super_class = ContinuityCaptureViewController;
  [(ContinuityCaptureViewController *)&v6 setBackgrounded:backgroundedCopy];
}

- (void)requestDidStart:(id)start
{
  if (dword_100019EC8)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  objc_sync_enter(self);
  activeRequests = self->_activeRequests;
  if (!activeRequests)
  {
    activeRequests = objc_alloc_init(NSMutableArray);
    self->_activeRequests = activeRequests;
  }

  if ([(NSMutableArray *)activeRequests count])
  {
    [(NSMutableArray *)self->_activeRequests removeObjectAtIndex:0];
  }

  [(NSMutableArray *)self->_activeRequests addObject:start];
  objc_sync_exit(self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000763C;
  block[3] = &unk_100014630;
  block[4] = self;
  block[5] = start;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)requestDidFinish:(id)finish
{
  if (dword_100019EC8)
  {
    v10 = 0;
    v9 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  objc_sync_enter(self);
  if ([(NSMutableArray *)self->_activeRequests count])
  {
    objc_sync_exit(self);
    v6 = ([finish isCancelled] & 1) == 0 && (objc_msgSend(objc_msgSend(objc_msgSend(finish, "error"), "domain"), "isEqualToString:", @"SidecarErrorDomain") && (objc_msgSend(objc_msgSend(finish, "error"), "code") == -205 || objc_msgSend(objc_msgSend(finish, "error"), "code") == -204) || objc_msgSend(objc_msgSend(objc_msgSend(finish, "error"), "domain"), "isEqualToString:", @"RPErrorDomain") && objc_msgSend(objc_msgSend(finish, "error"), "code") == -6753);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000079A0;
    block[3] = &unk_1000146A8;
    block[4] = self;
    v8 = v6;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    [NSException raise:NSInternalInconsistencyException format:@"%@ ContinuityCapture error : Invalid active requests", self];
    objc_sync_exit(self);
  }
}

- (void)receivedItems:(id)items
{
  v55 = 0;
  if (dword_100019EC8)
  {
    v54 = 0;
    v53 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v4 = [items countByEnumeratingWithState:&v48 objects:v47 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v49;
    v7 = kCMContinuityCaptureSidecarItemTypeMacName;
    v39 = kCMContinuityCaptureSidecarItemTypeSessionGID;
    v40 = kCMContinuityCaptureSidecarItemTypeStreamConfiguration;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v49 != v6)
        {
          objc_enumerationMutation(items);
        }

        v9 = *(*(&v48 + 1) + 8 * i);
        objectValue = [v9 objectValue];
        if ([objc_msgSend(v9 "type")])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {

            self->_macName = objectValue;
            if (!dword_100019EC8)
            {
              continue;
            }

            v54 = 0;
            v53 = OS_LOG_TYPE_DEFAULT;
            v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v12 = v54;
            v13 = v53;
            if (os_log_type_enabled(v11, v53))
            {
              v14 = v12;
            }

            else
            {
              v14 = v12 & 0xFFFFFFFE;
            }

            if (v14)
            {
              macName = self->_macName;
              v43 = 136315394;
              v44 = "[ContinuityCaptureViewController receivedItems:]";
              v45 = 2112;
              v46 = macName;
              LODWORD(v37) = 22;
              _os_log_send_and_compose_impl(v14, 0, v52, 128, &_mh_execute_header, v11, v13, "<<<< ContinuityCaptureViewController >>>> %s: Received Mac Name: %@", &v43, v37);
            }

            goto LABEL_46;
          }
        }

        if ([objc_msgSend(v9 "type")])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = objc_opt_class();
            objc_sync_enter(v16);

            v17 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:objectValue error:&v55];
            self->_configForPreStreamStart = v17;
            if (v17)
            {
              v18 = v17;
              if (dword_100019EC8)
              {
                v54 = 0;
                v53 = OS_LOG_TYPE_DEFAULT;
                v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v20 = v54;
                v21 = v53;
                if (os_log_type_enabled(v19, v53))
                {
                  v22 = v20;
                }

                else
                {
                  v22 = v20 & 0xFFFFFFFE;
                }

                if (v22)
                {
                  configForPreStreamStart = self->_configForPreStreamStart;
                  v43 = 136315394;
                  v44 = "[ContinuityCaptureViewController receivedItems:]";
                  v45 = 2112;
                  v46 = configForPreStreamStart;
                  LODWORD(v37) = 22;
                  _os_log_send_and_compose_impl(v22, 0, v52, 128, &_mh_execute_header, v19, v21, "<<<< ContinuityCaptureViewController >>>> %s: Received _configForPreStreamStart %@ ", &v43, v37);
                }

                goto LABEL_47;
              }
            }

            else
            {
              v54 = 0;
              v53 = OS_LOG_TYPE_DEFAULT;
              v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v34 = v54;
              v35 = v53;
              if (os_log_type_enabled(v33, v53))
              {
                v36 = v34;
              }

              else
              {
                v36 = v34 & 0xFFFFFFFE;
              }

              if (v36)
              {
                v43 = 136315394;
                v44 = "[ContinuityCaptureViewController receivedItems:]";
                v45 = 2112;
                v46 = v55;
                LODWORD(v37) = 22;
                _os_log_send_and_compose_impl(v36, 0, v52, 128, &_mh_execute_header, v33, v35, "<<<< ContinuityCaptureViewController >>>> %s: unarchivedObjectOfClass _configForPreStreamStart error: %@", &v43, v37);
              }

LABEL_47:
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            objc_sync_exit(v16);
            continue;
          }
        }

        if (![objc_msgSend(v9 "type")])
        {
          v54 = 0;
          v53 = OS_LOG_TYPE_DEFAULT;
          v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v29 = v54;
          v30 = v53;
          if (os_log_type_enabled(v28, v53))
          {
            v31 = v29;
          }

          else
          {
            v31 = v29 & 0xFFFFFFFE;
          }

          if (v31)
          {
            type = [v9 type];
            v43 = 136315394;
            v44 = "[ContinuityCaptureViewController receivedItems:]";
            v45 = 2112;
            v46 = type;
            LODWORD(v37) = 22;
            _os_log_send_and_compose_impl(v31, 0, v52, 128, &_mh_execute_header, v28, v30, "<<<< ContinuityCaptureViewController >>>> %s: Unexpected type: %@", &v43, v37);
          }

LABEL_46:
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          continue;
        }

        if (dword_100019EC8)
        {
          v54 = 0;
          v53 = OS_LOG_TYPE_DEFAULT;
          v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v25 = v54;
          v26 = v53;
          if (os_log_type_enabled(v24, v53))
          {
            v27 = v25;
          }

          else
          {
            v27 = v25 & 0xFFFFFFFE;
          }

          if (v27)
          {
            v43 = 136315394;
            v44 = "[ContinuityCaptureViewController receivedItems:]";
            v45 = 2112;
            v46 = objectValue;
            LODWORD(v37) = 22;
            _os_log_send_and_compose_impl(v27, 0, v52, 128, &_mh_execute_header, v24, v26, "<<<< ContinuityCaptureViewController >>>> %s: Received SessionID: %@", &v43, v37);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          self->_sessionID = [objectValue unsignedLongLongValue];
        }
      }

      v5 = [items countByEnumeratingWithState:&v48 objects:v47 count:16];
    }

    while (v5);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008274;
  block[3] = &unk_100014720;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)sidecarServiceActive
{
  if (dword_100019EC8)
  {
    v5 = 0;
    v4 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(ContinuityCaptureViewController *)self setBackgroundStyle:4];
}

- (void)_setConnectionInterruptTimer
{
  if (!self->_connectionInterruptTimer)
  {
    if (dword_100019EC8)
    {
      v10 = 0;
      v9 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x2020000000;
    v8 = 5;
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, 0);
    self->_connectionInterruptTimer = v4;
    dispatch_source_set_timer(v4, 0, 0x77359400uLL, 0);
    connectionInterruptTimer = self->_connectionInterruptTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100008598;
    handler[3] = &unk_100014748;
    handler[4] = self;
    handler[5] = v7;
    dispatch_source_set_event_handler(connectionInterruptTimer, handler);
    dispatch_resume(self->_connectionInterruptTimer);
    _Block_object_dispose(v7, 8);
  }
}

- (void)_terminate
{
  if (self->_pendingDisconnectDialogue)
  {
    if (dword_100019EC8)
    {
      v16 = 0;
      v15 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    self->_isTerminating = 1;
    if (dword_100019EC8)
    {
      v16 = 0;
      v15 = OS_LOG_TYPE_DEFAULT;
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    dispatch_assert_queue_V2(&_dispatch_main_q);
    FigCaptureSessionRemoteSetWombatEnabled();
    FigCaptureSessionRemoteSetWombatInUse();
    [(CMContinuityCaptureSidecarServer *)self->_requestServer cancel];
    connectionInterruptTimer = self->_connectionInterruptTimer;
    if (connectionInterruptTimer)
    {
      dispatch_source_cancel(connectionInterruptTimer);

      self->_connectionInterruptTimer = 0;
    }

    [+[ContinuityCaptureRemoteUISystemStatus sharedInstance](ContinuityCaptureRemoteUISystemStatus releaseCurrentIdleSleepAssertion];
    [+[ContinuityCaptureShieldUIBackgroundActivityManager sharedInstance](ContinuityCaptureShieldUIBackgroundActivityManager updateState:"updateState:", 16];
    if (dword_100019EC8)
    {
      v16 = 0;
      v15 = OS_LOG_TYPE_DEFAULT;
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v7 = v16;
      v8 = v15;
      if (os_log_type_enabled(v6, v15))
      {
        v9 = v7;
      }

      else
      {
        v9 = v7 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v10 = 136315394;
        v11 = "[ContinuityCaptureViewController _terminate]";
        v12 = 2048;
        selfCopy = self;
        _os_log_send_and_compose_impl(v9, 0, v14, 128, &_mh_execute_header, v6, v8, "<<<< ContinuityCaptureViewController >>>> %s: <%p complete request", &v10, 22);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(ContinuityCaptureViewController *)self completeRequest:1];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  selfCopy = self;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008BB4;
  block[3] = &unk_100014770;
  block[4] = self;
  block[5] = path;
  block[6] = object;
  block[7] = change;
  block[8] = context;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (dword_100019EC8)
  {
    v59 = 0;
    v58 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([path isEqualToString:CMContinuityCaptureRemoteCompositeStateKVOKey])
  {
    v12 = [objc_msgSend(change objectForKeyedSubscript:{NSKeyValueChangeNewKey), "integerValue"}];
    if (dword_100019EC8)
    {
      v59 = 0;
      v58 = OS_LOG_TYPE_DEFAULT;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v14 = v59;
      v15 = v58;
      if (os_log_type_enabled(v13, v58))
      {
        v16 = v14;
      }

      else
      {
        v16 = v14 & 0xFFFFFFFE;
      }

      if (v16)
      {
        v51 = 136315650;
        v52 = "[ContinuityCaptureViewController _observeValueForKeyPath:ofObject:change:context:]";
        v53 = 2048;
        selfCopy5 = self;
        v55 = 1024;
        LODWORD(v56) = v12;
        LODWORD(v43) = 28;
        _os_log_send_and_compose_impl(v16, 0, v57, 128, &_mh_execute_header, v13, v15, "<<<< ContinuityCaptureViewController >>>> %s: <%p> State : %d", &v51, v43, LODWORD(v44.receiver));
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100009488;
    v50[3] = &unk_100014720;
    v50[4] = self;
    [+[ContinuityCaptureShieldUIBackgroundActivityManager sharedInstance](ContinuityCaptureShieldUIBackgroundActivityManager updateState:"updateState:withUserInteractionHandler:" withUserInteractionHandler:v12, v50];
    if (v12)
    {
      self->_uiState = 2;
      FigCaptureSessionRemoteSetWombatInUse();
      FigCaptureSessionRemoteSetWombatEnabled();
    }

    else
    {
      if ((v12 & 8) == 0)
      {
        if ((v12 & 0x10) != 0)
        {
          [(ContinuityCaptureViewController *)self _terminate];
        }

        else
        {
          self->_uiState = 1;
          [(ContinuityCaptureViewController *)self _updateUI];
          FigCaptureSessionRemoteSetWombatInUse();
          FigCaptureSessionRemoteSetWombatEnabled();
        }

LABEL_30:
        v22 = v12 & 6;
        if (v22 == 2)
        {
          self->_connectionType = 1;
          [(ContinuityCaptureViewController *)self _updateUI];
        }

        else
        {
          self->_connectionType = 0;
          [(ContinuityCaptureViewController *)self _updateUI];
          if (!v22)
          {
            return;
          }
        }

        layoutMonitor = self->_layoutMonitor;
        if (!layoutMonitor || ![(FBSDisplayLayoutMonitor *)layoutMonitor currentLayout])
        {
          goto LABEL_69;
        }

        if (dword_100019EC8)
        {
          v59 = 0;
          v58 = OS_LOG_TYPE_DEFAULT;
          v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v25 = v59;
          v26 = v58;
          if (os_log_type_enabled(v24, v58))
          {
            v27 = v25;
          }

          else
          {
            v27 = v25 & 0xFFFFFFFE;
          }

          if (v27)
          {
            currentLayout = [(FBSDisplayLayoutMonitor *)self->_layoutMonitor currentLayout];
            v51 = 136315650;
            v52 = "[ContinuityCaptureViewController _observeValueForKeyPath:ofObject:change:context:]";
            v53 = 2048;
            selfCopy5 = self;
            v55 = 2114;
            v56 = currentLayout;
            LODWORD(v43) = 32;
            _os_log_send_and_compose_impl(v27, 0, v57, 128, &_mh_execute_header, v24, v26, "<<<< ContinuityCaptureViewController >>>> %s: <%p> Evaluate current layout %{public}@", &v51, v43);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v29 = [-[FBSDisplayLayoutMonitor currentLayout](self->_layoutMonitor "currentLayout")];
        v30 = [v29 countByEnumeratingWithState:&v46 objects:v45 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v47;
LABEL_45:
          v33 = 0;
          while (1)
          {
            if (*v47 != v32)
            {
              objc_enumerationMutation(v29);
            }

            if ([objc_msgSend(*(*(&v46 + 1) + 8 * v33) "bundleIdentifier")])
            {
              break;
            }

            if (v31 == ++v33)
            {
              v31 = [v29 countByEnumeratingWithState:&v46 objects:v45 count:16];
              if (v31)
              {
                goto LABEL_45;
              }

              goto LABEL_51;
            }
          }
        }

        else
        {
LABEL_51:
          if (!self->_pendingStreamStartAfterResumeEvent && !self->_firstSidecarLayoutReceived)
          {
            if (dword_100019EC8)
            {
              v59 = 0;
              v58 = OS_LOG_TYPE_DEFAULT;
              v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v40 = v59;
              v41 = v58;
              if (os_log_type_enabled(v39, v58))
              {
                v42 = v40;
              }

              else
              {
                v42 = v40 & 0xFFFFFFFE;
              }

              if (v42)
              {
                v51 = 136315394;
                v52 = "[ContinuityCaptureViewController _observeValueForKeyPath:ofObject:change:context:]";
                v53 = 2048;
                selfCopy5 = self;
                LODWORD(v43) = 22;
                _os_log_send_and_compose_impl(v42, 0, v57, 128, &_mh_execute_header, v39, v41, "<<<< ContinuityCaptureViewController >>>> %s: <%p> enforce pause since sidecar is missing in current layout", &v51, v43);
              }

              goto LABEL_68;
            }

LABEL_69:
            self->_pendingStreamStartAfterResumeEvent = 0;
            return;
          }
        }

        if (dword_100019EC8)
        {
          v59 = 0;
          v58 = OS_LOG_TYPE_DEFAULT;
          v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v35 = v59;
          v36 = v58;
          if (os_log_type_enabled(v34, v58))
          {
            v37 = v35;
          }

          else
          {
            v37 = v35 & 0xFFFFFFFE;
          }

          if (v37)
          {
            pendingStreamStartAfterResumeEvent = self->_pendingStreamStartAfterResumeEvent;
            v51 = 136315650;
            v52 = "[ContinuityCaptureViewController _observeValueForKeyPath:ofObject:change:context:]";
            v53 = 2048;
            selfCopy5 = self;
            v55 = 1024;
            LODWORD(v56) = pendingStreamStartAfterResumeEvent;
            LODWORD(v43) = 28;
            _os_log_send_and_compose_impl(v37, 0, v57, 128, &_mh_execute_header, v34, v36, "<<<< ContinuityCaptureViewController >>>> %s: <%p> stream session started with sidecar app in current layout or _pendingStreamStartAfterResumeEvent %d", &v51, v43);
          }

LABEL_68:
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          goto LABEL_69;
        }

        goto LABEL_69;
      }

      self->_uiState = 0;
    }

    [(ContinuityCaptureViewController *)self _updateUI];
    goto LABEL_30;
  }

  if ([path isEqualToString:CMContinuityCaptureSystemStatusPowerButtonPressedKVOKey])
  {
    if (![objc_msgSend(change objectForKeyedSubscript:{NSKeyValueChangeNewKey), "BOOLValue"}])
    {
      return;
    }

    if (dword_100019EC8)
    {
      v59 = 0;
      v58 = OS_LOG_TYPE_DEFAULT;
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v18 = v59;
      v19 = v58;
      if (os_log_type_enabled(v17, v58))
      {
        v20 = v18;
      }

      else
      {
        v20 = v18 & 0xFFFFFFFE;
      }

      if (v20)
      {
        v51 = 136315394;
        v52 = "[ContinuityCaptureViewController _observeValueForKeyPath:ofObject:change:context:]";
        v53 = 2048;
        selfCopy5 = self;
        _os_log_send_and_compose_impl(v20, 0, v57, 128, &_mh_execute_header, v17, v19, "<<<< ContinuityCaptureViewController >>>> %s: <%p> power button pressed", &v51, 22);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v21 = 56;
  }

  else
  {
    if (![path isEqualToString:CMContinuityCaptureCallStateKVOKey])
    {
      v44.receiver = self;
      v44.super_class = ContinuityCaptureViewController;
      [(ContinuityCaptureViewController *)&v44 observeValueForKeyPath:path ofObject:object change:change context:context];
      return;
    }

    if ([objc_msgSend(change objectForKeyedSubscript:{NSKeyValueChangeNewKey), "integerValue"}] != 2)
    {
      return;
    }

    v21 = 154;
  }

  self->SidecarServiceViewController_opaque[v21] = 1;
  [(ContinuityCaptureViewController *)self _resolveUserPauseState];
}

- (void)_handleLayout:(id)layout ignoringStandby:(BOOL)standby
{
  standbyCopy = standby;
  if (dword_100019EC8)
  {
    v88 = 0;
    v87 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  sidecarLayoutValue = self->_sidecarLayoutValue;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (!layout)
  {
    if (!dword_100019EC8)
    {
      return;
    }

    v88 = 0;
    v87 = OS_LOG_TYPE_DEFAULT;
    v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v30 = v88;
    v31 = v87;
    if (os_log_type_enabled(v29, v87))
    {
      v32 = v30;
    }

    else
    {
      v32 = v30 & 0xFFFFFFFE;
    }

    if (v32)
    {
      v80 = 136315394;
      v81 = "[ContinuityCaptureViewController _handleLayout:ignoringStandby:]";
      v82 = 2048;
      selfCopy8 = self;
      _os_log_send_and_compose_impl(v32, 0, v86, 128, &_mh_execute_header, v29, v31, "<<<< ContinuityCaptureViewController >>>> %s: <%p> Ignoring nil layout", &v80, 22);
    }

LABEL_85:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return;
  }

  if (![layout displayBacklightLevel])
  {
    if (!dword_100019EC8)
    {
      return;
    }

    v88 = 0;
    v87 = OS_LOG_TYPE_DEFAULT;
    v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v34 = v88;
    v35 = v87;
    if (os_log_type_enabled(v33, v87))
    {
      v36 = v34;
    }

    else
    {
      v36 = v34 & 0xFFFFFFFE;
    }

    if (v36)
    {
      v80 = 136315394;
      v81 = "[ContinuityCaptureViewController _handleLayout:ignoringStandby:]";
      v82 = 2048;
      selfCopy8 = self;
      _os_log_send_and_compose_impl(v36, 0, v86, 128, &_mh_execute_header, v33, v35, "<<<< ContinuityCaptureViewController >>>> %s: <%p> Ignoring layout with minimum (0) backlight level.", &v80, 22);
    }

    goto LABEL_85;
  }

  v79 = FBSDisplayLayoutElementSiriIdentifier;
  v8 = [NSArray arrayWithObjects:&v79 count:1];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = [layout elements];
  v9 = [obj countByEnumeratingWithState:&v75 objects:v74 count:16];
  if (v9)
  {
    v10 = v9;
    v63 = sidecarLayoutValue;
    layoutCopy = layout;
    v62 = 80;
    selfCopy3 = self;
    v66 = 0;
    level = -1;
    v11 = *v76;
    v12 = SBSDisplayLayoutElementStandByIdentifier;
    v67 = FBSDisplayLayoutElementLockScreenIdentifier;
    v65 = SBSDisplayLayoutElementHomeScreenIdentifier;
    level2 = -1;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v76 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v75 + 1) + 8 * i);
        if (-[NSArray containsObject:](v8, "containsObject:", [v14 identifier]))
        {
          if (dword_100019EC8)
          {
            v88 = 0;
            v87 = OS_LOG_TYPE_DEFAULT;
            v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v16 = v88;
            v17 = v87;
            if (os_log_type_enabled(v15, v87))
            {
              v18 = v16;
            }

            else
            {
              v18 = v16 & 0xFFFFFFFE;
            }

            if (v18)
            {
              identifier = [v14 identifier];
              v80 = 136315650;
              v81 = "[ContinuityCaptureViewController _handleLayout:ignoringStandby:]";
              v82 = 2048;
              selfCopy8 = selfCopy3;
              v84 = 2112;
              v85 = identifier;
              LODWORD(v61) = 32;
              _os_log_send_and_compose_impl(v18, 0, v86, 128, &_mh_execute_header, v15, v17, "<<<< ContinuityCaptureViewController >>>> %s: <%p> Ignoring %@ in layout", &v80, v61);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        else
        {
          if ([objc_msgSend(v14 "identifier")])
          {
            v20 = !standbyCopy;
          }

          else
          {
            v20 = 1;
          }

          if (v20)
          {
            if ([v14 level] > level)
            {
              level = [v14 level];
            }

            if ([objc_msgSend(v14 "bundleIdentifier")])
            {
              level2 = [v14 level];
            }

            else if ([objc_msgSend(v14 "identifier")])
            {
              HIDWORD(v66) = 1;
            }

            else if ([objc_msgSend(v14 "identifier")])
            {
              LOBYTE(v66) = ([objc_msgSend(layoutCopy "elements")] == 1) | v66;
            }
          }

          else
          {
            if (dword_100019EC8)
            {
              v88 = 0;
              v87 = OS_LOG_TYPE_DEFAULT;
              v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v22 = v88;
              v23 = v87;
              if (os_log_type_enabled(v21, v87))
              {
                v24 = v22;
              }

              else
              {
                v24 = v22 & 0xFFFFFFFE;
              }

              if (v24)
              {
                identifier2 = [v14 identifier];
                v80 = 136315650;
                v81 = "[ContinuityCaptureViewController _handleLayout:ignoringStandby:]";
                v82 = 2048;
                selfCopy8 = selfCopy3;
                v84 = 2112;
                v85 = identifier2;
                LODWORD(v61) = 32;
                _os_log_send_and_compose_impl(v24, 0, v86, 128, &_mh_execute_header, v21, v23, "<<<< ContinuityCaptureViewController >>>> %s: <%p> Ignoring %@ in layout in case of transition - will retry in 2s without ignoring", &v80, v61);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v26 = dispatch_time(0, 2000000000);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10000A2FC;
            block[3] = &unk_100014630;
            block[4] = selfCopy3;
            block[5] = v14;
            dispatch_after(v26, &_dispatch_main_q, block);
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v75 objects:v74 count:16];
    }

    while (v10);
    v27 = 1;
    v28 = level2;
    self = selfCopy3;
    if (level2 != -1)
    {
      selfCopy3->_firstSidecarLayoutReceived = 1;
      v27 = 0;
    }

    sidecarLayoutValue = v63;
    v37 = HIDWORD(v66);
  }

  else
  {
    v37 = 0;
    LOBYTE(v66) = 0;
    v28 = -1;
    v27 = 1;
    level = -1;
  }

  if (!self->_firstSidecarLayoutReceived)
  {
    if (!dword_100019EC8)
    {
      return;
    }

    v88 = 0;
    v87 = OS_LOG_TYPE_DEFAULT;
    v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v43 = v88;
    v44 = v87;
    if (os_log_type_enabled(v42, v87))
    {
      v45 = v43;
    }

    else
    {
      v45 = v43 & 0xFFFFFFFE;
    }

    if (v45)
    {
      v80 = 136315394;
      v81 = "[ContinuityCaptureViewController _handleLayout:ignoringStandby:]";
      v82 = 2048;
      selfCopy8 = self;
      LODWORD(v61) = 22;
      _os_log_send_and_compose_impl(v45, 0, v86, 128, &_mh_execute_header, v42, v44, "<<<< ContinuityCaptureViewController >>>> %s: <%p> Ignoring layout. Haven't received first layout with Sidecar in it.", &v80, v61);
    }

    goto LABEL_85;
  }

  if ((v27 & v37) == 1)
  {
    if (!dword_100019EC8)
    {
      return;
    }

    v88 = 0;
    v87 = OS_LOG_TYPE_DEFAULT;
    v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v39 = v88;
    v40 = v87;
    if (os_log_type_enabled(v38, v87))
    {
      v41 = v39;
    }

    else
    {
      v41 = v39 & 0xFFFFFFFE;
    }

    if (v41)
    {
      v80 = 136315394;
      v81 = "[ContinuityCaptureViewController _handleLayout:ignoringStandby:]";
      v82 = 2048;
      selfCopy8 = self;
      LODWORD(v61) = 22;
      _os_log_send_and_compose_impl(v41, 0, v86, 128, &_mh_execute_header, v38, v40, "<<<< ContinuityCaptureViewController >>>> %s: <%p> Ignoring layout. On Lock Screen without Sidecar.", &v80, v61);
    }

    goto LABEL_85;
  }

  if (!self->_ignoreLayoutUpdatesAfterDeviceUnlock)
  {
    goto LABEL_89;
  }

  if ((v66 & 1) == 0)
  {
    if (!dword_100019EC8)
    {
      return;
    }

    v88 = 0;
    v87 = OS_LOG_TYPE_DEFAULT;
    v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v51 = v88;
    v52 = v87;
    if (os_log_type_enabled(v50, v87))
    {
      v53 = v51;
    }

    else
    {
      v53 = v51 & 0xFFFFFFFE;
    }

    if (v53)
    {
      v80 = 136315394;
      v81 = "[ContinuityCaptureViewController _handleLayout:ignoringStandby:]";
      v82 = 2048;
      selfCopy8 = self;
      LODWORD(v61) = 22;
      _os_log_send_and_compose_impl(v53, 0, v86, 128, &_mh_execute_header, v50, v52, "<<<< ContinuityCaptureViewController >>>> %s: <%p> Ignoring layout. Interstitial updates after device unlock.", &v80, v61);
    }

    goto LABEL_85;
  }

  self->_ignoreLayoutUpdatesAfterDeviceUnlock = 0;
  if (dword_100019EC8)
  {
    v88 = 0;
    v87 = OS_LOG_TYPE_DEFAULT;
    v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v47 = v88;
    v48 = v87;
    if (os_log_type_enabled(v46, v87))
    {
      v49 = v47;
    }

    else
    {
      v49 = v47 & 0xFFFFFFFE;
    }

    if (v49)
    {
      v80 = 136315394;
      v81 = "[ContinuityCaptureViewController _handleLayout:ignoringStandby:]";
      v82 = 2048;
      selfCopy8 = self;
      LODWORD(v61) = 22;
      _os_log_send_and_compose_impl(v49, 0, v86, 128, &_mh_execute_header, v46, v48, "<<<< ContinuityCaptureViewController >>>> %s: <%p> Layout updates after device unlock complete. Resume layout handling.", &v80, v61);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_89:
    v55 = dword_100019EC8;
    v54 = v28 >= level;
    self->_sidecarLayoutValue = v54;
    if (v55)
    {
      v88 = 0;
      v87 = OS_LOG_TYPE_DEFAULT;
      v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v57 = v88;
      v58 = v87;
      if (os_log_type_enabled(v56, v87))
      {
        v59 = v57;
      }

      else
      {
        v59 = v57 & 0xFFFFFFFE;
      }

      if (v59)
      {
        v60 = self->_sidecarLayoutValue;
        v80 = 136315650;
        v81 = "[ContinuityCaptureViewController _handleLayout:ignoringStandby:]";
        v82 = 2048;
        selfCopy8 = self;
        v84 = 1024;
        LODWORD(v85) = v60;
        LODWORD(v61) = 28;
        _os_log_send_and_compose_impl(v59, 0, v86, 128, &_mh_execute_header, v56, v58, "<<<< ContinuityCaptureViewController >>>> %s: <%p> Sidecar layout value: %d", &v80, v61, v62);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v54 = self->_sidecarLayoutValue;
    }

    goto LABEL_96;
  }

  v54 = v28 >= level;
  self->_sidecarLayoutValue = v54;
LABEL_96:
  if (sidecarLayoutValue != v54)
  {
    [(ContinuityCaptureViewController *)self _resolveUserPauseState];
  }
}

- (void)_resolveUserPauseState
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (dword_100019EC8)
  {
    v16 = 0;
    v15 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  continuityCaptureDevice = self->_continuityCaptureDevice;
  if (continuityCaptureDevice)
  {
    if (self->_inactive)
    {
      [(CMContinuityCaptureRemoteCompositeDevice *)continuityCaptureDevice postEvent:kCMContinuityCaptureEventUserPause entity:0 data:0];
LABEL_25:
      self->_sideButtonPressed = 0;
      self->_incomingCallDeclined = 0;
      return;
    }

    if (self->_sideButtonPressed)
    {
LABEL_13:
      if (!self->_incomingCall && self->_firstSidecarLayoutReceived)
      {
        [(CMContinuityCaptureRemoteCompositeDevice *)continuityCaptureDevice postEvent:kCMContinuityCaptureEventUserResume entity:0 data:0];
        self->_pendingStreamStartAfterResumeEvent = 1;
      }

      goto LABEL_25;
    }

    if (self->_incomingCallDeclined)
    {
      if (!self->_pauseButtonPressed)
      {
        goto LABEL_13;
      }
    }

    else if (!self->_pauseButtonPressed && self->_sidecarLayoutValue)
    {
      v9 = &kCMContinuityCaptureEventUserResume;
LABEL_24:
      [(CMContinuityCaptureRemoteCompositeDevice *)continuityCaptureDevice postEvent:*v9 entity:0 data:0];
      goto LABEL_25;
    }

    v9 = &kCMContinuityCaptureEventUserPause;
    goto LABEL_24;
  }

  if (dword_100019EC8)
  {
    v16 = 0;
    v15 = OS_LOG_TYPE_DEFAULT;
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v6 = v16;
    v7 = v15;
    if (os_log_type_enabled(v5, v15))
    {
      v8 = v6;
    }

    else
    {
      v8 = v6 & 0xFFFFFFFE;
    }

    if (v8)
    {
      v10 = 136315394;
      v11 = "[ContinuityCaptureViewController _resolveUserPauseState]";
      v12 = 2048;
      selfCopy = self;
      _os_log_send_and_compose_impl(v8, 0, v14, 128, &_mh_execute_header, v5, v7, "<<<< ContinuityCaptureViewController >>>> %s: <%p> Skip since continuity capture session is not initialized", &v10, 22);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)deviceLockStateMonitor:(id)monitor didUpdateDeviceLockState:(BOOL)state
{
  if (self->_deviceIsLocked != state)
  {
    if (dword_100019EC8)
    {
      v9 = 0;
      v8 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    self->_deviceIsLocked = state;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A9BC;
    block[3] = &unk_100014720;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_disconnectSession
{
  if (dword_100019EC8)
  {
    v7 = 0;
    v6 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  dispatch_assert_queue_V2(&_dispatch_main_q);
  self->_pendingDisconnectDialogue = 0;
  self->_userDisconnect = 1;
  [(CMContinuityCaptureRemoteCompositeDevice *)self->_continuityCaptureDevice postEvent:kCMContinuityCaptureEventUserDisconnect entity:0 data:0];
  v4 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AD10;
  block[3] = &unk_100014720;
  block[4] = self;
  dispatch_after(v4, &_dispatch_main_q, block);
}

@end