@interface SVXServiceCommandHandlerUIAddDialogs
- (BOOL)isCommandUUFR:(id)r;
- (BOOL)shouldDependOnCommand:(id)command;
- (SVXServiceCommandHandlerUIAddDialogs)initWithHandlers:(id)handlers dialogTransformer:(id)transformer;
- (void)handleCommand:(id)command withContext:(id)context taskTracker:(id)tracker completion:(id)completion;
- (void)prepareToHandleCommand:(id)command completion:(id)completion;
@end

@implementation SVXServiceCommandHandlerUIAddDialogs

- (void)handleCommand:(id)command withContext:(id)context taskTracker:(id)tracker completion:(id)completion
{
  v66 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  contextCopy = context;
  trackerCopy = tracker;
  completionCopy = completion;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SVXServiceCommandHandlerUIAddDialogs.m" lineNumber:152 description:{@"Invalid parameter not satisfying: %@", @"[command isKindOfClass:[SAUIAddDialogs class]]"}];
  }

  objc_opt_class();
  v40 = completionCopy;
  v41 = commandCopy;
  if (objc_opt_isKindOfClass())
  {
    array = contextCopy;
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  v14 = array;
  v15 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v38 = v15;
    *buf = 136315394;
    v60 = "[SVXServiceCommandHandlerUIAddDialogs handleCommand:withContext:taskTracker:completion:]";
    v61 = 2048;
    v62 = [v14 count];
    _os_log_debug_impl(&dword_2695B9000, v38, OS_LOG_TYPE_DEBUG, "%s AddDialogs handler retrieved %tu command/context pairs from context", buf, 0x16u);
  }

  v42 = contextCopy;
  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v14, "count")}];
  v17 = dispatch_group_create();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v14;
  v18 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v56;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v56 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v55 + 1) + 8 * i);
        command = [v22 command];
        handlersByCommandType = self->_handlersByCommandType;
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = [(NSDictionary *)handlersByCommandType objectForKey:v26];

        v28 = *MEMORY[0x277CEF098];
        v29 = *MEMORY[0x277CEF098];
        if (v27)
        {
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v60 = "[SVXServiceCommandHandlerUIAddDialogs handleCommand:withContext:taskTracker:completion:]";
            v61 = 2112;
            v62 = command;
            _os_log_debug_impl(&dword_2695B9000, v28, OS_LOG_TYPE_DEBUG, "%s AddDialogs handler delegating command handling for command %@", buf, 0x16u);
          }

          dispatch_group_enter(v17);
          context = [v22 context];
          v51[0] = MEMORY[0x277D85DD0];
          v51[1] = 3221225472;
          v51[2] = __89__SVXServiceCommandHandlerUIAddDialogs_handleCommand_withContext_taskTracker_completion___block_invoke;
          v51[3] = &unk_279C67508;
          v52 = v16;
          v31 = command;
          v53 = v31;
          v54 = v17;
          [v27 handleCommand:v31 withContext:context taskTracker:trackerCopy completion:v51];

          v32 = v52;
        }

        else
        {
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v33 = self->_handlersByCommandType;
            *buf = 136315650;
            v60 = "[SVXServiceCommandHandlerUIAddDialogs handleCommand:withContext:taskTracker:completion:]";
            v61 = 2112;
            v62 = command;
            v63 = 2112;
            v64 = v33;
            _os_log_error_impl(&dword_2695B9000, v28, OS_LOG_TYPE_ERROR, "%s AddDialogs could not find an handler for command: %@ with handlers: %@", buf, 0x20u);
          }

          v32 = [SVXServiceCommandResult resultFailureWithErrorCode:0 reason:@"No appropriate handler for command"];
          [v16 addObject:v32];
        }
      }

      v19 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
    }

    while (v19);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__SVXServiceCommandHandlerUIAddDialogs_handleCommand_withContext_taskTracker_completion___block_invoke_47;
  block[3] = &unk_279C69038;
  v47 = v17;
  v48 = v41;
  v49 = v16;
  v50 = v40;
  v34 = v16;
  v35 = v40;
  v36 = v41;
  v37 = v17;
  dispatch_group_notify(v37, MEMORY[0x277D85CD0], block);
}

