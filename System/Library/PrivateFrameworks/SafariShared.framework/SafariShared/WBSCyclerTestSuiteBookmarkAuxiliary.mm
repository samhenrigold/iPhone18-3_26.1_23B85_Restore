@interface WBSCyclerTestSuiteBookmarkAuxiliary
- (BOOL)hasPerformedOperation:(int64_t)operation;
- (WBSCyclerTestSuiteBookmarkAuxiliary)init;
- (id)_attributeStringForBookmark:(id)bookmark multiline:(BOOL)multiline;
- (id)_descriptionForBookmark:(id)bookmark;
- (id)_descriptionForErrorCode:(int64_t)code;
- (id)_errorWithCode:(int64_t)code userInfo:(id)info;
- (id)_expandedDescriptionForBookmark:(id)bookmark;
- (id)_formattedStringForBookmark:(id)bookmark indentationLevel:(unint64_t)level;
- (id)validateBookmarks:(id)bookmarks expectingBookmarks:(id)expectingBookmarks context:(id)context;
- (void)_attemptCloudKitMigrationWithCompletionHandler:(id)handler;
- (void)_attemptInitialClearWithTarget:(id)target options:(id)options completionHandler:(id)handler;
- (void)_attemptResetToDAVModeWithCompletionHandler:(id)handler;
- (void)_attemptToClearDataWithOptions:(id)options completionHandler:(id)handler;
- (void)_attemptToGenerateDAVServerIDsForExistingBookmarksWithCompletionHandler:(id)handler;
- (void)fetchAndValidateBookmarksWithExpectedBookmarks:(id)bookmarks context:(id)context completionHandler:(id)handler;
- (void)performOperation:(int64_t)operation withTarget:(id)target options:(id)options completionHandler:(id)handler;
- (void)resetOperation:(int64_t)operation;
@end

@implementation WBSCyclerTestSuiteBookmarkAuxiliary

- (WBSCyclerTestSuiteBookmarkAuxiliary)init
{
  v6.receiver = self;
  v6.super_class = WBSCyclerTestSuiteBookmarkAuxiliary;
  v2 = [(WBSCyclerTestSuiteBookmarkAuxiliary *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_operationBackoffRatio = 2.0;
    v4 = v2;
  }

  return v3;
}

- (void)fetchAndValidateBookmarksWithExpectedBookmarks:(id)bookmarks context:(id)context completionHandler:(id)handler
{
  bookmarksCopy = bookmarks;
  contextCopy = context;
  handlerCopy = handler;
  testTarget = [contextCopy testTarget];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __112__WBSCyclerTestSuiteBookmarkAuxiliary_fetchAndValidateBookmarksWithExpectedBookmarks_context_completionHandler___block_invoke;
  v15[3] = &unk_1E7FC53C8;
  v15[4] = self;
  v16 = bookmarksCopy;
  v17 = contextCopy;
  v18 = handlerCopy;
  v12 = contextCopy;
  v13 = bookmarksCopy;
  v14 = handlerCopy;
  [testTarget fetchTopLevelBookmarkList:v15];
}

void __112__WBSCyclerTestSuiteBookmarkAuxiliary_fetchAndValidateBookmarksWithExpectedBookmarks_context_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = [*(a1 + 32) validateBookmarks:a2 expectingBookmarks:*(a1 + 40) context:*(a1 + 48)];
  (*(v2 + 16))(v2, v3);
}

