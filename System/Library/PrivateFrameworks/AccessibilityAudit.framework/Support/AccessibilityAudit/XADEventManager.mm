@interface XADEventManager
+ (id)sharedManager;
- (BOOL)_initializeAXObserverIfNeeded;
- (BOOL)_iosEventFilter:(id)filter;
- (XADEventManager)init;
- (XADEventManagerDelegate)delegate;
- (XADEventManagerDelegate)delegateForInspectorManager;
- (__AXUIElement)_axUIElementForNativeFocusItemChangedNotification:(id)notification;
- (id)_localizedNotificationString:(int)string;
- (id)_preprocessEventForSimulator:(id)simulator;
- (void)_handleAccessibilityNotification:(int)notification forElement:(__AXUIElement *)element;
- (void)_handleFocusMovedToElement:(id)element;
- (void)_handleIOHIDEvent:(id)event;
- (void)_registerForAXNotifications:(BOOL)notifications;
- (void)_registerForNotifications:(BOOL)notifications;
- (void)_setLockScreenDimTimerEnabled:(BOOL)enabled;
- (void)_startListening;
- (void)_stopListening;
- (void)_touchedElementAtPoint:(CGPoint)point;
- (void)connectionInterrupted;
- (void)dealloc;
- (void)setSnarfingEvents:(BOOL)events;
@end

@implementation XADEventManager

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001550;
  block[3] = &unk_100018878;
  block[4] = self;
  if (qword_10001DD48 != -1)
  {
    dispatch_once(&qword_10001DD48, block);
  }

  v2 = qword_10001DD40;

  return v2;
}

- (XADEventManager)init
{
  v7.receiver = self;
  v7.super_class = XADEventManager;
  v2 = [(XADEventManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001638;
    block[3] = &unk_1000188A0;
    v6 = v2;
    dispatch_async(&_dispatch_main_q, block);
  }

  return v3;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->__disableIdleTimerAssertion invalidate];
  v3.receiver = self;
  v3.super_class = XADEventManager;
  [(XADEventManager *)&v3 dealloc];
}

- (void)_touchedElementAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  delegate = [(XADEventManager *)self delegate];
  [delegate eventManager:self eventToHighlightPoint:{x, y}];
}

- (void)_setLockScreenDimTimerEnabled:(BOOL)enabled
{
  if (byte_10001DB48 != enabled)
  {
    byte_10001DB48 = enabled;
    if (enabled)
    {
      _disableIdleTimerAssertion = [(XADEventManager *)self _disableIdleTimerAssertion];
      [_disableIdleTimerAssertion invalidate];

      [(XADEventManager *)self set_disableIdleTimerAssertion:0];
    }

    else
    {
      v8 = +[AXUserEventTimer sharedInstance];
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = [v8 acquireAssertionToDisableIdleTimerWithReason:v6];
      [(XADEventManager *)self set_disableIdleTimerAssertion:v7];
    }
  }
}

