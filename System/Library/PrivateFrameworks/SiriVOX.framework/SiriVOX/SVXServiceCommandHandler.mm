@interface SVXServiceCommandHandler
- (BOOL)isCommandUUFR:(id)r;
- (SVXServiceCommandHandler)initWithModule:(id)module;
- (SVXServiceCommandHandler)initWithModule:(id)module fallbackHandler:(id)handler commandHandlerRegistryFactory:(id)factory delayedActionStoreFactory:(id)storeFactory;
- (id)fallbackModeProvider;
- (void)_handleCommand:(id)command taskTracker:(id)tracker completion:(id)completion;
- (void)_reset;
- (void)handleCommand:(id)command taskTracker:(id)tracker completion:(id)completion;
- (void)handleResult:(id)result forCommand:(id)command completion:(id)completion;
- (void)reset;
- (void)startWithModuleInstanceProvider:(id)provider platformDependencies:(id)dependencies;
- (void)stopWithModuleInstanceProvider:(id)provider;
@end

@implementation SVXServiceCommandHandler

- (void)handleResult:(id)result forCommand:(id)command completion:(id)completion
{
  resultCopy = result;
  commandCopy = command;
  completionCopy = completion;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __63__SVXServiceCommandHandler_handleResult_forCommand_completion___block_invoke;
  v42[3] = &unk_279C68EF8;
  v11 = completionCopy;
  v44 = v11;
  v12 = commandCopy;
  v43 = v12;
  v13 = MEMORY[0x26D642680](v42);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __63__SVXServiceCommandHandler_handleResult_forCommand_completion___block_invoke_2;
  v39[3] = &unk_279C68EF8;
  v14 = v11;
  v41 = v14;
  v15 = v12;
  v40 = v15;
  v16 = MEMORY[0x26D642680](v39);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __63__SVXServiceCommandHandler_handleResult_forCommand_completion___block_invoke_3;
  v36[3] = &unk_279C667D0;
  v17 = v14;
  v37 = v15;
  v38 = v17;
  v18 = v15;
  v19 = MEMORY[0x26D642680](v36);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __63__SVXServiceCommandHandler_handleResult_forCommand_completion___block_invoke_4;
  v34[3] = &unk_279C667F8;
  v35 = v17;
  v20 = v17;
  v21 = MEMORY[0x26D642680](v34);
  performer = [(SVXModule *)self->_module performer];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __63__SVXServiceCommandHandler_handleResult_forCommand_completion___block_invoke_5;
  v28[3] = &unk_279C66820;
  v29 = resultCopy;
  v30 = v13;
  v31 = v16;
  v32 = v19;
  v33 = v21;
  v23 = v21;
  v24 = v19;
  v25 = v16;
  v26 = v13;
  v27 = resultCopy;
  [performer performBlock:v28];
}

void __63__SVXServiceCommandHandler_handleResult_forCommand_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v3 = objc_alloc_init(MEMORY[0x277D47210]);
    v2 = [*(a1 + 32) aceId];
    [v3 setRefId:v2];

    (*(*(a1 + 40) + 16))();
  }
}

void __63__SVXServiceCommandHandler_handleResult_forCommand_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v3 = objc_alloc_init(MEMORY[0x277D47218]);
    v2 = [*(a1 + 32) aceId];
    [v3 setRefId:v2];

    (*(*(a1 + 40) + 16))();
  }
}

