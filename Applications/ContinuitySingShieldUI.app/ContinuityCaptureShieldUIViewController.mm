@interface ContinuityCaptureShieldUIViewController
+ (BOOL)_isPad;
- (BOOL)_shouldShowHowToReconnectDialog;
- (void)_disconnectFaceTimeIfNecessary;
- (void)_pullConversation:(id)conversation deviceHandle:(id)handle completion:(id)completion;
- (void)_showDedicatedDisconnectDialog;
- (void)_showHowToReconnectDialog;
- (void)_updateUIForClientInformation;
- (void)_updateUIForConnectionType;
- (void)_updateUIForPlacementStep;
- (void)_updateUIForUIState;
- (void)contentViewDidSelectDisconnectButton:(id)button;
- (void)contentViewDidSelectFaceTimeButton:(id)button completion:(id)completion;
- (void)contentViewDidSelectFavoritesButton:(id)button;
- (void)contentViewDidSelectPauseButton:(id)button;
- (void)contentViewDidSelectSkipButton:(id)button;
- (void)disconnectSession;
- (void)loadView;
- (void)tearDownShield;
- (void)updateUI;
- (void)viewDidLoad;
@end

@implementation ContinuityCaptureShieldUIViewController

- (void)loadView
{
  v3 = objc_alloc_init(ContinuityCaptureShieldUIContentView);
  [(ContinuityCaptureShieldUIContentView *)v3 setDelegate:self];
  [(ContinuityCaptureShieldUIViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v3 = sub_100005368(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[ContinuityCaptureShieldUIViewController viewDidLoad]";
    v12 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: <%p> Called", buf, 0x16u);
  }

  v9.receiver = self;
  v9.super_class = ContinuityCaptureShieldUIViewController;
  [(ContinuityCaptureShieldUIBaseViewController *)&v9 viewDidLoad];
  v4 = +[UIColor clearColor];
  view = [(ContinuityCaptureShieldUIViewController *)self view];
  [view setBackgroundColor:v4];

  view2 = [(ContinuityCaptureShieldUIViewController *)self view];
  [view2 setOverrideUserInterfaceStyle:2];

  view3 = [(ContinuityCaptureShieldUIViewController *)self view];
  [view3 _setOverrideUserInterfaceRenderingMode:2];

  view4 = [(ContinuityCaptureShieldUIViewController *)self view];
  [view4 _setOverrideVibrancyTrait:2];
}

- (BOOL)_shouldShowHowToReconnectDialog
{
  v2 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  activeConfiguration = [v2 activeConfiguration];

  if (activeConfiguration)
  {
    v4 = [activeConfiguration clientDeviceModel] == 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_showHowToReconnectDialog
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  objc_initWeak(&location, self);
  v3 = +[ContinuityCaptureShieldUIViewController _isPad];
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v3)
  {
    v6 = @"ALERT_DISCONNECTED_TITLE_IPAD";
  }

  else
  {
    v6 = @"ALERT_DISCONNECTED_TITLE_IPHONE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_100018990 table:0];
  v8 = [NSString stringWithFormat:v7];
  v9 = +[NSBundle mainBundle];
  v10 = v9;
  if (v3)
  {
    v11 = @"ALERT_DISCONNECTED_MESSAGE_IPAD";
  }

  else
  {
    v11 = @"ALERT_DISCONNECTED_MESSAGE_IPHONE";
  }

  v12 = [v9 localizedStringForKey:v11 value:&stru_100018990 table:0];
  v13 = [UIAlertController alertControllerWithTitle:v8 message:v12 preferredStyle:1];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"ALERT_DISCONNECTED_BUTTON_TITLE_DISCONNECT" value:&stru_100018990 table:0];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100002454;
  v22[3] = &unk_100018520;
  objc_copyWeak(&v23, &location);
  v22[4] = self;
  v16 = [UIAlertAction actionWithTitle:v15 style:2 handler:v22];
  [v13 addAction:v16];

  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"ALERT_DISCONNECTED_BUTTON_TITLE_CANCEL" value:&stru_100018990 table:0];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100002504;
  v20[3] = &unk_100018520;
  objc_copyWeak(&v21, &location);
  v20[4] = self;
  v19 = [UIAlertAction actionWithTitle:v18 style:1 handler:v20];
  [v13 addAction:v19];

  [(ContinuityCaptureShieldUIViewController *)self presentViewController:v13 animated:1 completion:0];
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);

  objc_destroyWeak(&location);
}

