@interface WBSCyclerCreateTabGroupRelatedItemOperation
- (void)_createRandomTabGroupFavoriteWithContext:(id)context completionHandler:(id)handler;
- (void)_createRandomTabGroupWithContext:(id)context completionHandler:(id)handler;
- (void)_createRandomTabWithContext:(id)context completionHandler:(id)handler;
- (void)executeWithContext:(id)context completionHandler:(id)handler;
@end

@implementation WBSCyclerCreateTabGroupRelatedItemOperation

- (void)executeWithContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  tabGroupsParent = [contextCopy tabGroupsParent];
  v8 = [contextCopy randomDescendantOfList:tabGroupsParent enforcingTitlePrefixValidity:1 passingTest:&__block_literal_global_38];
  if (v8 && ![WBSCyclerRandomnessUtilities randomIntegerWithUpperBound:2])
  {
    if ([WBSCyclerRandomnessUtilities randomIntegerWithUpperBound:5])
    {
      [(WBSCyclerCreateTabGroupRelatedItemOperation *)self _createRandomTabGroupFavoriteWithContext:contextCopy completionHandler:handlerCopy];
    }

    else
    {
      [(WBSCyclerCreateTabGroupRelatedItemOperation *)self _createRandomTabWithContext:contextCopy completionHandler:handlerCopy];
    }
  }

  else
  {
    [(WBSCyclerCreateTabGroupRelatedItemOperation *)self _createRandomTabGroupWithContext:contextCopy completionHandler:handlerCopy];
  }
}

uint64_t __84__WBSCyclerCreateTabGroupRelatedItemOperation_executeWithContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_createRandomTabWithContext:(id)context completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  tabGroupsParent = [contextCopy tabGroupsParent];
  randomTabGroupDescendant = [tabGroupsParent randomTabGroupDescendant];
  if (randomTabGroupDescendant)
  {
    randomItemTitle = [contextCopy randomItemTitle];
    v10 = +[WBSCyclerRandomnessUtilities randomURL];
    v11 = +[WBSCyclerRandomnessUtilities randomIntegerWithUpperBound:](WBSCyclerRandomnessUtilities, "randomIntegerWithUpperBound:", [randomTabGroupDescendant numberOfTabs] + 1);
    v13 = WBS_LOG_CHANNEL_PREFIXCycler(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = v13;
      title = [randomTabGroupDescendant title];
      *buf = 138544130;
      v29 = randomItemTitle;
      v30 = 2114;
      v31 = v10;
      v32 = 2114;
      v33 = title;
      v34 = 2048;
      v35 = v11;
      _os_log_impl(&dword_1BB6F3000, v14, OS_LOG_TYPE_INFO, "Creating tab with title %{public}@ and URL %{public}@ in tab group with title %{public}@ at index %lu", buf, 0x2Au);
    }

    testTarget = [contextCopy testTarget];
    uniqueIdentifier = [randomTabGroupDescendant uniqueIdentifier];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __93__WBSCyclerCreateTabGroupRelatedItemOperation__createRandomTabWithContext_completionHandler___block_invoke;
    v21[3] = &unk_1E7FC5120;
    v26 = handlerCopy;
    v22 = contextCopy;
    v23 = randomTabGroupDescendant;
    v24 = v10;
    v25 = randomItemTitle;
    v27 = v11;
    v18 = randomItemTitle;
    v19 = v10;
    [testTarget createBookmarkWithTitle:v18 url:v19 inListWithIdentifier:uniqueIdentifier atIndex:v11 reply:v21];
  }

  else
  {
    topLevelItem = [contextCopy topLevelItem];
    (*(handlerCopy + 2))(handlerCopy, topLevelItem);
  }
}

void __93__WBSCyclerCreateTabGroupRelatedItemOperation__createRandomTabWithContext_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) topLevelItem];
    v13 = [v3 copy];

    v4 = [*(a1 + 40) uniqueIdentifier];
    v5 = [v13 descendantWithUniqueIdentifier:v4];

    v6 = [WBSCyclerBookmarkLeafRepresentation alloc];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = [MEMORY[0x1E696AFB0] UUID];
    v10 = [v9 UUIDString];
    v11 = [(WBSCyclerBookmarkLeafRepresentation *)v6 initWithURL:v7 title:v8 uniqueIdentifier:v10];

    [v5 insertChild:v11 atIndex:*(a1 + 72) + 1];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v12 = *(a1 + 64);
    v13 = [*(a1 + 32) topLevelItem];
    (*(v12 + 16))(v12);
  }
}

- (void)_createRandomTabGroupWithContext:(id)context completionHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  randomItemTitle = [contextCopy randomItemTitle];
  tabGroupsParent = [contextCopy tabGroupsParent];
  v9 = +[WBSCyclerRandomnessUtilities randomIntegerWithUpperBound:](WBSCyclerRandomnessUtilities, "randomIntegerWithUpperBound:", [tabGroupsParent numberOfChildren] + 1);
  v11 = WBS_LOG_CHANNEL_PREFIXCycler(v9, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    title = [tabGroupsParent title];
    *buf = 138543874;
    v27 = title;
    v28 = 2114;
    v29 = randomItemTitle;
    v30 = 2048;
    v31 = v9;
    _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_INFO, "Creating tab group in profile %{public}@ with title %{public}@ at index %lu", buf, 0x20u);
  }

  testTarget = [contextCopy testTarget];
  uniqueIdentifier = [tabGroupsParent uniqueIdentifier];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __98__WBSCyclerCreateTabGroupRelatedItemOperation__createRandomTabGroupWithContext_completionHandler___block_invoke;
  v20[3] = &unk_1E7FC50F8;
  v21 = contextCopy;
  v22 = randomItemTitle;
  v23 = tabGroupsParent;
  v24 = handlerCopy;
  v25 = v9;
  v16 = tabGroupsParent;
  v17 = randomItemTitle;
  v18 = contextCopy;
  v19 = handlerCopy;
  [testTarget createBookmarkListWithTitle:v17 inListWithIdentifier:uniqueIdentifier atIndex:v9 reply:v20];
}

