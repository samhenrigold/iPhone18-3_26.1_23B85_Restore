uint64_t BRCurrentProcessHasUbiquityContainer(uint64_t a1, uint64_t a2)
{
  if (_BRLoadUbiquityEntitlements_once != -1)
  {
    BRCurrentProcessHasUbiquityContainer_cold_1();
  }

  return (currentProcessUbiquityContainerEntitlements != 0) | currentProcessIsContainerProxy & 1u;
}

void BRStartCellularConstraintsNotificationsObserver(uint64_t result, uint64_t a2)
{
  if (BRStartCellularConstraintsNotificationsObserver_onceToken != -1)
  {
    BRStartCellularConstraintsNotificationsObserver_cold_1();
  }
}

uint64_t __BRStartCellularConstraintsNotificationsObserver_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(v0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("cellular-constraints-listener", v1);

  v3 = BRStartCellularConstraintsNotificationsObserver_queue;
  BRStartCellularConstraintsNotificationsObserver_queue = v2;

  v4 = [BRDarwinNotifyReceiver alloc];
  BRStartCellularConstraintsNotificationsObserver_notifyRecevier = [(BRDarwinNotifyReceiver *)v4 initForEventName:@"BRCellularConstraintChangedNotification" withQueue:BRStartCellularConstraintsNotificationsObserver_queue handler:&__block_literal_global_172];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t BRCopyEntitlementsForSelf()
{
  v0 = xpc_copy_entitlements_for_self();
  if (v0)
  {
    v1 = _CFXPCCreateCFObjectFromXPCObject();
    v2 = [v1 mutableCopy];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id BREntitledContainerIdentifiers(uint64_t a1)
{
  v1 = [MEMORY[0x1E6963680] propertyListWithDictionary:a1];
  v2 = BREntitledContainerIdentifiersForPropertyList(v1);

  return v2;
}

id BREntitledContainerIdentifiersForPropertyList(void *a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 objectForKey:@"application-identifier" ofClass:objc_opt_class()];
  v3 = v2;
  if (!v2)
  {
    v4 = 0;
LABEL_9:
    v7 = 0;
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  v4 = BRAppIdentifierFromTeamAppTuple(v2);

  if (!v4)
  {
    v3 = 0;
    goto LABEL_9;
  }

  v5 = [v1 objectForKey:@"com.apple.developer.icloud-services" ofClass:objc_opt_class()];
  v3 = v5;
  if (v5)
  {
    if ([v5 containsObject:@"CloudDocuments"])
    {
      v6 = objc_opt_class();
      v7 = [v1 objectForKey:@"com.apple.developer.icloud-container-identifiers" ofClass:v6 valuesOfClass:objc_opt_class()];
      if (!v7)
      {
        v8 = [@"iCloud." stringByAppendingString:v4];
        v20[0] = v8;
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v9 = objc_opt_class();
    v7 = [v1 objectForKey:@"com.apple.developer.ubiquity-container-identifiers" ofClass:v9 valuesOfClass:objc_opt_class()];
  }

  if (![v7 count])
  {
    goto LABEL_19;
  }

  if (([v7 containsObject:@"com.apple.CloudDocs"] & 1) != 0 || (objc_msgSend(v7, "containsObject:", @"com.apple.Desktop") & 1) != 0 || objc_msgSend(v7, "containsObject:", @"com.apple.Documents"))
  {
    v10 = brc_bread_crumbs("BREntitledContainerIdentifiersForPropertyList", 1057);
    v11 = brc_default_log(1, 0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412802;
      v15 = v4;
      v16 = 2112;
      v17 = v3;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_1AE2A9000, v11, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ has prohibited identifiers in its list of entitled container identifiers: %@%@", &v14, 0x20u);
    }

    goto LABEL_19;
  }

  v7 = v7;
  v12 = v7;
LABEL_20:

  return v12;
}

id BRAppIdentifierFromTeamAppTuple(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 hasPrefix:@"com.apple."])
  {
    v2 = v1;
  }

  else if ([v1 length] > 0xA)
  {
    MEMORY[0x1EEE9AC00]();
    [v1 getCharacters:v14 range:{0, 10}];
    for (i = 0; i != 20; i += 2)
    {
      v6 = *&v14[i];
      if ((v6 - 65) >= 0x1A && (v6 - 48) >= 0xA)
      {
        v8 = brc_bread_crumbs("BRAppIdentifierFromTeamAppTuple", 986);
        v9 = brc_default_log(1, 0);
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }

        *buf = 138412546;
        v16 = v1;
        v17 = 2112;
        v18 = v8;
        v10 = "[WARNING] team prefix must only contain characters in [0-9,A-Z] (%@)%@";
        v11 = v9;
        v12 = 22;
        goto LABEL_19;
      }
    }

    if ([v1 characterAtIndex:10] == 46)
    {
      v2 = [v1 substringFromIndex:11];
      goto LABEL_21;
    }

    v8 = brc_bread_crumbs("BRAppIdentifierFromTeamAppTuple", 991);
    v9 = brc_default_log(1, 0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v8;
      v10 = "[WARNING] team prefix must be followed by a dot.%@";
      v11 = v9;
      v12 = 12;
LABEL_19:
      _os_log_impl(&dword_1AE2A9000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    }

LABEL_20:

    v2 = 0;
  }

  else
  {
    v3 = brc_bread_crumbs("BRAppIdentifierFromTeamAppTuple", 976);
    v4 = brc_default_log(1, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = v1;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_1AE2A9000, v4, OS_LOG_TYPE_DEFAULT, "[WARNING] can't extract application ID from '%@'%@", buf, 0x16u);
    }

    v2 = 0;
  }

LABEL_21:

  return v2;
}

BOOL LBCopyUbiquityAccountToken(uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = [BRAccount currentCachedLoggedInAccountWithError:&v7];
  v5 = v7;
  if (LBCopyUbiquityAccountToken_once != -1)
  {
    LBCopyUbiquityAccountToken_cold_1();
  }

  *a1 = [v4 perAppAccountIdentifier];
  if (a2 && v5)
  {
    *a2 = v5;
  }

  return v5 == 0;
}

uint64_t __BRIsCurrentProcessHasAccessToGroupContainers_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 containsObject:@"group.com.apple.iCloudDrive"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1AE2AB76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *brc_bread_crumbs(uint64_t a1, uint64_t a2)
{
  if (os_variant_has_internal_content())
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" [Bread Crumb: %s %lu | %s]", a1, a2, dispatch_queue_get_label(0)];
  }

  else
  {
    v4 = &stru_1F23D4ED0;
  }

  return v4;
}

uint64_t brc_default_log(int a1, char a2)
{
  v4 = *__error();
  if (brc_default_log_once == -1)
  {
    if (a2)
    {
LABEL_3:
      LOBYTE(v5) = 0;
      v6 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    brc_default_log_cold_1();
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v5 = [MEMORY[0x1E69DF068] sharedManager];
  v6 = [v5 currentPersona];

  LODWORD(v5) = [v6 isDataSeparatedPersona];
  if (a1)
  {
    v7 = +[BRContainerCache isPersonalProvider];
    if (v7)
    {
      if (!v5)
      {
        goto LABEL_11;
      }

      v14 = v4;
      v5 = brc_bread_crumbs("brc_default_log", 57);
      v8 = brc_default_log(0, 0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        brc_default_log_cold_3();
      }
    }

    else
    {
      if (v5 & 1 | !+[BRContainerCache isManagedProvider])
      {
        goto LABEL_11;
      }

      v14 = v4;
      v5 = brc_bread_crumbs("brc_default_log", 59);
      v8 = brc_default_log(0, 0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        brc_default_log_cold_2();
      }
    }

    LOBYTE(v5) = v7;
    v4 = v14;
  }

LABEL_11:
  v9 = __error();
  v10 = &brc_default_log_loggerEnterprise;
  *v9 = v4;
  if ((v5 & 1) == 0)
  {
    v10 = &brc_default_log_loggerPersonal;
  }

  v11 = *v10;
  v12 = *v10;

  return v11;
}

id BRCXPCTokenInterface()
{
  if (BRCXPCTokenInterface_once != -1)
  {
    BRCXPCTokenInterface_cold_1();
  }

  v1 = BRCXPCTokenInterface_iface;

  return v1;
}

uint64_t __BRCXPCTokenInterface_block_invoke()
{
  v0 = objc_opt_new();
  v1 = BRCXPCTokenInterface_iface;
  BRCXPCTokenInterface_iface = v0;

  v2 = BRCXPCTokenInterface_iface;

  return [v2 setProtocol:&unk_1F240B368];
}

void LBGetMobileContainerForID(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __LBGetMobileContainerForID_block_invoke;
  v9[3] = &unk_1E7A15DB8;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  BRGetProcessMobileContainerForID(a1, 0, v9);
}

void BRGetProcessMobileContainerForID(void *a1, _OWORD *a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  memset(v39, 0, sizeof(v39));
  __brc_create_section(0, "BRGetProcessMobileContainerForID", 345, 0, v39);
  v8 = brc_bread_crumbs("BRGetProcessMobileContainerForID", 345);
  v9 = brc_default_log(1, 0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219010;
    *&buf[4] = v39[0];
    *&buf[12] = 2080;
    *&buf[14] = "BRGetProcessMobileContainerForID";
    *&buf[22] = 2112;
    *&buf[24] = v5;
    v41 = 2048;
    v42 = a2;
    v43 = 2112;
    v44 = v8;
    _os_log_debug_impl(&dword_1AE2A9000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx %s: container:%@ audit-token:%p%@", buf, 0x34u);
  }

  +[BRAccount startAccountTokenChangeObserverIfNeeded];
  if (_BRLoadUbiquityEntitlements_once != -1)
  {
    BRCopyUbiquityContainerIdentifiersForCurrentProcess_cold_2();
  }

  if (a2)
  {
    if ((currentProcessIsContainerProxy & 1) == 0)
    {
LABEL_7:
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BRCloudDocsErrorDomain" code:1 userInfo:0];
      v6[2](v6, 0, v10);

      goto LABEL_19;
    }
  }

  else
  {
    if ((_xpc_runtime_is_app_sandboxed() & 1) == 0)
    {
      if ([v5 isEqualToString:@"com.apple.CloudDocs"])
      {
        v11 = [MEMORY[0x1E69DF068] sharedManager];
        v12 = [v11 currentPersona];
        v13 = [v12 isDataSeparatedPersona];

        if ((v13 & 1) == 0)
        {
          v24 = +[BRDaemonConnection mobileDocumentsURL];
          v25 = [[BRMangledID alloc] initWithAppLibraryName:@"com.apple.CloudDocs"];
          v26 = [(BRMangledID *)v25 mangledIDString];
          v27 = [v24 URLByAppendingPathComponent:v26 isDirectory:1];

          (v6)[2](v6, v27, 0);
          goto LABEL_19;
        }
      }
    }

    if ((currentProcessIsContainerProxy & 1) == 0 && !currentProcessUbiquityContainerEntitlements)
    {
      goto LABEL_7;
    }
  }

  memset(buf, 0, 24);
  __brc_create_section(0, "BRGetProcessMobileContainerForID", 374, 0, buf);
  v14 = brc_bread_crumbs("BRGetProcessMobileContainerForID", 374);
  v15 = brc_default_log(1, 0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    BRGetProcessMobileContainerForID_cold_2();
  }

  v37 = *buf;
  v38 = *&buf[16];
  v16 = +[BRDaemonConnection defaultConnection];
  v17 = [v16 newSyncProxy];

  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = __BRGetProcessMobileContainerForID_block_invoke;
  v31 = &unk_1E7A14EE8;
  v34 = v37;
  v35 = v38;
  v18 = v17;
  v32 = v18;
  v19 = v5;
  v33 = v19;
  v36 = a2;
  v20 = MEMORY[0x1B26FEA90](&v28);
  if (a2)
  {
    v21 = a2[1];
    *buf = *a2;
    *&buf[16] = v21;
    [v18 getContainerURLForID:v19 forProcess:buf reply:{v20, v28, v29, v30, v31, v32}];
  }

  else
  {
    [v18 getContainerURLForID:v19 reply:{v20, v28, v29, v30, v31, v32}];
  }

  v22 = [v18 result];
  v23 = [v18 error];
  (v6)[2](v6, v22, v23);

LABEL_19:
  __brc_leave_section(v39);
  objc_autoreleasePoolPop(v7);
}

void sub_1AE2AC328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void __brc_create_section(char a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (__brc_create_section_once != -1)
  {
    __brc_create_section_cold_1();
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ____brc_create_section_block_invoke_2;
  v10[3] = &unk_1E7A149B8;
  v10[4] = &v12;
  v11 = a1;
  dispatch_sync(__brc_create_section_queue, v10);
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  *a5 = v13[3];
  *(a5 + 16) = a3;
  *(a5 + 20) = a4;
  _Block_object_dispose(&v12, 8);
}

void ____brc_create_section_block_invoke()
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(v3, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("create-log-section", v0);

  v2 = __brc_create_section_queue;
  __brc_create_section_queue = v1;
}

uint64_t ____brc_create_section_block_invoke_2(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = __brc_create_section_lastSectionID + 1;
  v1 = *(*(result + 32) + 8);
  v2 = *(v1 + 24);
  if ((*(v1 + 24) & 1) == *(result + 40))
  {
    *(v1 + 24) = v2 + 1;
    v2 = *(*(*(result + 32) + 8) + 24);
  }

  __brc_create_section_lastSectionID = v2;
  return result;
}

uint64_t brc_notify_get_state(int a1, uint64_t *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1 == -1)
  {
    return 2;
  }

  state = notify_get_state(a1, a2);
  if (state)
  {
    v6 = brc_bread_crumbs("brc_notify_get_state", 69);
    v7 = brc_default_log(0, 0);
    if (os_log_type_enabled(v7, 0x90u))
    {
      v9[0] = 67110146;
      v9[1] = a1;
      v10 = 2080;
      v11 = brc_prettyprint_notify_status(state);
      v12 = 1024;
      v13 = state;
      v14 = 2080;
      v15 = a3;
      v16 = 2112;
      v17 = v6;
      _os_log_error_impl(&dword_1AE2A9000, v7, 0x90u, "[ERROR] notify_get_state(%d) failed with %s (%d) for '%s'%@", v9, 0x2Cu);
    }
  }

  return state;
}

void __BRStartCellularConstraintsNotificationsObserver_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = @"BRCellularConstraintReached";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v3 postNotificationName:@"BRCellularConstraintChangedNotification" object:0 userInfo:v5];
}

uint64_t __brc_default_log_block_invoke()
{
  v0 = os_log_create("com.apple.clouddocs", "default personal");
  v1 = brc_default_log_loggerPersonal;
  brc_default_log_loggerPersonal = v0;

  brc_default_log_loggerEnterprise = os_log_create("com.apple.clouddocs", "default enterprise");

  return MEMORY[0x1EEE66BB8]();
}

id BRCXPCInterface()
{
  if (BRCXPCInterface_once != -1)
  {
    BRCXPCInterface_cold_1();
  }

  v1 = BRCXPCInterface_iface;

  return v1;
}

double brc_monotonic_time_diff_to_interval(uint64_t a1)
{
  if (brc_monotonic_time_diff_to_interval_onceToken != -1)
  {
    brc_monotonic_time_diff_to_interval_cold_1();
  }

  return (brc_monotonic_time_diff_to_interval_info * a1 / *algn_1ED7C0BB4) / 1000000000.0;
}

void __LBCopyUbiquityAccountToken_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(v0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  queue = dispatch_queue_create("com.apple.clouddocs.roots-cache-queue", v1);

  dispatch_async(queue, &__block_literal_global_16_0);
}

id BREntitledApplicationIdentifier(void *a1)
{
  v1 = [a1 objectForKey:@"application-identifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = BRAppIdentifierFromTeamAppTuple(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t BRCopyEntitlementsForAuditToken(uint64_t a1)
{
  v1 = xpc_copy_entitlement_for_token();
  if (v1)
  {
    v2 = _CFXPCCreateCFObjectFromXPCObject();
    v3 = [v2 mutableCopy];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t BRIsEntitledForAnyiCloudService(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKey:@"com.apple.developer.icloud-services"];
  if (!v2)
  {
    v4 = [v1 objectForKey:@"com.apple.developer.ubiquity-kvstore-identifier"];
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v3 = 0;
      isKindOfClass = 1;
    }

    else
    {
      v3 = [v1 objectForKey:@"com.apple.developer.ubiquity-container-identifiers"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 count])
      {
        v6 = [v3 objectAtIndexedSubscript:0];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
      }

      else
      {
        isKindOfClass = 0;
      }
    }

    goto LABEL_13;
  }

  v3 = v2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
LABEL_13:

    goto LABEL_14;
  }

  isKindOfClass = 0;
LABEL_14:

  return isKindOfClass & 1;
}

Class initCKShare()
{
  CloudKitLibrary_0();
  result = objc_getClass("CKShare");
  classCKShare = result;
  getCKShareClass = CKShareFunction;
  return result;
}

void *CloudKitLibrary()
{
  result = CloudKitLibrary_frameworkLibrary;
  if (!CloudKitLibrary_frameworkLibrary)
  {
    result = dlopen("/System/Library/Frameworks/CloudKit.framework/CloudKit", 2);
    CloudKitLibrary_frameworkLibrary = result;
    if (!result)
    {
      CloudKitLibrary_cold_1();
    }
  }

  return result;
}

void CloudKitLibrary_0()
{
  v6 = *MEMORY[0x1E69E9840];
  if (!CloudKitLibrary_frameworkLibrary_1)
  {
    CloudKitLibrary_frameworkLibrary_1 = dlopen("/System/Library/Frameworks/CloudKit.framework/CloudKit", 2);
    if (!CloudKitLibrary_frameworkLibrary_1)
    {
      v0 = brc_bread_crumbs("CloudKitLibrary", 37);
      v1 = brc_default_log(1, 0);
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        v2 = 136315394;
        v3 = dlerror();
        v4 = 2112;
        v5 = v0;
        _os_log_impl(&dword_1AE2A9000, v1, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't open CloudKit : %s%@", &v2, 0x16u);
      }
    }
  }
}

void __BRCXPCInterface_block_invoke()
{
  v143[4] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_new();
  v1 = BRCXPCInterface_iface;
  BRCXPCInterface_iface = v0;

  [BRCXPCInterface_iface setProtocol:&unk_1F240B2A8];
  v143[0] = objc_opt_class();
  v143[1] = objc_opt_class();
  v143[2] = objc_opt_class();
  v143[3] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v143 count:4];
  v3 = BRCXPCInterface_iface;
  v4 = [MEMORY[0x1E695DFD8] setWithArray:v2];
  [v3 setClasses:v4 forSelector:sel_setupInstanceWithDict_reply_ argumentIndex:0 ofReply:0];

  BRCSetupGenericOperations(&unk_1F240B2A8, BRCXPCInterface_iface);
  BRCSetupGenericOperations(&unk_1F24064F8, BRCXPCInterface_iface);
  BRCSetupGenericOperations(&unk_1F2404ED8, BRCXPCInterface_iface);
  v142[0] = objc_opt_class();
  v142[1] = objc_opt_class();
  v142[2] = objc_opt_class();
  v142[3] = objc_opt_class();
  v142[4] = objc_opt_class();
  v142[5] = objc_opt_class();
  v142[6] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v142 count:7];

  v6 = objc_opt_new();
  [v6 setProtocol:&unk_1F23EB800];
  v7 = [MEMORY[0x1E695DFD8] setWithArray:v5];
  [v6 setClasses:v7 forSelector:sel_receiveUpdates_reply_ argumentIndex:0 ofReply:0];

  v141[0] = objc_opt_class();
  v141[1] = objc_opt_class();
  v141[2] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v141 count:3];

  v9 = [MEMORY[0x1E695DFD8] setWithArray:v8];
  [v6 setClasses:v9 forSelector:sel_receiveProgressUpdates_reply_ argumentIndex:0 ofReply:0];

  v128 = v6;
  [BRCXPCInterface_iface setInterface:v6 forSelector:sel_getItemUpdateSenderWithReceiver_reply_ argumentIndex:0 ofReply:0];
  v140[0] = objc_opt_class();
  v140[1] = objc_opt_class();
  v140[2] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v140 count:3];

  v11 = BRCXPCInterface_iface;
  v12 = [MEMORY[0x1E695DFD8] setWithArray:v10];
  [v11 setClasses:v12 forSelector:sel_getItemUpdateSenderWithReceiver_reply_ argumentIndex:1 ofReply:1];

  v13 = objc_opt_new();
  [v13 setProtocol:&unk_1F240B308];
  v127 = v13;
  [BRCXPCInterface_iface setInterface:v13 forSelector:sel_getItemUpdateSenderWithReceiver_reply_ argumentIndex:0 ofReply:1];
  v139[0] = objc_opt_class();
  v139[1] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v139 count:2];

  v15 = BRCXPCInterface_iface;
  v16 = [MEMORY[0x1E695DFD8] setWithArray:v14];
  [v15 setClasses:v16 forSelector:sel_getAttributeValues_forItemIdentifier_reply_ argumentIndex:0 ofReply:0];

  v136[0] = objc_opt_class();
  v136[1] = objc_opt_class();
  v136[2] = objc_opt_class();
  v136[3] = objc_opt_class();
  v136[4] = objc_opt_class();
  v136[5] = objc_opt_class();
  v137 = objc_opt_class();
  CKRecordIDClass = getCKRecordIDClass(v137);
  if (!CKRecordIDClass)
  {
    CKRecordIDClass = objc_opt_class();
  }

  v138 = CKRecordIDClass;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v136 count:8];

  v19 = BRCXPCInterface_iface;
  v121 = v18;
  v20 = [MEMORY[0x1E695DFD8] setWithArray:v18];
  [v19 setClasses:v20 forSelector:sel_getAttributeValues_forItemIdentifier_reply_ argumentIndex:0 ofReply:1];

  v21 = +[BRContainer classesForDecoding];
  v135[0] = objc_opt_class();
  v135[1] = objc_opt_class();
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v135 count:2];
  v23 = [v21 setByAddingObjectsFromArray:v22];

  [BRCXPCInterface_iface setClasses:v23 forSelector:sel_getContainersNeedingUpload_ argumentIndex:0 ofReply:1];
  v126 = v23;
  [BRCXPCInterface_iface setClasses:v23 forSelector:sel_getContainersByID_ argumentIndex:0 ofReply:1];
  v24 = MEMORY[0x1E695DFD8];
  v25 = (getCKRecordIDClass)();
  if (!v25)
  {
    v25 = objc_opt_class();
  }

  v125 = [v24 setWithObjects:{v25, 0}];
  [BRCXPCInterface_iface setClasses:? forSelector:? argumentIndex:? ofReply:?];
  v26 = MEMORY[0x1E695DFD8];
  v134[0] = objc_opt_class();
  v27 = objc_opt_class();
  if (!v27)
  {
    v27 = objc_opt_class();
  }

  v134[1] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v134 count:2];
  v29 = [v26 setWithArray:v28];

  v124 = v29;
  [BRCXPCInterface_iface setClasses:v29 forSelector:sel_listNonLocalVersionsWithItemIdentifier_reply_ argumentIndex:0 ofReply:1];
  v30 = MEMORY[0x1E695DFD8];
  v133[0] = objc_opt_class();
  v133[1] = objc_opt_class();
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v133 count:2];
  v32 = [v30 setWithArray:v31];

  v33 = MEMORY[0x1E695DFD8];
  v132[0] = objc_opt_class();
  v132[1] = objc_opt_class();
  v34 = (getCKRecordIDClass)();
  if (!v34)
  {
    v34 = objc_opt_class();
  }

  v132[2] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:3];
  v36 = [v33 setWithArray:v35];

  v37 = MEMORY[0x1E695DFD8];
  v131[0] = objc_opt_class();
  v131[1] = objc_opt_class();
  v131[2] = objc_opt_class();
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:3];
  v39 = [v37 setWithArray:v38];

  [BRCXPCInterface_iface setClasses:v32 forSelector:sel_resolveFileObjectIDsToContentRecordIDsForThumbnails_reply_ argumentIndex:0 ofReply:0];
  v123 = v36;
  [BRCXPCInterface_iface setClasses:v36 forSelector:sel_resolveFileObjectIDsToContentRecordIDsForThumbnails_reply_ argumentIndex:0 ofReply:1];
  [BRCXPCInterface_iface setClasses:v32 forSelector:sel_resolveFileObjectIDsToContentRecordIDsForThumbnails_reply_ argumentIndex:1 ofReply:1];
  [BRCXPCInterface_iface setClasses:v32 forSelector:sel_resolveFileObjectIDsToContentRecordIDsForThumbnails_reply_ argumentIndex:2 ofReply:1];
  [BRCXPCInterface_iface setClasses:v32 forSelector:sel_resolveFileObjectIDsToContentRecordIDsForThumbnails_reply_ argumentIndex:3 ofReply:1];
  v40 = [BRCXPCInterface_iface setClasses:v39 forSelector:sel_resolveFileObjectIDsToContentRecordIDsForThumbnails_reply_ argumentIndex:4 ofReply:1];
  v41 = BRCXPCInterface_iface;
  v42 = MEMORY[0x1E695DFD8];
  CKUserIdentityLookupInfoClass = getCKUserIdentityLookupInfoClass(v40);
  if (!CKUserIdentityLookupInfoClass)
  {
    CKUserIdentityLookupInfoClass = objc_opt_class();
  }

  v44 = objc_opt_class();
  v45 = [v42 setWithObjects:{CKUserIdentityLookupInfoClass, v44, objc_opt_class(), 0}];
  [v41 setClasses:v45 forSelector:sel_startOperation_toLookupShareParticipants_reply_ argumentIndex:1 ofReply:0];

  v46 = BRCXPCInterface_iface;
  v47 = MEMORY[0x1E695DFD8];
  CKShareParticipantClass = getCKShareParticipantClass();
  if (!CKShareParticipantClass)
  {
    CKShareParticipantClass = objc_opt_class();
  }

  v49 = objc_opt_class();
  v50 = [v47 setWithObjects:{CKShareParticipantClass, v49, objc_opt_class(), 0}];
  [v46 setClasses:v50 forSelector:sel_startOperation_toLookupShareParticipants_reply_ argumentIndex:0 ofReply:1];

  v130[0] = objc_opt_class();
  v130[1] = objc_opt_class();
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:2];

  v52 = BRCXPCInterface_iface;
  v53 = [MEMORY[0x1E695DFD8] setWithArray:v51];
  [v52 setClasses:v53 forSelector:sel_getLoggedInUserPropertyValuesForKeys_reply_ argumentIndex:0 ofReply:0];

  v129[0] = objc_opt_class();
  v129[1] = objc_opt_class();
  v129[2] = objc_opt_class();
  v122 = [MEMORY[0x1E695DEC8] arrayWithObjects:v129 count:3];

  v54 = BRCXPCInterface_iface;
  v55 = [MEMORY[0x1E695DFD8] setWithArray:v122];
  [v54 setClasses:v55 forSelector:sel_getLoggedInUserPropertyValuesForKeys_reply_ argumentIndex:0 ofReply:1];

  v56 = BRCXPCInterface_iface;
  v57 = MEMORY[0x1E695DFD8];
  v58 = objc_opt_class();
  v59 = objc_opt_class();
  v60 = [v57 setWithObjects:{v58, v59, objc_opt_class(), 0}];
  [v56 setClasses:v60 forSelector:sel_queryEligibleAccountDescriptorsWithReply_ argumentIndex:0 ofReply:1];

  v61 = BRCXPCInterface_iface;
  v62 = MEMORY[0x1E695DFD8];
  v63 = objc_opt_class();
  v64 = objc_opt_class();
  v65 = [v62 setWithObjects:{v63, v64, objc_opt_class(), 0}];
  [v61 setClasses:v65 forSelector:sel_queryPathsForPersona_reply_ argumentIndex:0 ofReply:1];

  v66 = BRCXPCInterface_iface;
  v67 = MEMORY[0x1E695DFD8];
  v68 = objc_opt_class();
  v69 = objc_opt_class();
  v70 = [v67 setWithObjects:{v68, v69, objc_opt_class(), 0}];
  [v66 setClasses:v70 forSelector:sel_enumerateWorkingSetChangesFromChangeToken_limit_completion_ argumentIndex:0 ofReply:1];

  v71 = BRCXPCInterface_iface;
  v72 = MEMORY[0x1E695DFD8];
  v73 = objc_opt_class();
  v74 = [v72 setWithObjects:{v73, objc_opt_class(), 0}];
  [v71 setClasses:v74 forSelector:sel_enumerateWorkingSetChangesFromChangeToken_limit_completion_ argumentIndex:1 ofReply:1];

  v75 = BRCXPCInterface_iface;
  v76 = MEMORY[0x1E695DFD8];
  v77 = objc_opt_class();
  v78 = objc_opt_class();
  v79 = [v76 setWithObjects:{v77, v78, objc_opt_class(), 0}];
  [v75 setClasses:v79 forSelector:sel_enumerateItemsInFolder_sortOrder_offset_limit_completion_ argumentIndex:0 ofReply:1];

  [BRCXPCInterface_iface setClass:objc_opt_class() forSelector:sel_createItemBasedOnTemplate_fields_contents_options_additionalItemAttributes_completionHandler_ argumentIndex:0 ofReply:0];
  v80 = BRCXPCInterface_iface;
  v81 = MEMORY[0x1E695DFD8];
  v82 = objc_opt_class();
  v83 = objc_opt_class();
  v84 = [v81 setWithObjects:{v82, v83, objc_opt_class(), 0}];
  [v80 setClasses:v84 forSelector:sel_createItemBasedOnTemplate_fields_contents_options_additionalItemAttributes_completionHandler_ argumentIndex:1 ofReply:1];

  [BRCXPCInterface_iface setClass:objc_opt_class() forSelector:sel_modifyItem_baseVersion_changedFields_contents_options_additionalAttrs_completionHandler_ argumentIndex:0 ofReply:0];
  v85 = BRCXPCInterface_iface;
  v86 = MEMORY[0x1E695DFD8];
  v87 = objc_opt_class();
  v88 = objc_opt_class();
  v89 = [v86 setWithObjects:{v87, v88, objc_opt_class(), 0}];
  [v85 setClasses:v89 forSelector:sel_modifyItem_baseVersion_changedFields_contents_options_additionalAttrs_completionHandler_ argumentIndex:1 ofReply:1];

  v90 = BRCXPCInterface_iface;
  v91 = MEMORY[0x1E695DFD8];
  v92 = objc_opt_class();
  v93 = objc_opt_class();
  v94 = [v91 setWithObjects:{v92, v93, objc_opt_class(), 0}];
  [v90 setClasses:v94 forSelector:sel_deleteItemWithIdentifier_baseVersion_options_completionHandler_ argumentIndex:0 ofReply:1];

  v95 = BRCXPCInterface_iface;
  v96 = MEMORY[0x1E695DFD8];
  v97 = objc_opt_class();
  v98 = objc_opt_class();
  v99 = objc_opt_class();
  v100 = [v96 setWithObjects:{v97, v98, v99, objc_opt_class(), 0}];
  [v95 setClasses:v100 forSelector:sel_startDownloadFileObject_existingContents_options_etagIfLoser_reply_ argumentIndex:0 ofReply:1];

  v101 = BRCXPCInterface_iface;
  v102 = MEMORY[0x1E695DFD8];
  v103 = objc_opt_class();
  v104 = objc_opt_class();
  v105 = [v102 setWithObjects:{v103, v104, objc_opt_class(), 0}];
  [v101 setClasses:v105 forSelector:sel_enumerateTrashItemsFromRank_limit_completion_ argumentIndex:0 ofReply:1];

  v106 = BRCXPCInterface_iface;
  v107 = MEMORY[0x1E695DFD8];
  v108 = objc_opt_class();
  v109 = objc_opt_class();
  v110 = [v107 setWithObjects:{v108, v109, objc_opt_class(), 0}];
  [v106 setClasses:v110 forSelector:sel_getQueryItemForBRFileObjectID_reply_ argumentIndex:0 ofReply:1];

  v111 = BRCXPCInterface_iface;
  v112 = MEMORY[0x1E695DFD8];
  v113 = objc_opt_class();
  v114 = objc_opt_class();
  v115 = [v112 setWithObjects:{v113, v114, objc_opt_class(), 0}];
  [v111 setClasses:v115 forSelector:sel_getCKRecordIDsForFPItems_reply_ argumentIndex:0 ofReply:0];

  v116 = BRCXPCInterface_iface;
  v117 = MEMORY[0x1E695DFD8];
  v118 = objc_opt_class();
  v119 = objc_opt_class();
  v120 = [v117 setWithObjects:{v118, v119, getCKRecordIDClass(v119), 0}];
  [v116 setClasses:v120 forSelector:sel_getCKRecordIDsForFPItems_reply_ argumentIndex:0 ofReply:1];
}

