@interface MTPauseResumeTimerIntentHandler
- (id)_responseToPauseTimerIntent:(id)intent withPausedTimers:(id)timers error:(id)error dryRun:(BOOL)run;
- (id)_responseToResumeTimerIntent:(id)intent withResumedTimers:(id)timers error:(id)error dryRun:(BOOL)run;
- (void)_handlePauseTimer:(id)timer dryRun:(BOOL)run completion:(id)completion;
- (void)_handleResumeTimer:(id)timer dryRun:(BOOL)run completion:(id)completion;
- (void)confirmPauseTimer:(id)timer completion:(id)completion;
- (void)confirmResumeTimer:(id)timer completion:(id)completion;
- (void)handlePauseTimer:(id)timer completion:(id)completion;
- (void)handleResumeTimer:(id)timer completion:(id)completion;
- (void)resolvePauseMultipleForPauseTimer:(id)timer withCompletion:(id)completion;
- (void)resolveResumeMultipleForResumeTimer:(id)timer withCompletion:(id)completion;
- (void)resolveTargetTimerForPauseTimer:(id)timer withCompletion:(id)completion;
- (void)resolveTargetTimerForResumeTimer:(id)timer withCompletion:(id)completion;
@end

@implementation MTPauseResumeTimerIntentHandler

- (void)resolveTargetTimerForPauseTimer:(id)timer withCompletion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "[MTPauseResumeTimerIntentHandler resolveTargetTimerForPauseTimer:withCompletion:]";
    v20 = 2112;
    v21 = timerCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  if (completionCopy)
  {
    targetTimer = [timerCopy targetTimer];
    v10 = [(MTUpdateTimerIntentHandler *)self _timerFromIntentTargetTimer:targetTimer defaultState:0];

    v11 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2965FF0];
    pauseMultiple = [timerCopy pauseMultiple];
    bOOLValue = [pauseMultiple BOOLValue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __82__MTPauseResumeTimerIntentHandler_resolveTargetTimerForPauseTimer_withCompletion___block_invoke;
    v15[3] = &unk_1E7B0C3E8;
    v16 = v10;
    v17 = completionCopy;
    v14 = v10;
    [(MTTimerIntentHandler *)self _genericallyResolveTargetTimer:v14 multiple:bOOLValue allowedTimerStatesForFollowup:v11 completion:v15];
  }
}

void __82__MTPauseResumeTimerIntentHandler_resolveTargetTimerForPauseTimer_withCompletion___block_invoke(uint64_t a1, void *a2)
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

- (void)resolvePauseMultipleForPauseTimer:(id)timer withCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  v7 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "[MTPauseResumeTimerIntentHandler resolvePauseMultipleForPauseTimer:withCompletion:]";
    v13 = 2112;
    v14 = timerCopy;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_INFO, "%s %@", &v11, 0x16u);
  }

  if (completionCopy)
  {
    v8 = MEMORY[0x1E696E760];
    pauseMultiple = [timerCopy pauseMultiple];
    v10 = [v8 successWithResolvedValue:{objc_msgSend(pauseMultiple, "BOOLValue")}];
    completionCopy[2](completionCopy, v10);
  }
}

- (void)confirmPauseTimer:(id)timer completion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[MTPauseResumeTimerIntentHandler confirmPauseTimer:completion:]";
    v11 = 2112;
    v12 = timerCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", &v9, 0x16u);
  }

  [(MTPauseResumeTimerIntentHandler *)self _handlePauseTimer:timerCopy dryRun:1 completion:completionCopy];
}

- (void)handlePauseTimer:(id)timer completion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[MTPauseResumeTimerIntentHandler handlePauseTimer:completion:]";
    v11 = 2112;
    v12 = timerCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", &v9, 0x16u);
  }

  [(MTPauseResumeTimerIntentHandler *)self _handlePauseTimer:timerCopy dryRun:0 completion:completionCopy];
}

- (void)_handlePauseTimer:(id)timer dryRun:(BOOL)run completion:(id)completion
{
  runCopy = run;
  timerCopy = timer;
  completionCopy = completion;
  targetTimer = [timerCopy targetTimer];
  targetTimer2 = [timerCopy targetTimer];
  v12 = -[MTUpdateTimerIntentHandler _timerFromIntentTargetTimer:defaultState:](self, "_timerFromIntentTargetTimer:defaultState:", targetTimer, [targetTimer2 state]);

  pauseMultiple = [timerCopy pauseMultiple];
  bOOLValue = [pauseMultiple BOOLValue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __71__MTPauseResumeTimerIntentHandler__handlePauseTimer_dryRun_completion___block_invoke_3;
  v17[3] = &unk_1E7B0C450;
  v18 = timerCopy;
  v19 = completionCopy;
  v17[4] = self;
  v20 = runCopy;
  v15 = timerCopy;
  v16 = completionCopy;
  [(MTUpdateTimerIntentHandler *)self _updateTimer:v12 dryRun:runCopy allowMultiple:bOOLValue excludeStoppedTimers:1 filterBlock:&__block_literal_global updateBlock:&__block_literal_global_9 completion:v17];
}

void __71__MTPauseResumeTimerIntentHandler__handlePauseTimer_dryRun_completion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = [*(a1 + 32) _responseToPauseTimerIntent:*(a1 + 40) withPausedTimers:a2 error:a3 dryRun:*(a1 + 56)];
    (*(v3 + 16))(v3, v4);
  }
}

