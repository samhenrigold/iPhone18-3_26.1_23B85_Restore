@interface WBSCyclerModifyProfileOperation
- (void)_updateIconOfProfile:(id)profile withContext:(id)context completionHandler:(id)handler;
- (void)_updateTitleOfProfile:(id)profile withContext:(id)context completionHandler:(id)handler;
- (void)executeWithContext:(id)context completionHandler:(id)handler;
@end

@implementation WBSCyclerModifyProfileOperation

- (void)executeWithContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  tabGroupsParent = [contextCopy tabGroupsParent];
  if (tabGroupsParent)
  {
    if ([WBSCyclerRandomnessUtilities randomIntegerWithUpperBound:2])
    {
      [(WBSCyclerModifyProfileOperation *)self _updateTitleOfProfile:tabGroupsParent withContext:contextCopy completionHandler:handlerCopy];
    }

    else
    {
      [(WBSCyclerModifyProfileOperation *)self _updateIconOfProfile:tabGroupsParent withContext:contextCopy completionHandler:handlerCopy];
    }
  }

  else
  {
    topLevelItem = [contextCopy topLevelItem];
    handlerCopy[2](handlerCopy, topLevelItem);
  }
}

- (void)_updateTitleOfProfile:(id)profile withContext:(id)context completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  handlerCopy = handler;
  contextCopy = context;
  randomItemTitle = [contextCopy randomItemTitle];
  v12 = WBS_LOG_CHANNEL_PREFIXCycler(randomItemTitle, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    uniqueIdentifier = [profileCopy uniqueIdentifier];
    title = [profileCopy title];
    *buf = 138543874;
    v29 = uniqueIdentifier;
    v30 = 2114;
    v31 = title;
    v32 = 2114;
    v33 = randomItemTitle;
    _os_log_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_INFO, "Changing title of profile (identifier: %{public}@) from %{public}@ to %{public}@", buf, 0x20u);
  }

  topLevelItem = [contextCopy topLevelItem];
  testTarget = [contextCopy testTarget];

  uniqueIdentifier2 = [profileCopy uniqueIdentifier];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __87__WBSCyclerModifyProfileOperation__updateTitleOfProfile_withContext_completionHandler___block_invoke;
  v23[3] = &unk_1E7FC5038;
  v24 = topLevelItem;
  v25 = profileCopy;
  v26 = randomItemTitle;
  v27 = handlerCopy;
  v19 = randomItemTitle;
  v20 = profileCopy;
  v21 = topLevelItem;
  v22 = handlerCopy;
  [testTarget setTitle:v19 forBookmarkWithIdentifier:uniqueIdentifier2 reply:v23];
}

void __87__WBSCyclerModifyProfileOperation__updateTitleOfProfile_withContext_completionHandler___block_invoke(uint64_t a1, char a2)
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

- (void)_updateIconOfProfile:(id)profile withContext:(id)context completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  handlerCopy = handler;
  contextCopy = context;
  randomSymbolImageName = [contextCopy randomSymbolImageName];
  v12 = WBS_LOG_CHANNEL_PREFIXCycler(randomSymbolImageName, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    uniqueIdentifier = [profileCopy uniqueIdentifier];
    symbolImageName = [profileCopy symbolImageName];
    *buf = 138543874;
    v29 = uniqueIdentifier;
    v30 = 2114;
    v31 = symbolImageName;
    v32 = 2114;
    v33 = randomSymbolImageName;
    _os_log_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_INFO, "Changing icon of profile (identifier: %{public}@) from %{public}@ to %{public}@", buf, 0x20u);
  }

  topLevelItem = [contextCopy topLevelItem];
  testTarget = [contextCopy testTarget];

  uniqueIdentifier2 = [profileCopy uniqueIdentifier];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __86__WBSCyclerModifyProfileOperation__updateIconOfProfile_withContext_completionHandler___block_invoke;
  v23[3] = &unk_1E7FC5038;
  v24 = topLevelItem;
  v25 = profileCopy;
  v26 = randomSymbolImageName;
  v27 = handlerCopy;
  v19 = randomSymbolImageName;
  v20 = profileCopy;
  v21 = topLevelItem;
  v22 = handlerCopy;
  [testTarget setSymbolImageName:v19 forBookmarkWithIdentifier:uniqueIdentifier2 reply:v23];
}

void __86__WBSCyclerModifyProfileOperation__updateIconOfProfile_withContext_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v6 = [*(a1 + 32) copy];
    v3 = [*(a1 + 40) uniqueIdentifier];
    v4 = [v6 descendantWithUniqueIdentifier:v3];

    [v4 setSymbolImageName:*(a1 + 48)];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v5 = *(*(a1 + 56) + 16);

    v5();
  }
}

@end