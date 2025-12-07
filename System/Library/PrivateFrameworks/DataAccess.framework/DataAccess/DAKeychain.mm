@interface DAKeychain
+ (id)sharedKeychain;
- (BOOL)canAccessCredentialsWithAccessibility:(int)accessibility;
- (BOOL)removePasswordForAccount:(id)account withPersistentUUID:(id)d;
- (BOOL)saveKeychainInformationsForURL:(id)l andPassword:(id)password withAccessibility:(int)accessibility;
- (BOOL)setPassword:(id)password forAccount:(id)account withPersistentUUID:(id)d withAccessibility:(int)accessibility;
- (__CFDictionary)_DACopyMutableAttributesForAccountWithPersistentUUID:(id)d accessibility:(int)accessibility;
- (__CFDictionary)_DACopyMutableQueryForAccountWithPersistentUUID:(id)d;
- (id)guessPasswordForURL:(id)l;
- (id)loadKeychainInformationsForURL:(id)l;
- (id)passwordForAccountWithPersistentUUID:(id)d expectedAccessibility:(int)accessibility shouldSetAccessibility:(BOOL)setAccessibility passwordExpected:(BOOL)expected;
- (int)_daKeychainAccessibilityForSecAccessibility:(void *)accessibility;
- (void)_secAccessibilityForDAKeychainAccessibility:(int)accessibility;
- (void)migratePasswordForAccount:(id)account;
- (void)removeKeychainInformationsForURL:(id)l;
- (void)removePersistentCredentials;
@end

@implementation DAKeychain

+ (id)sharedKeychain
{
  v2 = _sharedDAKeychain;
  if (!_sharedDAKeychain)
  {
    v3 = objc_opt_new();
    v4 = _sharedDAKeychain;
    _sharedDAKeychain = v3;

    v2 = _sharedDAKeychain;
  }

  return v2;
}

- (BOOL)canAccessCredentialsWithAccessibility:(int)accessibility
{
  if (accessibility == 1)
  {
    return MKBGetDeviceLockState() != 0;
  }

  if (accessibility == 2)
  {
    return MKBDeviceUnlockedSinceBoot() == 1;
  }

  return 1;
}

- (void)_secAccessibilityForDAKeychainAccessibility:(int)accessibility
{
  switch(accessibility)
  {
    case 3:
      v3 = MEMORY[0x277CDBEF0];
      return *v3;
    case 2:
      v3 = MEMORY[0x277CDBEE0];
      return *v3;
    case 1:
      v3 = MEMORY[0x277CDBF10];
      return *v3;
  }

  return 0;
}

- (int)_daKeychainAccessibilityForSecAccessibility:(void *)accessibility
{
  if (!accessibility)
  {
    return 2;
  }

  if (CFEqual(accessibility, *MEMORY[0x277CDBEF0]))
  {
    return 3;
  }

  if (!CFEqual(accessibility, *MEMORY[0x277CDBEE0]) && CFEqual(accessibility, *MEMORY[0x277CDBF10]))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (__CFDictionary)_DACopyMutableQueryForAccountWithPersistentUUID:(id)d
{
  dCopy = d;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = *MEMORY[0x277CDBF20];
  v6 = [@"DataAccess-" stringByAppendingString:dCopy];

  CFDictionaryAddValue(Mutable, v5, v6);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC248]);
  return Mutable;
}

- (__CFDictionary)_DACopyMutableAttributesForAccountWithPersistentUUID:(id)d accessibility:(int)accessibility
{
  v4 = *&accessibility;
  v6 = [(DAKeychain *)self _DACopyMutableQueryForAccountWithPersistentUUID:d];
  CFDictionarySetValue(v6, *MEMORY[0x277CDBED8], [(DAKeychain *)self _secAccessibilityForDAKeychainAccessibility:v4]);
  return v6;
}

