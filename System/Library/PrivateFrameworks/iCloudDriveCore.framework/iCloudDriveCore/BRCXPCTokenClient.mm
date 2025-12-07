@interface BRCXPCTokenClient
- (NSString)description;
- (void)currentAccountCopyTokenWithBundleID:(id)d version:(id)version reply:(id)reply;
- (void)fetchContainerPathForCurrentPersonaWithReply:(id)reply;
- (void)fetchGroupContainerPathForCurrentPersonaForFPFS:(BOOL)s withReply:(id)reply;
- (void)fetchGroupContainerPathForCurrentPersonaWithReply:(id)reply;
- (void)getPrimaryiCloudAccountStatus:(id)status;
- (void)prepareFileProvidersWithReply:(id)reply;
@end

@implementation BRCXPCTokenClient

- (NSString)description
{
  v5.receiver = self;
  v5.super_class = BRCXPCTokenClient;
  v2 = [(BRCXPCClient *)&v5 description];
  v3 = [v2 stringByAppendingString:@"<token-getter>"];

  return v3;
}

- (void)prepareFileProvidersWithReply:(id)reply
{
  v27 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v16, 0, sizeof(v16));
  __brc_create_section(1, "[BRCXPCTokenClient prepareFileProvidersWithReply:]", 1341, 0, v16);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v16[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v7;
    v19 = 2112;
    selfCopy = self;
    v21 = 2112;
    v22 = v9;
    v23 = 2080;
    v24 = "[BRCXPCTokenClient prepareFileProvidersWithReply:]";
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__BRCXPCTokenClient_prepareFileProvidersWithReply___block_invoke;
  v14[3] = &unk_2785014D0;
  v14[4] = self;
  v10 = replyCopy;
  v15 = v10;
  v11 = _brc_ipc_check_logged_status(self, 0, v14);

  if (v11)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v19 = 2112;
      selfCopy = 0;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", buf, 0x20u);
    }

    (*(v10 + 2))(v10, 0);
  }

  __brc_leave_section(v16);
}

