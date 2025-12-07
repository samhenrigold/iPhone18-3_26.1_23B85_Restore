@interface LSBuiltinPluginRegistrant
- (LSBuiltinPluginRegistrant)initWithStrategy:(id)strategy operationUUID:(id)d itemInfoDict:(id)dict;
- (void)runWithCompletion:(id)completion;
@end

@implementation LSBuiltinPluginRegistrant

- (LSBuiltinPluginRegistrant)initWithStrategy:(id)strategy operationUUID:(id)d itemInfoDict:(id)dict
{
  strategyCopy = strategy;
  dCopy = d;
  dictCopy = dict;
  v17.receiver = self;
  v17.super_class = LSBuiltinPluginRegistrant;
  v12 = [(LSBuiltinPluginRegistrant *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_strategy, strategy);
    objc_storeStrong(&v13->_uuid, d);
    v14 = [dictCopy copy];
    miDict = v13->_miDict;
    v13->_miDict = v14;
  }

  return v13;
}

- (void)runWithCompletion:(id)completion
{
  v44 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v22 = [(NSDictionary *)self->_miDict objectForKey:@"Path"];
  if (v22)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v22 isDirectory:1];
    v21 = [(NSDictionary *)self->_miDict objectForKey:*MEMORY[0x1E695E4F0]];
    pathComponents = [v5 pathComponents];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = pathComponents;
    v9 = [v8 countByEnumeratingWithState:&v30 objects:&v38 count:16];
    v10 = v9;
    if (v9)
    {
      v11 = *v31;
      do
      {
        v12 = 0;
        do
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v30 + 1) + 8 * v12);
          v9 = __47__LSBuiltinPluginRegistrant_runWithCompletion___block_invoke(v9, v13);
          if (v9)
          {
            v9 = [v7 addObject:v13];
          }

          ++v12;
        }

        while (v10 != v12);
        v9 = [v8 countByEnumeratingWithState:&v30 objects:&v38 count:16];
        v10 = v9;
      }

      while (v9);
    }

    v14 = [v7 count] == 0;
    if (v14)
    {
      v38 = 0;
      v39 = &v38;
      v40 = 0x3032000000;
      v41 = __Block_byref_object_copy__49;
      v42 = __Block_byref_object_dispose__49;
      v43 = 0;
      *&v30 = 0;
      *(&v30 + 1) = &v30;
      *&v31 = 0x3032000000;
      *(&v31 + 1) = __Block_byref_object_copy__49;
      *&v32 = __Block_byref_object_dispose__49;
      *(&v32 + 1) = 0;
      v17 = [FSNode alloc];
      v18 = (v39 + 5);
      obj = v39[5];
      v19 = [(FSNode *)v17 initWithURL:v5 flags:0 error:&obj];
      objc_storeStrong(v18, obj);
      if (v19)
      {
        [(LSRegistrantStrategy *)self->_strategy beginModificationOperation];
        strategy = self->_strategy;
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __47__LSBuiltinPluginRegistrant_runWithCompletion___block_invoke_2;
        v23[3] = &unk_1E6A1E418;
        v27 = &v38;
        v23[4] = self;
        v24 = v19;
        v25 = v21;
        v28 = &v30;
        v26 = v5;
        [(LSRegistrantStrategy *)strategy runSyncBlockInWriteContext:v23];
        [(LSRegistrantStrategy *)self->_strategy endModificationOperation];
        if (!*(*(&v30 + 1) + 40))
        {
          [(LSRegistrantStrategy *)self->_strategy flushModificationState];
        }
      }

      completionCopy[2](completionCopy, *(*(&v30 + 1) + 40), v39[5]);
      _Block_object_dispose(&v30, 8);

      _Block_object_dispose(&v38, 8);
    }

    else
    {
      v34 = *MEMORY[0x1E696A278];
      v35 = @"plugin is in an app";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v16 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v15, "[LSBuiltinPluginRegistrant runWithCompletion:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 630);
      completionCopy[2](completionCopy, 0, v16);
    }
  }

  else
  {
    v36 = *MEMORY[0x1E696A278];
    v37 = @"Missing path";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v21 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v5, "[LSBuiltinPluginRegistrant runWithCompletion:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 622);
    (completionCopy[2])(completionCopy, 0);
  }
}

uint64_t __47__LSBuiltinPluginRegistrant_runWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 pathExtension];
  v3 = [v2 isEqual:@"app"];

  return v3;
}

void __47__LSBuiltinPluginRegistrant_runWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 64) + 8);
  obj = *(v4 + 40);
  v5 = [v3 databaseContextWithError:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (v5)
  {
    v6 = [*(*(a1 + 32) + 24) mutableCopy];
    v7 = [v5 findPluginAtNode:*(a1 + 40) error:0];
    if (v7)
    {
      v8 = [v5 pluginDataForPlugin:v7];
      if (v8)
      {
        if ((*(v8 + 168) & 8) != 0)
        {
          [v6 setObject:MEMORY[0x1E695E118] forKey:@"LSHasOverride"];
        }
      }
    }

    v24 = *(a1 + 48);
    v25[0] = v6;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v10 = *(a1 + 40);
    v11 = *(*(a1 + 64) + 8);
    v22 = *(v11 + 40);
    v12 = [v5 registerPluginNodeReinitializingContext:v10 installDictionary:v9 existingPlugin:v7 error:&v22];
    objc_storeStrong((v11 + 40), v22);
    if (v12)
    {
      v13 = [[_LSDModificationPendingSaveToken alloc] initWithUUID:*(*(a1 + 32) + 16)];
      v14 = *(*(a1 + 72) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __47__LSBuiltinPluginRegistrant_runWithCompletion___block_invoke_3;
      v18[3] = &unk_1E6A1E350;
      v16 = *(a1 + 56);
      v21 = v12;
      v17 = *(a1 + 72);
      v19 = v16;
      v20 = v17;
      [v3 armSaveTimerIfNecessary:v18];
    }
  }
}

void __47__LSBuiltinPluginRegistrant_runWithCompletion___block_invoke_3(uint64_t a1, int a2, uint64_t a3, void *a4)
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
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Save after registration for register builtin plugin url %@ (unit %llx) attempted: %d save error: %@", &v13, 0x26u);
  }

  v10 = v6;
  v11 = v10;
  if ((a2 & 1) == 0)
  {
    v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 89, 0, "[LSBuiltinPluginRegistrant runWithCompletion:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 655);

    v11 = v12;
  }

  [*(*(*(a1 + 40) + 8) + 40) saveDidHappen:v11 == 0 error:v11];
}

@end