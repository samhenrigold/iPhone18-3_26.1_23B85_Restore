@interface CKEntitlements
- (BOOL)hasInProcessOneTimeLinksEntitlement;
- (BOOL)hasInProcessShareAccessRequestsEntitlement;
- (BOOL)hasInProcessShareOwnerParticipantInfoEntitlement;
- (BOOL)hasSPIEntitlement;
- (BOOL)hasSystemLaunchDaemonEntitlement;
- (BOOL)isBackgroundAssetsExtension;
- (BOOL)isEqual:(id)equal;
- (BOOL)validateEntitlementsWithSDKVersion:(unsigned int)version error:(id *)error;
- (CKEntitlements)initWithAuditToken:(id *)token pid:(int)pid;
- (CKEntitlements)initWithCurrentProcess;
- (CKEntitlements)initWithEntitlementsDict:(id)dict;
- (CKEntitlements)initWithSqliteRepresentation:(id)representation;
- (NSArray)extendedShareAccessEntitlement;
- (NSString)applicationBundleID;
- (NSString)apsEnvironmentEntitlement;
- (NSString)associatedApplicationBundleID;
- (NSString)description;
- (NSString)systemLaunchDaemonEntitlement;
- (id)entitlementsByAddingOverlay:(id)overlay;
- (id)sqliteRepresentation;
- (id)valueForEntitlement:(id)entitlement;
- (int64_t)containerEnvironment;
- (unint64_t)hash;
- (void)ck_bindInStatement:(id)statement atIndex:(unint64_t)index;
@end

@implementation CKEntitlements

- (CKEntitlements)initWithCurrentProcess
{
  v15 = *MEMORY[0x1E69E9840];
  *task_info_out = 0u;
  v12 = 0u;
  task_info_outCnt = 8;
  v3 = task_info(*MEMORY[0x1E69E9A60], 0xFu, task_info_out, &task_info_outCnt);
  if (v3)
  {
    v4 = v3;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v4;
      _os_log_error_impl(&dword_1883EA000, v5, OS_LOG_TYPE_ERROR, "Unable to get a self audit token: %d", buf, 8u);
    }

    selfCopy = 0;
  }

  else
  {
    v7 = getpid();
    *buf = *task_info_out;
    v14 = v12;
    self = objc_msgSend_initWithAuditToken_pid_(self, v8, buf, v7);
    selfCopy = self;
  }

  return selfCopy;
}

- (int64_t)containerEnvironment
{
  v2 = objc_msgSend_valueForEntitlement_(self, a2, @"com.apple.developer.icloud-container-environment");
  v4 = v2;
  if (!v2)
  {
    goto LABEL_4;
  }

  v5 = 1;
  if (objc_msgSend_compare_options_(v2, v3, @"production", 1))
  {
    objc_msgSend_compare_options_(v4, v6, @"development", 1);
LABEL_4:
    v5 = 2;
  }

  return v5;
}

- (NSString)associatedApplicationBundleID
{
  v3 = objc_msgSend_valueForEntitlement_(self, a2, @"com.apple.developer.associated-application-identifier");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_firstObject(v3, v4, v5);

    v3 = v6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self)
    {
      procName = self->_procName;
    }

    else
    {
      procName = 0;
    }

    v8 = CKAppIdentifierFromTeamAppTuple(v3, procName);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)applicationBundleID
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    cachedApplicationBundleID = selfCopy->_cachedApplicationBundleID;
    if (cachedApplicationBundleID)
    {
      v5 = cachedApplicationBundleID;
      goto LABEL_22;
    }
  }

  v6 = sub_1883F4174(selfCopy, v3);
  if (v6)
  {
    if (selfCopy)
    {
      procName = selfCopy->_procName;
    }

    else
    {
      procName = 0;
    }

    v8 = procName;
    v9 = CKAppIdentifierFromTeamAppTuple(v6, v8);
    if (selfCopy)
    {
      objc_storeStrong(&selfCopy->_cachedApplicationBundleID, v9);
    }

    goto LABEL_17;
  }

  if (selfCopy)
  {
    pid = selfCopy->_pid;
  }

  else
  {
    pid = 0;
  }

  buffer[0] = 0;
  if (!proc_pidinfo(pid, 11, 1uLL, buffer, 1024) && buffer[0])
  {
    if (selfCopy)
    {
      v11 = selfCopy->_procName;
    }

    else
    {
      v11 = 0;
    }

    v8 = v11;
    CKWarnForInvalidApplicationIdentifier(0, v8);
LABEL_17:
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1884213EC;
  v14[3] = &unk_1E70BC388;
  v14[4] = selfCopy;
  if (qword_1ED4B6010 != -1)
  {
    dispatch_once(&qword_1ED4B6010, v14);
    if (selfCopy)
    {
      goto LABEL_20;
    }

LABEL_26:
    v12 = 0;
    goto LABEL_21;
  }

  if (!selfCopy)
  {
    goto LABEL_26;
  }

LABEL_20:
  v12 = selfCopy->_cachedApplicationBundleID;
LABEL_21:
  v5 = v12;

LABEL_22:
  objc_sync_exit(selfCopy);

  return v5;
}

- (BOOL)isBackgroundAssetsExtension
{
  if (byte_1EA90C538 == 1 && (byte_1EA919CC8 & 1) == 0)
  {
    v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, v2);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v7, a2, self, @"CKEntitlements.m", 472, @"This value should only be read in the daemon");
  }

  return sub_1886AF3A4(self, @"com.apple.private.cloudkit.isBackgroundAssetsExtension");
}

- (NSString)apsEnvironmentEntitlement
{
  v2 = objc_msgSend_valueForEntitlement_(self, a2, @"aps-environment");
  v5 = objc_msgSend_lowercaseString(v2, v3, v4);

  return v5;
}

- (BOOL)hasSystemLaunchDaemonEntitlement
{
  if (sub_1886AF3A4(self, @"com.apple.private.cloudkit.systemLaunchDaemonAccess"))
  {
    return 1;
  }

  v6 = objc_msgSend_systemLaunchDaemonEntitlement(self, v3, v4);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, @"dynamic");

  return isEqualToString;
}

