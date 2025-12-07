@interface SSVRepairApplicationRequest
- (SSVRepairApplicationRequest)initWithBundleID:(id)d accountIdentifier:(id)identifier claimStyle:(int64_t)style;
- (SSVRepairApplicationRequest)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)startWithResponseBlock:(id)block;
@end

@implementation SSVRepairApplicationRequest

- (SSVRepairApplicationRequest)initWithBundleID:(id)d accountIdentifier:(id)identifier claimStyle:(int64_t)style
{
  dCopy = d;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = SSVRepairApplicationRequest;
  v10 = [(SSRequest *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_claimStyle = style;
    v12 = [dCopy copy];
    bundleID = v11->_bundleID;
    v11->_bundleID = v12;

    v14 = [identifierCopy copy];
    accountDSID = v11->_accountDSID;
    v11->_accountDSID = v14;
  }

  return v11;
}

- (void)startWithResponseBlock:(id)block
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
      v22 = "[SSVRepairApplicationRequest startWithResponseBlock:]";

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
  v19[2] = __54__SSVRepairApplicationRequest_startWithResponseBlock___block_invoke;
  v19[3] = &unk_1E84ABEF0;
  v19[4] = self;
  v20 = blockCopy;
  v18 = blockCopy;
  [(SSRequest *)self _startWithMessageID:148 messageBlock:v19];
}

void __54__SSVRepairApplicationRequest_startWithResponseBlock___block_invoke(uint64_t a1, void *a2)
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
        v13 = objc_opt_class();
        v7 = SSXPCDictionaryCopyCFObjectWithClass(v4, "3", v13);
        v14 = objc_alloc(MEMORY[0x1E696ABC0]);
        v15 = xpc_dictionary_get_value(v4, "2");
        v6 = [v14 initWithXPCEncoding:v15];

        v8 = xpc_dictionary_get_BOOL(v4, "1");
        if (v8)
        {
LABEL_10:
          v9 = dispatch_get_global_queue(0, 0);
          v16 = MEMORY[0x1E69E9820];
          v17 = 3221225472;
          v18 = __54__SSVRepairApplicationRequest_startWithResponseBlock___block_invoke_2;
          v19 = &unk_1E84AD020;
          v10 = *(a1 + 40);
          v21 = v6;
          v22 = v10;
          v23 = v8;
          v20 = v7;
          v11 = v6;
          v12 = v7;
          dispatch_async(v9, &v16);

          goto LABEL_11;
        }

LABEL_8:
        if (!v6)
        {
          v6 = SSError(@"SSErrorDomain", 100, 0, 0);
        }

        goto LABEL_10;
      }

      v5 = 111;
    }

    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 0;
    v8 = 0;
    goto LABEL_8;
  }

LABEL_11:
  [*(a1 + 32) _shutdownRequest];
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetObject(v3, "0", self->_bundleID);
  SSXPCDictionarySetObject(v3, "1", self->_accountDSID);
  xpc_dictionary_set_int64(v3, "2", self->_claimStyle);
  return v3;
}

- (SSVRepairApplicationRequest)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v14.receiver = self;
    v14.super_class = SSVRepairApplicationRequest;
    v6 = [(SSRequest *)&v14 init];
    if (v6)
    {
      v8 = objc_opt_class();
      v9 = SSXPCDictionaryCopyObjectWithClass(v5, "0", v8);
      bundleID = v6->_bundleID;
      v6->_bundleID = v9;

      v11 = objc_opt_class();
      v12 = SSXPCDictionaryCopyObjectWithClass(v5, "1", v11);
      accountDSID = v6->_accountDSID;
      v6->_accountDSID = v12;

      v6->_claimStyle = xpc_dictionary_get_int64(v5, "2");
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

@end