void __63__SVXServiceCommandHandler_handleResult_forCommand_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 40))
  {
    v5 = MEMORY[0x277D47208];
    v6 = a3;
    v8 = objc_alloc_init(v5);
    [v8 setErrorCode:a2];
    [v8 setReason:v6];

    v7 = [*(a1 + 32) aceId];
    [v8 setRefId:v7];

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __63__SVXServiceCommandHandler_handleResult_forCommand_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_handleCommand:(id)command taskTracker:(id)tracker completion:(id)completion
{
  v27[1] = *MEMORY[0x277D85DE8];
  commandCopy = command;
  trackerCopy = tracker;
  completionCopy = completion;
  v11 = [(SVXServiceCommandHandlerRegistry *)self->_handlerRegistry handlersForCommand:commandCopy];
  if (![v11 count])
  {
    v27[0] = self->_fallbackHandler;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];

    v11 = v12;
  }

  objc_initWeak(&location, self);
  v13 = [SVXServiceCommandTransaction alloc];
  performer = [(SVXModule *)self->_module performer];
  v15 = [(NSMutableSet *)self->_transactions copy];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __66__SVXServiceCommandHandler__handleCommand_taskTracker_completion___block_invoke;
  v22 = &unk_279C667A8;
  objc_copyWeak(&v25, &location);
  v16 = commandCopy;
  v23 = v16;
  v17 = completionCopy;
  v24 = v17;
  v18 = [(SVXServiceCommandTransaction *)v13 initWithPerformer:performer command:v16 handlers:v11 taskTracker:trackerCopy dependencies:v15 completion:&v19];

  [(NSMutableSet *)self->_transactions addObject:v18, v19, v20, v21, v22];
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __66__SVXServiceCommandHandler__handleCommand_taskTracker_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained handleResult:v3 forCommand:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)_reset
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    transactions = self->_transactions;
    v6 = v4;
    *buf = 136315394;
    v22 = "[SVXServiceCommandHandler _reset]";
    v23 = 2048;
    v24 = [(NSMutableSet *)transactions count];
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s Invalidating %tu transactions...", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_transactions;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v16 + 1) + 8 * v11++) invalidate];
      }

      while (v9 != v11);
      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v12 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
  {
    v13 = self->_transactions;
    v14 = v12;
    v15 = [(NSMutableSet *)v13 count];
    *buf = 136315394;
    v22 = "[SVXServiceCommandHandler _reset]";
    v23 = 2048;
    v24 = v15;
    _os_log_impl(&dword_2695B9000, v14, OS_LOG_TYPE_INFO, "%s Removing %tu transactions...", buf, 0x16u);
  }

  [(NSMutableSet *)self->_transactions removeAllObjects];
  [(SVXServiceCommandDelayedActionStore *)self->_delayedActionStore removeAllActions];
}

- (void)stopWithModuleInstanceProvider:(id)provider
{
  performer = [(SVXModule *)self->_module performer];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__SVXServiceCommandHandler_stopWithModuleInstanceProvider___block_invoke;
  v5[3] = &unk_279C68FC0;
  v5[4] = self;
  [performer performBlock:v5];
}

void __59__SVXServiceCommandHandler_stopWithModuleInstanceProvider___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _reset];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  *(v4 + 56) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  *(v6 + 48) = 0;
}

- (void)startWithModuleInstanceProvider:(id)provider platformDependencies:(id)dependencies
{
  v80 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  dependenciesCopy = dependencies;
  create = [(SVXServiceCommandDelayedActionStoreProvider *)self->_delayedActionStoreFactory create];
  delayedActionStore = self->_delayedActionStore;
  self->_delayedActionStore = create;

  sessionManager = [providerCopy sessionManager];
  v66 = providerCopy;
  speechSynthesizer = [providerCopy speechSynthesizer];
  v65 = dependenciesCopy;
  v67 = speechSynthesizer;
  v68 = sessionManager;
  if (![dependenciesCopy count])
  {
    v12 = 0;
    goto LABEL_22;
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v13 = dependenciesCopy;
  v14 = [v13 countByEnumeratingWithState:&v71 objects:v79 count:16];
  if (!v14)
  {

    goto LABEL_22;
  }

  v15 = v14;
  v16 = 0;
  v17 = *v72;
  v18 = MEMORY[0x277CEF090];
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v72 != v17)
      {
        objc_enumerationMutation(v13);
      }

      v20 = *(*(&v71 + 1) + 8 * i);
      if ([v20 type] == 1)
      {
        serviceCommandHandler = [v20 serviceCommandHandler];
        if (serviceCommandHandler)
        {
          [v12 addObject:serviceCommandHandler];
        }
      }

      else
      {
        if ([v20 type] != 4)
        {
          continue;
        }

        if (v16)
        {
          v22 = *v18;
          if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v78 = "[SVXServiceCommandHandler startWithModuleInstanceProvider:platformDependencies:]";
            _os_log_error_impl(&dword_2695B9000, v22, OS_LOG_TYPE_ERROR, "%s More than one platform dependency of type SVXPlatformDependencyTypeSiriModesManager has been provided. Will pick the last one in the array.", buf, 0xCu);
          }
        }

        [v20 siriModesManager];
        v16 = serviceCommandHandler = v16;
      }
    }

    v15 = [v13 countByEnumeratingWithState:&v71 objects:v79 count:16];
  }

  while (v15);

  speechSynthesizer = v67;
  if (v16)
  {
    modeProvider = [v16 modeProvider];
    goto LABEL_23;
  }

