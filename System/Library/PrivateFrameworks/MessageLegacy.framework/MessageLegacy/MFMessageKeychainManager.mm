@interface MFMessageKeychainManager
+ (BOOL)_matchSSLClientIdentity:(__SecIdentity *)identity withHostname:(id)hostname;
+ (BOOL)_validateIdentity:(__SecIdentity *)identity forAddress:(id)address policy:(__SecPolicy *)policy usage:(unsigned int)usage error:(id *)error;
+ (BOOL)addPassword:(id)password forServiceName:(id)name accountName:(id)accountName keychainAccessibility:(void *)accessibility synchronizable:(BOOL)synchronizable error:(id *)error;
+ (BOOL)validateEncryptionIdentity:(__SecIdentity *)identity forAddress:(id)address error:(id *)error;
+ (BOOL)validateSigningIdentity:(__SecIdentity *)identity forAddress:(id)address error:(id *)error;
+ (__SecCertificate)_copyCertificateForPersistent:(id)persistent error:(id *)error;
+ (__SecCertificate)copyEncryptionCertificateForAddress:(id)address error:(id *)error;
+ (__SecIdentity)copyClientSSLIdentityForHostName:(id)name error:(id *)error;
+ (__SecIdentity)copyIdentityForPersistentReference:(id)reference error:(id *)error;
+ (__SecPolicy)copySMIMEEncryptionPolicyForAddress:(id)address;
+ (__SecPolicy)copySMIMESigningPolicyForAddress:(id)address;
+ (id)_addCertificate:(__SecCertificate *)certificate persistent:(id *)persistent;
+ (id)_addPersistentMapping:(id)mapping forAddress:(id)address;
+ (id)_copyAllIdentitiesWithError:(id *)error usingBlock:(id)block;
+ (id)_passwordForGenericAccount:(id)account service:(id)service error:(id *)error;
+ (id)_passwordForHost:(id)host username:(id)username port:(int)port keychainProtocol:(__CFString *)protocol;
+ (id)_removeCertificateForPersistent:(id)persistent;
+ (id)copyAllEncryptionIdentitiesForAddress:(id)address error:(id *)error;
+ (id)copyAllSigningIdentitiesForAddress:(id)address error:(id *)error;
+ (id)newTrustManager;
+ (id)passwordForHost:(id)host username:(id)username port:(int)port keychainProtocol:(void *)protocol;
+ (id)passwordForServiceName:(id)name accountName:(id)accountName synchronizable:(BOOL)synchronizable error:(id *)error;
+ (id)persistentReferenceForIdentity:(__SecIdentity *)identity error:(id *)error;
+ (id)saveEncryptionCertificate:(__SecCertificate *)certificate forAddress:(id)address;
+ (int)_actionForCertificate:(__SecCertificate *)certificate policy:(__SecPolicy *)policy uncommentedAddress:(id)address;
+ (int)actionForEncryptionCertificate:(__SecCertificate *)certificate address:(id)address;
+ (int)actionForSigningIdentity:(__SecIdentity *)identity address:(id)address;
+ (void)initialize;
+ (void)removePasswordForHost:(id)host username:(id)username port:(int)port keychainProtocol:(void *)protocol;
+ (void)removePasswordForServiceName:(id)name accountName:(id)accountName;
+ (void)setPassword:(id)password forHost:(id)host username:(id)username port:(int)port keychainProtocol:(void *)protocol keychainAccessibility:(void *)accessibility;
+ (void)setPassword:(id)password forServiceName:(id)name accountName:(id)accountName keychainAccessibility:(void *)accessibility;
@end

@implementation MFMessageKeychainManager

+ (void)initialize
{
  if (!_keychainLock)
  {
    _keychainLock = [objc_alloc(MEMORY[0x277D24F28]) initWithName:@"keychainLock" andDelegate:0];
  }
}

+ (id)_passwordForHost:(id)host username:(id)username port:(int)port keychainProtocol:(__CFString *)protocol
{
  valuePtr = port;
  if ([host length] && objc_msgSend(username, "length"))
  {
    v9 = *MEMORY[0x277CBECE8];
    v10 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
    Mutable = CFDictionaryCreateMutable(v9, 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC248]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC118], host);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC0A0], v10);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC0A8], protocol);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], username);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC558], *MEMORY[0x277CBED28]);
    cf = 0;
    v12 = SecItemCopyMatching(Mutable, &cf);
    CFRelease(v10);
    CFRelease(Mutable);
    v13 = 0;
    if (v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = cf == 0;
    }

    if (!v14)
    {
      v15 = objc_alloc(MEMORY[0x277CCACA8]);
      v13 = [v15 initWithData:cf encoding:4];
      CFRelease(cf);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)passwordForHost:(id)host username:(id)username port:(int)port keychainProtocol:(void *)protocol
{
  v7 = *&port;
  [_keychainLock mf_waitForLock];
  v11 = [self _passwordForHost:host username:username port:v7 keychainProtocol:protocol];
  [_keychainLock unlock];
  return v11;
}

