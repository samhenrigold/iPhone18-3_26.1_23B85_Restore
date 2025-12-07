@interface RMStoreProfilesAdapter
- (BOOL)_allowedPayloadType:(id)type store:(id)store;
- (BOOL)_canAssumeOwnershipOfProfile:(id)profile newProfile:(id)newProfile newDeclarationKey:(id)key store:(id)store;
- (BOOL)_canInstallProfile:(id)profile store:(id)store declarationKey:(id)key outAssumeOwnership:(BOOL *)ownership error:(id *)error;
- (BOOL)_canReplaceProfile:(id)profile newProfile:(id)newProfile newDeclarationKey:(id)key store:(id)store outAssumeOwnership:(BOOL *)ownership error:(id *)error;
- (BOOL)_canUninstallProfileWithIdentifier:(id)identifier store:(id)store error:(id *)error;
- (BOOL)_removeProfileWithIdentifier:(id)identifier error:(id *)error;
- (RMStoreProfilesAdapter)initWithScope:(int64_t)scope;
- (id)_allowedErSSOPayloadTypes;
- (id)_declarationKeyForProfile:(id)profile;
- (id)_declarationKeyForUserInfo:(id)info;
- (id)_disallowedPayloadTypes;
- (id)_installOptionsForStore:(id)store declarationKey:(id)key assumeOwnership:(BOOL)ownership;
- (id)_installProfileData:(id)data options:(id)options error:(id *)error;
- (id)_payloadStructure:(id)structure;
- (id)_personaIDForStore:(id)store;
- (id)_profileForIdentifier:(id)identifier rmOnly:(BOOL)only;
- (id)allProfileIdentifiers;
- (id)installedProfileIdentifierByDeclarationKey;
- (id)profileNameForIdentifier:(id)identifier;
- (void)installProfileData:(id)data store:(id)store declarationKey:(id)key completionHandler:(id)handler;
- (void)uninstallProfileWithIdentifier:(id)identifier store:(id)store completionHandler:(id)handler;
@end

@implementation RMStoreProfilesAdapter

- (id)installedProfileIdentifierByDeclarationKey
{
  v23 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  if ([(RMStoreProfilesAdapter *)self isSystemScope])
  {
    v4 = 19;
  }

  else
  {
    v4 = 9;
  }

  v5 = [mEMORY[0x277D262A0] installedProfileIdentifiersWithFilterFlags:v4];

  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [(RMStoreProfilesAdapter *)self _profileForIdentifier:v12 rmOnly:1, v18];
        v15 = [(RMStoreProfilesAdapter *)self _declarationKeyForProfile:v14];
        if (v15)
        {
          [v6 setObject:v12 forKeyedSubscript:v15];
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  profilesAdapter = [MEMORY[0x277D45F58] profilesAdapter];
  if (os_log_type_enabled(profilesAdapter, OS_LOG_TYPE_DEBUG))
  {
    [RMStoreProfilesAdapter installedProfileIdentifierByDeclarationKey];
  }

  return v6;
}

- (RMStoreProfilesAdapter)initWithScope:(int64_t)scope
{
  v5.receiver = self;
  v5.super_class = RMStoreProfilesAdapter;
  result = [(RMStoreProfilesAdapter *)&v5 init];
  if (result)
  {
    result->_isSystemScope = scope == 1;
  }

  return result;
}

- (id)allProfileIdentifiers
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  if ([(RMStoreProfilesAdapter *)self isSystemScope])
  {
    v4 = 19;
  }

  else
  {
    v4 = 9;
  }

  v5 = [mEMORY[0x277D262A0] installedProfileIdentifiersWithFilterFlags:v4];

  profilesAdapter = [MEMORY[0x277D45F58] profilesAdapter];
  if (os_log_type_enabled(profilesAdapter, OS_LOG_TYPE_DEBUG))
  {
    [RMStoreProfilesAdapter allProfileIdentifiers];
  }

  v7 = [MEMORY[0x277CBEB98] setWithArray:v5];

  return v7;
}

- (id)profileNameForIdentifier:(id)identifier
{
  v3 = [(RMStoreProfilesAdapter *)self _profileForIdentifier:identifier rmOnly:1];
  friendlyName = [v3 friendlyName];

  return friendlyName;
}

