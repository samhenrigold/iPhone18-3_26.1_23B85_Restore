@interface NCABTinkerContactsManagementStateManager
+ (BOOL)_familyMemberIsEligibleForScreenTime:(id)time;
+ (id)managerForBuddyControllerDelegate:(id)delegate;
- (BOOL)_checkContactsCountStatusNotYetSyncedTimedOut;
- (BOOL)_shouldRunAgainAfterSyncEnabled_LOCKED;
- (NCABTinkerContactsManagementStateManager)initWithFamilyMember:(id)member autoEnableIfPossible:(BOOL)possible;
- (int)contactsCountStatus;
- (int)lastKnownContactsManagementState;
- (void)__contactStoreDidChange:(id)change;
- (void)__contactsSyncRetryNow;
- (void)__contactsSyncRetryTimer:(id)timer;
- (void)__contactsSyncTimeoutTimer:(id)timer;
- (void)_addFetchCompletionHandler:(id)handler;
- (void)_enableContactsManagementForFamilyMember:(id)member request:(BOOL)request completionHandler:(id)handler;
- (void)_fetchContactsCountStatusWithDeterminedStatusHandler:(id)handler notTryingToSyncHandler:(id)syncHandler syncTimedOutHandler:(id)outHandler;
- (void)_fetchContactsManagementState;
- (void)_installContactsCountRetryAndTimeoutHandlers;
- (void)_processSTContactManagementState:(int64_t)state familyMember:(id)member error:(id)error;
- (void)_removeContactsCountRetryAndTimeoutHandlers;
- (void)_removeContactsCountRetryAndTimeoutHandlers_SYNC;
- (void)_runCompletionHandlersWithContactsManagementState:(int)state error:(id)error;
- (void)_setContactsManagementStateFromContactsCountStatus:(int)status;
- (void)_startFetchingContactsManagementState;
- (void)_updateContactsManagementState:(int)state error:(id)error;
- (void)_waitOnContactsSyncWithRetries;
- (void)dealloc;
- (void)fetchContactsManagementStateWithCompletionHandler:(id)handler;
- (void)requestContactsManagementForFamilyMember:(id)member completionHandler:(id)handler;
- (void)setExtendedFamilyMemberContactsSyncTimeout:(BOOL)timeout;
@end

@implementation NCABTinkerContactsManagementStateManager

+ (id)managerForBuddyControllerDelegate:(id)delegate
{
  delegateCopy = delegate;
  setupFlowUserInfo = [(NCABTinkerContactsManagementStateManager *)delegateCopy setupFlowUserInfo];
  v5 = [setupFlowUserInfo objectForKeyedSubscript:BPSPairingFlowFamilyMember];

  v6 = objc_getAssociatedObject(delegateCopy, "managerForBuddyControllerDelegate:");
  if (v6)
  {
    v7 = v6;
    familyMember = [(NCABTinkerContactsManagementStateManager *)v6 familyMember];

    v10 = NCABCMS_Accounts_log(v9);
    v11 = v10;
    if (familyMember != v5)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_EC58(v7, v5, v11);
      }

      goto LABEL_14;
    }

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    v17 = 136446978;
    v18 = "+[NCABTinkerContactsManagementStateManager managerForBuddyControllerDelegate:]";
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v5;
    v23 = 2112;
    v24 = delegateCopy;
    v13 = "%{public}s - Fetched existing tinkerContactsManagementStateManager: %@ for familyMember: %@, from delegate: %@";
    v14 = v11;
    v15 = OS_LOG_TYPE_INFO;
LABEL_10:
    _os_log_impl(&dword_0, v14, v15, v13, &v17, 0x2Au);
    goto LABEL_14;
  }

  if (v5)
  {
    v7 = [[NCABTinkerContactsManagementStateManager alloc] initWithFamilyMember:v5 autoEnableIfPossible:1];
    objc_setAssociatedObject(delegateCopy, "managerForBuddyControllerDelegate:", v7, &dword_0 + 1);
    v11 = NCABCMS_Accounts_log(v12);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v17 = 136446978;
    v18 = "+[NCABTinkerContactsManagementStateManager managerForBuddyControllerDelegate:]";
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v5;
    v23 = 2112;
    v24 = delegateCopy;
    v13 = "%{public}s - Created tinkerContactsManagementStateManager: %@ for familyMember: %@, attached to delegate: %@";
    v14 = v11;
    v15 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_10;
  }

  v11 = NCABCMS_Accounts_log(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136446466;
    v18 = "+[NCABTinkerContactsManagementStateManager managerForBuddyControllerDelegate:]";
    v19 = 2112;
    v20 = delegateCopy;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}s - Deferring creation of tinkerContactsManagementStateManager (no familyMember); delegate: %@", &v17, 0x16u);
  }

  v7 = 0;
