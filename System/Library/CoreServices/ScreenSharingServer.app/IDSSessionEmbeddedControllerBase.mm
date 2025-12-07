@interface IDSSessionEmbeddedControllerBase
- (BOOL)pauseVideoSending:(BOOL)sending;
- (BOOL)shouldShowDisconnectionUI;
- (IDSSessionEmbeddedControllerBase)init;
- (IDSSessionEmbeddedControllerBase)initWithRemoteID:(id)d session:(id)session direction:(int64_t)direction inviteDictionary:(id)dictionary andServiceController:(id)controller autoAcceptInvite:(BOOL)invite startOutPaused:(BOOL)paused appleName:(id)self0;
- (NSString)inviterIconPath;
- (id)dataForIDSAccept:(id)accept;
- (id)inviteDictionaryForRemoteInviteDictionary:(id)dictionary;
- (id)inviterIDForDisplay;
- (void)SSMediaStreamServerDidDie;
- (void)SSMediaStreamTimeout;
- (void)addNotificationIconTo:(__CFDictionary *)to;
- (void)cleanupSession;
- (void)dealloc;
- (void)doAcceptIDSInvitation;
- (void)doAcceptIDSInvitationWithAVConferenceInfo;
- (void)doDeclineIDSInvitationWithReasonString:(id)string;
- (void)doEndSession;
- (void)postInvitationNotification;
- (void)removeUserNotification;
- (void)sendScreenLockChangeMessage:(BOOL)message;
- (void)serverDiedForConference:(id)conference;
- (void)session:(id)session receivedInvitationAcceptFromID:(id)d;
- (void)session:(id)session receivedInvitationAcceptFromID:(id)d withData:(id)data;
- (void)session:(id)session receivedInvitationCancelFromID:(id)d;
- (void)session:(id)session receivedInvitationCancelFromID:(id)d withData:(id)data;
- (void)session:(id)session receivedInvitationDeclineFromID:(id)d;
- (void)session:(id)session receivedInvitationDeclineFromID:(id)d withData:(id)data;
- (void)session:(id)session receivedSessionEndFromID:(id)d withData:(id)data;
- (void)session:(id)session receivedSessionMessageFromID:(id)d withData:(id)data;
- (void)sessionEnded:(id)ended withReason:(unsigned int)reason error:(id)error;
- (void)sessionStarted:(id)started;
- (void)shouldStartScreenSharingSession;
- (void)startSendingTheScreen;
- (void)termsAndConditionsResult:(id)result;
- (void)userFinishedTermsAndConditions:(id)conditions;
- (void)userNotificationTimeout:(id)timeout;
@end

@implementation IDSSessionEmbeddedControllerBase

- (IDSSessionEmbeddedControllerBase)init
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "[IDSSessionEmbeddedControllerBase init]";
      v17 = 1024;
      v18 = 212;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] init called", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 212, "[IDSSessionEmbeddedControllerBase init]", 7, 0, "init called");
  v14.receiver = self;
  v14.super_class = IDSSessionEmbeddedControllerBase;
  v5 = [(IDSSessionEmbeddedControllerBase *)&v14 init];
  if (v5)
  {
    v6 = +[NSUUID UUID];
    uUIDString = [v6 UUIDString];
    [(IDSSessionEmbeddedControllerBase *)v5 setUniqueID:uUIDString];

    [(IDSSessionEmbeddedControllerBase *)v5 setDirection:0];
    v8 = dispatch_semaphore_create(0);
    stopCallIDSemaphore = v5->_stopCallIDSemaphore;
    v5->_stopCallIDSemaphore = v8;

    v10 = dispatch_semaphore_create(0);
    [(IDSSessionEmbeddedControllerBase *)v5 setVsSemaphore:v10];
  }

  v11 = sub_1000423E0();
  if (v11)
  {
    v12 = sub_100042E68(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v16 = "[IDSSessionEmbeddedControllerBase init]";
      v17 = 1024;
      v18 = 222;
      v19 = 2048;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] new idssessioncontroller created %p", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 222, "[IDSSessionEmbeddedControllerBase init]", 7, 0, "new idssessioncontroller created %p", v5);
  return v5;
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
      v11 = "[IDSSessionEmbeddedControllerBase dealloc]";
      v12 = 1024;
      v13 = 228;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] dealloc called", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 228, "[IDSSessionEmbeddedControllerBase dealloc]", 7, 0, "dealloc called");
  stopCallIDSemaphore = self->_stopCallIDSemaphore;
  if (stopCallIDSemaphore)
  {
    self->_stopCallIDSemaphore = 0;
  }

  [(IDSSessionEmbeddedControllerBase *)self setVsSemaphore:0];
  [(IDSSessionEmbeddedControllerBase *)self setDatagramConnection:0];
  [(IDSSessionEmbeddedControllerBase *)self setDatagramConnectionManager:0];
  [(IDSSessionEmbeddedControllerBase *)self setVnc:0];
  [(IDSSessionEmbeddedControllerBase *)self setIdsSession:0];
  [(IDSSessionEmbeddedControllerBase *)self setAvConference:0];
  [(IDSSessionEmbeddedControllerBase *)self setInviterID:0];
  [(IDSSessionEmbeddedControllerBase *)self setNotificationStartTime:0];
  notificationTimeoutTimer = [(IDSSessionEmbeddedControllerBase *)self notificationTimeoutTimer];
  [notificationTimeoutTimer invalidate];

  [(IDSSessionEmbeddedControllerBase *)self setNotificationTimeoutTimer:0];
  [(IDSSessionEmbeddedControllerBase *)self setUniqueID:0];
  [(IDSSessionEmbeddedControllerBase *)self setRemoteAVConferenceInviteDictionary:0];
  [(IDSSessionEmbeddedControllerBase *)self setIdsServiceController:0];
  [(IDSSessionEmbeddedControllerBase *)self setSessionID:0];
  v7 = sub_1000423E0();
  if (v7)
  {
    v8 = sub_100042E68(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = "[IDSSessionEmbeddedControllerBase dealloc]";
      v12 = 1024;
      v13 = 250;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] done with dealloc", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 250, "[IDSSessionEmbeddedControllerBase dealloc]", 7, 0, "done with dealloc");
  v9.receiver = self;
  v9.super_class = IDSSessionEmbeddedControllerBase;
  [(IDSSessionEmbeddedControllerBase *)&v9 dealloc];
}

- (IDSSessionEmbeddedControllerBase)initWithRemoteID:(id)d session:(id)session direction:(int64_t)direction inviteDictionary:(id)dictionary andServiceController:(id)controller autoAcceptInvite:(BOOL)invite startOutPaused:(BOOL)paused appleName:(id)self0
{
  inviteCopy = invite;
  dCopy = d;
  sessionCopy = session;
  dictionaryCopy = dictionary;
  controllerCopy = controller;
  v19 = [(IDSSessionEmbeddedControllerBase *)self init];
  if (v19)
  {
    v20 = sub_1000423E0();
    if (v20)
    {
      v21 = sub_100042E68(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        sessionID = [sessionCopy sessionID];
        *buf = 136315650;
        v31 = "[IDSSessionEmbeddedControllerBase initWithRemoteID:session:direction:inviteDictionary:andServiceController:autoAcceptInvite:startOutPaused:appleName:]";
        v32 = 1024;
        v33 = 270;
        v34 = 2080;
        uTF8String = [sessionID UTF8String];
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%s:%d] init with remoteid  %s", buf, 0x1Cu);
      }
    }

    sessionID2 = [sessionCopy sessionID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 270, "-[IDSSessionEmbeddedControllerBase initWithRemoteID:session:direction:inviteDictionary:andServiceController:autoAcceptInvite:startOutPaused:appleName:]", 7, 0, "init with remoteid  %s", [sessionID2 UTF8String]);

    [(IDSSessionEmbeddedControllerBase *)v19 setInviterID:dCopy];
    [(IDSSessionEmbeddedControllerBase *)v19 setIdsSession:sessionCopy];
    idsSession = [(IDSSessionEmbeddedControllerBase *)v19 idsSession];
    [idsSession setDelegate:v19 queue:&_dispatch_main_q];

    sessionID3 = [sessionCopy sessionID];
    [(IDSSessionEmbeddedControllerBase *)v19 setSessionID:sessionID3];

    idsSession2 = [(IDSSessionEmbeddedControllerBase *)v19 idsSession];
    [idsSession2 setInvitationTimeOut:25];

    [(IDSSessionEmbeddedControllerBase *)v19 setIdsServiceController:controllerCopy];
    [(IDSSessionEmbeddedControllerBase *)v19 setRemoteAVConferenceInviteDictionary:dictionaryCopy];
    [(IDSSessionEmbeddedControllerBase *)v19 setInviterKind:0];
    [(IDSSessionEmbeddedControllerBase *)v19 setStartOutPaused:paused];
    v27 = sub_1000423E0();
    if (v27)
    {
      v28 = sub_100042E68(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v31 = "[IDSSessionEmbeddedControllerBase initWithRemoteID:session:direction:inviteDictionary:andServiceController:autoAcceptInvite:startOutPaused:appleName:]";
        v32 = 1024;
        v33 = 300;
        v34 = 1024;
        LODWORD(uTF8String) = inviteCopy;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%s:%d] autoAcceptInvitationFlag %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 300, "[IDSSessionEmbeddedControllerBase initWithRemoteID:session:direction:inviteDictionary:andServiceController:autoAcceptInvite:startOutPaused:appleName:]", 7, 0, "autoAcceptInvitationFlag %d", inviteCopy);
    [(IDSSessionEmbeddedControllerBase *)v19 setAutoAcceptInvitation:inviteCopy];
    if (inviteCopy)
    {
      [(IDSSessionEmbeddedControllerBase *)v19 doAcceptIDSInvitation];
    }

    else
    {
      [(IDSSessionEmbeddedControllerBase *)v19 postInvitationNotification];
    }
  }

  return v19;
}

