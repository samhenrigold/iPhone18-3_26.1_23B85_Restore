@interface FPMoveOperation
- (BOOL)_hasAccessToURL:(id)l readonly:(BOOL)readonly;
- (BOOL)_preflightCheckNotMovingIntoSelfWithError:(id *)error;
- (BOOL)_preflightCheckProviderCanMoveWithErrors:(id *)errors;
- (FPMoveOperation)initWithRemoteOperation:(id)operation info:(id)info;
- (FPMoveOperation)initWithSourceItems:(id)items orSourceURLs:(id)ls destinationFolder:(id)folder orDestinationURL:(id)l;
- (FPMoveOperation)initWithSourceURLsAndNames:(id)names destinationFolder:(id)folder;
- (id)fp_prettyDescription;
- (void)_completedWithResult:(id)result error:(id)error;
- (void)_completedWithResultsByRoot:(id)root errorsByRoot:(id)byRoot error:(id)error;
- (void)_preflightForceBounceIfCopyingOntoSelf;
- (void)_presendNotifications;
- (void)_recomputeMoveInfoIfNecessary;
- (void)_recoverFromCollisionError:(id)error withPolicy:(unint64_t)policy;
- (void)_resetOperationBeforeErrorRecovery;
- (void)_resolveURLsWithCompletionHandler:(id)handler;
- (void)_runWithRemoteOperation:(id)operation;
- (void)_scheduleAgainAfterErrorRecovery;
- (void)_t_unblockReader;
- (void)actionMain;
- (void)cancel;
- (void)completedWithResult:(id)result error:(id)error;
- (void)gatherErrorsForUserInteractionForDomain:(id)domain action:(id)action sourceItems:(id)items destinationItem:(id)item sourceItemKeysAllowList:(id)list destinationItemKeysAllowList:(id)allowList completionHandler:(id)handler;
- (void)main;
- (void)presendNotifications;
- (void)remoteOperationCompletedRoot:(id)root resultingItem:(id)item error:(id)error completion:(id)completion;
- (void)remoteOperationCreatedRoot:(id)root resultingItem:(id)item completion:(id)completion;
- (void)remoteOperationFinishedSendingPastUpdates;
- (void)remoteOperationProgressesAreReady;
- (void)runUserInteractionsPreflight:(id)preflight;
- (void)subclassPreflightWithCompletion:(id)completion;
@end

@implementation FPMoveOperation

uint64_t __39__FPMoveOperation_checkNonEmptyPackage__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 startAccessingSecurityScopedResource];
  if ([v2 fp_isPackage])
  {
    v9 = 0;
    v4 = fpfs_num_entries([v2 fileSystemRepresentation], 0, &v9);
    if (!(v4 | v9))
    {
      v5 = fp_current_or_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v2 path];
        v7 = [v6 fp_prettyPath];
        *buf = 138412290;
        v11 = v7;
        _os_log_impl(&dword_1AAAE1000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] Attempt to move/import an empty package %@", buf, 0xCu);
      }
    }
  }

  if (v3)
  {
    [v2 stopAccessingSecurityScopedResource];
  }

  return 0;
}

- (FPMoveOperation)initWithSourceItems:(id)items orSourceURLs:(id)ls destinationFolder:(id)folder orDestinationURL:(id)l
{
  itemsCopy = items;
  lsCopy = ls;
  folderCopy = folder;
  lCopy = l;
  if (folderCopy)
  {
    providerDomainID = [folderCopy providerDomainID];
  }

  else if ([itemsCopy count])
  {
    [itemsCopy firstObject];
    v16 = itemsCopy;
    v17 = lCopy;
    v19 = v18 = lsCopy;
    providerDomainID = [v19 providerDomainID];

    lsCopy = v18;
    lCopy = v17;
    itemsCopy = v16;
    folderCopy = 0;
  }

  else
  {
    providerDomainID = 0;
  }

  v37.receiver = self;
  v37.super_class = FPMoveOperation;
  v20 = [(FPActionOperation *)&v37 initWithProvider:providerDomainID action:0];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_providerIdentifier, providerDomainID);
    objc_storeStrong(&v21->__sourceURLs, ls);
    objc_storeStrong(&v21->__sourceItems, items);
    objc_storeStrong(&v21->__destinationURL, l);
    objc_storeStrong(&v21->__destinationFolder, folder);
    v21->__lastUsedDatePolicy = [(FPMoveOperation *)v21 defaultLastUsedDatePolicy];
    [(FPActionOperation *)v21 setSourceItemsToPreflight:itemsCopy];
    [(FPActionOperation *)v21 setDestinationItemToPreflight:folderCopy];
    v21->_isScheduledFromThisClient = 1;
    v22 = +[FPProgressManager defaultManager];
    progressManager = v21->_progressManager;
    v21->_progressManager = v22;

    objc_initWeak(&location, v21);
    progress = [(FPActionOperation *)v21 progress];
    [progress fp_setFileOperationKind:*MEMORY[0x1E696A840]];

    v25 = objc_opt_new();
    progressByRoot = v21->_progressByRoot;
    v21->_progressByRoot = v25;

    v27 = objc_opt_new();
    createdOrFailedRoots = v21->_createdOrFailedRoots;
    v21->_createdOrFailedRoots = v27;

    v29 = objc_opt_new();
    createdItemsByRoot = v21->_createdItemsByRoot;
    v21->_createdItemsByRoot = v29;

    v31 = objc_opt_new();
    placeholderIDsByRoot = v21->_placeholderIDsByRoot;
    v21->_placeholderIDsByRoot = v31;

    v33 = objc_opt_new();
    URLByResolvedFPItem = v21->_URLByResolvedFPItem;
    v21->_URLByResolvedFPItem = v33;

    [(FPActionOperation *)v21 setSetupRemoteOperationService:1];
    [(FPMoveOperation *)v21 checkNonEmptyPackage];
    objc_destroyWeak(&location);
  }

  return v21;
}

- (FPMoveOperation)initWithRemoteOperation:(id)operation info:(id)info
{
  operationCopy = operation;
  infoCopy = info;
  v9 = [(FPMoveOperation *)self initWithSourceItems:0 orSourceURLs:0 destinationFolder:0 orDestinationURL:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_remoteMoveOperation, operation);
    objc_storeStrong(&v10->_info, info);
    v10->_isScheduledFromThisClient = 0;
    [(FPActionOperation *)v10 setHavePreflight:0];
    [(FPActionOperation *)v10 setSetupRemoteOperationService:0];
  }

  return v10;
}

- (FPMoveOperation)initWithSourceURLsAndNames:(id)names destinationFolder:(id)folder
{
  folderCopy = folder;
  namesCopy = names;
  allKeys = [namesCopy allKeys];
  v9 = [(FPMoveOperation *)self initWithSourceItems:0 orSourceURLs:allKeys destinationFolder:folderCopy orDestinationURL:0];

  v10 = [namesCopy copy];
  targetFilenamesByURL = v9->__targetFilenamesByURL;
  v9->__targetFilenamesByURL = v10;

  return v9;
}

FPItem *__41__FPMoveOperation__mapURLsToFakeFPItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v13 = 0;
  v3 = *MEMORY[0x1E695DAA0];
  v12 = 0;
  v4 = [v2 getResourceValue:&v13 forKey:v3 error:&v12];
  v5 = v13;
  v6 = v12;
  if (v4)
  {
    v7 = [FPItem alloc];
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];
    v10 = [(FPItem *)v7 initWithProviderDomainID:@"fakeIdentifier" itemIdentifier:@"fakeIdentifier" parentItemIdentifier:@"fakeIdentifier" filename:v9 contentType:v5];
  }

  else
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __41__FPMoveOperation__mapURLsToFakeFPItems___block_invoke_cold_1(v2, v6, v8);
    }

    v10 = 0;
  }

  return v10;
}

