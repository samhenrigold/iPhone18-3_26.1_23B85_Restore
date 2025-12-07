@interface FAFamilyCircleChangeHandler
+ (void)_refetchFamilyWithContext:(id)context completion:(id)completion;
+ (void)handleDidRepairFamilyWithCompletion:(id)completion;
+ (void)handleDidSetupFamilyWithCompletion:(id)completion;
+ (void)handleURLResponse:(id)response;
@end

@implementation FAFamilyCircleChangeHandler

+ (void)handleURLResponse:(id)response
{
  v16 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v5 = _FALogSystem(responseCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v12 = 138412546;
    v13 = v7;
    v14 = 2080;
    v15 = "+[FAFamilyCircleChangeHandler handleURLResponse:]";
    _os_log_impl(&dword_1B70B0000, v5, OS_LOG_TYPE_DEFAULT, "%@ %s", &v12, 0x16u);
  }

  allHeaderFields = [responseCopy allHeaderFields];

  v9 = [allHeaderFields objectForKey:@"X-Apple-Family-Changed"];

  if (v9)
  {
    v11 = _FALogSystem(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1B70B0000, v11, OS_LOG_TYPE_DEFAULT, "FACircleRemoteUIDelegate - Family state has changed", &v12, 2u);
    }

    [self _refetchFamilyWithContext:@"family_changed_header" completion:&__block_literal_global_1];
  }
}

+ (void)handleDidRepairFamilyWithCompletion:(id)completion
{
  v12 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = _FALogSystem(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138412546;
    v9 = v7;
    v10 = 2080;
    v11 = "+[FAFamilyCircleChangeHandler handleDidRepairFamilyWithCompletion:]";
    _os_log_impl(&dword_1B70B0000, v5, OS_LOG_TYPE_DEFAULT, "%@ %s", &v8, 0x16u);
  }

  [self _refetchFamilyWithContext:@"family_repair" completion:completionCopy];
}

+ (void)handleDidSetupFamilyWithCompletion:(id)completion
{
  v12 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = _FALogSystem(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138412546;
    v9 = v7;
    v10 = 2080;
    v11 = "+[FAFamilyCircleChangeHandler handleDidSetupFamilyWithCompletion:]";
    _os_log_impl(&dword_1B70B0000, v5, OS_LOG_TYPE_DEFAULT, "%@ %s", &v8, 0x16u);
  }

  [self _refetchFamilyWithContext:@"family_setup" completion:completionCopy];
}

+ (void)_refetchFamilyWithContext:(id)context completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  contextCopy = context;
  v7 = _FALogSystem(contextCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138412546;
    v18 = v9;
    v19 = 2080;
    v20 = "+[FAFamilyCircleChangeHandler _refetchFamilyWithContext:completion:]";
    _os_log_impl(&dword_1B70B0000, v7, OS_LOG_TYPE_DEFAULT, "%@ %s: force fetching family changes", buf, 0x16u);
  }

  v10 = objc_alloc_init(FAFetchFamilyCircleRequest);
  [(FAFetchFamilyCircleRequest *)v10 setCachePolicy:1000];
  [(FAFetchFamilyCircleRequest *)v10 setContext:contextCopy];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__FAFamilyCircleChangeHandler__refetchFamilyWithContext_completion___block_invoke;
  v15[3] = &unk_1E7CA4928;
  v16 = completionCopy;
  v11 = completionCopy;
  v12 = _FALogSystem([(FAFetchFamilyCircleRequest *)v10 startRequestWithCompletionHandler:v15]);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138412546;
    v18 = v14;
    v19 = 2080;
    v20 = "+[FAFamilyCircleChangeHandler _refetchFamilyWithContext:completion:]";
    _os_log_impl(&dword_1B70B0000, v12, OS_LOG_TYPE_DEFAULT, "%@ %s done", buf, 0x16u);
  }
}

uint64_t __68__FAFamilyCircleChangeHandler__refetchFamilyWithContext_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end