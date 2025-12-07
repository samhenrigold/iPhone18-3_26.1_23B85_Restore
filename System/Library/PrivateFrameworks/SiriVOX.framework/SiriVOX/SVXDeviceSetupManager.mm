@interface SVXDeviceSetupManager
- (SVXDeviceSetupManager)initWithModule:(id)module;
- (void)_prepareForSetupWithContext:(id)context completion:(id)completion;
- (void)_setContext:(id)context forUUID:(id)d;
- (void)_setEffectiveContext:(id)context;
- (void)_updateEffectiveContext;
- (void)addListener:(id)listener;
- (void)getContextWithCompletion:(id)completion;
- (void)prepareForSetupWithContext:(id)context completion:(id)completion;
- (void)removeListener:(id)listener;
- (void)sessionManager:(id)manager didActivateWithContext:(id)context;
- (void)setContext:(id)context forUUID:(id)d;
- (void)startWithModuleInstanceProvider:(id)provider platformDependencies:(id)dependencies;
- (void)stopWithModuleInstanceProvider:(id)provider;
@end

@implementation SVXDeviceSetupManager

- (void)_setEffectiveContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = self->_effectiveContext;
  v6 = contextCopy;
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    if (v6 && v5)
    {
      v8 = [(SVXDeviceSetupContext *)v5 isEqual:v6];

      if (v8)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      effectiveContext = self->_effectiveContext;
      v13 = 136315650;
      v14 = "[SVXDeviceSetupManager _setEffectiveContext:]";
      v15 = 2112;
      v16 = effectiveContext;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s %@ -> %@", &v13, 0x20u);
    }

    v11 = [(SVXDeviceSetupContext *)v7 copy];
    v12 = self->_effectiveContext;
    self->_effectiveContext = v11;

    [(SVXDeviceSetupAnnouncer *)self->_announcer deviceSetupManager:self didUpdateContext:self->_effectiveContext];
  }

LABEL_11:
}

- (void)_updateEffectiveContext
{
  v24 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__13784;
  v18 = __Block_byref_object_dispose__13785;
  v19 = 0;
  contextsByUUID = self->_contextsByUUID;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__SVXDeviceSetupManager__updateEffectiveContext__block_invoke;
  v13[3] = &unk_279C68F48;
  v13[4] = &v14;
  [(NSMutableDictionary *)contextsByUUID enumerateKeysAndObjectsUsingBlock:v13];
  v4 = MEMORY[0x277CEF098];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = v15[5];
    *buf = 136315394;
    v21 = "[SVXDeviceSetupManager _updateEffectiveContext]";
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s latestContext = %@", buf, 0x16u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__SVXDeviceSetupManager__updateEffectiveContext__block_invoke_13;
  v12[3] = &unk_279C68F70;
  v12[4] = self;
  v7 = MEMORY[0x26D642680](v12);
  v8 = v15[5];
  if (v8)
  {
    v9 = [v8 mutatedCopyWithMutator:v7];
LABEL_8:
    v10 = v9;
    goto LABEL_9;
  }

  if (self->_beginDate || self->_endDate)
  {
    v9 = [SVXDeviceSetupContext newWithBuilder:v7];
    goto LABEL_8;
  }

  v10 = 0;
LABEL_9:
  v11 = *v4;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v21 = "[SVXDeviceSetupManager _updateEffectiveContext]";
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s effectiveContext = %@", buf, 0x16u);
  }

  [(SVXDeviceSetupManager *)self _setEffectiveContext:v10];

  _Block_object_dispose(&v14, 8);
}

void __48__SVXDeviceSetupManager__updateEffectiveContext__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(*(*(a1 + 32) + 8) + 40) timestamp];
  if (v5 < [v6 timestamp])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }
}

void __48__SVXDeviceSetupManager__updateEffectiveContext__block_invoke_13(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 72);
  v4 = a2;
  [v4 setFlowScene:v3];
  [v4 setBeginDate:*(*(a1 + 32) + 56)];
  [v4 setEndDate:*(*(a1 + 32) + 64)];
}

