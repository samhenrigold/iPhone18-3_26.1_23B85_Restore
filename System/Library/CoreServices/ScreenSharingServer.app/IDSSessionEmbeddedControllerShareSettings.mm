@interface IDSSessionEmbeddedControllerShareSettings
- (BOOL)showUserTermsAndConditions;
- (IDSSessionEmbeddedControllerShareSettings)init;
- (IDSSessionEmbeddedControllerShareSettings)initWithRemoteID:(id)d sessionID:(id)iD andServiceController:(id)controller appleName:(id)name;
- (void)dealloc;
- (void)doAcceptIDSInvitation;
- (void)doDeclineIDSInvitationWithReasonString:(id)string;
- (void)handleTermsAndConditions;
- (void)postInvitationNotification;
- (void)sendSharedSettings;
- (void)userFinishedTermsAndConditions:(id)conditions;
@end

@implementation IDSSessionEmbeddedControllerShareSettings

- (IDSSessionEmbeddedControllerShareSettings)init
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v8 = "[IDSSessionEmbeddedControllerShareSettings init]";
      v9 = 1024;
      v10 = 45;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] init called", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 45, "[IDSSessionEmbeddedControllerShareSettings init]", 7, 0, "init called");
  v6.receiver = self;
  v6.super_class = IDSSessionEmbeddedControllerShareSettings;
  return [(IDSSessionEmbeddedControllerBase *)&v6 init];
}

- (void)dealloc
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v7 = "[IDSSessionEmbeddedControllerShareSettings dealloc]";
      v8 = 1024;
      v9 = 55;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] dealloc called", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 55, "[IDSSessionEmbeddedControllerShareSettings dealloc]", 7, 0, "dealloc called");
  v5.receiver = self;
  v5.super_class = IDSSessionEmbeddedControllerShareSettings;
  [(IDSSessionEmbeddedControllerBase *)&v5 dealloc];
}

