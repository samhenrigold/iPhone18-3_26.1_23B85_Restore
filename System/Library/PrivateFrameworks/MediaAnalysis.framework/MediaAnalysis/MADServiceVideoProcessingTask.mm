@interface MADServiceVideoProcessingTask
+ (id)taskWithRequests:(id)requests forAsset:(id)asset cancelBlock:(id)block progressHandler:(id)handler resultHandler:(id)resultHandler andCompletionHandler:(id)completionHandler;
- (BOOL)cachesResources;
- (BOOL)run:(id *)run;
- (MADServiceVideoProcessingTask)initWithRequests:(id)requests forAsset:(id)asset cancelBlock:(id)block progressHandler:(id)handler resultHandler:(id)resultHandler andCompletionHandler:(id)completionHandler;
@end

@implementation MADServiceVideoProcessingTask

- (MADServiceVideoProcessingTask)initWithRequests:(id)requests forAsset:(id)asset cancelBlock:(id)block progressHandler:(id)handler resultHandler:(id)resultHandler andCompletionHandler:(id)completionHandler
{
  requestsCopy = requests;
  assetCopy = asset;
  blockCopy = block;
  handlerCopy = handler;
  resultHandlerCopy = resultHandler;
  completionHandlerCopy = completionHandler;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __122__MADServiceVideoProcessingTask_initWithRequests_forAsset_cancelBlock_progressHandler_resultHandler_andCompletionHandler___block_invoke;
  v32[3] = &unk_1E834CF90;
  v21 = completionHandlerCopy;
  v33 = v21;
  v31.receiver = self;
  v31.super_class = MADServiceVideoProcessingTask;
  v22 = [(VCPMABaseTask *)&v31 initWithCompletionHandler:v32];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_requests, requests);
    objc_storeStrong(&v23->_asset, asset);
    v24 = _Block_copy(handlerCopy);
    progressHandler = v23->_progressHandler;
    v23->_progressHandler = v24;

    v26 = _Block_copy(resultHandlerCopy);
    resultHandler = v23->_resultHandler;
    v23->_resultHandler = v26;

    v28 = _Block_copy(v21);
    completionHandler = v23->_completionHandler;
    v23->_completionHandler = v28;

    [(VCPMABaseTask *)v23 setCancelBlock:blockCopy];
  }

  return v23;
}

+ (id)taskWithRequests:(id)requests forAsset:(id)asset cancelBlock:(id)block progressHandler:(id)handler resultHandler:(id)resultHandler andCompletionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  resultHandlerCopy = resultHandler;
  handlerCopy = handler;
  blockCopy = block;
  assetCopy = asset;
  requestsCopy = requests;
  v19 = [objc_alloc(objc_opt_class()) initWithRequests:requestsCopy forAsset:assetCopy cancelBlock:blockCopy progressHandler:handlerCopy resultHandler:resultHandlerCopy andCompletionHandler:completionHandlerCopy];

  return v19;
}

- (BOOL)cachesResources
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_requests;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (([v7 isMemberOfClass:{objc_opt_class(), v10}] & 1) == 0 && !objc_msgSend(v7, "isMemberOfClass:", objc_opt_class()))
        {
          v8 = 0;
          goto LABEL_12;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_12:

  return v8;
}