LABEL_22:
  modeProvider = self->_fallbackModeProvider;
  v16 = 0;
LABEL_23:
  v24 = objc_alloc_init(SVXInstrumentationUtilities);
  v25 = [[SVXDialogTransformer alloc] initWithModeProvider:modeProvider];
  v26 = objc_alloc_init(SVXSpeechSynthesisResultConverter);
  v69 = v24;
  v64 = modeProvider;
  v27 = [[SVXServiceCommandHandlerUIAddViews alloc] initWithSpeechSynthesizer:speechSynthesizer module:self->_module instrumentationUtils:v24 modeProvider:modeProvider dialogTransformer:v25 synthesisResultConverter:v26];
  v28 = objc_alloc_init(SVXSpeechSynthesisUtils);
  v29 = [[SVXServiceCommandHandlerUISayIt alloc] initWithSpeechSynthesizer:speechSynthesizer module:self->_module instrumentationUtils:v24 synthesisResultConverter:v26 speechSynthesisUtils:v28];
  v76[0] = v27;
  v76[1] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:2];
  v60 = v28;
  v57 = [[SVXServiceCommandHandlerPreSynthesizeTTS alloc] initWithSpeechSynthesizer:speechSynthesizer speechSynthesisUtils:v28];
  v75[0] = v57;
  v58 = v30;
  v63 = v25;
  v56 = [[SVXServiceCommandHandlerUIAddDialogs alloc] initWithHandlers:v30 dialogTransformer:v25];
  v75[1] = v56;
  v75[2] = v27;
  v61 = v27;
  v55 = [[SVXServiceCommandHandlerUICloseAssistant alloc] initWithSessionManager:v68];
  v75[3] = v55;
  v31 = [SVXServiceCommandHandlerUIDelayedActionCancelCommand alloc];
  v32 = self->_delayedActionStore;
  performer = [(SVXModule *)self->_module performer];
  v53 = [(SVXServiceCommandHandlerUIDelayedActionCancelCommand *)v31 initWithDelayedActionStore:v32 performer:performer];
  v75[4] = v53;
  v33 = [SVXServiceCommandHandlerUIDelayedActionCommand alloc];
  v34 = self->_delayedActionStore;
  performer2 = [(SVXModule *)self->_module performer];
  v51 = [(SVXServiceCommandHandlerUIDelayedActionCommand *)v33 initWithDelayedActionStore:v34 sessionManager:v68 performer:performer2];
  v75[5] = v51;
  v35 = [SVXServiceCommandHandlerUIRepeatIt alloc];
  performer3 = [(SVXModule *)self->_module performer];
  v62 = v26;
  v36 = [(SVXServiceCommandHandlerUIRepeatIt *)v35 initWithSpeechSynthesizer:speechSynthesizer performer:performer3 instrumentationUtils:v69 synthesisResultConverter:v26];
  v75[6] = v36;
  v75[7] = v29;
  v59 = v29;
  v37 = [SVXServiceCommandHandlerUIShowRequestHandlingStatus alloc];
  performer4 = [(SVXModule *)self->_module performer];
  v39 = [(SVXServiceCommandHandlerUIShowRequestHandlingStatus *)v37 initWithSessionManager:v68 performer:performer4];
  v75[8] = v39;
  v40 = [[SVXServiceCommandHandlerClientCoordinationPhoneCall alloc] initWithSessionManager:v68];
  v75[9] = v40;
  v41 = [[_SVXServiceCommandHandlerSmsPlayAudio alloc] initWithSessionManager:v68 module:self->_module];
  v75[10] = v41;
  v42 = [[_SVXServiceCommandHandlerPlayVoiceMail alloc] initWithSessionManager:v68 module:self->_module];
  v75[11] = v42;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:12];

  v44 = v43;
  if ([v12 count])
  {
    v45 = [v43 arrayByAddingObjectsFromArray:v12];
  }

  else
  {
    v45 = v43;
  }

  v46 = v45;
  v47 = [(SVXServiceCommandHandlerRegistryProvider *)self->_commandHandlerRegistryFactory createWithHandlers:v45];
  handlerRegistry = self->_handlerRegistry;
  self->_handlerRegistry = v47;

  performer5 = [(SVXModule *)self->_module performer];
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __81__SVXServiceCommandHandler_startWithModuleInstanceProvider_platformDependencies___block_invoke;
  v70[3] = &unk_279C68FC0;
  v70[4] = self;
  [performer5 performBlock:v70];
}

