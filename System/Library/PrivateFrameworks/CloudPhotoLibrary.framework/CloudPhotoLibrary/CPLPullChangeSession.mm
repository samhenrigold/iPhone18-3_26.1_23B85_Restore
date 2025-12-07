@interface CPLPullChangeSession
- (void)acknowledgeChangeBatch:(id)batch withCompletionHandler:(id)handler;
- (void)getChangeBatchWithCompletionHandler:(id)handler;
@end

@implementation CPLPullChangeSession

- (void)acknowledgeChangeBatch:(id)batch withCompletionHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  handlerCopy = handler;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLSessionOSLogDomain_0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138412290;
      selfCopy = v10;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEBUG, "%@ called", buf, 0xCu);
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  sentBatchTimeInterval = self->_sentBatchTimeInterval;
  if ([(CPLChangeSession *)self state]== 3)
  {
    if ([(CPLChangeSession *)self state]!= 3)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v19 = __CPLSessionOSLogDomain_0();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = [objc_opt_class() stateDescriptionForState:{-[CPLChangeSession state](self, "state")}];
          *buf = 138412290;
          selfCopy = v20;
          _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_ERROR, "can't finalize a session that is in %@ state", buf, 0xCu);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLPullChangeSession.m"];
      v23 = [objc_opt_class() stateDescriptionForState:{-[CPLChangeSession state](self, "state")}];
      [currentHandler handleFailureInMethod:a2 object:self file:v22 lineNumber:65 description:{@"can't finalize a session that is in %@ state", v23}];

      abort();
    }

    v13 = Current - sentBatchTimeInterval;
    [(CPLChangeSession *)self setState:4];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLSessionOSLogDomain_0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        selfCopy = self;
        v30 = 2112;
        v31 = batchCopy;
        _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEBUG, "%@ acknowledging %@", buf, 0x16u);
      }
    }

    platformObject = [(CPLChangeSession *)self platformObject];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __69__CPLPullChangeSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke;
    v24[3] = &unk_1E861CB58;
    v24[4] = self;
    v27 = v13;
    v25 = batchCopy;
    v26 = handlerCopy;
    [platformObject acknowledgeChangeBatch:v25 withCompletionHandler:v24];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v16 = __CPLSessionOSLogDomain_0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [objc_opt_class() stateDescriptionForState:{-[CPLChangeSession state](self, "state")}];
        *buf = 138412290;
        selfCopy = v17;
        _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_ERROR, "Trying to acknowledge a batch while session is not waiting for that (state: %@)", buf, 0xCu);
      }
    }

    v18 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to acknowledge a batch while session is not waiting for that"];
    (*(handlerCopy + 2))(handlerCopy, v18, 0);
  }
}

void __69__CPLPullChangeSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLSessionOSLogDomain_0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 32);
      v13 = 138412802;
      v14 = v8;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "%@ acknowledged batch to new version %@ with error %@", &v13, 0x20u);
    }
  }

  [*(a1 + 32) setState:1];
  if (!v5)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLSessionOSLogDomain_0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 56);
        v11 = *(a1 + 40);
        v13 = 134218242;
        v14 = v10;
        v15 = 2112;
        v16 = v11;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Client acknowledged (used %.1fs) %@", &v13, 0x16u);
      }
    }

    v12 = [*(a1 + 32) libraryManager];
    [v12 _setLibraryVersion:v6];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)getChangeBatchWithCompletionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLSessionOSLogDomain_0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138412290;
      selfCopy = v7;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEBUG, "%@ called", buf, 0xCu);
    }
  }

  if ([(CPLChangeSession *)self state]== 1)
  {
    [(CPLChangeSession *)self setState:2];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLSessionOSLogDomain_0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEBUG, "%@ asking for batches", buf, 0xCu);
      }
    }

    platformObject = [(CPLChangeSession *)self platformObject];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __60__CPLPullChangeSession_getChangeBatchWithCompletionHandler___block_invoke;
    v13[3] = &unk_1E861B578;
    v13[4] = self;
    v14 = handlerCopy;
    [platformObject getChangeBatchWithCompletionHandler:v13];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLSessionOSLogDomain_0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [objc_opt_class() stateDescriptionForState:{-[CPLChangeSession state](self, "state")}];
        *buf = 138412290;
        selfCopy = v11;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Trying to get change batches while session is not idle (state: %@)", buf, 0xCu);
      }
    }

    v12 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to get change batches while session is not idle"];
    (*(handlerCopy + 2))(handlerCopy, v12, 0);
  }
}

void __60__CPLPullChangeSession_getChangeBatchWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (_CPLSilentLogging)
    {
      goto LABEL_10;
    }

    v7 = __CPLSessionOSLogDomain_0();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    v8 = *(a1 + 32);
    *v14 = 138412546;
    *&v14[4] = v8;
    *&v14[12] = 2112;
    *&v14[14] = v5;
    v9 = "%@ got error: %@";
    v10 = v7;
    v11 = 22;
    goto LABEL_8;
  }

  if (_CPLSilentLogging)
  {
    goto LABEL_10;
  }

  v7 = __CPLSessionOSLogDomain_0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 32);
    *v14 = 138412802;
    *&v14[4] = v12;
    *&v14[12] = 2048;
    *&v14[14] = [v6 count];
    *&v14[22] = 2112;
    v15 = v6;
    v9 = "%@ got %lu changes in %@";
    v10 = v7;
    v11 = 32;
LABEL_8:
    _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEBUG, v9, v14, v11);
  }

LABEL_9:

LABEL_10:
  if (v6)
  {
    v13 = 3;
  }

  else
  {
    v13 = 1;
  }

  [*(a1 + 32) setState:{v13, *v14, *&v14[8], v15}];
  *(*(a1 + 32) + 48) = CFAbsoluteTimeGetCurrent();
  (*(*(a1 + 40) + 16))();
}

@end