+ (void)setPassword:(id)password forHost:(id)host username:(id)username port:(int)port keychainProtocol:(void *)protocol keychainAccessibility:(void *)accessibility
{
  valuePtr = port;
  [_keychainLock mf_waitForLock];
  v14 = *MEMORY[0x277CBECE8];
  v15 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  if (v15)
  {
    v16 = v15;
    if ([host length])
    {
      if ([username length])
      {
        if ([password length])
        {
          v17 = [password dataUsingEncoding:4];
          if (v17)
          {
            v18 = v17;
            v25 = [self _passwordForHost:host username:username port:valuePtr keychainProtocol:protocol];
            Mutable = CFDictionaryCreateMutable(v14, 0, 0, 0);
            if (Mutable)
            {
              v20 = Mutable;
              CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC248]);
              CFDictionaryAddValue(v20, *MEMORY[0x277CDC118], host);
              CFDictionaryAddValue(v20, *MEMORY[0x277CDC0A0], v16);
              CFDictionaryAddValue(v20, *MEMORY[0x277CDC0A8], protocol);
              CFDictionaryAddValue(v20, *MEMORY[0x277CDBF20], username);
              v21 = *MEMORY[0x277CDC140];
              v22 = *MEMORY[0x277CBED28];
              CFDictionaryAddValue(v20, *MEMORY[0x277CDC140], *MEMORY[0x277CBED28]);
              if (v25)
              {
                if (([v25 isEqualToString:password] & 1) == 0)
                {
                  v23 = CFDictionaryCreateMutable(v14, 0, 0, 0);
                  if (v23)
                  {
                    v24 = v23;
                    CFDictionaryAddValue(v23, *MEMORY[0x277CDC5E8], v18);
                    CFDictionaryAddValue(v24, *MEMORY[0x277CDBED8], accessibility);
                    CFDictionaryAddValue(v24, v21, v22);
                    SecItemUpdate(v20, v24);
                    CFRelease(v24);
                  }
                }
              }

              else
              {
                result = 0;
                CFDictionaryAddValue(v20, *MEMORY[0x277CDC5E8], v18);
                CFDictionaryAddValue(v20, *MEMORY[0x277CDBED8], accessibility);
                SecItemAdd(v20, &result);
              }

              CFRelease(v20);
            }
          }
        }
      }
    }

    CFRelease(v16);
  }

  [_keychainLock unlock];
}

+ (void)removePasswordForHost:(id)host username:(id)username port:(int)port keychainProtocol:(void *)protocol
{
  valuePtr = port;
  [_keychainLock mf_waitForLock];
  if ([host length] && objc_msgSend(username, "length"))
  {
    v9 = *MEMORY[0x277CBECE8];
    v10 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
    Mutable = CFDictionaryCreateMutable(v9, 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC248]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC118], host);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC0A0], v10);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC0A8], protocol);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], username);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC140], *MEMORY[0x277CBED28]);
    SecItemDelete(Mutable);
    CFRelease(v10);
    CFRelease(Mutable);
  }

  [_keychainLock unlock];
}

+ (id)_passwordForGenericAccount:(id)account service:(id)service error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  if ([account length] && objc_msgSend(service, "length"))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], account);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC120], service);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC558], *MEMORY[0x277CBED28]);
    result = 0;
    v9 = SecItemCopyMatching(Mutable, &result);
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = result == 0;
    }

    if (v10)
    {
      v11 = v9;
      v12 = MFLogGeneral();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v13)
        {
          *buf = 67109120;
          v20 = v11;
          _os_log_impl(&dword_258BDA000, v12, OS_LOG_TYPE_DEFAULT, "#Warning SecItemCopyMatching result: %d", buf, 8u);
        }

        if (!error)
        {
          v16 = 0;
          goto LABEL_20;
        }

        v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v11 userInfo:0];
        v16 = 0;
      }

      else
      {
        if (v13)
        {
          *buf = 0;
          _os_log_impl(&dword_258BDA000, v12, OS_LOG_TYPE_DEFAULT, "SecItemCopyMatching succeeded with empty results", buf, 2u);
        }

        v14 = 0;
        v16 = 0;
        if (!error)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      v15 = objc_alloc(MEMORY[0x277CCACA8]);
      v16 = [v15 initWithData:result encoding:4];
      CFRelease(result);
      if (!error)
      {
        goto LABEL_20;
      }

      v14 = 0;
    }

    *error = v14;
