@interface MFAATokenManager
+ (BOOL)isTokenValidForFeatures:(unint64_t)features token:(id)token;
+ (id)sharedManager;
- (MFAATokenManager)init;
- (id)_init;
- (void)_init;
- (void)confirmActivationForAuthToken:(id)token withUUID:(id)d completionHandler:(id)handler;
- (void)requestActivationForAuthToken:(id)token withUUID:(id)d completionHandler:(id)handler;
- (void)requestMetadataForAuthToken:(id)token withUUID:(id)d requestedLocale:(id)locale requestInfo:(id)info completionHandler:(id)handler;
@end

@implementation MFAATokenManager

- (MFAATokenManager)init
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
    v3 = gNumLogObjects < 3;
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
    v5 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(MFAATokenManager *)self _init];
  }

  v11.receiver = self;
  v11.super_class = MFAATokenManager;
  v6 = [(MFAATokenManager *)&v11 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.MFAAuthentication.MFAANetwork"];
    xpcConnection = v6->_xpcConnection;
    v6->_xpcConnection = v7;

    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286857088];
    [(NSXPCConnection *)v6->_xpcConnection setRemoteObjectInterface:v9];

    [(NSXPCConnection *)v6->_xpcConnection resume];
  }

  return v6;
}

- (void)requestMetadataForAuthToken:(id)token withUUID:(id)d requestedLocale:(id)locale requestInfo:(id)info completionHandler:(id)handler
{
  v45 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  dCopy = d;
  localeCopy = locale;
  infoCopy = info;
  handlerCopy = handler;
  if (gLogObjects)
  {
    v17 = gNumLogObjects < 3;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v19 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  else
  {
    v19 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25627E000, v19, OS_LOG_TYPE_DEFAULT, "Processing request for token metadata...", buf, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 3)
  {
    v20 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v20 = MEMORY[0x277D86220];
    v21 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [tokenCopy length];
    localeIdentifier = [localeCopy localeIdentifier];
    v24 = localeIdentifier;
    *buf = 138479107;
    v25 = "YES";
    v35 = 2048;
    v34 = tokenCopy;
    if (!handlerCopy)
    {
      v25 = "NO";
    }

    v36 = v22;
    v37 = 2112;
    v38 = dCopy;
    v39 = 2112;
    v40 = localeIdentifier;
    v41 = 2113;
    v42 = infoCopy;
    v43 = 2080;
    v44 = v25;
    _os_log_impl(&dword_25627E000, v20, OS_LOG_TYPE_DEFAULT, "token: %{private}@, token.length: %lu, uuid: %@, requestedLocale: %@, requestInfo: %{private}@, completionHandler: %s", buf, 0x3Eu);
  }

  if (handlerCopy)
  {
    xpcConnection = [(MFAATokenManager *)self xpcConnection];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __103__MFAATokenManager_requestMetadataForAuthToken_withUUID_requestedLocale_requestInfo_completionHandler___block_invoke;
    v31[3] = &unk_279831188;
    v27 = handlerCopy;
    v32 = v27;
    v28 = [xpcConnection remoteObjectProxyWithErrorHandler:v31];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __103__MFAATokenManager_requestMetadataForAuthToken_withUUID_requestedLocale_requestInfo_completionHandler___block_invoke_32;
    v29[3] = &unk_2798311B0;
    v30 = v27;
    [v28 requestMetadataForToken:tokenCopy withUUID:dCopy requestedLocale:localeCopy requestInfo:infoCopy withReply:v29];
  }
}

void __103__MFAATokenManager_requestMetadataForAuthToken_withUUID_requestedLocale_requestInfo_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 3;
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
    v6 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __103__MFAATokenManager_requestMetadataForAuthToken_withUUID_requestedLocale_requestInfo_completionHandler___block_invoke_cold_2();
  }

  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCA9B8] MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-4];
  (*(v7 + 16))(v7, 0, 0, 0, v8);
}

- (void)requestActivationForAuthToken:(id)token withUUID:(id)d completionHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  dCopy = d;
  handlerCopy = handler;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 3;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25627E000, v13, OS_LOG_TYPE_DEFAULT, "Processing request for token activation...", buf, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 3)
  {
    v14 = *(gLogObjects + 16);
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

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = "YES";
    *buf = 138478339;
    v25 = tokenCopy;
    if (!handlerCopy)
    {
      v16 = "NO";
    }

    v26 = 2112;
    v27 = dCopy;
    v28 = 2080;
    v29 = v16;
    _os_log_impl(&dword_25627E000, v14, OS_LOG_TYPE_DEFAULT, "token: %{private}@, uuid: %@, completionHandler: %s", buf, 0x20u);
  }

  if (handlerCopy)
  {
    xpcConnection = [(MFAATokenManager *)self xpcConnection];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __77__MFAATokenManager_requestActivationForAuthToken_withUUID_completionHandler___block_invoke;
    v22[3] = &unk_279831188;
    v18 = handlerCopy;
    v23 = v18;
    v19 = [xpcConnection remoteObjectProxyWithErrorHandler:v22];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __77__MFAATokenManager_requestActivationForAuthToken_withUUID_completionHandler___block_invoke_34;
    v20[3] = &unk_2798311D8;
    v21 = v18;
    [v19 requestActivationForToken:tokenCopy withUUID:dCopy withReply:v20];
  }
}