- (NSArray)extendedShareAccessEntitlement
{
  v2 = objc_msgSend_valueForEntitlement_(self, a2, @"com.apple.developer.icloud-extended-share-access");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (CKEntitlements)initWithEntitlementsDict:(id)dict
{
  dictCopy = dict;
  v11.receiver = self;
  v11.super_class = CKEntitlements;
  v7 = [(CKEntitlements *)&v11 init];
  if (v7)
  {
    v8 = objc_msgSend_CKDeepCopy(dictCopy, v5, v6);
    entitlementsDict = v7->_entitlementsDict;
    v7->_entitlementsDict = v8;
  }

  return v7;
}

- (CKEntitlements)initWithAuditToken:(id *)token pid:(int)pid
{
  v4 = *&pid;
  v87 = *MEMORY[0x1E69E9840];
  v7 = *&token->var0[4];
  *token.val = *token->var0;
  *&token.val[4] = v7;
  v8 = SecTaskCreateWithAuditToken(0, &token);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1886AF084;
  aBlock[3] = &unk_1E70BC418;
  aBlock[4] = v8;
  v10 = _Block_copy(aBlock);
  error = 0;
  if (v8)
  {
    objc_opt_self();
    *token.val = @"com.apple.private.cloudkit.masquerade";
    *&token.val[2] = @"com.apple.private.cloudkit.setEnvironment";
    *&token.val[4] = @"com.apple.private.cloudkit.customAccounts";
    *&token.val[6] = @"com.apple.private.cloudkit.assetBoundaryKey";
    v51 = @"com.apple.private.cloudkit.protectiondata";
    v52 = @"com.apple.private.cloudkit.systemService";
    v53 = @"com.apple.private.dark-wake-push";
    v54 = @"com.apple.private.cloudkit.buddyAccess";
    v55 = @"com.apple.private.cloudkit.lightweightPCS";
    v56 = @"com.apple.private.cloudkit.oopui";
    v57 = @"com.apple.private.cloudkit.participant-pii";
    v58 = @"com.apple.developer.icloud-extended-share-access";
    v59 = @"com.apple.private.cloudkit.displaysSystemAcceptPrompt";
    v60 = @"com.apple.private.cloudkit.spi";
    v61 = @"com.apple.private.cloudkit.systemLaunchDaemonAccess";
    v62 = @"com.apple.private.cloudkit.packages";
    v63 = @"com.apple.private.vfs.open-by-id";
    v64 = @"com.apple.private.network.socket-delegate";
    v65 = @"com.apple.private.cloudkit.serviceNameForContainerMap";
    v66 = @"application-identifier";
    v67 = @"com.apple.developer.associated-application-identifier";
    v68 = @"com.apple.private.cloudkit.prefix";
    v69 = @"aps-environment";
    v70 = @"aps-connection-initiate";
    v71 = @"com.apple.developer.icloud-container-environment";
    v72 = @"com.apple.developer.icloud-container-development-container-identifiers";
    v73 = @"com.apple.developer.icloud-services";
    v74 = @"com.apple.private.cloudkit.fakeEntitlements";
    v75 = @"com.apple.private.cloudkit.zoneprotectiondata";
    v76 = @"com.apple.private.cloudkit.nonLegacySharingURL";
    v77 = @"com.apple.private.cloudkit.allowUnverifiedAccount";
    v78 = @"com.apple.private.cloudkit.notifyOnAccountWarmup";
    v79 = @"com.apple.private.cloudkit.realTimeOperations";
    v80 = @"com.apple.developer.icloud-code-destination";
    v81 = @"com.apple.developer.icloud-code-destination-by-service";
    v82 = @"com.apple.developer.icloud-code-destination-by-container-and-service";
    v83 = @"com.apple.private.cloudkit.explicitCodeOperationURL";
    v84 = @"com.apple.private.cloudkit.supportservice";
    v85 = @"com.apple.private.cloudkit.publishAssets";
    v86 = @"com.apple.private.cloudkit.onDeviceStreaming";
    v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v11, &token, 40);
    v13 = SecTaskCopyValuesForEntitlements(v8, v12, &error);

    if (error)
    {
      secEntitlementsError = self->_secEntitlementsError;
      self->_secEntitlementsError = error;

      error = 0;
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v17 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        v45 = self->_secEntitlementsError;
        token.val[0] = 138543618;
        *&token.val[1] = v8;
        LOWORD(token.val[3]) = 2114;
        *(&token.val[3] + 2) = v45;
        _os_log_error_impl(&dword_1883EA000, v17, OS_LOG_TYPE_ERROR, "Couldn't fetch client entitlements from sec task %{public}@ because we got an error from Security: %{public}@", &token, 0x16u);
      }

      selfCopy = 0;
    }

    else
    {
      v22 = objc_msgSend_mutableCopy(v13, v14, v15);
      if (objc_opt_respondsToSelector())
      {
        v24 = *&token->var0[4];
        *token.val = *token->var0;
        *&token.val[4] = v24;
        objc_msgSend_daemonInitHook_mutableEntitlements_(self, v23, &token, v22);
      }

      v25 = proc_name(v4, &token, 0x40u);
      v26 = objc_alloc(MEMORY[0x1E696AEC0]);
      p_token = "???";
      if (v25 > 0)
      {
        p_token = &token;
      }

      v29 = objc_msgSend_initWithFormat_(v26, v27, @"%s(%d)", p_token, v4);
      v31 = v29;
      if (__sTestOverridesAvailable == 1 && ((objc_msgSend_isEqualToString_(v29, v30, @"xctest") & 1) != 0 || objc_msgSend_hasPrefix_(v31, v32, @"xctest(")))
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v33 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1883EA000, v33, OS_LOG_TYPE_ERROR, "Allowing xctest access to CloudKitTesting.  Note that parts of CloudKit are non-functional in an un-entitled process.  Strongly consider moving to an entitled test host", buf, 2u);
        }

        v35 = objc_msgSend_objectForKeyedSubscript_(v22, v34, @"application-identifier");
        v36 = v35 == 0;

        if (v36)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v22, v37, @"com.apple.xctest", @"application-identifier");
        }

        v38 = objc_msgSend_objectForKeyedSubscript_(v22, v37, @"com.apple.developer.icloud-services");
        v39 = v38 == 0;

        if (v39)
        {
          v49 = @"CloudKit";
          v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v30, &v49, 1);
          objc_msgSend_setObject_forKeyedSubscript_(v22, v41, v40, @"com.apple.developer.icloud-services");
        }
      }

      v42 = objc_msgSend_initWithEntitlementsDict_(self, v30, v22);
      v43 = v42;
      if (v42)
      {
        *(v42 + 8) = v4;
        objc_storeStrong((v42 + 40), v31);
      }

      self = v43;

      selfCopy = self;
    }
  }

  else
  {
    v19 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v9, @"CKErrorDomain", 1, @"Can't fetch client entitlements from a NULL secTask for pid %d", v4);
    v20 = self->_secEntitlementsError;
    self->_secEntitlementsError = v19;

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v21 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      token.val[0] = 67109120;
      token.val[1] = v4;
      _os_log_error_impl(&dword_1883EA000, v21, OS_LOG_TYPE_ERROR, "Can't fetch client entitlements from a NULL secTask for pid %d", &token, 8u);
    }

    selfCopy = 0;
  }

  v10[2](v10);

  return selfCopy;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_stringWithFormat_(v3, v6, @"%@<%p>: entitlements = %@, error = %@", v5, self, self->_entitlementsDict, self->_secEntitlementsError);

  return v7;
}

