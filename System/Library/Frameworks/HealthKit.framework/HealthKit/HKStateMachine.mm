@interface HKStateMachine
+ (id)nameForOwner:(id)owner UUID:(id)d tag:(id)tag;
- (HKStateMachine)init;
- (HKStateMachine)initWithName:(id)name;
- (HKStateMachineDelegate)delegate;
- (id)addStateTransitionFrom:(id)from to:(id)to event:(int64_t)event label:(id)label;
- (id)addStateWithIndex:(int64_t)index label:(id)label;
- (id)graphDescription;
- (id)stateWithIndex:(int64_t)index;
- (void)_dequeueEvent;
- (void)_handleEvent:(int64_t)event date:(id)date error:(id)error completion:(id)completion;
- (void)enqueueEvent:(int64_t)event date:(id)date error:(id)error completion:(id)completion;
- (void)enterAtState:(int64_t)state;
@end

@implementation HKStateMachine

+ (id)nameForOwner:(id)owner UUID:(id)d tag:(id)tag
{
  tagCopy = tag;
  v7 = MEMORY[0x1E696AEC0];
  dCopy = d;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  hk_shortRepresentation = [dCopy hk_shortRepresentation];

  if (tagCopy)
  {
    [v7 stringWithFormat:@"%@_%@_%@", v10, tagCopy, hk_shortRepresentation];
  }

  else
  {
    [v7 stringWithFormat:@"%@_%@", v10, hk_shortRepresentation, v14];
  }
  v12 = ;

  return v12;
}

- (HKStateMachine)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKStateMachine)initWithName:(id)name
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = HKStateMachine;
  v5 = [(HKStateMachine *)&v13 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    statesByIndex = v5->_statesByIndex;
    v5->_statesByIndex = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    transitions = v5->_transitions;
    v5->_transitions = v10;
  }

  return v5;
}

- (id)addStateWithIndex:(int64_t)index label:(id)label
{
  labelCopy = label;
  if (self->_currentState)
  {
    [HKStateMachine addStateWithIndex:label:];
  }

  statesByIndex = self->_statesByIndex;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:index];
  v10 = [(NSMutableDictionary *)statesByIndex objectForKeyedSubscript:v9];

  if (v10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = self->_statesByIndex;
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:index];
    v14 = [(NSMutableDictionary *)v12 objectForKeyedSubscript:v13];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKStateMachine.m" lineNumber:154 description:{@"%@: Attempt to add a state (%@) with the same index as an existing state (%@).", self, labelCopy, v14}];

    v15 = 0;
  }

  else
  {
    v15 = [[HKStateMachineState alloc] initWithIndex:index label:labelCopy];
    v16 = self->_statesByIndex;
    currentHandler = [MEMORY[0x1E696AD98] numberWithInteger:index];
    [(NSMutableDictionary *)v16 setObject:v15 forKeyedSubscript:currentHandler];
  }

  return v15;
}

- (id)addStateTransitionFrom:(id)from to:(id)to event:(int64_t)event label:(id)label
{
  v43 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  labelCopy = label;
  if (self->_currentState)
  {
    [HKStateMachine addStateTransitionFrom:to:event:label:];
  }

  statesByIndex = self->_statesByIndex;
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(fromCopy, "index")}];
  v15 = [(NSMutableDictionary *)statesByIndex objectForKeyedSubscript:v14];

  if (v15 != fromCopy)
  {
    [HKStateMachine addStateTransitionFrom:a2 to:self event:fromCopy label:?];
  }

  v36 = labelCopy;
  v16 = self->_statesByIndex;
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(toCopy, "index")}];
  v18 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:v17];

  if (v18 != toCopy)
  {
    [HKStateMachine addStateTransitionFrom:a2 to:self event:toCopy label:?];
  }

  v34 = a2;
  selfCopy = self;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v19 = self->_transitions;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (!v20)
  {
    goto LABEL_20;
  }

  v21 = v20;
  v22 = *v39;
  do
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v39 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = *(*(&v38 + 1) + 8 * i);
      fromState = [v24 fromState];
      index = [fromState index];
      if (index != [fromCopy index])
      {
        goto LABEL_17;
      }

      toState = [v24 toState];
      index2 = [toState index];
      if (index2 != [toCopy index])
      {

LABEL_17:
        continue;
      }

      event = [v24 event];

      if (event == event)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v31 = v36;
        [currentHandler handleFailureInMethod:v34 object:selfCopy file:v36 lineNumber:fromCopy description:{toCopy, v24}];

        v32 = 0;
        goto LABEL_21;
      }
    }

    v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v38 objects:v42 count:16];
  }

  while (v21);
