@interface BRCAccountSession(BRCDatabaseManager)
- (void)_loadClientStateFromClientDB;
- (void)_startWatcher;
- (void)closeDBs;
- (void)expensiveReadOnlyDB;
- (void)readOnlyDB;
@end

@implementation BRCAccountSession(BRCDatabaseManager)

- (void)readOnlyDB
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)expensiveReadOnlyDB
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_startWatcher
{
  OUTLINED_FUNCTION_18();
  v0 = brc_append_system_info_to_message();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_223E7A000, v1, v2, "[CRIT] %@%@", v3, v4, v5, v6);
}

- (void)_stepBackupDetector:()BRCDatabaseManager newState:error:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v11 = *MEMORY[0x277D85DE8];
  v4 = *__error();
  v5 = 136315650;
  v6 = v3;
  v7 = 1024;
  v8 = v4;
  v9 = 2112;
  v10 = v1;
  _os_log_debug_impl(&dword_223E7A000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] failed stating '%s' %{errno}d%@", &v5, 0x1Cu);
}

- (void)saveClientZoneToDB:()BRCDatabaseManager .cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: lcz.dbRowID%@", v5, v6, v7, v8);
  }
}

- (void)createServerZone:()BRCDatabaseManager .cold.2()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: rowID%@", v5, v6, v7, v8);
  }
}

- (void)_createAppLibrary:()BRCDatabaseManager .cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: lib.dbRowID%@", v5, v6, v7, v8);
  }
}

- (void)_createAppLibrary:()BRCDatabaseManager .cold.2()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: lib.zoneRowID%@", v5, v6, v7, v8);
  }
}

- (void)_createClientZone:()BRCDatabaseManager .cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: lcz.dbRowID%@", v5, v6, v7, v8);
  }
}

- (void)newSharedClientZoneFromPQLResultSet:()BRCDatabaseManager error:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: plist%@", v5, v6, v7, v8);
  }
}

- (void)newSharedServerZoneFromPQLResultSet:()BRCDatabaseManager error:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: plist != nil%@", v5, v6, v7, v8);
  }
}

- (void)newPrivateClientZoneFromPQLResultSet:()BRCDatabaseManager error:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: plist != nil%@", v5, v6, v7, v8);
  }
}

- (void)newPrivateServerZoneFromPQLResultSet:()BRCDatabaseManager error:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: plist%@", v5, v6, v7, v8);
  }
}

- (void)newPrivateServerZoneFromPQLResultSet:()BRCDatabaseManager error:.cold.2()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: mangledID%@", v5, v6, v7, v8);
  }
}

- (void)_clearNeedsUpgradeErrorsWithBrVersion:()BRCDatabaseManager .cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)_registerLastBootIfNeeded:()BRCDatabaseManager table:skipControlFiles:dbCreationDate:deviceIDChanged:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_loadClientStateFromClientDB
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
}

- (void)_finishClientTruthConnectionSetupWithError:()BRCDatabaseManager .cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: _databaseID%@", v5, v6, v7, v8);
  }
}

+ (void)openAndValidateDatabase:()BRCDatabaseManager serverTruth:session:baseURL:skipControlFiles:initialVersion:lastCurrentVersion:dbCreationDate:deviceIDChanged:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)_openConnection:()BRCDatabaseManager serverTruth:databaseName:baseURL:initialVersion:lastCurrentVersion:error:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
}

+ (void)_openConnection:()BRCDatabaseManager serverTruth:databaseName:baseURL:initialVersion:lastCurrentVersion:error:.cold.3()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x18u);
}

+ (void)_openConnection:()BRCDatabaseManager serverTruth:databaseName:baseURL:initialVersion:lastCurrentVersion:error:.cold.4()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

+ (void)_openConnection:()BRCDatabaseManager serverTruth:databaseName:baseURL:initialVersion:lastCurrentVersion:error:.cold.5()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
}

+ (void)_validateDatabase:()BRCDatabaseManager baseURL:session:serverTruth:initialVersion:lastCurrentVersion:error:.cold.2(_DWORD *a1, void *a2)
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *a1 = 138412290;
    *a2 = v2;
    OUTLINED_FUNCTION_22(&dword_223E7A000, v6, v7, "[CRIT] Assertion failed: db_version == schema_upgrades[i].version%@");
  }
}

+ (void)_validateDatabase:()BRCDatabaseManager baseURL:session:serverTruth:initialVersion:lastCurrentVersion:error:.cold.4()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_updateDomain:()BRCDatabaseManager withUserInfo:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
}

- (void)closeDBs
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *self = 138412290;
    *a2 = v2;
    OUTLINED_FUNCTION_22(&dword_223E7A000, v6, v7, "[CRIT] Assertion failed: db.serialQueue%@");
  }
}

@end