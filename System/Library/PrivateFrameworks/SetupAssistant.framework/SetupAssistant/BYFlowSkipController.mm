@interface BYFlowSkipController
+ (BOOL)_shouldObserveChangeFromNetworkSSID:(id *)d;
+ (id)_actionForFlowSkipIdentifiers:(id)identifiers;
+ (id)_flowSkipIdentifierFromActionIdentifier:(id)identifier;
+ (id)_localizedStringListingFlowSkipIdentifiers:(id)identifiers;
+ (id)_supportedIdentifiers;
+ (id)flowSkipIdentifiersFromFollowUpAction:(id)action;
+ (id)sharedInstance;
+ (void)_clearShouldObserveChangeFromNetworkSSID;
+ (void)_setShouldObserveChangeFromNetworkSSID:(id)d;
- (BOOL)_isBasicFunctionalityEnabled;
- (BOOL)_isPasscodeSet;
- (BYFlowSkipController)init;
- (id)_followUpController;
- (id)_pendingFollowUpItem;
- (id)getFlowSkipIdentifiers;
- (void)_pendingFollowUpItem;
- (void)_persistInitialNetworkSSID;
- (void)_postFollowUpItemForFlowSkipIdentifiers:(id)identifiers previousFollowUpItem:(id)item forceNotification:(BOOL)notification;
- (void)_registerWiFiObserverActivityWithNeedsActivity:(BOOL)activity handlerQueue:(id)queue;
- (void)_repostExistingFollowUpItemForcingNotification:(id)notification;
- (void)cancelPendingFlows;
- (void)didCompleteFlow:(id)flow;
- (void)didSkipFlow:(id)flow;
- (void)observeFinishSetupTriggers;
- (void)passcodeDidChange;
- (void)registerActivities;
- (void)revisePendingFollowUpsForcingRepost:(BOOL)repost;
- (void)setBasicFunctionalityEnabled:(BOOL)enabled;
- (void)unregisterActivities;
@end

@implementation BYFlowSkipController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[BYFlowSkipController sharedInstance];
  }

  v3 = sharedInstance__instance;

  return v3;
}

uint64_t __38__BYFlowSkipController_sharedInstance__block_invoke()
{
  sharedInstance__instance = objc_alloc_init(BYFlowSkipController);

  return MEMORY[0x1EEE66BB8]();
}

- (id)_followUpController
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_followUpController_doNotAccessDirectly)
  {
    v3 = [objc_alloc(MEMORY[0x1E6997AC8]) initWithClientIdentifier:@"com.apple.purplebuddy"];
    followUpController_doNotAccessDirectly = selfCopy->_followUpController_doNotAccessDirectly;
    selfCopy->_followUpController_doNotAccessDirectly = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_followUpController_doNotAccessDirectly;

  return v5;
}

- (BYFlowSkipController)init
{
  v6.receiver = self;
  v6.super_class = BYFlowSkipController;
  v2 = [(BYFlowSkipController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(BYCapabilities);
    capabilities = v2->_capabilities;
    v2->_capabilities = v3;
  }

  return v2;
}

- (void)setBasicFunctionalityEnabled:(BOOL)enabled
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v5 = objc_sync_enter(v4);
  _basicFunctionalityEnabled_doNotAccessDirectly = enabled;
  v6 = _BYLoggingFacility(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = _basicFunctionalityEnabled_doNotAccessDirectly;
    _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "Flow skip basic functionality enabled: %d", v7, 8u);
  }

  objc_sync_exit(v4);
}

- (BOOL)_isBasicFunctionalityEnabled
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  v3 = _basicFunctionalityEnabled_doNotAccessDirectly;
  objc_sync_exit(v2);

  return v3;
}

+ (id)_supportedIdentifiers
{
  if (_supportedIdentifiers_onceToken != -1)
  {
    +[BYFlowSkipController _supportedIdentifiers];
  }

  v3 = _supportedIdentifiers__identifiers;

  return v3;
}

void __45__BYFlowSkipController__supportedIdentifiers__block_invoke()
{
  v4[6] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"siri";
  v4[1] = @"applePay";
  v4[2] = @"appleID";
  v4[3] = @"passcode";
  v4[4] = @"touchID";
  v4[5] = @"faceID";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:6];
  v2 = [v0 setWithArray:v1];
  v3 = _supportedIdentifiers__identifiers;
  _supportedIdentifiers__identifiers = v2;
}

- (void)didSkipFlow:(id)flow
{
  v16[1] = *MEMORY[0x1E69E9840];
  flowCopy = flow;
  v5 = +[BYFlowSkipController _supportedIdentifiers];
  v6 = [v5 containsObject:flowCopy];

  if (!v6)
  {
    _pendingFollowUpItem = _BYLoggingFacility(v7);
    if (os_log_type_enabled(_pendingFollowUpItem, OS_LOG_TYPE_ERROR))
    {
      [(BYFlowSkipController *)flowCopy didSkipFlow:_pendingFollowUpItem];
    }

    goto LABEL_12;
  }

  if ([(BYFlowSkipController *)self _isBasicFunctionalityEnabled])
  {
    _pendingFollowUpItem = [(BYFlowSkipController *)self _pendingFollowUpItem];
    actions = [_pendingFollowUpItem actions];
    v10 = [actions count];

    if (v10)
    {
      actions2 = [_pendingFollowUpItem actions];
      firstObject = [actions2 firstObject];
      userInfo = [firstObject userInfo];
      v14 = [userInfo objectForKeyedSubscript:@"flowSkipIdentifiers"];

      if (v14)
      {
        if (([v14 containsObject:flowCopy] & 1) == 0)
        {
          v15 = [v14 arrayByAddingObject:flowCopy];

          v14 = v15;
        }

        goto LABEL_11;
      }
    }

    else
    {
      actions2 = 0;
    }

    v16[0] = flowCopy;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
LABEL_11:
    [(BYFlowSkipController *)self _postFollowUpItemForFlowSkipIdentifiers:v14 previousFollowUpItem:_pendingFollowUpItem forceNotification:0];

LABEL_12:
  }
}

