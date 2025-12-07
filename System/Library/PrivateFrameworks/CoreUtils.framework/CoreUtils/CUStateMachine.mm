@interface CUStateMachine
- (void)_firstTimeInit;
- (void)dealloc;
- (void)dispatchEvent:(id)event;
- (void)invalidate;
- (void)start;
- (void)transitionToState:(id)state;
@end

@implementation CUStateMachine

- (void)_firstTimeInit
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = [(NSArray *)self->_states count];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  selfCopy = self;
  v4 = self->_states;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v63 objects:v69 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v64;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v64 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v63 + 1) + 8 * v9);
        if (*(v11 + 24))
        {
          FatalErrorF("Duplicate state %@", *(*(&v63 + 1) + 8 * v9));
        }

        v7 = v10 + 1;
        *(v11 + 16) = v10;
        v12 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:2];
        v13 = *(v11 + 24);
        *(v11 + 24) = v12;

        [*(v11 + 24) setCount:v3];
        ++v9;
        ++v10;
      }

      while (v6 != v9);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v63 objects:v69 count:16];
    }

    while (v6);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = selfCopy->_states;
  v49 = [(NSArray *)obj countByEnumeratingWithState:&v59 objects:v68 count:16];
  v14 = 0;
  if (v49)
  {
    v47 = *v60;
    do
    {
      v15 = 0;
      do
      {
        if (*v60 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v50 = v15;
        v16 = *(*(&v59 + 1) + 8 * v15);
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v17 = selfCopy->_states;
        v18 = [(NSArray *)v17 countByEnumeratingWithState:&v55 objects:v67 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v56;
          v51 = *v56;
          v52 = v17;
          do
          {
            v21 = 0;
            v53 = v19;
            do
            {
              if (*v56 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v55 + 1) + 8 * v21);
              if (v22 == v16)
              {
                [*(v16 + 24) replacePointerAtIndex:*(v22 + 16) withPointer:*(*(&v55 + 1) + 8 * v21)];
              }

              else
              {
                v23 = [*(v22 + 24) pointerAtIndex:*(v16 + 16)];
                if (v23)
                {
                  v24 = v23;
                  [*(v16 + 24) replacePointerAtIndex:*(v22 + 16) withPointer:v23];
                }

                else
                {
                  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  v26 = v16;
                  do
                  {
                    [v25 insertObject:v26 atIndex:0];
                    v27 = v26[5];

                    v26 = v27;
                  }

                  while (v27);
                  v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  v29 = v22;
                  v30 = v29;
                  if (v29)
                  {
                    do
                    {
                      [v28 insertObject:v30 atIndex:0];
                      v31 = v30[5];

                      v30 = v31;
                    }

                    while (v31);
                  }

                  v32 = [v25 count];
                  if (v32 >= [v28 count])
                  {
                    v33 = v28;
                  }

                  else
                  {
                    v33 = v25;
                  }

                  v34 = [v33 count];
                  if (!v34)
                  {
                    goto LABEL_50;
                  }

                  v35 = v34;
                  v54 = v14;
                  v36 = 0;
                  v37 = 0;
                  while (1)
                  {
                    v24 = [v25 objectAtIndexedSubscript:v36];
                    v38 = [v28 objectAtIndexedSubscript:v36];

                    if (v24 != v38)
                    {
                      break;
                    }

                    ++v36;
                    v37 = v24;
                    if (v35 == v36)
                    {
                      goto LABEL_36;
                    }
                  }

                  v24 = v37;
LABEL_36:
                  v14 = v54;
                  if (!v24)
                  {
LABEL_50:
                    FatalErrorF("Find LCA failed...invalid state graph");
                  }

                  [*(v16 + 24) replacePointerAtIndex:v29[2] withPointer:v24];
                  v39 = [v25 count];
                  if (v39 <= [v28 count])
                  {
                    v40 = v28;
                  }

                  else
                  {
                    v40 = v25;
                  }

                  v41 = [v40 count];
                  if (v41 > v54)
                  {
                    v14 = v41;
                  }

                  v20 = v51;
                  v17 = v52;
                  v19 = v53;
                }
              }

              ++v21;
            }

            while (v21 != v19);
            v19 = [(NSArray *)v17 countByEnumeratingWithState:&v55 objects:v67 count:16];
          }

          while (v19);
        }

        v15 = v50 + 1;
      }

      while (v50 + 1 != v49);
      v49 = [(NSArray *)obj countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v49);
  }

  v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
  eventQueue = selfCopy->_eventQueue;
  selfCopy->_eventQueue = v42;

  v44 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:2];
  lcaPath = selfCopy->_lcaPath;
  selfCopy->_lcaPath = v44;

  [(NSPointerArray *)selfCopy->_lcaPath setCount:v14];
  selfCopy->_started = 1;
}

