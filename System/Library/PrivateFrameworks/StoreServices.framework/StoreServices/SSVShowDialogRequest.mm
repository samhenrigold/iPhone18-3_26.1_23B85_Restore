@interface SSVShowDialogRequest
- (SSVShowDialogRequest)initWithEncodedDialog:(id)dialog;
- (SSVShowDialogRequest)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)startWithDialogResponseBlock:(id)block;
@end

@implementation SSVShowDialogRequest

- (SSVShowDialogRequest)initWithEncodedDialog:(id)dialog
{
  dialogCopy = dialog;
  v9.receiver = self;
  v9.super_class = SSVShowDialogRequest;
  v6 = [(SSRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dialog, dialog);
  }

  return v7;
}

- (void)startWithDialogResponseBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (SSIsInternalBuild(blockCopy, v5) && _os_feature_enabled_impl())
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
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
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
      v22 = "[SSVShowDialogRequest startWithDialogResponseBlock:]";

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
  v19[2] = __53__SSVShowDialogRequest_startWithDialogResponseBlock___block_invoke;
  v19[3] = &unk_1E84ABEF0;
  v19[4] = self;
  v20 = blockCopy;
  v18 = blockCopy;
  [(SSRequest *)self _startWithMessageID:134 messageBlock:v19];
}

void __53__SSVShowDialogRequest_startWithDialogResponseBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    if (v3 == MEMORY[0x1E69E9E18])
    {
      v7 = SSError(@"SSErrorDomain", 121, 0, 0);
      v10 = 0;
    }

    else
    {
      v5 = objc_alloc(MEMORY[0x1E696ABC0]);
      v6 = xpc_dictionary_get_value(v4, "2");
      v7 = [v5 initWithXPCEncoding:v6];

      v8 = [SSVDialogResponse alloc];
      v9 = xpc_dictionary_get_value(v4, "1");
      v10 = [(SSVDialogResponse *)v8 initWithXPCEncoding:v9];
    }

    if (!(v10 | v7))
    {
      v7 = SSError(@"SSErrorDomain", 100, 0, 0);
    }

    v11 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__SSVShowDialogRequest_startWithDialogResponseBlock___block_invoke_2;
    block[3] = &unk_1E84ABEC8;
    v12 = *(a1 + 40);
    v17 = v7;
    v18 = v12;
    v16 = v10;
    v13 = v7;
    v14 = v10;
    dispatch_async(v11, block);
  }

  [*(a1 + 32) _shutdownRequest];
}

- (SSVShowDialogRequest)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v9.receiver = self;
  v9.super_class = SSVShowDialogRequest;
  v5 = [(SSRequest *)&v9 init];
  if (v5)
  {
    v6 = xpc_dictionary_get_value(encodingCopy, "0");
    dialog = v5->_dialog;
    v5->_dialog = v6;
  }

  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(v3, "0", self->_dialog);
  return v3;
}

@end