- (void)didCompleteFlow:(id)flow
{
  v30[1] = *MEMORY[0x1E69E9840];
  flowCopy = flow;
  v5 = +[BYFlowSkipController _supportedIdentifiers];
  v6 = [v5 containsObject:flowCopy];

  if (!v6)
  {
    _pendingFollowUpItem = _BYLoggingFacility(v7);
    if (os_log_type_enabled(_pendingFollowUpItem, OS_LOG_TYPE_ERROR))
    {
      [(BYFlowSkipController *)flowCopy didSkipFlow:_pendingFollowUpItem];
    }

    goto LABEL_16;
  }

  if ([(BYFlowSkipController *)self _isBasicFunctionalityEnabled])
  {
    _pendingFollowUpItem = [(BYFlowSkipController *)self _pendingFollowUpItem];
    actions = [_pendingFollowUpItem actions];
    firstObject = [actions firstObject];
    userInfo = [firstObject userInfo];
    v12 = [userInfo objectForKeyedSubscript:@"flowSkipIdentifiers"];

    if ([v12 containsObject:flowCopy])
    {
      if (v12)
      {
        v13 = [v12 mutableCopy];
        [v13 removeObject:flowCopy];
        v14 = [v13 copy];

        v12 = v14;
      }

      if ([v12 count])
      {
        [(BYFlowSkipController *)self _postFollowUpItemForFlowSkipIdentifiers:v12 previousFollowUpItem:_pendingFollowUpItem forceNotification:0];
      }

      else
      {
        _followUpController = [(BYFlowSkipController *)self _followUpController];
        v30[0] = @"com.apple.purplebuddy.revisitSkippedSteps";
        domain = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
        v27 = 0;
        v17 = [_followUpController clearPendingFollowUpItemsWithUniqueIdentifiers:domain error:&v27];
        v18 = v27;

        v20 = _BYLoggingFacility(v19);
        v21 = v20;
        if (v17)
        {
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B862F000, v21, OS_LOG_TYPE_DEFAULT, "Cleared obsoleted follow up items", buf, 2u);
          }
        }

        else
        {
          v22 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
          if (v22)
          {
            if (_BYIsInternalInstall(v22, v23))
            {
              v24 = 0;
              v25 = v18;
            }

            else if (v18)
            {
              v26 = MEMORY[0x1E696AEC0];
              domain = [v18 domain];
              v25 = [v26 stringWithFormat:@"<Error domain: %@, code %ld>", domain, objc_msgSend(v18, "code")];
              v24 = 1;
            }

            else
            {
              v24 = 0;
              v25 = 0;
            }

            *buf = 138543362;
            v29 = v25;
            _os_log_error_impl(&dword_1B862F000, v21, OS_LOG_TYPE_ERROR, "Failed to clear obsoleted follow up items: %{public}@", buf, 0xCu);
            if (v24)
            {
            }
          }
        }
      }
    }

LABEL_16:
  }
}

- (void)cancelPendingFlows
{
  v18[1] = *MEMORY[0x1E69E9840];
  if ([(BYFlowSkipController *)self _isBasicFunctionalityEnabled])
  {
    _followUpController = [(BYFlowSkipController *)self _followUpController];
    v18[0] = @"com.apple.purplebuddy.revisitSkippedSteps";
    domain = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v15 = 0;
    v5 = [_followUpController clearPendingFollowUpItemsWithUniqueIdentifiers:domain error:&v15];
    v6 = v15;

    v8 = _BYLoggingFacility(v7);
    v9 = v8;
    if (v5)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B862F000, v9, OS_LOG_TYPE_DEFAULT, "Cleared pending follow up items", buf, 2u);
      }
    }

    else
    {
      v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      if (v10)
      {
        if (_BYIsInternalInstall(v10, v11))
        {
          v12 = 0;
          v13 = v6;
        }

        else if (v6)
        {
          v14 = MEMORY[0x1E696AEC0];
          domain = [v6 domain];
          v13 = [v14 stringWithFormat:@"<Error domain: %@, code %ld>", domain, objc_msgSend(v6, "code")];
          v12 = 1;
        }

        else
        {
          v12 = 0;
          v13 = 0;
        }

        *buf = 138543362;
        v17 = v13;
        _os_log_error_impl(&dword_1B862F000, v9, OS_LOG_TYPE_ERROR, "Failed to clear pending follow up items: %{public}@", buf, 0xCu);
        if (v12)
        {
        }
      }
    }
  }
}

