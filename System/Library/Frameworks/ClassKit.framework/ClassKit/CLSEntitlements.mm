@interface CLSEntitlements
+ (BOOL)isDashboardAppProcess;
+ (BOOL)isInternalProcess;
+ (BOOL)isPrivateSearchEnabledProcess;
+ (BOOL)isSearchEnabledProcess;
+ (id)allowedEntitlements;
+ (id)entitlementsForCurrentTaskWithError:(id *)error;
+ (id)entitlementsForNonAppCurrentTaskWithError:(id *)error;
+ (id)entitlementsWithConnection:(id)connection error:(id *)error;
+ (id)entitlementsWithSecTask:(__SecTask *)task overrides:(id)overrides error:(id *)error;
- (BOOL)BOOLValueForEntitlement:(id)entitlement error:(id *)error;
- (BOOL)hasEntitlement:(id)entitlement;
- (BOOL)isDashboardAPIEnabled;
- (BOOL)isInDevelopmentEnvironment;
- (BOOL)isInternal;
- (BOOL)isPrivateSearchAPIEnabled;
- (BOOL)isPublicClassKitAPIEnabled;
- (BOOL)isRegisterDashboardEnabled;
- (BOOL)isSearchAPIEnabled;
- (BOOL)isUIClient;
- (CLSEntitlements)init;
- (CLSEntitlements)initWithEntitlements:(id)entitlements;
- (NSString)classKitEnvironment;
- (id)stringValueForEntitlement:(id)entitlement error:(id *)error;
@end

@implementation CLSEntitlements

+ (id)entitlementsForCurrentTaskWithError:(id *)error
{
  v5 = objc_msgSend_bundleRecordForCurrentProcess(MEMORY[0x277CC1E90], a2, error);
  v6 = CLSExecutableLinkedOnOrAfter_iOS17_5_macOS_14_5();
  if (v5 && (v6 & 1) != 0)
  {
    objc_opt_class();
    objc_opt_isKindOfClass();
    v10 = objc_msgSend_entitlements(v5, v8, v9);
    v13 = objc_msgSend_allowedEntitlements(self, v11, v12);
    v15 = objc_msgSend_dictionaryOfObjectsForKeys_(v10, v14, v13);

    v16 = [self alloc];
    v18 = objc_msgSend_initWithEntitlements_(v16, v17, v15);
  }

  else
  {
    v18 = objc_msgSend_entitlementsForNonAppCurrentTaskWithError_(self, v7, error);
  }

  return v18;
}

+ (id)entitlementsForNonAppCurrentTaskWithError:(id *)error
{
  v5 = SecTaskCreateFromSelf(0);
  if (v5)
  {
    v7 = v5;
    v8 = objc_autoreleasePoolPush();
    v11 = objc_msgSend_cls_appExtensionContainerBundleRecordForCurrentTask(MEMORY[0x277CC1E90], v9, v10);
    v14 = objc_msgSend_entitlements(v11, v12, v13);

    objc_autoreleasePoolPop(v8);
    v17 = objc_msgSend_allowedEntitlements(self, v15, v16);
    v19 = objc_msgSend_dictionaryOfObjectsForKeys_(v14, v18, v17);

    v21 = objc_msgSend_entitlementsWithSecTask_overrides_error_(self, v20, v7, v19, error);
    CFRelease(v7);
  }

  else
  {
    objc_msgSend_cls_assignError_code_description_(MEMORY[0x277CCA9B8], v6, error, 100, @"Unable to retrieve current task for entitlement lookup.");
    v21 = 0;
  }

  return v21;
}

