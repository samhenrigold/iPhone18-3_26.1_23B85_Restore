@interface DMCKeychain
+ (BOOL)deleteAttestationCertWithGroup:(id)group label:(id)label;
+ (BOOL)deleteAttestationKeyWithGroup:(id)group label:(id)label;
+ (BOOL)deleteAttestationMetadataWithGroup:(id)group service:(id)service;
+ (BOOL)setData:(id)data forService:(id)service account:(id)account label:(id)label description:(id)description access:(void *)access group:(id)group useSystemKeychain:(BOOL)self0 sysBound:(BOOL)self1 enforcePersonalPersona:(BOOL)self2 outError:(id *)self3;
+ (BOOL)storeAttestationCert:(__SecCertificate *)cert withGroup:(id)group label:(id)label;
+ (BOOL)storeAttestationKey:(__SecKey *)key withGroup:(id)group label:(id)label;
+ (BOOL)storeAttestationMetadata:(id)metadata withGroup:(id)group service:(id)service;
+ (__CFDictionary)_newQueryWithService:(id)service account:(id)account label:(id)label description:(id)description group:(id)group useSystemKeychain:(BOOL)keychain outError:(id *)error;
+ (__SecCertificate)copyCertificateWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona;
+ (__SecCertificate)retrieveAttestationCertWithGroup:(id)group label:(id)label;
+ (__SecIdentity)copyIdentityWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona;
+ (__SecIdentity)retrieveAttestationIdentityWithGroup:(id)group label:(id)label;
+ (__SecKey)retrieveAttestationKeyWithGroup:(id)group label:(id)label;
+ (id)copyCertificatesWithPersistentIDs:(id)ds useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona;
+ (id)copyDataWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona;
+ (id)copyPasswordWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona;
+ (id)dataFromService:(id)service account:(id)account label:(id)label description:(id)description group:(id)group useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona outError:(id *)self0;
+ (id)retrieveAttestationMetadataWithGroup:(id)group service:(id)service;
+ (id)saveItem:(void *)item withLabel:(id)label group:(id)group useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona;
+ (id)stringFromServiceData:(id)data;
+ (void)_copyTypeRefWithQuery:(id)query useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona;
+ (void)copyItemWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona;
+ (void)removeItemForService:(id)service account:(id)account label:(id)label description:(id)description useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona group:(id)group;
@end

@implementation DMCKeychain

+ (id)stringFromServiceData:(id)data
{
  dataCopy = data;
  if (data)
  {
    dataCopy = [MEMORY[0x1E696AEC0] stringWithUTF8String:{objc_msgSend(data, "bytes")}];
    v3 = vars8;
  }

  return dataCopy;
}

