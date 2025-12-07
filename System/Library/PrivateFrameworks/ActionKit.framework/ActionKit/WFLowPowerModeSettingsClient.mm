@interface WFLowPowerModeSettingsClient
+ (id)energyModeStream;
+ (id)reversalArbiter;
+ (void)createClientWithCompletionHandler:(id)handler;
+ (void)getBookmarkForCurrentStateWithCompletionHandler:(id)handler;
+ (void)getBookmarkForFirstEventAfterBookmark:(id)bookmark completionHandler:(id)handler;
+ (void)getReversalStateWithBookmark:(id)bookmark completionHandler:(id)handler;
- (WFLowPowerModeSettingsClient)initWithLowPowerMode:(id)mode;
- (void)getStateWithCompletionHandler:(id)handler;
- (void)setState:(BOOL)state completionHandler:(id)handler;
@end

@implementation WFLowPowerModeSettingsClient

- (void)setState:(BOOL)state completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__WFLowPowerModeSettingsClient_setState_completionHandler___block_invoke;
  v8[3] = &unk_278C1D8F8;
  v8[4] = self;
  v9 = handlerCopy;
  stateCopy = state;
  v7 = handlerCopy;
  [(WFLowPowerModeSettingsClient *)self getStateWithCompletionHandler:v8];
}

void __59__WFLowPowerModeSettingsClient_setState_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CF1180]);
    if (a2)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    v8 = [v6 initWithMode:v7 reason:0];
    v9 = [objc_opt_class() energyModeStream];
    v10 = [v9 source];
    [v10 sendEvent:v8];

    v11 = *(a1 + 48);
    v12 = *(*(a1 + 32) + 8);
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v13 = getkPMLPMSourceSiriSymbolLoc_ptr;
    v33 = getkPMLPMSourceSiriSymbolLoc_ptr;
    if (!getkPMLPMSourceSiriSymbolLoc_ptr)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getkPMLPMSourceSiriSymbolLoc_block_invoke;
      v35 = &unk_278C222B8;
      v36 = &v30;
      v14 = LowPowerModeLibrary();
      v15 = dlsym(v14, "kPMLPMSourceSiri");
      *(v36[1] + 24) = v15;
      getkPMLPMSourceSiriSymbolLoc_ptr = *(v36[1] + 24);
      v13 = v31[3];
    }

    _Block_object_dispose(&v30, 8);
    if (!v13)
    {
      v28 = [MEMORY[0x277CCA890] currentHandler];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getkPMLPMSourceSiri(void)"];
      [v28 handleFailureInFunction:v29 file:@"WFLowPowerModeSettingsClient.m" lineNumber:24 description:{@"%s", dlerror()}];

      __break(1u);
    }

    if ([v12 setPowerMode:v11 fromSource:*v13])
    {
      v16 = [objc_opt_class() reversalArbiter];
      v17 = [v16 lastEventEquals:v8];

      if (v17)
      {
        v18 = getWFBundledIntentsLogObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          *&buf[4] = "[WFLowPowerModeSettingsClient setState:completionHandler:]_block_invoke";
          _os_log_impl(&dword_23DE30000, v18, OS_LOG_TYPE_INFO, "%s powerd doesn't seem to be writing to Biome, handling the write ourselves", buf, 0xCu);
        }

        v19 = objc_alloc(MEMORY[0x277CF1180]);
        if (*(a1 + 48))
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        v21 = [v19 initWithMode:v20 reason:2];
        v22 = [objc_opt_class() energyModeStream];
        v23 = [v22 source];
        [v23 sendEvent:v21];
      }

      v24 = getWFBundledIntentsLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = *(a1 + 48);
        *buf = 136315394;
        *&buf[4] = "[WFLowPowerModeSettingsClient setState:completionHandler:]_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = v25;
        _os_log_impl(&dword_23DE30000, v24, OS_LOG_TYPE_INFO, "%s Set Low Power Mode state to %d", buf, 0x12u);
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v26 = *(a1 + 40);
      v27 = WFSettingsClientError();
      (*(v26 + 16))(v26, v27);
    }
  }
}

