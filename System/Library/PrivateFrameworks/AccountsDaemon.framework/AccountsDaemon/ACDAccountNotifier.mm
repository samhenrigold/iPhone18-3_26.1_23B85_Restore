@interface ACDAccountNotifier
+ (NSArray)allNotificationEntries;
+ (void)allNotificationEntries;
- (ACDAccountNotifier)initWithNotificationEntries:(id)entries;
- (BOOL)canRemoveAccount:(id)account inStore:(id)store error:(id *)error;
- (BOOL)canSaveAccount:(id)account inStore:(id)store error:(id *)error;
- (BOOL)postWillChangeNotificationForType:(int)type inStore:(id)store newAccount:(id)account oldAccount:(id)oldAccount;
- (id)_pluginsRegisteredForAccount:(id)account;
- (id)_pluginsRegisteredForNewAccount:(id)account oldAccount:(id)oldAccount changeType:(int)type;
- (id)_provisionedDataclassesForNewAccount:(id)account oldAccount:(id)oldAccount;
- (id)_unsafe_pluginsRegisteredForNewAccount:(id)account oldAccount:(id)oldAccount changeType:(id)type;
- (void)addNotificationEntry:(id)entry;
- (void)postDidChangeNotificationForType:(int)type inStore:(id)store newAccount:(id)account oldAccount:(id)oldAccount;
- (void)postDidPerformDataclassActionsOnAccount:(id)account forDataclasses:(id)dataclasses;
- (void)postWillPerformDataclassActionsOnAccount:(id)account forDataclasses:(id)dataclasses;
- (void)removeAllNotificationEntries;
@end

@implementation ACDAccountNotifier

+ (NSArray)allNotificationEntries
{
  v2 = _ACDNotificationSignpostSystem(self);
  v3 = _ACSignpostCreate();

  v5 = _ACDNotificationSignpostSystem(v4);
  v6 = v5;
  if ((v3 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "FaultPlugins", "", buf, 2u);
  }

  v8 = _ACDNotificationSignpostSystem(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    +[(ACDAccountNotifier *)v3];
  }

  v9 = [(ACPluginLoader *)ACDPluginLoader pluginBundlesAtSubpath:@"Notification"];
  allObjects = [v9 allObjects];

  v11 = [allObjects ac_mapNullable:&__block_literal_global_42];
  Nanoseconds = _ACSignpostGetNanoseconds();
  v13 = _ACDNotificationSignpostSystem(Nanoseconds);
  v14 = v13;
  if ((v3 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v18 = 0;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v14, OS_SIGNPOST_INTERVAL_END, v3, "FaultPlugins", "", v18, 2u);
  }

  v16 = _ACDNotificationSignpostSystem(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    +[ACDAccountNotifier allNotificationEntries];
  }

  return v11;
}

ACDPluginEntry *__44__ACDAccountNotifier_allNotificationEntries__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ACDPluginEntry alloc] initWithBundle:v2];

  return v3;
}

- (ACDAccountNotifier)initWithNotificationEntries:(id)entries
{
  entriesCopy = entries;
  v11.receiver = self;
  v11.super_class = ACDAccountNotifier;
  v6 = [(ACDAccountNotifier *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.accounts.notifierworkq", v7);
    notificationEntryQueue = v6->_notificationEntryQueue;
    v6->_notificationEntryQueue = v8;

    objc_storeStrong(&v6->_notificationEntries, entries);
  }

  return v6;
}

- (BOOL)canSaveAccount:(id)account inStore:(id)store error:(id *)error
{
  v84 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  storeCopy = store;
  v10 = storeCopy;
  v69 = accountCopy;
  if (!accountCopy)
  {
    [ACDAccountNotifier canSaveAccount:inStore:error:];
  }

  v68 = v10;
  if (!v10)
  {
    [ACDAccountNotifier canSaveAccount:inStore:error:];
  }

  v11 = _ACDNotificationSignpostSystem(storeCopy);
  v12 = _ACSignpostCreate();

  v14 = _ACDNotificationSignpostSystem(v13);
  v15 = v14;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 138412290;
    *&buf[4] = v69;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v12, "CanSaveAccount", "account: %@", buf, 0xCu);
  }

  v67 = v12 - 1;

  v17 = _ACDNotificationSignpostSystem(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountNotifier canSaveAccount:inStore:error:];
  }

  [(ACDAccountNotifier *)self _pluginsRegisteredForAccount:v69];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = v75 = 0u;
  v18 = [obj countByEnumeratingWithState:&v72 objects:v83 count:16];
  if (!v18)
  {
    v20 = 0;
    v34 = 1;
LABEL_38:
    v36 = v67;
    goto LABEL_44;
  }

  v19 = v18;
  v65 = v12;
  errorCopy = error;
  v20 = 0;
  v21 = *v73;
  v22 = v68;
LABEL_12:
  v23 = 0;
  while (1)
  {
    if (*v73 != v21)
    {
      objc_enumerationMutation(obj);
    }

    v24 = *(*(&v72 + 1) + 8 * v23);
    if ([v24 principalObjectRespondsToSelector:sel_canSaveAccount_inStore_error_])
    {
      break;
    }

    if ([v24 principalObjectRespondsToSelector:sel_canSaveAccount_inStore_])
    {
      principalObject = [v24 principalObject];
      v26 = principalObject;
      if (principalObject)
      {
        v31 = [principalObject canSaveAccount:v69 inStore:v22];
        if ((v31 & 1) == 0)
        {
          v38 = _ACDNotificationLogSystem(v31);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *&buf[4] = v69;
            v77 = 2112;
            v78 = *&v24;
            _os_log_impl(&dword_221D2F000, v38, OS_LOG_TYPE_DEFAULT, "Entry reported inability to save account: %@, entry: %@", buf, 0x16u);
          }

          v40 = MEMORY[0x277CCACA8];
          v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v42 = [v41 localizedStringForKey:@"ACCOUNT_CANNOT_SAVE_ERROR_FORMAT" value:&stru_2835374D8 table:@"Localizable"];
          accountType = [v69 accountType];
          accountTypeDescription = [accountType accountTypeDescription];
          accountType2 = [v69 accountType];
          accountTypeDescription2 = [accountType2 accountTypeDescription];
          v47 = [v40 stringWithFormat:v42, accountTypeDescription, accountTypeDescription2];

          v48 = MEMORY[0x277CCACA8];
          v49 = objc_opt_class();
          v50 = NSStringFromClass(v49);
          v51 = [v48 stringWithFormat:@"The account save was rejected by '%@'.", v50];

          v52 = MEMORY[0x277CCA9B8];
          v53 = *MEMORY[0x277CB8DC0];
          v54 = *MEMORY[0x277CCA068];
          v81[0] = *MEMORY[0x277CCA450];
          v81[1] = v54;
          v82[0] = v47;
          v82[1] = v51;
          v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];
          v28 = [v52 errorWithDomain:v53 code:5 userInfo:v55];

          v37 = v47;
          v12 = v65;
          error = errorCopy;
          v36 = v67;
          goto LABEL_42;
        }

        goto LABEL_27;
      }

      v32 = _ACDNotificationLogSystem(0);
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
LABEL_26:

        goto LABEL_27;
      }