- (void)_recomputeMoveInfoIfNecessary
{
  if (!self->_info)
  {
    v3 = objc_opt_new();
    info = self->_info;
    self->_info = v3;
  }

  v5 = +[FPDaemonOperationManager sharedInstance];
  generateLocalOperationID = [v5 generateLocalOperationID];
  [(FPActionOperationInfo *)self->_info setOperationID:generateLocalOperationID];

  if (self->__sourceItems || self->__sourceURLs)
  {
    [(FPActionOperationInfo *)self->_info setRoots:0];
    sourceItems = self->__sourceItems;
    if (sourceItems)
    {
      v8 = [(NSArray *)sourceItems fp_map:&__block_literal_global_17];
      [(FPActionOperationInfo *)self->_info setRoots:v8];
    }

    sourceURLs = self->__sourceURLs;
    if (sourceURLs)
    {
      v10 = [(NSArray *)sourceURLs fp_map:&__block_literal_global_21_0];
      roots = [(FPActionOperationInfo *)self->_info roots];

      v12 = self->_info;
      if (roots)
      {
        roots2 = [(FPActionOperationInfo *)v12 roots];
        v14 = [roots2 arrayByAddingObjectsFromArray:v10];
        [(FPActionOperationInfo *)self->_info setRoots:v14];
      }

      else
      {
        [(FPActionOperationInfo *)v12 setRoots:v10];
      }
    }
  }

  roots3 = [(FPActionOperationInfo *)self->_info roots];
  if (roots3)
  {
    v16 = roots3;
    v17 = [(NSMutableDictionary *)self->_createdItemsByRoot count];

    if (v17)
    {
      roots4 = [(FPActionOperationInfo *)self->_info roots];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __48__FPMoveOperation__recomputeMoveInfoIfNecessary__block_invoke_3;
      v27[3] = &unk_1E793C928;
      v27[4] = self;
      v19 = [roots4 fp_filter:v27];
      [(FPActionOperationInfo *)self->_info setRoots:v19];
    }
  }

  roots5 = [(FPActionOperationInfo *)self->_info roots];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __48__FPMoveOperation__recomputeMoveInfoIfNecessary__block_invoke_4;
  v26[3] = &unk_1E793C950;
  v26[4] = self;
  v21 = [roots5 fp_map:v26];
  [(FPMoveInfo *)self->_info setRootFilenames:v21];

  if (self->__destinationFolder)
  {
    v22 = [FPActionOperationLocator locatorForItem:?];
  }

  else
  {
    if (!self->__destinationURL)
    {
      goto LABEL_20;
    }

    v22 = [FPActionOperationLocator locatorForURL:?];
  }

  v23 = v22;
  [(FPMoveInfo *)self->_info setTargetFolder:v22];

LABEL_20:
  [(FPMoveInfo *)self->_info setLastUsedDatePolicy:self->__lastUsedDatePolicy];
  [(FPMoveInfo *)self->_info setShouldBounce:self->_shouldBounceOnCollision];
  [(FPMoveInfo *)self->_info setByCopy:[(FPMoveOperation *)self byCopy]];
  _t_patchActionOperationInfo = [(FPMoveOperation *)self _t_patchActionOperationInfo];

  if (_t_patchActionOperationInfo)
  {
    _t_patchActionOperationInfo2 = [(FPMoveOperation *)self _t_patchActionOperationInfo];
    (_t_patchActionOperationInfo2)[2](_t_patchActionOperationInfo2, self->_info);
  }
}

BOOL __48__FPMoveOperation__recomputeMoveInfoIfNecessary__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 544) objectForKeyedSubscript:a2];
  v3 = v2 == 0;

  return v3;
}

id __48__FPMoveOperation__recomputeMoveInfoIfNecessary__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isExternalURL])
  {
    v4 = *(*(a1 + 32) + 496);
    v5 = [v3 asURL];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (v6)
    {
      v7 = *(*(a1 + 32) + 496);
      v8 = [v3 asURL];
LABEL_7:
      v12 = v8;
      v13 = [v7 objectForKeyedSubscript:v8];

      goto LABEL_9;
    }
  }

  if ([v3 isProviderItem])
  {
    v9 = *(*(a1 + 32) + 504);
    v10 = [v3 asFPItem];
    v11 = [v9 objectForKeyedSubscript:v10];

    if (v11)
    {
      v7 = *(*(a1 + 32) + 504);
      v8 = [v3 asFPItem];
      goto LABEL_7;
    }
  }

  v13 = [v3 filename];
LABEL_9:

  return v13;
}

- (BOOL)_hasAccessToURL:(id)l readonly:(BOOL)readonly
{
  lCopy = l;
  startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
  getpid();
  path = [lCopy path];
  fileSystemRepresentation = [path fileSystemRepresentation];
  v7 = sandbox_check();

  if (startAccessingSecurityScopedResource)
  {
    [lCopy stopAccessingSecurityScopedResource];
  }

  return v7 == 0;
}

- (void)_resolveURLsWithCompletionHandler:(id)handler
{
  v51[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v25 = +[FPItemManager defaultManager];
  v4 = dispatch_group_create();
  destinationURL = self->__destinationURL;
  if (destinationURL)
  {
    if (![(FPMoveOperation *)self _hasAccessToURL:destinationURL readonly:0])
    {
      v14 = fp_current_or_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(FPMoveOperation *)&self->__destinationURL _resolveURLsWithCompletionHandler:v14];
      }

      v15 = MEMORY[0x1E696ABC0];
      v16 = self->__destinationURL;
      v50 = *MEMORY[0x1E696A998];
      v51[0] = v16;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
      v8 = [v15 errorWithDomain:*MEMORY[0x1E696A250] code:513 userInfo:v26];
      handlerCopy[2](handlerCopy, v8);
      goto LABEL_23;
    }

    dispatch_group_enter(v4);
    v6 = self->__destinationURL;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __53__FPMoveOperation__resolveURLsWithCompletionHandler___block_invoke;
    v45[3] = &unk_1E793C978;
    v45[4] = self;
    v46 = v4;
    [v25 fetchItemForURL:v6 completionHandler:v45];
  }

  sourceURLs = self->__sourceURLs;
  if (sourceURLs)
  {
    v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](sourceURLs, "count")}];
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->__sourceURLs, "count")}];
    v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSDictionary count](self->__targetFilenamesByURL, "count")}];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = self->__sourceURLs;
    v10 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v10)
    {
      v11 = *v42;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v42 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v41 + 1) + 8 * i);
          if (![(FPMoveOperation *)self _hasAccessToURL:v13 readonly:1])
          {
            v17 = fp_current_or_default_log();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              [(FPMoveOperation *)v13 _resolveURLsWithCompletionHandler:v17];
            }

            v18 = MEMORY[0x1E696ABC0];
            v47 = *MEMORY[0x1E696A998];
            v48 = v13;
            v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
            v20 = [v18 errorWithDomain:*MEMORY[0x1E696A250] code:257 userInfo:v19];
            handlerCopy[2](handlerCopy, v20);

            v21 = obj;
            goto LABEL_22;
          }

          dispatch_group_enter(v4);
          objc_initWeak(&location, self);
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __53__FPMoveOperation__resolveURLsWithCompletionHandler___block_invoke_31;
          v33[3] = &unk_1E793C9A0;
          v34 = v4;
          objc_copyWeak(&v39, &location);
          v35 = v13;
          v36 = v8;
          v37 = v9;
          v38 = v26;
          [v25 fetchItemForURL:v13 completionHandler:v33];

          objc_destroyWeak(&v39);
          objc_destroyWeak(&location);
        }

        v10 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v26 = 0;
  }

  callbackQueue = [(FPOperation *)self callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__FPMoveOperation__resolveURLsWithCompletionHandler___block_invoke_32;
  block[3] = &unk_1E793A6F0;
  v8 = v8;
  v28 = v8;
  v26 = v26;
  v29 = v26;
  selfCopy = self;
  v9 = v9;
  v31 = v9;
  v32 = handlerCopy;
  dispatch_group_notify(v4, callbackQueue, block);

  v21 = v28;
LABEL_22:

LABEL_23:
}

void __53__FPMoveOperation__resolveURLsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __53__FPMoveOperation__resolveURLsWithCompletionHandler___block_invoke_cold_1(a1, v6, v8);
    }

    v9 = *(a1 + 40);
    objc_sync_enter(v9);
    [*(*(a1 + 32) + 560) setObject:*(*(a1 + 32) + 472) forKeyedSubscript:v6];
    objc_storeStrong((*(a1 + 32) + 480), a2);
    v10 = *(a1 + 32);
    v11 = *(v10 + 472);
    *(v10 + 472) = 0;

    [*(a1 + 32) setDestinationItemToPreflight:v6];
    objc_sync_exit(v9);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __53__FPMoveOperation__resolveURLsWithCompletionHandler___block_invoke_31(id *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  objc_sync_enter(v7);
  WeakRetained = objc_loadWeakRetained(a1 + 9);
  v9 = WeakRetained;
  if (v5 && WeakRetained)
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = [a1[5] fp_shortDescription];
      v13 = 138412802;
      v14 = v9;
      v15 = 2112;
      v16 = v12;
      v17 = 2112;
      v18 = v5;
      _os_log_debug_impl(&dword_1AAAE1000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: source URL %@ resolved to item %@", &v13, 0x20u);
    }

    [a1[6] addObject:v5];
    [v9[70] setObject:a1[5] forKeyedSubscript:v5];
    v11 = [v9[62] objectForKeyedSubscript:a1[5]];
    if (v11)
    {
      [a1[7] setObject:v11 forKeyedSubscript:v5];
    }
  }

  else if (WeakRetained)
  {
    [a1[8] addObject:a1[5]];
  }

  objc_sync_exit(v7);
  dispatch_group_leave(a1[4]);
}

