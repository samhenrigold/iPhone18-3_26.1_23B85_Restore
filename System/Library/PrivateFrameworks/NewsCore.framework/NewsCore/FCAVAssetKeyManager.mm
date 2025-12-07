@interface FCAVAssetKeyManager
- (FCAVAssetKeyManager)init;
- (id)_keyURIForKeyIdentifier:(void *)identifier;
- (id)initWithService:(void *)service cache:;
- (void)_completeKeyRequest:(void *)request withData:(void *)data error:(void *)error session:;
- (void)_shouldRefreshKey:(void *)result;
- (void)contentKeySession:(id)session didProvideContentKeyRequest:(id)request;
- (void)contentKeySession:(id)session didProvidePersistableContentKeyRequest:(id)request;
- (void)fetchKeysWithIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)refreshKeysIfNearExpiration:(id)expiration completionHandler:(id)handler;
- (void)registerAVURLAssetForAutomaticKeyManagement:(id)management;
@end

@implementation FCAVAssetKeyManager

- (FCAVAssetKeyManager)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCAVAssetKeyManager init]";
    v10 = 2080;
    v11 = "FCAVAssetKeyManager.m";
    v12 = 1024;
    v13 = 75;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCAVAssetKeyManager init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (id)initWithService:(void *)service cache:
{
  v6 = a2;
  serviceCopy = service;
  if (self)
  {
    v18.receiver = self;
    v18.super_class = FCAVAssetKeyManager;
    v8 = objc_msgSendSuper2(&v18, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(self + 2, service);
      v9 = objc_alloc_init(FCThreadSafeMutableArray);
      v10 = self[4];
      self[4] = v9;

      v11 = objc_alloc(MEMORY[0x1E69B68D8]);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __45__FCAVAssetKeyManager_initWithService_cache___block_invoke;
      v16[3] = &unk_1E7C36F98;
      self = self;
      selfCopy = self;
      v12 = [v11 initWithConstructor:v16];
      v13 = self[3];
      self[3] = v12;

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self[3] selector:sel_reset name:*MEMORY[0x1E6958128] object:0];
    }
  }

  return self;
}

id __45__FCAVAssetKeyManager_initWithService_cache___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6987F70] contentKeySessionWithKeySystem:*MEMORY[0x1E69873B0]];
  v3 = *(a1 + 32);
  v4 = FCAVWorkQueue();
  [v2 setDelegate:v3 queue:v4];

  return v2;
}

- (void)registerAVURLAssetForAutomaticKeyManagement:(id)management
{
  v11 = *MEMORY[0x1E69E9840];
  managementCopy = management;
  if ([managementCopy mayRequireContentKeysForMediaDataProcessing])
  {
    v5 = FCAVAssetLog;
    if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = managementCopy;
      _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "AV asset key manager registering automatic key management for %{public}@", &v9, 0xCu);
    }

    if (self)
    {
      sharedContentKeySession = self->_sharedContentKeySession;
    }

    else
    {
      sharedContentKeySession = 0;
    }

    v7 = sharedContentKeySession;
    value = [(NFLazy *)v7 value];
    [value addContentKeyRecipient:managementCopy];
  }
}

