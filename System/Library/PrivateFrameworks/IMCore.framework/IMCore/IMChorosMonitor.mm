@interface IMChorosMonitor
+ (id)roadsideProviderIDFromChatIdentifier:(id)identifier;
+ (id)sharedInstance;
+ (int64_t)serviceFromChatIdentifier:(id)identifier;
- (BOOL)isMessagingActiveOverSatellite;
- (BOOL)isSatelliteConnectionActive;
- (BOOL)isStewieActive;
- (BOOL)isStewieEmergencyActive;
- (BOOL)isStewieRoadsideActive;
- (BOOL)shouldShowTextEmergencyServicesButton;
- (BOOL)shouldShowTextRoadsideProviderButton;
- (CoreTelephonyClient)telephonyClient;
- (IMChorosMonitor)init;
- (NSDictionary)emergencyHandles;
- (id)mostRecentlyUsedRoadsideChatIdentifier;
- (id)roadsideBusinessIDForChatIdentifier:(id)identifier;
- (id)roadsideBusinessIDForProviderId:(int64_t)id;
- (id)roadsideProviderForProviderId:(int64_t)id;
- (id)roadsideProviderNameForChatIdentifier:(id)identifier;
- (id)roadsideProviderNameForProviderId:(int64_t)id;
- (void)_setStewieRoadsideContext:(id)context forChat:(id)chat;
- (void)launchStewieForMessagingWithAppForegrounded:(BOOL)foregrounded;
- (void)openStewieAppForChatIdentifier:(id)identifier completion:(id)completion;
- (void)placeEmergencyCallToHandle:(id)handle completion:(id)completion;
- (void)presentSatelliteConnectionBannerIfNecessaryWithChat:(id)chat withReason:(id)reason ignoreTimerLimit:(BOOL)limit;
- (void)reset;
- (void)startMonitor;
- (void)startMonitorIfNeededForReason:(int64_t)reason withOffer:(BOOL)offer callInBackground:(BOOL)background;
- (void)stateChanged:(id)changed;
@end

@implementation IMChorosMonitor

+ (id)sharedInstance
{
  if (qword_1ED767938 != -1)
  {
    sub_1A82572B4();
  }

  v3 = qword_1ED7678D8;

  return v3;
}

- (IMChorosMonitor)init
{
  v9.receiver = self;
  v9.super_class = IMChorosMonitor;
  v2 = [(IMChorosMonitor *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E6965080]);
    v4 = [v3 initWithDelegate:v2 queue:MEMORY[0x1E69E96A0]];
    coreTelephonyStewieMonitor = v2->_coreTelephonyStewieMonitor;
    v2->_coreTelephonyStewieMonitor = v4;

    if (!v2->_coreTelephonyStewieMonitor)
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *v8 = 0;
          _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Failed to load monitor", v8, 2u);
        }
      }
    }
  }

  return v2;
}

- (BOOL)isSatelliteConnectionActive
{
  getState = [(IMChorosMonitor *)self getState];
  isStewieActiveOverBB = [getState isStewieActiveOverBB];

  return isStewieActiveOverBB;
}

- (BOOL)isMessagingActiveOverSatellite
{
  getState = [(IMChorosMonitor *)self getState];
  v3 = [getState isActiveService:16];
  v4 = [getState isActiveService:32];
  if ((v3 & 1) != 0 || v4)
  {
    isStewieActiveOverBB = [getState isStewieActiveOverBB];
  }

  else
  {
    isStewieActiveOverBB = 0;
  }

  return isStewieActiveOverBB;
}

- (BOOL)isStewieActive
{
  getState = [(IMChorosMonitor *)self getState];
  v3 = 1;
  if (([getState isActiveService:1] & 1) == 0)
  {
    v3 = [getState isActiveService:8];
  }

  return v3;
}