- (void)addNotificationIconTo:(__CFDictionary *)to
{
  inviterIconPath = [(IDSSessionEmbeddedControllerBase *)self inviterIconPath];
  if (inviterIconPath)
  {
    v6 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, inviterIconPath, kCFURLPOSIXPathStyle, 0);
    if (v6)
    {
      v7 = v6;
      CFDictionaryAddValue(to, kCFUserNotificationIconURLKey, v6);
      CFRelease(v7);
    }

    inviterIconPath2 = [(IDSSessionEmbeddedControllerBase *)self inviterIconPath];
    CFDictionaryAddValue(to, @"SBUserNotificationIconImagePath", inviterIconPath2);
  }

  else
  {
    v9 = sub_1000423E0();
    if (v9)
    {
      v10 = sub_100042E68(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315394;
        v12 = "[IDSSessionEmbeddedControllerBase addNotificationIconTo:]";
        v13 = 1024;
        v14 = 349;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%s:%d] inviterIconPath is nil, did a subclass override the method?", &v11, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 349, "[IDSSessionEmbeddedControllerBase addNotificationIconTo:]", 3, 0, "inviterIconPath is nil, did a subclass override the method?");
  }
}

- (void)termsAndConditionsResult:(id)result
{
  resultCopy = result;
  v4 = sub_1000423E0();
  if (v4)
  {
    v5 = sub_100042E68(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[IDSSessionEmbeddedControllerBase termsAndConditionsResult:]";
      v8 = 1024;
      v9 = 366;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%s:%d] termsAndConditionsResult not implemented", &v6, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 366, "[IDSSessionEmbeddedControllerBase termsAndConditionsResult:]", 3, 0, "termsAndConditionsResult not implemented");
  exit(1);
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
      v41 = "[IDSSessionEmbeddedControllerBase postInvitationNotification]";
      v42 = 1024;
      v43 = 378;
      v44 = 2080;
      selfCopy = [sessionID UTF8String];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] postInvitationNotification for %s", buf, 0x1Cu);
    }
  }

  idsSession2 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  sessionID2 = [idsSession2 sessionID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 378, "-[IDSSessionEmbeddedControllerBase postInvitationNotification]", 7, 0, "postInvitationNotification for %s", [sessionID2 UTF8String]);

  if (qword_100070A98 != -1)
  {
    sub_100043A38();
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"kSSShareYourScreen" value:&stru_100069830 table:0];
  inviterID = [(IDSSessionEmbeddedControllerBase *)self inviterID];
  stringWithSchemeTrimmed = [inviterID stringWithSchemeTrimmed];
  v14 = [NSString stringWithFormat:v11, stringWithSchemeTrimmed];

  CFDictionaryAddValue(Mutable, kCFUserNotificationAlertHeaderKey, v14);
  CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertMessageKey, v14);
  v15 = SBUserNotificationLockScreenAlertHeaderKey;
  inviterID2 = [(IDSSessionEmbeddedControllerBase *)self inviterID];
  stringWithSchemeTrimmed2 = [inviterID2 stringWithSchemeTrimmed];
  CFDictionaryAddValue(Mutable, v15, stringWithSchemeTrimmed2);

  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"kSSTapAccept" value:&stru_100069830 table:0];
  inviterFullName = [(IDSSessionEmbeddedControllerBase *)self inviterFullName];
  v21 = [NSString stringWithFormat:v19, inviterFullName];

  if (v21)
  {
    CFDictionaryAddValue(Mutable, kCFUserNotificationAlertMessageKey, v21);
  }

  v22 = +[NSBundle mainBundle];
  CFDictionaryAddValue(Mutable, kCFUserNotificationAlternateButtonTitleKey, [v22 localizedStringForKey:@"kSSDecline" value:&stru_100069830 table:0]);

  v23 = +[NSBundle mainBundle];
  CFDictionaryAddValue(Mutable, kCFUserNotificationOtherButtonTitleKey, [v23 localizedStringForKey:@"kSSAccept" value:&stru_100069830 table:0]);

  CFDictionaryAddValue(Mutable, kCFUserNotificationAlertTopMostKey, kCFBooleanTrue);
  [(IDSSessionEmbeddedControllerBase *)self setInvitationNotification:CFUserNotificationCreate(0, 0.0, 0x23uLL, &error, Mutable)];
  CFRelease(Mutable);
  invitationNotification = [(IDSSessionEmbeddedControllerBase *)self invitationNotification];
  v25 = sub_1000423E0();
  if (invitationNotification)
  {
    if (v25)
    {
      v26 = sub_100042E68(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v41 = "[IDSSessionEmbeddedControllerBase postInvitationNotification]";
        v42 = 1024;
        v43 = 414;
        v44 = 1024;
        LODWORD(selfCopy) = error;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%s:%d] got error %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 414, "[IDSSessionEmbeddedControllerBase postInvitationNotification]", 7, 0, "got error %d", error);
    RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, [(IDSSessionEmbeddedControllerBase *)self invitationNotification], sub_100026AE4, 0);
    v28 = sub_1000423E0();
    if (RunLoopSource)
    {
      if (v28)
      {
        v29 = sub_100042E68(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v41 = "[IDSSessionEmbeddedControllerBase postInvitationNotification]";
          v42 = 1024;
          v43 = 424;
          v44 = 2048;
          selfCopy = self;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%s:%d] adding self %p to pending notifications", buf, 0x1Cu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 424, "[IDSSessionEmbeddedControllerBase postInvitationNotification]", 7, 0, "adding self %p to pending notifications", self);
      [qword_100070AF8 addObject:self];
      v30 = sub_1000423E0();
      if (v30)
      {
        v31 = sub_100042E68(v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [qword_100070AF8 count];
          *buf = 136315650;
          v41 = "[IDSSessionEmbeddedControllerBase postInvitationNotification]";
          v42 = 1024;
          v43 = 426;
          v44 = 2048;
          selfCopy = v32;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%s:%d] [gPendingUserNotifications count %lu", buf, 0x1Cu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 426, "-[IDSSessionEmbeddedControllerBase postInvitationNotification]", 7, 0, "[gPendingUserNotifications count %lu", [qword_100070AF8 count]);
      v33 = +[NSDate date];
      [(IDSSessionEmbeddedControllerBase *)self setNotificationStartTime:v33];

      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopDefaultMode);
      v35 = [NSTimer scheduledTimerWithTimeInterval:self target:"userNotificationTimeout:" selector:0 userInfo:0 repeats:28.0];
      [(IDSSessionEmbeddedControllerBase *)self setNotificationTimeoutTimer:v35];

      invitationNotification2 = RunLoopSource;
    }

    else
    {
      if (v28)
      {
        v38 = sub_100042E68(v28);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v41 = "[IDSSessionEmbeddedControllerBase postInvitationNotification]";
          v42 = 1024;
          v43 = 419;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[%s:%d] Failed to create run loop source for notification", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 419, "[IDSSessionEmbeddedControllerBase postInvitationNotification]", 7, 0, "Failed to create run loop source for notification");
      invitationNotification2 = [(IDSSessionEmbeddedControllerBase *)self invitationNotification];
    }

    CFRelease(invitationNotification2);
  }

  else
  {
    if (v25)
    {
      v37 = sub_100042E68(v25);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v41 = "[IDSSessionEmbeddedControllerBase postInvitationNotification]";
        v42 = 1024;
        v43 = 411;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[%s:%d] failed to create notification", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 411, "[IDSSessionEmbeddedControllerBase postInvitationNotification]", 7, 0, "failed to create notification");
  }
}

- (void)userNotificationTimeout:(id)timeout
{
  v4 = sub_1000423E0();
  if (v4)
  {
    v5 = sub_100042E68(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[IDSSessionEmbeddedControllerBase userNotificationTimeout:]";
      v8 = 1024;
      v9 = 440;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification timeout", &v6, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 440, "[IDSSessionEmbeddedControllerBase userNotificationTimeout:]", 7, 0, "notification timeout");
  [(IDSSessionEmbeddedControllerBase *)self removeUserNotification];
}

- (void)removeUserNotification
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v9 = "[IDSSessionEmbeddedControllerBase removeUserNotification]";
      v10 = 1024;
      v11 = 446;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] remove notification called", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 446, "[IDSSessionEmbeddedControllerBase removeUserNotification]", 7, 0, "remove notification called");
  if ([(IDSSessionEmbeddedControllerBase *)self invitationNotification])
  {
    [(IDSSessionEmbeddedControllerBase *)self setNotificationTimedOut:1];
    v5 = CFUserNotificationCancel([(IDSSessionEmbeddedControllerBase *)self invitationNotification]);
    v6 = sub_1000423E0();
    if (v6)
    {
      v7 = sub_100042E68(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v9 = "[IDSSessionEmbeddedControllerBase removeUserNotification]";
        v10 = 1024;
        v11 = 451;
        v12 = 1024;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] cancel err = %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 451, "[IDSSessionEmbeddedControllerBase removeUserNotification]", 7, 0, "cancel err = %d", v5);
    [(IDSSessionEmbeddedControllerBase *)self setNotificationTimeoutTimer:0];
  }
}

- (BOOL)shouldShowDisconnectionUI
{
  idsServiceController = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
  activeSessions = [idsServiceController activeSessions];
  v4 = [activeSessions count] == 1;

  return v4;
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
      v12 = "[IDSSessionEmbeddedControllerBase doAcceptIDSInvitation]";
      v13 = 1024;
      v14 = 467;
      v15 = 2080;
      uTF8String = [sessionID UTF8String];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] Called doAcceptIDSInvitation for %s", buf, 0x1Cu);
    }
  }

  idsSession2 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  sessionID2 = [idsSession2 sessionID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 467, "-[IDSSessionEmbeddedControllerBase doAcceptIDSInvitation]", 7, 0, "Called doAcceptIDSInvitation for %s", [sessionID2 UTF8String]);

  [(IDSSessionEmbeddedControllerBase *)self setAppleIDInviteWasAcceptedOrDeclined:1];
  [(IDSSessionEmbeddedControllerBase *)self doAcceptIDSInvitationWithAVConferenceInfo];
  [(IDSSessionEmbeddedControllerBase *)self setTermsAccepted:0];
  v9 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028EAC;
  block[3] = &unk_100068CB0;
  block[4] = self;
  dispatch_async(v9, block);
}

