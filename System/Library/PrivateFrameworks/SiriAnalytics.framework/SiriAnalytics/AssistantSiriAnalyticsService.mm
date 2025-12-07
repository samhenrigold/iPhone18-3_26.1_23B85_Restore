@interface AssistantSiriAnalyticsService
- (AssistantSiriAnalyticsService)initWithQueue:(id)queue delegate:(id)delegate;
- (BOOL)_analyticsEnabled;
- (void)_bootstrapStorageOnQueueWithCompletion:(id)completion;
- (void)_bootstrapStorageWithCompletion:(id)completion;
- (void)_buildDependenciesOnQueue;
- (void)_buildDependenciesWithCompletion:(id)completion;
- (void)_pruneStorageWithCompletion:(id)completion;
- (void)_setupIncomingConnections;
- (void)_setupMaintenanceWorkOnQueueWithCompletion:(id)completion;
- (void)_setupMaintenanceWorkWithCompletion:(id)completion;
- (void)handler:(id)handler createTag:(id)tag completion:(id)completion;
- (void)handler:(id)handler fetchKillSwitchWithCompletion:(id)completion;
- (void)handler:(id)handler fetchLogicalClocks:(id)clocks;
- (void)handler:(id)handler fetchStateForPluginName:(id)name completion:(id)completion;
- (void)handler:(id)handler fetchTags:(id)tags;
- (void)handler:(id)handler largeMessageReceivedWithPath:(id)path requestIdentifier:(id)identifier messageWrapper:(id)wrapper completion:(id)completion;
- (void)handler:(id)handler messagesReceived:(id)received;
- (void)handler:(id)handler purgeStagedMessagesWithCompletion:(id)completion;
- (void)handler:(id)handler resetLogicalClockWithCompletion:(id)completion;
- (void)handler:(id)handler runPipelineWithCompletion:(id)completion;
- (void)handler:(id)handler saveState:(id)state forPluginName:(id)name completion:(id)completion;
- (void)handler:(id)handler setKillSwitchEnabled:(BOOL)enabled completion:(id)completion;
- (void)handler:(id)handler unorderedMessagesReceived:(id)received topic:(id)topic;
- (void)handler:(id)handler vendResource:(int64_t)resource readonly:(BOOL)readonly completion:(id)completion;
- (void)handler:(id)handler vendSandboxExtensionWithResource:(int64_t)resource readonly:(BOOL)readonly completion:(id)completion;
- (void)registerMessageResolver:(id)resolver;
- (void)registerSensitiveConditionsObserver:(id)observer;
- (void)sensitiveCondition:(int)condition endedAt:(unint64_t)at;
- (void)sensitiveCondition:(int)condition startedAt:(unint64_t)at;
@end

@implementation AssistantSiriAnalyticsService

- (BOOL)_analyticsEnabled
{
  if (self->_killSwitchEnabled)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    analyticsEnabled = [v5 analyticsEnabled];
  }

  else
  {
    analyticsEnabled = 1;
  }

  return analyticsEnabled;
}

