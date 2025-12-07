@interface SSUniqueExecutionQueue
- (SSUniqueExecutionQueue)initWithBlock:(id)block;
- (void)addCompletionBlock:(id)block;
@end

@implementation SSUniqueExecutionQueue

- (SSUniqueExecutionQueue)initWithBlock:(id)block
{
  blockCopy = block;
  v15.receiver = self;
  v15.super_class = SSUniqueExecutionQueue;
  v5 = [(SSUniqueExecutionQueue *)&v15 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    block = v5->_block;
    v5->_block = v6;

    v8 = dispatch_queue_create("com.apple.StoreServices.SSUniqueExecutionQueue.callBlockQueue", MEMORY[0x1E69E96A8]);
    callBlockQueue = v5->_callBlockQueue;
    v5->_callBlockQueue = v8;

    v10 = dispatch_queue_create("com.apple.StoreServices.SSUniqueExecutionQueue.executeBlockQueue", 0);
    executeBlockQueue = v5->_executeBlockQueue;
    v5->_executeBlockQueue = v10;

    v12 = dispatch_queue_create("com.apple.StoreServices.SSUniqueExecutionQueue.promiseAccessQueue", 0);
    promiseAccessQueue = v5->_promiseAccessQueue;
    v5->_promiseAccessQueue = v12;
  }

  return v5;
}

- (void)addCompletionBlock:(id)block
{
  blockCopy = block;
  objc_initWeak(&location, self);
  promiseAccessQueue = [(SSUniqueExecutionQueue *)self promiseAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SSUniqueExecutionQueue_addCompletionBlock___block_invoke;
  block[3] = &unk_1E84AD898;
  objc_copyWeak(&v9, &location);
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(promiseAccessQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __45__SSUniqueExecutionQueue_addCompletionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v25 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v25)
    {
      v25 = +[SSLogConfig sharedConfig];
    }

    v26 = [v25 shouldLog];
    if ([v25 shouldLogToDisk])
    {
      v27 = v26 | 2;
    }

    else
    {
      v27 = v26;
    }

    v28 = [v25 OSLogObject];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = v27;
    }

    else
    {
      v29 = v27 & 2;
    }

    if (v29)
    {
      v48[0] = 0;
      v30 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &dword_1D48BA000, v28, 16, "SSUniqueExecutionQueue: self is out-of-scope.", v48, 2);

      if (!v30)
      {
LABEL_30:

        v37 = *(a1 + 32);
        v4 = SSError(@"SSErrorDomain", 100, 0, 0);
        (*(v37 + 16))(v37, 0, v4);
        goto LABEL_32;
      }

      v28 = [MEMORY[0x1E696AEC0] stringWithCString:v30 encoding:4];
      free(v30);
      SSFileLog(v25, @"%@", v31, v32, v33, v34, v35, v36, v28);
    }

    goto LABEL_30;
  }

  v4 = [WeakRetained promise];
  if (!v4)
  {
    v5 = objc_alloc_init(SSPromise);
    [v3 setPromise:v5];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __45__SSUniqueExecutionQueue_addCompletionBlock___block_invoke_6;
    v46[3] = &unk_1E84AD848;
    objc_copyWeak(&v47, (a1 + 40));
    [(SSPromise *)v5 addFinishBlock:v46];
    v6 = [v3 executeBlockQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__SSUniqueExecutionQueue_addCompletionBlock___block_invoke_2;
    block[3] = &unk_1E84AD870;
    objc_copyWeak(&v45, (a1 + 40));
    v4 = v5;
    v44 = v4;
    dispatch_async(v6, block);

    objc_destroyWeak(&v45);
    objc_destroyWeak(&v47);
  }

  if (![(SSPromise *)v4 isFinished])
  {
    [(SSPromise *)v4 addFinishBlock:*(a1 + 32)];
    goto LABEL_32;
  }

  v7 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
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

  v48[0] = 0;
  v12 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_1D48BA000, v10, 1, "SSUniqueExecutionQueue: The promise already finished. Calling the completion block directly.", v48, 2);

  if (v12)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:4];
    free(v12);
    SSFileLog(v7, @"%@", v13, v14, v15, v16, v17, v18, v10);
LABEL_16:
  }

  v42 = 0;
  v19 = [(SSPromise *)v4 resultWithError:&v42];
  v20 = v42;
  v21 = [v3 callBlockQueue];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __45__SSUniqueExecutionQueue_addCompletionBlock___block_invoke_11;
  v38[3] = &unk_1E84ABEC8;
  v22 = *(a1 + 32);
  v40 = v20;
  v41 = v22;
  v39 = v19;
  v23 = v20;
  v24 = v19;
  dispatch_async(v21, v38);

LABEL_32:
}

void __45__SSUniqueExecutionQueue_addCompletionBlock___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v5 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      v19[0] = 0;
      v10 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_1D48BA000, v8, 16, "SSUniqueExecutionQueue: self is out-of-scope.", v19, 2);

      if (!v10)
      {
LABEL_15:

        goto LABEL_16;
      }

      v8 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
      free(v10);
      SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, v8);
    }

    goto LABEL_15;
  }

  v4 = [WeakRetained promiseAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SSUniqueExecutionQueue_addCompletionBlock___block_invoke_7;
  block[3] = &unk_1E84AD820;
  objc_copyWeak(&v18, (a1 + 32));
  dispatch_async(v4, block);

  objc_destroyWeak(&v18);
LABEL_16:
}

void __45__SSUniqueExecutionQueue_addCompletionBlock___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPromise:0];
}

void __45__SSUniqueExecutionQueue_addCompletionBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v10 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    v13 = [v10 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = v12;
    }

    else
    {
      v14 = v12 & 2;
    }

    if (v14)
    {
      v28[0] = 0;
      v15 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_1D48BA000, v13, 16, "SSUniqueExecutionQueue: self is out-of-scope.", v28, 2);

      if (!v15)
      {
LABEL_15:

        v22 = *(a1 + 32);
        v8 = SSError(@"SSErrorDomain", 100, 0, 0);
        [v22 finishWithError:v8];
        goto LABEL_16;
      }

      v13 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:4];
      free(v15);
      SSFileLog(v10, @"%@", v16, v17, v18, v19, v20, v21, v13);
    }

    goto LABEL_15;
  }

  v4 = [WeakRetained block];
  v27 = 0;
  v5 = (v4)[2](v4, &v27);
  v6 = v27;

  v7 = [v3 callBlockQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SSUniqueExecutionQueue_addCompletionBlock___block_invoke_10;
  block[3] = &unk_1E84AC078;
  v24 = *(a1 + 32);
  v25 = v5;
  v26 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);

LABEL_16:
}

@end