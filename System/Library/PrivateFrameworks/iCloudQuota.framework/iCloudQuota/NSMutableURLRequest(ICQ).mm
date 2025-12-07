@interface NSMutableURLRequest(ICQ)
- (BOOL)icq_hasAuthHeaders;
- (id)icq_sanitizedHeadersForDynamicUI;
- (void)icq_addHeadersForUpgradeWithCompletion:()ICQ;
- (void)icq_renewAuthorizationHeadersForAccount:()ICQ store:completion:;
@end

@implementation NSMutableURLRequest(ICQ)

- (id)icq_sanitizedHeadersForDynamicUI
{
  v2 = objc_opt_new();
  allHTTPHeaderFields = [self allHTTPHeaderFields];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__NSMutableURLRequest_ICQ__icq_sanitizedHeadersForDynamicUI__block_invoke;
  v6[3] = &unk_27A652FB0;
  v4 = v2;
  v7 = v4;
  [allHTTPHeaderFields enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

- (void)icq_addHeadersForUpgradeWithCompletion:()ICQ
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v5 = getINDaemonConnectionClass_softClass_3;
  v15 = getINDaemonConnectionClass_softClass_3;
  if (!getINDaemonConnectionClass_softClass_3)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __getINDaemonConnectionClass_block_invoke_3;
    v11[3] = &unk_27A6517A8;
    v11[4] = &v12;
    __getINDaemonConnectionClass_block_invoke_3(v11);
    v5 = v13[3];
  }

  v6 = v5;
  _Block_object_dispose(&v12, 8);
  v7 = objc_alloc_init(v5);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__NSMutableURLRequest_ICQ__icq_addHeadersForUpgradeWithCompletion___block_invoke;
  v9[3] = &unk_27A652FD8;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v7 commonHeadersForRequest:self withCompletion:v9];
}

- (void)icq_renewAuthorizationHeadersForAccount:()ICQ store:completion:
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  aa_primaryAppleAccount = [v9 aa_primaryAppleAccount];
  v12 = aa_primaryAppleAccount;
  if (v8)
  {
    aa_altDSID = [aa_primaryAppleAccount aa_altDSID];
    aa_altDSID2 = [v8 aa_altDSID];

    if (aa_altDSID != aa_altDSID2)
    {
      v15 = _ICQGetLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [NSMutableURLRequest(ICQ) icq_renewAuthorizationHeadersForAccount:self store:v15 completion:?];
      }

LABEL_5:

      v10[2](v10, 0);
      goto LABEL_13;
    }
  }

  else
  {
    v16 = _ICQGetLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v16, OS_LOG_TYPE_DEFAULT, "Account not provided, skipping check", buf, 2u);
    }
  }

  if ([self icq_hasAuthHeaders])
  {
    v17 = _ICQGetLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_275572000, v17, OS_LOG_TYPE_DEFAULT, "request already has auth headers. request: %@", buf, 0xCu);
    }

    v10[2](v10, 1);
  }

  else
  {
    v15 = _ICQGetLogSystem();
    v18 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (!v12)
    {
      if (v18)
      {
        *buf = 0;
        _os_log_impl(&dword_275572000, v15, OS_LOG_TYPE_DEFAULT, "Missing auth headers and no account provided or found, unable to renew credentials.", buf, 2u);
      }

      goto LABEL_5;
    }

    if (v18)
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_275572000, v15, OS_LOG_TYPE_DEFAULT, "Missing auth header or client info header, attempting to renew credentials. request: %@", buf, 0xCu);
    }

    v19 = *MEMORY[0x277CB9098];
    v24[0] = *MEMORY[0x277CB90A0];
    v24[1] = v19;
    v25[0] = MEMORY[0x277CBEC28];
    v25[1] = MEMORY[0x277CBEC38];
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __85__NSMutableURLRequest_ICQ__icq_renewAuthorizationHeadersForAccount_store_completion___block_invoke;
    v21[3] = &unk_27A653000;
    v21[4] = self;
    v22 = v12;
    v23 = v10;
    [v9 renewCredentialsForAccount:v22 options:v20 completion:v21];
  }

LABEL_13:
}

- (BOOL)icq_hasAuthHeaders
{
  v2 = [self valueForHTTPHeaderField:@"Authorization"];
  if (v2)
  {
    v3 = [self valueForHTTPHeaderField:@"X-MMe-Client-Info"];
    v4 = v3 != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)icq_renewAuthorizationHeadersForAccount:()ICQ store:completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[NSMutableURLRequest(ICQ) icq_renewAuthorizationHeadersForAccount:store:completion:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_275572000, a2, OS_LOG_TYPE_ERROR, "%s account change detected while validating auth headers. request %@", &v2, 0x16u);
}

@end