LABEL_30:
      *buf = 138412290;
      *&buf[4] = v24;
      _os_log_error_impl(&dword_221D2F000, v32, OS_LOG_TYPE_ERROR, "Failed to load principal object for entry: %@", buf, 0xCu);
      goto LABEL_26;
    }

LABEL_28:
    if (v19 == ++v23)
    {
      v33 = [obj countByEnumeratingWithState:&v72 objects:v83 count:16];
      v19 = v33;
      if (!v33)
      {
        v34 = 1;
        v12 = v65;
        error = errorCopy;
        goto LABEL_38;
      }

      goto LABEL_12;
    }
  }

  principalObject2 = [v24 principalObject];
  v26 = principalObject2;
  if (!principalObject2)
  {
    v32 = _ACDNotificationLogSystem(0);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    goto LABEL_30;
  }

  v71 = v20;
  v27 = [principalObject2 canSaveAccount:v69 inStore:v22 error:&v71];
  v28 = v71;

  if (v27)
  {
    v20 = v28;
    v22 = v68;
LABEL_27:

    goto LABEL_28;
  }

  v35 = _ACDNotificationLogSystem(v29);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v69;
    v77 = 2112;
    v78 = *&v24;
    _os_log_impl(&dword_221D2F000, v35, OS_LOG_TYPE_DEFAULT, "Entry reported inability to save account: %@, entry: %@", buf, 0x16u);
  }

  v12 = v65;
  error = errorCopy;
  v36 = v67;
  if (!v28)
  {
    [ACDAccountNotifier canSaveAccount:inStore:error:];
    v37 = *buf;
LABEL_42:
  }

  v34 = 0;
  v20 = v28;
LABEL_44:

  Nanoseconds = _ACSignpostGetNanoseconds();
  v57 = _ACDNotificationSignpostSystem(Nanoseconds);
  v58 = v57;
  if (v36 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
  {
    v59 = @"NO";
    if (v34)
    {
      v59 = @"YES";
    }

    *buf = 138543362;
    *&buf[4] = v59;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v58, OS_SIGNPOST_INTERVAL_END, v12, "CanSaveAccount", "%{public}@", buf, 0xCu);
  }

  v61 = _ACDNotificationSignpostSystem(v60);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
  {
    v64 = @"NO";
    *buf = 134218498;
    *&buf[4] = v12;
    if (v34)
    {
      v64 = @"YES";
    }

    v77 = 2048;
    v78 = Nanoseconds / 1000000000.0;
    v79 = 2114;
    v80 = v64;
    _os_log_debug_impl(&dword_221D2F000, v61, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: CanSaveAccount %{public}@", buf, 0x20u);
  }

  if (error)
  {
    v62 = v20;
    *error = v20;
  }

  return v34;
}

- (BOOL)canRemoveAccount:(id)account inStore:(id)store error:(id *)error
{
  v107 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  storeCopy = store;
  v10 = storeCopy;
  v93 = accountCopy;
  if (accountCopy)
  {
    if (storeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [ACDAccountNotifier canRemoveAccount:inStore:error:];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [ACDAccountNotifier canRemoveAccount:inStore:error:];
LABEL_3:
  v11 = _ACDNotificationSignpostSystem(storeCopy);
  v12 = _ACSignpostCreate();

  v14 = _ACDNotificationSignpostSystem(v13);
  v15 = v14;
  v16 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 138412290;
    *&buf[4] = v93;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v12, "CanRemoveAccount", "account: %@", buf, 0xCu);
  }

  v18 = _ACDNotificationSignpostSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountNotifier canRemoveAccount:inStore:error:];
  }

  v88 = v10;

  [(ACDAccountNotifier *)self _pluginsRegisteredForAccount:v93];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = v98 = 0u;
  v19 = [obj countByEnumeratingWithState:&v95 objects:v106 count:16];
  v91 = v19;
  if (!v19)
  {
    v20 = 0;
    v70 = 1;
    goto LABEL_62;
  }

  v80 = v12 - 1;
  v81 = v12;
  errorCopy = error;
  v20 = 0;
  v21 = &selRef__setYahooAccountsProvisionedDataclassesToSupportedOnes;
  v22 = &selRef__setYahooAccountsProvisionedDataclassesToSupportedOnes;
  v90 = *v96;
  v85 = *MEMORY[0x277CB8DC0];
  v84 = *MEMORY[0x277CCA450];
  v83 = *MEMORY[0x277CCA068];
