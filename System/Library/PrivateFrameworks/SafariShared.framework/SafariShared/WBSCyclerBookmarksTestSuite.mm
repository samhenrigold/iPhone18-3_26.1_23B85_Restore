@interface WBSCyclerBookmarksTestSuite
+ (BOOL)setValue:(id)value forConfigurationKey:(id)key;
- (NSArray)operations;
- (WBSCyclerBookmarksTestSuite)init;
- (id)_descriptionForErrorCode:(int64_t)code;
- (id)_errorWithCode:(int64_t)code userInfo:(id)info;
- (id)relativeProbabilitiesForOperationsWithTopLevelItem:(id)item;
- (void)_performCloudKitSecondaryMigrationAfterClearingBookmarksWithTarget:(id)target initialBookmarks:(id)bookmarks completionHandler:(id)handler;
- (void)_performFinalServerBookmarkValidationAfterClearingAndSyncingWithInitialBookmarks:(id)bookmarks completionHandler:(id)handler;
- (void)_validateServerBookmarksAfterClearingLocallyWithTarget:(id)target initialBookmarks:(id)bookmarks completionHandler:(id)handler;
- (void)_validateServerBookmarksAfterInitialSyncWithTarget:(id)target completionHandler:(id)handler;
- (void)_validateServerBookmarksWithTarget:(id)target completionHandler:(id)handler;
- (void)_validateServerBookmarksWithTarget:(id)target initialBookmarks:(id)bookmarks completionHandler:(id)handler;
- (void)runWithTarget:(id)target completionHandler:(id)handler;
- (void)setUp;
- (void)tearDown;
@end

@implementation WBSCyclerBookmarksTestSuite

- (WBSCyclerBookmarksTestSuite)init
{
  v9.receiver = self;
  v9.super_class = WBSCyclerBookmarksTestSuite;
  v2 = [(WBSCyclerBookmarksTestSuite *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(WBSCyclerOperationContext);
    operationContext = v2->_operationContext;
    v2->_operationContext = v3;

    v5 = objc_alloc_init(WBSCyclerTestSuiteBookmarkAuxiliary);
    bookmarkAuxiliary = v2->_bookmarkAuxiliary;
    v2->_bookmarkAuxiliary = v5;

    v7 = v2;
  }

  return v2;
}

- (NSArray)operations
{
  if (operations_onceToken != -1)
  {
    [WBSCyclerBookmarksTestSuite operations];
  }

  v3 = operations_operations;

  return v3;
}

void __41__WBSCyclerBookmarksTestSuite_operations__block_invoke()
{
  v6[4] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(WBSCyclerCreateBookmarkOperation);
  v6[0] = v0;
  v1 = objc_alloc_init(WBSCyclerDeleteBookmarkOperation);
  v6[1] = v1;
  v2 = objc_alloc_init(WBSCyclerMoveBookmarkOperation);
  v6[2] = v2;
  v3 = objc_alloc_init(WBSCyclerModifyBookmarkOperation);
  v6[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
  v5 = operations_operations;
  operations_operations = v4;
}

- (id)relativeProbabilitiesForOperationsWithTopLevelItem:(id)item
{
  if (relativeProbabilitiesForOperationsWithTopLevelItem__onceToken != -1)
  {
    [WBSCyclerBookmarksTestSuite relativeProbabilitiesForOperationsWithTopLevelItem:];
  }

  v4 = relativeProbabilitiesForOperationsWithTopLevelItem__relativeProbabilitiesForOperations;

  return v4;
}

void __82__WBSCyclerBookmarksTestSuite_relativeProbabilitiesForOperationsWithTopLevelItem___block_invoke()
{
  v0 = relativeProbabilitiesForOperationsWithTopLevelItem__relativeProbabilitiesForOperations;
  relativeProbabilitiesForOperationsWithTopLevelItem__relativeProbabilitiesForOperations = &unk_1F3A9B180;
}

- (void)setUp
{
  v2 = WBS_LOG_CHANNEL_PREFIXCycler(self, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BB6F3000, v2, OS_LOG_TYPE_INFO, "Blocking automatic migration in the sync agent", v4, 2u);
  }

  safari_cloudBookmarksDefaults = [MEMORY[0x1E695E000] safari_cloudBookmarksDefaults];
  [safari_cloudBookmarksDefaults setBool:1 forKey:*MEMORY[0x1E69C8D70]];
}

- (void)tearDown
{
  v2 = WBS_LOG_CHANNEL_PREFIXCycler(self, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BB6F3000, v2, OS_LOG_TYPE_INFO, "Unblocking automatic migration in the sync agent", v4, 2u);
  }

  safari_cloudBookmarksDefaults = [MEMORY[0x1E695E000] safari_cloudBookmarksDefaults];
  [safari_cloudBookmarksDefaults setBool:0 forKey:*MEMORY[0x1E69C8D70]];
}

