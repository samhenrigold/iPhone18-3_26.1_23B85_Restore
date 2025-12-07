@interface MSASPhoneInvitations
- (MSASPhoneInvitations)init;
- (void)addPendingPhoneInvitations:(id)invitations toOwnedAlbum:(id)album inStateMachin:(id)machin;
- (void)removeSharingRelationships:(id)relationships forAlbum:(id)album;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
@end

@implementation MSASPhoneInvitations

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v36 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    userInfo = [errorCopy userInfo];
    *buf = 138544642;
    v25 = serviceCopy;
    v26 = 2112;
    v27 = accountCopy;
    v28 = 2114;
    v29 = identifierCopy;
    v30 = 1024;
    v31 = successCopy;
    v32 = 2114;
    v33 = errorCopy;
    v34 = 2114;
    v35 = userInfo;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "IDS: Get send message callback for service %{public}@ account %@ identifier %{public}@ success %d error %{public}@ info %{public}@", buf, 0x3Au);

    if (!identifierCopy)
    {
      goto LABEL_11;
    }
  }

  else if (!identifierCopy)
  {
    goto LABEL_11;
  }

  v16 = [(NSMutableDictionary *)self->_sendMessageIdentifierToPhone objectForKey:identifierCopy];
  if (v16)
  {
    [(NSMutableDictionary *)self->_sendMessageIdentifierToPhone removeObjectForKey:identifierCopy];
    delegate = [(MSASStateMachine *)self->_stateMachine delegate];
    [delegate MSASStateMachine:self->_stateMachine didFinishSendingInvitationByPhone:v16 toOwnedAlbum:self->_album info:0 error:errorCopy];

    if (successCopy)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        album = self->_album;
        *buf = 138412802;
        v25 = accountCopy;
        v26 = 2114;
        v27 = album;
        v28 = 2114;
        v29 = identifierCopy;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "IDS: Successfully send message from %@ for album %{public}@ with IDS identifier %{public}@.", buf, 0x20u);
      }
    }

    else
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = self->_album;
      userInfo2 = [errorCopy userInfo];
      v22 = [v19 stringWithFormat:@"IDS: Failed to send message from %@ for album %@ with identifier %@. Error: %@ Info: %@", accountCopy, v20, identifierCopy, errorCopy, userInfo2];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v25 = v22;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }
    }
  }

LABEL_11:
}

- (void)removeSharingRelationships:(id)relationships forAlbum:(id)album
{
  v60 = *MEMORY[0x277D85DE8];
  relationshipsCopy = relationships;
  selfCopy = self;
  albumCopy = album;
  accounts = [(IDSService *)self->_idsService accounts];
  anyObject = [accounts anyObject];

  v8 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(relationshipsCopy, "count")}];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = relationshipsCopy;
  v34 = [obj countByEnumeratingWithState:&v42 objects:v59 count:16];
  if (v34)
  {
    v33 = *v43;
    v9 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v43 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v42 + 1) + 8 * i);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        phones = [v11 phones];
        v13 = [phones countByEnumeratingWithState:&v38 objects:v58 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v39;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v39 != v15)
              {
                objc_enumerationMutation(phones);
              }

              v17 = *(*(&v38 + 1) + 8 * j);
              v18 = MEMORY[0x245D7B3A0](v17, 0, 1);
              if (v18)
              {
                [v8 addObject:v18];
              }

              else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v49 = v17;
                _os_log_error_impl(&dword_245B99000, v9, OS_LOG_TYPE_ERROR, "IDS: Failed to create IDS identifier from %@", buf, 0xCu);
              }
            }

            v14 = [phones countByEnumeratingWithState:&v38 objects:v58 count:16];
          }

          while (v14);
        }
      }

      v34 = [obj countByEnumeratingWithState:&v42 objects:v59 count:16];
    }

    while (v34);
  }

  if ([v8 count])
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v20 = [standardUserDefaults valueForKey:@"MSASPhoneInvitationDebugFakeAlbumUUID"];

    if ([v20 length])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v49 = v20;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Using debugFakeAlbumGUID %@", buf, 0xCu);
      }

      [albumCopy setGUID:v20];
    }

    v37 = 0;
    v21 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:albumCopy requiringSecureCoding:1 error:&v37];
    v22 = v37;
    if (v21)
    {
      v56[0] = @"albumData";
      v56[1] = @"type";
      v57[0] = v21;
      v57[1] = @"delete";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138544130;
        v49 = v23;
        v50 = 2112;
        v51 = anyObject;
        v52 = 2112;
        v53 = v8;
        v54 = 2114;
        v55 = albumCopy;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "IDS: Send message %{public}@ from %@ to %@ for album %{public}@", buf, 0x2Au);
      }

      v46 = *MEMORY[0x277D18650];
      v24 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
      v47 = v24;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];

      idsService = selfCopy->_idsService;
      v35 = 0;
      v36 = 0;
      LODWORD(v24) = [(IDSService *)idsService sendMessage:v23 fromAccount:anyObject toDestinations:v8 priority:300 options:v25 identifier:&v36 error:&v35];
      v27 = v36;
      v28 = v35;
      if (v24)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v49 = v27;
          _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "IDS: Send message with identifier %{public}@", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v49 = v28;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "IDS: Failed to send message. Error: %{public}@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v49 = v22;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to archive an album object: %{public}@", buf, 0xCu);
    }
  }
}

