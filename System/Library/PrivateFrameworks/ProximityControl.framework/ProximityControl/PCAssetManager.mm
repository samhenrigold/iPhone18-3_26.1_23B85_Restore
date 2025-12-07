@interface PCAssetManager
+ (PCAssetManager)sharedInstance;
- (PCAssetManager)init;
- (id)alternateBundleForAssetType:(int64_t)type;
- (id)assetQueryForAssetType:(int64_t)type alternate:(BOOL)alternate;
- (id)assetRequestConfiguration:(int64_t)configuration alternate:(BOOL)alternate;
- (id)bundleForAssetType:(int64_t)type;
- (id)imageForAssetType:(int64_t)type;
- (id)imageNameForAssetType:(int64_t)type;
- (unsigned)colorCodeForAssetType:(int64_t)type;
- (unsigned)productVersionForAssetType:(int64_t)type;
- (void)dealloc;
- (void)handleDownloadCompletion:(id)completion assetType:(int64_t)type error:(id)error;
- (void)handleQueryResult:(id)result assetType:(int64_t)type productType:(id)productType isFallback:(BOOL)fallback error:(id)error isAlternateBundle:(BOOL)bundle;
- (void)initiateQuery:(id)query config:(id)config;
- (void)prewarmBundleForAssetType:(int64_t)type alternate:(BOOL)alternate;
- (void)sfAssetManagerEnsureStarted;
@end

@implementation PCAssetManager

+ (PCAssetManager)sharedInstance
{
  if (sharedInstance_onceToken[0] != -1)
  {
    +[PCAssetManager sharedInstance];
  }

  v3 = sharedInstance_shared;

  return v3;
}

