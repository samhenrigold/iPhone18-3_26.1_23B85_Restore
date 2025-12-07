@interface SOKeychainHelper
- (BOOL)hasCredentialsInKeychainWithService:(id)service;
- (__SecIdentity)identityForPersistentRef:(id)ref;
- (__SecIdentity)identityForUUIDString:(id)string;
- (int)addCredentialsToKeychainWithService:(id)service withUsername:(id)username withPassword:(id)password requireUserPresence:(BOOL)presence;
- (int)removeCredentialsFromKeychainWithService:(id)service;
- (int)retrieveCredentialsFromKeychainWithContext:(id)context service:(id)service returnedUsername:(id *)username returnedPassword:(id *)password;
@end

@implementation SOKeychainHelper

- (__SecIdentity)identityForPersistentRef:(id)ref
{
  refCopy = ref;
  v4 = SO_LOG_SOKeychainHelper(refCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(SOKeychainHelper *)refCopy identityForPersistentRef:v4];
  }

  return 0;
}

- (__SecIdentity)identityForUUIDString:(id)string
{
  v16[4] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v4 = *MEMORY[0x277CDC240];
  v5 = *MEMORY[0x277CDC080];
  v15[0] = *MEMORY[0x277CDC228];
  v15[1] = v5;
  v16[0] = v4;
  v16[1] = stringCopy;
  v6 = *MEMORY[0x277CDC428];
  v15[2] = *MEMORY[0x277CDC568];
  v15[3] = v6;
  v7 = *MEMORY[0x277CDC438];
  v16[2] = *MEMORY[0x277CBED28];
  v16[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v14 = 0;
  v9 = SecItemCopyMatching(v8, &v14);
  if (v9)
  {
    v10 = v9;
    v11 = SO_LOG_SOKeychainHelper(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(SOKeychainHelper *)stringCopy identityForUUIDString:v10, v11];
    }

    v12 = 0;
  }

  else
  {
    v12 = v14;
  }

  return v12;
}

- (int)addCredentialsToKeychainWithService:(id)service withUsername:(id)username withPassword:(id)password requireUserPresence:(BOOL)presence
{
  presenceCopy = presence;
  v43 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  usernameCopy = username;
  passwordCopy = password;
  v13 = SO_LOG_SOKeychainHelper(passwordCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v38 = "[SOKeychainHelper addCredentialsToKeychainWithService:withUsername:withPassword:requireUserPresence:]";
    v39 = 2112;
    selfCopy4 = serviceCopy;
    v41 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_24006C000, v13, OS_LOG_TYPE_DEFAULT, "%s service %@ on %@", buf, 0x20u);
  }

  v14 = [passwordCopy dataUsingEncoding:4];

  v16 = SO_LOG_SOKeychainHelper(v15);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (presenceCopy)
  {
    if (v17)
    {
      *buf = 136315394;
      v38 = "[SOKeychainHelper addCredentialsToKeychainWithService:withUsername:withPassword:requireUserPresence:]";
      v39 = 2112;
      selfCopy4 = self;
      _os_log_impl(&dword_24006C000, v16, OS_LOG_TYPE_DEFAULT, "%s requireUserPresence is enabled on %@", buf, 0x16u);
    }

    v18 = 1;
  }

  else
  {
    if (v17)
    {
      *buf = 136315394;
      v38 = "[SOKeychainHelper addCredentialsToKeychainWithService:withUsername:withPassword:requireUserPresence:]";
      v39 = 2112;
      selfCopy4 = self;
      _os_log_impl(&dword_24006C000, v16, OS_LOG_TYPE_DEFAULT, "%s requireUserPresence is disabled on %@", buf, 0x16u);
    }

    v18 = 0;
  }

  v19 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], v18, 0);
  if (!v19)
  {
    v28 = SO_LOG_SOKeychainHelper(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [SOKeychainHelper addCredentialsToKeychainWithService:v28 withUsername:? withPassword:? requireUserPresence:?];
    }

    v32 = -67702;
    goto LABEL_20;
  }

  v20 = v19;
  if (serviceCopy && usernameCopy && v14)
  {
    v21 = *MEMORY[0x277CDC5E8];
    v36[0] = v14;
    lowercaseString = [usernameCopy lowercaseString];
    v23 = *MEMORY[0x277CDC120];
    v36[1] = lowercaseString;
    v36[2] = serviceCopy;
    v24 = *MEMORY[0x277CDC228];
    v35[2] = v23;
    v35[3] = v24;
    v25 = *MEMORY[0x277CDC5C8];
    v26 = *MEMORY[0x277CBED28];
    v36[3] = *MEMORY[0x277CDC238];
    v36[4] = v26;
    v27 = *MEMORY[0x277CDBEC0];
    v35[4] = v25;
    v35[5] = v27;
    v36[5] = v20;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:6];

    v29 = SecItemDelete(v28);
    v30 = v29;
    v31 = SO_LOG_SOKeychainHelper(v29);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v38) = v30;
      _os_log_impl(&dword_24006C000, v31, OS_LOG_TYPE_DEFAULT, "Removing keychain entry returned %d", buf, 8u);
    }

    v32 = SecItemAdd(v28, 0);
    CFRelease(v20);