- (void)_pruneStorageWithCompletion:(id)completion
{
  v12 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v5 = SiriAnalyticsLogContextAssistant;
  if (os_log_type_enabled(SiriAnalyticsLogContextAssistant, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v11 = "[AssistantSiriAnalyticsService _pruneStorageWithCompletion:]";
    _os_log_debug_impl(&dword_1D9863000, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__AssistantSiriAnalyticsService__pruneStorageWithCompletion___block_invoke;
  aBlock[3] = &unk_1E8587C18;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = _Block_copy(aBlock);
  [(SiriAnalyticsMetastore *)self->_metastore prune];
  [(SiriAnalyticsMessageStore *)self->_messageStore prune];
  [(SiriAnalyticsRawUnifiedStream *)self->_rawUnifiedStream prune];
  [(SiriAnalyticsMessageStaging *)self->_messageStaging pruneWithCompletionHandler:v7];
}

uint64_t __61__AssistantSiriAnalyticsService__pruneStorageWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)handler:(id)handler createTag:(id)tag completion:(id)completion
{
  tagCopy = tag;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__AssistantSiriAnalyticsService_handler_createTag_completion___block_invoke;
  block[3] = &unk_1E8587CE0;
  block[4] = self;
  v13 = tagCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = tagCopy;
  dispatch_async(queue, block);
}

- (void)handler:(id)handler saveState:(id)state forPluginName:(id)name completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  nameCopy = name;
  completionCopy = completion;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v12 = SiriAnalyticsLogContextAssistant;
  if (os_log_type_enabled(SiriAnalyticsLogContextAssistant, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "[AssistantSiriAnalyticsService handler:saveState:forPluginName:completion:]";
    v23 = 2112;
    v24 = nameCopy;
    _os_log_impl(&dword_1D9863000, v12, OS_LOG_TYPE_INFO, "%s plugin: %@", buf, 0x16u);
  }

  queue = self->_queue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __76__AssistantSiriAnalyticsService_handler_saveState_forPluginName_completion___block_invoke;
  v17[3] = &unk_1E8587C40;
  v17[4] = self;
  v18 = stateCopy;
  v19 = nameCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = nameCopy;
  v16 = stateCopy;
  dispatch_async(queue, v17);
}

uint64_t __76__AssistantSiriAnalyticsService_handler_saveState_forPluginName_completion___block_invoke(void *a1)
{
  [*(a1[4] + 72) setPluginState:a1[5] forBundleIdentifier:a1[6]];
  result = a1[7];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)handler:(id)handler fetchStateForPluginName:(id)name completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  completionCopy = completion;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v9 = SiriAnalyticsLogContextAssistant;
  if (os_log_type_enabled(SiriAnalyticsLogContextAssistant, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[AssistantSiriAnalyticsService handler:fetchStateForPluginName:completion:]";
    v18 = 2112;
    v19 = nameCopy;
    _os_log_impl(&dword_1D9863000, v9, OS_LOG_TYPE_INFO, "%s plugin: %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__AssistantSiriAnalyticsService_handler_fetchStateForPluginName_completion___block_invoke;
  block[3] = &unk_1E8587CE0;
  block[4] = self;
  v14 = nameCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = nameCopy;
  dispatch_async(queue, block);
}

uint64_t __76__AssistantSiriAnalyticsService_handler_fetchStateForPluginName_completion___block_invoke(void *a1)
{
  [*(a1[4] + 72) pluginStateForBundleIdentifier:a1[5]];
  objc_claimAutoreleasedReturnValue();
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)handler:(id)handler fetchTags:(id)tags
{
  tagsCopy = tags;
  v5 = [[SiriAnalyticsTaggingXPCHandler alloc] initWithMetastore:self->_metastore];
  v6 = [(SiriAnalyticsTaggingXPCHandler *)v5 all];
  if (tagsCopy)
  {
    tagsCopy[2](tagsCopy, 1, v6, 0);
  }
}

- (void)handler:(id)handler fetchLogicalClocks:(id)clocks
{
  clocksCopy = clocks;
  v6 = [[SiriAnalyticsLogicalClocksXPCHandler alloc] initWithLogicalClocks:self->_logicalClocks];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__AssistantSiriAnalyticsService_handler_fetchLogicalClocks___block_invoke;
  v8[3] = &unk_1E8587260;
  v9 = clocksCopy;
  v7 = clocksCopy;
  [(SiriAnalyticsLogicalClocksXPCHandler *)v6 allWithCompletionHandler:v8];
}

uint64_t __60__AssistantSiriAnalyticsService_handler_fetchLogicalClocks___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, a2, 0);
  }

  return result;
}

- (void)handler:(id)handler purgeStagedMessagesWithCompletion:(id)completion
{
  completionCopy = completion;
  messageStaging = self->_messageStaging;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__AssistantSiriAnalyticsService_handler_purgeStagedMessagesWithCompletion___block_invoke;
  v8[3] = &unk_1E8587C18;
  v9 = completionCopy;
  v7 = completionCopy;
  [(SiriAnalyticsMessageStaging *)messageStaging purgeWithCompletionHandler:v8];
}

uint64_t __75__AssistantSiriAnalyticsService_handler_purgeStagedMessagesWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (void)handler:(id)handler runPipelineWithCompletion:(id)completion
{
  completionCopy = completion;
  preprocessor = self->_preprocessor;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__AssistantSiriAnalyticsService_handler_runPipelineWithCompletion___block_invoke;
  v8[3] = &unk_1E8587C18;
  v9 = completionCopy;
  v7 = completionCopy;
  [(SiriAnalyticsPreprocessor *)preprocessor triggerWithReason:2 completion:v8];
}

uint64_t __67__AssistantSiriAnalyticsService_handler_runPipelineWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (void)handler:(id)handler setKillSwitchEnabled:(BOOL)enabled completion:(id)completion
{
  enabledCopy = enabled;
  completionCopy = completion;
  [(SiriAnalyticsPreferences *)self->_preferences setKillSwitchEnabled:enabledCopy];
  [(SiriAnalyticsPreferences *)self->_preferences synchronize];
  v7 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
    v7 = completionCopy;
  }
}

- (void)handler:(id)handler fetchKillSwitchWithCompletion:(id)completion
{
  if (completion)
  {
    preferences = self->_preferences;
    completionCopy = completion;
    (*(completion + 2))(completionCopy, [(SiriAnalyticsPreferences *)preferences killSwitchEnabled], 0);
  }
}