LABEL_20:
    CFRelease(Mutable);
    return v16;
  }

  v16 = 0;
  return v16;
}

+ (id)passwordForServiceName:(id)name accountName:(id)accountName synchronizable:(BOOL)synchronizable error:(id *)error
{
  [_keychainLock mf_waitForLock];
  v10 = [self _passwordForGenericAccount:accountName service:name error:error];
  [_keychainLock unlock];
  return v10;
}

+ (BOOL)addPassword:(id)password forServiceName:(id)name accountName:(id)accountName keychainAccessibility:(void *)accessibility synchronizable:(BOOL)synchronizable error:(id *)error
{
  synchronizableCopy = synchronizable;
  v22 = *MEMORY[0x277D85DE8];
  [_keychainLock mf_waitForLock];
  if ([name length] && objc_msgSend(password, "length") && objc_msgSend(accountName, "length"))
  {
    v14 = [password dataUsingEncoding:4];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], accountName);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC120], name);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC140], [MEMORY[0x277CCABB0] numberWithBool:synchronizableCopy]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5E8], v14);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBED8], accessibility);
    result = 0;
    v16 = SecItemAdd(Mutable, &result);
    if (v16)
    {
      v17 = MFLogGeneral();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v21 = v16;
        _os_log_impl(&dword_258BDA000, v17, OS_LOG_TYPE_DEFAULT, "#Warning SecItemAdd result: %ld", buf, 0xCu);
      }
    }

    CFRelease(Mutable);
  }

  else
  {
    v16 = -25291;
  }

  [_keychainLock unlock];
  if (error && v16)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v16 userInfo:0];
  }

  return v16 == 0;
}

+ (void)setPassword:(id)password forServiceName:(id)name accountName:(id)accountName keychainAccessibility:(void *)accessibility
{
  v28 = *MEMORY[0x277D85DE8];
  [_keychainLock mf_waitForLock];
  if ([name length] && objc_msgSend(password, "length") && objc_msgSend(accountName, "length"))
  {
    v11 = [password dataUsingEncoding:4];
    v12 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], accountName);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC120], name);
    v14 = *MEMORY[0x277CDC140];
    v15 = *MEMORY[0x277CBED28];
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC140], *MEMORY[0x277CBED28]);
    v16 = [self _passwordForGenericAccount:accountName service:name error:0];
    if (v16)
    {
      if ([v16 isEqualToString:password])
      {
        goto LABEL_15;
      }

      v17 = CFDictionaryCreateMutable(v12, 0, 0, 0);
      CFDictionaryAddValue(v17, *MEMORY[0x277CDC5E8], v11);
      CFDictionaryAddValue(v17, *MEMORY[0x277CDBED8], accessibility);
      CFDictionaryAddValue(v17, v14, v15);
      v18 = SecItemUpdate(Mutable, v17);
      if (v17)
      {
        CFRelease(v17);
      }

      if (!v18)
      {
        goto LABEL_15;
      }

      v19 = MFLogGeneral();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 134217984;
      v27 = v18;
      v20 = "#Warning SecItemUpdate result: %ld";
      v21 = v19;
    }

    else
    {
      result = 0;
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5E8], v11);
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBED8], accessibility);
      v22 = SecItemAdd(Mutable, &result);
      if (!v22)
      {
        goto LABEL_15;
      }

      v23 = v22;
      v24 = MFLogGeneral();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 134217984;
      v27 = v23;
      v20 = "#Warning SecItemAdd result: %ld";
      v21 = v24;
    }

    _os_log_impl(&dword_258BDA000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
LABEL_15:
    CFRelease(Mutable);
  }

  [_keychainLock unlock];
}

+ (void)removePasswordForServiceName:(id)name accountName:(id)accountName
{
  v12 = *MEMORY[0x277D85DE8];
  [_keychainLock mf_waitForLock];
  if ([name length] && objc_msgSend(accountName, "length"))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], accountName);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC120], name);
    v7 = SecItemDelete(Mutable);
    if (v7)
    {
      v8 = v7;
      v9 = MFLogGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        v11 = v8;
        _os_log_impl(&dword_258BDA000, v9, OS_LOG_TYPE_DEFAULT, "#Warning SecItemDelete result: %ld", &v10, 0xCu);
      }
    }

    CFRelease(Mutable);
  }

  [_keychainLock unlock];
}

+ (__SecPolicy)copySMIMESigningPolicyForAddress:(id)address
{
  mf_copyUncommentedAddress = [address mf_copyUncommentedAddress];
  SMIME = SecPolicyCreateSMIME();

  return SMIME;
}