void BRCSetupGenericOperations(void *a1, void *a2)
{
  v20 = a1;
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E696B0D0]);
  v5 = objc_alloc_init(MEMORY[0x1E696B0D0]);
  [v4 setProtocol:&unk_1F23E89D0];
  [v5 setProtocol:&unk_1F23E8910];
  v6 = MEMORY[0x1E695DEC8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v6 arrayWithObjects:{v7, v8, v9, v10, v11, getCKShareClass(), 0}];
  [v4 setInterface:v5 forSelector:sel_setRemoteOperationProxy_userInfo_ argumentIndex:0 ofReply:0];
  v13 = [MEMORY[0x1E695DFD8] setWithArray:v12];
  [v4 setClasses:v13 forSelector:sel_setRemoteOperationProxy_userInfo_ argumentIndex:1 ofReply:0];

  v14 = [MEMORY[0x1E695DFD8] setWithArray:v12];
  [v4 setClasses:v14 forSelector:sel_progressCallbackWithTopic_userInfo_ argumentIndex:1 ofReply:0];

  outCount = 0;
  v15 = protocol_copyMethodDescriptionList(v20, 1, 1, &outCount);
  v16 = v15;
  if (outCount)
  {
    v17 = 0;
    p_name = &v15->name;
    do
    {
      Name = sel_getName(*p_name);
      if (!strncmp(Name, "startOperation:", 0xFuLL))
      {
        [v3 setInterface:v4 forSelector:*p_name argumentIndex:0 ofReply:0];
      }

      ++v17;
      p_name += 2;
    }

    while (v17 < outCount);
  }

  free(v16);
}

void _preComputeURLSForPersona(char a1, void *a2, int a3)
{
  v5 = a2;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = ___preComputeURLSForPersona_block_invoke;
  v14 = &unk_1E7A16B48;
  v16 = a1;
  v6 = v5;
  v15 = v6;
  v7 = MEMORY[0x1B26FEA90](&v11);
  v8 = g_accountTokenDidChangeObserverForPersona;
  objc_sync_enter(v8);
  v9 = [g_accountTokenDidChangeObserverForPersona objectForKeyedSubscript:{v6, v11, v12, v13, v14}];

  if (!v9)
  {
    v10 = [[BRAccountTokenWillChangeObserver alloc] initWithPersonaID:v6];
    [g_accountTokenDidChangeObserverForPersona setObject:v10 forKeyedSubscript:v6];
  }

  objc_sync_exit(v8);

  if (a3)
  {
    BRPerformWithPersonaAndError(v6, v7);
  }

  else
  {
    v7[2](v7, 0);
  }
}

void ___preComputeURLSForPersona_block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 40) == 1 && (+[BRContainerCache isPersonalProvider](BRContainerCache, "isPersonalProvider") || +[BRContainerCache isManagedProvider]))
  {
    v4 = MEMORY[0x1E695DFF8];
    v5 = +[BRSpecialFolders homeDirForCurrentPersona];
    v6 = [v4 fileURLWithPath:v5 isDirectory:1];

    v7 = brc_bread_crumbs("_preComputeURLSForPersona_block_invoke", 313);
    v8 = brc_default_log(1, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      ___preComputeURLSForPersona_block_invoke_cold_1();
    }

    v9 = v6 != 0;
    if (v6)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
LABEL_10:
      [g_homeDirectoryURLForPersona setObject:v6 forKeyedSubscript:*(a1 + 32)];
      v15 = brc_bread_crumbs("_preComputeURLSForPersona_block_invoke", 334);
      v16 = brc_default_log(1, 0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v26 = *(a1 + 32);
        v27 = [v6 path];
        *buf = 138412802;
        v39 = v26;
        v40 = 2112;
        v41 = v27;
        v28 = v27;
        v42 = 2112;
        v43 = v15;
        _os_log_debug_impl(&dword_1AE2A9000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] homeDirectory for persona %@: %@%@", buf, 0x20u);
      }

      v17 = [v6 URLByAppendingPathComponent:@"Library/Application Support/CloudDocs" isDirectory:1];
      [g_cloudDocsAppSupportURLForPersona setObject:v17 forKeyedSubscript:*(a1 + 32)];
      v18 = brc_bread_crumbs("_preComputeURLSForPersona_block_invoke", 338);
      v19 = brc_default_log(1, 0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v32 = *(a1 + 32);
        v34 = [v17 path];
        *buf = 138412802;
        v39 = v32;
        v40 = 2112;
        v41 = v34;
        v42 = 2112;
        v43 = v18;
        _os_log_debug_impl(&dword_1AE2A9000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] cloudDocsAppSupport for persona %@: %@%@", buf, 0x20u);
      }

      v20 = [v6 URLByAppendingPathComponent:@"Library/Caches/com.apple.bird" isDirectory:1];

      [g_cloudDocsCachesURLForPersona setObject:v20 forKeyedSubscript:*(a1 + 32)];
      v21 = brc_bread_crumbs("_preComputeURLSForPersona_block_invoke", 342);
      v22 = brc_default_log(1, 0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v33 = *(a1 + 32);
        v35 = [v20 path];
        *buf = 138412802;
        v39 = v33;
        v40 = 2112;
        v41 = v35;
        v42 = 2112;
        v43 = v21;
        _os_log_debug_impl(&dword_1AE2A9000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] cloudDocsCaches for persona %@: %@%@", buf, 0x20u);
      }

      if (!v9)
      {
        [g_mobileDocumentsURLForPersona setObject:v10 forKeyedSubscript:*(a1 + 32)];
        v23 = brc_bread_crumbs("_preComputeURLSForPersona_block_invoke", 354);
        v24 = brc_default_log(1, 0);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v29 = *(a1 + 32);
          v30 = [v10 path];
          *buf = 138412802;
          v39 = v29;
          v40 = 2112;
          v41 = v30;
          v31 = v30;
          v42 = 2112;
          v43 = v23;
          _os_log_debug_impl(&dword_1AE2A9000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] mobileDocuments for persona %@: %@%@", buf, 0x20u);
        }

        if (v10)
        {
          v37 = v10;
          v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
          [g_syncedRootURLsForPersona setObject:v25 forKeyedSubscript:*(a1 + 32)];
        }

        else
        {
          [g_syncedRootURLsForPersona setObject:MEMORY[0x1E695E0F0] forKeyedSubscript:*(a1 + 32)];
        }
      }

      goto LABEL_24;
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = +[BRCloudDocsHelperProvider cloudDocsHelper];
  v14 = *(a1 + 32);
  v36 = 0;
  v12 = [v13 queryPathsForPersona:v14 withError:&v36];
  v11 = v36;
  v6 = [v12 objectForKeyedSubscript:@"home"];
  v10 = [v12 objectForKeyedSubscript:@"Mobile Documents"];

  if (v6)
  {
    goto LABEL_10;
  }

  v6 = brc_bread_crumbs("_preComputeURLSForPersona_block_invoke", 327);
  v20 = brc_default_log(1, 0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    ___preComputeURLSForPersona_block_invoke_cold_2(v6, v20);
  }

LABEL_24:
}

Class initCKUserIdentityLookupInfo()
{
  CloudKitLibrary_0();
  result = objc_getClass("CKUserIdentityLookupInfo");
  classCKUserIdentityLookupInfo = result;
  getCKUserIdentityLookupInfoClass = CKUserIdentityLookupInfoFunction;
  return result;
}

Class initCKShareParticipant()
{
  CloudKitLibrary_0();
  result = objc_getClass("CKShareParticipant");
  classCKShareParticipant = result;
  getCKShareParticipantClass = CKShareParticipantFunction;
  return result;
}

Class initCKRecordID()
{
  CloudKitLibrary_0();
  result = objc_getClass("CKRecordID");
  classCKRecordID = result;
  getCKRecordIDClass = CKRecordIDFunction;
  return result;
}

void __BRGetProcessMobileContainerForID_block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v34 = *(a1 + 48);
  v35 = *(a1 + 64);
  v13 = brc_bread_crumbs("BRGetProcessMobileContainerForID_block_invoke", 379);
  v14 = brc_default_log(1, 0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v25 = [v9 path];
    *buf = 134218754;
    v37 = v34;
    v38 = 2112;
    *v39 = v25;
    *&v39[8] = 2112;
    *&v39[10] = v12;
    v40 = 2112;
    v41 = v13;
    _os_log_debug_impl(&dword_1AE2A9000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx container url:'%@' %@%@", buf, 0x2Au);
  }

  if (v10)
  {
    v15 = v10;
    [v10 bytes];
    if (sandbox_extension_consume() < 0)
    {
      v16 = *__error();
      v17 = brc_bread_crumbs("BRGetProcessMobileContainerForID_block_invoke", 382);
      v18 = brc_default_log(0, 0);
      if (os_log_type_enabled(v18, 0x90u))
      {
        *buf = 138412802;
        v37 = v10;
        v38 = 1024;
        *v39 = v16;
        *&v39[4] = 2112;
        *&v39[6] = v17;
        _os_log_error_impl(&dword_1AE2A9000, v18, 0x90u, "[ERROR] Failed to consume extension %@ %{errno}d%@", buf, 0x1Cu);
      }

      *__error() = v16;
    }
  }

  [*(a1 + 32) setObjResult:v9 error:v12];
  v19 = *(a1 + 72);
  v20 = *(a1 + 40);
  v21 = v11;
  if (!v19)
  {
    if (BRCurrentProcessIsOwningContainerWithID(v20))
    {
      v22 = [MEMORY[0x1E696AAE8] mainBundle];
      v23 = [BRContainer versionOfBundle:v22 changedFromVersion:v21];

      if (v23)
      {
        if (v20)
        {
          v24 = v20;
        }

        else
        {
          v24 = [currentProcessUbiquityContainerEntitlements objectAtIndexedSubscript:0];
          if (!v24)
          {
            goto LABEL_23;
          }
        }

        if (_RefreshContainerMetadataIfNecessary_onceToken != -1)
        {
          __BRGetProcessMobileContainerForID_block_invoke_cold_1();
        }

        v26 = _RefreshContainerMetadataIfNecessary_updateContainerMetadataDateByContainerID;
        objc_sync_enter(v26);
        v27 = [_RefreshContainerMetadataIfNecessary_updateContainerMetadataDateByContainerID objectForKeyedSubscript:v24];
        v28 = [MEMORY[0x1E695DF00] date];
        v29 = v28;
        if (v27 && ([v28 timeIntervalSinceDate:v27], v30 < 10.0))
        {
          v33 = brc_bread_crumbs("_RefreshContainerMetadataIfNecessary", 328);
          v31 = brc_default_log(1, 0);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            __BRGetProcessMobileContainerForID_block_invoke_cold_2();
          }

          objc_sync_exit(v26);
        }

        else
        {
          [_RefreshContainerMetadataIfNecessary_updateContainerMetadataDateByContainerID setObject:v29 forKeyedSubscript:v24];

          objc_sync_exit(v26);
          v32 = +[BRDaemonConnection defaultConnection];
          v26 = [v32 remoteObjectProxy];

          [v26 updateContainerMetadataForID:v24];
        }
      }
    }
  }

LABEL_23:

  __brc_leave_section(&v34);
}

void sub_1AE2AFB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  objc_sync_exit(v10);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

uint64_t BRCurrentProcessIsOwningContainerWithID(void *a1)
{
  v1 = a1;
  if (_BRLoadUbiquityEntitlements_once != -1)
  {
    BRCurrentProcessHasUbiquityContainer_cold_1();
  }

  if (!v1)
  {
    if (![currentProcessUbiquityContainerEntitlements count])
    {
      goto LABEL_5;
    }

LABEL_7:
    v2 = 1;
    goto LABEL_8;
  }

  if ([currentProcessUbiquityContainerEntitlements containsObject:v1])
  {
    goto LABEL_7;
  }

LABEL_5:
  v2 = 0;
LABEL_8:

  return v2;
}

void __brc_leave_section(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = brc_bread_crumbs(a1[1], *(a1 + 4));
      v4 = brc_default_log(1, *(a1 + 20));
      v5 = v4;
      if (v2)
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          __brc_leave_section_cold_1(v3, v2, v5);
        }
      }

      else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v6 = 134218242;
        v7 = v2;
        v8 = 2112;
        v9 = v3;
        _os_log_impl(&dword_1AE2A9000, v5, OS_LOG_TYPE_INFO, "[INFO] ┗%llx %@", &v6, 0x16u);
      }
    }
  }
}

void __LBGetMobileContainerForID_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __LBGetMobileContainerForID_block_invoke_2;
  block[3] = &unk_1E7A15190;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

id BRCopyDisplayNameForContainerAtURL(void *a1, uint64_t a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v5 = [a1 br_containerIDIfIsDocumentsContainerURL];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_25;
  }

  if ([v5 isEqualToString:@"com.apple.CloudDocs"])
  {
    v7 = +[BRContainer localizedNameForDefaultCloudDocsContainer];
    goto LABEL_8;
  }

  if ([v6 isEqualToString:@"com.apple.Desktop"])
  {
    v7 = +[BRContainer localizedNameForDesktopContainer];
    goto LABEL_8;
  }

  if (![v6 isEqualToString:@"com.apple.Documents"])
  {
    v10 = [[BRMangledID alloc] initWithAppLibraryName:v6];
    v11 = +[BRContainerCache containerCache];
    v12 = [v11 containerByID:v10];

    if (v12)
    {
      if (a2)
      {
        v18[0] = a2;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      }

      else
      {
        v13 = 0;
      }

      v15 = [MEMORY[0x1E695DF58] preferredLanguages];
      v16 = [v13 isEqualToArray:v15];

      if (v16)
      {
      }

      else if (v13)
      {
        v8 = [v12 localizedNameWithPreferredLanguages:v13];

        goto LABEL_24;
      }

      v8 = [v12 localizedName];
    }

    else
    {
      v14 = [v6 rangeOfString:@"." options:4];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = 0;
      }

      else
      {
        v8 = [v6 substringFromIndex:v14 + 1];
      }

      if (![v8 length])
      {

        v8 = 0;
      }
    }

LABEL_24:

    if (v8)
    {
      goto LABEL_9;
    }

LABEL_25:
    v9 = 0;
    goto LABEL_26;
  }

  v7 = +[BRContainer localizedNameForDocumentsContainer];
LABEL_8:
  v8 = v7;
  if (!v7)
  {
    goto LABEL_25;
  }

LABEL_9:
  v9 = v8;

LABEL_26:
  objc_autoreleasePoolPop(v4);
  return v9;
}

void sub_1AE2B04D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void BRGetCloudDocsRootURL(void *a1)
{
  v3 = a1;
  v1 = +[BRDaemonConnection mobileDocumentsURL];
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x1E696ABC0] br_errorWithPOSIXCode:2];
  }

  v3[2](v3, v1, v2);
}

void BRPerformWithPersonaAndError(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v3 isEqualToString:@"__defaultPersonaID__"])
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;
  v7 = v3;
  if (!v6)
  {
    if (BRPerformWithPersonaAndError___personaOnceToken != -1)
    {
      BRPerformWithPersonaAndError_cold_1();
    }

    v7 = BRPerformWithPersonaAndError___personalPersona;
  }

  v8 = [MEMORY[0x1E69DF068] sharedManager];
  v9 = [v8 currentPersona];

  v22 = 0;
  v10 = [v9 userPersonaUniqueString];
  v11 = v10;
  if (v10 == v7 || ([v10 isEqualToString:v7] & 1) != 0)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_11;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v21 = 0;
    v12 = [v9 copyCurrentPersonaContextWithError:&v21];
    v14 = v21;
    v22 = v12;
    if (v14)
    {
      v15 = brc_bread_crumbs("BRPerformWithPersonaAndError", 33);
      v16 = brc_default_log(0, 0);
      if (os_log_type_enabled(v16, 0x90u))
      {
        BRPerformWithPersonaAndError_cold_4(v14, v15, v16);
      }
    }

    v13 = [v9 br_generateAndRestorePersonaContextWithPersonaUniqueString:v7];

    if (v13)
    {
      v17 = brc_bread_crumbs("BRPerformWithPersonaAndError", 33);
      v18 = brc_default_log(0, 0);
      if (os_log_type_enabled(v18, 0x90u))
      {
        *buf = 138412802;
        v24 = v3;
        v25 = 2112;
        v26 = v13;
        v27 = 2112;
        v28 = v17;
        _os_log_error_impl(&dword_1AE2A9000, v18, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_28:
    }
  }

  else
  {
    if (!v6 && ([v9 isDataSeparatedPersona] & 1) == 0)
    {
      v17 = brc_bread_crumbs("BRPerformWithPersonaAndError", 33);
      v18 = brc_default_log(1, 0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        __br_notify_register_dispatch_block_invoke_cold_2_0(v17, v18);
      }

      v12 = 0;
      v13 = 0;
      goto LABEL_28;
    }

    v19 = brc_bread_crumbs("BRPerformWithPersonaAndError", 33);
    v20 = brc_default_log(1, 0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      __br_notify_register_dispatch_block_invoke_cold_3_0(v19, v20);
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    v12 = 0;
  }

LABEL_11:
  v4[2](v4, v13);

  _BRRestorePersona(&v22);
}

void sub_1AE2B0A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _BRRestorePersona(va);
  _Unwind_Resume(a1);
}