- (void)handler:(id)handler vendResource:(int64_t)resource readonly:(BOOL)readonly completion:(id)completion
{
  readonlyCopy = readonly;
  v28 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  completionCopy = completion;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v11 = SiriAnalyticsLogContextAssistant;
  if (os_log_type_enabled(SiriAnalyticsLogContextAssistant, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[AssistantSiriAnalyticsService handler:vendResource:readonly:completion:]";
    *&buf[12] = 2048;
    *&buf[14] = resource;
    *&buf[22] = 2048;
    *&buf[24] = readonlyCopy;
    _os_log_debug_impl(&dword_1D9863000, v11, OS_LOG_TYPE_DEBUG, "%s Vending sandbox extension for resource: %ld, readonly: %ld", buf, 0x20u);
  }

  v12 = +[SiriAnalyticsPersistentStorage dataVault];
  entitlements = [handlerCopy entitlements];
  extendedEntitlements = [entitlements extendedEntitlements];
  if (handlerCopy)
  {
    objc_msgSend_auditToken(handlerCopy);
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  v24 = 0;
  v22 = readonlyCopy;
  v15 = [v12 vendAccessFor:resource withEntitlements:extendedEntitlements auditToken:buf readonly:readonlyCopy error:&v24];
  v16 = v24;

  if (SiriAnalyticsLoggingInit_once == -1)
  {
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_16:
    v18 = SiriAnalyticsLogContextAssistant;
    if (os_log_type_enabled(SiriAnalyticsLogContextAssistant, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "[AssistantSiriAnalyticsService handler:vendResource:readonly:completion:]";
      *&buf[12] = 2048;
      *&buf[14] = resource;
      *&buf[22] = 2048;
      *&buf[24] = v22;
      _os_log_debug_impl(&dword_1D9863000, v18, OS_LOG_TYPE_DEBUG, "%s Vended sandbox extension for resource: %ld, readonly: %ld", buf, 0x20u);
    }

    v19 = +[SiriAnalyticsPersistentStorage dataVault];
    v23 = 0;
    v20 = [v19 vendedResourceUrlFor:resource error:&v23];
    v16 = v23;

    if (!v16)
    {
      goto LABEL_22;
    }

    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v21 = SiriAnalyticsLogContextXPC;
    if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "[AssistantSiriAnalyticsService handler:vendResource:readonly:completion:]";
      *&buf[12] = 2048;
      *&buf[14] = resource;
      *&buf[22] = 2048;
      *&buf[24] = v22;
      v26 = 2112;
      v27 = v16;
      _os_log_error_impl(&dword_1D9863000, v21, OS_LOG_TYPE_ERROR, "%s Error vending sandbox extension for resource: %ld, readonly: %ld, error: %@", buf, 0x2Au);
      if (!completionCopy)
      {
        goto LABEL_24;
      }
    }

    else
    {
LABEL_22:
      if (!completionCopy)
      {
LABEL_24:

        goto LABEL_25;
      }
    }

    completionCopy[2](completionCopy, v15, v20, v16);
    goto LABEL_24;
  }

  dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  if (!v16)
  {
    goto LABEL_16;
  }

LABEL_10:
  v17 = SiriAnalyticsLogContextXPC;
  if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "[AssistantSiriAnalyticsService handler:vendResource:readonly:completion:]";
    *&buf[12] = 2048;
    *&buf[14] = resource;
    *&buf[22] = 2048;
    *&buf[24] = v22;
    v26 = 2112;
    v27 = v16;
    _os_log_error_impl(&dword_1D9863000, v17, OS_LOG_TYPE_ERROR, "%s Error vending sandbox extension for resource: %ld, readonly: %ld, error: %@", buf, 0x2Au);
    if (!completionCopy)
    {
      goto LABEL_25;
    }

    goto LABEL_12;
  }

  if (completionCopy)
  {
LABEL_12:
    completionCopy[2](completionCopy, 0, 0, v16);
  }

LABEL_25:
}

- (void)handler:(id)handler vendSandboxExtensionWithResource:(int64_t)resource readonly:(BOOL)readonly completion:(id)completion
{
  readonlyCopy = readonly;
  v23 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  completionCopy = completion;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v11 = SiriAnalyticsLogContextAssistant;
  if (os_log_type_enabled(SiriAnalyticsLogContextAssistant, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[AssistantSiriAnalyticsService handler:vendSandboxExtensionWithResource:readonly:completion:]";
    *&buf[12] = 2048;
    *&buf[14] = resource;
    *&buf[22] = 2048;
    *&buf[24] = readonlyCopy;
    _os_log_debug_impl(&dword_1D9863000, v11, OS_LOG_TYPE_DEBUG, "%s Vending sandbox extension for resource: %ld, readonly: %ld", buf, 0x20u);
  }

  v12 = +[SiriAnalyticsPersistentStorage dataVault];
  entitlements = [handlerCopy entitlements];
  extendedEntitlements = [entitlements extendedEntitlements];
  if (handlerCopy)
  {
    objc_msgSend_auditToken(handlerCopy);
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  v19 = 0;
  v15 = [v12 vendAccessFor:resource withEntitlements:extendedEntitlements auditToken:buf readonly:readonlyCopy error:&v19];
  v16 = v19;

  if (SiriAnalyticsLoggingInit_once == -1)
  {
    if (v16)
    {
      goto LABEL_10;
    }
  }

  else
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    if (v16)
    {
LABEL_10:
      v17 = SiriAnalyticsLogContextXPC;
      if (os_log_type_enabled(SiriAnalyticsLogContextXPC, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "[AssistantSiriAnalyticsService handler:vendSandboxExtensionWithResource:readonly:completion:]";
        *&buf[12] = 2048;
        *&buf[14] = resource;
        *&buf[22] = 2048;
        *&buf[24] = readonlyCopy;
        v21 = 2112;
        v22 = v16;
        _os_log_error_impl(&dword_1D9863000, v17, OS_LOG_TYPE_ERROR, "%s Error vending sandbox extension for resource: %ld, readonly: %ld, error: %@", buf, 0x2Au);
        if (!completionCopy)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  v18 = SiriAnalyticsLogContextAssistant;
  if (os_log_type_enabled(SiriAnalyticsLogContextAssistant, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[AssistantSiriAnalyticsService handler:vendSandboxExtensionWithResource:readonly:completion:]";
    *&buf[12] = 2048;
    *&buf[14] = resource;
    *&buf[22] = 2048;
    *&buf[24] = readonlyCopy;
    _os_log_debug_impl(&dword_1D9863000, v18, OS_LOG_TYPE_DEBUG, "%s Vended sandbox extension for resource: %ld, readonly: %ld", buf, 0x20u);
    if (!completionCopy)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_15:
  if (completionCopy)
  {
LABEL_16:
    completionCopy[2](completionCopy, v15, v16);
  }

LABEL_17:
}

- (void)handler:(id)handler resetLogicalClockWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v6 = SiriAnalyticsLogContextAssistant;
  if (os_log_type_enabled(SiriAnalyticsLogContextAssistant, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v12 = "[AssistantSiriAnalyticsService handler:resetLogicalClockWithCompletion:]";
    _os_log_debug_impl(&dword_1D9863000, v6, OS_LOG_TYPE_DEBUG, "%s Resetting logical clock", buf, 0xCu);
  }

  whiteRose = self->_whiteRose;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__AssistantSiriAnalyticsService_handler_resetLogicalClockWithCompletion___block_invoke;
  v9[3] = &unk_1E85879E0;
  v10 = completionCopy;
  v8 = completionCopy;
  [(SiriAnalyticsWhiteRose *)whiteRose destroyActiveClockWithReason:3 completion:v9];
}

uint64_t __73__AssistantSiriAnalyticsService_handler_resetLogicalClockWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, a2, 0);
  }

  return result;
}

- (void)handler:(id)handler largeMessageReceivedWithPath:(id)path requestIdentifier:(id)identifier messageWrapper:(id)wrapper completion:(id)completion
{
  pathCopy = path;
  identifierCopy = identifier;
  wrapperCopy = wrapper;
  completionCopy = completion;
  if ([(AssistantSiriAnalyticsService *)self _analyticsEnabled])
  {
    [(SiriAnalyticsLargeMessageStorage *)self->_largeMessageStorage enqueueLargeMessageObjectFromPath:pathCopy messageWrapper:wrapperCopy requestIdentifier:identifierCopy completion:completionCopy];
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.siri.analytics" code:0 userInfo:0];
    completionCopy[2](completionCopy, 0, v14);
  }
}

- (void)handler:(id)handler unorderedMessagesReceived:(id)received topic:(id)topic
{
  v23 = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  topicCopy = topic;
  if ([(AssistantSiriAnalyticsService *)self _analyticsEnabled])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v15 = receivedCopy;
    obj = receivedCopy;
    v9 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v18 + 1) + 8 * v12);
          directUpload = [(SiriAnalyticsMessageTopics *)self->_messageTopics directUpload];
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __73__AssistantSiriAnalyticsService_handler_unorderedMessagesReceived_topic___block_invoke;
          v17[3] = &unk_1E8587238;
          v17[4] = self;
          v17[5] = v13;
          [directUpload append:v13 topic:topicCopy completionHandler:v17];

          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    receivedCopy = v15;
  }
}

void __73__AssistantSiriAnalyticsService_handler_unorderedMessagesReceived_topic___block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    [*(*(a1 + 32) + 88) trackAnyEventEmitted:*(a1 + 40)];
  }

  if (v5)
  {
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v6 = SiriAnalyticsLogContextAssistant;
    if (os_log_type_enabled(SiriAnalyticsLogContextAssistant, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[AssistantSiriAnalyticsService handler:unorderedMessagesReceived:topic:]_block_invoke";
      v9 = 2112;
      v10 = v5;
      _os_log_error_impl(&dword_1D9863000, v6, OS_LOG_TYPE_ERROR, "%s Failed to persist message: %@", &v7, 0x16u);
    }
  }
}

- (void)handler:(id)handler messagesReceived:(id)received
{
  receivedCopy = received;
  if ([(AssistantSiriAnalyticsService *)self _analyticsEnabled])
  {
    whiteRose = self->_whiteRose;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__AssistantSiriAnalyticsService_handler_messagesReceived___block_invoke;
    v7[3] = &unk_1E8587210;
    v7[4] = self;
    [(SiriAnalyticsWhiteRose *)whiteRose markTimeForAnnotatedMessages:receivedCopy completion:v7];
  }
}

void __58__AssistantSiriAnalyticsService_handler_messagesReceived___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 168);
  v4 = a2;
  [v3 sendWithRuntimeEvents:v4];
  [*(*(a1 + 32) + 32) processWithMessages:v4];
  [*(*(a1 + 32) + 88) trackEmittedEvents:v4];
  [*(*(a1 + 32) + 80) tailWithMessages:v4];
}

