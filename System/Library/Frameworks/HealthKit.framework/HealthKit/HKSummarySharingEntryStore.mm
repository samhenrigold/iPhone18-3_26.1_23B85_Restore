@interface HKSummarySharingEntryStore
+ (id)clientInterface;
+ (id)serverInterface;
- (HKSummarySharingEntryStore)initWithHealthStore:(id)store;
- (HKSummarySharingEntryStoreDelegate)delegate;
- (NSArray)sharingEntries;
- (void)_notifyObservers;
- (void)acceptInvitationWithUUID:(id)d completion:(id)completion;
- (void)beginObservingReachabilityStatusForIdentifiers:(id)identifiers isInitialQuery:(BOOL)query completion:(id)completion;
- (void)clientRemote_reachabilityStatusDidUpdate:(id)update error:(id)error;
- (void)clientRemote_sharingEntriesDidUpdate:(id)update;
- (void)declineInvitationWithUUID:(id)d completion:(id)completion;
- (void)fetchSharingEntriesWithCompletion:(id)completion;
- (void)inviteSharingDataWithIdentifier:(id)identifier firstName:(id)name lastName:(id)lastName sharingAuthorizations:(id)authorizations userWheelchairMode:(int64_t)mode completion:(id)completion;
- (void)leaveInvitationWithUUID:(id)d completion:(id)completion;
- (void)revokeInvitationWithUUID:(id)d completion:(id)completion;
- (void)unpauseInvitationWithUUID:(id)d completion:(id)completion;
- (void)updateNotificationStatusWithUUID:(id)d notificationStatus:(int64_t)status completion:(id)completion;
- (void)updateSharingAuthorizationsForInvitationUUID:(id)d sharingAuthorizationsToAdd:(id)add sharingAuthorizationsToDelete:(id)delete deleteOnCommit:(BOOL)commit completion:(id)completion;
@end

@implementation HKSummarySharingEntryStore

- (HKSummarySharingEntryStore)initWithHealthStore:(id)store
{
  storeCopy = store;
  v30.receiver = self;
  v30.super_class = HKSummarySharingEntryStore;
  v6 = [(HKSummarySharingEntryStore *)&v30 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    v8 = HKCreateSerialDispatchQueue(v7, @"resource");
    resourceQueue = v7->_resourceQueue;
    v7->_resourceQueue = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    fetchedEntriesByUUID = v7->_fetchedEntriesByUUID;
    v7->_fetchedEntriesByUUID = v10;

    v12 = [HKObserverSet alloc];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v16 = HKLogSharing(v14, v15);
    v17 = [(HKObserverSet *)v12 initWithName:v14 loggingCategory:v16];
    observers = v7->_observers;
    v7->_observers = v17;

    v19 = [HKTaskServerProxyProvider alloc];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v23 = [(HKTaskServerProxyProvider *)v19 initWithHealthStore:storeCopy taskIdentifier:v21 exportedObject:v7 taskUUID:uUID];
    proxyProvider = v7->_proxyProvider;
    v7->_proxyProvider = v23;

    objc_initWeak(&location, v7);
    v25 = v7->_proxyProvider;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __50__HKSummarySharingEntryStore_initWithHealthStore___block_invoke;
    v27[3] = &unk_1E737F6C8;
    objc_copyWeak(&v28, &location);
    [(HKProxyProvider *)v25 setAutomaticProxyReconnectionHandler:v27];
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __50__HKSummarySharingEntryStore_initWithHealthStore___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained fetchSharingEntriesWithCompletion:&__block_literal_global_65];
}

+ (id)clientInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06AED58];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_clientRemote_sharingEntriesDidUpdate_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (id)serverInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F7A18];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_remote_fetchSharingEntriesWithCompletionHandler_ argumentIndex:0 ofReply:1];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_remote_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion_ argumentIndex:3 ofReply:0];
  [v2 setClasses:v8 forSelector:sel_remote_updateAuthorizationIdentifiersForInvitationUUID_sharingAuthorizationsToAdd_sharingAuthorizationsToDelete_deleteOnCommit_completion_ argumentIndex:1 ofReply:0];
  [v2 setClasses:v8 forSelector:sel_remote_updateAuthorizationIdentifiersForInvitationUUID_sharingAuthorizationsToAdd_sharingAuthorizationsToDelete_deleteOnCommit_completion_ argumentIndex:2 ofReply:0];

  return v2;
}