- (id)passwordForAccountWithPersistentUUID:(id)d expectedAccessibility:(int)accessibility shouldSetAccessibility:(BOOL)setAccessibility passwordExpected:(BOOL)expected
{
  expectedCopy = expected;
  setAccessibilityCopy = setAccessibility;
  v8 = *&accessibility;
  v41 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v11 = DALoggingwithCategory();
  v12 = MEMORY[0x277D03988];
  v13 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v11, v13))
  {
    *buf = 138412290;
    v38 = dCopy;
    _os_log_impl(&dword_24844D000, v11, v13, "Loading password for %@", buf, 0xCu);
  }

  if (([dCopy isEqualToString:@"unit-test"] & 1) != 0 || !objc_msgSend(dCopy, "length"))
  {
    v22 = 0;
  }

  else
  {
    v14 = [(DAKeychain *)self _DACopyMutableQueryForAccountWithPersistentUUID:dCopy];
    v15 = *MEMORY[0x277CBED28];
    CFDictionaryAddValue(v14, *MEMORY[0x277CDC558], *MEMORY[0x277CBED28]);
    CFDictionaryAddValue(v14, *MEMORY[0x277CDC550], v15);
    result = 0;
    v16 = SecItemCopyMatching(v14, &result);
    if (v16)
    {
      v17 = v16;
      v18 = DALoggingwithCategory();
      v19 = v18;
      v20 = 6;
      if (expectedCopy)
      {
        v20 = 4;
      }

      v21 = *(v12 + v20);
      if (os_log_type_enabled(v18, v21))
      {
        *buf = 138412546;
        v38 = dCopy;
        v39 = 1024;
        v40 = v17;
        _os_log_impl(&dword_24844D000, v19, v21, "Could not find a password in the keychain for %@, error %d", buf, 0x12u);
      }

      v22 = 0;
      v23 = 0;
    }

    else
    {
      v23 = result;
      key = *MEMORY[0x277CDC5E8];
      v19 = [result objectForKeyedSubscript:?];
      v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v19 encoding:4];
      v34 = *MEMORY[0x277CDBED8];
      v25 = [v23 objectForKeyedSubscript:?];
      v26 = [(DAKeychain *)self _daKeychainAccessibilityForSecAccessibility:v25];

      if (v26 != v8 && setAccessibilityCopy)
      {
        v27 = DALoggingwithCategory();
        v28 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v27, v28))
        {
          *buf = 138412546;
          v38 = dCopy;
          v39 = 1024;
          v40 = v8;
          _os_log_impl(&dword_24844D000, v27, v28, "Securing ur sekretz: moving credential for account %@ to accessibility %d", buf, 0x12u);
        }

        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFDictionarySetValue(Mutable, key, v19);
        CFDictionarySetValue(Mutable, v34, [(DAKeychain *)self _secAccessibilityForDAKeychainAccessibility:v8]);
        v30 = [(DAKeychain *)self _DACopyMutableAttributesForAccountWithPersistentUUID:dCopy accessibility:v26];
        v31 = SecItemUpdate(v30, Mutable);
        CFRelease(v30);
        if (v31)
        {
          v32 = DALoggingwithCategory();
          v33 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v32, v33))
          {
            *buf = 67109120;
            LODWORD(v38) = v31;
            _os_log_impl(&dword_24844D000, v32, v33, "Couldn't change password accessibility, error %d", buf, 8u);
          }
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  return v22;
}

- (void)removePersistentCredentials
{
  mEMORY[0x277CBAB88] = [MEMORY[0x277CBAB88] sharedCredentialStorage];
  allCredentials = [mEMORY[0x277CBAB88] allCredentials];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__DAKeychain_removePersistentCredentials__block_invoke;
  v5[3] = &unk_278F13510;
  v6 = mEMORY[0x277CBAB88];
  v4 = mEMORY[0x277CBAB88];
  [allCredentials enumerateKeysAndObjectsUsingBlock:v5];
}

void __41__DAKeychain_removePersistentCredentials__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 allValues];
  v7 = [v6 copy];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v19;
    v13 = *(MEMORY[0x277D03988] + 6);
    *&v10 = 138412290;
    v17 = v10;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        if (([v5 isProxy] & 1) == 0 && objc_msgSend(v15, "persistence") == 1)
        {
          v16 = DALoggingwithCategory();
          if (os_log_type_enabled(v16, v13))
          {
            *buf = v17;
            v23 = v15;
            _os_log_impl(&dword_24844D000, v16, v13, "Removing credential %@", buf, 0xCu);
          }

          [*(a1 + 32) removeCredential:v15 forProtectionSpace:v5];
        }

        ++v14;
      }

      while (v11 != v14);
      v11 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v11);
  }
}

