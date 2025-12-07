@interface SVXServiceCommandTransaction
- (SVXServiceCommandTransaction)initWithPerformer:(id)performer command:(id)command handlers:(id)handlers taskTracker:(id)tracker dependencies:(id)dependencies completion:(id)completion;
- (id)description;
- (void)_addBlockedTransaction:(id)transaction;
- (void)_didHandleAll;
- (void)_didPrepareAll;
- (void)_dispatchCompletionWithResult:(id)result;
- (void)_handle;
- (void)_handler:(id)_handler didHandleWithResult:(id)result completion:(id)completion;
- (void)_handler:(id)_handler didPrepareSuccessfully:(BOOL)successfully context:(id)context completion:(id)completion;
- (void)_invalidate;
- (void)_prepare;
- (void)_removeBlockingTransaction:(id)transaction;
- (void)_unblockDependentTransactions;
- (void)addBlockedTransaction:(id)transaction;
- (void)dealloc;
- (void)handler:(id)handler didHandleWithResult:(id)result completion:(id)completion;
- (void)handler:(id)handler didPrepareSuccessfully:(BOOL)successfully context:(id)context completion:(id)completion;
- (void)invalidate;
- (void)removeBlockingTransaction:(id)transaction;
@end

@implementation SVXServiceCommandTransaction

- (void)_dispatchCompletionWithResult:(id)result
{
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, result);
    v5 = self->_completion;
    self->_completion = 0;
  }
}

- (void)_unblockDependentTransactions
{
  if ([(NSHashTable *)self->_blockedTransactions count])
  {
    setRepresentation = [(NSHashTable *)self->_blockedTransactions setRepresentation];
    performer = self->_performer;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __61__SVXServiceCommandTransaction__unblockDependentTransactions__block_invoke;
    v6[3] = &unk_279C68FE8;
    v7 = setRepresentation;
    selfCopy = self;
    v5 = setRepresentation;
    [(SVXPerforming *)performer performBlock:v6 withOptions:0];
  }
}

void __61__SVXServiceCommandTransaction__unblockDependentTransactions__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) removeBlockingTransaction:{*(a1 + 40), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_invalidate
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "[SVXServiceCommandTransaction _invalidate]";
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  self->_state = 5;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  aceId = [(SAAceCommand *)self->_command aceId];
  v6 = [v4 initWithFormat:@"Service command handling context invalidated for command %@.", aceId];
  v7 = [SVXServiceCommandResult resultFailureWithErrorCode:0 reason:v6];
  [(SVXServiceCommandTransaction *)self _dispatchCompletionWithResult:v7];

  [(SVXServiceCommandTransaction *)self _unblockDependentTransactions];
  blockedTransactions = self->_blockedTransactions;
  self->_blockedTransactions = 0;

  blockingTransactions = self->_blockingTransactions;
  self->_blockingTransactions = 0;

  preparedContextsByHandlerIdentifier = self->_preparedContextsByHandlerIdentifier;
  self->_preparedContextsByHandlerIdentifier = 0;

  preparedResultsByHandlerIdentifier = self->_preparedResultsByHandlerIdentifier;
  self->_preparedResultsByHandlerIdentifier = 0;

  taskTracker = self->_taskTracker;
  self->_taskTracker = 0;
}

- (void)_didHandleAll
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "[SVXServiceCommandTransaction _didHandleAll]";
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s %@", &v13, 0x16u);
  }

  state = self->_state;
  if (state == 3)
  {
    self->_state = 4;
    v6 = [(NSMutableDictionary *)self->_handledResultsByHandlerIdentifier count];
    if (v6 == 1)
    {
      allValues = [(NSMutableDictionary *)self->_handledResultsByHandlerIdentifier allValues];
      firstObject = [allValues firstObject];
    }

    else
    {
      if (!v6)
      {
        v7 = +[SVXServiceCommandResult resultIgnored];
LABEL_12:
        [(SVXServiceCommandTransaction *)self _dispatchCompletionWithResult:v7];
        [(SVXServiceCommandTransaction *)self _unblockDependentTransactions];
        blockedTransactions = self->_blockedTransactions;
        self->_blockedTransactions = 0;

        taskTracker = self->_taskTracker;
        self->_taskTracker = 0;

        return;
      }

      allValues = [(NSMutableDictionary *)self->_handledResultsByHandlerIdentifier allValues];
      firstObject = [SVXServiceCommandResult resultWithResults:allValues];
    }

    v7 = firstObject;

    goto LABEL_12;
  }

  v8 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "[SVXServiceCommandTransaction _didHandleAll]";
    v15 = 2048;
    selfCopy = state;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s Ignored because state is %ld.", &v13, 0x16u);
  }
}

