@interface ICSInCallSceneDelegate
- (BOOL)isDeviceAttachedToWindowedAccessory;
- (BOOL)isDeviceAttachedToWindowedAccessoryForScene:(id)scene;
- (BOOL)zombieDetectedForSession:(id)session scene:(id)scene ofType:(unint64_t)type;
- (CGRect)deviceWindowedAccessoryCutoutFrame;
- (CGRect)deviceWindowedAccessoryCutoutFrameForScene:(id)scene;
- (CGRect)windowedAccessoryCutoutFrameInScreen;
- (ICSInCallSceneDelegate)init;
- (NSMapTable)windowSceneToWindowMap;
- (id)createCallDisplayStyleManagerForScene:(id)scene;
- (id)createRootViewControllerForScene:(id)scene;
- (id)inCallWindowSceneSystemApertureElementProvider:(id)provider;
- (id)remoteAlertShellViewControllerForWindowScene:(id)scene;
- (int64_t)callDisplayStyleForScene:(id)scene;
- (void)_setupSceneIfNeeded:(id)needed session:(id)session;
- (void)configureWindow:(id)window windowScene:(id)scene;
- (void)configureWindowScene:(id)scene forSceneType:(unint64_t)type;
- (void)handleHardwareButtonEvent:(id)event eventHandler:(id)handler;
- (void)inCallWindowScene:(id)scene didChangePresentationModeWithAnalyticsSource:(id)source;
- (void)inCallWindowScene:(id)scene didReceiveDeviceLockEvent:(id)event withResultHandler:(id)handler;
- (void)inCallWindowScene:(id)scene didReceiveHardwareButtonEvents:(id)events;
- (void)inCallWindowScene:(id)scene didTransitionToAttachedToWindowedAccessory:(BOOL)accessory windowedAccessoryCutoutFrameInScreen:(CGRect)screen;
- (void)inCallWindowSceneHandleShowingNoticeForRevealingSystemControls:(id)controls;
- (void)inCallWindowSceneHandleSilenceRingtone:(id)ringtone;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)updateSceneBackgroundMaterialWith:(id)with;
- (void)windowScene:(id)scene didUpdateCoordinateSpace:(id)space interfaceOrientation:(int64_t)orientation traitCollection:(id)collection;
@end

@implementation ICSInCallSceneDelegate

- (ICSInCallSceneDelegate)init
{
  v11.receiver = self;
  v11.super_class = ICSInCallSceneDelegate;
  v2 = [(ICSInCallSceneDelegate *)&v11 init];
  if (v2)
  {
    v3 = +[CNKFeatures sharedInstance];
    features = v2->_features;
    v2->_features = v3;

    v5 = objc_alloc_init(TUFeatureFlags);
    if ([v5 groupConversations] && TUDeviceHasChinaSKU())
    {
      v6 = objc_alloc_init(ICSDynamicSystemUIPresentationStyleHandler);
      greenTea3PPresentationStyleHandler = v2->_greenTea3PPresentationStyleHandler;
      v2->_greenTea3PPresentationStyleHandler = v6;

      v8 = objc_alloc_init(ICSGreenTea3PUIHardwareEventHandler);
      greenTea3PUIHardwareEventHandler = v2->_greenTea3PUIHardwareEventHandler;
      v2->_greenTea3PUIHardwareEventHandler = v8;
    }
  }

  return v2;
}

- (BOOL)isDeviceAttachedToWindowedAccessory
{
  v3 = +[UIApplication sharedApplication];
  delegate = [v3 delegate];
  currentInCallScene = [delegate currentInCallScene];
  LOBYTE(self) = [(ICSInCallSceneDelegate *)self isDeviceAttachedToWindowedAccessoryForScene:currentInCallScene];

  return self;
}

