@interface CloudKitAccessPlugin
- (BOOL)_haveAccountsOfType:(id)type withStore:(id)store;
- (id)_ckAccountInStore:(id)store;
- (void)authorizeAccessToAccountsOfType:(id)type forClient:(id)client store:(id)store completion:(id)completion;
- (void)handleAccessRequestToAccountsOfType:(id)type forClient:(id)client withOptions:(id)options store:(id)store allowUserInteraction:(BOOL)interaction completion:(id)completion;
- (void)revokeAccessToAccountsOfType:(id)type forClient:(id)client store:(id)store completion:(id)completion;
- (void)revokeAllAccessToAccountsOfType:(id)type store:(id)store withCompletion:(id)completion;
@end

@implementation CloudKitAccessPlugin

- (id)_ckAccountInStore:(id)store
{
  v3 = objc_msgSend_aa_primaryAppleAccount(store, a2, store);
  v6 = objc_msgSend_ck_cloudKitAccount(v3, v4, v5);
  if (!v6)
  {
    if (*MEMORY[0x29EDB8850] != -1)
    {
      dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
    }

    v7 = *MEMORY[0x29EDB8840];
    if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_29C7F4000, v7, OS_LOG_TYPE_ERROR, "No primary iCloud accounts found. Rejecting access request.", v9, 2u);
    }
  }

  return v6;
}

- (void)handleAccessRequestToAccountsOfType:(id)type forClient:(id)client withOptions:(id)options store:(id)store allowUserInteraction:(BOOL)interaction completion:(id)completion
{
  v101 = *MEMORY[0x29EDCA608];
  typeCopy = type;
  clientCopy = client;
  optionsCopy = options;
  storeCopy = store;
  completionCopy = completion;
  v20 = objc_msgSend_authorizationManager(storeCopy, v18, v19);
  if (objc_msgSend_hasEntitlement_(clientCopy, v21, *MEMORY[0x29EDB83E0]))
  {
    v24 = objc_msgSend__ckAccountInStore_(self, v22, storeCopy);
    if (v24)
    {
      v95 = typeCopy;
      v25 = *MEMORY[0x29EDB8338];
      v26 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v23, *MEMORY[0x29EDB8338]);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_objectForKeyedSubscript_(optionsCopy, v27, v25);
        v28 = v94 = v24;
        v31 = objc_msgSend_count(v28, v29, v30);

        v24 = v94;
        if (v31)
        {
          v33 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v32, v25);
          v35 = objc_msgSend_objectAtIndexedSubscript_(v33, v34, 0);

          typeCopy = v95;
          v37 = objc_msgSend_authorizationForClient_accountType_(v20, v36, clientCopy, v95);
          v93 = v37;
          if (v37)
          {
            v40 = v37;
            if ((objc_msgSend_isGranted(v37, v38, v39) & 1) == 0)
            {
              if (*MEMORY[0x29EDB8850] != -1)
              {
                dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
              }

              v58 = *MEMORY[0x29EDB8840];
              if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v98 = clientCopy;
                _os_log_impl(&dword_29C7F4000, v58, OS_LOG_TYPE_INFO, "%@ has been denied access via TCC, stopping now with an error", buf, 0xCu);
              }

              v43 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x29EDB9FA0], v59, *MEMORY[0x29EDB8300], 7, 0);
              completionCopy[2](completionCopy, 0, v43);
              goto LABEL_47;
            }

            v43 = objc_msgSend_grantedPermissions(v40, v41, v42);
            if (objc_msgSend_containsObject_(v43, v44, v35))
            {
              if (*MEMORY[0x29EDB8850] != -1)
              {
                dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
              }

              v45 = *MEMORY[0x29EDB8840];
              if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                v98 = v35;
                _os_log_debug_impl(&dword_29C7F4000, v45, OS_LOG_TYPE_DEBUG, "Client is requesting access with pre-existing containerIdentifier: %{public}@", buf, 0xCu);
              }

              completionCopy[2](completionCopy, 1, 0);
