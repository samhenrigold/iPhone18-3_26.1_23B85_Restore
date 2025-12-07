@interface NEIdentityKeychainItem
+ (id)copyIdentities:(id)identities fromDomain:(int64_t)domain;
+ (id)importPKCS12Data:(id)data passphrase:(id)passphrase;
+ (uint64_t)copyPropertiesForIdentity:(void *)identity persistentReference:;
- (id)copyQueryWithReturnTypes:(id)types;
- (id)copyWithZone:(_NSZone *)zone;
- (void)sync;
@end

@implementation NEIdentityKeychainItem

- (void)sync
{
  v61[1] = *MEMORY[0x1E69E9840];
  persistentReference = [(NEKeychainItem *)self persistentReference];
  if (persistentReference)
  {
  }

  else
  {
    identifier = [(NEKeychainItem *)self identifier];

    if (identifier)
    {
      v46 = 0;
      v5 = [NEKeychainItem copyDataFromKeychainItem:0 outData:0 outIdentifier:&v46 outPersistentReference:?];
      v6 = v46;
      if (v5)
      {
        [(NEKeychainItem *)self setPersistentReference:v6];
      }
    }
  }

  persistentReference2 = [(NEKeychainItem *)self persistentReference];

  if (persistentReference2)
  {
    result = 0;
    v61[0] = *MEMORY[0x1E697B328];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:1];
    v9 = [(NEIdentityKeychainItem *)self copyQueryWithReturnTypes:v8];

    if (!SecItemCopyMatching(v9, &result))
    {
      v17 = result;
      TypeID = SecIdentityGetTypeID();
      if (v17)
      {
        if (CFGetTypeID(v17) == TypeID)
        {
          *buf = 0;
          if (!SecIdentityCopyCertificate(result, buf))
          {
            v19 = SecCertificateCopySubjectSummary(*buf);
            v20 = v19;
            if (self)
            {
              selfCopy = self;
              objc_sync_enter(selfCopy);
              objc_storeStrong(&selfCopy->super._identifier, v19);
              objc_sync_exit(selfCopy);
            }

            CFRelease(*buf);
          }
        }
      }
    }

    if (result)
    {
      CFRelease(result);
    }

    accessGroup = [(NEKeychainItem *)self accessGroup];

    if (!accessGroup)
    {
      goto LABEL_40;
    }

    result = 0;
    v60 = *MEMORY[0x1E697B310];
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
    v12 = [(NEIdentityKeychainItem *)self copyQueryWithReturnTypes:v11];

    v13 = SecItemCopyMatching(v12, &result);
    if (v13)
    {
      v14 = v13;
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        persistentReference3 = [(NEKeychainItem *)self persistentReference];
        *buf = 138412546;
        *&buf[4] = persistentReference3;
        v48 = 1024;
        LODWORD(v49) = v14;
        _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, "Cannot update access group, failed to find item with persistent reference %@: %d", buf, 0x12u);
      }

      goto LABEL_37;
    }

    v15 = result;
    if (isa_nsdictionary(v15))
    {
      v22 = *MEMORY[0x1E697AE60];
      v23 = [v15 objectForKeyedSubscript:*MEMORY[0x1E697AE60]];
      if (isa_nsdata(v23))
      {
        v25 = *MEMORY[0x1E697B000];
        v56[0] = *MEMORY[0x1E697AFF8];
        v24 = v56[0];
        v56[1] = v22;
        v58[0] = v25;
        v58[1] = v23;
        v57 = *MEMORY[0x1E697B3A8];
        v26 = v57;
        v59 = *MEMORY[0x1E695E4D0];
        v27 = v59;
        persistentReference4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v56 count:3];
        v29 = *MEMORY[0x1E697B020];
        v30 = *MEMORY[0x1E697AC40];
        v54[0] = v24;
        v54[1] = v30;
        v55[0] = v29;
        v55[1] = v23;
        v54[2] = v26;
        v55[2] = v27;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:3];
        v52 = *MEMORY[0x1E697ABD0];
        accessGroup2 = [(NEKeychainItem *)self accessGroup];
        v53 = accessGroup2;
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];

        v34 = SecItemUpdate(persistentReference4, v33);
        if (v34)
        {
          v35 = v34;
          v36 = ne_log_obj();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            accessGroup3 = [(NEKeychainItem *)self accessGroup];
            *buf = 138412802;
            *&buf[4] = accessGroup3;
            v48 = 2112;
            v49 = v23;
            v50 = 1024;
            v51 = v35;
            v37 = "Failed to update the access group to %@ for certificate %@: %d";
LABEL_45:
            _os_log_error_impl(&dword_1BA83C000, v36, OS_LOG_TYPE_ERROR, v37, buf, 0x1Cu);
          }
        }

        else
        {
          v41 = SecItemUpdate(v31, v33);
          if (!v41)
          {
LABEL_34:

            goto LABEL_35;
          }

          v42 = v41;
          v36 = ne_log_obj();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            accessGroup3 = [(NEKeychainItem *)self accessGroup];
            *buf = 138412802;
            *&buf[4] = accessGroup3;
            v48 = 2112;
            v49 = v23;
            v50 = 1024;
            v51 = v42;
            v37 = "Failed to update the access group to %@ for key %@: %d";
            goto LABEL_45;
          }
        }

        goto LABEL_34;
      }

      persistentReference4 = ne_log_obj();
      if (!os_log_type_enabled(persistentReference4, OS_LOG_TYPE_ERROR))
      {
LABEL_35:

        goto LABEL_36;
      }

      *buf = 0;
      v38 = "Cannot update access group, identity has no public key hash attribute";
      v39 = persistentReference4;
      v40 = 2;
    }

    else
    {
      v23 = ne_log_obj();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
LABEL_36:

LABEL_37:
        [(NEKeychainItem *)self setAccessGroup:0];
        if (result)
        {
          CFRelease(result);
        }

LABEL_40:
        goto LABEL_41;
      }

      persistentReference4 = [(NEKeychainItem *)self persistentReference];
      *buf = 138412290;
      *&buf[4] = persistentReference4;
      v38 = "Cannot update access group, failed to fetch attributes for persistent reference %@";
      v39 = v23;
      v40 = 12;
    }

    _os_log_error_impl(&dword_1BA83C000, v39, OS_LOG_TYPE_ERROR, v38, buf, v40);
    goto LABEL_35;
  }

