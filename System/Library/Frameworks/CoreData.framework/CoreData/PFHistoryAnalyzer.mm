@interface PFHistoryAnalyzer
- (PFHistoryAnalyzer)initWithOptions:(id)options;
- (id)instantiateNewAnalyzerContextForChangesInStore:(id)store;
- (uint64_t)streamProcessedChangesForStore:(void *)store inContext:(uint64_t)context sinceLastHistoryToken:(uint64_t)token contextHandler:(void *)handler error:;
- (void)dealloc;
@end

@implementation PFHistoryAnalyzer

- (PFHistoryAnalyzer)initWithOptions:(id)options
{
  v7.receiver = self;
  v7.super_class = PFHistoryAnalyzer;
  v4 = [(PFHistoryAnalyzer *)&v7 init];
  if (v4)
  {
    if (options)
    {
      v5 = [options copy];
    }

    else
    {
      v5 = objc_alloc_init(PFHistoryAnalyzerOptions);
    }

    v4->_options = v5;
  }

  return v4;
}

- (void)dealloc
{
  self->_options = 0;
  v3.receiver = self;
  v3.super_class = PFHistoryAnalyzer;
  [(PFHistoryAnalyzer *)&v3 dealloc];
}

- (id)instantiateNewAnalyzerContextForChangesInStore:(id)store
{
  v4 = [PFHistoryAnalyzerContext alloc];
  options = self->_options;

  return [(PFHistoryAnalyzerContext *)v4 initWithOptions:options];
}