+ (__SecPolicy)copySMIMEEncryptionPolicyForAddress:(id)address
{
  mf_copyUncommentedAddress = [address mf_copyUncommentedAddress];
  SMIME = SecPolicyCreateSMIME();

  return SMIME;
}

+ (__SecIdentity)copyIdentityForPersistentReference:(id)reference error:(id *)error
{
  keys[3] = *MEMORY[0x277D85DE8];
  if (error)
  {
    *error = 0;
  }

  cf = 0;
  if (!reference)
  {
    return 0;
  }

  v5 = *MEMORY[0x277CDC5F0];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v5;
  keys[2] = *MEMORY[0x277CDC568];
  values[0] = *MEMORY[0x277CDC240];
  values[1] = reference;
  values[2] = *MEMORY[0x277CBED28];
  v6 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v7 = SecItemCopyMatching(v6, &cf);
  CFRelease(v6);
  if (!v7)
  {
    return cf;
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v7 userInfo:0];
  if (error)
  {
    *error = v8;
  }

  result = cf;
  if (cf)
  {
    CFRelease(cf);
    return 0;
  }

  return result;
}

+ (id)persistentReferenceForIdentity:(__SecIdentity *)identity error:(id *)error
{
  keys[4] = *MEMORY[0x277D85DE8];
  if (error)
  {
    *error = 0;
  }

  v12 = 0;
  if (identity)
  {
    v5 = *MEMORY[0x277CDC5F8];
    keys[0] = *MEMORY[0x277CDC228];
    keys[1] = v5;
    v6 = *MEMORY[0x277CDBEC8];
    keys[2] = *MEMORY[0x277CDC560];
    keys[3] = v6;
    values[0] = *MEMORY[0x277CDC240];
    values[1] = identity;
    values[2] = *MEMORY[0x277CBED28];
    values[3] = @"com.apple.identities";
    v7 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v8 = SecItemCopyMatching(v7, &v12);
    CFRelease(v7);
    if (v8)
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v8 userInfo:0];
      if (error)
      {
        *error = v9;
      }
    }

    v10 = v12;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)_matchSSLClientIdentity:(__SecIdentity *)identity withHostname:(id)hostname
{
  certificateRef = 0;
  if (SecIdentityCopyCertificate(identity, &certificateRef) || (v6 = SecCertificateCopyProperties(), CFRelease(certificateRef), !v6))
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    Count = CFArrayGetCount(v6);
    if (Count < 1)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v8 = Count;
      theString = hostname;
      v9 = 0;
      v10 = *MEMORY[0x277CDC4F8];
      v11 = *MEMORY[0x277CDC508];
      cf2 = *MEMORY[0x277CDC528];
      key = *MEMORY[0x277CDC510];
      v30 = *MEMORY[0x277CDC530];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
        v13 = CFGetTypeID(ValueAtIndex);
        if (v13 == CFDictionaryGetTypeID() && (v14 = CFDictionaryGetValue(ValueAtIndex, v10)) != 0 && CFEqual(v14, @"1.2.840.113635.100.6.7") && (v15 = CFDictionaryGetValue(ValueAtIndex, v11)) != 0 && CFEqual(v15, cf2) && (v16 = CFDictionaryGetValue(ValueAtIndex, key), v17 = CFGetTypeID(v16), v17 == CFArrayGetTypeID()) && (v18 = CFArrayGetCount(v16), v18 >= 1))
        {
          v19 = v18;
          v20 = 1;
          do
          {
            v21 = CFArrayGetValueAtIndex(v16, v20 - 1);
            v22 = CFGetTypeID(v21);
            v5 = v22 == CFDictionaryGetTypeID() && (Value = CFDictionaryGetValue(v21, v11)) != 0 && CFEqual(Value, v30) && (v24 = CFDictionaryGetValue(v21, key), v25 = CFGetTypeID(v24), v25 == CFStringGetTypeID()) && CFStringHasSuffix(theString, v24) != 0;
            if (v20 >= v19)
            {
              break;
            }

            ++v20;
          }

          while (!v5);
        }

        else
        {
          v5 = 0;
        }

        ++v9;
      }

      while (v9 < v8 && !v5);
    }

    CFRelease(v6);
  }

  return v5;
}