+ (BOOL)setData:(id)data forService:(id)service account:(id)account label:(id)label description:(id)description access:(void *)access group:(id)group useSystemKeychain:(BOOL)self0 sysBound:(BOOL)self1 enforcePersonalPersona:(BOOL)self2 outError:(id *)self3
{
  v74 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  serviceCopy = service;
  accountCopy = account;
  labelCopy = label;
  descriptionCopy = description;
  groupCopy = group;
  v59 = serviceCopy;
  if ([dataCopy length])
  {
    v66 = 0;
    v31 = [DMCKeychain _newQueryWithService:serviceCopy account:accountCopy label:labelCopy description:descriptionCopy group:groupCopy useSystemKeychain:keychain outError:&v66];
    v32 = v66;
    if (v32)
    {
      v34 = v32;
      if (v31)
      {
        CFRelease(v31);
      }

      goto LABEL_17;
    }

    LOBYTE(v58) = persona;
    v37 = [DMCKeychain dataFromService:serviceCopy account:accountCopy label:labelCopy description:descriptionCopy group:groupCopy useSystemKeychain:keychain enforcePersonalPersona:v58 outError:0];
    *&v71 = 0;
    *(&v71 + 1) = &v71;
    v72 = 0x2020000000;
    v73 = 0;
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __132__DMCKeychain_setData_forService_account_label_description_access_group_useSystemKeychain_sysBound_enforcePersonalPersona_outError___block_invoke;
    v60[3] = &unk_1E7ADCC10;
    v38 = v37;
    v61 = v38;
    v62 = dataCopy;
    v63 = &v71;
    accessCopy = access;
    v65 = v31;
    v39 = MEMORY[0x1B2731A20](v60);
    v40 = v39;
    if (persona)
    {
      v34 = [DMCPersonaHelper performBlockUnderPersonalPersona:v39];
    }

    else
    {
      (*(v39 + 16))(v39);
      v34 = 0;
    }

    CFRelease(v31);
    if (v34)
    {
      v43 = *DMCLogObjects(v41, v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v68 = "+[DMCKeychain setData:forService:account:label:description:access:group:useSystemKeychain:sysBound:enforcePersonalPersona:outError:]";
        v69 = 2112;
        v70 = v34;
        _os_log_impl(&dword_1B1630000, v43, OS_LOG_TYPE_ERROR, "%s: Failed to execute the block under personal persona. Error: %@", buf, 0x16u);
      }
    }

    else if (*(*(&v71 + 1) + 24))
    {
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", *(*(&v71 + 1) + 24)];
      v52 = DMCErrorArray(@"KEYCHAIN_ERROR_CODE_P_CODE_%@", v45, v46, v47, v48, v49, v50, v51, v44);

      v34 = [MEMORY[0x1E696ABC0] DMCErrorWithDomain:@"DMCKeychainErrorDomain" code:6000 descriptionArray:v52 errorType:@"DMCFatalError"];
    }

    else
    {
      v34 = 0;
    }

    _Block_object_dispose(&v71, 8);
  }

  else
  {
    v35 = MEMORY[0x1E696ABC0];
    v36 = DMCErrorArray(@"KEYCHAIN_ERROR_EMPTY_DATA", v24, v25, v26, v27, v28, v29, v30, 0);
    v34 = [v35 DMCErrorWithDomain:@"DMCKeychainErrorDomain" code:6001 descriptionArray:v36 errorType:@"DMCFatalError"];
  }

  if (!v34)
  {
    v56 = 1;
    goto LABEL_23;
  }

LABEL_17:
  if (error)
  {
    v32 = v34;
    *error = v34;
  }

  v53 = *DMCLogObjects(v32, v33);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
  {
    v54 = v53;
    dMCVerboseDescription = [v34 DMCVerboseDescription];
    LODWORD(v71) = 138543362;
    *(&v71 + 4) = dMCVerboseDescription;
    _os_log_impl(&dword_1B1630000, v54, OS_LOG_TYPE_ERROR, "Failed to set data in keychain. Error: %{public}@", &v71, 0xCu);
  }

  v56 = 0;
LABEL_23:

  return v56;
}

void __132__DMCKeychain_setData_forService_account_label_description_access_group_useSystemKeychain_sysBound_enforcePersonalPersona_outError___block_invoke(uint64_t a1)
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

+ (id)dataFromService:(id)service account:(id)account label:(id)label description:(id)description group:(id)group useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona outError:(id *)self0
{
  keychainCopy = keychain;
  v56[2] = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  accountCopy = account;
  labelCopy = label;
  descriptionCopy = description;
  groupCopy = group;
  v49 = 0;
  v20 = [DMCKeychain _newQueryWithService:serviceCopy account:accountCopy label:labelCopy description:descriptionCopy group:groupCopy useSystemKeychain:keychainCopy outError:&v49];
  v21 = v49;
  if (v21)
  {
    v23 = v21;
    if (v20)
    {
      CFRelease(v20);
      v20 = 0;
    }

    goto LABEL_16;
  }

  CFDictionaryAddValue(v20, *MEMORY[0x1E697B318], *MEMORY[0x1E695E4D0]);
  *&v54 = 0;
  *(&v54 + 1) = &v54;
  v55 = 0x2020000000;
  v56[0] = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  if (persona)
  {
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __113__DMCKeychain_dataFromService_account_label_description_group_useSystemKeychain_enforcePersonalPersona_outError___block_invoke;
    v44[3] = &unk_1E7ADCC38;
    v44[5] = &v54;
    v44[6] = v20;
    v44[4] = &v45;
    v23 = [DMCPersonaHelper performBlockUnderPersonalPersona:v44];
  }

  else
  {
    v24 = SecItemCopyMatching(v20, v56);
    v23 = 0;
    *(v46 + 6) = v24;
  }

  CFRelease(v20);
  if (v23)
  {
    v27 = *DMCLogObjects(v25, v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v51 = "+[DMCKeychain dataFromService:account:label:description:group:useSystemKeychain:enforcePersonalPersona:outError:]";
      v52 = 2112;
      v53 = v23;
      _os_log_impl(&dword_1B1630000, v27, OS_LOG_TYPE_ERROR, "%s: Failed to execute the block under personal persona. Error: %@", buf, 0x16u);
    }
  }

  else
  {
    v28 = *(v46 + 6);
    if (v28 == -25300 || !v28)
    {
      v23 = 0;
      v20 = *(*(&v54 + 1) + 24);
      goto LABEL_15;
    }

    v29 = MEMORY[0x1E696ABC0];
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", *(v46 + 6)];
    v38 = DMCErrorArray(@"KEYCHAIN_ERROR_CODE_P_CODE_%@", v31, v32, v33, v34, v35, v36, v37, v30);
    v23 = [v29 DMCErrorWithDomain:@"DMCKeychainErrorDomain" code:6000 descriptionArray:v38 errorType:@"DMCFatalError"];
  }

  v20 = 0;
LABEL_15:
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v54, 8);
  if (!v23)
  {
    v20 = v20;
    v42 = v20;
    goto LABEL_21;
  }

