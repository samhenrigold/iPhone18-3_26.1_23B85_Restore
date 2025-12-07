@interface NNMKSyncPersistenceHandler
- (NNMKDeviceRegistryHolder)delegate;
- (NNMKSyncStateManager)syncStateManager;
- (id)addAccountAuthenticationStatusRequest:(double)request;
- (id)addMessageContent:(id)content forMessage:(id)message mailbox:(id)mailbox;
- (id)addMessages:(id)messages containsNewMessages:(BOOL)newMessages mailbox:(id)mailbox;
- (id)addMessagesToResend:(id)resend mailbox:(id)mailbox;
- (id)addMoreConversationSpecificMessages:(id)messages conversationId:(id)id mailbox:(id)mailbox;
- (id)addMoreMessages:(id)messages mailbox:(id)mailbox;
- (id)addStandaloneAccountIdentity:(id)identity;
- (id)currentDeviceRegistry;
- (id)deleteMessagesWithIds:(id)ids mailbox:(id)mailbox;
- (id)persistAccounts:(id)accounts;
- (id)protoMessageFromMessage:(id)message;
- (id)updateMailboxListForAccount:(id)account mailboxListChanged:(BOOL *)changed;
- (id)updateMessagesFromConversation:(id)conversation withState:(unint64_t)state include:(BOOL)include mailbox:(id)mailbox;
- (id)updateMessagesStatus:(id)status mailbox:(id)mailbox;
- (void)_createDefaultMailbox:(id)mailbox;
@end

@implementation NNMKSyncPersistenceHandler

- (id)persistAccounts:(id)accounts
{
  v92 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  v5 = objc_alloc_init(NNMKProtoInitialAccountsSync);
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v6 = accountsCopy;
  v63 = [v6 countByEnumeratingWithState:&v77 objects:v91 count:16];
  if (v63)
  {
    v60 = *v78;
    v7 = &__logCategories;
    v8 = &dword_25B19F000;
    v61 = v6;
    v62 = v5;
    do
    {
      v9 = 0;
      do
      {
        if (*v78 != v60)
        {
          objc_enumerationMutation(v6);
        }

        v65 = v9;
        v10 = *(*(&v77 + 1) + 8 * v9);
        v11 = objc_alloc_init(NNMKProtoAccountAdditionOrUpdate);
        accountId = [v10 accountId];
        [(NNMKProtoAccountAdditionOrUpdate *)v11 setAccountId:accountId];

        displayName = [v10 displayName];
        [(NNMKProtoAccountAdditionOrUpdate *)v11 setDisplayName:displayName];

        -[NNMKProtoAccountAdditionOrUpdate setShouldArchive:](v11, "setShouldArchive:", [v10 shouldArchive]);
        currentDeviceRegistry = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
        -[NNMKProtoAccountAdditionOrUpdate setFullSyncVersion:](v11, "setFullSyncVersion:", [currentDeviceRegistry fullSyncVersion]);

        username = [v10 username];
        [(NNMKProtoAccountAdditionOrUpdate *)v11 setUsername:username];

        localId = [v10 localId];
        [(NNMKProtoAccountAdditionOrUpdate *)v11 setLocalId:localId];

        parentAccountIdentifier = [v10 parentAccountIdentifier];
        [(NNMKProtoAccountAdditionOrUpdate *)v11 setParentId:parentAccountIdentifier];

        defaultEmailAddress = [v10 defaultEmailAddress];
        [(NNMKProtoAccountAdditionOrUpdate *)v11 setDefaultEmail:defaultEmailAddress];

        typeIdentifier = [v10 typeIdentifier];
        [(NNMKProtoAccountAdditionOrUpdate *)v11 setTypeIdentifier:typeIdentifier];

        emailAddressToken = [v10 emailAddressToken];
        [(NNMKProtoAccountAdditionOrUpdate *)v11 setEmailAddressToken:emailAddressToken];

        pccEmailAddress = [v10 pccEmailAddress];
        [(NNMKProtoAccountAdditionOrUpdate *)v11 setPccEmailAddress:pccEmailAddress];

        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        emailAddresses = [v10 emailAddresses];
        v23 = [emailAddresses countByEnumeratingWithState:&v73 objects:v90 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v74;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v74 != v25)
              {
                objc_enumerationMutation(emailAddresses);
              }

              [(NNMKProtoAccountAdditionOrUpdate *)v11 addEmail:*(*(&v73 + 1) + 8 * i), v60];
            }

            v24 = [emailAddresses countByEnumeratingWithState:&v73 objects:v90 count:16];
          }

          while (v24);
        }

        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v64 = v10;
        mailboxes = [v10 mailboxes];
        v68 = [mailboxes countByEnumeratingWithState:&v69 objects:v89 count:16];
        if (v68)
        {
          v28 = *v70;
          v67 = v11;
          do
          {
            for (j = 0; j != v68; ++j)
            {
              if (*v70 != v28)
              {
                objc_enumerationMutation(mailboxes);
              }

              v30 = *(*(&v69 + 1) + 8 * j);
              syncController = [(NNMKSyncPersistenceHandler *)self syncController];
              v32 = [syncController canSyncMailbox:v30];

              v33 = v7[1];
              v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
              if (v32)
              {
                if (v34)
                {
                  log = v33;
                  mailboxId = [v30 mailboxId];
                  type = [v30 type];
                  v37 = v28;
                  v38 = mailboxes;
                  selfCopy = self;
                  v40 = v8;
                  v41 = v7;
                  filterType = [v30 filterType];
                  syncEnabled = [v30 syncEnabled];
                  *buf = 138544130;
                  v82 = mailboxId;
                  v83 = 2048;
                  v84 = type;
                  v85 = 2048;
                  v86 = filterType;
                  v7 = v41;
                  v8 = v40;
                  self = selfCopy;
                  mailboxes = v38;
                  v28 = v37;
                  v87 = 2048;
                  v88 = syncEnabled;
                  _os_log_impl(v8, log, OS_LOG_TYPE_DEFAULT, "Mailbox received. (Mailbox id: %{public}@, Type: %lu, Filter: %lu, Sync enabled: %lu)", buf, 0x2Au);
                }

                delegate = [(NNMKSyncPersistenceHandler *)self delegate];
                pairedDeviceSupportsMultipleMailboxes = [delegate pairedDeviceSupportsMultipleMailboxes];

                if ((pairedDeviceSupportsMultipleMailboxes & 1) == 0)
                {
                  v46 = [v30 copy];

                  [v46 setSyncActive:0];
                  [v46 setSyncEnabled:0];
                  v30 = v46;
                }

                currentDeviceRegistry2 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
                [currentDeviceRegistry2 addOrUpdateMailbox:v30];

                v48 = [NNMKProtoMailbox protoMailboxFromMailbox:v30];
                v11 = v67;
                [(NNMKProtoAccountAdditionOrUpdate *)v67 addMailboxes:v48];
              }

              else
              {
                if (!v34)
                {
                  goto LABEL_27;
                }

                v48 = v33;
                mailboxId2 = [v30 mailboxId];
                type2 = [v30 type];
                *buf = 138543618;
                v82 = mailboxId2;
                v83 = 2048;
                v84 = type2;
                _os_log_impl(v8, v48, OS_LOG_TYPE_DEFAULT, "Mailbox will not be synced. (Id: %{public}@, Type: %lu)", buf, 0x16u);
              }

LABEL_27:
            }

            v68 = [mailboxes countByEnumeratingWithState:&v69 objects:v89 count:16];
          }

          while (v68);
        }

        v5 = v62;
        [(NNMKProtoInitialAccountsSync *)v62 addInitialAccount:v11];
        currentDeviceRegistry3 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
        v52 = [[NNMKSyncedAccount alloc] initWithAccount:v64];
        [currentDeviceRegistry3 addOrUpdateSyncedAccount:v52];

        v9 = v65 + 1;
        v6 = v61;
      }

      while (v65 + 1 != v63);
      v63 = [v61 countByEnumeratingWithState:&v77 objects:v91 count:16];
    }

    while (v63);
  }

  delegate2 = [(NNMKSyncPersistenceHandler *)self delegate];
  pairedDeviceSupportsMultipleMailboxes2 = [delegate2 pairedDeviceSupportsMultipleMailboxes];

  if ((pairedDeviceSupportsMultipleMailboxes2 & 1) == 0)
  {
    [(NNMKSyncPersistenceHandler *)self _createDefaultMailbox:v6];
  }

  currentDeviceRegistry4 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  -[NNMKProtoInitialAccountsSync setFullSyncVersion:](v5, "setFullSyncVersion:", [currentDeviceRegistry4 fullSyncVersion]);

  v56 = MEMORY[0x277CCAAB0];
  date = [MEMORY[0x277CBEAA8] date];
  v58 = [v56 archivedDataWithRootObject:date requiringSecureCoding:1 error:0];
  [(NNMKProtoInitialAccountsSync *)v5 setDateSynced:v58];

  return v5;
}