- (void)runWithTarget:(id)target completionHandler:(id)handler
{
  v25[1] = *MEMORY[0x1E69E9840];
  targetCopy = target;
  handlerCopy = handler;
  if (![(WBSCyclerTestSuiteBookmarkAuxiliary *)self->_bookmarkAuxiliary hasPerformedOperation:0])
  {
    if (shouldRunInCloudKitMode)
    {
      v24 = @"forCloudKitTest";
      v25[0] = MEMORY[0x1E695E118];
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    }

    else
    {
      v15 = 0;
    }

    [(WBSCyclerTestSuiteBookmarkAuxiliary *)self->_bookmarkAuxiliary performOperation:0 withTarget:targetCopy options:v15 completionHandler:handlerCopy];

    goto LABEL_17;
  }

  if (shouldRunInCloudKitMode)
  {
    v8 = [(WBSCyclerTestSuiteBookmarkAuxiliary *)self->_bookmarkAuxiliary hasPerformedOperation:1];
    bookmarkAuxiliary = self->_bookmarkAuxiliary;
    if (v8)
    {
      if ([(WBSCyclerTestSuiteBookmarkAuxiliary *)bookmarkAuxiliary hasPerformedOperation:3])
      {
        goto LABEL_5;
      }

      bookmarkAuxiliary = self->_bookmarkAuxiliary;
      v16 = 3;
    }

    else
    {
      v16 = 1;
    }

    [(WBSCyclerTestSuiteBookmarkAuxiliary *)bookmarkAuxiliary performOperation:v16 withTarget:targetCopy completionHandler:handlerCopy];
    goto LABEL_17;
  }

LABEL_5:
  incrementIterationCount = [(WBSCyclerIterationCounter *)self->_iterationCounter incrementIterationCount];
  v12 = WBS_LOG_CHANNEL_PREFIXCycler(incrementIterationCount, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    iterationCounter = self->_iterationCounter;
    v14 = v12;
    *buf = 134218240;
    iterationCount = [(WBSCyclerIterationCounter *)iterationCounter iterationCount];
    v22 = 2048;
    v23 = +[WBSCyclerRandomnessUtilities seed];
    _os_log_impl(&dword_1BB6F3000, v14, OS_LOG_TYPE_DEFAULT, "Beginning iteration %lu with seed %lu", buf, 0x16u);
  }

  if (__ROR8__(0x8F5C28F5C28F5C29 * [(WBSCyclerIterationCounter *)self->_iterationCounter iterationCount], 2) <= 0x28F5C28F5C28F5CuLL)
  {
    [(WBSCyclerBookmarksTestSuite *)self _validateServerBookmarksWithTarget:targetCopy completionHandler:handlerCopy];
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __63__WBSCyclerBookmarksTestSuite_runWithTarget_completionHandler___block_invoke;
    v17[3] = &unk_1E7FC4FC0;
    v17[4] = self;
    v18 = targetCopy;
    v19 = handlerCopy;
    [v18 fetchTopLevelBookmarkList:v17];
  }

LABEL_17:
}

