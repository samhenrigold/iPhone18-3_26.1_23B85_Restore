@interface SSVMediaSocialShareExtension
- (SSVMediaSocialShareExtension)init;
- (void)getVisibilityWithCompletionBlock:(id)block;
@end

@implementation SSVMediaSocialShareExtension

- (SSVMediaSocialShareExtension)init
{
  v6.receiver = self;
  v6.super_class = SSVMediaSocialShareExtension;
  v2 = [(SSVMediaSocialShareExtension *)&v6 init];
  if (v2)
  {
    v3 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    connection = v2->_connection;
    v2->_connection = v3;
  }

  return v2;
}

- (void)getVisibilityWithCompletionBlock:(id)block
{
  v28 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v6 = blockCopy;
  if (!self->_connection)
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D930];
    v23 = @"Send -init before checking visibility";
LABEL_21:
    [v21 raise:v22 format:v23];
    goto LABEL_22;
  }

  if (!blockCopy)
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D940];
    v23 = @"No completion block";
    goto LABEL_21;
  }

  if (!SSIsInternalBuild(blockCopy, v5) || !_os_feature_enabled_impl())
  {
    goto LABEL_18;
  }

  v7 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 & 2;
  }

  if (!v11)
  {
    goto LABEL_16;
  }

  v26 = 136446210;
  v27 = "[SSVMediaSocialShareExtension getVisibilityWithCompletionBlock:]";

  if (v12)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:4];
    free(v12);
    SSFileLog(v7, @"%@", v13, v14, v15, v16, v17, v18, oSLogObject);
LABEL_16:
  }

LABEL_18:
  v19 = SSXPCCreateMessageDictionary(160);
  connection = self->_connection;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __65__SSVMediaSocialShareExtension_getVisibilityWithCompletionBlock___block_invoke;
  v24[3] = &unk_1E84AE2D8;
  v25 = v6;
  [(SSXPCConnection *)connection sendMessage:v19 withReply:v24];

LABEL_22:
}

void __65__SSVMediaSocialShareExtension_getVisibilityWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  xdict = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = 121;
    goto LABEL_6;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = 111;
LABEL_6:
    v6 = [v4 errorWithDomain:@"SSErrorDomain" code:v5 userInfo:0];
    goto LABEL_7;
  }

  v7 = objc_alloc(MEMORY[0x1E696ABC0]);
  v8 = xpc_dictionary_get_value(xdict, "2");
  v6 = [v7 initWithXPCEncoding:v8];

  xpc_dictionary_get_BOOL(xdict, "1");
LABEL_7:
  (*(*(a1 + 32) + 16))();
}

@end