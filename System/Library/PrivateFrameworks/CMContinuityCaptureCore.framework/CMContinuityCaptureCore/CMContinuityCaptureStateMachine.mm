@interface CMContinuityCaptureStateMachine
- (BOOL)postEventWithName:(id)name data:(id)data;
- (BOOL)postSameStateAction:(id)action transition:(id)transition event:(id)event;
- (BOOL)postStateChangeAction:(id)action transition:(id)transition event:(id)event;
- (CMContinuityCaptureStateMachine)initWithActionDelegate:(id)delegate queue:(id)queue;
- (id)description;
- (id)getDeferredEventsToPostForState:(id)state;
- (id)getNewStateAfterPostingDeferredEvents:(id)events deferredEventsToPost:(id *)post;
- (void)_enqueueEventWithNameToPost:(id)post data:(id)data;
- (void)_notifyCompletion:(id)completion;
- (void)addStateTransitions:(id)transitions;
- (void)aggregateEvents;
- (void)enqueueEventWithNameToPost:(id)post data:(id)data;
- (void)notifyCompletion:(id)completion;
@end

@implementation CMContinuityCaptureStateMachine

- (void)addStateTransitions:(id)transitions
{
  transitionsCopy = transitions;
  if (transitionsCopy)
  {
    v6 = transitionsCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMutableArray *)selfCopy->_transactions addObjectsFromArray:?];
    objc_sync_exit(selfCopy);

    transitionsCopy = v6;
  }
}

void __45__CMContinuityCaptureStateMachine_addEvents___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = a2;
  v4 = [v3 name];
  [v2 setObject:? forKeyedSubscript:?];
}

- (BOOL)postSameStateAction:(id)action transition:(id)transition event:(id)event
{
  actionCopy = action;
  transitionCopy = transition;
  eventCopy = event;
  action = [transitionCopy action];

  if (action)
  {
    action2 = [transitionCopy action];
    (action2)[2](action2, eventCopy);
  }

  v13 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);
    name = [actionCopy name];
    currentState = [(CMContinuityCaptureStateMachine *)self currentState];
    name2 = [currentState name];
    currentState2 = [(CMContinuityCaptureStateMachine *)self currentState];
    [currentState2 pendingEvents];
    v19 = v22 = actionCopy;
    deferredEvents = self->_deferredEvents;
    *buf = 138544642;
    v24 = WeakRetained;
    v25 = 2114;
    v26 = name;
    v27 = 2114;
    v28 = name2;
    v29 = 2114;
    v30 = eventCopy;
    v31 = 2114;
    v32 = v19;
    v33 = 2114;
    v34 = deferredEvents;
    _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Transition to state %{public}@ from %{public}@ on event %{public}@ state pendingEvents %{public}@ deferredEvents %{public}@", buf, 0x3Eu);

    actionCopy = v22;
  }

  return 1;
}