- (id)validateBookmarks:(id)bookmarks expectingBookmarks:(id)expectingBookmarks context:(id)context
{
  v81[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  bookmarksCopy = bookmarks;
  v9 = [contextCopy filterOutItemsWithoutTitlePrefixInList:expectingBookmarks];
  v10 = [contextCopy filterOutItemsWithoutTitlePrefixInList:bookmarksCopy];

  title = [v9 title];
  title2 = [v10 title];
  if (![title length] && !objc_msgSend(title2, "length"))
  {
    [v9 setTitle:0];
    [v10 setTitle:0];
  }

  v13 = [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _formattedStringForBookmark:v9 indentationLevel:0];
  v14 = [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _formattedStringForBookmark:v10 indentationLevel:0];
  v16 = WBS_LOG_CHANNEL_PREFIXCycler(v14, v15);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
  if (v17)
  {
    [WBSCyclerTestSuiteBookmarkAuxiliary validateBookmarks:expectingBookmarks:context:];
  }

  v19 = WBS_LOG_CHANNEL_PREFIXCycler(v17, v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [WBSCyclerTestSuiteBookmarkAuxiliary validateBookmarks:expectingBookmarks:context:];
  }

  v20 = [v10 isEquivalent:v9];
  if (v20)
  {
    v22 = WBS_LOG_CHANNEL_PREFIXCycler(v20, v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [WBSCyclerTestSuiteBookmarkAuxiliary validateBookmarks:expectingBookmarks:context:];
    }

    v23 = [v9 pairsOfItemsWithDifferingExtraAttributesComparedTo:v10];
    if ([v23 count])
    {
      v56 = v14;
      v57 = title;
      v61 = v13;
      v63 = title2;
      v58 = v10;
      v59 = v9;
      v60 = contextCopy;
      array = [MEMORY[0x1E695DF70] array];
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v23 = v23;
      v25 = [v23 countByEnumeratingWithState:&v71 objects:v79 count:16];
      if (v25)
      {
        v26 = v25;
        v66 = *v72;
        obj = v23;
        do
        {
          v27 = 0;
          do
          {
            if (*v72 != v66)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v71 + 1) + 8 * v27);
            v69 = 0;
            v70 = 0;
            [v28 getFirst:&v70 second:&v69];
            v29 = v70;
            v30 = v69;
            v31 = [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _expandedDescriptionForBookmark:v29];
            v32 = [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _expandedDescriptionForBookmark:v30];
            v34 = WBS_LOG_CHANNEL_PREFIXCycler(v32, v33);
            v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG);
            if (v35)
            {
              *buf = 138543362;
              v78 = v31;
              _os_log_debug_impl(&dword_1BB6F3000, v34, OS_LOG_TYPE_DEBUG, "Expected bookmark attributes: %{public}@", buf, 0xCu);
            }

            v37 = WBS_LOG_CHANNEL_PREFIXCycler(v35, v36);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v78 = v32;
              _os_log_debug_impl(&dword_1BB6F3000, v37, OS_LOG_TYPE_DEBUG, "Actual bookmark attributes: %{public}@", buf, 0xCu);
            }

            newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
            v39 = [v31 componentsSeparatedByCharactersInSet:newlineCharacterSet];

            newlineCharacterSet2 = [MEMORY[0x1E696AB08] newlineCharacterSet];
            v41 = [v32 componentsSeparatedByCharactersInSet:newlineCharacterSet2];

            v42 = [v39 safari_diffWithArray:v41];
            v44 = WBS_LOG_CHANNEL_PREFIXCycler(v42, v43);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v78 = v42;
              _os_log_error_impl(&dword_1BB6F3000, v44, OS_LOG_TYPE_ERROR, "Expected and actual attributes don't match: %{public}@", buf, 0xCu);
            }

            [array addObject:v42];

            ++v27;
          }

          while (v26 != v27);
          v23 = obj;
          v26 = [obj countByEnumeratingWithState:&v71 objects:v79 count:16];
        }

        while (v26);
      }

      v75 = @"ExpectedAttributesVersusActualAttributes";
      v76 = array;
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
      v46 = [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _errorWithCode:0 userInfo:v45];

      v9 = v59;
      contextCopy = v60;
      title = v57;
      v10 = v58;
      v13 = v61;
      title2 = v63;
      v14 = v56;
    }

    else
    {
      v54 = WBS_LOG_CHANNEL_PREFIXCycler(0, v24);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        [WBSCyclerTestSuiteBookmarkAuxiliary validateBookmarks:expectingBookmarks:context:];
      }

      v46 = 0;
    }
  }

  else
  {
    v64 = title2;
    newlineCharacterSet3 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v23 = [v13 componentsSeparatedByCharactersInSet:newlineCharacterSet3];

    newlineCharacterSet4 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v49 = [v14 componentsSeparatedByCharactersInSet:newlineCharacterSet4];

    v80 = @"ExpectedStateVersusActualState";
    [v23 safari_diffWithArray:v49];
    v50 = v62 = v13;
    v81[0] = v50;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:&v80 count:1];
    v51 = title;
    v53 = v52 = v14;
    v46 = [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _errorWithCode:0 userInfo:v53];

    v14 = v52;
    title = v51;

    v13 = v62;
    title2 = v64;
  }

  return v46;
}