- (void)sensitiveCondition:(int)condition endedAt:(unint64_t)at
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__AssistantSiriAnalyticsService_sensitiveCondition_endedAt___block_invoke;
  block[3] = &unk_1E85871E8;
  conditionCopy = condition;
  block[4] = self;
  block[5] = at;
  dispatch_async(queue, block);
}

- (void)sensitiveCondition:(int)condition startedAt:(unint64_t)at
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__AssistantSiriAnalyticsService_sensitiveCondition_startedAt___block_invoke;
  block[3] = &unk_1E85871E8;
  conditionCopy = condition;
  block[4] = self;
  block[5] = at;
  dispatch_async(queue, block);
}

- (void)registerSensitiveConditionsObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__AssistantSiriAnalyticsService_registerSensitiveConditionsObserver___block_invoke;
  v7[3] = &unk_1E8587870;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)registerMessageResolver:(id)resolver
{
  resolverCopy = resolver;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__AssistantSiriAnalyticsService_registerMessageResolver___block_invoke;
  v7[3] = &unk_1E8587870;
  v7[4] = self;
  v8 = resolverCopy;
  v6 = resolverCopy;
  dispatch_async(queue, v7);
}

- (void)_setupIncomingConnections
{
  self->_siriAnalyticsListener = [[SiriAnalyticsXPCServiceListener alloc] initWithMachServiceName:@"com.apple.siri.analytics.assistant" entitlementsKey:@"com.apple.siri.analytics.assistant" queue:self->_queue delegate:self];

  MEMORY[0x1EEE66BB8]();
}

