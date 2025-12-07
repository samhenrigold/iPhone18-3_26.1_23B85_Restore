@interface POKeychainHelper
- (BOOL)_saveAttestationToKeychain:(id)keychain extensionIdentifier:(id)identifier keyHash:(id)hash attestationDate:(id)date error:(id *)error;
- (BOOL)_saveAttestationToKeychain:(id)keychain extensionIdentifier:(id)identifier keyHash:(id)hash error:(id *)error;
- (BOOL)retrieveCertAndKeyForTokenId:(id)id context:(id)context forSigning:(BOOL)signing hash:(id)hash certificate:(__SecCertificate *)certificate privateKey:(__SecKey *)key;
- (BOOL)retrieveIdentityForTokenId:(id)id context:(id)context forSigning:(BOOL)signing hash:(id)hash identity:(__SecIdentity *)identity;
- (id)_checkForCachedAttestationForExtensionIdentifier:(id)identifier keyHash:(id)hash;
- (int)addTokens:(id)tokens metaData:(id)data toKeychainForService:(id)service username:(id)username system:(BOOL)system;
- (int)removeTokensFromKeychainWithService:(id)service username:(id)username system:(BOOL)system;
- (int)retrieveTokensFromKeychainForService:(id)service username:(id)username system:(BOOL)system returningTokens:(id *)tokens metaData:(id *)data;
- (void)_deleteAllCachedAttestations;
- (void)_deleteCachedAttestationForExtensionIdentifier:(id)identifier key:(__SecKey *)key;
- (void)_deleteCachedAttestationForExtensionIdentifier:(id)identifier keyHash:(id)hash;
@end

@implementation POKeychainHelper

- (int)addTokens:(id)tokens metaData:(id)data toKeychainForService:(id)service username:(id)username system:(BOOL)system
{
  systemCopy = system;
  v49 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  dataCopy = data;
  serviceCopy = service;
  usernameCopy = username;
  v16 = PO_LOG_POKeychainHelper(usernameCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v44 = "[POKeychainHelper addTokens:metaData:toKeychainForService:username:system:]";
    v45 = 2114;
    v46 = serviceCopy;
    v47 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E8B1000, v16, OS_LOG_TYPE_DEFAULT, "%s service %{public}@ on %@", buf, 0x20u);
  }

  v17 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0, 0);
  if (serviceCopy && tokensCopy && usernameCopy)
  {
    v18 = *MEMORY[0x277CDC5E8];
    v42[0] = tokensCopy;
    v19 = *MEMORY[0x277CDBF20];
    v41[0] = v18;
    v41[1] = v19;
    lowercaseString = [usernameCopy lowercaseString];
    v21 = *MEMORY[0x277CDC120];
    v42[1] = lowercaseString;
    v42[2] = serviceCopy;
    v22 = *MEMORY[0x277CDBEC8];
    v41[2] = v21;
    v41[3] = v22;
    v23 = *MEMORY[0x277CDC228];
    v24 = *MEMORY[0x277CDC238];
    v42[3] = kPlatformSSOAccessGroup;
    v42[4] = v24;
    v25 = *MEMORY[0x277CDC5C8];
    v41[4] = v23;
    v41[5] = v25;
    v42[5] = *MEMORY[0x277CBED28];
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:6];
    v27 = [v26 mutableCopy];

    if (systemCopy)
    {
      v28 = *MEMORY[0x277CDC5D8];
      v29 = MEMORY[0x277CBEC38];
      v30 = v27;
    }

    else
    {
      v28 = *MEMORY[0x277CDBEC0];
      v30 = v27;
      v29 = v17;
    }

    [v30 setObject:v29 forKeyedSubscript:v28];
    if (dataCopy)
    {
      v39 = systemCopy;
      v40 = 0;
      v33 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:dataCopy requiringSecureCoding:1 error:&v40];
      v34 = v40;
      v35 = v34;
      if (v33)
      {
        [v27 setObject:v33 forKeyedSubscript:*MEMORY[0x277CDBFB8]];
      }

      else
      {
        v36 = PO_LOG_POKeychainHelper(v34);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [POKeychainHelper addTokens:metaData:toKeychainForService:username:system:];
        }
      }

      systemCopy = v39;
    }

    v37 = PO_LOG_POKeychainHelper([(POKeychainHelper *)self removeTokensFromKeychainWithService:serviceCopy username:usernameCopy system:systemCopy]);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      [POKeychainHelper addTokens:metaData:toKeychainForService:username:system:];
    }

    v31 = SecItemAdd(v27, 0);
    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    v31 = -67693;
    v32 = __76__POKeychainHelper_addTokens_metaData_toKeychainForService_username_system___block_invoke();
    if (v17)
    {
      CFRelease(v17);
    }
  }

  return v31;
}