- (void)_setContext:(id)context forUUID:(id)d
{
  v42 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dCopy = d;
  v8 = MEMORY[0x277CEF098];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v37 = "[SVXDeviceSetupManager _setContext:forUUID:]";
    v38 = 2112;
    v39 = contextCopy;
    v40 = 2112;
    v41 = dCopy;
    _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s context = %@, uuid = %@", buf, 0x20u);
  }

  contextsByUUID = self->_contextsByUUID;
  if (contextCopy)
  {
    if (![(NSMutableDictionary *)contextsByUUID count])
    {
      activatedDeviceSetupFlowScene = self->_activatedDeviceSetupFlowScene;
      self->_activatedDeviceSetupFlowScene = 0;

      date = [MEMORY[0x277CBEAA8] date];
      beginDate = self->_beginDate;
      self->_beginDate = date;

      endDate = self->_endDate;
      self->_endDate = 0;

      if (!self->_contextsByUUID)
      {
        v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v16 = self->_contextsByUUID;
        self->_contextsByUUID = v15;
      }

      v17 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
      {
        v18 = self->_beginDate;
        *buf = 136315394;
        v37 = "[SVXDeviceSetupManager _setContext:forUUID:]";
        v38 = 2112;
        v39 = v18;
        _os_log_impl(&dword_2695B9000, v17, OS_LOG_TYPE_INFO, "%s Begin device setup at %@.", buf, 0x16u);
      }
    }

    [(NSMutableDictionary *)self->_contextsByUUID setObject:contextCopy forKey:dCopy];
LABEL_10:
    v19 = 1;
    goto LABEL_11;
  }

  v21 = [(NSMutableDictionary *)contextsByUUID objectForKey:dCopy];

  if (v21)
  {
    [(NSMutableDictionary *)self->_contextsByUUID removeObjectForKey:dCopy];
    if (![(NSMutableDictionary *)self->_contextsByUUID count])
    {
      v22 = self->_activatedDeviceSetupFlowScene;
      self->_activatedDeviceSetupFlowScene = 0;

      date2 = [MEMORY[0x277CBEAA8] date];
      v24 = self->_endDate;
      self->_endDate = date2;

      v25 = self->_contextsByUUID;
      self->_contextsByUUID = 0;

      v26 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
      {
        v27 = self->_endDate;
        *buf = 136315394;
        v37 = "[SVXDeviceSetupManager _setContext:forUUID:]";
        v38 = 2112;
        v39 = v27;
        _os_log_impl(&dword_2695B9000, v26, OS_LOG_TYPE_INFO, "%s End device setup at %@.", buf, 0x16u);
      }

      v28 = self->_beginDate;
      v29 = self->_endDate;
      performer = [(SVXModule *)self->_module performer];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __45__SVXDeviceSetupManager__setContext_forUUID___block_invoke;
      v33[3] = &unk_279C68ED0;
      v33[4] = self;
      v34 = v28;
      v35 = v29;
      v31 = v29;
      v32 = v28;
      [performer performBlock:v33 afterDelay:60.0];
    }

    goto LABEL_10;
  }

  v19 = 0;
LABEL_11:
  v20 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v37 = "[SVXDeviceSetupManager _setContext:forUUID:]";
    v38 = 1024;
    LODWORD(v39) = v19;
    _os_log_impl(&dword_2695B9000, v20, OS_LOG_TYPE_INFO, "%s needsUpdate = %d", buf, 0x12u);
  }

  if (v19)
  {
    [(SVXDeviceSetupManager *)self _updateEffectiveContext];
  }
}