void _BRRestorePersona(void *a1)
{
  if (*a1)
  {
    v2 = [MEMORY[0x1E69DF068] sharedManager];
    v4 = [v2 currentPersona];

    v3 = [v4 br_restorePersonaWithSavedPersonaContext:*a1];
  }
}

id _BRLocalizedStringWithFormat(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = MEMORY[0x1E696AEC0];
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = [v11 alloc];
  v16 = _BRLocalizedString(v14, v13, v12);

  v17 = [MEMORY[0x1E695DF58] currentLocale];
  v18 = [v15 initWithFormat:v16 locale:v17 arguments:&a9];

  return v18;
}

__CFString *_BRLocalizedString(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    _BRLocalizedString_cold_1();
  }

  v8 = [v7 localizedStringForKey:v5 value:@"BRC_LOCALIZED_STRING_UNAVAILABLE" table:v6];
  if (v8 == @"BRC_LOCALIZED_STRING_UNAVAILABLE")
  {
    v9 = brc_bread_crumbs("_BRLocalizedString", 39);
    v10 = brc_default_log(0, 0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v12 = [v7 bundlePath];
      v13 = 138413058;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v9;
      _os_log_fault_impl(&dword_1AE2A9000, v10, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Could not find localized string value for key %@ in %@ at %@%@", &v13, 0x2Au);
    }
  }

  return v8;
}

void __schedule_fire_after_delay_block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 24));
  dispatch_source_cancel(*(*(a1 + 32) + 16));
  fire(*(a1 + 32));
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  objc_sync_exit(obj);
}

void fire(void *a1)
{
  v2 = a1;
  dispatch_assert_queue_V2(v2[3]);
  *(v2 + 5) = CFAbsoluteTimeGetCurrent();
  if (v2[4])
  {
    v1 = objc_autoreleasePoolPush();
    (v2[4][2].isa)();
    objc_autoreleasePoolPop(v1);
  }
}

__CFString *BRCPrettyPrintBitmap(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x1E696AD60] stringWithCapacity:255];
  v5 = a2[1];
  if (v5)
  {
    v6 = a2;
    do
    {
      v8 = *v6;
      v6 += 2;
      v7 = v8;
      if ((v8 & ~a1) == 0 && (v7 || a1 == 0))
      {
        [v4 appendFormat:@"%s|", v5];
        a1 ^= v7;
      }

      v5 = a2[3];
      a2 = v6;
    }

    while (v5);
  }

  if (a1)
  {
    [v4 appendFormat:@"0x%llx", a1];
LABEL_15:
    v10 = v4;
    goto LABEL_16;
  }

  if ([v4 length])
  {
    [v4 deleteCharactersInRange:{objc_msgSend(v4, "length") - 1, 1}];
    goto LABEL_15;
  }

  v10 = &stru_1F23D4ED0;
LABEL_16:

  return v10;
}

void br_pacer_pretend_event_handler_fired(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v1[5] = CFAbsoluteTimeGetCurrent();
    v2 = v1;
    objc_sync_enter(v2);
    dispatch_source_cancel(v2[1]);
    v3 = v2[1];
    v2[1] = 0;

    _br_pacer_create_source(v2);
    objc_sync_exit(v2);
  }

  else
  {
    v2 = brc_bread_crumbs("br_pacer_pretend_event_handler_fired", 177);
    v4 = brc_default_log(0, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      br_pacer_pretend_event_handler_fired_cold_1(v2, v4);
    }
  }
}

void _br_pacer_create_source(void *a1)
{
  v1 = a1;
  v2 = dispatch_source_create(MEMORY[0x1E69E96B8], 0, 0, v1[3]);
  v3 = v1[1];
  v1[1] = v2;

  v4 = v1[1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___br_pacer_create_source_block_invoke;
  v12[3] = &unk_1E7A14798;
  v5 = v1;
  v13 = v5;
  v6 = v4;
  v7 = v12;
  v8 = v7;
  v9 = v7;
  if (brc_block_remember_persona)
  {
    v9 = brc_block_remember_persona(v7);
  }

  v10 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v9);
  dispatch_source_set_event_handler(v6, v10);

  v11 = atomic_load(v5 + 56);
  if (v11)
  {
    dispatch_resume(v1[1]);
  }
}

id brc_notifications_log()
{
  v0 = *__error();
  v1 = [MEMORY[0x1E69DF068] sharedManager];
  v2 = [v1 currentPersona];
  v3 = [v2 isDataSeparatedPersona];

  if (+[BRContainerCache isPersonalProvider])
  {
    if (!v3)
    {
      goto LABEL_6;
    }

    v4 = brc_bread_crumbs("brc_notifications_log", 99);
    v5 = brc_default_log(0, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      brc_default_log_cold_3();
    }
  }

  else
  {
    if (v3 & 1 | !+[BRContainerCache isManagedProvider])
    {
      goto LABEL_6;
    }

    v4 = brc_bread_crumbs("brc_notifications_log", 101);
    v5 = brc_default_log(0, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      brc_default_log_cold_2();
    }
  }

LABEL_6:
  if (brc_notifications_log_once != -1)
  {
    brc_notifications_log_cold_3();
  }

  *__error() = v0;
  v6 = &brc_notifications_log_loggerEnterprise;
  if (!v3)
  {
    v6 = &brc_notifications_log_loggerPersonal;
  }

  v7 = *v6;

  return v7;
}

void ___br_pacer_create_source_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(v1[3]);
  v7 = v1;
  Current = CFAbsoluteTimeGetCurrent();
  v3 = v7[5];
  if (v3 == 0.0 || (v4 = Current - v3, v5 = v7[6], v4 >= v5))
  {
  }

  else
  {
    v6 = v5 - v4;

    if (v6 > 0.0)
    {
      schedule_fire_after_delay(v7, v6);
      goto LABEL_7;
    }
  }

  fire(v7);
LABEL_7:
}

void schedule_fire_after_delay(void *a1, double a2)
{
  v3 = a1;
  objc_sync_enter(v3);
  if (v3[2])
  {
    dispatch_assert_queue_V2(v3[3]);
    dispatch_source_cancel(v3[2]);
    v4 = v3[2];
    v3[2] = 0;
  }

  v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v3[3]);
  v6 = v3[2];
  v3[2] = v5;

  v7 = v3[2];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __schedule_fire_after_delay_block_invoke;
  v17[3] = &unk_1E7A14798;
  v8 = v3;
  v18 = v8;
  v9 = v7;
  v10 = v17;
  v11 = v9;
  v12 = v10;
  v13 = v12;
  v14 = v12;
  if (brc_block_remember_persona)
  {
    v14 = brc_block_remember_persona(v12);
  }

  v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v14);
  dispatch_source_set_event_handler(v11, v15);

  v16 = dispatch_time(0, (a2 * 1000000000.0));
  dispatch_source_set_timer(v3[2], v16, 0xFFFFFFFFFFFFFFFFLL, (a2 * 1000000000.0));
  dispatch_resume(v3[2]);

  objc_sync_exit(v8);
}

uint64_t BRCurrentPersonaMatchesID(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E69DF068] sharedManager];
  v3 = [v2 br_currentPersonaID];

  v4 = [v3 isEqualToString:v1];
  if ((v4 & 1) == 0)
  {
    v5 = brc_bread_crumbs("BRCurrentPersonaMatchesID", 109);
    v6 = brc_default_log(1, 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412802;
      v9 = v3;
      v10 = 2112;
      v11 = v1;
      v12 = 2112;
      v13 = v5;
      _os_log_debug_impl(&dword_1AE2A9000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] current persona (%@) and persona (%@) don't match%@", &v8, 0x20u);
    }
  }

  return v4;
}

uint64_t BRCurrentPersonaIsDataSeparated()
{
  v0 = [MEMORY[0x1E69DF068] sharedManager];
  v1 = [v0 currentPersona];
  v2 = [v1 isDataSeparatedPersona];

  return v2;
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_0_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

const char *_extensionInFilename(char *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = strrchr(a1, 46);
  v5 = 0;
  if (v4)
  {
    v6 = v4;
    if (v4 != a1)
    {
      v5 = v4 + 1;
      if (strlen(v4 + 1) > 0x32)
      {
        return 0;
      }

      v8 = v6 + 1;
      if (a2)
      {
        goto LABEL_8;
      }

      v11 = *v5;
      if (v11 == 103)
      {
        if (v6[2] == 122 && !v6[3] || !strcmp(v5, "bz2"))
        {
          goto LABEL_28;
        }

LABEL_8:
        v9 = 0;
        while (1)
        {
          v10 = *v8;
          if (!*v8)
          {
            break;
          }

          if (v10 == 32 || v10 == 47)
          {
            return 0;
          }

          v9 |= (v10 - 58) < 0xFFFFFFF6;
          ++v8;
        }

        if ((v9 & 1) == 0)
        {
          return 0;
        }

        return v5;
      }

      if (strcmp(v5, "bz2"))
      {
        if (v11 == 120)
        {
          if (v6[2] != 122 || v6[3])
          {
            goto LABEL_8;
          }
        }

        else if (v11 != 90 || v6[2])
        {
          goto LABEL_8;
        }
      }

LABEL_28:
      v12 = strdup(a1);
      v12[~a1 + v5] = 0;
      v13 = _extensionInFilename(v12, v5);
      if (v13)
      {
        v5 = &a1[v13 - v12];
      }

      free(v12);
    }
  }

  return v5;
}

void br_pacer_signal(void *a1)
{
  obj = a1;
  objc_sync_enter(obj);
  dispatch_source_merge_data(obj[1], 1uLL);
  objc_sync_exit(obj);
}

void *_br_parseUUIDString(void *a1, unsigned __int8 *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  result = [a1 getCString:__s maxLength:256 encoding:4];
  if (result)
  {
    if (strlen(__s) == 36)
    {
      return (uuid_parse(__s, a2) == 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const char *BRCPrettyPrintEnum(uint64_t a1, void *a2)
{
  result = a2[1];
  if (!result)
  {
    return "<unknown>";
  }

  if (*a2 != a1)
  {
    v4 = a2 + 3;
    result = "<unknown>";
    while (1)
    {
      v5 = *v4;
      if (!*v4)
      {
        break;
      }

      v6 = *(v4 - 1);
      v4 += 2;
      if (v6 == a1)
      {
        return v5;
      }
    }
  }

  return result;
}

void br_pacer_signal_at_most_after_min_interval(void *a1)
{
  obj = a1;
  objc_sync_enter(obj);
  if (!*(obj + 2))
  {
    schedule_fire_after_delay(obj, obj[6]);
  }

  objc_sync_exit(obj);
}

__CFString *BRQueryItemFieldsPrettyPrint(unsigned int a1)
{
  if (a1 == 0xFFFF)
  {
    v2 = @"all";
  }

  else
  {
    v2 = BRCPrettyPrintBitmap(a1, br_notifs_fields_entries);
  }

  return v2;
}

id BRLocalizedFileSizeDescriptionWithExactCount(uint64_t a1)
{
  if (a1 < 1000)
  {
    v4 = BRLocalizedFileSizeDescription(a1);
  }

  else
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = BRLocalizedFileSizeDescription(a1);
    v4 = [v2 stringWithFormat:@"%@ (%lld)", v3, a1];
  }

  return v4;
}

id BRLocalizedFileSizeDescription(uint64_t a1)
{
  if (a1 < 0)
  {
    v2 = NSLocalizedFileSizeDescription();
    v1 = [@"-" stringByAppendingString:v2];
  }

  else
  {
    v1 = NSLocalizedFileSizeDescription();
  }

  return v1;
}

uint64_t offsetOfPackageRootFilenameInPath(void *a1, void *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if ([v3 length])
  {
    v41 = a2;
    v40 = v3;
    v4 = [v3 fileSystemRepresentation];
    v47[0] = 47;
    v5 = v47;
    v6 = __strlcpy_chk();
    if ((v6 + 2) >= 0x400)
    {
      v5 = malloc_type_malloc(v6 + 2, 0xAB37F683uLL);
      *v5 = 47;
      memcpy(v5 + 1, v4, v6 + 1);
    }

    v39 = v4;
    v38 = v5 + 1;
    __stringp = v5 + 1;
    v7 = "/";
    v8 = 0x1E696A000uLL;
    v42 = *MEMORY[0x1E695DBA0];
    v9 = "key";
    v43 = v5;
    do
    {
      v10 = strsep(&__stringp, v7);
      *(v10 - 1) = 47;
      v11 = extensionInFilename(v10);
      if (v11)
      {
        v12 = v11;
        v13 = [*(v8 + 3776) stringWithUTF8String:v11];
        if (([v13 brc_isBlacklistedPackageExtension] & 1) == 0)
        {
          if (([v13 brc_isForcedPackageExtension] & 1) != 0 || !strcasecmp(v12, v9) || !strcasecmp(v12, "key-tef") || !strcasecmp(v12, "pages") || !strcasecmp(v12, "pages-tef") || !strcasecmp(v12, "numbers") || !strcasecmp(v12, "numbers-tef") || !strcasecmp(v12, "band") || !strcasecmp(v12, "rtfd") || !strcasecmp(v12, "app") || !strcasecmp(v12, "bundle") || !strcasecmp(v12, "pkg") || !strcasecmp(v12, "logarchive"))
          {
            goto LABEL_44;
          }

          explicit = atomic_load_explicit(packageRootFilenameInPath_root_fd, memory_order_acquire);
          if (explicit < 0)
          {
            v15 = open(v7, 33028);
            if ((v15 & 0x80000000) == 0)
            {
              v16 = atomic_exchange(packageRootFilenameInPath_root_fd, v15);
              if ((v16 & 0x80000000) == 0)
              {
                close(v16);
              }
            }

            explicit = atomic_load_explicit(packageRootFilenameInPath_root_fd, memory_order_acquire);
          }

          if ((fcntl(explicit, 52, v10 - 1) & 0x80000000) == 0)
          {
            v31 = brc_bread_crumbs("packageRootFilenameInPath", 413);
            v32 = brc_default_log(1, 0);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              offsetOfPackageRootFilenameInPath_cold_1();
            }

            v33 = *(v8 + 3776);
            v22 = [v33 stringWithUTF8String:v12];
            [v33 brc_addForcedPackageExtension:v22];
            goto LABEL_43;
          }

          v17 = v9;
          v18 = v7;
          v19 = MEMORY[0x1E695DFF8];
          v20 = v8;
          v21 = [*(v8 + 3776) stringWithUTF8String:v5];
          v22 = [v19 fileURLWithPath:v21];

          v44 = 0;
          v45 = 0;
          v23 = [v22 getResourceValue:&v45 forKey:v42 error:&v44];
          v24 = v45;
          v25 = v44;
          v26 = v25;
          if (v23)
          {
            if ([v24 BOOLValue])
            {
              v34 = v20;
              v35 = *(v20 + 3776);
              v36 = [v35 stringWithUTF8String:v12];
              [v35 brc_addForcedPackageExtension:v36];

              v8 = v34;
              v5 = v43;
LABEL_43:

LABEL_44:
              v30 = &v10[strlen(v10)] - v38;
              if (v41)
              {
                *&v5[v30 + 1] = 47;
                *v41 = [*(v8 + 3776) br_pathWithFileSystemRepresentation:?];
              }

              if (v39[v30] == 47)
              {
                ++v30;
              }

              goto LABEL_48;
            }
          }

          else if (([v25 br_isCocoaErrorCode:260] & 1) == 0)
          {
            v27 = brc_bread_crumbs("packageRootFilenameInPath", 425);
            v28 = brc_default_log(1, 0);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = [v22 path];
              *buf = 138412802;
              v49 = v29;
              v50 = 2112;
              v51 = v26;
              v52 = 2112;
              v53 = v27;
              _os_log_impl(&dword_1AE2A9000, v28, OS_LOG_TYPE_DEFAULT, "[WARNING] can't get whether %@ is a package: %@%@", buf, 0x20u);
            }
          }

          v8 = v20;
          v7 = v18;
          v9 = v17;
          v5 = v43;
        }
      }
    }

    while (__stringp);
    if (v41)
    {
      *v41 = 0;
    }

    v30 = -1;
LABEL_48:
    v3 = v40;
    if (v5 != v47)
    {
      free(v5);
    }
  }

  else
  {
    v30 = -1;
  }

  return v30;
}

__CFString *_getContentTypeValue(void *a1, char a2)
{
  v3 = a1;
  if ([v3 isDirectory])
  {
    v4 = MEMORY[0x1E6982DC8];
LABEL_7:
    PreferredIdentifierForTag = [*v4 identifier];
    goto LABEL_8;
  }

  if ([v3 isFinderBookmark])
  {
    v4 = MEMORY[0x1E6982C80];
    goto LABEL_7;
  }

  if ([v3 isSymlink])
  {
    v4 = MEMORY[0x1E6982FF8];
    goto LABEL_7;
  }

  if ((a2 & 1) == 0)
  {
    if ([v3 isPackage])
    {
      v4 = MEMORY[0x1E6982F30];
    }

    else
    {
      [v3 isDocument];
      v4 = MEMORY[0x1E6982D60];
    }

    goto LABEL_7;
  }

  if ([v3 isPackage])
  {
    v7 = *MEMORY[0x1E6963868];
  }

  else
  {
    v7 = *MEMORY[0x1E6963800];
    if ([v3 isDocument])
    {
      v7 = *MEMORY[0x1E6963798];
    }
  }

  v8 = [v3 logicalName];
  v9 = [v8 br_pathExtension];
  v10 = v9;
  v11 = &stru_1F23D4ED0;
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  if ([(__CFString *)v12 rangeOfString:@"."]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    if (([(__CFString *)v12 isEqualToString:@"tar.gz"]& 1) != 0)
    {
      v13 = @"tgz";
    }

    else
    {
      v13 = [(__CFString *)v12 pathExtension];
    }

    v12 = v13;
  }

  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963710], v12, v7);

LABEL_8:

  return PreferredIdentifierForTag;
}

uint64_t _getIsUploading(void *a1)
{
  v1 = a1;
  v2 = [v1 isNetworkOffline];
  v3 = MEMORY[0x1E695E110];
  if ((v2 & 1) == 0)
  {
    v4 = [v1 br_uploadStatus];
    if ((v4 - 1) < 2)
    {
      v7 = [v1 attributeForKey:@"ulErr"];

      if (!v7)
      {
        v3 = MEMORY[0x1E695E118];
      }
    }

    else
    {
      if (!v4)
      {
LABEL_8:
        v3 = 0;
        goto LABEL_11;
      }

      if (v4 != 3)
      {
        v5 = brc_bread_crumbs("_getIsUploading", 402);
        v6 = brc_default_log(0, 0);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          __25__BRQueryItem_initialize__block_invoke_18_cold_1();
        }

        goto LABEL_8;
      }
    }
  }

LABEL_11:

  return v3;
}

uint64_t _getIsDownloading(void *a1)
{
  v1 = a1;
  if ([v1 isNetworkOffline])
  {
    goto LABEL_4;
  }

  v2 = [v1 br_downloadStatus];
  if (!v2)
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (v2 == 3)
  {
LABEL_4:
    v3 = MEMORY[0x1E695E110];
  }

  else
  {
    v5 = [v1 isDownloadRequested];
    v6 = [v5 BOOLValue];

    v3 = MEMORY[0x1E695E110];
    if (v6)
    {
      v7 = [v1 attributeForKey:@"dlErr"];

      if (!v7)
      {
        v3 = MEMORY[0x1E695E118];
      }
    }
  }

LABEL_5:

  return v3;
}

void sub_1AE2B7450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE2B7694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, 0x90u, a4, va, 0x16u);
}

br_pacer *br_pacer_create(const char *a1, void *a2, double a3)
{
  v5 = a2;
  v6 = objc_alloc_init(br_pacer);
  v6->min_fire_interval = a3;
  if (v5)
  {
    v7 = v5;
    queue = v6->queue;
    v6->queue = v7;
  }

  else
  {
    queue = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(queue, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(a1, v9);

    v11 = v6->queue;
    v6->queue = v10;
  }

  _br_pacer_create_source(v6);

  return v6;
}

void br_pacer_set_event_handler(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  v4 = v3;
  if (brc_block_remember_persona)
  {
    v5 = brc_block_remember_persona(v3);

    v4 = v5;
  }

  v6 = MEMORY[0x1B26FEA90](v4);
  v7 = v8[4];
  v8[4] = v6;
}

void br_pacer_cancel(void *a1)
{
  obj = a1;
  objc_sync_enter(obj);
  v1 = obj[1];
  if (v1)
  {
    dispatch_source_cancel(v1);
    dispatch_activate(obj[1]);
  }

  v2 = obj[2];
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_activate(obj[2]);
  }

  objc_sync_exit(obj);
}

void br_pacer_resume(unsigned __int8 *a1)
{
  atomic_store(1u, a1 + 56);
  obj = a1;
  objc_sync_enter(obj);
  dispatch_resume(*(obj + 1));
  objc_sync_exit(obj);
}

void br_pacer_suspend(void *a1)
{
  obj = a1;
  objc_sync_enter(obj);
  dispatch_suspend(obj[1]);
  objc_sync_exit(obj);
}

uint64_t BRServerInfoRecordInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v14 = PBReaderReadString();
            v15 = 56;
            goto LABEL_44;
          }

          if (v13 == 8)
          {
            v14 = PBReaderReadData();
            v15 = 64;
            goto LABEL_44;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v14 = PBReaderReadString();
            v15 = 32;
            goto LABEL_44;
          }

          if (v13 == 6)
          {
            v14 = PBReaderReadData();
            v15 = 48;
            goto LABEL_44;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadData();
          v15 = 16;
          goto LABEL_44;
        }

        if (v13 == 4)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 72) |= 1u;
          while (1)
          {
            v27 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v27 & 0x7F) << v16;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_52:
          *(a1 + 8) = v22;
          goto LABEL_45;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 40;
          goto LABEL_44;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 24;
LABEL_44:
          v23 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_45;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_45:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t brc_notify_post(char *name)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!name)
  {
    brc_notify_post_cold_1();
  }

  v2 = notify_post(name);
  if (v2)
  {
    v3 = brc_bread_crumbs("brc_notify_post", 39);
    v4 = brc_default_log(0, 0);
    if (os_log_type_enabled(v4, 0x90u))
    {
      v6 = 136315906;
      v7 = name;
      v8 = 2080;
      v9 = brc_prettyprint_notify_status(v2);
      v10 = 1024;
      v11 = v2;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_1AE2A9000, v4, 0x90u, "[ERROR] notify_post(%s) failed with %s (%d)%@", &v6, 0x26u);
    }
  }

  return v2;
}

const char *brc_prettyprint_notify_status(int a1)
{
  if (a1 > 4)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        return "'not_authorized'";
      }

      if (a1 == 1000000)
      {
        return "'failed'";
      }

      return "unknown status";
    }

    if (a1 == 5)
    {
      return "'invalid_signal'";
    }

    else
    {
      return "'invalid_request'";
    }
  }

  else
  {
    if (a1 <= 2)
    {
      if (a1 == 1)
      {
        return "'invalid_name'";
      }

      if (a1 == 2)
      {
        return "'invalid_token'";
      }

      return "unknown status";
    }

    if (a1 == 3)
    {
      return "'invalid_port'";
    }

    else
    {
      return "'invalid_file'";
    }
  }
}

uint64_t brc_notify_set_state_and_post(int a1, uint64_t a2, char *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = brc_bread_crumbs("brc_notify_set_state_and_post", 46);
  v7 = brc_default_log(1, 0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315906;
    *v15 = a3;
    *&v15[8] = 1024;
    *&v15[10] = a1;
    v16 = 2048;
    v17 = a2;
    v18 = 2112;
    *v19 = v6;
    _os_log_debug_impl(&dword_1AE2A9000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] notifying '%s' on token %d with state %llu%@", &v14, 0x26u);
  }

  if (a1 == -1)
  {
    return 2;
  }

  v8 = notify_set_state(a1, a2);
  if (!v8)
  {
    return brc_notify_post(a3);
  }

  v9 = v8;
  v10 = brc_bread_crumbs("brc_notify_set_state_and_post", 54);
  v11 = brc_default_log(0, 0);
  if (os_log_type_enabled(v11, 0x90u))
  {
    v13 = brc_prettyprint_notify_status(v9);
    v14 = 67110402;
    *v15 = a1;
    *&v15[4] = 2048;
    *&v15[6] = a2;
    v16 = 2080;
    v17 = v13;
    v18 = 1024;
    *v19 = v9;
    *&v19[4] = 2080;
    *&v19[6] = a3;
    v20 = 2112;
    v21 = v10;
    _os_log_error_impl(&dword_1AE2A9000, v11, 0x90u, "[ERROR] notify_set_state(%d, %llu) failed with %s (%d) for '%s'%@", &v14, 0x36u);
  }

  return v9;
}

