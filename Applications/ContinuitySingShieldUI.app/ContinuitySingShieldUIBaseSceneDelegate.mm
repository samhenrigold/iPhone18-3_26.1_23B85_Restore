@interface ContinuitySingShieldUIBaseSceneDelegate
- (id)createWindowForScene:(id)scene;
- (void)_holdBacklightAssertion;
- (void)_releaseBacklightAssertion;
- (void)_startObservingMicrophoneState;
- (void)_stopObservingMicrophoneState;
- (void)_updateBacklightAssertion;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
@end

@implementation ContinuitySingShieldUIBaseSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  v11 = sub_100005368(optionsCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [sceneCopy description];
    *buf = 136315906;
    v27 = "[ContinuitySingShieldUIBaseSceneDelegate scene:willConnectToSession:options:]";
    v28 = 2112;
    v29 = v12;
    v30 = 2112;
    v31 = sessionCopy;
    v32 = 2112;
    v33 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: %@, %@, %@", buf, 0x2Au);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = sceneCopy;
    v14 = [(ContinuitySingShieldUIBaseSceneDelegate *)self createWindowForScene:v13];
    [v13 _setBackgroundStyle:4];
    [(ContinuitySingShieldUIBaseSceneDelegate *)self setWindow:v14];
    v15 = [ContinuitySingShieldUIViewController alloc];
    window = [(ContinuitySingShieldUIBaseSceneDelegate *)self window];
    windowScene = [window windowScene];
    session = [windowScene session];
    [session role];
    v19 = v25 = sessionCopy;
    v20 = [(ContinuityCaptureShieldUIBaseViewController *)v15 initWithSceneSessionRole:v19];
    viewController = self->_viewController;
    self->_viewController = v20;

    v22 = self->_viewController;
    window2 = [(ContinuitySingShieldUIBaseSceneDelegate *)self window];
    [window2 setRootViewController:v22];

    uRLContexts = [optionsCopy URLContexts];
    [(ContinuitySingShieldUIBaseSceneDelegate *)self scene:v13 openURLContexts:uRLContexts];

    sessionCopy = v25;
    [v14 makeKeyAndVisible];
    [(ContinuitySingShieldUIBaseSceneDelegate *)self _startObservingMicrophoneState];
    [(ContinuitySingShieldUIBaseSceneDelegate *)self _updateBacklightAssertion];
  }
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  allObjects = [contexts allObjects];
  firstObject = [allObjects firstObject];

  v7 = [firstObject URL];
  if (!v7)
  {
    goto LABEL_49;
  }

  v8 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v8 userInterfaceIdiom];

  options = [firstObject options];
  annotation = [options annotation];
  v12 = objc_opt_class();
  v13 = annotation;
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v16 = [v15 objectForKey:@"kContinuityCaptureLaunchUIConfigurationKey"];

  if (userInterfaceIdiom == 1)
  {
    v18 = sub_100005368(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10000BFE4();
    }

LABEL_46:

    v46 = sub_100005368(v45);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_10000C038(self, v46);
    }

    [(ContinuityCaptureShieldUIBaseViewController *)self->_viewController tearDownShield];
    goto LABEL_49;
  }

  if (v16)
  {
    v55 = 0;
    v19 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v16 error:&v55];
    v18 = v55;
    v20 = sub_100005368(v18);
    v21 = v20;
    if (!v19 || v18)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v47 = 136315906;
        v48 = "[ContinuitySingShieldUIBaseSceneDelegate scene:openURLContexts:]";
        v49 = 2048;
        selfCopy5 = self;
        v51 = 2112;
        v52 = firstObject;
        v53 = 2112;
        v54 = v18;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s: <%p> Launching ShieldUI via URL without a valid URL payload for the launchUIConfiguration: %@ error: %@", &v47, 0x2Au);
      }

      goto LABEL_46;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v47 = 136315650;
      v48 = "[ContinuitySingShieldUIBaseSceneDelegate scene:openURLContexts:]";
      v49 = 2048;
      selfCopy5 = self;
      v51 = 2112;
      v52 = v19;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s: <%p> Launching ShieldUI with launchUIConfiguration: %@", &v47, 0x20u);
    }

    v22 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    [v22 setUIConfiguration:v19];

    v23 = +[CSShieldConnectionManager sharedManager];
    singURL = [v23 singURL];
    if (singURL)
    {
      remoteDisplayIdentifier2 = singURL;
    }

    else
    {
      remoteDisplayIdentifier = [v19 remoteDisplayIdentifier];

      if (!remoteDisplayIdentifier)
      {
        goto LABEL_18;
      }

      v33 = _os_feature_enabled_impl();
      v23 = +[CSShieldConnectionManager sharedManager];
      remoteDisplayIdentifier2 = [v19 remoteDisplayIdentifier];
      if (v33)
      {
        [v23 bootstrapFromRemoteDisplayConnection:remoteDisplayIdentifier2];
      }

      else
      {
        [v23 requestGroupSessionURL:remoteDisplayIdentifier2];
      }
    }