- (IDSSessionEmbeddedControllerShareSettings)initWithRemoteID:(id)d sessionID:(id)iD andServiceController:(id)controller appleName:(id)name
{
  dCopy = d;
  iDCopy = iD;
  controllerCopy = controller;
  nameCopy = name;
  v14 = [(IDSSessionEmbeddedControllerShareSettings *)self init];
  v15 = v14;
  if (v14)
  {
    [(IDSSessionEmbeddedControllerBase *)v14 setInviterID:dCopy];
    [(IDSSessionEmbeddedControllerBase *)v15 setIdsServiceController:controllerCopy];
    [(IDSSessionEmbeddedControllerBase *)v15 setInviterKind:2];
    v16 = sub_1000423E0();
    if (v16)
    {
      v17 = sub_100042E68(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v28 = "[IDSSessionEmbeddedControllerShareSettings initWithRemoteID:sessionID:andServiceController:appleName:]";
        v29 = 1024;
        v30 = 67;
        v31 = 2048;
        v32 = v15;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s:%d] set inviter kind to AppleCare self = %p", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 67, "[IDSSessionEmbeddedControllerShareSettings initWithRemoteID:sessionID:andServiceController:appleName:]", 7, 0, "set inviter kind to AppleCare self = %p", v15);
    [(IDSSessionEmbeddedControllerBase *)v15 setSessionID:iDCopy];
    v18 = sub_1000423E0();
    if (v18)
    {
      v19 = sub_100042E68(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String = [iDCopy UTF8String];
        *buf = 136315650;
        v28 = "[IDSSessionEmbeddedControllerShareSettings initWithRemoteID:sessionID:andServiceController:appleName:]";
        v29 = 1024;
        v30 = 70;
        v31 = 2080;
        v32 = uTF8String;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%s:%d] session ID = %s", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 70, "-[IDSSessionEmbeddedControllerShareSettings initWithRemoteID:sessionID:andServiceController:appleName:]", 7, 0, "session ID = %s", [iDCopy UTF8String]);
    [(IDSSessionEmbeddedControllerShareSettings *)v15 setUseAppleCareName:1];
    if (nameCopy)
    {
      if ([nameCopy isEqualToString:@"AS"])
      {
        [(IDSSessionEmbeddedControllerShareSettings *)v15 setUseAppleCareName:0];
      }

      else if (([nameCopy isEqualToString:@"AC"] & 1) == 0)
      {
        v21 = sub_1000423E0();
        if (v21)
        {
          v22 = sub_100042E68(v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v28 = "[IDSSessionEmbeddedControllerShareSettings initWithRemoteID:sessionID:andServiceController:appleName:]";
            v29 = 1024;
            v30 = 78;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%s:%d] unknown name specifier - using AppleCare", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 78, "[IDSSessionEmbeddedControllerShareSettings initWithRemoteID:sessionID:andServiceController:appleName:]", 7, 0, "unknown name specifier - using AppleCare");
      }
    }

    v23 = sub_1000423E0();
    if (v23)
    {
      v24 = sub_100042E68(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        useAppleCareName = [(IDSSessionEmbeddedControllerShareSettings *)v15 useAppleCareName];
        *buf = 136315650;
        v28 = "[IDSSessionEmbeddedControllerShareSettings initWithRemoteID:sessionID:andServiceController:appleName:]";
        v29 = 1024;
        v30 = 80;
        v31 = 1024;
        LODWORD(v32) = useAppleCareName;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%s:%d] useAppleCareName %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 80, "[IDSSessionEmbeddedControllerShareSettings initWithRemoteID:sessionID:andServiceController:appleName:]", 7, 0, "useAppleCareName %d", [(IDSSessionEmbeddedControllerShareSettings *)v15 useAppleCareName]);
  }

  return v15;
}

- (void)postInvitationNotification
{
  error = 0;
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      sessionID = [(IDSSessionEmbeddedControllerBase *)self sessionID];
      *buf = 136315650;
      v48 = "[IDSSessionEmbeddedControllerShareSettings postInvitationNotification]";
      v49 = 1024;
      v50 = 93;
      v51 = 2080;
      selfCopy = [sessionID UTF8String];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] postInvitationNotification for %s", buf, 0x1Cu);
    }
  }

  sessionID2 = [(IDSSessionEmbeddedControllerBase *)self sessionID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 93, "-[IDSSessionEmbeddedControllerShareSettings postInvitationNotification]", 7, 0, "postInvitationNotification for %s", [sessionID2 UTF8String]);

  if (qword_100070A60 != -1)
  {
    sub_1000439E8();
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  inviterIconPath = [(IDSSessionEmbeddedControllerBase *)self inviterIconPath];

  if (inviterIconPath)
  {
    inviterIconPath2 = [(IDSSessionEmbeddedControllerBase *)self inviterIconPath];
    CFDictionaryAddValue(Mutable, @"SBUserNotificationIconImagePath", inviterIconPath2);
  }

  inviterKind = [(IDSSessionEmbeddedControllerBase *)self inviterKind];
  MainBundle = CFBundleGetMainBundle();
  if (inviterKind == 3)
  {
    v12 = @"kSSShareSettingsAppleSupport";
  }

  else
  {
    v12 = @"kSSShareSettings";
  }

  v13 = CFBundleCopyLocalizedString(MainBundle, v12, v12, 0);
  if (v13)
  {
    CFDictionaryAddValue(Mutable, kCFUserNotificationAlertHeaderKey, v13);
    CFRelease(v13);
  }

  inviterFullName = [(IDSSessionEmbeddedControllerAppleCare *)self inviterFullName];

  if (inviterFullName)
  {
    CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertHeaderKey, inviterFullName);
  }

  inviterKind2 = [(IDSSessionEmbeddedControllerBase *)self inviterKind];
  v16 = CFBundleGetMainBundle();
  if (inviterKind2 == 3)
  {
    v17 = @"kSSShareSettingsAppleSupport";
  }

  else
  {
    v17 = @"kSSShareSettings";
  }

  v18 = CFBundleCopyLocalizedString(v16, v17, v17, 0);
  if (v18)
  {
    CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertMessageKey, v18);
    CFRelease(v18);
  }

  idsServiceController = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
  isAppleTV = [idsServiceController isAppleTV];

  inviterKind3 = [(IDSSessionEmbeddedControllerBase *)self inviterKind];
  v22 = CFBundleGetMainBundle();
  if (isAppleTV)
  {
    if (inviterKind3 == 3)
    {
      v23 = @"kSSSelectAcceptShareSettingsAppleSupportAppleTV";
    }

    else
    {
      v23 = @"kSSSelectAcceptShareSettingsAppleTV";
    }
  }

  else if (inviterKind3 == 3)
  {
    v23 = @"kSSTapShareSettingsAppleSupport";
  }

  else
  {
    v23 = @"kSSTapShareSettings";
  }

  v24 = CFBundleCopyLocalizedString(v22, v23, v23, 0);
  if (v24)
  {
    CFDictionaryAddValue(Mutable, kCFUserNotificationAlertMessageKey, v24);
    CFRelease(v24);
  }

  v25 = CFBundleGetMainBundle();
  v26 = CFBundleCopyLocalizedString(v25, @"kSSDecline", @"kSSDecline", 0);
  if (v26)
  {
    v27 = v26;
    CFDictionaryAddValue(Mutable, kCFUserNotificationAlternateButtonTitleKey, v26);
    CFRelease(v27);
  }

  v28 = CFBundleGetMainBundle();
  v29 = CFBundleCopyLocalizedString(v28, @"kSSAccept", @"kSSAccept", 0);
  if (v29)
  {
    v30 = v29;
    CFDictionaryAddValue(Mutable, kCFUserNotificationOtherButtonTitleKey, v29);
    CFRelease(v30);
  }

  CFDictionaryAddValue(Mutable, kCFUserNotificationAlertTopMostKey, kCFBooleanTrue);
  [(IDSSessionEmbeddedControllerBase *)self setInvitationNotification:CFUserNotificationCreate(0, 0.0, 0x23uLL, &error, Mutable)];
  CFRelease(Mutable);
  invitationNotification = [(IDSSessionEmbeddedControllerBase *)self invitationNotification];
  v32 = sub_1000423E0();
  if (invitationNotification)
  {
    if (v32)
    {
      v33 = sub_100042E68(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v48 = "[IDSSessionEmbeddedControllerShareSettings postInvitationNotification]";
        v49 = 1024;
        v50 = 175;
        v51 = 1024;
        LODWORD(selfCopy) = error;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[%s:%d] got CFUserNotificationCreate error %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 175, "[IDSSessionEmbeddedControllerShareSettings postInvitationNotification]", 7, 0, "got CFUserNotificationCreate error %d", error);
    RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, [(IDSSessionEmbeddedControllerBase *)self invitationNotification], sub_100026AE4, 0);
    v35 = sub_1000423E0();
    if (RunLoopSource)
    {
      if (v35)
      {
        v36 = sub_100042E68(v35);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v48 = "[IDSSessionEmbeddedControllerShareSettings postInvitationNotification]";
          v49 = 1024;
          v50 = 185;
          v51 = 2048;
          selfCopy = self;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[%s:%d] adding self %p to pending notifications", buf, 0x1Cu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 185, "[IDSSessionEmbeddedControllerShareSettings postInvitationNotification]", 7, 0, "adding self %p to pending notifications", self);
      [qword_100070AF8 addObject:self];
      v37 = sub_1000423E0();
      if (v37)
      {
        v38 = sub_100042E68(v37);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = [qword_100070AF8 count];
          *buf = 136315650;
          v48 = "[IDSSessionEmbeddedControllerShareSettings postInvitationNotification]";
          v49 = 1024;
          v50 = 187;
          v51 = 2048;
          selfCopy = v39;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[%s:%d] [gPendingUserNotifications count %lu", buf, 0x1Cu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 187, "-[IDSSessionEmbeddedControllerShareSettings postInvitationNotification]", 7, 0, "[gPendingUserNotifications count %lu", [qword_100070AF8 count]);
      v40 = +[NSDate date];
      [(IDSSessionEmbeddedControllerBase *)self setNotificationStartTime:v40];

      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopDefaultMode);
      v42 = [NSTimer scheduledTimerWithTimeInterval:self target:"userNotificationTimeout:" selector:0 userInfo:0 repeats:28.0];
      [(IDSSessionEmbeddedControllerBase *)self setNotificationTimeoutTimer:v42];

      invitationNotification2 = RunLoopSource;
    }

    else
    {
      if (v35)
      {
        v45 = sub_100042E68(v35);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v48 = "[IDSSessionEmbeddedControllerShareSettings postInvitationNotification]";
          v49 = 1024;
          v50 = 180;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[%s:%d] Failed to create run loop source for notification", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 180, "[IDSSessionEmbeddedControllerShareSettings postInvitationNotification]", 7, 0, "Failed to create run loop source for notification");
      invitationNotification2 = [(IDSSessionEmbeddedControllerBase *)self invitationNotification];
    }

    CFRelease(invitationNotification2);
  }

  else
  {
    if (v32)
    {
      v44 = sub_100042E68(v32);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v48 = "[IDSSessionEmbeddedControllerShareSettings postInvitationNotification]";
        v49 = 1024;
        v50 = 172;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[%s:%d] failed to create notification", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 172, "[IDSSessionEmbeddedControllerShareSettings postInvitationNotification]", 7, 0, "failed to create notification");
  }
}

- (void)doAcceptIDSInvitation
{
  handledSessionEnd = [(IDSSessionEmbeddedControllerBase *)self handledSessionEnd];
  v4 = sub_1000423E0();
  if (handledSessionEnd)
  {
    if (v4)
    {
      v5 = sub_100042E68(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v11 = "[IDSSessionEmbeddedControllerShareSettings doAcceptIDSInvitation]";
        v12 = 1024;
        v13 = 213;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] session already ended - ignore", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 213, "[IDSSessionEmbeddedControllerShareSettings doAcceptIDSInvitation]", 7, 0, "session already ended - ignore");
  }

  else
  {
    if (v4)
    {
      v6 = sub_100042E68(v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v11 = "[IDSSessionEmbeddedControllerShareSettings doAcceptIDSInvitation]";
        v12 = 1024;
        v13 = 202;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] user accepted invite", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 202, "[IDSSessionEmbeddedControllerShareSettings doAcceptIDSInvitation]", 7, 0, "user accepted invite");
    [(IDSSessionEmbeddedControllerBase *)self setAppleIDInviteWasAcceptedOrDeclined:1];
    idsServiceController = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
    [idsServiceController inviteWasAccepted:self];

    v8 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000D42C;
    block[3] = &unk_100068CB0;
    block[4] = self;
    dispatch_async(v8, block);
  }
}

- (void)handleTermsAndConditions
{
  idsServiceController = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
  inviterID = [(IDSSessionEmbeddedControllerBase *)self inviterID];
  v5 = [idsServiceController inviterIsInActiveSession:inviterID];

  if (!v5)
  {
    goto LABEL_17;
  }

  keyExistsAndHasValidFormat = 0;
  v6 = sub_1000423E0();
  if (v6)
  {
    v7 = sub_100042E68(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v25 = "[IDSSessionEmbeddedControllerShareSettings handleTermsAndConditions]";
      v26 = 1024;
      v27 = 224;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] inviter is in active session", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 224, "[IDSSessionEmbeddedControllerShareSettings handleTermsAndConditions]", 7, 0, "inviter is in active session");
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ForceTC", @"com.apple.screensharingserver", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v9 = AppBooleanValue == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  v11 = sub_1000423E0();
  if (v11)
  {
    v12 = sub_100042E68(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v25 = "[IDSSessionEmbeddedControllerShareSettings handleTermsAndConditions]";
      v26 = 1024;
      v27 = 228;
      v28 = 1024;
      v29 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] forceTermsAndConditions: %d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 228, "[IDSSessionEmbeddedControllerShareSettings handleTermsAndConditions]", 7, 0, "forceTermsAndConditions: %d", v10);
  if (!v10)
  {
    v19 = sub_1000423E0();
    if (v19)
    {
      v20 = sub_100042E68(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v25 = "[IDSSessionEmbeddedControllerShareSettings handleTermsAndConditions]";
        v26 = 1024;
        v27 = 239;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] no need to ask for T&C just send TCAccepted message", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 239, "[IDSSessionEmbeddedControllerShareSettings handleTermsAndConditions]", 7, 0, "no need to ask for T&C just send TCAccepted message");
    idsServiceController2 = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
    [idsServiceController2 sendMessageTCAccepted];
    LOBYTE(showUserTermsAndConditions) = 1;
  }

  else
  {
LABEL_17:
    showUserTermsAndConditions = [(IDSSessionEmbeddedControllerShareSettings *)self showUserTermsAndConditions];
    v14 = sub_1000423E0();
    if (v14)
    {
      v15 = sub_100042E68(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        sessionID = [(IDSSessionEmbeddedControllerBase *)self sessionID];
        uTF8String = [sessionID UTF8String];
        *buf = 136315906;
        v25 = "[IDSSessionEmbeddedControllerShareSettings handleTermsAndConditions]";
        v26 = 1024;
        v27 = 235;
        v28 = 1024;
        v29 = showUserTermsAndConditions;
        v30 = 2080;
        v31 = uTF8String;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%s:%d] termsConditionsAccepted = %d for %s", buf, 0x22u);
      }
    }

    idsServiceController2 = [(IDSSessionEmbeddedControllerBase *)self sessionID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 235, "-[IDSSessionEmbeddedControllerShareSettings handleTermsAndConditions]", 7, 0, "termsConditionsAccepted = %d for %s", showUserTermsAndConditions, [idsServiceController2 UTF8String]);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D844;
  block[3] = &unk_100068CD8;
  block[4] = self;
  v22 = showUserTermsAndConditions;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)userFinishedTermsAndConditions:(id)conditions
{
  conditionsCopy = conditions;
  v5 = sub_1000423E0();
  if (v5)
  {
    v6 = sub_100042E68(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[IDSSessionEmbeddedControllerShareSettings userFinishedTermsAndConditions:]";
      v14 = 1024;
      v15 = 251;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] userFinishedTermsAndConditions", &v12, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 251, "[IDSSessionEmbeddedControllerShareSettings userFinishedTermsAndConditions:]", 7, 0, "userFinishedTermsAndConditions");
  [(IDSSessionEmbeddedControllerBase *)self stopLiveActivity];
  bOOLValue = [conditionsCopy BOOLValue];

  v8 = sub_1000423E0();
  if (bOOLValue)
  {
    if (v8)
    {
      v9 = sub_100042E68(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315394;
        v13 = "[IDSSessionEmbeddedControllerShareSettings userFinishedTermsAndConditions:]";
        v14 = 1024;
        v15 = 255;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] accepted terms and conditions", &v12, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 255, "[IDSSessionEmbeddedControllerShareSettings userFinishedTermsAndConditions:]", 7, 0, "accepted terms and conditions");
    [(IDSSessionEmbeddedControllerShareSettings *)self sendSharedSettings];
    idsServiceController = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
    [idsServiceController removeSession:self andEndIDSSession:0];
  }

  else
  {
    if (v8)
    {
      v11 = sub_100042E68(v8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315394;
        v13 = "[IDSSessionEmbeddedControllerShareSettings userFinishedTermsAndConditions:]";
        v14 = 1024;
        v15 = 261;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] declined terms", &v12, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 261, "[IDSSessionEmbeddedControllerShareSettings userFinishedTermsAndConditions:]", 7, 0, "declined terms");
    [(IDSSessionEmbeddedControllerShareSettings *)self doDeclineIDSInvitationWithReasonString:@"decline"];
  }
}

- (void)doDeclineIDSInvitationWithReasonString:(id)string
{
  stringCopy = string;
  handledSessionEnd = [(IDSSessionEmbeddedControllerBase *)self handledSessionEnd];
  v6 = sub_1000423E0();
  if (handledSessionEnd)
  {
    if (v6)
    {
      v7 = sub_100042E68(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[IDSSessionEmbeddedControllerShareSettings doDeclineIDSInvitationWithReasonString:]";
        v14 = 1024;
        v15 = 276;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] session already ended - ignore", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 276, "[IDSSessionEmbeddedControllerShareSettings doDeclineIDSInvitationWithReasonString:]", 7, 0, "session already ended - ignore");
  }

  else
  {
    if (v6)
    {
      v8 = sub_100042E68(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v13 = "[IDSSessionEmbeddedControllerShareSettings doDeclineIDSInvitationWithReasonString:]";
        v14 = 1024;
        v15 = 270;
        v16 = 2080;
        uTF8String = [stringCopy UTF8String];
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] user declined.  reason %s", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 270, "-[IDSSessionEmbeddedControllerShareSettings doDeclineIDSInvitationWithReasonString:]", 7, 0, "user declined.  reason %s", [stringCopy UTF8String]);
    [(IDSSessionEmbeddedControllerBase *)self setAppleIDInviteWasAcceptedOrDeclined:1];
    idsServiceController = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
    sessionID = [(IDSSessionEmbeddedControllerBase *)self sessionID];
    [idsServiceController sendMessageShareSettingsUserDecline:sessionID];

    idsServiceController2 = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
    [idsServiceController2 removeSession:self andEndIDSSession:0];
  }
}

- (void)sendSharedSettings
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[IDSSessionEmbeddedControllerShareSettings sendSharedSettings]";
      v11 = 1024;
      v12 = 281;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] user accepted T&C send system info", &v9, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 281, "[IDSSessionEmbeddedControllerShareSettings sendSharedSettings]", 7, 0, "user accepted T&C send system info");
  v5 = objc_opt_new();
  gatherSystemInfo = [v5 gatherSystemInfo];
  idsServiceController = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
  sessionID = [(IDSSessionEmbeddedControllerBase *)self sessionID];
  [idsServiceController sendMessageShareStatusResult:sessionID systemInfo:gatherSystemInfo];
}

- (BOOL)showUserTermsAndConditions
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v35 = "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]";
      v36 = 1024;
      v37 = 289;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] show share settings terms and conditions", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 289, "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]", 7, 0, "show share settings terms and conditions");
  v5 = sub_1000423E0();
  if (v5)
  {
    v6 = sub_100042E68(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      useAppleCareName = [(IDSSessionEmbeddedControllerShareSettings *)self useAppleCareName];
      *buf = 136315650;
      v35 = "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]";
      v36 = 1024;
      v37 = 292;
      v38 = 1024;
      LODWORD(v39) = useAppleCareName;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] useAppleCareName %d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 292, "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]", 7, 0, "useAppleCareName %d", [(IDSSessionEmbeddedControllerShareSettings *)self useAppleCareName]);
  v8 = [NSNumber numberWithBool:[(IDSSessionEmbeddedControllerShareSettings *)self useAppleCareName]^ 1];
  v42[0] = @"isShareSettings";
  v42[1] = @"isAppleSupportRequest";
  v43[0] = &__kCFBooleanTrue;
  v43[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
  v40[0] = SBSUIRemoteAlertOptionViewControllerClass;
  v40[1] = SBSUIRemoteAlertOptionDismissWithHomeButton;
  v41[0] = @"TermsConditionsViewController";
  v41[1] = &__kCFBooleanFalse;
  v40[2] = SBSUIRemoteAlertOptionStatusBarStyle;
  v10 = [NSNumber numberWithInteger:0];
  v41[2] = v10;
  v41[3] = &__kCFBooleanTrue;
  v40[3] = SBSUIRemoteAlertOptionDisableFadeInAnimation;
  v40[4] = SBSUIRemoteAlertOptionUserInfo;
  v41[4] = v9;
  v11 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:5];

  v12 = SBSUIActivateRemoteAlertWithLifecycleNotifications();
  v13 = sub_1000423E0();
  if (v13)
  {
    v14 = sub_100042E68(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v35 = "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]";
      v36 = 1024;
      v37 = 333;
      v38 = 1024;
      LODWORD(v39) = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%s:%d] RemoteAlert: %d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 333, "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]", 7, 0, "RemoteAlert: %d", v12);
  vsSemaphore = [(IDSSessionEmbeddedControllerBase *)self vsSemaphore];
  v16 = dispatch_time(0, 600000000000);
  v17 = dispatch_semaphore_wait(vsSemaphore, v16);
  v18 = v17 == 0;

  if (v17)
  {
    v19 = sub_1000423E0();
    if (v19)
    {
      v20 = sub_100042E68(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        sessionID = [(IDSSessionEmbeddedControllerBase *)self sessionID];
        uTF8String = [sessionID UTF8String];
        *buf = 136315650;
        v35 = "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]";
        v36 = 1024;
        v37 = 338;
        v38 = 2080;
        v39 = uTF8String;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] terms and conditions timeout for %s", buf, 0x1Cu);
      }
    }

    sessionID2 = [(IDSSessionEmbeddedControllerBase *)self sessionID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 338, "-[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]", 7, 0, "terms and conditions timeout for %s", [sessionID2 UTF8String]);

    [(IDSSessionEmbeddedControllerBase *)self stopLiveActivity];
  }

  v24 = sub_1000423E0();
  if (v24)
  {
    v25 = sub_100042E68(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v35 = "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]";
      v36 = 1024;
      v37 = 342;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%s:%d] woke up from semaphore", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 342, "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]", 7, 0, "woke up from semaphore");
  termsAccepted = [(IDSSessionEmbeddedControllerAppleCare *)self termsAccepted];
  v27 = sub_1000423E0();
  if (termsAccepted)
  {
    if (v27)
    {
      v28 = sub_100042E68(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v35 = "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]";
        v36 = 1024;
        v37 = 350;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%s:%d] terms were accepted", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 350, "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]", 7, 0, "terms were accepted");
  }

  else
  {
    if (v27)
    {
      v29 = sub_100042E68(v27);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        sessionID3 = [(IDSSessionEmbeddedControllerBase *)self sessionID];
        uTF8String2 = [sessionID3 UTF8String];
        *buf = 136315650;
        v35 = "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]";
        v36 = 1024;
        v37 = 346;
        v38 = 2080;
        v39 = uTF8String2;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%s:%d] terms not accepted for %s", buf, 0x1Cu);
      }
    }

    sessionID4 = [(IDSSessionEmbeddedControllerBase *)self sessionID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 346, "-[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]", 7, 0, "terms not accepted for %s", [sessionID4 UTF8String]);

    v18 = 0;
  }

  return v18;
}

@end