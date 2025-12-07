@interface PHRingtoneController
- (BOOL)_isActivePreferredOutputPort:(id)port;
- (BOOL)_shouldAnnounceCalls:(id)calls;
- (PHRingtoneController)init;
- (unsigned)audioSessionIdentifier;
- (unsigned)audioSessionIdentifierForSessionDescriptors:(id)descriptors;
- (void)_playCallAnnouncement:(id)announcement;
- (void)dealloc;
- (void)handleAVSystemController_ServerConnectionDiedNotification:(id)notification;
- (void)handleAVSystemController_SomeSessionIsPlayingDidChangeNotification:(id)notification;
- (void)playAnnouncementForCall:(id)call;
- (void)playDowntimeStartingAnnouncementForCall:(id)call;
- (void)setAudioSessionIdentifier:(unsigned int)identifier;
- (void)startObservingNotificationsForAVSystemController:(id)controller;
- (void)stopAnnouncement;
- (void)stopObservingNotificationsForAVSystemController:(id)controller;
@end

@implementation PHRingtoneController

- (void)stopAnnouncement
{
  queue = [(PHRingtoneController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B1F4;
  block[3] = &unk_100356988;
  block[4] = self;
  dispatch_async(queue, block);
}

- (PHRingtoneController)init
{
  v13.receiver = self;
  v13.super_class = PHRingtoneController;
  v2 = [(PHRingtoneController *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_audioSessionIdentifier = 0;
    v4 = objc_alloc_init(TUUserConfiguration);
    userConfiguration = v3->_userConfiguration;
    v3->_userConfiguration = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.InCallService.PHRingtoneController", v6);
    queue = v3->_queue;
    v3->_queue = v7;

    v9 = v3->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006E67C;
    block[3] = &unk_100356988;
    v12 = v3;
    dispatch_async(v9, block);
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[AVSystemController sharedAVSystemController];
  [(PHRingtoneController *)self stopObservingNotificationsForAVSystemController:v3];

  v4.receiver = self;
  v4.super_class = PHRingtoneController;
  [(PHRingtoneController *)&v4 dealloc];
}

- (void)startObservingNotificationsForAVSystemController:(id)controller
{
  controllerCopy = controller;
  queue = [(PHRingtoneController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [controllerCopy attributeForKey:AVSystemController_PlayingSessionsDescriptionAttribute];
  if (v6)
  {
    [(PHRingtoneController *)self setAudioSessionIdentifier:[(PHRingtoneController *)self audioSessionIdentifierForSessionDescriptors:v6]];
  }

  v13[0] = AVSystemController_ServerConnectionDiedNotification;
  v13[1] = AVSystemController_SomeSessionIsPlayingDidChangeNotification;
  v7 = [NSArray arrayWithObjects:v13 count:2];
  v12 = 0;
  v8 = [controllerCopy setAttribute:v7 forKey:AVSystemController_SubscribeToNotificationsAttribute error:&v12];
  v9 = v12;
  v10 = v9;
  if (v8)
  {
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:self selector:"handleAVSystemController_ServerConnectionDiedNotification:" name:AVSystemController_ServerConnectionDiedNotification object:controllerCopy];
    [v11 addObserver:self selector:"handleAVSystemController_SomeSessionIsPlayingDidChangeNotification:" name:AVSystemController_SomeSessionIsPlayingDidChangeNotification object:controllerCopy];
  }

  else
  {
    v11 = sub_100004F84(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1002546A8(v10, v11);
    }
  }
}

- (void)stopObservingNotificationsForAVSystemController:(id)controller
{
  controllerCopy = controller;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:AVSystemController_ServerConnectionDiedNotification object:controllerCopy];
  [v5 removeObserver:self name:AVSystemController_SomeSessionIsPlayingDidChangeNotification object:controllerCopy];
}

- (BOOL)_isActivePreferredOutputPort:(id)port
{
  portCopy = port;
  v4 = +[TUAudioSystemController sharedAudioSystemController];
  v5 = [portCopy UID];

  v6 = [v4 pickableRouteWithUniqueIdentifier:v5];

  isPreferredAndActive = [v6 isPreferredAndActive];
  v8 = isPreferredAndActive;
  if (isPreferredAndActive)
  {
    v9 = sub_100004F84(isPreferredAndActive);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = @"YES";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Preferred output port detected, setting preferredOutputPortEnabled = %@.", &v11, 0xCu);
    }
  }

  return v8;
}

- (BOOL)_shouldAnnounceCalls:(id)calls
{
  callsCopy = calls;
  queue = [(PHRingtoneController *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([callsCopy bypassAnnounceCallsPreference])
  {
    announceCalls = 1;
  }

  else
  {
    userConfiguration = [(PHRingtoneController *)self userConfiguration];
    announceCalls = [userConfiguration announceCalls];
  }

  bypassAnnounceCallsPreference = [callsCopy bypassAnnounceCallsPreference];
  v9 = bypassAnnounceCallsPreference;
  v10 = sub_100004F84(bypassAnnounceCallsPreference);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v12 = [NSString tu_stringWithTUConfigurationAnnounceCalls:announceCalls];
      *buf = 138412290;
      v69 = v12;
      v13 = "Call overwritten to %@";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
    }
  }

  else if (v11)
  {
    v12 = [NSString tu_stringWithTUConfigurationAnnounceCalls:announceCalls];
    *buf = 138412290;
    v69 = v12;
    v13 = "Call announcement preference set to %@";
    goto LABEL_9;
  }

  if (!announceCalls)
  {
    goto LABEL_78;
  }

  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  if (IsVoiceOverRunning)
  {
    v15 = sub_100004F84(IsVoiceOverRunning);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Suppressing the call announcement, Voice Over is active.", buf, 2u);
    }

    goto LABEL_78;
  }

  audioSessionIdentifier = [(PHRingtoneController *)self audioSessionIdentifier];
  v17 = audioSessionIdentifier;
  if (!audioSessionIdentifier)
  {
    v18 = sub_100004F84(audioSessionIdentifier);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Deferring call announcement until audio session is available.", buf, 2u);
    }
  }

  v19 = [AVAudioSession retrieveSessionWithID:v17];
  if (!v19)
  {
    v52 = sub_100004F84(0);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      sub_100254720(v17, v52);
    }

    goto LABEL_78;
  }

  v20 = v19;
  currentRoute = [(__CFString *)v19 currentRoute];
  outputs = [currentRoute outputs];

  if (![outputs count])
  {
    v53 = sub_100004F84(0);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v69 = v20;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Suppressing the call announcement, could not retrieve any output routes for the specified audio session (%@).", buf, 0xCu);
    }

    goto LABEL_78;
  }

  v58 = v20;
  v59 = announceCalls;
  v60 = callsCopy;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v23 = outputs;
  endpointType2 = [v23 countByEnumeratingWithState:&v64 objects:v72 count:16];
  if (!endpointType2)
  {
    v61 = 0;
    v63 = 0;
    v26 = 0;
    goto LABEL_74;
  }

  v25 = endpointType2;
  v61 = 0;
  selfCopy = self;
  v63 = 0;
  v26 = 0;
  v27 = *v65;
  do
  {
    v28 = 0;
    do
    {
      if (*v65 != v27)
      {
        objc_enumerationMutation(v23);
      }

      v29 = *(*(&v64 + 1) + 8 * v28);
      v30 = sub_100004F84(endpointType2);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        portName = [v29 portName];
        endpointType = [v29 endpointType];
        *buf = 138412546;
        v69 = portName;
        v70 = 2048;
        v71 = endpointType;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Verifying call announcement eligibility of output port %@ with endpoint type '%tu'.", buf, 0x16u);
      }

      endpointType2 = [v29 endpointType];
      if (endpointType2 <= 1953790302)
      {
        if (endpointType2 != 1751412846)
        {
          if (endpointType2 != 1936747378)
          {
            goto LABEL_52;
          }

          v34 = sub_100004F84(1936747378);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v69 = @"YES";
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Connected to an external speaker, setting speakerEnabled = %@.", buf, 0xCu);
          }

          goto LABEL_40;
        }

        v39 = sub_100004F84(1751412846);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v69 = @"YES";
          v40 = v39;
          v41 = "Headphones output port detected, setting headphonesEnabled = %@.";
LABEL_49:
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, v41, buf, 0xCu);
        }

