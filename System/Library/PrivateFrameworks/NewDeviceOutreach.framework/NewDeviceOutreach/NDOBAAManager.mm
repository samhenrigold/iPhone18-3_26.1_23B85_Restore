@interface NDOBAAManager
- (BOOL)generateBAACertficate:(id)certficate;
- (id)BAAAuthenticationHeadersForBody:(id)body error:(id *)error;
- (id)_compressCertificates:(id)certificates;
- (id)_zlibCompressionForData:(id)data;
- (id)certificatesEncodeToBase64:(id)base64 status:(id *)status;
- (id)serializeCertificateChain:(id)chain;
- (id)signDataAndEncodeToBase64:(id)base64 withPrivateKey:(__SecKey *)key status:(id *)status;
- (void)dealloc;
- (void)writeCertsToDevice:(id)device;
@end

@implementation NDOBAAManager

- (BOOL)generateBAACertficate:(id)certficate
{
  v35 = *MEMORY[0x277D85DE8];
  certficateCopy = certficate;
  v4 = dispatch_semaphore_create(0);
  IsSupported = DeviceIdentityIsSupported();
  v6 = IsSupported;
  v7 = _NDOLogSystem(IsSupported);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[NDOBAAManager generateBAACertficate:]";
    *&buf[12] = 1024;
    *&buf[14] = v6;
    _os_log_impl(&dword_25BD52000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: deviceIdentitySupported on this device:%d", buf, 0x12u);
  }

  if (v6)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v34 = 0;
    error = 0;
    v8 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0x40000000uLL, &error);
    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x277CBEB18]);
      v10 = *MEMORY[0x277D04900];
      v32[0] = *MEMORY[0x277D04930];
      v32[1] = v10;
      v11 = *MEMORY[0x277D048F8];
      v32[2] = *MEMORY[0x277D04910];
      v32[3] = v11;
      v32[4] = *MEMORY[0x277D04908];
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:5];
      v13 = [v9 initWithArray:v12];

      v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v14 setObject:@"com.apple.ndoagent.baaCertificates" forKeyedSubscript:*MEMORY[0x277D048E0]];
      [v14 setObject:@"com.apple.ndoagent" forKeyedSubscript:*MEMORY[0x277D048D8]];
      [v14 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D048B0]];
      [v14 setObject:&unk_286D6E4B0 forKeyedSubscript:*MEMORY[0x277D048E8]];
      v15 = [MEMORY[0x277CCABB0] numberWithBool:0];
      [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x277D04948]];

      [v14 setObject:&unk_286D6E4C8 forKeyedSubscript:*MEMORY[0x277D04950]];
      [v14 setObject:v8 forKeyedSubscript:*MEMORY[0x277D048A0]];
      [v14 setObject:v13 forKeyedSubscript:*MEMORY[0x277D04928]];
      v16 = v14;
      v26 = certficateCopy;
      v25 = v4;
      DeviceIdentityIssueClientCertificateWithCompletion();
      v17 = dispatch_time(0, 60000000000);
      v18 = dispatch_semaphore_wait(v25, v17);
      if (v18)
      {
        v19 = _NDOLogSystem(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *v28 = 136446466;
          v29 = "[NDOBAAManager generateBAACertficate:]";
          v30 = 1024;
          v31 = 60;
          _os_log_impl(&dword_25BD52000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s: Installation timed out after %d seconds", v28, 0x12u);
        }
      }

      CFRelease(v8);
      v20 = *(*&buf[8] + 24);
    }

    else
    {
      v13 = _NDOLogSystem(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v22 = [(__CFError *)error description];
        v23 = v22;
        uTF8String = [v22 UTF8String];
        *v28 = 136315138;
        v29 = uTF8String;
        _os_log_error_impl(&dword_25BD52000, v13, OS_LOG_TYPE_ERROR, "Failed to create access control: %s", v28, 0xCu);
      }

      v20 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

void __39__NDOBAAManager_generateBAACertficate___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v8)
  {
    if (a2 && v7)
    {
      [*(a1 + 40) setPrivateKey:a2];
      [*(a1 + 40) setClientCertArray:v7];
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }

    else if (!a2 || (v8 = [v7 count]) == 0)
    {
      v13 = _NDOLogSystem(v8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __39__NDOBAAManager_generateBAACertficate___block_invoke_cold_2();
      }
    }

    v14 = *(a1 + 56);
    if (v14)
    {
      v15 = [*(a1 + 40) clientCertArray];
      (*(v14 + 16))(v14, v15, [*(a1 + 40) privateKey], 0);
    }

    goto LABEL_19;
  }

  HasDomainAndErrorCode = mobileactivationErrorHasDomainAndErrorCode();
  if ((HasDomainAndErrorCode & 1) == 0)
  {
    HasDomainAndErrorCode = mobileactivationErrorHasDomainAndErrorCode();
    if (!HasDomainAndErrorCode)
    {
      v16 = *(a1 + 56);
      if (v16)
      {
        (*(v16 + 16))(v16, 0, 0, v9);
      }

LABEL_19:
      dispatch_semaphore_signal(*(a1 + 48));
      goto LABEL_20;
    }
  }

  v11 = _NDOLogSystem(HasDomainAndErrorCode);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    __39__NDOBAAManager_generateBAACertficate___block_invoke_cold_1();
  }

  [*(a1 + 32) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D04948]];
  v17 = *(a1 + 56);
  v12 = v17;
  v18 = *(a1 + 48);
  DeviceIdentityIssueClientCertificateWithCompletion();

