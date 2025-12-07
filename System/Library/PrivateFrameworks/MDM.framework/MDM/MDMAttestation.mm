@interface MDMAttestation
+ (id)sharedInstance;
- (BOOL)_retrieveCerts:(id *)certs nonce:(id *)nonce issued:(id *)issued;
- (BOOL)_storeCerts:(id)certs nonce:(id)nonce issued:(id)issued outError:(id *)error;
- (__SecKey)attestationKey:(BOOL)key outError:(id *)error;
- (id)_expirationForIssued:(id)issued;
- (id)_requestAttestationCertChainAnonymous:(BOOL)anonymous nonce:(id)nonce outError:(id *)error;
- (id)attestationCertificateChainAnonymous:(BOOL)anonymous nonce:(id)nonce outError:(id *)error;
- (id)initPrivate;
- (void)reset;
@end

@implementation MDMAttestation

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__MDMAttestation_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance__sharedInstance_0;

  return v2;
}

uint64_t __32__MDMAttestation_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance__sharedInstance_0 = [objc_alloc(*(a1 + 32)) initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v7.receiver = self;
  v7.super_class = MDMAttestation;
  v2 = [(MDMAttestation *)&v7 init];
  v3 = v2;
  if (v2)
  {
    certs = v2->_certs;
    v2->_key = 0;
    v2->_certs = 0;

    nonce = v3->_nonce;
    v3->_nonce = 0;
  }

  return v3;
}

- (__SecKey)attestationKey:(BOOL)key outError:(id *)error
{
  keyCopy = key;
  v21[3] = *MEMORY[0x277D85DE8];
  if (MEMORY[0x259C5ED90](self, a2))
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    key = selfCopy->_key;
    if (key)
    {
LABEL_20:
      objc_sync_exit(selfCopy);

      return key;
    }

    key = [MEMORY[0x277D03520] retrieveAttestationKeyWithGroup:@"com.apple.mdm.attestation" label:@"MDMAttestationKey"];
    if (key)
    {
LABEL_4:
      selfCopy->_key = key;
      goto LABEL_20;
    }

    [(MDMAttestation *)selfCopy reset];
    v11 = *MEMORY[0x277CDC170];
    v12 = *MEMORY[0x277CDC028];
    v20[0] = *MEMORY[0x277CDC158];
    v20[1] = v12;
    v13 = MEMORY[0x277CDC068];
    if (!keyCopy)
    {
      v13 = MEMORY[0x277CDC070];
    }

    v14 = *v13;
    v21[0] = v11;
    v21[1] = v14;
    v20[2] = *MEMORY[0x277CDC5D0];
    v21[2] = MEMORY[0x277CBEC38];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
    error = 0;
    key = SecKeyCreateRandomKey(v15, &error);
    if (key)
    {
      if ([MEMORY[0x277D03520] storeAttestationKey:key withGroup:@"com.apple.mdm.attestation" label:@"MDMAttestationKey"])
      {

        goto LABEL_4;
      }

      if (error)
      {
        v16 = MEMORY[0x277CCA9B8];
        v17 = DMCErrorArray();
        *error = [v16 DMCErrorWithDomain:*MEMORY[0x277D03480] code:12109 descriptionArray:v17 errorType:{*MEMORY[0x277D032F8], 0}];
      }

      CFRelease(key);
    }

    else
    {
      if (error)
      {
        *error = error;
      }
    }

    key = 0;
    goto LABEL_20;
  }

  if (error)
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = DMCErrorArray();
    *error = [v9 DMCErrorWithDomain:*MEMORY[0x277D03480] code:12106 descriptionArray:v10 errorType:{*MEMORY[0x277D032F8], 0}];
  }

  return 0;
}