- (NSArray)sharingEntries
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__26;
  v10 = __Block_byref_object_dispose__26;
  v11 = 0;
  resourceQueue = self->_resourceQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__HKSummarySharingEntryStore_sharingEntries__block_invoke;
  v5[3] = &unk_1E7378528;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(resourceQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __44__HKSummarySharingEntryStore_sharingEntries__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)fetchSharingEntriesWithCompletion:(id)completion
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__HKSummarySharingEntryStore_fetchSharingEntriesWithCompletion___block_invoke;
  v9[3] = &unk_1E737F718;
  v9[4] = self;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__HKSummarySharingEntryStore_fetchSharingEntriesWithCompletion___block_invoke_2_96;
  v7[3] = &unk_1E7376820;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

void __64__HKSummarySharingEntryStore_fetchSharingEntriesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__HKSummarySharingEntryStore_fetchSharingEntriesWithCompletion___block_invoke_2;
  v4[3] = &unk_1E737F6F0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 remote_fetchSharingEntriesWithCompletionHandler:v4];
}

void __64__HKSummarySharingEntryStore_fetchSharingEntriesWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6)
  {
    _HKInitializeLogging(v6, v7);
    v11 = HKLogSharing(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __64__HKSummarySharingEntryStore_fetchSharingEntriesWithCompletion___block_invoke_2_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __64__HKSummarySharingEntryStore_fetchSharingEntriesWithCompletion___block_invoke_93;
    v15[3] = &unk_1E7378AA8;
    v15[4] = v12;
    v16 = v5;
    v14 = *(a1 + 40);
    v17 = 0;
    v18 = v14;
    dispatch_async(v13, v15);
  }
}

uint64_t __64__HKSummarySharingEntryStore_fetchSharingEntriesWithCompletion___block_invoke_93(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 24) removeAllObjects];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = *(*(a1 + 32) + 24);
        v9 = [v7 UUID];
        [v8 setObject:v7 forKeyedSubscript:v9];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  [*(a1 + 32) _notifyObservers];
  return (*(*(a1 + 56) + 16))(*(a1 + 56), *(a1 + 40) != 0, *(a1 + 48));
}

void __64__HKSummarySharingEntryStore_fetchSharingEntriesWithCompletion___block_invoke_2_96(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging(v3, v4);
  v7 = HKLogSharing(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __64__HKSummarySharingEntryStore_fetchSharingEntriesWithCompletion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)beginObservingReachabilityStatusForIdentifiers:(id)identifiers isInitialQuery:(BOOL)query completion:(id)completion
{
  identifiersCopy = identifiers;
  v9 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __103__HKSummarySharingEntryStore_beginObservingReachabilityStatusForIdentifiers_isInitialQuery_completion___block_invoke;
  v15[3] = &unk_1E737F740;
  v16 = identifiersCopy;
  queryCopy = query;
  v17 = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __103__HKSummarySharingEntryStore_beginObservingReachabilityStatusForIdentifiers_isInitialQuery_completion___block_invoke_2;
  v13[3] = &unk_1E7376960;
  v14 = v17;
  v11 = v17;
  v12 = identifiersCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v15 errorHandler:v13];
}