void __63__WBSCyclerBookmarksTestSuite_runWithTarget_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(a1 + 32) + 8) setTestTarget:*(a1 + 40)];
  [*(*(a1 + 32) + 8) setTopLevelItem:v3];
  v4 = [*(*(a1 + 32) + 8) setTitlePrefix:bookmarkTitlePrefix];
  if (!*(*(a1 + 32) + 24))
  {
LABEL_10:
    v7 = [v3 randomProfileDescendant];
    [*(*(a1 + 32) + 8) setTabGroupsParent:v7];
    v10 = [*(a1 + 32) operations];
    v11 = [*(a1 + 32) relativeProbabilitiesForOperationsWithTopLevelItem:v7];
    v12 = [WBSCyclerRandomnessUtilities randomElementOfArray:v10 relativeProbabilities:v11];

    v13 = *(a1 + 32);
    v14 = *(v13 + 8);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __63__WBSCyclerBookmarksTestSuite_runWithTarget_completionHandler___block_invoke_16;
    v15[3] = &unk_1E7FC4F98;
    v15[4] = v13;
    v16 = *(a1 + 48);
    [v12 executeWithContext:v14 completionHandler:v15];

    goto LABEL_11;
  }

  v6 = WBS_LOG_CHANNEL_PREFIXCycler(v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __63__WBSCyclerBookmarksTestSuite_runWithTarget_completionHandler___block_invoke_cold_1();
  }

  v7 = [*(*(a1 + 32) + 16) validateBookmarks:v3 expectingBookmarks:*(*(a1 + 32) + 24) context:*(*(a1 + 32) + 8)];
  v9 = WBS_LOG_CHANNEL_PREFIXCycler(v7, v8);
  if (!v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __63__WBSCyclerBookmarksTestSuite_runWithTarget_completionHandler___block_invoke_cold_3();
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __63__WBSCyclerBookmarksTestSuite_runWithTarget_completionHandler___block_invoke_cold_2();
  }

  (*(*(a1 + 48) + 16))();
LABEL_11:
}

void __63__WBSCyclerBookmarksTestSuite_runWithTarget_completionHandler___block_invoke_16(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 copy];
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = v4;

  v7 = *(a1 + 32);
  v9 = *(v7 + 8);
  v8 = *(v7 + 16);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__WBSCyclerBookmarksTestSuite_runWithTarget_completionHandler___block_invoke_2;
  v10[3] = &unk_1E7FB8300;
  v11 = *(a1 + 40);
  [v8 fetchAndValidateBookmarksWithExpectedBookmarks:v3 context:v9 completionHandler:v10];
}

+ (BOOL)setValue:(id)value forConfigurationKey:(id)key
{
  v23 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  v8 = [keyCopy isEqualToString:@"bookmark-prefix"];
  if (v8)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXCycler(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v21 = 138543362;
      v22 = valueCopy;
      _os_log_impl(&dword_1BB6F3000, v10, OS_LOG_TYPE_INFO, "Bookmark prefix set to %{public}@", &v21, 0xCu);
    }

    objc_storeStrong(&bookmarkTitlePrefix, value);
    v11 = 1;
    goto LABEL_19;
  }

  if ([keyCopy isEqualToString:@"enable-cloudkit"])
  {
    bOOLValue = [(__CFString *)valueCopy BOOLValue];
    shouldRunInCloudKitMode = bOOLValue;
    v14 = WBS_LOG_CHANNEL_PREFIXCycler(bOOLValue, v13);
    v11 = 1;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    if (shouldRunInCloudKitMode)
    {
      v15 = @"enabled";
    }

    else
    {
      v15 = @"disabled";
    }

    v21 = 138543362;
    v22 = v15;
    v16 = "CloudKit mode %{public}@";
LABEL_17:
    _os_log_impl(&dword_1BB6F3000, v14, OS_LOG_TYPE_INFO, v16, &v21, 0xCu);
    goto LABEL_19;
  }

  if (![keyCopy isEqualToString:@"enable-secondary-migration"])
  {
    v11 = 0;
    goto LABEL_19;
  }

  bOOLValue2 = [(__CFString *)valueCopy BOOLValue];
  shouldSyncDownUsingSecondaryMigration = bOOLValue2;
  v14 = WBS_LOG_CHANNEL_PREFIXCycler(bOOLValue2, v18);
  v11 = 1;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    if (shouldSyncDownUsingSecondaryMigration)
    {
      v19 = @"enabled";
    }

    else
    {
      v19 = @"disabled";
    }

    v21 = 138543362;
    v22 = v19;
    v16 = "CloudKit secondary migration sync down %{public}@";
    goto LABEL_17;
  }

