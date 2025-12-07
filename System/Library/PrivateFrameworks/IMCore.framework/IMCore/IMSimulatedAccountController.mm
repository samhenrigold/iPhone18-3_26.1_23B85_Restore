@interface IMSimulatedAccountController
- (IMSimulatedAccountController)init;
- (id)activeAccounts;
- (id)activeIMessageAccount;
- (id)activeSMSAccount;
@end

@implementation IMSimulatedAccountController

- (id)activeAccounts
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_simulatedAccountsPerService;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)self->_simulatedAccountsPerService objectForKey:*(*(&v11 + 1) + 8 * i), v11];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)activeIMessageAccount
{
  v2 = [(NSMutableDictionary *)self->_simulatedAccountsPerService objectForKey:*MEMORY[0x1E69A7AF0]];
  firstObject = [v2 firstObject];

  return firstObject;
}

- (id)activeSMSAccount
{
  v2 = [(NSMutableDictionary *)self->_simulatedAccountsPerService objectForKey:*MEMORY[0x1E69A7AE0]];
  firstObject = [v2 firstObject];

  return firstObject;
}

- (IMSimulatedAccountController)init
{
  v6.receiver = self;
  v6.super_class = IMSimulatedAccountController;
  v2 = [(IMAccountController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    simulatedAccountsPerService = v2->_simulatedAccountsPerService;
    v2->_simulatedAccountsPerService = v3;
  }

  return v2;
}

@end