- (void)getStateWithCompletionHandler:(id)handler
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAC38];
  handlerCopy = handler;
  processInfo = [v3 processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  v7 = getWFBundledIntentsLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[WFLowPowerModeSettingsClient getStateWithCompletionHandler:]";
    v10 = 1024;
    v11 = isLowPowerModeEnabled;
    _os_log_impl(&dword_23DE30000, v7, OS_LOG_TYPE_INFO, "%s Retrieved Low Power Mode state: %d", &v8, 0x12u);
  }

  handlerCopy[2](handlerCopy, isLowPowerModeEnabled, 0);
}

- (WFLowPowerModeSettingsClient)initWithLowPowerMode:(id)mode
{
  modeCopy = mode;
  if (!modeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFLowPowerModeSettingsClient.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"lowPowerMode"}];
  }

  v12.receiver = self;
  v12.super_class = WFLowPowerModeSettingsClient;
  v7 = [(WFLowPowerModeSettingsClient *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_lowPowerMode, mode);
    v9 = v8;
  }

  return v8;
}

+ (void)getReversalStateWithBookmark:(id)bookmark completionHandler:(id)handler
{
  handlerCopy = handler;
  bookmarkCopy = bookmark;
  reversalArbiter = [self reversalArbiter];
  biomeBookmark = [bookmarkCopy biomeBookmark];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__WFLowPowerModeSettingsClient_getReversalStateWithBookmark_completionHandler___block_invoke;
  v11[3] = &unk_278C19A68;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [reversalArbiter getReversalStateWithBookmark:biomeBookmark completionHandler:v11];
}

void __79__WFLowPowerModeSettingsClient_getReversalStateWithBookmark_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 mode] == 1;
    v4 = *(a1 + 32);
    v6 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    (*(v4 + 16))(v4, v6, 0);
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }
}

+ (void)getBookmarkForCurrentStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  reversalArbiter = [self reversalArbiter];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__WFLowPowerModeSettingsClient_getBookmarkForCurrentStateWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C1D920;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [reversalArbiter getBookmarkForCurrentStateWithCompletionHandler:v7];
}

void __80__WFLowPowerModeSettingsClient_getBookmarkForCurrentStateWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v8 = v5;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x277D7C858]) initWithBiomeBookmark:v5];
    (*(v6 + 16))(v6, v7, 0);
  }

  else
  {
    (*(v6 + 16))(v6, 0, a3);
  }
}

+ (void)getBookmarkForFirstEventAfterBookmark:(id)bookmark completionHandler:(id)handler
{
  handlerCopy = handler;
  bookmarkCopy = bookmark;
  reversalArbiter = [self reversalArbiter];
  biomeBookmark = [bookmarkCopy biomeBookmark];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__WFLowPowerModeSettingsClient_getBookmarkForFirstEventAfterBookmark_completionHandler___block_invoke;
  v11[3] = &unk_278C1D920;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [reversalArbiter getBookmarkForFirstEventAfterBookmark:biomeBookmark completionHandler:v11];
}

void __88__WFLowPowerModeSettingsClient_getBookmarkForFirstEventAfterBookmark_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v8 = v5;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x277D7C858]) initWithBiomeBookmark:v5];
    (*(v6 + 16))(v6, v7, 0);
  }

  else
  {
    (*(v6 + 16))(v6, 0, a3);
  }
}

+ (id)reversalArbiter
{
  v3 = objc_alloc(MEMORY[0x277D7C850]);
  energyModeStream = [self energyModeStream];
  v5 = [v3 initWithBiomeStream:energyModeStream];

  return v5;
}

+ (id)energyModeStream
{
  v2 = BiomeLibrary();
  device = [v2 Device];
  power = [device Power];
  energyMode = [power EnergyMode];

  return energyMode;
}

+ (void)createClientWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v5 = get_PMLowPowerModeClass_softClass;
  v13 = get_PMLowPowerModeClass_softClass;
  if (!get_PMLowPowerModeClass_softClass)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __get_PMLowPowerModeClass_block_invoke;
    v9[3] = &unk_278C222B8;
    v9[4] = &v10;
    __get_PMLowPowerModeClass_block_invoke(v9);
    v5 = v11[3];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);
  sharedInstance = [v5 sharedInstance];
  if (sharedInstance)
  {
    v8 = [[self alloc] initWithLowPowerMode:sharedInstance];
    handlerCopy[2](handlerCopy, v8, 0);
  }

  else
  {
    v8 = WFSettingsClientError();
    (handlerCopy)[2](handlerCopy, 0, v8);
  }
}

@end