LABEL_16:
  if (error)
  {
    v21 = v23;
    *error = v23;
  }

  v39 = *DMCLogObjects(v21, v22);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    v40 = v39;
    dMCVerboseDescription = [v23 DMCVerboseDescription];
    LODWORD(v54) = 138543362;
    *(&v54 + 4) = dMCVerboseDescription;
    _os_log_impl(&dword_1B1630000, v40, OS_LOG_TYPE_ERROR, "Cannot retrieve item from keychain. Error: %{public}@", &v54, 0xCu);
  }

  v42 = 0;
LABEL_21:

  return v42;
}

uint64_t __113__DMCKeychain_dataFromService_account_label_description_group_useSystemKeychain_enforcePersonalPersona_outError___block_invoke(uint64_t a1)
{
  result = SecItemCopyMatching(*(a1 + 48), (*(*(a1 + 40) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (id)saveItem:(void *)item withLabel:(id)label group:(id)group useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona
{
  personaCopy = persona;
  keychainCopy = keychain;
  v52[4] = *MEMORY[0x1E69E9840];
  labelCopy = label;
  groupCopy = group;
  v13 = *MEMORY[0x1E697ABD0];
  v51[0] = *MEMORY[0x1E697B3D0];
  v51[1] = v13;
  v14 = *MEMORY[0x1E697ABD8];
  v51[2] = *MEMORY[0x1E697B320];
  v51[3] = v14;
  v52[0] = item;
  v52[1] = groupCopy;
  v15 = *MEMORY[0x1E697AC08];
  v52[2] = MEMORY[0x1E695E118];
  v52[3] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:4];
  v17 = [v16 mutableCopy];

  if (keychainCopy)
  {
    [v17 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  }

  if (labelCopy)
  {
    [v17 setObject:labelCopy forKeyedSubscript:*MEMORY[0x1E697ADC8]];
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__2;
  v41 = __Block_byref_object_dispose__2;
  v42 = 0;
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __81__DMCKeychain_saveItem_withLabel_group_useSystemKeychain_enforcePersonalPersona___block_invoke;
  v32 = &unk_1E7ADCC60;
  v34 = &v43;
  v18 = v17;
  v35 = &v37;
  v36 = 0;
  v33 = v18;
  v19 = MEMORY[0x1B2731A20](&v29);
  v20 = v19;
  if (personaCopy)
  {
    v21 = [DMCPersonaHelper performBlockUnderPersonalPersona:v19, v29, v30, v31, v32];
    v23 = v21;
    if (v21)
    {
      v24 = *DMCLogObjects(v21, v22);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v48 = "+[DMCKeychain saveItem:withLabel:group:useSystemKeychain:enforcePersonalPersona:]";
        v49 = 2112;
        v50 = v23;
        _os_log_impl(&dword_1B1630000, v24, OS_LOG_TYPE_ERROR, "%s: Failed to execute the block under personal persona. Error: %@", buf, 0x16u);
      }

LABEL_14:
      v27 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v21 = (*(v19 + 16))(v19);
  }

  if (*(v44 + 6))
  {
    v25 = *DMCLogObjects(v21, v22);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = *(v44 + 6);
      *buf = 67109120;
      LODWORD(v48) = v26;
      _os_log_impl(&dword_1B1630000, v25, OS_LOG_TYPE_ERROR, "Could not store item in keychain. Error: %d", buf, 8u);
    }

    goto LABEL_14;
  }

  v27 = v38[5];
LABEL_16:

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

  return v27;
}

void __81__DMCKeychain_saveItem_withLabel_group_useSystemKeychain_enforcePersonalPersona___block_invoke(uint64_t a1)
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

+ (void)removeItemForService:(id)service account:(id)account label:(id)label description:(id)description useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona group:(id)group
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = [DMCKeychain _newQueryWithService:service account:account label:label description:description group:group useSystemKeychain:keychain outError:0];
  if (v10)
  {
    v11 = v10;
    if (persona)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __109__DMCKeychain_removeItemForService_account_label_description_useSystemKeychain_enforcePersonalPersona_group___block_invoke;
      v16[3] = &__block_descriptor_40_e5_v8__0l;
      v16[4] = v10;
      v12 = [DMCPersonaHelper performBlockUnderPersonalPersona:v16];
      if (v12)
      {
        v14 = v12;
        v15 = *DMCLogObjects(v12, v13);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v18 = "+[DMCKeychain removeItemForService:account:label:description:useSystemKeychain:enforcePersonalPersona:group:]";
          v19 = 2112;
          v20 = v14;
          _os_log_impl(&dword_1B1630000, v15, OS_LOG_TYPE_ERROR, "%s: Failed to execute the block under personal persona. Error: %@", buf, 0x16u);
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
      v28 = DMCErrorArray(@"KEYCHAIN_ERROR_CANNOT_CREATE_QUERY", v19, v20, v21, v22, v23, v24, v25, 0);
      *error = [v27 DMCErrorWithDomain:@"DMCKeychainErrorDomain" code:6002 descriptionArray:v28 errorType:@"DMCFatalError"];
    }

    Mutable = 0;
  }

  return Mutable;
}

+ (__SecIdentity)copyIdentityWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona
{
  personaCopy = persona;
  keychainCopy = keychain;
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v9 = [self copyItemWithPersistentID:dCopy useSystemKeychain:keychainCopy enforcePersonalPersona:personaCopy];
  v10 = v9;
  if (v9)
  {
    v11 = CFGetTypeID(v9);
    TypeID = SecIdentityGetTypeID();
    if (v11 != TypeID)
    {
      v14 = *DMCLogObjects(TypeID, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        v16 = CFGetTypeID(v10);
        v17 = CFCopyTypeIDDescription(v16);
        v19 = 138543618;
        v20 = dCopy;
        v21 = 2114;
        v22 = v17;
        _os_log_impl(&dword_1B1630000, v15, OS_LOG_TYPE_ERROR, "Identity with persistent ID: %{public}@ has unexpected type: %{public}@", &v19, 0x16u);
      }

      CFRelease(v10);
      v10 = 0;
    }
  }

  return v10;
}

+ (void)copyItemWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona
{
  personaCopy = persona;
  keychainCopy = keychain;
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E697B328];
  v15[0] = *MEMORY[0x1E697B3C8];
  v15[1] = v8;
  v16[0] = d;
  v16[1] = MEMORY[0x1E695E118];
  v9 = MEMORY[0x1E695DF20];
  dCopy = d;
  v11 = [v9 dictionaryWithObjects:v16 forKeys:v15 count:2];

  v12 = [v11 mutableCopy];
  if (keychainCopy)
  {
    [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  }

  [v12 setObject:0 forKeyedSubscript:*MEMORY[0x1E697B310]];
  [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v8];
  v13 = [self _copyTypeRefWithQuery:v12 useSystemKeychain:keychainCopy enforcePersonalPersona:personaCopy];

  return v13;
}

+ (id)copyDataWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona
{
  personaCopy = persona;
  keychainCopy = keychain;
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E697B318];
  v15[0] = *MEMORY[0x1E697B3C8];
  v15[1] = v8;
  v16[0] = d;
  v16[1] = MEMORY[0x1E695E118];
  v9 = MEMORY[0x1E695DF20];
  dCopy = d;
  v11 = [v9 dictionaryWithObjects:v16 forKeys:v15 count:2];

  v12 = [v11 mutableCopy];
  if (keychainCopy)
  {
    [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  }

  v13 = [self _copyTypeRefWithQuery:v12 useSystemKeychain:keychainCopy enforcePersonalPersona:personaCopy];

  return v13;
}

+ (__SecCertificate)copyCertificateWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona
{
  personaCopy = persona;
  keychainCopy = keychain;
  v33 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v9 = [self copyItemWithPersistentID:dCopy useSystemKeychain:keychainCopy enforcePersonalPersona:personaCopy];
  v10 = v9;
  if (v9)
  {
    v11 = CFGetTypeID(v9);
    if (v11 == SecCertificateGetTypeID())
    {
      v26[3] = v10;
    }

    else
    {
      v12 = CFGetTypeID(v10);
      TypeID = SecIdentityGetTypeID();
      if (v12 == TypeID)
      {
        if (personaCopy)
        {
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __88__DMCKeychain_copyCertificateWithPersistentID_useSystemKeychain_enforcePersonalPersona___block_invoke;
          v24[3] = &unk_1E7ADCC88;
          v24[4] = &v25;
          v24[5] = v10;
          v15 = [DMCPersonaHelper performBlockUnderPersonalPersona:v24];
          v17 = v15;
          if (v15)
          {
            v18 = *DMCLogObjects(v15, v16);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v30 = "+[DMCKeychain copyCertificateWithPersistentID:useSystemKeychain:enforcePersonalPersona:]";
              v31 = 2112;
              v32 = v17;
              _os_log_impl(&dword_1B1630000, v18, OS_LOG_TYPE_ERROR, "%s: Failed to execute the block under personal persona. Error: %@", buf, 0x16u);
            }
          }
        }

        else
        {
          SecIdentityCopyCertificate(v10, v26 + 3);
          v17 = 0;
        }

        CFRelease(v10);
      }

      else
      {
        v19 = *DMCLogObjects(TypeID, v14);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = CFGetTypeID(v10);
          v21 = CFCopyTypeIDDescription(v20);
          *buf = 138543618;
          v30 = dCopy;
          v31 = 2114;
          v32 = v21;
          _os_log_impl(&dword_1B1630000, v19, OS_LOG_TYPE_ERROR, "Certificate with persistent ID: %{public}@ has unexpected type: %{public}@", buf, 0x16u);
        }

        CFRelease(v10);
      }
    }
  }

  v22 = v26[3];
  _Block_object_dispose(&v25, 8);

  return v22;
}

+ (id)copyCertificatesWithPersistentIDs:(id)ds useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona
{
  personaCopy = persona;
  keychainCopy = keychain;
  v24 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v8 = [dsCopy count];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:v8];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = dsCopy;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [DMCKeychain copyCertificateWithPersistentID:*(*(&v19 + 1) + 8 * v14) useSystemKeychain:keychainCopy enforcePersonalPersona:personaCopy, v19];
          if (!v15)
          {

            v17 = 0;
            goto LABEL_14;
          }

          v16 = v15;
          [v9 addObject:v15];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v9 = v9;
  v17 = v9;
LABEL_14:

  return v17;
}