LABEL_20:
}

void __39__NDOBAAManager_generateBAACertficate___block_invoke_10(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v7 = a4;
  if (a2 && v10)
  {
    [*(a1 + 32) setPrivateKey:a2];
    [*(a1 + 32) setClientCertArray:v10];
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = [*(a1 + 32) clientCertArray];
    (*(v8 + 16))(v8, v9, [*(a1 + 32) privateKey], v7);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)BAAAuthenticationHeadersForBody:(id)body error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  bodyCopy = body;
  v7 = [(NDOBAAManager *)self signDataAndEncodeToBase64:bodyCopy withPrivateKey:[(NDOBAAManager *)self privateKey] status:error];

  if (v7)
  {
    clientCertArray = [(NDOBAAManager *)self clientCertArray];
    v10 = [(NDOBAAManager *)self certificatesEncodeToBase64:clientCertArray status:error];

    v12 = _NDOLogSystem(v11);
    v13 = v12;
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v19 = "[NDOBAAManager BAAAuthenticationHeadersForBody:error:]";
        v20 = 2112;
        v21 = v7;
        v22 = 2112;
        v23 = v10;
        _os_log_impl(&dword_25BD52000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: signatureDataString: %@\n certificateString: %@", buf, 0x20u);
      }

      v16[0] = @"X-Apple-Baa-S";
      v16[1] = @"X-Apple-Baa";
      v17[0] = v7;
      v17[1] = v10;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [NDOBAAManager BAAAuthenticationHeadersForBody:error:];
      }

      v14 = 0;
      v10 = v13;
    }
  }

  else
  {
    v10 = _NDOLogSystem(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [NDOBAAManager BAAAuthenticationHeadersForBody:error:];
    }

    v14 = 0;
  }

  return v14;
}

- (id)signDataAndEncodeToBase64:(id)base64 withPrivateKey:(__SecKey *)key status:(id *)status
{
  error = 0;
  v5 = SecKeyCreateSignature(key, *MEMORY[0x277CDC300], base64, &error);
  v6 = v5;
  if (v5)
  {
    v7 = [(__CFData *)v5 base64EncodedStringWithOptions:0];
  }

  else
  {
    if (error)
    {
      v8 = _NDOLogSystem(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [NDOBAAManager signDataAndEncodeToBase64:withPrivateKey:status:];
      }

      CFRelease(error);
    }

    v7 = 0;
  }

  return v7;
}