LABEL_19:

  return v11;
}

- (void)_validateServerBookmarksWithTarget:(id)target completionHandler:(id)handler
{
  targetCopy = target;
  handlerCopy = handler;
  v9 = WBS_LOG_CHANNEL_PREFIXCycler(handlerCopy, v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_DEFAULT, "Validating server bookmarks", buf, 2u);
  }

  v12 = WBS_LOG_CHANNEL_PREFIXCycler(v10, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_INFO, "Performing initial sync before syncing down server bookmarks", buf, 2u);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__WBSCyclerBookmarksTestSuite__validateServerBookmarksWithTarget_completionHandler___block_invoke;
  v15[3] = &unk_1E7FC4FE8;
  v16 = targetCopy;
  v17 = handlerCopy;
  v15[4] = self;
  v13 = targetCopy;
  v14 = handlerCopy;
  [v13 syncBookmarksWithCompletionHandler:v15];
}

void __84__WBSCyclerBookmarksTestSuite__validateServerBookmarksWithTarget_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 2:
      v9 = WBS_LOG_CHANNEL_PREFIXCycler(a1, 2);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_INFO, "Bookmark sync is disabled; skipping validation of server bookmarks", v10, 2u);
      }

      (*(*(a1 + 48) + 16))();
      break;
    case 1:
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);

      [v6 _validateServerBookmarksAfterInitialSyncWithTarget:v7 completionHandler:v8];
      break;
    case 0:
      v3 = WBS_LOG_CHANNEL_PREFIXCycler(a1, 0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __84__WBSCyclerBookmarksTestSuite__validateServerBookmarksWithTarget_completionHandler___block_invoke_cold_1();
      }

      v4 = *(a1 + 48);
      v5 = [*(a1 + 32) _errorWithCode:1 userInfo:0];
      (*(v4 + 16))(v4, v5);

      break;
  }
}

- (void)_validateServerBookmarksAfterInitialSyncWithTarget:(id)target completionHandler:(id)handler
{
  targetCopy = target;
  handlerCopy = handler;
  v9 = WBS_LOG_CHANNEL_PREFIXCycler(handlerCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_INFO, "Saving off initial bookmarks before server bookmark validation", buf, 2u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __100__WBSCyclerBookmarksTestSuite__validateServerBookmarksAfterInitialSyncWithTarget_completionHandler___block_invoke;
  v12[3] = &unk_1E7FC4FC0;
  v12[4] = self;
  v13 = targetCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = targetCopy;
  [v11 fetchTopLevelBookmarkList:v12];
}

- (void)_validateServerBookmarksWithTarget:(id)target initialBookmarks:(id)bookmarks completionHandler:(id)handler
{
  v28[1] = *MEMORY[0x1E69E9840];
  targetCopy = target;
  bookmarksCopy = bookmarks;
  handlerCopy = handler;
  v12 = WBS_LOG_CHANNEL_PREFIXCycler(handlerCopy, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_INFO, "Clearing local bookmarks for server bookmark validation", buf, 2u);
  }

  if (shouldRunInCloudKitMode == 1)
  {
    if (shouldSyncDownUsingSecondaryMigration == 1)
    {
      v27 = @"includeMigrationState";
      v28[0] = MEMORY[0x1E695E118];
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    }

    else
    {
      v13 = 0;
    }

    [(WBSCyclerTestSuiteBookmarkAuxiliary *)self->_bookmarkAuxiliary resetOperation:4];
    bookmarkAuxiliary = self->_bookmarkAuxiliary;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __101__WBSCyclerBookmarksTestSuite__validateServerBookmarksWithTarget_initialBookmarks_completionHandler___block_invoke;
    v22[3] = &unk_1E7FC5010;
    v22[4] = self;
    v23 = targetCopy;
    v24 = bookmarksCopy;
    v25 = handlerCopy;
    v16 = bookmarksCopy;
    v14 = targetCopy;
    v15 = handlerCopy;
    [(WBSCyclerTestSuiteBookmarkAuxiliary *)bookmarkAuxiliary performOperation:4 withTarget:v14 options:v13 completionHandler:v22];
  }

  else
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __101__WBSCyclerBookmarksTestSuite__validateServerBookmarksWithTarget_initialBookmarks_completionHandler___block_invoke_38;
    v18[3] = &unk_1E7FC5038;
    v18[4] = self;
    v19 = targetCopy;
    v20 = bookmarksCopy;
    v21 = handlerCopy;
    v14 = bookmarksCopy;
    v15 = targetCopy;
    v13 = handlerCopy;
    [v15 clearBookmarksWithOptions:0 completionHandler:v18];

    v16 = v21;
  }
}