void __98__WBSCyclerCreateTabGroupRelatedItemOperation__createRandomTabGroupWithContext_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [WBSCyclerTabGroupRepresentation alloc];
    v4 = *(a1 + 40);
    v5 = [MEMORY[0x1E696AFB0] UUID];
    v6 = [v5 UUIDString];
    v17 = [(WBSCyclerItemListRepresentation *)v3 initWithTitle:v4 uniqueIdentifier:v6];

    v7 = [WBSCyclerTopScopedBookmarkListRepresentation alloc];
    v8 = MEMORY[0x1E696AEC0];
    v9 = [(WBSCyclerItemRepresentation *)v17 uniqueIdentifier];
    v10 = [v8 stringWithFormat:@"TopScopedBookmarkList_%@", v9];
    v11 = [(WBSCyclerItemListRepresentation *)v7 initWithTitle:&stru_1F3A5E418 uniqueIdentifier:v10];

    [(WBSCyclerItemListRepresentation *)v17 insertChild:v11 atIndex:0];
    v12 = [*(a1 + 32) topLevelItem];
    v13 = [v12 copy];

    v14 = [*(a1 + 48) uniqueIdentifier];
    v15 = [v13 descendantWithUniqueIdentifier:v14];

    [v15 insertChild:v17 atIndex:*(a1 + 64)];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v16 = *(a1 + 56);
    v17 = [*(a1 + 32) topLevelItem];
    (*(v16 + 16))(v16);
  }
}

- (void)_createRandomTabGroupFavoriteWithContext:(id)context completionHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  tabGroupsParent = [contextCopy tabGroupsParent];
  randomTabGroupDescendant = [tabGroupsParent randomTabGroupDescendant];
  v9 = randomTabGroupDescendant;
  if (randomTabGroupDescendant)
  {
    topLevelItem2 = [randomTabGroupDescendant childAtIndex:0];
    if (topLevelItem2)
    {
      randomItemTitle = [contextCopy randomItemTitle];
      v12 = +[WBSCyclerRandomnessUtilities randomURL];
      v13 = +[WBSCyclerRandomnessUtilities randomIntegerWithUpperBound:](WBSCyclerRandomnessUtilities, "randomIntegerWithUpperBound:", [topLevelItem2 numberOfChildren] + 1);
      v15 = WBS_LOG_CHANNEL_PREFIXCycler(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = v15;
        title = [v9 title];
        *buf = 138544130;
        v31 = randomItemTitle;
        v32 = 2114;
        v33 = v12;
        v34 = 2114;
        v35 = title;
        v36 = 2048;
        v37 = v13;
        _os_log_impl(&dword_1BB6F3000, v16, OS_LOG_TYPE_INFO, "Creating Tab Group Favorite with title %{public}@ and URL %{public}@ in tab group with title %{public}@ at index %lu", buf, 0x2Au);
      }

      testTarget = [contextCopy testTarget];
      uniqueIdentifier = [topLevelItem2 uniqueIdentifier];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __106__WBSCyclerCreateTabGroupRelatedItemOperation__createRandomTabGroupFavoriteWithContext_completionHandler___block_invoke;
      v23[3] = &unk_1E7FC5120;
      v28 = handlerCopy;
      v24 = contextCopy;
      v25 = topLevelItem2;
      v26 = v12;
      v27 = randomItemTitle;
      v29 = v13;
      v20 = randomItemTitle;
      v21 = v12;
      [testTarget createBookmarkWithTitle:v20 url:v21 inListWithIdentifier:uniqueIdentifier atIndex:v13 reply:v23];
    }

    else
    {
      topLevelItem = [contextCopy topLevelItem];
      (*(handlerCopy + 2))(handlerCopy, topLevelItem);
    }
  }

  else
  {
    topLevelItem2 = [contextCopy topLevelItem];
    (*(handlerCopy + 2))(handlerCopy, topLevelItem2);
  }
}

void __106__WBSCyclerCreateTabGroupRelatedItemOperation__createRandomTabGroupFavoriteWithContext_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) topLevelItem];
    v13 = [v3 copy];

    v4 = [*(a1 + 40) uniqueIdentifier];
    v5 = [v13 descendantWithUniqueIdentifier:v4];

    v6 = [WBSCyclerBookmarkLeafRepresentation alloc];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = [MEMORY[0x1E696AFB0] UUID];
    v10 = [v9 UUIDString];
    v11 = [(WBSCyclerBookmarkLeafRepresentation *)v6 initWithURL:v7 title:v8 uniqueIdentifier:v10];

    [v5 insertChild:v11 atIndex:*(a1 + 72)];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v12 = *(a1 + 64);
    v13 = [*(a1 + 32) topLevelItem];
    (*(v12 + 16))(v12);
  }
}

@end