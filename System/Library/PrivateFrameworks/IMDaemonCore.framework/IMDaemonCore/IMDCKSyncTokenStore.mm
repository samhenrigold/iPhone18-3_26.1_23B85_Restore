@interface IMDCKSyncTokenStore
+ (id)tokenForKey:(id)key;
+ (void)migrateKey:(id)key fromDatabase:(id)database;
+ (void)persistToken:(id)token forKey:(id)key;
- (id)tokenForKey:(id)key;
- (void)migrateKey:(id)key fromDatabase:(id)database;
- (void)persistToken:(id)token forKey:(id)key;
@end

@implementation IMDCKSyncTokenStore

- (void)migrateKey:(id)key fromDatabase:(id)database
{
  databaseCopy = database;
  keyCopy = key;
  [objc_opt_class() migrateKey:keyCopy fromDatabase:databaseCopy];
}

- (id)tokenForKey:(id)key
{
  keyCopy = key;
  v4 = [objc_opt_class() tokenForKey:keyCopy];

  return v4;
}

- (void)persistToken:(id)token forKey:(id)key
{
  keyCopy = key;
  tokenCopy = token;
  [objc_opt_class() persistToken:tokenCopy forKey:keyCopy];
}

+ (void)migrateKey:(id)key fromDatabase:(id)database
{
  v22 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  databaseCopy = database;
  keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-syncStoreVersion", keyCopy];
  if (!IMGetAppIntForKey())
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v17 = keyCopy;
        v18 = 2112;
        v19 = databaseCopy;
        v20 = 2048;
        v21 = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Migrating sync token {key: %@, db: %@, version: %ld}", buf, 0x20u);
      }
    }

    v9 = objc_alloc(MEMORY[0x277D18AD0]);
    stringByExpandingTildeInPath = [databaseCopy stringByExpandingTildeInPath];
    v11 = [v9 initWithPath:stringByExpandingTildeInPath storeName:@"IMDCKChatSyncController" dataProtectionClass:0];

    v12 = [v11 dataForKey:keyCopy error:0];
    v13 = IMOSLoggingEnabled();
    if (v12)
    {
      if (v13)
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v17 = keyCopy;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Found token data, saving to sms.db {key: %@}", buf, 0xCu);
        }
      }

      IMDKVPersistValueForKey();
    }

    else if (v13)
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v17 = keyCopy;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "No token data found {key: %@}", buf, 0xCu);
      }
    }

    [v11 deleteDatabase];
    IMSetAppValueForKey();
  }
}

+ (id)tokenForKey:(id)key
{
  v13 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v4 = IMDKVValueForKey();
  if ([v4 length])
  {
    v10 = 0;
    v5 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v4 error:&v10];
    v6 = v10;
    v7 = [objc_alloc(MEMORY[0x277CBC670]) initWithCoder:v5];
    if (v6 && IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v12 = v6;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Failed to unarchive ckserver change token. Error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)persistToken:(id)token forKey:(id)key
{
  tokenCopy = token;
  if (tokenCopy)
  {
    v5 = MEMORY[0x277CCAAB0];
    keyCopy = key;
    keyCopy2 = [[v5 alloc] initRequiringSecureCoding:1];
    [tokenCopy encodeWithCoder:keyCopy2];
    encodedData = [keyCopy2 encodedData];
    IMDKVPersistValueForKey();
  }

  else
  {
    keyCopy2 = key;
    IMDKVPersistValueForKey();
  }
}

@end