@interface WBSAuthenticationServicesAgentCredentialSharingGroupsProxy
- (WBSAuthenticationServicesAgentCredentialSharingGroupsProxy)init;
- (id)connection;
- (void)_setUpConnection:(id)connection;
- (void)deleteGroupWithID:(id)d completionHandler:(id)handler;
- (void)fetchNumberOfPasswordAndPasskeySavedAccountsWithCompletion:(id)completion;
- (void)fetchSharingGroupsThatIncludeFamilyMembers:(id)members;
- (void)groupsUpdatedWithInfos:(id)infos;
- (void)groupsUpdatedWithInfos:(id)infos shouldForceShowingNotifications:(BOOL)notifications completionHandler:(id)handler;
- (void)leaveGroupWithID:(id)d completionHandler:(id)handler;
- (void)notifyUserAboutSharedSavedAccountsInRecentlyDeleted:(id)deleted;
- (void)setDebugIgnoreDateChecksForRecentlyDeletedNotificationsDefault:(BOOL)default;
@end

@implementation WBSAuthenticationServicesAgentCredentialSharingGroupsProxy

- (WBSAuthenticationServicesAgentCredentialSharingGroupsProxy)init
{
  v8.receiver = self;
  v8.super_class = WBSAuthenticationServicesAgentCredentialSharingGroupsProxy;
  v2 = [(WBSAuthenticationServicesAgentCredentialSharingGroupsProxy *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_internalLock._os_unfair_lock_opaque = 0;
    os_unfair_lock_lock(&v2->_internalLock);
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.AuthenticationServices.CredentialSharingGroups" options:0];
    connection = v3->_connection;
    v3->_connection = v4;

    [(WBSAuthenticationServicesAgentCredentialSharingGroupsProxy *)v3 _setUpConnection:v3->_connection];
    os_unfair_lock_unlock(&v3->_internalLock);
    v6 = v3;
  }

  return v3;
}

- (void)_setUpConnection:(id)connection
{
  connectionCopy = connection;
  inited = objc_initWeak(&location, self);
  v6 = WBSAuthenticationServicesAgentCredentialSharingGroupsUserNotificationsInterface(inited);
  [connectionCopy setRemoteObjectInterface:v6];

  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __79__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy__setUpConnection___block_invoke;
  v12 = &unk_1E7CF15E8;
  objc_copyWeak(&v13, &location);
  v7 = _Block_copy(&v9);
  [connectionCopy setInvalidationHandler:{v7, v9, v10, v11, v12}];
  v8 = WBSAuthenticationServicesAgentCredentialSharingGroupsUserNotificationsInterface([connectionCopy setInterruptionHandler:v7]);
  [connectionCopy setExportedInterface:v8];

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __79__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy__setUpConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXPasswords(WeakRetained, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __79__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy__setUpConnection___block_invoke_cold_1(v4);
    }

    os_unfair_lock_lock(v3 + 4);
    v5 = *&v3[2]._os_unfair_lock_opaque;
    *&v3[2]._os_unfair_lock_opaque = 0;

    os_unfair_lock_unlock(v3 + 4);
  }
}

