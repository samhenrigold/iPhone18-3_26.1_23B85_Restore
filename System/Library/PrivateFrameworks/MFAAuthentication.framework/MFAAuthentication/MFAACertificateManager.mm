@interface MFAACertificateManager
+ (BOOL)isBAAUserCertInfo:(id)info;
+ (BOOL)isBAAUserPolicy:(unint64_t)policy;
+ (BOOL)isCertificateValidForFeatures:(unint64_t)features certificate:(id)certificate;
+ (BOOL)isComponentCertInfo:(id)info;
+ (BOOL)isComponentPolicy:(unint64_t)policy;
+ (BOOL)isMFi2_3CertInfo:(id)info;
+ (BOOL)isMFi2_3Policy:(unint64_t)policy;
+ (id)_anchorCertificatesDataForTypes:(int)types;
+ (id)anchorCertificatesForTypes:(int)types;
+ (id)sharedManager;
+ (int)_anchorType2CertType:(int)type;
+ (int)determineCertificateType:(id)type;
- (BOOL)verifyCertificateChainInfoSerialNumber:(id)number;
- (BOOL)verifyCertificateSerialNumber:(id)number authVer:(int)ver;
- (BOOL)verifyCertificateSerialNumberBySerialNumber:(id)number authVer:(int)ver;
- (BOOL)verifyNonceSignature:(id)signature nonce:(id)nonce signature:(id)a5;
- (MFAACertificateManager)init;
- (id)_getAnchorCertsForPolicy:(unint64_t)policy;
- (id)_init;
- (id)copyCertificateSerialNumber:(id)number authVer:(int)ver;
- (id)copyEvaluatedCertificateChainInfo:(id)info forSpecificType:(int)type;
- (id)copyLeafCertificateSerialNumber:(id)number;
- (id)copyParsedCertificateChainInfo:(id)info;
- (id)copyParsedCertificateChainInfo:(id)info assumeType:(int)type;
- (id)copyParsedCertificateChainInfoFromCerts:(id)certs assumeType:(int)type;
- (id)createVeridianNonce:(id)nonce withChallenge:(id)challenge;
- (int)_getCachedCertStatus:(id)status issuerSeq:(id)seq ppid:(id)ppid;
- (int)_validateBAACertificateChain:(id)chain error:(id *)error;
- (int)_validateCertificateChain:(id)chain realtime:(BOOL)realtime error:(id *)error;
- (int)_validateCertificateWithServer:(id)server issuerSeq:(id)seq ppid:(id)ppid error:(id *)error;
- (int)_validateX509CertificateChain:(id)chain anchorCerts:(id)certs error:(id *)error;
- (int)authVersionFromCertificateChainInfo:(id)info;
- (int)validateCertificate:(id)certificate realtime:(BOOL)realtime error:(id *)error;
- (int)validateCertificateChain:(id)chain realtime:(BOOL)realtime error:(id *)error;
- (int)validateCertificateChain:(id)chain type:(int)type realtime:(BOOL)realtime error:(id *)error;
- (void)requestMetadataForCertificate:(id)certificate requestedLocale:(id)locale requestInfo:(id)info completionHandler:(id)handler;
- (void)validateCertificate:(id)certificate realtime:(BOOL)realtime completionHandler:(id)handler;
@end

@implementation MFAACertificateManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__MFAACertificateManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_once_1 != -1)
  {
    dispatch_once(&sharedManager_once_1, block);
  }

  v2 = sharedManager_sharedInstance_1;

  return v2;
}

- (MFAACertificateManager)init
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(sel_sharedManager);
  v9 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"Use +[%@ %@] instead of -%@.", v7, v8, v9}];

  return 0;
}

- (id)_init
{
  init_logging();
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 2;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(MFAATokenManager *)self _init];
  }

  v13.receiver = self;
  v13.super_class = MFAACertificateManager;
  v6 = [(MFAACertificateManager *)&v13 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.MFAAuthentication.MFAANetwork"];
    xpcConnection = v6->_xpcConnection;
    v6->_xpcConnection = v7;

    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286857088];
    [(NSXPCConnection *)v6->_xpcConnection setRemoteObjectInterface:v9];

    [(NSXPCConnection *)v6->_xpcConnection resume];
    v10 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.MFAAuthentication"];
    userDefaults = v6->_userDefaults;
    v6->_userDefaults = v10;
  }

  return v6;
}

- (void)validateCertificate:(id)certificate realtime:(BOOL)realtime completionHandler:(id)handler
{
  realtimeCopy = realtime;
  v24 = *MEMORY[0x277D85DE8];
  certificateCopy = certificate;
  handlerCopy = handler;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 2;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v12 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  else
  {
    v12 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "YES";
    if (!handlerCopy)
    {
      v13 = "NO";
    }

    *buf = 136315138;
    v23 = v13;
    _os_log_impl(&dword_25627E000, v12, OS_LOG_TYPE_DEFAULT, "Validating certificate... (completionHandler: %s)", buf, 0xCu);
  }

  if (handlerCopy)
  {
    if (realtimeCopy)
    {
      v14 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__MFAACertificateManager_validateCertificate_realtime_completionHandler___block_invoke;
      block[3] = &unk_279831B50;
      block[4] = self;
      v19 = certificateCopy;
      v21 = realtimeCopy;
      v20 = handlerCopy;
      dispatch_async(v14, block);
    }

    else
    {
      v17 = 0;
      v15 = [(MFAACertificateManager *)self validateCertificate:certificateCopy realtime:0 error:&v17];
      v16 = v17;
      (*(handlerCopy + 2))(handlerCopy, v15, v16);
    }
  }
}

void __73__MFAACertificateManager_validateCertificate_realtime_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v6 = 0;
  [v2 validateCertificate:v3 realtime:v4 error:&v6];
  v5 = v6;
  (*(*(a1 + 48) + 16))();
}

- (int)validateCertificate:(id)certificate realtime:(BOOL)realtime error:(id *)error
{
  realtimeCopy = realtime;
  v24 = *MEMORY[0x277D85DE8];
  certificateCopy = certificate;
  if (gLogObjects)
  {
    v9 = gNumLogObjects < 2;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v11 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  else
  {
    v11 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_25627E000, v11, OS_LOG_TYPE_DEFAULT, "Validating certificate...", &v20, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v12 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v12 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [certificateCopy length];
    v15 = "NO";
    if (realtimeCopy)
    {
      v15 = "YES";
    }

    v20 = 134218242;
    v21 = v14;
    v22 = 2080;
    v23 = v15;
    _os_log_impl(&dword_25627E000, v12, OS_LOG_TYPE_DEFAULT, "certificate.length: %lu, realtime: %s", &v20, 0x16u);
  }

  if (certificateCopy)
  {
    CertificateRefWithData = createCertificateRefWithData(certificateCopy, 1);
    v17 = _createCertificateArrayForCert(CertificateRefWithData);
    v18 = [(MFAACertificateManager *)self _validateCertificateChain:v17 realtime:realtimeCopy error:error];
    if (CertificateRefWithData)
    {
      CFRelease(CertificateRefWithData);
    }
  }

  else
  {
    [MFAACertificateManager validateCertificate:realtime:error:];
    v17 = 0;
    v18 = 0;
  }

  return v18;
}

- (int)validateCertificateChain:(id)chain realtime:(BOOL)realtime error:(id *)error
{
  realtimeCopy = realtime;
  v36 = *MEMORY[0x277D85DE8];
  chainCopy = chain;
  if (gLogObjects)
  {
    v9 = gNumLogObjects < 2;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v11 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  else
  {
    v11 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25627E000, v11, OS_LOG_TYPE_DEFAULT, "Validating certificates...", buf, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v12 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v12 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [chainCopy count];
    v15 = "NO";
    if (realtimeCopy)
    {
      v15 = "YES";
    }

    *buf = 134218242;
    v33 = v14;
    v34 = 2080;
    v35 = v15;
    _os_log_impl(&dword_25627E000, v12, OS_LOG_TYPE_DEFAULT, "certificates.count: %lu, realtime: %s", buf, 0x16u);
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = v16;
  if (!chainCopy)
  {
    [MFAACertificateManager validateCertificateChain:realtime:error:];
LABEL_36:
    v25 = 0;
    goto LABEL_33;
  }

  if (!v16)
  {
    [MFAACertificateManager validateCertificateChain:realtime:error:];
    goto LABEL_36;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = chainCopy;
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        CertificateRefWithData = createCertificateRefWithData(*(*(&v27 + 1) + 8 * i), 1);
        if (!CertificateRefWithData)
        {

          v25 = 2;
          goto LABEL_33;
        }

        v24 = CertificateRefWithData;
        [v17 addObject:{CertificateRefWithData, v27}];
      }

      v20 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v25 = [(MFAACertificateManager *)self _validateCertificateChain:v17 realtime:realtimeCopy error:error];
LABEL_33:

  return v25;
}

- (int)validateCertificateChain:(id)chain type:(int)type realtime:(BOOL)realtime error:(id *)error
{
  realtimeCopy = realtime;
  v95 = *MEMORY[0x277D85DE8];
  chainCopy = chain;
  v11 = chainCopy;
  if (type > 3)
  {
    if (type <= 5)
    {
      if (type != 4)
      {
        goto LABEL_8;
      }

      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      v32 = [v11 objectAtIndexedSubscript:0];
      CertificateRefWithData = createCertificateRefWithData(v32, 1);

      if (CertificateRefWithData)
      {
        CFArrayAppendValue(Mutable, CertificateRefWithData);
        CFRelease(CertificateRefWithData);
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 2)
        {
          v46 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [MFAATokenManager _init];
          }

          v46 = MEMORY[0x277D86220];
          v66 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v89 = 4;
          _os_log_impl(&dword_25627E000, v46, OS_LOG_TYPE_DEFAULT, "validateCertificateChain: Cannot get leafCert for type %d", buf, 8u);
        }
      }

      if (_anchorCertsForProvenance_onceToken != -1)
      {
        [MFAACertificateManager validateCertificateChain:type:realtime:error:];
      }

      if (gLogObjects && gNumLogObjects >= 2)
      {
        v67 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [MFAATokenManager _init];
        }

        v67 = MEMORY[0x277D86220];
        v68 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        v69 = [_anchorCertsForProvenance_anchorCerts count];
        *buf = 134217984;
        *v89 = v69;
        _os_log_impl(&dword_25627E000, v67, OS_LOG_TYPE_INFO, "%lu anchor cert(s) returned for Provenance", buf, 0xCu);
      }

      v53 = _anchorCertsForProvenance_anchorCerts;
      LODWORD(self) = [(MFAACertificateManager *)self _validateX509CertificateChain:Mutable anchorCerts:v53 error:error];
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v54 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [MFAATokenManager _init];
        }

        v54 = MEMORY[0x277D86220];
        v70 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_198;
      }

      *buf = 67109120;
      *v89 = self;
      v56 = "validateCertificateChain: Provenance status = %d";
LABEL_196:
      v57 = v54;
      v58 = 8;
      goto LABEL_197;
    }

    if (type == 7)
    {
      v34 = *MEMORY[0x277CBECE8];
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      v35 = [v11 objectAtIndex:0];
      v36 = SecCertificateCreateWithData(v34, v35);

      if (v36)
      {
        CFArrayAppendValue(Mutable, v36);
        CFRelease(v36);
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 2)
        {
          v47 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [MFAATokenManager _init];
          }

          v47 = MEMORY[0x277D86220];
          v71 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v89 = 7;
          _os_log_impl(&dword_25627E000, v47, OS_LOG_TYPE_DEFAULT, "validateCertificateChain: Cannot get leafCert for type %d", buf, 8u);
        }
      }

      v72 = [v11 objectAtIndex:1];
      v73 = SecCertificateCreateWithData(v34, v72);

      if (v73)
      {
        CFArrayAppendValue(Mutable, v73);
        CFRelease(v73);
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 2)
        {
          v74 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [MFAATokenManager _init];
          }

          v74 = MEMORY[0x277D86220];
          v75 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v89 = 7;
          _os_log_impl(&dword_25627E000, v74, OS_LOG_TYPE_DEFAULT, "validateCertificateChain: Cannot get intermediateCert for type %d", buf, 8u);
        }
      }

      if (_anchorCertsForWPC_onceToken != -1)
      {
        [MFAACertificateManager validateCertificateChain:type:realtime:error:];
      }

      if (gLogObjects && gNumLogObjects >= 2)
      {
        v76 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [MFAATokenManager _init];
        }

        v76 = MEMORY[0x277D86220];
        v77 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        v78 = [_anchorCertsForWPC_anchorCerts count];
        *buf = 134217984;
        *v89 = v78;
        _os_log_impl(&dword_25627E000, v76, OS_LOG_TYPE_INFO, "%lu anchor cert(s) returned for WPC", buf, 0xCu);
      }

      v53 = _anchorCertsForWPC_anchorCerts;
      LODWORD(self) = [(MFAACertificateManager *)self _validateX509CertificateChain:Mutable anchorCerts:v53 error:error];
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v54 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [MFAATokenManager _init];
        }

        v54 = MEMORY[0x277D86220];
        v79 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_198;
      }

      *buf = 67109120;
      *v89 = self;
      v56 = "validateCertificateChain: WPC status = %d";
      goto LABEL_196;
    }

    if (type == 6)
    {
LABEL_12:
      trust = 0;
      v86 = 0;
      if (chainCopy && [chainCopy count])
      {
        [v11 objectAtIndexedSubscript:0];

        self = SecPolicyCreateiAP();
        if (!self)
        {
          [MFAACertificateManager validateCertificateChain:type:realtime:error:];
          v16 = 0;
          goto LABEL_73;
        }

        v15 = [v11 count];
        v16 = CFArrayCreateMutable(0, v15, MEMORY[0x277CBF128]);
        if (v16)
        {
          v17 = v11;
          v18 = realtimeCopy;
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v81 = v17;
          v19 = v17;
          v20 = [v19 countByEnumeratingWithState:&v82 objects:v94 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v83;
            v23 = *MEMORY[0x277CBECE8];
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v83 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v25 = SecCertificateCreateWithData(v23, *(*(&v82 + 1) + 8 * i));
                if (v25)
                {
                  v26 = v25;
                  CFArrayAppendValue(v16, v25);
                  CFRelease(v26);
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v82 objects:v94 count:16];
            }

            while (v21);
          }

          SecTrustCreateWithCertificates(v16, self, &trust);
          if (!trust)
          {
            [MFAACertificateManager validateCertificateChain:type:realtime:error:];
            v16 = 0;
            LODWORD(self) = 0;
            realtimeCopy = v18;
            v11 = v81;
            goto LABEL_73;
          }

          realtimeCopy = v18;
          if (type == 1)
          {
            v11 = v81;
            if (_anchorCertsForMFi3_onceToken != -1)
            {
              [MFAACertificateManager validateCertificateChain:type:realtime:error:];
            }

            if (gLogObjects && gNumLogObjects >= 2)
            {
              v27 = *(gLogObjects + 8);
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [MFAATokenManager _init];
              }

              v27 = MEMORY[0x277D86220];
              v39 = MEMORY[0x277D86220];
            }

            v40 = &_anchorCertsForMFi3_anchorCerts;
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v41 = [_anchorCertsForMFi3_anchorCerts count];
              *buf = 134217984;
              *v89 = v41;
              v42 = "%lu anchor cert(s) returned for MFi3";
LABEL_65:
              _os_log_impl(&dword_25627E000, v27, OS_LOG_TYPE_INFO, v42, buf, 0xCu);
            }
          }

          else
          {
            v11 = v81;
            if (_anchorCertsForMFi2_onceToken != -1)
            {
              [MFAACertificateManager validateCertificateChain:type:realtime:error:];
            }

            if (gLogObjects && gNumLogObjects >= 2)
            {
              v27 = *(gLogObjects + 8);
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [MFAATokenManager _init];
              }

              v27 = MEMORY[0x277D86220];
              v43 = MEMORY[0x277D86220];
            }

            v40 = &_anchorCertsForMFi2_anchorCerts;
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v44 = [_anchorCertsForMFi2_anchorCerts count];
              *buf = 134217984;
              *v89 = v44;
              v42 = "%lu anchor cert(s) returned for MFi2";
              goto LABEL_65;
            }
          }

          v16 = *v40;
          if (v16)
          {
            SecTrustSetAnchorCertificates(trust, v16);
            if (MEMORY[0x259C60280](trust, &v86))
            {
              [MFAACertificateManager validateCertificateChain:type:realtime:error:];
            }

            else
            {
              LODWORD(self) = 1;
              if (v86 == 1 || v86 == 4)
              {
                goto LABEL_73;
              }

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [MFAACertificateManager validateCertificateChain:type:realtime:error:];
              }
            }
          }

          else
          {
            [MFAACertificateManager validateCertificateChain:type:realtime:error:];
          }

          goto LABEL_72;
        }

        [MFAACertificateManager validateCertificateChain:type:realtime:error:];
      }

      else
      {
        v16 = 0;
      }