- (void)_setupMaintenanceWorkOnQueueWithCompletion:(id)completion
{
  completionCopy = completion;
  [(SiriAnalyticsClockInactivityScheduler *)self->_inactivityScheduler startScheduling];
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  whiteRose = self->_whiteRose;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__AssistantSiriAnalyticsService__setupMaintenanceWorkOnQueueWithCompletion___block_invoke;
  v12[3] = &unk_1E8587918;
  v13 = v5;
  v7 = v5;
  [(SiriAnalyticsWhiteRose *)whiteRose bootstrapWithCompletion:v12];
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__AssistantSiriAnalyticsService__setupMaintenanceWorkOnQueueWithCompletion___block_invoke_2;
  v10[3] = &unk_1E8587C18;
  v11 = completionCopy;
  v9 = completionCopy;
  dispatch_group_notify(v7, queue, v10);
}

uint64_t __76__AssistantSiriAnalyticsService__setupMaintenanceWorkOnQueueWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_setupMaintenanceWorkWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__AssistantSiriAnalyticsService__setupMaintenanceWorkWithCompletion___block_invoke;
  v7[3] = &unk_1E8587C90;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __69__AssistantSiriAnalyticsService__setupMaintenanceWorkWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 160);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__AssistantSiriAnalyticsService__setupMaintenanceWorkWithCompletion___block_invoke_2;
  v4[3] = &unk_1E8587C90;
  v4[4] = v2;
  v5 = v1;
  [v3 afterFirstUnlock:v4];
}

- (void)_bootstrapStorageOnQueueWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[SiriAnalyticsPersistentStorage dataVault];
  [v5 migrate];

  [(SiriAnalyticsMetastore *)self->_metastore bootstrap];
  [(SiriAnalyticsMetastore *)self->_metastore prune];
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  metastoreStreams = self->_metastoreStreams;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__AssistantSiriAnalyticsService__bootstrapStorageOnQueueWithCompletion___block_invoke;
  v17[3] = &unk_1E8587918;
  v8 = v6;
  v18 = v8;
  [(SiriAnalyticsMetastoreStreams *)metastoreStreams bootstrapAndPruneWithCompletionHandler:v17];
  dispatch_group_enter(v8);
  messageStaging = self->_messageStaging;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__AssistantSiriAnalyticsService__bootstrapStorageOnQueueWithCompletion___block_invoke_2;
  v15[3] = &unk_1E8587918;
  v16 = v8;
  v10 = v8;
  [(SiriAnalyticsMessageStaging *)messageStaging bootstrapWithCompletionHandler:v15];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__AssistantSiriAnalyticsService__bootstrapStorageOnQueueWithCompletion___block_invoke_3;
  block[3] = &unk_1E8587C18;
  v14 = completionCopy;
  v12 = completionCopy;
  dispatch_group_notify(v10, queue, block);
}

uint64_t __72__AssistantSiriAnalyticsService__bootstrapStorageOnQueueWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_bootstrapStorageWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__AssistantSiriAnalyticsService__bootstrapStorageWithCompletion___block_invoke;
  v7[3] = &unk_1E8587C90;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __65__AssistantSiriAnalyticsService__bootstrapStorageWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 160);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__AssistantSiriAnalyticsService__bootstrapStorageWithCompletion___block_invoke_2;
  v4[3] = &unk_1E8587C90;
  v4[4] = v2;
  v5 = v1;
  [v3 afterFirstUnlock:v4];
}

- (void)_buildDependenciesOnQueue
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(SiriAnalyticsPreferences);
  preferences = self->_preferences;
  self->_preferences = v3;

  killSwitchEnabled = [(SiriAnalyticsPreferences *)self->_preferences killSwitchEnabled];
  self->_killSwitchEnabled = killSwitchEnabled;
  if (!killSwitchEnabled)
  {
LABEL_6:
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    goto LABEL_8;
  }

  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v6 = SiriAnalyticsLogContextAssistant;
  if (os_log_type_enabled(SiriAnalyticsLogContextAssistant, OS_LOG_TYPE_INFO))
  {
    v7 = self->_preferences;
    v8 = v6;
    *buf = 136315394;
    v67 = "[AssistantSiriAnalyticsService _buildDependenciesOnQueue]";
    v68 = 2048;
    selfCopy = [(SiriAnalyticsPreferences *)v7 killSwitchEnabled];
    _os_log_impl(&dword_1D9863000, v8, OS_LOG_TYPE_INFO, "%s 💀 kill switch enabled with pref: %ld", buf, 0x16u);

    goto LABEL_6;
  }