- (id)entitlementsByAddingOverlay:(id)overlay
{
  v39 = *MEMORY[0x1E69E9840];
  overlayCopy = overlay;
  if (self)
  {
    Property = objc_getProperty(self, v4, 24, 1);
    v10 = objc_msgSend_mutableCopy(Property, v8, v9);
  }

  else
  {
    v10 = objc_msgSend_mutableCopy(0, v4, v5);
  }

  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_opt_new();
  }

  v13 = v12;

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = overlayCopy;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v34, v38, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v35;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v35 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = *(*(&v34 + 1) + 8 * i);
        v22 = objc_msgSend_objectForKeyedSubscript_(v14, v17, v21, v34);
        v25 = objc_msgSend_null(MEMORY[0x1E695DFB0], v23, v24);

        if (v22 == v25)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v13, v26, 0, v21);
        }

        else
        {
          objc_msgSend_setObject_forKeyedSubscript_(v13, v26, v22, v21);
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v34, v38, 16);
    }

    while (v18);
  }

  v27 = objc_alloc(objc_opt_class());
  v29 = objc_msgSend_initWithEntitlementsDict_(v27, v28, v13);
  v30 = v29;
  if (self)
  {
    pid = self->_pid;
    if (!v29)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  pid = 0;
  if (v29)
  {
LABEL_18:
    *(v29 + 8) = pid;
  }

LABEL_19:
  if (self)
  {
    sub_1886AF328(v29, self->_procName);
    secEntitlementsError = self->_secEntitlementsError;
    if (!v30)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  sub_1886AF328(v29, 0);
  secEntitlementsError = 0;
  if (v30)
  {
LABEL_21:
    objc_storeStrong(v30 + 4, secEntitlementsError);
  }

LABEL_22:

  return v30;
}

- (id)valueForEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  if (self)
  {
    Property = objc_getProperty(self, v4, 24, 1);
    objc_msgSend_objectForKeyedSubscript_(Property, v7, entitlementCopy);
  }

  else
  {
    objc_msgSend_objectForKeyedSubscript_(0, v4, entitlementCopy);
  }
  v8 = ;

  return v8;
}

- (NSString)systemLaunchDaemonEntitlement
{
  v2 = objc_msgSend_valueForEntitlement_(self, a2, @"com.apple.private.cloudkit.systemLaunchDaemonAccess");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)hasInProcessShareOwnerParticipantInfoEntitlement
{
  v3 = objc_msgSend_extendedShareAccessEntitlement(self, a2, v2);
  v5 = objc_msgSend_containsObject_(v3, v4, @"InProcessShareOwnerParticipantInfo");

  return v5;
}

- (BOOL)hasInProcessOneTimeLinksEntitlement
{
  v3 = objc_msgSend_extendedShareAccessEntitlement(self, a2, v2);
  v5 = objc_msgSend_containsObject_(v3, v4, @"InProcessOneTimeLinks");

  return v5;
}

- (BOOL)hasInProcessShareAccessRequestsEntitlement
{
  v3 = objc_msgSend_extendedShareAccessEntitlement(self, a2, v2);
  v5 = objc_msgSend_containsObject_(v3, v4, @"InProcessShareAccessRequests");

  return v5;
}

- (BOOL)hasSPIEntitlement
{
  v2 = objc_msgSend_valueForEntitlement_(self, a2, @"com.apple.private.cloudkit.spi");
  v3 = v2 != 0;

  return v3;
}