- (void)_handleIOHIDEvent:(id)event
{
  v5 = objc_autoreleasePoolPush();
  v20 = [event denormalizedEventRepresentation:0 descale:1];
  if ([v20 type] == 3001)
  {
    if (-[XADEventManager stopSnarfingOnTouchUp](self, "stopSnarfingOnTouchUp") && ([v20 handInfo], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "currentFingerCount"), v6, !v7))
    {
      [(XADEventManager *)self setSnarfingEvents:0];
      delegate = [(XADEventManager *)self delegate];
      [delegate eventManager:self stoppedSnarfingEvents:1];
    }

    else
    {
      handInfo = [v20 handInfo];
      eventType = [handInfo eventType];

      if (eventType != 10)
      {
        handInfo2 = [v20 handInfo];
        eventType2 = [handInfo2 eventType];

        if (eventType2 != 11)
        {
          [v20 neuterUpdates];
          [(XADEventManager *)self _setLockScreenDimTimerEnabled:0];
          handInfo3 = [v20 handInfo];
          paths = [handInfo3 paths];
          firstPath = [paths firstPath];
          [firstPath pathLocation];
          v16 = v15;
          v18 = v17;

          [(XADEventManager *)self _touchedElementAtPoint:v16, v18];
        }
      }
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (id)_preprocessEventForSimulator:(id)simulator
{
  v3 = [simulator denormalizedEventRepresentation:1 descale:1];
  handInfo = [v3 handInfo];
  paths = [handInfo paths];
  firstPath = [paths firstPath];
  [firstPath pathLocation];
  v8 = v7;
  v10 = v9;

  v11 = +[AXBackBoardServer server];
  v12 = [v11 contextIdForPosition:{v8, v10}];

  [v3 setContextId:v12];

  return v3;
}

- (BOOL)_iosEventFilter:(id)filter
{
  filterCopy = filter;
  v5 = filterCopy;
  if (filterCopy && [filterCopy type] && (objc_msgSend(v5, "type"), (AXEventTypeIsVolumeButtonPress() & 1) == 0) && objc_msgSend(v5, "senderID") != 0x8000000817319375 && objc_msgSend(v5, "type") == 3001)
  {
    handInfo = [v5 handInfo];
    paths = [handInfo paths];

    if ([paths count])
    {
      [(XADEventManager *)self performSelectorOnMainThread:"_handleIOHIDEvent:" withObject:v5 waitUntilDone:0];
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_stopListening
{
  _eventProcessor = [(XADEventManager *)self _eventProcessor];
  _eventProcessor2 = [(XADEventManager *)self _eventProcessor];

  if (_eventProcessor2)
  {
    [(XADEventManager *)self set_eventProcessor:0];
    [_eventProcessor endHandlingHIDEventsForReason:@"AccessibilityAudit"];
  }
}

- (void)connectionInterrupted
{
  [(XADEventManager *)self setSnarfingEvents:0];

  [(XADEventManager *)self _registerForNotifications:0];
}

- (void)setSnarfingEvents:(BOOL)events
{
  self->_snarfingEvents = events;
  if (events)
  {
    [(XADEventManager *)self _startListening];
  }

  else
  {
    [(XADEventManager *)self _setLockScreenDimTimerEnabled:1];
    [(XADEventManager *)self _stopListening];
  }

  _AXSAXInspectorSetEnabled();
}

- (void)_startListening
{
  _eventProcessor = [(XADEventManager *)self _eventProcessor];

  if (!_eventProcessor)
  {
    v4 = [[AXEventProcessor alloc] initWithHIDTapIdentifier:@"AccessibilityAudit" HIDEventTapPriority:30 systemEventTapIdentifier:0 systemEventTapPriority:30];
    [(XADEventManager *)self set_eventProcessor:v4];

    _eventProcessor2 = [(XADEventManager *)self _eventProcessor];
    [_eventProcessor2 setHIDEventFilterMask:9];

    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3032000000;
    v10[3] = sub_100001DDC;
    v10[4] = sub_100001DEC;
    selfCopy = self;
    v11 = selfCopy;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100001DF4;
    v9[3] = &unk_1000188C8;
    v9[4] = v10;
    _eventProcessor3 = [(XADEventManager *)selfCopy _eventProcessor];
    [_eventProcessor3 setHIDEventHandler:v9];

    _eventProcessor4 = [(XADEventManager *)selfCopy _eventProcessor];
    [_eventProcessor4 beginHandlingHIDEventsForReason:@"AccessibilityAudit"];

    _Block_object_dispose(v10, 8);
  }
}

- (void)_registerForNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  if ([(XADEventManager *)self _registeredForNotifications]!= notifications)
  {
    [(XADEventManager *)self set_registeredForNotifications:notificationsCopy];

    [(XADEventManager *)self _registerForAXNotifications:notificationsCopy];
  }
}

- (BOOL)_initializeAXObserverIfNeeded
{
  if ([(XADEventManager *)self _axEventObserver])
  {
    goto LABEL_5;
  }

  AXUIElementRegisterSystemWideServerDeathCallback();
  pid = 0;
  AXUIElementGetPid(+[AXUIElement systemWideAXUIElement], &pid);
  if (![(XADEventManager *)self _axEventObserver])
  {
    v7 = 0;
    if (AXObserverCreate(pid, sub_100001F44, &v7))
    {
      LOBYTE(RunLoopSource) = 0;
      return RunLoopSource;
    }

    [(XADEventManager *)self set_axEventObserver:v7];
  }

  RunLoopSource = AXObserverGetRunLoopSource([(XADEventManager *)self _axEventObserver]);
  if (RunLoopSource)
  {
    v4 = RunLoopSource;
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, v4, kCFRunLoopDefaultMode);
LABEL_5:
    LOBYTE(RunLoopSource) = 1;
  }

  return RunLoopSource;
}

- (void)_registerForAXNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  if (notifications)
  {
    [(XADEventManager *)self _initializeAXObserverIfNeeded];
  }

  if ([(XADEventManager *)self _axEventObserver])
  {
    v5 = +[AXUIElement systemWideAXUIElement];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    _accessibilityNotificationsToObserve = [(XADEventManager *)self _accessibilityNotificationsToObserve];
    v7 = [_accessibilityNotificationsToObserve countByEnumeratingWithState:&v21 objects:v33 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v22;
      v11 = @"unregister";
      if (notificationsCopy)
      {
        v11 = @"register";
      }

      v20 = v11;
      *&v8 = 136315906;
      v19 = v8;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(_accessibilityNotificationsToObserve);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          intValue = [v13 intValue];
          _axEventObserver = [(XADEventManager *)self _axEventObserver];
          if (notificationsCopy)
          {
            v16 = AXObserverAddNotification(_axEventObserver, v5, intValue, self);
          }

          else
          {
            v16 = AXObserverRemoveNotification(_axEventObserver, v5, intValue);
          }

          v17 = v16;
          if (v16)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v18 = [NSNumber numberWithInt:v17];
              *buf = v19;
              v26 = "[XADEventManager _registerForAXNotifications:]";
              v27 = 2112;
              v28 = v20;
              v29 = 2112;
              v30 = v13;
              v31 = 2112;
              v32 = v18;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: could not %@ for notification:%@. Error:%@", buf, 0x2Au);
            }
          }
        }

        v9 = [_accessibilityNotificationsToObserve countByEnumeratingWithState:&v21 objects:v33 count:16];
      }

      while (v9);
    }
  }
}

