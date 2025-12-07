@interface WBSCyclerCreateProfileOperation
- (void)_createRandomProfileWithContext:(id)context completionHandler:(id)handler;
@end

@implementation WBSCyclerCreateProfileOperation

- (void)_createRandomProfileWithContext:(id)context completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  randomItemTitle = [contextCopy randomItemTitle];
  topLevelItem = [contextCopy topLevelItem];
  numberOfChildren = [topLevelItem numberOfChildren];

  v12 = WBS_LOG_CHANNEL_PREFIXCycler(v10, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v26 = randomItemTitle;
    v27 = 2048;
    v28 = numberOfChildren;
    _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_INFO, "Creating profile with title %{public}@ at index %lu", buf, 0x16u);
  }

  testTarget = [contextCopy testTarget];
  topLevelItem2 = [contextCopy topLevelItem];
  uniqueIdentifier = [topLevelItem2 uniqueIdentifier];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __85__WBSCyclerCreateProfileOperation__createRandomProfileWithContext_completionHandler___block_invoke;
  v19[3] = &unk_1E7FC5148;
  v20 = contextCopy;
  v21 = randomItemTitle;
  v22 = @"person";
  v23 = handlerCopy;
  v24 = numberOfChildren;
  v16 = randomItemTitle;
  v17 = contextCopy;
  v18 = handlerCopy;
  [testTarget createProfileWithTitle:v16 symbolName:@"person" inListWithIdentifier:uniqueIdentifier reply:v19];
}

void __85__WBSCyclerCreateProfileOperation__createRandomProfileWithContext_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v9 = a3;
  if (a2)
  {
    v5 = [*(a1 + 32) topLevelItem];
    v6 = [v5 copy];

    v7 = [(WBSCyclerItemRepresentation *)[WBSCyclerProfileRepresentation alloc] initWithTitle:*(a1 + 40) symbolImageName:*(a1 + 48) uniqueIdentifier:v9];
    [v6 insertChild:v7 atIndex:*(a1 + 64)];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v8 = *(a1 + 56);
    v6 = [*(a1 + 32) topLevelItem];
    (*(v8 + 16))(v8, v6);
  }
}

@end