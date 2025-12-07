@interface MADMultiModalProcessingTask
- (BOOL)run:(id *)run;
- (MADMultiModalProcessingTask)initWithRequests:(id)requests inputs:(id)inputs cancelBlock:(id)block completionHandler:(id)handler;
- (void)cancel;
@end

@implementation MADMultiModalProcessingTask

- (MADMultiModalProcessingTask)initWithRequests:(id)requests inputs:(id)inputs cancelBlock:(id)block completionHandler:(id)handler
{
  requestsCopy = requests;
  inputsCopy = inputs;
  blockCopy = block;
  handlerCopy = handler;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __85__MADMultiModalProcessingTask_initWithRequests_inputs_cancelBlock_completionHandler___block_invoke;
  v25[3] = &unk_1E834CF90;
  v15 = handlerCopy;
  v26 = v15;
  v24.receiver = self;
  v24.super_class = MADMultiModalProcessingTask;
  v16 = [(VCPMABaseTask *)&v24 initWithCompletionHandler:v25];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_requests, requests);
    objc_storeStrong(&v17->_inputs, inputs);
    signpostPayload = v17->_signpostPayload;
    v17->_signpostPayload = &stru_1F496CB30;

    array = [MEMORY[0x1E695DF70] array];
    subtasks = v17->_subtasks;
    v17->_subtasks = array;

    [(VCPMABaseTask *)v17 setCancelBlock:blockCopy];
    v21 = dispatch_queue_create("MADMultiModalProcessingTask", 0);
    cancelQueue = v17->_cancelQueue;
    v17->_cancelQueue = v21;
  }

  return v17;
}

void __85__MADMultiModalProcessingTask_initWithRequests_inputs_cancelBlock_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:@"Replies"];
  (*(v4 + 16))(v4, v6, v5);
}

- (BOOL)run:(id *)run
{
  v75[1] = *MEMORY[0x1E69E9840];
  v5 = VCPSignPostLog(self);
  v6 = os_signpost_id_generate(v5);

  v8 = VCPSignPostLog(v7);
  v9 = v8;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    signpostPayload = self->_signpostPayload;
    *buf = 138412290;
    v68 = signpostPayload;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "MADMultiModalProcessingTask_Run", "%@", buf, 0xCu);
  }

  cancelQueue = self->_cancelQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__MADMultiModalProcessingTask_run___block_invoke;
  block[3] = &unk_1E834C010;
  block[4] = self;
  dispatch_sync(cancelQueue, block);
  if ([(VCPMABaseTask *)self isCanceled])
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Request canceled", buf, 2u);
    }

    if (!run)
    {
      return 0;
    }

    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A768];
    v74 = *MEMORY[0x1E696A578];
    array = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request was canceled"];
    v75[0] = array;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:&v74 count:1];
    v16 = [v12 errorWithDomain:v13 code:-128 userInfo:v15];
    v17 = *run;
    *run = v16;

LABEL_39:
    v43 = 0;
  }

  else
  {
    spid = v6;
    v53 = v6 - 1;
    runCopy = run;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    array = self->_subtasks;
    v18 = [(NSMutableArray *)array countByEnumeratingWithState:&v59 objects:v73 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v60;
      v21 = MEMORY[0x1E69E9C10];
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v60 != v20)
          {
            objc_enumerationMutation(array);
          }

          v23 = *(*(&v59 + 1) + 8 * i);
          v24 = objc_autoreleasePoolPush();
          v25 = [v23 run];
          if (v25)
          {
            v26 = v25;
            if (v25 == -128)
            {
              if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Request canceled", buf, 2u);
              }

              if (runCopy)
              {
                v45 = MEMORY[0x1E696ABC0];
                v46 = *MEMORY[0x1E696A768];
                v71 = *MEMORY[0x1E696A578];
                v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request was canceled"];
                v72 = v47;
                v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
                v49 = [v45 errorWithDomain:v46 code:-128 userInfo:v48];
                v50 = *runCopy;
                *runCopy = v49;
              }

              objc_autoreleasePoolPop(v24);
              goto LABEL_39;
            }

            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v27 = objc_opt_class();
              v28 = NSStringFromClass(v27);
              *buf = 138412546;
              v68 = v28;
              v69 = 1024;
              v70 = v26;
              _os_log_impl(&dword_1C9B70000, v21, OS_LOG_TYPE_DEFAULT, "%@ returned unexpected status (%d)", buf, 0x12u);
            }
          }

          objc_autoreleasePoolPop(v24);
        }

        v19 = [(NSMutableArray *)array countByEnumeratingWithState:&v59 objects:v73 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    array = [MEMORY[0x1E695DF70] array];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v29 = self->_requests;
    v30 = [(NSArray *)v29 countByEnumeratingWithState:&v55 objects:v66 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v56;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v56 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v55 + 1) + 8 * j);
          v35 = objc_alloc_init(MEMORY[0x1E69AE368]);
          results = [v34 results];
          [v35 setResults:results];

          error = [v34 error];
          [v35 setError:error];

          [(NSMutableArray *)array addObject:v35];
        }

        v31 = [(NSArray *)v29 countByEnumeratingWithState:&v55 objects:v66 count:16];
      }

      while (v31);
    }

    v39 = VCPSignPostLog(v38);
    v40 = v39;
    if (v53 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
    {
      v41 = self->_signpostPayload;
      *buf = 138412290;
      v68 = v41;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v40, OS_SIGNPOST_INTERVAL_END, spid, "MADMultiModalProcessingTask_Run", "%@", buf, 0xCu);
    }

    completionHandler = [(VCPMABaseTask *)self completionHandler];
    v64 = @"Replies";
    v65 = array;
    v43 = 1;
    v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    (completionHandler)[2](completionHandler, v44, 0);
  }

  return v43;
}

void __35__MADMultiModalProcessingTask_run___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(*(a1 + 32) + 32);
  v2 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v24;
    v20 = *MEMORY[0x1E696A768];
    v19 = *MEMORY[0x1E696A578];
    p_superclass = &OBJC_METACLASS___MADProtoFaceAsset.superclass;
    v6 = 0x1EC42C000uLL;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v24 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [p_superclass + 409 subtaskForRequest:v8 inputs:*(*(a1 + 32) + *(v6 + 3872))];
        if (v9)
        {
          [*(*(a1 + 32) + 56) addObject:v9];
        }

        else
        {
          v10 = MEMORY[0x1E696ABC0];
          v27 = v19;
          v11 = MEMORY[0x1E696AEC0];
          v12 = objc_opt_class();
          v22 = NSStringFromClass(v12);
          v13 = [v11 stringWithFormat:@"%@ not currently implemented", v22];
          v28 = v13;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
          v14 = v3;
          v15 = v4;
          v17 = v16 = p_superclass;
          v18 = [v10 errorWithDomain:v20 code:-4 userInfo:v17];
          [v8 setError:v18];

          v6 = 0x1EC42C000;
          p_superclass = v16;
          v4 = v15;
          v3 = v14;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v3);
  }
}

- (void)cancel
{
  cancelQueue = self->_cancelQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__MADMultiModalProcessingTask_cancel__block_invoke;
  block[3] = &unk_1E834C010;
  block[4] = self;
  dispatch_sync(cancelQueue, block);
}

void __37__MADMultiModalProcessingTask_cancel__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v11.receiver = *(a1 + 32);
  v11.super_class = MADMultiModalProcessingTask;
  objc_msgSendSuper2(&v11, sel_cancel);
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(*(a1 + 32) + 56);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) cancel];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v12 count:16];
    }

    while (v4);
  }
}

@end