+ (id)entitlementsWithConnection:(id)connection error:(id *)error
{
  connectionCopy = connection;
  v9 = connectionCopy;
  if (connectionCopy)
  {
    objc_msgSend_auditToken(connectionCopy, v7, v8);
  }

  else
  {
    memset(&v27, 0, sizeof(v27));
  }

  v10 = SecTaskCreateWithAuditToken(0, &v27);
  if (v10)
  {
    v12 = v10;
    v13 = objc_autoreleasePoolPush();
    v15 = objc_msgSend_cls_appExtensionContainerBundleRecordForConnection_(MEMORY[0x277CC1E90], v14, v9);
    v18 = objc_msgSend_entitlements(v15, v16, v17);

    objc_autoreleasePoolPop(v13);
    v21 = objc_msgSend_allowedEntitlements(self, v19, v20);
    v23 = objc_msgSend_dictionaryOfObjectsForKeys_(v18, v22, v21);

    v25 = objc_msgSend_entitlementsWithSecTask_overrides_error_(self, v24, v12, v23, error);
    CFRelease(v12);
  }

  else
  {
    objc_msgSend_cls_assignError_code_description_(MEMORY[0x277CCA9B8], v11, error, 100, @"Unable to retrieve connection task for entitlement lookup.");
    v25 = 0;
  }

  return v25;
}

+ (id)entitlementsWithSecTask:(__SecTask *)task overrides:(id)overrides error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  overridesCopy = overrides;
  error = 0;
  v11 = objc_msgSend_allowedEntitlements(self, v9, v10);
  v14 = objc_msgSend_allObjects(v11, v12, v13);

  v15 = SecTaskCopyValuesForEntitlements(task, v14, &error);
  v18 = objc_msgSend_mutableCopy(v15, v16, v17);

  errorCopy = error;
  if (v18)
  {
    errorCopy2 = error;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v21 = v14;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v36, v41, 16);
    if (v23)
    {
      v25 = v23;
      v26 = *v37;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v37 != v26)
          {
            objc_enumerationMutation(v21);
          }

          v28 = *(*(&v36 + 1) + 8 * i);
          v30 = objc_msgSend_objectForKeyedSubscript_(overridesCopy, v24, v28);
          if (v30)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v18, v29, v30, v28);
          }
        }

        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v36, v41, 16);
      }

      while (v25);
    }

    v31 = [self alloc];
    v33 = objc_msgSend_initWithEntitlements_(v31, v32, v18);
    errorCopy = errorCopy2;
  }

  else
  {
    objc_msgSend_cls_assignError_fromError_(MEMORY[0x277CCA9B8], v19, error, error);
    v33 = 0;
  }

  return v33;
}

+ (id)allowedEntitlements
{
  v7[9] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"com.apple.private.ClassKit.register-dashboard";
  v7[1] = @"com.apple.private.ClassKit.dashboard";
  v7[2] = @"com.apple.private.ClassKit.search";
  v7[3] = @"com.apple.private.contacts";
  v7[4] = @"com.apple.private.contactsui";
  v7[5] = @"application-identifier";
  v7[6] = @"com.apple.private.ClassKit.internal";
  v7[7] = @"com.apple.developer.ClassKit-environment";
  v7[8] = @"com.apple.ClassKitUI.client";
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v7, 9);
  v5 = objc_msgSend_setWithArray_(v2, v4, v3);

  return v5;
}

+ (BOOL)isDashboardAppProcess
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_236FAAA4C;
  block[3] = &unk_278A17960;
  block[4] = self;
  if (qword_280B2A388 != -1)
  {
    dispatch_once(&qword_280B2A388, block);
  }

  return byte_280B2A380;
}

+ (BOOL)isInternalProcess
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_236FAAC24;
  block[3] = &unk_278A17960;
  block[4] = self;
  if (qword_280B2A390 != -1)
  {
    dispatch_once(&qword_280B2A390, block);
  }

  return byte_280B2A381;
}

+ (BOOL)isSearchEnabledProcess
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_236FAAE00;
  block[3] = &unk_278A17960;
  block[4] = self;
  if (qword_280B2A398 != -1)
  {
    dispatch_once(&qword_280B2A398, block);
  }

  return byte_280B2A382;
}