LABEL_20:

  v31 = v36;
  v32 = [[HKStateMachineTransition alloc] initWithEvent:event label:v36 from:fromCopy to:toCopy];
  [(NSMutableArray *)selfCopy->_transitions addObject:v32];
LABEL_21:

  return v32;
}

- (id)stateWithIndex:(int64_t)index
{
  statesByIndex = self->_statesByIndex;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:index];
  v5 = [(NSMutableDictionary *)statesByIndex objectForKeyedSubscript:v4];

  return v5;
}

- (void)enterAtState:(int64_t)state
{
  selfCopy2 = self;
  v54 = *MEMORY[0x1E69E9840];
  p_currentState = &self->_currentState;
  if (self->_currentState)
  {
    [HKStateMachine enterAtState:];
    selfCopy2 = self;
  }

  p_isa = &selfCopy2->super.isa;
  statesByIndex = selfCopy2->_statesByIndex;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{state, p_currentState}];
  v37 = [(NSMutableDictionary *)statesByIndex objectForKeyedSubscript:v6];

  if (!v37)
  {
    [HKStateMachine enterAtState:];
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = p_isa[1];
  v40 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v40)
  {
    v39 = *v49;
    do
    {
      v7 = 0;
      do
      {
        if (*v49 != v39)
        {
          v8 = v7;
          objc_enumerationMutation(obj);
          v7 = v8;
        }

        v41 = v7;
        v9 = [p_isa[1] objectForKeyedSubscript:*(*(&v48 + 1) + 8 * v7)];
        v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v12 = p_isa[2];
        v13 = [v12 countByEnumeratingWithState:&v44 objects:v52 count:16];
        if (v13)
        {
          v14 = *v45;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v45 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = *(*(&v44 + 1) + 8 * i);
              fromState = [v16 fromState];
              v18 = fromState == v9;

              if (v18)
              {
                v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v16, "event")}];
                [v11 setObject:v16 forKeyedSubscript:v19];
              }

              toState = [v16 toState];
              v21 = toState == v9;

              if (v21)
              {
                v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v16, "event")}];
                [v10 setObject:v16 forKeyedSubscript:v22];
              }
            }

            v13 = [v12 countByEnumeratingWithState:&v44 objects:v52 count:16];
          }

          while (v13);
        }

        v23 = [v10 copy];
        [v9 setIncomingTransitions:v23];

        v24 = [v11 copy];
        [v9 setOutgoingTransitions:v24];

        v7 = v41 + 1;
      }

      while (v41 + 1 != v40);
      v40 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v40);
  }

  objc_copyWeak(&to, p_isa + 7);
  v25 = objc_loadWeakRetained(&to);
  v26 = objc_opt_respondsToSelector();

  if (v26)
  {
    v27 = objc_loadWeakRetained(&to);
    [v27 stateMachine:p_isa willEnterState:v37 date:0 error:0];
  }

  objc_storeStrong(v36, v37);
  v28 = objc_loadWeakRetained(&to);
  v29 = objc_opt_respondsToSelector();

  if (v29)
  {
    v30 = objc_loadWeakRetained(&to);
    [v30 stateMachine:p_isa didEnterState:v37 date:0 error:0];
  }

  v31 = objc_loadWeakRetained(&to);
  v32 = objc_opt_respondsToSelector();

  if (v32)
  {
    v33 = objc_loadWeakRetained(&to);
    [v33 stateMachine:p_isa didTransition:0 fromState:0 toState:v37 date:0 error:0];
  }

  objc_destroyWeak(&to);
}

