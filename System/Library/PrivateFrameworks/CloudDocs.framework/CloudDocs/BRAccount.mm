@interface BRAccount
+ (BOOL)_refreshCurrentLoggedInAccountForcingRefresh:(BOOL)refresh personaID:(id)d error:(id *)error;
+ (BOOL)refreshCurrentLoggedInAccount;
+ (BOOL)refreshCurrentLoggedInAccountWithError:(id *)error;
+ (id)currentCachedLoggedInAccountWithError:(id *)error;
+ (id)currentLoggedInAccountWithError:(id *)error;
+ (void)startAccountTokenChangeObserverIfNeeded;
- (BOOL)getEvictableSpace:(id *)space error:(id *)error;
- (BOOL)hasOptimizeStorageWithError:(id *)error;
- (BOOL)iCloudDesktopSettingsChangedWithAttributes:(id)attributes error:(id *)error;
- (BOOL)setOptimizeStorageEnabled:(BOOL)enabled error:(id *)error;
- (BRAccount)init;
- (BRAccount)initWithAccountID:(id)d;
- (id)containerWithPendingChanges;
- (void)containerWithPendingChanges;
- (void)evictOldDocumentsWithHandler:(id)handler;
@end

@implementation BRAccount

void __63__BRAccount_BRPrivate__startAccountTokenChangeObserverIfNeeded__block_invoke()
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(v0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("account-token-change-observer", v1);

  v3 = startAccountTokenChangeObserverIfNeeded_tokenChangeObserverQueue;
  startAccountTokenChangeObserverIfNeeded_tokenChangeObserverQueue = v2;

  v4 = BRAccountTokenChangedNotification();
  v5 = [v4 UTF8String];
  v6 = v21;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __63__BRAccount_BRPrivate__startAccountTokenChangeObserverIfNeeded__block_invoke_2;
  v18 = &unk_1E7A14858;
  v19 = &v20;
  v7 = startAccountTokenChangeObserverIfNeeded_tokenChangeObserverQueue;
  v8 = &v15;
  v9 = [MEMORY[0x1E69DF068] sharedManager];
  v10 = [v9 br_currentPersonaID];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __br_notify_register_dispatch_block_invoke;
  handler[3] = &unk_1E7A14940;
  v11 = v10;
  v25 = v11;
  v27 = v5;
  v12 = v8;
  v26 = v12;
  LODWORD(v5) = notify_register_dispatch(v5, v6 + 6, v7, handler);

  if (v5)
  {
    v13 = brc_bread_crumbs("+[BRAccount(BRPrivate) startAccountTokenChangeObserverIfNeeded]_block_invoke", 302);
    v14 = brc_default_log(0, 0);
    if (os_log_type_enabled(v14, 0x90u))
    {
      __63__BRAccount_BRPrivate__startAccountTokenChangeObserverIfNeeded__block_invoke_cold_1();
    }
  }

  _Block_object_dispose(&v20, 8);
}

+ (void)startAccountTokenChangeObserverIfNeeded
{
  if (startAccountTokenChangeObserverIfNeeded_onceToken != -1)
  {
    +[BRAccount(BRPrivate) startAccountTokenChangeObserverIfNeeded];
  }
}

- (BRAccount)init
{
  v7.receiver = self;
  v7.super_class = BRAccount;
  v2 = [(BRAccount *)&v7 init];
  if (v2)
  {
    mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
    br_currentPersonaID = [mEMORY[0x1E69DF068] br_currentPersonaID];
    personaID = v2->_personaID;
    v2->_personaID = br_currentPersonaID;
  }

  return v2;
}

