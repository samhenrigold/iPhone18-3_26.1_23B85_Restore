@interface POAuthenticationProcess
- (BOOL)extractNewUserValuesFromTokens:(id)tokens deviceConfiguration:(id)configuration loginUserName:(id)name returningName:(id *)returningName userName:(id *)userName error:(id *)error;
- (BOOL)validateIdToken:(id)token context:(id)context key:(__SecKey *)key;
- (BOOL)validatePartyUInfo:(id)info context:(id)context;
- (BOOL)validatePartyVInfo:(id)info context:(id)context publicKey:(__SecKey *)key;
- (BOOL)validateWSTrustMexResponseWithContext:(id)context response:(id)response;
- (POAuthenticationProcess)init;
- (__SecKey)findKey:(id)key inJWKSData:(id)data rootCertificates:(id)certificates;
- (id)createAuthenticationContextUsingLoginConfiguration:(id)configuration deviceConfiguration:(id)deviceConfiguration userName:(id)name resumeData:(id)data;
- (id)createEmbeddedAssertionWithContext:(id)context;
- (id)createEmbeddedPasswordAssertionWithContext:(id)context;
- (id)createKeyExchangeRequestJWTWithContext:(id)context otherPartyPublicKey:(id)key;
- (id)createKeyExchangeRequestWithContext:(id)context jwt:(id)jwt;
- (id)createKeyRequestJWTWithContext:(id)context;
- (id)createKeyRequestWithContext:(id)context jwt:(id)jwt;
- (id)createLoginJWTWithContext:(id)context embeddedAssertion:(id)assertion;
- (id)createLoginRequestWithContext:(id)context jwt:(id)jwt;
- (id)createNonceRequestWithContext:(id)context;
- (id)createPartyVInfoWithNonce:(id)nonce apvKey:(__SecKey *)key;
- (id)createPartyVInfoWithNonce:(id)nonce prefixData:(id)data apvPublicKey:(__SecKey *)key;
- (id)createPreAuthenticationRequestWithContext:(id)context;
- (id)createRefreshJWTWithContext:(id)context;
- (id)createTestMessagesForLoginConfiguration:(id)configuration certificate:(__SecCertificate *)certificate;
- (id)createWSTrust13RequestWithContext:(id)context;
- (id)createWSTrust2005RequestWithContext:(id)context;
- (id)createWSTrustMexRequestWithContext:(id)context;
- (id)findAlgorithmForKey:(__SecKey *)key;
- (unint64_t)validateWSTrustAuthenticationResponseWithContext:(id)context response:(id)response returningAssertion:(id *)assertion;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)URLSession:(id)session taskIsWaitingForConnectivity:(id)connectivity;
- (void)_performDynamicWSTrustPasswordLoginWithContext:(id)context completion:(id)completion;
- (void)_performEmbeddedAssertionLoginUsingContext:(id)context completion:(id)completion;
- (void)_performEncryptedPasswordLoginUsingContext:(id)context completion:(id)completion;
- (void)_performNonceRequestWithContext:(id)context request:(id)request completion:(id)completion;
- (void)_performPasswordLoginUsingContext:(id)context completion:(id)completion;
- (void)_performWSTrustPasswordLoginWithContext:(id)context completion:(id)completion;
- (void)addCryptoHeadersToJWTBody:(id)body context:(id)context;
- (void)completeAccessTokenLoginUsingContext:(id)context completion:(id)completion;
- (void)extractGroupsAndSubUsingAuthorizationWithLoginConfiguration:(id)configuration tokens:(id)tokens returningGroups:(id *)groups identifier:(id *)identifier refreshToken:(id *)token;
- (void)performAccessTokenSigningUsingContext:(id)context completion:(id)completion;
- (void)performKeyExchangeRequestUsingContext:(id)context otherPartyPublicKeyData:(id)data completion:(id)completion;
- (void)performKeyExchangeRequestWithContext:(id)context request:(id)request completion:(id)completion;
- (void)performKeyRequestUsingContext:(id)context completion:(id)completion;
- (void)performKeyRequestWithContext:(id)context request:(id)request completion:(id)completion;
- (void)performLoginRequestWithContext:(id)context request:(id)request completion:(id)completion;
- (void)performLoginWithContext:(id)context loginJWT:(id)t completion:(id)completion;
- (void)performNonceRequestWithContext:(id)context request:(id)request completion:(id)completion;
- (void)performPasswordLoginUsingContext:(id)context completion:(id)completion;
- (void)performPreAuthenticationRequestWithContext:(id)context request:(id)request completion:(id)completion;
- (void)performSEPKeyLoginUsingContext:(id)context completion:(id)completion;
- (void)performSmartCardLoginUsingContext:(id)context completion:(id)completion;
- (void)performTokenRefreshUsingContext:(id)context completion:(id)completion;
- (void)performWSTrustAuthenticationRequestWithContext:(id)context request:(id)request completion:(id)completion;
- (void)performWSTrustMexRequestWithContext:(id)context request:(id)request completion:(id)completion;
- (void)prepareForAccessTokenLoginUsingContext:(id)context completion:(id)completion;
- (void)retrieveSigningKeyWithContext:(id)context keyId:(id)id completion:(id)completion;
@end

@implementation POAuthenticationProcess

- (POAuthenticationProcess)init
{
  v15[4] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = POAuthenticationProcess;
  v2 = [(POAuthenticationProcess *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_waitForConnectivity = 0;
    v4 = objc_alloc_init(POWSTrustProcess);
    wstrustProcess = v3->_wstrustProcess;
    v3->_wstrustProcess = v4;

    v6 = objc_alloc_init(MEMORY[0x277CCABD8]);
    completionQueue = v3->_completionQueue;
    v3->_completionQueue = v6;

    [(NSOperationQueue *)v3->_completionQueue setName:@"com.apple.platformSSO.auth"];
    v15[0] = @"ECDH-ES,A256GCM";
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, dir", @"HPKE-P256-SHA256-A256GCM"];
    v15[1] = v8;
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, dir", @"HPKE-P384-SHA384-A256GCM"];
    v15[2] = v9;
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, dir", @"HPKE-X25519-SHA256-ChaCha20Poly1305"];
    v15[3] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
    kSupportedLoginResponseAlgorithms = v3->_kSupportedLoginResponseAlgorithms;
    v3->_kSupportedLoginResponseAlgorithms = v11;
  }

  return v3;
}

- (void)performPasswordLoginUsingContext:(id)context completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = PO_LOG_PODiagnostics(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v8, OS_LOG_TYPE_INFO, "Starting password authentication", buf, 2u);
  }

  v10 = PO_LOG_POAuthenticationProcess(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess performPasswordLoginUsingContext:contextCopy completion:?];
  }

  v12 = PO_LOG_POAuthenticationProcess(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess performPasswordLoginUsingContext:contextCopy completion:?];
  }

  [contextCopy setLoginType:1];
  v13 = [(POAuthenticationProcess *)self createNonceRequestWithContext:contextCopy];
  v14 = v13;
  if (v13)
  {
    v15 = PO_LOG_PODiagnostics(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      requestIdentifier = [contextCopy requestIdentifier];
      *buf = 138543362;
      v30 = requestIdentifier;
      _os_log_impl(&dword_25E8B1000, v15, OS_LOG_TYPE_DEFAULT, "Sending nonce request: %{public}@", buf, 0xCu);
    }

    v18 = PO_LOG_POAuthenticationProcess(v17);
    v19 = os_signpost_id_make_with_pointer(v18, contextCopy);

    v21 = PO_LOG_POAuthenticationProcess(v20);
    v22 = v21;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v19, "PlatformSSO_NonceRequest", " enableTelemetry=YES ", buf, 2u);
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __71__POAuthenticationProcess_performPasswordLoginUsingContext_completion___block_invoke_27;
    v24[3] = &unk_279A3DED0;
    v28 = v19;
    v25 = contextCopy;
    selfCopy = self;
    v27 = completionCopy;
    [(POAuthenticationProcess *)self performNonceRequestWithContext:v25 request:v14 completion:v24];
  }

  else
  {
    v23 = __71__POAuthenticationProcess_performPasswordLoginUsingContext_completion___block_invoke();
    (*(completionCopy + 2))(completionCopy, 2, contextCopy, 0);
  }
}

id __71__POAuthenticationProcess_performPasswordLoginUsingContext_completion___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create nonce request"];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

uint64_t __71__POAuthenticationProcess_performPasswordLoginUsingContext_completion___block_invoke_27(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    v14 = __71__POAuthenticationProcess_performPasswordLoginUsingContext_completion___block_invoke_2();
    v15 = PO_LOG_POAuthenticationProcess(v14);
    v16 = v15;
    v17 = *(a1 + 56);
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PlatformSSO_NonceRequest", "Failed", buf, 2u);
    }

    v18 = [*(a1 + 32) password];
    v19 = [v18 mutableBytes];
    v20 = [*(a1 + 32) password];
    v21 = [v20 length];
    v22 = [*(a1 + 32) password];
    memset_s(v19, v21, 0, [v22 length]);

    v23 = *(*(a1 + 48) + 16);
    return v23();
  }

  v3 = PO_LOG_POAuthenticationProcess(a1);
  v4 = v3;
  v5 = *(a1 + 56);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v31 = 0;
    _os_signpost_emit_with_name_impl(&dword_25E8B1000, v4, OS_SIGNPOST_INTERVAL_END, v5, "PlatformSSO_NonceRequest", "Success", v31, 2u);
  }

  v6 = [*(a1 + 32) loginConfiguration];
  v7 = [v6 federationType];

  if (v7 == 2)
  {
    return [*(a1 + 40) _performDynamicWSTrustPasswordLoginWithContext:*(a1 + 32) completion:*(a1 + 48)];
  }

  if (v7 == 1)
  {
    [*(a1 + 32) setFederated:1];
    v24 = [*(a1 + 32) loginConfiguration];
    v25 = [v24 federationMexURL];
    [*(a1 + 32) setWsTrustFederationMexURL:v25];

    return [*(a1 + 40) _performWSTrustPasswordLoginWithContext:*(a1 + 32) completion:*(a1 + 48)];
  }

  if (v7)
  {
    v26 = [*(a1 + 32) password];
    v27 = [v26 mutableBytes];
    v28 = [*(a1 + 32) password];
    v29 = [v28 length];
    v30 = [*(a1 + 32) password];
    memset_s(v27, v29, 0, [v30 length]);

    v23 = *(*(a1 + 48) + 16);
    return v23();
  }

  v8 = [*(a1 + 32) loginConfiguration];
  v9 = [v8 loginRequestEncryptionPublicKey];

  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(a1 + 48);
  if (v9)
  {
    return [v10 _performEncryptedPasswordLoginUsingContext:v11 completion:v12];
  }

  else
  {
    return [v10 _performPasswordLoginUsingContext:v11 completion:v12];
  }
}

id __71__POAuthenticationProcess_performPasswordLoginUsingContext_completion___block_invoke_2()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to retrieve nonce."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)performSmartCardLoginUsingContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  [contextCopy setLoginType:3];
  [(POAuthenticationProcess *)self _performEmbeddedAssertionLoginUsingContext:contextCopy completion:completionCopy];
}

- (void)performSEPKeyLoginUsingContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  [contextCopy setLoginType:2];
  [(POAuthenticationProcess *)self _performEmbeddedAssertionLoginUsingContext:contextCopy completion:completionCopy];
}

- (void)_performEmbeddedAssertionLoginUsingContext:(id)context completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = PO_LOG_PODiagnostics(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v8, OS_LOG_TYPE_INFO, "Starting embedded assertion authentication", buf, 2u);
  }

  v10 = PO_LOG_POAuthenticationProcess(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess performPasswordLoginUsingContext:contextCopy completion:?];
  }

  v12 = PO_LOG_POAuthenticationProcess(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess performPasswordLoginUsingContext:contextCopy completion:?];
  }

  v13 = [(POAuthenticationProcess *)self createNonceRequestWithContext:contextCopy];
  v14 = v13;
  if (v13)
  {
    v15 = PO_LOG_PODiagnostics(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      requestIdentifier = [contextCopy requestIdentifier];
      *buf = 138543362;
      v30 = requestIdentifier;
      _os_log_impl(&dword_25E8B1000, v15, OS_LOG_TYPE_DEFAULT, "Sending nonce request: %{public}@", buf, 0xCu);
    }

    v18 = PO_LOG_POAuthenticationProcess(v17);
    v19 = os_signpost_id_make_with_pointer(v18, contextCopy);

    v21 = PO_LOG_POAuthenticationProcess(v20);
    v22 = v21;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v19, "PlatformSSO_NonceRequest", " enableTelemetry=YES ", buf, 2u);
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __81__POAuthenticationProcess__performEmbeddedAssertionLoginUsingContext_completion___block_invoke_39;
    v24[3] = &unk_279A3DEF8;
    v28 = v19;
    v27 = completionCopy;
    v25 = contextCopy;
    selfCopy = self;
    [(POAuthenticationProcess *)self performNonceRequestWithContext:v25 request:v14 completion:v24];
  }

  else
  {
    v23 = __81__POAuthenticationProcess__performEmbeddedAssertionLoginUsingContext_completion___block_invoke();
    (*(completionCopy + 2))(completionCopy, 2, contextCopy, 0);
  }
}

id __81__POAuthenticationProcess__performEmbeddedAssertionLoginUsingContext_completion___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create nonce request."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

void __81__POAuthenticationProcess__performEmbeddedAssertionLoginUsingContext_completion___block_invoke_39(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = PO_LOG_POAuthenticationProcess(a1);
    v4 = v3;
    v5 = *(a1 + 56);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v4, OS_SIGNPOST_INTERVAL_END, v5, "PlatformSSO_NonceRequest", "Success", buf, 2u);
    }

    v6 = [*(a1 + 40) createEmbeddedAssertionWithContext:*(a1 + 32)];
    if (!v6)
    {
      v18 = __81__POAuthenticationProcess__performEmbeddedAssertionLoginUsingContext_completion___block_invoke_42();
      (*(*(a1 + 48) + 16))();
LABEL_28:

      return;
    }

    v7 = [*(a1 + 32) loginType];
    v8 = *(a1 + 32);
    if (v7 == 3)
    {
      v9 = [*(a1 + 40) findAlgorithmForKey:{objc_msgSend(v8, "embeddedAssertionSigningKey")}];
      v10 = [*(a1 + 32) embeddedAssertionSigningKey];
      v11 = [*(a1 + 32) embeddedAssertionCertificate];
      v30 = 0;
      v12 = [POJWTSigning encodeAndSignJWT:v6 algorithm:v9 key:v10 certificate:v11 error:&v30];
      v13 = v30;
      if (v12)
      {

LABEL_15:
        v22 = [*(a1 + 40) createLoginJWTWithContext:*(a1 + 32) embeddedAssertion:v12];
        if (v22)
        {
          [*(a1 + 40) performLoginWithContext:*(a1 + 32) loginJWT:v22 completion:*(a1 + 48)];
        }

        else
        {
          v23 = __81__POAuthenticationProcess__performEmbeddedAssertionLoginUsingContext_completion___block_invoke_61();
          (*(*(a1 + 48) + 16))();
        }

        goto LABEL_27;
      }

      v24 = __81__POAuthenticationProcess__performEmbeddedAssertionLoginUsingContext_completion___block_invoke_49();
      (*(*(a1 + 48) + 16))();

LABEL_27:
      goto LABEL_28;
    }

    v19 = [v8 userSepSigningAlgorithm];
    v20 = [*(a1 + 32) embeddedAssertionSigningKey];
    v21 = [*(a1 + 32) embeddedAssertionCertificate];
    v29 = 0;
    v12 = [POJWTSigning encodeAndSignJWT:v6 signingAlgorithm:v19 key:v20 certificate:v21 error:&v29];
    v13 = v29;

    if (v12)
    {
      goto LABEL_15;
    }

    v25 = __81__POAuthenticationProcess__performEmbeddedAssertionLoginUsingContext_completion___block_invoke_55();
    if ([*(a1 + 32) loginType] == 2)
    {
      v26 = [*(a1 + 32) deviceConfiguration];
      if ([v26 sharedDeviceKeys])
      {
        v27 = [v13 code];

        if (v27 == -1010)
        {
          v28 = *(*(a1 + 48) + 16);
LABEL_26:
          v28();
          goto LABEL_27;
        }
      }

      else
      {
      }
    }

    v28 = *(*(a1 + 48) + 16);
    goto LABEL_26;
  }

  v14 = __71__POAuthenticationProcess_performPasswordLoginUsingContext_completion___block_invoke_2();
  v15 = PO_LOG_POAuthenticationProcess(v14);
  v16 = v15;
  v17 = *(a1 + 56);
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E8B1000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PlatformSSO_NonceRequest", "Failed", buf, 2u);
  }

  (*(*(a1 + 48) + 16))();
}

id __81__POAuthenticationProcess__performEmbeddedAssertionLoginUsingContext_completion___block_invoke_42()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create embedded assertion JWT."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __81__POAuthenticationProcess__performEmbeddedAssertionLoginUsingContext_completion___block_invoke_49()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to sign embedded SmartCard assertion."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __81__POAuthenticationProcess__performEmbeddedAssertionLoginUsingContext_completion___block_invoke_55()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to sign embedded assertion."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __81__POAuthenticationProcess__performEmbeddedAssertionLoginUsingContext_completion___block_invoke_61()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create login JWT."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (id)findAlgorithmForKey:(__SecKey *)key
{
  v4 = SecKeyCopyAttributes(key);
  v5 = [(__CFDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x277CDBFE0]];
  if (![v5 isEqualToString:*MEMORY[0x277CDC000]])
  {
    v8 = [(__CFDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x277CDC028]];
    v9 = [(__CFDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x277CDC018]];
    if ([v8 isEqualToString:*MEMORY[0x277CDC030]])
    {
      v10 = 1;
    }

    else
    {
      v10 = [v8 isEqualToString:*MEMORY[0x277CDC040]];
    }

    v11 = [v8 isEqualToString:*MEMORY[0x277CDC060]];
    v12 = [v8 isEqualToString:*MEMORY[0x277CDC050]];
    if (v10)
    {
      intValue = [v9 intValue];
      switch(intValue)
      {
        case 521:
          if (SecKeyIsAlgorithmSupported(key, kSecKeyOperationTypeSign, *MEMORY[0x277CDC2E0]))
          {
            v7 = @"ES512";
            goto LABEL_22;
          }

          v18 = __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke_90();
          goto LABEL_21;
        case 384:
          if (SecKeyIsAlgorithmSupported(key, kSecKeyOperationTypeSign, *MEMORY[0x277CDC2D8]))
          {
            v7 = @"ES384";
            goto LABEL_22;
          }

          v17 = __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke_81();
          goto LABEL_21;
        case 256:
          if (SecKeyIsAlgorithmSupported(key, kSecKeyOperationTypeSign, *MEMORY[0x277CDC2D0]))
          {
            v7 = @"ES256";
LABEL_22:

            goto LABEL_23;
          }

          v19 = __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke_72();
          goto LABEL_21;
      }
    }

    else if (v11)
    {
      intValue2 = [v9 intValue];
      switch(intValue2)
      {
        case 4096:
          if (SecKeyIsAlgorithmSupported(key, kSecKeyOperationTypeSign, *MEMORY[0x277CDC398]))
          {
            v7 = @"RS512";
            goto LABEL_22;
          }

          v21 = __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke_114();
          goto LABEL_21;
        case 3072:
          if (SecKeyIsAlgorithmSupported(key, kSecKeyOperationTypeSign, *MEMORY[0x277CDC390]))
          {
            v7 = @"RS384";
            goto LABEL_22;
          }

          v20 = __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke_105();
          goto LABEL_21;
        case 2048:
          if (SecKeyIsAlgorithmSupported(key, kSecKeyOperationTypeSign, *MEMORY[0x277CDC388]))
          {
            v7 = @"RS256";
            goto LABEL_22;
          }

          v22 = __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke_96();
LABEL_21:
          v7 = 0;
          goto LABEL_22;
      }
    }

    else if (v12)
    {
      v7 = @"EdDSA";
      goto LABEL_22;
    }

    v15 = __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke_123();
    goto LABEL_21;
  }

  v6 = __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke();
  v7 = 0;
LABEL_23:

  return v7;
}

id __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Invalid key for signing."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke_72()
{
  v0 = [POError errorWithCode:-1001 description:@"256 bit key does not support signing."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke_81()
{
  v0 = [POError errorWithCode:-1001 description:@"384 bit key does not support signing."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke_90()
{
  v0 = [POError errorWithCode:-1001 description:@"521 bit key does not support signing."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke_96()
{
  v0 = [POError errorWithCode:-1001 description:@"Key does not support SHA256 signing."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke_105()
{
  v0 = [POError errorWithCode:-1001 description:@"Key does not support SHA384 signing."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke_114()
{
  v0 = [POError errorWithCode:-1001 description:@"Key does not support SHA512 signing."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke_123()
{
  v0 = [POError errorWithCode:-1001 description:@"No supported algorithms for key"];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)performTokenRefreshUsingContext:(id)context completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = PO_LOG_PODiagnostics(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v8, OS_LOG_TYPE_INFO, "Starting refresh", buf, 2u);
  }

  v10 = PO_LOG_POAuthenticationProcess(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess performPasswordLoginUsingContext:contextCopy completion:?];
  }

  v12 = PO_LOG_POAuthenticationProcess(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess performPasswordLoginUsingContext:contextCopy completion:?];
  }

  [contextCopy setLoginType:100];
  v13 = [(POAuthenticationProcess *)self createNonceRequestWithContext:contextCopy];
  v14 = v13;
  if (v13)
  {
    v15 = PO_LOG_PODiagnostics(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      requestIdentifier = [contextCopy requestIdentifier];
      *buf = 138543362;
      v30 = requestIdentifier;
      _os_log_impl(&dword_25E8B1000, v15, OS_LOG_TYPE_DEFAULT, "Sending nonce request: %{public}@", buf, 0xCu);
    }

    v18 = PO_LOG_POAuthenticationProcess(v17);
    v19 = os_signpost_id_make_with_pointer(v18, contextCopy);

    v21 = PO_LOG_POAuthenticationProcess(v20);
    v22 = v21;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v19, "PlatformSSO_NonceRequest", " enableTelemetry=YES ", buf, 2u);
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __70__POAuthenticationProcess_performTokenRefreshUsingContext_completion___block_invoke_131;
    v24[3] = &unk_279A3DED0;
    v28 = v19;
    v25 = contextCopy;
    selfCopy = self;
    v27 = completionCopy;
    [(POAuthenticationProcess *)self performNonceRequestWithContext:v25 request:v14 completion:v24];
  }

  else
  {
    v23 = __71__POAuthenticationProcess_performPasswordLoginUsingContext_completion___block_invoke();
    (*(completionCopy + 2))(completionCopy, 2, contextCopy, 0);
  }
}

void __70__POAuthenticationProcess_performTokenRefreshUsingContext_completion___block_invoke_131(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = PO_LOG_POAuthenticationProcess(a1);
    v4 = v3;
    v5 = *(a1 + 56);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *v17 = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v4, OS_SIGNPOST_INTERVAL_END, v5, "PlatformSSO_NonceRequest", "Success", v17, 2u);
    }

    v6 = [*(a1 + 40) createRefreshJWTWithContext:*(a1 + 32)];
    if (v6)
    {
      [*(a1 + 40) performLoginWithContext:*(a1 + 32) loginJWT:v6 completion:*(a1 + 48)];
    }

    else
    {
      v16 = __70__POAuthenticationProcess_performTokenRefreshUsingContext_completion___block_invoke_137();
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v7 = __70__POAuthenticationProcess_performTokenRefreshUsingContext_completion___block_invoke_2();
    v8 = PO_LOG_POAuthenticationProcess(v7);
    v9 = v8;
    v10 = *(a1 + 56);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v9, OS_SIGNPOST_INTERVAL_END, v10, "PlatformSSO_NonceRequest", "Failed", buf, 2u);
    }

    v11 = [*(a1 + 32) password];
    v12 = [v11 mutableBytes];
    v13 = [*(a1 + 32) password];
    v14 = [v13 length];
    v15 = [*(a1 + 32) password];
    memset_s(v12, v14, 0, [v15 length]);

    (*(*(a1 + 48) + 16))();
  }
}

id __70__POAuthenticationProcess_performTokenRefreshUsingContext_completion___block_invoke_2()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to retrieve nonce"];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __70__POAuthenticationProcess_performTokenRefreshUsingContext_completion___block_invoke_137()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create refresh JWT."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)_performDynamicWSTrustPasswordLoginWithContext:(id)context completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = [(POAuthenticationProcess *)self createPreAuthenticationRequestWithContext:contextCopy];
  v9 = v8;
  if (v8)
  {
    v10 = PO_LOG_PODiagnostics(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      requestIdentifier = [contextCopy requestIdentifier];
      *buf = 138543362;
      v30 = requestIdentifier;
      _os_log_impl(&dword_25E8B1000, v10, OS_LOG_TYPE_DEFAULT, "Sending preauthentication request: %{public}@", buf, 0xCu);
    }

    v13 = PO_LOG_POAuthenticationProcess(v12);
    v14 = os_signpost_id_make_with_pointer(v13, contextCopy);

    v16 = PO_LOG_POAuthenticationProcess(v15);
    v17 = v16;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PlatformSSO_PreauthenticationRequest", " enableTelemetry=YES ", buf, 2u);
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __85__POAuthenticationProcess__performDynamicWSTrustPasswordLoginWithContext_completion___block_invoke_148;
    v24[3] = &unk_279A3DED0;
    v28 = v14;
    v25 = contextCopy;
    selfCopy = self;
    v27 = completionCopy;
    [(POAuthenticationProcess *)self performPreAuthenticationRequestWithContext:v25 request:v9 completion:v24];
  }

  else
  {
    v18 = __85__POAuthenticationProcess__performDynamicWSTrustPasswordLoginWithContext_completion___block_invoke();
    password = [contextCopy password];
    mutableBytes = [password mutableBytes];
    password2 = [contextCopy password];
    v22 = [password2 length];
    password3 = [contextCopy password];
    memset_s(mutableBytes, v22, 0, [password3 length]);

    (*(completionCopy + 2))(completionCopy, 2, contextCopy, 0);
  }
}

id __85__POAuthenticationProcess__performDynamicWSTrustPasswordLoginWithContext_completion___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create preauthentication request."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

uint64_t __85__POAuthenticationProcess__performDynamicWSTrustPasswordLoginWithContext_completion___block_invoke_148(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = PO_LOG_POAuthenticationProcess(a1);
    v4 = v3;
    v5 = *(a1 + 56);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v4, OS_SIGNPOST_INTERVAL_END, v5, "PlatformSSO_PreauthenticationRequest", "Success", buf, 2u);
    }

    v6 = [*(a1 + 32) federated];
    v7 = v6;
    v8 = PO_LOG_PODiagnostics(v6);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v9)
      {
        *v21 = 0;
        _os_log_impl(&dword_25E8B1000, v8, OS_LOG_TYPE_INFO, "User is federated", v21, 2u);
      }

      return [*(a1 + 40) _performWSTrustPasswordLoginWithContext:*(a1 + 32) completion:*(a1 + 48)];
    }

    else
    {
      if (v9)
      {
        *v20 = 0;
        _os_log_impl(&dword_25E8B1000, v8, OS_LOG_TYPE_INFO, "User is NOT federated", v20, 2u);
      }

      return [*(a1 + 40) _performPasswordLoginUsingContext:*(a1 + 32) completion:*(a1 + 48)];
    }
  }

  else
  {
    v11 = __85__POAuthenticationProcess__performDynamicWSTrustPasswordLoginWithContext_completion___block_invoke_2();
    v12 = PO_LOG_POAuthenticationProcess(v11);
    v13 = v12;
    v14 = *(a1 + 56);
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *v23 = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v13, OS_SIGNPOST_INTERVAL_END, v14, "PlatformSSO_PreauthenticationRequest", "Failed", v23, 2u);
    }

    v15 = [*(a1 + 32) password];
    v16 = [v15 mutableBytes];
    v17 = [*(a1 + 32) password];
    v18 = [v17 length];
    v19 = [*(a1 + 32) password];
    memset_s(v16, v18, 0, [v19 length]);

    return (*(*(a1 + 48) + 16))();
  }
}