LABEL_18:
    goto LABEL_49;
  }

  if (_os_feature_enabled_impl())
  {
    scheme = [v7 scheme];
    if ([scheme isEqualToString:SingQRCodeURLScheme])
    {
      lastPathComponent = [v7 lastPathComponent];
      v28 = [lastPathComponent isEqualToString:CSShieldOpenMusicPrivacyURLPath];

      if (v28)
      {
        v30 = sub_100005368(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v47 = 136315650;
          v48 = "[ContinuitySingShieldUIBaseSceneDelegate scene:openURLContexts:]";
          v49 = 2048;
          selfCopy5 = self;
          v51 = 2112;
          v52 = v7;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%s: <%p> Reloading privacy info %@", &v47, 0x20u);
        }

        embeddedViewController = +[CSShieldConnectionManager sharedManager];
        [embeddedViewController refreshPrivacyAcknowledgement];
        goto LABEL_43;
      }
    }

    else
    {
    }
  }

  if (_os_feature_enabled_impl())
  {
    scheme2 = [v7 scheme];
    v35 = [scheme2 isEqualToString:SingQRCodeURLScheme];

    if (v35)
    {
      v37 = sub_100005368(v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v47 = 136315650;
        v48 = "[ContinuitySingShieldUIBaseSceneDelegate scene:openURLContexts:]";
        v49 = 2048;
        selfCopy5 = self;
        v51 = 2112;
        v52 = v7;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%s: <%p> Launching ShieldUI with continuity sing url: %@", &v47, 0x20u);
      }

      embeddedViewController = +[CSShieldConnectionManager sharedManager];
      [embeddedViewController bootstrapFromSingQRCodeURL:v7];
      goto LABEL_43;
    }
  }

  v38 = _os_feature_enabled_impl();
  if (!v38 || ([v7 scheme], v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "isEqualToString:", CSShieldOpenPickerURLScheme), v39, !v40))
  {
    v18 = sub_100005368(v38);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10000BF80();
    }

    goto LABEL_46;
  }

  v41 = sub_100005368(v38);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v47 = 136315650;
    v48 = "[ContinuitySingShieldUIBaseSceneDelegate scene:openURLContexts:]";
    v49 = 2048;
    selfCopy5 = self;
    v51 = 2112;
    v52 = v7;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%s: <%p> Opening picker url %@", &v47, 0x20u);
  }

  windowScene = [(UIWindow *)self->_window windowScene];
  session = [windowScene session];
  role = [session role];

  if (role == UIWindowSceneSessionRoleApplication)
  {
    embeddedViewController = [(ContinuitySingShieldUIViewController *)self->_viewController embeddedViewController];
    [embeddedViewController presentMusicPicker];
LABEL_43:
  }

LABEL_49:
}

- (void)sceneDidBecomeActive:(id)active
{
  v4 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    viewController = self->_viewController;

    [(ContinuityCaptureShieldUIBaseViewController *)viewController tearDownShield];
  }

  else
  {
    v7 = +[CSShieldConnectionManager sharedManager];
    [v7 sceneDidBecomeActive];
  }
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = sub_100005368(disconnectCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[ContinuitySingShieldUIBaseSceneDelegate sceneDidDisconnect:]";
    v9 = 2048;
    selfCopy = self;
    v11 = 2112;
    v12 = disconnectCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: <%p> Called %@", &v7, 0x20u);
  }

  [(UIWindow *)self->_window setRootViewController:0];
  window = self->_window;
  self->_window = 0;

  [(ContinuitySingShieldUIBaseSceneDelegate *)self _stopObservingMicrophoneState];
  [(ContinuitySingShieldUIBaseSceneDelegate *)self _updateBacklightAssertion];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:CMContinuityCaptureUIStateTrackerActiveConfigurationKVOKey])
  {
    [(ContinuitySingShieldUIBaseSceneDelegate *)self _updateBacklightAssertion];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = ContinuitySingShieldUIBaseSceneDelegate;
    [(ContinuitySingShieldUIBaseSceneDelegate *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (id)createWindowForScene:(id)scene
{
  sceneCopy = scene;
  v4 = [[UIWindow alloc] initWithWindowScene:sceneCopy];

  return v4;
}

- (void)_holdBacklightAssertion
{
  if (!self->_idleTimerAssertion)
  {
    v3 = +[ITIdleTimerState sharedInstance];
    v15 = 0;
    v4 = [v3 newAssertionToDisableIdleTimerForReason:@"ContinuitySingShieldUI - Keep screen on during Continuity Sing session" error:&v15];
    v5 = v15;
    idleTimerAssertion = self->_idleTimerAssertion;
    self->_idleTimerAssertion = v4;

    v8 = sub_100005368(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = "[ContinuitySingShieldUIBaseSceneDelegate _holdBacklightAssertion]";
      v11 = 2048;
      selfCopy = self;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: <%p> Created backlight assertion to keep screen on with error: %@", &v9, 0x20u);
    }
  }
}

- (void)_releaseBacklightAssertion
{
  idleTimerAssertion = self->_idleTimerAssertion;
  if (idleTimerAssertion)
  {
    [(BSInvalidatable *)idleTimerAssertion invalidate];
    v4 = self->_idleTimerAssertion;
    self->_idleTimerAssertion = 0;

    v6 = sub_100005368(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[ContinuitySingShieldUIBaseSceneDelegate _releaseBacklightAssertion]";
      v9 = 2048;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: <%p> Released backlight assertion for screen management", &v7, 0x16u);
    }
  }
}

- (void)_updateBacklightAssertion
{
  v3 = +[CSShieldManager sharedManager];
  if ([v3 isMicStreaming])
  {
    window = self->_window;

    if (window)
    {

      [(ContinuitySingShieldUIBaseSceneDelegate *)self _holdBacklightAssertion];
      return;
    }
  }

  else
  {
  }

  [(ContinuitySingShieldUIBaseSceneDelegate *)self _releaseBacklightAssertion];
}

- (void)_startObservingMicrophoneState
{
  v3 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  [v3 addObserver:self forKeyPath:CMContinuityCaptureUIStateTrackerActiveConfigurationKVOKey options:3 context:0];
}

- (void)_stopObservingMicrophoneState
{
  v3 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  [v3 removeObserver:self forKeyPath:CMContinuityCaptureUIStateTrackerActiveConfigurationKVOKey context:0];
}

@end