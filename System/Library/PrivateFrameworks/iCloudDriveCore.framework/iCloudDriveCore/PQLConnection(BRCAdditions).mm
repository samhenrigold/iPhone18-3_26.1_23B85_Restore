@interface PQLConnection(BRCAdditions)
- (uint64_t)br_isTableExists:()BRCAdditions;
- (uint64_t)dataWithSQL:()BRCAdditions;
- (uint64_t)itemIDWithSQL:()BRCAdditions;
- (uint64_t)numberWithSQL:()BRCAdditions;
- (uint64_t)registerFunction:()BRCAdditions nArgs:handler:error:;
- (uint64_t)stringWithSQL:()BRCAdditions;
@end

@implementation PQLConnection(BRCAdditions)

- (uint64_t)numberWithSQL:()BRCAdditions
{
  v10 = a3;
  v11 = [self fetchObjectOfClass:objc_opt_class() sql:v10 args:&a9];

  return v11;
}

- (uint64_t)stringWithSQL:()BRCAdditions
{
  v10 = a3;
  v11 = [self fetchObjectOfClass:objc_opt_class() sql:v10 args:&a9];

  return v11;
}

- (uint64_t)dataWithSQL:()BRCAdditions
{
  v10 = a3;
  v11 = [self fetchObjectOfClass:objc_opt_class() sql:v10 args:&a9];

  return v11;
}

- (uint64_t)itemIDWithSQL:()BRCAdditions
{
  v10 = a3;
  v11 = [self fetchObjectOfClass:objc_opt_class() sql:v10 args:&a9];

  return v11;
}

- (uint64_t)registerFunction:()BRCAdditions nArgs:handler:error:
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = [self registerFunction:a3 nArgs:a4 handler:a5];
  if ((v8 & 1) == 0)
  {
    lastError = [self lastError];
    if (lastError)
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, 0x90u))
      {
        v14 = "(passed to caller)";
        v15 = 136315906;
        v16 = "[PQLConnection(BRCAdditions) registerFunction:nArgs:handler:error:]";
        v17 = 2080;
        if (!a6)
        {
          v14 = "(ignored by caller)";
        }

        v18 = v14;
        v19 = 2112;
        v20 = lastError;
        v21 = 2112;
        v22 = v10;
        _os_log_error_impl(&dword_223E7A000, v11, 0x90u, "[ERROR] %s: %s error: %@%@", &v15, 0x2Au);
      }
    }

    if (a6)
    {
      v12 = lastError;
      *a6 = lastError;
    }
  }

  return v8;
}

- (uint64_t)br_isTableExists:()BRCAdditions
{
  v3 = [self numberWithSQL:{@"SELECT 1 FROM sqlite_master where type = 'table' AND name = %@", a3}];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

@end