LABEL_47:

              goto LABEL_26;
            }

            v90 = v20;

            v52 = v93;
          }

          else
          {
            v90 = v20;
            v50 = objc_alloc(MEMORY[0x29EDBDFF0]);
            v52 = objc_msgSend_initForClient_(v50, v51, clientCopy);
            objc_msgSend_setIsGranted_(v52, v53, 1);
            v54 = objc_alloc_init(MEMORY[0x29EDB8E50]);
            objc_msgSend_setGrantedPermissions_(v52, v55, v54);
          }

          v60 = objc_msgSend_grantedPermissions(v52, v56, v57);
          v63 = objc_msgSend_mutableCopy(v60, v61, v62);

          objc_msgSend_addObject_(v63, v64, v35);
          v91 = v63;
          v65 = v63;
          v43 = v52;
          objc_msgSend_setGrantedPermissions_(v52, v66, v65);
          v20 = v90;
          v92 = objc_msgSend_setAuthorization_forClient_onAccountType_(v90, v67, v43, clientCopy, v95);
          if (v92)
          {
            v70 = objc_msgSend_bundleID(clientCopy, v68, v69);

            if (v70)
            {
              if (*MEMORY[0x29EDB8850] != -1)
              {
                dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
              }

              v71 = *MEMORY[0x29EDB8840];
              if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v98 = v92;
                _os_log_error_impl(&dword_29C7F4000, v71, OS_LOG_TYPE_ERROR, "AuthorizationManager error: %@", buf, 0xCu);
              }
            }
          }

          else
          {
            if (*MEMORY[0x29EDB8850] != -1)
            {
              dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
            }

            v72 = 0x29EDB8000uLL;
            v73 = *MEMORY[0x29EDB8840];
            if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_DEBUG))
            {
              v85 = v73;
              v88 = objc_msgSend_bundleID(clientCopy, v86, v87);
              *buf = 138543618;
              v98 = v88;
              v99 = 2114;
              v100 = v35;
              _os_log_debug_impl(&dword_29C7F4000, v85, OS_LOG_TYPE_DEBUG, "Successfully set authorization for bundle id %{public}@ container id %{public}@, notifying cloudd", buf, 0x16u);

              v72 = 0x29EDB8000;
            }

            v89 = objc_msgSend_connection(self, v74, v75);
            v78 = objc_msgSend_processScopedDaemonProxy(v89, v76, v77);
            v81 = objc_msgSend_bundleID(clientCopy, v79, v80);
            v96 = v35;
            v83 = objc_msgSend_arrayWithObjects_count_(*(v72 + 3456), v82, &v96, 1);
            objc_msgSend_accountsDidGrantAccessToBundleID_containerIdentifiers_(v78, v84, v81, v83);

            v24 = v94;
          }

          completionCopy[2](completionCopy, 1, 0);

          typeCopy = v95;
          goto LABEL_47;
        }
      }

      else
      {
      }

      if (*MEMORY[0x29EDB8850] != -1)
      {
        dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
      }

      typeCopy = v95;
      v48 = *MEMORY[0x29EDB8840];
      if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_29C7F4000, v48, OS_LOG_TYPE_ERROR, "No container ID was passed in with the options dictionary.", buf, 2u);
      }

      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x29EDB9FA0], v49, *MEMORY[0x29EDB8300], 2, 0);
    }

    else
    {
      if (*MEMORY[0x29EDB8850] != -1)
      {
        dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
      }

      v46 = *MEMORY[0x29EDB8840];
      if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_29C7F4000, v46, OS_LOG_TYPE_ERROR, "Could not find a CloudKit account from account store.", buf, 2u);
      }

      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x29EDB9FA0], v47, *MEMORY[0x29EDB8300], 6, 0);
    }
    v35 = ;
    completionCopy[2](completionCopy, 0, v35);
LABEL_26:

    goto LABEL_27;
  }

  v24 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x29EDB9FA0], v22, *MEMORY[0x29EDB8300], 9, 0);
  completionCopy[2](completionCopy, 0, v24);
LABEL_27:
}

