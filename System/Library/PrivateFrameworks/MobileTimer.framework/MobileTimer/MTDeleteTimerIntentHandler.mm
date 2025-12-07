@interface MTDeleteTimerIntentHandler
- (id)_responseToDeleteTimerIntent:(id)intent withDeletedTimers:(id)timers error:(id)error dryRun:(BOOL)run;
- (id)_timerFromIntentTargetTimer:(id)timer defaultState:(int64_t)state;
- (void)_deleteTimer:(id)timer multiple:(BOOL)multiple dryRun:(BOOL)run completion:(id)completion;
- (void)confirmDeleteTimer:(id)timer completion:(id)completion;
- (void)handleDeleteTimer:(id)timer completion:(id)completion;
- (void)resolveDeleteMultipleForDeleteTimer:(id)timer withCompletion:(id)completion;
- (void)resolveTargetTimerForDeleteTimer:(id)timer withCompletion:(id)completion;
@end

@implementation MTDeleteTimerIntentHandler

- (void)resolveTargetTimerForDeleteTimer:(id)timer withCompletion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v21 = "[MTDeleteTimerIntentHandler resolveTargetTimerForDeleteTimer:withCompletion:]";
    v22 = 2112;
    v23 = timerCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  if (completionCopy)
  {
    targetTimer = [timerCopy targetTimer];
    targetTimer2 = [timerCopy targetTimer];
    v11 = -[MTDeleteTimerIntentHandler _timerFromIntentTargetTimer:defaultState:](self, "_timerFromIntentTargetTimer:defaultState:", targetTimer, [targetTimer2 state]);

    if ([v11 type] == 2)
    {
      [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F2965E70, &unk_1F2965E88, 0, v16}];
    }

    else
    {
      [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F2965E70, &unk_1F2965E88, &unk_1F2965EA0, 0}];
    }
    v12 = ;
    deleteMultiple = [timerCopy deleteMultiple];
    bOOLValue = [deleteMultiple BOOLValue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __78__MTDeleteTimerIntentHandler_resolveTargetTimerForDeleteTimer_withCompletion___block_invoke;
    v17[3] = &unk_1E7B0C3E8;
    v18 = v11;
    v19 = completionCopy;
    v15 = v11;
    [(MTTimerIntentHandler *)self _genericallyResolveTargetTimer:v15 multiple:bOOLValue allowedTimerStatesForFollowup:v12 completion:v17];
  }
}

void __78__MTDeleteTimerIntentHandler_resolveTargetTimerForDeleteTimer_withCompletion___block_invoke(uint64_t a1, void *a2)
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

- (void)resolveDeleteMultipleForDeleteTimer:(id)timer withCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  v7 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "[MTDeleteTimerIntentHandler resolveDeleteMultipleForDeleteTimer:withCompletion:]";
    v13 = 2112;
    v14 = timerCopy;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_INFO, "%s %@", &v11, 0x16u);
  }

  if (completionCopy)
  {
    v8 = MEMORY[0x1E696E760];
    deleteMultiple = [timerCopy deleteMultiple];
    v10 = [v8 successWithResolvedValue:{objc_msgSend(deleteMultiple, "BOOLValue")}];
    completionCopy[2](completionCopy, v10);
  }
}

- (void)confirmDeleteTimer:(id)timer completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v18 = "[MTDeleteTimerIntentHandler confirmDeleteTimer:completion:]";
    v19 = 2112;
    v20 = timerCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  if (completionCopy)
  {
    targetTimer = [timerCopy targetTimer];
    targetTimer2 = [timerCopy targetTimer];
    v11 = -[MTDeleteTimerIntentHandler _timerFromIntentTargetTimer:defaultState:](self, "_timerFromIntentTargetTimer:defaultState:", targetTimer, [targetTimer2 state]);

    deleteMultiple = [timerCopy deleteMultiple];
    bOOLValue = [deleteMultiple BOOLValue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60__MTDeleteTimerIntentHandler_confirmDeleteTimer_completion___block_invoke;
    v14[3] = &unk_1E7B0E258;
    v16 = completionCopy;
    v14[4] = self;
    v15 = timerCopy;
    [(MTDeleteTimerIntentHandler *)self _deleteTimer:v11 multiple:bOOLValue dryRun:1 completion:v14];
  }
}

