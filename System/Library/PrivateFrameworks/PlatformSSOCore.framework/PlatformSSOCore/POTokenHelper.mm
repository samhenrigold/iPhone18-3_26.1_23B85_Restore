@interface POTokenHelper
+ (BOOL)tokenIsAccessKey:(id)key;
+ (id)dataToHex:(id)hex;
+ (id)parseUserNameFromMailboxData:(id)data;
- (BOOL)canTokenIdLogin:(id)login pubKeyHash:(id)hash;
- (BOOL)insertTokenForUser:(id)user;
- (BOOL)retrieveCertAndKeyForTokenId:(id)id context:(id)context certificate:(__SecCertificate *)certificate privateKey:(__SecKey *)key;
- (BOOL)waitForTokenAvailable:(id)available;
- (POTokenHelper)initWithIdentifierProvider:(id)provider;
- (id)base64URLtokenHashForUser:(id)user;
- (id)findInfoForTokenId:(id)id;
- (id)findTokenIdForSmartCardAMUser:(id)user tokenHash:(id *)hash;
- (id)findTokenIdForSmartCardBoundUser:(id)user tokenHash:(id *)hash;
- (id)getDriverConfiguration;
- (id)getTokenInfo;
- (id)tokenHashDataForUser:(id)user;
- (id)tokenHashForUser:(id)user;
- (void)getDriverConfiguration;
- (void)getTokenInfo;
- (void)postAHPCacheRefreshNotification;
- (void)removeAllTokens;
- (void)removeTokenForUser:(id)user;
@end

@implementation POTokenHelper

- (POTokenHelper)initWithIdentifierProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = POTokenHelper;
  v6 = [(POTokenHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userIdentifierProvider, provider);
  }

  return v7;
}

- (id)getDriverConfiguration
{
  driverConfigurations = [MEMORY[0x277CC5620] driverConfigurations];
  v3 = PO_LOG_POTokenHelper(driverConfigurations);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [POTokenHelper getDriverConfiguration];
  }

  v4 = [driverConfigurations objectForKeyedSubscript:@"com.apple.platformsso"];

  return v4;
}

