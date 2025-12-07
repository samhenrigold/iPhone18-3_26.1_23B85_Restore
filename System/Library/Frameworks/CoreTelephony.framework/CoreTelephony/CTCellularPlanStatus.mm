@interface CTCellularPlanStatus
+ (void)checkValidityOfToken:(id)token completionHandler:(id)handler;
+ (void)getTokenWithCompletion:(id)completion;
@end

@implementation CTCellularPlanStatus

+ (void)getTokenWithCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (bundleIdentifier)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = bundleIdentifier;
      _os_log_impl(&dword_182E9B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Getting token for bundleID [%@]", buf, 0xCu);
    }

    v6 = [[CoreTelephonyClient alloc] initWithQueue:0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __47__CTCellularPlanStatus_getTokenWithCompletion___block_invoke;
    v16[3] = &unk_1E6A478B8;
    v17 = v6;
    v18 = completionCopy;
    v7 = v6;
    [(CoreTelephonyClient *)v7 getTokenForBundleID:bundleIdentifier completion:v16];
  }

  else
  {
    v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v8)
    {
      [(CTCellularPlanStatus *)v8 getTokenWithCompletion:v9, v10, v11, v12, v13, v14, v15];
    }

    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v7);
  }
}

+ (void)checkValidityOfToken:(id)token completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  handlerCopy = handler;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (!bundleIdentifier)
  {
    v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v11)
    {
      [(CTCellularPlanStatus *)v11 getTokenWithCompletion:v12, v13, v14, v15, v16, v17, v18];
    }

    goto LABEL_11;
  }

  if (!tokenCopy)
  {
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v19)
    {
      [(CTCellularPlanStatus *)v19 checkValidityOfToken:v20 completionHandler:v21, v22, v23, v24, v25, v26];
    }

LABEL_11:
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v10);
    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v31 = tokenCopy;
    v32 = 2112;
    v33 = bundleIdentifier;
    _os_log_impl(&dword_182E9B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Validating token [%@] for bundleID [%@]", buf, 0x16u);
  }

  v9 = [[CoreTelephonyClient alloc] initWithQueue:0];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __63__CTCellularPlanStatus_checkValidityOfToken_completionHandler___block_invoke;
  v27[3] = &unk_1E6A478E0;
  v28 = v9;
  v29 = handlerCopy;
  v10 = v9;
  [(CoreTelephonyClient *)v10 isTokenValid:tokenCopy forBundleId:bundleIdentifier completion:v27];

LABEL_12:
}

@end