LABEL_41:
  [(NEKeychainItem *)self setData:0];
  if (self)
  {
    objc_setProperty_atomic_copy(self, v43, 0, 72);
  }
}

- (id)copyQueryWithReturnTypes:(id)types
{
  v22 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  persistentReference = [(NEKeychainItem *)self persistentReference];

  if (persistentReference)
  {
    if (typesCopy)
    {
      [v5 setObject:*MEMORY[0x1E697B010] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
    }

    persistentReference2 = [(NEKeychainItem *)self persistentReference];
    v8 = MEMORY[0x1E697B3C8];
  }

  else
  {
    identifier = [(NEKeychainItem *)self identifier];

    if (!identifier)
    {
      goto LABEL_8;
    }

    [v5 setObject:*MEMORY[0x1E697B010] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
    persistentReference2 = [(NEKeychainItem *)self identifier];
    v8 = MEMORY[0x1E697ADC8];
  }

  [v5 setObject:persistentReference2 forKeyedSubscript:*v8];

LABEL_8:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = typesCopy;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    v14 = MEMORY[0x1E695E118];
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [v5 setObject:v14 forKeyedSubscript:{*(*(&v17 + 1) + 8 * v15++), v17}];
      }

      while (v12 != v15);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  persistentReference = [(NEKeychainItem *)self persistentReference];
  domain = [(NEKeychainItem *)self domain];
  accessGroup = [(NEKeychainItem *)self accessGroup];
  v8 = [v4 initWithPersistentReference:persistentReference domain:domain accessGroup:accessGroup];

  return v8;
}

+ (id)importPKCS12Data:(id)data passphrase:(id)passphrase
{
  v32[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  passphraseCopy = passphrase;
  v7 = passphraseCopy;
  if (passphraseCopy)
  {
    v8 = *MEMORY[0x1E697B0B0];
    items = 0;
    v31 = v8;
    v32[0] = passphraseCopy;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    if (!v9 || SecPKCS12Import(dataCopy, v9, &items) || ((v10 = *MEMORY[0x1E695E480], Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), v12 = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]), Mutable) ? (v13 = v12 == 0) : (v13 = 1), v13 || (v14 = v12, !CFArrayGetCount(items))))
    {
      v14 = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(items, 0);
      Value = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E697B0B8]);
      trust = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E697B0C0]);
      CertificateCount = SecTrustGetCertificateCount(trust);
      if (CertificateCount >= 1)
      {
        v16 = 0;
        key = *MEMORY[0x1E697B3D0];
        v25 = *MEMORY[0x1E697B320];
        v17 = *MEMORY[0x1E695E4D0];
        v18 = *MEMORY[0x1E697ABD8];
        v19 = *MEMORY[0x1E697ABE0];
        v20 = *MEMORY[0x1E697B3A8];
        do
        {
          result = 0;
          CertificateAtIndex = Value;
          if (v16)
          {
            CertificateAtIndex = SecTrustGetCertificateAtIndex(trust, v16);
          }

          CFDictionarySetValue(Mutable, key, CertificateAtIndex);
          CFDictionarySetValue(Mutable, v25, v17);
          CFDictionarySetValue(Mutable, v18, v19);
          CFDictionarySetValue(Mutable, v20, v17);
          v22 = SecItemAdd(Mutable, &result);
          if (v22 == -25299)
          {
            CFDictionaryRemoveValue(Mutable, v18);
            v22 = SecItemCopyMatching(Mutable, &result);
          }

          if (!v22 && result)
          {
            CFArrayAppendValue(v14, result);
            CFRelease(result);
          }

          ++v16;
        }

        while (CertificateCount != v16);
      }

      CFRelease(Mutable);
      CFRelease(items);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)copyIdentities:(id)identities fromDomain:(int64_t)domain
{
  v38 = *MEMORY[0x1E69E9840];
  identitiesCopy = identities;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  result = 0;
  [v5 setObject:*MEMORY[0x1E697B010] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B328]];
  if (identitiesCopy)
  {
    v6 = *MEMORY[0x1E697B3C8];
    v7 = v5;
    v8 = identitiesCopy;
  }

  else
  {
    v8 = *MEMORY[0x1E697B268];
    v6 = *MEMORY[0x1E697B260];
    v7 = v5;
  }

  [v7 setObject:v8 forKeyedSubscript:v6];
  [v5 setObject:*MEMORY[0x1E695E4D0] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
  v9 = SecItemCopyMatching(v5, &result);
  if (v9)
  {
    v10 = v9;
    v11 = ne_log_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    *buf = 67109120;
    LODWORD(v37) = v10;
    v31 = "SecItemCopyMatching failed: %d";
    v32 = v11;
    v33 = 8;
    goto LABEL_35;
  }

  v14 = result;
  TypeID = CFArrayGetTypeID();
  if (v14 && CFGetTypeID(v14) == TypeID)
  {
    v34 = identitiesCopy;
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v16 = 0;
    v12 = 0;
    v17 = result;
    v18 = 0x1E7F04000uLL;
    while (v16 < CFArrayGetCount(v17))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v17, v16);
      v20 = SecIdentityGetTypeID();
      if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == v20)
      {
        v21 = [(NEIdentityKeychainItem *)*(v18 + 3184) copyPropertiesForIdentity:0 persistentReference:?];
        v22 = v21;
        if (v21)
        {
          v23 = [v21 objectForKeyedSubscript:@"persistent-reference"];
          v24 = [v11 objectForKeyedSubscript:v23];

          if (!v24)
          {
            v25 = [v22 objectForKeyedSubscript:@"persistent-reference"];
            [v11 setObject:v22 forKeyedSubscript:v25];

            if (!v12)
            {
              v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [v12 addObject:{v22, v34}];
            v18 = 0x1E7F04000;
          }
        }
      }

      ++v16;
    }

    identitiesCopy = v34;
  }

  else
  {
    v26 = result;
    v27 = SecIdentityGetTypeID();
    if (!v26 || CFGetTypeID(v26) != v27)
    {
      v28 = result;
      v29 = ne_log_obj();
      v11 = v29;
      if (!v28)
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_INFO, "SecItemCopyMatching returned NULL while searching for identities", buf, 2u);
        }

        goto LABEL_6;
      }

      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
