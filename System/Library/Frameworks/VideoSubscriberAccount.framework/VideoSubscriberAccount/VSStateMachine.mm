@interface VSStateMachine
- (BOOL)enqueueEvent:(id)event;
- (VSStateMachine)init;
- (VSStateMachineDelegate)delegate;
- (id)description;
- (void)_enteringState:(id)state;
- (void)_exitingState:(id)state;
- (void)_handleEnqueuedTransitions;
- (void)_setDestinationState:(id)state forEvent:(id)event inState:(id)inState ignoringEvent:(BOOL)ignoringEvent;
- (void)activateWithState:(id)state;
- (void)setName:(id)name;
@end

@implementation VSStateMachine

- (VSStateMachine)init
{
  v16.receiver = self;
  v16.super_class = VSStateMachine;
  v2 = [(VSStateMachine *)&v16 init];
  v3 = v2;
  if (v2)
  {
    name = v2->_name;
    v2->_name = &stru_284DD5B48;

    v5 = objc_alloc_init(MEMORY[0x277CCABD8]);
    transitionQueue = v3->_transitionQueue;
    v3->_transitionQueue = v5;

    [(NSOperationQueue *)v3->_transitionQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v3->_transitionQueue setName:@"com.apple.VideoSubscriberAccount.StateMachine"];
    v7 = objc_alloc_init(VSOptional);
    currentState = v3->_currentState;
    v3->_currentState = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    enqueuedTransitions = v3->_enqueuedTransitions;
    v3->_enqueuedTransitions = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    transitionTable = v3->_transitionTable;
    v3->_transitionTable = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    ignoredEventsByState = v3->_ignoredEventsByState;
    v3->_ignoredEventsByState = v13;
  }

  return v3;
}

- (void)_enteringState:(id)state
{
  v27 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  capitalizedString = [(NSString *)stateCopy capitalizedString];
  v6 = [capitalizedString stringByReplacingOccurrencesOfString:@" " withString:&stru_284DD5B48];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"transitionTo%@State", v6];
  v8 = NSSelectorFromString(v7);
  delegate = [(VSStateMachine *)self delegate];
  v10 = VSDefaultLogObject(delegate);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!delegate)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

    *buf = 138412546;
    selfCopy6 = self;
    v23 = 2112;
    v24 = stateCopy;
    goto LABEL_18;
  }

  if (v11)
  {
    v12 = NSStringFromSelector(v8);
    *buf = 138412290;
    selfCopy6 = v12;
    _os_log_impl(&dword_23AB8E000, v10, OS_LOG_TYPE_DEFAULT, "Checking transition selector %@", buf, 0xCu);
  }

  v13 = objc_opt_respondsToSelector();
  if ((v13 & 1) == 0)
  {
    v18 = objc_opt_respondsToSelector();
    v19 = v18;
    v10 = VSDefaultLogObject(v18);
    v20 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      if (v20)
      {
        *buf = 138412546;
        selfCopy6 = self;
        v23 = 2112;
        v24 = stateCopy;
      }

      v10 = VSDefaultLogObject([delegate stateMachine:self transitionToState:stateCopy]);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      *buf = 138412546;
      selfCopy6 = self;
      v23 = 2112;
      v24 = stateCopy;
    }

    else
    {
      if (!v20)
      {
        goto LABEL_20;
      }

      *buf = 138412546;
      selfCopy6 = self;
      v23 = 2112;
      v24 = stateCopy;
    }

LABEL_18:
    v16 = v10;
    v17 = 22;
    goto LABEL_19;
  }

  v14 = VSDefaultLogObject(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy6 = self;
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = stateCopy;
  }

  v10 = VSDefaultLogObject([delegate v8]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy6 = self;
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = stateCopy;
    v16 = v10;
    v17 = 32;
LABEL_19:
    _os_log_impl(&dword_23AB8E000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
  }

LABEL_20:
}