- (BOOL)setPassword:(id)password forAccount:(id)account withPersistentUUID:(id)d withAccessibility:(int)accessibility
{
  v6 = *&accessibility;
  *&v30[5] = *MEMORY[0x277D85DE8];
  passwordCopy = password;
  accountCopy = account;
  dCopy = d;
  if ([passwordCopy length])
  {
    v13 = DALoggingwithCategory();
    v14 = MEMORY[0x277D03988];
    v15 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v13, v15))
    {
      *buf = 138412290;
      *v30 = dCopy;
      _os_log_impl(&dword_24844D000, v13, v15, "Setting password for account with UUID %@", buf, 0xCu);
    }

    v16 = [(DAKeychain *)self _DACopyMutableAttributesForAccountWithPersistentUUID:dCopy accessibility:v6];
    v17 = *MEMORY[0x277CDC5E8];
    CFDictionarySetValue(v16, *MEMORY[0x277CDC5E8], [passwordCopy dataUsingEncoding:4]);
    result = 0;
    v18 = SecItemAdd(v16, &result);
    if (v18 == -25299)
    {
      Mutable = CFDictionaryCreateMutable(0, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      Value = CFDictionaryGetValue(v16, v17);
      CFDictionaryAddValue(Mutable, v17, Value);
      v21 = *MEMORY[0x277CDBED8];
      v22 = CFDictionaryGetValue(v16, *MEMORY[0x277CDBED8]);
      CFDictionaryAddValue(Mutable, v21, v22);
      v18 = SecItemUpdate(v16, Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    if (result)
    {
      CFRelease(result);
      result = 0;
    }

    if (v16)
    {
      CFRelease(v16);
    }

    v23 = v18 == 0;
    if (v18)
    {
      v24 = DALoggingwithCategory();
      v25 = *(v14 + 3);
      if (os_log_type_enabled(v24, v25))
      {
        *buf = 67109378;
        v30[0] = v18;
        LOWORD(v30[1]) = 2112;
        *(&v30[1] + 2) = dCopy;
        _os_log_impl(&dword_24844D000, v24, v25, "Error %d, Can't update password for account %@", buf, 0x12u);
      }
    }

    else
    {
      [(DAKeychain *)self removePersistentCredentials];
    }
  }

  else
  {
    persistentUUID = [accountCopy persistentUUID];
    v23 = [(DAKeychain *)self removePasswordForAccount:accountCopy withPersistentUUID:persistentUUID];
  }

  return v23;
}

- (BOOL)removePasswordForAccount:(id)account withPersistentUUID:(id)d
{
  *&v17[5] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = [(DAKeychain *)self _DACopyMutableQueryForAccountWithPersistentUUID:dCopy];
  v7 = DALoggingwithCategory();
  v8 = MEMORY[0x277D03988];
  v9 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v7, v9))
  {
    v16 = 138412290;
    *v17 = dCopy;
    _os_log_impl(&dword_24844D000, v7, v9, "Removing password for account with UUID %@", &v16, 0xCu);
  }

  v10 = SecItemDelete(v6);
  if (v10 != -25300 && (v11 = v10) != 0)
  {
    v14 = DALoggingwithCategory();
    v15 = *(v8 + 3);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = 67109378;
      v17[0] = v11;
      LOWORD(v17[1]) = 2112;
      *(&v17[1] + 2) = dCopy;
      _os_log_impl(&dword_24844D000, v14, v15, "Error %d, Couldn't delete password from keychain for account %@", &v16, 0x12u);
    }

    v12 = 0;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    [(DAKeychain *)self removePersistentCredentials];
    v12 = 1;
    if (v6)
    {
LABEL_6:
      CFRelease(v6);
    }
  }

  return v12;
}

