@interface WLDeviceDiscoverySocketHandler
- (BOOL)_didReceiveHandshakeData:(id)data;
- (WLDeviceDiscoverySocketHandler)initWithSocket:(int)socket srpPassword:(id)password delegate:(id)delegate;
- (WLDeviceDiscoverySocketHandlerDelegate)delegate;
- (id)_commandStringWithData:(id)data;
- (id)_handshakeCommandData;
- (id)_handshakeResponseData;
- (id)_okResponseData;
- (void)_performSRPAuthenticationAndHandshake;
- (void)invalidateWithError:(id)error;
- (void)resume;
- (void)sendData:(id)data completion:(id)completion;
@end

@implementation WLDeviceDiscoverySocketHandler

- (WLDeviceDiscoverySocketHandler)initWithSocket:(int)socket srpPassword:(id)password delegate:(id)delegate
{
  passwordCopy = password;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = WLDeviceDiscoverySocketHandler;
  v11 = [(WLSocketHandler *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_srpPassword, password);
    v13 = dispatch_queue_create("Socket Write Serialization Queue", 0);
    writeQueue = v12->_writeQueue;
    v12->_writeQueue = v13;

    objc_storeWeak(&v12->_delegate, delegateCopy);
    v12->_sockfd = socket;
  }

  return v12;
}

- (void)resume
{
  v3 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__WLDeviceDiscoverySocketHandler_resume__block_invoke;
  block[3] = &unk_279EB54A0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)invalidateWithError:(id)error
{
  readSource = self->_readSource;
  errorCopy = error;
  dispatch_source_cancel(readSource);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained deviceDiscoverySocketHandler:self didFailToHandshakeWithSourceDevice:self->_sourceDevice error:errorCopy];
}

