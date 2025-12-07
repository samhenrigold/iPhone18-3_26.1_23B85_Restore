@interface WBSCyclerModifyTabOperation
- (void)_modifyRandomTabGroupWithContext:(id)context completionHandler:(id)handler;
- (void)_modifyRandomTabInTabGroup:(id)group withContext:(id)context completionHandler:(id)handler;
- (void)_updateTitleOfTab:(id)tab withContext:(id)context completionHandler:(id)handler;
- (void)_updateURLOfTab:(id)tab withContext:(id)context completionHandler:(id)handler;
- (void)executeWithContext:(id)context completionHandler:(id)handler;
@end

@implementation WBSCyclerModifyTabOperation

- (void)executeWithContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  topLevelItem = [contextCopy topLevelItem];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__WBSCyclerModifyTabOperation_executeWithContext_completionHandler___block_invoke;
  v11[3] = &unk_1E7FC5198;
  v9 = contextCopy;
  v12 = v9;
  v10 = [v9 randomDescendantOfList:topLevelItem enforcingTitlePrefixValidity:1 passingTest:v11];

  if (v10 && [WBSCyclerRandomnessUtilities randomIntegerWithUpperBound:2])
  {
    [(WBSCyclerModifyTabOperation *)self _modifyRandomTabInTabGroup:v10 withContext:v9 completionHandler:handlerCopy];
  }

  else
  {
    [(WBSCyclerModifyTabOperation *)self _modifyRandomTabGroupWithContext:v9 completionHandler:handlerCopy];
  }
}

BOOL __68__WBSCyclerModifyTabOperation_executeWithContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) topLevelItem];
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v4 = [v3 randomTabDescendant];
    v6 = v4 != 0;
  }

LABEL_7:
  return v6;
}

- (void)_modifyRandomTabInTabGroup:(id)group withContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  randomTabDescendant = [group randomTabDescendant];
  if (randomTabDescendant)
  {
    if ([WBSCyclerRandomnessUtilities randomIntegerWithUpperBound:2])
    {
      [(WBSCyclerModifyTabOperation *)self _updateTitleOfTab:randomTabDescendant withContext:contextCopy completionHandler:handlerCopy];
    }

    else
    {
      [(WBSCyclerModifyTabOperation *)self _updateURLOfTab:randomTabDescendant withContext:contextCopy completionHandler:handlerCopy];
    }
  }

  else
  {
    topLevelItem = [contextCopy topLevelItem];
    handlerCopy[2](handlerCopy, topLevelItem);
  }
}

- (void)_updateTitleOfTab:(id)tab withContext:(id)context completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  tabCopy = tab;
  handlerCopy = handler;
  contextCopy = context;
  randomItemTitle = [contextCopy randomItemTitle];
  v12 = WBS_LOG_CHANNEL_PREFIXCycler(randomItemTitle, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    uniqueIdentifier = [tabCopy uniqueIdentifier];
    title = [tabCopy title];
    *buf = 138543874;
    v29 = uniqueIdentifier;
    v30 = 2114;
    v31 = title;
    v32 = 2114;
    v33 = randomItemTitle;
    _os_log_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_INFO, "Changing title of tab (identifier: %{public}@) from %{public}@ to %{public}@", buf, 0x20u);
  }

  topLevelItem = [contextCopy topLevelItem];
  testTarget = [contextCopy testTarget];

  uniqueIdentifier2 = [tabCopy uniqueIdentifier];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __79__WBSCyclerModifyTabOperation__updateTitleOfTab_withContext_completionHandler___block_invoke;
  v23[3] = &unk_1E7FC5038;
  v24 = topLevelItem;
  v25 = tabCopy;
  v26 = randomItemTitle;
  v27 = handlerCopy;
  v19 = randomItemTitle;
  v20 = tabCopy;
  v21 = topLevelItem;
  v22 = handlerCopy;
  [testTarget setTitle:v19 forBookmarkWithIdentifier:uniqueIdentifier2 reply:v23];
}

