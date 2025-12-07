@interface SUScriptOperation
+ (Class)postOperationClassForType:(id)type;
+ (void)registerPostOperationClass:(Class)class forType:(id)type;
- (SUScriptOperation)initWithOperation:(id)operation callback:(id)callback;
- (SUScriptOperation)initWithOperation:(id)operation options:(id)options;
- (SUScriptOperation)initWithPostType:(id)type options:(id)options;
- (id)_scriptOptions;
- (void)_sendCompletionCallback;
- (void)dealloc;
- (void)run;
- (void)setScriptOptions:(id)options;
@end

@implementation SUScriptOperation

- (SUScriptOperation)initWithOperation:(id)operation options:(id)options
{
  v6 = [(SUScriptOperation *)self init];
  if (v6)
  {
    v6->_options = options;
    operationCopy = operation;
    v6->_wrappedOperation = operationCopy;
    [(ISOperation *)operationCopy setScriptOptions:v6->_options];
  }

  return v6;
}

- (SUScriptOperation)initWithOperation:(id)operation callback:(id)callback
{
  v5 = [(SUScriptOperation *)self initWithOperation:operation options:0];
  if (v5)
  {
    v5->_callbackFunction = callback;
  }

  return v5;
}

- (SUScriptOperation)initWithPostType:(id)type options:(id)options
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = [objc_opt_class() postOperationClassForType:type];
  if (v7)
  {
    v8 = objc_alloc_init(v7);
    v9 = [(SUScriptOperation *)self initWithOperation:v8 options:options];

    return v9;
  }

  else
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      LODWORD(v13) = shouldLog | 2;
    }

    else
    {
      LODWORD(v13) = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v13;
    }

    else
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v17 = 138412546;
      v18 = objc_opt_class();
      v19 = 2112;
      typeCopy = type;
      v15 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_1C21AF000, oSLogObject, 0, "%@: Could not find operation for type: %@", &v17, 22);
      if (v15)
      {
        v16 = v15;
        [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:4];
        free(v16);
        SSFileLog();
      }
    }

    return 0;
  }
}

- (void)dealloc
{
  self->_options = 0;

  self->_wrappedOperation = 0;
  self->_callbackFunction = 0;
  v3.receiver = self;
  v3.super_class = SUScriptOperation;
  [(SUScriptOperation *)&v3 dealloc];
}

+ (Class)postOperationClassForType:(id)type
{
  _os_nospin_lock_lock();
  v4 = [__OperationClasses objectForKey:type];
  _os_nospin_lock_unlock();
  return v4;
}

+ (void)registerPostOperationClass:(Class)class forType:(id)type
{
  _os_nospin_lock_lock();
  v6 = __OperationClasses;
  if (__OperationClasses)
  {
    if (class)
    {
LABEL_3:
      [v6 setObject:class forKey:type];
      goto LABEL_6;
    }
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    __OperationClasses = v6;
    if (class)
    {
      goto LABEL_3;
    }
  }

  [v6 removeObjectForKey:type];
LABEL_6:

  _os_nospin_lock_unlock();
}

- (void)run
{
  v28 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v7 = objc_opt_class();
    wrappedOperation = self->_wrappedOperation;
    v24 = 138412546;
    v25 = v7;
    v26 = 2112;
    v27 = wrappedOperation;
    v9 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1C21AF000, oSLogObject, 2, "%@: Running script operation: %@", &v24, 22);
    if (v9)
    {
      v10 = v9;
      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
      free(v10);
      v20 = v11;
      SSFileLog();
    }
  }

  v23 = 0;
  if ([(SUScriptOperation *)self runSubOperation:self->_wrappedOperation returningError:&v23, v20])
  {
    [(SUScriptOperation *)self setSuccess:1];
  }

  else
  {
    mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
    if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
    {
      LODWORD(v14) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v14) = shouldLog2;
    }

    oSLogObject2 = [mEMORY[0x1E69D4938]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      v14 = v14;
    }

    else
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v16 = objc_opt_class();
      v24 = 138412546;
      v25 = v16;
      v26 = 2112;
      v27 = v23;
      LODWORD(v22) = 22;
      v17 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_1C21AF000, oSLogObject2, 2, "%@: Post operation failed with error: %@", &v24, v22);
      if (v17)
      {
        v18 = v17;
        v19 = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:4];
        free(v18);
        v21 = v19;
        SSFileLog();
      }
    }

    [(SUScriptOperation *)self setError:v23, v21];
  }

  [(SUScriptOperation *)self performSelectorOnMainThread:sel__sendCompletionCallback withObject:0 waitUntilDone:1];
}

