@interface CKProcessScopedStateManager
+ (id)sharedManager;
- (id)untrustedEntitlements;
- (void)__refreshAccountAccessAuthorization;
- (void)__registerForAccountChangeNotifications;
- (void)__registerForAuthorizationChangeNotifications;
- (void)clearFakeEntitlementForKey:(id)key;
- (void)connectionBecameInvalid:(id)invalid;
- (void)getFileMetadataWithFileHandle:(id)handle openInfo:(id)info reply:(id)reply;
- (void)handleSignificantIssue:(id)issue actions:(unint64_t)actions;
- (void)noteSystemIsAvailable;
- (void)setFakeEntitlement:(id)entitlement forKey:(id)key;
@end

@implementation CKProcessScopedStateManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1883F100C;
  block[3] = &unk_1E70BC418;
  block[4] = self;
  if (qword_1ED4B6598 != -1)
  {
    dispatch_once(&qword_1ED4B6598, block);
  }

  v2 = qword_1ED4B65A0;

  return v2;
}

- (id)untrustedEntitlements
{
  if (self)
  {
    self = self->_resolvedEntitlements;
  }

  return self;
}

- (void)__registerForAuthorizationChangeNotifications
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_188441344;
  aBlock[3] = &unk_1E70C1EF0;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  out_token = -1;
  v4 = CKNotificationKey(@"com.apple.cloudd.authorizationChanged", 0);
  v7 = objc_msgSend_UTF8String(v4, v5, v6);
  if (self)
  {
    notificationQueue = self->_notificationQueue;
  }

  else
  {
    notificationQueue = 0;
  }

  notify_register_dispatch(v7, &out_token, notificationQueue, v3);
}

- (void)__registerForAccountChangeNotifications
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1886BE6CC;
  aBlock[3] = &unk_1E70C1EF0;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  out_token = -1;
  v4 = CKNotificationKey(@"com.apple.cloudd.accountChanged", 0);
  v7 = objc_msgSend_UTF8String(v4, v5, v6);
  if (self)
  {
    notificationQueue = self->_notificationQueue;
  }

  else
  {
    notificationQueue = 0;
  }

  notify_register_dispatch(v7, &out_token, notificationQueue, v3);
  v11 = objc_msgSend_untrustedEntitlements(self, v9, v10);
  hasNotifyOnAccountWarmupEntitlement = objc_msgSend_hasNotifyOnAccountWarmupEntitlement(v11, v12, v13);

  if (hasNotifyOnAccountWarmupEntitlement)
  {
    out_token = -1;
    v15 = CKNotificationKey(@"com.apple.cloudd.accountWarmingUp", 0);

    v18 = objc_msgSend_UTF8String(v15, v16, v17);
    if (self)
    {
      v19 = self->_notificationQueue;
    }

    else
    {
      v19 = 0;
    }

    notify_register_dispatch(v18, &out_token, v19, v3);
    v4 = v15;
  }
}

- (void)noteSystemIsAvailable
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    selfCopy->_systemIsAvailable = 1;
    hasDeferredAuthorizationChangeNotice = selfCopy->_hasDeferredAuthorizationChangeNotice;
    hasDeferredAccountChangeNotice = selfCopy->_hasDeferredAccountChangeNotice;
    *&selfCopy->_hasDeferredAuthorizationChangeNotice = 0;
  }

  else
  {
    hasDeferredAuthorizationChangeNotice = 0;
    hasDeferredAccountChangeNotice = 0;
  }

  v7 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v3, v4);
  v10 = sub_1884239B0(selfCopy, v8, v9);
  objc_msgSend_removeObserver_name_object_(v7, v11, selfCopy, @"CKXPCConnectionInterrupted", v10);

  objc_sync_exit(selfCopy);
  if (hasDeferredAuthorizationChangeNotice)
  {
    objc_msgSend___refreshAccountAccessAuthorization(selfCopy, v12, v13);
  }

  if (hasDeferredAccountChangeNotice)
  {
    v16 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v12, v13);
    v14 = CKAccountChangedNotificationName();
    objc_msgSend_postNotificationName_object_(v16, v15, v14, 0);
  }
}