void __51__BRCXPCTokenClient_prepareFileProvidersWithReply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)currentAccountCopyTokenWithBundleID:(id)d version:(id)version reply:(id)reply
{
  v78 = *MEMORY[0x277D85DE8];
  dCopy = d;
  versionCopy = version;
  replyCopy = reply;
  session = [(BRCXPCClient *)self session];
  accountHandler = [session accountHandler];

  if (accountHandler)
  {
    br_dsid = 0;
    goto LABEL_3;
  }

  v33 = +[BRCAccountHandler currentiCloudAccount];
  if ([v33 br_isEnabledForCloudDocs])
  {
    br_personaIdentifier = [v33 br_personaIdentifier];
    if ([br_personaIdentifier isEqualToString:@"__defaultPersonaID__"])
    {
    }

    else
    {
      br_personaIdentifier2 = [v33 br_personaIdentifier];

      if (br_personaIdentifier2)
      {
        v40 = 0;
        goto LABEL_32;
      }
    }

    if (currentAccountCopyTokenWithBundleID_version_reply____personaOnceToken != -1)
    {
      [BRCXPCTokenClient currentAccountCopyTokenWithBundleID:version:reply:];
    }

    br_personaIdentifier2 = currentAccountCopyTokenWithBundleID_version_reply____personalPersona;
    v40 = 1;
LABEL_32:
    mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
    currentPersona = [mEMORY[0x277D77BF8] currentPersona];

    *buf = 0;
    userPersonaUniqueString = [currentPersona userPersonaUniqueString];
    v64 = userPersonaUniqueString;
    if (userPersonaUniqueString == br_personaIdentifier2 || ([userPersonaUniqueString isEqualToString:{br_personaIdentifier2, userPersonaUniqueString}] & 1) != 0)
    {
      v43 = 0;
    }

    else
    {
      if (voucher_process_can_use_arbitrary_personas())
      {
        v68 = 0;
        v51 = [currentPersona copyCurrentPersonaContextWithError:&v68];
        v52 = v68;
        v53 = *buf;
        *buf = v51;

        if (v52)
        {
          v54 = brc_bread_crumbs();
          v55 = brc_default_log();
          if (os_log_type_enabled(v55, 0x90u))
          {
            __37__BRCAccountMigrationChecker_perform__block_invoke_cold_4();
          }
        }

        v43 = [currentPersona br_generateAndRestorePersonaContextWithPersonaUniqueString:br_personaIdentifier2];

        if (!v43)
        {
          goto LABEL_35;
        }

        v56 = brc_bread_crumbs();
        v57 = brc_default_log();
        if (os_log_type_enabled(v57, 0x90u))
        {
          br_personaIdentifier3 = [v33 br_personaIdentifier];
          ctx.ctx[0] = 138412802;
          *&ctx.ctx[1] = br_personaIdentifier3;
          LOWORD(ctx.ctx[3]) = 2112;
          *(&ctx.ctx[3] + 2) = v43;
          HIWORD(ctx.ctx[5]) = 2112;
          *&ctx.ctx[6] = v56;
          _os_log_error_impl(&dword_223E7A000, v57, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", &ctx, 0x20u);
        }
      }

      else
      {
        if (!v40 || ([currentPersona isDataSeparatedPersona] & 1) != 0)
        {
          v62 = brc_bread_crumbs();
          v63 = brc_default_log();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
          {
            __br_notify_register_dispatch_block_invoke_cold_3();
          }

          v43 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
          goto LABEL_35;
        }

        v56 = brc_bread_crumbs();
        v57 = brc_default_log();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          __br_notify_register_dispatch_block_invoke_cold_2();
        }

        v43 = 0;
      }
    }

LABEL_35:
    v44 = +[BRCAccountsManager sharedManager];
    accountHandler = [v44 getOrCreateAccountHandlerForACAccount:v33];

    br_dsid = [v33 br_dsid];
    if ([accountHandler finishedLoading])
    {
      session2 = [accountHandler session];
      v46 = session2 == 0;

      if (v46)
      {
        v60 = brc_bread_crumbs();
        v61 = brc_default_log();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          ctx.ctx[0] = 138413058;
          *&ctx.ctx[1] = self;
          LOWORD(ctx.ctx[3]) = 2112;
          *(&ctx.ctx[3] + 2) = 0;
          HIWORD(ctx.ctx[5]) = 2112;
          *&ctx.ctx[6] = 0;
          LOWORD(ctx.ctx[8]) = 2112;
          *(&ctx.ctx[8] + 2) = v60;
          _os_log_impl(&dword_223E7A000, v61, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &ctx, 0x2Au);
        }

        (*(replyCopy + 2))(replyCopy, 0, 0);
        _BRRestorePersona();

        goto LABEL_22;
      }
    }

    _BRRestorePersona();
LABEL_3:
    v13 = [(BRCClientPrivilegesDescriptor *)self->super._clientPriviledgesDescriptor cloudEnabledStatusWithHasSession:1];
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v59 = BRCPrettyPrintEnumWithContext(v13, &brc_cloud_enabled_status_entries, 0);
      ctx.ctx[0] = 138412802;
      *&ctx.ctx[1] = self;
      LOWORD(ctx.ctx[3]) = 2112;
      *(&ctx.ctx[3] + 2) = v59;
      HIWORD(ctx.ctx[5]) = 2112;
      *&ctx.ctx[6] = v14;
      _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: %@%@", &ctx, 0x20u);
    }

    if (v13 == 1 || v13 == 253)
    {
      ubiquityTokenSalt = [accountHandler ubiquityTokenSalt];
      bundleID = [(BRCXPCClient *)self bundleID];
      if (br_dsid || ([accountHandler session], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "accountFacade"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "accountDSID"), br_dsid = objc_claimAutoreleasedReturnValue(), v19, v18, br_dsid))
      {
        memset(&ctx, 0, sizeof(ctx));
        v20 = br_dsid;
        uTF8String = [br_dsid UTF8String];
        v22 = strlen(uTF8String);
        CCHmacInit(&ctx, 0, uTF8String, v22);
        v23 = ubiquityTokenSalt;
        uTF8String2 = [ubiquityTokenSalt UTF8String];
        v25 = strlen(uTF8String2);
        CCHmacUpdate(&ctx, uTF8String2, v25);
        CCHmacUpdate(&ctx, ":", 1uLL);
        v26 = bundleID;
        uTF8String3 = [bundleID UTF8String];
        if (uTF8String3)
        {
          v28 = uTF8String3;
        }

        else
        {
          v28 = "(null)";
        }

        v29 = strlen(v28);
        CCHmacUpdate(&ctx, v28, v29);
        CCHmacFinal(&ctx, macOut);
        v30 = [MEMORY[0x277CBEA90] dataWithBytes:macOut length:20];
        v31 = brc_bread_crumbs();
        v32 = brc_default_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 138413058;
          *&buf[4] = self;
          v70 = 2112;
          v71 = v30;
          v72 = 2112;
          v73 = 0;
          v74 = 2112;
          v75 = v31;
          _os_log_impl(&dword_223E7A000, v32, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
        }

        (*(replyCopy + 2))(replyCopy, v30, 0);
      }

      else
      {
        v47 = brc_bread_crumbs();
        v48 = brc_default_log();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
        {
          [BRCXPCTokenClient currentAccountCopyTokenWithBundleID:version:reply:];
        }

        v49 = brc_bread_crumbs();
        v50 = brc_default_log();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          ctx.ctx[0] = 138413058;
          *&ctx.ctx[1] = self;
          LOWORD(ctx.ctx[3]) = 2112;
          *(&ctx.ctx[3] + 2) = 0;
          HIWORD(ctx.ctx[5]) = 2112;
          *&ctx.ctx[6] = 0;
          LOWORD(ctx.ctx[8]) = 2112;
          *(&ctx.ctx[8] + 2) = v49;
          _os_log_impl(&dword_223E7A000, v50, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &ctx, 0x2Au);
        }

        (*(replyCopy + 2))(replyCopy, 0, 0);
      }
    }

    else
    {
      v35 = brc_bread_crumbs();
      v36 = brc_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        ctx.ctx[0] = 138413058;
        *&ctx.ctx[1] = self;
        LOWORD(ctx.ctx[3]) = 2112;
        *(&ctx.ctx[3] + 2) = 0;
        HIWORD(ctx.ctx[5]) = 2112;
        *&ctx.ctx[6] = 0;
        LOWORD(ctx.ctx[8]) = 2112;
        *(&ctx.ctx[8] + 2) = v35;
        _os_log_impl(&dword_223E7A000, v36, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &ctx, 0x2Au);
      }

      (*(replyCopy + 2))(replyCopy, 0, 0);
    }

