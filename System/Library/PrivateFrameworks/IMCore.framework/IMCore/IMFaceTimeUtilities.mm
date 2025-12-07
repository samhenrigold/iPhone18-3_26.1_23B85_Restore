@interface IMFaceTimeUtilities
+ (BOOL)activeTUConversationHasActivitySession:(id)session;
+ (BOOL)conversationIsAVLessSharePlay:(id)play;
+ (BOOL)conversationIsVideoCall:(id)call;
+ (BOOL)isScreenShareActivityForTUConversation:(id)conversation;
+ (id)activityMetadataForTUConversation:(id)conversation;
+ (id)activitySessionForTUConversation:(id)conversation;
+ (id)currentCallForTUConversation:(id)conversation;
+ (id)remoteParticipantHandleSharingScreenForTUConversation:(id)conversation;
+ (void)initiateTUConversationForParticipants:(id)participants senderAddress:(id)address videoEnabled:(BOOL)enabled groupID:(id)d displayName:(id)name screenShareType:(unint64_t)type;
+ (void)initiateTUDialRequestForSingleParticipant:(id)participant videoEnabled:(BOOL)enabled;
+ (void)joinExistingConversationForTUCoversation:(id)coversation videoEnabled:(BOOL)enabled wantsStagingArea:(BOOL)area;
+ (void)leaveTUCall:(id)call;
+ (void)leaveTUConversation;
@end

@implementation IMFaceTimeUtilities

+ (id)currentCallForTUConversation:(id)conversation
{
  v25 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  mEMORY[0x1E69D8A58] = [MEMORY[0x1E69D8A58] sharedInstance];
  currentVideoCalls = [mEMORY[0x1E69D8A58] currentVideoCalls];

  obj = currentVideoCalls;
  v6 = [currentVideoCalls countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        mEMORY[0x1E69D8A58]2 = [MEMORY[0x1E69D8A58] sharedInstance];
        v13 = [mEMORY[0x1E69D8A58]2 activeConversationForCall:v11];

        uUID = [v13 UUID];
        uUID2 = [conversationCopy UUID];
        v16 = [uUID isEqual:uUID2];

        if (v16)
        {
          v17 = v11;

          v8 = v17;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)activeTUConversationHasActivitySession:(id)session
{
  if (!session)
  {
    return 0;
  }

  v3 = [IMFaceTimeUtilities activitySessionForTUConversation:?];
  v4 = v3 != 0;

  return v4;
}

+ (void)joinExistingConversationForTUCoversation:(id)coversation videoEnabled:(BOOL)enabled wantsStagingArea:(BOOL)area
{
  areaCopy = area;
  enabledCopy = enabled;
  v16 = *MEMORY[0x1E69E9840];
  coversationCopy = coversation;
  if (coversationCopy)
  {
    v8 = [objc_alloc(MEMORY[0x1E69D8C10]) initWithConversation:coversationCopy];
    [v8 setVideoEnabled:enabledCopy];
    [v8 setWantsStagingArea:areaCopy];
    [v8 setOriginatingUIType:19];
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = @"NO";
        *v13 = 138412802;
        *&v13[4] = coversationCopy;
        *&v13[12] = 2112;
        if (enabledCopy)
        {
          v10 = @"YES";
        }

        *&v13[14] = v10;
        v14 = 2112;
        v15 = v8;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Joining TUConversation %@ with videoEnabled %@ using join request: %@", v13, 0x20u);
      }
    }

    mEMORY[0x1E69D8A58] = [MEMORY[0x1E69D8A58] sharedInstance];
    [mEMORY[0x1E69D8A58] launchAppForJoinRequest:v8];
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "***** --- We are trying to join a TUConversation, but we do not have a local conversation for this chat --- ****", v13, 2u);
    }
  }
}

