@interface WBSCyclerMoveBookmarkOperation
- (void)executeWithContext:(id)context completionHandler:(id)handler;
@end

@implementation WBSCyclerMoveBookmarkOperation

- (void)executeWithContext:(id)context completionHandler:(id)handler
{
  v44 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  topLevelItem = [contextCopy topLevelItem];
  randomValidStrictDescendantOfTopLevelItem = [contextCopy randomValidStrictDescendantOfTopLevelItem];
  v9 = randomValidStrictDescendantOfTopLevelItem;
  if (randomValidStrictDescendantOfTopLevelItem)
  {
    v25 = handlerCopy;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __71__WBSCyclerMoveBookmarkOperation_executeWithContext_completionHandler___block_invoke;
    v32[3] = &unk_1E7FC5198;
    v10 = randomValidStrictDescendantOfTopLevelItem;
    v33 = v10;
    v11 = [contextCopy randomDescendantOfList:topLevelItem enforcingTitlePrefixValidity:1 passingTest:v32];
    v12 = +[WBSCyclerRandomnessUtilities randomIntegerWithUpperBound:](WBSCyclerRandomnessUtilities, "randomIntegerWithUpperBound:", [v11 numberOfChildren] + (objc_msgSend(v11, "containsChild:", v10) ^ 1));
    uniqueIdentifier = [v10 uniqueIdentifier];
    uniqueIdentifier2 = [v11 uniqueIdentifier];
    v16 = WBS_LOG_CHANNEL_PREFIXCycler(uniqueIdentifier2, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = v16;
      [v10 title];
      v18 = v24 = topLevelItem;
      title = [v11 title];
      uniqueIdentifier3 = [v11 uniqueIdentifier];
      *buf = 138544386;
      v35 = v18;
      v36 = 2114;
      v37 = uniqueIdentifier;
      v38 = 2114;
      v39 = title;
      v40 = 2114;
      v41 = uniqueIdentifier3;
      v42 = 1024;
      v43 = v12;
      _os_log_impl(&dword_1BB6F3000, v17, OS_LOG_TYPE_INFO, "Moving bookmark (title: %{public}@, identifier: %{public}@) into folder (title: %{public}@, identifier: %{public}@) at index %d", buf, 0x30u);

      topLevelItem = v24;
    }

    testTarget = [contextCopy testTarget];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __71__WBSCyclerMoveBookmarkOperation_executeWithContext_completionHandler___block_invoke_2;
    v26[3] = &unk_1E7FC50F8;
    handlerCopy = v25;
    v30 = v25;
    v27 = topLevelItem;
    v28 = uniqueIdentifier;
    v29 = uniqueIdentifier2;
    v31 = v12;
    v22 = uniqueIdentifier2;
    v23 = uniqueIdentifier;
    [testTarget moveBookmarkWithIdentifier:v23 intoListWithIdentifier:v22 atIndex:v12 reply:v26];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, topLevelItem);
  }
}

uint64_t __71__WBSCyclerMoveBookmarkOperation_executeWithContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || *(a1 + 32) == v3)
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [*(a1 + 32) containsDescendant:v3] ^ 1;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

void __71__WBSCyclerMoveBookmarkOperation_executeWithContext_completionHandler___block_invoke_2(uint64_t a1, char a2)
{
  if (a2)
  {
    v6 = [*(a1 + 32) copy];
    v3 = [v6 descendantWithUniqueIdentifier:*(a1 + 40)];
    v4 = [v6 descendantWithUniqueIdentifier:*(a1 + 48)];
    [v6 deleteDescendant:v3];
    [v4 insertChild:v3 atIndex:*(a1 + 64)];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v5 = *(*(a1 + 56) + 16);

    v5();
  }
}

@end