- (id)attestationCertificateChainAnonymous:(BOOL)anonymous nonce:(id)nonce outError:(id *)error
{
  anonymousCopy = anonymous;
  nonceCopy = nonce;
  selfCopy = self;
  v11 = objc_sync_enter(selfCopy);
  if (MEMORY[0x259C5ED90](v11))
  {
    v12 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_286850338, &unk_286850350, &unk_286850368, 0}];
    chipID = [MEMORY[0x277D03530] chipID];
    if (chipID && ![v12 containsObject:chipID])
    {
      if ([(MDMAttestation *)selfCopy attestationKey:anonymousCopy outError:error])
      {
        location = &selfCopy->_certs;
        if (!selfCopy->_certs)
        {
          v40 = 0;
          v41 = 0;
          v39 = 0;
          v35 = [(MDMAttestation *)selfCopy _retrieveCerts:&v41 nonce:&v40 issued:&v39];
          v18 = v41;
          v34 = v41;
          v19 = v40;
          v33 = v40;
          v20 = v39;
          v21 = v39;
          if (v35)
          {
            v36 = v21;
            objc_storeStrong(location, v18);
            objc_storeStrong(&selfCopy->_nonce, v19);
            objc_storeStrong(&selfCopy->_issued, v20);
            v21 = v36;
          }

          if (!*location)
          {
            goto LABEL_33;
          }
        }

        if (selfCopy->_issued && ([MEMORY[0x277CBEAA8] date], v22 = objc_claimAutoreleasedReturnValue(), -[MDMAttestation _expirationForIssued:](selfCopy, "_expirationForIssued:", selfCopy->_issued), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v22, "compare:", v23), v23, v22, v24 == -1))
        {
          v29 = *DMCLogObjects();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2561F5000, v29, OS_LOG_TYPE_DEFAULT, "Returning existing attestation certificate because of rate limiting", buf, 2u);
          }
        }

        else
        {
LABEL_33:
          if (![(NSData *)selfCopy->_nonce isEqualToData:nonceCopy])
          {
            v25 = [(MDMAttestation *)selfCopy _requestAttestationCertChainAnonymous:anonymousCopy nonce:nonceCopy outError:error];
            v26 = *location;
            *location = v25;

            if (*location)
            {
              date = [MEMORY[0x277CBEAA8] date];
              if ([(MDMAttestation *)selfCopy _storeCerts:selfCopy->_certs nonce:nonceCopy issued:date outError:error])
              {
                objc_storeStrong(&selfCopy->_nonce, nonce);
                objc_storeStrong(&selfCopy->_issued, date);
                error = selfCopy->_certs;
              }

              else
              {
                if (error)
                {
                  v30 = MEMORY[0x277CCA9B8];
                  v31 = DMCErrorArray();
                  *error = [v30 DMCErrorWithDomain:*MEMORY[0x277D03480] code:12112 descriptionArray:v31 errorType:{*MEMORY[0x277D032F8], 0}];
                }

                v32 = *location;
                *location = 0;

                error = 0;
              }

              goto LABEL_20;
            }

            goto LABEL_19;
          }
        }

        error = *location;
        goto LABEL_20;
      }
    }

    else
    {
      if (!error)
      {
LABEL_20:

        goto LABEL_21;
      }

      v14 = MEMORY[0x277CCA9B8];
      v15 = DMCErrorArray();
      *error = [v14 DMCErrorWithDomain:*MEMORY[0x277D03480] code:12106 descriptionArray:v15 errorType:{*MEMORY[0x277D032F8], 0}];
    }

LABEL_19:
    error = 0;
    goto LABEL_20;
  }

  if (error)
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = DMCErrorArray();
    *error = [v16 DMCErrorWithDomain:*MEMORY[0x277D03480] code:12106 descriptionArray:v17 errorType:{*MEMORY[0x277D032F8], 0}];

    error = 0;
  }

LABEL_21:
  objc_sync_exit(selfCopy);

  return error;
}