uint64_t __53__FPMoveOperation__resolveURLsWithCompletionHandler___block_invoke_32(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 40) count];
    v3 = [*(a1 + 32) count] + v2;
    v4 = [*(*(a1 + 48) + 456) count];
    if (v3 != [*(*(a1 + 48) + 464) count] + v4)
    {
      __53__FPMoveOperation__resolveURLsWithCompletionHandler___block_invoke_32_cold_1();
    }

    objc_storeStrong((*(a1 + 48) + 456), *(a1 + 40));
    objc_storeStrong((*(a1 + 48) + 464), *(a1 + 32));
    objc_storeStrong((*(a1 + 48) + 504), *(a1 + 56));
    v5 = [*(a1 + 48) sourceItemsToPreflight];

    if (v5)
    {
      v6 = [*(a1 + 48) sourceItemsToPreflight];
      v7 = [v6 arrayByAddingObjectsFromArray:*(a1 + 32)];
      [*(a1 + 48) setSourceItemsToPreflight:v7];
    }

    else
    {
      [*(a1 + 48) setSourceItemsToPreflight:*(a1 + 32)];
    }
  }

  if ([*(a1 + 40) count])
  {
    v8 = [*(a1 + 48) sourceItemsToPreflight];

    v9 = *(a1 + 48);
    if (v8)
    {
      v10 = [v9 sourceItemsToPreflight];
      v11 = [*(a1 + 48) _mapURLsToFakeFPItems:*(a1 + 40)];
      v12 = [v10 arrayByAddingObjectsFromArray:v11];
      [*(a1 + 48) setSourceItemsToPreflight:v12];
    }

    else
    {
      v10 = [v9 _mapURLsToFakeFPItems:*(a1 + 40)];
      [*(a1 + 48) setSourceItemsToPreflight:v10];
    }
  }

  v13 = *(*(a1 + 64) + 16);

  return v13();
}

- (void)actionMain
{
  OUTLINED_FUNCTION_6_0();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __29__FPMoveOperation_actionMain__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__FPMoveOperation_actionMain__block_invoke_2;
  block[3] = &unk_1E7939090;
  v8 = *(a1 + 32);
  v12 = v6;
  v13 = v8;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t __29__FPMoveOperation_actionMain__block_invoke_2(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    return [v2 completedWithResult:0 error:?];
  }

  else
  {
    return [v2 _runWithRemoteOperation:a1[6]];
  }
}

- (void)main
{
  if (self->_isScheduledFromThisClient)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __23__FPMoveOperation_main__block_invoke;
    v2[3] = &unk_1E7939C00;
    v2[4] = self;
    [(FPMoveOperation *)self _resolveURLsWithCompletionHandler:v2];
  }

  else
  {
    v3.receiver = self;
    v3.super_class = FPMoveOperation;
    [(FPActionOperation *)&v3 main];
  }
}

id __23__FPMoveOperation_main__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (a2)
  {

    return [v4 completedWithResult:0 error:a2];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = v4;
    v6.super_class = FPMoveOperation;
    return objc_msgSendSuper2(&v6, sel_main);
  }
}

- (void)_runWithRemoteOperation:(id)operation
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__FPMoveOperation__runWithRemoteOperation___block_invoke;
  v10[3] = &unk_1E7939C00;
  v10[4] = self;
  v4 = [operation remoteObjectProxyWithErrorHandler:v10];
  remoteMoveOperation = self->_remoteMoveOperation;
  self->_remoteMoveOperation = v4;

  v6 = self->_remoteMoveOperation;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__FPMoveOperation__runWithRemoteOperation___block_invoke_3;
  v9[3] = &unk_1E793C408;
  v9[4] = self;
  [(NSXPCProxyCreating *)v6 registerFrameworkClient:self operationCompletion:v9];
  _t_remoteOperationWasScheduled = [(FPMoveOperation *)self _t_remoteOperationWasScheduled];

  if (_t_remoteOperationWasScheduled)
  {
    _t_remoteOperationWasScheduled2 = [(FPMoveOperation *)self _t_remoteOperationWasScheduled];
    _t_remoteOperationWasScheduled2[2]();
  }
}

void __43__FPMoveOperation__runWithRemoteOperation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) callbackQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__FPMoveOperation__runWithRemoteOperation___block_invoke_2;
  v6[3] = &unk_1E79390B8;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __43__FPMoveOperation__runWithRemoteOperation___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) callbackQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __43__FPMoveOperation__runWithRemoteOperation___block_invoke_4;
  v14[3] = &unk_1E7939738;
  v14[4] = *(a1 + 32);
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(v10, v14);
}

- (void)cancel
{
  v2.receiver = self;
  v2.super_class = FPMoveOperation;
  [(FPOperation *)&v2 cancel];
}

