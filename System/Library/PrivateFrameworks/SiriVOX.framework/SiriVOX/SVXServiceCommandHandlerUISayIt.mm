@interface SVXServiceCommandHandlerUISayIt
- (BOOL)shouldDependOnCommand:(id)command;
- (SVXServiceCommandHandlerUISayIt)initWithSpeechSynthesizer:(id)synthesizer module:(id)module instrumentationUtils:(id)utils synthesisResultConverter:(id)converter speechSynthesisUtils:(id)synthesisUtils;
- (SVXServiceCommandHandlerUISayIt)initWithSpeechSynthesizer:(id)synthesizer module:(id)module instrumentationUtils:(id)utils synthesisResultConverter:(id)converter speechSynthesisUtils:(id)synthesisUtils utteranceParserProvider:(id)provider expressionParsingServiceProvider:(id)serviceProvider parseableExpressionFactory:(id)self0 sayItChildTaskFactory:(id)self1 afUtilities:(id)self2;
- (void)handleCommand:(id)command withContext:(id)context taskTracker:(id)tracker completion:(id)completion;
- (void)prepareToHandleCommand:(id)command completion:(id)completion;
@end

@implementation SVXServiceCommandHandlerUISayIt

- (void)handleCommand:(id)command withContext:(id)context taskTracker:(id)tracker completion:(id)completion
{
  v58[1] = *MEMORY[0x277D85DE8];
  commandCopy = command;
  contextCopy = context;
  trackerCopy = tracker;
  completionCopy = completion;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SVXServiceCommandHandlerUISayIt.m" lineNumber:165 description:{@"Invalid parameter not satisfying: %@", @"[command isKindOfClass:[SAUISayIt class]]"}];
  }

  v14 = commandCopy;
  kdebug_trace();
  sayItChildTaskFactory = self->_sayItChildTaskFactory;
  preferences = [(SVXModule *)self->_module preferences];
  v42 = -[SVXSayItChildTaskProvider createWithCommand:taskTracker:listenAfterSpeakingDisabled:](sayItChildTaskFactory, "createWithCommand:taskTracker:listenAfterSpeakingDisabled:", v14, trackerCopy, [preferences listenAfterSpeakingDisabled]);

  dialogIdentifier = [v14 dialogIdentifier];
  af_IsInternalInstall = [(SVXAFUtilitiesWrapper *)self->_afUtilities af_IsInternalInstall];
  v19 = 0;
  if (af_IsInternalInstall)
  {
    if (dialogIdentifier)
    {
      v20 = dialogIdentifier;
    }

    else
    {
      v20 = &stru_287A1C130;
    }

    v57 = @"dialogIdentifier";
    v58[0] = v20;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:&v57 count:1];
  }

  v40 = v19;
  v21 = trackerCopy;
  objc_opt_class();
  v43 = contextCopy;
  v44 = dialogIdentifier;
  if (objc_opt_isKindOfClass())
  {
    message = contextCopy;
  }

  else
  {
    message = [v14 message];
  }

  v23 = message;
  v24 = MEMORY[0x277CEF098];
  v25 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v54 = "[SVXServiceCommandHandlerUISayIt handleCommand:withContext:taskTracker:completion:]";
    v55 = 2112;
    v56 = v23;
    _os_log_impl(&dword_2695B9000, v25, OS_LOG_TYPE_INFO, "%s preparedSpeakableText = %@", buf, 0x16u);
  }

  speechSynthesisUtils = self->_speechSynthesisUtils;
  audioData = [v14 audioData];
  v28 = [(SVXSpeechSynthesisUtils *)speechSynthesisUtils createAudioFromUIAudioData:audioData];

  v29 = *v24;
  if (os_log_type_enabled(*v24, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v54 = "[SVXServiceCommandHandlerUISayIt handleCommand:withContext:taskTracker:completion:]";
    v55 = 2112;
    v56 = v28;
    _os_log_impl(&dword_2695B9000, v29, OS_LOG_TYPE_INFO, "%s presynthesizedAudio = %@", buf, 0x16u);
  }

  instrumentationUtils = self->_instrumentationUtils;
  instrumentationContext = [v21 instrumentationContext];
  context = [v21 context];
  dialogPhase = [context dialogPhase];
  [(SVXInstrumentationUtilities *)instrumentationUtils emitUUFRSaid:instrumentationContext dialogIdentifier:v44 dialogPhase:dialogPhase];

  v34 = -[SVXSpeechSynthesisRequest initWithPriority:options:speakableText:speakableContext:localizationKey:presynthesizedAudio:streamID:]([SVXSpeechSynthesisRequest alloc], "initWithPriority:options:speakableText:speakableContext:localizationKey:presynthesizedAudio:streamID:", 2, [v14 canUseServerTTS], v23, 0, 0, v28, 0);
  speechSynthesizer = self->_speechSynthesizer;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __84__SVXServiceCommandHandlerUISayIt_handleCommand_withContext_taskTracker_completion___block_invoke;
  v50[3] = &unk_279C68FE8;
  v51 = v34;
  v52 = v14;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __84__SVXServiceCommandHandlerUISayIt_handleCommand_withContext_taskTracker_completion___block_invoke_41;
  v45[3] = &unk_279C67D78;
  v46 = v51;
  v47 = v14;
  selfCopy = self;
  v49 = completionCopy;
  v36 = v51;
  v37 = completionCopy;
  v38 = v14;
  [(SVXSpeechSynthesizer *)speechSynthesizer enqueueRequest:v36 languageCode:0 voiceName:0 gender:0 audioSessionID:0 preparation:v50 finalization:v45 taskTracker:v42 analyticsContext:v40];
}

