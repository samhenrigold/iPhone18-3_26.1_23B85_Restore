@interface VCPMADServiceImageProcessingTask
+ (id)taskWithRequests:(id)requests forAsset:(id)asset cancelBlock:(id)block andCompletionHandler:(id)handler;
- (BOOL)run:(id *)p_isa;
- (VCPMADServiceImageProcessingTask)initWithRequests:(id)requests forAsset:(id)asset cancelBlock:(id)block andCompletionHandler:(id)handler;
- (void)cancel;
@end

@implementation VCPMADServiceImageProcessingTask

- (VCPMADServiceImageProcessingTask)initWithRequests:(id)requests forAsset:(id)asset cancelBlock:(id)block andCompletionHandler:(id)handler
{
  requestsCopy = requests;
  assetCopy = asset;
  blockCopy = block;
  handlerCopy = handler;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __95__VCPMADServiceImageProcessingTask_initWithRequests_forAsset_cancelBlock_andCompletionHandler___block_invoke;
  v25[3] = &unk_1E834C7A0;
  v15 = handlerCopy;
  v26 = v15;
  v24.receiver = self;
  v24.super_class = VCPMADServiceImageProcessingTask;
  v16 = [(VCPMABaseTask *)&v24 initWithCompletionHandler:v25];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_requests, requests);
    objc_storeStrong(&v17->_asset, asset);
    signpostPayload = v17->_signpostPayload;
    v17->_signpostPayload = &stru_1F496CB30;

    array = [MEMORY[0x1E695DF70] array];
    subtasks = v17->_subtasks;
    v17->_subtasks = array;

    [(VCPMABaseTask *)v17 setCancelBlock:blockCopy];
    v21 = dispatch_queue_create("VCPMADServiceImageProcessingTask", 0);
    cancelQueue = v17->_cancelQueue;
    v17->_cancelQueue = v21;
  }

  return v17;
}

+ (id)taskWithRequests:(id)requests forAsset:(id)asset cancelBlock:(id)block andCompletionHandler:(id)handler
{
  requestsCopy = requests;
  assetCopy = asset;
  blockCopy = block;
  handlerCopy = handler;
  v13 = [objc_alloc(objc_opt_class()) initWithRequests:requestsCopy forAsset:assetCopy cancelBlock:blockCopy andCompletionHandler:handlerCopy];

  return v13;
}

- (BOOL)run:(id *)p_isa
{
  v60[1] = *MEMORY[0x1E69E9840];
  v5 = VCPSignPostLog(self);
  spid = os_signpost_id_generate(v5);

  v7 = VCPSignPostLog(v6);
  v8 = v7;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    signpostPayload = self->_signpostPayload;
    *buf = 138412290;
    v51 = signpostPayload;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMADServiceImageProcessingTask_Run", "%@", buf, 0xCu);
  }

  [(VCPMADServiceImageAsset *)self->_asset setSignpostPayload:self->_signpostPayload];
  cancelQueue = self->_cancelQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__VCPMADServiceImageProcessingTask_run___block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(cancelQueue, block);
  if (![(VCPMABaseTask *)self isCanceled])
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    completionHandler = self->_subtasks;
    v16 = [(NSMutableArray *)completionHandler countByEnumeratingWithState:&v45 objects:v58 count:16];
    if (!v16)
    {
LABEL_37:

      v39 = VCPSignPostLog(v38);
      p_isa = &v39->isa;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
      {
        v40 = self->_signpostPayload;
        *buf = 138412290;
        v51 = v40;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, p_isa, OS_SIGNPOST_INTERVAL_END, spid, "VCPMADServiceImageProcessingTask_Run", "%@", buf, 0xCu);
      }

      completionHandler = [(VCPMABaseTask *)self completionHandler];
      (completionHandler[2].super.super.isa)(completionHandler, 0, 0);
      LOBYTE(p_isa) = 1;
LABEL_41:

      return p_isa;
    }

    v17 = *v46;
    v43 = *MEMORY[0x1E696A768];
    v44 = *MEMORY[0x1E696A578];