- (id)getDeferredEventsToPostForState:(id)state
{
  stateCopy = state;
  if ([(NSMutableArray *)self->_deferredEvents count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    name = [stateCopy name];
    v7 = [name isEqualToString:?];

    if (v7)
    {
      v8 = [(NSMutableArray *)self->_deferredEvents objectAtIndexedSubscript:?];
      isEntry = [v8 isEntry];

      v10 = isEntry;
      v11 = 1;
      if ([(NSMutableArray *)self->_deferredEvents count]>= 2)
      {
        do
        {
          v12 = [(NSMutableArray *)self->_deferredEvents objectAtIndexedSubscript:?];
          name2 = [v12 name];
          v14 = [(NSMutableArray *)self->_deferredEvents objectAtIndexedSubscript:?];
          name3 = [v14 name];
          v16 = CMContinuityCaptureSMValidSameStateEventName(name2, name3);

          if (!v16)
          {
            break;
          }

          v17 = [(NSMutableArray *)self->_deferredEvents objectAtIndexedSubscript:?];
          isEntry2 = [v17 isEntry];

          if (isEntry2)
          {
            ++v10;
          }

          else
          {
            v10 = 0;
          }

          ++v11;
        }

        while (v11 < [(NSMutableArray *)self->_deferredEvents count]);
      }

      v19 = 0;
      while (1)
      {
        v20 = [(NSMutableArray *)self->_deferredEvents objectAtIndexedSubscript:?];
        isEntry3 = [v20 isEntry];

        if (((v10 == 0) ^ isEntry3))
        {
          break;
        }

        if (v11 == ++v19)
        {
          goto LABEL_17;
        }
      }

      v22 = [(NSMutableArray *)self->_deferredEvents objectAtIndexedSubscript:?];
      if (v22)
      {
        v23 = v22;
        [v5 addObject:?];
      }

LABEL_17:
      while (v11 < [(NSMutableArray *)self->_deferredEvents count])
      {
        v24 = [(NSMutableArray *)self->_deferredEvents objectAtIndexedSubscript:?];
        [v5 addObject:?];

        ++v11;
      }
    }

    else
    {
      [v5 addObjectsFromArray:?];
    }

    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    deferredEvents = self->_deferredEvents;
    self->_deferredEvents = v25;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (id)getNewStateAfterPostingDeferredEvents:(id)events deferredEventsToPost:(id *)post
{
  eventsCopy = events;
  v7 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = [(CMContinuityCaptureStateMachine *)self getDeferredEventsToPostForState:?];
  v9 = [v7 initWithArray:?];

  v10 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 138543618;
    selfCopy = self;
    v31 = 2114;
    v32 = v9;
    _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Deferred to post %{public}@", &v29, 0x16u);
  }

  if (v9 && [v9 count])
  {
    if (!eventsCopy)
    {
LABEL_8:
      firstObject = [v9 firstObject];
      if (([firstObject isEntry] & 1) != 0 || (objc_msgSend(firstObject, "name"), v16 = objc_claimAutoreleasedReturnValue(), valid = CMContinuityCaptureSMIsValidExitEventForState(v16, @"kCMContinuityCaptureStateStreaming"), v16, (valid & 1) == 0))
      {
        v26 = v9;
        *post = v9;
      }

      else if ([(NSMutableArray *)self->_previousStates count])
      {
        v18 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);
          lastObject = [(NSMutableArray *)self->_previousStates lastObject];
          v29 = 138544130;
          selfCopy = WeakRetained;
          v31 = 2114;
          v32 = v9;
          v33 = 2114;
          v34 = eventsCopy;
          v35 = 2114;
          v36 = lastObject;
          _os_log_impl(&dword_242545000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Deferred exit event %{public}@ for state %{public}@ , move to previous state %{public}@", &v29, 0x2Au);
        }

        exitAction = [eventsCopy exitAction];

        if (exitAction)
        {
          exitAction2 = [eventsCopy exitAction];
          firstObject2 = [v9 firstObject];
          (exitAction2)[2](exitAction2, firstObject2);
        }

        lastObject2 = [(NSMutableArray *)self->_previousStates lastObject];
        [(NSMutableArray *)self->_previousStates removeLastObject];
        [v9 removeObjectAtIndex:?];
        v25 = v9;
        *post = v9;
        goto LABEL_18;
      }

      lastObject2 = eventsCopy;
LABEL_18:

      goto LABEL_21;
    }

    name = [eventsCopy name];
    v12 = [name isEqualToString:?];

    if (!v12)
    {
      name2 = [eventsCopy name];
      v14 = [name2 isEqualToString:?];

      if (v14)
      {
        goto LABEL_8;
      }

      v27 = v9;
      *post = v9;
    }
  }

  lastObject2 = eventsCopy;
LABEL_21:

  return lastObject2;
}

- (BOOL)postStateChangeAction:(id)action transition:(id)transition event:(id)event
{
  actionCopy = action;
  transitionCopy = transition;
  eventCopy = event;
  if (([eventCopy isEntry] & 1) != 0 || -[NSMutableArray count](self->_previousStates, "count") && (-[NSMutableArray lastObject](self->_previousStates, "lastObject"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "name"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(actionCopy, "name"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqualToString:"), v13, v12, v11, v14))
  {
    v15 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);
      name = [actionCopy name];
      currentState = [(CMContinuityCaptureStateMachine *)self currentState];
      [currentState name];
      v48 = actionCopy;
      v20 = v19 = transitionCopy;
      currentState2 = [(CMContinuityCaptureStateMachine *)self currentState];
      pendingEvents = [currentState2 pendingEvents];
      deferredEvents = self->_deferredEvents;
      *buf = 138544642;
      v51 = WeakRetained;
      v52 = 2114;
      v53 = name;
      v54 = 2114;
      v55 = v20;
      v56 = 2114;
      v57 = eventCopy;
      v58 = 2114;
      v59 = pendingEvents;
      v60 = 2114;
      v61 = deferredEvents;
      _os_log_impl(&dword_242545000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Transition to state %{public}@ from %{public}@ on event %{public}@ state pendingEvents %{public}@ deferredEvents %{public}@", buf, 0x3Eu);

      transitionCopy = v19;
      actionCopy = v48;
    }

    currentState3 = [(CMContinuityCaptureStateMachine *)self currentState];
    exitAction = [currentState3 exitAction];

    if (exitAction)
    {
      currentState4 = [(CMContinuityCaptureStateMachine *)self currentState];
      exitAction2 = [currentState4 exitAction];
      (exitAction2)[2](exitAction2, eventCopy);
    }

    isEntry = [eventCopy isEntry];
    previousStates = self->_previousStates;
    if (isEntry)
    {
      currentState5 = [(CMContinuityCaptureStateMachine *)self currentState];
      [(NSMutableArray *)previousStates addObject:?];
    }

    else if ([(NSMutableArray *)self->_previousStates count])
    {
      [(NSMutableArray *)self->_previousStates removeLastObject];
    }

    else
    {
      v33 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        v46 = objc_loadWeakRetained(&self->_actionDelegate);
        currentState6 = [(CMContinuityCaptureStateMachine *)self currentState];
        *buf = 138413058;
        v51 = v46;
        v52 = 2112;
        v53 = eventCopy;
        v54 = 2112;
        v55 = currentState6;
        v56 = 2112;
        v57 = actionCopy;
        _os_log_fault_impl(&dword_242545000, v33, OS_LOG_TYPE_FAULT, "%@ Unexpected SM event %@ current %@ dst %@", buf, 0x2Au);
      }
    }

    action = [transitionCopy action];

    if (action)
    {
      action2 = [transitionCopy action];
      (action2)[2](action2, eventCopy);
    }

    [(CMContinuityCaptureStateMachine *)self willChangeValueForKey:?];
    v36 = [CMContinuityCaptureStateMachine getNewStateAfterPostingDeferredEvents:"getNewStateAfterPostingDeferredEvents:deferredEventsToPost:" deferredEventsToPost:?];
    v32 = 0;
    [(CMContinuityCaptureStateMachine *)self setCurrentState:?];

    [(CMContinuityCaptureStateMachine *)self didChangeValueForKey:?];
    currentState7 = [(CMContinuityCaptureStateMachine *)self currentState];
    entryAction = [currentState7 entryAction];

    if (entryAction)
    {
      currentState8 = [(CMContinuityCaptureStateMachine *)self currentState];
      entryAction2 = [currentState8 entryAction];
      (entryAction2)[2](entryAction2, eventCopy);
    }

    if (v32 && [v32 count])
    {
      v41 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = objc_loadWeakRetained(&self->_actionDelegate);
        currentState9 = [(CMContinuityCaptureStateMachine *)self currentState];
        *buf = 138543874;
        v51 = v42;
        v52 = 2114;
        v53 = v32;
        v54 = 2114;
        v55 = currentState9;
        _os_log_impl(&dword_242545000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ Post Deferred event %{public}@ on current state %{public}@", buf, 0x20u);
      }

      v49 = objc_loadWeakRetained(&self->_actionDelegate);
      v44 = v49;
      [v32 enumerateObjectsUsingBlock:?];
    }

    v31 = 1;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  return v31;
}

void __74__CMContinuityCaptureStateMachine_postStateChangeAction_transition_event___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 name];
  v4 = [v3 data];

  [v2 postDeferredEvent:? data:?];
}

- (void)_enqueueEventWithNameToPost:(id)post data:(id)data
{
  postCopy = post;
  dataCopy = data;
  if (CMContinuityCaptureValidSMEvent(postCopy))
  {
    if (dataCopy)
    {
      v8 = dataCopy;
    }

    else
    {
      v8 = MEMORY[0x277CBEC10];
    }

    dispatch_assert_queue_V2(self->_queue);
    v12 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      currentState = self->_currentState;
      *buf = 138543874;
      selfCopy = self;
      v21 = 2114;
      v22 = postCopy;
      v23 = 2114;
      v24 = currentState;
      _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ enqueueEvent %{public}@ on current state %{public}@", buf, 0x20u);
    }

    v14 = [(NSMutableArray *)self->_eventQueue count];
    eventQueue = self->_eventQueue;
    if (v14)
    {
      v11 = CMContinuityCaptureGetCurrentTimeString();
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:@"kCMContinuityCaptureEventName" forKeys:@"kCMContinuityCaptureEventEnqueueTime" count:{@"kCMContinuityCaptureEventData", postCopy, v11, v8}];
      [(NSMutableArray *)eventQueue addObject:?];
    }

    else
    {
      v18 = CMContinuityCaptureGetCurrentTimeString();
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      [(NSMutableArray *)eventQueue addObject:?];

      if ([CMContinuityCaptureStateMachine postEventWithName:"postEventWithName:data:" data:?])
      {
LABEL_17:

        goto LABEL_18;
      }

      v11 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
      [(CMContinuityCaptureStateMachine *)self _notifyCompletion:?];
    }

LABEL_16:

    goto LABEL_17;
  }

  v9 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(CMContinuityCaptureStateMachine *)self _enqueueEventWithNameToPost:postCopy data:v9];
  }

  if (dataCopy)
  {
    v10 = [dataCopy objectForKeyedSubscript:?];

    if (v10)
    {
      v8 = [dataCopy objectForKeyedSubscript:?];
      v11 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
      (*(v8 + 2))(v8, v11);
      goto LABEL_16;
    }
  }

