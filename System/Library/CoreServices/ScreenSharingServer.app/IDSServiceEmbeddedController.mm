@interface IDSServiceEmbeddedController
+ (id)sharedIDServiceController;
- (BOOL)inviteValidForThisOS:(id)s;
- (BOOL)inviterIsInActiveSession:(id)session;
- (BOOL)validInviteDictionary:(id)dictionary;
- (BOOL)validateRedwoodRequestDictionary:(id)dictionary account:(id)account fromID:(id)d error:(id *)error;
- (IDSServiceEmbeddedController)init;
- (id)activeViewerStatusString;
- (id)datagramConnectionFromIDS:(id)s;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)addActiveSession:(id)session;
- (void)askToCopyToPasteboard:(id)pasteboard senderToken:(unsigned int)token message:(id)message;
- (void)askToOpenURL:(id)l senderToken:(unsigned int)token URL:(id)rL sessionController:(id)controller;
- (void)askToOpenURLTimeout:(id)timeout;
- (void)askToResumeTimeout:(id)timeout;
- (void)askToToCopyToPasteboardTimeout:(id)timeout;
- (void)checkIfNoSessions;
- (void)closeAllSessions;
- (void)createLockScreenNotifier;
- (void)createStatusBar;
- (void)dealloc;
- (void)exitTimerCallback:(id)callback;
- (void)initScreenSharingIDSService;
- (void)initViewServiceHelper;
- (void)inviteWasAccepted:(id)accepted;
- (void)pauseResumeResult:(id)result;
- (void)pauseScreenSharing:(BOOL)sharing;
- (void)pauseScreenSharing:(BOOL)sharing pausingDueToScreenLock:(BOOL)lock;
- (void)pidNotification:(id)notification;
- (void)postAskToCopyToPasteboardNotification;
- (void)postAskToOpenURLNotification;
- (void)postAskToResumeNotification;
- (void)postAskToResumeNotification:(id)notification senderToken:(unsigned int)token;
- (void)postShowUserMessageNotification;
- (void)postViewerPausedMessageNotification;
- (void)removeAskToCopyToPasteboardNotification;
- (void)removeAskToOpenURLNotification;
- (void)removeSession:(id)session andEndIDSSession:(BOOL)sSession;
- (void)removeShowUserMessageNotification;
- (void)removeUserAskToResumeNotification;
- (void)removeViewerPausedNotification;
- (void)requestUserInfo;
- (void)sendLockScreenChangeMessageToAllSessions:(BOOL)sessions;
- (void)sendMessageInviteAccepted:(id)accepted sessionID:(id)d service:(id)service;
- (void)sendMessageInviteDisplayed:(id)displayed sessionID:(id)d service:(id)service;
- (void)sendMessageInviteIgnored:(id)ignored sessionID:(id)d service:(id)service error:(id)error;
- (void)sendMessageShareSettingsUserDecline:(id)decline;
- (void)sendMessageShareStatusResult:(id)result systemInfo:(id)info;
- (void)sendMessageShareStatusResultInfo:(id)info sessionID:(id)d service:(id)service systemInfo:(id)systemInfo;
- (void)sendMessageShareStatusUserDeclined:(id)declined sessionID:(id)d service:(id)service;
- (void)sendMessageStatusMessage:(id)message sessionID:(id)d service:(id)service status:(id)status;
- (void)sendMessageTCAccepted;
- (void)sendMessageTCAccepted:(id)accepted sessionID:(id)d service:(id)service;
- (void)sendServiceMessage:(id)message destination:(id)destination service:(id)service;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account identifier:(id)identifier sentBytes:(int64_t)bytes totalBytes:(int64_t)totalBytes;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingPendingMessageOfType:(int64_t)type fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withContext:(id)context;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service connectedDevicesChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)service:(id)service linkedDevicesChanged:(id)changed;
- (void)service:(id)service nearbyDevicesChanged:(id)changed;
- (void)serviceAllowedTrafficClassifiersDidReset:(id)reset;
- (void)serviceSpaceDidBecomeAvailable:(id)available;
- (void)sessionState:(id)state;
- (void)showMessageToUser:(id)user;
- (void)showUserMessageTimeout:(id)timeout;
- (void)showViewerPausedTimeout:(id)timeout;
- (void)termsAndConditionsResult:(id)result;
@end

@implementation IDSServiceEmbeddedController

+ (id)sharedIDServiceController
{
  v2 = qword_100070A70;
  if (!qword_100070A70)
  {
    v3 = sub_1000423E0();
    if (v3)
    {
      v4 = sub_100042E68(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = "+[IDSServiceEmbeddedController sharedIDServiceController]";
        v10 = 1024;
        v11 = 200;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] init shared service controller", &v8, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 200, "+[IDSServiceEmbeddedController sharedIDServiceController]", 7, 0, "init shared service controller");
    v5 = objc_alloc_init(IDSServiceEmbeddedController);
    v6 = qword_100070A70;
    qword_100070A70 = v5;

    v2 = qword_100070A70;
  }

  return v2;
}

- (IDSServiceEmbeddedController)init
{
  v7.receiver = self;
  v7.super_class = IDSServiceEmbeddedController;
  v2 = [(IDSServiceEmbeddedController *)&v7 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    [(IDSServiceEmbeddedController *)v2 setActiveSessions:v3];

    [(IDSServiceEmbeddedController *)v2 setPendingSession:0];
    v4 = dispatch_semaphore_create(0);
    url_sem = v2->url_sem;
    v2->url_sem = v4;

    v2->_osTransactionLock = 0;
    [(IDSServiceEmbeddedController *)v2 setViewServicePID:0xFFFFFFFFLL];
    objc_storeStrong(&qword_100070A78, v2);
  }

  return v2;
}

- (void)initScreenSharingIDSService
{
  [(IDSServiceEmbeddedController *)self initViewServiceHelper];
  idsService = [(IDSServiceEmbeddedController *)self idsService];

  if (!idsService)
  {
    xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100068DC0);
    v4 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.safeview"];
    [(IDSServiceEmbeddedController *)self setIdsService:v4];

    idsService2 = [(IDSServiceEmbeddedController *)self idsService];
    [idsService2 addDelegate:self queue:&_dispatch_main_q];

    v6 = sub_1000423E0();
    if (v6)
    {
      v7 = sub_100042E68(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        idsService3 = [(IDSServiceEmbeddedController *)self idsService];
        *buf = 136315650;
        v11 = "[IDSServiceEmbeddedController initScreenSharingIDSService]";
        v12 = 1024;
        v13 = 239;
        v14 = 2048;
        v15 = idsService3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] setup safeview service %p", buf, 0x1Cu);
      }
    }

    idsService4 = [(IDSServiceEmbeddedController *)self idsService];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 239, "[IDSServiceEmbeddedController initScreenSharingIDSService]", 7, 0, "setup safeview service %p", idsService4);
  }
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  v12 = COERCE_DOUBLE(service);
  accountCopy = account;
  messageCopy = message;
  dCopy = d;
  serverReceivedTime = [context serverReceivedTime];
  [serverReceivedTime timeIntervalSinceNow];
  v18 = v17;

  v19 = sub_1000423E0();
  if (v19)
  {
    v20 = sub_100042E68(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v165 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
      v166 = 1024;
      v167 = 269;
      v168 = 2048;
      v169 = 0.0 - v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] incoming message sent %f seconds ago", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 269, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "incoming message sent %f seconds ago", 0.0 - v18);
  v21 = sub_1000423E0();
  if (v18 < -45.0)
  {
    if (v21)
    {
      v22 = sub_100042E68(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v165 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
        v166 = 1024;
        v167 = 272;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%s:%d] message rejected", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 272, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "message rejected");
LABEL_56:
    v42 = 0;
    v43 = 0;
LABEL_57:
    v44 = 0;
    goto LABEL_58;
  }

  if (v21)
  {
    v23 = sub_100042E68(v21);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      idsService = [(IDSServiceEmbeddedController *)self idsService];
      *buf = 136315906;
      v165 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
      v166 = 1024;
      v167 = 276;
      v168 = 2048;
      v169 = v12;
      v170 = 2048;
      v171 = idsService;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%s:%d] service = %p  self.idsService %p", buf, 0x26u);
    }
  }

  idsService2 = [(IDSServiceEmbeddedController *)self idsService];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 276, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "service = %p  self.idsService %p", *&v12, idsService2);

  exitTimer = [(IDSServiceEmbeddedController *)self exitTimer];
  [exitTimer invalidate];

  [(IDSServiceEmbeddedController *)self setExitTimer:0];
  _os_nospin_lock_lock();
  osTransaction = [(IDSServiceEmbeddedController *)self osTransaction];

  if (!osTransaction)
  {
    v28 = os_transaction_create();
    [(IDSServiceEmbeddedController *)self setOsTransaction:v28];

    v29 = sub_1000423E0();
    if (v29)
    {
      v30 = sub_100042E68(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        [(IDSServiceEmbeddedController *)self osTransaction];
        v31 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 136315650;
        v165 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
        v166 = 1024;
        v167 = 285;
        v168 = 2048;
        v169 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[%s:%d] transaction %p", buf, 0x1Cu);
      }
    }

    osTransaction2 = [(IDSServiceEmbeddedController *)self osTransaction];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 285, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "transaction %p", osTransaction2);
  }

  _os_nospin_lock_unlock();
  v33 = sub_1000423E0();
  if (v33)
  {
    v34 = sub_100042E68(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = COERCE_DOUBLE([dCopy UTF8String]);
      *buf = 136315650;
      v165 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
      v166 = 1024;
      v167 = 289;
      v168 = 2080;
      v169 = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[%s:%d] service message received from %s", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 289, "-[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "service message received from %s", [dCopy UTF8String]);
  v36 = [(IDSServiceEmbeddedController *)self validInviteDictionary:messageCopy];
  v37 = sub_1000423E0();
  if ((v36 & 1) == 0)
  {
    if (v37)
    {
      v65 = sub_100042E68(v37);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        sanitizedFromID = [(IDSServiceEmbeddedController *)self sanitizedFromID];
        v67 = COERCE_DOUBLE([sanitizedFromID UTF8String]);
        *buf = 136315650;
        v165 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
        v166 = 1024;
        v167 = 294;
        v168 = 2080;
        v169 = v67;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "[%s:%d] invalid invite dictionary from %s - ignoring", buf, 0x1Cu);
      }
    }

    sanitizedFromID2 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 294, "-[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "invalid invite dictionary from %s - ignoring", [sanitizedFromID2 UTF8String]);

    goto LABEL_56;
  }

  if (v37)
  {
    v38 = sub_100042E68(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [messageCopy description];
      v40 = COERCE_DOUBLE([v39 UTF8String]);
      *buf = 136315650;
      v165 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
      v166 = 1024;
      v167 = 297;
      v168 = 2080;
      v169 = v40;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[%s:%d] inviteOptions: %s", buf, 0x1Cu);
    }
  }

  v41 = [messageCopy description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 297, "-[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "inviteOptions: %s", [v41 UTF8String]);

  v42 = 0;
  v43 = 0;
  v44 = 0;
  if ([(IDSServiceEmbeddedController *)self inviteValidForThisOS:messageCopy])
  {
    v43 = [messageCopy objectForKeyedSubscript:@"com.apple.private.applecare"];
    v45 = IDSCopyAddressDestinationForDestination();
    [(IDSServiceEmbeddedController *)self setSanitizedFromID:v45];

    sanitizedFromID3 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
    isEmailAddress = [sanitizedFromID3 isEmailAddress];

    if (isEmailAddress)
    {
      sanitizedFromID4 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
      v49 = IDSCopyIDForEmailAddress();
      [(IDSServiceEmbeddedController *)self setSanitizedFromID:v49];
    }

    sanitizedFromID5 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
    isPhoneNumber = [sanitizedFromID5 isPhoneNumber];

    if (isPhoneNumber)
    {
      sanitizedFromID6 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
      v53 = IDSCopyIDForPhoneNumber();
      [(IDSServiceEmbeddedController *)self setSanitizedFromID:v53];
    }

    v54 = sub_1000423E0();
    if (v54)
    {
      v55 = sub_100042E68(v54);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        sanitizedFromID7 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
        v57 = COERCE_DOUBLE([sanitizedFromID7 UTF8String]);
        *buf = 136315650;
        v165 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
        v166 = 1024;
        v167 = 317;
        v168 = 2080;
        v169 = v57;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[%s:%d] self.sanitizedFromID %s", buf, 0x1Cu);
      }
    }

    sanitizedFromID8 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 317, "-[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "self.sanitizedFromID %s", [sanitizedFromID8 UTF8String]);

    keyExistsAndHasValidFormat = 0;
    if (sub_100022828())
    {
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AllowAny", @"com.apple.screensharingserver", &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        v60 = AppBooleanValue == 0;
      }

      else
      {
        v60 = 1;
      }

      v61 = !v60;
      v62 = sub_1000423E0();
      if (v62)
      {
        v63 = sub_100042E68(v62);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v165 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
          v166 = 1024;
          v167 = 327;
          v168 = 1024;
          LODWORD(v169) = v61;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "[%s:%d] allowAny: %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 327, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "allowAny: %d", v61);
      v64 = v61 ^ 1;
    }

    else
    {
      v64 = 1;
    }

    v69 = [messageCopy objectForKeyedSubscript:@"cmd"];
    v42 = v69;
    if (v69 && (([v69 isEqualToString:@"alreadyAccepted"] & 1) != 0 || objc_msgSend(v42, "isEqualToString:", @"alreadyDeclined")))
    {
      v158 = accountCopy;
      v70 = sub_1000423E0();
      if (v70)
      {
        v71 = sub_100042E68(v70);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v165 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
          v166 = 1024;
          v167 = 333;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "[%s:%d] got message accepted or declined elsewhere", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 333, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "got message accepted or declined elsewhere");
      pendingSession = [(IDSServiceEmbeddedController *)self pendingSession];

      if (!pendingSession)
      {
        v111 = sub_1000423E0();
        if (v111)
        {
          v112 = sub_100042E68(v111);
          if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v165 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
            v166 = 1024;
            v167 = 352;
            _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "[%s:%d] no pending share settings session", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 352, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "no pending share settings session");
        goto LABEL_57;
      }

      v73 = [messageCopy objectForKeyedSubscript:@"sessionID"];
      pendingSession2 = [(IDSServiceEmbeddedController *)self pendingSession];
      sessionID = [pendingSession2 sessionID];
      v76 = v73;
      LODWORD(v73) = [sessionID isEqualToString:v73];

      if (!v73)
      {
        v113 = sub_1000423E0();
        v80 = v76;
        accountCopy = v158;
        if (v113)
        {
          v114 = sub_100042E68(v113);
          if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v165 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
            v166 = 1024;
            v167 = 349;
            _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "[%s:%d] not current session", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 349, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "not current session");
        goto LABEL_146;
      }

      pendingSession3 = [(IDSServiceEmbeddedController *)self pendingSession];
      appleIDInviteWasAcceptedOrDeclined = [pendingSession3 appleIDInviteWasAcceptedOrDeclined];

      v79 = sub_1000423E0();
      if (appleIDInviteWasAcceptedOrDeclined)
      {
        v80 = v76;
        accountCopy = v158;
        if (v79)
        {
          v81 = sub_100042E68(v79);
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v165 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
            v166 = 1024;
            v167 = 346;
            _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "[%s:%d] local session was already accepted or declined", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 346, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "local session was already accepted or declined", v144);
        goto LABEL_146;
      }

      v80 = v76;
      accountCopy = v158;
      if (v79)
      {
        v121 = sub_100042E68(v79);
        if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
        {
          v122 = COERCE_DOUBLE([v80 UTF8String]);
          *buf = 136315650;
          v165 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
          v166 = 1024;
          v167 = 341;
          v168 = 2080;
          v169 = v122;
          _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, "[%s:%d] remove session %s", buf, 0x1Cu);
        }
      }

      [v80 UTF8String];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 341, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "remove session %s");
LABEL_145:
      pendingSession4 = [(IDSServiceEmbeddedController *)self pendingSession];
      [pendingSession4 doEndSession];

      [(IDSServiceEmbeddedController *)self setPendingSession:0];
LABEL_146:

      goto LABEL_57;
    }

    v82 = [v42 isEqualToString:@"endSession"];
    v83 = sub_1000423E0();
    if (v82)
    {
      if (v83)
      {
        v84 = sub_100042E68(v83);
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v165 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
          v166 = 1024;
          v167 = 357;
          _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "[%s:%d] got endsession message", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 357, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "got endsession message");
      pendingSession5 = [(IDSServiceEmbeddedController *)self pendingSession];

      if (!pendingSession5)
      {
        v115 = sub_1000423E0();
        if (v115)
        {
          v116 = sub_100042E68(v115);
          if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v165 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
            v166 = 1024;
            v167 = 371;
            _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "[%s:%d] no pending share settings session", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 371, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "no pending share settings session");
        goto LABEL_57;
      }

      v159 = accountCopy;
      v86 = [messageCopy objectForKeyedSubscript:@"sessionID"];
      pendingSession6 = [(IDSServiceEmbeddedController *)self pendingSession];
      sessionID2 = [pendingSession6 sessionID];
      v89 = v86;
      LODWORD(v86) = [sessionID2 isEqualToString:v86];

      v90 = sub_1000423E0();
      v80 = v89;
      if (!v86)
      {
        accountCopy = v159;
        if (v90)
        {
          v119 = sub_100042E68(v90);
          if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
          {
            v120 = COERCE_DOUBLE([v80 UTF8String]);
            *buf = 136315650;
            v165 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
            v166 = 1024;
            v167 = 368;
            v168 = 2080;
            v169 = v120;
            _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "[%s:%d] unknown sessionid  %s", buf, 0x1Cu);
          }
        }

        [v80 UTF8String];
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 368, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "unknown sessionid  %s");
        goto LABEL_146;
      }

      accountCopy = v159;
      if (v90)
      {
        v91 = sub_100042E68(v90);
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          v92 = COERCE_DOUBLE([v80 UTF8String]);
          *buf = 136315650;
          v165 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
          v166 = 1024;
          v167 = 363;
          v168 = 2080;
          v169 = v92;
          _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "[%s:%d] endsession for %s", buf, 0x1Cu);
        }
      }

      [v80 UTF8String];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 363, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "endsession for %s");
      goto LABEL_145;
    }

    if (v83)
    {
      v93 = sub_100042E68(v83);
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v165 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
        v166 = 1024;
        v167 = 375;
        _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "[%s:%d] unknown cmd", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 375, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "unknown cmd");
    v94 = sub_1000423E0();
    if (v43)
    {
      v160 = v64;
      if (v94)
      {
        v95 = sub_100042E68(v94);
        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
        {
          sanitizedFromID9 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
          v156 = COERCE_DOUBLE([sanitizedFromID9 UTF8String]);
          activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
          v98 = [activeSessions count];
          *buf = 136315906;
          v165 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
          v166 = 1024;
          v167 = 379;
          v168 = 2080;
          v169 = v156;
          v170 = 2048;
          v171 = v98;
          _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "[%s:%d] sanitized from %s  active session count %lu", buf, 0x26u);
        }
      }

      sanitizedFromID10 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
      uTF8String = [sanitizedFromID10 UTF8String];
      activeSessions2 = [(IDSServiceEmbeddedController *)self activeSessions];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 379, "-[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "sanitized from %s  active session count %lu", uTF8String, [activeSessions2 count]);

      sanitizedFromID11 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
      v162 = 0;
      v103 = [(IDSServiceEmbeddedController *)self validateRedwoodRequestDictionary:v43 account:accountCopy fromID:sanitizedFromID11 error:&v162];
      v44 = v162;

      v104 = sub_1000423E0();
      if (v104)
      {
        v105 = sub_100042E68(v104);
        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v165 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
          v166 = 1024;
          v167 = 382;
          v168 = 1024;
          LODWORD(v169) = v103;
          _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "[%s:%d] result %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 382, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "result %d", v103);
      if ((v103 & 1) == 0)
      {
        v106 = sub_1000423E0();
        if (v106)
        {
          v107 = sub_100042E68(v106);
          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
          {
            v108 = COERCE_DOUBLE([dCopy UTF8String]);
            *buf = 136315650;
            v165 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
            v166 = 1024;
            v167 = 386;
            v168 = 2080;
            v169 = v108;
            _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "[%s:%d] Not a valid request: %s", buf, 0x1Cu);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 386, "-[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "Not a valid request: %s", [dCopy UTF8String]);
        if (v160)
        {
          v109 = sub_1000423E0();
          if (v109)
          {
            v110 = sub_100042E68(v109);
            if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v165 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
              v166 = 1024;
              v167 = 390;
              _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "[%s:%d] ignore", buf, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 390, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "ignore");
          goto LABEL_58;
        }

        v118 = 0;
LABEL_148:
        if (![v42 isEqualToString:@"share"])
        {
          goto LABEL_58;
        }

        v155 = v118;
        v124 = [messageCopy objectForKeyedSubscript:@"sessionID"];
        v125 = sub_1000423E0();
        if (v125)
        {
          v126 = sub_100042E68(v125);
          if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
          {
            v127 = COERCE_DOUBLE([v124 UTF8String]);
            *buf = 136315650;
            v165 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
            v166 = 1024;
            v167 = 408;
            v168 = 2080;
            v169 = v127;
            _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "[%s:%d] share settings sessionID = %s", buf, 0x1Cu);
          }
        }

        v157 = v124;
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 408, "-[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "share settings sessionID = %s", [v124 UTF8String]);
        [v43 objectForKeyedSubscript:@"AppleName"];
        v128 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v129 = sub_1000423E0();
        v161 = v128;
        if (v129)
        {
          v130 = sub_100042E68(v129);
          if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
          {
            uTF8String2 = [*&v128 UTF8String];
            *buf = 136315906;
            v165 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
            v166 = 1024;
            v167 = 411;
            v168 = 2048;
            v169 = v128;
            v170 = 2080;
            v171 = uTF8String2;
            _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "[%s:%d] appleNameSpecifier %p  %s", buf, 0x26u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 411, "-[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "appleNameSpecifier %p  %s", *&v128, [*&v128 UTF8String]);
        pendingSession7 = [(IDSServiceEmbeddedController *)self pendingSession];

        if (pendingSession7)
        {
          v133 = sub_1000423E0();
          if (v133)
          {
            v134 = sub_100042E68(v133);
            if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
            {
              pendingSession8 = [(IDSServiceEmbeddedController *)self pendingSession];
              inviterID = [pendingSession8 inviterID];
              v145 = COERCE_DOUBLE([inviterID UTF8String]);
              pendingSession9 = [(IDSServiceEmbeddedController *)self pendingSession];
              idsSession = [pendingSession9 idsSession];
              sessionID3 = [idsSession sessionID];
              uTF8String3 = [sessionID3 UTF8String];
              *buf = 136315906;
              v165 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
              v166 = 1024;
              v167 = 416;
              v168 = 2080;
              v169 = v145;
              v170 = 2080;
              v171 = uTF8String3;
              _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, "[%s:%d] Ignoring invitation -- pendingSession already active from: %s %s", buf, 0x26u);
            }
          }

          pendingSession10 = [(IDSServiceEmbeddedController *)self pendingSession];
          inviterID2 = [pendingSession10 inviterID];
          uTF8String4 = [inviterID2 UTF8String];
          pendingSession11 = [(IDSServiceEmbeddedController *)self pendingSession];
          idsSession2 = [pendingSession11 idsSession];
          sessionID4 = [idsSession2 sessionID];
          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 416, "-[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "Ignoring invitation -- pendingSession already active from: %s %s", uTF8String4, [sessionID4 UTF8String]);

          v139 = v157;
          if (!v155)
          {
            goto LABEL_168;
          }

          sanitizedFromID12 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
          [(IDSServiceEmbeddedController *)self sendMessageInviteIgnored:sanitizedFromID12 sessionID:v157 service:*&v12 error:@"Ignore_PendingInvite"];
        }

        else
        {
          v141 = [IDSSessionEmbeddedControllerShareSettings alloc];
          sanitizedFromID13 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
          v142 = [(IDSSessionEmbeddedControllerShareSettings *)v141 initWithRemoteID:sanitizedFromID13 sessionID:v157 andServiceController:self appleName:*&v128];
          [(IDSServiceEmbeddedController *)self setPendingSession:v142];

          v139 = v157;
          [(IDSServiceEmbeddedController *)self setIsShareSettings:1];
          if (v155)
          {
            sanitizedFromID14 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
            [(IDSServiceEmbeddedController *)self sendMessageInviteDisplayed:sanitizedFromID14 sessionID:v157 service:*&v12];
          }

          sanitizedFromID12 = [(IDSServiceEmbeddedController *)self pendingSession];
          [sanitizedFromID12 postInvitationNotification];
        }

LABEL_168:
        goto LABEL_58;
      }
    }

    else
    {
      if (v94)
      {
        v117 = sub_100042E68(v94);
        if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v165 = "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]";
          v166 = 1024;
          v167 = 397;
          _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "[%s:%d] no dictionary", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 397, "[IDSServiceEmbeddedController service:account:incomingMessage:fromID:context:]", 7, 0, "no dictionary");
      v44 = 0;
      if (v64)
      {
        v43 = 0;
        goto LABEL_58;
      }
    }

    v118 = 1;
    goto LABEL_148;
  }