- (BOOL)isDeviceAttachedToWindowedAccessoryForScene:(id)scene
{
  sceneCopy = scene;
  [(ICSInCallSceneDelegate *)self deviceWindowedAccessoryCutoutFrameForScene:sceneCopy];
  v5 = !CGRectIsEmpty(v7);
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![sceneCopy performSelector:"isDeviceAttachedToWindowedAccessory"])
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (CGRect)deviceWindowedAccessoryCutoutFrame
{
  v3 = +[UIApplication sharedApplication];
  delegate = [v3 delegate];
  currentInCallScene = [delegate currentInCallScene];
  [(ICSInCallSceneDelegate *)self deviceWindowedAccessoryCutoutFrameForScene:currentInCallScene];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)deviceWindowedAccessoryCutoutFrameForScene:(id)scene
{
  sceneCopy = scene;
  if (objc_opt_respondsToSelector())
  {
    v4 = [sceneCopy valueForKey:@"windowedAccessoryCutoutFrameInScreen"];
    [v4 CGRectValue];
    x = v5;
    y = v7;
    width = v9;
    height = v11;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)windowedAccessoryCutoutFrameInScreen
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)inCallWindowScene:(id)scene didReceiveHardwareButtonEvents:(id)events
{
  eventsCopy = events;
  v7 = [(ICSInCallSceneDelegate *)self remoteAlertShellViewControllerForWindowScene:scene];
  if ([v7 conformsToProtocol:&OBJC_PROTOCOL___PHInCallHardwareButtonEventHandlerProtocol])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = eventsCopy;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(ICSInCallSceneDelegate *)self handleHardwareButtonEvent:*(*(&v13 + 1) + 8 * v12) eventHandler:v7, v13];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (void)inCallWindowScene:(id)scene didReceiveDeviceLockEvent:(id)event withResultHandler:(id)handler
{
  sceneCopy = scene;
  eventCopy = event;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000A0944;
  v22[3] = &unk_100357CA0;
  handlerCopy = handler;
  v23 = handlerCopy;
  v11 = objc_retainBlock(v22);
  ics_sceneType = [sceneCopy ics_sceneType];
  if (ics_sceneType == 6 && ([(ICSInCallSceneDelegate *)self greenTea3PUIHardwareEventHandler], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
  {
    v15 = sub_100009960(ics_sceneType, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Passing device lock event to GreenTea3P UI hardware event handler", v21, 2u);
    }

    greenTea3PUIHardwareEventHandler = [(ICSInCallSceneDelegate *)self greenTea3PUIHardwareEventHandler];
    callAnalyticsLogger = [(ICSInCallSceneDelegate *)self callAnalyticsLogger];
    [greenTea3PUIHardwareEventHandler handleDeviceLockEvent:eventCopy resultHandler:handlerCopy callAnalyticsLogger:callAnalyticsLogger completionHandler:&stru_100358528];
  }

  else
  {
    v18 = sub_100009960(ics_sceneType, v13);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received user-initiated device lock event, handing it off to the root view controller to handle", v21, 2u);
    }

    greenTea3PUIHardwareEventHandler = [(ICSInCallSceneDelegate *)self remoteAlertShellViewControllerForWindowScene:sceneCopy];
    if (greenTea3PUIHardwareEventHandler)
    {
      [greenTea3PUIHardwareEventHandler handleDeviceLockEventWithSourceType:objc_msgSend(eventCopy resultHandler:{"sourceType"), v11}];
    }

    else
    {
      v20 = sub_100009960(0, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "PHInCallRemoteAlertShellViewController missing for windowScene", v21, 2u);
      }

      (v11[2])(v11, 0);
    }
  }
}