LABEL_50:

        endpointType2 = [(PHRingtoneController *)selfCopy _isActivePreferredOutputPort:v29];
        v63 = endpointType2;
LABEL_51:
        v26 = 1;
        goto LABEL_52;
      }

      switch(endpointType2)
      {
        case 1953790303:
          v35 = sub_100004F84(1953790303);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Call announcements via TTY are not supported.", buf, 2u);
          }

          break;
        case 1969977198:
          portType = [v29 portType];
          v37 = [portType isEqualToString:AVAudioSessionPortBluetoothHFP];

          if (v37)
          {
            v39 = sub_100004F84(v38);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v69 = @"YES";
              v40 = v39;
              v41 = "Bluetooth Hands-Free Profile output port detected, setting headphonesEnabled = %@.";
              goto LABEL_49;
            }

            goto LABEL_50;
          }

          portType2 = [v29 portType];
          v43 = [portType2 isEqualToString:AVAudioSessionPortHeadphones];

          if (v43)
          {
            v45 = sub_100004F84(v44);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v69 = @"YES";
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Headphone or headset output port detected, setting headphonesEnabled = %@.", buf, 0xCu);
            }

            goto LABEL_51;
          }

          portType3 = [v29 portType];
          v47 = [portType3 isEqualToString:AVAudioSessionPortBuiltInSpeaker];

          v49 = sub_100004F84(v48);
          v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
          if (v47)
          {
            if (v50)
            {
              *buf = 138412290;
              v69 = @"YES";
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Built-in speaker output port detected, setting speakerEnabled = %@.", buf, 0xCu);
            }

LABEL_40:
            BYTE4(v61) = 1;
            break;
          }

          if (v50)
          {
            portName2 = [v29 portName];
            *buf = 138412290;
            v69 = portName2;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Call announcements via %@ are not supported.", buf, 0xCu);
          }

          break;
        case 1986552684:
          v33 = sub_100004F84(1986552684);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v69 = @"YES";
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Connected to a vehicle via bluetooth, setting connectedToVehicle = %@.", buf, 0xCu);
          }

          LOBYTE(v61) = 1;
          break;
      }