- (void)userFinishedTermsAndConditions:(id)conditions
{
  bOOLValue = [conditions BOOLValue];
  v5 = sub_1000423E0();
  if (bOOLValue)
  {
    if (v5)
    {
      v6 = sub_100042E68(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        idsSession = [(IDSSessionEmbeddedControllerBase *)self idsSession];
        sessionID = [idsSession sessionID];
        *buf = 136315650;
        v24 = "[IDSSessionEmbeddedControllerBase userFinishedTermsAndConditions:]";
        v25 = 1024;
        v26 = 484;
        v27 = 2080;
        uTF8String = [sessionID UTF8String];
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] accepted terms and conditions for %s", buf, 0x1Cu);
      }
    }

    idsSession2 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
    sessionID2 = [idsSession2 sessionID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 484, "-[IDSSessionEmbeddedControllerBase userFinishedTermsAndConditions:]", 7, 0, "accepted terms and conditions for %s", [sessionID2 UTF8String]);

    [(IDSSessionEmbeddedControllerBase *)self setTermsAccepted:1];
    if ([(IDSSessionEmbeddedControllerBase *)self sessionStartDelegateWasCalled])
    {
      v11 = sub_1000423E0();
      if (v11)
      {
        v12 = sub_100042E68(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          idsSession3 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
          sessionID3 = [idsSession3 sessionID];
          uTF8String2 = [sessionID3 UTF8String];
          *buf = 136315650;
          v24 = "[IDSSessionEmbeddedControllerBase userFinishedTermsAndConditions:]";
          v25 = 1024;
          v26 = 490;
          v27 = 2080;
          uTF8String = uTF8String2;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] sessionstart delegate was already called.  Start sending screen for %s", buf, 0x1Cu);
        }
      }

      idsSession4 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
      sessionID4 = [idsSession4 sessionID];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 490, "-[IDSSessionEmbeddedControllerBase userFinishedTermsAndConditions:]", 7, 0, "sessionstart delegate was already called.  Start sending screen for %s", [sessionID4 UTF8String]);

      [(IDSSessionEmbeddedControllerBase *)self startSendingTheScreen];
    }
  }

  else
  {
    if (v5)
    {
      v18 = sub_100042E68(v5);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        idsSession5 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
        sessionID5 = [idsSession5 sessionID];
        *buf = 136315650;
        v24 = "[IDSSessionEmbeddedControllerBase userFinishedTermsAndConditions:]";
        v25 = 1024;
        v26 = 496;
        v27 = 2080;
        uTF8String = [sessionID5 UTF8String];
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%s:%d] declined terms.  endsession  %s", buf, 0x1Cu);
      }
    }

    idsSession6 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
    sessionID6 = [idsSession6 sessionID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 496, "-[IDSSessionEmbeddedControllerBase userFinishedTermsAndConditions:]", 7, 0, "declined terms.  endsession  %s", [sessionID6 UTF8String]);

    [(IDSSessionEmbeddedControllerBase *)self doDeclineIDSInvitationWithReasonString:@"UserDeclined"];
  }
}

- (void)doDeclineIDSInvitationWithReasonString:(id)string
{
  stringCopy = string;
  v5 = sub_1000423E0();
  if (v5)
  {
    v6 = sub_100042E68(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String = [stringCopy UTF8String];
      idsSession = [(IDSSessionEmbeddedControllerBase *)self idsSession];
      sessionID = [idsSession sessionID];
      *buf = 136315906;
      v20 = "[IDSSessionEmbeddedControllerBase doDeclineIDSInvitationWithReasonString:]";
      v21 = 1024;
      v22 = 505;
      v23 = 2080;
      v24 = uTF8String;
      v25 = 2080;
      uTF8String2 = [sessionID UTF8String];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] doDeclineIDSInvitationWithReasonString: %s for %s", buf, 0x26u);
    }
  }

  uTF8String3 = [stringCopy UTF8String];
  idsSession2 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  sessionID2 = [idsSession2 sessionID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 505, "-[IDSSessionEmbeddedControllerBase doDeclineIDSInvitationWithReasonString:]", 7, 0, "doDeclineIDSInvitationWithReasonString: %s for %s", uTF8String3, [sessionID2 UTF8String]);

  [(IDSSessionEmbeddedControllerBase *)self setAppleIDInviteWasAcceptedOrDeclined:1];
  v17 = @"REASON";
  v18 = stringCopy;
  v13 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v14 = sub_100027558(v13);

  idsSession3 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  [idsSession3 declineInvitationWithData:v14];

  [(IDSSessionEmbeddedControllerBase *)self setIdsSessionState:5];
  idsServiceController = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
  [idsServiceController removeSession:self andEndIDSSession:0];
}

- (void)doAcceptIDSInvitationWithAVConferenceInfo
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      remoteAVConferenceInviteDictionary = [(IDSSessionEmbeddedControllerBase *)self remoteAVConferenceInviteDictionary];
      remoteAVConferenceInviteDictionary2 = [(IDSSessionEmbeddedControllerBase *)self remoteAVConferenceInviteDictionary];
      v7 = [remoteAVConferenceInviteDictionary2 description];
      *buf = 136315906;
      v26 = "[IDSSessionEmbeddedControllerBase doAcceptIDSInvitationWithAVConferenceInfo]";
      v27 = 1024;
      v28 = 516;
      v29 = 2048;
      v30 = remoteAVConferenceInviteDictionary;
      v31 = 2080;
      uTF8String = [v7 UTF8String];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] remote dict %p %s", buf, 0x26u);
    }
  }

  remoteAVConferenceInviteDictionary3 = [(IDSSessionEmbeddedControllerBase *)self remoteAVConferenceInviteDictionary];
  remoteAVConferenceInviteDictionary4 = [(IDSSessionEmbeddedControllerBase *)self remoteAVConferenceInviteDictionary];
  v10 = [remoteAVConferenceInviteDictionary4 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 516, "-[IDSSessionEmbeddedControllerBase doAcceptIDSInvitationWithAVConferenceInfo]", 7, 0, "remote dict %p %s", remoteAVConferenceInviteDictionary3, [v10 UTF8String]);

  remoteAVConferenceInviteDictionary5 = [(IDSSessionEmbeddedControllerBase *)self remoteAVConferenceInviteDictionary];
  v12 = [(IDSSessionEmbeddedControllerBase *)self inviteDictionaryForRemoteInviteDictionary:remoteAVConferenceInviteDictionary5];

  v13 = sub_1000423E0();
  if (v13)
  {
    v14 = sub_100042E68(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v12 description];
      uTF8String2 = [v15 UTF8String];
      *buf = 136315906;
      v26 = "[IDSSessionEmbeddedControllerBase doAcceptIDSInvitationWithAVConferenceInfo]";
      v27 = 1024;
      v28 = 519;
      v29 = 2048;
      v30 = v12;
      v31 = 2080;
      uTF8String = uTF8String2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%s:%d] got acceptDictionary %p %s", buf, 0x26u);
    }
  }

  v17 = [v12 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 519, "-[IDSSessionEmbeddedControllerBase doAcceptIDSInvitationWithAVConferenceInfo]", 7, 0, "got acceptDictionary %p %s", v12, [v17 UTF8String]);

  if (v12)
  {
    v18 = [(IDSSessionEmbeddedControllerBase *)self dataForIDSAccept:v12];
    idsSession = [(IDSSessionEmbeddedControllerBase *)self idsSession];
    [idsSession acceptInvitationWithData:v18];

    v20 = sub_1000423E0();
    if (v20)
    {
      v21 = sub_100042E68(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v18 length];
        *buf = 136315650;
        v26 = "[IDSSessionEmbeddedControllerBase doAcceptIDSInvitationWithAVConferenceInfo]";
        v27 = 1024;
        v28 = 524;
        v29 = 2048;
        v30 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%s:%d] accepted invite  data size %lu", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 524, "-[IDSSessionEmbeddedControllerBase doAcceptIDSInvitationWithAVConferenceInfo]", 7, 0, "accepted invite  data size %lu", [v18 length]);
  }

  else
  {
    v23 = sub_1000423E0();
    if (v23)
    {
      v24 = sub_100042E68(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v26 = "[IDSSessionEmbeddedControllerBase doAcceptIDSInvitationWithAVConferenceInfo]";
        v27 = 1024;
        v28 = 527;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[%s:%d] no accept dict", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 527, "[IDSSessionEmbeddedControllerBase doAcceptIDSInvitationWithAVConferenceInfo]", 3, 0, "no accept dict");
  }
}

- (void)doEndSession
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v12 = "[IDSSessionEmbeddedControllerBase doEndSession]";
      v13 = 1024;
      v14 = 533;
      v15 = 2048;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] doEndSession %p", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 533, "[IDSSessionEmbeddedControllerBase doEndSession]", 7, 0, "doEndSession %p", self);
  [(IDSSessionEmbeddedControllerBase *)self setStoppingSession:1];
  v5 = sub_1000423E0();
  if (v5)
  {
    v6 = sub_100042E68(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sessionID = [(IDSSessionEmbeddedControllerBase *)self sessionID];
      uTF8String = [sessionID UTF8String];
      *buf = 136315650;
      v12 = "[IDSSessionEmbeddedControllerBase doEndSession]";
      v13 = 1024;
      v14 = 536;
      v15 = 2080;
      selfCopy = uTF8String;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] called endSessionWithData for %s", buf, 0x1Cu);
    }
  }

  sessionID2 = [(IDSSessionEmbeddedControllerBase *)self sessionID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 536, "-[IDSSessionEmbeddedControllerBase doEndSession]", 7, 0, "called endSessionWithData for %s", [sessionID2 UTF8String]);

  idsSession = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  [idsSession endSessionWithData:0];

  [(IDSSessionEmbeddedControllerBase *)self cleanupSession];
}