LABEL_14:

  return v7;
}

- (NCABTinkerContactsManagementStateManager)initWithFamilyMember:(id)member autoEnableIfPossible:(BOOL)possible
{
  memberCopy = member;
  v13.receiver = self;
  v13.super_class = NCABTinkerContactsManagementStateManager;
  v8 = [(NCABTinkerContactsManagementStateManager *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_familyMember, member);
    v10 = objc_opt_new();
    stManagementState = v9->_stManagementState;
    v9->_stManagementState = v10;

    v9->_autoEnableContactsManagement = possible;
    v9->_completionHandlersLock._os_unfair_lock_opaque = 0;
    v9->_stateLock._os_unfair_lock_opaque = 0;
    [(NCABTinkerContactsManagementStateManager *)v9 setExtendedFamilyMemberContactsSyncTimeout:0];
    [NCABContactsSyncHelper triggerContactsSyncForFamilyMember:v9->_familyMember];
  }

  return v9;
}

- (void)dealloc
{
  [(NCABTinkerContactsManagementStateManager *)self _removeContactsCountRetryAndTimeoutHandlers_SYNC];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NCABTinkerContactsManagementStateManager;
  [(NCABTinkerContactsManagementStateManager *)&v4 dealloc];
}

- (void)setExtendedFamilyMemberContactsSyncTimeout:(BOOL)timeout
{
  timeoutCopy = timeout;
  self->_extendedFamilyMemberContactsSyncTimeout = timeout;
  v5 = 120.0;
  if (timeout)
  {
    v5 = 300.0;
  }

  v6 = NCABCMS_Tinker_log([(NCABTinkerContactsManagementStateManager *)self setContactsCountSyncStatusRetryTimeoutInterval:v5]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    [(NCABTinkerContactsManagementStateManager *)self contactsCountSyncStatusRetryTimeoutInterval];
    v8 = 136446722;
    v9 = "[NCABTinkerContactsManagementStateManager setExtendedFamilyMemberContactsSyncTimeout:]";
    v10 = 1024;
    v11 = timeoutCopy;
    v12 = 2048;
    v13 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: %d - updated contactsCountSyncStatusRetryTimeoutInterval => %0.1f", &v8, 0x1Cu);
  }
}

- (void)fetchContactsManagementStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = NCABCMS_Tinker_log(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_retainBlock(handlerCopy);
    *buf = 136446466;
    v30 = "[NCABTinkerContactsManagementStateManager fetchContactsManagementStateWithCompletionHandler:]";
    v31 = 2114;
    v32 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%{public}s: %{public}@", buf, 0x16u);
  }

  if (!handlerCopy)
  {
    v10 = NCABCMS_Tinker_log(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_ED90(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    goto LABEL_11;
  }

  familyMember = [(NCABTinkerContactsManagementStateManager *)self familyMember];

  if (!familyMember)
  {
    v18 = NCABCMS_Tinker_log(v9);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_ED18(v18, v19, v20, v21, v22, v23, v24, v25);
    }

    v27 = NSLocalizedDescriptionKey;
    v28 = @"No familyMember";
    v26 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v10 = [NSError errorWithDomain:@"NCABErrorDomain" code:1 userInfo:v26];

    (*(handlerCopy + 2))(handlerCopy, 0, v10);
LABEL_11:

    goto LABEL_12;
  }

  [(NCABTinkerContactsManagementStateManager *)self _addFetchCompletionHandler:handlerCopy];
  [(NCABTinkerContactsManagementStateManager *)self _fetchContactsManagementState];
LABEL_12:
}

- (int)lastKnownContactsManagementState
{
  os_unfair_lock_lock(&self->_stateLock);
  contactsManagementState = self->_contactsManagementState;
  os_unfair_lock_unlock(&self->_stateLock);
  return contactsManagementState;
}

