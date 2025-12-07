@interface INSExtensionService
- (BOOL)_errorImpliesCloudRelay:(id)relay;
- (BOOL)_isVoiceShortcutsRemoteExecutionUnavailable:(id)unavailable;
- (BOOL)_prewarmExtensionWithIntent:(id)intent applicationIdentifier:(id)identifier command:(id)command completionHandler:(id)handler;
- (BOOL)_shouldPrepareAudioSessionForCommand:(id)command intent:(id)intent;
- (INExtensionContext)extensionContext;
- (INSExtensionService)initWithOptions:(id)options;
- (INSExtensionServiceDelegate)delegate;
- (NSArray)airPlayRouteIdentifiers;
- (NSArray)commandIdentifiers;
- (id)_connectionForIntent:(id)intent;
- (id)_extensionInputItems;
- (id)_siriLanguageCode;
- (id)_updatedEventContextWithExtensionLoadType:(id)type wasPrewarmed:(BOOL)prewarmed;
- (id)analytics:(id)analytics contextDictionaryForCommand:(id)command;
- (id)analytics:(id)analytics contextDictionaryForError:(id)error;
- (id)completionHandlerForAppLaunchCommand:(id)command withCompletion:(id)completion;
- (void)_extensionRequestDidFinishForIntent:(id)intent error:(id)error;
- (void)_extensionRequestWillStartForIntent:(id)intent;
- (void)_logEventWithType:(int64_t)type context:(id)context contextNoCopy:(BOOL)copy;
- (void)_logPrewarmDidEndWithCommand:(id)command applicationIdentifier:(id)identifier wasPrewarmed:(BOOL)prewarmed completionHandler:(id)handler;
- (void)_requiresHandlingCommand:(id)command completion:(id)completion;
- (void)handleCommand:(id)command fromRemoteDevice:(id)device completionHandler:(id)handler;
- (void)resetExternalResources;
- (void)setAirPlayRouteIdentifiers:(id)identifiers;
@end

@implementation INSExtensionService

- (INExtensionContext)extensionContext
{
  extensionContext = self->_extensionContext;
  if (!extensionContext)
  {
    v4 = objc_alloc_init(MEMORY[0x277CD3BF8]);
    v5 = self->_extensionContext;
    self->_extensionContext = v4;

    extensionContext = self->_extensionContext;
  }

  return extensionContext;
}

- (INSExtensionServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_siriLanguageCode
{
  v9 = *MEMORY[0x277D85DE8];
  delegate = [(INSExtensionService *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate siriLanguageCodeForExtensionService:self];
  }

  else
  {
    v5 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[INSExtensionService _siriLanguageCode]";
      _os_log_error_impl(&dword_25553C000, v5, OS_LOG_TYPE_ERROR, "%s Extension service delegate does not respond to siriLanguageCodeForExtensionService:", &v7, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

- (id)_extensionInputItems
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = MEMORY[0x277CCAAB0];
  extensionContext = [(INSExtensionService *)self extensionContext];
  v6 = [v4 archivedDataWithRootObject:extensionContext requiringSecureCoding:1 error:0];

  [v3 if_setObjectIfNonNil:v6 forKey:*MEMORY[0x277CD4458]];
  _siriLanguageCode = [(INSExtensionService *)self _siriLanguageCode];
  [v3 if_setObjectIfNonNil:_siriLanguageCode forKey:*MEMORY[0x277CD4460]];

  v8 = objc_alloc_init(MEMORY[0x277CCA9D8]);
  [v8 setUserInfo:v3];
  v11[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  return v9;
}

- (id)completionHandlerForAppLaunchCommand:(id)command withCompletion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__INSExtensionService_completionHandlerForAppLaunchCommand_withCompletion___block_invoke;
  v11[3] = &unk_2797EAC28;
  v12 = commandCopy;
  v13 = completionCopy;
  v7 = commandCopy;
  v8 = completionCopy;
  v9 = MEMORY[0x259C379F0](v11);

  return v9;
}

uint64_t __75__INSExtensionService_completionHandlerForAppLaunchCommand_withCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  a3;
  if (a2)
  {
    v5 = objc_alloc_init(MEMORY[0x277D47218]);
    (*(*(a1 + 40) + 16))();
    v6 = +[INSAnalytics sharedAnalytics];
    v7 = [v6 contextDictionaryForCommand:v5];

    v8 = +[INSAnalytics sharedAnalytics];
    v9 = [*(a1 + 32) ins_analyticsEndEventType];
    v10 = [*(a1 + 32) ins_afAnalyticsContext];
    v11 = IFMergeDictionaries();
    [v8 logEventWithType:v9 context:v11 contextNoCopy:{1, v7, 0}];
  }

  else
  {
    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, 0);
    }
  }

  return MEMORY[0x2821F9730]();
}