- (void)_handleFocusMovedToElement:(id)element
{
  elementCopy = element;
  delegate = [(XADEventManager *)self delegate];
  [delegate eventManager:self systemFocusDidMoveToElement:elementCopy];
}

- (__AXUIElement)_axUIElementForNativeFocusItemChangedNotification:(id)notification
{
  notificationCopy = notification;
  v4 = notificationCopy;
  if (!notificationCopy)
  {
    goto LABEL_8;
  }

  v5 = CFGetTypeID(notificationCopy);
  v6 = v4;
  if (v5 == AXUIElementGetTypeID())
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_8:
    v6 = 0;
    goto LABEL_11;
  }

  v7 = [(__AXUIElement *)v4 objectForKeyedSubscript:kAXElementKey];
  v8 = v7;
  if (v7)
  {
    v9 = CFGetTypeID(v7);
    if (v9 == AXUIElementGetTypeID())
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_11:
  return v6;
}

- (void)_handleAccessibilityNotification:(int)notification forElement:(__AXUIElement *)element
{
  v13 = [(XADEventManager *)self _localizedNotificationString:?];
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x3032000000;
  v56[3] = sub_100001DDC;
  v56[4] = sub_100001DEC;
  v57 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_100001DDC;
  v54 = sub_100001DEC;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_100001DDC;
  v48 = sub_100001DEC;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_100001DDC;
  v42 = sub_100001DEC;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_100001DDC;
  v36 = sub_100001DEC;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100001DDC;
  v30 = sub_100001DEC;
  v31 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_100001DDC;
  v24[4] = sub_100001DEC;
  v25 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000027F0;
  block[3] = &unk_1000188F0;
  v16 = v56;
  v17 = &v50;
  v18 = &v44;
  v19 = &v38;
  v20 = &v32;
  v21 = v24;
  v22 = &v26;
  elementCopy = element;
  v7 = v5;
  v15 = v7;
  dispatch_async(v6, block);

  v8 = dispatch_time(0, 3000000000);
  if (dispatch_semaphore_wait(v7, v8) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000D4D8();
  }

  delegate = [(XADEventManager *)self delegate];
  [delegate eventManager:self notificationReceived:notification notification:v13 traits:v27[5] label:v51[5] value:v45[5] hint:v39[5] identifier:v33[5]];

  delegateForInspectorManager = [(XADEventManager *)self delegateForInspectorManager];
  [delegateForInspectorManager eventManager:self notificationReceived:notification notification:v13 traits:v27[5] label:v51[5] value:v45[5] hint:v39[5] identifier:v33[5]];

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v50, 8);

  _Block_object_dispose(v56, 8);
}

- (id)_localizedNotificationString:(int)string
{
  if ((string - 1000) > 9)
  {
    return 0;
  }

  else
  {
    return off_100018910[string - 1000];
  }
}

- (XADEventManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (XADEventManagerDelegate)delegateForInspectorManager
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateForInspectorManager);

  return WeakRetained;
}

@end