- (BOOL)insertTokenForUser:(id)user
{
  v148 = *MEMORY[0x277D85DE8];
  userCopy = user;
  v5 = PO_LOG_POTokenHelper(userCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v143 = "[POTokenHelper insertTokenForUser:]";
    v144 = 2114;
    v145 = userCopy;
    v146 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E8B1000, v5, OS_LOG_TYPE_DEFAULT, "%s userName = %{public}@ on %@", buf, 0x20u);
  }

  v6 = [POConfigurationCoreManager alloc];
  userIdentifierProvider = [(POTokenHelper *)self userIdentifierProvider];
  v8 = [(POConfigurationCoreManager *)v6 initWithUserName:userCopy identifierProvider:userIdentifierProvider sharedOnly:1];

  currentUserConfiguration = [(POConfigurationCoreManager *)v8 currentUserConfiguration];
  v10 = currentUserConfiguration;
  if (currentUserConfiguration)
  {
    currentUserConfiguration = [currentUserConfiguration userDecryptionCertificate];
    if (currentUserConfiguration)
    {
      userDecryptionKeyHash = [v10 userDecryptionKeyHash];

      if (userDecryptionKeyHash)
      {
        userUnlockData = [v10 userUnlockData];

        getDriverConfiguration = [(POTokenHelper *)self getDriverConfiguration];
        v14 = getDriverConfiguration;
        if (!getDriverConfiguration)
        {
          v130[0] = MEMORY[0x277D85DD0];
          v130[1] = 3221225472;
          v130[2] = __36__POTokenHelper_insertTokenForUser___block_invoke;
          v130[3] = &unk_279A3DC48;
          v131 = userCopy;
          v79 = __36__POTokenHelper_insertTokenForUser___block_invoke(v130);
          LOBYTE(v65) = 0;
          v26 = v131;
LABEL_44:

          goto LABEL_45;
        }

        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        tokenConfigurations = [getDriverConfiguration tokenConfigurations];
        allKeys = [tokenConfigurations allKeys];

        v17 = [allKeys countByEnumeratingWithState:&v126 objects:v141 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v127;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v127 != v19)
              {
                objc_enumerationMutation(allKeys);
              }

              [v14 removeTokenConfigurationForTokenInstanceID:*(*(&v126 + 1) + 8 * i)];
            }

            v18 = [allKeys countByEnumeratingWithState:&v126 objects:v141 count:16];
          }

          while (v18);
        }

        [v14 removeTokenConfigurationForTokenInstanceID:userCopy];
        userDecryptionKeyHash2 = [v10 userDecryptionKeyHash];
        v22 = [POTokenHelper dataToHex:userDecryptionKeyHash2];
        [v14 removeTokenConfigurationForTokenInstanceID:v22];

        tokenConfigurations2 = [v14 tokenConfigurations];
        userDecryptionKeyHash3 = [v10 userDecryptionKeyHash];
        v25 = [POTokenHelper dataToHex:userDecryptionKeyHash3];
        v26 = [tokenConfigurations2 objectForKeyedSubscript:v25];

        if (!v26)
        {
          userDecryptionKeyHash4 = [v10 userDecryptionKeyHash];
          v29 = [POTokenHelper dataToHex:userDecryptionKeyHash4];
          v26 = [v14 addTokenConfigurationForTokenInstanceID:v29];

          if (!v26)
          {
            v124[0] = MEMORY[0x277D85DD0];
            v124[1] = 3221225472;
            v124[2] = __36__POTokenHelper_insertTokenForUser___block_invoke_42;
            v124[3] = &unk_279A3DC48;
            v125 = v10;
            v101 = __36__POTokenHelper_insertTokenForUser___block_invoke_42(v124);
            v102 = v125;
LABEL_43:

            LOBYTE(v65) = 0;
            goto LABEL_44;
          }
        }

        if (!userUnlockData)
        {
          v80 = objc_alloc_init(POMutableTokenConfigJWTBody);
          [(POMutableTokenConfigJWTBody *)v80 setUserName:userCopy];
          userLoginConfiguration = [v10 userLoginConfiguration];
          loginUserName = [userLoginConfiguration loginUserName];
          v83 = loginUserName;
          if (loginUserName)
          {
            v84 = loginUserName;
          }

          else
          {
            v84 = userCopy;
          }

          [(POMutableTokenConfigJWTBody *)v80 setLoginUserName:v84];

          dataRepresentation = [(_POJWTBodyBase *)v80 dataRepresentation];
          [v26 setConfigurationData:dataRepresentation];

          userDecryptionCertificate = [v10 userDecryptionCertificate];
          v87 = objc_alloc(MEMORY[0x277CC5628]);
          v88 = MEMORY[0x277CCACA8];
          uniqueIdentifier = [v10 uniqueIdentifier];
          v90 = [v88 stringWithFormat:@"certificate:%@", uniqueIdentifier];
          v91 = [v87 initWithCertificate:userDecryptionCertificate objectID:v90];

          v92 = objc_alloc(MEMORY[0x277CC5630]);
          userDecryptionKeyHash5 = [v10 userDecryptionKeyHash];
          v94 = [v92 initWithCertificate:userDecryptionCertificate objectID:userDecryptionKeyHash5];

          userDecryptionKeyHash6 = [v10 userDecryptionKeyHash];
          v96 = [POTokenHelper dataToHex:userDecryptionKeyHash6];
          [v94 setLabel:v96];

          [v94 setSuitableForLogin:1];
          [v94 setCanDecrypt:1];
          [v94 setCanSign:1];
          [v94 setCanPerformKeyExchange:1];
          v133 = &unk_2870A9240;
          v134 = @"TOKENS";
          v97 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
          [v94 setConstraints:v97];

          v132[0] = v91;
          v132[1] = v94;
          v98 = [MEMORY[0x277CBEA60] arrayWithObjects:v132 count:2];
          [v26 setKeychainItems:v98];

LABEL_37:
          LOBYTE(v65) = 1;
          goto LABEL_44;
        }

        v30 = PO_LOG_POTokenHelper(v27);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          [POTokenHelper insertTokenForUser:];
        }

        v31 = objc_alloc_init(POMutableTokenConfigJWTBody);
        userUnlockData2 = [v10 userUnlockData];
        [(POMutableTokenConfigJWTBody *)v31 setUnlockData:userUnlockData2];

        userUnlockHash = [v10 userUnlockHash];
        v34 = [POTokenHelper dataToHex:userUnlockHash];
        [(POMutableTokenConfigJWTBody *)v31 setUnlockHash:v34];

        unlockTokenId = [v10 unlockTokenId];
        [(POMutableTokenConfigJWTBody *)v31 setIdpTokenId:unlockTokenId];

        v113 = v31;
        dataRepresentation2 = [(_POJWTBodyBase *)v31 dataRepresentation];
        [v26 setConfigurationData:dataRepresentation2];

        userDecryptionCertificate2 = [v10 userDecryptionCertificate];
        v38 = objc_alloc(MEMORY[0x277CC5628]);
        v39 = MEMORY[0x277CCACA8];
        uniqueIdentifier2 = [v10 uniqueIdentifier];
        v41 = [v39 stringWithFormat:@"certificate:%@", uniqueIdentifier2];
        v42 = [v38 initWithCertificate:userDecryptionCertificate2 objectID:v41];

        v43 = objc_alloc(MEMORY[0x277CC5630]);
        userDecryptionKeyHash7 = [v10 userDecryptionKeyHash];
        v45 = [v43 initWithCertificate:userDecryptionCertificate2 objectID:userDecryptionKeyHash7];

        userDecryptionKeyHash8 = [v10 userDecryptionKeyHash];
        [v45 setApplicationTag:userDecryptionKeyHash8];

        [v45 setSuitableForLogin:1];
        [v45 setCanDecrypt:1];
        [v45 setCanSign:1];
        [v45 setCanPerformKeyExchange:1];
        v139[0] = &unk_2870A9240;
        v139[1] = &unk_2870A9258;
        v140[0] = @"TOKENS";
        v140[1] = @"TOKENS";
        v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v140 forKeys:v139 count:2];
        [v45 setConstraints:v47];

        v111 = v45;
        v112 = v42;
        v138[0] = v42;
        v138[1] = v45;
        v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v138 count:2];
        [v26 setKeychainItems:v48];

        tokenConfigurations3 = [v14 tokenConfigurations];
        userUnlockHash2 = [v10 userUnlockHash];
        v51 = [POTokenHelper dataToHex:userUnlockHash2];
        v52 = [tokenConfigurations3 objectForKeyedSubscript:v51];

        if (!v52)
        {
          userUnlockHash3 = [v10 userUnlockHash];
          v54 = [POTokenHelper dataToHex:userUnlockHash3];
          v52 = [v14 addTokenConfigurationForTokenInstanceID:v54];

          if (!v52)
          {
            v122[0] = MEMORY[0x277D85DD0];
            v122[1] = 3221225472;
            v122[2] = __36__POTokenHelper_insertTokenForUser___block_invoke_61;
            v122[3] = &unk_279A3DC48;
            v123 = v10;
            v106 = __36__POTokenHelper_insertTokenForUser___block_invoke_61(v122);

            LOBYTE(v65) = 0;
            goto LABEL_44;
          }
        }

        v55 = objc_alloc_init(POMutableTokenConfigJWTBody);
        [(POMutableTokenConfigJWTBody *)v55 setUserName:userCopy];
        userLoginConfiguration2 = [v10 userLoginConfiguration];
        loginUserName2 = [userLoginConfiguration2 loginUserName];
        v58 = loginUserName2;
        if (loginUserName2)
        {
          v59 = loginUserName2;
        }

        else
        {
          v59 = userCopy;
        }

        [(POMutableTokenConfigJWTBody *)v55 setLoginUserName:v59];

        dataRepresentation3 = [(_POJWTBodyBase *)v55 dataRepresentation];
        [v52 setConfigurationData:dataRepresentation3];

        userUnlockCertificate = [v10 userUnlockCertificate];
        if (userUnlockCertificate)
        {
          v62 = SecCertificateCopyKey(userUnlockCertificate);
          if (v62)
          {
            v63 = v62;
            v64 = [POSecKeyHelper dataForEphemeralKey:v62];
            if (v64)
            {
              v109 = v64;
              v65 = SecKeyCopyAttributes(v63);
              CFRelease(v63);
              if (v65)
              {
                v66 = objc_alloc(MEMORY[0x277CC5630]);
                [v10 userUnlockHash];
                v67 = v110 = v65;
                v68 = [POTokenHelper dataToHex:v67];
                v69 = [v66 initWithCertificate:0 objectID:v68];

                v70 = [(__CFDictionary *)v110 objectForKeyedSubscript:*MEMORY[0x277CDC5E8]];
                [v69 setPublicKeyData:v70];

                v71 = [(__CFDictionary *)v110 objectForKeyedSubscript:*MEMORY[0x277CDBF28]];
                [v69 setPublicKeyHash:v71];

                v72 = [(__CFDictionary *)v110 objectForKeyedSubscript:*MEMORY[0x277CDC028]];
                [v69 setKeyType:v72];

                v73 = [(__CFDictionary *)v110 objectForKeyedSubscript:*MEMORY[0x277CDC018]];
                [v69 setKeySizeInBits:{objc_msgSend(v73, "unsignedIntegerValue")}];

                userUnlockHash4 = [v10 userUnlockHash];
                v75 = [POTokenHelper dataToHex:userUnlockHash4];
                [v69 setLabel:v75];

                [v69 setCanDecrypt:1];
                [v69 setCanPerformKeyExchange:1];
                v76 = [@"idp" dataUsingEncoding:4];
                [v69 setApplicationTag:v76];

                v136 = &unk_2870A9240;
                v137 = @"TOKENS";
                v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
                [v69 setConstraints:v77];

                v135 = v69;
                v78 = [MEMORY[0x277CBEA60] arrayWithObjects:&v135 count:1];
                [v52 setKeychainItems:v78];

                v65 = v110;
              }

              else
              {
                v114[0] = MEMORY[0x277D85DD0];
                v114[1] = 3221225472;
                v114[2] = __36__POTokenHelper_insertTokenForUser___block_invoke_78;
                v114[3] = &unk_279A3DC48;
                v115 = v10;
                v108 = __36__POTokenHelper_insertTokenForUser___block_invoke_78(v114);
                v69 = v115;
              }

              if (!v65)
              {
                goto LABEL_44;
              }

              goto LABEL_37;
            }

            CFRelease(v63);
            v116[0] = MEMORY[0x277D85DD0];
            v116[1] = 3221225472;
            v116[2] = __36__POTokenHelper_insertTokenForUser___block_invoke_74;
            v116[3] = &unk_279A3DC48;
            v117 = v10;
            v107 = __36__POTokenHelper_insertTokenForUser___block_invoke_74(v116);
            v104 = v117;
            goto LABEL_42;
          }

          v118[0] = MEMORY[0x277D85DD0];
          v118[1] = 3221225472;
          v118[2] = __36__POTokenHelper_insertTokenForUser___block_invoke_69;
          v118[3] = &unk_279A3DC48;
          v99 = &v119;
          v119 = v10;
          v103 = __36__POTokenHelper_insertTokenForUser___block_invoke_69(v118);
        }

        else
        {
          v120[0] = MEMORY[0x277D85DD0];
          v120[1] = 3221225472;
          v120[2] = __36__POTokenHelper_insertTokenForUser___block_invoke_65;
          v120[3] = &unk_279A3DC48;
          v99 = &v121;
          v121 = v10;
          v100 = __36__POTokenHelper_insertTokenForUser___block_invoke_65(v120);
        }

        v104 = *v99;
