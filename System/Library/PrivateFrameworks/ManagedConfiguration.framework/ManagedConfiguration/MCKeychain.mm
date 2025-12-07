@interface MCKeychain
+ (BOOL)itemExistsInKeychain:(void *)keychain useSystemKeychain:(BOOL)systemKeychain;
+ (BOOL)itemExistsInKeychain:(void *)keychain useSystemKeychain:(BOOL)systemKeychain enforcePersonalPersona:(BOOL)persona;
+ (BOOL)setData:(id)data forService:(id)service account:(id)account label:(id)label description:(id)description access:(void *)access group:(id)group useSystemKeychain:(BOOL)self0 sysBound:(BOOL)self1 enforcePersonalPersona:(BOOL)self2 outError:(id *)self3;
+ (BOOL)setData:(id)data forService:(id)service account:(id)account label:(id)label description:(id)description access:(void *)access group:(id)group useSystemKeychain:(BOOL)self0 sysBound:(BOOL)self1 outError:(id *)self2;
+ (BOOL)setString:(id)string forService:(id)service account:(id)account label:(id)label description:(id)description access:(void *)access group:(id)group useSystemKeychain:(BOOL)self0 sysBound:(BOOL)self1 outError:(id *)self2;
+ (__CFDictionary)_newQueryWithService:(id)service account:(id)account label:(id)label description:(id)description group:(id)group useSystemKeychain:(BOOL)keychain outError:(id *)error;
+ (__SecCertificate)copyCertificateWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain;
+ (__SecCertificate)copyCertificateWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona;
+ (__SecIdentity)copyIdentityWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain;
+ (__SecIdentity)copyIdentityWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona;
+ (id)canonicalPersistentReferenceForItemWithPersistentReference:(id)reference inSystemKeychain:(BOOL)keychain;
+ (id)copyCertificatesWithPersistentIDs:(id)ds useSystemKeychain:(BOOL)keychain;
+ (id)dataFromService:(id)service account:(id)account label:(id)label description:(id)description group:(id)group useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona outError:(id *)self0;
+ (id)dataFromService:(id)service account:(id)account label:(id)label description:(id)description group:(id)group useSystemKeychain:(BOOL)keychain outError:(id *)error;
+ (id)saveItem:(void *)item withLabel:(id)label group:(id)group useSystemKeychain:(BOOL)keychain;
+ (id)saveItem:(void *)item withLabel:(id)label group:(id)group useSystemKeychain:(BOOL)keychain accessibility:(__CFString *)accessibility;
+ (id)saveItem:(void *)item withLabel:(id)label group:(id)group useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona;
+ (id)saveItem:(void *)item withLabel:(id)label group:(id)group useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona accessibility:(__CFString *)accessibility;
+ (id)stringFromService:(id)service account:(id)account label:(id)label description:(id)description group:(id)group useSystemKeychain:(BOOL)keychain outError:(id *)error;
+ (void)copyItemWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain;
+ (void)copyItemWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona;
+ (void)removeItemForService:(id)service account:(id)account label:(id)label description:(id)description useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona group:(id)group;
+ (void)removeItemForService:(id)service account:(id)account label:(id)label description:(id)description useSystemKeychain:(BOOL)keychain group:(id)group;
+ (void)removeItemWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain;
+ (void)removeItemWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona;
@end

@implementation MCKeychain

+ (__CFDictionary)_newQueryWithService:(id)service account:(id)account label:(id)label description:(id)description group:(id)group useSystemKeychain:(BOOL)keychain outError:(id *)error
{
  keychainCopy = keychain;
  serviceCopy = service;
  accountCopy = account;
  labelCopy = label;
  descriptionCopy = description;
  groupCopy = group;
  if ([serviceCopy length])
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE88], serviceCopy);
    if ([accountCopy length])
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AC30], accountCopy);
    }

    if ([labelCopy length])
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ADC8], labelCopy);
    }

    if ([descriptionCopy length])
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ACE0], descriptionCopy);
    }

    if ([groupCopy length])
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD0], groupCopy);
    }

    if (keychainCopy)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B3A8], MEMORY[0x1E695E118]);
    }
  }

  else
  {
    if (error)
    {
      v27 = MEMORY[0x1E696ABC0];
      v28 = MCErrorArray(@"KEYCHAIN_ERROR_CANNOT_CREATE_QUERY", v19, v20, v21, v22, v23, v24, v25, 0);
      *error = [v27 MCErrorWithDomain:@"MCKeychainErrorDomain" code:6002 descriptionArray:v28 errorType:@"MCFatalError"];
    }

    Mutable = 0;
  }

  return Mutable;
}

