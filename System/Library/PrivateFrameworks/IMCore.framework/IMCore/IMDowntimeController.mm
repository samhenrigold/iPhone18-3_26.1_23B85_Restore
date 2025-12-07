@interface IMDowntimeController
+ (id)fetchEmergencyNumbersSetWithProviderManager:(id)manager;
+ (id)sharedInstance;
- (BOOL)_allowedToShowConversationWithHandleIDs:(id)ds sync:(BOOL)sync context:(id *)context participantIDsHash:(id)hash trackingChat:(id)chat;
- (BOOL)allowedToShowAppExtensionWithBundleIdentifier:(id)identifier;
- (BOOL)allowedToShowConversationForChat:(id)chat sync:(BOOL)sync;
- (BOOL)isDowntimeLimited;
- (BOOL)isEmergencyHandle:(id)handle;
- (IMDowntimeController)init;
- (id)STConversation;
- (id)conversationContextForChat:(id)chat;
- (id)emergencyNumbers;
- (void)_addObserversToChat:(id)chat;
- (void)_doRegisterForScreenTimeNotifications;
- (void)_participantsForChatDidChange:(id)change;
- (void)fetchScreenTimeAppPolicy;
- (void)getSTConversation:(id)conversation;
- (void)initializeContext:(id)context participantIDsHash:(id)hash trackingChat:(id)chat;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)providersChangedForProviderManager:(id)manager;
- (void)registerForScreenTimeNotifications;
- (void)setEmergencyNumbers:(id)numbers;
@end

@implementation IMDowntimeController

+ (id)sharedInstance
{
  if (qword_1ED767940 != -1)
  {
    sub_1A8259188();
  }

  v3 = qword_1ED7678E0;

  return v3;
}

- (IMDowntimeController)init
{
  v27.receiver = self;
  v27.super_class = IMDowntimeController;
  v2 = [(IMDowntimeController *)&v27 init];
  if (v2)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Setting up screentime downtime controller", &buf, 2u);
      }
    }

    if (+[IMDowntimeController isContactLimitsFeatureEnabled])
    {
      if (IMOSLoggingEnabled())
      {
        v4 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Contact Limits Feature Active", &buf, 2u);
        }
      }

      v2->_stateLock._os_unfair_lock_opaque = 0;
      v5 = objc_opt_new();
      [(IMDowntimeController *)v2 setPolicyCache:v5];

      v6 = dispatch_queue_create("com.apple.messages.private.IMDowntimeController", 0);
      screenTimeDispatchQueue = v2->_screenTimeDispatchQueue;
      v2->_screenTimeDispatchQueue = v6;

      v8 = dispatch_queue_create("com.apple.messages.private.IMDowntimeController.setup", 0);
      setupDispatchQueue = v2->_setupDispatchQueue;
      v2->_setupDispatchQueue = v8;

      v10 = objc_alloc_init(MEMORY[0x1E69D8A90]);
      callProviderManager = v2->_callProviderManager;
      v2->_callProviderManager = v10;

      [(TUCallProviderManager *)v2->_callProviderManager addDelegate:v2 queue:MEMORY[0x1E69E96A0]];
      v12 = v2->_setupDispatchQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A825967C;
      block[3] = &unk_1E780FCB0;
      v26 = v2;
      dispatch_async(v12, block);
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    bundleIDPolicyMap = v2->_bundleIDPolicyMap;
    v2->_bundleIDPolicyMap = dictionary;

    objc_initWeak(&buf, v2);
    v15 = dispatch_get_global_queue(-2, 0);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1A82597A0;
    v22[3] = &unk_1E780FDC8;
    objc_copyWeak(&v23, &buf);
    dispatch_async(v15, v22);

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1A825EF3C;
    v20[3] = &unk_1E7810118;
    objc_copyWeak(&v21, &buf);
    v18 = [defaultCenter addObserverForName:@"__kIMBalloonPluginManagerInstalledAppsChangedNotification" object:0 queue:mainQueue usingBlock:v20];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&buf);
  }

  return v2;
}

- (id)emergencyNumbers
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = self->_stateLock_emergencyNumbersSet;
  os_unfair_lock_unlock(&self->_stateLock);

  return v3;
}

