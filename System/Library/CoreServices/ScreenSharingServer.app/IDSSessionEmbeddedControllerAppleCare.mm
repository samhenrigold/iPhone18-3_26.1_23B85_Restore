@interface IDSSessionEmbeddedControllerAppleCare
- (BOOL)showUserTermsAndConditions;
- (IDSSessionEmbeddedControllerAppleCare)initWithRemoteID:(id)d session:(id)session direction:(int64_t)direction inviteDictionary:(id)dictionary andServiceController:(id)controller autoAcceptInvite:(BOOL)invite startOutPaused:(BOOL)paused appleName:(id)self0;
- (id)inviterFullName;
- (void)doAcceptIDSInvitation;
- (void)postInvitationNotification;
- (void)shouldStartScreenSharingSession;
- (void)termsAndConditionsResult:(id)result;
@end

@implementation IDSSessionEmbeddedControllerAppleCare

- (IDSSessionEmbeddedControllerAppleCare)initWithRemoteID:(id)d session:(id)session direction:(int64_t)direction inviteDictionary:(id)dictionary andServiceController:(id)controller autoAcceptInvite:(BOOL)invite startOutPaused:(BOOL)paused appleName:(id)self0
{
  inviteCopy = invite;
  dCopy = d;
  sessionCopy = session;
  dictionaryCopy = dictionary;
  controllerCopy = controller;
  nameCopy = name;
  v20 = [(IDSSessionEmbeddedControllerBase *)self init];
  if (v20)
  {
    v21 = sub_1000423E0();
    if (v21)
    {
      v22 = sub_100042E68(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        sessionID = [sessionCopy sessionID];
        *buf = 136315650;
        v34 = "[IDSSessionEmbeddedControllerAppleCare initWithRemoteID:session:direction:inviteDictionary:andServiceController:autoAcceptInvite:startOutPaused:appleName:]";
        v35 = 1024;
        v36 = 88;
        v37 = 2080;
        uTF8String = [sessionID UTF8String];
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%s:%d] init with remoteid session %s", buf, 0x1Cu);
      }
    }

    sessionID2 = [sessionCopy sessionID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 88, "-[IDSSessionEmbeddedControllerAppleCare initWithRemoteID:session:direction:inviteDictionary:andServiceController:autoAcceptInvite:startOutPaused:appleName:]", 7, 0, "init with remoteid session %s", [sessionID2 UTF8String]);

    [(IDSSessionEmbeddedControllerBase *)v20 setInviterID:dCopy];
    [(IDSSessionEmbeddedControllerBase *)v20 setIdsSession:sessionCopy];
    idsSession = [(IDSSessionEmbeddedControllerBase *)v20 idsSession];
    [idsSession setDelegate:v20 queue:&_dispatch_main_q];

    sessionID3 = [sessionCopy sessionID];
    [(IDSSessionEmbeddedControllerBase *)v20 setSessionID:sessionID3];

    idsSession2 = [(IDSSessionEmbeddedControllerBase *)v20 idsSession];
    [idsSession2 setInvitationTimeOut:25];

    [(IDSSessionEmbeddedControllerBase *)v20 setIdsServiceController:controllerCopy];
    [(IDSSessionEmbeddedControllerBase *)v20 setRemoteAVConferenceInviteDictionary:dictionaryCopy];
    [(IDSSessionEmbeddedControllerAppleCare *)v20 setStartOutPaused:paused];
    [(IDSSessionEmbeddedControllerBase *)v20 setInviterKind:2];
    if (nameCopy)
    {
      if ([nameCopy isEqualToString:@"AS"])
      {
        [(IDSSessionEmbeddedControllerBase *)v20 setInviterKind:3];
      }

      else if (([nameCopy isEqualToString:@"AC"] & 1) == 0)
      {
        v28 = sub_1000423E0();
        if (v28)
        {
          v29 = sub_100042E68(v28);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v34 = "[IDSSessionEmbeddedControllerAppleCare initWithRemoteID:session:direction:inviteDictionary:andServiceController:autoAcceptInvite:startOutPaused:appleName:]";
            v35 = 1024;
            v36 = 116;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%s:%d] unknown name specifier - using AppleCare", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 116, "[IDSSessionEmbeddedControllerAppleCare initWithRemoteID:session:direction:inviteDictionary:andServiceController:autoAcceptInvite:startOutPaused:appleName:]", 7, 0, "unknown name specifier - using AppleCare");
      }
    }

    v30 = sub_1000423E0();
    if (v30)
    {
      v31 = sub_100042E68(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v34 = "[IDSSessionEmbeddedControllerAppleCare initWithRemoteID:session:direction:inviteDictionary:andServiceController:autoAcceptInvite:startOutPaused:appleName:]";
        v35 = 1024;
        v36 = 120;
        v37 = 1024;
        LODWORD(uTF8String) = inviteCopy;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%s:%d] autoAcceptInvitationFlag %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 120, "[IDSSessionEmbeddedControllerAppleCare initWithRemoteID:session:direction:inviteDictionary:andServiceController:autoAcceptInvite:startOutPaused:appleName:]", 7, 0, "autoAcceptInvitationFlag %d", inviteCopy);
    [(IDSSessionEmbeddedControllerBase *)v20 setAutoAcceptInvitation:inviteCopy];
    if (inviteCopy)
    {
      [(IDSSessionEmbeddedControllerAppleCare *)v20 doAcceptIDSInvitation];
    }

    else
    {
      [(IDSSessionEmbeddedControllerAppleCare *)v20 postInvitationNotification];
    }
  }

  return v20;
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
      idsSession = [(IDSSessionEmbeddedControllerBase *)self idsSession];
      sessionID = [idsSession sessionID];
      *buf = 136315650;
      v55 = "[IDSSessionEmbeddedControllerAppleCare postInvitationNotification]";
      v56 = 1024;
      v57 = 138;
      v58 = 2080;
      selfCopy = [sessionID UTF8String];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] postInvitationNotification for %s", buf, 0x1Cu);
    }
  }

  idsSession2 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  sessionID2 = [idsSession2 sessionID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 138, "-[IDSSessionEmbeddedControllerAppleCare postInvitationNotification]", 7, 0, "postInvitationNotification for %s", [sessionID2 UTF8String]);

  if (qword_100070A68 != -1)
  {
    sub_100043A10();
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  [(IDSSessionEmbeddedControllerBase *)self addNotificationIconTo:Mutable];
  v10 = sub_1000423E0();
  if (v10)
  {
    v11 = sub_100042E68(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      inviterFullName = [(IDSSessionEmbeddedControllerAppleCare *)self inviterFullName];
      uTF8String = [inviterFullName UTF8String];
      *buf = 136315650;
      v55 = "[IDSSessionEmbeddedControllerAppleCare postInvitationNotification]";
      v56 = 1024;
      v57 = 160;
      v58 = 2080;
      selfCopy = uTF8String;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] inviter name %s", buf, 0x1Cu);
    }
  }

  inviterFullName2 = [(IDSSessionEmbeddedControllerAppleCare *)self inviterFullName];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 160, "-[IDSSessionEmbeddedControllerAppleCare postInvitationNotification]", 7, 0, "inviter name %s", [inviterFullName2 UTF8String]);

  if ([(IDSSessionEmbeddedControllerBase *)self inviterKind]!= 3)
  {
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"kSSShareYourScreen" value:&stru_100069830 table:0];
    inviterFullName3 = [(IDSSessionEmbeddedControllerAppleCare *)self inviterFullName];
    v16 = [NSString stringWithFormat:v18, inviterFullName3];

    if (!v16)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  MainBundle = CFBundleGetMainBundle();
  v16 = CFBundleCopyLocalizedString(MainBundle, @"kSSShareYourScreenAppleSupport", @"kSSShareYourScreenAppleSupport", 0);
  if (v16)
  {
LABEL_15:
    CFDictionaryAddValue(Mutable, kCFUserNotificationAlertHeaderKey, v16);
    CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertMessageKey, v16);
    CFRelease(v16);
  }

