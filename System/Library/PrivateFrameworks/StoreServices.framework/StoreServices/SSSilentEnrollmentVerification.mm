@interface SSSilentEnrollmentVerification
- (void)startWithCompletion:(id)completion;
@end

@implementation SSSilentEnrollmentVerification

- (void)startWithCompletion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (SSIsInternalBuild(completionCopy, v5) && _os_feature_enabled_impl())
  {
    v6 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v10 = v8;
    }

    else
    {
      v10 = v8 & 2;
    }

    if (v10)
    {
      v21 = 136446210;
      v22 = "[SSSilentEnrollmentVerification startWithCompletion:]";

      if (!v11)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:4];
      free(v11);
      SSFileLog(v6, @"%@", v12, v13, v14, v15, v16, v17, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __54__SSSilentEnrollmentVerification_startWithCompletion___block_invoke;
  v19[3] = &unk_1E84ABEF0;
  v19[4] = self;
  v20 = completionCopy;
  v18 = completionCopy;
  [(SSRequest *)self _startWithMessageID:212 messageBlock:v19];
}

void __54__SSSilentEnrollmentVerification_startWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    if (v3 == MEMORY[0x1E69E9E18])
    {
      v5 = 121;
    }

    else
    {
      if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E80])
      {
        v12 = objc_opt_class();
        v13 = SSXPCDictionaryCopyObjectWithClass(v4, "1", v12);
        v14 = objc_alloc(MEMORY[0x1E696ABC0]);
        v15 = xpc_dictionary_get_value(v4, "2");
        v6 = [v14 initWithXPCEncoding:v15];

        v16 = objc_opt_class();
        v7 = SSXPCDictionaryCopyObjectWithClass(v4, "3", v16);

        goto LABEL_8;
      }

      v5 = 111;
    }

    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 0;
LABEL_8:
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__SSSilentEnrollmentVerification_startWithCompletion___block_invoke_2;
    block[3] = &unk_1E84ABEC8;
    v9 = *(a1 + 40);
    v19 = v6;
    v20 = v9;
    v18 = v7;
    v10 = v6;
    v11 = v7;
    dispatch_async(v8, block);
  }

  [*(a1 + 32) _shutdownRequest];
}

@end