+ (id)copyPasswordWithPersistentID:(id)d useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona
{
  personaCopy = persona;
  keychainCopy = keychain;
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v9 = [self copyDataWithPersistentID:dCopy useSystemKeychain:keychainCopy enforcePersonalPersona:personaCopy];
  if (!v9)
  {
LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v13 = *DMCLogObjects(isKindOfClass, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = v13;
      v15 = CFGetTypeID(v9);
      v16 = CFCopyTypeIDDescription(v15);
      v18 = 138543618;
      v19 = dCopy;
      v20 = 2114;
      v21 = v16;
      _os_log_impl(&dword_1B1630000, v14, OS_LOG_TYPE_ERROR, "Password with persistent ID: %{public}@ has unexpected type: %{public}@", &v18, 0x16u);
    }

    goto LABEL_6;
  }

  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v9 encoding:4];
LABEL_7:

  return v12;
}

+ (void)_copyTypeRefWithQuery:(id)query useSystemKeychain:(BOOL)keychain enforcePersonalPersona:(BOOL)persona
{
  personaCopy = persona;
  keychainCopy = keychain;
  v38 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  v8 = queryCopy;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  if (personaCopy)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __78__DMCKeychain__copyTypeRefWithQuery_useSystemKeychain_enforcePersonalPersona___block_invoke;
    v22[3] = &unk_1E7ADCCB0;
    v24 = &v26;
    v23 = queryCopy;
    v25 = &v30;
    v9 = [DMCPersonaHelper performBlockUnderPersonalPersona:v22];

    if (v9)
    {
      v12 = *DMCLogObjects(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v35 = "+[DMCKeychain _copyTypeRefWithQuery:useSystemKeychain:enforcePersonalPersona:]";
        v36 = 2114;
        v37 = v9;
        _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_ERROR, "%s: Failed to execute the block under personal persona. Error: %{public}@", buf, 0x16u);
      }

      goto LABEL_16;
    }

    v13 = *(v27 + 6);
  }

  else
  {
    v13 = SecItemCopyMatching(queryCopy, &v33);
    *(v27 + 6) = v13;
  }

  if (v13 == -25300)
  {
    v15 = *DMCLogObjects(v13, v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543618;
      v35 = v8;
      v36 = 1024;
      LODWORD(v37) = keychainCopy;
      v16 = "Couldn't find item with query: %{public}@ system keychain: %d";
      v17 = v15;
      v18 = OS_LOG_TYPE_DEBUG;
      v19 = 18;
LABEL_15:
      _os_log_impl(&dword_1B1630000, v17, v18, v16, buf, v19);
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  if (v13)
  {
    v20 = *DMCLogObjects(v13, v11);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v35 = v8;
      v16 = "Cannot retrieve item with query %{public}@";
      v17 = v20;
      v18 = OS_LOG_TYPE_ERROR;
      v19 = 12;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v14 = v31[3];
LABEL_17:
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  return v14;
}

uint64_t __78__DMCKeychain__copyTypeRefWithQuery_useSystemKeychain_enforcePersonalPersona___block_invoke(uint64_t a1)
{
  result = SecItemCopyMatching(*(a1 + 32), (*(*(a1 + 48) + 8) + 24));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (BOOL)storeAttestationKey:(__SecKey *)key withGroup:(id)group label:(id)label
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695DF90];
  labelCopy = label;
  groupCopy = group;
  dictionary = [v7 dictionary];
  [dictionary setObject:key forKeyedSubscript:*MEMORY[0x1E697B3D0]];
  [dictionary setObject:groupCopy forKeyedSubscript:*MEMORY[0x1E697ABD0]];

  [dictionary setObject:labelCopy forKeyedSubscript:*MEMORY[0x1E697ADC8]];
  v11 = SecAccessControlCreateWithFlags(0, *MEMORY[0x1E697AC08], 0x40000000uLL, 0);
  [dictionary setObject:v11 forKeyedSubscript:*MEMORY[0x1E697ABC8]];
  CFRelease(v11);
  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  v12 = SecItemAdd(dictionary, 0);
  v14 = v12;
  if (v12)
  {
    v15 = *DMCLogObjects(v12, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17[0] = 67109120;
      v17[1] = v14;
      _os_log_impl(&dword_1B1630000, v15, OS_LOG_TYPE_ERROR, "Could not store attestation key in keychain. Error: %d", v17, 8u);
    }
  }

  return v14 == 0;
}

+ (__SecKey)retrieveAttestationKeyWithGroup:(id)group label:(id)label
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DF90];
  labelCopy = label;
  groupCopy = group;
  dictionary = [v5 dictionary];
  [dictionary setObject:*MEMORY[0x1E697B020] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  [dictionary setObject:groupCopy forKeyedSubscript:*MEMORY[0x1E697ABD0]];

  [dictionary setObject:labelCopy forKeyedSubscript:*MEMORY[0x1E697ADC8]];
  v9 = MEMORY[0x1E695E118];
  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  [dictionary setObject:v9 forKeyedSubscript:*MEMORY[0x1E697B328]];
  result = 0;
  v10 = SecItemCopyMatching(dictionary, &result);
  if (v10)
  {
    v12 = v10;
    v13 = *DMCLogObjects(v10, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v18 = v12;
      _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_ERROR, "Could not retrieve attestation key from keychain. Error: %d", buf, 8u);
    }

    v14 = 0;
  }

  else
  {
    v14 = result;
  }

  return v14;
}