- (void)_createDefaultMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v5 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_25B19F000, v5, OS_LOG_TYPE_DEFAULT, "Creating default mailbox because device does not support multiple mailboxes", v17, 2u);
  }

  currentDeviceRegistry = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  v7 = [currentDeviceRegistry mailboxWithId:@"-1"];

  if (!v7)
  {
    v7 = objc_alloc_init(NNMKMailbox);
    [(NNMKMailbox *)v7 setMailboxId:@"-1"];
  }

  v8 = [[NNMKMailboxSelection alloc] initWithAccounts:mailboxCopy];
  mailboxesWithAllMessagesSyncEnabled = [(NNMKMailboxSelection *)v8 mailboxesWithAllMessagesSyncEnabled];
  v10 = [mailboxesWithAllMessagesSyncEnabled count];

  if (v10 == 1)
  {
    mailboxesWithAllMessagesSyncEnabled2 = [(NNMKMailboxSelection *)v8 mailboxesWithAllMessagesSyncEnabled];
    firstObject = [mailboxesWithAllMessagesSyncEnabled2 firstObject];

    -[NNMKMailbox setType:](v7, "setType:", [firstObject type]);
    -[NNMKMailbox setFilterType:](v7, "setFilterType:", [firstObject filterType]);
    accountId = [firstObject accountId];
    [(NNMKMailbox *)v7 setAccountId:accountId];

    v14 = [firstObject url];
    [(NNMKMailbox *)v7 setUrl:v14];

    customName = [firstObject customName];
    [(NNMKMailbox *)v7 setCustomName:customName];
  }

  else
  {
    [(NNMKMailbox *)v7 setFilterType:[(NNMKMailboxSelection *)v8 aggregatedMailboxesFilterTypes]];
    [(NNMKMailbox *)v7 setType:1];
    [(NNMKMailbox *)v7 resetURL];
  }

  [(NNMKMailbox *)v7 setSyncEnabled:1];
  currentDeviceRegistry2 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [currentDeviceRegistry2 addOrUpdateMailbox:v7];
}

- (id)updateMailboxListForAccount:(id)account mailboxListChanged:(BOOL *)changed
{
  v112 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  delegate = [(NNMKSyncPersistenceHandler *)self delegate];
  pairedDeviceSupportsMultipleMailboxes = [delegate pairedDeviceSupportsMultipleMailboxes];

  if (pairedDeviceSupportsMultipleMailboxes)
  {
    changedCopy = changed;
    currentDeviceRegistry = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
    v80 = accountCopy;
    accountId = [accountCopy accountId];
    v11 = [currentDeviceRegistry mailboxesForAccountId:accountId];

    v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v11, "count")}];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    obj = v11;
    v13 = [obj countByEnumeratingWithState:&v97 objects:v111 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v98;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v98 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v97 + 1) + 8 * i);
          mailboxId = [v17 mailboxId];
          [v12 setObject:v17 forKeyedSubscript:mailboxId];
        }

        v14 = [obj countByEnumeratingWithState:&v97 objects:v111 count:16];
      }

      while (v14);
    }

    v19 = MEMORY[0x277CBEB18];
    mailboxes = [v80 mailboxes];
    v85 = [v19 arrayWithCapacity:{objc_msgSend(mailboxes, "count")}];

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    mailboxes2 = [v80 mailboxes];
    v21 = [mailboxes2 countByEnumeratingWithState:&v93 objects:v110 count:16];
    selfCopy = self;
    if (v21)
    {
      v22 = v21;
      v84 = 0;
      v23 = *v94;
      v81 = *v94;
      v82 = v12;
      do
      {
        v24 = 0;
        v83 = v22;
        do
        {
          if (*v94 != v23)
          {
            objc_enumerationMutation(mailboxes2);
          }

          v25 = *(*(&v93 + 1) + 8 * v24);
          syncController = [(NNMKSyncPersistenceHandler *)self syncController];
          v27 = [syncController canSyncMailbox:v25];

          if (v27)
          {
            mailboxId2 = [v25 mailboxId];
            v29 = [v12 objectForKeyedSubscript:mailboxId2];

            mailboxId3 = [v25 mailboxId];
            [v12 removeObjectForKey:mailboxId3];

            if (v29)
            {
              customName = [v29 customName];
              customName2 = [v25 customName];
              v33 = [customName isEqualToString:customName2];

              syncEnabled = [v29 syncEnabled];
              syncEnabled2 = [v25 syncEnabled];
              v36 = [v25 url];
              if (v36)
              {
                v37 = [v25 url];
                v38 = [v29 url];
                v39 = [v37 isEqual:v38] ^ 1;
              }

              else
              {
                v37 = [v29 url];
                v39 = v37 != 0;
              }

              v49 = v33 ^ 1u;
              v50 = (syncEnabled ^ syncEnabled2);

              self = selfCopy;
              if (((v49 | v50) & 1) != 0 || v39)
              {
                v51 = qword_28144D620;
                if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
                {
                  v52 = v51;
                  mailboxId4 = [v25 mailboxId];
                  *buf = 138544130;
                  v103 = mailboxId4;
                  v104 = 2048;
                  v105 = v49;
                  v106 = 2048;
                  v107 = v50;
                  v108 = 2048;
                  v109 = v39;
                  _os_log_impl(&dword_25B19F000, v52, OS_LOG_TYPE_DEFAULT, "Mailbox updated. (Id: %{public}@, customNameChanged: %lu, syncEnabledChanged: %lu, urlChanged: %lu)", buf, 0x2Au);
                }

                if (v39)
                {
                  v54 = qword_28144D620;
                  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
                  {
                    v55 = v54;
                    mailboxId5 = [v25 mailboxId];
                    v57 = [v29 url];
                    absoluteString = [v57 absoluteString];
                    v59 = [v25 url];
                    absoluteString2 = [v59 absoluteString];
                    *buf = 138543874;
                    v103 = mailboxId5;
                    v104 = 2114;
                    v105 = absoluteString;
                    v106 = 2114;
                    v107 = absoluteString2;
                    _os_log_impl(&dword_25B19F000, v55, OS_LOG_TYPE_DEFAULT, "Mailbox URL changed. (Id: %{public}@, old URL: %{public}@, new URL: %{public}@)", buf, 0x20u);

                    self = selfCopy;
                  }
                }

                customName3 = [v25 customName];
                [v29 setCustomName:customName3];

                [v29 setSyncEnabled:{objc_msgSend(v25, "syncEnabled")}];
                v62 = [v25 url];
                [v29 setUrl:v62];

                currentDeviceRegistry2 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
                [currentDeviceRegistry2 addOrUpdateMailbox:v29];

                v84 = 1;
              }

              v64 = [NNMKProtoMailbox protoMailboxFromMailbox:v29];
              [v85 addObject:v64];

              v23 = v81;
              v12 = v82;
              v22 = v83;
            }

            else
            {
              currentDeviceRegistry3 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
              [currentDeviceRegistry3 addOrUpdateMailbox:v25];

              v45 = [NNMKProtoMailbox protoMailboxFromMailbox:v25];
              [v85 addObject:v45];

              v46 = qword_28144D620;
              if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
              {
                v47 = v46;
                mailboxId6 = [v25 mailboxId];
                *buf = 138543362;
                v103 = mailboxId6;
                _os_log_impl(&dword_25B19F000, v47, OS_LOG_TYPE_DEFAULT, "Mailbox added. (Id: %{public}@)", buf, 0xCu);
              }

              v84 = 1;
            }
          }

          else
          {
            v40 = qword_28144D620;
            if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
            {
              v41 = v40;
              mailboxId7 = [v25 mailboxId];
              type = [v25 type];
              *buf = 138543618;
              v103 = mailboxId7;
              v104 = 2048;
              v105 = type;
              _os_log_impl(&dword_25B19F000, v41, OS_LOG_TYPE_DEFAULT, "Mailbox will not be synced. (Id: %{public}@, Type: %lu)", buf, 0x16u);
            }
          }

          ++v24;
        }

        while (v22 != v24);
        v22 = [mailboxes2 countByEnumeratingWithState:&v93 objects:v110 count:16];
      }

      while (v22);
    }

    else
    {
      v84 = 0;
    }

    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    allValues = [v12 allValues];
    v66 = [allValues countByEnumeratingWithState:&v89 objects:v101 count:16];
    v67 = v84;
    if (v66)
    {
      v68 = v66;
      v69 = v12;
      v70 = *v90;
      do
      {
        for (j = 0; j != v68; ++j)
        {
          if (*v90 != v70)
          {
            objc_enumerationMutation(allValues);
          }

          v72 = *(*(&v89 + 1) + 8 * j);
          currentDeviceRegistry4 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
          mailboxId8 = [v72 mailboxId];
          [currentDeviceRegistry4 deleteMailboxWithId:mailboxId8];

          v75 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            v76 = v75;
            mailboxId9 = [v72 mailboxId];
            *buf = 138543362;
            v103 = mailboxId9;
            _os_log_impl(&dword_25B19F000, v76, OS_LOG_TYPE_DEFAULT, "Mailbox deleted. (Id: %{public}@)", buf, 0xCu);
          }

          self = selfCopy;
        }

        v68 = [allValues countByEnumeratingWithState:&v89 objects:v101 count:16];
      }

      while (v68);
      v67 = 1;
      v12 = v69;
    }

    accountCopy = v80;
    if (changedCopy)
    {
      *changedCopy = v67 & 1;
    }
  }

  else
  {
    v85 = 0;
    if (changed)
    {
      *changed = 0;
    }
  }

  return v85;
}

- (id)addStandaloneAccountIdentity:(id)identity
{
  identityCopy = identity;
  username = [identityCopy username];
  if (![username length])
  {
    goto LABEL_9;
  }

  token = [identityCopy token];
  if (![token length])
  {

LABEL_9:
    goto LABEL_10;
  }

  refreshToken = [identityCopy refreshToken];

  if (refreshToken)
  {
    currentDeviceRegistry = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
    username2 = [identityCopy username];
    accountId = [currentDeviceRegistry accountIdForUsername:username2];

    if (!accountId)
    {
      currentDeviceRegistry2 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
      username3 = [identityCopy username];
      v13 = [currentDeviceRegistry2 syncedAccountForAccountWithId:username3];

      accountId = [v13 accountId];
    }

    if ([accountId length])
    {
      sessionController = [(NNMKSyncPersistenceHandler *)self sessionController];
      [sessionController updateStandaloneState:1 forAccountId:accountId];

      v15 = objc_alloc_init(NNMKProtoStandaloneAccountIdentity);
      username4 = [identityCopy username];
      [(NNMKProtoStandaloneAccountIdentity *)v15 setUsername:username4];

      displayName = [identityCopy displayName];
      [(NNMKProtoStandaloneAccountIdentity *)v15 setDisplayName:displayName];

      token2 = [identityCopy token];
      [(NNMKProtoStandaloneAccountIdentity *)v15 setToken:token2];

      refreshToken2 = [identityCopy refreshToken];
      [(NNMKProtoStandaloneAccountIdentity *)v15 setRefreshToken:refreshToken2];

      -[NNMKProtoStandaloneAccountIdentity setIdentityType:](v15, "setIdentityType:", [identityCopy identityType]);
      accountId2 = [identityCopy accountId];
      [(NNMKProtoStandaloneAccountIdentity *)v15 setAccountIdentifier:accountId2];
    }

    else
    {
      v22 = qword_28144D630;
      if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_ERROR))
      {
        [(NNMKSyncPersistenceHandler *)v22 addStandaloneAccountIdentity:identityCopy];
      }

      v15 = 0;
    }

    goto LABEL_17;
  }