- (id)_pendingFollowUpItem
{
  v23 = *MEMORY[0x1E69E9840];
  _followUpController = [(BYFlowSkipController *)self _followUpController];
  v21 = 0;
  v3 = [_followUpController pendingFollowUpItems:&v21];
  v4 = v21;

  if (v4)
  {
    v6 = _BYLoggingFacility(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BYFlowSkipController *)v4 _pendingFollowUpItem];
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        uniqueIdentifier = [v12 uniqueIdentifier];
        v14 = [uniqueIdentifier isEqualToString:@"com.apple.purplebuddy.revisitSkippedSteps"];

        if (v14)
        {
          v15 = v12;
          goto LABEL_15;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_15:

  return v15;
}

- (void)_postFollowUpItemForFlowSkipIdentifiers:(id)identifiers previousFollowUpItem:(id)item forceNotification:(BOOL)notification
{
  notificationCopy = notification;
  v65[1] = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v8 = MEMORY[0x1E6997AD0];
  itemCopy = item;
  v10 = objc_alloc_init(v8);
  [v10 setUniqueIdentifier:@"com.apple.purplebuddy.revisitSkippedSteps"];
  [v10 setGroupIdentifier:*MEMORY[0x1E6997A98]];
  [v10 setTargetBundleIdentifier:*MEMORY[0x1E6997A88]];
  v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"FOLLOWUP_TITLE" value:&stru_1F309EFF0 table:@"FollowUp"];
  [v10 setTitle:v12];

  capabilities = [(BYFlowSkipController *)self capabilities];
  LODWORD(v12) = [capabilities supportsPearl];

  selfCopy = self;
  if (v12)
  {
    v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v15 = v14;
    v16 = @"FOLLOWUP_DETAIL_FACEID";
  }

  else
  {
    capabilities2 = [(BYFlowSkipController *)self capabilities];
    mgHasMesa = [capabilities2 mgHasMesa];

    v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v15 = v14;
    if (mgHasMesa)
    {
      v16 = @"FOLLOWUP_DETAIL_TOUCHID";
    }

    else
    {
      v16 = @"FOLLOWUP_DETAIL";
    }
  }

  v19 = [v14 localizedStringForKey:v16 value:&stru_1F309EFF0 table:@"FollowUp"];

  [v10 setInformativeText:v19];
  [v10 setDisplayStyle:0];
  userInfo = [itemCopy userInfo];

  v21 = [userInfo objectForKeyedSubscript:@"initialPostDate"];

  if (v21)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v23 = v22;
    [v21 doubleValue];
    v25 = v23 - v24;
  }

  else
  {
    v26 = MEMORY[0x1E696AD98];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v21 = [v26 numberWithDouble:?];
    v25 = 0.0;
  }

  v64 = @"initialPostDate";
  v65[0] = v21;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:&v64 count:1];
  [v10 setUserInfo:v27];

  v28 = [BYFlowSkipController _actionForFlowSkipIdentifiers:identifiersCopy];
  v63 = v28;
  domain = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
  [v10 setActions:domain];

  if (v25 < [(BYFlowSkipController *)self _timeIntervalForNotifications])
  {
    v55 = v28;
    v56 = v19;
    domain = objc_alloc_init(MEMORY[0x1E6997AD8]);
    v30 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"NOTIFICATION_TITLE" value:&stru_1F309EFF0 table:@"FollowUp"];
    [domain setTitle:v31];

    v32 = [BYFlowSkipController _localizedStringListingFlowSkipIdentifiers:identifiersCopy];
    v57 = identifiersCopy;
    v33 = [identifiersCopy count];
    v34 = MEMORY[0x1E696AEC0];
    v35 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v36 = v35;
    if (v33 == 1)
    {
      v37 = @"NOTIFICATION_DETAIL_FLOW";
    }

    else
    {
      v37 = @"NOTIFICATION_DETAIL_FLOWS";
    }

    v38 = [v35 localizedStringForKey:v37 value:&stru_1F309EFF0 table:@"FollowUp"];
    v39 = [v34 localizedStringWithFormat:v38, v32];
    [domain setInformativeText:v39];

    [domain setFrequency:{dbl_1B867B180[v25 < -[BYFlowSkipController _timeIntervalForFrequentNotifications](selfCopy, "_timeIntervalForFrequentNotifications")]}];
    [domain setFirstNotificationDelay:3600.0];
    defaultOptions = [MEMORY[0x1E6997AD8] defaultOptions];
    v41 = [defaultOptions setByAddingObject:*MEMORY[0x1E6997AB8]];

    if (notificationCopy)
    {
      v42 = [v41 setByAddingObject:*MEMORY[0x1E6997AB0]];

      v41 = v42;
    }

    [domain setOptions:v41];
    [v10 setNotification:domain];

    v19 = v56;
    identifiersCopy = v57;
    v28 = v55;
    self = selfCopy;
  }

  _followUpController = [(BYFlowSkipController *)self _followUpController];
  v60 = 0;
  v44 = [_followUpController postFollowUpItem:v10 error:&v60];
  v45 = v60;

  v47 = _BYLoggingFacility(v46);
  v48 = v47;
  if (v44)
  {
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v62 = v10;
      _os_log_impl(&dword_1B862F000, v48, OS_LOG_TYPE_DEFAULT, "Posted new follow up item: %@", buf, 0xCu);
    }
  }

  else
  {
    v49 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
    if (v49)
    {
      v51 = v19;
      if (_BYIsInternalInstall(v49, v50))
      {
        v52 = 0;
        v53 = v45;
      }

      else if (v45)
      {
        v54 = MEMORY[0x1E696AEC0];
        domain = [v45 domain];
        v53 = [v54 stringWithFormat:@"<Error domain: %@, code %ld>", domain, objc_msgSend(v45, "code")];
        v52 = 1;
      }

      else
      {
        v52 = 0;
        v53 = 0;
      }

      *buf = 138543362;
      v62 = v53;
      _os_log_error_impl(&dword_1B862F000, v48, OS_LOG_TYPE_ERROR, "Failed to post new follow up item: %{public}@", buf, 0xCu);
      if (v52)
      {
      }

      v19 = v51;
    }
  }
}