- (void)migratePasswordForAccount:(id)account
{
  v49 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v4 = [accountCopy objectForKeyedSubscript:?];
  v5 = [(DAKeychain *)self passwordForAccountWithPersistentUUID:v4 expectedAccessibility:3 shouldSetAccessibility:0 passwordExpected:0];

  if (![v5 length])
  {
    persistentUUID = [accountCopy persistentUUID];
    v7 = [(DAKeychain *)self passwordForAccountWithPersistentUUID:persistentUUID expectedAccessibility:3 shouldSetAccessibility:0 passwordExpected:0];

    v5 = v7;
  }

  v8 = [accountCopy objectForKeyedSubscript:?];

  if (v8)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v9 = [accountCopy objectForKeyedSubscript:@"DAOldKeychainURLs"];
    v10 = [v9 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v10)
    {
      v11 = *v41;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v41 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = [MEMORY[0x277CBEBC0] URLWithString:*(*(&v40 + 1) + 8 * i)];
          if (!v5)
          {
            v14 = +[DAKeychain sharedKeychain];
            v5 = [v14 guessPasswordForURL:v13];
          }

          v15 = +[DAKeychain sharedKeychain];
          [v15 removeKeychainInformationsForURL:v13];
        }

        v10 = [v9 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v10);
    }
  }

  if (v5)
  {
    v16 = [objc_alloc(MEMORY[0x277CB8F38]) initWithPassword:v5];
    backingAccountInfo = [accountCopy backingAccountInfo];
    [backingAccountInfo setCredential:v16];

    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v18 = dispatch_semaphore_create(0);
    v19 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = v16;
      backingAccountInfo2 = [accountCopy backingAccountInfo];
      identifier = [backingAccountInfo2 identifier];
      backingAccountInfo3 = [accountCopy backingAccountInfo];
      username = [backingAccountInfo3 username];
      *buf = 138412546;
      v45 = identifier;
      v46 = 2112;
      v47 = username;
      _os_log_impl(&dword_24844D000, v19, v20, "During Migration, password present. Setting _backingAccountInfo.authenticated = YES for Account identifier %@ and username %@", buf, 0x16u);

      v16 = v21;
    }

    backingAccountInfo4 = [accountCopy backingAccountInfo];
    [backingAccountInfo4 setAuthenticated:1];

    v27 = sharedDAAccountStore([accountCopy setObject:0 forKeyedSubscript:@"DAOldKeychainURLs"]);
    backingAccountInfo5 = [accountCopy backingAccountInfo];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __40__DAKeychain_migratePasswordForAccount___block_invoke;
    v33[3] = &unk_278F13538;
    v35 = &v36;
    v29 = v18;
    v34 = v29;
    [v27 saveVerifiedAccount:backingAccountInfo5 withCompletionHandler:v33];

    dispatch_semaphore_wait(v29, 0xFFFFFFFFFFFFFFFFLL);
    if (*(v37 + 24) == 1)
    {
      v30 = [accountCopy objectForKeyedSubscript:@"DAAccountPersistentUUID"];
      [(DAKeychain *)self removePasswordForAccount:accountCopy withPersistentUUID:v30];

      persistentUUID2 = [accountCopy persistentUUID];
      [(DAKeychain *)self removePasswordForAccount:accountCopy withPersistentUUID:persistentUUID2];
    }

    _Block_object_dispose(&v36, 8);
  }
}