id __76__POKeychainHelper_addTokens_metaData_toKeychainForService_username_system___block_invoke()
{
  v0 = [POError errorWithCode:-1006 description:@"Missing required values to add tokens to keychain."];
  v1 = PO_LOG_POKeychainHelper(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __76__POKeychainHelper_addTokens_metaData_toKeychainForService_username_system___block_invoke_cold_1();
  }

  return v0;
}

- (int)retrieveTokensFromKeychainForService:(id)service username:(id)username system:(BOOL)system returningTokens:(id *)tokens metaData:(id *)data
{
  systemCopy = system;
  v64 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  usernameCopy = username;
  result = 0;
  v14 = PO_LOG_POKeychainHelper(usernameCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [POKeychainHelper retrieveTokensFromKeychainForService:username:system:returningTokens:metaData:];
  }

  if (serviceCopy && usernameCopy)
  {
    if (tokens)
    {
      *tokens = 0;
    }

    if (data)
    {
      *data = 0;
    }

    v16 = *MEMORY[0x277CBED28];
    v17 = *MEMORY[0x277CDC558];
    v58[0] = *MEMORY[0x277CDC550];
    v58[1] = v17;
    v59[0] = v16;
    v59[1] = v16;
    v18 = *MEMORY[0x277CDC120];
    v59[2] = serviceCopy;
    v19 = *MEMORY[0x277CDBF20];
    v58[2] = v18;
    v58[3] = v19;
    lowercaseString = [usernameCopy lowercaseString];
    v21 = *MEMORY[0x277CDBEC8];
    v59[3] = lowercaseString;
    v59[4] = kPlatformSSOAccessGroup;
    v22 = *MEMORY[0x277CDC228];
    v58[4] = v21;
    v58[5] = v22;
    v58[6] = *MEMORY[0x277CDC5C8];
    v59[5] = *MEMORY[0x277CDC238];
    v59[6] = v16;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:7];
    v24 = [v23 mutableCopy];

    if (systemCopy)
    {
      [v24 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CDC5D8]];
    }

    v25 = SecItemCopyMatching(v24, &result);
    v26 = v25;
    if (v25)
    {
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __98__POKeychainHelper_retrieveTokensFromKeychainForService_username_system_returningTokens_metaData___block_invoke;
      v53[3] = &__block_descriptor_36_e14___NSError_8__0l;
      v54 = v25;
      v27 = __98__POKeychainHelper_retrieveTokensFromKeychainForService_username_system_returningTokens_metaData___block_invoke(v53);
    }

    else
    {
      v28 = result;
      v29 = [v28 objectForKey:*MEMORY[0x277CDC5E8]];
      v30 = v29;
      if (tokens)
      {
        v31 = v29;
        *tokens = v30;
      }

      if (data)
      {
        v32 = [v28 objectForKey:*MEMORY[0x277CDBFB8]];
        if (v32)
        {
          v47 = v28;
          v49 = MEMORY[0x277CCAAC8];
          v51 = v30;
          v33 = MEMORY[0x277CBEB98];
          v34 = v32;
          v57 = objc_opt_class();
          v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
          v35 = [v33 setWithArray:v48];
          v36 = MEMORY[0x277CBEB98];
          v56[0] = objc_opt_class();
          v56[1] = objc_opt_class();
          v56[2] = objc_opt_class();
          v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:3];
          v38 = [v36 setWithArray:v37];
          v52 = 0;
          v39 = v49;
          v40 = v35;
          v50 = v34;
          v41 = [v39 unarchivedDictionaryWithKeysOfClasses:v35 objectsOfClasses:v38 fromData:v34 error:&v52];
          v42 = v52;
          v43 = v41;
          *data = v41;

          if (v42)
          {
            v45 = PO_LOG_POKeychainHelper(v44);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              [POKeychainHelper retrieveTokensFromKeychainForService:username:system:returningTokens:metaData:];
            }
          }

          v32 = v50;
          v30 = v51;
          v28 = v47;
        }
      }

      if (result)
      {
        CFRelease(result);
        result = 0;
      }
    }
  }

  else
  {
    v26 = -67693;
    v24 = PO_LOG_POKeychainHelper(v15);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v61 = "[POKeychainHelper retrieveTokensFromKeychainForService:username:system:returningTokens:metaData:]";
      v62 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_25E8B1000, v24, OS_LOG_TYPE_DEFAULT, "%s Could not find credentials in keychain. Invalid parameters on %@", buf, 0x16u);
    }
  }

  return v26;
}