+ (BOOL)deleteAttestationKeyWithGroup:(id)group label:(id)label
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DF90];
  labelCopy = label;
  groupCopy = group;
  dictionary = [v5 dictionary];
  [dictionary setObject:*MEMORY[0x1E697B020] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  [dictionary setObject:groupCopy forKeyedSubscript:*MEMORY[0x1E697ABD0]];

  [dictionary setObject:labelCopy forKeyedSubscript:*MEMORY[0x1E697ADC8]];
  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  v9 = SecItemDelete(dictionary);
  v11 = v9;
  if (v9)
  {
    v12 = *DMCLogObjects(v9, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14[0] = 67109120;
      v14[1] = v11;
      _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_ERROR, "Could not delete attestation key from keychain. Error: %d", v14, 8u);
    }
  }

  return v11 == 0;
}

+ (BOOL)storeAttestationCert:(__SecCertificate *)cert withGroup:(id)group label:(id)label
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695DF90];
  labelCopy = label;
  groupCopy = group;
  dictionary = [v7 dictionary];
  [dictionary setObject:cert forKeyedSubscript:*MEMORY[0x1E697B3D0]];
  [dictionary setObject:groupCopy forKeyedSubscript:*MEMORY[0x1E697ABD0]];

  [dictionary setObject:labelCopy forKeyedSubscript:*MEMORY[0x1E697ADC8]];
  [dictionary setObject:*MEMORY[0x1E697AC08] forKeyedSubscript:*MEMORY[0x1E697ABD8]];
  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  v11 = SecItemAdd(dictionary, 0);
  v13 = v11;
  if (v11)
  {
    v14 = *DMCLogObjects(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16[0] = 67109120;
      v16[1] = v13;
      _os_log_impl(&dword_1B1630000, v14, OS_LOG_TYPE_ERROR, "Could not store attestation cert in keychain. Error: %d", v16, 8u);
    }
  }

  return v13 == 0;
}

