@interface WBSCyclerDeleteBookmarkOperation
- (void)executeWithContext:(id)context completionHandler:(id)handler;
@end

@implementation WBSCyclerDeleteBookmarkOperation

- (void)executeWithContext:(id)context completionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  randomValidStrictDescendantOfTopLevelItem = [contextCopy randomValidStrictDescendantOfTopLevelItem];
  v8 = randomValidStrictDescendantOfTopLevelItem;
  if (randomValidStrictDescendantOfTopLevelItem)
  {
    uniqueIdentifier = [randomValidStrictDescendantOfTopLevelItem uniqueIdentifier];
    v11 = WBS_LOG_CHANNEL_PREFIXCycler(uniqueIdentifier, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = v11;
      title = [v8 title];
      *buf = 138543618;
      v21 = title;
      v22 = 2114;
      v23 = uniqueIdentifier;
      _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_INFO, "Deleting bookmark (title: %{public}@, identifier: %{public}@)", buf, 0x16u);
    }

    testTarget = [contextCopy testTarget];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __73__WBSCyclerDeleteBookmarkOperation_executeWithContext_completionHandler___block_invoke;
    v16[3] = &unk_1E7FC5170;
    v19 = handlerCopy;
    v17 = contextCopy;
    v18 = uniqueIdentifier;
    topLevelItem = uniqueIdentifier;
    [testTarget deleteBookmarkWithIdentifier:topLevelItem reply:v16];
  }

  else
  {
    topLevelItem = [contextCopy topLevelItem];
    (*(handlerCopy + 2))(handlerCopy, topLevelItem);
  }
}

void __73__WBSCyclerDeleteBookmarkOperation_executeWithContext_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) topLevelItem];
    v6 = [v3 copy];

    v4 = [v6 descendantWithUniqueIdentifier:*(a1 + 40)];
    [v6 deleteDescendant:v4];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = [*(a1 + 32) topLevelItem];
    (*(v5 + 16))(v5);
  }
}

@end