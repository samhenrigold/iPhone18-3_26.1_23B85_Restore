@interface IMAVSecureKeyLoader
- (BOOL)_isOfflineAsset;
- (IMAVSecureKeyLoader)initWithRecipient:(id)recipient useCase:(unint64_t)case account:(id)account urlProtocolDelegate:(id)delegate;
- (IMAVSecureKeyLoaderDelegate)delegate;
- (void)cleanupAfterContentKeyRequestForOfflineRenewal:(BOOL)renewal withError:(id)error;
- (void)contentKeySession:(id)session contentKeyRequest:(id)request didFailWithError:(id)error;
- (void)contentKeySession:(id)session contentKeyRequestDidSucceed:(id)succeed;
- (void)contentKeySession:(id)session didProvideContentKeyRequest:(id)request;
- (void)contentKeySession:(id)session didProvidePersistableContentKeyRequest:(id)request;
- (void)contentKeySession:(id)session didProvideRenewingContentKeyRequest:(id)request;
- (void)finishContentKeyRequest:(id)request forOfflineRenewal:(BOOL)renewal withResponse:(id)response;
- (void)invalidateAndCancel;
- (void)requestKeyResponseFromContentKeyRequest:(id)request requestType:(int64_t)type completion:(id)completion;
- (void)securelyInvalidateOfflineDataForRequests:(id)requests completion:(id)completion;
- (void)sendStopRequestForStreamingLicenseIfNecessary;
- (void)startKeyLoadingProcessWithKeyIdentifier:(id)identifier contentAdamId:(id)id isRenewal:(BOOL)renewal completion:(id)completion;
- (void)startKeyLoadingProcessWithKeyRequestData:(id)data isRenewal:(BOOL)renewal completion:(id)completion;
- (void)timeoutKeyRequest;
@end

@implementation IMAVSecureKeyLoader

- (IMAVSecureKeyLoader)initWithRecipient:(id)recipient useCase:(unint64_t)case account:(id)account urlProtocolDelegate:(id)delegate
{
  recipientCopy = recipient;
  accountCopy = account;
  delegateCopy = delegate;
  v23.receiver = self;
  v23.super_class = IMAVSecureKeyLoader;
  v13 = [(IMAVSecureKeyLoader *)&v23 init];
  if (v13)
  {
    if (initWithRecipient_useCase_account_urlProtocolDelegate__onceToken != -1)
    {
      [IMAVSecureKeyLoader initWithRecipient:useCase:account:urlProtocolDelegate:];
    }

    if (case == 1)
    {
      v14 = dispatch_queue_create("IMAVSecureKeyLoader.Download", 0);
      [(IMAVSecureKeyLoader *)v13 setKeyLoaderQueue:v14];
    }

    else
    {
      v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
      v15 = dispatch_queue_create("IMAVSecureKeyLoader", v14);
      [(IMAVSecureKeyLoader *)v13 setKeyLoaderQueue:v15];
    }

    [(IMAVSecureKeyLoader *)v13 setRecipient:recipientCopy];
    [(IMAVSecureKeyLoader *)v13 setAccount:accountCopy];
    v16 = objc_alloc_init(MTStandardKeyRequestHandler);
    if (delegateCopy)
    {
      [(IMAVSecureKeyLoader *)v13 setUrlProtocolDelegate:delegateCopy];
      urlProtocolDelegate = [(IMAVSecureKeyLoader *)v13 urlProtocolDelegate];
      [(IMBaseStoreService *)v16 setURLProtocolDelegate:urlProtocolDelegate];
    }

    [(IMAVSecureKeyLoader *)v13 setSecureKeyRequestHandler:v16];
    v18 = objc_alloc_init(MTCoreDataKeyRequestStorage);
    [(IMAVSecureKeyLoader *)v13 setSecureKeyRequestStorage:v18];

    [(IMAVSecureKeyLoader *)v13 setUseCase:case];
    v19 = [MEMORY[0x1E6987F70] contentKeySessionWithKeySystem:*MEMORY[0x1E69873B0]];
    [(IMAVSecureKeyLoader *)v13 setContentKeySession:v19];

    contentKeySession = [(IMAVSecureKeyLoader *)v13 contentKeySession];
    keyLoaderQueue = [(IMAVSecureKeyLoader *)v13 keyLoaderQueue];
    [contentKeySession setDelegate:v13 queue:keyLoaderQueue];
  }

  return v13;
}

uint64_t __77__IMAVSecureKeyLoader_initWithRecipient_useCase_account_urlProtocolDelegate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v1 = __pendingStopNonceRequestAdamIds;
  __pendingStopNonceRequestAdamIds = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)startKeyLoadingProcessWithKeyRequestData:(id)data isRenewal:(BOOL)renewal completion:(id)completion
{
  renewalCopy = renewal;
  completionCopy = completion;
  dataCopy = data;
  keyIdentifier = [dataCopy keyIdentifier];
  contentAdamId = [dataCopy contentAdamId];

  [(IMAVSecureKeyLoader *)self startKeyLoadingProcessWithKeyIdentifier:keyIdentifier contentAdamId:contentAdamId isRenewal:renewalCopy completion:completionCopy];
}