uint64_t brc_notify_register_check(const char *a1, int *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = notify_register_check(a1, a2);
  if (v3)
  {
    v4 = brc_bread_crumbs("brc_notify_register_check", 79);
    v5 = brc_default_log(0, 0);
    if (os_log_type_enabled(v5, 0x90u))
    {
      v7 = 136315906;
      v8 = a1;
      v9 = 2080;
      v10 = brc_prettyprint_notify_status(v3);
      v11 = 1024;
      v12 = v3;
      v13 = 2112;
      v14 = v4;
      _os_log_error_impl(&dword_1AE2A9000, v5, 0x90u, "[ERROR] notify_register_check(%s) failed with %s (%d)%@", &v7, 0x26u);
    }
  }

  return v3;
}

void sub_1AE2B9E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __brc_leave_section(&a9);
  objc_sync_exit(v9);
  _Unwind_Resume(a1);
}

void sub_1AE2BA4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _BRRestorePersona(va);
  _Unwind_Resume(a1);
}

void sub_1AE2BA9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _BRRestorePersona(va);
  _Unwind_Resume(a1);
}

void sub_1AE2BB12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _BRRestorePersona(va);
  _Unwind_Resume(a1);
}

void sub_1AE2BBD94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _BRRestorePersona(va);
  _Unwind_Resume(a1);
}

void BRPerformWithAccountDescriptor(void *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __BRPerformWithAccountDescriptor_block_invoke;
  v5[3] = &unk_1E7A148D0;
  v6 = v3;
  v4 = v3;
  BRPerformWithAccountDescriptorAndError(a1, v5);
}

void BRPerformWithAccountDescriptorAndError(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 personaIdentifier];
  BRPerformWithPersonaAndError(v4, v3);
}

void __br_notify_register_dispatch_block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) isEqualToString:@"__defaultPersonaID__"] & 1) != 0 || (v2 = *(a1 + 32)) == 0)
  {
    if (BRPreserveUploadedDataXattrKey_block_invoke___personaOnceToken != -1)
    {
      __br_notify_register_dispatch_block_invoke_cold_1();
    }

    v3 = BRPreserveUploadedDataXattrKey_block_invoke___personalPersona;
    v4 = 1;
  }

  else
  {
    v3 = v2;
    v4 = 0;
  }

  v5 = [MEMORY[0x1E69DF068] sharedManager];
  v6 = [v5 currentPersona];

  v27 = 0;
  v7 = [v6 userPersonaUniqueString];
  v8 = v7;
  if (v7 == v3 || ([v7 isEqualToString:v3] & 1) != 0)
  {
    goto LABEL_9;
  }

  if (!voucher_process_can_use_arbitrary_personas())
  {
    if (v4 && ([v6 isDataSeparatedPersona] & 1) == 0)
    {
      v21 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 110);
      v22 = brc_default_log(1, 0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [BRAccount containerWithPendingChanges];
      }
    }

    else
    {
      v17 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 110);
      v18 = brc_default_log(1, 0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [BRAccount containerWithPendingChanges];
      }

      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      if (v14)
      {
        goto LABEL_25;
      }
    }

LABEL_9:
    (*(*(a1 + 40) + 16))();
    goto LABEL_10;
  }

  v26 = 0;
  v9 = [v6 copyCurrentPersonaContextWithError:&v26];
  v10 = v26;
  v11 = v27;
  v27 = v9;

  if (v10)
  {
    v12 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 110);
    v13 = brc_default_log(0, 0);
    if (os_log_type_enabled(v13, 0x90u))
    {
      [BRAccount containerWithPendingChanges];
    }
  }

  v14 = [v6 br_generateAndRestorePersonaContextWithPersonaUniqueString:v3];

  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 110);
  v16 = brc_default_log(0, 0);
  if (os_log_type_enabled(v16, 0x90u))
  {
    v25 = *(a1 + 32);
    *buf = 138412802;
    v29 = v25;
    v30 = 2112;
    v31 = v14;
    v32 = 2112;
    v33 = v15;
    _os_log_error_impl(&dword_1AE2A9000, v16, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
  }

LABEL_25:
  v19 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 112);
  v20 = brc_default_log(0, 0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    v23 = *(a1 + 48);
    v24 = [v14 localizedDescription];
    *buf = 136315650;
    v29 = v23;
    v30 = 2112;
    v31 = v24;
    v32 = 2112;
    v33 = v19;
    _os_log_fault_impl(&dword_1AE2A9000, v20, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Failed to adopt persona for notification %s due to %@%@", buf, 0x20u);
  }

LABEL_10:
  _BRRestorePersona(&v27);
}

void sub_1AE2BE214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _BRRestorePersona(va);
  _Unwind_Resume(a1);
}

void __br_notify_register_dispatch_block_invoke_2()
{
  v2 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = BRPreserveUploadedDataXattrKey_block_invoke___personalPersona;
  BRPreserveUploadedDataXattrKey_block_invoke___personalPersona = v0;
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, 0x90u, a4, a5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_8(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_10_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

id _getCloudDocsAppSupportURL()
{
  v0 = 0;
  do
  {
    v1 = +[BRDaemonConnection cloudDocsAppSupportURL];
    if (v1)
    {
      v2 = 1;
    }

    else
    {
      v2 = v0 >= 2;
    }

    ++v0;
  }

  while (!v2);

  return v1;
}

void sub_1AE2BFB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_1AE2C0010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_1AE2C082C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void __dispatch_async_with_logs_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v2 = brc_bread_crumbs("dispatch_async_with_logs_block_invoke", 285);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v8 = v5;
    v9 = 2080;
    v10 = label;
    v11 = 2112;
    v12 = v2;
    _os_log_debug_impl(&dword_1AE2A9000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v5);
}

uint64_t brc_xattr_set_string(int fd, char *name, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (([a3 getCString:__s maxLength:1024 encoding:4] & 1) == 0)
    {
      v5 = brc_bread_crumbs("brc_xattr_set_string", 44);
      v6 = brc_default_log(0, 0);
      if (os_log_type_enabled(v6, 0x90u))
      {
        brc_xattr_set_string_cold_1();
      }
    }

    v7 = strlen(__s);
    return fsetxattr(fd, name, __s, v7 + 1, 0, 0);
  }

  else
  {

    return fremovexattr(fd, name, 0);
  }
}

void sub_1AE2C17F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_1AE2C1B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1AE2C26D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id OSVersion(uint64_t a1)
{
  if (OSVersion_pred != -1)
  {
    OSVersion_cold_1();
  }

  v2 = OSVersion_OSVersion;

  return v2;
}

void __OSVersion_block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  *v6 = 0x4100000001;
  v5 = 20;
  if (sysctl(v6, 2u, v7, &v5, 0, 0) < 0)
  {
    v2 = *__error();
    v3 = brc_bread_crumbs("OSVersion_block_invoke", 24);
    v4 = brc_default_log(0, 0);
    if (os_log_type_enabled(v4, 0x90u))
    {
      __OSVersion_block_invoke_cold_1(v3, v2, v4);
    }

    *__error() = v2;
  }

  else
  {
    v7[19] = 0;
    v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v7];
    v1 = OSVersion_OSVersion;
    OSVersion_OSVersion = v0;
  }
}

void BRTelemetryReportShareInvitation(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a5;
  v13 = objc_opt_new();
  v14 = v13;
  if (v9)
  {
    [v13 setValue:v9 forKey:@"access"];
  }

  if (v10)
  {
    [v14 setValue:v10 forKey:@"transport"];
  }

  if (v11)
  {
    v15 = [MEMORY[0x1E695DF00] date];
    [v15 timeIntervalSinceDate:v11];
    v17 = v16;

    v18 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
    [v14 setValue:v18 forKey:@"timeTakenToSaveShare"];
  }

  else
  {
    v17 = -1.0;
  }

  if (a4 > 1)
  {
    if (a4 == 3)
    {
      v19 = @"readWrite";
LABEL_19:
      [v14 setValue:v19 forKey:@"permission"];
      if (!v12)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    if (a4 == 2)
    {
      v19 = @"readOnly";
      goto LABEL_19;
    }

LABEL_15:
    v19 = @"unknown";
    goto LABEL_19;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      v19 = @"none";
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v19 = @"unknown";
  if (v12)
  {
LABEL_20:
    v20 = MEMORY[0x1E696AEC0];
    v21 = [v12 domain];
    v22 = [v20 stringWithFormat:@"%@.%ld", v21, objc_msgSend(v12, "code")];

    [v14 setValue:v22 forKey:@"error"];
  }

LABEL_21:
  v23 = brc_bread_crumbs("BRTelemetryReportShareInvitation", 74);
  v24 = brc_default_log(1, 0);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413570;
    v26 = v9;
    v27 = 2112;
    v28 = v10;
    v29 = 2112;
    v30 = v19;
    v31 = 2048;
    v32 = v17;
    v33 = 2112;
    v34 = v12;
    v35 = 2112;
    v36 = v23;
    _os_log_debug_impl(&dword_1AE2A9000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] BRTelemetry sending new share invitation report with access = %@, transport = %@, permission = %@, duration = %f, error = %@%@", buf, 0x3Eu);
  }

  BRTelemetrySendEventToCoreAnalytics(@"com.apple.clouddocsUI.shareInvitation", v14);
}

void BRTelemetrySendEventToCoreAnalytics(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  AnalyticsIsEventUsed();
  v6 = v3;
  v5 = v3;
  AnalyticsSendEventLazy();
}

void BRTelemetryReportAddPeopleDisplayed(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = v2;
  if (v1)
  {
    [v2 setValue:v1 forKey:@"access"];
  }

  v4 = brc_bread_crumbs("BRTelemetryReportAddPeopleDisplayed", 83);
  v5 = brc_default_log(1, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    BRTelemetryReportAddPeopleDisplayed_cold_1(v1, v4, v5);
  }

  BRTelemetrySendEventToCoreAnalytics(@"com.apple.clouddocsUI.addPeopleDisplayed", v3);
}

void BRTelemetryReportSettingUpiCloudDriveDisplay(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  if (v1)
  {
    v3 = [MEMORY[0x1E695DF00] date];
    [v3 timeIntervalSinceDate:v1];
    v5 = v4;

    v6 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
    [v2 setValue:v6 forKey:@"duration"];

    v7 = *&v5;
  }

  else
  {
    v7 = 0xBFF0000000000000;
  }

  v8 = brc_bread_crumbs("BRTelemetryReportSettingUpiCloudDriveDisplay", 94);
  v9 = brc_default_log(1, 0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    BRTelemetryReportSettingUpiCloudDriveDisplay_cold_1(v8, v7, v9);
  }

  BRTelemetrySendEventToCoreAnalytics(@"com.apple.clouddocsUI.settingUpiCloudDrive", v2);
}

__darwin_time_t brc_current_date_nsec()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return 1000000000 * v1.tv_sec + 1000 * v1.tv_usec;
}

void __br_notify_register_dispatch_block_invoke_0(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) isEqualToString:@"__defaultPersonaID__"] & 1) != 0 || (v2 = *(a1 + 32)) == 0)
  {
    if (_block_invoke___personaOnceToken != -1)
    {
      __br_notify_register_dispatch_block_invoke_cold_1_0();
    }

    v3 = _block_invoke___personalPersona;
    v4 = 1;
  }

  else
  {
    v3 = v2;
    v4 = 0;
  }

  v5 = [MEMORY[0x1E69DF068] sharedManager];
  v6 = [v5 currentPersona];

  v27 = 0;
  v7 = [v6 userPersonaUniqueString];
  v8 = v7;
  if (v7 == v3 || ([v7 isEqualToString:v3] & 1) != 0)
  {
    goto LABEL_9;
  }

  if (!voucher_process_can_use_arbitrary_personas())
  {
    if (v4 && ([v6 isDataSeparatedPersona] & 1) == 0)
    {
      v21 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 110);
      v22 = brc_default_log(1, 0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        __br_notify_register_dispatch_block_invoke_cold_2();
      }
    }

    else
    {
      v17 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 110);
      v18 = brc_default_log(1, 0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        __br_notify_register_dispatch_block_invoke_cold_3();
      }

      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      if (v14)
      {
        goto LABEL_25;
      }
    }

LABEL_9:
    (*(*(a1 + 40) + 16))();
    goto LABEL_10;
  }

  v26 = 0;
  v9 = [v6 copyCurrentPersonaContextWithError:&v26];
  v10 = v26;
  v11 = v27;
  v27 = v9;

  if (v10)
  {
    v12 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 110);
    v13 = brc_default_log(0, 0);
    if (os_log_type_enabled(v13, 0x90u))
    {
      __br_notify_register_dispatch_block_invoke_cold_4();
    }
  }

  v14 = [v6 br_generateAndRestorePersonaContextWithPersonaUniqueString:v3];

  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 110);
  v16 = brc_default_log(0, 0);
  if (os_log_type_enabled(v16, 0x90u))
  {
    v25 = *(a1 + 32);
    *buf = 138412802;
    v29 = v25;
    v30 = 2112;
    v31 = v14;
    v32 = 2112;
    v33 = v15;
    _os_log_error_impl(&dword_1AE2A9000, v16, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
  }

LABEL_25:
  v19 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 112);
  v20 = brc_default_log(0, 0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    v23 = *(a1 + 48);
    v24 = [v14 localizedDescription];
    *buf = 136315650;
    v29 = v23;
    v30 = 2112;
    v31 = v24;
    v32 = 2112;
    v33 = v19;
    _os_log_fault_impl(&dword_1AE2A9000, v20, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Failed to adopt persona for notification %s due to %@%@", buf, 0x20u);
  }

LABEL_10:
  _BRRestorePersona(&v27);
}

void sub_1AE2C3CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _BRRestorePersona(va);
  _Unwind_Resume(a1);
}

void __br_notify_register_dispatch_block_invoke_2_0()
{
  v2 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = _block_invoke___personalPersona;
  _block_invoke___personalPersona = v0;
}

id br_shareCopyWithAttributesStripped(void *a1)
{
  v1 = [a1 copy];
  br_setShareAssociatedURL(v1, 0);

  return v1;
}

void br_setShareAssociatedURL(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v15 = 0;
      v6 = [MEMORY[0x1E6967410] wrapperWithURL:v4 readonly:1 error:&v15];
      v7 = v15;
      if (v6)
      {
        v14 = v7;
        v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v14];
        v9 = v14;

        if (v8)
        {
          [v3 setTrackChanges:0];
          [v3 setValue:v8 forKey:@"BRAssociatedURLWrapperDataKey"];
          [v3 setTrackChanges:1];
        }

        else
        {
          v12 = brc_bread_crumbs("br_setShareAssociatedURL", 154);
          v13 = brc_default_log(0, 0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412802;
            v17 = v6;
            v18 = 2112;
            v19 = v9;
            v20 = 2112;
            v21 = v12;
            _os_log_fault_impl(&dword_1AE2A9000, v13, OS_LOG_TYPE_FAULT, "[CRIT] failed to encode wrapper %@: %@%@", buf, 0x20u);
          }
        }
      }

      else
      {
        v10 = brc_bread_crumbs("br_setShareAssociatedURL", 149);
        v11 = brc_default_log(0, 0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412802;
          v17 = v5;
          v18 = 2112;
          v19 = v7;
          v20 = 2112;
          v21 = v10;
          _os_log_fault_impl(&dword_1AE2A9000, v11, OS_LOG_TYPE_FAULT, "[CRIT] failed to create wrapper for URL %@: %@%@", buf, 0x20u);
        }
      }
    }

    else
    {
      [v3 setTrackChanges:0];
      [v3 setValue:0 forKey:@"BRAssociatedURLWrapperDataKey"];
      [v3 setTrackChanges:1];
    }
  }
}

id br_shareAssociatedURL(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 valueForKey:@"BRAssociatedURLWrapperDataKey"], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v11 = 0;
    v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v11];
    v6 = v11;
    if (!v5)
    {
      v7 = brc_bread_crumbs("br_shareAssociatedURL", 176);
      v8 = brc_default_log(0, 0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        v13 = v4;
        v14 = 2112;
        v15 = v2;
        v16 = 2112;
        v17 = v7;
        _os_log_fault_impl(&dword_1AE2A9000, v8, OS_LOG_TYPE_FAULT, "[CRIT] failed to unarchive url wrapper %@ from share %@%@", buf, 0x20u);
      }
    }

    v9 = [v5 url];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t BRShareProcessShouldUseDirectConnection()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];

  if ([v1 isEqualToString:@"com.apple.CloudDocs.MobileDocumentsFileProvider"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"com.apple.CloudDocs.MobileDocumentsFileProviderManaged"];
  }

  return v2;
}

id initCKErrorDomain()
{
  v0 = CloudKitLibrary();
  v1 = dlsym(v0, "CKErrorDomain");
  if (!v1)
  {
    initCKErrorDomain_cold_1();
  }

  objc_storeStrong(&constantCKErrorDomain, *v1);
  getCKErrorDomain = CKErrorDomainFunction;
  v2 = constantCKErrorDomain;

  return v2;
}

id initCKPartialErrorsByItemIDKey()
{
  v0 = CloudKitLibrary();
  v1 = dlsym(v0, "CKPartialErrorsByItemIDKey");
  if (!v1)
  {
    initCKPartialErrorsByItemIDKey_cold_1();
  }

  objc_storeStrong(&constantCKPartialErrorsByItemIDKey, *v1);
  getCKPartialErrorsByItemIDKey = CKPartialErrorsByItemIDKeyFunction;
  v2 = constantCKPartialErrorsByItemIDKey;

  return v2;
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_7_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, 0x90u, a4, va, 0xCu);
}

id _fetchSynchronousAutomaticErrorProxyFromURL(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2;
  v20 = __Block_byref_object_dispose__2;
  v21 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___fetchSynchronousAutomaticErrorProxyFromURL_block_invoke;
  v12[3] = &unk_1E7A14E70;
  v15 = &v16;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  _fetchServiceAutomaticErrorProxyFromURL(v5, v8, v9, 1, v12);
  v10 = [v17[5] synchronousRemoteObjectProxy];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void sub_1AE2CB634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _fetchServiceAutomaticErrorProxyFromURL(void *a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a5;
  v13 = [v9 startAccessingSecurityScopedResource];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = ___fetchServiceAutomaticErrorProxyFromURL_block_invoke;
  v21[3] = &unk_1E7A14EC0;
  v26 = v13;
  v14 = v9;
  v22 = v14;
  v23 = v10;
  v27 = a4;
  v24 = v11;
  v25 = v12;
  v15 = MEMORY[0x1E696AC08];
  v16 = v11;
  v17 = v10;
  v18 = v12;
  v19 = [v15 defaultManager];
  v20 = v19;
  if (a4)
  {
    [v19 synchronouslyGetFileProviderServicesForItemAtURL:v14 completionHandler:v21];
  }

  else
  {
    [v19 getFileProviderServicesForItemAtURL:v14 completionHandler:v21];
  }
}

void ___fetchSynchronousAutomaticErrorProxyFromURL_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (v14)
  {
    v6 = *(*(a1 + 48) + 8);
    v7 = v14;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"broken %@ proxy", *(a1 + 32)];
    v9 = [BRXPCAutomaticErrorProxy alloc];
    v10 = [*(a1 + 40) protocol];
    v11 = [(FPXPCAutomaticErrorProxy *)v9 initWithConnection:0 protocol:v10 orError:v5 name:v8 requestPid:0];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

void ___fetchServiceAutomaticErrorProxyFromURL_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) stopAccessingSecurityScopedResource];
  }

  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:*(a1 + 40)];
    if (v7)
    {
      v8 = *(a1 + 65);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v27 = ___fetchServiceAutomaticErrorProxyFromURL_block_invoke_10;
      v28 = &unk_1E7A14E98;
      v29 = *(a1 + 40);
      v32 = *(a1 + 56);
      v9 = v7;
      v30 = v9;
      v31 = *(a1 + 48);
      v33 = *(a1 + 65);
      if (v8 == 1)
      {
        *buf = 0;
        v10 = [v9 fetchFileProviderConnectionAndReturnError:buf];
        v11 = *buf;
        v27(v26, v10, v11);
      }

      else
      {
        v11 = v26;
        [v9 getFileProviderConnectionWithCompletionHandler:v11];
      }

      v24 = v29;
    }

    else
    {
      v19 = brc_bread_crumbs("_fetchServiceAutomaticErrorProxyFromURL_block_invoke", 76);
      v20 = brc_default_log(1, 0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 40);
        v22 = [*(a1 + 32) path];
        *buf = 138413058;
        *&buf[4] = v21;
        v35 = 2112;
        v36 = v22;
        v37 = 2112;
        v38 = v5;
        v39 = 2112;
        v40 = v19;
        _os_log_impl(&dword_1AE2A9000, v20, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't find service named %@ on %@ in %@%@", buf, 0x2Au);
      }

      v23 = *(a1 + 56);
      v24 = [MEMORY[0x1E696ABC0] brc_errorNoBRItemService];
      (*(v23 + 16))(v23, 0, v24);
    }
  }

  else
  {
    if ([v6 br_isFileProviderErrorCode:-1005])
    {
      v12 = [v6 userInfo];
      v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E69671B0]];

      if (v13)
      {
        v14 = MEMORY[0x1E696ABC0];
        v15 = [*(a1 + 32) path];
        v16 = [v14 brc_errorNotInCloud:v15];

        v6 = v16;
      }
    }

    v17 = brc_bread_crumbs("_fetchServiceAutomaticErrorProxyFromURL_block_invoke", 70);
    v18 = brc_default_log(0, 0);
    if (os_log_type_enabled(v18, 0x90u))
    {
      v25 = [*(a1 + 32) path];
      *buf = 138412802;
      *&buf[4] = v25;
      v35 = 2112;
      v36 = v6;
      v37 = 2112;
      v38 = v17;
      _os_log_error_impl(&dword_1AE2A9000, v18, 0x90u, "[ERROR] Can't find services for %@: %@%@", buf, 0x20u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void ___fetchServiceAutomaticErrorProxyFromURL_block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs("_fetchServiceAutomaticErrorProxyFromURL_block_invoke", 85);
    v8 = brc_default_log(0, 0);
    if (os_log_type_enabled(v8, 0x90u))
    {
      v12 = *(a1 + 32);
      *buf = 138412802;
      v16 = v12;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_error_impl(&dword_1AE2A9000, v8, 0x90u, "[ERROR] Can't get connection for %@: %@%@", buf, 0x20u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v9 = [[BRXPCAutomaticErrorProxy alloc] initWithConnection:v5 service:*(a1 + 40) interface:*(a1 + 48)];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___fetchServiceAutomaticErrorProxyFromURL_block_invoke_11;
    block[3] = &unk_1E7A14798;
    v14 = *(a1 + 32);
    if (_block_invoke_onceToken != -1)
    {
      dispatch_once(&_block_invoke_onceToken, block);
    }

    [v5 _setQueue:_block_invoke_queue];
    [v5 resume];
    v10 = *(a1 + 56);
    if (*(a1 + 64))
    {
      [(FPXPCAutomaticErrorProxy *)v9 synchronousRemoteObjectProxy];
    }

    else
    {
      [(FPXPCAutomaticErrorProxy *)v9 remoteObjectProxy];
    }
    v11 = ;
    (*(v10 + 16))(v10, v11, 0);
  }
}

void ___fetchServiceAutomaticErrorProxyFromURL_block_invoke_11(uint64_t a1)
{
  v7 = [*(a1 + 32) stringByAppendingString:@"-queue"];
  v1 = v7;
  v2 = [v7 UTF8String];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(v3, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create(v2, v4);

  v6 = _block_invoke_queue;
  _block_invoke_queue = v5;
}

uint64_t BRPostAccountTokenChangedNotification()
{
  v0 = [@"com.apple.librarian.account-token-changed" UTF8String];

  return brc_notify_post(v0);
}

id _BRPromiseURLCombine(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v7)
  {
    if (v8)
    {
      MEMORY[0x1B26FDEB0](v7, v8);
    }

    if (v9 && v10)
    {
      MEMORY[0x1B26FDEB0](v9, v10);
    }

    _CFURLPromiseSetPhysicalURL();
  }

  return v7;
}

void BRCurrentProcessIsNotAppSandboxed(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  abc_report_panic_with_signature(@"BRCurrentProcessIsNotAppSandboxed is not supported on iOS");
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BRCurrentProcessIsNotAppSandboxed is not supported on iOS"];
  v3 = brc_bread_crumbs("BRCurrentProcessIsNotAppSandboxed", 236);
  v4 = brc_default_log(0, 0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = brc_append_system_info_to_message(v2);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_fault_impl(&dword_1AE2A9000, v4, OS_LOG_TYPE_FAULT, "[CRIT] %@%@", &v7, 0x16u);
  }

  brc_append_system_info_to_message(v2);
  v6 = [objc_claimAutoreleasedReturnValue() UTF8String];
  __assert_rtn("BRCurrentProcessIsNotAppSandboxed", "/Library/Caches/com.apple.xbs/Sources/CloudDocs/framework/CloudDocs.m", 236, v6);
}

void BRCurrentProcessIsNotAppSandboxedAndHasContainers(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  abc_report_panic_with_signature(@"BRCurrentProcessIsNotAppSandboxedAndHasContainers is not supported on iOS");
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BRCurrentProcessIsNotAppSandboxedAndHasContainers is not supported on iOS"];
  v3 = brc_bread_crumbs("BRCurrentProcessIsNotAppSandboxedAndHasContainers", 242);
  v4 = brc_default_log(0, 0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = brc_append_system_info_to_message(v2);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_fault_impl(&dword_1AE2A9000, v4, OS_LOG_TYPE_FAULT, "[CRIT] %@%@", &v7, 0x16u);
  }

  brc_append_system_info_to_message(v2);
  v6 = [objc_claimAutoreleasedReturnValue() UTF8String];
  __assert_rtn("BRCurrentProcessIsNotAppSandboxedAndHasContainers", "/Library/Caches/com.apple.xbs/Sources/CloudDocs/framework/CloudDocs.m", 242, v6);
}

uint64_t BRCurrentProcessIsContainerProxy()
{
  if (_BRLoadUbiquityEntitlements_once != -1)
  {
    BRCurrentProcessHasUbiquityContainer_cold_1();
  }

  return currentProcessIsContainerProxy;
}

uint64_t BRCurrentProcessHasAccessToCloudDocsGroupContainers()
{
  if (_BRLoadUbiquityEntitlements_once != -1)
  {
    BRCurrentProcessHasUbiquityContainer_cold_1();
  }

  return currentProcessHasAccessToGroupContainers;
}

id BRCopyUbiquityContainerIdentifiersForCurrentProcess()
{
  v17 = *MEMORY[0x1E69E9840];
  memset(v15, 0, sizeof(v15));
  __brc_create_section(0, "BRCopyUbiquityContainerIdentifiersForCurrentProcess", 273, 0, v15);
  v0 = brc_bread_crumbs("BRCopyUbiquityContainerIdentifiersForCurrentProcess", 273);
  v1 = brc_default_log(1, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    BRCopyUbiquityContainerIdentifiersForCurrentProcess_cold_1();
  }

  if (_BRLoadUbiquityEntitlements_once != -1)
  {
    BRCopyUbiquityContainerIdentifiersForCurrentProcess_cold_2();
  }

  if (currentProcessUbiquityContainerEntitlements)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = currentProcessUbiquityContainerEntitlements;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v4)
    {
      v5 = *v12;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v11 + 1) + 8 * i);
          if (([v7 hasSuffix:{@".*", v11}] & 1) == 0)
          {
            [v2 addObject:v7];
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v4);
    }
  }

  else
  {
    v2 = 0;
  }

  v8 = brc_bread_crumbs("BRCopyUbiquityContainerIdentifiersForCurrentProcess", 292);
  v9 = brc_default_log(1, 0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    BRCopyUbiquityContainerIdentifiersForCurrentProcess_cold_3();
  }

  __brc_leave_section(v15);

  return v2;
}

