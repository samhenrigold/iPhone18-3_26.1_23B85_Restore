@interface CKDFetchRegisteredBundleIDsOperation
- (CKDFetchRegisteredBundleIDsOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)_unitTestBundleIDsByContainerID:(id)d;
- (id)activityCreate;
- (void)main;
@end

@implementation CKDFetchRegisteredBundleIDsOperation

- (id)_unitTestBundleIDsByContainerID:(id)d
{
  v3 = qword_280D58368;
  dCopy = d;
  if (v3 != -1)
  {
    dispatch_once(&qword_280D58368, &unk_28385D860);
  }

  v6 = objc_msgSend_objectForKeyedSubscript_(qword_280D58370, v4, dCopy);

  return v6;
}

- (CKDFetchRegisteredBundleIDsOperation)initWithOperationInfo:(id)info container:(id)container
{
  v5.receiver = self;
  v5.super_class = CKDFetchRegisteredBundleIDsOperation;
  return [(CKDOperation *)&v5 initWithOperationInfo:info container:container];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/fetch-registered-bundle-ids", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)main
{
  v44 = *MEMORY[0x277D85DE8];
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
    v38 = 2048;
    selfCopy = self;
    v40 = 2114;
    v41 = v21;
    v42 = 2112;
    v43 = v26;
    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Fetch registered bundleIDs operation <%{public}@: %p; %{public}@, %@> is starting", location, 0x2Au);
  }

  v4 = [CKDFetchRegisteredBundleIDsURLRequest alloc];
  v6 = objc_msgSend_initWithOperation_(v4, v5, self);
  objc_initWeak(location, self);
  objc_initWeak(&from, v6);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_22525A938;
  v33[3] = &unk_27854B1B8;
  objc_copyWeak(&v34, location);
  objc_copyWeak(&v35, &from);
  v33[4] = self;
  objc_msgSend_setBundleIDsFetchedBlock_(v6, v7, v33);
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = sub_22525ABBC;
  v30 = &unk_278548748;
  objc_copyWeak(&v31, location);
  objc_copyWeak(&v32, &from);
  objc_msgSend_setCompletionBlock_(v6, v8, &v27);
  objc_msgSend_setRequest_(self, v9, v6, v27, v28, v29, v30);
  v12 = objc_msgSend_container(self, v10, v11);
  objc_msgSend_performRequest_(v12, v13, v6);

  objc_destroyWeak(&v32);
  objc_destroyWeak(&v31);
  objc_destroyWeak(&v35);
  objc_destroyWeak(&v34);
  objc_destroyWeak(&from);
  objc_destroyWeak(location);
}

@end