- (void)transitionToState:(id)state
{
  stateCopy = state;
  if (!self->_dispatching)
  {
    FatalErrorF("Transition to state %@ only allowed from a state handler", stateCopy);
  }

  targetState = self->_targetState;
  if (targetState)
  {
    FatalErrorF("Transition to state %@ while transitioning to state %@", stateCopy, targetState);
  }

  self->_targetState = stateCopy;

  MEMORY[0x1EEE66BB8](stateCopy, 0);
}

- (void)dispatchEvent:(id)event
{
  eventCopy = event;
  v32 = eventCopy;
  if (self->_dispatching)
  {
    [(NSMutableArray *)self->_eventQueue addObject:eventCopy];
  }

  else
  {
    v5 = eventCopy;
    p_currentState = &self->_currentState;
    v7 = self->_currentState;
    while (1)
    {
      v8 = v7;
      while (1)
      {
        self->_dispatching = 1;
        v9 = (*(*(v8 + 8) + 16))();
        self->_dispatching = 0;
        if (v9 != 1)
        {
          break;
        }

        targetState = self->_targetState;
        if (targetState)
        {
          FatalErrorF("State %@ unhandled, but transitioned to state %@", v8, targetState);
        }

        v11 = *(v8 + 40);

        v8 = v11;
        if (!v11)
        {
          FatalErrorF("Event %@ unhandled\n", v5);
        }
      }

      if (v9 != 2)
      {
        FatalErrorF("State %@ bad result %ld", v8, v9);
      }

      self->_dispatching = 1;
      while (1)
      {
        v12 = self->_targetState;
        if (!v12)
        {
          break;
        }

        v13 = [*(v8 + 24) pointerAtIndex:v12->_index];
        for (i = *p_currentState; *p_currentState != v13; i = *p_currentState)
        {
          eventHandler = i->_eventHandler;
          v16 = +[CUStateEvent exitState];
          eventHandler[2](eventHandler, v16);

          objc_storeStrong(&self->_currentState, (*p_currentState)->_parent);
        }

        v17 = self->_targetState;
        if (v8 == v17)
        {
          v24 = *(v8 + 8);
          v25 = +[CUStateEvent exitState];
          (*(v24 + 16))(v24, v25);

          v26 = *(v8 + 8);
          v27 = +[CUStateEvent enterState];
          (*(v26 + 16))(v26, v27);

          objc_storeStrong(&self->_currentState, v8);
        }

        else
        {
          v18 = v17;

          if (v18 == v13)
          {
            v8 = v18;
          }

          else
          {
            v19 = 0;
            do
            {
              v20 = v18;
              v21 = v19++;
              [(NSPointerArray *)self->_lcaPath replacePointerAtIndex:v21 withPointer:v18];
              v18 = v18[5];
            }

            while (v18 != v13);
            v8 = v18;
            if (v19)
            {
              do
              {
                v8 = [(NSPointerArray *)self->_lcaPath pointerAtIndex:v21];

                v22 = *(v8 + 8);
                v23 = +[CUStateEvent enterState];
                (*(v22 + 16))(v22, v23);

                objc_storeStrong(&self->_currentState, v8);
                --v21;
                v18 = v8;
              }

              while (v21 != -1);
            }
          }
        }

        v28 = self->_targetState;
        if (self->_currentState != v28)
        {
          FatalErrorF("Transitioned state %@ not target %@", self->_currentState, v28);
        }

        self->_targetState = 0;

        v29 = self->_currentState->_eventHandler;
        v30 = +[CUStateEvent initialTransition];
        v29[2](v29, v30);
      }

      self->_dispatching = 0;
      v7 = self->_currentState;

      firstObject = [(NSMutableArray *)self->_eventQueue firstObject];

      if (!firstObject)
      {
        break;
      }

      v5 = firstObject;

      [(NSMutableArray *)self->_eventQueue removeObjectAtIndex:0];
    }
  }
}

