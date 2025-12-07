@interface WebUICertificateError
+ (BOOL)userAllowsCertificateTrust:(__SecTrust *)trust host:(id)host;
@end

@implementation WebUICertificateError

+ (BOOL)userAllowsCertificateTrust:(__SecTrust *)trust host:(id)host
{
  v28[2] = *MEMORY[0x277D85DE8];
  hostCopy = host;
  defaultTrustManager = [MEMORY[0x277CF9710] defaultTrustManager];
  v7 = *MEMORY[0x277CF9718];
  v8 = [defaultTrustManager actionForSSLTrust:trust hostname:hostCopy service:*MEMORY[0x277CF9718]];
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = 1;
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x277CF9708]);
      [v10 setTrust:trust];
      _webkit_decodeHostName = [hostCopy _webkit_decodeHostName];
      [v10 setHost:_webkit_decodeHostName];

      [v10 setService:v7];
      if ([off_279EB0F30 certificateWarningCannotBeBypassedForTrust:trust])
      {
        v12 = *MEMORY[0x277CF9738];
        v27[0] = *MEMORY[0x277CF9740];
        v27[1] = v12;
        v28[0] = MEMORY[0x277CBEC28];
        v28[1] = MEMORY[0x277CBEC28];
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
      }

      else
      {
        v13 = 0;
      }

      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v26 = 0;
      v14 = dispatch_semaphore_create(0);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __57__WebUICertificateError_userAllowsCertificateTrust_host___block_invoke;
      v17[3] = &unk_279EB14C0;
      v18 = defaultTrustManager;
      trustCopy = trust;
      v19 = hostCopy;
      v21 = &v23;
      v15 = v14;
      v20 = v15;
      [v10 showPromptWithOptions:v13 responseBlock:v17];
      dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
      v9 = *(v24 + 24);

      _Block_object_dispose(&v23, 8);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

intptr_t __57__WebUICertificateError_userAllowsCertificateTrust_host___block_invoke(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    [*(a1 + 32) allowTrust:*(a1 + 64) forHost:*(a1 + 40) service:*MEMORY[0x277CF9718]];
  }

  *(*(*(a1 + 56) + 8) + 24) = (a2 - 1) < 2;
  v4 = *(a1 + 48);

  return dispatch_semaphore_signal(v4);
}

@end