- (void)setScriptOptions:(id)options
{
  [(SUScriptOperation *)self lock];
  options = self->_options;
  if (options != options)
  {

    self->_options = options;
  }

  [(SUScriptOperation *)self unlock];
}

- (id)_scriptOptions
{
  [(SUScriptOperation *)self lock];
  v3 = self->_options;
  [(SUScriptOperation *)self unlock];
  return v3;
}

- (void)_sendCompletionCallback
{
  v32 = *MEMORY[0x1E69E9840];
  _scriptOptions = [(SUScriptOperation *)self _scriptOptions];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if (!self->_callbackFunction)
    {
      mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog = [mEMORY[0x1E69D4938] shouldLog];
      if ([mEMORY[0x1E69D4938] shouldLogToDisk])
      {
        LODWORD(v6) = shouldLog | 2;
      }

      else
      {
        LODWORD(v6) = shouldLog;
      }

      oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
      {
        v6 = v6;
      }

      else
      {
        v6 &= 2u;
      }

      if (v6)
      {
        *v31 = 138412290;
        *&v31[4] = objc_opt_class();
        v8 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1C21AF000, oSLogObject, 2, "%@: Using options callbackFunction", v31, 12);
        if (v8)
        {
          v9 = v8;
          v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
          free(v9);
          v29 = v10;
          SSFileLog();
        }
      }

      self->_callbackFunction = [_scriptOptions safeValueForKey:{@"completionCallback", v29}];
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
    if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
    {
      LODWORD(v14) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v14) = shouldLog2;
    }

    oSLogObject2 = [mEMORY[0x1E69D4938]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      v14 = v14;
    }

    else
    {
      v14 &= 2u;
    }

    if (isKindOfClass)
    {
      if (v14)
      {
        v16 = objc_opt_class();
        success = [(SUScriptOperation *)self success];
        *v31 = 138412546;
        *&v31[4] = v16;
        *&v31[12] = 1024;
        *&v31[14] = success;
        LODWORD(v30) = 18;
        v18 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_1C21AF000, oSLogObject2, 2, "%@: Invoking callback with success: %d", v31, v30);
        if (v18)
        {
          v19 = v18;
          v20 = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:4];
          free(v19);
          v29 = v20;
          SSFileLog();
        }
      }

      wrappedOperation = self->_wrappedOperation;
      if (!wrappedOperation)
      {
        wrappedOperation = self;
      }

      [(ISOperation *)wrappedOperation sendCompletionCallback:self->_callbackFunction, v29];
      return;
    }

    if (!v14)
    {
      return;
    }

    v22 = objc_opt_class();
    *v31 = 138412290;
    *&v31[4] = v22;
    LODWORD(v30) = 12;
    v23 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_1C21AF000, oSLogObject2, 2, "%@: No (or invalid) callback", v31, v30, *v31, *&v31[8]);
  }

  else
  {
    mEMORY[0x1E69D4938]3 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog3 = [mEMORY[0x1E69D4938]3 shouldLog];
    if ([mEMORY[0x1E69D4938]3 shouldLogToDisk])
    {
      LODWORD(v26) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v26) = shouldLog3;
    }

    oSLogObject3 = [mEMORY[0x1E69D4938]3 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
    {
      v26 = v26;
    }

    else
    {
      v26 &= 2u;
    }

    if (!v26)
    {
      return;
    }

    *v31 = 138412290;
    *&v31[4] = objc_opt_class();
    v23 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &dword_1C21AF000, oSLogObject3, 2, "%@: No (or invalid) options/callback", v31, 12, *v31, *&v31[8]);
  }

  if (v23)
  {
    v28 = v23;
    [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:4];
    free(v28);
    SSFileLog();
  }
}

@end