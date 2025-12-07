@interface DAKeyPairingSession
- (DAKeyPairingSession)initWithCoder:(id)coder;
- (DAKeyPairingSession)initWithDelegate:(id)delegate;
- (id)getKeyPairingProxy:(void *)proxy;
- (id)preWarmForManufacturer:(id)manufacturer;
- (id)sendTrackingReceipt:(void *)receipt otherJSONData:(void *)data forKeyWithIdentifier:;
- (id)setTrackingReceipt:(id)receipt decryptedDeviceData:(id)data forKeyWithIdentifier:(id)identifier;
- (id)setTrackingReceipt:(id)receipt forKeyWithIdentifier:(id)identifier;
- (id)setTrackingReceipt:(id)receipt slotIdentifier:(id)identifier confidentialMailboxData:(id)data ephemeralPublicKey:(id)key forKeyWithIdentifier:(id)withIdentifier;
- (id)setTrackingReceipt:(id)receipt vehicleMobilizationData:(id)data forKeyWithIdentifier:(id)identifier;
- (id)startKeyPairingWithPassword:(id)password displayName:(id)name;
- (id)startKeyPairingWithPassword:(id)password displayName:(id)name transport:(int64_t)transport;
- (id)startKeyPairingWithPassword:(id)password displayName:(id)name transport:(int64_t)transport bindingAttestation:(id)attestation;
- (id)startProbing;
- (void)didEnd:(id)end;
- (void)didStart:(BOOL)start;
- (void)encodeWithCoder:(id)coder;
- (void)endPointPrivacyDecryption:(id)decryption encryptedData:(id)data publicKey:(id)key callback:(id)callback;
- (void)handleFirstTransactionCompletionResult:(id)result;
- (void)handleKeyPairingCompletionResult:(id)result keyInformation:(id)information trackingRequest:(id)request;
- (void)handlePairingDidStart;
- (void)handlePreWarmCompletionResult:(id)result;
- (void)handleProbingCompletionWithBrandCode:(unint64_t)code error:(id)error;
@end

@implementation DAKeyPairingSession

- (DAKeyPairingSession)initWithDelegate:(id)delegate
{
  v4.receiver = self;
  v4.super_class = DAKeyPairingSession;
  return [(DASession *)&v4 initWithDelegate:delegate];
}

