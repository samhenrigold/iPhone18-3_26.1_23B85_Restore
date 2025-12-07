@interface DAKeyManagementSession
- (DAKeyManagementSession)initWithCoder:(id)coder;
- (DAKeyManagementSession)initWithDelegate:(id)delegate;
- (id)sendTrackingReceipt:(void *)receipt otherJSONData:(void *)data forKeyWithIdentifier:;
- (id)setTrackingReceipt:(id)receipt decryptedDeviceData:(id)data forKeyWithIdentifier:(id)identifier;
- (id)setTrackingReceipt:(id)receipt forKeyWithIdentifier:(id)identifier;
- (id)setTrackingReceipt:(id)receipt slotIdentifier:(id)identifier confidentialMailboxData:(id)data ephemeralPublicKey:(id)key forKeyWithIdentifier:(id)withIdentifier;
- (id)setTrackingReceipt:(id)receipt vehicleMobilizationData:(id)data forKeyWithIdentifier:(id)identifier;
- (void)cancelAllFriendInvitationsWithCompletionHandler:(id)handler;
- (void)cancelInvitationWithIdentifier:(id)identifier reason:(unint64_t)reason callback:(id)callback;
- (void)cancelInvitationsWithIdentifiers:(id)identifiers sentByOwnerKeyWithIdentifier:(id)identifier callback:(id)callback;
- (void)commitUpgradeForKeyWithIdentifier:(id)identifier versionType:(unint64_t)type version:(unint64_t)version completionHandler:(id)handler;
- (void)countImmobilizerTokensForKeyWithIdentifier:(id)identifier callback:(id)callback;
- (void)deleteKey:(id)key completionHandler:(id)handler;
- (void)didEnd:(id)end;
- (void)didStart:(BOOL)start;
- (void)encodeWithCoder:(id)coder;
- (void)endPointPrivacyDecryption:(id)decryption encryptedData:(id)data publicKey:(id)key callback:(id)callback;
- (void)getPreTrackRequestForInvitationWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getPreTrackRequestForKeyWithIdentifier:(id)identifier callback:(id)callback;
- (void)getSecondFactorRequestForConfigs:(id)configs completionHandler:(id)handler;
- (void)handleActivationForKeyWithIdentifier:(id)identifier callback:(id)callback;
- (void)hasUpgradeAvailableForKeyWithIdentifier:(id)identifier versionType:(unint64_t)type versions:(id)versions completionHandler:(id)handler;
- (void)listKeysWithHandler:(id)handler;
- (void)listKeysWithSession:(id)session seid:(id)seid callback:(id)callback;
- (void)listReceivedSharingInvitationsWithCallback:(id)callback;
- (void)listSharingInvitationsForKeyIdentifier:(id)identifier callback:(id)callback;
- (void)localDeleteKey:(id)key completionHandler:(id)handler;
- (void)ppidRequestForInvitationWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)ppidRequestForInvitationWithIdentifier:(id)identifier fromMailboxIdentifier:(id)mailboxIdentifier completionHandler:(id)handler;
- (void)preWarmForManufacturer:(id)manufacturer callback:(id)callback;
- (void)readerInformationForInvitationWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)readerInformationForInvitationWithIdentifier:(id)identifier fromMailboxIdentifier:(id)mailboxIdentifier completionHandler:(id)handler;
- (void)removeSharedKeysWithIdentifiers:(id)identifiers ownerKeyWithIdentifier:(id)identifier callback:(id)callback;
- (void)removeSharingInvitationWithId:(id)id completionHandler:(id)handler;
- (void)requestBindingAttestationDataForKeyWithIdentifier:(id)identifier callback:(id)callback;
- (void)requestBindingAttestationDataForManufacturer:(id)manufacturer callback:(id)callback;
- (void)revertUpgradeForKeyWithIdentifier:(id)identifier versionType:(unint64_t)type version:(unint64_t)version completionHandler:(id)handler;
- (void)revokeKeysWithIdentifiers:(id)identifiers sharedByOwnerKeyWithIdentifier:(id)identifier callback:(id)callback;
- (void)revokeNodesWithGroupIdentifiers:(id)identifiers treesWithGroupIdentifier:(id)identifier authorizedByKeyWithIdentifier:(id)withIdentifier callback:(id)callback;
- (void)setBindingAttestation:(id)attestation forKeyWithIdentifier:(id)identifier callback:(id)callback;
- (void)setProductPlanIdentifier:(id)identifier forInvitationIdentifier:(id)invitationIdentifier completion:(id)completion;
- (void)signAppData:(id)data appBundleIdentifier:(id)identifier nonce:(id)nonce auth:(id)auth keyIdentifier:(id)keyIdentifier callback:(id)callback;
- (void)updateConfiguration:(id)configuration forKeyWithIdentifier:(id)identifier additionalConfigurationData:(id)data completionHandler:(id)handler;
- (void)updateConfiguration:(id)configuration forKeyWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)upgradeKeyWithIdentifier:(id)identifier versionType:(unint64_t)type version:(unint64_t)version upgradeInformation:(id)information completionHandler:(id)handler;
@end

@implementation DAKeyManagementSession

- (DAKeyManagementSession)initWithDelegate:(id)delegate
{
  v4.receiver = self;
  v4.super_class = DAKeyManagementSession;
  return [(DASession *)&v4 initWithDelegate:delegate];
}

- (void)preWarmForManufacturer:(id)manufacturer callback:(id)callback
{
  v22 = *MEMORY[0x277D85DE8];
  manufacturerCopy = manufacturer;
  callbackCopy = callback;
  v7 = KmlLogger(callbackCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v17 = "[DAKeyManagementSession preWarmForManufacturer:callback:]";
    v18 = 1024;
    v19 = 55;
    v20 = 2112;
    v21 = manufacturerCopy;
    _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_DEBUG, "%s : %i : %@", buf, 0x1Cu);
  }

  if ([manufacturerCopy length])
  {
    v13 = callbackCopy;
    SESEndPointPreWarmForAlisha();
    v8 = v13;
  }

  else
  {
    v9 = KmlLogger(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[DAKeyManagementSession preWarmForManufacturer:callback:]";
      v18 = 1024;
      v19 = 57;
      _os_log_impl(&dword_248BF3000, v9, OS_LOG_TYPE_ERROR, "%s : %i : manufacturer is empty", buf, 0x12u);
    }

    v10 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA450];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(206)];
    v15 = v8;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v12 = [v10 errorWithDomain:@"DigitalAccessError" code:206 userInfo:v11];
    (*(callbackCopy + 2))(callbackCopy, v12);
  }
}

void __58__DAKeyManagementSession_preWarmForManufacturer_callback___block_invoke(uint64_t a1, void *a2)
{
  v5 = sesErrorToKmlError(a2, 0x13u);
  v3 = *(a1 + 32);
  v4 = kmlErrorToDAError(v5);
  (*(v3 + 16))(v3, v4);
}

- (void)requestBindingAttestationDataForManufacturer:(id)manufacturer callback:(id)callback
{
  v25 = *MEMORY[0x277D85DE8];
  manufacturerCopy = manufacturer;
  callbackCopy = callback;
  v7 = KmlLogger(callbackCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v20 = "[DAKeyManagementSession requestBindingAttestationDataForManufacturer:callback:]";
    v21 = 1024;
    v22 = 74;
    v23 = 2112;
    v24 = manufacturerCopy;
    _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_INFO, "%s : %i : Manufacturer: %@", buf, 0x1Cu);
  }

  v8 = SESEndpointGetBindingAttestationRequestWithSession();
  v9 = 0;
  v10 = v9;
  if (v9)
  {
    v11 = MEMORY[0x277CCA9B8];
    userInfo = [v9 userInfo];
    v13 = [v11 errorWithDomain:@"DigitalAccessError" code:224 userInfo:userInfo];
    v14 = 0;
  }

  else
  {
    v15 = [DAKeyBindingAttestationRequestData alloc];
    userInfo = [MEMORY[0x277CCAD78] UUID];
    subCAAttestation = [v8 subCAAttestation];
    casdECDSACertificate = [v8 casdECDSACertificate];
    casdRSACertificate = [v8 casdRSACertificate];
    v14 = [(DAKeyBindingAttestationRequestData *)v15 initWithSharingSessionIdentifier:userInfo subCaAttestation:subCAAttestation casd:casdECDSACertificate rsaCertData:casdRSACertificate];

    v13 = 0;
  }

  callbackCopy[2](callbackCopy, v14, v13);
}

- (void)deleteKey:(id)key completionHandler:(id)handler
{
  v27[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  handlerCopy = handler;
  v8 = KmlLogger(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession deleteKey:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 98;
    *&buf[18] = 2112;
    *&buf[20] = keyCopy;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_DEBUG, "%s : %i : %@", buf, 0x1Cu);
  }

  if ([keyCopy length])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v24 = __Block_byref_object_dispose__1;
    v25 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__1;
    v21 = __Block_byref_object_dispose__1;
    v22 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__DAKeyManagementSession_deleteKey_completionHandler___block_invoke;
    v16[3] = &unk_278F6FB00;
    v16[4] = buf;
    v9 = [(DAKeyPairingSession *)self getKeyPairingProxy:v16];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __54__DAKeyManagementSession_deleteKey_completionHandler___block_invoke_15;
    v15[3] = &unk_278F702E0;
    v15[4] = buf;
    v15[5] = &v17;
    [v9 deleteKey:keyCopy callback:v15];

    handlerCopy[2](handlerCopy, v18[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v17, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = KmlLogger(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession deleteKey:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 100;
      _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_ERROR, "%s : %i : keyIdentifier is empty", buf, 0x12u);
    }

    v11 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(206)];
    v27[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v14 = [v11 errorWithDomain:@"DigitalAccessError" code:206 userInfo:v13];

    (handlerCopy)[2](handlerCopy, 0, v14);
  }
}

void __54__DAKeyManagementSession_deleteKey_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyManagementSession deleteKey:completionHandler:]_block_invoke";
    v15 = 1024;
    v16 = 110;
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