LABEL_10:
  v21 = qword_28144D630;
  if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_ERROR))
  {
    [NNMKSyncPersistenceHandler addStandaloneAccountIdentity:v21];
  }

  v15 = 0;
LABEL_17:

  return v15;
}

- (id)addAccountAuthenticationStatusRequest:(double)request
{
  v4 = objc_alloc_init(NNMKProtoAccountAuthenticationStatusRequest);
  [(NNMKProtoAccountAuthenticationStatusRequest *)v4 setRequestTime:request];

  return v4;
}

- (id)addMessages:(id)messages containsNewMessages:(BOOL)newMessages mailbox:(id)mailbox
{
  newMessagesCopy = newMessages;
  v120 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  mailboxCopy = mailbox;
  v10 = objc_opt_new();
  syncController = [(NNMKSyncPersistenceHandler *)self syncController];
  v12 = [syncController filterMessages:messagesCopy byAlreadySynced:1 byMailbox:mailboxCopy];

  v13 = [v12 sortedArrayUsingComparator:&__block_literal_global_6];

  if ([v13 count])
  {
    firstObject = [v13 firstObject];
    v15 = firstObject;
    v103 = newMessagesCopy;
    v96 = firstObject;
    if (newMessagesCopy && ([firstObject dateReceived], v16 = objc_claimAutoreleasedReturnValue(), -[NNMKSyncPersistenceHandler currentDeviceRegistry](self, "currentDeviceRegistry"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(mailboxCopy, "mailboxId"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "oldestDateReceivedForMailboxId:", v18), v19 = mailboxCopy, v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v16, "compare:", v20), v20, mailboxCopy = v19, v18, v15 = v96, v17, v16, v21 == -1))
    {
      v88 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        v89 = v88;
        v90 = [messagesCopy count];
        dateReceived = [v96 dateReceived];
        *buf = 134218242;
        v110 = v90;
        v111 = 2114;
        v112 = dateReceived;
        _os_log_impl(&dword_25B19F000, v89, OS_LOG_TYPE_DEFAULT, "Dropping messages. Receiving an old batch of messages from MobileMail. Ignoring so we don't create a gap between the current messages we have and the old batch. (Count: %lu, Newest message received date: %{public}@", buf, 0x16u);

        v15 = v96;
      }

      [v10 setReceivedOldMessages:1];
    }

    else
    {
      currentDeviceRegistry = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
      [currentDeviceRegistry beginUpdates];

      v98 = objc_alloc_init(NNMKProtoMessageAdditions);
      v101 = objc_alloc_init(NNMKProtoMessageAdditions);
      currentDeviceRegistry2 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
      mailboxId = [mailboxCopy mailboxId];
      dateReceived2 = [currentDeviceRegistry2 oldestDateReceivedForMailboxId:mailboxId];

      if (!dateReceived2)
      {
        v26 = [v13 count];
        if ((v26 - 1) >= 0x13)
        {
          v27 = 19;
        }

        else
        {
          v27 = v26 - 1;
        }

        v28 = [v13 objectAtIndexedSubscript:v27];
        dateReceived2 = [v28 dateReceived];
        v29 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:dateReceived2 requiringSecureCoding:1 error:0];
        [(NNMKProtoMessageAdditions *)v98 setDateForRequestingMoreMessages:v29];

        v30 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:dateReceived2 requiringSecureCoding:1 error:0];
        [(NNMKProtoMessageAdditions *)v101 setDateForRequestingMoreMessages:v30];

        v31 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v32 = v31;
          [v28 dateReceived];
          v33 = dateReceived2;
          v35 = v34 = v15;
          *buf = 138543362;
          v110 = v35;
          _os_log_impl(&dword_25B19F000, v32, OS_LOG_TYPE_DEFAULT, "New received messages changed date cap (New date: %{public}@).", buf, 0xCu);

          v15 = v34;
          dateReceived2 = v33;
        }
      }

      v36 = [v13 count];
      syncController2 = [(NNMKSyncPersistenceHandler *)self syncController];
      v38 = [syncController2 filterMessages:v13 receivedBeforeDate:dateReceived2];

      if ([v38 count] < v36)
      {
        [v10 setReceivedOldMessages:1];
      }

      v39 = v101;
      if ([v38 count])
      {
        v93 = mailboxCopy;
        v94 = v10;
        v95 = messagesCopy;
        v97 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v38, "count")}];
        v100 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v38, "count")}];
        v105 = 0u;
        v106 = 0u;
        v107 = 0u;
        v108 = 0u;
        v92 = v38;
        obj = v38;
        v104 = [obj countByEnumeratingWithState:&v105 objects:v119 count:16];
        if (!v104)
        {
          goto LABEL_41;
        }

        v102 = *v106;
        while (1)
        {
          for (i = 0; i != v104; ++i)
          {
            if (*v106 != v102)
            {
              objc_enumerationMutation(obj);
            }

            v41 = dateReceived2;
            v42 = *(*(&v105 + 1) + 8 * i);
            v43 = qword_28144D620;
            if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
            {
              v44 = v43;
              messageId = [v42 messageId];
              accountId = [v42 accountId];
              dateReceived3 = [v42 dateReceived];
              v48 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v42 status]);
              messageIdHeader = [v42 messageIdHeader];
              *buf = 138544386;
              v110 = messageId;
              v111 = 2114;
              v112 = accountId;
              v113 = 2114;
              v114 = dateReceived3;
              v115 = 2112;
              v116 = v48;
              v117 = 2114;
              v118 = messageIdHeader;
              _os_log_impl(&dword_25B19F000, v44, OS_LOG_TYPE_DEFAULT, "Message ADDED (Id: %{public}@ - Account Id: %{public}@ - Date Received: %{public}@ - Status: %@ - Message ID Header %{public}@ - Reason: New)", buf, 0x34u);
            }

            v50 = [NNMKSyncedMessage alloc];
            delegate = [(NNMKSyncPersistenceHandler *)self delegate];
            v52 = -[NNMKSyncedMessage initWithMessage:useDefaultMailbox:](v50, "initWithMessage:useDefaultMailbox:", v42, [delegate pairedDeviceSupportsMultipleMailboxes] ^ 1);

            sessionController = [(NNMKSyncPersistenceHandler *)self sessionController];
            if ([sessionController deviceInStandalone])
            {
              currentDeviceRegistry3 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
              accountId2 = [v42 accountId];
              v56 = [currentDeviceRegistry3 accountSourceTypeForAccountId:accountId2] == 0;
            }

            else
            {
              v56 = 1;
            }

            if (v103)
            {
              syncStateManager = [(NNMKSyncPersistenceHandler *)self syncStateManager];
              v58 = [syncStateManager willPresentNotificationForMessage:v42];

              v59 = v58 | v56;
              if (v58)
              {
                v60 = v98;
              }

              else
              {
                v60 = v101;
              }

              if (v58)
              {
                v61 = v97;
              }

              else
              {
                v61 = v100;
              }

              if (v59)
              {
                goto LABEL_35;
              }
            }

            else if (v56)
            {
              v58 = 0;
              v61 = v100;
              v60 = v101;
LABEL_35:
              v62 = [(NNMKSyncPersistenceHandler *)self protoMessageFromMessage:v42];
              [(NNMKProtoMessageAdditions *)v60 addMessageAddition:v62];

              messageId2 = [v42 messageId];
              [v61 addObject:messageId2];

              [(NNMKSyncedMessage *)v52 setUsedNotificationPriorityForMessageSync:v58];
              currentDeviceRegistry4 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
              [currentDeviceRegistry4 addOrUpdateSyncedMessage:v52];

              sessionController2 = [(NNMKSyncPersistenceHandler *)self sessionController];
              messageIdsToIgnoreStatusUpdates = [sessionController2 messageIdsToIgnoreStatusUpdates];
              messageId3 = [v42 messageId];
              [messageIdsToIgnoreStatusUpdates removeObject:messageId3];

              batchRequestHandler = [(NNMKSyncPersistenceHandler *)self batchRequestHandler];
              [batchRequestHandler handleMessageAdded:v42];
              goto LABEL_38;
            }

            v69 = qword_28144D620;
            if (!os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_39;
            }

            batchRequestHandler = v69;
            accountId3 = [v42 accountId];
            messageId4 = [v42 messageId];
            *buf = 138543618;
            v110 = accountId3;
            v111 = 2114;
            v112 = messageId4;
            _os_log_impl(&dword_25B19F000, batchRequestHandler, OS_LOG_TYPE_DEFAULT, "Dropping message added because account source type does not allow sync. Account Id: %{public}@, Message Id: %{public}@", buf, 0x16u);

