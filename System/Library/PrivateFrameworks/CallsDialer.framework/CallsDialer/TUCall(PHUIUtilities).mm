@interface TUCall(PHUIUtilities)
- (BOOL)hasSendMessageCapability;
- (id)sendMessageIntentExtension;
- (uint64_t)disconnectedReasonRequiresCallBackUI;
- (uint64_t)hasSendCustomMessageCapability;
- (uint64_t)shouldShowAutomaticTelephonyCallFallback;
- (uint64_t)shouldShowFailureAlert;
- (uint64_t)supportsSendMessageIntent;
- (void)shouldPlayInCallSounds;
@end

@implementation TUCall(PHUIUtilities)

- (BOOL)hasSendMessageCapability
{
  provider = [self provider];
  if ([provider isSystemProvider])
  {
    v3 = 1;
  }

  else
  {
    sendMessageIntentExtension = [self sendMessageIntentExtension];
    v3 = sendMessageIntentExtension != 0;
  }

  return v3;
}

- (uint64_t)disconnectedReasonRequiresCallBackUI
{
  v28 = *MEMORY[0x277D85DE8];
  disconnectedReason = [self disconnectedReason];
  v3 = 0;
  if (disconnectedReason > 0x18 || ((1 << disconnectedReason) & 0x1C2C020) == 0)
  {
    return v3 & 1;
  }

  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  v5 = [mEMORY[0x277D6EDF8] activeConversationForCall:self];

  if (v5)
  {
    isOneToOneModeEnabled = [v5 isOneToOneModeEnabled];
  }

  else
  {
    remoteParticipantHandles = [self remoteParticipantHandles];
    isOneToOneModeEnabled = [remoteParticipantHandles count] == 1;
  }

  v8 = +[PHInCallUIUtilities isSpringBoardPasscodeLocked];
  isIncoming = [self isIncoming];
  if (!isIncoming)
  {
    if (v8)
    {
      goto LABEL_8;
    }

LABEL_10:
    isIncoming = [self isConversation];
    v3 = isIncoming ^ 1 | isOneToOneModeEnabled;
    goto LABEL_11;
  }

  isIncoming = [self isConnecting];
  if (!v8 && (isIncoming & 1) != 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v3 = 0;
LABEL_11:
  v10 = PHDefaultLog(isIncoming);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110912;
    v13 = v3 & 1;
    v14 = 1024;
    disconnectedReason2 = [self disconnectedReason];
    v16 = 1024;
    isIncoming2 = [self isIncoming];
    v18 = 1024;
    isConnecting = [self isConnecting];
    v20 = 1024;
    v21 = v8;
    v22 = 1024;
    isConversation = [self isConversation];
    v24 = 1024;
    v25 = isOneToOneModeEnabled;
    v26 = 1024;
    v27 = v5 == 0;
    _os_log_impl(&dword_2429BC000, v10, OS_LOG_TYPE_DEFAULT, "disconnectedReasonRequiresCallBackUI = %d (disconnectedReason: %d, isIncoming: %d, isConnecting: %d, isSpringBoardPasscodeLocked: %d, isConversation: %d, isOneToOneModeEnabled: %d, conversationIsNil: %d)", buf, 0x32u);
  }

  return v3 & 1;
}

- (uint64_t)shouldShowFailureAlert
{
  if ([self status] != 6)
  {
    return 0;
  }

  errorAlertTitle = [self errorAlertTitle];
  if (errorAlertTitle)
  {
    v3 = [self shouldShowAutomaticTelephonyCallFallback] ^ 1;
  }

  else
  {
    errorAlertMessage = [self errorAlertMessage];
    if (errorAlertMessage)
    {
      v3 = [self shouldShowAutomaticTelephonyCallFallback] ^ 1;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (uint64_t)shouldShowAutomaticTelephonyCallFallback
{
  disconnectedReason = [self disconnectedReason];
  provider = [self provider];
  if ([provider isFaceTimeProvider] && (objc_msgSend(self, "isVideo") & 1) == 0)
  {
    remoteParticipantHandles = [self remoteParticipantHandles];
    if ([remoteParticipantHandles count] == 1 && (disconnectedReason == 49 || disconnectedReason == 30))
    {
      v4 = TUDefaultAppsEnabled();
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)shouldPlayInCallSounds
{
  result = [self needsManualInCallSounds];
  if (result)
  {

    return [self isEndpointOnCurrentDevice];
  }

  return result;
}

- (uint64_t)supportsSendMessageIntent
{
  v22 = *MEMORY[0x277D85DE8];
  provider = [self provider];
  bundleIdentifier = [provider bundleIdentifier];

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v4 = [defaultWorkspace applicationsForUserActivityType:@"INSendMessageIntent"];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  v7 = v6;
  if (v6)
  {
    v8 = *v16;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = PHDefaultLog(v6);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v20 = v10;
          _os_log_impl(&dword_2429BC000, v11, OS_LOG_TYPE_DEFAULT, "application %@", buf, 0xCu);
        }

        bundleIdentifier2 = [v10 bundleIdentifier];
        v13 = [bundleIdentifier2 isEqualToString:bundleIdentifier];

        if (v13)
        {
          v7 = 1;
          goto LABEL_13;
        }

        ++v9;
      }

      while (v7 != v9);
      v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
      v7 = v6;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v7;
}

- (uint64_t)hasSendCustomMessageCapability
{
  provider = [self provider];
  if ([provider isSystemProvider])
  {
    supportsSendMessageIntent = 1;
  }

  else
  {
    supportsSendMessageIntent = [self supportsSendMessageIntent];
  }

  return supportsSendMessageIntent;
}

- (id)sendMessageIntentExtension
{
  v37[1] = *MEMORY[0x277D85DE8];
  provider = [self provider];
  if ([provider isSystemProvider])
  {

LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  provider2 = [self provider];
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
    v5 = MEMORY[0x277CCA9C8];
    v37[0] = @"INSendMessageIntent";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
    v7 = [v5 _intents_extensionMatchingAttributesForIntents:v6];
    v8 = [v7 mutableCopy];

    provider3 = [self provider];
    bundleURL2 = [provider3 bundleURL];
    path = [bundleURL2 path];
    [v8 setObject:path forKeyedSubscript:*MEMORY[0x277CCA0B8]];

    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__0;
    v31 = __Block_byref_object_dispose__0;
    v32 = 0;
    v12 = dispatch_semaphore_create(0);
    v13 = PHDefaultLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v8;
      _os_log_impl(&dword_2429BC000, v13, OS_LOG_TYPE_DEFAULT, "Looking up send message intent extension using attributes: %@", buf, 0xCu);
    }

    v14 = MEMORY[0x277CCA9C8];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __51__TUCall_PHUIUtilities__sendMessageIntentExtension__block_invoke_38;
    v24 = &unk_278D74BB0;
    v26 = &v27;
    v15 = v12;
    v25 = v15;
    [v14 extensionsWithMatchingAttributes:v8 completion:&v21];
    v16 = dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    v17 = PHDefaultLog(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v28[5];
      *buf = 138412546;
      v34 = v18;
      v35 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_2429BC000, v17, OS_LOG_TYPE_DEFAULT, "Found send message intent extension %@ for call %@", buf, 0x16u);
    }

    [sendMessageIntentExtension_sendMessageIntentExtensionsCache setObject:v28[5] forKey:{self, v21, v22, v23, v24}];
    _Block_object_dispose(&v27, 8);
  }

  v19 = [sendMessageIntentExtension_sendMessageIntentExtensionsCache objectForKey:self];
LABEL_14:

  return v19;
}

@end