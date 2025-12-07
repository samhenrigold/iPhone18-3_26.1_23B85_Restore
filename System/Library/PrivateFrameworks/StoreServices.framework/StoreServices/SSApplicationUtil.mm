@interface SSApplicationUtil
- (SSApplicationUtil)init;
- (id)_connection;
- (void)restartApplication:(id)application;
@end

@implementation SSApplicationUtil

- (SSApplicationUtil)init
{
  v8.receiver = self;
  v8.super_class = SSApplicationUtil;
  v2 = [(SSApplicationUtil *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.storeservices.applicationutils", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v3;

    v5 = v2->_serialQueue;
    v6 = dispatch_get_global_queue(0, 0);
    dispatch_set_target_queue(v5, v6);
  }

  return v2;
}

- (void)restartApplication:(id)application
{
  v24 = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  if (SSIsInternalBuild(applicationCopy, v5) && _os_feature_enabled_impl())
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
      v22 = 136446210;
      v23 = "[SSApplicationUtil restartApplication:]";

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
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SSApplicationUtil_restartApplication___block_invoke;
  block[3] = &unk_1E84AC360;
  block[4] = self;
  v21 = applicationCopy;
  v19 = applicationCopy;
  dispatch_async(serialQueue, block);
}

void __40__SSApplicationUtil_restartApplication___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "0", 165);
  v3 = [*(a1 + 32) _connection];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__SSApplicationUtil_restartApplication___block_invoke_2;
  v5[3] = &unk_1E84ABEF0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 sendMessage:v2 withReply:v5];
}

void __40__SSApplicationUtil_restartApplication___block_invoke_2(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!*(a1 + 40))
  {
    v6 = objc_opt_class();
    v7 = SSXPCDictionaryCopyCFObjectWithClass(v4, "0", v6);
    v8 = [(__CFDate *)v7 intValue];
    v9 = +[SSLogConfig sharedStoreServicesConfig];
    v10 = v9;
    if (v8)
    {
      if (!v9)
      {
        v10 = +[SSLogConfig sharedConfig];
      }

      v11 = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        LODWORD(v12) = v11 | 2;
      }

      else
      {
        LODWORD(v12) = v11;
      }

      v13 = [v10 OSLogObject];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v12 = v12;
      }

      else
      {
        v12 &= 2u;
      }

      if (!v12)
      {
        goto LABEL_32;
      }

      v14 = objc_opt_class();
      v15 = v14;
      v36 = 138412546;
      v37 = v14;
      v38 = 1024;
      v39 = [(__CFDate *)v7 intValue];
      v16 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_1D48BA000, v13, 16, "[%@] Restart Application returned error code: %d", &v36, 18);
    }

    else
    {
      if (!v9)
      {
        v10 = +[SSLogConfig sharedConfig];
      }

      v20 = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        LODWORD(v21) = v20 | 2;
      }

      else
      {
        LODWORD(v21) = v20;
      }

      v13 = [v10 OSLogObject];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v21 = v21;
      }

      else
      {
        v21 &= 2u;
      }

      if (!v21)
      {
        goto LABEL_32;
      }

      v36 = 138412290;
      v37 = objc_opt_class();
      v15 = v37;
      v16 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &dword_1D48BA000, v13, 1, "[%@] Restart Application succeeded", &v36, 12);
    }

    v22 = v16;

    if (!v22)
    {
      goto LABEL_33;
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:4];
    free(v22);
    SSFileLog(v10, @"%@", v23, v24, v25, v26, v27, v28, v13);
LABEL_32:

    goto LABEL_33;
  }

  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
  }

  else
  {
    if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E80])
    {
      v29 = objc_opt_class();
      v30 = SSXPCDictionaryCopyCFObjectWithClass(v4, "0", v29);
      if ([(__CFDate *)v30 intValue])
      {
        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v32 = xpc_dictionary_get_value(v4, "1");
        v17 = [v31 initWithXPCEncoding:v32];
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_19;
    }

    v5 = 111;
  }

  v17 = SSError(@"SSErrorDomain", v5, 0, 0);
LABEL_19:
  v18 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SSApplicationUtil_restartApplication___block_invoke_3;
  block[3] = &unk_1E84AC338;
  v19 = *(a1 + 40);
  v34 = v17;
  v35 = v19;
  v7 = v17;
  dispatch_async(v18, block);

  v10 = v35;
LABEL_33:
}

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    v5 = self->_connection;
    self->_connection = v4;

    connection = self->_connection;
  }

  return connection;
}

@end