+ (__SecCertificate)retrieveAttestationCertWithGroup:(id)group label:(id)label
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DF90];
  labelCopy = label;
  groupCopy = group;
  dictionary = [v5 dictionary];
  [dictionary setObject:*MEMORY[0x1E697B000] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  [dictionary setObject:groupCopy forKeyedSubscript:*MEMORY[0x1E697ABD0]];

  [dictionary setObject:labelCopy forKeyedSubscript:*MEMORY[0x1E697ADC8]];
  v9 = MEMORY[0x1E695E118];
  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  [dictionary setObject:v9 forKeyedSubscript:*MEMORY[0x1E697B328]];
  result = 0;
  v10 = SecItemCopyMatching(dictionary, &result);
  if (v10)
  {
    v12 = v10;
    v13 = *DMCLogObjects(v10, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v18 = v12;
      _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_ERROR, "Could not retrieve attestation cert from keychain. Error: %d", buf, 8u);
    }

    v14 = 0;
  }

  else
  {
    v14 = result;
  }

  return v14;
}

+ (BOOL)deleteAttestationCertWithGroup:(id)group label:(id)label
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DF90];
  labelCopy = label;
  groupCopy = group;
  dictionary = [v5 dictionary];
  [dictionary setObject:*MEMORY[0x1E697B000] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  [dictionary setObject:groupCopy forKeyedSubscript:*MEMORY[0x1E697ABD0]];

  [dictionary setObject:labelCopy forKeyedSubscript:*MEMORY[0x1E697ADC8]];
  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  v9 = SecItemDelete(dictionary);
  v11 = v9;
  if (v9)
  {
    v12 = *DMCLogObjects(v9, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14[0] = 67109120;
      v14[1] = v11;
      _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_ERROR, "Could not delete attestation cert from keychain. Error: %d", v14, 8u);
    }
  }

  return v11 == 0;
}

