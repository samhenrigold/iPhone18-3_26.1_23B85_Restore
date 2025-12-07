@interface LSMIResultRegistrant
- (LSMIResultRegistrant)initWithContext:(id)context operationUUID:(id)d itemInfoDict:(id)dict personas:(id)personas;
- (void)_replyWithError:(id)error onQueue:(id)queue block:(id)block;
- (void)runPostProcessingForBundleID:(id)d success:(BOOL)success isSystemApp:(BOOL)app isPlaceholder:(BOOL)placeholder registeredBothFullAppAndPlaceholder:(BOOL)andPlaceholder notificationJournaller:(id)journaller;
- (void)runWithCompletion:(id)completion;
@end

@implementation LSMIResultRegistrant

- (LSMIResultRegistrant)initWithContext:(id)context operationUUID:(id)d itemInfoDict:(id)dict personas:(id)personas
{
  contextCopy = context;
  dCopy = d;
  dictCopy = dict;
  personasCopy = personas;
  v22.receiver = self;
  v22.super_class = LSMIResultRegistrant;
  v15 = [(LSMIResultRegistrant *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_strategy, context);
    objc_storeStrong(&v16->_uuid, d);
    v17 = [dictCopy copy];
    miDict = v16->_miDict;
    v16->_miDict = v17;

    v19 = [personasCopy copy];
    personas = v16->_personas;
    v16->_personas = v19;
  }

  return v16;
}

- (void)_replyWithError:(id)error onQueue:(id)queue block:(id)block
{
  errorCopy = error;
  blockCopy = block;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__LSMIResultRegistrant__replyWithError_onQueue_block___block_invoke;
  v11[3] = &unk_1E6A1E260;
  v12 = errorCopy;
  v13 = blockCopy;
  v9 = errorCopy;
  v10 = blockCopy;
  dispatch_async(queue, v11);
}