- (unint64_t)hash
{
  v3 = sub_1883F4174(self, a2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  v9 = objc_msgSend_applicationBundleID(self, v7, v8);
  v12 = objc_msgSend_hash(v9, v10, v11);

  return v12 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v19) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v7 = sub_1883F4174(v5, v6);
      v9 = sub_1883F4174(self, v8);
      v11 = v9;
      if (v7 == v9)
      {
      }

      else
      {
        v12 = sub_1883F4174(v5, v10);
        v14 = sub_1883F4174(self, v13);
        isEqual = objc_msgSend_isEqual_(v12, v15, v14);

        if (!isEqual)
        {
          goto LABEL_79;
        }
      }

      v20 = objc_msgSend_applicationBundleID(v5, v17, v18);
      v23 = objc_msgSend_applicationBundleID(self, v21, v22);
      v26 = v23;
      if (v20 == v23)
      {
      }

      else
      {
        v27 = objc_msgSend_applicationBundleID(v5, v24, v25);
        v30 = objc_msgSend_applicationBundleID(self, v28, v29);
        v32 = objc_msgSend_isEqual_(v27, v31, v30);

        if (!v32)
        {
          goto LABEL_79;
        }
      }

      v35 = objc_msgSend_associatedApplicationBundleID(v5, v33, v34);
      v38 = objc_msgSend_associatedApplicationBundleID(self, v36, v37);
      v41 = v38;
      if (v35 == v38)
      {
      }

      else
      {
        v42 = objc_msgSend_associatedApplicationBundleID(v5, v39, v40);
        v45 = objc_msgSend_associatedApplicationBundleID(self, v43, v44);
        v47 = objc_msgSend_isEqual_(v42, v46, v45);

        if (!v47)
        {
          goto LABEL_79;
        }
      }

      v50 = objc_msgSend_apsEnvironmentEntitlement(v5, v48, v49);
      v53 = objc_msgSend_apsEnvironmentEntitlement(self, v51, v52);
      v56 = v53;
      if (v50 == v53)
      {
      }

      else
      {
        v57 = objc_msgSend_apsEnvironmentEntitlement(v5, v54, v55);
        v60 = objc_msgSend_apsEnvironmentEntitlement(self, v58, v59);
        v62 = objc_msgSend_isEqual_(v57, v61, v60);

        if (!v62)
        {
          goto LABEL_79;
        }
      }

      v64 = sub_188401184(v5, v63);
      if (v64 != sub_188401184(self, v65))
      {
        goto LABEL_79;
      }

      hasMasqueradingEntitlement = objc_msgSend_hasMasqueradingEntitlement(v5, v66, v67);
      if (hasMasqueradingEntitlement != objc_msgSend_hasMasqueradingEntitlement(self, v69, v70))
      {
        goto LABEL_79;
      }

      hasProtectionDataEntitlement = objc_msgSend_hasProtectionDataEntitlement(v5, v71, v72);
      if (hasProtectionDataEntitlement != objc_msgSend_hasProtectionDataEntitlement(self, v74, v75))
      {
        goto LABEL_79;
      }

      hasZoneProtectionDataEntitlement = objc_msgSend_hasZoneProtectionDataEntitlement(v5, v76, v77);
      if (hasZoneProtectionDataEntitlement != objc_msgSend_hasZoneProtectionDataEntitlement(self, v79, v80))
      {
        goto LABEL_79;
      }

      hasCloudKitSystemServiceEntitlement = objc_msgSend_hasCloudKitSystemServiceEntitlement(v5, v81, v82);
      if (hasCloudKitSystemServiceEntitlement != objc_msgSend_hasCloudKitSystemServiceEntitlement(self, v84, v85))
      {
        goto LABEL_79;
      }

      hasSystemLaunchDaemonEntitlement = objc_msgSend_hasSystemLaunchDaemonEntitlement(v5, v86, v87);
      if (hasSystemLaunchDaemonEntitlement != objc_msgSend_hasSystemLaunchDaemonEntitlement(self, v89, v90))
      {
        goto LABEL_79;
      }

      hasDarkWakeNetworkReachabilityEnabledEntitlement = objc_msgSend_hasDarkWakeNetworkReachabilityEnabledEntitlement(v5, v91, v92);
      if (hasDarkWakeNetworkReachabilityEnabledEntitlement != objc_msgSend_hasDarkWakeNetworkReachabilityEnabledEntitlement(self, v94, v95))
      {
        goto LABEL_79;
      }

      hasAllowAccessDuringBuddyEntitlement = objc_msgSend_hasAllowAccessDuringBuddyEntitlement(v5, v96, v97);
      if (hasAllowAccessDuringBuddyEntitlement != objc_msgSend_hasAllowAccessDuringBuddyEntitlement(self, v99, v100))
      {
        goto LABEL_79;
      }

      hasLightweightPCSEntitlement = objc_msgSend_hasLightweightPCSEntitlement(v5, v101, v102);
      if (hasLightweightPCSEntitlement != objc_msgSend_hasLightweightPCSEntitlement(self, v104, v105))
      {
        goto LABEL_79;
      }

      hasOutOfProcessUIEntitlement = objc_msgSend_hasOutOfProcessUIEntitlement(v5, v106, v107);
      if (hasOutOfProcessUIEntitlement != objc_msgSend_hasOutOfProcessUIEntitlement(self, v109, v110))
      {
        goto LABEL_79;
      }

      hasParticipantPIIEntitlement = objc_msgSend_hasParticipantPIIEntitlement(v5, v111, v112);
      if (hasParticipantPIIEntitlement != objc_msgSend_hasParticipantPIIEntitlement(self, v114, v115))
      {
        goto LABEL_79;
      }

      hasDisplaysSystemAcceptPromptEntitlement = objc_msgSend_hasDisplaysSystemAcceptPromptEntitlement(v5, v116, v117);
      if (hasDisplaysSystemAcceptPromptEntitlement != objc_msgSend_hasDisplaysSystemAcceptPromptEntitlement(self, v119, v120))
      {
        goto LABEL_79;
      }

      v123 = objc_msgSend_serviceNameForContainerIdentifierMapEntitlement(v5, v121, v122);
      v126 = objc_msgSend_serviceNameForContainerIdentifierMapEntitlement(self, v124, v125);
      v129 = v126;
      if (v123 == v126)
      {
      }

      else
      {
        v130 = objc_msgSend_serviceNameForContainerIdentifierMapEntitlement(v5, v127, v128);
        v133 = objc_msgSend_serviceNameForContainerIdentifierMapEntitlement(self, v131, v132);
        v135 = objc_msgSend_isEqual_(v130, v134, v133);

        if (!v135)
        {
          goto LABEL_79;
        }
      }

      hasNonLegacyShareURLEntitlement = objc_msgSend_hasNonLegacyShareURLEntitlement(v5, v136, v137);
      if (hasNonLegacyShareURLEntitlement != objc_msgSend_hasNonLegacyShareURLEntitlement(self, v139, v140))
      {
        goto LABEL_79;
      }

      hasAllowUnverifiedAccountEntitlement = objc_msgSend_hasAllowUnverifiedAccountEntitlement(v5, v141, v142);
      if (hasAllowUnverifiedAccountEntitlement != objc_msgSend_hasAllowUnverifiedAccountEntitlement(self, v144, v145))
      {
        goto LABEL_79;
      }

      hasNotifyOnAccountWarmupEntitlement = objc_msgSend_hasNotifyOnAccountWarmupEntitlement(v5, v146, v147);
      if (hasNotifyOnAccountWarmupEntitlement != objc_msgSend_hasNotifyOnAccountWarmupEntitlement(self, v149, v150))
      {
        goto LABEL_79;
      }

      hasAllowRealTimeOperationsEntitlement = objc_msgSend_hasAllowRealTimeOperationsEntitlement(v5, v151, v152);
      if (hasAllowRealTimeOperationsEntitlement != objc_msgSend_hasAllowRealTimeOperationsEntitlement(self, v154, v155))
      {
        goto LABEL_79;
      }

      hasExplicitCodeOperationURLEntitlement = objc_msgSend_hasExplicitCodeOperationURLEntitlement(v5, v156, v157);
      if (hasExplicitCodeOperationURLEntitlement != objc_msgSend_hasExplicitCodeOperationURLEntitlement(self, v159, v160))
      {
        goto LABEL_79;
      }

      v163 = objc_msgSend_codeServiceURLEntitlement(v5, v161, v162);
      v166 = objc_msgSend_codeServiceURLEntitlement(self, v164, v165);
      v169 = v166;
      if (v163 == v166)
      {
      }

      else
      {
        v170 = objc_msgSend_codeServiceURLEntitlement(v5, v167, v168);
        v173 = objc_msgSend_codeServiceURLEntitlement(self, v171, v172);
        v175 = objc_msgSend_isEqual_(v170, v174, v173);

        if (!v175)
        {
          goto LABEL_79;
        }
      }

      v178 = objc_msgSend_codeServiceURLByServiceEntitlement(v5, v176, v177);
      v181 = objc_msgSend_codeServiceURLByServiceEntitlement(self, v179, v180);
      v184 = v181;
      if (v178 == v181)
      {
      }

      else
      {
        v185 = objc_msgSend_codeServiceURLByServiceEntitlement(v5, v182, v183);
        v188 = objc_msgSend_codeServiceURLByServiceEntitlement(self, v186, v187);
        v190 = objc_msgSend_isEqual_(v185, v189, v188);

        if (!v190)
        {
          goto LABEL_79;
        }
      }

      v193 = objc_msgSend_codeServiceURLByContainerAndServiceEntitlement(v5, v191, v192);
      v196 = objc_msgSend_codeServiceURLByContainerAndServiceEntitlement(self, v194, v195);
      v199 = v196;
      if (v193 == v196)
      {
      }

      else
      {
        v200 = objc_msgSend_codeServiceURLByContainerAndServiceEntitlement(v5, v197, v198);
        v203 = objc_msgSend_codeServiceURLByContainerAndServiceEntitlement(self, v201, v202);
        v205 = objc_msgSend_isEqual_(v200, v204, v203);

        if (!v205)
        {
          goto LABEL_79;
        }
      }

      hasVFSOpenByIDEntitlement = objc_msgSend_hasVFSOpenByIDEntitlement(v5, v206, v207);
      if (hasVFSOpenByIDEntitlement != objc_msgSend_hasVFSOpenByIDEntitlement(self, v209, v210))
      {
        goto LABEL_79;
      }

      hasNetworkSocketDelegateEntitlement = objc_msgSend_hasNetworkSocketDelegateEntitlement(v5, v211, v212);
      if (hasNetworkSocketDelegateEntitlement != objc_msgSend_hasNetworkSocketDelegateEntitlement(self, v214, v215))
      {
        goto LABEL_79;
      }

      hasAllowPackagesEntitlement = objc_msgSend_hasAllowPackagesEntitlement(v5, v216, v217);
      if (hasAllowPackagesEntitlement != objc_msgSend_hasAllowPackagesEntitlement(self, v219, v220))
      {
        goto LABEL_79;
      }

      hasEnvironmentEntitlement = objc_msgSend_hasEnvironmentEntitlement(v5, v221, v222);
      if (hasEnvironmentEntitlement != objc_msgSend_hasEnvironmentEntitlement(self, v224, v225))
      {
        goto LABEL_79;
      }

      hasCustomAccountsEntitlement = objc_msgSend_hasCustomAccountsEntitlement(v5, v226, v227);
      if (hasCustomAccountsEntitlement != objc_msgSend_hasCustomAccountsEntitlement(self, v229, v230))
      {
        goto LABEL_79;
      }

      v233 = objc_msgSend_clientPrefixEntitlement(v5, v231, v232);
      v236 = objc_msgSend_clientPrefixEntitlement(self, v234, v235);
      v239 = v236;
      if (v233 == v236)
      {
      }

      else
      {
        v240 = objc_msgSend_clientPrefixEntitlement(v5, v237, v238);
        v243 = objc_msgSend_clientPrefixEntitlement(self, v241, v242);
        v245 = objc_msgSend_isEqual_(v240, v244, v243);

        if (!v245)
        {
          goto LABEL_79;
        }
      }

      hasAssetBoundaryKeyEntitlement = objc_msgSend_hasAssetBoundaryKeyEntitlement(v5, v246, v247);
      if (hasAssetBoundaryKeyEntitlement != objc_msgSend_hasAssetBoundaryKeyEntitlement(self, v249, v250))
      {
        goto LABEL_79;
      }

      hasAllowFakeEntitlementsEntitlement = objc_msgSend_hasAllowFakeEntitlementsEntitlement(v5, v251, v252);
      if (hasAllowFakeEntitlementsEntitlement != objc_msgSend_hasAllowFakeEntitlementsEntitlement(self, v254, v255))
      {
        goto LABEL_79;
      }

      v258 = objc_msgSend_containerEnvironment(v5, v256, v257);
      if (v258 != objc_msgSend_containerEnvironment(self, v259, v260))
      {
        goto LABEL_79;
      }

      v263 = objc_msgSend_developmentContainerEnvironmentOverrides(v5, v261, v262);
      v266 = objc_msgSend_developmentContainerEnvironmentOverrides(self, v264, v265);
      v269 = v266;
      if (v263 == v266)
      {
      }

      else
      {
        v270 = objc_msgSend_developmentContainerEnvironmentOverrides(v5, v267, v268);
        v273 = objc_msgSend_developmentContainerEnvironmentOverrides(self, v271, v272);
        v275 = objc_msgSend_isEqual_(v270, v274, v273);

        if (!v275)
        {
          goto LABEL_79;
        }
      }

      v278 = objc_msgSend_extendedShareAccessEntitlement(v5, v276, v277);
      v281 = objc_msgSend_extendedShareAccessEntitlement(self, v279, v280);
      v284 = v281;
      if (v278 == v281)
      {
      }

      else
      {
        v285 = objc_msgSend_extendedShareAccessEntitlement(v5, v282, v283);
        v288 = objc_msgSend_extendedShareAccessEntitlement(self, v286, v287);
        v290 = objc_msgSend_isEqual_(v285, v289, v288);

        if (!v290)
        {
          goto LABEL_79;
        }
      }

      v293 = objc_msgSend_cloudServices(v5, v291, v292);
      v296 = objc_msgSend_cloudServices(self, v294, v295);
      v299 = v296;
      if (v293 == v296)
      {
      }

      else
      {
        v300 = objc_msgSend_cloudServices(v5, v297, v298);
        v303 = objc_msgSend_cloudServices(self, v301, v302);
        v305 = objc_msgSend_isEqual_(v300, v304, v303);

        if (!v305)
        {
          goto LABEL_79;
        }
      }

      hasAlwaysAllowPublishAssetsEntitlement = objc_msgSend_hasAlwaysAllowPublishAssetsEntitlement(v5, v306, v307);
      if (hasAlwaysAllowPublishAssetsEntitlement == objc_msgSend_hasAlwaysAllowPublishAssetsEntitlement(self, v309, v310))
      {
        hasAllowOnDeviceAssetStreamingEntitlement = objc_msgSend_hasAllowOnDeviceAssetStreamingEntitlement(v5, v311, v312);
        v19 = hasAllowOnDeviceAssetStreamingEntitlement ^ objc_msgSend_hasAllowOnDeviceAssetStreamingEntitlement(self, v315, v316) ^ 1;
        goto LABEL_80;
      }

LABEL_79:
      LOBYTE(v19) = 0;
LABEL_80:

      goto LABEL_81;
    }

    LOBYTE(v19) = 0;
  }

