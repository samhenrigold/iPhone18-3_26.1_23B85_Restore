@interface QLSqliteDatabase(SqliteHelpers_Internal)
@end

@implementation QLSqliteDatabase(SqliteHelpers_Internal)

- (void)_finalizeStatement:()SqliteHelpers_Internal .cold.1()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x277D85DE8]);
  LODWORD(v7) = 134217984;
  *(&v7 + 4) = v0;
  OUTLINED_FUNCTION_2_0(&dword_2615D3000, v1, v2, "finalize %p", v3, v4, v5, v6, v7, DWORD2(v7));
}

- (void)_finalizeStatement:()SqliteHelpers_Internal .cold.2(sqlite3 **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  sqlite3_errcode(v2);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_2615D3000, v4, v5, "QLSqliteDatabase: While finalizing statement, error when statement last was executed  : (%ld) %s", v6, v7, v8, v9);
}

- (void)_finalizeStatement:()SqliteHelpers_Internal .cold.3(sqlite3 **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  sqlite3_errcode(v2);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_2615D3000, v4, v5, "Database - While finalizing statement, error when statement last was executed : (%ld) %s", v6, v7, v8, v9);
}

@end