+ (id)stringFromService:(id)service account:(id)account label:(id)label description:(id)description group:(id)group useSystemKeychain:(BOOL)keychain outError:(id *)error
{
  v9 = [MCKeychain dataFromService:service account:account label:label description:description group:group useSystemKeychain:keychain outError:error];
  v10 = v9;
  if (v9)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{objc_msgSend(v9, "bytes")}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)setString:(id)string forService:(id)service account:(id)account label:(id)label description:(id)description access:(void *)access group:(id)group useSystemKeychain:(BOOL)self0 sysBound:(BOOL)self1 outError:(id *)self2
{
  groupCopy = group;
  descriptionCopy = description;
  labelCopy = label;
  accountCopy = account;
  serviceCopy = service;
  v22 = [string dataUsingEncoding:4];
  LOWORD(v25) = __PAIR16__(bound, keychain);
  v23 = [MCKeychain setData:v22 forService:serviceCopy account:accountCopy label:labelCopy description:descriptionCopy access:access group:groupCopy useSystemKeychain:v25 sysBound:error outError:?];

  return v23;
}

+ (BOOL)setData:(id)data forService:(id)service account:(id)account label:(id)label description:(id)description access:(void *)access group:(id)group useSystemKeychain:(BOOL)self0 sysBound:(BOOL)self1 outError:(id *)self2
{
  v17 = MEMORY[0x1E69AD428];
  groupCopy = group;
  descriptionCopy = description;
  labelCopy = label;
  accountCopy = account;
  serviceCopy = service;
  dataCopy = data;
  sharedConfiguration = [v17 sharedConfiguration];
  personaID = [sharedConfiguration personaID];
  BYTE2(v28) = personaID != 0;
  LOWORD(v28) = __PAIR16__(bound, keychain);
  v26 = [MCKeychain setData:"setData:forService:account:label:description:access:group:useSystemKeychain:sysBound:enforcePersonalPersona:outError:" forService:dataCopy account:serviceCopy label:accountCopy description:labelCopy access:descriptionCopy group:access useSystemKeychain:groupCopy sysBound:v28 enforcePersonalPersona:error outError:?];

  return v26;
}

+ (BOOL)setData:(id)data forService:(id)service account:(id)account label:(id)label description:(id)description access:(void *)access group:(id)group useSystemKeychain:(BOOL)self0 sysBound:(BOOL)self1 enforcePersonalPersona:(BOOL)self2 outError:(id *)self3
{
  v73 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  serviceCopy = service;
  accountCopy = account;
  labelCopy = label;
  descriptionCopy = description;
  groupCopy = group;
  v58 = serviceCopy;
  if ([dataCopy length])
  {
    v65 = 0;
    v31 = [MCKeychain _newQueryWithService:serviceCopy account:accountCopy label:labelCopy description:descriptionCopy group:groupCopy useSystemKeychain:keychain outError:&v65];
    v32 = v65;
    if (v32)
    {
      v33 = v32;
      if (v31)
      {
        CFRelease(v31);
      }

      goto LABEL_17;
    }

    LOBYTE(v57) = persona;
    v36 = [MCKeychain dataFromService:serviceCopy account:accountCopy label:labelCopy description:descriptionCopy group:groupCopy useSystemKeychain:keychain enforcePersonalPersona:v57 outError:0];
    *&v70 = 0;
    *(&v70 + 1) = &v70;
    v71 = 0x2020000000;
    v72 = 0;
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __131__MCKeychain_setData_forService_account_label_description_access_group_useSystemKeychain_sysBound_enforcePersonalPersona_outError___block_invoke;
    v59[3] = &unk_1E77CFEF8;
    v37 = v36;
    v60 = v37;
    v61 = dataCopy;
    v62 = &v70;
    accessCopy = access;
    v64 = v31;
    v38 = MEMORY[0x1AC55F990](v59);
    v39 = v38;
    if (persona)
    {
      v33 = [MEMORY[0x1E6999808] performBlockUnderPersonalPersona:v38];
    }

    else
    {
      (*(v38 + 16))(v38);
      v33 = 0;
    }

    CFRelease(v31);
    if (v33)
    {
      v40 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v67 = "+[MCKeychain setData:forService:account:label:description:access:group:useSystemKeychain:sysBound:enforcePersonalPersona:outError:]";
        v68 = 2112;
        v69 = v33;
        _os_log_impl(&dword_1A795B000, v40, OS_LOG_TYPE_ERROR, "%s: Failed to execute the block under personal persona. Error: %@", buf, 0x16u);
      }
    }

    else if (*(*(&v70 + 1) + 24))
    {
      v41 = MEMORY[0x1E696ABC0];
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", *(*(&v70 + 1) + 24)];
      v50 = MCErrorArray(@"KEYCHAIN_ERROR_CODE_P_CODE", v43, v44, v45, v46, v47, v48, v49, v42);
      v33 = [v41 MCErrorWithDomain:@"MCKeychainErrorDomain" code:6000 descriptionArray:v50 errorType:@"MCFatalError"];
    }

    else
    {
      v33 = 0;
    }

    _Block_object_dispose(&v70, 8);
  }

  else
  {
    v34 = MEMORY[0x1E696ABC0];
    v35 = MCErrorArray(@"KEYCHAIN_ERROR_EMPTY_DATA", v24, v25, v26, v27, v28, v29, v30, 0);
    v33 = [v34 MCErrorWithDomain:@"MCKeychainErrorDomain" code:6001 descriptionArray:v35 errorType:@"MCFatalError"];
  }

  if (!v33)
  {
    v55 = 1;
    goto LABEL_23;
  }