id __85__POAuthenticationProcess__performDynamicWSTrustPasswordLoginWithContext_completion___block_invoke_2()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to retrieve preauthentication data."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)_performWSTrustPasswordLoginWithContext:(id)context completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = [(POAuthenticationProcess *)self createWSTrustMexRequestWithContext:contextCopy];
  v9 = v8;
  if (v8)
  {
    v10 = PO_LOG_PODiagnostics(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      requestIdentifier = [contextCopy requestIdentifier];
      *buf = 138543362;
      v30 = requestIdentifier;
      _os_log_impl(&dword_25E8B1000, v10, OS_LOG_TYPE_DEFAULT, "Sending mex request: %{public}@", buf, 0xCu);
    }

    v13 = PO_LOG_POAuthenticationProcess(v12);
    v14 = os_signpost_id_make_with_pointer(v13, contextCopy);

    v16 = PO_LOG_POAuthenticationProcess(v15);
    v17 = v16;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PlatformSSO_WSTrustMexRequest", " enableTelemetry=YES ", buf, 2u);
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_159;
    v24[3] = &unk_279A3DED0;
    v28 = v14;
    v25 = contextCopy;
    selfCopy = self;
    v27 = completionCopy;
    [(POAuthenticationProcess *)self performWSTrustMexRequestWithContext:v25 request:v9 completion:v24];
  }

  else
  {
    v18 = __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke();
    password = [contextCopy password];
    mutableBytes = [password mutableBytes];
    password2 = [contextCopy password];
    v22 = [password2 length];
    password3 = [contextCopy password];
    memset_s(mutableBytes, v22, 0, [password3 length]);

    (*(completionCopy + 2))(completionCopy, 2, contextCopy, 0);
  }
}

id __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create mex request."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

void __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_159(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  if (a2 != 1)
  {
    v8 = __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_2();
    v9 = PO_LOG_POAuthenticationProcess(v8);
    v10 = v9;
    v11 = *(a1 + 56);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v10, OS_SIGNPOST_INTERVAL_END, v11, "PlatformSSO_WSTrustMexRequest", "Failed", buf, 2u);
    }

    v12 = [*(a1 + 32) password];
    v13 = [v12 mutableBytes];
    v14 = [*(a1 + 32) password];
    v15 = [v14 length];
    v16 = [*(a1 + 32) password];
    memset_s(v13, v15, 0, [v16 length]);

    v17 = *(*(a1 + 48) + 16);
    goto LABEL_25;
  }

  v3 = PO_LOG_POAuthenticationProcess(a1);
  v4 = v3;
  v5 = *(a1 + 56);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E8B1000, v4, OS_SIGNPOST_INTERVAL_END, v5, "PlatformSSO_WSTrustMexRequest", "Success", buf, 2u);
  }

  v6 = [*(a1 + 32) wsTrustVersion];
  switch(v6)
  {
    case 0:
      v19 = __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_165();
      v20 = [*(a1 + 32) password];
      v21 = [v20 mutableBytes];
      v22 = [*(a1 + 32) password];
      v23 = [v22 length];
      v24 = [*(a1 + 32) password];
      memset_s(v21, v23, 0, [v24 length]);

      v17 = *(*(a1 + 48) + 16);
LABEL_25:
      v17();
      return;
    case 2:
      v7 = [*(a1 + 40) createWSTrust2005RequestWithContext:*(a1 + 32)];
      goto LABEL_14;
    case 1:
      v7 = [*(a1 + 40) createWSTrust13RequestWithContext:*(a1 + 32)];
LABEL_14:
      v18 = v7;
      goto LABEL_17;
  }

  v18 = 0;
LABEL_17:
  v25 = [*(a1 + 32) password];
  v26 = [v25 mutableBytes];
  v27 = [*(a1 + 32) password];
  v28 = [v27 length];
  v29 = [*(a1 + 32) password];
  memset_s(v26, v28, 0, [v29 length]);

  v30 = [*(a1 + 32) setPassword:0];
  if (!v18)
  {
    v42 = __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_171();
    v17 = *(*(a1 + 48) + 16);
    goto LABEL_25;
  }

  v31 = PO_LOG_PODiagnostics(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [*(a1 + 32) requestIdentifier];
    *buf = 138543362;
    v47 = v32;
    _os_log_impl(&dword_25E8B1000, v31, OS_LOG_TYPE_DEFAULT, "Sending WSTrust request: %{public}@", buf, 0xCu);
  }

  v34 = PO_LOG_POAuthenticationProcess(v33);
  v35 = os_signpost_id_make_with_pointer(v34, *(a1 + 32));

  v37 = PO_LOG_POAuthenticationProcess(v36);
  v38 = v37;
  if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E8B1000, v38, OS_SIGNPOST_INTERVAL_BEGIN, v35, "PlatformSSO_WSTrustRequest", " enableTelemetry=YES ", buf, 2u);
  }

  v40 = *(a1 + 32);
  v39 = *(a1 + 40);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_177;
  v43[3] = &unk_279A3DF20;
  v45 = v35;
  v41 = *(a1 + 48);
  v43[4] = *(a1 + 40);
  v44 = v41;
  [v39 performWSTrustAuthenticationRequestWithContext:v40 request:v18 completion:v43];
}

id __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_2()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to retrieve mex data"];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_165()
{
  v0 = [POError errorWithCode:-1001 description:@"federated idp does not support WSTrust 1.3 or 2005."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_171()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create WSTrust request."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

void __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_177(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a2 == 1 && (v10 = [v8 length]) != 0)
  {
    v11 = PO_LOG_POAuthenticationProcess(v10);
    v12 = v11;
    v13 = *(a1 + 48);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *v21 = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PlatformSSO_WSTrustRequest", "Success", v21, 2u);
    }

    v14 = [v9 base64EncodedStringWithOptions:0];
    v15 = [*(a1 + 32) createLoginJWTWithContext:v7 embeddedAssertion:v14];
    if (v15)
    {
      [*(a1 + 32) performLoginWithContext:v7 loginJWT:v15 completion:*(a1 + 40)];
    }

    else
    {
      v20 = __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_184();
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v16 = __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_2_178();
    v17 = PO_LOG_POAuthenticationProcess(v16);
    v18 = v17;
    v19 = *(a1 + 48);
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v18, OS_SIGNPOST_INTERVAL_END, v19, "PlatformSSO_WSTrustRequest", "Failed", buf, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

id __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_2_178()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to retrieve WSTrust response."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_184()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create login JWT."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)_performEncryptedPasswordLoginUsingContext:(id)context completion:(id)completion
{
  v70[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  loginConfiguration = [contextCopy loginConfiguration];
  loginRequestEncryptionPublicKey = [loginConfiguration loginRequestEncryptionPublicKey];

  if (loginRequestEncryptionPublicKey)
  {
    v10 = [(POAuthenticationProcess *)self createEmbeddedPasswordAssertionWithContext:contextCopy];
    if (v10)
    {
      password = [contextCopy password];
      mutableBytes = [password mutableBytes];
      password2 = [contextCopy password];
      v14 = [password2 length];
      password3 = [contextCopy password];
      memset_s(mutableBytes, v14, 0, [password3 length]);

      [contextCopy setPassword:0];
      loginConfiguration2 = [contextCopy loginConfiguration];
      loginRequestEncryptionAlgorithm = [loginConfiguration2 loginRequestEncryptionAlgorithm];
      LODWORD(password2) = [loginRequestEncryptionAlgorithm isEqualToNumber:0x2870A9198];

      v62 = completionCopy;
      selfCopy = self;
      if (password2)
      {
        serverNonce = [contextCopy serverNonce];
        v19 = [serverNonce dataUsingEncoding:4];
        loginConfiguration3 = [contextCopy loginConfiguration];
        loginRequestEncryptionAPVPrefix = [loginConfiguration3 loginRequestEncryptionAPVPrefix];
        loginConfiguration4 = [contextCopy loginConfiguration];
        v23 = -[POAuthenticationProcess createPartyVInfoWithNonce:prefixData:apvPublicKey:](self, "createPartyVInfoWithNonce:prefixData:apvPublicKey:", v19, loginRequestEncryptionAPVPrefix, [loginConfiguration4 loginRequestEncryptionPublicKey]);

        header = [v10 header];
        serverNonce3 = v23;
        [header setApv:v23];
      }

      else
      {
        loginConfiguration5 = [contextCopy loginConfiguration];
        serverNonceClaimName = [loginConfiguration5 serverNonceClaimName];
        v29 = [serverNonceClaimName length];

        header2 = [v10 header];
        if (v29)
        {
          loginConfiguration6 = [contextCopy loginConfiguration];
          serverNonceClaimName2 = [loginConfiguration6 serverNonceClaimName];
          v69 = serverNonceClaimName2;
          serverNonce2 = [contextCopy serverNonce];
          v70[0] = serverNonce2;
          v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:&v69 count:1];
          [header2 addCustomClaims:v34];
        }

        else
        {
          v67 = @"request_nonce";
          loginConfiguration6 = [contextCopy serverNonce];
          v68 = loginConfiguration6;
          serverNonceClaimName2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
          [header2 addCustomClaims:serverNonceClaimName2];
        }

        serverNonce3 = [contextCopy serverNonce];
      }

      v35 = v10;
      loginConfiguration7 = [contextCopy loginConfiguration];
      loginRequestEncryptionAlgorithm2 = [loginConfiguration7 loginRequestEncryptionAlgorithm];
      loginConfiguration8 = [contextCopy loginConfiguration];
      loginRequestEncryptionPublicKey2 = [loginConfiguration8 loginRequestEncryptionPublicKey];
      loginConfiguration9 = [contextCopy loginConfiguration];
      loginRequestHpkePsk = [loginConfiguration9 loginRequestHpkePsk];
      loginConfiguration10 = [contextCopy loginConfiguration];
      loginRequestHpkePsk_id = [loginConfiguration10 loginRequestHpkePsk_id];
      v66 = 0;
      v43 = [POJWTEncryption encodeAndEncryptJWT:v35 encryptionAlgorithm:loginRequestEncryptionAlgorithm2 publicKey:loginRequestEncryptionPublicKey2 otherInfo:serverNonce3 psk:loginRequestHpkePsk psk_id:loginRequestHpkePsk_id authPrivateKey:0 auth_kid:0 error:&v66];
      v59 = v66;

      body = [v35 body];
      password4 = [body password];
      mutableBytes2 = [password4 mutableBytes];
      body2 = [v35 body];
      password5 = [body2 password];
      v49 = [password5 length];
      v61 = v35;
      v50 = v35;
      v51 = v43;
      body3 = [v50 body];
      password6 = [body3 password];
      memset_s(mutableBytes2, v49, 0, [password6 length]);

      if (v51)
      {
        v54 = v59;
        v55 = [(POAuthenticationProcess *)selfCopy createLoginJWTWithContext:contextCopy embeddedAssertion:v51];
        completionCopy = v62;
        if (v55)
        {
          [(POAuthenticationProcess *)selfCopy performLoginWithContext:contextCopy loginJWT:v55 completion:v62];
        }

        else
        {
          v57 = __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_184();
          v62[2](v62, 2, contextCopy, 0);
        }
      }

      else
      {
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __81__POAuthenticationProcess__performEncryptedPasswordLoginUsingContext_completion___block_invoke_204;
        v64[3] = &unk_279A3DC48;
        v54 = v59;
        v65 = v59;
        v56 = __81__POAuthenticationProcess__performEncryptedPasswordLoginUsingContext_completion___block_invoke_204(v64);
        completionCopy = v62;
        v62[2](v62, 2, contextCopy, 0);
        v55 = v65;
      }

      v10 = v61;
    }

    else
    {
      v26 = __81__POAuthenticationProcess__performEncryptedPasswordLoginUsingContext_completion___block_invoke_193();
      completionCopy[2](completionCopy, 2, contextCopy, 0);
    }
  }

  else
  {
    v25 = __81__POAuthenticationProcess__performEncryptedPasswordLoginUsingContext_completion___block_invoke();
    completionCopy[2](completionCopy, 2, contextCopy, 0);
  }
}

id __81__POAuthenticationProcess__performEncryptedPasswordLoginUsingContext_completion___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Missing encryption public key."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __81__POAuthenticationProcess__performEncryptedPasswordLoginUsingContext_completion___block_invoke_193()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create embedded password assertion JWT."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __81__POAuthenticationProcess__performEncryptedPasswordLoginUsingContext_completion___block_invoke_204(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to encrypt embedded assertion."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

- (void)_performPasswordLoginUsingContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v7 = [(POAuthenticationProcess *)self createLoginJWTWithContext:contextCopy embeddedAssertion:0];
  password = [contextCopy password];
  mutableBytes = [password mutableBytes];
  password2 = [contextCopy password];
  v11 = [password2 length];
  password3 = [contextCopy password];
  memset_s(mutableBytes, v11, 0, [password3 length]);

  [contextCopy setPassword:0];
  if (v7)
  {
    [(POAuthenticationProcess *)self performLoginWithContext:contextCopy loginJWT:v7 completion:completionCopy];
  }

  else
  {
    v13 = __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_184();
    completionCopy[2](completionCopy, 2, contextCopy, 0);
  }
}

- (id)createPreAuthenticationRequestWithContext:(id)context
{
  v32[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v4 = objc_alloc(MEMORY[0x277CCACE0]);
  loginConfiguration = [contextCopy loginConfiguration];
  federationUserPreauthenticationURL = [loginConfiguration federationUserPreauthenticationURL];
  v7 = [v4 initWithURL:federationUserPreauthenticationURL resolvingAgainstBaseURL:0];

  v8 = MEMORY[0x277CCAD18];
  userName = [contextCopy userName];
  v10 = [v8 queryItemWithName:@"user" value:userName];
  v32[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];

  loginConfiguration2 = [contextCopy loginConfiguration];
  customFederationUserPreauthenticationRequestValues = [loginConfiguration2 customFederationUserPreauthenticationRequestValues];

  if (customFederationUserPreauthenticationRequestValues)
  {
    loginConfiguration3 = [contextCopy loginConfiguration];
    customFederationUserPreauthenticationRequestValues2 = [loginConfiguration3 customFederationUserPreauthenticationRequestValues];
    v16 = [v11 arrayByAddingObjectsFromArray:customFederationUserPreauthenticationRequestValues2];

    v11 = v16;
  }

  queryItems = [v7 queryItems];

  if (queryItems)
  {
    queryItems2 = [v7 queryItems];
    v19 = [queryItems2 arrayByAddingObjectsFromArray:v11];
    [v7 setQueryItems:v19];
  }

  else
  {
    [v7 setQueryItems:v11];
  }

  v20 = objc_alloc(MEMORY[0x277CCAB70]);
  v21 = [v7 URL];
  v22 = [v20 initWithURL:v21 cachePolicy:4 timeoutInterval:30.0];

  [v22 setHTTPMethod:@"GET"];
  [v22 addValue:@"application/json" forHTTPHeaderField:@"Accept"];
  requestIdentifier = [contextCopy requestIdentifier];
  [v22 addValue:requestIdentifier forHTTPHeaderField:@"client-request-id"];

  v25 = PO_LOG_POAuthenticationProcess(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess createPreAuthenticationRequestWithContext:];
  }

  v27 = PO_LOG_POAuthenticationProcess(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    requestIdentifier2 = [contextCopy requestIdentifier];
    v30 = 138543362;
    v31 = requestIdentifier2;
    _os_log_impl(&dword_25E8B1000, v27, OS_LOG_TYPE_INFO, "Preauthentication request: %{public}@", &v30, 0xCu);
  }

  return v22;
}

- (void)performPreAuthenticationRequestWithContext:(id)context request:(id)request completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  requestCopy = request;
  urlSession = [contextCopy urlSession];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke;
  v21 = &unk_279A3DF70;
  v23 = contextCopy;
  v24 = completionCopy;
  selfCopy = self;
  v12 = contextCopy;
  v13 = completionCopy;
  v14 = [urlSession dataTaskWithRequest:requestCopy completionHandler:&v18];

  v15 = MEMORY[0x277CCACA8];
  requestIdentifier = [v12 requestIdentifier];
  selfCopy = [v15 stringWithFormat:@"Preauthentication Request: %@", requestIdentifier, v18, v19, v20, v21, selfCopy];
  [v14 setTaskDescription:selfCopy];

  [v14 resume];
}

void __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PO_LOG_POAuthenticationProcess(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v10, OS_LOG_TYPE_INFO, "Preauthentication response received", buf, 2u);
  }

  if (v9)
  {
    if (v7)
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
    }

    else
    {
      v11 = 0;
    }

    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_231;
    v64[3] = &unk_279A3DE00;
    v65 = v9;
    v66 = v11;
    v12 = v11;
    v17 = __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_231(v64);
    v18 = [a1[4] completionQueue];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_235;
    v62[3] = &unk_279A3DF48;
    v63 = a1[6];
    [v18 addOperationWithBlock:v62];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v8;
      if ([v12 statusCode] >= 200 && (v13 = objc_msgSend(v12, "statusCode"), v13 < 300))
      {
        v21 = PO_LOG_POAuthenticationProcess(v13);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_cold_1();
        }

        v55 = 0;
        v22 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:16 error:&v55];
        v23 = v55;
        v16 = v23;
        if (!v22 || v23)
        {
          v53[0] = MEMORY[0x277D85DD0];
          v53[1] = 3221225472;
          v53[2] = __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_251;
          v53[3] = &unk_279A3DC48;
          v37 = &v54;
          v54 = v23;
          v39 = __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_251(v53);
          v40 = [a1[4] completionQueue];
          v51[0] = MEMORY[0x277D85DD0];
          v51[1] = 3221225472;
          v51[2] = __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_255;
          v51[3] = &unk_279A3DF48;
          v52 = a1[6];
          [v40 addOperationWithBlock:v51];

          v36 = v52;
        }

        else
        {
          v24 = MEMORY[0x277CCAC30];
          v25 = [a1[5] loginConfiguration];
          v26 = [v25 federationPredicate];
          v27 = [v24 predicateWithFormat:v26];

          v28 = [v27 evaluateWithObject:v22];
          [a1[5] setFederated:v28];
          [a1[5] setWsTrustFederationMexURL:0];
          if ([a1[5] federated])
          {
            v29 = [a1[5] loginConfiguration];
            v30 = [v29 federationMexURLKeypath];

            if (!v30 || ([a1[5] loginConfiguration], v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "federationMexURLKeypath"), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "valueForKeyPath:", v32), v33 = objc_claimAutoreleasedReturnValue(), v32, v31, !v33))
            {
              v33 = [v22 objectForKeyedSubscript:@"federation_metadata_url"];
            }

            if ([v33 length])
            {
              v34 = [MEMORY[0x277CBEBC0] URLWithString:v33];
              [a1[5] setWsTrustFederationMexURL:v34];
            }
          }

          if (![a1[5] federated] || objc_msgSend(a1[5], "federated") && (objc_msgSend(a1[5], "wsTrustFederationMexURL"), v35 = objc_claimAutoreleasedReturnValue(), v35, v35))
          {
            v36 = [a1[4] completionQueue];
            v46 = MEMORY[0x277D85DD0];
            v47 = 3221225472;
            v48 = __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_265;
            v49 = &unk_279A3DF48;
            v37 = &v50;
            v50 = a1[6];
            v38 = &v46;
          }

          else
          {
            v36 = [a1[4] completionQueue];
            v41 = MEMORY[0x277D85DD0];
            v42 = 3221225472;
            v43 = __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_266;
            v44 = &unk_279A3DF48;
            v37 = &v45;
            v45 = a1[6];
            v38 = &v41;
          }

          [v36 addOperationWithBlock:{v38, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50}];
        }
      }

      else
      {
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_244;
        v58[3] = &unk_279A3DC48;
        v59 = v12;
        v14 = __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_244(v58);
        v15 = [a1[4] completionQueue];
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_249;
        v56[3] = &unk_279A3DF48;
        v57 = a1[6];
        [v15 addOperationWithBlock:v56];

        v16 = v59;
      }
    }

    else
    {
      v19 = __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2();
      v20 = [a1[4] completionQueue];
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_243;
      v60[3] = &unk_279A3DF48;
      v61 = a1[6];
      [v20 addOperationWithBlock:v60];

      v12 = v61;
    }
  }
}

id __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_231(uint64_t a1)
{
  v1 = [POError errorWithCode:-1009 underlyingError:*(a1 + 32) description:@"Failed to retrieve Preauthentication response."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_231_cold_1();
  }

  return v1;
}

id __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2()
{
  v0 = [POError errorWithCode:-1009 description:@"Not HTTP response for Preauthentication."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_244(uint64_t a1)
{
  v1 = [POError errorWithCode:-1009 description:@"Preauthentication request failed."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_244_cold_1();
  }

  return v1;
}

id __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_251(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 underlyingError:*(a1 + 32) description:@"Failed to parse Preauthentication response."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

id __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 description:@"Exception when evaluating federationPredicate"];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1();
  }

  return v1;
}

- (id)createWSTrustMexRequestWithContext:(id)context
{
  v3 = MEMORY[0x277CCAB70];
  contextCopy = context;
  v5 = [v3 alloc];
  wsTrustFederationMexURL = [contextCopy wsTrustFederationMexURL];

  v7 = [v5 initWithURL:wsTrustFederationMexURL cachePolicy:4 timeoutInterval:30.0];
  v8 = PO_LOG_POAuthenticationProcess([v7 setHTTPMethod:@"GET"]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess createWSTrustMexRequestWithContext:];
  }

  return v7;
}

- (void)performWSTrustMexRequestWithContext:(id)context request:(id)request completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  requestCopy = request;
  urlSession = [contextCopy urlSession];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke;
  v21 = &unk_279A3DF70;
  v23 = contextCopy;
  v24 = completionCopy;
  selfCopy = self;
  v12 = contextCopy;
  v13 = completionCopy;
  v14 = [urlSession dataTaskWithRequest:requestCopy completionHandler:&v18];

  v15 = MEMORY[0x277CCACA8];
  requestIdentifier = [v12 requestIdentifier];
  selfCopy = [v15 stringWithFormat:@"WSTrust Mex Request: %@", requestIdentifier, v18, v19, v20, v21, selfCopy];
  [v14 setTaskDescription:selfCopy];

  [v14 resume];
}

void __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PO_LOG_POAuthenticationProcess(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v10, OS_LOG_TYPE_INFO, "WSTrust Mex response received", buf, 2u);
  }

  if (v9)
  {
    if (v7)
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
    }

    else
    {
      v11 = 0;
    }

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke_271;
    v34[3] = &unk_279A3DE00;
    v35 = v9;
    v36 = v11;
    v12 = v11;
    v17 = __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke_271(v34);
    v18 = [a1[4] completionQueue];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke_275;
    v32[3] = &unk_279A3DF48;
    v33 = a1[6];
    [v18 addOperationWithBlock:v32];

    v16 = v35;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v19 = __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke_2();
      v20 = [a1[4] completionQueue];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke_281;
      v30[3] = &unk_279A3DF48;
      v31 = a1[6];
      [v20 addOperationWithBlock:v30];

      v12 = v31;
      goto LABEL_13;
    }

    v12 = v8;
    if ([v12 statusCode] >= 200 && (v13 = objc_msgSend(v12, "statusCode"), v13 < 300))
    {
      v21 = PO_LOG_POAuthenticationProcess(v13);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke_cold_1();
      }

      [a1[5] setWsTrustVersion:0];
      if (![a1[4] validateWSTrustMexResponseWithContext:a1[5] response:v7] || !objc_msgSend(a1[5], "wsTrustVersion") || (objc_msgSend(a1[5], "wsTrustFederationURL"), v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
      {
        (*(a1[6] + 2))();
        goto LABEL_13;
      }

      v23 = [a1[4] completionQueue];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke_287;
      v24[3] = &unk_279A3DF48;
      v25 = a1[6];
      [v23 addOperationWithBlock:v24];

      v16 = v25;
    }

    else
    {
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke_2_282;
      v28[3] = &unk_279A3DC48;
      v12 = v12;
      v29 = v12;
      v14 = __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke_2_282(v28);
      v15 = [a1[4] completionQueue];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke_286;
      v26[3] = &unk_279A3DF48;
      v27 = a1[6];
      [v15 addOperationWithBlock:v26];

      v16 = v29;
    }
  }

LABEL_13:
}

id __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke_271(uint64_t a1)
{
  v1 = [POError errorWithCode:-1009 underlyingError:*(a1 + 32) description:@"Failed to retrieve WSTrust Mex response."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_231_cold_1();
  }

  return v1;
}

id __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke_2()
{
  v0 = [POError errorWithCode:-1009 description:@"Not HTTP response for WSTrust Mex response."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke_2_282(uint64_t a1)
{
  v1 = [POError errorWithCode:-1009 description:@"WSTrust Mex request failed."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_244_cold_1();
  }

  return v1;
}

- (BOOL)validateWSTrustMexResponseWithContext:(id)context response:(id)response
{
  contextCopy = context;
  responseCopy = response;
  wstrustProcess = [(POAuthenticationProcess *)self wstrustProcess];
  v9 = [wstrustProcess parseWSTrustMexResponse:responseCopy version:1];

  if (v9 || (-[POAuthenticationProcess wstrustProcess](self, "wstrustProcess"), v10 = objc_claimAutoreleasedReturnValue(), [v10 parseWSTrustMexResponse:responseCopy version:2], v9 = objc_claimAutoreleasedReturnValue(), v10, v9))
  {
    [contextCopy setWsTrustVersion:{objc_msgSend(v9, "version")}];
    v11 = MEMORY[0x277CBEBC0];
    endpointURLString = [v9 endpointURLString];
    v13 = [v11 URLWithString:endpointURLString];
    [contextCopy setWsTrustFederationURL:v13];

    LOBYTE(v9) = 1;
  }

  else
  {
    v15 = __74__POAuthenticationProcess_validateWSTrustMexResponseWithContext_response___block_invoke();
  }

  return v9;
}

id __74__POAuthenticationProcess_validateWSTrustMexResponseWithContext_response___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to find valid WSTrust values in mex response."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (id)createWSTrust13RequestWithContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc_init(POWSTrustRequest);
  loginConfiguration = [contextCopy loginConfiguration];
  federationRequestURN = [loginConfiguration federationRequestURN];
  [(POWSTrustRequest *)v5 setEndpointURN:federationRequestURN];

  wsTrustFederationNonce = [contextCopy wsTrustFederationNonce];
  [(POWSTrustRequest *)v5 setNonce:wsTrustFederationNonce];

  wsTrustFederationURL = [contextCopy wsTrustFederationURL];
  absoluteString = [wsTrustFederationURL absoluteString];
  [(POWSTrustRequest *)v5 setTo:absoluteString];

  userName = [contextCopy userName];
  [(POWSTrustRequest *)v5 setUserName:userName];

  password = [contextCopy password];
  [(POWSTrustRequest *)v5 setPassword:password];

  wstrustProcess = [(POAuthenticationProcess *)self wstrustProcess];
  v14 = [wstrustProcess createWSTrust13Request:v5];

  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x277CCAB70]);
    wsTrustFederationURL2 = [contextCopy wsTrustFederationURL];
    v17 = [v15 initWithURL:wsTrustFederationURL2 cachePolicy:4 timeoutInterval:30.0];

    [v17 setHTTPMethod:@"POST"];
    [v17 addValue:@"application/soap+xml; charset=utf-8" forHTTPHeaderField:@"Content-type"];
    [v17 addValue:@"http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Issue" forHTTPHeaderField:@"SOAPAction"];
    [v17 setHTTPBody:v14];
  }

  else
  {
    v18 = __61__POAuthenticationProcess_createWSTrust13RequestWithContext___block_invoke();
    v17 = 0;
  }

  return v17;
}