void __60__MTDeleteTimerIntentHandler_confirmDeleteTimer_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = [*(a1 + 32) _responseToDeleteTimerIntent:*(a1 + 40) withDeletedTimers:a2 error:a3 dryRun:1];
  (*(v3 + 16))(v3, v4);
}

- (void)handleDeleteTimer:(id)timer completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  v8 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[MTDeleteTimerIntentHandler handleDeleteTimer:completion:]";
    v21 = 2112;
    v22 = timerCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  targetTimer = [timerCopy targetTimer];
  targetTimer2 = [timerCopy targetTimer];
  v11 = -[MTDeleteTimerIntentHandler _timerFromIntentTargetTimer:defaultState:](self, "_timerFromIntentTargetTimer:defaultState:", targetTimer, [targetTimer2 state]);

  deleteMultiple = [timerCopy deleteMultiple];
  bOOLValue = [deleteMultiple BOOLValue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__MTDeleteTimerIntentHandler_handleDeleteTimer_completion___block_invoke;
  v16[3] = &unk_1E7B0E258;
  v17 = timerCopy;
  v18 = completionCopy;
  v16[4] = self;
  v14 = timerCopy;
  v15 = completionCopy;
  [(MTDeleteTimerIntentHandler *)self _deleteTimer:v11 multiple:bOOLValue dryRun:0 completion:v16];
}

void __59__MTDeleteTimerIntentHandler_handleDeleteTimer_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = [*(a1 + 32) _responseToDeleteTimerIntent:*(a1 + 40) withDeletedTimers:a2 error:a3 dryRun:0];
    (*(v3 + 16))(v3, v4);
  }
}

- (id)_responseToDeleteTimerIntent:(id)intent withDeletedTimers:(id)timers error:(id)error dryRun:(BOOL)run
{
  runCopy = run;
  v34 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  timersCopy = timers;
  errorCopy = error;
  v12 = errorCopy;
  if (!timersCopy || errorCopy)
  {
    domain = [errorCopy domain];
    v18 = [domain isEqualToString:@"MTTimerIntentHandlerErrorDomain"];

    if (!v18 || (v19 = [v12 code], (v19 - 5) > 2) || (v14 = objc_msgSend(objc_alloc(MEMORY[0x1E696E828]), "initWithCode:userActivity:", qword_1B20B8A00[v19 - 5], 0)) == 0)
    {
      v14 = [objc_alloc(MEMORY[0x1E696E828]) initWithCode:4 userActivity:0];
    }

    v20 = *MEMORY[0x1E696E6D8];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v22 = runCopy ? @"confirm" : @"handle";
      if (v12)
      {
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"due to error %@", v12];
      }

      else
      {
        v23 = &stru_1F29360E0;
      }

      *buf = 136316162;
      v25 = "[MTDeleteTimerIntentHandler _responseToDeleteTimerIntent:withDeletedTimers:error:dryRun:]";
      v26 = 2112;
      v27 = v22;
      v28 = 2112;
      v29 = intentCopy;
      v30 = 2112;
      v31 = v23;
      v32 = 2112;
      v33 = v14;
      _os_log_error_impl(&dword_1B1F9F000, v20, OS_LOG_TYPE_ERROR, "%s Failed to %@ delete timer intent %@ %@, response: %@", buf, 0x34u);
      if (v12)
      {
      }
    }
  }

  else
  {
    if ([timersCopy count])
    {
      v13 = 3;
    }

    else
    {
      v13 = 6;
    }

    v14 = [objc_alloc(MEMORY[0x1E696E828]) initWithCode:v13 userActivity:0];
    [(__CFString *)v14 setDeletedTimers:timersCopy];
    v15 = *MEMORY[0x1E696E6D8];
    if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
    {
      v16 = @"handled";
      *buf = 136315906;
      v25 = "[MTDeleteTimerIntentHandler _responseToDeleteTimerIntent:withDeletedTimers:error:dryRun:]";
      v26 = 2112;
      if (runCopy)
      {
        v16 = @"confirmed";
      }

      v27 = v16;
      v28 = 2112;
      v29 = intentCopy;
      v30 = 2112;
      v31 = v14;
      _os_log_impl(&dword_1B1F9F000, v15, OS_LOG_TYPE_INFO, "%s Successfully %@ delete timer attribute intent %@ with response %@", buf, 0x2Au);
    }
  }

  return v14;
}

