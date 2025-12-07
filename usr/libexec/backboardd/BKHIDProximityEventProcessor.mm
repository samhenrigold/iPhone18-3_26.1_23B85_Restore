@interface BKHIDProximityEventProcessor
- (BKHIDProximityEventProcessor)initWithContext:(id)context;
- (BOOL)isObjectWithinProximity;
- (BOOL)isProximityDetectionActive;
- (BOOL)shouldSuppressTouchesWhileObjectWithinProximity;
- (id)setObservesProximitySensorDetectionMaskChanges:(id)changes;
- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher;
- (void)_lock_postDetectionMaskChangeToObservers;
- (void)_lock_postSyntheticEventWithDetectionMaskToClients:(unsigned int)clients;
- (void)_locked_notifyIfNeededCurrentDetectionMaskChangeWithTimstamp:(unint64_t)timstamp;
- (void)_locked_postEventWithDetectionMask:(unsigned int)mask toDestinations:(id)destinations dispatcher:(id)dispatcher reason:(id)reason;
- (void)_locked_setObjectWithinProximity:(BOOL)proximity notify:(BOOL)notify;
- (void)_locked_updateTouchSuppressionAssertion;
- (void)connectionDidTerminate:(id)terminate;
- (void)dealloc;
- (void)sensorModeDidChange:(id)change;
- (void)setShouldSuppressTouchesWhileObjectWithinProximity:(BOOL)proximity;
@end

@implementation BKHIDProximityEventProcessor

- (void)_lock_postDetectionMaskChangeToObservers
{
  os_unfair_lock_assert_owner(&self->_lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_observingProximityConnections;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v9 = [(BKHIDDomainServiceServer *)self->_server userInfoForConnection:v8, v17];
        v10 = v9;
        if (v9)
        {
          v11 = *(v9 + 8);
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;
        detectionMask = [v12 detectionMask];
        detectionMask2 = [(BKSProximityDetectionMaskChangeEvent *)self->_lock_lastEvent detectionMask];

        if (detectionMask != detectionMask2)
        {
          sub_100037BC8(v10, self->_lock_lastEvent);
          remoteTarget = [v8 remoteTarget];
          [remoteTarget proximityDetectionMaskDidChange:self->_lock_lastEvent];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v16 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v5 = v16;
    }

    while (v16);
  }
}

- (BOOL)isProximityDetectionActive
{
  os_unfair_lock_lock(&self->_lock);
  proximityDetectionActive = self->_proximityDetectionActive;
  os_unfair_lock_unlock(&self->_lock);
  return proximityDetectionActive;
}

- (void)_locked_updateTouchSuppressionAssertion
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_objectWithinProximity)
  {
    suppressTouchesAssertion = self->_suppressTouchesAssertion;
    p_suppressTouchesAssertion = &self->_suppressTouchesAssertion;
    v3 = suppressTouchesAssertion;
    v6 = *(p_suppressTouchesAssertion - 80);
    v7 = suppressTouchesAssertion == 0;
    if (!suppressTouchesAssertion && (*(p_suppressTouchesAssertion - 10) & 1) != 0)
    {
      v8 = +[BKHIDEventProcessorRegistry sharedInstance];
      v13 = [v8 eventProcessorOfClass:objc_opt_class()];

      v9 = [v13 cancelAndSuppressTouchesOnDisplay:0 reason:@"objectWithinProximity"];
      v10 = *p_suppressTouchesAssertion;
      *p_suppressTouchesAssertion = v9;

      v11 = v13;
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
    v12 = self->_suppressTouchesAssertion;
    p_suppressTouchesAssertion = &self->_suppressTouchesAssertion;
    v3 = v12;
    v7 = v12 == 0;
  }

  if (v7 || (v6 & 1) != 0)
  {
    return;
  }

  [(BSInvalidatable *)v3 invalidate];
  v11 = *p_suppressTouchesAssertion;
  *p_suppressTouchesAssertion = 0;
LABEL_9:
}

- (BOOL)isObjectWithinProximity
{
  os_unfair_lock_lock(&self->_lock);
  objectWithinProximity = self->_objectWithinProximity;
  os_unfair_lock_unlock(&self->_lock);
  return objectWithinProximity;
}