id __61__POAuthenticationProcess_createWSTrust13RequestWithContext___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to created WSTrust login request."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (id)createWSTrust2005RequestWithContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc_init(POWSTrustRequest);
  loginConfiguration = [contextCopy loginConfiguration];
  federationRequestURN = [loginConfiguration federationRequestURN];
  [(POWSTrustRequest *)v5 setEndpointURN:federationRequestURN];

  wsTrustFederationNonce = [contextCopy wsTrustFederationNonce];
  [(POWSTrustRequest *)v5 setNonce:wsTrustFederationNonce];

  wsTrustFederationURL = [contextCopy wsTrustFederationURL];
  absoluteString = [wsTrustFederationURL absoluteString];
  [(POWSTrustRequest *)v5 setTo:absoluteString];

  userName = [contextCopy userName];
  [(POWSTrustRequest *)v5 setUserName:userName];

  password = [contextCopy password];
  [(POWSTrustRequest *)v5 setPassword:password];

  wstrustProcess = [(POAuthenticationProcess *)self wstrustProcess];
  v14 = [wstrustProcess createWSTrust2005Request:v5];

  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x277CCAB70]);
    wsTrustFederationURL2 = [contextCopy wsTrustFederationURL];
    v17 = [v15 initWithURL:wsTrustFederationURL2 cachePolicy:4 timeoutInterval:30.0];

    [v17 setHTTPMethod:@"POST"];
    [v17 addValue:@"application/soap+xml; charset=utf-8" forHTTPHeaderField:@"Content-type"];
    [v17 addValue:@"http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Issue" forHTTPHeaderField:@"SOAPAction"];
    [v17 setHTTPBody:v14];
  }

  else
  {
    v18 = __61__POAuthenticationProcess_createWSTrust13RequestWithContext___block_invoke();
    v17 = 0;
  }

  return v17;
}

- (void)performWSTrustAuthenticationRequestWithContext:(id)context request:(id)request completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  requestCopy = request;
  urlSession = [contextCopy urlSession];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke;
  v21 = &unk_279A3DF70;
  v23 = contextCopy;
  v24 = completionCopy;
  selfCopy = self;
  v12 = contextCopy;
  v13 = completionCopy;
  v14 = [urlSession dataTaskWithRequest:requestCopy completionHandler:&v18];

  v15 = MEMORY[0x277CCACA8];
  requestIdentifier = [v12 requestIdentifier];
  selfCopy = [v15 stringWithFormat:@"WSTrust Login Request: %@", requestIdentifier, v18, v19, v20, v21, selfCopy];
  [v14 setTaskDescription:selfCopy];

  [v14 resume];
}

void __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PO_LOG_POAuthenticationProcess(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v10, OS_LOG_TYPE_INFO, "WSTrust login response received", buf, 2u);
  }

  if (v9)
  {
    if (v7)
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
    }

    else
    {
      v11 = 0;
    }

    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_316;
    v46[3] = &unk_279A3DE00;
    v47 = v9;
    v48 = v11;
    v12 = v11;
    v17 = __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_316(v46);
    v18 = [a1[4] completionQueue];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_320;
    v43[3] = &unk_279A3DF98;
    v45 = a1[6];
    v44 = a1[5];
    [v18 addOperationWithBlock:v43];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v8;
      if ([v12 statusCode] == 200 || objc_msgSend(v12, "statusCode") == 500)
      {
        v13 = +[POCoreConfigurationUtil platformSSODevModeEnabled];
        v14 = v13;
        v15 = PO_LOG_POAuthenticationProcess(v13);
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
        if (v14)
        {
          if (v16)
          {
            __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_cold_2();
          }
        }

        else if (v16)
        {
          __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_cold_1();
        }

        v21 = a1[4];
        v22 = a1[5];
        v34 = 0;
        v23 = [v21 validateWSTrustAuthenticationResponseWithContext:v22 response:v7 returningAssertion:&v34];
        v24 = v34;
        v25 = [a1[4] completionQueue];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_333;
        v29[3] = &unk_279A3DFC0;
        v32 = a1[6];
        v33 = v23;
        v30 = a1[5];
        v31 = v24;
        v26 = v24;
        [v25 addOperationWithBlock:v29];
      }

      else
      {
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_2_327;
        v38[3] = &unk_279A3DC48;
        v39 = v12;
        v27 = __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_2_327(v38);
        v28 = [a1[4] completionQueue];
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_331;
        v35[3] = &unk_279A3DF98;
        v37 = a1[6];
        v36 = a1[5];
        [v28 addOperationWithBlock:v35];

        v26 = v39;
      }
    }

    else
    {
      v19 = __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_2();
      v20 = [a1[4] completionQueue];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_326;
      v40[3] = &unk_279A3DF98;
      v42 = a1[6];
      v41 = a1[5];
      [v20 addOperationWithBlock:v40];

      v12 = v42;
    }
  }
}

id __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_316(uint64_t a1)
{
  v1 = [POError errorWithCode:-1009 underlyingError:*(a1 + 32) description:@"Failed to retrieve WSTrust login response."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_231_cold_1();
  }

  return v1;
}

id __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_2()
{
  v0 = [POError errorWithCode:-1009 description:@"Not HTTP response for WSTrust login response."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_2_327(uint64_t a1)
{
  v1 = [POError errorWithCode:-1009 description:@"WSTrust login request failed."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_244_cold_1();
  }

  return v1;
}

- (unint64_t)validateWSTrustAuthenticationResponseWithContext:(id)context response:(id)response returningAssertion:(id *)assertion
{
  contextCopy = context;
  *assertion = 0;
  responseCopy = response;
  wstrustProcess = [(POAuthenticationProcess *)self wstrustProcess];
  v11 = [wstrustProcess parseWSTrustResponse:responseCopy version:{objc_msgSend(contextCopy, "wsTrustVersion")}];

  if (!v11)
  {
    v22 = __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke();
LABEL_15:
    v21 = 3;
    goto LABEL_16;
  }

  nonce = [v11 nonce];
  wsTrustFederationNonce = [contextCopy wsTrustFederationNonce];
  v14 = [nonce isEqualToString:wsTrustFederationNonce];

  if ((v14 & 1) == 0)
  {
    v23 = __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_342();
    goto LABEL_15;
  }

  if (![v11 isFault])
  {
    nonce2 = [v11 nonce];
    if (nonce2 && (v25 = nonce2, [v11 created], v26 = objc_claimAutoreleasedReturnValue(), v26, v25, v26))
    {
      created = [v11 created];
      [created timeIntervalSinceNow];
      v29 = v28;

      if (v29 <= 120.0)
      {
        expires = [v11 expires];

        if (expires && ([v11 expires], v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "timeIntervalSinceNow"), v36 = v35, v34, v36 < -120.0))
        {
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_365;
          v45[3] = &__block_descriptor_40_e14___NSError_8__0l;
          *&v45[4] = v36;
          v42 = __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_365(v45);
        }

        else
        {
          tokenType = [v11 tokenType];
          v38 = [tokenType length];

          if (v38)
          {
            tokenType2 = [v11 tokenType];
            [contextCopy setTokenTypeNamespace:tokenType2];

            assertion = [v11 assertion];

            if (assertion)
            {
              assertion2 = [v11 assertion];
              *assertion = [assertion2 dataUsingEncoding:4];

              v21 = 1;
              goto LABEL_16;
            }

            v44 = __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_375();
          }

          else
          {
            v43 = __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_369();
          }
        }
      }

      else
      {
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_361;
        v46[3] = &__block_descriptor_40_e14___NSError_8__0l;
        *&v46[4] = v29;
        v30 = __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_361(v46);
      }
    }

    else
    {
      v31 = __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_355();
    }

    goto LABEL_15;
  }

  v15 = MEMORY[0x277CCACA8];
  faultSubCodeValue = [v11 faultSubCodeValue];
  faultReason = [v11 faultReason];
  v18 = [v15 stringWithFormat:@"faultSubCode = %@, faultReason = %@", faultSubCodeValue, faultReason];

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_351;
  v47[3] = &unk_279A3DC48;
  v48 = v18;
  v19 = v18;
  v20 = __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_351(v47);
  if ([v11 isCredentialFault])
  {
    v21 = 4;
  }

  else
  {
    v21 = 3;
  }

LABEL_16:
  return v21;
}

id __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to parse WSTrust login response."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_342()
{
  v0 = [POError errorWithCode:-1001 description:@"WSTrust login response validation failed."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_351(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 description:@"WSTrust login failed"];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1();
  }

  return v1;
}

id __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_355()
{
  v0 = [POError errorWithCode:-1008 description:@"WSTrust login response validation missing required values."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_361(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 description:@"Failed to verify created."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_361_cold_1();
  }

  return v1;
}

id __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_365(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 description:@"Failed to verify expires."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_361_cold_1();
  }

  return v1;
}

id __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_369()
{
  v0 = [POError errorWithCode:-1008 description:@"WSTrust login response missing TokenType."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_375()
{
  v0 = [POError errorWithCode:-1008 description:@"WSTrust login response validation missing assertion."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)performLoginWithContext:(id)context loginJWT:(id)t completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  tCopy = t;
  completionCopy = completion;
  deviceConfiguration = [contextCopy deviceConfiguration];
  signingAlgorithm = [deviceConfiguration signingAlgorithm];
  deviceConfiguration2 = [contextCopy deviceConfiguration];
  deviceSigningKey = [deviceConfiguration2 deviceSigningKey];
  deviceConfiguration3 = [contextCopy deviceConfiguration];
  v16 = +[POJWTSigning encodeAndSignJWT:signingAlgorithm:key:certificate:error:](POJWTSigning, "encodeAndSignJWT:signingAlgorithm:key:certificate:error:", tCopy, signingAlgorithm, deviceSigningKey, [deviceConfiguration3 deviceSigningCertificate], 0);

  if (v16)
  {
    body = [tCopy body];
    [body zeroPassword];

    v18 = [(POAuthenticationProcess *)self createLoginRequestWithContext:contextCopy jwt:v16];
    if (v18)
    {

      v20 = PO_LOG_PODiagnostics(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        requestIdentifier = [contextCopy requestIdentifier];
        *buf = 138543362;
        v34 = requestIdentifier;
        _os_log_impl(&dword_25E8B1000, v20, OS_LOG_TYPE_DEFAULT, "Sending login request: %{public}@", buf, 0xCu);
      }

      v23 = PO_LOG_POAuthenticationProcess(v22);
      v24 = os_signpost_id_make_with_pointer(v23, contextCopy);

      v26 = PO_LOG_POAuthenticationProcess(v25);
      v27 = v26;
      if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25E8B1000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v24, "PlatformSSO_LoginRequest", " enableTelemetry=YES ", buf, 2u);
      }

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_392;
      v30[3] = &unk_279A3DF20;
      v32 = v24;
      v30[4] = self;
      v31 = completionCopy;
      [(POAuthenticationProcess *)self performLoginRequestWithContext:contextCopy request:v18 completion:v30];

      tCopy = 0;
    }

    else
    {
      v29 = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_386();
      (*(completionCopy + 2))(completionCopy, 2, contextCopy, 0);
    }
  }

  else
  {
    v28 = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke();
    (*(completionCopy + 2))(completionCopy, 2, contextCopy, 0);
  }
}

id __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to sign login request."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_386()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create login request."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

void __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_392(void *a1, uint64_t a2, void *a3, void *a4)
{
  v101 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = PO_LOG_POAuthenticationProcess(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v9, OS_LOG_TYPE_INFO, "Login response received", buf, 2u);
  }

  v11 = PO_LOG_POAuthenticationProcess(v10);
  v12 = v11;
  v13 = a1[6];
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 134217984;
    v100 = a2;
    _os_signpost_emit_with_name_impl(&dword_25E8B1000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PlatformSSO_LoginRequest", "result=%lu", buf, 0xCu);
  }

  if (a2 == 1)
  {
    v14 = [POLoginResponseTokenJWT alloc];
    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
    v16 = [(POLoginResponseTokenJWT *)v14 initWithString:v15];

    if (v16)
    {
      v84 = v8;
      v17 = *(a1[4] + 40);
      v18 = [(POJWT *)v16 decodedHeader];
      v19 = [v18 enc];
      v85 = a1;
      if ([v17 containsObject:v19])
      {

        goto LABEL_13;
      }

      v22 = *(a1[4] + 40);
      v23 = MEMORY[0x277CCACA8];
      v24 = [(POJWT *)v16 decodedHeader];
      [v24 alg];
      v26 = v25 = v16;
      v27 = [(POJWT *)v25 decodedHeader];
      v28 = [v27 enc];
      v29 = [v23 stringWithFormat:@"%@, %@", v26, v28];
      LOBYTE(v22) = [v22 containsObject:v29];

      v16 = v25;
      if (v22)
      {
LABEL_13:
        v30 = [v7 deviceConfiguration];
        v31 = [v30 encryptionAlgorithm];
        v86 = v16;
        if ([v31 isEqualToNumber:?])
        {
          [v7 apv];
        }

        else
        {
          [v7 nonce];
        }
        v83 = ;

        v81 = [v7 deviceConfiguration];
        v32 = [v81 encryptionAlgorithm];
        v33 = [v7 deviceConfiguration];
        v34 = [v33 deviceEncryptionKey];
        v35 = [v7 loginConfiguration];
        v36 = [v35 hpkePsk];
        v37 = [v7 loginConfiguration];
        v38 = [v37 hpkePsk_id];
        v39 = v7;
        v40 = v38;
        v80 = v39;
        v41 = [v39 loginConfiguration];
        v42 = [v41 hpkeAuthPublicKey];
        v96 = 0;
        v43 = [POJWTEncryption decodeAndDecryptJWT:v86 encryptionAlgorithm:v32 privateKey:v34 otherInfo:v83 psk:v36 psk_id:v40 authPublicKey:v42 error:&v96];
        v44 = v96;

        if (v43)
        {
          v82 = v44;
          v7 = v80;
          v45 = [v80 deviceConfiguration];
          v46 = [v45 encryptionAlgorithm];
          v47 = [v46 isEqualToNumber:0x2870A9198];

          v8 = v84;
          v16 = v86;
          if (!v47)
          {
LABEL_22:
            v53 = +[POCoreConfigurationUtil platformSSODevModeEnabled];
            v54 = v83;
            if (v53)
            {
              v55 = PO_LOG_POAuthenticationProcess(v53);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
              {
                __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_392_cold_1();
              }
            }

            v56 = [(POLoginResponseTokenJWT *)v86 decodedBody];
            v57 = [POIDTokenJWT alloc];
            v58 = [v56 id_token];
            v59 = [(POIDTokenJWT *)v57 initWithString:v58];

            if (v59)
            {
              v60 = [(POJWT *)v59 decodedHeader];
              v61 = [v60 kid];

              v62 = v82;
              if ([v61 length])
              {
                v63 = v85[4];
                v87[0] = MEMORY[0x277D85DD0];
                v87[1] = 3221225472;
                v87[2] = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_445;
                v87[3] = &unk_279A3DFE8;
                v88 = v61;
                v93 = v85[5];
                v64 = v80;
                v65 = v85[4];
                v89 = v64;
                v90 = v65;
                v91 = v59;
                v92 = v86;
                v66 = v64;
                v54 = v83;
                [v63 retrieveSigningKeyWithContext:v66 keyId:v88 completion:v87];
              }

              else
              {
                v78 = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_439();
                (*(v85[5] + 16))();
              }
            }

            else
            {
              v77 = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_433();
              (*(v85[5] + 16))();
              v62 = v82;
            }

            v8 = v84;
            goto LABEL_38;
          }

          if ([v85[4] validatePartyUInfo:v86 context:v80])
          {
            v48 = [v80 deviceConfiguration];
            v49 = SecKeyCopyPublicKey([v48 deviceEncryptionKey]);

            v50 = v85[4];
            v51 = [v80 apv];
            v52 = [v50 validatePartyVInfo:v51 context:v80 publicKey:v49];

            if (v49)
            {
              CFRelease(v49);
            }

            if (v52)
            {
              goto LABEL_22;
            }

            v79 = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_426();
          }

          else
          {
            v76 = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_420();
          }

          (*(v85[5] + 16))();
          v62 = v44;
          v54 = v83;
        }

        else
        {
          v54 = v83;
          v94[0] = MEMORY[0x277D85DD0];
          v94[1] = 3221225472;
          v94[2] = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_416;
          v94[3] = &unk_279A3DC48;
          v95 = v44;
          v67 = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_416(v94);
          v7 = v80;
          (*(v85[5] + 16))();

          v8 = v84;
          v16 = v86;
          v62 = v44;
        }

LABEL_38:

        goto LABEL_39;
      }

      v68 = MEMORY[0x277CCACA8];
      v69 = [(POJWT *)v25 decodedHeader];
      v70 = [v69 alg];
      v71 = [(POJWT *)v25 decodedHeader];
      v72 = [v71 enc];
      v73 = [v68 stringWithFormat:@"alg = %@, enc = %@", v70, v72];

      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_412;
      v97[3] = &unk_279A3DC48;
      v98 = v73;
      v74 = v73;
      v75 = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_412(v97);
      (*(v85[5] + 16))();

      v8 = v84;
    }

    else
    {
      v21 = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_400();
      (*(a1[5] + 16))();
    }

LABEL_39:

    goto LABEL_40;
  }

  v20 = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_393();
  (*(a1[5] + 16))();
LABEL_40:
}

id __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_393()
{
  v0 = [POError errorWithCode:-1001 description:@"login request failed."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_400()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to parse login response."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_412(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 description:@"unsupported login response algorithm and encryption."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1();
  }

  return v1;
}

id __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_416(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 underlyingError:*(a1 + 32) description:@"Failed to decrypt login response."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

id __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_420()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to validate apu."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_426()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to validate apv."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_433()
{
  v0 = [POError errorWithCode:-1008 description:@"No id_token in login response."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_439()
{
  v0 = [POError errorWithCode:-1008 description:@"No kid in login response id_token."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

void __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_445(uint64_t a1, const void *a2)
{
  v4 = PO_LOG_POAuthenticationProcess(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v4, OS_LOG_TYPE_INFO, "JWKS response received", buf, 2u);
  }

  if (a2)
  {
    if ([*(a1 + 48) validateIdToken:*(a1 + 56) context:*(a1 + 40) key:a2])
    {
      v5 = *(a1 + 72);
      v6 = *(a1 + 40);
      v7 = objc_alloc(MEMORY[0x277CBEA90]);
      v8 = [*(a1 + 64) rawBody];
      v9 = [v7 psso_initWithBase64URLEncodedString:v8];
      (*(v5 + 16))(v5, 1, v6, v9);
    }

    else
    {
      v11 = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_451();
      (*(*(a1 + 72) + 16))();
    }

    CFRelease(a2);
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_446;
    v12[3] = &unk_279A3DC48;
    v13 = *(a1 + 32);
    v10 = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_446(v12);
    (*(*(a1 + 72) + 16))();
  }
}

id __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_446(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 description:@"No key available with identifier."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1();
  }

  return v1;
}

id __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_451()
{
  v0 = [POError errorWithCode:-1008 description:@"id_token signature check failed."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (id)createAuthenticationContextUsingLoginConfiguration:(id)configuration deviceConfiguration:(id)deviceConfiguration userName:(id)name resumeData:(id)data
{
  configurationCopy = configuration;
  deviceConfigurationCopy = deviceConfiguration;
  dataCopy = data;
  nameCopy = name;
  v14 = objc_alloc_init(POAuthenticationContext);
  [(POAuthenticationContext *)v14 setLoginConfiguration:configurationCopy];
  [(POAuthenticationContext *)v14 setDeviceConfiguration:deviceConfigurationCopy];
  [(POAuthenticationContext *)v14 setUserName:nameCopy];

  ephemeralSessionConfiguration = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
  [ephemeralSessionConfiguration set_preventsAppSSO:1];
  if ([(POAuthenticationProcess *)self waitForConnectivity])
  {
    [ephemeralSessionConfiguration setWaitsForConnectivity:1];
    [(POAuthenticationProcess *)self timeoutIntervalForResource];
    if (v16 == 0.0)
    {
      v16 = 180.0;
    }

    [ephemeralSessionConfiguration setTimeoutIntervalForResource:v16];
  }

  v17 = [MEMORY[0x277CCAD30] sessionWithConfiguration:ephemeralSessionConfiguration delegate:self delegateQueue:0];
  [(POAuthenticationContext *)v14 setUrlSession:v17];

  [(POAuthenticationContext *)v14 setScope:@"openid offline_access"];
  additionalScopes = [configurationCopy additionalScopes];
  v19 = [additionalScopes length];

  if (v19)
  {
    additionalScopes2 = [configurationCopy additionalScopes];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v22 = [additionalScopes2 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    v23 = MEMORY[0x277CCACA8];
    scope = [(POAuthenticationContext *)v14 scope];
    v25 = [v23 stringWithFormat:@"%@ %@", scope, v22];
    [(POAuthenticationContext *)v14 setScope:v25];
  }

  if (dataCopy)
  {
    [(POAuthenticationContext *)v14 applyResumeData:dataCopy];
  }

  if (!deviceConfigurationCopy)
  {
    goto LABEL_13;
  }

  if ([deviceConfigurationCopy deviceEncryptionKey])
  {
    encryptionAlgorithm = [deviceConfigurationCopy encryptionAlgorithm];
    v27 = [encryptionAlgorithm isEqualToNumber:0x2870A9198];

    if (v27)
    {
      nonce = [(POAuthenticationContext *)v14 nonce];
      v29 = -[POAuthenticationProcess createPartyVInfoWithNonce:apvKey:](self, "createPartyVInfoWithNonce:apvKey:", nonce, [deviceConfigurationCopy deviceEncryptionKey]);
      [(POAuthenticationContext *)v14 setApv:v29];
    }

LABEL_13:
    v30 = v14;
    goto LABEL_15;
  }

  v30 = 0;
LABEL_15:

  return v30;
}

- (id)createPartyVInfoWithNonce:(id)nonce apvKey:(__SecKey *)key
{
  v6 = [nonce dataUsingEncoding:1];
  v7 = [@"Apple" dataUsingEncoding:4];
  v8 = SecKeyCopyPublicKey(key);
  v9 = [(POAuthenticationProcess *)self createPartyVInfoWithNonce:v6 prefixData:v7 apvPublicKey:v8];
  if (v8)
  {
    CFRelease(v8);
  }

  return v9;
}

- (id)createPartyVInfoWithNonce:(id)nonce prefixData:(id)data apvPublicKey:(__SecKey *)key
{
  nonceCopy = nonce;
  dataCopy = data;
  if (key && [nonceCopy length])
  {
    v9 = SecKeyCopyExternalRepresentation(key, 0);
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v15 = bswap32([dataCopy length]);
    [v10 appendBytes:&v15 length:4];
    [v10 appendData:dataCopy];
    v14 = bswap32([(__CFData *)v9 length]);
    [v10 appendBytes:&v14 length:4];
    [v10 appendData:v9];
    v13 = bswap32([nonceCopy length]);
    [v10 appendBytes:&v13 length:4];
    [v10 appendData:nonceCopy];
    psso_base64URLEncodedString = [v10 psso_base64URLEncodedString];
  }

  else
  {
    psso_base64URLEncodedString = 0;
  }

  return psso_base64URLEncodedString;
}

- (id)createNonceRequestWithContext:(id)context
{
  v27[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v4 = objc_alloc(MEMORY[0x277CCAB70]);
  loginConfiguration = [contextCopy loginConfiguration];
  nonceEndpointURL = [loginConfiguration nonceEndpointURL];
  v7 = [v4 initWithURL:nonceEndpointURL cachePolicy:4 timeoutInterval:30.0];

  [v7 setHTTPMethod:@"POST"];
  [v7 addValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-type"];
  [v7 addValue:@"application/json" forHTTPHeaderField:@"Accept"];
  requestIdentifier = [contextCopy requestIdentifier];
  [v7 addValue:requestIdentifier forHTTPHeaderField:@"client-request-id"];

  v9 = objc_alloc_init(MEMORY[0x277CCACE0]);
  v10 = [MEMORY[0x277CCAD18] queryItemWithName:@"grant_type" value:@"srv_challenge"];
  v27[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];

  loginConfiguration2 = [contextCopy loginConfiguration];
  customNonceRequestValues = [loginConfiguration2 customNonceRequestValues];

  if (customNonceRequestValues)
  {
    loginConfiguration3 = [contextCopy loginConfiguration];
    customNonceRequestValues2 = [loginConfiguration3 customNonceRequestValues];
    v16 = [v11 arrayByAddingObjectsFromArray:customNonceRequestValues2];

    v11 = v16;
  }

  [v9 setQueryItems:v11];
  percentEncodedQuery = [v9 percentEncodedQuery];
  v18 = [percentEncodedQuery dataUsingEncoding:4];
  [v7 setHTTPBody:v18];

  v20 = PO_LOG_POAuthenticationProcess(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess createNonceRequestWithContext:];
  }

  v22 = PO_LOG_POAuthenticationProcess(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    requestIdentifier2 = [contextCopy requestIdentifier];
    v25 = 138543362;
    v26 = requestIdentifier2;
    _os_log_impl(&dword_25E8B1000, v22, OS_LOG_TYPE_INFO, "server nonce request: %{public}@", &v25, 0xCu);
  }

  return v7;
}

- (void)performNonceRequestWithContext:(id)context request:(id)request completion:(id)completion
{
  contextCopy = context;
  requestCopy = request;
  completionCopy = completion;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __77__POAuthenticationProcess_performNonceRequestWithContext_request_completion___block_invoke;
  v18 = &unk_279A3E038;
  v19 = contextCopy;
  selfCopy = self;
  v21 = requestCopy;
  v22 = completionCopy;
  v11 = completionCopy;
  v12 = requestCopy;
  v13 = contextCopy;
  v14 = MEMORY[0x25F8C39C0](&v15);
  [(POAuthenticationProcess *)self _performNonceRequestWithContext:v13 request:v12 completion:v14, v15, v16, v17, v18];
}

void __77__POAuthenticationProcess_performNonceRequestWithContext_request_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2 == 5 && [*(a1 + 32) retriesRemaining] >= 1)
  {
    v4 = PO_LOG_POAuthenticationProcess([*(a1 + 32) setRetriesRemaining:{objc_msgSend(*(a1 + 32), "retriesRemaining") - 1}]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) requestIdentifier];
      *buf = 138543362;
      v11 = v5;
      _os_log_impl(&dword_25E8B1000, v4, OS_LOG_TYPE_INFO, "retrying server nonce request: %{public}@", buf, 0xCu);
    }

    [MEMORY[0x277CCACC8] sleepForTimeInterval:{objc_msgSend(*(a1 + 32), "retryDelay")}];
    [*(a1 + 40) performNonceRequestWithContext:*(a1 + 32) request:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    v6 = [*(a1 + 40) completionQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __77__POAuthenticationProcess_performNonceRequestWithContext_request_completion___block_invoke_482;
    v7[3] = &unk_279A3E010;
    v8 = *(a1 + 56);
    v9 = a2;
    [v6 addOperationWithBlock:v7];
  }
}

- (void)_performNonceRequestWithContext:(id)context request:(id)request completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  requestCopy = request;
  urlSession = [contextCopy urlSession];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke;
  v21 = &unk_279A3DF70;
  v23 = contextCopy;
  v24 = completionCopy;
  selfCopy = self;
  v12 = contextCopy;
  v13 = completionCopy;
  v14 = [urlSession dataTaskWithRequest:requestCopy completionHandler:&v18];

  v15 = MEMORY[0x277CCACA8];
  requestIdentifier = [v12 requestIdentifier];
  selfCopy = [v15 stringWithFormat:@"Server Nonce Request: %@", requestIdentifier, v18, v19, v20, v21, selfCopy];
  [v14 setTaskDescription:selfCopy];

  [v14 resume];
}

void __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PO_LOG_POAuthenticationProcess(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v10, OS_LOG_TYPE_INFO, "Nonce response received", buf, 2u);
  }

  if (v9)
  {
    if (v7)
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
    }

    else
    {
      v11 = 0;
    }

    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_483;
    v56[3] = &unk_279A3DE00;
    v57 = v9;
    v58 = v11;
    v12 = v11;
    v16 = __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_483(v56);
    v17 = [a1[4] completionQueue];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_487;
    v54[3] = &unk_279A3DF48;
    v55 = a1[6];
    [v17 addOperationWithBlock:v54];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v8;
      if ([v12 statusCode] >= 200 && objc_msgSend(v12, "statusCode") < 300)
      {
        v20 = +[POCoreConfigurationUtil platformSSODevModeEnabled];
        v21 = v20;
        v22 = PO_LOG_POAuthenticationProcess(v20);
        v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
        if (v21)
        {
          if (v23)
          {
            __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_cold_2();
          }
        }

        else if (v23)
        {
          __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_cold_1();
        }

        v47 = 0;
        v24 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:16 error:&v47];
        v25 = v47;
        v15 = v25;
        if (!v24 || v25)
        {
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_499;
          v45[3] = &unk_279A3DC48;
          v46 = v25;
          v32 = __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_499(v45);
          v33 = [a1[4] completionQueue];
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_503;
          v43[3] = &unk_279A3DF48;
          v44 = a1[6];
          [v33 addOperationWithBlock:v43];

          v34 = v46;
        }

        else
        {
          v40 = v24;
          obj = a1[5];
          objc_sync_enter(obj);
          v26 = [a1[5] loginConfiguration];
          v27 = [v26 nonceResponseKeypath];

          if (v27)
          {
            v28 = [a1[5] loginConfiguration];
            v29 = [v28 nonceResponseKeypath];
            v30 = [v40 valueForKeyPath:v29];
            v31 = v30;
            if (!v30)
            {
              v31 = [v40 objectForKeyedSubscript:@"Nonce"];
            }

            [a1[5] setServerNonce:v31];
            if (!v30)
            {
            }
          }

          else
          {
            v28 = [v40 objectForKeyedSubscript:@"Nonce"];
            [a1[5] setServerNonce:v28];
          }

          v35 = [MEMORY[0x277CBEAA8] date];
          [a1[5] setServerNonceReceived:v35];

          v36 = [a1[5] serverNonce];

          v37 = [a1[4] completionQueue];
          if (v36)
          {
            v38 = v42;
            v42[0] = MEMORY[0x277D85DD0];
            v42[1] = 3221225472;
            v42[2] = __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_2_508;
            v42[3] = &unk_279A3DF48;
            v42[4] = a1[6];
            [v37 addOperationWithBlock:v42];
          }

          else
          {
            v38 = v41;
            v41[0] = MEMORY[0x277D85DD0];
            v41[1] = 3221225472;
            v41[2] = __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_3;
            v41[3] = &unk_279A3DF48;
            v41[4] = a1[6];
            [v37 addOperationWithBlock:v41];
          }

          v34 = obj;
          objc_sync_exit(obj);
          v24 = v40;
        }
      }

      else
      {
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_2_494;
        v50[3] = &unk_279A3DC48;
        v51 = v12;
        v13 = __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_2_494(v50);
        v14 = [a1[4] completionQueue];
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_498;
        v48[3] = &unk_279A3DF48;
        v49 = a1[6];
        [v14 addOperationWithBlock:v48];

        v15 = v51;
      }
    }

    else
    {
      v18 = __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_2();
      v19 = [a1[4] completionQueue];
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_493;
      v52[3] = &unk_279A3DF48;
      v53 = a1[6];
      [v19 addOperationWithBlock:v52];

      v12 = v53;
    }
  }
}