LABEL_58:
  [(IDSServiceEmbeddedController *)self checkIfNoSessions];
}

- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withContext:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  sessionCopy = session;
  dCopy = d;
  contextCopy = context;
  keyExistsAndHasValidFormat = 0;
  exitTimer = [(IDSServiceEmbeddedController *)self exitTimer];
  [exitTimer invalidate];

  [(IDSServiceEmbeddedController *)self setExitTimer:0];
  _os_nospin_lock_lock();
  osTransaction = [(IDSServiceEmbeddedController *)self osTransaction];

  if (!osTransaction)
  {
    v17 = os_transaction_create();
    [(IDSServiceEmbeddedController *)self setOsTransaction:v17];

    v18 = sub_1000423E0();
    if (v18)
    {
      v19 = sub_100042E68(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        osTransaction2 = [(IDSServiceEmbeddedController *)self osTransaction];
        *buf = 136315650;
        v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
        v222 = 1024;
        v223 = 457;
        v224 = 2048;
        v225 = osTransaction2;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%s:%d] transaction %p", buf, 0x1Cu);
      }
    }

    osTransaction3 = [(IDSServiceEmbeddedController *)self osTransaction];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 457, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "transaction %p", osTransaction3);
  }

  _os_nospin_lock_unlock();
  v22 = sub_1000423E0();
  if (v22)
  {
    v23 = sub_100042E68(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String = [dCopy UTF8String];
      *buf = 136315650;
      v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
      v222 = 1024;
      v223 = 461;
      v224 = 2080;
      v225 = uTF8String;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%s:%d] inviteReceivedForSession from %s", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 461, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "inviteReceivedForSession from %s", [dCopy UTF8String]);
  v25 = sub_1000423E0();
  if (v25)
  {
    v26 = sub_100042E68(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [contextCopy length];
      *buf = 136315650;
      v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
      v222 = 1024;
      v223 = 464;
      v224 = 2048;
      v225 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%s:%d] invite context size %lu", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 464, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "invite context size %lu", [contextCopy length]);
  v28 = sub_1000273A0(contextCopy);
  v29 = IDSCopyAddressDestinationForDestination();
  [(IDSServiceEmbeddedController *)self setSanitizedFromID:v29];

  sanitizedFromID = [(IDSServiceEmbeddedController *)self sanitizedFromID];
  isEmailAddress = [sanitizedFromID isEmailAddress];

  if (isEmailAddress)
  {
    sanitizedFromID2 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
    v33 = IDSCopyIDForEmailAddress();
    [(IDSServiceEmbeddedController *)self setSanitizedFromID:v33];
  }

  sanitizedFromID3 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
  isPhoneNumber = [sanitizedFromID3 isPhoneNumber];

  if (isPhoneNumber)
  {
    sanitizedFromID4 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
    v37 = IDSCopyIDForPhoneNumber();
    [(IDSServiceEmbeddedController *)self setSanitizedFromID:v37];
  }

  v38 = [(IDSServiceEmbeddedController *)self validInviteDictionary:v28];
  v39 = sub_1000423E0();
  if (v38)
  {
    if (v39)
    {
      v40 = sub_100042E68(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = [v28 description];
        uTF8String2 = [v41 UTF8String];
        *buf = 136315650;
        v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
        v222 = 1024;
        v223 = 485;
        v224 = 2080;
        v225 = uTF8String2;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[%s:%d] inviteOptions: %s", buf, 0x1Cu);
      }
    }

    v43 = [v28 description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 485, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "inviteOptions: %s", [v43 UTF8String]);

    if ([(IDSServiceEmbeddedController *)self inviteValidForThisOS:v28])
    {
      v44 = [v28 objectForKeyedSubscript:@"com.apple.private.applecare"];
      v208 = sessionCopy;
      if (sub_100022828())
      {
        AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AllowAny", @"com.apple.screensharingserver", &keyExistsAndHasValidFormat);
        if (keyExistsAndHasValidFormat)
        {
          v46 = AppBooleanValue == 0;
        }

        else
        {
          v46 = 1;
        }

        v47 = !v46;
        v48 = sub_1000423E0();
        if (v48)
        {
          v49 = sub_100042E68(v48);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
            v222 = 1024;
            v223 = 499;
            v224 = 1024;
            LODWORD(v225) = v47;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "[%s:%d] allowAny: %d", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 499, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "allowAny: %d", v47);
        v50 = v47 ^ 1;
      }

      else
      {
        v50 = 1;
      }

      v56 = sub_1000423E0();
      if (v44)
      {
        if (v56)
        {
          v57 = sub_100042E68(v56);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            sanitizedFromID5 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
            v59 = v44;
            uTF8String3 = [sanitizedFromID5 UTF8String];
            activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
            v62 = [activeSessions count];
            *buf = 136315906;
            v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
            v222 = 1024;
            v223 = 504;
            v224 = 2080;
            v225 = uTF8String3;
            v44 = v59;
            v226 = 2048;
            v227 = v62;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "[%s:%d] sanitized from %s  active session count %lu", buf, 0x26u);
          }
        }

        sanitizedFromID6 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
        uTF8String4 = [sanitizedFromID6 UTF8String];
        activeSessions2 = [(IDSServiceEmbeddedController *)self activeSessions];
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 504, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "sanitized from %s  active session count %lu", uTF8String4, [activeSessions2 count]);

        sanitizedFromID7 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
        LODWORD(activeSessions2) = [(IDSServiceEmbeddedController *)self inviterIsInActiveSession:sanitizedFromID7];

        if (activeSessions2)
        {
          v67 = sub_1000423E0();
          sessionCopy = v208;
          if (v67)
          {
            v68 = sub_100042E68(v67);
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
            {
              sanitizedFromID8 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
              uTF8String5 = [sanitizedFromID8 UTF8String];
              *buf = 136315650;
              v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
              v222 = 1024;
              v223 = 507;
              v224 = 2080;
              v225 = uTF8String5;
              _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "[%s:%d] Ignoring invitation.  Session already established with fromID %s.", buf, 0x1Cu);
            }
          }

          sanitizedFromID9 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 507, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "Ignoring invitation.  Session already established with fromID %s.", [sanitizedFromID9 UTF8String]);

          goto LABEL_43;
        }

        v73 = [v44 objectForKeyedSubscript:@"aaToken"];
        if (v73)
        {
          v205 = v44;
          v74 = sub_1000423E0();
          sessionCopy = v208;
          if (v74)
          {
            v75 = sub_100042E68(v74);
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
            {
              uTF8String6 = [v73 UTF8String];
              *buf = 136315650;
              v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
              v222 = 1024;
              v223 = 514;
              v224 = 2080;
              v225 = uTF8String6;
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "[%s:%d] aaToken %s", buf, 0x1Cu);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 514, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "aaToken %s", [v73 UTF8String]);
          v77 = sub_1000423E0();
          if (v77)
          {
            v78 = sub_100042E68(v77);
            if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
              v222 = 1024;
              v223 = 515;
              _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "[%s:%d] live monitoring request - ignore", buf, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 515, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "live monitoring request - ignore");
          [(IDSServiceEmbeddedController *)self checkIfNoSessions];
LABEL_73:

          v79 = v205;
LABEL_74:

          goto LABEL_43;
        }

        v204 = v50;
        sanitizedFromID10 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
        v215 = 0;
        v81 = [(IDSServiceEmbeddedController *)self validateRedwoodRequestDictionary:v44 account:accountCopy fromID:sanitizedFromID10 error:&v215];
        v207 = v215;

        v82 = sub_1000423E0();
        if (v82)
        {
          v83 = v44;
          v84 = sub_100042E68(v82);
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
            v222 = 1024;
            v223 = 521;
            v224 = 1024;
            LODWORD(v225) = v81;
            _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "[%s:%d] result %d", buf, 0x18u);
          }

          v44 = v83;
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 521, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "result %d", v81);
        if ((v81 & 1) == 0)
        {
          v85 = sub_1000423E0();
          if (v85)
          {
            v86 = sub_100042E68(v85);
            if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
            {
              uTF8String7 = [dCopy UTF8String];
              *buf = 136315650;
              v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
              v222 = 1024;
              v223 = 525;
              v224 = 2080;
              v225 = uTF8String7;
              _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "[%s:%d] Not a valid request: %s", buf, 0x1Cu);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 525, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "Not a valid request: %s", [dCopy UTF8String]);
          if (v204)
          {
            v205 = v44;
            v88 = sub_1000423E0();
            sessionCopy = v208;
            if (v88)
            {
              v89 = sub_100042E68(v88);
              if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                v222 = 1024;
                v223 = 529;
                _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "[%s:%d] decline", buf, 0x12u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 529, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "decline");
            v218[0] = @"REASON";
            v218[1] = @"ERROR";
            v219[0] = @"TokenAuthenticationFailed";
            v90 = [v207 description];
            v91 = v90;
            v92 = &stru_100069830;
            if (v90)
            {
              v92 = v90;
            }

            v219[1] = v92;
            v93 = [NSDictionary dictionaryWithObjects:v219 forKeys:v218 count:2];
            v94 = sub_100027558(v93);
            [v208 declineInvitationWithData:v94];

            [(IDSServiceEmbeddedController *)self checkIfNoSessions];
            goto LABEL_73;
          }
        }

        v95 = [v44 objectForKeyedSubscript:@"appleName"];
        v96 = sub_1000423E0();
        if (v96)
        {
          v97 = sub_100042E68(v96);
          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
          {
            uTF8String8 = [(__CFString *)v95 UTF8String];
            *buf = 136315650;
            v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
            v222 = 1024;
            v223 = 539;
            v224 = 2080;
            v225 = uTF8String8;
            _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "[%s:%d] appleNameSpecifier:  %s", buf, 0x1Cu);
          }
        }

        v202 = v81;
        v203 = v95;
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 539, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "appleNameSpecifier:  %s", [(__CFString *)v95 UTF8String]);
      }

      else
      {
        if (v56)
        {
          v72 = sub_100042E68(v56);
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
            v222 = 1024;
            v223 = 543;
            _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "[%s:%d] no dictionary", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 543, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "no dictionary");
        if (v50)
        {
          [(IDSServiceEmbeddedController *)self checkIfNoSessions];
          sessionCopy = v208;
          v55 = serviceCopy;
          goto LABEL_44;
        }

        v202 = 0;
        v203 = 0;
        v207 = 0;
      }

      v99 = +[MCProfileConnection sharedConnection];
      v100 = [v99 effectiveBoolValueForSetting:MCFeatureRemoteScreenObservationAllowed];

      if (v100 == 2)
      {
        v101 = sub_1000423E0();
        if (v101)
        {
          v102 = sub_100042E68(v101);
          if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
            v222 = 1024;
            v223 = 556;
            _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "[%s:%d] ignoring invitation because allowRemoteScreenObservation restriction set", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 556, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "ignoring invitation because allowRemoteScreenObservation restriction set");
      }

      v103 = +[MCProfileConnection sharedConnection];
      v104 = [v103 effectiveBoolValueForSetting:MCFeatureScreenShotAllowed];

      if (v104 == 2)
      {
        v105 = sub_1000423E0();
        sessionCopy = v208;
        if (v105)
        {
          v106 = sub_100042E68(v105);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
            v222 = 1024;
            v223 = 563;
            _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "[%s:%d] ignoring invitation because allowScreenShot restriction set", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 563, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "ignoring invitation because allowScreenShot restriction set");
      }

      else
      {
        sessionCopy = v208;
        if (v100 != 2)
        {
          pendingSession = [(IDSServiceEmbeddedController *)self pendingSession];

          v206 = v44;
          if (!pendingSession)
          {
            v213 = 0u;
            v214 = 0u;
            v211 = 0u;
            v212 = 0u;
            activeSessions3 = [(IDSServiceEmbeddedController *)self activeSessions];
            allValues = [activeSessions3 allValues];

            obj = allValues;
            v125 = [allValues countByEnumeratingWithState:&v211 objects:v217 count:16];
            if (v125)
            {
              v126 = v125;
              v200 = *v212;
              while (2)
              {
                for (i = 0; i != v126; i = i + 1)
                {
                  if (*v212 != v200)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v128 = *(*(&v211 + 1) + 8 * i);
                  v129 = sub_1000423E0();
                  if (v129)
                  {
                    v130 = sub_100042E68(v129);
                    if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
                    {
                      inviterID = [v128 inviterID];
                      uTF8String9 = [inviterID UTF8String];
                      *buf = 136315650;
                      v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                      v222 = 1024;
                      v223 = 590;
                      v224 = 2080;
                      v225 = uTF8String9;
                      _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "[%s:%d] active session %s", buf, 0x1Cu);
                    }
                  }

                  inviterID2 = [v128 inviterID];
                  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 590, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "active session %s", [inviterID2 UTF8String]);

                  inviterID3 = [v128 inviterID];
                  sanitizedFromID11 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
                  v136 = [inviterID3 isEqualToString:sanitizedFromID11];

                  if (v136)
                  {
                    v158 = sub_1000423E0();
                    sessionCopy = v208;
                    if (v158)
                    {
                      v159 = sub_100042E68(v158);
                      if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
                      {
                        sanitizedFromID12 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
                        uTF8String10 = [sanitizedFromID12 UTF8String];
                        *buf = 136315650;
                        v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                        v222 = 1024;
                        v223 = 593;
                        v224 = 2080;
                        v225 = uTF8String10;
                        _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_DEFAULT, "[%s:%d] Ignoring invitation.  Session already established with fromID %s.", buf, 0x1Cu);
                      }
                    }

                    sanitizedFromID13 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
                    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 593, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "Ignoring invitation.  Session already established with fromID %s.", [sanitizedFromID13 UTF8String]);

                    v55 = serviceCopy;
                    if (v202)
                    {
                      sanitizedFromID14 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
                      sessionID = [v208 sessionID];
                      [(IDSServiceEmbeddedController *)self sendMessageInviteIgnored:sanitizedFromID14 sessionID:sessionID service:serviceCopy error:@"Ignore_AlreadyInSession"];
                    }

                    [(IDSServiceEmbeddedController *)self checkIfNoSessions];

                    goto LABEL_114;
                  }
                }

                v126 = [obj countByEnumeratingWithState:&v211 objects:v217 count:16];
                if (v126)
                {
                  continue;
                }

                break;
              }
            }

            v137 = sub_1000423E0();
            sessionCopy = v208;
            if (v137)
            {
              v138 = sub_100042E68(v137);
              if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
              {
                v139 = [v28 description];
                uTF8String11 = [v139 UTF8String];
                *buf = 136315650;
                v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                v222 = 1024;
                v223 = 601;
                v224 = 2080;
                v225 = uTF8String11;
                _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, "[%s:%d] inviteOptions %s", buf, 0x1Cu);
              }
            }

            v141 = [v28 description];
            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 601, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "inviteOptions %s", [v141 UTF8String]);

            v142 = [v28 objectForKeyedSubscript:@"avconference"];
            if (v142)
            {
              v143 = v142;
              v144 = [v142 objectForKeyedSubscript:@"AVCNegotiatorInfo"];
              v145 = sub_1000423E0();
              if (v144)
              {
                v201 = v144;
                if (v145)
                {
                  v146 = sub_100042E68(v145);
                  if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                    v222 = 1024;
                    v223 = 611;
                    _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEFAULT, "[%s:%d] AVConference negotiator info available", buf, 0x12u);
                  }
                }

                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 611, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "AVConference negotiator info available");
                v147 = sub_1000423E0();
                if (v147)
                {
                  v148 = sub_100042E68(v147);
                  if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
                  {
                    activeSessions4 = [(IDSServiceEmbeddedController *)self activeSessions];
                    v150 = [activeSessions4 count];
                    *buf = 136315650;
                    v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                    v222 = 1024;
                    v223 = 619;
                    v224 = 2048;
                    v225 = v150;
                    _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "[%s:%d] active session count %lu", buf, 0x1Cu);
                  }
                }

                activeSessions5 = [(IDSServiceEmbeddedController *)self activeSessions];
                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 619, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "active session count %lu", [activeSessions5 count]);

                activeSessions6 = [(IDSServiceEmbeddedController *)self activeSessions];
                v153 = [activeSessions6 count];

                obja = v153;
                if (v153)
                {
                  v154 = sub_1000423E0();
                  if (v154)
                  {
                    v155 = sub_100042E68(v154);
                    if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                      v222 = 1024;
                      v223 = 623;
                      _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "[%s:%d] auto accept invite", buf, 0x12u);
                    }
                  }

                  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 623, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "auto accept invite");
                  if (v202)
                  {
                    sanitizedFromID15 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
                    sessionID2 = [v208 sessionID];
                    [(IDSServiceEmbeddedController *)self sendMessageAutoAccept:sanitizedFromID15 sessionID:sessionID2 service:serviceCopy];
                  }
                }

                else
                {
                  [(IDSServiceEmbeddedController *)self setSessionPaused:0];
                  [(IDSServiceEmbeddedController *)self setScreenPausedBeforeLock:0];
                }

                v194 = [IDSSessionEmbeddedControllerAppleCare alloc];
                v168 = sub_1000423E0();
                if (v168)
                {
                  v169 = sub_100042E68(v168);
                  if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
                  {
                    sessionPaused = [(IDSServiceEmbeddedController *)self sessionPaused];
                    *buf = 136315650;
                    v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                    v222 = 1024;
                    v223 = 640;
                    v224 = 1024;
                    LODWORD(v225) = sessionPaused;
                    _os_log_impl(&_mh_execute_header, v169, OS_LOG_TYPE_DEFAULT, "[%s:%d] start out paused %d", buf, 0x18u);
                  }
                }

                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 640, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "start out paused %d", [(IDSServiceEmbeddedController *)self sessionPaused]);
                v171 = sub_1000423E0();
                if (v171)
                {
                  v172 = sub_100042E68(v171);
                  if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                    v222 = 1024;
                    v223 = 642;
                    v224 = 1024;
                    LODWORD(v225) = v202;
                    _os_log_impl(&_mh_execute_header, v172, OS_LOG_TYPE_DEFAULT, "[%s:%d] isValidatedRedwoodRequest %d", buf, 0x18u);
                  }
                }

                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 642, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "isValidatedRedwoodRequest %d", v202);
                if (v202)
                {
                  sanitizedFromID16 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
                  sessionID3 = [v208 sessionID];
                  [(IDSServiceEmbeddedController *)self sendMessageInviteDisplayed:sanitizedFromID16 sessionID:sessionID3 service:serviceCopy];
                }

                v175 = sub_1000423E0();
                if (v175)
                {
                  v176 = sub_100042E68(v175);
                  if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
                  {
                    uTF8String12 = [(__CFString *)v203 UTF8String];
                    *buf = 136315650;
                    v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                    v222 = 1024;
                    v223 = 646;
                    v224 = 2080;
                    v225 = uTF8String12;
                    _os_log_impl(&_mh_execute_header, v176, OS_LOG_TYPE_DEFAULT, "[%s:%d] appleNameSpecifier %s", buf, 0x1Cu);
                  }
                }

                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 646, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "appleNameSpecifier %s", [(__CFString *)v203 UTF8String]);
                keyExistsAndHasValidFormat = 0;
                v178 = CFPreferencesGetAppBooleanValue(@"UseAppleCareName", @"com.apple.screensharingserver", &keyExistsAndHasValidFormat);
                v192 = v143;
                if (keyExistsAndHasValidFormat)
                {
                  v179 = v178;
                  v180 = sub_1000423E0();
                  if (v180)
                  {
                    v181 = sub_100042E68(v180);
                    if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315650;
                      v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                      v222 = 1024;
                      v223 = 652;
                      v224 = 1024;
                      LODWORD(v225) = v179;
                      _os_log_impl(&_mh_execute_header, v181, OS_LOG_TYPE_DEFAULT, "[%s:%d] AppleCare name flag %d", buf, 0x18u);
                    }
                  }

                  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 652, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "AppleCare name flag %d", v179);

                  if (v179)
                  {
                    v182 = @"AC";
                  }

                  else
                  {
                    v182 = @"AS";
                  }
                }

                else
                {
                  v182 = v203;
                }

                v183 = v194;
                sanitizedFromID17 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
                v203 = v182;
                v191 = v182;
                LOBYTE(v190) = [(IDSServiceEmbeddedController *)self sessionPaused];
                v143 = v192;
                v185 = [(IDSSessionEmbeddedControllerAppleCare *)v183 initWithRemoteID:sanitizedFromID17 session:v208 direction:1 inviteDictionary:v192 andServiceController:self autoAcceptInvite:obja != 0 startOutPaused:v190 appleName:v191];
                [(IDSServiceEmbeddedController *)self setPendingSession:v185];

                v186 = sub_1000423E0();
                if (v186)
                {
                  v187 = sub_100042E68(v186);
                  if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
                  {
                    pendingSession2 = [(IDSServiceEmbeddedController *)self pendingSession];
                    *buf = 136315650;
                    v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                    v222 = 1024;
                    v223 = 663;
                    v224 = 2048;
                    v225 = pendingSession2;
                    _os_log_impl(&_mh_execute_header, v187, OS_LOG_TYPE_DEFAULT, "[%s:%d] PENDING SESSION IS %p", buf, 0x1Cu);
                  }
                }

                pendingSession3 = [(IDSServiceEmbeddedController *)self pendingSession];
                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 663, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "PENDING SESSION IS %p", pendingSession3);
              }

              else
              {
                if (v145)
                {
                  v167 = sub_100042E68(v145);
                  if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                    v222 = 1024;
                    v223 = 614;
                    _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_DEFAULT, "[%s:%d] No AVC negotiator info - ignore invitation", buf, 0x12u);
                  }
                }

                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 614, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 5, 0, "No AVC negotiator info - ignore invitation");
                [(IDSServiceEmbeddedController *)self checkIfNoSessions];
              }
            }

            else
            {
              v165 = sub_1000423E0();
              if (v165)
              {
                v166 = sub_100042E68(v165);
                if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
                  v222 = 1024;
                  v223 = 605;
                  _os_log_impl(&_mh_execute_header, v166, OS_LOG_TYPE_DEFAULT, "[%s:%d] nil AVC dictionary - reject invitation", buf, 0x12u);
                }
              }

              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 605, "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 5, 0, "nil AVC dictionary - reject invitation");
              [(IDSServiceEmbeddedController *)self checkIfNoSessions];
            }

            v79 = v207;
            goto LABEL_74;
          }

          v110 = sub_1000423E0();
          if (v110)
          {
            v111 = sub_100042E68(v110);
            if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
            {
              pendingSession4 = [(IDSServiceEmbeddedController *)self pendingSession];
              inviterID4 = [pendingSession4 inviterID];
              uTF8String13 = [inviterID4 UTF8String];
              objb = [(IDSServiceEmbeddedController *)self pendingSession];
              idsSession = [objb idsSession];
              sessionID4 = [idsSession sessionID];
              uTF8String14 = [sessionID4 UTF8String];
              *buf = 136315906;
              v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
              v222 = 1024;
              v223 = 578;
              v224 = 2080;
              v225 = uTF8String13;
              v226 = 2080;
              v227 = uTF8String14;
              _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "[%s:%d] Ignoring invitation -- pendingSession already active from: %s %s", buf, 0x26u);
            }
          }

          pendingSession5 = [(IDSServiceEmbeddedController *)self pendingSession];
          inviterID5 = [pendingSession5 inviterID];
          uTF8String15 = [inviterID5 UTF8String];
          pendingSession6 = [(IDSServiceEmbeddedController *)self pendingSession];
          idsSession2 = [pendingSession6 idsSession];
          sessionID5 = [idsSession2 sessionID];
          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 578, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "Ignoring invitation -- pendingSession already active from: %s %s", uTF8String15, [sessionID5 UTF8String]);

          v55 = serviceCopy;
          if (v202)
          {
            sanitizedFromID18 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
            sessionID6 = [v208 sessionID];
            [(IDSServiceEmbeddedController *)self sendMessageInviteIgnored:sanitizedFromID18 sessionID:sessionID6 service:serviceCopy error:@"Ignore_PendingInvite"];
          }

          [(IDSServiceEmbeddedController *)self checkIfNoSessions];