LABEL_42:

        v102 = v113;
        goto LABEL_43;
      }
    }
  }

  v14 = PO_LOG_POTokenHelper(currentUserConfiguration);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [POTokenHelper insertTokenForUser:];
  }

  LOBYTE(v65) = 0;
LABEL_45:

  return v65;
}

id __36__POTokenHelper_insertTokenForUser___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 description:@"No driver config for user."];
  v2 = PO_LOG_POTokenHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __36__POTokenHelper_insertTokenForUser___block_invoke_cold_1();
  }

  return v1;
}

id __36__POTokenHelper_insertTokenForUser___block_invoke_42(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 description:@"No token config for token id."];
  v2 = PO_LOG_POTokenHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __36__POTokenHelper_insertTokenForUser___block_invoke_42_cold_1();
  }

  return v1;
}

id __36__POTokenHelper_insertTokenForUser___block_invoke_61(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 description:@"No unlock token config for idp token id."];
  v2 = PO_LOG_POTokenHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __36__POTokenHelper_insertTokenForUser___block_invoke_61_cold_1();
  }

  return v1;
}

id __36__POTokenHelper_insertTokenForUser___block_invoke_65(uint64_t a1)
{
  v1 = [POError errorWithCode:-1005 description:@"Missing unlock certificate."];
  v2 = PO_LOG_POTokenHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __36__POTokenHelper_insertTokenForUser___block_invoke_61_cold_1();
  }

  return v1;
}