- (void)remoteOperationProgressesAreReady
{
  callbackQueue = [(FPOperation *)self callbackQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__FPMoveOperation_remoteOperationProgressesAreReady__block_invoke;
  v5[3] = &unk_1E7939038;
  v5[4] = self;
  v5[5] = a2;
  dispatch_async(callbackQueue, v5);
}

void __52__FPMoveOperation_remoteOperationProgressesAreReady__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) progress];
  v3 = *(*(a1 + 32) + 448);
  if (!v3)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"FPMoveOperation.m" lineNumber:538 description:@"operation was not setup propertly"];

    v3 = *(*(a1 + 32) + 448);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [v3 roots];
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = *MEMORY[0x1E696A840];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [*(*(a1 + 32) + 528) progressForRoot:v10 completion:&__block_literal_global_55];
        [v11 fp_setFileOperationKind:v8];
        v12 = *(*(a1 + 32) + 584);
        v13 = [v10 underlyingObject];
        [v12 setObject:v11 forKeyedSubscript:v13];

        [v2 setTotalUnitCount:{objc_msgSend(v2, "totalUnitCount") + objc_msgSend(v11, "totalUnitCount")}];
        [v2 addChild:v11 withPendingUnitCount:{objc_msgSend(v11, "totalUnitCount")}];
        v14 = [*(*(a1 + 32) + 552) objectForKeyedSubscript:v10];
        [*(*(a1 + 32) + 512) registerCopyProgress:v11 forItemID:v14];
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (void)remoteOperationCreatedRoot:(id)root resultingItem:(id)item completion:(id)completion
{
  rootCopy = root;
  itemCopy = item;
  (*(completion + 2))(completion);
  callbackQueue = [(FPOperation *)self callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__FPMoveOperation_remoteOperationCreatedRoot_resultingItem_completion___block_invoke;
  block[3] = &unk_1E7939090;
  block[4] = self;
  v14 = rootCopy;
  v15 = itemCopy;
  v11 = itemCopy;
  v12 = rootCopy;
  dispatch_async(callbackQueue, block);
}

void __71__FPMoveOperation_remoteOperationCreatedRoot_resultingItem_completion___block_invoke(id *a1)
{
  v10 = [*(a1[4] + 69) objectForKeyedSubscript:a1[5]];
  v2 = *(a1[4] + 73);
  v3 = [a1[5] underlyingObject];
  v4 = [v2 objectForKeyedSubscript:v3];

  [*(a1[4] + 67) addObject:a1[5]];
  v5 = a1[6];
  if (v5 && ([*(a1[4] + 68) setObject:v5 forKeyedSubscript:a1[5]], objc_msgSend(a1[6], "isProviderItem")))
  {
    v6 = [a1[6] asFPItem];
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v6)
  {
    v7 = *(a1[4] + 64);
    v8 = [v6 itemID];
    [v7 registerCopyProgress:v4 forItemID:v8];
  }

  if (v10)
  {
    [*(a1[4] + 64) registerCopyProgress:v4 forItemID:v10];
  }

LABEL_10:
  if ([a1[4] byCopy])
  {
    [v6 setChildItemCount:0];
    [v6 setState:{objc_msgSend(v6, "state") | 8}];
    v9 = [a1[4] stitcher];
    [v9 replacePlaceholderWithID:v10 withItem:v6];
  }
}

- (void)remoteOperationCompletedRoot:(id)root resultingItem:(id)item error:(id)error completion:(id)completion
{
  rootCopy = root;
  itemCopy = item;
  (*(completion + 2))(completion);
  callbackQueue = [(FPOperation *)self callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__FPMoveOperation_remoteOperationCompletedRoot_resultingItem_error_completion___block_invoke;
  block[3] = &unk_1E7939090;
  block[4] = self;
  v15 = rootCopy;
  v16 = itemCopy;
  v12 = itemCopy;
  v13 = rootCopy;
  dispatch_async(callbackQueue, block);
}

void __79__FPMoveOperation_remoteOperationCompletedRoot_resultingItem_error_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _t_rootCompleted];

  if (v2)
  {
    v3 = [*(a1 + 32) _t_rootCompleted];
    v3[2](v3, *(a1 + 40));
  }

  [*(*(a1 + 32) + 536) addObject:*(a1 + 40)];
  [*(*(a1 + 32) + 584) setObject:0 forKeyedSubscript:*(a1 + 40)];
  if ([*(a1 + 48) isProviderItem] && (objc_msgSend(*(a1 + 48), "asFPItem"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = *(*(a1 + 32) + 512);
    v11 = v4;
    v6 = [v4 itemID];
    [v5 removeCopyProgressForItemID:v6];

    v7 = 1;
  }

  else
  {
    v7 = 0;
    v11 = 0;
  }

  if ([*(a1 + 32) byCopy])
  {
    v8 = [*(*(a1 + 32) + 552) objectForKeyedSubscript:*(a1 + 40)];
    [*(*(a1 + 32) + 512) removeCopyProgressForItemID:v8];
    v9 = v7 ^ 1;
    if (!v8)
    {
      v9 = 1;
    }

    if ((v9 & 1) == 0)
    {
      [v11 setChildItemCount:0];
      v10 = [*(a1 + 32) stitcher];
      [v10 replacePlaceholderWithID:v8 withItem:v11];

      [*(*(a1 + 32) + 512) removeCopyProgressForItemID:v8];
    }
  }
}

- (void)remoteOperationFinishedSendingPastUpdates
{
  if (!self->_isScheduledFromThisClient)
  {
    callbackQueue = [(FPOperation *)self callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__FPMoveOperation_remoteOperationFinishedSendingPastUpdates__block_invoke;
    block[3] = &unk_1E79399B0;
    block[4] = self;
    dispatch_async(callbackQueue, block);
  }
}

- (void)_recoverFromCollisionError:(id)error withPolicy:(unint64_t)policy
{
  v30 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  fp_userInfoFPItem = [errorCopy fp_userInfoFPItem];
  [(FPActionOperation *)self setHaveErrorRecovery:0];
  if (policy != 2)
  {
    if (policy == 1)
    {
      if (!fp_userInfoFPItem)
      {
        v19 = fp_current_or_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [FPMoveOperation _recoverFromCollisionError:v19 withPolicy:?];
        }

        selfCopy2 = self;
        v10 = errorCopy;
        goto LABEL_21;
      }

      v23 = a2;
      currentHandler = objc_opt_new();
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      allValues = [(NSDictionary *)self->_errorsByItem allValues];
      v13 = [allValues countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v26;
        v16 = 1;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v26 != v15)
            {
              objc_enumerationMutation(allValues);
            }

            fp_userInfoFPItem2 = [*(*(&v25 + 1) + 8 * i) fp_userInfoFPItem];
            if (fp_userInfoFPItem2)
            {
              [currentHandler addObject:fp_userInfoFPItem2];
              v16 &= ([fp_userInfoFPItem2 capabilities] & 0x10) != 0;
            }
          }

          v14 = [allValues countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v14);
      }

      else
      {
        v16 = 1;
      }

      if (![currentHandler count] && !objc_msgSend(currentHandler, "count"))
      {
        [FPMoveOperation _recoverFromCollisionError:withPolicy:];
      }

      v20 = off_1E7938798;
      if ((v16 & 1) == 0)
      {
        v20 = off_1E7938560;
      }

      v21 = [objc_alloc(*v20) initWithItems:currentHandler];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __57__FPMoveOperation__recoverFromCollisionError_withPolicy___block_invoke;
      v24[3] = &unk_1E7939C00;
      v24[4] = self;
      [v21 setActionCompletionBlock:v24];
      [(FPMoveOperation *)self _resetOperationBeforeErrorRecovery];
      v22 = +[FPItemManager defaultManager];
      [v22 scheduleAction:v21];
    }

    else
    {
      if (!policy)
      {
        selfCopy2 = self;
        v10 = 0;
LABEL_21:
        [(FPMoveOperation *)selfCopy2 completedWithResult:0 error:v10];
        goto LABEL_30;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"FPMoveOperation.m" lineNumber:730 description:@"UNREACHABLE: unhandled recovery option"];
    }

    goto LABEL_30;
  }

  [(FPMoveOperation *)self setShouldBounceOnCollision:1];
  [(FPMoveOperation *)self _resetOperationBeforeErrorRecovery];
  [(FPMoveOperation *)self _scheduleAgainAfterErrorRecovery];
LABEL_30:
}

void __57__FPMoveOperation__recoverFromCollisionError_withPolicy___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) callbackQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__FPMoveOperation__recoverFromCollisionError_withPolicy___block_invoke_2;
  v7[3] = &unk_1E79390B8;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __57__FPMoveOperation__recoverFromCollisionError_withPolicy___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2)
  {
    return [v1 completedWithResult:0 error:?];
  }

  else
  {
    return [v1 _scheduleAgainAfterErrorRecovery];
  }
}

- (void)_completedWithResultsByRoot:(id)root errorsByRoot:(id)byRoot error:(id)error
{
  v37 = *MEMORY[0x1E69E9840];
  rootCopy = root;
  byRootCopy = byRoot;
  errorCopy = error;
  callbackQueue = [(FPOperation *)self callbackQueue];
  dispatch_assert_queue_V2(callbackQueue);

  v12 = fp_current_or_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    fp_prettyDescription = [errorCopy fp_prettyDescription];
    *buf = 138412802;
    v32 = rootCopy;
    v33 = 2112;
    v34 = byRootCopy;
    v35 = 2112;
    v36 = fp_prettyDescription;
    _os_log_debug_impl(&dword_1AAAE1000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] remote operation finished with results:%@; errors:%@; %@", buf, 0x20u);
  }

  v13 = [rootCopy fp_copyItemKeysAndValuesUnwrappedAndKeyMap:self->_URLByResolvedFPItem];
  transferLocations = self->_transferLocations;
  self->_transferLocations = v13;

  v15 = [(NSDictionary *)self->_transferLocations fp_filter:&__block_literal_global_66_0];
  transferResults = self->_transferResults;
  self->_transferResults = v15;

  v17 = [byRootCopy fp_copyItemKeysUnwrappedAndKeyMap:self->_URLByResolvedFPItem];
  errorsByItem = self->_errorsByItem;
  self->_errorsByItem = v17;

  if (errorCopy)
  {
    firstObject = errorCopy;
  }

  else
  {
    allValues = [(NSDictionary *)self->_errorsByItem allValues];
    firstObject = [allValues firstObject];
  }

  targetFolder = [(FPMoveInfo *)self->_info targetFolder];
  if (([targetFolder isProviderItem] & 1) == 0)
  {

    asFPItem = 0;
LABEL_11:
    allValues2 = [(NSDictionary *)self->_transferResults allValues];
    [(FPMoveOperation *)self completedWithResult:allValues2 error:firstObject];

    goto LABEL_12;
  }

  targetFolder2 = [(FPMoveInfo *)self->_info targetFolder];
  asFPItem = [targetFolder2 asFPItem];

  if (!asFPItem)
  {
    goto LABEL_11;
  }

  childItemCount = [asFPItem childItemCount];

  if (!childItemCount)
  {
    goto LABEL_11;
  }

  itemManager = [(FPActionOperation *)self itemManager];
  itemID = [asFPItem itemID];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __66__FPMoveOperation__completedWithResultsByRoot_errorsByRoot_error___block_invoke_2;
  v29[3] = &unk_1E793C978;
  v29[4] = self;
  v30 = firstObject;
  [itemManager fetchItemForItemID:itemID completionHandler:v29];

LABEL_12:
}

uint64_t __66__FPMoveOperation__completedWithResultsByRoot_errorsByRoot_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __66__FPMoveOperation__completedWithResultsByRoot_errorsByRoot_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v4[72] allValues];
    v6 = [v5 arrayByAddingObject:v3];
    [v4 completedWithResult:v6 error:*(a1 + 40)];
  }

  else
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1AAAE1000, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] move destination folder is gone after move finished", v9, 2u);
    }

    v8 = *(a1 + 32);
    v5 = [v8[72] allValues];
    [v8 completedWithResult:v5 error:*(a1 + 40)];
  }
}

- (void)completedWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  callbackQueue = [(FPOperation *)self callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__FPMoveOperation_completedWithResult_error___block_invoke;
  block[3] = &unk_1E7939090;
  block[4] = self;
  v12 = resultCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = resultCopy;
  dispatch_async(callbackQueue, block);
}