- (void)enqueueEvent:(int64_t)event date:(id)date error:(id)error completion:(id)completion
{
  if (self->_isProcessingEvent)
  {
    completionCopy = completion;
    errorCopy = error;
    dateCopy = date;
    dateCopy2 = objc_alloc_init(HKStateMachinePendingEvent);
    [(HKStateMachinePendingEvent *)dateCopy2 setEvent:event];
    [(HKStateMachinePendingEvent *)dateCopy2 setDate:dateCopy];

    [(HKStateMachinePendingEvent *)dateCopy2 setError:errorCopy];
    [(HKStateMachinePendingEvent *)dateCopy2 setCompletion:completionCopy];

    pendingEvents = self->_pendingEvents;
    if (!pendingEvents)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v15 = self->_pendingEvents;
      self->_pendingEvents = v14;

      pendingEvents = self->_pendingEvents;
    }

    [(NSMutableArray *)pendingEvents addObject:dateCopy2];
  }

  else
  {
    completionCopy2 = completion;
    errorCopy2 = error;
    dateCopy2 = date;
    [HKStateMachine _handleEvent:"_handleEvent:date:error:completion:" date:event error:? completion:?];
  }
}

- (void)_handleEvent:(int64_t)event date:(id)date error:(id)error completion:(id)completion
{
  dateCopy = date;
  errorCopy = error;
  completionCopy = completion;
  p_currentState = &self->_currentState;
  if (!self->_currentState)
  {
    [HKStateMachine _handleEvent:date:error:completion:];
  }

  objc_copyWeak(&to, &self->_delegate);
  outgoingTransitions = [(HKStateMachineState *)self->_currentState outgoingTransitions];
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:event];
  v16 = [outgoingTransitions objectForKeyedSubscript:v15];

  if (v16)
  {
    self->_isProcessingEvent = 1;
    toState = [v16 toState];
    v18 = *p_currentState;
    v19 = objc_loadWeakRetained(&to);
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v21 = objc_loadWeakRetained(&to);
      [v21 stateMachine:self willLeaveState:v18 date:dateCopy error:errorCopy];
    }

    v22 = objc_loadWeakRetained(&to);
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      v24 = objc_loadWeakRetained(&to);
      [v24 stateMachine:self willEnterState:toState date:dateCopy error:errorCopy];
    }

    v25 = objc_loadWeakRetained(&to);
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      v27 = objc_loadWeakRetained(&to);
      [v27 stateMachine:self persistTransition:v16];
    }

    objc_storeStrong(&self->_currentState, toState);
    v28 = objc_loadWeakRetained(&to);
    v29 = objc_opt_respondsToSelector();

    if (v29)
    {
      v30 = objc_loadWeakRetained(&to);
      [v30 stateMachine:self didEnterState:toState date:dateCopy error:errorCopy];
    }

    v31 = objc_loadWeakRetained(&to);
    v32 = objc_opt_respondsToSelector();

    if (v32)
    {
      v33 = objc_loadWeakRetained(&to);
      [v33 stateMachine:self didLeaveState:v18 date:dateCopy error:errorCopy];
    }

    v34 = objc_loadWeakRetained(&to);
    v35 = objc_opt_respondsToSelector();

    if (v35)
    {
      v36 = objc_loadWeakRetained(&to);
      [v36 stateMachine:self didTransition:v16 fromState:v18 toState:toState date:dateCopy error:errorCopy];
    }

    completionCopy[2](completionCopy, 1, 0);
    self->_isProcessingEvent = 0;
    [(HKStateMachine *)self _dequeueEvent];
  }

  else
  {
    v37 = objc_loadWeakRetained(&to);
    v38 = objc_opt_respondsToSelector();

    if (v38)
    {
      v39 = objc_loadWeakRetained(&to);
      [v39 stateMachine:self didIgnoreEvent:event state:self->_currentState];
    }

    v40 = MEMORY[0x1E696ABC0];
    v41 = objc_opt_class();
    v42 = *p_currentState;
    outgoingTransitions2 = [(HKStateMachineState *)*p_currentState outgoingTransitions];
    v44 = [v40 hk_errorForInvalidArgument:@"@" class:v41 selector:a2 format:{@"Unable to transition to the desired state from the %@ state (event %ld). Allowed transitions from the current state are: %@", v42, event, outgoingTransitions2}];
    (completionCopy)[2](completionCopy, 0, v44);

    [(HKStateMachine *)self _dequeueEvent];
  }

  objc_destroyWeak(&to);
}