- (void)presentSatelliteConnectionBannerIfNecessaryWithChat:(id)chat withReason:(id)reason ignoreTimerLimit:(BOOL)limit
{
  limitCopy = limit;
  v54 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  reasonCopy = reason;
  if ([(IMChorosMonitor *)self needsShowConnectionUI]&& [(IMChorosMonitor *)self monitorStarted])
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Got pending request to show Connection UI. Not show Offer pill.", buf, 2u);
    }

    [(IMChorosMonitor *)self launchStewieForMessagingWithAppForegrounded:1];
    goto LABEL_30;
  }

  v11 = IMLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v51 = reasonCopy;
    _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Try to present offer for reason: %@", buf, 0xCu);
  }

  if (!chatCopy || [chatCopy isSatelliteMessagingCompatible])
  {
    v42 = limitCopy;
    v46 = reasonCopy;
    v12 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
    v13 = [v12 objectForKey:@"when-to-first-show-OTG-banner"];
    v14 = [v12 objectForKey:@"how-often-to-show-OTG-banner"];
    v15 = [v12 objectForKey:@"when-to-stop-showing-OTG-banner"];
    messagesAppDomain = [MEMORY[0x1E695E000] messagesAppDomain];
    v17 = MEMORY[0x1E69A7850];
    v18 = [messagesAppDomain integerForKey:*MEMORY[0x1E69A7850]];

    messagesAppDomain2 = [MEMORY[0x1E695E000] messagesAppDomain];
    v44 = [messagesAppDomain2 integerForKey:*MEMORY[0x1E69A7D20]];

    getState = [(IMChorosMonitor *)self getState];
    v45 = v15;
    if ([MEMORY[0x1E69A81A8] isAnyServicesAvailableFor:getState])
    {
      v43 = v13;
      messagesAppDomain3 = [MEMORY[0x1E695E000] messagesAppDomain];
      [messagesAppDomain3 setInteger:v18 + 1 forKey:*v17];

      if ([v15 integerValue] <= 0 || (v22 = v15, v44 < objc_msgSend(v15, "integerValue")))
      {
        v23 = v14;
        if ([v14 integerValue] && v18 % objc_msgSend(v14, "integerValue"))
        {
          v24 = IMLogHandleForCategory();
          v13 = v43;
          reasonCopy = v46;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            integerValue = [v23 integerValue];
            *buf = 134218240;
            v51 = integerValue;
            v52 = 2048;
            v53 = v44;
            v26 = "Not showing satellite connection banner. Only showing banner on every %ld attempt. number of times attempted: %ld";
LABEL_23:
            v28 = v24;
            v29 = 22;
LABEL_24:
            _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, v26, buf, v29);
          }
        }

        else
        {
          v13 = v43;
          reasonCopy = v46;
          if ([v43 integerValue] - 1 <= v18)
          {
            v31 = [v12 objectForKey:@"limit-to-start-showing-OTG-banner"];
            integerValue2 = [v31 integerValue];

            if (integerValue2 <= 0)
            {
              v33 = 600;
            }

            else
            {
              v33 = integerValue2;
            }

            messagesAppDomain4 = [MEMORY[0x1E695E000] messagesAppDomain];
            v35 = [messagesAppDomain4 BOOLForKey:IMIgnoreTimerLimit];

            [(IMChorosMonitor *)self timeSinceBeingOffGrid];
            if (v36 >= v33)
            {
              if ([v46 isEqualToString:IMReasonDidBeginTyping])
              {
                v24 = IMLogHandleForCategory();
                v13 = v43;
                if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_29;
                }

                *buf = 0;
                v26 = "Not showing banner because we should have shown it when entering chat.";
                v28 = v24;
                v29 = 2;
                goto LABEL_24;
              }
            }

            else if (((v42 | v35) & 1) == 0)
            {
              v37 = v33;
              v24 = IMLogHandleForCategory();
              v13 = v43;
              if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                goto LABEL_29;
              }

              *buf = 134217984;
              v51 = v37;
              v26 = "Not showing satellite connection banner as it's been less than %ld seconds since we are without connection";
              v28 = v24;
              v29 = 12;
              goto LABEL_24;
            }

            v24 = objc_alloc_init(MEMORY[0x1E6965078]);
            [v24 setReason:8];
            v38 = *MEMORY[0x1E69654B0];
            v48[0] = *MEMORY[0x1E69654A8];
            v48[1] = v38;
            v49[0] = MEMORY[0x1E695E118];
            v49[1] = v46;
            v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];
            [v24 setMetadata:v39];

            v40 = IMLogHandleForCategory();
            v13 = v43;
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1A823F000, v40, OS_LOG_TYPE_INFO, "Requesting satellite connection banner", buf, 2u);
            }

            telephonyClient = [(IMChorosMonitor *)self telephonyClient];
            v47[0] = MEMORY[0x1E69E9820];
            v47[1] = 3221225472;
            v47[2] = sub_1A82ED2EC;
            v47[3] = &unk_1E7811CE0;
            v47[4] = v44;
            [telephonyClient requestStewieWithContext:v24 completion:v47];

            goto LABEL_29;
          }

          v24 = IMLogHandleForCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            integerValue3 = [v43 integerValue];
            *buf = 134218240;
            v51 = integerValue3;
            v52 = 2048;
            v53 = v18;
            v26 = "Not showing satellite connection banner. Only showing banner on after %ld attempts. Number of attempts: %ld";
            goto LABEL_23;
          }
        }