- (void)_repostExistingFollowUpItemForcingNotification:(id)notification
{
  notificationCopy = notification;
  actions = [notificationCopy actions];
  firstObject = [actions firstObject];
  userInfo = [firstObject userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"flowSkipIdentifiers"];

  if ([v7 count])
  {
    [(BYFlowSkipController *)self _postFollowUpItemForFlowSkipIdentifiers:v7 previousFollowUpItem:notificationCopy forceNotification:1];
  }
}

+ (id)flowSkipIdentifiersFromFollowUpAction:(id)action
{
  v9[1] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  identifier = [actionCopy identifier];
  v5 = [BYFlowSkipController _flowSkipIdentifierFromActionIdentifier:identifier];

  if ([v5 isEqualToString:@"everything"])
  {
    userInfo = [actionCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:@"flowSkipIdentifiers"];
  }

  else
  {
    v9[0] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  return v7;
}

+ (id)_actionForFlowSkipIdentifiers:(id)identifiers
{
  v19[1] = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v4 = objc_alloc_init(MEMORY[0x1E6997AC0]);
  if ([identifiersCopy count] < 2)
  {
    firstObject = [identifiersCopy firstObject];
    v8 = [BYFlowSkipController _actionIdentifierForFlowSkipIdentifier:firstObject];
    [v4 setIdentifier:v8];

    v9 = MEMORY[0x1E696AEC0];
    firstObject2 = [identifiersCopy firstObject];
    v6 = [v9 stringWithFormat:@"FOLLOWUP_ACTION_LABEL.%@", firstObject2];
  }

  else
  {
    firstObject2 = [BYFlowSkipController _actionIdentifierForFlowSkipIdentifier:@"everything"];
    [v4 setIdentifier:firstObject2];
    v6 = @"FOLLOWUP_ACTION_LABEL_ALL";
  }

  v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:v6 value:&stru_1F309EFF0 table:@"FollowUp"];
  [v4 setLabel:v11];

  v18 = @"flowSkipIdentifiers";
  v19[0] = identifiersCopy;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  [v4 setUserInfo:v12];

  v13 = [identifiersCopy componentsJoinedByString:{@", "}];
  v14 = MEMORY[0x1E695DFF8];
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"prefs:root=SETUP_FINISH&flow=%@", v13];
  v16 = [v14 URLWithString:v15];
  [v4 setUrl:v16];

  return v4;
}

+ (id)_flowSkipIdentifierFromActionIdentifier:(id)identifier
{
  v3 = [identifier componentsSeparatedByString:@"."];
  lastObject = [v3 lastObject];

  return lastObject;
}

- (void)passcodeDidChange
{
  _isPasscodeSet = [(BYFlowSkipController *)self _isPasscodeSet];
  if (_isPasscodeSet)
  {
    v4 = _BYLoggingFacility(_isPasscodeSet);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1B862F000, v4, OS_LOG_TYPE_DEFAULT, "A passcode is now set; removing finish setup passcode follow up item", v5, 2u);
    }

    [(BYFlowSkipController *)self didCompleteFlow:@"passcode"];
  }
}

- (BOOL)_isPasscodeSet
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  isPasscodeSet = [mEMORY[0x1E69ADFB8] isPasscodeSet];

  return isPasscodeSet;
}

