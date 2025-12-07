@interface AudioAccessoryAssetManagementClient
- (AudioAccessoryAssetManagementClient)init;
- (AudioAccessoryAssetManagementClient)initWithCoder:(id)coder;
- (__CFString)_takeXPCServiceAssertion;
- (id)_ensureAADXPCStarted;
- (id)_ensureXPCStarted;
- (uint64_t)_takeXPCServiceAssertion;
- (void)_interrupted;
- (void)_invalidateXPCServiceAssertion;
- (void)_invalidated;
- (void)_takeXPCServiceAssertion;
- (void)downloadTranslationAssets:(id)assets useCellular:(BOOL)cellular showDownloadCompleteNotification:(BOOL)notification completion:(id)completion;
- (void)getTranslationAssets;
- (void)getTranslationAssets:(id)assets error:(id)error;
- (void)getTranslationAssetsDownloadSize:(id)size completion:(id)completion;
- (void)invalidate;
- (void)pidOfDownloadTranslationAssetsXPCService:(int)service;
- (void)showDownloadLanguagesNotification:(id)notification;
@end

@implementation AudioAccessoryAssetManagementClient

- (AudioAccessoryAssetManagementClient)initWithCoder:(id)coder
{
  v3 = [(AudioAccessoryAssetManagementClient *)self init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (AudioAccessoryAssetManagementClient)init
{
  v7.receiver = self;
  v7.super_class = AudioAccessoryAssetManagementClient;
  v2 = [(AudioAccessoryAssetManagementClient *)&v7 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    _ensureXPCStarted = [(AudioAccessoryAssetManagementClient *)v3 _ensureXPCStarted];
    if (_ensureXPCStarted)
    {
      [(AudioAccessoryAssetManagementClient *)v3 invalidate];
    }

    v3->_downloadTranslationAssetsPid = 0;
    v5 = v3;
  }

  return v3;
}

- (void)downloadTranslationAssets:(id)assets useCellular:(BOOL)cellular showDownloadCompleteNotification:(BOOL)notification completion:(id)completion
{
  assetsCopy = assets;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __121__AudioAccessoryAssetManagementClient_downloadTranslationAssets_useCellular_showDownloadCompleteNotification_completion___block_invoke;
  v15[3] = &unk_278CDCF70;
  v16 = assetsCopy;
  selfCopy = self;
  v18 = completionCopy;
  cellularCopy = cellular;
  notificationCopy = notification;
  v13 = completionCopy;
  v14 = assetsCopy;
  dispatch_async(dispatchQueue, v15);
}

void __121__AudioAccessoryAssetManagementClient_downloadTranslationAssets_useCellular_showDownloadCompleteNotification_completion___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  if (*(v2[1] + 8) == 1)
  {
    v4 = NSErrorF();
    if (gLogCategory_AudioAccessoryAssetManagementClient <= 90 && (gLogCategory_AudioAccessoryAssetManagementClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AudioAccessoryAssetManagementClient, "[AudioAccessoryAssetManagementClient downloadTranslationAssets:useCellular:showDownloadCompleteNotification:completion:]_block_invoke", 90, "### ### downloadTranslationAssets failed: %@, %@", *(a1 + 40), v4);
    }
  }

  else
  {
    if (gLogCategory_AudioAccessoryAssetManagementClient <= 30 && (gLogCategory_AudioAccessoryAssetManagementClient != -1 || _LogCategory_Initialize()))
    {
      __121__AudioAccessoryAssetManagementClient_downloadTranslationAssets_useCellular_showDownloadCompleteNotification_completion___block_invoke_cold_1(v2, a1);
    }

    v4 = [*(a1 + 40) _ensureXPCStarted];
    if (!v4)
    {
      [*(a1 + 40) _takeXPCServiceAssertion];
      v5 = [MEMORY[0x277CCA8D8] mainBundle];
      v6 = [v5 bundleIdentifier];

      v7 = *(*(a1 + 40) + 32);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __121__AudioAccessoryAssetManagementClient_downloadTranslationAssets_useCellular_showDownloadCompleteNotification_completion___block_invoke_2;
      v15[3] = &unk_278CDCF20;
      v16 = *(a1 + 48);
      v8 = [v7 remoteObjectProxyWithErrorHandler:v15];
      v9 = *(a1 + 56);
      v10 = *(a1 + 57);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __121__AudioAccessoryAssetManagementClient_downloadTranslationAssets_useCellular_showDownloadCompleteNotification_completion___block_invoke_3;
      v13[3] = &unk_278CDCF48;
      v13[4] = v3;
      v11 = *(a1 + 40);
      v14 = *(a1 + 48);
      [v8 downloadTranslationAssets:v11 localeIdentifiers:v3 useCellular:v9 showDownloadCompleteNotification:v10 bundleIdentifier:v6 completion:v13];

      goto LABEL_13;
    }
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, v4);
  }

LABEL_13:
}

