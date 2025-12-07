@interface QLSqliteDatabase(SqliteHelpers)
- (void)beginTransaction;
- (void)endTransaction;
@end

@implementation QLSqliteDatabase(SqliteHelpers)

- (void)beginTransaction
{
  OUTLINED_FUNCTION_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_2615D3000, v0, v1, "Begin transaction error: %s (%i)", v2, v3);
}

- (void)endTransaction
{
  OUTLINED_FUNCTION_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_2615D3000, v0, v1, "End transaction error: %s (%i)", v2, v3);
}

- (void)executeWithCallback:()SqliteHelpers context:rollbackOnError:sql:arguments:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  HIWORD(v3) = v0;
  OUTLINED_FUNCTION_8(&dword_2615D3000, v0, v1, "sqlite_exec %p %s", v2, v3);
}

- (void)prepareStatement:()SqliteHelpers .cold.1()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  HIWORD(v3) = v0;
  OUTLINED_FUNCTION_8(&dword_2615D3000, v0, v1, "sqlite3_prepare %p %s", v2, v3);
}

- (void)prepareStatement:()SqliteHelpers .cold.2()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x277D85DE8]);
  LODWORD(v7) = 134217984;
  *(&v7 + 4) = v0;
  OUTLINED_FUNCTION_2_0(&dword_2615D3000, v1, v2, "prepare statement %p", v3, v4, v5, v6, v7, DWORD2(v7));
}

- (void)stepStatement:()SqliteHelpers didReturnData:.cold.1(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [v1 stringWithUTF8String:sqlite3_errstr(4)];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4(&dword_2615D3000, v4, v5, "stepStatement %p (NO) with retval %@", v6, v7, v8, v9);
}

- (void)stepStatement:()SqliteHelpers didReturnData:.cold.4(void *a1, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = a1;
  v5 = [v3 stringWithUTF8String:sqlite3_errstr(a2)];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(&dword_2615D3000, v4, OS_LOG_TYPE_ERROR, "sqliteCrappedOut about to be called for %p with retval %@", v6, 0x16u);
}

@end