- (BOOL)hasPerformedOperation:(int64_t)operation
{
  if (operation > 4)
  {
    return 0;
  }

  else
  {
    return [*(&self->_initialClearOperation + operation) isFinished];
  }
}

- (void)performOperation:(int64_t)operation withTarget:(id)target options:(id)options completionHandler:(id)handler
{
  targetCopy = target;
  optionsCopy = options;
  handlerCopy = handler;
  if (operation <= 1)
  {
    if (operation)
    {
      if (operation == 1)
      {
        [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _attemptResetToDAVModeWithCompletionHandler:handlerCopy];
      }
    }

    else
    {
      [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _attemptInitialClearWithTarget:targetCopy options:optionsCopy completionHandler:handlerCopy];
    }
  }

  else
  {
    switch(operation)
    {
      case 2:
        [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _attemptToGenerateDAVServerIDsForExistingBookmarksWithCompletionHandler:handlerCopy];
        break;
      case 3:
        [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _attemptCloudKitMigrationWithCompletionHandler:handlerCopy];
        break;
      case 4:
        [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _attemptToClearDataWithOptions:optionsCopy completionHandler:handlerCopy];
        break;
    }
  }
}

- (void)resetOperation:(int64_t)operation
{
  if ([(WBSCyclerTestSuiteBookmarkAuxiliary *)self hasPerformedOperation:?]&& operation <= 4)
  {
    v5 = &self->super.isa + operation;
    v6 = v5[1];
    v5[1] = 0;
  }
}

- (id)_descriptionForBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = MEMORY[0x1E696AD60];
  title = [bookmarkCopy title];
  if (isKindOfClass)
  {
    v8 = [bookmarkCopy url];
    v9 = [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _attributeStringForBookmark:bookmarkCopy multiline:0];
    v10 = [v6 stringWithFormat:@"<Leaf title=%@ url=%@ attributes=%@>", title, v8, v9];
  }

  else
  {
    v8 = [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _attributeStringForBookmark:bookmarkCopy multiline:0];
    v10 = [v6 stringWithFormat:@"<List title=%@ attributes=%@>", title, v8];
  }

  return v10;
}

- (id)_attributeStringForBookmark:(id)bookmark multiline:(BOOL)multiline
{
  multilineCopy = multiline;
  v5 = MEMORY[0x1E695DF70];
  bookmarkCopy = bookmark;
  array = [v5 array];
  extraAttributes = [bookmarkCopy extraAttributes];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__WBSCyclerTestSuiteBookmarkAuxiliary__attributeStringForBookmark_multiline___block_invoke;
  v13[3] = &unk_1E7FC53F0;
  v14 = array;
  v9 = array;
  [extraAttributes enumerateKeysAndObjectsUsingBlock:v13];

  if (multilineCopy)
  {
    v10 = @"\n";
  }

  else
  {
    v10 = @", ";
  }

  v11 = [v9 componentsJoinedByString:v10];

  return v11;
}

void __77__WBSCyclerTestSuiteBookmarkAuxiliary__attributeStringForBookmark_multiline___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", a2, a3];
  [v3 addObject:v4];
}

- (id)_expandedDescriptionForBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = MEMORY[0x1E696AD60];
  title = [bookmarkCopy title];
  v8 = title;
  if (isKindOfClass)
  {
    v9 = [bookmarkCopy url];
    v10 = [v6 stringWithFormat:@"<Leaf title=%@ url=%@>", v8, v9];
  }

  else
  {
    v10 = [v6 stringWithFormat:@"<List title=%@>", title];
  }

  [v10 appendString:@"\n"];
  v11 = [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _attributeStringForBookmark:bookmarkCopy multiline:1];
  [v10 appendString:v11];

  return v10;
}

- (id)_formattedStringForBookmark:(id)bookmark indentationLevel:(unint64_t)level
{
  v22 = *MEMORY[0x1E69E9840];
  bookmarkCopy = bookmark;
  v7 = [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _descriptionForBookmark:bookmarkCopy];
  v8 = [v7 mutableCopy];

  if (level)
  {
    levelCopy = level;
    do
    {
      [v8 insertString:@"    " atIndex:0];
      --levelCopy;
    }

    while (levelCopy);
  }

  [v8 appendString:@"\n"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = bookmarkCopy;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _formattedStringForBookmark:*(*(&v17 + 1) + 8 * i) indentationLevel:level + 1, v17];
          [v8 appendString:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }

  return v8;
}