- (void)_dequeueEvent
{
  firstObject = [(NSMutableArray *)self->_pendingEvents firstObject];
  if (firstObject)
  {
    v8 = firstObject;
    [(NSMutableArray *)self->_pendingEvents removeObjectAtIndex:0];
    event = [v8 event];
    date = [v8 date];
    error = [v8 error];
    completion = [v8 completion];
    [(HKStateMachine *)self _handleEvent:event date:date error:error completion:completion];

    firstObject = v8;
  }
}

- (id)graphDescription
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  allValues = [(NSMutableDictionary *)self->_statesByIndex allValues];
  v5 = [allValues sortedArrayUsingComparator:&__block_literal_global_51];

  v6 = [(NSString *)self->_name stringByReplacingOccurrencesOfString:@" " withString:@"_"];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"state_machine";
  }

  label = [(HKStateMachineState *)self->_currentState label];
  v30 = v3;
  [v3 appendFormat:@"digraph %@ {\n   rankdir=LR;\n   node [shape=doublecircle width=1]; %@\n   node [shape=circle width=1];\n", v8, label];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v5;
  v28 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v28)
  {
    v27 = *v36;
    do
    {
      v10 = 0;
      do
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v10;
        v11 = *(*(&v35 + 1) + 8 * v10);
        outgoingTransitions = [v11 outgoingTransitions];
        allValues2 = [outgoingTransitions allValues];
        v14 = [allValues2 sortedArrayUsingComparator:&__block_literal_global_170];

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v32;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v32 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v31 + 1) + 8 * i);
              label2 = [v11 label];
              toState = [v20 toState];
              label3 = [toState label];
              label4 = [v20 label];
              [v30 appendFormat:@"   %@ -> %@ [ label = %@ (%ld) ];\n", label2, label3, label4, objc_msgSend(v20, "event")];
            }

            v17 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v17);
        }

        v10 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v28);
  }

  [v30 appendString:@"}"];

  return v30;
}

uint64_t __34__HKStateMachine_graphDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 label];
  v6 = [v4 label];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __34__HKStateMachine_graphDescription__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 label];
  v6 = [v4 label];

  v7 = [v5 compare:v6];
  return v7;
}

- (HKStateMachineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)addStateWithIndex:label:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"_currentState == nil" object:? file:? lineNumber:? description:?];
}

- (void)addStateTransitionFrom:to:event:label:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"_currentState == nil" object:? file:? lineNumber:? description:?];
}

- (void)addStateTransitionFrom:(uint64_t)a3 to:event:label:.cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"HKStateMachine.m" lineNumber:167 description:{@"Invalid state %@ does not appear to be part of this state machine.", a3}];
}

- (void)addStateTransitionFrom:(uint64_t)a3 to:event:label:.cold.3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"HKStateMachine.m" lineNumber:168 description:{@"Invalid state %@ does not appear to be part of this state machine.", a3}];
}

- (void)enterAtState:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"_currentState == nil" object:? file:? lineNumber:? description:?];
}

- (void)enterAtState:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"initialState != nil" object:? file:? lineNumber:? description:?];
}

- (void)_handleEvent:date:error:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"_currentState != nil" object:? file:? lineNumber:? description:?];
}

@end