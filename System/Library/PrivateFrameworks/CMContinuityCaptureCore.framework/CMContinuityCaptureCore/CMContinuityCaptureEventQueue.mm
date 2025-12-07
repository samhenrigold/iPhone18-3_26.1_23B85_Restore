@interface CMContinuityCaptureEventQueue
- (CMContinuityCaptureEventQueue)initWithActionDelegate:(id)delegate queue:(id)queue;
- (void)_dropStreamStartEventsForEntityIfApplicable;
- (void)_notifyCompletion;
- (void)enqueueEventAction:(unint64_t)action args:(id)args;
- (void)notifyCompletion;
- (void)notifyCompletionForIdentifier:(id)identifier;
- (void)setEventCompletionExpectationForIdentifiers:(id)identifiers;
@end

@implementation CMContinuityCaptureEventQueue

- (void)enqueueEventAction:(unint64_t)action args:(id)args
{
  argsCopy = args;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__CMContinuityCaptureEventQueue_enqueueEventAction_args___block_invoke;
  block[3] = &unk_278D5CFF8;
  objc_copyWeak(v12, &location);
  v12[1] = action;
  v10 = argsCopy;
  selfCopy = self;
  v8 = argsCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void __57__CMContinuityCaptureEventQueue_enqueueEventAction_args___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_loadWeakRetained((a1 + 48));
      v5 = *(a1 + 56);
      v6 = *(a1 + 32);
      v7 = [WeakRetained[3] count];
      *buf = 138413058;
      v13 = v4;
      v14 = 1024;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      v18 = 2048;
      v19 = v7;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%@ enqueueEventAction %d %@ pendingActionCount %ld", buf, 0x26u);
    }

    v8 = objc_loadWeakRetained(WeakRetained + 1);
    v9 = WeakRetained[3];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:@"ContinuityCaptureSelector"];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    [v9 addObject:?];

    if ([WeakRetained[3] count] == 1 && (objc_msgSend(v8, "postEventAction:args:") & 1) == 0)
    {
      [*(a1 + 40) notifyCompletion];
    }
  }

  else
  {
    v8 = 0;
  }
}

- (void)setEventCompletionExpectationForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__CMContinuityCaptureEventQueue_setEventCompletionExpectationForIdentifiers___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v9, &location);
  v8 = identifiersCopy;
  v6 = identifiersCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __77__CMContinuityCaptureEventQueue_setEventCompletionExpectationForIdentifiers___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:?];
    v3 = v4[4];
    v4[4] = v2;

    WeakRetained = v4;
  }
}

- (void)notifyCompletionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__CMContinuityCaptureEventQueue_notifyCompletionForIdentifier___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v9, &location);
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __63__CMContinuityCaptureEventQueue_notifyCompletionForIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (CMContinityCaptureDebugLogEnabled(WeakRetained, v3))
    {
      v5 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v8 = objc_loadWeakRetained((a1 + 40));
        v9 = *(a1 + 32);
        v10 = *(v4 + 4);
        v11 = *(v4 + 5);
        v12 = 138413058;
        v13 = v8;
        v14 = 2114;
        v15 = v9;
        v16 = 2114;
        v17 = v10;
        v18 = 2114;
        v19 = v11;
        _os_log_debug_impl(&dword_242545000, v5, OS_LOG_TYPE_DEBUG, "%@ notify completion for identifier %{public}@ expected %{public}@ completed %{public}@", &v12, 0x2Au);
      }
    }

    [*(v4 + 5) addObject:?];
    v6 = *(v4 + 4);
    if (v6 && [v6 isEqualToSet:?])
    {
      [*(v4 + 5) removeAllObjects];
      v7 = *(v4 + 4);
      *(v4 + 4) = 0;

      [v4 _notifyCompletion];
    }
  }
}

- (void)notifyCompletion
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__CMContinuityCaptureEventQueue_notifyCompletion__block_invoke;
  v4[3] = &unk_278D5C080;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __49__CMContinuityCaptureEventQueue_notifyCompletion__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyCompletion];
}