- (void)inCallWindowScene:(id)scene didChangePresentationModeWithAnalyticsSource:(id)source
{
  sceneCopy = scene;
  sourceCopy = source;
  session = [sceneCopy session];
  [(ICSInCallSceneDelegate *)self _setupSceneIfNeeded:sceneCopy session:session];

  v8 = [(ICSInCallSceneDelegate *)self remoteAlertShellViewControllerForWindowScene:sceneCopy];
  v9 = sub_100030C10([sceneCopy ics_sceneType]);
  v11 = sub_100009960(v9, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    [sceneCopy presentationMode];
    v13 = SBSInCallPresentationModeDescription();
    *buf = 138543618;
    v61 = v9;
    v62 = 2114;
    v63 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Scene of type '%{public}@' changed presentation mode to %{public}@", buf, 0x16u);
  }

  callDisplayStyleManager = [v8 callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  callDisplayStyleManager2 = [v8 callDisplayStyleManager];
  [(ICSInCallSceneDelegate *)self deviceWindowedAccessoryCutoutFrameForScene:sceneCopy];
  [callDisplayStyleManager2 updateMiniWindowCutoutFrame:-[ICSInCallSceneDelegate isDeviceAttachedToWindowedAccessoryForScene:](self attachedToWindowedAccessory:{"isDeviceAttachedToWindowedAccessoryForScene:", sceneCopy), v17, v18, v19, v20}];

  v21 = [(ICSInCallSceneDelegate *)self callDisplayStyleForScene:sceneCopy];
  callDisplayStyleManager3 = [v8 callDisplayStyleManager];
  [callDisplayStyleManager3 setCallDisplayStyle:v21];

  BKSDisplayBrightnessGetCurrent();
  v24 = v23;
  v25 = +[TUCallCenter sharedInstance];
  frontmostBargeCall = [v25 frontmostBargeCall];

  if (frontmostBargeCall && [frontmostBargeCall isPTT] && v21 == 4 && v24 > 0.0 && (SBUIIsSystemApertureEnabled() & 1) == 0)
  {
    v27 = +[UIApplication sharedApplication];
    delegate = [v27 delegate];
    [delegate dismissPTTSessionPresentation];
  }

  v29 = +[TUCallCenter sharedInstance];
  frontmostAudioOrVideoCall = [v29 frontmostAudioOrVideoCall];

  v58 = frontmostAudioOrVideoCall;
  uniqueProxyIdentifierUUID = [frontmostAudioOrVideoCall uniqueProxyIdentifierUUID];
  if (!callDisplayStyle)
  {
    callAnalyticsLogger = [(ICSInCallSceneDelegate *)self callAnalyticsLogger];

    if (callAnalyticsLogger)
    {
      v34 = sub_100004F84(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v61 = sourceCopy;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "ICSCallAnalytics: analytcs source changed to %@", buf, 0xCu);
      }

      callAnalyticsLogger2 = [(ICSInCallSceneDelegate *)self callAnalyticsLogger];
      [callAnalyticsLogger2 setBannerDismissalReasonForAnalyticsSource:sourceCopy callUUID:uniqueProxyIdentifierUUID];
    }
  }

  callAnalyticsLogger3 = [(ICSInCallSceneDelegate *)self callAnalyticsLogger];
  v57 = uniqueProxyIdentifierUUID;
  [callAnalyticsLogger3 setPresentationMode:objc_msgSend(sceneCopy callUUID:{"presentationMode"), uniqueProxyIdentifierUUID}];

  v37 = +[UIApplication sharedApplication];
  delegate2 = [v37 delegate];
  sceneManager = [delegate2 sceneManager];
  [sceneManager didUpdatePresentationMode:objc_msgSend(sceneCopy forScene:{"presentationMode"), sceneCopy}];

  presentationMode = [sceneCopy presentationMode];
  v41 = +[UIApplication sharedApplication];
  delegate3 = [v41 delegate];
  bannerPresentationManager = [delegate3 bannerPresentationManager];
  v44 = bannerPresentationManager;
  if (presentationMode == 2)
  {
    [bannerPresentationManager didUpdatePresentationModeToFullScreen];
  }

  else
  {
    [bannerPresentationManager didUpdatePresentationModeToDismissed];
  }

  [(ICSInCallSceneDelegate *)self updateSceneBackgroundMaterialWith:sceneCopy];
  isIncomingCallBannerEnabled = [(CNKFeatures *)self->_features isIncomingCallBannerEnabled];
  if (!isIncomingCallBannerEnabled && v21 == 2)
  {
    v47 = sub_10010D6C4(isIncomingCallBannerEnabled, v46);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v61 = v9;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Requesting dismissal of presented banner since the ICS scene %{public}@ is now full screen", buf, 0xCu);
    }

    v48 = +[UIApplication sharedApplication];
    delegate4 = [v48 delegate];
    bannerPresentationManager2 = [delegate4 bannerPresentationManager];
    [bannerPresentationManager2 dismissPresentedBannerForReason:@"InCallService is presenting full screen" animated:1];
  }

  pipController = [v8 pipController];
  isPipped = [pipController isPipped];
  if (isPipped && v21 == 2)
  {
    v54 = sub_100009960(isPipped, v53);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v61 = v9;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Returning %{public}@ PiP to full screen since the associated scene is now full screen", buf, 0xCu);
    }

    [pipController manuallyStopPIPWithCompletion:&stru_100358548];
  }

  greenTea3PPresentationStyleHandler = [(ICSInCallSceneDelegate *)self greenTea3PPresentationStyleHandler];

  if (greenTea3PPresentationStyleHandler)
  {
    greenTea3PPresentationStyleHandler2 = [(ICSInCallSceneDelegate *)self greenTea3PPresentationStyleHandler];
    [greenTea3PPresentationStyleHandler2 handlePresentationModeChanged:objc_msgSend(sceneCopy scene:{"presentationMode"), sceneCopy}];
  }
}

- (void)inCallWindowScene:(id)scene didTransitionToAttachedToWindowedAccessory:(BOOL)accessory windowedAccessoryCutoutFrameInScreen:(CGRect)screen
{
  height = screen.size.height;
  width = screen.size.width;
  y = screen.origin.y;
  x = screen.origin.x;
  accessoryCopy = accessory;
  sceneCopy = scene;
  v13 = sub_100009960(sceneCopy, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = NSStringFromBOOL();
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v16 = NSStringFromRect(v25);
    v21 = 138543618;
    v22 = v15;
    v23 = 2114;
    v24 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "In-call scene did transition to device attached to windowed accessory: %{public}@ with frame: %{public}@", &v21, 0x16u);
  }

  v17 = [(ICSInCallSceneDelegate *)self remoteAlertShellViewControllerForWindowScene:sceneCopy];
  callDisplayStyleManager = [v17 callDisplayStyleManager];
  [(ICSInCallSceneDelegate *)self deviceWindowedAccessoryCutoutFrameForScene:sceneCopy];
  [callDisplayStyleManager updateMiniWindowCutoutFrame:accessoryCopy attachedToWindowedAccessory:?];

  v19 = [(ICSInCallSceneDelegate *)self callDisplayStyleForScene:sceneCopy];
  callDisplayStyleManager2 = [v17 callDisplayStyleManager];
  [callDisplayStyleManager2 setCallDisplayStyle:v19];
}