- (void)startKeyLoadingProcessWithKeyIdentifier:(id)identifier contentAdamId:(id)id isRenewal:(BOOL)renewal completion:(id)completion
{
  renewalCopy = renewal;
  v38 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  idCopy = id;
  completionCopy = completion;
  v14 = _MTLogCategoryDRM();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = identifierCopy;
    v34 = 2112;
    v35 = idCopy;
    _os_log_impl(&dword_1D8CEC000, v14, OS_LOG_TYPE_DEFAULT, "[Key Loading Process] for key: %@, content adam id: %@.", buf, 0x16u);
  }

  contentAdamId = [(IMAVSecureKeyLoader *)self contentAdamId];
  if (contentAdamId)
  {
    contentAdamId2 = [(IMAVSecureKeyLoader *)self contentAdamId];
    if (([contentAdamId2 isEqualToString:idCopy] & 1) == 0)
    {

LABEL_9:
      v17 = _MTLogCategoryDRM();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        contentAdamId3 = [(IMAVSecureKeyLoader *)self contentAdamId];
        *buf = 138412802;
        v33 = identifierCopy;
        v34 = 2112;
        v35 = idCopy;
        v36 = 2112;
        v37 = contentAdamId3;
        _os_log_impl(&dword_1D8CEC000, v17, OS_LOG_TYPE_ERROR, "[Key Loading Process] Fail to start key: %@, content adam id: %@. Another request is in progress for content adam id: %@.", buf, 0x20u);
      }

      v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMAVSecureKeyLoaderErrorDomain" code:-383006 userInfo:0];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, v19);
      }

      v20 = _MTLogCategoryDRM();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        [IMAVSecureKeyLoader startKeyLoadingProcessWithKeyIdentifier:v20 contentAdamId:? isRenewal:? completion:?];
      }

      goto LABEL_21;
    }
  }

  pendingCompletion = [(IMAVSecureKeyLoader *)self pendingCompletion];

  if (contentAdamId)
  {
  }

  if (pendingCompletion)
  {
    goto LABEL_9;
  }

  [(IMAVSecureKeyLoader *)self setContentAdamId:idCopy];
  [(IMAVSecureKeyLoader *)self setIsRenewal:renewalCopy];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__IMAVSecureKeyLoader_startKeyLoadingProcessWithKeyIdentifier_contentAdamId_isRenewal_completion___block_invoke;
  block[3] = &unk_1E8568E28;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  recipient = [(IMAVSecureKeyLoader *)self recipient];

  if (recipient)
  {
    v22 = _MTLogCategoryDRM();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      recipient2 = [(IMAVSecureKeyLoader *)self recipient];
      contentAdamId4 = [(IMAVSecureKeyLoader *)self contentAdamId];
      *buf = 138412802;
      v33 = recipient2;
      v34 = 2112;
      v35 = identifierCopy;
      v36 = 2112;
      v37 = contentAdamId4;
      _os_log_impl(&dword_1D8CEC000, v22, OS_LOG_TYPE_DEFAULT, "[Key Loading Process] Add recipient %@ key: %@, content adam id: %@.", buf, 0x20u);
    }

    contentKeySession = [(IMAVSecureKeyLoader *)self contentKeySession];
    recipient3 = [(IMAVSecureKeyLoader *)self recipient];
    [contentKeySession addContentKeyRecipient:recipient3];
  }

  keyLoaderQueue = [(IMAVSecureKeyLoader *)self keyLoaderQueue];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __98__IMAVSecureKeyLoader_startKeyLoadingProcessWithKeyIdentifier_contentAdamId_isRenewal_completion___block_invoke_53;
  v28[3] = &unk_1E8568FF8;
  v28[4] = self;
  v30 = completionCopy;
  v29 = identifierCopy;
  dispatch_async(keyLoaderQueue, v28);

LABEL_21:
}

void __98__IMAVSecureKeyLoader_startKeyLoadingProcessWithKeyIdentifier_contentAdamId_isRenewal_completion___block_invoke_53(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setPendingCompletion:*(a1 + 48)];
  if ([*(a1 + 40) length])
  {
    v2 = _MTLogCategoryDRM();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = [*(a1 + 32) contentAdamId];
      *buf = 138412546;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1D8CEC000, v2, OS_LOG_TYPE_DEFAULT, "[Key Loading Process] Pre-loading key: %@, content adam id: %@.", buf, 0x16u);
    }

    v5 = [*(a1 + 32) contentKeySession];
    [v5 processContentKeyRequestWithIdentifier:*(a1 + 40) initializationData:0 options:0];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__IMAVSecureKeyLoader_startKeyLoadingProcessWithKeyIdentifier_contentAdamId_isRenewal_completion___block_invoke_54;
  block[3] = &unk_1E8568E28;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)sendStopRequestForStreamingLicenseIfNecessary
{
  if (![(IMAVSecureKeyLoader *)self _isOfflineAsset])
  {
    keyLoaderQueue = [(IMAVSecureKeyLoader *)self keyLoaderQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__IMAVSecureKeyLoader_sendStopRequestForStreamingLicenseIfNecessary__block_invoke;
    block[3] = &unk_1E8568E28;
    block[4] = self;
    dispatch_async(keyLoaderQueue, block);
  }
}

void __68__IMAVSecureKeyLoader_sendStopRequestForStreamingLicenseIfNecessary__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) contentKeySession];
  v3 = [*(a1 + 32) recipient];
  [v2 removeContentKeyRecipient:v3];

  v4 = _MTLogCategoryDRM();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [*(a1 + 32) recipient];
    v6 = [v5 URL];
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_1D8CEC000, v4, OS_LOG_TYPE_ERROR, "Removing content key recipient for URL: %@", buf, 0xCu);
  }

  v7 = [*(a1 + 32) savedRequestToUseForStopping];
  if (v7)
  {
    v8 = v7;
    v9 = [*(a1 + 32) savedRequestDataToUseForStopping];

    if (v9)
    {
      v10 = [*(a1 + 32) savedRequestToUseForStopping];
      v11 = [v10 copyWith:2];

      v12 = [*(a1 + 32) secureKeyRequestHandler];
      v17 = v11;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
      v14 = [*(a1 + 32) account];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __68__IMAVSecureKeyLoader_sendStopRequestForStreamingLicenseIfNecessary__block_invoke_56;
      v16[3] = &unk_1E8569020;
      v16[4] = *(a1 + 32);
      [v12 loadKeyDataFor:v13 account:v14 completion:v16];

LABEL_8:
      goto LABEL_9;
    }
  }

  v11 = _MTLogCategoryDRM();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = [*(a1 + 32) recipient];
    v13 = [v12 URL];
    v15 = [*(a1 + 32) contentAdamId];
    *buf = 138412546;
    v19 = v13;
    v20 = 2112;
    v21 = v15;
    _os_log_impl(&dword_1D8CEC000, v11, OS_LOG_TYPE_ERROR, "Failed to send stop request because a start request was never made. URL: %@ Content ID %@", buf, 0x16u);

    goto LABEL_8;
  }