LABEL_8:
  v9 = SiriAnalyticsLogContextAssistant;
  if (os_log_type_enabled(SiriAnalyticsLogContextAssistant, OS_LOG_TYPE_INFO))
  {
    queue = self->_queue;
    killSwitchEnabled = self->_killSwitchEnabled;
    *buf = 136315906;
    v67 = "[AssistantSiriAnalyticsService _buildDependenciesOnQueue]";
    v68 = 2112;
    selfCopy = self;
    v70 = 2112;
    v71 = queue;
    v72 = 2048;
    v73 = killSwitchEnabled;
    _os_log_impl(&dword_1D9863000, v9, OS_LOG_TYPE_INFO, "%s Analytics service: %@ created on queue: %@ with killSwitchEnabled: %ld", buf, 0x2Au);
  }

  v12 = objc_alloc_init(SiriAnalyticsTailToOSLog);
  messageTailing = self->_messageTailing;
  self->_messageTailing = v12;

  v14 = [[SiriAnalyticsInternalTelemetry alloc] initWithPreferences:self->_preferences];
  internalTelemetry = self->_internalTelemetry;
  self->_internalTelemetry = v14;

  [(SiriAnalyticsInternalTelemetry *)self->_internalTelemetry trackRuntimeBootstrapWithKillSwitchEnabled:self->_killSwitchEnabled];
  v16 = objc_alloc_init(SiriAnalyticsMetastore);
  metastore = self->_metastore;
  self->_metastore = v16;

  v18 = objc_alloc_init(SiriAnalyticsMetastoreStreams);
  metastoreStreams = self->_metastoreStreams;
  self->_metastoreStreams = v18;

  v20 = [(SiriAnalyticsMetastoreStreams *)self->_metastoreStreams logicalClocksProviderWithMetastore:self->_metastore queue:self->_queue];
  logicalClocks = self->_logicalClocks;
  self->_logicalClocks = v20;

  v22 = [[_TtC13SiriAnalytics27SiriAnalyticsMessageStaging alloc] initWithInternalTelemetry:self->_internalTelemetry];
  messageStaging = self->_messageStaging;
  self->_messageStaging = v22;

  v24 = [SiriAnalyticsLargeMessageStorage alloc];
  v25 = [[SiriAnalyticsLargeMessageUploadProcessor alloc] initWithQueue:self->_queue metastore:self->_metastore logicalClocks:self->_logicalClocks];
  v26 = [(SiriAnalyticsLargeMessageStorage *)v24 initWithApplicationIdentifier:@"com.apple.assistantd" processor:v25 runtimeQueue:self->_queue];
  largeMessageStorage = self->_largeMessageStorage;
  self->_largeMessageStorage = v26;

  v28 = [[SiriAnalyticsSensitiveConditionsObservers alloc] initWithQueue:self->_queue];
  sensitiveConditionsObservers = self->_sensitiveConditionsObservers;
  self->_sensitiveConditionsObservers = v28;

  v30 = [[SiriAnalyticsMessageStore alloc] initWithPrefs:self->_preferences];
  messageStore = self->_messageStore;
  self->_messageStore = v30;

  v32 = objc_alloc_init(SiriAnalyticsRawUnifiedStream);
  rawUnifiedStream = self->_rawUnifiedStream;
  self->_rawUnifiedStream = v32;

  v34 = [[SiriAnalyticsFBFStorage alloc] initWithApplicationIdentifier:@"com.apple.assistantd" telemetry:self->_internalTelemetry];
  fbf = self->_fbf;
  self->_fbf = v34;

  v36 = objc_alloc_init(SiriAnalyticsPrivateLearningStorageProvider);
  v37 = [[SiriAnalyticsMessageTopics alloc] initWithFbfStorage:self->_fbf messageTailing:self->_messageTailing rawStream:self->_rawUnifiedStream messageStore:self->_messageStore];
  messageTopics = self->_messageTopics;
  self->_messageTopics = v37;

  v39 = [[SiriAnalyticsPreprocessor alloc] initWithMetastore:self->_metastore logicalClocks:self->_logicalClocks metastoreQueue:self->_queue telemetry:self->_internalTelemetry messageStaging:self->_messageStaging messageTopics:self->_messageTopics];
  preprocessor = self->_preprocessor;
  self->_preprocessor = v39;

  v41 = [[SiriAnalyticsMessageProcessingStrategy alloc] initWithMessageStaging:self->_messageStaging];
  messageProcessingStrategy = self->_messageProcessingStrategy;
  self->_messageProcessingStrategy = v41;

  if (!self->_killSwitchEnabled)
  {
    objc_initWeak(buf, self);
    v43 = [SiriAnalyticsClockInactivityScheduler alloc];
    v44 = self->_queue;
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __58__AssistantSiriAnalyticsService__buildDependenciesOnQueue__block_invoke;
    v64[3] = &unk_1E85871C0;
    objc_copyWeak(&v65, buf);
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __58__AssistantSiriAnalyticsService__buildDependenciesOnQueue__block_invoke_3;
    v62[3] = &unk_1E85871C0;
    objc_copyWeak(&v63, buf);
    v45 = [(SiriAnalyticsClockInactivityScheduler *)v43 initWithSeconds:30 queue:v44 expiration:v64 creation:v62];
    inactivityScheduler = self->_inactivityScheduler;
    self->_inactivityScheduler = v45;

    objc_destroyWeak(&v63);
    objc_destroyWeak(&v65);
    objc_destroyWeak(buf);
  }

  v47 = [SiriAnalyticsDataCollectionPolicyClockObserver alloc];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  siriAssistantConfiguration = [WeakRetained siriAssistantConfiguration];
  v50 = [(SiriAnalyticsDataCollectionPolicyClockObserver *)v47 initWithSiriConfiguration:siriAssistantConfiguration metastore:self->_metastore metastoreQueue:self->_queue];

  v51 = [[SiriAnalyticsMessageResolutionPipeline alloc] initWithQueue:self->_queue];
  messageResolutionPipeline = self->_messageResolutionPipeline;
  self->_messageResolutionPipeline = v51;

  v53 = [[AssistantSiriAnalyticsClockWatcher alloc] initWithInternalTelemetry:self->_internalTelemetry sensitiveConditionsObservers:self->_sensitiveConditionsObservers messageResolution:self->_messageResolutionPipeline preprocessor:self->_preprocessor logicalClocks:self->_logicalClocks scheduler:self->_inactivityScheduler dataPolicyObserver:v50];
  clockWatcher = self->_clockWatcher;
  self->_clockWatcher = v53;

  v55 = [[SiriAnalyticsWhiteRose alloc] initWithQueue:self->_queue delegate:self->_clockWatcher metastore:self->_metastore logicalClocks:self->_logicalClocks];
  whiteRose = self->_whiteRose;
  self->_whiteRose = v55;

  v57 = [[_TtC13SiriAnalytics32SiriAnalyticsFirstUnlockObserver alloc] initWithQueue:self->_queue];
  firstUnlockObserver = self->_firstUnlockObserver;
  self->_firstUnlockObserver = v57;

  v59 = [[SiriAnalyticsUserHistoryPolicy alloc] initWithMessageStaging:self->_messageStaging queue:self->_queue];
  userHistoryPolicy = self->_userHistoryPolicy;
  p_userHistoryPolicy = &self->_userHistoryPolicy;
  *p_userHistoryPolicy = v59;

  [*p_userHistoryPolicy startObserving];
}