- (void)_attemptInitialClearWithTarget:(id)target options:(id)options completionHandler:(id)handler
{
  targetCopy = target;
  optionsCopy = options;
  handlerCopy = handler;
  if (!self->_initialClearOperation)
  {
    v11 = [WBSCyclerOperation alloc];
    *&v12 = self->_operationBackoffRatio;
    v13 = [(WBSCyclerOperation *)v11 initWithMaximumNumberOfAttempts:5 backoffRatio:v12];
    initialClearOperation = self->_initialClearOperation;
    self->_initialClearOperation = v13;
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __96__WBSCyclerTestSuiteBookmarkAuxiliary__attemptInitialClearWithTarget_options_completionHandler___block_invoke;
  v22[3] = &unk_1E7FC5418;
  v23 = optionsCopy;
  v24 = targetCopy;
  v15 = self->_initialClearOperation;
  v16 = targetCopy;
  v17 = optionsCopy;
  [(WBSCyclerOperation *)v15 setBlock:v22];
  v18 = self->_initialClearOperation;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __96__WBSCyclerTestSuiteBookmarkAuxiliary__attemptInitialClearWithTarget_options_completionHandler___block_invoke_47;
  v20[3] = &unk_1E7FC5440;
  v20[4] = self;
  v21 = handlerCopy;
  v19 = handlerCopy;
  [(WBSCyclerOperation *)v18 executeWithResultHandler:v20];
}

void __96__WBSCyclerTestSuiteBookmarkAuxiliary__attemptInitialClearWithTarget_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = WBS_LOG_CHANNEL_PREFIXCycler(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Clearing all local and remote bookmarks before starting cycler", v9, 2u);
  }

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"forCloudKitTest"];
  v7 = [v6 isEqual:MEMORY[0x1E695E118]];

  if (v7)
  {
    v8 = 3;
  }

  else
  {
    v8 = 1;
  }

  [*(a1 + 40) clearBookmarksWithOptions:v8 completionHandler:v3];
}

void __96__WBSCyclerTestSuiteBookmarkAuxiliary__attemptInitialClearWithTarget_options_completionHandler___block_invoke_47(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 2:
      v5 = WBS_LOG_CHANNEL_PREFIXCycler(a1, 2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __96__WBSCyclerTestSuiteBookmarkAuxiliary__attemptInitialClearWithTarget_options_completionHandler___block_invoke_47_cold_1();
      }

      v6 = *(a1 + 40);
      v7 = [*(a1 + 32) _errorWithCode:1];
      (*(v6 + 16))(v6, v7);

      break;
    case 1:
      v4 = WBS_LOG_CHANNEL_PREFIXCycler(a1, 1);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        __96__WBSCyclerTestSuiteBookmarkAuxiliary__attemptInitialClearWithTarget_options_completionHandler___block_invoke_47_cold_2();
      }

      (*(*(a1 + 40) + 16))();
      break;
    case 0:
      v3 = *(*(a1 + 40) + 16);

      v3();
      break;
  }
}

- (void)_attemptResetToDAVModeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  resetToDAVModeOperation = self->_resetToDAVModeOperation;
  if (!resetToDAVModeOperation)
  {
    v6 = [WBSCyclerOperation alloc];
    *&v7 = self->_operationBackoffRatio;
    v8 = [(WBSCyclerOperation *)v6 initWithMaximumNumberOfAttempts:5 backoffRatio:v7];
    v9 = self->_resetToDAVModeOperation;
    self->_resetToDAVModeOperation = v8;

    [(WBSCyclerOperation *)self->_resetToDAVModeOperation setBlock:&__block_literal_global_43];
    resetToDAVModeOperation = self->_resetToDAVModeOperation;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__WBSCyclerTestSuiteBookmarkAuxiliary__attemptResetToDAVModeWithCompletionHandler___block_invoke_52;
  v11[3] = &unk_1E7FC5440;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(WBSCyclerOperation *)resetToDAVModeOperation executeWithResultHandler:v11];
}

void __83__WBSCyclerTestSuiteBookmarkAuxiliary__attemptResetToDAVModeWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXCycler(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "Resetting bookmark database back to DAV mode", buf, 2u);
  }

  v5 = [MEMORY[0x1E69C8A08] sharedProxy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__WBSCyclerTestSuiteBookmarkAuxiliary__attemptResetToDAVModeWithCompletionHandler___block_invoke_50;
  v7[3] = &unk_1E7FB8300;
  v8 = v2;
  v6 = v2;
  [v5 resetToDAVDatabaseWithCompletionHandler:v7];
}