- (BOOL)saveKeychainInformationsForURL:(id)l andPassword:(id)password withAccessibility:(int)accessibility
{
  v5 = *&accessibility;
  v50 = *MEMORY[0x277D85DE8];
  lCopy = l;
  passwordCopy = password;
  v10 = DALoggingwithCategory();
  v11 = MEMORY[0x277D03988];
  v12 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v10, v12))
  {
    *buf = 138412290;
    *v45 = lCopy;
    _os_log_impl(&dword_24844D000, v10, v12, "Saving password for %@", buf, 0xCu);
  }

  user = [lCopy user];
  host = [lCopy host];
  scheme = [lCopy scheme];
  if (passwordCopy && ([passwordCopy isEqualToString:&stru_285AA6518] & 1) == 0 && user && (objc_msgSend(user, "isEqualToString:", &stru_285AA6518) & 1) == 0 && host && (objc_msgSend(host, "isEqualToString:", &stru_285AA6518) & 1) == 0 && scheme && !objc_msgSend(scheme, "isEqualToString:", &stru_285AA6518))
  {
    if ([user isEqualToString:@"unit-test"])
    {
      v24 = 0;
      goto LABEL_29;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if ([scheme isEqualToString:@"ftp"])
    {
      v28 = MEMORY[0x277CDC0B0];
    }

    else
    {
      if (![scheme isEqualToString:@"http"])
      {
        if ([scheme isEqualToString:@"https"])
        {
          v29 = *MEMORY[0x277CDC0C0];
        }

        else
        {
          v29 = 0;
        }

        goto LABEL_40;
      }

      v28 = MEMORY[0x277CDC0B8];
    }

    v29 = *v28;
LABEL_40:
    v30 = [(DAKeychain *)self _secAccessibilityForDAKeychainAccessibility:v5];
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], user);
    v31 = *MEMORY[0x277CDC228];
    theDict = Mutable;
    if (v29)
    {
      CFDictionaryAddValue(Mutable, v31, *MEMORY[0x277CDC248]);
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC118], host);
      port = [lCopy port];

      v33 = *MEMORY[0x277CDC0A0];
      if (port)
      {
        port2 = [lCopy port];
      }

      else
      {
        port2 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277CBEBC0], "da_classicPortForScheme:", scheme)}];
      }

      Mutable = theDict;
      CFDictionaryAddValue(theDict, v33, port2);
      CFDictionaryAddValue(theDict, *MEMORY[0x277CDC0A8], v29);
      CFDictionaryAddValue(theDict, *MEMORY[0x277CDC098], [lCopy uri]);
      CFDictionaryAddValue(theDict, *MEMORY[0x277CDBF38], *MEMORY[0x277CDBF40]);
    }

    else
    {
      CFDictionaryAddValue(Mutable, v31, *MEMORY[0x277CDC238]);
      v35 = *MEMORY[0x277CDC120];
      uRLWithoutUsername = [lCopy URLWithoutUsername];
      CFDictionaryAddValue(Mutable, v35, [uRLWithoutUsername absoluteString]);
    }

    if (v30)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBED8], v30);
    }

    v16 = [passwordCopy dataUsingEncoding:4];
    v37 = _setPasswordInKeychain(Mutable, v16);
    v24 = v37 == 0;
    if (v37)
    {
      v38 = v37;
      v39 = DALoggingwithCategory();
      v40 = *(v11 + 3);
      if (os_log_type_enabled(v39, v40))
      {
        *buf = 67109378;
        *v45 = v38;
        *&v45[4] = 2112;
        *&v45[6] = theDict;
        _os_log_impl(&dword_24844D000, v39, v40, "Error %d while trying to add a password: %@", buf, 0x12u);
      }
    }

    if (theDict)
    {
      CFRelease(theDict);
    }

    goto LABEL_28;
  }

  v16 = DALoggingwithCategory();
  v17 = *(v11 + 3);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = @"Password ";
    v42 = lCopy;
    if (passwordCopy && ![passwordCopy isEqualToString:&stru_285AA6518])
    {
      v18 = &stru_285AA6518;
    }

    v19 = @"Login ";
    v20 = scheme;
    v43 = passwordCopy;
    if (user && ![user isEqualToString:&stru_285AA6518])
    {
      v19 = &stru_285AA6518;
    }

    v21 = user;
    v22 = @"Host ";
    if (host)
    {
      v23 = host;
      if (![host isEqualToString:&stru_285AA6518])
      {
        v22 = &stru_285AA6518;
      }
    }

    else
    {
      v23 = 0;
    }

    v25 = @"Scheme ";
    if (v20 && ![v20 isEqualToString:&stru_285AA6518])
    {
      v25 = &stru_285AA6518;
    }

    *buf = 138413058;
    *v45 = v18;
    *&v45[8] = 2112;
    *&v45[10] = v19;
    v46 = 2112;
    v47 = v22;
    v48 = 2112;
    v49 = v25;
    _os_log_impl(&dword_24844D000, v16, v17, "Refusing to save password in keychain because one or more of the necessary fields are null: %@%@%@%@", buf, 0x2Au);
    v24 = 0;
    host = v23;
    user = v21;
    scheme = v20;
    lCopy = v42;
    passwordCopy = v43;
  }

  else
  {
    v24 = 0;
  }

LABEL_28:

LABEL_29:
  return v24;
}