- (id)analytics:(id)analytics contextDictionaryForError:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  delegate = [(INSExtensionService *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate extensionService:self contextDictionaryForError:errorCopy];
  }

  else
  {
    v8 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[INSExtensionService analytics:contextDictionaryForError:]";
      _os_log_error_impl(&dword_25553C000, v8, OS_LOG_TYPE_ERROR, "%s Extension service delegate does not respond to extensionService:contextDictionaryForError:", &v10, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (id)analytics:(id)analytics contextDictionaryForCommand:(id)command
{
  v12 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  delegate = [(INSExtensionService *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate extensionService:self contextDictionaryForCommand:commandCopy];
  }

  else
  {
    v8 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[INSExtensionService analytics:contextDictionaryForCommand:]";
      _os_log_error_impl(&dword_25553C000, v8, OS_LOG_TYPE_ERROR, "%s Extension service delegate does not respond to extensionService:contextDictionaryForCommand:", &v10, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_shouldPrepareAudioSessionForCommand:(id)command intent:(id)intent
{
  v16 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  intentCopy = intent;
  extensionBundleId = [intentCopy extensionBundleId];
  if (extensionBundleId)
  {
    v8 = extensionBundleId;
    extensionBundleId2 = [intentCopy extensionBundleId];
    v10 = [extensionBundleId2 isEqualToString:@"com.apple.siri.SiriAudioInternal.AudioInternalIntentExtension"];

    if (v10)
    {
      v11 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
      {
        v14 = 136315138;
        v15 = "[INSExtensionService _shouldPrepareAudioSessionForCommand:intent:]";
        _os_log_impl(&dword_25553C000, v11, OS_LOG_TYPE_INFO, "%s Suppressing audio session preparation for internal media extension", &v14, 0xCu);
      }

      goto LABEL_7;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:
    ins_shouldPrepareAudioSession = 0;
    goto LABEL_8;
  }

  ins_shouldPrepareAudioSession = [intentCopy ins_shouldPrepareAudioSession];
LABEL_8:

  return ins_shouldPrepareAudioSession;
}

- (void)_requiresHandlingCommand:(id)command completion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  completionCopy = completion;
  delegate = [(INSExtensionService *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate extensionService:self requiresHandlingCommand:commandCopy completion:completionCopy];
  }

  else
  {
    v9 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[INSExtensionService _requiresHandlingCommand:completion:]";
      _os_log_error_impl(&dword_25553C000, v9, OS_LOG_TYPE_ERROR, "%s Extension service delegate does not respond to extensionService:requiresHandlingCommand:completion:", &v10, 0xCu);
    }
  }
}

- (void)_logEventWithType:(int64_t)type context:(id)context contextNoCopy:(BOOL)copy
{
  copyCopy = copy;
  v13 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  delegate = [(INSExtensionService *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate extensionService:self logEventWithType:type context:contextCopy contextNoCopy:copyCopy];
  }

  else
  {
    v10 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[INSExtensionService _logEventWithType:context:contextNoCopy:]";
      _os_log_error_impl(&dword_25553C000, v10, OS_LOG_TYPE_ERROR, "%s Extension service delegate does not respond to extensionService:logEventWithType:context:contextNoCopy:", &v11, 0xCu);
    }
  }
}

- (void)_logPrewarmDidEndWithCommand:(id)command applicationIdentifier:(id)identifier wasPrewarmed:(BOOL)prewarmed completionHandler:(id)handler
{
  prewarmedCopy = prewarmed;
  commandCopy = command;
  handlerCopy = handler;
  v11 = [identifier isEqualToString:*MEMORY[0x277D21510]];
  ins_afAnalyticsContext = [commandCopy ins_afAnalyticsContext];
  if (v11)
  {
    v13 = [(INSExtensionService *)self _updatedEventContextWithExtensionLoadType:ins_afAnalyticsContext wasPrewarmed:prewarmedCopy];

    ins_afAnalyticsContext = v13;
  }

  v14 = objc_alloc_init(MEMORY[0x277D47218]);
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v14, 0);
  }

  v15 = +[INSAnalytics sharedAnalytics];
  v16 = [v15 contextDictionaryForCommand:v14];

  ins_analyticsEndEventType = [commandCopy ins_analyticsEndEventType];
  v18 = IFMergeDictionaries();
  [(INSExtensionService *)self _logEventWithType:ins_analyticsEndEventType context:v18 contextNoCopy:1, v16, 0];

  kdebug_trace();
}

- (BOOL)_prewarmExtensionWithIntent:(id)intent applicationIdentifier:(id)identifier command:(id)command completionHandler:(id)handler
{
  v49 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  identifierCopy = identifier;
  commandCopy = command;
  handlerCopy = handler;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v15 = MEMORY[0x277CD38C8];
  if (isKindOfClass)
  {
    kdebug_trace();
    identifier = [intentCopy identifier];

    if (!identifier)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];

      v19 = *v15;
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_INFO))
      {
        log = v19;
        _className = [intentCopy _className];
        launchId = [intentCopy launchId];
        v22 = launchId;
        v23 = @"no launchId";
        if (launchId)
        {
          v23 = launchId;
        }

        extensionBundleId = [intentCopy extensionBundleId];
        v25 = extensionBundleId;
        *buf = 136316162;
        v26 = @"no extensionBundleId";
        v40 = "[INSExtensionService _prewarmExtensionWithIntent:applicationIdentifier:command:completionHandler:]";
        v41 = 2112;
        if (extensionBundleId)
        {
          v26 = extensionBundleId;
        }

        v42 = _className;
        v43 = 2112;
        v44 = v31;
        v45 = 2112;
        v46 = v26;
        v47 = 2112;
        v48 = uUIDString;
        _os_log_impl(&dword_25553C000, log, OS_LOG_TYPE_INFO, "%s About to prewarm an extension for %@ (%@:%@) without an identifier. Assigning a new identifier: %@", buf, 0x34u);

        v15 = MEMORY[0x277CD38C8];
      }

      [intentCopy setIdentifier:uUIDString];
    }

    v27 = [objc_alloc(MEMORY[0x277D21520]) initWithIntent:intentCopy];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __99__INSExtensionService__prewarmExtensionWithIntent_applicationIdentifier_command_completionHandler___block_invoke;
    v33[3] = &unk_2797EAC00;
    v34 = commandCopy;
    v38 = handlerCopy;
    v35 = intentCopy;
    selfCopy = self;
    v37 = identifierCopy;
    [v27 resumeWithCompletionHandler:v33];
  }

  v28 = *v15;
  if (os_log_type_enabled(*v15, OS_LOG_TYPE_INFO))
  {
    v29 = @"NO";
    if (isKindOfClass)
    {
      v29 = @"YES";
    }

    *buf = 136315394;
    v40 = "[INSExtensionService _prewarmExtensionWithIntent:applicationIdentifier:command:completionHandler:]";
    v41 = 2112;
    v42 = v29;
    _os_log_impl(&dword_25553C000, v28, OS_LOG_TYPE_INFO, "%s Is prewarm: %@.", buf, 0x16u);
  }

  return isKindOfClass & 1;
}

