@interface MADMultiModalPrewarmingTask
- (BOOL)run:(id *)run;
- (MADMultiModalPrewarmingTask)initWithRequests:(id)requests cancelBlock:(id)block completionHandler:(id)handler;
@end

@implementation MADMultiModalPrewarmingTask

- (MADMultiModalPrewarmingTask)initWithRequests:(id)requests cancelBlock:(id)block completionHandler:(id)handler
{
  requestsCopy = requests;
  blockCopy = block;
  handlerCopy = handler;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __78__MADMultiModalPrewarmingTask_initWithRequests_cancelBlock_completionHandler___block_invoke;
  v18[3] = &unk_1E834CF90;
  v12 = handlerCopy;
  v19 = v12;
  v17.receiver = self;
  v17.super_class = MADMultiModalPrewarmingTask;
  v13 = [(VCPMABaseTask *)&v17 initWithCompletionHandler:v18];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_requests, requests);
    signpostPayload = v14->_signpostPayload;
    v14->_signpostPayload = &stru_1F496CB30;

    [(VCPMABaseTask *)v14 setCancelBlock:blockCopy];
  }

  return v14;
}

- (BOOL)run:(id *)run
{
  v68 = *MEMORY[0x1E69E9840];
  v5 = VCPSignPostLog(self);
  v6 = os_signpost_id_generate(v5);

  v8 = VCPSignPostLog(v7);
  v9 = v8;
  v10 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    signpostPayload = self->_signpostPayload;
    *buf = 138412290;
    v62 = signpostPayload;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "MADMultiModalPrewarmingTask_Run", "%@", buf, 0xCu);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v12 = self->_requests;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v53 objects:v67 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v54;
    obj = v12;
    v49 = v6;
    runCopy = run;
    v48 = v6 - 1;
LABEL_6:
    v16 = 0;
    while (1)
    {
      if (*v54 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v53 + 1) + 8 * v16);
      if ([(VCPMABaseTask *)self isCanceled])
      {
        break;
      }

      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v62 = v19;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Prewarming %@", buf, 0xCu);
      }

      if (![v17 isMemberOfClass:objc_opt_class()])
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v62 = v19;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ does not support prewarming", buf, 0xCu);
        }

        completionHandler = obj;
        if (runCopy)
        {
          v35 = MEMORY[0x1E696ABC0];
          v36 = *MEMORY[0x1E696A768];
          v57 = *MEMORY[0x1E696A578];
          v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ does not support prewarming", v19];
          v58 = v32;
          v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
          v38 = [v35 errorWithDomain:v36 code:-50 userInfo:v37];
          v39 = *runCopy;
          *runCopy = v38;

LABEL_31:
        }

LABEL_38:

LABEL_39:
        v29 = 0;
        goto LABEL_40;
      }

      v20 = objc_autoreleasePoolPush();
      v21 = v17;
      v52 = 0;
      v22 = [MADPersonalizedEmbeddingTask prewarmRequest:v21 error:&v52];
      v23 = v52;
      if (!v22)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v40 = [v23 description];
          *buf = 138412546;
          v62 = v19;
          v63 = 2112;
          v64 = v40;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to prewarm %@ (%@)", buf, 0x16u);
        }

        completionHandler = obj;
        if (runCopy)
        {
          v41 = MEMORY[0x1E696ABC0];
          v42 = *MEMORY[0x1E696A768];
          v59 = *MEMORY[0x1E696A578];
          v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to prewarm %@", v19];
          v60 = v43;
          v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
          v45 = [v41 errorWithDomain:v42 code:-50 userInfo:v44];
          v46 = *runCopy;
          *runCopy = v45;
        }

        objc_autoreleasePoolPop(v20);
        goto LABEL_38;
      }

      objc_autoreleasePoolPop(v20);
      if (v14 == ++v16)
      {
        v12 = obj;
        v14 = [(NSArray *)obj countByEnumeratingWithState:&v53 objects:v67 count:16];
        v10 = v48;
        v6 = v49;
        if (v14)
        {
          goto LABEL_6;
        }

        goto LABEL_17;
      }
    }

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Request canceled", buf, 2u);
    }

    completionHandler = obj;
    if (runCopy)
    {
      v30 = MEMORY[0x1E696ABC0];
      v31 = *MEMORY[0x1E696A768];
      v65 = *MEMORY[0x1E696A578];
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request was canceled"];
      v66 = v19;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
      v33 = [v30 errorWithDomain:v31 code:-128 userInfo:v32];
      v34 = *runCopy;
      *runCopy = v33;

      goto LABEL_31;
    }

    goto LABEL_39;
  }

LABEL_17:

  v25 = VCPSignPostLog(v24);
  v26 = v25;
  if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    v27 = self->_signpostPayload;
    *buf = 138412290;
    v62 = v27;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v26, OS_SIGNPOST_INTERVAL_END, v6, "MADMultiModalPrewarmingTask_Run", "%@", buf, 0xCu);
  }

  completionHandler = [(VCPMABaseTask *)self completionHandler];
  completionHandler[2](completionHandler, 0, 0);
  v29 = 1;
LABEL_40:

  return v29;
}

@end