- (void)_exitingState:(id)state
{
  v28 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = objc_autoreleasePoolPush();
  capitalizedString = [(NSString *)stateCopy capitalizedString];
  v7 = [capitalizedString stringByReplacingOccurrencesOfString:@" " withString:&stru_284DD5B48];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"transitionFrom%@State", v7];
  v9 = NSSelectorFromString(v8);
  delegate = [(VSStateMachine *)self delegate];
  v11 = VSDefaultLogObject(delegate);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (!delegate)
  {
    if (!v12)
    {
      goto LABEL_20;
    }

    *buf = 138412546;
    selfCopy6 = self;
    v24 = 2112;
    v25 = stateCopy;
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = NSStringFromSelector(v9);
    *buf = 138412290;
    selfCopy6 = v13;
    _os_log_impl(&dword_23AB8E000, v11, OS_LOG_TYPE_DEFAULT, "Checking transition selector %@", buf, 0xCu);
  }

  v14 = objc_opt_respondsToSelector();
  if ((v14 & 1) == 0)
  {
    v19 = objc_opt_respondsToSelector();
    v20 = v19;
    v11 = VSDefaultLogObject(v19);
    v21 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (v21)
      {
        *buf = 138412546;
        selfCopy6 = self;
        v24 = 2112;
        v25 = stateCopy;
      }

      v11 = VSDefaultLogObject([delegate stateMachine:self transitionFromState:stateCopy]);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      *buf = 138412546;
      selfCopy6 = self;
      v24 = 2112;
      v25 = stateCopy;
    }

    else
    {
      if (!v21)
      {
        goto LABEL_20;
      }

      *buf = 138412546;
      selfCopy6 = self;
      v24 = 2112;
      v25 = stateCopy;
    }

LABEL_18:
    v17 = v11;
    v18 = 22;
    goto LABEL_19;
  }

  v15 = VSDefaultLogObject(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy6 = self;
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = stateCopy;
  }

  v11 = VSDefaultLogObject([delegate v9]);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy6 = self;
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = stateCopy;
    v17 = v11;
    v18 = 32;
LABEL_19:
    _os_log_impl(&dword_23AB8E000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
  }

LABEL_20:

  objc_autoreleasePoolPop(v5);
}

- (void)_handleEnqueuedTransitions
{
  v3 = 0;
  v30 = *MEMORY[0x277D85DE8];
  do
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    enqueuedTransitions = [(VSStateMachine *)selfCopy enqueuedTransitions];
    v6 = [enqueuedTransitions objectAtIndex:0];
    v7 = [VSOptional optionalWithObject:v6];

    [enqueuedTransitions removeObjectAtIndex:0];
    v8 = [enqueuedTransitions count] != 0;
    forceUnwrapObject = [v7 forceUnwrapObject];
    previousState = [forceUnwrapObject previousState];
    forceUnwrapObject2 = [previousState forceUnwrapObject];

    nextState = [forceUnwrapObject nextState];
    forceUnwrapObject3 = [nextState forceUnwrapObject];

    v15 = VSDefaultLogObject(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v25 = forceUnwrapObject2;
      v26 = 2112;
      v27 = forceUnwrapObject3;
      v28 = 2112;
      selfCopy2 = self;
    }

    v16 = [VSOptional optionalWithObject:forceUnwrapObject3];
    [(VSStateMachine *)selfCopy setCurrentState:v16];

    transitionQueue = [(VSStateMachine *)selfCopy transitionQueue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __44__VSStateMachine__handleEnqueuedTransitions__block_invoke;
    v21[3] = &unk_278B73A28;
    v21[4] = selfCopy;
    v18 = forceUnwrapObject2;
    v22 = v18;
    v19 = forceUnwrapObject3;
    v23 = v19;
    [transitionQueue addOperationWithBlock:v21];

    objc_sync_exit(selfCopy);
    v20 = v3 | v8;
    v3 = 1;
  }

  while ((v20 & 1) != 0);
}

void __44__VSStateMachine__handleEnqueuedTransitions__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _exitingState:*(a1 + 40)];
  v2 = VSDefaultLogObject([*(a1 + 32) _enteringState:*(a1 + 48)]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(a1 + 32);
    v6 = 138412802;
    v7 = v4;
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
  }
}

