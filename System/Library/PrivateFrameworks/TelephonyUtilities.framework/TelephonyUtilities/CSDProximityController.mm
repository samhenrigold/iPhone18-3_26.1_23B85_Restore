@interface CSDProximityController
- (BOOL)isInterfaceOrientationPortrait;
- (BOOL)isProximitySensorCovered;
- (BOOL)isProximitySensorEnabled;
- (BOOL)shouldEnableProximitySensor;
- (CSDProximityController)initWithQueue:(id)queue proximitySensorObserver:(id)observer voiceOverObserver:(id)overObserver;
- (CSDProximityController)initWithQueue:(id)queue routeController:(id)controller callCenterObserver:(id)observer interfaceOrientationObserver:(id)orientationObserver proximitySensorObserver:(id)sensorObserver voiceOverObserver:(id)overObserver;
- (int)proximityDetectionMode;
- (void)callCenterObserver:(id)observer callChanged:(id)changed;
- (void)dealloc;
- (void)proximitySensorObserver:(id)observer didChangeCovered:(BOOL)covered;
- (void)routesChangedForRouteController:(id)controller;
- (void)setInterfaceOrientationPortrait:(BOOL)portrait;
- (void)setProximityDetectionMode:(int)mode;
- (void)setProximitySensorCovered:(BOOL)covered;
- (void)setProximitySensorEnabled:(BOOL)enabled;
- (void)updateProximitySensorState;
- (void)updateVoiceOverRoutingForCurrentProximityState;
@end

@implementation CSDProximityController

- (void)updateProximitySensorState
{
  queue = [(CSDProximityController *)self queue];
  dispatch_assert_queue_V2(queue);

  shouldEnableProximitySensor = [(CSDProximityController *)self shouldEnableProximitySensor];

  [(CSDProximityController *)self setProximitySensorEnabled:shouldEnableProximitySensor];
}

- (BOOL)shouldEnableProximitySensor
{
  queue = [(CSDProximityController *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!_TUIsInternalInstall() || (+[NSUserDefaults tu_defaults](NSUserDefaults, "tu_defaults"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 BOOLForKey:@"ForceDisableCallProximity"], v4, (v5 & 1) == 0))
  {
    if ([(CSDProximityController *)self isInterfaceOrientationPortrait]|| (v7 = [(CSDProximityController *)self isProximitySensorCovered], v7))
    {
      callCenterObserver = [(CSDProximityController *)self callCenterObserver];
      callContainer = [callCenterObserver callContainer];
      v10 = [callContainer anyCallPassesTest:&stru_10061A178];

      if (v10)
      {
        pickedRoute = sub_100004778(v11);
        if (os_log_type_enabled(pickedRoute, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v31) = 0;
          v13 = "Proximity detection should be disabled; video call exists";
LABEL_16:
          v27 = pickedRoute;
          v28 = 2;
          goto LABEL_17;
        }
      }

      else
      {
        callCenterObserver2 = [(CSDProximityController *)self callCenterObserver];
        callContainer2 = [callCenterObserver2 callContainer];
        v16 = [callContainer2 anyCallPassesTest:&stru_10061A198];

        if (v16)
        {
          routeController = [(CSDProximityController *)self routeController];
          pickedRoute = [routeController pickedRoute];

          isReceiver = [pickedRoute isReceiver];
          isSpeaker = [pickedRoute isSpeaker];
          voiceOverRunningDeterminationHandler = [(CSDProximityController *)self voiceOverRunningDeterminationHandler];
          v22 = voiceOverRunningDeterminationHandler[2]();

          voiceOverTouchShouldRouteToSpeakerDeterminationHandler = [(CSDProximityController *)self voiceOverTouchShouldRouteToSpeakerDeterminationHandler];
          v24 = voiceOverTouchShouldRouteToSpeakerDeterminationHandler[2]();

          brailleScreenInputDeterminationHandler = [(CSDProximityController *)self brailleScreenInputDeterminationHandler];
          LOBYTE(voiceOverTouchShouldRouteToSpeakerDeterminationHandler) = brailleScreenInputDeterminationHandler[2]();

          if (voiceOverTouchShouldRouteToSpeakerDeterminationHandler)
          {
            v6 = 0;
          }

          else
          {
            v6 = isReceiver | isSpeaker & v22 & v24;
          }

          v30 = sub_100004778(v26);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = 67110144;
            isProximitySensorCovered = v6 & 1;
            v33 = 1024;
            isInterfaceOrientationPortrait = isReceiver;
            v35 = 1024;
            v36 = isSpeaker;
            v37 = 1024;
            v38 = v22;
            v39 = 1024;
            v40 = v24;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Proximity detection should be %d since isReceiver: %d, isSpeaker: %d, isVoiceOverRunning: %d, shouldAutoSelectRouteWithVoiceOver: %d", &v31, 0x20u);
          }

          goto LABEL_19;
        }

        pickedRoute = sub_100004778(v17);
        if (os_log_type_enabled(pickedRoute, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v31) = 0;
          v13 = "Proximity detection should be disabled; eligible audio call does not exist";
          goto LABEL_16;
        }
      }
    }

    else
    {
      pickedRoute = sub_100004778(v7);
      if (os_log_type_enabled(pickedRoute, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 67109376;
        isProximitySensorCovered = [(CSDProximityController *)self isProximitySensorCovered];
        v33 = 1024;
        isInterfaceOrientationPortrait = [(CSDProximityController *)self isInterfaceOrientationPortrait];
        v13 = "Proximity detection should be disabled; isInterfaceOrientationPortrait: %d, isProximitySensorCovered: %d";
        v27 = pickedRoute;
        v28 = 14;
LABEL_17:
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v13, &v31, v28);
      }
    }

    v6 = 0;
LABEL_19:

    return v6 & 1;
  }

  v6 = 0;
  return v6 & 1;
}

