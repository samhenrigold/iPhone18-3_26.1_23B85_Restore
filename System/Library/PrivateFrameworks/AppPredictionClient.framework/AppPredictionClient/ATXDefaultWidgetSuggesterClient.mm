@interface ATXDefaultWidgetSuggesterClient
- (ATXDefaultWidgetSuggesterClient)init;
- (void)defaultWidgetSuggestionOfType:(int64_t)type completionHandler:(id)handler;
- (void)logEventForDefaultWidgetSuggestionType:(int64_t)type event:(int64_t)event;
@end

@implementation ATXDefaultWidgetSuggesterClient

- (ATXDefaultWidgetSuggesterClient)init
{
  v7.receiver = self;
  v7.super_class = ATXDefaultWidgetSuggesterClient;
  v2 = [(ATXDefaultWidgetSuggesterClient *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.proactive.DefaultWidgetSuggester" options:0];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v3;

    v5 = ATXDefaultWidgetSuggesterInterface();
    [(NSXPCConnection *)v2->_xpcConnection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->_xpcConnection setInterruptionHandler:&__block_literal_global_74];
    [(NSXPCConnection *)v2->_xpcConnection resume];
  }

  return v2;
}

void __39__ATXDefaultWidgetSuggesterClient_init__block_invoke(uint64_t a1)
{
  v1 = __atxlog_handle_home_screen(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __39__ATXDefaultWidgetSuggesterClient_init__block_invoke_cold_1();
  }
}

- (void)defaultWidgetSuggestionOfType:(int64_t)type completionHandler:(id)handler
{
  v54 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = handlerCopy;
  if (type == 1)
  {
    v8 = objc_alloc(MEMORY[0x1E695E000]);
    v9 = [v8 initWithSuiteName:*MEMORY[0x1E698B030]];
    v10 = [v9 integerForKey:*MEMORY[0x1E698AFB8]];
    if (v10 < 1)
    {
      v14 = [v9 objectForKey:*MEMORY[0x1E698AF88]];
      v15 = [v9 objectForKey:*MEMORY[0x1E698AF98]];
      v16 = [v9 objectForKey:*MEMORY[0x1E698AFA0]];
      v17 = v16;
      if (v14)
      {
        v18 = v16 == 0;
      }

      else
      {
        v18 = 1;
      }

      if (v18 || v15 == 0)
      {
        v20 = __atxlog_handle_home_screen(v16);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BF549000, v20, OS_LOG_TYPE_DEFAULT, "ATXDefaultWidgetSuggesterClient: requesting full computation of TV widget suggstion", buf, 2u);
        }

        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __83__ATXDefaultWidgetSuggesterClient_defaultWidgetSuggestionOfType_completionHandler___block_invoke;
        v44[3] = &unk_1E80C4548;
        v45 = v9;
        v21 = v7;
        v46 = v21;
        v47 = 1;
        v22 = MEMORY[0x1BFB5BA40](v44);
        xpcConnection = self->_xpcConnection;
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __83__ATXDefaultWidgetSuggesterClient_defaultWidgetSuggestionOfType_completionHandler___block_invoke_25;
        v42[3] = &unk_1E80C08E0;
        v24 = v22;
        v43 = v24;
        v25 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v42];
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __83__ATXDefaultWidgetSuggesterClient_defaultWidgetSuggestionOfType_completionHandler___block_invoke_27;
        v38[3] = &unk_1E80C4570;
        v39 = v24;
        v40 = v21;
        v41 = 1;
        v26 = v24;
        [v25 shouldSuggestTVWithCompletionHandler:v38];
      }

      else
      {
        v27 = objc_opt_class();
        [v14 doubleValue];
        v29 = v28;
        [v15 doubleValue];
        v31 = v30;
        [v17 doubleValue];
        v33 = [v27 shouldSuggestTVWithAppLaunchCount:v29 intentDonationCount:v31 upcomingMediaCount:v32];
        v34 = v33;
        v35 = __atxlog_handle_home_screen(v33);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109890;
          *v49 = v34;
          *&v49[4] = 2114;
          *&v49[6] = v14;
          v50 = 2114;
          v51 = v15;
          v52 = 2114;
          v53 = v17;
          _os_log_impl(&dword_1BF549000, v35, OS_LOG_TYPE_DEFAULT, "ATXDefaultWidgetSuggesterClient: returning TV widget suggestion (%{BOOL}d) using cached app launches: %{public}@, intent donations: %{public}@, upcoming media: %{public}@", buf, 0x26u);
        }

        if (v34)
        {
          v37 = [[ATXDefaultWidgetSuggestion alloc] initWithType:1];
          (v7)[2](v7, v37);
        }

        else
        {
          v7[2](v7, 0);
        }
      }
    }

    else
    {
      v11 = v10;
      v12 = __atxlog_handle_home_screen(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v49 = v11;
        _os_log_impl(&dword_1BF549000, v12, OS_LOG_TYPE_DEFAULT, "ATXDefaultWidgetSuggesterClient: not making a TV suggestion that we have feedback for: %ld", buf, 0xCu);
      }

      v7[2](v7, 0);
    }
  }

  else
  {
    v13 = __atxlog_handle_home_screen(handlerCopy);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [ATXDefaultWidgetSuggesterClient defaultWidgetSuggestionOfType:completionHandler:];
    }

    v7[2](v7, 0);
  }
}