LABEL_81:

  return v19;
}

- (id)sqliteRepresentation
{
  v15 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
  }

  v3 = objc_msgSend_mutableCopy(self, a2, v2);
  v12 = 0;
  v5 = objc_msgSend_dataWithJSONObject_options_error_(MEMORY[0x1E696ACB0], v4, v3, 0, &v12);
  v6 = v12;
  if (v6)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v6;
      _os_log_error_impl(&dword_1883EA000, v7, OS_LOG_TYPE_ERROR, "Error converting CKEntitlements to JSON: %{public}@", buf, 0xCu);
    }
  }

  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = objc_msgSend_initWithData_encoding_(v8, v9, v5, 4);

  return v10;
}

- (CKEntitlements)initWithSqliteRepresentation:(id)representation
{
  v19 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  if (objc_msgSend_length(representationCopy, v5, v6))
  {
    v8 = objc_msgSend_dataUsingEncoding_(representationCopy, v7, 4);
    v16 = 0;
    v10 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v9, v8, 0, &v16);
    v12 = v16;
    if (v12 || !v10)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v14 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v18 = v12;
        _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "Error converting JSON data to CKEntitlements: %{public}@", buf, 0xCu);
      }

      selfCopy = 0;
    }

    else
    {
      self = objc_msgSend_initWithEntitlementsDict_(self, v11, v10);
      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)validateEntitlementsWithSDKVersion:(unsigned int)version error:(id *)error
{
  v223[26] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
  }

  selfCopy2 = self;
  newValue = objc_msgSend_mutableCopy(selfCopy2, v6, v7);

  v223[0] = @"com.apple.private.cloudkit.masquerade";
  v223[1] = @"com.apple.private.cloudkit.setEnvironment";
  v223[2] = @"com.apple.private.cloudkit.customAccounts";
  v223[3] = @"com.apple.private.cloudkit.assetBoundaryKey";
  v223[4] = @"com.apple.private.cloudkit.protectiondata";
  v223[5] = @"com.apple.private.cloudkit.systemService";
  v223[6] = @"com.apple.private.dark-wake-push";
  v223[7] = @"com.apple.private.cloudkit.buddyAccess";
  v223[8] = @"com.apple.private.cloudkit.lightweightPCS";
  v223[9] = @"com.apple.private.cloudkit.oopui";
  v223[10] = @"com.apple.private.cloudkit.participant-pii";
  v223[11] = @"com.apple.private.cloudkit.displaysSystemAcceptPrompt";
  v223[12] = @"com.apple.private.cloudkit.systemLaunchDaemonAccess";
  v223[13] = @"com.apple.private.cloudkit.packages";
  v223[14] = @"com.apple.private.vfs.open-by-id";
  v223[15] = @"com.apple.private.network.socket-delegate";
  v223[16] = @"com.apple.private.cloudkit.fakeEntitlements";
  v223[17] = @"com.apple.private.cloudkit.zoneprotectiondata";
  v223[18] = @"com.apple.private.cloudkit.nonLegacySharingURL";
  v223[19] = @"com.apple.private.cloudkit.allowUnverifiedAccount";
  v223[20] = @"com.apple.private.cloudkit.notifyOnAccountWarmup";
  v223[21] = @"com.apple.private.cloudkit.explicitCodeOperationURL";
  v223[22] = @"com.apple.private.cloudkit.realTimeOperations";
  v223[23] = @"com.apple.private.cloudkit.supportservice";
  v223[24] = @"com.apple.private.cloudkit.publishAssets";
  v223[25] = @"com.apple.private.cloudkit.onDeviceStreaming";
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v223, 26);
  v222[0] = @"application-identifier";
  v222[1] = @"com.apple.private.cloudkit.prefix";
  v222[2] = @"aps-environment";
  v222[3] = @"com.apple.developer.icloud-code-destination";
  v157 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v10, v222, 4);
  v221[0] = @"com.apple.developer.icloud-container-development-container-identifiers";
  v221[1] = @"com.apple.developer.icloud-services";
  v221[2] = @"com.apple.developer.icloud-extended-share-access";
  v156 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v11, v221, 3);
  v220[0] = @"com.apple.private.cloudkit.serviceNameForContainerMap";
  v220[1] = @"com.apple.developer.icloud-code-destination-by-service";
  v155 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v12, v220, 2);
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  v202 = 0u;
  v13 = v9;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v199, v219, 16);
  v163 = HIWORD(version);
  v165 = v13;
  if (v15)
  {
    v17 = v15;
    v18 = *v200;
    do
    {
      v19 = 0;
      do
      {
        if (*v200 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v199 + 1) + 8 * v19);
        objc_msgSend_addObject_(0, v16, v20);
        v22 = objc_msgSend_valueForEntitlement_(selfCopy, v21, v20);
        if (v22 && (objc_opt_respondsToSelector() & 1) == 0)
        {
          v23 = ck_log_initialization_block;
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, v23);
          }

          v24 = ck_log_facility_ck;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v204 = v22;
            v205 = 2114;
            v206 = v20;
            _os_log_error_impl(&dword_1883EA000, v24, OS_LOG_TYPE_ERROR, "This application has a malformed value %{public}@ for entitlement %{public}@, expected something that supports -BOOLValue", buf, 0x16u);
          }

          if (v163 > 0xE)
          {
            v13 = v165;
            if (error)
            {
              objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v25, @"CKErrorDomain", 8, @"Application has malformed entitlements.  Found value %@ for entitlement %@, expected something that supports -BOOLValue", v22, v20);
              *error = v97 = 0;
            }

            else
            {
              v97 = 0;
            }

            v38 = v165;
            goto LABEL_166;
          }

          objc_msgSend_setObject_forKeyedSubscript_(newValue, v25, 0, v20);
          v13 = v165;
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v199, v219, 16);
    }

    while (v17);
  }

  v197 = 0u;
  v198 = 0u;
  v195 = 0u;
  v196 = 0u;
  v26 = v157;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v195, v218, 16);
  if (v28)
  {
    v30 = v28;
    v31 = *v196;
    do
    {
      v32 = 0;
      do
      {
        if (*v196 != v31)
        {
          objc_enumerationMutation(v26);
        }

        v33 = *(*(&v195 + 1) + 8 * v32);
        objc_msgSend_addObject_(0, v29, v33);
        v22 = objc_msgSend_valueForEntitlement_(selfCopy, v34, v33);
        if (v22)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v35 = ck_log_initialization_block;
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, v35);
            }

            v36 = ck_log_facility_ck;
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v204 = v22;
              v205 = 2114;
              v206 = v33;
              _os_log_error_impl(&dword_1883EA000, v36, OS_LOG_TYPE_ERROR, "This application has a malformed value %{public}@ for entitlement %{public}@, expected a string", buf, 0x16u);
            }

            if (v163 > 0xE)
            {
              v13 = v165;
              if (error)
              {
                objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v37, @"CKErrorDomain", 8, @"Application has malformed entitlements.  Found value %@ for entitlement %@, expected a string", v22, v33);
                *error = v97 = 0;
              }

              else
              {
                v97 = 0;
              }

              v38 = v26;
              goto LABEL_166;
            }

            objc_msgSend_setObject_forKeyedSubscript_(newValue, v37, 0, v33);
            v13 = v165;
          }
        }

        ++v32;
      }

      while (v30 != v32);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v195, v218, 16);
    }

    while (v30);
  }

  v193 = 0u;
  v194 = 0u;
  v191 = 0u;
  v192 = 0u;
  v38 = v156;
  v40 = selfCopy;
  v160 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v191, v217, 16);
  if (v160)
  {
    v42 = *v192;
    v149 = *v192;
    v152 = v38;
    do
    {
      v43 = 0;
      do
      {
        if (*v192 != v42)
        {
          objc_enumerationMutation(v38);
        }

        v44 = *(*(&v191 + 1) + 8 * v43);
        objc_msgSend_addObject_(0, v41, v44);
        v22 = objc_msgSend_valueForEntitlement_(v40, v45, v44);
        if (v22)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_48;
          }

          v189 = 0u;
          v190 = 0u;
          v187 = 0u;
          v188 = 0u;
          v46 = v22;
          v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, &v187, v216, 16);
          if (!v48)
          {

            v13 = v165;
            goto LABEL_56;
          }

          v49 = v48;
          v50 = *v188;
          v51 = 1;
          do
          {
            for (i = 0; i != v49; ++i)
            {
              if (*v188 != v50)
              {
                objc_enumerationMutation(v46);
              }

              objc_opt_class();
              v51 &= objc_opt_isKindOfClass();
            }

            v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v53, &v187, v216, 16);
          }

          while (v49);

          v13 = v165;
          v40 = selfCopy;
          v42 = v149;
          v38 = v152;
          if ((v51 & 1) == 0)
          {
LABEL_48:
            v54 = ck_log_initialization_block;
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, v54);
            }

            v55 = ck_log_facility_ck;
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v204 = v22;
              v205 = 2114;
              v206 = v44;
              _os_log_error_impl(&dword_1883EA000, v55, OS_LOG_TYPE_ERROR, "This application has a malformed value %{public}@ for entitlement %{public}@, expected an array of strings", buf, 0x16u);
            }

            if (v163 > 0xE || (objc_msgSend_isEqualToString_(v44, v56, @"com.apple.developer.icloud-services") & 1) != 0)
            {
              errorCopy4 = error;
              if (error)
              {
                v144 = v22;
                v146 = v44;
                v99 = @"Application has malformed entitlements.  Found value %@ for entitlement %@, expected an array of strings";
                goto LABEL_115;
              }

              goto LABEL_165;
            }

            objc_msgSend_setObject_forKeyedSubscript_(newValue, v56, 0, v44);
          }
        }

