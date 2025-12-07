@interface MTTimerIntentDonor
- (MTTimerIntentDonor)initWithStorage:(id)storage;
- (void)_queue_donateCreateTimerIntent:(id)intent source:(id)source;
- (void)source:(id)source didAddTimers:(id)timers;
- (void)source:(id)source didFireTimer:(id)timer;
- (void)source:(id)source didUpdateTimers:(id)timers;
@end

@implementation MTTimerIntentDonor

- (MTTimerIntentDonor)initWithStorage:(id)storage
{
  v16 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  if (self)
  {
    v6 = MTLogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "Initializing %{public}@", &v14, 0xCu);
    }

    objc_storeStrong(&self->_storage, storage);
    [(MTTimerStorage *)self->_storage registerObserver:self];
    v7 = [MEMORY[0x1E695DFA8] set];
    donatedTimerIDs = self->_donatedTimerIDs;
    self->_donatedTimerIDs = v7;

    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v10 = dispatch_queue_create("com.apple.MTTimerIntentDonor.serialqueue", v9);

    v11 = [MEMORY[0x1E69B3790] schedulerWithDispatchQueue:v10];
    serializer = self->_serializer;
    self->_serializer = v11;
  }

  return self;
}

- (void)source:(id)source didAddTimers:(id)timers
{
  sourceCopy = source;
  timersCopy = timers;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [sourceCopy donatesIntent])
  {
    serializer = [(MTTimerIntentDonor *)self serializer];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __42__MTTimerIntentDonor_source_didAddTimers___block_invoke;
    v9[3] = &unk_1E7B0C9A0;
    v9[4] = self;
    v10 = timersCopy;
    v11 = sourceCopy;
    [serializer performBlock:v9];
  }
}

void __42__MTTimerIntentDonor_source_didAddTimers___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    v16 = v3;
    v17 = 2114;
    v18 = v4;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ didAddTimers %{public}@", buf, 0x16u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(a1 + 32) _queue_donateCreateTimerIntent:*(*(&v10 + 1) + 8 * v9++) source:{*(a1 + 48), v10}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)source:(id)source didUpdateTimers:(id)timers
{
  sourceCopy = source;
  timersCopy = timers;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [sourceCopy donatesIntent])
  {
    serializer = [(MTTimerIntentDonor *)self serializer];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__MTTimerIntentDonor_source_didUpdateTimers___block_invoke;
    v9[3] = &unk_1E7B0C9A0;
    v9[4] = self;
    v10 = timersCopy;
    v11 = sourceCopy;
    [serializer performBlock:v9];
  }
}

void __45__MTTimerIntentDonor_source_didUpdateTimers___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    v19 = v3;
    v20 = 2114;
    v21 = v4;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ didUpdateTimers %{public}@", buf, 0x16u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 state] == 3)
        {
          [*(a1 + 32) _queue_donateCreateTimerIntent:v10 source:*(a1 + 48)];
        }

        else if ([v10 state] == 1)
        {
          v11 = *(*(a1 + 32) + 16);
          v12 = [v10 timerID];
          [v11 removeObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)source:(id)source didFireTimer:(id)timer
{
  timerCopy = timer;
  serializer = [(MTTimerIntentDonor *)self serializer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__MTTimerIntentDonor_source_didFireTimer___block_invoke;
  v8[3] = &unk_1E7B0C928;
  v8[4] = self;
  v9 = timerCopy;
  v7 = timerCopy;
  [serializer performBlock:v8];
}

void __42__MTTimerIntentDonor_source_didFireTimer___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8 = 138543618;
    v9 = v3;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ didFireTimer %{public}@", &v8, 0x16u);
  }

  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 16);
  v7 = [v5 timerID];
  [v6 removeObject:v7];
}

- (void)_queue_donateCreateTimerIntent:(id)intent source:(id)source
{
  v36 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  sourceCopy = source;
  donatedTimerIDs = self->_donatedTimerIDs;
  timerID = [intentCopy timerID];
  LOBYTE(donatedTimerIDs) = [(NSMutableSet *)donatedTimerIDs containsObject:timerID];

  if ((donatedTimerIDs & 1) == 0)
  {
    if ([intentCopy hasDefaultTitle])
    {
      v10 = 0;
    }

    else
    {
      v11 = objc_alloc(MEMORY[0x1E696EA50]);
      displayTitle = [intentCopy displayTitle];
      v10 = [v11 initWithSpokenPhrase:displayTitle];
    }

    v13 = objc_alloc(MEMORY[0x1E696E7D0]);
    [intentCopy duration];
    v14 = [v13 initWithLabel:v10 duration:0 type:?];
    [v14 _setExtensionBundleId:@"com.apple.mobiletimer-framework.MobileTimerIntents"];
    [v14 _setLaunchId:@"com.apple.mobiletimer"];
    [v14 _setNanoLaunchId:@"com.apple.private.NanoTimer"];
    v15 = MTLogForCategory(4);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v34 = 2114;
      v35 = v14;
      _os_log_impl(&dword_1B1F9F000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Donating intent: %{public}@", buf, 0x16u);
    }

    v16 = [MEMORY[0x1E696B090] mtUserActivityWithActivityType:@"com.apple.clock.timer"];
    v30[0] = @"identifier";
    identifier = [v14 identifier];
    v18 = identifier;
    if (identifier)
    {
      v19 = identifier;
    }

    else
    {
      v19 = &stru_1F29360E0;
    }

    v30[1] = @"duration";
    v31[0] = v19;
    v20 = MEMORY[0x1E696AD98];
    [v14 duration];
    v21 = [v20 numberWithDouble:?];
    v31[1] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
    [v16 setUserInfo:v22];

    v23 = [objc_alloc(MEMORY[0x1E696E7D8]) initWithCode:3 userActivity:v16];
    v24 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:v14 response:v23];
    [v24 mtSetIntentDonorFromSource:sourceCopy];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __60__MTTimerIntentDonor__queue_donateCreateTimerIntent_source___block_invoke;
    v28[3] = &unk_1E7B0D658;
    v29 = v14;
    v25 = v14;
    [v24 donateInteractionWithCompletion:v28];
    v26 = self->_donatedTimerIDs;
    timerID2 = [intentCopy timerID];
    [(NSMutableSet *)v26 addObject:timerID2];
  }
}

void __60__MTTimerIntentDonor__queue_donateCreateTimerIntent_source___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(4);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__MTTimerIntentDonor__queue_donateCreateTimerIntent_source___block_invoke_cold_1(v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%@ donated successfully", &v7, 0xCu);
  }
}

void __60__MTTimerIntentDonor__queue_donateCreateTimerIntent_source___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_ERROR, "Error donating timer create intent: %{public}@", &v2, 0xCu);
}

@end