LABEL_18:
}

- (void)enqueueEventWithNameToPost:(id)post data:(id)data
{
  postCopy = post;
  dataCopy = data;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__CMContinuityCaptureStateMachine_enqueueEventWithNameToPost_data___block_invoke;
  v11[3] = &unk_278D5C120;
  objc_copyWeak(&v14, &location);
  v12 = postCopy;
  v13 = dataCopy;
  v9 = dataCopy;
  v10 = postCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __67__CMContinuityCaptureStateMachine_enqueueEventWithNameToPost_data___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _enqueueEventWithNameToPost:? data:?];
    WeakRetained = v2;
  }
}

- (void)aggregateEvents
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);
  v4 = [WeakRetained aggregateEvents:?];
  v5 = [v3 initWithArray:?];
  eventQueue = self->_eventQueue;
  self->_eventQueue = v5;
}

- (void)notifyCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__CMContinuityCaptureStateMachine_notifyCompletion___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __52__CMContinuityCaptureStateMachine_notifyCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _notifyCompletion:?];
    WeakRetained = v2;
  }
}

- (void)_notifyCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);
  selfCopy = self;
  eventQueue = self->_eventQueue;
  p_eventQueue = &self->_eventQueue;
  if ([(NSMutableArray *)eventQueue count])
  {
    v8 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_loadWeakRetained(&selfCopy->_actionDelegate);
      currentState = selfCopy->_currentState;
      firstObject = [(NSMutableArray *)selfCopy->_eventQueue firstObject];
      v12 = [firstObject objectForKeyedSubscript:?];
      firstObject2 = [(NSMutableArray *)selfCopy->_eventQueue firstObject];
      v14 = [firstObject2 objectForKeyedSubscript:?];
      *buf = 138544130;
      v43 = v9;
      v44 = 2114;
      v45 = currentState;
      v46 = 2114;
      v47 = v12;
      v48 = 2114;
      v49 = v14;
      _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ currentState: %{public}@ completedEvent Name:%{public}@ EnqueueTime:%{public}@", buf, 0x2Au);
    }

    if (WeakRetained)
    {
      v15 = objc_loadWeakRetained(&selfCopy->_actionDelegate);
      firstObject3 = [(NSMutableArray *)*p_eventQueue firstObject];
      v17 = [firstObject3 objectForKeyedSubscript:?];
      firstObject4 = [(NSMutableArray *)*p_eventQueue firstObject];
      v19 = [firstObject4 objectForKeyedSubscript:?];
      [v15 postActionCompletionForEventName:? eventData:? error:?];
    }

    v20 = [(NSMutableArray *)*p_eventQueue removeObjectAtIndex:?];
    if (CMContinityCaptureDebugLogEnabled(v20, v21))
    {
      v22 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [(CMContinuityCaptureStateMachine *)&selfCopy->_actionDelegate _notifyCompletion:v22];
      }
    }

    if ([(NSMutableArray *)*p_eventQueue count])
    {
      v40 = completionCopy;
      v39 = p_eventQueue;
      v23 = *p_eventQueue;
      v24 = [NSMutableArray countByEnumeratingWithState:v23 objects:"countByEnumeratingWithState:objects:count:" count:?];
      if (v24)
      {
        v25 = v24;
        v26 = MEMORY[0];
        do
        {
          for (i = 0; i != v25; i = (i + 1))
          {
            if (MEMORY[0] != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(8 * i);
            v29 = CMContinuityCaptureLog(0);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v30 = objc_loadWeakRetained(&selfCopy->_actionDelegate);
              v31 = [v28 objectForKeyedSubscript:?];
              v32 = [v28 objectForKeyedSubscript:?];
              *buf = 138543874;
              v43 = v30;
              v44 = 2114;
              v45 = v31;
              v46 = 2114;
              v47 = v32;
              _os_log_impl(&dword_242545000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ pendingEvent Name:%{public}@ EnqueueTime:%{public}@", buf, 0x20u);
            }
          }

          v25 = [NSMutableArray countByEnumeratingWithState:v23 objects:"countByEnumeratingWithState:objects:count:" count:?];
        }

        while (v25);
      }

      [(CMContinuityCaptureStateMachine *)selfCopy aggregateEvents];
      completionCopy = v40;
      p_eventQueue = v39;
    }

    if ([(NSMutableArray *)*p_eventQueue count])
    {
      v33 = [(NSMutableArray *)selfCopy->_eventQueue objectAtIndexedSubscript:?];
      v34 = [v33 objectForKeyedSubscript:?];
      v35 = [(NSMutableArray *)selfCopy->_eventQueue objectAtIndexedSubscript:?];
      v36 = [v35 objectForKeyedSubscript:?];
      v37 = [CMContinuityCaptureStateMachine postEventWithName:selfCopy data:"postEventWithName:data:"];

      if ((v37 & 1) == 0)
      {
        v38 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
        [(CMContinuityCaptureStateMachine *)selfCopy _notifyCompletion:?];
      }
    }
  }
}