+ (__SecIdentity)copyClientSSLIdentityForHostName:(id)name error:(id *)error
{
  keys[4] = *MEMORY[0x277D85DE8];
  if (error)
  {
    *error = 0;
  }

  if (!name)
  {
    return 0;
  }

  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = keys[0];
  v7 = *MEMORY[0x277CDC428];
  keys[2] = *MEMORY[0x277CDC568];
  keys[3] = v7;
  values[0] = *MEMORY[0x277CDC240];
  values[1] = values[0];
  v8 = *MEMORY[0x277CDC430];
  values[2] = *MEMORY[0x277CBED28];
  values[3] = v8;
  v9 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  cf = 0;
  v10 = SecItemCopyMatching(v9, &cf);
  CFRelease(v9);
  if (v10)
  {
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v10 userInfo:0];
    if (error)
    {
      *error = v11;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    return 0;
  }

  if (!cf)
  {
    return 0;
  }

  Count = CFArrayGetCount(cf);
  if (Count < 1)
  {
LABEL_14:
    ValueAtIndex = 0;
  }

  else
  {
    v13 = Count;
    v14 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(cf, v14);
      if ([self _matchSSLClientIdentity:ValueAtIndex withHostname:name])
      {
        break;
      }

      if (v13 == ++v14)
      {
        goto LABEL_14;
      }
    }

    CFRetain(ValueAtIndex);
  }

  CFRelease(cf);
  return ValueAtIndex;
}

+ (id)copyAllSigningIdentitiesForAddress:(id)address error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__MFMessageKeychainManager_copyAllSigningIdentitiesForAddress_error___block_invoke;
  v10[3] = &unk_2798B7B40;
  v10[5] = address;
  v10[6] = &v11;
  v10[4] = self;
  v5 = [self _copyAllIdentitiesWithError:error usingBlock:v10];
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 count];
    v8 = v12[3];
    *buf = 134218498;
    v16 = v7;
    v17 = 2048;
    v18 = v8;
    v19 = 2112;
    addressCopy = address;
    _os_log_impl(&dword_258BDA000, v6, OS_LOG_TYPE_INFO, "#SMIMEErrors Found %lu (out of %lu) matching signing identities for %@", buf, 0x20u);
  }

  _Block_object_dispose(&v11, 8);
  return v5;
}

+ (id)copyAllEncryptionIdentitiesForAddress:(id)address error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__MFMessageKeychainManager_copyAllEncryptionIdentitiesForAddress_error___block_invoke;
  v10[3] = &unk_2798B7B40;
  v10[5] = address;
  v10[6] = &v11;
  v10[4] = self;
  v5 = [self _copyAllIdentitiesWithError:error usingBlock:v10];
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 count];
    v8 = v12[3];
    *buf = 134218498;
    v16 = v7;
    v17 = 2048;
    v18 = v8;
    v19 = 2112;
    addressCopy = address;
    _os_log_impl(&dword_258BDA000, v6, OS_LOG_TYPE_INFO, "#SMIMEErrors Found %lu (out of %lu) matching encryption identities for %@", buf, 0x20u);
  }

  _Block_object_dispose(&v11, 8);
  return v5;
}

+ (id)_copyAllIdentitiesWithError:(id *)error usingBlock:(id)block
{
  keys[4] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CDC428];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v6;
  v7 = *MEMORY[0x277CDBEC8];
  keys[2] = *MEMORY[0x277CDC568];
  keys[3] = v7;
  v8 = *MEMORY[0x277CDC430];
  values[0] = *MEMORY[0x277CDC240];
  values[1] = v8;
  values[2] = *MEMORY[0x277CBED28];
  values[3] = @"com.apple.identities";
  v9 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  result = 0;
  v10 = SecItemCopyMatching(v9, &result);
  CFRelease(v9);
  if (v10 != -25300 && v10)
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v10 userInfo:0];
    if (error)
    {
      *error = v15;
    }

    if (result)
    {
      CFRelease(result);
    }

    v16 = MFLogGeneral();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v20 = v10;
      _os_log_impl(&dword_258BDA000, v16, OS_LOG_TYPE_INFO, "#SMIMEErrors SecItemCopyMatching returned %ld", buf, 0xCu);
    }

    return 0;
  }

  if (!result)
  {
    return 0;
  }

  Count = CFArrayGetCount(result);
  v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:Count];
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(result, i);
      if (!block || (*(block + 2))(block, ValueAtIndex))
      {
        [v12 addObject:ValueAtIndex];
      }
    }
  }

  CFRelease(result);
  if (error && v12 && *error)
  {
    *error = 0;
  }

  return v12;
}

+ (BOOL)validateSigningIdentity:(__SecIdentity *)identity forAddress:(id)address error:(id *)error
{
  v9 = [self copySMIMESigningPolicyForAddress:address];
  LOBYTE(error) = [self _validateIdentity:identity forAddress:address policy:v9 usage:1 error:error];
  CFRelease(v9);
  return error;
}

