@interface WBSCyclerModifyBookmarkOperation
- (void)_changeTitleOfBookmark:(id)bookmark withContext:(id)context completionHandler:(id)handler;
- (void)_changeURLOfBookmark:(id)bookmark withContext:(id)context completionHandler:(id)handler;
- (void)executeWithContext:(id)context completionHandler:(id)handler;
@end

@implementation WBSCyclerModifyBookmarkOperation

- (void)executeWithContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  randomValidStrictDescendantOfTopLevelItem = [contextCopy randomValidStrictDescendantOfTopLevelItem];
  if (randomValidStrictDescendantOfTopLevelItem)
  {
    array = [MEMORY[0x1E695DF70] array];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __73__WBSCyclerModifyBookmarkOperation_executeWithContext_completionHandler___block_invoke;
    v24[3] = &unk_1E7FC51C0;
    v24[4] = self;
    v10 = randomValidStrictDescendantOfTopLevelItem;
    v25 = v10;
    v11 = contextCopy;
    v26 = v11;
    v12 = handlerCopy;
    v27 = v12;
    v13 = MEMORY[0x1BFB13CE0](v24);
    [array addObject:v13];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __73__WBSCyclerModifyBookmarkOperation_executeWithContext_completionHandler___block_invoke_2;
      v19 = &unk_1E7FC51C0;
      selfCopy = self;
      v21 = v10;
      v22 = v11;
      v23 = v12;
      v14 = MEMORY[0x1BFB13CE0](&v16);
      [array addObject:{v14, v16, v17, v18, v19, selfCopy}];
    }

    v15 = [WBSCyclerRandomnessUtilities randomElementOfArray:array];
    v15[2]();
  }

  else
  {
    array = [contextCopy topLevelItem];
    (*(handlerCopy + 2))(handlerCopy, array);
  }
}

- (void)_changeTitleOfBookmark:(id)bookmark withContext:(id)context completionHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  bookmarkCopy = bookmark;
  handlerCopy = handler;
  contextCopy = context;
  randomItemTitle = [contextCopy randomItemTitle];
  uniqueIdentifier = [bookmarkCopy uniqueIdentifier];
  v13 = WBS_LOG_CHANNEL_PREFIXCycler(uniqueIdentifier, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    title = [bookmarkCopy title];
    *buf = 138543874;
    v28 = uniqueIdentifier;
    v29 = 2114;
    v30 = title;
    v31 = 2114;
    v32 = randomItemTitle;
    _os_log_impl(&dword_1BB6F3000, v14, OS_LOG_TYPE_INFO, "Changing title of bookmark (identifier: %{public}@) from %{public}@ to %{public}@", buf, 0x20u);
  }

  topLevelItem = [contextCopy topLevelItem];
  testTarget = [contextCopy testTarget];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __89__WBSCyclerModifyBookmarkOperation__changeTitleOfBookmark_withContext_completionHandler___block_invoke;
  v22[3] = &unk_1E7FC5038;
  v23 = topLevelItem;
  v24 = uniqueIdentifier;
  v25 = randomItemTitle;
  v26 = handlerCopy;
  v18 = randomItemTitle;
  v19 = uniqueIdentifier;
  v20 = topLevelItem;
  v21 = handlerCopy;
  [testTarget setTitle:v18 forBookmarkWithIdentifier:v19 reply:v22];
}

void __89__WBSCyclerModifyBookmarkOperation__changeTitleOfBookmark_withContext_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v5 = [*(a1 + 32) copy];
    v3 = [v5 descendantWithUniqueIdentifier:*(a1 + 40)];
    [v3 setTitle:*(a1 + 48)];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 56) + 16);

    v4();
  }
}

- (void)_changeURLOfBookmark:(id)bookmark withContext:(id)context completionHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  bookmarkCopy = bookmark;
  handlerCopy = handler;
  contextCopy = context;
  v10 = +[WBSCyclerRandomnessUtilities randomURL];
  uniqueIdentifier = [bookmarkCopy uniqueIdentifier];
  v13 = WBS_LOG_CHANNEL_PREFIXCycler(uniqueIdentifier, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    v15 = [bookmarkCopy url];
    *buf = 138543874;
    v28 = uniqueIdentifier;
    v29 = 2114;
    v30 = v15;
    v31 = 2114;
    v32 = v10;
    _os_log_impl(&dword_1BB6F3000, v14, OS_LOG_TYPE_INFO, "Changing URL of bookmark (identifier: %{public}@) from %{public}@ to %{public}@", buf, 0x20u);
  }

  topLevelItem = [contextCopy topLevelItem];
  testTarget = [contextCopy testTarget];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __87__WBSCyclerModifyBookmarkOperation__changeURLOfBookmark_withContext_completionHandler___block_invoke;
  v22[3] = &unk_1E7FC5038;
  v23 = topLevelItem;
  v24 = uniqueIdentifier;
  v25 = v10;
  v26 = handlerCopy;
  v18 = v10;
  v19 = uniqueIdentifier;
  v20 = topLevelItem;
  v21 = handlerCopy;
  [testTarget setURL:v18 forBookmarkWithIdentifier:v19 reply:v22];
}

void __87__WBSCyclerModifyBookmarkOperation__changeURLOfBookmark_withContext_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v5 = [*(a1 + 32) copy];
    v3 = [v5 descendantWithUniqueIdentifier:*(a1 + 40)];
    [v3 setURL:*(a1 + 48)];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 56) + 16);

    v4();
  }
}

@end