- (void)fetchKeysWithIdentifiers:(id)identifiers completionHandler:(id)handler
{
  v41 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __66__FCAVAssetKeyManager_fetchKeysWithIdentifiers_completionHandler___block_invoke;
  v33[3] = &unk_1E7C38BD8;
  v33[4] = self;
  v7 = [identifiers fc_arrayByTransformingWithBlock:v33];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __66__FCAVAssetKeyManager_fetchKeysWithIdentifiers_completionHandler___block_invoke_2;
  v32[3] = &unk_1E7C467F8;
  v32[4] = self;
  v8 = [v7 fc_arrayOfObjectsPassingTest:v32];
  if ([v8 count])
  {
    v9 = [MEMORY[0x1E6987F70] contentKeySessionWithKeySystem:*MEMORY[0x1E69873B0]];
    v10 = FCAVWorkQueue();
    [v9 setDelegate:self queue:v10];

    v11 = FCAVAssetLog;
    if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [v8 count];
      *buf = 134218498;
      v36 = v13;
      v37 = 2114;
      v38 = v9;
      v39 = 2114;
      v40 = v8;
      _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "AV asset key manager fetching %lu keys on session %{public}@: %{public}@", buf, 0x20u);
    }

    v14 = [FCAVAssetKeyFetchRequest alloc];
    v15 = [MEMORY[0x1E695DFD8] setWithArray:v8];
    v16 = [(FCAVAssetKeyFetchRequest *)&v14->super.isa initWithContentKeySession:v9 keyURIs:v15 forceRefresh:0 completionHandler:handlerCopy];

    if (self)
    {
      fetchRequests = self->_fetchRequests;
    }

    else
    {
      fetchRequests = 0;
    }

    [(FCThreadSafeMutableArray *)fetchRequests addObject:v16];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v18 = v7;
    v19 = [v18 countByEnumeratingWithState:&v23 objects:v34 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v24;
      do
      {
        v22 = 0;
        do
        {
          if (*v24 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [v9 processContentKeyRequestWithIdentifier:*(*(&v23 + 1) + 8 * v22++) initializationData:0 options:{0, v23}];
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v23 objects:v34 count:16];
      }

      while (v20);
    }
  }

  else
  {
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __66__FCAVAssetKeyManager_fetchKeysWithIdentifiers_completionHandler___block_invoke_3;
    v30 = &unk_1E7C379C8;
    v31 = handlerCopy;
    v31[2](v31, 0);
    v9 = v31;
  }
}

- (id)_keyURIForKeyIdentifier:(void *)identifier
{
  v3 = a2;
  if (identifier)
  {
    objc_opt_class();
    if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v4 = v3;
      identifier = v4;
    }

    else
    {
      objc_opt_class();
      if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v5 = v3;
        identifier = [MEMORY[0x1E695DFF8] URLWithString:v5];
      }

      else
      {
        v5 = 0;
        identifier = 0;
      }

      v4 = 0;
    }
  }

  return identifier;
}

uint64_t __66__FCAVAssetKeyManager_fetchKeysWithIdentifiers_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 16);
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 assetKeyForURI:a2];
  if (v5)
  {
    v6 = [(FCAVAssetKeyManager *)*(a1 + 32) _shouldRefreshKey:v5];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_shouldRefreshKey:(void *)result
{
  if (result)
  {
    v2 = a2;
    creationDate = [v2 creationDate];
    expirationDate = [v2 expirationDate];
    creationDate2 = [v2 creationDate];

    [expirationDate timeIntervalSinceDate:creationDate2];
    v7 = [creationDate dateByAddingTimeInterval:v6 * 0.75];

    date = [MEMORY[0x1E695DF00] date];
    v9 = [date fc_isLaterThanOrEqualTo:v7];

    return v9;
  }

  return result;
}

- (void)refreshKeysIfNearExpiration:(id)expiration completionHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  expirationCopy = expiration;
  handlerCopy = handler;
  if ([expirationCopy count])
  {
    v8 = FCAVAssetLog;
    if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      *buf = 134217984;
      v36 = [expirationCopy count];
      _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "AV asset key manager will see if %lu keys need refresh", buf, 0xCu);
    }

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __69__FCAVAssetKeyManager_refreshKeysIfNearExpiration_completionHandler___block_invoke_18;
    v32[3] = &unk_1E7C38D38;
    v32[4] = self;
    v10 = [expirationCopy fc_arrayByTransformingWithBlock:v32];
    if ([v10 count])
    {
      v11 = FCAVAssetLog;
      if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = [expirationCopy count];
        *buf = 134218242;
        v36 = v13;
        v37 = 2114;
        v38 = expirationCopy;
        _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "AV asset key manager found %lu keys needing refresh: %{public}@", buf, 0x16u);
      }

      v14 = [MEMORY[0x1E6987F70] contentKeySessionWithKeySystem:*MEMORY[0x1E69873B0]];
      v15 = FCAVWorkQueue();
      [v14 setDelegate:self queue:v15];

      v16 = [FCAVAssetKeyFetchRequest alloc];
      v17 = [MEMORY[0x1E695DFD8] setWithArray:v10];
      v18 = [(FCAVAssetKeyFetchRequest *)&v16->super.isa initWithContentKeySession:v14 keyURIs:v17 forceRefresh:1 completionHandler:handlerCopy];

      if (self)
      {
        fetchRequests = self->_fetchRequests;
      }

      else
      {
        fetchRequests = 0;
      }

      [(FCThreadSafeMutableArray *)fetchRequests addObject:v18];
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v20 = v10;
      v21 = [v20 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v27;
        do
        {
          v24 = 0;
          do
          {
            if (*v27 != v23)
            {
              objc_enumerationMutation(v20);
            }

            [v14 processContentKeyRequestWithIdentifier:*(*(&v26 + 1) + 8 * v24++) initializationData:0 options:{0, v26}];
          }

          while (v22 != v24);
          v22 = [v20 countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v22);
      }
    }

    else
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __69__FCAVAssetKeyManager_refreshKeysIfNearExpiration_completionHandler___block_invoke_5;
      v30[3] = &unk_1E7C379C8;
      v31 = handlerCopy;
      __69__FCAVAssetKeyManager_refreshKeysIfNearExpiration_completionHandler___block_invoke_5(v30);
      v14 = v31;
    }
  }

  else
  {
    v32[5] = MEMORY[0x1E69E9820];
    v32[6] = 3221225472;
    v32[7] = __69__FCAVAssetKeyManager_refreshKeysIfNearExpiration_completionHandler___block_invoke;
    v32[8] = &unk_1E7C379C8;
    v25 = handlerCopy;
    v33 = v25;
    if (v25)
    {
      (*(v25 + 2))(v25, 0);
    }
  }
}