- (void)notifyUserAboutSharedSavedAccountsInRecentlyDeleted:(id)deleted
{
  deletedCopy = deleted;
  connection = [(WBSAuthenticationServicesAgentCredentialSharingGroupsProxy *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __114__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_notifyUserAboutSharedSavedAccountsInRecentlyDeleted___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = a2;
  v7 = [connection remoteObjectProxyWithErrorHandler:v9];

  if (v7)
  {
    [v7 notifyUserAboutSharedSavedAccountsInRecentlyDeleted:deletedCopy];
  }

  else
  {
    v8 = deletedCopy;
    v8[2](v8, 0);
  }
}

void __114__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_notifyUserAboutSharedSavedAccountsInRecentlyDeleted___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = WBS_LOG_CHANNEL_PREFIXPasswords(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __114__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_notifyUserAboutSharedSavedAccountsInRecentlyDeleted___block_invoke_cold_1(a1, v5);
  }
}

- (void)setDebugIgnoreDateChecksForRecentlyDeletedNotificationsDefault:(BOOL)default
{
  defaultCopy = default;
  connection = [(WBSAuthenticationServicesAgentCredentialSharingGroupsProxy *)self connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __125__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_setDebugIgnoreDateChecksForRecentlyDeletedNotificationsDefault___block_invoke;
  v7[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v7[4] = a2;
  v6 = [connection remoteObjectProxyWithErrorHandler:v7];

  if (v6)
  {
    [v6 setDebugIgnoreDateChecksForRecentlyDeletedNotificationsDefault:defaultCopy];
  }
}

void __125__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_setDebugIgnoreDateChecksForRecentlyDeletedNotificationsDefault___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = WBS_LOG_CHANNEL_PREFIXPasswords(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __114__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_notifyUserAboutSharedSavedAccountsInRecentlyDeleted___block_invoke_cold_1(a1, v5);
  }
}

- (void)leaveGroupWithID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  connection = [(WBSAuthenticationServicesAgentCredentialSharingGroupsProxy *)self connection];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __97__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_leaveGroupWithID_completionHandler___block_invoke;
  v16 = &unk_1E7CF1658;
  v18 = a2;
  v10 = handlerCopy;
  v17 = v10;
  v11 = [connection remoteObjectProxyWithErrorHandler:&v13];

  if (v11)
  {
    [v11 leaveGroupWithID:dCopy completionHandler:{v10, v13, v14, v15, v16}];
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:*MEMORY[0x1E696A250] code:4099 privacyPreservingDescription:{@"Couldn't connect to AuthenticationServicesAgent", v13, v14, v15, v16}];
    (*(v10 + 2))(v10, v12);
  }
}

void __97__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_leaveGroupWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = WBS_LOG_CHANNEL_PREFIXPasswords(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __97__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_leaveGroupWithID_completionHandler___block_invoke_cold_1(a1, v5);
  }

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:*MEMORY[0x1E696A250] code:4099 privacyPreservingDescription:@"Couldn't connect to AuthenticationServicesAgent"];
  (*(v6 + 16))(v6, v7);
}

- (void)deleteGroupWithID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  connection = [(WBSAuthenticationServicesAgentCredentialSharingGroupsProxy *)self connection];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __98__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_deleteGroupWithID_completionHandler___block_invoke;
  v16 = &unk_1E7CF1658;
  v18 = a2;
  v10 = handlerCopy;
  v17 = v10;
  v11 = [connection remoteObjectProxyWithErrorHandler:&v13];

  if (v11)
  {
    [v11 deleteGroupWithID:dCopy completionHandler:{v10, v13, v14, v15, v16}];
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:*MEMORY[0x1E696A250] code:4099 privacyPreservingDescription:{@"Couldn't connect to AuthenticationServicesAgent", v13, v14, v15, v16}];
    (*(v10 + 2))(v10, v12);
  }
}

void __98__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_deleteGroupWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = WBS_LOG_CHANNEL_PREFIXPasswords(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __97__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_leaveGroupWithID_completionHandler___block_invoke_cold_1(a1, v5);
  }

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:*MEMORY[0x1E696A250] code:4099 privacyPreservingDescription:@"Couldn't connect to AuthenticationServicesAgent"];
  (*(v6 + 16))(v6, v7);
}