LABEL_114:
          goto LABEL_44;
        }
      }

      v55 = serviceCopy;
      if (v202)
      {
        sanitizedFromID19 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
        sessionID7 = [sessionCopy sessionID];
        [(IDSServiceEmbeddedController *)self sendMessageInviteIgnored:sanitizedFromID19 sessionID:sessionID7 service:serviceCopy error:@"Ignore_ScreenSharingRestricted"];
      }

      [(IDSServiceEmbeddedController *)self checkIfNoSessions];

      goto LABEL_114;
    }
  }

  else
  {
    if (v39)
    {
      v51 = sub_100042E68(v39);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        sanitizedFromID20 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
        uTF8String16 = [sanitizedFromID20 UTF8String];
        *buf = 136315650;
        v221 = "[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]";
        v222 = 1024;
        v223 = 481;
        v224 = 2080;
        v225 = uTF8String16;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "[%s:%d] invalid invite dictionary from %s - ignoring", buf, 0x1Cu);
      }
    }

    sanitizedFromID21 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 481, "-[IDSServiceEmbeddedController service:account:inviteReceivedForSession:fromID:withContext:]", 7, 0, "invalid invite dictionary from %s - ignoring", [sanitizedFromID21 UTF8String]);
  }

  [(IDSServiceEmbeddedController *)self checkIfNoSessions];
LABEL_43:
  v55 = serviceCopy;
LABEL_44:
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v11 = [authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust];

  if (v11)
  {
    validationURL = [(IDSServiceEmbeddedController *)self validationURL];
    v13 = [NSURLComponents componentsWithString:validationURL];

    host = [v13 host];

    if (host)
    {
      keyExistsAndHasValidFormat = 0;
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PinningDisabled", @"com.apple.screensharingserver", &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        v16 = AppBooleanValue == 0;
      }

      else
      {
        v16 = 1;
      }

      v17 = !v16;
      v18 = sub_1000423E0();
      if (v18)
      {
        v19 = sub_100042E68(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v31 = "[IDSServiceEmbeddedController URLSession:didReceiveChallenge:completionHandler:]";
          v32 = 1024;
          v33 = 682;
          v34 = 1024;
          v35 = v17;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%s:%d] PinningDisabled: %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 682, "[IDSServiceEmbeddedController URLSession:didReceiveChallenge:completionHandler:]", 7, 0, "PinningDisabled: %d", v17);
      host2 = [v13 host];
      if (v17)
      {
        SSL = SecPolicyCreateSSL(1u, host2);

        if (!SSL)
        {
          goto LABEL_22;
        }
      }

      else
      {
        SSL = SecPolicyCreateAppleSSLPinned();
      }

      protectionSpace2 = [challengeCopy protectionSpace];
      serverTrust = [protectionSpace2 serverTrust];

      v24 = SecTrustSetPolicies(serverTrust, SSL);
      if (SSL)
      {
        CFRelease(SSL);
      }

      if (!v24)
      {
        result = kSecTrustResultInvalid;
        if (!SecTrustEvaluate(serverTrust, &result))
        {
          v25 = sub_1000423E0();
          if (v25)
          {
            v26 = sub_100042E68(v25);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v31 = "[IDSServiceEmbeddedController URLSession:didReceiveChallenge:completionHandler:]";
              v32 = 1024;
              v33 = 717;
              v34 = 1024;
              v35 = result;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%s:%d] trustResult: %d", buf, 0x18u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 717, "[IDSServiceEmbeddedController URLSession:didReceiveChallenge:completionHandler:]", 7, 0, "trustResult: %d", result);
          if (result == kSecTrustResultUnspecified || result == kSecTrustResultProceed)
          {
            v27 = [NSURLCredential credentialForTrust:serverTrust];
            handlerCopy[2](handlerCopy, 0, v27);

            goto LABEL_23;
          }
        }
      }
    }

LABEL_22:
    handlerCopy[2](handlerCopy, 2, 0);
    dispatch_semaphore_signal(self->url_sem);
LABEL_23:

    goto LABEL_24;
  }

  handlerCopy[2](handlerCopy, 1, 0);
LABEL_24:
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  errorCopy = error;
  v7 = sub_1000423E0();
  if (errorCopy)
  {
    if (v7)
    {
      v8 = sub_100042E68(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [errorCopy description];
        *buf = 136315650;
        v13 = "[IDSServiceEmbeddedController URLSession:task:didCompleteWithError:]";
        v14 = 1024;
        v15 = 746;
        v16 = 2080;
        uTF8String = [v9 UTF8String];
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] URLSession:task:didCompleteWithError: %s", buf, 0x1Cu);
      }
    }

    v10 = [errorCopy description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 746, "-[IDSServiceEmbeddedController URLSession:task:didCompleteWithError:]", 7, 0, "URLSession:task:didCompleteWithError: %s", [v10 UTF8String]);

    [(IDSServiceEmbeddedController *)self setUrlResponseData:0];
  }

  else
  {
    if (v7)
    {
      v11 = sub_100042E68(v7);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[IDSServiceEmbeddedController URLSession:task:didCompleteWithError:]";
        v14 = 1024;
        v15 = 750;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] URLSession:task:didCompleteWithError:", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 750, "[IDSServiceEmbeddedController URLSession:task:didCompleteWithError:]", 7, 0, "URLSession:task:didCompleteWithError:");
  }

  dispatch_semaphore_signal(self->url_sem);
}

- (BOOL)validateRedwoodRequestDictionary:(id)dictionary account:(id)account fromID:(id)d error:(id *)error
{
  dictionaryCopy = dictionary;
  accountCopy = account;
  dCopy = d;
  v13 = [dictionaryCopy objectForKeyedSubscript:@"sessionToken"];
  if (v13)
  {
    v14 = v13;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"resourcepath"];

    if (v15)
    {
      v16 = [dictionaryCopy objectForKeyedSubscript:@"appleName"];
      if (v16)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v35 = sub_1000423E0();
          if (v35)
          {
            v36 = sub_100042E68(v35);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v98 = "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]";
              v99 = 1024;
              v100 = 784;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[%s:%d] name specifier is invalid", buf, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 784, "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]", 7, 0, "name specifier is invalid");
          goto LABEL_34;
        }

        if ([v16 length] >= 0xB)
        {
          v17 = sub_1000423E0();
          if (v17)
          {
            v18 = sub_100042E68(v17);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v98 = "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]";
              v99 = 1024;
              v100 = 790;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%s:%d] name length is invalid", buf, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 790, "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]", 7, 0, "name length is invalid");
LABEL_34:
          LOBYTE(v19) = 0;
LABEL_94:

          goto LABEL_95;
        }
      }

      v20 = [dictionaryCopy objectForKeyedSubscript:@"shareType"];
      v21 = v20;
      if (v20 && [v20 length] >= 0x1F)
      {
        v22 = sub_1000423E0();
        if (v22)
        {
          v23 = sub_100042E68(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v98 = "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]";
            v99 = 1024;
            v100 = 801;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%s:%d] shareType length is invalid", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 801, "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]", 7, 0, "shareType length is invalid");
        LOBYTE(v19) = 0;
        goto LABEL_93;
      }

      errorCopy = error;
      v90 = v21;
      v105[0] = @"version";
      v105[1] = @"params";
      v106[0] = @"1.0";
      v103[0] = @"sessionToken";
      v24 = [dictionaryCopy objectForKeyedSubscript:@"sessionToken"];
      v104[0] = v24;
      v103[1] = @"fromID";
      stringWithSchemeTrimmed = [dCopy stringWithSchemeTrimmed];
      v104[1] = stringWithSchemeTrimmed;
      v103[2] = @"toID";
      aliasStrings = [accountCopy aliasStrings];
      v104[2] = aliasStrings;
      v27 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:3];
      v106[1] = v27;
      v28 = [NSDictionary dictionaryWithObjects:v106 forKeys:v105 count:2];
      v91 = v16;
      v29 = [v28 mutableCopy];

      if (v91)
      {
        [v29 setObject:v91 forKeyedSubscript:@"appleName"];
      }

      v21 = v90;
      if (v90)
      {
        [v29 setObject:v90 forKeyedSubscript:@"shareType"];
      }

      v94 = 0;
      v30 = [NSJSONSerialization dataWithJSONObject:v29 options:1 error:&v94];
      v31 = v94;
      v89 = v29;
      if (v31)
      {
        v32 = v31;
        v33 = sub_1000423E0();
        if (v33)
        {
          v34 = sub_100042E68(v33);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v98 = "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]";
            v99 = 1024;
            v100 = 830;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[%s:%d] error on serialization", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 830, "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]", 7, 0, "error on serialization");

        goto LABEL_85;
      }

      v87 = v30;
      v37 = [dictionaryCopy objectForKeyedSubscript:@"timeout"];
      [v37 floatValue];
      if (v38 == 0.0)
      {
        v39 = 60.0;
      }

      else
      {
        v39 = v38;
      }

      v40 = [dictionaryCopy objectForKeyedSubscript:@"isprod"];
      v41 = sub_1000423E0();
      if (v41)
      {
        v42 = sub_100042E68(v41);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          uTF8String = [(__CFString *)v40 UTF8String];
          *buf = 136315650;
          v98 = "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]";
          v99 = 1024;
          v100 = 842;
          v101 = 2080;
          v102 = uTF8String;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[%s:%d] hostIdentifier: %s", buf, 0x1Cu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 842, "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]", 7, 0, "hostIdentifier: %s", [(__CFString *)v40 UTF8String]);
      keyExistsAndHasValidFormat = 0;
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AllowNonProductionServers", @"com.apple.screensharingserver", &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        v45 = AppBooleanValue == 0;
      }

      else
      {
        v45 = 1;
      }

      v46 = !v45;
      v47 = sub_1000423E0();
      if (v47)
      {
        v48 = sub_100042E68(v47);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v98 = "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]";
          v99 = 1024;
          v100 = 846;
          v101 = 1024;
          LODWORD(v102) = v46;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[%s:%d] allowNonProductionServers: %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 846, "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]", 7, 0, "allowNonProductionServers: %d", v46);
      v49 = [NSMutableDictionary dictionaryWithCapacity:12];
      [v49 addEntriesFromDictionary:&off_10006B220];
      if (v46)
      {
        [v49 addEntriesFromDictionary:&off_10006B248];
        [v49 addEntriesFromDictionary:&off_10006B270];
      }

      v50 = [v49 objectForKeyedSubscript:v40];
      [(IDSServiceEmbeddedController *)self setValidationURL:v50];

      validationURL = [(IDSServiceEmbeddedController *)self validationURL];
      v52 = [NSURL URLWithString:validationURL];
      v19 = [dictionaryCopy objectForKeyedSubscript:@"resourcepath"];
      v53 = [v52 URLByAppendingPathComponent:v19];

      v85 = v53;
      v86 = v49;
      if (!v53)
      {
        v95 = NSLocalizedDescriptionKey;
        v62 = &stru_100069830;
        if (v40)
        {
          v62 = v40;
        }

        v63 = [NSString stringWithFormat:@"Bad isprod value:%@", v62];
        v96 = v63;
        v60 = 1;
        v54 = [NSDictionary dictionaryWithObjects:&v96 forKeys:&v95 count:1];

        v32 = [NSError errorWithDomain:@"com.apple.ssinvitationagent" code:-1 userInfo:v54];
        v59 = v87;
LABEL_84:

        v21 = v90;
        if (!v60)
        {
LABEL_92:

          v16 = v91;
LABEL_93:

          goto LABEL_94;
        }

LABEL_85:
        v73 = sub_1000423E0();
        if (v73)
        {
          v74 = sub_100042E68(v73);
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            v75 = [NSString stringWithFormat:@"Redwood Validation Failed: %@", v32];
            uTF8String2 = [v75 UTF8String];
            *buf = 136315650;
            v98 = "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]";
            v99 = 1024;
            v100 = 917;
            v101 = 2080;
            v102 = uTF8String2;
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "[%s:%d] %s", buf, 0x1Cu);
          }
        }

        v77 = [NSString stringWithFormat:@"Redwood Validation Failed: %@", v32];
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 917, "-[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]", 7, 0, "%s", [v77 UTF8String]);

        if (errorCopy)
        {
          v78 = v32;
          *errorCopy = v32;
        }

        [(IDSServiceEmbeddedController *)self setUrlResponseData:0];
        [(IDSServiceEmbeddedController *)self setValidationURL:0];
        [(IDSServiceEmbeddedController *)self setUrlResponseData:0];
        LOBYTE(v19) = 0;
        goto LABEL_92;
      }

      [(IDSServiceEmbeddedController *)self setUrlResponseData:0];
      v54 = [NSMutableURLRequest requestWithURL:v53 cachePolicy:1 timeoutInterval:v39];
      [v54 setHTTPBody:v87];
      [v54 setValue:@"application/json" forHTTPHeaderField:@"content-type"];
      [v54 setValue:@"SafeView/1.0 (Macintosh; Intel Mac OS X 10_10)" forHTTPHeaderField:@"User-Agent"];
      [v54 setHTTPMethod:@"POST"];
      v83 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
      v82 = [NSURLSession sessionWithConfiguration:"sessionWithConfiguration:delegate:delegateQueue:" delegate:? delegateQueue:?];
      v55 = [v82 dataTaskWithRequest:v54];
      [v55 resume];

      url_sem = self->url_sem;
      v57 = dispatch_time(0, 60000000000);
      v84 = v40;
      if (dispatch_semaphore_wait(url_sem, v57))
      {
        v58 = sub_1000423E0();
        v59 = v87;
        if (v58)
        {
          v19 = sub_100042E68(v58);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v98 = "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]";
            v99 = 1024;
            v100 = 892;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[%s:%d] no response from validation server", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 892, "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]", 3, 0, "no response from validation server");
      }

      else
      {
        urlResponseData = [(IDSServiceEmbeddedController *)self urlResponseData];

        if (urlResponseData)
        {
          urlResponseData2 = [(IDSServiceEmbeddedController *)self urlResponseData];
          v92 = 0;
          v66 = [NSJSONSerialization JSONObjectWithData:urlResponseData2 options:0 error:&v92];
          v32 = v92;

          v60 = v32 != 0;
          v67 = sub_1000423E0();
          v81 = v66;
          if (v32)
          {
            v59 = v87;
            v61 = v82;
            if (v67)
            {
              v19 = sub_100042E68(v67);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v98 = "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]";
                v99 = 1024;
                v100 = 905;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%s:%d] got error in serialization", buf, 0x12u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 905, "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]", 7, 0, "got error in serialization");
            v68 = v81;
          }

          else
          {
            v61 = v82;
            if (v67)
            {
              v70 = sub_100042E68(v67);
              if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
              {
                v80 = [v66 objectForKeyedSubscript:@"isAppleCare"];
                bOOLValue = [v80 BOOLValue];
                *buf = 136315650;
                v98 = "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]";
                v99 = 1024;
                v100 = 909;
                v101 = 1024;
                LODWORD(v102) = bOOLValue;
                _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "[%s:%d] going to return %d", buf, 0x18u);
              }
            }

            v19 = [v66 objectForKeyedSubscript:@"isAppleCare"];
            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 909, "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]", 7, 0, "going to return %d", [v19 BOOLValue]);

            [(IDSServiceEmbeddedController *)self setValidationURL:0];
            [(IDSServiceEmbeddedController *)self setUrlResponseData:0];
            [v82 invalidateAndCancel];
            v72 = [v66 objectForKeyedSubscript:@"isAppleCare"];
            LOBYTE(v19) = [v72 BOOLValue];

            v68 = v81;
            v59 = v87;
          }

          goto LABEL_83;
        }

        v69 = sub_1000423E0();
        v59 = v87;
        if (v69)
        {
          v19 = sub_100042E68(v69);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v98 = "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]";
            v99 = 1024;
            v100 = 898;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[%s:%d] no data from validation server", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 898, "[IDSServiceEmbeddedController validateRedwoodRequestDictionary:account:fromID:error:]", 3, 0, "no data from validation server");
      }

      v32 = 0;
      v60 = 1;
      v61 = v82;
