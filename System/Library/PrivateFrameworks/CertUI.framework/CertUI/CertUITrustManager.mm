@interface CertUITrustManager
+ (id)defaultTrustManager;
- (BOOL)_hasExceptionsForSMIMETrust:(__SecTrust *)trust sender:(id)sender;
- (CertUITrustManager)initWithAccessGroup:(id)group;
- (id)_getExceptionsForSSLTrust:(__SecTrust *)trust hostname:(id)hostname service:(id)service;
- (int)_actionForTrust:(__SecTrust *)trust exceptions:(id)exceptions;
- (int)actionForSMIMETrust:(__SecTrust *)trust sender:(id)sender;
- (int)actionForSSLTrust:(__SecTrust *)trust hostname:(id)hostname service:(id)service;
- (unsigned)_rawTrustResultForTrust:(__SecTrust *)trust exceptions:(id)exceptions;
- (unsigned)rawTrustResultForSSLTrust:(__SecTrust *)trust hostname:(id)hostname service:(id)service;
- (void)addSMIMETrust:(__SecTrust *)trust sender:(id)sender;
- (void)addSSLTrust:(__SecTrust *)trust hostname:(id)hostname service:(id)service;
- (void)removeAllTrusts;
- (void)removeSMIMETrust:(__SecTrust *)trust sender:(id)sender;
- (void)removeSSLTrust:(__SecTrust *)trust hostname:(id)hostname service:(id)service;
@end

@implementation CertUITrustManager

+ (id)defaultTrustManager
{
  if (defaultTrustManager_onceToken != -1)
  {
    +[CertUITrustManager defaultTrustManager];
  }

  v3 = defaultTrustManager_sDefaultManager;

  return v3;
}

uint64_t __41__CertUITrustManager_defaultTrustManager__block_invoke()
{
  defaultTrustManager_sDefaultManager = objc_alloc_init(CertUITrustManager);

  return MEMORY[0x2821F96F8]();
}

- (CertUITrustManager)initWithAccessGroup:(id)group
{
  groupCopy = group;
  v11.receiver = self;
  v11.super_class = CertUITrustManager;
  v5 = [(CertUITrustManager *)&v11 init];
  v7 = v5;
  if (v5)
  {
    CertUILoggingInitialize(v5, v6);
    v8 = [groupCopy copy];
    access = v7->_access;
    v7->_access = v8;
  }

  return v7;
}

- (int)_actionForTrust:(__SecTrust *)trust exceptions:(id)exceptions
{
  v17 = *MEMORY[0x277D85DE8];
  SecTrustSetExceptions(trust, exceptions);
  v14 = 0;
  if (MEMORY[0x245D32EE0](trust, &v14))
  {
    return 0;
  }

  if (v14 <= 3)
  {
    if (v14 != 1)
    {
      if (v14 == 3)
      {
        v7 = _CertUILogObjects;
        if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v16 = v14;
          v8 = "Got SecTrustEvaluate result %u. Denying.";
          v9 = v7;
          v10 = OS_LOG_TYPE_INFO;
LABEL_15:
          _os_log_impl(&dword_2433D3000, v9, v10, v8, buf, 8u);
          return 0;
        }

        return 0;
      }

LABEL_13:
      v12 = _CertUILogObjects;
      if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v16 = v14;
        v8 = "Don't know how to handle SecTrustEvaluate result %u. Denying";
        v9 = v12;
        v10 = OS_LOG_TYPE_ERROR;
        goto LABEL_15;
      }

      return 0;
    }

    goto LABEL_11;
  }

  if (v14 != 5)
  {
    if (v14 != 4)
    {
      goto LABEL_13;
    }

LABEL_11:
    v11 = _CertUILogObjects;
    v5 = 1;
    if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v16 = v14;
      _os_log_impl(&dword_2433D3000, v11, OS_LOG_TYPE_INFO, "Got SecTrustEvaluate result %u. Allowing.", buf, 8u);
    }

    return v5;
  }

  v13 = _CertUILogObjects;
  if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v16 = v14;
    _os_log_impl(&dword_2433D3000, v13, OS_LOG_TYPE_INFO, "Got SecTrustEvaluate result %u. Need to prompt.", buf, 8u);
  }

  return 2;
}

- (unsigned)_rawTrustResultForTrust:(__SecTrust *)trust exceptions:(id)exceptions
{
  SecTrustSetExceptions(trust, exceptions);
  v6 = 3;
  if (MEMORY[0x245D32EE0](trust, &v6))
  {
    return 3;
  }

  else
  {
    return v6;
  }
}

