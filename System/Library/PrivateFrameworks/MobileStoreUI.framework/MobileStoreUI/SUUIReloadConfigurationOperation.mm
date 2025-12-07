@interface SUUIReloadConfigurationOperation
+ (NSString)cachePath;
- (SSURLBag)URLBag;
- (SUUIReloadConfigurationOperation)init;
- (id)outputBlock;
- (void)main;
- (void)setOutputBlock:(id)block;
- (void)setURLBag:(id)bag;
@end

@implementation SUUIReloadConfigurationOperation

+ (NSString)cachePath
{
  currentDevice = [MEMORY[0x277D69A80] currentDevice];
  storeFrontIdentifier = [currentDevice storeFrontIdentifier];

  v4 = [SUUIClientContext _cachePathForStoreFrontIdentifier:storeFrontIdentifier];

  return v4;
}

- (SUUIReloadConfigurationOperation)init
{
  v6.receiver = self;
  v6.super_class = SUUIReloadConfigurationOperation;
  v2 = [(SUUIReloadConfigurationOperation *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iTunesStoreUI.SUUIReloadConfigurationOperation", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (id)outputBlock
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__71;
  v10 = __Block_byref_object_dispose__71;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__SUUIReloadConfigurationOperation_outputBlock__block_invoke;
  v5[3] = &unk_2798F5B48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = _Block_copy(v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __47__SUUIReloadConfigurationOperation_outputBlock__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 256) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)setOutputBlock:(id)block
{
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__SUUIReloadConfigurationOperation_setOutputBlock___block_invoke;
  v7[3] = &unk_2798F6030;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(dispatchQueue, v7);
}

void *__51__SUUIReloadConfigurationOperation_setOutputBlock___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v3 + 256) != result)
  {
    v4 = [result copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 256);
    *(v5 + 256) = v4;

    return MEMORY[0x2821F96F8](v4, v6);
  }

  return result;
}

- (void)setURLBag:(id)bag
{
  bagCopy = bag;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__SUUIReloadConfigurationOperation_setURLBag___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v7[4] = self;
  v8 = bagCopy;
  v6 = bagCopy;
  dispatch_async(dispatchQueue, v7);
}

void __46__SUUIReloadConfigurationOperation_setURLBag___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (*(v2 + 264) != v1)
  {
    objc_storeStrong((v2 + 264), v1);
  }
}

- (SSURLBag)URLBag
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3_0;
  v10 = __Block_byref_object_dispose__4_0;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__SUUIReloadConfigurationOperation_URLBag__block_invoke;
  v5[3] = &unk_2798F5B48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)main
{
  v49 = *MEMORY[0x277D85DE8];
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__3_0;
  v45 = __Block_byref_object_dispose__4_0;
  v46 = 0;
  uRLBag = [(SUUIReloadConfigurationOperation *)self URLBag];
  if (!uRLBag)
  {
    v4 = [MEMORY[0x277D69C90] contextWithBagType:0];
    [v4 setIgnoresCaches:1];
    v5 = SSVDefaultUserAgent();
    [v4 setValue:v5 forHTTPHeaderField:*MEMORY[0x277D6A130]];

    uRLBag = [(SSURLBag *)[SUUIURLBag alloc] initWithURLBagContext:v4];
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__3_0;
  v39 = __Block_byref_object_dispose__4_0;
  v40 = 0;
  v6 = dispatch_semaphore_create(0);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __40__SUUIReloadConfigurationOperation_main__block_invoke;
  v31[3] = &unk_2798FC420;
  v33 = &v35;
  v34 = &v41;
  v7 = v6;
  v32 = v7;
  [(SUUIURLBag *)uRLBag loadWithCompletionBlock:v31];
  v8 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v13 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v14 = shouldLog;
    }

    else
    {
      v14 = shouldLog & 2;
    }

    if (v14)
    {
      v47 = 138543362;
      selfCopy = self;
      v15 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_259CB8000, v13, 16, "[%{public}@] Timed out waiting for bag load.", &v47, 12);

      if (!v15)
      {
LABEL_13:

        v16 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"SUUIErrorDomain" code:6 userInfo:0];
        v17 = v42[5];
        v42[5] = v16;

        goto LABEL_14;
      }

      v13 = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:4];
      free(v15);
      v29 = v13;
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  if ([v36[5] count])
  {
    storeFrontIdentifier = [(SUUIURLBag *)uRLBag storeFrontIdentifier];
    defaultStore = [MEMORY[0x277D69A20] defaultStore];
    activeAccount = [defaultStore activeAccount];

    v21 = SSVStoreFrontIdentifierForAccount();
    if (![storeFrontIdentifier length] || v21 && objc_msgSend(storeFrontIdentifier, "hasPrefix:", v21))
    {
      v22 = v21;

      storeFrontIdentifier = v22;
    }

    if (storeFrontIdentifier)
    {
      v23 = [SUUIClientContext _cachePathForStoreFrontIdentifier:storeFrontIdentifier];
      v24 = [SUUIClientContext _configurationDictionaryWithBagDictionary:v36[5]];
      if (v24 && v23)
      {
        v25 = [MEMORY[0x277CCAC58] dataWithPropertyList:v24 format:200 options:0 error:0];
        if (v25)
        {
          v30 = objc_alloc_init(MEMORY[0x277CCAA00]);
          stringByDeletingLastPathComponent = [v23 stringByDeletingLastPathComponent];
          [v30 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

          [v25 writeToFile:v23 options:1 error:0];
        }
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  outputBlock = [(SUUIReloadConfigurationOperation *)self outputBlock];
  v28 = outputBlock;
  if (outputBlock)
  {
    (*(outputBlock + 16))(outputBlock, v24, v42[5]);
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);
}

intptr_t __40__SUUIReloadConfigurationOperation_main__block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 copy];
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v5 copy];
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = a1[4];

  return dispatch_semaphore_signal(v12);
}

@end