- (id)loadKeychainInformationsForURL:(id)l
{
  v36 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v4 = DALoggingwithCategory();
  v5 = MEMORY[0x277D03988];
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v4, v6))
  {
    *buf = 138412290;
    v31 = lCopy;
    _os_log_impl(&dword_24844D000, v4, v6, "Loading password for %@", buf, 0xCu);
  }

  user = [(__CFString *)lCopy user];
  host = [(__CFString *)lCopy host];
  scheme = [(__CFString *)lCopy scheme];
  if (!user || ([user isEqualToString:&stru_285AA6518] & 1) != 0 || !host || (objc_msgSend(host, "isEqualToString:", &stru_285AA6518) & 1) != 0 || !scheme || objc_msgSend(scheme, "isEqualToString:", &stru_285AA6518))
  {
    v10 = DALoggingwithCategory();
    v11 = *(v5 + 3);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = @"Login ";
      if (user && ![user isEqualToString:&stru_285AA6518])
      {
        v12 = &stru_285AA6518;
      }

      v13 = @"Host ";
      if (host && ![host isEqualToString:&stru_285AA6518])
      {
        v13 = &stru_285AA6518;
      }

      v14 = @"Scheme ";
      if (scheme && ![scheme isEqualToString:&stru_285AA6518])
      {
        v14 = &stru_285AA6518;
      }

      *buf = 138412802;
      v31 = v12;
      v32 = 2112;
      v33 = v13;
      v34 = 2112;
      v35 = v14;
      _os_log_impl(&dword_24844D000, v10, v11, "Refusing to retrieve password from keychain because one or more of the necessary fields are null: %@%@%@", buf, 0x20u);
    }

    goto LABEL_21;
  }

  if ([user isEqualToString:@"unit-test"])
  {
LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

  result = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if ([scheme isEqualToString:@"ftp"])
  {
    v18 = MEMORY[0x277CDC0B0];
  }

  else
  {
    if (![scheme isEqualToString:@"http"])
    {
      if ([scheme isEqualToString:@"https"])
      {
        v19 = *MEMORY[0x277CDC0C0];
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_34;
    }

    v18 = MEMORY[0x277CDC0B8];
  }

  v19 = *v18;
LABEL_34:
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], user);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC558], *MEMORY[0x277CBED28]);
  v20 = *MEMORY[0x277CDC228];
  if (v19)
  {
    CFDictionaryAddValue(Mutable, v20, *MEMORY[0x277CDC248]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC0A8], v19);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC118], host);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF38], *MEMORY[0x277CDBF40]);
    port = [(__CFString *)lCopy port];

    v22 = *MEMORY[0x277CDC0A0];
    if (port)
    {
      port2 = [(__CFString *)lCopy port];
    }

    else
    {
      port2 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277CBEBC0], "da_classicPortForScheme:", scheme)}];
    }

    CFDictionaryAddValue(Mutable, v22, port2);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC098], [(__CFString *)lCopy uri]);
  }

  else
  {
    CFDictionaryAddValue(Mutable, v20, *MEMORY[0x277CDC238]);
    v24 = *MEMORY[0x277CDC120];
    uRLWithoutUsername = [(__CFString *)lCopy URLWithoutUsername];
    CFDictionaryAddValue(Mutable, v24, [uRLWithoutUsername absoluteString]);
  }

  if (SecItemCopyMatching(Mutable, &result))
  {
    v26 = DALoggingwithCategory();
    v27 = *(v5 + 6);
    if (os_log_type_enabled(v26, v27))
    {
      *buf = 138412290;
      v31 = lCopy;
      _os_log_impl(&dword_24844D000, v26, v27, "Could not find a password in the keychain for %@", buf, 0xCu);
    }

    v15 = 0;
  }

  else
  {
    v28 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = [v28 initWithData:result encoding:4];
  }

  if (result)
  {
    CFRelease(result);
    result = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_22:

  return v15;
}