uint64_t __121__AudioAccessoryAssetManagementClient_downloadTranslationAssets_useCellular_showDownloadCompleteNotification_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (gLogCategory_AudioAccessoryAssetManagementClient <= 90)
  {
    if (gLogCategory_AudioAccessoryAssetManagementClient != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
    {
      __121__AudioAccessoryAssetManagementClient_downloadTranslationAssets_useCellular_showDownloadCompleteNotification_completion___block_invoke_2_cold_1(v3);
      v3 = v7;
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = (*(v5 + 16))(v5, v7);
    v3 = v7;
  }

  return MEMORY[0x2821F96F8](v5, v3);
}

void __121__AudioAccessoryAssetManagementClient_downloadTranslationAssets_useCellular_showDownloadCompleteNotification_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    if (gLogCategory_AudioAccessoryAssetManagementClient <= 90)
    {
      if (gLogCategory_AudioAccessoryAssetManagementClient != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        __121__AudioAccessoryAssetManagementClient_downloadTranslationAssets_useCellular_showDownloadCompleteNotification_completion___block_invoke_3_cold_1(v3);
      }
    }
  }

  else if (gLogCategory_AudioAccessoryAssetManagementClient <= 90 && (gLogCategory_AudioAccessoryAssetManagementClient != -1 || _LogCategory_Initialize()))
  {
    __121__AudioAccessoryAssetManagementClient_downloadTranslationAssets_useCellular_showDownloadCompleteNotification_completion___block_invoke_3_cold_2(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_takeXPCServiceAssertion
{
  if (gLogCategory_AudioAccessoryAssetManagementClient <= 40 && (gLogCategory_AudioAccessoryAssetManagementClient != -1 || _LogCategory_Initialize()))
  {

    LogPrintF(&gLogCategory_AudioAccessoryAssetManagementClient, "[AudioAccessoryAssetManagementClient _takeXPCServiceAssertion]", 40, "_downloadTranslationAssetsPid is 0 returning");
  }
}

- (void)_invalidateXPCServiceAssertion
{
  processAssertion = self->_processAssertion;
  if (processAssertion)
  {
    [(RBSAssertion *)processAssertion invalidate];
    v4 = self->_processAssertion;
    self->_processAssertion = 0;
  }
}

- (void)getTranslationAssetsDownloadSize:(id)size completion:(id)completion
{
  sizeCopy = size;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__AudioAccessoryAssetManagementClient_getTranslationAssetsDownloadSize_completion___block_invoke;
  block[3] = &unk_278CDCFB8;
  v12 = sizeCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = sizeCopy;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

uint64_t __83__AudioAccessoryAssetManagementClient_getTranslationAssetsDownloadSize_completion___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 8) != 1)
  {
    if (gLogCategory_AudioAccessoryAssetManagementClient <= 30 && (gLogCategory_AudioAccessoryAssetManagementClient != -1 || _LogCategory_Initialize()))
    {
      __83__AudioAccessoryAssetManagementClient_getTranslationAssetsDownloadSize_completion___block_invoke_cold_1(a1);
    }

    v2 = [*(a1 + 32) _ensureXPCStarted];
    if (!v2)
    {
      v8 = 0;
      v5 = [*(*(a1 + 32) + 32) remoteObjectProxyWithErrorHandler:&__block_literal_global];
      [v5 getTranslationAssetsDownloadSize:*(a1 + 32) localeIdentifiers:*(a1 + 40) completion:*(a1 + 48)];

LABEL_16:
      v2 = v8;
      goto LABEL_17;
    }

    v3 = *(a1 + 48);
    if (!v3)
    {
      goto LABEL_17;
    }

    v4 = *(v3 + 16);
    v8 = v2;
LABEL_15:
    v3 = v4();
    goto LABEL_16;
  }

  v2 = NSErrorF();
  v8 = v2;
  if (gLogCategory_AudioAccessoryAssetManagementClient <= 90)
  {
    if (gLogCategory_AudioAccessoryAssetManagementClient != -1 || (v6 = _LogCategory_Initialize(), v2 = v8, v6))
    {
      LogPrintF(&gLogCategory_AudioAccessoryAssetManagementClient, "[AudioAccessoryAssetManagementClient getTranslationAssetsDownloadSize:completion:]_block_invoke", 90, "### ### getTranslationAssetsDownloadSize failed: %@, %@", *(a1 + 32), v2);
      v2 = v8;
    }
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(v3 + 16);
    goto LABEL_15;
  }

LABEL_17:

  return MEMORY[0x2821F96F8](v3, v2);
}