- (void)_showDedicatedDisconnectDialog
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  objc_initWeak(&location, self);
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"ALERT_DISCONNECTED_DEDICATED_TITLE" value:&stru_100018990 table:0];
  v5 = [NSString stringWithFormat:v4];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"ALERT_DISCONNECTED_DEDICATED_MESSAGE" value:&stru_100018990 table:0];
  v8 = [NSString stringWithFormat:v7];
  v9 = [UIAlertController alertControllerWithTitle:v5 message:v8 preferredStyle:1];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"ALERT_DISCONNECTED_BUTTON_TITLE_DISCONNECT" value:&stru_100018990 table:0];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000028CC;
  v18[3] = &unk_100018520;
  objc_copyWeak(&v19, &location);
  v18[4] = self;
  v12 = [UIAlertAction actionWithTitle:v11 style:2 handler:v18];
  [v9 addAction:v12];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"ALERT_DISCONNECTED_BUTTON_TITLE_CANCEL" value:&stru_100018990 table:0];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000297C;
  v16[3] = &unk_100018520;
  objc_copyWeak(&v17, &location);
  v16[4] = self;
  v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:v16];
  [v9 addAction:v15];

  [(ContinuityCaptureShieldUIViewController *)self presentViewController:v9 animated:1 completion:0];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);

  objc_destroyWeak(&location);
}

- (void)_updateUIForConnectionType
{
  v3 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  activeConfiguration = [v3 activeConfiguration];

  v4 = activeConfiguration;
  if (activeConfiguration)
  {
    clientDeviceModel = [activeConfiguration clientDeviceModel];
    view = [(ContinuityCaptureShieldUIViewController *)self view];
    if (clientDeviceModel >= 2)
    {
      if (clientDeviceModel == 2)
      {
        v10 = +[CMContinuityCaptureUIStateTracker sharedInstance];
        connectionType = [v10 connectionType];

        if (!connectionType)
        {
          v9 = @"appletv.fill";
          goto LABEL_17;
        }

        if (connectionType == 1)
        {
          v12 = @"appletv_mic";
        }

        else
        {
          if (connectionType != 2)
          {
            goto LABEL_20;
          }

          v12 = @"appletv_camera";
        }

        v13 = [UIImage imageNamed:v12];
        goto LABEL_18;
      }
    }

    else
    {
      v7 = +[CMContinuityCaptureUIStateTracker sharedInstance];
      connectionType2 = [v7 connectionType];

      if (!connectionType2)
      {
        v9 = @"video.slash.fill";
        goto LABEL_17;
      }

      if (connectionType2 == 1)
      {
        v9 = @"mic.circle.fill";
        goto LABEL_17;
      }

      if (connectionType2 == 2)
      {
        v9 = @"video.circle.fill";
LABEL_17:
        v13 = [UIImage systemImageNamed:v9];
LABEL_18:
        v14 = v13;
        if (v13)
        {
          v15 = [v13 imageWithRenderingMode:2];

          [view setImage:v15];
        }
      }
    }

LABEL_20:

    v4 = activeConfiguration;
  }
}