LABEL_38:
LABEL_39:

            dateReceived2 = v41;
          }

          v104 = [obj countByEnumeratingWithState:&v105 objects:v119 count:16];
          if (!v104)
          {
LABEL_41:

            mailboxCopy = v93;
            if ([(NNMKProtoMessageAdditions *)v98 messageAdditionsCount])
            {
              mailboxId2 = [v93 mailboxId];
              [(NNMKProtoMessageAdditions *)v98 setMailboxId:mailboxId2];

              currentDeviceRegistry5 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
              mailboxId3 = [v93 mailboxId];
              -[NNMKProtoMessageAdditions setMailboxSyncVersion:](v98, "setMailboxSyncVersion:", [currentDeviceRegistry5 syncVersionForMailboxId:mailboxId3]);

              [(NNMKProtoMessageAdditions *)v98 setMessagesAreNew:v103];
              currentDeviceRegistry6 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
              -[NNMKProtoMessageAdditions setFullSyncVersion:](v98, "setFullSyncVersion:", [currentDeviceRegistry6 fullSyncVersion]);

              v76 = MEMORY[0x277CCAAB0];
              date = [MEMORY[0x277CBEAA8] date];
              v78 = [v76 archivedDataWithRootObject:date requiringSecureCoding:1 error:0];
              [(NNMKProtoMessageAdditions *)v98 setDateSynced:v78];
            }

            v39 = v101;
            v10 = v94;
            messagesCopy = v95;
            v15 = v96;
            if ([(NNMKProtoMessageAdditions *)v101 messageAdditionsCount])
            {
              mailboxId4 = [v93 mailboxId];
              [(NNMKProtoMessageAdditions *)v101 setMailboxId:mailboxId4];

              currentDeviceRegistry7 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
              mailboxId5 = [v93 mailboxId];
              -[NNMKProtoMessageAdditions setMailboxSyncVersion:](v101, "setMailboxSyncVersion:", [currentDeviceRegistry7 syncVersionForMailboxId:mailboxId5]);

              [(NNMKProtoMessageAdditions *)v101 setMessagesAreNew:v103];
              currentDeviceRegistry8 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
              -[NNMKProtoMessageAdditions setFullSyncVersion:](v101, "setFullSyncVersion:", [currentDeviceRegistry8 fullSyncVersion]);

              v83 = MEMORY[0x277CCAAB0];
              date2 = [MEMORY[0x277CBEAA8] date];
              v85 = [v83 archivedDataWithRootObject:date2 requiringSecureCoding:1 error:0];
              [(NNMKProtoMessageAdditions *)v101 setDateSynced:v85];

              v39 = v101;
            }

            [v94 setMessageIdsWithNotificationPriority:v97];
            [v94 setMessageIdsWithDefaultPriority:v100];
            [v94 setProtoMessagesWithNotificationPriority:v98];
            [v94 setProtoMessagesWithDefaultPriority:v39];

            v38 = v92;
            break;
          }
        }
      }

      currentDeviceRegistry9 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
      [currentDeviceRegistry9 endUpdates];

      v13 = v38;
    }
  }

  return v10;
}

uint64_t __70__NNMKSyncPersistenceHandler_addMessages_containsNewMessages_mailbox___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 dateReceived];
  v6 = [v4 dateReceived];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)addMoreMessages:(id)messages mailbox:(id)mailbox
{
  v66 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  mailboxCopy = mailbox;
  currentDeviceRegistry = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [currentDeviceRegistry beginUpdates];

  v9 = objc_alloc_init(NNMKProtoMoreMessages);
  currentDeviceRegistry2 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  -[NNMKProtoMoreMessages setFullSyncVersion:](v9, "setFullSyncVersion:", [currentDeviceRegistry2 fullSyncVersion]);

  v11 = MEMORY[0x277CCAAB0];
  date = [MEMORY[0x277CBEAA8] date];
  v13 = [v11 archivedDataWithRootObject:date requiringSecureCoding:1 error:0];
  [(NNMKProtoMoreMessages *)v9 setDateSynced:v13];

  mailboxId = [mailboxCopy mailboxId];
  [(NNMKProtoMoreMessages *)v9 setMailboxId:mailboxId];

  currentDeviceRegistry3 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  v45 = mailboxCopy;
  mailboxId2 = [mailboxCopy mailboxId];
  -[NNMKProtoMoreMessages setMailboxSyncVersion:](v9, "setMailboxSyncVersion:", [currentDeviceRegistry3 syncVersionForMailboxId:mailboxId2]);

  if ([messagesCopy count])
  {
    lastObject = [messagesCopy lastObject];
    dateReceived = [lastObject dateReceived];
    if (dateReceived)
    {
      v19 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:dateReceived requiringSecureCoding:1 error:0];
      [(NNMKProtoMoreMessages *)v9 setDateForRequestingMoreMessages:v19];
    }
  }

  v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(messagesCopy, "count")}];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = messagesCopy;
  v21 = [obj countByEnumeratingWithState:&v51 objects:v65 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v52;
    v24 = &__logCategories;
    v47 = *v52;
    selfCopy = self;
    v46 = v20;
    do
    {
      v25 = 0;
      v49 = v22;
      do
      {
        if (*v52 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v51 + 1) + 8 * v25);
        v27 = v24[1];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v27;
          messageId = [v26 messageId];
          [v26 accountId];
          v31 = v30 = v9;
          [v26 dateReceived];
          v33 = v32 = v24;
          v34 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v26 status]);
          messageIdHeader = [v26 messageIdHeader];
          *buf = 138544386;
          v56 = messageId;
          v57 = 2114;
          v58 = v31;
          v59 = 2114;
          v60 = v33;
          v61 = 2112;
          v62 = v34;
          v63 = 2114;
          v64 = messageIdHeader;
          _os_log_impl(&dword_25B19F000, v28, OS_LOG_TYPE_DEFAULT, "Message ADDED (Id: %{public}@ - Account Id: %{public}@ - Date Received: %{public}@ - Status: %@ - Message ID Header %{public}@ - Reason: #LOAD_MORE_MESSAGES)", buf, 0x34u);

          v24 = v32;
          v9 = v30;
          v20 = v46;
          self = selfCopy;

          v23 = v47;
          v22 = v49;
        }

        v36 = [(NNMKSyncPersistenceHandler *)self protoMessageFromMessage:v26];
        [(NNMKProtoMoreMessages *)v9 addAddedMessage:v36];

        v37 = [NNMKSyncedMessage alloc];
        delegate = [(NNMKSyncPersistenceHandler *)self delegate];
        v39 = -[NNMKSyncedMessage initWithMessage:useDefaultMailbox:](v37, "initWithMessage:useDefaultMailbox:", v26, [delegate pairedDeviceSupportsMultipleMailboxes] ^ 1);

        batchRequestHandler = [(NNMKSyncPersistenceHandler *)self batchRequestHandler];
        [batchRequestHandler handleMessageAdded:v26];

        currentDeviceRegistry4 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
        [currentDeviceRegistry4 addOrUpdateSyncedMessage:v39];

        messageId2 = [v26 messageId];
        [v20 addObject:messageId2];

        ++v25;
      }

      while (v22 != v25);
      v22 = [obj countByEnumeratingWithState:&v51 objects:v65 count:16];
    }

    while (v22);
  }

  currentDeviceRegistry5 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [currentDeviceRegistry5 endUpdates];

  return v9;
}

- (id)addMoreConversationSpecificMessages:(id)messages conversationId:(id)id mailbox:(id)mailbox
{
  v67 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  idCopy = id;
  mailboxCopy = mailbox;
  currentDeviceRegistry = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [currentDeviceRegistry beginUpdates];

  v12 = objc_alloc_init(NNMKProtoMoreMessagesForConversation);
  currentDeviceRegistry2 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  -[NNMKProtoMoreMessagesForConversation setFullSyncVersion:](v12, "setFullSyncVersion:", [currentDeviceRegistry2 fullSyncVersion]);

  v14 = MEMORY[0x277CCAAB0];
  date = [MEMORY[0x277CBEAA8] date];
  v16 = [v14 archivedDataWithRootObject:date requiringSecureCoding:1 error:0];
  [(NNMKProtoMoreMessagesForConversation *)v12 setDateSynced:v16];

  v45 = idCopy;
  [(NNMKProtoMoreMessagesForConversation *)v12 setConversationId:idCopy];
  mailboxId = [mailboxCopy mailboxId];
  [(NNMKProtoMoreMessagesForConversation *)v12 setMailboxId:mailboxId];

  currentDeviceRegistry3 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  v44 = mailboxCopy;
  mailboxId2 = [mailboxCopy mailboxId];
  -[NNMKProtoMoreMessagesForConversation setMailboxSyncVersion:](v12, "setMailboxSyncVersion:", [currentDeviceRegistry3 syncVersionForMailboxId:mailboxId2]);

  v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(messagesCopy, "count")}];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = messagesCopy;
  v21 = [obj countByEnumeratingWithState:&v52 objects:v66 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v53;
    v24 = &__logCategories;
    v46 = *v53;
    v47 = v12;
    do
    {
      v25 = 0;
      v48 = v22;
      do
      {
        if (*v53 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v52 + 1) + 8 * v25);
        v27 = v24[1];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          log = v27;
          messageId = [v26 messageId];
          accountId = [v26 accountId];
          dateReceived = [v26 dateReceived];
          v30 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v26 status]);
          [v26 messageIdHeader];
          v31 = v24;
          selfCopy = self;
          v34 = v33 = v20;
          *buf = 138544386;
          v57 = messageId;
          v58 = 2114;
          v59 = accountId;
          v60 = 2114;
          v61 = dateReceived;
          v62 = 2112;
          v63 = v30;
          v64 = 2114;
          v65 = v34;
          _os_log_impl(&dword_25B19F000, log, OS_LOG_TYPE_DEFAULT, "Message ADDED (Id: %{public}@ - Account Id: %{public}@ - Date Received: %{public}@ - Status: %@ - Message ID Header %{public}@ - Reason: #LOAD_MORE_MESSAGES for Conversation)", buf, 0x34u);

          v20 = v33;
          self = selfCopy;
          v24 = v31;

          v22 = v48;
          v12 = v47;

          v23 = v46;
        }

        v35 = [(NNMKSyncPersistenceHandler *)self protoMessageFromMessage:v26];
        [(NNMKProtoMoreMessagesForConversation *)v12 addAddedMessage:v35];

        v36 = [NNMKSyncedMessage alloc];
        delegate = [(NNMKSyncPersistenceHandler *)self delegate];
        v38 = -[NNMKSyncedMessage initWithMessage:useDefaultMailbox:](v36, "initWithMessage:useDefaultMailbox:", v26, [delegate pairedDeviceSupportsMultipleMailboxes] ^ 1);

        batchRequestHandler = [(NNMKSyncPersistenceHandler *)self batchRequestHandler];
        [batchRequestHandler handleMessageAdded:v26];

        currentDeviceRegistry4 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
        [currentDeviceRegistry4 addOrUpdateSyncedMessage:v38];

        messageId2 = [v26 messageId];
        [v20 addObject:messageId2];

        ++v25;
      }

      while (v22 != v25);
      v22 = [obj countByEnumeratingWithState:&v52 objects:v66 count:16];
    }

    while (v22);
  }

  currentDeviceRegistry5 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [currentDeviceRegistry5 endUpdates];

  return v12;
}