LABEL_22:
    v33 = accountHandler;
    goto LABEL_23;
  }

  v37 = brc_bread_crumbs();
  v38 = brc_default_log();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    ctx.ctx[0] = 138413058;
    *&ctx.ctx[1] = self;
    LOWORD(ctx.ctx[3]) = 2112;
    *(&ctx.ctx[3] + 2) = 0;
    HIWORD(ctx.ctx[5]) = 2112;
    *&ctx.ctx[6] = 0;
    LOWORD(ctx.ctx[8]) = 2112;
    *(&ctx.ctx[8] + 2) = v37;
    _os_log_impl(&dword_223E7A000, v38, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &ctx, 0x2Au);
  }

  (*(replyCopy + 2))(replyCopy, 0, 0);
LABEL_23:
}

void __71__BRCXPCTokenClient_currentAccountCopyTokenWithBundleID_version_reply___block_invoke()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = currentAccountCopyTokenWithBundleID_version_reply____personalPersona;
  currentAccountCopyTokenWithBundleID_version_reply____personalPersona = v0;
}

- (void)getPrimaryiCloudAccountStatus:(id)status
{
  v59 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  memset(v46, 0, sizeof(v46));
  __brc_create_section(1, "[BRCXPCTokenClient getPrimaryiCloudAccountStatus:]", 1425, 0, v46);
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = v46[0];
    v7 = qos_class_self();
    v8 = BRCPrettyPrintEnumWithContext(v7, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v6;
    v51 = 2112;
    selfCopy = self;
    v53 = 2112;
    v54 = v8;
    v55 = 2080;
    v56 = "[BRCXPCTokenClient getPrimaryiCloudAccountStatus:]";
    v57 = 2112;
    v58 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __51__BRCXPCTokenClient_getPrimaryiCloudAccountStatus___block_invoke;
  v44[3] = &unk_2785014D0;
  v44[4] = self;
  v42 = statusCopy;
  v45 = v42;
  v9 = _brc_ipc_check_logged_status(self, 0, v44);

  if (v9)
  {
    v10 = +[BRCAccountHandler currentiCloudAccount];
    v11 = [v10 isEnabledForDataclass:*MEMORY[0x277CB91D8]];
    br_isCloudDocsMigrationComplete = [v10 br_isCloudDocsMigrationComplete];
    br_dsid = [v10 br_dsid];
    v13 = +[BRCAccountsManager sharedManager];
    identifier = [v10 identifier];
    v41 = [v13 accountHandlerForACAccountID:identifier];

    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [BRCXPCTokenClient getPrimaryiCloudAccountStatus:];
    }

    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [BRCXPCTokenClient getPrimaryiCloudAccountStatus:];
    }

    v19 = BRGetMigrationStatusForDSID();
    loggedOutError = [v41 loggedOutError];
    v21 = [loggedOutError br_isCloudDocsErrorCode:22];
    v37 = loggedOutError;
    session = [v41 session];
    clientState = [session clientState];
    v38 = [clientState objectForKeyedSubscript:@"kBRCFPFSMigrationStateKey"];

    if (v38)
    {
      v24 = [v38 intValue] != 3;
    }

    else
    {
      v24 = 0;
    }

    v47[0] = *MEMORY[0x277CFAB50];
    v39 = [MEMORY[0x277CCABB0] numberWithChar:v19];
    v48[0] = v39;
    v47[1] = *MEMORY[0x277CFAB30];
    v25 = [MEMORY[0x277CCABB0] numberWithBool:v11];
    v48[1] = v25;
    v47[2] = *MEMORY[0x277CFAB18];
    v26 = [MEMORY[0x277CCABB0] numberWithBool:br_isCloudDocsMigrationComplete];
    v48[2] = v26;
    v47[3] = *MEMORY[0x277CFAB20];
    v27 = [MEMORY[0x277CCABB0] numberWithBool:v21];
    v48[3] = v27;
    v47[4] = *MEMORY[0x277CFAB40];
    v28 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "br_isEnabledForDesktopSync")}];
    v48[4] = v28;
    v47[5] = *MEMORY[0x277CFAB48];
    v29 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "br_isEnabledForDesktopSync")}];
    v48[5] = v29;
    v47[6] = *MEMORY[0x277CFAB38];
    v30 = MEMORY[0x277CCABB0];
    session2 = [(BRCXPCClient *)self session];
    v32 = [v30 numberWithInt:session2 != 0];
    v48[6] = v32;
    v47[7] = *MEMORY[0x277CFAB28];
    v33 = [MEMORY[0x277CCABB0] numberWithBool:v24];
    v48[7] = v33;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:8];

    v35 = brc_bread_crumbs();
    v36 = brc_default_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      selfCopy2 = self;
      v51 = 2112;
      selfCopy = v34;
      v53 = 2112;
      v54 = 0;
      v55 = 2112;
      v56 = v35;
      _os_log_impl(&dword_223E7A000, v36, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    (*(v42 + 2))(v42, v34, 0);
  }

  __brc_leave_section(v46);
}