- (void)requestContactsManagementForFamilyMember:(id)member completionHandler:(id)handler
{
  memberCopy = member;
  handlerCopy = handler;
  v8 = NCABCMS_Tinker_log(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446466;
    v11 = "[NCABTinkerContactsManagementStateManager requestContactsManagementForFamilyMember:completionHandler:]";
    v12 = 2112;
    v13 = memberCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: %@", &v10, 0x16u);
  }

  familyMember = [(NCABTinkerContactsManagementStateManager *)self familyMember];
  [(NCABTinkerContactsManagementStateManager *)self _enableContactsManagementForFamilyMember:familyMember request:1 completionHandler:handlerCopy];
}

- (int)contactsCountStatus
{
  p_contactsCountStatus = &self->_contactsCountStatus;
  if (self->_contactsCountStatus <= 3u)
  {
    familyMember = [(NCABTinkerContactsManagementStateManager *)self familyMember];
    self->_contactsCountStatus = [NCABContactsSyncHelper contactsCountStatusForFamilyMember:familyMember contactsSyncAndNetworkAccessEnabled:[(NCABTinkerContactsManagementStateManager *)self contactsSyncAndNetworkAccessEnabled]];

    v6 = NCABCMS_Tinker_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *p_contactsCountStatus;
      v10 = 136446466;
      v11 = "[NCABTinkerContactsManagementStateManager contactsCountStatus]";
      v12 = 1024;
      v13 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s - fetched contactsCountStatus:%d", &v10, 0x12u);
    }
  }

  v8 = NCABCMS_Tinker_log(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_EE08();
  }

  return *p_contactsCountStatus;
}

- (void)_addFetchCompletionHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_completionHandlersLock);
  completionHandlersArray = self->_completionHandlersArray;
  if (!completionHandlersArray)
  {
    v5 = +[NSMutableArray array];
    v6 = self->_completionHandlersArray;
    self->_completionHandlersArray = v5;

    completionHandlersArray = self->_completionHandlersArray;
  }

  v7 = objc_retainBlock(handlerCopy);
  [(NSMutableArray *)completionHandlersArray addObject:v7];

  os_unfair_lock_unlock(&self->_completionHandlersLock);
}

- (void)_runCompletionHandlersWithContactsManagementState:(int)state error:(id)error
{
  errorCopy = error;
  v7 = NCABCMS_Tinker_log(errorCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v20 = "[NCABTinkerContactsManagementStateManager _runCompletionHandlersWithContactsManagementState:error:]";
    v21 = 1024;
    stateCopy = state;
    v23 = 2114;
    v24 = errorCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}s - managementState: %d, error: %{public}@", buf, 0x1Cu);
  }

  os_unfair_lock_lock(&self->_completionHandlersLock);
  v8 = [(NSMutableArray *)self->_completionHandlersArray copy];
  [(NSMutableArray *)self->_completionHandlersArray removeAllObjects];
  os_unfair_lock_unlock(&self->_completionHandlersLock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        (*(*(*(&v14 + 1) + 8 * v13) + 16))(*(*(&v14 + 1) + 8 * v13));
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)_updateContactsManagementState:(int)state error:(id)error
{
  v4 = *&state;
  errorCopy = error;
  v7 = NCABCMS_Tinker_log(errorCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v30 = "[NCABTinkerContactsManagementStateManager _updateContactsManagementState:error:]";
    v31 = 1024;
    v32 = v4;
    v33 = 2114;
    v34[0] = errorCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: %d, error: %{public}@", buf, 0x1Cu);
  }

  os_unfair_lock_lock(&self->_stateLock);
  if ((self->_contactsManagementRequestState - 1) >= 3)
  {
    v22 = NCABCMS_Tinker_log(v8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_EE8C();
    }

    os_unfair_lock_unlock(&self->_stateLock);
  }

  else
  {
    if (v4 == 2 && (v9 = [(NCABTinkerContactsManagementStateManager *)self autoEnableContactsManagement], v9))
    {
      if (self->_contactsManagementRequestState == 3)
      {
        v10 = NCABCMS_Tinker_log(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_EF10(v10, v11, v12, v13, v14, v15, v16, v17);
        }

        v35 = NSLocalizedDescriptionKey;
        v36 = @"Couldn't auto-enable contacts management";
        v18 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        v19 = [NSError errorWithDomain:@"NCABErrorDomain" code:2 userInfo:v18];

        v20 = 4;
        v21 = 1;
        errorCopy = v19;
      }

      else
      {
        v21 = 0;
        v20 = 3;
      }
    }

    else
    {
      v20 = 4;
      v21 = 1;
    }

    self->_contactsManagementRequestState = v20;
    self->_contactsManagementState = v4;
    objc_storeStrong(&self->_contactsManagementFetchError, errorCopy);
    v24 = NCABCMS_Tinker_log(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      v30 = "[NCABTinkerContactsManagementStateManager _updateContactsManagementState:error:]";
      v31 = 1024;
      v32 = v20;
      v33 = 1024;
      LODWORD(v34[0]) = v4;
      WORD2(v34[0]) = 2114;
      *(v34 + 6) = errorCopy;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%{public}s: newRequestState: %d, newManagementState: %d, error: %{public}@", buf, 0x22u);
    }

    os_unfair_lock_unlock(&self->_stateLock);
    if (v21)
    {
      [(NCABTinkerContactsManagementStateManager *)self _runCompletionHandlersWithContactsManagementState:v4 error:errorCopy];
    }

    else
    {
      objc_initWeak(buf, self);
      familyMember = [(NCABTinkerContactsManagementStateManager *)self familyMember];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_6544;
      v26[3] = &unk_1C6C8;
      objc_copyWeak(&v27, buf);
      v28 = v4;
      [(NCABTinkerContactsManagementStateManager *)self _enableContactsManagementForFamilyMember:familyMember request:0 completionHandler:v26];

      objc_destroyWeak(&v27);
      objc_destroyWeak(buf);
    }
  }
}

