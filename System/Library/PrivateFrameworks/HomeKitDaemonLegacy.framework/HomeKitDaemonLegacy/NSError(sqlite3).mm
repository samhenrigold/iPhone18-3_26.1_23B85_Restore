@interface NSError(sqlite3)
+ (id)errorWithSQLite3Context:()sqlite3;
+ (id)errorWithSQLite3Context:()sqlite3 statement:;
+ (id)errorWithSQLite3Statement:()sqlite3;
@end

@implementation NSError(sqlite3)

+ (id)errorWithSQLite3Statement:()sqlite3
{
  v17[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277D0F1A0];
  v16[0] = @"extcode";
  v6 = MEMORY[0x277CCABB0];
  v7 = sqlite3_db_handle(a3);
  v8 = [v6 numberWithInt:sqlite3_errcode(v7)];
  v17[0] = v8;
  v16[1] = @"text";
  v9 = MEMORY[0x277CCACA8];
  v10 = sqlite3_db_handle(a3);
  v11 = [v9 stringWithUTF8String:sqlite3_errmsg(v10)];
  v17[1] = v11;
  v16[2] = @"statement";
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:sqlite3_sql(a3)];
  v17[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v14 = [v4 errorWithDomain:v5 code:3 userInfo:v13];

  return v14;
}

+ (id)errorWithSQLite3Context:()sqlite3 statement:
{
  v15[3] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277D0F1A0];
  v14[0] = @"extcode";
  v8 = [MEMORY[0x277CCABB0] numberWithInt:sqlite3_errcode(db)];
  v15[0] = v8;
  v14[1] = @"text";
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:sqlite3_errmsg(db)];
  v15[1] = v9;
  v14[2] = @"statement";
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:a4];
  v15[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v12 = [v6 errorWithDomain:v7 code:3 userInfo:v11];

  return v12;
}

+ (id)errorWithSQLite3Context:()sqlite3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277D0F1A0];
  v11[0] = @"extcode";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:sqlite3_errcode(db)];
  v11[1] = @"text";
  v12[0] = v6;
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:sqlite3_errmsg(db)];
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = [v4 errorWithDomain:v5 code:3 userInfo:v8];

  return v9;
}

@end