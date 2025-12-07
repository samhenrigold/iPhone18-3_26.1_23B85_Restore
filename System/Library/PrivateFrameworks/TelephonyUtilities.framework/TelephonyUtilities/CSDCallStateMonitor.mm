@interface CSDCallStateMonitor
+ (double)breakBeforeMakeTimeout;
- (BOOL)wantsBreakBeforeMakeForCall:(id)call;
- (CSDCallStateMonitor)initWithCallCenter:(id)center;
- (CSDCallStateMonitor)initWithCallCenter:(id)center featureFlags:(id)flags serverBag:(id)bag;
- (id)_ringingTimerForCallWithIdentifier:(id)identifier;
- (void)_cleanCallMediaCache;
- (void)_disconnectOrPullExistingCallsForCallIfNecessary:(id)necessary;
- (void)_handleAudioReadyForCall:(id)call;
- (void)_handleCallConnected:(id)connected;
- (void)_handleCallDurationTimerFired;
- (void)_handleCallStartedConnecting:(id)connecting;
- (void)_handleCallStatusChanged:(id)changed;
- (void)_handlePasscodeLockedOrBlocked;
- (void)_notifyCLTMOfIncomingCall;
- (void)_pushCallToAlternateDestinationIfNecessary:(id)necessary;
- (void)_setUpBreakBeforeMakeTimeoutIfNecessaryForCall:(id)call;
- (void)_setUpCallDurationLimitIfNecessary;
- (void)_updateCallMutingForHoldMusic;
- (void)callIsOnHoldChangedNotification:(id)notification;
- (void)clearUplinkMutedCacheIfNecessary;
- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation;
- (void)dealloc;
- (void)disconnectActiveCallsBasedOnCallStatusForCall:(id)call;
- (void)disconnectAllCallsBesides:(id)besides;
- (void)enableEmergencyModeIfNecessaryForCall:(id)call;
- (void)handleCallConnectedNotification:(id)notification;
- (void)handleCallHasStartedOutgoingChangedNotification:(id)notification;
- (void)handleCallMayRequireBreakBeforeMakeChangedNotification:(id)notification;
- (void)handleCallOneToOneModeChangedNotification:(id)notification;
- (void)handleCallStartedConnectingNotification:(id)notification;
- (void)handleCallStatusChangedNotification:(id)notification;
- (void)handleCallUpgradedToVideoNotification:(id)notification;
- (void)handleCallWantsHoldMusicChangedNotification:(id)notification;
- (void)leaveAVLessConversationsIfNecessaryForCall:(id)call;
@end

@implementation CSDCallStateMonitor

- (void)_handlePasscodeLockedOrBlocked
{
  if (MKBGetDeviceLockState() == 1 || MKBGetDeviceLockState() == 2)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    callContainer = [(CSDCallStateMonitor *)self callContainer];
    currentAudioAndVideoCalls = [callContainer currentAudioAndVideoCalls];

    v5 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v15;
      *&v6 = 138412290;
      v13 = v6;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(currentAudioAndVideoCalls);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          isSharingScreen = [v10 isSharingScreen];
          if (isSharingScreen)
          {
            v12 = sub_100004778(isSharingScreen);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v13;
              v19 = v10;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device is locked so stopping sharing screen for call %@", buf, 0xCu);
            }

            [v10 setSharingScreen:0];
          }
        }

        v7 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v7);
    }
  }
}

- (void)_setUpCallDurationLimitIfNecessary
{
  if (TUIsStoreDemoModeEnabled())
  {
    callContainer = [(CSDCallStateMonitor *)self callContainer];
    v4 = [callContainer anyCallPassesTest:&stru_10061AB98];

    callDurationLimitTimer = [(CSDCallStateMonitor *)self callDurationLimitTimer];

    if (callDurationLimitTimer || !v4)
    {
      callDurationLimitTimer2 = [(CSDCallStateMonitor *)self callDurationLimitTimer];
      v12 = (callDurationLimitTimer2 == 0) | v4;

      if ((v12 & 1) == 0)
      {
        v14 = sub_100004778(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Stopping call duration limit timer", buf, 2u);
        }

        callDurationLimitTimer3 = [(CSDCallStateMonitor *)self callDurationLimitTimer];
        dispatch_source_cancel(callDurationLimitTimer3);

        [(CSDCallStateMonitor *)self setCallDurationLimitTimer:0];
      }
    }

    else
    {
      v7 = sub_100004778(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Starting call duration limit timer as we are in a retail environment", buf, 2u);
      }

      queue = [(CSDCallStateMonitor *)self queue];
      v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);

      v10 = dispatch_time(0, 300000000000);
      dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
      objc_initWeak(buf, self);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1000BDEA4;
      handler[3] = &unk_10061A740;
      objc_copyWeak(&v17, buf);
      dispatch_source_set_event_handler(v9, handler);
      [(CSDCallStateMonitor *)self setCallDurationLimitTimer:v9];
      dispatch_activate(v9);
      objc_destroyWeak(&v17);
      objc_destroyWeak(buf);
    }
  }
}