void __54__DAKeyManagementSession_deleteKey_completionHandler___block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = kmlErrorToDAError(a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (void)listKeysWithHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v24 = 0;
  v4 = SESEndPointList();
  v5 = 0;
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  if (v5)
  {
    v7 = MEMORY[0x277CCA9B8];
    userInfo = [v5 userInfo];
    v9 = [v7 errorWithDomain:@"DigitalAccessError" code:209 userInfo:userInfo];

    handlerCopy[2](handlerCopy, 0, v9);
  }

  else
  {
    v19 = v4;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v4;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        v14 = 0;
        do
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * v14);
          v16 = KmlLogger(v11);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            publicKeyIdentifier = [v15 publicKeyIdentifier];
            *buf = 136315650;
            v26 = "[DAKeyManagementSession listKeysWithHandler:]";
            v27 = 1024;
            v28 = 128;
            v29 = 2112;
            v30 = publicKeyIdentifier;
            _os_log_impl(&dword_248BF3000, v16, OS_LOG_TYPE_INFO, "%s : %i : Key id = %@", buf, 0x1Cu);
          }

          v18 = [[DAKeyInformation alloc] initWithEndpoint:v15];
          [v6 addObject:v18];

          ++v14;
        }

        while (v12 != v14);
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v31 count:16];
        v12 = v11;
      }

      while (v11);
    }

    (handlerCopy)[2](handlerCopy, v6, 0);
    v4 = v19;
  }
}

- (void)listKeysWithSession:(id)session seid:(id)seid callback:(id)callback
{
  v52 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  seidCopy = seid;
  callbackCopy = callback;
  v10 = KmlLogger(callbackCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v45 = "[DAKeyManagementSession listKeysWithSession:seid:callback:]";
    v46 = 1024;
    v47 = 141;
    _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_ERROR, "%s : %i : This API is deprecated, please use DAManager version instead", buf, 0x12u);
  }

  if (sessionCopy && seidCopy)
  {
    v40 = 0;
    v12 = SESEndPointListWithSession();
    v13 = 0;
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v12, "count")}];
    if (v13)
    {
      v15 = MEMORY[0x277CCA9B8];
      userInfo = [v13 userInfo];
      v17 = [v15 errorWithDomain:@"DigitalAccessError" code:209 userInfo:userInfo];

      callbackCopy[2](callbackCopy, 0, v17);
    }

    else
    {
      v33 = callbackCopy;
      v34 = seidCopy;
      v35 = sessionCopy;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v21 = v12;
      v22 = [v21 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v37;
        do
        {
          v25 = 0;
          do
          {
            if (*v37 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v36 + 1) + 8 * v25);
            v27 = KmlLogger(v22);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              publicKeyIdentifier = [v26 publicKeyIdentifier];
              *buf = 136315650;
              v45 = "[DAKeyManagementSession listKeysWithSession:seid:callback:]";
              v46 = 1024;
              v47 = 154;
              v48 = 2112;
              v49 = publicKeyIdentifier;
              _os_log_impl(&dword_248BF3000, v27, OS_LOG_TYPE_INFO, "%s : %i : Key id = %@", buf, 0x1Cu);
            }

            v29 = [[DAKeyInformation alloc] initWithEndpoint:v26];
            [v14 addObject:v29];

            ++v25;
          }

          while (v23 != v25);
          v22 = [v21 countByEnumeratingWithState:&v36 objects:v41 count:16];
          v23 = v22;
        }

        while (v22);
      }

      v12 = v21;

      v31 = KmlLogger(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = [v14 count];
        *buf = 136315650;
        v45 = "[DAKeyManagementSession listKeysWithSession:seid:callback:]";
        v46 = 1024;
        v47 = 158;
        v48 = 2048;
        v49 = v32;
        _os_log_impl(&dword_248BF3000, v31, OS_LOG_TYPE_INFO, "%s : %i : listKeysWithSession: key count = %lu", buf, 0x1Cu);
      }

      callbackCopy = v33;
      (v33)[2](v33, v14, 0);
      seidCopy = v34;
      sessionCopy = v35;
    }
  }

  else
  {
    v18 = KmlLogger(v11);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v45 = "[DAKeyManagementSession listKeysWithSession:seid:callback:]";
      v46 = 1024;
      v47 = 143;
      v48 = 2112;
      v49 = sessionCopy;
      v50 = 2112;
      v51 = seidCopy;
      _os_log_impl(&dword_248BF3000, v18, OS_LOG_TYPE_ERROR, "%s : %i : Null arguments provided. Session : %@, seid : %@", buf, 0x26u);
    }

    v19 = MEMORY[0x277CCA9B8];
    v42 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v43 = v12;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v20 = [v19 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v14];
    callbackCopy[2](callbackCopy, 0, v20);
  }
}

- (void)listSharingInvitationsForKeyIdentifier:(id)identifier callback:(id)callback
{
  v28[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  callbackCopy = callback;
  v8 = KmlLogger(callbackCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession listSharingInvitationsForKeyIdentifier:callback:]";
    *&buf[12] = 1024;
    *&buf[14] = 168;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", buf, 0x1Cu);
  }

  if (identifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v25 = __Block_byref_object_dispose__1;
    v26 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__1;
    v22 = __Block_byref_object_dispose__1;
    v23 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __74__DAKeyManagementSession_listSharingInvitationsForKeyIdentifier_callback___block_invoke;
    v17[3] = &unk_278F6FB00;
    v17[4] = buf;
    v10 = [(DAKeyPairingSession *)self getKeyPairingProxy:v17];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __74__DAKeyManagementSession_listSharingInvitationsForKeyIdentifier_callback___block_invoke_19;
    v16[3] = &unk_278F70308;
    v16[4] = buf;
    v16[5] = &v18;
    [v10 listSharingInvitationsForKeyIdentifier:identifierCopy callback:v16];

    callbackCopy[2](callbackCopy, v19[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = KmlLogger(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession listSharingInvitationsForKeyIdentifier:callback:]";
      *&buf[12] = 1024;
      *&buf[14] = 170;
      _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided.", buf, 0x12u);
    }

    v12 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v28[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v15 = [v12 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v14];
    (callbackCopy)[2](callbackCopy, 0, v15);
  }
}

void __74__DAKeyManagementSession_listSharingInvitationsForKeyIdentifier_callback___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyManagementSession listSharingInvitationsForKeyIdentifier:callback:]_block_invoke";
    v15 = 1024;
    v16 = 179;
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

void __74__DAKeyManagementSession_listSharingInvitationsForKeyIdentifier_callback___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = kmlErrorToDAError(a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

void __69__DAKeyManagementSession_listReceivedSharingInvitationsWithCallback___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyManagementSession listReceivedSharingInvitationsWithCallback:]_block_invoke";
    v15 = 1024;
    v16 = 197;
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

void __69__DAKeyManagementSession_listReceivedSharingInvitationsWithCallback___block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = kmlErrorToDAError(a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (void)localDeleteKey:(id)key completionHandler:(id)handler
{
  v21[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  handlerCopy = handler;
  v8 = KmlLogger(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession localDeleteKey:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 209;
    *&buf[18] = 2112;
    *&buf[20] = keyCopy;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_DEBUG, "%s : %i : %@", buf, 0x1Cu);
  }

  if ([keyCopy length])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v18 = __Block_byref_object_dispose__1;
    v19 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __59__DAKeyManagementSession_localDeleteKey_completionHandler___block_invoke;
    v16[3] = &unk_278F6FB00;
    v16[4] = buf;
    v9 = [(DAKeyPairingSession *)self getKeyPairingProxy:v16];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __59__DAKeyManagementSession_localDeleteKey_completionHandler___block_invoke_22;
    v15[3] = &unk_278F6FB00;
    v15[4] = buf;
    [v9 localDeleteKey:keyCopy callback:v15];

    handlerCopy[2](handlerCopy, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = KmlLogger(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession localDeleteKey:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 212;
      _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_ERROR, "%s : %i : keyIdentifier is empty", buf, 0x12u);
    }

    v11 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(206)];
    v21[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v14 = [v11 errorWithDomain:@"DigitalAccessError" code:206 userInfo:v13];

    (handlerCopy)[2](handlerCopy, v14);
  }
}

void __59__DAKeyManagementSession_localDeleteKey_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyManagementSession localDeleteKey:completionHandler:]_block_invoke";
    v15 = 1024;
    v16 = 220;
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

uint64_t __59__DAKeyManagementSession_localDeleteKey_completionHandler___block_invoke_22(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = kmlErrorToDAError(a2);

  return MEMORY[0x2821F96F8]();
}

void __74__DAKeyManagementSession_cancelAllFriendInvitationsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyManagementSession cancelAllFriendInvitationsWithCompletionHandler:]_block_invoke";
    v15 = 1024;
    v16 = 236;
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

uint64_t __74__DAKeyManagementSession_cancelAllFriendInvitationsWithCompletionHandler___block_invoke_23(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = kmlErrorToDAError(a2);

  return MEMORY[0x2821F96F8]();
}

void __74__DAKeyManagementSession_removeSharingInvitationWithId_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyManagementSession removeSharingInvitationWithId:completionHandler:]_block_invoke";
    v15 = 1024;
    v16 = 252;
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

uint64_t __74__DAKeyManagementSession_removeSharingInvitationWithId_completionHandler___block_invoke_24(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = kmlErrorToDAError(a2);

  return MEMORY[0x2821F96F8]();
}

- (void)signAppData:(id)data appBundleIdentifier:(id)identifier nonce:(id)nonce auth:(id)auth keyIdentifier:(id)keyIdentifier callback:(id)callback
{
  v20 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  v9 = KmlLogger(callbackCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v17 = "[DAKeyManagementSession signAppData:appBundleIdentifier:nonce:auth:keyIdentifier:callback:]";
    v18 = 1024;
    v19 = 263;
    _os_log_impl(&dword_248BF3000, v9, OS_LOG_TYPE_ERROR, "%s : %i : Deprecated", buf, 0x12u);
  }

  v10 = MEMORY[0x277CCA9B8];
  v14 = *MEMORY[0x277CCA450];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(214), v14}];
  v15 = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v13 = [v10 errorWithDomain:@"DigitalAccessError" code:214 userInfo:v12];
  (*(callbackCopy + 2))(callbackCopy, 0, 0, v13);
}