- (void)__refreshAccountAccessAuthorization
{
  v35 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    registeredContainers = selfCopy->_registeredContainers;
  }

  else
  {
    registeredContainers = 0;
  }

  v4 = registeredContainers;
  v7 = objc_msgSend_allObjects(v4, v5, v6);

  objc_sync_exit(selfCopy);
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v33[3] = 0;
  v8 = dispatch_group_create();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v7;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v29, v34, 16);
  if (v10)
  {
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        dispatch_group_enter(v8);
        objc_initWeak(&location, v13);
        v16 = objc_msgSend_containerID(v13, v14, v15);
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = sub_188440FD8;
        v23[3] = &unk_1E70C1F18;
        v26 = v33;
        objc_copyWeak(&v27, &location);
        v17 = v16;
        v24 = v17;
        v25 = v8;
        objc_msgSend__refreshAccountAccessAuthorizationWithCompletionHandler_(v13, v18, v23);

        objc_destroyWeak(&v27);
        objc_destroyWeak(&location);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v29, v34, 16);
    }

    while (v10);
  }

  if (selfCopy)
  {
    notificationQueue = selfCopy->_notificationQueue;
  }

  else
  {
    notificationQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1884410B8;
  block[3] = &unk_1E70BBE90;
  block[4] = v33;
  dispatch_group_notify(v8, notificationQueue, block);

  _Block_object_dispose(v33, 8);
}

- (void)setFakeEntitlement:(id)entitlement forKey:(id)key
{
  entitlementCopy = entitlement;
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = entitlementCopy;
  if (!entitlementCopy)
  {
    v10 = objc_msgSend_null(MEMORY[0x1E695DFB0], v8, v9);
  }

  if (selfCopy)
  {
    fakeEntitlements = selfCopy->_fakeEntitlements;
  }

  else
  {
    fakeEntitlements = 0;
  }

  v12 = fakeEntitlements;
  objc_msgSend_setObject_forKeyedSubscript_(v12, v13, v10, keyCopy);

  if (!entitlementCopy)
  {
  }

  sub_1883F1394(selfCopy, v14, v15);
  objc_sync_exit(selfCopy);
}

- (void)clearFakeEntitlementForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    fakeEntitlements = selfCopy->_fakeEntitlements;
  }

  else
  {
    fakeEntitlements = 0;
  }

  v6 = fakeEntitlements;
  objc_msgSend_setObject_forKeyedSubscript_(v6, v7, 0, keyCopy);

  sub_1883F1394(selfCopy, v8, v9);
  objc_sync_exit(selfCopy);
}

- (void)getFileMetadataWithFileHandle:(id)handle openInfo:(id)info reply:(id)reply
{
  v19 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  replyCopy = reply;
  v14 = 0;
  v10 = objc_msgSend_getFileMetadataWithFileHandle_openInfo_error_(CKAsset, v9, handle, infoCopy, &v14);
  v11 = v14;
  if (!v10)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v13 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v16 = infoCopy;
      v17 = 2112;
      v18 = v11;
      _os_log_debug_impl(&dword_1883EA000, v13, OS_LOG_TYPE_DEBUG, "Failed to get metadata for %@: %@", buf, 0x16u);
      if (!replyCopy)
      {
        goto LABEL_12;
      }
    }

    else if (!replyCopy)
    {
      goto LABEL_12;
    }

    replyCopy[2](replyCopy, 0, v11);
    goto LABEL_12;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v12 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = v10;
    _os_log_debug_impl(&dword_1883EA000, v12, OS_LOG_TYPE_DEBUG, "Got metadata %@", buf, 0xCu);
    if (!replyCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  if (replyCopy)
  {
LABEL_6:
    (replyCopy)[2](replyCopy, v10, 0);
  }

LABEL_12:
}

- (void)connectionBecameInvalid:(id)invalid
{
  invalidCopy = invalid;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&dword_1883EA000, v5, OS_LOG_TYPE_ERROR, "The connection to cloudd failed before receiving system availability.", v8, 2u);
  }

  objc_msgSend_noteSystemIsAvailable(self, v6, v7);
}

- (void)handleSignificantIssue:(id)issue actions:(unint64_t)actions
{
  issueCopy = issue;
  v9 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v6, v7);
  objc_msgSend_handleSignificantIssue_actions_(v9, v8, issueCopy, actions);
}

@end