id __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_483(uint64_t a1)
{
  v1 = [POError errorWithCode:-1009 underlyingError:*(a1 + 32) description:@"Failed to retrieve server nonce."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_231_cold_1();
  }

  return v1;
}

id __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_2()
{
  v0 = [POError errorWithCode:-1009 description:@"Not HTTP response for server nonce."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_2_494(uint64_t a1)
{
  v1 = [POError errorWithCode:-1009 description:@"server nonce request failed."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_244_cold_1();
  }

  return v1;
}

id __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_499(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 underlyingError:*(a1 + 32) description:@"Failed to parse server nonce response."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

- (id)createEmbeddedAssertionWithContext:(id)context
{
  v35[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  loginConfiguration = [contextCopy loginConfiguration];
  audience = [loginConfiguration audience];

  if (audience)
  {
    v6 = objc_alloc_init(POMutableAssertionJWTBody);
    loginConfiguration2 = [contextCopy loginConfiguration];
    customAssertionRequestBodyClaims = [loginConfiguration2 customAssertionRequestBodyClaims];
    [(POMutableAssertionJWTBody *)v6 addCustomClaims:customAssertionRequestBodyClaims];

    loginConfiguration3 = [contextCopy loginConfiguration];
    audience2 = [loginConfiguration3 audience];
    [(POMutableAssertionJWTBody *)v6 setAud:audience2];

    date = [MEMORY[0x277CBEAA8] date];
    [(POMutableAssertionJWTBody *)v6 setIat:date];

    v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:300.0];
    [(POMutableAssertionJWTBody *)v6 setExp:v12];

    userName = [contextCopy userName];
    [(POMutableAssertionJWTBody *)v6 setIss:userName];

    userName2 = [contextCopy userName];
    [(POMutableAssertionJWTBody *)v6 setSub:userName2];

    nonce = [contextCopy nonce];
    [(POMutableAssertionJWTBody *)v6 setNonce:nonce];

    loginConfiguration4 = [contextCopy loginConfiguration];
    serverNonceClaimName = [loginConfiguration4 serverNonceClaimName];
    v18 = [serverNonceClaimName length];

    if (v18)
    {
      loginConfiguration5 = [contextCopy loginConfiguration];
      serverNonceClaimName2 = [loginConfiguration5 serverNonceClaimName];
      v34 = serverNonceClaimName2;
      serverNonce = [contextCopy serverNonce];
      v35[0] = serverNonce;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      [(POMutableAssertionJWTBody *)v6 addCustomClaims:v22];
    }

    else
    {
      loginConfiguration5 = [contextCopy serverNonce];
      [(POMutableAssertionJWTBody *)v6 setRequest_nonce:loginConfiguration5];
    }

    scope = [contextCopy scope];
    [(POMutableAssertionJWTBody *)v6 setScope:scope];

    v26 = objc_alloc_init(POMutableJWTHeader);
    deviceConfiguration = [contextCopy deviceConfiguration];
    sdkVersionString = [deviceConfiguration sdkVersionString];
    v29 = [sdkVersionString compare:&unk_2870A92D8];

    if (v29 == -1)
    {
      v30 = @"JWT";
    }

    else
    {
      v30 = @"platformsso-login-assertion+jwt";
    }

    [(POMutableJWTHeader *)v26 setTyp:v30];
    loginConfiguration6 = [contextCopy loginConfiguration];
    customAssertionRequestHeaderClaims = [loginConfiguration6 customAssertionRequestHeaderClaims];
    [(POMutableJWTHeader *)v26 addCustomClaims:customAssertionRequestHeaderClaims];

    v24 = objc_alloc_init(POMutableAssertionTokenJWT);
    [(POMutableAssertionTokenJWT *)v24 setBody:v6];
    [(POMutableJWT *)v24 setHeader:v26];
  }

  else
  {
    v23 = __62__POAuthenticationProcess_createEmbeddedAssertionWithContext___block_invoke();
    v24 = 0;
  }

  return v24;
}

id __62__POAuthenticationProcess_createEmbeddedAssertionWithContext___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"audience missing from configuration."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (id)createEmbeddedPasswordAssertionWithContext:(id)context
{
  contextCopy = context;
  password = [contextCopy password];

  if (password)
  {
    v6 = [(POAuthenticationProcess *)self createEmbeddedAssertionWithContext:contextCopy];
    password2 = [contextCopy password];
    v8 = [password2 mutableCopy];
    body = [v6 body];
    [body setPassword:v8];

    header = [v6 header];
    [header setTyp:@"platformsso-encrypted-login-assertion+jwt"];
  }

  else
  {
    v11 = __70__POAuthenticationProcess_createEmbeddedPasswordAssertionWithContext___block_invoke();
    v6 = 0;
  }

  return v6;
}

id __70__POAuthenticationProcess_createEmbeddedPasswordAssertionWithContext___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Missing password."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (id)createLoginJWTWithContext:(id)context embeddedAssertion:(id)assertion
{
  v119[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  assertionCopy = assertion;
  password = [contextCopy password];
  v9 = assertionCopy | password;

  if (!v9)
  {
    v12 = __71__POAuthenticationProcess_createLoginJWTWithContext_embeddedAssertion___block_invoke();
    goto LABEL_16;
  }

  password2 = [contextCopy password];

  if (!assertionCopy || !password2)
  {
    loginConfiguration = [contextCopy loginConfiguration];
    clientID = [loginConfiguration clientID];
    if (clientID)
    {
      v15 = clientID;
      scope = [contextCopy scope];
      if (scope)
      {
        v17 = scope;
        nonce = [contextCopy nonce];
        if (nonce)
        {
          v19 = nonce;
          serverNonce = [contextCopy serverNonce];

          if (serverNonce)
          {
            v21 = objc_alloc_init(POMutableLoginJWTBody);
            loginConfiguration2 = [contextCopy loginConfiguration];
            customLoginRequestBodyClaims = [loginConfiguration2 customLoginRequestBodyClaims];
            [(POMutableLoginJWTBody *)v21 addCustomClaims:customLoginRequestBodyClaims];

            loginConfiguration3 = [contextCopy loginConfiguration];
            clientID2 = [loginConfiguration3 clientID];
            [(POMutableLoginJWTBody *)v21 setClient_id:clientID2];

            loginConfiguration4 = [contextCopy loginConfiguration];
            clientID3 = [loginConfiguration4 clientID];
            [(POMutableLoginJWTBody *)v21 setIss:clientID3];

            v28 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:300.0];
            [(POMutableLoginJWTBody *)v21 setExp:v28];

            scope2 = [contextCopy scope];
            [(POMutableLoginJWTBody *)v21 setScope:scope2];

            nonce2 = [contextCopy nonce];
            [(POMutableLoginJWTBody *)v21 setNonce:nonce2];

            v31 = MEMORY[0x277CCACE0];
            loginConfiguration5 = [contextCopy loginConfiguration];
            tokenEndpointURL = [loginConfiguration5 tokenEndpointURL];
            absoluteString = [tokenEndpointURL absoluteString];
            v35 = [v31 componentsWithString:absoluteString];

            [v35 setQuery:0];
            [v35 setQueryItems:0];
            [v35 setFragment:0];
            v105 = v35;
            v36 = [v35 URL];
            absoluteString2 = [v36 absoluteString];
            [(POMutableLoginJWTBody *)v21 setAud:absoluteString2];

            loginConfiguration6 = [contextCopy loginConfiguration];
            serverNonceClaimName = [loginConfiguration6 serverNonceClaimName];
            serverNonce2 = [serverNonceClaimName length];

            if (serverNonce2)
            {
              loginConfiguration7 = [contextCopy loginConfiguration];
              serverNonceClaimName2 = [loginConfiguration7 serverNonceClaimName];
              v118 = serverNonceClaimName2;
              serverNonce2 = [contextCopy serverNonce];
              v119[0] = serverNonce2;
              v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v119 forKeys:&v118 count:1];
              [(POMutableLoginJWTBody *)v21 addCustomClaims:v43];
            }

            else
            {
              loginConfiguration7 = [contextCopy serverNonce];
              [(POMutableLoginJWTBody *)v21 setRequest_nonce:loginConfiguration7];
            }

            userName = [contextCopy userName];
            [(POMutableLoginJWTBody *)v21 setUsername:userName];

            userName2 = [contextCopy userName];
            [(POMutableLoginJWTBody *)v21 setSub:userName2];

            password3 = [contextCopy password];

            if (password3)
            {
              password4 = [contextCopy password];
              v51 = [password4 mutableCopy];
              [(POMutableLoginJWTBody *)v21 setPassword:v51];

              [(POMutableLoginJWTBody *)v21 setGrant_type:@"password"];
            }

            if (assertionCopy)
            {
              if ([contextCopy loginType] == 2 || objc_msgSend(contextCopy, "loginType") == 3 || objc_msgSend(contextCopy, "loginType") == 4)
              {
                [(POMutableLoginJWTBody *)v21 setAssertion:assertionCopy];
                goto LABEL_28;
              }

              if ([contextCopy loginType] == 1)
              {
                [(POMutableLoginJWTBody *)v21 setAssertion:assertionCopy];
                if ([contextCopy federated])
                {
                  tokenTypeNamespace = [contextCopy tokenTypeNamespace];
                  if ([tokenTypeNamespace isEqualToString:@"urn:oasis:names:tc:SAML:1.0:assertion"])
                  {
                  }

                  else
                  {
                    tokenTypeNamespace2 = [contextCopy tokenTypeNamespace];
                    serverNonce2 = [tokenTypeNamespace2 isEqualToString:@"http://docs.oasis-open.org/wss/oasis-wss-saml-token-profile-1.1#SAMLV1.1"];

                    if ((serverNonce2 & 1) == 0)
                    {
                      tokenTypeNamespace3 = [contextCopy tokenTypeNamespace];
                      if (![tokenTypeNamespace3 isEqualToString:@"urn:oasis:names:tc:SAML:2.0:assertion"])
                      {
                        tokenTypeNamespace4 = [contextCopy tokenTypeNamespace];
                        [tokenTypeNamespace4 isEqualToString:@"http://docs.oasis-open.org/wss/oasis-wss-saml-token-profile-1.1#SAMLV2.0"];
                      }

                      v52 = @"urn:ietf:params:oauth:grant-type:saml2-bearer";
                      goto LABEL_29;
                    }
                  }

                  v52 = @"urn:ietf:params:oauth:grant-type:saml1_1-bearer";
LABEL_29:
                  [(POMutableLoginJWTBody *)v21 setGrant_type:v52];
                  goto LABEL_30;
                }

LABEL_28:
                v52 = @"urn:ietf:params:oauth:grant-type:jwt-bearer";
                goto LABEL_29;
              }
            }

LABEL_30:
            loginType = [contextCopy loginType];
            if (loginType == 1)
            {
              v54 = &unk_2870A9300;
            }

            else if (loginType == 3)
            {
              v54 = &unk_2870A9330;
            }

            else
            {
              if (loginType != 2 || !+[POSecKeyHelper checkIfBiometricConstraintsForSigningForKey:](POSecKeyHelper, "checkIfBiometricConstraintsForSigningForKey:", [contextCopy embeddedAssertionSigningKey]))
              {
LABEL_38:
                deviceConfiguration = [contextCopy deviceConfiguration];
                userAuthorizationMode = [deviceConfiguration userAuthorizationMode];
                if (userAuthorizationMode == 3)
                {
                  v104 = 0;
                }

                else
                {
                  serverNonce2 = [contextCopy deviceConfiguration];
                  if ([serverNonce2 newUserAuthorizationMode] == 3)
                  {
                    v104 = 0;
                  }

                  else
                  {
                    deviceConfiguration2 = [contextCopy deviceConfiguration];
                    if (![deviceConfiguration2 supportsAuthorization])
                    {
                      goto LABEL_57;
                    }

                    v101 = deviceConfiguration2;
                    v104 = 1;
                  }
                }

                deviceConfiguration3 = [contextCopy deviceConfiguration];
                administratorGroups = [deviceConfiguration3 administratorGroups];
                if ([administratorGroups count])
                {

                  v59 = 1;
                  if (!v104)
                  {
LABEL_45:
                    if (userAuthorizationMode == 3)
                    {

                      if (!v59)
                      {
LABEL_58:
                        date = [MEMORY[0x277CBEAA8] date];
                        [(POMutableLoginJWTBody *)v21 setIat:date];

                        [(POAuthenticationProcess *)self addCryptoHeadersToJWTBody:v21 context:contextCopy];
                        loginConfiguration8 = [contextCopy loginConfiguration];
                        if ([loginConfiguration8 includePreviousRefreshTokenInLoginRequest])
                        {
                          loginConfiguration9 = [contextCopy loginConfiguration];
                          previousRefreshTokenClaimName = [loginConfiguration9 previousRefreshTokenClaimName];
                          v82 = [previousRefreshTokenClaimName length];

                          if (!v82 || ([contextCopy refreshToken], v83 = objc_claimAutoreleasedReturnValue(), v83, !v83))
                          {
LABEL_63:
                            v87 = objc_alloc_init(POMutableJWTHeader);
                            deviceConfiguration4 = [contextCopy deviceConfiguration];
                            sdkVersionString = [deviceConfiguration4 sdkVersionString];
                            v90 = [sdkVersionString compare:&unk_2870A92D8];

                            if (v90 == -1)
                            {
                              v91 = @"JWT";
                            }

                            else
                            {
                              v91 = @"platformsso-login-request+jwt";
                            }

                            [(POMutableJWTHeader *)v87 setTyp:v91];
                            loginConfiguration10 = [contextCopy loginConfiguration];
                            customLoginRequestHeaderClaims = [loginConfiguration10 customLoginRequestHeaderClaims];
                            [(POMutableJWTHeader *)v87 addCustomClaims:customLoginRequestHeaderClaims];

                            v45 = objc_alloc_init(POMutableLoginTokenJWT);
                            [(POMutableLoginTokenJWT *)v45 setBody:v21];
                            [(POMutableJWT *)v45 setHeader:v87];

                            goto LABEL_17;
                          }

                          loginConfiguration8 = [contextCopy loginConfiguration];
                          previousRefreshTokenClaimName2 = [loginConfiguration8 previousRefreshTokenClaimName];
                          v106 = previousRefreshTokenClaimName2;
                          refreshToken = [contextCopy refreshToken];
                          v107 = refreshToken;
                          v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
                          [(POMutableLoginJWTBody *)v21 addCustomClaims:v86];
                        }

                        goto LABEL_63;
                      }
                    }

                    else
                    {

                      if (!v59)
                      {
                        goto LABEL_58;
                      }
                    }

                    v60 = objc_alloc_init(MEMORY[0x277CBEB18]);
                    deviceConfiguration5 = [contextCopy deviceConfiguration];
                    administratorGroups2 = [deviceConfiguration5 administratorGroups];
                    [v60 addObjectsFromArray:administratorGroups2];

                    deviceConfiguration6 = [contextCopy deviceConfiguration];
                    authorizationGroups = [deviceConfiguration6 authorizationGroups];
                    allValues = [authorizationGroups allValues];
                    [v60 addObjectsFromArray:allValues];

                    deviceConfiguration = v60;
                    deviceConfiguration7 = [contextCopy deviceConfiguration];
                    otherGroups = [deviceConfiguration7 otherGroups];
                    [v60 addObjectsFromArray:otherGroups];

                    v102 = [MEMORY[0x277CBEB70] orderedSetWithArray:v60];
                    array = [v102 array];
                    loginConfiguration11 = [contextCopy loginConfiguration];
                    groupRequestClaimName = [loginConfiguration11 groupRequestClaimName];

                    if (groupRequestClaimName)
                    {
                      loginConfiguration12 = [contextCopy loginConfiguration];
                      groupRequestClaimName2 = [loginConfiguration12 groupRequestClaimName];
                      v116 = groupRequestClaimName2;
                      v117 = array;
                      v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
                      [(POMutableLoginJWTBody *)v21 addCustomClaims:v73];
                    }

                    else
                    {
                      v114 = @"claims";
                      v112 = @"id_token";
                      v109 = array;
                      v110 = @"groups";
                      v108 = @"values";
                      loginConfiguration12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
                      v111 = loginConfiguration12;
                      groupRequestClaimName2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
                      v113 = groupRequestClaimName2;
                      v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
                      v115 = v73;
                      v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
                      [(POMutableLoginJWTBody *)v21 addCustomClaims:v77];
                    }

                    deviceConfiguration2 = array;
                    serverNonce2 = v102;
LABEL_57:

                    goto LABEL_58;
                  }
                }

                else
                {
                  v103 = serverNonce2;
                  v100 = deviceConfiguration;
                  deviceConfiguration8 = [contextCopy deviceConfiguration];
                  authorizationGroups2 = [deviceConfiguration8 authorizationGroups];
                  if ([authorizationGroups2 count])
                  {
                    v59 = 1;
                  }

                  else
                  {
                    deviceConfiguration9 = [contextCopy deviceConfiguration];
                    otherGroups2 = [deviceConfiguration9 otherGroups];
                    v59 = [otherGroups2 count] != 0;
                  }

                  deviceConfiguration = v100;
                  serverNonce2 = v103;
                  if ((v104 & 1) == 0)
                  {
                    goto LABEL_45;
                  }
                }

                goto LABEL_45;
              }

              v54 = &unk_2870A9318;
            }

            [(POMutableLoginJWTBody *)v21 setAmr:v54];
            goto LABEL_38;
          }

LABEL_15:
          v44 = __71__POAuthenticationProcess_createLoginJWTWithContext_embeddedAssertion___block_invoke_545();
          goto LABEL_16;
        }
      }
    }

    goto LABEL_15;
  }

  v11 = __71__POAuthenticationProcess_createLoginJWTWithContext_embeddedAssertion___block_invoke_539();
LABEL_16:
  v45 = 0;
LABEL_17:

  return v45;
}

id __71__POAuthenticationProcess_createLoginJWTWithContext_embeddedAssertion___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Missing password or assertion."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __71__POAuthenticationProcess_createLoginJWTWithContext_embeddedAssertion___block_invoke_539()
{
  v0 = [POError errorWithCode:-1001 description:@"unable to use both password and assertion."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __71__POAuthenticationProcess_createLoginJWTWithContext_embeddedAssertion___block_invoke_545()
{
  v0 = [POError errorWithCode:-1001 description:@"Missing required values."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)addCryptoHeadersToJWTBody:(id)body context:(id)context
{
  v27[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  bodyCopy = body;
  deviceConfiguration = [contextCopy deviceConfiguration];
  encryptionAlgorithm = [deviceConfiguration encryptionAlgorithm];
  v9 = [encryptionAlgorithm isEqualToNumber:0x2870A9198];

  if (v9)
  {
    v26 = @"jwe_crypto";
    v24[0] = @"alg";
    v24[1] = @"enc";
    v25[0] = @"ECDH-ES";
    v25[1] = @"A256GCM";
    v24[2] = @"apv";
    v10 = [contextCopy apv];
    v25[2] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
    v27[0] = v11;
    psso_sha256Hash = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    [bodyCopy addCustomClaims:psso_sha256Hash];
  }

  else
  {
    deviceConfiguration2 = [contextCopy deviceConfiguration];
    encryptionAlgorithm2 = [deviceConfiguration2 encryptionAlgorithm];
    v10 = [POJWTEncryption algorithmWithEncryptionAlgorithm:encryptionAlgorithm2];

    deviceConfiguration3 = [contextCopy deviceConfiguration];
    v11 = SecKeyCopyExternalRepresentation([deviceConfiguration3 deviceEncryptionPublicKey], 0);

    psso_sha256Hash = [v11 psso_sha256Hash];
    v16 = [psso_sha256Hash base64EncodedStringWithOptions:0];
    algValue = [v10 algValue];
    v21[2] = v16;
    v22 = @"jwe_crypto";
    v20[0] = @"alg";
    v20[1] = @"enc";
    v21[0] = algValue;
    v21[1] = @"dir";
    v20[2] = @"kid";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
    v23 = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    [bodyCopy addCustomClaims:v19];

    bodyCopy = v16;
  }
}

- (id)createLoginRequestWithContext:(id)context jwt:(id)jwt
{
  v48[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = MEMORY[0x277CCAB70];
  jwtCopy = jwt;
  v8 = [v6 alloc];
  loginConfiguration = [contextCopy loginConfiguration];
  tokenEndpointURL = [loginConfiguration tokenEndpointURL];
  v11 = [v8 initWithURL:tokenEndpointURL cachePolicy:4 timeoutInterval:30.0];

  [v11 setHTTPMethod:@"POST"];
  [v11 addValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-type"];
  deviceConfiguration = [contextCopy deviceConfiguration];
  sdkVersionString = [deviceConfiguration sdkVersionString];
  v14 = [sdkVersionString compare:&unk_2870A92D8];

  if (v14 == -1)
  {
    v15 = @"application/json";
  }

  else
  {
    v15 = @"application/platformsso-login-response+jwt";
  }

  [v11 addValue:v15 forHTTPHeaderField:@"Accept"];
  requestIdentifier = [contextCopy requestIdentifier];
  [v11 addValue:requestIdentifier forHTTPHeaderField:@"client-request-id"];

  v17 = objc_alloc_init(MEMORY[0x277CCACE0]);
  v18 = [MEMORY[0x277CCAD18] queryItemWithName:@"platform_sso_version" value:@"1.0"];
  v48[0] = v18;
  v19 = [MEMORY[0x277CCAD18] queryItemWithName:@"grant_type" value:@"urn:ietf:params:oauth:grant-type:jwt-bearer"];
  v48[1] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];

  if ([contextCopy loginType] == 100 && (objc_msgSend(contextCopy, "loginConfiguration"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "customRefreshRequestValues"), v22 = objc_claimAutoreleasedReturnValue(), v22, v21, v22))
  {
    loginConfiguration2 = [contextCopy loginConfiguration];
    customRefreshRequestValues = [loginConfiguration2 customRefreshRequestValues];
  }

  else
  {
    loginConfiguration3 = [contextCopy loginConfiguration];
    customLoginRequestValues = [loginConfiguration3 customLoginRequestValues];

    if (!customLoginRequestValues)
    {
      goto LABEL_10;
    }

    loginConfiguration2 = [contextCopy loginConfiguration];
    customRefreshRequestValues = [loginConfiguration2 customLoginRequestValues];
  }

  v27 = customRefreshRequestValues;
  v28 = [v20 arrayByAddingObjectsFromArray:customRefreshRequestValues];

  v20 = v28;
LABEL_10:
  [v17 setQueryItems:v20];
  percentEncodedQuery = [v17 percentEncodedQuery];
  v30 = [percentEncodedQuery dataUsingEncoding:4];
  v31 = [v30 mutableCopy];

  deviceConfiguration2 = [contextCopy deviceConfiguration];
  sdkVersionString2 = [deviceConfiguration2 sdkVersionString];
  v34 = [sdkVersionString2 compare:&unk_2870A92D8];

  if (v34 == -1)
  {
    customRequestJWTParameterName2 = @"request";
  }

  else
  {
    customRequestJWTParameterName2 = @"assertion";
  }

  loginConfiguration4 = [contextCopy loginConfiguration];
  customRequestJWTParameterName = [loginConfiguration4 customRequestJWTParameterName];
  v38 = [customRequestJWTParameterName length];

  if (v38)
  {
    loginConfiguration5 = [contextCopy loginConfiguration];
    customRequestJWTParameterName2 = [loginConfiguration5 customRequestJWTParameterName];
  }

  v40 = SecCFAllocatorZeroize();
  v41 = CFStringCreateWithFormat(v40, 0, @"&%@=%@", customRequestJWTParameterName2, jwtCopy);

  if (v41)
  {
    v42 = SecCFAllocatorZeroize();
    ExternalRepresentation = CFStringCreateExternalRepresentation(v42, v41, 0x8000100u, 0);
    if (ExternalRepresentation)
    {
      [v31 appendData:ExternalRepresentation];
      [v11 setHTTPBody:v31];
      v44 = v11;
    }

    else
    {
      v46 = __61__POAuthenticationProcess_createLoginRequestWithContext_jwt___block_invoke();
      v44 = 0;
    }
  }

  else
  {
    v45 = __61__POAuthenticationProcess_createLoginRequestWithContext_jwt___block_invoke();
    v44 = 0;
  }

  return v44;
}

id __61__POAuthenticationProcess_createLoginRequestWithContext_jwt___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create request."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)performLoginRequestWithContext:(id)context request:(id)request completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  requestCopy = request;
  v11 = PO_LOG_POAuthenticationProcess(requestCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    requestIdentifier = [contextCopy requestIdentifier];
    *buf = 138543362;
    v28 = requestIdentifier;
    _os_log_impl(&dword_25E8B1000, v11, OS_LOG_TYPE_INFO, "Sending login request: %{public}@", buf, 0xCu);
  }

  urlSession = [contextCopy urlSession];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke;
  v23 = &unk_279A3DF70;
  v25 = contextCopy;
  v26 = completionCopy;
  selfCopy = self;
  v14 = contextCopy;
  v15 = completionCopy;
  v16 = [urlSession dataTaskWithRequest:requestCopy completionHandler:&v20];

  v17 = MEMORY[0x277CCACA8];
  requestIdentifier2 = [v14 requestIdentifier];
  selfCopy = [v17 stringWithFormat:@"Login Request: %@", requestIdentifier2, v20, v21, v22, v23, selfCopy];
  [v16 setTaskDescription:selfCopy];

  [v16 resume];
}

void __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PO_LOG_POAuthenticationProcess(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v10, OS_LOG_TYPE_INFO, "Login response received", buf, 2u);
  }

  if (v9)
  {
    if (v7)
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
    }

    else
    {
      v11 = 0;
    }

    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_645;
    v69[3] = &unk_279A3DE00;
    v70 = v9;
    v71 = v11;
    v16 = v11;
    v17 = __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_645(v69);
    v18 = [a1[4] completionQueue];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_649;
    v66[3] = &unk_279A3DF98;
    v68 = a1[6];
    v67 = a1[5];
    [v18 addOperationWithBlock:v66];

    v19 = v70;
    goto LABEL_36;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = +[POCoreConfigurationUtil platformSSODevModeEnabled];
    v13 = v12;
    v14 = PO_LOG_POAuthenticationProcess(v12);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
    if (v13)
    {
      if (v15)
      {
        __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_cold_2();
      }
    }

    else if (v15)
    {
      __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_cold_1();
    }

    v16 = v8;
    if ([v16 statusCode] >= 200 && objc_msgSend(v16, "statusCode") < 300)
    {
      v41 = [a1[4] completionQueue];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_4;
      v44[3] = &unk_279A3E060;
      v22 = &v47;
      v47 = a1[6];
      v45 = a1[5];
      v46 = v7;
      [v41 addOperationWithBlock:v44];

      v30 = v45;
    }

    else
    {
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_656;
      v61[3] = &unk_279A3DC48;
      v22 = &v62;
      v23 = v16;
      v62 = v23;
      v24 = __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_656(v61);
      if ([v23 statusCode] == 401 && (objc_msgSend(a1[5], "loginConfiguration"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "invalidCredentialPredicate"), v26 = objc_claimAutoreleasedReturnValue(), v26, v25, !v26))
      {
        v42 = [a1[4] completionQueue];
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_660;
        v58[3] = &unk_279A3DF98;
        v60 = a1[6];
        v59 = a1[5];
        [v42 addOperationWithBlock:v58];

        v30 = v60;
      }

      else
      {
        if ([v23 statusCode] == 400 || objc_msgSend(v23, "statusCode") == 401)
        {
          v27 = [a1[5] loginConfiguration];
          v28 = [v27 invalidCredentialPredicate];

          if (v7)
          {
            if (v28)
            {
              v57 = 0;
              v29 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:16 error:&v57];
              v30 = v57;
              v31 = MEMORY[0x277CCAC30];
              v32 = [a1[5] loginConfiguration];
              v33 = [v32 invalidCredentialPredicate];
              v34 = [v31 predicateWithFormat:v33];

              LODWORD(v32) = [v34 evaluateWithObject:v29];
              if (v32)
              {
                v36 = PO_LOG_POAuthenticationProcess(v35);
                if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_25E8B1000, v36, OS_LOG_TYPE_INFO, "Credentials are not correct", buf, 2u);
                }

                if ([a1[5] loginType] == 2 || objc_msgSend(a1[5], "loginType") == 3)
                {
                  v37 = [a1[4] completionQueue];
                  v54[0] = MEMORY[0x277D85DD0];
                  v54[1] = 3221225472;
                  v54[2] = __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_665;
                  v54[3] = &unk_279A3DF98;
                  v38 = &v56;
                  v56 = a1[6];
                  v39 = &v55;
                  v55 = a1[5];
                  v40 = v54;
                }

                else
                {
                  v37 = [a1[4] completionQueue];
                  v51[0] = MEMORY[0x277D85DD0];
                  v51[1] = 3221225472;
                  v51[2] = __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_2_666;
                  v51[3] = &unk_279A3DF98;
                  v38 = &v53;
                  v53 = a1[6];
                  v39 = &v52;
                  v52 = a1[5];
                  v40 = v51;
                }

                [v37 addOperationWithBlock:v40];

                v22 = &v62;
                goto LABEL_35;
              }

              v22 = &v62;
            }
          }
        }

        v43 = [a1[4] completionQueue];
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_3;
        v48[3] = &unk_279A3DF98;
        v50 = a1[6];
        v49 = a1[5];
        [v43 addOperationWithBlock:v48];

        v30 = v50;
      }
    }

LABEL_35:

    v19 = *v22;
LABEL_36:

    goto LABEL_37;
  }

  v20 = __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_2();
  v21 = [a1[4] completionQueue];
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_655;
  v63[3] = &unk_279A3DF98;
  v65 = a1[6];
  v64 = a1[5];
  [v21 addOperationWithBlock:v63];

  v16 = v65;
LABEL_37:
}