void __45__SVXDeviceSetupManager__setContext_forUUID___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CEF098];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v18 = *(*(a1 + 32) + 48);
    v23 = 136315394;
    v24 = "[SVXDeviceSetupManager _setContext:forUUID:]_block_invoke";
    v25 = 2112;
    v26 = v18;
    _os_log_debug_impl(&dword_2695B9000, v3, OS_LOG_TYPE_DEBUG, "%s contextsByUUID = %@", &v23, 0x16u);
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 40);
    v20 = *(*(a1 + 32) + 56);
    v23 = 136315650;
    v24 = "[SVXDeviceSetupManager _setContext:forUUID:]_block_invoke";
    v25 = 2112;
    v26 = v20;
    v27 = 2112;
    v28 = v19;
    _os_log_debug_impl(&dword_2695B9000, v3, OS_LOG_TYPE_DEBUG, "%s beginDate = %@ (actual), beginDate = %@ (expected)", &v23, 0x20u);
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v21 = *(*(a1 + 32) + 64);
    v22 = *(a1 + 48);
    v23 = 136315650;
    v24 = "[SVXDeviceSetupManager _setContext:forUUID:]_block_invoke";
    v25 = 2112;
    v26 = v21;
    v27 = 2112;
    v28 = v22;
    _os_log_debug_impl(&dword_2695B9000, v3, OS_LOG_TYPE_DEBUG, "%s endDate = %@ (actual), endDate = %@ (expected)", &v23, 0x20u);
  }

  if ([*(*(a1 + 32) + 48) count])
  {
    goto LABEL_20;
  }

  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 56);
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    if (!v5 || !v6)
    {
      goto LABEL_19;
    }

    v8 = [v5 isEqual:v6];

    if (!v8)
    {
LABEL_20:
      v12 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
      {
        v23 = 136315138;
        v24 = "[SVXDeviceSetupManager _setContext:forUUID:]_block_invoke";
        _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s No need to clean up device setup.", &v23, 0xCu);
      }

      return;
    }
  }

  v9 = *(a1 + 48);
  v5 = *(*(a1 + 32) + 64);
  v10 = v9;
  v7 = v10;
  if (v5 == v10)
  {

    goto LABEL_24;
  }

  if (!v5 || !v10)
  {
LABEL_19:

    goto LABEL_20;
  }

  v11 = [v5 isEqual:v10];

  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_24:
  v13 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
  {
    v23 = 136315138;
    v24 = "[SVXDeviceSetupManager _setContext:forUUID:]_block_invoke";
    _os_log_impl(&dword_2695B9000, v13, OS_LOG_TYPE_INFO, "%s Clean up device setup.", &v23, 0xCu);
  }

  v14 = *(a1 + 32);
  v15 = *(v14 + 56);
  *(v14 + 56) = 0;

  v16 = *(a1 + 32);
  v17 = *(v16 + 64);
  *(v16 + 64) = 0;

  [*(a1 + 32) _updateEffectiveContext];
}

- (void)_prepareForSetupWithContext:(id)context completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[SVXDeviceSetupManager _prepareForSetupWithContext:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = contextCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  performer = [(SVXModule *)self->_module performer];
  v10 = dispatch_group_create();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v18 = __Block_byref_object_copy__13784;
  v19 = __Block_byref_object_dispose__13785;
  v20 = [[SVXDeviceSetupFlowScene alloc] initWithSceneID:5 displayKeyFrames:0];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SVXDeviceSetupManager__prepareForSetupWithContext_completion___block_invoke;
  block[3] = &unk_279C68F20;
  v15 = completionCopy;
  v16 = buf;
  v14 = performer;
  v11 = completionCopy;
  v12 = performer;
  dispatch_group_notify(v10, MEMORY[0x277D85CD0], block);

  _Block_object_dispose(buf, 8);
}

void __64__SVXDeviceSetupManager__prepareForSetupWithContext_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = v2;
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    [v2 addObject:?];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__SVXDeviceSetupManager__prepareForSetupWithContext_completion___block_invoke_2;
  v7[3] = &unk_279C68EF8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 performBlock:v7];
}

void __64__SVXDeviceSetupManager__prepareForSetupWithContext_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = objc_alloc(MEMORY[0x277CCACA8]);
    v3 = AFBuildVersion();
    v6 = [v2 initWithFormat:@"HomePod Siri Device Setup Flow (Build %@)", v3];

    v4 = *(a1 + 40);
    v5 = [[SVXDeviceSetupFlow alloc] initWithIdentifier:v6 scenes:*(a1 + 32)];
    (*(v4 + 16))(v4, v5, 0);
  }
}

- (void)sessionManager:(id)manager didActivateWithContext:(id)context
{
  contextCopy = context;
  performer = [(SVXModule *)self->_module performer];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__SVXDeviceSetupManager_sessionManager_didActivateWithContext___block_invoke;
  v8[3] = &unk_279C68FE8;
  v8[4] = self;
  v9 = contextCopy;
  v7 = contextCopy;
  [performer performBlock:v8];
}