+ (__SecIdentity)retrieveAttestationIdentityWithGroup:(id)group label:(id)label
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DF90];
  labelCopy = label;
  groupCopy = group;
  dictionary = [v5 dictionary];
  [dictionary setObject:*MEMORY[0x1E697B010] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  [dictionary setObject:groupCopy forKeyedSubscript:*MEMORY[0x1E697ABD0]];

  [dictionary setObject:labelCopy forKeyedSubscript:*MEMORY[0x1E697ADC8]];
  v9 = MEMORY[0x1E695E118];
  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  [dictionary setObject:v9 forKeyedSubscript:*MEMORY[0x1E697B328]];
  result = 0;
  v10 = SecItemCopyMatching(dictionary, &result);
  if (v10)
  {
    v12 = v10;
    v13 = *DMCLogObjects(v10, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v18 = v12;
      _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_ERROR, "Could not retrieve attestation identity from keychain. Error: %d", buf, 8u);
    }

    v14 = 0;
  }

  else
  {
    v14 = result;
  }

  return v14;
}

+ (BOOL)storeAttestationMetadata:(id)metadata withGroup:(id)group service:(id)service
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695DF90];
  serviceCopy = service;
  groupCopy = group;
  metadataCopy = metadata;
  dictionary = [v7 dictionary];
  [dictionary setObject:metadataCopy forKeyedSubscript:*MEMORY[0x1E697B3C0]];

  [dictionary setObject:*MEMORY[0x1E697B008] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  [dictionary setObject:groupCopy forKeyedSubscript:*MEMORY[0x1E697ABD0]];

  [dictionary setObject:serviceCopy forKeyedSubscript:*MEMORY[0x1E697AE88]];
  [dictionary setObject:*MEMORY[0x1E697AC08] forKeyedSubscript:*MEMORY[0x1E697ABD8]];
  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  v12 = SecItemAdd(dictionary, 0);
  v14 = v12;
  if (v12)
  {
    v15 = *DMCLogObjects(v12, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17[0] = 67109120;
      v17[1] = v14;
      _os_log_impl(&dword_1B1630000, v15, OS_LOG_TYPE_ERROR, "Could not store attestation metadata in keychain. Error: %d", v17, 8u);
    }
  }

  return v14 == 0;
}

