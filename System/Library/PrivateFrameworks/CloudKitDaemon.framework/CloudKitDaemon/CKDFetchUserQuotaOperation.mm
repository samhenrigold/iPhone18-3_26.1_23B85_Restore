@interface CKDFetchUserQuotaOperation
- (CKDFetchUserQuotaOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)activityCreate;
- (void)main;
@end

@implementation CKDFetchUserQuotaOperation

- (CKDFetchUserQuotaOperation)initWithOperationInfo:(id)info container:(id)container
{
  v5.receiver = self;
  v5.super_class = CKDFetchUserQuotaOperation;
  return [(CKDDatabaseOperation *)&v5 initWithOperationInfo:info container:container];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/fetch-user-quota", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)main
{
  v41 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v14 = v3;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v18 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v17, 1, 0, 0);
    v21 = objc_msgSend_CKPropertiesStyleString(v18, v19, v20);
    v23 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v22, 0, 1, 0);
    v26 = objc_msgSend_CKPropertiesStyleString(v23, v24, v25);
    *location = 138544130;
    *&location[4] = v16;
    v35 = 2048;
    selfCopy = self;
    v37 = 2114;
    v38 = v21;
    v39 = 2112;
    v40 = v26;
    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Fetch user quota operation <%{public}@: %p; %{public}@, %@> is starting", location, 0x2Au);
  }

  v4 = [CKDFetchUserQuotaURLRequest alloc];
  v6 = objc_msgSend_initWithOperation_(v4, v5, self);
  objc_initWeak(location, self);
  objc_initWeak(&from, v6);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_22525B14C;
  v30[3] = &unk_27854B1E0;
  objc_copyWeak(&v31, location);
  objc_copyWeak(&v32, &from);
  objc_msgSend_setQuotaFetchedBlock_(v6, v7, v30);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_22525B344;
  v27[3] = &unk_278548748;
  objc_copyWeak(&v28, location);
  objc_copyWeak(&v29, &from);
  objc_msgSend_setCompletionBlock_(v6, v8, v27);
  objc_msgSend_setRequest_(self, v9, v6);
  v12 = objc_msgSend_container(self, v10, v11);
  objc_msgSend_performRequest_(v12, v13, v6);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&v31);
  objc_destroyWeak(&from);
  objc_destroyWeak(location);
}

@end