- (id)preWarmForManufacturer:(id)manufacturer
{
  manufacturerCopy = manufacturer;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v5 = KmlLogger(manufacturerCopy);
  [(DAKeyPairingSession *)v5 preWarmForManufacturer:manufacturerCopy];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__DAKeyPairingSession_preWarmForManufacturer___block_invoke;
  v10[3] = &unk_278F6FB00;
  v10[4] = &v11;
  v6 = [(DAKeyPairingSession *)self getKeyPairingProxy:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__DAKeyPairingSession_preWarmForManufacturer___block_invoke_13;
  v9[3] = &unk_278F6FB00;
  v9[4] = &v11;
  [v6 preWarmForManufacturer:manufacturerCopy callback:v9];

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

void __46__DAKeyPairingSession_preWarmForManufacturer___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyPairingSession preWarmForManufacturer:]_block_invoke";
    v15 = 1024;
    v16 = 51;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v11}];
  v12 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __46__DAKeyPairingSession_preWarmForManufacturer___block_invoke_13(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315650;
    v8 = "[DAKeyPairingSession preWarmForManufacturer:]_block_invoke";
    v9 = 1024;
    v10 = 54;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_DEBUG, "%s : %i : Result: %@", &v7, 0x1Cu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)startKeyPairingWithPassword:(id)password displayName:(id)name transport:(int64_t)transport bindingAttestation:(id)attestation
{
  v41[1] = *MEMORY[0x277D85DE8];
  passwordCopy = password;
  nameCopy = name;
  attestationCopy = attestation;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
  if (![passwordCopy length])
  {
    v17 = KmlLogger(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "[DAKeyPairingSession startKeyPairingWithPassword:displayName:transport:bindingAttestation:]";
      v36 = 1024;
      v37 = 69;
      _os_log_impl(&dword_248BF3000, v17, OS_LOG_TYPE_ERROR, "%s : %i : password is empty", buf, 0x12u);
    }

    v18 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(10)];
    v41[0] = v16;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v20 = [v18 errorWithDomain:@"DigitalAccessError" code:10 userInfo:v19];
    goto LABEL_12;
  }

  v13 = [nameCopy length];
  if (!v13)
  {
    v21 = KmlLogger(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "[DAKeyPairingSession startKeyPairingWithPassword:displayName:transport:bindingAttestation:]";
      v36 = 1024;
      v37 = 74;
      _os_log_impl(&dword_248BF3000, v21, OS_LOG_TYPE_ERROR, "%s : %i : displayName is empty", buf, 0x12u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(203)];
    v39 = v16;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v20 = [v22 errorWithDomain:@"DigitalAccessError" code:203 userInfo:v19];
LABEL_12:
    v23 = v29[5];
    v29[5] = v20;

    goto LABEL_13;
  }

  v14 = KmlLogger(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = DAKeyTransportTypeAsString(transport);
    [DAKeyPairingSession startKeyPairingWithPassword:v15 displayName:nameCopy transport:buf bindingAttestation:v14];
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __92__DAKeyPairingSession_startKeyPairingWithPassword_displayName_transport_bindingAttestation___block_invoke;
  v27[3] = &unk_278F6FB00;
  v27[4] = &v28;
  v16 = [(DAKeyPairingSession *)self getKeyPairingProxy:v27];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __92__DAKeyPairingSession_startKeyPairingWithPassword_displayName_transport_bindingAttestation___block_invoke_14;
  v26[3] = &unk_278F6FB00;
  v26[4] = &v28;
  [v16 startKeyPairingWithPassword:passwordCopy keyName:nameCopy transport:transport bindingAttestation:attestationCopy callback:v26];
LABEL_13:

  v24 = v29[5];
  _Block_object_dispose(&v28, 8);

  return v24;
}

void __92__DAKeyPairingSession_startKeyPairingWithPassword_displayName_transport_bindingAttestation___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyPairingSession startKeyPairingWithPassword:displayName:transport:bindingAttestation:]_block_invoke";
    v15 = 1024;
    v16 = 82;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v11}];
  v12 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __92__DAKeyPairingSession_startKeyPairingWithPassword_displayName_transport_bindingAttestation___block_invoke_14(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315650;
    v9 = "[DAKeyPairingSession startKeyPairingWithPassword:displayName:transport:bindingAttestation:]_block_invoke";
    v10 = 1024;
    v11 = 89;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_DEBUG, "%s : %i : Result: %@", &v8, 0x1Cu);
  }

  v5 = kmlErrorToDAError(v3);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)startKeyPairingWithPassword:(id)password displayName:(id)name transport:(int64_t)transport
{
  v19 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  passwordCopy = password;
  v10 = KmlLogger(passwordCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v15 = 136315394;
    v16 = "[DAKeyPairingSession startKeyPairingWithPassword:displayName:transport:]";
    v17 = 1024;
    v18 = 100;
    _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_INFO, "%s : %i : This API is deprecated, use startKeyPairingWithPassword:displayName:transport:bindingAttestation: instead", &v15, 0x12u);
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  v12 = kmlUtilUUIDToData(uUID);
  v13 = [(DAKeyPairingSession *)self startKeyPairingWithPassword:passwordCopy displayName:nameCopy transport:transport bindingAttestation:v12];

  return v13;
}

- (id)startKeyPairingWithPassword:(id)password displayName:(id)name
{
  v15 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  passwordCopy = password;
  v8 = KmlLogger(passwordCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "[DAKeyPairingSession startKeyPairingWithPassword:displayName:]";
    v13 = 1024;
    v14 = 112;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_INFO, "%s : %i : This API is deprecated, use startKeyPairingWithPassword:displayName:transport:bindingAttestation: instead", &v11, 0x12u);
  }

  v9 = [(DAKeyPairingSession *)self startKeyPairingWithPassword:passwordCopy displayName:nameCopy transport:1];

  return v9;
}

