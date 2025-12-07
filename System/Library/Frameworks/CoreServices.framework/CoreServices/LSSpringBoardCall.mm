@interface LSSpringBoardCall
@end

@implementation LSSpringBoardCall

void __48___LSSpringBoardCall_callWithCompletionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    [*(a1 + 32) callSpringBoardWithCompletionHandler:*(a1 + 40)];
  }

  else if (_LSGetOSStatusFromNSError(v5) == -2026)
  {
    [*(a1 + 32) promptAndCallSpringBoardWithCompletionHandler:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __47___LSSpringBoardCall_Private__springBoardQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("LS SpringBoard call queue", v2);
  v1 = +[_LSSpringBoardCall(Private) springBoardQueue]::result;
  +[_LSSpringBoardCall(Private) springBoardQueue]::result = v0;
}

void __65___LSSpringBoardCall_Private__springBoardDeadlockPreventionQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("LS SpringBoard sync call deadlock prevention queue", v2);
  v1 = +[_LSSpringBoardCall(Private) springBoardDeadlockPreventionQueue]::result;
  +[_LSSpringBoardCall(Private) springBoardDeadlockPreventionQueue]::result = v0;
}

void __68___LSSpringBoardCall_Private__callSpringBoardWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) bundleIdentifier];
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68___LSSpringBoardCall_Private__callSpringBoardWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_1E6A1E0B8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  [v2 openApplication:v3 withOptions:v4 clientHandle:v5 completion:v6];
}

void __68___LSSpringBoardCall_Private__callSpringBoardWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = (*(*(a1 + 40) + 16))(*(a1 + 40), v5 == 0);
  MEMORY[0x1865D7C50](v4);
}

void __68___LSSpringBoardCall_Private__callSpringBoardWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [objc_opt_class() springBoardQueue];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __68___LSSpringBoardCall_Private__callSpringBoardWithCompletionHandler___block_invoke_4;
  v26 = &unk_1E6A1E108;
  *&v4 = *(a1 + 40);
  *(&v4 + 1) = *v2;
  v22 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v27 = v22;
  v28 = v7;
  v8 = _LSDispatchWithTimeout(v3, &v23, 10.0);

  v9 = [v8 result];
  if (!v9 || ([v8 result], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "BOOLValue"), v10, v9, !v11))
  {
    v12 = [v8 error];
    v13 = v12;
    if (v12)
    {
      v14 = [v8 error];
      v15 = [v14 domain];
      if ([v15 isEqual:*MEMORY[0x1E696A798]])
      {
        v16 = [v8 error];
        v17 = [v16 code] == 60;

        if (v17)
        {
          v18 = _LSDefaultLog(v12);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18162D000, v18, OS_LOG_TYPE_DEFAULT, "application launch failed - timeout waiting for launch.", buf, 2u);
          }

LABEL_12:

          v20 = *(a1 + 64);
          v21 = [v8 error];
          (*(v20 + 16))(v20, 0, v21);

          goto LABEL_13;
        }
      }

      else
      {
      }
    }

    v18 = _LSDefaultLog(v12);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v8 error];
      *buf = 138412290;
      v30 = v19;
      _os_log_impl(&dword_18162D000, v18, OS_LOG_TYPE_DEFAULT, "application launch failed - received error %@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  (*(*(a1 + 64) + 16))();
LABEL_13:
}

void __68___LSSpringBoardCall_Private__callSpringBoardWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) bundleIdentifier];
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68___LSSpringBoardCall_Private__callSpringBoardWithCompletionHandler___block_invoke_5;
  v11[3] = &unk_1E6A1E0E0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = v8;
  v13 = v9;
  v10 = v3;
  v14 = v10;
  [v4 openApplication:v5 withOptions:v6 clientHandle:v7 completion:v11];
}

void __68___LSSpringBoardCall_Private__callSpringBoardWithCompletionHandler___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _LSDefaultLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 40) bundleIdentifier];
      __68___LSSpringBoardCall_Private__callSpringBoardWithCompletionHandler___block_invoke_5_cold_1(v9, v7, buf, v8);
    }

    v16 = *MEMORY[0x1E696A278];
    v17 = @"Unable to launch. See logs for more detail.";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v11 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 115, v10, "[_LSSpringBoardCall(Private) callSpringBoardWithCompletionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSSpringBoardCall.mm", 271);

    v7 = v11;
  }

  v12 = *(a1 + 48);
  if (v5)
  {
    v13 = v7 == 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = [MEMORY[0x1E696AD98] numberWithBool:v14];
  (*(v12 + 16))(v12, v15, v7);

  MEMORY[0x1865D7C50]();
}

void __77___LSSpringBoardCall_Private__promptAndCallSpringBoardWithCompletionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) callSpringBoardWithCompletionHandler:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __68___LSSpringBoardCall_Private__callSpringBoardWithCompletionHandler___block_invoke_5_cold_1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138478083;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Request to open %{private}@ failed error: %@", buf, 0x16u);
}

@end