- (id)_requestAttestationCertChainAnonymous:(BOOL)anonymous nonce:(id)nonce outError:(id *)error
{
  anonymousCopy = anonymous;
  v37 = *MEMORY[0x277D85DE8];
  nonceCopy = nonce;
  v21 = [MEMORY[0x277D24698] oidsAnonymous:anonymousCopy nonce:nonceCopy != 0 coresidency:0];
  v20 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
  [v20 setObject:&unk_286850380 forKeyedSubscript:*MEMORY[0x277D04950]];
  [v20 setObject:v21 forKeyedSubscript:*MEMORY[0x277D04928]];
  [v20 setObject:nonceCopy forKeyedSubscript:*MEMORY[0x277D048F0]];
  [v20 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D04938]];
  [v20 setObject:&unk_286850398 forKeyedSubscript:*MEMORY[0x277D048E8]];
  v22 = [v20 copy];
  v6 = dispatch_semaphore_create(0);
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__0;
  v33 = __Block_byref_object_dispose__0;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v28 = 0;
  for (i = 2; i != -1; --i)
  {
    v8 = v6;
    AppAttest_DeviceAttestation_AttestKey();
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    if (v30[5])
    {
      v11 = *DMCLogObjects();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v12 = "Successfully retrieved attestation certificate";
        v13 = v11;
        v14 = OS_LOG_TYPE_INFO;
LABEL_13:
        _os_log_impl(&dword_2561F5000, v13, v14, v12, buf, 2u);
      }

LABEL_14:

      goto LABEL_15;
    }

    if ([v24[5] code] != -7)
    {
      v15 = *DMCLogObjects();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v12 = "Failed to fetch attestation certificate, not retrying";
        v13 = v15;
        v14 = OS_LOG_TYPE_ERROR;
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    v9 = *DMCLogObjects();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v36 = i;
      _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_ERROR, "Failed to fetch attestation certificate, %u retries left", buf, 8u);
    }
  }

  v10 = *DMCLogObjects();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v10, OS_LOG_TYPE_ERROR, "Out of retries retrieving attestation certificate", buf, 2u);
  }

LABEL_15:
  if (error)
  {
    *error = v24[5];
  }

  v16 = v30[5];
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);

  return v16;
}

void __71__MDMAttestation__requestAttestationCertChainAnonymous_nonce_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  if (v5)
  {
    v8 = *(*(a1 + 40) + 8);
    v9 = v5;
LABEL_3:
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
    goto LABEL_8;
  }

  if (v16 && [v16 count] == 2)
  {
    v8 = *(*(a1 + 48) + 8);
    v9 = v16;
    goto LABEL_3;
  }

  v11 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277D03480];
  v10 = DMCErrorArray();
  v13 = [v11 DMCErrorWithDomain:v12 code:12107 descriptionArray:v10 errorType:{*MEMORY[0x277D032F8], 0}];
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

LABEL_8:
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)reset
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  key = obj->_key;
  if (key)
  {
    CFRelease(key);
    v2 = obj;
    obj->_key = 0;
  }

  certs = v2->_certs;
  v2->_certs = 0;

  nonce = obj->_nonce;
  obj->_nonce = 0;

  [MEMORY[0x277D03520] deleteAttestationKeyWithGroup:@"com.apple.mdm.attestation" label:@"MDMAttestationKey"];
  [MEMORY[0x277D03520] deleteAttestationCertWithGroup:@"com.apple.mdm.attestation" label:@"MDMAttestationCert"];
  [MEMORY[0x277D03520] deleteAttestationCertWithGroup:@"com.apple.mdm.attestation" label:@"MDMAttestationIntermediate"];
  [MEMORY[0x277D03520] deleteAttestationMetadataWithGroup:@"com.apple.mdm.attestation" service:@"MDMAttestationMetadata"];
  objc_sync_exit(obj);
}