LABEL_9:
}

void __68__IMAVSecureKeyLoader_sendStopRequestForStreamingLicenseIfNecessary__block_invoke_56(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [a2 firstObject];
  v4 = [v3 error];

  if (v4)
  {
    v5 = _MTLogCategoryDRM();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) recipient];
      v7 = [v6 URL];
      v8 = [*(a1 + 32) contentAdamId];
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_1D8CEC000, v5, OS_LOG_TYPE_ERROR, "Stop request failed with error %@ for Content ID %@", &v9, 0x16u);
    }
  }
}

- (void)securelyInvalidateOfflineDataForRequests:(id)requests completion:(id)completion
{
  requestsCopy = requests;
  completionCopy = completion;
  if ([(IMAVSecureKeyLoader *)self useCase]!= 1)
  {
    [IMAVSecureKeyLoader securelyInvalidateOfflineDataForRequests:completion:];
  }

  keyLoaderQueue = [(IMAVSecureKeyLoader *)self keyLoaderQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__IMAVSecureKeyLoader_securelyInvalidateOfflineDataForRequests_completion___block_invoke;
  block[3] = &unk_1E85690E8;
  v12 = requestsCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = requestsCopy;
  dispatch_async(keyLoaderQueue, block);
}

void __75__IMAVSecureKeyLoader_securelyInvalidateOfflineDataForRequests_completion___block_invoke(uint64_t a1)
{
  v1 = a1;
  v58 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v3 = dispatch_group_create();
  v4 = [*(v1 + 32) count];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    *&v5 = 138412290;
    v36 = v5;
    v38 = v2;
    v39 = v1;
    v37 = v3;
    do
    {
      v42 = v6;
      if (v6 >= 0xA)
      {
        v8 = 10;
      }

      else
      {
        v8 = v6;
      }

      v43 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(v1 + 32), "count")}];
      v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v40 = v8;
      v41 = v7;
      v9 = [*(v1 + 32) subarrayWithRange:{v7, v8}];
      dispatch_group_enter(v3);
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      obj = v9;
      v10 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v52;
        do
        {
          v13 = 0;
          do
          {
            if (*v52 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v51 + 1) + 8 * v13);
            v15 = [MTContentKeyRequest alloc];
            v16 = [v14 keyIdentifier];
            v17 = [v14 contentAdamId];
            v18 = [v14 secureInvalidationDsid];
            v19 = [(MTContentKeyRequest *)v15 initWithKeyIdentifier:v16 adamId:v17 requestType:3 offlineRequest:1 secureInvalidationDsid:v18];

            v20 = [v14 contentAdamId];
            if (v20)
            {
              v21 = v20;
              v22 = [v14 keyData];

              if (v22)
              {
                v23 = [v14 keyData];
                v24 = [v14 contentAdamId];
                [v43 setObject:v23 forKeyedSubscript:v24];
              }
            }

            v25 = __pendingStopNonceRequestAdamIds;
            v26 = [(MTContentKeyRequest *)v19 adamId];
            LOBYTE(v25) = [v25 containsObject:v26];

            if ((v25 & 1) == 0)
            {
              [v44 addObject:v19];
              v27 = __pendingStopNonceRequestAdamIds;
              v28 = [(MTContentKeyRequest *)v19 adamId];
              [v27 addObject:v28];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
        }

        while (v11);
      }

      v29 = _MTLogCategoryDRM();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v36;
        v56 = __pendingStopNonceRequestAdamIds;
        _os_log_impl(&dword_1D8CEC000, v29, OS_LOG_TYPE_DEFAULT, "Pending stop nonce requests: %@", buf, 0xCu);
      }

      v1 = v39;
      v30 = [*(v39 + 40) secureKeyRequestHandler];
      v31 = [*(v39 + 40) account];
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __75__IMAVSecureKeyLoader_securelyInvalidateOfflineDataForRequests_completion___block_invoke_63;
      v46[3] = &unk_1E85690C0;
      v46[4] = *(v39 + 40);
      v47 = v44;
      v2 = v38;
      v48 = v38;
      v49 = v43;
      v3 = v37;
      v50 = v37;
      v32 = v43;
      v33 = v44;
      [v30 loadKeyDataFor:v33 account:v31 completion:v46];

      v6 = v42 - v40;
      v7 = v40 + v41;
    }

    while (v42 != v40);
  }

  v34 = dispatch_time(0, 60000000000);
  dispatch_group_wait(v3, v34);
  v35 = *(v1 + 48);
  if (v35)
  {
    (*(v35 + 16))(v35, v2);
  }
}

void __75__IMAVSecureKeyLoader_securelyInvalidateOfflineDataForRequests_completion___block_invoke_63(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] keyLoaderQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__IMAVSecureKeyLoader_securelyInvalidateOfflineDataForRequests_completion___block_invoke_2;
  v8[3] = &unk_1E8569098;
  v9 = a1[5];
  v10 = v3;
  v11 = a1[6];
  v5 = a1[7];
  v6 = a1[4];
  v12 = v5;
  v13 = v6;
  v14 = a1[8];
  v7 = v3;
  dispatch_async(v4, v8);
}