- (void)_completedWithResult:(id)result error:(id)error
{
  v27 = a2;
  v40 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  errorCopy = error;
  callbackQueue = [(FPOperation *)self callbackQueue];
  dispatch_assert_queue_V2(callbackQueue);

  if (errorCopy)
  {
    byCopy = [(FPMoveInfo *)self->_info byCopy];
    v9 = FPErrorVariantCopy;
    if (!byCopy)
    {
      v9 = FPErrorVariantMove;
    }

    v10 = *v9;
    roots = [(FPActionOperationInfo *)self->_info roots];
    firstObject = [roots firstObject];

    if (!firstObject)
    {
      goto LABEL_10;
    }

    if ([firstObject isProviderItem])
    {
      asFPItem = [firstObject asFPItem];
      v14 = [errorCopy fp_annotatedErrorWithItem:asFPItem variant:v10];
    }

    else
    {
      if (![firstObject isExternalURL])
      {
LABEL_10:

        goto LABEL_11;
      }

      asFPItem = [firstObject asURL];
      v14 = [errorCopy fp_annotatedErrorWithURL:asFPItem variant:v10];
    }

    v15 = v14;

    errorCopy = v15;
    goto LABEL_10;
  }

LABEL_11:
  remoteMoveOperation = self->_remoteMoveOperation;
  self->_remoteMoveOperation = 0;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  allValues = [(NSMutableDictionary *)self->_createdItemsByRoot allValues];
  v18 = [allValues countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v36;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(allValues);
        }

        v22 = *(*(&v35 + 1) + 8 * i);
        if ([v22 isProviderItem])
        {
          progressManager = self->_progressManager;
          asFPItem2 = [v22 asFPItem];
          itemID = [asFPItem2 itemID];
          [(FPProgressManager *)progressManager removeCopyProgressForItemID:itemID];
        }
      }

      v19 = [allValues countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v19);
  }

  stitcher = [(FPActionOperation *)self stitcher];
  [stitcher finishWithItems:resultCopy error:errorCopy];

  if (errorCopy)
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __46__FPMoveOperation__completedWithResult_error___block_invoke;
    v29[3] = &unk_1E793C9E8;
    v30 = resultCopy;
    v31 = errorCopy;
    selfCopy = self;
    v33 = v27;
    [(FPActionOperation *)self tryRecoveringFromError:v31 completion:v29];
  }

  else
  {
    v34.receiver = self;
    v34.super_class = FPMoveOperation;
    [(FPOperation *)&v34 completedWithResult:resultCopy error:0];
  }
}

id __46__FPMoveOperation__completedWithResult_error___block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a1 + 40);
    if (([*(a1 + 40) fp_isFileProviderError:-1001] & 1) == 0 && (objc_msgSend(*v5, "fp_isFileProviderError:", -1001) & 1) == 0)
    {
      __46__FPMoveOperation__completedWithResult_error___block_invoke_cold_1();
    }

    v7 = *(a1 + 40);
    v6 = *(a1 + 48);

    return [v6 _recoverFromCollisionError:v7 withPolicy:a3];
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v11.receiver = *(a1 + 48);
    v11.super_class = FPMoveOperation;
    return objc_msgSendSuper2(&v11, sel_completedWithResult_error_, v10, v9);
  }
}

- (void)_presendNotifications
{
  v79 = *MEMORY[0x1E69E9840];
  callbackQueue = [(FPOperation *)self callbackQueue];
  dispatch_assert_queue_V2(callbackQueue);

  [(FPMoveOperation *)self _recomputeMoveInfoIfNecessary];
  if (![(FPActionOperation *)self finishAfterPreflight]&& ![(FPOperation *)self isFinished])
  {
    targetFolder = [(FPMoveInfo *)self->_info targetFolder];
    isExternalURL = [targetFolder isExternalURL];

    if ((isExternalURL & 1) == 0)
    {
      stitcher = [(FPActionOperation *)self stitcher];
      [stitcher start];

      if ([(FPMoveInfo *)self->_info lastUsedDatePolicy]== 2)
      {
        date = [MEMORY[0x1E695DF00] date];
      }

      else
      {
        date = 0;
      }

      targetFolder2 = [(FPMoveInfo *)self->_info targetFolder];
      if ([targetFolder2 isProviderItem])
      {
        targetFolder3 = [(FPMoveInfo *)self->_info targetFolder];
        asFPItem = [targetFolder3 asFPItem];
      }

      else
      {
        asFPItem = 0;
      }

      roots = [(FPActionOperationInfo *)self->_info roots];
      v10 = [roots count];

      if (v10)
      {
        v12 = 0;
        v59 = *MEMORY[0x1E6982E48];
        v60 = *MEMORY[0x1E695DAA0];
        v58 = *MEMORY[0x1E6982DC8];
        v13 = &OBJC_IVAR___FPProgressManager__queue;
        *&v11 = 138412546;
        v57 = v11;
        do
        {
          roots2 = [(FPActionOperationInfo *)self->_info roots];
          v15 = [roots2 objectAtIndexedSubscript:v12];

          rootFilenames = [(FPMoveInfo *)self->_info rootFilenames];
          v17 = [rootFilenames objectAtIndexedSubscript:v12];

          if (([*(&self->super.super.super.super.isa + v13[403]) containsObject:v15] & 1) == 0)
          {
            v64 = v17;
            if ([v15 isExternalURL])
            {
              asURL = [v15 asURL];
              startAccessingSecurityScopedResource = [asURL startAccessingSecurityScopedResource];
              v71 = 0;
              v70 = 0;
              v20 = [asURL getResourceValue:&v71 forKey:v60 error:&v70];
              asFPItem2 = v71;
              v62 = v70;
              if (!v20 || !asFPItem2)
              {
                v22 = fp_current_or_default_log();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  *buf = v57;
                  v76 = v15;
                  v77 = 2112;
                  v78 = v62;
                  _os_log_error_impl(&dword_1AAAE1000, v22, OS_LOG_TYPE_ERROR, "[ERROR] Failed to get type of %@ (%@)", buf, 0x16u);
                }

                isFolder = [v15 isFolder];
                v24 = v59;
                if (isFolder)
                {
                  v24 = v58;
                }

                v25 = v24;

                asFPItem2 = v25;
              }

              if (startAccessingSecurityScopedResource)
              {
                [asURL stopAccessingSecurityScopedResource];
              }

              stitcher2 = [(FPActionOperation *)self stitcher];
              itemIdentifier = [asFPItem itemIdentifier];
              providerDomainID = [asFPItem providerDomainID];
              v29 = [stitcher2 createPlaceholderWithName:v64 contentType:asFPItem2 contentAccessDate:date underParent:itemIdentifier inProviderDomainID:providerDomainID];
              [(NSMutableDictionary *)self->_placeholderIDsByRoot setObject:v29 forKeyedSubscript:v15];

              v13 = &OBJC_IVAR___FPProgressManager__queue;
              stitcher3 = v62;
            }

            else
            {
              asFPItem2 = [v15 asFPItem];
              if ([(FPMoveInfo *)self->_info byCopy])
              {
                stitcher3 = [(FPActionOperation *)self stitcher];
                lastUsedDatePolicy = [(FPMoveInfo *)self->_info lastUsedDatePolicy];
                itemIdentifier2 = [asFPItem itemIdentifier];
                providerDomainID2 = [asFPItem providerDomainID];
                v34 = [stitcher3 createPlaceholderWithCopyOfExistingItem:asFPItem2 lastUsageUpdatePolicy:lastUsedDatePolicy underParent:itemIdentifier2 inProviderDomainID:providerDomainID2];
                [(NSMutableDictionary *)self->_placeholderIDsByRoot setObject:v34 forKeyedSubscript:v15];
              }

              else if (asFPItem && ([asFPItem2 providerDomainID], v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(asFPItem, "providerDomainID"), v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v35, "isEqualToString:", v36), v36, v35, v37))
              {
                stitcher4 = [(FPActionOperation *)self stitcher];
                v74 = asFPItem2;
                v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
                v68[0] = MEMORY[0x1E69E9820];
                v68[1] = 3221225472;
                v68[2] = __40__FPMoveOperation__presendNotifications__block_invoke;
                v68[3] = &unk_1E793CA10;
                v69 = asFPItem;
                [stitcher4 transformItems:v39 handler:v68];

                stitcher3 = v69;
              }

              else
              {
                stitcher5 = [(FPActionOperation *)self stitcher];
                v73 = asFPItem2;
                v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
                [stitcher5 deleteItems:v41];

                stitcher3 = [(FPActionOperation *)self stitcher];
                itemIdentifier3 = [asFPItem itemIdentifier];
                providerDomainID3 = [asFPItem providerDomainID];
                v44 = [stitcher3 createPlaceholderWithCopyOfExistingItem:asFPItem2 lastUsageUpdatePolicy:1 underParent:itemIdentifier3 inProviderDomainID:providerDomainID3];
              }
            }

            v17 = v64;
          }

          ++v12;
          roots3 = [(FPActionOperationInfo *)self->_info roots];
          v46 = [roots3 count];
        }

        while (v12 < v46);
      }

      if (asFPItem)
      {
        targetFolder4 = [(FPMoveInfo *)self->_info targetFolder];
        asFPItem3 = [targetFolder4 asFPItem];
        childItemCount = [asFPItem3 childItemCount];

        if (childItemCount)
        {
          roots4 = [(FPActionOperationInfo *)self->_info roots];
          v51 = [roots4 count];

          stitcher6 = [(FPActionOperation *)self stitcher];
          targetFolder5 = [(FPMoveInfo *)self->_info targetFolder];
          asFPItem4 = [targetFolder5 asFPItem];
          v72 = asFPItem4;
          v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
          v65[0] = MEMORY[0x1E69E9820];
          v65[1] = 3221225472;
          v65[2] = __40__FPMoveOperation__presendNotifications__block_invoke_2;
          v65[3] = &unk_1E793CA38;
          v66 = childItemCount;
          v67 = v51;
          [stitcher6 transformItems:v55 handler:v65];
        }
      }

      stitcher7 = [(FPActionOperation *)self stitcher];
      [stitcher7 flush];
    }
  }
}