void __99__INSExtensionService__prewarmExtensionWithIntent_applicationIdentifier_command_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CD38C8];
  v8 = *MEMORY[0x277CD38C8];
  v9 = *MEMORY[0x277CD38C8];
  if (!v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = v8;
      v18 = [v6 localizedDescription];
      *buf = 136315394;
      v25 = "[INSExtensionService _prewarmExtensionWithIntent:applicationIdentifier:command:completionHandler:]_block_invoke";
      v26 = 2112;
      v27 = v18;
      _os_log_error_impl(&dword_25553C000, v17, OS_LOG_TYPE_ERROR, "%s Error finding extension for prewarming: %@", buf, 0x16u);
    }

    v15 = a1[4];
    v16 = INSExtensionServiceTraceCompletionHandlerWithCode(a1[8], 722470936);
    [v15 ins_invokeErrorCompletionHandler:v16 forUnderlyingError:v6];
    goto LABEL_12;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v8;
    v11 = [v5 _extension];
    *buf = 136315394;
    v25 = "[INSExtensionService _prewarmExtensionWithIntent:applicationIdentifier:command:completionHandler:]_block_invoke";
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&dword_25553C000, v10, OS_LOG_TYPE_INFO, "%s Prewarmed extension: %@", buf, 0x16u);
  }

  v12 = [a1[5] ins_shouldPrewarmApp];
  v13 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v25 = "[INSExtensionService _prewarmExtensionWithIntent:applicationIdentifier:command:completionHandler:]_block_invoke";
    v26 = 1024;
    LODWORD(v27) = v12;
    _os_log_impl(&dword_25553C000, v13, OS_LOG_TYPE_INFO, "%s Should prewarm app: %hhd", buf, 0x12u);
  }

  if (!v12)
  {
    [a1[6] _logPrewarmDidEndWithCommand:a1[4] applicationIdentifier:a1[7] wasPrewarmed:1 completionHandler:a1[8]];
    v16 = [v5 _connection];
    [v16 reset];
LABEL_12:

    goto LABEL_13;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __99__INSExtensionService__prewarmExtensionWithIntent_applicationIdentifier_command_completionHandler___block_invoke_66;
  v19[3] = &unk_2797EABD8;
  v14 = a1[5];
  v19[4] = a1[6];
  v20 = a1[4];
  v21 = a1[7];
  v23 = a1[8];
  v22 = v5;
  [v22 prewarmAppWithIntent:v14 completionHandler:v19];

LABEL_13:
}

void __99__INSExtensionService__prewarmExtensionWithIntent_applicationIdentifier_command_completionHandler___block_invoke_66(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277CD38C8];
  v7 = *MEMORY[0x277CD38C8];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[INSExtensionService _prewarmExtensionWithIntent:applicationIdentifier:command:completionHandler:]_block_invoke";
      _os_log_impl(&dword_25553C000, v6, OS_LOG_TYPE_INFO, "%s Prewarmed app completed successfully", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315394;
    v10 = "[INSExtensionService _prewarmExtensionWithIntent:applicationIdentifier:command:completionHandler:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    _os_log_error_impl(&dword_25553C000, v6, OS_LOG_TYPE_ERROR, "%s Prewarmed app failed with error: %@", &v9, 0x16u);
  }

  [*(a1 + 32) _logPrewarmDidEndWithCommand:*(a1 + 40) applicationIdentifier:*(a1 + 48) wasPrewarmed:1 completionHandler:*(a1 + 64)];
  v8 = [*(a1 + 56) _connection];
  [v8 reset];
}

- (id)_connectionForIntent:(id)intent
{
  v37 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  v5 = MEMORY[0x277CD38C8];
  v6 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    v31 = 136315394;
    v32 = "[INSExtensionService _connectionForIntent:]";
    v33 = 2112;
    v34 = intentCopy;
    _os_log_impl(&dword_25553C000, v6, OS_LOG_TYPE_INFO, "%s Getting connection for intent: %@", &v31, 0x16u);
  }

  if (!intentCopy)
  {
    v19 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      p_currentConnection = &self->_currentConnection;
      goto LABEL_16;
    }

    currentConnection = self->_currentConnection;
    v31 = 136315394;
    v32 = "[INSExtensionService _connectionForIntent:]";
    v33 = 2112;
    v34 = currentConnection;
    v21 = "%s Using the current connection %@ because the intent is nil.";
LABEL_22:
    _os_log_error_impl(&dword_25553C000, v19, OS_LOG_TYPE_ERROR, v21, &v31, 0x16u);
    goto LABEL_12;
  }

  identifier = [(INCExtensionConnection *)intentCopy identifier];

  if (!identifier)
  {
    v19 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v30 = self->_currentConnection;
    v31 = 136315394;
    v32 = "[INSExtensionService _connectionForIntent:]";
    v33 = 2112;
    v34 = v30;
    v21 = "%s Using the current connection %@ because the intent identifier is nil.";
    goto LABEL_22;
  }

  v9 = self->_currentConnection;
  p_currentConnection = &self->_currentConnection;
  intent = [(INCExtensionConnection *)v9 intent];
  identifier2 = [intent identifier];
  identifier3 = [(INCExtensionConnection *)intentCopy identifier];
  v13 = [identifier2 isEqualToString:identifier3];

  v14 = *v5;
  v15 = os_log_type_enabled(*v5, OS_LOG_TYPE_INFO);
  if (v13)
  {
    if (v15)
    {
      v16 = *p_currentConnection;
      v17 = v14;
      identifier4 = [(INCExtensionConnection *)intentCopy identifier];
      v31 = 136315650;
      v32 = "[INSExtensionService _connectionForIntent:]";
      v33 = 2112;
      v34 = v16;
      v35 = 2112;
      v36 = identifier4;
      _os_log_impl(&dword_25553C000, v17, OS_LOG_TYPE_INFO, "%s Using the current connection %@ because the intent identifier matches intent identifier: %@.", &v31, 0x20u);
    }

    [*p_currentConnection setIntent:intentCopy];
  }

  else
  {
    if (v15)
    {
      v22 = *p_currentConnection;
      v23 = v14;
      identifier5 = [(INCExtensionConnection *)intentCopy identifier];
      v31 = 136315650;
      v32 = "[INSExtensionService _connectionForIntent:]";
      v33 = 2112;
      v34 = v22;
      v35 = 2112;
      v36 = identifier5;
      _os_log_impl(&dword_25553C000, v23, OS_LOG_TYPE_INFO, "%s Replacing the current connection %@ because the intent identifier is %@.", &v31, 0x20u);
    }

    [*p_currentConnection reset];
    v25 = [objc_alloc(MEMORY[0x277D21520]) initWithIntent:intentCopy];
    v26 = *p_currentConnection;
    *p_currentConnection = v25;
  }