LABEL_83:

      v40 = v84;
      goto LABEL_84;
    }
  }

  LOBYTE(v19) = 0;
LABEL_95:

  return v19 & 1;
}

- (id)datagramConnectionFromIDS:(id)s
{
  sCopy = s;
  idsService = [(IDSServiceEmbeddedController *)self idsService];
  v15 = 0;
  v6 = [idsService datagramConnectionForSessionDestination:sCopy error:&v15];

  v7 = v15;
  if (v7)
  {
    v8 = sub_1000423E0();
    if (v8)
    {
      v9 = sub_100042E68(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v7 description];
        uTF8String = [v10 UTF8String];
        *buf = 136315650;
        v17 = "[IDSServiceEmbeddedController datagramConnectionFromIDS:]";
        v18 = 1024;
        v19 = 935;
        v20 = 2080;
        v21 = uTF8String;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%s:%d] NWDatagramConnection error: %s", buf, 0x1Cu);
      }
    }

    v12 = [v7 description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 935, "-[IDSServiceEmbeddedController datagramConnectionFromIDS:]", 3, 0, "NWDatagramConnection error: %s", [v12 UTF8String]);

    v13 = 0;
  }

  else
  {
    v13 = v6;
  }

  return v13;
}

- (void)addActiveSession:(id)session
{
  sessionCopy = session;
  v5 = sub_1000423E0();
  if (v5)
  {
    v6 = sub_100042E68(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "[IDSServiceEmbeddedController addActiveSession:]";
      v17 = 1024;
      v18 = 944;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] Add Active Session", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 944, "[IDSServiceEmbeddedController addActiveSession:]", 7, 0, "Add Active Session");
  [(IDSServiceEmbeddedController *)self closeAllSessions];
  v7 = sub_1000423E0();
  if (v7)
  {
    v8 = sub_100042E68(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v16 = "[IDSServiceEmbeddedController addActiveSession:]";
      v17 = 1024;
      v18 = 955;
      v19 = 2048;
      v20 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] add active session %p", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 955, "[IDSServiceEmbeddedController addActiveSession:]", 7, 0, "add active session %p", sessionCopy);
  activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
  uniqueID = [sessionCopy uniqueID];
  [activeSessions setObject:sessionCopy forKeyedSubscript:uniqueID];

  [(IDSServiceEmbeddedController *)self setPendingSession:0];
  wallpaperSuspensionAssertion = [(IDSServiceEmbeddedController *)self wallpaperSuspensionAssertion];

  if (!wallpaperSuspensionAssertion)
  {
    SBSAcquireWallpaperAnimationSuspensionAssertion();
  }

  if ([sessionCopy inviterKind] == 2 || objc_msgSend(sessionCopy, "inviterKind") == 3)
  {
    sanitizedFromID = [(IDSServiceEmbeddedController *)self sanitizedFromID];
    sessionID = [sessionCopy sessionID];
    idsService = [(IDSServiceEmbeddedController *)self idsService];
    [(IDSServiceEmbeddedController *)self sendMessageStartScreenSend:sanitizedFromID sessionID:sessionID service:idsService];
  }
}

- (void)removeSession:(id)session andEndIDSSession:(BOOL)sSession
{
  sSessionCopy = sSession;
  sessionCopy = session;
  v7 = sub_1000423E0();
  if (v7)
  {
    v8 = sub_100042E68(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v13 = "[IDSServiceEmbeddedController removeSession:andEndIDSSession:]";
      v14 = 1024;
      v15 = 979;
      v16 = 1024;
      v17 = sSessionCopy;
      v18 = 2048;
      v19 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] removeSession: shouldEndIDSSession:%d for session %p", buf, 0x22u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 979, "[IDSServiceEmbeddedController removeSession:andEndIDSSession:]", 7, 0, "removeSession: shouldEndIDSSession:%d for session %p", sSessionCopy, sessionCopy);
  sub_1000430F0(0, 0, 0.0, 0.0);
  if ([(IDSServiceEmbeddedController *)self viewServicePID]!= -1)
  {
    kill([(IDSServiceEmbeddedController *)self viewServicePID], 15);
    [(IDSServiceEmbeddedController *)self setViewServicePID:0xFFFFFFFFLL];
  }

  if (sessionCopy)
  {
    pendingSession = [(IDSServiceEmbeddedController *)self pendingSession];

    if (pendingSession == sessionCopy)
    {
      [(IDSServiceEmbeddedController *)self setPendingSession:0];
    }

    [(IDSServiceEmbeddedController *)self setIsShareSettings:0];
    [(IDSServiceEmbeddedController *)self setSessionPaused:0];
    if (sSessionCopy)
    {
      [sessionCopy doEndSession];
    }

    activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
    uniqueID = [sessionCopy uniqueID];
    [activeSessions removeObjectForKey:uniqueID];

    [(IDSServiceEmbeddedController *)self checkIfNoSessions];
  }
}

- (void)closeAllSessions
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "[IDSServiceEmbeddedController closeAllSessions]";
      v18 = 1024;
      v19 = 1014;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] closeAllSessions", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1014, "[IDSServiceEmbeddedController closeAllSessions]", 7, 0, "closeAllSessions");
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
  allValues = [activeSessions allValues];

  v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        [(IDSServiceEmbeddedController *)self removeSession:*(*(&v11 + 1) + 8 * v10) andEndIDSSession:1];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)exitTimerCallback:(id)callback
{
  callbackCopy = callback;
  v5 = sub_1000423E0();
  if (v5)
  {
    v6 = sub_100042E68(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[IDSServiceEmbeddedController exitTimerCallback:]";
      v14 = 1024;
      v15 = 1022;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] exit timer called", &v12, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1022, "[IDSServiceEmbeddedController exitTimerCallback:]", 7, 0, "exit timer called");
  pendingSession = [(IDSServiceEmbeddedController *)self pendingSession];
  if (pendingSession)
  {
  }

  else
  {
    activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
    v9 = [activeSessions count];

    if (!v9)
    {
      v10 = sub_1000423E0();
      if (v10)
      {
        v11 = sub_100042E68(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315394;
          v13 = "[IDSServiceEmbeddedController exitTimerCallback:]";
          v14 = 1024;
          v15 = 1025;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] exiting", &v12, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1025, "[IDSServiceEmbeddedController exitTimerCallback:]", 7, 0, "exiting");
      exit(0);
    }
  }

  [(IDSServiceEmbeddedController *)self setExitTimer:0];
}

- (void)checkIfNoSessions
{
  pendingSession = [(IDSServiceEmbeddedController *)self pendingSession];
  if (pendingSession)
  {

LABEL_4:
    v6 = sub_1000423E0();
    if (v6)
    {
      v7 = sub_100042E68(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v21 = "[IDSServiceEmbeddedController checkIfNoSessions]";
        v22 = 1024;
        v23 = 1083;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] There are active sessions", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1083, "[IDSServiceEmbeddedController checkIfNoSessions]", 7, 0, "There are active sessions");
    return;
  }

  activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
  v5 = [activeSessions count];

  if (v5)
  {
    goto LABEL_4;
  }

  v8 = sub_1000423E0();
  if (v8)
  {
    v9 = sub_100042E68(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = "[IDSServiceEmbeddedController checkIfNoSessions]";
      v22 = 1024;
      v23 = 1037;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] no active or pending sessions", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1037, "[IDSServiceEmbeddedController checkIfNoSessions]", 7, 0, "no active or pending sessions");
  doubleHeightStatusBarAssertion = self->_doubleHeightStatusBarAssertion;
  if (doubleHeightStatusBarAssertion)
  {
    [(SBSStatusBarStyleOverridesAssertion *)doubleHeightStatusBarAssertion invalidate];
    [(IDSServiceEmbeddedController *)self setDoubleHeightStatusBarAssertion:0];
    v11 = sub_1000423E0();
    if (v11)
    {
      v12 = sub_100042E68(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v21 = "[IDSServiceEmbeddedController checkIfNoSessions]";
        v22 = 1024;
        v23 = 1053;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] released status bar assertion", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1053, "[IDSServiceEmbeddedController checkIfNoSessions]", 7, 0, "released status bar assertion");
  }

  wallpaperSuspensionAssertion = [(IDSServiceEmbeddedController *)self wallpaperSuspensionAssertion];

  if (wallpaperSuspensionAssertion)
  {
    wallpaperSuspensionAssertion2 = [(IDSServiceEmbeddedController *)self wallpaperSuspensionAssertion];
    [wallpaperSuspensionAssertion2 invalidate];

    [(IDSServiceEmbeddedController *)self setWallpaperSuspensionAssertion:0];
  }

  _os_nospin_lock_lock();
  osTransaction = [(IDSServiceEmbeddedController *)self osTransaction];

  if (osTransaction)
  {
    [(IDSServiceEmbeddedController *)self setOsTransaction:0];
  }

  _os_nospin_lock_unlock();
  exitTimer = [(IDSServiceEmbeddedController *)self exitTimer];

  if (exitTimer)
  {
    v17 = sub_1000423E0();
    if (v17)
    {
      v18 = sub_100042E68(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v21 = "[IDSServiceEmbeddedController checkIfNoSessions]";
        v22 = 1024;
        v23 = 1080;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%s:%d] exit timer already exists", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1080, "[IDSServiceEmbeddedController checkIfNoSessions]", 7, 0, "exit timer already exists");
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100016CDC;
    block[3] = &unk_100068CB0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (id)activeViewerStatusString
{
  activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
  allValues = [activeSessions allValues];
  lastObject = [allValues lastObject];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"kSSViewingScreen" value:&stru_100069830 table:0];
  inviterFullName = [lastObject inviterFullName];
  v8 = [NSString stringWithFormat:v6, inviterFullName];

  return v8;
}

- (void)createStatusBar
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[IDSServiceEmbeddedController createStatusBar]";
      v11 = 1024;
      v12 = 1097;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] createStatusBar", &v9, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1097, "[IDSServiceEmbeddedController createStatusBar]", 7, 0, "createStatusBar");
  if (self->_doubleHeightStatusBarAssertion)
  {
    v5 = sub_1000423E0();
    if (v5)
    {
      v6 = sub_100042E68(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315394;
        v10 = "[IDSServiceEmbeddedController createStatusBar]";
        v11 = 1024;
        v12 = 1135;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] already have menu bar assertion", &v9, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1135, "[IDSServiceEmbeddedController createStatusBar]", 7, 0, "already have menu bar assertion");
  }

  else
  {
    activeViewerStatusString = [(IDSServiceEmbeddedController *)self activeViewerStatusString];
    v8 = [[SBSStatusBarStyleOverridesAssertion alloc] initWithStatusBarStyleOverrides:0x4000 forPID:getpid() exclusive:1 showsWhenForeground:0];
    [(IDSServiceEmbeddedController *)self setDoubleHeightStatusBarAssertion:v8];

    [(SBSStatusBarStyleOverridesAssertion *)self->_doubleHeightStatusBarAssertion setStatusString:activeViewerStatusString];
    [(SBSStatusBarStyleOverridesAssertion *)self->_doubleHeightStatusBarAssertion acquireWithHandler:&stru_100068E08 invalidationHandler:&stru_100068E28];
  }
}

- (void)createLockScreenNotifier
{
  if (![(IDSServiceEmbeddedController *)self lockScreenObserverActive])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_10001737C, @"com.apple.mobile.keybagd.lock_status", 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    [(IDSServiceEmbeddedController *)self setLockScreenObserverActive:1];
  }
}

- (void)sendLockScreenChangeMessageToAllSessions:(BOOL)sessions
{
  sessionsCopy = sessions;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
  allValues = [activeSessions allValues];

  v6 = [allValues countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v16;
    *&v7 = 136315394;
    v14 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = sub_1000423E0();
        if (v12)
        {
          v13 = sub_100042E68(v12);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v14;
            v20 = "[IDSServiceEmbeddedController sendLockScreenChangeMessageToAllSessions:]";
            v21 = 1024;
            v22 = 1155;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%s:%d] send screen lock change message", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1155, "[IDSServiceEmbeddedController sendLockScreenChangeMessageToAllSessions:]", 7, 0, "send screen lock change message", v14);
        [v11 sendScreenLockChangeMessage:sessionsCopy];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v8);
  }
}

- (void)askToCopyToPasteboard:(id)pasteboard senderToken:(unsigned int)token message:(id)message
{
  v5 = *&token;
  messageCopy = message;
  [(IDSServiceEmbeddedController *)self setAskToCopyToPasteboardDelegate:pasteboard];
  [(IDSServiceEmbeddedController *)self setAskToCopyToPasteboardToken:v5];
  if ([messageCopy length] > 0xC7)
  {
    v8 = 200;
  }

  else
  {
    v8 = [messageCopy length];
  }

  v9 = [messageCopy rangeOfComposedCharacterSequencesForRange:{0, v8}];
  v11 = [messageCopy substringWithRange:{v9, v10}];
  [(IDSServiceEmbeddedController *)self setAskToCopyToPasteboardUserMessage:v11];
  [(IDSServiceEmbeddedController *)self postAskToCopyToPasteboardNotification];
}

- (void)postAskToCopyToPasteboardNotification
{
  error = 0;
  activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
  allValues = [activeSessions allValues];
  lastObject = [allValues lastObject];

  v6 = sub_1000423E0();
  if (v6)
  {
    v7 = sub_100042E68(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v35 = "[IDSServiceEmbeddedController postAskToCopyToPasteboardNotification]";
      v36 = 1024;
      v37 = 1182;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] postAskToCopyToPasteboardNotification", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1182, "[IDSServiceEmbeddedController postAskToCopyToPasteboardNotification]", 7, 0, "postAskToCopyToPasteboardNotification");
  if ([(IDSServiceEmbeddedController *)self askToCopyToPasteboardNotification])
  {
    v8 = sub_1000423E0();
    if (v8)
    {
      v9 = sub_100042E68(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v35 = "[IDSServiceEmbeddedController postAskToCopyToPasteboardNotification]";
        v36 = 1024;
        v37 = 1186;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification active - ignore request", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1186, "[IDSServiceEmbeddedController postAskToCopyToPasteboardNotification]", 7, 0, "notification active - ignore request");
  }

  else
  {
    [(IDSServiceEmbeddedController *)self setAskToCopyToPasteboardTimedOut:0];
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    [lastObject addNotificationIconTo:Mutable];
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"kSSAddToClipboardMessage" value:&stru_100069830 table:0];
    inviterFullName = [lastObject inviterFullName];
    v14 = [NSString stringWithFormat:v12, inviterFullName];

    if (v14)
    {
      askToCopyToPasteboardUserMessage = [(IDSServiceEmbeddedController *)self askToCopyToPasteboardUserMessage];

      CFDictionaryAddValue(Mutable, kCFUserNotificationAlertHeaderKey, v14);
      CFDictionaryAddValue(Mutable, kCFUserNotificationAlertMessageKey, askToCopyToPasteboardUserMessage);
      CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertMessageKey, v14);
    }

    inviterFullName2 = [lastObject inviterFullName];

    if (inviterFullName2)
    {
      CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertHeaderKey, inviterFullName2);
    }

    MainBundle = CFBundleGetMainBundle();
    v18 = CFBundleCopyLocalizedString(MainBundle, @"kSSCancel", @"kSSCancel", 0);
    if (v18)
    {
      v19 = v18;
      CFDictionaryAddValue(Mutable, kCFUserNotificationAlternateButtonTitleKey, v18);
      CFRelease(v19);
    }

    v20 = CFBundleGetMainBundle();
    v21 = CFBundleCopyLocalizedString(v20, @"kSSCopy", @"kSSCopy", 0);
    if (v21)
    {
      v22 = v21;
      CFDictionaryAddValue(Mutable, kCFUserNotificationOtherButtonTitleKey, v21);
      CFRelease(v22);
    }

    CFDictionaryAddValue(Mutable, kCFUserNotificationAlertTopMostKey, kCFBooleanTrue);
    [(IDSServiceEmbeddedController *)self setAskToCopyToPasteboardNotification:CFUserNotificationCreate(0, 0.0, 0x23uLL, &error, Mutable)];
    CFRelease(Mutable);
    askToCopyToPasteboardNotification = [(IDSServiceEmbeddedController *)self askToCopyToPasteboardNotification];
    v24 = sub_1000423E0();
    if (askToCopyToPasteboardNotification)
    {
      if (v24)
      {
        v25 = sub_100042E68(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v35 = "[IDSServiceEmbeddedController postAskToCopyToPasteboardNotification]";
          v36 = 1024;
          v37 = 1236;
          v38 = 1024;
          v39 = error;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%s:%d] got error %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1236, "[IDSServiceEmbeddedController postAskToCopyToPasteboardNotification]", 7, 0, "got error %d", error);
      RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, [(IDSServiceEmbeddedController *)self askToCopyToPasteboardNotification], sub_100017FB0, 0);
      if (RunLoopSource)
      {
        v27 = RunLoopSource;
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, v27, kCFRunLoopDefaultMode);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100018754;
        block[3] = &unk_100068CB0;
        block[4] = self;
        dispatch_async(&_dispatch_main_q, block);
        CFRelease(v27);
      }

      else
      {
        v30 = sub_1000423E0();
        if (v30)
        {
          v31 = sub_100042E68(v30);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v35 = "[IDSServiceEmbeddedController postAskToCopyToPasteboardNotification]";
            v36 = 1024;
            v37 = 1241;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%s:%d] Failed to create run loop source for notification", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1241, "[IDSServiceEmbeddedController postAskToCopyToPasteboardNotification]", 7, 0, "Failed to create run loop source for notification");
        CFRelease([(IDSServiceEmbeddedController *)self askToCopyToPasteboardNotification]);
        [(IDSServiceEmbeddedController *)self setAskToCopyToPasteboardNotification:0];
      }
    }

    else
    {
      if (v24)
      {
        v29 = sub_100042E68(v24);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v35 = "[IDSServiceEmbeddedController postAskToCopyToPasteboardNotification]";
          v36 = 1024;
          v37 = 1233;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%s:%d] failed to create notification", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1233, "[IDSServiceEmbeddedController postAskToCopyToPasteboardNotification]", 7, 0, "failed to create notification");
    }
  }
}

- (void)askToToCopyToPasteboardTimeout:(id)timeout
{
  v4 = sub_1000423E0();
  if (v4)
  {
    v5 = sub_100042E68(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[IDSServiceEmbeddedController askToToCopyToPasteboardTimeout:]";
      v8 = 1024;
      v9 = 1317;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] askToToCopyToPasteboardTimeout", &v6, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1317, "[IDSServiceEmbeddedController askToToCopyToPasteboardTimeout:]", 7, 0, "askToToCopyToPasteboardTimeout");
  [(IDSServiceEmbeddedController *)self removeAskToCopyToPasteboardNotification];
}

- (void)removeAskToCopyToPasteboardNotification
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = "[IDSServiceEmbeddedController removeAskToCopyToPasteboardNotification]";
      v15 = 1024;
      v16 = 1323;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] remove notification called", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1323, "[IDSServiceEmbeddedController removeAskToCopyToPasteboardNotification]", 7, 0, "remove notification called");
  if ([(IDSServiceEmbeddedController *)self askToCopyToPasteboardNotification])
  {
    [(IDSServiceEmbeddedController *)self setAskToCopyToPasteboardTimedOut:1];
    v5 = CFUserNotificationCancel([(IDSServiceEmbeddedController *)self askToCopyToPasteboardNotification]);
    if (v5)
    {
      v6 = v5;
      v7 = sub_1000423E0();
      if (v7)
      {
        v8 = sub_100042E68(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v14 = "[IDSServiceEmbeddedController removeAskToCopyToPasteboardNotification]";
          v15 = 1024;
          v16 = 1329;
          v17 = 1024;
          v18 = v6;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] cancel err = %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1329, "[IDSServiceEmbeddedController removeAskToCopyToPasteboardNotification]", 7, 0, "cancel err = %d", v6);
    }

    askToCopyToPasteboardTimeoutTimer = [(IDSServiceEmbeddedController *)self askToCopyToPasteboardTimeoutTimer];

    if (askToCopyToPasteboardTimeoutTimer)
    {
      askToCopyToPasteboardTimeoutTimer2 = [(IDSServiceEmbeddedController *)self askToCopyToPasteboardTimeoutTimer];
      [askToCopyToPasteboardTimeoutTimer2 invalidate];

      [(IDSServiceEmbeddedController *)self setAskToCopyToPasteboardTimeoutTimer:0];
    }
  }

  else
  {
    v11 = sub_1000423E0();
    if (v11)
    {
      v12 = sub_100042E68(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v14 = "[IDSServiceEmbeddedController removeAskToCopyToPasteboardNotification]";
        v15 = 1024;
        v16 = 1337;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] no notification", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1337, "[IDSServiceEmbeddedController removeAskToCopyToPasteboardNotification]", 7, 0, "no notification");
  }
}

- (void)askToOpenURL:(id)l senderToken:(unsigned int)token URL:(id)rL sessionController:(id)controller
{
  v7 = *&token;
  lCopy = l;
  rLCopy = rL;
  if ([rLCopy length] > 0xC7)
  {
    v11 = 200;
  }

  else
  {
    v11 = [rLCopy length];
  }

  v12 = [rLCopy rangeOfComposedCharacterSequencesForRange:{0, v11}];
  v14 = [rLCopy substringWithRange:{v12, v13}];
  v15 = sub_1000423E0();
  if (v15)
  {
    v16 = sub_100042E68(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v24 = "[IDSServiceEmbeddedController askToOpenURL:senderToken:URL:sessionController:]";
      v25 = 1024;
      v26 = 1347;
      v27 = 2080;
      uTF8String = [v14 UTF8String];
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%s:%d] newURL = %s", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1347, "-[IDSServiceEmbeddedController askToOpenURL:senderToken:URL:sessionController:]", 7, 0, "newURL = %s", [v14 UTF8String]);
  v17 = [NSURL URLWithString:v14];
  scheme = [v17 scheme];
  if ([scheme isEqualToString:@"http"])
  {

LABEL_11:
    [(IDSServiceEmbeddedController *)self setUrlToOpen:v14];
    [(IDSServiceEmbeddedController *)self setAskToOpenURLDelegate:lCopy];
    [(IDSServiceEmbeddedController *)self setAskToOpenURLToken:v7];
    [(IDSServiceEmbeddedController *)self postAskToOpenURLNotification];
    goto LABEL_17;
  }

  scheme2 = [v17 scheme];
  v20 = [scheme2 isEqualToString:@"https"];

  if (v20)
  {
    goto LABEL_11;
  }

  v21 = sub_1000423E0();
  if (v21)
  {
    v22 = sub_100042E68(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[IDSServiceEmbeddedController askToOpenURL:senderToken:URL:sessionController:]";
      v25 = 1024;
      v26 = 1360;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[%s:%d] URL not  http or https - ignoring", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1360, "[IDSServiceEmbeddedController askToOpenURL:senderToken:URL:sessionController:]", 3, 0, "URL not  http or https - ignoring");
LABEL_17:
}

- (void)postAskToOpenURLNotification
{
  error = 0;
  activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
  allValues = [activeSessions allValues];
  lastObject = [allValues lastObject];

  v6 = sub_1000423E0();
  if (v6)
  {
    v7 = sub_100042E68(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v35 = "[IDSServiceEmbeddedController postAskToOpenURLNotification]";
      v36 = 1024;
      v37 = 1373;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] postAskToOpenURLNotification", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1373, "[IDSServiceEmbeddedController postAskToOpenURLNotification]", 7, 0, "postAskToOpenURLNotification");
  if ([(IDSServiceEmbeddedController *)self askToOpenURLNotification])
  {
    v8 = sub_1000423E0();
    if (v8)
    {
      v9 = sub_100042E68(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v35 = "[IDSServiceEmbeddedController postAskToOpenURLNotification]";
        v36 = 1024;
        v37 = 1377;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification active - ignore request", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1377, "[IDSServiceEmbeddedController postAskToOpenURLNotification]", 7, 0, "notification active - ignore request");
  }

  else
  {
    [(IDSServiceEmbeddedController *)self setAskToOpenURLTimedOut:0];
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    [lastObject addNotificationIconTo:Mutable];
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"kSSOpenURLMessage" value:&stru_100069830 table:0];
    inviterFullName = [lastObject inviterFullName];
    v14 = [NSString stringWithFormat:v12, inviterFullName];

    if (v14)
    {
      urlToOpen = [(IDSServiceEmbeddedController *)self urlToOpen];

      CFDictionaryAddValue(Mutable, kCFUserNotificationAlertHeaderKey, v14);
      CFDictionaryAddValue(Mutable, kCFUserNotificationAlertMessageKey, urlToOpen);
      CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertMessageKey, v14);
    }

    inviterFullName2 = [lastObject inviterFullName];

    if (inviterFullName2)
    {
      CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertHeaderKey, inviterFullName2);
    }

    MainBundle = CFBundleGetMainBundle();
    v18 = CFBundleCopyLocalizedString(MainBundle, @"kSSCancel", @"kSSCancel", 0);
    if (v18)
    {
      v19 = v18;
      CFDictionaryAddValue(Mutable, kCFUserNotificationAlternateButtonTitleKey, v18);
      CFRelease(v19);
    }

    v20 = CFBundleGetMainBundle();
    v21 = CFBundleCopyLocalizedString(v20, @"kSSOpen", @"kSSOpen", 0);
    if (v21)
    {
      v22 = v21;
      CFDictionaryAddValue(Mutable, kCFUserNotificationOtherButtonTitleKey, v21);
      CFRelease(v22);
    }

    CFDictionaryAddValue(Mutable, kCFUserNotificationAlertTopMostKey, kCFBooleanTrue);
    [(IDSServiceEmbeddedController *)self setAskToOpenURLNotification:CFUserNotificationCreate(0, 0.0, 0x23uLL, &error, Mutable)];
    CFRelease(Mutable);
    if ([(IDSServiceEmbeddedController *)self askToOpenURLNotification])
    {
      if (error)
      {
        v23 = sub_1000423E0();
        if (v23)
        {
          v24 = sub_100042E68(v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v35 = "[IDSServiceEmbeddedController postAskToOpenURLNotification]";
            v36 = 1024;
            v37 = 1428;
            v38 = 1024;
            v39 = error;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%s:%d] got error %d", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1428, "[IDSServiceEmbeddedController postAskToOpenURLNotification]", 7, 0, "got error %d", error);
      }

      RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, [(IDSServiceEmbeddedController *)self askToOpenURLNotification], sub_100019584, 0);
      if (RunLoopSource)
      {
        v26 = RunLoopSource;
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, v26, kCFRunLoopDefaultMode);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100019E1C;
        block[3] = &unk_100068CB0;
        block[4] = self;
        dispatch_async(&_dispatch_main_q, block);
        CFRelease(v26);
      }

      else
      {
        v30 = sub_1000423E0();
        if (v30)
        {
          v31 = sub_100042E68(v30);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v35 = "[IDSServiceEmbeddedController postAskToOpenURLNotification]";
            v36 = 1024;
            v37 = 1433;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%s:%d] Failed to create run loop source for notification", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1433, "[IDSServiceEmbeddedController postAskToOpenURLNotification]", 7, 0, "Failed to create run loop source for notification");
        CFRelease([(IDSServiceEmbeddedController *)self askToOpenURLNotification]);
        [(IDSServiceEmbeddedController *)self setAskToOpenURLNotification:0];
      }
    }

    else
    {
      v28 = sub_1000423E0();
      if (v28)
      {
        v29 = sub_100042E68(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v35 = "[IDSServiceEmbeddedController postAskToOpenURLNotification]";
          v36 = 1024;
          v37 = 1424;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%s:%d] failed to create notification", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1424, "[IDSServiceEmbeddedController postAskToOpenURLNotification]", 7, 0, "failed to create notification");
    }
  }
}

- (void)askToOpenURLTimeout:(id)timeout
{
  v4 = sub_1000423E0();
  if (v4)
  {
    v5 = sub_100042E68(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[IDSServiceEmbeddedController askToOpenURLTimeout:]";
      v8 = 1024;
      v9 = 1508;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] ask to open URL timed out", &v6, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1508, "[IDSServiceEmbeddedController askToOpenURLTimeout:]", 7, 0, "ask to open URL timed out");
  [(IDSServiceEmbeddedController *)self removeAskToOpenURLNotification];
}

- (void)removeAskToOpenURLNotification
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = "[IDSServiceEmbeddedController removeAskToOpenURLNotification]";
      v15 = 1024;
      v16 = 1515;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] remove notification called", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1515, "[IDSServiceEmbeddedController removeAskToOpenURLNotification]", 7, 0, "remove notification called");
  if ([(IDSServiceEmbeddedController *)self askToOpenURLNotification])
  {
    [(IDSServiceEmbeddedController *)self setAskToOpenURLTimedOut:1];
    v5 = CFUserNotificationCancel([(IDSServiceEmbeddedController *)self askToOpenURLNotification]);
    if (v5)
    {
      v6 = v5;
      v7 = sub_1000423E0();
      if (v7)
      {
        v8 = sub_100042E68(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v14 = "[IDSServiceEmbeddedController removeAskToOpenURLNotification]";
          v15 = 1024;
          v16 = 1521;
          v17 = 1024;
          v18 = v6;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] cancel err = %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1521, "[IDSServiceEmbeddedController removeAskToOpenURLNotification]", 7, 0, "cancel err = %d", v6);
    }

    askToOpenURLTimeoutTimer = [(IDSServiceEmbeddedController *)self askToOpenURLTimeoutTimer];

    if (askToOpenURLTimeoutTimer)
    {
      askToOpenURLTimeoutTimer2 = [(IDSServiceEmbeddedController *)self askToOpenURLTimeoutTimer];
      [askToOpenURLTimeoutTimer2 invalidate];

      [(IDSServiceEmbeddedController *)self setAskToOpenURLTimeoutTimer:0];
    }
  }

  else
  {
    v11 = sub_1000423E0();
    if (v11)
    {
      v12 = sub_100042E68(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v14 = "[IDSServiceEmbeddedController removeAskToOpenURLNotification]";
        v15 = 1024;
        v16 = 1529;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] no notification", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1529, "[IDSServiceEmbeddedController removeAskToOpenURLNotification]", 7, 0, "no notification");
  }
}

- (void)postAskToResumeNotification:(id)notification senderToken:(unsigned int)token
{
  v4 = *&token;
  [(IDSServiceEmbeddedController *)self setAskToResumeDelegate:notification];
  [(IDSServiceEmbeddedController *)self setAskToResumeToken:v4];

  [(IDSServiceEmbeddedController *)self postAskToResumeNotification];
}

- (void)postAskToResumeNotification
{
  error = 0;
  activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
  allValues = [activeSessions allValues];
  lastObject = [allValues lastObject];

  if ([(IDSServiceEmbeddedController *)self sessionPaused])
  {
    askToResumeNotification = [(IDSServiceEmbeddedController *)self askToResumeNotification];
    v7 = sub_1000423E0();
    if (askToResumeNotification)
    {
      if (v7)
      {
        v8 = sub_100042E68(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v42 = "[IDSServiceEmbeddedController postAskToResumeNotification]";
          v43 = 1024;
          v44 = 1556;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification active - ignore request", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1556, "[IDSServiceEmbeddedController postAskToResumeNotification]", 7, 0, "notification active - ignore request");
    }

    else
    {
      if (v7)
      {
        v11 = sub_100042E68(v7);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v42 = "[IDSServiceEmbeddedController postAskToResumeNotification]";
          v43 = 1024;
          v44 = 1559;
          v45 = 2048;
          askToResumeNotification2 = [(IDSServiceEmbeddedController *)self askToResumeNotification];
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] self.askToResumeNotification  %p", buf, 0x1Cu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1559, "[IDSServiceEmbeddedController postAskToResumeNotification]", 7, 0, "self.askToResumeNotification  %p", [(IDSServiceEmbeddedController *)self askToResumeNotification]);
      [qword_100070A78 setAskToResumeTimedOut:0];
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      [lastObject addNotificationIconTo:Mutable];
      v13 = +[NSBundle mainBundle];
      v14 = [v13 localizedStringForKey:@"kSSAskToResume" value:&stru_100069830 table:0];
      inviterFullName = [lastObject inviterFullName];
      v16 = [NSString stringWithFormat:v14, inviterFullName];

      if (v16)
      {
        CFDictionaryAddValue(Mutable, kCFUserNotificationAlertHeaderKey, v16);
      }

      inviterFullName2 = [lastObject inviterFullName];

      if (inviterFullName2)
      {
        CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertHeaderKey, inviterFullName2);
      }

      MainBundle = CFBundleGetMainBundle();
      v19 = CFBundleCopyLocalizedString(MainBundle, @"KSSAskToResumeMessageLockScreen", @"KSSAskToResumeMessageLockScreen", 0);
      if (v19)
      {
        v20 = v19;
        CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertMessageKey, v19);
        CFRelease(v20);
      }

      v21 = CFBundleGetMainBundle();
      v22 = CFBundleCopyLocalizedString(v21, @"kSSDecline", @"kSSDecline", 0);
      if (v22)
      {
        v23 = v22;
        CFDictionaryAddValue(Mutable, kCFUserNotificationAlternateButtonTitleKey, v22);
        CFRelease(v23);
      }

      v24 = CFBundleGetMainBundle();
      v25 = CFBundleCopyLocalizedString(v24, @"kSSResume", @"kSSResume", 0);
      if (v25)
      {
        v26 = v25;
        CFDictionaryAddValue(Mutable, kCFUserNotificationOtherButtonTitleKey, v25);
        CFRelease(v26);
      }

      else
      {
        v27 = sub_1000423E0();
        if (v27)
        {
          v28 = sub_100042E68(v27);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v42 = "[IDSServiceEmbeddedController postAskToResumeNotification]";
            v43 = 1024;
            v44 = 1601;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%s:%d] did not get string2", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1601, "[IDSServiceEmbeddedController postAskToResumeNotification]", 7, 0, "did not get string2");
      }

      CFDictionaryAddValue(Mutable, kCFUserNotificationAlertTopMostKey, kCFBooleanTrue);
      if ([(IDSServiceEmbeddedController *)self showViewerPausedNotification])
      {
        [(IDSServiceEmbeddedController *)self removeViewerPausedNotification];
      }

      [(IDSServiceEmbeddedController *)self setAskToResumeNotification:CFUserNotificationCreate(0, 0.0, 0x23uLL, &error, Mutable)];
      CFRelease(Mutable);
      askToResumeNotification3 = [(IDSServiceEmbeddedController *)self askToResumeNotification];
      v30 = sub_1000423E0();
      if (askToResumeNotification3)
      {
        if (v30)
        {
          v31 = sub_100042E68(v30);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v42 = "[IDSServiceEmbeddedController postAskToResumeNotification]";
            v43 = 1024;
            v44 = 1615;
            v45 = 1024;
            LODWORD(askToResumeNotification2) = error;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%s:%d] got error %d", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1615, "[IDSServiceEmbeddedController postAskToResumeNotification]", 7, 0, "got error %d", error);
        RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, [(IDSServiceEmbeddedController *)self askToResumeNotification], sub_10001AB4C, 0);
        if (RunLoopSource)
        {
          v33 = RunLoopSource;
          v34 = +[NSDate date];
          [(IDSServiceEmbeddedController *)self setNotificationStartTime:v34];

          Main = CFRunLoopGetMain();
          CFRunLoopAddSource(Main, v33, kCFRunLoopDefaultMode);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10001B304;
          block[3] = &unk_100068CB0;
          block[4] = self;
          dispatch_async(&_dispatch_main_q, block);
          CFRelease(v33);
        }

        else
        {
          v37 = sub_1000423E0();
          if (v37)
          {
            v38 = sub_100042E68(v37);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v42 = "[IDSServiceEmbeddedController postAskToResumeNotification]";
              v43 = 1024;
              v44 = 1620;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[%s:%d] Failed to create run loop source for notification", buf, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1620, "[IDSServiceEmbeddedController postAskToResumeNotification]", 7, 0, "Failed to create run loop source for notification");
          CFRelease([(IDSServiceEmbeddedController *)self askToResumeNotification]);
          [(IDSServiceEmbeddedController *)self setAskToResumeNotification:0];
        }
      }

      else
      {
        if (v30)
        {
          v36 = sub_100042E68(v30);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v42 = "[IDSServiceEmbeddedController postAskToResumeNotification]";
            v43 = 1024;
            v44 = 1612;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[%s:%d] failed to create notification", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1612, "[IDSServiceEmbeddedController postAskToResumeNotification]", 7, 0, "failed to create notification");
      }
    }
  }

  else
  {
    v9 = sub_1000423E0();
    if (v9)
    {
      v10 = sub_100042E68(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v42 = "[IDSServiceEmbeddedController postAskToResumeNotification]";
        v43 = 1024;
        v44 = 1550;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] not paused - ignore request", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1550, "[IDSServiceEmbeddedController postAskToResumeNotification]", 7, 0, "not paused - ignore request");
  }
}

- (void)askToResumeTimeout:(id)timeout
{
  v4 = sub_1000423E0();
  if (v4)
  {
    v5 = sub_100042E68(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[IDSServiceEmbeddedController askToResumeTimeout:]";
      v8 = 1024;
      v9 = 1696;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] askToResumeTimeout", &v6, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1696, "[IDSServiceEmbeddedController askToResumeTimeout:]", 7, 0, "askToResumeTimeout");
  [(IDSServiceEmbeddedController *)self removeUserAskToResumeNotification];
}

- (void)removeUserAskToResumeNotification
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "[IDSServiceEmbeddedController removeUserAskToResumeNotification]";
      v14 = 1024;
      v15 = 1702;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] remove notification called", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1702, "[IDSServiceEmbeddedController removeUserAskToResumeNotification]", 7, 0, "remove notification called");
  if ([(IDSServiceEmbeddedController *)self askToResumeNotification])
  {
    [(IDSServiceEmbeddedController *)self setAskToResumeTimedOut:1];
    v5 = CFUserNotificationCancel([(IDSServiceEmbeddedController *)self askToResumeNotification]);
    v6 = sub_1000423E0();
    if (v6)
    {
      v7 = sub_100042E68(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v13 = "[IDSServiceEmbeddedController removeUserAskToResumeNotification]";
        v14 = 1024;
        v15 = 1707;
        v16 = 1024;
        v17 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] cancel err = %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1707, "[IDSServiceEmbeddedController removeUserAskToResumeNotification]", 7, 0, "cancel err = %d", v5);
    askToResumeTimeoutTimer = [(IDSServiceEmbeddedController *)self askToResumeTimeoutTimer];

    if (askToResumeTimeoutTimer)
    {
      askToResumeTimeoutTimer2 = [(IDSServiceEmbeddedController *)self askToResumeTimeoutTimer];
      [askToResumeTimeoutTimer2 invalidate];

      [(IDSServiceEmbeddedController *)self setAskToResumeTimeoutTimer:0];
    }
  }

  else
  {
    v10 = sub_1000423E0();
    if (v10)
    {
      v11 = sub_100042E68(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[IDSServiceEmbeddedController removeUserAskToResumeNotification]";
        v14 = 1024;
        v15 = 1715;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] no notification", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1715, "[IDSServiceEmbeddedController removeUserAskToResumeNotification]", 7, 0, "no notification");
  }
}

- (void)showMessageToUser:(id)user
{
  userCopy = user;
  if ([userCopy length] > 0xC7)
  {
    v4 = 200;
  }

  else
  {
    v4 = [userCopy length];
  }

  v5 = [userCopy rangeOfComposedCharacterSequencesForRange:{0, v4}];
  v7 = [userCopy substringWithRange:{v5, v6}];
  [(IDSServiceEmbeddedController *)self setShowUserMessage:v7];
  [(IDSServiceEmbeddedController *)self postShowUserMessageNotification];
}

- (void)postShowUserMessageNotification
{
  error = 0;
  activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
  allValues = [activeSessions allValues];
  lastObject = [allValues lastObject];

  v6 = sub_1000423E0();
  if (v6)
  {
    v7 = sub_100042E68(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v32 = "[IDSServiceEmbeddedController postShowUserMessageNotification]";
      v33 = 1024;
      v34 = 1737;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] postShowUserMessageNotification", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1737, "[IDSServiceEmbeddedController postShowUserMessageNotification]", 7, 0, "postShowUserMessageNotification");
  if ([(IDSServiceEmbeddedController *)self showUserMessageNotification])
  {
    v8 = sub_1000423E0();
    if (v8)
    {
      v9 = sub_100042E68(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v32 = "[IDSServiceEmbeddedController postShowUserMessageNotification]";
        v33 = 1024;
        v34 = 1741;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification active - ignore request", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1741, "[IDSServiceEmbeddedController postShowUserMessageNotification]", 7, 0, "notification active - ignore request");
  }

  else
  {
    [(IDSServiceEmbeddedController *)self setShowUserMessageTimedOut:0];
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    [lastObject addNotificationIconTo:Mutable];
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"kSSSentMessage" value:&stru_100069830 table:0];
    inviterFullName = [lastObject inviterFullName];
    v14 = [NSString stringWithFormat:v12, inviterFullName];

    if (v14)
    {
      showUserMessage = [(IDSServiceEmbeddedController *)self showUserMessage];

      CFDictionaryAddValue(Mutable, kCFUserNotificationAlertHeaderKey, v14);
      CFDictionaryAddValue(Mutable, kCFUserNotificationAlertMessageKey, showUserMessage);
      CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertMessageKey, v14);
    }

    inviterFullName2 = [lastObject inviterFullName];

    if (inviterFullName2)
    {
      CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertHeaderKey, inviterFullName2);
    }

    MainBundle = CFBundleGetMainBundle();
    v18 = CFBundleCopyLocalizedString(MainBundle, @"kSSOK", @"kSSOK", 0);
    if (v18)
    {
      v19 = v18;
      CFDictionaryAddValue(Mutable, kCFUserNotificationOtherButtonTitleKey, v18);
      CFRelease(v19);
    }

    CFDictionaryAddValue(Mutable, kCFUserNotificationAlertTopMostKey, kCFBooleanTrue);
    [(IDSServiceEmbeddedController *)self setShowUserMessageNotification:CFUserNotificationCreate(0, 0.0, 0x23uLL, &error, Mutable)];
    CFRelease(Mutable);
    if ([(IDSServiceEmbeddedController *)self showUserMessageNotification])
    {
      if (error)
      {
        v20 = sub_1000423E0();
        if (v20)
        {
          v21 = sub_100042E68(v20);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v32 = "[IDSServiceEmbeddedController postShowUserMessageNotification]";
            v33 = 1024;
            v34 = 1785;
            v35 = 1024;
            v36 = error;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%s:%d] got error %d", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1785, "[IDSServiceEmbeddedController postShowUserMessageNotification]", 7, 0, "got error %d", error);
      }

      RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, [(IDSServiceEmbeddedController *)self showUserMessageNotification], sub_10001BEB8, 0);
      if (RunLoopSource)
      {
        v23 = RunLoopSource;
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, v23, kCFRunLoopDefaultMode);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10001C550;
        block[3] = &unk_100068CB0;
        block[4] = self;
        dispatch_async(&_dispatch_main_q, block);
        CFRelease(v23);
      }

      else
      {
        v27 = sub_1000423E0();
        if (v27)
        {
          v28 = sub_100042E68(v27);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v32 = "[IDSServiceEmbeddedController postShowUserMessageNotification]";
            v33 = 1024;
            v34 = 1790;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%s:%d] Failed to create run loop source for notification", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1790, "[IDSServiceEmbeddedController postShowUserMessageNotification]", 7, 0, "Failed to create run loop source for notification");
        CFRelease([(IDSServiceEmbeddedController *)self showUserMessageNotification]);
        [(IDSServiceEmbeddedController *)self setShowUserMessageNotification:0];
      }
    }

    else
    {
      v25 = sub_1000423E0();
      if (v25)
      {
        v26 = sub_100042E68(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v32 = "[IDSServiceEmbeddedController postShowUserMessageNotification]";
          v33 = 1024;
          v34 = 1781;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%s:%d] failed to create notification", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1781, "[IDSServiceEmbeddedController postShowUserMessageNotification]", 7, 0, "failed to create notification");
    }
  }
}

- (void)showUserMessageTimeout:(id)timeout
{
  v4 = sub_1000423E0();
  if (v4)
  {
    v5 = sub_100042E68(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[IDSServiceEmbeddedController showUserMessageTimeout:]";
      v8 = 1024;
      v9 = 1859;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] showUserMessageTimeout", &v6, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1859, "[IDSServiceEmbeddedController showUserMessageTimeout:]", 7, 0, "showUserMessageTimeout");
  [(IDSServiceEmbeddedController *)self removeShowUserMessageNotification];
}

- (void)removeShowUserMessageNotification
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = "[IDSServiceEmbeddedController removeShowUserMessageNotification]";
      v15 = 1024;
      v16 = 1865;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] remove notification called", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1865, "[IDSServiceEmbeddedController removeShowUserMessageNotification]", 7, 0, "remove notification called");
  if ([(IDSServiceEmbeddedController *)self showUserMessageNotification])
  {
    [(IDSServiceEmbeddedController *)self setShowUserMessageTimedOut:1];
    v5 = CFUserNotificationCancel([(IDSServiceEmbeddedController *)self showUserMessageNotification]);
    if (v5)
    {
      v6 = v5;
      v7 = sub_1000423E0();
      if (v7)
      {
        v8 = sub_100042E68(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v14 = "[IDSServiceEmbeddedController removeShowUserMessageNotification]";
          v15 = 1024;
          v16 = 1871;
          v17 = 1024;
          v18 = v6;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] cancel err = %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1871, "[IDSServiceEmbeddedController removeShowUserMessageNotification]", 7, 0, "cancel err = %d", v6);
    }

    showUserMessageTimeoutTimer = [(IDSServiceEmbeddedController *)self showUserMessageTimeoutTimer];

    if (showUserMessageTimeoutTimer)
    {
      showUserMessageTimeoutTimer2 = [(IDSServiceEmbeddedController *)self showUserMessageTimeoutTimer];
      [showUserMessageTimeoutTimer2 invalidate];

      [(IDSServiceEmbeddedController *)self setShowUserMessageTimeoutTimer:0];
    }
  }

  else
  {
    v11 = sub_1000423E0();
    if (v11)
    {
      v12 = sub_100042E68(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v14 = "[IDSServiceEmbeddedController removeShowUserMessageNotification]";
        v15 = 1024;
        v16 = 1879;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] no notification", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1879, "[IDSServiceEmbeddedController removeShowUserMessageNotification]", 7, 0, "no notification");
  }
}

- (void)postViewerPausedMessageNotification
{
  error = 0;
  activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
  allValues = [activeSessions allValues];
  lastObject = [allValues lastObject];

  v6 = sub_1000423E0();
  if (v6)
  {
    v7 = sub_100042E68(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v31 = "[IDSServiceEmbeddedController postViewerPausedMessageNotification]";
      v32 = 1024;
      v33 = 1892;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] postViewerPausedMessageNotification", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1892, "[IDSServiceEmbeddedController postViewerPausedMessageNotification]", 7, 0, "postViewerPausedMessageNotification");
  if ([(IDSServiceEmbeddedController *)self showViewerPausedNotification])
  {
    v8 = sub_1000423E0();
    if (v8)
    {
      v9 = sub_100042E68(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v31 = "[IDSServiceEmbeddedController postViewerPausedMessageNotification]";
        v32 = 1024;
        v33 = 1896;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification active - ignore request", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1896, "[IDSServiceEmbeddedController postViewerPausedMessageNotification]", 7, 0, "notification active - ignore request");
  }

  else
  {
    [(IDSServiceEmbeddedController *)self setShowViewerPausedTimedOut:0];
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    [lastObject addNotificationIconTo:Mutable];
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"kSSPaused" value:&stru_100069830 table:0];
    inviterFullName = [lastObject inviterFullName];
    v14 = [NSString stringWithFormat:v12, inviterFullName];

    if (v14)
    {
      CFDictionaryAddValue(Mutable, kCFUserNotificationAlertHeaderKey, v14);
      CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertMessageKey, v14);
    }

    inviterFullName2 = [lastObject inviterFullName];

    if (inviterFullName2)
    {
      CFDictionaryAddValue(Mutable, SBUserNotificationLockScreenAlertHeaderKey, inviterFullName2);
    }

    MainBundle = CFBundleGetMainBundle();
    v17 = CFBundleCopyLocalizedString(MainBundle, @"kSSOK", @"kSSOK", 0);
    if (v17)
    {
      v18 = v17;
      CFDictionaryAddValue(Mutable, kCFUserNotificationOtherButtonTitleKey, v17);
      CFRelease(v18);
    }

    CFDictionaryAddValue(Mutable, kCFUserNotificationAlertTopMostKey, kCFBooleanTrue);
    [(IDSServiceEmbeddedController *)self setShowViewerPausedNotification:CFUserNotificationCreate(0, 0.0, 0x23uLL, &error, Mutable)];
    CFRelease(Mutable);
    if ([(IDSServiceEmbeddedController *)self showViewerPausedNotification])
    {
      if (error)
      {
        v19 = sub_1000423E0();
        if (v19)
        {
          v20 = sub_100042E68(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v31 = "[IDSServiceEmbeddedController postViewerPausedMessageNotification]";
            v32 = 1024;
            v33 = 1939;
            v34 = 1024;
            v35 = error;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] got error %d", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1939, "[IDSServiceEmbeddedController postViewerPausedMessageNotification]", 7, 0, "got error %d", error);
      }

      RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, [(IDSServiceEmbeddedController *)self showViewerPausedNotification], sub_10001D03C, 0);
      if (RunLoopSource)
      {
        v22 = RunLoopSource;
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, v22, kCFRunLoopDefaultMode);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10001D1E8;
        block[3] = &unk_100068CB0;
        block[4] = self;
        dispatch_async(&_dispatch_main_q, block);
        CFRelease(v22);
      }

      else
      {
        v26 = sub_1000423E0();
        if (v26)
        {
          v27 = sub_100042E68(v26);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v31 = "[IDSServiceEmbeddedController postViewerPausedMessageNotification]";
            v32 = 1024;
            v33 = 1944;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%s:%d] Failed to create run loop source for notification", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1944, "[IDSServiceEmbeddedController postViewerPausedMessageNotification]", 7, 0, "Failed to create run loop source for notification");
        CFRelease([(IDSServiceEmbeddedController *)self showViewerPausedNotification]);
        [(IDSServiceEmbeddedController *)self setShowViewerPausedNotification:0];
      }
    }

    else
    {
      v24 = sub_1000423E0();
      if (v24)
      {
        v25 = sub_100042E68(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v31 = "[IDSServiceEmbeddedController postViewerPausedMessageNotification]";
          v32 = 1024;
          v33 = 1935;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%s:%d] failed to create notification", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1935, "[IDSServiceEmbeddedController postViewerPausedMessageNotification]", 7, 0, "failed to create notification");
    }
  }
}

- (void)showViewerPausedTimeout:(id)timeout
{
  v4 = sub_1000423E0();
  if (v4)
  {
    v5 = sub_100042E68(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[IDSServiceEmbeddedController showViewerPausedTimeout:]";
      v8 = 1024;
      v9 = 1975;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] showViewerPausedTimeout", &v6, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1975, "[IDSServiceEmbeddedController showViewerPausedTimeout:]", 7, 0, "showViewerPausedTimeout");
  [(IDSServiceEmbeddedController *)self removeViewerPausedNotification];
}

- (void)removeViewerPausedNotification
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = "[IDSServiceEmbeddedController removeViewerPausedNotification]";
      v15 = 1024;
      v16 = 1981;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] remove notification called", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1981, "[IDSServiceEmbeddedController removeViewerPausedNotification]", 7, 0, "remove notification called");
  if ([(IDSServiceEmbeddedController *)self showViewerPausedNotification])
  {
    [(IDSServiceEmbeddedController *)self setShowViewerPausedTimedOut:1];
    v5 = CFUserNotificationCancel([(IDSServiceEmbeddedController *)self showViewerPausedNotification]);
    if (v5)
    {
      v6 = v5;
      v7 = sub_1000423E0();
      if (v7)
      {
        v8 = sub_100042E68(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v14 = "[IDSServiceEmbeddedController removeViewerPausedNotification]";
          v15 = 1024;
          v16 = 1987;
          v17 = 1024;
          v18 = v6;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] cancel err = %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1987, "[IDSServiceEmbeddedController removeViewerPausedNotification]", 7, 0, "cancel err = %d", v6);
    }

    showViewerPausedTimeoutTimer = [(IDSServiceEmbeddedController *)self showViewerPausedTimeoutTimer];

    if (showViewerPausedTimeoutTimer)
    {
      showViewerPausedTimeoutTimer2 = [(IDSServiceEmbeddedController *)self showViewerPausedTimeoutTimer];
      [showViewerPausedTimeoutTimer2 invalidate];

      [(IDSServiceEmbeddedController *)self setShowViewerPausedTimeoutTimer:0];
    }
  }

  else
  {
    v11 = sub_1000423E0();
    if (v11)
    {
      v12 = sub_100042E68(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v14 = "[IDSServiceEmbeddedController removeViewerPausedNotification]";
        v15 = 1024;
        v16 = 1995;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] no notification", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1995, "[IDSServiceEmbeddedController removeViewerPausedNotification]", 7, 0, "no notification");
  }
}

- (void)pauseScreenSharing:(BOOL)sharing pausingDueToScreenLock:(BOOL)lock
{
  sharingCopy = sharing;
  v7 = sub_1000423E0();
  if (v7)
  {
    v8 = sub_100042E68(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v33 = "[IDSServiceEmbeddedController pauseScreenSharing:pausingDueToScreenLock:]";
      v34 = 1024;
      v35 = 2001;
      v36 = 1024;
      v37 = sharingCopy;
      v38 = 1024;
      sessionPaused = [(IDSServiceEmbeddedController *)self sessionPaused];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] pauseScreenSharing %d  %d", buf, 0x1Eu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2001, "[IDSServiceEmbeddedController pauseScreenSharing:pausingDueToScreenLock:]", 7, 0, "pauseScreenSharing %d  %d", sharingCopy, [(IDSServiceEmbeddedController *)self sessionPaused]);
  if ([(IDSServiceEmbeddedController *)self sessionPaused]== sharingCopy)
  {
    v16 = sub_1000423E0();
    if (v16)
    {
      v17 = sub_100042E68(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v33 = "[IDSServiceEmbeddedController pauseScreenSharing:pausingDueToScreenLock:]";
        v34 = 1024;
        v35 = 2027;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s:%d] ignore", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2027, "[IDSServiceEmbeddedController pauseScreenSharing:pausingDueToScreenLock:]", 7, 0, "ignore");
  }

  else
  {
    [(IDSServiceEmbeddedController *)self setSessionPaused:sharingCopy];
    doubleHeightStatusBarAssertion = self->_doubleHeightStatusBarAssertion;
    if (sharingCopy)
    {
      v10 = +[NSBundle mainBundle];
      v11 = [v10 localizedStringForKey:@"kSSScreenSharingPaused" value:&stru_100069830 table:0];
      v12 = [NSString stringWithFormat:@"%@", v11];
      [(SBSStatusBarStyleOverridesAssertion *)doubleHeightStatusBarAssertion setStatusString:v12];

      if (!lock)
      {
        [(IDSServiceEmbeddedController *)self setScreenPausedBeforeLock:1];
      }

      v13 = sub_1000423E0();
      if (v13)
      {
        v14 = sub_100042E68(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          screenPausedBeforeLock = [(IDSServiceEmbeddedController *)self screenPausedBeforeLock];
          *buf = 136315650;
          v33 = "[IDSServiceEmbeddedController pauseScreenSharing:pausingDueToScreenLock:]";
          v34 = 1024;
          v35 = 2012;
          v36 = 1024;
          v37 = screenPausedBeforeLock;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen paused before lock %d", buf, 0x18u);
        }
      }

      [(IDSServiceEmbeddedController *)self screenPausedBeforeLock];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2012, "[IDSServiceEmbeddedController pauseScreenSharing:pausingDueToScreenLock:]", 7, 0, "screen paused before lock %d");
    }

    else
    {
      activeViewerStatusString = [(IDSServiceEmbeddedController *)self activeViewerStatusString];
      [(SBSStatusBarStyleOverridesAssertion *)doubleHeightStatusBarAssertion setStatusString:activeViewerStatusString];

      [(IDSServiceEmbeddedController *)self setScreenPausedBeforeLock:0];
      v19 = sub_1000423E0();
      if (v19)
      {
        v20 = sub_100042E68(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v33 = "[IDSServiceEmbeddedController pauseScreenSharing:pausingDueToScreenLock:]";
          v34 = 1024;
          v35 = 2020;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen not paused", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2020, "[IDSServiceEmbeddedController pauseScreenSharing:pausingDueToScreenLock:]", 7, 0, "screen not paused");
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
    allValues = [activeSessions allValues];

    v23 = [allValues countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v28;
      do
      {
        v26 = 0;
        do
        {
          if (*v28 != v25)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v27 + 1) + 8 * v26) pauseVideoSending:sharingCopy];
          v26 = v26 + 1;
        }

        while (v24 != v26);
        v24 = [allValues countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v24);
    }
  }
}

- (void)inviteWasAccepted:(id)accepted
{
  acceptedCopy = accepted;
  v5 = sub_1000423E0();
  if (v5)
  {
    v6 = sub_100042E68(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      idsService = [(IDSServiceEmbeddedController *)self idsService];
      *buf = 136315650;
      v15 = "[IDSServiceEmbeddedController inviteWasAccepted:]";
      v16 = 1024;
      v17 = 2035;
      v18 = 2048;
      v19 = idsService;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] invite accepted   self.idsService %p", buf, 0x1Cu);
    }
  }

  idsService2 = [(IDSServiceEmbeddedController *)self idsService];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2035, "[IDSServiceEmbeddedController inviteWasAccepted:]", 7, 0, "invite accepted   self.idsService %p", idsService2);

  if ([acceptedCopy inviterKind] == 2 || objc_msgSend(acceptedCopy, "inviterKind") == 3)
  {
    sanitizedFromID = [(IDSServiceEmbeddedController *)self sanitizedFromID];
    sessionID = [acceptedCopy sessionID];
    idsService3 = [(IDSServiceEmbeddedController *)self idsService];
    [(IDSServiceEmbeddedController *)self sendMessageInviteAccepted:sanitizedFromID sessionID:sessionID service:idsService3];
  }

  else
  {
    v12 = sub_1000423E0();
    if (v12)
    {
      v13 = sub_100042E68(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v15 = "[IDSServiceEmbeddedController inviteWasAccepted:]";
        v16 = 1024;
        v17 = 2039;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%s:%d] do not send invite accepted message", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2039, "[IDSServiceEmbeddedController inviteWasAccepted:]", 7, 0, "do not send invite accepted message");
  }
}

- (void)pauseScreenSharing:(BOOL)sharing
{
  sharingCopy = sharing;
  v5 = sub_1000423E0();
  if (v5)
  {
    v6 = sub_100042E68(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v9 = "[IDSServiceEmbeddedController pauseScreenSharing:]";
      v10 = 1024;
      v11 = 2047;
      v12 = 1024;
      v13 = sharingCopy;
      v14 = 1024;
      sessionPaused = [(IDSServiceEmbeddedController *)self sessionPaused];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] pauseScreenSharing %d  %d", buf, 0x1Eu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2047, "[IDSServiceEmbeddedController pauseScreenSharing:]", 7, 0, "pauseScreenSharing %d  %d", sharingCopy, [(IDSServiceEmbeddedController *)self sessionPaused]);
  [(IDSServiceEmbeddedController *)self pauseScreenSharing:sharingCopy pausingDueToScreenLock:0];
  vsHelper = [(IDSServiceEmbeddedController *)self vsHelper];
  [vsHelper sendSessionInfoToClient];
}

- (void)pauseResumeResult:(id)result
{
  v4 = [result objectForKey:@"result"];
  v5 = sub_1000423E0();
  if (v5)
  {
    v6 = sub_100042E68(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v19 = "[IDSServiceEmbeddedController pauseResumeResult:]";
      v20 = 1024;
      v21 = 2057;
      v22 = 2048;
      integerValue = [v4 integerValue];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] pauseResumeResult: %ld", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2057, "-[IDSServiceEmbeddedController pauseResumeResult:]", 7, 0, "pauseResumeResult: %ld", [v4 integerValue]);
  integerValue2 = [v4 integerValue];
  if (integerValue2 > 1)
  {
    if (integerValue2 == 2)
    {
      v16 = sub_1000423E0();
      if (v16)
      {
        v17 = sub_100042E68(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v19 = "[IDSServiceEmbeddedController pauseResumeResult:]";
          v20 = 1024;
          v21 = 2072;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s:%d] resume chosen", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2072, "[IDSServiceEmbeddedController pauseResumeResult:]", 7, 0, "resume chosen");
      selfCopy2 = self;
      v11 = 0;
      goto LABEL_30;
    }

    if (integerValue2 == 3)
    {
      v12 = sub_1000423E0();
      if (v12)
      {
        v13 = sub_100042E68(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v19 = "[IDSServiceEmbeddedController pauseResumeResult:]";
          v20 = 1024;
          v21 = 2077;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%s:%d] end session chosen", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2077, "[IDSServiceEmbeddedController pauseResumeResult:]", 7, 0, "end session chosen");
      [(IDSServiceEmbeddedController *)self closeAllSessions];
    }
  }

  else if (integerValue2)
  {
    if (integerValue2 == 1)
    {
      v8 = sub_1000423E0();
      if (v8)
      {
        v9 = sub_100042E68(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v19 = "[IDSServiceEmbeddedController pauseResumeResult:]";
          v20 = 1024;
          v21 = 2067;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] pause chosen", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2067, "[IDSServiceEmbeddedController pauseResumeResult:]", 7, 0, "pause chosen");
      selfCopy2 = self;
      v11 = 1;
LABEL_30:
      [(IDSServiceEmbeddedController *)selfCopy2 pauseScreenSharing:v11];
    }
  }

  else
  {
    v14 = sub_1000423E0();
    if (v14)
    {
      v15 = sub_100042E68(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v19 = "[IDSServiceEmbeddedController pauseResumeResult:]";
        v20 = 1024;
        v21 = 2063;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%s:%d] cancel chosen", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2063, "[IDSServiceEmbeddedController pauseResumeResult:]", 7, 0, "cancel chosen");
  }

  [(IDSServiceEmbeddedController *)self setViewServicePID:0xFFFFFFFFLL];
}

- (void)sessionState:(id)state
{
  stateCopy = state;
  v5 = sub_1000423E0();
  if (v5)
  {
    v6 = sub_100042E68(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v32 = "[IDSServiceEmbeddedController sessionState:]";
      v33 = 1024;
      v34 = 2086;
      v35 = 1024;
      LODWORD(v36[0]) = [(IDSServiceEmbeddedController *)self sessionPaused];
      WORD2(v36[0]) = 1024;
      *(v36 + 6) = [(IDSServiceEmbeddedController *)self screenLocked];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] sessionState is called, paused:%d, screenLocked:%d", buf, 0x1Eu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2086, "[IDSServiceEmbeddedController sessionState:]", 7, 0, "sessionState is called, paused:%d, screenLocked:%d", [(IDSServiceEmbeddedController *)self sessionPaused], [(IDSServiceEmbeddedController *)self screenLocked]);
  if (stateCopy)
  {
    v7 = [NSNumber numberWithBool:[(IDSServiceEmbeddedController *)self sessionPaused]];
    [stateCopy setObject:v7 forKeyedSubscript:@"paused"];

    v8 = [NSNumber numberWithBool:[(IDSServiceEmbeddedController *)self screenLocked]];
    [stateCopy setObject:v8 forKeyedSubscript:@"screenLocked"];

    activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
    allValues = [activeSessions allValues];
    lastObject = [allValues lastObject];

    if (!lastObject)
    {
      lastObject = [(IDSServiceEmbeddedController *)self pendingSession];
    }

    v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [lastObject sessionStartDelegateWasCalled]);
    [stateCopy setObject:v12 forKeyedSubscript:@"isSessionStarted"];

    inviterFullName = [lastObject inviterFullName];
    [stateCopy setObject:inviterFullName forKeyedSubscript:@"viewerName"];

    v14 = sub_1000423E0();
    if (v14)
    {
      v15 = sub_100042E68(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [stateCopy objectForKeyedSubscript:@"viewerName"];
        uTF8String = [v16 UTF8String];
        *buf = 136315650;
        v32 = "[IDSServiceEmbeddedController sessionState:]";
        v33 = 1024;
        v34 = 2100;
        v35 = 2080;
        v36[0] = uTF8String;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%s:%d] viewer info %s", buf, 0x1Cu);
      }
    }

    v18 = [stateCopy objectForKeyedSubscript:@"viewerName"];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2100, "-[IDSServiceEmbeddedController sessionState:]", 7, 0, "viewer info %s", [v18 UTF8String]);

    v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [lastObject inviterKind] == 3);
    [stateCopy setObject:v19 forKeyedSubscript:@"isAppleSupportRequest"];

    v20 = [NSNumber numberWithBool:[(IDSServiceEmbeddedController *)self isShareSettings]];
    [stateCopy setObject:v20 forKeyedSubscript:@"isShareSettings"];

    pendingSession = [(IDSServiceEmbeddedController *)self pendingSession];
    if (pendingSession)
    {
      v22 = 0;
    }

    else
    {
      self = [(IDSServiceEmbeddedController *)self activeSessions];
      v22 = [(IDSServiceEmbeddedController *)self count]== 0;
    }

    v25 = [NSNumber numberWithBool:v22];
    [stateCopy setObject:v25 forKeyedSubscript:@"isEnded"];

    if (!pendingSession)
    {
    }

    v26 = sub_1000423E0();
    if (v26)
    {
      v27 = sub_100042E68(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [stateCopy description];
        uTF8String2 = [v28 UTF8String];
        *buf = 136315650;
        v32 = "[IDSServiceEmbeddedController sessionState:]";
        v33 = 1024;
        v34 = 2107;
        v35 = 2080;
        v36[0] = uTF8String2;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%s:%d] returning sessionState: %s", buf, 0x1Cu);
      }
    }

    v30 = [stateCopy description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2107, "-[IDSServiceEmbeddedController sessionState:]", 7, 0, "returning sessionState: %s", [v30 UTF8String]);
  }

  else
  {
    v23 = sub_1000423E0();
    if (v23)
    {
      v24 = sub_100042E68(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v32 = "[IDSServiceEmbeddedController sessionState:]";
        v33 = 1024;
        v34 = 2110;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%s:%d] dictionary is nil", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2110, "[IDSServiceEmbeddedController sessionState:]", 7, 0, "dictionary is nil");
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
      v7 = [resultCopy description];
      *buf = 136315650;
      v29 = "[IDSServiceEmbeddedController termsAndConditionsResult:]";
      v30 = 1024;
      v31 = 2116;
      v32 = 2080;
      uTF8String = [v7 UTF8String];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] terms and conditions result  %s", buf, 0x1Cu);
    }
  }

  v8 = [resultCopy description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2116, "-[IDSServiceEmbeddedController termsAndConditionsResult:]", 7, 0, "terms and conditions result  %s", [v8 UTF8String]);

  v9 = [resultCopy objectForKey:@"result"];
  if (!v9)
  {
    v10 = sub_1000423E0();
    if (v10)
    {
      v11 = sub_100042E68(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v29 = "[IDSServiceEmbeddedController termsAndConditionsResult:]";
        v30 = 1024;
        v31 = 2119;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] no result", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2119, "[IDSServiceEmbeddedController termsAndConditionsResult:]", 7, 0, "no result");
  }

  if ([v9 BOOLValue])
  {
    pendingSession = [(IDSServiceEmbeddedController *)self pendingSession];
    if ([pendingSession inviterKind] == 2)
    {

LABEL_20:
      sanitizedFromID = [(IDSServiceEmbeddedController *)self sanitizedFromID];
      pendingSession2 = [(IDSServiceEmbeddedController *)self pendingSession];
      sessionID = [pendingSession2 sessionID];
      idsService = [(IDSServiceEmbeddedController *)self idsService];
      [(IDSServiceEmbeddedController *)self sendMessageTCAccepted:sanitizedFromID sessionID:sessionID service:idsService];

      v21 = sub_1000423E0();
      if (v21)
      {
        v22 = sub_100042E68(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v29 = "[IDSServiceEmbeddedController termsAndConditionsResult:]";
          v30 = 1024;
          v31 = 2125;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%s:%d] sent terms and condition accepted message", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2125, "[IDSServiceEmbeddedController termsAndConditionsResult:]", 7, 0, "sent terms and condition accepted message");
      goto LABEL_25;
    }

    pendingSession3 = [(IDSServiceEmbeddedController *)self pendingSession];
    inviterKind = [pendingSession3 inviterKind];

    if (inviterKind == 3)
    {
      goto LABEL_20;
    }

    v24 = sub_1000423E0();
    if (v24)
    {
      v25 = sub_100042E68(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        pendingSession4 = [(IDSServiceEmbeddedController *)self pendingSession];
        *buf = 136315650;
        v29 = "[IDSServiceEmbeddedController termsAndConditionsResult:]";
        v30 = 1024;
        v31 = 2128;
        v32 = 2048;
        uTF8String = pendingSession4;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%s:%d] not applecare  pending session %p", buf, 0x1Cu);
      }
    }

    pendingSession5 = [(IDSServiceEmbeddedController *)self pendingSession];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2128, "[IDSServiceEmbeddedController termsAndConditionsResult:]", 7, 0, "not applecare  pending session %p", pendingSession5);
  }

  else
  {
    v13 = sub_1000423E0();
    if (v13)
    {
      v14 = sub_100042E68(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v29 = "[IDSServiceEmbeddedController termsAndConditionsResult:]";
        v30 = 1024;
        v31 = 2131;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%s:%d] terms not accepted", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2131, "[IDSServiceEmbeddedController termsAndConditionsResult:]", 7, 0, "terms not accepted");
  }

LABEL_25:
  pendingSession6 = [(IDSServiceEmbeddedController *)self pendingSession];
  [pendingSession6 termsAndConditionsResult:resultCopy];
}

- (void)pidNotification:(id)notification
{
  v4 = [notification objectForKey:@"pid"];
  -[IDSServiceEmbeddedController setViewServicePID:](self, "setViewServicePID:", [v4 intValue]);

  v5 = sub_1000423E0();
  if (v5)
  {
    v6 = sub_100042E68(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v8 = "[IDSServiceEmbeddedController pidNotification:]";
      v9 = 1024;
      v10 = 2138;
      v11 = 1024;
      viewServicePID = [(IDSServiceEmbeddedController *)self viewServicePID];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] pidNotification: %d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2138, "[IDSServiceEmbeddedController pidNotification:]", 7, 0, "pidNotification: %d", [(IDSServiceEmbeddedController *)self viewServicePID]);
}

- (void)requestUserInfo
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[IDSServiceEmbeddedController requestUserInfo]";
      v7 = 1024;
      v8 = 2144;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] request user info delegate called", &v5, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2144, "[IDSServiceEmbeddedController requestUserInfo]", 7, 0, "request user info delegate called");
  [(IDSServiceEmbeddedController *)self checkIfNoSessions];
}

- (BOOL)validInviteDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v5 = [dictionaryCopy valueForKey:@"avconference"];
    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = 0;
LABEL_79:

        goto LABEL_80;
      }
    }

    v6 = [v4 valueForKey:@"com.apple.private.applecare"];
    if (!v6)
    {
LABEL_25:
      v11 = [v4 objectForKeyedSubscript:@"cmd"];
      if (v11)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v17 = 0;
LABEL_77:

          goto LABEL_78;
        }
      }

      v12 = [v4 objectForKeyedSubscript:@"version"];
      if (v12)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v17 = 0;
LABEL_76:

          goto LABEL_77;
        }
      }

      v13 = [v4 objectForKeyedSubscript:@"sessionID"];
      if (v13)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v17 = 0;
LABEL_75:

          goto LABEL_76;
        }
      }

      v14 = [v5 valueForKey:@"AVCNegotiatorInfo"];
      if (!v14)
      {
        v18 = sub_1000423E0();
        if (v18)
        {
          v19 = sub_100042E68(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v24 = 136315394;
            v25 = "[IDSServiceEmbeddedController validInviteDictionary:]";
            v26 = 1024;
            v27 = 2259;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%s:%d] no negotiator info", &v24, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2259, "[IDSServiceEmbeddedController validInviteDictionary:]", 7, 0, "no negotiator info");
LABEL_56:
        v15 = [v4 objectForKeyedSubscript:@"osType"];
        if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v17 = 1;
LABEL_73:

          goto LABEL_74;
        }

LABEL_72:
        v17 = 0;
        goto LABEL_73;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = 0;
LABEL_74:

        goto LABEL_75;
      }

      v15 = [v14 objectForKeyedSubscript:@"serverToViewerVideoKey"];
      if (!v15)
      {
        goto LABEL_72;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_72;
      }

      v16 = [v14 objectForKeyedSubscript:@"viewerToServerVideoKey"];

      if (v16)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_81;
        }

        v15 = [v14 objectForKeyedSubscript:@"serverToViewerAudioKey"];

        if (v15)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_72;
          }

          v16 = [v14 objectForKeyedSubscript:@"viewerToServerAudioKey"];

          if (!v16)
          {
            goto LABEL_71;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_81;
          }

          v15 = [v14 objectForKeyedSubscript:@"audioOffer"];

          if (!v15)
          {
            goto LABEL_72;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_72;
          }
        }

        else
        {
          v20 = sub_1000423E0();
          if (v20)
          {
            v21 = sub_100042E68(v20);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v24 = 136315394;
              v25 = "[IDSServiceEmbeddedController validInviteDictionary:]";
              v26 = 1024;
              v27 = 2248;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%s:%d] no audio info in the invite message", &v24, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2248, "[IDSServiceEmbeddedController validInviteDictionary:]", 7, 0, "no audio info in the invite message");
          v15 = 0;
        }

        v22 = v15;
        v15 = [v14 objectForKeyedSubscript:@"videoOffer"];

        if (!v15)
        {
          goto LABEL_72;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_72;
        }

        v16 = [v14 objectForKeyedSubscript:@"sessionID"];

        if (v16)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {

            goto LABEL_56;
          }