+ (BOOL)isPrivateSearchEnabledProcess
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_236FAB030;
  block[3] = &unk_278A17960;
  block[4] = self;
  if (qword_280B2A3A0 != -1)
  {
    dispatch_once(&qword_280B2A3A0, block);
  }

  return byte_280B2A383;
}

- (CLSEntitlements)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  v9 = objc_msgSend_stringWithFormat_(v5, v8, @"The method [%@ %@] is not available.", v6, v7);
  v11 = objc_msgSend_exceptionWithName_reason_userInfo_(v3, v10, v4, v9, 0);
  v12 = v11;

  objc_exception_throw(v11);
}

- (CLSEntitlements)initWithEntitlements:(id)entitlements
{
  v29 = *MEMORY[0x277D85DE8];
  entitlementsCopy = entitlements;
  v27.receiver = self;
  v27.super_class = CLSEntitlements;
  v5 = [(CLSEntitlements *)&v27 init];
  if (v5)
  {
    v6 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = objc_opt_class();
    v10 = objc_msgSend_allowedEntitlements(v7, v8, v9);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v23, v28, 16);
    if (v12)
    {
      v14 = v12;
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          v19 = objc_msgSend_objectForKeyedSubscript_(entitlementsCopy, v13, v17);
          if (v19)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v6, v18, v19, v17);
          }
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v23, v28, 16);
      }

      while (v14);
    }

    objc_storeStrong(&v5->_entitlements, v6);
    v21 = objc_msgSend_objectForKeyedSubscript_(entitlementsCopy, v20, @"application-identifier");
    if (v21)
    {
      CPCopyBundleIdentifierAndTeamFromApplicationIdentifier();
    }
  }

  return v5;
}

- (NSString)classKitEnvironment
{
  v19 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v2 = objc_msgSend_stringValueForEntitlement_error_(self, a2, @"com.apple.developer.ClassKit-environment", &v13);
  v4 = v13;
  if (v4)
  {
    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v5 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v16 = @"com.apple.developer.ClassKit-environment";
      v17 = 2114;
      v18 = v4;
      _os_log_impl(&dword_236F71000, v5, OS_LOG_TYPE_INFO, "Failed to read %@ entitelment: %{public}@", buf, 0x16u);
    }
  }

  v6 = MEMORY[0x277CBEB98];
  v14[0] = @"development";
  v14[1] = @"production";
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v3, v14, 2);
  v9 = objc_msgSend_setWithArray_(v6, v8, v7);

  if (v2 && objc_msgSend_containsObject_(v9, v10, v2))
  {
    v11 = v2;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isPublicClassKitAPIEnabled
{
  v3 = objc_msgSend_classKitEnvironment(self, a2, v2);
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isInternal
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v2 = objc_msgSend_BOOLValueForEntitlement_error_(self, a2, @"com.apple.private.ClassKit.internal", &v6);
  v3 = v6;
  if (v3)
  {
    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v4 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v8 = @"com.apple.private.ClassKit.internal";
      _os_log_impl(&dword_236F71000, v4, OS_LOG_TYPE_INFO, "failed to read %@ entitlement.", buf, 0xCu);
    }
  }

  return v2;
}

- (BOOL)isUIClient
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v2 = objc_msgSend_BOOLValueForEntitlement_error_(self, a2, @"com.apple.ClassKitUI.client", &v6);
  v3 = v6;
  if (v3)
  {
    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v4 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v8 = @"com.apple.ClassKitUI.client";
      _os_log_impl(&dword_236F71000, v4, OS_LOG_TYPE_INFO, "failed to read %@ entitlement.", buf, 0xCu);
    }
  }

  return v2;
}

- (BOOL)isDashboardAPIEnabled
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v2 = objc_msgSend_BOOLValueForEntitlement_error_(self, a2, @"com.apple.private.ClassKit.dashboard", &v6);
  v3 = v6;
  if (v3)
  {
    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v4 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v8 = @"com.apple.private.ClassKit.dashboard";
      _os_log_impl(&dword_236F71000, v4, OS_LOG_TYPE_INFO, "failed to read %@ entitlement.", buf, 0xCu);
    }
  }

  return v2;
}