- (id)STConversation
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1A8259BF0;
  v9 = sub_1A825AF24;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A8259E30;
  v4[3] = &unk_1E78130C8;
  v4[4] = &v5;
  [(IMDowntimeController *)self getSTConversation:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)registerForScreenTimeNotifications
{
  if (+[IMDowntimeController isContactLimitsFeatureEnabled])
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1A825C0DC;
    v5[3] = &unk_1E7813168;
    v5[4] = self;
    v5[5] = &v6;
    [(IMDowntimeController *)self getSTConversation:v5];
    if (*(v7 + 24) == 1)
    {
      if (IMOSLoggingEnabled())
      {
        v3 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          *v4 = 0;
          _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Delaying registering for screentime state change notification as setup is not finished.", v4, 2u);
        }
      }
    }

    else
    {
      [(IMDowntimeController *)self _doRegisterForScreenTimeNotifications];
    }

    _Block_object_dispose(&v6, 8);
  }
}

- (void)_doRegisterForScreenTimeNotifications
{
  v15 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = qword_1ED7676F0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Registering for screentime state change notification %s", buf, 0xCu);
    }
  }

  v4 = qword_1ED7676F0;
  if (!qword_1ED7676F0)
  {
    *buf = xmmword_1E7813188;
    v13 = *off_1E7813198;
    v14 = 635;
    v5 = MEMORY[0x1E696AEC0];
    v6 = IMFileLocationTrimFileName();
    v7 = v14;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1B76F98];
    v9 = [v5 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"IMSTManagementStateStateDidChangeNotificationName", "-[IMDowntimeController _doRegisterForScreenTimeNotifications]", v6, v7, v8];

    v10 = IMGetAssertionFailureHandler();
    if (v10)
    {
      v10(v9);
    }

    else
    {
      warning = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E1AB0();
      }
    }

    v4 = qword_1ED7676F0;
  }

  self->_needsNotificationsRegistering = 0;
  *buf = 0;
  notify_register_dispatch(v4, buf, MEMORY[0x1E69E96A0], &unk_1F1B6EE80);
}

- (void)fetchScreenTimeAppPolicy
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[IMBalloonPluginManager sharedInstance];
  v4 = objc_opt_new();
  allPlugins = [v3 allPlugins];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1A825F418;
  v14[3] = &unk_1E78131D8;
  v6 = v4;
  v15 = v6;
  [allPlugins enumerateObjectsUsingBlock:v14];

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Fetching application downtime policies for bundleIDs: %@", buf, 0xCu);
    }
  }

  appPolicyMonitor = [(IMDowntimeController *)self appPolicyMonitor];
  allObjects = [v6 allObjects];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A834D640;
  v11[3] = &unk_1E7813200;
  v12 = v6;
  selfCopy = self;
  v10 = v6;
  [appPolicyMonitor requestPoliciesForBundleIdentifiers:allObjects completionHandler:v11];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  if (qword_1EB2E54E8 == context)
  {
    if (+[IMDowntimeController isContactLimitsFeatureEnabled])
    {
      v11 = objectCopy;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1A834C094;
      v12[3] = &unk_1E7810140;
      v12[4] = self;
      v13 = v11;
      dispatch_async(MEMORY[0x1E69E96A0], v12);
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = IMDowntimeController;
    [(IMDowntimeController *)&v14 observeValueForKeyPath:path ofObject:objectCopy change:change context:context];
  }
}

+ (id)fetchEmergencyNumbersSetWithProviderManager:(id)manager
{
  emergencyProvider = [manager emergencyProvider];
  emergencyHandles = [emergencyProvider emergencyHandles];
  v5 = [emergencyHandles __imArrayByApplyingBlock:&unk_1F1B6EE40];

  v6 = [MEMORY[0x1E695DFD8] setWithArray:v5];

  return v6;
}

- (void)initializeContext:(id)context participantIDsHash:(id)hash trackingChat:(id)chat
{
  contextCopy = context;
  chatCopy = chat;
  hashCopy = hash;
  policyCache = [(IMDowntimeController *)self policyCache];
  [policyCache addTrackingForConversationContext:contextCopy forParticipantIDsHash:hashCopy];

  [contextCopy addObserver:self forKeyPath:@"allowedByScreenTime" options:5 context:qword_1EB2E54E8];
  if (chatCopy)
  {
    [chatCopy downtimeControllerInitializedContextWithAllowedByScreenTime:{objc_msgSend(contextCopy, "allowedByScreenTime")}];
  }
}

