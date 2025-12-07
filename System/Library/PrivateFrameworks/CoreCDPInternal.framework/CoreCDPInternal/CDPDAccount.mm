@interface CDPDAccount
- (BOOL)hasDisabledKeychainExplicitly;
- (BOOL)isICDPEnabledForDSID:(id)d checkWithServer:(BOOL)server;
- (BOOL)isOTEnabledForContext:(id)context;
- (CDPDAccount)initWithContext:(id)context;
- (unint64_t)recoveryContactCountForAltDSID:(id)d;
- (void)hasDisabledKeychainExplicitly;
- (void)setHasDisabledKeychainExplicitly:(BOOL)explicitly;
@end

@implementation CDPDAccount

- (CDPDAccount)initWithContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = CDPDAccount;
  v6 = [(CDPDAccount *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    v8 = v7;
  }

  return v7;
}

- (BOOL)hasDisabledKeychainExplicitly
{
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  context = [(CDPDAccount *)self context];
  altDSID = [context altDSID];
  v6 = [defaultStore aa_appleAccountWithAltDSID:altDSID];

  if (!v6)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CDPDAccount *)self hasDisabledKeychainExplicitly];
    }
  }

  v8 = [v6 accountPropertyForKey:@"userDisabledICK"];
  bOOLValue = [v8 BOOLValue];

  v10 = _CDPLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(CDPDAccount *)bOOLValue hasDisabledKeychainExplicitly];
  }

  return bOOLValue;
}

- (void)setHasDisabledKeychainExplicitly:(BOOL)explicitly
{
  explicitlyCopy = explicitly;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(CDPDAccount *)explicitlyCopy setHasDisabledKeychainExplicitly:v5];
  }

  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  context = [(CDPDAccount *)self context];
  altDSID = [context altDSID];
  v9 = [defaultStore aa_appleAccountWithAltDSID:altDSID];

  if (!v9)
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CDPDAccount setHasDisabledKeychainExplicitly:?];
    }
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:explicitlyCopy];
  [v9 setAccountProperty:v11 forKey:@"userDisabledICK"];

  defaultStore2 = [MEMORY[0x277CB8F48] defaultStore];
  v22 = 0;
  v13 = [defaultStore2 saveVerifiedAccount:v9 error:&v22];
  v14 = v22;

  if ((v13 & 1) == 0)
  {
    v15 = _CDPLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(CDPDAccount *)v14 setHasDisabledKeychainExplicitly:v15, v16, v17, v18, v19, v20, v21];
    }
  }
}

- (BOOL)isICDPEnabledForDSID:(id)d checkWithServer:(BOOL)server
{
  serverCopy = server;
  v28[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = dCopy;
  if (dCopy)
  {
    v27 = *MEMORY[0x277D430A8];
    v28[0] = dCopy;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v9 = [v8 mutableCopy];

    v10 = self->_context;
    if (!v10)
    {
      v11 = objc_alloc_init(MEMORY[0x277CCABB8]);
      v12 = [v11 numberFromString:v7];
      v10 = [MEMORY[0x277CFD4A8] contextForAccountWithDSID:v12];
    }

    v26 = 0;
    v13 = PCSIdentitySetCreate();
    if (v13)
    {
      v14 = v13;
      cf = 0;
      if (serverCopy)
      {
        IsICDPNetwork = PCSIdentitySetIsICDPNetwork();
      }

      else
      {
        IsICDPNetwork = PCSIdentitySetIsICDP();
      }

      v16 = IsICDPNetwork;
      CFRelease(v14);
    }

    else
    {
      v17 = _CDPLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(CDPDAccount *)&v26 isICDPEnabledForDSID:v17 checkWithServer:v18, v19, v20, v21, v22, v23];
      }

      v16 = 0;
    }

    if (v26)
    {
      CFRelease(v26);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)isOTEnabledForContext:(id)context
{
  v3 = MEMORY[0x277CFD498];
  contextCopy = context;
  v5 = [[v3 alloc] initWithContext:contextCopy];

  v16 = 0;
  v6 = [v5 cachedCliqueStatus:&v16];
  v7 = v16;
  if (v7)
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CDPDAccount *)v7 isOTEnabledForContext:v8, v9, v10, v11, v12, v13, v14];
    }
  }

  return v6 == 1;
}

- (unint64_t)recoveryContactCountForAltDSID:(id)d
{
  dCopy = d;
  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  v5 = [mEMORY[0x277CF0130] authKitAccountWithAltDSID:dCopy];
  if (v5)
  {
    v13 = dCopy;
    v6 = [mEMORY[0x277CF0130] custodianInfosForAccount:v5];
    if ([v6 count])
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = [v6 objectAtIndexedSubscript:v7];
        v10 = [v9 objectForKeyedSubscript:@"status"];
        v11 = [v10 isEqualToString:@"APPROVED"];

        v8 += v11;
        ++v7;
      }

      while ([v6 count] > v7);
    }

    else
    {
      v8 = 0;
    }

    dCopy = v13;
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (void)hasDisabledKeychainExplicitly
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = self & 1;
  _os_log_debug_impl(&dword_24510B000, a2, OS_LOG_TYPE_DEBUG, "User previously disabled iCK: %{BOOL}d", v2, 8u);
}

- (void)setHasDisabledKeychainExplicitly:(char)a1 .cold.1(char a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_24510B000, a2, OS_LOG_TYPE_DEBUG, "User disabled iCloud keychain: %{BOOL}d", v2, 8u);
}

- (void)setHasDisabledKeychainExplicitly:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 context];
  v2 = [v1 altDSID];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_2(&dword_24510B000, v3, v4, "setHasDisabledKeychainExplicitly: Failed to find ACAccount for altDSID: %{mask.hash}@", v5, v6, v7, v8);
}

- (void)setHasDisabledKeychainExplicitly:(uint64_t)a3 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_24510B000, a2, a3, "setHasDisabledKeychainExplicitly: Failed to set user preference for iCloud keychain disable: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)isICDPEnabledForDSID:(uint64_t)a3 checkWithServer:(uint64_t)a4 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0_0(&dword_24510B000, a2, a3, "Error calling PCSIdentitySetIsICDP: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)isICDPEnabledForDSID:(uint64_t)a3 checkWithServer:(uint64_t)a4 .cold.2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0_0(&dword_24510B000, a2, a3, "Failed to call PCSIdentitySetIsICDP: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)isOTEnabledForContext:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_24510B000, a2, a3, "CDPDAccount failed to fetch clique status with error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end