LABEL_10:
  v23 = 0;
  v92 = v21[177];
  v87 = v22[176];
  while (1)
  {
    if (*v96 != v90)
    {
      objc_enumerationMutation(obj);
    }

    v24 = *(*(&v95 + 1) + 8 * v23);
    v25 = _ACDNotificationSignpostSystem(v19);
    v26 = _ACSignpostCreate();

    v28 = _ACDNotificationSignpostSystem(v27);
    v29 = v28;
    v30 = v26 - 1;
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      [v24 identifier];
      v31 = v86 = v23;
      accountType = [v93 accountType];
      identifier = [accountType identifier];
      *buf = 138544386;
      *&buf[4] = v31;
      v100 = 2114;
      v101 = *&identifier;
      v102 = 1026;
      *v103 = 3;
      *&v103[4] = 2112;
      *&v103[6] = @"deleted";
      *&v103[14] = 2112;
      *&v103[16] = v93;
      v30 = v26 - 1;
      _os_signpost_emit_with_name_impl(&dword_221D2F000, v29, OS_SIGNPOST_INTERVAL_BEGIN, v26, "CanRemoveAccountPlugin", " PluginIdentifier=%{public,signpost.telemetry:string1,name=PluginIdentifier}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  ChangeType=%{public,signpost.telemetry:number1,name=ChangeType}d  enableTelemetry=YES (changeType: %@, account: %@)", buf, 0x30u);

      v23 = v86;
    }

    v35 = _ACDNotificationSignpostSystem(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      identifier2 = [v24 identifier];
      accountType2 = [v93 accountType];
      identifier3 = [accountType2 identifier];
      *buf = 134219266;
      *&buf[4] = v26;
      v100 = 2114;
      v101 = *&identifier2;
      v102 = 2114;
      *v103 = identifier3;
      *&v103[8] = 1026;
      *&v103[10] = 3;
      *&v103[14] = 2112;
      *&v103[16] = @"deleted";
      *&v103[24] = 2112;
      *&v103[26] = v93;
      _os_log_debug_impl(&dword_221D2F000, v35, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: CanRemoveAccountPlugin  PluginIdentifier=%{public,signpost.telemetry:string1,name=PluginIdentifier}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  ChangeType=%{public,signpost.telemetry:number1,name=ChangeType}d  enableTelemetry=YES (changeType: %@, account: %@)", buf, 0x3Au);
    }

    if ([v24 principalObjectRespondsToSelector:v92])
    {
      principalObject = [v24 principalObject];
      v37 = principalObject;
      if (principalObject)
      {
        v94 = v20;
        v38 = [principalObject canRemoveAccount:v93 inStore:v88 error:&v94];
        v39 = v94;

        if (v38)
        {
          v41 = 1;
LABEL_40:

          v20 = v39;
          goto LABEL_41;
        }

        v45 = _ACDNotificationLogSystem(v40);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v93;
          v100 = 2112;
          v101 = *&v24;
          _os_log_impl(&dword_221D2F000, v45, OS_LOG_TYPE_DEFAULT, "Entry reported inability to remove account: %@, entry: %@", buf, 0x16u);
        }

        if (v39)
        {
          v41 = 0;
          goto LABEL_40;
        }

        [ACDAccountNotifier canRemoveAccount:inStore:error:];
        v20 = 0;
        v41 = 0;
        v44 = *buf;
        goto LABEL_38;
      }

      v44 = _ACDNotificationLogSystem(0);
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      goto LABEL_55;
    }

    if ([v24 principalObjectRespondsToSelector:v87])
    {
      principalObject2 = [v24 principalObject];
      v37 = principalObject2;
      if (principalObject2)
      {
        v43 = [principalObject2 canRemoveAccount:v93 inStore:v88];
        if (v43)
        {
          v41 = 1;
LABEL_39:
          v39 = v20;
          goto LABEL_40;
        }

        v46 = _ACDNotificationLogSystem(v43);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v93;
          v100 = 2112;
          v101 = *&v24;
          _os_log_impl(&dword_221D2F000, v46, OS_LOG_TYPE_DEFAULT, "Entry reported inability to remove account: %@, entry: %@", buf, 0x16u);
        }

        v47 = MEMORY[0x277CCACA8];
        accountType3 = [v93 accountType];
        accountTypeDescription = [accountType3 accountTypeDescription];
        v44 = [v47 stringWithFormat:@"Can't remove account with identifier %@ because one plugin doesn't allow it.", accountTypeDescription];

        v50 = MEMORY[0x277CCACA8];
        v51 = objc_opt_class();
        v52 = NSStringFromClass(v51);
        v53 = [v50 stringWithFormat:@"The account removal was rejected by '%@'.", v52];

        v54 = MEMORY[0x277CCA9B8];
        v104[0] = v84;
        v104[1] = v83;
        v105[0] = v44;
        v105[1] = v53;
        v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:2];
        v56 = [v54 errorWithDomain:v85 code:17 userInfo:v55];

        v41 = 0;
        v20 = v56;
LABEL_38:

        goto LABEL_39;
      }

      v44 = _ACDNotificationLogSystem(0);
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
LABEL_34:
        v41 = 1;
        goto LABEL_38;
      }

LABEL_55:
      *buf = 138412290;
      *&buf[4] = v24;
      _os_log_error_impl(&dword_221D2F000, v44, OS_LOG_TYPE_ERROR, "Failed to load principal object for entry: %@", buf, 0xCu);
      goto LABEL_34;
    }

    v41 = 1;
LABEL_41:
    Nanoseconds = _ACSignpostGetNanoseconds();
    v58 = _ACDNotificationSignpostSystem(Nanoseconds);
    v59 = v58;
    if (v30 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
    {
      if (v41)
      {
        v60 = @"YES";
      }

      else
      {
        v60 = @"NO";
      }

      identifier4 = [v24 identifier];
      *buf = 138413058;
      *&buf[4] = v60;
      v100 = 2112;
      v101 = *&identifier4;
      v102 = 2112;
      *v103 = @"deleted";
      *&v103[8] = 2112;
      *&v103[10] = v93;
      _os_signpost_emit_with_name_impl(&dword_221D2F000, v59, OS_SIGNPOST_INTERVAL_END, v26, "CanRemoveAccountPlugin", "%@ %@ (changeType: %@, account: %@)", buf, 0x2Au);
    }

    v63 = _ACDNotificationSignpostSystem(v62);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
    {
      v67 = Nanoseconds / 1000000000.0;
      if (v41)
      {
        v68 = @"YES";
      }

      else
      {
        v68 = @"NO";
      }

      identifier5 = [v24 identifier];
      *buf = 134219266;
      *&buf[4] = v26;
      v100 = 2048;
      v101 = v67;
      v102 = 2112;
      *v103 = v68;
      *&v103[8] = 2112;
      *&v103[10] = identifier5;
      *&v103[18] = 2112;
      *&v103[20] = @"deleted";
      *&v103[28] = 2112;
      *&v103[30] = v93;
      _os_log_debug_impl(&dword_221D2F000, v63, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: CanRemoveAccountPlugin %@ %@ (changeType: %@, account: %@)", buf, 0x3Eu);
    }

    if (!v41)
    {
      break;
    }

    if (v91 == ++v23)
    {
      v19 = [obj countByEnumeratingWithState:&v95 objects:v106 count:16];
      v91 = v19;
      v21 = &selRef__setYahooAccountsProvisionedDataclassesToSupportedOnes;
      v22 = &selRef__setYahooAccountsProvisionedDataclassesToSupportedOnes;
      if (!v19)
      {
        v70 = 1;
        goto LABEL_60;
      }

      goto LABEL_10;
    }
  }

  v70 = 0;
LABEL_60:
  v12 = v81;
  error = errorCopy;
  v16 = v80;
LABEL_62:

  v71 = _ACSignpostGetNanoseconds();
  v72 = _ACDNotificationSignpostSystem(v71);
  v73 = v72;
  if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v72))
  {
    v74 = @"NO";
    if (v70)
    {
      v74 = @"YES";
    }

    *buf = 138543362;
    *&buf[4] = v74;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v73, OS_SIGNPOST_INTERVAL_END, v12, "CanRemoveAccount", "%{public}@", buf, 0xCu);
  }

  v76 = _ACDNotificationSignpostSystem(v75);
  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
  {
    v79 = @"NO";
    *buf = 134218498;
    *&buf[4] = v12;
    if (v70)
    {
      v79 = @"YES";
    }

    v100 = 2048;
    v101 = v71 / 1000000000.0;
    v102 = 2114;
    *v103 = v79;
    _os_log_debug_impl(&dword_221D2F000, v76, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: CanRemoveAccount %{public}@", buf, 0x20u);
  }

  if (error)
  {
    v77 = v20;
    *error = v20;
  }

  return v70;
}