LABEL_72:
      LODWORD(self) = 0;
LABEL_73:

      goto LABEL_201;
    }

    goto LABEL_34;
  }

  if (type)
  {
    if (type == 1)
    {
      goto LABEL_12;
    }

    if (type == 3)
    {
LABEL_8:
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      v13 = [v11 objectAtIndexedSubscript:0];
      v14 = createCertificateRefWithData(v13, 1);

      if (v14)
      {
        CFArrayAppendValue(Mutable, v14);
        CFRelease(v14);
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 2)
        {
          v37 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [MFAATokenManager _init];
          }

          v37 = MEMORY[0x277D86220];
          v48 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v89 = type;
          _os_log_impl(&dword_25627E000, v37, OS_LOG_TYPE_DEFAULT, "validateCertificateChain: Cannot get leafCert for type %d", buf, 8u);
        }
      }

      if (type == 5)
      {
        v49 = _anchorCertsForComponentAuth();
      }

      else
      {
        if (_anchorCertsForDEVN_onceToken != -1)
        {
          [MFAACertificateManager validateCertificateChain:type:realtime:error:];
        }

        if (gLogObjects && gNumLogObjects >= 2)
        {
          v50 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [MFAATokenManager _init];
          }

          v50 = MEMORY[0x277D86220];
          v51 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          v52 = [_anchorCertsForDEVN_anchorCerts count];
          *buf = 134217984;
          *v89 = v52;
          _os_log_impl(&dword_25627E000, v50, OS_LOG_TYPE_INFO, "%lu anchor cert(s) returned for DEVN", buf, 0xCu);
        }

        v49 = _anchorCertsForDEVN_anchorCerts;
      }

      v53 = v49;
      LODWORD(self) = [(MFAACertificateManager *)self _validateX509CertificateChain:Mutable anchorCerts:v49 error:error];
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v54 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [MFAATokenManager _init];
        }

        v54 = MEMORY[0x277D86220];
        v55 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_198;
      }

      *buf = 67109376;
      *v89 = type;
      *&v89[4] = 1024;
      *&v89[6] = self;
      v56 = "validateCertificateChain: type=%d, status = %d";
      v57 = v54;
      v58 = 14;
LABEL_197:
      _os_log_impl(&dword_25627E000, v57, OS_LOG_TYPE_DEFAULT, v56, buf, v58);
LABEL_198:

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      goto LABEL_201;
    }

LABEL_34:
    if (gLogObjects && gNumLogObjects >= 2)
    {
      self = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      self = MEMORY[0x277D86220];
      v38 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v89 = type;
      _os_log_impl(&dword_25627E000, &self->super, OS_LOG_TYPE_DEFAULT, "validateCertificateChain: Unrecognized cert type %d for cert validation, likely not supported by this API yet", buf, 8u);
    }

    LODWORD(self) = 0;
    goto LABEL_201;
  }

  v28 = *MEMORY[0x277CBECE8];
  v29 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v30 = [v11 objectAtIndex:0];
  v31 = SecCertificateCreateWithData(v28, v30);

  if (v31)
  {
    CFArrayAppendValue(v29, v31);
    CFRelease(v31);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v45 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v45 = MEMORY[0x277D86220];
      v59 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v89 = 0;
      _os_log_impl(&dword_25627E000, v45, OS_LOG_TYPE_DEFAULT, "validateCertificateChain: Cannot get leafCert for type %d", buf, 8u);
    }
  }

  v60 = [v11 objectAtIndex:1];
  v61 = SecCertificateCreateWithData(v28, v60);

  if (v61)
  {
    CFArrayAppendValue(v29, v61);
    CFRelease(v61);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v62 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v62 = MEMORY[0x277D86220];
      v63 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v89 = 0;
      _os_log_impl(&dword_25627E000, v62, OS_LOG_TYPE_DEFAULT, "validateCertificateChain: Cannot get intermediateCert for type %d", buf, 8u);
    }
  }

  LODWORD(self) = [(MFAACertificateManager *)self _validateBAACertificateChain:v29 error:error];
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v64 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v64 = MEMORY[0x277D86220];
    v65 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v89 = 0;
    *&v89[4] = 1024;
    *&v89[6] = self;
    _os_log_impl(&dword_25627E000, v64, OS_LOG_TYPE_DEFAULT, "validateCertificateChain: type=%d, status = %d", buf, 0xEu);
  }

  if (v29)
  {
    CFRelease(v29);
  }

LABEL_201:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    *v89 = self;
    *&v89[4] = 1024;
    *&v89[6] = type;
    v90 = 1024;
    v91 = realtimeCopy;
    v92 = 2112;
    v93 = v11;
    _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "validateCertificateChain: status %d, type %d, realtime %d, certificates %@", buf, 0x1Eu);
  }

  return self;
}

- (void)requestMetadataForCertificate:(id)certificate requestedLocale:(id)locale requestInfo:(id)info completionHandler:(id)handler
{
  v52 = *MEMORY[0x277D85DE8];
  certificateCopy = certificate;
  localeCopy = locale;
  infoCopy = info;
  handlerCopy = handler;
  if (gLogObjects)
  {
    v14 = gNumLogObjects < 2;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v16 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  else
  {
    v16 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25627E000, v16, OS_LOG_TYPE_DEFAULT, "Processing request for certificate metadata...", buf, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v17 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v17 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [certificateCopy length];
    localeIdentifier = [localeCopy localeIdentifier];
    v21 = localeIdentifier;
    v22 = "YES";
    *buf = 134218755;
    v45 = v19;
    v46 = 2112;
    if (!handlerCopy)
    {
      v22 = "NO";
    }

    v47 = localeIdentifier;
    v48 = 2113;
    v49 = infoCopy;
    v50 = 2080;
    v51 = v22;
    _os_log_impl(&dword_25627E000, v17, OS_LOG_TYPE_DEFAULT, "certificate.length: %lu, requestedLocale: %@, requestInfo: %{private}@, completionHandler: %s", buf, 0x2Au);
  }

  if (handlerCopy)
  {
    if (systemInfo_isInternalBuild(v23, v24) && (-[MFAACertificateManager userDefaults](self, "userDefaults"), v25 = objc_claimAutoreleasedReturnValue(), v26 = [v25 BOOLForKey:@"SpoofPPIDMetadata"], v25, v26))
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v27 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [MFAATokenManager _init];
        }

        v27 = MEMORY[0x277D86220];
        v31 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25627E000, v27, OS_LOG_TYPE_DEFAULT, "Spoofing PPID metadata...", buf, 2u);
      }

      if (gLogObjects && gNumLogObjects >= 2)
      {
        v32 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [MFAATokenManager _init];
        }

        v32 = MEMORY[0x277D86220];
        v33 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v45) = 1000;
        _os_log_impl(&dword_25627E000, v32, OS_LOG_TYPE_INFO, "Sleeping %dms...", buf, 8u);
      }

      v34 = dispatch_time(0, 1000000000);
      v35 = dispatch_get_global_queue(0, 0);
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke;
      v41[3] = &unk_279831B78;
      v29 = &v43;
      v43 = handlerCopy;
      v42 = localeCopy;
      dispatch_after(v34, v35, v41);

      v30 = v42;
    }

    else
    {
      v28 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74;
      block[3] = &unk_279831BA0;
      v29 = v37;
      v37[0] = certificateCopy;
      v37[1] = self;
      v38 = localeCopy;
      v40 = handlerCopy;
      v39 = infoCopy;
      dispatch_async(v28, block);

      v30 = v38;
    }
  }
}

void __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74(void **a1)
{
  v43 = *MEMORY[0x277D85DE8];
  CertificateRefWithData = createCertificateRefWithData(a1[4], 1);
  v3 = SecCertificateGetiAuthVersion();
  if (v3 == 4)
  {
    v4 = _createCertificateArrayForCert(CertificateRefWithData);
    v5 = a1[5];
    v33 = 0;
    v6 = [v5 _validateCertificateChain:v4 realtime:1 error:&v33];
    v7 = v33;
    if (v6 == 1)
    {
      v8 = SecCertificateCopySerialNumberData(CertificateRefWithData, 0);
      if (v8)
      {
        v9 = SecCertificateCopyIssuerSequence();
        if (gLogObjects && gNumLogObjects >= 2)
        {
          v10 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [MFAATokenManager _init];
          }

          v10 = MEMORY[0x277D86220];
          v11 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74_cold_3();
        }

        if (v9)
        {
          v12 = SecCertificateCopyIssuerSummary();
          if (v12)
          {
            v29 = v4;
            v13 = SecCertificateCopyOrganization();
            v14 = v13;
            if (v13 && [v13 count] && (objc_msgSend(v14, "objectAtIndexedSubscript:", 0), (v15 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v16 = v15;
              v27 = v9;
              if (gLogObjects && gNumLogObjects >= 2)
              {
                v17 = *(gLogObjects + 8);
              }

              else
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  [MFAATokenManager _init];
                }

                v17 = MEMORY[0x277D86220];
                v18 = MEMORY[0x277D86220];
              }

              v28 = v7;
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                v19 = [(__CFData *)v8 length];
                v20 = [a1[6] localeIdentifier];
                *buf = 138478851;
                *&buf[4] = v8;
                v35 = 2048;
                v36 = v19;
                v37 = 2112;
                v38 = v12;
                v39 = 2113;
                v40 = v16;
                v41 = 2112;
                v42 = v20;
                _os_log_impl(&dword_25627E000, v17, OS_LOG_TYPE_INFO, "certSerial: %{private}@, certSerial.length: %lu, issuer: %@, ppid: %{private}@, requestedLocale: %@", buf, 0x34u);
              }

              v21 = [a1[5] xpcConnection];
              v31[0] = MEMORY[0x277D85DD0];
              v31[1] = 3221225472;
              v31[2] = __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_79;
              v31[3] = &unk_279831188;
              v32 = a1[8];
              v22 = [v21 remoteObjectProxyWithErrorHandler:v31];
              v30 = a1[8];
              v9 = v27;
              [v22 requestMetadataForCertSerial:v8 issuerSeq:? ppid:? requestedLocale:? requestInfo:? withReply:?];

              v23 = v28;
            }

            else
            {
              __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74_cold_5(buf);
              v16 = v7;
              v23 = *buf;
            }

            v4 = v29;
          }

          else
          {
            __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74_cold_5(buf);
            v14 = v7;
            v23 = *buf;
          }
        }

        else
        {
          __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74_cold_5(buf);
          v12 = v7;
          v23 = *buf;
        }
      }

      else
      {
        __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74_cold_5(buf);
        v9 = v7;
        v23 = *buf;
      }
    }

    else
    {
      v26 = [MEMORY[0x277CCA9B8] MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-3 description:@"The provided certificate is not valid."];

      v23 = v26;
    }
  }

  else
  {
    __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74_cold_1(v3, buf);
    v23 = *buf;
  }

  if (CertificateRefWithData)
  {
    CFRelease(CertificateRefWithData);
  }

  if (v23)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v24 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v24 = MEMORY[0x277D86220];
      v25 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74_cold_11();
    }

    (*(a1[8] + 2))();
  }
}

void __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_79(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_79_cold_2();
  }

  v7 = [MEMORY[0x277CCA9B8] MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-4];
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v8 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_79_cold_4();
  }

  (*(*(a1 + 32) + 16))();
}

