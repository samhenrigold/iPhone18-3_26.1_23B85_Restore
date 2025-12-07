@interface TUJoinConversationRequest
- (CXJoinCallAction)joinCallAction;
@end

@implementation TUJoinConversationRequest

- (CXJoinCallAction)joinCallAction
{
  selfCopy = self;
  remoteMembers = [(TUJoinConversationRequest *)selfCopy remoteMembers];
  v61 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [remoteMembers count]);

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v60 = selfCopy;
  remoteMembers2 = [(TUJoinConversationRequest *)selfCopy remoteMembers];
  v5 = [remoteMembers2 countByEnumeratingWithState:&v66 objects:v73 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v67;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v67 != v7)
        {
          objc_enumerationMutation(remoteMembers2);
        }

        v9 = *(*(&v66 + 1) + 8 * i);
        v10 = [CXMember alloc];
        handle = [v9 handle];
        v12 = [CXHandle handleWithTUHandle:handle];
        stableDeviceIdentifier = [v9 stableDeviceIdentifier];
        v14 = [v10 initWithHandle:v12 identityBlob:0 stableDeviceIdentifier:stableDeviceIdentifier];
        [v61 addObject:v14];
      }

      v6 = [remoteMembers2 countByEnumeratingWithState:&v66 objects:v73 count:16];
    }

    while (v6);
  }

  otherInvitedHandles = [(TUJoinConversationRequest *)selfCopy otherInvitedHandles];
  v16 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [otherInvitedHandles count]);

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  otherInvitedHandles2 = [(TUJoinConversationRequest *)selfCopy otherInvitedHandles];
  v18 = [otherInvitedHandles2 countByEnumeratingWithState:&v62 objects:v72 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v63;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v63 != v20)
        {
          objc_enumerationMutation(otherInvitedHandles2);
        }

        v22 = [CXHandle handleWithTUHandle:*(*(&v62 + 1) + 8 * j)];
        [v16 addObject:v22];
      }

      v19 = [otherInvitedHandles2 countByEnumeratingWithState:&v62 objects:v72 count:16];
    }

    while (v19);
  }

  conversationLink = [(TUJoinConversationRequest *)v60 conversationLink];
  if (conversationLink && ([(TUJoinConversationRequest *)v60 isJoiningConversationWithLink]& 1) == 0)
  {
    uUID = [(TUJoinConversationRequest *)v60 UUID];
  }

  else
  {
    messagesGroupUUID = [(TUJoinConversationRequest *)v60 messagesGroupUUID];
    v25 = messagesGroupUUID;
    if (messagesGroupUUID)
    {
      uUID = messagesGroupUUID;
    }

    else
    {
      conversationLink2 = [(TUJoinConversationRequest *)v60 conversationLink];
      groupUUID = [conversationLink2 groupUUID];
      v29 = groupUUID;
      if (groupUUID)
      {
        v30 = groupUUID;
      }

      else
      {
        v30 = +[NSUUID UUID];
      }

      uUID = v30;
    }
  }

  v31 = [CXJoinCallAction alloc];
  uUID2 = [(TUJoinConversationRequest *)v60 UUID];
  v33 = [v31 initWithCallUUID:uUID2 groupUUID:uUID];

  if (conversationLink)
  {
    pseudonym = [conversationLink pseudonym];
    [v33 setPseudonym:pseudonym];

    publicKey = [conversationLink publicKey];
    [v33 setPublicKey:publicKey];
  }

  [v33 setRemoteMembers:v61];
  [v33 setOtherInvitedHandles:v16];
  [v33 setVideoEnabled:{-[TUJoinConversationRequest isVideoEnabled](v60, "isVideoEnabled")}];
  activity = [(TUJoinConversationRequest *)v60 activity];
  if (activity)
  {
    activity2 = [(TUJoinConversationRequest *)v60 activity];
    v38 = [CXJoinCallActivity activityWithTUConversationActivity:activity2];
    [v33 setJoinCallActivity:v38];
  }

  else
  {
    [v33 setJoinCallActivity:0];
  }

  [v33 setVideo:{-[TUJoinConversationRequest isVideo](v60, "isVideo")}];
  callerID = [(TUJoinConversationRequest *)v60 callerID];
  if (callerID)
  {
    callerID2 = [(TUJoinConversationRequest *)v60 callerID];
    v41 = [CXHandle handleWithTUHandle:callerID2];
    [v33 setCallerID:v41];
  }

  else
  {
    [v33 setCallerID:0];
  }

  [v33 setAvMode:{-[TUJoinConversationRequest avMode](v60, "avMode")}];
  [v33 setPresentationMode:{-[TUJoinConversationRequest presentationMode](v60, "presentationMode")}];
  [v33 setUplinkMuted:{-[TUJoinConversationRequest isUplinkMuted](v60, "isUplinkMuted")}];
  [v33 setShouldSuppressInCallUI:{-[TUJoinConversationRequest shouldSuppressInCallUI](v60, "shouldSuppressInCallUI")}];
  [v33 setLaunchInBackground:{-[TUJoinConversationRequest launchInBackground](v60, "launchInBackground")}];
  messagesGroupUUID2 = [(TUJoinConversationRequest *)v60 messagesGroupUUID];
  [v33 setMessagesGroupUUID:messagesGroupUUID2];

  messagesGroupName = [(TUJoinConversationRequest *)v60 messagesGroupName];
  [v33 setMessagesGroupName:messagesGroupName];

  [v33 setWantsStagingArea:{-[TUJoinConversationRequest wantsStagingArea](v60, "wantsStagingArea")}];
  [v33 setLetMeIn:{-[TUJoinConversationRequest sendLetMeInRequest](v60, "sendLetMeInRequest")}];
  [v33 setJoiningConversationWithLink:{-[TUJoinConversationRequest isJoiningConversationWithLink](v60, "isJoiningConversationWithLink")}];
  provider = [(TUJoinConversationRequest *)v60 provider];
  identifier = [provider identifier];
  [v33 setConversationProviderIdentifier:identifier];

  collaborationIdentifier = [(TUJoinConversationRequest *)v60 collaborationIdentifier];
  [v33 setCollaborationIdentifier:collaborationIdentifier];

  invitationPreferences = [(TUJoinConversationRequest *)v60 invitationPreferences];
  v48 = [invitationPreferences count];

  if (v48)
  {
    v50 = sub_100004778(v49);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      invitationPreferences2 = [(TUJoinConversationRequest *)v60 invitationPreferences];
      *buf = 138412290;
      v71 = invitationPreferences2;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Join request specifies invitation preferences: %@", buf, 0xCu);
    }

    notificationStylesByHandleType = [(TUJoinConversationRequest *)v60 notificationStylesByHandleType];
    [v33 setNotificationStylesByHandleType:notificationStylesByHandleType];
  }

  [v33 setRelay:{-[TUJoinConversationRequest endpointOnCurrentDevice](v60, "endpointOnCurrentDevice") ^ 1}];
  participantCluster = [(TUJoinConversationRequest *)v60 participantCluster];

  if (participantCluster)
  {
    v54 = [CXJoinCallParticipantCluster alloc];
    participantCluster2 = [(TUJoinConversationRequest *)v60 participantCluster];
    uUID3 = [participantCluster2 UUID];
    participantCluster3 = [(TUJoinConversationRequest *)v60 participantCluster];
    v58 = [v54 initWithUUID:uUID3 type:{objc_msgSend(participantCluster3, "type")}];
    [v33 setParticipantCluster:v58];
  }

  return v33;
}

@end