- (void)resolveTargetTimerForResumeTimer:(id)timer withCompletion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "[MTPauseResumeTimerIntentHandler resolveTargetTimerForResumeTimer:withCompletion:]";
    v20 = 2112;
    v21 = timerCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  targetTimer = [timerCopy targetTimer];
  v10 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F2965E28, 0}];
  resumeMultiple = [timerCopy resumeMultiple];
  bOOLValue = [resumeMultiple BOOLValue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__MTPauseResumeTimerIntentHandler_resolveTargetTimerForResumeTimer_withCompletion___block_invoke;
  v15[3] = &unk_1E7B0C3E8;
  v16 = targetTimer;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = targetTimer;
  [(MTTimerIntentHandler *)self _genericallyResolveTargetTimer:v14 multiple:bOOLValue allowedTimerStatesForFollowup:v10 completion:v15];
}

void __83__MTPauseResumeTimerIntentHandler_resolveTargetTimerForResumeTimer_withCompletion___block_invoke(uint64_t a1, void *a2)
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

- (void)resolveResumeMultipleForResumeTimer:(id)timer withCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  v7 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "[MTPauseResumeTimerIntentHandler resolveResumeMultipleForResumeTimer:withCompletion:]";
    v13 = 2112;
    v14 = timerCopy;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_INFO, "%s %@", &v11, 0x16u);
  }

  if (completionCopy)
  {
    v8 = MEMORY[0x1E696E760];
    resumeMultiple = [timerCopy resumeMultiple];
    v10 = [v8 successWithResolvedValue:{objc_msgSend(resumeMultiple, "BOOLValue")}];
    completionCopy[2](completionCopy, v10);
  }
}

- (void)confirmResumeTimer:(id)timer completion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[MTPauseResumeTimerIntentHandler confirmResumeTimer:completion:]";
    v11 = 2112;
    v12 = timerCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", &v9, 0x16u);
  }

  [(MTPauseResumeTimerIntentHandler *)self _handleResumeTimer:timerCopy dryRun:1 completion:completionCopy];
}

- (void)handleResumeTimer:(id)timer completion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[MTPauseResumeTimerIntentHandler handleResumeTimer:completion:]";
    v11 = 2112;
    v12 = timerCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", &v9, 0x16u);
  }

  [(MTPauseResumeTimerIntentHandler *)self _handleResumeTimer:timerCopy dryRun:0 completion:completionCopy];
}

- (void)_handleResumeTimer:(id)timer dryRun:(BOOL)run completion:(id)completion
{
  runCopy = run;
  timerCopy = timer;
  completionCopy = completion;
  targetTimer = [timerCopy targetTimer];
  targetTimer2 = [timerCopy targetTimer];
  v12 = -[MTUpdateTimerIntentHandler _timerFromIntentTargetTimer:defaultState:](self, "_timerFromIntentTargetTimer:defaultState:", targetTimer, [targetTimer2 state]);

  resumeMultiple = [timerCopy resumeMultiple];
  bOOLValue = [resumeMultiple BOOLValue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__MTPauseResumeTimerIntentHandler__handleResumeTimer_dryRun_completion___block_invoke_3;
  v17[3] = &unk_1E7B0C450;
  v18 = timerCopy;
  v19 = completionCopy;
  v17[4] = self;
  v20 = runCopy;
  v15 = timerCopy;
  v16 = completionCopy;
  [(MTUpdateTimerIntentHandler *)self _updateTimer:v12 dryRun:runCopy allowMultiple:bOOLValue excludeStoppedTimers:1 filterBlock:&__block_literal_global_12 updateBlock:&__block_literal_global_14 completion:v17];
}

void __72__MTPauseResumeTimerIntentHandler__handleResumeTimer_dryRun_completion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = [*(a1 + 32) _responseToResumeTimerIntent:*(a1 + 40) withResumedTimers:a2 error:a3 dryRun:*(a1 + 56)];
    (*(v3 + 16))(v3, v4);
  }
}