- (id)_getExceptionsForSSLTrust:(__SecTrust *)trust hostname:(id)hostname service:(id)service
{
  v27 = *MEMORY[0x277D85DE8];
  hostnameCopy = hostname;
  serviceCopy = service;
  if (!trust || !hostnameCopy || SecTrustGetCertificateCount(trust) <= 0)
  {
    v17 = _CertUILogObjects;
    if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_ERROR))
    {
      v18 = v17;
      v19 = NSStringFromSelector(a2);
      v21 = 138412802;
      v22 = v19;
      v23 = 2112;
      v24 = hostnameCopy;
      v25 = 2112;
      trustCopy = trust;
      _os_log_impl(&dword_2433D3000, v18, OS_LOG_TYPE_ERROR, "%@ Invalid arguments host: %@ trust: %@", &v21, 0x20u);
    }

LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  SecTrustGetCertificateAtIndex(trust, 0);
  SHA1Digest = SecCertificateGetSHA1Digest();
  DictionaryForDigestHostService = _CopyVersion2QueryDictionaryForDigestHostService(self->_access, SHA1Digest, hostnameCopy, serviceCopy);
  if (!DictionaryForDigestHostService || (v13 = DictionaryForDigestHostService, v14 = _CopyExceptionsForMutableQuery(DictionaryForDigestHostService), CFRelease(v13), !v14))
  {
    v15 = _CopyVersion2QueryDictionaryForDigestHostService(self->_access, SHA1Digest, hostnameCopy, 0);
    if (v15)
    {
      v16 = v15;
      v14 = _CopyExceptionsForMutableQuery(v15);
      CFRelease(v16);
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_11:

  return v14;
}

- (int)actionForSSLTrust:(__SecTrust *)trust hostname:(id)hostname service:(id)service
{
  v23 = *MEMORY[0x277D85DE8];
  hostnameCopy = hostname;
  serviceCopy = service;
  if (trust && hostnameCopy && SecTrustGetCertificateCount(trust) > 0)
  {
    v11 = [(CertUITrustManager *)self _getExceptionsForSSLTrust:trust hostname:hostnameCopy service:serviceCopy];
    v12 = [(CertUITrustManager *)self _actionForTrust:trust exceptions:v11];
  }

  else
  {
    v13 = _CertUILogObjects;
    if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_ERROR))
    {
      v14 = v13;
      v15 = NSStringFromSelector(a2);
      v17 = 138412802;
      v18 = v15;
      v19 = 2112;
      v20 = hostnameCopy;
      v21 = 2112;
      trustCopy = trust;
      _os_log_impl(&dword_2433D3000, v14, OS_LOG_TYPE_ERROR, "%@ Invalid arguments host: %@ trust: %@", &v17, 0x20u);
    }

    v12 = 0;
  }

  return v12;
}

- (unsigned)rawTrustResultForSSLTrust:(__SecTrust *)trust hostname:(id)hostname service:(id)service
{
  v23 = *MEMORY[0x277D85DE8];
  hostnameCopy = hostname;
  serviceCopy = service;
  if (trust && hostnameCopy && SecTrustGetCertificateCount(trust) > 0)
  {
    v11 = [(CertUITrustManager *)self _getExceptionsForSSLTrust:trust hostname:hostnameCopy service:serviceCopy];
    v12 = [(CertUITrustManager *)self _rawTrustResultForTrust:trust exceptions:v11];
  }

  else
  {
    v13 = _CertUILogObjects;
    if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_ERROR))
    {
      v14 = v13;
      v15 = NSStringFromSelector(a2);
      v17 = 138412802;
      v18 = v15;
      v19 = 2112;
      v20 = hostnameCopy;
      v21 = 2112;
      trustCopy = trust;
      _os_log_impl(&dword_2433D3000, v14, OS_LOG_TYPE_ERROR, "%@ Invalid arguments host: %@ trust: %@", &v17, 0x20u);
    }

    v12 = 3;
  }

  return v12;
}

- (int)actionForSMIMETrust:(__SecTrust *)trust sender:(id)sender
{
  v24 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  v8 = senderCopy;
  if (trust && senderCopy && SecTrustGetCertificateCount(trust) > 0)
  {
    SecTrustGetCertificateAtIndex(trust, 0);
    SHA1Digest = SecCertificateGetSHA1Digest();
    DictionaryForDigestSender = _CopyVersion2QueryDictionaryForDigestSender(self->_access, SHA1Digest, v8);
    if (DictionaryForDigestSender)
    {
      v11 = DictionaryForDigestSender;
      v12 = _CopyExceptionsForMutableQuery(DictionaryForDigestSender);
      CFRelease(v11);
    }

    else
    {
      v12 = 0;
    }

    v16 = [(CertUITrustManager *)self _actionForTrust:trust exceptions:v12];
  }

  else
  {
    v13 = _CertUILogObjects;
    if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_ERROR))
    {
      v14 = v13;
      v15 = NSStringFromSelector(a2);
      v18 = 138412802;
      v19 = v15;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      trustCopy = trust;
      _os_log_impl(&dword_2433D3000, v14, OS_LOG_TYPE_ERROR, "%@ Invalid arguments sender: %@ trust: %@", &v18, 0x20u);
    }

    v16 = 0;
  }

  return v16;
}