- (void)_dropStreamStartEventsForEntityIfApplicable
{
  if (![(NSMutableArray *)self->_eventQueue count])
  {
    return;
  }

  firstObject = [(NSMutableArray *)self->_eventQueue firstObject];
  v4 = [firstObject objectForKeyedSubscript:?];

  if (!v4 || [v4 count] < 3)
  {
    goto LABEL_33;
  }

  v5 = [v4 objectAtIndexedSubscript:?];
  v6 = [v4 objectAtIndexedSubscript:?];
  v7 = [v4 objectAtIndexedSubscript:?];
  v8 = @"kCMContinuityCaptureEventStartStream";
  if (![v5 isEqualToString:?] || -[NSMutableArray count](self->_eventQueue, "count") < 2)
  {
    goto LABEL_32;
  }

  v31 = v7;
  v32 = v5;
  v33 = 0;
  v9 = 1;
  do
  {
    v10 = [(NSMutableArray *)self->_eventQueue objectAtIndexedSubscript:?];
    v11 = [v10 objectForKeyedSubscript:?];

    if (v11)
    {
      v12 = [(NSMutableArray *)self->_eventQueue objectAtIndexedSubscript:?];
      v13 = [v12 objectForKeyedSubscript:?];
      unsignedIntValue = [v13 unsignedIntValue];

      if (unsignedIntValue == 3)
      {
        v15 = [(NSMutableArray *)self->_eventQueue objectAtIndexedSubscript:?];
        v16 = [v15 objectForKeyedSubscript:?];

        if (!v16 || [v16 count] < 3)
        {
          goto LABEL_23;
        }

        v17 = [v16 objectAtIndexedSubscript:?];
        v18 = [v16 objectAtIndexedSubscript:?];
        if ([v17 isEqualToString:?] && (v19 = objc_msgSend(v18, "unsignedIntValue"), v19 == objc_msgSend(v6, "unsignedIntValue")))
        {
          v20 = CMContinuityCaptureLog(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            [(NSMutableArray *)self->_eventQueue objectAtIndexedSubscript:?];
            v34 = v29 = v8;
            firstObject2 = [(NSMutableArray *)self->_eventQueue firstObject];
            *buf = 138412802;
            selfCopy3 = self;
            v38 = 2112;
            v39 = v34;
            v40 = 2112;
            v41 = firstObject2;
            v22 = firstObject2;
            _os_log_impl(&dword_242545000, v20, OS_LOG_TYPE_DEFAULT, "%@ Associated stop %@ for %@", buf, 0x20u);

            v8 = v29;
          }

          v33 = 1;
        }

        else
        {
          if (![v17 isEqualToString:?])
          {
            goto LABEL_22;
          }

          unsignedIntValue2 = [v18 unsignedIntValue];
          if (unsignedIntValue2 != [v6 unsignedIntValue])
          {
            goto LABEL_22;
          }

          v20 = CMContinuityCaptureLog(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v35 = [(NSMutableArray *)self->_eventQueue objectAtIndexedSubscript:?];
            firstObject3 = [(NSMutableArray *)self->_eventQueue firstObject];
            *buf = 138412802;
            selfCopy3 = self;
            v38 = 2112;
            v39 = v35;
            v40 = 2112;
            v41 = firstObject3;
            _os_log_impl(&dword_242545000, v20, OS_LOG_TYPE_DEFAULT, "%@ Associated start %@ for %@", buf, 0x20u);
          }

          v33 = 0;
        }

LABEL_22:
LABEL_23:
      }
    }

    ++v9;
  }

  while ([(NSMutableArray *)self->_eventQueue count]> v9);
  v7 = v31;
  v5 = v32;
  if (v33)
  {
    v24 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      firstObject4 = [(NSMutableArray *)self->_eventQueue firstObject];
      *buf = 138412546;
      selfCopy3 = self;
      v38 = 2112;
      v39 = firstObject4;
      _os_log_impl(&dword_242545000, v24, OS_LOG_TYPE_DEFAULT, "%@ Dropping %@", buf, 0x16u);
    }

    if (v31)
    {
      v26 = [v31 objectForKeyedSubscript:?];

      if (v26)
      {
        v27 = [v31 objectForKeyedSubscript:?];
        v28 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
        (v27)[2](v27, v28);
      }
    }

    [(NSMutableArray *)self->_eventQueue removeObjectAtIndex:?];
  }

LABEL_32:

LABEL_33:
}

- (void)_notifyCompletion
{
  v3 = *a2;
  v4 = 138412546;
  selfCopy = self;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_242545000, log, OS_LOG_TYPE_DEBUG, "%@ pendingActions %@", &v4, 0x16u);
}

- (CMContinuityCaptureEventQueue)initWithActionDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = CMContinuityCaptureEventQueue;
  v8 = [(CMContinuityCaptureEventQueue *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v9->_queue, queue);
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    eventQueue = v9->_eventQueue;
    v9->_eventQueue = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    completedIdentifiers = v9->_completedIdentifiers;
    v9->_completedIdentifiers = v12;

    v14 = v9;
  }

  return v9;
}

@end