- (void)_updateCallMutingForHoldMusic
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  callCenter = [(CSDCallStateMonitor *)self callCenter];
  currentAudioAndVideoCalls = [callCenter currentAudioAndVideoCalls];

  v5 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (!v5)
  {

    v7 = 0;
    goto LABEL_21;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = *v23;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v23 != v9)
      {
        objc_enumerationMutation(currentAudioAndVideoCalls);
      }

      v11 = *(*(&v22 + 1) + 8 * i);
      if (![v11 wantsHoldMusic])
      {
        v12 = v7;
        v7 = v11;
        v13 = v8;
LABEL_10:
        v14 = v11;

        v8 = v13;
        continue;
      }

      v12 = v8;
      v13 = v11;
      if ([v11 status] == 1)
      {
        goto LABEL_10;
      }
    }

    v6 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v22 objects:v28 count:16];
  }

  while (v6);

  if (v8)
  {
    v16 = sub_100004778(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v8;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Found active call needing hold music: %@", buf, 0xCu);
    }

    isAudioMutedForHoldMusic = [(CSDCallStateMonitor *)self isAudioMutedForHoldMusic];
    if ((isAudioMutedForHoldMusic & 1) == 0)
    {
      v18 = sub_100004778(isAudioMutedForHoldMusic);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Hold music enabled - call is active so muting uplink and downlink", buf, 2u);
      }

      v19 = 1;
      [v8 setUplinkMuted:1];
      [v8 setDownlinkMuted:1];
      goto LABEL_25;
    }

    goto LABEL_27;
  }

LABEL_21:
  isAudioMutedForHoldMusic2 = [(CSDCallStateMonitor *)self isAudioMutedForHoldMusic];
  if (isAudioMutedForHoldMusic2)
  {
    v21 = sub_100004778(isAudioMutedForHoldMusic2);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Hold music disabled - unmuting uplink and downlink", buf, 2u);
    }

    [v7 setUplinkMuted:0];
    [v7 setDownlinkMuted:0];
    v19 = 0;
    v8 = 0;
LABEL_25:
    [(CSDCallStateMonitor *)self setAudioMutedForHoldMusic:v19];
  }

  else
  {
    v8 = 0;
  }

LABEL_27:
}

- (void)_cleanCallMediaCache
{
  callContainer = [(CSDCallStateMonitor *)self callContainer];
  _allCalls = [callContainer _allCalls];

  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [_allCalls count]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = _allCalls;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        if ([v10 callStatus] != 6)
        {
          activeRemoteParticipant = [v10 activeRemoteParticipant];
          imageURL = [activeRemoteParticipant imageURL];
          lastPathComponent = [imageURL lastPathComponent];

          if ([lastPathComponent length])
          {
            [v4 addObject:lastPathComponent];
          }

          imageURL2 = [v10 imageURL];
          lastPathComponent2 = [imageURL2 lastPathComponent];

          if ([lastPathComponent2 length])
          {
            [v4 addObject:lastPathComponent2];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
  }

  v29 = 0;
  v16 = [[CSDSandboxExtensionDirectory alloc] initWithName:@"Images" error:&v29];
  v17 = v29;
  v28 = v17;
  v18 = [(CSDSandboxExtensionDirectory *)v16 removeLinksForFilenamesNotInArray:v4 error:&v28];
  v19 = v28;

  if ((v18 & 1) == 0)
  {
    v21 = sub_100004778(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1004737A4(v19, v21, v22, v23, v24, v25, v26, v27);
    }
  }
}

- (CSDCallStateMonitor)initWithCallCenter:(id)center
{
  centerCopy = center;
  v5 = objc_alloc_init(TUFeatureFlags);
  v6 = objc_alloc_init(CSDSharedConversationServerBag);
  v7 = [(CSDCallStateMonitor *)self initWithCallCenter:centerCopy featureFlags:v5 serverBag:v6];

  return v7;
}

- (CSDCallStateMonitor)initWithCallCenter:(id)center featureFlags:(id)flags serverBag:(id)bag
{
  centerCopy = center;
  flagsCopy = flags;
  bagCopy = bag;
  v34.receiver = self;
  v34.super_class = CSDCallStateMonitor;
  v12 = [(CSDCallStateMonitor *)&v34 init];
  if (v12)
  {
    queue = [centerCopy queue];
    queue = v12->_queue;
    v12->_queue = queue;

    objc_storeStrong(&v12->_callCenter, center);
    objc_storeStrong(&v12->_featureFlags, flags);
    objc_storeStrong(&v12->_serverBag, bag);
    v15 = +[RTTTelephonyUtilities sharedUtilityProvider];
    rttUtilities = v12->_rttUtilities;
    v12->_rttUtilities = v15;

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v12 selector:"handleCallHasStartedOutgoingChangedNotification:" name:@"CSDCallHasStartedOutgoingChangedNotification" object:0];
    [v17 addObserver:v12 selector:"handleCallStatusChangedNotification:" name:TUCallCenterCallStatusChangedNotification object:0];
    [v17 addObserver:v12 selector:"handleCallStatusChangedNotification:" name:TUCallCenterVideoCallStatusChangedNotification object:0];
    [v17 addObserver:v12 selector:"handleCallStartedConnectingNotification:" name:TUCallCenterCallStartedConnectingNotification object:0];
    [v17 addObserver:v12 selector:"handleCallConnectedNotification:" name:TUCallCenterCallConnectedNotification object:0];
    [v17 addObserver:v12 selector:"handleCallMayRequireBreakBeforeMakeChangedNotification:" name:@"CSDCallMayRequireBreakBeforeMakeChangedNotification" object:0];
    [v17 addObserver:v12 selector:"handleCallWantsHoldMusicChangedNotification:" name:TUCallCenterCallWantsHoldMusicChangedNotification object:0];
    [v17 addObserver:v12 selector:"callIsOnHoldChangedNotification:" name:TUCallIsOnHoldChangedNotification object:0];
    [v17 addObserver:v12 selector:"handleCallOneToOneModeChangedNotification:" name:@"CSDCallOneToOneModeChangedNotification" object:0];
    [v17 addObserver:v12 selector:"handleCallUpgradedToVideoNotification:" name:TUCallUpgradedToVideoNotification object:0];
    notify_register_check([@"com.apple.request.hipuncap" UTF8String], &v12->_requestCLTMThrottleUncapToken);
    conversationManager = [centerCopy conversationManager];
    [conversationManager addDelegate:v12 queue:v12->_queue];

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000BB2CC;
    v32[3] = &unk_10061AB50;
    v19 = centerCopy;
    v33 = v19;
    v20 = objc_retainBlock(v32);
    setUpBreakBeforeMakeTimeout = v12->_setUpBreakBeforeMakeTimeout;
    v12->_setUpBreakBeforeMakeTimeout = v20;

    objc_initWeak(&location, v12);
    uTF8String = [@"com.apple.springboard.passcodeLockedOrBlocked" UTF8String];
    queue2 = [v19 queue];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000BB3E0;
    handler[3] = &unk_10061AB78;
    objc_copyWeak(&v30, &location);
    notify_register_dispatch(uTF8String, &v12->_passcodeLockedOrBlockedNotificationToken, queue2, handler);

    uTF8String2 = [@"com.apple.springboard.lockstate" UTF8String];
    queue3 = [v19 queue];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000BB424;
    v27[3] = &unk_10061AB78;
    objc_copyWeak(&v28, &location);
    notify_register_dispatch(uTF8String2, &v12->_lockStateNotificationToken, queue3, v27);

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  callDurationLimitTimer = [(CSDCallStateMonitor *)self callDurationLimitTimer];

  if (callDurationLimitTimer)
  {
    callDurationLimitTimer2 = [(CSDCallStateMonitor *)self callDurationLimitTimer];
    dispatch_source_cancel(callDurationLimitTimer2);
  }

  notify_cancel(self->_requestCLTMThrottleUncapToken);
  notify_cancel(self->_lockStateNotificationToken);
  notify_cancel(self->_passcodeLockedOrBlockedNotificationToken);
  v6.receiver = self;
  v6.super_class = CSDCallStateMonitor;
  [(CSDCallStateMonitor *)&v6 dealloc];
}

- (void)handleCallHasStartedOutgoingChangedNotification:(id)notification
{
  object = [notification object];
  [(CSDCallStateMonitor *)self _handleCallHasStartedOutgoingChanged:object];
}

- (void)handleCallStatusChangedNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [notificationCopy object];
    [(CSDCallStateMonitor *)self _handleCallStatusChanged:object2];
  }

  else
  {
    v9 = sub_100004778(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      object3 = [notificationCopy object];
      v11 = 138412290;
      v12 = object3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not handling call status changed notification for object that is not CSDCall: %@", &v11, 0xCu);
    }
  }
}