- (void)connectionDidTerminate:(id)terminate
{
  terminateCopy = terminate;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_observingProximityConnections removeObject:terminateCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)setObservesProximitySensorDetectionMaskChanges:(id)changes
{
  changesCopy = changes;
  v5 = +[BSServiceConnection currentContext];
  os_unfair_lock_lock(&self->_lock);
  v6 = [(BKHIDDomainServiceServer *)self->_server userInfoForConnection:v5];
  bOOLValue = [changesCopy BOOLValue];

  if (!bOOLValue)
  {
    sub_100037BC8(v6, 0);
    [(NSMutableSet *)self->_observingProximityConnections removeObject:v5];
    goto LABEL_7;
  }

  if (self->_observingProximityConnections)
  {
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v10 = objc_alloc_init(NSMutableSet);
    observingProximityConnections = self->_observingProximityConnections;
    self->_observingProximityConnections = v10;

    if (v6)
    {
      goto LABEL_4;
    }
  }

  v6 = objc_alloc_init(BKProximityServerClientRecord);
  [(BKHIDDomainServiceServer *)self->_server setUserInfo:v6 forConnection:v5];
LABEL_4:
  if (([(NSMutableSet *)self->_observingProximityConnections containsObject:v5]& 1) == 0)
  {
    [(NSMutableSet *)self->_observingProximityConnections addObject:v5];
    v8 = self->_lock_lastEvent;
    sub_100037BC8(v6, v8);
    goto LABEL_8;
  }

LABEL_7:
  v8 = 0;
LABEL_8:
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (void)sensorModeDidChange:(id)change
{
  changeCopy = change;
  os_unfair_lock_lock(&self->_lock);
  proximityDetectionMode = [changeCopy proximityDetectionMode];

  detectionMode = self->_detectionMode;
  if (detectionMode != proximityDetectionMode)
  {
    self->_detectionMode = proximityDetectionMode;
    self->_modeDetectionMask = 0;
    if (proximityDetectionMode == 3)
    {
      if (detectionMode == 6 && (self->_rawDetectionMask & 0x240) != 0)
      {
        self->_modeDetectionMask = 64;
      }
    }

    else
    {
      if (proximityDetectionMode != 6)
      {
        self->_proximityDetectionActive = 0;
        [(BKHIDProximityEventProcessor *)self _locked_setObjectWithinProximity:0 notify:1];
LABEL_20:
        [(BKHIDProximityEventProcessor *)self _locked_notifyIfNeededCurrentDetectionMaskChangeWithTimstamp:mach_absolute_time()];
        goto LABEL_21;
      }

      if ([(BKHIDProximityEventProcessor *)self _shouldPostLPATransitionEvents])
      {
        if ((self->_rawDetectionMask & 0x240) != 0)
        {
          self->_modeDetectionMask = 64;
          if (detectionMode <= 0xD && ((1 << detectionMode) & 0x3006) != 0)
          {
            [(BKHIDProximityEventProcessor *)self _locked_setObjectWithinProximity:1 notify:1];
            [(BKHIDProximityEventProcessor *)self _lock_postSyntheticEventWithDetectionMaskToClients:64];
          }
        }
      }
    }

    v8 = proximityDetectionMode == 3 || proximityDetectionMode == 6;
    self->_proximityDetectionActive = v8;
    goto LABEL_20;
  }

LABEL_21:

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_postSyntheticEventWithDetectionMaskToClients:(unsigned int)clients
{
  WeakRetained = objc_loadWeakRetained(&self->_lastProximitySender);
  v5 = objc_loadWeakRetained(&self->_lastProximityDispatcher);
  v31 = v5;
  if (!WeakRetained || (v6 = v5) == 0)
  {
    v7 = BKLogUISensor();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109634;
      *v41 = clients;
      *&v41[4] = 2114;
      *&v41[6] = v31;
      *&v41[14] = 2114;
      *&v41[16] = WeakRetained;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "ignoring synth:0x%X dispatcher:%{public}@ sender:%{public}@", buf, 0x1Cu);
    }

    v6 = v31;
  }

  mach_absolute_time();
  ProximtyEvent = IOHIDEventCreateProximtyEvent();
  [WeakRetained senderID];
  IOHIDEventSetSenderID();
  IOHIDEventSetIntegerValue();
  cf = ProximtyEvent;
  v29 = WeakRetained;
  [v6 destinationsForEvent:ProximtyEvent fromSender:WeakRetained];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v38 = 0u;
  v9 = v6;
  v34 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v34)
  {
    v10 = *v36;
    do
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        v13 = -[BSMutableIntegerMap objectForKey:](self->_eventClients, "objectForKey:", [v12 pid]);
        if (v13)
        {
          v14 = v13;
          v15 = [NSNumber numberWithUnsignedInt:clients];
          objc_setProperty_nonatomic_copy(v14, v16, v15, 8);
        }

        else
        {
          v17 = [NSNumber numberWithUnsignedInt:clients];
          v18 = v9;
          v19 = v12;
          objc_opt_self();
          v14 = objc_alloc_init(BKGenericClientEventRecord);
          context = v14->_context;
          v14->_context = v17;
          v21 = v17;

          eventDispatcher = v14->_eventDispatcher;
          v14->_eventDispatcher = v18;
          v23 = v18;

          destination = v14->_destination;
          v14->_destination = v19;

          [(BSMutableIntegerMap *)self->_eventClients setObject:v14 forKey:[(BKSHIDEventDeferringResolution *)v19 pid]];
        }

        Copy = IOHIDEventCreateCopy();
        v26 = [BKSHIDEventProximityAttributes baseAttributesFromProvider:v12];
        [v26 setProximityDetectionMode:self->_detectionMode];
        BKSHIDEventSetAttributes();
        v27 = BKLogUISensor();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = BKSHIDEventGetConciseDescription();
          *buf = 138543618;
          *v41 = v28;
          *&v41[8] = 2114;
          *&v41[10] = v12;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "send prox event:%{public}@ to %{public}@", buf, 0x16u);
        }

        v9 = v31;
        [v31 postEvent:Copy toDestination:v12];
        CFRelease(Copy);
      }

      v34 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v34);
  }

  CFRelease(cf);
}