- (void)_handler:(id)_handler didHandleWithResult:(id)result completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  _handlerCopy = _handler;
  resultCopy = result;
  completionCopy = completion;
  v11 = MEMORY[0x277CEF098];
  v12 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "[SVXServiceCommandTransaction _handler:didHandleWithResult:completion:]";
    v21 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s %@", &v19, 0x16u);
  }

  state = self->_state;
  if (state == 3)
  {
    if (resultCopy)
    {
      handledResultsByHandlerIdentifier = self->_handledResultsByHandlerIdentifier;
      if (!handledResultsByHandlerIdentifier)
      {
        v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v16 = self->_handledResultsByHandlerIdentifier;
        self->_handledResultsByHandlerIdentifier = v15;

        handledResultsByHandlerIdentifier = self->_handledResultsByHandlerIdentifier;
      }

      identifier = [_handlerCopy identifier];
      [(NSMutableDictionary *)handledResultsByHandlerIdentifier setObject:resultCopy forKey:identifier];
    }
  }

  else
  {
    v18 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
    {
      v19 = 136315394;
      v20 = "[SVXServiceCommandTransaction _handler:didHandleWithResult:completion:]";
      v21 = 2048;
      selfCopy = state;
      _os_log_impl(&dword_2695B9000, v18, OS_LOG_TYPE_INFO, "%s Ignored because state is %ld.", &v19, 0x16u);
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)_handle
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v41 = "[SVXServiceCommandTransaction _handle]";
    v42 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  state = self->_state;
  if (state != 2)
  {
    v10 = *v3;
    if (!os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 136315394;
    v41 = "[SVXServiceCommandTransaction _handle]";
    v42 = 2048;
    selfCopy = state;
    v8 = "%s Ignored because state is %ld.";
    v9 = v10;
    goto LABEL_9;
  }

  if ([(NSMutableSet *)self->_blockingTransactions count])
  {
    v6 = *v3;
    if (!os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
    {
      return;
    }

    blockingTransactions = self->_blockingTransactions;
    *buf = 136315394;
    v41 = "[SVXServiceCommandTransaction _handle]";
    v42 = 2112;
    selfCopy = blockingTransactions;
    v8 = "%s Ignored because blocked by %@.";
    v9 = v6;
LABEL_9:
    _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, v8, buf, 0x16u);
    return;
  }

  self->_state = 3;
  objc_initWeak(buf, self);
  v11 = dispatch_group_create();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = self->_handlers;
  v12 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v12)
  {
    v27 = *v36;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        dispatch_group_enter(v11);
        identifier = [v14 identifier];
        v16 = [(NSMutableDictionary *)self->_preparedResultsByHandlerIdentifier objectForKey:identifier];
        bOOLValue = [v16 BOOLValue];

        if (bOOLValue)
        {
          command = self->_command;
          v19 = [(NSMutableDictionary *)self->_preparedContextsByHandlerIdentifier objectForKey:identifier];
          taskTracker = self->_taskTracker;
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __39__SVXServiceCommandTransaction__handle__block_invoke;
          v32[3] = &unk_279C690D8;
          objc_copyWeak(&v34, buf);
          v32[4] = v14;
          v33 = v11;
          [v14 handleCommand:command withContext:v19 taskTracker:taskTracker completion:v32];

          objc_destroyWeak(&v34);
        }

        else
        {
          v21 = objc_alloc(MEMORY[0x277CCACA8]);
          aceId = [(SAAceCommand *)self->_command aceId];
          v23 = [v21 initWithFormat:@"Failed to prepare command %@.", aceId];
          v24 = [SVXServiceCommandResult resultFailureWithErrorCode:0 reason:v23];
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __39__SVXServiceCommandTransaction__handle__block_invoke_3;
          v30[3] = &unk_279C68FC0;
          v31 = v11;
          [(SVXServiceCommandTransaction *)self _handler:v14 didHandleWithResult:v24 completion:v30];
        }
      }

      v12 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v12);
  }

  v25 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SVXServiceCommandTransaction__handle__block_invoke_4;
  block[3] = &unk_279C690B0;
  block[4] = self;
  objc_copyWeak(&v29, buf);
  dispatch_group_notify(v11, v25, block);

  objc_destroyWeak(&v29);
  objc_destroyWeak(buf);
}

