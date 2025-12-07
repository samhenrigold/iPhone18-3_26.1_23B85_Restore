@interface MTResetTimerIntentHandler
- (id)_responseToResetTimerIntent:(id)intent withResetTimers:(id)timers error:(id)error dryRun:(BOOL)run;
- (void)_handleResetTimer:(id)timer dryRun:(BOOL)run completion:(id)completion;
- (void)confirmResetTimer:(id)timer completion:(id)completion;
- (void)handleResetTimer:(id)timer completion:(id)completion;
- (void)resolveTargetTimerForResetTimer:(id)timer withCompletion:(id)completion;
@end

@implementation MTResetTimerIntentHandler

- (void)resolveTargetTimerForResetTimer:(id)timer withCompletion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v21 = "[MTResetTimerIntentHandler resolveTargetTimerForResetTimer:withCompletion:]";
    v22 = 2112;
    v23 = timerCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  if (completionCopy)
  {
    targetTimer = [timerCopy targetTimer];
    targetTimer2 = [timerCopy targetTimer];
    v11 = -[MTUpdateTimerIntentHandler _timerFromIntentTargetTimer:defaultState:](self, "_timerFromIntentTargetTimer:defaultState:", targetTimer, [targetTimer2 state]);

    if ([v11 type] == 2)
    {
      [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F2965F30, &unk_1F2965F48, 0, v16}];
    }

    else
    {
      [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F2965F30, &unk_1F2965F48, &unk_1F2965F60, 0}];
    }
    v12 = ;
    resetMultiple = [timerCopy resetMultiple];
    bOOLValue = [resetMultiple BOOLValue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __76__MTResetTimerIntentHandler_resolveTargetTimerForResetTimer_withCompletion___block_invoke;
    v17[3] = &unk_1E7B0C3E8;
    v18 = v11;
    v19 = completionCopy;
    v15 = v11;
    [(MTTimerIntentHandler *)self _genericallyResolveTargetTimer:v15 multiple:bOOLValue allowedTimerStatesForFollowup:v12 completion:v17];
  }
}

void __76__MTResetTimerIntentHandler_resolveTargetTimerForResetTimer_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [MEMORY[0x1E696EAC8] successWithResolvedTimer:*(a1 + 32)];
  }

  v5 = v4;
  (*(*(a1 + 40) + 16))();
}

- (void)confirmResetTimer:(id)timer completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[MTResetTimerIntentHandler confirmResetTimer:completion:]";
    v14 = 2112;
    v15 = timerCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  if (completionCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__MTResetTimerIntentHandler_confirmResetTimer_completion___block_invoke;
    v9[3] = &unk_1E7B0E258;
    v11 = completionCopy;
    v9[4] = self;
    v10 = timerCopy;
    [(MTResetTimerIntentHandler *)self _handleResetTimer:v10 dryRun:1 completion:v9];
  }
}

void __58__MTResetTimerIntentHandler_confirmResetTimer_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = [*(a1 + 32) _responseToResetTimerIntent:*(a1 + 40) withResetTimers:a2 error:a3 dryRun:1];
  (*(v3 + 16))(v3, v4);
}

- (void)handleResetTimer:(id)timer completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[MTResetTimerIntentHandler handleResetTimer:completion:]";
    v16 = 2112;
    v17 = timerCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__MTResetTimerIntentHandler_handleResetTimer_completion___block_invoke;
  v11[3] = &unk_1E7B0E258;
  v12 = timerCopy;
  v13 = completionCopy;
  v11[4] = self;
  v9 = timerCopy;
  v10 = completionCopy;
  [(MTResetTimerIntentHandler *)self _handleResetTimer:v9 dryRun:0 completion:v11];
}

void __57__MTResetTimerIntentHandler_handleResetTimer_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = [*(a1 + 32) _responseToResetTimerIntent:*(a1 + 40) withResetTimers:a2 error:a3 dryRun:0];
    (*(v3 + 16))(v3, v4);
  }
}

- (void)_handleResetTimer:(id)timer dryRun:(BOOL)run completion:(id)completion
{
  runCopy = run;
  completionCopy = completion;
  timerCopy = timer;
  targetTimer = [timerCopy targetTimer];
  targetTimer2 = [timerCopy targetTimer];
  v13 = -[MTUpdateTimerIntentHandler _timerFromIntentTargetTimer:defaultState:](self, "_timerFromIntentTargetTimer:defaultState:", targetTimer, [targetTimer2 state]);

  resetMultiple = [timerCopy resetMultiple];

  -[MTUpdateTimerIntentHandler _updateTimer:dryRun:allowMultiple:excludeStoppedTimers:filterBlock:updateBlock:completion:](self, "_updateTimer:dryRun:allowMultiple:excludeStoppedTimers:filterBlock:updateBlock:completion:", v13, runCopy, [resetMultiple BOOLValue], 0, 0, &__block_literal_global_35, completionCopy);
}

uint64_t __65__MTResetTimerIntentHandler__handleResetTimer_dryRun_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setState:1];
  [v2 setState:3];

  return 0;
}

- (id)_responseToResetTimerIntent:(id)intent withResetTimers:(id)timers error:(id)error dryRun:(BOOL)run
{
  runCopy = run;
  v33 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  timersCopy = timers;
  errorCopy = error;
  v12 = errorCopy;
  if (!timersCopy || errorCopy)
  {
    domain = [errorCopy domain];
    v17 = [domain isEqualToString:@"MTTimerIntentHandlerErrorDomain"];

    if (!v17 || (v18 = [v12 code], (v18 - 5) > 2) || (v13 = objc_msgSend(objc_alloc(MEMORY[0x1E696E998]), "initWithCode:userActivity:", qword_1B20B8AF0[v18 - 5], 0)) == 0)
    {
      v13 = [objc_alloc(MEMORY[0x1E696E998]) initWithCode:4 userActivity:0];
    }

    v19 = *MEMORY[0x1E696E6D8];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = runCopy ? @"confirm" : @"handle";
      if (v12)
      {
        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"due to error %@", v12];
      }

      else
      {
        v22 = &stru_1F29360E0;
      }

      *buf = 136316162;
      v24 = "[MTResetTimerIntentHandler _responseToResetTimerIntent:withResetTimers:error:dryRun:]";
      v25 = 2112;
      v26 = v21;
      v27 = 2112;
      v28 = intentCopy;
      v29 = 2112;
      v30 = v22;
      v31 = 2112;
      v32 = v13;
      _os_log_error_impl(&dword_1B1F9F000, v19, OS_LOG_TYPE_ERROR, "%s Failed to %@ reset timer intent %@ %@, response: %@", buf, 0x34u);
      if (v12)
      {
      }
    }
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E696E998]) initWithCode:3 userActivity:0];
    [(__CFString *)v13 setResetTimers:timersCopy];
    v14 = *MEMORY[0x1E696E6D8];
    if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
    {
      v15 = @"handled";
      *buf = 136315906;
      v24 = "[MTResetTimerIntentHandler _responseToResetTimerIntent:withResetTimers:error:dryRun:]";
      v25 = 2112;
      if (runCopy)
      {
        v15 = @"confirmed";
      }

      v26 = v15;
      v27 = 2112;
      v28 = intentCopy;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&dword_1B1F9F000, v14, OS_LOG_TYPE_INFO, "%s Successfully %@ reset timer intent %@ with response %@", buf, 0x2Au);
    }
  }

  return v13;
}

@end