LABEL_81:
          v17 = 0;
          v15 = v16;
          goto LABEL_73;
        }
      }

LABEL_71:
      v15 = 0;
      goto LABEL_72;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_46;
    }

    v7 = [v6 objectForKeyedSubscript:@"sessionToken"];
    if (!v7)
    {
      goto LABEL_47;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_47;
    }

    v8 = [v6 objectForKeyedSubscript:@"resourcepath"];

    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_60;
      }

      v7 = [v6 objectForKeyedSubscript:@"isprod"];

      if (!v7)
      {
        goto LABEL_47;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_47;
      }

      v8 = [v6 objectForKeyedSubscript:@"aaToken"];

      if (v8)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      v7 = [v6 objectForKeyedSubscript:@"timeout"];

      if (v7)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      v8 = [v6 objectForKeyedSubscript:@"appleName"];

      if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v7 = [v6 objectForKeyedSubscript:@"shareType"];

        if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v9 = sub_1000423E0();
          if (v9)
          {
            v10 = sub_100042E68(v9);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v24 = 136315394;
              v25 = "[IDSServiceEmbeddedController validInviteDictionary:]";
              v26 = 1024;
              v27 = 2197;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] invite dictionary is ok", &v24, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2197, "[IDSServiceEmbeddedController validInviteDictionary:]", 7, 0, "invite dictionary is ok");

          goto LABEL_25;
        }
      }

      else
      {
LABEL_60:
        v7 = v8;
      }
    }

    else
    {
LABEL_46:
      v7 = 0;
    }