- (void)revisePendingFollowUpsForcingRepost:(BOOL)repost
{
  repostCopy = repost;
  v52 = *MEMORY[0x1E69E9840];
  _pendingFollowUpItem = [(BYFlowSkipController *)self _pendingFollowUpItem];
  actions = [_pendingFollowUpItem actions];
  firstObject = [actions firstObject];
  userInfo = [firstObject userInfo];
  v9 = [userInfo objectForKeyedSubscript:@"flowSkipIdentifiers"];

  if (![v9 count])
  {
    goto LABEL_44;
  }

  v42 = [v9 mutableCopy];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v44 objects:v51 count:16];
  v12 = v11 != 0;
  if (!v11)
  {
    goto LABEL_29;
  }

  v13 = v11;
  v39 = v11 != 0;
  v40 = repostCopy;
  v41 = v9;
  v14 = 0;
  v15 = *v45;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v45 != v15)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(*(&v44 + 1) + 8 * i);
      if ([v17 isEqualToString:@"touchID"])
      {
        capabilities = [(BYFlowSkipController *)self capabilities];
        canShowTouchIDScreen = [capabilities canShowTouchIDScreen];
      }

      else if ([v17 isEqualToString:@"faceID"])
      {
        capabilities = [(BYFlowSkipController *)self capabilities];
        canShowTouchIDScreen = [capabilities canShowFaceIDScreen];
      }

      else if ([v17 isEqualToString:@"passcode"])
      {
        capabilities = [(BYFlowSkipController *)self capabilities];
        canShowTouchIDScreen = [capabilities canShowPasscodeScreen];
      }

      else if ([v17 isEqualToString:@"appleID"])
      {
        capabilities = [(BYFlowSkipController *)self capabilities];
        canShowTouchIDScreen = [capabilities canShowAppleIDScreen];
      }

      else if ([v17 isEqualToString:@"applePay"])
      {
        capabilities = [(BYFlowSkipController *)self capabilities];
        canShowTouchIDScreen = [capabilities canShowPaymentScreen];
      }

      else
      {
        if (![v17 isEqualToString:@"siri"])
        {
          continue;
        }

        capabilities = [(BYFlowSkipController *)self capabilities];
        canShowTouchIDScreen = [capabilities canShowSiriScreen];
      }

      v20 = canShowTouchIDScreen;

      if ((v20 & 1) == 0)
      {
        [v42 removeObject:v17];
        v14 = 1;
      }
    }

    v13 = [v10 countByEnumeratingWithState:&v44 objects:v51 count:16];
  }

  while (v13);

  if ((v14 & 1) == 0)
  {
    v12 = 0;
    v9 = v41;
    repostCopy = v40;
    if (!v40)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  v22 = _BYLoggingFacility(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v10 componentsJoinedByString:@", "];
    *buf = 138543362;
    v50 = v23;
    _os_log_impl(&dword_1B862F000, v22, OS_LOG_TYPE_DEFAULT, "Revising current flow skip identifiers: %{public}@", buf, 0xCu);
  }

  v10 = _BYLoggingFacility(v24);
  v9 = v41;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v42 componentsJoinedByString:{@", "}];
    *buf = 138543362;
    v50 = v25;
    _os_log_impl(&dword_1B862F000, v10, OS_LOG_TYPE_DEFAULT, "New flow skip identifiers: %{public}@", buf, 0xCu);
  }

  v12 = v39;
  repostCopy = v40;
LABEL_29:

  if (repostCopy)
  {
LABEL_32:
    v26 = _BYLoggingFacility(v21);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v26, OS_LOG_TYPE_DEFAULT, "Forcing a repost of finish setup flows...", buf, 2u);
    }
  }

LABEL_35:
  if ([v42 count])
  {
    if (v12 || repostCopy)
    {
      [(BYFlowSkipController *)self _postFollowUpItemForFlowSkipIdentifiers:v42 previousFollowUpItem:_pendingFollowUpItem forceNotification:0];
    }
  }

  else
  {
    _followUpController = [(BYFlowSkipController *)self _followUpController];
    v48 = @"com.apple.purplebuddy.revisitSkippedSteps";
    domain = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
    v43 = 0;
    v29 = [_followUpController clearPendingFollowUpItemsWithUniqueIdentifiers:domain error:&v43];
    v30 = v43;

    v32 = _BYLoggingFacility(v31);
    v33 = v32;
    if (v29)
    {
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B862F000, v33, OS_LOG_TYPE_DEFAULT, "Cleared obsoleted follow up items", buf, 2u);
      }
    }

    else
    {
      v34 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
      if (v34)
      {
        if (_BYIsInternalInstall(v34, v35))
        {
          v36 = 0;
          v37 = v30;
        }

        else if (v30)
        {
          v38 = MEMORY[0x1E696AEC0];
          domain = [v30 domain];
          v37 = [v38 stringWithFormat:@"<Error domain: %@, code %ld>", domain, objc_msgSend(v30, "code")];
          v36 = 1;
        }

        else
        {
          v36 = 0;
          v37 = 0;
        }

        *buf = 138543362;
        v50 = v37;
        _os_log_error_impl(&dword_1B862F000, v33, OS_LOG_TYPE_ERROR, "Failed to clear obsoleted follow up items: %{public}@", buf, 0xCu);
        if (v36)
        {
        }
      }
    }
  }

LABEL_44:
}

+ (id)_localizedStringListingFlowSkipIdentifiers:(id)identifiers
{
  v20 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = identifiersCopy;
  v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v11 = [v10 localizedStringForKey:v9 value:&stru_1F309EFF0 table:@"FollowUp"];
        [v4 addObject:v11];
      }

      v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v4];

  return v12;
}

- (void)observeFinishSetupTriggers
{
  [(BYFlowSkipController *)self _persistInitialNetworkSSID];

  [(BYFlowSkipController *)self registerActivities];
}

+ (void)_setShouldObserveChangeFromNetworkSSID:(id)d
{
  if (d)
  {
    dCopy = d;
  }

  else
  {
    dCopy = &unk_1F30A7790;
  }

  CFPreferencesSetAppValue(@"PBInitialNetworkSSID", dCopy, @"com.apple.purplebuddy.notbackedup");

  CFPreferencesAppSynchronize(@"com.apple.purplebuddy.notbackedup");
}