LABEL_16:
  v27 = *p_currentConnection;
  v28 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
  {
    v31 = 136315394;
    v32 = "[INSExtensionService _connectionForIntent:]";
    v33 = 2112;
    v34 = v27;
    _os_log_impl(&dword_25553C000, v28, OS_LOG_TYPE_INFO, "%s Returning connection: %@", &v31, 0x16u);
  }

  return v27;
}

- (id)_updatedEventContextWithExtensionLoadType:(id)type wasPrewarmed:(BOOL)prewarmed
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  if (prewarmed)
  {
    v5 = @"Warm";
  }

  else
  {
    v5 = @"Cold";
  }

  typeCopy = type;
  v7 = [v4 stringWithFormat:@"%@.%@", @"Extension", v5];
  v8 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[INSExtensionService _updatedEventContextWithExtensionLoadType:wasPrewarmed:]";
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_25553C000, v8, OS_LOG_TYPE_INFO, "%s Extension load type = %@", buf, 0x16u);
  }

  v9 = [typeCopy mutableCopy];

  [v9 setObject:v7 forKey:@"ExtensionLoadType"];

  return v9;
}

- (void)_extensionRequestDidFinishForIntent:(id)intent error:(id)error
{
  errorCopy = error;
  requestDelegateQueue = self->_requestDelegateQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__INSExtensionService__extensionRequestDidFinishForIntent_error___block_invoke;
  v8[3] = &unk_2797EABB0;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(requestDelegateQueue, v8);
}

void __65__INSExtensionService__extensionRequestDidFinishForIntent_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 extensionService:*(a1 + 32) extensionRequestDidFinishForApplication:*(*(a1 + 32) + 32) error:*(a1 + 40)];
}

- (void)_extensionRequestWillStartForIntent:(id)intent
{
  intentCopy = intent;
  requestDelegateQueue = self->_requestDelegateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__INSExtensionService__extensionRequestWillStartForIntent___block_invoke;
  v7[3] = &unk_2797EABB0;
  v7[4] = self;
  v8 = intentCopy;
  v6 = intentCopy;
  dispatch_async(requestDelegateQueue, v7);
}

void __59__INSExtensionService__extensionRequestWillStartForIntent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) _intents_bundleIdForDisplay];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v5 = [*(a1 + 32) delegate];
  [v5 extensionService:*(a1 + 32) extensionRequestWillStartForApplication:*(*(a1 + 32) + 32)];
}

- (BOOL)_isVoiceShortcutsRemoteExecutionUnavailable:(id)unavailable
{
  unavailableCopy = unavailable;
  domain = [unavailableCopy domain];
  v5 = _INVCVoiceShortcutErrorDomain();
  if ([domain isEqualToString:v5])
  {
    v6 = [unavailableCopy code] == 9001;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_errorImpliesCloudRelay:(id)relay
{
  relayCopy = relay;
  domain = [relayCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CD3848]])
  {
    v5 = [relayCopy code] == 2005;
  }

  else
  {
    v5 = 0;
  }

  domain2 = [relayCopy domain];
  if ([domain2 isEqualToString:*MEMORY[0x277CD3838]])
  {
    v7 = [relayCopy code] == 3001;
  }

  else
  {
    v7 = 0;
  }

  return v7 || v5;
}

- (NSArray)airPlayRouteIdentifiers
{
  extensionContext = [(INSExtensionService *)self extensionContext];
  _airPlayRouteIdentifiers = [extensionContext _airPlayRouteIdentifiers];

  return _airPlayRouteIdentifiers;
}

- (void)setAirPlayRouteIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  extensionContext = [(INSExtensionService *)self extensionContext];
  [extensionContext _setAirPlayRouteIdentifiers:identifiersCopy];
}

- (void)resetExternalResources
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__INSExtensionService_resetExternalResources__block_invoke;
  block[3] = &unk_2797EAC50;
  block[4] = self;
  dispatch_async(queue, block);
}

void __45__INSExtensionService_resetExternalResources__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) reset];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;
}

- (void)handleCommand:(id)command fromRemoteDevice:(id)device completionHandler:(id)handler
{
  commandCopy = command;
  deviceCopy = device;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke;
  v15[3] = &unk_2797EACC0;
  v16 = commandCopy;
  selfCopy = self;
  v18 = deviceCopy;
  v19 = handlerCopy;
  v12 = deviceCopy;
  v13 = handlerCopy;
  v14 = commandCopy;
  dispatch_async(queue, v15);
}