- (void)inCallWindowSceneHandleShowingNoticeForRevealingSystemControls:(id)controls
{
  v3 = sub_10010D6C4(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Landscape app has requested presentation of home affordance, showing session reminder notice", v7, 2u);
  }

  v4 = +[UIApplication sharedApplication];
  delegate = [v4 delegate];
  bannerPresentationManager = [delegate bannerPresentationManager];
  [bannerPresentationManager presentReminderNotice];
}

- (id)remoteAlertShellViewControllerForWindowScene:(id)scene
{
  sceneCopy = scene;
  windowSceneToWindowMap = [(ICSInCallSceneDelegate *)self windowSceneToWindowMap];
  v6 = [windowSceneToWindowMap objectForKey:sceneCopy];

  rootViewController = [v6 rootViewController];
  objc_opt_class();
  LOBYTE(windowSceneToWindowMap) = objc_opt_isKindOfClass();

  if (windowSceneToWindowMap)
  {
    rootViewController2 = [v6 rootViewController];
  }

  else
  {
    rootViewController2 = 0;
  }

  return rootViewController2;
}

- (id)inCallWindowSceneSystemApertureElementProvider:(id)provider
{
  providerCopy = provider;
  isSystemApertureEnabled = [(CNKFeatures *)self->_features isSystemApertureEnabled];
  if (isSystemApertureEnabled)
  {
    v7 = +[UIApplication sharedApplication];
    delegate = [v7 delegate];
    bannerPresentationManager = [delegate bannerPresentationManager];
    makeSystemApertureElementProvider = [bannerPresentationManager makeSystemApertureElementProvider];

    v11 = objc_opt_respondsToSelector();
    if ((v11 & 1) == 0)
    {
      v13 = sub_100009960(v11, v12);
      v11 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
      if (v11)
      {
        sub_100255AD8(makeSystemApertureElementProvider, v13);
      }
    }

    v14 = sub_100009960(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = makeSystemApertureElementProvider;
      v19 = 2112;
      v20 = providerCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Provided system aperture element %@ corresponding to scene %@", &v17, 0x16u);
    }
  }

  else
  {
    v15 = sub_100009960(isSystemApertureEnabled, v6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_100255A94(v15);
    }

    makeSystemApertureElementProvider = 0;
  }

  return makeSystemApertureElementProvider;
}

- (void)inCallWindowSceneHandleSilenceRingtone:(id)ringtone
{
  v3 = +[TUCallCenter sharedInstance];
  incomingCall = [v3 incomingCall];
  if (incomingCall)
  {
    v7 = incomingCall;

    v5 = v7;
  }

  else
  {
    v6 = +[TUCallCenter sharedInstance];
    incomingVideoCall = [v6 incomingVideoCall];

    v5 = incomingVideoCall;
    if (!incomingVideoCall)
    {
      goto LABEL_7;
    }
  }

  v9 = v5;
  if (([v5 shouldSuppressRingtone] & 1) == 0)
  {
    [v9 suppressRingtone];
  }

  v5 = v9;
LABEL_7:
}

- (void)windowScene:(id)scene didUpdateCoordinateSpace:(id)space interfaceOrientation:(int64_t)orientation traitCollection:(id)collection
{
  sceneCopy = scene;
  windowSceneToWindowMap = [(ICSInCallSceneDelegate *)self windowSceneToWindowMap];
  v10 = [windowSceneToWindowMap objectForKey:sceneCopy];

  coordinateSpace = [sceneCopy coordinateSpace];

  [coordinateSpace bounds];
  [v10 setFrame:?];
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  session = [activeCopy session];
  [(ICSInCallSceneDelegate *)self _setupSceneIfNeeded:activeCopy session:session];
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  session = [sceneCopy session];
  [(ICSInCallSceneDelegate *)self _setupSceneIfNeeded:sceneCopy session:session];
}