uint64_t __83__AudioAccessoryAssetManagementClient_getTranslationAssetsDownloadSize_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_AudioAccessoryAssetManagementClient <= 90)
  {
    v5 = v2;
    if (gLogCategory_AudioAccessoryAssetManagementClient != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
    {
      v2 = __83__AudioAccessoryAssetManagementClient_getTranslationAssetsDownloadSize_completion___block_invoke_2_cold_1(v3);
      v3 = v5;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

- (void)getTranslationAssets
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__AudioAccessoryAssetManagementClient_getTranslationAssets__block_invoke;
  block[3] = &unk_278CDCFE0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __59__AudioAccessoryAssetManagementClient_getTranslationAssets__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (*(*(a1 + 32) + 8) == 1)
  {
    v4 = NSErrorF();
    v5 = v4;
    if (gLogCategory_AudioAccessoryAssetManagementClient > 90)
    {
      goto LABEL_12;
    }

    v8 = v4;
    if (gLogCategory_AudioAccessoryAssetManagementClient == -1)
    {
      v4 = _LogCategory_Initialize();
      v5 = v8;
      if (!v4)
      {
        goto LABEL_12;
      }
    }

    v4 = LogPrintF(&gLogCategory_AudioAccessoryAssetManagementClient, "[AudioAccessoryAssetManagementClient getTranslationAssets]_block_invoke", 90, "### ### getTranslationAssetsWithCompletion failed: %@, %@", *(v3 + 32), v5);
LABEL_10:
    v5 = v8;
    goto LABEL_12;
  }

  if (gLogCategory_AudioAccessoryAssetManagementClient <= 30)
  {
    if (gLogCategory_AudioAccessoryAssetManagementClient != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __59__AudioAccessoryAssetManagementClient_getTranslationAssets__block_invoke_cold_1(a1, a2, a3);
    }
  }

  v4 = [*(v3 + 32) _ensureXPCStarted];
  v5 = v4;
  if (!v4)
  {
    v8 = 0;
    v6 = [*(*(v3 + 32) + 32) remoteObjectProxyWithErrorHandler:&__block_literal_global_42];
    [v6 getTranslationAssets:*(v3 + 32)];

    goto LABEL_10;
  }

LABEL_12:

  return MEMORY[0x2821F96F8](v4, v5);
}

uint64_t __59__AudioAccessoryAssetManagementClient_getTranslationAssets__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_AudioAccessoryAssetManagementClient <= 90)
  {
    v5 = v2;
    if (gLogCategory_AudioAccessoryAssetManagementClient != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
    {
      v2 = __59__AudioAccessoryAssetManagementClient_getTranslationAssets__block_invoke_2_cold_1(v3);
      v3 = v5;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

- (void)showDownloadLanguagesNotification:(id)notification
{
  notificationCopy = notification;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__AudioAccessoryAssetManagementClient_showDownloadLanguagesNotification___block_invoke;
  v7[3] = &unk_278CDD008;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __73__AudioAccessoryAssetManagementClient_showDownloadLanguagesNotification___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (*(*(a1 + 32) + 8) == 1)
  {
    v4 = NSErrorF();
    v5 = v4;
    if (gLogCategory_AudioAccessoryAssetManagementClient > 90)
    {
      goto LABEL_12;
    }

    v8 = v4;
    if (gLogCategory_AudioAccessoryAssetManagementClient == -1)
    {
      v4 = _LogCategory_Initialize();
      v5 = v8;
      if (!v4)
      {
        goto LABEL_12;
      }
    }

    v4 = LogPrintF(&gLogCategory_AudioAccessoryAssetManagementClient, "[AudioAccessoryAssetManagementClient showDownloadLanguagesNotification:]_block_invoke", 90, "### ### Show download languages notification failed: %@, %@", *(v3 + 32), v5);
LABEL_10:
    v5 = v8;
    goto LABEL_12;
  }

  if (gLogCategory_AudioAccessoryAssetManagementClient <= 30)
  {
    if (gLogCategory_AudioAccessoryAssetManagementClient != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __73__AudioAccessoryAssetManagementClient_showDownloadLanguagesNotification___block_invoke_cold_1(a1, a2, a3);
    }
  }

  v4 = [*(v3 + 32) _ensureAADXPCStarted];
  v5 = v4;
  if (!v4)
  {
    v8 = 0;
    v6 = [*(*(v3 + 32) + 40) remoteObjectProxyWithErrorHandler:&__block_literal_global_47];
    [v6 assetManagerShowDownloadNotificationForBTAddress:*(v3 + 40) completionHandler:&__block_literal_global_50];

    goto LABEL_10;
  }

LABEL_12:

  return MEMORY[0x2821F96F8](v4, v5);
}

uint64_t __73__AudioAccessoryAssetManagementClient_showDownloadLanguagesNotification___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_AudioAccessoryAssetManagementClient <= 30)
  {
    v5 = v2;
    if (gLogCategory_AudioAccessoryAssetManagementClient != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
    {
      v2 = __73__AudioAccessoryAssetManagementClient_showDownloadLanguagesNotification___block_invoke_2_cold_1(v3);
      v3 = v5;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

uint64_t __73__AudioAccessoryAssetManagementClient_showDownloadLanguagesNotification___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_AudioAccessoryAssetManagementClient <= 30)
  {
    v5 = v2;
    if (gLogCategory_AudioAccessoryAssetManagementClient != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
    {
      v2 = __73__AudioAccessoryAssetManagementClient_showDownloadLanguagesNotification___block_invoke_3_cold_1(v3);
      v3 = v5;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

- (id)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853307D0];
    v4 = objc_alloc(MEMORY[0x277CBEB98]);
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = [v4 initWithObjects:{v5, v6, objc_opt_class(), 0}];
    [v3 setClasses:v7 forSelector:sel_getTranslationAssets_error_ argumentIndex:0 ofReply:0];
    v8 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.AudioAccessoryAssetManagementXPCService"];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v8;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v3];
    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__AudioAccessoryAssetManagementClient__ensureXPCStarted__block_invoke;
    v14[3] = &unk_278CDCFE0;
    v14[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v14];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __56__AudioAccessoryAssetManagementClient__ensureXPCStarted__block_invoke_2;
    v13[3] = &unk_278CDCFE0;
    v13[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v13];
    v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285330830];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v10];

    remoteObjectInterface = [(NSXPCConnection *)self->_xpcCnx remoteObjectInterface];
    [remoteObjectInterface setClasses:v7 forSelector:sel_getTranslationAssetsDownloadSize_localeIdentifiers_completion_ argumentIndex:0 ofReply:0];

    [(NSXPCConnection *)self->_xpcCnx resume];
  }

  return 0;
}

uint64_t __56__AudioAccessoryAssetManagementClient__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (id)_ensureAADXPCStarted
{
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285330890];
  if (!self->_xpcAADCnx)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.AudioAccessoryServices" options:0];
    xpcAADCnx = self->_xpcAADCnx;
    self->_xpcAADCnx = v4;

    [(NSXPCConnection *)self->_xpcAADCnx _setQueue:self->_dispatchQueue];
    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853308F0];
    [(NSXPCConnection *)self->_xpcAADCnx setExportedInterface:v6];

    [(NSXPCConnection *)self->_xpcAADCnx setExportedObject:self];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__AudioAccessoryAssetManagementClient__ensureAADXPCStarted__block_invoke;
    v9[3] = &unk_278CDCFE0;
    v9[4] = self;
    [(NSXPCConnection *)self->_xpcAADCnx setInterruptionHandler:v9];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__AudioAccessoryAssetManagementClient__ensureAADXPCStarted__block_invoke_2;
    v8[3] = &unk_278CDCFE0;
    v8[4] = self;
    [(NSXPCConnection *)self->_xpcAADCnx setInvalidationHandler:v8];
    [(NSXPCConnection *)self->_xpcAADCnx setRemoteObjectInterface:v3];
    [(NSXPCConnection *)self->_xpcAADCnx resume];
  }

  return 0;
}