- (uint64_t)streamProcessedChangesForStore:(void *)store inContext:(uint64_t)context sinceLastHistoryToken:(uint64_t)token contextHandler:(void *)handler error:
{
  v34 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3052000000;
    v27 = __Block_byref_object_copy__53;
    v28 = __Block_byref_object_dispose__53;
    v29 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 1;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3052000000;
    v17 = __Block_byref_object_copy__53;
    v18 = __Block_byref_object_dispose__53;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __105__PFHistoryAnalyzer_streamProcessedChangesForStore_inContext_sinceLastHistoryToken_contextHandler_error___block_invoke;
    v13[3] = &unk_1E6EC5850;
    v13[4] = self;
    v13[5] = context;
    v13[6] = a2;
    v13[7] = store;
    v13[8] = token;
    v13[9] = &v24;
    v13[10] = &v20;
    v13[11] = &v14;
    [store performBlockAndWait:v13];
    if ((v21[3] & 1) == 0)
    {
      v9 = v15[5];
      if (v9)
      {
        objc_exception_throw(v9);
      }

      v10 = v25[5];
      if (v10)
      {
        if (handler)
        {
          *handler = v10;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v31 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFHistoryAnalyzer.m";
          v32 = 1024;
          v33 = 300;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v12 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v31 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFHistoryAnalyzer.m";
          v32 = 1024;
          v33 = 300;
          _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }
    }

    v25[5] = 0;
    v7 = *(v21 + 24);
    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void __105__PFHistoryAnalyzer_streamProcessedChangesForStore_inContext_sinceLastHistoryToken_contextHandler_error___block_invoke(uint64_t a1)
{
  v45[1] = *MEMORY[0x1E69E9840];
  v42 = 0;
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (!v3)
    {
      v3 = 20;
    }
  }

  else
  {
    v3 = 20;
  }

  v34 = v3;
  v37 = *(a1 + 40);
  v4 = 0;
  v5 = 1;
  while ((v5 & 1) != 0)
  {
    context = objc_autoreleasePoolPush();
    v6 = [NSPersistentHistoryChangeRequest fetchHistoryAfterToken:v37];
    [(NSPersistentHistoryChangeRequest *)v6 setFetchBatchSize:20];
    [(NSPersistentHistoryChangeRequest *)v6 setFetchLimit:v34];
    [(NSPersistentHistoryChangeRequest *)v6 setUseQueryGenerationToken:1];
    [(NSPersistentHistoryChangeRequest *)v6 setResultType:5];
    v45[0] = *(a1 + 48);
    -[NSPersistentStoreRequest setAffectedStores:](v6, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1]);
    v7 = [*(a1 + 56) executeRequest:v6 error:&v42];
    if (!v7)
    {
      *(*(*(a1 + 80) + 8) + 24) = 0;
      v5 = 0;
      *(*(*(a1 + 72) + 8) + 40) = v42;
      goto LABEL_58;
    }

    if (!v4)
    {
      v4 = [*(a1 + 32) instantiateNewAnalyzerContextForChangesInStore:*(a1 + 48)];
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v8 = [v7 result];
    v9 = [v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (!v9)
    {
      if (*(*(*(a1 + 80) + 8) + 24))
      {
        goto LABEL_53;
      }

      goto LABEL_57;
    }

    v33 = v7;
    v35 = 0;
    v10 = *v39;
    do
    {
      v11 = 0;
      do
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v38 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        if (([*(a1 + 32) processTransaction:v12 withContext:v4 error:*(*(a1 + 72) + 8) + 40] & 1) == 0)
        {
          if (!*(*(*(a1 + 72) + 8) + 40))
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: History transaction processing failed but didn't return an error\n", buf, 2u);
            }

            v19 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_18565F000, v19, OS_LOG_TYPE_FAULT, "CoreData: History transaction processing failed but didn't return an error", buf, 2u);
            }
          }

LABEL_27:
          *(*(*(a1 + 80) + 8) + 24) = 0;
          v20 = *(*(*(a1 + 72) + 8) + 40);
LABEL_38:
          v23 = 0;
          goto LABEL_39;
        }

        v14 = *(*(a1 + 32) + 8);
        if (!v14 || (v15 = *(v14 + 24)) == 0)
        {
LABEL_34:
          v23 = 1;
          goto LABEL_39;
        }

        if (v4)
        {
          if (v4[7] > v15)
          {
            v16 = objc_autoreleasePoolPush();
            if ([v4 finishProcessing:*(*(a1 + 72) + 8) + 40])
            {
              if ((*(*(a1 + 64) + 16))())
              {

                v17 = [*(a1 + 32) instantiateNewAnalyzerContextForChangesInStore:*(a1 + 48)];
                v35 = 1;
                v4 = v17;
                v37 = [v12 token];
              }

              else
              {
                v25 = *(*(*(a1 + 72) + 8) + 40);
                *(*(*(a1 + 80) + 8) + 24) = 0;
              }
            }

            else
            {
              *(*(*(a1 + 80) + 8) + 24) = 0;
              v24 = *(*(*(a1 + 72) + 8) + 40);
            }

            objc_autoreleasePoolPop(v16);
            goto LABEL_38;
          }

          if (v15 >> 21 > 4)
          {
            goto LABEL_34;
          }

          v21 = v4[3];
        }

        else
        {
          v21 = 0;
          if (v15 >= 0xA00000)
          {
            v23 = 1;
            v4 = 0;
            goto LABEL_39;
          }
        }

        if ([v21 count] < 0x3E8)
        {
          goto LABEL_34;
        }

        if (![v4 finishProcessing:*(*(a1 + 72) + 8) + 40])
        {
          goto LABEL_27;
        }

        if ((*(*(a1 + 64) + 16))())
        {

          v22 = [*(a1 + 32) instantiateNewAnalyzerContextForChangesInStore:*(a1 + 48)];
          v23 = 0;
          v35 = 1;
          v4 = v22;
          v37 = [v12 token];
        }

        else
        {
          v26 = *(*(*(a1 + 72) + 8) + 40);
          v23 = 0;
          *(*(*(a1 + 80) + 8) + 24) = 0;
        }

LABEL_39:
        objc_autoreleasePoolPop(v13);
        if (!v23)
        {
          goto LABEL_46;
        }

        ++v11;
      }

      while (v9 != v11);
      v27 = [v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
      v9 = v27;
    }

    while (v27);
LABEL_46:
    if (*(*(*(a1 + 80) + 8) + 24))
    {
      if (v35)
      {
        [*(a1 + 56) reset];
        v5 = 1;
        goto LABEL_58;
      }

      v7 = v33;
LABEL_53:
      v28 = *(*(a1 + 32) + 8);
      if ((!v28 || !*(v28 + 16)) && [objc_msgSend(v7 "result")] == v34)
      {

        v29 = [objc_msgSend(objc_msgSend(v7 "result")];
        v5 = 1;
        v37 = v29;
        goto LABEL_58;
      }
    }

LABEL_57:
    v5 = 0;
LABEL_58:
    objc_autoreleasePoolPop(context);
  }

  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    v30 = objc_autoreleasePoolPush();
    if (![v4 finishProcessing:*(*(a1 + 72) + 8) + 40] || (!v4 ? (v31 = 0) : (v31 = v4[4]), objc_msgSend(v31, "count") && ((*(*(a1 + 64) + 16))() & 1) == 0))
    {
      *(*(*(a1 + 80) + 8) + 24) = 0;
      v32 = *(*(*(a1 + 72) + 8) + 40);
    }

    objc_autoreleasePoolPop(v30);
  }
}

@end