- (void)_performSRPAuthenticationAndHandshake
{
  v140[1] = *MEMORY[0x277D85DE8];
  [(WLSocketHandler *)self beginReadingIntoCacheFromSocket:self->_sockfd];
  v119 = 0;
  v120 = &v119;
  v121 = 0x3032000000;
  v122 = __Block_byref_object_copy_;
  v123 = __Block_byref_object_dispose_;
  v124 = 0;
  v104 = dispatch_semaphore_create(0);
  if (v120[5])
  {
    goto LABEL_3;
  }

  _WLLog();
  v3 = (v120 + 5);
  obj = v120[5];
  [(WLSocketHandler *)self waitForCommand:@"AUTHENTICATE" fromReadCacheReturningError:&obj, self];
  objc_storeStrong(v3, obj);
  selfCopy2 = self;
  v89 = v120[5];
  _WLLog();
  if (v120[5])
  {
    goto LABEL_3;
  }

  v105 = [[WLSRPServer alloc] initWithUsername:@"movetoios" password:self->_srpPassword, self, v89];
  selfCopy2 = self;
  _WLLog();
  if (!v105)
  {
    v18 = MEMORY[0x277CCA9B8];
    v139 = *MEMORY[0x277CCA450];
    v140[0] = @"Failed to create SRP session";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v140 forKeys:&v139 count:{1, self, 0}];
    v20 = [v18 errorWithDomain:*MEMORY[0x277D7B8F8] code:1 userInfo:v19];
    v21 = v120[5];
    v120[5] = v20;

LABEL_3:
    v105 = 0;
  }

  if (v120[5])
  {
    goto LABEL_18;
  }

  v4 = MEMORY[0x277CBEA90];
  salt_s = [(WLSRPServer *)v105 salt_s];
  wl_hexEncodedData = [salt_s wl_hexEncodedData];
  v138[0] = wl_hexEncodedData;
  serverPublicKey_B = [(WLSRPServer *)v105 serverPublicKey_B];
  wl_hexEncodedData2 = [serverPublicKey_B wl_hexEncodedData];
  v138[1] = wl_hexEncodedData2;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v138 count:2];
  v10 = [v4 wl_lengthPrefixedBlobSequenceFromDataArray:v9];

  salt_s2 = [(WLSRPServer *)v105 salt_s];
  wl_hexEncodedString = [salt_s2 wl_hexEncodedString];
  _WLLog();

  serverPublicKey_B2 = [(WLSRPServer *)v105 serverPublicKey_B];
  wl_hexEncodedString2 = [serverPublicKey_B2 wl_hexEncodedString];
  _WLLog();

  v90 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "length", wl_hexEncodedString2)}];
  _WLLog();

  v115[0] = MEMORY[0x277D85DD0];
  v115[1] = 3221225472;
  v115[2] = __71__WLDeviceDiscoverySocketHandler__performSRPAuthenticationAndHandshake__block_invoke;
  v115[3] = &unk_279EB54C8;
  v115[4] = self;
  v117 = &v119;
  v13 = v104;
  v116 = v13;
  [(WLDeviceDiscoverySocketHandler *)self sendData:v10 completion:v115, self, v90];
  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);

  if (v120[5])
  {
    goto LABEL_18;
  }

  _WLLog();
  v14 = (v120 + 5);
  v114 = v120[5];
  v15 = [(WLSocketHandler *)self waitForBlobDataFromReadCacheReturningError:&v114, self];
  objc_storeStrong(v14, v114);
  [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "length")}];
  v91 = selfCopy2 = self;
  _WLLog();

  if (v120[5])
  {
    v16 = 0;
    v17 = 0;
  }

  else
  {
    _WLLog();
    v22 = [v15 wl_arrayOfDataFromLengthPrefixedBlobSequenceWithExpectedCount:{2, self, v91}];
    v92 = [MEMORY[0x277CCABB0] numberWithInt:v22 != 0];
    _WLLog();

    if (v22)
    {
      v23 = [v22 objectAtIndexedSubscript:{0, self, v92}];
      wl_utf8String = [v23 wl_utf8String];
      _WLLog();

      v24 = [v22 objectAtIndexedSubscript:{1, wl_utf8String}];
      wl_utf8String2 = [v24 wl_utf8String];
      _WLLog();

      v25 = MEMORY[0x277CBEA90];
      v26 = [v22 objectAtIndexedSubscript:{0, wl_utf8String2}];
      v16 = [v25 wl_dataFromHexEncodedData:v26];

      v27 = MEMORY[0x277CBEA90];
      v28 = [v22 objectAtIndexedSubscript:1];
      v17 = [v27 wl_dataFromHexEncodedData:v28];
    }

    else
    {
      v29 = MEMORY[0x277CCA9B8];
      v136 = *MEMORY[0x277CCA450];
      v137 = @"Failed to parse client public key and proof of match";
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v137 forKeys:&v136 count:{1, self, v92}];
      v30 = [v29 errorWithDomain:*MEMORY[0x277D7B8F8] code:1 userInfo:v28];
      v31 = v120[5];
      v120[5] = v30;

      v17 = 0;
      v16 = 0;
    }

    if (!v120[5])
    {
      _WLLog();
      v32 = [(WLSRPServer *)v105 didReceiveClientPublicKey_A:v16 proofOfMatch_M:v17, self];
      [MEMORY[0x277CCABB0] numberWithBool:v32];
      v93 = selfCopy2 = self;
      _WLLog();

      if ((v32 & 1) == 0)
      {
        v33 = MEMORY[0x277CCA9B8];
        v134 = *MEMORY[0x277CCA450];
        v135 = @"Failed to validate client public key and proof of match";
        v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v135 forKeys:&v134 count:{1, self, v93}];
        v35 = [v33 errorWithDomain:*MEMORY[0x277D7B8F8] code:1 userInfo:v34];
        v36 = v120[5];
        v120[5] = v35;
      }
    }
  }

  if (v120[5] || (-[WLSRPServer hashOfProofOfMatch_HAMK](v105, "hashOfProofOfMatch_HAMK"), v37 = objc_claimAutoreleasedReturnValue(), [v37 wl_hexEncodedData], v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v38, "wl_lengthPrefixedBlob"), v39 = objc_claimAutoreleasedReturnValue(), v38, v37, objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", objc_msgSend(v39, "length")), v94 = objc_claimAutoreleasedReturnValue(), _WLLog(), v94, v111[0] = MEMORY[0x277D85DD0], v111[1] = 3221225472, v111[2] = __71__WLDeviceDiscoverySocketHandler__performSRPAuthenticationAndHandshake__block_invoke_2, v111[3] = &unk_279EB54C8, v111[4] = self, v113 = &v119, v40 = v13, v112 = v40, -[WLDeviceDiscoverySocketHandler sendData:completion:](self, "sendData:completion:", v39, v111, self, v94), dispatch_semaphore_wait(v40, 0xFFFFFFFFFFFFFFFFLL), v112, v39, v120[5]))
  {
LABEL_18:
    v103 = 0;
  }

  else
  {
    _WLLog();
    v103 = +[WLAuthenticationCredentials generateAuthenticationCredentialsContainingSelfSignedCertificate];
    [MEMORY[0x277CCABB0] numberWithInt:v103 != 0];
    v96 = selfCopy2 = self;
    _WLLog();

    if (!v120[5])
    {
      _WLLog();
      v55 = (v120 + 5);
      v110 = v120[5];
      v56 = [(WLSocketHandler *)self waitForBlobDataFromReadCacheReturningError:&v110, self, v96];
      objc_storeStrong(v55, v110);
      [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v56, "length")}];
      v97 = selfCopy2 = self;
      _WLLog();

      if (v120[5])
      {
        v57 = 0;
        v58 = 0;
        v59 = 0;
      }

      else
      {
        _WLLog();
        v60 = [v56 wl_arrayOfDataFromLengthPrefixedBlobSequenceWithExpectedCount:{3, self, v97}];
        v98 = [MEMORY[0x277CCABB0] numberWithInt:v60 != 0];
        _WLLog();

        if (v60)
        {
          v59 = [v60 objectAtIndex:{0, self, v98}];
          v58 = [v60 objectAtIndex:1];
          v61 = [v60 objectAtIndexedSubscript:2];
          wl_utf8String3 = [v61 wl_utf8String];
          _WLLog();

          v62 = MEMORY[0x277CBEA90];
          v63 = [v60 objectAtIndexedSubscript:{2, wl_utf8String3}];
          v57 = [v62 wl_dataFromHexEncodedData:v63];
        }

        else
        {
          v64 = MEMORY[0x277CCA9B8];
          v132 = *MEMORY[0x277CCA450];
          v133 = @"Failed to parse client cert and handshake and mac";
          v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v133 forKeys:&v132 count:{1, self, v98}];
          v65 = [v64 errorWithDomain:*MEMORY[0x277D7B8F8] code:1 userInfo:v63];
          v66 = v120[5];
          v120[5] = v65;

          v57 = 0;
          v58 = 0;
          v59 = 0;
        }

        if (!v120[5])
        {
          _WLLog();
          v67 = [v59 mutableCopy];
          [v67 appendData:v58];
          v68 = [(WLSRPServer *)v105 isHmacData:v57 validForData:v67];
          [MEMORY[0x277CCABB0] numberWithBool:v68];
          v99 = selfCopy2 = self;
          _WLLog();

          if ((v68 & 1) == 0)
          {
            v69 = MEMORY[0x277CCA9B8];
            v130 = *MEMORY[0x277CCA450];
            v131 = @"Client cert and handshake data does not match MAC";
            v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v131 forKeys:&v130 count:{1, self, v99}];
            v71 = [v69 errorWithDomain:*MEMORY[0x277D7B8F8] code:1 userInfo:v70];
            v72 = v120[5];
            v120[5] = v71;
          }

          if (!v120[5])
          {
            [v103 setRemoteCertificate:SecCertificateCreateWithPEM()];
            v100 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v103, "remoteCertificate") != 0}];
            _WLLog();

            if (![v103 remoteCertificate])
            {
              v73 = MEMORY[0x277CCA9B8];
              v128 = *MEMORY[0x277CCA450];
              v129 = @"Failed to create client cert";
              v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
              v75 = [v73 errorWithDomain:*MEMORY[0x277D7B8F8] code:1 userInfo:v74];
              v76 = v120[5];
              v120[5] = v75;
            }
          }
        }
      }

      if (!v120[5])
      {
        _WLLog();
        v77 = [(WLDeviceDiscoverySocketHandler *)self _didReceiveHandshakeData:v58, self];
        [MEMORY[0x277CCABB0] numberWithBool:v77];
        v101 = selfCopy2 = self;
        _WLLog();

        if (!v77)
        {
          v78 = MEMORY[0x277CCA9B8];
          v126 = *MEMORY[0x277CCA450];
          v127 = @"Failed to parse client handshake data";
          v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v127 forKeys:&v126 count:{1, self, v101}];
          v80 = [v78 errorWithDomain:*MEMORY[0x277D7B8F8] code:1 userInfo:v79];
          v81 = v120[5];
          v120[5] = v80;
        }
      }
    }
  }

  if ([(WLSourceDevice *)self->_sourceDevice isSelectingDataTypeInHandshake])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained deviceDiscoverySocketHandler:self didDiscoverCandidate:self->_sourceDevice];
  }

  if (!v120[5])
  {
    v102 = SecCertificateCopyData([v103 localCertificate]);
    v42 = [WLAuthenticationUtilities pemFormattedCertificateData:?];
    _handshakeResponseData = [(WLDeviceDiscoverySocketHandler *)self _handshakeResponseData];
    v44 = [v42 mutableCopy];
    [v44 appendData:_handshakeResponseData];
    v45 = [(WLSRPServer *)v105 hmacDataForData:v44];
    wl_hexEncodedString3 = [v45 wl_hexEncodedString];
    _WLLog();

    v46 = MEMORY[0x277CBEA90];
    v125[0] = v42;
    v125[1] = _handshakeResponseData;
    wl_hexEncodedData3 = [v45 wl_hexEncodedData];
    v125[2] = wl_hexEncodedData3;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v125 count:3];
    v49 = [v46 wl_lengthPrefixedBlobSequenceFromDataArray:v48];

    v95 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v49, "length")}];
    _WLLog();

    v107[0] = MEMORY[0x277D85DD0];
    v107[1] = 3221225472;
    v107[2] = __71__WLDeviceDiscoverySocketHandler__performSRPAuthenticationAndHandshake__block_invoke_3;
    v107[3] = &unk_279EB54C8;
    v107[4] = self;
    v109 = &v119;
    v50 = v104;
    v108 = v50;
    [(WLDeviceDiscoverySocketHandler *)self sendData:v49 completion:v107, self, v95];
    dispatch_semaphore_wait(v50, 0xFFFFFFFFFFFFFFFFLL);

    if (!v120[5] && ([(WLSourceDevice *)self->_sourceDevice useMigrationKit]& 1) == 0)
    {
      _WLLog();
      v51 = (v120 + 5);
      v106 = v120[5];
      [(WLSocketHandler *)self waitForCommand:@"OK" fromReadCacheReturningError:&v106, self];
      objc_storeStrong(v51, v106);
      _WLLog();
    }
  }

  if (v120[5] || ([(WLSocketHandler *)self endReadingIntoCache], v120[5]))
  {
    _WLLog();
    v52 = objc_loadWeakRetained(&self->_delegate);
    [v52 deviceDiscoverySocketHandler:self didFailToHandshakeWithSourceDevice:self->_sourceDevice error:{v120[5], self}];
  }

  else
  {
    _WLLog();
    v52 = objc_alloc_init(MEMORY[0x277D7B888]);
    v53 = +[WLCredentialStore sharedInstance];
    [v53 setCredentials:v103 forAuthentication:v52];

    v54 = objc_loadWeakRetained(&self->_delegate);
    [v54 deviceDiscoverySocketHandler:self didFinishHandshakeWithSourceDevice:self->_sourceDevice];
  }

  _Block_object_dispose(&v119, 8);
}

