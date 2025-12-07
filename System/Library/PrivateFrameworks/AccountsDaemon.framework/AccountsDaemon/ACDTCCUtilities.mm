@interface ACDTCCUtilities
+ (BOOL)clearAllTCCStatesForAccountTypeID:(id)d;
+ (BOOL)clearTCCStateForClient:(id)client accountTypeID:(id)d;
+ (BOOL)setTCCStateForClient:(id)client accountTypeID:(id)d toGranted:(BOOL)granted;
+ (__CFString)_TCCServiceForAccountTypeID:(id)d;
+ (id)allTCCStatesForAccountTypeID:(id)d;
+ (int)TCCStateForClient:(id)client accountTypeID:(id)d;
@end

@implementation ACDTCCUtilities

+ (int)TCCStateForClient:(id)client accountTypeID:(id)d
{
  v25 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  dCopy = d;
  if ([self _TCCServiceForAccountTypeID:dCopy])
  {
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = TCCAccessCopyInformation();
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v19 = dCopy;
      v10 = *v21;
      v11 = MEMORY[0x277D6C0C8];
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [v13 objectForKeyedSubscript:*v11];

          if (v14)
          {
            v15 = CFBundleGetIdentifier(v14);
            bundleID = [clientCopy bundleID];
            v17 = [v15 isEqualToString:bundleID];

            if (v17)
            {
              v9 = [v13 objectForKeyedSubscript:*MEMORY[0x277D6C0D0]];

              if (v9)
              {
                if (CFBooleanGetValue(v9))
                {
                  LODWORD(v9) = 1;
                }

                else
                {
                  LODWORD(v9) = 2;
                }
              }

              dCopy = v19;

              goto LABEL_21;
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      dCopy = v19;
    }

LABEL_21:
  }

  else
  {
    v8 = _ACDLogSystem(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[ACDTCCUtilities TCCStateForClient:accountTypeID:];
    }

    LODWORD(v9) = 0;
  }

  return v9;
}

+ (BOOL)setTCCStateForClient:(id)client accountTypeID:(id)d toGranted:(BOOL)granted
{
  clientCopy = client;
  dCopy = d;
  if (![self _TCCServiceForAccountTypeID:dCopy])
  {
    v13 = _ACDLogSystem(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[ACDTCCUtilities setTCCStateForClient:accountTypeID:toGranted:];
    }

    goto LABEL_10;
  }

  if (![clientCopy bundle])
  {
    v13 = _ACDLogSystem(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[ACDTCCUtilities setTCCStateForClient:accountTypeID:toGranted:];
    }

LABEL_10:

    v12 = 0;
    goto LABEL_11;
  }

  v9 = TCCAccessSetForBundle();
  v10 = v9;
  v11 = _ACDLogSystem(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ACDTCCUtilities setTCCStateForClient:v10 accountTypeID:v11 toGranted:?];
  }

  v12 = v10 != 0;
LABEL_11:

  return v12;
}

+ (BOOL)clearTCCStateForClient:(id)client accountTypeID:(id)d
{
  clientCopy = client;
  dCopy = d;
  if (![self _TCCServiceForAccountTypeID:dCopy])
  {
    v9 = _ACDLogSystem(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[ACDTCCUtilities clearTCCStateForClient:accountTypeID:];
    }

    goto LABEL_8;
  }

  if (![clientCopy bundle])
  {
    v9 = _ACDLogSystem(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[ACDTCCUtilities clearTCCStateForClient:accountTypeID:];
    }

LABEL_8:

    v8 = 0;
    goto LABEL_9;
  }

  [self _TCCServiceForAccountTypeID:dCopy];
  [clientCopy bundle];
  v8 = TCCAccessResetForBundle() != 0;
LABEL_9:

  return v8;
}

+ (id)allTCCStatesForAccountTypeID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([self _TCCServiceForAccountTypeID:dCopy])
  {
    v5 = TCCAccessCopyInformation();
    if (v5)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v21 = v5;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v23;
        v11 = MEMORY[0x277D6C0C8];
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v23 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v22 + 1) + 8 * i);
            v14 = [v13 objectForKeyedSubscript:{*v11, v21}];

            if (v14)
            {
              v15 = CFBundleGetIdentifier(v14);
              v16 = [v13 objectForKeyedSubscript:*MEMORY[0x277D6C0D0]];

              v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:CFBooleanGetValue(v16)];
              [v6 setObject:v17 forKey:v15];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v9);
      }

      v5 = v21;
    }

    else
    {
      v6 = 0;
    }

    v18 = v6;

    v19 = v18;
  }

  else
  {
    v18 = _ACDLogSystem(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[ACDTCCUtilities TCCStateForClient:accountTypeID:];
    }

    v19 = 0;
  }

  return v19;
}

+ (BOOL)clearAllTCCStatesForAccountTypeID:(id)d
{
  dCopy = d;
  if ([self _TCCServiceForAccountTypeID:dCopy])
  {
    v5 = TCCAccessReset() != 0;
  }

  else
  {
    v6 = _ACDLogSystem(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[ACDTCCUtilities TCCStateForClient:accountTypeID:];
    }

    v5 = 0;
  }

  return v5;
}

+ (__CFString)_TCCServiceForAccountTypeID:(id)d
{
  dCopy = d;
  if ([dCopy isEqualToString:*MEMORY[0x277CB8C18]])
  {
    v4 = MEMORY[0x277D6C170];
LABEL_7:
    v5 = *v4;
    goto LABEL_8;
  }

  if ([dCopy isEqualToString:*MEMORY[0x277CB8D28]])
  {
    v4 = MEMORY[0x277D6C228];
    goto LABEL_7;
  }

  if ([dCopy isEqualToString:*MEMORY[0x277CB8D00]])
  {
    v4 = MEMORY[0x277D6C208];
    goto LABEL_7;
  }

  if ([dCopy isEqualToString:*MEMORY[0x277CB8D18]])
  {
    v5 = *MEMORY[0x277D6C220];
  }

  else
  {
    v5 = 0;
  }

LABEL_8:

  return v5;
}

+ (void)setTCCStateForClient:(unsigned __int8)a1 accountTypeID:(NSObject *)a2 toGranted:.cold.1(unsigned __int8 a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a1];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_221D2F000, a2, OS_LOG_TYPE_DEBUG, "Setting TCC access bit returned: %@", v4, 0xCu);
}

+ (void)setTCCStateForClient:accountTypeID:toGranted:.cold.3()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_221D2F000, v1, OS_LOG_TYPE_ERROR, "%@ is requesting access to a private account type: %@", v2, 0x16u);
}

@end