id __36__POTokenHelper_insertTokenForUser___block_invoke_69(uint64_t a1)
{
  v1 = [POError errorWithCode:-1005 description:@"Missing unlock public key."];
  v2 = PO_LOG_POTokenHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __36__POTokenHelper_insertTokenForUser___block_invoke_61_cold_1();
  }

  return v1;
}

id __36__POTokenHelper_insertTokenForUser___block_invoke_74(uint64_t a1)
{
  v1 = [POError errorWithCode:-1005 description:@"Missing unlock public key data."];
  v2 = PO_LOG_POTokenHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __36__POTokenHelper_insertTokenForUser___block_invoke_61_cold_1();
  }

  return v1;
}

id __36__POTokenHelper_insertTokenForUser___block_invoke_78(uint64_t a1)
{
  v1 = [POError errorWithCode:-1005 description:@"Missing unlock public key attributes."];
  v2 = PO_LOG_POTokenHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __36__POTokenHelper_insertTokenForUser___block_invoke_61_cold_1();
  }

  return v1;
}

- (void)removeTokenForUser:(id)user
{
  v22 = *MEMORY[0x277D85DE8];
  userCopy = user;
  v5 = PO_LOG_POTokenHelper(userCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315650;
    v17 = "[POTokenHelper removeTokenForUser:]";
    v18 = 2114;
    v19 = userCopy;
    v20 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E8B1000, v5, OS_LOG_TYPE_DEFAULT, "%s userName = %{public}@ on %@", &v16, 0x20u);
  }

  getDriverConfiguration = [(POTokenHelper *)self getDriverConfiguration];
  v7 = getDriverConfiguration;
  if (getDriverConfiguration)
  {
    [getDriverConfiguration removeTokenConfigurationForTokenInstanceID:userCopy];
    v8 = [POConfigurationCoreManager alloc];
    userIdentifierProvider = [(POTokenHelper *)self userIdentifierProvider];
    v10 = [(POConfigurationCoreManager *)v8 initWithUserName:userCopy identifierProvider:userIdentifierProvider sharedOnly:1];

    currentUserConfiguration = [v10 currentUserConfiguration];
    v12 = currentUserConfiguration;
    if (currentUserConfiguration)
    {
      userDecryptionKeyHash = [currentUserConfiguration userDecryptionKeyHash];

      if (userDecryptionKeyHash)
      {
        userDecryptionKeyHash2 = [v12 userDecryptionKeyHash];
        v15 = [POTokenHelper dataToHex:userDecryptionKeyHash2];
        [v7 removeTokenConfigurationForTokenInstanceID:v15];
      }
    }
  }

  else
  {
    v10 = PO_LOG_POTokenHelper(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [POTokenHelper removeTokenForUser:];
    }
  }
}