- (void)installProfileData:(id)data store:(id)store declarationKey:(id)key completionHandler:(id)handler
{
  dataCopy = data;
  storeCopy = store;
  keyCopy = key;
  handlerCopy = handler;
  v23 = 0;
  v22 = 0;
  v14 = [(RMStoreProfilesAdapter *)self _canInstallProfile:dataCopy store:storeCopy declarationKey:keyCopy outAssumeOwnership:&v23 error:&v22];
  v15 = v22;
  if (v14)
  {
    v16 = [(RMStoreProfilesAdapter *)self _installOptionsForStore:storeCopy declarationKey:keyCopy assumeOwnership:v23];
    v21 = v15;
    v17 = [(RMStoreProfilesAdapter *)self _installProfileData:dataCopy options:v16 error:&v21];
    v18 = v21;

    profilesAdapter = [MEMORY[0x277D45F58] profilesAdapter];
    v20 = profilesAdapter;
    if (v17)
    {
      if (os_log_type_enabled(profilesAdapter, OS_LOG_TYPE_DEBUG))
      {
        [RMStoreProfilesAdapter installProfileData:store:declarationKey:completionHandler:];
      }

      handlerCopy[2](handlerCopy, v17, 0);
    }

    else
    {
      if (os_log_type_enabled(profilesAdapter, OS_LOG_TYPE_ERROR))
      {
        [RMStoreProfilesAdapter installProfileData:store:declarationKey:completionHandler:];
      }

      (handlerCopy)[2](handlerCopy, 0, v18);
    }
  }

  else
  {
    (handlerCopy)[2](handlerCopy, 0, v15);
    v18 = v15;
  }
}

- (void)uninstallProfileWithIdentifier:(id)identifier store:(id)store completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v18 = 0;
  v10 = [(RMStoreProfilesAdapter *)self _canUninstallProfileWithIdentifier:identifierCopy store:store error:&v18];
  v11 = v18;
  v12 = v11;
  if (v10)
  {
    v17 = v11;
    v13 = [(RMStoreProfilesAdapter *)self _removeProfileWithIdentifier:identifierCopy error:&v17];
    v14 = v17;

    profilesAdapter = [MEMORY[0x277D45F58] profilesAdapter];
    v16 = profilesAdapter;
    if (v13)
    {
      if (os_log_type_enabled(profilesAdapter, OS_LOG_TYPE_DEBUG))
      {
        [RMStoreProfilesAdapter uninstallProfileWithIdentifier:store:completionHandler:];
      }
    }

    else if (os_log_type_enabled(profilesAdapter, OS_LOG_TYPE_ERROR))
    {
      [RMStoreProfilesAdapter uninstallProfileWithIdentifier:store:completionHandler:];
    }
  }

  else
  {
    v14 = v11;
  }

  handlerCopy[2](handlerCopy, v14);
}

- (id)_installProfileData:(id)data options:(id)options error:(id *)error
{
  v7 = MEMORY[0x277D262A0];
  optionsCopy = options;
  dataCopy = data;
  sharedConnection = [v7 sharedConnection];
  v11 = [sharedConnection installProfileData:dataCopy options:optionsCopy outError:error];

  return v11;
}

- (BOOL)_removeProfileWithIdentifier:(id)identifier error:(id *)error
{
  v5 = MEMORY[0x277D262A0];
  identifierCopy = identifier;
  sharedConnection = [v5 sharedConnection];
  if ([(RMStoreProfilesAdapter *)self isSystemScope])
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [sharedConnection removeProfileWithIdentifier:identifierCopy installationType:v8];

  return 1;
}

- (id)_installOptionsForStore:(id)store declarationKey:(id)key assumeOwnership:(BOOL)ownership
{
  ownershipCopy = ownership;
  v24[1] = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v23 = @"DeclarationKey";
  v9 = [key key];
  v24[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];

  v11 = *MEMORY[0x277D263F0];
  v22[0] = @"com.apple.RemoteManagement.ProfilesController";
  v12 = *MEMORY[0x277D263E8];
  v21[0] = v11;
  v21[1] = v12;
  v13 = MEMORY[0x277CCABB0];
  if ([(RMStoreProfilesAdapter *)self isSystemScope])
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v15 = [v13 numberWithInteger:v14];
  v16 = *MEMORY[0x277D26430];
  v22[1] = v15;
  v22[2] = MEMORY[0x277CBEC38];
  v21[2] = v16;
  v21[3] = @"RemoteManagement.UserInfo";
  v22[3] = v10;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
  v18 = [v17 mutableCopy];

  if (![storeCopy type])
  {
    [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D26438]];
  }

  if ([storeCopy type] != 2)
  {
    [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D26410]];
  }

  if (ownershipCopy)
  {
    [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D263D0]];
  }

  profilesAdapter = [MEMORY[0x277D45F58] profilesAdapter];
  if (os_log_type_enabled(profilesAdapter, OS_LOG_TYPE_DEBUG))
  {
    [RMStoreProfilesAdapter _installOptionsForStore:declarationKey:assumeOwnership:];
  }

  return v18;
}