- (void)handleCallStartedConnectingNotification:(id)notification
{
  object = [notification object];
  [(CSDCallStateMonitor *)self _handleCallStartedConnecting:object];
}

- (void)handleCallConnectedNotification:(id)notification
{
  object = [notification object];
  [(CSDCallStateMonitor *)self _handleCallConnected:object];
}

- (void)handleCallMayRequireBreakBeforeMakeChangedNotification:(id)notification
{
  object = [notification object];
  [(CSDCallStateMonitor *)self _handleCallMayRequireBreakBeforeMakeChanged:object];
}

- (void)handleCallWantsHoldMusicChangedNotification:(id)notification
{
  object = [notification object];
  [(CSDCallStateMonitor *)self _handleCallWantsHoldMusicChanged:object];
}

- (BOOL)wantsBreakBeforeMakeForCall:(id)call
{
  callCopy = call;
  localSenderIdentityUUID = [callCopy localSenderIdentityUUID];
  if (localSenderIdentityUUID)
  {
    v5 = [TUCallCapabilities senderIdentityCapabilitiesWithUUID:localSenderIdentityUUID];
    v6 = v5;
    if (v5)
    {
      supportsSimultaneousVoiceAndData = [v5 supportsSimultaneousVoiceAndData];
      v8 = +[FTDeviceSupport sharedInstance];
      nonWifiFaceTimeAvailable = [v8 nonWifiFaceTimeAvailable];

      v10 = +[FTNetworkSupport sharedInstance];
      wiFiActiveAndReachable = [v10 wiFiActiveAndReachable];

      if (supportsSimultaneousVoiceAndData)
      {
        v13 = 0;
      }

      else
      {
        v13 = nonWifiFaceTimeAvailable & (wiFiActiveAndReachable ^ 1);
      }

      v14 = sub_100004778(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = @"NO";
        if (v13)
        {
          v16 = @"YES";
        }

        else
        {
          v16 = @"NO";
        }

        v32 = 138413314;
        v33 = v16;
        if (supportsSimultaneousVoiceAndData)
        {
          v17 = @"YES";
        }

        else
        {
          v17 = @"NO";
        }

        v34 = 2112;
        v35 = v17;
        if (nonWifiFaceTimeAvailable)
        {
          v18 = @"YES";
        }

        else
        {
          v18 = @"NO";
        }

        v36 = 2112;
        v37 = v18;
        if (wiFiActiveAndReachable)
        {
          v15 = @"YES";
        }

        v38 = 2112;
        v39 = v15;
        v40 = 2112;
        v41 = callCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Determined wants break before make is %@ (supportsSimultaneousVoiceAndData: %@, nonWifiFaceTimeAvailable: %@, wiFiActiveAndReachable: %@) for call %@", &v32, 0x34u);
      }
    }

    else
    {
      v14 = sub_100004778(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100473810(callCopy, v14, v25, v26, v27, v28, v29, v30);
      }

      LOBYTE(v13) = 0;
    }
  }

  else
  {
    v6 = sub_100004778(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10047387C(callCopy, v6, v19, v20, v21, v22, v23, v24);
    }

    LOBYTE(v13) = 0;
  }

  return v13;
}