id __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_645(uint64_t a1)
{
  v1 = [POError errorWithCode:-1009 underlyingError:*(a1 + 32) description:@"Failed to login."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_231_cold_1();
  }

  return v1;
}

id __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_2()
{
  v0 = [POError errorWithCode:-1009 description:@"Not HTTP response for login."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_656(uint64_t a1)
{
  v1 = [POError errorWithCode:-1009 description:@"Login request failed."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_244_cold_1();
  }

  return v1;
}

id __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_2_661(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 description:@"Exception when evaluating invalidCredentialPredicate: %{public}@"];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1();
  }

  return v1;
}

- (void)retrieveSigningKeyWithContext:(id)context keyId:(id)id completion:(id)completion
{
  contextCopy = context;
  idCopy = id;
  completionCopy = completion;
  jwksStorageProvider = [contextCopy jwksStorageProvider];
  deviceConfiguration = [contextCopy deviceConfiguration];
  extensionIdentifier = [deviceConfiguration extensionIdentifier];
  v14 = [jwksStorageProvider jwksCacheForExtensionIdentifier:extensionIdentifier];

  if (v14 && ([contextCopy loginConfiguration], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "jwksTrustedRootCertificates"), v17 = objc_claimAutoreleasedReturnValue(), v18 = -[POAuthenticationProcess findKey:inJWKSData:rootCertificates:](self, "findKey:inJWKSData:rootCertificates:", idCopy, v14, v17), v17, v16, v18))
  {
    v19 = PO_LOG_POAuthenticationProcess(v15);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [POAuthenticationProcess retrieveSigningKeyWithContext:keyId:completion:];
    }

    completionQueue = [(POAuthenticationProcess *)self completionQueue];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke;
    v47[3] = &unk_279A3E010;
    v48 = completionCopy;
    v49 = v18;
    v21 = completionCopy;
    [completionQueue addOperationWithBlock:v47];

    v22 = v48;
  }

  else
  {
    v23 = PO_LOG_POAuthenticationProcess(v15);
    v24 = os_signpost_id_make_with_pointer(v23, contextCopy);

    v26 = PO_LOG_POAuthenticationProcess(v25);
    v27 = v26;
    if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v24, "PlatformSSO_JWKSRequest", " enableTelemetry=YES ", buf, 2u);
    }

    urlSession = [contextCopy urlSession];
    loginConfiguration = [contextCopy loginConfiguration];
    jwksEndpointURL = [loginConfiguration jwksEndpointURL];
    v37 = MEMORY[0x277D85DD0];
    v38 = 3221225472;
    v39 = __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_670;
    v40 = &unk_279A3E0B0;
    v44 = completionCopy;
    v45 = v24;
    selfCopy = self;
    v31 = contextCopy;
    v42 = v31;
    v43 = idCopy;
    v32 = completionCopy;
    v33 = [urlSession dataTaskWithURL:jwksEndpointURL completionHandler:&v37];

    v34 = MEMORY[0x277CCACA8];
    requestIdentifier = [v31 requestIdentifier];
    selfCopy = [v34 stringWithFormat:@"JWKS Request: %@", requestIdentifier, v37, v38, v39, v40, selfCopy];
    [v33 setTaskDescription:selfCopy];

    [v33 resume];
    v22 = v44;
  }
}

void __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_670(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PO_LOG_POAuthenticationProcess(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v10, OS_LOG_TYPE_INFO, "JWKS network response received", buf, 2u);
  }

  if (v9)
  {
    if (v7)
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
    }

    else
    {
      v11 = 0;
    }

    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_671;
    v56[3] = &unk_279A3DE00;
    v57 = v9;
    v58 = v11;
    v12 = v11;
    v21 = __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_671(v56);
    v22 = PO_LOG_POAuthenticationProcess(v21);
    v23 = v22;
    v24 = *(a1 + 64);
    if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v23, OS_SIGNPOST_INTERVAL_END, v24, "PlatformSSO_JWKSRequest", "error", buf, 2u);
    }

    v25 = [*(a1 + 32) completionQueue];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_675;
    v54[3] = &unk_279A3DF48;
    v55 = *(a1 + 56);
    [v25 addOperationWithBlock:v54];

    v26 = v57;
LABEL_29:

    goto LABEL_30;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v8;
    if ([v12 statusCode] >= 200 && (v13 = objc_msgSend(v12, "statusCode"), v13 < 300))
    {
      v32 = PO_LOG_POAuthenticationProcess(v13);
      v33 = v32;
      v34 = *(a1 + 64);
      if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25E8B1000, v33, OS_SIGNPOST_INTERVAL_END, v34, "PlatformSSO_JWKSRequest", "success", buf, 2u);
      }

      v36 = PO_LOG_POAuthenticationProcess(v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_670_cold_1();
      }

      v37 = [*(a1 + 40) jwksStorageProvider];
      v38 = [*(a1 + 40) deviceConfiguration];
      v39 = [v38 extensionIdentifier];
      [v37 setJwksCache:v7 forExtensionIdentifier:v39];

      v40 = [*(a1 + 32) completionQueue];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_687;
      v43[3] = &unk_279A3E088;
      v14 = &v47;
      v41 = *(a1 + 56);
      v42 = *(a1 + 32);
      v47 = v41;
      v43[4] = v42;
      v44 = *(a1 + 48);
      v45 = v7;
      v46 = *(a1 + 40);
      [v40 addOperationWithBlock:v43];

      v20 = v44;
    }

    else
    {
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_2_682;
      v50[3] = &unk_279A3DC48;
      v14 = &v51;
      v51 = v12;
      v15 = __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_2_682(v50);
      v16 = PO_LOG_POAuthenticationProcess(v15);
      v17 = v16;
      v18 = *(a1 + 64);
      if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25E8B1000, v17, OS_SIGNPOST_INTERVAL_END, v18, "PlatformSSO_JWKSRequest", "Failed", buf, 2u);
      }

      v19 = [*(a1 + 32) completionQueue];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_686;
      v48[3] = &unk_279A3DF48;
      v49 = *(a1 + 56);
      [v19 addOperationWithBlock:v48];

      v20 = v49;
    }

    v26 = *v14;
    goto LABEL_29;
  }

  v27 = __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_2();
  v28 = PO_LOG_POAuthenticationProcess(v27);
  v29 = v28;
  v30 = *(a1 + 64);
  if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E8B1000, v29, OS_SIGNPOST_INTERVAL_END, v30, "PlatformSSO_JWKSRequest", "Failed", buf, 2u);
  }

  v31 = [*(a1 + 32) completionQueue];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_681;
  v52[3] = &unk_279A3DF48;
  v53 = *(a1 + 56);
  [v31 addOperationWithBlock:v52];

  v12 = v53;
LABEL_30:
}

id __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_671(uint64_t a1)
{
  v1 = [POError errorWithCode:-1009 underlyingError:*(a1 + 32) description:@"Failed to retrieve JWKS."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_231_cold_1();
  }

  return v1;
}

id __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_2()
{
  v0 = [POError errorWithCode:-1009 description:@"Not HTTP response for JWKS."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_2_682(uint64_t a1)
{
  v1 = [POError errorWithCode:-1009 description:@"JWKS request failed."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_244_cold_1();
  }

  return v1;
}

void __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_687(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  v6 = [*(a1 + 56) loginConfiguration];
  v5 = [v6 jwksTrustedRootCertificates];
  (*(v4 + 16))(v4, [v1 findKey:v2 inJWKSData:v3 rootCertificates:v5]);
}

- (__SecKey)findKey:(id)key inJWKSData:(id)data rootCertificates:(id)certificates
{
  v126 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  certificatesCopy = certificates;
  v121 = 0;
  v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:data options:16 error:&v121];
  v10 = v121;
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    v119[0] = MEMORY[0x277D85DD0];
    v119[1] = 3221225472;
    v119[2] = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke;
    v119[3] = &unk_279A3DC48;
    v120 = v10;
    v13 = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke(v119);
    RSAPublicKey = 0;
    v15 = v120;
    goto LABEL_58;
  }

  v85 = v9;
  v86 = v10;
  [v9 objectForKeyedSubscript:@"keys"];
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v16 = v118 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v115 objects:v125 count:16];
  v84 = v16;
  if (!v17)
  {
    goto LABEL_14;
  }

  v18 = v17;
  v19 = *v116;
  while (2)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v116 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v115 + 1) + 8 * i);
      v22 = [v21 objectForKeyedSubscript:@"kid"];
      if ([v22 isEqualToString:keyCopy])
      {
        v23 = v21;

        if (!v23)
        {
          goto LABEL_36;
        }

        v24 = [v23 objectForKeyedSubscript:@"kty"];
        v25 = [v23 objectForKeyedSubscript:@"x5c"];
        objc_opt_class();
        v11 = v86;
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v25 count])
        {
          v75 = keyCopy;
          if (![certificatesCopy count])
          {
LABEL_33:
            v37 = [v23 objectForKeyedSubscript:@"x5c"];
            firstObject = [v37 firstObject];

            v82 = firstObject;
            v39 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:firstObject options:1];
            if (v39)
            {
              v40 = SecCertificateCreateWithData(0, v39);
              v9 = v85;
              keyCopy = v75;
              if (v40)
              {
                v41 = v40;
                RSAPublicKey = SecCertificateCopyKey(v40);
                CFRelease(v41);
              }

              else
              {
                RSAPublicKey = 0;
              }
            }

            else
            {
              v105[0] = MEMORY[0x277D85DD0];
              v105[1] = 3221225472;
              v105[2] = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_711;
              v105[3] = &unk_279A3DC48;
              keyCopy = v75;
              v106 = v75;
              v70 = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_711(v105);

              RSAPublicKey = 0;
              v9 = v85;
            }

LABEL_55:
            v36 = v82;
            goto LABEL_56;
          }

          v76 = v24;
          v81 = certificatesCopy;
          v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v109 = 0u;
          v110 = 0u;
          v111 = 0u;
          v112 = 0u;
          v79 = v25;
          v27 = v25;
          v28 = [v27 countByEnumeratingWithState:&v109 objects:v124 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v110;
            do
            {
              for (j = 0; j != v29; ++j)
              {
                if (*v110 != v30)
                {
                  objc_enumerationMutation(v27);
                }

                v32 = *(*(&v109 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v33 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v32 options:1];
                  if (v33)
                  {
                    v34 = [POSecKeyHelper certificateForData:v33];
                    if (v34)
                    {
                      v35 = v34;
                      [v26 addObject:v34];
                    }
                  }
                }
              }

              v29 = [v27 countByEnumeratingWithState:&v109 objects:v124 count:16];
            }

            while (v29);
          }

          v36 = v26;
          certificatesCopy = v81;
          if ([POSecKeyHelper evaluateTrustForCertificates:v26 rootCertificates:v81])
          {

            v11 = v86;
            v24 = v76;
            v25 = v79;
            goto LABEL_33;
          }

          v107[0] = MEMORY[0x277D85DD0];
          v107[1] = 3221225472;
          v107[2] = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_707;
          v107[3] = &unk_279A3DC48;
          keyCopy = v75;
          v108 = v75;
          v69 = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_707(v107);

          RSAPublicKey = 0;
          v9 = v85;
          v11 = v86;
          v24 = v76;
          v25 = v79;
LABEL_56:

          goto LABEL_57;
        }

        if ([certificatesCopy count])
        {
          v103[0] = MEMORY[0x277D85DD0];
          v103[1] = 3221225472;
          v103[2] = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_715;
          v103[3] = &unk_279A3DC48;
          v104 = keyCopy;
          v43 = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_715(v103);
          RSAPublicKey = 0;
          v36 = v104;
          v9 = v85;
          goto LABEL_56;
        }

        if ([v24 isEqualToString:@"EC"])
        {
          v77 = v24;
          v80 = v25;
          v44 = objc_alloc(MEMORY[0x277CBEA90]);
          v45 = [v23 objectForKeyedSubscript:@"x"];
          [v44 psso_initWithBase64URLEncodedString:v45];
          v47 = v46 = keyCopy;

          v48 = objc_alloc(MEMORY[0x277CBEA90]);
          v49 = [v23 objectForKeyedSubscript:@"y"];
          v50 = [v48 psso_initWithBase64URLEncodedString:v49];

          v51 = objc_alloc_init(MEMORY[0x277CBEB28]);
          v102 = 4;
          [v51 appendBytes:&v102 length:1];
          v82 = v47;
          v52 = v47;
          keyCopy = v46;
          [v51 appendData:v52];
          [v51 appendData:v50];
          v53 = *MEMORY[0x277CDC040];
          v54 = *MEMORY[0x277CDBFE0];
          v122[0] = *MEMORY[0x277CDC028];
          v122[1] = v54;
          v55 = *MEMORY[0x277CDC000];
          v123[0] = v53;
          v123[1] = v55;
          v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:2];
          error[0] = 0;
          RSAPublicKey = SecKeyCreateWithData(v51, v56, error);
          v9 = v85;
          if (!RSAPublicKey)
          {
            v97[0] = MEMORY[0x277D85DD0];
            v97[1] = 3221225472;
            v98 = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_728;
            v99 = &unk_279A3E0D8;
            v101 = error[0];
            v100 = keyCopy;
            v57 = v98(v97);
          }

          v24 = v77;
          v25 = v80;
          goto LABEL_55;
        }

        v9 = v85;
        if (![v24 isEqualToString:@"RSA"])
        {
          v87[0] = MEMORY[0x277D85DD0];
          v87[1] = 3221225472;
          v87[2] = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_753;
          v87[3] = &unk_279A3DC48;
          v88 = keyCopy;
          v71 = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_753(v87);
          RSAPublicKey = 0;
          v36 = v88;
          goto LABEL_56;
        }

        v36 = [v23 objectForKeyedSubscript:@"n"];
        v58 = [v23 objectForKeyedSubscript:@"e"];
        v59 = v58;
        if (v36 && v58)
        {
          v60 = v58;
          v61 = objc_alloc(MEMORY[0x277CBEA90]);
          v83 = v36;
          v62 = [v61 psso_initWithBase64URLEncodedString:v36];

          v63 = objc_alloc(MEMORY[0x277CBEA90]);
          v78 = v60;
          v64 = v60;
          v65 = v62;
          v66 = [v63 psso_initWithBase64URLEncodedString:v64];

          if (v65 && v66)
          {
            error[0] = [v65 bytes];
            error[1] = [v65 length];
            error[2] = [v66 bytes];
            error[3] = [v66 length];
            v67 = v65;
            RSAPublicKey = SecKeyCreateRSAPublicKey();

            v36 = v83;
            v59 = v78;
            if (RSAPublicKey)
            {
LABEL_62:

              goto LABEL_56;
            }

            v89[0] = MEMORY[0x277D85DD0];
            v89[1] = 3221225472;
            v89[2] = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_749;
            v89[3] = &unk_279A3E0D8;
            v91 = 0;
            v90 = keyCopy;
            v68 = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_749(v89);
            v59 = v78;
            v65 = v90;
          }

          else
          {
            v95[0] = MEMORY[0x277D85DD0];
            v95[1] = 3221225472;
            v95[2] = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_741;
            v95[3] = &unk_279A3DC48;
            v96 = keyCopy;
            v74 = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_741(v95);

            v36 = v83;
            v59 = v78;
          }
        }

        else
        {
          v92[0] = MEMORY[0x277D85DD0];
          v92[1] = 3221225472;
          v92[2] = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_745;
          v92[3] = &unk_279A3DC48;
          v93 = keyCopy;
          v73 = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_745(v92);
          v65 = v93;
        }

        RSAPublicKey = 0;
        goto LABEL_62;
      }
    }

    v18 = [v16 countByEnumeratingWithState:&v115 objects:v125 count:16];
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_14:

LABEL_36:
  v113[0] = MEMORY[0x277D85DD0];
  v113[1] = 3221225472;
  v113[2] = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_697;
  v113[3] = &unk_279A3DC48;
  v114 = keyCopy;
  v42 = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_697(v113);
  RSAPublicKey = 0;
  v23 = v114;
  v9 = v85;
  v11 = v86;
LABEL_57:

  v15 = v84;
LABEL_58:

  return RSAPublicKey;
}

id __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 underlyingError:*(a1 + 32) description:@"Failed to parse jwks response."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

id __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_697(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 description:@"Failed to find key"];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1();
  }

  return v1;
}

id __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_707(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 description:@"Trust evaluation failed for kid."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1();
  }

  return v1;
}

id __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_711(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 description:@"Failed to create key."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1();
  }

  return v1;
}

id __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_715(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 description:@"required certificates missing from jwks for kid."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1();
  }

  return v1;
}

id __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_728(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [POError errorWithCode:-1008 underlyingError:v1 description:@"Failed to create EC key."];

  v4 = PO_LOG_POAuthenticationProcess(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1();
  }

  return v2;
}

id __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_741(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 description:@"Failed to create RSA key."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1();
  }

  return v1;
}

id __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_745(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 description:@"Failed to create RSA key, Modulus or exponent missing."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1();
  }

  return v1;
}

id __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_749(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"Failed to create key"];

  v4 = PO_LOG_POAuthenticationProcess(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1();
  }

  return v2;
}

id __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_753(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 description:@"Failed to load key."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1();
  }

  return v1;
}

- (BOOL)validateIdToken:(id)token context:(id)context key:(__SecKey *)key
{
  tokenCopy = token;
  contextCopy = context;
  v9 = PO_LOG_PODiagnostics(contextCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v9, OS_LOG_TYPE_INFO, "Verifying id_token", buf, 2u);
  }

  v11 = PO_LOG_POAuthenticationProcess(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess validateIdToken:context:key:];
  }

  decodedHeader = [tokenCopy decodedHeader];
  v13 = [decodedHeader alg];
  v14 = [&unk_2870A9348 containsObject:v13];

  if ((v14 & 1) == 0)
  {
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke;
    v82[3] = &unk_279A3DC48;
    v83 = tokenCopy;
    v25 = __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke(v82);

    goto LABEL_11;
  }

  decodedHeader2 = [tokenCopy decodedHeader];
  v16 = [decodedHeader2 alg];
  LODWORD(key) = [POJWTSigning verifyJWTSignature:tokenCopy algorithm:v16 key:key];

  if (key)
  {
    decodedBody = [tokenCopy decodedBody];
    nonce = [decodedBody nonce];
    if (nonce)
    {
      v19 = nonce;
      decodedBody2 = [tokenCopy decodedBody];
      nonce2 = [decodedBody2 nonce];
      nonce3 = [contextCopy nonce];
      v23 = [nonce2 isEqualToString:nonce3];

      if ((v23 & 1) == 0)
      {
        v24 = __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_763();
LABEL_11:
        LOBYTE(key) = 0;
        goto LABEL_12;
      }
    }

    else
    {
    }

    decodedBody3 = [tokenCopy decodedBody];
    v28 = [decodedBody3 iss];
    loginConfiguration = [contextCopy loginConfiguration];
    issuer = [loginConfiguration issuer];
    v31 = [v28 isEqualToString:issuer];

    if ((v31 & 1) == 0)
    {
      v43 = __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_769();
      goto LABEL_11;
    }

    decodedBody4 = [tokenCopy decodedBody];
    audArray = [decodedBody4 audArray];

    decodedBody5 = [tokenCopy decodedBody];
    v35 = decodedBody5;
    if (audArray)
    {
      audArray2 = [decodedBody5 audArray];
      loginConfiguration2 = [contextCopy loginConfiguration];
      clientID = [loginConfiguration2 clientID];
      v39 = [audArray2 containsObject:clientID];

      if ((v39 & 1) == 0)
      {
        v57 = __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_775();
        goto LABEL_11;
      }

      decodedBody6 = [tokenCopy decodedBody];
      v41 = [decodedBody6 azp];

      if (!v41)
      {
        v42 = __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_781();
        goto LABEL_11;
      }
    }

    else
    {
      v44 = [decodedBody5 aud];
      loginConfiguration3 = [contextCopy loginConfiguration];
      clientID2 = [loginConfiguration3 clientID];
      v47 = [v44 isEqualToString:clientID2];

      if ((v47 & 1) == 0)
      {
        v58 = __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_787();
        goto LABEL_11;
      }
    }

    decodedBody7 = [tokenCopy decodedBody];
    v49 = [decodedBody7 azp];
    if (v49)
    {
      v50 = v49;
      decodedBody8 = [tokenCopy decodedBody];
      v52 = [decodedBody8 azp];
      loginConfiguration4 = [contextCopy loginConfiguration];
      clientID3 = [loginConfiguration4 clientID];
      v55 = [v52 isEqualToString:clientID3];

      if ((v55 & 1) == 0)
      {
        v56 = __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_793();
        goto LABEL_11;
      }
    }

    else
    {
    }

    decodedBody9 = [tokenCopy decodedBody];
    v60 = [decodedBody9 iat];
    [v60 timeIntervalSinceNow];
    v62 = v61;

    decodedBody10 = [tokenCopy decodedBody];
    v64 = [decodedBody10 iat];

    if (!v64 || v62 > 120.0)
    {
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_799;
      v81[3] = &__block_descriptor_40_e14___NSError_8__0l;
      *&v81[4] = v62;
      v77 = __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_799(v81);
      goto LABEL_11;
    }

    decodedBody11 = [tokenCopy decodedBody];
    v66 = [decodedBody11 exp];
    [v66 timeIntervalSinceNow];
    v68 = v67;

    decodedBody12 = [tokenCopy decodedBody];
    v70 = [decodedBody12 exp];

    if (!v70 || v68 < -120.0)
    {
      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_803;
      v80[3] = &__block_descriptor_40_e14___NSError_8__0l;
      *&v80[4] = v68;
      v78 = __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_803(v80);
      goto LABEL_11;
    }

    decodedBody13 = [tokenCopy decodedBody];
    v72 = [decodedBody13 nbf];
    [v72 timeIntervalSinceNow];
    v74 = v73;

    key = [tokenCopy decodedBody];
    v75 = [(__SecKey *)key nbf];

    LOBYTE(key) = 1;
    if (v75 && v74 > 120.0)
    {
      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 3221225472;
      v79[2] = __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_807;
      v79[3] = &__block_descriptor_40_e14___NSError_8__0l;
      *&v79[4] = v74;
      v76 = __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_807(v79);
      goto LABEL_11;
    }
  }

LABEL_12:

  return key;
}

id __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 description:@"unsupported id_token algorithm."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_cold_1();
  }

  return v1;
}