id __98__POKeychainHelper_retrieveTokensFromKeychainForService_username_system_returningTokens_metaData___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1004 description:@"Keychain entry not found"];
  v2 = PO_LOG_POKeychainHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __22__POKeyWrap_wrapBlob___block_invoke_2_cold_1();
  }

  return v1;
}

- (int)removeTokensFromKeychainWithService:(id)service username:(id)username system:(BOOL)system
{
  systemCopy = system;
  v27[7] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  usernameCopy = username;
  v9 = PO_LOG_POKeychainHelper(usernameCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [POKeychainHelper removeTokensFromKeychainWithService:username:system:];
  }

  if (serviceCopy && usernameCopy)
  {
    v10 = *MEMORY[0x277CBED28];
    v11 = *MEMORY[0x277CDC558];
    v26[0] = *MEMORY[0x277CDC550];
    v26[1] = v11;
    v27[0] = v10;
    v27[1] = v10;
    v12 = *MEMORY[0x277CDC120];
    v27[2] = serviceCopy;
    v13 = *MEMORY[0x277CDBF20];
    v26[2] = v12;
    v26[3] = v13;
    lowercaseString = [usernameCopy lowercaseString];
    v15 = *MEMORY[0x277CDBEC8];
    v27[3] = lowercaseString;
    v27[4] = kPlatformSSOAccessGroup;
    v16 = *MEMORY[0x277CDC228];
    v26[4] = v15;
    v26[5] = v16;
    v26[6] = *MEMORY[0x277CDC5C8];
    v27[5] = *MEMORY[0x277CDC238];
    v27[6] = v10;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:7];
    v18 = [v17 mutableCopy];

    if (systemCopy)
    {
      [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CDC5D8]];
    }

    v19 = SecItemDelete(v18);
    v20 = v19;
    if (v19 != -25300 && v19)
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __72__POKeychainHelper_removeTokensFromKeychainWithService_username_system___block_invoke_27;
      v24[3] = &__block_descriptor_36_e14___NSError_8__0l;
      v25 = v19;
      v21 = __72__POKeychainHelper_removeTokensFromKeychainWithService_username_system___block_invoke_27(v24);
    }
  }

  else
  {
    v22 = __72__POKeychainHelper_removeTokensFromKeychainWithService_username_system___block_invoke();
    v20 = -67693;
  }

  return v20;
}

id __72__POKeychainHelper_removeTokensFromKeychainWithService_username_system___block_invoke()
{
  v0 = [POError errorWithCode:-1006 description:@"Values missing to delete credentials from keychain"];
  v1 = PO_LOG_POKeychainHelper(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __76__POKeychainHelper_addTokens_metaData_toKeychainForService_username_system___block_invoke_cold_1();
  }

  return v0;
}

id __72__POKeychainHelper_removeTokensFromKeychainWithService_username_system___block_invoke_27(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 description:@"Deleting keychain entry failed"];
  v2 = PO_LOG_POKeychainHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __22__POKeyWrap_wrapBlob___block_invoke_2_cold_1();
  }

  return v1;
}

