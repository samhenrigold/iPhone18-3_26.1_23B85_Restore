@interface ACRemoteUtilities
+ (id)localAccountMatchingRemoteAccount:(id)account inAccountStore:(id)store;
@end

@implementation ACRemoteUtilities

+ (id)localAccountMatchingRemoteAccount:(id)account inAccountStore:(id)store
{
  v46 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  storeCopy = store;
  identifier = [accountCopy identifier];
  v8 = [storeCopy accountWithIdentifier:identifier];

  if (v8)
  {
    v9 = _ACLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      +[ACRemoteUtilities localAccountMatchingRemoteAccount:inAccountStore:];
    }

    v10 = v8;
    goto LABEL_33;
  }

  accountType = [accountCopy accountType];
  v12 = accountType;
  if (!accountType || ([accountType identifier], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v10 = 0;
    goto LABEL_32;
  }

  identifier2 = [v12 identifier];
  v15 = [storeCopy accountTypeWithAccountTypeIdentifier:identifier2];

  if (!v15)
  {
    v10 = 0;
    goto LABEL_31;
  }

  [storeCopy accountsWithAccountType:v15];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v44 = 0u;
  v16 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (!v16)
  {
    v10 = 0;
    goto LABEL_30;
  }

  v17 = v16;
  v37 = v15;
  v38 = storeCopy;
  v18 = *v42;
  v19 = *MEMORY[0x277CB8D58];
  while (2)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v42 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v41 + 1) + 8 * i);
      identifier3 = [v12 identifier];
      if ([identifier3 isEqualToString:v19])
      {
        v23 = [v21 objectForKeyedSubscript:@"dsid"];
        [accountCopy objectForKeyedSubscript:@"dsid"];
        v24 = v21;
        v25 = accountCopy;
        v26 = v17;
        v27 = v19;
        v28 = v18;
        v30 = v29 = v12;
        v40 = [v23 isEqual:v30];

        v12 = v29;
        v18 = v28;
        v19 = v27;
        v17 = v26;
        accountCopy = v25;
        v21 = v24;

        if (v40)
        {
          v34 = _ACLogSystem();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            +[ACRemoteUtilities localAccountMatchingRemoteAccount:inAccountStore:];
          }

LABEL_28:
          v15 = v37;

          v10 = v21;
          storeCopy = v38;
          goto LABEL_29;
        }
      }

      else
      {
      }

      username = [v21 username];
      username2 = [accountCopy username];
      v33 = [username isEqualToString:username2];

      if (v33)
      {
        v34 = _ACLogSystem();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          +[ACRemoteUtilities localAccountMatchingRemoteAccount:inAccountStore:];
        }

        goto LABEL_28;
      }
    }

    v17 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v17)
    {
      continue;
    }

    break;
  }

  v10 = 0;
  storeCopy = v38;
  v15 = v37;
LABEL_29:
  v8 = 0;
LABEL_30:

LABEL_31:
LABEL_32:

LABEL_33:

  return v10;
}

+ (void)localAccountMatchingRemoteAccount:inAccountStore:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_1();
  v3 = v0;
  _os_log_debug_impl(&dword_221D2F000, v1, OS_LOG_TYPE_DEBUG, "Remote account '%@' matched local account '%@' by identifier", v2, 0x16u);
}

+ (void)localAccountMatchingRemoteAccount:inAccountStore:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_1();
  v2 = 0;
  _os_log_debug_impl(&dword_221D2F000, v0, OS_LOG_TYPE_DEBUG, "Remote account '%@' matched local account '%@' by accountType and username", v1, 0x16u);
}

+ (void)localAccountMatchingRemoteAccount:inAccountStore:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_1();
  v2 = 0;
  _os_log_debug_impl(&dword_221D2F000, v0, OS_LOG_TYPE_DEBUG, "Remote account '%@' matched local iTunes account '%@' dsid", v1, 0x16u);
}

@end