- (id)addMessagesToResend:(id)resend mailbox:(id)mailbox
{
  v61 = *MEMORY[0x277D85DE8];
  resendCopy = resend;
  mailboxCopy = mailbox;
  currentDeviceRegistry = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [currentDeviceRegistry beginUpdates];

  v42 = objc_alloc_init(NNMKAdditionResult);
  v46 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(resendCopy, "count")}];
  v9 = objc_alloc_init(NNMKProtoMessageAdditions);
  [(NNMKProtoMessageAdditions *)v9 setMessagesAreNew:0];
  currentDeviceRegistry2 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  -[NNMKProtoMessageAdditions setFullSyncVersion:](v9, "setFullSyncVersion:", [currentDeviceRegistry2 fullSyncVersion]);

  v11 = MEMORY[0x277CCAAB0];
  date = [MEMORY[0x277CBEAA8] date];
  v13 = [v11 archivedDataWithRootObject:date requiringSecureCoding:1 error:0];
  [(NNMKProtoMessageAdditions *)v9 setDateSynced:v13];

  mailboxId = [mailboxCopy mailboxId];
  [(NNMKProtoMessageAdditions *)v9 setMailboxId:mailboxId];

  currentDeviceRegistry3 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  v43 = mailboxCopy;
  mailboxId2 = [mailboxCopy mailboxId];
  v47 = v9;
  -[NNMKProtoMessageAdditions setMailboxSyncVersion:](v9, "setMailboxSyncVersion:", [currentDeviceRegistry3 syncVersionForMailboxId:mailboxId2]);

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v17 = resendCopy;
  v18 = [v17 countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (v18)
  {
    v19 = v18;
    resendInterval = 0;
    v21 = *v49;
    selfCopy = self;
    do
    {
      v22 = 0;
      v45 = v19;
      do
      {
        if (*v49 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v48 + 1) + 8 * v22);
        currentDeviceRegistry4 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
        messageId = [v23 messageId];
        v26 = [currentDeviceRegistry4 syncedMessageForMessageWithId:messageId];

        if (v26 && [v26 resendRequested])
        {
          if (!resendInterval)
          {
            resendInterval = [v26 resendInterval];
          }

          [v23 setIsThreadSpecific:{objc_msgSend(v26, "isThreadSpecific")}];
          [v23 setIsSpecialMailboxSpecific:{objc_msgSend(v26, "isSpecialMailboxSpecific")}];
          resendInterval2 = [v26 resendInterval];
          if (resendInterval2 < resendInterval)
          {
            resendInterval = resendInterval2;
          }

          [v26 setStatus:{objc_msgSend(v23, "status")}];
          [v26 setResendRequested:0];
          [v26 setResendInterval:0];
          [v26 setUsedNotificationPriorityForMessageSync:0];
          currentDeviceRegistry5 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
          [currentDeviceRegistry5 addOrUpdateSyncedMessage:v26];

          messageId2 = [v23 messageId];
          [v46 addObject:messageId2];

          [v23 setStatusVersion:{objc_msgSend(v26, "statusVersion")}];
          v30 = [(NNMKSyncPersistenceHandler *)self protoMessageFromMessage:v23];
          [(NNMKProtoMessageAdditions *)v47 addMessageAddition:v30];

          v31 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            v32 = v31;
            messageId3 = [v23 messageId];
            [v23 dateReceived];
            v34 = v21;
            v35 = resendInterval;
            v37 = v36 = v17;
            v38 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v23 status]);
            statusVersion = [v23 statusVersion];
            *buf = 138544130;
            v53 = messageId3;
            v54 = 2114;
            v55 = v37;
            v56 = 2112;
            v57 = v38;
            v58 = 2048;
            v59 = statusVersion;
            _os_log_impl(&dword_25B19F000, v32, OS_LOG_TYPE_DEFAULT, "Message being RESENT (Id: %{public}@ - Date Received: %{public}@ - Status: %@ - StatusVersion: %lu).", buf, 0x2Au);

            v17 = v36;
            resendInterval = v35;
            v21 = v34;
            v19 = v45;

            self = selfCopy;
          }
        }

        ++v22;
      }

      while (v19 != v22);
      v19 = [v17 countByEnumeratingWithState:&v48 objects:v60 count:16];
    }

    while (v19);
  }

  else
  {
    resendInterval = 0;
  }

  currentDeviceRegistry6 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [currentDeviceRegistry6 endUpdates];

  [(NNMKAdditionResult *)v42 setProtoMessagesWithDefaultPriority:v47];
  [(NNMKAdditionResult *)v42 setMessageIdsWithDefaultPriority:v46];
  [(NNMKAdditionResult *)v42 setResendInterval:resendInterval];

  return v42;
}

- (id)updateMessagesStatus:(id)status mailbox:(id)mailbox
{
  v109 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  mailboxCopy = mailbox;
  currentDeviceRegistry = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [currentDeviceRegistry beginUpdates];

  v90 = objc_alloc_init(NNMKProtoMessageStatusUpdates);
  v89 = objc_alloc_init(NNMKProtoMessageStatusUpdates);
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v86 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(statusCopy, "count")}];
  v85 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(statusCopy, "count")}];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = statusCopy;
  v9 = [obj countByEnumeratingWithState:&v96 objects:v108 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v97;
    *&v10 = 138544130;
    v84 = v10;
    v91 = *v97;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v97 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v96 + 1) + 8 * i);
        sessionController = [(NNMKSyncPersistenceHandler *)self sessionController];
        messageIdsToIgnoreStatusUpdates = [sessionController messageIdsToIgnoreStatusUpdates];
        messageId = [v14 messageId];
        v18 = [messageIdsToIgnoreStatusUpdates containsObject:messageId];

        if (v18)
        {
          v19 = qword_28144D620;
          if (!os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          v20 = v19;
          messageId2 = [v14 messageId];
          dateReceived = [v14 dateReceived];
          v23 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v14 status]);
          *buf = 138543874;
          v101 = messageId2;
          v102 = 2114;
          v103 = dateReceived;
          v104 = 2112;
          v105 = v23;
          _os_log_impl(&dword_25B19F000, v20, OS_LOG_TYPE_DEFAULT, "Message Status UPDATED but updates are being ignored for it. Dropping... (Id: %{public}@ - Date Received: %{public}@ - Status: %@).", buf, 0x20u);
        }

        else
        {
          currentDeviceRegistry2 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
          messageId3 = [v14 messageId];
          v20 = [currentDeviceRegistry2 syncedMessageForMessageWithId:messageId3];

          syncController = [(NNMKSyncPersistenceHandler *)self syncController];
          v27 = 0;
          if ([syncController shouldAddsDeletesMessagesByStatusUpdatesForMailbox:mailboxCopy] && v20)
          {
            syncController2 = [(NNMKSyncPersistenceHandler *)self syncController];
            if ([syncController2 isValidMessageStatus:-[NSObject status](v20 forMailbox:{"status"), mailboxCopy}])
            {
              v27 = 0;
            }

            else
            {
              syncController3 = [(NNMKSyncPersistenceHandler *)self syncController];
              v27 = [syncController3 isValidMessageStatus:objc_msgSend(v14 forMailbox:{"status"), mailboxCopy}];

              v12 = v91;
            }
          }

          if (!v20 || (v27 & 1) != 0)
          {
            syncController4 = [(NNMKSyncPersistenceHandler *)self syncController];
            if (([syncController4 shouldAddsDeletesMessagesByStatusUpdatesForMailbox:mailboxCopy] & 1) == 0)
            {

LABEL_26:
              v47 = qword_28144D620;
              if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
              {
                v48 = v47;
                messageId4 = [v14 messageId];
                dateReceived2 = [v14 dateReceived];
                v51 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v14 status]);
                *buf = v84;
                v101 = messageId4;
                v102 = 2114;
                v103 = dateReceived2;
                v104 = 2112;
                v105 = v51;
                v106 = 2114;
                v107 = v20;
                _os_log_debug_impl(&dword_25B19F000, v48, OS_LOG_TYPE_DEBUG, "Dropping Message Status UPDATE. Message is not being tracked. (Id: %{public}@ - Date Received: %{public}@ - Status: %@ - MessageSynced: %{public}@).", buf, 0x2Au);

                v12 = v91;
              }

              goto LABEL_42;
            }

            syncController5 = [(NNMKSyncPersistenceHandler *)self syncController];
            v36 = [syncController5 canSyncMessage:v14 forMailbox:mailboxCopy];

            v12 = v91;
            if (!v36)
            {
              goto LABEL_26;
            }

            v37 = qword_28144D620;
            if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
            {
              v38 = v37;
              messageId5 = [v14 messageId];
              dateReceived3 = [v14 dateReceived];
              v41 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v14 status]);
              *buf = 138543874;
              v101 = messageId5;
              v102 = 2114;
              v103 = dateReceived3;
              v104 = 2112;
              v105 = v41;
              _os_log_impl(&dword_25B19F000, v38, OS_LOG_TYPE_DEFAULT, "Received Message Status UPDATE, but it still hadn't been synced or it is about to be removed on the client. Will try to re-add message if not too old. (Id: %{public}@ - Date Received: %{public}@ - Status: %@).", buf, 0x20u);
            }

            batchRequestHandler = [(NNMKSyncPersistenceHandler *)self batchRequestHandler];
            messageId6 = [v14 messageId];
            mailboxId = [mailboxCopy mailboxId];
            [batchRequestHandler handleMessageDeleted:messageId6 mailboxId:mailboxId];

            currentDeviceRegistry3 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
            messageId7 = [v14 messageId];
            [currentDeviceRegistry3 removeSyncedMessageForMessageWithId:messageId7];

            [v86 addObject:v14];
          }

          else
          {
            status = [v20 status];
            if (status == [v14 status])
            {
              v31 = qword_28144D620;
              if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
              {
                v32 = v31;
                messageId8 = [v14 messageId];
                *buf = 138543362;
                v101 = messageId8;
                _os_log_impl(&dword_25B19F000, v32, OS_LOG_TYPE_DEFAULT, "Dropping Message Status UPDATE because status did not change. %{public}@", buf, 0xCu);
              }

              goto LABEL_42;
            }

            syncController6 = [(NNMKSyncPersistenceHandler *)self syncController];
            v53 = [syncController6 isValidMessageStatus:objc_msgSend(v14 forMailbox:{"status"), mailboxCopy}];

            v54 = qword_28144D620;
            v55 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT);
            if (v53)
            {
              if (v55)
              {
                v56 = v54;
                messageId9 = [v14 messageId];
                v58 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v14 status]);
                dateReceived4 = [v14 dateReceived];
                *buf = 138543874;
                v101 = messageId9;
                v102 = 2112;
                v103 = v58;
                v104 = 2114;
                v105 = dateReceived4;
                _os_log_impl(&dword_25B19F000, v56, OS_LOG_TYPE_DEFAULT, "Message Status UPDATED (Id: %{public}@ - Status: %@ - Date Received: %{public}@ - Source: MobileMail).", buf, 0x20u);
              }

              [v20 setStatusVersion:[v20 statusVersion]+ 1];
              -[NSObject setStatus:](v20, "setStatus:", [v14 status]);
              v60 = objc_alloc_init(NNMKProtoMessageStatusUpdate);
              syncController7 = [(NNMKSyncPersistenceHandler *)self syncController];
              messageId10 = [v14 messageId];
              v63 = [syncController7 watchMessageIdFromMessageId:messageId10];
              [(NNMKProtoMessageStatusUpdate *)v60 setMessageId:v63];

              -[NNMKProtoMessageStatusUpdate setUpdatedStatus:](v60, "setUpdatedStatus:", [v14 status]);
              [(NNMKProtoMessageStatusUpdate *)v60 setStatusVersion:[v20 statusVersion]];
              usedNotificationPriorityForMessageSync = [v20 usedNotificationPriorityForMessageSync];
              v65 = usedNotificationPriorityForMessageSync == 0;
              if (usedNotificationPriorityForMessageSync)
              {
                v66 = v90;
              }

              else
              {
                v66 = v89;
              }

              if (v65)
              {
                v67 = array2;
              }

              else
              {
                v67 = array;
              }

              [(NNMKProtoMessageStatusUpdates *)v66 addMessageStatusUpdate:v60];
              messageId11 = [v14 messageId];
              [v67 addObject:messageId11];

              currentDeviceRegistry4 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
              [currentDeviceRegistry4 addOrUpdateSyncedMessage:v20];
            }

            else
            {
              if (v55)
              {
                v70 = v54;
                messageId12 = [v14 messageId];
                dateReceived5 = [v14 dateReceived];
                v73 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v14 status]);
                *buf = 138543874;
                v101 = messageId12;
                v102 = 2114;
                v103 = dateReceived5;
                v104 = 2112;
                v105 = v73;
                _os_log_impl(&dword_25B19F000, v70, OS_LOG_TYPE_DEFAULT, "Removing message that does not belong to current mailbox due to status change. (Id: %{public}@ - Date Received: %{public}@ - Status: %@).", buf, 0x20u);
              }

              messageId13 = [v14 messageId];
              [v85 addObject:messageId13];

              batchRequestHandler2 = [(NNMKSyncPersistenceHandler *)self batchRequestHandler];
              [batchRequestHandler2 handleMessageAdded:v14];
            }
          }

          v12 = v91;
        }