void __39__SVXServiceCommandTransaction__handle__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__SVXServiceCommandTransaction__handle__block_invoke_2;
  v6[3] = &unk_279C68FC0;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  [WeakRetained handler:v5 didHandleWithResult:v3 completion:v6];
}

void __39__SVXServiceCommandTransaction__handle__block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __39__SVXServiceCommandTransaction__handle__block_invoke_5;
  v2[3] = &unk_279C69088;
  objc_copyWeak(&v3, (a1 + 40));
  [v1 performBlock:v2];
  objc_destroyWeak(&v3);
}

void __39__SVXServiceCommandTransaction__handle__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didHandleAll];
}

- (void)_didPrepareAll
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[SVXServiceCommandTransaction _didPrepareAll]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
  }

  state = self->_state;
  if (state == 1)
  {
    self->_state = 2;
    [(SVXServiceCommandTransaction *)self _handle];
  }

  else
  {
    v6 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[SVXServiceCommandTransaction _didPrepareAll]";
      v9 = 2048;
      selfCopy = state;
      _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s Ignored because state is %ld.", &v7, 0x16u);
    }
  }
}

- (void)_handler:(id)_handler didPrepareSuccessfully:(BOOL)successfully context:(id)context completion:(id)completion
{
  successfullyCopy = successfully;
  v30 = *MEMORY[0x277D85DE8];
  _handlerCopy = _handler;
  contextCopy = context;
  completionCopy = completion;
  v13 = MEMORY[0x277CEF098];
  v14 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v26 = 136315394;
    v27 = "[SVXServiceCommandTransaction _handler:didPrepareSuccessfully:context:completion:]";
    v28 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_2695B9000, v14, OS_LOG_TYPE_INFO, "%s %@", &v26, 0x16u);
  }

  state = self->_state;
  if (state == 1)
  {
    identifier = [_handlerCopy identifier];
    preparedResultsByHandlerIdentifier = self->_preparedResultsByHandlerIdentifier;
    if (!preparedResultsByHandlerIdentifier)
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v19 = self->_preparedResultsByHandlerIdentifier;
      self->_preparedResultsByHandlerIdentifier = v18;

      preparedResultsByHandlerIdentifier = self->_preparedResultsByHandlerIdentifier;
    }

    v20 = [MEMORY[0x277CCABB0] numberWithBool:successfullyCopy];
    [(NSMutableDictionary *)preparedResultsByHandlerIdentifier setObject:v20 forKey:identifier];

    if (contextCopy)
    {
      preparedContextsByHandlerIdentifier = self->_preparedContextsByHandlerIdentifier;
      if (!preparedContextsByHandlerIdentifier)
      {
        v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v23 = self->_preparedContextsByHandlerIdentifier;
        self->_preparedContextsByHandlerIdentifier = v22;

        preparedContextsByHandlerIdentifier = self->_preparedContextsByHandlerIdentifier;
      }

      v24 = [contextCopy copy];
      [(NSMutableDictionary *)preparedContextsByHandlerIdentifier setObject:v24 forKey:identifier];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    v25 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
    {
      v26 = 136315394;
      v27 = "[SVXServiceCommandTransaction _handler:didPrepareSuccessfully:context:completion:]";
      v28 = 2048;
      selfCopy = state;
      _os_log_impl(&dword_2695B9000, v25, OS_LOG_TYPE_INFO, "%s Ignored because state is %ld.", &v26, 0x16u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (void)_prepare
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v30 = "[SVXServiceCommandTransaction _prepare]";
    v31 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  state = self->_state;
  if (state)
  {
    v6 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v30 = "[SVXServiceCommandTransaction _prepare]";
      v31 = 2048;
      selfCopy = state;
      _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s Ignored because state is %ld.", buf, 0x16u);
    }
  }

  else
  {
    self->_state = 1;
    objc_initWeak(buf, self);
    v7 = dispatch_group_create();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = self->_handlers;
    v8 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = *v25;
      v14 = v19;
      do
      {
        v10 = 0;
        do
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v24 + 1) + 8 * v10);
          dispatch_group_enter(v7);
          if (objc_opt_respondsToSelector())
          {
            command = self->_command;
            v21[0] = MEMORY[0x277D85DD0];
            v21[1] = 3221225472;
            v21[2] = __40__SVXServiceCommandTransaction__prepare__block_invoke;
            v21[3] = &unk_279C69060;
            objc_copyWeak(&v23, buf);
            v21[4] = v11;
            v22 = v7;
            [v11 prepareToHandleCommand:command completion:v21];

            objc_destroyWeak(&v23);
          }

          else
          {
            v18[0] = MEMORY[0x277D85DD0];
            v18[1] = 3221225472;
            v19[0] = __40__SVXServiceCommandTransaction__prepare__block_invoke_3;
            v19[1] = &unk_279C68FC0;
            v20 = v7;
            [(SVXServiceCommandTransaction *)self _handler:v11 didPrepareSuccessfully:1 context:0 completion:v18, v14];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v8);
    }

    v13 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__SVXServiceCommandTransaction__prepare__block_invoke_4;
    block[3] = &unk_279C690B0;
    block[4] = self;
    objc_copyWeak(&v17, buf);
    dispatch_group_notify(v7, v13, block);

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }
}