- (BOOL)postWillChangeNotificationForType:(int)type inStore:(id)store newAccount:(id)account oldAccount:(id)oldAccount
{
  v96 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v78 = COERCE_DOUBLE(account);
  oldAccountCopy = oldAccount;
  v76 = oldAccountCopy;
  typeCopy = type;
  if (!type)
  {
    [ACDAccountNotifier postWillChangeNotificationForType:inStore:newAccount:oldAccount:];
  }

  v75 = storeCopy;
  if (!storeCopy)
  {
    [ACDAccountNotifier postWillChangeNotificationForType:inStore:newAccount:oldAccount:];
  }

  v12 = _ACDNotificationSignpostSystem(oldAccountCopy);
  spid = _ACSignpostCreate();

  v14 = _ACDNotificationSignpostSystem(v13);
  v15 = v14;
  if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    if ((type - 1) > 4)
    {
      *&v16 = COERCE_DOUBLE(@"unknown");
    }

    else
    {
      v16 = off_27848C7F0[type - 1];
    }

    *buf = 138412802;
    v91 = v78;
    v92 = 2112;
    v93 = *&v16;
    v94 = 2112;
    *v95 = v76;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v15, OS_SIGNPOST_INTERVAL_BEGIN, spid, "AccountWillChange", "%@ (changeType: %@, oldAccount: %@)", buf, 0x20u);
  }

  v18 = _ACDNotificationSignpostSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    if ((type - 1) > 4)
    {
      v68 = @"unknown";
    }

    else
    {
      v68 = off_27848C7F0[type - 1];
    }

    *buf = 134218754;
    v91 = *&spid;
    v92 = 2112;
    v93 = v78;
    v94 = 2112;
    *v95 = v68;
    *&v95[8] = 2112;
    *&v95[10] = v76;
    _os_log_debug_impl(&dword_221D2F000, v18, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: AccountWillChange %@ (changeType: %@, oldAccount: %@)", buf, 0x2Au);
  }

  [(ACDAccountNotifier *)self _pluginsRegisteredForNewAccount:*&v78 oldAccount:v76 changeType:type];
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  obj = v86 = 0u;
  v80 = [obj countByEnumeratingWithState:&v85 objects:v89 count:16];
  if (v80)
  {
    v72 = 0;
    v73 = (type - 1);
    v79 = *v86;
    *&v19 = 138412546;
    v70 = v19;
    do
    {
      v20 = 0;
      do
      {
        if (*v86 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v85 + 1) + 8 * v20);
        if ([v21 principalObjectRespondsToSelector:{sel_account_willChangeWithType_inStore_oldAccount_, v70}])
        {
          v22 = [*&v78 copy];
          v23 = [v76 copy];
          v84 = v21;
          v83 = v75;
          v24 = v22;
          v25 = v23;
          v26 = v25;
          if (v24)
          {
            v27 = v24;
          }

          else
          {
            v27 = v25;
          }

          v81 = v27;
          accountType = [v81 accountType];
          [accountType identifier];
          v82 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

          v30 = _ACDNotificationSignpostSystem(v29);
          v31 = _ACSignpostCreate();

          v33 = _ACDNotificationSignpostSystem(v32);
          v34 = v33;
          if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
          {
            identifier = [v84 identifier];
            v36 = identifier;
            v37 = @"unknown";
            if (v73 < 5)
            {
              v37 = off_27848C7F0[v73];
            }

            *buf = 138544386;
            v91 = *&identifier;
            v92 = 2114;
            v93 = v82;
            v94 = 1026;
            *v95 = typeCopy;
            *&v95[4] = 2112;
            *&v95[6] = v37;
            *&v95[14] = 2112;
            *&v95[16] = v81;
            _os_signpost_emit_with_name_impl(&dword_221D2F000, v34, OS_SIGNPOST_INTERVAL_BEGIN, v31, "AccountWillChangePlugin", " PluginIdentifier=%{public,signpost.telemetry:string1,name=PluginIdentifier}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  ChangeType=%{public,signpost.telemetry:number1,name=ChangeType}d  enableTelemetry=YES (changeType: %@, account: %@)", buf, 0x30u);
          }

          v39 = _ACDNotificationSignpostSystem(v38);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            [v84 identifier];
            v53 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            v54 = v53;
            v55 = @"unknown";
            if (v73 < 5)
            {
              v55 = off_27848C7F0[v73];
            }

            *buf = 134219266;
            v91 = *&v31;
            v92 = 2114;
            v93 = v53;
            v94 = 2114;
            *v95 = v82;
            *&v95[8] = 1026;
            *&v95[10] = typeCopy;
            *&v95[14] = 2112;
            *&v95[16] = v55;
            *&v95[24] = 2112;
            *&v95[26] = v81;
            _os_log_debug_impl(&dword_221D2F000, v39, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: AccountWillChangePlugin  PluginIdentifier=%{public,signpost.telemetry:string1,name=PluginIdentifier}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  ChangeType=%{public,signpost.telemetry:number1,name=ChangeType}d  enableTelemetry=YES (changeType: %@, account: %@)", buf, 0x3Au);
          }

          principalObject = [v84 principalObject];
          v41 = principalObject;
          if (principalObject)
          {
            v42 = [principalObject account:v24 willChangeWithType:typeCopy inStore:v83 oldAccount:v26];
          }

          else
          {
            v43 = _ACDNotificationLogSystem(0);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v91 = *&v84;
              _os_log_error_impl(&dword_221D2F000, v43, OS_LOG_TYPE_ERROR, "Failed to load principal object for entry: %@", buf, 0xCu);
            }

            v42 = 0;
          }

          Nanoseconds = _ACSignpostGetNanoseconds();
          v45 = _ACDNotificationSignpostSystem(Nanoseconds);
          v46 = v45;
          if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
          {
            [v84 identifier];
            v47 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            v48 = v47;
            v49 = @"NO";
            if (v42)
            {
              v49 = @"YES";
            }

            v50 = @"unknown";
            if (v73 <= 4)
            {
              v50 = off_27848C7F0[v73];
            }

            *buf = 138413058;
            v91 = *&v49;
            v92 = 2112;
            v93 = v47;
            v94 = 2112;
            *v95 = v50;
            *&v95[8] = 2112;
            *&v95[10] = v26;
            _os_signpost_emit_with_name_impl(&dword_221D2F000, v46, OS_SIGNPOST_INTERVAL_END, v31, "AccountWillChangePlugin", "%@ %@ (changeType: %@, oldAccount: %@)", buf, 0x2Au);
          }

          v52 = _ACDNotificationSignpostSystem(v51);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            identifier2 = [v84 identifier];
            v57 = identifier2;
            v58 = @"NO";
            if (v42)
            {
              v58 = @"YES";
            }

            v59 = @"unknown";
            if (v73 <= 4)
            {
              v59 = off_27848C7F0[v73];
            }

            *buf = 134219266;
            v91 = *&v31;
            v92 = 2048;
            v93 = Nanoseconds / 1000000000.0;
            v94 = 2112;
            *v95 = v58;
            *&v95[8] = 2112;
            *&v95[10] = identifier2;
            *&v95[18] = 2112;
            *&v95[20] = v59;
            *&v95[28] = 2112;
            *&v95[30] = v26;
            _os_log_debug_impl(&dword_221D2F000, v52, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AccountWillChangePlugin %@ %@ (changeType: %@, oldAccount: %@)", buf, 0x3Eu);
          }

          if (v42)
          {
            [*&v78 takeValuesFromModifiedAccount:v24];
            v72 = 1;
          }
        }

        ++v20;
      }

      while (v80 != v20);
      v60 = [obj countByEnumeratingWithState:&v85 objects:v89 count:16];
      v80 = v60;
    }

    while (v60);
  }

  else
  {
    v72 = 0;
  }

  v61 = _ACSignpostGetNanoseconds();
  v62 = _ACDNotificationSignpostSystem(v61);
  v63 = v62;
  if ((spid - 1) < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v62))
  {
    v64 = @"NO";
    if (v72)
    {
      v64 = @"YES";
    }

    *buf = 138543362;
    v91 = *&v64;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v63, OS_SIGNPOST_INTERVAL_END, spid, "AccountWillChange", "%{public}@", buf, 0xCu);
  }

  v66 = _ACDNotificationSignpostSystem(v65);
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
  {
    v69 = @"NO";
    *buf = 134218498;
    v91 = *&spid;
    if (v72)
    {
      v69 = @"YES";
    }

    v92 = 2048;
    v93 = v61 / 1000000000.0;
    v94 = 2114;
    *v95 = v69;
    _os_log_debug_impl(&dword_221D2F000, v66, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AccountWillChange %{public}@", buf, 0x20u);
  }

  return v72 & 1;
}