- (BOOL)isInterfaceOrientationPortrait
{
  queue = [(CSDProximityController *)self queue];
  dispatch_assert_queue_V2(queue);

  return self->_interfaceOrientationPortrait;
}

- (void)updateVoiceOverRoutingForCurrentProximityState
{
  queue = [(CSDProximityController *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = sub_100004778(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v27[0] = 67109120;
    v27[1] = [(CSDProximityController *)self isProximitySensorCovered];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling proximity sensor covered changed to %d", v27, 8u);
  }

  voiceOverRunningDeterminationHandler = [(CSDProximityController *)self voiceOverRunningDeterminationHandler];
  v7 = voiceOverRunningDeterminationHandler[2]();

  if (v7)
  {
    callCenterObserver = [(CSDProximityController *)self callCenterObserver];
    callContainer = [callCenterObserver callContainer];
    v10 = [callContainer anyCallPassesTest:&stru_10061A1B8];

    if (v10)
    {
      voiceOverTouchShouldRouteToSpeakerDeterminationHandler = [(CSDProximityController *)self voiceOverTouchShouldRouteToSpeakerDeterminationHandler];
      v12 = voiceOverTouchShouldRouteToSpeakerDeterminationHandler[2]();

      if ([(CSDProximityController *)self isProximitySensorCovered])
      {
        routeController = [(CSDProximityController *)self routeController];
        pickedRoute = [routeController pickedRoute];
        v15 = [pickedRoute isSpeaker] & v12;

        if (v15 == 1)
        {
          v17 = sub_100004778(v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v27[0]) = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "VoiceOver is enabled and the proximity sensor is covered, changing the audio route from speaker to receiver.", v27, 2u);
          }

          routeController2 = [(CSDProximityController *)self routeController];
          routeController3 = [(CSDProximityController *)self routeController];
          receiverRoute = [routeController3 receiverRoute];
LABEL_15:
          v26 = receiverRoute;
          [routeController2 pickRoute:receiverRoute];

          return;
        }
      }

      if (![(CSDProximityController *)self isProximitySensorCovered])
      {
        routeController4 = [(CSDProximityController *)self routeController];
        pickedRoute2 = [routeController4 pickedRoute];
        v23 = [pickedRoute2 isReceiver] & v12;

        if (v23 == 1)
        {
          v25 = sub_100004778(v24);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v27[0]) = 0;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "VoiceOver is enabled and the proximity sensor is uncovered, changing the audio route from receiver to speaker.", v27, 2u);
          }

          routeController2 = [(CSDProximityController *)self routeController];
          routeController3 = [(CSDProximityController *)self routeController];
          receiverRoute = [routeController3 speakerRoute];
          goto LABEL_15;
        }
      }
    }
  }
}