void __40__FPMoveOperation__presendNotifications__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 itemIdentifier];
  [v4 setParentItemIdentifier:v5];

  v6 = [*(a1 + 32) providerDomainID];
  [v4 setProviderDomainID:v6];
}

void __40__FPMoveOperation__presendNotifications__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setState:0];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{*(a1 + 40) + objc_msgSend(*(a1 + 32), "unsignedIntegerValue")}];
  [v3 setChildItemCount:v4];
}

- (void)presendNotifications
{
  if (self->_isScheduledFromThisClient)
  {
    block[7] = v2;
    block[8] = v3;
    callbackQueue = [(FPOperation *)self callbackQueue];
    dispatch_activate(callbackQueue);

    callbackQueue2 = [(FPOperation *)self callbackQueue];
    dispatch_assert_queue_not_V2(callbackQueue2);

    callbackQueue3 = [(FPOperation *)self callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__FPMoveOperation_presendNotifications__block_invoke;
    block[3] = &unk_1E79399B0;
    block[4] = self;
    dispatch_sync(callbackQueue3, block);
  }
}

- (void)runUserInteractionsPreflight:(id)preflight
{
  v51 = *MEMORY[0x1E69E9840];
  preflightCopy = preflight;
  if ([(FPActionOperation *)self setupRemoteOperationService])
  {
    sourceItemsToPreflight = [(FPActionOperation *)self sourceItemsToPreflight];
    firstObject = [sourceItemsToPreflight firstObject];
    if ([firstObject isExcludedFromSync])
    {
      providerDomainID2 = 0;
    }

    else
    {
      sourceItems = self->__sourceItems;

      if (!sourceItems)
      {
        providerDomainID2 = 0;
LABEL_8:
        destinationItemToPreflight = [(FPActionOperation *)self destinationItemToPreflight];
        if ([destinationItemToPreflight isExcludedFromSync])
        {
          providerDomainID = 0;
        }

        else
        {
          sourceItemsToPreflight2 = [(FPActionOperation *)self sourceItemsToPreflight];
          firstObject2 = [sourceItemsToPreflight2 firstObject];
          isIgnoreRoot = [firstObject2 isIgnoreRoot];

          if (isIgnoreRoot)
          {
            providerDomainID = 0;
            goto LABEL_14;
          }

          destinationItemToPreflight = [(FPActionOperation *)self destinationItemToPreflight];
          providerDomainID = [destinationItemToPreflight providerDomainID];
        }

LABEL_14:
        if (!(providerDomainID2 | providerDomainID))
        {
          callbackQueue = [(FPOperation *)self callbackQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __48__FPMoveOperation_runUserInteractionsPreflight___block_invoke;
          block[3] = &unk_1E7939EA8;
          v46 = preflightCopy;
          dispatch_async(callbackQueue, block);

          v17 = v46;
LABEL_62:

          goto LABEL_63;
        }

        v14 = fp_current_or_default_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          *&buf[4] = self;
          *&buf[12] = 2112;
          *&buf[14] = providerDomainID2;
          *&buf[22] = 2112;
          v48 = providerDomainID;
          _os_log_debug_impl(&dword_1AAAE1000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: preflighting for moving items from %@ to %@", buf, 0x20u);
        }

        if (providerDomainID2 != 0 && providerDomainID == 0)
        {
          goto LABEL_21;
        }

        if (providerDomainID2 && providerDomainID)
        {
          if (([providerDomainID2 isEqualToString:providerDomainID] & 1) == 0)
          {
LABEL_21:
            byCopy = [(FPMoveOperation *)self byCopy];
            v16 = FPPreflightActionCopyOut;
            if (!byCopy)
            {
              v16 = FPPreflightActionMoveOut;
            }

            v17 = *v16;
            if (!providerDomainID)
            {
              v22 = 0;
              goto LABEL_43;
            }

            if (![(FPActionOperation *)self finishAfterPreflight]&& ![(FPMoveOperation *)self byCopy]&& ![(FPActionOperation *)self finishAfterPreflight]&& ![(FPMoveOperation *)self byCopy])
            {
              [FPMoveOperation runUserInteractionsPreflight:];
            }

            byCopy2 = [(FPMoveOperation *)self byCopy];
            goto LABEL_35;
          }
        }

        else if (!providerDomainID2 && providerDomainID)
        {
          byCopy2 = [(FPMoveOperation *)self byCopy];
          v17 = 0;
LABEL_35:
          v20 = FPPreflightActionCopyIn;
          if (!byCopy2)
          {
            v20 = FPPreflightActionMoveIn;
          }

          v21 = *v20;
          v22 = v21;
LABEL_41:
          v25 = v21;
LABEL_43:
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v48 = __Block_byref_object_copy__16;
          v49 = __Block_byref_object_dispose__16;
          v50 = objc_opt_new();
          v26 = dispatch_group_create();
          v27 = fp_current_or_default_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            [FPMoveOperation runUserInteractionsPreflight:?];
          }

          v35 = providerDomainID2;
          if (v17)
          {
            dispatch_group_enter(v26);
            sourceItemsToPreflight3 = [(FPActionOperation *)self sourceItemsToPreflight];
            if (v22)
            {
              destinationItemToPreflight2 = 0;
            }

            else
            {
              destinationItemToPreflight2 = [(FPActionOperation *)self destinationItemToPreflight];
            }

            v42[0] = MEMORY[0x1E69E9820];
            v42[1] = 3221225472;
            v42[2] = __48__FPMoveOperation_runUserInteractionsPreflight___block_invoke_80;
            v42[3] = &unk_1E793CA60;
            v44 = buf;
            v43 = v26;
            [(FPMoveOperation *)self gatherErrorsForUserInteractionForDomain:providerDomainID2 action:v17 sourceItems:sourceItemsToPreflight3 destinationItem:destinationItemToPreflight2 sourceItemKeysAllowList:0 destinationItemKeysAllowList:0 completionHandler:v42];
            if (!v22)
            {
            }
          }

          if (v22)
          {
            dispatch_group_enter(v26);
            v30 = fp_current_or_default_log();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              [FPMoveOperation runUserInteractionsPreflight:?];
            }

            if (v17)
            {
              sourceItemsToPreflight4 = 0;
            }

            else
            {
              sourceItemsToPreflight4 = [(FPActionOperation *)self sourceItemsToPreflight];
            }

            destinationItemToPreflight3 = [(FPActionOperation *)self destinationItemToPreflight];
            v33 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F1FC9BF0];
            v39[0] = MEMORY[0x1E69E9820];
            v39[1] = 3221225472;
            v39[2] = __48__FPMoveOperation_runUserInteractionsPreflight___block_invoke_85;
            v39[3] = &unk_1E793CA60;
            v41 = buf;
            v40 = v26;
            [(FPMoveOperation *)self gatherErrorsForUserInteractionForDomain:providerDomainID action:v22 sourceItems:sourceItemsToPreflight4 destinationItem:destinationItemToPreflight3 sourceItemKeysAllowList:v33 destinationItemKeysAllowList:0 completionHandler:v39];

            if (!v17)
            {
            }
          }

          callbackQueue2 = [(FPOperation *)self callbackQueue];
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __48__FPMoveOperation_runUserInteractionsPreflight___block_invoke_2;
          v36[3] = &unk_1E793CA88;
          v38 = buf;
          v36[4] = self;
          v37 = preflightCopy;
          dispatch_group_notify(v26, callbackQueue2, v36);

          providerDomainID2 = v35;
          _Block_object_dispose(buf, 8);

          goto LABEL_62;
        }

        byCopy3 = [(FPMoveOperation *)self byCopy];
        v22 = 0;
        v24 = FPPreflightActionCopy;
        if (!byCopy3)
        {
          v24 = FPPreflightActionMove;
        }

        v21 = *v24;
        v17 = v21;
        goto LABEL_41;
      }

      sourceItemsToPreflight = [(FPActionOperation *)self sourceItemsToPreflight];
      firstObject = [sourceItemsToPreflight firstObject];
      providerDomainID2 = [firstObject providerDomainID];
    }

    goto LABEL_8;
  }

  (*(preflightCopy + 2))(preflightCopy, 0);