uint64_t __59__AudioAccessoryAssetManagementClient__ensureAADXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_AudioAccessoryAssetManagementClient <= 50)
  {
    if (gLogCategory_AudioAccessoryAssetManagementClient != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      [(AudioAccessoryAssetManagementClient *)v3 _interrupted];
    }
  }

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    v7 = *(interruptionHandler + 2);

    v7();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__AudioAccessoryAssetManagementClient_invalidate__block_invoke;
  block[3] = &unk_278CDCFE0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__49__AudioAccessoryAssetManagementClient_invalidate__block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result[4];
  if ((*(v4 + 8) & 1) == 0)
  {
    v5 = result;
    *(v4 + 8) = 1;
    if ((*(result[4] + 9) & 1) == 0 && gLogCategory_AudioAccessoryAssetManagementClient <= 30)
    {
      if (gLogCategory_AudioAccessoryAssetManagementClient != -1 || (result = _LogCategory_Initialize(), result))
      {
        __49__AudioAccessoryAssetManagementClient_invalidate__block_invoke_cold_1(result, a2, a3);
      }
    }

    v6 = v5[4];
    if (v6[4])
    {
      [v6[4] invalidate];
      v6 = v5[4];
    }

    if (v6[5])
    {
      [v6[5] invalidate];
      v6 = v5[4];
    }

    return [v6 _invalidated];
  }

  return result;
}