- (void)shouldStartScreenSharingSession
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
      v11 = "[IDSSessionEmbeddedControllerBase shouldStartScreenSharingSession]";
      v12 = 1024;
      v13 = 551;
      v14 = 2080;
      uTF8String = [sessionID UTF8String];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] shouldStartScreenSharingSession called for %s", buf, 0x1Cu);
    }
  }

  idsSession2 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  sessionID2 = [idsSession2 sessionID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 551, "-[IDSSessionEmbeddedControllerBase shouldStartScreenSharingSession]", 7, 0, "shouldStartScreenSharingSession called for %s", [sessionID2 UTF8String]);

  [(IDSSessionEmbeddedControllerBase *)self setTermsAccepted:1];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029CE4;
  block[3] = &unk_100068CB0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)startSendingTheScreen
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v69 = "[IDSSessionEmbeddedControllerBase startSendingTheScreen]";
      v70 = 1024;
      v71 = 562;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] startSendingTheScreen", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 562, "[IDSSessionEmbeddedControllerBase startSendingTheScreen]", 7, 0, "startSendingTheScreen");
  [(IDSSessionEmbeddedControllerBase *)self setIdsSessionState:3];
  allowsAudioChat = [(IDSSessionEmbeddedControllerBase *)self allowsAudioChat];
  idsSession = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  [idsSession setIsMuted:allowsAudioChat ^ 1];

  idsServiceController = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
  idsSession2 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  destination = [idsSession2 destination];
  v10 = [idsServiceController datagramConnectionFromIDS:destination];
  [(IDSSessionEmbeddedControllerBase *)self setDatagramConnection:v10];

  v11 = sub_1000423E0();
  if (v11)
  {
    v12 = sub_100042E68(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      datagramConnection = [(IDSSessionEmbeddedControllerBase *)self datagramConnection];
      *buf = 136315650;
      v69 = "[IDSSessionEmbeddedControllerBase startSendingTheScreen]";
      v70 = 1024;
      v71 = 576;
      v72 = 2048;
      v73 = datagramConnection;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] got datagramConnection %p", buf, 0x1Cu);
    }
  }

  datagramConnection2 = [(IDSSessionEmbeddedControllerBase *)self datagramConnection];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 576, "[IDSSessionEmbeddedControllerBase startSendingTheScreen]", 7, 0, "got datagramConnection %p", datagramConnection2);

  datagramConnection3 = [(IDSSessionEmbeddedControllerBase *)self datagramConnection];

  if (datagramConnection3)
  {
    v16 = [NWConnectionManager alloc];
    datagramConnection4 = [(IDSSessionEmbeddedControllerBase *)self datagramConnection];
    v18 = [(NWConnectionManager *)v16 initWithNWConnection:datagramConnection4];
    [(IDSSessionEmbeddedControllerBase *)self setDatagramConnectionManager:v18];

    v19 = sub_1000423E0();
    if (v19)
    {
      v20 = sub_100042E68(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        datagramConnectionManager = [(IDSSessionEmbeddedControllerBase *)self datagramConnectionManager];
        stateString = [datagramConnectionManager stateString];
        uTF8String = [stateString UTF8String];
        *buf = 136315650;
        v69 = "[IDSSessionEmbeddedControllerBase startSendingTheScreen]";
        v70 = 1024;
        v71 = 584;
        v72 = 2080;
        v73 = uTF8String;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] current state of connection %s", buf, 0x1Cu);
      }
    }

    datagramConnectionManager2 = [(IDSSessionEmbeddedControllerBase *)self datagramConnectionManager];
    stateString2 = [datagramConnectionManager2 stateString];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 584, "-[IDSSessionEmbeddedControllerBase startSendingTheScreen]", 7, 0, "current state of connection %s", [stateString2 UTF8String]);

    datagramConnectionManager3 = [(IDSSessionEmbeddedControllerBase *)self datagramConnectionManager];
    [datagramConnectionManager3 waitForConnection:10000];

    v27 = sub_1000423E0();
    if (v27)
    {
      v28 = sub_100042E68(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        datagramConnectionManager4 = [(IDSSessionEmbeddedControllerBase *)self datagramConnectionManager];
        stateString3 = [datagramConnectionManager4 stateString];
        uTF8String2 = [stateString3 UTF8String];
        *buf = 136315650;
        v69 = "[IDSSessionEmbeddedControllerBase startSendingTheScreen]";
        v70 = 1024;
        v71 = 586;
        v72 = 2080;
        v73 = uTF8String2;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%s:%d] current state of connection %s", buf, 0x1Cu);
      }
    }

    datagramConnectionManager5 = [(IDSSessionEmbeddedControllerBase *)self datagramConnectionManager];
    stateString4 = [datagramConnectionManager5 stateString];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 586, "-[IDSSessionEmbeddedControllerBase startSendingTheScreen]", 7, 0, "current state of connection %s", [stateString4 UTF8String]);

    datagramConnection5 = [(IDSSessionEmbeddedControllerBase *)self datagramConnection];
    connectionState = [datagramConnection5 connectionState];

    if (connectionState == 3)
    {
      idsServiceController2 = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
      [idsServiceController2 addActiveSession:self];

      [(IDSSessionEmbeddedControllerBase *)self setRemoteAVConferenceInviteDictionary:0];
      idsServiceController3 = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
      [idsServiceController3 createStatusBar];

      idsServiceController4 = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
      [idsServiceController4 createLockScreenNotifier];

      LODWORD(idsServiceController4) = [(IDSSessionEmbeddedControllerBase *)self startOutPaused];
      v39 = sub_1000423E0();
      if (idsServiceController4)
      {
        if (v39)
        {
          v40 = sub_100042E68(v39);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v69 = "[IDSSessionEmbeddedControllerBase startSendingTheScreen]";
            v70 = 1024;
            v71 = 604;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[%s:%d] want to start out paused", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 604, "[IDSSessionEmbeddedControllerBase startSendingTheScreen]", 7, 0, "want to start out paused");
        avConference = self->_avConference;
        callID = self->_callID;
        v67 = 0;
        if ([(AVConference *)avConference setPauseVideo:1 callID:callID error:&v67])
        {
          v43 = sub_1000423E0();
          if (v43)
          {
            v44 = sub_100042E68(v43);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v69 = "[IDSSessionEmbeddedControllerBase startSendingTheScreen]";
              v70 = 1024;
              v71 = 609;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[%s:%d] video should be paused", buf, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 609, "[IDSSessionEmbeddedControllerBase startSendingTheScreen]", 7, 0, "video should be paused");
        }
      }

      else
      {
        if (v39)
        {
          v54 = sub_100042E68(v39);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v69 = "[IDSSessionEmbeddedControllerBase startSendingTheScreen]";
            v70 = 1024;
            v71 = 612;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "[%s:%d] not paused at start", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 612, "[IDSSessionEmbeddedControllerBase startSendingTheScreen]", 7, 0, "not paused at start");
      }

      v55 = objc_alloc_init(VNCServer);
      [(IDSSessionEmbeddedControllerBase *)self setVnc:v55];

      v56 = sub_1000423E0();
      if (v56)
      {
        v57 = sub_100042E68(v56);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v58 = [(IDSSessionEmbeddedControllerBase *)self vnc];
          *buf = 136315650;
          v69 = "[IDSSessionEmbeddedControllerBase startSendingTheScreen]";
          v70 = 1024;
          v71 = 616;
          v72 = 2048;
          v73 = v58;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "[%s:%d] allocate screen sharing session %p", buf, 0x1Cu);
        }
      }

      v59 = [(IDSSessionEmbeddedControllerBase *)self vnc];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 616, "[IDSSessionEmbeddedControllerBase startSendingTheScreen]", 7, 0, "allocate screen sharing session %p", v59);

      v60 = [(IDSSessionEmbeddedControllerBase *)self vnc];
      datagramConnectionManager6 = [(IDSSessionEmbeddedControllerBase *)self datagramConnectionManager];
      [v60 startScreenSharingSession:1 NWConnectionManager:datagramConnectionManager6 sessionController:self];

      v62 = sub_1000423E0();
      if (v62)
      {
        v63 = sub_100042E68(v62);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v69 = "[IDSSessionEmbeddedControllerBase startSendingTheScreen]";
          v70 = 1024;
          v71 = 619;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "[%s:%d] t&c accepted", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 619, "[IDSSessionEmbeddedControllerBase startSendingTheScreen]", 7, 0, "t&c accepted");
      v64 = [(IDSSessionEmbeddedControllerBase *)self vnc];
      [v64 termsAndConditionsAccepted];

      v65 = sub_1000423E0();
      if (v65)
      {
        v66 = sub_100042E68(v65);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v69 = "[IDSSessionEmbeddedControllerBase startSendingTheScreen]";
          v70 = 1024;
          v71 = 621;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "[%s:%d] start avc streams", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 621, "[IDSSessionEmbeddedControllerBase startSendingTheScreen]", 7, 0, "start avc streams");
      mediaStreamController = [(IDSSessionEmbeddedControllerBase *)self mediaStreamController];
      [mediaStreamController start];
    }

    else
    {
      v47 = sub_1000423E0();
      if (v47)
      {
        v48 = sub_100042E68(v47);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          datagramConnectionManager7 = [(IDSSessionEmbeddedControllerBase *)self datagramConnectionManager];
          stateString5 = [datagramConnectionManager7 stateString];
          uTF8String3 = [stateString5 UTF8String];
          *buf = 136315650;
          v69 = "[IDSSessionEmbeddedControllerBase startSendingTheScreen]";
          v70 = 1024;
          v71 = 589;
          v72 = 2080;
          v73 = uTF8String3;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[%s:%d] unable to init connection state %s", buf, 0x1Cu);
        }
      }

      mediaStreamController = [(IDSSessionEmbeddedControllerBase *)self datagramConnectionManager];
      stateString6 = [mediaStreamController stateString];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 589, "-[IDSSessionEmbeddedControllerBase startSendingTheScreen]", 5, 0, "unable to init connection state %s", [stateString6 UTF8String]);
    }
  }

  else
  {
    v45 = sub_1000423E0();
    if (v45)
    {
      v46 = sub_100042E68(v45);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v69 = "[IDSSessionEmbeddedControllerBase startSendingTheScreen]";
        v70 = 1024;
        v71 = 579;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "[%s:%d] unable to get datagram connection", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 579, "[IDSSessionEmbeddedControllerBase startSendingTheScreen]", 5, 0, "unable to get datagram connection");
  }
}