uint64_t __32__PCAssetManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PCAssetManager);
  v1 = sharedInstance_shared;
  sharedInstance_shared = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (PCAssetManager)init
{
  v8.receiver = self;
  v8.super_class = PCAssetManager;
  v2 = [(PCAssetManager *)&v8 init];
  if (v2)
  {
    v3 = LogCategoryCreateEx();
    v2->_ucat = v3;
    if (*v3 <= 30 && (*v3 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v4 = dispatch_queue_create("com.apple.ProximityControl.assetManager.queue", 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v4;

    [(PCAssetManager *)v2 sfAssetManagerEnsureStarted];
    v6 = v2;
  }

  return v2;
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = PCAssetManager;
  [(PCAssetManager *)&v4 dealloc];
}

- (id)bundleForAssetType:(int64_t)type
{
  if ((type - 1) >= 8)
  {
    type = [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", type];
  }

  else
  {
    type = off_279AD1CB0[type - 1];
  }

  bundles = self->_bundles;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v8 = [(NSMutableDictionary *)bundles objectForKeyedSubscript:v7];

  var0 = self->_ucat->var0;
  if (v8)
  {
    if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v10 = v8;
  }

  else if (var0 <= 60 && (var0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
    [(PCAssetManager *)self prewarmBundleForAssetType:type, type];
  }

  else
  {
    [(PCAssetManager *)self prewarmBundleForAssetType:type, v12];
  }

  return v8;
}

- (id)alternateBundleForAssetType:(int64_t)type
{
  if ((type - 1) >= 8)
  {
    type = [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", type];
  }

  else
  {
    type = off_279AD1CB0[type - 1];
  }

  alternateBundles = self->_alternateBundles;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v8 = [(NSMutableDictionary *)alternateBundles objectForKeyedSubscript:v7];

  var0 = self->_ucat->var0;
  if (v8)
  {
    if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v10 = v8;
  }

  else if (var0 <= 60 && (var0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
    [(PCAssetManager *)self prewarmAlternateBundleForAssetType:type, type];
  }

  else
  {
    [(PCAssetManager *)self prewarmAlternateBundleForAssetType:type, v12];
  }

  return v8;
}

- (id)imageForAssetType:(int64_t)type
{
  if ((type - 1) >= 8)
  {
    type = [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", type];
  }

  else
  {
    type = off_279AD1CB0[type - 1];
  }

  var0 = self->_ucat->var0;
  if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
  {
    v13 = type;
    LogPrintF();
  }

  v7 = [(PCAssetManager *)self bundleForAssetType:type, v13];
  if (v7)
  {
    v8 = [(PCAssetManager *)self imageNameForAssetType:type];
    if (v8)
    {
      v9 = [MEMORY[0x277D755B8] imageNamed:v8 inBundle:v7 withConfiguration:0];
      v10 = self->_ucat->var0;
      if (v10 <= 30 && (v10 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      v11 = self->_ucat->var0;
      if (v11 <= 60 && (v11 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)prewarmBundleForAssetType:(int64_t)type alternate:(BOOL)alternate
{
  alternateCopy = alternate;
  var0 = self->_ucat->var0;
  if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
  {
    if ((type - 1) >= 8)
    {
      type = [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", type];
    }

    else
    {
      type = off_279AD1CB0[type - 1];
    }

    v9 = @"NO";
    if (alternateCopy)
    {
      v9 = @"YES";
    }

    v13 = type;
    v14 = v9;
    LogPrintF();
  }

  v15 = [(PCAssetManager *)self assetRequestConfiguration:type alternate:alternateCopy, v13, v14];
  if (v15)
  {
    v10 = [(PCAssetManager *)self assetQueryForAssetType:type alternate:alternateCopy];
    if (v10)
    {
      [(PCAssetManager *)self initiateQuery:v10 config:v15];
    }

    else
    {
      v12 = self->_ucat->var0;
      if (v12 <= 60 && (v12 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }
  }

  else
  {
    v11 = self->_ucat->var0;
    if (v11 <= 60 && (v11 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }
}

- (id)assetQueryForAssetType:(int64_t)type alternate:(BOOL)alternate
{
  alternateCopy = alternate;
  if ((type - 1) >= 8)
  {
    type = [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", type];
  }

  else
  {
    type = off_279AD1CB0[type - 1];
  }

  v8 = [(PCAssetManager *)self colorCodeForAssetType:type];
  if (v8 == *MEMORY[0x277D54D48])
  {
    var0 = self->_ucat->var0;
    if (var0 > 60 || var0 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_23;
    }

    goto LABEL_14;
  }

  v10 = v8;
  v11 = [(PCAssetManager *)self productVersionForAssetType:type];
  v12 = self->_ucat->var0;
  if (!v11)
  {
    if (v12 > 60 || v12 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_23;
    }

LABEL_14:
    LogPrintF();
LABEL_23:
    v15 = 0;
    goto LABEL_24;
  }

  if (v12 <= 30 && (v12 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v13 = objc_alloc(MEMORY[0x277D54C58]);
  if (alternateCopy)
  {
    v14 = [v13 initWithHomePodColor:v10 version:v11];
  }

  else
  {
    v14 = [v13 initWithSingleHomePodColor:v10 version:v11];
  }

  v15 = v14;
LABEL_24:

  return v15;
}

- (id)assetRequestConfiguration:(int64_t)configuration alternate:(BOOL)alternate
{
  objc_initWeak(&location, self);
  v6 = objc_alloc(MEMORY[0x277D54C60]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__PCAssetManager_assetRequestConfiguration_alternate___block_invoke;
  v11[3] = &unk_279AD1C68;
  objc_copyWeak(v12, &location);
  v12[1] = configuration;
  alternateCopy = alternate;
  v7 = [v6 initWithQueryResultHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__PCAssetManager_assetRequestConfiguration_alternate___block_invoke_2;
  v9[3] = &unk_279AD1C90;
  objc_copyWeak(v10, &location);
  v10[1] = configuration;
  [v7 setDownloadCompletionHandler:v9];
  objc_destroyWeak(v10);
  objc_destroyWeak(v12);
  objc_destroyWeak(&location);

  return v7;
}

void __54__PCAssetManager_assetRequestConfiguration_alternate___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  objc_copyWeak(&to, (a1 + 32));
  v12 = objc_loadWeakRetained(&to);
  [v12 handleQueryResult:v9 assetType:*(a1 + 40) productType:v10 isFallback:a4 error:v11 isAlternateBundle:*(a1 + 48)];

  objc_destroyWeak(&to);
}

void __54__PCAssetManager_assetRequestConfiguration_alternate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&to, (a1 + 32));
  v7 = objc_loadWeakRetained(&to);
  [v7 handleDownloadCompletion:v5 assetType:*(a1 + 40) error:v6];

  objc_destroyWeak(&to);
}

- (unsigned)colorCodeForAssetType:(int64_t)type
{
  v3 = *MEMORY[0x277D54D48];
  if ((type - 1) < 8)
  {
    return 0x201210807090201uLL >> (8 * (type - 1));
  }

  return v3;
}

- (void)handleDownloadCompletion:(id)completion assetType:(int64_t)type error:(id)error
{
  completionCopy = completion;
  errorCopy = error;
  var0 = self->_ucat->var0;
  if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
  {
    if ((type - 1) >= 8)
    {
      type = [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", type];
    }

    else
    {
      type = off_279AD1CB0[type - 1];
    }

    LogPrintF();
  }
}

- (void)initiateQuery:(id)query config:(id)config
{
  queryCopy = query;
  configCopy = config;
  var0 = self->_ucat->var0;
  if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
  {
    v8 = queryCopy;
    v9 = configCopy;
    LogPrintF();
  }

  [(PCAssetManager *)self sfAssetManagerEnsureStarted:v8];
  [(SFDeviceAssetManager *)self->_sfAssetManager getAssetBundleForDeviceQuery:queryCopy withRequestConfiguration:configCopy];
}

- (void)handleQueryResult:(id)result assetType:(int64_t)type productType:(id)productType isFallback:(BOOL)fallback error:(id)error isAlternateBundle:(BOOL)bundle
{
  bundleCopy = bundle;
  fallbackCopy = fallback;
  resultCopy = result;
  productTypeCopy = productType;
  errorCopy = error;
  var0 = self->_ucat->var0;
  if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
  {
    if ((type - 1) >= 8)
    {
      type = [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", type];
    }

    else
    {
      type = off_279AD1CB0[type - 1];
    }

    v18 = "no";
    if (fallbackCopy)
    {
      v18 = "yes";
    }

    v34 = v18;
    v35 = errorCopy;
    v31 = type;
    v32 = resultCopy;
    v33 = productTypeCopy;
    LogPrintF();
  }

  dispatch_assert_queue_V2(self->_internalQueue);
  if (!resultCopy || errorCopy)
  {
    v28 = self->_ucat->var0;
    if (v28 <= 60 && (v28 != -1 || _LogCategory_Initialize()))
    {
      if ((type - 1) >= 8)
      {
        type2 = [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", type];
      }

      else
      {
        type2 = off_279AD1CB0[type - 1];
      }

      LogPrintF();
      goto LABEL_31;
    }
  }

  else
  {
    if (type)
    {
      if (bundleCopy)
      {
        alternateBundles = self->_alternateBundles;
        p_alternateBundles = &self->_alternateBundles;
        v20 = alternateBundles;
        if (alternateBundles)
        {
LABEL_17:
          v24 = [MEMORY[0x277CCABB0] numberWithInteger:{type, v31, v32, v33, v34, v35}];
          [(NSMutableDictionary *)v20 setObject:resultCopy forKeyedSubscript:v24];

          v25 = MEMORY[0x277CCAB98];
          v26 = kPCAssetManagerNotificationNameQueryDidComplete;
          type2 = [v25 defaultCenter];
          [(__CFString *)type2 postNotificationName:v26 object:0];

LABEL_31:
          goto LABEL_32;
        }
      }

      else
      {
        bundles = self->_bundles;
        p_alternateBundles = &self->_bundles;
        v20 = bundles;
        if (bundles)
        {
          goto LABEL_17;
        }
      }

      v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v23 = *p_alternateBundles;
      *p_alternateBundles = v22;

      v20 = *p_alternateBundles;
      goto LABEL_17;
    }

    v29 = self->_ucat->var0;
    if (v29 <= 60 && (v29 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

LABEL_32:
}

- (id)imageNameForAssetType:(int64_t)type
{
  v5 = *MEMORY[0x277D54D40];
  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  userInterfaceStyle = [currentTraitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    v8 = *MEMORY[0x277D54D38];

    v5 = v8;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
  {
    if ((type - 1) >= 8)
    {
      type = [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", type];
    }

    else
    {
      type = off_279AD1CB0[type - 1];
    }

    if (userInterfaceStyle >= 3)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", userInterfaceStyle];
    }

    else
    {
      v11 = off_279AD1CF0[userInterfaceStyle];
    }

    LogPrintF();
  }

  return v5;
}

- (unsigned)productVersionForAssetType:(int64_t)type
{
  if ((type - 1) > 7)
  {
    return 0;
  }

  else
  {
    return dword_26118DD60[type - 1];
  }
}

- (void)sfAssetManagerEnsureStarted
{
  if (!self->_sfAssetManager)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v5 = objc_alloc_init(MEMORY[0x277D54C50]);
    sfAssetManager = self->_sfAssetManager;
    self->_sfAssetManager = v5;

    [(SFDeviceAssetManager *)self->_sfAssetManager setDispatchQueue:self->_internalQueue];
    v7 = self->_sfAssetManager;

    [(SFDeviceAssetManager *)v7 activate];
  }
}

@end