- (void)removeKeychainInformationsForURL:(id)l
{
  v32 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v4 = DALoggingwithCategory();
  v5 = MEMORY[0x277D03988];
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v4, v6))
  {
    v28 = 138412290;
    *v29 = lCopy;
    _os_log_impl(&dword_24844D000, v4, v6, "Removing password for %@", &v28, 0xCu);
  }

  user = [lCopy user];
  host = [lCopy host];
  scheme = [lCopy scheme];
  if (!user || ([user isEqualToString:&stru_285AA6518] & 1) != 0 || !host || (objc_msgSend(host, "isEqualToString:", &stru_285AA6518) & 1) != 0 || !scheme || objc_msgSend(scheme, "isEqualToString:", &stru_285AA6518))
  {
    v10 = DALoggingwithCategory();
    v11 = *(v5 + 3);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = @"Login ";
      if (user && ![user isEqualToString:&stru_285AA6518])
      {
        v12 = &stru_285AA6518;
      }

      v13 = @"Host ";
      if (host && ![host isEqualToString:&stru_285AA6518])
      {
        v13 = &stru_285AA6518;
      }

      v14 = @"Scheme ";
      if (scheme && ![scheme isEqualToString:&stru_285AA6518])
      {
        v14 = &stru_285AA6518;
      }

      v28 = 138412802;
      *v29 = v12;
      *&v29[8] = 2112;
      *&v29[10] = v13;
      v30 = 2112;
      v31 = v14;
      _os_log_impl(&dword_24844D000, v10, v11, "Refusing to delete password from keychain because one or more of the necessary fields are null: %@%@%@", &v28, 0x20u);
    }

    goto LABEL_21;
  }

  if ([user isEqualToString:@"unit-test"])
  {
    goto LABEL_21;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if ([scheme isEqualToString:@"ftp"])
  {
    v16 = MEMORY[0x277CDC0B0];
  }

  else
  {
    if (![scheme isEqualToString:@"http"])
    {
      if ([scheme isEqualToString:@"https"])
      {
        v17 = *MEMORY[0x277CDC0C0];
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_31;
    }

    v16 = MEMORY[0x277CDC0B8];
  }

  v17 = *v16;
LABEL_31:
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], user);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC558], *MEMORY[0x277CBED28]);
  v18 = *MEMORY[0x277CDC228];
  if (v17)
  {
    CFDictionaryAddValue(Mutable, v18, *MEMORY[0x277CDC248]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC0A8], v17);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC118], host);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF38], *MEMORY[0x277CDBF40]);
    port = [lCopy port];

    v20 = *MEMORY[0x277CDC0A0];
    if (port)
    {
      port2 = [lCopy port];
    }

    else
    {
      port2 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277CBEBC0], "da_classicPortForScheme:", scheme)}];
    }

    CFDictionaryAddValue(Mutable, v20, port2);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC098], [lCopy uri]);
  }

  else
  {
    CFDictionaryAddValue(Mutable, v18, *MEMORY[0x277CDC238]);
    v22 = *MEMORY[0x277CDC120];
    uRLWithoutUsername = [lCopy URLWithoutUsername];
    CFDictionaryAddValue(Mutable, v22, [uRLWithoutUsername absoluteString]);
  }

  v24 = SecItemDelete(Mutable);
  if (v24)
  {
    v25 = v24;
    v26 = DALoggingwithCategory();
    v27 = *(v5 + 3);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = 67109378;
      *v29 = v25;
      *&v29[4] = 2112;
      *&v29[6] = lCopy;
      _os_log_impl(&dword_24844D000, v26, v27, "error %d: Could not delete password for %@", &v28, 0x12u);
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_21:
}

- (id)guessPasswordForURL:(id)l
{
  lCopy = l;
  v5 = [(DAKeychain *)self loadKeychainInformationsForURL:lCopy];
  if (v5)
  {
    absoluteString = v5;
    v7 = 0;
    uRLByRemovingLastPathComponent = lCopy;
  }

  else
  {
    port = [lCopy port];
    intValue = [port intValue];

    uRLByRemovingLastPathComponent = lCopy;
    if (intValue && (v12 = MEMORY[0x277CBEBC0], [lCopy scheme], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(lCopy, "host"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(lCopy, "path"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "da_URLWithScheme:host:port:uri:", v13, v14, 0, v15), v16 = objc_claimAutoreleasedReturnValue(), v15, v14, v13, objc_msgSend(lCopy, "user"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(lCopy, "password"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "URLWithUsername:withPassword:", v17, v18), uRLByRemovingLastPathComponent = objc_claimAutoreleasedReturnValue(), lCopy, v18, v17, -[DAKeychain loadKeychainInformationsForURL:](self, "loadKeychainInformationsForURL:", uRLByRemovingLastPathComponent), absoluteString = objc_claimAutoreleasedReturnValue(), v16, absoluteString))
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      if (uRLByRemovingLastPathComponent)
      {
        while (1)
        {
          absoluteString = [v7 absoluteString];
          if (!absoluteString)
          {
            break;
          }

          absoluteString2 = [uRLByRemovingLastPathComponent absoluteString];
          absoluteString3 = [v7 absoluteString];
          v21 = [absoluteString2 isEqualToString:absoluteString3];

          if (v21)
          {
            goto LABEL_15;
          }

          v22 = [(DAKeychain *)self loadKeychainInformationsForURL:uRLByRemovingLastPathComponent];
          if (v22)
          {
            absoluteString = v22;
            break;
          }

          v23 = uRLByRemovingLastPathComponent;

          uRLByRemovingLastPathComponent = [v23 URLByRemovingLastPathComponent];

          v7 = v23;
          if (!uRLByRemovingLastPathComponent)
          {
            absoluteString = 0;
            v7 = v23;
            break;
          }
        }
      }

      else
      {
LABEL_15:
        absoluteString = 0;
      }
    }
  }

  return absoluteString;
}

@end