- (void)runPostProcessingForBundleID:(id)d success:(BOOL)success isSystemApp:(BOOL)app isPlaceholder:(BOOL)placeholder registeredBothFullAppAndPlaceholder:(BOOL)andPlaceholder notificationJournaller:(id)journaller
{
  andPlaceholderCopy = andPlaceholder;
  placeholderCopy = placeholder;
  appCopy = app;
  successCopy = success;
  v21[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  journallerCopy = journaller;
  if (successCopy)
  {
    if (appCopy)
    {
      v15 = +[LSApplicationRestrictionsManager sharedInstance];
      v16 = [(LSApplicationRestrictionsManager *)v15 setApplication:dCopy removed:0];

      if (v16)
      {
        _LSNoteSystemAppInstallOrUninstall(dCopy, 1u);
      }
    }

    if (placeholderCopy)
    {
      v17 = 1;
    }

    else
    {
      v17 = 7;
    }

    if (andPlaceholderCopy)
    {
      v18 = 15;
    }

    else
    {
      v18 = v17;
    }

    if (!placeholderCopy)
    {
      v19 = +[_LSInstallProgressService sharedInstance];
      [v19 installationEndedForApplication:dCopy withState:5];
    }
  }

  else
  {
    v18 = 11;
  }

  v21[0] = dCopy;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  [journallerCopy sendNotification:v18 forApps:v20 withPlugins:0];

  [journallerCopy writeFinalJournal];
  [journallerCopy removeJournalAfterNotificationFence];
}

- (void)runWithCompletion:(id)completion
{
  v50[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v4 = self->_miDict;
  v5 = [(NSDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
  v6 = [(NSDictionary *)v4 objectForKeyedSubscript:@"Path"];
  v31 = v6;
  v33 = [(NSDictionary *)v4 objectForKeyedSubscript:@"ParallelPlaceholderPath"];
  v30 = [(NSDictionary *)v4 objectForKey:@"ApplicationType"];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = @"No bundle identifier provided. ";
    if (v5)
    {
      v8 = &stru_1EEF65710;
    }

    v9 = v8;
    v10 = v9;
    if (v6)
    {
      v11 = &stru_1EEF65710;
    }

    else
    {
      v11 = @"No path provided.";
    }

    v12 = [(__CFString *)v9 stringByAppendingString:v11];

    v49 = *MEMORY[0x1E696A278];
    v50[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    v29 = v12;
    v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v13, "[LSMIResultRegistrant runWithCompletion:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 183);

    (*(completionCopy + 2))(completionCopy, 0, 0, v14);
  }

  else
  {
    v15 = [(NSDictionary *)v4 objectForKey:@"ParallelPlaceholderPath"];
    v16 = v15 != 0;

    if (v15)
    {
      bOOLValue = 1;
    }

    else
    {
      v18 = [(NSDictionary *)v4 objectForKey:@"IsPlaceholder"];
      bOOLValue = [v18 BOOLValue];
    }

    v29 = [(LSRegistrantStrategy *)self->_strategy notificationJournallerForBundleIdentifier:v5 registeringPlaceholder:bOOLValue];
    v14 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v6 isDirectory:1];
    if (v33)
    {
      v28 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v33];
    }

    else
    {
      v28 = 0;
    }

    v48 = 0;
    v27 = [[FSNode alloc] initWithURL:v14 flags:0 error:&v48];
    v19 = v16;
    v20 = v48;
    if (v28)
    {
      v47 = v20;
      v21 = [[FSNode alloc] initWithURL:v28 flags:0 error:&v47];
      v22 = v47;

      v20 = v22;
    }

    else
    {
      v21 = 0;
    }

    if (v27 && (!v33 || v21))
    {
      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = v27;
      }

      v24 = v23;
      [(LSRegistrantStrategy *)self->_strategy beginModificationOperation];
      strategy = self->_strategy;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __42__LSMIResultRegistrant_runWithCompletion___block_invoke;
      v34[3] = &unk_1E6A1E2D8;
      v35 = v5;
      v36 = v4;
      v45 = bOOLValue;
      v46 = v19;
      v37 = v27;
      selfCopy = self;
      v39 = v33;
      v25 = v24;
      v40 = v25;
      v41 = v20;
      v42 = v30;
      v43 = v29;
      v44 = completionCopy;
      [(LSRegistrantStrategy *)strategy runSyncBlockInWriteContext:v34];
    }

    else
    {
      -[LSMIResultRegistrant runPostProcessingForBundleID:success:isSystemApp:isPlaceholder:registeredBothFullAppAndPlaceholder:notificationJournaller:](self, "runPostProcessingForBundleID:success:isSystemApp:isPlaceholder:registeredBothFullAppAndPlaceholder:notificationJournaller:", v5, 0, [v30 isEqualToString:@"System"], bOOLValue, 0, v29);
      (*(completionCopy + 2))(completionCopy, 0, 0, v20);
    }
  }
}

void __42__LSMIResultRegistrant_runWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = a2;
  _LSLogStepStart(4, 0, *(a1 + 32), &cfstr_RegisteringBun.isa);
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v4 = [*(a1 + 40) mutableCopy];
  v54 = 0;
  v5 = [v3 databaseContextWithError:&v54];
  v6 = v54;
  if (!v5)
  {
    v8 = 0;
    LODWORD(v9) = 0;
    v10 = 0;
    goto LABEL_33;
  }

  if (*(a1 + 112) != 1)
  {
    goto LABEL_21;
  }

  if (*(a1 + 113) == 1)
  {
    v7 = [v5 fullBundleExistsForIdentifier:*(a1 + 32) matchingNode:*(a1 + 48)];
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v15 = _LSInstallLog(v7);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 32);
        *buf = 138412290;
        v60 = v16;
        _os_log_impl(&dword_18162D000, v15, OS_LOG_TYPE_DEFAULT, "%@ registration is for parallel placeholder but full app is not registered; registering it", buf, 0xCu);
      }

      v18 = *(a1 + 40);
      v17 = *(a1 + 48);
      v19 = *(*(a1 + 56) + 32);
      v53 = v6;
      v20 = [v5 registerBundleNodeReinitializingContext:v17 inBundleContainer:1 installDictionary:v18 personasWithAttributes:v19 error:&v53];
      v21 = v53;

      if (v20)
      {
        v23 = _LSInstallLog(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(a1 + 32);
          *buf = 138412546;
          v60 = v24;
          v61 = 2048;
          v62 = v20;
          _os_log_impl(&dword_18162D000, v23, OS_LOG_TYPE_DEFAULT, "Successfully registered full app for %@: %llx", buf, 0x16u);
        }

        v8 = 1;
      }

      else
      {
        v8 = 0;
      }

      v6 = v21;
    }

    [v4 setObject:*(a1 + 64) forKeyedSubscript:@"Path"];
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsPlaceholder"];
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsParallelPlaceholder"];
    goto LABEL_25;
  }

  [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsPlaceholder"];
  v11 = [v5 fullBundleExistsForIdentifier:*(a1 + 32) matchingNode:0];
  if (v11)
  {
    goto LABEL_18;
  }

  v12 = [*(a1 + 40) objectForKeyedSubscript:@"LSInstallType"];
  v13 = [v12 integerValue];
  v14 = v13;
  if (v13 >= 7)
  {
    if (v13 - 7 >= 4)
    {
      v39 = _LSDefaultLog(v13);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        __42__LSMIResultRegistrant_runWithCompletion___block_invoke_cold_1(v14, v39);
      }

      goto LABEL_9;
    }

LABEL_18:
    v25 = _LSInstallLog(v11);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v25, OS_LOG_TYPE_DEFAULT, "while registering placeholder, found existing full bundle but not registering a parallel placeholder; noting placeholder registration is a downgrade", buf, 2u);
    }

    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"LSAppDowngrade"];
    goto LABEL_21;
  }