void __84__SVXServiceCommandHandlerUISayIt_handleCommand_withContext_taskTracker_completion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 136315650;
    v6 = "[SVXServiceCommandHandlerUISayIt handleCommand:withContext:taskTracker:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_2695B9000, v2, OS_LOG_TYPE_INFO, "%s Begin TTS request %@ for %@.", &v5, 0x20u);
  }
}

void __84__SVXServiceCommandHandlerUISayIt_handleCommand_withContext_taskTracker_completion___block_invoke_41(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v6 = a1[5];
    v9 = 136315906;
    v10 = "[SVXServiceCommandHandlerUISayIt handleCommand:withContext:taskTracker:completion:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s End TTS request %@ for %@ with result %@.", &v9, 0x2Au);
  }

  v7 = a1[7];
  if (v7)
  {
    v8 = [*(a1[6] + 72) toServiceCommandResult:v3];
    (*(v7 + 16))(v7, v8);
  }
}

- (void)prepareToHandleCommand:(id)command completion:(id)completion
{
  v37[1] = *MEMORY[0x277D85DE8];
  commandCopy = command;
  completionCopy = completion;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SVXServiceCommandHandlerUISayIt.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"[command isKindOfClass:[SAUISayIt class]]"}];
  }

  v9 = commandCopy;
  context = [v9 context];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [context svx_isDeferredExpressionContextObject])
  {
    v11 = objc_alloc(MEMORY[0x277CBEAF8]);
    preferences = [(SVXModule *)self->_module preferences];
    languageCode = [preferences languageCode];
    v14 = [v11 initWithLocaleIdentifier:languageCode];

    v15 = [(SVXAFSpeakableUtteranceParserProvider *)self->_utteranceParserProvider getWithLocale:v14];
    groupIdentifier = [context groupIdentifier];
    v17 = [_SVXSpeakableNamespaceDomainOccurrenceProvider providerForDomain:groupIdentifier];

    [v15 registerProvider:v17 forNamespace:*MEMORY[0x277CEF568]];
    message = [v9 message];
    v36 = 0;
    v19 = [v15 parseStringWithFormat:message error:&v36];
    v20 = v36;

    if (v20 || ![v17 count])
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1, 0);
      }
    }

    else
    {
      expressionParsingServiceProvider = self->_expressionParsingServiceProvider;
      v22 = objc_alloc_init(MEMORY[0x277CEF1D8]);
      v31 = [(_SVXRemoteExpressionParsingServiceProvider *)expressionParsingServiceProvider getWithAceHandler:v22];

      parseableExpressionFactory = self->_parseableExpressionFactory;
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      [v9 message];
      v26 = v32 = v14;
      v27 = [(SVXSAUILParseableExpressionProvider *)parseableExpressionFactory createWithAceId:uUIDString context:context expressionString:v26];

      v37[0] = v27;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __69__SVXServiceCommandHandlerUISayIt_prepareToHandleCommand_completion___block_invoke;
      v33[3] = &unk_279C67720;
      v34 = v27;
      v35 = completionCopy;
      v29 = v27;
      [v31 parseExpressions:v28 targetDevice:0 reply:v33];

      v14 = v32;
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }
}