void __75__IMAVSecureKeyLoader_securelyInvalidateOfflineDataForRequests_completion___block_invoke_2(uint64_t a1)
{
  v76 = *MEMORY[0x1E69E9840];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v64 objects:v75 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v65;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v65 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = __pendingStopNonceRequestAdamIds;
        v7 = [*(*(&v64 + 1) + 8 * i) adamId];
        [v6 removeObject:v7];
      }

      v3 = [v1 countByEnumeratingWithState:&v64 objects:v75 count:16];
    }

    while (v3);
  }

  v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
  group = dispatch_group_create();
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v8 = a1;
  v9 = *(a1 + 40);
  v10 = [v9 countByEnumeratingWithState:&v60 objects:v74 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v61;
    v48 = *MEMORY[0x1E69873A8];
    *&v11 = 138412546;
    v46 = v11;
    v49 = *v61;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v61 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v60 + 1) + 8 * j);
        v16 = [v15 error];

        if (v16)
        {
          v17 = [v15 request];
          v18 = [v17 adamId];

          if (!v18)
          {
            continue;
          }

          v19 = *(v8 + 48);
          v20 = [v15 error];
          v21 = [v15 request];
          v22 = [v21 adamId];
          [v19 setObject:v20 forKey:v22];
        }

        else
        {
          v23 = *(v8 + 56);
          v24 = [v15 request];
          v25 = [v24 adamId];
          v20 = [v23 objectForKey:v25];

          if (v20)
          {
            v26 = v9;
            v27 = _MTLogCategoryDRM();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = [v15 keyData];
              v29 = [v28 base64EncodedStringWithOptions:0];
              v30 = [v15 request];
              v31 = [v30 adamId];
              *buf = v46;
              v71 = v29;
              v72 = 2112;
              v73 = v31;
              _os_log_impl(&dword_1D8CEC000, v27, OS_LOG_TYPE_DEFAULT, "Stop request sending nonce data %@ for adam id %@", buf, 0x16u);

              v8 = a1;
            }

            v32 = [v15 keyData];
            if (v32)
            {
              v68 = v48;
              v33 = [v15 keyData];
              v69 = v33;
              v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
            }

            else
            {
              v21 = 0;
            }

            dispatch_group_enter(group);
            v39 = [*(v8 + 64) contentKeySession];
            v56[0] = MEMORY[0x1E69E9820];
            v56[1] = 3221225472;
            v56[2] = __75__IMAVSecureKeyLoader_securelyInvalidateOfflineDataForRequests_completion___block_invoke_65;
            v56[3] = &unk_1E8569048;
            v56[4] = v15;
            v57 = *(v8 + 48);
            v58 = group;
            v59 = v51;
            [v39 invalidatePersistableContentKey:v20 options:v21 completionHandler:v56];

            v9 = v26;
            v13 = v49;
          }

          else
          {
            v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMAVSecureKeyLoaderErrorDomain" code:-383005 userInfo:0];
            v34 = [v15 request];
            v35 = [v34 adamId];

            if (v35)
            {
              v36 = *(v8 + 48);
              v37 = [v15 request];
              v38 = [v37 adamId];
              [v36 setObject:v21 forKey:v38];
            }
          }
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v60 objects:v74 count:16];
    }

    while (v12);
  }

  v40 = dispatch_time(0, 30000000000);
  dispatch_group_wait(group, v40);
  v41 = [*(v8 + 64) secureKeyRequestHandler];
  v42 = [*(v8 + 64) account];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __75__IMAVSecureKeyLoader_securelyInvalidateOfflineDataForRequests_completion___block_invoke_2_67;
  v52[3] = &unk_1E8569070;
  v43 = *(v8 + 48);
  v44 = *(v8 + 64);
  v45 = *(v8 + 72);
  v53 = v43;
  v54 = v44;
  v55 = v45;
  [v41 loadKeyDataFor:v51 account:v42 completion:v52];
}

void __75__IMAVSecureKeyLoader_securelyInvalidateOfflineDataForRequests_completion___block_invoke_65(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 32) request];
    v7 = [v6 adamId];

    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) request];
      v10 = [v9 adamId];
      [v8 setObject:v5 forKey:v10];
    }

    dispatch_group_leave(*(a1 + 48));
  }

  else
  {
    v11 = [MTContentKeyRequest alloc];
    v12 = [*(a1 + 32) request];
    v13 = [v12 keyIdentifier];
    v14 = [*(a1 + 32) request];
    v15 = [v14 adamId];
    v16 = [*(a1 + 32) request];
    v17 = [v16 secureInvalidationDsid];
    v18 = [(MTContentKeyRequest *)v11 initWithKeyIdentifier:v13 adamId:v15 requestType:2 offlineRequest:1 secureInvalidationDsid:v17];

    [(MTContentKeyRequest *)v18 setRequestData:v19];
    [*(a1 + 56) addObject:v18];
    dispatch_group_leave(*(a1 + 48));
  }
}