+ (void)initiateTUConversationForParticipants:(id)participants senderAddress:(id)address videoEnabled:(BOOL)enabled groupID:(id)d displayName:(id)name screenShareType:(unint64_t)type
{
  enabledCopy = enabled;
  v62 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  addressCopy = address;
  dCopy = d;
  nameCopy = name;
  if (IMDeviceIsGreenTea() && IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "IMFaceTimeUtilities: request to initiate a group facetime for a green tea device. Only TUDialRequests are supported in this configuration, so this request will fail.", buf, 2u);
    }
  }

  v13 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(participantsCopy, "count")}];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = participantsCopy;
  v14 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v14)
  {
    v15 = *v52;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v52 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v51 + 1) + 8 * i);
        v18 = MEMORY[0x1E69D8C00];
        v19 = [v17 ID];
        v20 = [v18 normalizedHandleWithDestinationID:v19];

        if (v20)
        {
          v21 = objc_alloc(MEMORY[0x1E69D8B80]);
          v22 = [MEMORY[0x1E695DFD8] setWithObject:v20];
          v23 = [v21 initWithHandles:v22];

          [v13 addObject:v23];
        }

        else if (IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v58 = v17;
            _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "Skipping handle (%@) as the ID is nil", buf, 0xCu);
          }
        }
      }

      v14 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
    }

    while (v14);
  }

  if ([v13 count])
  {
    v25 = [objc_alloc(MEMORY[0x1E69D8C10]) initWithRemoteMembers:v13];
    v26 = v25;
    if (enabledCopy)
    {
      v27 = 2;
    }

    else
    {
      v27 = 1;
    }

    [v25 setAvMode:v27];
    [v26 setVideoEnabled:enabledCopy];
    [v26 setRequestToShareMyScreen:type == 1];
    [v26 setRequestToShareScreen:type == 2];
    [v26 setShouldSuppressInCallUI:1];
    expanseProvider = [MEMORY[0x1E69D8BA8] expanseProvider];
    [v26 setProvider:expanseProvider];

    if (type)
    {
      v29 = 32;
    }

    else
    {
      v29 = 18;
    }

    [v26 setOriginatingUIType:v29];
    if (objc_opt_respondsToSelector())
    {
      v30 = [MEMORY[0x1E69D8C00] normalizedHandleWithDestinationID:addressCopy];
      v31 = +[IMService facetimeService];
      v32 = IMPreferredAccountForService(v31);

      if ([v32 hasAlias:addressCopy])
      {
        [v26 setCallerID:v30];
      }

      else if (IMOSLoggingEnabled())
      {
        v34 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          aliases = [v32 aliases];
          *buf = 138412546;
          v58 = addressCopy;
          v59 = 2112;
          v60 = aliases;
          _os_log_impl(&dword_1A823F000, v34, OS_LOG_TYPE_INFO, "IMFaceTimeUtilities: Skipping setting callerID since FT account doesn't contain senderAddress: %@, aliases: %@", buf, 0x16u);
        }
      }
    }

    if ([obj count] < 2)
    {
      v43 = objc_alloc(MEMORY[0x1E695DFD8]);
      v36 = [objc_alloc(MEMORY[0x1E69D8B68]) initWithHandleType:2 notificationStyles:4];
      v55[0] = v36;
      v38 = [objc_alloc(MEMORY[0x1E69D8B68]) initWithHandleType:3 notificationStyles:4];
      v55[1] = v38;
      v39 = [objc_alloc(MEMORY[0x1E69D8B68]) initWithHandleType:1 notificationStyles:4];
      v55[2] = v39;
      v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:3];
      v42 = [v43 initWithArray:v40];
    }

    else
    {
      v36 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:dCopy];
      [v26 setMessagesGroupUUID:v36];
      [v26 setMessagesGroupName:nameCopy];
      v37 = objc_alloc(MEMORY[0x1E695DFD8]);
      v38 = [objc_alloc(MEMORY[0x1E69D8B68]) initWithHandleType:2 notificationStyles:2];
      v56[0] = v38;
      v39 = [objc_alloc(MEMORY[0x1E69D8B68]) initWithHandleType:3 notificationStyles:2];
      v56[1] = v39;
      v40 = [objc_alloc(MEMORY[0x1E69D8B68]) initWithHandleType:1 notificationStyles:2];
      v56[2] = v40;
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:3];
      v42 = [v37 initWithArray:v41];
    }

    [v26 setInvitationPreferences:v42];
    mEMORY[0x1E69D8A58] = [MEMORY[0x1E69D8A58] sharedInstance];
    [mEMORY[0x1E69D8A58] launchAppForJoinRequest:v26];
  }

  else if (IMOSLoggingEnabled())
  {
    v33 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v33, OS_LOG_TYPE_INFO, "IMFaceTimeUtilities: Not starting FaceTime as the conversation has no valid participants.", buf, 2u);
    }
  }
}