- (void)removeAllTokens
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)tokenHashForUser:(id)user
{
  v3 = [(POTokenHelper *)self tokenHashDataForUser:user];
  v4 = [POTokenHelper dataToHex:v3];

  return v4;
}

- (id)base64URLtokenHashForUser:(id)user
{
  v3 = [(POTokenHelper *)self tokenHashDataForUser:user];
  psso_base64URLEncodedString = [v3 psso_base64URLEncodedString];

  return psso_base64URLEncodedString;
}

- (id)tokenHashDataForUser:(id)user
{
  v21 = *MEMORY[0x277D85DE8];
  userCopy = user;
  v5 = PO_LOG_POTokenHelper(userCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315650;
    v16 = "[POTokenHelper tokenHashDataForUser:]";
    v17 = 2114;
    v18 = userCopy;
    v19 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E8B1000, v5, OS_LOG_TYPE_DEFAULT, "%s userName = %{public}@ on %@", &v15, 0x20u);
  }

  v6 = [POConfigurationCoreManager alloc];
  userIdentifierProvider = [(POTokenHelper *)self userIdentifierProvider];
  v8 = [(POConfigurationCoreManager *)v6 initWithUserName:userCopy identifierProvider:userIdentifierProvider sharedOnly:1];

  currentUserConfiguration = [(POConfigurationCoreManager *)v8 currentUserConfiguration];
  v10 = currentUserConfiguration;
  if (currentUserConfiguration && (currentUserConfiguration = [currentUserConfiguration userDecryptionCertificate]) != 0 && (objc_msgSend(v10, "userDecryptionKeyHash"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    if ([v10 userDecryptionCertificate])
    {
      v12 = SecCertificateCopyPublicKeySHA1Digest();
      goto LABEL_11;
    }

    v13 = PO_LOG_POTokenHelper(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [POTokenHelper tokenHashDataForUser:];
    }
  }

  else
  {
    v13 = PO_LOG_POTokenHelper(currentUserConfiguration);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [POTokenHelper insertTokenForUser:];
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

+ (id)dataToHex:(id)hex
{
  hexCopy = hex;
  v4 = hexCopy;
  if (hexCopy)
  {
    v5 = [hexCopy length];
    v6 = [MEMORY[0x277CCAB68] stringWithCapacity:2 * v5];
    bytes = [v4 bytes];
    if ([v4 length])
    {
      v8 = 0;
      do
      {
        [v6 appendFormat:@"%02lX", *(bytes + v8++)];
      }

      while (v8 < [v4 length]);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)tokenIsAccessKey:(id)key
{
  lowercaseString = [key lowercaseString];
  lowercaseString2 = [@"com.apple.PlatformSSO.AccessKey" lowercaseString];
  v5 = [lowercaseString hasPrefix:lowercaseString2];

  return v5;
}

+ (id)parseUserNameFromMailboxData:(id)data
{
  dataCopy = data;
  v5 = PO_LOG_POTokenHelper(dataCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(POTokenHelper *)self parseUserNameFromMailboxData:dataCopy, v5];
  }

  v6 = [dataCopy length];
  if (v6 <= 0x1000)
  {
    v9 = [MEMORY[0x277CC55F8] recordFromData:dataCopy];
    v7 = v9;
    if (!dataCopy)
    {
      v12 = PO_LOG_POTokenHelper(v9);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[POTokenHelper parseUserNameFromMailboxData:];
      }

      v8 = 0;
      goto LABEL_20;
    }

    v10 = MEMORY[0x277CC55F8];
    value = [v9 value];
    v12 = [v10 sequenceOfRecordsFromData:value];

    v13 = [v12 objectAtIndexedSubscript:0];
    v14 = [v13 tag];
    if (v14 == 128)
    {
      value2 = [v13 value];
      v16 = [value2 length];

      if (v16 < 0x81)
      {
        v19 = objc_alloc(MEMORY[0x277CCACA8]);
        value3 = [v13 value];
        v8 = [v19 initWithData:value3 encoding:4];
        goto LABEL_19;
      }

      value3 = PO_LOG_POTokenHelper(v17);
      if (os_log_type_enabled(value3, OS_LOG_TYPE_ERROR))
      {
        +[POTokenHelper parseUserNameFromMailboxData:];
      }
    }

    else
    {
      value3 = PO_LOG_POTokenHelper(v14);
      if (os_log_type_enabled(value3, OS_LOG_TYPE_ERROR))
      {
        +[POTokenHelper parseUserNameFromMailboxData:];
      }
    }

    v8 = 0;
LABEL_19:

LABEL_20:
    goto LABEL_21;
  }

  v7 = PO_LOG_POTokenHelper(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [POTokenHelper parseUserNameFromMailboxData:dataCopy];
  }

  v8 = 0;
LABEL_21:

  return v8;
}

- (BOOL)retrieveCertAndKeyForTokenId:(id)id context:(id)context certificate:(__SecCertificate *)certificate privateKey:(__SecKey *)key
{
  v20 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v10 = PO_LOG_POTokenHelper(idCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "[POTokenHelper retrieveCertAndKeyForTokenId:context:certificate:privateKey:]";
    v16 = 2114;
    v17 = idCopy;
    v18 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E8B1000, v10, OS_LOG_TYPE_DEFAULT, "%s tokenName = %{public}@ on %@", &v14, 0x20u);
  }

  if (*certificate)
  {
    CFRelease(*certificate);
    *certificate = 0;
  }

  v11 = *key;
  if (*key)
  {
    CFRelease(v11);
    *key = 0;
  }

  v12 = PO_LOG_POTokenHelper(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [POTokenHelper retrieveCertAndKeyForTokenId:context:certificate:privateKey:];
  }

  return 0;
}

- (id)findTokenIdForSmartCardBoundUser:(id)user tokenHash:(id *)hash
{
  userCopy = user;
  v5 = PO_LOG_POTokenHelper(userCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POTokenHelper findTokenIdForSmartCardBoundUser:tokenHash:];
  }

  return 0;
}

- (id)findTokenIdForSmartCardAMUser:(id)user tokenHash:(id *)hash
{
  userCopy = user;
  v5 = PO_LOG_POTokenHelper(userCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POTokenHelper findTokenIdForSmartCardAMUser:tokenHash:];
  }

  return 0;
}