LABEL_42:
      }

      v11 = [obj countByEnumeratingWithState:&v96 objects:v108 count:16];
    }

    while (v11);
  }

  currentDeviceRegistry5 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [currentDeviceRegistry5 endUpdates];

  currentDeviceRegistry6 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  mailboxId2 = [mailboxCopy mailboxId];
  v79 = [currentDeviceRegistry6 syncVersionForMailboxId:mailboxId2];

  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __59__NNMKSyncPersistenceHandler_updateMessagesStatus_mailbox___block_invoke;
  v93[3] = &unk_279936488;
  v93[4] = self;
  v94 = mailboxCopy;
  v95 = v79;
  v80 = mailboxCopy;
  v81 = MEMORY[0x25F864490](v93);
  (v81)[2](v81, v90);
  (v81)[2](v81, v89);
  v82 = objc_opt_new();
  [v82 setProtoMessageUpdatesWithNotificationPriority:v90];
  [v82 setProtoMessageUpdatesWithDefaultPriority:v89];
  [v82 setMessageIdsWithNotificationPriority:array];
  [v82 setMessageIdsWithDefaultPriority:array2];
  [v82 setMessagesToAdd:v86];
  [v82 setMessageIdsToDelete:v85];

  return v82;
}

void __59__NNMKSyncPersistenceHandler_updateMessagesStatus_mailbox___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 messageStatusUpdatesCount])
  {
    v3 = [*(a1 + 32) currentDeviceRegistry];
    [v8 setFullSyncVersion:{objc_msgSend(v3, "fullSyncVersion")}];

    v4 = MEMORY[0x277CCAAB0];
    v5 = [MEMORY[0x277CBEAA8] date];
    v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
    [v8 setDateSynced:v6];

    v7 = [*(a1 + 40) mailboxId];
    [v8 setMailboxId:v7];

    [v8 setMailboxSyncVersion:*(a1 + 48)];
  }
}

- (id)deleteMessagesWithIds:(id)ids mailbox:(id)mailbox
{
  v58 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  mailboxCopy = mailbox;
  currentDeviceRegistry = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [currentDeviceRegistry beginUpdates];

  v47 = objc_alloc_init(NNMKProtoMessageDeletions);
  v46 = objc_alloc_init(NNMKProtoMessageDeletions);
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = idsCopy;
  v9 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v52;
    *&v10 = 138543362;
    v42 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v52 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v51 + 1) + 8 * i);
        currentDeviceRegistry2 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
        v16 = [currentDeviceRegistry2 syncedMessageForMessageWithId:v14];

        if (v16)
        {
          v17 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v42;
            v56 = v14;
            _os_log_impl(&dword_25B19F000, v17, OS_LOG_TYPE_DEFAULT, "Message DELETED (Id: %{public}@).", buf, 0xCu);
          }

          v18 = objc_alloc_init(NNMKProtoMessageDeletion);
          syncController = [(NNMKSyncPersistenceHandler *)self syncController];
          v20 = [syncController watchMessageIdFromMessageId:v14];
          [(NNMKProtoMessageDeletion *)v18 setMessageId:v20];

          usedNotificationPriorityForMessageSync = [v16 usedNotificationPriorityForMessageSync];
          v22 = usedNotificationPriorityForMessageSync == 0;
          if (usedNotificationPriorityForMessageSync)
          {
            v23 = v47;
          }

          else
          {
            v23 = v46;
          }

          if (v22)
          {
            v24 = array2;
          }

          else
          {
            v24 = array;
          }

          [(NNMKProtoMessageDeletions *)v23 addMessageDeletion:v18];
          [v24 addObject:v14];
          batchRequestHandler = [(NNMKSyncPersistenceHandler *)self batchRequestHandler];
          mailboxId = [mailboxCopy mailboxId];
          [batchRequestHandler handleMessageDeleted:v14 mailboxId:mailboxId];

          currentDeviceRegistry3 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
          mailboxId2 = [mailboxCopy mailboxId];
          [currentDeviceRegistry3 insertDeletedMessageId:v14 mailboxId:mailboxId2];

          currentDeviceRegistry4 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
          [currentDeviceRegistry4 removeSyncedMessageForMessageWithId:v14];

          sessionController = [(NNMKSyncPersistenceHandler *)self sessionController];
          notificationPayloadAcks = [sessionController notificationPayloadAcks];
          [notificationPayloadAcks removeObjectForKey:v14];
        }

        sessionController2 = [(NNMKSyncPersistenceHandler *)self sessionController];
        messageIdsToIgnoreStatusUpdates = [sessionController2 messageIdsToIgnoreStatusUpdates];
        [messageIdsToIgnoreStatusUpdates removeObject:v14];
      }

      v11 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v11);
  }

  currentDeviceRegistry5 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  mailboxId3 = [mailboxCopy mailboxId];
  v36 = [currentDeviceRegistry5 syncVersionForMailboxId:mailboxId3];

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __60__NNMKSyncPersistenceHandler_deleteMessagesWithIds_mailbox___block_invoke;
  v48[3] = &unk_2799364B0;
  v48[4] = self;
  v49 = mailboxCopy;
  v50 = v36;
  v37 = mailboxCopy;
  v38 = MEMORY[0x25F864490](v48);
  (v38)[2](v38, v47);
  (v38)[2](v38, v46);
  v39 = objc_alloc_init(NNMKDeletionResult);
  [(NNMKDeletionResult *)v39 setUnprotectedNotificationProtobuf:v47];
  [(NNMKDeletionResult *)v39 setUnprotectedNotificationMessageIds:array];
  [(NNMKDeletionResult *)v39 setUnprotectedDefaultProtobuf:v46];
  [(NNMKDeletionResult *)v39 setUnprotectedDefaultMessageIds:array2];
  currentDeviceRegistry6 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [currentDeviceRegistry6 endUpdates];

  return v39;
}