- (void)postDidChangeNotificationForType:(int)type inStore:(id)store newAccount:(id)account oldAccount:(id)oldAccount
{
  v89 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v72 = COERCE_DOUBLE(account);
  oldAccountCopy = oldAccount;
  v71 = oldAccountCopy;
  typeCopy = type;
  if (!type)
  {
    [ACDAccountNotifier postDidChangeNotificationForType:inStore:newAccount:oldAccount:];
  }

  v70 = storeCopy;
  if (!storeCopy)
  {
    [ACDAccountNotifier postDidChangeNotificationForType:inStore:newAccount:oldAccount:];
  }

  v12 = _ACDNotificationSignpostSystem(oldAccountCopy);
  spid = _ACSignpostCreate();

  v14 = _ACDNotificationSignpostSystem(v13);
  v15 = v14;
  if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    if ((type - 1) > 4)
    {
      *&v16 = COERCE_DOUBLE(@"unknown");
    }

    else
    {
      v16 = off_27848C7F0[type - 1];
    }

    *buf = 138412802;
    v84 = v72;
    v85 = 2112;
    v86 = *&v16;
    v87 = 2112;
    *v88 = v71;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v15, OS_SIGNPOST_INTERVAL_BEGIN, spid, "AccountDidChange", "%@ (changeType: %@, oldAccount: %@)", buf, 0x20u);
  }

  v18 = _ACDNotificationSignpostSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    if ((type - 1) > 4)
    {
      v65 = @"unknown";
    }

    else
    {
      v65 = off_27848C7F0[type - 1];
    }

    *buf = 134218754;
    v84 = *&spid;
    v85 = 2112;
    v86 = v72;
    v87 = 2112;
    *v88 = v65;
    *&v88[8] = 2112;
    *&v88[10] = v71;
    _os_log_debug_impl(&dword_221D2F000, v18, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: AccountDidChange %@ (changeType: %@, oldAccount: %@)", buf, 0x2Au);
  }

  [(ACDAccountNotifier *)self _pluginsRegisteredForNewAccount:*&v72 oldAccount:v71 changeType:type];
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  obj = v79 = 0u;
  v75 = [obj countByEnumeratingWithState:&v78 objects:v82 count:16];
  if (v75)
  {
    v68 = (type - 1);
    v74 = *v79;
    *&v19 = 138412546;
    v66 = v19;
    do
    {
      v20 = 0;
      do
      {
        if (*v79 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v78 + 1) + 8 * v20);
        if ([v21 principalObjectRespondsToSelector:{sel_account_didChangeWithType_inStore_oldAccount_, v66}])
        {
          v22 = [*&v72 copy];
          v23 = [v71 copy];
          v24 = v21;
          v77 = v70;
          v25 = v22;
          v26 = v23;
          v27 = v26;
          if (v25)
          {
            v28 = v25;
          }

          else
          {
            v28 = v26;
          }

          v29 = v28;
          accountType = [v29 accountType];
          [accountType identifier];
          v76 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

          v32 = _ACDNotificationSignpostSystem(v31);
          v33 = _ACSignpostCreate();

          v35 = _ACDNotificationSignpostSystem(v34);
          v36 = v35;
          if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
          {
            identifier = [v24 identifier];
            v38 = identifier;
            v39 = @"unknown";
            if (v68 < 5)
            {
              v39 = off_27848C7F0[v68];
            }

            *buf = 138544386;
            v84 = *&identifier;
            v85 = 2114;
            v86 = v76;
            v87 = 1026;
            *v88 = typeCopy;
            *&v88[4] = 2112;
            *&v88[6] = v39;
            *&v88[14] = 2112;
            *&v88[16] = v29;
            _os_signpost_emit_with_name_impl(&dword_221D2F000, v36, OS_SIGNPOST_INTERVAL_BEGIN, v33, "AccountDidChangePlugin", " PluginIdentifier=%{public,signpost.telemetry:string1,name=PluginIdentifier}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  ChangeType=%{public,signpost.telemetry:number1,name=ChangeType}d  enableTelemetry=YES (changeType: %@, account: %@)", buf, 0x30u);
          }

          v41 = _ACDNotificationSignpostSystem(v40);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            [v24 identifier];
            v53 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            v54 = v53;
            v55 = @"unknown";
            if (v68 < 5)
            {
              v55 = off_27848C7F0[v68];
            }

            *buf = 134219266;
            v84 = *&v33;
            v85 = 2114;
            v86 = v53;
            v87 = 2114;
            *v88 = v76;
            *&v88[8] = 1026;
            *&v88[10] = typeCopy;
            *&v88[14] = 2112;
            *&v88[16] = v55;
            *&v88[24] = 2112;
            *&v88[26] = v29;
            _os_log_debug_impl(&dword_221D2F000, v41, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: AccountDidChangePlugin  PluginIdentifier=%{public,signpost.telemetry:string1,name=PluginIdentifier}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  ChangeType=%{public,signpost.telemetry:number1,name=ChangeType}d  enableTelemetry=YES (changeType: %@, account: %@)", buf, 0x3Au);
          }

          principalObject = [v24 principalObject];
          v43 = principalObject;
          if (principalObject)
          {
            [principalObject account:v25 didChangeWithType:typeCopy inStore:v77 oldAccount:v27];
          }

          else
          {
            v44 = _ACDNotificationLogSystem(0);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v84 = *&v24;
              _os_log_error_impl(&dword_221D2F000, v44, OS_LOG_TYPE_ERROR, "Failed to load principal object for entry: %@", buf, 0xCu);
            }
          }

          Nanoseconds = _ACSignpostGetNanoseconds();
          v46 = _ACDNotificationSignpostSystem(Nanoseconds);
          v47 = v46;
          if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
          {
            identifier2 = [v24 identifier];
            v49 = identifier2;
            *&v50 = COERCE_DOUBLE(@"unknown");
            if (v68 <= 4)
            {
              v50 = off_27848C7F0[v68];
            }

            *buf = 138412802;
            v84 = *&identifier2;
            v85 = 2112;
            v86 = *&v50;
            v87 = 2112;
            *v88 = v27;
            _os_signpost_emit_with_name_impl(&dword_221D2F000, v47, OS_SIGNPOST_INTERVAL_END, v33, "AccountDidChangePlugin", "%@ (changeType: %@, oldAccount: %@)", buf, 0x20u);
          }

          v52 = _ACDNotificationSignpostSystem(v51);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            identifier3 = [v24 identifier];
            v57 = identifier3;
            v58 = @"unknown";
            if (v68 <= 4)
            {
              v58 = off_27848C7F0[v68];
            }

            *buf = 134219010;
            v84 = *&v33;
            v85 = 2048;
            v86 = Nanoseconds / 1000000000.0;
            v87 = 2112;
            *v88 = identifier3;
            *&v88[8] = 2112;
            *&v88[10] = v58;
            *&v88[18] = 2112;
            *&v88[20] = v27;
            _os_log_debug_impl(&dword_221D2F000, v52, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AccountDidChangePlugin %@ (changeType: %@, oldAccount: %@)", buf, 0x34u);
          }
        }

        ++v20;
      }

      while (v75 != v20);
      v59 = [obj countByEnumeratingWithState:&v78 objects:v82 count:16];
      v75 = v59;
    }

    while (v59);
  }

  v60 = _ACSignpostGetNanoseconds();
  v61 = _ACDNotificationSignpostSystem(v60);
  v62 = v61;
  if ((spid - 1) < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v61))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v62, OS_SIGNPOST_INTERVAL_END, spid, "AccountDidChange", "", buf, 2u);
  }

  v64 = _ACDNotificationSignpostSystem(v63);
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountNotifier postDidChangeNotificationForType:inStore:newAccount:oldAccount:];
  }
}