void __71__WLDeviceDiscoverySocketHandler__performSRPAuthenticationAndHandshake__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  _WLLog();

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v9 = v5;

  dispatch_semaphore_signal(*(a1 + 40));
}

void __71__WLDeviceDiscoverySocketHandler__performSRPAuthenticationAndHandshake__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  _WLLog();

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v9 = v5;

  dispatch_semaphore_signal(*(a1 + 40));
}

void __71__WLDeviceDiscoverySocketHandler__performSRPAuthenticationAndHandshake__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  _WLLog();

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v9 = v5;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)_commandStringWithData:(id)data
{
  v3 = MEMORY[0x277CCACA8];
  dataCopy = data;
  v5 = [v3 alloc];
  bytes = [dataCopy bytes];
  v7 = [dataCopy length];

  v8 = [v5 initWithBytesNoCopy:bytes length:v7 encoding:4 freeWhenDone:0];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"\r\n"];
  LODWORD(bytes) = [v8 hasSuffix:v9];

  if (bytes)
  {
    v10 = [v8 stringByReplacingCharactersInRange:objc_msgSend(v8 withString:{"length") - 2, 2, &stru_2882CBB40}];

    v8 = v10;
  }

  return v8;
}

- (id)_okResponseData
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"OK\r\n"];
  v3 = [v2 dataUsingEncoding:4];

  return v3;
}

