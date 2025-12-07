@interface MADServiceTextPrewarmingTask
- (BOOL)run:(id *)p_isa;
- (MADServiceTextPrewarmingTask)initWithRequests:(id)requests cancelBlock:(id)block completionHandler:(id)handler;
@end

@implementation MADServiceTextPrewarmingTask

- (MADServiceTextPrewarmingTask)initWithRequests:(id)requests cancelBlock:(id)block completionHandler:(id)handler
{
  requestsCopy = requests;
  blockCopy = block;
  handlerCopy = handler;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __79__MADServiceTextPrewarmingTask_initWithRequests_cancelBlock_completionHandler___block_invoke;
  v20[3] = &unk_1E834CF90;
  v12 = handlerCopy;
  v21 = v12;
  v19.receiver = self;
  v19.super_class = MADServiceTextPrewarmingTask;
  v13 = [(VCPMABaseTask *)&v19 initWithCompletionHandler:v20];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_requests, requests);
    signpostPayload = v14->_signpostPayload;
    v14->_signpostPayload = &stru_1F496CB30;

    [(VCPMABaseTask *)v14 setCancelBlock:blockCopy];
    v16 = dispatch_queue_create("MADServiceTextProcessingTask", 0);
    cancelQueue = v14->_cancelQueue;
    v14->_cancelQueue = v16;
  }

  return v14;
}

- (BOOL)run:(id *)p_isa
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = VCPSignPostLog(self);
  v6 = os_signpost_id_generate(v5);

  v8 = VCPSignPostLog(v7);
  v9 = v8;
  v10 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    signpostPayload = self->_signpostPayload;
    *buf = 138412290;
    v54 = signpostPayload;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "MADServiceTextPrewarmingTask_Run", "%@", buf, 0xCu);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v12 = self->_requests;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v45;
    obj = v12;
    v40 = v6 - 1;
    v41 = v6;
LABEL_6:
    v16 = 0;
    while (1)
    {
      if (*v45 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v44 + 1) + 8 * v16);
      if ([(VCPMABaseTask *)self isCanceled])
      {
        break;
      }

      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v54 = v19;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Prewarming %@", buf, 0xCu);
      }

      if (![v17 isMemberOfClass:objc_opt_class()])
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v54 = v19;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ does not support prewarming", buf, 0xCu);
        }

        completionHandler = obj;
        if (p_isa)
        {
          v35 = MEMORY[0x1E696ABC0];
          v36 = *MEMORY[0x1E696A768];
          v48 = *MEMORY[0x1E696A578];
          v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ does not support prewarming", v19];
          v49 = v32;
          v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
          v37 = [v35 errorWithDomain:v36 code:-50 userInfo:v34];
          v38 = *p_isa;
          *p_isa = v37;

LABEL_34:
        }

        LOBYTE(p_isa) = 0;
        goto LABEL_37;
      }

      v20 = objc_autoreleasePoolPush();
      v43 = 0;
      v21 = [MADTextEmbeddingTask prewarmRequest:v17 error:&v43];
      v22 = v43;
      v23 = v22;
      if (p_isa && !v21)
      {
        v24 = [v22 copy];
        v25 = *p_isa;
        *p_isa = v24;
      }

      objc_autoreleasePoolPop(v20);
      if (!v21)
      {
        LOBYTE(p_isa) = 0;
        completionHandler = obj;
        goto LABEL_37;
      }

      if (v14 == ++v16)
      {
        v12 = obj;
        v14 = [(NSArray *)obj countByEnumeratingWithState:&v44 objects:v52 count:16];
        v10 = v40;
        v6 = v41;
        if (v14)
        {
          goto LABEL_6;
        }

        goto LABEL_20;
      }
    }

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Request canceled", buf, 2u);
    }

    completionHandler = obj;
    if (p_isa)
    {
      v30 = MEMORY[0x1E696ABC0];
      v31 = *MEMORY[0x1E696A768];
      v50 = *MEMORY[0x1E696A578];
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request was canceled"];
      v51 = v19;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v33 = [v30 errorWithDomain:v31 code:-128 userInfo:v32];
      v34 = *p_isa;
      *p_isa = v33;
      goto LABEL_34;
    }
  }

  else
  {
LABEL_20:

    v27 = VCPSignPostLog(v26);
    p_isa = &v27->isa;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      v28 = self->_signpostPayload;
      *buf = 138412290;
      v54 = v28;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, p_isa, OS_SIGNPOST_INTERVAL_END, v6, "MADServiceTextPrewarmingTask_Run", "%@", buf, 0xCu);
    }

    completionHandler = [(VCPMABaseTask *)self completionHandler];
    completionHandler[2](completionHandler, 0, 0);
    LOBYTE(p_isa) = 1;
  }

LABEL_37:

  return p_isa;
}

@end