uint64_t __103__HKSummarySharingEntryStore_beginObservingReachabilityStatusForIdentifiers_isInitialQuery_completion___block_invoke(uint64_t a1, void *a2)
{
  [a2 remote_beginObservingReachabilityStatusForIdentifiers:*(a1 + 32) isInitialQuery:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)inviteSharingDataWithIdentifier:(id)identifier firstName:(id)name lastName:(id)lastName sharingAuthorizations:(id)authorizations userWheelchairMode:(int64_t)mode completion:(id)completion
{
  v47 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  nameCopy = name;
  lastNameCopy = lastName;
  authorizationsCopy = authorizations;
  completionCopy = completion;
  proxyProvider = self->_proxyProvider;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __133__HKSummarySharingEntryStore_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke;
  v37[3] = &unk_1E73766A0;
  v37[4] = self;
  v38 = completionCopy;
  v21 = [(HKProxyProvider *)proxyProvider clientQueueActionHandlerWithCompletion:v37];
  _HKInitializeLogging(v21, v22);
  v25 = HKLogSharing(v23, v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    selfCopy = self;
    v41 = 2112;
    v42 = identifierCopy;
    v43 = 2112;
    v44 = nameCopy;
    v45 = 2112;
    v46 = lastNameCopy;
    _os_log_impl(&dword_19197B000, v25, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Inviting %@ (%@ %@)", buf, 0x2Au);
  }

  if ([authorizationsCopy count])
  {
    v26 = self->_proxyProvider;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __133__HKSummarySharingEntryStore_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke_111;
    v30[3] = &unk_1E737F768;
    v31 = identifierCopy;
    v32 = nameCopy;
    v33 = lastNameCopy;
    v34 = authorizationsCopy;
    modeCopy = mode;
    v35 = v21;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __133__HKSummarySharingEntryStore_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke_2;
    v28[3] = &unk_1E7376960;
    v29 = v35;
    [(HKProxyProvider *)v26 fetchProxyWithHandler:v30 errorHandler:v28];

    v27 = v31;
  }

  else
  {
    v27 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"No sharing authorization to add."];
    (v21)[2](v21, 0, v27);
  }
}

void __133__HKSummarySharingEntryStore_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging(v5, v6);
  v9 = HKLogSharing(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = @"NO";
    v12 = 138543874;
    if (a2)
    {
      v11 = @"YES";
    }

    v13 = v10;
    v14 = 2114;
    v15 = v11;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_19197B000, v9, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Invite sharing finished with success: %{public}@ error: %{public}@", &v12, 0x20u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
}

- (void)acceptInvitationWithUUID:(id)d completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  proxyProvider = self->_proxyProvider;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __66__HKSummarySharingEntryStore_acceptInvitationWithUUID_completion___block_invoke;
  v23[3] = &unk_1E73766A0;
  v23[4] = self;
  v24 = completionCopy;
  v9 = [(HKProxyProvider *)proxyProvider clientQueueActionHandlerWithCompletion:v23];
  _HKInitializeLogging(v9, v10);
  v13 = HKLogSharing(v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 138543618;
    selfCopy = self;
    v27 = 2114;
    v28 = uUIDString;
    _os_log_impl(&dword_19197B000, v13, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Accepting invitation %{public}@", buf, 0x16u);
  }

  v15 = self->_proxyProvider;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __66__HKSummarySharingEntryStore_acceptInvitationWithUUID_completion___block_invoke_112;
  v20[3] = &unk_1E737F718;
  v21 = dCopy;
  v22 = v9;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66__HKSummarySharingEntryStore_acceptInvitationWithUUID_completion___block_invoke_2;
  v18[3] = &unk_1E7376960;
  v19 = v22;
  v16 = v22;
  v17 = dCopy;
  [(HKProxyProvider *)v15 fetchProxyWithHandler:v20 errorHandler:v18];
}

void __66__HKSummarySharingEntryStore_acceptInvitationWithUUID_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging(v5, v6);
  v9 = HKLogSharing(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = @"NO";
    v12 = 138543874;
    if (a2)
    {
      v11 = @"YES";
    }

    v13 = v10;
    v14 = 2114;
    v15 = v11;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_19197B000, v9, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Accept invitation finished with success: %{public}@ error: %{public}@", &v12, 0x20u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
}

- (void)declineInvitationWithUUID:(id)d completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  proxyProvider = self->_proxyProvider;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __67__HKSummarySharingEntryStore_declineInvitationWithUUID_completion___block_invoke;
  v23[3] = &unk_1E73766A0;
  v23[4] = self;
  v24 = completionCopy;
  v9 = [(HKProxyProvider *)proxyProvider clientQueueActionHandlerWithCompletion:v23];
  _HKInitializeLogging(v9, v10);
  v13 = HKLogSharing(v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 138543618;
    selfCopy = self;
    v27 = 2114;
    v28 = uUIDString;
    _os_log_impl(&dword_19197B000, v13, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Declining invitation %{public}@", buf, 0x16u);
  }

  v15 = self->_proxyProvider;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __67__HKSummarySharingEntryStore_declineInvitationWithUUID_completion___block_invoke_113;
  v20[3] = &unk_1E737F718;
  v21 = dCopy;
  v22 = v9;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__HKSummarySharingEntryStore_declineInvitationWithUUID_completion___block_invoke_2;
  v18[3] = &unk_1E7376960;
  v19 = v22;
  v16 = v22;
  v17 = dCopy;
  [(HKProxyProvider *)v15 fetchProxyWithHandler:v20 errorHandler:v18];
}

void __67__HKSummarySharingEntryStore_declineInvitationWithUUID_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging(v5, v6);
  v9 = HKLogSharing(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = @"NO";
    v12 = 138543874;
    if (a2)
    {
      v11 = @"YES";
    }

    v13 = v10;
    v14 = 2114;
    v15 = v11;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_19197B000, v9, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Decline invitation finished with success: %{public}@ error: %{public}@", &v12, 0x20u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
}

- (void)revokeInvitationWithUUID:(id)d completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  proxyProvider = self->_proxyProvider;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __66__HKSummarySharingEntryStore_revokeInvitationWithUUID_completion___block_invoke;
  v23[3] = &unk_1E73766A0;
  v23[4] = self;
  v24 = completionCopy;
  v9 = [(HKProxyProvider *)proxyProvider clientQueueActionHandlerWithCompletion:v23];
  _HKInitializeLogging(v9, v10);
  v13 = HKLogSharing(v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 138543618;
    selfCopy = self;
    v27 = 2114;
    v28 = uUIDString;
    _os_log_impl(&dword_19197B000, v13, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Revoking invitation %{public}@", buf, 0x16u);
  }

  v15 = self->_proxyProvider;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __66__HKSummarySharingEntryStore_revokeInvitationWithUUID_completion___block_invoke_114;
  v20[3] = &unk_1E737F718;
  v21 = dCopy;
  v22 = v9;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66__HKSummarySharingEntryStore_revokeInvitationWithUUID_completion___block_invoke_2;
  v18[3] = &unk_1E7376960;
  v19 = v22;
  v16 = v22;
  v17 = dCopy;
  [(HKProxyProvider *)v15 fetchProxyWithHandler:v20 errorHandler:v18];
}

void __66__HKSummarySharingEntryStore_revokeInvitationWithUUID_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging(v5, v6);
  v9 = HKLogSharing(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = @"NO";
    v12 = 138543874;
    if (a2)
    {
      v11 = @"YES";
    }

    v13 = v10;
    v14 = 2114;
    v15 = v11;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_19197B000, v9, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Revoke invitation finished with success: %{public}@ error: %{public}@", &v12, 0x20u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
}

- (void)leaveInvitationWithUUID:(id)d completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  proxyProvider = self->_proxyProvider;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __65__HKSummarySharingEntryStore_leaveInvitationWithUUID_completion___block_invoke;
  v23[3] = &unk_1E73766A0;
  v23[4] = self;
  v24 = completionCopy;
  v9 = [(HKProxyProvider *)proxyProvider clientQueueActionHandlerWithCompletion:v23];
  _HKInitializeLogging(v9, v10);
  v13 = HKLogSharing(v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 138543618;
    selfCopy = self;
    v27 = 2114;
    v28 = uUIDString;
    _os_log_impl(&dword_19197B000, v13, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Leaving invitation %{public}@", buf, 0x16u);
  }

  v15 = self->_proxyProvider;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __65__HKSummarySharingEntryStore_leaveInvitationWithUUID_completion___block_invoke_115;
  v20[3] = &unk_1E737F718;
  v21 = dCopy;
  v22 = v9;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__HKSummarySharingEntryStore_leaveInvitationWithUUID_completion___block_invoke_2;
  v18[3] = &unk_1E7376960;
  v19 = v22;
  v16 = v22;
  v17 = dCopy;
  [(HKProxyProvider *)v15 fetchProxyWithHandler:v20 errorHandler:v18];
}

void __65__HKSummarySharingEntryStore_leaveInvitationWithUUID_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging(v5, v6);
  v9 = HKLogSharing(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = @"NO";
    v12 = 138543874;
    if (a2)
    {
      v11 = @"YES";
    }

    v13 = v10;
    v14 = 2114;
    v15 = v11;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_19197B000, v9, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Leave invitation finished with success: %{public}@ error: %{public}@", &v12, 0x20u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
}

- (void)unpauseInvitationWithUUID:(id)d completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  proxyProvider = self->_proxyProvider;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __67__HKSummarySharingEntryStore_unpauseInvitationWithUUID_completion___block_invoke;
  v23[3] = &unk_1E73766A0;
  v23[4] = self;
  v24 = completionCopy;
  v9 = [(HKProxyProvider *)proxyProvider clientQueueActionHandlerWithCompletion:v23];
  _HKInitializeLogging(v9, v10);
  v13 = HKLogSharing(v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 138543618;
    selfCopy = self;
    v27 = 2114;
    v28 = uUIDString;
    _os_log_impl(&dword_19197B000, v13, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Unpause invitation %{public}@", buf, 0x16u);
  }

  v15 = self->_proxyProvider;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __67__HKSummarySharingEntryStore_unpauseInvitationWithUUID_completion___block_invoke_116;
  v20[3] = &unk_1E737F718;
  v21 = dCopy;
  v22 = v9;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__HKSummarySharingEntryStore_unpauseInvitationWithUUID_completion___block_invoke_2;
  v18[3] = &unk_1E7376960;
  v19 = v22;
  v16 = v22;
  v17 = dCopy;
  [(HKProxyProvider *)v15 fetchProxyWithHandler:v20 errorHandler:v18];
}

void __67__HKSummarySharingEntryStore_unpauseInvitationWithUUID_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging(v5, v6);
  v9 = HKLogSharing(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = @"NO";
    v12 = 138543874;
    if (a2)
    {
      v11 = @"YES";
    }

    v13 = v10;
    v14 = 2114;
    v15 = v11;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_19197B000, v9, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Unpause invitation finished with success: %{public}@ error: %{public}@", &v12, 0x20u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
}

- (void)updateSharingAuthorizationsForInvitationUUID:(id)d sharingAuthorizationsToAdd:(id)add sharingAuthorizationsToDelete:(id)delete deleteOnCommit:(BOOL)commit completion:(id)completion
{
  v46 = *MEMORY[0x1E69E9840];
  dCopy = d;
  addCopy = add;
  deleteCopy = delete;
  completionCopy = completion;
  proxyProvider = self->_proxyProvider;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __158__HKSummarySharingEntryStore_updateSharingAuthorizationsForInvitationUUID_sharingAuthorizationsToAdd_sharingAuthorizationsToDelete_deleteOnCommit_completion___block_invoke;
  v36[3] = &unk_1E73766A0;
  v36[4] = self;
  v37 = completionCopy;
  v17 = [(HKProxyProvider *)proxyProvider clientQueueActionHandlerWithCompletion:v36];
  _HKInitializeLogging(v17, v18);
  v21 = HKLogSharing(v19, v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 138544131;
    selfCopy = self;
    v40 = 2114;
    v41 = uUIDString;
    v42 = 2113;
    v43 = addCopy;
    v44 = 2113;
    v45 = deleteCopy;
    _os_log_impl(&dword_19197B000, v21, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Updating invitation sharing authorizations with UUID %{public}@. %{private}@ %{private}@", buf, 0x2Au);
  }

  v23 = self->_proxyProvider;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __158__HKSummarySharingEntryStore_updateSharingAuthorizationsForInvitationUUID_sharingAuthorizationsToAdd_sharingAuthorizationsToDelete_deleteOnCommit_completion___block_invoke_117;
  v30[3] = &unk_1E737F790;
  v31 = dCopy;
  v32 = addCopy;
  v33 = deleteCopy;
  commitCopy = commit;
  v34 = v17;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __158__HKSummarySharingEntryStore_updateSharingAuthorizationsForInvitationUUID_sharingAuthorizationsToAdd_sharingAuthorizationsToDelete_deleteOnCommit_completion___block_invoke_2;
  v28[3] = &unk_1E7376820;
  v28[4] = self;
  v29 = v34;
  v24 = v34;
  v25 = deleteCopy;
  v26 = addCopy;
  v27 = dCopy;
  [(HKProxyProvider *)v23 fetchProxyWithHandler:v30 errorHandler:v28];
}

void __158__HKSummarySharingEntryStore_updateSharingAuthorizationsForInvitationUUID_sharingAuthorizationsToAdd_sharingAuthorizationsToDelete_deleteOnCommit_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging(v5, v6);
  v9 = HKLogSharing(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = @"NO";
    v12 = 138543874;
    if (a2)
    {
      v11 = @"YES";
    }

    v13 = v10;
    v14 = 2114;
    v15 = v11;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_19197B000, v9, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Update sharing authorizations finished with success: %{public}@ error: %{public}@", &v12, 0x20u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
}

void __158__HKSummarySharingEntryStore_updateSharingAuthorizationsForInvitationUUID_sharingAuthorizationsToAdd_sharingAuthorizationsToDelete_deleteOnCommit_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging(v3, v4);
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_ERROR))
  {
    __158__HKSummarySharingEntryStore_updateSharingAuthorizationsForInvitationUUID_sharingAuthorizationsToAdd_sharingAuthorizationsToDelete_deleteOnCommit_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)updateNotificationStatusWithUUID:(id)d notificationStatus:(int64_t)status completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v9 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  _HKInitializeLogging(v9, v10);
  v13 = HKLogSharing(v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 138543875;
    selfCopy = self;
    v26 = 2114;
    v27 = uUIDString;
    v28 = 2049;
    statusCopy = status;
    _os_log_impl(&dword_19197B000, v13, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Updating notification status with UUID %{public}@. %{private}ld", buf, 0x20u);
  }

  proxyProvider = self->_proxyProvider;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __93__HKSummarySharingEntryStore_updateNotificationStatusWithUUID_notificationStatus_completion___block_invoke;
  v20[3] = &unk_1E737F7B8;
  v21 = dCopy;
  statusCopy2 = status;
  v22 = v9;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __93__HKSummarySharingEntryStore_updateNotificationStatusWithUUID_notificationStatus_completion___block_invoke_2;
  v18[3] = &unk_1E7376820;
  v18[4] = self;
  v19 = v22;
  v16 = v22;
  v17 = dCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v20 errorHandler:v18];
}