LABEL_56:

        ++v43;
      }

      while (v43 != v160);
      v160 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v41, &v191, v217, 16);
    }

    while (v160);
  }

  v185 = 0u;
  v186 = 0u;
  v183 = 0u;
  v184 = 0u;
  v38 = v155;
  v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v57, &v183, v215, 16);
  if (!v58)
  {
LABEL_85:

    v38 = @"com.apple.developer.associated-application-identifier";
    v22 = objc_msgSend_valueForEntitlement_(v40, v82, v38);
    objc_msgSend_addObject_(0, v83, v38);
    if (v22)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_96:
          v92 = ck_log_initialization_block;
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, v92);
          }

          v93 = ck_log_facility_ck;
          if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v204 = v22;
            v205 = 2114;
            v206 = v38;
            _os_log_error_impl(&dword_1883EA000, v93, OS_LOG_TYPE_ERROR, "This application has a malformed value %{public}@ for entitlement %{public}@, expected a string", buf, 0x16u);
          }

          if (v163 > 0xE)
          {
            if (error)
            {
              v145 = v38;
              v95 = v38;
              errorCopy3 = error;
              objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v94, @"CKErrorDomain", 8, @"Application has malformed entitlements.  Found value %@ for entitlement %@, expected a string", v22, v145);
LABEL_164:
              *errorCopy3 = v97 = 0;
LABEL_177:
              v38 = v95;
              goto LABEL_166;
            }

            goto LABEL_165;
          }

          objc_msgSend_setObject_forKeyedSubscript_(newValue, v94, 0, v38);
          goto LABEL_118;
        }

        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        v84 = v22;
        v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v85, &v175, v213, 16);
        if (v86)
        {
          v87 = v86;
          v88 = *v176;
          v89 = 1;
          do
          {
            for (j = 0; j != v87; ++j)
            {
              if (*v176 != v88)
              {
                objc_enumerationMutation(v84);
              }

              objc_opt_class();
              v89 &= objc_opt_isKindOfClass();
            }

            v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v91, &v175, v213, 16);
          }

          while (v87);

          v13 = v165;
          if ((v89 & 1) == 0)
          {
            goto LABEL_96;
          }
        }

        else
        {
        }
      }
    }

