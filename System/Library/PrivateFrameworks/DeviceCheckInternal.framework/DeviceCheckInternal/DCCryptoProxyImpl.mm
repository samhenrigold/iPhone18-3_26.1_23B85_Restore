@interface DCCryptoProxyImpl
- (void)_fetchPublicKey:(id)key;
- (void)baaSignatureForData:(id)data completion:(id)completion;
- (void)baaSignaturesForData:(id)data completion:(id)completion;
- (void)fetchOpaqueBlobWithContext:(id)context completion:(id)completion;
@end

@implementation DCCryptoProxyImpl

- (void)fetchOpaqueBlobWithContext:(id)context completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  if (DCInternalLogSystem_onceToken_3 != -1)
  {
    [DCCryptoProxyImpl fetchOpaqueBlobWithContext:completion:];
  }

  v8 = DCInternalLogSystem_log_3;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 0;
    v10 = 0;
    v11 = 47;
    do
    {
      v12 = &aLibraryCachesC_3[v9];
      if (v11 == 47)
      {
        v10 = &aLibraryCachesC_3[v9];
      }

      v11 = v12[1];
      if (!v12[1])
      {
        break;
      }
    }

    while (v9++ < 0xFFF);
    if (v10)
    {
      v14 = v10 + 1;
    }

    else
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Interfaces/DCCryptoProxyImpl.m";
    }

    clientAppID = [contextCopy clientAppID];
    *buf = 136315650;
    v22 = v14;
    v23 = 1024;
    v24 = 22;
    v25 = 2112;
    v26 = clientAppID;
    _os_log_impl(&dword_2488FB000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Generating encrypted certificate. { clientAppID=%@ }", buf, 0x1Cu);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __59__DCCryptoProxyImpl_fetchOpaqueBlobWithContext_completion___block_invoke;
  v18[3] = &unk_278F59CB0;
  v19 = contextCopy;
  v20 = completionCopy;
  v16 = completionCopy;
  v17 = contextCopy;
  [(DCCryptoProxyImpl *)self _fetchPublicKey:v18];
}

void __59__DCCryptoProxyImpl_fetchOpaqueBlobWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[DCCertificateGenerator alloc] initWithContext:*(a1 + 32) publicKey:v3];

  [(DCCertificateGenerator *)v4 generateEncryptedCertificateChainWithCompletion:*(a1 + 40)];
}

- (void)_fetchPublicKey:(id)key
{
  keyCopy = key;
  v4 = +[DCAssetFetcher sharedFetcher];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__DCCryptoProxyImpl__fetchPublicKey___block_invoke;
  v6[3] = &unk_278F59CD8;
  v7 = keyCopy;
  v5 = keyCopy;
  [v4 fetchPublicKeyAssetWithCompletion:v6];
}