LABEL_9:

LABEL_21:
  v8 = 0;
LABEL_25:
  if (v6)
  {

    v10 = 0;
LABEL_34:
    v33 = 0;
    _LSLogStepFinished(4, 0, *(a1 + 32), &cfstr_FailedToRegist.isa, *(a1 + 32));
    v34 = 0;
    goto LABEL_36;
  }

  v26 = *(a1 + 72);
  v27 = *(*(a1 + 56) + 32);
  v52 = 0;
  v9 = [v5 registerBundleNodeReinitializingContext:v26 inBundleContainer:1 installDictionary:v4 personasWithAttributes:v27 error:&v52];
  v28 = v52;
  v29 = v28;
  if (v9)
  {
    v51 = v28;
    v30 = [v5 findContainerizedRecordForBundleUnit:v9 error:&v51];
    v31 = v51;

    if (v30)
    {
      v50 = v31;
      v10 = [[LSRecordPromise alloc] initWithRecord:v30 error:&v50];
      v32 = v50;

      v31 = v32;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v31 = *(a1 + 80);
    v10 = 0;
    v30 = v29;
  }

  v6 = v31;
LABEL_33:

  if (v6)
  {
    goto LABEL_34;
  }

  _LSLogStepFinished(4, 1, *(a1 + 32), &cfstr_FinishedRegist.isa, *(a1 + 32), v9);
  v35 = [[_LSDModificationPendingSaveToken alloc] initWithUUID:*(*(a1 + 56) + 16)];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __42__LSMIResultRegistrant_runWithCompletion___block_invoke_107;
  v47[3] = &unk_1E6A1E288;
  v49 = v9;
  v33 = v35;
  v48 = v33;
  [v3 armSaveTimerIfNecessary:v47];

  v6 = 0;
  v34 = 1;
LABEL_36:
  v36 = [*(*(a1 + 56) + 8) endModificationOperation];
  if ((v34 & 1) == 0)
  {
    v36 = [*(*(a1 + 56) + 8) flushModificationState];
  }

  v37 = registrationCleanupQueue(v36);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__LSMIResultRegistrant_runWithCompletion___block_invoke_2;
  block[3] = &unk_1E6A1E2B0;
  block[4] = *(a1 + 56);
  v41 = *(a1 + 32);
  v38 = v6;
  v42 = v38;
  v43 = *(a1 + 88);
  v45 = *(a1 + 112);
  v46 = v8;
  v44 = *(a1 + 96);
  dispatch_async(v37, block);

  (*(*(a1 + 104) + 16))();
  if (v55 && v57 == 1)
  {
    _LSContextDestroy(v55);
  }
}

void __42__LSMIResultRegistrant_runWithCompletion___block_invoke_107(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = _LSInstallLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v12 = 134218498;
    v13 = v8;
    v14 = 1024;
    v15 = a2;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Save after registration for unit %llx attempted: %d save error: %@", &v12, 0x1Cu);
  }

  v9 = v6;
  v10 = v9;
  if ((a2 & 1) == 0)
  {
    v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 89, 0, "[LSMIResultRegistrant runWithCompletion:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 271);

    v10 = v11;
  }

  [*(a1 + 32) saveDidHappen:v10 == 0 error:v10];
}

uint64_t __42__LSMIResultRegistrant_runWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48) == 0;
  v5 = [*(a1 + 56) isEqualToString:@"System"];
  v6 = *(a1 + 72);
  v7 = *(a1 + 73);
  v8 = *(a1 + 64);

  return [v2 runPostProcessingForBundleID:v3 success:v4 isSystemApp:v5 isPlaceholder:v6 registeredBothFullAppAndPlaceholder:v7 notificationJournaller:v8];
}

void __42__LSMIResultRegistrant_runWithCompletion___block_invoke_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&dword_18162D000, a2, OS_LOG_TYPE_FAULT, "install type %d not handled", v2, 8u);
}

@end