+ (double)breakBeforeMakeTimeout
{
  v2 = +[FTServerBag sharedInstance];
  v3 = [v2 objectForKey:@"gk-invitation-break-before-make-timeout"];
  [v3 doubleValue];
  v4 = 12.0;
  if (v5 > 12.0)
  {
    v6 = +[FTServerBag sharedInstance];
    v7 = [v6 objectForKey:@"gk-invitation-break-before-make-timeout"];
    [v7 doubleValue];
    v4 = v8;
  }

  return v4;
}

- (void)_handleCallStatusChanged:(id)changed
{
  changedCopy = changed;
  [(CSDCallStateMonitor *)self _setUpCallDurationLimitIfNecessary];
  [(CSDCallStateMonitor *)self _updateCallMutingForHoldMusic];
  status = [changedCopy status];
  v6 = 1;
  if (status <= 4)
  {
    if (status != 3)
    {
      if (status == 4)
      {
        [(CSDCallStateMonitor *)self _notifyCLTMOfIncomingCall];
        [changedCopy unsuppressRingtoneIfNecessary];
        timeoutTimer = [changedCopy timeoutTimer];
        if (timeoutTimer)
        {
        }

        else
        {
          provider = [changedCopy provider];
          isSystemProvider = [provider isSystemProvider];

          if ((isSystemProvider & 1) == 0)
          {
            uniqueProxyIdentifier = [changedCopy uniqueProxyIdentifier];
            v34 = [(CSDCallStateMonitor *)self _ringingTimerForCallWithIdentifier:uniqueProxyIdentifier];
            [changedCopy setTimeoutTimer:v34];
          }
        }

        goto LABEL_36;
      }

      goto LABEL_37;
    }

    v16 = sub_100004778(status);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = changedCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Call started outgoing: %@", buf, 0xCu);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    callContainer = [(CSDCallStateMonitor *)self callContainer];
    currentAudioAndVideoCalls = [callContainer currentAudioAndVideoCalls];

    v19 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (!v19)
    {
LABEL_34:

      [(CSDCallStateMonitor *)self _disconnectOrPullExistingCallsForCallIfNecessary:changedCopy];
      [(CSDCallStateMonitor *)self _pushCallToAlternateDestinationIfNecessary:changedCopy];
      v6 = 0;
      goto LABEL_37;
    }

    v21 = v19;
    v22 = *v37;
    *&v20 = 138412290;
    v35 = v20;
LABEL_18:
    v23 = 0;
    while (1)
    {
      if (*v37 != v22)
      {
        objc_enumerationMutation(currentAudioAndVideoCalls);
      }

      v24 = *(*(&v36 + 1) + 8 * v23);
      if (v24 == changedCopy)
      {
        goto LABEL_32;
      }

      isVideo = [*(*(&v36 + 1) + 8 * v23) isVideo];
      if (isVideo)
      {
        v26 = sub_100004778(isVideo);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v35;
          v42 = v24;
          v27 = v26;
          v28 = "Disconnecting video call because another call started outgoing: %@";
LABEL_25:
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 0xCu);
        }
      }

      else
      {
        if (![changedCopy isVideo])
        {
          goto LABEL_32;
        }

        if (![v24 isUsingBaseband])
        {
          goto LABEL_32;
        }

        v30 = [(CSDCallStateMonitor *)self wantsBreakBeforeMakeForCall:v24];
        if (!v30)
        {
          goto LABEL_32;
        }

        v26 = sub_100004778(v30);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v35;
          v42 = v24;
          v27 = v26;
          v28 = "Disconnecting call using the baseband because a video call started outgoing and wantsBreakBeforeMake=YES: %@";
          goto LABEL_25;
        }
      }

      callCenter = [(CSDCallStateMonitor *)self callCenter];
      [callCenter disconnectCall:v24];