- (void)addSSLTrust:(__SecTrust *)trust hostname:(id)hostname service:(id)service
{
  v24 = *MEMORY[0x277D85DE8];
  hostnameCopy = hostname;
  serviceCopy = service;
  if (trust && hostnameCopy && SecTrustGetCertificateCount(trust) > 0)
  {
    v11 = SecTrustCopyExceptions(trust);
    SecTrustGetCertificateAtIndex(trust, 0);
    SHA1Digest = SecCertificateGetSHA1Digest();
    DictionaryForDigestHostService = _CopyVersion2QueryDictionaryForDigestHostService(self->_access, SHA1Digest, hostnameCopy, serviceCopy);
    if (DictionaryForDigestHostService)
    {
      v14 = DictionaryForDigestHostService;
      _SaveExceptionsForMutableQuery(DictionaryForDigestHostService, v11, *MEMORY[0x277CDBEF0]);
      CFRelease(v14);
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  else
  {
    v15 = _CertUILogObjects;
    if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_ERROR))
    {
      v16 = v15;
      v17 = NSStringFromSelector(a2);
      v18 = 138412802;
      v19 = v17;
      v20 = 2112;
      v21 = hostnameCopy;
      v22 = 2112;
      trustCopy = trust;
      _os_log_impl(&dword_2433D3000, v16, OS_LOG_TYPE_ERROR, "%@ Invalid arguments host: %@ trust: %@", &v18, 0x20u);
    }
  }
}

- (void)addSMIMETrust:(__SecTrust *)trust sender:(id)sender
{
  v22 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  v8 = senderCopy;
  if (trust && senderCopy && SecTrustGetCertificateCount(trust) > 0)
  {
    v9 = SecTrustCopyExceptions(trust);
    SecTrustGetCertificateAtIndex(trust, 0);
    SHA1Digest = SecCertificateGetSHA1Digest();
    DictionaryForDigestSender = _CopyVersion2QueryDictionaryForDigestSender(self->_access, SHA1Digest, v8);
    if (DictionaryForDigestSender)
    {
      v12 = DictionaryForDigestSender;
      _SaveExceptionsForMutableQuery(DictionaryForDigestSender, v9, 0);
      CFRelease(v12);
    }

    if (v9)
    {
      CFRelease(v9);
    }
  }

  else
  {
    v13 = _CertUILogObjects;
    if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_ERROR))
    {
      v14 = v13;
      v15 = NSStringFromSelector(a2);
      v16 = 138412802;
      v17 = v15;
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      trustCopy = trust;
      _os_log_impl(&dword_2433D3000, v14, OS_LOG_TYPE_ERROR, "%@ Invalid arguments sender: %@ trust: %@", &v16, 0x20u);
    }
  }
}

- (void)removeSSLTrust:(__SecTrust *)trust hostname:(id)hostname service:(id)service
{
  v22 = *MEMORY[0x277D85DE8];
  hostnameCopy = hostname;
  serviceCopy = service;
  if (trust && hostnameCopy && SecTrustGetCertificateCount(trust) > 0)
  {
    SecTrustGetCertificateAtIndex(trust, 0);
    SHA1Digest = SecCertificateGetSHA1Digest();
    DictionaryForDigestHostService = _CopyVersion2QueryDictionaryForDigestHostService(self->_access, SHA1Digest, hostnameCopy, serviceCopy);
    _DeleteExceptionsForQuery(DictionaryForDigestHostService);
    if (DictionaryForDigestHostService)
    {
      CFRelease(DictionaryForDigestHostService);
    }
  }

  else
  {
    v13 = _CertUILogObjects;
    if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_ERROR))
    {
      v14 = v13;
      v15 = NSStringFromSelector(a2);
      v16 = 138412802;
      v17 = v15;
      v18 = 2112;
      v19 = hostnameCopy;
      v20 = 2112;
      trustCopy = trust;
      _os_log_impl(&dword_2433D3000, v14, OS_LOG_TYPE_ERROR, "%@ Invalid arguments host: %@ trust: %@", &v16, 0x20u);
    }
  }
}

