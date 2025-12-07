@interface FCRecipeDraftAccessChecker
- (BOOL)canSynchronouslyCheckAccessToItem:(id)item;
- (BOOL)hasAccessToItem:(id)item blockedReason:(unint64_t *)reason error:(id *)error;
- (BOOL)shouldShowAllDraftContent;
- (FCRecipeDraftAccessChecker)init;
- (FCRecipeDraftAccessChecker)initWithPrivateChannelMembershipController:(id)controller;
- (void)checkAccessToItem:(id)item withQualityOfService:(int64_t)service completion:(id)completion;
@end

@implementation FCRecipeDraftAccessChecker

- (FCRecipeDraftAccessChecker)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCRecipeDraftAccessChecker init]";
    v10 = 2080;
    v11 = "FCRecipeDraftAccessChecker.m";
    v12 = 1024;
    v13 = 24;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCRecipeDraftAccessChecker init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCRecipeDraftAccessChecker)initWithPrivateChannelMembershipController:(id)controller
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (!controllerCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "privateChannelMembershipController != nil"];
    *buf = 136315906;
    v12 = "[FCRecipeDraftAccessChecker initWithPrivateChannelMembershipController:]";
    v13 = 2080;
    v14 = "FCRecipeDraftAccessChecker.m";
    v15 = 1024;
    v16 = 29;
    v17 = 2114;
    v18 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v10.receiver = self;
  v10.super_class = FCRecipeDraftAccessChecker;
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
  v14 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (!itemCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "item != nil"];
    *buf = 136315906;
    v7 = "[FCRecipeDraftAccessChecker canSynchronouslyCheckAccessToItem:]";
    v8 = 2080;
    v9 = "FCRecipeDraftAccessChecker.m";
    v10 = 1024;
    v11 = 42;
    v12 = 2114;
    v13 = v5;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  return 1;
}

- (BOOL)hasAccessToItem:(id)item blockedReason:(unint64_t *)reason error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (!itemCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "item != nil"];
    *buf = 136315906;
    v14 = "[FCRecipeDraftAccessChecker hasAccessToItem:blockedReason:error:]";
    v15 = 2080;
    v16 = "FCRecipeDraftAccessChecker.m";
    v17 = 1024;
    v18 = 50;
    v19 = 2114;
    v20 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (![itemCopy isDraft] || (objc_msgSend(itemCopy, "isLocalDraft") & 1) != 0 || -[FCRecipeDraftAccessChecker shouldShowAllDraftContent](self, "shouldShowAllDraftContent"))
  {
    v7 = 1;
  }

  else
  {
    privateChannelMembershipController = [(FCRecipeDraftAccessChecker *)self privateChannelMembershipController];
    sourceChannel = [itemCopy sourceChannel];
    identifier = [sourceChannel identifier];
    v7 = [privateChannelMembershipController isAllowedToSeeDraftsForChannelID:identifier];
  }

  return v7;
}

- (void)checkAccessToItem:(id)item withQualityOfService:(int64_t)service completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  completionCopy = completion;
  if (!itemCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "item != nil"];
    *buf = 136315906;
    *&buf[4] = "[FCRecipeDraftAccessChecker checkAccessToItem:withQualityOfService:completion:]";
    v15 = 2080;
    v16 = "FCRecipeDraftAccessChecker.m";
    v17 = 1024;
    v18 = 70;
    v19 = 2114;
    v20 = v11;
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
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completion != nil"];
    *buf = 136315906;
    *&buf[4] = "[FCRecipeDraftAccessChecker checkAccessToItem:withQualityOfService:completion:]";
    v15 = 2080;
    v16 = "FCRecipeDraftAccessChecker.m";
    v17 = 1024;
    v18 = 71;
    v19 = 2114;
    v20 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v13 = 0;
  *buf = 0;
  v9 = [(FCRecipeDraftAccessChecker *)self hasAccessToItem:itemCopy blockedReason:&v13 error:buf];
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 5;
  }

  v13 = v10;
  completionCopy[2](completionCopy, v9);
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