void __69__SVXServiceCommandHandlerUISayIt_prepareToHandleCommand_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 firstObject];
  v6 = v5;
  if (a2 && ([v5 parseableExpression], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqual:", *(a1 + 32)), v7, v8))
  {
    v9 = [v6 parsedOutput];
  }

  else
  {
    v9 = 0;
  }

  v11 = v9;
  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v11);
  }
}

- (BOOL)shouldDependOnCommand:(id)command
{
  commandCopy = command;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (SVXServiceCommandHandlerUISayIt)initWithSpeechSynthesizer:(id)synthesizer module:(id)module instrumentationUtils:(id)utils synthesisResultConverter:(id)converter speechSynthesisUtils:(id)synthesisUtils utteranceParserProvider:(id)provider expressionParsingServiceProvider:(id)serviceProvider parseableExpressionFactory:(id)self0 sayItChildTaskFactory:(id)self1 afUtilities:(id)self2
{
  synthesizerCopy = synthesizer;
  moduleCopy = module;
  moduleCopy2 = module;
  utilsCopy = utils;
  utilsCopy2 = utils;
  converterCopy = converter;
  converterCopy2 = converter;
  selfCopy = self;
  v44 = converterCopy2;
  synthesisUtilsCopy = synthesisUtils;
  providerCopy = provider;
  providerCopy2 = provider;
  serviceProviderCopy = serviceProvider;
  factoryCopy = factory;
  taskFactoryCopy = taskFactory;
  utilitiesCopy = utilities;
  if (synthesizerCopy)
  {
    if (moduleCopy2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"SVXServiceCommandHandlerUISayIt.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"speechSynthesizer != nil"}];

    if (moduleCopy2)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"SVXServiceCommandHandlerUISayIt.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"module != nil"}];

LABEL_3:
  v46.receiver = selfCopy;
  v46.super_class = SVXServiceCommandHandlerUISayIt;
  v23 = [(SVXServiceCommandHandlerUISayIt *)&v46 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_speechSynthesizer, synthesizer);
    objc_storeStrong(&v24->_module, moduleCopy);
    objc_storeStrong(&v24->_instrumentationUtils, utilsCopy);
    objc_storeStrong(&v24->_synthesisResultConverter, converterCopy);
    objc_storeStrong(&v24->_speechSynthesisUtils, synthesisUtils);
    objc_storeStrong(&v24->_utteranceParserProvider, providerCopy);
    objc_storeStrong(&v24->_expressionParsingServiceProvider, serviceProvider);
    objc_storeStrong(&v24->_parseableExpressionFactory, factory);
    objc_storeStrong(&v24->_sayItChildTaskFactory, taskFactory);
    objc_storeStrong(&v24->_afUtilities, utilities);
    v25 = objc_alloc(MEMORY[0x277CCACA8]);
    supportedCommandClass = [objc_opt_class() supportedCommandClass];
    v27 = NSStringFromClass(supportedCommandClass);
    v28 = [v25 initWithFormat:@"com.apple.SiriVOXService.service-command.%@", v27];
    identifier = v24->_identifier;
    v24->_identifier = v28;
  }

  return v24;
}

- (SVXServiceCommandHandlerUISayIt)initWithSpeechSynthesizer:(id)synthesizer module:(id)module instrumentationUtils:(id)utils synthesisResultConverter:(id)converter speechSynthesisUtils:(id)synthesisUtils
{
  synthesisUtilsCopy = synthesisUtils;
  converterCopy = converter;
  utilsCopy = utils;
  moduleCopy = module;
  synthesizerCopy = synthesizer;
  v22 = objc_alloc_init(SVXAFSpeakableUtteranceParserProvider);
  v16 = objc_alloc_init(_SVXRemoteExpressionParsingServiceProvider);
  v17 = objc_alloc_init(SVXSAUILParseableExpressionProvider);
  v18 = objc_alloc_init(SVXSayItChildTaskProvider);
  v19 = objc_alloc_init(SVXAFUtilitiesWrapper);
  v20 = [(SVXServiceCommandHandlerUISayIt *)self initWithSpeechSynthesizer:synthesizerCopy module:moduleCopy instrumentationUtils:utilsCopy synthesisResultConverter:converterCopy speechSynthesisUtils:synthesisUtilsCopy utteranceParserProvider:v22 expressionParsingServiceProvider:v16 parseableExpressionFactory:v17 sayItChildTaskFactory:v18 afUtilities:v19];

  return v20;
}

@end