LABEL_118:
    v95 = @"com.apple.developer.icloud-code-destination-by-container-and-service";

    v102 = objc_msgSend_valueForEntitlement_(v40, v101, v95);

    objc_msgSend_addObject_(0, v103, v95);
    if (v102)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_144;
      }

      v171 = 0u;
      v172 = 0u;
      v173 = 0u;
      v174 = 0u;
      v104 = v102;
      v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(v104, v105, &v171, v212, 16);
      if (!v106)
      {

        goto LABEL_153;
      }

      v107 = v106;
      v151 = v95;
      v108 = *v172;
      v109 = 1;
      v159 = v104;
      v153 = *v172;
      do
      {
        v110 = 0;
        v162 = v107;
        do
        {
          if (*v172 != v108)
          {
            objc_enumerationMutation(v104);
          }

          v111 = *(*(&v171 + 1) + 8 * v110);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v113 = objc_msgSend_objectForKeyedSubscript_(v104, v112, v111);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v114 = v113;
              v167 = 0u;
              v168 = 0u;
              v169 = 0u;
              v170 = 0u;
              v115 = v114;
              v117 = objc_msgSend_countByEnumeratingWithState_objects_count_(v115, v116, &v167, v211, 16);
              if (v117)
              {
                v118 = v117;
                v119 = *v168;
                do
                {
                  for (k = 0; k != v118; ++k)
                  {
                    if (*v168 != v119)
                    {
                      objc_enumerationMutation(v115);
                    }

                    v121 = *(*(&v167 + 1) + 8 * k);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v123 = objc_msgSend_objectForKeyedSubscript_(v115, v122, v121);
                      objc_opt_class();
                      isKindOfClass = objc_opt_isKindOfClass();

                      if (isKindOfClass)
                      {
                        continue;
                      }
                    }

                    v109 = 0;
                  }

                  v118 = objc_msgSend_countByEnumeratingWithState_objects_count_(v115, v122, &v167, v211, 16);
                }

                while (v118);
              }

              v13 = v165;
              v104 = v159;
              v107 = v162;
              v108 = v153;
            }

            else
            {
              v109 = 0;
            }
          }

          else
          {
            v109 = 0;
          }

          ++v110;
        }

        while (v110 != v107);
        v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(v104, v112, &v171, v212, 16);
      }

      while (v107);

      v95 = v151;
      if ((v109 & 1) == 0)
      {
LABEL_144:
        v125 = ck_log_initialization_block;
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, v125);
        }

        v126 = ck_log_facility_ck;
        if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v204 = v102;
          v205 = 2114;
          v206 = v95;
          _os_log_error_impl(&dword_1883EA000, v126, OS_LOG_TYPE_ERROR, "This application has a malformed value %{public}@ for entitlement %{public}@, expected a type of [ string : [ string : string ] ]", buf, 0x16u);
        }

        if (v163 > 0xE)
        {
          if (error)
          {
            objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v127, @"CKErrorDomain", 8, @"Application has malformed entitlements.  Found value %@ for entitlement %@, expected a type of [ string : [ string : string ] ]", v102, v95);
            *error = v97 = 0;
          }

          else
          {
            v97 = 0;
          }

          v22 = v102;
          goto LABEL_177;
        }

        objc_msgSend_setObject_forKeyedSubscript_(newValue, v127, 0, v95);
      }
    }