uint64_t __69__FCAVAssetKeyManager_refreshKeysIfNearExpiration_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

id __69__FCAVAssetKeyManager_refreshKeysIfNearExpiration_completionHandler___block_invoke_18(uint64_t a1, void *a2)
{
  v3 = [(FCAVAssetKeyManager *)*(a1 + 32) _keyURIForKeyIdentifier:a2];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 16);
    }

    else
    {
      v7 = 0;
    }

    v8 = [v7 assetKeyForURI:v5];
    if (v8 && [(FCAVAssetKeyManager *)*(a1 + 32) _shouldRefreshKey:v8])
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __69__FCAVAssetKeyManager_refreshKeysIfNearExpiration_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "AV asset key manager found no keys needing refresh", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)contentKeySession:(id)session didProvideContentKeyRequest:(id)request
{
  sessionCopy = session;
  requestCopy = request;
  v15 = 0;
  v8 = [requestCopy respondByRequestingPersistableContentKeyRequestAndReturnError:&v15];
  v9 = v15;
  if ((v8 & 1) == 0)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__FCAVAssetKeyManager_contentKeySession_didProvideContentKeyRequest___block_invoke;
    v10[3] = &unk_1E7C38C98;
    v11 = requestCopy;
    selfCopy = self;
    v13 = v9;
    v14 = sessionCopy;
    __69__FCAVAssetKeyManager_contentKeySession_didProvideContentKeyRequest___block_invoke(v10);
  }
}

void __69__FCAVAssetKeyManager_contentKeySession_didProvideContentKeyRequest___block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = v2;
    v5 = [v3 identifier];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "AV asset key manager failed to get persistableContentKeyRequest for identifier: %{public}@", &v6, 0xCu);
  }

  [(FCAVAssetKeyManager *)a1[5] _completeKeyRequest:0 withData:a1[6] error:a1[7] session:?];
}

- (void)_completeKeyRequest:(void *)request withData:(void *)data error:(void *)error session:
{
  v9 = a2;
  requestCopy = request;
  dataCopy = data;
  errorCopy = error;
  if (self)
  {
    if (requestCopy)
    {
      defaultCenter = [MEMORY[0x1E6987F68] contentKeyResponseWithFairPlayStreamingKeyResponseData:requestCopy];
      [v9 processContentKeyResponse:defaultCenter];
    }

    else
    {
      [v9 processContentKeyResponseError:dataCopy];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"AudioAssetDownloadFailed" object:dataCopy userInfo:MEMORY[0x1E695E0F8]];
    }

    identifier = [v9 identifier];
    v15 = [(FCAVAssetKeyManager *)self _keyURIForKeyIdentifier:identifier];

    if (v15)
    {
      v16 = self[4];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __66__FCAVAssetKeyManager__completeKeyRequest_withData_error_session___block_invoke;
      v17[3] = &unk_1E7C3B1F8;
      v18 = errorCopy;
      v19 = v15;
      v20 = dataCopy;
      [v16 readWriteWithAccessor:v17];
    }
  }
}