void __75__IMAVSecureKeyLoader_securelyInvalidateOfflineDataForRequests_completion___block_invoke_2_67(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v26;
    *&v5 = 138412546;
    v24 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [v9 error];
        if (!v10)
        {
          goto LABEL_12;
        }

        v11 = v10;
        v12 = [v9 error];
        if ([v12 code] == -1002)
        {

LABEL_12:
          v19 = [*(a1 + 40) secureKeyRequestStorage];
          [v19 removeKeyDataFor:v9];
          goto LABEL_13;
        }

        v13 = [v9 request];
        v14 = [v13 adamId];

        if (!v14)
        {
          goto LABEL_12;
        }

        v15 = *(a1 + 32);
        v16 = [v9 error];
        v17 = [v9 request];
        v18 = [v17 adamId];
        [v15 setObject:v16 forKey:v18];

        v19 = _MTLogCategoryDRM();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = [v9 error];
          v21 = [v20 localizedDescription];
          v22 = [v9 request];
          v23 = [v22 adamId];
          *buf = v24;
          v30 = v21;
          v31 = 2112;
          v32 = v23;
          _os_log_impl(&dword_1D8CEC000, v19, OS_LOG_TYPE_ERROR, "Stop request failed with error %@ for adam id %@", buf, 0x16u);
        }

LABEL_13:
      }

      v6 = [v3 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v6);
  }

  dispatch_group_leave(*(a1 + 48));
}

- (void)invalidateAndCancel
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = _MTLogCategoryDRM();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    recipient = [(IMAVSecureKeyLoader *)self recipient];
    v5 = [recipient URL];
    absoluteString = [v5 absoluteString];
    v9 = 138412290;
    v10 = absoluteString;
    _os_log_impl(&dword_1D8CEC000, v3, OS_LOG_TYPE_DEFAULT, "Invalidate and cancel for %@", &v9, 0xCu);
  }

  contentKeySession = [(IMAVSecureKeyLoader *)self contentKeySession];
  recipient2 = [(IMAVSecureKeyLoader *)self recipient];
  [contentKeySession removeContentKeyRecipient:recipient2];

  [(IMAVSecureKeyLoader *)self setContentKeySession:0];
}

- (void)requestKeyResponseFromContentKeyRequest:(id)request requestType:(int64_t)type completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  identifier = [requestCopy identifier];
  contentKeySession = [(IMAVSecureKeyLoader *)self contentKeySession];

  v12 = _MTLogCategoryDRM();
  v13 = v12;
  if (contentKeySession)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [requestCopy identifier];
      *buf = 138412546;
      v25 = identifier2;
      v26 = 2048;
      typeCopy3 = type;
      _os_log_impl(&dword_1D8CEC000, v13, OS_LOG_TYPE_DEFAULT, "[Request Key Response] for %@. Request type %ld", buf, 0x16u);
    }

    if (!completionCopy)
    {
      [IMAVSecureKeyLoader requestKeyResponseFromContentKeyRequest:requestType:completion:];
    }

    keyLoaderQueue = [(IMAVSecureKeyLoader *)self keyLoaderQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__IMAVSecureKeyLoader_requestKeyResponseFromContentKeyRequest_requestType_completion___block_invoke;
    block[3] = &unk_1E8569200;
    v19 = requestCopy;
    selfCopy = self;
    typeCopy2 = type;
    v22 = completionCopy;
    v21 = identifier;
    dispatch_async(keyLoaderQueue, block);

    v16 = v19;
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      identifier3 = [requestCopy identifier];
      *buf = 138412546;
      v25 = identifier3;
      v26 = 2048;
      typeCopy3 = type;
      _os_log_impl(&dword_1D8CEC000, v13, OS_LOG_TYPE_ERROR, "[Request Key Response] Failed for %@. Request type %ld. ContentKeySession is nil.", buf, 0x16u);
    }

    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMAVSecureKeyLoaderErrorDomain" code:-383006 userInfo:0];
    [(IMAVSecureKeyLoader *)self cleanupAfterContentKeyRequestWithError:v16];
  }
}

void __86__IMAVSecureKeyLoader_requestKeyResponseFromContentKeyRequest_requestType_completion___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) identifier];
  v3 = [v2 dataUsingEncoding:4];

  v4 = ([*(a1 + 40) _isOfflineAsset] & 1) != 0 || objc_msgSend(*(a1 + 40), "useCase") == 1;
  v5 = [MTContentKeyRequest alloc];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) contentAdamId];
  v8 = [(MTContentKeyRequest *)v5 initFrom:v6 adamId:v7 requestType:*(a1 + 64) offlineRequest:v4];

  if ([*(a1 + 40) _isOfflineAsset] && !objc_msgSend(*(a1 + 40), "useCase"))
  {
    v17 = _MTLogCategoryDRM();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*(a1 + 32) identifier];
      v19 = [*(a1 + 40) contentAdamId];
      *buf = 138412546;
      v32 = v18;
      v33 = 2112;
      v34 = v19;
      _os_log_impl(&dword_1D8CEC000, v17, OS_LOG_TYPE_DEFAULT, "[Request Key Response] offline key %@ content adam id %@", buf, 0x16u);
    }

    v20 = [*(a1 + 40) secureKeyRequestStorage];
    v21 = [v20 retrieveKeyDataFor:v8];

    if (v21)
    {
      (*(*(a1 + 56) + 16))();

      goto LABEL_11;
    }

    v22 = _MTLogCategoryDRM();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8CEC000, v22, OS_LOG_TYPE_DEFAULT, "[Request Key Response] offline key should be local, but is missing. This will be reported, but we will attempt to recover.", buf, 2u);
    }

    +[_TtC18PodcastsFoundation19PFBugReporterBridge reportMissingFairPlayOfflineKey];
  }

  if ([*(a1 + 40) _isOfflineAsset])
  {
    if ([*(a1 + 40) useCase] == 1)
    {
      v9 = [*(a1 + 40) secureKeyRequestStorage];
      v10 = [v8 adamId];
      v11 = [v9 keyExistsInStorageFor:{objc_msgSend(v10, "longLongValue")}];

      if (v11)
      {
        v12 = [*(a1 + 40) secureKeyRequestStorage];
        v13 = [v8 adamId];
        [v12 markOfflineKeyFor:objc_msgSend(v13 pendingDeletion:{"longLongValue"), 0}];
      }
    }
  }

  v14 = [*(a1 + 40) secureKeyRequestHandler];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __86__IMAVSecureKeyLoader_requestKeyResponseFromContentKeyRequest_requestType_completion___block_invoke_70;
  v23[3] = &unk_1E85691D8;
  v23[4] = *(a1 + 40);
  v24 = v3;
  v25 = *(a1 + 32);
  v26 = v8;
  v28 = *(a1 + 56);
  v15 = *(a1 + 48);
  v16 = *(a1 + 64);
  v27 = v15;
  v29 = v16;
  v30 = v4;
  [v14 loadCertificateDataWithCompletion:v23];

