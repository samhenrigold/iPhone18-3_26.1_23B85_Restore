@interface NSUUID(sqlite3)
+ (__int128)hmbUUIDWithSQLite3Column:()sqlite3 column:;
@end

@implementation NSUUID(sqlite3)

+ (__int128)hmbUUIDWithSQLite3Column:()sqlite3 column:
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = sqlite3_column_blob(a3, iCol);
  if (v6)
  {
    v7 = v6;
    if (sqlite3_column_bytes(a3, iCol) == 16)
    {
      v9 = *v7;
      v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v9];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end