void __77__MFAATokenManager_requestActivationForAuthToken_withUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 3;
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
    v6 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __103__MFAATokenManager_requestMetadataForAuthToken_withUUID_requestedLocale_requestInfo_completionHandler___block_invoke_cold_2();
  }

  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCA9B8] MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-4];
  (*(v7 + 16))(v7, 0, v8);
}

- (void)confirmActivationForAuthToken:(id)token withUUID:(id)d completionHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  dCopy = d;
  handlerCopy = handler;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 3;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25627E000, v13, OS_LOG_TYPE_DEFAULT, "Processing token confirmation...", buf, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 3)
  {
    v14 = *(gLogObjects + 16);
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

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = "YES";
    *buf = 138478339;
    v25 = tokenCopy;
    if (!handlerCopy)
    {
      v16 = "NO";
    }

    v26 = 2112;
    v27 = dCopy;
    v28 = 2080;
    v29 = v16;
    _os_log_impl(&dword_25627E000, v14, OS_LOG_TYPE_DEFAULT, "token: %{private}@, uuid: %@, completionHandler: %s", buf, 0x20u);
  }

  if (handlerCopy)
  {
    xpcConnection = [(MFAATokenManager *)self xpcConnection];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __77__MFAATokenManager_confirmActivationForAuthToken_withUUID_completionHandler___block_invoke;
    v22[3] = &unk_279831188;
    v18 = handlerCopy;
    v23 = v18;
    v19 = [xpcConnection remoteObjectProxyWithErrorHandler:v22];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __77__MFAATokenManager_confirmActivationForAuthToken_withUUID_completionHandler___block_invoke_36;
    v20[3] = &unk_279831188;
    v21 = v18;
    [v19 confirmActivationForToken:tokenCopy withUUID:dCopy withReply:v20];
  }
}

void __77__MFAATokenManager_confirmActivationForAuthToken_withUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 3;
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
    v6 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __103__MFAATokenManager_requestMetadataForAuthToken_withUUID_requestedLocale_requestInfo_completionHandler___block_invoke_cold_2();
  }

  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCA9B8] MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-4];
  (*(v7 + 16))(v7, v8);
}

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__MFAATokenManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_once != -1)
  {
    dispatch_once(&sharedManager_once, block);
  }

  v2 = sharedManager_sharedInstance;

  return v2;
}

uint64_t __33__MFAATokenManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedInstance = [objc_alloc(*(a1 + 32)) _init];

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)isTokenValidForFeatures:(unint64_t)features token:(id)token
{
  v29 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  if (tokenCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = tokenCopy;
    v18[0] = [tokenCopy bytes];
    v18[1] = [tokenCopy length];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __50__MFAATokenManager_isTokenValidForFeatures_token___block_invoke;
    v17[3] = &unk_279831220;
    v17[4] = &v19;
    v17[5] = &v23;
    DERDecodeSequenceWithBlock(v18, v17);
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v7 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      featuresCopy = features;
      _os_log_impl(&dword_25627E000, v7, OS_LOG_TYPE_DEFAULT, "features: 0x%016lX", buf, 0xCu);
    }

    if (gLogObjects && gNumLogObjects >= 3)
    {
      v9 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v9 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v20 + 24))
      {
        v11 = "YES";
      }

      else
      {
        v11 = "NO";
      }

      *buf = 136315138;
      featuresCopy = v11;
      _os_log_impl(&dword_25627E000, v9, OS_LOG_TYPE_DEFAULT, "foundProductCapabilities: %s", buf, 0xCu);
    }

    if (*(v20 + 24) == 1)
    {
      v12 = (features & ~v24[3]) == 0;
    }

    else
    {
      v12 = features < 2;
    }

    if (gLogObjects && gNumLogObjects >= 3)
    {
      v13 = *(gLogObjects + 16);
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
      v15 = "NO";
      if (v12)
      {
        v15 = "YES";
      }

      *buf = 136315138;
      featuresCopy = v15;
      _os_log_impl(&dword_25627E000, v13, OS_LOG_TYPE_DEFAULT, "tokenValidForFeatures: %s", buf, 0xCu);
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v12;
}