LABEL_16:
  inviterFullName4 = [(IDSSessionEmbeddedControllerAppleCare *)self inviterFullName];

  if (inviterFullName4)
  {
    CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertHeaderKey, inviterFullName4);
  }

  idsServiceController = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
  isAppleTV = [idsServiceController isAppleTV];

  inviterKind = [(IDSSessionEmbeddedControllerBase *)self inviterKind];
  if (isAppleTV)
  {
    if (inviterKind != 3)
    {
      v27 = +[NSBundle mainBundle];
      v28 = v27;
      v29 = @"kSSSelectAcceptAppleTV";
      goto LABEL_27;
    }

    v24 = CFBundleGetMainBundle();
    v25 = @"kSSSelectAcceptAppleSupportAppleTV";
  }

  else
  {
    if (inviterKind != 3)
    {
      v27 = +[NSBundle mainBundle];
      v28 = v27;
      v29 = @"kSSTapAccept";
LABEL_27:
      v30 = [v27 localizedStringForKey:v29 value:&stru_100069830 table:0];
      inviterFullName5 = [(IDSSessionEmbeddedControllerAppleCare *)self inviterFullName];
      v26 = [NSString stringWithFormat:v30, inviterFullName5];

      if (!v26)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    v24 = CFBundleGetMainBundle();
    v25 = @"kSSTapAcceptAppleSupport";
  }

  v26 = CFBundleCopyLocalizedString(v24, v25, v25, 0);
  if (v26)
  {
LABEL_28:
    CFDictionaryAddValue(Mutable, kCFUserNotificationAlertMessageKey, v26);
    CFRelease(v26);
  }

LABEL_29:
  v32 = CFBundleGetMainBundle();
  v33 = CFBundleCopyLocalizedString(v32, @"kSSDecline", @"kSSDecline", 0);
  if (v33)
  {
    v34 = v33;
    CFDictionaryAddValue(Mutable, kCFUserNotificationAlternateButtonTitleKey, v33);
    CFRelease(v34);
  }

  v35 = CFBundleGetMainBundle();
  v36 = CFBundleCopyLocalizedString(v35, @"kSSAccept", @"kSSAccept", 0);
  if (v36)
  {
    v37 = v36;
    CFDictionaryAddValue(Mutable, kCFUserNotificationOtherButtonTitleKey, v36);
    CFRelease(v37);
  }

  CFDictionaryAddValue(Mutable, kCFUserNotificationAlertTopMostKey, kCFBooleanTrue);
  [(IDSSessionEmbeddedControllerBase *)self setInvitationNotification:CFUserNotificationCreate(0, 0.0, 0x23uLL, &error, Mutable)];
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  invitationNotification = [(IDSSessionEmbeddedControllerBase *)self invitationNotification];
  v39 = sub_1000423E0();
  if (invitationNotification)
  {
    if (v39)
    {
      v40 = sub_100042E68(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v55 = "[IDSSessionEmbeddedControllerAppleCare postInvitationNotification]";
        v56 = 1024;
        v57 = 222;
        v58 = 1024;
        LODWORD(selfCopy) = error;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[%s:%d] got error %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 222, "[IDSSessionEmbeddedControllerAppleCare postInvitationNotification]", 7, 0, "got error %d", error);
    RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, [(IDSSessionEmbeddedControllerBase *)self invitationNotification], sub_100026AE4, 0);
    v42 = sub_1000423E0();
    if (RunLoopSource)
    {
      if (v42)
      {
        v43 = sub_100042E68(v42);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v55 = "[IDSSessionEmbeddedControllerAppleCare postInvitationNotification]";
          v56 = 1024;
          v57 = 232;
          v58 = 2048;
          selfCopy = self;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[%s:%d] adding self %p to pending notifications", buf, 0x1Cu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 232, "[IDSSessionEmbeddedControllerAppleCare postInvitationNotification]", 7, 0, "adding self %p to pending notifications", self);
      [qword_100070AF8 addObject:self];
      v44 = sub_1000423E0();
      if (v44)
      {
        v45 = sub_100042E68(v44);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = [qword_100070AF8 count];
          *buf = 136315650;
          v55 = "[IDSSessionEmbeddedControllerAppleCare postInvitationNotification]";
          v56 = 1024;
          v57 = 234;
          v58 = 2048;
          selfCopy = v46;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[%s:%d] [gPendingUserNotifications count %lu", buf, 0x1Cu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 234, "-[IDSSessionEmbeddedControllerAppleCare postInvitationNotification]", 7, 0, "[gPendingUserNotifications count %lu", [qword_100070AF8 count]);
      v47 = +[NSDate date];
      [(IDSSessionEmbeddedControllerBase *)self setNotificationStartTime:v47];

      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopDefaultMode);
      v49 = [NSTimer scheduledTimerWithTimeInterval:self target:"userNotificationTimeout:" selector:0 userInfo:0 repeats:28.0];
      [(IDSSessionEmbeddedControllerBase *)self setNotificationTimeoutTimer:v49];

      invitationNotification2 = RunLoopSource;
    }

    else
    {
      if (v42)
      {
        v52 = sub_100042E68(v42);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v55 = "[IDSSessionEmbeddedControllerAppleCare postInvitationNotification]";
          v56 = 1024;
          v57 = 227;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "[%s:%d] Failed to create run loop source for notification", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 227, "[IDSSessionEmbeddedControllerAppleCare postInvitationNotification]", 7, 0, "Failed to create run loop source for notification");
      invitationNotification2 = [(IDSSessionEmbeddedControllerBase *)self invitationNotification];
    }

    CFRelease(invitationNotification2);
  }

  else
  {
    if (v39)
    {
      v51 = sub_100042E68(v39);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v55 = "[IDSSessionEmbeddedControllerAppleCare postInvitationNotification]";
        v56 = 1024;
        v57 = 219;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "[%s:%d] failed to create notification", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 219, "[IDSSessionEmbeddedControllerAppleCare postInvitationNotification]", 7, 0, "failed to create notification");
  }
}

- (void)termsAndConditionsResult:(id)result
{
  resultCopy = result;
  v5 = sub_1000423E0();
  if (v5)
  {
    v6 = sub_100042E68(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v24 = "[IDSSessionEmbeddedControllerAppleCare termsAndConditionsResult:]";
      v25 = 1024;
      v26 = 247;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] AppleCare termsAndConditionsResult called from viewservice", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 247, "[IDSSessionEmbeddedControllerAppleCare termsAndConditionsResult:]", 7, 0, "AppleCare termsAndConditionsResult called from viewservice");
  v7 = [resultCopy objectForKey:@"result"];

  -[IDSSessionEmbeddedControllerAppleCare setTermsAccepted:](self, "setTermsAccepted:", [v7 BOOLValue]);
  v8 = sub_1000423E0();
  if (v8)
  {
    v9 = sub_100042E68(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      termsAccepted = [(IDSSessionEmbeddedControllerAppleCare *)self termsAccepted];
      idsSession = [(IDSSessionEmbeddedControllerBase *)self idsSession];
      sessionID = [idsSession sessionID];
      uTF8String = [sessionID UTF8String];
      *buf = 136315906;
      v24 = "[IDSSessionEmbeddedControllerAppleCare termsAndConditionsResult:]";
      v25 = 1024;
      v26 = 250;
      v27 = 1024;
      v28 = termsAccepted;
      v29 = 2080;
      v30 = uTF8String;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] termsAndConditionsResult:%d  session %s", buf, 0x22u);
    }
  }

  termsAccepted2 = [(IDSSessionEmbeddedControllerAppleCare *)self termsAccepted];
  idsSession2 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  sessionID2 = [idsSession2 sessionID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 250, "-[IDSSessionEmbeddedControllerAppleCare termsAndConditionsResult:]", 7, 0, "termsAndConditionsResult:%d  session %s", termsAccepted2, [sessionID2 UTF8String]);

  vsSemaphore = [(IDSSessionEmbeddedControllerBase *)self vsSemaphore];

  if (vsSemaphore)
  {
    vsSemaphore2 = [(IDSSessionEmbeddedControllerBase *)self vsSemaphore];
    dispatch_semaphore_signal(vsSemaphore2);

    v19 = sub_1000423E0();
    if (v19)
    {
      v20 = sub_100042E68(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v24 = "[IDSSessionEmbeddedControllerAppleCare termsAndConditionsResult:]";
        v25 = 1024;
        v26 = 254;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] signaled semaphore", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 254, "[IDSSessionEmbeddedControllerAppleCare termsAndConditionsResult:]", 7, 0, "signaled semaphore");
  }

  if (![(IDSSessionEmbeddedControllerAppleCare *)self termsAccepted])
  {
    v21 = sub_1000423E0();
    if (v21)
    {
      v22 = sub_100042E68(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v24 = "[IDSSessionEmbeddedControllerAppleCare termsAndConditionsResult:]";
        v25 = 1024;
        v26 = 258;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%s:%d] Declined terms and conditions, stopping live activity", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 258, "[IDSSessionEmbeddedControllerAppleCare termsAndConditionsResult:]", 7, 0, "Declined terms and conditions, stopping live activity");
    [(IDSSessionEmbeddedControllerBase *)self stopLiveActivity];
  }
}

- (void)doAcceptIDSInvitation
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      idsSession = [(IDSSessionEmbeddedControllerBase *)self idsSession];
      sessionID = [idsSession sessionID];
      *buf = 136315650;
      v13 = "[IDSSessionEmbeddedControllerAppleCare doAcceptIDSInvitation]";
      v14 = 1024;
      v15 = 265;
      v16 = 2080;
      uTF8String = [sessionID UTF8String];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] Called [IDSSession doAcceptIDSInvitation] for %s", buf, 0x1Cu);
    }
  }

  idsSession2 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  sessionID2 = [idsSession2 sessionID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 265, "-[IDSSessionEmbeddedControllerAppleCare doAcceptIDSInvitation]", 7, 0, "Called [IDSSession doAcceptIDSInvitation] for %s", [sessionID2 UTF8String]);

  idsServiceController = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
  [idsServiceController inviteWasAccepted:self];

  [(IDSSessionEmbeddedControllerBase *)self doAcceptIDSInvitationWithAVConferenceInfo];
  [(IDSSessionEmbeddedControllerAppleCare *)self setTermsAccepted:0];
  v10 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000FBF8;
  block[3] = &unk_100068CB0;
  block[4] = self;
  dispatch_async(v10, block);
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
      v32 = "[IDSSessionEmbeddedControllerAppleCare showUserTermsAndConditions]";
      v33 = 1024;
      v34 = 280;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] Applecare show terms and conditions", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 280, "[IDSSessionEmbeddedControllerAppleCare showUserTermsAndConditions]", 7, 0, "Applecare show terms and conditions");
  v39[0] = SBSUIRemoteAlertOptionViewControllerClass;
  v39[1] = SBSUIRemoteAlertOptionDismissWithHomeButton;
  v40[0] = @"TermsConditionsViewController";
  v40[1] = &__kCFBooleanFalse;
  v39[2] = SBSUIRemoteAlertOptionStatusBarStyle;
  v5 = [NSNumber numberWithInteger:0];
  v40[2] = v5;
  v40[3] = &__kCFBooleanTrue;
  v39[3] = SBSUIRemoteAlertOptionDisableFadeInAnimation;
  v39[4] = SBSUIRemoteAlertOptionUserInfo;
  v37 = @"isAppleSupportRequest";
  v6 = [NSNumber numberWithBool:[(IDSSessionEmbeddedControllerBase *)self inviterKind]== 3];
  v38 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v40[4] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:5];

  v9 = SBSUIActivateRemoteAlertWithLifecycleNotifications();
  v10 = sub_1000423E0();
  if (v10)
  {
    v11 = sub_100042E68(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v32 = "[IDSSessionEmbeddedControllerAppleCare showUserTermsAndConditions]";
      v33 = 1024;
      v34 = 314;
      v35 = 1024;
      LODWORD(v36) = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] RemoteAlert: %d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 314, "[IDSSessionEmbeddedControllerAppleCare showUserTermsAndConditions]", 7, 0, "RemoteAlert: %d", v9);
  vsSemaphore = [(IDSSessionEmbeddedControllerBase *)self vsSemaphore];
  v13 = dispatch_time(0, 600000000000);
  v14 = dispatch_semaphore_wait(vsSemaphore, v13);
  v15 = v14 == 0;

  if (v14)
  {
    v16 = sub_1000423E0();
    if (v16)
    {
      v17 = sub_100042E68(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        idsSession = [(IDSSessionEmbeddedControllerBase *)self idsSession];
        sessionID = [idsSession sessionID];
        uTF8String = [sessionID UTF8String];
        *buf = 136315650;
        v32 = "[IDSSessionEmbeddedControllerAppleCare showUserTermsAndConditions]";
        v33 = 1024;
        v34 = 319;
        v35 = 2080;
        v36 = uTF8String;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s:%d] terms and conditions timeout for %s", buf, 0x1Cu);
      }
    }

    idsSession2 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
    sessionID2 = [idsSession2 sessionID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 319, "-[IDSSessionEmbeddedControllerAppleCare showUserTermsAndConditions]", 7, 0, "terms and conditions timeout for %s", [sessionID2 UTF8String]);

    [(IDSSessionEmbeddedControllerBase *)self stopLiveActivity];
  }

  v23 = sub_1000423E0();
  if (v23)
  {
    v24 = sub_100042E68(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v32 = "[IDSSessionEmbeddedControllerAppleCare showUserTermsAndConditions]";
      v33 = 1024;
      v34 = 323;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%s:%d] woke up from semaphore", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 323, "[IDSSessionEmbeddedControllerAppleCare showUserTermsAndConditions]", 7, 0, "woke up from semaphore");
  if (![(IDSSessionEmbeddedControllerAppleCare *)self termsAccepted])
  {
    v25 = sub_1000423E0();
    if (v25)
    {
      v26 = sub_100042E68(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        sessionID3 = [(IDSSessionEmbeddedControllerBase *)self sessionID];
        uTF8String2 = [sessionID3 UTF8String];
        *buf = 136315650;
        v32 = "[IDSSessionEmbeddedControllerAppleCare showUserTermsAndConditions]";
        v33 = 1024;
        v34 = 326;
        v35 = 2080;
        v36 = uTF8String2;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%s:%d] terms not accepted for %s", buf, 0x1Cu);
      }
    }

    sessionID4 = [(IDSSessionEmbeddedControllerBase *)self sessionID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 326, "-[IDSSessionEmbeddedControllerAppleCare showUserTermsAndConditions]", 7, 0, "terms not accepted for %s", [sessionID4 UTF8String]);

    v15 = 0;
  }

  return v15;
}

