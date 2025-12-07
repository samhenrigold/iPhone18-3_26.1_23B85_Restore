@interface LSBuiltinApplicationRegistrant
- (LSBuiltinApplicationRegistrant)initWithStrategy:(id)strategy operationUUID:(id)d itemInfoDict:(id)dict personas:(id)personas;
- (void)runWithCompletion:(id)completion;
@end

@implementation LSBuiltinApplicationRegistrant

- (LSBuiltinApplicationRegistrant)initWithStrategy:(id)strategy operationUUID:(id)d itemInfoDict:(id)dict personas:(id)personas
{
  strategyCopy = strategy;
  dCopy = d;
  dictCopy = dict;
  personasCopy = personas;
  v22.receiver = self;
  v22.super_class = LSBuiltinApplicationRegistrant;
  v15 = [(LSBuiltinApplicationRegistrant *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_strategy, strategy);
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

- (void)runWithCompletion:(id)completion
{
  v43[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = self->_miDict;
  v6 = [(NSDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
  v7 = [(NSDictionary *)v5 objectForKeyedSubscript:@"Path"];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = @"No bundle identifier provided. ";
    if (v6)
    {
      v10 = &stru_1EEF65710;
    }

    v11 = v10;
    v12 = v11;
    if (v8)
    {
      v13 = &stru_1EEF65710;
    }

    else
    {
      v13 = @"No path provided.";
    }

    v14 = [(__CFString *)v11 stringByAppendingString:v13];

    v42 = *MEMORY[0x1E696A278];
    v43[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    v16 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v15, "[LSBuiltinApplicationRegistrant runWithCompletion:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 527);

    completionCopy[2](completionCopy, 0, v16);
  }

  else
  {
    v17 = [(NSDictionary *)v5 objectForKey:@"ParallelPlaceholderPath"];

    if (v17 || (-[NSDictionary objectForKey:](v5, "objectForKey:", @"IsPlaceholder"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 BOOLValue], v18, v19))
    {
      v40 = *MEMORY[0x1E696A278];
      v41 = @"Cannot register parallel placeholders or standalone placeholders with this interface.";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v20, "[LSBuiltinApplicationRegistrant runWithCompletion:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 538);

      completionCopy[2](completionCopy, 0, v14);
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v8 isDirectory:1];
      v34 = 0;
      v35 = &v34;
      v36 = 0x3032000000;
      v37 = __Block_byref_object_copy__49;
      v38 = __Block_byref_object_dispose__49;
      v39 = 0;
      v21 = [FSNode alloc];
      v22 = (v35 + 5);
      obj = v35[5];
      v23 = [(FSNode *)v21 initWithURL:v14 flags:0 error:&obj];
      objc_storeStrong(v22, obj);
      if (v23)
      {
        [(LSRegistrantStrategy *)self->_strategy beginModificationOperation];
        strategy = self->_strategy;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __52__LSBuiltinApplicationRegistrant_runWithCompletion___block_invoke;
        v25[3] = &unk_1E6A1E3F0;
        v32 = &v34;
        v26 = v6;
        v27 = v23;
        v28 = v5;
        selfCopy = self;
        v30 = v14;
        v31 = completionCopy;
        [(LSRegistrantStrategy *)strategy runSyncBlockInWriteContext:v25];
      }

      else
      {
        completionCopy[2](completionCopy, 0, v35[5]);
      }

      _Block_object_dispose(&v34, 8);
    }
  }
}

void __52__LSBuiltinApplicationRegistrant_runWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 80) + 8);
  v26 = *(v4 + 40);
  v5 = [v3 databaseContextWithError:&v26];
  objc_storeStrong((v4 + 40), v26);
  if (v5)
  {
    if ([v5 containerizedBundleExistsForIdentifier:*(a1 + 32)])
    {
      v6 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 119, 0, "[LSBuiltinApplicationRegistrant runWithCompletion:]_block_invoke_2", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 572);
      v7 = 0;
      v8 = *(*(a1 + 80) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v6;
LABEL_6:

      goto LABEL_8;
    }

    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(*(a1 + 56) + 32);
    v13 = *(*(a1 + 80) + 8);
    v25 = *(v13 + 40);
    v14 = [v5 registerBundleNodeReinitializingContext:v10 inBundleContainer:0 installDictionary:v11 personasWithAttributes:v12 error:&v25];
    objc_storeStrong((v13 + 40), v25);
    if (v14)
    {
      v15 = [[_LSDModificationPendingSaveToken alloc] initWithUUID:*(*(a1 + 56) + 16)];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __52__LSBuiltinApplicationRegistrant_runWithCompletion___block_invoke_2;
      v21[3] = &unk_1E6A1E3C8;
      v22 = *(a1 + 64);
      v24 = v14;
      v7 = v15;
      v23 = v7;
      [v3 armSaveTimerIfNecessary:v21];

      v16 = [*(*(a1 + 56) + 8) notificationJournallerForBundleIdentifier:*(a1 + 32) registeringPlaceholder:0];
      v17 = registrationCleanupQueue(v16);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __52__LSBuiltinApplicationRegistrant_runWithCompletion___block_invoke_3;
      block[3] = &unk_1E6A1ABE8;
      v19 = v16;
      v20 = *(a1 + 32);
      v5 = v16;
      dispatch_async(v17, block);

      v9 = v19;
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_8:

  [*(*(a1 + 56) + 8) endModificationOperation];
  if (!v7)
  {
    [*(*(a1 + 56) + 8) flushModificationState];
  }

  (*(*(a1 + 72) + 16))();
}

void __52__LSBuiltinApplicationRegistrant_runWithCompletion___block_invoke_2(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = _LSInstallLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v13 = 138413058;
    v14 = v8;
    v15 = 2048;
    v16 = v9;
    v17 = 1024;
    v18 = a2;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Save after unregistration for register builtin app url %@ (unit %llx) attempted: %d save error: %@", &v13, 0x26u);
  }

  v10 = v6;
  v11 = v10;
  if ((a2 & 1) == 0)
  {
    v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 89, 0, "[LSBuiltinApplicationRegistrant runWithCompletion:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 566);

    v11 = v12;
  }

  [*(a1 + 40) saveDidHappen:v11 == 0 error:v11];
}

uint64_t __52__LSBuiltinApplicationRegistrant_runWithCompletion___block_invoke_3(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v5[0] = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v2 sendNotification:7 forApps:v3 withPlugins:0];

  [*(a1 + 32) writeFinalJournal];
  return [*(a1 + 32) removeJournalAfterNotificationFence];
}

@end