+ (BOOL)validateEncryptionIdentity:(__SecIdentity *)identity forAddress:(id)address error:(id *)error
{
  v9 = [self copySMIMEEncryptionPolicyForAddress:address];
  LOBYTE(error) = [self _validateIdentity:identity forAddress:address policy:v9 usage:4 error:error];
  CFRelease(v9);
  return error;
}

+ (BOOL)_validateIdentity:(__SecIdentity *)identity forAddress:(id)address policy:(__SecPolicy *)policy usage:(unsigned int)usage error:(id *)error
{
  newTrustManager = [self newTrustManager];
  mf_uncommentedAddress = [address mf_uncommentedAddress];
  certificateRef = 0;
  v14 = SecIdentityCopyCertificate(identity, &certificateRef);
  if (certificateRef)
  {
    cf = 0;
    v15 = SecTrustCreateWithCertificates(certificateRef, policy, &cf);
    if (!cf)
    {
      if (!v15 || error && *error || (v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v15 userInfo:0], !error))
      {
        v16 = 0;
      }

      else
      {
        v16 = 0;
        *error = v18;
      }

      goto LABEL_24;
    }

    if ([newTrustManager actionForSMIMETrust:cf sender:mf_uncommentedAddress] && (SecCertificateGetKeyUsage() & usage) != 0)
    {
      v16 = 1;
LABEL_23:
      CFRelease(cf);
LABEL_24:
      CFRelease(certificateRef);
      goto LABEL_25;
    }

    if (error)
    {
      if (!*error)
      {
        v16 = 0;
        *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageKeychainManagerCertificateDeniedDomain" code:0 userInfo:0];
        goto LABEL_23;
      }
    }

    else
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageKeychainManagerCertificateDeniedDomain" code:0 userInfo:0];
    }

    v16 = 0;
    goto LABEL_23;
  }

  if (!v14 || error && *error || (v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v14 userInfo:0], !error))
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    *error = v17;
  }

LABEL_25:

  return v16;
}

+ (__SecCertificate)copyEncryptionCertificateForAddress:(id)address error:(id *)error
{
  keys[4] = *MEMORY[0x277D85DE8];
  cf = 0;
  mf_uncommentedAddress = [address mf_uncommentedAddress];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"S/MIME Encryption for %@", mf_uncommentedAddress];
  v7 = *MEMORY[0x277CDC228];
  v8 = *MEMORY[0x277CDBF20];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v8;
  v9 = *MEMORY[0x277CDBEC8];
  keys[2] = *MEMORY[0x277CDC558];
  keys[3] = v9;
  values[0] = *MEMORY[0x277CDC238];
  values[1] = v6;
  v10 = *MEMORY[0x277CBED28];
  values[2] = *MEMORY[0x277CBED28];
  values[3] = @"com.apple.mobilemail.smime";
  v11 = *MEMORY[0x277CBECE8];
  v12 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);

  result = 0;
  v13 = SecItemCopyMatching(v12, &result);
  if (result)
  {
    v14 = *MEMORY[0x277CDC5F0];
    *v32 = v7;
    *&v32[8] = v14;
    *&v32[16] = *MEMORY[0x277CDC568];
    v31[0] = *MEMORY[0x277CDC230];
    v31[1] = result;
    v31[2] = v10;
    v15 = CFDictionaryCreate(v11, v32, v31, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFRelease(result);
    v16 = SecItemCopyMatching(v15, &cf);
    CFRelease(v15);
    if (v16)
    {
      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v16 userInfo:0];
      if (error)
      {
        *error = v17;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    else if (cf)
    {
      goto LABEL_15;
    }

    SecItemDelete(v12);
LABEL_15:
    v20 = MFLogGeneral();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v23 = "a";
      if (!cf)
      {
        v23 = "no";
      }

      *buf = 136315394;
      v28 = v23;
      v29 = 2112;
      v30 = mf_uncommentedAddress;
      v21 = "#SMIMEErrors Found %s certificate for %@.";
      v22 = buf;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v18 = v13;
  if (v13 != -25300)
  {
    if (v13)
    {
      v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v13 userInfo:0];
      if (error)
      {
        *error = v19;
      }
    }
  }

  v20 = MFLogGeneral();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *v32 = 138412546;
    *&v32[4] = mf_uncommentedAddress;
    *&v32[12] = 2048;
    *&v32[14] = v18;
    v21 = "#SMIMEErrors Found no certificates for %@ (%ld)";
    v22 = v32;
LABEL_19:
    _os_log_impl(&dword_258BDA000, v20, OS_LOG_TYPE_INFO, v21, v22, 0x16u);
  }

LABEL_20:
  CFRelease(v12);
  v24 = cf;
  if (error && cf)
  {
    if (*error)
    {
      *error = 0;
    }
  }

  return v24;
}