LABEL_29:

        goto LABEL_30;
      }

      v24 = IMLogHandleForCategory();
      v23 = v14;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        integerValue4 = [v22 integerValue];
        *buf = 134218240;
        v51 = integerValue4;
        v52 = 2048;
        v53 = v44;
        _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "Not showing satellite connection banner. Limit has been reached. Limit: %ld, number of times shown: %ld", buf, 0x16u);
      }

      v13 = v43;
    }

    else
    {
      v24 = IMLogHandleForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "Stewie state disallow displaying banner.", buf, 2u);
      }

      v23 = v14;
    }

    reasonCopy = v46;
    goto LABEL_29;
  }

LABEL_30:
}

- (void)startMonitor
{
  v4 = xmmword_1E78121D8;
  v5 = *off_1E78121E8;
  v6 = 82;
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1A84E0864(&v4, v3);
  }

  [(IMChorosMonitor *)self startMonitorWithOffer:1, v4, v5, v6];
}

- (void)startMonitorIfNeededForReason:(int64_t)reason withOffer:(BOOL)offer callInBackground:(BOOL)background
{
  backgroundCopy = background;
  if (![(IMChorosMonitor *)self monitorStarted])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A8308120;
    aBlock[3] = &unk_1E7812208;
    aBlock[4] = self;
    aBlock[5] = reason;
    offerCopy = offer;
    v9 = _Block_copy(aBlock);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1A83081D0;
    v16[3] = &unk_1E7812230;
    offerCopy2 = offer;
    v20 = backgroundCopy;
    reasonCopy = reason;
    v16[4] = self;
    v10 = v9;
    v17 = v10;
    v11 = _Block_copy(v16);
    v12 = v11;
    if (backgroundCopy)
    {
      v13 = dispatch_get_global_queue(9, 0);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1A83084A8;
      v14[3] = &unk_1E780FE90;
      v15 = v12;
      dispatch_async(v13, v14);
    }

    else
    {
      (*(v11 + 2))(v11);
    }
  }
}

- (CoreTelephonyClient)telephonyClient
{
  if (!self->_telephonyClient)
  {
    v3 = objc_alloc(MEMORY[0x1E69650A0]);
    v4 = [v3 initWithQueue:MEMORY[0x1E69E96A0]];
    telephonyClient = self->_telephonyClient;
    self->_telephonyClient = v4;

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Created new _telephonyClient", v9, 2u);
      }
    }
  }

  v7 = self->_telephonyClient;

  return v7;
}

- (void)reset
{
  telephonyClient = self->_telephonyClient;
  self->_telephonyClient = 0;

  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "relese _telephonyClient", v4, 2u);
    }
  }
}

- (void)stateChanged:(id)changed
{
  v14 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 134218752;
      activeServices = [changedCopy activeServices];
      v8 = 2048;
      allowedServices = [changedCopy allowedServices];
      v10 = 2048;
      status = [changedCopy status];
      v12 = 2048;
      transportType = [changedCopy transportType];
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Stewie status changed to: activeServices: %ld - allowedServices: %ld - status: %ld - transport: %ld", &v6, 0x2Au);
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"IMChorosMonitorStewieStatusChangedNotification" object:0];
}

- (BOOL)isStewieEmergencyActive
{
  getState = [(IMChorosMonitor *)self getState];
  v3 = [getState isActiveService:1];

  return v3;
}

- (BOOL)shouldShowTextEmergencyServicesButton
{
  getState = [(IMChorosMonitor *)self getState];
  if ([getState isActiveService:1])
  {
    v3 = 0;
  }

  else
  {
    v3 = [getState isAllowedService:1];
  }

  return v3;
}