void __60__NNMKSyncPersistenceHandler_deleteMessagesWithIds_mailbox___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 messageDeletionsCount])
  {
    v3 = [*(a1 + 32) currentDeviceRegistry];
    [v8 setFullSyncVersion:{objc_msgSend(v3, "fullSyncVersion")}];

    v4 = MEMORY[0x277CCAAB0];
    v5 = [MEMORY[0x277CBEAA8] date];
    v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
    [v8 setDateSynced:v6];

    v7 = [*(a1 + 40) mailboxId];
    [v8 setMailboxId:v7];

    [v8 setMailboxSyncVersion:*(a1 + 48)];
  }
}

- (id)updateMessagesFromConversation:(id)conversation withState:(unint64_t)state include:(BOOL)include mailbox:(id)mailbox
{
  includeCopy = include;
  v60 = *MEMORY[0x277D85DE8];
  conversationCopy = conversation;
  mailboxCopy = mailbox;
  currentDeviceRegistry = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [currentDeviceRegistry beginUpdates];

  v49 = objc_alloc_init(NNMKProtoMessageStatusUpdates);
  v48 = objc_alloc_init(NNMKProtoMessageStatusUpdates);
  array = [MEMORY[0x277CBEB18] array];
  [MEMORY[0x277CBEB18] array];
  v46 = v45 = self;
  currentDeviceRegistry2 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  v41 = conversationCopy;
  v13 = [currentDeviceRegistry2 syncedMessagesForConversationWithId:conversationCopy];

  v42 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count")}];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v56;
    v17 = state != 128 || includeCopy;
    v50 = v17;
    v44 = *v56;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v56 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v55 + 1) + 8 * i);
        if ((((([v19 status] & state) == 0) ^ includeCopy) & 1) == 0)
        {
          if ((v50 & 1) != 0 || [mailboxCopy filterType] != 32)
          {
            [v19 setStatusVersion:{objc_msgSend(v19, "statusVersion") + 1}];
            status = [v19 status];
            if (includeCopy)
            {
              v22 = status | state;
            }

            else
            {
              v22 = status ^ state;
            }

            [v19 setStatus:v22];
            messageId2 = objc_alloc_init(NNMKProtoMessageStatusUpdate);
            syncController = [(NNMKSyncPersistenceHandler *)v45 syncController];
            [v19 messageId];
            v25 = v24 = v15;
            v26 = [syncController watchMessageIdFromMessageId:v25];
            [(NNMKProtoMessageStatusUpdate *)messageId2 setMessageId:v26];

            -[NNMKProtoMessageStatusUpdate setUpdatedStatus:](messageId2, "setUpdatedStatus:", [v19 status]);
            -[NNMKProtoMessageStatusUpdate setStatusVersion:](messageId2, "setStatusVersion:", [v19 statusVersion]);
            usedNotificationPriorityForMessageSync = [v19 usedNotificationPriorityForMessageSync];
            v28 = usedNotificationPriorityForMessageSync == 0;
            if (usedNotificationPriorityForMessageSync)
            {
              v29 = v49;
            }

            else
            {
              v29 = v48;
            }

            if (v28)
            {
              v30 = v46;
            }

            else
            {
              v30 = array;
            }

            [(NNMKProtoMessageStatusUpdates *)v29 addMessageStatusUpdate:messageId2];
            messageId = [v19 messageId];
            [v30 addObject:messageId];

            v15 = v24;
            currentDeviceRegistry3 = [(NNMKSyncPersistenceHandler *)v45 currentDeviceRegistry];
            [currentDeviceRegistry3 addOrUpdateSyncedMessage:v19];

            v16 = v44;
          }

          else
          {
            messageId2 = [v19 messageId];
            [v42 addObject:messageId2];
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
    }

    while (v15);
  }

  currentDeviceRegistry4 = [(NNMKSyncPersistenceHandler *)v45 currentDeviceRegistry];
  [currentDeviceRegistry4 endUpdates];

  currentDeviceRegistry5 = [(NNMKSyncPersistenceHandler *)v45 currentDeviceRegistry];
  mailboxId = [mailboxCopy mailboxId];
  v36 = [currentDeviceRegistry5 syncVersionForMailboxId:mailboxId];

  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __87__NNMKSyncPersistenceHandler_updateMessagesFromConversation_withState_include_mailbox___block_invoke;
  v52[3] = &unk_279936488;
  v52[4] = v45;
  v53 = mailboxCopy;
  v54 = v36;
  v37 = mailboxCopy;
  v38 = MEMORY[0x25F864490](v52);
  (v38)[2](v38, v49);
  (v38)[2](v38, v48);
  v39 = objc_opt_new();
  [v39 setProtoMessageUpdatesWithNotificationPriority:v49];
  [v39 setProtoMessageUpdatesWithDefaultPriority:v48];
  [v39 setMessageIdsWithNotificationPriority:array];
  [v39 setMessageIdsWithDefaultPriority:v46];
  [v39 setMessageIdsToDelete:v42];

  return v39;
}

void __87__NNMKSyncPersistenceHandler_updateMessagesFromConversation_withState_include_mailbox___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 messageStatusUpdatesCount])
  {
    v3 = [*(a1 + 32) currentDeviceRegistry];
    [v8 setFullSyncVersion:{objc_msgSend(v3, "fullSyncVersion")}];

    v4 = MEMORY[0x277CCAAB0];
    v5 = [MEMORY[0x277CBEAA8] date];
    v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
    [v8 setDateSynced:v6];

    v7 = [*(a1 + 40) mailboxId];
    [v8 setMailboxId:v7];

    [v8 setMailboxSyncVersion:*(a1 + 48)];
  }
}

- (id)addMessageContent:(id)content forMessage:(id)message mailbox:(id)mailbox
{
  v111 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  messageCopy = message;
  v9 = objc_alloc_init(NNMKMessageContentResult);
  selfCopy = self;
  currentDeviceRegistry = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  messageId = [contentCopy messageId];
  v12 = [currentDeviceRegistry syncedMessageForMessageWithId:messageId];

  usedNotificationPriorityForMessageSync = [v12 usedNotificationPriorityForMessageSync];
  contentRequestedByUser = [v12 contentRequestedByUser];
  if ((contentRequestedByUser & 1) == 0)
  {
    if (usedNotificationPriorityForMessageSync)
    {
      contentSyncedUsingNotificationPriority = [v12 contentSyncedUsingNotificationPriority];
    }

    else
    {
      contentSyncedUsingNotificationPriority = [v12 contentSynced];
    }

    [(NNMKMessageContentResult *)v9 setAlreadySyncedWithCurrentPriority:contentSyncedUsingNotificationPriority];
  }

  [(NNMKMessageContentResult *)v9 setMessageDoesNotExist:v12 == 0];
  if (!v12 || [(NNMKMessageContentResult *)v9 alreadySyncedWithCurrentPriority])
  {
    goto LABEL_68;
  }

  v90 = contentRequestedByUser;
  currentDeviceRegistry2 = [(NNMKSyncPersistenceHandler *)selfCopy currentDeviceRegistry];
  [currentDeviceRegistry2 beginUpdates];

  if ([contentCopy mainAlternativeValid])
  {
    preview = [messageCopy preview];
  }

  else
  {
    hasTextData = [contentCopy hasTextData];
    preview = [messageCopy preview];
    if (!hasTextData)
    {
      goto LABEL_15;
    }
  }

  if ([preview length] >= 0x65)
  {
    v19 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
    {
      [NNMKSyncPersistenceHandler addMessageContent:v19 forMessage:? mailbox:?];
    }

    v20 = [preview substringToIndex:100];

    preview = v20;
  }

LABEL_15:
  v94 = v9;
  v91 = preview;
  v88 = [preview dataUsingEncoding:10];
  compressedData = [v88 compressedData];
  v22 = objc_alloc_init(NNMKProtoMessageContentSync);
  currentDeviceRegistry3 = [(NNMKSyncPersistenceHandler *)selfCopy currentDeviceRegistry];
  -[NNMKProtoMessageContentSync setFullSyncVersion:](v22, "setFullSyncVersion:", [currentDeviceRegistry3 fullSyncVersion]);

  v24 = MEMORY[0x277CCAAB0];
  date = [MEMORY[0x277CBEAA8] date];
  v26 = [v24 archivedDataWithRootObject:date requiringSecureCoding:1 error:0];
  [(NNMKProtoMessageContentSync *)v22 setDateSynced:v26];

  syncController = [(NNMKSyncPersistenceHandler *)selfCopy syncController];
  messageId2 = [contentCopy messageId];
  v29 = [syncController watchMessageIdFromMessageId:messageId2];
  [(NNMKProtoMessageContentSync *)v22 setMessageId:v29];

  mailboxId = [messageCopy mailboxId];
  [(NNMKProtoMessageContentSync *)v22 setMailboxId:mailboxId];

  -[NNMKProtoMessageContentSync setMainAlternativeValid:](v22, "setMainAlternativeValid:", [contentCopy mainAlternativeValid]);
  v87 = compressedData;
  [(NNMKProtoMessageContentSync *)v22 setPreview:compressedData];
  v98 = v22;
  -[NNMKProtoMessageContentSync setPartiallyLoaded:](v22, "setPartiallyLoaded:", [contentCopy partiallyLoaded]);
  currentDeviceRegistry4 = [(NNMKSyncPersistenceHandler *)selfCopy currentDeviceRegistry];
  supportsWebKit = [currentDeviceRegistry4 supportsWebKit];

  v92 = v12;
  v86 = supportsWebKit;
  if (supportsWebKit)
  {
    bOOLValue = [supportsWebKit BOOLValue];
    v34 = [supportsWebKit BOOLValue] ^ 1;
    if (!bOOLValue)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v34 = 1;
  }

  if (![(NNMKProtoMessageContentSync *)v98 mainAlternativeValid])
  {
    htmlContentData = [contentCopy htmlContentData];
    compressedData2 = [htmlContentData compressedData];

    htmlContentData2 = [contentCopy htmlContentData];
    if ([htmlContentData2 length] >> 21)
    {
    }

    else
    {
      v38 = (([compressedData2 length] & 0xFFFFFFFFFFF00000) != 0) & usedNotificationPriorityForMessageSync;

      if ((v38 & 1) == 0)
      {
        v39 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_INFO))
        {
          v40 = v39;
          messageId3 = [contentCopy messageId];
          htmlContentData3 = [contentCopy htmlContentData];
          *buf = 138543874;
          v106 = messageId3;
          v107 = 2048;
          v108 = [htmlContentData3 length];
          v109 = 2048;
          v110 = [compressedData2 length];
          _os_log_impl(&dword_25B19F000, v40, OS_LOG_TYPE_INFO, "Message content will sync html content. %{public}@ - size: %lu - compressed: %lu", buf, 0x20u);
        }

        [(NNMKProtoMessageContentSync *)v98 setHtmlContentData:compressedData2];
        v96 = [compressedData2 length];

        if (v34)
        {
          goto LABEL_33;
        }

        goto LABEL_21;
      }
    }

    v43 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v43;
      messageId4 = [contentCopy messageId];
      htmlContentData4 = [contentCopy htmlContentData];
      *buf = 138543874;
      v106 = messageId4;
      v107 = 2048;
      v108 = [htmlContentData4 length];
      v109 = 2048;
      v110 = [compressedData2 length];
      _os_log_impl(&dword_25B19F000, v44, OS_LOG_TYPE_DEFAULT, "Html Message content size is too large. It will sync text attribute instead. %{public}@ - size: %lu - compressed %lu", buf, 0x20u);
    }

    v96 = 0;
    goto LABEL_33;
  }