+ (id)retrieveAttestationMetadataWithGroup:(id)group service:(id)service
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DF90];
  serviceCopy = service;
  groupCopy = group;
  dictionary = [v5 dictionary];
  [dictionary setObject:*MEMORY[0x1E697B008] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  [dictionary setObject:groupCopy forKeyedSubscript:*MEMORY[0x1E697ABD0]];

  [dictionary setObject:serviceCopy forKeyedSubscript:*MEMORY[0x1E697AE88]];
  v9 = MEMORY[0x1E695E118];
  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  [dictionary setObject:v9 forKeyedSubscript:*MEMORY[0x1E697B328]];
  result = 0;
  v10 = SecItemCopyMatching(dictionary, &result);
  if (v10)
  {
    v12 = v10;
    v13 = *DMCLogObjects(v10, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v18 = v12;
      _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_ERROR, "Could not retrieve attestation metadata from keychain. Error: %d", buf, 8u);
    }

    v14 = 0;
  }

  else
  {
    v14 = result;
  }

  return v14;
}

+ (BOOL)deleteAttestationMetadataWithGroup:(id)group service:(id)service
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DF90];
  serviceCopy = service;
  groupCopy = group;
  dictionary = [v5 dictionary];
  [dictionary setObject:*MEMORY[0x1E697B008] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  [dictionary setObject:groupCopy forKeyedSubscript:*MEMORY[0x1E697ABD0]];

  [dictionary setObject:serviceCopy forKeyedSubscript:*MEMORY[0x1E697AE88]];
  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  v9 = SecItemDelete(dictionary);
  v11 = v9;
  if (v9)
  {
    v12 = *DMCLogObjects(v9, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14[0] = 67109120;
      v14[1] = v11;
      _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_ERROR, "Could not delete attestation metadata from keychain. Error: %d", v14, 8u);
    }
  }

  return v11 == 0;
}

@end