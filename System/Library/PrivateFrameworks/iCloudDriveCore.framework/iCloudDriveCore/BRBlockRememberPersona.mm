@interface BRBlockRememberPersona
@end

@implementation BRBlockRememberPersona

void ___BRBlockRememberPersona_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isEqualToString:@"__defaultPersonaID__"] & 1) != 0 || (v2 = *(a1 + 32)) == 0)
  {
    if (_block_invoke___personaOnceToken_2 != -1)
    {
      ___BRBlockRememberPersona_block_invoke_cold_1();
    }

    v3 = _block_invoke___personalPersona_2;
    v4 = 1;
  }

  else
  {
    v3 = v2;
    v4 = 0;
  }

  v5 = [MEMORY[0x277D77BF8] sharedManager];
  v6 = [v5 currentPersona];

  v25 = 0;
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
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        __br_notify_register_dispatch_block_invoke_cold_2();
      }
    }

    else
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        __br_notify_register_dispatch_block_invoke_cold_3();
      }

      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
      if (v14)
      {
        goto LABEL_25;
      }
    }

LABEL_9:
    (*(*(a1 + 40) + 16))();
    goto LABEL_10;
  }

  v24 = 0;
  v9 = [v6 copyCurrentPersonaContextWithError:&v24];
  v10 = v24;
  v11 = v25;
  v25 = v9;

  if (v10)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
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

  v15 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, 0x90u))
  {
    v23 = *(a1 + 32);
    *buf = 138412802;
    v27 = v23;
    v28 = 2112;
    v29 = v14;
    v30 = 2112;
    v31 = v15;
    _os_log_error_impl(&dword_223E7A000, v16, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
  }

LABEL_25:
  v19 = brc_bread_crumbs();
  v20 = brc_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    ___BRBlockRememberPersona_block_invoke_cold_5();
  }

LABEL_10:
  _BRRestorePersona();
}

void ___BRBlockRememberPersona_block_invoke_2()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = _block_invoke___personalPersona_2;
  _block_invoke___personalPersona_2 = v0;
}

@end