void __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke(id *a1)
{
  v101 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v2 = MEMORY[0x277CD38C8];
  v3 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    v4 = a1[4];
    *buf = 136315394;
    v90 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
    v91 = 2112;
    v92 = v4;
    _os_log_impl(&dword_25553C000, v3, OS_LOG_TYPE_INFO, "%s Received handleCommand: %@", buf, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = a1[4];
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[5];
  v7 = [v5 ins_analyticsBeginEventType];
  v8 = [v5 ins_afAnalyticsContext];
  [v6 _logEventWithType:v7 context:v8 contextNoCopy:1];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [v5 ins_aceIntent];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 hashedRouteUIDs];
      v11 = [v9 airPlayRouteIds];
      v12 = [a1[5] extensionContext];
      v13 = [v12 _airPlayRouteIdentifiers];

      v14 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        v90 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
        v91 = 2112;
        v92 = v11;
        v93 = 2112;
        v94 = v10;
        v95 = 2112;
        v96 = v13;
        _os_log_debug_impl(&dword_25553C000, v14, OS_LOG_TYPE_DEBUG, "%s Examining AirPlay routes passed with INPlayMediaIntent airPlayRouteIds: %@, hashedRouteUIDs: %@, extensionContextAirPlayRouteIdentifiers: %@", buf, 0x2Au);
      }

      if ([v10 count] || objc_msgSend(v11, "count"))
      {
        v15 = 0;
      }

      else
      {
        v57 = *v2;
        if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v90 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
          v91 = 2112;
          v92 = v13;
          _os_log_debug_impl(&dword_25553C000, v57, OS_LOG_TYPE_DEBUG, "%s Setting intent airPlayRouteIds from extension context: %@", buf, 0x16u);
        }

        v15 = v13;
      }
    }

    else
    {
      v16 = [v9 airPlayRouteIds];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = MEMORY[0x277CBEBF8];
      }

      v19 = [a1[5] extensionContext];
      v20 = [v19 _airPlayRouteIdentifiers];
      v15 = [v18 arrayByAddingObjectsFromArray:v20];

      v21 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v90 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
        v91 = 2112;
        v92 = v15;
        _os_log_debug_impl(&dword_25553C000, v21, OS_LOG_TYPE_DEBUG, "%s Setting intent airPlayRouteIds for non-INPlayMediaIntent: %@", buf, 0x16u);
      }
    }

    v22 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v90 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
      v91 = 2112;
      v92 = v15;
      _os_log_debug_impl(&dword_25553C000, v22, OS_LOG_TYPE_DEBUG, "%s Setting intent airPlayRouteIds: %@", buf, 0x16u);
    }

    v23 = [MEMORY[0x277CBEB98] setWithArray:v15];
    v24 = [v23 allObjects];

    [v9 _setAirPlayRouteIds:v24];
    v25 = [a1[5] extensionContext];
    v26 = [v25 _recordRoute];
    [v9 _setRecordRoute:v26];

    v27 = [a1[5] extensionContext];
    v28 = [v27 _recordDeviceUID];
    [v9 _setRecordDeviceUID:v28];

    v29 = [a1[5] extensionContext];
    v30 = [v29 _recordDeviceIdentifier];
    [v9 _setRecordDeviceIdentifier:v30];

    v31 = [a1[5] extensionContext];
    [v9 _setAudioSessionID:{objc_msgSend(v31, "_audioSessionID")}];

    if (![v9 _executionContext])
    {
      [v9 _setExecutionContext:1];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [a1[5] _connectionForIntent:0];
      [v32 setIntent:v9];
      v33 = a1[4];
      v34 = [v33 userActivityIdentifier];
      [v33 ins_launchAppWithConnection:v32 userActivityIdentifier:v34 delegate:a1[5] completionHandler:a1[7]];

      goto LABEL_70;
    }

    v35 = *v2;
    v36 = *v2;
    if (!v9)
    {
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v73 = a1[4];
        *buf = 136315394;
        v90 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
        v91 = 2112;
        v92 = v73;
        _os_log_error_impl(&dword_25553C000, v35, OS_LOG_TYPE_ERROR, "%s Unable to get INIntent from command %@", buf, 0x16u);
      }

      v32 = INSExtensionServiceTraceCompletionHandlerWithCode(a1[7], 722470896);
      [v5 ins_invokeErrorCompletionHandler:v32 withErrorCode:1303 underlyingError:0];
      goto LABEL_70;
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v90 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
      v91 = 2112;
      v92 = v9;
      _os_log_impl(&dword_25553C000, v35, OS_LOG_TYPE_INFO, "%s Generated intent object %@", buf, 0x16u);
      v35 = *v2;
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v37 = v35;
      v38 = [v9 backingStore];
      *buf = 136315394;
      v90 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
      v91 = 2112;
      v92 = v38;
      _os_log_impl(&dword_25553C000, v37, OS_LOG_TYPE_INFO, "%s Raw intent = %@", buf, 0x16u);
    }

    v39 = [v9 launchId];
    v88 = 0;
    INExtractAppInfoFromSiriLaunchId();
    v32 = 0;

    if ([a1[5] _prewarmExtensionWithIntent:v9 applicationIdentifier:v32 command:v5 completionHandler:a1[7]])
    {
LABEL_70:

      goto LABEL_71;
    }

    v40 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v90 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
      _os_log_impl(&dword_25553C000, v40, OS_LOG_TYPE_INFO, "%s Not prewarm, continuing...", buf, 0xCu);
    }

    if (a1[6] && [v9 _type] == 2)
    {
      v41 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v90 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
        _os_log_impl(&dword_25553C000, v41, OS_LOG_TYPE_INFO, "%s This is a remote device, and the intent type is custom. Checking for version incompatibility if the intent is sent from a remote device...", buf, 0xCu);
      }

      v42 = [v9 typeName];
      v86 = 0;
      v87 = 0;
      v43 = INSchemaWithTypeName();
      v44 = 0;
      v45 = 0;

      v46 = [v9 _className];
      v47 = [v43 intentCodableDescriptionWithIntentClassName:v46];

      v79 = v47;
      v48 = [v47 versioningHash];
      v78 = [v48 unsignedLongValue];

      v49 = [v9 _metadata];
      v50 = [v49 versioningHash];

      v51 = *MEMORY[0x277D47C38];
      v52 = INSGetAceVersionNumberFromString(*MEMORY[0x277D47C38]);
      v53 = [a1[6] aceVersion];
      v54 = INSGetAceVersionNumberFromString(v53);

      if (v52 != 0.0 && v54 != 0.0 && v78 && v50 && v78 != v50 && (v52 - v54) >= 2.0)
      {
        v55 = *MEMORY[0x277CD38C8];
        if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
        {
          v74 = v55;
          v75 = a1[6];
          v77 = v74;
          v76 = [v75 aceVersion];
          *buf = 136316418;
          v90 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
          v91 = 2048;
          v92 = v50;
          v93 = 2112;
          v94 = v76;
          v95 = 2048;
          v96 = v78;
          v97 = 2112;
          v98 = v51;
          v99 = 2112;
          v100 = v9;
          _os_log_error_impl(&dword_25553C000, v77, OS_LOG_TYPE_ERROR, "%s Intent was sent from an old device with (intentVersionHash=%llu, aceVersion=%@), current device has (intentVersionHash=%llu, aceVersion=%@), intent: %@", buf, 0x3Eu);
        }

        v56 = INSExtensionServiceTraceCompletionHandlerWithCode(a1[7], 722470896);
        [v5 ins_invokeErrorCompletionHandler:v56 withErrorCode:1316 underlyingError:0];

LABEL_69:
        goto LABEL_70;
      }

      v2 = MEMORY[0x277CD38C8];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v58 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
      {
        v59 = v58;
        v60 = objc_opt_class();
        v61 = NSStringFromClass(v60);
        *buf = 136315394;
        v90 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
        v91 = 2112;
        v92 = v61;
        _os_log_impl(&dword_25553C000, v59, OS_LOG_TYPE_INFO, "%s ins_recordPreInteractionSignals for command: %@", buf, 0x16u);
      }

      [v9 ins_recordPreInteractionSignals];
    }

    v62 = objc_alloc(MEMORY[0x277CCACA8]);
    v63 = [v9 intentId];
    v64 = [v9 typeName];
    v65 = [v9 launchId];
    v44 = [v62 initWithFormat:@"%@-%@-%@", v63, v64, v65];

    v45 = [v44 dataUsingEncoding:4];
    v66 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v90 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
      v91 = 2112;
      v92 = v44;
      _os_log_impl(&dword_25553C000, v66, OS_LOG_TYPE_INFO, "%s Raw intent ID = %@", buf, 0x16u);
      v66 = *v2;
    }

    if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v90 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
      _os_log_impl(&dword_25553C000, v66, OS_LOG_TYPE_INFO, "%s Start digesting raw intent ID with in-memory salt...", buf, 0xCu);
    }

    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_15;
    v80[3] = &unk_2797EAB88;
    v67 = v9;
    v68 = a1[5];
    v81 = v67;
    v82 = v68;
    v83 = v5;
    v85 = a1[7];
    v84 = a1[4];
    v69 = MEMORY[0x259C379F0](v80);
    v70 = [a1[5] delegate];
    v71 = objc_opt_respondsToSelector();
    v72 = *v2;
    if (v71)
    {
      if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v90 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
        _os_log_impl(&dword_25553C000, v72, OS_LOG_TYPE_INFO, "%s Extension service delegate responds to extensionService:processDataUsingSHA256WithInMemorySalt:completionHandler:", buf, 0xCu);
      }

      [v70 extensionService:a1[5] processDataUsingSHA256WithInMemorySalt:v45 completionHandler:v69];
    }

    else if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v90 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
      _os_log_error_impl(&dword_25553C000, v72, OS_LOG_TYPE_ERROR, "%s Extension service delegate does not respond to extensionService:processDataUsingSHA256WithInMemorySalt:completionHandler:", buf, 0xCu);
    }

    v43 = v81;
    goto LABEL_69;
  }

  [a1[4] ins_getIntentDefinitionsWithCompletionHandler:a1[7]];