LABEL_63:
}

void __48__FPMoveOperation_runUserInteractionsPreflight___block_invoke_80(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    objc_sync_enter(v3);
    [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
    objc_sync_exit(v3);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __48__FPMoveOperation_runUserInteractionsPreflight___block_invoke_85(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    objc_sync_enter(v3);
    [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
    objc_sync_exit(v3);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __48__FPMoveOperation_runUserInteractionsPreflight___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"description" ascending:1];
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v7[0] = v2;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [v3 sortedArrayUsingDescriptors:v4];

  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __48__FPMoveOperation_runUserInteractionsPreflight___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)gatherErrorsForUserInteractionForDomain:(id)domain action:(id)action sourceItems:(id)items destinationItem:(id)item sourceItemKeysAllowList:(id)list destinationItemKeysAllowList:(id)allowList completionHandler:(id)handler
{
  domainCopy = domain;
  actionCopy = action;
  itemsCopy = items;
  itemCopy = item;
  listCopy = list;
  allowListCopy = allowList;
  handlerCopy = handler;
  itemManager = [(FPActionOperation *)self itemManager];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __165__FPMoveOperation_gatherErrorsForUserInteractionForDomain_action_sourceItems_destinationItem_sourceItemKeysAllowList_destinationItemKeysAllowList_completionHandler___block_invoke;
  v30[3] = &unk_1E793CAD8;
  v36 = allowListCopy;
  v37 = handlerCopy;
  v31 = actionCopy;
  v32 = itemsCopy;
  v33 = itemCopy;
  v34 = domainCopy;
  v35 = listCopy;
  v23 = allowListCopy;
  v24 = listCopy;
  v25 = domainCopy;
  v26 = itemCopy;
  v27 = itemsCopy;
  v28 = actionCopy;
  v29 = handlerCopy;
  [itemManager fetchOperationServiceForProviderDomainID:v25 handler:v30];
}

void __165__FPMoveOperation_gatherErrorsForUserInteractionForDomain_action_sourceItems_destinationItem_sourceItemKeysAllowList_destinationItemKeysAllowList_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 80) + 16);

    v4();
  }

  else
  {
    v5 = [a2 remoteObjectProxy];
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v11 = *(a1 + 72);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __165__FPMoveOperation_gatherErrorsForUserInteractionForDomain_action_sourceItems_destinationItem_sourceItemKeysAllowList_destinationItemKeysAllowList_completionHandler___block_invoke_2;
    v12[3] = &unk_1E793CAB0;
    v13 = *(a1 + 80);
    [v5 userInteractionErrorsForPerformingAction:v6 sourceItems:v7 destinationItem:v8 fpProviderDomainId:v9 sourceItemKeysAllowList:v10 destinationItemKeysAllowList:v11 completionHandler:v12];
  }
}

void __165__FPMoveOperation_gatherErrorsForUserInteractionForDomain_action_sourceItems_destinationItem_sourceItemKeysAllowList_destinationItemKeysAllowList_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3 && [v3 count])
  {
    v4 = [v6 objectAtIndex:0];
    v5 = [v4 copy];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (BOOL)_preflightCheckProviderCanMoveWithErrors:(id *)errors
{
  v45 = *MEMORY[0x1E69E9840];
  if (![(FPMoveInfo *)self->_info byMoving])
  {
    return 1;
  }

  errorsCopy = errors;
  selfCopy = self;
  targetFolder = [(FPMoveInfo *)self->_info targetFolder];
  isExternalURL = [targetFolder isExternalURL];

  if (isExternalURL)
  {
    return 1;
  }

  remoteService = [(FPActionOperation *)selfCopy remoteService];

  if (!remoteService)
  {
    remoteService2 = [(FPActionOperation *)selfCopy remoteService];

    if (!remoteService2)
    {
      [FPMoveOperation _preflightCheckProviderCanMoveWithErrors:];
    }
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__16;
  v42 = __Block_byref_object_dispose__16;
  v43 = 0;
  targetFolder2 = [(FPMoveInfo *)selfCopy->_info targetFolder];
  asFPItem = [targetFolder2 asFPItem];

  v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  roots = [(FPActionOperationInfo *)selfCopy->_info roots];
  v13 = [roots countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v13)
  {
    v14 = *v35;
    do
    {
      v15 = 0;
      do
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(roots);
        }

        v16 = *(*(&v34 + 1) + 8 * v15);
        if (([v16 isExternalURL] & 1) == 0)
        {
          asFPItem2 = [v16 asFPItem];
          providerDomainID = [asFPItem2 providerDomainID];
          providerDomainID2 = [asFPItem providerDomainID];
          v20 = [providerDomainID isEqualToString:providerDomainID2];

          if (v20)
          {
            asFPItem3 = [v16 asFPItem];
            itemID = [asFPItem3 itemID];
            [v31 addObject:itemID];

LABEL_15:
            goto LABEL_18;
          }

          if (![(FPActionOperation *)selfCopy finishAfterPreflight]&& ![(FPActionOperation *)selfCopy finishAfterPreflight])
          {
            asFPItem3 = [MEMORY[0x1E696AAA8] currentHandler];
            [asFPItem3 handleFailureInMethod:a2 object:selfCopy file:@"FPMoveOperation.m" lineNumber:1130 description:@"only preflight is supported on cross-domain moves"];
            goto LABEL_15;
          }
        }

LABEL_18:
        ++v15;
      }

      while (v13 != v15);
      v23 = [roots countByEnumeratingWithState:&v34 objects:v44 count:16];
      v13 = v23;
    }

    while (v23);
  }

  if ([v31 count])
  {
    remoteService3 = [(FPActionOperation *)selfCopy remoteService];
    synchronousRemoteObjectProxy = [remoteService3 synchronousRemoteObjectProxy];
    itemID2 = [asFPItem itemID];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __60__FPMoveOperation__preflightCheckProviderCanMoveWithErrors___block_invoke;
    v33[3] = &unk_1E793CB00;
    v33[4] = &v38;
    [synchronousRemoteObjectProxy preflightReparentItemIDs:v31 underParentID:itemID2 reply:v33];
  }

  v27 = [v39[5] count];
  if (errorsCopy && v27)
  {
    *errorsCopy = v39[5];
  }

  v7 = [v39[5] count] == 0;

  _Block_object_dispose(&v38, 8);
  return v7;
}

void __60__FPMoveOperation__preflightCheckProviderCanMoveWithErrors___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v5 = *(v2 + 40);
  v3 = (v2 + 40);
  v4 = v5;
  if (v5)
  {
    a2 = v4;
  }

  objc_storeStrong(v3, a2);
}

- (BOOL)_preflightCheckNotMovingIntoSelfWithError:(id *)error
{
  v66 = *MEMORY[0x1E69E9840];
  targetFolder = [(FPMoveInfo *)self->_info targetFolder];
  isExternalURL = [targetFolder isExternalURL];

  if (isExternalURL)
  {
    return 1;
  }

  targetFolder2 = [(FPMoveInfo *)self->_info targetFolder];
  asFPItem = [targetFolder2 asFPItem];

  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__16;
  v62 = __Block_byref_object_dispose__16;
  v63 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__16;
  v56 = __Block_byref_object_dispose__16;
  v57 = 0;
  v38 = objc_opt_new();
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  itemManager = [(FPActionOperation *)self itemManager];
  itemID = [asFPItem itemID];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __61__FPMoveOperation__preflightCheckNotMovingIntoSelfWithError___block_invoke;
  v48[3] = &unk_1E793CB28;
  v50 = &v52;
  v51 = &v58;
  group = v7;
  v49 = group;
  [itemManager fetchParentsForItemID:itemID recursively:1 completionHandler:v48];

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  v10 = [v59[5] arrayByAddingObject:asFPItem];
  v11 = v59[5];
  v59[5] = v10;

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  roots = [(FPActionOperationInfo *)self->_info roots];
  v36 = [roots countByEnumeratingWithState:&v44 objects:v65 count:16];
  if (v36)
  {
    v35 = *v45;
    v13 = *MEMORY[0x1E696A250];
    obj = roots;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v45 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v44 + 1) + 8 * i);
        if (([v14 isExternalURL] & 1) == 0)
        {
          asFPItem2 = [v14 asFPItem];
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v16 = v59[5];
          v17 = [v16 countByEnumeratingWithState:&v40 objects:v64 count:16];
          if (v17)
          {
            v18 = *v41;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v41 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                v20 = *(*(&v40 + 1) + 8 * j);
                itemID2 = [asFPItem2 itemID];
                itemID3 = [v20 itemID];
                LODWORD(v20) = [itemID2 isEqual:itemID3];

                if (v20)
                {
                  v23 = [MEMORY[0x1E696ABC0] errorWithDomain:v13 code:512 userInfo:0];
                  if ([(FPMoveOperation *)self byCopy])
                  {
                    v24 = @"Copy";
                  }

                  else
                  {
                    v24 = @"Move";
                  }

                  v25 = [v23 fp_annotatedErrorWithItem:asFPItem2 variant:v24];
                  v26 = v53[5];
                  v53[5] = v25;

                  [(NSDictionary *)v38 setObject:v53[5] forKeyedSubscript:asFPItem2];
                }
              }

              v17 = [v16 countByEnumeratingWithState:&v40 objects:v64 count:16];
            }

            while (v17);
          }
        }
      }

      roots = obj;
      v36 = [obj countByEnumeratingWithState:&v44 objects:v65 count:16];
    }

    while (v36);
  }

  errorsByItem = self->_errorsByItem;
  self->_errorsByItem = v38;
  v28 = v38;

  v29 = v53[5];
  if (error && v29)
  {
    *error = v29;
    v29 = v53[5];
  }

  v5 = v29 == 0;

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);

  return v5;
}

