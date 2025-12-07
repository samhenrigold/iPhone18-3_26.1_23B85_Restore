@interface REMChangedKeysObserver
- (REMChangedKeysObserver)initWithTarget:(id)target keysToObserve:(id)observe includeInitial:(BOOL)initial;
- (void)dealloc;
- (void)keyDidChange:(id)change;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation REMChangedKeysObserver

- (REMChangedKeysObserver)initWithTarget:(id)target keysToObserve:(id)observe includeInitial:(BOOL)initial
{
  initialCopy = initial;
  v28 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  observeCopy = observe;
  v26.receiver = self;
  v26.super_class = REMChangedKeysObserver;
  v11 = [(REMChangedKeysObserver *)&v26 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_target, target);
    objc_storeStrong(&v12->_keysToObserve, observe);
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    mutableChangedKeys = v12->_mutableChangedKeys;
    v12->_mutableChangedKeys = v13;

    v24 = 0u;
    v25 = 0u;
    if (initialCopy)
    {
      v15 = 7;
    }

    else
    {
      v15 = 3;
    }

    v22 = 0uLL;
    v23 = 0uLL;
    v16 = observeCopy;
    v17 = [v16 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v23;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [targetCopy addObserver:v12 forKeyPath:*(*(&v22 + 1) + 8 * i) options:v15 context:{0, v22}];
        }

        v18 = [v16 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v18);
    }
  }

  return v12;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_keysToObserve;
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

        [self->_target removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v7++) context:0];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = REMChangedKeysObserver;
  [(REMChangedKeysObserver *)&v8 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v23 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v9 = *MEMORY[0x1E696A500];
  changeCopy = change;
  v11 = [changeCopy objectForKeyedSubscript:v9];
  v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

  if (v11 != v12)
  {
    null = [MEMORY[0x1E695DFB0] null];
    v14 = [v12 isEqual:null];

    if (v14)
    {

      v12 = 0;
    }

    if (v11 != v12 && ([v11 isEqual:v12] & 1) == 0)
    {
      v15 = +[REMLog utility];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v17 = 138412802;
        v18 = pathCopy;
        v19 = 2112;
        v20 = v11;
        v21 = 2112;
        v22 = v12;
        _os_log_debug_impl(&dword_19A0DB000, v15, OS_LOG_TYPE_DEBUG, "REMChangedKeysObserver detected a change {keyPath: %@, old: %@, new: %@}", &v17, 0x20u);
      }

      mutableChangedKeys = [(REMChangedKeysObserver *)self mutableChangedKeys];
      [mutableChangedKeys addObject:pathCopy];
    }
  }
}

- (void)keyDidChange:(id)change
{
  changeCopy = change;
  mutableChangedKeys = [(REMChangedKeysObserver *)self mutableChangedKeys];
  [mutableChangedKeys addObject:changeCopy];
}

@end