- (void)shouldStartScreenSharingSession
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "[IDSSessionEmbeddedControllerAppleCare shouldStartScreenSharingSession]";
      v17 = 1024;
      v18 = 355;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] check if should show terms", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 355, "[IDSSessionEmbeddedControllerAppleCare shouldStartScreenSharingSession]", 7, 0, "check if should show terms");
  if ([(IDSSessionEmbeddedControllerBase *)self autoAcceptInvitation])
  {
    LOBYTE(showUserTermsAndConditions) = 1;
  }

  else
  {
    v6 = sub_1000423E0();
    if (v6)
    {
      v7 = sub_100042E68(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v16 = "[IDSSessionEmbeddedControllerAppleCare shouldStartScreenSharingSession]";
        v17 = 1024;
        v18 = 367;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] going to show terms and conditions", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 367, "[IDSSessionEmbeddedControllerAppleCare shouldStartScreenSharingSession]", 7, 0, "going to show terms and conditions");
    showUserTermsAndConditions = [(IDSSessionEmbeddedControllerAppleCare *)self showUserTermsAndConditions];
    v8 = sub_1000423E0();
    if (v8)
    {
      v9 = sub_100042E68(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        sessionID = [(IDSSessionEmbeddedControllerBase *)self sessionID];
        uTF8String = [sessionID UTF8String];
        *buf = 136315906;
        v16 = "[IDSSessionEmbeddedControllerAppleCare shouldStartScreenSharingSession]";
        v17 = 1024;
        v18 = 369;
        v19 = 1024;
        v20 = showUserTermsAndConditions;
        v21 = 2080;
        v22 = uTF8String;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] termsConditionsAccepted = %d for %s", buf, 0x22u);
      }
    }

    sessionID2 = [(IDSSessionEmbeddedControllerBase *)self sessionID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 369, "-[IDSSessionEmbeddedControllerAppleCare shouldStartScreenSharingSession]", 7, 0, "termsConditionsAccepted = %d for %s", showUserTermsAndConditions, [sessionID2 UTF8String]);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010708;
  block[3] = &unk_100068CD8;
  block[4] = self;
  v14 = showUserTermsAndConditions;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)inviterFullName
{
  inviterKind = [(IDSSessionEmbeddedControllerBase *)self inviterKind];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (inviterKind == 2)
  {
    v5 = @"kSSAppleCare";
  }

  else
  {
    v5 = @"kSSAppleSupport";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_100069830 table:0];

  return v6;
}

@end