- (void)invalidate
{
  v19 = *MEMORY[0x1E69E9840];
  currentState = self->_currentState;
  self->_currentState = 0;

  [(NSMutableArray *)self->_eventQueue removeAllObjects];
  eventQueue = self->_eventQueue;
  self->_eventQueue = 0;

  [(NSPointerArray *)self->_lcaPath setCount:0];
  lcaPath = self->_lcaPath;
  self->_lcaPath = 0;

  targetState = self->_targetState;
  self->_targetState = 0;

  [(CUState *)self->_initialState invalidate];
  initialState = self->_initialState;
  self->_initialState = 0;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_states;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12++) invalidate];
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  states = self->_states;
  self->_states = 0;
}

- (void)start
{
  if (self->_started)
  {
    FatalErrorF("Attempt to start an already-started state machine", a2);
  }

  [(CUStateMachine *)self _firstTimeInit];
  initialState = self->_initialState;
  if (!initialState)
  {
    FatalErrorF("No initial state");
  }

  v4 = initialState;
  v5 = -1;
  do
  {
    v6 = v5++;
    [(NSPointerArray *)self->_lcaPath replacePointerAtIndex:v5 withPointer:v4];
    v7 = v4[5];

    v4 = v7;
  }

  while (v7);
  self->_dispatching = 1;
  if (v6 != -2)
  {
    do
    {
      v8 = [(NSPointerArray *)self->_lcaPath pointerAtIndex:v5];
      eventHandler = v8->_eventHandler;
      v10 = +[CUStateEvent enterState];
      eventHandler[2](eventHandler, v10);

      currentState = self->_currentState;
      self->_currentState = v8;

      --v5;
    }

    while (v5 != -1);
  }

  v12 = self->_currentState->_eventHandler;
  v13 = +[CUStateEvent initialTransition];
  v12[2](v12, v13);

  for (i = self->_targetState; i; i = self->_targetState)
  {
    v15 = i;
    v16 = v15;
    if (v15 == self->_currentState)
    {

LABEL_22:
      FatalErrorF("Bad initial transition %@ -> %@", self->_currentState, self->_targetState);
    }

    v17 = 0;
    do
    {
      v18 = v16;
      v19 = v17++;
      [(NSPointerArray *)self->_lcaPath replacePointerAtIndex:v19 withPointer:v16];
      v16 = v16->_parent;
    }

    while (v16 != self->_currentState);

    if (!v17)
    {
      goto LABEL_22;
    }

    do
    {
      v20 = [(NSPointerArray *)self->_lcaPath pointerAtIndex:v19];
      v21 = v20[1];
      v22 = +[CUStateEvent enterState];
      (*(v21 + 16))(v21, v22);

      --v19;
    }

    while (v19 != -1);
    objc_storeStrong(&self->_currentState, self->_targetState);
    targetState = self->_targetState;
    self->_targetState = 0;

    v24 = self->_currentState->_eventHandler;
    v25 = +[CUStateEvent initialTransition];
    v24[2](v24, v25);
  }

  self->_dispatching = 0;
  firstObject = [(NSMutableArray *)self->_eventQueue firstObject];
  if (firstObject)
  {
    v28 = firstObject;
    v27 = firstObject;

    [(NSMutableArray *)self->_eventQueue removeObjectAtIndex:0];
    [(CUStateMachine *)self dispatchEvent:v27];
    firstObject = v28;
  }
}

- (void)dealloc
{
  if (self->_currentState || self->_targetState)
  {
    FatalErrorF("State machine invalidate not called", a2);
  }

  [(NSMutableArray *)self->_eventQueue removeAllObjects];
  eventQueue = self->_eventQueue;
  self->_eventQueue = 0;

  [(NSPointerArray *)self->_lcaPath setCount:0];
  lcaPath = self->_lcaPath;
  self->_lcaPath = 0;

  v5.receiver = self;
  v5.super_class = CUStateMachine;
  [(CUStateMachine *)&v5 dealloc];
}

@end