- (BOOL)_storeCerts:(id)certs nonce:(id)nonce issued:(id)issued outError:(id *)error
{
  certsCopy = certs;
  nonceCopy = nonce;
  issuedCopy = issued;
  [MEMORY[0x277D03520] deleteAttestationCertWithGroup:@"com.apple.mdm.attestation" label:@"MDMAttestationCert"];
  [MEMORY[0x277D03520] deleteAttestationCertWithGroup:@"com.apple.mdm.attestation" label:@"MDMAttestationIntermediate"];
  [MEMORY[0x277D03520] deleteAttestationMetadataWithGroup:@"com.apple.mdm.attestation" service:@"MDMAttestationMetadata"];
  v12 = MEMORY[0x277D03520];
  v13 = [certsCopy objectAtIndexedSubscript:0];
  v14 = [v12 storeAttestationCert:v13 withGroup:@"com.apple.mdm.attestation" label:@"MDMAttestationCert"];

  if (v14)
  {
    v15 = MEMORY[0x277D03520];
    v16 = [certsCopy objectAtIndexedSubscript:1];
    v17 = [v15 storeAttestationCert:v16 withGroup:@"com.apple.mdm.attestation" label:@"MDMAttestationIntermediate"];

    if (error && !v17)
    {
      v18 = 12111;
LABEL_7:
      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277D03480];
      v21 = DMCErrorArray();
      *error = [v19 DMCErrorWithDomain:v20 code:v18 descriptionArray:v21 errorType:{*MEMORY[0x277D032F8], 0}];

LABEL_8:
      error = 0;
      goto LABEL_9;
    }

    if (!v17)
    {
      goto LABEL_8;
    }

    v24 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    [v24 setObject:issuedCopy forKeyedSubscript:@"issued"];
    [v24 setObject:nonceCopy forKeyedSubscript:@"nonce"];
    error = [MEMORY[0x277CCAC58] dataWithPropertyList:v24 format:200 options:0 error:error];

    if (!error || ([MEMORY[0x277D03520] storeAttestationMetadata:error withGroup:@"com.apple.mdm.attestation" service:@"MDMAttestationMetadata"] & 1) != 0)
    {
      v22 = 1;
      goto LABEL_10;
    }
  }

  else if (error)
  {
    v18 = 12110;
    goto LABEL_7;
  }

LABEL_9:
  [MEMORY[0x277D03520] deleteAttestationCertWithGroup:@"com.apple.mdm.attestation" label:@"MDMAttestationCert"];
  [MEMORY[0x277D03520] deleteAttestationCertWithGroup:@"com.apple.mdm.attestation" label:@"MDMAttestationIntermediate"];
  [MEMORY[0x277D03520] deleteAttestationMetadataWithGroup:@"com.apple.mdm.attestation" service:@"MDMAttestationMetadata"];
  v22 = 0;
LABEL_10:

  return v22;
}

- (BOOL)_retrieveCerts:(id *)certs nonce:(id *)nonce issued:(id *)issued
{
  v16[2] = *MEMORY[0x277D85DE8];
  v8 = [MEMORY[0x277D03520] retrieveAttestationCertWithGroup:@"com.apple.mdm.attestation" label:@"MDMAttestationCert"];
  if (v8)
  {
    v9 = v8;
    v10 = [MEMORY[0x277D03520] retrieveAttestationCertWithGroup:@"com.apple.mdm.attestation" label:@"MDMAttestationIntermediate"];
    if (v10)
    {
      v11 = v10;
      v12 = [MEMORY[0x277D03520] retrieveAttestationMetadataWithGroup:@"com.apple.mdm.attestation" service:@"MDMAttestationMetadata"];
      if (v12)
      {
        v13 = [MEMORY[0x277CCAC58] propertyListWithData:v12 options:0 format:0 error:0];
        if (v13)
        {
          v14 = v13;
          v16[0] = v9;
          v16[1] = v11;
          *certs = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];

          *nonce = [v14 objectForKeyedSubscript:@"nonce"];
          *issued = [v14 objectForKeyedSubscript:@"issued"];

          LOBYTE(v8) = 1;
          return v8;
        }
      }

      CFRelease(v9);
      CFRelease(v11);
    }

    else
    {
      CFRelease(v9);
    }

    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)_expirationForIssued:(id)issued
{
  v3 = MEMORY[0x277CBEAB8];
  issuedCopy = issued;
  v5 = objc_alloc_init(v3);
  attestationRateLimitOverrideMinutes = [MEMORY[0x277D03500] attestationRateLimitOverrideMinutes];
  v7 = attestationRateLimitOverrideMinutes;
  if (attestationRateLimitOverrideMinutes)
  {
    [v5 setMinute:{objc_msgSend(attestationRateLimitOverrideMinutes, "integerValue")}];
  }

  else
  {
    [v5 setDay:7];
  }

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [currentCalendar dateByAddingComponents:v5 toDate:issuedCopy options:0];

  return v9;
}

@end