LABEL_20:

    goto LABEL_24;
  }

  v33 = SO_LOG_SOKeychainHelper(v19);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v38 = "[SOKeychainHelper addCredentialsToKeychainWithService:withUsername:withPassword:requireUserPresence:]";
    v39 = 2112;
    selfCopy4 = self;
    _os_log_impl(&dword_24006C000, v33, OS_LOG_TYPE_DEFAULT, "%s Could not add credentials to keychain. Invalid parameters on %@", buf, 0x16u);
  }

  CFRelease(v20);
  v32 = -67693;
LABEL_24:

  return v32;
}

- (int)retrieveCredentialsFromKeychainWithContext:(id)context service:(id)service returnedUsername:(id *)username returnedPassword:(id *)password
{
  v35 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  serviceCopy = service;
  result = 0;
  v12 = SO_LOG_SOKeychainHelper(serviceCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = serviceCopy;
    _os_log_impl(&dword_24006C000, v12, OS_LOG_TYPE_DEFAULT, "Finding keychain entry for service %@", buf, 0xCu);
  }

  if (serviceCopy)
  {
    v14 = *MEMORY[0x277CBED28];
    v15 = *MEMORY[0x277CDC558];
    v29[0] = *MEMORY[0x277CDC550];
    v29[1] = v15;
    v16 = *MEMORY[0x277CDC228];
    v29[2] = *MEMORY[0x277CDC120];
    v29[3] = v16;
    v17 = *MEMORY[0x277CDC238];
    v30[2] = serviceCopy;
    v30[3] = v17;
    v30[0] = v14;
    v30[1] = v14;
    v29[4] = *MEMORY[0x277CDC5C8];
    v30[4] = v14;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:5];
    v19 = [v18 mutableCopy];

    if (contextCopy)
    {
      [v19 setObject:contextCopy forKeyedSubscript:*MEMORY[0x277CDC5A0]];
    }

    v20 = SecItemCopyMatching(v19, &result);
    v21 = v20;
    if (v20)
    {
      v22 = SO_LOG_SOKeychainHelper(v20);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v32) = v21;
        _os_log_impl(&dword_24006C000, v22, OS_LOG_TYPE_DEFAULT, "Finding keychain entry failed with %d", buf, 8u);
      }
    }

    else
    {
      v22 = result;
      v23 = [v22 objectForKey:*MEMORY[0x277CDBF20]];
      v24 = [v22 objectForKey:*MEMORY[0x277CDC5E8]];
      v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v24 encoding:4];
      *password = v25;
      v26 = v23;
      *username = v23;
      if (result)
      {
        CFRelease(result);
        result = 0;
      }
    }
  }

  else
  {
    v21 = -67693;
    v19 = SO_LOG_SOKeychainHelper(v13);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v32 = "[SOKeychainHelper retrieveCredentialsFromKeychainWithContext:service:returnedUsername:returnedPassword:]";
      v33 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_24006C000, v19, OS_LOG_TYPE_DEFAULT, "%s Could not find credentials in keychain. Invalid parameters on %@", buf, 0x16u);
    }
  }

  return v21;
}

