@interface PMSeparationSource
- (PMSeparationSource)init;
- (id)_participantIdentityWithHandle:(id)handle;
- (id)_passwordsGroupWithGroup:(id)group;
- (id)_passwordsParticipantWithParticipant:(id)participant;
- (id)name;
- (void)_fetchGroupsExcludingInvitationsWithCompletionHandler:(id)handler;
- (void)_groupsAndParticipantsMatchingHandle:(id)handle completionHandler:(id)handler;
- (void)_leaveGroup:(id)group completionHandler:(id)handler;
- (void)_removeAllOtherParticipantsFromGroup:(id)group completionHandler:(id)handler;
- (void)_removeParticipant:(id)participant fromGroup:(id)group completionHandler:(id)handler;
- (void)_stopSharingWithGroup:(id)group completionHandler:(id)handler;
- (void)_stopSharingWithGroups:(id)groups completionHandler:(id)handler;
- (void)_stopSharingWithParticipant:(id)participant inGroup:(id)group completionHandler:(id)handler;
- (void)_stopSharingWithParticipantsMatchingHandle:(id)handle completionHandler:(id)handler;
- (void)fetchSharedResourcesWithCompletion:(id)completion;
- (void)stopAllSharingWithCompletion:(id)completion;
- (void)stopSharing:(id)sharing withCompletion:(id)completion;
- (void)stopSharingWithParticipant:(id)participant completion:(id)completion;
@end

@implementation PMSeparationSource

- (id)name
{
  v0 = sub_2339731A0();
  if (!v0)
  {
    sub_23397650C();
  }

  v1 = *v0;

  return v1;
}

- (PMSeparationSource)init
{
  v7.receiver = self;
  v7.super_class = PMSeparationSource;
  v2 = [(PMSeparationSource *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    contactStore = v2->_contactStore;
    v2->_contactStore = v3;

    v5 = v2;
  }

  return v2;
}

- (id)_passwordsGroupWithGroup:(id)group
{
  groupCopy = group;
  participants = [groupCopy participants];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2339739E8;
  v9[3] = &unk_2789F6030;
  v9[4] = self;
  v6 = [participants safari_mapObjectsUsingBlock:v9];

  v7 = [[PMSeparationGroup alloc] initWithGroup:groupCopy participants:v6];

  return v7;
}

- (id)_passwordsParticipantWithParticipant:(id)participant
{
  participantCopy = participant;
  handle = [participantCopy handle];
  v6 = [(PMSeparationSource *)self _participantIdentityWithHandle:handle];

  v7 = [[PMSeparationParticipant alloc] initWithParticipant:participantCopy identity:v6];

  return v7;
}

- (id)_participantIdentityWithHandle:(id)handle
{
  v18[1] = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v5 = MEMORY[0x277CBDA58];
  v18[0] = handleCopy;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v7 = [v5 predicateForContactsMatchingHandleStrings:v6];

  v8 = [(CNContactStore *)self->_contactStore unifiedContactsMatchingPredicate:v7 keysToFetch:MEMORY[0x277CBEBF8] error:0];
  firstObject = [v8 firstObject];

  if (firstObject)
  {
    v10 = [PMSeparationParticipantIdentity alloc];
    identifier = [firstObject identifier];
    v12 = [(PMSeparationParticipantIdentity *)v10 initWithContactIdentifier:identifier];
  }

  else
  {
    if ([MEMORY[0x277CFBE78] isStringPhoneNumber:handleCopy])
    {
      v13 = [[PMSeparationParticipantIdentity alloc] initWithPhoneNumber:handleCopy];
    }

    else
    {
      v14 = [MEMORY[0x277CFBE08] isStringEmailAddress:handleCopy];
      if ((v14 & 1) == 0)
      {
        v16 = sub_2339734A4(v14, v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_233976598();
        }
      }

      v13 = [[PMSeparationParticipantIdentity alloc] initWithEmailAddress:handleCopy];
    }

    v12 = v13;
  }

  return v12;
}

- (void)_stopSharingWithGroup:(id)group completionHandler:(id)handler
{
  handlerCopy = handler;
  groupCopy = group;
  currentUserParticipant = [groupCopy currentUserParticipant];
  permissionLevel = [currentUserParticipant permissionLevel];

  if (permissionLevel == 2)
  {
    [(PMSeparationSource *)self _removeAllOtherParticipantsFromGroup:groupCopy completionHandler:handlerCopy];
  }

  else
  {
    [(PMSeparationSource *)self _leaveGroup:groupCopy completionHandler:handlerCopy];
  }
}

- (void)_removeAllOtherParticipantsFromGroup:(id)group completionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  handlerCopy = handler;
  v7 = [groupCopy copy];
  participants = [v7 participants];
  if ([participants count] == 1)
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = participants;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          if (([v14 isCurrentUser] & 1) == 0)
          {
            [v7 removeParticipant:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    v15 = [objc_alloc(MEMORY[0x277CDBD38]) initWithUpdatedGroup:v7];
    mEMORY[0x277CDBD30] = [MEMORY[0x277CDBD30] sharedInstance];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_233973EE4;
    v17[3] = &unk_2789F6080;
    v18 = groupCopy;
    v19 = handlerCopy;
    [mEMORY[0x277CDBD30] updateGroupWithRequest:v15 completion:v17];
  }
}

- (void)_removeParticipant:(id)participant fromGroup:(id)group completionHandler:(id)handler
{
  participantCopy = participant;
  groupCopy = group;
  handlerCopy = handler;
  v10 = [groupCopy copy];
  [v10 removeParticipant:participantCopy];
  v11 = [objc_alloc(MEMORY[0x277CDBD38]) initWithUpdatedGroup:v10];
  mEMORY[0x277CDBD30] = [MEMORY[0x277CDBD30] sharedInstance];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_233974158;
  v16[3] = &unk_2789F60D0;
  v17 = participantCopy;
  v18 = groupCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = groupCopy;
  v15 = participantCopy;
  [mEMORY[0x277CDBD30] updateGroupWithRequest:v11 completion:v16];
}

- (void)_stopSharingWithGroups:(id)groups completionHandler:(id)handler
{
  groupsCopy = groups;
  handlerCopy = handler;
  v8 = dispatch_group_create();
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2810000000;
  v23[3] = &unk_233977E83;
  v24 = 0;
  array = [MEMORY[0x277CBEB18] array];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_233974474;
  v18[3] = &unk_2789F6120;
  v10 = v8;
  v19 = v10;
  selfCopy = self;
  v22 = v23;
  v11 = array;
  v21 = v11;
  [groupsCopy enumerateObjectsUsingBlock:v18];
  v12 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2339745B8;
  block[3] = &unk_2789F6148;
  v16 = v11;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = v11;
  dispatch_group_notify(v10, v12, block);

  _Block_object_dispose(v23, 8);
}

- (void)_stopSharingWithParticipantsMatchingHandle:(id)handle completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2339747B0;
  v8[3] = &unk_2789F6198;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(PMSeparationSource *)self _groupsAndParticipantsMatchingHandle:handle completionHandler:v8];
}