+ (BOOL)_refreshCurrentLoggedInAccountForcingRefresh:(BOOL)refresh personaID:(id)d error:(id *)error
{
  refreshCopy = refresh;
  v60 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (+[BRCloudDocsHelperProvider hasDaemonicParts])
  {
    v9 = brc_bread_crumbs("+[BRAccount _refreshCurrentLoggedInAccountForcingRefresh:personaID:error:]", 70);
    v10 = brc_default_log(0, 0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      +[BRAccount _refreshCurrentLoggedInAccountForcingRefresh:personaID:error:];
    }

    v11 = [MEMORY[0x1E696ABC0] br_errorWithDomain:@"BRInternalErrorDomain" code:15 description:@"unreachable: Can't refresh current logged in account from the daemon"];
    if (v11)
    {
      v12 = brc_bread_crumbs("+[BRAccount _refreshCurrentLoggedInAccountForcingRefresh:personaID:error:]", 70);
      v13 = brc_default_log(0, 0);
      if (os_log_type_enabled(v13, 0x90u))
      {
        v45 = "(passed to caller)";
        *buf = 136315906;
        v53 = "+[BRAccount _refreshCurrentLoggedInAccountForcingRefresh:personaID:error:]";
        v54 = 2080;
        if (!error)
        {
          v45 = "(ignored by caller)";
        }

        v55 = v45;
        v56 = 2112;
        v57 = v11;
        v58 = 2112;
        v59 = v12;
        _os_log_error_impl(&dword_1AE2A9000, v13, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v14 = v11;
      v15 = 0;
      *error = v11;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    if (!currentLoggedInAccountOrNullByPersonaID)
    {
      v16 = objc_opt_new();
      v17 = currentLoggedInAccountOrNullByPersonaID;
      currentLoggedInAccountOrNullByPersonaID = v16;
    }

    if (error)
    {
      *error = 0;
    }

    [self startAccountTokenChangeObserverIfNeeded];
    v11 = [currentLoggedInAccountOrNullByPersonaID objectForKeyedSubscript:dCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v11;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    if (!v11 || refreshCopy)
    {
      v46 = brc_monotonic_time_now();
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v49 = mainBundle;
      infoDictionary = [mainBundle infoDictionary];
      v23 = [infoDictionary objectForKeyedSubscript:@"CFBundleShortVersionString"];

      initUsingUserLocalDaemonTokenService = [[BRDaemonConnection alloc] initUsingUserLocalDaemonTokenService];
      newSyncTokenProxy = [initUsingUserLocalDaemonTokenService newSyncTokenProxy];
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __74__BRAccount__refreshCurrentLoggedInAccountForcingRefresh_personaID_error___block_invoke;
      v50[3] = &unk_1E7A147E0;
      v26 = newSyncTokenProxy;
      v51 = v26;
      v47 = v23;
      v48 = bundleIdentifier;
      [v26 currentAccountCopyTokenWithBundleID:bundleIdentifier version:v23 reply:v50];
      result = [v26 result];
      if (error)
      {
        *error = [v26 error];
      }

      error = [v26 error];

      if (error)
      {
        v29 = brc_bread_crumbs("+[BRAccount _refreshCurrentLoggedInAccountForcingRefresh:personaID:error:]", 116);
        v30 = brc_default_log(0, 0);
        if (os_log_type_enabled(v30, 0x90u))
        {
          [BRAccount _refreshCurrentLoggedInAccountForcingRefresh:v26 personaID:v29 error:v30];
        }
      }

      [initUsingUserLocalDaemonTokenService invalidate];
      perAppAccountIdentifier = [(BRAccount *)v19 perAppAccountIdentifier];
      if (result == perAppAccountIdentifier || ([result isEqual:perAppAccountIdentifier] & 1) != 0)
      {
        if (!v11)
        {
          null = [MEMORY[0x1E695DFB0] null];
          [currentLoggedInAccountOrNullByPersonaID setObject:null forKeyedSubscript:dCopy];
        }

        v15 = 0;
      }

      else
      {
        v33 = brc_bread_crumbs("+[BRAccount _refreshCurrentLoggedInAccountForcingRefresh:personaID:error:]", 129);
        v34 = brc_default_log(1, 0);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v53 = perAppAccountIdentifier;
          v54 = 2112;
          v55 = result;
          v56 = 2112;
          v57 = v33;
          _os_log_debug_impl(&dword_1AE2A9000, v34, OS_LOG_TYPE_DEBUG, "[DEBUG] got an account change (previous token %@, new token %@)%@", buf, 0x20u);
        }

        v35 = +[BRDaemonConnection defaultConnectionIfExists];
        remoteObjectProxy = [v35 remoteObjectProxy];
        [remoteObjectProxy updatePrivilegesDescriptor];

        v37 = +[BRDaemonConnection secondaryConnectionIfExists];
        remoteObjectProxy2 = [v37 remoteObjectProxy];
        [remoteObjectProxy2 updatePrivilegesDescriptor];

        if (result)
        {
          v39 = objc_alloc_init(BRAccount);

          [(BRAccount *)v39 setPerAppAccountIdentifier:result];
          [currentLoggedInAccountOrNullByPersonaID setObject:v39 forKeyedSubscript:dCopy];
          v15 = 1;
          v19 = v39;
        }

        else
        {
          null2 = [MEMORY[0x1E695DFB0] null];
          [currentLoggedInAccountOrNullByPersonaID setObject:null2 forKeyedSubscript:dCopy];

          v15 = 1;
        }
      }

      v41 = brc_monotonic_time_now();
      if (brc_monotonic_time_diff_to_interval(v41 - v46) <= 0.5 || qos_class_self() < QOS_CLASS_USER_INITIATED)
      {
        v42 = brc_bread_crumbs("+[BRAccount _refreshCurrentLoggedInAccountForcingRefresh:personaID:error:]", 150);
        v43 = brc_default_log(1, 0);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          +[BRAccount _refreshCurrentLoggedInAccountForcingRefresh:personaID:error:];
        }
      }

      else
      {
        v42 = brc_bread_crumbs("+[BRAccount _refreshCurrentLoggedInAccountForcingRefresh:personaID:error:]", 148);
        v43 = brc_default_log(0, 0);
        if (os_log_type_enabled(v43, 0x90u))
        {
          +[BRAccount _refreshCurrentLoggedInAccountForcingRefresh:personaID:error:];
        }
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

+ (id)currentCachedLoggedInAccountWithError:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  if (+[BRCloudDocsHelperProvider hasDaemonicParts])
  {
    v5 = brc_bread_crumbs("+[BRAccount currentCachedLoggedInAccountWithError:]", 160);
    v6 = brc_default_log(0, 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      +[BRAccount currentCachedLoggedInAccountWithError:];
    }

    v7 = [MEMORY[0x1E696ABC0] br_errorWithDomain:@"BRInternalErrorDomain" code:15 description:@"unreachable: Can't get current cached logged in account from the daemon"];
    if (v7)
    {
      v8 = brc_bread_crumbs("+[BRAccount currentCachedLoggedInAccountWithError:]", 160);
      v9 = brc_default_log(0, 0);
      if (os_log_type_enabled(v9, 0x90u))
      {
        v17 = "(passed to caller)";
        v18 = 136315906;
        v19 = "+[BRAccount currentCachedLoggedInAccountWithError:]";
        v20 = 2080;
        if (!error)
        {
          v17 = "(ignored by caller)";
        }

        v21 = v17;
        v22 = 2112;
        v23 = v7;
        v24 = 2112;
        v25 = v8;
        _os_log_error_impl(&dword_1AE2A9000, v9, 0x90u, "[ERROR] %s: %s error: %@%@", &v18, 0x2Au);
      }
    }

    if (error)
    {
      v10 = v7;
      *error = v7;
    }

    v11 = 0;
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
    br_currentPersonaID = [mEMORY[0x1E69DF068] br_currentPersonaID];

    [selfCopy _refreshCurrentLoggedInAccountForcingRefresh:0 personaID:br_currentPersonaID error:error];
    v15 = [currentLoggedInAccountOrNullByPersonaID objectForKeyedSubscript:br_currentPersonaID];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v15;
    }

    else
    {
      v11 = 0;
    }

    objc_sync_exit(selfCopy);
  }

  return v11;
}

+ (id)currentLoggedInAccountWithError:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  if (+[BRCloudDocsHelperProvider hasDaemonicParts])
  {
    v5 = brc_bread_crumbs("+[BRAccount currentLoggedInAccountWithError:]", 178);
    v6 = brc_default_log(0, 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      +[BRAccount currentLoggedInAccountWithError:];
    }

    v7 = [MEMORY[0x1E696ABC0] br_errorWithDomain:@"BRInternalErrorDomain" code:15 description:@"unreachable: Can't get current logged in account from the daemon"];
    if (v7)
    {
      v8 = brc_bread_crumbs("+[BRAccount currentLoggedInAccountWithError:]", 178);
      v9 = brc_default_log(0, 0);
      if (os_log_type_enabled(v9, 0x90u))
      {
        v13 = "(passed to caller)";
        v14 = 136315906;
        v15 = "+[BRAccount currentLoggedInAccountWithError:]";
        v16 = 2080;
        if (!error)
        {
          v13 = "(ignored by caller)";
        }

        v17 = v13;
        v18 = 2112;
        v19 = v7;
        v20 = 2112;
        v21 = v8;
        _os_log_error_impl(&dword_1AE2A9000, v9, 0x90u, "[ERROR] %s: %s error: %@%@", &v14, 0x2Au);
      }
    }

    if (error)
    {
      v10 = v7;
      *error = v7;
    }

    v11 = 0;
  }

  else
  {
    [self refreshCurrentLoggedInAccount];
    v11 = [self currentCachedLoggedInAccountWithError:error];
  }

  return v11;
}

+ (BOOL)refreshCurrentLoggedInAccountWithError:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  if (+[BRCloudDocsHelperProvider hasDaemonicParts])
  {
    v5 = brc_bread_crumbs("+[BRAccount refreshCurrentLoggedInAccountWithError:]", 189);
    v6 = brc_default_log(0, 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      +[BRAccount _refreshCurrentLoggedInAccountForcingRefresh:personaID:error:];
    }

    selfCopy = [MEMORY[0x1E696ABC0] br_errorWithDomain:@"BRInternalErrorDomain" code:15 description:@"unreachable: Can't refresh current logged in account from the daemon"];
    if (selfCopy)
    {
      v8 = brc_bread_crumbs("+[BRAccount refreshCurrentLoggedInAccountWithError:]", 189);
      v9 = brc_default_log(0, 0);
      if (os_log_type_enabled(v9, 0x90u))
      {
        v17 = "(passed to caller)";
        LODWORD(v18[0]) = 136315906;
        *(v18 + 4) = "+[BRAccount refreshCurrentLoggedInAccountWithError:]";
        WORD2(v18[1]) = 2080;
        if (!error)
        {
          v17 = "(ignored by caller)";
        }

        *(&v18[1] + 6) = v17;
        HIWORD(v18[2]) = 2112;
        v18[3] = selfCopy;
        v19 = 2112;
        v20 = v8;
        _os_log_error_impl(&dword_1AE2A9000, v9, 0x90u, "[ERROR] %s: %s error: %@%@", v18, 0x2Au);
      }
    }

    if (error)
    {
      v10 = selfCopy;
      v11 = 0;
      *error = selfCopy;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    memset(v18, 0, 24);
    __brc_create_section(0, "+[BRAccount refreshCurrentLoggedInAccountWithError:]", 194, 0, v18);
    v12 = brc_bread_crumbs("+[BRAccount refreshCurrentLoggedInAccountWithError:]", 194);
    v13 = brc_default_log(1, 0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      +[BRAccount refreshCurrentLoggedInAccountWithError:];
    }

    mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
    br_currentPersonaID = [mEMORY[0x1E69DF068] br_currentPersonaID];

    v11 = [selfCopy _refreshCurrentLoggedInAccountForcingRefresh:1 personaID:br_currentPersonaID error:error];
    __brc_leave_section(v18);
    objc_sync_exit(selfCopy);
  }

  return v11;
}

+ (BOOL)refreshCurrentLoggedInAccount
{
  if (+[BRCloudDocsHelperProvider hasDaemonicParts])
  {
    v3 = brc_bread_crumbs("+[BRAccount refreshCurrentLoggedInAccount]", 204);
    v4 = brc_default_log(0, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      +[BRAccount _refreshCurrentLoggedInAccountForcingRefresh:personaID:error:];
    }

    return 0;
  }

  else
  {

    return [self refreshCurrentLoggedInAccountWithError:0];
  }
}

- (BRAccount)initWithAccountID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = BRAccount;
  v6 = [(BRAccount *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountID, d);
    mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
    br_currentPersonaID = [mEMORY[0x1E69DF068] br_currentPersonaID];
    personaID = v7->_personaID;
    v7->_personaID = br_currentPersonaID;
  }

  return v7;
}

- (id)containerWithPendingChanges
{
  v39 = *MEMORY[0x1E69E9840];
  if ([(NSString *)self->_personaID isEqualToString:@"__defaultPersonaID__"]|| (v3 = self->_personaID) == 0)
  {
    if (containerWithPendingChanges___personaOnceToken != -1)
    {
      [BRAccount containerWithPendingChanges];
    }

    v4 = containerWithPendingChanges___personalPersona;
    v5 = 1;
  }

  else
  {
    v4 = v3;
    v5 = 0;
  }

  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  v35 = 0;
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  v9 = userPersonaUniqueString;
  if (userPersonaUniqueString == v4 || [(NSString *)userPersonaUniqueString isEqualToString:v4])
  {
    v10 = 0;
    goto LABEL_10;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v34 = 0;
    v22 = [currentPersona copyCurrentPersonaContextWithError:&v34];
    v23 = v34;
    v24 = v35;
    v35 = v22;

    if (v23)
    {
      v25 = brc_bread_crumbs("[BRAccount containerWithPendingChanges]", 235);
      v26 = brc_default_log(0, 0);
      if (os_log_type_enabled(v26, 0x90u))
      {
        [BRAccount containerWithPendingChanges];
      }
    }

    v10 = [currentPersona br_generateAndRestorePersonaContextWithPersonaUniqueString:v4];

    if (v10)
    {
      v27 = brc_bread_crumbs("[BRAccount containerWithPendingChanges]", 235);
      v28 = brc_default_log(0, 0);
      if (os_log_type_enabled(v28, 0x90u))
      {
        personaID = self->_personaID;
        *buf = 138412802;
        *&buf[4] = personaID;
        *&buf[12] = 2112;
        *&buf[14] = v10;
        *&buf[22] = 2112;
        v38 = v27;
        _os_log_error_impl(&dword_1AE2A9000, v28, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_35:
    }
  }

  else
  {
    if (v5 && ([currentPersona isDataSeparatedPersona] & 1) == 0)
    {
      v27 = brc_bread_crumbs("[BRAccount containerWithPendingChanges]", 235);
      v28 = brc_default_log(1, 0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [BRAccount containerWithPendingChanges];
      }

      v10 = 0;
      goto LABEL_35;
    }

    v30 = brc_bread_crumbs("[BRAccount containerWithPendingChanges]", 235);
    v31 = brc_default_log(1, 0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [BRAccount containerWithPendingChanges];
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
  }

LABEL_10:
  memset(buf, 0, sizeof(buf));
  __brc_create_section(0, "[BRAccount containerWithPendingChanges]", 237, 0, buf);
  v11 = brc_bread_crumbs("[BRAccount containerWithPendingChanges]", 237);
  v12 = brc_default_log(1, 0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [BRAccount containerWithPendingChanges];
  }

  v13 = +[BRDaemonConnection defaultConnection];
  newSyncProxy = [v13 newSyncProxy];

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __40__BRAccount_containerWithPendingChanges__block_invoke_46;
  v32[3] = &unk_1E7A14808;
  v15 = newSyncProxy;
  v33 = v15;
  [v15 getContainersNeedingUpload:v32];
  result = [v15 result];
  error = [v15 error];

  if (error)
  {
    v18 = brc_bread_crumbs("[BRAccount containerWithPendingChanges]", 244);
    v19 = brc_default_log(0, 0);
    if (os_log_type_enabled(v19, 0x90u))
    {
      error2 = [v15 error];
      [(BRAccount *)error2 containerWithPendingChanges];
    }
  }

  __brc_leave_section(buf);
  _BRRestorePersona(&v35);

  return result;
}

void __40__BRAccount_containerWithPendingChanges__block_invoke()
{
  v2 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = containerWithPendingChanges___personalPersona;
  containerWithPendingChanges___personalPersona = v0;
}

- (BOOL)iCloudDesktopSettingsChangedWithAttributes:(id)attributes error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  if ([(NSString *)self->_personaID isEqualToString:@"__defaultPersonaID__"]|| (v7 = self->_personaID) == 0)
  {
    if (iCloudDesktopSettingsChangedWithAttributes_error____personaOnceToken != -1)
    {
      [BRAccount iCloudDesktopSettingsChangedWithAttributes:error:];
    }

    v8 = iCloudDesktopSettingsChangedWithAttributes_error____personalPersona;
    v9 = 1;
  }

  else
  {
    v8 = v7;
    v9 = 0;
  }

  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  v34 = 0;
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  v13 = userPersonaUniqueString;
  if (userPersonaUniqueString == v8 || [(NSString *)userPersonaUniqueString isEqualToString:v8])
  {
    v14 = 0;
    goto LABEL_10;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v33 = 0;
    v21 = [currentPersona copyCurrentPersonaContextWithError:&v33];
    v22 = v33;
    v23 = v34;
    v34 = v21;

    if (v22)
    {
      v24 = brc_bread_crumbs("[BRAccount iCloudDesktopSettingsChangedWithAttributes:error:]", 253);
      v25 = brc_default_log(0, 0);
      if (os_log_type_enabled(v25, 0x90u))
      {
        [BRAccount containerWithPendingChanges];
      }
    }

    v14 = [currentPersona br_generateAndRestorePersonaContextWithPersonaUniqueString:v8];

    if (v14)
    {
      v26 = brc_bread_crumbs("[BRAccount iCloudDesktopSettingsChangedWithAttributes:error:]", 253);
      v27 = brc_default_log(0, 0);
      if (os_log_type_enabled(v27, 0x90u))
      {
        personaID = self->_personaID;
        *buf = 138412802;
        v36 = personaID;
        v37 = 2112;
        v38 = v14;
        v39 = 2112;
        v40 = v26;
        _os_log_error_impl(&dword_1AE2A9000, v27, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_29:
    }
  }

  else
  {
    if (v9 && ([currentPersona isDataSeparatedPersona] & 1) == 0)
    {
      v26 = brc_bread_crumbs("[BRAccount iCloudDesktopSettingsChangedWithAttributes:error:]", 253);
      v27 = brc_default_log(1, 0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [BRAccount containerWithPendingChanges];
      }

      v14 = 0;
      goto LABEL_29;
    }

    v29 = brc_bread_crumbs("[BRAccount iCloudDesktopSettingsChangedWithAttributes:error:]", 253);
    v30 = brc_default_log(1, 0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      [BRAccount containerWithPendingChanges];
    }

    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
  }

LABEL_10:
  v15 = +[BRDaemonConnection defaultConnection];
  newSyncProxy = [v15 newSyncProxy];

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __62__BRAccount_iCloudDesktopSettingsChangedWithAttributes_error___block_invoke_50;
  v31[3] = &unk_1E7A14830;
  v17 = newSyncProxy;
  v32 = v17;
  [v17 iCloudDesktopSettingsChangedWithAttributes:attributesCopy reply:v31];
  if (error)
  {
    *error = [v17 error];
  }

  error = [v17 error];
  v19 = error == 0;

  _BRRestorePersona(&v34);
  return v19;
}

void __62__BRAccount_iCloudDesktopSettingsChangedWithAttributes_error___block_invoke()
{
  v2 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = iCloudDesktopSettingsChangedWithAttributes_error____personalPersona;
  iCloudDesktopSettingsChangedWithAttributes_error____personalPersona = v0;
}

void __62__BRAccount_iCloudDesktopSettingsChangedWithAttributes_error___block_invoke_50(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696AD98];
  v4 = a2 == 0;
  v5 = a2;
  v6 = [v3 numberWithInt:v4];
  [v2 setObjResult:v6 error:v5];
}

void __63__BRAccount_BRPrivate__startAccountTokenChangeObserverIfNeeded__block_invoke_2()
{
  v0 = brc_bread_crumbs("+[BRAccount(BRPrivate) startAccountTokenChangeObserverIfNeeded]_block_invoke_2", 284);
  v1 = brc_default_log(1, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __63__BRAccount_BRPrivate__startAccountTokenChangeObserverIfNeeded__block_invoke_2_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"BRAccountTokenWillChangeNotification" object:0];

  objc_autoreleasePoolPop(v2);
  v4 = objc_autoreleasePoolPush();
  if (!+[BRCloudDocsHelperProvider hasDaemonicParts])
  {
    +[BRAccount refreshCurrentLoggedInAccount];
  }

  v5 = [MEMORY[0x1E6959A48] defaultStore];
  [v5 invalidateAccountForPersonaCache];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"BRAccountTokenDidChangeNotification" object:0];

  objc_autoreleasePoolPop(v4);
}

- (BOOL)hasOptimizeStorageWithError:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  if ([(NSString *)self->_personaID isEqualToString:@"__defaultPersonaID__"]|| (v4 = self->_personaID) == 0)
  {
    if (hasOptimizeStorageWithError____personaOnceToken != -1)
    {
      [BRAccount(BRPrivate) hasOptimizeStorageWithError:];
    }

    v5 = hasOptimizeStorageWithError____personalPersona;
    v6 = 1;
  }

  else
  {
    v5 = v4;
    v6 = 0;
  }

  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  v37 = 0;
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  v10 = userPersonaUniqueString;
  if (userPersonaUniqueString == v5 || [(NSString *)userPersonaUniqueString isEqualToString:v5])
  {
    v11 = 0;
    goto LABEL_10;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v36 = 0;
    v22 = [currentPersona copyCurrentPersonaContextWithError:&v36];
    v23 = v36;
    v24 = v37;
    v37 = v22;

    if (v23)
    {
      v25 = brc_bread_crumbs("[BRAccount(BRPrivate) hasOptimizeStorageWithError:]", 311);
      v26 = brc_default_log(0, 0);
      if (os_log_type_enabled(v26, 0x90u))
      {
        [BRAccount containerWithPendingChanges];
      }
    }

    v11 = [currentPersona br_generateAndRestorePersonaContextWithPersonaUniqueString:v5];

    if (v11)
    {
      v27 = brc_bread_crumbs("[BRAccount(BRPrivate) hasOptimizeStorageWithError:]", 311);
      v28 = brc_default_log(0, 0);
      if (os_log_type_enabled(v28, 0x90u))
      {
        personaID = self->_personaID;
        *buf = 138412802;
        v39 = personaID;
        v40 = 2112;
        v41 = v11;
        v42 = 2112;
        v43 = v27;
        _os_log_error_impl(&dword_1AE2A9000, v28, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_32:
    }
  }

  else
  {
    if (v6 && ([currentPersona isDataSeparatedPersona] & 1) == 0)
    {
      v27 = brc_bread_crumbs("[BRAccount(BRPrivate) hasOptimizeStorageWithError:]", 311);
      v28 = brc_default_log(1, 0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [BRAccount containerWithPendingChanges];
      }

      v11 = 0;
      goto LABEL_32;
    }

    v30 = brc_bread_crumbs("[BRAccount(BRPrivate) hasOptimizeStorageWithError:]", 311);
    v31 = brc_default_log(1, 0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [BRAccount containerWithPendingChanges];
    }

    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
  }

LABEL_10:
  v12 = +[BRDaemonConnection defaultConnection];
  newSyncProxy = [v12 newSyncProxy];

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __52__BRAccount_BRPrivate__hasOptimizeStorageWithError___block_invoke_88;
  v34[3] = &unk_1E7A14880;
  v14 = newSyncProxy;
  v35 = v14;
  [v14 hasOptimizeStorageWithReply:v34];
  result = [v14 result];
  bOOLValue = [result BOOLValue];

  error = [v14 error];
  if (error)
  {
    v18 = brc_bread_crumbs("[BRAccount(BRPrivate) hasOptimizeStorageWithError:]", 319);
    v19 = brc_default_log(0, 0);
    if (os_log_type_enabled(v19, 0x90u))
    {
      v32 = "(passed to caller)";
      *buf = 136315906;
      v39 = "[BRAccount(BRPrivate) hasOptimizeStorageWithError:]";
      v40 = 2080;
      if (!error)
      {
        v32 = "(ignored by caller)";
      }

      v41 = v32;
      v42 = 2112;
      v43 = error;
      v44 = 2112;
      v45 = v18;
      _os_log_error_impl(&dword_1AE2A9000, v19, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (error)
  {
    v20 = error;
    *error = error;
  }

  _BRRestorePersona(&v37);
  return bOOLValue;
}

void __52__BRAccount_BRPrivate__hasOptimizeStorageWithError___block_invoke()
{
  v2 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = hasOptimizeStorageWithError____personalPersona;
  hasOptimizeStorageWithError____personalPersona = v0;
}

- (BOOL)setOptimizeStorageEnabled:(BOOL)enabled error:(id *)error
{
  enabledCopy = enabled;
  v48 = *MEMORY[0x1E69E9840];
  if ([(NSString *)self->_personaID isEqualToString:@"__defaultPersonaID__"]|| (v7 = self->_personaID) == 0)
  {
    if (setOptimizeStorageEnabled_error____personaOnceToken != -1)
    {
      [BRAccount(BRPrivate) setOptimizeStorageEnabled:error:];
    }

    v8 = setOptimizeStorageEnabled_error____personalPersona;
    v9 = 1;
  }

  else
  {
    v8 = v7;
    v9 = 0;
  }

  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  v39 = 0;
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  v12 = userPersonaUniqueString;
  if (userPersonaUniqueString == v8 || [(NSString *)userPersonaUniqueString isEqualToString:v8])
  {
    v13 = 0;
    goto LABEL_10;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v38 = 0;
    v23 = [currentPersona copyCurrentPersonaContextWithError:&v38];
    v24 = v38;
    v25 = v39;
    v39 = v23;

    if (v24)
    {
      v26 = brc_bread_crumbs("[BRAccount(BRPrivate) setOptimizeStorageEnabled:error:]", 325);
      v27 = brc_default_log(0, 0);
      if (os_log_type_enabled(v27, 0x90u))
      {
        [BRAccount containerWithPendingChanges];
      }
    }

    v13 = [currentPersona br_generateAndRestorePersonaContextWithPersonaUniqueString:v8];

    if (v13)
    {
      v28 = brc_bread_crumbs("[BRAccount(BRPrivate) setOptimizeStorageEnabled:error:]", 325);
      v29 = brc_default_log(0, 0);
      if (os_log_type_enabled(v29, 0x90u))
      {
        personaID = self->_personaID;
        *buf = 138412802;
        v41 = personaID;
        v42 = 2112;
        v43 = v13;
        v44 = 2112;
        v45 = v28;
        _os_log_error_impl(&dword_1AE2A9000, v29, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_32:
    }
  }

  else
  {
    if (v9 && ([currentPersona isDataSeparatedPersona] & 1) == 0)
    {
      v28 = brc_bread_crumbs("[BRAccount(BRPrivate) setOptimizeStorageEnabled:error:]", 325);
      v29 = brc_default_log(1, 0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [BRAccount containerWithPendingChanges];
      }

      v13 = 0;
      goto LABEL_32;
    }

    v31 = brc_bread_crumbs("[BRAccount(BRPrivate) setOptimizeStorageEnabled:error:]", 325);
    v32 = brc_default_log(1, 0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      [BRAccount containerWithPendingChanges];
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
  }

LABEL_10:
  v14 = +[BRDaemonConnection defaultConnection];
  newSyncProxy = [v14 newSyncProxy];

  objc_initWeak(&location, newSyncProxy);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __56__BRAccount_BRPrivate__setOptimizeStorageEnabled_error___block_invoke_92;
  v35[3] = &unk_1E7A148A8;
  objc_copyWeak(&v36, &location);
  [newSyncProxy setStorageOpimizationEnabled:enabledCopy reply:v35];
  error = [newSyncProxy error];
  if (error)
  {
    v17 = brc_bread_crumbs("[BRAccount(BRPrivate) setOptimizeStorageEnabled:error:]", 333);
    v18 = brc_default_log(0, 0);
    if (os_log_type_enabled(v18, 0x90u))
    {
      v33 = "(passed to caller)";
      *buf = 136315906;
      v41 = "[BRAccount(BRPrivate) setOptimizeStorageEnabled:error:]";
      v42 = 2080;
      if (!error)
      {
        v33 = "(ignored by caller)";
      }

      v43 = v33;
      v44 = 2112;
      v45 = error;
      v46 = 2112;
      v47 = v17;
      _os_log_error_impl(&dword_1AE2A9000, v18, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (error)
  {
    v19 = error;
    *error = error;
  }

  error2 = [newSyncProxy error];
  v21 = error2 == 0;

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);

  _BRRestorePersona(&v39);
  return v21;
}

void __56__BRAccount_BRPrivate__setOptimizeStorageEnabled_error___block_invoke()
{
  v2 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = setOptimizeStorageEnabled_error____personalPersona;
  setOptimizeStorageEnabled_error____personalPersona = v0;
}

void __56__BRAccount_BRPrivate__setOptimizeStorageEnabled_error___block_invoke_92(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setBoolResult:v3 == 0 error:v3];
}

- (BOOL)getEvictableSpace:(id *)space error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696ABC0] brc_errorMethodNotImplemented:sel_getEvictableSpace_error_];
  if (v5)
  {
    v6 = brc_bread_crumbs("[BRAccount(BRPrivate) getEvictableSpace:error:]", 339);
    v7 = brc_default_log(0, 0);
    if (os_log_type_enabled(v7, 0x90u))
    {
      v10 = "(passed to caller)";
      v11 = 136315906;
      v12 = "[BRAccount(BRPrivate) getEvictableSpace:error:]";
      v13 = 2080;
      if (!error)
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

  if (error)
  {
    v8 = v5;
    *error = v5;
  }

  return 0;
}

- (void)evictOldDocumentsWithHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if ([(NSString *)self->_personaID isEqualToString:@"__defaultPersonaID__"]|| (v5 = self->_personaID) == 0)
  {
    if (evictOldDocumentsWithHandler____personaOnceToken != -1)
    {
      [BRAccount(BRPrivate) evictOldDocumentsWithHandler:];
    }

    v6 = evictOldDocumentsWithHandler____personalPersona;
    v7 = 1;
  }

  else
  {
    v6 = v5;
    v7 = 0;
  }

  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  v32 = 0;
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  v11 = userPersonaUniqueString;
  if (userPersonaUniqueString == v6 || [(NSString *)userPersonaUniqueString isEqualToString:v6])
  {
    v12 = 0;
    goto LABEL_10;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v31 = 0;
    v17 = [currentPersona copyCurrentPersonaContextWithError:&v31];
    v18 = v31;
    v19 = v32;
    v32 = v17;

    if (v18)
    {
      v20 = brc_bread_crumbs("[BRAccount(BRPrivate) evictOldDocumentsWithHandler:]", 359);
      v21 = brc_default_log(0, 0);
      if (os_log_type_enabled(v21, 0x90u))
      {
        [BRAccount containerWithPendingChanges];
      }
    }

    v12 = [currentPersona br_generateAndRestorePersonaContextWithPersonaUniqueString:v6];

    if (v12)
    {
      v22 = brc_bread_crumbs("[BRAccount(BRPrivate) evictOldDocumentsWithHandler:]", 359);
      v23 = brc_default_log(0, 0);
      if (os_log_type_enabled(v23, 0x90u))
      {
        personaID = self->_personaID;
        *buf = 138412802;
        v34 = personaID;
        v35 = 2112;
        v36 = v12;
        v37 = 2112;
        v38 = v22;
        _os_log_error_impl(&dword_1AE2A9000, v23, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_27:
    }
  }

  else
  {
    if (v7 && ([currentPersona isDataSeparatedPersona] & 1) == 0)
    {
      v22 = brc_bread_crumbs("[BRAccount(BRPrivate) evictOldDocumentsWithHandler:]", 359);
      v23 = brc_default_log(1, 0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [BRAccount containerWithPendingChanges];
      }

      v12 = 0;
      goto LABEL_27;
    }

    v25 = brc_bread_crumbs("[BRAccount(BRPrivate) evictOldDocumentsWithHandler:]", 359);
    v26 = brc_default_log(1, 0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [BRAccount containerWithPendingChanges];
    }

    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
  }

LABEL_10:
  v13 = +[BRDaemonConnection defaultConnection];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __53__BRAccount_BRPrivate__evictOldDocumentsWithHandler___block_invoke_97;
  v29[3] = &unk_1E7A148D0;
  v14 = handlerCopy;
  v30 = v14;
  v15 = [v13 remoteObjectProxyWithErrorHandler:v29];

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __53__BRAccount_BRPrivate__evictOldDocumentsWithHandler___block_invoke_2;
  v27[3] = &unk_1E7A148D0;
  v16 = v14;
  v28 = v16;
  [v15 evictOldDocumentsWithReply:v27];

  _BRRestorePersona(&v32);
}

void __53__BRAccount_BRPrivate__evictOldDocumentsWithHandler___block_invoke()
{
  v2 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = evictOldDocumentsWithHandler____personalPersona;
  evictOldDocumentsWithHandler____personalPersona = v0;
}

uint64_t __53__BRAccount_BRPrivate__evictOldDocumentsWithHandler___block_invoke_97(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __53__BRAccount_BRPrivate__evictOldDocumentsWithHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)_refreshCurrentLoggedInAccountForcingRefresh:(void *)a1 personaID:(uint64_t)a2 error:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 error];
  OUTLINED_FUNCTION_2();
  v8 = 2112;
  v9 = a2;
  OUTLINED_FUNCTION_7(&dword_1AE2A9000, a3, v6, "[ERROR] error while getting ubiquityIdentityToken: %@%@", v7);
}

+ (void)_refreshCurrentLoggedInAccountForcingRefresh:personaID:error:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7(&dword_1AE2A9000, v0, v1, "[ERROR] Took %0.2fs to get the token%@", v2);
}

- (void)containerWithPendingChanges
{
  OUTLINED_FUNCTION_8(self, a2, a3, 5.778e-34);
  OUTLINED_FUNCTION_7(&dword_1AE2A9000, v6, v4, "[ERROR] %@%@", v5);
}

@end