- (BOOL)run:(id *)run
{
  v175 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  v3 = self->_requests;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v162 objects:v174 count:16];
  if (v4)
  {
    v126 = 0uLL;
    v5 = *v163;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v163 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v162 + 1) + 8 * i);
        if (*(&v126 + 1) || ![v7 isMemberOfClass:objc_opt_class()])
        {
          if (v126 || ![v7 isMemberOfClass:objc_opt_class()])
          {
            if ([MADServiceVideoProcessingSubtask taskClassForRequest:v7])
            {
              [array2 addObject:v7];
            }

            else
            {
              [array addObject:v7];
            }
          }

          else
          {
            *&v126 = v7;
          }
        }

        else
        {
          *(&v126 + 1) = v7;
        }
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v162 objects:v174 count:16];
    }

    while (v4);
  }

  else
  {
    v126 = 0uLL;
  }

  v156 = 0;
  v157 = &v156;
  v158 = 0x3032000000;
  v159 = __Block_byref_object_copy__77;
  v160 = __Block_byref_object_dispose__77;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__MADServiceVideoProcessingTask_run___block_invoke;
  aBlock[3] = &unk_1E8352160;
  aBlock[4] = self;
  aBlock[5] = &v156;
  v121 = _Block_copy(aBlock);
  selfCopy4 = self;
  if ([array count])
  {
    v9 = [VCPVideoProcessor alloc];
    v10 = [(MADServiceVideoAsset *)self->_asset url];
    context = [(VCPVideoProcessor *)v9 initWithURL:v10];

    if (self->_progressHandler)
    {
      v153[0] = MEMORY[0x1E69E9820];
      v153[1] = 3221225472;
      v153[2] = __37__MADServiceVideoProcessingTask_run___block_invoke_196;
      v153[3] = &unk_1E8352188;
      v153[4] = self;
      v154 = array;
      [(VCPVideoProcessor *)context setProgressHandler:v153];
    }

    array3 = [MEMORY[0x1E695DF70] array];
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v12 = array;
    v13 = [v12 countByEnumeratingWithState:&v149 objects:v173 count:16];
    if (v13)
    {
      v14 = *v150;
      v15 = MEMORY[0x1E69E9C10];
      v118 = 138412290;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v150 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v149 + 1) + 8 * j);
          v18 = [MADServiceVideoTask taskForRequest:v17];
          v19 = v18;
          if (v18)
          {
            [v18 configureVideoProcessor:context];
            [array3 addObject:v19];
          }

          else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v17;
            _os_log_impl(&dword_1C9B70000, v15, OS_LOG_TYPE_ERROR, "Failed to create task for request (%@)", buf, 0xCu);
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v149 objects:v173 count:16];
      }

      while (v13);
    }

    v21 = VCPSignPostLog(v20);
    v22 = os_signpost_id_generate(v21);

    v24 = VCPSignPostLog(v23);
    v25 = v24;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      signpostPayload = self->_signpostPayload;
      *buf = 138412290;
      *&buf[4] = signpostPayload;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v22, "VCPVideoProcessor_Analyze", "%@", buf, 0xCu);
    }

    v148 = 0;
    *buf = *MEMORY[0x1E6960CC0];
    v172 = *(MEMORY[0x1E6960CC0] + 16);
    v146 = *MEMORY[0x1E6960C88];
    v147 = *(MEMORY[0x1E6960C88] + 16);
    v27 = [(VCPVideoProcessor *)context analyzeWithStart:buf andDuration:&v146 error:&v148];
    v28 = v148;
    v29 = v28;
    if (!v27)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v45 = MEMORY[0x1E69E9C10];
        v46 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v47 = [v29 description];
          *buf = 138412290;
          *&buf[4] = v47;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to process video (%@)", buf, 0xCu);
        }
      }

      if (run)
      {
        v48 = [v29 copy];
        v49 = *run;
        *run = v48;
      }

      v50 = 0;
      goto LABEL_117;
    }

    v30 = VCPSignPostLog(v28);
    v31 = v30;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
    {
      v32 = self->_signpostPayload;
      *buf = 138412290;
      *&buf[4] = v32;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v31, OS_SIGNPOST_INTERVAL_END, v22, "VCPVideoProcessor_Analyze", "%@", buf, 0xCu);
    }

    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v33 = array3;
    v34 = [v33 countByEnumeratingWithState:&v142 objects:v170 count:16];
    if (v34)
    {
      v35 = *v143;
      do
      {
        for (k = 0; k != v34; ++k)
        {
          if (*v143 != v35)
          {
            objc_enumerationMutation(v33);
          }

          v37 = *(*(&v142 + 1) + 8 * k);
          v38 = [v37 finalize];
          request = [v37 request];
          v121[2](v121, request, v38);
        }

        v34 = [v33 countByEnumeratingWithState:&v142 objects:v170 count:16];
      }

      while (v34);
    }

    selfCopy4 = self;
  }

  if (v126 != 0)
  {
    v40 = objc_autoreleasePoolPush();
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      if (v126)
      {
        v42 = *(&v126 + 1) == 0;
      }

      else
      {
        v42 = 1;
      }

      if (v42)
      {
        v43 = 1;
      }

      else
      {
        v43 = 2;
      }

      v44 = v140;
      v140[0] = MEMORY[0x1E69E9820];
      v140[1] = 3221225472;
      v140[2] = __37__MADServiceVideoProcessingTask_run___block_invoke_200;
      v140[3] = &unk_1E83521B0;
      v140[4] = self;
      v118 = v141;
      v141[0] = array;
      v141[1] = v43;
    }

    else
    {
      v44 = 0;
    }

    contexta = _Block_copy(v44);
    v136[0] = MEMORY[0x1E69E9820];
    v136[1] = 3221225472;
    v136[2] = __37__MADServiceVideoProcessingTask_run___block_invoke_2;
    v136[3] = &unk_1E83521D8;
    v51 = *(&v126 + 1);
    v137 = v51;
    v52 = v121;
    v139 = v52;
    v53 = v126;
    v138 = v53;
    v54 = _Block_copy(v136);
    asset = self->_asset;
    v135[0] = MEMORY[0x1E69E9820];
    v135[1] = 3221225472;
    v135[2] = __37__MADServiceVideoProcessingTask_run___block_invoke_3;
    v135[3] = &unk_1E8352200;
    v135[4] = self;
    v56 = [MADVideoRemoveBackgroundCropTask taskWithAsset:asset previewRequest:v51 generationRequest:v53 cancelBlock:v135 progressHandler:contexta resultHandler:v52 completionHandler:v54];
    v57 = VCPSignPostLog([v56 setSignpostPayload:self->_signpostPayload]);
    v58 = os_signpost_id_generate(v57);

    v60 = VCPSignPostLog(v59);
    v61 = v60;
    if (v58 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v60))
    {
      v62 = self->_signpostPayload;
      *buf = 138412290;
      *&buf[4] = v62;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v61, OS_SIGNPOST_INTERVAL_BEGIN, v58, "MADServiceVideoProcessingSubtask_Run", "%@", buf, 0xCu);
    }

    v63 = [v56 run];
    if (v63)
    {
      v63 = MediaAnalysisLogLevel();
      if (v63 >= 3)
      {
        v64 = MEMORY[0x1E69E9C10];
        v65 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          v66 = objc_opt_class();
          *buf = 138412290;
          *&buf[4] = v66;
          v67 = v66;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to perform subtask %@", buf, 0xCu);
        }
      }
    }

    v68 = VCPSignPostLog(v63);
    v69 = v68;
    if (v58 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v68))
    {
      v70 = self->_signpostPayload;
      *buf = 138412290;
      *&buf[4] = v70;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v69, OS_SIGNPOST_INTERVAL_END, v58, "MADServiceVideoProcessingSubtask_Run", "%@", buf, 0xCu);
    }

    if (progressHandler)
    {
    }

    objc_autoreleasePoolPop(v40);
    selfCopy4 = self;
  }

  v71 = 0;
  v115 = *MEMORY[0x1E696A768];
  v116 = *MEMORY[0x1E696A578];
  while (v71 < [array2 count])
  {
    contextb = objc_autoreleasePoolPush();
    v72 = self->_progressHandler;
    if (v72)
    {
      v73 = v132;
      v132[0] = MEMORY[0x1E69E9820];
      v132[1] = 3221225472;
      v132[2] = __37__MADServiceVideoProcessingTask_run___block_invoke_205;
      v132[3] = &unk_1E83521B0;
      v132[4] = self;
      v133 = array;
      v134 = v71;
    }

    else
    {
      v73 = 0;
    }

    v74 = _Block_copy(v73);
    v128[0] = MEMORY[0x1E69E9820];
    v128[1] = 3221225472;
    v128[2] = __37__MADServiceVideoProcessingTask_run___block_invoke_2_206;
    v128[3] = &unk_1E8352228;
    v130 = v121;
    v75 = array2;
    v129 = v75;
    v131 = v71;
    v76 = _Block_copy(v128);
    v77 = [v75 objectAtIndexedSubscript:v71];
    v78 = self->_asset;
    v127[0] = MEMORY[0x1E69E9820];
    v127[1] = 3221225472;
    v127[2] = __37__MADServiceVideoProcessingTask_run___block_invoke_3_208;
    v127[3] = &unk_1E8352200;
    v127[4] = self;
    v79 = [MADServiceVideoProcessingSubtask taskWithRequest:v77 forAsset:v78 cancelBlock:v127 progressHandler:v74 andCompletionHandler:v76];

    if (v79)
    {
      v80 = VCPSignPostLog([v79 setSignpostPayload:self->_signpostPayload]);
      v81 = os_signpost_id_generate(v80);

      v83 = VCPSignPostLog(v82);
      v84 = v83;
      if (v81 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v83))
      {
        v85 = self->_signpostPayload;
        *buf = 138412290;
        *&buf[4] = v85;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v84, OS_SIGNPOST_INTERVAL_BEGIN, v81, "MADServiceVideoProcessingSubtask_Run", "%@", buf, 0xCu);
      }

      v86 = [v79 run];
      if (v86)
      {
        v86 = MediaAnalysisLogLevel();
        if (v86 >= 3)
        {
          v87 = MEMORY[0x1E69E9C10];
          v88 = MEMORY[0x1E69E9C10];
          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            v89 = objc_opt_class();
            *buf = 138412290;
            *&buf[4] = v89;
            v90 = v89;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to perform subtask %@", buf, 0xCu);
          }
        }
      }

      v91 = VCPSignPostLog(v86);
      v92 = v91;
      if (v81 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v91))
      {
        v93 = self->_signpostPayload;
        *buf = 138412290;
        *&buf[4] = v93;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v92, OS_SIGNPOST_INTERVAL_END, v81, "MADServiceVideoProcessingSubtask_Run", "%@", buf, 0xCu);
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v94 = MEMORY[0x1E69E9C10];
        v95 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
        {
          v96 = [v75 objectAtIndexedSubscript:v71];
          v97 = objc_opt_class();
          *buf = 138412290;
          *&buf[4] = v97;
          v98 = v97;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to create subtask for unrecognized request %@", buf, 0xCu);
        }
      }

      if (!run)
      {
        goto LABEL_104;
      }

      v99 = MEMORY[0x1E696ABC0];
      v168 = v116;
      v100 = MEMORY[0x1E696AEC0];
      v92 = [v75 objectAtIndexedSubscript:v71];
      v101 = [v100 stringWithFormat:@"Unable to create subtask for unrecognized request %@", objc_opt_class()];
      v169 = v101;
      v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v169 forKeys:&v168 count:1];
      v103 = [v99 errorWithDomain:v115 code:-50 userInfo:v102];
      v104 = *run;
      *run = v103;
    }