- (BOOL)postEventWithName:(id)name data:(id)data
{
  nameCopy = name;
  dataCopy = data;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:?];
  objc_sync_exit(selfCopy);

  if (v9)
  {
    currentState = [(CMContinuityCaptureStateMachine *)selfCopy currentState];

    if (currentState)
    {
      v11 = [(NSMutableDictionary *)selfCopy->_events objectForKeyedSubscript:?];
      currentState = v11;
      if (v11)
      {
        [v11 setData:?];
        v12 = CMContinuityCaptureLog(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          WeakRetained = objc_loadWeakRetained(&selfCopy->_actionDelegate);
          currentState2 = [(CMContinuityCaptureStateMachine *)selfCopy currentState];
          name = [currentState2 name];
          *buf = 138543874;
          v28 = WeakRetained;
          v29 = 2114;
          v30 = currentState;
          v31 = 2114;
          v32 = name;
          _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Post event %{public}@ on currentState %{public}@", buf, 0x20u);
        }

        action = [currentState action];

        if (action)
        {
          action2 = [currentState action];
          action2[2]();
        }

        v20 = MEMORY[0x277D85DD0];
        v21 = 3221225472;
        v22 = __58__CMContinuityCaptureStateMachine_postEventWithName_data___block_invoke;
        v23 = &unk_278D5C9C8;
        v24 = selfCopy;
        v18 = currentState;
        v25 = v18;
        v26 = &v33;
        [v9 enumerateObjectsUsingBlock:?];
        LOBYTE(currentState) = *(v34 + 24);
      }
    }
  }

  else
  {
    LOBYTE(currentState) = 0;
  }

  _Block_object_dispose(&v33, 8);
  return currentState & 1;
}

