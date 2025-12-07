@interface DCBAASigner
+ (DCBAASigner)sharedSigner;
- (id)_attestationWithCertificates:(id)certificates error:(id *)error;
- (id)_signatureForData:(id)data withReferenceKey:(__SecKey *)key error:(id *)error;
- (void)signatureForData:(id)data completion:(id)completion;
- (void)signaturesForData:(id)data completion:(id)completion;
@end

@implementation DCBAASigner

+ (DCBAASigner)sharedSigner
{
  if (sharedSigner_onceToken != -1)
  {
    +[DCBAASigner sharedSigner];
  }

  v3 = sharedSigner_sharedSigner;

  return v3;
}

uint64_t __27__DCBAASigner_sharedSigner__block_invoke()
{
  sharedSigner_sharedSigner = objc_alloc_init(DCBAASigner);

  return MEMORY[0x2821F96F8]();
}

- (void)signatureForData:(id)data completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  if ([dataCopy length])
  {
    if (DeviceIdentityIsSupported())
    {
      v7 = +[DCCryptoUtilities identityCertificateOptions];
      v12 = dataCopy;
      v13 = completionCopy;
      DeviceIdentityIssueClientCertificateWithCompletion();
    }

    else
    {
      if (DCInternalLogSystem_onceToken_0 != -1)
      {
        [DCBAASigner signatureForData:completion:];
      }

      v10 = DCInternalLogSystem_log_0;
      if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v15 = "DCBAASigner.m";
        v16 = 1024;
        v17 = 57;
        _os_log_impl(&dword_2488FB000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot sign data, platform is not supported by DeviceIdentity.", buf, 0x12u);
      }

      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.devicecheck.error.baa" code:-10000 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, 0, v11);
    }
  }

  else
  {
    if (DCInternalLogSystem_onceToken_0 != -1)
    {
      [DCBAASigner signatureForData:completion:];
    }

    v8 = DCInternalLogSystem_log_0;
    if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_DEBUG))
    {
      v9 = v8;
      *buf = 136315650;
      v15 = "DCBAASigner.m";
      v16 = 1024;
      v17 = 51;
      v18 = 2048;
      v19 = [dataCopy length];
      _os_log_impl(&dword_2488FB000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Cannot sign empty data. { length=%lu }", buf, 0x1Cu);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }
}

void __43__DCBAASigner_signatureForData_completion___block_invoke(void *a1, uint64_t a2, void *a3, void *a4)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a2 && v7)
  {
    v10 = a1[4];
    v11 = a1[5];
    v34 = 0;
    v12 = [v10 _signatureForData:v11 withReferenceKey:a2 error:&v34];
    v13 = v34;
    if (v12)
    {
      v14 = a1[4];
      v33 = 0;
      v15 = [v14 _attestationWithCertificates:v7 error:&v33];
      v16 = v33;
      (*(a1[6] + 16))();
    }

    else
    {
      (*(a1[6] + 16))();
    }
  }

  else
  {
    if (v8)
    {
      if (mobileactivationErrorHasDomainAndErrorCode())
      {
        if (DCInternalLogSystem_onceToken_0 != -1)
        {
          [DCBAASigner signatureForData:completion:];
        }

        v17 = DCInternalLogSystem_log_0;
        if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
        {
          v18 = v17;
          v19 = [v9 localizedDescription];
          *buf = 136315650;
          *&buf[4] = "DCBAASigner.m";
          v36 = 1024;
          v37 = 83;
          v38 = 2112;
          v39 = v19;
          _os_log_impl(&dword_2488FB000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch BAA certificates. { error=%@ }", buf, 0x1Cu);
        }

        v20 = a1[6];
        v21 = MEMORY[0x277CCA9B8];
        v40[0] = *MEMORY[0x277CCA7E8];
        *buf = v9;
        v22 = MEMORY[0x277CBEAC0];
        v23 = v9;
        v24 = [v22 dictionaryWithObjects:buf forKeys:v40 count:1];
        v25 = v21;
        v26 = -10002;
      }

      else
      {
        if (DCInternalLogSystem_onceToken_0 != -1)
        {
          [DCBAASigner signatureForData:completion:];
        }

        v28 = DCInternalLogSystem_log_0;
        if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
        {
          v29 = v28;
          v30 = [v9 localizedDescription];
          *buf = 136315650;
          *&buf[4] = "DCBAASigner.m";
          v36 = 1024;
          v37 = 86;
          v38 = 2112;
          v39 = v30;
          _os_log_impl(&dword_2488FB000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch BAA certificates. { error=%@ }", buf, 0x1Cu);
        }

        v20 = a1[6];
        v31 = MEMORY[0x277CCA9B8];
        v40[0] = *MEMORY[0x277CCA7E8];
        *buf = v9;
        v32 = MEMORY[0x277CBEAC0];
        v23 = v9;
        v24 = [v32 dictionaryWithObjects:buf forKeys:v40 count:1];
        v25 = v31;
        v26 = -10001;
      }

      v13 = [v25 errorWithDomain:@"com.apple.devicecheck.error.baa" code:v26 userInfo:v24];
    }

    else
    {
      if (DCInternalLogSystem_onceToken_0 != -1)
      {
        [DCBAASigner signatureForData:completion:];
      }

      v27 = DCInternalLogSystem_log_0;
      if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "DCBAASigner.m";
        v36 = 1024;
        v37 = 89;
        _os_log_impl(&dword_2488FB000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch BAA certificates.", buf, 0x12u);
      }

      v20 = a1[6];
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.devicecheck.error.baa" code:-10001 userInfo:0];
    }

    (*(v20 + 16))(v20, 0, 0, v13);
  }
}

- (void)signaturesForData:(id)data completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  if ([dataCopy count])
  {
    if (DeviceIdentityIsSupported())
    {
      v7 = +[DCCryptoUtilities identityCertificateOptions];
      v11 = dataCopy;
      v12 = completionCopy;
      DeviceIdentityIssueClientCertificateWithCompletion();
    }

    else
    {
      if (DCInternalLogSystem_onceToken_0 != -1)
      {
        [DCBAASigner signatureForData:completion:];
      }

      v9 = DCInternalLogSystem_log_0;
      if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "DCBAASigner.m";
        v15 = 1024;
        v16 = 109;
        _os_log_impl(&dword_2488FB000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot sign data, platform is not supported by DeviceIdentity.", buf, 0x12u);
      }

      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.devicecheck.error.baa" code:-10000 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, 0, v10);
    }
  }

  else
  {
    if (DCInternalLogSystem_onceToken_0 != -1)
    {
      [DCBAASigner signatureForData:completion:];
    }

    v8 = DCInternalLogSystem_log_0;
    if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v14 = "DCBAASigner.m";
      v15 = 1024;
      v16 = 103;
      _os_log_impl(&dword_2488FB000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Cannot sign empty data.", buf, 0x12u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }
}

void __44__DCBAASigner_signaturesForData_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v61 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a2 && v7)
  {
    *v58 = 0;
    *&v58[8] = v58;
    *&v58[16] = 0x3032000000;
    *&v58[24] = __Block_byref_object_copy_;
    v59 = __Block_byref_object_dispose_;
    v60 = 0;
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __44__DCBAASigner_signaturesForData_completion___block_invoke_6;
    v43[3] = &unk_278F59BF8;
    v11 = *(a1 + 32);
    v43[4] = *(a1 + 40);
    v48 = a2;
    v12 = v10;
    v44 = v12;
    v45 = *(a1 + 32);
    v46 = v9;
    v47 = v58;
    [v11 enumerateKeysAndObjectsUsingBlock:v43];
    v13 = [*(a1 + 32) count];
    if (v13 == [v12 count])
    {
      v14 = *(a1 + 40);
      v42 = 0;
      v15 = [v14 _attestationWithCertificates:v7 error:&v42];
      v16 = v42;
      if (v15)
      {
        if (DCInternalLogSystem_onceToken_0 != -1)
        {
          __44__DCBAASigner_signaturesForData_completion___block_invoke_cold_4();
        }

        v17 = DCInternalLogSystem_log_0;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = [v12 description];
          v19 = [v15 description];
          v20 = [v16 localizedDescription];
          *buf = 136316162;
          *&buf[4] = "DCBAASigner.m";
          v50 = 1024;
          v51 = 145;
          v52 = 2112;
          v53 = v18;
          v54 = 2112;
          v55 = v19;
          v56 = 2112;
          v57 = v20;
          _os_log_impl(&dword_2488FB000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Signed data. { signatureData=%@, attestationData=%@, error=%@ }", buf, 0x30u);
        }

        (*(*(a1 + 48) + 16))();
      }

      else
      {
        (*(*(a1 + 48) + 16))();
      }
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }

    _Block_object_dispose(v58, 8);
  }

  else if (v8)
  {
    if (mobileactivationErrorHasDomainAndErrorCode())
    {
      if (DCInternalLogSystem_onceToken_0 != -1)
      {
        [DCBAASigner signatureForData:completion:];
      }

      v21 = DCInternalLogSystem_log_0;
      if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
      {
        v22 = v21;
        v23 = [v9 localizedDescription];
        *v58 = 136315650;
        *&v58[4] = "DCBAASigner.m";
        *&v58[12] = 1024;
        *&v58[14] = 154;
        *&v58[18] = 2112;
        *&v58[20] = v23;
        _os_log_impl(&dword_2488FB000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch BAA certificates. { error=%@ }", v58, 0x1Cu);
      }

      v24 = *(a1 + 48);
      v25 = MEMORY[0x277CCA9B8];
      *buf = *MEMORY[0x277CCA7E8];
      *v58 = v9;
      v26 = MEMORY[0x277CBEAC0];
      v27 = v9;
      v28 = [v26 dictionaryWithObjects:v58 forKeys:buf count:1];
      v29 = [v25 errorWithDomain:@"com.apple.devicecheck.error.baa" code:-10002 userInfo:v28];

      (*(v24 + 16))(v24, 0, 0, v29);
    }

    else
    {
      if (DCInternalLogSystem_onceToken_0 != -1)
      {
        [DCBAASigner signatureForData:completion:];
      }

      v33 = DCInternalLogSystem_log_0;
      if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
      {
        v34 = v33;
        v35 = [v9 localizedDescription];
        *v58 = 136315650;
        *&v58[4] = "DCBAASigner.m";
        *&v58[12] = 1024;
        *&v58[14] = 157;
        *&v58[18] = 2112;
        *&v58[20] = v35;
        _os_log_impl(&dword_2488FB000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch BAA certificates. { error=%@ }", v58, 0x1Cu);
      }

      v36 = *(a1 + 48);
      v37 = MEMORY[0x277CCA9B8];
      *buf = *MEMORY[0x277CCA7E8];
      *v58 = v9;
      v38 = MEMORY[0x277CBEAC0];
      v39 = v9;
      v40 = [v38 dictionaryWithObjects:v58 forKeys:buf count:1];
      v41 = [v37 errorWithDomain:@"com.apple.devicecheck.error.baa" code:-10001 userInfo:v40];

      (*(v36 + 16))(v36, 0, 0, v41);
    }
  }

  else
  {
    if (DCInternalLogSystem_onceToken_0 != -1)
    {
      [DCBAASigner signatureForData:completion:];
    }

    v30 = DCInternalLogSystem_log_0;
    if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
    {
      *v58 = 136315394;
      *&v58[4] = "DCBAASigner.m";
      *&v58[12] = 1024;
      *&v58[14] = 160;
      _os_log_impl(&dword_2488FB000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch BAA certificates.", v58, 0x12u);
    }

    v31 = *(a1 + 48);
    v32 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.devicecheck.error.baa" code:-10001 userInfo:0];
    (*(v31 + 16))(v31, 0, 0, v32);
  }
}

void __44__DCBAASigner_signaturesForData_completion___block_invoke_6(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (DCInternalLogSystem_onceToken_0 != -1)
  {
    [DCBAASigner signatureForData:completion:];
  }

  v9 = DCInternalLogSystem_log_0;
  if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v24 = "DCBAASigner.m";
    v25 = 1024;
    v26 = 122;
    v27 = 2112;
    v28 = v7;
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&dword_2488FB000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to sign data. { key=%@, object=%@ }", buf, 0x26u);
  }

  v10 = v8;
  if (![v10 length])
  {
    if (DCInternalLogSystem_onceToken_0 != -1)
    {
      __44__DCBAASigner_signaturesForData_completion___block_invoke_cold_4();
    }

    v11 = DCInternalLogSystem_log_0;
    if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v24 = "DCBAASigner.m";
      v25 = 1024;
      v26 = 126;
      v27 = 2112;
      v28 = v7;
      _os_log_impl(&dword_2488FB000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot sign data, empty. { key=%@ }", buf, 0x1Cu);
    }

    *a4 = 1;
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 72);
  v22 = 0;
  v14 = [v12 _signatureForData:v10 withReferenceKey:v13 error:&v22];
  v15 = v22;
  v16 = v22;
  if (v14)
  {
    [*(a1 + 40) setObject:v14 forKeyedSubscript:v7];
  }

  else
  {
    if (DCInternalLogSystem_onceToken_0 != -1)
    {
      __44__DCBAASigner_signaturesForData_completion___block_invoke_cold_4();
    }

    v17 = DCInternalLogSystem_log_0;
    if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 48);
      v18 = *(a1 + 56);
      v20 = v17;
      v21 = [v18 localizedDescription];
      *buf = 136315906;
      v24 = "DCBAASigner.m";
      v25 = 1024;
      v26 = 134;
      v27 = 2112;
      v28 = v19;
      v29 = 2112;
      v30 = v21;
      _os_log_impl(&dword_2488FB000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to generate signature for data. { data=%@, error=%@ }", buf, 0x26u);
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v15);
    *a4 = 1;
  }
}

- (id)_signatureForData:(id)data withReferenceKey:(__SecKey *)key error:(id *)error
{
  v27[1] = *MEMORY[0x277D85DE8];
  error = 0;
  v6 = SecKeyCreateSignature(key, *MEMORY[0x277CDC300], data, &error);
  v7 = v6;
  errorCopy = error;
  if (v6)
  {
    v9 = v6;
  }

  else if (error)
  {
    if (DCInternalLogSystem_onceToken_0 != -1)
    {
      __44__DCBAASigner_signaturesForData_completion___block_invoke_cold_4();
    }

    v10 = DCInternalLogSystem_log_0;
    if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      localizedDescription = [(__CFError *)errorCopy localizedDescription];
      *buf = 136315650;
      *&buf[4] = "DCBAASigner.m";
      v23 = 1024;
      v24 = 184;
      v25 = 2112;
      v26 = localizedDescription;
      _os_log_impl(&dword_2488FB000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to sign key. { error=%@ }", buf, 0x1Cu);
    }

    v13 = MEMORY[0x277CCA9B8];
    v27[0] = *MEMORY[0x277CCA7E8];
    *buf = errorCopy;
    v14 = MEMORY[0x277CBEAC0];
    v15 = errorCopy;
    v16 = [v14 dictionaryWithObjects:buf forKeys:v27 count:1];
    v17 = [v13 errorWithDomain:@"com.apple.devicecheck.error.baa" code:-10001 userInfo:v16];

    v18 = v17;
    *error = v17;
  }

  else
  {
    if (DCInternalLogSystem_onceToken_0 != -1)
    {
      __44__DCBAASigner_signaturesForData_completion___block_invoke_cold_4();
    }

    v19 = DCInternalLogSystem_log_0;
    if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DCBAASigner.m";
      v23 = 1024;
      v24 = 187;
      _os_log_impl(&dword_2488FB000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to sign key.", buf, 0x12u);
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.devicecheck.error.baa" code:-10001 userInfo:0];
    }
  }

  return v7;
}

- (id)_attestationWithCertificates:(id)certificates error:(id *)error
{
  v37[1] = *MEMORY[0x277D85DE8];
  certificatesCopy = certificates;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [certificatesCopy objectAtIndexedSubscript:0];
  v8 = SecCertificateCopyData(v7);
  v9 = [(__CFData *)v8 base64EncodedStringWithOptions:0];
  [v6 addObject:v9];

  v10 = [certificatesCopy objectAtIndexedSubscript:1];
  v11 = SecCertificateCopyData(v10);
  v12 = [(__CFData *)v11 base64EncodedStringWithOptions:0];
  [v6 addObject:v12];

  v35 = @"certs";
  v36 = v6;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v29 = 0;
  v14 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v13 options:0 error:&v29];
  v15 = v29;
  if (v14)
  {
    v16 = [v14 dc_compressedData:517];
  }

  else
  {
    if (DCInternalLogSystem_onceToken_0 != -1)
    {
      __44__DCBAASigner_signaturesForData_completion___block_invoke_cold_4();
    }

    v17 = DCInternalLogSystem_log_0;
    if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DCBAASigner.m";
      v31 = 1024;
      v32 = 219;
      _os_log_impl(&dword_2488FB000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to serialize attestation dictionary.", buf, 0x12u);
    }

    if (v15)
    {
      if (DCInternalLogSystem_onceToken_0 != -1)
      {
        __44__DCBAASigner_signaturesForData_completion___block_invoke_cold_4();
      }

      v18 = DCInternalLogSystem_log_0;
      if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
      {
        v19 = v18;
        localizedDescription = [v15 localizedDescription];
        *buf = 136315650;
        *&buf[4] = "DCBAASigner.m";
        v31 = 1024;
        v32 = 223;
        v33 = 2112;
        v34 = localizedDescription;
        _os_log_impl(&dword_2488FB000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to serialize attestation dictionary. { error=%@ }", buf, 0x1Cu);
      }

      v21 = MEMORY[0x277CCA9B8];
      v37[0] = *MEMORY[0x277CCA7E8];
      *buf = v15;
      v22 = MEMORY[0x277CBEAC0];
      v23 = v15;
      v24 = [v22 dictionaryWithObjects:buf forKeys:v37 count:1];
      v25 = [v21 errorWithDomain:@"com.apple.devicecheck.error.baa" code:-10001 userInfo:v24];

      v26 = v25;
      v16 = 0;
      *error = v25;
    }

    else
    {
      if (DCInternalLogSystem_onceToken_0 != -1)
      {
        __44__DCBAASigner_signaturesForData_completion___block_invoke_cold_4();
      }

      v27 = DCInternalLogSystem_log_0;
      if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "DCBAASigner.m";
        v31 = 1024;
        v32 = 227;
        _os_log_impl(&dword_2488FB000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to serialize attestation dictionary.", buf, 0x12u);
      }

      if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.devicecheck.error.baa" code:-10001 userInfo:0];
        *error = v16 = 0;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  return v16;
}

@end