- (void)_setupSceneIfNeeded:(id)needed session:(id)session
{
  neededCopy = needed;
  sessionCopy = session;
  if (![(ICSInCallSceneDelegate *)self hasSetupForScene])
  {
    v8 = neededCopy;
    if ([v8 activationState] != -1 || objc_msgSend(v8, "presentationMode") || (objc_msgSend(v8, "requestedPresentationConfigurationIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
    {
      [(ICSInCallSceneDelegate *)self setHasSetupForScene:1];
      ics_sceneType = [v8 ics_sceneType];
      v12 = sub_100009960(ics_sceneType, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        v14 = sub_100030C10(ics_sceneType);
        *buf = 138543874;
        v89 = v14;
        v90 = 2114;
        v91 = v8;
        v92 = 2114;
        v93 = sessionCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Connecting new scene of type '%{public}@'; scene: %{public}@; to session: %{public}@", buf, 0x20u);
      }

      if (![(ICSInCallSceneDelegate *)self zombieDetectedForSession:sessionCopy scene:v8 ofType:ics_sceneType])
      {
        v15 = +[TUCallCenter sharedInstance];
        frontmostAudioOrVideoCall = [v15 frontmostAudioOrVideoCall];

        if (frontmostAudioOrVideoCall)
        {
          provider = [frontmostAudioOrVideoCall provider];
          localizedName = [provider localizedName];
          [v8 setTitle:localizedName];
        }

        v86 = frontmostAudioOrVideoCall;
        v87 = neededCopy;
        v19 = +[UIApplication sharedApplication];
        delegate = [v19 delegate];
        sceneManager = [delegate sceneManager];
        v22 = [sceneManager sceneOfType:ics_sceneType];

        if (v22)
        {
          v25 = sub_100009960(v23, v24);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v82 = v25;
            v83 = sub_100030C10(ics_sceneType);
            *buf = 138543874;
            v89 = v83;
            v90 = 2112;
            v91 = v8;
            v92 = 2112;
            v93 = v22;
            _os_log_error_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "Attempting to connect a new scene of type '%{public}@'; scene:%@ even though we already have one active:%@, undefined behavior may ensue", buf, 0x20u);
          }
        }

        v85 = v22;
        v26 = [[ICSSecureWindow alloc] initWithWindowScene:v8];
        windowSceneToWindowMap = [(ICSInCallSceneDelegate *)self windowSceneToWindowMap];
        [windowSceneToWindowMap setObject:v26 forKey:v8];

        v28 = objc_alloc_init(ICSCallAnalyticsLogger);
        [(ICSInCallSceneDelegate *)self setCallAnalyticsLogger:v28];

        v84 = v26;
        [(ICSInCallSceneDelegate *)self configureWindow:v26 windowScene:v8];
        [(ICSInCallSceneDelegate *)self configureWindowScene:v8 forSceneType:ics_sceneType];
        v29 = +[UIApplication sharedApplication];
        delegate2 = [v29 delegate];
        allInCallScenes = [delegate2 allInCallScenes];
        [allInCallScenes addObject:v8];

        v32 = +[UIApplication sharedApplication];
        delegate3 = [v32 delegate];
        connectedSceneSessionIdentifiers = [delegate3 connectedSceneSessionIdentifiers];
        persistentIdentifier = [sessionCopy persistentIdentifier];
        v36 = [persistentIdentifier copy];
        [connectedSceneSessionIdentifiers addObject:v36];

        v37 = +[UIApplication sharedApplication];
        delegate4 = [v37 delegate];
        sceneManager2 = [delegate4 sceneManager];
        [sceneManager2 registerScene:v8 ofType:ics_sceneType];

        v42 = sub_100009960(v40, v41);
        v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
        if (v43)
        {
          v45 = v42;
          v46 = +[UIApplication sharedApplication];
          delegate5 = [v46 delegate];
          currentInCallScene = [delegate5 currentInCallScene];
          v49 = +[UIApplication sharedApplication];
          delegate6 = [v49 delegate];
          allInCallScenes2 = [delegate6 allInCallScenes];
          *buf = 138543618;
          v89 = currentInCallScene;
          v90 = 2114;
          v91 = allInCallScenes2;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "The current in-call scene is: %{public}@; the set of all tracked scenes is now: %{public}@", buf, 0x16u);
        }

        v52 = sub_100009960(v43, v44);
        v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
        if (v53)
        {
          v55 = v52;
          v56 = +[UIApplication sharedApplication];
          delegate7 = [v56 delegate];
          allInCallScenes3 = [delegate7 allInCallScenes];
          v59 = [allInCallScenes3 count];
          *buf = 134217984;
          v89 = v59;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Number of scenes tracked is %lu", buf, 0xCu);
        }

        v60 = sub_100009960(v53, v54);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          v61 = v60;
          v62 = +[UIApplication sharedApplication];
          delegate8 = [v62 delegate];
          connectedSceneSessionIdentifiers2 = [delegate8 connectedSceneSessionIdentifiers];
          *buf = 138543362;
          v89 = connectedSceneSessionIdentifiers2;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "The set of all scene sessions that have ever connected is %{public}@", buf, 0xCu);
        }

        v65 = +[UIApplication sharedApplication];
        delegate9 = [v65 delegate];
        sceneManager3 = [delegate9 sceneManager];
        [sceneManager3 didUpdatePresentationMode:objc_msgSend(v8 forScene:{"presentationMode"), v8}];

        rootViewController = [(ICSSecureWindow *)v84 rootViewController];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v69 = rootViewController;
          v70 = v69;
          if (v69)
          {
            pipController = [v69 pipController];
            [pipController setWindowForTransitionAnimation:v84];

            [v70 sceneSessionDidChange];
          }
        }

        else
        {
          v70 = 0;
        }

        if ((-[CNKFeatures isIncomingCallBannerEnabled](self->_features, "isIncomingCallBannerEnabled") & 1) == 0 && [v8 presentationMode] == 2)
        {
          ics_sceneType2 = [v8 ics_sceneType];
          if (ics_sceneType2 != 6)
          {
            v74 = sub_10010D6C4(ics_sceneType2, v73);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              v75 = v74;
              v76 = sub_100030C10([v8 ics_sceneType]);
              *buf = 138543362;
              v89 = v76;
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Requesting dismissal of presented banner since a new full screen ICS scene %{public}@ is connecting", buf, 0xCu);
            }

            v77 = +[UIApplication sharedApplication];
            delegate10 = [v77 delegate];
            bannerPresentationManager = [delegate10 bannerPresentationManager];
            [bannerPresentationManager dismissPresentedBannerForReason:@"InCallService is connecting a new full screen scene" animated:1];
          }
        }

        [CATransaction setFrameStallSkipRequest:1];
        greenTea3PPresentationStyleHandler = [(ICSInCallSceneDelegate *)self greenTea3PPresentationStyleHandler];

        if (greenTea3PPresentationStyleHandler)
        {
          greenTea3PPresentationStyleHandler2 = [(ICSInCallSceneDelegate *)self greenTea3PPresentationStyleHandler];
          [greenTea3PPresentationStyleHandler2 handlePresentationModeChanged:objc_msgSend(v8 scene:{"presentationMode"), v8}];
        }

        neededCopy = v87;
      }
    }
  }
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v6 = sub_100009960(disconnectCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = sub_100030C10([disconnectCopy ics_sceneType]);
    v46 = 138543618;
    v47 = v8;
    v48 = 2112;
    v49 = disconnectCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Disconnected scene of type %{public}@: %@", &v46, 0x16u);
  }

  v9 = [(ICSInCallSceneDelegate *)self remoteAlertShellViewControllerForWindowScene:disconnectCopy];
  windowSceneToWindowMap = [(ICSInCallSceneDelegate *)self windowSceneToWindowMap];
  [windowSceneToWindowMap removeObjectForKey:disconnectCopy];

  v11 = +[UIApplication sharedApplication];
  delegate = [v11 delegate];
  allInCallScenes = [delegate allInCallScenes];
  v14 = [allInCallScenes containsObject:disconnectCopy];

  v17 = sub_100009960(v15, v16);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v18)
    {
      v46 = 138412290;
      v47 = disconnectCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Removing scene %@ from the set of all tracked scenes", &v46, 0xCu);
    }

    v20 = +[UIApplication sharedApplication];
    delegate2 = [v20 delegate];
    allInCallScenes2 = [delegate2 allInCallScenes];
    [allInCallScenes2 removeObject:disconnectCopy];
  }

  else if (v18)
  {
    v46 = 138412290;
    v47 = disconnectCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[Warning]: Not removing scene %@ from the set of all tracked scenes because it was already untracked", &v46, 0xCu);
  }

  v23 = sub_100009960(v18, v19);
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (v24)
  {
    v26 = v23;
    v27 = +[UIApplication sharedApplication];
    delegate3 = [v27 delegate];
    allInCallScenes3 = [delegate3 allInCallScenes];
    v46 = 138412290;
    v47 = allInCallScenes3;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "The set of all tracked scenes is now %@", &v46, 0xCu);
  }

  v30 = sub_100009960(v24, v25);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = v30;
    v32 = +[UIApplication sharedApplication];
    delegate4 = [v32 delegate];
    allInCallScenes4 = [delegate4 allInCallScenes];
    v35 = [allInCallScenes4 count];
    v46 = 134217984;
    v47 = v35;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Number of scenes tracked is %lu", &v46, 0xCu);
  }

  sceneDidDisconnectBlock = [(ICSInCallSceneDelegate *)self sceneDidDisconnectBlock];

  if (sceneDidDisconnectBlock)
  {
    sceneDidDisconnectBlock2 = [(ICSInCallSceneDelegate *)self sceneDidDisconnectBlock];
    sceneDidDisconnectBlock2[2]();

    [(ICSInCallSceneDelegate *)self setSceneDidDisconnectBlock:0];
  }

  if ([disconnectCopy presentationMode] == 1)
  {
    callAnalyticsLogger = [(ICSInCallSceneDelegate *)self callAnalyticsLogger];
    [callAnalyticsLogger bannerDidDisconnect];
  }

  [(ICSInCallSceneDelegate *)self setCallAnalyticsLogger:0];
  [v9 sceneSessionDidChange];
  requestedPresentationConfigurationIdentifier = [disconnectCopy requestedPresentationConfigurationIdentifier];

  if (requestedPresentationConfigurationIdentifier)
  {
    v41 = +[UIApplication sharedApplication];
    delegate5 = [v41 delegate];
    sceneManager = [delegate5 sceneManager];
    ics_sceneType = [disconnectCopy ics_sceneType];
    requestedPresentationConfigurationIdentifier2 = [disconnectCopy requestedPresentationConfigurationIdentifier];
    [sceneManager didDisconnectSceneOfType:ics_sceneType withIdentifier:requestedPresentationConfigurationIdentifier2];
  }

  else
  {
    v41 = sub_100004F84(v40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
    {
      sub_100255B50(disconnectCopy, v41);
    }
  }
}