- (id)_handshakeCommandData
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"HANDSHAKE\r\n"];
  v3 = [v2 dataUsingEncoding:4];

  return v3;
}

- (BOOL)_didReceiveHandshakeData:(id)data
{
  v15 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = objc_alloc_init(MEMORY[0x277D7B8B8]);
  sourceDevice = self->_sourceDevice;
  self->_sourceDevice = v5;

  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:4];
  _WLLog();

  *&v14.sa_len = 0;
  *&v14.sa_data[6] = 0;
  v13 = 16;
  if (getpeername(self->_sockfd, &v14, &v13))
  {
    _WLLog();
  }

  else
  {
    v7.s_addr = *&v14.sa_data[2];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{inet_ntoa(v7), self, v12}];
    [(WLSourceDevice *)self->_sourceDevice setIpAddress:v8];
  }

  v9 = objc_alloc_init(WLSourceDeviceHandshakeParser);
  v10 = [(WLSourceDeviceHandshakeParser *)v9 parseData:dataCopy modifyingSourceDevice:self->_sourceDevice completion:&__block_literal_global_1];

  return v10;
}

- (id)_handshakeResponseData
{
  v3 = xmlNewDoc("1.0");
  v4 = xmlNewNode(0, "root");
  xmlDocSetRootElement(v3, v4);
  v5 = xmlNewChild(v4, 0, "device_info", 0);
  v6 = +[WLDevice deviceName];
  xmlNewChild(v5, 0, "name", [v6 UTF8String]);

  xmlNewChild(v5, 0, "supports_name", "1");
  xmlNewChild(v5, 0, "port", "0");
  xmlNewChild(v5, 0, "device_type", "ios");
  xmlNewChild(v5, 0, "supports_role", "migration_target");
  xmlNewChild(v5, 0, "protocol_version", "2");
  xmlNewChild(v5, 0, "can_add", "photos");
  xmlNewChild(v5, 0, "can_add", "contacts");
  xmlNewChild(v5, 0, "can_add", "calendar");
  if ([(WLSourceDevice *)self->_sourceDevice isSelectingDataTypeInHandshake])
  {
    xmlNewChild(v5, 0, "is_selecting_data_type_in_handshake", "1");
  }

  if ([(WLSourceDevice *)self->_sourceDevice useMigrationKit])
  {
    xmlNewChild(v5, 0, "upgrade", "api/2.0");
  }

  if ([(WLSourceDevice *)self->_sourceDevice canAddDisplay])
  {
    xmlNewChild(v5, 0, "can_add", "display");
  }

  if ([(WLSourceDevice *)self->_sourceDevice canAddAccessibility])
  {
    xmlNewChild(v5, 0, "can_add", "accessibility");
  }

  if ([(WLSourceDevice *)self->_sourceDevice canAddFiles])
  {
    xmlNewChild(v5, 0, "can_add", "files");
  }

  xmlNewChild(v5, 0, "supports_retry_after", "1");
  if (WLLoggingEnabled())
  {
    xmlNewChild(v5, 0, "logging_enabled", "1");
  }

  mem = 0;
  size = 0;
  xmlDocDumpFormatMemory(v3, &mem, &size, 0);
  if (mem)
  {
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:mem length:size];
  }

  else
  {
    v7 = 0;
  }

  xmlFreeDoc(v3);
  xmlCleanupParser();

  return v7;
}

- (void)sendData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__WLDeviceDiscoverySocketHandler_sendData_completion___block_invoke;
  block[3] = &unk_279EB5538;
  block[4] = self;
  v12 = dataCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dataCopy;
  dispatch_async(writeQueue, block);
}

void __54__WLDeviceDiscoverySocketHandler_sendData_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) bytes];
  v4 = [*(a1 + 40) length];
  v5 = *(*(a1 + 32) + 72);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__WLDeviceDiscoverySocketHandler_sendData_completion___block_invoke_2;
  v7[3] = &unk_279EB5510;
  v6 = *(a1 + 48);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v2 writeBytes:v3 length:v4 toSocket:v5 completion:v7];
}

void __54__WLDeviceDiscoverySocketHandler_sendData_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  v7 = v5;
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v5);
    v5 = v7;
  }

  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) invalidateWithError:0];
    v5 = v7;
  }
}

- (WLDeviceDiscoverySocketHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end