- (void)session:(id)session receivedInvitationAcceptFromID:(id)d withData:(id)data
{
  dCopy = d;
  v7 = sub_1000273A0(data);
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = sub_1000423E0();
    if (v14)
    {
      v15 = sub_100042E68(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v17 = "[IDSSessionEmbeddedControllerBase session:receivedInvitationAcceptFromID:withData:]";
        v18 = 1024;
        v19 = 638;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%s:%d] receivedInvitationAcceptFromID with invalid dictionary - ignoring ", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 638, "[IDSSessionEmbeddedControllerBase session:receivedInvitationAcceptFromID:withData:]", 3, 0, "receivedInvitationAcceptFromID with invalid dictionary - ignoring ");
  }

  else
  {
    v8 = sub_1000423E0();
    if (v8)
    {
      v9 = sub_100042E68(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String = [dCopy UTF8String];
        v11 = [v7 description];
        *buf = 136315906;
        v17 = "[IDSSessionEmbeddedControllerBase session:receivedInvitationAcceptFromID:withData:]";
        v18 = 1024;
        v19 = 643;
        v20 = 2080;
        v21 = uTF8String;
        v22 = 2080;
        uTF8String2 = [v11 UTF8String];
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] receivedInvitationAcceptFromID fromID:%s data:%s", buf, 0x26u);
      }
    }

    uTF8String3 = [dCopy UTF8String];
    v13 = [v7 description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 643, "-[IDSSessionEmbeddedControllerBase session:receivedInvitationAcceptFromID:withData:]", 7, 0, "receivedInvitationAcceptFromID fromID:%s data:%s", uTF8String3, [v13 UTF8String]);
  }
}

- (void)session:(id)session receivedInvitationAcceptFromID:(id)d
{
  dCopy = d;
  v5 = sub_1000423E0();
  if (v5)
  {
    v6 = sub_100042E68(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v8 = "[IDSSessionEmbeddedControllerBase session:receivedInvitationAcceptFromID:]";
      v9 = 1024;
      v10 = 648;
      v11 = 2080;
      uTF8String = [dCopy UTF8String];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] receivedInvitationAcceptFromID fromID:%s", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 648, "-[IDSSessionEmbeddedControllerBase session:receivedInvitationAcceptFromID:]", 7, 0, "receivedInvitationAcceptFromID fromID:%s", [dCopy UTF8String]);
}

- (void)session:(id)session receivedInvitationDeclineFromID:(id)d withData:(id)data
{
  dCopy = d;
  v7 = sub_1000273A0(data);
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = sub_1000423E0();
    if (v14)
    {
      v15 = sub_100042E68(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v17 = "[IDSSessionEmbeddedControllerBase session:receivedInvitationDeclineFromID:withData:]";
        v18 = 1024;
        v19 = 657;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%s:%d] receivedInvitationDeclineFromID with invalid dictionary - ignoring ", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 657, "[IDSSessionEmbeddedControllerBase session:receivedInvitationDeclineFromID:withData:]", 3, 0, "receivedInvitationDeclineFromID with invalid dictionary - ignoring ");
  }

  else
  {
    v8 = sub_1000423E0();
    if (v8)
    {
      v9 = sub_100042E68(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String = [dCopy UTF8String];
        v11 = [v7 description];
        *buf = 136315906;
        v17 = "[IDSSessionEmbeddedControllerBase session:receivedInvitationDeclineFromID:withData:]";
        v18 = 1024;
        v19 = 662;
        v20 = 2080;
        v21 = uTF8String;
        v22 = 2080;
        uTF8String2 = [v11 UTF8String];
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] receivedInvitationDeclineFromID fromID:%s data:%s", buf, 0x26u);
      }
    }

    uTF8String3 = [dCopy UTF8String];
    v13 = [v7 description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 662, "-[IDSSessionEmbeddedControllerBase session:receivedInvitationDeclineFromID:withData:]", 7, 0, "receivedInvitationDeclineFromID fromID:%s data:%s", uTF8String3, [v13 UTF8String]);
  }
}