LABEL_11:
}

void __86__IMAVSecureKeyLoader_requestKeyResponseFromContentKeyRequest_requestType_completion___block_invoke_70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) keyLoaderQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__IMAVSecureKeyLoader_requestKeyResponseFromContentKeyRequest_requestType_completion___block_invoke_2;
  block[3] = &unk_1E85691B0;
  v14 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v18 = *(a1 + 72);
  *&v8 = v7;
  *(&v8 + 1) = *(a1 + 32);
  *&v9 = v5;
  *(&v9 + 1) = v6;
  v15 = v9;
  v16 = v8;
  v10 = *(a1 + 64);
  v11 = *(a1 + 80);
  v17 = v10;
  v19 = v11;
  v20 = *(a1 + 88);
  v12 = v3;
  dispatch_async(v4, block);
}

void __86__IMAVSecureKeyLoader_requestKeyResponseFromContentKeyRequest_requestType_completion___block_invoke_2(uint64_t a1)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) keyData];
  v3 = [*(a1 + 32) error];
  if (v2 && *(a1 + 40))
  {
    if ([*(a1 + 48) status] != 5 && objc_msgSend(*(a1 + 48), "status") != 4)
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __86__IMAVSecureKeyLoader_requestKeyResponseFromContentKeyRequest_requestType_completion___block_invoke_3;
      v17[3] = &unk_1E8569188;
      v16 = *(a1 + 56);
      v13 = v16.i64[0];
      v18 = vextq_s8(v16, v16, 8uLL);
      v21 = *(a1 + 80);
      v14 = *(a1 + 72);
      v15 = *(a1 + 88);
      v19 = v14;
      v22 = v15;
      v20 = *(a1 + 48);
      v23 = *(a1 + 96);
      [v12 makeStreamingContentKeyRequestDataForApp:v2 contentIdentifier:v11 options:0 completionHandler:v17];

      goto LABEL_12;
    }

    v4 = [*(a1 + 48) error];

    if (v4)
    {
      v24 = *MEMORY[0x1E696AA08];
      v5 = [*(a1 + 48) error];
      v25[0] = v5;
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    }

    v6 = MEMORY[0x1E696ABC0];
    v7 = -383003;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    v4 = v8;
    if (v3)
    {
      [v8 setObject:v3 forKey:*MEMORY[0x1E696AA08]];
    }

    v6 = MEMORY[0x1E696ABC0];
    v7 = -383001;
  }

  v9 = [v6 errorWithDomain:@"IMAVSecureKeyLoaderErrorDomain" code:v7 userInfo:v4];
  v10 = [[MTContentKeyResponse alloc] initWithRequest:*(a1 + 56) error:v9];
  (*(*(a1 + 80) + 16))();

LABEL_12:
}

void __86__IMAVSecureKeyLoader_requestKeyResponseFromContentKeyRequest_requestType_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) keyLoaderQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__IMAVSecureKeyLoader_requestKeyResponseFromContentKeyRequest_requestType_completion___block_invoke_4;
  block[3] = &unk_1E8569160;
  v13 = v6;
  v14 = *(a1 + 40);
  v19 = *(a1 + 64);
  v15 = v5;
  v8 = *(a1 + 48);
  v20 = *(a1 + 72);
  v9 = *(a1 + 32);
  v16 = v8;
  v17 = v9;
  v18 = *(a1 + 56);
  v21 = *(a1 + 80);
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, block);
}

void __86__IMAVSecureKeyLoader_requestKeyResponseFromContentKeyRequest_requestType_completion___block_invoke_4(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v13 = [[MTContentKeyResponse alloc] initWithRequest:*(a1 + 40) error:*(a1 + 32)];
    (*(*(a1 + 80) + 16))();
  }

  else
  {
    [*(a1 + 40) setRequestData:*(a1 + 48)];
    v2 = _MTLogCategoryDRM();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 56);
      v4 = [*(a1 + 40) adamId];
      v5 = *(a1 + 88);
      *buf = 138412802;
      v21 = v3;
      v22 = 2112;
      v23 = v4;
      v24 = 2048;
      v25 = v5;
      _os_log_impl(&dword_1D8CEC000, v2, OS_LOG_TYPE_DEFAULT, "[Request Key Response] Loading key request data from network for %@ adam id %@. Request type %ld", buf, 0x20u);
    }

    if (*(a1 + 88) != 2)
    {
      [*(a1 + 64) setSavedRequestToUseForStopping:*(a1 + 40)];
      [*(a1 + 64) setSavedRequestDataToUseForStopping:*(a1 + 48)];
    }

    v6 = [*(a1 + 64) secureKeyRequestHandler];
    v19 = *(a1 + 40);
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
    v8 = [*(a1 + 64) account];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __86__IMAVSecureKeyLoader_requestKeyResponseFromContentKeyRequest_requestType_completion___block_invoke_72;
    v15[3] = &unk_1E8569138;
    v14 = *(a1 + 64);
    v9 = *(a1 + 80);
    v10 = *(a1 + 72);
    v18 = *(a1 + 96);
    *&v11 = *(a1 + 56);
    *(&v11 + 1) = v9;
    *&v12 = v14;
    *(&v12 + 1) = v10;
    v16 = v12;
    v17 = v11;
    [v6 loadKeyDataFor:v7 account:v8 completion:v15];
  }
}