LABEL_17:
  if (error)
  {
    v51 = v33;
    *error = v33;
  }

  v52 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    v53 = v52;
    mCVerboseDescription = [v33 MCVerboseDescription];
    LODWORD(v70) = 138543362;
    *(&v70 + 4) = mCVerboseDescription;
    _os_log_impl(&dword_1A795B000, v53, OS_LOG_TYPE_ERROR, "Failed to set data in keychain. Error: %{public}@", &v70, 0xCu);
  }

  v55 = 0;
LABEL_23:

  return v55;
}

void __131__MCKeychain_setData_forService_account_label_description_access_group_useSystemKeychain_sysBound_enforcePersonalPersona_outError___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    if (([v2 isEqualToData:*(a1 + 40)] & 1) == 0)
    {
      v3 = *(a1 + 40);
      v4 = *MEMORY[0x1E697ABD8];
      v7[0] = *MEMORY[0x1E697B3C0];
      v7[1] = v4;
      v5 = *(a1 + 56);
      v8[0] = v3;
      v8[1] = v5;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
      *(*(*(a1 + 48) + 8) + 24) = SecItemUpdate(*(a1 + 64), v6);
    }
  }

  else
  {
    CFDictionaryAddValue(*(a1 + 64), *MEMORY[0x1E697B3C0], *(a1 + 40));
    CFDictionaryAddValue(*(a1 + 64), *MEMORY[0x1E697ABD8], *(a1 + 56));
    CFDictionaryAddValue(*(a1 + 64), *MEMORY[0x1E697AEC0], MEMORY[0x1E695E118]);
    *(*(*(a1 + 48) + 8) + 24) = SecItemAdd(*(a1 + 64), 0);
  }
}

+ (id)dataFromService:(id)service account:(id)account label:(id)label description:(id)description group:(id)group useSystemKeychain:(BOOL)keychain outError:(id *)error
{
  keychainCopy = keychain;
  v13 = MEMORY[0x1E69AD428];
  descriptionCopy = description;
  labelCopy = label;
  accountCopy = account;
  serviceCopy = service;
  sharedConfiguration = [v13 sharedConfiguration];
  personaID = [sharedConfiguration personaID];
  LOBYTE(v22) = personaID != 0;
  v20 = [MCKeychain dataFromService:serviceCopy account:accountCopy label:labelCopy description:descriptionCopy group:0 useSystemKeychain:keychainCopy enforcePersonalPersona:v22 outError:error];

  return v20;
}

+ (id)dataFromService:(id)service account:(id)account label:(id)label description:(id)description group:(id)group useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona outError:(id *)self0
{
  keychainCopy = keychain;
  v54[1] = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  accountCopy = account;
  labelCopy = label;
  descriptionCopy = description;
  groupCopy = group;
  v47 = 0;
  v20 = [MCKeychain _newQueryWithService:serviceCopy account:accountCopy label:labelCopy description:descriptionCopy group:groupCopy useSystemKeychain:keychainCopy outError:&v47];
  v21 = v47;
  if (v21)
  {
    v22 = v21;
    if (v20)
    {
      CFRelease(v20);
      v20 = 0;
    }

    goto LABEL_16;
  }

  CFDictionaryAddValue(v20, *MEMORY[0x1E697B318], *MEMORY[0x1E695E4D0]);
  *&v52 = 0;
  *(&v52 + 1) = &v52;
  v53 = 0x2020000000;
  v54[0] = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  if (persona)
  {
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __112__MCKeychain_dataFromService_account_label_description_group_useSystemKeychain_enforcePersonalPersona_outError___block_invoke;
    v42[3] = &unk_1E77CFF20;
    v42[5] = &v52;
    v42[6] = v20;
    v42[4] = &v43;
    v22 = [MEMORY[0x1E6999808] performBlockUnderPersonalPersona:v42];
  }

  else
  {
    v23 = SecItemCopyMatching(v20, v54);
    v22 = 0;
    *(v44 + 6) = v23;
  }

  CFRelease(v20);
  if (v22)
  {
    v24 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v49 = "+[MCKeychain dataFromService:account:label:description:group:useSystemKeychain:enforcePersonalPersona:outError:]";
      v50 = 2112;
      v51 = v22;
      _os_log_impl(&dword_1A795B000, v24, OS_LOG_TYPE_ERROR, "%s: Failed to execute the block under personal persona. Error: %@", buf, 0x16u);
    }
  }

  else
  {
    v25 = *(v44 + 6);
    if (v25 == -25300 || !v25)
    {
      v22 = 0;
      v20 = *(*(&v52 + 1) + 24);
      goto LABEL_15;
    }

    v26 = MEMORY[0x1E696ABC0];
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", *(v44 + 6)];
    v35 = MCErrorArray(@"KEYCHAIN_ERROR_CODE_P_CODE", v28, v29, v30, v31, v32, v33, v34, v27);
    v22 = [v26 MCErrorWithDomain:@"MCKeychainErrorDomain" code:6000 descriptionArray:v35 errorType:@"MCFatalError"];
  }

  v20 = 0;