LABEL_104:
    if (v72)
    {
    }

    objc_autoreleasePoolPop(contextb);
    selfCopy4 = self;
    ++v71;
    if (!v79)
    {
      v50 = 0;
      goto LABEL_118;
    }
  }

  if (!selfCopy4->_resultHandler)
  {
    context = [MEMORY[0x1E695DF70] array];
    for (m = 0; m < [(NSArray *)self->_requests count]; ++m)
    {
      v106 = v157[5];
      v107 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:m];
      v108 = [v106 objectForKeyedSubscript:v107];

      if (v108)
      {
        [(VCPVideoProcessor *)context addObject:v108];
      }

      else
      {
        v109 = objc_alloc_init(MEMORY[0x1E69AE4E8]);
        v110 = MEMORY[0x1E696ABC0];
        v166 = v116;
        v111 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request produced no payload"];
        v167 = v111;
        v112 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v167 forKeys:&v166 count:1];
        v113 = [v110 errorWithDomain:v115 code:-18 userInfo:v112];
        [v109 setError:v113];

        [(VCPVideoProcessor *)context addObject:v109];
      }
    }

    (*(self->_completionHandler + 2))();
    v50 = 1;
LABEL_117:

    goto LABEL_118;
  }

  (*(selfCopy4->_completionHandler + 2))();
  v50 = 1;
