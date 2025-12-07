@interface BRDSIDString(BRCPathAdditions)
+ (id)brc_dbAccountDSIDForPath:()BRCPathAdditions;
@end

@implementation BRDSIDString(BRCPathAdditions)

+ (id)brc_dbAccountDSIDForPath:()BRCPathAdditions
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CCACA8];
  v6 = [self brc_accountIDPathForAccountPath:v4];
  v15 = 0;
  v7 = [v5 stringWithContentsOfFile:v6 encoding:4 error:&v15];
  v8 = v15;

  if (v8)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, 0x90u))
    {
      *buf = 138412802;
      v17 = v4;
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      _os_log_error_impl(&dword_223E7A000, v10, 0x90u, "[ERROR] Got error reading the account DSID from '%@': %@%@", buf, 0x20u);
    }

    v7 = 0;
  }

  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v12 = [v7 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if ([v12 length])
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end