LABEL_71:
}

void __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_15(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CCACA8] if_hexStringFromData:a2];
  v7 = MEMORY[0x277CD38C8];
  v8 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v24 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
    _os_log_impl(&dword_25553C000, v8, OS_LOG_TYPE_INFO, "%s Finished digesting raw intent ID with in-memory salt.", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_16;
  block[3] = &unk_2797EAB60;
  v9 = v6;
  v18 = v9;
  v19 = *(a1 + 32);
  v10 = v5;
  v20 = v10;
  v16 = *(a1 + 40);
  v11 = *(&v16 + 1);
  v12 = *(a1 + 64);
  *&v13 = *(a1 + 56);
  *(&v13 + 1) = v12;
  v21 = v16;
  v22 = v13;
  v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
  v15 = *v7;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v24 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke_2";
    _os_log_impl(&dword_25553C000, v15, OS_LOG_TYPE_INFO, "%s Submitting pkdBlock", buf, 0xCu);
  }

  dispatch_async(*(*(a1 + 40) + 8), v14);
}

void __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_16(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CD38C8];
  v4 = *MEMORY[0x277CD38C8];
  v5 = os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v5)
    {
      *buf = 136315394;
      v46 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
      v47 = 2112;
      v48 = v2;
      _os_log_impl(&dword_25553C000, v4, OS_LOG_TYPE_INFO, "%s Set facade intent identifier = %@", buf, 0x16u);
      v2 = *(a1 + 32);
    }

    [*(a1 + 40) setIdentifier:v2];
  }

  else if (v5)
  {
    v6 = *(a1 + 48);
    *buf = 136315394;
    v46 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
    v47 = 2112;
    v48 = v6;
    _os_log_impl(&dword_25553C000, v4, OS_LOG_TYPE_INFO, "%s Unable to generate facade intent ID due to %@", buf, 0x16u);
  }

  v7 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v46 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
    _os_log_impl(&dword_25553C000, v7, OS_LOG_TYPE_INFO, "%s About to prepare intent...", buf, 0xCu);
  }

  v8 = [*(a1 + 56) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 extensionService:*(a1 + 56) prepareIntent:*(a1 + 40)];
  }

  v9 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v46 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
    _os_log_impl(&dword_25553C000, v9, OS_LOG_TYPE_INFO, "%s Finished preparing intent", buf, 0xCu);
  }

  v10 = [*(a1 + 56) _connectionForIntent:*(a1 + 40)];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 64) ins_launchAppWithConnection:v10 delegate:*(a1 + 56) completionHandler:*(a1 + 80)];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 64) ins_resolveAppForIntent:*(a1 + 40) completionHandler:*(a1 + 80)];
    }

    else
    {
      v11 = [*(a1 + 56) _extensionInputItems];
      v12 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v46 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
        v47 = 2112;
        v48 = v11;
        _os_log_impl(&dword_25553C000, v12, OS_LOG_TYPE_INFO, "%s Setting extension input items: %@", buf, 0x16u);
      }

      v13 = [v10 extensionInputItems];
      v14 = v13 == 0;

      if (v14)
      {
        [v10 setExtensionInputItems:v11];
      }

      objc_initWeak(&location, v10);
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_21;
      v37[3] = &unk_2797EAA20;
      objc_copyWeak(&v43, &location);
      v37[4] = *(a1 + 56);
      v38 = *(a1 + 40);
      v39 = *(a1 + 72);
      v42 = *(a1 + 80);
      v15 = v8;
      v40 = v15;
      v41 = *(a1 + 64);
      [v10 setTimeoutHandler:v37];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_24;
      v32[3] = &unk_2797EAA48;
      v32[4] = *(a1 + 56);
      v33 = *(a1 + 40);
      v34 = *(a1 + 64);
      v36 = *(a1 + 80);
      v16 = v15;
      v35 = v16;
      [v10 setInterruptionHandler:v32];
      v17 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v46 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke_2";
        _os_log_impl(&dword_25553C000, v17, OS_LOG_TYPE_INFO, "%s Configured timeout and interruption handlers", buf, 0xCu);
      }

      kdebug_trace();
      [*(a1 + 56) _extensionRequestWillStartForIntent:*(a1 + 40)];
      v18 = *(a1 + 56);
      v19 = [*(a1 + 64) ins_afAnalyticsContext];
      [v18 _logEventWithType:601 context:v19 contextNoCopy:0];

      v20 = *v3;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [*(a1 + 40) identifier];
        *buf = 136315394;
        v46 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
        v47 = 2112;
        v48 = v21;
        _os_log_impl(&dword_25553C000, v20, OS_LOG_TYPE_INFO, "%s Resuming connection for intent with identifier: %@", buf, 0x16u);
      }

      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_25;
      v25[3] = &unk_2797EAB38;
      v22 = *(a1 + 40);
      v23 = *(a1 + 56);
      v24 = *(a1 + 64);
      v26 = v22;
      v27 = v23;
      v28 = v24;
      v31 = *(a1 + 80);
      v29 = v16;
      v30 = *(a1 + 72);
      [v10 resumeWithCompletionHandler:v25];

      objc_destroyWeak(&v43);
      objc_destroyWeak(&location);
    }
  }
}