- (void)_setDestinationState:(id)state forEvent:(id)event inState:(id)inState ignoringEvent:(BOOL)ignoringEvent
{
  ignoringEventCopy = ignoringEvent;
  stateCopy = state;
  eventCopy = event;
  inStateCopy = inState;
  v13 = MEMORY[0x277CBE660];
  if (inStateCopy)
  {
    if (stateCopy)
    {
      goto LABEL_3;
    }

LABEL_25:
    [MEMORY[0x277CBEAD8] raise:*v13 format:@"The destinationState parameter must not be nil."];
    if (eventCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_26;
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The sourceState parameter must not be nil."];
  if (!stateCopy)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (eventCopy)
  {
    goto LABEL_4;
  }

LABEL_26:
  [MEMORY[0x277CBEAD8] raise:*v13 format:@"The triggeringEvent parameter must not be nil."];
LABEL_4:
  v14 = [inStateCopy copy];

  v27 = [stateCopy copy];
  v15 = [eventCopy copy];

  if (atomic_load(&self->_mode))
  {
    [MEMORY[0x277CBEAD8] raise:*v13 format:{@"Attempt to allow state transition after activation of state machine %@.", self}];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  ignoredEventsByState = [(VSStateMachine *)selfCopy ignoredEventsByState];
  v19 = [ignoredEventsByState objectForKey:v14];
  if (!v19)
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [ignoredEventsByState setObject:v19 forKey:v14];

    if (!v19)
    {
      [MEMORY[0x277CBEAD8] raise:*v13 format:@"The ignoredEventsOrNil parameter must not be nil."];
      v19 = 0;
    }
  }

  v20 = v19;
  transitionTable = [(VSStateMachine *)selfCopy transitionTable];
  v22 = [transitionTable objectForKey:v14];
  if (!v22)
  {
    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [transitionTable setObject:v22 forKey:v14];

    if (!v22)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The transitionsOrNil parameter must not be nil."];
      v22 = 0;
    }
  }

  v23 = v22;
  v24 = v23;
  if (ignoringEventCopy)
  {
    v25 = [v23 objectForKey:v15];
    if (v25)
    {
    }

    [v20 addObject:v15];
  }

  else
  {
    if ([v20 containsObject:v15])
    {
    }

    [v24 setObject:v27 forKey:v15];
  }

  objc_sync_exit(selfCopy);
  if (atomic_load(&self->_mode))
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Attempt to allow state transition after activation of state machine %@.", selfCopy}];
  }
}

- (void)setName:(id)name
{
  if (self->_name != name)
  {
    nameCopy = name;
    v6 = [nameCopy copy];
    name = self->_name;
    self->_name = v6;

    transitionQueue = [(VSStateMachine *)self transitionQueue];
    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ State Machine Transition Queue", nameCopy];

    [transitionQueue setName:nameCopy];
  }
}

- (void)activateWithState:(id)state
{
  v55 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v37 = stateCopy;
  if (!stateCopy)
  {
    stateCopy = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The initialState parameter must not be nil."];
  }

  v4 = VSDefaultLogObject(stateCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v53 = 2112;
    v54 = v37;
  }

  v5 = 0;
  atomic_compare_exchange_strong(&self->_mode, &v5, 1u);
  if (v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Attempt to activate already-activated state machine %@.", self}];
  }

  else
  {
    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    obj = selfCopy2;
    ignoredEventsByState = [(VSStateMachine *)selfCopy2 ignoredEventsByState];
    transitionTable = [(VSStateMachine *)selfCopy2 transitionTable];
    v40 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v38 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v39 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    allKeys = [transitionTable allKeys];
    [v40 addObjectsFromArray:allKeys];

    allKeys2 = [ignoredEventsByState allKeys];
    [v40 addObjectsFromArray:allKeys2];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    allValues = [transitionTable allValues];
    v12 = [allValues countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v12)
    {
      v13 = *v46;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v46 != v13)
          {
            objc_enumerationMutation(allValues);
          }

          allValues2 = [*(*(&v45 + 1) + 8 * i) allValues];
          [v40 addObjectsFromArray:allValues2];
        }

        v12 = [allValues countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v12);
    }

    allObjects = [v40 allObjects];
    [v38 addObjectsFromArray:allObjects];

    [v8 addObject:v37];
    [v38 removeObject:v37];
    v33 = [transitionTable objectForKey:v37];
    if (v33)
    {
      v17 = v33;
      allValues3 = [v17 allValues];
      [v39 addObjectsFromArray:allValues3];

      [v39 minusSet:v8];
    }

    do
    {
      [v38 minusSet:v39];
      v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v20 = v39;
      v21 = [v20 countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (v21)
      {
        v22 = *v42;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v42 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v41 + 1) + 8 * j);
            [v8 addObject:v24];
            v25 = [transitionTable objectForKey:v24];
            v26 = v25;
            if (v25)
            {
              v27 = v25;
              allValues4 = [v27 allValues];
              [v19 addObjectsFromArray:allValues4];
            }
          }

          v21 = [v20 countByEnumeratingWithState:&v41 objects:v49 count:16];
        }

        while (v21);
      }

      allObjects2 = [v19 allObjects];
      [v20 addObjectsFromArray:allObjects2];

      [v20 minusSet:v8];
    }

    while ([v20 count]);
    v30 = [v40 mutableCopy];
    [v30 minusSet:v8];
    if ([v30 count])
    {
    }

    else
    {
      v31 = [VSOptional optionalWithObject:v37];
      [(VSStateMachine *)obj setCurrentState:v31];
    }

    objc_sync_exit(obj);
    v32 = 1;
    atomic_compare_exchange_strong(&self->_mode, &v32, 2u);
  }
}