id __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_763()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to match nonce."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_769()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to match issuer."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_775()
{
  v0 = [POError errorWithCode:-1008 description:@"audience does not contain client id."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_781()
{
  v0 = [POError errorWithCode:-1008 description:@"azp claim missing."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_787()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to match audience."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_793()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to match azp."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_799(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 description:@"Failed to verify iat."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_361_cold_1();
  }

  return v1;
}

id __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_803(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 description:@"Failed to verify exp."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_361_cold_1();
  }

  return v1;
}

id __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_807(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 description:@"Failed to verify nbf."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_361_cold_1();
  }

  return v1;
}

- (BOOL)validatePartyUInfo:(id)info context:(id)context
{
  infoCopy = info;
  decodedHeader = [infoCopy decodedHeader];
  v6 = [decodedHeader apu];

  if (v6)
  {
    decodeEphemeralPublicKey = [infoCopy decodeEphemeralPublicKey];
    if (decodeEphemeralPublicKey)
    {
      error = 0;
      v8 = SecKeyCopyExternalRepresentation(decodeEphemeralPublicKey, &error);
      if (!v8)
      {
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_822;
        v30[3] = &__block_descriptor_40_e14___NSError_8__0l;
        v30[4] = error;
        v17 = __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_822(v30);
        v16 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v9 = objc_alloc(MEMORY[0x277CBEA90]);
      decodedHeader2 = [infoCopy decodedHeader];
      v11 = [decodedHeader2 apu];
      v12 = [v9 psso_initWithBase64URLEncodedString:v11];

      if (v12)
      {
        v29 = 0;
        if ([v12 length] > 3)
        {
          [v12 getBytes:&v29 range:{0, 4}];
          v19 = bswap32(v29);
          v28 = 0;
          v29 = v19;
          v20 = v19 + 8;
          if ([v12 length] >= (v19 + 8))
          {
            [v12 getBytes:&v28 range:{v19 + 4, 4}];
            v22 = bswap32(v28);
            v28 = v22;
            if ([(__CFData *)v8 length]== v22)
            {
              v23 = [v12 length];
              if (v23 >= v20 + v28)
              {
                v26 = [v12 subdataWithRange:v20];
                v16 = [(__CFData *)v8 isEqualToData:v26];
                if ((v16 & 1) == 0)
                {
                  v27 = __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_850();
                }

                goto LABEL_18;
              }
            }

            v24 = __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_844();
          }

          else
          {
            v21 = __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_838();
          }
        }

        else
        {
          v13 = __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_832();
        }
      }

      else
      {
        v18 = __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_826();
      }

      v16 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v15 = __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_816();
  }

  else
  {
    v14 = __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke();
  }

  v16 = 0;
LABEL_20:

  return v16;
}

id __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"response missing apu."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_816()
{
  v0 = [POError errorWithCode:-1008 description:@"response missing epk."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_822(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1008 underlyingError:v1 description:@"error with SecKeyCopyExternalRepresentation for epk."];

  v4 = PO_LOG_POAuthenticationProcess(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

id __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_826()
{
  v0 = [POError errorWithCode:-1008 description:@"error decoding apu."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_832()
{
  v0 = [POError errorWithCode:-1008 description:@"failed to validate apu length."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_838()
{
  v0 = [POError errorWithCode:-1008 description:@"failed to validate apu size."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_844()
{
  v0 = [POError errorWithCode:-1008 description:@"failed to validate apu epk size."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_850()
{
  v0 = [POError errorWithCode:-1008 description:@"failed to validate apu epk."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (BOOL)validatePartyVInfo:(id)info context:(id)context publicKey:(__SecKey *)key
{
  infoCopy = info;
  contextCopy = context;
  if (infoCopy)
  {
    v32 = 0;
    v9 = objc_alloc(MEMORY[0x277CBEA90]);
    v10 = [v9 psso_initWithBase64URLEncodedString:infoCopy];

    if (!v10)
    {
      v17 = __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke_861();
      v16 = 0;
LABEL_20:

      goto LABEL_21;
    }

    error = 0;
    v11 = SecKeyCopyExternalRepresentation(key, &error);
    if (!v11)
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke_867;
      v30[3] = &__block_descriptor_40_e14___NSError_8__0l;
      v30[4] = error;
      v18 = __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke_867(v30);
      v16 = 0;
LABEL_19:

      goto LABEL_20;
    }

    nonce = [contextCopy nonce];
    v13 = [nonce dataUsingEncoding:1];

    if (v13)
    {
      v32 = 0;
      if ([v10 length] > 3)
      {
        [v10 getBytes:&v32 range:{0, 4}];
        v20 = bswap32(v32);
        v32 = v20;
        v21 = v20 + 4;
        v22 = objc_alloc_init(MEMORY[0x277CBEB28]);
        v29 = bswap32([(__CFData *)v11 length]);
        [v22 appendBytes:&v29 length:4];
        [v22 appendData:v11];
        v28 = bswap32([v13 length]);
        [v22 appendBytes:&v28 length:4];
        [v22 appendData:v13];
        v23 = [v10 length];
        if (v23 >= [v22 length] + v21)
        {
          v25 = [v10 subdataWithRange:{v21, objc_msgSend(v22, "length")}];
          v16 = [v22 isEqualToData:v25];
          if ((v16 & 1) == 0)
          {
            v26 = __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke_889();
          }
        }

        else
        {
          v24 = __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke_883();
          v16 = 0;
        }

        goto LABEL_18;
      }

      v14 = __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke_877();
    }

    else
    {
      v19 = __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke_871();
    }

    v16 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v15 = __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke();
  v16 = 0;
LABEL_21:

  return v16;
}

id __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Missing apv."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke_861()
{
  v0 = [POError errorWithCode:-1008 description:@"error decoding apv."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke_867(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1008 underlyingError:v1 description:@"error with SecKeyCopyExternalRepresentation."];

  v4 = PO_LOG_POAuthenticationProcess(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

id __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke_871()
{
  v0 = [POError errorWithCode:-1008 description:@"error with nonce data"];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke_877()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to validate apv size"];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke_883()
{
  v0 = [POError errorWithCode:-1008 description:@"failed to validate apv data size"];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke_889()
{
  v0 = [POError errorWithCode:-1008 description:@"failed to validate apv data"];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)prepareForAccessTokenLoginUsingContext:(id)context completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = PO_LOG_PODiagnostics(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v8, OS_LOG_TYPE_INFO, "Prepare NFC login authentication", buf, 2u);
  }

  v10 = PO_LOG_POAuthenticationProcess(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess performPasswordLoginUsingContext:contextCopy completion:?];
  }

  v12 = PO_LOG_POAuthenticationProcess(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess performPasswordLoginUsingContext:contextCopy completion:?];
  }

  v13 = [(POAuthenticationProcess *)self createNonceRequestWithContext:contextCopy];
  v14 = v13;
  if (v13)
  {
    v15 = PO_LOG_PODiagnostics(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      requestIdentifier = [contextCopy requestIdentifier];
      *buf = 138543362;
      v29 = requestIdentifier;
      _os_log_impl(&dword_25E8B1000, v15, OS_LOG_TYPE_DEFAULT, "Sending nonce request: %{public}@", buf, 0xCu);
    }

    v18 = PO_LOG_POAuthenticationProcess(v17);
    v19 = os_signpost_id_make_with_pointer(v18, contextCopy);

    v21 = PO_LOG_POAuthenticationProcess(v20);
    v22 = v21;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v19, "PlatformSSO_NonceRequest", " enableTelemetry=YES ", buf, 2u);
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __77__POAuthenticationProcess_prepareForAccessTokenLoginUsingContext_completion___block_invoke_897;
    v24[3] = &unk_279A3E100;
    v27 = v19;
    v26 = completionCopy;
    v25 = contextCopy;
    [(POAuthenticationProcess *)self performNonceRequestWithContext:v25 request:v14 completion:v24];
  }

  else
  {
    v23 = __77__POAuthenticationProcess_prepareForAccessTokenLoginUsingContext_completion___block_invoke();
    (*(completionCopy + 2))(completionCopy, 2, contextCopy);
  }
}

id __77__POAuthenticationProcess_prepareForAccessTokenLoginUsingContext_completion___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create nonce request."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

uint64_t __77__POAuthenticationProcess_prepareForAccessTokenLoginUsingContext_completion___block_invoke_897(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = PO_LOG_POAuthenticationProcess(a1);
    v4 = v3;
    v5 = *(a1 + 48);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v4, OS_SIGNPOST_INTERVAL_END, v5, "PlatformSSO_NonceRequest", "Success", v10, 2u);
    }
  }

  else
  {
    v6 = __71__POAuthenticationProcess_performPasswordLoginUsingContext_completion___block_invoke_2();
    v7 = PO_LOG_POAuthenticationProcess(v6);
    v4 = v7;
    v8 = *(a1 + 48);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v4, OS_SIGNPOST_INTERVAL_END, v8, "PlatformSSO_NonceRequest", "Failed", buf, 2u);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)performAccessTokenSigningUsingContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = PO_LOG_PODiagnostics(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v8, OS_LOG_TYPE_INFO, "Perform NFC signing", buf, 2u);
  }

  [contextCopy setLoginType:4];
  v9 = [(POAuthenticationProcess *)self createEmbeddedAssertionWithContext:contextCopy];
  if (v9)
  {
    v10 = -[POAuthenticationProcess findAlgorithmForKey:](self, "findAlgorithmForKey:", [contextCopy embeddedAssertionSigningKey]);
    v15 = 0;
    v11 = +[POJWTSigning encodeAndSignJWT:algorithm:key:certificate:error:](POJWTSigning, "encodeAndSignJWT:algorithm:key:certificate:error:", v9, v10, [contextCopy embeddedAssertionSigningKey], objc_msgSend(contextCopy, "embeddedAssertionCertificate"), &v15);
    if (v11)
    {
      [contextCopy setResumedEmbeddedAssertion:v11];
      resumeData = [contextCopy resumeData];
      completionCopy[2](completionCopy, 1, contextCopy, resumeData);
    }

    else
    {
      v14 = __76__POAuthenticationProcess_performAccessTokenSigningUsingContext_completion___block_invoke_902();
      completionCopy[2](completionCopy, 3, contextCopy, 0);
    }
  }

  else
  {
    v13 = __76__POAuthenticationProcess_performAccessTokenSigningUsingContext_completion___block_invoke();
    completionCopy[2](completionCopy, 2, contextCopy, 0);
  }
}

id __76__POAuthenticationProcess_performAccessTokenSigningUsingContext_completion___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create embedded assertion JWT."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __76__POAuthenticationProcess_performAccessTokenSigningUsingContext_completion___block_invoke_902()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to sign embedded SmartCard assertion."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)completeAccessTokenLoginUsingContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = PO_LOG_PODiagnostics(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_25E8B1000, v8, OS_LOG_TYPE_INFO, "Complete NFC login", v12, 2u);
  }

  [contextCopy setLoginType:4];
  resumedEmbeddedAssertion = [contextCopy resumedEmbeddedAssertion];
  v10 = [(POAuthenticationProcess *)self createLoginJWTWithContext:contextCopy embeddedAssertion:resumedEmbeddedAssertion];

  if (v10)
  {
    [(POAuthenticationProcess *)self performLoginWithContext:contextCopy loginJWT:v10 completion:completionCopy];
  }

  else
  {
    v11 = __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_184();
    completionCopy[2](completionCopy, 2, contextCopy, 0);
  }
}

- (id)createRefreshJWTWithContext:(id)context
{
  v39[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  refreshToken = [contextCopy refreshToken];

  if (refreshToken)
  {
    v6 = objc_alloc_init(POMutableLoginJWTBody);
    loginConfiguration = [contextCopy loginConfiguration];
    customRefreshRequestBodyClaims = [loginConfiguration customRefreshRequestBodyClaims];
    [(POMutableLoginJWTBody *)v6 addCustomClaims:customRefreshRequestBodyClaims];

    loginConfiguration2 = [contextCopy loginConfiguration];
    clientID = [loginConfiguration2 clientID];
    [(POMutableLoginJWTBody *)v6 setClient_id:clientID];

    scope = [contextCopy scope];
    [(POMutableLoginJWTBody *)v6 setScope:scope];

    nonce = [contextCopy nonce];
    [(POMutableLoginJWTBody *)v6 setNonce:nonce];

    loginConfiguration3 = [contextCopy loginConfiguration];
    clientID2 = [loginConfiguration3 clientID];
    [(POMutableLoginJWTBody *)v6 setIss:clientID2];

    v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:300.0];
    [(POMutableLoginJWTBody *)v6 setExp:v15];

    v16 = MEMORY[0x277CCACE0];
    loginConfiguration4 = [contextCopy loginConfiguration];
    refreshEndpointURL = [loginConfiguration4 refreshEndpointURL];
    absoluteString = [refreshEndpointURL absoluteString];
    v20 = [v16 componentsWithString:absoluteString];

    [v20 setQuery:0];
    [v20 setQueryItems:0];
    [v20 setFragment:0];
    v21 = [v20 URL];
    absoluteString2 = [v21 absoluteString];
    [(POMutableLoginJWTBody *)v6 setAud:absoluteString2];

    loginConfiguration5 = [contextCopy loginConfiguration];
    serverNonceClaimName = [loginConfiguration5 serverNonceClaimName];
    v25 = [serverNonceClaimName length];

    if (v25)
    {
      loginConfiguration6 = [contextCopy loginConfiguration];
      serverNonceClaimName2 = [loginConfiguration6 serverNonceClaimName];
      v38 = serverNonceClaimName2;
      serverNonce = [contextCopy serverNonce];
      v39[0] = serverNonce;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
      [(POMutableLoginJWTBody *)v6 addCustomClaims:v29];
    }

    else
    {
      loginConfiguration6 = [contextCopy serverNonce];
      [(POMutableLoginJWTBody *)v6 setRequest_nonce:loginConfiguration6];
    }

    refreshToken2 = [contextCopy refreshToken];
    [(POMutableLoginJWTBody *)v6 setRefresh_token:refreshToken2];

    [(POMutableLoginJWTBody *)v6 setGrant_type:@"refresh_token"];
    date = [MEMORY[0x277CBEAA8] date];
    [(POMutableLoginJWTBody *)v6 setIat:date];

    [(POAuthenticationProcess *)self addCryptoHeadersToJWTBody:v6 context:contextCopy];
    v34 = objc_alloc_init(POMutableJWTHeader);
    [(POMutableJWTHeader *)v34 setTyp:@"platformsso-refresh-request+jwt"];
    loginConfiguration7 = [contextCopy loginConfiguration];
    customRefreshRequestHeaderClaims = [loginConfiguration7 customRefreshRequestHeaderClaims];
    [(POMutableJWTHeader *)v34 addCustomClaims:customRefreshRequestHeaderClaims];

    v31 = objc_alloc_init(POMutableLoginTokenJWT);
    [(POMutableLoginTokenJWT *)v31 setBody:v6];
    [(POMutableJWT *)v31 setHeader:v34];
  }

  else
  {
    v30 = __55__POAuthenticationProcess_createRefreshJWTWithContext___block_invoke();
    v31 = 0;
  }

  return v31;
}

id __55__POAuthenticationProcess_createRefreshJWTWithContext___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Missing refresh token"];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)performKeyRequestUsingContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = PO_LOG_PODiagnostics(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v8, OS_LOG_TYPE_INFO, "Starting key request", buf, 2u);
  }

  v10 = PO_LOG_POAuthenticationProcess(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess performPasswordLoginUsingContext:contextCopy completion:?];
  }

  v12 = PO_LOG_POAuthenticationProcess(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess performPasswordLoginUsingContext:contextCopy completion:?];
  }

  v13 = [(POAuthenticationProcess *)self createNonceRequestWithContext:contextCopy];
  v14 = v13;
  if (v13)
  {
    v15 = PO_LOG_POAuthenticationProcess(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E8B1000, v15, OS_LOG_TYPE_INFO, "Sending nonce request", buf, 2u);
    }

    v17 = PO_LOG_POAuthenticationProcess(v16);
    v18 = os_signpost_id_make_with_pointer(v17, contextCopy);

    v20 = PO_LOG_POAuthenticationProcess(v19);
    v21 = v20;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v18, "PlatformSSO_NonceRequest", " enableTelemetry=YES ", buf, 2u);
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_920;
    v23[3] = &unk_279A3DEF8;
    v27 = v18;
    v26 = completionCopy;
    v24 = contextCopy;
    selfCopy = self;
    [(POAuthenticationProcess *)self performNonceRequestWithContext:v24 request:v14 completion:v23];
  }

  else
  {
    v22 = __77__POAuthenticationProcess_prepareForAccessTokenLoginUsingContext_completion___block_invoke();
    (*(completionCopy + 2))(completionCopy, 2, contextCopy, 0, 0, 0);
  }
}

void __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_920(uint64_t a1, uint64_t a2)
{
  v38 = *MEMORY[0x277D85DE8];
  if (a2 == 1)
  {
    v3 = PO_LOG_POAuthenticationProcess(a1);
    v4 = v3;
    v5 = *(a1 + 56);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v4, OS_SIGNPOST_INTERVAL_END, v5, "PlatformSSO_NonceRequest", "Success", buf, 2u);
    }

    v6 = [*(a1 + 40) createKeyRequestJWTWithContext:*(a1 + 32)];
    if (v6)
    {
      v7 = [*(a1 + 32) deviceConfiguration];
      v8 = [v7 signingAlgorithm];
      v9 = [*(a1 + 32) deviceConfiguration];
      v10 = [v9 deviceSigningKey];
      v11 = [*(a1 + 32) deviceConfiguration];
      v12 = +[POJWTSigning encodeAndSignJWT:signingAlgorithm:key:certificate:error:](POJWTSigning, "encodeAndSignJWT:signingAlgorithm:key:certificate:error:", v6, v8, v10, [v11 deviceSigningCertificate], 0);

      if (v12)
      {
        v13 = [*(a1 + 40) createKeyRequestWithContext:*(a1 + 32) jwt:v12];
        v14 = v13;
        if (v13)
        {
          v15 = PO_LOG_PODiagnostics(v13);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [*(a1 + 32) requestIdentifier];
            *buf = 138543362;
            v37 = v16;
            _os_log_impl(&dword_25E8B1000, v15, OS_LOG_TYPE_INFO, "Sending key request: %{public}@", buf, 0xCu);
          }

          v18 = PO_LOG_POAuthenticationProcess(v17);
          v19 = os_signpost_id_make_with_pointer(v18, *(a1 + 32));

          v21 = PO_LOG_POAuthenticationProcess(v20);
          v22 = v21;
          if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_25E8B1000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v19, "PlatformSSO_KeyRequest", " enableTelemetry=YES ", buf, 2u);
          }

          v24 = *(a1 + 32);
          v23 = *(a1 + 40);
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_941;
          v33[3] = &unk_279A3DF20;
          v35 = v19;
          v25 = *(a1 + 48);
          v33[4] = *(a1 + 40);
          v34 = v25;
          [v23 performKeyRequestWithContext:v24 request:v14 completion:v33];
        }

        else
        {
          v32 = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_935();
          (*(*(a1 + 48) + 16))();
        }
      }

      else
      {
        v31 = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_929();
        (*(*(a1 + 48) + 16))();
      }
    }

    else
    {
      v30 = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_923();
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v26 = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_2();
    v27 = PO_LOG_POAuthenticationProcess(v26);
    v28 = v27;
    v29 = *(a1 + 56);
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v28, OS_SIGNPOST_INTERVAL_END, v29, "PlatformSSO_NonceRequest", "Failed", buf, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

id __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_2()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to retrieve nonce"];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_923()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create key JWT"];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_929()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to sign key request"];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_935()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create key request"];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

void __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_941(void *a1, uint64_t a2, void *a3, void *a4)
{
  v114 = *MEMORY[0x277D85DE8];
  v104 = a3;
  v7 = a4;
  v8 = PO_LOG_POAuthenticationProcess(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v8, OS_LOG_TYPE_INFO, "Key response received", buf, 2u);
  }

  v10 = PO_LOG_POAuthenticationProcess(v9);
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 134217984;
    v113 = a2;
    _os_signpost_emit_with_name_impl(&dword_25E8B1000, v11, OS_SIGNPOST_INTERVAL_END, v12, "PlatformSSO_KeyRequest", "result=%lu", buf, 0xCu);
  }

  if (a2 == 1)
  {
    v13 = [POKeyResponseJWT alloc];
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
    v15 = [(POKeyResponseJWT *)v13 initWithString:v14];

    if (v15)
    {
      v102 = v7;
      v16 = *(a1[4] + 40);
      v17 = [(POJWT *)v15 decodedHeader];
      v18 = [v17 alg];
      if ([v16 containsObject:v18])
      {

        goto LABEL_13;
      }

      v21 = *(a1[4] + 40);
      v22 = MEMORY[0x277CCACA8];
      [(POJWT *)v15 decodedHeader];
      v24 = v23 = v15;
      v25 = [v24 alg];
      v26 = [(POJWT *)v23 decodedHeader];
      v27 = [v26 enc];
      v28 = [v22 stringWithFormat:@"%@, %@", v25, v27];
      LOBYTE(v21) = [v21 containsObject:v28];

      v15 = v23;
      if (v21)
      {
LABEL_13:
        v29 = [v104 deviceConfiguration];
        v30 = [v29 encryptionAlgorithm];
        v103 = v15;
        v101 = a1;
        if ([v30 isEqualToNumber:?])
        {
          [v104 apv];
        }

        else
        {
          [v104 nonce];
        }
        v99 = ;

        v31 = [v104 deviceConfiguration];
        v32 = [v31 encryptionAlgorithm];
        v33 = [v104 deviceConfiguration];
        v34 = [v33 deviceEncryptionKey];
        v35 = [v104 loginConfiguration];
        v36 = [v35 hpkePsk];
        v37 = [v104 loginConfiguration];
        v38 = [v37 hpkePsk_id];
        v39 = [v104 loginConfiguration];
        v40 = [v39 hpkeAuthPublicKey];
        v109 = 0;
        v41 = v34;
        v42 = v99;
        v43 = [POJWTEncryption decodeAndDecryptJWT:v103 encryptionAlgorithm:v32 privateKey:v41 otherInfo:v99 psk:v36 psk_id:v38 authPublicKey:v40 error:&v109];
        v100 = v109;

        if (v43)
        {
          v44 = +[POCoreConfigurationUtil platformSSODevModeEnabled];
          v15 = v103;
          if (v44)
          {
            v45 = PO_LOG_POAuthenticationProcess(v44);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
            {
              __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_941_cold_1();
            }
          }

          v46 = [v104 deviceConfiguration];
          v47 = [v46 encryptionAlgorithm];
          v48 = [v47 isEqualToNumber:0x2870A9198];

          if (!v48)
          {
LABEL_26:
            v54 = [(POKeyResponseJWT *)v103 decodedBody];
            v55 = [v54 certificate];

            if (v55)
            {
              v56 = objc_alloc(MEMORY[0x277CBEA90]);
              v57 = [(POKeyResponseJWT *)v103 decodedBody];
              v58 = [v57 certificate];
              v59 = [v56 psso_initWithBase64URLEncodedString:v58];

              v60 = [POSecKeyHelper certificateForData:v59];
              if (v60)
              {
                v61 = SecCertificateCopyKey(v60);
                v7 = v102;
                if (v61)
                {
                  v62 = v61;
                  v63 = SecKeyCopyAttributes(v61);
                  CFRelease(v62);
                  v64 = SecCertificateCopyPublicKeySHA1Digest();
                  v65 = [(__CFDictionary *)v63 objectForKeyedSubscript:*MEMORY[0x277CDC028]];
                  v66 = [(__CFDictionary *)v63 objectForKeyedSubscript:*MEMORY[0x277CDC018]];
                  if ((([v65 isEqualToString:*MEMORY[0x277CDC030]] & 1) != 0 || objc_msgSend(v65, "isEqualToString:", *MEMORY[0x277CDC040])) && objc_msgSend(v66, "intValue") == 256)
                  {

                    v15 = v103;
                    v67 = [(POKeyResponseJWT *)v103 decodedBody];
                    v68 = [v67 iat];
                    [v68 timeIntervalSinceNow];
                    v70 = v69;

                    v71 = [(POKeyResponseJWT *)v103 decodedBody];
                    v72 = [v71 iat];

                    if (v72 && v70 <= 120.0)
                    {
                      v73 = [(POKeyResponseJWT *)v103 decodedBody];
                      v74 = [v73 exp];
                      [v74 timeIntervalSinceNow];
                      v76 = v75;

                      v77 = [(POKeyResponseJWT *)v103 decodedBody];
                      v78 = [v77 exp];

                      if (v78 && v76 >= -120.0)
                      {
                        v79 = v101[5];
                        v80 = [(POKeyResponseJWT *)v103 decodedBody];
                        v81 = [v80 key_context];
                        (*(v79 + 16))(v79, 1, v104, v64, v59, v81);

LABEL_49:
                        v7 = v102;
                        goto LABEL_50;
                      }

                      v105[0] = MEMORY[0x277D85DD0];
                      v105[1] = 3221225472;
                      v105[2] = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_988;
                      v105[3] = &__block_descriptor_40_e14___NSError_8__0l;
                      *&v105[4] = v76;
                      v98 = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_988(v105);
                    }

                    else
                    {
                      v106[0] = MEMORY[0x277D85DD0];
                      v106[1] = 3221225472;
                      v106[2] = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_987;
                      v106[3] = &__block_descriptor_40_e14___NSError_8__0l;
                      *&v106[4] = v70;
                      v97 = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_987(v106);
                    }

                    (*(v101[5] + 16))();
                    goto LABEL_49;
                  }

                  v95 = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_975();
                  (*(v101[5] + 16))();

                  v15 = v103;
                }

                else
                {
                  v96 = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_981();
                  (*(v101[5] + 16))();
                }

LABEL_50:
                v42 = v99;
                v82 = v100;
                goto LABEL_51;
              }
            }

            else
            {
              v59 = 0;
            }

            v7 = v102;
            v42 = v99;
            v82 = v100;
            v93 = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_969();
            (*(v101[5] + 16))();
LABEL_51:

            goto LABEL_52;
          }

          if ([v101[4] validatePartyUInfo:v103 context:v104])
          {
            v49 = [v104 deviceConfiguration];
            v50 = SecKeyCopyPublicKey([v49 deviceEncryptionKey]);

            v51 = v101[4];
            v52 = [v104 apv];
            v53 = [v51 validatePartyVInfo:v52 context:v104 publicKey:v50];

            if (v50)
            {
              CFRelease(v50);
            }

            if (v53)
            {
              goto LABEL_26;
            }

            v94 = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_426();
          }

          else
          {
            v92 = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_420();
          }

          (*(v101[5] + 16))();
          v7 = v102;
          v42 = v99;
          v82 = v100;
        }

        else
        {
          v107[0] = MEMORY[0x277D85DD0];
          v107[1] = 3221225472;
          v107[2] = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_959;
          v107[3] = &unk_279A3DC48;
          v82 = v100;
          v108 = v100;
          v83 = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_959(v107);
          (*(v101[5] + 16))();

          v7 = v102;
          v15 = v103;
        }

LABEL_52:

        goto LABEL_53;
      }

      v84 = MEMORY[0x277CCACA8];
      v85 = [(POJWT *)v23 decodedHeader];
      v86 = [v85 alg];
      v87 = [(POJWT *)v23 decodedHeader];
      v88 = [v87 enc];
      v89 = [v84 stringWithFormat:@"alg = %@, enc = %@", v86, v88];

      v110[0] = MEMORY[0x277D85DD0];
      v110[1] = 3221225472;
      v110[2] = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_955;
      v110[3] = &unk_279A3DC48;
      v111 = v89;
      v90 = v89;
      v91 = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_955(v110);
      (*(a1[5] + 16))();

      v7 = v102;
    }

    else
    {
      v20 = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_949();
      (*(a1[5] + 16))();
    }

LABEL_53:

    goto LABEL_54;
  }

  v19 = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_942();
  (*(a1[5] + 16))();
LABEL_54:
}

id __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_942()
{
  v0 = [POError errorWithCode:-1001 description:@"Key request failed"];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_949()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to parse key response."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_955(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 description:@"unsupported key response algorithm and encryption."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1();
  }

  return v1;
}