- (BOOL)retrieveIdentityForTokenId:(id)id context:(id)context forSigning:(BOOL)signing hash:(id)hash identity:(__SecIdentity *)identity
{
  signingCopy = signing;
  v41[6] = *MEMORY[0x277D85DE8];
  idCopy = id;
  contextCopy = context;
  hashCopy = hash;
  v14 = hashCopy;
  if (idCopy)
  {
    result = 0;
    v15 = *MEMORY[0x277CDC228];
    v16 = *MEMORY[0x277CDC240];
    v17 = *MEMORY[0x277CDBEC8];
    v40[0] = *MEMORY[0x277CDC228];
    v40[1] = v17;
    v18 = *MEMORY[0x277CDBED0];
    v41[0] = v16;
    v41[1] = v18;
    v19 = *MEMORY[0x277CDC550];
    v40[2] = *MEMORY[0x277CDC560];
    v40[3] = v19;
    v41[2] = MEMORY[0x277CBEC38];
    v41[3] = MEMORY[0x277CBEC38];
    v20 = *MEMORY[0x277CDC5A0];
    v21 = *MEMORY[0x277CDC158];
    v40[4] = *MEMORY[0x277CDC5A0];
    v40[5] = v21;
    v41[4] = contextCopy;
    v41[5] = idCopy;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:6];
    v23 = [v22 mutableCopy];

    if (signingCopy)
    {
      [v23 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CDBF68]];
    }

    if (v14)
    {
      [v23 setObject:v14 forKeyedSubscript:*MEMORY[0x277CDBF28]];
    }

    v24 = SecItemCopyMatching(v23, &result);
    if (v24)
    {
      v25 = PO_LOG_POKeychainHelper(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [POKeychainHelper retrieveIdentityForTokenId:context:forSigning:hash:identity:];
      }

      v26 = 0;
    }

    else
    {
      v25 = result;
      identityCopy = identity;
      v29 = *MEMORY[0x277CDC5F0];
      v30 = [result objectForKeyedSubscript:*MEMORY[0x277CDC5F0]];
      v38[0] = v15;
      v38[1] = v29;
      v39[0] = v16;
      v39[1] = v30;
      v31 = v30;
      v32 = *MEMORY[0x277CDC438];
      v38[2] = *MEMORY[0x277CDC428];
      v38[3] = v20;
      v39[2] = v32;
      v39[3] = contextCopy;
      v38[4] = *MEMORY[0x277CDC568];
      v39[4] = *MEMORY[0x277CBED28];
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:5];
      v34 = SecItemCopyMatching(v33, identityCopy);
      if (v34 || !*identityCopy)
      {
        v35 = PO_LOG_POKeychainHelper(v34);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [POKeychainHelper retrieveIdentityForTokenId:context:forSigning:hash:identity:];
        }

        v26 = 0;
      }

      else
      {
        v26 = 1;
      }
    }
  }

  else
  {
    v27 = PO_LOG_POKeychainHelper(hashCopy);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [POKeychainHelper retrieveIdentityForTokenId:context:forSigning:hash:identity:];
    }

    v26 = 0;
  }

  return v26;
}

- (BOOL)retrieveCertAndKeyForTokenId:(id)id context:(id)context forSigning:(BOOL)signing hash:(id)hash certificate:(__SecCertificate *)certificate privateKey:(__SecKey *)key
{
  identityRef = 0;
  v10 = [(POKeychainHelper *)self retrieveIdentityForTokenId:id context:context forSigning:signing hash:hash identity:&identityRef];
  if ((v10 & 1) == 0)
  {
    v14 = PO_LOG_POKeychainHelper(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [POKeychainHelper retrieveCertAndKeyForTokenId:context:forSigning:hash:certificate:privateKey:];
    }

    return 0;
  }

  v11 = SecIdentityCopyCertificate(identityRef, certificate);
  if (v11)
  {
    v12 = PO_LOG_POKeychainHelper(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [POKeychainHelper retrieveCertAndKeyForTokenId:context:forSigning:hash:certificate:privateKey:];
    }

LABEL_5:

    result = identityRef;
    if (!identityRef)
    {
      return result;
    }

    CFRelease(identityRef);
    return 0;
  }

  v15 = SecIdentityCopyPrivateKey(identityRef, key);
  if (!*key)
  {
    v12 = PO_LOG_POKeychainHelper(v15);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [POKeychainHelper retrieveCertAndKeyForTokenId:context:forSigning:hash:certificate:privateKey:];
    }

    goto LABEL_5;
  }

  if (identityRef)
  {
    CFRelease(identityRef);
  }

  return 1;
}

- (BOOL)_saveAttestationToKeychain:(id)keychain extensionIdentifier:(id)identifier keyHash:(id)hash error:(id *)error
{
  v10 = MEMORY[0x277CBEAA8];
  hashCopy = hash;
  identifierCopy = identifier;
  keychainCopy = keychain;
  date = [v10 date];
  LOBYTE(error) = [(POKeychainHelper *)self _saveAttestationToKeychain:keychainCopy extensionIdentifier:identifierCopy keyHash:hashCopy attestationDate:date error:error];

  return error;
}