- (id)startProbing
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__DAKeyPairingSession_startProbing__block_invoke;
  v6[3] = &unk_278F6FB00;
  v6[4] = &v7;
  v2 = [(DAKeyPairingSession *)self getKeyPairingProxy:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__DAKeyPairingSession_startProbing__block_invoke_16;
  v5[3] = &unk_278F6FB28;
  v5[4] = &v7;
  [v2 startProbingWithCallback:v5];

  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

void __35__DAKeyPairingSession_startProbing__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyPairingSession startProbing]_block_invoke";
    v15 = 1024;
    v16 = 120;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v11}];
  v12 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __35__DAKeyPairingSession_startProbing__block_invoke_16(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = KmlLogger(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v14 = "[DAKeyPairingSession startProbing]_block_invoke";
    v15 = 1024;
    v16 = 123;
    v17 = 1024;
    v18 = a2;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_DEBUG, "%s : %i : Result: %d", buf, 0x18u);
  }

  if ((a2 & 1) == 0)
  {
    v5 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA450];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(4), v11}];
    v12 = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v8 = [v5 errorWithDomain:@"DigitalAccessError" code:4 userInfo:v7];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (id)sendTrackingReceipt:(void *)receipt otherJSONData:(void *)data forKeyWithIdentifier:
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  receiptCopy = receipt;
  dataCopy = data;
  if (self)
  {
    kmlUtilLogLargeData(@"Tracking Receipt Data", receiptCopy);
    if (dataCopy)
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x3032000000;
      v17 = __Block_byref_object_copy_;
      v18 = __Block_byref_object_dispose_;
      v19 = 0;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __78__DAKeyPairingSession_sendTrackingReceipt_otherJSONData_forKeyWithIdentifier___block_invoke;
      v13[3] = &unk_278F6FB00;
      v13[4] = &v14;
      v10 = [self getRemoteProxy:v13];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __78__DAKeyPairingSession_sendTrackingReceipt_otherJSONData_forKeyWithIdentifier___block_invoke_21;
      v12[3] = &unk_278F6FB00;
      v12[4] = &v14;
      [v10 consumeTrackingReceipt:v7 otherJSONData:receiptCopy forKeyWithIdentifier:dataCopy callback:v12];

      self = v15[5];
      _Block_object_dispose(&v14, 8);
    }

    else
    {
      [DAKeyPairingSession sendTrackingReceipt:v20 otherJSONData:v21 forKeyWithIdentifier:&v14];
      self = v14;
    }
  }

  return self;
}

void __78__DAKeyPairingSession_sendTrackingReceipt_otherJSONData_forKeyWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyPairingSession sendTrackingReceipt:otherJSONData:forKeyWithIdentifier:]_block_invoke";
    v15 = 1024;
    v16 = 146;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v11}];
  v12 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __78__DAKeyPairingSession_sendTrackingReceipt_otherJSONData_forKeyWithIdentifier___block_invoke_21(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315650;
    v9 = "[DAKeyPairingSession sendTrackingReceipt:otherJSONData:forKeyWithIdentifier:]_block_invoke";
    v10 = 1024;
    v11 = 152;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_DEBUG, "%s : %i : Result: %@", &v8, 0x1Cu);
  }

  v5 = kmlErrorToDAError(v3);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)setTrackingReceipt:(id)receipt forKeyWithIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  receiptCopy = receipt;
  v8 = KmlLogger(receiptCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315394;
    v14 = "[DAKeyPairingSession setTrackingReceipt:forKeyWithIdentifier:]";
    v15 = 1024;
    v16 = 166;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_ERROR, "%s : %i : Deprecated API, use setTrackingReceipt:decryptedDeviceData:forKeyWithIdentifier: instead", &v13, 0x12u);
  }

  v10 = KmlLogger(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315650;
    v14 = "[DAKeyPairingSession setTrackingReceipt:forKeyWithIdentifier:]";
    v15 = 1024;
    v16 = 167;
    v17 = 2112;
    v18 = identifierCopy;
    _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", &v13, 0x1Cu);
  }

  v11 = [(DAKeyPairingSession *)self sendTrackingReceipt:receiptCopy otherJSONData:0 forKeyWithIdentifier:identifierCopy];

  return v11;
}