LABEL_118:

  _Block_object_dispose(&v156, 8);
  return v50;
}

void __37__MADServiceVideoProcessingTask_run___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 32) indexOfObject:v5];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = 67109120;
      LODWORD(v23) = -1;
      v8 = MEMORY[0x1E69E9C10];
      v9 = "Failed to find request at index %d to update increment result";
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 8;
LABEL_9:
      _os_log_impl(&dword_1C9B70000, v8, v10, v9, &v22, v11);
    }
  }

  else
  {
    v12 = v7;
    v13 = *(*(*(a1 + 40) + 8) + 40);
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    v15 = [v13 objectForKeyedSubscript:v14];

    if (v15)
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412546;
        v23 = objc_opt_class();
        v24 = 1024;
        v25 = v12;
        v8 = MEMORY[0x1E69E9C10];
        v9 = "Request %@ (index %d) already has result, skip updating";
        v10 = OS_LOG_TYPE_DEFAULT;
        v11 = 18;
        goto LABEL_9;
      }
    }

    else
    {
      v16 = *(*(a1 + 32) + 56);
      if (v16)
      {
        (*(v16 + 16))(v16, v6, v12);
        v17 = objc_alloc_init(MEMORY[0x1E69AE4E8]);
        v18 = *(*(*(a1 + 40) + 8) + 40);
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
        [v18 setObject:v17 forKeyedSubscript:v19];
      }

      else
      {
        v20 = *(*(*(a1 + 40) + 8) + 40);
        v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
        [v20 setObject:v6 forKeyedSubscript:v21];
      }
    }
  }
}