LABEL_52:
      ++v28;
    }

    while (v25 != v28);
    endpointType2 = [v23 countByEnumeratingWithState:&v64 objects:v72 count:16];
    v25 = endpointType2;
  }

  while (endpointType2);
LABEL_74:

  if (v59 == 1)
  {
    v56 = v26 | v63 | BYTE4(v61) | v61;
    callsCopy = v60;
  }

  else
  {
    callsCopy = v60;
    if (v59 == 3)
    {
      v54 = v26 & (BYTE4(v61) ^ 1);
      v55 = v63;
LABEL_81:
      v56 = v54 | v55;
    }

    else
    {
      if (v59 == 2)
      {
        v54 = v26 & (BYTE4(v61) ^ 1);
        v55 = v63 | v61;
        goto LABEL_81;
      }

LABEL_78:
      v56 = 0;
    }
  }

  return v56 & 1;
}

- (void)_playCallAnnouncement:(id)announcement
{
  announcementCopy = announcement;
  v5 = [(PHRingtoneController *)self _shouldAnnounceCalls:announcementCopy];
  if (v5)
  {
    callAnnouncement = [(PHRingtoneController *)self callAnnouncement];

    if (callAnnouncement)
    {
      callAnnouncement4 = sub_100004F84(v7);
      if (os_log_type_enabled(callAnnouncement4, OS_LOG_TYPE_DEFAULT))
      {
        callAnnouncement2 = [(PHRingtoneController *)self callAnnouncement];
        v12 = 138412546;
        v13 = callAnnouncement2;
        v14 = 2112;
        v15 = announcementCopy;
        _os_log_impl(&_mh_execute_header, callAnnouncement4, OS_LOG_TYPE_DEFAULT, "Announcements are enabled but already playing a call announcement (%@), so will not play call announcement (%@).", &v12, 0x16u);
      }
    }

    else
    {
      [announcementCopy setAudioSessionIdentifier:{-[PHRingtoneController audioSessionIdentifier](self, "audioSessionIdentifier")}];
      v10 = sub_100004F84([(PHRingtoneController *)self setCallAnnouncement:announcementCopy]);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        callAnnouncement3 = [(PHRingtoneController *)self callAnnouncement];
        v12 = 138412290;
        v13 = callAnnouncement3;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Announcements are enabled, playing call announcement (%@).", &v12, 0xCu);
      }

      callAnnouncement4 = [(PHRingtoneController *)self callAnnouncement];
      [callAnnouncement4 start];
    }
  }

  else
  {
    callAnnouncement4 = sub_100004F84(v5);
    if (os_log_type_enabled(callAnnouncement4, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = announcementCopy;
      _os_log_impl(&_mh_execute_header, callAnnouncement4, OS_LOG_TYPE_DEFAULT, "Announcements are disabled, will not play call announcement (%@).", &v12, 0xCu);
    }
  }
}