void __37__DCCryptoProxyImpl__fetchPublicKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 publicKey];

  if (v7)
  {
    if (DCInternalLogSystem_onceToken_3 != -1)
    {
      [DCCryptoProxyImpl fetchOpaqueBlobWithContext:completion:];
    }

    v8 = DCInternalLogSystem_log_3;
    if (os_log_type_enabled(DCInternalLogSystem_log_3, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v10 = 0;
      v11 = 47;
      do
      {
        v12 = &aLibraryCachesC_3[v9];
        if (v11 == 47)
        {
          v10 = &aLibraryCachesC_3[v9];
        }

        v11 = v12[1];
        if (!v12[1])
        {
          break;
        }

        v13 = v9++ >= 0xFFF;
      }

      while (!v13);
      if (v10)
      {
        v14 = v10 + 1;
      }

      else
      {
        v14 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Interfaces/DCCryptoProxyImpl.m";
      }

      v25 = 136315394;
      v26 = v14;
      v27 = 1024;
      v28 = 52;
      _os_log_impl(&dword_2488FB000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Refreshed mobile asset and fetched remote public key.", &v25, 0x12u);
    }

    v15 = *(a1 + 32);
    v16 = [v5 publicKey];
  }

  else
  {
    if (DCInternalLogSystem_onceToken_3 != -1)
    {
      [DCCryptoProxyImpl fetchOpaqueBlobWithContext:completion:];
    }

    v17 = DCInternalLogSystem_log_3;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 0;
      v19 = 0;
      v20 = 47;
      do
      {
        v21 = &aLibraryCachesC_3[v18];
        if (v20 == 47)
        {
          v19 = &aLibraryCachesC_3[v18];
        }

        v20 = v21[1];
        if (!v21[1])
        {
          break;
        }

        v13 = v18++ >= 0xFFF;
      }

      while (!v13);
      if (v19)
      {
        v22 = v19 + 1;
      }

      else
      {
        v22 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Interfaces/DCCryptoProxyImpl.m";
      }

      v23 = [v6 localizedDescription];
      v25 = 136315650;
      v26 = v22;
      v27 = 1024;
      v28 = 55;
      v29 = 2112;
      v30 = v23;
      _os_log_impl(&dword_2488FB000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to fetch mobile asset, using locally cached public key. { error=%@ }", &v25, 0x1Cu);
    }

    v15 = *(a1 + 32);
    v16 = [MEMORY[0x277CBEA90] dataWithBytes:&fallback_server_pubkey length:65];
  }

  v24 = v16;
  (*(v15 + 16))(v15, v16);
}

- (void)baaSignatureForData:(id)data completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  if (DCInternalLogSystem_onceToken_3 != -1)
  {
    [DCCryptoProxyImpl fetchOpaqueBlobWithContext:completion:];
  }

  v7 = DCInternalLogSystem_log_3;
  if (os_log_type_enabled(DCInternalLogSystem_log_3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 0;
    v9 = 0;
    v10 = 47;
    do
    {
      v11 = &aLibraryCachesC_3[v8];
      if (v10 == 47)
      {
        v9 = &aLibraryCachesC_3[v8];
      }

      v10 = v11[1];
      if (!v11[1])
      {
        break;
      }
    }

    while (v8++ < 0xFFF);
    if (v9)
    {
      v13 = v9 + 1;
    }

    else
    {
      v13 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Interfaces/DCCryptoProxyImpl.m";
    }

    v15 = 136315394;
    v16 = v13;
    v17 = 1024;
    v18 = 63;
    _os_log_impl(&dword_2488FB000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Signing data with BAA certificates.", &v15, 0x12u);
  }

  v14 = +[DCBAASigner sharedSigner];
  [v14 signatureForData:dataCopy completion:completionCopy];
}

- (void)baaSignaturesForData:(id)data completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  if (DCInternalLogSystem_onceToken_3 != -1)
  {
    [DCCryptoProxyImpl fetchOpaqueBlobWithContext:completion:];
  }

  v7 = DCInternalLogSystem_log_3;
  if (os_log_type_enabled(DCInternalLogSystem_log_3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 0;
    v9 = 0;
    v10 = 47;
    do
    {
      v11 = &aLibraryCachesC_3[v8];
      if (v10 == 47)
      {
        v9 = &aLibraryCachesC_3[v8];
      }

      v10 = v11[1];
      if (!v11[1])
      {
        break;
      }
    }

    while (v8++ < 0xFFF);
    if (v9)
    {
      v13 = v9 + 1;
    }

    else
    {
      v13 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Interfaces/DCCryptoProxyImpl.m";
    }

    v15 = 136315394;
    v16 = v13;
    v17 = 1024;
    v18 = 78;
    _os_log_impl(&dword_2488FB000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Signing dictionary with BAA certificates.", &v15, 0x12u);
  }

  v14 = +[DCBAASigner sharedSigner];
  [v14 signaturesForData:dataCopy completion:completionCopy];
}

@end