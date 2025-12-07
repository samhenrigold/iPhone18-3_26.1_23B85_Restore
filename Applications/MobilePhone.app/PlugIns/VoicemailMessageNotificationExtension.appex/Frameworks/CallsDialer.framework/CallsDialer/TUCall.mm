@interface TUCall
- (BOOL)disconnectedReasonRequiresCallBackUI;
- (BOOL)hasSendCustomMessageCapability;
- (BOOL)hasSendMessageCapability;
- (BOOL)shouldPlayInCallSounds;
- (BOOL)shouldShowAutomaticTelephonyCallFallback;
- (BOOL)shouldShowFailureAlert;
- (BOOL)supportsSendMessageIntent;
- (id)sendMessageIntentExtension;
@end

@implementation TUCall

- (BOOL)hasSendMessageCapability
{
  provider = [(TUCall *)self provider];
  if ([provider isSystemProvider])
  {
    v4 = 1;
  }

  else
  {
    sendMessageIntentExtension = [(TUCall *)self sendMessageIntentExtension];
    v4 = sendMessageIntentExtension != 0;
  }

  return v4;
}

- (BOOL)disconnectedReasonRequiresCallBackUI
{
  disconnectedReason = [(TUCall *)self disconnectedReason];
  v4 = 0;
  if (disconnectedReason > 0x18 || ((1 << disconnectedReason) & 0x1C2C020) == 0)
  {
    return v4 & 1;
  }

  v5 = +[TUCallCenter sharedInstance];
  v6 = [v5 activeConversationForCall:self];

  if (v6)
  {
    isOneToOneModeEnabled = [v6 isOneToOneModeEnabled];
  }

  else
  {
    remoteParticipantHandles = [(TUCall *)self remoteParticipantHandles];
    isOneToOneModeEnabled = [remoteParticipantHandles count] == &dword_0 + 1;
  }

  v9 = +[PHInCallUIUtilities isSpringBoardPasscodeLocked];
  isIncoming = [(TUCall *)self isIncoming];
  if (!isIncoming)
  {
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_10:
    isIncoming = [(TUCall *)self isConversation];
    v4 = isIncoming ^ 1 | isOneToOneModeEnabled;
    goto LABEL_11;
  }

  isIncoming = [(TUCall *)self isConnecting];
  if (!(v9 & 1 | ((isIncoming & 1) == 0)))
  {
    goto LABEL_10;
  }

LABEL_8:
  v4 = 0;
LABEL_11:
  v11 = PHDefaultLog(isIncoming);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110912;
    v14 = v4 & 1;
    v15 = 1024;
    disconnectedReason2 = [(TUCall *)self disconnectedReason];
    v17 = 1024;
    isIncoming2 = [(TUCall *)self isIncoming];
    v19 = 1024;
    isConnecting = [(TUCall *)self isConnecting];
    v21 = 1024;
    v22 = v9;
    v23 = 1024;
    isConversation = [(TUCall *)self isConversation];
    v25 = 1024;
    v26 = isOneToOneModeEnabled;
    v27 = 1024;
    v28 = v6 == 0;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "disconnectedReasonRequiresCallBackUI = %d (disconnectedReason: %d, isIncoming: %d, isConnecting: %d, isSpringBoardPasscodeLocked: %d, isConversation: %d, isOneToOneModeEnabled: %d, conversationIsNil: %d)", buf, 0x32u);
  }

  return v4 & 1;
}

