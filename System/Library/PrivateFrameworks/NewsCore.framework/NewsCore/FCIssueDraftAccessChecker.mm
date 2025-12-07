@interface FCIssueDraftAccessChecker
- (BOOL)canSynchronouslyCheckAccessToItem:(id)item;
- (BOOL)hasAccessToItem:(id)item blockedReason:(unint64_t *)reason error:(id *)error;
- (BOOL)shouldShowAllDraftContent;
- (FCIssueDraftAccessChecker)init;
- (FCIssueDraftAccessChecker)initWithPrivateChannelMembershipController:(id)controller;
- (void)checkAccessToItem:(id)item withQualityOfService:(int64_t)service completion:(id)completion;
@end

@implementation FCIssueDraftAccessChecker

- (FCIssueDraftAccessChecker)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCIssueDraftAccessChecker init]";
    v10 = 2080;
    v11 = "FCIssueDraftAccessChecker.m";
    v12 = 1024;
    v13 = 24;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCIssueDraftAccessChecker init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCIssueDraftAccessChecker)initWithPrivateChannelMembershipController:(id)controller
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (!controllerCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "privateChannelMembershipController != nil"];
    *buf = 136315906;
    v12 = "[FCIssueDraftAccessChecker initWithPrivateChannelMembershipController:]";
    v13 = 2080;
    v14 = "FCIssueDraftAccessChecker.m";
    v15 = 1024;
    v16 = 29;
    v17 = 2114;
    v18 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v10.receiver = self;
  v10.super_class = FCIssueDraftAccessChecker;
  v6 = [(FCAccessChecker *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_privateChannelMembershipController, controller);
  }

  return v7;
}

- (BOOL)canSynchronouslyCheckAccessToItem:(id)item
{
  v16 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (!itemCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "item != nil"];
    *buf = 136315906;
    v9 = "[FCIssueDraftAccessChecker canSynchronouslyCheckAccessToItem:]";
    v10 = 2080;
    v11 = "FCIssueDraftAccessChecker.m";
    v12 = 1024;
    v13 = 42;
    v14 = 2114;
    v15 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (![itemCopy isDraft] || objc_msgSend(itemCopy, "isDraft") && (objc_msgSend(itemCopy, "isLocalDraft") & 1) != 0)
  {
    shouldShowAllDraftContent = 1;
  }

  else if ([itemCopy isDraft])
  {
    shouldShowAllDraftContent = [(FCIssueDraftAccessChecker *)self shouldShowAllDraftContent];
  }

  else
  {
    shouldShowAllDraftContent = 0;
  }

  return shouldShowAllDraftContent;
}

- (BOOL)hasAccessToItem:(id)item blockedReason:(unint64_t *)reason error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (!itemCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "item != nil"];
    *buf = 136315906;
    v13 = "[FCIssueDraftAccessChecker hasAccessToItem:blockedReason:error:]";
    v14 = 2080;
    v15 = "FCIssueDraftAccessChecker.m";
    v16 = 1024;
    v17 = 50;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (![itemCopy isDraft] || objc_msgSend(itemCopy, "isDraft") && (objc_msgSend(itemCopy, "isLocalDraft") & 1) != 0 || -[FCIssueDraftAccessChecker shouldShowAllDraftContent](self, "shouldShowAllDraftContent"))
  {
    LOBYTE(error) = 1;
  }

  else if (error)
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FCAccessCheckerErrorDomain" code:0 userInfo:0];
    v10 = *error;
    *error = v9;

    LOBYTE(error) = 0;
  }

  return error;
}

- (void)checkAccessToItem:(id)item withQualityOfService:(int64_t)service completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  completionCopy = completion;
  if (!itemCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "item != nil"];
    *buf = 136315906;
    v19 = "[FCIssueDraftAccessChecker checkAccessToItem:withQualityOfService:completion:]";
    v20 = 2080;
    v21 = "FCIssueDraftAccessChecker.m";
    v22 = 1024;
    v23 = 72;
    v24 = 2114;
    v25 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (completionCopy)
    {
      goto LABEL_6;
    }
  }

  else if (completionCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completion != nil"];
    *buf = 136315906;
    v19 = "[FCIssueDraftAccessChecker checkAccessToItem:withQualityOfService:completion:]";
    v20 = 2080;
    v21 = "FCIssueDraftAccessChecker.m";
    v22 = 1024;
    v23 = 73;
    v24 = 2114;
    v25 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if ([(FCIssueDraftAccessChecker *)self canSynchronouslyCheckAccessToItem:itemCopy])
  {
    v17.receiver = self;
    v17.super_class = FCIssueDraftAccessChecker;
    [(FCAccessChecker *)&v17 checkAccessToItem:itemCopy withQualityOfService:service completion:completionCopy];
  }

  else
  {
    privateChannelMembershipController = [(FCIssueDraftAccessChecker *)self privateChannelMembershipController];
    identifier = [itemCopy identifier];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __79__FCIssueDraftAccessChecker_checkAccessToItem_withQualityOfService_completion___block_invoke;
    v14[3] = &unk_1E7C39930;
    v15 = itemCopy;
    v16 = completionCopy;
    [privateChannelMembershipController isAllowedToSeeIssueID:identifier completionBlock:v14];
  }
}

uint64_t __79__FCIssueDraftAccessChecker_checkAccessToItem_withQualityOfService_completion___block_invoke(uint64_t a1, char a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v3 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v6 = [v4 identifier];
      v7 = [*(a1 + 32) sourceChannel];
      v8 = [v7 identifier];
      v10 = 138543618;
      v11 = v6;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "item %{public}@ is not accessible because it requires draft membership in channel %{public}@", &v10, 0x16u);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

- (BOOL)shouldShowAllDraftContent
{
  v2 = NFInternalBuild();
  if (v2)
  {
    v3 = NewsCoreUserDefaults();
    v4 = [v3 BOOLForKey:@"news.draft_content.show_drafts"];

    LOBYTE(v2) = v4;
  }

  return v2;
}

@end