LABEL_47:

    v17 = 0;
LABEL_78:

    goto LABEL_79;
  }

  v17 = 0;
LABEL_80:

  return v17;
}

- (BOOL)inviteValidForThisOS:(id)s
{
  v4 = [s objectForKeyedSubscript:@"osType"];
  if (!v4)
  {
    v10 = sub_1000423E0();
    if (v10)
    {
      v11 = sub_100042E68(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v14 = "[IDSServiceEmbeddedController inviteValidForThisOS:]";
        v15 = 1024;
        v16 = 2285;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] no osType specified", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2285, "[IDSServiceEmbeddedController inviteValidForThisOS:]", 7, 0, "no osType specified");
    goto LABEL_13;
  }

  osTypeString = [(IDSServiceEmbeddedController *)self osTypeString];
  v6 = [osTypeString isEqualToString:v4];

  if (v6)
  {
LABEL_13:
    v9 = 1;
    goto LABEL_14;
  }

  v7 = sub_1000423E0();
  if (v7)
  {
    v8 = sub_100042E68(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v14 = "[IDSServiceEmbeddedController inviteValidForThisOS:]";
      v15 = 1024;
      v16 = 2281;
      v17 = 2080;
      uTF8String = [v4 UTF8String];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] invalid osType %s - ignoring", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2281, "-[IDSServiceEmbeddedController inviteValidForThisOS:]", 7, 0, "invalid osType %s - ignoring", [v4 UTF8String]);
  v9 = 0;
LABEL_14:

  return v9;
}

- (void)dealloc
{
  [(IDSServiceEmbeddedController *)self setSanitizedFromID:0];
  [(IDSServiceEmbeddedController *)self setValidationURL:0];
  [(IDSServiceEmbeddedController *)self setUrlResponseData:0];
  [(IDSServiceEmbeddedController *)self setUrlResponseData:0];
  [(IDSServiceEmbeddedController *)self setValidationURL:0];
  [(IDSServiceEmbeddedController *)self setVsHelper:0];
  [(IDSServiceEmbeddedController *)self setExitTimer:0];
  [(IDSServiceEmbeddedController *)self setWallpaperSuspensionAssertion:0];
  [(IDSServiceEmbeddedController *)self setNotificationStartTime:0];
  [(IDSServiceEmbeddedController *)self setUrlToOpen:0];
  [(IDSServiceEmbeddedController *)self setActiveSessions:0];
  [(IDSServiceEmbeddedController *)self setPendingSession:0];
  idsService = [(IDSServiceEmbeddedController *)self idsService];
  [idsService removeDelegate:self];

  [(IDSServiceEmbeddedController *)self setIdsService:0];
  v4.receiver = self;
  v4.super_class = IDSServiceEmbeddedController;
  [(IDSServiceEmbeddedController *)&v4 dealloc];
}

- (void)sendMessageShareStatusResult:(id)result systemInfo:(id)info
{
  infoCopy = info;
  resultCopy = result;
  v8 = sub_1000423E0();
  if (v8)
  {
    v9 = sub_100042E68(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [infoCopy description];
      *buf = 136315650;
      v20 = "[IDSServiceEmbeddedController sendMessageShareStatusResult:systemInfo:]";
      v21 = 1024;
      v22 = 2376;
      v23 = 2080;
      uTF8String = [v10 UTF8String];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] share status result info %s", buf, 0x1Cu);
    }
  }

  v11 = [infoCopy description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2376, "-[IDSServiceEmbeddedController sendMessageShareStatusResult:systemInfo:]", 7, 0, "share status result info %s", [v11 UTF8String]);

  v12 = sub_1000423E0();
  if (v12)
  {
    v13 = sub_100042E68(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      sanitizedFromID = [(IDSServiceEmbeddedController *)self sanitizedFromID];
      uTF8String2 = [sanitizedFromID UTF8String];
      *buf = 136315650;
      v20 = "[IDSServiceEmbeddedController sendMessageShareStatusResult:systemInfo:]";
      v21 = 1024;
      v22 = 2377;
      v23 = 2080;
      uTF8String = uTF8String2;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%s:%d] send to %s", buf, 0x1Cu);
    }
  }

  sanitizedFromID2 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2377, "-[IDSServiceEmbeddedController sendMessageShareStatusResult:systemInfo:]", 7, 0, "send to %s", [sanitizedFromID2 UTF8String]);

  sanitizedFromID3 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
  idsService = [(IDSServiceEmbeddedController *)self idsService];
  [(IDSServiceEmbeddedController *)self sendMessageShareStatusResultInfo:sanitizedFromID3 sessionID:resultCopy service:idsService systemInfo:infoCopy];
}

