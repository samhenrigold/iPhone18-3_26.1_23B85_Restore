@interface BSBrandManager
- (BOOL)isBrandRegisteredWithIdentifier:(id)identifier forService:(id)service timeout:(double)timeout error:(id *)error;
- (BSBrandManager)initWithBrandType:(int64_t)type cachingEnabled:(BOOL)enabled;
- (BSBrandManager)initWithBrandType:(int64_t)type cachingEnabled:(BOOL)enabled brandDataSourceOpaqueWrapper:(id)wrapper;
- (BSBrandManager)initWithCachingEnabled:(BOOL)enabled cacheURL:(id)l brandDataSourceOpaqueWrapper:(id)wrapper;
- (void)brandAssetWithIdentifier:(id)identifier forService:(id)service completion:(id)completion;
- (void)brandWithIdentifier:(id)identifier forService:(id)service completion:(id)completion;
- (void)brandWithURI:(id)i completion:(id)completion;
- (void)brandWithURI:(id)i usingSim:(id)sim completion:(id)completion;
- (void)clearUnusedCachedLogos:(id)logos;
- (void)fetchAssetWithURL:(id)l type:(int64_t)type completion:(id)completion;
- (void)isBrandRegisteredWithIdentifier:(id)identifier forService:(id)service completion:(id)completion;
@end

@implementation BSBrandManager

- (BSBrandManager)initWithBrandType:(int64_t)type cachingEnabled:(BOOL)enabled
{
  if (self)
  {
    return [(BSBrandManager *)self initWithCachingEnabled:enabled cacheURL:0 brandDataSourceOpaqueWrapper:0];
  }

  return self;
}

- (BSBrandManager)initWithBrandType:(int64_t)type cachingEnabled:(BOOL)enabled brandDataSourceOpaqueWrapper:(id)wrapper
{
  enabledCopy = enabled;
  wrapperCopy = wrapper;
  if (wrapperCopy)
  {
    selfCopy2 = self;
    v9 = enabledCopy;
    v10 = wrapperCopy;
  }

  else
  {
    if (!self)
    {
      v11 = 0;
      goto LABEL_6;
    }

    selfCopy2 = self;
    v9 = enabledCopy;
    v10 = 0;
  }

  v11 = [(BSBrandManager *)selfCopy2 initWithCachingEnabled:v9 cacheURL:0 brandDataSourceOpaqueWrapper:v10];
LABEL_6:
  v12 = v11;

  return v12;
}

- (BSBrandManager)initWithCachingEnabled:(BOOL)enabled cacheURL:(id)l brandDataSourceOpaqueWrapper:(id)wrapper
{
  enabledCopy = enabled;
  lCopy = l;
  wrapperCopy = wrapper;
  v15.receiver = self;
  v15.super_class = BSBrandManager;
  v10 = [(BSBrandManager *)&v15 init];
  if (v10)
  {
    if (!wrapperCopy)
    {
      v11 = objc_alloc_init(IMBrandChatBotBrandDataSourceObjcShim);
      wrapperCopy = [(IMBrandChatBotBrandDataSourceObjcShim *)v11 opaqueWrapper];
    }

    v12 = [[BSBrandManagerObjcShim alloc] initWithCachingEnabled:enabledCopy cacheURL:lCopy brandDataSourceWrapper:wrapperCopy];
    shim = v10->_shim;
    v10->_shim = v12;
  }

  return v10;
}

- (void)brandWithURI:(id)i completion:(id)completion
{
  completionCopy = completion;
  if (self)
  {
    self = self->_shim;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__BSBrandManager_brandWithURI_completion___block_invoke;
  v8[3] = &unk_2781C1688;
  v9 = completionCopy;
  v7 = completionCopy;
  [(BSBrandManager *)self brandWithURI:i completion:v8];
}

void __42__BSBrandManager_brandWithURI_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[BSBrand alloc] _initWithShim:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)brandWithURI:(id)i usingSim:(id)sim completion:(id)completion
{
  completionCopy = completion;
  if (self)
  {
    self = self->_shim;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__BSBrandManager_brandWithURI_usingSim_completion___block_invoke;
  v10[3] = &unk_2781C1688;
  v11 = completionCopy;
  v9 = completionCopy;
  [(BSBrandManager *)self brandWithURI:i usingSim:sim completion:v10];
}

void __51__BSBrandManager_brandWithURI_usingSim_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[BSBrand alloc] _initWithShim:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)clearUnusedCachedLogos:(id)logos
{
  if (self)
  {
    self = self->_shim;
  }

  [(BSBrandManager *)self clearUnusedCachedLogos:logos];
}

- (void)fetchAssetWithURL:(id)l type:(int64_t)type completion:(id)completion
{
  if (self)
  {
    self = self->_shim;
  }

  [(BSBrandManager *)self fetchAssetWithURL:l assetType:type completion:completion];
}

- (void)isBrandRegisteredWithIdentifier:(id)identifier forService:(id)service completion:(id)completion
{
  if (self)
  {
    self = self->_shim;
  }

  [(BSBrandManager *)self isBrandRegisteredWithIdentifier:identifier forService:service completion:completion];
}

- (BOOL)isBrandRegisteredWithIdentifier:(id)identifier forService:(id)service timeout:(double)timeout error:(id *)error
{
  if (self)
  {
    self = self->_shim;
  }

  return [(BSBrandManager *)self isBrandRegisteredWithIdentifier:identifier forService:service timeout:error error:timeout];
}

- (void)brandWithIdentifier:(id)identifier forService:(id)service completion:(id)completion
{
  completionCopy = completion;
  if (self)
  {
    self = self->_shim;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__BSBrandManager_brandWithIdentifier_forService_completion___block_invoke;
  v10[3] = &unk_2781C1688;
  v11 = completionCopy;
  v9 = completionCopy;
  [(BSBrandManager *)self brandWithIdentifier:identifier forService:service completion:v10];
}

void __60__BSBrandManager_brandWithIdentifier_forService_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[BSBrand alloc] _initWithShim:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)brandAssetWithIdentifier:(id)identifier forService:(id)service completion:(id)completion
{
  completionCopy = completion;
  if (self)
  {
    self = self->_shim;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__BSBrandManager_brandAssetWithIdentifier_forService_completion___block_invoke;
  v10[3] = &unk_2781C16B0;
  v11 = completionCopy;
  v9 = completionCopy;
  [(BSBrandManager *)self brandAssetWithIdentifier:identifier forService:service completion:v10];
}

@end