- (void)_locked_setObjectWithinProximity:(BOOL)proximity notify:(BOOL)notify
{
  notifyCopy = notify;
  proximityCopy = proximity;
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_objectWithinProximity != proximityCopy)
  {
    self->_objectWithinProximity = proximityCopy;
    if (notifyCopy)
    {
      v7 = dword_1001247E8;
      if (dword_1001247E8 != -1 || (notify_register_check("com.apple.backboard.proximity.changed", &dword_1001247E8), v7 = dword_1001247E8, dword_1001247E8 != -1))
      {
        notify_set_state(v7, proximityCopy);
        notify_post("com.apple.backboard.proximity.changed");
      }
    }

    [(BKHIDProximityEventProcessor *)self _locked_updateTouchSuppressionAssertion];
  }
}

- (void)_locked_postEventWithDetectionMask:(unsigned int)mask toDestinations:(id)destinations dispatcher:(id)dispatcher reason:(id)reason
{
  v8 = *&mask;
  destinationsCopy = destinations;
  dispatcherCopy = dispatcher;
  reasonCopy = reason;
  os_unfair_lock_assert_owner(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_lastProximitySender);
  senderID = [WeakRetained senderID];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = destinationsCopy;
  v28 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v28)
  {
    v14 = *v30;
    v25 = *v30;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        mach_absolute_time();
        ProximtyEvent = IOHIDEventCreateProximtyEvent();
        IOHIDEventSetSenderID();
        IOHIDEventSetIntegerValue();
        v18 = [BKSHIDEventProximityAttributes baseAttributesFromProvider:v16];
        [v18 setProximityDetectionMode:self->_detectionMode];
        BKSHIDEventSetAttributes();
        v19 = BKLogUISensor();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          BKSHIDEventGetConciseDescription();
          v20 = senderID;
          v21 = dispatcherCopy;
          selfCopy = self;
          v24 = v23 = v8;
          *buf = 138543874;
          v34 = v24;
          v35 = 2114;
          v36 = v16;
          v37 = 2114;
          v38 = reasonCopy;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "send prox event:%{public}@ to %{public}@ [%{public}@]", buf, 0x20u);

          v8 = v23;
          self = selfCopy;
          dispatcherCopy = v21;
          senderID = v20;
          v14 = v25;
        }

        [dispatcherCopy postEvent:ProximtyEvent toDestination:v16];
        CFRelease(ProximtyEvent);
      }

      v28 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v28);
  }
}