void __40__SVXServiceCommandTransaction__prepare__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__SVXServiceCommandTransaction__prepare__block_invoke_2;
  v8[3] = &unk_279C68FC0;
  v7 = *(a1 + 32);
  v9 = *(a1 + 40);
  [WeakRetained handler:v7 didPrepareSuccessfully:a2 context:v5 completion:v8];
}

void __40__SVXServiceCommandTransaction__prepare__block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __40__SVXServiceCommandTransaction__prepare__block_invoke_5;
  v2[3] = &unk_279C69088;
  objc_copyWeak(&v3, (a1 + 40));
  [v1 performBlock:v2];
  objc_destroyWeak(&v3);
}

void __40__SVXServiceCommandTransaction__prepare__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didPrepareAll];
}

- (void)_removeBlockingTransaction:(id)transaction
{
  v12 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[SVXServiceCommandTransaction _removeBlockingTransaction:]";
    v8 = 2112;
    selfCopy = self;
    v10 = 2112;
    v11 = transactionCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s %@ is no longer blocked by %@.", &v6, 0x20u);
  }

  [(NSMutableSet *)self->_blockingTransactions removeObject:transactionCopy];
  [(SVXServiceCommandTransaction *)self _handle];
}

- (void)_addBlockedTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = transactionCopy;
  v9 = transactionCopy;
  if ((self->_state & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    [transactionCopy removeBlockingTransaction:self];
  }

  else
  {
    blockedTransactions = self->_blockedTransactions;
    if (!blockedTransactions)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v8 = self->_blockedTransactions;
      self->_blockedTransactions = weakObjectsHashTable;

      v5 = v9;
      blockedTransactions = self->_blockedTransactions;
    }

    [(NSHashTable *)blockedTransactions addObject:v5];
  }
}

- (void)handler:(id)handler didHandleWithResult:(id)result completion:(id)completion
{
  handlerCopy = handler;
  resultCopy = result;
  completionCopy = completion;
  performer = self->_performer;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__SVXServiceCommandTransaction_handler_didHandleWithResult_completion___block_invoke;
  v15[3] = &unk_279C69038;
  v15[4] = self;
  v16 = handlerCopy;
  v17 = resultCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = resultCopy;
  v14 = handlerCopy;
  [(SVXPerforming *)performer performBlock:v15];
}

- (void)handler:(id)handler didPrepareSuccessfully:(BOOL)successfully context:(id)context completion:(id)completion
{
  handlerCopy = handler;
  contextCopy = context;
  completionCopy = completion;
  performer = self->_performer;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __82__SVXServiceCommandTransaction_handler_didPrepareSuccessfully_context_completion___block_invoke;
  v17[3] = &unk_279C69010;
  v17[4] = self;
  v18 = handlerCopy;
  successfullyCopy = successfully;
  v19 = contextCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = contextCopy;
  v16 = handlerCopy;
  [(SVXPerforming *)performer performBlock:v17];
}

- (void)removeBlockingTransaction:(id)transaction
{
  transactionCopy = transaction;
  performer = self->_performer;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__SVXServiceCommandTransaction_removeBlockingTransaction___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = transactionCopy;
  v6 = transactionCopy;
  [(SVXPerforming *)performer performBlock:v7];
}