+ (void)initiateTUDialRequestForSingleParticipant:(id)participant videoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v29 = *MEMORY[0x1E69E9840];
  participantCopy = participant;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "initiateTUDialRequestForSingleParticipant", buf, 2u);
    }
  }

  mEMORY[0x1E69D8A58] = [MEMORY[0x1E69D8A58] sharedInstance];
  providerManager = [mEMORY[0x1E69D8A58] providerManager];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  providers = [providerManager providers];
  v10 = [providers countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v10)
  {
    v11 = *v23;
LABEL_7:
    v12 = 0;
    while (1)
    {
      if (*v23 != v11)
      {
        objc_enumerationMutation(providers);
      }

      v13 = *(*(&v22 + 1) + 8 * v12);
      if ([v13 isFaceTimeProvider])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [providers countByEnumeratingWithState:&v22 objects:v28 count:16];
        if (v10)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    v14 = v13;

    if (!v14)
    {
      goto LABEL_16;
    }

    v15 = [objc_alloc(MEMORY[0x1E69D8BD0]) initWithProvider:v14];
    v16 = MEMORY[0x1E69D8C00];
    v17 = [participantCopy ID];
    v18 = [v16 normalizedHandleWithDestinationID:v17];
    [v15 setHandle:v18];

    [v15 setVideo:enabledCopy];
    [v15 setShouldSuppressInCallUI:1];
    [v15 setOriginatingUIType:18];
    mEMORY[0x1E69D8A58]2 = [MEMORY[0x1E69D8A58] sharedInstance];
    [mEMORY[0x1E69D8A58]2 launchAppForDialRequest:v15 completion:0];
  }

  else
  {
LABEL_13:

LABEL_16:
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        providers2 = [providerManager providers];
        *buf = 138412290;
        v27 = providers2;
        _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Could not find FaceTime Provider, all providers: %@", buf, 0xCu);
      }
    }
  }
}

+ (void)leaveTUConversation
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Leaving active video call", v5, 2u);
    }
  }

  mEMORY[0x1E69D8A58] = [MEMORY[0x1E69D8A58] sharedInstance];
  activeVideoCall = [mEMORY[0x1E69D8A58] activeVideoCall];
  [IMFaceTimeUtilities leaveTUCall:activeVideoCall];
}

+ (void)leaveTUCall:(id)call
{
  v8 = *MEMORY[0x1E69E9840];
  callCopy = call;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = callCopy;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Leaving TUCall %@", &v6, 0xCu);
    }
  }

  mEMORY[0x1E69D8A58] = [MEMORY[0x1E69D8A58] sharedInstance];
  [mEMORY[0x1E69D8A58] disconnectCall:callCopy];
}

+ (BOOL)isScreenShareActivityForTUConversation:(id)conversation
{
  v3 = [IMFaceTimeUtilities activitySessionForTUConversation:conversation];
  activity = [v3 activity];

  if (activity)
  {
    isScreenSharingActivity = [activity isScreenSharingActivity];
  }

  else
  {
    isScreenSharingActivity = 0;
  }

  return isScreenSharingActivity;
}

+ (id)activitySessionForTUConversation:(id)conversation
{
  conversationCopy = conversation;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isAVLessSharePlayEnabled = [mEMORY[0x1E69A8070] isAVLessSharePlayEnabled];

  activitySessions = [conversationCopy activitySessions];
  v8 = activitySessions;
  if (isAVLessSharePlayEnabled)
  {
    anyObject = [activitySessions anyObject];

    if (!anyObject)
    {
      if ([self conversationIsAVLessSharePlay:conversationCopy])
      {
        anyObject = [conversationCopy stagedActivitySession];
      }

      else
      {
        anyObject = 0;
      }
    }
  }

  else
  {
    allObjects = [activitySessions allObjects];
    anyObject = [allObjects firstObject];
  }

  return anyObject;
}

+ (id)remoteParticipantHandleSharingScreenForTUConversation:(id)conversation
{
  v3 = [IMFaceTimeUtilities activitySessionForTUConversation:conversation];
  activity = [v3 activity];

  if ([activity isScreenSharingActivity])
  {
    originator = [activity originator];
    value = [originator value];
  }

  else
  {
    value = 0;
  }

  return value;
}

+ (id)activityMetadataForTUConversation:(id)conversation
{
  v4 = MEMORY[0x1E69A8070];
  conversationCopy = conversation;
  sharedFeatureFlags = [v4 sharedFeatureFlags];
  isAVLessSharePlayEnabled = [sharedFeatureFlags isAVLessSharePlayEnabled];

  if (isAVLessSharePlayEnabled)
  {
    activitySessions = [self activitySessionForTUConversation:conversationCopy];

    activity = [activitySessions activity];
    metadata = [activity metadata];
  }

  else
  {
    activitySessions = [conversationCopy activitySessions];

    activity = [activitySessions allObjects];
    firstObject = [activity firstObject];
    activity2 = [firstObject activity];
    metadata = [activity2 metadata];
  }

  return metadata;
}

+ (BOOL)conversationIsVideoCall:(id)call
{
  callCopy = call;
  avMode = [callCopy avMode];
  v5 = NSSelectorFromString(&cfstr_Resolvedaudiov.isa);
  if (objc_opt_respondsToSelector())
  {
    avMode = [callCopy performSelector:v5];
  }

  return avMode == 2;
}

+ (BOOL)conversationIsAVLessSharePlay:(id)play
{
  playCopy = play;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isAVLessSharePlayEnabled = [mEMORY[0x1E69A8070] isAVLessSharePlayEnabled];

  if (isAVLessSharePlayEnabled)
  {
    v6 = [playCopy avMode] == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end