LABEL_153:
    v38 = @"com.apple.developer.icloud-container-environment";

    v22 = objc_msgSend_valueForEntitlement_(selfCopy, v128, v38);

    objc_msgSend_addObject_(0, v129, v38);
    if (v22)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_compare_options_(v22, v131, @"production", 1) && objc_msgSend_compare_options_(v22, v130, @"development", 1))
      {
        v132 = ck_log_initialization_block;
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, v132);
        }

        v133 = ck_log_facility_ck;
        if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
        {
          *buf = 138544130;
          v204 = v22;
          v205 = 2114;
          v206 = v38;
          v207 = 2114;
          v208 = @"production";
          v209 = 2114;
          v210 = @"development";
          _os_log_error_impl(&dword_1883EA000, v133, OS_LOG_TYPE_ERROR, "This application has a malformed value %{public}@ for entitlement %{public}@, expected %{public}@ or %{public}@", buf, 0x2Au);
        }

        if (v163 > 0xE)
        {
          if (error)
          {
            v147 = v38;
            v95 = v38;
            errorCopy3 = error;
            objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v134, @"CKErrorDomain", 8, @"Application has malformed entitlements.  Found value %@ for entitlement %@, expected %@ or %@", v22, v147, @"production", @"development");
            goto LABEL_164;
          }

LABEL_165:
          v97 = 0;
          goto LABEL_166;
        }

        objc_msgSend_setObject_forKeyedSubscript_(newValue, v134, 0, v38);
      }
    }

    objc_msgSend_addObject_(0, v130, @"com.apple.private.cloudkit.spi");
    objc_msgSend_addObject_(0, v136, @"aps-connection-initiate");
    if (v163 <= 0xE)
    {
      v138 = v38;
      if (selfCopy)
      {
        Property = objc_getProperty(selfCopy, v137, 24, 1);
      }

      else
      {
        Property = 0;
      }

      v140 = Property;
      isEqual = objc_msgSend_isEqual_(v140, v141, newValue);

      v97 = 1;
      v38 = v138;
      if (selfCopy && (isEqual & 1) == 0)
      {
        objc_setProperty_atomic_copy(selfCopy, v143, newValue, 24);
      }
    }

    else
    {
      v97 = 1;
    }

    goto LABEL_166;
  }

  v60 = v58;
  v61 = *v184;
  v152 = v38;
  v148 = *v184;
LABEL_60:
  v62 = 0;
  v150 = v60;
  while (1)
  {
    if (*v184 != v61)
    {
      objc_enumerationMutation(v38);
    }

    v63 = *(*(&v183 + 1) + 8 * v62);
    objc_msgSend_addObject_(0, v59, v63);
    v161 = v63;
    v22 = objc_msgSend_valueForEntitlement_(v40, v64, v63);
    if (!v22)
    {
      goto LABEL_83;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v158 = v62;
      v65 = v22;
      v179 = 0u;
      v180 = 0u;
      v181 = 0u;
      v182 = 0u;
      v68 = objc_msgSend_allKeys(v65, v66, v67);
      v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v69, &v179, v214, 16);
      if (!v70)
      {

        v13 = v165;
        v62 = v158;
        goto LABEL_83;
      }

      v71 = v70;
      v72 = *v180;
      v73 = 1;
      do
      {
        for (m = 0; m != v71; ++m)
        {
          if (*v180 != v72)
          {
            objc_enumerationMutation(v68);
          }

          v75 = *(*(&v179 + 1) + 8 * m);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v77 = objc_msgSend_objectForKeyedSubscript_(v65, v76, v75);
            objc_opt_class();
            v78 = objc_opt_isKindOfClass();

            if (v78)
            {
              continue;
            }
          }

          v73 = 0;
        }

        v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v76, &v179, v214, 16);
      }

      while (v71);

      v13 = v165;
      v40 = selfCopy;
      v60 = v150;
      v38 = v152;
      v61 = v148;
      v62 = v158;
      if (v73)
      {
        goto LABEL_83;
      }
    }

    v79 = v62;
    v80 = ck_log_initialization_block;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, v80);
    }

    v81 = ck_log_facility_ck;
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v204 = v22;
      v205 = 2114;
      v206 = v161;
      _os_log_error_impl(&dword_1883EA000, v81, OS_LOG_TYPE_ERROR, "This application has a malformed value %{public}@ for entitlement %{public}@, expected a dict of string : string", buf, 0x16u);
    }

    if (v163 > 0xE)
    {
      break;
    }

    objc_msgSend_setObject_forKeyedSubscript_(newValue, v56, 0, v161);
    v62 = v79;
LABEL_83:

    if (++v62 == v60)
    {
      v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v59, &v183, v215, 16);
      if (v60)
      {
        goto LABEL_60;
      }

      goto LABEL_85;
    }
  }

  errorCopy4 = error;
  if (!error)
  {
    goto LABEL_165;
  }

  v144 = v22;
  v146 = v161;
  v99 = @"Application has malformed entitlements.  Found value %@ for entitlement %@, expected a dict of string : string";
LABEL_115:
  v100 = errorCopy4;
  objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v56, @"CKErrorDomain", 8, v99, v144, v146);
  *v100 = v97 = 0;
  v38 = v152;
LABEL_166:

  return v97;
}

- (void)ck_bindInStatement:(id)statement atIndex:(unint64_t)index
{
  statementCopy = statement;
  v10 = objc_msgSend_sqliteRepresentation(self, v7, v8);
  objc_msgSend_bindText_atIndex_(statementCopy, v9, v10, index);
}

@end