void __89__SVXServiceCommandHandlerUIAddDialogs_handleCommand_withContext_taskTracker_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) addObject:a2];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 40);
    v5 = 136315394;
    v6 = "[SVXServiceCommandHandlerUIAddDialogs handleCommand:withContext:taskTracker:completion:]_block_invoke";
    v7 = 2112;
    v8 = v4;
    _os_log_debug_impl(&dword_2695B9000, v3, OS_LOG_TYPE_DEBUG, "%s AddDialogs handler received a result command handling for command %@", &v5, 0x16u);
  }

  dispatch_group_leave(*(a1 + 48));
}

void __89__SVXServiceCommandHandlerUIAddDialogs_handleCommand_withContext_taskTracker_completion___block_invoke_47(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v4 = a1[5];
    v7 = 136315650;
    v8 = "[SVXServiceCommandHandlerUIAddDialogs handleCommand:withContext:taskTracker:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_2695B9000, v2, OS_LOG_TYPE_INFO, "%s End TTS request group %@ for %@.", &v7, 0x20u);
  }

  v5 = a1[7];
  if (v5)
  {
    v6 = [SVXServiceCommandResult resultWithResults:a1[6]];
    (*(v5 + 16))(v5, v6);
  }
}

- (void)prepareToHandleCommand:(id)command completion:(id)completion
{
  v52 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  completionCopy = completion;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SVXServiceCommandHandlerUIAddDialogs.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"[command isKindOfClass:[SAUIAddDialogs class]]"}];
  }

  v29 = commandCopy;
  v8 = [(SVXDialogTransformer *)self->_dialogTransformer transformAddDialogs:commandCopy];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v46 = "[SVXServiceCommandHandlerUIAddDialogs prepareToHandleCommand:completion:]";
    v47 = 2112;
    v48 = v8;
    _os_log_debug_impl(&dword_2695B9000, v9, OS_LOG_TYPE_DEBUG, "%s AddDialogs transformed into commands: %@", buf, 0x16u);
  }

  v32 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  array = [MEMORY[0x277CBEB18] array];
  group = dispatch_group_create();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v8;
  v11 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v42;
LABEL_7:
    v14 = 0;
    while (1)
    {
      if (*v42 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v41 + 1) + 8 * v14);
      if ([array count])
      {
        break;
      }

      handlersByCommandType = self->_handlersByCommandType;
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = [(NSDictionary *)handlersByCommandType objectForKey:v18];

      if (v19)
      {
        if (objc_opt_respondsToSelector())
        {
          v20 = *MEMORY[0x277CEF098];
          if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v46 = "[SVXServiceCommandHandlerUIAddDialogs prepareToHandleCommand:completion:]";
            v47 = 2112;
            v48 = v15;
            _os_log_debug_impl(&dword_2695B9000, v20, OS_LOG_TYPE_DEBUG, "%s AddDialogs handler delegating command handling for command %@", buf, 0x16u);
          }

          dispatch_group_enter(group);
          v37[0] = MEMORY[0x277D85DD0];
          v37[1] = 3221225472;
          v37[2] = __74__SVXServiceCommandHandlerUIAddDialogs_prepareToHandleCommand_completion___block_invoke;
          v37[3] = &unk_279C674E0;
          v37[4] = v15;
          v38 = v32;
          v39 = array;
          v40 = group;
          [v19 prepareToHandleCommand:v15 completion:v37];
        }

        else
        {
          v22 = [[_AddDialogsContextPair alloc] initWithCommand:v15 context:0];
          [v32 addObject:v22];
        }
      }

      else
      {
        v21 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
        {
          v23 = self->_handlersByCommandType;
          *buf = 136315650;
          v46 = "[SVXServiceCommandHandlerUIAddDialogs prepareToHandleCommand:completion:]";
          v47 = 2112;
          v48 = v15;
          v49 = 2112;
          v50 = v23;
          _os_log_error_impl(&dword_2695B9000, v21, OS_LOG_TYPE_ERROR, "%s AddDialogs could not find an handler for command: %@ with handlers: %@", buf, 0x20u);
        }

        [array addObject:v15];
      }

      if (v12 == ++v14)
      {
        v12 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
        if (v12)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__SVXServiceCommandHandlerUIAddDialogs_prepareToHandleCommand_completion___block_invoke_39;
  block[3] = &unk_279C68EA8;
  v34 = v32;
  v35 = array;
  v36 = completionCopy;
  v24 = completionCopy;
  v25 = array;
  v26 = v32;
  dispatch_group_notify(group, MEMORY[0x277D85CD0], block);
}