- (id)certificatesEncodeToBase64:(id)base64 status:(id *)status
{
  status = [(NDOBAAManager *)self serializeCertificateChain:base64, status];
  v6 = [(NDOBAAManager *)self _compressCertificates:status];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 base64EncodedStringWithOptions:0];
  }

  else
  {
    v9 = _NDOLogSystem(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NDOBAAManager certificatesEncodeToBase64:status:];
    }

    v8 = 0;
  }

  return v8;
}

- (id)serializeCertificateChain:(id)chain
{
  v21 = *MEMORY[0x277D85DE8];
  chainCopy = chain;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(chainCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = chainCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = SecCertificateCopyData(*(*(&v14 + 1) + 8 * v9));
        if ([(__CFData *)v10 length])
        {
          v11 = [(__CFData *)v10 base64EncodedStringWithOptions:0];
          [v4 addObject:v11];
        }

        else
        {
          v11 = _NDOLogSystem(0);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            [(NDOBAAManager *)buf serializeCertificateChain:v11];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

- (void)writeCertsToDevice:(id)device
{
  deviceCopy = device;
  v4 = deviceCopy;
  if (deviceCopy && (deviceCopy = [deviceCopy count], deviceCopy > 1))
  {
    v6 = [v4 objectAtIndex:0];
    v7 = [v4 objectAtIndex:1];
    v5 = SecCertificateCopyData(v6);
    v8 = SecCertificateCopyData(v7);
    [v5 writeToFile:@"/tmp/leafCertificate" atomically:1];
    [(__CFData *)v8 writeToFile:@"/tmp/intermediateCertificate" atomically:1];
  }

  else
  {
    v5 = _NDOLogSystem(deviceCopy);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [NDOBAAManager writeCertsToDevice:v5];
    }
  }
}

- (id)_compressCertificates:(id)certificates
{
  v13[1] = *MEMORY[0x277D85DE8];
  certificatesCopy = certificates;
  v12 = @"certs";
  v13[0] = certificatesCopy;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v11 = 0;
  v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v5 options:0 error:&v11];
  v7 = v11;
  if ([v6 length])
  {
    v8 = [(NDOBAAManager *)self _zlibCompressionForData:v6];
  }

  else
  {
    if (v7)
    {
      v9 = _NDOLogSystem(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(NDOBAAManager *)v7 _compressCertificates:v9];
      }
    }

    v8 = 0;
  }

  return v8;
}

- (id)_zlibCompressionForData:(id)data
{
  v3 = MEMORY[0x277CBEB28];
  dataCopy = data;
  v5 = [v3 dataWithLength:{objc_msgSend(dataCopy, "length")}];
  bytes = [v5 bytes];
  v7 = [dataCopy length];
  bytes2 = [dataCopy bytes];
  v9 = [dataCopy length];

  v10 = compression_encode_buffer(bytes, v7, bytes2, v9, 0, COMPRESSION_ZLIB);
  if (v10)
  {
    v10 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(v5 length:"bytes") freeWhenDone:{v10, 0}];
  }

  return v10;
}

- (void)dealloc
{
  if ([(NDOBAAManager *)self privateKey])
  {
    CFRelease([(NDOBAAManager *)self privateKey]);
  }

  v3.receiver = self;
  v3.super_class = NDOBAAManager;
  [(NDOBAAManager *)&v3 dealloc];
}

- (void)BAAAuthenticationHeadersForBody:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)serializeCertificateChain:(os_log_t)log .cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136446210;
  *a2 = "[NDOBAAManager serializeCertificateChain:]";
  _os_log_error_impl(&dword_25BD52000, log, OS_LOG_TYPE_ERROR, "%{public}s: Found NULL attestation data!!", buf, 0xCu);
}

- (void)_compressCertificates:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_25BD52000, a2, OS_LOG_TYPE_ERROR, "Unable to create attestation data with error: %@", &v4, 0xCu);
}

@end