- (void)playAnnouncementForCall:(id)call
{
  v4 = [(ICSCallAnnouncement *)ICSSiriCallAnnouncement announcementWithCall:call];
  queue = [(PHRingtoneController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006F5B0;
  v7[3] = &unk_100357110;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)playDowntimeStartingAnnouncementForCall:(id)call
{
  v4 = [(ICSCallAnnouncement *)ICSDowntimeAnnouncement announcementWithCall:call];
  [(PHRingtoneController *)self setCallAnnouncement:v4];
  queue = [(PHRingtoneController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006F680;
  block[3] = &unk_100356988;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (unsigned)audioSessionIdentifier
{
  queue = [(PHRingtoneController *)self queue];
  dispatch_assert_queue_V2(queue);

  return self->_audioSessionIdentifier;
}

- (void)setAudioSessionIdentifier:(unsigned int)identifier
{
  queue = [(PHRingtoneController *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->_audioSessionIdentifier != identifier)
  {
    self->_audioSessionIdentifier = identifier;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006F770;
    block[3] = &unk_100356988;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)handleAVSystemController_ServerConnectionDiedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v12 = 2112;
    v13 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", buf, 0x16u);
  }

  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    queue = self->_queue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10006F930;
    v8[3] = &unk_100357110;
    v8[4] = self;
    v9 = object;
    dispatch_async(queue, v8);
  }
}

- (void)handleAVSystemController_SomeSessionIsPlayingDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", buf, 0x16u);
  }

  userInfo = [notificationCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:AVSystemController_SomeSessionIsPlayingDidChangeNotificationParameter_Sessions];

  if (v7)
  {
    queue = [(PHRingtoneController *)self queue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10006FB0C;
    v9[3] = &unk_100357110;
    v9[4] = self;
    v10 = v7;
    dispatch_async(queue, v9);
  }
}

- (unsigned)audioSessionIdentifierForSessionDescriptors:(id)descriptors
{
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  descriptorsCopy = descriptors;
  v4 = [descriptorsCopy countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    unsignedIntValue = 0;
    v6 = *v29;
    v23 = TUBundleIdentifierCallServicesDaemon;
    v22 = descriptorsCopy;
    v25 = *v29;
    while (1)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(descriptorsCopy);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        v9 = AVSystemController_PlayingSessionsDescriptionKey_ClientPID;
        v10 = [v8 objectForKeyedSubscript:v9];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          continue;
        }

        v11 = +[RBSProcessIdentifier identifierWithPid:](RBSProcessIdentifier, "identifierWithPid:", [v10 intValue]);
        if (!v11)
        {
          v14 = 0;
          v19 = 1;
          goto LABEL_24;
        }

        v27 = 0;
        v12 = [RBSProcessHandle handleForIdentifier:v11 error:&v27];
        v13 = v27;
        v14 = v13;
        if (v12)
        {
          v15 = [RBSProcessPredicate predicateMatchingServiceName:v23];
          if (v15)
          {
            v26 = 0;
            v16 = [RBSProcessHandle handleForPredicate:v15 error:&v26];
            v24 = v26;

            if (v16 && [v12 isEqual:v16])
            {
              v17 = AVSystemController_PlayingSessionsDescriptionKey_AudioSessionID;

              v18 = [v8 objectForKeyedSubscript:v17];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                unsignedIntValue = [v18 unsignedIntValue];
                v19 = 0;
              }

              else
              {
                v19 = 1;
              }

              v10 = v18;
              v9 = v17;
            }

            else
            {
              v19 = 1;
            }

            v14 = v24;
            descriptorsCopy = v22;
            goto LABEL_23;
          }
        }

        else
        {
          v15 = sub_100004F84(v13);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v33 = v14;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Retrieving process handle failed with error %@", buf, 0xCu);
          }
        }

        v19 = 1;
LABEL_23:

        v6 = v25;
LABEL_24:

        if (!v19)
        {
          goto LABEL_29;
        }
      }

      v5 = [descriptorsCopy countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (!v5)
      {
        goto LABEL_29;
      }
    }
  }

  unsignedIntValue = 0;
LABEL_29:

  return unsignedIntValue;
}

@end