- (void)setEmergencyNumbers:(id)numbers
{
  numbersCopy = numbers;
  os_unfair_lock_lock(&self->_stateLock);
  stateLock_emergencyNumbersSet = self->_stateLock_emergencyNumbersSet;
  self->_stateLock_emergencyNumbersSet = numbersCopy;

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)getSTConversation:(id)conversation
{
  conversationCopy = conversation;
  os_unfair_lock_lock(&self->_stateLock);
  conversationCopy[2](conversationCopy, self->_stateLock_STConversation);

  os_unfair_lock_unlock(&self->_stateLock);
}

- (BOOL)_allowedToShowConversationWithHandleIDs:(id)ds sync:(BOOL)sync context:(id *)context participantIDsHash:(id)hash trackingChat:(id)chat
{
  syncCopy = sync;
  dsCopy = ds;
  hashCopy = hash;
  chatCopy = chat;
  if (+[IMDowntimeController isContactLimitsFeatureEnabled])
  {
    contextCopy = context;
    if (hashCopy)
    {
      v15 = hashCopy;
    }

    else
    {
      v15 = IMHashOfHashesForStringArray(dsCopy);
    }

    v17 = v15;
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = sub_1A8259BF0;
    v49 = sub_1A825AF24;
    v50 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A834C7D4;
    aBlock[3] = &unk_1E7813140;
    v34 = dsCopy;
    v30 = v17;
    v35 = v30;
    selfCopy = self;
    v38 = &v41;
    v39 = &v45;
    v40 = syncCopy;
    v18 = chatCopy;
    v37 = v18;
    v19 = _Block_copy(aBlock);
    emergencyNumbers = [(IMDowntimeController *)self emergencyNumbers];
    sTConversation = [(IMDowntimeController *)self STConversation];
    v22 = sTConversation;
    if (emergencyNumbers && sTConversation)
    {
      v16 = v19[2](v19, emergencyNumbers, sTConversation);
    }

    else
    {
      if (syncCopy)
      {
        dispatch_sync(self->_setupDispatchQueue, &unk_1F1B6EE60);
        emergencyNumbers2 = [(IMDowntimeController *)self emergencyNumbers];
        sTConversation2 = [(IMDowntimeController *)self STConversation];
        v16 = v19[2](v19, emergencyNumbers2, sTConversation2);
      }

      else
      {
        policyCache = [(IMDowntimeController *)self policyCache];
        [policyCache addSentinelContextForParticipantIDsHash:v30];

        setupDispatchQueue = self->_setupDispatchQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1A834CD78;
        block[3] = &unk_1E7810230;
        block[4] = self;
        v32 = v19;
        dispatch_async(setupDispatchQueue, block);
        v16 = 1;
        emergencyNumbers2 = v32;
      }
    }

    if (contextCopy)
    {
      *contextCopy = v46[5];
    }

    if (v18)
    {
      if (v42[3])
      {
        v27 = v46[5];
        if (v27)
        {
          [v18 updateCachedAllowedByScreenTime:{objc_msgSend(v27, "allowedByScreenTime")}];
        }
      }
    }

    _Block_object_dispose(&v41, 8);
    _Block_object_dispose(&v45, 8);
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (BOOL)allowedToShowConversationForChat:(id)chat sync:(BOOL)sync
{
  syncCopy = sync;
  v28 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  v7 = +[IMDowntimeController isContactLimitsFeatureEnabled];
  LOBYTE(v8) = 1;
  if (chatCopy && v7)
  {
    participants = [chatCopy participants];
    v10 = [participants count];

    if (v10 && (syncCopy || (-[IMDowntimeController policyCache](self, "policyCache"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isFetchingCommLimitsPolicyForChat:chatCopy], v11, (v12 & 1) == 0)))
    {
      policyCache = [(IMDowntimeController *)self policyCache];
      v14 = [policyCache conversationContextForChat:chatCopy];

      if (v14)
      {
        LOBYTE(v8) = [v14 allowedByScreenTime];
      }

      else
      {
        participantHandleIDs = [chatCopy participantHandleIDs];
        v16 = IMHashOfHashesForStringArray(participantHandleIDs);

        policyCache2 = [(IMDowntimeController *)self policyCache];
        [policyCache2 addTrackingForChat:chatCopy participantIDsHash:v16];

        [(IMDowntimeController *)self _addObserversToChat:chatCopy];
        participantHandleIDs2 = [chatCopy participantHandleIDs];
        v8 = [(IMDowntimeController *)self _allowedToShowConversationWithHandleIDs:participantHandleIDs2 sync:syncCopy context:0 participantIDsHash:v16 trackingChat:chatCopy];

        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = @"NO";
            v22 = 138412802;
            v23 = chatCopy;
            v24 = 2112;
            if (v8)
            {
              v20 = @"YES";
            }

            v25 = v20;
            v26 = 2112;
            v27 = v16;
            _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Subscribed to Comm Limit policy for chat: %@ allowed: %@ participantIDsHash: %@", &v22, 0x20u);
          }
        }
      }
    }

    else
    {
      LOBYTE(v8) = 1;
    }
  }

  return v8;
}

