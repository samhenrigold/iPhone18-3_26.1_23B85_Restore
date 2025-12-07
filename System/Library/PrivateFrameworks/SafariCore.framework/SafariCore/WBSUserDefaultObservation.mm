@interface WBSUserDefaultObservation
- (WBSUserDefaultObservation)initWithUserDefaults:(id)defaults keys:(id)keys queue:(id)queue notifyForInitialValue:(BOOL)value handler:(id)handler;
- (void)dealloc;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation WBSUserDefaultObservation

- (WBSUserDefaultObservation)initWithUserDefaults:(id)defaults keys:(id)keys queue:(id)queue notifyForInitialValue:(BOOL)value handler:(id)handler
{
  valueCopy = value;
  v38 = *MEMORY[0x1E69E9840];
  defaultsCopy = defaults;
  keysCopy = keys;
  queueCopy = queue;
  handlerCopy = handler;
  v36.receiver = self;
  v36.super_class = WBSUserDefaultObservation;
  v17 = [(WBSUserDefaultObservation *)&v36 init];
  v18 = v17;
  if (v17)
  {
    v31 = queueCopy;
    objc_storeStrong(&v17->_defaults, defaults);
    v19 = [handlerCopy copy];
    handler = v18->_handler;
    v18->_handler = v19;

    v21 = [keysCopy copy];
    keys = v18->_keys;
    v18->_keys = v21;

    objc_storeStrong(&v18->_queue, queue);
    v34 = 0u;
    v35 = 0u;
    if (valueCopy)
    {
      v23 = 7;
    }

    else
    {
      v23 = 3;
    }

    v32 = 0uLL;
    v33 = 0uLL;
    v24 = keysCopy;
    v25 = [v24 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v33;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [defaultsCopy addObserver:v18 forKeyPath:*(*(&v32 + 1) + 8 * i) options:v23 context:kvoContext];
        }

        v26 = [v24 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v26);
    }

    v29 = v18;
    queueCopy = v31;
  }

  return v18;
}

- (void)dealloc
{
  [(WBSUserDefaultObservation *)self invalidate];
  v3.receiver = self;
  v3.super_class = WBSUserDefaultObservation;
  [(WBSUserDefaultObservation *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  if (kvoContext == context)
  {
    v12 = *MEMORY[0x1E696A500];
    changeCopy = change;
    changeCopy2 = [changeCopy objectForKeyedSubscript:v12];
    v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

    if (changeCopy2 | v14 && ([changeCopy2 isEqual:v14] & 1) == 0)
    {
      queue = self->_queue;
      if (queue)
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __76__WBSUserDefaultObservation_observeValueForKeyPath_ofObject_change_context___block_invoke;
        v16[3] = &unk_1E7CF1708;
        v16[4] = self;
        v17 = pathCopy;
        dispatch_async(queue, v16);
      }

      else
      {
        (*(self->_handler + 2))();
      }
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = WBSUserDefaultObservation;
    changeCopy2 = change;
    [(WBSUserDefaultObservation *)&v18 observeValueForKeyPath:pathCopy ofObject:object change:changeCopy2 context:context];
  }
}

- (void)invalidate
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_handler)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = self->_keys;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(NSUserDefaults *)self->_defaults removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v7++) context:kvoContext, v9];
        }

        while (v5 != v7);
        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    handler = self->_handler;
    self->_handler = 0;
  }
}

@end