void __51__BRCXPCTokenClient_getPrimaryiCloudAccountStatus___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchContainerPathForCurrentPersonaWithReply:(id)reply
{
  v29 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v18, 0, sizeof(v18));
  __brc_create_section(1, "[BRCXPCTokenClient fetchContainerPathForCurrentPersonaWithReply:]", 1474, 0, v18);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v18[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v7;
    v21 = 2112;
    selfCopy = self;
    v23 = 2112;
    v24 = v9;
    v25 = 2080;
    v26 = "[BRCXPCTokenClient fetchContainerPathForCurrentPersonaWithReply:]";
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __66__BRCXPCTokenClient_fetchContainerPathForCurrentPersonaWithReply___block_invoke;
  v16[3] = &unk_2785014D0;
  v16[4] = self;
  v10 = replyCopy;
  v17 = v10;
  v11 = _brc_ipc_check_logged_status(self, 0, v16);

  if (v11)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      homeDirForCurrentPersona = [MEMORY[0x277CFAEF0] homeDirForCurrentPersona];
      *buf = 138413058;
      selfCopy2 = self;
      v21 = 2112;
      selfCopy = homeDirForCurrentPersona;
      v23 = 2112;
      v24 = 0;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    homeDirForCurrentPersona2 = [MEMORY[0x277CFAEF0] homeDirForCurrentPersona];
    (*(v10 + 2))(v10, homeDirForCurrentPersona2, 0);
  }

  __brc_leave_section(v18);
}