- (BOOL)enqueueEvent:(id)event
{
  v39 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = eventCopy;
  if (!eventCopy)
  {
    eventCopy = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The event parameter must not be nil."];
  }

  v6 = VSDefaultLogObject(eventCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v34 = v5;
    v35 = 2112;
    selfCopy = self;
  }

  v7 = [v5 copy];
  v8 = atomic_load(&self->_mode);
  if (v8 != 2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Attempt to enqueue an event prior to activation of state machine %@.", self}];
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  currentState = [(VSStateMachine *)selfCopy2 currentState];
  enqueuedTransitions = [(VSStateMachine *)selfCopy2 enqueuedTransitions];
  v12 = [enqueuedTransitions count];
  v31 = v12 == 0;
  if (v12)
  {
    v13 = [enqueuedTransitions objectAtIndex:{objc_msgSend(enqueuedTransitions, "count") - 1}];
    nextState = [v13 nextState];

    currentState = nextState;
  }

  forceUnwrapObject = [currentState forceUnwrapObject];
  transitionTable = [(VSStateMachine *)selfCopy2 transitionTable];
  v17 = [transitionTable objectForKey:forceUnwrapObject];

  v18 = [v17 objectForKey:v7];
  v32 = v18 != 0;
  if (v18)
  {
    v19 = objc_alloc_init(VSStateTransition);
    v20 = [VSOptional optionalWithObject:forceUnwrapObject];
    [(VSStateTransition *)v19 setPreviousState:v20];

    v21 = [VSOptional optionalWithObject:v7];
    [(VSStateTransition *)v19 setTriggeringEvent:v21];

    v22 = [VSOptional optionalWithObject:v18];
    [(VSStateTransition *)v19 setNextState:v22];

    [enqueuedTransitions addObject:v19];
LABEL_15:
    v27 = 1;
LABEL_16:

    goto LABEL_17;
  }

  ignoredEventsByState = [(VSStateMachine *)selfCopy2 ignoredEventsByState];
  v24 = [ignoredEventsByState objectForKey:forceUnwrapObject];
  v25 = [v24 containsObject:v7];

  if (v25)
  {
    v19 = VSDefaultLogObject(v26);
    if (os_log_type_enabled(&v19->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v34 = v7;
      v35 = 2112;
      selfCopy = forceUnwrapObject;
      v37 = 2112;
      v38 = selfCopy2;
    }

    v31 = 0;
    goto LABEL_15;
  }

  ignoresUnassignedEvents = [(VSStateMachine *)selfCopy2 ignoresUnassignedEvents];
  if (ignoresUnassignedEvents)
  {
    v19 = VSDefaultLogObject(ignoresUnassignedEvents);
    if (os_log_type_enabled(&v19->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v34 = v7;
      v35 = 2112;
      selfCopy = forceUnwrapObject;
      v37 = 2112;
      v38 = selfCopy2;
    }

    v27 = 0;
    goto LABEL_16;
  }

  v30 = VSErrorLogObject(ignoresUnassignedEvents);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v34 = v7;
    v35 = 2112;
    selfCopy = forceUnwrapObject;
    v37 = 2112;
    v38 = selfCopy2;
  }

  v27 = 1;
LABEL_17:

  objc_sync_exit(selfCopy2);
  if ((v31 & v27) == 1)
  {
    [(VSStateMachine *)selfCopy2 _handleEnqueuedTransitions];
  }

  else
  {
    v32 = (v18 != 0) & v27;
  }

  return v32;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = VSStateMachine;
  v4 = [(VSStateMachine *)&v8 description];
  name = [(VSStateMachine *)self name];
  v6 = [v3 stringWithFormat:@"<%@ name=%@>", v4, name];

  return v6;
}

- (VSStateMachineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end