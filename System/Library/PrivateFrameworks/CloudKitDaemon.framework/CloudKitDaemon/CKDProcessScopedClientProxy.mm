@interface CKDProcessScopedClientProxy
+ (BOOL)isPlatformBinary:(id *)binary;
- (BOOL)canOpenFileAtURL:(id)l;
- (BOOL)hasValidatedEntitlements;
- (BOOL)isClientMainBundleAppleExecutable;
- (BOOL)processIsAttached;
- (CKDProcessScopedClientProxy)initWithClientConnection:(id)connection;
- (CKDXPCConnection)clientConnection;
- (id)CKPropertiesDescription;
- (id)clientEntitlementsWithContainerOptions:(id)options;
- (id)getFileMetadataWithFileHandle:(id)handle openInfo:(id)info error:(id *)error;
- (id)issueSandboxExtensionForItem:(id)item error:(id *)error;
- (void)_getProcessScopedClientProxyCreatorSynchronous:(BOOL)synchronous completionHandler:(id)handler;
- (void)calculateCloudCoreClientEntitlements;
- (void)getProcessScopedClientProxySynchronous:(BOOL)synchronous errorHandler:(id)handler clientProxyHandler:(id)proxyHandler;
- (void)handleSignificantIssue:(id)issue actions:(unint64_t)actions;
@end

@implementation CKDProcessScopedClientProxy

- (BOOL)processIsAttached
{
  v3 = objc_msgSend_pid(self, a2, v2);

  return MEMORY[0x28210E2B8](v3);
}

- (BOOL)isClientMainBundleAppleExecutable
{
  result = 1;
  if ((objc_msgSend_isPlatformBinary(self, a2, v2) & 1) == 0)
  {
    if (!objc_msgSend_hasValidatedEntitlements(self, v4, v5))
    {
      return 0;
    }

    v9 = objc_msgSend_clientEntitlements(self, v7, v8);
    v12 = objc_msgSend_applicationBundleID(v9, v10, v11);
    hasPrefix = objc_msgSend_hasPrefix_(v12, v13, @"com.apple.");

    if ((hasPrefix & 1) == 0)
    {
      v17 = objc_msgSend_clientEntitlements(self, v15, v16);
      hasSPIEntitlement = objc_msgSend_hasSPIEntitlement(v17, v18, v19);

      if ((hasSPIEntitlement & 1) == 0)
      {
        return 0;
      }
    }
  }

  return result;
}

- (CKDXPCConnection)clientConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_clientConnection);

  return WeakRetained;
}

- (id)clientEntitlementsWithContainerOptions:(id)options
{
  optionsCopy = options;
  selfCopy = self;
  v6 = sub_225072F00(optionsCopy);

  return v6;
}

- (void)calculateCloudCoreClientEntitlements
{
  selfCopy = self;
  sub_2250738B0();
}

- (id)CKPropertiesDescription
{
  v3 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, 2);
  v4 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_procName(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v4, v8, @"name=%@", v7);
  objc_msgSend_addObject_(v3, v10, v9);

  if (objc_msgSend_isSandboxed(self, v11, v12))
  {
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"flags=sandboxed");
    objc_msgSend_addObject_(v3, v15, v14);
  }

  v16 = objc_msgSend_componentsJoinedByString_(v3, v13, @", ");

  return v16;
}