void __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_21(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  [*(a1 + 32) _extensionRequestDidFinishForIntent:*(a1 + 40) error:v3];
  v5 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
  {
    v13 = v5;
    [WeakRetained requestTimeoutInterval];
    v14 = *(a1 + 48);
    *buf = 136315650;
    v17 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
    v18 = 2050;
    v19 = v15;
    v20 = 2112;
    v21 = v14;
    _os_log_error_impl(&dword_25553C000, v13, OS_LOG_TYPE_ERROR, "%s Extension Request timed out after %{public}f seconds for command %@", buf, 0x20u);
  }

  v6 = INSExtensionServiceTraceCompletionHandlerWithCode(*(a1 + 72), 722470908);
  v7 = objc_alloc_init(MEMORY[0x277D47208]);
  (v6)[2](v6, v7, v3);

  [*(a1 + 56) extensionService:*(a1 + 32) suspendTimeout:0];
  v8 = *(a1 + 32);
  v9 = [*(a1 + 64) ins_afAnalyticsContext];
  v10 = +[INSAnalytics sharedAnalytics];
  v11 = [v10 contextDictionaryForError:v3];
  v12 = IFMergeDictionaries();
  [v8 _logEventWithType:605 context:v12 contextNoCopy:{0, v11, 0}];
}

uint64_t __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_24(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _extensionRequestDidFinishForIntent:*(a1 + 40) error:a2];
  v3 = *(a1 + 48);
  v4 = INSExtensionServiceTraceCompletionHandlerWithCode(*(a1 + 64), 722470912);
  [v3 ins_invokeErrorCompletionHandler:v4 withErrorCode:1306 underlyingError:0];

  v5 = *(a1 + 56);
  v6 = *(a1 + 32);

  return [v5 extensionService:v6 suspendTimeout:0];
}

void __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_25(id *a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_2;
  v40[3] = &unk_2797EAA70;
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v41 = v7;
  v42 = v8;
  v43 = v9;
  v44 = a1[9];
  v10 = MEMORY[0x259C379F0](v40);
  v11 = v10;
  if (!v5 || v6)
  {
    (*(v10 + 16))(v10, v6);
  }

  else
  {
    v12 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
    {
      v13 = a1[4];
      v14 = v12;
      v15 = [v13 identifier];
      *buf = 136315394;
      v46 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
      v47 = 2112;
      v48 = v15;
      _os_log_impl(&dword_25553C000, v14, OS_LOG_TYPE_INFO, "%s Resumed connection for intent with identifier: %@", buf, 0x16u);
    }

    kdebug_trace();
    v16 = a1[5];
    v17 = [a1[6] ins_afAnalyticsContext];
    [v16 _logEventWithType:602 context:v17 contextNoCopy:0];

    [a1[7] extensionService:a1[5] suspendTimeout:{objc_msgSend(v5, "_isExtensionBeingDebugged")}];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_26;
    v37[3] = &unk_2797EAA98;
    v18 = a1[7];
    v19 = a1[5];
    v38 = v18;
    v39 = v19;
    [v5 setImageProcessingHandler:v37];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_2_28;
    block[3] = &unk_2797EAB60;
    v20 = a1[6];
    block[4] = a1[5];
    v31 = v20;
    v32 = a1[4];
    v33 = v5;
    v34 = a1[8];
    v35 = a1[7];
    v36 = a1[9];
    v21 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
    if ([a1[5] _shouldPrepareAudioSessionForCommand:a1[8] intent:a1[4]])
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_3;
      v25[3] = &unk_2797EAB10;
      v22 = a1[4];
      v23 = a1[5];
      v26 = v22;
      v27 = v23;
      v29 = v21;
      v28 = a1[7];
      v24 = MEMORY[0x259C379F0](v25);
      [a1[7] extensionService:a1[5] prepareForStartPlaybackWithDestination:1 intent:a1[4] completion:v24];
    }

    else
    {
      dispatch_async(*(a1[5] + 1), v21);
    }
  }
}

