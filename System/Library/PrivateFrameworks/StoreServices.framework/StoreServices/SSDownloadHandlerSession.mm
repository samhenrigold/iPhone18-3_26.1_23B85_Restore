@interface SSDownloadHandlerSession
- (BOOL)blocksOtherDownloads;
- (BOOL)canBePaused;
- (BOOL)needsPowerAssertion;
- (NSString)downloadPhase;
- (id)_initWithMessage:(id)message controlConnection:(id)connection;
- (void)_finishWithType:(int)type error:(id)error;
- (void)_setBool:(BOOL)bool forSessionProperty:(const char *)property;
- (void)dealloc;
- (void)finishSessionWithSuccess:(BOOL)success error:(id)error;
- (void)setPercentComplete:(float)complete;
- (void)setStatusDescription:(id)description;
@end

@implementation SSDownloadHandlerSession

- (id)_initWithMessage:(id)message controlConnection:(id)connection
{
  v9.receiver = self;
  v9.super_class = SSDownloadHandlerSession;
  v5 = [(SSDownloadSession *)&v9 _initWithMessage:message controlConnection:connection];
  if (v5)
  {
    v6 = objc_opt_class();
    v5[6] = SSXPCDictionaryCopyCFObjectWithClass(message, "4", v6);
    v7 = objc_opt_class();
    v5[7] = SSXPCDictionaryCopyCFObjectWithClass(message, "5", v7);
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSDownloadHandlerSession;
  [(SSDownloadSession *)&v3 dealloc];
}

- (BOOL)blocksOtherDownloads
{
  v2 = [(SSDownloadSession *)self _copySessionPropertyWithKey:"3"];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = MEMORY[0x1DA6E0380]() != MEMORY[0x1E69E9E58] || xpc_BOOL_get_value(v3);
  xpc_release(v3);
  return v4;
}

- (BOOL)canBePaused
{
  v2 = [(SSDownloadSession *)self _copySessionPropertyWithKey:"4"];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = MEMORY[0x1DA6E0380]() != MEMORY[0x1E69E9E58] || xpc_BOOL_get_value(v3);
  xpc_release(v3);
  return v4;
}

- (NSString)downloadPhase
{
  downloadPhase = self->_downloadPhase;
  if (downloadPhase)
  {
    v3 = downloadPhase;
  }

  else
  {
    v4 = [(SSDownloadSession *)self _copySessionPropertyWithKey:"2"];
    if (v4)
    {
      v5 = v4;
      if (MEMORY[0x1DA6E0380]() == MEMORY[0x1E69E9F10])
      {
        v3 = SSXPCCreateCFObjectFromXPCObject(v5);
      }

      else
      {
        v3 = 0;
      }

      xpc_release(v5);
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)finishSessionWithSuccess:(BOOL)success error:(id)error
{
  if (success)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  [(SSDownloadHandlerSession *)self _finishWithType:v4 error:error];
}

- (BOOL)needsPowerAssertion
{
  v2 = [(SSDownloadSession *)self _copySessionPropertyWithKey:"5"];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = MEMORY[0x1DA6E0380]() != MEMORY[0x1E69E9E58] || xpc_BOOL_get_value(v3);
  xpc_release(v3);
  return v4;
}

- (void)setPercentComplete:(float)complete
{
  v22 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild(self, a2) && _os_feature_enabled_impl())
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
      v20 = 136446210;
      v21 = "[SSDownloadHandlerSession setPercentComplete:]";
      if (v10)
      {
        v11 = v10;
        v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
        free(v11);
        SSFileLog(v5, @"%@", v13, v14, v15, v16, v17, v18, v12);
      }
    }
  }

  v19 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v19, "0", 4);
  xpc_dictionary_set_int64(v19, "1", self->super._sessionID);
  xpc_dictionary_set_double(v19, "2", complete);
  [(SSXPCConnection *)self->super._controlConnection sendMessage:v19];
  xpc_release(v19);
}

- (void)setStatusDescription:(id)description
{
  v22 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild(self, a2) && _os_feature_enabled_impl())
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
      v20 = 136446210;
      v21 = "[SSDownloadHandlerSession setStatusDescription:]";
      if (v10)
      {
        v11 = v10;
        v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
        free(v11);
        SSFileLog(v5, @"%@", v13, v14, v15, v16, v17, v18, v12);
      }
    }
  }

  v19 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v19, "0", 51);
  xpc_dictionary_set_int64(v19, "1", self->super._sessionID);
  SSXPCDictionarySetCFObject(v19, "2", description);
  [(SSXPCConnection *)self->super._controlConnection sendMessage:v19];
  xpc_release(v19);
}

- (void)_finishWithType:(int)type error:(id)error
{
  v24 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild(self, a2) && _os_feature_enabled_impl())
  {
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

    if (v11)
    {
      v22 = 136446210;
      v23 = "[SSDownloadHandlerSession _finishWithType:error:]";
      if (v12)
      {
        v13 = v12;
        v14 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:4];
        free(v13);
        SSFileLog(v7, @"%@", v15, v16, v17, v18, v19, v20, v14);
      }
    }
  }

  v21 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v21, "0", 2);
  xpc_dictionary_set_int64(v21, "1", self->super._sessionID);
  xpc_dictionary_set_int64(v21, "2", type);
  SSXPCDictionarySetCFObject(v21, "3", error);
  [(SSXPCConnection *)self->super._controlConnection sendMessage:v21];
  xpc_release(v21);
}

- (void)_setBool:(BOOL)bool forSessionProperty:(const char *)property
{
  v25 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild(self, a2) && _os_feature_enabled_impl())
  {
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

    if (v11)
    {
      v23 = 136446210;
      v24 = "[SSDownloadHandlerSession _setBool:forSessionProperty:]";
      if (v12)
      {
        v13 = v12;
        v14 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:4];
        free(v13);
        SSFileLog(v7, @"%@", v15, v16, v17, v18, v19, v20, v14);
      }
    }
  }

  v21 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v21, "0", 30);
  xpc_dictionary_set_int64(v21, "1", self->super._sessionID);
  v22 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v22, property, bool);
  xpc_dictionary_set_value(v21, "2", v22);
  xpc_release(v22);
  [(SSXPCConnection *)self->super._controlConnection sendMessage:v21];
  xpc_release(v21);
}

@end