uint64_t __37__MADServiceVideoProcessingTask_run___block_invoke_196(uint64_t a1, double a2)
{
  v4 = *(*(a1 + 32) + 48);
  v5 = [*(a1 + 40) count];
  v6.n128_f64[0] = (100 * (v5 / [*(*(a1 + 32) + 32) count])) * a2;
  v7 = *(v4 + 16);

  return v7(v4, v6);
}

uint64_t __37__MADServiceVideoProcessingTask_run___block_invoke_200(uint64_t a1, double a2)
{
  v3 = *(*(a1 + 32) + 48);
  v4 = [*(a1 + 40) count] + *(a1 + 48) * a2;
  v5.n128_f64[0] = v4 / [*(*(a1 + 32) + 32) count] * 100.0;
  v6 = *(v3 + 16);

  return v6(v3, v5);
}

void __37__MADServiceVideoProcessingTask_run___block_invoke_2(void *a1, void *a2)
{
  if (a2)
  {
    v3 = MEMORY[0x1E69AE4E8];
    v4 = a2;
    v5 = objc_alloc_init(v3);
    [v5 setError:v4];

    if (a1[4])
    {
      (*(a1[6] + 16))();
    }

    if (a1[5])
    {
      (*(a1[6] + 16))();
    }
  }
}

uint64_t __37__MADServiceVideoProcessingTask_run___block_invoke_205(uint64_t a1, double a2)
{
  v3 = *(*(a1 + 32) + 48);
  v4 = (*(a1 + 48) + [*(a1 + 40) count]) + a2;
  v5.n128_f64[0] = v4 / [*(*(a1 + 32) + 32) count] * 100.0;
  v6 = *(v3 + 16);

  return v6(v3, v5);
}

void __37__MADServiceVideoProcessingTask_run___block_invoke_2_206(void *a1, void *a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = a2;
  v6 = [v3 objectAtIndexedSubscript:v4];
  (*(v2 + 16))(v2, v6, v5);
}

@end