- (BOOL)_saveAttestationToKeychain:(id)keychain extensionIdentifier:(id)identifier keyHash:(id)hash attestationDate:(id)date error:(id *)error
{
  v33[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  hashCopy = hash;
  dateCopy = date;
  keychainCopy = keychain;
  v16 = PO_LOG_POKeychainHelper(keychainCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [POKeychainHelper _saveAttestationToKeychain:extensionIdentifier:keyHash:attestationDate:error:];
  }

  v31 = 0;
  v17 = [MEMORY[0x277CCAC58] dataWithPropertyList:keychainCopy format:100 options:0 error:&v31];

  v18 = v31;
  v19 = v18;
  if (v17)
  {
    hashCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", identifierCopy, hashCopy];
    v32 = @"kAttestationDate";
    v33[0] = dateCopy;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v22 = [(POKeychainHelper *)self addTokens:v17 metaData:v21 toKeychainForService:hashCopy username:@"com.apple.platformsso.attestation" system:1];

    v23 = v22 == 0;
    if (v22)
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __97__POKeychainHelper__saveAttestationToKeychain_extensionIdentifier_keyHash_attestationDate_error___block_invoke_38;
      v27[3] = &__block_descriptor_36_e14___NSError_8__0l;
      v28 = v22;
      v24 = __97__POKeychainHelper__saveAttestationToKeychain_extensionIdentifier_keyHash_attestationDate_error___block_invoke_38(v27);
      if (error)
      {
        v24 = v24;
        *error = v24;
      }

      v23 = 0;
    }
  }

  else
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __97__POKeychainHelper__saveAttestationToKeychain_extensionIdentifier_keyHash_attestationDate_error___block_invoke;
    v29[3] = &unk_279A3DC48;
    v30 = v18;
    v25 = __97__POKeychainHelper__saveAttestationToKeychain_extensionIdentifier_keyHash_attestationDate_error___block_invoke(v29);
    if (error)
    {
      v25 = v25;
      *error = v25;
    }

    v23 = 0;
    hashCopy = v30;
  }

  return v23;
}

id __97__POKeychainHelper__saveAttestationToKeychain_extensionIdentifier_keyHash_attestationDate_error___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to serialize attestation data"];
  v2 = PO_LOG_POKeychainHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __76__POKeychainHelper_addTokens_metaData_toKeychainForService_username_system___block_invoke_cold_1();
  }

  return v1;
}

id __97__POKeychainHelper__saveAttestationToKeychain_extensionIdentifier_keyHash_attestationDate_error___block_invoke_38(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 description:@"Failed to save attestation data in cache."];
  v2 = PO_LOG_POKeychainHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __22__POKeyWrap_wrapBlob___block_invoke_2_cold_1();
  }

  return v1;
}

- (id)_checkForCachedAttestationForExtensionIdentifier:(id)identifier keyHash:(id)hash
{
  hashCopy = hash;
  identifierCopy = identifier;
  v8 = PO_LOG_POKeychainHelper(identifierCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [POKeychainHelper _checkForCachedAttestationForExtensionIdentifier:keyHash:];
  }

  hashCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", identifierCopy, hashCopy];

  v29 = 0;
  v30 = 0;
  v10 = [(POKeychainHelper *)self retrieveTokensFromKeychainForService:hashCopy username:@"com.apple.platformsso.attestation" system:1 returningTokens:&v30 metaData:&v29];
  v11 = v30;
  v12 = v29;
  v13 = v12;
  if (v10)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __77__POKeychainHelper__checkForCachedAttestationForExtensionIdentifier_keyHash___block_invoke;
    v27[3] = &__block_descriptor_36_e14___NSError_8__0l;
    v28 = v10;
    v14 = __77__POKeychainHelper__checkForCachedAttestationForExtensionIdentifier_keyHash___block_invoke(v27);
    v15 = 0;
  }

  else
  {
    v16 = [v12 objectForKeyedSubscript:@"kAttestationDate"];
    timeIntervalSinceNow = [v16 timeIntervalSinceNow];
    if (v18 >= -7776000.0)
    {
      v25 = 0;
      v20 = [MEMORY[0x277CCAC58] propertyListWithData:v11 options:0 format:0 error:&v25];
      v19 = v25;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v20 count])
      {
        v15 = v20;
      }

      else
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __77__POKeychainHelper__checkForCachedAttestationForExtensionIdentifier_keyHash___block_invoke_45;
        v23[3] = &unk_279A3DC48;
        v24 = v19;
        v21 = __77__POKeychainHelper__checkForCachedAttestationForExtensionIdentifier_keyHash___block_invoke_45(v23);

        v15 = 0;
      }
    }

    else
    {
      v19 = PO_LOG_POKeychainHelper(timeIntervalSinceNow);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E8B1000, v19, OS_LOG_TYPE_INFO, "Cached attestation too old.", buf, 2u);
      }

      v15 = 0;
    }
  }

  return v15;
}