+ (BOOL)_shouldObserveChangeFromNetworkSSID:(id *)d
{
  CFPreferencesAppSynchronize(@"com.apple.purplebuddy.notbackedup");
  v4 = CFPreferencesCopyAppValue(@"PBInitialNetworkSSID", @"com.apple.purplebuddy.notbackedup");
  v5 = v4;
  *d = v5;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      *d = 0;
    }
  }

  return v4 != 0;
}

+ (void)_clearShouldObserveChangeFromNetworkSSID
{
  CFPreferencesSetAppValue(@"PBInitialNetworkSSID", 0, @"com.apple.purplebuddy.notbackedup");

  CFPreferencesAppSynchronize(@"com.apple.purplebuddy.notbackedup");
}

- (void)_persistInitialNetworkSSID
{
  v11 = *MEMORY[0x1E69E9840];
  _pendingFollowUpItem = [(BYFlowSkipController *)self _pendingFollowUpItem];
  if (_pendingFollowUpItem)
  {
    sharedInstance = [getWFClientClass() sharedInstance];
    interface = [sharedInstance interface];
    currentNetwork = [interface currentNetwork];
    ssid = [currentNetwork ssid];

    v8 = _BYLoggingFacility(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = ssid;
      _os_log_impl(&dword_1B862F000, v8, OS_LOG_TYPE_DEFAULT, "Finish setup observing changes from network SSID: %@", &v9, 0xCu);
    }

    [BYFlowSkipController _setShouldObserveChangeFromNetworkSSID:ssid];
  }
}

- (void)_registerWiFiObserverActivityWithNeedsActivity:(BOOL)activity handlerQueue:(id)queue
{
  queueCopy = queue;
  v7 = +[BYXPCActivityRegistrar sharedInstance];
  v8 = *MEMORY[0x1E69E9C50];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__BYFlowSkipController__registerWiFiObserverActivityWithNeedsActivity_handlerQueue___block_invoke;
  v10[3] = &unk_1E7D033E0;
  activityCopy = activity;
  v11 = queueCopy;
  selfCopy = self;
  v9 = queueCopy;
  [v7 registerActivityWithIdentifier:"com.apple.purplebuddy.finishsetup.wifiobserver" criteria:v8 handler:v10];
}

void __84__BYFlowSkipController__registerWiFiObserverActivityWithNeedsActivity_handlerQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__BYFlowSkipController__registerWiFiObserverActivityWithNeedsActivity_handlerQueue___block_invoke_2;
  v7[3] = &unk_1E7D033B8;
  v10 = *(a1 + 48);
  v8 = v3;
  v9 = v4;
  v5 = *(a1 + 32);
  v7[4] = *(a1 + 40);
  v6 = v3;
  dispatch_async(v5, v7);
}

void __84__BYFlowSkipController__registerWiFiObserverActivityWithNeedsActivity_handlerQueue___block_invoke_2(uint64_t a1)
{
  v1 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = *(a1 + 56);
  if (v35 != 1)
  {
    goto LABEL_8;
  }

  v31 = 0;
  v3 = [BYFlowSkipController _shouldObserveChangeFromNetworkSSID:&v31];
  v4 = v31;
  v1 = v4;
  *(v33 + 24) = v3;
  if (!v3)
  {
    v5 = _BYLoggingFacility(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, "Will not monitor for Wi-Fi SSID changes for finish setup", buf, 2u);
    }

    if ((v33[3] & 1) == 0)
    {
LABEL_8:
      v11 = +[BYXPCActivityRegistrar sharedInstance];
      [v11 unregisterActivityWithIdentifier:"com.apple.purplebuddy.finishsetup.wifiobserver"];

      goto LABEL_17;
    }
  }

  if (*(a1 + 48) == 2)
  {
    *buf = 0;
    v26 = buf;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__5;
    v29 = __Block_byref_object_dispose__5;
    v30 = os_transaction_create();
    v6 = [getWFClientClass() sharedInstance];
    v7 = [v6 interface];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __84__BYFlowSkipController__registerWiFiObserverActivityWithNeedsActivity_handlerQueue___block_invoke_105;
    v19[3] = &unk_1E7D03390;
    v1 = v1;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v20 = v1;
    v21 = v8;
    v23 = &v32;
    v22 = v9;
    v24 = buf;
    [v7 asyncCurrentNetwork:v19];

    _Block_object_dispose(buf, 8);
    goto LABEL_17;
  }

  v12 = [*(a1 + 40) criteria];
  v13 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v13, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D78]);
  v14 = [*(a1 + 32) _timeIntervalForWifiObserver];
  xpc_dictionary_set_int64(v13, *MEMORY[0x1E69E9CB0], v14);
  if (v12 && (v15 = xpc_equal(v12, v13)))
  {
    v16 = _BYLoggingFacility(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "finish setup wifi observer check-in already had correct criteria";
LABEL_15:
      _os_log_impl(&dword_1B862F000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
    }
  }

  else
  {
    v16 = _BYLoggingFacility([*(a1 + 40) setCriteria:v13]);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "finish setup wifi observer check-in did set criteria";
      goto LABEL_15;
    }
  }

LABEL_17:
  v18 = _BYLoggingFacility(v10);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v18, OS_LOG_TYPE_DEFAULT, "WiFi Handler Finished", buf, 2u);
  }

  _Block_object_dispose(&v32, 8);
}