- (void)countImmobilizerTokensForKeyWithIdentifier:(id)identifier callback:(id)callback
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  callbackCopy = callback;
  v8 = KmlLogger(callbackCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession countImmobilizerTokensForKeyWithIdentifier:callback:]";
    *&buf[12] = 1024;
    *&buf[14] = 270;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_DEBUG, "%s : %i : KeyIdentifier: %@", buf, 0x1Cu);
  }

  if (identifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    *&buf[24] = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v10 = [(DAKeyPairingSession *)self getKeyPairingProxy:?];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __78__DAKeyManagementSession_countImmobilizerTokensForKeyWithIdentifier_callback___block_invoke_25;
    v12[3] = &unk_278F70350;
    v12[4] = buf;
    v12[5] = &v13;
    [v10 countImmobilizerTokensForKeyWithIdentifier:identifierCopy callback:v12];

    callbackCopy[2](callbackCopy, *(*&buf[8] + 24), v14[3]);
    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = KmlLogger(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession countImmobilizerTokensForKeyWithIdentifier:callback:]";
      *&buf[12] = 1024;
      *&buf[14] = 272;
      _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    callbackCopy[2](callbackCopy, 0, 0);
  }
}

void __78__DAKeyManagementSession_countImmobilizerTokensForKeyWithIdentifier_callback___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = KmlLogger(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315650;
    v5 = "[DAKeyManagementSession countImmobilizerTokensForKeyWithIdentifier:callback:]_block_invoke";
    v6 = 1024;
    v7 = 280;
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", &v4, 0x1Cu);
  }
}

uint64_t __78__DAKeyManagementSession_countImmobilizerTokensForKeyWithIdentifier_callback___block_invoke_25(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = a3;
  return result;
}

- (void)cancelInvitationsWithIdentifiers:(id)identifiers sentByOwnerKeyWithIdentifier:(id)identifier callback:(id)callback
{
  v25[1] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  callbackCopy = callback;
  v11 = KmlLogger(callbackCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession cancelInvitationsWithIdentifiers:sentByOwnerKeyWithIdentifier:callback:]";
    *&buf[12] = 1024;
    *&buf[14] = 293;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_DEBUG, "%s : %i : OwnerKeyIdentifier: %@", buf, 0x1Cu);
  }

  if (identifiersCopy && identifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v22 = __Block_byref_object_dispose__1;
    v23 = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __97__DAKeyManagementSession_cancelInvitationsWithIdentifiers_sentByOwnerKeyWithIdentifier_callback___block_invoke;
    v20[3] = &unk_278F6FB00;
    v20[4] = buf;
    v13 = [(DAKeyPairingSession *)self getKeyPairingProxy:v20];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __97__DAKeyManagementSession_cancelInvitationsWithIdentifiers_sentByOwnerKeyWithIdentifier_callback___block_invoke_27;
    v19[3] = &unk_278F6FB00;
    v19[4] = buf;
    [v13 cancelInvitationsWithIdentifiers:identifiersCopy sentByOwnerKeyWithIdentifier:identifierCopy callback:v19];

    callbackCopy[2](callbackCopy, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = KmlLogger(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession cancelInvitationsWithIdentifiers:sentByOwnerKeyWithIdentifier:callback:]";
      *&buf[12] = 1024;
      *&buf[14] = 295;
      _os_log_impl(&dword_248BF3000, v14, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v15 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v25[0] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v18 = [v15 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v17];
    (callbackCopy)[2](callbackCopy, v18);
  }
}

void __97__DAKeyManagementSession_cancelInvitationsWithIdentifiers_sentByOwnerKeyWithIdentifier_callback___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyManagementSession cancelInvitationsWithIdentifiers:sentByOwnerKeyWithIdentifier:callback:]_block_invoke";
    v15 = 1024;
    v16 = 303;
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

uint64_t __97__DAKeyManagementSession_cancelInvitationsWithIdentifiers_sentByOwnerKeyWithIdentifier_callback___block_invoke_27(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = kmlErrorToDAError(a2);

  return MEMORY[0x2821F96F8]();
}

- (void)cancelInvitationWithIdentifier:(id)identifier reason:(unint64_t)reason callback:(id)callback
{
  v29[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  callbackCopy = callback;
  v10 = KmlLogger(callbackCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession cancelInvitationWithIdentifier:reason:callback:]";
    *&buf[12] = 1024;
    *&buf[14] = 316;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_DEBUG, "%s : %i : invitationIdentifier: %@", buf, 0x1Cu);
  }

  if ([identifierCopy length])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v26 = __Block_byref_object_dispose__1;
    v27 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__1;
    v23 = __Block_byref_object_dispose__1;
    v24 = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __73__DAKeyManagementSession_cancelInvitationWithIdentifier_reason_callback___block_invoke;
    v18[3] = &unk_278F6FB00;
    v18[4] = buf;
    v11 = [(DAKeyPairingSession *)self getKeyPairingProxy:v18];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __73__DAKeyManagementSession_cancelInvitationWithIdentifier_reason_callback___block_invoke_28;
    v17[3] = &unk_278F70378;
    v17[4] = &v19;
    v17[5] = buf;
    [v11 cancelInvitationWithIdentifier:identifierCopy reason:reason callback:v17];

    callbackCopy[2](callbackCopy, v20[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v19, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v12 = KmlLogger(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession cancelInvitationWithIdentifier:reason:callback:]";
      *&buf[12] = 1024;
      *&buf[14] = 318;
      _os_log_impl(&dword_248BF3000, v12, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v13 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA450];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v29[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v16 = [v13 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v15];
    (callbackCopy)[2](callbackCopy, 0, v16);
  }
}

void __73__DAKeyManagementSession_cancelInvitationWithIdentifier_reason_callback___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyManagementSession cancelInvitationWithIdentifier:reason:callback:]_block_invoke";
    v15 = 1024;
    v16 = 327;
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

void __73__DAKeyManagementSession_cancelInvitationWithIdentifier_reason_callback___block_invoke_28(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v10 = a2;
  v6 = a3;
  v7 = kmlErrorToDAError(v6);

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)removeSharedKeysWithIdentifiers:(id)identifiers ownerKeyWithIdentifier:(id)identifier callback:(id)callback
{
  v25[1] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  callbackCopy = callback;
  v11 = KmlLogger(callbackCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession removeSharedKeysWithIdentifiers:ownerKeyWithIdentifier:callback:]";
    *&buf[12] = 1024;
    *&buf[14] = 341;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_DEBUG, "%s : %i : OwnerKeyIdentifier: %@", buf, 0x1Cu);
  }

  if (identifiersCopy && identifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v22 = __Block_byref_object_dispose__1;
    v23 = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __90__DAKeyManagementSession_removeSharedKeysWithIdentifiers_ownerKeyWithIdentifier_callback___block_invoke;
    v20[3] = &unk_278F6FB00;
    v20[4] = buf;
    v13 = [(DAKeyPairingSession *)self getKeyPairingProxy:v20];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __90__DAKeyManagementSession_removeSharedKeysWithIdentifiers_ownerKeyWithIdentifier_callback___block_invoke_30;
    v19[3] = &unk_278F6FB00;
    v19[4] = buf;
    [v13 removeSharedKeysWithIdentifiers:identifiersCopy ownerKeyWithIdentifier:identifierCopy callback:v19];

    callbackCopy[2](callbackCopy, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = KmlLogger(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession removeSharedKeysWithIdentifiers:ownerKeyWithIdentifier:callback:]";
      *&buf[12] = 1024;
      *&buf[14] = 343;
      _os_log_impl(&dword_248BF3000, v14, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v15 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v25[0] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v18 = [v15 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v17];
    (callbackCopy)[2](callbackCopy, v18);
  }
}

void __90__DAKeyManagementSession_removeSharedKeysWithIdentifiers_ownerKeyWithIdentifier_callback___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyManagementSession removeSharedKeysWithIdentifiers:ownerKeyWithIdentifier:callback:]_block_invoke";
    v15 = 1024;
    v16 = 350;
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

uint64_t __90__DAKeyManagementSession_removeSharedKeysWithIdentifiers_ownerKeyWithIdentifier_callback___block_invoke_30(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = kmlErrorToDAError(a2);

  return MEMORY[0x2821F96F8]();
}

- (void)revokeKeysWithIdentifiers:(id)identifiers sharedByOwnerKeyWithIdentifier:(id)identifier callback:(id)callback
{
  v31[1] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  callbackCopy = callback;
  v11 = KmlLogger(callbackCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession revokeKeysWithIdentifiers:sharedByOwnerKeyWithIdentifier:callback:]";
    *&buf[12] = 1024;
    *&buf[14] = 363;
    *&buf[18] = 2112;
    *&buf[20] = identifiersCopy;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_INFO, "%s : %i : keyIdentifier List: %@", buf, 0x1Cu);
  }

  v12 = [identifiersCopy count];
  if (identifierCopy && v12)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v28 = __Block_byref_object_dispose__1;
    v29 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__1;
    v25 = __Block_byref_object_dispose__1;
    v26 = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __92__DAKeyManagementSession_revokeKeysWithIdentifiers_sharedByOwnerKeyWithIdentifier_callback___block_invoke;
    v20[3] = &unk_278F6FB00;
    v20[4] = buf;
    v13 = [(DAKeyPairingSession *)self getKeyPairingProxy:v20];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __92__DAKeyManagementSession_revokeKeysWithIdentifiers_sharedByOwnerKeyWithIdentifier_callback___block_invoke_31;
    v19[3] = &unk_278F703A0;
    v19[4] = buf;
    v19[5] = &v21;
    [v13 remoteTerminateKeys:identifiersCopy nodeGroupIdentifiers:0 treeGroupIdentifiers:0 adminKey:identifierCopy callback:v19];

    callbackCopy[2](callbackCopy, v22[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v21, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = KmlLogger(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession revokeKeysWithIdentifiers:sharedByOwnerKeyWithIdentifier:callback:]";
      *&buf[12] = 1024;
      *&buf[14] = 365;
      _os_log_impl(&dword_248BF3000, v14, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v15 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v31[0] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v18 = [v15 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v17];
    (callbackCopy)[2](callbackCopy, 0, v18);
  }
}

void __92__DAKeyManagementSession_revokeKeysWithIdentifiers_sharedByOwnerKeyWithIdentifier_callback___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyManagementSession revokeKeysWithIdentifiers:sharedByOwnerKeyWithIdentifier:callback:]_block_invoke";
    v15 = 1024;
    v16 = 374;
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