void __86__IMAVSecureKeyLoader_requestKeyResponseFromContentKeyRequest_requestType_completion___block_invoke_72(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) keyLoaderQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__IMAVSecureKeyLoader_requestKeyResponseFromContentKeyRequest_requestType_completion___block_invoke_2_73;
  block[3] = &unk_1E8569110;
  v12 = v3;
  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  v15 = *(a1 + 64);
  *&v7 = v6;
  *(&v7 + 1) = *(a1 + 32);
  v10 = v7;
  *&v8 = *(a1 + 48);
  *(&v8 + 1) = v5;
  v13 = v10;
  v14 = v8;
  v9 = v3;
  dispatch_async(v4, block);
}

void __86__IMAVSecureKeyLoader_requestKeyResponseFromContentKeyRequest_requestType_completion___block_invoke_2_73(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) firstObject];
  v3 = [v2 error];

  if (!v3)
  {
    v4 = [v2 keyData];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = *(a1 + 40);
      v6 = [v2 keyData];
      v13 = 0;
      v7 = [v5 persistableContentKeyFromKeyVendorResponse:v6 options:0 error:&v13];
      v8 = v13;

      if (v8)
      {
        [v2 setError:v8];
        (*(*(a1 + 64) + 16))();

LABEL_13:
        goto LABEL_14;
      }
    }

    else
    {
      v7 = v4;
    }

    [v2 setKeyData:v7];
    if (*(a1 + 72) == 1)
    {
      v9 = [*(a1 + 48) secureKeyRequestStorage];
      v10 = [v9 saveKeyDataFor:v2];

      if ((v10 & 1) == 0)
      {
        v11 = _MTLogCategoryDRM();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = *(a1 + 56);
          *buf = 138412290;
          v15 = v12;
          _os_log_impl(&dword_1D8CEC000, v11, OS_LOG_TYPE_ERROR, "[Request Key Response] Failed to save offline keyData for %@", buf, 0xCu);
        }
      }
    }

    (*(*(a1 + 64) + 16))();
    goto LABEL_13;
  }

  (*(*(a1 + 64) + 16))();
LABEL_14:
}

- (void)timeoutKeyRequest
{
  keyLoaderQueue = [(IMAVSecureKeyLoader *)self keyLoaderQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__IMAVSecureKeyLoader_timeoutKeyRequest__block_invoke;
  block[3] = &unk_1E8568E28;
  block[4] = self;
  dispatch_async(keyLoaderQueue, block);
}

void __40__IMAVSecureKeyLoader_timeoutKeyRequest__block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = _MTLogCategoryDRM();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [*(a1 + 32) contentAdamId];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1D8CEC000, v3, OS_LOG_TYPE_ERROR, "Content key request timeout for content id %@", &v6, 0xCu);
  }

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMAVSecureKeyLoaderErrorDomain" code:-383002 userInfo:0];
  [*(a1 + 32) cleanupAfterContentKeyRequestForOfflineRenewal:objc_msgSend(*(a1 + 32) withError:{"isRenewal"), v5}];
}

