@interface SASSiriPocketStateManager
+ (id)sharedManager;
- (BOOL)pocketStateShouldPreventVoiceTriggerForActivationRequest:(id)request;
- (id)_init;
- (id)_stringForPocketState:(int64_t)state;
- (void)_updateForPocketState:(int64_t)state;
- (void)queryForPocketStateWithCompletion:(id)completion;
@end

@implementation SASSiriPocketStateManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[SASSiriPocketStateManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

uint64_t __42__SASSiriPocketStateManager_sharedManager__block_invoke()
{
  sharedManager_manager = [[SASSiriPocketStateManager alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = SASSiriPocketStateManager;
  v2 = [(SASSiriPocketStateManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69634D8]);
    [(SASSiriPocketStateManager *)v2 _setPocketStateManager:v3];

    _pocketStateManager = [(SASSiriPocketStateManager *)v2 _pocketStateManager];
    [_pocketStateManager setDelegate:v2];

    [(SASSiriPocketStateManager *)v2 _setCurrentPocketState:4];
  }

  return v2;
}

- (void)queryForPocketStateWithCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  objc_initWeak(&location, self);
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[SASSiriPocketStateManager queryForPocketStateWithCompletion:]";
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #SiriPocketStateManager: Querying Pocket State", buf, 0xCu);
  }

  [(SASSiriPocketStateManager *)self _updateForPocketState:4];
  _pocketStateManager = [(SASSiriPocketStateManager *)self _pocketStateManager];
  v7 = MEMORY[0x1E69E96A0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__SASSiriPocketStateManager_queryForPocketStateWithCompletion___block_invoke;
  v9[3] = &unk_1E82F3760;
  objc_copyWeak(&v11, &location);
  v8 = completionCopy;
  v10 = v8;
  [_pocketStateManager queryStateOntoQueue:MEMORY[0x1E69E96A0] andMonitorFor:v9 withTimeout:0.5 andHandler:0.3];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __63__SASSiriPocketStateManager_queryForPocketStateWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = *MEMORY[0x1E698D0A0];
    v8 = *MEMORY[0x1E698D0A0];
    if (v5)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __63__SASSiriPocketStateManager_queryForPocketStateWithCompletion___block_invoke_cold_1(v5, v7);
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v7;
        v10 = [WeakRetained _stringForPocketState:a2];
        v12 = 136315394;
        v13 = "[SASSiriPocketStateManager queryForPocketStateWithCompletion:]_block_invoke";
        v14 = 2112;
        v15 = v10;
        _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #SiriPocketStateManager: Pocket state query successful with state: %@", &v12, 0x16u);
      }

      [WeakRetained _updateForPocketState:a2];
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      (*(v11 + 16))(v11, a2, v5);
    }
  }
}

- (BOOL)pocketStateShouldPreventVoiceTriggerForActivationRequest:(id)request
{
  v14 = *MEMORY[0x1E69E9840];
  context = [request context];
  speechRequestOptions = [context speechRequestOptions];
  voiceTriggerEventInfo = [speechRequestOptions voiceTriggerEventInfo];

  if (voiceTriggerEventInfo && ([voiceTriggerEventInfo objectForKey:@"hfpTriggerDuringPhoneCall"], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLValue"), v7, v8))
  {
    v9 = *MEMORY[0x1E698D0A0];
    pocketStateShouldPreventVoiceTrigger = 0;
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[SASSiriPocketStateManager pocketStateShouldPreventVoiceTriggerForActivationRequest:]";
      _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation hfpTriggerDuringPhoneCall = YES bypassing pocket state detector", &v12, 0xCu);
      pocketStateShouldPreventVoiceTrigger = 0;
    }
  }

  else
  {
    pocketStateShouldPreventVoiceTrigger = [(SASSiriPocketStateManager *)self pocketStateShouldPreventVoiceTrigger];
  }

  return pocketStateShouldPreventVoiceTrigger;
}

- (void)_updateForPocketState:(int64_t)state
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(SASSiriPocketStateManager *)self _stringForPocketState:state];
    v8 = 136315394;
    v9 = "[SASSiriPocketStateManager _updateForPocketState:]";
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #SiriPocketStateManager: PocketState changed to %@", &v8, 0x16u);
  }

  [(SASSiriPocketStateManager *)self _setCurrentPocketState:state];
}

- (id)_stringForPocketState:(int64_t)state
{
  if ((state - 1) > 3)
  {
    return @"CMPocketStateTypeOutOfPocket";
  }

  else
  {
    return off_1E82F3780[state - 1];
  }
}

void __63__SASSiriPocketStateManager_queryForPocketStateWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "[SASSiriPocketStateManager queryForPocketStateWithCompletion:]_block_invoke";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_1C8137000, a2, OS_LOG_TYPE_ERROR, "%s #SiriPocketStateManager: Failed to query for pocket state: %@", &v2, 0x16u);
}

@end