id __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_959(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 underlyingError:*(a1 + 32) description:@"Failed to decrypt key response."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

id __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_969()
{
  v0 = [POError errorWithCode:-1008 description:@"Missing or invalid certificate."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_975()
{
  v0 = [POError errorWithCode:-1008 description:@"Certificate contains incorrect key size."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_981()
{
  v0 = [POError errorWithCode:-1008 description:@"Certificate is missing key."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_987(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 description:@"Failed to verify iat."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_361_cold_1();
  }

  return v1;
}

id __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_988(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 description:@"Failed to verify exp."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_361_cold_1();
  }

  return v1;
}

- (void)performKeyExchangeRequestUsingContext:(id)context otherPartyPublicKeyData:(id)data completion:(id)completion
{
  contextCopy = context;
  dataCopy = data;
  completionCopy = completion;
  v11 = PO_LOG_PODiagnostics(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v11, OS_LOG_TYPE_INFO, "Starting Key Exchange request", buf, 2u);
  }

  v13 = PO_LOG_POAuthenticationProcess(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess performPasswordLoginUsingContext:contextCopy completion:?];
  }

  v15 = PO_LOG_POAuthenticationProcess(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess performPasswordLoginUsingContext:contextCopy completion:?];
  }

  v16 = [(POAuthenticationProcess *)self createNonceRequestWithContext:contextCopy];
  v17 = v16;
  if (v16)
  {
    v18 = PO_LOG_POAuthenticationProcess(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E8B1000, v18, OS_LOG_TYPE_INFO, "Sending nonce request", buf, 2u);
    }

    v20 = PO_LOG_POAuthenticationProcess(v19);
    v21 = os_signpost_id_make_with_pointer(v20, contextCopy);

    v23 = PO_LOG_POAuthenticationProcess(v22);
    v24 = v23;
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v21, "PlatformSSO_NonceRequest", " enableTelemetry=YES ", buf, 2u);
    }

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_991;
    v26[3] = &unk_279A3E128;
    v31 = v21;
    v30 = completionCopy;
    v27 = contextCopy;
    selfCopy = self;
    v29 = dataCopy;
    [(POAuthenticationProcess *)self performNonceRequestWithContext:v27 request:v17 completion:v26];
  }

  else
  {
    v25 = __77__POAuthenticationProcess_prepareForAccessTokenLoginUsingContext_completion___block_invoke();
    (*(completionCopy + 2))(completionCopy, 2, contextCopy, 0, 0);
  }
}

void __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_991(uint64_t a1, uint64_t a2)
{
  v38 = *MEMORY[0x277D85DE8];
  if (a2 == 1)
  {
    v3 = PO_LOG_POAuthenticationProcess(a1);
    v4 = v3;
    v5 = *(a1 + 64);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v4, OS_SIGNPOST_INTERVAL_END, v5, "PlatformSSO_NonceRequest", "Success", buf, 2u);
    }

    v6 = [*(a1 + 40) createKeyExchangeRequestJWTWithContext:*(a1 + 32) otherPartyPublicKey:*(a1 + 48)];
    if (v6)
    {
      v7 = [*(a1 + 32) deviceConfiguration];
      v8 = [v7 signingAlgorithm];
      v9 = [*(a1 + 32) deviceConfiguration];
      v10 = [v9 deviceSigningKey];
      v11 = [*(a1 + 32) deviceConfiguration];
      v12 = +[POJWTSigning encodeAndSignJWT:signingAlgorithm:key:certificate:error:](POJWTSigning, "encodeAndSignJWT:signingAlgorithm:key:certificate:error:", v6, v8, v10, [v11 deviceSigningCertificate], 0);

      if (v12)
      {
        v13 = [*(a1 + 40) createKeyExchangeRequestWithContext:*(a1 + 32) jwt:v12];
        v14 = v13;
        if (v13)
        {
          v15 = PO_LOG_PODiagnostics(v13);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [*(a1 + 32) requestIdentifier];
            *buf = 138543362;
            v37 = v16;
            _os_log_impl(&dword_25E8B1000, v15, OS_LOG_TYPE_INFO, "Sending Key Exchange request: %{public}@", buf, 0xCu);
          }

          v18 = PO_LOG_POAuthenticationProcess(v17);
          v19 = os_signpost_id_make_with_pointer(v18, *(a1 + 32));

          v21 = PO_LOG_POAuthenticationProcess(v20);
          v22 = v21;
          if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_25E8B1000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v19, "PlatformSSO_KeyExchangeRequest", " enableTelemetry=YES ", buf, 2u);
          }

          v24 = *(a1 + 32);
          v23 = *(a1 + 40);
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1012;
          v33[3] = &unk_279A3DF20;
          v35 = v19;
          v25 = *(a1 + 56);
          v33[4] = *(a1 + 40);
          v34 = v25;
          [v23 performKeyExchangeRequestWithContext:v24 request:v14 completion:v33];
        }

        else
        {
          v32 = __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1006();
          (*(*(a1 + 56) + 16))();
        }
      }

      else
      {
        v31 = __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1000();
        (*(*(a1 + 56) + 16))();
      }
    }

    else
    {
      v30 = __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_994();
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v26 = __71__POAuthenticationProcess_performPasswordLoginUsingContext_completion___block_invoke_2();
    v27 = PO_LOG_POAuthenticationProcess(v26);
    v28 = v27;
    v29 = *(a1 + 64);
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v28, OS_SIGNPOST_INTERVAL_END, v29, "PlatformSSO_NonceRequest", "Failed", buf, 2u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

id __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_994()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create Key Exchange JWT."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1000()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to sign Key Exchange request."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1006()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create Key Exchange request."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

void __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1012(void *a1, uint64_t a2, void *a3, void *a4)
{
  v91 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = PO_LOG_POAuthenticationProcess(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v9, OS_LOG_TYPE_INFO, "Key Exchange response received", buf, 2u);
  }

  v11 = PO_LOG_POAuthenticationProcess(v10);
  v12 = v11;
  v13 = a1[6];
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 134217984;
    v90 = a2;
    _os_signpost_emit_with_name_impl(&dword_25E8B1000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PlatformSSO_KeyExchangeRequest", "result=%lu", buf, 0xCu);
  }

  if (a2 == 1)
  {
    v14 = [POKeyExchangeResponseJWT alloc];
    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
    v16 = [(POKeyExchangeResponseJWT *)v14 initWithString:v15];

    if (!v16)
    {
      v21 = __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1020();
      (*(a1[5] + 16))();
LABEL_38:

      goto LABEL_39;
    }

    v81 = v8;
    v17 = *(a1[4] + 40);
    v18 = [(POJWT *)v16 decodedHeader];
    v19 = [v18 alg];
    v82 = a1;
    if ([v17 containsObject:v19])
    {
    }

    else
    {
      v22 = *(a1[4] + 40);
      v23 = MEMORY[0x277CCACA8];
      [(POJWT *)v16 decodedHeader];
      v25 = v24 = v16;
      v26 = [v25 alg];
      v27 = [(POJWT *)v24 decodedHeader];
      v28 = [v27 enc];
      v29 = [v23 stringWithFormat:@"%@, %@", v26, v28];
      LOBYTE(v22) = [v22 containsObject:v29];

      v16 = v24;
      if ((v22 & 1) == 0)
      {
        v67 = MEMORY[0x277CCACA8];
        v68 = [(POJWT *)v24 decodedHeader];
        v69 = [v68 alg];
        v70 = [(POJWT *)v24 decodedHeader];
        v71 = [v70 enc];
        v72 = [v67 stringWithFormat:@"alg = %@, enc = %@", v69, v71];

        v87[0] = MEMORY[0x277D85DD0];
        v87[1] = 3221225472;
        v87[2] = __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1026;
        v87[3] = &unk_279A3DC48;
        v88 = v72;
        v73 = v72;
        v74 = __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1026(v87);
        (*(v82[5] + 16))();

LABEL_37:
        v8 = v81;
        goto LABEL_38;
      }
    }

    v30 = [v7 deviceConfiguration];
    v31 = [v30 encryptionAlgorithm];
    v83 = v16;
    if ([v31 isEqualToNumber:?])
    {
      [v7 apv];
    }

    else
    {
      [v7 nonce];
    }
    v79 = ;

    v78 = [v7 deviceConfiguration];
    v32 = [v78 encryptionAlgorithm];
    v33 = [v7 deviceConfiguration];
    v34 = [v33 deviceEncryptionKey];
    v35 = [v7 loginConfiguration];
    v36 = [v35 hpkePsk];
    v37 = [v7 loginConfiguration];
    v38 = [v37 hpkePsk_id];
    v39 = v7;
    v40 = v38;
    v80 = v39;
    v41 = [v39 loginConfiguration];
    v86 = 0;
    v42 = +[POJWTEncryption decodeAndDecryptJWT:encryptionAlgorithm:privateKey:otherInfo:psk:psk_id:authPublicKey:error:](POJWTEncryption, "decodeAndDecryptJWT:encryptionAlgorithm:privateKey:otherInfo:psk:psk_id:authPublicKey:error:", v83, v32, v34, v79, v36, v40, [v41 hpkeAuthPublicKey], &v86);
    v43 = v86;

    if (!v42)
    {
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1030;
      v84[3] = &unk_279A3DC48;
      v85 = v43;
      v66 = __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1030(v84);
      v7 = v80;
      (*(v82[5] + 16))();

      v16 = v83;
LABEL_36:

      goto LABEL_37;
    }

    v44 = +[POCoreConfigurationUtil platformSSODevModeEnabled];
    v7 = v80;
    v16 = v83;
    if (v44)
    {
      v45 = PO_LOG_POAuthenticationProcess(v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1012_cold_1();
      }
    }

    v46 = v43;
    v47 = [v80 deviceConfiguration];
    v48 = [v47 encryptionAlgorithm];
    v49 = [v48 isEqualToNumber:0x2870A9198];

    if (v49)
    {
      if (([v82[4] validatePartyUInfo:v83 context:v80] & 1) == 0)
      {
        v76 = __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1034();
        goto LABEL_34;
      }

      v50 = [v80 deviceConfiguration];
      v51 = SecKeyCopyPublicKey([v50 deviceEncryptionKey]);

      v52 = v82[4];
      v53 = [v80 apv];
      v54 = [v52 validatePartyVInfo:v53 context:v80 publicKey:v51];

      if (v51)
      {
        CFRelease(v51);
      }

      if ((v54 & 1) == 0)
      {
        v77 = __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1037();
        goto LABEL_34;
      }
    }

    v55 = [(POKeyExchangeResponseJWT *)v83 decodedBody];
    v56 = [v55 key];

    if (v56)
    {
      Default = CFAllocatorGetDefault();
      v58 = SecCFAllocatorZeroize();
      CFAllocatorSetDefault(v58);
      v59 = objc_alloc(MEMORY[0x277CBEB28]);
      v60 = [(POKeyExchangeResponseJWT *)v83 decodedBody];
      v61 = [v60 key];
      v62 = [v59 initWithBase64EncodedString:v61 options:0];

      v7 = v80;
      CFAllocatorSetDefault(Default);
      if (v62)
      {
        v63 = v82[5];
        v64 = [(POKeyExchangeResponseJWT *)v83 decodedBody];
        v65 = [v64 key_context];
        (*(v63 + 16))(v63, 1, v80, v62, v65);

LABEL_35:
        v43 = v46;
        goto LABEL_36;
      }
    }

    v75 = __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1040();
LABEL_34:
    (*(v82[5] + 16))();
    goto LABEL_35;
  }

  v20 = __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1013();
  (*(a1[5] + 16))();
LABEL_39:
}

id __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1013()
{
  v0 = [POError errorWithCode:-1001 description:@"Key Exchange request failed."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1020()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to parse Key Exchange response."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1026(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 description:@"Unsupported Key Exchange response algorithm and encryption."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1();
  }

  return v1;
}

id __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1030(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to decrypt Key Exchange response."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

id __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1034()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to validate apu."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1037()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to validate apv."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1040()
{
  v0 = [POError errorWithCode:-1001 description:@"Missing or malformed exchanged key."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (id)createKeyRequestJWTWithContext:(id)context
{
  v35[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  refreshToken = [contextCopy refreshToken];

  if (refreshToken)
  {
    nonce = [contextCopy nonce];
    if (nonce)
    {
      v7 = nonce;
      serverNonce = [contextCopy serverNonce];

      if (serverNonce)
      {
        v9 = objc_alloc_init(POMutableKeyRequestJWTBody);
        loginConfiguration = [contextCopy loginConfiguration];
        customKeyRequestBodyClaims = [loginConfiguration customKeyRequestBodyClaims];
        [(POMutableKeyRequestJWTBody *)v9 addCustomClaims:customKeyRequestBodyClaims];

        [(POMutableKeyRequestJWTBody *)v9 setRequest_type:@"key_request"];
        [(POMutableKeyRequestJWTBody *)v9 setVersion:@"1.0"];
        date = [MEMORY[0x277CBEAA8] date];
        [(POMutableKeyRequestJWTBody *)v9 setIat:date];

        loginConfiguration2 = [contextCopy loginConfiguration];
        clientID = [loginConfiguration2 clientID];
        [(POMutableKeyRequestJWTBody *)v9 setIss:clientID];

        v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:300.0];
        [(POMutableKeyRequestJWTBody *)v9 setExp:v15];

        nonce2 = [contextCopy nonce];
        [(POMutableKeyRequestJWTBody *)v9 setNonce:nonce2];

        refreshToken2 = [contextCopy refreshToken];
        [(POMutableKeyRequestJWTBody *)v9 setRefresh_token:refreshToken2];

        userName = [contextCopy userName];
        [(POMutableKeyRequestJWTBody *)v9 setUsername:userName];

        userName2 = [contextCopy userName];
        [(POMutableKeyRequestJWTBody *)v9 setSub:userName2];

        [(POMutableKeyRequestJWTBody *)v9 setKey_purpose:@"user_unlock"];
        loginConfiguration3 = [contextCopy loginConfiguration];
        serverNonceClaimName = [loginConfiguration3 serverNonceClaimName];
        v22 = [serverNonceClaimName length];

        if (v22)
        {
          loginConfiguration4 = [contextCopy loginConfiguration];
          serverNonceClaimName2 = [loginConfiguration4 serverNonceClaimName];
          v34 = serverNonceClaimName2;
          serverNonce2 = [contextCopy serverNonce];
          v35[0] = serverNonce2;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
          [(POMutableKeyRequestJWTBody *)v9 addCustomClaims:v26];
        }

        else
        {
          loginConfiguration4 = [contextCopy serverNonce];
          [(POMutableKeyRequestJWTBody *)v9 setRequest_nonce:loginConfiguration4];
        }

        [(POAuthenticationProcess *)self addCryptoHeadersToJWTBody:v9 context:contextCopy];
        v30 = objc_alloc_init(POMutableJWTHeader);
        [(POMutableJWTHeader *)v30 setTyp:@"platformsso-key-request+jwt"];
        loginConfiguration5 = [contextCopy loginConfiguration];
        customKeyRequestHeaderClaims = [loginConfiguration5 customKeyRequestHeaderClaims];
        [(POMutableJWTHeader *)v30 addCustomClaims:customKeyRequestHeaderClaims];

        v29 = objc_alloc_init(POMutableKeyRequestJWT);
        [(POMutableKeyRequestJWT *)v29 setBody:v9];
        [(POMutableJWT *)v29 setHeader:v30];

        goto LABEL_11;
      }
    }

    v27 = __58__POAuthenticationProcess_createKeyRequestJWTWithContext___block_invoke_1051();
  }

  else
  {
    v28 = __58__POAuthenticationProcess_createKeyRequestJWTWithContext___block_invoke();
  }

  v29 = 0;
LABEL_11:

  return v29;
}

id __58__POAuthenticationProcess_createKeyRequestJWTWithContext___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Missing refresh token."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __58__POAuthenticationProcess_createKeyRequestJWTWithContext___block_invoke_1051()
{
  v0 = [POError errorWithCode:-1001 description:@"Missing required values."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (id)createKeyRequestWithContext:(id)context jwt:(id)jwt
{
  v38[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = MEMORY[0x277CCAB70];
  jwtCopy = jwt;
  v8 = [v6 alloc];
  loginConfiguration = [contextCopy loginConfiguration];
  keyEndpointURL = [loginConfiguration keyEndpointURL];
  v11 = [v8 initWithURL:keyEndpointURL cachePolicy:4 timeoutInterval:30.0];

  [v11 setHTTPMethod:@"POST"];
  [v11 addValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-type"];
  [v11 addValue:@"application/platformsso-key-response+jwt" forHTTPHeaderField:@"Accept"];
  requestIdentifier = [contextCopy requestIdentifier];
  [v11 addValue:requestIdentifier forHTTPHeaderField:@"client-request-id"];

  v13 = objc_alloc_init(MEMORY[0x277CCACE0]);
  v14 = [MEMORY[0x277CCAD18] queryItemWithName:@"platform_sso_version" value:@"2.0"];
  v38[0] = v14;
  v15 = [MEMORY[0x277CCAD18] queryItemWithName:@"grant_type" value:@"urn:ietf:params:oauth:grant-type:jwt-bearer"];
  v38[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];

  loginConfiguration2 = [contextCopy loginConfiguration];
  customKeyRequestValues = [loginConfiguration2 customKeyRequestValues];

  if (customKeyRequestValues)
  {
    loginConfiguration3 = [contextCopy loginConfiguration];
    customKeyRequestValues2 = [loginConfiguration3 customKeyRequestValues];
    v21 = [v16 arrayByAddingObjectsFromArray:customKeyRequestValues2];

    v16 = v21;
  }

  [v13 setQueryItems:v16];
  percentEncodedQuery = [v13 percentEncodedQuery];
  v23 = [percentEncodedQuery dataUsingEncoding:4];
  v24 = [v23 mutableCopy];

  loginConfiguration4 = [contextCopy loginConfiguration];
  customRequestJWTParameterName = [loginConfiguration4 customRequestJWTParameterName];
  v27 = [customRequestJWTParameterName length];

  if (v27)
  {
    loginConfiguration5 = [contextCopy loginConfiguration];
    customRequestJWTParameterName2 = [loginConfiguration5 customRequestJWTParameterName];
  }

  else
  {
    customRequestJWTParameterName2 = @"assertion";
  }

  v30 = SecCFAllocatorZeroize();
  v31 = CFStringCreateWithFormat(v30, 0, @"&%@=%@", customRequestJWTParameterName2, jwtCopy);

  if (v31)
  {
    v32 = SecCFAllocatorZeroize();
    ExternalRepresentation = CFStringCreateExternalRepresentation(v32, v31, 0x8000100u, 0);
    if (ExternalRepresentation)
    {
      [v24 appendData:ExternalRepresentation];
      [v11 setHTTPBody:v24];
      v34 = v11;
    }

    else
    {
      v36 = __61__POAuthenticationProcess_createLoginRequestWithContext_jwt___block_invoke();
      v34 = 0;
    }
  }

  else
  {
    v35 = __61__POAuthenticationProcess_createLoginRequestWithContext_jwt___block_invoke();
    v34 = 0;
  }

  return v34;
}

- (void)performKeyRequestWithContext:(id)context request:(id)request completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  requestCopy = request;
  urlSession = [contextCopy urlSession];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke;
  v21 = &unk_279A3DF70;
  v23 = contextCopy;
  v24 = completionCopy;
  selfCopy = self;
  v12 = contextCopy;
  v13 = completionCopy;
  v14 = [urlSession dataTaskWithRequest:requestCopy completionHandler:&v18];

  v15 = MEMORY[0x277CCACA8];
  requestIdentifier = [v12 requestIdentifier];
  selfCopy = [v15 stringWithFormat:@"Key Request: %@", requestIdentifier, v18, v19, v20, v21, selfCopy];
  [v14 setTaskDescription:selfCopy];

  [v14 resume];
}

void __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PO_LOG_POAuthenticationProcess(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v10, OS_LOG_TYPE_INFO, "Key response received", buf, 2u);
  }

  if (v9)
  {
    if (v7)
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
    }

    else
    {
      v11 = 0;
    }

    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_1073;
    v46[3] = &unk_279A3DE00;
    v47 = v9;
    v48 = v11;
    v12 = v11;
    v19 = __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_1073(v46);
    v20 = [a1[4] completionQueue];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_1077;
    v43[3] = &unk_279A3DF98;
    v45 = a1[6];
    v44 = a1[5];
    [v20 addOperationWithBlock:v43];

    v21 = v47;
LABEL_20:

    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v8;
    if ([v12 statusCode] >= 200 && objc_msgSend(v12, "statusCode") < 300)
    {
      v24 = +[POCoreConfigurationUtil platformSSODevModeEnabled];
      v25 = v24;
      v26 = PO_LOG_POAuthenticationProcess(v24);
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
      if (v25)
      {
        if (v27)
        {
          __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_cold_2();
        }
      }

      else if (v27)
      {
        __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_cold_1();
      }

      v15 = [a1[4] completionQueue];
      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_1089;
      v31 = &unk_279A3E060;
      v13 = &v34;
      v34 = a1[6];
      v16 = &v32;
      v32 = a1[5];
      v17 = &v33;
      v33 = v7;
      v18 = &v28;
    }

    else
    {
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_2_1084;
      v38[3] = &unk_279A3DC48;
      v13 = &v39;
      v39 = v12;
      v14 = __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_2_1084(v38);
      v15 = [a1[4] completionQueue];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_1088;
      v35[3] = &unk_279A3DF98;
      v16 = &v37;
      v37 = a1[6];
      v17 = &v36;
      v36 = a1[5];
      v18 = v35;
    }

    [v15 addOperationWithBlock:{v18, v28, v29, v30, v31}];

    v21 = *v13;
    goto LABEL_20;
  }

  v22 = __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_2();
  v23 = [a1[4] completionQueue];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_1083;
  v40[3] = &unk_279A3DF98;
  v42 = a1[6];
  v41 = a1[5];
  [v23 addOperationWithBlock:v40];

  v12 = v42;
LABEL_21:
}

id __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_1073(uint64_t a1)
{
  v1 = [POError errorWithCode:-1009 underlyingError:*(a1 + 32) description:@"Failed to retrieve key."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_231_cold_1();
  }

  return v1;
}

id __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_2()
{
  v0 = [POError errorWithCode:-1009 description:@"Not HTTP response for key."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_2_1084(uint64_t a1)
{
  v1 = [POError errorWithCode:-1009 description:@"Key request failed."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_244_cold_1();
  }

  return v1;
}

- (id)createKeyExchangeRequestJWTWithContext:(id)context otherPartyPublicKey:(id)key
{
  v40[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  keyCopy = key;
  refreshToken = [contextCopy refreshToken];

  if (refreshToken)
  {
    nonce = [contextCopy nonce];
    if (nonce)
    {
      v10 = nonce;
      serverNonce = [contextCopy serverNonce];

      if (keyCopy)
      {
        if (serverNonce)
        {
          v12 = objc_alloc_init(POMutableKeyExchangeRequestJWTBody);
          loginConfiguration = [contextCopy loginConfiguration];
          customKeyExchangeRequestBodyClaims = [loginConfiguration customKeyExchangeRequestBodyClaims];
          [(POMutableKeyExchangeRequestJWTBody *)v12 addCustomClaims:customKeyExchangeRequestBodyClaims];

          [(POMutableKeyExchangeRequestJWTBody *)v12 setRequest_type:@"key_exchange"];
          [(POMutableKeyExchangeRequestJWTBody *)v12 setVersion:@"1.0"];
          date = [MEMORY[0x277CBEAA8] date];
          [(POMutableKeyExchangeRequestJWTBody *)v12 setIat:date];

          loginConfiguration2 = [contextCopy loginConfiguration];
          clientID = [loginConfiguration2 clientID];
          [(POMutableKeyExchangeRequestJWTBody *)v12 setIss:clientID];

          v18 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:300.0];
          [(POMutableKeyExchangeRequestJWTBody *)v12 setExp:v18];

          nonce2 = [contextCopy nonce];
          [(POMutableKeyExchangeRequestJWTBody *)v12 setNonce:nonce2];

          refreshToken2 = [contextCopy refreshToken];
          [(POMutableKeyExchangeRequestJWTBody *)v12 setRefresh_token:refreshToken2];

          userName = [contextCopy userName];
          [(POMutableKeyExchangeRequestJWTBody *)v12 setUsername:userName];

          userName2 = [contextCopy userName];
          [(POMutableKeyExchangeRequestJWTBody *)v12 setSub:userName2];

          [(POMutableKeyExchangeRequestJWTBody *)v12 setKey_purpose:@"user_unlock"];
          loginConfiguration3 = [contextCopy loginConfiguration];
          serverNonceClaimName = [loginConfiguration3 serverNonceClaimName];
          v25 = [serverNonceClaimName length];

          if (v25)
          {
            loginConfiguration4 = [contextCopy loginConfiguration];
            serverNonceClaimName2 = [loginConfiguration4 serverNonceClaimName];
            v39 = serverNonceClaimName2;
            serverNonce2 = [contextCopy serverNonce];
            v40[0] = serverNonce2;
            v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
            [(POMutableKeyExchangeRequestJWTBody *)v12 addCustomClaims:v29];
          }

          else
          {
            loginConfiguration4 = [contextCopy serverNonce];
            [(POMutableKeyExchangeRequestJWTBody *)v12 setRequest_nonce:loginConfiguration4];
          }

          v34 = [keyCopy base64EncodedStringWithOptions:0];
          [(POMutableKeyExchangeRequestJWTBody *)v12 setOther_publickey:v34];

          encryptionContext = [contextCopy encryptionContext];
          [(POMutableKeyExchangeRequestJWTBody *)v12 setKey_context:encryptionContext];

          [(POAuthenticationProcess *)self addCryptoHeadersToJWTBody:v12 context:contextCopy];
          v36 = objc_alloc_init(POMutableJWTHeader);
          [(POMutableJWTHeader *)v36 setTyp:@"platformsso-key-request+jwt"];
          loginConfiguration5 = [contextCopy loginConfiguration];
          customKeyExchangeRequestHeaderClaims = [loginConfiguration5 customKeyExchangeRequestHeaderClaims];
          [(POMutableJWTHeader *)v36 addCustomClaims:customKeyExchangeRequestHeaderClaims];

          v32 = objc_alloc_init(POMutableKeyExchangeRequestJWT);
          [(POMutableKeyExchangeRequestJWT *)v32 setBody:v12];
          [(POMutableJWT *)v32 setHeader:v36];

          goto LABEL_10;
        }
      }
    }

    v30 = __86__POAuthenticationProcess_createKeyExchangeRequestJWTWithContext_otherPartyPublicKey___block_invoke_1095();
  }

  else
  {
    v31 = __58__POAuthenticationProcess_createKeyRequestJWTWithContext___block_invoke();
  }

  v32 = 0;
LABEL_10:

  return v32;
}

id __86__POAuthenticationProcess_createKeyExchangeRequestJWTWithContext_otherPartyPublicKey___block_invoke_1095()
{
  v0 = [POError errorWithCode:-1008 description:@"Missing required values."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (id)createKeyExchangeRequestWithContext:(id)context jwt:(id)jwt
{
  v38[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = MEMORY[0x277CCAB70];
  jwtCopy = jwt;
  v8 = [v6 alloc];
  loginConfiguration = [contextCopy loginConfiguration];
  keyEndpointURL = [loginConfiguration keyEndpointURL];
  v11 = [v8 initWithURL:keyEndpointURL cachePolicy:4 timeoutInterval:30.0];

  [v11 setHTTPMethod:@"POST"];
  [v11 addValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-type"];
  [v11 addValue:@"application/platformsso-key-response+jwt" forHTTPHeaderField:@"Accept"];
  requestIdentifier = [contextCopy requestIdentifier];
  [v11 addValue:requestIdentifier forHTTPHeaderField:@"client-request-id"];

  v13 = objc_alloc_init(MEMORY[0x277CCACE0]);
  v14 = [MEMORY[0x277CCAD18] queryItemWithName:@"platform_sso_version" value:@"2.0"];
  v38[0] = v14;
  v15 = [MEMORY[0x277CCAD18] queryItemWithName:@"grant_type" value:@"urn:ietf:params:oauth:grant-type:jwt-bearer"];
  v38[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];

  loginConfiguration2 = [contextCopy loginConfiguration];
  customKeyExchangeRequestValues = [loginConfiguration2 customKeyExchangeRequestValues];

  if (customKeyExchangeRequestValues)
  {
    loginConfiguration3 = [contextCopy loginConfiguration];
    customKeyExchangeRequestValues2 = [loginConfiguration3 customKeyExchangeRequestValues];
    v21 = [v16 arrayByAddingObjectsFromArray:customKeyExchangeRequestValues2];

    v16 = v21;
  }

  [v13 setQueryItems:v16];
  percentEncodedQuery = [v13 percentEncodedQuery];
  v23 = [percentEncodedQuery dataUsingEncoding:4];
  v24 = [v23 mutableCopy];

  loginConfiguration4 = [contextCopy loginConfiguration];
  customRequestJWTParameterName = [loginConfiguration4 customRequestJWTParameterName];
  v27 = [customRequestJWTParameterName length];

  if (v27)
  {
    loginConfiguration5 = [contextCopy loginConfiguration];
    customRequestJWTParameterName2 = [loginConfiguration5 customRequestJWTParameterName];
  }

  else
  {
    customRequestJWTParameterName2 = @"assertion";
  }

  v30 = SecCFAllocatorZeroize();
  v31 = CFStringCreateWithFormat(v30, 0, @"&%@=%@", customRequestJWTParameterName2, jwtCopy);

  if (v31)
  {
    v32 = SecCFAllocatorZeroize();
    ExternalRepresentation = CFStringCreateExternalRepresentation(v32, v31, 0x8000100u, 0);
    if (ExternalRepresentation)
    {
      [v24 appendData:ExternalRepresentation];
      [v11 setHTTPBody:v24];
      v34 = v11;
    }

    else
    {
      v36 = __61__POAuthenticationProcess_createLoginRequestWithContext_jwt___block_invoke();
      v34 = 0;
    }
  }

  else
  {
    v35 = __61__POAuthenticationProcess_createLoginRequestWithContext_jwt___block_invoke();
    v34 = 0;
  }

  return v34;
}

- (void)performKeyExchangeRequestWithContext:(id)context request:(id)request completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  requestCopy = request;
  urlSession = [contextCopy urlSession];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke;
  v21 = &unk_279A3DF70;
  v23 = contextCopy;
  v24 = completionCopy;
  selfCopy = self;
  v12 = contextCopy;
  v13 = completionCopy;
  v14 = [urlSession dataTaskWithRequest:requestCopy completionHandler:&v18];

  v15 = MEMORY[0x277CCACA8];
  requestIdentifier = [v12 requestIdentifier];
  selfCopy = [v15 stringWithFormat:@"Key Exchange Request: %@", requestIdentifier, v18, v19, v20, v21, selfCopy];
  [v14 setTaskDescription:selfCopy];

  [v14 resume];
}

void __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PO_LOG_POAuthenticationProcess(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v10, OS_LOG_TYPE_INFO, "Key Exchange response received", buf, 2u);
  }

  if (v9)
  {
    if (v7)
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
    }

    else
    {
      v11 = 0;
    }

    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_1108;
    v46[3] = &unk_279A3DE00;
    v47 = v9;
    v48 = v11;
    v12 = v11;
    v19 = __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_1108(v46);
    v20 = [a1[4] completionQueue];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_1112;
    v43[3] = &unk_279A3DF98;
    v45 = a1[6];
    v44 = a1[5];
    [v20 addOperationWithBlock:v43];

    v21 = v47;
LABEL_20:

    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v8;
    if ([v12 statusCode] >= 200 && objc_msgSend(v12, "statusCode") < 300)
    {
      v24 = +[POCoreConfigurationUtil platformSSODevModeEnabled];
      v25 = v24;
      v26 = PO_LOG_POAuthenticationProcess(v24);
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
      if (v25)
      {
        if (v27)
        {
          __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_cold_2();
        }
      }

      else if (v27)
      {
        __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_cold_1();
      }

      v15 = [a1[4] completionQueue];
      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_1124;
      v31 = &unk_279A3E060;
      v13 = &v34;
      v34 = a1[6];
      v16 = &v32;
      v32 = a1[5];
      v17 = &v33;
      v33 = v7;
      v18 = &v28;
    }

    else
    {
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_2_1119;
      v38[3] = &unk_279A3DC48;
      v13 = &v39;
      v39 = v12;
      v14 = __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_2_1119(v38);
      v15 = [a1[4] completionQueue];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_1123;
      v35[3] = &unk_279A3DF98;
      v16 = &v37;
      v37 = a1[6];
      v17 = &v36;
      v36 = a1[5];
      v18 = v35;
    }

    [v15 addOperationWithBlock:{v18, v28, v29, v30, v31}];

    v21 = *v13;
    goto LABEL_20;
  }

  v22 = __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_2();
  v23 = [a1[4] completionQueue];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_1118;
  v40[3] = &unk_279A3DF98;
  v42 = a1[6];
  v41 = a1[5];
  [v23 addOperationWithBlock:v40];

  v12 = v42;
LABEL_21:
}

id __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_1108(uint64_t a1)
{
  v1 = [POError errorWithCode:-1009 underlyingError:*(a1 + 32) description:@"Failed to exchange."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_231_cold_1();
  }

  return v1;
}

id __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_2()
{
  v0 = [POError errorWithCode:-1009 description:@"Not HTTP response for exchange."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_2_1119(uint64_t a1)
{
  v1 = [POError errorWithCode:-1009 description:@"Exchange request failed."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_244_cold_1();
  }

  return v1;
}

- (void)extractGroupsAndSubUsingAuthorizationWithLoginConfiguration:(id)configuration tokens:(id)tokens returningGroups:(id *)groups identifier:(id *)identifier refreshToken:(id *)token
{
  configurationCopy = configuration;
  *groups = 0;
  *identifier = 0;
  v36 = 0;
  v12 = [MEMORY[0x277CCAAA0] JSONObjectWithData:tokens options:16 error:&v36];
  v13 = v36;
  v14 = v13;
  if (v13)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __134__POAuthenticationProcess_extractGroupsAndSubUsingAuthorizationWithLoginConfiguration_tokens_returningGroups_identifier_refreshToken___block_invoke;
    v34[3] = &unk_279A3DC48;
    v35 = v13;
    v15 = __134__POAuthenticationProcess_extractGroupsAndSubUsingAuthorizationWithLoginConfiguration_tokens_returningGroups_identifier_refreshToken___block_invoke(v34);
  }

  else
  {
    v16 = [v12 objectForKeyedSubscript:@"id_token"];
    if (v16 && (v17 = v16, [v12 objectForKeyedSubscript:@"id_token"], v18 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v19 = objc_opt_isKindOfClass(), v18, v17, (v19 & 1) != 0))
    {
      v20 = [POIDTokenJWT alloc];
      v21 = [v12 objectForKeyedSubscript:@"id_token"];
      v22 = [(POIDTokenJWT *)v20 initWithString:v21];

      groupResponseClaimName = [configurationCopy groupResponseClaimName];

      decodedBody = [(POIDTokenJWT *)v22 decodedBody];
      v25 = decodedBody;
      if (groupResponseClaimName)
      {
        allData = [decodedBody allData];
        groupResponseClaimName2 = [configurationCopy groupResponseClaimName];
        *groups = [allData objectForKeyedSubscript:groupResponseClaimName2];
      }

      else
      {
        *groups = [decodedBody groups];
      }

      decodedBody2 = [(POIDTokenJWT *)v22 decodedBody];
      allData2 = [decodedBody2 allData];
      uniqueIdentifierClaimName = [configurationCopy uniqueIdentifierClaimName];
      *identifier = [allData2 objectForKeyedSubscript:uniqueIdentifierClaimName];

      if (token)
      {
        v32 = [v12 objectForKeyedSubscript:@"refresh_token"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          *token = [v12 objectForKeyedSubscript:@"refresh_token"];
        }
      }
    }

    else
    {
      v28 = __134__POAuthenticationProcess_extractGroupsAndSubUsingAuthorizationWithLoginConfiguration_tokens_returningGroups_identifier_refreshToken___block_invoke_1131();
    }
  }
}

id __134__POAuthenticationProcess_extractGroupsAndSubUsingAuthorizationWithLoginConfiguration_tokens_returningGroups_identifier_refreshToken___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 underlyingError:*(a1 + 32) description:@"Error deserializing tokens for groups."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

id __134__POAuthenticationProcess_extractGroupsAndSubUsingAuthorizationWithLoginConfiguration_tokens_returningGroups_identifier_refreshToken___block_invoke_1131()
{
  v0 = [POError errorWithCode:-1008 description:@"Invalid or missing id_token."];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (BOOL)extractNewUserValuesFromTokens:(id)tokens deviceConfiguration:(id)configuration loginUserName:(id)name returningName:(id *)returningName userName:(id *)userName error:(id *)error
{
  configurationCopy = configuration;
  nameCopy = name;
  tokensCopy = tokens;
  v16 = PO_LOG_POAuthenticationProcess(tokensCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess extractNewUserValuesFromTokens:deviceConfiguration:loginUserName:returningName:userName:error:];
  }

  v64 = 0;
  v17 = [MEMORY[0x277CCAAA0] JSONObjectWithData:tokensCopy options:16 error:&v64];

  v18 = v64;
  v19 = v18;
  if (v18)
  {
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __121__POAuthenticationProcess_extractNewUserValuesFromTokens_deviceConfiguration_loginUserName_returningName_userName_error___block_invoke;
    v62[3] = &unk_279A3DC48;
    v63 = v18;
    v20 = __121__POAuthenticationProcess_extractNewUserValuesFromTokens_deviceConfiguration_loginUserName_returningName_userName_error___block_invoke(v62);
    if (error)
    {
      v20 = v20;
      *error = v20;
    }

    v21 = 0;
    v22 = v63;
  }

  else
  {
    returningNameCopy = returningName;
    v22 = [v17 objectForKeyedSubscript:@"id_token"];
    if (v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v57 = v22;
      v25 = [POIDTokenJWT alloc];
      v26 = [v17 objectForKeyedSubscript:@"id_token"];
      v27 = [(POIDTokenJWT *)v25 initWithString:v26];

      tokenToUserMapping = [configurationCopy tokenToUserMapping];
      v29 = [tokenToUserMapping objectForKeyedSubscript:@"AccountName"];

      v58 = v27;
      v56 = v29;
      if ([v29 isEqualToString:@"com.apple.PlatformSSO.AccountShortName"])
      {
        decodedBody = [nameCopy componentsSeparatedByString:@"@"];
        firstObject = [decodedBody firstObject];
      }

      else
      {
        decodedBody = [(POIDTokenJWT *)v27 decodedBody];
        allData = [decodedBody allData];
        v33 = [allData objectForKeyedSubscript:v29];
        v34 = v33;
        if (v33)
        {
          firstObject = v33;
        }

        else
        {
          decodedBody2 = [(POIDTokenJWT *)v27 decodedBody];
          allData2 = [decodedBody2 allData];
          firstObject = [allData2 objectForKeyedSubscript:@"preferred_username"];

          v27 = v58;
        }
      }

      if (!firstObject)
      {
        v36 = [nameCopy componentsSeparatedByString:@"@"];
        firstObject = [v36 firstObject];
      }

      if (userName)
      {
        v37 = firstObject;
        *userName = firstObject;
      }

      tokenToUserMapping2 = [configurationCopy tokenToUserMapping];
      v39 = [tokenToUserMapping2 objectForKeyedSubscript:@"FullName"];

      decodedBody3 = [(POIDTokenJWT *)v27 decodedBody];
      allData3 = [decodedBody3 allData];
      v42 = [allData3 objectForKeyedSubscript:v39];
      v43 = v42;
      if (v42)
      {
        v44 = v42;
      }

      else
      {
        [(POIDTokenJWT *)v27 decodedBody];
        v52 = v55 = configurationCopy;
        [v52 allData];
        v45 = v53 = v17;
        v46 = [v45 objectForKeyedSubscript:@"name"];
        v47 = nameCopy;
        v48 = v46;
        if (v46)
        {
          v49 = v46;
        }

        else
        {
          v49 = firstObject;
        }

        v44 = v49;

        nameCopy = v47;
        v17 = v53;

        configurationCopy = v55;
      }

      if (returningNameCopy)
      {
        v50 = v44;
        *returningNameCopy = v44;
      }

      v21 = 1;
      v22 = v57;
      v24 = v58;
    }

    else
    {
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __121__POAuthenticationProcess_extractNewUserValuesFromTokens_deviceConfiguration_loginUserName_returningName_userName_error___block_invoke_1140;
      v60[3] = &unk_279A3DC48;
      v61 = 0;
      v23 = __121__POAuthenticationProcess_extractNewUserValuesFromTokens_deviceConfiguration_loginUserName_returningName_userName_error___block_invoke_1140(v60);
      if (error)
      {
        v23 = v23;
        *error = v23;
      }

      v21 = 0;
      v24 = v61;
    }
  }

  return v21;
}

id __121__POAuthenticationProcess_extractNewUserValuesFromTokens_deviceConfiguration_loginUserName_returningName_userName_error___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to parse sso tokens"];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

id __121__POAuthenticationProcess_extractNewUserValuesFromTokens_deviceConfiguration_loginUserName_returningName_userName_error___block_invoke_1140(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 underlyingError:*(a1 + 32) description:@"Missing id_token."];
  v2 = PO_LOG_POAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v10 = [authenticationMethod isEqualToString:*MEMORY[0x277CCA720]];

  if (v10)
  {
    v12 = PO_LOG_PODiagnostics(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [POAuthenticationProcess URLSession:didReceiveChallenge:completionHandler:];
    }

    protectionSpace2 = [challengeCopy protectionSpace];
    serverTrust = [protectionSpace2 serverTrust];

    v15 = +[POCoreConfigurationUtil platformSSODevModeEnabled];
    if ((v15 & 1) != 0 || (v15 = +[POPreferences requireRootCAInSystemTrustStore], (v15 & 1) == 0))
    {
      v19 = PO_LOG_POAuthenticationProcess(v15);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [POAuthenticationProcess URLSession:didReceiveChallenge:completionHandler:];
      }
    }

    else
    {
      error = 0;
      if (!SecTrustEvaluateWithError(serverTrust, &error))
      {
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __76__POAuthenticationProcess_URLSession_didReceiveChallenge_completionHandler___block_invoke;
        v22[3] = &__block_descriptor_40_e14___NSError_8__0l;
        v22[4] = error;
        v17 = __76__POAuthenticationProcess_URLSession_didReceiveChallenge_completionHandler___block_invoke(v22);
        v20 = PO_LOG_PODiagnostics(v17);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          __24__POJWT_initWithString___block_invoke_cold_1();
        }

        handlerCopy[2](handlerCopy, 2, 0);
        goto LABEL_16;
      }

      v16 = +[POCoreConfigurationUtil platformSSODevModeEnabled];
      if ((v16 & 1) == 0)
      {
        v16 = +[POPreferences requireRootCAInSystemTrustStore];
        if (v16)
        {
          v17 = SecTrustCopyCertificateChain(serverTrust);
          if ([v17 lastObject])
          {
            SecTrustStoreForDomain();
            if (SecTrustStoreContains())
            {
              v18 = [objc_alloc(MEMORY[0x277CCACF0]) initWithTrust:serverTrust];
              (handlerCopy)[2](handlerCopy, 0, v18);
LABEL_28:

              goto LABEL_16;
            }

            v18 = __76__POAuthenticationProcess_URLSession_didReceiveChallenge_completionHandler___block_invoke_1164();
            v21 = PO_LOG_PODiagnostics(v18);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }
          }

          else
          {
            v18 = __76__POAuthenticationProcess_URLSession_didReceiveChallenge_completionHandler___block_invoke_1158();
            v21 = PO_LOG_PODiagnostics(v18);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
LABEL_26:
              __24__POJWT_initWithString___block_invoke_cold_1();
            }
          }

          handlerCopy[2](handlerCopy, 2, 0);
          goto LABEL_28;
        }
      }

      v19 = PO_LOG_POAuthenticationProcess(v16);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [POAuthenticationProcess URLSession:didReceiveChallenge:completionHandler:];
      }
    }

    v17 = [objc_alloc(MEMORY[0x277CCACF0]) initWithTrust:serverTrust];
    (handlerCopy)[2](handlerCopy, 0, v17);
LABEL_16:

    goto LABEL_17;
  }

  handlerCopy[2](handlerCopy, 1, 0);
LABEL_17:
}