- (BOOL)hasCredentialsInKeychainWithService:(id)service
{
  v27 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  result = 0;
  v5 = SO_LOG_SOKeychainHelper(serviceCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = serviceCopy;
    _os_log_impl(&dword_24006C000, v5, OS_LOG_TYPE_DEFAULT, "Checking if keychain entry existis for service %@", buf, 0xCu);
  }

  if (serviceCopy)
  {
    v7 = objc_alloc_init(MEMORY[0x277CD4790]);
    [v7 setInteractionNotAllowed:1];
    v8 = *MEMORY[0x277CBED28];
    v9 = *MEMORY[0x277CDC558];
    v21[0] = *MEMORY[0x277CDC550];
    v21[1] = v9;
    v10 = *MEMORY[0x277CBED10];
    v22[0] = v8;
    v22[1] = v10;
    v11 = *MEMORY[0x277CDC228];
    v21[2] = *MEMORY[0x277CDC120];
    v21[3] = v11;
    v12 = *MEMORY[0x277CDC238];
    v22[2] = serviceCopy;
    v22[3] = v12;
    v13 = *MEMORY[0x277CDC5A0];
    v21[4] = *MEMORY[0x277CDC5C8];
    v21[5] = v13;
    v22[4] = v8;
    v22[5] = v7;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:6];
    v15 = SecItemCopyMatching(v14, &result);
    v16 = v15 == -25308 || v15 == 0;
    if (v15 != -25308 && (v17 = v15) != 0)
    {
      v18 = SO_LOG_SOKeychainHelper(v15);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v24) = v17;
        _os_log_impl(&dword_24006C000, v18, OS_LOG_TYPE_DEFAULT, "Finding keychain entry failed with %d", buf, 8u);
      }
    }

    else if (result)
    {
      CFRelease(result);
      result = 0;
    }
  }

  else
  {
    v7 = SO_LOG_SOKeychainHelper(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v24 = "[SOKeychainHelper hasCredentialsInKeychainWithService:]";
      v25 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_24006C000, v7, OS_LOG_TYPE_DEFAULT, "%s Could not find credentials in keychain. Invalid parameters on %@", buf, 0x16u);
    }

    v16 = 0;
  }

  return v16;
}

- (int)removeCredentialsFromKeychainWithService:(id)service
{
  v22 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v5 = SO_LOG_SOKeychainHelper(serviceCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = serviceCopy;
    _os_log_impl(&dword_24006C000, v5, OS_LOG_TYPE_DEFAULT, "Deleting keychain entry for service %@", buf, 0xCu);
  }

  if (serviceCopy)
  {
    v7 = *MEMORY[0x277CBED28];
    v8 = *MEMORY[0x277CDC558];
    v16[0] = *MEMORY[0x277CDC550];
    v16[1] = v8;
    v9 = *MEMORY[0x277CDC228];
    v16[2] = *MEMORY[0x277CDC120];
    v16[3] = v9;
    v10 = *MEMORY[0x277CDC238];
    v17[2] = serviceCopy;
    v17[3] = v10;
    v17[0] = v7;
    v17[1] = v7;
    v16[4] = *MEMORY[0x277CDC5C8];
    v17[4] = v7;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];
    v12 = SecItemDelete(v11);
    v13 = v12;
    if (v12)
    {
      v14 = SO_LOG_SOKeychainHelper(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v19) = v13;
        _os_log_impl(&dword_24006C000, v14, OS_LOG_TYPE_DEFAULT, "Deleting keychain entry failed with %d", buf, 8u);
      }
    }
  }

  else
  {
    v13 = -67693;
    v11 = SO_LOG_SOKeychainHelper(v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "[SOKeychainHelper removeCredentialsFromKeychainWithService:]";
      v20 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_24006C000, v11, OS_LOG_TYPE_DEFAULT, "%s Could not delete credentials from keychain. Invalid parameters on %@", buf, 0x16u);
    }
  }

  return v13;
}

- (void)identityForPersistentRef:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24006C000, a2, OS_LOG_TYPE_ERROR, "Unable to resolve persistent reference %@", &v2, 0xCu);
}

- (void)identityForUUIDString:(os_log_t)log .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_24006C000, log, OS_LOG_TYPE_ERROR, "SecItemCopyMatching returned: %d for uuid: %@", v3, 0x12u);
}

@end