- (BOOL)isRegisterDashboardEnabled
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v2 = objc_msgSend_BOOLValueForEntitlement_error_(self, a2, @"com.apple.private.ClassKit.register-dashboard", &v6);
  v3 = v6;
  if (v3)
  {
    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v4 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v8 = @"com.apple.private.ClassKit.register-dashboard";
      _os_log_impl(&dword_236F71000, v4, OS_LOG_TYPE_INFO, "failed to read %@ entitlement.", buf, 0xCu);
    }
  }

  return v2;
}

- (BOOL)isSearchAPIEnabled
{
  v17 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isPrivateSearchAPIEnabled(self, a2, v2))
  {
    return 1;
  }

  v14 = 0;
  v6 = objc_msgSend_BOOLValueForEntitlement_error_(self, v4, @"com.apple.private.contacts", &v14);
  v7 = v14;
  v9 = v7;
  if (v6)
  {
    v5 = 1;
    if (!v7)
    {
      return v5;
    }
  }

  else
  {
    v13 = v7;
    v5 = objc_msgSend_BOOLValueForEntitlement_error_(self, v8, @"com.apple.private.contactsui", &v13);
    v10 = v13;

    v9 = v10;
    if (!v10)
    {
      return v5;
    }
  }

  if (qword_280B2A720 != -1)
  {
    dispatch_once(&qword_280B2A720, &unk_284A07B28);
  }

  v11 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = @"searchAPI";
    _os_log_impl(&dword_236F71000, v11, OS_LOG_TYPE_INFO, "failed to read %@ entitlement.", buf, 0xCu);
  }

  return v5;
}

- (BOOL)isPrivateSearchAPIEnabled
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v2 = objc_msgSend_BOOLValueForEntitlement_error_(self, a2, @"com.apple.private.ClassKit.search", &v6);
  v3 = v6;
  if (v3)
  {
    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v4 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v8 = @"searchAPI";
      _os_log_impl(&dword_236F71000, v4, OS_LOG_TYPE_INFO, "failed to read %@ entitlement.", buf, 0xCu);
    }
  }

  return v2;
}

- (BOOL)hasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  if (objc_msgSend_length(entitlementCopy, v5, v6))
  {
    v9 = objc_msgSend_entitlements(self, v7, v8);
    v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, entitlementCopy);
    v12 = v11 != 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isInDevelopmentEnvironment
{
  v6 = objc_msgSend_classKitEnvironment(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_classKitEnvironment(self, v4, v5);
    isEqualToString = objc_msgSend_isEqualToString_(@"development", v8, v7);
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

- (BOOL)BOOLValueForEntitlement:(id)entitlement error:(id *)error
{
  entitlementCopy = entitlement;
  if (objc_msgSend_hasEntitlement_(self, v7, entitlementCopy))
  {
    v10 = objc_msgSend_entitlements(self, v8, v9);
    v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, entitlementCopy);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = objc_msgSend_BOOLValue(v12, v13, v14);
    }

    else
    {
      objc_msgSend_cls_assignError_code_format_(MEMORY[0x277CCA9B8], v13, error, 4, @"Expected a BOOL value for entitlement: %@", entitlementCopy);
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)stringValueForEntitlement:(id)entitlement error:(id *)error
{
  entitlementCopy = entitlement;
  if (objc_msgSend_hasEntitlement_(self, v7, entitlementCopy))
  {
    v10 = objc_msgSend_entitlements(self, v8, v9);
    v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, entitlementCopy);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v12;
    }

    else
    {
      objc_msgSend_cls_assignError_code_format_(MEMORY[0x277CCA9B8], v13, error, 4, @"Expected a string value for entitlement: %@", entitlementCopy);
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end