+ (id)_addCertificate:(__SecCertificate *)certificate persistent:(id *)persistent
{
  keys[4] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CDC5F8];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v5;
  v6 = *MEMORY[0x277CDBEC8];
  keys[2] = *MEMORY[0x277CDC560];
  keys[3] = v6;
  values[0] = *MEMORY[0x277CDC230];
  values[1] = certificate;
  values[2] = *MEMORY[0x277CBED28];
  values[3] = @"com.apple.mobilemail.smime";
  v7 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v8 = SecItemAdd(v7, persistent);
  if (v8 == -25299)
  {
    v8 = SecItemCopyMatching(v7, persistent);
  }

  CFRelease(v7);
  if (!v8)
  {
    v9 = 0;
    if (!persistent)
    {
      return v9;
    }

    goto LABEL_5;
  }

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v8 userInfo:0];
  if (persistent)
  {
LABEL_5:
    v10 = *persistent;
  }

  return v9;
}

+ (__SecCertificate)_copyCertificateForPersistent:(id)persistent error:(id *)error
{
  keys[3] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CDC5F0];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v5;
  keys[2] = *MEMORY[0x277CDC568];
  values[0] = *MEMORY[0x277CDC230];
  values[1] = persistent;
  values[2] = *MEMORY[0x277CBED28];
  v6 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v11 = 0;
  v7 = SecItemCopyMatching(v6, &v11);
  CFRelease(v6);
  if (error)
  {
    if (v7 == -25300 || v7 == 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v7 userInfo:0];
    }

    *error = v9;
  }

  return v11;
}

+ (id)_addPersistentMapping:(id)mapping forAddress:(id)address
{
  keys[4] = *MEMORY[0x277D85DE8];
  mappingCopy = mapping;
  mf_uncommentedAddress = [address mf_uncommentedAddress];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"S/MIME Encryption for %@", mf_uncommentedAddress];
  v7 = *MEMORY[0x277CDBF20];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v7;
  v8 = *MEMORY[0x277CDC5E8];
  v9 = *MEMORY[0x277CDBEC8];
  keys[2] = *MEMORY[0x277CDC5E8];
  keys[3] = v9;
  values[0] = *MEMORY[0x277CDC238];
  values[1] = v6;
  values[2] = mapping;
  values[3] = @"com.apple.mobilemail.smime";
  v10 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);

  v11 = SecItemAdd(v10, 0);
  if (v11 == -25299)
  {
    v12 = [(__CFDictionary *)v10 mutableCopy];
    [v12 removeObjectForKey:v8];
    v13 = objc_alloc(MEMORY[0x277CBEAC0]);
    v14 = [v13 initWithObjects:&mappingCopy forKeys:MEMORY[0x277CDC5E8] count:1];
    v11 = SecItemUpdate(v12, v14);
  }

  CFRelease(v10);
  if (v11)
  {
    return [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v11 userInfo:0];
  }

  else
  {
    return 0;
  }
}

+ (id)_removeCertificateForPersistent:(id)persistent
{
  keys[4] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CDC228];
  v5 = *MEMORY[0x277CDC558];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v5;
  v6 = *MEMORY[0x277CDBEC8];
  keys[2] = *MEMORY[0x277CDC428];
  keys[3] = v6;
  v7 = *MEMORY[0x277CBED28];
  values[0] = *MEMORY[0x277CDC238];
  values[1] = v7;
  values[2] = *MEMORY[0x277CDC430];
  values[3] = @"com.apple.mobilemail.smime";
  v8 = *MEMORY[0x277CBECE8];
  v9 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  theArray = 0;
  v10 = SecItemCopyMatching(v9, &theArray);
  CFRelease(v9);
  if (v10 != -25300 && v10)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA590];
    v21 = v10;
    return [v19 errorWithDomain:v20 code:v21 userInfo:0];
  }

  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v12 = Count;
      v13 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v13);
        if (CFEqual(ValueAtIndex, persistent))
        {
          break;
        }

        if (v12 == ++v13)
        {
          goto LABEL_8;
        }
      }

      CFRelease(theArray);
      return 0;
    }

LABEL_8:
    CFRelease(theArray);
  }

  v15 = *MEMORY[0x277CDC5F0];
  v25[0] = v4;
  v25[1] = v15;
  v24[0] = *MEMORY[0x277CDC230];
  v24[1] = persistent;
  v16 = CFDictionaryCreate(v8, v25, v24, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v17 = SecItemDelete(v16);
  CFRelease(v16);
  if (v17 != -25300 && v17 != 0)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA590];
    v21 = v17;
    return [v19 errorWithDomain:v20 code:v21 userInfo:0];
  }

  return 0;
}

