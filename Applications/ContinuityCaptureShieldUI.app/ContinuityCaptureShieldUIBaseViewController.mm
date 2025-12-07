@interface ContinuityCaptureShieldUIBaseViewController
+ (BOOL)_refreshConnectionType;
+ (BOOL)_refreshUIState;
- (ContinuityCaptureShieldUIBaseViewController)initWithSceneSessionRole:(id)role;
- (void)_tearDownShield;
- (void)dealloc;
- (void)disconnectSession;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)tearDownShield;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ContinuityCaptureShieldUIBaseViewController

+ (BOOL)_refreshUIState
{
  v3 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  activeConfiguration = [v3 activeConfiguration];

  if (!activeConfiguration)
  {
    v13 = 0;
    goto LABEL_18;
  }

  compositeState = [activeConfiguration compositeState];
  v6 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  uiState = [v6 uiState];

  placementStepSkipped = [activeConfiguration placementStepSkipped];
  v9 = placementStepSkipped;
  if (placementStepSkipped && ([placementStepSkipped BOOLValue] & 1) == 0)
  {
    v10 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    v11 = v10;
    v12 = 5;
    goto LABEL_15;
  }

  if (compositeState)
  {
    v10 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    v11 = v10;
    v12 = 2;
    goto LABEL_15;
  }

  if ((compositeState & 8) != 0)
  {
    v10 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    v11 = v10;
    v12 = 0;
    goto LABEL_15;
  }

  if ((compositeState & 0x10) != 0)
  {
    v10 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    v11 = v10;
    goto LABEL_14;
  }

  v10 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  v11 = v10;
  if (!compositeState)
  {
LABEL_14:
    v12 = 4;
    goto LABEL_15;
  }

  v12 = 1;
LABEL_15:
  [v10 setUiState:v12];

  v14 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  uiState2 = [v14 uiState];
  v13 = uiState != uiState2;

  v17 = sub_100006DC0(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = uiState != uiState2;
    v19 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    v21 = 136316162;
    v22 = "+[ContinuityCaptureShieldUIBaseViewController _refreshUIState]";
    v23 = 2112;
    selfCopy = self;
    v25 = 1024;
    v26 = uiState;
    v27 = 1024;
    uiState3 = [v19 uiState];
    v29 = 1024;
    v30 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: %@ updated uiState (%d -> %d) refresh %d", &v21, 0x28u);
  }

LABEL_18:
  return v13;
}

