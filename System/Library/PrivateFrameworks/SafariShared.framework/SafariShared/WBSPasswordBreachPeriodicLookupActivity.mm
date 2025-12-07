@interface WBSPasswordBreachPeriodicLookupActivity
- (WBSPasswordBreachPeriodicLookupActivity)init;
- (void)_activityDidTransitionToRunState:(id)state;
- (void)_registerActivity;
- (void)_runActivityWithCompletionHandler:(id)handler;
@end

@implementation WBSPasswordBreachPeriodicLookupActivity

- (WBSPasswordBreachPeriodicLookupActivity)init
{
  v6.receiver = self;
  v6.super_class = WBSPasswordBreachPeriodicLookupActivity;
  v2 = [(WBSPasswordBreachPeriodicLookupActivity *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(WBSPasswordBreachPeriodicLookupActivity *)v2 _registerActivity];
    v4 = v3;
  }

  return v3;
}

- (void)_registerActivity
{
  v3 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_INFO, "Lookup activity checking in.", buf, 2u);
  }

  v4 = *MEMORY[0x1E69E9C50];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __60__WBSPasswordBreachPeriodicLookupActivity__registerActivity__block_invoke;
  handler[3] = &unk_1E7FC9220;
  handler[4] = self;
  xpc_activity_register("com.apple.Safari.PasswordBreachHelper.PeriodicLookupActivity", v4, handler);
}

void __60__WBSPasswordBreachPeriodicLookupActivity__registerActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3))
  {
    should_defer = xpc_activity_should_defer(v3);
    if (should_defer)
    {
      v6 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(should_defer, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_INFO, "Lookup activity transitioned to state Run, but criteria are no longer satisfied. Defering.", v17, 2u);
      }

      v7 = xpc_activity_set_state(v3, 3);
      if (!v7)
      {
        v9 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v7, v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          __60__WBSPasswordBreachPeriodicLookupActivity__registerActivity__block_invoke_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
        }
      }
    }

    else
    {
      [*(a1 + 32) _activityDidTransitionToRunState:v3];
    }
  }
}

- (void)_activityDidTransitionToRunState:(id)state
{
  stateCopy = state;
  v6 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(stateCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_INFO, "Lookup activity transitioned to state Run.", buf, 2u);
  }

  v7 = os_transaction_create();
  v8 = xpc_activity_set_state(stateCopy, 4);
  if (!v8)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(WBSPasswordBreachPeriodicLookupActivity *)v10 _activityDidTransitionToRunState:v11, v12, v13, v14, v15, v16, v17];
    }
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __76__WBSPasswordBreachPeriodicLookupActivity__activityDidTransitionToRunState___block_invoke;
  v20[3] = &unk_1E7FB6E30;
  v21 = stateCopy;
  v22 = v7;
  v18 = v7;
  v19 = stateCopy;
  [(WBSPasswordBreachPeriodicLookupActivity *)self _runActivityWithCompletionHandler:v20];
}

void __76__WBSPasswordBreachPeriodicLookupActivity__activityDidTransitionToRunState___block_invoke(uint64_t a1)
{
  v1 = xpc_activity_set_state(*(a1 + 32), 5);
  if (!v1)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v1, v2);
    v1 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (v1)
    {
      __76__WBSPasswordBreachPeriodicLookupActivity__activityDidTransitionToRunState___block_invoke_cold_1(v3, v2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v1, v2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_1BB6F3000, v10, OS_LOG_TYPE_INFO, "Lookup activity transitioned to state Done.", v11, 2u);
  }
}

- (void)_runActivityWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__WBSPasswordBreachPeriodicLookupActivity__runActivityWithCompletionHandler___block_invoke;
  v5[3] = &unk_1E7FC90F0;
  v6 = handlerCopy;
  v4 = handlerCopy;
  [WBSPasswordBreachManager getSharedManagerWithCompletionHandler:v5];
}

void __77__WBSPasswordBreachPeriodicLookupActivity__runActivityWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __77__WBSPasswordBreachPeriodicLookupActivity__runActivityWithCompletionHandler___block_invoke_2;
    v5[3] = &unk_1E7FC9078;
    v6 = *(a1 + 32);
    [a2 performNextSessionLookupIgnoringMinimumDelay:0 completionHandler:v5];
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

@end