void __83__WBSCyclerTestSuiteBookmarkAuxiliary__attemptResetToDAVModeWithCompletionHandler___block_invoke_50(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = WBS_LOG_CHANNEL_PREFIXCycler(v3, v4);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __83__WBSCyclerTestSuiteBookmarkAuxiliary__attemptResetToDAVModeWithCompletionHandler___block_invoke_50_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_INFO, "Reset bookmark database to DAV mode successfully", v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __83__WBSCyclerTestSuiteBookmarkAuxiliary__attemptResetToDAVModeWithCompletionHandler___block_invoke_52(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 2:
      v5 = WBS_LOG_CHANNEL_PREFIXCycler(a1, 2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __83__WBSCyclerTestSuiteBookmarkAuxiliary__attemptResetToDAVModeWithCompletionHandler___block_invoke_52_cold_1();
      }

      v6 = *(a1 + 40);
      v7 = [*(a1 + 32) _errorWithCode:3];
      (*(v6 + 16))(v6, v7);

      break;
    case 1:
      v4 = WBS_LOG_CHANNEL_PREFIXCycler(a1, 1);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        __83__WBSCyclerTestSuiteBookmarkAuxiliary__attemptResetToDAVModeWithCompletionHandler___block_invoke_52_cold_2();
      }

      (*(*(a1 + 40) + 16))();
      break;
    case 0:
      v3 = *(*(a1 + 40) + 16);

      v3();
      break;
  }
}

- (void)_attemptToGenerateDAVServerIDsForExistingBookmarksWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  generateDAVServerIDsForExistingBookmarksOperation = self->_generateDAVServerIDsForExistingBookmarksOperation;
  if (!generateDAVServerIDsForExistingBookmarksOperation)
  {
    v6 = [WBSCyclerOperation alloc];
    *&v7 = self->_operationBackoffRatio;
    v8 = [(WBSCyclerOperation *)v6 initWithMaximumNumberOfAttempts:5 backoffRatio:v7];
    v9 = self->_generateDAVServerIDsForExistingBookmarksOperation;
    self->_generateDAVServerIDsForExistingBookmarksOperation = v8;

    [(WBSCyclerOperation *)self->_generateDAVServerIDsForExistingBookmarksOperation setBlock:&__block_literal_global_54];
    generateDAVServerIDsForExistingBookmarksOperation = self->_generateDAVServerIDsForExistingBookmarksOperation;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __111__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToGenerateDAVServerIDsForExistingBookmarksWithCompletionHandler___block_invoke_56;
  v11[3] = &unk_1E7FC5440;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(WBSCyclerOperation *)generateDAVServerIDsForExistingBookmarksOperation executeWithResultHandler:v11];
}

void __111__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToGenerateDAVServerIDsForExistingBookmarksWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXCycler(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "Generating DAV server IDs for current bookmarks", buf, 2u);
  }

  v5 = [MEMORY[0x1E69C8A08] sharedProxy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __111__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToGenerateDAVServerIDsForExistingBookmarksWithCompletionHandler___block_invoke_55;
  v7[3] = &unk_1E7FB8300;
  v8 = v2;
  v6 = v2;
  [v5 generateDAVServerIDsForExistingBookmarksWithCompletionHandler:v7];
}

void __111__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToGenerateDAVServerIDsForExistingBookmarksWithCompletionHandler___block_invoke_55(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = WBS_LOG_CHANNEL_PREFIXCycler(v3, v4);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __111__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToGenerateDAVServerIDsForExistingBookmarksWithCompletionHandler___block_invoke_55_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_INFO, "Generated DAV server IDs for existing bookmarks", v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __111__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToGenerateDAVServerIDsForExistingBookmarksWithCompletionHandler___block_invoke_56(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 2:
      v5 = WBS_LOG_CHANNEL_PREFIXCycler(a1, 2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __111__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToGenerateDAVServerIDsForExistingBookmarksWithCompletionHandler___block_invoke_56_cold_1();
      }

      v6 = *(a1 + 40);
      v7 = [*(a1 + 32) _errorWithCode:4];
      (*(v6 + 16))(v6, v7);

      break;
    case 1:
      v4 = WBS_LOG_CHANNEL_PREFIXCycler(a1, 1);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        __111__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToGenerateDAVServerIDsForExistingBookmarksWithCompletionHandler___block_invoke_56_cold_2();
      }

      (*(*(a1 + 40) + 16))();
      break;
    case 0:
      v3 = *(*(a1 + 40) + 16);

      v3();
      break;
  }
}