- (id)copyParsedCertificateChainInfo:(id)info
{
  v36 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = infoCopy;
    _os_log_impl(&dword_25627E000, v6, OS_LOG_TYPE_DEFAULT, "copyParsedCertificateChainInfo: certificateData %@", buf, 0xCu);
  }

  if (!infoCopy)
  {
    [MFAACertificateManager copyParsedCertificateChainInfo:];
    v14 = 0;
    v13 = 0;
    v7 = 0;
    goto LABEL_27;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!v7)
  {
    [MFAACertificateManager copyParsedCertificateChainInfo:];
LABEL_42:
    v14 = 0;
    v13 = 0;
    goto LABEL_27;
  }

  bytes = [infoCopy bytes];
  v9 = [infoCopy length];
  v24 = 0;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v10 = CTParseAccessoryCerts(bytes, v9, &v25, &v24, &v23, &v22, &v21);
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v11 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219008;
    v27 = v9;
    v28 = 2048;
    v29 = v24;
    v30 = 2048;
    v31 = v22;
    v32 = 2048;
    v33 = v21;
    v34 = 1024;
    v35 = v10;
    _os_log_impl(&dword_25627E000, v11, OS_LOG_TYPE_DEFAULT, "copyParsedCertificateChainInfo: certData(%zu bytes), leafCertData(%zu bytes), subCACertData(%zu bytes), ctPolicyFlags 0x%llx, ret %x", buf, 0x30u);
  }

  if (v10)
  {
    [MFAACertificateManager copyParsedCertificateChainInfo:];
    goto LABEL_42;
  }

  v13 = [MEMORY[0x277CBEA90] dataWithBytes:v25 length:v24];
  if (!v13)
  {
    v14 = 0;
LABEL_27:
    v15 = 0;
    goto LABEL_30;
  }

  [v7 setObject:v13 forKey:@"LeafCertData"];
  [v7 setObject:infoCopy forKey:@"FullCertData"];
  if (v23)
  {
    v14 = [MEMORY[0x277CBEA90] dataWithBytes:v23 length:v22];
    if (v14)
    {
      [v7 setObject:v14 forKey:@"SubCACertData"];
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v21];
  [v7 setObject:v16 forKey:@"PolicyFlags"];

  v15 = [v7 copy];
LABEL_30:
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v17 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v17 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v15;
    _os_log_impl(&dword_25627E000, v17, OS_LOG_TYPE_DEFAULT, "copyParsedCertificateChainInfo: result %@", buf, 0xCu);
  }

  v19 = v15;
  return v19;
}

- (id)copyParsedCertificateChainInfo:(id)info assumeType:(int)type
{
  v23 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 2;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 67109378;
    typeCopy2 = type;
    v21 = 2112;
    v22 = infoCopy;
    _os_log_impl(&dword_25627E000, v9, OS_LOG_TYPE_DEFAULT, "copyParsedCertificateChainInfo:assumeType: %d, certificateData %@", &v19, 0x12u);
  }

  if (!infoCopy)
  {
    [MFAACertificateManager copyParsedCertificateChainInfo:];
LABEL_26:
    v11 = 0;
    goto LABEL_27;
  }

  if ((type + 1) > 7)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v14 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v14 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MFAACertificateManager copyParsedCertificateChainInfo:assumeType:];
    }

    goto LABEL_26;
  }

  if (((1 << (type + 1)) & 0xCF) == 0)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = v12;
    if (v12)
    {
      [v12 setObject:infoCopy forKey:@"LeafCertData"];
      [v11 setObject:infoCopy forKey:@"FullCertData"];
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:0];
      [v11 setObject:v13 forKey:@"PolicyFlags"];

      v10 = [v11 copy];
      goto LABEL_28;
    }

    [MFAACertificateManager copyParsedCertificateChainInfo:];
LABEL_27:
    v10 = 0;
    goto LABEL_28;
  }

  v10 = [(MFAACertificateManager *)self copyParsedCertificateChainInfo:infoCopy];
  v11 = 0;
LABEL_28:
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v16 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 67109378;
    typeCopy2 = type;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_25627E000, v16, OS_LOG_TYPE_DEFAULT, "copyParsedCertificateChainInfo:assumeType: %d, result %@", &v19, 0x12u);
  }

  return v10;
}

- (id)copyParsedCertificateChainInfoFromCerts:(id)certs assumeType:(int)type
{
  v4 = *&type;
  v29 = *MEMORY[0x277D85DE8];
  certsCopy = certs;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 2;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v26 = v4;
    v27 = 2112;
    v28 = certsCopy;
    _os_log_impl(&dword_25627E000, v9, OS_LOG_TYPE_DEFAULT, "copyParsedCertificateChainInfoFromCerts:assumeType: %d, certificateList %@", buf, 0x12u);
  }

  if (!certsCopy || ![certsCopy count])
  {
    [MFAACertificateManager copyParsedCertificateChainInfoFromCerts:assumeType:];
    v10 = 0;
LABEL_33:
    v16 = 0;
    goto LABEL_22;
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
  if (!v10)
  {
    [MFAACertificateManager copyParsedCertificateChainInfoFromCerts:assumeType:];
    goto LABEL_33;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = certsCopy;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [v10 appendData:{*(*(&v20 + 1) + 8 * i), v20}];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v16 = [(MFAACertificateManager *)self copyParsedCertificateChainInfo:v10 assumeType:v4];
LABEL_22:
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v17 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v17 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v26 = v4;
    v27 = 2112;
    v28 = v16;
    _os_log_impl(&dword_25627E000, v17, OS_LOG_TYPE_DEFAULT, "copyParsedCertificateChainInfo:assumeType: %d, result %@", buf, 0x12u);
  }

  return v16;
}

- (id)copyEvaluatedCertificateChainInfo:(id)info forSpecificType:(int)type
{
  v4 = *&type;
  v107 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 2;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = infoCopy;
    *&buf[12] = 1024;
    *&buf[14] = v4;
    _os_log_impl(&dword_25627E000, v9, OS_LOG_TYPE_DEFAULT, "copyEvaluatedCertificateChainInfo: certificateInfo %@, forSpecificType: 0x%02x", buf, 0x12u);
  }

  if (!infoCopy)
  {
    [MFAACertificateManager copyEvaluatedCertificateChainInfo:forSpecificType:];
    v12 = 0;
    v63 = 0;
    v67 = 0;
    v87 = 0;
    v13 = 0;
    v85 = 0;
    v11 = 0;
LABEL_193:
    v66 = 0;
    goto LABEL_182;
  }

  v10 = [infoCopy mutableCopy];
  v11 = v10;
  if (!v10)
  {
    [MFAACertificateManager copyEvaluatedCertificateChainInfo:forSpecificType:];
    v12 = 0;
    v63 = 0;
    v67 = 0;
    v87 = 0;
    v13 = 0;
    v85 = 0;
    goto LABEL_193;
  }

  v12 = [v10 objectForKey:@"LeafCertData"];
  v13 = [v11 objectForKey:@"SubCACertData"];
  v84 = [v11 objectForKey:@"PolicyFlags"];
  unsignedLongLongValue = [v84 unsignedLongLongValue];
  if (v12)
  {
    v15 = unsignedLongLongValue;
    if (v4)
    {
      [MFAACertificateManager _anchorCertificatesDataForTypes:v4];
    }

    else
    {
      objc_msgSend__getAnchorCertsForPolicy_(self);
    }
    v16 = ;
    v83 = v4;
    bytes = [v12 bytes];
    v89 = [v12 length];
    v85 = v12;
    if (v13)
    {
      bytes2 = [v13 bytes];
      v17 = [v13 length];
    }

    else
    {
      bytes2 = 0;
      v17 = 0;
    }

    v101 = 0;
    v102 = 0;
    v99 = 0;
    v100 = 0;
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v18 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v18 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v20 = [v16 count];
      *buf = 134218496;
      *&buf[4] = v20;
      *&buf[12] = 2048;
      *&buf[14] = v15;
      *&buf[22] = 2048;
      *&buf[24] = v17;
      _os_log_impl(&dword_25627E000, v18, OS_LOG_TYPE_INFO, "copyEvaluatedCertificateChainInfo: %lu anchorCerts, policy 0x%llx, subCACertLen %lu", buf, 0x20u);
    }

    v86 = v11;
    v87 = v16;
    if (v16)
    {
      v21 = v17;
      v82 = infoCopy;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      obj = v16;
      v22 = [obj countByEnumeratingWithState:&v95 objects:v105 count:16];
      v81 = v13;
      if (v22)
      {
        v23 = v22;
        v24 = *v96;
        v25 = MEMORY[0x277D86220];
LABEL_31:
        v26 = 0;
        while (1)
        {
          if (*v96 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v95 + 1) + 8 * v26);
          v28 = gLogObjects;
          v29 = gNumLogObjects;
          if (!gLogObjects || gNumLogObjects < 2)
          {
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *&buf[4] = v28;
              *&buf[12] = 1024;
              *&buf[14] = v29;
              _os_log_error_impl(&dword_25627E000, v25, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v31 = v25;
            v32 = v25;
          }

          else
          {
            v32 = *(gLogObjects + 8);
          }

          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 134218242;
            *&buf[4] = v15;
            *&buf[12] = 2112;
            *&buf[14] = v27;
            _os_log_impl(&dword_25627E000, v32, OS_LOG_TYPE_INFO, "copyEvaluatedCertificateChainInfo: try CTEvaluateAccessoryCert for policy 0x%llx, anchorCert %@", buf, 0x16u);
          }

          v33 = CTEvaluateAccessoryCert(bytes, v89, bytes2, v21, [v27 bytes], objc_msgSend(v27, "length"), v15, &v102, &v101, &v100, &v99);
          v34 = gLogObjects;
          v35 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 2)
          {
            v36 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *&buf[4] = v34;
              *&buf[12] = 1024;
              *&buf[14] = v35;
              _os_log_error_impl(&dword_25627E000, v25, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v37 = v25;
            v36 = v25;
          }

          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            *buf = 67109634;
            *&buf[4] = v33;
            *&buf[8] = 2048;
            *&buf[10] = v15;
            *&buf[18] = 2112;
            *&buf[20] = v27;
            _os_log_impl(&dword_25627E000, v36, OS_LOG_TYPE_INFO, "copyEvaluatedCertificateChainInfo: ctRet %d after try CTEvaluateAccessoryCert for policy 0x%llx, anchorCert %@", buf, 0x1Cu);
          }

          if (!v33)
          {
            break;
          }

          v38 = gLogObjects;
          v39 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 2)
          {
            v40 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *&buf[4] = v38;
              *&buf[12] = 1024;
              *&buf[14] = v39;
              _os_log_error_impl(&dword_25627E000, v25, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v41 = v25;
            v40 = v25;
          }

          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109634;
            *&buf[4] = v33;
            *&buf[8] = 2048;
            *&buf[10] = v15;
            *&buf[18] = 2112;
            *&buf[20] = v27;
            _os_log_debug_impl(&dword_25627E000, v40, OS_LOG_TYPE_DEBUG, "copyEvaluatedCertificateChainInfo: ctRet %d after try CTEvaluateAccessoryCert for policy 0x%llx, anchorCert %@", buf, 0x1Cu);
          }

          if (v23 == ++v26)
          {
            v23 = [obj countByEnumeratingWithState:&v95 objects:v105 count:16];
            if (v23)
            {
              goto LABEL_31;
            }

            break;
          }
        }
      }

      else
      {
        v33 = -1;
      }

      v13 = v81;
      infoCopy = v82;
      v11 = v86;
      v17 = v21;
    }

    else
    {
      v33 = CTEvaluateAccessoryCert(bytes, v89, bytes2, v17, 0, 0, v15, &v102, &v101, &v100, &v99);
    }

    if (gLogObjects && gNumLogObjects >= 2)
    {
      v42 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v42 = MEMORY[0x277D86220];
      v43 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v44 = v13;
      v45 = infoCopy;
      v46 = v17;
      if (v102)
      {
        v47 = v101 == 0;
      }

      else
      {
        v47 = 1;
      }

      v48 = !v47;
      if (v47)
      {
        v49 = 0;
      }

      else
      {
        v49 = [MEMORY[0x277CBEA90] dataWithBytes:? length:?];
      }

      if (v100)
      {
        v50 = v99 == 0;
      }

      else
      {
        v50 = 1;
      }

      v51 = !v50;
      if (v50)
      {
        v52 = 0;
      }

      else
      {
        v52 = [MEMORY[0x277CBEA90] dataWithBytes:? length:?];
      }

      *buf = 138412802;
      *&buf[4] = v49;
      *&buf[12] = 2112;
      *&buf[14] = v52;
      *&buf[22] = 1024;
      *&buf[24] = v33;
      _os_log_impl(&dword_25627E000, v42, OS_LOG_TYPE_INFO, "copyEvaluatedCertificateChainInfo: leafKey %@, extensionValue %@, ctRet %d", buf, 0x1Cu);
      if (v51)
      {
      }

      if (v48)
      {
      }

      v17 = v46;
      infoCopy = v45;
      v13 = v44;
      v11 = v86;
    }

    if (!v33)
    {
LABEL_127:
      if (v102 && v101 && ([MEMORY[0x277CBEA90] dataWithBytes:? length:?], v63 = objc_claimAutoreleasedReturnValue(), v63, v63))
      {
        [v11 setObject:v63 forKey:@"PublicKey"];
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 2)
        {
          v64 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [MFAATokenManager _init];
          }

          v64 = MEMORY[0x277D86220];
          v68 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25627E000, v64, OS_LOG_TYPE_DEFAULT, "copyEvaluatedCertificateChainInfo: no leafKey", buf, 2u);
        }

        v63 = 0;
      }

      if (v100 && v99 && ([MEMORY[0x277CBEA90] dataWithBytes:? length:?], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
      {
        [v11 setObject:v12 forKey:@"ExtensionValue"];
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 2)
        {
          v69 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [MFAATokenManager _init];
          }

          v69 = MEMORY[0x277D86220];
          v70 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25627E000, v69, OS_LOG_TYPE_DEFAULT, "copyEvaluatedCertificateChainInfo: no extensionValue", buf, 2u);
        }

        v12 = 0;
      }

      if (bytes2 && v17)
      {
        v92 = 0;
        v93 = 0;
        v103 = 0xB6463F78648862ALL;
        v104 = 1;
        *buf = 0x66463F78648862ALL;
        *&buf[8] = 327;
        v71 = &v103;
        v72 = 9;
        if (v15 != 0x40000000)
        {
          v71 = 0;
          v72 = 0;
        }

        if (v15 == 0x400000000)
        {
          v73 = buf;
        }

        else
        {
          v73 = v71;
        }

        if (v15 == 0x400000000)
        {
          v74 = 10;
        }

        else
        {
          v74 = v72;
        }

        CTParseExtensionValue(bytes2, v17, v73, v74, &v93, &v92);
        if (v93 && v92)
        {
          v75 = [MEMORY[0x277CBEA90] dataWithBytes:? length:?];

          if (v75)
          {
            [v11 setObject:v75 forKey:@"SubCAExtensionValue"];
            v12 = v75;
            goto LABEL_173;
          }
        }

        else
        {
        }

        v12 = 0;
      }