- (void)addPendingPhoneInvitations:(id)invitations toOwnedAlbum:(id)album inStateMachin:(id)machin
{
  albumCopy = album;
  objc_storeStrong(&self->_stateMachine, machin);
  machinCopy = machin;
  invitationsCopy = invitations;
  objc_storeStrong(&self->_album, album);
  accounts = [(IDSService *)self->_idsService accounts];
  anyObject = [accounts anyObject];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__MSASPhoneInvitations_addPendingPhoneInvitations_toOwnedAlbum_inStateMachin___block_invoke;
  v16[3] = &unk_278E90528;
  v17 = albumCopy;
  v18 = anyObject;
  selfCopy = self;
  v14 = anyObject;
  v15 = albumCopy;
  [invitationsCopy enumerateKeysAndObjectsUsingBlock:v16];
}

void __78__MSASPhoneInvitations_addPendingPhoneInvitations_toOwnedAlbum_inStateMachin___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) setMetadataValue:a3 forKey:@"phoneInvitationToken"];
    v6 = *(a1 + 32);
    v25 = 0;
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v25];
    v8 = v25;
    if (v7)
    {
      v9 = MEMORY[0x245D7B3A0](v5, 0, 1);
      if (v9)
      {
        v22 = v8;
        v10 = [MEMORY[0x277CBEB98] setWithObject:v9];
        v36[0] = @"albumData";
        v36[1] = @"type";
        v37[0] = v7;
        v37[1] = @"new";
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v13 = *(a1 + 32);
          v12 = *(a1 + 40);
          *buf = 138544130;
          v29 = v11;
          v30 = 2112;
          v31 = v12;
          v32 = 2112;
          v33 = v10;
          v34 = 2114;
          v35 = v13;
          _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "IDS: Send message %{public}@ from %@ to %@ for album %{public}@", buf, 0x2Au);
        }

        v26[0] = *MEMORY[0x277D18650];
        v14 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
        v26[1] = *MEMORY[0x277D185A0];
        v27[0] = v14;
        v27[1] = MEMORY[0x277CBEC28];
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];

        v16 = *(a1 + 40);
        v17 = *(*(a1 + 48) + 24);
        v23 = 0;
        v24 = 0;
        v18 = v10;
        v19 = [v17 sendMessage:v11 fromAccount:v16 toDestinations:v10 priority:300 options:v15 identifier:&v24 error:&v23];
        v20 = v24;
        v21 = v23;
        if (v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v29 = v20;
            _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "IDS: Send message with identifier %{public}@", buf, 0xCu);
          }

          [*(*(a1 + 48) + 32) setObject:v5 forKey:v20];
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v29 = v21;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "IDS: Failed to send message. Error: %{public}@", buf, 0xCu);
        }

        v8 = v22;
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = v5;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "IDS: Failed to create IDS identifier from %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v29 = v8;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to archive an album object: %{public}@", buf, 0xCu);
    }
  }
}

- (MSASPhoneInvitations)init
{
  v8.receiver = self;
  v8.super_class = MSASPhoneInvitations;
  v2 = [(MSASPhoneInvitations *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.photostream"];
    idsService = v2->_idsService;
    v2->_idsService = v3;

    [(IDSService *)v2->_idsService addDelegate:v2 queue:MEMORY[0x277D85CD0]];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    sendMessageIdentifierToPhone = v2->_sendMessageIdentifierToPhone;
    v2->_sendMessageIdentifierToPhone = dictionary;
  }

  return v2;
}

@end