void __66__BRCXPCTokenClient_fetchContainerPathForCurrentPersonaWithReply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchGroupContainerPathForCurrentPersonaWithReply:(id)reply
{
  v29 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v18, 0, sizeof(v18));
  __brc_create_section(1, "[BRCXPCTokenClient fetchGroupContainerPathForCurrentPersonaWithReply:]", 1483, 0, v18);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v18[0];
    v8 = qos_class_self();
    v9 = BRCPrettyPrintEnumWithContext(v8, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v7;
    v21 = 2112;
    selfCopy = self;
    v23 = 2112;
    v24 = v9;
    v25 = 2080;
    v26 = "[BRCXPCTokenClient fetchGroupContainerPathForCurrentPersonaWithReply:]";
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__BRCXPCTokenClient_fetchGroupContainerPathForCurrentPersonaWithReply___block_invoke;
  v16[3] = &unk_2785014D0;
  v16[4] = self;
  v10 = replyCopy;
  v17 = v10;
  v11 = _brc_ipc_check_logged_status(self, 0, v16);

  if (v11)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      br_personaGroupDir = [MEMORY[0x277CCACA8] br_personaGroupDir];
      *buf = 138413058;
      selfCopy2 = self;
      v21 = 2112;
      selfCopy = br_personaGroupDir;
      v23 = 2112;
      v24 = 0;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    br_personaGroupDir2 = [MEMORY[0x277CCACA8] br_personaGroupDir];
    (*(v10 + 2))(v10, br_personaGroupDir2, 0);
  }

  __brc_leave_section(v18);
}

void __71__BRCXPCTokenClient_fetchGroupContainerPathForCurrentPersonaWithReply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchGroupContainerPathForCurrentPersonaForFPFS:(BOOL)s withReply:(id)reply
{
  sCopy = s;
  v31 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  memset(v20, 0, sizeof(v20));
  __brc_create_section(1, "[BRCXPCTokenClient fetchGroupContainerPathForCurrentPersonaForFPFS:withReply:]", 1492, 0, v20);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v20[0];
    v10 = qos_class_self();
    v11 = BRCPrettyPrintEnumWithContext(v10, &brc_qos_entries, 0);
    *buf = 134219010;
    selfCopy2 = v9;
    v23 = 2112;
    selfCopy = self;
    v25 = 2112;
    v26 = v11;
    v27 = 2080;
    v28 = "[BRCXPCTokenClient fetchGroupContainerPathForCurrentPersonaForFPFS:withReply:]";
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ (%@) %s %@", buf, 0x34u);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __79__BRCXPCTokenClient_fetchGroupContainerPathForCurrentPersonaForFPFS_withReply___block_invoke;
  v18[3] = &unk_2785014D0;
  v18[4] = self;
  v12 = replyCopy;
  v19 = v12;
  v13 = _brc_ipc_check_logged_status(self, 0, v18);

  if (v13)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [MEMORY[0x277CCACA8] br_personaGroupDirForFPFS:sCopy];
      *buf = 138413058;
      selfCopy2 = self;
      v23 = 2112;
      selfCopy = v16;
      v25 = 2112;
      v26 = 0;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", buf, 0x2Au);
    }

    v17 = [MEMORY[0x277CCACA8] br_personaGroupDirForFPFS:sCopy];
    (*(v12 + 2))(v12, v17, 0);
  }

  __brc_leave_section(v20);
}

void __79__BRCXPCTokenClient_fetchGroupContainerPathForCurrentPersonaForFPFS_withReply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138413058;
    v8 = v6;
    v9 = 2112;
    v10 = 0;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@)%@", &v7, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

@end