LABEL_173:
      if (v15 == 0x40000000)
      {
        *buf = 0xB6463F78648862ALL;
        buf[8] = 2;
        v103 = 0;
        v93 = 0;
        CTParseExtensionValue(bytes, v89, buf, 9uLL, &v103, &v93);
        v67 = v84;
        if (v103 && v93)
        {
          v76 = [MEMORY[0x277CBEA90] dataWithBytes:? length:?];

          if (v76)
          {
            [v11 setObject:v76 forKey:@"PartNumber"];
            v12 = v76;
LABEL_181:
            v66 = [v11 copy];
            goto LABEL_182;
          }
        }

        else
        {
        }

        v12 = 0;
        goto LABEL_181;
      }

      v67 = v84;
      goto LABEL_181;
    }

    if (gLogObjects && gNumLogObjects >= 2)
    {
      v53 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v53 = MEMORY[0x277D86220];
      v54 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25627E000, v53, OS_LOG_TYPE_DEFAULT, "copyEvaluatedCertificateChainInfo: try validateCertificateChain:type:...", buf, 2u);
    }

    v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (bytes && v89)
    {
      v56 = [MEMORY[0x277CBEA90] dataWithBytes:bytes length:v89];
      [v55 addObject:v56];
    }

    if (bytes2 && v17)
    {
      v57 = [MEMORY[0x277CBEA90] dataWithBytes:bytes2 length:v17];
      [v55 addObject:v57];
    }

    if (v87)
    {
      [v55 addObjectsFromArray:?];
    }

    if ([v55 count])
    {
      v58 = [MFAACertificateManager _anchorType2CertType:v83];
      v59 = +[MFAACertificateManager sharedManager];
      v94 = 0;
      LODWORD(v58) = [v59 validateCertificateChain:v55 type:v58 realtime:0 error:&v94];
      v60 = v94;

      if (v58 == 1)
      {
        goto LABEL_126;
      }
    }

    if ([v55 count])
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v61 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [MFAATokenManager _init];
        }

        v61 = MEMORY[0x277D86220];
        v62 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25627E000, v61, OS_LOG_TYPE_DEFAULT, "copyEvaluatedCertificateChainInfo: try MFAAVerifyPublicCertificateChain", buf, 2u);
      }

      if (MFAAVerifyPublicCertificateChain(v55))
      {
LABEL_126:

        goto LABEL_127;
      }
    }

    v65 = logObjectForModule(1u);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      [MFAACertificateManager copyEvaluatedCertificateChainInfo:forSpecificType:];
    }

    v12 = 0;
    v63 = 0;
  }

  else
  {
    [MFAACertificateManager copyEvaluatedCertificateChainInfo:forSpecificType:];
    v63 = 0;
    v87 = 0;
    v85 = 0;
  }

  v66 = 0;
  v67 = v84;
LABEL_182:
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v77 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v77 = MEMORY[0x277D86220];
    v78 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v66;
    _os_log_impl(&dword_25627E000, v77, OS_LOG_TYPE_DEFAULT, "copyEvaluatedCertificateChainInfo: result %@", buf, 0xCu);
  }

  v79 = v66;
  return v79;
}

- (int)authVersionFromCertificateChainInfo:(id)info
{
  infoCopy = info;
  v4 = infoCopy;
  if (infoCopy)
  {
    v5 = [infoCopy objectForKey:@"PolicyFlags"];
    v6 = v5;
    if (v5)
    {
      if (([v5 unsignedLongLongValue] & 0x8000000) != 0)
      {
        v7 = 2;
      }

      else if (([v6 unsignedLongLongValue] & 4) != 0)
      {
        v7 = 3;
      }

      else if (([v6 unsignedLongLongValue] & 0x40000000) != 0)
      {
        v7 = 4;
      }

      else if (([v6 unsignedLongLongValue] & 0x41C00000000) != 0)
      {
        v7 = 5;
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_14;
    }
  }

  else
  {
    [MFAACertificateManager copyEvaluatedCertificateChainInfo:forSpecificType:];
    v6 = 0;
  }

  v7 = 0;
LABEL_14:
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 2;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [MFAACertificateManager authVersionFromCertificateChainInfo:];
  }

  return v7;
}

- (id)copyCertificateSerialNumber:(id)number authVer:(int)ver
{
  v29 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v6 = numberCopy;
  error = 0;
  if (numberCopy)
  {
    [numberCopy bytes];
    [v6 length];
    v7 = SecCertificateCreateWithBytes();
    if (v7)
    {
      v8 = v7;
      v9 = SecCertificateCopySerialNumberData(v7, &error);
      v10 = v9;
      if (v9)
      {
        v11 = error == 0;
      }

      else
      {
        v11 = 0;
      }

      if (v11)
      {
        if (ver != 2)
        {
          goto LABEL_17;
        }

        BytePtr = CFDataGetBytePtr(v9);
        Length = CFDataGetLength(v10);
        v15 = BytePtr && Length == 15;
        if (!v15 || (BytePtr[7] & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        v20 = MFAAIsInternalBuild(Length, v14);
        if (!v20 || (v20 = MFAAIsDevelopmentHW(v20, v21), (v20 & 1) == 0))
        {
          if (!MFAAIsDeveloperBuild(v20, v21))
          {
            goto LABEL_17;
          }
        }

        v22 = *BytePtr;
        *&buf[7] = *(BytePtr + 7);
        *buf = v22;
        buf[7] = HIBYTE(v22) & 0x7F;
        CFRelease(v10);
        v10 = CFDataCreate(0, buf, 15);
        if (v10)
        {
          goto LABEL_17;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [MFAACertificateManager copyCertificateSerialNumber:authVer:];
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = "[MFAACertificateManager copyCertificateSerialNumber:authVer:]";
        *&buf[12] = 1024;
        *&buf[14] = 1072;
        v25 = 2112;
        v26 = v10;
        v27 = 2112;
        v28 = error;
        _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d WARNING: pkSerNumData = %@, pCFError = %@", buf, 0x26u);
      }

      v10 = 0;
LABEL_17:
      CFRelease(v8);
      goto LABEL_18;
    }

    [MFAACertificateManager copyCertificateSerialNumber:authVer:];
  }

  else
  {
    [MFAACertificateManager copyCertificateSerialNumber:authVer:];
  }

  v10 = 0;
LABEL_18:
  if (gLogObjects)
  {
    v16 = gNumLogObjects < 2;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v18 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  else
  {
    v18 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [MFAACertificateManager copyCertificateSerialNumber:authVer:];
  }

  return v10;
}

- (id)copyLeafCertificateSerialNumber:(id)number
{
  v16 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v5 = numberCopy;
  if (numberCopy)
  {
    v6 = [numberCopy objectForKey:@"LeafCertData"];
    if (v6)
    {
      v7 = [(MFAACertificateManager *)self copyCertificateSerialNumber:v6 authVer:[(MFAACertificateManager *)self authVersionFromCertificateChainInfo:v5]];
    }

    else
    {
      [MFAACertificateManager copyLeafCertificateSerialNumber:];
      v7 = 0;
    }
  }

  else
  {
    [MFAACertificateManager copyLeafCertificateSerialNumber:];
    v7 = 0;
    v6 = 0;
  }

  if (gLogObjects)
  {
    v8 = gNumLogObjects < 2;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_25627E000, v10, OS_LOG_TYPE_DEFAULT, "copyLeafCertificateSerialNumber: certSerial %@, certificateInfo %@", &v12, 0x16u);
  }

  return v7;
}

- (BOOL)verifyCertificateSerialNumberBySerialNumber:(id)number authVer:(int)ver
{
  numberCopy = number;
  v6 = numberCopy;
  if (!numberCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAACertificateManager verifyCertificateSerialNumberBySerialNumber:authVer:];
    }

    goto LABEL_26;
  }

  bytes = [numberCopy bytes];
  v8 = [v6 length];
  if (!bytes)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAACertificateManager verifyCertificateSerialNumberBySerialNumber:authVer:];
    }

    goto LABEL_26;
  }

  if (ver == 2 && v8 == 15)
  {
    v9 = (*bytes << 56) | (bytes[1] << 48) | (bytes[3] << 40) | (bytes[4] << 32) | (bytes[5] << 24) | (bytes[7] << 16) | (bytes[9] << 8);
    v10 = bytes[10];
    v11 = bytes[12];
    v12 = bytes[13];
    v13 = bytes[14];
    NumRevokedAuthICBatches = getNumRevokedAuthICBatches();
    RevokedAuthICBatches = getRevokedAuthICBatches();
    v16 = MFAAPrefixesBinarySearch(RevokedAuthICBatches, v9 + v10, NumRevokedAuthICBatches);
    if (v16 != -1 && MFAABatchBinarySearch(RevokedAuthICBatches[3 * v16 + 2], (v11 << 16) | (v12 << 8) | v13, RevokedAuthICBatches[3 * v16 + 1]))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAACertificateManager verifyCertificateSerialNumberBySerialNumber:authVer:];
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [(MFAACertificateManager *)bytes verifyCertificateSerialNumberBySerialNumber:v17 authVer:v18, v19, v20, v21, v22, v23];
      }

LABEL_26:
      v29 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    if (ver != 3 || v8 != 16)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAACertificateManager verifyCertificateSerialNumberBySerialNumber:authVer:];
      }

      goto LABEL_26;
    }

    v24 = *bytes;
    if (v24 < 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAACertificateManager verifyCertificateSerialNumberBySerialNumber:authVer:];
      }

      goto LABEL_26;
    }

    v25 = (v24 << 40) | (bytes[1] << 32) | (bytes[2] << 24) | (bytes[3] << 16) | (bytes[4] << 8);
    v26 = bytes[5];
    NumRevokedAuth3Wafers = getNumRevokedAuth3Wafers();
    RevokedAuth3Wafers = getRevokedAuth3Wafers();
    if (MFAAWaferBinarySearch(RevokedAuth3Wafers, v25 | v26, NumRevokedAuth3Wafers))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAACertificateManager verifyCertificateSerialNumberBySerialNumber:authVer:];
      }

      goto LABEL_26;
    }
  }

  v29 = 1;
LABEL_27:

  return v29;
}

- (BOOL)verifyCertificateSerialNumber:(id)number authVer:(int)ver
{
  v4 = *&ver;
  numberCopy = number;
  if (!numberCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [MFAACertificateManager verifyCertificateSerialNumber:authVer:];
    }

    goto LABEL_9;
  }

  v7 = [(MFAACertificateManager *)self copyCertificateSerialNumber:numberCopy authVer:v4];
  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [MFAACertificateManager verifyCertificateSerialNumber:authVer:];
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v8 = v7;
  if ([(MFAACertificateManager *)self verifyCertificateSerialNumberBySerialNumber:v7 authVer:v4])
  {
    v9 = 1;
    goto LABEL_13;
  }

LABEL_10:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [MFAACertificateManager verifyCertificateSerialNumber:v8 authVer:?];
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (BOOL)verifyCertificateChainInfoSerialNumber:(id)number
{
  v19 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v5 = numberCopy;
  if (!numberCopy)
  {
    v7 = logObjectForModule(1u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MFAACertificateManager verifyCertificateChainInfoSerialNumber:];
    }

    goto LABEL_27;
  }

  v6 = [numberCopy objectForKey:@"LeafCertData"];
  if (!v6)
  {
    v7 = logObjectForModule(1u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MFAACertificateManager verifyCertificateChainInfoSerialNumber:];
    }

LABEL_27:
    v9 = 0;
    goto LABEL_14;
  }

  v7 = v6;
  v8 = [(MFAACertificateManager *)self authVersionFromCertificateChainInfo:v5];
  if ((v8 & 0xFFFFFFFE) == 2)
  {
    v9 = [(MFAACertificateManager *)self verifyCertificateSerialNumber:v7 authVer:v8];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v10 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v10 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 67109120;
      v16 = v8;
      _os_log_impl(&dword_25627E000, v10, OS_LOG_TYPE_DEFAULT, "No certSerial support for auth type %d, skip", &v15, 8u);
    }

    v9 = 1;
  }

LABEL_14:

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v12 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v12 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 67109378;
    v16 = v9;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_25627E000, v12, OS_LOG_TYPE_DEFAULT, "verifyCertificateLeafSerialNumber: bSerNumValid %d, certificateInfo %@", &v15, 0x12u);
  }

  return v9;
}

- (BOOL)verifyNonceSignature:(id)signature nonce:(id)nonce signature:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  nonceCopy = nonce;
  v10 = a5;
  v11 = v10;
  error = 0;
  trust = 0;
  selfCopy = self;
  v47 = nonceCopy;
  if (!signatureCopy)
  {
    [MFAACertificateManager copyEvaluatedCertificateChainInfo:forSpecificType:];
LABEL_86:
    v20 = 0;
    LOBYTE(bytes2) = 0;
    v27 = 0;
    v23 = 0;
    nonceCopy = 0;
    goto LABEL_87;
  }

  if (!nonceCopy)
  {
    [MFAACertificateManager verifyNonceSignature:nonce:signature:];
    v20 = 0;
    LOBYTE(bytes2) = 0;
    v27 = 0;
    v23 = 0;
LABEL_87:
    v12 = 0;
    goto LABEL_33;
  }

  if (!v10)
  {
    [MFAACertificateManager verifyNonceSignature:nonce:signature:];
    goto LABEL_86;
  }

  v12 = [signatureCopy objectForKey:@"LeafCertData"];
  if (!v12)
  {
    [MFAACertificateManager verifyNonceSignature:nonce:signature:];
    v20 = 0;
    LOBYTE(bytes2) = 0;
LABEL_90:
    v27 = 0;
    v23 = 0;
    nonceCopy = 0;
    goto LABEL_33;
  }

  bytes2 = [signatureCopy objectForKey:@"FullCertData"];
  if (!bytes2)
  {
    [MFAACertificateManager verifyNonceSignature:nonce:signature:];
    v20 = 0;
    goto LABEL_90;
  }

  v14 = [(MFAACertificateManager *)self authVersionFromCertificateChainInfo:signatureCopy];
  if ((v14 - 4) <= 0xFFFFFFFD)
  {
    [v12 bytes];
    [v12 length];
    v15 = SecCertificateCreateWithBytes();
    if (v15)
    {
      v16 = v15;
      v17 = SecCertificateCopyKey(v15);
      if (v17)
      {
        v18 = v17;
        v19 = SecKeyVerifySignature(v17, *MEMORY[0x277CDC300], nonceCopy, v11, &error);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v51 = v19 != 0;
          *&v51[4] = 2112;
          *&v51[6] = error;
          _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "signatureValidNoCertCheck for kSecKeyAlgorithmECDSASignatureMessageX962SHA256 = %d, error %@", buf, 0x12u);
        }

        if (error)
        {
          CFRelease(error);
          error = 0;
        }

        if (v19)
        {
          v20 = 1;
        }

        else
        {
          v28 = SecKeyVerifySignature(v18, *MEMORY[0x277CDC318], nonceCopy, v11, &error);
          v20 = v28 != 0;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109378;
            *v51 = v28 != 0;
            *&v51[4] = 2112;
            *&v51[6] = error;
            _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "signatureValidNoCertCheck for kSecKeyAlgorithmECDSASignatureRFC4754 = %d, error %@", buf, 0x12u);
          }

          if (error)
          {
            CFRelease(error);
            error = 0;
          }
        }

        nonceCopy = bytes2;
        CFRelease(v18);
        goto LABEL_31;
      }

      nonceCopy = bytes2;
      [MFAACertificateManager verifyNonceSignature:nonce:signature:];