- (id)findInfoForTokenId:(id)id
{
  idCopy = id;
  v4 = PO_LOG_POTokenHelper(idCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [POTokenHelper findInfoForTokenId:];
  }

  return 0;
}

- (BOOL)canTokenIdLogin:(id)login pubKeyHash:(id)hash
{
  v27 = *MEMORY[0x277D85DE8];
  loginCopy = login;
  hashCopy = hash;
  v7 = [objc_alloc(MEMORY[0x277CC5600]) initWithTokenID:loginCopy];
  v8 = [v7 sessionWithLAContext:0 error:0];

  if (v8)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    keys = [v8 keys];
    v10 = [keys countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v21 = loginCopy;
      v12 = *v23;
      v13 = *MEMORY[0x277CDBF28];
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(keys);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          if ([v15 keyUsage])
          {
            keychainAttributes = [v15 keychainAttributes];
            v17 = [keychainAttributes objectForKeyedSubscript:v13];
            v18 = [v17 isEqual:hashCopy];

            if (v18)
            {
              v19 = 1;
              goto LABEL_14;
            }
          }
        }

        v11 = [keys countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v19 = 0;
LABEL_14:
      loginCopy = v21;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)postAHPCacheRefreshNotification
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (id)getTokenInfo
{
  v2 = PO_LOG_POTokenHelper(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [POTokenHelper getTokenInfo];
  }

  return 0;
}

- (BOOL)waitForTokenAvailable:(id)available
{
  availableCopy = available;
  v4 = PO_LOG_POTokenHelper(availableCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [POTokenHelper waitForTokenAvailable:];
  }

  return 1;
}

- (void)getDriverConfiguration
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)insertTokenForUser:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)insertTokenForUser:.cold.2()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __36__POTokenHelper_insertTokenForUser___block_invoke_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_25E8B1000, v1, OS_LOG_TYPE_ERROR, "%{public}@, %{public}@", v2, 0x16u);
}