- (void)finishContentKeyRequest:(id)request forOfflineRenewal:(BOOL)renewal withResponse:(id)response
{
  renewalCopy = renewal;
  v28 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  responseCopy = response;
  v10 = _MTLogCategoryDRM();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [requestCopy identifier];
    contentAdamId = [(IMAVSecureKeyLoader *)self contentAdamId];
    error = [responseCopy error];
    *buf = 138412802;
    v23 = identifier;
    v24 = 2112;
    v25 = contentAdamId;
    v26 = 2112;
    v27 = error;
    _os_log_impl(&dword_1D8CEC000, v10, OS_LOG_TYPE_DEFAULT, "Finished content key request for identifier %@ for content id %@ with error %@", buf, 0x20u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__IMAVSecureKeyLoader_finishContentKeyRequest_forOfflineRenewal_withResponse___block_invoke;
  block[3] = &unk_1E8568E28;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  error2 = [responseCopy error];
  v15 = error2 == 0;

  if (v15)
  {
    v17 = MEMORY[0x1E6987F68];
    keyData = [responseCopy keyData];
    renewalDate = [responseCopy renewalDate];
    error3 = [v17 contentKeyResponseWithFairPlayStreamingKeyResponseData:keyData renewalDate:renewalDate];

    [requestCopy processContentKeyResponse:error3];
  }

  else
  {
    error3 = [responseCopy error];
    [requestCopy processContentKeyResponseError:error3];
  }

  error4 = [responseCopy error];
  [(IMAVSecureKeyLoader *)self cleanupAfterContentKeyRequestForOfflineRenewal:renewalCopy withError:error4];
}

- (void)cleanupAfterContentKeyRequestForOfflineRenewal:(BOOL)renewal withError:(id)error
{
  renewalCopy = renewal;
  errorCopy = error;
  if (renewalCopy)
  {
    [(IMAVSecureKeyLoader *)self setContentAdamId:0];
  }

  pendingCompletion = [(IMAVSecureKeyLoader *)self pendingCompletion];

  if (pendingCompletion)
  {
    pendingCompletion2 = [(IMAVSecureKeyLoader *)self pendingCompletion];
    [(IMAVSecureKeyLoader *)self setPendingCompletion:0];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __80__IMAVSecureKeyLoader_cleanupAfterContentKeyRequestForOfflineRenewal_withError___block_invoke;
    v10[3] = &unk_1E8569228;
    v12 = pendingCompletion2;
    v11 = errorCopy;
    v9 = pendingCompletion2;
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

- (BOOL)_isOfflineAsset
{
  recipient = [(IMAVSecureKeyLoader *)self recipient];
  v3 = [recipient URL];
  isFileURL = [v3 isFileURL];

  return isFileURL;
}

- (void)contentKeySession:(id)session didProvideContentKeyRequest:(id)request
{
  v23 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v6 = _MTLogCategoryDRM();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8CEC000, v6, OS_LOG_TYPE_DEFAULT, "Received content key request", buf, 2u);
  }

  if ([(IMAVSecureKeyLoader *)self useCase]== 1 || [(IMAVSecureKeyLoader *)self _isOfflineAsset])
  {
    v7 = _MTLogCategoryDRM();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [requestCopy identifier];
      *buf = 138412290;
      v18 = identifier;
      _os_log_impl(&dword_1D8CEC000, v7, OS_LOG_TYPE_DEFAULT, "Offline key: received initial request, now waiting for offline request for %@", buf, 0xCu);
    }

    v16 = 0;
    v9 = [requestCopy respondByRequestingPersistableContentKeyRequestAndReturnError:&v16];
    v10 = v16;
    if ((v9 & 1) == 0)
    {
      v11 = _MTLogCategoryDRM();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [requestCopy identifier];
        contentAdamId = [(IMAVSecureKeyLoader *)self contentAdamId];
        *buf = 138412802;
        v18 = identifier2;
        v19 = 2112;
        v20 = contentAdamId;
        v21 = 2112;
        v22 = v10;
        _os_log_impl(&dword_1D8CEC000, v11, OS_LOG_TYPE_DEFAULT, "Offline key: offline request failed for %@ episode %@ with error %@", buf, 0x20u);
      }

      [(IMAVSecureKeyLoader *)self cleanupAfterContentKeyRequestWithError:v10];
    }
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __69__IMAVSecureKeyLoader_contentKeySession_didProvideContentKeyRequest___block_invoke;
    v14[3] = &unk_1E8569250;
    v14[4] = self;
    v15 = requestCopy;
    [(IMAVSecureKeyLoader *)self requestKeyResponseFromContentKeyRequest:v15 requestType:0 completion:v14];
  }
}

- (void)contentKeySession:(id)session didProvideRenewingContentKeyRequest:(id)request
{
  v13 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v6 = _MTLogCategoryDRM();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [requestCopy identifier];
    *buf = 138412290;
    v12 = identifier;
    _os_log_impl(&dword_1D8CEC000, v6, OS_LOG_TYPE_DEFAULT, "Received content key request for renewal for %@.", buf, 0xCu);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__IMAVSecureKeyLoader_contentKeySession_didProvideRenewingContentKeyRequest___block_invoke;
  v9[3] = &unk_1E8569250;
  v9[4] = self;
  v10 = requestCopy;
  v8 = requestCopy;
  [(IMAVSecureKeyLoader *)self requestKeyResponseFromContentKeyRequest:v8 requestType:1 completion:v9];
}

- (void)contentKeySession:(id)session didProvidePersistableContentKeyRequest:(id)request
{
  v17 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v6 = _MTLogCategoryDRM();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [requestCopy identifier];
    *buf = 138412546;
    v14 = identifier;
    v15 = 1024;
    isRenewal = [(IMAVSecureKeyLoader *)self isRenewal];
    _os_log_impl(&dword_1D8CEC000, v6, OS_LOG_TYPE_DEFAULT, "Received content key request for persistable key for %@. renewal? %d", buf, 0x12u);
  }

  isRenewal2 = [(IMAVSecureKeyLoader *)self isRenewal];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__IMAVSecureKeyLoader_contentKeySession_didProvidePersistableContentKeyRequest___block_invoke;
  v11[3] = &unk_1E8569250;
  v9 = isRenewal2;
  v11[4] = self;
  v12 = requestCopy;
  v10 = requestCopy;
  [(IMAVSecureKeyLoader *)self requestKeyResponseFromContentKeyRequest:v10 requestType:v9 completion:v11];
}

void __80__IMAVSecureKeyLoader_contentKeySession_didProvidePersistableContentKeyRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 finishContentKeyRequest:v3 forOfflineRenewal:objc_msgSend(v2 withResponse:{"isRenewal"), v4}];
}

- (void)contentKeySession:(id)session contentKeyRequestDidSucceed:(id)succeed
{
  v9 = *MEMORY[0x1E69E9840];
  succeedCopy = succeed;
  v5 = _MTLogCategoryDRM();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [succeedCopy identifier];
    v7 = 138412290;
    v8 = identifier;
    _os_log_impl(&dword_1D8CEC000, v5, OS_LOG_TYPE_DEFAULT, "🔑 Content key request succeeded for %@", &v7, 0xCu);
  }
}

- (void)contentKeySession:(id)session contentKeyRequest:(id)request didFailWithError:(id)error
{
  v18 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  errorCopy = error;
  v9 = _MTLogCategoryDRM();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    identifier = [requestCopy identifier];
    v14 = 138412546;
    v15 = identifier;
    v16 = 2112;
    v17 = errorCopy;
    _os_log_impl(&dword_1D8CEC000, v9, OS_LOG_TYPE_ERROR, "🔑🚨 Content key request failed for %@ with error: %@", &v14, 0x16u);
  }

  delegate = [(IMAVSecureKeyLoader *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(IMAVSecureKeyLoader *)self delegate];
    [delegate2 contentKeyRequestDidFailWithError:errorCopy];
  }
}

- (IMAVSecureKeyLoaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end