void __92__DAKeyManagementSession_revokeKeysWithIdentifiers_sharedByOwnerKeyWithIdentifier_callback___block_invoke_31(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = kmlErrorToDAError(a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (void)revokeNodesWithGroupIdentifiers:(id)identifiers treesWithGroupIdentifier:(id)identifier authorizedByKeyWithIdentifier:(id)withIdentifier callback:(id)callback
{
  v72[1] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  callbackCopy = callback;
  v12 = KmlLogger(callbackCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession revokeNodesWithGroupIdentifiers:treesWithGroupIdentifier:authorizedByKeyWithIdentifier:callback:]";
    *&buf[12] = 1024;
    *&buf[14] = 393;
    *&buf[18] = 2112;
    *&buf[20] = identifiersCopy;
    _os_log_impl(&dword_248BF3000, v12, OS_LOG_TYPE_INFO, "%s : %i : keyGroupIdentifier List: %@", buf, 0x1Cu);
  }

  v14 = KmlLogger(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession revokeNodesWithGroupIdentifiers:treesWithGroupIdentifier:authorizedByKeyWithIdentifier:callback:]";
    *&buf[12] = 1024;
    *&buf[14] = 394;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v14, OS_LOG_TYPE_INFO, "%s : %i : treeGroupIdentifier List: %@", buf, 0x1Cu);
  }

  v15 = [identifiersCopy count];
  if (v15)
  {
    if (!withIdentifierCopy)
    {
LABEL_27:
      v29 = KmlLogger(v15);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[DAKeyManagementSession revokeNodesWithGroupIdentifiers:treesWithGroupIdentifier:authorizedByKeyWithIdentifier:callback:]";
        *&buf[12] = 1024;
        *&buf[14] = 397;
        _os_log_impl(&dword_248BF3000, v29, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
      }

      v30 = MEMORY[0x277CCA9B8];
      v71 = *MEMORY[0x277CCA450];
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
      v72[0] = v31;
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:&v71 count:1];
      v33 = [v30 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v32];
      callbackCopy[2](callbackCopy, 0, v33);

      goto LABEL_36;
    }
  }

  else
  {
    v15 = [identifierCopy count];
    if (!withIdentifierCopy || !v15)
    {
      goto LABEL_27;
    }
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v16 = identifiersCopy;
  v17 = [v16 countByEnumeratingWithState:&v58 objects:v70 count:16];
  if (v17)
  {
    v18 = *v59;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v59 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v58 + 1) + 8 * i);
        v21 = [v20 length];
        if (v21 != 4)
        {
          v34 = KmlLogger(v21);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "[DAKeyManagementSession revokeNodesWithGroupIdentifiers:treesWithGroupIdentifier:authorizedByKeyWithIdentifier:callback:]";
            *&buf[12] = 1024;
            *&buf[14] = 406;
            *&buf[18] = 2112;
            *&buf[20] = v20;
            _os_log_impl(&dword_248BF3000, v34, OS_LOG_TYPE_ERROR, "%s : %i : Invalid node group identifier (%@) provided, must be 2 bytes (4 chars)", buf, 0x1Cu);
          }

          v35 = MEMORY[0x277CCA9B8];
          v68 = *MEMORY[0x277CCA450];
          v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
          v69 = v36;
          v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
          v38 = [v35 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v37];
          callbackCopy[2](callbackCopy, 0, v38);

          goto LABEL_36;
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v58 objects:v70 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v22 = identifierCopy;
  v23 = [v22 countByEnumeratingWithState:&v54 objects:v67 count:16];
  if (v23)
  {
    v24 = *v55;
    while (2)
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v55 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v54 + 1) + 8 * j);
        v27 = [v26 length];
        if (v27 != 4)
        {
          v39 = KmlLogger(v27);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "[DAKeyManagementSession revokeNodesWithGroupIdentifiers:treesWithGroupIdentifier:authorizedByKeyWithIdentifier:callback:]";
            *&buf[12] = 1024;
            *&buf[14] = 414;
            *&buf[18] = 2112;
            *&buf[20] = v26;
            _os_log_impl(&dword_248BF3000, v39, OS_LOG_TYPE_ERROR, "%s : %i : Invalid tree group identifier (%@) provided, must be 2 bytes (4 chars)", buf, 0x1Cu);
          }

          v40 = MEMORY[0x277CCA9B8];
          v65 = *MEMORY[0x277CCA450];
          v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
          v66 = v41;
          v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
          v43 = [v40 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v42];
          callbackCopy[2](callbackCopy, 0, v43);

          goto LABEL_36;
        }
      }

      v23 = [v22 countByEnumeratingWithState:&v54 objects:v67 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__1;
  v63 = __Block_byref_object_dispose__1;
  v64 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__1;
  v52 = __Block_byref_object_dispose__1;
  v53 = 0;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __122__DAKeyManagementSession_revokeNodesWithGroupIdentifiers_treesWithGroupIdentifier_authorizedByKeyWithIdentifier_callback___block_invoke;
  v47[3] = &unk_278F6FB00;
  v47[4] = buf;
  v28 = [(DAKeyPairingSession *)self getKeyPairingProxy:v47];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __122__DAKeyManagementSession_revokeNodesWithGroupIdentifiers_treesWithGroupIdentifier_authorizedByKeyWithIdentifier_callback___block_invoke_33;
  v46[3] = &unk_278F703A0;
  v46[4] = buf;
  v46[5] = &v48;
  [v28 remoteTerminateKeys:0 nodeGroupIdentifiers:v16 treeGroupIdentifiers:v22 adminKey:withIdentifierCopy callback:v46];

  callbackCopy[2](callbackCopy, v49[5], *(*&buf[8] + 40));
  _Block_object_dispose(&v48, 8);

  _Block_object_dispose(buf, 8);
LABEL_36:
}

void __122__DAKeyManagementSession_revokeNodesWithGroupIdentifiers_treesWithGroupIdentifier_authorizedByKeyWithIdentifier_callback___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyManagementSession revokeNodesWithGroupIdentifiers:treesWithGroupIdentifier:authorizedByKeyWithIdentifier:callback:]_block_invoke";
    v15 = 1024;
    v16 = 424;
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

void __122__DAKeyManagementSession_revokeNodesWithGroupIdentifiers_treesWithGroupIdentifier_authorizedByKeyWithIdentifier_callback___block_invoke_33(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = kmlErrorToDAError(a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (void)handleActivationForKeyWithIdentifier:(id)identifier callback:(id)callback
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  callbackCopy = callback;
  v7 = KmlLogger(callbackCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315650;
    v11 = "[DAKeyManagementSession handleActivationForKeyWithIdentifier:callback:]";
    v12 = 1024;
    v13 = 441;
    v14 = 2112;
    v15 = identifierCopy;
    _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_DEBUG, "%s : %i : %@", &v10, 0x1Cu);
  }

  v8 = kmlUtilDataForHexString(identifierCopy);
  v9 = SESEndpointNotifyPassAdded();
  callbackCopy[2](callbackCopy, v9);
}

- (void)hasUpgradeAvailableForKeyWithIdentifier:(id)identifier versionType:(unint64_t)type versions:(id)versions completionHandler:(id)handler
{
  v45[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  versionsCopy = versions;
  handlerCopy = handler;
  v35 = 0;
  v36 = &v35;
  v37 = 0x4010000000;
  v38 = &unk_248C35099;
  typeCopy = type;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__1;
  v33 = __Block_byref_object_dispose__1;
  v34 = 0;
  v13 = KmlLogger(handlerCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession hasUpgradeAvailableForKeyWithIdentifier:versionType:versions:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 458;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", buf, 0x1Cu);
  }

  if (identifierCopy && (v14 = [versionsCopy count]) != 0)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __105__DAKeyManagementSession_hasUpgradeAvailableForKeyWithIdentifier_versionType_versions_completionHandler___block_invoke;
    v28[3] = &unk_278F6FB00;
    v28[4] = &v29;
    v15 = [(DAKeyPairingSession *)self getKeyPairingProxy:v28];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __105__DAKeyManagementSession_hasUpgradeAvailableForKeyWithIdentifier_versionType_versions_completionHandler___block_invoke_34;
    v27[3] = &unk_278F703C8;
    v27[4] = &v29;
    v27[5] = &v35;
    [v15 hasUpgradeAvailableForKeyWithIdentifier:identifierCopy versionType:type versions:versionsCopy completionHandler:v27];

    v16 = v30[5];
    v17 = handlerCopy[2];
    v18 = *(v36 + 3);
    *buf = *(v36 + 2);
    *&buf[16] = v18;
    v17(handlerCopy, buf, v16);
  }

  else
  {
    v19 = KmlLogger(v14);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession hasUpgradeAvailableForKeyWithIdentifier:versionType:versions:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 460;
      _os_log_impl(&dword_248BF3000, v19, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v20 = v36;
    v21 = MEMORY[0x277CCA9B8];
    v44 = *MEMORY[0x277CCA450];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v45[0] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    v24 = [v21 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v23];
    v25 = handlerCopy[2];
    v26 = *(v20 + 3);
    *buf = *(v20 + 2);
    *&buf[16] = v26;
    v25(handlerCopy, buf, v24);
  }

  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);
}

void __105__DAKeyManagementSession_hasUpgradeAvailableForKeyWithIdentifier_versionType_versions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyManagementSession hasUpgradeAvailableForKeyWithIdentifier:versionType:versions:completionHandler:]_block_invoke";
    v15 = 1024;
    v16 = 466;
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

void __105__DAKeyManagementSession_hasUpgradeAvailableForKeyWithIdentifier_versionType_versions_completionHandler___block_invoke_34(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = KmlLogger(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v16 = "[DAKeyManagementSession hasUpgradeAvailableForKeyWithIdentifier:versionType:versions:completionHandler:]_block_invoke";
    v17 = 1024;
    v18 = 472;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_DEBUG, "%s : %i : Result: %@", buf, 0x1Cu);
  }

  v8 = kmlErrorToDAError(v5);
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  objc_msgSend_availableVersionUpgradeValue(v6);
  v11 = *(*(a1 + 40) + 8);
  v12 = v14;
  *(v11 + 32) = v13;
  *(v11 + 48) = v12;
}