LABEL_20:
  v96 = 0;
  if (v34)
  {
    goto LABEL_33;
  }

LABEL_21:
  if ([(NNMKProtoMessageContentSync *)v98 mainAlternativeValid])
  {
LABEL_33:
    textData = [contentCopy textData];
    v48 = [textData length];

    if (v48 >> 21)
    {
      v58 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        v59 = v58;
        messageId5 = [contentCopy messageId];
        textData2 = [contentCopy textData];
        v62 = [textData2 length];
        *buf = 138543618;
        v106 = messageId5;
        v107 = 2048;
        v108 = v62;
        _os_log_impl(&dword_25B19F000, v59, OS_LOG_TYPE_DEFAULT, "Message content too large won't sync. %{public}@ - size: %lu)", buf, 0x16u);
      }

      [(NNMKProtoMessageContentSync *)v98 setMainAlternativeValid:0];
    }

    else
    {
      textData3 = [contentCopy textData];
      compressedData3 = [textData3 compressedData];

      v51 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_INFO))
      {
        v52 = v51;
        messageId6 = [contentCopy messageId];
        htmlContentData5 = [contentCopy htmlContentData];
        v55 = usedNotificationPriorityForMessageSync;
        v56 = [htmlContentData5 length];
        v57 = [compressedData3 length];
        *buf = 138543874;
        v106 = messageId6;
        v107 = 2048;
        v108 = v56;
        usedNotificationPriorityForMessageSync = v55;
        v109 = 2048;
        v110 = v57;
        _os_log_impl(&dword_25B19F000, v52, OS_LOG_TYPE_INFO, "Message content will sync text attribute. %{public}@ - size: %lu - compressed %lu", buf, 0x20u);
      }

      [(NNMKProtoMessageContentSync *)v98 setText:compressedData3];
      v96 = [compressedData3 length];
    }
  }

  v89 = usedNotificationPriorityForMessageSync;
  if (usedNotificationPriorityForMessageSync)
  {
    v63 = [(NNMKSyncPersistenceHandler *)selfCopy protoMessageFromMessage:messageCopy];
    [(NNMKProtoMessageContentSync *)v98 setNotificationMessage:v63];
  }

  v93 = messageCopy;
  v97 = [MEMORY[0x277CBEB58] set];
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v95 = contentCopy;
  attachments = [contentCopy attachments];
  v65 = [attachments countByEnumeratingWithState:&v100 objects:v104 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v101;
    do
    {
      for (i = 0; i != v66; ++i)
      {
        if (*v101 != v67)
        {
          objc_enumerationMutation(attachments);
        }

        v69 = *(*(&v100 + 1) + 8 * i);
        contentId = [v69 contentId];

        if (contentId)
        {
          v71 = objc_alloc_init(NNMKProtoAttachmentMetadata);
          fileName = [v69 fileName];
          [(NNMKProtoAttachmentMetadata *)v71 setFileName:fileName];

          -[NNMKProtoAttachmentMetadata setFileSize:](v71, "setFileSize:", [v69 fileSize]);
          -[NNMKProtoAttachmentMetadata setType:](v71, "setType:", [v69 type]);
          syncController2 = [(NNMKSyncPersistenceHandler *)selfCopy syncController];
          contentId2 = [v69 contentId];
          v75 = [syncController2 watchAttachmentContentIdFromContentId:contentId2];
          [(NNMKProtoAttachmentMetadata *)v71 setContentId:v75];

          mimePartNumber = [v69 mimePartNumber];
          [(NNMKProtoAttachmentMetadata *)v71 setMimePartNumber:mimePartNumber];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            contentId4 = v69;
            if ([contentId4 renderOnClient])
            {
              contentId3 = [contentId4 contentId];
              [v97 addObject:contentId3];
            }

            -[NNMKProtoAttachmentMetadata setRenderOnClient:](v71, "setRenderOnClient:", [contentId4 renderOnClient]);
            [contentId4 imageSize];
            *&v79 = v79;
            [(NNMKProtoAttachmentMetadata *)v71 setImageWidth:v79];
            [contentId4 imageSize];
            *&v81 = v80;
            [(NNMKProtoAttachmentMetadata *)v71 setImageHeight:v81];
LABEL_54:
          }

          else if ([v69 isActionable])
          {
            contentId4 = [v69 contentId];
            [v97 addObject:contentId4];
            goto LABEL_54;
          }

          [(NNMKProtoMessageContentSync *)v98 addAttachment:v71];

          continue;
        }
      }

      v66 = [attachments countByEnumeratingWithState:&v100 objects:v104 count:16];
    }

    while (v66);
  }

  v12 = v92;
  if (![v92 contentSynced] || objc_msgSend(v92, "contentRequestedByUser"))
  {
    [v92 setAttachmentsContentIdsNotYetSynced:v97];
  }

  if (v89)
  {
    [v92 setContentSyncedUsingNotificationPriority:1];
  }

  messageCopy = v93;
  if (v90)
  {
    [v92 setContentSyncedBecauseUserRequested:1];
  }

  [v92 setContentSynced:1];
  contentResendInterval = [v92 contentResendInterval];
  [v92 setContentResendInterval:0];
  contentCopy = v95;
  if ([v92 isContentCompletelySynced])
  {
    [v92 setContentRequestedByUser:0];
  }

  currentDeviceRegistry5 = [(NNMKSyncPersistenceHandler *)selfCopy currentDeviceRegistry];
  [currentDeviceRegistry5 addOrUpdateSyncedMessage:v92];

  currentDeviceRegistry6 = [(NNMKSyncPersistenceHandler *)selfCopy currentDeviceRegistry];
  [currentDeviceRegistry6 endUpdates];

  v9 = v94;
  [(NNMKMessageContentResult *)v94 setProtoMessageContentSync:v98];
  [(NNMKMessageContentResult *)v94 setResendInterval:contentResendInterval];
  [(NNMKMessageContentResult *)v94 setCompressedTextDataLength:v96];
  -[NNMKMessageContentResult setIsContentCompletelySynced:](v94, "setIsContentCompletelySynced:", [v92 isContentCompletelySynced]);
  -[NNMKMessageContentResult setIsNotificationPriority:](v94, "setIsNotificationPriority:", [v92 contentSyncedUsingNotificationPriority]);
  -[NNMKMessageContentResult setIsUserRequest:](v94, "setIsUserRequest:", [v92 contentSyncedBecauseUserRequested]);

LABEL_68:

  return v9;
}

- (id)protoMessageFromMessage:(id)message
{
  messageCopy = message;
  currentDeviceRegistry = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  organizeByThread = [currentDeviceRegistry organizeByThread];
  delegate = [(NNMKSyncPersistenceHandler *)self delegate];
  pairedDeviceSupportsMultipleMailboxes = [delegate pairedDeviceSupportsMultipleMailboxes];
  delegate2 = [(NNMKSyncPersistenceHandler *)self delegate];
  v10 = +[NNMKProtoMessage protoMessageFromMessage:organizedByThread:sanitizeMessageId:supportsStandaloneMode:](NNMKProtoMessage, "protoMessageFromMessage:organizedByThread:sanitizeMessageId:supportsStandaloneMode:", messageCopy, organizeByThread, pairedDeviceSupportsMultipleMailboxes ^ 1u, [delegate2 pairedDeviceSupportsStandaloneMode]);

  return v10;
}

- (id)currentDeviceRegistry
{
  delegate = [(NNMKSyncPersistenceHandler *)self delegate];
  currentDeviceRegistry = [delegate currentDeviceRegistry];

  return currentDeviceRegistry;
}

- (NNMKDeviceRegistryHolder)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NNMKSyncStateManager)syncStateManager
{
  WeakRetained = objc_loadWeakRetained(&self->_syncStateManager);

  return WeakRetained;
}

- (void)addStandaloneAccountIdentity:(void *)a1 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 username];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_25B19F000, v3, OS_LOG_TYPE_ERROR, "No account for username. Standalone account information won't be synced. %@", &v5, 0xCu);
}

@end