- (void)postWillPerformDataclassActionsOnAccount:(id)account forDataclasses:(id)dataclasses
{
  v58 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  dataclassesCopy = dataclasses;
  v42 = accountCopy;
  if (!accountCopy)
  {
    v39 = dataclassesCopy;
    [ACDAccountNotifier postWillPerformDataclassActionsOnAccount:forDataclasses:];
    dataclassesCopy = v39;
  }

  v41 = dataclassesCopy;
  if (!dataclassesCopy)
  {
    [ACDAccountNotifier postWillPerformDataclassActionsOnAccount:forDataclasses:];
  }

  v8 = _ACDNotificationSignpostSystem(dataclassesCopy);
  spid = _ACSignpostCreate();

  v10 = _ACDNotificationSignpostSystem(v9);
  v11 = v10;
  if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 138412546;
    v50 = v42;
    v51 = 2112;
    v52 = *&v41;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v11, OS_SIGNPOST_INTERVAL_BEGIN, spid, "AccountWillPerform", "%@ (dataclasses: %@)", buf, 0x16u);
  }

  v13 = _ACDNotificationSignpostSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v50 = spid;
    v51 = 2112;
    v52 = *&v42;
    v53 = 2112;
    v54 = v41;
    _os_log_debug_impl(&dword_221D2F000, v13, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: AccountWillPerform %@ (dataclasses: %@)", buf, 0x20u);
  }

  [(ACDAccountNotifier *)self _pluginsRegisteredForAccount:v42];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  obj = v46 = 0u;
  v14 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v14)
  {
    v44 = *v46;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v46 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v45 + 1) + 8 * i);
        if ([v16 principalObjectRespondsToSelector:sel_account_willPerformActionsForDataclasses_])
        {
          principalObject = [v16 principalObject];
          v18 = principalObject;
          if (principalObject)
          {
            v19 = _ACDNotificationSignpostSystem(principalObject);
            v20 = _ACSignpostCreate();

            v22 = _ACDNotificationSignpostSystem(v21);
            v23 = v22;
            if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
            {
              identifier = [v16 identifier];
              *buf = 138412802;
              v50 = identifier;
              v51 = 2112;
              v52 = *&v42;
              v53 = 2112;
              v54 = v41;
              _os_signpost_emit_with_name_impl(&dword_221D2F000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v20, "AccountWillPerformPlugin", "%@ : %@ (dataclasses: %@)", buf, 0x20u);
            }

            v26 = _ACDNotificationSignpostSystem(v25);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              identifier2 = [v16 identifier];
              *buf = 134218754;
              v50 = v20;
              v51 = 2112;
              v52 = *&identifier2;
              v53 = 2112;
              v54 = v42;
              v55 = 2112;
              v56 = v41;
              _os_log_debug_impl(&dword_221D2F000, v26, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: AccountWillPerformPlugin %@ : %@ (dataclasses: %@)", buf, 0x2Au);
            }

            [v18 account:v42 willPerformActionsForDataclasses:v41];
            Nanoseconds = _ACSignpostGetNanoseconds();
            v28 = _ACDNotificationSignpostSystem(Nanoseconds);
            v29 = v28;
            if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_221D2F000, v29, OS_SIGNPOST_INTERVAL_END, v20, "AccountWillPerformPlugin", "", buf, 2u);
            }

            v31 = _ACDNotificationSignpostSystem(v30);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218240;
              v50 = v20;
              v51 = 2048;
              v52 = Nanoseconds / 1000000000.0;
              _os_log_debug_impl(&dword_221D2F000, v31, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AccountWillPerformPlugin ", buf, 0x16u);
            }
          }

          else
          {
            v32 = _ACDNotificationLogSystem(0);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v50 = v16;
              _os_log_error_impl(&dword_221D2F000, v32, OS_LOG_TYPE_ERROR, "Failed to load principal object for entry: %@", buf, 0xCu);
            }
          }
        }
      }

      v14 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v14);
  }

  v34 = _ACSignpostGetNanoseconds();
  v35 = _ACDNotificationSignpostSystem(v34);
  v36 = v35;
  if ((spid - 1) < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v35))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v36, OS_SIGNPOST_INTERVAL_END, spid, "AccountWillPerform", "", buf, 2u);
  }

  v38 = _ACDNotificationSignpostSystem(v37);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountNotifier postWillPerformDataclassActionsOnAccount:forDataclasses:];
  }
}

