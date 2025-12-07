@interface SSURLDataCollection
+ (void)collectURLSessionDataWithBlock:(id)block;
@end

@implementation SSURLDataCollection

+ (void)collectURLSessionDataWithBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (SSIsInternalBuild(blockCopy, v4) && _os_feature_enabled_impl())
  {
    v5 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      v21 = 136446210;
      v22 = "+[SSURLDataCollection collectURLSessionDataWithBlock:]";

      if (!v10)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
      free(v10);
      SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  if (blockCopy)
  {
    v17 = SSXPCCreateMessageDictionary(199);
    v18 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    if (v18)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __54__SSURLDataCollection_collectURLSessionDataWithBlock___block_invoke;
      v19[3] = &unk_1E84AE2D8;
      v20 = blockCopy;
      [(SSXPCConnection *)v18 sendMessage:v17 withReply:v19];
    }

    else
    {
      (*(blockCopy + 2))(blockCopy, 0);
    }
  }
}

void __54__SSURLDataCollection_collectURLSessionDataWithBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = objc_opt_class();
    v5 = SSXPCDictionaryCopyObjectWithClass(v3, "0", v4);
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

@end