- (void)upgradeKeyWithIdentifier:(id)identifier versionType:(unint64_t)type version:(unint64_t)version upgradeInformation:(id)information completionHandler:(id)handler
{
  v29[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  informationCopy = information;
  handlerCopy = handler;
  v15 = KmlLogger(handlerCopy);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession upgradeKeyWithIdentifier:versionType:version:upgradeInformation:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 486;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v15, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", buf, 0x1Cu);
  }

  if (identifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v26 = __Block_byref_object_dispose__1;
    v27 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __108__DAKeyManagementSession_upgradeKeyWithIdentifier_versionType_version_upgradeInformation_completionHandler___block_invoke;
    v24[3] = &unk_278F6FB00;
    v24[4] = buf;
    v17 = [(DAKeyPairingSession *)self getKeyPairingProxy:v24];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __108__DAKeyManagementSession_upgradeKeyWithIdentifier_versionType_version_upgradeInformation_completionHandler___block_invoke_36;
    v23[3] = &unk_278F6FB00;
    v23[4] = buf;
    [v17 upgradeKeyWithIdentifier:identifierCopy versionType:type version:version upgradeInformation:informationCopy completionHandler:v23];

    handlerCopy[2](handlerCopy, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v18 = KmlLogger(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession upgradeKeyWithIdentifier:versionType:version:upgradeInformation:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 488;
      _os_log_impl(&dword_248BF3000, v18, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v19 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA450];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v29[0] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v22 = [v19 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v21];
    (handlerCopy)[2](handlerCopy, v22);
  }
}

void __108__DAKeyManagementSession_upgradeKeyWithIdentifier_versionType_version_upgradeInformation_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyManagementSession upgradeKeyWithIdentifier:versionType:version:upgradeInformation:completionHandler:]_block_invoke";
    v15 = 1024;
    v16 = 495;
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

void __108__DAKeyManagementSession_upgradeKeyWithIdentifier_versionType_version_upgradeInformation_completionHandler___block_invoke_36(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315650;
    v9 = "[DAKeyManagementSession upgradeKeyWithIdentifier:versionType:version:upgradeInformation:completionHandler:]_block_invoke";
    v10 = 1024;
    v11 = 502;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_DEBUG, "%s : %i : Result: %@", &v8, 0x1Cu);
  }

  v5 = kmlErrorToDAError(v3);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)commitUpgradeForKeyWithIdentifier:(id)identifier versionType:(unint64_t)type version:(unint64_t)version completionHandler:(id)handler
{
  v26[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v12 = KmlLogger(handlerCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession commitUpgradeForKeyWithIdentifier:versionType:version:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 515;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v12, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", buf, 0x1Cu);
  }

  if (identifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v23 = __Block_byref_object_dispose__1;
    v24 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __98__DAKeyManagementSession_commitUpgradeForKeyWithIdentifier_versionType_version_completionHandler___block_invoke;
    v21[3] = &unk_278F6FB00;
    v21[4] = buf;
    v14 = [(DAKeyPairingSession *)self getKeyPairingProxy:v21];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __98__DAKeyManagementSession_commitUpgradeForKeyWithIdentifier_versionType_version_completionHandler___block_invoke_37;
    v20[3] = &unk_278F6FB00;
    v20[4] = buf;
    [v14 finalizeUpgradeForKeyWithIdentifier:identifierCopy versionType:type version:version revert:0 completionHandler:v20];

    handlerCopy[2](handlerCopy, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v15 = KmlLogger(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession commitUpgradeForKeyWithIdentifier:versionType:version:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 517;
      _os_log_impl(&dword_248BF3000, v15, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v16 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v26[0] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v19 = [v16 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v18];
    (handlerCopy)[2](handlerCopy, v19);
  }
}

void __98__DAKeyManagementSession_commitUpgradeForKeyWithIdentifier_versionType_version_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyManagementSession commitUpgradeForKeyWithIdentifier:versionType:version:completionHandler:]_block_invoke";
    v15 = 1024;
    v16 = 524;
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

void __98__DAKeyManagementSession_commitUpgradeForKeyWithIdentifier_versionType_version_completionHandler___block_invoke_37(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315650;
    v9 = "[DAKeyManagementSession commitUpgradeForKeyWithIdentifier:versionType:version:completionHandler:]_block_invoke";
    v10 = 1024;
    v11 = 531;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_DEBUG, "%s : %i : Result: %@", &v8, 0x1Cu);
  }

  v5 = kmlErrorToDAError(v3);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)revertUpgradeForKeyWithIdentifier:(id)identifier versionType:(unint64_t)type version:(unint64_t)version completionHandler:(id)handler
{
  v26[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v12 = KmlLogger(handlerCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession revertUpgradeForKeyWithIdentifier:versionType:version:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 543;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v12, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", buf, 0x1Cu);
  }

  if (identifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v23 = __Block_byref_object_dispose__1;
    v24 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __98__DAKeyManagementSession_revertUpgradeForKeyWithIdentifier_versionType_version_completionHandler___block_invoke;
    v21[3] = &unk_278F6FB00;
    v21[4] = buf;
    v14 = [(DAKeyPairingSession *)self getKeyPairingProxy:v21];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __98__DAKeyManagementSession_revertUpgradeForKeyWithIdentifier_versionType_version_completionHandler___block_invoke_38;
    v20[3] = &unk_278F6FB00;
    v20[4] = buf;
    [v14 finalizeUpgradeForKeyWithIdentifier:identifierCopy versionType:type version:version revert:1 completionHandler:v20];

    handlerCopy[2](handlerCopy, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v15 = KmlLogger(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession revertUpgradeForKeyWithIdentifier:versionType:version:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 545;
      _os_log_impl(&dword_248BF3000, v15, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v16 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v26[0] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v19 = [v16 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v18];
    (handlerCopy)[2](handlerCopy, v19);
  }
}

void __98__DAKeyManagementSession_revertUpgradeForKeyWithIdentifier_versionType_version_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyManagementSession revertUpgradeForKeyWithIdentifier:versionType:version:completionHandler:]_block_invoke";
    v15 = 1024;
    v16 = 552;
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

void __98__DAKeyManagementSession_revertUpgradeForKeyWithIdentifier_versionType_version_completionHandler___block_invoke_38(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315650;
    v9 = "[DAKeyManagementSession revertUpgradeForKeyWithIdentifier:versionType:version:completionHandler:]_block_invoke";
    v10 = 1024;
    v11 = 559;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_DEBUG, "%s : %i : Result: %@", &v8, 0x1Cu);
  }

  v5 = kmlErrorToDAError(v3);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)updateConfiguration:(id)configuration forKeyWithIdentifier:(id)identifier additionalConfigurationData:(id)data completionHandler:(id)handler
{
  v28[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  identifierCopy = identifier;
  dataCopy = data;
  handlerCopy = handler;
  v14 = KmlLogger(handlerCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession updateConfiguration:forKeyWithIdentifier:additionalConfigurationData:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 573;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v14, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", buf, 0x1Cu);
  }

  if (identifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v25 = __Block_byref_object_dispose__1;
    v26 = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __113__DAKeyManagementSession_updateConfiguration_forKeyWithIdentifier_additionalConfigurationData_completionHandler___block_invoke;
    v23[3] = &unk_278F6FB00;
    v23[4] = buf;
    v16 = [(DAKeyPairingSession *)self getKeyPairingProxy:v23];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __113__DAKeyManagementSession_updateConfiguration_forKeyWithIdentifier_additionalConfigurationData_completionHandler___block_invoke_39;
    v22[3] = &unk_278F6FB00;
    v22[4] = buf;
    [v16 updateConfiguration:configurationCopy forKeyWithIdentifier:identifierCopy additionalConfigurationData:dataCopy completionHandler:v22];

    handlerCopy[2](handlerCopy, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v17 = KmlLogger(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession updateConfiguration:forKeyWithIdentifier:additionalConfigurationData:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 575;
      _os_log_impl(&dword_248BF3000, v17, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v18 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v28[0] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v21 = [v18 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v20];
    (handlerCopy)[2](handlerCopy, v21);
  }
}

void __113__DAKeyManagementSession_updateConfiguration_forKeyWithIdentifier_additionalConfigurationData_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyManagementSession updateConfiguration:forKeyWithIdentifier:additionalConfigurationData:completionHandler:]_block_invoke";
    v15 = 1024;
    v16 = 582;
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

void __113__DAKeyManagementSession_updateConfiguration_forKeyWithIdentifier_additionalConfigurationData_completionHandler___block_invoke_39(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315650;
    v9 = "[DAKeyManagementSession updateConfiguration:forKeyWithIdentifier:additionalConfigurationData:completionHandler:]_block_invoke";
    v10 = 1024;
    v11 = 588;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_DEBUG, "%s : %i : Result: %@", &v8, 0x1Cu);
  }

  v5 = kmlErrorToDAError(v3);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
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
      v17 = __Block_byref_object_copy__1;
      v18 = __Block_byref_object_dispose__1;
      v19 = 0;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __81__DAKeyManagementSession_sendTrackingReceipt_otherJSONData_forKeyWithIdentifier___block_invoke;
      v13[3] = &unk_278F6FB00;
      v13[4] = &v14;
      v10 = [self getRemoteProxy:v13];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __81__DAKeyManagementSession_sendTrackingReceipt_otherJSONData_forKeyWithIdentifier___block_invoke_43;
      v12[3] = &unk_278F6FB00;
      v12[4] = &v14;
      [v10 consumeTrackingReceipt:v7 otherJSONData:receiptCopy forKeyWithIdentifier:dataCopy callback:v12];

      self = v15[5];
      _Block_object_dispose(&v14, 8);
    }

    else
    {
      [DAKeyManagementSession sendTrackingReceipt:v20 otherJSONData:v21 forKeyWithIdentifier:&v14];
      self = v14;
    }
  }

  return self;
}

void __81__DAKeyManagementSession_sendTrackingReceipt_otherJSONData_forKeyWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyManagementSession sendTrackingReceipt:otherJSONData:forKeyWithIdentifier:]_block_invoke";
    v15 = 1024;
    v16 = 608;
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