- (void)addBlockedTransaction:(id)transaction
{
  transactionCopy = transaction;
  performer = self->_performer;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SVXServiceCommandTransaction_addBlockedTransaction___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = transactionCopy;
  v6 = transactionCopy;
  [(SVXPerforming *)performer performBlock:v7];
}

- (void)invalidate
{
  performer = self->_performer;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__SVXServiceCommandTransaction_invalidate__block_invoke;
  v3[3] = &unk_279C68FC0;
  v3[4] = self;
  [(SVXPerforming *)performer performBlock:v3];
}

- (SVXServiceCommandTransaction)initWithPerformer:(id)performer command:(id)command handlers:(id)handlers taskTracker:(id)tracker dependencies:(id)dependencies completion:(id)completion
{
  v63 = *MEMORY[0x277D85DE8];
  performerCopy = performer;
  commandCopy = command;
  handlersCopy = handlers;
  trackerCopy = tracker;
  dependenciesCopy = dependencies;
  completionCopy = completion;
  v60.receiver = self;
  v60.super_class = SVXServiceCommandTransaction;
  v20 = [(SVXServiceCommandTransaction *)&v60 init];
  v21 = v20;
  if (v20)
  {
    v44 = trackerCopy;
    v47 = performerCopy;
    objc_storeStrong(&v20->_performer, performer);
    v21->_state = 0;
    v46 = commandCopy;
    v22 = [commandCopy copy];
    command = v21->_command;
    v21->_command = v22;

    v24 = [handlersCopy copy];
    handlers = v21->_handlers;
    v21->_handlers = v24;

    objc_storeStrong(&v21->_taskTracker, tracker);
    v43 = completionCopy;
    v26 = MEMORY[0x26D642680](completionCopy);
    completion = v21->_completion;
    v21->_completion = v26;

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v45 = handlersCopy;
    obj = handlersCopy;
    v28 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v57;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v57 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v56 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v33 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(dependenciesCopy, "count")}];
            blockingTransactions = v21->_blockingTransactions;
            v21->_blockingTransactions = v33;

            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            v35 = dependenciesCopy;
            v36 = [v35 countByEnumeratingWithState:&v52 objects:v61 count:16];
            if (v36)
            {
              v37 = v36;
              v38 = *v53;
              do
              {
                for (j = 0; j != v37; ++j)
                {
                  if (*v53 != v38)
                  {
                    objc_enumerationMutation(v35);
                  }

                  v40 = *(*(&v52 + 1) + 8 * j);
                  if ([v32 shouldDependOnCommand:v40[6]])
                  {
                    [(NSMutableSet *)v21->_blockingTransactions addObject:v40];
                    [v40 addBlockedTransaction:v21];
                  }
                }

                v37 = [v35 countByEnumeratingWithState:&v52 objects:v61 count:16];
              }

              while (v37);
            }
          }
        }

        v29 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
      }

      while (v29);
    }

    performer = v21->_performer;
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __103__SVXServiceCommandTransaction_initWithPerformer_command_handlers_taskTracker_dependencies_completion___block_invoke;
    v50[3] = &unk_279C68FC0;
    v51 = v21;
    [(SVXPerforming *)performer performBlock:v50 withOptions:0];

    commandCopy = v46;
    performerCopy = v47;
    trackerCopy = v44;
    handlersCopy = v45;
    completionCopy = v43;
  }

  return v21;
}

- (void)dealloc
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  aceId = [(SAAceCommand *)self->_command aceId];
  v5 = [v3 initWithFormat:@"Service command handling context deallocated for command %@.", aceId];
  v6 = [SVXServiceCommandResult resultFailureWithErrorCode:0 reason:v5];
  [(SVXServiceCommandTransaction *)self _dispatchCompletionWithResult:v6];

  v7.receiver = self;
  v7.super_class = SVXServiceCommandTransaction;
  [(SVXServiceCommandTransaction *)&v7 dealloc];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v7.receiver = self;
  v7.super_class = SVXServiceCommandTransaction;
  v4 = [(SVXServiceCommandTransaction *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ {command = %@, handlers = %@, taskTracker = %@}", v4, self->_command, self->_handlers, self->_taskTracker];

  return v5;
}

@end