- (id)setTrackingReceipt:(id)receipt vehicleMobilizationData:(id)data forKeyWithIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dataCopy = data;
  receiptCopy = receipt;
  v11 = KmlLogger(receiptCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v17 = 136315394;
    v18 = "[DAKeyPairingSession setTrackingReceipt:vehicleMobilizationData:forKeyWithIdentifier:]";
    v19 = 1024;
    v20 = 177;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_ERROR, "%s : %i : Deprecated API, use setTrackingReceipt:decryptedDeviceData:forKeyWithIdentifier: instead", &v17, 0x12u);
  }

  v13 = KmlLogger(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315650;
    v18 = "[DAKeyPairingSession setTrackingReceipt:vehicleMobilizationData:forKeyWithIdentifier:]";
    v19 = 1024;
    v20 = 178;
    v21 = 2112;
    v22 = identifierCopy;
    _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", &v17, 0x1Cu);
  }

  v14 = [DAUtils decryptVehicleMobilizationData:dataCopy forKeyWithIdentifier:identifierCopy];

  v15 = [(DAKeyPairingSession *)self sendTrackingReceipt:receiptCopy otherJSONData:v14 forKeyWithIdentifier:identifierCopy];

  return v15;
}

- (id)setTrackingReceipt:(id)receipt slotIdentifier:(id)identifier confidentialMailboxData:(id)data ephemeralPublicKey:(id)key forKeyWithIdentifier:(id)withIdentifier
{
  v22 = *MEMORY[0x277D85DE8];
  withIdentifierCopy = withIdentifier;
  receiptCopy = receipt;
  v11 = KmlLogger(receiptCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v16 = 136315394;
    v17 = "[DAKeyPairingSession setTrackingReceipt:slotIdentifier:confidentialMailboxData:ephemeralPublicKey:forKeyWithIdentifier:]";
    v18 = 1024;
    v19 = 192;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_ERROR, "%s : %i : Deprecated API, use setTrackingReceipt:decryptedDeviceData:forKeyWithIdentifier: instead", &v16, 0x12u);
  }

  v13 = KmlLogger(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v16 = 136315650;
    v17 = "[DAKeyPairingSession setTrackingReceipt:slotIdentifier:confidentialMailboxData:ephemeralPublicKey:forKeyWithIdentifier:]";
    v18 = 1024;
    v19 = 193;
    v20 = 2112;
    v21 = withIdentifierCopy;
    _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", &v16, 0x1Cu);
  }

  v14 = [(DAKeyPairingSession *)self sendTrackingReceipt:receiptCopy otherJSONData:0 forKeyWithIdentifier:withIdentifierCopy];

  return v14;
}

- (void)endPointPrivacyDecryption:(id)decryption encryptedData:(id)data publicKey:(id)key callback:(id)callback
{
  v34[1] = *MEMORY[0x277D85DE8];
  decryptionCopy = decryption;
  dataCopy = data;
  keyCopy = key;
  callbackCopy = callback;
  v13 = KmlLogger(callbackCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v28 = "[DAKeyPairingSession endPointPrivacyDecryption:encryptedData:publicKey:callback:]";
    v29 = 1024;
    v30 = 204;
    _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_INFO, "%s : %i : API Deprecated, please stop use", buf, 0x12u);
  }

  if (decryptionCopy && dataCopy && keyCopy)
  {
    v15 = kmlUtilDataForHexString(keyCopy);
    v16 = kmlUtilDataForHexString(dataCopy);
    v17 = SESEndPointPrivacyDecryption();
    v18 = 0;
    v19 = KmlLogger(v18);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
    if (v18)
    {
      v26 = keyCopy;
      if (v20)
      {
        *buf = 136315650;
        v28 = "[DAKeyPairingSession endPointPrivacyDecryption:encryptedData:publicKey:callback:]";
        v29 = 1024;
        v30 = 219;
        v31 = 2112;
        v32 = v18;
        _os_log_impl(&dword_248BF3000, v19, OS_LOG_TYPE_INFO, "%s : %i : endPointPrivacyDecryption: return error: %@", buf, 0x1Cu);
      }

      v21 = MEMORY[0x277CCA9B8];
      userInfo = [v18 userInfo];
      v23 = [v21 errorWithDomain:@"DigitalAccessError" code:204 userInfo:userInfo];

      callbackCopy[2](callbackCopy, 0, v23);
      keyCopy = v26;
    }

    else
    {
      if (v20)
      {
        *buf = 136315650;
        v28 = "[DAKeyPairingSession endPointPrivacyDecryption:encryptedData:publicKey:callback:]";
        v29 = 1024;
        v30 = 216;
        v31 = 2112;
        v32 = v17;
        _os_log_impl(&dword_248BF3000, v19, OS_LOG_TYPE_INFO, "%s : %i : endPointPrivacyDecryption: got decrypted data: %@", buf, 0x1Cu);
      }

      (callbackCopy)[2](callbackCopy, v17, 0);
    }
  }

  else
  {
    v24 = KmlLogger(v14);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[DAKeyPairingSession endPointPrivacyDecryption:encryptedData:publicKey:callback:]";
      v29 = 1024;
      v30 = 206;
      _os_log_impl(&dword_248BF3000, v24, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v25 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v34[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v17 = [v25 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v16];
    callbackCopy[2](callbackCopy, 0, v17);
  }
}

- (id)setTrackingReceipt:(id)receipt decryptedDeviceData:(id)data forKeyWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dataCopy = data;
  receiptCopy = receipt;
  v11 = KmlLogger(receiptCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315650;
    v15 = "[DAKeyPairingSession setTrackingReceipt:decryptedDeviceData:forKeyWithIdentifier:]";
    v16 = 1024;
    v17 = 231;
    v18 = 2112;
    v19 = identifierCopy;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", &v14, 0x1Cu);
  }

  v12 = [(DAKeyPairingSession *)self sendTrackingReceipt:receiptCopy otherJSONData:dataCopy forKeyWithIdentifier:identifierCopy];

  return v12;
}