- (void)_attemptCloudKitMigrationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  cloudKitMigrationOperation = self->_cloudKitMigrationOperation;
  if (!cloudKitMigrationOperation)
  {
    v6 = [WBSCyclerOperation alloc];
    *&v7 = self->_operationBackoffRatio;
    v8 = [(WBSCyclerOperation *)v6 initWithMaximumNumberOfAttempts:5 backoffRatio:v7];
    v9 = self->_cloudKitMigrationOperation;
    self->_cloudKitMigrationOperation = v8;

    [(WBSCyclerOperation *)self->_cloudKitMigrationOperation setBlock:&__block_literal_global_58];
    cloudKitMigrationOperation = self->_cloudKitMigrationOperation;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__WBSCyclerTestSuiteBookmarkAuxiliary__attemptCloudKitMigrationWithCompletionHandler___block_invoke_60;
  v11[3] = &unk_1E7FC5440;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(WBSCyclerOperation *)cloudKitMigrationOperation executeWithResultHandler:v11];
}

void __86__WBSCyclerTestSuiteBookmarkAuxiliary__attemptCloudKitMigrationWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXCycler(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "Migrating from DAV to CloudKit", buf, 2u);
  }

  v5 = [MEMORY[0x1E69C8A08] sharedProxy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__WBSCyclerTestSuiteBookmarkAuxiliary__attemptCloudKitMigrationWithCompletionHandler___block_invoke_59;
  v7[3] = &unk_1E7FB8300;
  v8 = v2;
  v6 = v2;
  [v5 migrateToCloudKitWithCompletionHandler:v7];
}

void __86__WBSCyclerTestSuiteBookmarkAuxiliary__attemptCloudKitMigrationWithCompletionHandler___block_invoke_59(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = WBS_LOG_CHANNEL_PREFIXCycler(v3, v4);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __86__WBSCyclerTestSuiteBookmarkAuxiliary__attemptCloudKitMigrationWithCompletionHandler___block_invoke_59_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_INFO, "Migrated from DAV to CloudKit successfully", v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __86__WBSCyclerTestSuiteBookmarkAuxiliary__attemptCloudKitMigrationWithCompletionHandler___block_invoke_60(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 2:
      v5 = WBS_LOG_CHANNEL_PREFIXCycler(a1, 2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __86__WBSCyclerTestSuiteBookmarkAuxiliary__attemptCloudKitMigrationWithCompletionHandler___block_invoke_60_cold_1();
      }

      v6 = *(a1 + 40);
      v7 = [*(a1 + 32) _errorWithCode:5];
      (*(v6 + 16))(v6, v7);

      break;
    case 1:
      v4 = WBS_LOG_CHANNEL_PREFIXCycler(a1, 1);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        __86__WBSCyclerTestSuiteBookmarkAuxiliary__attemptCloudKitMigrationWithCompletionHandler___block_invoke_60_cold_2();
      }

      (*(*(a1 + 40) + 16))();
      break;
    case 0:
      v3 = *(*(a1 + 40) + 16);

      v3();
      break;
  }
}

- (void)_attemptToClearDataWithOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  if (!self->_clearLocalDataOperation)
  {
    v8 = [WBSCyclerOperation alloc];
    *&v9 = self->_operationBackoffRatio;
    v10 = [(WBSCyclerOperation *)v8 initWithMaximumNumberOfAttempts:5 backoffRatio:v9];
    clearLocalDataOperation = self->_clearLocalDataOperation;
    self->_clearLocalDataOperation = v10;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __88__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToClearDataWithOptions_completionHandler___block_invoke;
  v18[3] = &unk_1E7FC5488;
  v19 = optionsCopy;
  v12 = self->_clearLocalDataOperation;
  v13 = optionsCopy;
  [(WBSCyclerOperation *)v12 setBlock:v18];
  v14 = self->_clearLocalDataOperation;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __88__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToClearDataWithOptions_completionHandler___block_invoke_62;
  v16[3] = &unk_1E7FC5440;
  v16[4] = self;
  v17 = handlerCopy;
  v15 = handlerCopy;
  [(WBSCyclerOperation *)v14 executeWithResultHandler:v16];
}