LABEL_32:
      if (v21 == ++v23)
      {
        v21 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (!v21)
        {
          goto LABEL_34;
        }

        goto LABEL_18;
      }
    }
  }

  if (status == 5)
  {
    [changedCopy setTimeoutTimer:0];
LABEL_36:
    v6 = 1;
    goto LABEL_37;
  }

  if (status == 6)
  {
    callContainer2 = [(CSDCallStateMonitor *)self callContainer];
    hasCurrentCalls = [callContainer2 hasCurrentCalls];

    if ((hasCurrentCalls & 1) == 0)
    {
      v11 = sub_100004778(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "All calls ended. Setting uplink and downlink muted to NO", buf, 2u);
      }

      [changedCopy unmuteAfterDisconnect];
      v12 = +[TUAudioSystemController sharedAudioSystemController];
      [v12 setDownlinkMuted:0];

      featureFlags = [(CSDCallStateMonitor *)self featureFlags];
      sessionBasedMutingEnabled = [featureFlags sessionBasedMutingEnabled];

      if ((sessionBasedMutingEnabled & 1) == 0)
      {
        [(CSDCallStateMonitor *)self clearUplinkMutedCacheIfNecessary];
        v15 = +[TUAudioSystemController sharedAudioSystemController];
        [v15 setUplinkMuted:0];
      }
    }

    [(CSDCallStateMonitor *)self _cleanCallMediaCache];
    goto LABEL_36;
  }

LABEL_37:
  [(CSDCallStateMonitor *)self setHeySiriEnabled:v6, v35];
}

- (void)clearUplinkMutedCacheIfNecessary
{
  featureFlags = [(CSDCallStateMonitor *)self featureFlags];
  sessionBasedMutingEnabled = [featureFlags sessionBasedMutingEnabled];

  if ((sessionBasedMutingEnabled & 1) == 0)
  {
    objc_initWeak(&location, self);
    serverBag = [(CSDCallStateMonitor *)self serverBag];
    v6 = dispatch_time(0, 1000000000 * [serverBag clearMuteCacheDelay]);
    queue = [(CSDCallStateMonitor *)self queue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000BC01C;
    v8[3] = &unk_10061A740;
    objc_copyWeak(&v9, &location);
    dispatch_after(v6, queue, v8);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_handleCallStartedConnecting:(id)connecting
{
  connectingCopy = connecting;
  v5 = sub_100004778(connectingCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = connectingCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Call started connecting: %@", &v6, 0xCu);
  }

  [(CSDCallStateMonitor *)self _disconnectOrPullExistingCallsForCallIfNecessary:connectingCopy];
  if ([connectingCopy isIncoming])
  {
    [(CSDCallStateMonitor *)self _handleAudioReadyForCall:connectingCopy];
  }
}

- (void)leaveAVLessConversationsIfNecessaryForCall:(id)call
{
  callCopy = call;
  callCenter = [(CSDCallStateMonitor *)self callCenter];
  v22 = callCopy;
  v6 = [callCenter activeConversationForCall:callCopy];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  callCenter2 = [(CSDCallStateMonitor *)self callCenter];
  conversationManager = [callCenter2 conversationManager];
  activeConversations = [conversationManager activeConversations];

  v10 = [activeConversations countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(activeConversations);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        uUID = [v6 UUID];
        uUID2 = [v14 UUID];
        v17 = [uUID isEqual:uUID2];

        if ((v17 & 1) == 0 && [v14 state] == 3 && !objc_msgSend(v14, "avMode"))
        {
          v18 = sub_100004778(0);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v28 = v14;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Leaving converstion since we have call that is getting connected: %@", buf, 0xCu);
          }

          callCenter3 = [(CSDCallStateMonitor *)self callCenter];
          conversationManager2 = [callCenter3 conversationManager];
          uUID3 = [v14 UUID];
          [conversationManager2 leaveConversationWithUUID:uUID3];
        }
      }

      v11 = [activeConversations countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v11);
  }
}

- (void)callIsOnHoldChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004778(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v10, 0x16u);
  }

  object = [notificationCopy object];
  [(CSDCallStateMonitor *)self disconnectActiveCallsBasedOnCallStatusForCall:object];
}

- (void)handleCallOneToOneModeChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004778(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v13 = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v13, 0x16u);
  }

  object = [notificationCopy object];
  if ([object isConversation])
  {
    if (([object isOneToOneModeEnabled] & 1) == 0 && (objc_msgSend(object, "isEndpointOnCurrentDevice") & 1) == 0)
    {
      isHostedOnCurrentDevice = [object isHostedOnCurrentDevice];
      if (isHostedOnCurrentDevice)
      {
        v11 = sub_100004778(isHostedOnCurrentDevice);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v13) = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Pulling relaying calls from client since one to one mode changed for relaying calls if it requires GFT and device does not support GFT relay", &v13, 2u);
        }

        callCenter = [(CSDCallStateMonitor *)self callCenter];
        [callCenter pullRelayingGFTCallsFromClientIfNecessary];

        [object setUplinkMuted:1];
        [object setIsSendingVideo:0];
      }
    }
  }
}

- (void)handleCallUpgradedToVideoNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004778(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v12, 0x16u);
  }

  object = [notificationCopy object];
  isVideo = [object isVideo];
  if (isVideo)
  {
    v11 = sub_100004778(isVideo);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = object;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Call upgraded to video: %@", &v12, 0xCu);
    }

    [(CSDCallStateMonitor *)self disconnectAllCallsBesides:object];
  }
}

- (void)_handleCallConnected:(id)connected
{
  connectedCopy = connected;
  [(CSDCallStateMonitor *)self enableEmergencyModeIfNecessaryForCall:connectedCopy];
  [(CSDCallStateMonitor *)self _updateCallMutingForHoldMusic];
  [(CSDCallStateMonitor *)self _handleAudioReadyForCall:connectedCopy];
  [(CSDCallStateMonitor *)self leaveAVLessConversationsIfNecessaryForCall:connectedCopy];
  [(CSDCallStateMonitor *)self disconnectActiveCallsBasedOnCallStatusForCall:connectedCopy];
  isVideo = [connectedCopy isVideo];
  if (isVideo)
  {
    v6 = sub_100004778(isVideo);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = connectedCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Video call connected: %@", &v7, 0xCu);
    }

    [(CSDCallStateMonitor *)self disconnectAllCallsBesides:connectedCopy];
  }
}