- (void)_updateUIForClientInformation
{
  v3 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  activeConfiguration = [v3 activeConfiguration];

  v4 = activeConfiguration;
  if (activeConfiguration)
  {
    view = [(ContinuityCaptureShieldUIViewController *)self view];
    clientName = [activeConfiguration clientName];
    v7 = +[ContinuityCaptureShieldUIViewController _isPad];
    v8 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    uiState = [v8 uiState];

    v10 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    isInFaceTime = [v10 isInFaceTime];

    clientDeviceModel = [activeConfiguration clientDeviceModel];
    if (clientDeviceModel >= 2)
    {
      if (clientDeviceModel != 2)
      {
        v20 = 0;
LABEL_52:

        v4 = activeConfiguration;
        goto LABEL_53;
      }

      if (!clientName || uiState)
      {
        if (!clientName || !uiState)
        {
          v34 = +[NSBundle mainBundle];
          v35 = v34;
          if (clientName || uiState)
          {
            v36 = @"LABEL_CONNECTED_TO_TV";
          }

          else
          {
            v36 = @"LABEL_CONNECTING_TO_TV";
          }

          v20 = [v34 localizedStringForKey:v36 value:&stru_100018990 table:0];

          v32 = +[NSBundle mainBundle];
          v25 = v32;
          if (isInFaceTime)
          {
            v37 = @"SUBTITLE_DESCRIPTION_TV_FACETIME_IPHONE";
            v38 = @"SUBTITLE_DESCRIPTION_TV_FACETIME_IPAD";
          }

          else
          {
            v37 = @"SUBTITLE_DESCRIPTION_TV_IPHONE";
            v38 = @"SUBTITLE_DESCRIPTION_TV_IPAD";
          }

          if (v7)
          {
            v33 = v38;
          }

          else
          {
            v33 = v37;
          }

          goto LABEL_47;
        }

        v16 = +[NSBundle mainBundle];
        v17 = v16;
        v18 = @"LABEL_CONNECTED_TO_TV_WITH_NAME";
      }

      else
      {
        v16 = +[NSBundle mainBundle];
        v17 = v16;
        v18 = @"LABEL_CONNECTING_TO_TV_WITH_NAME";
      }

      v23 = [v16 localizedStringForKey:v18 value:&stru_100018990 table:0];
      v20 = [NSString stringWithFormat:v23, clientName];

      v24 = +[NSBundle mainBundle];
      v25 = v24;
      if (isInFaceTime)
      {
        v26 = @"SUBTITLE_DESCRIPTION_TV_FACETIME_WITH_NAME_IPHONE";
        v27 = @"SUBTITLE_DESCRIPTION_TV_FACETIME_WITH_NAME_IPAD";
      }

      else
      {
        v26 = @"SUBTITLE_DESCRIPTION_TV_WITH_NAME_IPHONE";
        v27 = @"SUBTITLE_DESCRIPTION_TV_WITH_NAME_IPAD";
      }

      if (v7)
      {
        v28 = v27;
      }

      else
      {
        v28 = v26;
      }

      v29 = [v24 localizedStringForKey:v28 value:&stru_100018990 table:0];
      v40 = clientName;
      goto LABEL_48;
    }

    if (!clientName || uiState)
    {
      if (!clientName || !uiState)
      {
        v21 = +[NSBundle mainBundle];
        v14 = v21;
        if (clientName || uiState)
        {
          v22 = @"LABEL_CONNECTED_TO_MAC";
        }

        else
        {
          v22 = @"LABEL_CONNECTING_TO_MAC";
        }

        v20 = [v21 localizedStringForKey:v22 value:&stru_100018990 table:0];
        goto LABEL_30;
      }

      v13 = +[NSBundle mainBundle];
      v14 = v13;
      v15 = @"LABEL_CONNECTED_TO_MAC_WITH_NAME";
    }

    else
    {
      v13 = +[NSBundle mainBundle];
      v14 = v13;
      v15 = @"LABEL_CONNECTING_TO_MAC_WITH_NAME";
    }

    v19 = [v13 localizedStringForKey:v15 value:&stru_100018990 table:0];
    v20 = [NSString stringWithFormat:v19, clientName];

LABEL_30:
    v30 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    connectionType = [v30 connectionType];

    v32 = +[NSBundle mainBundle];
    v25 = v32;
    if (connectionType == 1)
    {
      v33 = @"LABEL_DISCONNECT_DESCRIPTION_MICROPHONE_MAC";
    }

    else if (connectionType == 2)
    {
      v33 = @"LABEL_DISCONNECT_DESCRIPTION_CAMERA_MAC";
    }

    else if (v7)
    {
      v33 = @"LABEL_DISCONNECT_IPAD_DESCRIPTION_NONE_MAC";
    }

    else
    {
      v33 = @"LABEL_DISCONNECT_DESCRIPTION_NONE_MAC";
    }

LABEL_47:
    v29 = [v32 localizedStringForKey:v33 value:&stru_100018990 table:0];
LABEL_48:
    v39 = [NSString stringWithFormat:v29, v40];

    if (v20)
    {
      [view setPrimaryText:v20];
    }

    if (v39)
    {
      [view setSecondaryText:v39];
    }

    goto LABEL_52;
  }

LABEL_53:
}