void __63__SVXDeviceSetupManager_sessionManager_didActivateWithContext___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 48) count])
  {
    v2 = [*(a1 + 40) systemEvent];
    if ([v2 type] == 7)
    {
      v3 = [v2 deviceSetupFlowScene];
      v4 = v3;
      if (v3)
      {
        v5 = [v3 copy];
        v6 = *(a1 + 32);
        v7 = *(v6 + 72);
        *(v6 + 72) = v5;

        v8 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
        {
          v9 = *(*(a1 + 32) + 72);
          v10 = 136315394;
          v11 = "[SVXDeviceSetupManager sessionManager:didActivateWithContext:]_block_invoke";
          v12 = 2112;
          v13 = v9;
          _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s activatedDeviceSetupFlowScene = %@", &v10, 0x16u);
        }

        [*(a1 + 32) _updateEffectiveContext];
      }
    }
  }
}

- (void)stopWithModuleInstanceProvider:(id)provider
{
  performer = [(SVXModule *)self->_module performer];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__SVXDeviceSetupManager_stopWithModuleInstanceProvider___block_invoke;
  v5[3] = &unk_279C68FC0;
  v5[4] = self;
  [performer performBlock:v5];
}

void __56__SVXDeviceSetupManager_stopWithModuleInstanceProvider___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  [*(*(a1 + 32) + 24) removeActivationListener:?];
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;
}

- (void)startWithModuleInstanceProvider:(id)provider platformDependencies:(id)dependencies
{
  providerCopy = provider;
  performer = [(SVXModule *)self->_module performer];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__SVXDeviceSetupManager_startWithModuleInstanceProvider_platformDependencies___block_invoke;
  v8[3] = &unk_279C68FE8;
  v8[4] = self;
  v9 = providerCopy;
  v7 = providerCopy;
  [performer performBlock:v8];
}

uint64_t __78__SVXDeviceSetupManager_startWithModuleInstanceProvider_platformDependencies___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) speechSynthesizer];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v5 = [*(a1 + 40) sessionManager];
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = v5;

  v8 = *(*(a1 + 32) + 24);

  return [v8 addActivationListener:?];
}

- (SVXDeviceSetupManager)initWithModule:(id)module
{
  moduleCopy = module;
  v13.receiver = self;
  v13.super_class = SVXDeviceSetupManager;
  v6 = [(SVXDeviceSetupManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_module, module);
    v8 = objc_alloc_init(SVXDeviceSetupAnnouncer);
    announcer = v7->_announcer;
    v7->_announcer = v8;

    v10 = objc_alloc_init(SVXAudioServicesUtils);
    audioServicesUtils = v7->_audioServicesUtils;
    v7->_audioServicesUtils = v10;
  }

  return v7;
}

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  performer = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__SVXDeviceSetupManager_removeListener___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = listenerCopy;
  v6 = listenerCopy;
  [performer performBlock:v7];
}

- (void)addListener:(id)listener
{
  listenerCopy = listener;
  performer = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__SVXDeviceSetupManager_addListener___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = listenerCopy;
  v6 = listenerCopy;
  [performer performBlock:v7];
}

- (void)getContextWithCompletion:(id)completion
{
  completionCopy = completion;
  performer = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__SVXDeviceSetupManager_getContextWithCompletion___block_invoke;
  v7[3] = &unk_279C68EF8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [performer performBlock:v7];
}

uint64_t __50__SVXDeviceSetupManager_getContextWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 32) + 80));
  }

  return result;
}

- (void)setContext:(id)context forUUID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dCopy = d;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v16 = "[SVXDeviceSetupManager setContext:forUUID:]";
    v17 = 2112;
    v18 = contextCopy;
    v19 = 2112;
    v20 = dCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@, uuid = %@", buf, 0x20u);
  }

  performer = [(SVXModule *)self->_module performer];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__SVXDeviceSetupManager_setContext_forUUID___block_invoke;
  v12[3] = &unk_279C68ED0;
  v12[4] = self;
  v13 = contextCopy;
  v14 = dCopy;
  v10 = dCopy;
  v11 = contextCopy;
  [performer performBlock:v12];
}

- (void)prepareForSetupWithContext:(id)context completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[SVXDeviceSetupManager prepareForSetupWithContext:completion:]";
    v17 = 2112;
    v18 = contextCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  [(SVXAudioServicesUtils *)self->_audioServicesUtils audioServicesActivateWithTimeout];
  performer = [(SVXModule *)self->_module performer];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__SVXDeviceSetupManager_prepareForSetupWithContext_completion___block_invoke;
  v12[3] = &unk_279C68EA8;
  v12[4] = self;
  v13 = contextCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = contextCopy;
  [performer performBlock:v12];
}

@end