- (void)_processSTContactManagementState:(int64_t)state familyMember:(id)member error:(id)error
{
  memberCopy = member;
  errorCopy = error;
  v10 = NCABCMS_Tinker_log(errorCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v24 = "[NCABTinkerContactsManagementStateManager _processSTContactManagementState:familyMember:error:]";
    v25 = 2048;
    stateCopy = state;
    v27 = 2114;
    v28 = errorCopy;
    v29 = 2112;
    v30 = memberCopy;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}s - stContactManagementState: %lld, error: %{public}@ for familyMember: %@ -  ", buf, 0x2Au);
  }

  switch(state)
  {
    case 2:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_6A5C;
      v16[3] = &unk_1C6F0;
      v16[4] = self;
      v14[4] = self;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_6A6C;
      v15[3] = &unk_1C718;
      v15[4] = self;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_6A7C;
      v14[3] = &unk_1C718;
      v11 = v16;
      v12 = v15;
      v13 = v14;
      goto LABEL_10;
    case 1:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_6A2C;
      v19[3] = &unk_1C6F0;
      v19[4] = self;
      v17[4] = self;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_6A3C;
      v18[3] = &unk_1C718;
      v18[4] = self;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_6A4C;
      v17[3] = &unk_1C718;
      v11 = v19;
      v12 = v18;
      v13 = v17;
LABEL_10:
      [(NCABTinkerContactsManagementStateManager *)self _fetchContactsCountStatusWithDeterminedStatusHandler:v11 notTryingToSyncHandler:v12 syncTimedOutHandler:v13];
      break;
    case 0:
      if (([objc_opt_class() _familyMemberIsEligibleForScreenTime:memberCopy] & 1) == 0)
      {
        [(NCABTinkerContactsManagementStateManager *)self _updateContactsManagementState:1 error:0];
        break;
      }

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_6A00;
      v22[3] = &unk_1C6F0;
      v22[4] = self;
      v20[4] = self;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_6A0C;
      v21[3] = &unk_1C718;
      v21[4] = self;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_6A1C;
      v20[3] = &unk_1C718;
      v11 = v22;
      v12 = v21;
      v13 = v20;
      goto LABEL_10;
  }
}

- (void)_setContactsManagementStateFromContactsCountStatus:(int)status
{
  v5 = NCABCMS_Tinker_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[NCABTinkerContactsManagementStateManager _setContactsManagementStateFromContactsCountStatus:]";
    v8 = 1024;
    statusCopy = status;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %d", &v6, 0x12u);
  }

  if ((status - 3) <= 2)
  {
    [(NCABTinkerContactsManagementStateManager *)self _updateContactsManagementState:dword_12BE0[status - 3] error:0];
  }
}