- (void)_updateUIForUIState
{
  view = [(ContinuityCaptureShieldUIViewController *)self view];
  v2 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  isInFaceTime = [v2 isInFaceTime];

  [view setInFaceTimeSession:isInFaceTime];
  v4 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  isDedicatedSession = [v4 isDedicatedSession];

  [view setIsDedicatedSession:isDedicatedSession];
  [view setInPlacementStep:0];
  v6 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  uiState = [v6 uiState];

  if (uiState == 4)
  {
    uiState = 0;
LABEL_6:
    [view setPauseButtonState:uiState];
    v8 = view;
    goto LABEL_7;
  }

  if (uiState == 2)
  {
    goto LABEL_6;
  }

  v8 = view;
  if (uiState == 1)
  {
    goto LABEL_6;
  }

LABEL_7:
}

- (void)_updateUIForPlacementStep
{
  v3 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  activeConfiguration = [v3 activeConfiguration];

  if (activeConfiguration)
  {
    view = [(ContinuityCaptureShieldUIViewController *)self view];
    clientDeviceModel = [activeConfiguration clientDeviceModel];
    clientName = [activeConfiguration clientName];
    v8 = +[ContinuityCaptureShieldUIViewController _isPad];
    v9 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    uiState = [v9 uiState];

    if (uiState == 5)
    {
      if (clientDeviceModel == 2)
      {
        [view setInPlacementStep:1];
        v12 = +[NSBundle mainBundle];
        v13 = v12;
        if (v8)
        {
          v14 = @"LABEL_PLACE_DEVICE_TO_CONTINUE_IPAD";
        }

        else
        {
          v14 = @"LABEL_PLACE_DEVICE_TO_CONTINUE_IPHONE";
        }

        v15 = [v12 localizedStringForKey:v14 value:&stru_100018990 table:0];
        v16 = [NSString stringWithFormat:v15];

        v17 = +[NSBundle mainBundle];
        v18 = v17;
        if (clientName)
        {
          if (v8)
          {
            v19 = @"SUBTITLE_DESCRIPTION_PLACEMENT_WITH_NAME_IPAD";
          }

          else
          {
            v19 = @"SUBTITLE_DESCRIPTION_PLACEMENT_WITH_NAME_IPHONE";
          }

          v20 = [v17 localizedStringForKey:v19 value:&stru_100018990 table:0];
          [NSString stringWithFormat:v20, clientName];
        }

        else
        {
          if (v8)
          {
            v21 = @"SUBTITLE_DESCRIPTION_PLACEMENT_IPAD";
          }

          else
          {
            v21 = @"SUBTITLE_DESCRIPTION_PLACEMENT_IPHONE";
          }

          v20 = [v17 localizedStringForKey:v21 value:&stru_100018990 table:0];
          [NSString stringWithFormat:v20, v24];
        }
        v22 = ;

        [view setPrimaryText:v16];
        [view setSecondaryText:v22];
        v23 = [UIImage systemImageNamed:@"tv.and.mediabox.fill"];
        [view setImage:v23];
      }

      else
      {
        v16 = sub_100005368(v11);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10000BDEC();
        }
      }
    }
  }
}

- (void)updateUI
{
  v3 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  activeConfiguration = [v3 activeConfiguration];

  if (activeConfiguration)
  {
    dispatch_assert_queue_V2(&_dispatch_main_q);
    v6 = sub_100005368(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = +[CMContinuityCaptureUIStateTracker sharedInstance];
      uiState = [v7 uiState];
      v9 = +[CMContinuityCaptureUIStateTracker sharedInstance];
      connectionType = [v9 connectionType];
      clientName = [activeConfiguration clientName];
      v15 = 136316674;
      v16 = "[ContinuityCaptureShieldUIViewController updateUI]";
      v17 = 2112;
      selfCopy = self;
      v19 = 2080;
      v20 = "[ContinuityCaptureShieldUIViewController updateUI]";
      v21 = 1024;
      v22 = uiState;
      v23 = 1024;
      v24 = connectionType;
      v25 = 2112;
      v26 = clientName;
      v27 = 1024;
      compositeState = [activeConfiguration compositeState];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s:  %@ %s uiState %d connectionType %d clientName %@ compositeState %x", &v15, 0x3Cu);
    }

    if (![(ContinuityCaptureShieldUIBaseViewController *)self isTerminated])
    {
      v12 = +[CMContinuityCaptureUIStateTracker sharedInstance];
      uiState2 = [v12 uiState];

      if (uiState2 == 5)
      {
        [(ContinuityCaptureShieldUIViewController *)self _updateUIForPlacementStep];
      }

      else
      {
        [(ContinuityCaptureShieldUIViewController *)self _updateUIForConnectionType];
        [(ContinuityCaptureShieldUIViewController *)self _updateUIForClientInformation];
        [(ContinuityCaptureShieldUIViewController *)self _updateUIForUIState];
      }

      v14 = +[ContinuityCaptureShieldUIBackgroundActivityManager sharedInstance];
      [v14 updateState:{objc_msgSend(activeConfiguration, "compositeState")}];
    }
  }
}