- (void)_groupsAndParticipantsMatchingHandle:(id)handle completionHandler:(id)handler
{
  handleCopy = handle;
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_233974D34;
  v10[3] = &unk_2789F6198;
  v11 = handleCopy;
  v12 = handlerCopy;
  v8 = handleCopy;
  v9 = handlerCopy;
  [(PMSeparationSource *)self _fetchGroupsExcludingInvitationsWithCompletionHandler:v10];
}

- (void)_stopSharingWithParticipant:(id)participant inGroup:(id)group completionHandler:(id)handler
{
  participantCopy = participant;
  handlerCopy = handler;
  groupCopy = group;
  currentUserParticipant = [groupCopy currentUserParticipant];
  permissionLevel = [currentUserParticipant permissionLevel];

  if (permissionLevel == 2)
  {
    [(PMSeparationSource *)self _removeParticipant:participantCopy fromGroup:groupCopy completionHandler:handlerCopy];
  }

  else
  {
    [(PMSeparationSource *)self _leaveGroup:groupCopy completionHandler:handlerCopy];
  }
}

- (void)_leaveGroup:(id)group completionHandler:(id)handler
{
  v23[1] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  handlerCopy = handler;
  groupID = [groupCopy groupID];
  v8 = [objc_alloc(MEMORY[0x277CDBD28]) initWithGroupID:groupID];
  mEMORY[0x277D49B58] = [MEMORY[0x277D49B58] sharedStore];
  v10 = [mEMORY[0x277D49B58] _moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupID:groupID isForAlreadyExitedGroup:0];

  if (v10)
  {
    mEMORY[0x277CDBD30] = [MEMORY[0x277CDBD30] sharedInstance];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_23397529C;
    v18[3] = &unk_2789F6238;
    v19 = groupCopy;
    v21 = handlerCopy;
    v20 = groupID;
    [mEMORY[0x277CDBD30] leaveGroupWithRequest:v8 completion:v18];

    v14 = v19;
  }

  else
  {
    v15 = sub_2339734A4(v11, v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_233976848();
    }

    v16 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v23[0] = @"Failed to copy contributed items back to My Passwords from group.";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v17 = [v16 errorWithDomain:@"com.apple.SafariShared.PasswordsDigitalSepration.PMSeparationErrorDomain" code:2 userInfo:v14];
    (*(handlerCopy + 2))(handlerCopy, v17);
  }
}