void __88__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToClearDataWithOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"includeMigrationState"];
  v5 = [v4 isEqual:MEMORY[0x1E695E118]];

  v8 = WBS_LOG_CHANNEL_PREFIXCycler(v6, v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v9)
    {
      *buf = 0;
      v10 = "Asking sync agent to clear local data and migration state";
LABEL_6:
      _os_log_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_INFO, v10, buf, 2u);
    }
  }

  else if (v9)
  {
    *buf = 0;
    v10 = "Asking sync agent to clear local data";
    goto LABEL_6;
  }

  v11 = [MEMORY[0x1E69C8A08] sharedProxy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToClearDataWithOptions_completionHandler___block_invoke_61;
  v13[3] = &unk_1E7FB8300;
  v14 = v3;
  v12 = v3;
  [v11 clearLocalDataIncludingMigrationState:v5 completionHandler:v13];
}

void __88__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToClearDataWithOptions_completionHandler___block_invoke_61(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = WBS_LOG_CHANNEL_PREFIXCycler(v3, v4);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __88__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToClearDataWithOptions_completionHandler___block_invoke_61_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_INFO, "Cleared local data successfully", v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __88__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToClearDataWithOptions_completionHandler___block_invoke_62(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 2:
      v5 = WBS_LOG_CHANNEL_PREFIXCycler(a1, 2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __88__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToClearDataWithOptions_completionHandler___block_invoke_62_cold_1();
      }

      v6 = *(a1 + 40);
      v7 = [*(a1 + 32) _errorWithCode:6];
      (*(v6 + 16))(v6, v7);

      break;
    case 1:
      v4 = WBS_LOG_CHANNEL_PREFIXCycler(a1, 1);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        __88__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToClearDataWithOptions_completionHandler___block_invoke_62_cold_2();
      }

      break;
    case 0:
      v3 = *(*(a1 + 40) + 16);

      v3();
      break;
  }
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

  v10 = [(WBSCyclerTestSuiteBookmarkAuxiliary *)self _descriptionForErrorCode:code];
  [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x1E696A578]];

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WBSCyclerTestSuiteBookmarkAuxiliaryErrorDomain" code:code userInfo:v9];

  return v11;
}

- (id)_descriptionForErrorCode:(int64_t)code
{
  if ((code - 1) > 5)
  {
    return @"Test target's bookmark state does not match the expected state";
  }

  else
  {
    return off_1E7FC54A8[code - 1];
  }
}

- (void)validateBookmarks:expectingBookmarks:context:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)validateBookmarks:expectingBookmarks:context:.cold.2()
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)validateBookmarks:expectingBookmarks:context:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)validateBookmarks:expectingBookmarks:context:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __96__WBSCyclerTestSuiteBookmarkAuxiliary__attemptInitialClearWithTarget_options_completionHandler___block_invoke_47_cold_2()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_9(&dword_1BB6F3000, v3, v4, "Was not able to clear bookmarks. Will try again after %.2f seconds.", v5, v6, v7, v8);
}

void __83__WBSCyclerTestSuiteBookmarkAuxiliary__attemptResetToDAVModeWithCompletionHandler___block_invoke_52_cold_2()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_9(&dword_1BB6F3000, v3, v4, "Was not able to reset bookmark database to DAV mode. Will try again after %.2f seconds.", v5, v6, v7, v8);
}

void __111__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToGenerateDAVServerIDsForExistingBookmarksWithCompletionHandler___block_invoke_56_cold_2()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_9(&dword_1BB6F3000, v3, v4, "Was not able to generate DAV server IDs for existing bookmarks. Will try again after %.2f seconds.", v5, v6, v7, v8);
}

void __86__WBSCyclerTestSuiteBookmarkAuxiliary__attemptCloudKitMigrationWithCompletionHandler___block_invoke_60_cold_2()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_9(&dword_1BB6F3000, v3, v4, "Was not able to migrate from DAV to CloudKit. Will try again after %.2f seconds.", v5, v6, v7, v8);
}

void __88__WBSCyclerTestSuiteBookmarkAuxiliary__attemptToClearDataWithOptions_completionHandler___block_invoke_62_cold_2()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_9(&dword_1BB6F3000, v3, v4, "Was not able to clear local data. Will try again after %.2f seconds.", v5, v6, v7, v8);
}

@end