- (void)handleHardwareButtonEvent:(id)event eventHandler:(id)handler
{
  handlerCopy = handler;
  buttonEventType = [event buttonEventType];
  if (buttonEventType <= 2)
  {
    if (buttonEventType == 1)
    {
      [handlerCopy handleVolumeUpButtonPressed];
    }

    else
    {
      v6 = buttonEventType == 2;
      v7 = handlerCopy;
      if (!v6)
      {
        goto LABEL_13;
      }

      [handlerCopy handleVolumeDownButtonPressed];
    }

LABEL_12:
    v7 = handlerCopy;
    goto LABEL_13;
  }

  if (buttonEventType == 3)
  {
    [handlerCopy handleHeadsetButtonPressed];
    goto LABEL_12;
  }

  v6 = buttonEventType == 4;
  v7 = handlerCopy;
  if (v6)
  {
    [handlerCopy handleHeadsetButtonLongPressed];
    goto LABEL_12;
  }

LABEL_13:
}

- (BOOL)zombieDetectedForSession:(id)session scene:(id)scene ofType:(unint64_t)type
{
  sceneCopy = scene;
  sessionCopy = session;
  v9 = +[UIApplication sharedApplication];
  delegate = [v9 delegate];
  connectedSceneSessionIdentifiers = [delegate connectedSceneSessionIdentifiers];
  persistentIdentifier = [sessionCopy persistentIdentifier];

  v13 = [connectedSceneSessionIdentifiers containsObject:persistentIdentifier];
  v14 = +[UIApplication sharedApplication];
  delegate2 = [v14 delegate];
  sceneManager = [delegate2 sceneManager];
  v17 = [sceneManager hasPendingSceneOfType:type];

  v18 = objc_opt_respondsToSelector();
  if (v18)
  {
    requestedPresentationConfigurationIdentifier = [sceneCopy requestedPresentationConfigurationIdentifier];
    v21 = requestedPresentationConfigurationIdentifier == 0;
  }

  else
  {
    v21 = 0;
  }

  v22 = v17 ^ 1;
  v23 = v13 | v22 | v21;
  if (v23)
  {
    v24 = sub_100009960(v18, v19);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100255BC8(v13, v22, v24);
    }
  }

  return v23 & 1;
}