- (BOOL)isProximitySensorCovered
{
  queue = [(CSDProximityController *)self queue];
  dispatch_assert_queue_V2(queue);

  return self->_proximitySensorCovered;
}

- (CSDProximityController)initWithQueue:(id)queue proximitySensorObserver:(id)observer voiceOverObserver:(id)overObserver
{
  overObserverCopy = overObserver;
  observerCopy = observer;
  queueCopy = queue;
  v11 = objc_alloc_init(FBSOrientationObserver);
  v12 = objc_alloc_init(CSDCallCenterObserver);
  v13 = +[TUCallCenter sharedInstance];
  routeController = [v13 routeController];

  v15 = [(CSDProximityController *)self initWithQueue:queueCopy routeController:routeController callCenterObserver:v12 interfaceOrientationObserver:v11 proximitySensorObserver:observerCopy voiceOverObserver:overObserverCopy];
  return v15;
}

- (CSDProximityController)initWithQueue:(id)queue routeController:(id)controller callCenterObserver:(id)observer interfaceOrientationObserver:(id)orientationObserver proximitySensorObserver:(id)sensorObserver voiceOverObserver:(id)overObserver
{
  queueCopy = queue;
  controllerCopy = controller;
  observerCopy = observer;
  orientationObserverCopy = orientationObserver;
  sensorObserverCopy = sensorObserver;
  overObserverCopy = overObserver;
  v45.receiver = self;
  v45.super_class = CSDProximityController;
  v17 = [(CSDProximityController *)&v45 init];
  if (v17)
  {
    if (!observerCopy)
    {
      sub_100471730();
    }

    if (!orientationObserverCopy)
    {
      sub_1004717A0();
    }

    if (!controllerCopy)
    {
      sub_100471810();
    }

    if (!sensorObserverCopy)
    {
      sub_100471880();
    }

    if (queueCopy)
    {
      if (overObserverCopy)
      {
LABEL_12:
        objc_storeStrong(&v17->_queue, queue);
        objc_storeStrong(&v17->_proximitySensorObserver, sensorObserver);
        [(CSDProximitySensorObserver *)v17->_proximitySensorObserver addDelegate:v17 queue:v17->_queue];
        objc_storeStrong(&v17->_voiceOverObserver, overObserver);
        objc_storeStrong(&v17->_callCenterObserver, observer);
        [(CSDCallCenterObserver *)v17->_callCenterObserver setTriggers:67108897];
        [(CSDCallCenterObserver *)v17->_callCenterObserver setDelegate:v17];
        objc_storeStrong(&v17->_interfaceOrientationObserver, orientationObserver);
        objc_initWeak(&location, v17);
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_10007B62C;
        v42[3] = &unk_10061A0F0;
        objc_copyWeak(&v43, &location);
        v18 = objc_retainBlock(v42);
        [(CSDOrientationObserver *)v17->_interfaceOrientationObserver setHandler:v18];
        [(CSDOrientationObserver *)v17->_interfaceOrientationObserver activeInterfaceOrientationWithCompletion:v18];
        objc_storeStrong(&v17->_routeController, controller);
        v19 = +[TUCallCenter sharedInstance];
        queue = [v19 queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10007B7C0;
        block[3] = &unk_100619D38;
        v21 = v17;
        v41 = v21;
        dispatch_async(queue, block);

        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_10007B7CC;
        v38[3] = &unk_10061A118;
        objc_copyWeak(&v39, &location);
        v22 = objc_retainBlock(v38);
        voiceOverRunningDeterminationHandler = v21->_voiceOverRunningDeterminationHandler;
        v21->_voiceOverRunningDeterminationHandler = v22;

        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_10007B81C;
        v36[3] = &unk_10061A118;
        objc_copyWeak(&v37, &location);
        v24 = objc_retainBlock(v36);
        voiceOverTouchShouldRouteToSpeakerDeterminationHandler = v21->_voiceOverTouchShouldRouteToSpeakerDeterminationHandler;
        v21->_voiceOverTouchShouldRouteToSpeakerDeterminationHandler = v24;

        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_10007B86C;
        v34[3] = &unk_10061A118;
        objc_copyWeak(&v35, &location);
        v26 = objc_retainBlock(v34);
        brailleScreenInputDeterminationHandler = v21->_brailleScreenInputDeterminationHandler;
        v21->_brailleScreenInputDeterminationHandler = v26;

        proximityChangeHandler = v21->_proximityChangeHandler;
        v21->_proximityChangeHandler = &stru_10061A158;

        [(CSDProximityController *)v21 updateProximitySensorState];
        objc_destroyWeak(&v35);
        objc_destroyWeak(&v37);
        objc_destroyWeak(&v39);

        objc_destroyWeak(&v43);
        objc_destroyWeak(&location);
        goto LABEL_13;
      }
    }

    else
    {
      sub_1004718F0();
      if (overObserverCopy)
      {
        goto LABEL_12;
      }
    }

    sub_100471960();
    goto LABEL_12;
  }

LABEL_13:

  return v17;
}

- (void)dealloc
{
  [(CSDProximityController *)self setProximitySensorEnabled:0];
  [(CSDOrientationObserver *)self->_interfaceOrientationObserver invalidate];
  v3.receiver = self;
  v3.super_class = CSDProximityController;
  [(CSDProximityController *)&v3 dealloc];
}

- (void)setInterfaceOrientationPortrait:(BOOL)portrait
{
  portraitCopy = portrait;
  queue = [(CSDProximityController *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->_interfaceOrientationPortrait != portraitCopy)
  {
    self->_interfaceOrientationPortrait = portraitCopy;

    [(CSDProximityController *)self updateProximitySensorState];
  }
}

- (int)proximityDetectionMode
{
  queue = [(CSDProximityController *)self queue];
  dispatch_assert_queue_V2(queue);

  return self->_proximityDetectionMode;
}

- (void)setProximityDetectionMode:(int)mode
{
  v3 = *&mode;
  queue = [(CSDProximityController *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->_proximityDetectionMode != v3)
  {
    self->_proximityDetectionMode = v3;
    proximityChangeHandler = [(CSDProximityController *)self proximityChangeHandler];
    proximityChangeHandler[2](proximityChangeHandler, v3);
  }
}

- (void)setProximitySensorCovered:(BOOL)covered
{
  coveredCopy = covered;
  queue = [(CSDProximityController *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->_proximitySensorCovered != coveredCopy)
  {
    self->_proximitySensorCovered = coveredCopy;
    [(CSDProximityController *)self updateProximitySensorState];

    [(CSDProximityController *)self updateVoiceOverRoutingForCurrentProximityState];
  }
}

- (BOOL)isProximitySensorEnabled
{
  queue = [(CSDProximityController *)self queue];
  dispatch_assert_queue_V2(queue);

  return [(CSDProximityController *)self proximityDetectionMode]== 3;
}

- (void)setProximitySensorEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  queue = [(CSDProximityController *)self queue];
  dispatch_assert_queue_V2(queue);

  if (enabledCopy)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  [(CSDProximityController *)self setProximityDetectionMode:v6];
}

- (void)callCenterObserver:(id)observer callChanged:(id)changed
{
  v5 = [(CSDProximityController *)self queue:observer];
  dispatch_assert_queue_V2(v5);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating proximity sensor state; calls changed.", v8, 2u);
  }

  [(CSDProximityController *)self updateProximitySensorState];
}

- (void)proximitySensorObserver:(id)observer didChangeCovered:(BOOL)covered
{
  coveredCopy = covered;
  queue = [(CSDProximityController *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating proximity sensor state; sensor covered changed.", v9, 2u);
  }

  [(CSDProximityController *)self setProximitySensorCovered:coveredCopy];
}

- (void)routesChangedForRouteController:(id)controller
{
  v4 = +[TUCallCenter sharedInstance];
  queue = [v4 queue];
  dispatch_assert_queue_V2(queue);

  queue2 = [(CSDProximityController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007BE98;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue2, block);
}

@end