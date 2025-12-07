@interface SOAsynchronousLDAPOperation
- (SOAsynchronousLDAPOperation)initWithRealm:(id)realm andHost:(id)host andPort:(unsigned __int16)port andBundleIdentifier:(id)identifier andRequireTLSForLDAP:(BOOL)p andCompletion:(id)completion;
- (void)main;
@end

@implementation SOAsynchronousLDAPOperation

- (SOAsynchronousLDAPOperation)initWithRealm:(id)realm andHost:(id)host andPort:(unsigned __int16)port andBundleIdentifier:(id)identifier andRequireTLSForLDAP:(BOOL)p andCompletion:(id)completion
{
  pCopy = p;
  portCopy = port;
  realmCopy = realm;
  hostCopy = host;
  identifierCopy = identifier;
  completionCopy = completion;
  v21.receiver = self;
  v21.super_class = SOAsynchronousLDAPOperation;
  v18 = [(SOAsynchronousOperation *)&v21 init];
  v19 = v18;
  if (v18)
  {
    [(SOAsynchronousLDAPOperation *)v18 setRealm:realmCopy];
    [(SOAsynchronousLDAPOperation *)v19 setHost:hostCopy];
    [(SOAsynchronousLDAPOperation *)v19 setPort:portCopy];
    [(SOAsynchronousLDAPOperation *)v19 setCompletion:completionCopy];
    [(SOAsynchronousLDAPOperation *)v19 setBundleIdentifier:identifierCopy];
    [(SOAsynchronousLDAPOperation *)v19 setRequireTLSForLDAP:pCopy];
  }

  return v19;
}

- (void)main
{
  host = [self host];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __35__SOAsynchronousLDAPOperation_main__block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = SO_LOG_SOAsynchronousLDAPOperation(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (a2)
  {
    if (v7)
    {
      __35__SOAsynchronousLDAPOperation_main__block_invoke_cold_2(a1);
    }

    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __35__SOAsynchronousLDAPOperation_main__block_invoke_8;
    v13[3] = &unk_278C93040;
    v10 = v8;
    v11 = *(a1 + 32);
    v14 = v10;
    v15 = v11;
    [v10 queryforBaseDN:&stru_285206D08 andScope:0 andAttributes:&unk_28520B928 withFilter:v9 completion:v13];
  }

  else
  {
    if (v7)
    {
      __35__SOAsynchronousLDAPOperation_main__block_invoke_cold_1(a1);
    }

    v12 = [*(a1 + 32) completion];
    v12[2](v12, 0, 0);

    [*(a1 + 40) disconnect];
    [*(a1 + 32) finish];
  }
}

void __35__SOAsynchronousLDAPOperation_main__block_invoke_8(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) disconnect];
  if (a2)
  {
    v10 = [v8 objectForKeyedSubscript:@"netlogon"];
    v11 = [v10 firstObject];
    v12 = [v11 base64EncodedStringWithOptions:32];
    v13 = SO_LOG_SOAsynchronousLDAPOperation(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __35__SOAsynchronousLDAPOperation_main__block_invoke_8_cold_2();
    }

    v14 = [SONetLogonParser parseNetLoginUsingData:v11];
    v15 = [MEMORY[0x277CCABB0] numberWithShort:8];
    v16 = [v14 objectForKeyedSubscript:v15];

    v18 = SO_LOG_SOAsynchronousLDAPOperation(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      __35__SOAsynchronousLDAPOperation_main__block_invoke_8_cold_3();
    }

    v19 = [*(a1 + 40) completion];
    (v19)[2](v19, 1, v16);
  }

  else
  {
    v20 = SO_LOG_SOAsynchronousLDAPOperation(v9);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      __35__SOAsynchronousLDAPOperation_main__block_invoke_8_cold_1(a1);
    }

    v10 = [*(a1 + 40) completion];
    v10[2](v10, 0, 0);
  }

  [*(a1 + 40) finish];
}

void __35__SOAsynchronousLDAPOperation_main__block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) host];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __35__SOAsynchronousLDAPOperation_main__block_invoke_cold_2(uint64_t a1)
{
  v1 = [*(a1 + 32) host];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __35__SOAsynchronousLDAPOperation_main__block_invoke_8_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) host];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __35__SOAsynchronousLDAPOperation_main__block_invoke_8_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_24006C000, v0, OS_LOG_TYPE_DEBUG, "response from ldap: %{public}@", v1, 0xCu);
}

void __35__SOAsynchronousLDAPOperation_main__block_invoke_8_cold_3()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_24006C000, v0, OS_LOG_TYPE_DEBUG, "netlogon response: %{public}@", v1, 0xCu);
}

@end