- (void)contentKeySession:(id)session didProvidePersistableContentKeyRequest:(id)request
{
  v56 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  obj = request;
  requestCopy = request;
  v7 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    identifier = [requestCopy identifier];
    LODWORD(buf.receiver) = 138543362;
    *(&buf.receiver + 4) = identifier;
    _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "AV asset key manager successfully got persistableContentKeyRequest for identifier: %{public}@", &buf, 0xCu);
  }

  identifier2 = [requestCopy identifier];
  v11 = [(FCAVAssetKeyManager *)self _keyURIForKeyIdentifier:identifier2];

  if (!v11)
  {
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __80__FCAVAssetKeyManager_contentKeySession_didProvidePersistableContentKeyRequest___block_invoke;
    v44[3] = &unk_1E7C376A0;
    v44[4] = self;
    v45 = requestCopy;
    v46 = sessionCopy;
    __80__FCAVAssetKeyManager_contentKeySession_didProvidePersistableContentKeyRequest___block_invoke(v44);

    goto LABEL_22;
  }

  v31 = v11;
  if (self)
  {
    cache = self->_cache;
  }

  else
  {
    cache = 0;
  }

  v13 = cache;
  v30 = [(FCAVAssetKeyCacheType *)v13 assetKeyForURI:v31];

  if (!v30 || ([(FCAVAssetKeyManager *)self _shouldRefreshKey:v30]& 1) != 0)
  {
    goto LABEL_10;
  }

  v14 = v31;
  v15 = v14;
  if (self)
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0;
    v16 = self->_fetchRequests;
    buf.receiver = MEMORY[0x1E69E9820];
    buf.super_class = 3221225472;
    v52 = __50__FCAVAssetKeyManager__waitingOnRefreshForKeyURI___block_invoke;
    v53 = &unk_1E7C46848;
    v17 = v15;
    v54 = v17;
    v55 = &v47;
    [(FCThreadSafeMutableArray *)v16 enumerateObjectsUsingBlock:&buf];

    LOBYTE(v16) = *(v48 + 24);
    _Block_object_dispose(&v47, 8);

    if (v16)
    {
LABEL_10:
      v18 = FCAVAssetLog;
      if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.receiver) = 138543362;
        *(&buf.receiver + 4) = v31;
        _os_log_impl(&dword_1B63EF000, v18, OS_LOG_TYPE_DEFAULT, "AV asset key manager fetching response for %{public}@", &buf, 0xCu);
      }

      v19 = [FCAVAssetKeyFetchOperation alloc];
      if (self)
      {
        v20 = self->_service;
        v21 = self->_cache;
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      v22 = requestCopy;
      v23 = v31;
      v24 = v20;
      v25 = v21;
      if (v19)
      {
        buf.receiver = v19;
        buf.super_class = FCAVAssetKeyFetchOperation;
        v26 = [(FCAVAssetKeyManager *)&buf init];
        v19 = v26;
        if (v26)
        {
          objc_storeStrong(&v26[9]._sharedContentKeySession, obja);
          objc_storeStrong(&v19->_keyURI, v11);
          objc_storeStrong(&v19->_service, v20);
          objc_storeStrong(&v19->_cache, v21);
        }
      }

      newValue[0] = MEMORY[0x1E69E9820];
      newValue[1] = 3221225472;
      newValue[2] = __80__FCAVAssetKeyManager_contentKeySession_didProvidePersistableContentKeyRequest___block_invoke_26;
      newValue[3] = &unk_1E7C46820;
      v34 = v23;
      selfCopy = self;
      v36 = v22;
      v37 = sessionCopy;
      if (v19)
      {
        objc_setProperty_nonatomic_copy(v19, v27, newValue, 376);
      }

      [(FCOperation *)v19 start];

      goto LABEL_20;
    }
  }

  else
  {
  }

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __80__FCAVAssetKeyManager_contentKeySession_didProvidePersistableContentKeyRequest___block_invoke_2;
  v38[3] = &unk_1E7C376C8;
  v39 = v15;
  selfCopy2 = self;
  v41 = requestCopy;
  v42 = v30;
  v43 = sessionCopy;
  __80__FCAVAssetKeyManager_contentKeySession_didProvidePersistableContentKeyRequest___block_invoke_2(v38);

  v19 = v39;
LABEL_20:

LABEL_22:
}