void sub_1AE2CCA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

uint64_t BRForceSyncOnAllContainers(void *a1)
{
  v2 = +[BRDaemonConnection defaultConnection];
  v3 = [v2 newSyncProxy];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __BRForceSyncOnAllContainers_block_invoke;
  v8[3] = &unk_1E7A14830;
  v4 = v3;
  v9 = v4;
  [v4 forceSyncContainerID:0 reply:v8];
  v5 = [v4 result];
  v6 = [v5 BOOLValue];

  if (a1 && (v6 & 1) == 0)
  {
    *a1 = [v4 error];
  }

  return v6;
}

uint64_t BRiWorkSyncContainer(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = +[BRDaemonConnection defaultConnection];
  v7 = [v6 newSyncProxy];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __BRiWorkSyncContainer_block_invoke;
  v12[3] = &unk_1E7A14830;
  v8 = v7;
  v13 = v8;
  [v8 iWorkForceSyncContainerID:v5 ownedByMe:a2 reply:v12];

  v9 = [v8 result];
  v10 = [v9 BOOLValue];

  if (a3 && (v10 & 1) == 0)
  {
    *a3 = [v8 error];
  }

  return v10;
}

void BRGetURLForPublishedItemWithOptions(void *a1, char a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  if ([v7 br_isInSyncedLocation])
  {
    v19 = 0uLL;
    v20 = 0;
    __brc_create_section(0, "BRGetURLForPublishedItemWithOptions", 457, 0, &v19);
    v10 = brc_bread_crumbs("BRGetURLForPublishedItemWithOptions", 457);
    v11 = brc_default_log(1, 0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      BRGetProcessMobileContainerForID_cold_2();
    }

    v22 = v20;
    v21 = v19;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __BRGetURLForPublishedItemWithOptions_block_invoke;
    v13[3] = &unk_1E7A14F38;
    v15 = v19;
    v16 = v20;
    v18 = a2;
    v14 = v8;
    v17 = a3;
    [v7 _br_fetchItemServiceAsyncProxy:v13];
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] brc_errorPathOutsideAnyCloudDocsAppLibraryAtURL:v7];
    (*(v8 + 2))(v8, 0, 0, v12);
  }

  objc_autoreleasePoolPop(v9);
}

void __BRGetURLForPublishedItemWithOptions_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v13 = *(a1 + 40);
    v14 = *(a1 + 56);
    v7 = brc_bread_crumbs("BRGetURLForPublishedItemWithOptions_block_invoke", 461);
    v8 = brc_default_log(1, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v16 = v13;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_debug_impl(&dword_1AE2A9000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx failed getting Item Service failed: %@%@", buf, 0x20u);
    }

    (*(*(a1 + 32) + 16))();
    __brc_leave_section(&v13);
  }

  else
  {
    v9 = *(a1 + 72);
    v10 = *(a1 + 64);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __BRGetURLForPublishedItemWithOptions_block_invoke_25;
    v11[3] = &unk_1E7A14F10;
    v12 = *(a1 + 32);
    [v5 getPublishedURLForStreaming:v9 requestedTTL:v10 reply:v11];
  }
}

void sub_1AE2CD08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void BRRegisterInitialSyncHandlerForContainer(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  memset(v12, 0, sizeof(v12));
  __brc_create_section(0, "BRRegisterInitialSyncHandlerForContainer", 477, 0, v12);
  v6 = brc_bread_crumbs("BRRegisterInitialSyncHandlerForContainer", 477);
  v7 = brc_default_log(1, 0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    v14 = v12[0];
    v15 = 2080;
    v16 = "BRRegisterInitialSyncHandlerForContainer";
    v17 = 2112;
    v18 = v3;
    v19 = 2112;
    v20 = v6;
    _os_log_debug_impl(&dword_1AE2A9000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx %s: container:%@%@", buf, 0x2Au);
  }

  if (BRCurrentProcessHasUbiquityContainer(v8, v9))
  {
    v10 = +[BRDaemonConnection defaultConnection];
    v11 = [v10 remoteObjectProxyWithErrorHandler:v4];

    [v11 registerInitialSyncBarrierForID:v3 reply:v4];
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BRCloudDocsErrorDomain" code:1 userInfo:0];
    v4[2](v4, v11);
  }

  __brc_leave_section(v12);
  objc_autoreleasePoolPop(v5);
}

void sub_1AE2CD2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void BREvictItemAtURL(void *a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __BREvictItemAtURL_block_invoke;
  v11[3] = &unk_1E7A148D0;
  v12 = v3;
  v4 = v3;
  v5 = a1;
  v6 = MEMORY[0x1B26FEA90](v11);
  v7 = [MEMORY[0x1E69673A8] defaultManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __BREvictItemAtURL_block_invoke_2;
  v9[3] = &unk_1E7A14F60;
  v10 = v6;
  v8 = v6;
  [v7 fetchItemForURL:v5 completionHandler:v9];
}

void __BREvictItemAtURL_block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    if ([v3 br_isPOSIXErrorCode:16])
    {
      v5 = MEMORY[0x1E696ABC0];
      v6 = *MEMORY[0x1E696A250];
      v9 = *MEMORY[0x1E696AA08];
      v10[0] = v4;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      v8 = [v5 errorWithDomain:v6 code:255 userInfo:v7];

      v4 = v8;
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __BREvictItemAtURL_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    v7 = a2;
    v6(v5, a3);
  }

  else
  {
    v8 = MEMORY[0x1E6967320];
    v9 = a2;
    v10 = [v8 alloc];
    v13[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v7 = [v10 initWithItems:v11];

    [v7 setActionCompletionBlock:*(a1 + 32)];
    v12 = [MEMORY[0x1E69673A8] defaultManager];

    [v12 scheduleAction:v7];
  }
}

void BREvictItemAtURLWithOptions(void *a1, char a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if ([v5 br_isInSyncedLocation])
  {
    if ((a2 & 4) != 0)
    {
      v8 = brc_bread_crumbs("BREvictItemAtURLWithOptions", 524);
      v9 = brc_default_log(1, 0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_1AE2A9000, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] We shouldn't be evicting thumbnails in FPFS - only content%@", &v11, 0xCu);
      }
    }

    BREvictItemAtURL(v5, v6);
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] brc_errorPathOutsideAnyCloudDocsAppLibraryAtURL:v5];
    (*(v6 + 2))(v6, v10);
  }

  objc_autoreleasePoolPop(v7);
}

void BRSynchronousEvictItemAtURLWithOptions(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  if ([v4 br_isInSyncedLocation])
  {
    v7 = brc_bread_crumbs("BRSynchronousEvictItemAtURLWithOptions", 538);
    v8 = brc_default_log(0, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      BRSynchronousEvictItemAtURLWithOptions_cold_1();
    }

    v9 = MEMORY[0x1E696ABC0];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BRSynchronousEvictItemAtURLWithOptions"];
    v11 = [v9 brc_errorFunctionNotImplemented:v10];
    v5[2](v5, 0, v11);
  }

  else
  {
    v5[2](v5, 0, 0);
  }

  objc_autoreleasePoolPop(v6);
}

void BRThumbnailChangedAtURL(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  if ([v3 br_isInSyncedLocation])
  {
    v6 = brc_bread_crumbs("BRThumbnailChangedAtURL", 551);
    v7 = brc_default_log(0, 0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      BRThumbnailChangedAtURL_cold_1();
    }

    v8 = MEMORY[0x1E696ABC0];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BRThumbnailChangedAtURL"];
    v10 = [v8 brc_errorFunctionNotImplemented:v9];
    v4[2](v4, v10);
  }

  else
  {
    v4[2](v4, 0);
  }

  objc_autoreleasePoolPop(v5);
}

void BRStartDownloadForItemsWithOptions(void *a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  if ([v4 br_any_of:&__block_literal_global_7])
  {
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * v12);
          v19 = 0;
          [v7 startDownloadingUbiquitousItemAtURL:v13 error:&v19];
          v14 = v19;
          if (v14)
          {
            v17 = v14;
            v5[2](v5, v14);

            goto LABEL_19;
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v5[2](v5, 0);
  }

  else if ([v4 count])
  {
    v24 = 0;
    v7 = [BRAccount currentCachedLoggedInAccountWithError:&v24];
    v15 = MEMORY[0x1E696ABC0];
    if (v7 | v24)
    {
      v16 = [v4 objectAtIndexedSubscript:0];
      v18 = [v15 brc_errorPathOutsideAnyCloudDocsAppLibraryAtURL:v16];
      v5[2](v5, v18);
    }

    else
    {
      v16 = [MEMORY[0x1E696ABC0] brc_errorLoggedOut];
      v5[2](v5, v16);
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] brc_errorInvalidParameter:@"urls" value:v4];
    v5[2](v5, v7);
  }

LABEL_19:

  objc_autoreleasePoolPop(v6);
}

void BRDumpDatabaseToFileHandle(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = +[BRDaemonConnection defaultConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __BRDumpDatabaseToFileHandle_block_invoke;
  v11[3] = &unk_1E7A148D0;
  v7 = v4;
  v12 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v11];

  v9 = [MEMORY[0x1E69DF068] sharedManager];
  v10 = [v9 br_currentPersonaID];

  [v8 dumpDatabaseTo:v3 containerID:0 personaID:v10 includeAllItems:0 verbose:0 reply:v7];
  objc_autoreleasePoolPop(v5);
}

uint64_t BRRemoveItemAtURL(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BRRemoveItemAtURL"];
  v5 = [v3 brc_errorFunctionNotImplemented:v4];

  if (v5)
  {
    v6 = brc_bread_crumbs("BRRemoveItemAtURL", 612);
    v7 = brc_default_log(0, 0);
    if (os_log_type_enabled(v7, 0x90u))
    {
      v10 = "(passed to caller)";
      v11 = 136315906;
      v12 = "BRRemoveItemAtURL";
      v13 = 2080;
      if (!a2)
      {
        v10 = "(ignored by caller)";
      }

      v14 = v10;
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      _os_log_error_impl(&dword_1AE2A9000, v7, 0x90u, "[ERROR] %s: %s error: %@%@", &v11, 0x2Au);
    }
  }

  if (a2)
  {
    v8 = v5;
    *a2 = v5;
  }

  return 0;
}

id BRGetAttributeValuesForItem(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (![v5 br_isInSyncedLocation])
  {
    v14 = 0;
    goto LABEL_36;
  }

  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = *MEMORY[0x1E696A5B8];
  if (([v6 containsObject:*MEMORY[0x1E696A5B8]] & 1) != 0 || objc_msgSend(v6, "containsObject:", *MEMORY[0x1E695DC70]))
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithArray:v6];
    v10 = [v5 br_cloudDocsContainer];
    if (v10)
    {
      if ([v6 containsObject:v8])
      {
        [v9 removeObject:v8];
        v11 = [v10 identifier];
        [v7 setObject:v11 forKey:v8];
      }

      v12 = *MEMORY[0x1E695DC70];
      if ([v6 containsObject:*MEMORY[0x1E695DC70]])
      {
        [v9 removeObject:v12];
        v13 = [v10 localizedName];
        [v7 setObject:v13 forKey:v12];
      }
    }
  }

  else
  {
    v9 = v6;
  }

  v15 = *MEMORY[0x1E695DBD8];
  if ([v9 containsObject:*MEMORY[0x1E695DBD8]])
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithArray:v9];
    [v6 removeObject:v15];

    if (([v5 checkPromisedItemIsReachableAndReturnError:0] & 1) == 0)
    {
      v16 = [v5 lastPathComponent];
      v17 = [v16 br_sideFaultName];

      v18 = [v5 URLByDeletingLastPathComponent];
      v19 = [v18 URLByAppendingPathComponent:v17];

      if (([v19 checkResourceIsReachableAndReturnError:0] & 1) == 0)
      {
        v25 = brc_bread_crumbs("BRGetAttributeValuesForItem", 685);
        v26 = brc_default_log(1, 0);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          BRGetAttributeValuesForItem_cold_1();
        }

        goto LABEL_27;
      }
    }

    v20 = [v5 br_pathRelativeToMobileDocuments];
    v17 = v20;
    if (v20)
    {
      v21 = v20;
    }

    v22 = [v17 br_isExcludedWithMaximumDepth:60];
    if (v22)
    {
      v23 = brc_bread_crumbs("BRGetAttributeValuesForItem", 695);
      v24 = brc_default_log(1, 0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        BRGetAttributeValuesForItem_cold_2();
      }
    }

    v19 = [MEMORY[0x1E696AD98] numberWithInt:v22 ^ 1u];
    [v7 setObject:v19 forKey:v15];
LABEL_27:

    goto LABEL_28;
  }

  v6 = v9;
LABEL_28:
  if ([v6 count])
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__3;
    v41 = __Block_byref_object_dispose__3;
    v42 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__3;
    v35 = __Block_byref_object_dispose__3;
    v36 = 0;
    v27 = [v5 _br_itemServiceSyncProxy];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __BRGetAttributeValuesForItem_block_invoke;
    v30[3] = &unk_1E7A14FA8;
    v30[4] = &v31;
    v30[5] = &v37;
    [v27 getAttributeValues:v6 reply:v30];
    [v7 addEntriesFromDictionary:v32[5]];
    v28 = v38[5];
    if (v28)
    {
      v14 = 0;
      if (a3)
      {
        *a3 = v28;
      }
    }

    else
    {
      v14 = v7;
    }

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v37, 8);
  }

  else
  {
    v14 = v7;
  }

LABEL_36:

  return v14;
}

void sub_1AE2CE3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __BRGetAttributeValuesForItem_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id BRGetAttributeValueForItem(void *a1, void *a2, uint64_t *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v15[0] = v5;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a1;
  v8 = [v6 arrayWithObjects:v15 count:1];
  v14 = 0;
  v9 = BRGetAttributeValuesForItem(v7, v8, &v14);

  v10 = v14;
  v11 = [v9 objectForKey:v5];
  if (!(v11 | v10))
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A978] code:-1002 userInfo:0];
  }

  if (a3 && v10)
  {
    v12 = v10;
    *a3 = v10;
  }

  return v11;
}

void BRGetTotalApplicationDocumentUsage(void *a1)
{
  v1 = a1;
  v2 = +[BRDaemonConnection defaultConnection];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __BRGetTotalApplicationDocumentUsage_block_invoke;
  v5[3] = &unk_1E7A148D0;
  v6 = v1;
  v3 = v1;
  v4 = [v2 remoteObjectProxyWithErrorHandler:v5];

  [v4 getTotalApplicationDocumentUsageWithReply:v3];
}

void BRGetApplicationDocumentUsageInformation(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[BRDaemonConnection defaultConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __BRGetApplicationDocumentUsageInformation_block_invoke;
  v8[3] = &unk_1E7A148D0;
  v9 = v3;
  v6 = v3;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v8];

  [v7 getApplicationDocumentUsageInfoForBundleID:v4 withReply:v6];
}

id BRPushTopicGetContainerID(void *a1)
{
  v1 = a1;
  v2 = [@"com.apple.icloud-container." stringByAppendingString:@"clouddocs."];
  if ([v1 rangeOfString:v2])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v1 substringFromIndex:v3];
  }

  return v4;
}