id __77__POKeychainHelper__checkForCachedAttestationForExtensionIdentifier_keyHash___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1004 description:@"Cached attestation not found."];
  v2 = PO_LOG_POKeychainHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __22__POKeyWrap_wrapBlob___block_invoke_2_cold_1();
  }

  return v1;
}

id __77__POKeychainHelper__checkForCachedAttestationForExtensionIdentifier_keyHash___block_invoke_45(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to deserialize attestation data"];
  v2 = PO_LOG_POKeychainHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __76__POKeychainHelper_addTokens_metaData_toKeychainForService_username_system___block_invoke_cold_1();
  }

  return v1;
}

- (void)_deleteCachedAttestationForExtensionIdentifier:(id)identifier key:(__SecKey *)key
{
  identifierCopy = identifier;
  if (key)
  {
    v9 = identifierCopy;
    v7 = [POSecKeyHelper publicKeyHashForKey:key];
    if (v7)
    {
      [(POKeychainHelper *)self _deleteCachedAttestationForExtensionIdentifier:v9 keyHash:v7];
    }

    else
    {
      v8 = __71__POKeychainHelper__deleteCachedAttestationForExtensionIdentifier_key___block_invoke();
    }

    identifierCopy = v9;
  }
}

id __71__POKeychainHelper__deleteCachedAttestationForExtensionIdentifier_key___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to get hash for key."];
  v1 = PO_LOG_POKeychainHelper(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __76__POKeychainHelper_addTokens_metaData_toKeychainForService_username_system___block_invoke_cold_1();
  }

  return v0;
}

- (void)_deleteCachedAttestationForExtensionIdentifier:(id)identifier keyHash:(id)hash
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", identifier, hash];
  v6 = [(POKeychainHelper *)self removeTokensFromKeychainWithService:v5 username:@"com.apple.platformsso.attestation" system:1];
  if (v6 != -25300 && v6 != 0)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __75__POKeychainHelper__deleteCachedAttestationForExtensionIdentifier_keyHash___block_invoke;
    v9[3] = &__block_descriptor_36_e14___NSError_8__0l;
    v10 = v6;
    v8 = __75__POKeychainHelper__deleteCachedAttestationForExtensionIdentifier_keyHash___block_invoke(v9);
  }
}

id __75__POKeychainHelper__deleteCachedAttestationForExtensionIdentifier_keyHash___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1004 description:@"Failed to remove cached attestation."];
  v2 = PO_LOG_POKeychainHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __22__POKeyWrap_wrapBlob___block_invoke_2_cold_1();
  }

  return v1;
}

- (void)_deleteAllCachedAttestations
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

id __48__POKeychainHelper__deleteAllCachedAttestations__block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1004 description:@"Failed to remove cached attestations."];
  v2 = PO_LOG_POKeychainHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __22__POKeyWrap_wrapBlob___block_invoke_2_cold_1();
  }

  return v1;
}

- (void)addTokens:metaData:toKeychainForService:username:system:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __76__POKeychainHelper_addTokens_metaData_toKeychainForService_username_system___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)retrieveTokensFromKeychainForService:username:system:returningTokens:metaData:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)retrieveTokensFromKeychainForService:username:system:returningTokens:metaData:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)removeTokensFromKeychainWithService:username:system:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)retrieveIdentityForTokenId:context:forSigning:hash:identity:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)retrieveIdentityForTokenId:context:forSigning:hash:identity:.cold.2()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)retrieveIdentityForTokenId:context:forSigning:hash:identity:.cold.3()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)retrieveCertAndKeyForTokenId:context:forSigning:hash:certificate:privateKey:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)retrieveCertAndKeyForTokenId:context:forSigning:hash:certificate:privateKey:.cold.2()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)retrieveCertAndKeyForTokenId:context:forSigning:hash:certificate:privateKey:.cold.3()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_saveAttestationToKeychain:extensionIdentifier:keyHash:attestationDate:error:.cold.1()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_checkForCachedAttestationForExtensionIdentifier:keyHash:.cold.1()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end