- (void)_invalidated
{
  if (!self->_invalidateDone)
  {
    selfCopy = self;
    if (!self->_invalidateCalled && gLogCategory_AudioAccessoryAssetManagementClient <= 50)
    {
      if (gLogCategory_AudioAccessoryAssetManagementClient != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(AudioAccessoryAssetManagementClient *)self _invalidated];
      }
    }

    if (!selfCopy->_xpcCnx && !selfCopy->_xpcAADCnx)
    {
      [(AudioAccessoryAssetManagementClient *)selfCopy _invalidateXPCServiceAssertion];
      v8 = MEMORY[0x245CE8A10](selfCopy->_invalidationHandler);
      invalidationHandler = selfCopy->_invalidationHandler;
      selfCopy->_invalidationHandler = 0;

      if (v8)
      {
        v8[2](v8);
      }

      interruptionHandler = selfCopy->_interruptionHandler;
      selfCopy->_interruptionHandler = 0;

      xpcCnx = selfCopy->_xpcCnx;
      selfCopy->_xpcCnx = 0;

      xpcAADCnx = selfCopy->_xpcAADCnx;
      selfCopy->_xpcAADCnx = 0;

      selfCopy->_invalidateDone = 1;
      if (gLogCategory_AudioAccessoryAssetManagementClient <= 10 && (gLogCategory_AudioAccessoryAssetManagementClient != -1 || _LogCategory_Initialize()))
      {
        [AudioAccessoryAssetManagementClient _invalidated];
      }
    }
  }
}