void __81__DAKeyManagementSession_sendTrackingReceipt_otherJSONData_forKeyWithIdentifier___block_invoke_43(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315650;
    v9 = "[DAKeyManagementSession sendTrackingReceipt:otherJSONData:forKeyWithIdentifier:]_block_invoke";
    v10 = 1024;
    v11 = 614;
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
    v14 = "[DAKeyManagementSession setTrackingReceipt:forKeyWithIdentifier:]";
    v15 = 1024;
    v16 = 628;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_ERROR, "%s : %i : Deprecated API, use setTrackingReceipt:decryptedDeviceData:forKeyWithIdentifier: instead", &v13, 0x12u);
  }

  v10 = KmlLogger(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315650;
    v14 = "[DAKeyManagementSession setTrackingReceipt:forKeyWithIdentifier:]";
    v15 = 1024;
    v16 = 629;
    v17 = 2112;
    v18 = identifierCopy;
    _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", &v13, 0x1Cu);
  }

  v11 = [(DAKeyManagementSession *)self sendTrackingReceipt:receiptCopy otherJSONData:0 forKeyWithIdentifier:identifierCopy];

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
    v18 = "[DAKeyManagementSession setTrackingReceipt:vehicleMobilizationData:forKeyWithIdentifier:]";
    v19 = 1024;
    v20 = 639;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_ERROR, "%s : %i : Deprecated API, use setTrackingReceipt:decryptedDeviceData:forKeyWithIdentifier: instead", &v17, 0x12u);
  }

  v13 = KmlLogger(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315650;
    v18 = "[DAKeyManagementSession setTrackingReceipt:vehicleMobilizationData:forKeyWithIdentifier:]";
    v19 = 1024;
    v20 = 640;
    v21 = 2112;
    v22 = identifierCopy;
    _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", &v17, 0x1Cu);
  }

  v14 = [DAUtils decryptVehicleMobilizationData:dataCopy forKeyWithIdentifier:identifierCopy];

  v15 = [(DAKeyManagementSession *)self sendTrackingReceipt:receiptCopy otherJSONData:v14 forKeyWithIdentifier:identifierCopy];

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
    v17 = "[DAKeyManagementSession setTrackingReceipt:slotIdentifier:confidentialMailboxData:ephemeralPublicKey:forKeyWithIdentifier:]";
    v18 = 1024;
    v19 = 655;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_ERROR, "%s : %i : Deprecated API, use setTrackingReceipt:decryptedDeviceData:forKeyWithIdentifier: instead", &v16, 0x12u);
  }

  v13 = KmlLogger(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v16 = 136315650;
    v17 = "[DAKeyManagementSession setTrackingReceipt:slotIdentifier:confidentialMailboxData:ephemeralPublicKey:forKeyWithIdentifier:]";
    v18 = 1024;
    v19 = 656;
    v20 = 2112;
    v21 = withIdentifierCopy;
    _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", &v16, 0x1Cu);
  }

  v14 = [(DAKeyManagementSession *)self sendTrackingReceipt:receiptCopy otherJSONData:0 forKeyWithIdentifier:withIdentifierCopy];

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
    v28 = "[DAKeyManagementSession endPointPrivacyDecryption:encryptedData:publicKey:callback:]";
    v29 = 1024;
    v30 = 667;
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
        v28 = "[DAKeyManagementSession endPointPrivacyDecryption:encryptedData:publicKey:callback:]";
        v29 = 1024;
        v30 = 682;
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
        v28 = "[DAKeyManagementSession endPointPrivacyDecryption:encryptedData:publicKey:callback:]";
        v29 = 1024;
        v30 = 679;
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
      v28 = "[DAKeyManagementSession endPointPrivacyDecryption:encryptedData:publicKey:callback:]";
      v29 = 1024;
      v30 = 669;
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

- (void)updateConfiguration:(id)configuration forKeyWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v27[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = KmlLogger(handlerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[DAKeyManagementSession updateConfiguration:forKeyWithIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 692;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_INFO, "%s : %i : This API is deprecated, please use updateConfiguration:forKeyWithIdentifier:additionalConfigurationData:completionHandler instead", buf, 0x12u);
  }

  v13 = KmlLogger(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession updateConfiguration:forKeyWithIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 693;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", buf, 0x1Cu);
  }

  if (configurationCopy && identifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v24 = __Block_byref_object_dispose__1;
    v25 = 0;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __85__DAKeyManagementSession_updateConfiguration_forKeyWithIdentifier_completionHandler___block_invoke;
    v22[3] = &unk_278F6FB00;
    v22[4] = buf;
    v15 = [(DAKeyPairingSession *)self getKeyPairingProxy:v22];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __85__DAKeyManagementSession_updateConfiguration_forKeyWithIdentifier_completionHandler___block_invoke_45;
    v21[3] = &unk_278F6FB00;
    v21[4] = buf;
    [v15 updateConfiguration:configurationCopy forKeyWithIdentifier:identifierCopy additionalConfigurationData:0 completionHandler:v21];

    handlerCopy[2](handlerCopy, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v16 = KmlLogger(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession updateConfiguration:forKeyWithIdentifier:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 695;
      _os_log_impl(&dword_248BF3000, v16, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v17 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v27[0] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v20 = [v17 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v19];
    (handlerCopy)[2](handlerCopy, v20);
  }
}

void __85__DAKeyManagementSession_updateConfiguration_forKeyWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyManagementSession updateConfiguration:forKeyWithIdentifier:completionHandler:]_block_invoke";
    v15 = 1024;
    v16 = 702;
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

void __85__DAKeyManagementSession_updateConfiguration_forKeyWithIdentifier_completionHandler___block_invoke_45(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315650;
    v9 = "[DAKeyManagementSession updateConfiguration:forKeyWithIdentifier:completionHandler:]_block_invoke";
    v10 = 1024;
    v11 = 708;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_DEBUG, "%s : %i : Result: %@", &v8, 0x1Cu);
  }

  v5 = kmlErrorToDAError(v3);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
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
    v15 = "[DAKeyManagementSession setTrackingReceipt:decryptedDeviceData:forKeyWithIdentifier:]";
    v16 = 1024;
    v17 = 721;
    v18 = 2112;
    v19 = identifierCopy;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", &v14, 0x1Cu);
  }

  v12 = [(DAKeyManagementSession *)self sendTrackingReceipt:receiptCopy otherJSONData:dataCopy forKeyWithIdentifier:identifierCopy];

  return v12;
}