- (void)didStart:(BOOL)start
{
  startCopy = start;
  v11 = *MEMORY[0x277D85DE8];
  v5 = KmlLogger(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v8 = "[DAKeyPairingSession didStart:]";
    v9 = 1024;
    v10 = 240;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_DEBUG, "%s : %i : ", buf, 0x12u);
  }

  v6.receiver = self;
  v6.super_class = DAKeyPairingSession;
  [(DASession *)&v6 didStart:startCopy];
}

- (void)didEnd:(id)end
{
  v11 = *MEMORY[0x277D85DE8];
  endCopy = end;
  v5 = KmlLogger(endCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v8 = "[DAKeyPairingSession didEnd:]";
    v9 = 1024;
    v10 = 246;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_DEBUG, "%s : %i : ", buf, 0x12u);
  }

  v6.receiver = self;
  v6.super_class = DAKeyPairingSession;
  [(DASession *)&v6 didEnd:endCopy];
}

- (void)handleKeyPairingCompletionResult:(id)result keyInformation:(id)information trackingRequest:(id)request
{
  resultCopy = result;
  informationCopy = information;
  requestCopy = request;
  getDelegate = [(DASession *)self getDelegate];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __87__DAKeyPairingSession_handleKeyPairingCompletionResult_keyInformation_trackingRequest___block_invoke;
  v16[3] = &unk_278F6FB50;
  v17 = resultCopy;
  v18 = getDelegate;
  selfCopy = self;
  v20 = informationCopy;
  v21 = requestCopy;
  v12 = requestCopy;
  v13 = informationCopy;
  v14 = getDelegate;
  v15 = resultCopy;
  [(DASession *)self dispatchOnCallbackQueue:v16];
}

void __87__DAKeyPairingSession_handleKeyPairingCompletionResult_keyInformation_trackingRequest___block_invoke(uint64_t a1)
{
  v2 = kmlErrorToDAError(*(a1 + 32));
  [*(a1 + 40) keyPairingSession:*(a1 + 48) didFinishPairingWithKey:*(a1 + 56) trackingRequest:*(a1 + 64) error:v2];
}

- (void)handleFirstTransactionCompletionResult:(id)result
{
  resultCopy = result;
  getDelegate = [(DASession *)self getDelegate];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__DAKeyPairingSession_handleFirstTransactionCompletionResult___block_invoke;
  v8[3] = &unk_278F6FB78;
  v9 = resultCopy;
  v10 = getDelegate;
  selfCopy = self;
  v6 = getDelegate;
  v7 = resultCopy;
  [(DASession *)self dispatchOnCallbackQueue:v8];
}

void __62__DAKeyPairingSession_handleFirstTransactionCompletionResult___block_invoke(uint64_t a1)
{
  v2 = kmlErrorToDAError(*(a1 + 32));
  [*(a1 + 40) didFinishFirstTransactionForSession:*(a1 + 48) error:v2];
}