LABEL_25:
      v20 = 0;
LABEL_31:
      v23 = 0;
LABEL_32:
      CFRelease(v16);
      LOBYTE(bytes2) = 0;
      v27 = 0;
      goto LABEL_33;
    }

    goto LABEL_91;
  }

  v21 = SecCertificateCreateWithData(*MEMORY[0x277CBECE8], v12);
  if (v21)
  {
    v16 = v21;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (!Mutable)
    {
      nonceCopy = bytes2;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAACertificateManager verifyNonceSignature:nonce:signature:];
      }

      goto LABEL_25;
    }

    v23 = Mutable;
    CFArrayAppendValue(Mutable, v16);
    v24 = SecPolicyCreateiAP();
    if (!v24)
    {
      nonceCopy = bytes2;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAACertificateManager verifyNonceSignature:nonce:signature:];
      }

      v20 = 0;
      goto LABEL_32;
    }

    v25 = v24;
    SecTrustCreateWithCertificates(v23, v24, &trust);
    if (!trust)
    {
      nonceCopy = bytes2;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAACertificateManager verifyNonceSignature:nonce:signature:];
      }

      LOBYTE(bytes2) = 0;
      v27 = 0;
      goto LABEL_82;
    }

    *buf = 0;
    v27 = MFAACreateAnchorCertificateAuthorityArray(v14, v26);
    if (!v27)
    {
      nonceCopy = bytes2;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAACertificateManager verifyNonceSignature:nonce:signature:];
      }

      LOBYTE(bytes2) = 0;
      goto LABEL_82;
    }

    v45 = v25;
    SecTrustSetAnchorCertificates(trust, v27);
    if (MEMORY[0x259C60280](trust, buf))
    {
      nonceCopy = bytes2;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAACertificateManager verifyNonceSignature:nonce:signature:];
      }
    }

    else
    {
      if (*buf == 4 || *buf == 1)
      {
        v34 = MEMORY[0x259C60260](trust);
        nonceCopy = bytes2;
        if (v34)
        {
          v35 = v34;
          bytes = [(__CFData *)v47 bytes];
          v40 = [(__CFData *)v47 length];
          bytes2 = [(__CFData *)v11 bytes];
          v36 = [(__CFData *)v11 length];
          if (v14 == 2)
          {
            v37 = 32770;
          }

          else
          {
            v37 = 0x4000;
          }

          cf = v35;
          v38 = SecKeyRawVerify(v35, v37, bytes, v40, bytes2, v36);
          LOBYTE(bytes2) = v38 == 0;
          v25 = v45;
          if (v38)
          {
            v42 = logObjectForModule(0xFFFFFFFF);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              [MFAACertificateManager verifyNonceSignature:nonce:signature:];
            }

            v43 = logObjectForModule(0xFFFFFFFF);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              [MFAACertificateManager verifyNonceSignature:nonce:signature:];
            }
          }

          CFRelease(cf);
          goto LABEL_82;
        }

        v39 = logObjectForModule(0xFFFFFFFF);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          [MFAACertificateManager verifyNonceSignature:nonce:signature:];
        }
      }

      else
      {
        nonceCopy = bytes2;
        v39 = logObjectForModule(0xFFFFFFFF);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          [MFAACertificateManager verifyNonceSignature:nonce:signature:];
        }
      }
    }

    LOBYTE(bytes2) = 0;
LABEL_82:
    CFRelease(v16);
    CFRelease(v25);
    v20 = 0;
    goto LABEL_33;
  }

LABEL_91:
  nonceCopy = bytes2;
  [MFAACertificateManager verifyNonceSignature:nonce:signature:];
  v20 = 0;
  LOBYTE(bytes2) = 0;
  v27 = 0;
  v23 = 0;
LABEL_33:
  if (trust)
  {
    CFRelease(trust);
    trust = 0;
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (bytes2)
  {
    LOBYTE(v20) = 1;
  }

  else
  {
    v29 = [(MFAACertificateManager *)selfCopy copyLeafCertificateSerialNumber:signatureCopy];
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v30 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v30 = MEMORY[0x277D86220];
      v31 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v32 = [v29 length];
      *buf = 138478083;
      *v51 = v29;
      *&v51[8] = 2048;
      *&v51[10] = v32;
      _os_log_impl(&dword_25627E000, v30, OS_LOG_TYPE_INFO, "certSerial: %{private}@, certSerial.length: %lu", buf, 0x16u);
    }

    if (v20 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "auth cert validity check failed, but signature was signed by certificate ... treating as success", buf, 2u);
    }
  }

  return v20;
}

- (id)createVeridianNonce:(id)nonce withChallenge:(id)challenge
{
  v18 = *MEMORY[0x277D85DE8];
  nonceCopy = nonce;
  challengeCopy = challenge;
  v7 = [MEMORY[0x277CBEB28] dataWithData:challengeCopy];
  [v7 appendData:nonceCopy];
  v8 = SecSHA256DigestCreateFromData();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138413058;
    v11 = challengeCopy;
    v12 = 2112;
    v13 = nonceCopy;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_25627E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "createVeridianNonce: %@ + %@ -> %@ -> %@", &v10, 0x2Au);
  }

  return v8;
}

- (int)_validateCertificateChain:(id)chain realtime:(BOOL)realtime error:(id *)error
{
  realtimeCopy = realtime;
  v130[4] = *MEMORY[0x277D85DE8];
  chainCopy = chain;
  if (gLogObjects)
  {
    v9 = gNumLogObjects < 2;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v11 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  else
  {
    v11 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25627E000, v11, OS_LOG_TYPE_DEFAULT, "Validating certificate... (internal)", buf, 2u);
  }

  if (systemInfo_isInternalBuild(v12, v13))
  {
    userDefaults = [(MFAACertificateManager *)self userDefaults];
    v15 = [userDefaults stringForKey:@"SpoofCertificateStatus"];

    if (v15)
    {
      v129[0] = @"default";
      v129[1] = @"valid";
      v130[0] = &unk_286854398;
      v130[1] = &unk_2868543B0;
      v129[2] = @"invalid";
      v129[3] = @"revoked";
      v130[2] = &unk_2868543C8;
      v130[3] = &unk_2868543E0;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v130 forKeys:v129 count:4];
      v17 = [v16 objectForKeyedSubscript:v15];

      if (v17)
      {
        v18 = [v16 objectForKeyedSubscript:v15];
        intValue = [v18 intValue];

        if (intValue)
        {
          if (gLogObjects && gNumLogObjects >= 2)
          {
            v20 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [MFAATokenManager _init];
            }

            v20 = MEMORY[0x277D86220];
            v22 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = intValue;
            _os_log_impl(&dword_25627E000, v20, OS_LOG_TYPE_DEFAULT, "Spoofing certificate status: %{coreacc:MFAACertificateManager_CertStatus_t}d", buf, 8u);
          }

          v23 = 0;
          goto LABEL_142;
        }
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 2)
        {
          v21 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [MFAATokenManager _init];
          }

          v21 = MEMORY[0x277D86220];
          v24 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [MFAACertificateManager _validateCertificateChain:realtime:error:];
        }
      }
    }
  }

  v25 = [chainCopy objectAtIndex:0];

  if (v25)
  {
    v26 = SecCertificateCopySerialNumberData(v25, 0);
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v27 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v27 = MEMORY[0x277D86220];
      v29 = MEMORY[0x277D86220];
    }

    v112 = realtimeCopy;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v26;
      _os_log_impl(&dword_25627E000, v27, OS_LOG_TYPE_DEFAULT, "certSerial: %@", buf, 0xCu);
    }

    v30 = SecCertificateCopyIssuerSummary();
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v31 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v31 = MEMORY[0x277D86220];
      v32 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v30;
      _os_log_impl(&dword_25627E000, v31, OS_LOG_TYPE_DEFAULT, "certIssuer: %@", buf, 0xCu);
    }

    v33 = MEMORY[0x277CBEAA8];
    SecCertificateNotValidBefore();
    v117 = [v33 dateWithTimeIntervalSinceReferenceDate:?];
    v34 = MEMORY[0x277CBEAA8];
    SecCertificateNotValidAfter();
    v116 = [v34 dateWithTimeIntervalSinceReferenceDate:?];
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v35 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v35 = MEMORY[0x277D86220];
      v36 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v116;
      *&buf[12] = 2112;
      v125 = v117;
      _os_log_impl(&dword_25627E000, v35, OS_LOG_TYPE_DEFAULT, "expirationDate: %@, issueDate: %@", buf, 0x16u);
    }

    v115 = SecCertificateCopySubjectString();
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v37 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v37 = MEMORY[0x277D86220];
      v38 = MEMORY[0x277D86220];
    }

    v113 = v30;
    v114 = v26;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v115;
      _os_log_impl(&dword_25627E000, v37, OS_LOG_TYPE_DEFAULT, "certSubject: %@", buf, 0xCu);
    }

    v39 = SecCertificateGetiAuthVersion();
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v40 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v40 = MEMORY[0x277D86220];
      v41 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v39;
      _os_log_impl(&dword_25627E000, v40, OS_LOG_TYPE_DEFAULT, "authVersion: %{coreacc:SeciAuthVersion}d", buf, 8u);
    }

    v42 = SecCertificateCopyComponentType();
    if (v42)
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v43 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [MFAATokenManager _init];
        }

        v43 = MEMORY[0x277D86220];
        v47 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v42;
        _os_log_impl(&dword_25627E000, v43, OS_LOG_TYPE_DEFAULT, "componentType is present in certificate, value is %@", buf, 0xCu);
      }

      if (v39 != 4)
      {
        *buf = 0;
        if (MFAAIsDevelopmentHW(v48, v49))
        {
          NSLog(&cfstr_UseBasicx509Po.isa);
          BasicX509 = SecPolicyCreateBasicX509();
        }

        else
        {
          BasicX509 = SecPolicyCreateAppleComponentCertificate();
        }

        v52 = BasicX509;
        if (BasicX509)
        {
          if (SecTrustCreateWithCertificates(chainCopy, BasicX509, buf) || (v53 = *buf, v54 = _anchorCertsForComponentAuth(), SecTrustSetAnchorCertificates(v53, v54), v123 = 0, MEMORY[0x259C60280](*buf, &v123)))
          {
            intValue = 0;
          }

          else
          {
            if (gLogObjects && gNumLogObjects >= 2)
            {
              v55 = *(gLogObjects + 8);
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [MFAATokenManager _init];
              }

              v55 = MEMORY[0x277D86220];
              v56 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              *v128 = 67109120;
              *&v128[4] = v123;
              _os_log_impl(&dword_25627E000, v55, OS_LOG_TYPE_DEFAULT, "trustResult: %d", v128, 8u);
            }

            if (v123 == 4 || v123 == 5 && SecTrustIsExpiredOnly())
            {
              intValue = 1;
            }

            else
            {
              *v128 = 0;
              SecTrustEvaluateWithError(*buf, v128);
              if (*v128)
              {
                v57 = logObjectForModule(1u);
                if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                {
                  [MFAACertificateManager _validateCertificateChain:realtime:error:];
                }

                if (*v128)
                {
                  CFRelease(*v128);
                }
              }

              intValue = 2;
            }
          }

          CFRelease(v52);
        }

        else
        {
          intValue = 0;
        }

        if (*buf)
        {
          CFRelease(*buf);
        }

LABEL_140:
        v23 = 0;