- (void)_fetchContactsCountStatusWithDeterminedStatusHandler:(id)handler notTryingToSyncHandler:(id)syncHandler syncTimedOutHandler:(id)outHandler
{
  handlerCopy = handler;
  syncHandlerCopy = syncHandler;
  outHandlerCopy = outHandler;
  contactsSyncAndNetworkAccessEnabled = [(NCABTinkerContactsManagementStateManager *)self contactsSyncAndNetworkAccessEnabled];
  v12 = contactsSyncAndNetworkAccessEnabled;
  v13 = NCABCMS_Tinker_log(contactsSyncAndNetworkAccessEnabled);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_retainBlock(handlerCopy);
    v15 = objc_retainBlock(syncHandlerCopy);
    v16 = objc_retainBlock(outHandlerCopy);
    v30 = 136447234;
    v31 = "[NCABTinkerContactsManagementStateManager _fetchContactsCountStatusWithDeterminedStatusHandler:notTryingToSyncHandler:syncTimedOutHandler:]";
    v32 = 2048;
    *v33 = v14;
    *&v33[8] = 2048;
    *&v33[10] = v15;
    v34 = 2048;
    v35 = v16;
    v36 = 1024;
    v37 = v12;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}s :%p:%p:%p - syncEnabled:%d", &v30, 0x30u);
  }

  if (v12)
  {
    contactsCountStatus = [(NCABTinkerContactsManagementStateManager *)self contactsCountStatus];
    v19 = NCABCMS_Tinker_log(contactsCountStatus);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v30 = 136446722;
      v31 = "[NCABTinkerContactsManagementStateManager _fetchContactsCountStatusWithDeterminedStatusHandler:notTryingToSyncHandler:syncTimedOutHandler:]";
      v32 = 1024;
      *v33 = contactsCountStatus;
      *&v33[4] = 1024;
      *&v33[6] = contactsCountStatus == 2;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "%{public}s - contactsCountStatus:%d => waitingOnContactsSync:%d", &v30, 0x18u);
    }

    if (contactsCountStatus == 2)
    {
      _checkContactsCountStatusNotYetSyncedTimedOut = [(NCABTinkerContactsManagementStateManager *)self _checkContactsCountStatusNotYetSyncedTimedOut];
      v22 = _checkContactsCountStatusNotYetSyncedTimedOut;
      v23 = NCABCMS_Tinker_log(_checkContactsCountStatusNotYetSyncedTimedOut);
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      if (v22)
      {
        if (v24)
        {
          v25 = objc_retainBlock(outHandlerCopy);
          v30 = 136446466;
          v31 = "[NCABTinkerContactsManagementStateManager _fetchContactsCountStatusWithDeterminedStatusHandler:notTryingToSyncHandler:syncTimedOutHandler:]";
          v32 = 2048;
          *v33 = v25;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%{public}s timedOut => syncTimedOutHandler():%p", &v30, 0x16u);
        }

        if (outHandlerCopy)
        {
          outHandlerCopy[2](outHandlerCopy);
        }
      }

      else
      {
        if (v24)
        {
          v30 = 136446210;
          v31 = "[NCABTinkerContactsManagementStateManager _fetchContactsCountStatusWithDeterminedStatusHandler:notTryingToSyncHandler:syncTimedOutHandler:]";
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%{public}s waiting to sync => _waitOnContactsSyncWithRetries", &v30, 0xCu);
        }

        [(NCABTinkerContactsManagementStateManager *)self _waitOnContactsSyncWithRetries];
      }
    }

    else
    {
      v28 = NCABCMS_Tinker_log(v20);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = objc_retainBlock(handlerCopy);
        v30 = 136446722;
        v31 = "[NCABTinkerContactsManagementStateManager _fetchContactsCountStatusWithDeterminedStatusHandler:notTryingToSyncHandler:syncTimedOutHandler:]";
        v32 = 1024;
        *v33 = contactsCountStatus;
        *&v33[4] = 2048;
        *&v33[6] = v29;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%{public}s => determinedStatusHandler(%d):%p", &v30, 0x1Cu);
      }

      if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, contactsCountStatus);
      }
    }
  }

  else
  {
    v26 = NCABCMS_Tinker_log(v17);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_retainBlock(syncHandlerCopy);
      v30 = 136446466;
      v31 = "[NCABTinkerContactsManagementStateManager _fetchContactsCountStatusWithDeterminedStatusHandler:notTryingToSyncHandler:syncTimedOutHandler:]";
      v32 = 2048;
      *v33 = v27;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "%{public}s !syncEnabled => notTryingToSyncHandler():%p", &v30, 0x16u);
    }

    if (syncHandlerCopy)
    {
      syncHandlerCopy[2](syncHandlerCopy);
    }
  }
}