- (void)groupsUpdatedWithInfos:(id)infos shouldForceShowingNotifications:(BOOL)notifications completionHandler:(id)handler
{
  notificationsCopy = notifications;
  infosCopy = infos;
  handlerCopy = handler;
  connection = [(WBSAuthenticationServicesAgentCredentialSharingGroupsProxy *)self connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __135__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_groupsUpdatedWithInfos_shouldForceShowingNotifications_completionHandler___block_invoke;
  v13[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v13[4] = a2;
  v12 = [connection remoteObjectProxyWithErrorHandler:v13];

  if (v12)
  {
    [v12 groupsUpdatedWithInfos:infosCopy shouldForceShowingNotifications:notificationsCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

void __135__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_groupsUpdatedWithInfos_shouldForceShowingNotifications_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = WBS_LOG_CHANNEL_PREFIXPasswords(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __114__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_notifyUserAboutSharedSavedAccountsInRecentlyDeleted___block_invoke_cold_1(a1, v5);
  }
}

- (void)groupsUpdatedWithInfos:(id)infos
{
  infosCopy = infos;
  connection = [(WBSAuthenticationServicesAgentCredentialSharingGroupsProxy *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_groupsUpdatedWithInfos___block_invoke;
  v8[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v8[4] = a2;
  v7 = [connection remoteObjectProxyWithErrorHandler:v8];

  if (v7)
  {
    [v7 groupsUpdatedWithInfos:infosCopy shouldForceShowingNotifications:0 completionHandler:&__block_literal_global_88];
  }
}

void __85__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_groupsUpdatedWithInfos___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = WBS_LOG_CHANNEL_PREFIXPasswords(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __114__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_notifyUserAboutSharedSavedAccountsInRecentlyDeleted___block_invoke_cold_1(a1, v5);
  }
}

- (void)fetchSharingGroupsThatIncludeFamilyMembers:(id)members
{
  membersCopy = members;
  connection = [(WBSAuthenticationServicesAgentCredentialSharingGroupsProxy *)self connection];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __105__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_fetchSharingGroupsThatIncludeFamilyMembers___block_invoke;
  v13 = &unk_1E7CF1658;
  v15 = a2;
  v7 = membersCopy;
  v14 = v7;
  v8 = [connection remoteObjectProxyWithErrorHandler:&v10];

  if (v8)
  {
    [v8 fetchSharingGroupsThatIncludeFamilyMembers:{v7, v10, v11, v12, v13}];
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:*MEMORY[0x1E696A250] code:4099 privacyPreservingDescription:{@"Couldn't connect to AuthenticationServicesAgent", v10, v11, v12, v13}];
    (*(v7 + 2))(v7, 0, v9);
  }
}

void __105__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_fetchSharingGroupsThatIncludeFamilyMembers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = WBS_LOG_CHANNEL_PREFIXPasswords(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __97__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_leaveGroupWithID_completionHandler___block_invoke_cold_1(a1, v5);
  }

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:*MEMORY[0x1E696A250] code:4099 privacyPreservingDescription:@"Couldn't connect to AuthenticationServicesAgent"];
  (*(v6 + 16))(v6, 0, v7);
}

- (void)fetchNumberOfPasswordAndPasskeySavedAccountsWithCompletion:(id)completion
{
  completionCopy = completion;
  connection = [(WBSAuthenticationServicesAgentCredentialSharingGroupsProxy *)self connection];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __121__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_fetchNumberOfPasswordAndPasskeySavedAccountsWithCompletion___block_invoke;
  v13 = &unk_1E7CF1658;
  v15 = a2;
  v7 = completionCopy;
  v14 = v7;
  v8 = [connection remoteObjectProxyWithErrorHandler:&v10];

  if (v8)
  {
    [v8 fetchNumberOfPasswordAndPasskeySavedAccountsWithCompletion:{v7, v10, v11, v12, v13}];
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:*MEMORY[0x1E696A250] code:4099 privacyPreservingDescription:{@"Couldn't connect to AuthenticationServicesAgent", v10, v11, v12, v13}];
    (*(v7 + 2))(v7, 0, v9);
  }
}

void __121__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_fetchNumberOfPasswordAndPasskeySavedAccountsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = WBS_LOG_CHANNEL_PREFIXPasswords(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __97__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_leaveGroupWithID_completionHandler___block_invoke_cold_1(a1, v5);
  }

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:*MEMORY[0x1E696A250] code:4099 privacyPreservingDescription:@"Couldn't connect to AuthenticationServicesAgent"];
  (*(v6 + 16))(v6, 0, v7);
}

- (id)connection
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_connection;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

void __114__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_notifyUserAboutSharedSavedAccountsInRecentlyDeleted___block_invoke_cold_1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_5(a1, a2);
  v4 = OUTLINED_FUNCTION_3();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B8447000, v6, v7, "Could not create AuthenticationServicesAgent proxy object in %{public}@: %{public}@", v8, v9, v10, v11);
}

void __97__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_leaveGroupWithID_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  v4 = OUTLINED_FUNCTION_3();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B8447000, v6, v7, "Could not create AuthenticationServicesAgent proxy object in %{public}@: %{public}@", v8, v9, v10, v11);
}

@end