void __79__WBSCyclerModifyTabOperation__updateTitleOfTab_withContext_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v6 = [*(a1 + 32) copy];
    v3 = [*(a1 + 40) uniqueIdentifier];
    v4 = [v6 descendantWithUniqueIdentifier:v3];

    [v4 setTitle:*(a1 + 48)];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v5 = *(*(a1 + 56) + 16);

    v5();
  }
}

- (void)_updateURLOfTab:(id)tab withContext:(id)context completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  tabCopy = tab;
  handlerCopy = handler;
  contextCopy = context;
  v10 = +[WBSCyclerRandomnessUtilities randomURL];
  v12 = WBS_LOG_CHANNEL_PREFIXCycler(v10, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    uniqueIdentifier = [tabCopy uniqueIdentifier];
    v15 = [tabCopy url];
    *buf = 138543874;
    v29 = uniqueIdentifier;
    v30 = 2114;
    v31 = v15;
    v32 = 2114;
    v33 = v10;
    _os_log_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_INFO, "Changing URL of tab (identifier: %{public}@) from %{public}@ to %{public}@", buf, 0x20u);
  }

  topLevelItem = [contextCopy topLevelItem];
  testTarget = [contextCopy testTarget];

  uniqueIdentifier2 = [tabCopy uniqueIdentifier];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __77__WBSCyclerModifyTabOperation__updateURLOfTab_withContext_completionHandler___block_invoke;
  v23[3] = &unk_1E7FC5038;
  v24 = topLevelItem;
  v25 = tabCopy;
  v26 = v10;
  v27 = handlerCopy;
  v19 = v10;
  v20 = tabCopy;
  v21 = topLevelItem;
  v22 = handlerCopy;
  [testTarget setURL:v19 forBookmarkWithIdentifier:uniqueIdentifier2 reply:v23];
}

void __77__WBSCyclerModifyTabOperation__updateURLOfTab_withContext_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v6 = [*(a1 + 32) copy];
    v3 = [*(a1 + 40) uniqueIdentifier];
    v4 = [v6 descendantWithUniqueIdentifier:v3];

    [v4 setURL:*(a1 + 48)];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v5 = *(*(a1 + 56) + 16);

    v5();
  }
}

- (void)_modifyRandomTabGroupWithContext:(id)context completionHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  tabGroupsParent = [contextCopy tabGroupsParent];
  randomTabGroupDescendant = [tabGroupsParent randomTabGroupDescendant];
  if (randomTabGroupDescendant)
  {
    randomItemTitle = [contextCopy randomItemTitle];
    v11 = WBS_LOG_CHANNEL_PREFIXCycler(randomItemTitle, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = v11;
      uniqueIdentifier = [randomTabGroupDescendant uniqueIdentifier];
      title = [randomTabGroupDescendant title];
      *buf = 138543874;
      v27 = uniqueIdentifier;
      v28 = 2114;
      v29 = title;
      v30 = 2114;
      v31 = randomItemTitle;
      _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_INFO, "Changing title of tab group (identifier: %{public}@) from %{public}@ to %{public}@", buf, 0x20u);
    }

    topLevelItem = [contextCopy topLevelItem];
    testTarget = [contextCopy testTarget];
    uniqueIdentifier2 = [randomTabGroupDescendant uniqueIdentifier];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __82__WBSCyclerModifyTabOperation__modifyRandomTabGroupWithContext_completionHandler___block_invoke;
    v21[3] = &unk_1E7FC5038;
    v25 = handlerCopy;
    v22 = topLevelItem;
    v23 = randomTabGroupDescendant;
    v24 = randomItemTitle;
    v18 = randomItemTitle;
    v19 = topLevelItem;
    [testTarget setTitle:v18 forBookmarkWithIdentifier:uniqueIdentifier2 reply:v21];
  }

  else
  {
    topLevelItem2 = [contextCopy topLevelItem];
    (*(handlerCopy + 2))(handlerCopy, topLevelItem2);
  }
}

void __82__WBSCyclerModifyTabOperation__modifyRandomTabGroupWithContext_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v6 = [*(a1 + 32) copy];
    v3 = [*(a1 + 40) uniqueIdentifier];
    v4 = [v6 descendantWithUniqueIdentifier:v3];

    [v4 setTitle:*(a1 + 48)];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v5 = *(*(a1 + 56) + 16);

    v5();
  }
}

@end