- (void)_setStewieRoadsideContext:(id)context forChat:(id)chat
{
  v12[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  chatCopy = chat;
  v7 = [IMChorosMonitor roadsideProviderIDFromChatIdentifier:chatCopy];
  v8 = v7;
  if (v7)
  {
    v11 = *MEMORY[0x1E69654B8];
    v12[0] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [contextCopy setMetadata:v9];

    [contextCopy setReason:7];
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E0994();
    }
  }
}

- (void)openStewieAppForChatIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = objc_alloc_init(MEMORY[0x1E6965078]);
  if (IMIsStringStewieEmergency())
  {
    [v8 setReason:2];
LABEL_5:
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Requesting to open application", buf, 2u);
      }
    }

    telephonyClient = [(IMChorosMonitor *)self telephonyClient];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1A8308B08;
    v12[3] = &unk_1E7812258;
    v13 = completionCopy;
    [telephonyClient requestStewieWithContext:v8 completion:v12];

    v11 = v13;
    goto LABEL_12;
  }

  if ([IMChorosMonitor isStewieRoadsideChat:identifierCopy])
  {
    [(IMChorosMonitor *)self _setStewieRoadsideContext:v8 forChat:identifierCopy];
    goto LABEL_5;
  }

  v11 = IMLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1A84E0994();
  }

LABEL_12:
}

- (void)placeEmergencyCallToHandle:(id)handle completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  completionCopy = completion;
  v7 = objc_alloc_init(MEMORY[0x1E69D8A90]);
  v8 = objc_alloc(MEMORY[0x1E69D8BD0]);
  emergencyProvider = [v7 emergencyProvider];
  v10 = [v8 initWithProvider:emergencyProvider];

  [v10 setDialType:1];
  if (handleCopy)
  {
    [v10 setHandle:handleCopy];
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        handle = [v10 handle];
        value = [handle value];
        *buf = 138412290;
        v21 = value;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Requesting a specific handle %@ in the dial request.", buf, 0xCu);
      }
    }
  }

  v14 = IMLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_1A84E0A94();
  }

  if ([v10 isValid])
  {
    mEMORY[0x1E69D8A58] = [MEMORY[0x1E69D8A58] sharedInstance];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1A8308EB8;
    v18[3] = &unk_1E7812258;
    v19 = completionCopy;
    [mEMORY[0x1E69D8A58] launchAppForDialRequest:v10 completion:v18];

    v16 = v19;
  }

  else
  {
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E0AFC();
    }

    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMChorosMonitorPlaceEmergencyCallErrorDomain" code:1 userInfo:0];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v16);
    }
  }
}

- (NSDictionary)emergencyHandles
{
  v28 = *MEMORY[0x1E69E9840];
  emergencyHandles = self->_emergencyHandles;
  if (!emergencyHandles)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = objc_alloc_init(MEMORY[0x1E69D8A90]);
    emergencyProvider = [v5 emergencyProvider];
    v7 = emergencyProvider;
    if (emergencyProvider)
    {
      emergencyLabeledHandles = [emergencyProvider emergencyLabeledHandles];

      if (emergencyLabeledHandles)
      {
        v22 = v5;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        emergencyLabeledHandles2 = [v7 emergencyLabeledHandles];
        v10 = [emergencyLabeledHandles2 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v24;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v24 != v12)
              {
                objc_enumerationMutation(emergencyLabeledHandles2);
              }

              v14 = *(*(&v23 + 1) + 8 * i);
              label = [v14 label];

              handle = [v14 handle];
              if (label)
              {
                label2 = [v14 label];
                [v4 setObject:handle forKeyedSubscript:label2];
              }

              else
              {
                label2 = [v14 handle];
                value = [label2 value];
                [v4 setObject:handle forKeyedSubscript:value];
              }
            }

            v11 = [emergencyLabeledHandles2 countByEnumeratingWithState:&v23 objects:v27 count:16];
          }

          while (v11);
        }

        v5 = v22;
      }
    }

    v19 = [v4 copy];
    v20 = self->_emergencyHandles;
    self->_emergencyHandles = v19;

    emergencyHandles = self->_emergencyHandles;
  }

  return emergencyHandles;
}

+ (int64_t)serviceFromChatIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (IMIsStringStewieEmergency())
  {
    v4 = 1;
  }

  else if ([IMChorosMonitor isStewieRoadsideChat:identifierCopy])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isStewieRoadsideActive
{
  getState = [(IMChorosMonitor *)self getState];
  v3 = [getState isActiveService:8];

  return v3;
}