- (void)fetchSharedResourcesWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = sub_2339734A4(completionCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_233972000, v6, OS_LOG_TYPE_INFO, "Fetch shared groups", buf, 2u);
  }

  v7 = _os_feature_enabled_impl();
  if (v7)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_233975580;
    v10[3] = &unk_2789F6198;
    v10[4] = self;
    v11 = completionCopy;
    [(PMSeparationSource *)self _fetchGroupsExcludingInvitationsWithCompletionHandler:v10];
  }

  else
  {
    v9 = sub_2339734A4(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_233972000, v9, OS_LOG_TYPE_INFO, "Ignoring fetch groups request: ongoing sharing feature is disabled", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, MEMORY[0x277CBEBF8], 0);
  }
}

- (void)stopSharing:(id)sharing withCompletion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  sharingCopy = sharing;
  completionCopy = completion;
  v9 = sub_2339734A4(completionCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v32 = sharingCopy;
    _os_log_impl(&dword_233972000, v9, OS_LOG_TYPE_INFO, "Stop sharing with group: %@", buf, 0xCu);
  }

  v10 = _os_feature_enabled_impl();
  if (v10)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v14 = sharingCopy;
      group = [v14 group];
      groupID = [group groupID];

      mEMORY[0x277CDBD30] = [MEMORY[0x277CDBD30] sharedInstance];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = sub_23397597C;
      v25[3] = &unk_2789F62D8;
      v26 = groupID;
      selfCopy = self;
      v28 = completionCopy;
      v18 = groupID;
      [mEMORY[0x277CDBD30] getGroupByGroupID:v18 completion:v25];
    }

    else
    {
      v20 = sub_2339734A4(isKindOfClass, v13);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_23397696C();
      }

      v21 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277CCA450];
      sharingCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid resource: %@", sharingCopy];
      v30 = sharingCopy;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v24 = [v21 errorWithDomain:@"com.apple.SafariShared.PasswordsDigitalSepration.PMSeparationErrorDomain" code:1 userInfo:v23];
      (*(completionCopy + 2))(completionCopy, v24);
    }
  }

  else
  {
    v19 = sub_2339734A4(v10, v11);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_233972000, v19, OS_LOG_TYPE_INFO, "Ignoring stop sharing request: ongoing sharing feature is disabled", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)stopSharingWithParticipant:(id)participant completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  completionCopy = completion;
  v9 = sub_2339734A4(completionCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v30 = participantCopy;
    _os_log_impl(&dword_233972000, v9, OS_LOG_TYPE_INFO, "Stop sharing with participant: %@", buf, 0xCu);
  }

  v10 = _os_feature_enabled_impl();
  if (v10)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v14 = participantCopy;
      participant = [v14 participant];
      handle = [participant handle];

      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = sub_233975E94;
      v24[3] = &unk_2789F6288;
      v25 = handle;
      v26 = completionCopy;
      v17 = handle;
      [(PMSeparationSource *)self _stopSharingWithParticipantsMatchingHandle:v17 completionHandler:v24];
    }

    else
    {
      v19 = sub_2339734A4(isKindOfClass, v13);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_233976B28();
      }

      v20 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277CCA450];
      participantCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid participant: %@", participantCopy];
      v28 = participantCopy;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v23 = [v20 errorWithDomain:@"com.apple.SafariShared.PasswordsDigitalSepration.PMSeparationErrorDomain" code:1 userInfo:v22];
      (*(completionCopy + 2))(completionCopy, v23);
    }
  }

  else
  {
    v18 = sub_2339734A4(v10, v11);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_233972000, v18, OS_LOG_TYPE_INFO, "Ignoring stop sharing request: ongoing sharing feature is disabled", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)stopAllSharingWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = sub_2339734A4(completionCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_233972000, v6, OS_LOG_TYPE_INFO, "Stop all sharing", buf, 2u);
  }

  v7 = _os_feature_enabled_impl();
  if (v7)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_23397604C;
    v10[3] = &unk_2789F6198;
    v10[4] = self;
    v11 = completionCopy;
    [(PMSeparationSource *)self _fetchGroupsExcludingInvitationsWithCompletionHandler:v10];
  }

  else
  {
    v9 = sub_2339734A4(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_233972000, v9, OS_LOG_TYPE_INFO, "Ignoring stop sharing request: ongoing sharing feature is disabled", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)_fetchGroupsExcludingInvitationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  mEMORY[0x277CDBD30] = [MEMORY[0x277CDBD30] sharedInstance];
  v5 = [MEMORY[0x277CDBD20] all];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23397628C;
  v7[3] = &unk_2789F6370;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [mEMORY[0x277CDBD30] getGroupsWithRequest:v5 completion:v7];
}

@end