uint64_t __81__SVXServiceCommandHandler_startWithModuleInstanceProvider_platformDependencies___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 56) = objc_alloc_init(MEMORY[0x277CBEB58]);

  return MEMORY[0x2821F96F8]();
}

- (id)fallbackModeProvider
{
  fallbackModeProvider = self->_fallbackModeProvider;
  if (!fallbackModeProvider)
  {
    v4 = [objc_alloc(MEMORY[0x277D5DA00]) initWithFixedMode:1];
    v5 = self->_fallbackModeProvider;
    self->_fallbackModeProvider = v4;

    fallbackModeProvider = self->_fallbackModeProvider;
  }

  return fallbackModeProvider;
}

- (SVXServiceCommandHandler)initWithModule:(id)module fallbackHandler:(id)handler commandHandlerRegistryFactory:(id)factory delayedActionStoreFactory:(id)storeFactory
{
  moduleCopy = module;
  handlerCopy = handler;
  factoryCopy = factory;
  storeFactoryCopy = storeFactory;
  v18.receiver = self;
  v18.super_class = SVXServiceCommandHandler;
  v15 = [(SVXServiceCommandHandler *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_module, module);
    objc_storeStrong(&v16->_fallbackHandler, handler);
    objc_storeStrong(&v16->_commandHandlerRegistryFactory, factory);
    objc_storeStrong(&v16->_delayedActionStoreFactory, storeFactory);
  }

  return v16;
}

- (SVXServiceCommandHandler)initWithModule:(id)module
{
  moduleCopy = module;
  v5 = [SVXServiceCommandHandlerFallback alloc];
  v6 = +[SVXServiceCommandResult resultIgnored];
  v7 = [(SVXServiceCommandHandlerFallback *)v5 initWithResult:v6];
  v8 = objc_alloc_init(SVXServiceCommandHandlerRegistryProvider);
  v9 = objc_alloc_init(SVXServiceCommandDelayedActionStoreProvider);
  v10 = [(SVXServiceCommandHandler *)self initWithModule:moduleCopy fallbackHandler:v7 commandHandlerRegistryFactory:v8 delayedActionStoreFactory:v9];

  return v10;
}

- (void)handleCommand:(id)command taskTracker:(id)tracker completion:(id)completion
{
  commandCopy = command;
  trackerCopy = tracker;
  completionCopy = completion;
  performer = [(SVXModule *)self->_module performer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__SVXServiceCommandHandler_handleCommand_taskTracker_completion___block_invoke;
  v15[3] = &unk_279C69038;
  v15[4] = self;
  v16 = commandCopy;
  v17 = trackerCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = trackerCopy;
  v14 = commandCopy;
  [performer performBlock:v15];
}

- (BOOL)isCommandUUFR:(id)r
{
  v15 = *MEMORY[0x277D85DE8];
  rCopy = r;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(SVXServiceCommandHandlerRegistry *)self->_handlerRegistry handlersForCommand:rCopy, 0];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) isCommandUUFR:rCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)reset
{
  performer = [(SVXModule *)self->_module performer];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__SVXServiceCommandHandler_reset__block_invoke;
  v4[3] = &unk_279C68FC0;
  v4[4] = self;
  [performer performBlock:v4];
}

@end