- (void)_locked_notifyIfNeededCurrentDetectionMaskChangeWithTimstamp:(unint64_t)timstamp
{
  modeDetectionMask = self->_modeDetectionMask;
  detectionMode = self->_detectionMode;
  if ([(BKSProximityDetectionMaskChangeEvent *)self->_lock_lastEvent detectionMask]== modeDetectionMask)
  {
    timstamp = [(BKSProximityDetectionMaskChangeEvent *)self->_lock_lastEvent timestamp];
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003B10C;
  v9[3] = &unk_1000FAE60;
  v9[4] = timstamp;
  v10 = modeDetectionMask;
  v11 = detectionMode;
  v7 = [BKSProximityDetectionMaskChangeEvent build:v9];
  lock_lastEvent = self->_lock_lastEvent;
  self->_lock_lastEvent = v7;

  [(BKHIDProximityEventProcessor *)self _lock_postDetectionMaskChangeToObservers];
}

- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher
{
  senderCopy = sender;
  dispatcherCopy = dispatcher;
  v10 = *event;
  v11 = BKLogUISensor();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = BKSHIDEventGetConciseDescription();
    *buf = 138543362;
    v47 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "-> %{public}@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  objc_storeWeak(&self->_lastProximitySender, senderCopy);
  objc_storeWeak(&self->_lastProximityDispatcher, dispatcherCopy);
  if ([(SLGNotificationActivatedLogger *)self->_studyLog isEnabled])
  {
    v13 = IOHIDEventGetIntegerValue() != 0;
    if (self->_studyLogProxState != v13)
    {
      studyLog = self->_studyLog;
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_10003B618;
      v43[3] = &unk_1000FAE40;
      v44 = v13;
      [(SLGNotificationActivatedLogger *)studyLog logBlock:v43 domain:@"com.apple.backboard.hid.proximity"];
      self->_studyLogProxState = v13;
    }
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  self->_rawDetectionMask = IntegerValue;
  if (self->_proximityDetectionActive)
  {
    v16 = 1088;
  }

  else
  {
    v16 = 1024;
  }

  v17 = v16 & IntegerValue;
  kdebug_trace();
  v38 = +[NSMutableSet set];
  if (self->_modeDetectionMask != v17)
  {
    self->_modeDetectionMask = v17;
    if (self->_proximityDetectionActive)
    {
      [(BKHIDProximityEventProcessor *)self _locked_setObjectWithinProximity:(v17 >> 6) & 1 notify:1];
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v18 = [(BSMutableIntegerMap *)self->_eventClients allValues:v10];
    v19 = [v18 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v40;
      do
      {
        v22 = 0;
        do
        {
          if (*v40 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v39 + 1) + 8 * v22);
          if (v23)
          {
            v24 = v23[1];
          }

          else
          {
            v24 = 0;
          }

          if (([v24 unsignedIntValue] & v17) == 0)
          {
            if (v23)
            {
              v25 = v23[3];
            }

            else
            {
              v25 = 0;
            }

            v26 = v25;
            v27 = [NSSet setWithObject:v26];
            if (v23)
            {
              v28 = v23[2];
            }

            else
            {
              v28 = 0;
            }

            [(BKHIDProximityEventProcessor *)self _locked_postEventWithDetectionMask:0 toDestinations:v27 dispatcher:v28 reason:@"client mask mismatch"];

            [v38 addObject:v26];
            -[BSMutableIntegerMap removeObjectForKey:](self->_eventClients, "removeObjectForKey:", [v26 pid]);
          }

          v22 = v22 + 1;
        }

        while (v20 != v22);
        v29 = [v18 countByEnumeratingWithState:&v39 objects:v45 count:16];
        v20 = v29;
      }

      while (v29);
    }

    if (v17 && self->_proximityDetectionActive)
    {
      [(BKHIDProximityEventProcessor *)self _lock_postSyntheticEventWithDetectionMaskToClients:v17];
      dispatcherCopy = v36;
      senderCopy = v37;
      v10 = v35;
    }

    else
    {
      dispatcherCopy = v36;
      senderCopy = v37;
      v10 = v35;
      if (v17 < 0x400)
      {
        if (v17)
        {
          v30 = BKLogUISensor();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = BKSHIDEventGetConciseDescription();
            *buf = 138543362;
            v47 = v31;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Ignoring %{public}@", buf, 0xCu);
          }
        }
      }

      else
      {
        [(BKHIDProximityEventProcessor *)self _lock_postSyntheticEventWithDetectionMaskToClients:1024];
      }
    }
  }

  if (!self->_rawDetectionMask)
  {
    v32 = [dispatcherCopy destinationsForEvent:v10 fromSender:senderCopy];
    if ([v32 count])
    {
      v33 = [v32 mutableCopy];
      [v33 minusSet:v38];
      [(BKHIDProximityEventProcessor *)self _locked_postEventWithDetectionMask:0 toDestinations:v33 dispatcher:dispatcherCopy reason:@"HID zero mask"];
    }
  }

  [(BKHIDProximityEventProcessor *)self _locked_notifyIfNeededCurrentDetectionMaskChangeWithTimstamp:IOHIDEventGetTimeStamp()];
  os_unfair_lock_unlock(&self->_lock);

  return 1;
}

- (void)setShouldSuppressTouchesWhileObjectWithinProximity:(BOOL)proximity
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_shouldSuppressTouchesWhileObjectWithinProximity = proximity;
  [(BKHIDProximityEventProcessor *)self _locked_updateTouchSuppressionAssertion];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)shouldSuppressTouchesWhileObjectWithinProximity
{
  os_unfair_lock_lock(&self->_lock);
  lock_shouldSuppressTouchesWhileObjectWithinProximity = self->_lock_shouldSuppressTouchesWhileObjectWithinProximity;
  os_unfair_lock_unlock(&self->_lock);
  return lock_shouldSuppressTouchesWhileObjectWithinProximity;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_sensorModeChangeObserverToken invalidate];
  v3.receiver = self;
  v3.super_class = BKHIDProximityEventProcessor;
  [(BKHIDProximityEventProcessor *)&v3 dealloc];
}