- (void)configureWindowScene:(id)scene forSceneType:(unint64_t)type
{
  sceneCopy = scene;
  [(ICSInCallSceneDelegate *)self updateSceneBackgroundMaterialWith:sceneCopy];
  v7 = sub_1000EDC00(type);
  [sceneCopy setPreferredBackgroundActivitiesToSuppress:v7];

  [sceneCopy setShouldBecomeVisibleWhenWakingDisplay:0];
  v8 = +[UIApplication sharedApplication];
  delegate = [v8 delegate];
  shouldActivateSOS = [delegate shouldActivateSOS];

  if (shouldActivateSOS)
  {
    v13 = sub_100009960(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ICSApplicationDelegate wants SOS while connecting a new scene. Immediately transition to full-screen overlay for SOS", buf, 2u);
    }

    v14 = +[UIApplication sharedApplication];
    delegate2 = [v14 delegate];
    [delegate2 transitionSceneToOverlayForSOS];
  }

  else
  {
    v16 = +[UIApplication sharedApplication];
    delegate3 = [v16 delegate];
    activationContext = [delegate3 activationContext];
    pendingRestrictedScreenTimeRequest = [activationContext pendingRestrictedScreenTimeRequest];

    if (!pendingRestrictedScreenTimeRequest)
    {
      goto LABEL_10;
    }

    v22 = sub_100009960(v20, v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "ICSApplicationDelegate wants Screen Time while connecting a new scene. Immediately transition to full-screen overlay for Screen Time", v23, 2u);
    }

    v14 = +[UIApplication sharedApplication];
    delegate2 = [v14 delegate];
    [delegate2 transitionSceneToOverlayForScreenTime];
  }

