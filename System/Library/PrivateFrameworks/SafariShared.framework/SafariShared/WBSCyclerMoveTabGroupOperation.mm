@interface WBSCyclerMoveTabGroupOperation
- (void)executeWithContext:(id)context completionHandler:(id)handler;
@end

@implementation WBSCyclerMoveTabGroupOperation

- (void)executeWithContext:(id)context completionHandler:(id)handler
{
  v42 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  tabGroupsParent = [contextCopy tabGroupsParent];
  topLevelItem = [contextCopy topLevelItem];
  randomProfileDescendant = [topLevelItem randomProfileDescendant];

  if (tabGroupsParent && randomProfileDescendant)
  {
    randomTabGroupDescendant = [tabGroupsParent randomTabGroupDescendant];
    numberOfChildren = [randomProfileDescendant numberOfChildren];
    if (numberOfChildren)
    {
      numberOfChildren = +[WBSCyclerRandomnessUtilities randomIntegerWithUpperBound:](WBSCyclerRandomnessUtilities, "randomIntegerWithUpperBound:", [randomProfileDescendant numberOfChildren]);
      v13 = numberOfChildren;
    }

    else
    {
      v13 = 0;
    }

    v15 = WBS_LOG_CHANNEL_PREFIXCycler(numberOfChildren, v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      [randomTabGroupDescendant title];
      v17 = v24 = v13;
      uniqueIdentifier = [randomTabGroupDescendant uniqueIdentifier];
      title = [tabGroupsParent title];
      title2 = [randomProfileDescendant title];
      *buf = 138544386;
      v33 = v17;
      v34 = 2114;
      v35 = uniqueIdentifier;
      v36 = 2114;
      v37 = title;
      v38 = 2114;
      v39 = title2;
      v40 = 2048;
      v41 = v24;
      _os_log_impl(&dword_1BB6F3000, v16, OS_LOG_TYPE_INFO, "Moving Tab Group with title %{public}@ (identifier: %{public}@) from profile with title %{public}@ to profile with title %{public}@ at index %lu", buf, 0x34u);

      v13 = v24;
    }

    testTarget = [contextCopy testTarget];
    uniqueIdentifier2 = [randomTabGroupDescendant uniqueIdentifier];
    uniqueIdentifier3 = [randomProfileDescendant uniqueIdentifier];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __71__WBSCyclerMoveTabGroupOperation_executeWithContext_completionHandler___block_invoke;
    v25[3] = &unk_1E7FC5120;
    v30 = handlerCopy;
    v26 = contextCopy;
    v27 = tabGroupsParent;
    v28 = randomProfileDescendant;
    v29 = randomTabGroupDescendant;
    v31 = v13;
    topLevelItem2 = randomTabGroupDescendant;
    [testTarget moveBookmarkWithIdentifier:uniqueIdentifier2 intoListWithIdentifier:uniqueIdentifier3 atIndex:v13 reply:v25];
  }

  else
  {
    topLevelItem2 = [contextCopy topLevelItem];
    (*(handlerCopy + 2))(handlerCopy, topLevelItem2);
  }
}

void __71__WBSCyclerMoveTabGroupOperation_executeWithContext_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) topLevelItem];
    v11 = [v3 copy];

    v4 = [*(a1 + 40) uniqueIdentifier];
    v5 = [v11 descendantWithUniqueIdentifier:v4];

    v6 = [*(a1 + 48) uniqueIdentifier];
    v7 = [v11 descendantWithUniqueIdentifier:v6];

    v8 = [*(a1 + 56) uniqueIdentifier];
    v9 = [v11 descendantWithUniqueIdentifier:v8];

    [v5 deleteChild:v9];
    [v7 insertChild:v9 atIndex:*(a1 + 72)];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v10 = *(a1 + 64);
    v11 = [*(a1 + 32) topLevelItem];
    (*(v10 + 16))(v10);
  }
}

@end