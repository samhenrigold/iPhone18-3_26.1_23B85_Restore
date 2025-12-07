@interface PinnedUrlDelegate
- (PinnedUrlDelegate)initWithHost:(id)host;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
@end

@implementation PinnedUrlDelegate

- (PinnedUrlDelegate)initWithHost:(id)host
{
  hostCopy = host;
  v9.receiver = self;
  v9.super_class = PinnedUrlDelegate;
  v6 = [(PinnedUrlDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->m_host, host);
  }

  return v7;
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  challengeCopy = challenge;
  handlerCopy = handler;
  if (os_variant_allows_internal_security_policies())
  {
    v10 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DeviceCheck"];
    if ([v10 BOOLForKey:@"AAADisablePinning"])
    {
      if (AAInternalLogSystem_onceToken_1 != -1)
      {
        [PinnedUrlDelegate URLSession:didReceiveChallenge:completionHandler:];
      }

      v11 = AAInternalLogSystem_log_1;
      if (os_log_type_enabled(AAInternalLogSystem_log_1, OS_LOG_TYPE_DEBUG))
      {
        v12 = 0;
        v13 = 0;
        v14 = 47;
        do
        {
          v15 = &aLibraryCachesC_1[v12];
          if (v14 == 47)
          {
            v13 = &aLibraryCachesC_1[v12];
          }

          v14 = v15[1];
          if (!v15[1])
          {
            break;
          }

          v16 = v12++ >= 0xFFF;
        }

        while (!v16);
        if (v13)
        {
          v17 = v13 + 1;
        }

        else
        {
          v17 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/support/AnonymousAttestation.m";
        }

        *buf = 136315394;
        v35 = v17;
        v36 = 1024;
        v37 = 64;
        _os_log_impl(&dword_226177000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Pinning disabled.", buf, 0x12u);
      }

      handlerCopy[2](handlerCopy, 1, 0);
      goto LABEL_17;
    }
  }

  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v20 = [authenticationMethod isEqualToString:*MEMORY[0x277CCA720]];

  if (!v20)
  {
    handlerCopy[2](handlerCopy, 1, 0);
    goto LABEL_40;
  }

  AppleSSLPinned = SecPolicyCreateAppleSSLPinned();
  if (!AppleSSLPinned || (v22 = AppleSSLPinned, [challengeCopy protectionSpace], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "serverTrust"), v23, LODWORD(v23) = SecTrustSetPolicies(v24, v22), CFRelease(v22), v23))
  {
LABEL_39:
    handlerCopy[2](handlerCopy, 2, 0);
    goto LABEL_40;
  }

  error = 0;
  if (!SecTrustEvaluateWithError(v24, &error))
  {
    if (AAInternalLogSystem_onceToken_1 != -1)
    {
      [PinnedUrlDelegate URLSession:didReceiveChallenge:completionHandler:];
    }

    v25 = AAInternalLogSystem_log_1;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = 0;
      v27 = 0;
      v28 = 47;
      do
      {
        v29 = &aLibraryCachesC_1[v26];
        if (v28 == 47)
        {
          v27 = &aLibraryCachesC_1[v26];
        }

        v28 = v29[1];
        if (!v29[1])
        {
          break;
        }

        v16 = v26++ >= 0xFFF;
      }

      while (!v16);
      if (v27)
      {
        v30 = v27 + 1;
      }

      else
      {
        v30 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/support/AnonymousAttestation.m";
      }

      v31 = CFErrorCopyDescription(error);
      *buf = 136315650;
      v35 = v30;
      v36 = 1024;
      v37 = 91;
      v38 = 2112;
      v39 = v31;
      v32 = v31;
      _os_log_impl(&dword_226177000, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d Pinning check failed. { error=%@ }", buf, 0x1Cu);
    }

    goto LABEL_39;
  }

  v10 = [MEMORY[0x277CCACF0] credentialForTrust:v24];
  (handlerCopy)[2](handlerCopy, 0, v10);
LABEL_17:

LABEL_40:
}

@end