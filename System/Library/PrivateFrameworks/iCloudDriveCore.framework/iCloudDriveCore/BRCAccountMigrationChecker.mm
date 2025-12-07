@interface BRCAccountMigrationChecker
- (void)perform;
@end

@implementation BRCAccountMigrationChecker

- (void)perform
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] No ACAccount found%@", v1, 0xCu);
}

void __37__BRCAccountMigrationChecker_perform__block_invoke(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) br_personaIdentifier];
  if ([v4 isEqualToString:@"__defaultPersonaID__"])
  {
  }

  else
  {
    v5 = [*(a1 + 32) br_personaIdentifier];

    if (v5)
    {
      v6 = 0;
      goto LABEL_8;
    }
  }

  if (AGE_MIGRATION_LOCALIZATION_TABLE_block_invoke___personaOnceToken != -1)
  {
    __37__BRCAccountMigrationChecker_perform__block_invoke_cold_1();
  }

  v5 = AGE_MIGRATION_LOCALIZATION_TABLE_block_invoke___personalPersona;
  v6 = 1;
LABEL_8:
  v7 = [MEMORY[0x277D77BF8] sharedManager];
  v8 = [v7 currentPersona];

  v29 = 0;
  v9 = [v8 userPersonaUniqueString];
  v10 = v9;
  if (v9 == v5 || ([v9 isEqualToString:v5] & 1) != 0)
  {
    v11 = 0;
    goto LABEL_11;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v28 = 0;
    v16 = [v8 copyCurrentPersonaContextWithError:&v28];
    v17 = v28;
    v18 = v29;
    v29 = v16;

    if (v17)
    {
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, 0x90u))
      {
        __37__BRCAccountMigrationChecker_perform__block_invoke_cold_4();
      }
    }

    v11 = [v8 br_generateAndRestorePersonaContextWithPersonaUniqueString:v5];

    if (v11)
    {
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, 0x90u))
      {
        v23 = [*(a1 + 32) br_personaIdentifier];
        *buf = 138412802;
        v31 = v23;
        v32 = 2112;
        v33 = v11;
        v34 = 2112;
        v35 = v21;
        _os_log_error_impl(&dword_223E7A000, v22, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_31:
    }
  }

  else
  {
    if (v6 && ([v8 isDataSeparatedPersona] & 1) == 0)
    {
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        __br_notify_register_dispatch_block_invoke_cold_2();
      }

      v11 = 0;
      goto LABEL_31;
    }

    v24 = brc_bread_crumbs();
    v25 = brc_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      __br_notify_register_dispatch_block_invoke_cold_3();
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
  }

LABEL_11:
  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __37__BRCAccountMigrationChecker_perform__block_invoke_cold_5();
  }

  v14 = +[BRCAccountsManager sharedManager];
  v15 = [v14 getOrCreateAccountHandlerForACAccount:*(a1 + 32)];

  if (!v15)
  {
    v26 = brc_bread_crumbs();
    v27 = brc_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      __37__BRCAccountMigrationChecker_perform__block_invoke_cold_6();
    }
  }

  [v15 setMigrationStatus:a2 forDSID:*(*(a1 + 40) + 8) shouldUpdateAccount:1 completion:0];
  [*(a1 + 40) _close];

  _BRRestorePersona();
}

void __37__BRCAccountMigrationChecker_perform__block_invoke_2()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = AGE_MIGRATION_LOCALIZATION_TABLE_block_invoke___personalPersona;
  AGE_MIGRATION_LOCALIZATION_TABLE_block_invoke___personalPersona = v0;
}

void __37__BRCAccountMigrationChecker_perform__block_invoke_122(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  memset(v17, 0, sizeof(v17));
  __brc_create_section(0, "[BRCAccountMigrationChecker perform]_block_invoke", 244, 0, v17);
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    v19 = v17[0];
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Request for CloudKit migration status done. response: %@, error: %@%@", buf, 0x2Au);
  }

  if (v8 && !v9 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v12 = [v8 name];
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __37__BRCAccountMigrationChecker_perform__block_invoke_122_cold_1();
    }

    if (v12)
    {
      [v12 isEqualToString:*MEMORY[0x277CEC6A0]];
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v15 = +[BRCSystemResourcesManager manager];
    v16 = [v15 isNetworkReachable];

    if (v16)
    {
      [*(*(a1 + 32) + 24) scheduleNextEvent];
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
  __brc_leave_section(v17);
}

void __37__BRCAccountMigrationChecker_perform__block_invoke_cold_4()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __37__BRCAccountMigrationChecker_perform__block_invoke_122_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end