- (void)_deleteTimer:(id)timer multiple:(BOOL)multiple dryRun:(BOOL)run completion:(id)completion
{
  runCopy = run;
  v43 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  _timerManager = [(MTTimerIntentHandler *)self _timerManager];
  v13 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
  {
    v14 = &stru_1F29360E0;
    *buf = 136315906;
    v36 = "[MTDeleteTimerIntentHandler _deleteTimer:multiple:dryRun:completion:]";
    if (runCopy)
    {
      v14 = @" (dry-run)";
    }

    v37 = 2112;
    v38 = v14;
    v39 = 2112;
    v40 = timerCopy;
    v41 = 2112;
    v42 = _timerManager;
    _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_INFO, "%s Deleting%@ timer %@ from timer manager %@", buf, 0x2Au);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__MTDeleteTimerIntentHandler__deleteTimer_multiple_dryRun_completion___block_invoke;
  aBlock[3] = &unk_1E7B0E280;
  v34 = runCopy;
  v15 = timerCopy;
  v31 = v15;
  v16 = _timerManager;
  v32 = v16;
  v17 = completionCopy;
  v33 = v17;
  v18 = _Block_copy(aBlock);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __70__MTDeleteTimerIntentHandler__deleteTimer_multiple_dryRun_completion___block_invoke_34;
  v23[3] = &unk_1E7B0E318;
  v23[4] = self;
  v24 = v15;
  multipleCopy = multiple;
  v29 = runCopy;
  v26 = v18;
  v27 = v17;
  v25 = v16;
  v19 = v16;
  v20 = v17;
  v21 = v15;
  v22 = v18;
  [(MTTimerIntentHandler *)self _matchTimersFromIntentsTimer:v21 excludeStoppedTimers:0 completion:v23];
}