id __76__POAuthenticationProcess_URLSession_didReceiveChallenge_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1008 underlyingError:v1 description:@"trustEvaluation failed"];

  v4 = PO_LOG_POAuthenticationProcess(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

id __76__POAuthenticationProcess_URLSession_didReceiveChallenge_completionHandler___block_invoke_1158()
{
  v0 = [POError errorWithCode:-1008 description:@"No root certificate"];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __76__POAuthenticationProcess_URLSession_didReceiveChallenge_completionHandler___block_invoke_1164()
{
  v0 = [POError errorWithCode:-1008 description:@"Root certificate is not in the system trust"];
  v1 = PO_LOG_POAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v10 = PO_LOG_PODiagnostics(handlerCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess URLSession:requestCopy task:? willPerformHTTPRedirection:? newRequest:? completionHandler:?];
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)URLSession:(id)session taskIsWaitingForConnectivity:(id)connectivity
{
  connectivityCopy = connectivity;
  v5 = PO_LOG_PODiagnostics(connectivityCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess URLSession:connectivityCopy taskIsWaitingForConnectivity:?];
  }
}

- (id)createTestMessagesForLoginConfiguration:(id)configuration certificate:(__SecCertificate *)certificate
{
  v73[2] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v7 = PO_LOG_POAuthenticationProcess(configurationCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v7, OS_LOG_TYPE_INFO, "Creating sample messages", buf, 2u);
  }

  if (configurationCopy)
  {
    *buf = 0;
    v8 = *MEMORY[0x277CDC040];
    v9 = *MEMORY[0x277CDC018];
    v72[0] = *MEMORY[0x277CDC028];
    v72[1] = v9;
    v73[0] = v8;
    v73[1] = &unk_2870A9168;
    v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:2];
    RandomKey = SecKeyCreateRandomKey(v64, buf);
    v11 = RandomKey;
    v12 = objc_alloc_init(PODeviceConfiguration);
    [(PODeviceConfiguration *)v12 setDeviceEncryptionKey:RandomKey];
    [(PODeviceConfiguration *)v12 setExtensionIdentifier:@"com.apple.testMessages"];
    v63 = v12;
    v13 = [(POAuthenticationProcess *)self createAuthenticationContextUsingLoginConfiguration:configurationCopy deviceConfiguration:v12 userName:@"foo@example.com"];
    [v13 setLoginType:1];
    [v13 setRefreshToken:@"This is the previous refresh token"];
    [v13 setDeviceConfiguration:v12];
    [v13 setLoginConfiguration:configurationCopy];
    [v13 setEmbeddedAssertionSigningKey:RandomKey];
    v62 = [(POAuthenticationProcess *)self createNonceRequestWithContext:v13];
    psso_DisplayRequest = [v62 psso_DisplayRequest];
    [v13 setServerNonce:@"This is a fake server nonce"];
    v61 = objc_alloc_init(POUserConfiguration);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [(POUserConfiguration *)v61 setUniqueIdentifier:uUIDString];

    v16 = [@"password" dataUsingEncoding:4];
    v60 = [v16 mutableCopy];

    [v13 setPassword:v60];
    v59 = [(POAuthenticationProcess *)self createLoginJWTWithContext:v13 embeddedAssertion:0];
    deviceConfiguration = [v13 deviceConfiguration];
    [deviceConfiguration signingAlgorithm];
    v18 = v65 = configurationCopy;
    v19 = [POJWTSigning encodeAndSignJWT:v59 signingAlgorithm:v18 key:RandomKey certificate:certificate];

    v54 = v19;
    v68 = [(POAuthenticationProcess *)self createLoginRequestWithContext:v13 jwt:v19];
    [v13 setLoginType:2];
    v58 = [(POAuthenticationProcess *)self createEmbeddedAssertionWithContext:v13];
    v69 = [POJWTSigning encodeAndSignJWT:v58 algorithm:@"ES256" key:RandomKey certificate:0];
    v57 = [(POAuthenticationProcess *)self createLoginJWTWithContext:v13 embeddedAssertion:v69];
    v67 = [POJWTSigning encodeAndSignJWT:v57 algorithm:@"ES256" key:RandomKey certificate:0];
    v66 = [(POAuthenticationProcess *)self createLoginRequestWithContext:v13 jwt:v67];
    v56 = [(POAuthenticationProcess *)self createKeyRequestJWTWithContext:v13];
    deviceConfiguration2 = [v13 deviceConfiguration];
    signingAlgorithm = [deviceConfiguration2 signingAlgorithm];
    v52 = [POJWTSigning encodeAndSignJWT:v56 signingAlgorithm:signingAlgorithm key:RandomKey certificate:certificate];

    v53 = [(POAuthenticationProcess *)self createKeyRequestWithContext:v13 jwt:v52];
    v22 = [@"This is an encrypted context" dataUsingEncoding:4];
    v23 = [v22 base64EncodedStringWithOptions:0];
    [v13 setEncryptionContext:v23];

    v24 = [@"secret tokens" dataUsingEncoding:4];
    v55 = [(POAuthenticationProcess *)self createKeyExchangeRequestJWTWithContext:v13 otherPartyPublicKey:v24];

    deviceConfiguration3 = [v13 deviceConfiguration];
    signingAlgorithm2 = [deviceConfiguration3 signingAlgorithm];
    v27 = [POJWTSigning encodeAndSignJWT:v55 signingAlgorithm:signingAlgorithm2 key:RandomKey certificate:certificate];

    v51 = [(POAuthenticationProcess *)self createKeyExchangeRequestWithContext:v13 jwt:v27];
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Platform SSO Test Messages\n\n"];
    v29 = [POSecKeyHelper printKey:RandomKey];
    v30 = [v28 stringByAppendingFormat:@"----------\nKey Generated for Signing All Test Messages: \n%@\n\n", v29];

    v31 = [v30 stringByAppendingFormat:@"----------\nNonce Request: \n%@\n\n", psso_DisplayRequest];

    v50 = [[POLoginTokenJWT alloc] initWithString:v19];
    v32 = [v31 stringByAppendingFormat:@"----------\nPassword Login JWT: \n%@\n\n", v50];

    psso_DisplayRequest2 = [v68 psso_DisplayRequest];
    v34 = [v32 stringByAppendingFormat:@"----------\nPassword Login Request: \n%@\n\n", psso_DisplayRequest2];

    v49 = [[POAssertionTokenJWT alloc] initWithString:v69];
    v35 = [v34 stringByAppendingFormat:@"----------\nEmbedded Assertion: \n%@\n\n", v49];

    v48 = [[POLoginTokenJWT alloc] initWithString:v67];
    v36 = [v35 stringByAppendingFormat:@"----------\nEmbedded Login JWT: \n%@\n\n", v48];

    psso_DisplayRequest3 = [v66 psso_DisplayRequest];
    v38 = [v36 stringByAppendingFormat:@"----------\nEmbedded Login Request: \n%@\n\n", psso_DisplayRequest3];

    v39 = [[POKeyRequestJWT alloc] initWithString:v52];
    v40 = [v38 stringByAppendingFormat:@"----------\nKey Request JWT: \n%@\n\n", v39];

    psso_DisplayRequest4 = [v53 psso_DisplayRequest];
    v42 = [v40 stringByAppendingFormat:@"----------\nKey Request: \n%@\n\n", psso_DisplayRequest4];

    v43 = [[POKeyExchangeRequestJWT alloc] initWithString:v27];
    v44 = [v42 stringByAppendingFormat:@"----------\nKey Exchange Request JWT: \n%@\n\n", v43];

    psso_DisplayRequest5 = [v51 psso_DisplayRequest];
    v46 = [v44 stringByAppendingFormat:@"----------\nKey Exchange Request: \n%@\n\n", psso_DisplayRequest5];

    configurationCopy = v65;
  }

  else
  {
    v46 = @"No login configuration";
  }

  return v46;
}

- (void)performPasswordLoginUsingContext:(void *)a1 completion:.cold.1(void *a1)
{
  v1 = [a1 loginConfiguration];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25E8B1000, v2, v3, "Login Configuration: %{public}@", v4, v5, v6, v7);
}

- (void)performPasswordLoginUsingContext:(void *)a1 completion:.cold.2(void *a1)
{
  v1 = [a1 deviceConfiguration];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25E8B1000, v2, v3, "Device Configuration: %{public}@", v4, v5, v6, v7);
}

- (void)createPreAuthenticationRequestWithContext:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8();
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  v2 = OUTLINED_FUNCTION_14(v0, v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25E8B1000, v3, v4, "Preauthentication response received: %{public}@", v5, v6, v7, v8);
}

void __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_231_cold_1()
{
  OUTLINED_FUNCTION_12(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1(&dword_25E8B1000, v0, v1, "%{public}@, %{public}@");
}

void __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_244_cold_1()
{
  OUTLINED_FUNCTION_4();
  [*(v0 + 32) statusCode];
  v1 = [OUTLINED_FUNCTION_7() numberWithInteger:?];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25E8B1000, v2, v3, "%{public}@, %{public}@", v4, v5, v6, v7);
}

void __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1()
{
  OUTLINED_FUNCTION_9(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1(&dword_25E8B1000, v0, v1, "%{public}@, %{public}@");
}

- (void)createWSTrustMexRequestWithContext:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8();
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  v2 = OUTLINED_FUNCTION_14(v0, v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25E8B1000, v3, v4, "WSTrust Mex response received: %{public}@", v5, v6, v7, v8);
}

void __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_8();
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  v2 = OUTLINED_FUNCTION_14(v0, v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25E8B1000, v3, v4, "WSTrust login response received: %{private}@", v5, v6, v7, v8);
}

void __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_361_cold_1()
{
  OUTLINED_FUNCTION_4();
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:*(v0 + 32)];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25E8B1000, v2, v3, "%{public}@, %{public}@", v4, v5, v6, v7);
}

void __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_392_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)createNonceRequestWithContext:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_8();
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  v2 = OUTLINED_FUNCTION_14(v0, v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25E8B1000, v3, v4, "server nonce response received: %{public}@", v5, v6, v7, v8);
}

void __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_8();
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  v2 = OUTLINED_FUNCTION_14(v0, v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25E8B1000, v3, v4, "login response received: %{public}@", v5, v6, v7, v8);
}

- (void)retrieveSigningKeyWithContext:keyId:completion:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_670_cold_1()
{
  OUTLINED_FUNCTION_8();
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  v2 = OUTLINED_FUNCTION_14(v0, v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25E8B1000, v3, v4, "jwks response received: %{public}@", v5, v6, v7, v8);
}

- (void)validateIdToken:context:key:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  v1 = [*(v0 + 32) decodedHeader];
  v2 = [v1 alg];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25E8B1000, v3, v4, "%{public}@, %{public}@", v5, v6, v7, v8);
}

void __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_941_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1012_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_8();
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  v2 = OUTLINED_FUNCTION_14(v0, v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25E8B1000, v3, v4, "Key response received: %{public}@", v5, v6, v7, v8);
}

void __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_8();
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  v2 = OUTLINED_FUNCTION_14(v0, v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25E8B1000, v3, v4, "Key Exchange response received: %{public}@", v5, v6, v7, v8);
}

- (void)URLSession:didReceiveChallenge:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)URLSession:didReceiveChallenge:completionHandler:.cold.5()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)URLSession:(void *)a1 task:willPerformHTTPRedirection:newRequest:completionHandler:.cold.1(void *a1)
{
  v1 = [a1 URL];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25E8B1000, v2, v3, "HTTP Redirect received to %{public}@, canceling", v4, v5, v6, v7);
}

- (void)URLSession:(void *)a1 taskIsWaitingForConnectivity:.cold.1(void *a1)
{
  v1 = [a1 taskDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25E8B1000, v2, v3, "%{public}@, is waiting for connectivity", v4, v5, v6, v7);
}

@end