- (void)sendMessageShareSettingsUserDecline:(id)decline
{
  declineCopy = decline;
  v5 = sub_1000423E0();
  if (v5)
  {
    v6 = sub_100042E68(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[IDSServiceEmbeddedController sendMessageShareSettingsUserDecline:]";
      v11 = 1024;
      v12 = 2383;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] share status user decline", &v9, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2383, "[IDSServiceEmbeddedController sendMessageShareSettingsUserDecline:]", 7, 0, "share status user decline");
  sanitizedFromID = [(IDSServiceEmbeddedController *)self sanitizedFromID];
  idsService = [(IDSServiceEmbeddedController *)self idsService];
  [(IDSServiceEmbeddedController *)self sendMessageStatusMessage:sanitizedFromID sessionID:declineCopy service:idsService status:@"UserDeclined"];
}

- (void)sendMessageInviteDisplayed:(id)displayed sessionID:(id)d service:(id)service
{
  serviceCopy = service;
  dCopy = d;
  displayedCopy = displayed;
  v11 = sub_1000423E0();
  if (v11)
  {
    v12 = sub_100042E68(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "[IDSServiceEmbeddedController sendMessageInviteDisplayed:sessionID:service:]";
      v20 = 1024;
      v21 = 2389;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] invite displayed", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2389, "[IDSServiceEmbeddedController sendMessageInviteDisplayed:sessionID:service:]", 7, 0, "invite displayed");
  v13 = sub_1000423E0();
  if (v13)
  {
    v14 = sub_100042E68(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      sanitizedFromID = [(IDSServiceEmbeddedController *)self sanitizedFromID];
      uTF8String = [sanitizedFromID UTF8String];
      *buf = 136315906;
      v19 = "[IDSServiceEmbeddedController sendMessageInviteDisplayed:sessionID:service:]";
      v20 = 1024;
      v21 = 2390;
      v22 = 2080;
      v23 = uTF8String;
      v24 = 2048;
      v25 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%s:%d] send to %s with service %p", buf, 0x26u);
    }
  }

  sanitizedFromID2 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2390, "-[IDSServiceEmbeddedController sendMessageInviteDisplayed:sessionID:service:]", 7, 0, "send to %s with service %p", [sanitizedFromID2 UTF8String], serviceCopy);

  [(IDSServiceEmbeddedController *)self sendMessageStatusMessage:displayedCopy sessionID:dCopy service:serviceCopy status:@"InviteDisplayed"];
}