void __58__AssistantSiriAnalyticsService__buildDependenciesOnQueue__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__AssistantSiriAnalyticsService__buildDependenciesOnQueue__block_invoke_2;
  v6[3] = &unk_1E85875D0;
  objc_copyWeak(&v8, (a1 + 32));
  v5 = v3;
  v7 = v5;
  [WeakRetained _pruneStorageWithCompletion:v6];

  objc_destroyWeak(&v8);
}

void __58__AssistantSiriAnalyticsService__buildDependenciesOnQueue__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__AssistantSiriAnalyticsService__buildDependenciesOnQueue__block_invoke_4;
  v6[3] = &unk_1E85875D0;
  objc_copyWeak(&v8, (a1 + 32));
  v5 = v3;
  v7 = v5;
  [WeakRetained _pruneStorageWithCompletion:v6];

  objc_destroyWeak(&v8);
}

void __58__AssistantSiriAnalyticsService__buildDependenciesOnQueue__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _getPreprocessor];
  [v2 triggerWithReason:1 completion:*(a1 + 32)];
}

void __58__AssistantSiriAnalyticsService__buildDependenciesOnQueue__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _getPreprocessor];
  [v2 triggerWithReason:0 completion:*(a1 + 32)];
}

- (void)_buildDependenciesWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__AssistantSiriAnalyticsService__buildDependenciesWithCompletion___block_invoke;
  v7[3] = &unk_1E8587C90;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

uint64_t __66__AssistantSiriAnalyticsService__buildDependenciesWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _buildDependenciesOnQueue];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (AssistantSiriAnalyticsService)initWithQueue:(id)queue delegate:(id)delegate
{
  delegateCopy = delegate;
  v27.receiver = self;
  v27.super_class = AssistantSiriAnalyticsService;
  v6 = [(AssistantSiriAnalyticsService *)&v27 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_UTILITY, 0);

    v9 = dispatch_queue_create("com.apple.siri.analytics.runtime", v8);
    queue = v6->_queue;
    v6->_queue = v9;

    objc_storeWeak(&v6->_delegate, delegateCopy);
    v11 = mach_continuous_time();
    v12 = dispatch_group_create();
    dispatch_group_enter(v12);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __56__AssistantSiriAnalyticsService_initWithQueue_delegate___block_invoke;
    v25[3] = &unk_1E8587918;
    v13 = v12;
    v26 = v13;
    [(AssistantSiriAnalyticsService *)v6 _buildDependenciesWithCompletion:v25];
    dispatch_group_enter(v13);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __56__AssistantSiriAnalyticsService_initWithQueue_delegate___block_invoke_2;
    v23[3] = &unk_1E8587918;
    v14 = v13;
    v24 = v14;
    [(AssistantSiriAnalyticsService *)v6 _bootstrapStorageWithCompletion:v23];
    dispatch_group_enter(v14);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __56__AssistantSiriAnalyticsService_initWithQueue_delegate___block_invoke_3;
    v21[3] = &unk_1E8587918;
    v22 = v14;
    v15 = v14;
    [(AssistantSiriAnalyticsService *)v6 _setupMaintenanceWorkWithCompletion:v21];
    v16 = v6->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__AssistantSiriAnalyticsService_initWithQueue_delegate___block_invoke_4;
    block[3] = &unk_1E8587198;
    v19 = v6;
    v20 = v11;
    dispatch_group_notify(v15, v16, block);
  }

  return v6;
}

uint64_t __56__AssistantSiriAnalyticsService_initWithQueue_delegate___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _setupIncomingConnections];
  v2 = mach_continuous_time();
  v3 = *(a1 + 40);
  if (_SiriAnalyticsMachAbsoluteTimeRate_onceToken[0] != -1)
  {
    dispatch_once(_SiriAnalyticsMachAbsoluteTimeRate_onceToken, &__block_literal_global);
  }

  v4 = (*&_SiriAnalyticsMachAbsoluteTimeRate_rate * (v2 - v3));
  v5 = *(*(a1 + 32) + 88);

  return [v5 trackRuntimeBootstrapCompleteWithBootstrapTimeInNs:v4];
}

@end