LABEL_15:
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v52, 8);
  if (!v22)
  {
    v20 = v20;
    v40 = v20;
    goto LABEL_21;
  }

LABEL_16:
  if (error)
  {
    v36 = v22;
    *error = v22;
  }

  v37 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    v38 = v37;
    mCVerboseDescription = [v22 MCVerboseDescription];
    LODWORD(v52) = 138543362;
    *(&v52 + 4) = mCVerboseDescription;
    _os_log_impl(&dword_1A795B000, v38, OS_LOG_TYPE_ERROR, "Cannot retrieve item from keychain. Error: %{public}@", &v52, 0xCu);
  }

  v40 = 0;
LABEL_21:

  return v40;
}

uint64_t __112__MCKeychain_dataFromService_account_label_description_group_useSystemKeychain_enforcePersonalPersona_outError___block_invoke(uint64_t a1)
{
  result = SecItemCopyMatching(*(a1 + 48), (*(*(a1 + 40) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (void)removeItemForService:(id)service account:(id)account label:(id)label description:(id)description useSystemKeychain:(BOOL)keychain group:(id)group
{
  keychainCopy = keychain;
  v13 = MEMORY[0x1E69AD428];
  groupCopy = group;
  descriptionCopy = description;
  labelCopy = label;
  accountCopy = account;
  serviceCopy = service;
  sharedConfiguration = [v13 sharedConfiguration];
  personaID = [sharedConfiguration personaID];
  [MCKeychain removeItemForService:serviceCopy account:accountCopy label:labelCopy description:descriptionCopy useSystemKeychain:keychainCopy enforcePersonalPersona:personaID != 0 group:groupCopy];
}

+ (void)removeItemForService:(id)service account:(id)account label:(id)label description:(id)description useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona group:(id)group
{
  v20 = *MEMORY[0x1E69E9840];
  v10 = [MCKeychain _newQueryWithService:service account:account label:label description:description group:group useSystemKeychain:keychain outError:0];
  if (v10)
  {
    v11 = v10;
    if (persona)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __108__MCKeychain_removeItemForService_account_label_description_useSystemKeychain_enforcePersonalPersona_group___block_invoke;
      v15[3] = &__block_descriptor_40_e5_v8__0l;
      v15[4] = v10;
      v12 = [MEMORY[0x1E6999808] performBlockUnderPersonalPersona:v15];
      if (v12)
      {
        v13 = v12;
        v14 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v17 = "+[MCKeychain removeItemForService:account:label:description:useSystemKeychain:enforcePersonalPersona:group:]";
          v18 = 2112;
          v19 = v13;
          _os_log_impl(&dword_1A795B000, v14, OS_LOG_TYPE_ERROR, "%s: Failed to execute the block under personal persona. Error: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      SecItemDelete(v10);
    }

    CFRelease(v11);
  }
}

+ (void)copyItemWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain
{
  keychainCopy = keychain;
  v5 = MEMORY[0x1E69AD428];
  dCopy = d;
  sharedConfiguration = [v5 sharedConfiguration];
  personaID = [sharedConfiguration personaID];
  v9 = [MCKeychain copyItemWithPersistentID:dCopy useSystemKeychain:keychainCopy enforcePersonalPersona:personaID != 0];

  return v9;
}

+ (void)copyItemWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona
{
  personaCopy = persona;
  keychainCopy = keychain;
  v36[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v8 = *MEMORY[0x1E697B328];
  v35[0] = *MEMORY[0x1E697B3C8];
  v35[1] = v8;
  v36[0] = dCopy;
  v36[1] = MEMORY[0x1E695E118];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
  v10 = [v9 mutableCopy];

  if (keychainCopy)
  {
    [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  if (!personaCopy)
  {
    v14 = SecItemCopyMatching(v10, &v30);
    *(v24 + 6) = v14;
    goto LABEL_10;
  }

  v11 = MEMORY[0x1E6999808];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __80__MCKeychain_copyItemWithPersistentID_useSystemKeychain_enforcePersonalPersona___block_invoke;
  v19[3] = &unk_1E77CFF68;
  v21 = &v23;
  v20 = v10;
  v22 = &v27;
  v12 = [v11 performBlockUnderPersonalPersona:v19];

  if (!v12)
  {
    v14 = *(v24 + 6);
LABEL_10:
    if (v14 == -25300)
    {
      v17 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543618;
        v32 = dCopy;
        v33 = 1024;
        LODWORD(v34) = keychainCopy;
        _os_log_impl(&dword_1A795B000, v17, OS_LOG_TYPE_DEBUG, "Couldn't get item with ID: %{public}@ system keychain: %d", buf, 0x12u);
      }
    }

    else if (v14)
    {
      v15 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v32 = dCopy;
        _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_ERROR, "Cannot retrieve item with persistent ID %{public}@", buf, 0xCu);
      }

      goto LABEL_14;
    }

    v16 = v28[3];
    goto LABEL_18;
  }

  v13 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v32 = "+[MCKeychain copyItemWithPersistentID:useSystemKeychain:enforcePersonalPersona:]";
    v33 = 2112;
    v34 = v12;
    _os_log_impl(&dword_1A795B000, v13, OS_LOG_TYPE_ERROR, "%s: Failed to execute the block under personal persona. Error: %@", buf, 0x16u);
  }

LABEL_14:
  v16 = 0;
LABEL_18:
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  return v16;
}

uint64_t __80__MCKeychain_copyItemWithPersistentID_useSystemKeychain_enforcePersonalPersona___block_invoke(uint64_t a1)
{
  result = SecItemCopyMatching(*(a1 + 32), (*(*(a1 + 48) + 8) + 24));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (__SecCertificate)copyCertificateWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain
{
  keychainCopy = keychain;
  v5 = MEMORY[0x1E69AD428];
  dCopy = d;
  sharedConfiguration = [v5 sharedConfiguration];
  personaID = [sharedConfiguration personaID];
  v9 = [MCKeychain copyCertificateWithPersistentID:dCopy useSystemKeychain:keychainCopy enforcePersonalPersona:personaID != 0];

  return v9;
}

+ (__SecCertificate)copyCertificateWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona
{
  personaCopy = persona;
  keychainCopy = keychain;
  v29 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v9 = [self copyItemWithPersistentID:dCopy useSystemKeychain:keychainCopy enforcePersonalPersona:personaCopy];
  v10 = v9;
  if (v9)
  {
    v11 = CFGetTypeID(v9);
    if (v11 == SecCertificateGetTypeID())
    {
      v22[3] = v10;
    }

    else
    {
      v12 = CFGetTypeID(v10);
      if (v12 == SecIdentityGetTypeID())
      {
        if (personaCopy)
        {
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __87__MCKeychain_copyCertificateWithPersistentID_useSystemKeychain_enforcePersonalPersona___block_invoke;
          v20[3] = &unk_1E77CFF90;
          v20[4] = &v21;
          v20[5] = v10;
          v13 = [MEMORY[0x1E6999808] performBlockUnderPersonalPersona:v20];
          if (v13)
          {
            v14 = _MCLogObjects;
            if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v26 = "+[MCKeychain copyCertificateWithPersistentID:useSystemKeychain:enforcePersonalPersona:]";
              v27 = 2112;
              v28 = v13;
              _os_log_impl(&dword_1A795B000, v14, OS_LOG_TYPE_ERROR, "%s: Failed to execute the block under personal persona. Error: %@", buf, 0x16u);
            }
          }
        }

        else
        {
          SecIdentityCopyCertificate(v10, v22 + 3);
          v13 = 0;
        }

        CFRelease(v10);
      }

      else
      {
        v15 = _MCLogObjects;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = CFGetTypeID(v10);
          v17 = CFCopyTypeIDDescription(v16);
          *buf = 138543618;
          v26 = dCopy;
          v27 = 2114;
          v28 = v17;
          _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_ERROR, "Certificate with persistent ID: %{public}@ has unexpected type: %{public}@", buf, 0x16u);
        }

        CFRelease(v10);
      }
    }
  }

  v18 = v22[3];
  _Block_object_dispose(&v21, 8);

  return v18;
}

+ (id)copyCertificatesWithPersistentIDs:(id)ds useSystemKeychain:(BOOL)keychain
{
  keychainCopy = keychain;
  v22 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v6 = [dsCopy count];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:v6];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = dsCopy;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [MCKeychain copyCertificateWithPersistentID:*(*(&v17 + 1) + 8 * v12) useSystemKeychain:keychainCopy, v17];
          if (!v13)
          {

            v15 = 0;
            goto LABEL_14;
          }

          v14 = v13;
          [v7 addObject:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v7 = v7;
  v15 = v7;
LABEL_14:

  return v15;
}

+ (__SecIdentity)copyIdentityWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain
{
  keychainCopy = keychain;
  v5 = MEMORY[0x1E69AD428];
  dCopy = d;
  sharedConfiguration = [v5 sharedConfiguration];
  personaID = [sharedConfiguration personaID];
  v9 = [MCKeychain copyIdentityWithPersistentID:dCopy useSystemKeychain:keychainCopy enforcePersonalPersona:personaID != 0];

  return v9;
}

+ (__SecIdentity)copyIdentityWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona
{
  personaCopy = persona;
  keychainCopy = keychain;
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v9 = [self copyItemWithPersistentID:dCopy useSystemKeychain:keychainCopy enforcePersonalPersona:personaCopy];
  v10 = v9;
  if (v9)
  {
    v11 = CFGetTypeID(v9);
    if (v11 != SecIdentityGetTypeID())
    {
      v12 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v13 = v12;
        v14 = CFGetTypeID(v10);
        v15 = CFCopyTypeIDDescription(v14);
        v17 = 138543618;
        v18 = dCopy;
        v19 = 2114;
        v20 = v15;
        _os_log_impl(&dword_1A795B000, v13, OS_LOG_TYPE_ERROR, "Identity with persistent ID: %{public}@ has unexpected type: %{public}@", &v17, 0x16u);
      }

      CFRelease(v10);
      v10 = 0;
    }
  }

  return v10;
}

+ (id)saveItem:(void *)item withLabel:(id)label group:(id)group useSystemKeychain:(BOOL)keychain
{
  keychainCopy = keychain;
  v9 = MEMORY[0x1E69AD428];
  groupCopy = group;
  labelCopy = label;
  sharedConfiguration = [v9 sharedConfiguration];
  personaID = [sharedConfiguration personaID];
  v14 = [MCKeychain saveItem:item withLabel:labelCopy group:groupCopy useSystemKeychain:keychainCopy enforcePersonalPersona:personaID != 0];

  return v14;
}

+ (id)saveItem:(void *)item withLabel:(id)label group:(id)group useSystemKeychain:(BOOL)keychain accessibility:(__CFString *)accessibility
{
  keychainCopy = keychain;
  v11 = MEMORY[0x1E69AD428];
  groupCopy = group;
  labelCopy = label;
  sharedConfiguration = [v11 sharedConfiguration];
  personaID = [sharedConfiguration personaID];
  v16 = [MCKeychain saveItem:item withLabel:labelCopy group:groupCopy useSystemKeychain:keychainCopy enforcePersonalPersona:personaID != 0 accessibility:accessibility];

  return v16;
}

+ (id)saveItem:(void *)item withLabel:(id)label group:(id)group useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona
{
  keychainCopy = keychain;
  v10 = MEMORY[0x1E69AD428];
  groupCopy = group;
  labelCopy = label;
  sharedConfiguration = [v10 sharedConfiguration];
  personaID = [sharedConfiguration personaID];
  v15 = [MCKeychain saveItem:item withLabel:labelCopy group:groupCopy useSystemKeychain:keychainCopy enforcePersonalPersona:personaID != 0 accessibility:*MEMORY[0x1E697AC08]];

  return v15;
}

+ (id)saveItem:(void *)item withLabel:(id)label group:(id)group useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona accessibility:(__CFString *)accessibility
{
  personaCopy = persona;
  keychainCopy = keychain;
  v51[4] = *MEMORY[0x1E69E9840];
  labelCopy = label;
  groupCopy = group;
  v15 = *MEMORY[0x1E697ABD0];
  v50[0] = *MEMORY[0x1E697B3D0];
  v50[1] = v15;
  v51[0] = item;
  v51[1] = groupCopy;
  v16 = *MEMORY[0x1E697ABD8];
  v50[2] = *MEMORY[0x1E697B320];
  v50[3] = v16;
  v51[2] = MEMORY[0x1E695E118];
  v51[3] = accessibility;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:4];
  v18 = [v17 mutableCopy];

  if (keychainCopy)
  {
    [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  }

  if (labelCopy)
  {
    [v18 setObject:labelCopy forKeyedSubscript:*MEMORY[0x1E697ADC8]];
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy_;
  v40 = __Block_byref_object_dispose_;
  v41 = 0;
  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = __94__MCKeychain_saveItem_withLabel_group_useSystemKeychain_enforcePersonalPersona_accessibility___block_invoke;
  v31 = &unk_1E77CFFB8;
  v33 = &v42;
  v19 = v18;
  v34 = &v36;
  v35 = 0;
  v32 = v19;
  v20 = MEMORY[0x1AC55F990](&v28);
  v21 = v20;
  if (personaCopy)
  {
    v22 = [MEMORY[0x1E6999808] performBlockUnderPersonalPersona:{v20, v28, v29, v30, v31}];
    if (v22)
    {
      v23 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v47 = "+[MCKeychain saveItem:withLabel:group:useSystemKeychain:enforcePersonalPersona:accessibility:]";
        v48 = 2112;
        v49 = v22;
        _os_log_impl(&dword_1A795B000, v23, OS_LOG_TYPE_ERROR, "%s: Failed to execute the block under personal persona. Error: %@", buf, 0x16u);
      }

LABEL_14:
      v26 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    (*(v20 + 16))(v20);
  }

  if (*(v43 + 6))
  {
    v24 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v25 = *(v43 + 6);
      *buf = 67109120;
      LODWORD(v47) = v25;
      _os_log_impl(&dword_1A795B000, v24, OS_LOG_TYPE_ERROR, "Could not store certificate in keychain. Error: %d", buf, 8u);
    }

    goto LABEL_14;
  }

  v26 = v37[5];
LABEL_16:

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  return v26;
}

void __94__MCKeychain_saveItem_withLabel_group_useSystemKeychain_enforcePersonalPersona_accessibility___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = SecItemAdd(*(a1 + 32), (a1 + 56));
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = *(a1 + 56);

  if (*(*(*(a1 + 40) + 8) + 24) == -25299)
  {
    [*(a1 + 32) setObject:0 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
    [*(a1 + 32) setObject:0 forKeyedSubscript:*MEMORY[0x1E697ABD8]];
    *(*(*(a1 + 40) + 8) + 24) = SecItemCopyMatching(*(a1 + 32), (a1 + 56));
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = *(a1 + 56);

    if (*(*(*(a1 + 40) + 8) + 24) == -25300)
    {
      [*(a1 + 32) setObject:0 forKeyedSubscript:*MEMORY[0x1E697ABD0]];
      *(*(*(a1 + 40) + 8) + 24) = SecItemCopyMatching(*(a1 + 32), (a1 + 56));
      v6 = *(*(a1 + 48) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = *(a1 + 56);
    }
  }
}

+ (void)removeItemWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain
{
  keychainCopy = keychain;
  v5 = MEMORY[0x1E69AD428];
  dCopy = d;
  sharedConfiguration = [v5 sharedConfiguration];
  personaID = [sharedConfiguration personaID];
  [MCKeychain removeItemWithPersistentID:dCopy useSystemKeychain:keychainCopy enforcePersonalPersona:personaID != 0];
}

+ (void)removeItemWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona
{
  personaCopy = persona;
  keychainCopy = keychain;
  v37[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v8 = *MEMORY[0x1E697B310];
  v36[0] = *MEMORY[0x1E697B3C8];
  v36[1] = v8;
  v37[0] = dCopy;
  v37[1] = MEMORY[0x1E695E118];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
  v10 = [v9 mutableCopy];

  if (keychainCopy)
  {
    [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  }

  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v31[3] = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __82__MCKeychain_removeItemWithPersistentID_useSystemKeychain_enforcePersonalPersona___block_invoke;
  v22 = &unk_1E77CFFE0;
  v11 = v10;
  v23 = v11;
  v25 = v31;
  v26 = &v27;
  v12 = dCopy;
  v24 = v12;
  v13 = MEMORY[0x1AC55F990](&v19);
  v14 = v13;
  if (personaCopy)
  {
    v15 = [MEMORY[0x1E6999808] performBlockUnderPersonalPersona:{v13, v19, v20, v21, v22, v23}];
    if (v15)
    {
      v16 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v33 = "+[MCKeychain removeItemWithPersistentID:useSystemKeychain:enforcePersonalPersona:]";
        v34 = 2112;
        v35 = v15;
        _os_log_impl(&dword_1A795B000, v16, OS_LOG_TYPE_ERROR, "%s: Failed to execute the block under personal persona. Error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    (*(v13 + 16))(v13);
    v15 = 0;
  }

  v17 = *(v28 + 6);
  if (v17 != -25300)
  {
    if (v17)
    {
      v18 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v33 = v12;
        _os_log_impl(&dword_1A795B000, v18, OS_LOG_TYPE_ERROR, "Could not remove identity or certificate with persistent id %{public}@ - error ignored.", buf, 0xCu);
      }
    }
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(v31, 8);
}

void __82__MCKeychain_removeItemWithPersistentID_useSystemKeychain_enforcePersonalPersona___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!SecItemCopyMatching(*(a1 + 32), (*(*(a1 + 48) + 8) + 24)))
  {
    v2 = *(*(*(a1 + 48) + 8) + 24);
    v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E697ABD0]];
    if ([v3 isEqualToString:@"lockdown-identities"])
    {
      v4 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 40);
        v6 = 138543362;
        v7 = v5;
        _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_ERROR, "Didn't remove lockdown identity with persistent id %{public}@", &v6, 0xCu);
      }
    }

    else
    {
      [*(a1 + 32) setObject:0 forKeyedSubscript:*MEMORY[0x1E697B310]];
      *(*(*(a1 + 56) + 8) + 24) = SecItemDelete(*(a1 + 32));
    }
  }
}