void __58__CMContinuityCaptureStateMachine_postEventWithName_data___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v6 = [*(a1 + 32) currentState];
  v7 = [v14 transactionFromStateOnEvent:? event:?];

  if (v7)
  {
    v8 = [v7 name];
    v9 = [*(a1 + 32) currentState];
    v10 = [v9 name];
    v11 = [v8 isEqualToString:?];

    v12 = *(a1 + 32);
    if (v11)
    {
      v13 = [v12 postSameStateAction:? transition:? event:?];
    }

    else
    {
      v13 = [v12 postStateChangeAction:? transition:? event:?];
    }

    *(*(*(a1 + 48) + 8) + 24) = v13;
    *a4 = *(*(*(a1 + 48) + 8) + 24);
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);
  weakRetained = [v3 stringWithFormat:self, WeakRetained];

  return weakRetained;
}

- (CMContinuityCaptureStateMachine)initWithActionDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v22.receiver = self;
  v22.super_class = CMContinuityCaptureStateMachine;
  v8 = [(CMContinuityCaptureStateMachine *)&v22 init];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  transactions = v8->_transactions;
  v8->_transactions = v9;

  if (v8->_transactions && (objc_storeStrong(&v8->_queue, queue), v8->_queue) && (v11 = objc_alloc_init(MEMORY[0x277CBEB18]), previousStates = v8->_previousStates, v8->_previousStates = v11, previousStates, v8->_previousStates) && (v13 = objc_alloc_init(MEMORY[0x277CBEB18]), deferredEvents = v8->_deferredEvents, v8->_deferredEvents = v13, deferredEvents, v8->_deferredEvents) && (v15 = objc_alloc_init(MEMORY[0x277CBEB38]), events = v8->_events, v8->_events = v15, events, v8->_events) && (v17 = objc_alloc_init(MEMORY[0x277CBEB18]), eventQueue = v8->_eventQueue, v8->_eventQueue = v17, eventQueue, v8->_eventQueue) && (v19 = objc_storeWeak(&v8->_actionDelegate, delegateCopy), delegateCopy, delegateCopy))
  {
    v20 = v8;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)_enqueueEventWithNameToPost:(os_log_t)log data:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_242545000, log, OS_LOG_TYPE_ERROR, "%@ Invalid SM EventName %@", &v3, 0x16u);
}

- (void)_notifyCompletion:(NSObject *)a3 .cold.1(id *a1, uint64_t *a2, NSObject *a3)
{
  WeakRetained = objc_loadWeakRetained(a1);
  v6 = *a2;
  v7 = 138543618;
  v8 = WeakRetained;
  v9 = 2114;
  v10 = v6;
  _os_log_debug_impl(&dword_242545000, a3, OS_LOG_TYPE_DEBUG, "%{public}@ pendingActions %{public}@", &v7, 0x16u);
}

@end