void __84__BYFlowSkipController__registerWiFiObserverActivityWithNeedsActivity_handlerQueue___block_invoke_105(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [a2 ssid];
  v4 = _BYLoggingFacility(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v26 = 138412546;
    v27 = v5;
    v28 = 2112;
    v29 = v3;
    _os_log_impl(&dword_1B862F000, v4, OS_LOG_TYPE_DEFAULT, "finish setup wifi observer initial network ssid %@ current network ssid %@", &v26, 0x16u);
  }

  v6 = [*(a1 + 40) _pendingFollowUpItem];
  v7 = [v3 length];
  if (v7)
  {
    v7 = [*(a1 + 32) isEqualToString:v3];
    if ((v7 & 1) == 0)
    {
      v8 = _BYLoggingFacility(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_1B862F000, v8, OS_LOG_TYPE_DEFAULT, "finish setup wifi observer will force notification", &v26, 2u);
      }

      v7 = [*(a1 + 40) _repostExistingFollowUpItemForcingNotification:v6];
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }
  }

  if (*(*(*(a1 + 56) + 8) + 24) != 1)
  {
    goto LABEL_16;
  }

  v9 = [v6 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"initialPostDate"];

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = [v10 doubleValue];
  v15 = v12 - v14;
  v16 = _BYLoggingFacility(v13);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
    v26 = 138412290;
    v27 = v17;
    _os_log_impl(&dword_1B862F000, v16, OS_LOG_TYPE_DEFAULT, "finish setup wifi observer time interval since initial post %@", &v26, 0xCu);
  }

  v18 = [*(a1 + 40) _timeoutForWifiObserver];
  if (v15 >= v18)
  {
    v19 = _BYLoggingFacility(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_1B862F000, v19, OS_LOG_TYPE_DEFAULT, "finish setup wifi observer beyond timeout", &v26, 2u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
LABEL_16:
    v20 = _BYLoggingFacility(v7);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_1B862F000, v20, OS_LOG_TYPE_DEFAULT, "finish setup wifi observer clearing initial network ssid", &v26, 2u);
    }

    v7 = +[BYFlowSkipController _clearShouldObserveChangeFromNetworkSSID];
  }

  v21 = _BYLoggingFacility(v7);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [*(a1 + 48) state];
    v26 = 134217984;
    v27 = v22;
    _os_log_impl(&dword_1B862F000, v21, OS_LOG_TYPE_DEFAULT, "finish setup wifi observer did run. activity state %ld", &v26, 0xCu);
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v23 = +[BYXPCActivityRegistrar sharedInstance];
    [v23 unregisterActivityWithIdentifier:"com.apple.purplebuddy.finishsetup.wifiobserver"];
  }

  v24 = *(*(a1 + 64) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = 0;
}

- (void)registerActivities
{
  _pendingFollowUpItem = [(BYFlowSkipController *)self _pendingFollowUpItem];
  userInfo = [_pendingFollowUpItem userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"initialPostDate"];

  v7 = _BYLoggingFacility(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v7, OS_LOG_TYPE_DEFAULT, "Registering XPC activities for finish setup...", buf, 2u);
  }

  if (registerActivities__onceToken != -1)
  {
    [BYFlowSkipController registerActivities];
  }

  v8 = v5 != 0;
  [(BYFlowSkipController *)self _registerWiFiObserverActivityWithNeedsActivity:v8 handlerQueue:registerActivities__activity_queue];
  v9 = +[BYXPCActivityRegistrar sharedInstance];
  v10 = *MEMORY[0x1E69E9C50];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __42__BYFlowSkipController_registerActivities__block_invoke_2;
  v14[3] = &unk_1E7D03408;
  v14[4] = self;
  v15 = v8;
  [v9 registerActivityWithIdentifier:"com.apple.purplebuddy.finishsetup.firstreschedule" criteria:v10 handler:v14];

  v11 = +[BYXPCActivityRegistrar sharedInstance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __42__BYFlowSkipController_registerActivities__block_invoke_113;
  v12[3] = &unk_1E7D03408;
  v12[4] = self;
  v13 = v8;
  [v11 registerActivityWithIdentifier:"com.apple.purplebuddy.finishsetup.secondreschedule" criteria:v10 handler:v12];
}

uint64_t __42__BYFlowSkipController_registerActivities__block_invoke()
{
  registerActivities__activity_queue = dispatch_queue_create("com.apple.purplebuddy.finishsetup.xpcactivity", 0);

  return MEMORY[0x1EEE66BB8]();
}

void __42__BYFlowSkipController_registerActivities__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  v5 = registerActivities__activity_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__BYFlowSkipController_registerActivities__block_invoke_3;
  v7[3] = &unk_1E7D033B8;
  v8 = v3;
  v9 = v4;
  v7[4] = *(a1 + 32);
  v10 = *(a1 + 40);
  v6 = v3;
  dispatch_async(v5, v7);
}

void __42__BYFlowSkipController_registerActivities__block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 2)
  {
    v2 = _BYLoggingFacility([*(a1 + 32) revisePendingFollowUpsForcingRepost:1]);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 40) state];
      v12 = 134217984;
      v13 = v3;
      v4 = "First finish setup reschedule ran; state is now %ld";
      v5 = v2;
      v6 = 12;