- (BOOL)_checkContactsCountStatusNotYetSyncedTimedOut
{
  contactsCountSyncStatusRetryTimeoutDate = [(NCABTinkerContactsManagementStateManager *)self contactsCountSyncStatusRetryTimeoutDate];

  if (!contactsCountSyncStatusRetryTimeoutDate)
  {
    [(NCABTinkerContactsManagementStateManager *)self contactsCountSyncStatusRetryTimeoutInterval];
    v4 = [NSDate dateWithTimeIntervalSinceNow:?];
    [(NCABTinkerContactsManagementStateManager *)self setContactsCountSyncStatusRetryTimeoutDate:v4];

    v6 = NCABCMS_Tinker_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      contactsCountSyncStatusRetryTimeoutDate2 = [(NCABTinkerContactsManagementStateManager *)self contactsCountSyncStatusRetryTimeoutDate];
      v15 = 136446466;
      v16 = "[NCABTinkerContactsManagementStateManager _checkContactsCountStatusNotYetSyncedTimedOut]";
      v17 = 2114;
      v18 = contactsCountSyncStatusRetryTimeoutDate2;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s - set contactsCountSyncStatusRetryTimeoutDate:%{public}@", &v15, 0x16u);
    }
  }

  contactsCountSyncStatusRetryTimeoutDate3 = [(NCABTinkerContactsManagementStateManager *)self contactsCountSyncStatusRetryTimeoutDate];
  [contactsCountSyncStatusRetryTimeoutDate3 timeIntervalSinceNow];
  v10 = v9;

  v12 = NCABCMS_Tinker_log(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    contactsCountSyncStatusRetryTimeoutDate4 = [(NCABTinkerContactsManagementStateManager *)self contactsCountSyncStatusRetryTimeoutDate];
    v15 = 136446978;
    v16 = "[NCABTinkerContactsManagementStateManager _checkContactsCountStatusNotYetSyncedTimedOut]";
    v17 = 2114;
    v18 = contactsCountSyncStatusRetryTimeoutDate4;
    v19 = 2048;
    v20 = v10;
    v21 = 1024;
    v22 = v10 < 0.0;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}s - contactsCountSyncStatusRetryTimeoutDate:%{public}@ remainingTimeoutSeconds:%0.2f => timedOut:%d", &v15, 0x26u);
  }

  return v10 < 0.0;
}

- (void)_waitOnContactsSyncWithRetries
{
  os_unfair_lock_lock(&self->_stateLock);
  self->_contactsManagementRequestState = 2;
  os_unfair_lock_unlock(&self->_stateLock);
  [(NCABTinkerContactsManagementStateManager *)self _installContactsCountRetryAndTimeoutHandlers];
  v3 = +[NCABContactsSyncHelper localDeviceContactsCount];
}

- (void)_installContactsCountRetryAndTimeoutHandlers
{
  v3 = NCABCMS_Tinker_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v6 = "[NCABTinkerContactsManagementStateManager _installContactsCountRetryAndTimeoutHandlers]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_72A0;
  block[3] = &unk_1C718;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_removeContactsCountRetryAndTimeoutHandlers_SYNC
{
  v3 = NCABCMS_Tinker_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[NCABTinkerContactsManagementStateManager _removeContactsCountRetryAndTimeoutHandlers_SYNC]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v7, 0xCu);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:CNContactStoreDidChangeNotification object:0];

  [(NSTimer *)self->_contactsCountSyncStatusRetryTimeoutTimer invalidate];
  contactsCountSyncStatusRetryTimeoutTimer = self->_contactsCountSyncStatusRetryTimeoutTimer;
  self->_contactsCountSyncStatusRetryTimeoutTimer = 0;

  [(NSTimer *)self->_contactsCountSyncStatusRetryTimer invalidate];
  contactsCountSyncStatusRetryTimer = self->_contactsCountSyncStatusRetryTimer;
  self->_contactsCountSyncStatusRetryTimer = 0;
}

- (void)_removeContactsCountRetryAndTimeoutHandlers
{
  v3 = NCABCMS_Tinker_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v6 = "[NCABTinkerContactsManagementStateManager _removeContactsCountRetryAndTimeoutHandlers]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7788;
  block[3] = &unk_1C718;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)__contactsSyncRetryNow
{
  p_contactsManagementRequestState = &self->_contactsManagementRequestState;
  if (self->_contactsManagementRequestState != 2)
  {
    v4 = NCABCMS_Tinker_log(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_F028(p_contactsManagementRequestState, self, v4);
    }
  }

  [(NCABTinkerContactsManagementStateManager *)self _fetchContactsManagementState];
}