- (id)_personaIDForStore:(id)store
{
  storeCopy = store;
  if ([storeCopy dataSeparated])
  {
    personaIdentifier = [storeCopy personaIdentifier];
  }

  else
  {
    personaIdentifier = 0;
  }

  return personaIdentifier;
}

- (BOOL)_canInstallProfile:(id)profile store:(id)store declarationKey:(id)key outAssumeOwnership:(BOOL *)ownership error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  keyCopy = key;
  v43 = 0;
  v14 = [MEMORY[0x277D26290] profileWithData:profile outError:&v43];
  v15 = v43;
  v16 = v15;
  if (v14)
  {
    ownershipCopy = ownership;
    errorCopy = error;
    v37 = v15;
    v38 = keyCopy;
    identifier = [v14 identifier];
    profilesAdapter = [MEMORY[0x277D45F58] profilesAdapter];
    if (os_log_type_enabled(profilesAdapter, OS_LOG_TYPE_DEBUG))
    {
      [RMStoreProfilesAdapter _canInstallProfile:store:declarationKey:outAssumeOwnership:error:];
    }

    [v14 payloads];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v19 = v42 = 0u;
    v20 = [v19 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v40;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v40 != v22)
          {
            objc_enumerationMutation(v19);
          }

          type = [*(*(&v39 + 1) + 8 * i) type];
          lowercaseString = [type lowercaseString];

          if (![(RMStoreProfilesAdapter *)self _allowedPayloadType:lowercaseString store:storeCopy])
          {
            profilesAdapter2 = [MEMORY[0x277D45F58] profilesAdapter];
            if (os_log_type_enabled(profilesAdapter2, OS_LOG_TYPE_ERROR))
            {
              [RMStoreProfilesAdapter _canInstallProfile:store:declarationKey:outAssumeOwnership:error:];
            }

            v16 = v37;
            keyCopy = v38;
            if (errorCopy)
            {
              v29 = [MEMORY[0x277D45F40] createProfilePayloadNotAllowedErrorWithPayloadType:lowercaseString];
              if (v29)
              {
                v29 = v29;
                *errorCopy = v29;
              }
            }

            v27 = 0;
            v26 = v19;
            goto LABEL_31;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v39 objects:v44 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    v26 = [(RMStoreProfilesAdapter *)self _profileForIdentifier:identifier rmOnly:0];
    if (v26)
    {
      keyCopy = v38;
      v27 = [(RMStoreProfilesAdapter *)self _canReplaceProfile:v26 newProfile:v14 newDeclarationKey:v38 store:storeCopy outAssumeOwnership:ownershipCopy error:errorCopy];
    }

    else
    {
      profilesAdapter3 = [MEMORY[0x277D45F58] profilesAdapter];
      keyCopy = v38;
      if (os_log_type_enabled(profilesAdapter3, OS_LOG_TYPE_DEBUG))
      {
        [RMStoreProfilesAdapter _canInstallProfile:store:declarationKey:outAssumeOwnership:error:];
      }

      v27 = 1;
    }

    v16 = v37;
LABEL_31:

    goto LABEL_32;
  }

  profilesAdapter4 = [MEMORY[0x277D45F58] profilesAdapter];
  if (os_log_type_enabled(profilesAdapter4, OS_LOG_TYPE_ERROR))
  {
    [RMStoreProfilesAdapter _canInstallProfile:store:declarationKey:outAssumeOwnership:error:];
  }

  if (error)
  {
    v31 = [MEMORY[0x277D45F40] createProfileInvalidErrorWithUnderlyingError:v16];
    identifier = v31;
    if (v31)
    {
      v32 = v31;
      v27 = 0;
      *error = identifier;
    }

    else
    {
      v27 = 0;
    }

LABEL_32:

    goto LABEL_33;
  }

  v27 = 0;
LABEL_33:

  return v27;
}