- (BOOL)shouldShowTextRoadsideProviderButton
{
  getState = [(IMChorosMonitor *)self getState];
  if ([getState isActiveService:8])
  {
    v3 = 0;
  }

  else
  {
    v3 = [getState isAllowedService:8];
  }

  return v3;
}

- (id)mostRecentlyUsedRoadsideChatIdentifier
{
  IMGetDomainIntForKey();

  return MEMORY[0x1EEE66B58](IMChorosMonitor, sel_chatIdentifierForRoadside_);
}

+ (id)roadsideProviderIDFromChatIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([IMChorosMonitor serviceFromChatIdentifier:identifierCopy]== 8)
  {
    v4 = [identifierCopy componentsSeparatedByString:@":"];
    if ([v4 count] >= 3)
    {
      v6 = objc_opt_new();
      v7 = [v4 objectAtIndexedSubscript:2];
      v5 = [v6 numberFromString:v7];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)roadsideProviderForProviderId:(int64_t)id
{
  telephonyClient = [(IMChorosMonitor *)self telephonyClient];
  v5 = objc_opt_new();
  v12 = 0;
  v6 = [telephonyClient fetchRoadsideProvidersWithContext:v5 error:&v12];
  v7 = v12;

  if (v7)
  {
    providers = IMLogHandleForCategory();
    if (os_log_type_enabled(providers, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E0BCC();
    }

LABEL_4:
    v9 = 0;
    goto LABEL_7;
  }

  if (!v6)
  {
    providers = IMLogHandleForCategory();
    if (os_log_type_enabled(providers, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E0C34(providers);
    }

    goto LABEL_4;
  }

  providers = [v6 providers];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:id];
  v9 = [providers objectForKeyedSubscript:v10];

LABEL_7:

  return v9;
}

- (id)roadsideProviderNameForProviderId:(int64_t)id
{
  v3 = [(IMChorosMonitor *)self roadsideProviderForProviderId:id];
  providerName = [v3 providerName];

  return providerName;
}

- (id)roadsideBusinessIDForProviderId:(int64_t)id
{
  v3 = [(IMChorosMonitor *)self roadsideProviderForProviderId:id];
  bizId = [v3 bizId];

  if ([bizId _appearsToBeBusinessID])
  {
    v5 = bizId;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)roadsideProviderNameForChatIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[IMChatRegistry sharedRegistry];
  v6 = [v5 existingChatWithChatIdentifier:identifierCopy];

  displayName = [v6 displayName];
  if (displayName)
  {
    v8 = displayName;
    v9 = v8;
  }

  else
  {
    v10 = [IMChorosMonitor roadsideProviderIDFromChatIdentifier:identifierCopy];
    v11 = v10;
    if (v10 && (-[IMChorosMonitor roadsideProviderNameForProviderId:](self, "roadsideProviderNameForProviderId:", [v10 integerValue]), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v12;
      v8 = v9;
    }

    else
    {
      v13 = sub_1A8361964();
      v9 = [v13 localizedStringForKey:@"STEWIE_ROADSIDE_FALLBACK_HANDLE_NAME" value:&stru_1F1B76F98 table:@"IMCoreLocalizable-Avocet"];

      v8 = 0;
    }
  }

  return v9;
}

- (id)roadsideBusinessIDForChatIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[IMChatRegistry sharedRegistry];
  v6 = [v5 existingChatWithChatIdentifier:identifierCopy];

  associatedBusinessID = [v6 associatedBusinessID];
  if (associatedBusinessID)
  {
    v8 = associatedBusinessID;
  }

  else
  {
    v9 = [IMChorosMonitor roadsideProviderIDFromChatIdentifier:identifierCopy];
    v10 = v9;
    if (v9)
    {
      v9 = -[IMChorosMonitor roadsideBusinessIDForProviderId:](self, "roadsideBusinessIDForProviderId:", [v9 integerValue]);
    }

    v8 = v9;
  }

  return v8;
}

- (void)launchStewieForMessagingWithAppForegrounded:(BOOL)foregrounded
{
  selfCopy = self;
  IMChorosMonitor.launchStewieForMessaging(withAppForegrounded:)(foregrounded);
}

@end