- (void)session:(id)session receivedInvitationDeclineFromID:(id)d
{
  dCopy = d;
  v5 = sub_1000423E0();
  if (v5)
  {
    v6 = sub_100042E68(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v8 = "[IDSSessionEmbeddedControllerBase session:receivedInvitationDeclineFromID:]";
      v9 = 1024;
      v10 = 667;
      v11 = 2080;
      uTF8String = [dCopy UTF8String];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] receivedInvitationDeclineFromID fromID:%s", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 667, "-[IDSSessionEmbeddedControllerBase session:receivedInvitationDeclineFromID:]", 7, 0, "receivedInvitationDeclineFromID fromID:%s", [dCopy UTF8String]);
}

- (void)session:(id)session receivedInvitationCancelFromID:(id)d
{
  dCopy = d;
  v5 = sub_1000423E0();
  if (v5)
  {
    v6 = sub_100042E68(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v8 = "[IDSSessionEmbeddedControllerBase session:receivedInvitationCancelFromID:]";
      v9 = 1024;
      v10 = 674;
      v11 = 2080;
      uTF8String = [dCopy UTF8String];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] receivedInvitationCancelFromID fromID:%s", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 674, "-[IDSSessionEmbeddedControllerBase session:receivedInvitationCancelFromID:]", 7, 0, "receivedInvitationCancelFromID fromID:%s", [dCopy UTF8String]);
}

- (void)session:(id)session receivedInvitationCancelFromID:(id)d withData:(id)data
{
  dCopy = d;
  v7 = sub_1000273A0(data);
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = sub_1000423E0();
    if (v14)
    {
      v15 = sub_100042E68(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v17 = "[IDSSessionEmbeddedControllerBase session:receivedInvitationCancelFromID:withData:]";
        v18 = 1024;
        v19 = 684;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%s:%d] receivedInvitationCancelFromID with invalid dictionary - ignoring ", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 684, "[IDSSessionEmbeddedControllerBase session:receivedInvitationCancelFromID:withData:]", 3, 0, "receivedInvitationCancelFromID with invalid dictionary - ignoring ");
  }

  else
  {
    v8 = sub_1000423E0();
    if (v8)
    {
      v9 = sub_100042E68(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String = [dCopy UTF8String];
        v11 = [v7 description];
        *buf = 136315906;
        v17 = "[IDSSessionEmbeddedControllerBase session:receivedInvitationCancelFromID:withData:]";
        v18 = 1024;
        v19 = 688;
        v20 = 2080;
        v21 = uTF8String;
        v22 = 2080;
        uTF8String2 = [v11 UTF8String];
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] receivedInvitationCancelFromID fromID:%s data:%s", buf, 0x26u);
      }
    }

    uTF8String3 = [dCopy UTF8String];
    v13 = [v7 description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 688, "-[IDSSessionEmbeddedControllerBase session:receivedInvitationCancelFromID:withData:]", 7, 0, "receivedInvitationCancelFromID fromID:%s data:%s", uTF8String3, [v13 UTF8String]);
  }
}

- (void)session:(id)session receivedSessionMessageFromID:(id)d withData:(id)data
{
  dCopy = d;
  v7 = sub_1000273A0(data);
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = sub_1000423E0();
    if (v14)
    {
      v15 = sub_100042E68(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v17 = "[IDSSessionEmbeddedControllerBase session:receivedSessionMessageFromID:withData:]";
        v18 = 1024;
        v19 = 697;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%s:%d] receivedSessionMessageFromID with invalid dictionary - ignoring ", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 697, "[IDSSessionEmbeddedControllerBase session:receivedSessionMessageFromID:withData:]", 3, 0, "receivedSessionMessageFromID with invalid dictionary - ignoring ");
  }

  else
  {
    v8 = sub_1000423E0();
    if (v8)
    {
      v9 = sub_100042E68(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String = [dCopy UTF8String];
        v11 = [v7 description];
        *buf = 136315906;
        v17 = "[IDSSessionEmbeddedControllerBase session:receivedSessionMessageFromID:withData:]";
        v18 = 1024;
        v19 = 701;
        v20 = 2080;
        v21 = uTF8String;
        v22 = 2080;
        uTF8String2 = [v11 UTF8String];
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] receivedSessionMessageFromID fromID:%s data:%s", buf, 0x26u);
      }
    }

    uTF8String3 = [dCopy UTF8String];
    v13 = [v7 description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 701, "-[IDSSessionEmbeddedControllerBase session:receivedSessionMessageFromID:withData:]", 7, 0, "receivedSessionMessageFromID fromID:%s data:%s", uTF8String3, [v13 UTF8String]);
  }
}

- (void)sessionStarted:(id)started
{
  v5 = sub_1000423E0();
  if (v5)
  {
    v6 = sub_100042E68(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      idsSession = [(IDSSessionEmbeddedControllerBase *)self idsSession];
      socket = [idsSession socket];
      idsSession2 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
      sessionID = [idsSession2 sessionID];
      *buf = 136315906;
      v39 = "[IDSSessionEmbeddedControllerBase sessionStarted:]";
      v40 = 1024;
      v41 = 708;
      v42 = 1024;
      *v43 = socket;
      *&v43[4] = 2080;
      *&v43[6] = [sessionID UTF8String];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] sessionStarted session socket is %d  session is %s", buf, 0x22u);
    }
  }

  idsSession3 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  socket2 = [idsSession3 socket];
  idsSession4 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  sessionID2 = [idsSession4 sessionID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 708, "-[IDSSessionEmbeddedControllerBase sessionStarted:]", 7, 0, "sessionStarted session socket is %d  session is %s", socket2, [sessionID2 UTF8String]);

  v15 = sub_1000423E0();
  if (v15)
  {
    v16 = sub_100042E68(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      idsSession5 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
      destination = [idsSession5 destination];
      uTF8String = [destination UTF8String];
      *buf = 136315650;
      v39 = "[IDSSessionEmbeddedControllerBase sessionStarted:]";
      v40 = 1024;
      v41 = 710;
      v42 = 2080;
      *v43 = uTF8String;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%s:%d] destination string %s", buf, 0x1Cu);
    }
  }

  idsSession6 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  destination2 = [idsSession6 destination];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 710, "-[IDSSessionEmbeddedControllerBase sessionStarted:]", 7, 0, "destination string %s", [destination2 UTF8String]);

  [(IDSSessionEmbeddedControllerBase *)self setSessionStartDelegateWasCalled:1];
  if (started && (-[IDSSessionEmbeddedControllerBase idsSession](self, "idsSession"), v22 = objc_claimAutoreleasedReturnValue(), [v22 destination], v23 = objc_claimAutoreleasedReturnValue(), v23, v22, v23))
  {
    v24 = sub_1000423E0();
    if (v24)
    {
      v25 = sub_100042E68(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v39 = "[IDSSessionEmbeddedControllerBase sessionStarted:]";
        v40 = 1024;
        v41 = 722;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%s:%d] session is valid", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 722, "[IDSSessionEmbeddedControllerBase sessionStarted:]", 7, 0, "session is valid");
    if ([(IDSSessionEmbeddedControllerBase *)self termsAccepted])
    {
      v26 = sub_1000423E0();
      if (v26)
      {
        v27 = sub_100042E68(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v39 = "[IDSSessionEmbeddedControllerBase sessionStarted:]";
          v40 = 1024;
          v41 = 726;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%s:%d] terms were already accepted", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 726, "[IDSSessionEmbeddedControllerBase sessionStarted:]", 7, 0, "terms were already accepted");
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002BAB0;
      block[3] = &unk_100068CB0;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  else
  {
    v28 = sub_1000423E0();
    if (v28)
    {
      v29 = sub_100042E68(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = [(IDSSessionEmbeddedControllerBase *)self description];
        uTF8String2 = [v30 UTF8String];
        idsSession7 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
        socket3 = [idsSession7 socket];
        *buf = 136315906;
        v39 = "[IDSSessionEmbeddedControllerBase sessionStarted:]";
        v40 = 1024;
        v41 = 735;
        v42 = 2080;
        *v43 = uTF8String2;
        *&v43[8] = 1024;
        *&v43[10] = socket3;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[%s:%d] sessionStarted bad session: session=%s, socket=%d", buf, 0x22u);
      }
    }

    v34 = [(IDSSessionEmbeddedControllerBase *)self description];
    uTF8String3 = [v34 UTF8String];
    idsSession8 = [(IDSSessionEmbeddedControllerBase *)self idsSession];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 735, "-[IDSSessionEmbeddedControllerBase sessionStarted:]", 3, 0, "sessionStarted bad session: session=%s, socket=%d", uTF8String3, [idsSession8 socket]);
  }
}

- (void)session:(id)session receivedSessionEndFromID:(id)d withData:(id)data
{
  sessionCopy = session;
  dCopy = d;
  v10 = sub_1000273A0(data);
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v21 = sub_1000423E0();
    if (v21)
    {
      v22 = sub_100042E68(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v24 = "[IDSSessionEmbeddedControllerBase session:receivedSessionEndFromID:withData:]";
        v25 = 1024;
        v26 = 751;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[%s:%d] receivedSessionEndFromID with invalid dictionary - ignoring ", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 751, "[IDSSessionEmbeddedControllerBase session:receivedSessionEndFromID:withData:]", 3, 0, "receivedSessionEndFromID with invalid dictionary - ignoring ");
  }

  else
  {
    v11 = sub_1000423E0();
    if (v11)
    {
      v12 = sub_100042E68(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String = [dCopy UTF8String];
        v14 = [v10 description];
        uTF8String2 = [v14 UTF8String];
        sessionID = [sessionCopy sessionID];
        *buf = 136316162;
        v24 = "[IDSSessionEmbeddedControllerBase session:receivedSessionEndFromID:withData:]";
        v25 = 1024;
        v26 = 755;
        v27 = 2080;
        v28 = uTF8String;
        v29 = 2080;
        v30 = uTF8String2;
        v31 = 2080;
        uTF8String3 = [sessionID UTF8String];
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] SESSION END receivedSessionEndFromID %s data: %s for session %s", buf, 0x30u);
      }
    }

    uTF8String4 = [dCopy UTF8String];
    v18 = [v10 description];
    uTF8String5 = [v18 UTF8String];
    sessionID2 = [sessionCopy sessionID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 755, "-[IDSSessionEmbeddedControllerBase session:receivedSessionEndFromID:withData:]", 7, 0, "SESSION END receivedSessionEndFromID %s data: %s for session %s", uTF8String4, uTF8String5, [sessionID2 UTF8String]);
  }

  [(IDSSessionEmbeddedControllerBase *)self cleanupSession];
}

- (void)sessionEnded:(id)ended withReason:(unsigned int)reason error:(id)error
{
  endedCopy = ended;
  errorCopy = error;
  v10 = sub_1000423E0();
  if (v10)
  {
    v11 = sub_100042E68(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sessionID = [endedCopy sessionID];
      uTF8String = [sessionID UTF8String];
      v14 = [errorCopy description];
      *buf = 136316162;
      v19 = "[IDSSessionEmbeddedControllerBase sessionEnded:withReason:error:]";
      v20 = 1024;
      v21 = 763;
      v22 = 2080;
      v23 = uTF8String;
      v24 = 1024;
      reasonCopy = reason;
      v26 = 2080;
      uTF8String2 = [v14 UTF8String];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] SESSION END sessionEnded:session %s withReason:%d error:%s", buf, 0x2Cu);
    }
  }

  sessionID2 = [endedCopy sessionID];
  uTF8String3 = [sessionID2 UTF8String];
  v17 = [errorCopy description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 763, "-[IDSSessionEmbeddedControllerBase sessionEnded:withReason:error:]", 7, 0, "SESSION END sessionEnded:session %s withReason:%d error:%s", uTF8String3, reason, [v17 UTF8String]);

  [(IDSSessionEmbeddedControllerBase *)self cleanupSession];
}

- (void)SSMediaStreamServerDidDie
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[IDSSessionEmbeddedControllerBase SSMediaStreamServerDidDie]";
      v7 = 1024;
      v8 = 771;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%s:%d] SSMediaStreamServerDidDie - end session", &v5, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 771, "[IDSSessionEmbeddedControllerBase SSMediaStreamServerDidDie]", 3, 0, "SSMediaStreamServerDidDie - end session");
  [(IDSSessionEmbeddedControllerBase *)self doEndSession];
}