- (BOOL)_canReplaceProfile:(id)profile newProfile:(id)newProfile newDeclarationKey:(id)key store:(id)store outAssumeOwnership:(BOOL *)ownership error:(id *)error
{
  profileCopy = profile;
  newProfileCopy = newProfile;
  keyCopy = key;
  storeCopy = store;
  v17 = [(RMStoreProfilesAdapter *)self _declarationKeyForProfile:profileCopy];
  identifier = [profileCopy identifier];
  profilesAdapter = [MEMORY[0x277D45F58] profilesAdapter];
  if (os_log_type_enabled(profilesAdapter, OS_LOG_TYPE_DEBUG))
  {
    [RMStoreProfilesAdapter _canReplaceProfile:newProfile:newDeclarationKey:store:outAssumeOwnership:error:];
  }

  if (v17)
  {
    subscriberIdentifier = [v17 subscriberIdentifier];
    subscriberIdentifier2 = [keyCopy subscriberIdentifier];
    v22 = [subscriberIdentifier isEqualToString:subscriberIdentifier2];

    if (v22)
    {
      storeIdentifier = [v17 storeIdentifier];
      storeIdentifier2 = [keyCopy storeIdentifier];
      v25 = [storeIdentifier isEqualToString:storeIdentifier2];

      if (v25)
      {
        declarationIdentifier = [v17 declarationIdentifier];
        declarationIdentifier2 = [keyCopy declarationIdentifier];
        v28 = [declarationIdentifier isEqualToString:declarationIdentifier2];

        if (v28)
        {
          errorCopy = 1;
          goto LABEL_21;
        }

        profilesAdapter2 = [MEMORY[0x277D45F58] profilesAdapter];
        if (os_log_type_enabled(profilesAdapter2, OS_LOG_TYPE_ERROR))
        {
          [RMStoreProfilesAdapter _canReplaceProfile:newProfile:newDeclarationKey:store:outAssumeOwnership:error:];
        }
      }

      else
      {
        profilesAdapter2 = [MEMORY[0x277D45F58] profilesAdapter];
        if (os_log_type_enabled(profilesAdapter2, OS_LOG_TYPE_ERROR))
        {
          [RMStoreProfilesAdapter _canReplaceProfile:newProfile:newDeclarationKey:store:outAssumeOwnership:error:];
        }
      }
    }

    else
    {
      profilesAdapter2 = [MEMORY[0x277D45F58] profilesAdapter];
      if (os_log_type_enabled(profilesAdapter2, OS_LOG_TYPE_ERROR))
      {
        [RMStoreProfilesAdapter _canReplaceProfile:newProfile:newDeclarationKey:store:outAssumeOwnership:error:];
      }
    }
  }

  else if ([(RMStoreProfilesAdapter *)self _canAssumeOwnershipOfProfile:profileCopy newProfile:newProfileCopy newDeclarationKey:keyCopy store:storeCopy])
  {
    errorCopy = 1;
    *ownership = 1;
    goto LABEL_21;
  }

  errorCopy = error;
  if (error)
  {
    v31 = [MEMORY[0x277D45F40] createProfileCannotReplaceOtherProfile:identifier];
    if (v31)
    {
      v31 = v31;
      *error = v31;
    }

    errorCopy = 0;
  }

LABEL_21:

  return errorCopy;
}