void __101__WBSCyclerBookmarksTestSuite__validateServerBookmarksWithTarget_initialBookmarks_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXCycler(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __101__WBSCyclerBookmarksTestSuite__validateServerBookmarksWithTarget_initialBookmarks_completionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    [*(a1 + 32) _validateServerBookmarksAfterClearingLocallyWithTarget:*(a1 + 40) initialBookmarks:*(a1 + 48) completionHandler:*(a1 + 56)];
  }
}

void __101__WBSCyclerBookmarksTestSuite__validateServerBookmarksWithTarget_initialBookmarks_completionHandler___block_invoke_38(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);

    [v3 _validateServerBookmarksAfterClearingLocallyWithTarget:v4 initialBookmarks:v5 completionHandler:v6];
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXCycler(a1, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __101__WBSCyclerBookmarksTestSuite__validateServerBookmarksWithTarget_initialBookmarks_completionHandler___block_invoke_38_cold_1();
    }

    v8 = *(a1 + 56);
    v9 = [*(a1 + 32) _errorWithCode:0 userInfo:0];
    (*(v8 + 16))(v8, v9);
  }
}

- (void)_validateServerBookmarksAfterClearingLocallyWithTarget:(id)target initialBookmarks:(id)bookmarks completionHandler:(id)handler
{
  targetCopy = target;
  bookmarksCopy = bookmarks;
  handlerCopy = handler;
  v12 = WBS_LOG_CHANNEL_PREFIXCycler(handlerCopy, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_INFO, "Cleared local bookmarks for server bookmark validation. Performing sync.", buf, 2u);
  }

  if (shouldRunInCloudKitMode == 1 && shouldSyncDownUsingSecondaryMigration == 1)
  {
    [(WBSCyclerBookmarksTestSuite *)self _performCloudKitSecondaryMigrationAfterClearingBookmarksWithTarget:targetCopy initialBookmarks:bookmarksCopy completionHandler:handlerCopy];
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __121__WBSCyclerBookmarksTestSuite__validateServerBookmarksAfterClearingLocallyWithTarget_initialBookmarks_completionHandler___block_invoke;
    v13[3] = &unk_1E7FC4FE8;
    v15 = handlerCopy;
    v13[4] = self;
    v14 = bookmarksCopy;
    [targetCopy syncBookmarksWithCompletionHandler:v13];
  }
}

void __121__WBSCyclerBookmarksTestSuite__validateServerBookmarksAfterClearingLocallyWithTarget_initialBookmarks_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = WBS_LOG_CHANNEL_PREFIXCycler(a1, a2);
  v5 = v4;
  if (a2 == 2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Bookmark sync was apparently disabled between initial and final syncs for server validation; skipping validation", buf, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Synced bookmarks down after clearing them", v8, 2u);
    }

    [*(a1 + 32) _performFinalServerBookmarkValidationAfterClearingAndSyncingWithInitialBookmarks:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __121__WBSCyclerBookmarksTestSuite__validateServerBookmarksAfterClearingLocallyWithTarget_initialBookmarks_completionHandler___block_invoke_cold_1();
    }

    v6 = *(a1 + 48);
    v7 = [*(a1 + 32) _errorWithCode:1 userInfo:0];
    (*(v6 + 16))(v6, v7);
  }
}