- (void)disconnectAllCallsBesides:(id)besides
{
  besidesCopy = besides;
  v5 = sub_100004778(besidesCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = besidesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requesting to disconnect all calls besides: %@", buf, 0xCu);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  callContainer = [(CSDCallStateMonitor *)self callContainer];
  currentAudioAndVideoCalls = [callContainer currentAudioAndVideoCalls];

  v8 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v22;
    *&v9 = 138412290;
    v20 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(currentAudioAndVideoCalls);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        uniqueProxyIdentifier = [besidesCopy uniqueProxyIdentifier];
        uniqueProxyIdentifier2 = [v13 uniqueProxyIdentifier];
        v16 = [uniqueProxyIdentifier isEqualToString:uniqueProxyIdentifier2];

        if ((v16 & 1) == 0)
        {
          v18 = sub_100004778(v17);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v20;
            v27 = v13;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Disconnecting call because it is not compatible with call: %@", buf, 0xCu);
          }

          callCenter = [(CSDCallStateMonitor *)self callCenter];
          [callCenter disconnectCall:v13];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }
}

- (void)disconnectActiveCallsBasedOnCallStatusForCall:(id)call
{
  callCopy = call;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  callContainer = [(CSDCallStateMonitor *)self callContainer];
  currentAudioAndVideoCalls = [callContainer currentAudioAndVideoCalls];

  v7 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v21;
    *&v8 = 138412546;
    v19 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(currentAudioAndVideoCalls);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if (([v12 isEqualToCall:{callCopy, v19}] & 1) == 0 && objc_msgSend(v12, "status") == 1 && objc_msgSend(callCopy, "status") == 1 && (objc_msgSend(v12, "isOnHold") & 1) == 0 && (objc_msgSend(callCopy, "isOnHold") & 1) == 0)
        {
          callGroupUUID = [v12 callGroupUUID];
          callGroupUUID2 = [callCopy callGroupUUID];
          v15 = [callGroupUUID isEqual:callGroupUUID2];

          if ((v15 & 1) == 0)
          {
            v17 = sub_100004778(v16);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v19;
              v25 = v12;
              v26 = 2112;
              v27 = callCopy;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Ending current active call %@ because call %@ is going to go active", buf, 0x16u);
            }

            callCenter = [(CSDCallStateMonitor *)self callCenter];
            [callCenter disconnectCall:v12];
          }
        }
      }

      v9 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v9);
  }
}

- (void)enableEmergencyModeIfNecessaryForCall:(id)call
{
  callCopy = call;
  isEmergency = [callCopy isEmergency];
  if ((isEmergency & 1) != 0 || (isEmergency = [callCopy isSOS], isEmergency))
  {
    v5 = sub_100004778(isEmergency);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reporting emergency call to screen time", buf, 2u);
    }

    v6 = +[DMFEmergencyModeMonitor sharedMonitor];
    v11 = 0;
    v7 = [v6 enableEmergencyModeWithError:&v11];
    v8 = v11;

    if (!v7 || v8)
    {
      v10 = sub_100004778(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1004738E8(v7, v8, v10);
      }
    }
  }
}

- (void)_notifyCLTMOfIncomingCall
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412546;
    v5 = @"com.apple.request.hipuncap";
    v6 = 2048;
    v7 = 2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Posting CLTM notification %@ and setting state to %llu", &v4, 0x16u);
  }

  notify_set_state([(CSDCallStateMonitor *)self requestCLTMThrottleUncapToken], 2uLL);
  notify_post([@"com.apple.request.hipuncap" UTF8String]);
}