LABEL_6:
        v12 = 0;
        goto LABEL_7;
      }

      v30 = CFGetTypeID(result);
      *buf = 134217984;
      v37 = v30;
      v31 = "SecItemCopyMatching returned an unsupported type (%lu) when searching for identities";
      v32 = v11;
      v33 = 12;
LABEL_35:
      _os_log_error_impl(&dword_1BA83C000, v32, OS_LOG_TYPE_ERROR, v31, buf, v33);
      goto LABEL_6;
    }

    v11 = [NEIdentityKeychainItem copyPropertiesForIdentity:identitiesCopy persistentReference:?];
    if (!v11)
    {
      goto LABEL_6;
    }

    v12 = [MEMORY[0x1E695DF70] arrayWithObject:v11];
  }

LABEL_7:

  if (result)
  {
    CFRelease(result);
  }

  return v12;
}

+ (uint64_t)copyPropertiesForIdentity:(void *)identity persistentReference:
{
  v30 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v5 = objc_opt_self();
  if (identityCopy)
  {
    goto LABEL_2;
  }

  objc_opt_self();
  result = 0;
  v10 = *MEMORY[0x1E697B3D0];
  certificateRef[0] = *MEMORY[0x1E697B320];
  certificateRef[1] = v10;
  *buf = MEMORY[0x1E695E118];
  *&buf[8] = a2;
  certificateRef[2] = *MEMORY[0x1E697B3A8];
  *&buf[16] = *MEMORY[0x1E695E4D0];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:certificateRef count:3];
  if (SecItemCopyMatching(v11, &result))
  {
    goto LABEL_19;
  }

  v12 = result;
  TypeID = CFDataGetTypeID();
  if (!v12)
  {
    identityCopy = result;
LABEL_14:
    v16 = ne_log_obj();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (identityCopy)
    {
      if (v17)
      {
        v18 = CFGetTypeID(result);
        *v26 = 134217984;
        v27 = v18;
        v19 = "SecItemCopyMatching returned an object with an unexpected type (%lu) when getting an identity's persistent reference";
        v20 = v16;
        v21 = 12;
LABEL_25:
        _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, v19, v26, v21);
      }
    }

    else if (v17)
    {
      *v26 = 0;
      v19 = "SecItemCopyMatching returned NULL when getting an identity's persistent reference";
      v20 = v16;
      v21 = 2;
      goto LABEL_25;
    }

LABEL_19:
    if (result)
    {
      CFRelease(result);
    }

    identityCopy = 0;
    goto LABEL_22;
  }

  v14 = TypeID;
  v15 = CFGetTypeID(v12);
  identityCopy = result;
  if (v15 != v14)
  {
    goto LABEL_14;
  }

  if (!identityCopy)
  {
LABEL_22:
    v9 = 0;
    goto LABEL_23;
  }

LABEL_2:
  certificateRef[0] = 0;
  v6 = SecIdentityCopyCertificate(a2, certificateRef);
  if (v6)
  {
    v7 = v6;
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v5;
      *&buf[12] = 1024;
      *&buf[14] = v7;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "%@: failed to get the certificate from an identity: %d", buf, 0x12u);
    }

    v9 = 0;
  }

  else
  {
    v8 = SecCertificateCopyData(certificateRef[0]);
    CFRelease(certificateRef[0]);
    v24[0] = @"persistent-reference";
    v24[1] = @"certificate-data";
    v25[0] = identityCopy;
    v25[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
  }

LABEL_23:
  return v9;
}

@end