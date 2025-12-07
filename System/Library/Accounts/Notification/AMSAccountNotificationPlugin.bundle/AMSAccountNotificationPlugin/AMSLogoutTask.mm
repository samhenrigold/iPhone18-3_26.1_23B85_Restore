@interface AMSLogoutTask
+ (void)_resetServerDataCacheForAccountWithDSID:(id)d;
- (AMSLogoutTask)initWithAccount:(id)account;
- (BOOL)_disableAutomaticDownloadKindsWithError:(id *)error;
- (BOOL)_disableBookkeeperWithBag:(id)bag error:(id *)error;
- (BOOL)_revokeMusicKitUserTokensWithError:(id *)error;
- (BOOL)_sendLogoutRequestWithBag:(id)bag error:(id *)error;
- (id)logout;
@end

@implementation AMSLogoutTask

- (AMSLogoutTask)initWithAccount:(id)account
{
  accountCopy = account;
  v13.receiver = self;
  v13.super_class = AMSLogoutTask;
  v6 = [(AMSTask *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v8 = qword_2A17957E0;
    v18 = qword_2A17957E0;
    if (!qword_2A17957E0)
    {
      v14[0] = MEMORY[0x29EDCA5F8];
      v14[1] = 3221225472;
      v14[2] = sub_29C88706C;
      v14[3] = &unk_29F32BD18;
      v14[4] = &v15;
      sub_29C88706C(v14);
      v8 = v16[3];
    }

    v9 = v8;
    _Block_object_dispose(&v15, 8);
    v10 = objc_alloc_init(v8);
    iCloudServiceMonitor = v7->_iCloudServiceMonitor;
    v7->_iCloudServiceMonitor = v10;
  }

  return v7;
}

- (id)logout
{
  v3 = AMSLogKey();
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = sub_29C885C84;
  v8[3] = &unk_29F32BE58;
  objc_copyWeak(&v11, &location);
  v4 = v3;
  v9 = v4;
  selfCopy = self;
  v6 = objc_msgSend_performBinaryTaskWithBlock_(self, v5, v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v6;
}

- (BOOL)_revokeMusicKitUserTokensWithError:(id *)error
{
  v45 = *MEMORY[0x29EDCA608];
  v7 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], a2, error);
  if (!v7)
  {
    v7 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v5, v6);
  }

  v8 = objc_msgSend_OSLogObject(v7, v5, v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    v41 = 138543618;
    v42 = v9;
    v43 = 2114;
    v44 = v10;
    _os_log_impl(&dword_29C87A000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Revoking Music User Tokens", &v41, 0x16u);
  }

  v13 = objc_msgSend_account(self, v11, v12);
  v16 = objc_msgSend_ams_DSID(v13, v14, v15);

  v17 = objc_alloc_init(MEMORY[0x29EDBFA18]);
  v20 = objc_msgSend_iCloudServiceMonitor(self, v18, v19);
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v24 = objc_msgSend_iCloudServiceMonitor(self, v22, v23);
    v27 = objc_msgSend_errorOnlyCompletionHandlerAdapter(v17, v25, v26);
    objc_msgSend_revokeMusicKitUserTokensForAccountDSID_withCompletion_(v24, v28, v16, v27);

    v31 = objc_msgSend_binaryPromiseAdapter(v17, v29, v30);
    v33 = objc_msgSend_resultWithError_(v31, v32, error);
  }

  else
  {
    v36 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v22, v23);
    if (!v36)
    {
      v36 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v34, v35);
    }

    v37 = objc_msgSend_OSLogObject(v36, v34, v35);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = objc_opt_class();
      v39 = AMSLogKey();
      v41 = 138543618;
      v42 = v38;
      v43 = 2114;
      v44 = v39;
      _os_log_impl(&dword_29C87A000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Unable to revoke Music User Tokens missing necessary method in ICCloudServiceStatusMonitor", &v41, 0x16u);
    }

    if (error)
    {
      AMSError();
      *error = v33 = 0;
    }

    else
    {
      v33 = 0;
    }
  }

  return v33;
}

- (BOOL)_disableAutomaticDownloadKindsWithError:(id *)error
{
  v33 = *MEMORY[0x29EDCA608];
  v7 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], a2, error);
  if (!v7)
  {
    v7 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v5, v6);
  }

  v8 = objc_msgSend_OSLogObject(v7, v5, v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    v29 = 138543618;
    v30 = v9;
    v31 = 2114;
    v32 = v10;
    _os_log_impl(&dword_29C87A000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Disabling automatic download kinds.", &v29, 0x16u);
  }

  v13 = objc_msgSend_createBagForSubProfile(MEMORY[0x29EDBF9A8], v11, v12);
  v14 = objc_alloc(MEMORY[0x29EDBF9A8]);
  v17 = objc_msgSend_account(self, v15, v16);
  v19 = objc_msgSend_initWithEnabledMediaKinds_account_bag_(v14, v18, MEMORY[0x29EDB8E90], v17, v13);

  v22 = objc_msgSend_perform(v19, v20, v21);
  v25 = objc_msgSend_binaryPromiseAdapter(v22, v23, v24);
  v27 = objc_msgSend_resultWithError_(v25, v26, error);

  return v27;
}