- (void)_pullConversation:(id)conversation deviceHandle:(id)handle completion:(id)completion
{
  conversationCopy = conversation;
  handleCopy = handle;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100003848;
  v25[3] = &unk_100018570;
  v11 = conversationCopy;
  v26 = v11;
  v12 = handleCopy;
  v27 = v12;
  objc_copyWeak(&v29, &location);
  v13 = completionCopy;
  v28 = v13;
  v14 = objc_retainBlock(v25);
  isOnLockScreen = [(ContinuityCaptureShieldUIBaseViewController *)self isOnLockScreen];
  if (isOnLockScreen)
  {
    v16 = sub_100005368(isOnLockScreen);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v22 = "[ContinuityCaptureShieldUIViewController _pullConversation:deviceHandle:completion:]";
      v23 = 2112;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: %@ pull conversation back to phone selected on lock screen. Removing shield from lock screen then pulling conversation", buf, 0x16u);
    }

    v17 = objc_opt_new();
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000039CC;
    v19[3] = &unk_100018598;
    v20 = v14;
    [v17 lockDeviceAnimated:0 withCompletion:v19];
    [v17 invalidate];
  }

  else
  {
    v18 = sub_100005368(isOnLockScreen);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v22 = "[ContinuityCaptureShieldUIViewController _pullConversation:deviceHandle:completion:]";
      v23 = 2112;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s: %@ pull conversation back to phone", buf, 0x16u);
    }

    (v14[2])(v14);
  }

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

- (void)tearDownShield
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (*(&self->super._observingKVO + 1))
  {
    v4 = sub_100005368(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v7 = "[ContinuityCaptureShieldUIViewController tearDownShield]";
      v8 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: %@ skip shield teardown since we have pending user dialogue for disconnect", buf, 0x16u);
    }
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ContinuityCaptureShieldUIViewController;
    [(ContinuityCaptureShieldUIBaseViewController *)&v5 tearDownShield];
  }
}

- (void)contentViewDidSelectPauseButton:(id)button
{
  view = [(ContinuityCaptureShieldUIViewController *)self view];
  v3 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  uiState = [v3 uiState];

  if (uiState == 1)
  {
    [view setPauseButtonState:2];
    v5 = +[CMContinuityCaptureXPCClientCCD sharedInstance];
    [v5 pauseSessionForEvent:0];
  }

  else
  {
    [view setPauseButtonState:1];
    v5 = +[CMContinuityCaptureXPCClientCCD sharedInstance];
    [v5 resumeStreamingForEvent:0];
  }
}

- (void)contentViewDidSelectDisconnectButton:(id)button
{
  [(ContinuityCaptureShieldUIBaseViewController *)self setDisconnectReason:2];
  if ([(ContinuityCaptureShieldUIViewController *)self _shouldShowHowToReconnectDialog])
  {
    *(&self->super._observingKVO + 1) = 1;

    [(ContinuityCaptureShieldUIViewController *)self _showHowToReconnectDialog];
  }

  else
  {
    v4 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    isDedicatedSession = [v4 isDedicatedSession];

    if (isDedicatedSession)
    {
      *(&self->super._observingKVO + 1) = 1;

      [(ContinuityCaptureShieldUIViewController *)self _showDedicatedDisconnectDialog];
    }

    else
    {

      [(ContinuityCaptureShieldUIViewController *)self disconnectSession];
    }
  }
}