void __74__SVXServiceCommandHandlerUIAddDialogs_prepareToHandleCommand_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277CEF098];
  v7 = *MEMORY[0x277CEF098];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      v12 = 136315394;
      v13 = "[SVXServiceCommandHandlerUIAddDialogs prepareToHandleCommand:completion:]_block_invoke";
      v14 = 2112;
      v15 = v10;
      _os_log_debug_impl(&dword_2695B9000, v6, OS_LOG_TYPE_DEBUG, "%s AddDialogs handler successfully prepared context for command %@", &v12, 0x16u);
    }

    v8 = *(a1 + 40);
    v9 = [[_AddDialogsContextPair alloc] initWithCommand:*(a1 + 32) context:v5];
    [v8 addObject:v9];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = 136315394;
      v13 = "[SVXServiceCommandHandlerUIAddDialogs prepareToHandleCommand:completion:]_block_invoke";
      v14 = 2112;
      v15 = v11;
      _os_log_error_impl(&dword_2695B9000, v6, OS_LOG_TYPE_ERROR, "%s AddDialogs handler preparing context failed for command %@", &v12, 0x16u);
    }

    [*(a1 + 48) addObject:*(a1 + 32)];
  }

  dispatch_group_leave(*(a1 + 56));
}

void __74__SVXServiceCommandHandlerUIAddDialogs_prepareToHandleCommand_completion___block_invoke_39(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 count];
    v6 = [*(a1 + 40) count];
    v7 = 136315650;
    v8 = "[SVXServiceCommandHandlerUIAddDialogs prepareToHandleCommand:completion:]_block_invoke";
    v9 = 2048;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    _os_log_debug_impl(&dword_2695B9000, v4, OS_LOG_TYPE_DEBUG, "%s AddDialogs handler finished preparing commands with %tu command/context pairs and %tu failed commands", &v7, 0x20u);
  }

  if (*(a1 + 48))
  {
    [*(a1 + 40) count];
    (*(*(a1 + 48) + 16))();
  }
}

- (BOOL)isCommandUUFR:(id)r
{
  v24 = *MEMORY[0x277D85DE8];
  rCopy = r;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SVXServiceCommandHandlerUIAddDialogs.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"[command isKindOfClass:[SAUIAddDialogs class]]"}];
  }

  [(SVXDialogTransformer *)self->_dialogTransformer transformAddDialogs:rCopy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v22 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        handlersByCommandType = self->_handlersByCommandType;
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = [(NSDictionary *)handlersByCommandType objectForKeyedSubscript:v14];

        if (v15 && (objc_opt_respondsToSelector() & 1) != 0 && ([v15 isCommandUUFR:v11] & 1) != 0)
        {

          v16 = 1;
          goto LABEL_15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_15:

  return v16;
}

- (BOOL)shouldDependOnCommand:(id)command
{
  commandCopy = command;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
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

- (SVXServiceCommandHandlerUIAddDialogs)initWithHandlers:(id)handlers dialogTransformer:(id)transformer
{
  v33 = *MEMORY[0x277D85DE8];
  handlersCopy = handlers;
  transformerCopy = transformer;
  v31.receiver = self;
  v31.super_class = SVXServiceCommandHandlerUIAddDialogs;
  v8 = [(SVXServiceCommandHandlerUIAddDialogs *)&v31 init];
  if (v8)
  {
    v26 = transformerCopy;
    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    supportedCommandClass = [objc_opt_class() supportedCommandClass];
    v11 = NSStringFromClass(supportedCommandClass);
    v12 = [v9 initWithFormat:@"com.apple.SiriVOXService.service-command.%@", v11];
    identifier = v8->_identifier;
    v8->_identifier = v12;

    v14 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(handlersCopy, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = handlersCopy;
    v16 = [v15 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v28;
      do
      {
        v19 = 0;
        do
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v27 + 1) + 8 * v19);
          supportedCommandClass2 = [objc_opt_class() supportedCommandClass];
          v22 = NSStringFromClass(supportedCommandClass2);
          [v14 setObject:v20 forKey:v22];

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v17);
    }

    v23 = [v14 copy];
    handlersByCommandType = v8->_handlersByCommandType;
    v8->_handlersByCommandType = v23;

    objc_storeStrong(&v8->_dialogTransformer, transformer);
    transformerCopy = v26;
  }

  return v8;
}

@end