- (void)authorizeAccessToAccountsOfType:(id)type forClient:(id)client store:(id)store completion:(id)completion
{
  v71 = *MEMORY[0x29EDCA608];
  typeCopy = type;
  clientCopy = client;
  storeCopy = store;
  completionCopy = completion;
  v14 = MEMORY[0x29EDB8850];
  if (*MEMORY[0x29EDB8850] != -1)
  {
    dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
  }

  v15 = MEMORY[0x29EDB8840];
  v16 = *MEMORY[0x29EDB8840];
  if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_DEBUG))
  {
    v56 = v16;
    v59 = objc_msgSend_bundleID(clientCopy, v57, v58);
    *buf = 138543362;
    v68 = v59;
    _os_log_debug_impl(&dword_29C7F4000, v56, OS_LOG_TYPE_DEBUG, "Authorizing %{public}@ for CloudKit", buf, 0xCu);
  }

  v19 = objc_msgSend_authorizationManager(storeCopy, v17, v18);
  v22 = objc_msgSend__ckAccountInStore_(self, v20, storeCopy);
  if (v22)
  {
    v23 = objc_msgSend_authorizationForClient_accountType_(v19, v21, clientCopy, typeCopy);
    v65 = v22;
    if (v23)
    {
      v26 = v23;
      if (objc_msgSend_isGranted(v23, v24, v25))
      {
        v66 = objc_msgSend_grantedPermissions(v26, v27, v28);
LABEL_16:
        objc_msgSend_setIsGranted_(v26, v27, 1);
        v39 = objc_msgSend_setAuthorization_forClient_onAccountType_(v19, v36, v26, clientCopy, typeCopy);
        if (v39)
        {
          v40 = objc_msgSend_bundleID(clientCopy, v37, v38);

          if (v40)
          {
            if (*v14 != -1)
            {
              dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
            }

            v41 = *v15;
            if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v68 = v39;
              _os_log_error_impl(&dword_29C7F4000, v41, OS_LOG_TYPE_ERROR, "AuthorizationManager error: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v64 = typeCopy;
          if (*v14 != -1)
          {
            dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
          }

          v42 = *v15;
          if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
          {
            v60 = v42;
            v63 = objc_msgSend_bundleID(clientCopy, v61, v62);
            *buf = 138543618;
            v68 = v63;
            v69 = 2114;
            v70 = v66;
            _os_log_debug_impl(&dword_29C7F4000, v60, OS_LOG_TYPE_DEBUG, "Successfully set app level authorization for bundle id %{public}@ containerIDs %{public}@, notifying cloudd of the change", buf, 0x16u);
          }

          v45 = objc_msgSend_connection(self, v43, v44);
          v48 = objc_msgSend_processScopedDaemonProxy(v45, v46, v47);
          v51 = objc_msgSend_bundleID(clientCopy, v49, v50);
          v54 = objc_msgSend_allObjects(v66, v52, v53);
          objc_msgSend_accountsDidGrantAccessToBundleID_containerIdentifiers_(v48, v55, v51, v54);

          typeCopy = v64;
        }

        completionCopy[2](completionCopy, 1, 0);

        v22 = v65;
        goto LABEL_28;
      }
    }

    else
    {
      v31 = objc_alloc(MEMORY[0x29EDBDFF0]);
      v26 = objc_msgSend_initForClient_(v31, v32, clientCopy);
      v33 = typeCopy;
      v34 = objc_alloc_init(MEMORY[0x29EDB8E50]);
      objc_msgSend_setGrantedPermissions_(v26, v35, v34);

      typeCopy = v33;
    }

    v66 = 0;
    goto LABEL_16;
  }

  if (*v14 != -1)
  {
    dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
  }

  v29 = *v15;
  if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_29C7F4000, v29, OS_LOG_TYPE_ERROR, "Could not find a CloudKit account from account store.", buf, 2u);
  }

  v26 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x29EDB9FA0], v30, *MEMORY[0x29EDB8300], 6, 0);
  (completionCopy)[2](completionCopy, 0, v26);
LABEL_28:
}

- (void)revokeAccessToAccountsOfType:(id)type forClient:(id)client store:(id)store completion:(id)completion
{
  v62 = *MEMORY[0x29EDCA608];
  typeCopy = type;
  clientCopy = client;
  storeCopy = store;
  completionCopy = completion;
  if (objc_msgSend__haveAccountsOfType_withStore_(self, v14, typeCopy, storeCopy))
  {
    v17 = objc_msgSend_authorizationManager(storeCopy, v15, v16);
    v19 = objc_msgSend_authorizationForClient_accountType_(v17, v18, clientCopy, typeCopy);

    if (!v19)
    {
      if (*MEMORY[0x29EDB8850] != -1)
      {
        dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
      }

      v34 = *MEMORY[0x29EDB8840];
      if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_DEBUG))
      {
        v35 = v34;
        v38 = objc_msgSend_bundleID(clientCopy, v36, v37);
        *buf = 138543362;
        v61 = v38;
        _os_log_debug_impl(&dword_29C7F4000, v35, OS_LOG_TYPE_DEBUG, "Client %{public}@ does not have an existing ClientAuthorization. Ignoring...", buf, 0xCu);
      }

      goto LABEL_22;
    }

    v22 = objc_msgSend_grantedPermissions(v19, v20, v21);
    objc_msgSend_setIsGranted_(v19, v23, 0);
    v26 = objc_msgSend_authorizationManager(storeCopy, v24, v25);
    v28 = objc_msgSend_setAuthorization_forClient_onAccountType_(v26, v27, v19, clientCopy, typeCopy);

    v31 = MEMORY[0x29EDB8840];
    v59 = v28;
    if (v28)
    {
      v32 = objc_msgSend_bundleID(clientCopy, v29, v30);

      if (v32)
      {
        if (*MEMORY[0x29EDB8850] != -1)
        {
          dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
        }

        v33 = *v31;
        if (!os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }

        *buf = 138412290;
        v61 = v28;
        _os_log_error_impl(&dword_29C7F4000, v33, OS_LOG_TYPE_ERROR, "AuthorizationManager error: %@", buf, 0xCu);
      }
    }

    else
    {
      if (*MEMORY[0x29EDB8850] != -1)
      {
        dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
      }

      v39 = *v31;
      if (!os_log_type_enabled(*v31, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_19;
      }

      v40 = v39;
      v43 = objc_msgSend_bundleID(clientCopy, v41, v42);
      *buf = 138543362;
      v61 = v43;
      _os_log_debug_impl(&dword_29C7F4000, v40, OS_LOG_TYPE_DEBUG, "Successfully revoked app level authorization for bundle id %{public}@", buf, 0xCu);
    }

    if (*MEMORY[0x29EDB8850] != -1)
    {
      dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
    }

LABEL_19:
    v44 = *v31;
    if (os_log_type_enabled(*v31, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_29C7F4000, v44, OS_LOG_TYPE_DEBUG, "Notifying cloudd of the change", buf, 2u);
    }

    v47 = objc_msgSend_connection(self, v45, v46);
    v50 = objc_msgSend_processScopedDaemonProxy(v47, v48, v49);
    v53 = objc_msgSend_bundleID(clientCopy, v51, v52);
    v54 = v22;
    v57 = objc_msgSend_allObjects(v22, v55, v56);
    objc_msgSend_accountsDidRevokeAccessToBundleID_containerIdentifiers_(v50, v58, v53, v57);

LABEL_22:
  }

  completionCopy[2](completionCopy, 1, 0);
}