- (BOOL)_canAssumeOwnershipOfProfile:(id)profile newProfile:(id)newProfile newDeclarationKey:(id)key store:(id)store
{
  profileCopy = profile;
  newProfileCopy = newProfile;
  keyCopy = key;
  storeCopy = store;
  identifier = [profileCopy identifier];
  profilesAdapter = [MEMORY[0x277D45F58] profilesAdapter];
  if (os_log_type_enabled(profilesAdapter, OS_LOG_TYPE_DEBUG))
  {
    [RMStoreProfilesAdapter _canAssumeOwnershipOfProfile:newProfile:newDeclarationKey:store:];
  }

  enrollmentURL = [storeCopy enrollmentURL];

  scheme = [enrollmentURL scheme];
  v18 = [scheme isEqualToString:@"mdm"];

  if ((v18 & 1) == 0)
  {
    profilesAdapter2 = [MEMORY[0x277D45F58] profilesAdapter];
    if (os_log_type_enabled(profilesAdapter2, OS_LOG_TYPE_ERROR))
    {
      [RMStoreProfilesAdapter _canAssumeOwnershipOfProfile:profilesAdapter2 newProfile:? newDeclarationKey:? store:?];
    }

    goto LABEL_12;
  }

  if ([(RMStoreProfilesAdapter *)self _isManagedByMDM:profileCopy])
  {
    subscriberIdentifier = [keyCopy subscriberIdentifier];
    v20 = [subscriberIdentifier isEqualToString:@"com.apple.RemoteManagement.InteractiveLegacyProfilesExtension"];

    if (v20)
    {
      profilesAdapter2 = [MEMORY[0x277D45F58] profilesAdapter];
      if (os_log_type_enabled(profilesAdapter2, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    profilesAdapter2 = [newProfileCopy UUID];
    uUID = [profileCopy UUID];
    if ([profilesAdapter2 isEqualToString:uUID])
    {
      profilesAdapter4 = [(RMStoreProfilesAdapter *)self _payloadStructure:newProfileCopy];
      v26 = [(RMStoreProfilesAdapter *)self _payloadStructure:profileCopy];
      if ([profilesAdapter4 isEqualToSet:v26])
      {
        profilesAdapter3 = [MEMORY[0x277D45F58] profilesAdapter];
        if (os_log_type_enabled(profilesAdapter3, OS_LOG_TYPE_DEBUG))
        {
          [RMStoreProfilesAdapter _canAssumeOwnershipOfProfile:newProfile:newDeclarationKey:store:];
        }

        v22 = 1;
LABEL_23:

        goto LABEL_13;
      }
    }

    profilesAdapter4 = [MEMORY[0x277D45F58] profilesAdapter];
    if (os_log_type_enabled(profilesAdapter4, OS_LOG_TYPE_ERROR))
    {
      [RMStoreProfilesAdapter _canAssumeOwnershipOfProfile:newProfile:newDeclarationKey:store:];
    }

    v22 = 0;
    goto LABEL_23;
  }

  profilesAdapter2 = [MEMORY[0x277D45F58] profilesAdapter];
  if (os_log_type_enabled(profilesAdapter2, OS_LOG_TYPE_ERROR))
  {
LABEL_11:
    [RMStoreProfilesAdapter _canAssumeOwnershipOfProfile:newProfile:newDeclarationKey:store:];
  }

LABEL_12:
  v22 = 0;
LABEL_13:

  return v22;
}

- (id)_payloadStructure:(id)structure
{
  v22 = *MEMORY[0x277D85DE8];
  payloads = [structure payloads];
  v4 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(payloads, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = payloads;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        identifier = [v10 identifier];
        v20[0] = identifier;
        uUID = [v10 UUID];
        v20[1] = uUID;
        type = [v10 type];
        v20[2] = type;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];

        [v4 addObject:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)_canUninstallProfileWithIdentifier:(id)identifier store:(id)store error:(id *)error
{
  identifierCopy = identifier;
  storeCopy = store;
  profilesAdapter = [MEMORY[0x277D45F58] profilesAdapter];
  if (os_log_type_enabled(profilesAdapter, OS_LOG_TYPE_DEBUG))
  {
    [RMStoreProfilesAdapter _canUninstallProfileWithIdentifier:store:error:];
  }

  v11 = [(RMStoreProfilesAdapter *)self _profileForIdentifier:identifierCopy rmOnly:1];
  if (v11)
  {
    v12 = [(RMStoreProfilesAdapter *)self _declarationKeyForProfile:v11];
    if (v12 || ([identifierCopy hasPrefix:@"com.apple.RemoteManagement.PasscodeSettingsExtension"] & 1) != 0)
    {
      if (!storeCopy || ([v12 storeIdentifier], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(storeCopy, "identifier"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqualToString:", v14), v14, v13, (v15 & 1) != 0))
      {
        v16 = 1;
LABEL_24:

        goto LABEL_25;
      }

      profilesAdapter2 = [MEMORY[0x277D45F58] profilesAdapter];
      if (os_log_type_enabled(profilesAdapter2, OS_LOG_TYPE_ERROR))
      {
        [RMStoreProfilesAdapter _canReplaceProfile:newProfile:newDeclarationKey:store:outAssumeOwnership:error:];
      }
    }

    else
    {
      profilesAdapter2 = [MEMORY[0x277D45F58] profilesAdapter];
      if (os_log_type_enabled(profilesAdapter2, OS_LOG_TYPE_ERROR))
      {
        [RMStoreProfilesAdapter _canUninstallProfileWithIdentifier:store:error:];
      }
    }

    if (error)
    {
      v21 = [MEMORY[0x277D45F40] createProfileCannotRemoveOtherProfile:identifierCopy];
      if (v21)
      {
        v21 = v21;
        *error = v21;
      }
    }

    goto LABEL_23;
  }

  profilesAdapter3 = [MEMORY[0x277D45F58] profilesAdapter];
  if (os_log_type_enabled(profilesAdapter3, OS_LOG_TYPE_ERROR))
  {
    [RMStoreProfilesAdapter _canUninstallProfileWithIdentifier:store:error:];
  }

  if (error)
  {
    v18 = [MEMORY[0x277D45F40] createProfileCannotFindRemoveProfile:identifierCopy];
    v12 = v18;
    if (v18)
    {
      v19 = v18;
      v16 = 0;
      *error = v12;
      goto LABEL_24;
    }

LABEL_23:
    v16 = 0;
    goto LABEL_24;
  }

  v16 = 0;
LABEL_25:

  return v16;
}

- (id)_profileForIdentifier:(id)identifier rmOnly:(BOOL)only
{
  onlyCopy = only;
  identifierCopy = identifier;
  isSystemScope = [(RMStoreProfilesAdapter *)self isSystemScope];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v9 = mEMORY[0x277D262A0];
  if (isSystemScope)
  {
    [mEMORY[0x277D262A0] installedSystemProfileWithIdentifier:identifierCopy];
  }

  else
  {
    [mEMORY[0x277D262A0] installedUserProfileWithIdentifier:identifierCopy];
  }
  v10 = ;

  if (!onlyCopy || ([(RMStoreProfilesAdapter *)self _declarationKeyForProfile:v10], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v11 = v10;
  }

  return v11;
}

- (id)_declarationKeyForProfile:(id)profile
{
  installOptions = [profile installOptions];
  v5 = [(RMStoreProfilesAdapter *)self _declarationKeyForUserInfo:installOptions];

  return v5;
}

- (id)_declarationKeyForUserInfo:(id)info
{
  v3 = [info objectForKeyedSubscript:@"RemoteManagement.UserInfo"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 objectForKeyedSubscript:@"DeclarationKey"];
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = [RMStoreDeclarationKey newDeclarationKey:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_allowedPayloadType:(id)type store:(id)store
{
  typeCopy = type;
  if ([RMErSSOStore isPreEnrollmentErSSOStore:store])
  {
    _allowedErSSOPayloadTypes = [(RMStoreProfilesAdapter *)self _allowedErSSOPayloadTypes];
    v8 = [_allowedErSSOPayloadTypes containsObject:typeCopy];
  }

  else
  {
    _allowedErSSOPayloadTypes = [(RMStoreProfilesAdapter *)self _disallowedPayloadTypes];
    v9 = [_allowedErSSOPayloadTypes containsObject:typeCopy];

    v8 = v9 ^ 1;
  }

  return v8;
}

- (id)_disallowedPayloadTypes
{
  if (_disallowedPayloadTypes_onceToken != -1)
  {
    [RMStoreProfilesAdapter _disallowedPayloadTypes];
  }

  v3 = _disallowedPayloadTypes_disallowedPayloadTypes;

  return v3;
}

uint64_t __49__RMStoreProfilesAdapter__disallowedPayloadTypes__block_invoke()
{
  _disallowedPayloadTypes_disallowedPayloadTypes = [MEMORY[0x277CBEB98] setWithArray:&unk_287474D68];

  return MEMORY[0x2821F96F8]();
}

- (id)_allowedErSSOPayloadTypes
{
  if (_allowedErSSOPayloadTypes_onceToken != -1)
  {
    [RMStoreProfilesAdapter _allowedErSSOPayloadTypes];
  }

  v3 = _allowedErSSOPayloadTypes_allowedErSSOPayloadTypes;

  return v3;
}

uint64_t __51__RMStoreProfilesAdapter__allowedErSSOPayloadTypes__block_invoke()
{
  _allowedErSSOPayloadTypes_allowedErSSOPayloadTypes = [MEMORY[0x277CBEB98] setWithArray:&unk_287474D80];

  return MEMORY[0x2821F96F8]();
}

@end