LABEL_141:
        CFRelease(v25);

        goto LABEL_142;
      }
    }

    else
    {
      if (!v39)
      {
        if (gLogObjects && gNumLogObjects >= 2)
        {
          v58 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [MFAATokenManager _init];
          }

          v58 = MEMORY[0x277D86220];
          v59 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          [MFAACertificateManager _validateCertificateChain:realtime:error:];
        }

        v23 = [MEMORY[0x277CCA9B8] MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-3];
        intValue = 2;
        goto LABEL_141;
      }

      if (v39 != 4)
      {
        v44 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(chainCopy, "count")}];
        if (v44)
        {
          if ([chainCopy count])
          {
            v45 = 0;
            do
            {
              v46 = SecCertificateCopyData([chainCopy objectAtIndex:v45]);
              [v44 addObject:v46];

              ++v45;
            }

            while ([chainCopy count] > v45);
          }

          if (MFAAVerifyPublicCertificateChain(v44))
          {
            intValue = 1;
          }

          else
          {
            intValue = 2;
          }
        }

        else
        {
          intValue = 0;
        }

        goto LABEL_140;
      }
    }

    *v128 = 0;
    v66 = mfaa_certificateManager_SWAuthCertType(v25);
    v67 = v66;
    isInternalBuild = systemInfo_isInternalBuild(v66, v68);
    if ((isInternalBuild & 1) != 0 || (systemInfo_isDeveloperBuild(isInternalBuild, v70) & 1) != 0 || v67 == 1)
    {
      v108 = v67;
      userDefaults2 = [(MFAACertificateManager *)self userDefaults];
      v72 = [userDefaults2 BOOLForKey:@"BypassCertificateExpirationCheck"];

      if (gLogObjects)
      {
        v73 = gNumLogObjects <= 1;
      }

      else
      {
        v73 = 1;
      }

      v74 = !v73;
      if (v72)
      {
        if (v74)
        {
          v75 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [MFAATokenManager _init];
          }

          v75 = MEMORY[0x277D86220];
          v76 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "NO";
          _os_log_impl(&dword_25627E000, v75, OS_LOG_TYPE_DEFAULT, "enforceExpiration: %s (overridden by internal setting)", buf, 0xCu);
        }
      }

      else
      {
        if (v74)
        {
          v75 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [MFAATokenManager _init];
          }

          v75 = MEMORY[0x277D86220];
          v77 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
        {
          v78 = "NO";
          if (v108 == 2)
          {
            v78 = "YES";
          }

          *buf = 136315138;
          *&buf[4] = v78;
          _os_log_impl(&dword_25627E000, v75, OS_LOG_TYPE_DEFAULT, "enforceExpiration: %s", buf, 0xCu);
        }
      }

      v79 = SecPolicyCreateiAPSWAuthWithExpiration();
      if (v79)
      {
        v80 = v79;
        if (SecTrustCreateWithCertificates(v25, v79, v128))
        {
          v23 = 0;
          intValue = 0;
        }

        else
        {
          v81 = *v128;
          cf = v80;
          if (_anchorCertsForSWAuth_onceToken != -1)
          {
            [MFAACertificateManager _validateCertificateChain:realtime:error:];
          }

          if (gLogObjects && gNumLogObjects >= 2)
          {
            v82 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [MFAATokenManager _init];
            }

            v82 = MEMORY[0x277D86220];
            v83 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
          {
            v84 = [_anchorCertsForSWAuth_anchorCerts count];
            *buf = 134217984;
            *&buf[4] = v84;
            _os_log_impl(&dword_25627E000, v82, OS_LOG_TYPE_INFO, "%lu anchor cert(s) returned for SW Auth", buf, 0xCu);
          }

          v85 = _anchorCertsForSWAuth_anchorCerts;
          v86 = _anchorCertsForSWAuth_anchorCerts;
          SecTrustSetAnchorCertificates(v81, v85);
          v123 = 0;
          if (MEMORY[0x259C60280](*v128, &v123))
          {
            v23 = 0;
            intValue = 0;
          }

          else
          {
            if (gLogObjects && gNumLogObjects >= 2)
            {
              v87 = *(gLogObjects + 8);
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [MFAATokenManager _init];
              }

              v87 = MEMORY[0x277D86220];
              v88 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *&buf[4] = v123;
              _os_log_impl(&dword_25627E000, v87, OS_LOG_TYPE_DEFAULT, "trustResult: %d", buf, 8u);
            }

            v109 = v123;
            if (v123 == 4)
            {
              intValue = 1;
            }

            else if (v123 == 6)
            {
              intValue = 3;
            }

            else
            {
              *buf = 0;
              SecTrustEvaluateWithError(*v128, buf);
              if (*buf)
              {
                v89 = logObjectForModule(1u);
                if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                {
                  [MFAACertificateManager _validateCertificateChain:realtime:error:];
                }

                if (*buf)
                {
                  CFRelease(*buf);
                }
              }

              intValue = 2;
            }

            if (gLogObjects && gNumLogObjects >= 2)
            {
              v90 = *(gLogObjects + 8);
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [MFAATokenManager _init];
              }

              v90 = MEMORY[0x277D86220];
              v91 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *&buf[4] = intValue;
              _os_log_impl(&dword_25627E000, v90, OS_LOG_TYPE_DEFAULT, "certStatus (local): %{coreacc:MFAACertificateManager_CertStatus_t}d", buf, 8u);
            }

            if (v109 == 4)
            {
              v92 = SecCertificateCopyIssuerSequence();
              if (gLogObjects && gNumLogObjects >= 2)
              {
                v93 = *(gLogObjects + 8);
              }

              else
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  [MFAATokenManager _init];
                }

                v93 = MEMORY[0x277D86220];
                v94 = MEMORY[0x277D86220];
              }

              if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
              {
                __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74_cold_3();
              }

              if (v92)
              {
                v95 = SecCertificateCopyOrganization();
                v106 = v95;
                v107 = v92;
                if (v95 && (v96 = v95, [v95 count]) && (objc_msgSend(v96, "objectAtIndexedSubscript:", 0), (v97 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v110 = v97;
                  if (gLogObjects && gNumLogObjects >= 2)
                  {
                    v98 = *(gLogObjects + 8);
                  }

                  else
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      [MFAATokenManager _init];
                    }

                    v98 = MEMORY[0x277D86220];
                    v99 = MEMORY[0x277D86220];
                  }

                  if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
                  {
                    v100 = [(__CFData *)v114 length];
                    *buf = 138478339;
                    *&buf[4] = v114;
                    *&buf[12] = 2048;
                    v125 = v100;
                    v126 = 2113;
                    v127 = v110;
                    _os_log_impl(&dword_25627E000, v98, OS_LOG_TYPE_INFO, "certSerial: %{private}@, certSerial.length: %lu, ppid: %{private}@", buf, 0x20u);
                  }

                  if (v112)
                  {
                    v122 = 0;
                    intValue = [(MFAACertificateManager *)self _validateCertificateWithServer:v114 issuerSeq:v92 ppid:v110 error:&v122];
                    v23 = v122;
                    v101 = logObjectForModule(1u);
                    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_25627E000, v101, OS_LOG_TYPE_DEFAULT, "Finished sync server query!", buf, 2u);
                    }

                    v102 = logObjectForModule(1u);
                    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 67109120;
                      *&buf[4] = intValue;
                      _os_log_impl(&dword_25627E000, v102, OS_LOG_TYPE_DEFAULT, "certStatus (remote): %{coreacc:MFAACertificateManager_CertStatus_t}d", buf, 8u);
                    }

                    v103 = v110;
                  }

                  else
                  {
                    intValue = [(MFAACertificateManager *)self _getCachedCertStatus:v114 issuerSeq:v92 ppid:v110];
                    v104 = logObjectForModule(1u);
                    if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
                    {
                      *buf = 67109376;
                      *&buf[4] = 1;
                      *&buf[8] = 1024;
                      *&buf[10] = intValue;
                      _os_log_impl(&dword_25627E000, v104, OS_LOG_TYPE_INFO, "certStatus: %{coreacc:MFAACertificateManager_CertStatus_t}d, cachedCertStatus: %{coreacc:MFAACertificateManager_CertStatus_t}d", buf, 0xEu);
                    }

                    if (intValue <= 1)
                    {
                      intValue = 1;
                    }

                    v105 = dispatch_get_global_queue(-32768, 0);
                    block[0] = MEMORY[0x277D85DD0];
                    block[1] = 3221225472;
                    block[2] = __67__MFAACertificateManager__validateCertificateChain_realtime_error___block_invoke;
                    block[3] = &unk_279831BC8;
                    block[4] = self;
                    v119 = v114;
                    v120 = v92;
                    v103 = v110;
                    v121 = v110;
                    dispatch_async(v105, block);

                    v23 = 0;
                  }
                }

                else
                {
                  v23 = 0;
                  intValue = 2;
                }

                v80 = cf;

                v92 = v107;
              }

              else
              {
                v23 = 0;
                intValue = 2;
                v80 = cf;
              }

              goto LABEL_266;
            }

            v23 = 0;
          }

          v80 = cf;
        }

LABEL_266:
        CFRelease(v80);
        goto LABEL_267;
      }

      intValue = 0;
      v23 = 0;
    }

    else
    {
      [MFAACertificateManager _validateCertificateChain:realtime:error:];
      v23 = 0;
      intValue = 2;
    }

LABEL_267:
    if (*v128)
    {
      CFRelease(*v128);
    }

    goto LABEL_141;
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v28 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v28 = MEMORY[0x277D86220];
    v51 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [MFAACertificateManager _validateCertificateChain:realtime:error:];
  }

  v23 = [MEMORY[0x277CCA9B8] MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-3];
  intValue = 2;
LABEL_142:
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v60 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v60 = MEMORY[0x277D86220];
    v61 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = intValue;
    _os_log_impl(&dword_25627E000, v60, OS_LOG_TYPE_DEFAULT, "Returning certStatus: %{coreacc:MFAACertificateManager_CertStatus_t}d", buf, 8u);
  }

  if (v23)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v62 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v62 = MEMORY[0x277D86220];
      v63 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_79_cold_4();
    }
  }

  if (error)
  {
    v64 = v23;
    *error = v23;
  }

  return intValue;
}

void __67__MFAACertificateManager__validateCertificateChain_realtime_error___block_invoke(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v1 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v15 = 0;
  v5 = [v2 _validateCertificateWithServer:v1 issuerSeq:v3 ppid:v4 error:&v15];
  v6 = v15;
  if (v6)
  {
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 2;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v9 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    else
    {
      v9 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74_cold_11();
    }
  }

  if (gLogObjects)
  {
    v10 = gNumLogObjects < 2;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v12 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  else
  {
    v12 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25627E000, v12, OS_LOG_TYPE_DEFAULT, "Finished async server query!", buf, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v13 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v17 = v5;
    _os_log_impl(&dword_25627E000, v13, OS_LOG_TYPE_DEFAULT, "certStatus (remote): %{coreacc:MFAACertificateManager_CertStatus_t}d)", buf, 8u);
  }
}

- (int)_validateCertificateWithServer:(id)server issuerSeq:(id)seq ppid:(id)ppid error:(id *)error
{
  serverCopy = server;
  seqCopy = seq;
  ppidCopy = ppid;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy_;
  v39 = __Block_byref_object_dispose_;
  v40 = 0;
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v13 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25627E000, v13, OS_LOG_TYPE_DEFAULT, "Validating certificate with server...", buf, 2u);
  }

  v15 = dispatch_semaphore_create(0);
  xpcConnection = [(MFAACertificateManager *)self xpcConnection];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __78__MFAACertificateManager__validateCertificateWithServer_issuerSeq_ppid_error___block_invoke;
  v31[3] = &unk_279831BF0;
  v33 = &v35;
  v17 = v15;
  v32 = v17;
  v18 = [xpcConnection remoteObjectProxyWithErrorHandler:v31];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __78__MFAACertificateManager__validateCertificateWithServer_issuerSeq_ppid_error___block_invoke_128;
  v27[3] = &unk_279831C18;
  v29 = &v41;
  v30 = &v35;
  v19 = v17;
  v28 = v19;
  [v18 validateCertSerial:serverCopy issuerSeq:seqCopy ppid:ppidCopy withReply:v27];

  v20 = dispatch_time(0, 65000000000);
  if (dispatch_semaphore_wait(v19, v20))
  {
    v21 = [MEMORY[0x277CCA9B8] MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-4 description:@"Timed out waiting for XPC reply!"];
    v22 = v36[5];
    v36[5] = v21;
  }

  if (v36[5])
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v23 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v23 = MEMORY[0x277D86220];
      v24 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [MFAACertificateManager _validateCertificateWithServer:issuerSeq:ppid:error:];
    }
  }

  if (error)
  {
    *error = v36[5];
  }

  v25 = *(v42 + 6);

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

  return v25;
}

void __78__MFAACertificateManager__validateCertificateWithServer_issuerSeq_ppid_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_79_cold_2();
  }

  v7 = MEMORY[0x277CCA9B8];
  v8 = [v3 description];
  v9 = [v7 MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-4 description:v8];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __78__MFAACertificateManager__validateCertificateWithServer_issuerSeq_ppid_error___block_invoke_128(uint64_t a1, int a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (int)_getCachedCertStatus:(id)status issuerSeq:(id)seq ppid:(id)ppid
{
  v44 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  seqCopy = seq;
  ppidCopy = ppid;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  v37 = 0;
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v11 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v43 = statusCopy;
    _os_log_impl(&dword_25627E000, v11, OS_LOG_TYPE_DEFAULT, "Checking cached cert status... (certSerial: %{private}@)", buf, 0xCu);
  }

  v13 = dispatch_semaphore_create(0);
  xpcConnection = [(MFAACertificateManager *)self xpcConnection];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __62__MFAACertificateManager__getCachedCertStatus_issuerSeq_ppid___block_invoke;
  v29[3] = &unk_279831BF0;
  v31 = &v32;
  v15 = v13;
  v30 = v15;
  v16 = [xpcConnection remoteObjectProxyWithErrorHandler:v29];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __62__MFAACertificateManager__getCachedCertStatus_issuerSeq_ppid___block_invoke_133;
  v25[3] = &unk_279831C18;
  v27 = &v38;
  v28 = &v32;
  v17 = v15;
  v26 = v17;
  [v16 getCachedStatusForCertSerial:statusCopy issuerSeq:seqCopy ppid:ppidCopy withReply:v25];

  v18 = dispatch_time(0, 65000000000);
  if (dispatch_semaphore_wait(v17, v18))
  {
    v19 = [MEMORY[0x277CCA9B8] MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-4 description:@"Timed out waiting for XPC reply!"];
    v20 = v33[5];
    v33[5] = v19;
  }

  if (v33[5])
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v21 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v21 = MEMORY[0x277D86220];
      v22 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MFAACertificateManager _validateCertificateWithServer:issuerSeq:ppid:error:];
    }
  }

  v23 = *(v39 + 6);

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  return v23;
}

void __62__MFAACertificateManager__getCachedCertStatus_issuerSeq_ppid___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_79_cold_2();
  }

  v7 = MEMORY[0x277CCA9B8];
  v8 = [v3 description];
  v9 = [v7 MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-4 description:v8];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __62__MFAACertificateManager__getCachedCertStatus_issuerSeq_ppid___block_invoke_133(uint64_t a1, int a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)_anchorCertificatesDataForTypes:(int)types
{
  v46 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  init_logging();
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v42 = 67109120;
    LODWORD(v43) = types;
    _os_log_impl(&dword_25627E000, v7, OS_LOG_TYPE_INFO, "Generating anchor cert(s) for types: 0x%02X", &v42, 8u);
  }

  if (types)
  {
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:&kiPodAccessoryCA1 length:1091];
    [array addObject:v10];

    v11 = [MEMORY[0x277CBEA90] dataWithBytes:&kiPodAccessoryCA2 length:1026];
    [array addObject:v11];
  }

  if ((types & 2) != 0)
  {
    v12 = [MEMORY[0x277CBEA90] dataWithBytes:kAuth3ECSSubCAProd length:667];
    [array addObject:v12];

    v13 = [MEMORY[0x277CBEA90] dataWithBytes:kAuth3ECSSubCADev length:667];
    [array addObject:v13];

    v14 = [MEMORY[0x277CBEA90] dataWithBytes:kiPodAccessoryTestAuth3CA length:667];
    [array addObject:v14];

    isInternalBuild = systemInfo_isInternalBuild(v15, v16);
    if (isInternalBuild)
    {
      v17 = [MEMORY[0x277CBEA90] dataWithBytes:kiPodAccessoryTestCAProto length:637];
      [array addObject:v17];

      v18 = [MEMORY[0x277CBEA90] dataWithBytes:kAuth3ECSSubCASimu length:667];
      [array addObject:v18];

      v19 = [MEMORY[0x277CBEA90] dataWithBytes:kAuth3ECSSubCADev0 length:667];
      [array addObject:v19];
    }
  }

  if ((types & 4) != 0)
  {
    v20 = [MEMORY[0x277CBEA90] dataWithBytes:&kCertDER_SWAuth_ProdRoot length:573];
    [array addObject:v20];

    isInternalBuild = systemInfo_isInternalBuild(v21, v22);
    if (isInternalBuild)
    {
      v23 = [MEMORY[0x277CBEA90] dataWithBytes:&kCertDER_SWAuth_TestRoot length:584];
      [array addObject:v23];
    }
  }

  if ((types & 8) != 0)
  {
    if (systemInfo_isInternalBuild(isInternalBuild, v9))
    {
      v24 = [MEMORY[0x277CBEA90] dataWithBytes:&kCertDER_VeridianAuth_SoftCA length:512];
      [array addObject:v24];
    }

    v25 = [MEMORY[0x277CBEA90] dataWithBytes:&kCertDER_ComponentAuth_ComponentRoot length:517];
    [array addObject:v25];
  }

  if ((types & 0x10) != 0)
  {
    v26 = [MEMORY[0x277CBEA90] dataWithBytes:&kCertDER_BAAAuth_UserRoot length:542];
    [array addObject:v26];
  }

  if ((types & 0x20) != 0)
  {
    v27 = [MEMORY[0x277CBEA90] dataWithBytes:&kCertDER_DEVN_Root length:467];
    [array addObject:v27];
  }

  if ((types & 0x40) != 0)
  {
    v28 = [MEMORY[0x277CBEA90] dataWithBytes:&kCertDER_Prov_Root length:1500];
    [array addObject:v28];
  }

  if ((types & 0x80) != 0)
  {
    v29 = [MEMORY[0x277CBEA90] dataWithBytes:&kCertDER_WPCCA1 length:304];
    [array addObject:v29];

    if (systemInfo_isInternalBuild(v30, v31))
    {
      v32 = [MEMORY[0x277CBEA90] dataWithBytes:&kCertDER_TSTWPC1 length:305];
      [array addObject:v32];

      v33 = [MEMORY[0x277CBEA90] dataWithBytes:&kCertDER_WPCDevCACert length:328];
      [array addObject:v33];

      v34 = [MEMORY[0x277CBEA90] dataWithBytes:&kCertDER_WPCCAX length:304];
      [array addObject:v34];

      v35 = [MEMORY[0x277CBEA90] dataWithBytes:&kCertDER_WPCDUMCA1 length:306];
      [array addObject:v35];
    }
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v36 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v36 = MEMORY[0x277D86220];
    v37 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v38 = [array count];
    v42 = 134218240;
    v43 = v38;
    v44 = 1024;
    typesCopy = types;
    _os_log_impl(&dword_25627E000, v36, OS_LOG_TYPE_DEFAULT, "Returning %lu anchor cert(s) for types: 0x%02X", &v42, 0x12u);
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v39 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v39 = MEMORY[0x277D86220];
    v40 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    v42 = 138412290;
    v43 = array;
    _os_log_impl(&dword_25627E000, v39, OS_LOG_TYPE_INFO, "anchorCerts: %@", &v42, 0xCu);
  }

  return array;
}

