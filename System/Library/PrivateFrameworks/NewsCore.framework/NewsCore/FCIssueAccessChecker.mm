@interface FCIssueAccessChecker
- (FCIssueAccessChecker)init;
- (FCIssueAccessChecker)initWithAccessCheckers:(id)checkers;
- (FCIssueAccessChecker)initWithPaidAccessChecker:(id)checker privateChannelMembershipController:(id)controller;
@end

@implementation FCIssueAccessChecker

- (FCIssueAccessChecker)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCIssueAccessChecker init]";
    v10 = 2080;
    v11 = "FCIssueAccessChecker.m";
    v12 = 1024;
    v13 = 24;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCIssueAccessChecker init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCIssueAccessChecker)initWithAccessCheckers:(id)checkers
{
  v18 = *MEMORY[0x1E69E9840];
  checkersCopy = checkers;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v11 = "[FCIssueAccessChecker initWithAccessCheckers:]";
    v12 = 2080;
    v13 = "FCIssueAccessChecker.m";
    v14 = 1024;
    v15 = 29;
    v16 = 2114;
    v17 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCIssueAccessChecker initWithAccessCheckers:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (FCIssueAccessChecker)initWithPaidAccessChecker:(id)checker privateChannelMembershipController:(id)controller
{
  v28 = *MEMORY[0x1E69E9840];
  checkerCopy = checker;
  controllerCopy = controller;
  if (!checkerCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "paidAccessChecker != nil"];
    *buf = 136315906;
    v21 = "[FCIssueAccessChecker initWithPaidAccessChecker:privateChannelMembershipController:]";
    v22 = 2080;
    v23 = "FCIssueAccessChecker.m";
    v24 = 1024;
    v25 = 35;
    v26 = 2114;
    v27 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (controllerCopy)
    {
      goto LABEL_6;
    }
  }

  else if (controllerCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "privateChannelMembershipController != nil"];
    *buf = 136315906;
    v21 = "[FCIssueAccessChecker initWithPaidAccessChecker:privateChannelMembershipController:]";
    v22 = 2080;
    v23 = "FCIssueAccessChecker.m";
    v24 = 1024;
    v25 = 36;
    v26 = 2114;
    v27 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v8 = MEMORY[0x1E695DEC8];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __85__FCIssueAccessChecker_initWithPaidAccessChecker_privateChannelMembershipController___block_invoke;
  v17[3] = &unk_1E7C3B110;
  v18 = controllerCopy;
  v19 = checkerCopy;
  v9 = checkerCopy;
  v10 = controllerCopy;
  v11 = [v8 fc_array:v17];
  v16.receiver = self;
  v16.super_class = FCIssueAccessChecker;
  v12 = [(FCMultiAccessChecker *)&v16 initWithAccessCheckers:v11];

  return v12;
}

void __85__FCIssueAccessChecker_initWithPaidAccessChecker_privateChannelMembershipController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [v3 addObject:v4];

  v8 = [[FCStorefrontAccessChecker alloc] initWithPrivateChannelMembershipController:*(a1 + 32)];
  [v3 addObject:v8];
  v5 = objc_opt_new();
  [v3 addObject:v5];

  v6 = [[FCPurchaseAccessChecker alloc] initWithPaidAccessChecker:*(a1 + 40)];
  [v3 addObject:v6];
  v7 = [[FCIssueDraftAccessChecker alloc] initWithPrivateChannelMembershipController:*(a1 + 32)];
  [v3 addObject:v7];
}

@end