- (CKDProcessScopedClientProxy)initWithClientConnection:(id)connection
{
  v69 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v64.receiver = self;
  v64.super_class = CKDProcessScopedClientProxy;
  v5 = [(CKDProcessScopedClientProxy *)&v64 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_clientConnection, connectionCopy);
    v62 = 0u;
    v63 = 0u;
    v9 = objc_msgSend_xpcConnection(connectionCopy, v7, v8);
    v12 = v9;
    if (v9)
    {
      objc_msgSend_auditToken(v9, v10, v11);
    }

    else
    {
      v62 = 0u;
      v63 = 0u;
    }

    v15 = objc_msgSend_xpcConnection(connectionCopy, v13, v14);
    v6->_pid = objc_msgSend_processIdentifier(v15, v16, v17);

    v18 = objc_alloc(MEMORY[0x277CBC350]);
    pid = v6->_pid;
    buffer = v62;
    v68 = v63;
    v21 = objc_msgSend_initWithAuditToken_pid_(v18, v20, &buffer, pid);
    clientEntitlements = v6->_clientEntitlements;
    v6->_clientEntitlements = v21;

    buffer = v62;
    v68 = v63;
    v6->_sandboxed = sandbox_check_by_audit_token() != 0;
    buffer = v62;
    v68 = v63;
    v6->_platformBinary = objc_msgSend_isPlatformBinary_(CKDProcessScopedClientProxy, v23, &buffer);
    v6->_hasValidatedEntitlementsTernary = -1;
    if (proc_name(v6->_pid, &buffer, 0x40u) >= 1)
    {
      v24 = objc_alloc(MEMORY[0x277CCACA8]);
      v26 = objc_msgSend_initWithCString_encoding_(v24, v25, &buffer, 4);
      processBinaryName = v6->_processBinaryName;
      v6->_processBinaryName = v26;
    }

    v28 = objc_alloc(MEMORY[0x277CCACA8]);
    v30 = v6->_processBinaryName;
    if (!v30)
    {
      v30 = @"???";
    }

    v31 = objc_msgSend_initWithFormat_(v28, v29, @"%@(%d)", v30, v6->_pid);
    procName = v6->_procName;
    v6->_procName = v31;

    v35 = objc_msgSend_clientEntitlements(v6, v33, v34);
    hasVFSOpenByIDEntitlement = objc_msgSend_hasVFSOpenByIDEntitlement(v35, v36, v37);

    v41 = MEMORY[0x277CBC880];
    v42 = MEMORY[0x277CBC830];
    if (hasVFSOpenByIDEntitlement)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v43 = *v42;
      if (os_log_type_enabled(*v42, OS_LOG_TYPE_INFO))
      {
        v44 = v6->_procName;
        *buf = 138543362;
        v66 = v44;
        _os_log_impl(&dword_22506F000, v43, OS_LOG_TYPE_INFO, "Client %{public}@ has entitlement to use openByID", buf, 0xCu);
      }
    }

    v45 = objc_msgSend_clientEntitlements(v6, v39, v40);
    hasAllowAccessDuringBuddyEntitlement = objc_msgSend_hasAllowAccessDuringBuddyEntitlement(v45, v46, v47);

    if (hasAllowAccessDuringBuddyEntitlement)
    {
      if (*v41 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v51 = *v42;
      if (os_log_type_enabled(*v42, OS_LOG_TYPE_INFO))
      {
        v52 = v6->_procName;
        *buf = 138543362;
        v66 = v52;
        _os_log_impl(&dword_22506F000, v51, OS_LOG_TYPE_INFO, "Client %{public}@ has entitlement to allow access during buddy.", buf, 0xCu);
      }
    }

    v53 = objc_msgSend_clientEntitlements(v6, v49, v50);
    hasAllowPackagesEntitlement = objc_msgSend_hasAllowPackagesEntitlement(v53, v54, v55);

    if (hasAllowPackagesEntitlement)
    {
      if (*v41 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v59 = *v42;
      if (os_log_type_enabled(*v42, OS_LOG_TYPE_INFO))
      {
        v60 = v6->_procName;
        *buf = 138543362;
        v66 = v60;
        _os_log_impl(&dword_22506F000, v59, OS_LOG_TYPE_INFO, "Client %{public}@ has entitlement to use packages. Good luck!", buf, 0xCu);
      }
    }

    objc_msgSend_calculateCloudCoreClientEntitlements(v6, v57, v58);
  }

  return v6;
}

- (void)getProcessScopedClientProxySynchronous:(BOOL)synchronous errorHandler:(id)handler clientProxyHandler:(id)proxyHandler
{
  synchronousCopy = synchronous;
  handlerCopy = handler;
  proxyHandlerCopy = proxyHandler;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22518E590;
  v13[3] = &unk_278547FF0;
  v16 = synchronousCopy;
  v14 = proxyHandlerCopy;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = proxyHandlerCopy;
  objc_msgSend__getProcessScopedClientProxyCreatorSynchronous_completionHandler_(self, v12, synchronousCopy, v13);
}

- (void)_getProcessScopedClientProxyCreatorSynchronous:(BOOL)synchronous completionHandler:(id)handler
{
  synchronousCopy = synchronous;
  handlerCopy = handler;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_225073F90;
  v23 = sub_225073554;
  v24 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = objc_msgSend_processScopedClientProxyCreator(selfCopy, v8, v9);
  v11 = v20[5];
  v20[5] = v10;

  objc_sync_exit(selfCopy);
  v13 = v20[5];
  if (v13)
  {
    handlerCopy[2](handlerCopy, v13, 0);
  }

  else
  {
    v14 = objc_msgSend_clientConnection(selfCopy, 0, v12);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_22518E7E0;
    v16[3] = &unk_278548150;
    v16[4] = selfCopy;
    v18 = &v19;
    v17 = handlerCopy;
    objc_msgSend_getProcessScopedClientProxyCreatorSynchronous_completionHandler_(v14, v15, synchronousCopy, v16);
  }

  _Block_object_dispose(&v19, 8);
}