+ (BOOL)itemExistsInKeychain:(void *)keychain useSystemKeychain:(BOOL)systemKeychain
{
  systemKeychainCopy = systemKeychain;
  mEMORY[0x1E69AD428] = [MEMORY[0x1E69AD428] sharedConfiguration];
  personaID = [mEMORY[0x1E69AD428] personaID];
  LOBYTE(systemKeychainCopy) = [MCKeychain itemExistsInKeychain:keychain useSystemKeychain:systemKeychainCopy enforcePersonalPersona:personaID != 0];

  return systemKeychainCopy;
}

+ (BOOL)itemExistsInKeychain:(void *)keychain useSystemKeychain:(BOOL)systemKeychain enforcePersonalPersona:(BOOL)persona
{
  personaCopy = persona;
  systemKeychainCopy = systemKeychain;
  v30[2] = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E697B320];
  v29[0] = *MEMORY[0x1E697B3D0];
  v29[1] = v7;
  v30[0] = keychain;
  v30[1] = MEMORY[0x1E695E118];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v9 = [v8 mutableCopy];

  if (systemKeychainCopy)
  {
    [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  }

  result = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (!personaCopy)
  {
    v14 = SecItemCopyMatching(v9, &result);
    *(v21 + 6) = v14;
    if (result)
    {
      CFRelease(result);
    }

    goto LABEL_10;
  }

  v10 = MEMORY[0x1E6999808];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __76__MCKeychain_itemExistsInKeychain_useSystemKeychain_enforcePersonalPersona___block_invoke;
  v16[3] = &unk_1E77D0008;
  v18 = &v20;
  v17 = v9;
  v19 = 0;
  v11 = [v10 performBlockUnderPersonalPersona:v16];

  if (!v11)
  {
LABEL_10:
    v13 = *(v21 + 6) == 0;
    goto LABEL_11;
  }

  v12 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v26 = "+[MCKeychain itemExistsInKeychain:useSystemKeychain:enforcePersonalPersona:]";
    v27 = 2112;
    v28 = v11;
    _os_log_impl(&dword_1A795B000, v12, OS_LOG_TYPE_ERROR, "%s: Failed to execute the block under personal persona. Error: %@", buf, 0x16u);
  }

  v13 = 0;