- (void)SSMediaStreamTimeout
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[IDSSessionEmbeddedControllerBase SSMediaStreamTimeout]";
      v7 = 1024;
      v8 = 777;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] SSMediaStreamTimeout - end session", &v5, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 777, "[IDSSessionEmbeddedControllerBase SSMediaStreamTimeout]", 7, 0, "SSMediaStreamTimeout - end session");
  [(IDSSessionEmbeddedControllerBase *)self doEndSession];
}

- (void)cleanupSession
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
        v27 = "[IDSSessionEmbeddedControllerBase cleanupSession]";
        v28 = 1024;
        v29 = 823;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] session already handled", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 823, "[IDSSessionEmbeddedControllerBase cleanupSession]", 7, 0, "session already handled");
  }

  else
  {
    if (v4)
    {
      v6 = sub_100042E68(v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        sessionID = [(IDSSessionEmbeddedControllerBase *)self sessionID];
        *buf = 136315650;
        v27 = "[IDSSessionEmbeddedControllerBase cleanupSession]";
        v28 = 1024;
        v29 = 785;
        v30 = 2080;
        uTF8String = [sessionID UTF8String];
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] cleanup session %s", buf, 0x1Cu);
      }
    }

    sessionID2 = [(IDSSessionEmbeddedControllerBase *)self sessionID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 785, "-[IDSSessionEmbeddedControllerBase cleanupSession]", 7, 0, "cleanup session %s", [sessionID2 UTF8String]);

    [(IDSSessionEmbeddedControllerBase *)self setHandledSessionEnd:1];
    idsSession = [(IDSSessionEmbeddedControllerBase *)self idsSession];
    [idsSession setDelegate:0 queue:0];

    [(IDSSessionEmbeddedControllerBase *)self removeUserNotification];
    v10 = [(IDSSessionEmbeddedControllerBase *)self vnc];

    if (v10)
    {
      v11 = [(IDSSessionEmbeddedControllerBase *)self vnc];
      [v11 stopUDPSend];
    }

    avConference = [(IDSSessionEmbeddedControllerBase *)self avConference];

    if (avConference)
    {
      avConference2 = [(IDSSessionEmbeddedControllerBase *)self avConference];
      [avConference2 stopCallID:self->_callID];

      v14 = sub_1000423E0();
      if (v14)
      {
        v15 = sub_100042E68(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v27 = "[IDSSessionEmbeddedControllerBase cleanupSession]";
          v28 = 1024;
          v29 = 799;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%s:%d] going to wait for semaphore", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 799, "[IDSSessionEmbeddedControllerBase cleanupSession]", 7, 0, "going to wait for semaphore");
      stopCallIDSemaphore = self->_stopCallIDSemaphore;
      v17 = dispatch_time(0, 1000000000);
      v18 = dispatch_semaphore_wait(stopCallIDSemaphore, v17);
      v19 = sub_1000423E0();
      if (v18)
      {
        if (v19)
        {
          v20 = sub_100042E68(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v27 = "[IDSSessionEmbeddedControllerBase cleanupSession]";
            v28 = 1024;
            v29 = 802;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] callid timeout", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 802, "[IDSSessionEmbeddedControllerBase cleanupSession]", 7, 0, "callid timeout");
      }

      else
      {
        if (v19)
        {
          v21 = sub_100042E68(v19);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v27 = "[IDSSessionEmbeddedControllerBase cleanupSession]";
            v28 = 1024;
            v29 = 805;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%s:%d] semaphore did not time out", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 805, "[IDSSessionEmbeddedControllerBase cleanupSession]", 7, 0, "semaphore did not time out");
      }

      avConference3 = [(IDSSessionEmbeddedControllerBase *)self avConference];
      [avConference3 setDelegate:0];

      [(IDSSessionEmbeddedControllerBase *)self setAvConference:0];
    }

    notificationTimeoutTimer = [(IDSSessionEmbeddedControllerBase *)self notificationTimeoutTimer];
    [notificationTimeoutTimer invalidate];

    [(IDSSessionEmbeddedControllerBase *)self setNotificationTimeoutTimer:0];
    mediaStreamController = [(IDSSessionEmbeddedControllerBase *)self mediaStreamController];
    [mediaStreamController stop];

    [(IDSSessionEmbeddedControllerBase *)self stopLiveActivity];
    [(IDSSessionEmbeddedControllerBase *)self setIdsSessionState:6];
    idsServiceController = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
    [idsServiceController removeSession:self andEndIDSSession:0];
  }
}

- (id)inviteDictionaryForRemoteInviteDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = sub_1000423E0();
  if (v5)
  {
    v6 = sub_100042E68(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [dictionaryCopy description];
      v8 = strlen([v7 UTF8String]);
      v9 = [dictionaryCopy description];
      *buf = 136316162;
      v63 = "[IDSSessionEmbeddedControllerBase inviteDictionaryForRemoteInviteDictionary:]";
      v64 = 1024;
      v65 = 843;
      v66 = 2048;
      v67 = dictionaryCopy;
      v68 = 2048;
      v69 = v8;
      v70 = 2080;
      uTF8String = [v9 UTF8String];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] remote invite %p length %lu %s", buf, 0x30u);
    }
  }

  v10 = [dictionaryCopy description];
  v11 = strlen([v10 UTF8String]);
  v12 = [dictionaryCopy description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 843, "-[IDSSessionEmbeddedControllerBase inviteDictionaryForRemoteInviteDictionary:]", 7, 0, "remote invite %p length %lu %s", dictionaryCopy, v11, [v12 UTF8String]);

  v13 = [dictionaryCopy valueForKey:@"AVCNegotiatorInfo"];
  v14 = [v13 objectForKeyedSubscript:@"audioOffer"];
  v15 = [v13 objectForKeyedSubscript:@"videoOffer"];
  v16 = sub_1000423E0();
  if (v16)
  {
    v17 = sub_100042E68(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v63 = "[IDSSessionEmbeddedControllerBase inviteDictionaryForRemoteInviteDictionary:]";
      v64 = 1024;
      v65 = 847;
      v66 = 2048;
      v67 = v14;
      v68 = 2048;
      v69 = v15;
      v70 = 2048;
      uTF8String = v13;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s:%d] audiooffer %p  videoOffer %p negotiatorInfo %p", buf, 0x30u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 847, "[IDSSessionEmbeddedControllerBase inviteDictionaryForRemoteInviteDictionary:]", 7, 0, "audiooffer %p  videoOffer %p negotiatorInfo %p", v14, v15, v13);
  v18 = [v13 objectForKeyedSubscript:@"sessionID"];
  v19 = sub_1000423E0();
  if (v19)
  {
    v20 = sub_100042E68(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v18 length];
      *buf = 136315906;
      v63 = "[IDSSessionEmbeddedControllerBase inviteDictionaryForRemoteInviteDictionary:]";
      v64 = 1024;
      v65 = 850;
      v66 = 2048;
      v67 = v18;
      v68 = 2048;
      v69 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] uuidData %p length %lu", buf, 0x26u);
    }
  }

  v58 = v15;
  v59 = v14;
  v61 = dictionaryCopy;
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 850, "-[IDSSessionEmbeddedControllerBase inviteDictionaryForRemoteInviteDictionary:]", 7, 0, "uuidData %p length %lu", v18, [v18 length]);
  v57 = v18;
  v22 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v18, "bytes")}];
  v55 = [SSAVCMediaStreamController alloc];
  idsSession = [(IDSSessionEmbeddedControllerBase *)self idsSession];
  v24 = [v13 objectForKeyedSubscript:@"viewerToServerAudioKey"];
  v25 = [v13 objectForKeyedSubscript:@"serverToViewerAudioKey"];
  v26 = [v13 objectForKeyedSubscript:@"viewerToServerVideoKey"];
  v27 = [v13 objectForKeyedSubscript:@"serverToViewerVideoKey"];
  v28 = [v13 objectForKeyedSubscript:@"audioOffer"];
  v29 = [v13 objectForKeyedSubscript:@"videoOffer"];
  v30 = v13;
  v31 = v29;
  v60 = v30;
  v32 = [v30 objectForKeyedSubscript:@"sessionID"];
  v56 = v22;
  LOBYTE(v54) = 0;
  v33 = [(SSAVCMediaStreamController *)v55 initWithIDSSession:idsSession avcClientName:@"SafeViewScreenShare" audioEncryptionKeyViewerToServer:v24 audioEncryptionKeyServerToViewer:v25 video1EncryptionKeyViewerToServer:v26 video1EncryptionKeyServerToViewer:v27 audioOffer:v28 videoOffer:v31 sessionID:v32 supports60FPS:v54 mediaStreamSessionUUID:v22 delegate:self];
  [(IDSSessionEmbeddedControllerBase *)self setMediaStreamController:v33];

  selfCopy = self;
  mediaStreamController = [(IDSSessionEmbeddedControllerBase *)self mediaStreamController];

  if (mediaStreamController)
  {
    v36 = +[NSMutableDictionary dictionary];
    mediaStreamController2 = [(IDSSessionEmbeddedControllerBase *)selfCopy mediaStreamController];
    audioAnswer = [mediaStreamController2 audioAnswer];
    [v36 setObject:audioAnswer forKeyedSubscript:@"audioAnswer"];

    mediaStreamController3 = [(IDSSessionEmbeddedControllerBase *)selfCopy mediaStreamController];
    videoAnswer = [mediaStreamController3 videoAnswer];
    [v36 setObject:videoAnswer forKeyedSubscript:@"videoAnswer"];

    v41 = [v36 objectForKeyedSubscript:@"videoAnswer"];
    bytes = [v41 bytes];
    v43 = [v36 objectForKeyedSubscript:@"videoAnswer"];
    sub_100042C68("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 0x367u, "-[IDSSessionEmbeddedControllerBase inviteDictionaryForRemoteInviteDictionary:]", 7, "video answer", bytes, [v43 length]);

    v44 = sub_1000423E0();
    v45 = v61;
    v47 = v58;
    v46 = v59;
    v48 = v57;
    if (v44)
    {
      v49 = sub_100042E68(v44);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v63 = "[IDSSessionEmbeddedControllerBase inviteDictionaryForRemoteInviteDictionary:]";
        v64 = 1024;
        v65 = 872;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "[%s:%d] created accept dict", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 872, "[IDSSessionEmbeddedControllerBase inviteDictionaryForRemoteInviteDictionary:]", 7, 0, "created accept dict");
    v50 = v60;
  }

  else
  {
    v51 = sub_1000423E0();
    v50 = v60;
    v45 = v61;
    v46 = v59;
    v48 = v57;
    if (v51)
    {
      v52 = sub_100042E68(v51);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v63 = "[IDSSessionEmbeddedControllerBase inviteDictionaryForRemoteInviteDictionary:]";
        v64 = 1024;
        v65 = 876;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "[%s:%d] error setting up audio and video negotiators", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 876, "[IDSSessionEmbeddedControllerBase inviteDictionaryForRemoteInviteDictionary:]", 7, 0, "error setting up audio and video negotiators");
    [(IDSSessionEmbeddedControllerBase *)self doEndSession];
    v36 = 0;
    v47 = v58;
  }

  return v36;
}