- (void)__contactsSyncTimeoutTimer:(id)timer
{
  v4 = NCABCMS_Tinker_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[NCABTinkerContactsManagementStateManager __contactsSyncTimeoutTimer:]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s", &v5, 0xCu);
  }

  [(NCABTinkerContactsManagementStateManager *)self __contactsSyncRetryNow];
}

- (void)__contactsSyncRetryTimer:(id)timer
{
  v4 = NCABCMS_Tinker_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[NCABTinkerContactsManagementStateManager __contactsSyncRetryTimer:]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s", &v5, 0xCu);
  }

  [(NCABTinkerContactsManagementStateManager *)self __contactsSyncRetryNow];
}

- (void)__contactStoreDidChange:(id)change
{
  v4 = NCABCMS_Tinker_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[NCABTinkerContactsManagementStateManager __contactStoreDidChange:]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s", &v5, 0xCu);
  }

  [(NCABTinkerContactsManagementStateManager *)self __contactsSyncRetryNow];
}

- (BOOL)_shouldRunAgainAfterSyncEnabled_LOCKED
{
  contactsSyncAndNetworkAccessEnabled = [(NCABTinkerContactsManagementStateManager *)self contactsSyncAndNetworkAccessEnabled];
  if (contactsSyncAndNetworkAccessEnabled)
  {
    LOBYTE(contactsSyncAndNetworkAccessEnabled) = (self->_contactsManagementState - 100) < 3;
  }

  return contactsSyncAndNetworkAccessEnabled;
}

- (void)_fetchContactsManagementState
{
  v3 = NCABCMS_Tinker_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136446210;
    v20 = "[NCABTinkerContactsManagementStateManager _fetchContactsManagementState]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v19, 0xCu);
  }

  [(NCABTinkerContactsManagementStateManager *)self _removeContactsCountRetryAndTimeoutHandlers];
  os_unfair_lock_lock(&self->_stateLock);
  _shouldRunAgainAfterSyncEnabled_LOCKED = [(NCABTinkerContactsManagementStateManager *)self _shouldRunAgainAfterSyncEnabled_LOCKED];
  v5 = _shouldRunAgainAfterSyncEnabled_LOCKED;
  v6 = NCABCMS_Tinker_log(_shouldRunAgainAfterSyncEnabled_LOCKED);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    contactsManagementRequestState = self->_contactsManagementRequestState;
    contactsManagementState = self->_contactsManagementState;
    v19 = 136446978;
    v20 = "[NCABTinkerContactsManagementStateManager _fetchContactsManagementState]";
    v21 = 1024;
    v22 = contactsManagementRequestState;
    v23 = 1024;
    v24 = contactsManagementState;
    v25 = 1024;
    v26 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s - _contactsManagementRequestState: %d, _contactsManagementState: %d, shouldRunAgainAfterSyncEnabled: %d", &v19, 0x1Eu);
  }

  v9 = self->_contactsManagementRequestState;
  if ((v9 != 4) | v5 & 1)
  {
    if (!v9)
    {
LABEL_10:
      self->_contactsManagementRequestState = 1;
      goto LABEL_11;
    }

    if (v9 == 2)
    {
LABEL_11:
      os_unfair_lock_unlock(&self->_stateLock);
      v11 = NCABCMS_Tinker_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_contactsManagementRequestState;
        v19 = 136446466;
        v20 = "[NCABTinkerContactsManagementStateManager _fetchContactsManagementState]";
        v21 = 1024;
        v22 = v12;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}s - starting fetch - _contactsManagementRequestState: %d", &v19, 0x12u);
      }

      [(NCABTinkerContactsManagementStateManager *)self _startFetchingContactsManagementState];
      return;
    }

    if (v5)
    {
      if ((v9 | 4) == 4)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    os_unfair_lock_unlock(&self->_stateLock);
    v18 = NCABCMS_Tinker_log(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136446210;
      v20 = "[NCABTinkerContactsManagementStateManager _fetchContactsManagementState]";
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%{public}s - fetch already in progress; nothing to do", &v19, 0xCu);
    }
  }

  else
  {
    v13 = self->_contactsManagementState;
    v14 = self->_contactsManagementFetchError;
    os_unfair_lock_unlock(&self->_stateLock);
    v16 = NCABCMS_Tinker_log(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136446210;
      v20 = "[NCABTinkerContactsManagementStateManager _fetchContactsManagementState]";
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%{public}s - sync running completion handlers", &v19, 0xCu);
    }

    [(NCABTinkerContactsManagementStateManager *)self _runCompletionHandlersWithContactsManagementState:v13 error:v14];
  }
}