LABEL_11:
  _Block_object_dispose(&v20, 8);

  return v13;
}

uint64_t __76__MCKeychain_itemExistsInKeychain_useSystemKeychain_enforcePersonalPersona___block_invoke(uint64_t a1)
{
  result = SecItemCopyMatching(*(a1 + 32), (a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (id)canonicalPersistentReferenceForItemWithPersistentReference:(id)reference inSystemKeychain:(BOOL)keychain
{
  keychainCopy = keychain;
  v27[2] = *MEMORY[0x1E69E9840];
  referenceCopy = reference;
  v6 = *MEMORY[0x1E697B320];
  v26[0] = *MEMORY[0x1E697B3C8];
  v26[1] = v6;
  v27[0] = referenceCopy;
  v27[1] = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v8 = [v7 mutableCopy];

  if (keychainCopy)
  {
    [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  }

  result = 0;
  v9 = SecItemCopyMatching(v8, &result);
  v10 = result;
  if (!v9)
  {
    v14 = [result isEqualToData:referenceCopy];
    v15 = _MCLogObjects;
    v16 = os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        *buf = 138543362;
        v23 = referenceCopy;
        v17 = "Persistent reference %{public}@ is canonical!";
        v18 = v15;
        v19 = 12;
LABEL_12:
        _os_log_impl(&dword_1A795B000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
      }
    }

    else if (v16)
    {
      *buf = 138543618;
      v23 = referenceCopy;
      v24 = 2114;
      v25 = v10;
      v17 = "Persistent reference %{public}@ has canonical reference %{public}@";
      v18 = v15;
      v19 = 22;
      goto LABEL_12;
    }

    v13 = v10;
    goto LABEL_14;
  }

  v11 = v9;
  v12 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v23 = referenceCopy;
    v24 = 1024;
    LODWORD(v25) = v11;
    _os_log_impl(&dword_1A795B000, v12, OS_LOG_TYPE_ERROR, "Unable to lookup item with persistent reference: %{public}@. Error: %d", buf, 0x12u);
  }

  v13 = 0;
LABEL_14:

  return v13;
}

@end