+ (int)_anchorType2CertType:(int)type
{
  if (type <= 15)
  {
    if (type == 1)
    {
      return 6;
    }

    if (type != 2)
    {
      if (type == 8)
      {
        return 5;
      }

      return -1;
    }

    return 1;
  }

  else if (type > 63)
  {
    if (type != 64)
    {
      if (type == 128)
      {
        return 7;
      }

      return -1;
    }

    return 4;
  }

  else
  {
    if (type != 16)
    {
      if (type == 32)
      {
        return 3;
      }

      return -1;
    }

    return 0;
  }
}

- (id)_getAnchorCertsForPolicy:(unint64_t)policy
{
  if ([MFAACertificateManager isMFi2_3Policy:?])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  v5 = (policy >> 27) & 8 | (policy >> 38) & 0x10 | v4;
  if ((policy & 0x30000000) != 0)
  {
    v6 = v5 | 4;
  }

  else
  {
    v6 = v5;
  }

  v7 = [MFAACertificateManager _anchorCertificatesDataForTypes:v6];
  if ([v7 count])
  {
    v8 = [v7 copy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __39__MFAACertificateManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedInstance_1 = [objc_alloc(*(a1 + 32)) _init];

  return MEMORY[0x2821F96F8]();
}

+ (id)anchorCertificatesForTypes:(int)types
{
  v61 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  init_logging();
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v57 = 67109120;
    LODWORD(v58) = types;
    _os_log_impl(&dword_25627E000, v7, OS_LOG_TYPE_INFO, "Generating anchor cert(s) for types: 0x%02X", &v57, 8u);
  }

  if (types)
  {
    CertificateRefWithBytes = createCertificateRefWithBytes(&kiPodAccessoryCA1, 1091, 1);
    if (CertificateRefWithBytes)
    {
      v11 = CertificateRefWithBytes;
      [array addObject:CertificateRefWithBytes];
    }

    isInternalBuild = createCertificateRefWithBytes(&kiPodAccessoryCA2, 1026, 1);
    if (isInternalBuild)
    {
      v12 = isInternalBuild;
      [array addObject:isInternalBuild];
    }
  }

  if ((types & 2) != 0)
  {
    v13 = createCertificateRefWithBytes(kAuth3ECSSubCAProd, 667, 1);
    if (v13)
    {
      v14 = v13;
      [array addObject:v13];
    }

    v15 = createCertificateRefWithBytes(kAuth3ECSSubCADev, 667, 1);
    if (v15)
    {
      v16 = v15;
      [array addObject:v15];
    }

    v17 = createCertificateRefWithBytes(kiPodAccessoryTestAuth3CA, 667, 1);
    if (v17)
    {
      v19 = v17;
      [array addObject:v17];
    }

    isInternalBuild = systemInfo_isInternalBuild(v17, v18);
    if (isInternalBuild)
    {
      v20 = createCertificateRefWithBytes(kiPodAccessoryTestCAProto, 637, 1);
      if (v20)
      {
        v21 = v20;
        [array addObject:v20];
      }

      v22 = createCertificateRefWithBytes(kAuth3ECSSubCASimu, 667, 1);
      if (v22)
      {
        v23 = v22;
        [array addObject:v22];
      }

      isInternalBuild = createCertificateRefWithBytes(kAuth3ECSSubCADev0, 667, 1);
      if (isInternalBuild)
      {
        v24 = isInternalBuild;
        [array addObject:isInternalBuild];
      }
    }
  }

  if ((types & 4) != 0)
  {
    v25 = createCertificateRefWithBytes(&kCertDER_SWAuth_ProdRoot, 573, 1);
    if (v25)
    {
      v27 = v25;
      [array addObject:v25];
    }

    isInternalBuild = systemInfo_isInternalBuild(v25, v26);
    if (isInternalBuild)
    {
      isInternalBuild = createCertificateRefWithBytes(&kCertDER_SWAuth_TestRoot, 584, 1);
      if (isInternalBuild)
      {
        v28 = isInternalBuild;
        [array addObject:isInternalBuild];
      }
    }
  }

  if ((types & 8) != 0)
  {
    if (systemInfo_isInternalBuild(isInternalBuild, v9))
    {
      v29 = createCertificateRefWithBytes(&kCertDER_VeridianAuth_SoftCA, 512, 1);
      if (v29)
      {
        v30 = v29;
        [array addObject:v29];
      }
    }

    v31 = createCertificateRefWithBytes(&kCertDER_ComponentAuth_ComponentRoot, 517, 1);
    if (v31)
    {
      v32 = v31;
      [array addObject:v31];
    }
  }

  if ((types & 0x10) != 0)
  {
    v33 = createCertificateRefWithBytes(&kCertDER_BAAAuth_UserRoot, 542, 1);
    if (v33)
    {
      v34 = v33;
      [array addObject:v33];
    }
  }

  if ((types & 0x20) != 0)
  {
    v35 = createCertificateRefWithBytes(&kCertDER_DEVN_Root, 467, 1);
    if (v35)
    {
      v36 = v35;
      [array addObject:v35];
    }
  }

  if ((types & 0x40) != 0)
  {
    v37 = createCertificateRefWithBytes(&kCertDER_Prov_Root, 1500, 1);
    if (v37)
    {
      v38 = v37;
      [array addObject:v37];
    }
  }

  if ((types & 0x80) != 0)
  {
    v39 = createCertificateRefWithBytes(&kCertDER_WPCCA1, 304, 1);
    if (v39)
    {
      v41 = v39;
      [array addObject:v39];
    }

    if (systemInfo_isInternalBuild(v39, v40))
    {
      v42 = createCertificateRefWithBytes(&kCertDER_TSTWPC1, 305, 1);
      if (v42)
      {
        v43 = v42;
        [array addObject:v42];
      }

      v44 = createCertificateRefWithBytes(&kCertDER_WPCDevCACert, 328, 1);
      if (v44)
      {
        v45 = v44;
        [array addObject:v44];
      }

      v46 = createCertificateRefWithBytes(&kCertDER_WPCCAX, 304, 1);
      if (v46)
      {
        v47 = v46;
        [array addObject:v46];
      }

      v48 = createCertificateRefWithBytes(&kCertDER_WPCDUMCA1, 306, 1);
      if (v48)
      {
        v49 = v48;
        [array addObject:v48];
      }
    }
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v50 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v50 = MEMORY[0x277D86220];
    v51 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v52 = [array count];
    v57 = 134218240;
    v58 = v52;
    v59 = 1024;
    typesCopy = types;
    _os_log_impl(&dword_25627E000, v50, OS_LOG_TYPE_DEFAULT, "Returning %lu anchor cert(s) for types: 0x%02X", &v57, 0x12u);
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v53 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v53 = MEMORY[0x277D86220];
    v54 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
  {
    v57 = 138412290;
    v58 = array;
    _os_log_impl(&dword_25627E000, v53, OS_LOG_TYPE_INFO, "anchorCerts: %@", &v57, 0xCu);
  }

  v55 = array;
  return array;
}

+ (int)determineCertificateType:(id)type
{
  typeCopy = type;
  v4 = typeCopy;
  if (typeCopy)
  {
    v5 = [typeCopy valueForKey:@"PolicyFlags"];
    unsignedLongLongValue = [v5 unsignedLongLongValue];

    if ((unsignedLongLongValue & 0x200000) != 0)
    {
      v7 = 4;
    }

    else
    {
      v7 = -1;
    }

    if ((unsignedLongLongValue & 0x41C00000000) != 0)
    {
      v8 = 2;
    }

    else
    {
      v8 = v7;
    }

    if ((unsignedLongLongValue & 0x40000000) != 0)
    {
      v9 = 5;
    }

    else
    {
      v9 = v8;
    }

    if ((unsignedLongLongValue & 4) != 0)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if ((unsignedLongLongValue & 0x8000000) != 0)
    {
      v11 = 6;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    +[MFAACertificateManager determineCertificateType:];
    v11 = -1;
  }

  return v11;
}

+ (BOOL)isMFi2_3Policy:(unint64_t)policy
{
  policyCopy = policy;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    +[MFAACertificateManager isMFi2_3Policy:];
  }

  return (policyCopy & 0x8000004) != 0;
}

+ (BOOL)isMFi2_3CertInfo:(id)info
{
  v3 = [info objectForKey:@"PolicyFlags"];
  v4 = v3;
  if (v3)
  {
    v5 = +[MFAACertificateManager isMFi2_3Policy:](MFAACertificateManager, "isMFi2_3Policy:", [v3 unsignedLongLongValue]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isBAAUserPolicy:(unint64_t)policy
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    +[MFAACertificateManager isBAAUserPolicy:];
  }

  return (policy & 0x40000000000) != 0;
}

+ (BOOL)isBAAUserCertInfo:(id)info
{
  v3 = [info objectForKey:@"PolicyFlags"];
  v4 = v3;
  if (v3)
  {
    v5 = +[MFAACertificateManager isBAAUserPolicy:](MFAACertificateManager, "isBAAUserPolicy:", [v3 unsignedLongLongValue]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isComponentPolicy:(unint64_t)policy
{
  policyCopy = policy;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    +[MFAACertificateManager isComponentPolicy:];
  }

  return (policyCopy & 0x40000000) != 0;
}

+ (BOOL)isComponentCertInfo:(id)info
{
  v3 = [info objectForKey:@"PolicyFlags"];
  v4 = v3;
  if (v3)
  {
    v5 = +[MFAACertificateManager isComponentPolicy:](MFAACertificateManager, "isComponentPolicy:", [v3 unsignedLongLongValue]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)_validateBAACertificateChain:(id)chain error:(id *)error
{
  v60 = *MEMORY[0x277D85DE8];
  chainCopy = chain;
  trust = 0;
  AppleBasicAttestationUser = SecPolicyCreateAppleBasicAttestationUser();
  if (AppleBasicAttestationUser)
  {
    v6 = AppleBasicAttestationUser;
    if (SecTrustCreateWithCertificates(chainCopy, AppleBasicAttestationUser, &trust))
    {
      goto LABEL_50;
    }

    v7 = trust;
    if (qword_280CC7850 != -1)
    {
      dispatch_once(&qword_280CC7850, &__block_literal_global_215);
    }

    v8 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v9 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_6_0();
        v59 = v8;
        OUTLINED_FUNCTION_9(&dword_25627E000, MEMORY[0x277D86220], v33, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v34, v35, v36, v37, v53, error, v55, trust);
      }

      v9 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = [_MergedGlobals count];
      *buf = 134217984;
      errorCopy = v11;
      OUTLINED_FUNCTION_23();
      _os_log_impl(v12, v13, OS_LOG_TYPE_INFO, v14, v15, 0xCu);
    }

    v16 = _MergedGlobals;
    v17 = _MergedGlobals;
    SecTrustSetAnchorCertificates(v7, v16);
    HIDWORD(v55) = 0;
    if (MEMORY[0x259C60280](trust, &v55 + 4))
    {
LABEL_50:
      v21 = 0;
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v18 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_17();
          OUTLINED_FUNCTION_9(&dword_25627E000, MEMORY[0x277D86220], v38, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v39, v40, v41, v42, v53, error, v55, trust);
        }

        v18 = MEMORY[0x277D86220];
        v19 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(errorCopy) = HIDWORD(v55);
        OUTLINED_FUNCTION_19(&dword_25627E000, v18, v20, "BAA trustResult: %d", buf);
      }

      if (HIDWORD(v55) == 4 || HIDWORD(v55) == 5 && SecTrustIsExpiredOnly())
      {
        v21 = 1;
      }

      else
      {
        error = 0;
        SecTrustEvaluateWithError(trust, &error);
        if (error)
        {
          if (gLogObjects && gNumLogObjects >= 2)
          {
            v22 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              OUTLINED_FUNCTION_17();
              OUTLINED_FUNCTION_9(&dword_25627E000, MEMORY[0x277D86220], v48, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v49, v50, v51, v52, v53, error, v55, trust);
            }

            v22 = MEMORY[0x277D86220];
            v23 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            errorCopy = error;
            _os_log_error_impl(&dword_25627E000, v22, OS_LOG_TYPE_ERROR, "trustError: %@", buf, 0xCu);
          }

          if (error)
          {
            CFRelease(error);
          }
        }

        v21 = 2;
      }

      v24 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v25 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_6_0();
          v59 = v24;
          OUTLINED_FUNCTION_9(&dword_25627E000, MEMORY[0x277D86220], v43, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v44, v45, v46, v47, v53, error, v55, trust);
        }

        v25 = MEMORY[0x277D86220];
        v26 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(errorCopy) = v21;
        OUTLINED_FUNCTION_23();
        OUTLINED_FUNCTION_19(v27, v28, v29, v30, v31);
      }
    }

    CFRelease(v6);
    if (trust)
    {
      CFRelease(trust);
    }
  }

  else
  {
    v21 = 2;
  }

  return v21;
}