- (BOOL)isDowntimeLimited
{
  v3 = IMHashOfHashesForStringArray(&unk_1F1BA1740);
  policyCache = [(IMDowntimeController *)self policyCache];
  v5 = [policyCache contextForParticipantIDsHash:v3];

  if (!v5 || ([MEMORY[0x1E695DFB0] null], v6 = objc_claimAutoreleasedReturnValue(), v6, v5 == v6))
  {
    v8 = [[qword_1ED767700 alloc] initWithBundleIdentifier:@"com.apple.MobileSMS"];
    v9 = [v8 allowableByContactsHandles:&unk_1F1BA1740];
    [(IMDowntimeController *)self initializeContext:v9 participantIDsHash:v3 trackingChat:0];
    applicationCurrentlyLimited = [v9 applicationCurrentlyLimited];
  }

  else
  {
    applicationCurrentlyLimited = [v5 applicationCurrentlyLimited];
  }

  return applicationCurrentlyLimited;
}

- (BOOL)isEmergencyHandle:(id)handle
{
  v4 = MEMORY[0x1E696AB08];
  handleCopy = handle;
  whitespaceAndNewlineCharacterSet = [v4 whitespaceAndNewlineCharacterSet];
  v7 = [handleCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  controlCharacterSet = [MEMORY[0x1E696AB08] controlCharacterSet];
  v9 = [v7 stringByTrimmingCharactersInSet:controlCharacterSet];

  emergencyNumbers = [(IMDowntimeController *)self emergencyNumbers];
  LOBYTE(controlCharacterSet) = [emergencyNumbers containsObject:v9];

  return controlCharacterSet;
}

- (void)_addObserversToChat:(id)chat
{
  if (chat)
  {
    v4 = MEMORY[0x1E696AD88];
    chatCopy = chat;
    defaultCenter = [v4 defaultCenter];
    [defaultCenter removeObserver:self name:@"__kIMChatParticipantsDidChangeNotification" object:chatCopy];
    [defaultCenter addObserver:self selector:sel__participantsForChatDidChange_ name:@"__kIMChatParticipantsDidChangeNotification" object:chatCopy];
  }
}

- (void)_participantsForChatDidChange:(id)change
{
  changeCopy = change;
  if (+[IMDowntimeController isContactLimitsFeatureEnabled])
  {
    object = [changeCopy object];
    if (object)
    {
      v6 = [(IMDowntimeController *)self conversationContextForChat:object];
      policyCache = [(IMDowntimeController *)self policyCache];
      [policyCache removeTrackingForChat:object];

      [v6 removeObserver:self forKeyPath:@"allowedByScreenTime" context:qword_1EB2E54E8];
      [(IMDowntimeController *)self allowedToShowConversationForChat:object sync:0];
    }

    else
    {
      v8 = IMLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E1B18();
      }
    }
  }
}

- (id)conversationContextForChat:(id)chat
{
  chatCopy = chat;
  if (+[IMDowntimeController isContactLimitsFeatureEnabled])
  {
    policyCache = [(IMDowntimeController *)self policyCache];
    v6 = [policyCache conversationContextForChat:chatCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)providersChangedForProviderManager:(id)manager
{
  if (+[IMDowntimeController isContactLimitsFeatureEnabled])
  {
    v4 = objc_opt_class();
    callProviderManager = [(IMDowntimeController *)self callProviderManager];
    v6 = [v4 fetchEmergencyNumbersSetWithProviderManager:callProviderManager];

    [(IMDowntimeController *)self setEmergencyNumbers:v6];
  }
}

- (BOOL)allowedToShowAppExtensionWithBundleIdentifier:(id)identifier
{
  if (!identifier)
  {
    return 1;
  }

  identifierCopy = identifier;
  bundleIDPolicyMap = [(IMDowntimeController *)self bundleIDPolicyMap];
  v6 = [bundleIDPolicyMap objectForKeyedSubscript:identifierCopy];

  if (v6)
  {
    v7 = [v6 integerValue] == 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end