void __93__HKSummarySharingEntryStore_updateNotificationStatusWithUUID_notificationStatus_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging(v3, v4);
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_ERROR))
  {
    __93__HKSummarySharingEntryStore_updateNotificationStatusWithUUID_notificationStatus_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)clientRemote_sharingEntriesDidUpdate:(id)update
{
  updateCopy = update;
  resourceQueue = self->_resourceQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__HKSummarySharingEntryStore_clientRemote_sharingEntriesDidUpdate___block_invoke;
  v7[3] = &unk_1E7378400;
  v8 = updateCopy;
  selfCopy = self;
  v6 = updateCopy;
  dispatch_async(resourceQueue, v7);
}

uint64_t __67__HKSummarySharingEntryStore_clientRemote_sharingEntriesDidUpdate___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = *(*(a1 + 40) + 24);
        v9 = [v7 UUID];
        [v8 setObject:v7 forKeyedSubscript:v9];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  return [*(a1 + 40) _notifyObservers];
}

- (void)clientRemote_reachabilityStatusDidUpdate:(id)update error:(id)error
{
  updateCopy = update;
  errorCopy = error;
  clientQueue = [(HKHealthStore *)self->_healthStore clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__HKSummarySharingEntryStore_clientRemote_reachabilityStatusDidUpdate_error___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = updateCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = updateCopy;
  dispatch_async(clientQueue, block);
}

void __77__HKSummarySharingEntryStore_clientRemote_reachabilityStatusDidUpdate_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 summarySharingEntryStore:*(a1 + 32) didUpdateReachabilityStatus:*(a1 + 40) error:*(a1 + 48)];
}

- (void)_notifyObservers
{
  observers = self->_observers;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__HKSummarySharingEntryStore__notifyObservers__block_invoke;
  v3[3] = &unk_1E737F7E0;
  v3[4] = self;
  [(HKObserverSet *)observers notifyObservers:v3];
}

void __46__HKSummarySharingEntryStore__notifyObservers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 56) clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__HKSummarySharingEntryStore__notifyObservers__block_invoke_2;
  block[3] = &unk_1E7376780;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

- (HKSummarySharingEntryStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __64__HKSummarySharingEntryStore_fetchSharingEntriesWithCompletion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v0, v1, "[summary-sharing] %{public}@: Failed to fetch sharing entries with error: %{public}@");
}

void __158__HKSummarySharingEntryStore_updateSharingAuthorizationsForInvitationUUID_sharingAuthorizationsToAdd_sharingAuthorizationsToDelete_deleteOnCommit_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v0, v1, "[summary-sharing] %{public}@: Failed to update sharing authorizations with error: %{public}@");
}

void __93__HKSummarySharingEntryStore_updateNotificationStatusWithUUID_notificationStatus_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v0, v1, "[summary-sharing] %{public}@: Failed to update notification status with error: %{public}@");
}

@end