void __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
  {
    v14 = *(a1 + 32);
    v15 = v4;
    v16 = [v14 identifier];
    v17 = 136315650;
    v18 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke_2";
    v19 = 2112;
    v20 = v16;
    v21 = 2112;
    v22 = v3;
    _os_log_error_impl(&dword_25553C000, v15, OS_LOG_TYPE_ERROR, "%s Error resuming connection for intent with id: %@ - %@", &v17, 0x20u);
  }

  [*(a1 + 40) _extensionRequestDidFinishForIntent:*(a1 + 32) error:v3];
  if (!v3)
  {
    v6 = *(a1 + 48);
    v7 = INSExtensionServiceTraceCompletionHandlerWithCode(*(a1 + 56), 722470900);
    v8 = v6;
    v9 = v7;
    v10 = 0;
    goto LABEL_10;
  }

  v5 = [v3 domain];
  if (![v5 isEqualToString:*MEMORY[0x277CD3848]])
  {
    v11 = [v3 domain];
    v12 = [v11 isEqualToString:*MEMORY[0x277CD3838]];

    if (v12)
    {
      goto LABEL_8;
    }

    v13 = *(a1 + 48);
    v7 = INSExtensionServiceTraceCompletionHandlerWithCode(*(a1 + 56), 722470896);
    v8 = v13;
    v9 = v7;
    v10 = v3;
LABEL_10:
    [v8 ins_invokeErrorCompletionHandler:v9 withErrorCode:1301 underlyingError:v10];

    goto LABEL_11;
  }

LABEL_8:
  [*(a1 + 48) ins_invokeErrorCompletionHandler:*(a1 + 56) forUnderlyingError:v3];
LABEL_11:
}

void __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_26(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  [v4 extensionService:v5 wantsToCacheImage:a2];
  v6[2](v6, 0);
}

void __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_2_28(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) ins_afAnalyticsContext];
  [v2 _logEventWithType:626 context:v3 contextNoCopy:0];

  v4 = [[INSExtensionServiceIntentExecutor alloc] initWithIntent:*(a1 + 48) extensionProxy:*(a1 + 56) queue:*(*(a1 + 32) + 8)];
  v5 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 48);
    v7 = v5;
    v8 = [v6 identifier];
    *buf = 136315394;
    v21 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke_2";
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_25553C000, v7, OS_LOG_TYPE_INFO, "%s Created intent executor for intent with id %@. Sending intent for execution to execution proxy.", buf, 0x16u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_30;
  v12[3] = &unk_2797EAAC0;
  v9 = *(a1 + 64);
  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  v13 = v10;
  v14 = v11;
  v15 = *(a1 + 64);
  v16 = *(a1 + 48);
  v17 = *(a1 + 72);
  v19 = *(a1 + 80);
  v18 = *(a1 + 40);
  [(INSExtensionServiceIntentExecutor *)v4 sendAceCommand:v9 completionHandler:v12];
}

void __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_3(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CD38C8];
  v4 = *MEMORY[0x277CD38C8];
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = v3;
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 136315394;
      v13 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke_3";
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_25553C000, v5, OS_LOG_TYPE_INFO, "%s Prepared to start playback for %@", buf, 0x16u);
    }

    dispatch_async(*(*(a1 + 40) + 8), *(a1 + 56));
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "[INSExtensionService handleCommand:fromRemoteDevice:completionHandler:]_block_invoke";
      _os_log_error_impl(&dword_25553C000, v3, OS_LOG_TYPE_ERROR, "%s Failed to prepare for audio playback", buf, 0xCu);
    }

    v9 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_35;
    v10[3] = &unk_2797EAAE8;
    v10[4] = v9;
    v11 = *(a1 + 56);
    [v8 extensionService:v9 handleFailedStartPlaybackWithDestination:1 completion:v10];
  }
}

void __72__INSExtensionService_handleCommand_fromRemoteDevice_completionHandler___block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) _connection];
  v7 = [v6 _transaction];

  v8 = [v7 currentIntentResponse];
  if (v8 && [*(a1 + 40) _shouldPrepareAudioSessionForCommand:*(a1 + 48) intent:*(a1 + 56)] && (v5 || INIntentResponseIsFailure()))
  {
    [*(a1 + 64) extensionService:*(a1 + 40) handleFailedStartPlaybackWithDestination:1 completion:&__block_literal_global_33];
  }

  [*(a1 + 40) _extensionRequestDidFinishForIntent:*(a1 + 56) error:v5];
  v9 = *(a1 + 80);
  if (v9)
  {
    (*(v9 + 16))(v9, v12, v5);
  }

  kdebug_trace();
  kdebug_trace();
  v10 = *(a1 + 40);
  v11 = [*(a1 + 72) ins_afAnalyticsContext];
  [v10 _logEventWithType:627 context:v11 contextNoCopy:0];
}

- (NSArray)commandIdentifiers
{
  v8[9] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D484F8];
  v8[0] = *MEMORY[0x277D484B8];
  v8[1] = v2;
  v3 = *MEMORY[0x277D484D0];
  v8[2] = *MEMORY[0x277D48480];
  v8[3] = v3;
  v4 = *MEMORY[0x277D484F0];
  v8[4] = *MEMORY[0x277D484D8];
  v8[5] = v4;
  v5 = *MEMORY[0x277D484E8];
  v8[6] = *MEMORY[0x277D484C8];
  v8[7] = v5;
  v8[8] = *MEMORY[0x277D484A8];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:9];

  return v6;
}

- (INSExtensionService)initWithOptions:(id)options
{
  optionsCopy = options;
  v16.receiver = self;
  v16.super_class = INSExtensionService;
  v5 = [(INSExtensionService *)&v16 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
    v7 = dispatch_queue_create("INSExtensionServiceQueue", v6);
    v8 = *(v5 + 1);
    *(v5 + 1) = v7;

    dispatch_async(*(v5 + 1), &__block_literal_global_330);
    v9 = dispatch_queue_create("com.apple.intents.INSExtensionService.request-delegate", 0);
    v10 = *(v5 + 2);
    *(v5 + 2) = v9;

    v11 = [optionsCopy copy];
    v12 = *(v5 + 6);
    *(v5 + 6) = v11;

    v13 = +[INSAnalytics sharedAnalytics];
    [v13 addObserver:v5];

    v14 = +[INSAnalytics sharedAnalytics];
    [v14 setDataSource:v5];
  }

  return v5;
}

@end