- (void)_performCloudKitSecondaryMigrationAfterClearingBookmarksWithTarget:(id)target initialBookmarks:(id)bookmarks completionHandler:(id)handler
{
  bookmarksCopy = bookmarks;
  handlerCopy = handler;
  targetCopy = target;
  v12 = WBS_LOG_CHANNEL_PREFIXCycler(targetCopy, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_INFO, "Cleared local bookmarks for server bookmark validation. Performing secondary migration.", buf, 2u);
  }

  [(WBSCyclerTestSuiteBookmarkAuxiliary *)self->_bookmarkAuxiliary resetOperation:3];
  bookmarkAuxiliary = self->_bookmarkAuxiliary;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __133__WBSCyclerBookmarksTestSuite__performCloudKitSecondaryMigrationAfterClearingBookmarksWithTarget_initialBookmarks_completionHandler___block_invoke;
  v16[3] = &unk_1E7FC5060;
  v16[4] = self;
  v17 = bookmarksCopy;
  v18 = handlerCopy;
  v14 = handlerCopy;
  v15 = bookmarksCopy;
  [(WBSCyclerTestSuiteBookmarkAuxiliary *)bookmarkAuxiliary performOperation:3 withTarget:targetCopy completionHandler:v16];
}

void __133__WBSCyclerBookmarksTestSuite__performCloudKitSecondaryMigrationAfterClearingBookmarksWithTarget_initialBookmarks_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = WBS_LOG_CHANNEL_PREFIXCycler(v3, v4);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __133__WBSCyclerBookmarksTestSuite__performCloudKitSecondaryMigrationAfterClearingBookmarksWithTarget_initialBookmarks_completionHandler___block_invoke_cold_1(v3, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_INFO, "Secondary migration succeeded", v7, 2u);
  }

  [*(a1 + 32) _performFinalServerBookmarkValidationAfterClearingAndSyncingWithInitialBookmarks:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)_performFinalServerBookmarkValidationAfterClearingAndSyncingWithInitialBookmarks:(id)bookmarks completionHandler:(id)handler
{
  handlerCopy = handler;
  bookmarksCopy = bookmarks;
  v9 = WBS_LOG_CHANNEL_PREFIXCycler(bookmarksCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_INFO, "Performing final validation of bookmarks after clearing and syncing down from server", buf, 2u);
  }

  p_operationContext = &self->_operationContext;
  operationContext = self->_operationContext;
  v11 = p_operationContext[1];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __130__WBSCyclerBookmarksTestSuite__performFinalServerBookmarkValidationAfterClearingAndSyncingWithInitialBookmarks_completionHandler___block_invoke;
  v14[3] = &unk_1E7FB8300;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [(WBSCyclerOperationContext *)v11 fetchAndValidateBookmarksWithExpectedBookmarks:bookmarksCopy context:operationContext completionHandler:v14];
}

void __130__WBSCyclerBookmarksTestSuite__performFinalServerBookmarkValidationAfterClearingAndSyncingWithInitialBookmarks_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = WBS_LOG_CHANNEL_PREFIXCycler(v3, v4);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __130__WBSCyclerBookmarksTestSuite__performFinalServerBookmarkValidationAfterClearingAndSyncingWithInitialBookmarks_completionHandler___block_invoke_cold_1(v3, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_DEFAULT, "Validated server-side bookmarks successfully", v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)_errorWithCode:(int64_t)code userInfo:(id)info
{
  v6 = [info mutableCopy];
  v7 = v6;
  if (v6)
  {
    dictionary = v6;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v9 = dictionary;

  v10 = [(WBSCyclerBookmarksTestSuite *)self _descriptionForErrorCode:code];
  [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x1E696A578]];

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WBSCyclerBookmarksTestSuiteErrorDomain" code:code userInfo:v9];

  return v11;
}

- (id)_descriptionForErrorCode:(int64_t)code
{
  if (code)
  {
    return @"Could not sync bookmarks";
  }

  else
  {
    return @"Could not clear local bookmarks";
  }
}

void __133__WBSCyclerBookmarksTestSuite__performCloudKitSecondaryMigrationAfterClearingBookmarksWithTarget_initialBookmarks_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Secondary migration failed: %{public}@", &v2, 0xCu);
}

void __130__WBSCyclerBookmarksTestSuite__performFinalServerBookmarkValidationAfterClearingAndSyncingWithInitialBookmarks_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Server validation failed: %{public}@", &v2, 0xCu);
}

@end