LABEL_13:
    v18 = 0;
    while (1)
    {
      if (*v46 != v17)
      {
        objc_enumerationMutation(completionHandler);
      }

      v19 = *(*(&v45 + 1) + 8 * v18);
      v20 = objc_autoreleasePoolPush();
      if ([(VCPMABaseTask *)self isCanceled])
      {
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          v21 = objc_opt_class();
          *buf = 138412290;
          v51 = v21;
          v22 = v21;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Request subtask %@ canceled", buf, 0xCu);
        }

        if (p_isa)
        {
          v23 = MEMORY[0x1E696ABC0];
          v56 = v44;
          v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request was canceled"];
          v57 = v24;
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          v26 = [v23 errorWithDomain:v43 code:-128 userInfo:v25];
          v27 = *p_isa;
          *p_isa = v26;
        }
      }

      else
      {
        v28 = [v19 run];
        v29 = v28;
        if (!v28)
        {
          goto LABEL_33;
        }

        if (v28 != -128)
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v36 = objc_opt_class();
            v37 = NSStringFromClass(v36);
            *buf = 138412546;
            v51 = v37;
            v52 = 1024;
            v53 = v29;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ returned unexpected status (%d)", buf, 0x12u);
          }

LABEL_33:
          v35 = 1;
          goto LABEL_34;
        }

        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Request canceled", buf, 2u);
        }

        if (p_isa)
        {
          v30 = MEMORY[0x1E696ABC0];
          v54 = v44;
          v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request was canceled"];
          v55 = v31;
          v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
          v33 = [v30 errorWithDomain:v43 code:-128 userInfo:v32];
          v34 = *p_isa;
          *p_isa = v33;
        }
      }

      v35 = 0;
LABEL_34:
      objc_autoreleasePoolPop(v20);
      if (!v35)
      {
        goto LABEL_10;
      }

      if (v16 == ++v18)
      {
        v16 = [(NSMutableArray *)completionHandler countByEnumeratingWithState:&v45 objects:v58 count:16];
        if (!v16)
        {
          goto LABEL_37;
        }

        goto LABEL_13;
      }
    }
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Request canceled", buf, 2u);
  }

  if (p_isa)
  {
    v11 = MEMORY[0x1E696ABC0];
    v59 = *MEMORY[0x1E696A578];
    completionHandler = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request was canceled"];
    v60[0] = completionHandler;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:&v59 count:1];
    v14 = [v11 errorWithDomain:*MEMORY[0x1E696A768] code:-128 userInfo:v13];
    v15 = *p_isa;
    *p_isa = v14;

LABEL_10:
    LOBYTE(p_isa) = 0;
    goto LABEL_41;
  }

  return p_isa;
}

uint64_t __40__VCPMADServiceImageProcessingTask_run___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = *(*(a1 + 32) + 32);
  v2 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v2)
  {
    v3 = *v19;
    v15 = *MEMORY[0x1E696A768];
    v16 = *MEMORY[0x1E696A578];
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v19 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v18 + 1) + 8 * i);
        v6 = [v5 vcp_taskWithImageAsset:*(*(a1 + 32) + 40) andSignpostPayload:*(*(a1 + 32) + 48)];
        if (v6)
        {
          [*(*(a1 + 32) + 56) addObject:v6];
        }

        else
        {
          v7 = MEMORY[0x1E696ABC0];
          v22 = v16;
          v8 = MEMORY[0x1E696AEC0];
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          v11 = [v8 stringWithFormat:@"%@ not currently implemented", v10];
          v23 = v11;
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
          v13 = [v7 errorWithDomain:v15 code:-4 userInfo:v12];
          [v5 setError:v13];
        }
      }

      v2 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v2);
  }

  return [*(*(a1 + 32) + 56) sortUsingComparator:&__block_literal_global_61];
}

uint64_t __40__VCPMADServiceImageProcessingTask_run___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [objc_opt_class() dependencies];
  v7 = [v6 containsObject:objc_opt_class()];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = [objc_opt_class() dependencies];
    v10 = [v9 containsObject:objc_opt_class()];

    v8 = v10 << 63 >> 63;
  }

  return v8;
}

- (void)cancel
{
  cancelQueue = self->_cancelQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__VCPMADServiceImageProcessingTask_cancel__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(cancelQueue, block);
}

void __42__VCPMADServiceImageProcessingTask_cancel__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1 + 32;
  v10.receiver = *(a1 + 32);
  v10.super_class = VCPMADServiceImageProcessingTask;
  objc_msgSendSuper2(&v10, sel_cancel);
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v2 = *(*v1 + 56);
  v3 = [v2 countByEnumeratingWithState:&v6 objects:v11 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v6 + 1) + 8 * v5++) cancel];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v6 objects:v11 count:16];
    }

    while (v3);
  }
}

@end