- (void)sendMessageInviteIgnored:(id)ignored sessionID:(id)d service:(id)service error:(id)error
{
  serviceCopy = service;
  ignoredCopy = ignored;
  v12 = [NSDictionary dictionaryWithObjectsAndKeys:@"InviteIgnored", @"status", d, @"sessionID", error, @"REASON", 0];
  [(IDSServiceEmbeddedController *)self sendServiceMessage:v12 destination:ignoredCopy service:serviceCopy];
}

- (void)sendMessageInviteAccepted:(id)accepted sessionID:(id)d service:(id)service
{
  serviceCopy = service;
  dCopy = d;
  acceptedCopy = accepted;
  v11 = sub_1000423E0();
  if (v11)
  {
    v12 = sub_100042E68(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sanitizedFromID = [(IDSServiceEmbeddedController *)self sanitizedFromID];
      *buf = 136315906;
      v16 = "[IDSServiceEmbeddedController sendMessageInviteAccepted:sessionID:service:]";
      v17 = 1024;
      v18 = 2411;
      v19 = 2080;
      uTF8String = [sanitizedFromID UTF8String];
      v21 = 2048;
      v22 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] invite accepted - send to %s with service %p", buf, 0x26u);
    }
  }

  sanitizedFromID2 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2411, "-[IDSServiceEmbeddedController sendMessageInviteAccepted:sessionID:service:]", 7, 0, "invite accepted - send to %s with service %p", [sanitizedFromID2 UTF8String], serviceCopy);

  [(IDSServiceEmbeddedController *)self sendMessageStatusMessage:acceptedCopy sessionID:dCopy service:serviceCopy status:@"InviteAccepted"];
}

- (void)sendMessageTCAccepted
{
  sanitizedFromID = [(IDSServiceEmbeddedController *)self sanitizedFromID];
  pendingSession = [(IDSServiceEmbeddedController *)self pendingSession];
  sessionID = [pendingSession sessionID];
  idsService = [(IDSServiceEmbeddedController *)self idsService];
  [(IDSServiceEmbeddedController *)self sendMessageTCAccepted:sanitizedFromID sessionID:sessionID service:idsService];
}

- (void)sendMessageTCAccepted:(id)accepted sessionID:(id)d service:(id)service
{
  serviceCopy = service;
  dCopy = d;
  acceptedCopy = accepted;
  v11 = sub_1000423E0();
  if (v11)
  {
    v12 = sub_100042E68(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sanitizedFromID = [(IDSServiceEmbeddedController *)self sanitizedFromID];
      *buf = 136315906;
      v16 = "[IDSServiceEmbeddedController sendMessageTCAccepted:sessionID:service:]";
      v17 = 1024;
      v18 = 2422;
      v19 = 2080;
      uTF8String = [sanitizedFromID UTF8String];
      v21 = 2048;
      v22 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] TC accepted - send to %s with service %p", buf, 0x26u);
    }
  }

  sanitizedFromID2 = [(IDSServiceEmbeddedController *)self sanitizedFromID];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2422, "-[IDSServiceEmbeddedController sendMessageTCAccepted:sessionID:service:]", 7, 0, "TC accepted - send to %s with service %p", [sanitizedFromID2 UTF8String], serviceCopy);

  [(IDSServiceEmbeddedController *)self sendMessageStatusMessage:acceptedCopy sessionID:dCopy service:serviceCopy status:@"TCAccepted"];
}

- (void)sendMessageStatusMessage:(id)message sessionID:(id)d service:(id)service status:(id)status
{
  messageCopy = message;
  serviceCopy = service;
  statusCopy = status;
  dCopy = d;
  v14 = sub_1000423E0();
  if (v14)
  {
    v15 = sub_100042E68(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v23 = "[IDSServiceEmbeddedController sendMessageStatusMessage:sessionID:service:status:]";
      v24 = 1024;
      v25 = 2433;
      v26 = 2080;
      uTF8String = [statusCopy UTF8String];
      v28 = 2080;
      uTF8String2 = [messageCopy UTF8String];
      v30 = 2048;
      v31 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%s:%d] status message %s destination %s service %p", buf, 0x30u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2433, "-[IDSServiceEmbeddedController sendMessageStatusMessage:sessionID:service:status:]", 7, 0, "status message %s destination %s service %p", [statusCopy UTF8String], objc_msgSend(messageCopy, "UTF8String"), serviceCopy);
  v16 = [NSDictionary dictionaryWithObjectsAndKeys:statusCopy, @"status", dCopy, @"sessionID", 0];

  v17 = sub_1000423E0();
  if (v17)
  {
    v18 = sub_100042E68(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v16 description];
      uTF8String3 = [v19 UTF8String];
      *buf = 136315650;
      v23 = "[IDSServiceEmbeddedController sendMessageStatusMessage:sessionID:service:status:]";
      v24 = 1024;
      v25 = 2438;
      v26 = 2080;
      uTF8String = uTF8String3;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%s:%d] status message dict %s", buf, 0x1Cu);
    }
  }

  v21 = [v16 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2438, "-[IDSServiceEmbeddedController sendMessageStatusMessage:sessionID:service:status:]", 7, 0, "status message dict %s", [v21 UTF8String]);

  [(IDSServiceEmbeddedController *)self sendServiceMessage:v16 destination:messageCopy service:serviceCopy];
}

- (void)sendMessageShareStatusResultInfo:(id)info sessionID:(id)d service:(id)service systemInfo:(id)systemInfo
{
  systemInfoCopy = systemInfo;
  serviceCopy = service;
  infoCopy = info;
  [systemInfoCopy setObject:d forKeyedSubscript:@"sessionID"];
  [systemInfoCopy setObject:@"Settings" forKeyedSubscript:@"status"];
  [(IDSServiceEmbeddedController *)self sendServiceMessage:systemInfoCopy destination:infoCopy service:serviceCopy];
}

- (void)sendMessageShareStatusUserDeclined:(id)declined sessionID:(id)d service:(id)service
{
  serviceCopy = service;
  declinedCopy = declined;
  v10 = [NSDictionary dictionaryWithObjectsAndKeys:@"UserDeclined", @"status", d, @"sessionID", 0];
  v11 = sub_1000423E0();
  if (v11)
  {
    v12 = sub_100042E68(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v10 description];
      *buf = 136315650;
      v16 = "[IDSServiceEmbeddedController sendMessageShareStatusUserDeclined:sessionID:service:]";
      v17 = 1024;
      v18 = 2456;
      v19 = 2080;
      uTF8String = [v13 UTF8String];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] decline status request %s", buf, 0x1Cu);
    }
  }

  v14 = [v10 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2456, "-[IDSServiceEmbeddedController sendMessageShareStatusUserDeclined:sessionID:service:]", 7, 0, "decline status request %s", [v14 UTF8String]);

  [(IDSServiceEmbeddedController *)self sendServiceMessage:v10 destination:declinedCopy service:serviceCopy];
}

- (void)sendServiceMessage:(id)message destination:(id)destination service:(id)service
{
  messageCopy = message;
  destinationCopy = destination;
  serviceCopy = service;
  v37[0] = IDSSendMessageOptionFireAndForgetKey;
  v37[1] = IDSSendMessageOptionWantsClientAcknowledgementKey;
  v38[0] = &__kCFBooleanTrue;
  v38[1] = &__kCFBooleanTrue;
  v37[2] = IDSSendMessageOptionAlwaysSkipSelfKey;
  v38[2] = &__kCFBooleanTrue;
  v10 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:3];
  v11 = sub_1000423E0();
  if (v11)
  {
    v12 = sub_100042E68(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [messageCopy description];
      *buf = 136316162;
      v30 = "[IDSServiceEmbeddedController sendServiceMessage:destination:service:]";
      v31 = 1024;
      v32 = 2471;
      v33 = 2080;
      *v34 = [v13 UTF8String];
      *&v34[8] = 2080;
      *&v34[10] = [destinationCopy UTF8String];
      v35 = 2048;
      v36 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] sendServiceMessage dict = %s  destination %s  sercice %p", buf, 0x30u);
    }
  }

  v14 = [messageCopy description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2471, "-[IDSServiceEmbeddedController sendServiceMessage:destination:service:]", 7, 0, "sendServiceMessage dict = %s  destination %s  sercice %p", [v14 UTF8String], objc_msgSend(destinationCopy, "UTF8String"), serviceCopy);

  v15 = [NSSet setWithObject:destinationCopy];
  v27 = 0;
  v28 = 0;
  v16 = [serviceCopy sendMessage:messageCopy toDestinations:v15 priority:300 options:v10 identifier:&v28 error:&v27];
  v17 = v28;
  v18 = v27;

  v19 = sub_1000423E0();
  if (v19)
  {
    v20 = sub_100042E68(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String = [v17 UTF8String];
      *buf = 136315906;
      v30 = "[IDSServiceEmbeddedController sendServiceMessage:destination:service:]";
      v31 = 1024;
      v32 = 2478;
      v33 = 1024;
      *v34 = v16;
      *&v34[4] = 2080;
      *&v34[6] = uTF8String;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] sendMessage result %d message uuid %s", buf, 0x22u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2478, "-[IDSServiceEmbeddedController sendServiceMessage:destination:service:]", 7, 0, "sendMessage result %d message uuid %s", v16, [v17 UTF8String]);
  if (v18)
  {
    v22 = sub_1000423E0();
    if (v22)
    {
      v23 = sub_100042E68(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = [v18 description];
        uTF8String2 = [v24 UTF8String];
        *buf = 136315650;
        v30 = "[IDSServiceEmbeddedController sendServiceMessage:destination:service:]";
        v31 = 1024;
        v32 = 2480;
        v33 = 2080;
        *v34 = uTF8String2;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[%s:%d] sendMessage error: %s", buf, 0x1Cu);
      }
    }

    v26 = [v18 description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2480, "-[IDSServiceEmbeddedController sendServiceMessage:destination:service:]", 3, 0, "sendMessage error: %s", [v26 UTF8String]);
  }
}

- (void)initViewServiceHelper
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020F30;
  block[3] = &unk_100068CB0;
  block[4] = self;
  if (qword_100070A80 != -1)
  {
    dispatch_once(&qword_100070A80, block);
  }
}

- (BOOL)inviterIsInActiveSession:(id)session
{
  sessionCopy = session;
  v5 = sub_1000423E0();
  if (v5)
  {
    v6 = sub_100042E68(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v29 = "[IDSServiceEmbeddedController inviterIsInActiveSession:]";
      v30 = 1024;
      v31 = 2496;
      v32 = 2080;
      uTF8String = [sessionCopy UTF8String];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] check if %s in active session", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2496, "-[IDSServiceEmbeddedController inviterIsInActiveSession:]", 7, 0, "check if %s in active session", [sessionCopy UTF8String]);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  activeSessions = [(IDSServiceEmbeddedController *)self activeSessions];
  allValues = [activeSessions allValues];

  v9 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = sub_1000423E0();
        if (v14)
        {
          v15 = sub_100042E68(v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            inviterID = [v13 inviterID];
            uTF8String2 = [inviterID UTF8String];
            *buf = 136315650;
            v29 = "[IDSServiceEmbeddedController inviterIsInActiveSession:]";
            v30 = 1024;
            v31 = 2499;
            v32 = 2080;
            uTF8String = uTF8String2;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%s:%d] check active session inviterID %s", buf, 0x1Cu);
          }
        }

        inviterID2 = [v13 inviterID];
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2499, "-[IDSServiceEmbeddedController inviterIsInActiveSession:]", 7, 0, "check active session inviterID %s", [inviterID2 UTF8String]);

        inviterID3 = [v13 inviterID];
        v20 = [inviterID3 isEqualToString:sessionCopy];

        if (v20)
        {
          v21 = 1;
          goto LABEL_19;
        }
      }

      v10 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v21 = 0;
LABEL_19:

  return v21;
}

- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context
{
  identifierCopy = identifier;
  v7 = sub_1000423E0();
  if (v7)
  {
    v8 = sub_100042E68(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v10 = "[IDSServiceEmbeddedController service:account:identifier:hasBeenDeliveredWithContext:]";
      v11 = 1024;
      v12 = 2511;
      v13 = 2080;
      uTF8String = [identifierCopy UTF8String];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] hasBeenDeliveredWithContext %s", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2511, "-[IDSServiceEmbeddedController service:account:identifier:hasBeenDeliveredWithContext:]", 7, 0, "hasBeenDeliveredWithContext %s", [identifierCopy UTF8String]);
}

- (void)service:(id)service account:(id)account incomingPendingMessageOfType:(int64_t)type fromID:(id)d context:(id)context
{
  v7 = sub_1000423E0();
  if (v7)
  {
    v8 = sub_100042E68(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[IDSServiceEmbeddedController service:account:incomingPendingMessageOfType:fromID:context:]";
      v11 = 1024;
      v12 = 2516;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] incomingPendingMessageOfType", &v9, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2516, "[IDSServiceEmbeddedController service:account:incomingPendingMessageOfType:fromID:context:]", 7, 0, "incomingPendingMessageOfType");
}

- (void)service:(id)service connectedDevicesChanged:(id)changed
{
  v4 = sub_1000423E0();
  if (v4)
  {
    v5 = sub_100042E68(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[IDSServiceEmbeddedController service:connectedDevicesChanged:]";
      v8 = 1024;
      v9 = 2521;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] connectedDevicesChanged", &v6, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2521, "[IDSServiceEmbeddedController service:connectedDevicesChanged:]", 7, 0, "connectedDevicesChanged");
}

- (void)service:(id)service linkedDevicesChanged:(id)changed
{
  v4 = sub_1000423E0();
  if (v4)
  {
    v5 = sub_100042E68(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[IDSServiceEmbeddedController service:linkedDevicesChanged:]";
      v8 = 1024;
      v9 = 2526;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] linkedDevicesChanged", &v6, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2526, "[IDSServiceEmbeddedController service:linkedDevicesChanged:]", 7, 0, "linkedDevicesChanged");
}

- (void)service:(id)service account:(id)account identifier:(id)identifier sentBytes:(int64_t)bytes totalBytes:(int64_t)totalBytes
{
  v7 = sub_1000423E0();
  if (v7)
  {
    v8 = sub_100042E68(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[IDSServiceEmbeddedController service:account:identifier:sentBytes:totalBytes:]";
      v11 = 1024;
      v12 = 2531;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] sentBytes", &v9, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2531, "[IDSServiceEmbeddedController service:account:identifier:sentBytes:totalBytes:]", 7, 0, "sentBytes");
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  v7 = sub_1000423E0();
  if (v7)
  {
    v8 = sub_100042E68(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[IDSServiceEmbeddedController service:account:incomingData:fromID:context:]";
      v11 = 1024;
      v12 = 2535;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] incomingData", &v9, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2535, "[IDSServiceEmbeddedController service:account:incomingData:fromID:context:]", 7, 0, "incomingData");
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  v7 = sub_1000423E0();
  if (v7)
  {
    v8 = sub_100042E68(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[IDSServiceEmbeddedController service:account:incomingUnhandledProtobuf:fromID:context:]";
      v11 = 1024;
      v12 = 2539;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] incomingUnhandledProtobuf", &v9, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2539, "[IDSServiceEmbeddedController service:account:incomingUnhandledProtobuf:fromID:context:]", 7, 0, "incomingUnhandledProtobuf");
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l fromID:(id)d context:(id)context
{
  v7 = sub_1000423E0();
  if (v7)
  {
    v8 = sub_100042E68(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[IDSServiceEmbeddedController service:account:incomingResourceAtURL:fromID:context:]";
      v11 = 1024;
      v12 = 2543;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] incomingResourceAtURL", &v9, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2543, "[IDSServiceEmbeddedController service:account:incomingResourceAtURL:fromID:context:]", 7, 0, "incomingResourceAtURL");
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  v8 = sub_1000423E0();
  if (v8)
  {
    v9 = sub_100042E68(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[IDSServiceEmbeddedController service:account:incomingResourceAtURL:metadata:fromID:context:]";
      v12 = 1024;
      v13 = 2547;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] incomingResourceAtURL", &v10, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2547, "[IDSServiceEmbeddedController service:account:incomingResourceAtURL:metadata:fromID:context:]", 7, 0, "incomingResourceAtURL");
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  v4 = sub_1000423E0();
  if (v4)
  {
    v5 = sub_100042E68(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[IDSServiceEmbeddedController service:activeAccountsChanged:]";
      v8 = 1024;
      v9 = 2552;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] activeAccountsChanged", &v6, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2552, "[IDSServiceEmbeddedController service:activeAccountsChanged:]", 7, 0, "activeAccountsChanged");
}

- (void)service:(id)service devicesChanged:(id)changed
{
  v4 = sub_1000423E0();
  if (v4)
  {
    v5 = sub_100042E68(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[IDSServiceEmbeddedController service:devicesChanged:]";
      v8 = 1024;
      v9 = 2556;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] devicesChanged", &v6, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2556, "[IDSServiceEmbeddedController service:devicesChanged:]", 7, 0, "devicesChanged");
}

- (void)service:(id)service nearbyDevicesChanged:(id)changed
{
  v4 = sub_1000423E0();
  if (v4)
  {
    v5 = sub_100042E68(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[IDSServiceEmbeddedController service:nearbyDevicesChanged:]";
      v8 = 1024;
      v9 = 2560;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] nearbyDevicesChanged", &v6, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2560, "[IDSServiceEmbeddedController service:nearbyDevicesChanged:]", 7, 0, "nearbyDevicesChanged");
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  identifierCopy = identifier;
  errorCopy = error;
  v11 = sub_1000423E0();
  if (v11)
  {
    v12 = sub_100042E68(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v14 = "[IDSServiceEmbeddedController service:account:identifier:didSendWithSuccess:error:]";
      v15 = 1024;
      v16 = 2564;
      v17 = 1024;
      v18 = successCopy;
      v19 = 2048;
      code = [errorCopy code];
      v21 = 2080;
      uTF8String = [identifierCopy UTF8String];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] didSendWithSuccess success %d error code %ld  id %s", buf, 0x2Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2564, "-[IDSServiceEmbeddedController service:account:identifier:didSendWithSuccess:error:]", 7, 0, "didSendWithSuccess success %d error code %ld  id %s", successCopy, [errorCopy code], objc_msgSend(identifierCopy, "UTF8String"));
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  successCopy = success;
  identifierCopy = identifier;
  errorCopy = error;
  v12 = sub_1000423E0();
  if (v12)
  {
    v13 = sub_100042E68(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v15 = "[IDSServiceEmbeddedController service:account:identifier:didSendWithSuccess:error:context:]";
      v16 = 1024;
      v17 = 2568;
      v18 = 1024;
      v19 = successCopy;
      v20 = 2048;
      code = [errorCopy code];
      v22 = 2080;
      uTF8String = [identifierCopy UTF8String];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%s:%d] didSendWithSuccess success %d error code %ld  id %s", buf, 0x2Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2568, "-[IDSServiceEmbeddedController service:account:identifier:didSendWithSuccess:error:context:]", 7, 0, "didSendWithSuccess success %d error code %ld  id %s", successCopy, [errorCopy code], objc_msgSend(identifierCopy, "UTF8String"));
}

- (void)serviceSpaceDidBecomeAvailable:(id)available
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[IDSServiceEmbeddedController serviceSpaceDidBecomeAvailable:]";
      v7 = 1024;
      v8 = 2572;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] serviceSpaceDidBecomeAvailable", &v5, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2572, "[IDSServiceEmbeddedController serviceSpaceDidBecomeAvailable:]", 7, 0, "serviceSpaceDidBecomeAvailable");
}

- (void)serviceAllowedTrafficClassifiersDidReset:(id)reset
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[IDSServiceEmbeddedController serviceAllowedTrafficClassifiersDidReset:]";
      v7 = 1024;
      v8 = 2576;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] serviceAllowedTrafficClassifiersDidReset", &v5, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2576, "[IDSServiceEmbeddedController serviceAllowedTrafficClassifiersDidReset:]", 7, 0, "serviceAllowedTrafficClassifiersDidReset");
}

@end