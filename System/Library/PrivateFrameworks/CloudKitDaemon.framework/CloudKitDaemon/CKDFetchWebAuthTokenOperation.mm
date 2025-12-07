@interface CKDFetchWebAuthTokenOperation
- (CKDFetchWebAuthTokenOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)activityCreate;
- (void)main;
@end

@implementation CKDFetchWebAuthTokenOperation

- (CKDFetchWebAuthTokenOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  v16.receiver = self;
  v16.super_class = CKDFetchWebAuthTokenOperation;
  v9 = [(CKDDatabaseOperation *)&v16 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_APIToken(infoCopy, v7, v8);
    v13 = objc_msgSend_copy(v10, v11, v12);
    APIToken = v9->_APIToken;
    v9->_APIToken = v13;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/fetch-web-auth-token", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)main
{
  v48 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v18 = v3;
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v22 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v21, 1, 0, 0);
    v25 = objc_msgSend_CKPropertiesStyleString(v22, v23, v24);
    v27 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v26, 0, 1, 0);
    v30 = objc_msgSend_CKPropertiesStyleString(v27, v28, v29);
    *location = 138544130;
    *&location[4] = v20;
    v42 = 2048;
    selfCopy = self;
    v44 = 2114;
    v45 = v25;
    v46 = 2112;
    v47 = v30;
    _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Fetch web auth token operation <%{public}@: %p; %{public}@, %@> is starting", location, 0x2Au);
  }

  v4 = [CKDFetchWebAuthTokenURLRequest alloc];
  v6 = objc_msgSend_initWithOperation_(v4, v5, self);
  v9 = objc_msgSend_APIToken(self, v7, v8);
  objc_msgSend_setAPIToken_(v6, v10, v9);

  objc_initWeak(location, self);
  objc_initWeak(&from, v6);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_22525B94C;
  v37[3] = &unk_27854B208;
  objc_copyWeak(&v38, location);
  v37[4] = self;
  objc_copyWeak(&v39, &from);
  objc_msgSend_setTokenFetchedBlock_(v6, v11, v37);
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = sub_22525BB9C;
  v34 = &unk_278548748;
  objc_copyWeak(&v35, location);
  objc_copyWeak(&v36, &from);
  objc_msgSend_setCompletionBlock_(v6, v12, &v31);
  objc_msgSend_setRequest_(self, v13, v6, v31, v32, v33, v34);
  v16 = objc_msgSend_container(self, v14, v15);
  objc_msgSend_performRequest_(v16, v17, v6);

  objc_destroyWeak(&v36);
  objc_destroyWeak(&v35);
  objc_destroyWeak(&v39);
  objc_destroyWeak(&v38);
  objc_destroyWeak(&from);
  objc_destroyWeak(location);
}

@end