- (id)_responseToPauseTimerIntent:(id)intent withPausedTimers:(id)timers error:(id)error dryRun:(BOOL)run
{
  runCopy = run;
  v36 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  timersCopy = timers;
  errorCopy = error;
  v12 = errorCopy;
  if (timersCopy && !errorCopy)
  {
    v13 = [objc_alloc(MEMORY[0x1E696E930]) initWithCode:3 userActivity:0];
    [(__CFString *)v13 setPausedTimers:timersCopy];
    v14 = *MEMORY[0x1E696E6D8];
    if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
    {
      v15 = @"handled";
      *buf = 136315906;
      v29 = "[MTPauseResumeTimerIntentHandler _responseToPauseTimerIntent:withPausedTimers:error:dryRun:]";
      v30 = 2112;
      if (runCopy)
      {
        v15 = @"confirmed";
      }

      v31 = v15;
      v32 = 2112;
      v33 = intentCopy;
      v34 = 2112;
      v35 = v13;
      _os_log_impl(&dword_1B1F9F000, v14, OS_LOG_TYPE_INFO, "%s Successfully %@ pause timer attribute intent %@ with response %@", buf, 0x2Au);
    }

    goto LABEL_22;
  }

  domain = [errorCopy domain];
  v17 = [domain isEqualToString:@"MTTimerIntentHandlerErrorDomain"];

  if (v17)
  {
    code = [v12 code];
    switch(code)
    {
      case 7:
        v19 = objc_alloc(MEMORY[0x1E696E930]);
        v20 = 7;
LABEL_18:
        v13 = [v19 initWithCode:v20 userActivity:0];
        if (v13)
        {
          goto LABEL_20;
        }

        break;
      case 6:
        v21 = objc_alloc(MEMORY[0x1E696E930]);
        pauseMultiple = [intentCopy pauseMultiple];
        if ([pauseMultiple BOOLValue])
        {
          v23 = 9;
        }

        else
        {
          v23 = 8;
        }

        v13 = [v21 initWithCode:v23 userActivity:0];

        if (v13)
        {
          goto LABEL_20;
        }

        break;
      case 5:
        v19 = objc_alloc(MEMORY[0x1E696E930]);
        v20 = 6;
        goto LABEL_18;
    }
  }

  v13 = [objc_alloc(MEMORY[0x1E696E930]) initWithCode:4 userActivity:0];
LABEL_20:
  v24 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v26 = runCopy ? @"confirm" : @"handle";
    if (v12)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"due to error %@", v12];
    }

    else
    {
      v27 = &stru_1F29360E0;
    }

    *buf = 136315906;
    v29 = "[MTPauseResumeTimerIntentHandler _responseToPauseTimerIntent:withPausedTimers:error:dryRun:]";
    v30 = 2112;
    v31 = v26;
    v32 = 2112;
    v33 = intentCopy;
    v34 = 2112;
    v35 = v27;
    _os_log_error_impl(&dword_1B1F9F000, v24, OS_LOG_TYPE_ERROR, "%s Failed to %@ pause timer intent %@%@", buf, 0x2Au);
    if (v12)
    {
    }
  }

LABEL_22:

  return v13;
}

- (id)_responseToResumeTimerIntent:(id)intent withResumedTimers:(id)timers error:(id)error dryRun:(BOOL)run
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

    if (v17)
    {
      code = [v12 code];
      switch(code)
      {
        case 7:
          v19 = 7;
          break;
        case 6:
          resumeMultiple = [intentCopy resumeMultiple];
          if ([resumeMultiple BOOLValue])
          {
            v19 = 9;
          }

          else
          {
            v19 = 8;
          }

          break;
        case 5:
          v19 = 6;
          break;
        default:
          v19 = 4;
          break;
      }
    }

    else
    {
      v19 = 4;
    }

    v13 = [objc_alloc(MEMORY[0x1E696E9A0]) initWithCode:v19 userActivity:0];
    v20 = *MEMORY[0x1E696E6D8];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v23 = runCopy ? @"confirm" : @"handle";
      if (v12)
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"due to error %@", v12];
      }

      else
      {
        v24 = &stru_1F29360E0;
      }

      *buf = 136315906;
      v26 = "[MTPauseResumeTimerIntentHandler _responseToResumeTimerIntent:withResumedTimers:error:dryRun:]";
      v27 = 2112;
      v28 = v23;
      v29 = 2112;
      v30 = intentCopy;
      v31 = 2112;
      v32 = v24;
      _os_log_error_impl(&dword_1B1F9F000, v20, OS_LOG_TYPE_ERROR, "%s Failed to %@ resume timer intent %@%@", buf, 0x2Au);
      if (v12)
      {
      }
    }
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E696E9A0]) initWithCode:3 userActivity:0];
    [(__CFString *)v13 setResumedTimers:timersCopy];
    v14 = *MEMORY[0x1E696E6D8];
    if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
    {
      v15 = @"handled";
      *buf = 136315906;
      v26 = "[MTPauseResumeTimerIntentHandler _responseToResumeTimerIntent:withResumedTimers:error:dryRun:]";
      v27 = 2112;
      if (runCopy)
      {
        v15 = @"confirmed";
      }

      v28 = v15;
      v29 = 2112;
      v30 = intentCopy;
      v31 = 2112;
      v32 = v13;
      _os_log_impl(&dword_1B1F9F000, v14, OS_LOG_TYPE_INFO, "%s Successfully %@ resume timer attribute intent %@ with response %@", buf, 0x2Au);
    }
  }

  return v13;
}

@end