+ (id)saveEncryptionCertificate:(__SecCertificate *)certificate forAddress:(id)address
{
  keys[4] = *MEMORY[0x277D85DE8];
  v23 = 0;
  mf_uncommentedAddress = [address mf_uncommentedAddress];
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"S/MIME Encryption for %@", mf_uncommentedAddress];
  v8 = *MEMORY[0x277CDBF20];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v8;
  v9 = *MEMORY[0x277CDBEC8];
  keys[2] = *MEMORY[0x277CDC558];
  keys[3] = v9;
  values[0] = *MEMORY[0x277CDC238];
  values[1] = v7;
  values[2] = *MEMORY[0x277CBED28];
  values[3] = @"com.apple.mobilemail.smime";
  v10 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);

  result = 0;
  v11 = SecItemCopyMatching(v10, &result);
  if (v11 != -25300 && v11)
  {
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v11 userInfo:0];
    goto LABEL_22;
  }

  if (certificate)
  {
    if (!result)
    {
      v16 = 0;
      v17 = 1;
      goto LABEL_16;
    }

    v12 = [self _copyCertificateForPersistent:result error:&v23];
    if (!v12)
    {
      goto LABEL_22;
    }

    v13 = v12;
    SHA1Digest = SecCertificateGetSHA1Digest();
    v15 = SecCertificateGetSHA1Digest();
    LODWORD(SHA1Digest) = CFEqual(SHA1Digest, v15) == 0;
    CFRelease(v13);
    v16 = v23;
    v17 = SHA1Digest;
    if (!SHA1Digest)
    {
LABEL_16:
      if (!v17)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  if (v16)
  {
    goto LABEL_16;
  }

  v18 = SecItemDelete(v10);
  if (v18 && v18 != -25300)
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v18 userInfo:0];
    v23 = v16;
    if (!v17)
    {
      goto LABEL_22;
    }
  }

  else
  {
    [self _removeCertificateForPersistent:result];
    v16 = v23;
    if (!v17)
    {
      goto LABEL_22;
    }
  }

LABEL_17:
  if (!v16)
  {
    v23 = [self _addCertificate:certificate persistent:&result];
    if (!v23)
    {
      v23 = [self _addPersistentMapping:result forAddress:mf_uncommentedAddress];
      if (v23)
      {
        [self _removeCertificateForPersistent:result];
      }
    }
  }

LABEL_22:
  CFRelease(v10);
  if (!v23)
  {
    return 0;
  }

  v19 = MFLogGeneral();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
  v21 = v23;
  if (v20)
  {
    *buf = 138412546;
    v25 = mf_uncommentedAddress;
    v26 = 2112;
    v27 = v23;
    _os_log_error_impl(&dword_258BDA000, v19, OS_LOG_TYPE_ERROR, "#SMIMEErrors Error saving encryption certificate for %@: %@", buf, 0x16u);
    return v23;
  }

  return v21;
}

+ (int)_actionForCertificate:(__SecCertificate *)certificate policy:(__SecPolicy *)policy uncommentedAddress:(id)address
{
  trust = 0;
  SecTrustCreateWithCertificates(certificate, policy, &trust);
  if (!trust)
  {
    return 0;
  }

  newTrustManager = [self newTrustManager];
  v8 = [newTrustManager actionForSMIMETrust:trust sender:address];

  CFRelease(trust);
  return v8;
}

+ (int)actionForSigningIdentity:(__SecIdentity *)identity address:(id)address
{
  certificateRef = 0;
  SecIdentityCopyCertificate(identity, &certificateRef);
  if (!certificateRef)
  {
    return 0;
  }

  mf_uncommentedAddress = [address mf_uncommentedAddress];
  v7 = [self copySMIMESigningPolicyForAddress:mf_uncommentedAddress];
  v8 = [self _actionForCertificate:certificateRef policy:v7 uncommentedAddress:mf_uncommentedAddress];
  CFRelease(v7);
  CFRelease(certificateRef);
  return v8;
}

+ (int)actionForEncryptionCertificate:(__SecCertificate *)certificate address:(id)address
{
  mf_uncommentedAddress = [address mf_uncommentedAddress];
  v7 = [self copySMIMEEncryptionPolicyForAddress:mf_uncommentedAddress];
  LODWORD(certificate) = [self _actionForCertificate:certificate policy:v7 uncommentedAddress:mf_uncommentedAddress];
  CFRelease(v7);
  return certificate;
}

+ (id)newTrustManager
{
  v2 = objc_alloc(MEMORY[0x277CF9710]);

  return [v2 initWithAccessGroup:@"com.apple.mobilemail.smime"];
}

@end