- (void)requestBindingAttestationDataForKeyWithIdentifier:(id)identifier callback:(id)callback
{
  v28[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  callbackCopy = callback;
  v8 = KmlLogger(callbackCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession requestBindingAttestationDataForKeyWithIdentifier:callback:]";
    *&buf[12] = 1024;
    *&buf[14] = 732;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_INFO, "%s : %i : keyIdentifier: %@", buf, 0x1Cu);
  }

  if (identifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v25 = __Block_byref_object_dispose__1;
    v26 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__1;
    v22 = __Block_byref_object_dispose__1;
    v23 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __85__DAKeyManagementSession_requestBindingAttestationDataForKeyWithIdentifier_callback___block_invoke;
    v17[3] = &unk_278F6FB00;
    v17[4] = buf;
    v10 = [(DAKeyPairingSession *)self getKeyPairingProxy:v17];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __85__DAKeyManagementSession_requestBindingAttestationDataForKeyWithIdentifier_callback___block_invoke_46;
    v16[3] = &unk_278F703F0;
    v16[4] = buf;
    v16[5] = &v18;
    [v10 requestBindingAttestationDataForKeyWithIdentifier:identifierCopy callback:v16];

    callbackCopy[2](callbackCopy, v19[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = KmlLogger(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession requestBindingAttestationDataForKeyWithIdentifier:callback:]";
      *&buf[12] = 1024;
      *&buf[14] = 734;
      _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v12 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v28[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v15 = [v12 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v14];
    (callbackCopy)[2](callbackCopy, 0, v15);
  }
}

void __85__DAKeyManagementSession_requestBindingAttestationDataForKeyWithIdentifier_callback___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyManagementSession requestBindingAttestationDataForKeyWithIdentifier:callback:]_block_invoke";
    v15 = 1024;
    v16 = 743;
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

void __85__DAKeyManagementSession_requestBindingAttestationDataForKeyWithIdentifier_callback___block_invoke_46(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = kmlErrorToDAError(a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (void)setBindingAttestation:(id)attestation forKeyWithIdentifier:(id)identifier callback:(id)callback
{
  v25[1] = *MEMORY[0x277D85DE8];
  attestationCopy = attestation;
  identifierCopy = identifier;
  callbackCopy = callback;
  v11 = KmlLogger(callbackCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession setBindingAttestation:forKeyWithIdentifier:callback:]";
    *&buf[12] = 1024;
    *&buf[14] = 757;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_INFO, "%s : %i : keyIdentifier: %@", buf, 0x1Cu);
  }

  if (attestationCopy && identifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v22 = __Block_byref_object_dispose__1;
    v23 = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __78__DAKeyManagementSession_setBindingAttestation_forKeyWithIdentifier_callback___block_invoke;
    v20[3] = &unk_278F6FB00;
    v20[4] = buf;
    v13 = [(DAKeyPairingSession *)self getKeyPairingProxy:v20];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __78__DAKeyManagementSession_setBindingAttestation_forKeyWithIdentifier_callback___block_invoke_48;
    v19[3] = &unk_278F6FB00;
    v19[4] = buf;
    [v13 setBindingAttestation:attestationCopy forKeyWithIdentifier:identifierCopy callback:v19];

    callbackCopy[2](callbackCopy, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = KmlLogger(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession setBindingAttestation:forKeyWithIdentifier:callback:]";
      *&buf[12] = 1024;
      *&buf[14] = 759;
      _os_log_impl(&dword_248BF3000, v14, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v15 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v25[0] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v18 = [v15 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v17];
    (callbackCopy)[2](callbackCopy, v18);
  }
}

void __78__DAKeyManagementSession_setBindingAttestation_forKeyWithIdentifier_callback___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyManagementSession setBindingAttestation:forKeyWithIdentifier:callback:]_block_invoke";
    v15 = 1024;
    v16 = 767;
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

uint64_t __78__DAKeyManagementSession_setBindingAttestation_forKeyWithIdentifier_callback___block_invoke_48(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = kmlErrorToDAError(a2);

  return MEMORY[0x2821F96F8]();
}

- (void)getPreTrackRequestForInvitationWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v27[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = KmlLogger(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession getPreTrackRequestForInvitationWithIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 779;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_DEBUG, "%s : %i : invitationIdentifier: %@", buf, 0x1Cu);
  }

  if ([identifierCopy length])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v24 = __Block_byref_object_dispose__1;
    v25 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__1;
    v21 = __Block_byref_object_dispose__1;
    v22 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __90__DAKeyManagementSession_getPreTrackRequestForInvitationWithIdentifier_completionHandler___block_invoke;
    v16[3] = &unk_278F6FB00;
    v16[4] = buf;
    v9 = [(DAKeyPairingSession *)self getKeyPairingProxy:v16];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __90__DAKeyManagementSession_getPreTrackRequestForInvitationWithIdentifier_completionHandler___block_invoke_49;
    v15[3] = &unk_278F703A0;
    v15[4] = &v17;
    v15[5] = buf;
    [v9 getPreTrackRequestForInvitationWithIdentifier:identifierCopy completionHandler:v15];

    handlerCopy[2](handlerCopy, v18[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v17, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = KmlLogger(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession getPreTrackRequestForInvitationWithIdentifier:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 781;
      _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v11 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v27[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v14 = [v11 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v13];
    (handlerCopy)[2](handlerCopy, 0, v14);
  }
}

void __90__DAKeyManagementSession_getPreTrackRequestForInvitationWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyManagementSession getPreTrackRequestForInvitationWithIdentifier:completionHandler:]_block_invoke";
    v15 = 1024;
    v16 = 790;
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

void __90__DAKeyManagementSession_getPreTrackRequestForInvitationWithIdentifier_completionHandler___block_invoke_49(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v10 = a2;
  v6 = a3;
  v7 = kmlErrorToDAError(v6);

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)getPreTrackRequestForKeyWithIdentifier:(id)identifier callback:(id)callback
{
  v30[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  callbackCopy = callback;
  v8 = KmlLogger(callbackCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[DAKeyManagementSession getPreTrackRequestForKeyWithIdentifier:callback:]";
    *&buf[12] = 1024;
    *&buf[14] = 809;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_INFO, "%s : %i : This API is deprecated, use getPreTrackRequestForInvitationWithIdentifier: instead", buf, 0x12u);
  }

  v10 = KmlLogger(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession getPreTrackRequestForKeyWithIdentifier:callback:]";
    *&buf[12] = 1024;
    *&buf[14] = 810;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", buf, 0x1Cu);
  }

  if (identifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v27 = __Block_byref_object_dispose__1;
    v28 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__1;
    v24 = __Block_byref_object_dispose__1;
    v25 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __74__DAKeyManagementSession_getPreTrackRequestForKeyWithIdentifier_callback___block_invoke;
    v19[3] = &unk_278F6FB00;
    v19[4] = buf;
    v12 = [(DAKeyPairingSession *)self getKeyPairingProxy:v19];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __74__DAKeyManagementSession_getPreTrackRequestForKeyWithIdentifier_callback___block_invoke_50;
    v18[3] = &unk_278F703A0;
    v18[4] = &v20;
    v18[5] = buf;
    [v12 getPreTrackRequestForKeyWithIdentifier:identifierCopy callback:v18];

    callbackCopy[2](callbackCopy, v21[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v20, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v13 = KmlLogger(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession getPreTrackRequestForKeyWithIdentifier:callback:]";
      *&buf[12] = 1024;
      *&buf[14] = 812;
      _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v30[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v17 = [v14 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v16];
    (callbackCopy)[2](callbackCopy, 0, v17);
  }
}

void __74__DAKeyManagementSession_getPreTrackRequestForKeyWithIdentifier_callback___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyManagementSession getPreTrackRequestForKeyWithIdentifier:callback:]_block_invoke";
    v15 = 1024;
    v16 = 821;
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

void __74__DAKeyManagementSession_getPreTrackRequestForKeyWithIdentifier_callback___block_invoke_50(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v10 = a2;
  v6 = a3;
  v7 = kmlErrorToDAError(v6);

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)ppidRequestForInvitationWithIdentifier:(id)identifier fromMailboxIdentifier:(id)mailboxIdentifier completionHandler:(id)handler
{
  v33[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  mailboxIdentifierCopy = mailboxIdentifier;
  handlerCopy = handler;
  v11 = KmlLogger(handlerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[DAKeyManagementSession ppidRequestForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 835;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_INFO, "%s : %i : This method is deprecated, please use ppidRequestForInvitationWithIdentifier:completionHandler: instead", buf, 0x12u);
  }

  v13 = KmlLogger(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession ppidRequestForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 836;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_DEBUG, "%s : %i : invitationIdentifier: %@", buf, 0x1Cu);
  }

  if (identifierCopy | mailboxIdentifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v30 = __Block_byref_object_dispose__1;
    v31 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__1;
    v27 = __Block_byref_object_dispose__1;
    v28 = 0;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __105__DAKeyManagementSession_ppidRequestForInvitationWithIdentifier_fromMailboxIdentifier_completionHandler___block_invoke;
    v22[3] = &unk_278F6FB00;
    v22[4] = buf;
    v20 = [(DAKeyPairingSession *)self getKeyPairingProxy:v22];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __105__DAKeyManagementSession_ppidRequestForInvitationWithIdentifier_fromMailboxIdentifier_completionHandler___block_invoke_51;
    v21[3] = &unk_278F703A0;
    v21[4] = &v23;
    v21[5] = buf;
    [v20 ppidRequestForInvitationWithIdentifier:identifierCopy fromMailboxIdentifier:mailboxIdentifierCopy completionHandler:v21];

    handlerCopy[2](handlerCopy, v24[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v23, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v15 = KmlLogger(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession ppidRequestForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 838;
      _os_log_impl(&dword_248BF3000, v15, OS_LOG_TYPE_ERROR, "%s : %i : Null arguments provided", buf, 0x12u);
    }

    v16 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA450];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v33[0] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v19 = [v16 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v18];
    (handlerCopy)[2](handlerCopy, 0, v19);
  }
}

void __105__DAKeyManagementSession_ppidRequestForInvitationWithIdentifier_fromMailboxIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyManagementSession ppidRequestForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]_block_invoke";
    v15 = 1024;
    v16 = 847;
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

void __105__DAKeyManagementSession_ppidRequestForInvitationWithIdentifier_fromMailboxIdentifier_completionHandler___block_invoke_51(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v10 = a2;
  v6 = a3;
  v7 = kmlErrorToDAError(v6);

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)readerInformationForInvitationWithIdentifier:(id)identifier fromMailboxIdentifier:(id)mailboxIdentifier completionHandler:(id)handler
{
  v33[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  mailboxIdentifierCopy = mailboxIdentifier;
  handlerCopy = handler;
  v11 = KmlLogger(handlerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[DAKeyManagementSession readerInformationForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 861;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_INFO, "%s : %i : This method is deprecated, please use readerInformationForInvitationWithIdentifier:completionHandler: instead", buf, 0x12u);
  }

  v13 = KmlLogger(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession readerInformationForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 862;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_DEBUG, "%s : %i : invitationIdentifier: %@", buf, 0x1Cu);
  }

  if (identifierCopy | mailboxIdentifierCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v30 = __Block_byref_object_dispose__1;
    v31 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__1;
    v27 = __Block_byref_object_dispose__1;
    v28 = 0;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __111__DAKeyManagementSession_readerInformationForInvitationWithIdentifier_fromMailboxIdentifier_completionHandler___block_invoke;
    v22[3] = &unk_278F6FB00;
    v22[4] = buf;
    v20 = [(DAKeyPairingSession *)self getKeyPairingProxy:v22];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __111__DAKeyManagementSession_readerInformationForInvitationWithIdentifier_fromMailboxIdentifier_completionHandler___block_invoke_52;
    v21[3] = &unk_278F70418;
    v21[4] = &v23;
    v21[5] = buf;
    [v20 readerInformationForInvitationWithIdentifier:identifierCopy fromMailboxIdentifier:mailboxIdentifierCopy completionHandler:v21];

    handlerCopy[2](handlerCopy, v24[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v23, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v15 = KmlLogger(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession readerInformationForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 864;
      _os_log_impl(&dword_248BF3000, v15, OS_LOG_TYPE_ERROR, "%s : %i : Null arguments provided", buf, 0x12u);
    }

    v16 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA450];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v33[0] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v19 = [v16 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v18];
    (handlerCopy)[2](handlerCopy, 0, v19);
  }
}

void __111__DAKeyManagementSession_readerInformationForInvitationWithIdentifier_fromMailboxIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyManagementSession readerInformationForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]_block_invoke";
    v15 = 1024;
    v16 = 873;
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

void __111__DAKeyManagementSession_readerInformationForInvitationWithIdentifier_fromMailboxIdentifier_completionHandler___block_invoke_52(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v10 = a2;
  v6 = a3;
  v7 = kmlErrorToDAError(v6);

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)ppidRequestForInvitationWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v27[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = KmlLogger(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession ppidRequestForInvitationWithIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 888;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_DEBUG, "%s : %i : invitationIdentifier: %@", buf, 0x1Cu);
  }

  if ([identifierCopy length])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v24 = __Block_byref_object_dispose__1;
    v25 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__1;
    v21 = __Block_byref_object_dispose__1;
    v22 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __83__DAKeyManagementSession_ppidRequestForInvitationWithIdentifier_completionHandler___block_invoke;
    v16[3] = &unk_278F6FB00;
    v16[4] = buf;
    v9 = [(DAKeyPairingSession *)self getKeyPairingProxy:v16];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __83__DAKeyManagementSession_ppidRequestForInvitationWithIdentifier_completionHandler___block_invoke_54;
    v15[3] = &unk_278F703A0;
    v15[4] = &v17;
    v15[5] = buf;
    [v9 ppidRequestForInvitationWithIdentifier:identifierCopy fromMailboxIdentifier:0 completionHandler:v15];

    handlerCopy[2](handlerCopy, v18[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v17, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = KmlLogger(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession ppidRequestForInvitationWithIdentifier:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 890;
      _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_ERROR, "%s : %i : Null arguments provided", buf, 0x12u);
    }

    v11 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v27[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v14 = [v11 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v13];
    (handlerCopy)[2](handlerCopy, 0, v14);
  }
}

void __83__DAKeyManagementSession_ppidRequestForInvitationWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyManagementSession ppidRequestForInvitationWithIdentifier:completionHandler:]_block_invoke";
    v15 = 1024;
    v16 = 899;
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

void __83__DAKeyManagementSession_ppidRequestForInvitationWithIdentifier_completionHandler___block_invoke_54(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v10 = a2;
  v6 = a3;
  v7 = kmlErrorToDAError(v6);

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)setProductPlanIdentifier:(id)identifier forInvitationIdentifier:(id)invitationIdentifier completion:(id)completion
{
  v24[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  invitationIdentifierCopy = invitationIdentifier;
  completionCopy = completion;
  v11 = KmlLogger(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession setProductPlanIdentifier:forInvitationIdentifier:completion:]";
    *&buf[12] = 1024;
    *&buf[14] = 915;
    *&buf[18] = 2112;
    *&buf[20] = invitationIdentifierCopy;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_DEBUG, "%s : %i : invitationIdentifier: %@", buf, 0x1Cu);
  }

  if ([invitationIdentifierCopy length])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v21 = __Block_byref_object_dispose__1;
    v22 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __86__DAKeyManagementSession_setProductPlanIdentifier_forInvitationIdentifier_completion___block_invoke;
    v19[3] = &unk_278F6FB00;
    v19[4] = buf;
    v12 = [(DAKeyPairingSession *)self getKeyPairingProxy:v19];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __86__DAKeyManagementSession_setProductPlanIdentifier_forInvitationIdentifier_completion___block_invoke_55;
    v18[3] = &unk_278F6FB00;
    v18[4] = buf;
    [v12 setProductPlanIdentifier:identifierCopy forInvitationIdentifier:invitationIdentifierCopy completion:v18];

    completionCopy[2](completionCopy, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v13 = KmlLogger(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession setProductPlanIdentifier:forInvitationIdentifier:completion:]";
      *&buf[12] = 1024;
      *&buf[14] = 917;
      _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_ERROR, "%s : %i : Null arguments provided", buf, 0x12u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v24[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v17 = [v14 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v16];
    (completionCopy)[2](completionCopy, v17);
  }
}

void __86__DAKeyManagementSession_setProductPlanIdentifier_forInvitationIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyManagementSession setProductPlanIdentifier:forInvitationIdentifier:completion:]_block_invoke";
    v15 = 1024;
    v16 = 926;
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

uint64_t __86__DAKeyManagementSession_setProductPlanIdentifier_forInvitationIdentifier_completion___block_invoke_55(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = kmlErrorToDAError(a2);

  return MEMORY[0x2821F96F8]();
}

- (void)readerInformationForInvitationWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v27[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = KmlLogger(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession readerInformationForInvitationWithIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 938;
    *&buf[18] = 2112;
    *&buf[20] = identifierCopy;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_DEBUG, "%s : %i : invitationIdentifier: %@", buf, 0x1Cu);
  }

  if ([identifierCopy length])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v24 = __Block_byref_object_dispose__1;
    v25 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__1;
    v21 = __Block_byref_object_dispose__1;
    v22 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __89__DAKeyManagementSession_readerInformationForInvitationWithIdentifier_completionHandler___block_invoke;
    v16[3] = &unk_278F6FB00;
    v16[4] = buf;
    v9 = [(DAKeyPairingSession *)self getKeyPairingProxy:v16];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __89__DAKeyManagementSession_readerInformationForInvitationWithIdentifier_completionHandler___block_invoke_56;
    v15[3] = &unk_278F70418;
    v15[4] = &v17;
    v15[5] = buf;
    [v9 readerInformationForInvitationWithIdentifier:identifierCopy fromMailboxIdentifier:0 completionHandler:v15];

    handlerCopy[2](handlerCopy, v18[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v17, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = KmlLogger(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession readerInformationForInvitationWithIdentifier:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 940;
      _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v11 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v27[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v14 = [v11 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v13];
    (handlerCopy)[2](handlerCopy, 0, v14);
  }
}

void __89__DAKeyManagementSession_readerInformationForInvitationWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyManagementSession readerInformationForInvitationWithIdentifier:completionHandler:]_block_invoke";
    v15 = 1024;
    v16 = 949;
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

void __89__DAKeyManagementSession_readerInformationForInvitationWithIdentifier_completionHandler___block_invoke_56(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v10 = a2;
  v6 = a3;
  v7 = kmlErrorToDAError(v6);

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)getSecondFactorRequestForConfigs:(id)configs completionHandler:(id)handler
{
  v28[1] = *MEMORY[0x277D85DE8];
  configsCopy = configs;
  handlerCopy = handler;
  v8 = KmlLogger(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "[DAKeyManagementSession getSecondFactorRequestForConfigs:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 962;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_DEBUG, "%s : %i : ", buf, 0x12u);
  }

  if ([configsCopy count])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v24 = __Block_byref_object_copy__1;
    v25 = __Block_byref_object_dispose__1;
    v26 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__1;
    v21 = __Block_byref_object_dispose__1;
    v22 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __77__DAKeyManagementSession_getSecondFactorRequestForConfigs_completionHandler___block_invoke;
    v16[3] = &unk_278F6FB00;
    v16[4] = buf;
    v9 = [(DAKeyPairingSession *)self getKeyPairingProxy:v16];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __77__DAKeyManagementSession_getSecondFactorRequestForConfigs_completionHandler___block_invoke_57;
    v15[3] = &unk_278F70308;
    v15[4] = buf;
    v15[5] = &v17;
    [v9 getSecondFactorRequestForConfigs:configsCopy completionHandler:v15];

    handlerCopy[2](handlerCopy, v18[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v17, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = KmlLogger(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession getSecondFactorRequestForConfigs:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 964;
      _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_ERROR, "%s : %i : Null arguments provided", buf, 0x12u);
    }

    v11 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v28[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v14 = [v11 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v13];
    (handlerCopy)[2](handlerCopy, 0, v14);
  }
}

void __77__DAKeyManagementSession_getSecondFactorRequestForConfigs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "[DAKeyManagementSession getSecondFactorRequestForConfigs:completionHandler:]_block_invoke";
    v15 = 1024;
    v16 = 973;
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

void __77__DAKeyManagementSession_getSecondFactorRequestForConfigs_completionHandler___block_invoke_57(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = kmlErrorToDAError(a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (void)didStart:(BOOL)start
{
  startCopy = start;
  v11 = *MEMORY[0x277D85DE8];
  v5 = KmlLogger(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v8 = "[DAKeyManagementSession didStart:]";
    v9 = 1024;
    v10 = 987;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_DEBUG, "%s : %i : ", buf, 0x12u);
  }

  v6.receiver = self;
  v6.super_class = DAKeyManagementSession;
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
    v8 = "[DAKeyManagementSession didEnd:]";
    v9 = 1024;
    v10 = 993;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_DEBUG, "%s : %i : ", buf, 0x12u);
  }

  v6.receiver = self;
  v6.super_class = DAKeyManagementSession;
  [(DASession *)&v6 didEnd:endCopy];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = DAKeyManagementSession;
  [(DASession *)&v3 encodeWithCoder:coder];
}

- (DAKeyManagementSession)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = DAKeyManagementSession;
  return [(DASession *)&v4 initWithCoder:coder];
}

- (void)listReceivedSharingInvitationsWithCallback:(id)callback
{
  v22 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  v5 = KmlLogger(callbackCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "[DAKeyManagementSession listReceivedSharingInvitationsWithCallback:]";
    *&buf[12] = 1024;
    *&buf[14] = 191;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_DEBUG, "%s : %i : ", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  OUTLINED_FUNCTION_3_1();
  v19 = v6;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = v7;
  OUTLINED_FUNCTION_2_1();
  v15 = v8;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__DAKeyManagementSession_listReceivedSharingInvitationsWithCallback___block_invoke;
  v11[3] = &unk_278F6FB00;
  v11[4] = buf;
  v9 = [(DAKeyPairingSession *)self getKeyPairingProxy:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__DAKeyManagementSession_listReceivedSharingInvitationsWithCallback___block_invoke_21;
  v10[3] = &unk_278F70308;
  v10[4] = buf;
  v10[5] = &v12;
  [v9 listReceivedSharingInvitationsWithCallback:v10];

  callbackCopy[2](callbackCopy, v13[5], *(*&buf[8] + 40));
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(buf, 8);
}

- (void)cancelAllFriendInvitationsWithCompletionHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = KmlLogger(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_4_1();
    *(&v27 + 6) = 231;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_DEBUG, "%s : %i : ", buf, 0x12u);
  }

  *buf = 0;
  *&v27 = buf;
  *(&v27 + 1) = 0x3032000000;
  OUTLINED_FUNCTION_3_1();
  v28 = v6;
  OUTLINED_FUNCTION_0_1();
  v22 = 3221225472;
  v23 = __74__DAKeyManagementSession_cancelAllFriendInvitationsWithCompletionHandler___block_invoke;
  v24 = &unk_278F6FB00;
  v25 = buf;
  v7 = [(DAKeyPairingSession *)self getKeyPairingProxy:?];
  OUTLINED_FUNCTION_1_1();
  v18 = __74__DAKeyManagementSession_cancelAllFriendInvitationsWithCompletionHandler___block_invoke_23;
  v19 = &unk_278F6FB00;
  v20 = buf;
  [v8 cancelAllFriendInvitationsWithCompletionHandler:v17];

  v9 = handlerCopy[2](handlerCopy, *(v27 + 40));
  OUTLINED_FUNCTION_5_1(v9, v10, v11, v12, v13, v14, v15, v16, v17[0], v17[1], v18, v19, v20, v21, v22, v23, v24, v25);
}

- (void)removeSharingInvitationWithId:(id)id completionHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  idCopy = id;
  handlerCopy = handler;
  v8 = KmlLogger(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_4_1();
    *(&v30 + 6) = 247;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_DEBUG, "%s : %i : ", buf, 0x12u);
  }

  *buf = 0;
  *&v30 = buf;
  *(&v30 + 1) = 0x3032000000;
  OUTLINED_FUNCTION_2_1();
  v31 = v9;
  OUTLINED_FUNCTION_0_1();
  v25 = 3221225472;
  v26 = __74__DAKeyManagementSession_removeSharingInvitationWithId_completionHandler___block_invoke;
  v27 = &unk_278F6FB00;
  v28 = buf;
  v10 = [(DAKeyPairingSession *)self getKeyPairingProxy:?];
  OUTLINED_FUNCTION_1_1();
  v21 = __74__DAKeyManagementSession_removeSharingInvitationWithId_completionHandler___block_invoke_24;
  v22 = &unk_278F6FB00;
  v23 = buf;
  [v11 removeSharingInvitationWithId:idCopy completionHandler:v20];

  v12 = handlerCopy[2](handlerCopy, *(v30 + 40));
  OUTLINED_FUNCTION_5_1(v12, v13, v14, v15, v16, v17, v18, v19, v20[0], v20[1], v21, v22, v23, v24, v25, v26, v27, v28);
}

- (void)sendTrackingReceipt:(void *)a1 otherJSONData:(void *)a2 forKeyWithIdentifier:(uint64_t *)a3 .cold.1(void *a1, void *a2, uint64_t *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = KmlLogger(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315394;
    v11 = "[DAKeyManagementSession sendTrackingReceipt:otherJSONData:forKeyWithIdentifier:]";
    v12 = 1024;
    v13 = 602;
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