- (void)_startFetchingContactsManagementState
{
  familyMember = [(NCABTinkerContactsManagementStateManager *)self familyMember];
  v4 = NCABCMS_Tinker_log(familyMember);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v12 = "[NCABTinkerContactsManagementStateManager _startFetchingContactsManagementState]";
    v13 = 2112;
    v14 = familyMember;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s - familyMember: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  stManagementState = [(NCABTinkerContactsManagementStateManager *)self stManagementState];
  dsid = [familyMember dsid];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_7EEC;
  v8[3] = &unk_1C740;
  objc_copyWeak(&v10, buf);
  v7 = familyMember;
  v9 = v7;
  [stManagementState contactManagementStateForDSID:dsid completionHandler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)_enableContactsManagementForFamilyMember:(id)member request:(BOOL)request completionHandler:(id)handler
{
  requestCopy = request;
  memberCopy = member;
  handlerCopy = handler;
  lastKnownContactsManagementState = [(NCABTinkerContactsManagementStateManager *)self lastKnownContactsManagementState];
  v11 = NCABCMS_Tinker_log(lastKnownContactsManagementState);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v25 = "[NCABTinkerContactsManagementStateManager _enableContactsManagementForFamilyMember:request:completionHandler:]";
    v26 = 2112;
    v27 = memberCopy;
    v28 = 1024;
    v29 = requestCopy;
    v30 = 1024;
    LODWORD(v31) = lastKnownContactsManagementState;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: %@ request: %d lastKnownContactsManagementState: %d", buf, 0x22u);
  }

  lastKnownContactsManagementState2 = [(NCABTinkerContactsManagementStateManager *)self lastKnownContactsManagementState];
  if ((lastKnownContactsManagementState2 > 5 || ((1 << lastKnownContactsManagementState2) & 0x23) == 0) && (lastKnownContactsManagementState2 - 100) >= 3)
  {
    goto LABEL_14;
  }

  v13 = NCABCMS_Tinker_log(lastKnownContactsManagementState2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_F0C8(self, v13);
  }

  v32 = NSLocalizedDescriptionKey;
  v14 = [NSString stringWithFormat:@"Attempted to enable contacts management from bad state: %d", lastKnownContactsManagementState];
  v33 = v14;
  v15 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  stManagementState2 = [NSError errorWithDomain:@"NCABErrorDomain" code:3 userInfo:v15];

  if (stManagementState2)
  {
    v18 = 0;
  }

  else
  {
LABEL_14:
    stManagementState = [(NCABTinkerContactsManagementStateManager *)self stManagementState];
    dsid = [memberCopy dsid];
    v23 = 0;
    v18 = [stManagementState enableScreenTimeForDSID:dsid error:&v23];
    stManagementState2 = v23;

    if (v18 && !stManagementState2)
    {
      stManagementState2 = [(NCABTinkerContactsManagementStateManager *)self stManagementState];
      dsid2 = [memberCopy dsid];
      if (requestCopy)
      {
        [stManagementState2 requestToManageContactsForDSID:dsid2 completionHandler:handlerCopy];
      }

      else
      {
        [stManagementState2 setManageContactsEnabled:1 forDSID:dsid2 completionHandler:handlerCopy];
      }

      goto LABEL_20;
    }
  }

  v19 = NCABCMS_Tinker_log(v17);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v25 = "[NCABTinkerContactsManagementStateManager _enableContactsManagementForFamilyMember:request:completionHandler:]";
    v26 = 2112;
    v27 = memberCopy;
    v28 = 1024;
    v29 = v18;
    v30 = 2114;
    v31 = stManagementState2;
    _os_log_error_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%{public}s - failed to enable Screen Time for family member: %@, enabledST: %d, error: %{public}@", buf, 0x26u);
  }

  handlerCopy[2](handlerCopy, stManagementState2);
LABEL_20:
}

+ (BOOL)_familyMemberIsEligibleForScreenTime:(id)time
{
  timeCopy = time;
  v4 = timeCopy;
  if (timeCopy)
  {
    v5 = [timeCopy memberType] == &dword_0 + 1 || objc_msgSend(v4, "memberType") == &dword_0 + 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end