- (void)_disconnectFaceTimeIfNecessary
{
  v3 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  isInFaceTime = [v3 isInFaceTime];

  if (isInFaceTime)
  {
    v5 = +[TUCallCenter sharedInstance];
    conversationManager = [v5 conversationManager];
    activeConversations = [conversationManager activeConversations];
    v8 = [activeConversations bs_firstObjectPassingTest:&stru_1000185D8];

    v10 = sub_100005368(v9);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v11)
      {
        uUID = [v8 UUID];
        v16 = 136315650;
        v17 = "[ContinuityCaptureShieldUIViewController _disconnectFaceTimeIfNecessary]";
        v18 = 2112;
        selfCopy2 = self;
        v20 = 2112;
        v21 = uUID;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: %@ - Disconnect pressed, leaving conversation: %@", &v16, 0x20u);
      }

      v13 = +[TUCallCenter sharedInstance];
      conversationManager2 = [v13 conversationManager];
      uUID2 = [v8 UUID];
      [conversationManager2 leaveConversationWithUUID:uUID2];
    }

    else
    {
      if (v11)
      {
        v16 = 136315394;
        v17 = "[ContinuityCaptureShieldUIViewController _disconnectFaceTimeIfNecessary]";
        v18 = 2112;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: %@ - Disconnect pressed, but not in active conversation. Disconnecting all calls", &v16, 0x16u);
      }

      v13 = +[TUCallCenter sharedInstance];
      [v13 disconnectAllCalls];
    }
  }
}

- (void)disconnectSession
{
  [(ContinuityCaptureShieldUIViewController *)self _disconnectFaceTimeIfNecessary];
  *(&self->super._observingKVO + 1) = 0;
  v3.receiver = self;
  v3.super_class = ContinuityCaptureShieldUIViewController;
  [(ContinuityCaptureShieldUIBaseViewController *)&v3 disconnectSession];
}

- (void)contentViewDidSelectFaceTimeButton:(id)button completion:(id)completion
{
  buttonCopy = button;
  completionCopy = completion;
  v8 = +[TUCallCenter sharedInstance];
  conversationManager = [v8 conversationManager];
  activeConversations = [conversationManager activeConversations];
  v11 = [activeConversations bs_firstObjectPassingTest:&stru_1000185F8];

  v12 = +[TUCallCenter sharedInstance];
  neighborhoodActivityConduit = [v12 neighborhoodActivityConduit];
  activeSplitSessionTV = [neighborhoodActivityConduit activeSplitSessionTV];

  if (v11)
  {
    v16 = activeSplitSessionTV == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v17 = sub_100005368(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315906;
      v20 = "[ContinuityCaptureShieldUIViewController contentViewDidSelectFaceTimeButton:completion:]";
      v21 = 2112;
      selfCopy = self;
      v23 = 2112;
      v24 = activeSplitSessionTV;
      v25 = 2112;
      v26 = v11;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s: %@ facetime button tapped but deviceHandle=%@ and conversation=%@", &v19, 0x2Au);
    }

    completionCopy[2](completionCopy);
  }

  else
  {
    objc_initWeak(&v19, self);
    v18 = +[CMContinuityCaptureXPCClientCCD sharedInstance];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10000411C;
    v27[3] = &unk_100018620;
    objc_copyWeak(&v31, &v19);
    v28 = v11;
    v29 = activeSplitSessionTV;
    v30 = completionCopy;
    [v18 prepareForPullConversation:v27];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&v19);
  }
}

- (void)contentViewDidSelectSkipButton:(id)button
{
  v4 = sub_100005368(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[ContinuityCaptureShieldUIViewController contentViewDidSelectSkipButton:]";
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s:  %@", &v6, 0x16u);
  }

  v5 = +[CMContinuityCaptureXPCClientCCD sharedInstance];
  [v5 skipPlacementStep];
}

- (void)contentViewDidSelectFavoritesButton:(id)button
{
  v4 = sub_100005368(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[ContinuityCaptureShieldUIViewController contentViewDidSelectFavoritesButton:]";
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s:  %@", buf, 0x16u);
  }

  v11[0] = FBSOpenApplicationOptionKeyUnlockDevice;
  v11[1] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  v12[0] = &__kCFBooleanTrue;
  v12[1] = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v6 = +[LSApplicationWorkspace defaultWorkspace];
  v7 = [NSURL URLWithString:@"mobilephone-favorites://"];
  v8 = [v6 openSensitiveURL:v7 withOptions:v5];

  if ((v8 & 1) == 0)
  {
    v10 = sub_100005368(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10000BF2C();
    }
  }
}

+ (BOOL)_isPad
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;

  return v3;
}

@end