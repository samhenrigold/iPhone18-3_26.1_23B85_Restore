@interface WLSourceDeviceAccount
+ (BOOL)accountInfoArrayContainsNonSyncableAccount:(id)account;
+ (BOOL)accountInfoRepresentsSyncableAccount:(id)account;
+ (id)accountWithInfo:(id)info;
- (WLSourceDeviceAccount)initWithInfo:(id)info;
@end

@implementation WLSourceDeviceAccount

+ (id)accountWithInfo:(id)info
{
  infoCopy = info;
  v4 = [[WLSourceDeviceAccount alloc] initWithInfo:infoCopy];

  return v4;
}

- (WLSourceDeviceAccount)initWithInfo:(id)info
{
  infoCopy = info;
  v5 = [(WLSourceDeviceAccount *)self init];
  if (v5)
  {
    v6 = [infoCopy objectForKeyedSubscript:@"itemID"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

+ (BOOL)accountInfoArrayContainsNonSyncableAccount:(id)account
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  accountCopy = account;
  v4 = [accountCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(accountCopy);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) objectForKeyedSubscript:{@"itemID", v12}];
        v9 = [v8 isEqualToString:@"__local"];

        if (v9)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [accountCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

+ (BOOL)accountInfoRepresentsSyncableAccount:(id)account
{
  v3 = [account objectForKeyedSubscript:@"itemID"];
  v4 = [v3 isEqualToString:@"__all"];

  return v4;
}

@end