- (id)getFileMetadataWithFileHandle:(id)handle openInfo:(id)info error:(id *)error
{
  handleCopy = handle;
  infoCopy = info;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_225073F90;
  v46 = sub_225073554;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_225073F90;
  v40 = sub_225073554;
  v41 = 0;
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  v11 = objc_autoreleasePoolPush();
  voucher_copy_without_importance();
  voucher_adopt();
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_22518EDF8;
  v33[3] = &unk_278548040;
  v35 = &v42;
  v34 = v10;
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = sub_22518EE58;
  v27 = &unk_2785481A0;
  v12 = handleCopy;
  v28 = v12;
  v13 = infoCopy;
  v29 = v13;
  v31 = &v36;
  v32 = &v42;
  v14 = v34;
  v30 = v14;
  objc_msgSend_getProcessScopedClientProxySynchronous_errorHandler_clientProxyHandler_(self, v15, 0, v33, &v24);

  objc_autoreleasePoolPop(v11);
  v16 = dispatch_time(0, 150000000000);
  if (dispatch_group_wait(v14, v16))
  {
    v18 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v17, *MEMORY[0x277CBC120], 1000, @"Daemon timed out waiting for adopter process to get metadata for %@", v13, v24, v25, v26, v27);
    v19 = v43[5];
    v43[5] = v18;

    v20 = 0;
    if (error)
    {
      *error = v43[5];
    }
  }

  else
  {
    if (!v37[5])
    {
      if (!v43[5])
      {
        v21 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v17, *MEMORY[0x277CBC120], 1000, @"Adopter failed to fetch metadata for %@", v13, v24, v25, v26, v27);
        v22 = v43[5];
        v43[5] = v21;
      }

      if (error)
      {
        *error = v43[5];
      }
    }

    v20 = v37[5];
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  return v20;
}

- (void)handleSignificantIssue:(id)issue actions:(unint64_t)actions
{
  issueCopy = issue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22518F050;
  v9[3] = &unk_2785481C8;
  v10 = issueCopy;
  actionsCopy = actions;
  v7 = issueCopy;
  objc_msgSend_getProcessScopedClientProxySynchronous_errorHandler_clientProxyHandler_(self, v8, 1, &unk_28385CDE0, v9);
}

- (id)issueSandboxExtensionForItem:(id)item error:(id *)error
{
  v82 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_CKNoFollowFileURL(item, a2, item);
  v9 = objc_msgSend_path(v6, v7, v8);
  objc_msgSend_fileSystemRepresentation(v9, v10, v11);
  v14 = objc_msgSend_clientConnection(self, v12, v13);
  v17 = objc_msgSend_xpcConnection(v14, v15, v16);
  v20 = v17;
  if (v17)
  {
    objc_msgSend_auditToken(v17, v18, v19);
  }

  else
  {
    memset(buf, 0, 32);
  }

  v21 = sandbox_extension_issue_file_to_process();

  if (!v21)
  {
    v33 = MEMORY[0x277CBC560];
    v34 = *MEMORY[0x277CBC120];
    v35 = objc_msgSend_clientEntitlements(self, v22, v23);
    v38 = objc_msgSend_applicationBundleID(v35, v36, v37);
    v41 = objc_msgSend_CKSanitizedPath(v9, v39, v40);
    v42 = *__error();
    v43 = __error();
    v44 = strerror(*v43);
    v32 = objc_msgSend_errorWithDomain_code_path_format_(v33, v45, v34, 1000, v9, @"Failed to issue sandbox extension for %@ at %@: %d (%s)", v38, v41, v42, v44);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v46 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v61 = v46;
      v64 = objc_msgSend_clientEntitlements(self, v62, v63);
      v67 = objc_msgSend_applicationBundleID(v64, v65, v66);
      v70 = objc_msgSend_CKSanitizedPath(v9, v68, v69);
      *buf = 138412802;
      *&buf[4] = v67;
      *&buf[12] = 2112;
      *&buf[14] = v70;
      *&buf[22] = 2112;
      *&buf[24] = v32;
      _os_log_error_impl(&dword_22506F000, v61, OS_LOG_TYPE_ERROR, "Failed to issue sandbox extension for applicationBundleID=%@ and path=%@: %@", buf, 0x20u);

      if (error)
      {
        goto LABEL_15;
      }
    }

    else if (error)
    {
LABEL_15:
      v47 = v32;
      v31 = 0;
      *error = v32;
      goto LABEL_22;
    }

LABEL_21:
    v31 = 0;
    goto LABEL_22;
  }

  v24 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v25 = MEMORY[0x277CBC830];
  v26 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v51 = v26;
    v54 = objc_msgSend_clientEntitlements(self, v52, v53);
    v57 = objc_msgSend_applicationBundleID(v54, v55, v56);
    v60 = objc_msgSend_CKSanitizedPath(v9, v58, v59);
    *buf = 138543618;
    *&buf[4] = v57;
    *&buf[12] = 2112;
    *&buf[14] = v60;
    _os_log_debug_impl(&dword_22506F000, v51, OS_LOG_TYPE_DEBUG, "Issued sandbox extension token for %{public}@ at %@", buf, 0x16u);
  }

  v27 = objc_alloc(MEMORY[0x277CCACA8]);
  v28 = strlen(v21);
  v30 = objc_msgSend_initWithBytesNoCopy_length_encoding_freeWhenDone_(v27, v29, v21, v28, 4, 1);
  if (!v30)
  {
    if (*v24 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v48 = *v25;
    if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      v71 = v48;
      v74 = objc_msgSend_clientEntitlements(self, v72, v73);
      v77 = objc_msgSend_applicationBundleID(v74, v75, v76);
      v80 = objc_msgSend_CKSanitizedPath(v9, v78, v79);
      *buf = 138543618;
      *&buf[4] = v77;
      *&buf[12] = 2112;
      *&buf[14] = v80;
      _os_log_error_impl(&dword_22506F000, v71, OS_LOG_TYPE_ERROR, "Failed to allocate string for sandbox extension for applicationBundleID=%{public}@ and path=%@", buf, 0x16u);
    }

    free(v21);
    v32 = 0;
    goto LABEL_21;
  }

  v31 = v30;
  v32 = 0;