- (BKHIDProximityEventProcessor)initWithContext:(id)context
{
  contextCopy = context;
  v35.receiver = self;
  v35.super_class = BKHIDProximityEventProcessor;
  v5 = [(BKHIDProximityEventProcessor *)&v35 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v5->_lock_shouldSuppressTouchesWhileObjectWithinProximity = 1;
    v7 = [BKSProximityDetectionMaskChangeEvent build:&stru_1000FADF8];
    lock_lastEvent = v6->_lock_lastEvent;
    v6->_lock_lastEvent = v7;

    v9 = [BKHIDDomainServiceServer alloc];
    v10 = BKSProximitySensorBSServiceName;
    v11 = +[BSServiceDispatchQueue mainQueue];
    v12 = BKLogUISensor();
    v13 = [v9 initWithDelegate:v6 incomingServiceConnectionHandler:0 serverTarget:v6 serverProtocol:&OBJC_PROTOCOL___BKSProximitySensorServer_IPC clientProtocol:&OBJC_PROTOCOL___BKSProximitySensorClient_IPC serviceName:v10 queue:v11 log:v12 entitlement:BKProximityDetectionEntitlement];
    server = v6->_server;
    v6->_server = v13;

    v15 = +[BKHIDUISensorController sharedInstance];
    sensorController = v6->_sensorController;
    v6->_sensorController = v15;

    v17 = [(BKHIDUISensorController *)v6->_sensorController addSensorModeChangeObserver:v6];
    sensorModeChangeObserverToken = v6->_sensorModeChangeObserverToken;
    v6->_sensorModeChangeObserverToken = v17;

    v19 = objc_alloc_init(BSMutableIntegerMap);
    eventClients = v6->_eventClients;
    v6->_eventClients = v19;

    objc_initWeak(&location, v6);
    v21 = [SLGNotificationActivatedLogger alloc];
    v22 = [SLGActivatableLogger alloc];
    v23 = +[SLGLog sharedInstance];
    v24 = [v22 initWithLogger:v23];
    v25 = [v21 initWithLogger:v24];
    studyLog = v6->_studyLog;
    v6->_studyLog = v25;

    [(SLGNotificationActivatedLogger *)v6->_studyLog addBeginNotification:@"SBStudyLogBeginCameraButtonLogging" endNotification:@"SBStudyLogEndCameraButtonLogging"];
    v27 = v6->_studyLog;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10003BABC;
    v32[3] = &unk_1000FAE20;
    objc_copyWeak(&v33, &location);
    [(SLGNotificationActivatedLogger *)v27 setActivationHandler:v32];
    v28 = v6->_studyLog;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10003BB78;
    v30[3] = &unk_1000FAE20;
    objc_copyWeak(&v31, &location);
    [(SLGNotificationActivatedLogger *)v28 setDeactivationHandler:v30];
    [(BKHIDDomainServiceServer *)v6->_server activate];
    objc_destroyWeak(&v31);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  return v6;
}

@end