- (void)removeSMIMETrust:(__SecTrust *)trust sender:(id)sender
{
  v20 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  v8 = senderCopy;
  if (trust && senderCopy && SecTrustGetCertificateCount(trust) > 0)
  {
    SecTrustGetCertificateAtIndex(trust, 0);
    SHA1Digest = SecCertificateGetSHA1Digest();
    DictionaryForDigestSender = _CopyVersion2QueryDictionaryForDigestSender(self->_access, SHA1Digest, v8);
    _DeleteExceptionsForQuery(DictionaryForDigestSender);
    if (DictionaryForDigestSender)
    {
      CFRelease(DictionaryForDigestSender);
    }
  }

  else
  {
    v11 = _CertUILogObjects;
    if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      v13 = NSStringFromSelector(a2);
      v14 = 138412802;
      v15 = v13;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      trustCopy = trust;
      _os_log_impl(&dword_2433D3000, v12, OS_LOG_TYPE_ERROR, "%@ Invalid arguments sender: %@ trust: %@", &v14, 0x20u);
    }
  }
}

- (void)removeAllTrusts
{
  DictionaryForDigest = _CopyVersion2QueryDictionaryForDigest(self->_access, 0);
  _DeleteExceptionsForQuery(DictionaryForDigest);
  if (DictionaryForDigest)
  {

    CFRelease(DictionaryForDigest);
  }
}

- (BOOL)_hasExceptionsForSMIMETrust:(__SecTrust *)trust sender:(id)sender
{
  v44 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  v8 = senderCopy;
  if (!trust || !senderCopy || SecTrustGetCertificateCount(trust) <= 0)
  {
    v24 = _CertUILogObjects;
    if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_ERROR))
    {
      v25 = v24;
      v26 = NSStringFromSelector(a2);
      *buf = 138412802;
      v39 = v26;
      v40 = 2112;
      v41 = v8;
      v42 = 2112;
      trustCopy = trust;
      _os_log_impl(&dword_2433D3000, v25, OS_LOG_TYPE_ERROR, "%@ Invalid arguments sender: %@ trust: %@", buf, 0x20u);
    }

    goto LABEL_19;
  }

  SecTrustGetCertificateAtIndex(trust, 0);
  SHA1Digest = SecCertificateGetSHA1Digest();
  DictionaryForDigestSender = _CopyVersion2QueryDictionaryForDigestSender(self->_access, SHA1Digest, v8);
  v11 = _CertUILogObjects;
  if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_INFO))
  {
    v12 = *MEMORY[0x277CDBF20];
    v13 = v11;
    Value = CFDictionaryGetValue(DictionaryForDigestSender, v12);
    v15 = *MEMORY[0x277CDBEC8];
    v16 = Value;
    v17 = CFDictionaryGetValue(DictionaryForDigestSender, v15);
    v18 = @"global";
    if (v17)
    {
      v18 = v17;
    }

    *buf = 138412546;
    v39 = Value;
    v40 = 2112;
    v41 = v18;
    _os_log_impl(&dword_2433D3000, v13, OS_LOG_TYPE_INFO, "Finding exceptions for %@ in %@ access group", buf, 0x16u);
  }

  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, DictionaryForDigestSender);
  CFDictionaryAddValue(MutableCopy, *MEMORY[0x277CDC428], *MEMORY[0x277CDC430]);
  result = 0;
  v20 = SecItemCopyMatching(MutableCopy, &result);
  CFRelease(MutableCopy);
  if (v20 != -25300 && v20 != 0)
  {
    v28 = _CertUILogObjects;
    if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_ERROR))
    {
      v30 = *MEMORY[0x277CDBF20];
      v31 = v28;
      v32 = CFDictionaryGetValue(DictionaryForDigestSender, v30);
      v33 = *MEMORY[0x277CDBEC8];
      v34 = v32;
      v35 = CFDictionaryGetValue(DictionaryForDigestSender, v33);
      v36 = @"global";
      *buf = 138412802;
      v39 = v32;
      if (v35)
      {
        v36 = v35;
      }

      v40 = 2112;
      v41 = v36;
      v42 = 1024;
      LODWORD(trustCopy) = v20;
      _os_log_impl(&dword_2433D3000, v31, OS_LOG_TYPE_ERROR, "Couldn't find trust settings for %@ in %@ access group (%d)", buf, 0x1Cu);
    }
  }

  v22 = result;
  if (DictionaryForDigestSender)
  {
    CFRelease(DictionaryForDigestSender);
  }

  if (!v22)
  {
LABEL_19:
    v23 = 0;
    goto LABEL_20;
  }

  CFRelease(v22);
  v23 = 1;
LABEL_20:

  return v23;
}

@end