@interface SUBackgroundTaskOperation
- (ISOperation)operation;
- (NSString)permissionIdentifier;
- (SUBackgroundTaskOperation)initWithOperation:(id)operation identifier:(id)identifier;
- (void)_cancelBackgroundAssertion;
- (void)_removeBackgroundAssertion;
- (void)_takeBackgroundAssertion;
- (void)dealloc;
- (void)run;
@end

@implementation SUBackgroundTaskOperation

- (SUBackgroundTaskOperation)initWithOperation:(id)operation identifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = SUBackgroundTaskOperation;
  v6 = [(SUBackgroundTaskOperation *)&v8 init];
  if (v6)
  {
    v6->_operation = operation;
    v6->_permissionIdentifier = identifier;
    v6->_taskIdentifier = *MEMORY[0x1E69DDBE8];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUBackgroundTaskOperation;
  [(SUBackgroundTaskOperation *)&v3 dealloc];
}

- (ISOperation)operation
{
  v2 = self->_operation;

  return v2;
}

- (NSString)permissionIdentifier
{
  v2 = self->_permissionIdentifier;

  return v2;
}

- (void)run
{
  [-[SUBackgroundTaskOperation blockingMainThreadProxy](self "blockingMainThreadProxy")];
  v3 = 0;
  [(SUBackgroundTaskOperation *)self setSuccess:[(SUBackgroundTaskOperation *)self runSubOperation:self->_operation returningError:&v3]];
  [(SUBackgroundTaskOperation *)self setError:v3];
  [-[SUBackgroundTaskOperation blockingMainThreadProxy](self "blockingMainThreadProxy")];
}

- (void)_cancelBackgroundAssertion
{
  [(SUBackgroundTaskOperation *)self cancel];

  [(SUBackgroundTaskOperation *)self _removeBackgroundAssertion];
}

- (void)_removeBackgroundAssertion
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69DDBE8];
  if (self->_taskIdentifier != *MEMORY[0x1E69DDBE8])
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
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v6;
    }

    else
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v8 = objc_opt_class();
      permissionIdentifier = self->_permissionIdentifier;
      operation = self->_operation;
      v15 = 138412802;
      v16 = v8;
      v17 = 2112;
      v18 = permissionIdentifier;
      v19 = 2112;
      v20 = operation;
      v11 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1C21AF000, oSLogObject, 0, "%@: Remove %@ for %@", &v15, 32);
      if (v11)
      {
        v12 = v11;
        v13 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:4];
        free(v12);
        v14 = v13;
        SSFileLog();
      }
    }

    [objc_msgSend(MEMORY[0x1E69DC668] sharedApplication];
    self->_taskIdentifier = v2;
  }
}

- (void)_takeBackgroundAssertion
{
  v22 = *MEMORY[0x1E69E9840];
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
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    permissionIdentifier = self->_permissionIdentifier;
    operation = self->_operation;
    v16 = 138412802;
    v17 = v7;
    v18 = 2112;
    v19 = permissionIdentifier;
    v20 = 2112;
    v21 = operation;
    v10 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1C21AF000, oSLogObject, 0, "%@: Assert %@ for %@", &v16, 32);
    if (v10)
    {
      v11 = v10;
      v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
      free(v11);
      v14 = v12;
      SSFileLog();
    }
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__SUBackgroundTaskOperation__takeBackgroundAssertion__block_invoke;
  v15[3] = &unk_1E8164348;
  v15[4] = self;
  self->_taskIdentifier = [mEMORY[0x1E69DC668] beginBackgroundTaskWithExpirationHandler:v15];
}

@end