- (void)postDidPerformDataclassActionsOnAccount:(id)account forDataclasses:(id)dataclasses
{
  v58 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  dataclassesCopy = dataclasses;
  v42 = accountCopy;
  if (!accountCopy)
  {
    v39 = dataclassesCopy;
    [ACDAccountNotifier postDidPerformDataclassActionsOnAccount:forDataclasses:];
    dataclassesCopy = v39;
  }

  v41 = dataclassesCopy;
  if (!dataclassesCopy)
  {
    [ACDAccountNotifier postDidPerformDataclassActionsOnAccount:forDataclasses:];
  }

  v8 = _ACDNotificationSignpostSystem(dataclassesCopy);
  spid = _ACSignpostCreate();

  v10 = _ACDNotificationSignpostSystem(v9);
  v11 = v10;
  if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 138412546;
    v50 = v42;
    v51 = 2112;
    v52 = *&v41;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v11, OS_SIGNPOST_INTERVAL_BEGIN, spid, "AccountDidPerform", "%@ (dataclasses: %@)", buf, 0x16u);
  }

  v13 = _ACDNotificationSignpostSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v50 = spid;
    v51 = 2112;
    v52 = *&v42;
    v53 = 2112;
    v54 = v41;
    _os_log_debug_impl(&dword_221D2F000, v13, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: AccountDidPerform %@ (dataclasses: %@)", buf, 0x20u);
  }

  [(ACDAccountNotifier *)self _pluginsRegisteredForAccount:v42];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  obj = v46 = 0u;
  v14 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v14)
  {
    v44 = *v46;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v46 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v45 + 1) + 8 * i);
        if ([v16 principalObjectRespondsToSelector:sel_account_didPerformActionsForDataclasses_])
        {
          principalObject = [v16 principalObject];
          v18 = principalObject;
          if (principalObject)
          {
            v19 = _ACDNotificationSignpostSystem(principalObject);
            v20 = _ACSignpostCreate();

            v22 = _ACDNotificationSignpostSystem(v21);
            v23 = v22;
            if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
            {
              identifier = [v16 identifier];
              *buf = 138412802;
              v50 = identifier;
              v51 = 2112;
              v52 = *&v42;
              v53 = 2112;
              v54 = v41;
              _os_signpost_emit_with_name_impl(&dword_221D2F000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v20, "AccountDidPerformPlugin", "%@ : %@ (dataclasses: %@)", buf, 0x20u);
            }

            v26 = _ACDNotificationSignpostSystem(v25);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              identifier2 = [v16 identifier];
              *buf = 134218754;
              v50 = v20;
              v51 = 2112;
              v52 = *&identifier2;
              v53 = 2112;
              v54 = v42;
              v55 = 2112;
              v56 = v41;
              _os_log_debug_impl(&dword_221D2F000, v26, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: AccountDidPerformPlugin %@ : %@ (dataclasses: %@)", buf, 0x2Au);
            }

            [v18 account:v42 didPerformActionsForDataclasses:v41];
            Nanoseconds = _ACSignpostGetNanoseconds();
            v28 = _ACDNotificationSignpostSystem(Nanoseconds);
            v29 = v28;
            if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_221D2F000, v29, OS_SIGNPOST_INTERVAL_END, v20, "AccountDidPerformPlugin", "", buf, 2u);
            }

            v31 = _ACDNotificationSignpostSystem(v30);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218240;
              v50 = v20;
              v51 = 2048;
              v52 = Nanoseconds / 1000000000.0;
              _os_log_debug_impl(&dword_221D2F000, v31, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AccountDidPerformPlugin ", buf, 0x16u);
            }
          }

          else
          {
            v32 = _ACDNotificationLogSystem(0);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v50 = v16;
              _os_log_error_impl(&dword_221D2F000, v32, OS_LOG_TYPE_ERROR, "Failed to load principal object for entry: %@", buf, 0xCu);
            }
          }
        }
      }

      v14 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v14);
  }

  v34 = _ACSignpostGetNanoseconds();
  v35 = _ACDNotificationSignpostSystem(v34);
  v36 = v35;
  if ((spid - 1) < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v35))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v36, OS_SIGNPOST_INTERVAL_END, spid, "AccountDidPerform", "", buf, 2u);
  }

  v38 = _ACDNotificationSignpostSystem(v37);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountNotifier postDidPerformDataclassActionsOnAccount:forDataclasses:];
  }
}

- (void)addNotificationEntry:(id)entry
{
  self->_notificationEntries = [(NSArray *)self->_notificationEntries arrayByAddingObject:entry];

  MEMORY[0x2821F96F8]();
}

- (void)removeAllNotificationEntries
{
  self->_notificationEntries = objc_alloc_init(MEMORY[0x277CBEA60]);

  MEMORY[0x2821F96F8]();
}