id BRAddNetworkReachabilityObserverWithCallbackQueue(void *a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = [@"BRNotificationServerAvailabilityChanges" br_libnotifyPerUserNotificationName];
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __BRAddNetworkReachabilityObserverWithCallbackQueue_block_invoke;
    v33[3] = &unk_1E7A14FE0;
    v36 = &v37;
    v6 = v5;
    v34 = v6;
    v35 = v4;
    v7 = MEMORY[0x1B26FEA90](v33);
    v8 = v6;
    v9 = [v6 UTF8String];
    v10 = v38;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __BRAddNetworkReachabilityObserverWithCallbackQueue_block_invoke_2;
    v30[3] = &unk_1E7A15008;
    v32 = &v37;
    v11 = v7;
    v31 = v11;
    v12 = v3;
    v13 = v30;
    v14 = [MEMORY[0x1E69DF068] sharedManager];
    v15 = [v14 br_currentPersonaID];

    *handler = MEMORY[0x1E69E9820];
    *&handler[8] = 3221225472;
    *&handler[16] = __br_notify_register_dispatch_block_invoke_1;
    v42 = &unk_1E7A14940;
    v16 = v15;
    v43 = v16;
    v45 = v9;
    v17 = v13;
    v44 = v17;
    v18 = notify_register_dispatch(v9, v10 + 6, v12, handler);

    if (v18)
    {
      v19 = brc_bread_crumbs("BRAddNetworkReachabilityObserverWithCallbackQueue", 835);
      v20 = brc_default_log(1, 0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *handler = 67109378;
        *&handler[4] = v18;
        *&handler[8] = 2112;
        *&handler[10] = v19;
        _os_log_impl(&dword_1AE2A9000, v20, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't add observer: error code %d%@", handler, 0x12u);
      }
    }

    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __BRAddNetworkReachabilityObserverWithCallbackQueue_block_invoke_54;
    v28 = &unk_1E7A14BB8;
    v21 = v11;
    v29 = v21;
    dispatch_async(v12, &v25);
    v22 = [MEMORY[0x1E696AD98] numberWithInt:{v38[6], v25, v26, v27, v28}];

    _Block_object_dispose(&v37, 8);
  }

  else
  {
    v6 = brc_bread_crumbs("BRAddNetworkReachabilityObserverWithCallbackQueue", 812);
    v23 = brc_default_log(1, 0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *handler = 138412290;
      *&handler[4] = v6;
      _os_log_impl(&dword_1AE2A9000, v23, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't add observer: no block specified%@", handler, 0xCu);
    }

    v22 = 0;
  }

  return v22;
}

void sub_1AE2CEC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __BRAddNetworkReachabilityObserverWithCallbackQueue_block_invoke(uint64_t a1)
{
  v3 = 1;
  brc_notify_get_state(*(*(*(a1 + 48) + 8) + 24), &v3, [*(a1 + 32) UTF8String]);
  return (*(*(a1 + 40) + 16))(*(a1 + 40), v3 != 0);
}

uint64_t __BRAddNetworkReachabilityObserverWithCallbackQueue_block_invoke_2(uint64_t result, int a2)
{
  if (*(*(*(result + 40) + 8) + 24) == a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

id BRAddNetworkReachabilityObserver(void *a1)
{
  v2 = dispatch_get_global_queue(9, 0);
  v3 = BRAddNetworkReachabilityObserverWithCallbackQueue(v2, a1);

  return v3;
}

void BRRemoveNetworkReachabilityObserver(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v4 = brc_bread_crumbs("BRRemoveNetworkReachabilityObserver", 853);
    v5 = brc_default_log(1, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      *v11 = v4;
      v6 = "[WARNING] Can't remove observer: given observer is nil%@";
      v7 = v5;
      v8 = 12;
      goto LABEL_8;
    }

LABEL_11:

    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = brc_bread_crumbs("BRRemoveNetworkReachabilityObserver", 857);
    v5 = brc_default_log(1, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      *v11 = objc_opt_class();
      *&v11[8] = 2112;
      *&v11[10] = v4;
      v9 = *v11;
      _os_log_impl(&dword_1AE2A9000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't remove observer: unexpected kind of class (expected: NSNumber, actual: %@)%@", &v10, 0x16u);
    }

    goto LABEL_11;
  }

  v2 = notify_cancel([v1 intValue]);
  if (v2)
  {
    v3 = v2;
    v4 = brc_bread_crumbs("BRRemoveNetworkReachabilityObserver", 865);
    v5 = brc_default_log(1, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 67109378;
      *v11 = v3;
      *&v11[4] = 2112;
      *&v11[6] = v4;
      v6 = "[WARNING] Can't remove observer: error code %d%@";
      v7 = v5;
      v8 = 18;
LABEL_8:
      _os_log_impl(&dword_1AE2A9000, v7, OS_LOG_TYPE_DEFAULT, v6, &v10, v8);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

LABEL_12:
}

id BREntitledContainerIdentifiersForProxy(void *a1)
{
  v1 = [a1 entitlements];
  v2 = BREntitledContainerIdentifiers(v1);

  return v2;
}

BOOL BRSyncedDocumentIDForDocumentAtURL(void *a1, void *a2, void *a3, uint64_t (**a4)(uint64_t result, uint64_t a2))
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = a1;
  if (!v7)
  {
    v16 = [MEMORY[0x1E696ABC0] brc_errorInvalidParameter:@"fileURL" value:0];
    if (v16)
    {
      v17 = brc_bread_crumbs("BRSyncedDocumentIDForDocumentAtURL", 1161);
      v18 = brc_default_log(0, 0);
      if (os_log_type_enabled(v18, 0x90u))
      {
        v25 = "(passed to caller)";
        *v52 = 136315906;
        *&v52[4] = "BRSyncedDocumentIDForDocumentAtURL";
        *&v52[12] = 2080;
        if (!a4)
        {
          v25 = "(ignored by caller)";
        }

        *&v52[14] = v25;
        *&v52[22] = 2112;
        v53 = v16;
        LOWORD(v54) = 2112;
        *(&v54 + 2) = v17;
        _os_log_error_impl(&dword_1AE2A9000, v18, 0x90u, "[ERROR] %s: %s error: %@%@", v52, 0x2Au);
      }
    }

    if (a4)
    {
      v19 = v16;
      *a4 = v16;
    }

    goto LABEL_19;
  }

  if (!a2)
  {
    v16 = [MEMORY[0x1E696ABC0] brc_errorInvalidParameter:@"syncedDocumentID" value:0];
    if (v16)
    {
      v20 = brc_bread_crumbs("BRSyncedDocumentIDForDocumentAtURL", 1165);
      v21 = brc_default_log(0, 0);
      if (os_log_type_enabled(v21, 0x90u))
      {
        v26 = "(passed to caller)";
        *v52 = 136315906;
        *&v52[4] = "BRSyncedDocumentIDForDocumentAtURL";
        *&v52[12] = 2080;
        if (!a4)
        {
          v26 = "(ignored by caller)";
        }

        *&v52[14] = v26;
        *&v52[22] = 2112;
        v53 = v16;
        LOWORD(v54) = 2112;
        *(&v54 + 2) = v20;
        _os_log_error_impl(&dword_1AE2A9000, v21, 0x90u, "[ERROR] %s: %s error: %@%@", v52, 0x2Au);
      }
    }

    if (a4)
    {
      v22 = v16;
      *a4 = v16;
    }

LABEL_19:

    v11 = 0;
    goto LABEL_23;
  }

  *v52 = 0;
  *&v52[8] = v52;
  *&v52[16] = 0x3032000000;
  v53 = __Block_byref_object_copy__3;
  *&v54 = __Block_byref_object_dispose__3;
  *(&v54 + 1) = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__3;
  v42 = __Block_byref_object_dispose__3;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__3;
  v36 = __Block_byref_object_dispose__3;
  v37 = 0;
  v8 = dispatch_semaphore_create(0);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __BRSyncedDocumentIDForDocumentAtURL_block_invoke;
  v27[3] = &unk_1E7A15050;
  v29 = v52;
  v30 = &v38;
  v31 = &v32;
  v9 = v8;
  v28 = v9;
  [v7 br_bookmarkableStringWithEtag:a3 != 0 completion:v27];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v10 = v33[5];
  v11 = v10 == 0;
  if (v10)
  {
    v12 = v10;
    v13 = brc_bread_crumbs("BRSyncedDocumentIDForDocumentAtURL", 1189);
    v14 = brc_default_log(0, 0);
    if (os_log_type_enabled(v14, 0x90u))
    {
      v24 = "(passed to caller)";
      *buf = 136315906;
      v45 = "BRSyncedDocumentIDForDocumentAtURL";
      v46 = 2080;
      if (!a4)
      {
        v24 = "(ignored by caller)";
      }

      v47 = v24;
      v48 = 2112;
      v49 = v12;
      v50 = 2112;
      v51 = v13;
      _os_log_error_impl(&dword_1AE2A9000, v14, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }

    if (a4)
    {
      v15 = v12;
      *a4 = v12;
    }
  }

  else
  {
    *a2 = *(*&v52[8] + 40);
    if (a3)
    {
      *a3 = v39[5];
    }
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(v52, 8);
LABEL_23:

  return v11;
}

void sub_1AE2CF4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 144), 8);
  _Unwind_Resume(a1);
}

void __BRSyncedDocumentIDForDocumentAtURL_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v18 = v7;

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
  v17 = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

BOOL BRLocateDocumentForSyncedDocumentID(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v16 = 0;
    *a2 = BRCopyDocumentURLForUbiquitousBookmarkData(a1, &v16);
    v5 = v16;
    if (v16)
    {
      v6 = brc_bread_crumbs("BRLocateDocumentForSyncedDocumentID", 1202);
      v7 = brc_default_log(0, 0);
      if (os_log_type_enabled(v7, 0x90u))
      {
        v14 = "(passed to caller)";
        *buf = 136315906;
        v18 = "BRLocateDocumentForSyncedDocumentID";
        v19 = 2080;
        if (!a3)
        {
          v14 = "(ignored by caller)";
        }

        v20 = v14;
        v21 = 2112;
        v22 = v5;
        v23 = 2112;
        v24 = v6;
        _os_log_error_impl(&dword_1AE2A9000, v7, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (a3)
    {
      v8 = v5;
      *a3 = v5;
    }

    return *a2 != 0;
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] brc_errorInvalidParameter:@"fileURL" value:0];
    if (v10)
    {
      v11 = brc_bread_crumbs("BRLocateDocumentForSyncedDocumentID", 1197);
      v12 = brc_default_log(0, 0);
      if (os_log_type_enabled(v12, 0x90u))
      {
        v15 = "(passed to caller)";
        *buf = 136315906;
        v18 = "BRLocateDocumentForSyncedDocumentID";
        v19 = 2080;
        if (!a3)
        {
          v15 = "(ignored by caller)";
        }

        v20 = v15;
        v21 = 2112;
        v22 = v10;
        v23 = 2112;
        v24 = v11;
        _os_log_error_impl(&dword_1AE2A9000, v12, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (a3)
    {
      v13 = v10;
      *a3 = v10;
    }

    return 0;
  }
}

uint64_t BRPrepareDocumentForForcedConflict(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BRPrepareDocumentForForcedConflict"];
  v7 = [v5 brc_errorFunctionNotImplemented:v6];

  if (v7)
  {
    v8 = brc_bread_crumbs("BRPrepareDocumentForForcedConflict", 1210);
    v9 = brc_default_log(0, 0);
    if (os_log_type_enabled(v9, 0x90u))
    {
      v12 = "(passed to caller)";
      v13 = 136315906;
      v14 = "BRPrepareDocumentForForcedConflict";
      v15 = 2080;
      if (!a4)
      {
        v12 = "(ignored by caller)";
      }

      v16 = v12;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      _os_log_error_impl(&dword_1AE2A9000, v9, 0x90u, "[ERROR] %s: %s error: %@%@", &v13, 0x2Au);
    }
  }

  if (a4)
  {
    v10 = v7;
    *a4 = v7;
  }

  return 0;
}

void BRiWorkSharingSetSharingState(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v10 && v11)
  {
    if (v9)
    {
      v13 = [v9 _br_itemServiceSyncProxy];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __BRiWorkSharingSetSharingState_block_invoke_2;
      v17[3] = &unk_1E7A150A0;
      v18 = v9;
      v19 = v10;
      v20 = v12;
      [v13 setiWorkPublishingInfo:a2 readonly:a3 reply:v17];
    }

    else
    {
      v15 = brc_bread_crumbs("BRiWorkSharingSetSharingState", 1222);
      v16 = brc_default_log(0, 0);
      if (os_log_type_enabled(v16, 0x90u))
      {
        BRiWorkSharingSetSharingState_cold_2();
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __BRiWorkSharingSetSharingState_block_invoke;
      block[3] = &unk_1E7A14BB8;
      v22 = v12;
      dispatch_async(v10, block);
      v13 = v22;
    }
  }

  else
  {
    v13 = brc_bread_crumbs("BRiWorkSharingSetSharingState", 1218);
    v14 = brc_default_log(0, 0);
    if (os_log_type_enabled(v14, 0x90u))
    {
      BRiWorkSharingSetSharingState_cold_1();
    }
  }
}

void __BRiWorkSharingSetSharingState_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] brc_errorInvalidParameter:@"fileURL" value:0];
  (*(v1 + 16))(v1, v2);
}

void __BRiWorkSharingSetSharingState_block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs("BRiWorkSharingSetSharingState_block_invoke_2", 1232);
    v5 = brc_default_log(0, 0);
    if (os_log_type_enabled(v5, 0x90u))
    {
      v9 = *(a1 + 32);
      *buf = 138412802;
      v14 = v9;
      v15 = 2112;
      v16 = v3;
      v17 = 2112;
      v18 = v4;
      _os_log_error_impl(&dword_1AE2A9000, v5, 0x90u, "[ERROR] Failed publishing document at %@ - %@%@", buf, 0x20u);
    }
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __BRiWorkSharingSetSharingState_block_invoke_84;
  v10[3] = &unk_1E7A15078;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v11 = v3;
  v12 = v7;
  v8 = v3;
  dispatch_async(v6, v10);
}

BOOL BRiWorkSharingGetBadgingSharingState(void *a1, _BYTE *a2, BOOL *a3, uint64_t (**a4)(uint64_t result, uint64_t a2))
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = v7;
  if (v7)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v39 = __Block_byref_object_copy__3;
    *&v40 = __Block_byref_object_dispose__3;
    *(&v40 + 1) = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__3;
    v28 = __Block_byref_object_dispose__3;
    v29 = 0;
    v9 = [v7 _br_itemServiceSyncProxy];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __BRiWorkSharingGetBadgingSharingState_block_invoke;
    v23[3] = &unk_1E7A150C8;
    v23[4] = buf;
    v23[5] = &v24;
    [v9 getiWorkPublishingBadgingStatus:v23];
    v10 = *(*&buf[8] + 40);
    v11 = v10 != 0;
    if (v10)
    {
      if (a2)
      {
        *a2 = [v10 intValue] & 1;
      }

      if (a3)
      {
        *a3 = ([*(*&buf[8] + 40) intValue] & 2) != 0;
      }
    }

    else
    {
      v16 = v25[5];
      if (v16)
      {
        v17 = brc_bread_crumbs("BRiWorkSharingGetBadgingSharingState", 1258);
        v18 = brc_default_log(0, 0);
        if (os_log_type_enabled(v18, 0x90u))
        {
          v22 = "(passed to caller)";
          *v30 = 136315906;
          v31 = "BRiWorkSharingGetBadgingSharingState";
          v32 = 2080;
          if (!a4)
          {
            v22 = "(ignored by caller)";
          }

          v33 = v22;
          v34 = 2112;
          v35 = v16;
          v36 = 2112;
          v37 = v17;
          _os_log_error_impl(&dword_1AE2A9000, v18, 0x90u, "[ERROR] %s: %s error: %@%@", v30, 0x2Au);
        }
      }

      if (a4)
      {
        v19 = v16;
        *a4 = v16;
      }
    }

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] brc_errorInvalidParameter:@"fileURL" value:0];
    if (v12)
    {
      v13 = brc_bread_crumbs("BRiWorkSharingGetBadgingSharingState", 1245);
      v14 = brc_default_log(0, 0);
      if (os_log_type_enabled(v14, 0x90u))
      {
        v21 = "(passed to caller)";
        *buf = 136315906;
        *&buf[4] = "BRiWorkSharingGetBadgingSharingState";
        *&buf[12] = 2080;
        if (!a4)
        {
          v21 = "(ignored by caller)";
        }

        *&buf[14] = v21;
        *&buf[22] = 2112;
        v39 = v12;
        LOWORD(v40) = 2112;
        *(&v40 + 2) = v13;
        _os_log_error_impl(&dword_1AE2A9000, v14, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (a4)
    {
      v15 = v12;
      *a4 = v12;
    }

    v11 = 0;
  }

  return v11;
}

void sub_1AE2D0150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __BRiWorkSharingGetBadgingSharingState_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

uint64_t BRiWorkSharingGetNeedsMigrateAtURL(void *a1, uint64_t (**a2)(uint64_t result, uint64_t a2))
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    *v31 = 0;
    *&v31[8] = v31;
    *&v31[16] = 0x3032000000;
    v32 = __Block_byref_object_copy__3;
    *&v33 = __Block_byref_object_dispose__3;
    *(&v33 + 1) = 0;
    v5 = [v3 _br_itemServiceSyncProxy];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __BRiWorkSharingGetNeedsMigrateAtURL_block_invoke;
    v18[3] = &unk_1E7A150F0;
    v18[4] = &v19;
    v18[5] = v31;
    [v5 getiWorkNeedsShareMigrate:v18];
    v6 = *(*&v31[8] + 40);
    if (v6)
    {
      v7 = brc_bread_crumbs("BRiWorkSharingGetNeedsMigrateAtURL", 1289);
      v8 = brc_default_log(0, 0);
      if (os_log_type_enabled(v8, 0x90u))
      {
        v16 = "(passed to caller)";
        *buf = 136315906;
        v24 = "BRiWorkSharingGetNeedsMigrateAtURL";
        v25 = 2080;
        if (!a2)
        {
          v16 = "(ignored by caller)";
        }

        v26 = v16;
        v27 = 2112;
        v28 = v6;
        v29 = 2112;
        v30 = v7;
        _os_log_error_impl(&dword_1AE2A9000, v8, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (a2)
    {
      v9 = v6;
      *a2 = v6;
    }

    v10 = *(v20 + 24);
    _Block_object_dispose(v31, 8);

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] brc_errorInvalidParameter:@"fileURL" value:0];
    if (v11)
    {
      v12 = brc_bread_crumbs("BRiWorkSharingGetNeedsMigrateAtURL", 1275);
      v13 = brc_default_log(0, 0);
      if (os_log_type_enabled(v13, 0x90u))
      {
        v17 = "(passed to caller)";
        *v31 = 136315906;
        *&v31[4] = "BRiWorkSharingGetNeedsMigrateAtURL";
        *&v31[12] = 2080;
        if (!a2)
        {
          v17 = "(ignored by caller)";
        }

        *&v31[14] = v17;
        *&v31[22] = 2112;
        v32 = v11;
        LOWORD(v33) = 2112;
        *(&v33 + 2) = v12;
        _os_log_error_impl(&dword_1AE2A9000, v13, 0x90u, "[ERROR] %s: %s error: %@%@", v31, 0x2Au);
      }
    }

    if (a2)
    {
      v14 = v11;
      *a2 = v11;
    }

    v10 = 0;
  }

  return v10 & 1;
}

void sub_1AE2D0534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void BRiWorkSharingGetFullSharingInfo(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6 && v7)
  {
    if (v5)
    {
      v9 = [v5 _br_itemServiceSyncProxy];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __BRiWorkSharingGetFullSharingInfo_block_invoke_2;
      v13[3] = &unk_1E7A15140;
      v14 = v6;
      v15 = v8;
      [v9 getiWorkPublishingInfo:v13];
    }

    else
    {
      v11 = brc_bread_crumbs("BRiWorkSharingGetFullSharingInfo", 1304);
      v12 = brc_default_log(0, 0);
      if (os_log_type_enabled(v12, 0x90u))
      {
        BRiWorkSharingSetSharingState_cold_2();
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __BRiWorkSharingGetFullSharingInfo_block_invoke;
      block[3] = &unk_1E7A14BB8;
      v17 = v8;
      dispatch_async(v6, block);
      v9 = v17;
    }
  }

  else
  {
    v9 = brc_bread_crumbs("BRiWorkSharingGetFullSharingInfo", 1299);
    v10 = brc_default_log(0, 0);
    if (os_log_type_enabled(v10, 0x90u))
    {
      BRiWorkSharingSetSharingState_cold_1();
    }
  }
}

void __BRiWorkSharingGetFullSharingInfo_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] brc_errorInvalidParameter:@"fileURL" value:0];
  (*(v1 + 16))(v1, 0, 0, 0, v2);
}

void __BRiWorkSharingGetFullSharingInfo_block_invoke_2(uint64_t a1, char a2, char a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __BRiWorkSharingGetFullSharingInfo_block_invoke_3;
  v15[3] = &unk_1E7A15118;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v17 = v10;
  v18 = v12;
  v19 = a2;
  v20 = a3;
  v16 = v9;
  v13 = v10;
  v14 = v9;
  dispatch_async(v11, v15);
}

void BRSharingCopyCurrentUserIdentifier(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = +[BRDaemonConnection defaultConnection];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __BRSharingCopyCurrentUserIdentifier_block_invoke;
    v15[3] = &unk_1E7A15168;
    v7 = v3;
    v16 = v7;
    v8 = v5;
    v17 = v8;
    v9 = [v6 remoteObjectProxyWithErrorHandler:v15];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __BRSharingCopyCurrentUserIdentifier_block_invoke_3;
    v12[3] = &unk_1E7A151B8;
    v13 = v7;
    v14 = v8;
    [v9 copyCurrentUserIdentifierWithReply:v12];

    v10 = v16;
  }

  else
  {
    v10 = brc_bread_crumbs("BRSharingCopyCurrentUserIdentifier", 1325);
    v11 = brc_default_log(0, 0);
    if (os_log_type_enabled(v11, 0x90u))
    {
      BRSharingCopyCurrentUserIdentifier_cold_1();
    }
  }
}

void __BRSharingCopyCurrentUserIdentifier_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __BRSharingCopyCurrentUserIdentifier_block_invoke_2;
  v7[3] = &unk_1E7A15078;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __BRSharingCopyCurrentUserIdentifier_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __BRSharingCopyCurrentUserIdentifier_block_invoke_4;
  block[3] = &unk_1E7A15190;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void BRSharingCopyCurrentUserNameAndDisplayHandle(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = +[BRDaemonConnection defaultConnection];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __BRSharingCopyCurrentUserNameAndDisplayHandle_block_invoke;
    v15[3] = &unk_1E7A15168;
    v7 = v3;
    v16 = v7;
    v8 = v5;
    v17 = v8;
    v9 = [v6 remoteObjectProxyWithErrorHandler:v15];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __BRSharingCopyCurrentUserNameAndDisplayHandle_block_invoke_3;
    v12[3] = &unk_1E7A15208;
    v13 = v7;
    v14 = v8;
    [v9 copyCurrentUserNameAndDisplayHandleWithReply:v12];

    v10 = v16;
  }

  else
  {
    v10 = brc_bread_crumbs("BRSharingCopyCurrentUserNameAndDisplayHandle", 1343);
    v11 = brc_default_log(0, 0);
    if (os_log_type_enabled(v11, 0x90u))
    {
      BRSharingCopyCurrentUserIdentifier_cold_1();
    }
  }
}

void __BRSharingCopyCurrentUserNameAndDisplayHandle_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __BRSharingCopyCurrentUserNameAndDisplayHandle_block_invoke_2;
  v7[3] = &unk_1E7A15078;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __BRSharingCopyCurrentUserNameAndDisplayHandle_block_invoke_3(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a2;
  v10 = a3;
  v11 = a6;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __BRSharingCopyCurrentUserNameAndDisplayHandle_block_invoke_4;
  v17[3] = &unk_1E7A151E0;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v13;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  dispatch_async(v12, v17);
}

void BRSharingCopyCurrentUserNameAndDisplayHandleForURL(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = objc_opt_new();
    v6 = [(BRShareOperation *)[BRShareCopyCurrentUserNameAndDisplayHandleOperation alloc] initWithURL:v3];
    [(BRShareCopyCurrentUserNameAndDisplayHandleOperation *)v6 setShareUserNameCompletionBlock:v4];
    [v5 addOperation:v6];
  }

  else
  {
    v5 = brc_bread_crumbs("BRSharingCopyCurrentUserNameAndDisplayHandleForURL", 1361);
    v6 = brc_default_log(0, 0);
    if (os_log_type_enabled(&v6->super.super.super.super, 0x90u))
    {
      BRSharingCopyCurrentUserNameAndDisplayHandleForURL_cold_1();
    }
  }
}

id BRSharingCreateShareForItemAtURL(void *a1, BRShareCreateShareOperation **a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v4 = [(BRShareOperation *)[BRShareCreateShareOperation alloc] initWithURL:v3];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v36 = __Block_byref_object_copy__3;
    *&v37 = __Block_byref_object_dispose__3;
    *(&v37 + 1) = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__3;
    v24 = __Block_byref_object_dispose__3;
    v25 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __BRSharingCreateShareForItemAtURL_block_invoke;
    v19[3] = &unk_1E7A15230;
    v19[4] = buf;
    v19[5] = &v20;
    [(BRShareCreateShareOperation *)v4 setShareCreateCompletionBlock:v19];
    v5 = objc_opt_new();
    v34 = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
    [v5 addOperations:v6 waitUntilFinished:1];

    v7 = *(*&buf[8] + 40);
    if (!v7)
    {
      v8 = v21[5];
      if (v8)
      {
        v9 = brc_bread_crumbs("BRSharingCreateShareForItemAtURL", 1393);
        v10 = brc_default_log(0, 0);
        if (os_log_type_enabled(v10, 0x90u))
        {
          v18 = "(passed to caller)";
          *v26 = 136315906;
          v27 = "BRSharingCreateShareForItemAtURL";
          v28 = 2080;
          if (!a2)
          {
            v18 = "(ignored by caller)";
          }

          v29 = v18;
          v30 = 2112;
          v31 = v8;
          v32 = 2112;
          v33 = v9;
          _os_log_error_impl(&dword_1AE2A9000, v10, 0x90u, "[ERROR] %s: %s error: %@%@", v26, 0x2Au);
        }
      }

      if (a2)
      {
        v11 = v8;
        *a2 = v8;
      }

      v7 = *(*&buf[8] + 40);
    }

    v12 = v7;

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] brc_errorInvalidParameter:@"fileURL" value:0];
    if (v4)
    {
      v13 = brc_bread_crumbs("BRSharingCreateShareForItemAtURL", 1375);
      v14 = brc_default_log(0, 0);
      if (os_log_type_enabled(v14, 0x90u))
      {
        v17 = "(passed to caller)";
        *buf = 136315906;
        *&buf[4] = "BRSharingCreateShareForItemAtURL";
        *&buf[12] = 2080;
        if (!a2)
        {
          v17 = "(ignored by caller)";
        }

        *&buf[14] = v17;
        *&buf[22] = 2112;
        v36 = v4;
        LOWORD(v37) = 2112;
        *(&v37 + 2) = v13;
        _os_log_error_impl(&dword_1AE2A9000, v14, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (a2)
    {
      v15 = v4;
      v12 = 0;
      *a2 = v4;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

void sub_1AE2D14A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 144), 8);
  _Unwind_Resume(a1);
}

void __BRSharingCreateShareForItemAtURL_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id BRSharingCreateShareForItemWithIdentifier(void *a1, BRShareCreateShareOperation **a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v4 = [(BRShareOperation *)[BRShareCreateShareOperation alloc] initWithItemIdentifier:v3];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v36 = __Block_byref_object_copy__3;
    *&v37 = __Block_byref_object_dispose__3;
    *(&v37 + 1) = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__3;
    v24 = __Block_byref_object_dispose__3;
    v25 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __BRSharingCreateShareForItemWithIdentifier_block_invoke;
    v19[3] = &unk_1E7A15230;
    v19[4] = buf;
    v19[5] = &v20;
    [(BRShareCreateShareOperation *)v4 setShareCreateCompletionBlock:v19];
    v5 = objc_opt_new();
    v34 = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
    [v5 addOperations:v6 waitUntilFinished:1];

    v7 = *(*&buf[8] + 40);
    if (!v7)
    {
      v8 = v21[5];
      if (v8)
      {
        v9 = brc_bread_crumbs("BRSharingCreateShareForItemWithIdentifier", 1421);
        v10 = brc_default_log(0, 0);
        if (os_log_type_enabled(v10, 0x90u))
        {
          v18 = "(passed to caller)";
          *v26 = 136315906;
          v27 = "BRSharingCreateShareForItemWithIdentifier";
          v28 = 2080;
          if (!a2)
          {
            v18 = "(ignored by caller)";
          }

          v29 = v18;
          v30 = 2112;
          v31 = v8;
          v32 = 2112;
          v33 = v9;
          _os_log_error_impl(&dword_1AE2A9000, v10, 0x90u, "[ERROR] %s: %s error: %@%@", v26, 0x2Au);
        }
      }

      if (a2)
      {
        v11 = v8;
        *a2 = v8;
      }

      v7 = *(*&buf[8] + 40);
    }

    v12 = v7;

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] brc_errorInvalidParameter:@"itemID" value:0];
    if (v4)
    {
      v13 = brc_bread_crumbs("BRSharingCreateShareForItemWithIdentifier", 1403);
      v14 = brc_default_log(0, 0);
      if (os_log_type_enabled(v14, 0x90u))
      {
        v17 = "(passed to caller)";
        *buf = 136315906;
        *&buf[4] = "BRSharingCreateShareForItemWithIdentifier";
        *&buf[12] = 2080;
        if (!a2)
        {
          v17 = "(ignored by caller)";
        }

        *&buf[14] = v17;
        *&buf[22] = 2112;
        v36 = v4;
        LOWORD(v37) = 2112;
        *(&v37 + 2) = v13;
        _os_log_error_impl(&dword_1AE2A9000, v14, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (a2)
    {
      v15 = v4;
      v12 = 0;
      *a2 = v4;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

void sub_1AE2D1940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 144), 8);
  _Unwind_Resume(a1);
}

void __BRSharingCreateShareForItemWithIdentifier_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void BRSharingBulkCopyShareID(void *a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6 && v7)
  {
    if ([v5 count])
    {
      v28[0] = 0;
      v28[1] = v28;
      v28[2] = 0x3032000000;
      v28[3] = __Block_byref_object_copy__3;
      v28[4] = __Block_byref_object_dispose__3;
      v29 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
      v26[0] = 0;
      v26[1] = v26;
      v26[2] = 0x3032000000;
      v26[3] = __Block_byref_object_copy__3;
      v26[4] = __Block_byref_object_dispose__3;
      v27 = 0;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      obj = v5;
      v9 = [obj countByEnumeratingWithState:&v22 objects:v33 count:16];
      if (v9)
      {
        v10 = *v23;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v23 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v22 + 1) + 8 * i);
            v13 = [v12 _br_itemServiceSyncProxy];
            v21[0] = MEMORY[0x1E69E9820];
            v21[1] = 3221225472;
            v21[2] = __BRSharingBulkCopyShareID_block_invoke_2;
            v21[3] = &unk_1E7A15258;
            v21[4] = v12;
            v21[5] = v26;
            v21[6] = v28;
            [v13 copyShareIDWithReply:v21];
          }

          v9 = [obj countByEnumeratingWithState:&v22 objects:v33 count:16];
        }

        while (v9);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __BRSharingBulkCopyShareID_block_invoke_3;
      block[3] = &unk_1E7A15280;
      v18 = v8;
      v19 = v28;
      v20 = v26;
      dispatch_async(v6, block);

      _Block_object_dispose(v26, 8);
      _Block_object_dispose(v28, 8);
    }

    else
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __BRSharingBulkCopyShareID_block_invoke;
      v30[3] = &unk_1E7A15078;
      v32 = v8;
      v31 = v5;
      dispatch_async(v6, v30);
    }
  }

  else
  {
    v14 = brc_bread_crumbs("BRSharingBulkCopyShareID", 1431);
    v15 = brc_default_log(0, 0);
    if (os_log_type_enabled(v15, 0x90u))
    {
      BRSharingCopyCurrentUserIdentifier_cold_1();
    }
  }
}

