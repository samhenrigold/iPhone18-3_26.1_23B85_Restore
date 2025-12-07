@interface MTCompanionSyncSession
- (BOOL)syncSession:(id)session resetDataStoreWithError:(id *)error;
- (MTCompanionSyncSession)initWithSession:(id)session request:(id)request delegate:(id)delegate;
- (MTSyncServiceDelegate)delegate;
- (NSString)description;
- (id)sessionDescription;
- (unsigned)syncSession:(id)session enqueueChanges:(id)changes error:(id *)error;
- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion;
- (void)syncSession:(id)session didEndWithError:(id)error;
@end

@implementation MTCompanionSyncSession

- (MTCompanionSyncSession)initWithSession:(id)session request:(id)request delegate:(id)delegate
{
  v29 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  requestCopy = request;
  delegateCopy = delegate;
  v24.receiver = self;
  v24.super_class = MTCompanionSyncSession;
  v12 = [(MTCompanionSyncSession *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_session, session);
    v14 = objc_opt_new();
    [(SYSession *)v13->_session setSerializer:v14];

    [(SYSession *)v13->_session setDelegate:v13];
    objc_storeStrong(&v13->_request, request);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v13->_lastIndex = 0;
    v15 = objc_opt_new();
    processedChanges = v13->_processedChanges;
    v13->_processedChanges = v15;

    v17 = MTLogForCategory(6);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v26 = v13;
      v27 = 2114;
      v28 = delegateCopy;
      _os_log_impl(&dword_1B1F9F000, v17, OS_LOG_TYPE_DEFAULT, "Initializing %{public}@ with delegate %{public}@", buf, 0x16u);
    }

    if ([sessionCopy isSending])
    {
      WeakRetained = objc_loadWeakRetained(&v13->_delegate);
      pendingChanges = [WeakRetained pendingChanges];
      pendingChanges = v13->_pendingChanges;
      v13->_pendingChanges = pendingChanges;

      v21 = MTLogForCategory(6);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v13->_pendingChanges;
        *buf = 138543618;
        v26 = v13;
        v27 = 2114;
        v28 = v22;
        _os_log_impl(&dword_1B1F9F000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ will enqueue changes %{public}@", buf, 0x16u);
      }
    }
  }

  return v13;
}

- (unsigned)syncSession:(id)session enqueueChanges:(id)changes error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  v7 = MTLogForCategory(6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy5 = self;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ ready to enqueue changes", buf, 0xCu);
  }

  lastIndex = self->_lastIndex;
  if (lastIndex < [(NSArray *)self->_pendingChanges count])
  {
    *&v9 = 138543618;
    v20 = v9;
    while (1)
    {
      v10 = [(NSArray *)self->_pendingChanges objectAtIndexedSubscript:lastIndex, v20];
      v11 = changesCopy[2](changesCopy, v10);
      v12 = MTLogForCategory(6);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (!v11)
      {
        break;
      }

      if (v13)
      {
        *buf = v20;
        selfCopy5 = self;
        v23 = 2114;
        v24 = v10;
        _os_log_impl(&dword_1B1F9F000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ enqueued %{public}@", buf, 0x16u);
      }

      [(NSMutableArray *)self->_processedChanges addObject:v10];
      ++lastIndex;

      if (lastIndex >= [(NSArray *)self->_pendingChanges count])
      {
        goto LABEL_13;
      }
    }

    if (v13)
    {
      *buf = v20;
      selfCopy5 = self;
      v23 = 2114;
      v24 = v10;
      _os_log_impl(&dword_1B1F9F000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ stopped enqueing at %{public}@", buf, 0x16u);
    }
  }

LABEL_13:
  self->_lastIndex = lastIndex;
  v14 = [(NSArray *)self->_pendingChanges count];
  v15 = MTLogForCategory(6);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (lastIndex >= v14)
  {
    if (v16)
    {
      v18 = [(NSArray *)self->_pendingChanges count];
      *buf = 138543618;
      selfCopy5 = self;
      v23 = 2048;
      v24 = v18;
      _os_log_impl(&dword_1B1F9F000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ enqueued all %lu changes", buf, 0x16u);
    }

    v17 = 2;
  }

  else
  {
    if (v16)
    {
      *buf = 138543362;
      selfCopy5 = self;
      _os_log_impl(&dword_1B1F9F000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ continuing session...", buf, 0xCu);
    }

    v17 = 1;
  }

  return v17;
}

- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  completionCopy = completion;
  v8 = MTLogForCategory(6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy4 = self;
    v28 = 2048;
    v29 = [changesCopy count];
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ has %lu changes to apply", buf, 0x16u);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = changesCopy;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        if ([v14 conformsToProtocol:&unk_1F29768E8])
        {
          v15 = v14;
          v16 = MTLogForCategory(6);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            selfCopy4 = self;
            v28 = 2114;
            v29 = v15;
            _os_log_impl(&dword_1B1F9F000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ applying %{public}@", buf, 0x16u);
          }

          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained applyChange:v15];

          [(NSMutableArray *)self->_processedChanges addObject:v15];
        }

        else
        {
          v15 = MTLogForCategory(6);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            selfCopy4 = self;
            v28 = 2114;
            v29 = v14;
            _os_log_error_impl(&dword_1B1F9F000, v15, OS_LOG_TYPE_ERROR, "%{public}@ skipping invalid change %{public}@", buf, 0x16u);
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v18 = MTLogForCategory(6);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(NSMutableArray *)self->_processedChanges count];
    *buf = 138543618;
    selfCopy4 = self;
    v28 = 2048;
    v29 = v19;
    _os_log_impl(&dword_1B1F9F000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ finished applying %lu changes", buf, 0x16u);
  }

  completionCopy[2](completionCopy, 1, 0);
}

- (BOOL)syncSession:(id)session resetDataStoreWithError:(id *)error
{
  v13 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v6 = MTLogForCategory(6);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    selfCopy = self;
    v11 = 2114;
    v12 = sessionCopy;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ session %{public}@ wants to reset data store", &v9, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained resetDataStore];

  return 1;
}

- (void)syncSession:(id)session didEndWithError:(id)error
{
  v13 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  WeakRetained = session;
  v8 = MTLogForCategory(6);
  v9 = v8;
  if (errorCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(MTCompanionSyncSession *)self syncSession:errorCopy didEndWithError:v9];
    }

    [WeakRetained isSending];
    goto LABEL_9;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ completed succesfully", &v11, 0xCu);
  }

  isSending = [WeakRetained isSending];
  if (isSending)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained pendingChangesSent:self->_processedChanges];
LABEL_9:
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  sessionDescription = [(MTCompanionSyncSession *)self sessionDescription];
  v6 = [v3 stringWithFormat:@"<%@: %p %@ >", v4, self, sessionDescription];

  return v6;
}

- (id)sessionDescription
{
  session = [(MTCompanionSyncSession *)self session];
  isSending = [session isSending];

  if (isSending)
  {
    return @"SEND";
  }

  else
  {
    return @"RECV";
  }
}

- (MTSyncServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)syncSession:(os_log_t)log didEndWithError:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1B1F9F000, log, OS_LOG_TYPE_ERROR, "%{public}@ failed with error %{public}@", &v3, 0x16u);
}

@end