- (void)_disconnectOrPullExistingCallsForCallIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  callContainer = [(CSDCallStateMonitor *)self callContainer];
  _allCalls = [callContainer _allCalls];

  v7 = [_allCalls countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (!v7)
  {
    goto LABEL_26;
  }

  v8 = v7;
  v20 = 0;
  v9 = *v22;
  do
  {
    v10 = 0;
    do
    {
      if (*v22 != v9)
      {
        objc_enumerationMutation(_allCalls);
      }

      v11 = *(*(&v21 + 1) + 8 * v10);
      if (([v11 isPTT] & 1) == 0 && v11 != necessaryCopy)
      {
        isHostedOnCurrentDevice = [necessaryCopy isHostedOnCurrentDevice];
        if (isHostedOnCurrentDevice != [v11 isHostedOnCurrentDevice] || (v13 = objc_msgSend(necessaryCopy, "isEndpointOnCurrentDevice"), v13 != objc_msgSend(v11, "isEndpointOnCurrentDevice")))
        {
          isEndpointOnCurrentDevice = [necessaryCopy isEndpointOnCurrentDevice];
          if (isEndpointOnCurrentDevice && (isEndpointOnCurrentDevice = [v11 isHostedOnCurrentDevice], isEndpointOnCurrentDevice) && (isEndpointOnCurrentDevice = objc_msgSend(v11, "isEndpointOnCurrentDevice"), (isEndpointOnCurrentDevice & 1) == 0) && (objc_msgSend(v11, "provider"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isTinCanProvider"), v15, (v16 & 1) == 0))
          {
            callCenter = sub_100004778(isEndpointOnCurrentDevice);
            if (os_log_type_enabled(callCenter, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v26 = v11;
              v27 = 2112;
              v28 = necessaryCopy;
              _os_log_impl(&_mh_execute_header, callCenter, OS_LOG_TYPE_DEFAULT, "Requesting to pull call %@ because its continuity state is different from call %@", buf, 0x16u);
            }

            v20 = 1;
          }

          else
          {
            v17 = sub_100004778(isEndpointOnCurrentDevice);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v26 = v11;
              v27 = 2112;
              v28 = necessaryCopy;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Disconnecting call %@ because its continuity state is different from call %@", buf, 0x16u);
            }

            callCenter = [(CSDCallStateMonitor *)self callCenter];
            [callCenter disconnectCall:v11];
          }
        }
      }

      v10 = v10 + 1;
    }

    while (v8 != v10);
    v19 = [_allCalls countByEnumeratingWithState:&v21 objects:v29 count:16];
    v8 = v19;
  }

  while (v19);

  if (v20)
  {
    _allCalls = [(CSDCallStateMonitor *)self callCenter];
    [_allCalls pullRelayingCallsFromClient];
LABEL_26:
  }
}

- (void)_pushCallToAlternateDestinationIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  dialRequest = [necessaryCopy dialRequest];
  endpointIDSDestination = [dialRequest endpointIDSDestination];

  if (endpointIDSDestination)
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      dialRequest2 = [necessaryCopy dialRequest];
      endpointIDSDestination2 = [dialRequest2 endpointIDSDestination];
      v27 = 138412546;
      v28 = endpointIDSDestination2;
      v29 = 2112;
      v30 = necessaryCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "An endpointIDSDestination %@ is present for call %@ so pushing all hosted calls to that destination", &v27, 0x16u);
    }

    callCenter = [(CSDCallStateMonitor *)self callCenter];
    dialRequest3 = [necessaryCopy dialRequest];
    endpointIDSDestination3 = [dialRequest3 endpointIDSDestination];
    [callCenter pushHostedCallsToDestination:endpointIDSDestination3];
LABEL_11:

    goto LABEL_12;
  }

  dialRequest4 = [necessaryCopy dialRequest];
  endpointRapportMediaSystemIdentifier = [dialRequest4 endpointRapportMediaSystemIdentifier];
  if ([endpointRapportMediaSystemIdentifier length])
  {

LABEL_8:
    v20 = sub_100004778(v16);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      dialRequest5 = [necessaryCopy dialRequest];
      endpointRapportMediaSystemIdentifier2 = [dialRequest5 endpointRapportMediaSystemIdentifier];
      dialRequest6 = [necessaryCopy dialRequest];
      endpointRapportEffectiveIdentifier = [dialRequest6 endpointRapportEffectiveIdentifier];
      v27 = 138412802;
      v28 = endpointRapportMediaSystemIdentifier2;
      v29 = 2112;
      v30 = endpointRapportEffectiveIdentifier;
      v31 = 2112;
      v32 = necessaryCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "An endpointRapportMediaSystemIdentifier=%@ or endpointRapportEffectiveIdentifier=%@ is present on dial request for call %@ so attempting to pick matching route", &v27, 0x20u);
    }

    callCenter = [(CSDCallStateMonitor *)self callCenter];
    dialRequest3 = [necessaryCopy dialRequest];
    endpointIDSDestination3 = [dialRequest3 endpointRapportMediaSystemIdentifier];
    dialRequest7 = [necessaryCopy dialRequest];
    endpointRapportEffectiveIdentifier2 = [dialRequest7 endpointRapportEffectiveIdentifier];
    [callCenter pickRouteForRapportDeviceWithMediaSystemIdentifier:endpointIDSDestination3 effectiveIdentifier:endpointRapportEffectiveIdentifier2];

    goto LABEL_11;
  }

  dialRequest8 = [necessaryCopy dialRequest];
  endpointRapportEffectiveIdentifier3 = [dialRequest8 endpointRapportEffectiveIdentifier];
  v19 = [endpointRapportEffectiveIdentifier3 length];

  if (v19)
  {
    goto LABEL_8;
  }

LABEL_12:
}

- (void)_setUpBreakBeforeMakeTimeoutIfNecessaryForCall:(id)call
{
  callCopy = call;
  if ([callCopy status] == 3 && objc_msgSend(callCopy, "isVideo") && objc_msgSend(callCopy, "mayRequireBreakBeforeMake"))
  {
    uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
    v6 = sub_100004778(uniqueProxyIdentifier);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = callCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting up break before make timeout for call: %@", buf, 0xCu);
    }

    setUpBreakBeforeMakeTimeout = [(CSDCallStateMonitor *)self setUpBreakBeforeMakeTimeout];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000BD6AC;
    v10[3] = &unk_100619D88;
    v10[4] = self;
    v11 = uniqueProxyIdentifier;
    v8 = setUpBreakBeforeMakeTimeout[2];
    v9 = uniqueProxyIdentifier;
    v8(setUpBreakBeforeMakeTimeout, v10);
  }
}