LABEL_10:
  if ([sceneCopy isScreenSharingPresentation])
  {
    [sceneCopy setSupportsDeviceLockEvents:0];
    [sceneCopy setIdleTimerDisabled:1];
    [sceneCopy setCallConnected:0];
    [sceneCopy setPreferredHardwareButtonEventTypes:0];
  }

  if (type == 6)
  {
    [sceneCopy setSupportsDeviceLockEvents:1];
    [sceneCopy setShouldBecomeVisibleWhenWakingDisplay:0];
    [sceneCopy setPrefersHiddenWhenDismissed:1];
  }
}

- (void)updateSceneBackgroundMaterialWith:(id)with
{
  withCopy = with;
  v4 = +[TUCallCenter sharedInstance];
  frontmostCall = [v4 frontmostCall];
  if ([frontmostCall isRTT])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v7 = +[TUCallCenter sharedInstance];
    frontmostCall2 = [v7 frontmostCall];
    v6 = [frontmostCall2 isTTY] ^ 1;
  }

  if ([withCopy presentationMode] != 1 && -[CNKFeatures isHeroImageEnabled](self->_features, "isHeroImageEnabled") && (+[TUCallCenter sharedInstance](TUCallCenter, "sharedInstance"), v9 = objc_claimAutoreleasedReturnValue(), v10 = (objc_msgSend(v9, "currentCallCount") != 0) & v6, v9, v10 == 1))
  {
    v11 = +[TUCallCenter sharedInstance];
    v12 = +[TUCallCenter sharedInstance];
    frontmostAudioOrVideoCall = [v12 frontmostAudioOrVideoCall];
    v14 = [v11 activeConversationForCall:frontmostAudioOrVideoCall];

    if (v14 && ![v14 avMode])
    {
      v15 = 4;
    }

    else
    {
      v15 = 1;
    }

    [withCopy _setBackgroundStyle:v15];
  }

  else
  {
    [withCopy _setBackgroundStyle:4];
  }
}

- (void)configureWindow:(id)window windowScene:(id)scene
{
  sceneCopy = scene;
  windowCopy = window;
  coordinateSpace = [sceneCopy coordinateSpace];
  [coordinateSpace bounds];
  [windowCopy setFrame:?];

  v8 = [(ICSInCallSceneDelegate *)self createRootViewControllerForScene:sceneCopy];

  [windowCopy setRootViewController:v8];
  [windowCopy makeKeyAndVisible];
}

- (id)createRootViewControllerForScene:(id)scene
{
  v3 = [(ICSInCallSceneDelegate *)self createCallDisplayStyleManagerForScene:scene];
  v4 = [[PHInCallRemoteAlertShellViewController alloc] initWithCallDisplayStyleManager:v3];

  return v4;
}

- (id)createCallDisplayStyleManagerForScene:(id)scene
{
  sceneCopy = scene;
  v5 = objc_alloc_init(ICSCallDisplayStyleManager);
  [(ICSInCallSceneDelegate *)self deviceWindowedAccessoryCutoutFrameForScene:sceneCopy];
  [(ICSCallDisplayStyleManager *)v5 updateMiniWindowCutoutFrame:[(ICSInCallSceneDelegate *)self isDeviceAttachedToWindowedAccessoryForScene:sceneCopy] attachedToWindowedAccessory:v6, v7, v8, v9];
  [(ICSCallDisplayStyleManager *)v5 setCallDisplayStyle:[(ICSInCallSceneDelegate *)self callDisplayStyleForScene:sceneCopy]];
  session = [sceneCopy session];
  persistentIdentifier = [session persistentIdentifier];
  [(ICSCallDisplayStyleManager *)v5 setSceneSessionIdentifier:persistentIdentifier];

  ics_sceneType = [sceneCopy ics_sceneType];
  [(ICSCallDisplayStyleManager *)v5 setSceneType:ics_sceneType];

  return v5;
}

- (int64_t)callDisplayStyleForScene:(id)scene
{
  sceneCopy = scene;
  presentationMode = [sceneCopy presentationMode];
  if ((presentationMode - 2) >= 2)
  {
    if (presentationMode == 1)
    {
      v7 = +[ICSPreferences sharedPreferences];
      if ([v7 hasBannersEnabled])
      {
        v6 = 0;
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v6 = 4;
    }
  }

  else if ([(ICSInCallSceneDelegate *)self isDeviceAttachedToWindowedAccessoryForScene:sceneCopy])
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  return v6;
}

- (NSMapTable)windowSceneToWindowMap
{
  windowSceneToWindowMap = self->_windowSceneToWindowMap;
  if (!windowSceneToWindowMap)
  {
    v4 = +[NSMapTable weakToStrongObjectsMapTable];
    v5 = self->_windowSceneToWindowMap;
    self->_windowSceneToWindowMap = v4;

    windowSceneToWindowMap = self->_windowSceneToWindowMap;
  }

  return windowSceneToWindowMap;
}

@end