uint64_t __50__MFAATokenManager_isTokenValidForFeatures_token___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*a2 != 0x2000000000000010)
  {
    return 3;
  }

  v20 = -1431655766;
  memset(v19, 170, sizeof(v19));
  v18 = 0xAAAAAAAAAAAAAAAALL;
  if (DERDecodeSeqContentInit(a2 + 1, &v19[2]))
  {
    return 3;
  }

  DERDecodeSeqNext(&v19[2], &v18);
  result = OUTLINED_FUNCTION_4();
  if (v4 || v18 != 2)
  {
    return result;
  }

  if (DERParseInteger(v19, &v20))
  {
    return 3;
  }

  if (v20 != 2)
  {
    return 0;
  }

  v5 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 3)
  {
    v6 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7();
      v23 = v5;
      OUTLINED_FUNCTION_5(&dword_25627E000, MEMORY[0x277D86220], v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }

    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_25627E000, v6, OS_LOG_TYPE_DEBUG, "Found SMFiTokenPayload!", buf, 2u);
  }

  DERDecodeSeqNext(&v19[2], &v18);
  result = OUTLINED_FUNCTION_4();
  if (!v8 && v18 == 2)
  {
    if (!DERParseInteger(v19, &v20))
    {
      v9 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v10 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_7();
          v23 = v9;
          OUTLINED_FUNCTION_5(&dword_25627E000, MEMORY[0x277D86220], v15, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }

        v10 = MEMORY[0x277D86220];
        v11 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v22 = v20;
        _os_log_impl(&dword_25627E000, v10, OS_LOG_TYPE_INFO, "SMFiTokenPayload version: %u", buf, 8u);
      }

      if (v20 == 1)
      {
        DERDecodeSeqNext(&v19[2], &v18);
        result = OUTLINED_FUNCTION_4();
        if (!v12 && v18 == 4)
        {
          DERDecodeItem(v19, &v18);
          result = OUTLINED_FUNCTION_4();
          if (!v13 && v18 == 0x2000000000000011)
          {
            v16[0] = MEMORY[0x277D85DD0];
            v16[1] = 3221225472;
            v16[2] = __50__MFAATokenManager_isTokenValidForFeatures_token___block_invoke_40;
            v16[3] = &unk_279831220;
            v17 = *(a1 + 32);
            DERDecodeSequenceContentWithBlock(v19, v16);
            return 0;
          }
        }

        return result;
      }
    }

    return 3;
  }

  return result;
}

uint64_t __50__MFAATokenManager_isTokenValidForFeatures_token___block_invoke_40(uint64_t a1, void *a2, _BYTE *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*a2 != 0x2000000000000010)
  {
    return 3;
  }

  v25 = -1431655766;
  memset(v24, 170, sizeof(v24));
  v23 = 0xAAAAAAAAAAAAAAAALL;
  if (DERDecodeSeqContentInit(a2 + 1, &v24[2]))
  {
    return 3;
  }

  DERDecodeSeqNext(&v24[2], &v23);
  result = OUTLINED_FUNCTION_4();
  if (v6 || v23 != 2)
  {
    return result;
  }

  if (DERParseInteger(v24, &v25))
  {
    return 3;
  }

  if (v25 != 202)
  {
    return 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  *a3 = 1;
  v7 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 3)
  {
    v8 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_3();
      v28 = v7;
      OUTLINED_FUNCTION_5(&dword_25627E000, MEMORY[0x277D86220], v20, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }

    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_25627E000, v8, OS_LOG_TYPE_DEBUG, "Found SMFiProductCapabilities!", buf, 2u);
  }

  DERDecodeSeqNext(&v24[2], &v23);
  result = OUTLINED_FUNCTION_4();
  if (!v10 && v23 == 2)
  {
    if (!DERParseInteger(v24, &v25))
    {
      v11 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v12 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_3();
          v28 = v11;
          OUTLINED_FUNCTION_5(&dword_25627E000, MEMORY[0x277D86220], v21, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }

        v12 = MEMORY[0x277D86220];
        v13 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v27) = v25;
        _os_log_impl(&dword_25627E000, v12, OS_LOG_TYPE_INFO, "SMFiProductCapabilities version: %u", buf, 8u);
      }

      if (v25 == 1)
      {
        DERDecodeSeqNext(&v24[2], &v23);
        result = OUTLINED_FUNCTION_4();
        if (v14)
        {
          return result;
        }

        if (v23 != 4 || v24[1] != 8)
        {
          return result;
        }

        *(*(*(a1 + 40) + 8) + 24) = *v24[0];
        *(*(*(a1 + 40) + 8) + 24) = bswap64(*(*(*(a1 + 40) + 8) + 24));
        v16 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 3)
        {
          v17 = *(gLogObjects + 16);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_3();
            v28 = v16;
            OUTLINED_FUNCTION_5(&dword_25627E000, MEMORY[0x277D86220], v22, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
          }

          v17 = MEMORY[0x277D86220];
          v18 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(*(*(a1 + 40) + 8) + 24);
          *buf = 134217984;
          v27 = v19;
          _os_log_impl(&dword_25627E000, v17, OS_LOG_TYPE_DEFAULT, "productCapabilities: 0x%016llX", buf, 0xCu);
        }

        return 0;
      }
    }

    return 3;
  }

  return result;
}

- (void)_init
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_25627E000, a2, OS_LOG_TYPE_DEBUG, "Initializing %@...", v5, 0xCu);
}

@end