void __61__FPMoveOperation__preflightCheckNotMovingIntoSelfWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(*(a1 + 40) + 8);
  v9 = *(v6 + 40);
  v7 = (v6 + 40);
  v8 = v9;
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = a3;
  }

  objc_storeStrong(v7, v10);
  v14 = a3;
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v5;
  v13 = v5;

  dispatch_group_leave(*(a1 + 32));
}

- (void)_preflightForceBounceIfCopyingOntoSelf
{
  v38 = *MEMORY[0x1E69E9840];
  v19 = 600;
  if (!self->_shouldBounceOnCollision)
  {
    targetFolder = [(FPMoveInfo *)self->_info targetFolder];
    isExternalURL = [targetFolder isExternalURL];

    if ((isExternalURL & 1) == 0)
    {
      targetFolder2 = [(FPMoveInfo *)self->_info targetFolder];
      asFPItem = [targetFolder2 asFPItem];

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      obj = [(FPActionOperationInfo *)self->_info roots];
      v6 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v6)
      {
        v7 = *v34;
        v20 = v24;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v34 != v7)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v33 + 1) + 8 * i);
            v27 = 0;
            v28 = &v27;
            v29 = 0x3032000000;
            v30 = __Block_byref_object_copy__16;
            v31 = __Block_byref_object_dispose__16;
            if ([v9 isProviderItem])
            {
              asFPItem2 = [v9 asFPItem];
            }

            else
            {
              asFPItem2 = 0;
            }

            v32 = asFPItem2;
            if (!v28[5] && [v9 isExternalURL])
            {
              v11 = dispatch_semaphore_create(0);
              itemManager = [(FPActionOperation *)self itemManager];
              asURL = [v9 asURL];
              v23[0] = MEMORY[0x1E69E9820];
              v23[1] = 3221225472;
              v24[0] = __57__FPMoveOperation__preflightForceBounceIfCopyingOntoSelf__block_invoke;
              v24[1] = &unk_1E793CB50;
              v26 = &v27;
              v14 = v11;
              v25 = v14;
              [itemManager fetchItemForURL:asURL completionHandler:v23];

              dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
            }

            v15 = v28[5];
            if (v15)
            {
              parentItemID = [v15 parentItemID];
              itemID = [asFPItem itemID];
              v18 = [parentItemID isEqual:itemID];

              if (v18)
              {
                *(&self->super.super.super.super.isa + v19) = 1;
                _Block_object_dispose(&v27, 8);

                goto LABEL_20;
              }
            }

            _Block_object_dispose(&v27, 8);
          }

          v6 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_20:
    }
  }
}

void __57__FPMoveOperation__preflightForceBounceIfCopyingOntoSelf__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)subclassPreflightWithCompletion:(id)completion
{
  completionCopy = completion;
  callbackQueue = [(FPOperation *)self callbackQueue];
  dispatch_assert_queue_V2(callbackQueue);

  [(FPMoveOperation *)self _recomputeMoveInfoIfNecessary];
  v13 = 0;
  [(FPMoveOperation *)self _preflightCheckNotMovingIntoSelfWithError:&v13];
  v7 = v13;
  v12 = 0;
  [(FPMoveOperation *)self _preflightCheckProviderCanMoveWithErrors:&v12];
  v8 = v12;
  [(FPMoveOperation *)self _preflightForceBounceIfCopyingOntoSelf];
  v9 = objc_opt_new();
  v10 = v9;
  if (v7)
  {
    [v9 addObject:v7];
  }

  if (v8)
  {
    [v10 addObjectsFromArray:v8];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__FPMoveOperation_subclassPreflightWithCompletion___block_invoke;
  v11[3] = &unk_1E793CB78;
  v11[4] = self;
  v11[5] = a2;
  [(FPActionOperation *)self tryRecoveringFromPreflightErrors:v10 recoveryHandler:v11 completion:completionCopy];
}

uint64_t __51__FPMoveOperation_subclassPreflightWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    goto LABEL_5;
  }

  if (a3 != 1)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"FPMoveOperation.m" lineNumber:1270 description:{@"UNREACHABLE: invalid index for error: %@", v5}];

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:

  return v6;
}

- (void)_t_unblockReader
{
  callbackQueue = [(FPOperation *)self callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__FPMoveOperation__t_unblockReader__block_invoke;
  block[3] = &unk_1E79399B0;
  block[4] = self;
  dispatch_sync(callbackQueue, block);
}

- (void)_resetOperationBeforeErrorRecovery
{
  callbackQueue = [(FPOperation *)self callbackQueue];
  dispatch_assert_queue_V2(callbackQueue);

  stitcher = [(FPActionOperation *)self stitcher];
  [stitcher finish];

  [(FPActionOperation *)self resetStitcher];

  [(FPOperation *)self resetRemoteOperation];
}

- (void)_scheduleAgainAfterErrorRecovery
{
  callbackQueue = [(FPOperation *)self callbackQueue];
  dispatch_assert_queue_V2(callbackQueue);

  if (!self->_isScheduledFromThisClient)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"FPMoveOperation.m" lineNumber:1301 description:@"retrying remote operations is not supported"];
  }

  [(FPMoveOperation *)self _presendNotifications];

  [(FPMoveOperation *)self actionMain];
}

- (id)fp_prettyDescription
{
  byCopy = [(FPMoveOperation *)self byCopy];
  sourceURLs = self->__sourceURLs;
  v5 = MEMORY[0x1E696AEC0];
  if (byCopy)
  {
    if (sourceURLs)
    {
      [(NSArray *)sourceURLs fp_map:&__block_literal_global_110];
    }

    else
    {
      [(NSArray *)self->__sourceItems fp_itemIdentifiers];
    }
    v6 = ;
    v7 = @"copy items (%@)";
  }

  else
  {
    if (sourceURLs)
    {
      [(NSArray *)sourceURLs fp_map:&__block_literal_global_118_0];
    }

    else
    {
      [(NSArray *)self->__sourceItems fp_itemIdentifiers];
    }
    v6 = ;
    v7 = @"move items (%@)";
  }

  v8 = [v6 componentsJoinedByString:{@", "}];
  v9 = [v5 stringWithFormat:v7, v8];

  return v9;
}

void __41__FPMoveOperation__mapURLsToFakeFPItems___block_invoke_cold_1(void *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 fp_shortDescription];
  v6 = [a2 fp_prettyDescription];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_ERROR, "[ERROR] Error converting URL %@ to FPItem: %@", &v7, 0x16u);
}

- (void)_resolveURLsWithCompletionHandler:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "[ERROR] No write permission to destination: %@", &v3, 0xCu);
}

- (void)_resolveURLsWithCompletionHandler:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "[ERROR] No read permission for source: %@", &v2, 0xCu);
}

void __53__FPMoveOperation__resolveURLsWithCompletionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = [*(v5 + 472) fp_shortDescription];
  v7 = 138412802;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  v11 = 2112;
  v12 = a2;
  _os_log_debug_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: destination URL %@ resolved to item %@", &v7, 0x20u);
}

- (void)_recoverFromCollisionError:withPolicy:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __46__FPMoveOperation__completedWithResult_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6_0();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(v1 + 56) object:*(v1 + 48) file:@"FPMoveOperation.m" lineNumber:832 description:{@"unexpected recoverable error: %@", *v0}];
}

- (void)runUserInteractionsPreflight:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)runUserInteractionsPreflight:(uint64_t)a1 .cold.2(uint64_t a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = a1;
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, v1, v2, "[DEBUG] %@: running user interaction preflight for %@", v3, DWORD2(v3));
}

void __48__FPMoveOperation_runUserInteractionsPreflight___block_invoke_2_cold_1(uint64_t a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, v1, v2, "[DEBUG] %@: returning %@", v3, DWORD2(v3));
}

- (void)_preflightCheckProviderCanMoveWithErrors:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end