- (void)_handleAudioReadyForCall:(id)call
{
  callCopy = call;
  if ([callCopy isRTT])
  {
    routeManager = [(CSDCallStateMonitor *)self routeManager];
    isCarPlayRouteAvailable = [routeManager isCarPlayRouteAvailable];

    isEmergency = [callCopy isEmergency];
    v8 = isCarPlayRouteAvailable | isEmergency;
    v9 = sub_100004778(isEmergency);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v21 = 138412290;
        v22 = callCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CarPlay is connected; unmuting uplink for RTT call %@", &v21, 0xCu);
      }

LABEL_13:
      v16 = (v8 ^ 1) & 1;
      v15 = callCopy;
LABEL_16:
      [v15 setUplinkMuted:v16];
      goto LABEL_17;
    }

    if (v10)
    {
      v21 = 138412290;
      v22 = callCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CarPlay is not connected; muting uplink for RTT call %@", &v21, 0xCu);
    }

    rttUtilities = [(CSDCallStateMonitor *)self rttUtilities];
    v18 = [rttUtilities answerRTTCallAsMutedForCall:callCopy];

    if (v18)
    {
      goto LABEL_13;
    }

    v20 = sub_100004778(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = callCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Not muting uplink because RTTUUtilities says not to mute the uplink for RTT calls %@", &v21, 0xCu);
    }
  }

  else
  {
    provider = [callCopy provider];
    isTinCanProvider = [provider isTinCanProvider];

    if (isTinCanProvider)
    {
      v14 = sub_100004778(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = callCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Setting uplink muted for TinCan call %@", &v21, 0xCu);
      }

      v15 = callCopy;
      v16 = 1;
      goto LABEL_16;
    }

    if (([callCopy uplinkWasExplicitlyMuted] & 1) == 0)
    {
      v15 = callCopy;
      v16 = 0;
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (id)_ringingTimerForCallWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = sub_100004778(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting ringing timer for call with identifier %@", buf, 0xCu);
  }

  queue = [(CSDCallStateMonitor *)self queue];
  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);

  v8 = dispatch_time(0, 60000000000);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
  objc_initWeak(buf, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000BDC78;
  v11[3] = &unk_10061A600;
  objc_copyWeak(&v13, buf);
  v12 = identifierCopy;
  v9 = identifierCopy;
  dispatch_source_set_event_handler(v7, v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);

  return v7;
}

- (void)_handleCallDurationTimerFired
{
  callContainer = [(CSDCallStateMonitor *)self callContainer];
  v4 = [callContainer callsPassingTest:&stru_10061ABB8];

  v5 = [v4 count];
  if (v5)
  {
    v6 = sub_100004778(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Disconnecting restricted calls because the limited call duration timer fired: %@", buf, 0xCu);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        v11 = 0;
        do
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * v11);
          callCenter = [(CSDCallStateMonitor *)self callCenter];
          [callCenter disconnectCall:v12];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    v14 = TUBundle();
    v15 = [v14 localizedStringForKey:@"CALL_ENDED" value:&stru_100631E68 table:@"TelephonyUtilities"];
    v16 = TUBundle();
    v17 = [v16 localizedStringForKey:@"CALL_ENDED_DEMO_EXPLANATION" value:&stru_100631E68 table:@"TelephonyUtilities"];
    v18 = TUBundle();
    v19 = [v18 localizedStringForKey:@"OK" value:&stru_100631E68 table:@"TelephonyUtilities"];
    v20 = [IMUserNotification userNotificationWithIdentifier:@"RetailDemoNotification" title:v15 message:v17 defaultButton:v19 alternateButton:0 otherButton:0];

    [v20 setUsesNotificationCenter:0];
    [v20 setRepresentedApplicationBundle:TUBundleIdentifierTelephonyUtilitiesFramework];
    v21 = +[IMUserNotificationCenter sharedInstance];
    [v21 addUserNotification:v20 listener:0 completionHandler:0];
  }
}

- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation
{
  conversationCopy = conversation;
  if ([conversationCopy state] == 3 && !objc_msgSend(conversationCopy, "avMode"))
  {
    provider = [conversationCopy provider];
    isTelephonyWithSharePlayProvider = [provider isTelephonyWithSharePlayProvider];

    v9 = sub_100004778(v8);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (isTelephonyWithSharePlayProvider)
    {
      if (v10)
      {
        v16 = 138412290;
        v17 = conversationCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "conversation %@ is TelephonyWithSharePlayProvider, do not disconnect calls", &v16, 0xCu);
      }

      goto LABEL_14;
    }

    if (v10)
    {
      v16 = 138412290;
      v17 = conversationCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Disconnecting all calls since we have an AVLess conversation that is Joined: %@", &v16, 0xCu);
    }

    callCenter = [(CSDCallStateMonitor *)self callCenter];
    groupUUID = [conversationCopy groupUUID];
    v9 = [callCenter callForConversationWithGroupUUID:groupUUID];

    presentationContext = [conversationCopy presentationContext];
    if ([presentationContext mode] == 2 && v9)
    {
      status = [v9 status];

      if (status != 4)
      {
LABEL_13:
        callCenter2 = [(CSDCallStateMonitor *)self callCenter];
        [callCenter2 disconnectAllCalls];

LABEL_14:
        goto LABEL_15;
      }

      presentationContext = [(CSDCallStateMonitor *)self callCenter];
      [presentationContext disconnectCall:v9 withReason:1];
    }

    goto LABEL_13;
  }

LABEL_15:
}

@end