+ (BOOL)_refreshConnectionType
{
  v3 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  activeConfiguration = [v3 activeConfiguration];

  if (activeConfiguration)
  {
    compositeState = [activeConfiguration compositeState];
    v6 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    connectionType = [v6 connectionType];

    if ((compositeState & 6) == 2)
    {
      v8 = +[CMContinuityCaptureUIStateTracker sharedInstance];
      v9 = v8;
      v10 = 1;
    }

    else
    {
      v8 = +[CMContinuityCaptureUIStateTracker sharedInstance];
      v9 = v8;
      if ((compositeState & 4) != 0)
      {
        v10 = 2;
      }

      else
      {
        v10 = 0;
      }
    }

    [v8 setConnectionType:v10];

    v12 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    connectionType2 = [v12 connectionType];
    v11 = connectionType != connectionType2;

    v15 = sub_100006DC0(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = connectionType != connectionType2;
      v17 = +[CMContinuityCaptureUIStateTracker sharedInstance];
      v19 = 136316162;
      v20 = "+[ContinuityCaptureShieldUIBaseViewController _refreshConnectionType]";
      v21 = 2112;
      selfCopy = self;
      v23 = 1024;
      v24 = connectionType;
      v25 = 1024;
      connectionType3 = [v17 connectionType];
      v27 = 1024;
      v28 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: %@ updated connectionType (%d -> %d) refresh %d", &v19, 0x28u);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (ContinuityCaptureShieldUIBaseViewController)initWithSceneSessionRole:(id)role
{
  roleCopy = role;
  v17.receiver = self;
  v17.super_class = ContinuityCaptureShieldUIBaseViewController;
  v6 = [(ContinuityCaptureShieldUIBaseViewController *)&v17 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    v8 = sub_100006DC0(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = 136315394;
      v14 = "[ContinuityCaptureShieldUIBaseViewController initWithSceneSessionRole:]";
      v15 = 2048;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: <%p> Called", &v13, 0x16u);
    }

    objc_storeStrong(&v7->_sessionRole, role);
    v9 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    [v9 addObserver:v7 forKeyPath:CMContinuityCaptureUIStateTrackerActiveKVOKey options:3 context:0];

    v10 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    [v10 addObserver:v7 forKeyPath:CMContinuityCaptureUIStateTrackerActiveConfigurationKVOKey options:3 context:0];

    v11 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    [v11 addObserver:v7 forKeyPath:CMContinuityCaptureUIStateTrackerActiveFaceTimeContinuitySessionKVOKey options:3 context:0];

    atomic_store(1u, &v7->_observingKVO);
  }

  return v7;
}

- (void)dealloc
{
  v3 = sub_100006DC0(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v10 = "[ContinuityCaptureShieldUIBaseViewController dealloc]";
    v11 = 2048;
    selfCopy = self;
    v13 = 2080;
    v14 = "[ContinuityCaptureShieldUIBaseViewController dealloc]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: <%p> %s", buf, 0x20u);
  }

  v4 = atomic_load(&self->_observingKVO);
  if (v4)
  {
    v5 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    [v5 removeObserver:self forKeyPath:CMContinuityCaptureUIStateTrackerActiveKVOKey context:0];

    v6 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    [v6 removeObserver:self forKeyPath:CMContinuityCaptureUIStateTrackerActiveConfigurationKVOKey context:0];

    v7 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    [v7 removeObserver:self forKeyPath:CMContinuityCaptureUIStateTrackerActiveFaceTimeContinuitySessionKVOKey context:0];

    atomic_store(0, &self->_observingKVO);
  }

  v8.receiver = self;
  v8.super_class = ContinuityCaptureShieldUIBaseViewController;
  [(ContinuityCaptureShieldUIBaseViewController *)&v8 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = ContinuityCaptureShieldUIBaseViewController;
  [(ContinuityCaptureShieldUIBaseViewController *)&v3 viewDidLoad];
  [(ContinuityCaptureShieldUIBaseViewController *)self updateUI];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = sub_100006DC0(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "[ContinuityCaptureShieldUIBaseViewController viewWillAppear:]";
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: <%p> Called", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = ContinuityCaptureShieldUIBaseViewController;
  [(ContinuityCaptureShieldUIBaseViewController *)&v6 viewWillAppear:appearCopy];
  [(ContinuityCaptureShieldUIBaseViewController *)self updateUI];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = sub_100006DC0(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "[ContinuityCaptureShieldUIBaseViewController viewDidAppear:]";
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: <%p> Called", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = ContinuityCaptureShieldUIBaseViewController;
  [(ContinuityCaptureShieldUIBaseViewController *)&v6 viewDidAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = sub_100006DC0(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "[ContinuityCaptureShieldUIBaseViewController viewWillDisappear:]";
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: <%p> Called", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = ContinuityCaptureShieldUIBaseViewController;
  [(ContinuityCaptureShieldUIBaseViewController *)&v6 viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = sub_100006DC0(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "[ContinuityCaptureShieldUIBaseViewController viewDidDisappear:]";
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: <%p> Called", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = ContinuityCaptureShieldUIBaseViewController;
  [(ContinuityCaptureShieldUIBaseViewController *)&v6 viewDidDisappear:disappearCopy];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:CMContinuityCaptureUIStateTrackerActiveKVOKey])
  {
    v13 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
    if ([v13 BOOLValue])
    {
    }

    else
    {
      v15 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeOldKey];
      bOOLValue = [v15 BOOLValue];

      if (bOOLValue)
      {
        [(ContinuityCaptureShieldUIBaseViewController *)self tearDownShield];
      }
    }
  }

  else
  {
    if ([pathCopy isEqualToString:CMContinuityCaptureUIStateTrackerActiveConfigurationKVOKey])
    {
      +[ContinuityCaptureShieldUIBaseViewController _refreshUIState];
      +[ContinuityCaptureShieldUIBaseViewController _refreshConnectionType];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100002D74;
      v19[3] = &unk_100018540;
      v19[4] = self;
      v14 = v19;
    }

    else
    {
      if (![pathCopy isEqualToString:CMContinuityCaptureUIStateTrackerActiveFaceTimeContinuitySessionKVOKey])
      {
        v17.receiver = self;
        v17.super_class = ContinuityCaptureShieldUIBaseViewController;
        [(ContinuityCaptureShieldUIBaseViewController *)&v17 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
        goto LABEL_12;
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100002E0C;
      block[3] = &unk_100018540;
      block[4] = self;
      v14 = block;
    }

    dispatch_async(&_dispatch_main_q, v14);
  }

LABEL_12:
}

- (void)_tearDownShield
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002F1C;
  block[3] = &unk_100018540;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)tearDownShield
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  terminated = self->_terminated;
  _FBSScene = sub_100006DC0(v4);
  v6 = os_log_type_enabled(_FBSScene, OS_LOG_TYPE_DEFAULT);
  if (terminated)
  {
    if (v6)
    {
      *buf = 136315394;
      v25 = "[ContinuityCaptureShieldUIBaseViewController tearDownShield]";
      v26 = 2112;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, _FBSScene, OS_LOG_TYPE_DEFAULT, "%s: %@ termination in progress", buf, 0x16u);
    }
  }

  else
  {
    if (v6)
    {
      *buf = 136315394;
      v25 = "[ContinuityCaptureShieldUIBaseViewController tearDownShield]";
      v26 = 2112;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, _FBSScene, OS_LOG_TYPE_DEFAULT, "%s: %@ Tearing down shieldUI", buf, 0x16u);
    }

    self->_terminated = 1;
    v7 = atomic_load(&self->_observingKVO);
    if (v7)
    {
      v8 = +[CMContinuityCaptureUIStateTracker sharedInstance];
      [v8 removeObserver:self forKeyPath:CMContinuityCaptureUIStateTrackerActiveKVOKey context:0];

      v9 = +[CMContinuityCaptureUIStateTracker sharedInstance];
      [v9 removeObserver:self forKeyPath:CMContinuityCaptureUIStateTrackerActiveConfigurationKVOKey context:0];

      v10 = +[CMContinuityCaptureUIStateTracker sharedInstance];
      [v10 removeObserver:self forKeyPath:CMContinuityCaptureUIStateTrackerActiveFaceTimeContinuitySessionKVOKey context:0];

      atomic_store(0, &self->_observingKVO);
    }

    v11 = +[ContinuityCaptureShieldUIBackgroundActivityManager sharedInstance];
    [v11 updateState:16];

    view = [(ContinuityCaptureShieldUIBaseViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    _FBSScene = [windowScene _FBSScene];

    v15 = [[UIDestroySceneAction alloc] initWithPersistedIdentifiers:0 preferredAnimationType:1 forDestroyingSession:1 userOriginatedRequest:0 callbackQueue:&_dispatch_main_q completion:&stru_100018580];
    isOnLockScreen = [(ContinuityCaptureShieldUIBaseViewController *)self isOnLockScreen];
    if (isOnLockScreen)
    {
      if (self->_disconnectReason != 1)
      {
        v17 = objc_opt_new();
        [v17 lockDeviceAnimated:1 withCompletion:0];
        [v17 invalidate];
      }

      v18 = dispatch_time(0, 2000000000);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000033A8;
      v21[3] = &unk_1000185A8;
      v22 = _FBSScene;
      v23 = v15;
      dispatch_after(v18, &_dispatch_main_q, v21);

      v19 = v22;
    }

    else
    {
      v20 = sub_100006DC0(isOnLockScreen);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v25 = "[ContinuityCaptureShieldUIBaseViewController tearDownShield]";
        v26 = 2112;
        selfCopy2 = _FBSScene;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: destroy scene: %@ in unlock mode", buf, 0x16u);
      }

      v19 = [NSSet setWithObject:v15];
      [_FBSScene sendActions:v19];
    }
  }
}

- (void)disconnectSession
{
  v3 = sub_100006DC0(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v9 = "[ContinuityCaptureShieldUIBaseViewController disconnectSession]";
    v10 = 2112;
    selfCopy = self;
    v12 = 2080;
    v13 = "[ContinuityCaptureShieldUIBaseViewController disconnectSession]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s:  %@ %s", buf, 0x20u);
  }

  v4 = +[CMContinuityCaptureXPCClientCCD sharedInstance];
  [v4 disconnectSession];

  objc_initWeak(buf, self);
  v5 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000035A8;
  block[3] = &unk_1000185D0;
  objc_copyWeak(&v7, buf);
  dispatch_after(v5, &_dispatch_main_q, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

@end