void __36__POTokenHelper_insertTokenForUser___block_invoke_42_cold_1()
{
  OUTLINED_FUNCTION_4();
  v2 = [OUTLINED_FUNCTION_3_0(v0 v1)];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __36__POTokenHelper_insertTokenForUser___block_invoke_61_cold_1()
{
  OUTLINED_FUNCTION_4();
  v2 = [OUTLINED_FUNCTION_3_0(v0 v1)];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)removeTokenForUser:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)tokenHashDataForUser:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)parseUserNameFromMailboxData:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = [a1 dataToHex:a2];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_25E8B1000, a3, OS_LOG_TYPE_DEBUG, "mailboxdata: %@", v5, 0xCu);
}

+ (void)parseUserNameFromMailboxData:(void *)a1 .cold.5(void *a1)
{
  [a1 length];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)retrieveCertAndKeyForTokenId:context:certificate:privateKey:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)findTokenIdForSmartCardBoundUser:tokenHash:.cold.1()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_25E8B1000, v0, v1, "%s userName = %{public}@ on %@", v2);
}

- (void)findTokenIdForSmartCardAMUser:tokenHash:.cold.1()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_25E8B1000, v0, v1, "%s userName = %{public}@ on %@", v2);
}

- (void)findInfoForTokenId:.cold.1()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_25E8B1000, v0, v1, "%s tokenId = %{public}@ on %@", v2);
}

- (void)getTokenInfo
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)waitForTokenAvailable:.cold.1()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_25E8B1000, v0, v1, "%s tokenId = %{public}@ on %@", v2);
}

@end