- (BOOL)shouldShowFailureAlert
{
  if ([(TUCall *)self status]== 6)
  {
    errorAlertTitle = [(TUCall *)self errorAlertTitle];
    if (errorAlertTitle)
    {
      v4 = ![(TUCall *)self shouldShowAutomaticTelephonyCallFallback];
    }

    else
    {
      errorAlertMessage = [(TUCall *)self errorAlertMessage];
      if (errorAlertMessage)
      {
        v4 = ![(TUCall *)self shouldShowAutomaticTelephonyCallFallback];
      }

      else
      {
        LOBYTE(v4) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)shouldShowAutomaticTelephonyCallFallback
{
  disconnectedReason = [(TUCall *)self disconnectedReason];
  provider = [(TUCall *)self provider];
  if ([provider isFaceTimeProvider] && (-[TUCall isVideo](self, "isVideo") & 1) == 0)
  {
    remoteParticipantHandles = [(TUCall *)self remoteParticipantHandles];
    if ([remoteParticipantHandles count] == &dword_0 + 1 && (disconnectedReason == 49 || disconnectedReason == 30))
    {
      v5 = TUDefaultAppsEnabled();
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

- (BOOL)shouldPlayInCallSounds
{
  needsManualInCallSounds = [(TUCall *)self needsManualInCallSounds];
  if (needsManualInCallSounds)
  {

    LOBYTE(needsManualInCallSounds) = [(TUCall *)self isEndpointOnCurrentDevice];
  }

  return needsManualInCallSounds;
}

- (BOOL)supportsSendMessageIntent
{
  provider = [(TUCall *)self provider];
  bundleIdentifier = [provider bundleIdentifier];

  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v5 = [v4 applicationsForUserActivityType:@"INSendMessageIntent"];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
  v8 = v7;
  if (v7)
  {
    v9 = *v17;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = PHDefaultLog(v7);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v21 = v11;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "application %@", buf, 0xCu);
        }

        bundleIdentifier2 = [v11 bundleIdentifier];
        v14 = [bundleIdentifier2 isEqualToString:bundleIdentifier];

        if (v14)
        {
          LOBYTE(v8) = 1;
          goto LABEL_13;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
      v8 = v7;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v8;
}

- (BOOL)hasSendCustomMessageCapability
{
  provider = [(TUCall *)self provider];
  if ([provider isSystemProvider])
  {
    supportsSendMessageIntent = 1;
  }

  else
  {
    supportsSendMessageIntent = [(TUCall *)self supportsSendMessageIntent];
  }

  return supportsSendMessageIntent;
}

- (id)sendMessageIntentExtension
{
  provider = [(TUCall *)self provider];
  if ([provider isSystemProvider])
  {

LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  provider2 = [(TUCall *)self provider];
  bundleURL = [provider2 bundleURL];

  if (!bundleURL)
  {
    goto LABEL_13;
  }

  if (sendMessageIntentExtension_onceToken != -1)
  {
    [TUCall(PHUIUtilities) sendMessageIntentExtension];
  }

  if (([sendMessageIntentExtension_hasQueriedSendMessageIntentExtensionsCache containsObject:self] & 1) == 0)
  {
    [sendMessageIntentExtension_hasQueriedSendMessageIntentExtensionsCache addObject:self];
    v36 = @"INSendMessageIntent";
    v6 = [NSArray arrayWithObjects:&v36 count:1];
    v7 = [NSExtension _intents_extensionMatchingAttributesForIntents:v6];
    v8 = [v7 mutableCopy];

    provider3 = [(TUCall *)self provider];
    bundleURL2 = [provider3 bundleURL];
    path = [bundleURL2 path];
    [v8 setObject:path forKeyedSubscript:NSExtensionContainingAppName];

    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__0;
    v30 = __Block_byref_object_dispose__0;
    v31 = 0;
    v12 = dispatch_semaphore_create(0);
    v13 = PHDefaultLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v8;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Looking up send message intent extension using attributes: %@", buf, 0xCu);
    }

    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = __51__TUCall_PHUIUtilities__sendMessageIntentExtension__block_invoke_38;
    v23 = &unk_4C838;
    v25 = &v26;
    v14 = v12;
    v24 = v14;
    [NSExtension extensionsWithMatchingAttributes:v8 completion:&v20];
    v15 = dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
    v16 = PHDefaultLog(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v27[5];
      *buf = 138412546;
      v33 = v17;
      v34 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Found send message intent extension %@ for call %@", buf, 0x16u);
    }

    [sendMessageIntentExtension_sendMessageIntentExtensionsCache setObject:v27[5] forKey:{self, v20, v21, v22, v23}];
    _Block_object_dispose(&v26, 8);
  }

  v18 = [sendMessageIntentExtension_sendMessageIntentExtensionsCache objectForKey:self];
LABEL_14:

  return v18;
}

void __51__TUCall_PHUIUtilities__sendMessageIntentExtension__block_invoke(id a1)
{
  v1 = +[NSHashTable weakObjectsHashTable];
  v2 = sendMessageIntentExtension_hasQueriedSendMessageIntentExtensionsCache;
  sendMessageIntentExtension_hasQueriedSendMessageIntentExtensionsCache = v1;

  sendMessageIntentExtension_sendMessageIntentExtensionsCache = +[NSMapTable weakToStrongObjectsMapTable];

  _objc_release_x1();
}

void __51__TUCall_PHUIUtilities__sendMessageIntentExtension__block_invoke_38(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v10 = PHDefaultLog(v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __51__TUCall_PHUIUtilities__sendMessageIntentExtension__block_invoke_38_cold_1();
    }
  }

  else
  {
    v7 = [a2 firstObject];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

@end