- (void)getTranslationAssets:(id)assets error:(id)error
{
  assetsCopy = assets;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_translationAssets, assets);
  objc_sync_exit(selfCopy);

  [assetsCopy enumerateObjectsUsingBlock:&__block_literal_global_156];
  translationAssetsInfoHandler = selfCopy->_translationAssetsInfoHandler;
  if (translationAssetsInfoHandler)
  {
    translationAssetsInfoHandler[2](translationAssetsInfoHandler, selfCopy->_translationAssets, errorCopy);
  }
}

uint64_t __66__AudioAccessoryAssetManagementClient_getTranslationAssets_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_AudioAccessoryAssetManagementClient <= 30)
  {
    v5 = v2;
    if (gLogCategory_AudioAccessoryAssetManagementClient != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
    {
      __66__AudioAccessoryAssetManagementClient_getTranslationAssets_error___block_invoke_cold_1(v3);
      v3 = v5;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

- (void)pidOfDownloadTranslationAssetsXPCService:(int)service
{
  if (gLogCategory_AudioAccessoryAssetManagementClient <= 30 && (gLogCategory_AudioAccessoryAssetManagementClient != -1 || _LogCategory_Initialize()))
  {
    [AudioAccessoryAssetManagementClient pidOfDownloadTranslationAssetsXPCService:service];
  }

  self->_downloadTranslationAssetsPid = service;
}

uint64_t __121__AudioAccessoryAssetManagementClient_downloadTranslationAssets_useCellular_showDownloadCompleteNotification_completion___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v2 = "no";
  if (*(a2 + 56))
  {
    v3 = "yes";
  }

  else
  {
    v3 = "no";
  }

  if (*(a2 + 57))
  {
    v2 = "yes";
  }

  return LogPrintF(&gLogCategory_AudioAccessoryAssetManagementClient, "[AudioAccessoryAssetManagementClient downloadTranslationAssets:useCellular:showDownloadCompleteNotification:completion:]_block_invoke", 30, "Downloading Translation Assets localeIdentifiers %@, useCellular %s showDownloadCompleteNotification %s", *a1, v3, v2);
}

- (uint64_t)_takeXPCServiceAssertion
{
  v3 = result;
  if (gLogCategory_AudioAccessoryAssetManagementClient <= 90)
  {
    if (gLogCategory_AudioAccessoryAssetManagementClient != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_AudioAccessoryAssetManagementClient, "[AudioAccessoryAssetManagementClient _takeXPCServiceAssertion]", 90, "target is nil returning");
    }
  }

  *a2 = v3;
  return result;
}

- (__CFString)_takeXPCServiceAssertion
{
  v3 = result;
  if (gLogCategory_AudioAccessoryAssetManagementClient <= 90)
  {
    if (gLogCategory_AudioAccessoryAssetManagementClient != -1 || (result = _LogCategory_Initialize(), result))
    {
      v4 = @"unknown";
      if (v3)
      {
        v4 = v3;
      }

      result = LogPrintF(&gLogCategory_AudioAccessoryAssetManagementClient, "[AudioAccessoryAssetManagementClient _takeXPCServiceAssertion]", 90, "processHandle is nil returning with error %@", v4);
    }
  }

  *a2 = v3;
  return result;
}

void __66__AudioAccessoryAssetManagementClient_getTranslationAssets_error___block_invoke_cold_1(void *a1)
{
  v2 = [a1 assetStatus];
  if (v2 > 3)
  {
    v3 = "?";
  }

  else
  {
    v3 = off_278CDD048[v2];
  }

  v6 = [a1 displayName];
  v4 = [a1 isSuggested];
  v5 = [a1 locale];
  LogPrintF(&gLogCategory_AudioAccessoryAssetManagementClient, "[AudioAccessoryAssetManagementClient getTranslationAssets:error:]_block_invoke", 30, "getTranslationAssetsWithCompletion succeeded: AMTranslationAssetInfo: assetStatus %s, displayName %@, isSuggested %d locale %@\n", v3, v6, v4, v5);
}

@end