- (BOOL)_disableBookkeeperWithBag:(id)bag error:(id *)error
{
  v45 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDBF9F0];
  bagCopy = bag;
  v11 = objc_msgSend_sharedAccountsNotificationPluginConfig(v5, v7, v8);
  if (!v11)
  {
    v11 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v9, v10);
  }

  v12 = objc_msgSend_OSLogObject(v11, v9, v10);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = AMSLogKey();
    *buf = 138543618;
    v42 = v13;
    v43 = 2114;
    v44 = v14;
    _os_log_impl(&dword_29C87A000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Disabling Bookkeeper.", buf, 0x16u);
  }

  v16 = objc_msgSend_URLForKey_(bagCopy, v15, @"push-notification-types/add-push-notification-type-url");
  v17 = objc_alloc(MEMORY[0x29EDBFA38]);
  v19 = objc_msgSend_initWithBag_(v17, v18, bagCopy);

  objc_msgSend_setRequestEncoding_(v19, v20, 2);
  v23 = objc_msgSend_deviceGUID(MEMORY[0x29EDBF9D0], v21, v22, @"guid");
  v40[0] = v23;
  v40[1] = &unk_2A23D0B48;
  v39[1] = @"put-parameters";
  v39[2] = @"notification-type";
  v40[2] = @"mzbookkeeper";
  v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v24, v40, v39, 3);
  v27 = objc_msgSend_requestWithMethod_bagURL_parameters_(v19, v26, 4, v16, v25);

  v30 = objc_msgSend_defaultSession(MEMORY[0x29EDBFA40], v28, v29);
  v32 = objc_msgSend_dataTaskPromiseWithRequestPromise_(v30, v31, v27);
  v35 = objc_msgSend_binaryPromiseAdapter(v32, v33, v34);
  v37 = objc_msgSend_resultWithError_(v35, v36, error);

  return v37;
}

- (BOOL)_sendLogoutRequestWithBag:(id)bag error:(id *)error
{
  v58 = *MEMORY[0x29EDCA608];
  v6 = MEMORY[0x29EDBF9F0];
  bagCopy = bag;
  v12 = objc_msgSend_sharedAccountsNotificationPluginConfig(v6, v8, v9);
  if (!v12)
  {
    v12 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v10, v11);
  }

  v13 = objc_msgSend_OSLogObject(v12, v10, v11);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = AMSLogKey();
    *buf = 138543618;
    v55 = v14;
    v56 = 2114;
    v57 = v15;
    _os_log_impl(&dword_29C87A000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Sending logout request.", buf, 0x16u);
  }

  v17 = objc_msgSend_URLForKey_(bagCopy, v16, @"logout-url");
  v18 = objc_alloc(MEMORY[0x29EDBFA38]);
  v20 = objc_msgSend_initWithBag_(v18, v19, bagCopy);

  objc_msgSend_setRequestEncoding_(v20, v21, 2);
  v24 = objc_msgSend_deviceGUID(MEMORY[0x29EDBF9D0], v22, v23, @"guid");
  v53 = v24;
  v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v25, &v53, &v52, 1);
  v29 = objc_msgSend_mutableCopy(v26, v27, v28);

  v32 = objc_msgSend_sharedInstance(MEMORY[0x29EDBFA30], v30, v31);
  v35 = objc_msgSend_account(self, v33, v34);
  v37 = objc_msgSend_subscriptionBagSyncDataForAccount_(v32, v36, v35);
  objc_msgSend_ams_setNullableObject_forKey_(v29, v38, v37, @"sbsync");

  v40 = objc_msgSend_requestWithMethod_bagURL_parameters_(v20, v39, 4, v17, v29);
  v43 = objc_msgSend_defaultSession(MEMORY[0x29EDBFA40], v41, v42);
  v45 = objc_msgSend_dataTaskPromiseWithRequestPromise_(v43, v44, v40);
  v48 = objc_msgSend_binaryPromiseAdapter(v45, v46, v47);
  v50 = objc_msgSend_resultWithError_(v48, v49, error);

  return v50;
}

+ (void)_resetServerDataCacheForAccountWithDSID:(id)d
{
  v23 = *MEMORY[0x29EDCA608];
  dCopy = d;
  v6 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v4, v5);
  v9 = v6;
  if (dCopy)
  {
    if (!v6)
    {
      v9 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v7, v8);
    }

    v10 = objc_msgSend_OSLogObject(v9, v7, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      v19 = 138543618;
      v20 = v11;
      v21 = 2114;
      v22 = v12;
      _os_log_impl(&dword_29C87A000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Requesting server data cache teardown", &v19, 0x16u);
    }

    v9 = objc_alloc_init(MEMORY[0x29EDBFA28]);
    v14 = objc_msgSend_tearDownCacheForAccountDSID_(v9, v13, dCopy);
  }

  else
  {
    if (!v6)
    {
      v9 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v7, v8);
    }

    v15 = objc_msgSend_OSLogObject(v9, v7, v8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      v19 = 138543618;
      v20 = v16;
      v21 = 2114;
      v22 = v17;
      _os_log_impl(&dword_29C87A000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Failed to request server data cache teardown - no dsid on account", &v19, 0x16u);
    }
  }

  objc_msgSend_setDidSetUpServerDataCache_(MEMORY[0x29EDBF9C8], v18, 0);
}

@end