void __83__ATXDefaultWidgetSuggesterClient_defaultWidgetSuggestionOfType_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*MEMORY[0x1E698AF90]];
  if (!v2)
  {
    v6 = __atxlog_handle_home_screen(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v10 = "ATXDefaultWidgetSuggesterClient: no cached AzulF key";
      v11 = &v14;
LABEL_13:
      _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
    }

LABEL_14:

    (*(*(a1 + 40) + 16))(*(a1 + 40));
    goto LABEL_15;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v6 = __atxlog_handle_home_screen(isKindOfClass);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __83__ATXDefaultWidgetSuggesterClient_defaultWidgetSuggestionOfType_completionHandler___block_invoke_cold_1();
    }

    goto LABEL_14;
  }

  v4 = [v2 BOOLValue];
  v5 = v4;
  v6 = __atxlog_handle_home_screen(v4);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!v5)
  {
    if (v7)
    {
      v12 = 0;
      v10 = "ATXDefaultWidgetSuggesterClient: returning TV widget suggestion (NO) using cached AzulF BOOL";
      v11 = &v12;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "ATXDefaultWidgetSuggesterClient: returning TV widget suggestion (YES) using cached AzulF BOOL", buf, 2u);
  }

  v8 = *(a1 + 40);
  v9 = [[ATXDefaultWidgetSuggestion alloc] initWithType:*(a1 + 48)];
  (*(v8 + 16))(v8, v9);

LABEL_15:
}

void __83__ATXDefaultWidgetSuggesterClient_defaultWidgetSuggestionOfType_completionHandler___block_invoke_25(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_home_screen(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __83__ATXDefaultWidgetSuggesterClient_defaultWidgetSuggestionOfType_completionHandler___block_invoke_25_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

void __83__ATXDefaultWidgetSuggesterClient_defaultWidgetSuggestionOfType_completionHandler___block_invoke_27(void *a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = __atxlog_handle_home_screen(v5);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __83__ATXDefaultWidgetSuggesterClient_defaultWidgetSuggestionOfType_completionHandler___block_invoke_27_cold_1(v5, v7);
    }

LABEL_9:
    (*(a1[4] + 16))();
    goto LABEL_10;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = a2;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "ATXDefaultWidgetSuggesterClient: returning TV widget suggestion (%{BOOL}d) after full computation", v10, 8u);
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  v8 = a1[5];
  v9 = [[ATXDefaultWidgetSuggestion alloc] initWithType:a1[6]];
  (*(v8 + 16))(v8, v9);

LABEL_10:
}

- (void)logEventForDefaultWidgetSuggestionType:(int64_t)type event:(int64_t)event
{
  if (type == 1)
  {
    v5 = objc_alloc(MEMORY[0x1E695E000]);
    v11 = [v5 initWithSuiteName:*MEMORY[0x1E698B030]];
    [v11 setInteger:event forKey:*MEMORY[0x1E698AFB8]];
    if (event == 3)
    {
      v7 = MEMORY[0x1E698AFB0];
    }

    else
    {
      v6 = v11;
      if (event != 1)
      {
LABEL_11:

        return;
      }

      v7 = MEMORY[0x1E698AFA8];
    }

    v9 = *v7;
    v10 = [v11 objectForKey:*v7];

    v6 = v11;
    if (!v10)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      [v11 setDouble:v9 forKey:?];
      v6 = v11;
    }

    goto LABEL_11;
  }

  v8 = __atxlog_handle_home_screen(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    [ATXDefaultWidgetSuggesterClient defaultWidgetSuggestionOfType:completionHandler:];
  }
}

void __83__ATXDefaultWidgetSuggesterClient_defaultWidgetSuggestionOfType_completionHandler___block_invoke_25_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "ATXDefaultWidgetSuggesterClient: XPC error; could not compute TV widget suggestion via duetexpertd: %@", &v2, 0xCu);
}

void __83__ATXDefaultWidgetSuggesterClient_defaultWidgetSuggestionOfType_completionHandler___block_invoke_27_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "ATXDefaultWidgetSuggesterClient: could not compute TV widget suggestion via duetexpertd: %@", &v2, 0xCu);
}

@end