- (void)handlePreWarmCompletionResult:(id)result
{
  resultCopy = result;
  getDelegate = [(DASession *)self getDelegate];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__DAKeyPairingSession_handlePreWarmCompletionResult___block_invoke;
  v8[3] = &unk_278F6FBA0;
  v9 = resultCopy;
  v10 = getDelegate;
  v6 = getDelegate;
  v7 = resultCopy;
  [(DASession *)self dispatchOnCallbackQueue:v8];
}

void __53__DAKeyPairingSession_handlePreWarmCompletionResult___block_invoke(uint64_t a1)
{
  v2 = kmlErrorToDAError(*(a1 + 32));
  [*(a1 + 40) didFinishPreWarmWithResult:v2];
}

- (void)handleProbingCompletionWithBrandCode:(unint64_t)code error:(id)error
{
  errorCopy = error;
  getDelegate = [(DASession *)self getDelegate];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__DAKeyPairingSession_handleProbingCompletionWithBrandCode_error___block_invoke;
  v10[3] = &unk_278F6FBC8;
  v12 = errorCopy;
  codeCopy = code;
  v11 = getDelegate;
  v8 = errorCopy;
  v9 = getDelegate;
  [(DASession *)self dispatchOnCallbackQueue:v10];
}

void __66__DAKeyPairingSession_handleProbingCompletionWithBrandCode_error___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[6];
  v3 = kmlErrorToDAError(a1[5]);
  [v1 didFinishProbingWithBrandCode:v2 error:v3];
}

- (void)handlePairingDidStart
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = KmlLogger(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v9 = "[DAKeyPairingSession handlePairingDidStart]";
    v10 = 1024;
    v11 = 289;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_DEBUG, "%s : %i : ", buf, 0x12u);
  }

  getDelegate = [(DASession *)self getDelegate];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__DAKeyPairingSession_handlePairingDidStart__block_invoke;
  v6[3] = &unk_278F6FBF0;
  v7 = getDelegate;
  v5 = getDelegate;
  [(DASession *)self dispatchOnCallbackQueue:v6];
}

uint64_t __44__DAKeyPairingSession_handlePairingDidStart__block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 didStartPairing];
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = DAKeyPairingSession;
  [(DASession *)&v3 encodeWithCoder:coder];
}

- (DAKeyPairingSession)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = DAKeyPairingSession;
  return [(DASession *)&v4 initWithCoder:coder];
}

- (id)getKeyPairingProxy:(void *)proxy
{
  if (proxy)
  {
    proxy = [proxy getRemoteProxy:a2];
    v2 = vars8;
  }

  return proxy;
}

- (void)preWarmForManufacturer:(NSObject *)a1 .cold.1(NSObject *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315650;
    v5 = "[DAKeyPairingSession preWarmForManufacturer:]";
    v6 = 1024;
    v7 = 49;
    v8 = 2112;
    v9 = a2;
    _os_log_impl(&dword_248BF3000, a1, OS_LOG_TYPE_DEBUG, "%s : %i : Manufacturer: %@", &v4, 0x1Cu);
  }
}

- (void)startKeyPairingWithPassword:(void *)a1 displayName:(uint64_t)a2 transport:(uint8_t *)buf bindingAttestation:(os_log_t)log .cold.1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 136315906;
  *(buf + 4) = "[DAKeyPairingSession startKeyPairingWithPassword:displayName:transport:bindingAttestation:]";
  *(buf + 6) = 1024;
  *(buf + 14) = 79;
  *(buf + 9) = 2112;
  *(buf + 20) = a1;
  *(buf + 14) = 2112;
  *(buf + 30) = a2;
  _os_log_impl(&dword_248BF3000, log, OS_LOG_TYPE_DEBUG, "%s : %i : Transport = %@, displayName: %@", buf, 0x26u);
}

- (void)sendTrackingReceipt:(void *)a1 otherJSONData:(void *)a2 forKeyWithIdentifier:(uint64_t *)a3 .cold.1(void *a1, void *a2, uint64_t *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = KmlLogger(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315394;
    v11 = "[DAKeyPairingSession sendTrackingReceipt:otherJSONData:forKeyWithIdentifier:]";
    v12 = 1024;
    v13 = 140;
    _os_log_impl(&dword_248BF3000, v6, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", &v10, 0x12u);
  }

  v7 = MEMORY[0x277CCA9B8];
  *a1 = *MEMORY[0x277CCA450];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
  *a2 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:a2 forKeys:a1 count:1];
  *a3 = [v7 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v9];
}

@end