- (id)dataForIDSAccept:(id)accept
{
  acceptCopy = accept;
  v5 = sub_1000423E0();
  if (v5)
  {
    v6 = sub_100042E68(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v30 = "[IDSSessionEmbeddedControllerBase dataForIDSAccept:]";
      v31 = 1024;
      v32 = 883;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] dataForIDSAccept", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 883, "[IDSSessionEmbeddedControllerBase dataForIDSAccept:]", 7, 0, "dataForIDSAccept");
  v7 = objc_alloc_init(NSMutableDictionary);
  [v7 setObject:acceptCopy forKeyedSubscript:@"AVCAnswer"];

  v26 = 0;
  v27 = 0;
  v28 = 0;
  v8 = +[NSProcessInfo processInfo];
  v9 = v8;
  if (v8)
  {
    objc_msgSend_operatingSystemVersion(v8);
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  v10 = (v26 << 16) | (v27 << 8) | v28;
  v11 = sub_1000423E0();
  if (v11)
  {
    v12 = sub_100042E68(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v30 = "[IDSSessionEmbeddedControllerBase dataForIDSAccept:]";
      v31 = 1024;
      v32 = 893;
      v33 = 1024;
      LODWORD(v34) = (v26 << 16) | (v27 << 8) | v28;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] osvers %x", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 893, "[IDSSessionEmbeddedControllerBase dataForIDSAccept:]", 7, 0, "osvers %x", v10);
  v13 = [NSNumber numberWithUnsignedInt:v10];
  [v7 setObject:v13 forKeyedSubscript:@"osVersion"];

  idsServiceController = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
  osTypeString = [idsServiceController osTypeString];

  if (osTypeString)
  {
    [v7 setObject:osTypeString forKeyedSubscript:@"osType"];
  }

  v16 = sub_1000423E0();
  if (v16)
  {
    v17 = sub_100042E68(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v7 description];
      uTF8String = [v18 UTF8String];
      *buf = 136315650;
      v30 = "[IDSSessionEmbeddedControllerBase dataForIDSAccept:]";
      v31 = 1024;
      v32 = 900;
      v33 = 2080;
      v34 = uTF8String;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s:%d] accept dict %s", buf, 0x1Cu);
    }
  }

  v20 = [v7 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 900, "-[IDSSessionEmbeddedControllerBase dataForIDSAccept:]", 7, 0, "accept dict %s", [v20 UTF8String]);

  v25 = 0;
  v21 = [NSPropertyListSerialization dataWithPropertyList:v7 format:200 options:0 error:&v25];
  if (v25)
  {
    v22 = sub_1000423E0();
    if (v22)
    {
      v23 = sub_100042E68(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v30 = "[IDSSessionEmbeddedControllerBase dataForIDSAccept:]";
        v31 = 1024;
        v32 = 906;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[%s:%d] could not serialize dictionary", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 906, "[IDSSessionEmbeddedControllerBase dataForIDSAccept:]", 3, 0, "could not serialize dictionary");
  }

  return v21;
}

- (BOOL)pauseVideoSending:(BOOL)sending
{
  sendingCopy = sending;
  v5 = sub_1000423E0();
  if (v5)
  {
    v6 = sub_100042E68(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v12 = "[IDSSessionEmbeddedControllerBase pauseVideoSending:]";
      v13 = 1024;
      v14 = 916;
      v15 = 1024;
      v16 = sendingCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] pause video %d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 916, "[IDSSessionEmbeddedControllerBase pauseVideoSending:]", 7, 0, "pause video %d", sendingCopy);
  mediaStreamController = [(IDSSessionEmbeddedControllerBase *)self mediaStreamController];
  v8 = mediaStreamController;
  if (sendingCopy)
  {
    [mediaStreamController pause];
  }

  else
  {
    [mediaStreamController resume];
  }

  v9 = [(IDSSessionEmbeddedControllerBase *)self vnc];
  [v9 sendPauseMessage:sendingCopy];

  return 1;
}

- (void)sendScreenLockChangeMessage:(BOOL)message
{
  messageCopy = message;
  v5 = sub_1000423E0();
  if (v5)
  {
    v6 = sub_100042E68(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[IDSSessionEmbeddedControllerBase sendScreenLockChangeMessage:]";
      v10 = 1024;
      v11 = 930;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] send lock change message", &v8, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 930, "[IDSSessionEmbeddedControllerBase sendScreenLockChangeMessage:]", 7, 0, "send lock change message");
  v7 = [(IDSSessionEmbeddedControllerBase *)self vnc];
  [v7 sendScreenLockChangeMessage:messageCopy];
}

- (NSString)inviterIconPath
{
  if ([(IDSSessionEmbeddedControllerBase *)self inviterKind]== 2)
  {
    return @"/System/Library/CoreServices/ScreenSharingServer.app/AppleCare.png";
  }

  else
  {
    return @"/System/Library/CoreServices/ScreenSharingServer.app/AppleSupport.png";
  }
}

- (id)inviterIDForDisplay
{
  inviterID = [(IDSSessionEmbeddedControllerBase *)self inviterID];
  stringWithSchemeTrimmed = [inviterID stringWithSchemeTrimmed];

  return stringWithSchemeTrimmed;
}

- (void)serverDiedForConference:(id)conference
{
  conferenceCopy = conference;
  v5 = sub_1000423E0();
  if (v5)
  {
    v6 = sub_100042E68(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[IDSSessionEmbeddedControllerBase serverDiedForConference:]";
      v12 = 1024;
      v13 = 964;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%s:%d] serverDiedForConference delegate called.  Server will exit.", &v10, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 964, "[IDSSessionEmbeddedControllerBase serverDiedForConference:]", 3, 0, "serverDiedForConference delegate called.  Server will exit.");
  sub_1000430F0(0, 0, 0.0, 0.0);
  idsServiceController = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];

  if (idsServiceController)
  {
    idsServiceController2 = [(IDSSessionEmbeddedControllerBase *)self idsServiceController];
    viewServicePID = [idsServiceController2 viewServicePID];

    if (viewServicePID != -1)
    {
      kill(viewServicePID, 15);
    }
  }

  exit(0);
}

@end