void sub_1AE2D1DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __BRSharingBulkCopyShareID_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [MEMORY[0x1E696ABC0] brc_errorInvalidParameter:@"fileURLs" value:*(a1 + 32)];
  (*(v1 + 16))(v1, 0, v2);
}

uint64_t __BRSharingBulkCopyShareID_block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696ABC0] brc_addPartialError:a3 forURL:a1[4] toError:*(*(a1[5] + 8) + 40)];
    v5 = *(a1[5] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = *(*(a1[6] + 8) + 40);
    v8 = a1[4];
    v9 = 0;
  }

  else
  {
    v7 = *(*(a1[6] + 8) + 40);
    v8 = a1[4];
    v9 = a2;
  }

  return [v7 setObject:v9 forKeyedSubscript:v8];
}

void BRDaemonConnectionInvalidate()
{
  v0 = +[BRDaemonConnection defaultConnection];
  [v0 invalidate];

  v1 = +[BRDaemonConnection secondaryConnection];
  [v1 invalidate];
}

uint64_t BRGetMigrationStatusForDSID(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  if (v1)
  {
    v3 = [@"icloud-drive.account-migration-status." stringByAppendingString:v1];
    keyExistsAndHasValidFormat = 0;
    if (!CFPreferencesAppSynchronize(BRDefaultsDomain))
    {
      v4 = brc_bread_crumbs("BRGetMigrationStatusForDSID", 1533);
      v5 = brc_default_log(1, 0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v12 = BRDefaultsDomain;
        v13 = 2112;
        v14 = v4;
        _os_log_impl(&dword_1AE2A9000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] failed to synchronize user defaults for %@%@", buf, 0x16u);
      }
    }

    AppIntegerValue = CFPreferencesGetAppIntegerValue(v3, BRDefaultsDomain, &keyExistsAndHasValidFormat);
    v7 = 0x302020100FFuLL >> (8 * ((AppIntegerValue + 1) & 0x1Fu));
    if ((AppIntegerValue + 1) > 5u)
    {
      LOBYTE(v7) = 0;
    }

    if (keyExistsAndHasValidFormat)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = -1;
  }

  objc_autoreleasePoolPop(v2);

  return v8;
}

uint64_t BRSetMigrationStatusForDSIDAndUpdateAccount(void *a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (BRGetMigrationStatusForDSID(v5) >= a2)
  {
    v12 = 1;
  }

  else
  {
    memset(v20, 0, sizeof(v20));
    __brc_create_section(0, "BRSetMigrationStatusForDSIDAndUpdateAccount", 1556, 0, v20);
    v6 = brc_bread_crumbs("BRSetMigrationStatusForDSIDAndUpdateAccount", 1556);
    v7 = brc_default_log(1, 0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218754;
      *v22 = v20[0];
      *&v22[8] = 1024;
      *&v22[10] = a2;
      v23 = 2112;
      v24 = v5;
      v25 = 2112;
      v26 = v6;
      _os_log_debug_impl(&dword_1AE2A9000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx setting migration status %d for %@%@", buf, 0x26u);
    }

    v8 = +[BRDaemonConnection secondaryConnection];
    v9 = [v8 newSyncProxy];

    objc_initWeak(&location, v9);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __BRSetMigrationStatusForDSIDAndUpdateAccount_block_invoke;
    v17[3] = &unk_1E7A148A8;
    objc_copyWeak(&v18, &location);
    [v9 setMigrationStatus:a2 forDSID:v5 shouldUpdateAccount:a3 reply:v17];
    v10 = [v9 result];
    v11 = v10 == 0;

    if (v11)
    {
      v13 = brc_bread_crumbs("BRSetMigrationStatusForDSIDAndUpdateAccount", 1564);
      v14 = brc_default_log(0, 0);
      if (os_log_type_enabled(v14, 0x90u))
      {
        v16 = [v9 error];
        *buf = 67109890;
        *v22 = a2;
        *&v22[4] = 2112;
        *&v22[6] = v5;
        v23 = 2112;
        v24 = v16;
        v25 = 2112;
        v26 = v13;
        _os_log_error_impl(&dword_1AE2A9000, v14, 0x90u, "[ERROR] can't set migration status %d for %@: %@%@", buf, 0x26u);
      }

      v12 = 0;
    }

    else
    {
      v12 = 1;
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);

    __brc_leave_section(v20);
  }

  return v12;
}

void sub_1AE2D23E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  __brc_leave_section(&a16);
  _Unwind_Resume(a1);
}

void __BRSetMigrationStatusForDSIDAndUpdateAccount_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setBoolResult:1 error:v3];
}

void BRUnsetMigrationStatusForDSIDInPref(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  memset(v9, 0, sizeof(v9));
  __brc_create_section(0, "BRUnsetMigrationStatusForDSIDInPref", 1573, 0, v9);
  v2 = brc_bread_crumbs("BRUnsetMigrationStatusForDSIDInPref", 1573);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v11 = v9[0];
    v12 = 2112;
    v13 = v1;
    v14 = 2112;
    v15 = v2;
    _os_log_debug_impl(&dword_1AE2A9000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx deleting migration status for dsid %@%@", buf, 0x20u);
  }

  if (v1)
  {
    v4 = brc_bread_crumbs("BRUnsetMigrationStatusForDSIDInPref", 1577);
    v5 = brc_default_log(1, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = v1;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1AE2A9000, v5, OS_LOG_TYPE_DEFAULT, "[NOTICE] removing migration status for %@%@", buf, 0x16u);
    }

    v6 = [@"icloud-drive.account-migration-status." stringByAppendingString:v1];
    CFPreferencesSetAppValue(v6, 0, BRDefaultsDomain);
    if (!CFPreferencesAppSynchronize(BRDefaultsDomain))
    {
      v7 = brc_bread_crumbs("BRUnsetMigrationStatusForDSIDInPref", 1582);
      v8 = brc_default_log(1, 0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v11 = BRDefaultsDomain;
        v12 = 2112;
        v13 = v7;
        _os_log_impl(&dword_1AE2A9000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] failed to delete user defaults for %@%@", buf, 0x16u);
      }
    }
  }

  __brc_leave_section(v9);
}

void sub_1AE2D2704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

uint64_t BRSetMigrationStatusForDSIDInPref(void *a1, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (a2 == 1)
  {
    v5 = brc_bread_crumbs("BRSetMigrationStatusForDSIDInPref", 1591);
    v6 = brc_default_log(1, 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      BRSetMigrationStatusForDSIDInPref_cold_2();
    }

    goto LABEL_5;
  }

  if (v3)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [@"icloud-drive.account-migration-status." stringByAppendingString:v4];
    if ((a2 + 1) >= 5)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0x4020000FFuLL >> (8 * (a2 + 1));
    }

    v11 = [MEMORY[0x1E696AD98] numberWithChar:v10];
    v12 = BRGetMigrationStatusForDSID(v4);
    if (v12 == a2)
    {
      v13 = brc_bread_crumbs("BRSetMigrationStatusForDSIDInPref", 1608);
      v14 = brc_default_log(1, 0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109634;
        *v21 = a2;
        *&v21[4] = 2112;
        *&v21[6] = v4;
        *&v21[14] = 2112;
        *&v21[16] = v13;
        _os_log_debug_impl(&dword_1AE2A9000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] not setting status to %d for %@ because that's the current value of the default%@", buf, 0x1Cu);
      }
    }

    else
    {
      if (v12 <= a2)
      {
        v17 = brc_bread_crumbs("BRSetMigrationStatusForDSIDInPref", 1614);
        v18 = brc_default_log(1, 0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          *v21 = v4;
          *&v21[8] = 1024;
          *&v21[10] = a2;
          *&v21[14] = 2112;
          *&v21[16] = v17;
          _os_log_impl(&dword_1AE2A9000, v18, OS_LOG_TYPE_DEFAULT, "[NOTICE] migration update for %@; status is now %d%@", buf, 0x1Cu);
        }

        v19 = [v4 description];
        syslog(5, "migration update for %s; status is now %d", [v19 UTF8String], a2);

        CFPreferencesSetAppValue(v9, v11, BRDefaultsDomain);
        if (CFPreferencesAppSynchronize(BRDefaultsDomain))
        {
          v7 = 1;
          goto LABEL_18;
        }

        v13 = brc_bread_crumbs("BRSetMigrationStatusForDSIDInPref", 1620);
        v7 = 1;
        v14 = brc_default_log(1, 0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v21 = BRDefaultsDomain;
          *&v21[8] = 2112;
          *&v21[10] = v13;
          _os_log_impl(&dword_1AE2A9000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] failed to synchronize user defaults for %@%@", buf, 0x16u);
        }

LABEL_17:

LABEL_18:
        objc_autoreleasePoolPop(v8);
        goto LABEL_19;
      }

      v15 = v12;
      v13 = brc_bread_crumbs("BRSetMigrationStatusForDSIDInPref", 1611);
      v14 = brc_default_log(1, 0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109890;
        *v21 = a2;
        *&v21[4] = 2112;
        *&v21[6] = v4;
        *&v21[14] = 1024;
        *&v21[16] = v15;
        *&v21[20] = 2112;
        *&v21[22] = v13;
        _os_log_impl(&dword_1AE2A9000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] not setting status to %d for %@, because it's going backward (old:%d)%@", buf, 0x22u);
      }
    }

    v7 = 0;
    goto LABEL_17;
  }

  BRSetMigrationStatusForDSIDInPref_cold_1();
LABEL_5:
  v7 = 0;
LABEL_19:

  return v7;
}

id BRPrimaryiCloudAccountCopyStatus(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  memset(v20, 0, sizeof(v20));
  __brc_create_section(0, "BRPrimaryiCloudAccountCopyStatus", 1638, 0, v20);
  v2 = brc_bread_crumbs("BRPrimaryiCloudAccountCopyStatus", 1638);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    BRPrimaryiCloudAccountCopyStatus_cold_1();
  }

  v4 = [[BRDaemonConnection alloc] initUsingUserLocalDaemonTokenService];
  v5 = [v4 newSyncTokenProxy];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __BRPrimaryiCloudAccountCopyStatus_block_invoke;
  v18 = &unk_1E7A152E8;
  v6 = v5;
  v19 = v6;
  [v6 getPrimaryiCloudAccountStatus:&v15];
  v7 = [v6 result];
  v8 = brc_bread_crumbs("BRPrimaryiCloudAccountCopyStatus", 1646);
  v9 = brc_default_log(1, 0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    BRPrimaryiCloudAccountCopyStatus_cold_2();
  }

  v10 = [v6 error];

  if (v10)
  {
    v11 = brc_bread_crumbs("BRPrimaryiCloudAccountCopyStatus", 1648);
    v12 = brc_default_log(0, 0);
    if (os_log_type_enabled(v12, 0x90u))
    {
      v13 = [v6 error];
      BRPrimaryiCloudAccountCopyStatus_cold_3(v13, v11, buf, v12);
    }

    if (a1)
    {
      *a1 = [v6 error];
    }
  }

  [v4 invalidate];

  __brc_leave_section(v20);

  return v7;
}

void sub_1AE2D2D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

id BRGetCKRecordIDsForFPItems(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [a1 br_transform:&__block_literal_global_132];
  v4 = +[BRDaemonConnection secondaryConnection];
  v5 = [v4 newFPFSSyncProxy];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __BRGetCKRecordIDsForFPItems_block_invoke_2;
  v14[3] = &unk_1E7A152E8;
  v6 = v5;
  v15 = v6;
  [v6 getCKRecordIDsForFPItems:v3 reply:v14];
  v7 = [v6 error];
  if (v7)
  {
    v8 = brc_bread_crumbs("BRGetCKRecordIDsForFPItems", 1666);
    v9 = brc_default_log(0, 0);
    if (os_log_type_enabled(v9, 0x90u))
    {
      v13 = "(passed to caller)";
      *buf = 136315906;
      v17 = "BRGetCKRecordIDsForFPItems";
      v18 = 2080;
      if (!a2)
      {
        v13 = "(ignored by caller)";
      }

      v19 = v13;
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v8;
      _os_log_error_impl(&dword_1AE2A9000, v9, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (a2)
  {
    v10 = v7;
    *a2 = v7;
  }

  v11 = [v6 result];

  return v11;
}

id __BRGetCKRecordIDsForFPItems_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DEC8];
  v3 = a2;
  v4 = [v3 itemID];
  v5 = [v3 providerItemIdentifier];

  v6 = [v2 arrayWithObjects:{v4, v5, 0}];

  return v6;
}

uint64_t BRGetCloudEnabledStatusForAuditToken(_OWORD *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = +[BRDaemonConnection secondaryConnection];
  v5 = [v4 newSyncProxy];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __BRGetCloudEnabledStatusForAuditToken_block_invoke;
  v16[3] = &unk_1E7A15330;
  v6 = v5;
  v17 = v6;
  v7 = a1[1];
  *buf = *a1;
  *&buf[16] = v7;
  [v6 getApplicationStatusForProcess:buf reply:v16];
  v8 = [v6 result];
  v9 = [v6 error];
  if (v9)
  {
    v10 = brc_bread_crumbs("BRGetCloudEnabledStatusForAuditToken", 1694);
    v11 = brc_default_log(0, 0);
    if (os_log_type_enabled(v11, 0x90u))
    {
      v15 = "(passed to caller)";
      *buf = 136315906;
      *&buf[4] = "BRGetCloudEnabledStatusForAuditToken";
      *&buf[12] = 2080;
      if (!a2)
      {
        v15 = "(ignored by caller)";
      }

      *&buf[14] = v15;
      *&buf[22] = 2112;
      *&buf[24] = v9;
      v19 = 2112;
      v20 = v10;
      _os_log_error_impl(&dword_1AE2A9000, v11, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (a2)
  {
    v12 = v9;
    *a2 = v9;
  }

  v13 = [v8 charValue];
  return v13;
}

void __BRGetCloudEnabledStatusForAuditToken_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696AD98];
  v6 = a3;
  v7 = [v5 numberWithChar:a2];
  [v4 setObjResult:v7 error:v6];
}

uint64_t BRGetCloudEnabledStatus(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = +[BRDaemonConnection secondaryConnection];
  v3 = [v2 newSyncProxy];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __BRGetCloudEnabledStatus_block_invoke;
  v13[3] = &unk_1E7A15330;
  v4 = v3;
  v14 = v4;
  [v4 getApplicationStatus:v13];
  v5 = [v4 result];
  v6 = [v4 error];
  if (v6)
  {
    v7 = brc_bread_crumbs("BRGetCloudEnabledStatus", 1706);
    v8 = brc_default_log(0, 0);
    if (os_log_type_enabled(v8, 0x90u))
    {
      v12 = "(passed to caller)";
      *buf = 136315906;
      v16 = "BRGetCloudEnabledStatus";
      v17 = 2080;
      if (!a1)
      {
        v12 = "(ignored by caller)";
      }

      v18 = v12;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      _os_log_error_impl(&dword_1AE2A9000, v8, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (a1)
  {
    v9 = v6;
    *a1 = v6;
  }

  v10 = [v5 charValue];
  return v10;
}

void __BRGetCloudEnabledStatus_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696AD98];
  v6 = a3;
  v7 = [v5 numberWithChar:a2];
  [v4 setObjResult:v7 error:v6];
}

uint64_t BRCloudDocsCanBeEnabledForCurrentUser()
{
  memset(v4, 0, sizeof(v4));
  __brc_create_section(0, "BRCloudDocsCanBeEnabledForCurrentUser", 1780, 0, v4);
  v0 = brc_bread_crumbs("BRCloudDocsCanBeEnabledForCurrentUser", 1780);
  v1 = brc_default_log(1, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    BRCloudDocsCanBeEnabledForCurrentUser_cold_1();
  }

  if (BRCloudDocsCanBeEnabledForCurrentUser_onceToken != -1)
  {
    BRCloudDocsCanBeEnabledForCurrentUser_cold_2();
  }

  v2 = BRCloudDocsCanBeEnabledForCurrentUser_canBeEnabled;
  __brc_leave_section(v4);
  return v2;
}

void sub_1AE2D3654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void __BRCloudDocsCanBeEnabledForCurrentUser_block_invoke()
{
  v36 = *MEMORY[0x1E69E9840];
  v0 = +[BRSpecialFolders homeDirForCurrentPersona];
  v1 = v0;
  if (v0)
  {
    v2 = MEMORY[0x1E695DFF8];
    v3 = [v0 br_realpath];
    v4 = [v2 fileURLWithPath:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = brc_bread_crumbs("BRCloudDocsCanBeEnabledStateForURL", 1723);
  v7 = brc_default_log(1, 0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __BRCloudDocsCanBeEnabledForCurrentUser_block_invoke_cold_1();
  }

  if (!v5)
  {
    v9 = brc_bread_crumbs("BRCloudDocsCanBeEnabledStateForURL", 1726);
    v10 = brc_default_log(1, 0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __BRCloudDocsCanBeEnabledForCurrentUser_block_invoke_cold_3();
    }

    v11 = 0;
    goto LABEL_20;
  }

  v8 = *MEMORY[0x1E695DEB0];
  v9 = [MEMORY[0x1E695DF70] arrayWithObject:*MEMORY[0x1E695DEB0]];
  v27 = 0;
  v10 = [v5 resourceValuesForKeys:v9 error:&v27];
  v11 = v27;
  if (!v10)
  {
    v10 = brc_bread_crumbs("BRCloudDocsCanBeEnabledStateForURL", 1738);
    v18 = brc_default_log(0, 0);
    if (os_log_type_enabled(v18, 0x90u))
    {
      v23 = [v5 path];
      *buf = 138413058;
      v29 = v23;
      v30 = 2112;
      v31 = v9;
      v32 = 2112;
      v33 = v11;
      v34 = 2112;
      v35 = v10;
      _os_log_error_impl(&dword_1AE2A9000, v18, 0x90u, "[ERROR] failed to get %@ resource values for keys %@: %@%@", buf, 0x2Au);
    }

LABEL_20:
    v15 = 0;
    v12 = 0;
    v17 = -1;
    goto LABEL_25;
  }

  v12 = [v10 objectForKeyedSubscript:v8];
  if (!v12)
  {
    __BRCloudDocsCanBeEnabledForCurrentUser_block_invoke_cold_2();
  }

  v26 = 0;
  v13 = *MEMORY[0x1E695DDA8];
  v25 = 0;
  v14 = [v12 getResourceValue:&v26 forKey:v13 error:&v25];
  v15 = v26;
  v16 = v25;

  if (v14)
  {
    if ([v15 BOOLValue])
    {
      v17 = 1;
    }

    else
    {
      v17 = -1;
    }
  }

  else
  {
    v19 = brc_bread_crumbs("BRCloudDocsCanBeEnabledStateForURL", 1755);
    v20 = brc_default_log(0, 0);
    if (os_log_type_enabled(v20, 0x90u))
    {
      v24 = [v12 path];
      *buf = 138412802;
      v29 = v24;
      v30 = 2112;
      v31 = v16;
      v32 = 2112;
      v33 = v19;
      _os_log_error_impl(&dword_1AE2A9000, v20, 0x90u, "[ERROR] can't find if volume %@ is local: %@%@", buf, 0x20u);
    }

    v17 = -1;
  }

  v11 = v16;
LABEL_25:

  v21 = brc_bread_crumbs("BRCloudDocsCanBeEnabledStateForURL", 1765);
  v22 = brc_default_log(1, 0);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    __BRCloudDocsCanBeEnabledForCurrentUser_block_invoke_cold_4();
  }

  BRCloudDocsCanBeEnabledForCurrentUser_canBeEnabled = v17;
}

uint64_t BRHandoffDidReceiveApplicationContinuity(void *a1, void *a2)
{
  v3 = a1;
  v4 = +[BRDaemonConnection defaultConnection];
  v5 = [v4 newSyncProxy];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __BRHandoffDidReceiveApplicationContinuity_block_invoke;
  v10[3] = &unk_1E7A14830;
  v6 = v5;
  v11 = v6;
  [v6 didReceiveHandoffRequestForBundleID:v3 reply:v10];

  v7 = [v6 result];
  v8 = [v7 BOOLValue];

  if (a2 && (v8 & 1) == 0)
  {
    *a2 = [v6 error];
  }

  return v8;
}

id BRLoggedInUserAccountProperties(void *a1, void *a2)
{
  v3 = a1;
  v4 = +[BRDaemonConnection defaultConnection];
  v5 = [v4 newSyncProxy];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __BRLoggedInUserAccountProperties_block_invoke;
  v9[3] = &unk_1E7A152E8;
  v6 = v5;
  v10 = v6;
  [v6 getLoggedInUserPropertyValuesForKeys:v3 reply:v9];

  v7 = [v6 result];
  if (a2)
  {
    *a2 = [v6 error];
  }

  return v7;
}

BOOL BRCopyLoggedInUserFirstAndLastName(void *a1, void *a2, void *a3)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"BRLoggedInUserFirstNameKey";
  v9[1] = @"BRLoggedInUserLastNameKey";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v7 = BRLoggedInUserAccountProperties(v6, a3);

  if (a1)
  {
    *a1 = [v7 objectForKeyedSubscript:@"BRLoggedInUserFirstNameKey"];
  }

  if (a2)
  {
    *a2 = [v7 objectForKeyedSubscript:@"BRLoggedInUserLastNameKey"];
  }

  return v7 != 0;
}

BOOL BRLoggedInUserHasManagedAppleID(_BYTE *a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = @"BRLoggedInUserHasManagedAppleIDKey";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = BRLoggedInUserAccountProperties(v4, a2);

  if (a1)
  {
    v6 = [v5 objectForKeyedSubscript:@"BRLoggedInUserHasManagedAppleIDKey"];
    *a1 = [v6 BOOLValue];
  }

  return v5 != 0;
}

id BRGetLastSyncDateWithError(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = +[BRDaemonConnection secondaryConnection];
  v3 = [v2 newSyncProxy];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __BRGetLastSyncDateWithError_block_invoke;
  v12[3] = &unk_1E7A15358;
  v4 = v3;
  v13 = v4;
  [v4 getLastSyncDateWithReply:v12];
  v5 = [v4 result];
  v6 = [v4 error];
  if (v6)
  {
    v7 = brc_bread_crumbs("BRGetLastSyncDateWithError", 1904);
    v8 = brc_default_log(0, 0);
    if (os_log_type_enabled(v8, 0x90u))
    {
      v11 = "(passed to caller)";
      *buf = 136315906;
      v15 = "BRGetLastSyncDateWithError";
      v16 = 2080;
      if (!a1)
      {
        v11 = "(ignored by caller)";
      }

      v17 = v11;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      _os_log_error_impl(&dword_1AE2A9000, v8, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (a1)
  {
    v9 = v6;
    *a1 = v6;
  }

  return v5;
}

id BRGetLocalizedLastSyncWithError(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = +[BRDaemonConnection secondaryConnection];
  v3 = [v2 newSyncProxy];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __BRGetLocalizedLastSyncWithError_block_invoke;
  v12[3] = &unk_1E7A14CF8;
  v4 = v3;
  v13 = v4;
  [v4 getLocalizedLastSyncWithReply:v12];
  v5 = [v4 result];
  v6 = [v4 error];
  if (v6)
  {
    v7 = brc_bread_crumbs("BRGetLocalizedLastSyncWithError", 1917);
    v8 = brc_default_log(0, 0);
    if (os_log_type_enabled(v8, 0x90u))
    {
      v11 = "(passed to caller)";
      *buf = 136315906;
      v15 = "BRGetLocalizedLastSyncWithError";
      v16 = 2080;
      if (!a1)
      {
        v11 = "(ignored by caller)";
      }

      v17 = v11;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      _os_log_error_impl(&dword_1AE2A9000, v8, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (a1)
  {
    v9 = v6;
    *a1 = v6;
  }

  return v5;
}

id getSharingServiceInterface(uint64_t a1)
{
  if (getSharingServiceInterface_onceToken != -1)
  {
    getSharingServiceInterface_cold_1();
  }

  v2 = getSharingServiceInterface_interface;

  return v2;
}

uint64_t __getSharingServiceInterface_block_invoke()
{
  getSharingServiceInterface_interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F240B248];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t BRIsDefaultDomain(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 identifier];
    if (v3)
    {
      v4 = [v2 identifier];
      v5 = [v4 isEqualToString:*MEMORY[0x1E6967170]];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t BROverrideUploadOnCellularConstraints(void *a1)
{
  v2 = +[BRDaemonConnection defaultConnection];
  v3 = [v2 newFPFSSyncProxy];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __BROverrideUploadOnCellularConstraints_block_invoke;
  v8[3] = &unk_1E7A14830;
  v4 = v3;
  v9 = v4;
  [v4 overrideUploadOnCellularConstraintsWithReply:v8];
  if (a1)
  {
    *a1 = [v4 error];
  }

  v5 = [v4 result];
  v6 = [v5 BOOLValue];

  return v6;
}

void __br_notify_register_dispatch_block_invoke_1(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) isEqualToString:@"__defaultPersonaID__"] & 1) != 0 || (v2 = *(a1 + 32)) == 0)
  {
    if (ICDErrorRetryAfterKey_block_invoke___personaOnceToken != -1)
    {
      __br_notify_register_dispatch_block_invoke_cold_1_1();
    }

    v3 = ICDErrorRetryAfterKey_block_invoke___personalPersona;
    v4 = 1;
  }

  else
  {
    v3 = v2;
    v4 = 0;
  }

  v5 = [MEMORY[0x1E69DF068] sharedManager];
  v6 = [v5 currentPersona];

  v27 = 0;
  v7 = [v6 userPersonaUniqueString];
  v8 = v7;
  if (v7 == v3 || ([v7 isEqualToString:v3] & 1) != 0)
  {
    goto LABEL_9;
  }

  if (!voucher_process_can_use_arbitrary_personas())
  {
    if (v4 && ([v6 isDataSeparatedPersona] & 1) == 0)
    {
      v21 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 110);
      v22 = brc_default_log(1, 0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [BRAccount containerWithPendingChanges];
      }
    }

    else
    {
      v17 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 110);
      v18 = brc_default_log(1, 0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [BRAccount containerWithPendingChanges];
      }

      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      if (v14)
      {
        goto LABEL_25;
      }
    }

LABEL_9:
    (*(*(a1 + 40) + 16))();
    goto LABEL_10;
  }

  v26 = 0;
  v9 = [v6 copyCurrentPersonaContextWithError:&v26];
  v10 = v26;
  v11 = v27;
  v27 = v9;

  if (v10)
  {
    v12 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 110);
    v13 = brc_default_log(0, 0);
    if (os_log_type_enabled(v13, 0x90u))
    {
      __br_notify_register_dispatch_block_invoke_cold_4_0();
    }
  }

  v14 = [v6 br_generateAndRestorePersonaContextWithPersonaUniqueString:v3];

  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 110);
  v16 = brc_default_log(0, 0);
  if (os_log_type_enabled(v16, 0x90u))
  {
    v25 = *(a1 + 32);
    *buf = 138412802;
    v29 = v25;
    v30 = 2112;
    v31 = v14;
    v32 = 2112;
    v33 = v15;
    _os_log_error_impl(&dword_1AE2A9000, v16, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
  }

LABEL_25:
  v19 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 112);
  v20 = brc_default_log(0, 0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    v23 = *(a1 + 48);
    v24 = [v14 localizedDescription];
    *buf = 136315650;
    v29 = v23;
    v30 = 2112;
    v31 = v24;
    v32 = 2112;
    v33 = v19;
    _os_log_fault_impl(&dword_1AE2A9000, v20, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Failed to adopt persona for notification %s due to %@%@", buf, 0x20u);
  }

LABEL_10:
  _BRRestorePersona(&v27);
}

void sub_1AE2D4A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _BRRestorePersona(va);
  _Unwind_Resume(a1);
}

void __br_notify_register_dispatch_block_invoke_2_1()
{
  v2 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = ICDErrorRetryAfterKey_block_invoke___personalPersona;
  ICDErrorRetryAfterKey_block_invoke___personalPersona = v0;
}

id brc_trace_log()
{
  v0 = *__error();
  v1 = [MEMORY[0x1E69DF068] sharedManager];
  v2 = [v1 currentPersona];
  v3 = [v2 isDataSeparatedPersona];

  if (+[BRContainerCache isPersonalProvider])
  {
    if (!v3)
    {
      goto LABEL_6;
    }

    v4 = brc_bread_crumbs("brc_trace_log", 77);
    v5 = brc_default_log(0, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      brc_default_log_cold_3();
    }
  }

  else
  {
    if (v3 & 1 | !+[BRContainerCache isManagedProvider])
    {
      goto LABEL_6;
    }

    v4 = brc_bread_crumbs("brc_trace_log", 79);
    v5 = brc_default_log(0, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      brc_default_log_cold_2();
    }
  }

LABEL_6:
  if (brc_trace_log_once != -1)
  {
    brc_trace_log_cold_3();
  }

  *__error() = v0;
  v6 = &brc_trace_log_loggerEnterprise;
  if (!v3)
  {
    v6 = &brc_trace_log_loggerPersonal;
  }

  v7 = *v6;

  return v7;
}

uint64_t __brc_trace_log_block_invoke()
{
  v0 = os_log_create("com.apple.clouddocs", "trace personal");
  v1 = brc_trace_log_loggerPersonal;
  brc_trace_log_loggerPersonal = v0;

  brc_trace_log_loggerEnterprise = os_log_create("com.apple.clouddocs", "trace enterprise");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __brc_notifications_log_block_invoke()
{
  v0 = os_log_create("com.apple.clouddocs", "notifications personal");
  v1 = brc_notifications_log_loggerPersonal;
  brc_notifications_log_loggerPersonal = v0;

  brc_notifications_log_loggerEnterprise = os_log_create("com.apple.clouddocs", "notifications enterprise");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t _brc_log_is_internal_install(uint64_t a1, uint64_t a2)
{
  if (_brc_log_is_internal_install_once != -1)
  {
    _brc_log_is_internal_install_cold_1();
  }

  return _brc_log_is_internal_install_isAppleInternalInstall;
}

uint64_t ___brc_log_is_internal_install_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFEqual(v0, @"Internal") != 0;
    CFRelease(v1);
  }

  else
  {
    v2 = 0;
  }

  result = access("/AppleInternal", 0);
  _brc_log_is_internal_install_isAppleInternalInstall = v2;
  return result;
}

id brc_signpost_log()
{
  v0 = *__error();
  v1 = [MEMORY[0x1E69DF068] sharedManager];
  v2 = [v1 currentPersona];
  v3 = [v2 isDataSeparatedPersona];

  if (+[BRContainerCache isPersonalProvider])
  {
    if (!v3)
    {
      goto LABEL_6;
    }

    v4 = brc_bread_crumbs("brc_signpost_log", 148);
    v5 = brc_default_log(0, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      brc_default_log_cold_3();
    }
  }

  else
  {
    if (v3 & 1 | !+[BRContainerCache isManagedProvider])
    {
      goto LABEL_6;
    }

    v4 = brc_bread_crumbs("brc_signpost_log", 150);
    v5 = brc_default_log(0, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      brc_default_log_cold_2();
    }
  }

LABEL_6:
  if (brc_signpost_log_once != -1)
  {
    brc_signpost_log_cold_3();
  }

  *__error() = v0;
  v6 = &brc_signpost_log_loggerEnterprise;
  if (!v3)
  {
    v6 = &brc_signpost_log_loggerPersonal;
  }

  v7 = *v6;

  return v7;
}

uint64_t __brc_signpost_log_block_invoke()
{
  v0 = os_log_create("com.apple.clouddocs", "signpost personal");
  v1 = brc_signpost_log_loggerPersonal;
  brc_signpost_log_loggerPersonal = v0;

  brc_signpost_log_loggerEnterprise = os_log_create("com.apple.clouddocs", "signpost enterprise");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t _brc_create_simulate_crash_message(uint64_t a1, uint64_t a2)
{
  if (_brc_log_is_internal_install_once != -1)
  {
    _brc_log_is_internal_install_cold_1();
  }

  return 0;
}

void _brc_assert_failure(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6, a7, a8);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v9;
  v32 = *MEMORY[0x1E69E9840];
  v18 = v17;
  signal(6, 0);
  v19 = objc_autoreleasePoolPush();
  brc_backtrace_detailed_snprint(v31, 0x2000uLL);
  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v18 arguments:&a9];
  v21 = brc_bread_crumbs(v15, v11);
  v22 = brc_default_log(0, 0);
  if (os_log_type_enabled(v22, 0x90u))
  {
    *buf = 136315906;
    v24 = v16;
    v25 = 2112;
    v26 = v20;
    v27 = 2080;
    v28 = v31;
    v29 = 2112;
    v30 = v21;
    _os_log_error_impl(&dword_1AE2A9000, v22, 0x90u, "[ERROR] %s%@\n%s%@", buf, 0x2Au);
  }

  __assert_rtn(v15, v13, v11, [v20 UTF8String]);
}

void abc_report_assert_with_signature(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = time(0);
    v5 = atomic_load(a1);
    if ((v4 - v5) < 3600)
    {
      if (atomic_fetch_add((a1 + 8), 1uLL) > 5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      atomic_store(1uLL, (a1 + 8));
    }

    atomic_store(v4, a1);
  }

  v13 = signature_from_format_and_subtype(v3);
  if (_brc_log_is_internal_install_once != -1)
  {
    _brc_log_is_internal_install_cold_1();
  }

  if (_brc_log_is_internal_install_isAppleInternalInstall == 1)
  {
    brc_backtrace();
  }

  else
  {
    brc_backtrace_non_detailed_but_fast(3, v6, v7, v8, v9, v10, v11, v12);
  }
  v14 = ;
  v15 = get_sd_reporter(v14);
  v20 = @"backtrace";
  v21[0] = v14;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v17 = [v15 snapshotWithSignature:v13 duration:v16 event:0 payload:&__block_literal_global_41 reply:15.0];

  if (v17)
  {
    v18 = brc_bread_crumbs("abc_report_assert_with_signature", 266);
    v19 = brc_default_log(1, 0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      abc_report_assert_with_signature_cold_3();
    }
  }

  else
  {
    v18 = brc_bread_crumbs("abc_report_assert_with_signature", 264);
    v19 = brc_default_log(0, 0);
    if (os_log_type_enabled(v19, 0x90u))
    {
      abc_report_assert_with_signature_cold_2();
    }
  }

LABEL_17:
}

id signature_from_format_and_subtype(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  if (v2 >= 0x65)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@":0x%lx", objc_msgSend(v1, "hash")];
    v4 = [v1 substringToIndex:{100 - objc_msgSend(v3, "length")}];
    v5 = [v4 stringByAppendingString:v3];

    v1 = v5;
  }

  v6 = get_sd_reporter(v2);
  v7 = [v6 signatureWithDomain:@"Application" type:@"Functional" subType:@"AssertionFailed" detectedProcess:@"bird" triggerThresholdValues:0];

  [v7 setObject:v1 forKeyedSubscript:*MEMORY[0x1E69D50E8]];

  return v7;
}