LABEL_22:
  v49 = v31;

  return v31;
}

+ (BOOL)isPlatformBinary:(id *)binary
{
  v3 = *&binary->var0[4];
  *v8.val = *binary->var0;
  *&v8.val[4] = v3;
  v4 = SecTaskCreateWithAuditToken(0, &v8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = (~SecTaskGetCodeSignStatus(v4) & 0x24000001) == 0;
  CFRelease(v5);
  return v6;
}

- (BOOL)hasValidatedEntitlements
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_hasValidatedEntitlementsTernary == -1)
  {
    v5 = objc_msgSend_clientConnection(selfCopy, v3, v4);
    v8 = objc_msgSend_xpcConnection(v5, v6, v7);
    v11 = v8;
    if (v8)
    {
      objc_msgSend_auditToken(v8, v9, v10);
    }

    else
    {
      memset(&v17, 0, sizeof(v17));
    }

    v12 = SecTaskCreateWithAuditToken(0, &v17);

    if (v12)
    {
      selfCopy->_hasValidatedEntitlementsTernary = SecTaskEntitlementsValidated();
      if (!CKBoolFromCKTernary())
      {
        selfCopy->_hasValidatedEntitlementsTernary = (~SecTaskGetCodeSignStatus(v12) & 0x24000001) == 0;
      }

      if ((CKBoolFromCKTernary() & 1) == 0)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v14 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          v17.val[0] = 138412290;
          *&v17.val[1] = selfCopy;
          _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "Binary has invalid entitlements for %@", &v17, 0xCu);
        }
      }

      CFRelease(v12);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v13 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v17.val[0]) = 0;
        _os_log_error_impl(&dword_22506F000, v13, OS_LOG_TYPE_ERROR, "Unable to get SecTask for connection to determine entitlement validity", &v17, 2u);
      }
    }
  }

  v15 = CKBoolFromCKTernary();
  objc_sync_exit(selfCopy);

  return v15;
}

- (BOOL)canOpenFileAtURL:(id)l
{
  lCopy = l;
  v7 = objc_msgSend_clientConnection(self, v5, v6);
  v10 = objc_msgSend_xpcConnection(v7, v8, v9);

  if (v10 && objc_msgSend_isFileURL(lCopy, v11, v12) && (objc_msgSend_path(lCopy, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend_length(v15, v16, v17), v15, v18))
  {
    objc_msgSend_auditToken(v10, v19, v20);
    v23 = objc_msgSend_path(lCopy, v21, v22);
    v24 = v23;
    objc_msgSend_fileSystemRepresentation(v24, v25, v26);
    v27 = sandbox_check_by_audit_token() == 0;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

@end