void __70__MTDeleteTimerIntentHandler__deleteTimer_multiple_dryRun_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x1E696E6D8];
  if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_ERROR))
  {
    __70__MTDeleteTimerIntentHandler__deleteTimer_multiple_dryRun_completion___block_invoke_cold_1(a1, v3, v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __70__MTDeleteTimerIntentHandler__deleteTimer_multiple_dryRun_completion___block_invoke_34(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (a4)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = [*(a1 + 32) _onlyUnnamedTimerInTimers:v6 forTargetTimer:*(a1 + 40) allowMultiple:*(a1 + 72)];
    if (v7)
    {
      v8 = *MEMORY[0x1E696E6D8];
      if (os_log_type_enabled(*MEMORY[0x1E696E6D8], OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v45 = "[MTDeleteTimerIntentHandler _deleteTimer:multiple:dryRun:completion:]_block_invoke";
        v46 = 2112;
        v47 = v7;
        _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%s Filtering timer for delete to single unnamed timer: %@", buf, 0x16u);
      }

      v43 = v7;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];

      v6 = v9;
    }

    if ([v6 count] == 1 || *(a1 + 72) == 1 && objc_msgSend(v6, "count") >= 2)
    {
      if (*(a1 + 73) == 1)
      {
        v10 = *(a1 + 64);
        if (v10)
        {
          v11 = [v6 na_map:&__block_literal_global_22];
          (*(v10 + 16))(v10, v11, 0);
        }
      }

      else
      {
        v28 = v7;
        v18 = [MEMORY[0x1E69B3780] futureWithNoResult];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v29 = v6;
        v19 = v6;
        v20 = [v19 countByEnumeratingWithState:&v36 objects:v42 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v37;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v37 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v36 + 1) + 8 * i);
              v33[0] = MEMORY[0x1E69E9820];
              v33[1] = 3221225472;
              v33[2] = __70__MTDeleteTimerIntentHandler__deleteTimer_multiple_dryRun_completion___block_invoke_2;
              v33[3] = &unk_1E7B0E2C8;
              v34 = *(a1 + 48);
              v35 = v24;
              v25 = [v18 flatMap:v33];
            }

            v21 = [v19 countByEnumeratingWithState:&v36 objects:v42 count:16];
          }

          while (v21);
        }

        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __70__MTDeleteTimerIntentHandler__deleteTimer_multiple_dryRun_completion___block_invoke_3;
        v30[3] = &unk_1E7B0E2F0;
        v32 = *(a1 + 64);
        v31 = v19;
        v26 = [v18 addSuccessBlock:v30];
        v27 = [v18 addFailureBlock:*(a1 + 56)];

        v7 = v28;
        v6 = v29;
      }
    }

    else if ([v6 count])
    {
      v12 = MEMORY[0x1E696ABC0];
      v40 = *MEMORY[0x1E696A578];
      if (*(a1 + 73))
      {
        v13 = @" (dry-run)";
      }

      else
      {
        v13 = &stru_1F29360E0;
      }

      v14 = *(a1 + 56);
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to delete%@ timer %@ from timer manager %@ due to ambiguity between timers %@", v13, *(a1 + 40), *(a1 + 48), v6];
      v41 = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v17 = [v12 errorWithDomain:@"MTDeleteTimerIntentHandlerErrorDomain" code:1 userInfo:v16];
      (*(v14 + 16))(v14, v17);
    }

    else
    {
      (*(*(a1 + 64) + 16))();
    }
  }
}

void __70__MTDeleteTimerIntentHandler__deleteTimer_multiple_dryRun_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) na_map:&__block_literal_global_41];
    (*(v1 + 16))(v1, v2, 0);
  }
}

- (id)_timerFromIntentTargetTimer:(id)timer defaultState:(int64_t)state
{
  timerCopy = timer;
  label = [timerCopy label];
  spokenPhrase = [label spokenPhrase];
  if ([spokenPhrase length])
  {
    v8 = 0;
  }

  else
  {
    [timerCopy duration];
    v8 = v9 == -1.0;
  }

  type = [timerCopy type];
  if (v8)
  {
    v11 = 2 * ([timerCopy type] == 2);
  }

  else
  {
    v11 = type;
  }

  v12 = objc_alloc(MEMORY[0x1E696EAC0]);
  label2 = [timerCopy label];
  [timerCopy duration];
  v15 = v14;
  [timerCopy remainingTime];
  v17 = v16;
  identifier = [timerCopy identifier];
  v19 = [v12 initWithLabel:label2 duration:identifier remainingTime:state identifier:v11 state:v15 type:v17];

  return v19;
}

void __70__MTDeleteTimerIntentHandler__deleteTimer_multiple_dryRun_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = &stru_1F29360E0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (*(a1 + 56))
  {
    v3 = @" (dry-run)";
  }

  v6 = 136316162;
  v7 = "[MTDeleteTimerIntentHandler _deleteTimer:multiple:dryRun:completion:]_block_invoke";
  v8 = 2112;
  v9 = v3;
  v10 = 2112;
  v11 = v4;
  v12 = 2112;
  v13 = v5;
  v14 = 2112;
  v15 = a2;
  _os_log_error_impl(&dword_1B1F9F000, log, OS_LOG_TYPE_ERROR, "%s Failed to delete%@ timer %@ from timer manager %@ due to error %@", &v6, 0x34u);
}

@end