void __80__FCAVAssetKeyManager_contentKeySession_didProvidePersistableContentKeyRequest___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x1E696ABC0] fc_invalidAVAssetKeyURIError];
  [(FCAVAssetKeyManager *)v2 _completeKeyRequest:v3 withData:0 error:v4 session:*(a1 + 48)];
}

void __80__FCAVAssetKeyManager_contentKeySession_didProvidePersistableContentKeyRequest___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "AV asset key manager using cached response for %{public}@", &v7, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 56) keyData];
  [(FCAVAssetKeyManager *)v4 _completeKeyRequest:v5 withData:v6 error:0 session:*(a1 + 64)];
}

void __80__FCAVAssetKeyManager_contentKeySession_didProvidePersistableContentKeyRequest___block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __80__FCAVAssetKeyManager_contentKeySession_didProvidePersistableContentKeyRequest___block_invoke_2_27;
    v12[3] = &unk_1E7C376C8;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v13 = v7;
    v14 = v8;
    v15 = v9;
    v16 = v6;
    v17 = *(a1 + 56);
    __80__FCAVAssetKeyManager_contentKeySession_didProvidePersistableContentKeyRequest___block_invoke_2_27(v12);
  }

  else
  {
    v10 = FCAVAssetLog;
    if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138543362;
      v19 = v11;
      _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "AV asset key manager fetched response for %{public}@", buf, 0xCu);
    }

    [(FCAVAssetKeyManager *)*(a1 + 40) _completeKeyRequest:v5 withData:0 error:*(a1 + 56) session:?];
  }
}

void __80__FCAVAssetKeyManager_contentKeySession_didProvidePersistableContentKeyRequest___block_invoke_2_27(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "AV asset key manager failed to fetch response for %{public}@", &v4, 0xCu);
  }

  [(FCAVAssetKeyManager *)*(a1 + 40) _completeKeyRequest:0 withData:*(a1 + 56) error:*(a1 + 64) session:?];
}

uint64_t __50__FCAVAssetKeyManager__waitingOnRefreshForKeyURI___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = v6;
  if (v6)
  {
    if (*(v6 + 8) == 1)
    {
      v9 = v6;
      v6 = [v6[3] containsObject:*(a1 + 32)];
      v7 = v9;
      if (v6)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        *a4 = 1;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](v6, v7);
}

void __66__FCAVAssetKeyManager__completeKeyRequest_withData_error_session___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __66__FCAVAssetKeyManager__completeKeyRequest_withData_error_session___block_invoke_2;
  v19[3] = &unk_1E7C46870;
  v20 = *(a1 + 32);
  v4 = [v3 fc_firstObjectPassingTest:v19];
  v5 = v4;
  if (v4)
  {
    v4 = v4[3];
  }

  if ([v4 containsObject:*(a1 + 40)])
  {
    v6 = FCAVAssetLog;
    if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      if (v5)
      {
        v8 = v5[3];
      }

      else
      {
        v8 = 0;
      }

      *buf = 138543618;
      v22 = v7;
      v23 = 2114;
      v24 = v8;
      v9 = v6;
      _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "AV asset key manager removing keyURI %{public}@ from %{public}@", buf, 0x16u);
    }

    if (v5)
    {
      [v5[3] removeObject:*(a1 + 40)];
      v10 = v5[4];
    }

    else
    {
      [0 removeObject:*(a1 + 40)];
      v10 = 0;
    }

    [v10 fc_safelyAddObject:*(a1 + 48)];
    if (v5)
    {
      v11 = v5[3];
    }

    else
    {
      v11 = 0;
    }

    if (![v11 count])
    {
      v12 = FCAVAssetLog;
      if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          v13 = v5[2];
        }

        else
        {
          v13 = 0;
        }

        *buf = 138543362;
        v22 = v13;
        v14 = v12;
        _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "AV asset key manager finished key requests for session: %{public}@", buf, 0xCu);
      }

      if (v5)
      {
        v15 = v5[5];
        if (v15)
        {
          v16 = v15;
          v17 = v5[4];
          v18 = [v17 lastObject];
          v16[2](v16, v18);
        }
      }

      [v3 removeObjectIdenticalTo:v5];
    }
  }
}

BOOL __66__FCAVAssetKeyManager__completeKeyRequest_withData_error_session___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
  }

  else
  {
    v2 = 0;
  }

  return v2 == *(a1 + 32);
}

@end