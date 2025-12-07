@interface SSVMediaSocialPostRequest
- (SSVMediaSocialPostRequest)initWithPostDescription:(id)description;
- (SSVMediaSocialPostRequest)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)startWithCompletionBlock:(id)block;
@end

@implementation SSVMediaSocialPostRequest

- (SSVMediaSocialPostRequest)initWithPostDescription:(id)description
{
  descriptionCopy = description;
  v9.receiver = self;
  v9.super_class = SSVMediaSocialPostRequest;
  v5 = [(SSRequest *)&v9 init];
  if (v5)
  {
    v6 = [descriptionCopy copy];
    postDescription = v5->_postDescription;
    v5->_postDescription = v6;
  }

  return v5;
}

- (void)startWithCompletionBlock:(id)block
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
      v22 = "[SSVMediaSocialPostRequest startWithCompletionBlock:]";

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
  v19[2] = __54__SSVMediaSocialPostRequest_startWithCompletionBlock___block_invoke;
  v19[3] = &unk_1E84ABEF0;
  v19[4] = self;
  v20 = blockCopy;
  v18 = blockCopy;
  [(SSRequest *)self _startWithMessageID:159 messageBlock:v19];
}

void __54__SSVMediaSocialPostRequest_startWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  xdict = v3;
  if (*(a1 + 40))
  {
    if (v3 == MEMORY[0x1E69E9E18])
    {
      v4 = 121;
    }

    else
    {
      if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E80])
      {
        v6 = objc_alloc(MEMORY[0x1E696ABC0]);
        v7 = xpc_dictionary_get_value(xdict, "2");
        v5 = [v6 initWithXPCEncoding:v7];

        goto LABEL_8;
      }

      v4 = 111;
    }

    v5 = SSError(@"SSErrorDomain", v4, 0, 0);
LABEL_8:
    (*(*(a1 + 40) + 16))();
  }

  [*(a1 + 32) _shutdownRequest];
}

- (SSVMediaSocialPostRequest)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v12.receiver = self;
    v12.super_class = SSVMediaSocialPostRequest;
    v6 = [(SSRequest *)&v12 init];
    if (v6)
    {
      v8 = [SSVMediaSocialPostDescription alloc];
      v9 = xpc_dictionary_get_value(v5, "0");
      v10 = [(SSVMediaSocialPostDescription *)v8 initWithXPCEncoding:v9];
      postDescription = v6->_postDescription;
      v6->_postDescription = v10;
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetObject(v3, "0", self->_postDescription);
  return v3;
}

@end