id get_sd_reporter(uint64_t a1)
{
  if (get_sd_reporter_onceToken != -1)
  {
    get_sd_reporter_cold_1();
  }

  v2 = get_sd_reporter__diagnosticReporter;

  return v2;
}

void __abc_report_assert_with_signature_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = brc_bread_crumbs("abc_report_assert_with_signature_block_invoke", 262);
  v4 = brc_default_log(1, 0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __abc_report_assert_with_signature_block_invoke_cold_1();
  }
}

void abc_report_panic_with_signature(void *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = signature_from_format_and_subtype(v1);
  v3 = brc_backtrace();
  v4 = get_sd_reporter(v3);
  v9 = @"backtrace";
  v10[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 snapshotWithSignature:v2 duration:v5 event:0 payload:0 reply:1.0];

  if (v6)
  {
    v7 = brc_bread_crumbs("abc_report_panic_with_signature", 279);
    v8 = brc_default_log(1, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      abc_report_panic_with_signature_cold_2();
    }
  }

  else
  {
    v7 = brc_bread_crumbs("abc_report_panic_with_signature", 277);
    v8 = brc_default_log(0, 0);
    if (os_log_type_enabled(v8, 0x90u))
    {
      abc_report_panic_with_signature_cold_1();
    }
  }
}

id brc_append_system_info_to_message(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AD60] stringWithString:a1];
  [v1 appendString:@"\n\n"];
  v2 = v1;
  v38.rlim_cur = 0;
  v38.rlim_max = 0;
  v3 = MEMORY[0x1E696AEC0];
  v4 = [@" LIMITS " stringByPaddingToLength:80 withString:@"-" startingAtIndex:0];
  v5 = [v3 stringWithFormat:@"\n%@\n\n", v4];

  [v2 appendString:v5];
  for (i = 0; i != 8; ++i)
  {
    v7 = getrlimit(dword_1AE33DF98[i], &v38);
    v8 = off_1E7A15400[i];
    if (v7)
    {
      v9 = __error();
      [v2 appendFormat:@"%s(%s)\n", v8, strerror(*v9)];
    }

    else
    {
      [v2 appendFormat:@"%s\t\t\t", off_1E7A15400[i]];
      if (v38.rlim_cur == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v2 appendString:@"    infinity"];
      }

      else
      {
        [v2 appendFormat:@"%12llu", v38.rlim_cur];
      }

      if (v38.rlim_max == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v2 appendString:@"    infinity"];
      }

      else
      {
        [v2 appendFormat:@"%12llu", v38.rlim_max];
      }

      [v2 appendString:@"\n"];
    }
  }

  v10 = NSHomeDirectory();
  v11 = [v10 stringByAppendingPathComponent:@"Library/Mobile Documents"];
  v12 = v2;
  v13 = MEMORY[0x1E696AEC0];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@" DISK  (%@)", v11];
  v15 = [v14 stringByPaddingToLength:80 withString:@"-" startingAtIndex:0];
  v16 = [v13 stringWithFormat:@"\n%@\n\n", v15];

  v17 = [MEMORY[0x1E696AC08] defaultManager];
  v37 = 0;
  v18 = [v17 attributesOfFileSystemForPath:v11 error:&v37];
  v19 = v37;

  [v12 appendString:v16];
  if (v18)
  {
    v29 = v19;
    v30 = v16;
    v31 = v11;
    v32 = v10;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v20 = v18;
    v21 = [v20 countByEnumeratingWithState:&v33 objects:&v38 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v34;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v34 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v33 + 1) + 8 * j);
          v26 = [v25 stringByPaddingToLength:21 withString:@" " startingAtIndex:0];
          v27 = [v20 objectForKeyedSubscript:v25];
          [v12 appendFormat:@"%@\t%12llu\n", v26, objc_msgSend(v27, "unsignedLongLongValue")];
        }

        v22 = [v20 countByEnumeratingWithState:&v33 objects:&v38 count:16];
      }

      while (v22);
    }

    v11 = v31;
    v10 = v32;
    v19 = v29;
    v16 = v30;
  }

  else
  {
    [v12 appendFormat:@"%@\n", v19];
  }

  return v12;
}

uint64_t __get_sd_reporter_block_invoke()
{
  get_sd_reporter__diagnosticReporter = objc_alloc_init(MEMORY[0x1E69D4F80]);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t BRMakeiWorkSharingOptions(int a1, int a2)
{
  if (a2)
  {
    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void sub_1AE2D7628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int128 a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(exception_object);
    v12 = [v11 name];
    v13 = [v12 isEqualToString:*MEMORY[0x1E695D940]];

    if (v13)
    {
      v14 = brc_bread_crumbs("[NSString(BRPathAdditions) br_pathSafeFileSystemRepresentation]", 600);
      v15 = brc_default_log(1, 0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = [v11 reason];
        a9 = 138412802;
        WORD2(a10) = 2112;
        *(&a10 + 6) = v16;
        HIWORD(a10) = 2112;
        a11 = v14;
        _os_log_debug_impl(&dword_1AE2A9000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] Could not convert %@ to fileSystemRepresentation for reason: %@%@", &a9, 0x20u);
      }

      objc_end_catch();
      JUMPOUT(0x1AE2D75F4);
    }

    v17 = brc_bread_crumbs("[NSString(BRPathAdditions) br_pathSafeFileSystemRepresentation]", 603);
    v18 = brc_default_log(1, 0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [NSString(BRPathAdditions) br_pathSafeFileSystemRepresentation];
    }

    v19 = v11;
    objc_exception_throw(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __fileSystemSizeForDirectoryAtPath_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs("fileSystemSizeForDirectoryAtPath_block_invoke", 231);
  v8 = brc_default_log(0, 0);
  if (os_log_type_enabled(v8, 0x90u))
  {
    v10 = *(a1 + 32);
    v11 = 138413058;
    v12 = v10;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v7;
    _os_log_error_impl(&dword_1AE2A9000, v8, 0x90u, "[ERROR] error enumerating %@: error %@ at %@%@", &v11, 0x2Au);
  }

  return 1;
}

BOOL OUTLINED_FUNCTION_5_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

void sub_1AE2D8CC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id BRNotifyNameForForegroundChangeWithContainerID(void *a1)
{
  v1 = [a1 stringByAppendingString:@".foreground"];
  v2 = [v1 br_libnotifyPerUserNotificationName];

  return v2;
}

void sub_1AE2D9598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_1AE2D9838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_1AE2D9CCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  objc_sync_exit(v24);
  __brc_leave_section(&a24);
  _Unwind_Resume(a1);
}

id notifyNameWithPrefixedContainerID(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"com.apple.clouddocs."])
  {
    v2 = [v1 substringFromIndex:{objc_msgSend(@"com.apple.clouddocs.", "length")}];
  }

  else
  {
    v3 = brc_bread_crumbs("BRUnprefixedContainerID", 39);
    v4 = brc_default_log(0, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      notifyNameWithPrefixedContainerID_cold_1();
    }

    v2 = 0;
  }

  v5 = BRNotifyNameForForegroundChangeWithContainerID(v2);

  return v5;
}

void __br_notify_register_dispatch_block_invoke_3(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) isEqualToString:@"__defaultPersonaID__"] & 1) != 0 || (v2 = *(a1 + 32)) == 0)
  {
    if (_block_invoke___personaOnceToken_0 != -1)
    {
      __br_notify_register_dispatch_block_invoke_cold_1_2();
    }

    v3 = _block_invoke___personalPersona_0;
    v4 = 1;
  }

  else
  {
    v3 = v2;
    v4 = 0;
  }

  v5 = [MEMORY[0x1E69DF068] sharedManager];
  v6 = [v5 currentPersona];

  v27 = 0;
  v7 = [v6 userPersonaUniqueString];
  v8 = v7;
  if (v7 == v3 || ([v7 isEqualToString:v3] & 1) != 0)
  {
    goto LABEL_9;
  }

  if (!voucher_process_can_use_arbitrary_personas())
  {
    if (v4 && ([v6 isDataSeparatedPersona] & 1) == 0)
    {
      v21 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 110);
      v22 = brc_default_log(1, 0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        __br_notify_register_dispatch_block_invoke_cold_2_0(v21, v22);
      }
    }

    else
    {
      v17 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 110);
      v18 = brc_default_log(1, 0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        __br_notify_register_dispatch_block_invoke_cold_3_0(v17, v18);
      }

      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      if (v14)
      {
        goto LABEL_25;
      }
    }

LABEL_9:
    (*(*(a1 + 40) + 16))();
    goto LABEL_10;
  }

  v26 = 0;
  v9 = [v6 copyCurrentPersonaContextWithError:&v26];
  v10 = v26;
  v11 = v27;
  v27 = v9;

  if (v10)
  {
    v12 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 110);
    v13 = brc_default_log(0, 0);
    if (os_log_type_enabled(v13, 0x90u))
    {
      __br_notify_register_dispatch_block_invoke_cold_4_1();
    }
  }

  v14 = [v6 br_generateAndRestorePersonaContextWithPersonaUniqueString:v3];

  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 110);
  v16 = brc_default_log(0, 0);
  if (os_log_type_enabled(v16, 0x90u))
  {
    v25 = *(a1 + 32);
    *buf = 138412802;
    v29 = v25;
    v30 = 2112;
    v31 = v14;
    v32 = 2112;
    v33 = v15;
    _os_log_error_impl(&dword_1AE2A9000, v16, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
  }

LABEL_25:
  v19 = brc_bread_crumbs("br_notify_register_dispatch_block_invoke", 112);
  v20 = brc_default_log(0, 0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    v23 = *(a1 + 48);
    v24 = [v14 localizedDescription];
    *buf = 136315650;
    v29 = v23;
    v30 = 2112;
    v31 = v24;
    v32 = 2112;
    v33 = v19;
    _os_log_fault_impl(&dword_1AE2A9000, v20, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Failed to adopt persona for notification %s due to %@%@", buf, 0x20u);
  }

LABEL_10:
  _BRRestorePersona(&v27);
}

void sub_1AE2DA6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _BRRestorePersona(va);
  _Unwind_Resume(a1);
}

void __br_notify_register_dispatch_block_invoke_2_2()
{
  v2 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = _block_invoke___personalPersona_0;
  _block_invoke___personalPersona_0 = v0;
}

void sub_1AE2DB588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

id BRGetFileNameFromServerInfoBlob(void *a1, BRServerInfoRecordInfo **a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v3 options:0];
  if (v4)
  {
    v5 = [[BRServerInfoRecordInfo alloc] initWithData:v4];
    v6 = v5;
    if (v5)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = [(BRServerInfoRecordInfo *)v5 zoneName];
      v9 = [(BRServerInfoRecordInfo *)v6 recordID];
      v10 = [v9 lastPathComponent];
      v11 = [v7 stringWithFormat:@"%@/%@/BRGetFileNameFromServerInfoBlob", v8, v10];

      v12 = [MEMORY[0x1E695DFF8] br_documentURLFromBookmarkableString:v11 error:a2];
      v13 = [v12 lastPathComponent];

      goto LABEL_16;
    }

    v17 = [MEMORY[0x1E696ABC0] brc_errorInvalidParameter:@"serverInfoBase64Blob" value:v3];
    if (v17)
    {
      v18 = brc_bread_crumbs("BRGetFileNameFromServerInfoBlob", 33);
      v19 = brc_default_log(0, 0);
      if (os_log_type_enabled(v19, 0x90u))
      {
        v23 = "(passed to caller)";
        *buf = 136315906;
        v25 = "BRGetFileNameFromServerInfoBlob";
        v26 = 2080;
        if (!a2)
        {
          v23 = "(ignored by caller)";
        }

        v27 = v23;
        v28 = 2112;
        v29 = v17;
        v30 = 2112;
        v31 = v18;
        _os_log_error_impl(&dword_1AE2A9000, v19, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (a2)
    {
      v20 = v17;
      *a2 = v17;
    }
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] brc_errorInvalidParameter:@"serverInfoBase64Blob" value:v3];
    if (v6)
    {
      v14 = brc_bread_crumbs("BRGetFileNameFromServerInfoBlob", 28);
      v15 = brc_default_log(0, 0);
      if (os_log_type_enabled(v15, 0x90u))
      {
        v22 = "(passed to caller)";
        *buf = 136315906;
        v25 = "BRGetFileNameFromServerInfoBlob";
        v26 = 2080;
        if (!a2)
        {
          v22 = "(ignored by caller)";
        }

        v27 = v22;
        v28 = 2112;
        v29 = v6;
        v30 = 2112;
        v31 = v14;
        _os_log_error_impl(&dword_1AE2A9000, v15, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (a2)
    {
      v16 = v6;
      v13 = 0;
      *a2 = v6;
      goto LABEL_16;
    }
  }

  v13 = 0;
LABEL_16:

  return v13;
}

void __BRPerformWithPersonaAndError_block_invoke()
{
  v2 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = BRPerformWithPersonaAndError___personalPersona;
  BRPerformWithPersonaAndError___personalPersona = v0;
}

void BRPerformWithPersonaAndErrorForURLIfAble(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (+[BRAccountDescriptor mightHaveDataSeparatedAccountDescriptor])
  {
    v5 = [MEMORY[0x1E696AEC0] br_currentPersonaIDWithIsDataSeparated:0];
    if ([v3 _br_isInLocalHomeDirectoryUnderPersona:v5 needsPersonaSwitch:0] || objc_msgSend(v5, "isEqualToString:", @"__defaultPersonaID__") && (objc_msgSend(v3, "br_mightBeOnDataSeparatedVolume") & 1) == 0)
    {
      v4[2](v4, v5, 1, 1, 0);
    }

    else
    {
      v6 = +[BRAccountDescriptor allLoggedInAccountDescriptors];
      if ([v6 count] > 1 || (objc_msgSend(v6, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isDataSeparated"), v7, v8))
      {
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v20 = v6;
        v9 = v6;
        v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v24;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v24 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v23 + 1) + 8 * i);
              v15 = [v14 personaIdentifier];
              v16 = [v5 isEqualToString:v15];

              if ((v16 & 1) == 0)
              {
                v17 = [v14 personaIdentifier];
                v18 = [v3 _br_isInLocalHomeDirectoryUnderPersona:v17 needsPersonaSwitch:1];

                if (v18)
                {
                  v21[0] = MEMORY[0x1E69E9820];
                  v21[1] = 3221225472;
                  v21[2] = __BRPerformWithPersonaAndErrorForURLIfAble_block_invoke;
                  v21[3] = &unk_1E7A15590;
                  v21[4] = v14;
                  v22 = v4;
                  BRPerformWithAccountDescriptorAndError(v14, v21);

                  v6 = v20;
                  goto LABEL_22;
                }
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v19 = 1;
        v6 = v20;
      }

      else
      {
        v19 = 0;
      }

      v4[2](v4, v5, v19, 0, 0);
LABEL_22:
    }
  }

  else
  {
    v4[2](v4, @"__defaultPersonaID__", 0, 0, 0);
  }
}

void __BRPerformWithPersonaAndErrorForURLIfAble_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 personaIdentifier];
  (*(v2 + 16))(v2, v5, 1, 1, v4);
}