- (int)_validateX509CertificateChain:(id)chain anchorCerts:(id)certs error:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
  chainCopy = chain;
  certsCopy = certs;
  trust = 0;
  BasicX509 = SecPolicyCreateBasicX509();
  if (BasicX509)
  {
    v9 = BasicX509;
    if (SecTrustCreateWithCertificates(chainCopy, BasicX509, &trust) || (SecTrustSetAnchorCertificates(trust, certsCopy), HIDWORD(v49) = 0, MEMORY[0x259C60280](trust, &v49 + 4)))
    {
      v18 = 0;
    }

    else
    {
      v10 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v11 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_6_0();
          v54 = v10;
          OUTLINED_FUNCTION_9(&dword_25627E000, MEMORY[0x277D86220], v33, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v34, v35, v36, v37, v47, error, v49, trust);
        }

        v11 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(errorCopy) = HIDWORD(v49);
        OUTLINED_FUNCTION_23();
        OUTLINED_FUNCTION_19(v13, v14, v15, v16, v17);
      }

      if (HIDWORD(v49) == 4 || HIDWORD(v49) == 5 && SecTrustIsExpiredOnly())
      {
        v18 = 1;
      }

      else
      {
        error = 0;
        SecTrustEvaluateWithError(trust, &error);
        if (error)
        {
          v19 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 2)
          {
            v20 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              OUTLINED_FUNCTION_6_0();
              v54 = v19;
              OUTLINED_FUNCTION_9(&dword_25627E000, MEMORY[0x277D86220], v42, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v43, v44, v45, v46, v47, error, v49, trust);
            }

            v20 = MEMORY[0x277D86220];
            v21 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            errorCopy = error;
            OUTLINED_FUNCTION_23();
            _os_log_error_impl(v38, v39, OS_LOG_TYPE_ERROR, v40, v41, 0xCu);
          }

          if (error)
          {
            CFRelease(error);
          }
        }

        v18 = 2;
      }

      v22 = gLogObjects;
      v23 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v24 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          errorCopy = v22;
          v53 = 1024;
          v54 = v23;
          OUTLINED_FUNCTION_9(&dword_25627E000, MEMORY[0x277D86220], v25, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v26, v27, v28, v29, v47, error, v49, trust);
        }

        v24 = MEMORY[0x277D86220];
        v30 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(errorCopy) = v18;
        OUTLINED_FUNCTION_19(&dword_25627E000, v24, v31, "after verifying standard X509 cert chain, certStatus = %d", buf);
      }
    }

    CFRelease(v9);
    if (trust)
    {
      CFRelease(trust);
    }
  }

  else
  {
    v18 = 2;
  }

  return v18;
}

+ (BOOL)isCertificateValidForFeatures:(unint64_t)features certificate:(id)certificate
{
  v65 = *MEMORY[0x277D85DE8];
  certificateCopy = certificate;
  if (certificateCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (CertificateRefWithData = createCertificateRefWithData(certificateCopy, 1)) != 0)
  {
    v7 = CertificateRefWithData;
    v8 = SecCertificateGetiAuthVersion();
    if (v8 == 4)
    {
      v9 = SecCertificateCopyiAPSWAuthCapabilities();
      v10 = gLogObjects;
      v11 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v12 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *v64 = 134218240;
          *&v64[4] = v10;
          OUTLINED_FUNCTION_5_0();
          *&v64[14] = v11;
          OUTLINED_FUNCTION_1(&dword_25627E000, MEMORY[0x277D86220], v47, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v48, v49, v50, v51, *v64, *&v64[8], v65);
        }

        v12 = MEMORY[0x277D86220];
        v13 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *v64 = 138412290;
        *&v64[4] = v9;
        OUTLINED_FUNCTION_13(&dword_25627E000, v14, v15, "airPlayOIDData : %@", v16, v17, v18, v19, *v64);
      }

      if (v9 && [v9 length] >= 6 && *objc_msgSend(v9, "bytes") == 255)
      {
        [v9 bytes];
        *v64 = 0;
        [v9 getBytes:v64 range:{2, 4}];
        v20 = bswap32(*v64);
        v21 = 19;
        if ((v20 & 1) == 0)
        {
          v21 = 17;
        }

        v22 = v21 | (2 * v20) & 4;
      }

      else
      {
        v22 = 0;
      }

      v23 = SecCertificateCopyiAPSWAuthCapabilities();
      v24 = gLogObjects;
      v25 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v26 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *v64 = 134218240;
          *&v64[4] = v24;
          OUTLINED_FUNCTION_5_0();
          *&v64[14] = v25;
          OUTLINED_FUNCTION_1(&dword_25627E000, MEMORY[0x277D86220], v52, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v53, v54, v55, v56);
        }

        v26 = MEMORY[0x277D86220];
        v27 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *v64 = 138412290;
        *&v64[4] = v23;
        OUTLINED_FUNCTION_13(&dword_25627E000, v28, v29, "homeKitOIDData : %@", v30, v31, v32, v33, *v64, *&v64[8]);
      }

      if (v23 && [v23 length] >= 2 && *objc_msgSend(v23, "bytes") == 255)
      {
        v22 |= 8uLL;
      }

      v34 = SecCertificateCopyiAPSWAuthCapabilities();
      v35 = gLogObjects;
      v36 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v37 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *v64 = 134218240;
          *&v64[4] = v35;
          OUTLINED_FUNCTION_5_0();
          *&v64[14] = v36;
          OUTLINED_FUNCTION_1(&dword_25627E000, MEMORY[0x277D86220], v57, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v58, v59, v60, v61);
        }

        v37 = MEMORY[0x277D86220];
        v38 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        *v64 = 138412290;
        *&v64[4] = v34;
        OUTLINED_FUNCTION_13(&dword_25627E000, v39, v40, "fairPlayOIDData : %@", v41, v42, v43, v44, *v64, *&v64[8]);
      }

      if (v34 && [v34 length] >= 2 && *objc_msgSend(v34, "bytes") == 255)
      {
        v22 |= 0x10uLL;
      }

      v45 = (features & ~v22) == 0;
    }

    else
    {
      v62 = v8;
      v63 = logObjectForModule(1u);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        *v64 = 67109120;
        *&v64[4] = v62;
        _os_log_error_impl(&dword_25627E000, v63, OS_LOG_TYPE_ERROR, "Certificate is not valid for SW Auth! (authVersion: %{coreacc:SeciAuthVersion}d)", v64, 8u);
      }

      v45 = 0;
    }

    CFRelease(v7);
  }

  else
  {
    v45 = 0;
  }

  return v45;
}

- (void)validateCertificate:realtime:error:.cold.3()
{
  v1 = logObjectForModule(1u);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)validateCertificateChain:realtime:error:.cold.3()
{
  v1 = logObjectForModule(1u);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)validateCertificateChain:realtime:error:.cold.4()
{
  v1 = logObjectForModule(1u);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)validateCertificateChain:type:realtime:error:.cold.21()
{
  v1 = logObjectForModule(0xFFFFFFFF);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  }
}

- (void)validateCertificateChain:type:realtime:error:.cold.22()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

- (void)validateCertificateChain:type:realtime:error:.cold.23()
{
  v1 = logObjectForModule(0xFFFFFFFF);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)validateCertificateChain:type:realtime:error:.cold.24()
{
  v1 = logObjectForModule(0xFFFFFFFF);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)validateCertificateChain:type:realtime:error:.cold.25()
{
  v1 = logObjectForModule(0xFFFFFFFF);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)validateCertificateChain:type:realtime:error:.cold.26()
{
  v1 = logObjectForModule(0xFFFFFFFF);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

uint64_t __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74_cold_1(int a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_20();
  v5 = logObjectForModule(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 67109120;
    v7[1] = a1;
    _os_log_error_impl(&dword_25627E000, v5, OS_LOG_TYPE_ERROR, "Certificate is not valid for SW Auth! (authVersion: %{coreacc:SeciAuthVersion}d)", v7, 8u);
  }

  result = [MEMORY[0x277CCA9B8] MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-3];
  *a2 = result;
  return result;
}

void __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74_cold_3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

uint64_t __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74_cold_5(uint64_t *a1)
{
  result = [MEMORY[0x277CCA9B8] MFAA_errorWithDomain:@"MFAACertificateManagerErrorDomain" code:-4];
  *a1 = result;
  return result;
}

void __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_74_cold_11()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __102__MFAACertificateManager_requestMetadataForCertificate_requestedLocale_requestInfo_completionHandler___block_invoke_79_cold_4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)copyParsedCertificateChainInfo:.cold.3()
{
  v1 = OUTLINED_FUNCTION_20();
  v2 = logObjectForModule(v1);
  if (OUTLINED_FUNCTION_12(v2))
  {
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
  }
}

- (void)copyParsedCertificateChainInfo:.cold.4()
{
  v1 = logObjectForModule(1u);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)copyParsedCertificateChainInfo:.cold.5()
{
  v1 = logObjectForModule(1u);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)copyParsedCertificateChainInfo:assumeType:.cold.4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)copyParsedCertificateChainInfoFromCerts:assumeType:.cold.2()
{
  v1 = logObjectForModule(1u);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)copyParsedCertificateChainInfoFromCerts:assumeType:.cold.3()
{
  v1 = logObjectForModule(1u);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)copyEvaluatedCertificateChainInfo:forSpecificType:.cold.6()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)copyEvaluatedCertificateChainInfo:forSpecificType:.cold.9()
{
  v1 = logObjectForModule(1u);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)copyEvaluatedCertificateChainInfo:forSpecificType:.cold.10()
{
  v1 = logObjectForModule(1u);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)copyEvaluatedCertificateChainInfo:forSpecificType:.cold.11()
{
  v1 = logObjectForModule(1u);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)copyCertificateSerialNumber:authVer:.cold.1()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1(&dword_25627E000, MEMORY[0x277D86220], v0, "%s:%d pkSerNumData == NULL!", v1, v2, v3, v4);
}

- (void)copyCertificateSerialNumber:authVer:.cold.2()
{
  v1 = logObjectForModule(1u);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)copyCertificateSerialNumber:authVer:.cold.3()
{
  v1 = logObjectForModule(1u);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)copyCertificateSerialNumber:authVer:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)copyLeafCertificateSerialNumber:.cold.1()
{
  v1 = logObjectForModule(1u);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)copyLeafCertificateSerialNumber:.cold.2()
{
  v1 = logObjectForModule(1u);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)verifyCertificateSerialNumberBySerialNumber:authVer:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)verifyCertificateSerialNumberBySerialNumber:authVer:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)verifyCertificateSerialNumberBySerialNumber:(uint64_t)a3 authVer:(uint64_t)a4 .cold.5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LOWORD(v8) = 2096;
  *(&v8 + 2) = a1;
  OUTLINED_FUNCTION_1(&dword_25627E000, MEMORY[0x277D86220], a3, "Certificate serial number: <%{coreacc:bytes}.*P>\n", a5, a6, a7, a8, 0xF04100202, v8, WORD4(v8), *MEMORY[0x277D85DE8]);
}

- (void)verifyCertificateSerialNumber:authVer:.cold.1()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_22();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)verifyCertificateSerialNumber:authVer:.cold.2()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_22();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)verifyCertificateSerialNumber:(void *)a1 authVer:.cold.3(void *a1)
{
  LODWORD(v7) = 68157954;
  HIDWORD(v7) = [a1 length];
  LOWORD(v8) = 2096;
  *(&v8 + 2) = [a1 bytes];
  OUTLINED_FUNCTION_1(&dword_25627E000, MEMORY[0x277D86220], v2, "Certificate serial number: <%{coreacc:bytes}.*P>\n", v3, v4, v5, v6, v7, v8, WORD4(v8));
}

- (void)verifyCertificateChainInfoSerialNumber:.cold.2()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)verifyCertificateChainInfoSerialNumber:.cold.3()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)verifyNonceSignature:nonce:signature:.cold.1()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)verifyNonceSignature:nonce:signature:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_14();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&dword_25627E000, v1, OS_LOG_TYPE_ERROR, "SecKeyRawVerify osStatus:%02X, authVerMajor:%02X\n", v2, 0xEu);
}

- (void)verifyNonceSignature:nonce:signature:.cold.3()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)verifyNonceSignature:nonce:signature:.cold.4()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)verifyNonceSignature:nonce:signature:.cold.5()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

- (void)verifyNonceSignature:nonce:signature:.cold.10()
{
  v1 = OUTLINED_FUNCTION_20();
  v2 = logObjectForModule(v1);
  if (OUTLINED_FUNCTION_12(v2))
  {
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
  }
}

- (void)verifyNonceSignature:nonce:signature:.cold.11()
{
  v1 = logObjectForModule(1u);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)verifyNonceSignature:nonce:signature:.cold.13()
{
  v1 = logObjectForModule(1u);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)verifyNonceSignature:nonce:signature:.cold.14()
{
  v1 = logObjectForModule(1u);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)verifyNonceSignature:nonce:signature:.cold.15()
{
  v1 = logObjectForModule(1u);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)verifyNonceSignature:nonce:signature:.cold.16()
{
  v1 = logObjectForModule(1u);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)_validateCertificateChain:realtime:error:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1(&dword_25627E000, v0, v1, "Unknown spoof status selected: '%@'. Falling back to %{coreacc:MFAACertificateManager_CertStatus_t}d...", v2, v3, v4, v5);
}

- (void)_validateCertificateChain:realtime:error:.cold.12()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_validateCertificateChain:realtime:error:.cold.13()
{
  v1 = logObjectForModule(1u);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)_validateCertificateChain:realtime:error:.cold.25()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_validateCertificateChain:realtime:error:.cold.27()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_validateCertificateWithServer:issuerSeq:ppid:error:.cold.3()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)determineCertificateType:.cold.1()
{
  v1 = logObjectForModule(1u);
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_1_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

+ (void)isMFi2_3Policy:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

+ (void)isBAAUserPolicy:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

+ (void)isComponentPolicy:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

@end