LABEL_11:
      _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, v4, &v12, v6);
    }
  }

  else if (*(a1 + 56) == 1)
  {
    v2 = [*(a1 + 40) criteria];
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v7, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D78]);
    xpc_dictionary_set_int64(v7, *MEMORY[0x1E69E9C68], [*(a1 + 32) _timeIntervalForFrequentNotifications]);
    if (v2 && (v8 = xpc_equal(v2, v7)))
    {
      v9 = _BYLoggingFacility(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __42__BYFlowSkipController_registerActivities__block_invoke_3_cold_1(v9);
      }
    }

    else
    {
      v9 = _BYLoggingFacility([*(a1 + 40) setCriteria:v7]);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_1B862F000, v9, OS_LOG_TYPE_DEFAULT, "Updated first finish setup check-in", &v12, 2u);
      }
    }
  }

  else
  {
    v10 = +[BYXPCActivityRegistrar sharedInstance];
    [v10 unregisterActivityWithIdentifier:"com.apple.purplebuddy.finishsetup.firstreschedule"];

    v2 = _BYLoggingFacility(v11);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      v4 = "Unregistered first finish setup reschedule";
      v5 = v2;
      v6 = 2;
      goto LABEL_11;
    }
  }
}

void __42__BYFlowSkipController_registerActivities__block_invoke_113(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  v5 = registerActivities__activity_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__BYFlowSkipController_registerActivities__block_invoke_2_114;
  v7[3] = &unk_1E7D033B8;
  v8 = v3;
  v9 = v4;
  v7[4] = *(a1 + 32);
  v10 = *(a1 + 40);
  v6 = v3;
  dispatch_async(v5, v7);
}

void __42__BYFlowSkipController_registerActivities__block_invoke_2_114(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 2)
  {
    v2 = _BYLoggingFacility([*(a1 + 32) revisePendingFollowUpsForcingRepost:1]);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 40) state];
      v12 = 134217984;
      v13 = v3;
      v4 = "Second finish setup reschedule ran; state is now %ld";
      v5 = v2;
      v6 = 12;
LABEL_11:
      _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, v4, &v12, v6);
    }
  }

  else if (*(a1 + 56) == 1)
  {
    v2 = [*(a1 + 40) criteria];
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v7, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D78]);
    xpc_dictionary_set_int64(v7, *MEMORY[0x1E69E9C68], [*(a1 + 32) _timeIntervalForNotifications]);
    if (v2 && (v8 = xpc_equal(v2, v7)))
    {
      v9 = _BYLoggingFacility(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __42__BYFlowSkipController_registerActivities__block_invoke_2_114_cold_1(v9);
      }
    }

    else
    {
      v9 = _BYLoggingFacility([*(a1 + 40) setCriteria:v7]);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_1B862F000, v9, OS_LOG_TYPE_DEFAULT, "Updated second finish setup check-in", &v12, 2u);
      }
    }
  }

  else
  {
    v10 = +[BYXPCActivityRegistrar sharedInstance];
    [v10 unregisterActivityWithIdentifier:"com.apple.purplebuddy.finishsetup.secondreschedule"];

    v2 = _BYLoggingFacility(v11);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      v4 = "Unregistered second finish setup reschedule";
      v5 = v2;
      v6 = 2;
      goto LABEL_11;
    }
  }
}

- (void)unregisterActivities
{
  v2 = _BYLoggingFacility(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B862F000, v2, OS_LOG_TYPE_DEFAULT, "Unregistering XPC activities for finish setup...", v6, 2u);
  }

  v3 = +[BYXPCActivityRegistrar sharedInstance];
  [v3 unregisterActivityWithIdentifier:"com.apple.purplebuddy.finishsetup.firstreschedule"];

  v4 = +[BYXPCActivityRegistrar sharedInstance];
  [v4 unregisterActivityWithIdentifier:"com.apple.purplebuddy.finishsetup.secondreschedule"];

  v5 = +[BYXPCActivityRegistrar sharedInstance];
  [v5 unregisterActivityWithIdentifier:"com.apple.purplebuddy.finishsetup.wifiobserver"];
}

- (id)getFlowSkipIdentifiers
{
  _pendingFollowUpItem = [(BYFlowSkipController *)self _pendingFollowUpItem];
  actions = [_pendingFollowUpItem actions];
  firstObject = [actions firstObject];
  userInfo = [firstObject userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"flowSkipIdentifiers"];

  return v6;
}

- (void)didSkipFlow:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "Unknown flow skip identifier %{public}@", &v2, 0xCu);
}

- (void)_pendingFollowUpItem
{
  selfCopy = self;
  v9 = *MEMORY[0x1E69E9840];
  v5 = _BYIsInternalInstall(self, a2);
  if ((v5 & 1) == 0)
  {
    v6 = MEMORY[0x1E696AEC0];
    domain = [selfCopy domain];
    selfCopy = [v6 stringWithFormat:@"<Error domain: %@, code %ld>", domain, objc_msgSend(selfCopy, "code")];
  }

  *buf = 138543362;
  v8 = selfCopy;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "Failed to get pending follow up items: %{public}@", buf, 0xCu);
  if (!v5)
  {
  }
}

@end