- (id)_pluginsRegisteredForAccount:(id)account
{
  v4 = [(ACDAccountNotifier *)self _unsafe_pluginsRegisteredForNewAccount:account oldAccount:0 changeType:0];
  if ([v4 count])
  {
    notificationEntryQueue = self->_notificationEntryQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__ACDAccountNotifier__pluginsRegisteredForAccount___block_invoke;
    block[3] = &unk_27848BF78;
    v6 = v4;
    v10 = v6;
    dispatch_sync(notificationEntryQueue, block);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __51__ACDAccountNotifier__pluginsRegisteredForAccount___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = objc_autoreleasePoolPush();
  v3 = [v4 principalObject];
  objc_autoreleasePoolPop(v2);
}

- (id)_pluginsRegisteredForNewAccount:(id)account oldAccount:(id)oldAccount changeType:(int)type
{
  v5 = *&type;
  v8 = MEMORY[0x277CCABB0];
  oldAccountCopy = oldAccount;
  accountCopy = account;
  v11 = [v8 numberWithUnsignedInt:v5];
  v12 = [(ACDAccountNotifier *)self _unsafe_pluginsRegisteredForNewAccount:accountCopy oldAccount:oldAccountCopy changeType:v11];

  if ([v12 count])
  {
    notificationEntryQueue = self->_notificationEntryQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__ACDAccountNotifier__pluginsRegisteredForNewAccount_oldAccount_changeType___block_invoke;
    block[3] = &unk_27848BF78;
    v14 = v12;
    v18 = v14;
    dispatch_sync(notificationEntryQueue, block);
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_unsafe_pluginsRegisteredForNewAccount:(id)account oldAccount:(id)oldAccount changeType:(id)type
{
  v46 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  oldAccountCopy = oldAccount;
  typeCopy = type;
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];

  accountType2 = [oldAccountCopy accountType];
  identifier2 = [accountType2 identifier];

  v15 = [(ACDAccountNotifier *)self _provisionedDataclassesForNewAccount:accountCopy oldAccount:oldAccountCopy];
  v16 = v15;
  if (typeCopy)
  {
    v17 = ExplicitAllowedPluginsByChangeType(v15);
    v18 = [v17 objectForKeyedSubscript:typeCopy];
  }

  else
  {
    v18 = 0;
  }

  v19 = MEMORY[0x277CCAC30];
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __83__ACDAccountNotifier__unsafe_pluginsRegisteredForNewAccount_oldAccount_changeType___block_invoke;
  v33 = &unk_27848C7D0;
  v20 = identifier;
  v34 = v20;
  v21 = identifier2;
  v35 = v21;
  v22 = v16;
  v36 = v22;
  v23 = v18;
  v37 = v23;
  v24 = [v19 predicateWithBlock:&v30];
  v25 = [(NSArray *)self->_notificationEntries filteredArrayUsingPredicate:v24, v30, v31, v32, v33];
  v26 = _ACDLogSystem(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v28 = [typeCopy intValue] - 1;
    if (v28 > 4)
    {
      v29 = @"unknown";
    }

    else
    {
      v29 = off_27848C7F0[v28];
    }

    *buf = 138413058;
    v39 = accountCopy;
    v40 = 2112;
    v41 = oldAccountCopy;
    v42 = 2112;
    v43 = v29;
    v44 = 2114;
    v45 = v25;
    _os_log_debug_impl(&dword_221D2F000, v26, OS_LOG_TYPE_DEBUG, "_unsafe_pluginsRegisteredForNewAccount returning plugins for newAccount %@, oldAccount %@, changeType %@:\\n%{public}@ ", buf, 0x2Au);
  }

  return v25;
}

uint64_t __83__ACDAccountNotifier__unsafe_pluginsRegisteredForNewAccount_oldAccount_changeType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 supportedAccountTypes];
  v5 = v4;
  v6 = !v4 || *(a1 + 32) && ([v4 containsObject:?] & 1) != 0 || *(a1 + 40) && (objc_msgSend(v5, "containsObject:") & 1) != 0;
  v7 = [v3 supportedDataclasses];
  v8 = v7;
  if (v6 && v7)
  {
    if (([*(a1 + 48) intersectsSet:v7] & 1) == 0)
    {
LABEL_11:
      v9 = 0;
      goto LABEL_17;
    }
  }

  else if (!v6)
  {
    goto LABEL_11;
  }

  v10 = *(a1 + 56);
  if (v10 && [v10 count])
  {
    v11 = *(a1 + 56);
    v12 = [v3 identifier];
    v9 = [v11 containsObject:v12];
  }

  else
  {
    v9 = 1;
  }

LABEL_17:

  return v9;
}

- (id)_provisionedDataclassesForNewAccount:(id)account oldAccount:(id)oldAccount
{
  oldAccountCopy = oldAccount;
  provisionedDataclasses = [account provisionedDataclasses];
  provisionedDataclasses2 = [oldAccountCopy provisionedDataclasses];

  if (provisionedDataclasses && provisionedDataclasses2)
  {
    v8 = [provisionedDataclasses setByAddingObjectsFromSet:provisionedDataclasses2];
LABEL_8:
    v9 = v8;
    goto LABEL_9;
  }

  if (provisionedDataclasses)
  {
    v8 = provisionedDataclasses;
    goto LABEL_8;
  }

  if (provisionedDataclasses2)
  {
    v8 = provisionedDataclasses2;
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

+ (void)allNotificationEntries
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  selfCopy = self;
  _os_log_debug_impl(&dword_221D2F000, a2, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: FaultPlugins ", &v2, 0xCu);
}

- (void)canSaveAccount:inStore:error:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"account" object:? file:? lineNumber:? description:?];
}

- (void)canSaveAccount:inStore:error:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"store" object:? file:? lineNumber:? description:?];
}

- (uint64_t)canSaveAccount:inStore:error:.cold.4()
{
  OUTLINED_FUNCTION_5_0();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  *v0 = v4;
  return [v4 handleFailureInMethod:v3 object:v2 file:@"ACDAccountNotifier.m" lineNumber:120 description:{@"Plugin denied account save but provided no error: %@", v1}];
}

- (void)canRemoveAccount:inStore:error:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"account" object:? file:? lineNumber:? description:?];
}

- (void)canRemoveAccount:inStore:error:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"store" object:? file:? lineNumber:? description:?];
}

- (uint64_t)canRemoveAccount:inStore:error:.cold.4()
{
  OUTLINED_FUNCTION_5_0();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  *v0 = v4;
  return [v4 handleFailureInMethod:v3 object:v2 file:@"ACDAccountNotifier.m" lineNumber:166 description:{@"Plugin denied account remove but provided no error: %@", v1}];
}

- (void)postWillChangeNotificationForType:inStore:newAccount:oldAccount:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"changeType" object:? file:? lineNumber:? description:?];
}

- (void)postWillChangeNotificationForType:inStore:newAccount:oldAccount:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"store" object:? file:? lineNumber:? description:?];
}

- (void)postDidChangeNotificationForType:inStore:newAccount:oldAccount:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"changeType" object:? file:? lineNumber:? description:?];
}

- (void)postDidChangeNotificationForType:inStore:newAccount:oldAccount:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"store" object:? file:? lineNumber:? description:?];
}

- (void)postWillPerformDataclassActionsOnAccount:forDataclasses:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"account" object:? file:? lineNumber:? description:?];
}

- (void)postWillPerformDataclassActionsOnAccount:forDataclasses:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"dataclasses" object:? file:? lineNumber:? description:?];
}

- (void)postDidPerformDataclassActionsOnAccount:forDataclasses:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"account" object:? file:? lineNumber:? description:?];
}

- (void)postDidPerformDataclassActionsOnAccount:forDataclasses:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"dataclasses" object:? file:? lineNumber:? description:?];
}

@end