- (void)revokeAllAccessToAccountsOfType:(id)type store:(id)store withCompletion:(id)completion
{
  v65 = *MEMORY[0x29EDCA608];
  typeCopy = type;
  storeCopy = store;
  completionCopy = completion;
  selfCopy = self;
  if (objc_msgSend__haveAccountsOfType_withStore_(self, v11, typeCopy, storeCopy))
  {
    v14 = objc_msgSend_authorizationManager(storeCopy, v12, v13);
    v16 = objc_msgSend_allAuthorizationsForAccountType_(v14, v15, typeCopy);

    if (*MEMORY[0x29EDB8850] != -1)
    {
      dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
    }

    v54 = completionCopy;
    v17 = *MEMORY[0x29EDB8840];
    if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_DEBUG))
    {
      v51 = v17;
      *buf = 134217984;
      v64 = objc_msgSend_count(v16, v52, v53);
      _os_log_debug_impl(&dword_29C7F4000, v51, OS_LOG_TYPE_DEBUG, "Found %lu authorized clients. Revoking all...", buf, 0xCu);
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = v16;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v58, v62, 16);
    if (v19)
    {
      v22 = v19;
      v56 = *v59;
      do
      {
        v23 = 0;
        do
        {
          if (*v59 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v58 + 1) + 8 * v23);
          v25 = objc_msgSend_client(v24, v20, v21, v54);
          v28 = objc_msgSend_grantedPermissions(v24, v26, v27);
          v29 = storeCopy;
          v32 = objc_msgSend_authorizationManager(storeCopy, v30, v31);
          v34 = objc_msgSend_removeAuthorizationForClient_accountType_(v32, v33, v25, typeCopy);

          if (*MEMORY[0x29EDB8850] != -1)
          {
            dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
          }

          v35 = typeCopy;
          v36 = *MEMORY[0x29EDB8840];
          if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_29C7F4000, v36, OS_LOG_TYPE_DEBUG, "Notifying cloudd of the change", buf, 2u);
          }

          v39 = objc_msgSend_connection(selfCopy, v37, v38);
          v42 = objc_msgSend_processScopedDaemonProxy(v39, v40, v41);
          v45 = objc_msgSend_bundleID(v25, v43, v44);
          v48 = objc_msgSend_allObjects(v28, v46, v47);
          objc_msgSend_accountsDidRevokeAccessToBundleID_containerIdentifiers_(v42, v49, v45, v48);

          ++v23;
          typeCopy = v35;
          storeCopy = v29;
        }

        while (v22 != v23);
        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v58, v62, 16);
      }

      while (v22);
    }

    completionCopy = v54;
  }

  else
  {
    if (*MEMORY[0x29EDB8850] != -1)
    {
      dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
    }

    v50 = *MEMORY[0x29EDB8840];
    if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_29C7F4000, v50, OS_LOG_TYPE_ERROR, "No CloudKit accounts. What?", buf, 2u);
    }
  }

  completionCopy[2](completionCopy, 1, 0);
}

- (BOOL)_haveAccountsOfType:(id)type withStore:(id)store
{
  storeCopy = store;
  v8 = objc_msgSend_identifier(type, v6, v7);
  v10 = objc_msgSend_accountsWithAccountTypeIdentifier_(storeCopy, v9, v8);

  LOBYTE(v8) = objc_msgSend_count(v10, v11, v12) != 0;
  return v8;
}

@end