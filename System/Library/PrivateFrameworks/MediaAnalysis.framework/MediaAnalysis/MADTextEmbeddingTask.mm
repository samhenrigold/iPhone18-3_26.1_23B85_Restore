@interface MADTextEmbeddingTask
+ (BOOL)prewarmRequest:(id)request error:(id *)error;
- (BOOL)processInput:(id)input resource:(id)resource result:(id *)result error:(id *)error;
- (id)embeddingFromMultiArray:(id)array version:(unint64_t)version;
- (int)run;
@end

@implementation MADTextEmbeddingTask

+ (BOOL)prewarmRequest:(id)request error:(id *)error
{
  v86[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v6 = +[MADTextEmbeddingResource sharedResource:extendedContextLength:](MADTextEmbeddingResource, "sharedResource:extendedContextLength:", [requestCopy version], objc_msgSend(requestCopy, "extendedContextLength"));
  v7 = +[VCPMADResourceManager sharedManager];
  v8 = [v7 activateResource:v6];

  v9 = MediaAnalysisLogLevel();
  if (v9 >= 6)
  {
    v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO);
    if (v9)
    {
      [requestCopy version];
      v10 = MADUnifiedEmbeddingVersionToString();
      *buf = 138412290;
      v82 = v10;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Prewarming text encoder (%@)", buf, 0xCu);
    }
  }

  v11 = VCPSignPostLog(v9);
  v12 = os_signpost_id_generate(v11);

  v14 = VCPSignPostLog(v13);
  v15 = v14;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v12, "MADSharedTextEncoder_loadResources", "", buf, 2u);
  }

  v16 = mach_continuous_time();
  textEncoder = [v6 textEncoder];
  if (!textEncoder)
  {
    v31 = 0;
LABEL_27:
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v38 = [v31 description];
      *buf = 138412290;
      v82 = v38;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to prewarm text encoder (%@)", buf, 0xCu);
    }

    if (error)
    {
      v32 = MEMORY[0x1E696ABC0];
      v33 = *MEMORY[0x1E696A768];
      v85 = *MEMORY[0x1E696A578];
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to prewarm text encoder"];
      v86[0] = v34;
      v35 = MEMORY[0x1E695DF20];
      v36 = v86;
      v37 = &v85;
      goto LABEL_32;
    }

LABEL_44:
    v40 = 0;
    goto LABEL_65;
  }

  v18 = textEncoder;
  v19 = v8;
  textEncoder2 = [v6 textEncoder];
  v74 = 0;
  v21 = [textEncoder2 loadResources:&v74];
  v73 = v74;

  if ((v21 & 1) == 0)
  {
    v8 = v19;
    v31 = v73;
    goto LABEL_27;
  }

  v23 = VCPSignPostLog(v22);
  v24 = v23;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v24, OS_SIGNPOST_INTERVAL_END, v12, "MADSharedTextEncoder_loadResources", "", buf, 2u);
  }

  v26 = VCPSignPostPersistentLog(v25);
  v27 = VCPSignPostPersistentLog(v26);
  v28 = os_signpost_id_generate(v27);

  v8 = v19;
  if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *buf = 134349314;
    v82 = v16;
    v83 = 2082;
    v84 = "LoadTextEncoder";
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v26, OS_SIGNPOST_EVENT, v28, "TextEmbeddingGeneration", "%{public, signpost.description:begin_time}llu Component=%{public, signpost.telemetry:string1}s  enableTelemetry=YES ", buf, 0x16u);
  }

  if (![requestCopy computeThreshold])
  {
    goto LABEL_75;
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Prewarming text embedding calibration", buf, 2u);
  }

  calibration = [v6 calibration];
  loadResources = [calibration loadResources];

  if (!loadResources)
  {
LABEL_75:
    if ([requestCopy computeSafety])
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Prewarming text embedding safety", buf, 2u);
      }

      v41 = mach_continuous_time();
      safety = [v6 safety];
      loadResources2 = [safety loadResources];

      if (loadResources2)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to prewarm text embedding safety", buf, 2u);
        }

        v31 = v73;
        if (error)
        {
          v32 = MEMORY[0x1E696ABC0];
          v33 = *MEMORY[0x1E696A768];
          v77 = *MEMORY[0x1E696A578];
          v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to prewarm text embedding safety"];
          v78 = v34;
          v35 = MEMORY[0x1E695DF20];
          v36 = &v78;
          v37 = &v77;
          goto LABEL_32;
        }

        goto LABEL_44;
      }

      v45 = VCPSignPostPersistentLog(v44);
      v46 = VCPSignPostPersistentLog(v45);
      v47 = os_signpost_id_generate(v46);

      if (v47 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
      {
        *buf = 134349314;
        v82 = v41;
        v83 = 2082;
        v84 = "LoadSafety";
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v45, OS_SIGNPOST_EVENT, v47, "TextEmbeddingGeneration", "%{public, signpost.description:begin_time}llu Component=%{public, signpost.telemetry:string1}s  enableTelemetry=YES ", buf, 0x16u);
      }
    }

    [v19 reset];
    if (![requestCopy calibrate] || objc_msgSend(requestCopy, "version") != 3)
    {
      v40 = 1;
      v31 = v73;
      goto LABEL_65;
    }

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Prewarming legacy text embedding calibration (MD3)", buf, 2u);
    }

    v34 = +[MADTextEmbeddingCalibrationResource sharedResource];
    v48 = +[VCPMADResourceManager sharedManager];
    v39 = [v48 activateResource:v34];

    v50 = VCPSignPostLog(v49);
    v51 = os_signpost_id_generate(v50);

    v53 = VCPSignPostLog(v52);
    v54 = v53;
    v55 = v51 - 1;
    if (v51 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v54, OS_SIGNPOST_INTERVAL_BEGIN, v51, "MADTextEmbeddingCalibration_loadResources", "", buf, 2u);
    }

    spid = v51;

    v56 = mach_continuous_time();
    instance = [v34 instance];
    loadResources3 = [instance loadResources];

    if (loadResources3)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to prewarm legacy text embedding calibration", buf, 2u);
      }

      if (error)
      {
        v60 = MEMORY[0x1E696ABC0];
        v61 = *MEMORY[0x1E696A768];
        v75 = *MEMORY[0x1E696A578];
        v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to prewarm legacy text embedding calibration"];
        v76 = v62;
        v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
        *error = [v60 errorWithDomain:v61 code:-50 userInfo:v63];
      }

      v40 = 0;
      v8 = v19;
      v31 = v73;
    }

    else
    {
      v71 = v56;
      v65 = VCPSignPostLog(v59);
      v66 = v65;
      v8 = v19;
      if (v55 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v65))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v66, OS_SIGNPOST_INTERVAL_END, spid, "MADTextEmbeddingCalibration_loadResources", "", buf, 2u);
      }

      v68 = VCPSignPostPersistentLog(v67);
      v69 = VCPSignPostPersistentLog(v68);
      v70 = os_signpost_id_generate(v69);

      v31 = v73;
      if (v70 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v68))
      {
        *buf = 134349314;
        v82 = v71;
        v83 = 2082;
        v84 = "LoadCalibration";
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v68, OS_SIGNPOST_EVENT, v70, "TextEmbeddingGeneration", "%{public, signpost.description:begin_time}llu Component=%{public, signpost.telemetry:string1}s  enableTelemetry=YES ", buf, 0x16u);
      }

      [v39 reset];
      v40 = 1;
    }

    goto LABEL_33;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to prewarm text embedding calibration", buf, 2u);
  }

  v31 = v73;
  if (!error)
  {
    goto LABEL_44;
  }

  v32 = MEMORY[0x1E696ABC0];
  v33 = *MEMORY[0x1E696A768];
  v79 = *MEMORY[0x1E696A578];
  v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to prewarm text embedding calibration"];
  v80 = v34;
  v35 = MEMORY[0x1E695DF20];
  v36 = &v80;
  v37 = &v79;
LABEL_32:
  v39 = [v35 dictionaryWithObjects:v36 forKeys:v37 count:1];
  [v32 errorWithDomain:v33 code:-50 userInfo:v39];
  *error = v40 = 0;
LABEL_33:

LABEL_65:
  return v40;
}

- (id)embeddingFromMultiArray:(id)array version:(unint64_t)version
{
  v21 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  dataType = [arrayCopy dataType];
  if (dataType == 65552)
  {
    v7 = 1;
    v8 = 1;
    goto LABEL_5;
  }

  if (dataType == 65568)
  {
    v7 = 0;
    v8 = 2;
LABEL_5:
    *buf = 0;
    v16 = buf;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__34;
    v19 = __Block_byref_object_dispose__34;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __56__MADTextEmbeddingTask_embeddingFromMultiArray_version___block_invoke;
    v14[3] = &unk_1E834D378;
    v14[4] = buf;
    [arrayCopy getBytesWithHandler:v14];
    if (version - 1 <= 1)
    {
      v9 = MediaAnalysisApplyL2Norm(*(v16 + 5), v7);
      v10 = *(v16 + 5);
      *(v16 + 5) = v9;
    }

    v11 = objc_alloc(MEMORY[0x1E69AE300]);
    v12 = [v11 initWithVersion:version data:*(v16 + 5) type:v8];
    _Block_object_dispose(buf, 8);

    goto LABEL_12;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = [arrayCopy dataType];
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unsupported embedding data type (%d)", buf, 8u);
  }

  v12 = 0;
LABEL_12:

  return v12;
}

void __56__MADTextEmbeddingTask_embeddingFromMultiArray_version___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:a2 length:a3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (BOOL)processInput:(id)input resource:(id)resource result:(id *)result error:(id *)error
{
  v199 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  resourceCopy = resource;
  array = [MEMORY[0x1E695DF70] array];
  v179 = 0u;
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  v161 = inputCopy;
  segments = [inputCopy segments];
  v10 = [segments countByEnumeratingWithState:&v179 objects:v198 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v180;
    v163 = *v180;
    v165 = segments;
    while (2)
    {
      v13 = 0;
      v167 = v11;
      do
      {
        if (*v180 != v12)
        {
          objc_enumerationMutation(segments);
        }

        v14 = *(*(&v179 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        if ([v14 type] == 1)
        {
          v16 = objc_alloc_init(MEMORY[0x1E6999158]);
          text = [v14 text];
          [v16 setString:text];

          [array addObject:v16];
        }

        else
        {
          context = v15;
          if ([v14 type] != 3)
          {
            v58 = MEMORY[0x1E696ABC0];
            v59 = *MEMORY[0x1E696A768];
            v195 = *MEMORY[0x1E696A578];
            v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported text input segment type (%d)", objc_msgSend(v14, "type")];
            v196 = v60;
            v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v196 forKeys:&v195 count:1];
            v62 = [v58 errorWithDomain:v59 code:-18 userInfo:v61];

            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v63 = [v62 description];
              *buf = 138412290;
              v190 = v63;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            }

            v29 = resourceCopy;
            if (error)
            {
              objc_storeStrong(error, v62);
            }

            objc_autoreleasePoolPop(context);
            v57 = 0;
            goto LABEL_112;
          }

          v16 = v14;
          v175 = 0u;
          v176 = 0u;
          v177 = 0u;
          v178 = 0u;
          tokenIDs = [v16 tokenIDs];
          v19 = [tokenIDs countByEnumeratingWithState:&v175 objects:v197 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v176;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v176 != v21)
                {
                  objc_enumerationMutation(tokenIDs);
                }

                v23 = *(*(&v175 + 1) + 8 * i);
                v24 = objc_alloc_init(MEMORY[0x1E6999178]);
                [v24 setTokenID:v23];
                [array addObject:v24];
              }

              v20 = [tokenIDs countByEnumeratingWithState:&v175 objects:v197 count:16];
            }

            while (v20);
          }

          v12 = v163;
          segments = v165;
          v11 = v167;
          v15 = context;
        }

        objc_autoreleasePoolPop(v15);
        ++v13;
      }

      while (v13 != v11);
      v11 = [segments countByEnumeratingWithState:&v179 objects:v198 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v25 = MADRemoveBackgroundCachedMaskState;
  v26 = +[VCPMADResourceManager sharedManager];
  v27 = [v26 activateResource:resourceCopy];

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Executing text encoder", buf, 2u);
  }

  v174 = 0;
  v28 = mach_continuous_time();
  v29 = resourceCopy;
  textEncoder = [resourceCopy textEncoder];
  v173 = 0;
  v31 = [textEncoder runOnInput:array output:&v174 error:&v173];
  v32 = v173;

  if ((v31 & 1) == 0)
  {
    v64 = MEMORY[0x1E696ABC0];
    v65 = *MEMORY[0x1E696A768];
    v193 = *MEMORY[0x1E696A578];
    v66 = MEMORY[0x1E696AEC0];
    v67 = [v32 description];
    v68 = [v66 stringWithFormat:@"Text encoding failed (%@)", v67];
    v194 = v68;
    v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v194 forKeys:&v193 count:1];
    request = [v64 errorWithDomain:v65 code:-18 userInfo:v69];

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v70 = [request description];
      *buf = 138412290;
      v190 = v70;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    if (error)
    {
      objc_storeStrong(error, request);
    }

    v57 = 0;
    segments = v32;
    v29 = resourceCopy;
    goto LABEL_111;
  }

  v166 = v32;
  v34 = VCPSignPostPersistentLog(v33);
  v35 = VCPSignPostPersistentLog(v34);
  v36 = os_signpost_id_generate(v35);

  if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
  {
    *buf = 134349314;
    v190 = v28;
    v191 = 2082;
    v192 = "ExecuteTextEncoder";
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v34, OS_SIGNPOST_EVENT, v36, "TextEmbeddingGeneration", "%{public, signpost.description:begin_time}llu Component=%{public, signpost.telemetry:string1}s  enableTelemetry=YES ", buf, 0x16u);
  }

  request = [(MADServiceTextProcessingSubtask *)self request];
  resultCopy4 = result;
  contexta = v27;
  if ([request computeThreshold])
  {
    v39 = MediaAnalysisLogLevel();
    if (v39 >= 6)
    {
      v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO);
      if (v39)
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Performing text embedding calibration", buf, 2u);
      }
    }

    v172 = 0;
    v171 = 0;
    v40 = VCPSignPostLog(v39);
    v41 = os_signpost_id_generate(v40);

    v43 = VCPSignPostLog(v42);
    v44 = v43;
    if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
    {
      signpostPayload = [(MADServiceTextProcessingSubtask *)self signpostPayload];
      *buf = 138412290;
      v190 = signpostPayload;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v44, OS_SIGNPOST_INTERVAL_BEGIN, v41, "MADTextEmbeddingThreshold", "%@", buf, 0xCu);
    }

    v46 = mach_continuous_time();
    calibration = [resourceCopy calibration];
    v48 = [calibration processEmbedding:v174 bias:&v172 + 4 scale:&v172 threshold:&v171];

    if (v48)
    {
      v50 = MEMORY[0x1E696ABC0];
      v51 = *MEMORY[0x1E696A768];
      v52 = v48;
      v187 = *MEMORY[0x1E696A578];
      v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Text embedding threshold calibration failed"];
      v188 = v53;
      v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v188 forKeys:&v187 count:1];
      v55 = [v50 errorWithDomain:v51 code:v52 userInfo:v54];

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v56 = [v55 description];
        *buf = 138412290;
        v190 = v56;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v27 = contexta;
      if (error)
      {
        objc_storeStrong(error, v55);
      }

      v57 = 0;
      goto LABEL_110;
    }

    v74 = VCPSignPostLog(v49);
    v75 = v74;
    if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v74))
    {
      signpostPayload2 = [(MADServiceTextProcessingSubtask *)self signpostPayload];
      *buf = 138412290;
      v190 = signpostPayload2;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v75, OS_SIGNPOST_INTERVAL_END, v41, "MADTextEmbeddingThreshold", "%@", buf, 0xCu);
    }

    v78 = VCPSignPostPersistentLog(v77);
    v79 = VCPSignPostPersistentLog(v78);
    v80 = os_signpost_id_generate(v79);

    v27 = contexta;
    if (v80 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v78))
    {
      *buf = 134349314;
      v190 = v46;
      v191 = 2082;
      v192 = "ExecuteThreshold";
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v78, OS_SIGNPOST_EVENT, v80, "TextEmbeddingGeneration", "%{public, signpost.description:begin_time}llu Component=%{public, signpost.telemetry:string1}s  enableTelemetry=YES ", buf, 0x16u);
    }

    v73 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(resourceCopy, "calibrationVersion")}];
    LODWORD(v81) = HIDWORD(v172);
    v72 = [MEMORY[0x1E696AD98] numberWithFloat:v81];
    LODWORD(v82) = v172;
    v71 = [MEMORY[0x1E696AD98] numberWithFloat:v82];
    LODWORD(v83) = v171;
    v164 = [MEMORY[0x1E696AD98] numberWithFloat:v83];
    resultCopy4 = result;
    v25 = MADRemoveBackgroundCachedMaskState;
  }

  else
  {
    v164 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
  }

  if ([request computeSafety])
  {
    v84 = MediaAnalysisLogLevel();
    if (v84 >= 6)
    {
      v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO);
      if (v84)
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Computing text embedding safety score", buf, 2u);
      }
    }

    v155 = v72;
    HIDWORD(v172) = 0;
    LOBYTE(v172) = 0;
    v85 = VCPSignPostLog(v84);
    v86 = os_signpost_id_generate(v85);

    v88 = VCPSignPostLog(v87);
    v89 = v88;
    if (v86 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v88))
    {
      signpostPayload3 = [(MADServiceTextProcessingSubtask *)self signpostPayload];
      *buf = 138412290;
      v190 = signpostPayload3;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v89, OS_SIGNPOST_INTERVAL_BEGIN, v86, "MADTextEmbeddingSafety", "%@", buf, 0xCu);
    }

    v91 = mach_continuous_time();
    safety = [resourceCopy safety];
    v93 = [safety processEmbedding:v174 safetyScore:&v172 + 4 isSafe:&v172];

    if (v93)
    {
      v157 = v73;
      v95 = MEMORY[0x1E696ABC0];
      v96 = *MEMORY[0x1E696A768];
      v97 = v93;
      v185 = *MEMORY[0x1E696A578];
      v98 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Text embedding safety failed"];
      v186 = v98;
      v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v186 forKeys:&v185 count:1];
      v100 = [v95 errorWithDomain:v96 code:v97 userInfo:v99];

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v101 = [v100 description];
        *buf = 138412290;
        v190 = v101;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v27 = contexta;
      if (error)
      {
        objc_storeStrong(error, v100);
      }

      v57 = 0;
      v72 = v155;
      goto LABEL_109;
    }

    v103 = VCPSignPostLog(v94);
    v104 = v103;
    if (v86 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v103))
    {
      signpostPayload4 = [(MADServiceTextProcessingSubtask *)self signpostPayload];
      *buf = 138412290;
      v190 = signpostPayload4;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v104, OS_SIGNPOST_INTERVAL_END, v86, "MADTextEmbeddingSafety", "%@", buf, 0xCu);
    }

    v107 = VCPSignPostPersistentLog(v106);
    v108 = VCPSignPostPersistentLog(v107);
    v109 = os_signpost_id_generate(v108);

    if (v109 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v107))
    {
      *buf = 134349314;
      v190 = v91;
      v191 = 2082;
      v192 = "ExecuteSafety";
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v107, OS_SIGNPOST_EVENT, v109, "TextEmbeddingGeneration", "%{public, signpost.description:begin_time}llu Component=%{public, signpost.telemetry:string1}s  enableTelemetry=YES ", buf, 0x16u);
    }

    v168 = request;

    LODWORD(v110) = HIDWORD(v172);
    v153 = [MEMORY[0x1E696AD98] numberWithFloat:v110];
    v102 = [MEMORY[0x1E696AD98] numberWithBool:v172];
    v27 = contexta;
    resultCopy4 = result;
    v72 = v155;
    v25 = MADRemoveBackgroundCachedMaskState;
  }

  else
  {
    v168 = request;
    v102 = 0;
    v153 = 0;
  }

  [v27 reset];
  if ([v168 calibrate])
  {
    v154 = v71;
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Performing legacy text embedding calibration", buf, 2u);
    }

    v156 = v72;
    v111 = +[MADTextEmbeddingCalibrationResource sharedResource];
    sharedManager = [&v25[38] sharedManager];
    v113 = [sharedManager activateResource:v111];

    v172 = 0;
    v115 = VCPSignPostLog(v114);
    v116 = os_signpost_id_generate(v115);

    v118 = VCPSignPostLog(v117);
    v119 = v118;
    if (v116 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v118))
    {
      signpostPayload5 = [(MADServiceTextProcessingSubtask *)self signpostPayload];
      *buf = 138412290;
      v190 = signpostPayload5;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v119, OS_SIGNPOST_INTERVAL_BEGIN, v116, "MADTextEmbeddingCalibration", "%@", buf, 0xCu);
    }

    v157 = v73;

    v121 = mach_continuous_time();
    v152 = v111;
    instance = [v111 instance];
    v123 = [instance processEmbedding:v174 mean:&v172 + 4 standardDeviation:&v172];

    if (v123)
    {
      v125 = v113;
      v126 = MEMORY[0x1E696ABC0];
      v127 = *MEMORY[0x1E696A768];
      v128 = v123;
      v183 = *MEMORY[0x1E696A578];
      v129 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Text embedding calibration failed"];
      v184 = v129;
      v130 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v184 forKeys:&v183 count:1];
      v131 = [v126 errorWithDomain:v127 code:v128 userInfo:v130];

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v132 = [v131 description];
        *buf = 138412290;
        v190 = v132;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v27 = contexta;
      if (error)
      {
        objc_storeStrong(error, v131);
      }

      v133 = 0;
      v134 = 0;
      v57 = 0;
      v71 = v154;
      v72 = v156;
      goto LABEL_107;
    }

    v135 = VCPSignPostLog(v124);
    v136 = v135;
    if (v116 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v135))
    {
      signpostPayload6 = [(MADServiceTextProcessingSubtask *)self signpostPayload];
      *buf = 138412290;
      v190 = signpostPayload6;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v136, OS_SIGNPOST_INTERVAL_END, v116, "MADTextEmbeddingCalibration", "%@", buf, 0xCu);
    }

    v139 = VCPSignPostPersistentLog(v138);
    v140 = VCPSignPostPersistentLog(v139);
    v141 = os_signpost_id_generate(v140);

    if (v141 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v139))
    {
      *buf = 134349314;
      v190 = v121;
      v191 = 2082;
      v192 = "ExecuteCalibration";
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v139, OS_SIGNPOST_EVENT, v141, "TextEmbeddingGeneration", "%{public, signpost.description:begin_time}llu Component=%{public, signpost.telemetry:string1}s  enableTelemetry=YES ", buf, 0x16u);
    }

    [v113 reset];
    LODWORD(v142) = HIDWORD(v172);
    v134 = [MEMORY[0x1E696AD98] numberWithFloat:v142];
    LODWORD(v143) = v172;
    v144 = [MEMORY[0x1E696AD98] numberWithFloat:v143];
    v145 = v113;
    v133 = v144;

    v73 = &unk_1F49BC250;
    v27 = contexta;
    resultCopy4 = result;
    v72 = v156;
  }

  else
  {
    v133 = 0;
    v134 = 0;
  }

  v146 = objc_alloc(MEMORY[0x1E69AE3F0]);
  v157 = v73;
  v147 = [v146 initWithEmbedding:v174 calibrationVersion:v73 mean:v134 standardDeviation:v133 bias:v72 scale:v71 threshold:v164];
  v148 = *resultCopy4;
  *resultCopy4 = v147;

  if (![v168 computeSafety])
  {
    v57 = 1;
LABEL_107:
    v150 = v153;
    goto LABEL_108;
  }

  v149 = *resultCopy4;
  v150 = v153;
  [v149 setSafetyScore:v153 isSafe:v102];
  v57 = 1;
LABEL_108:

  request = v168;
LABEL_109:

LABEL_110:
  segments = v166;
LABEL_111:

LABEL_112:
  return v57;
}

- (int)run
{
  v62[1] = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "MADTextEmbeddingTask running...", buf, 2u);
  }

  v3 = mach_continuous_time();
  request = [(MADServiceTextProcessingSubtask *)self request];
  if ([request calibrate] && objc_msgSend(request, "version") != 3)
  {
    request2 = [(MADServiceTextProcessingSubtask *)self request];
    v31 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A768];
    v61 = *MEMORY[0x1E696A578];
    array = [MEMORY[0x1E696AEC0] stringWithFormat:@"Calibration only supported for MD3"];
    v62[0] = array;
    v33 = MEMORY[0x1E695DF20];
    v34 = v62;
    v35 = &v61;
LABEL_43:
    v36 = [v33 dictionaryWithObjects:v34 forKeys:v35 count:1];
    v37 = [v31 errorWithDomain:v32 code:-18 userInfo:v36];
    [request2 setError:v37];

    goto LABEL_44;
  }

  if ([request computeThreshold] && objc_msgSend(request, "version") != 3 && objc_msgSend(request, "version") != 4 && objc_msgSend(request, "version") != 5 && objc_msgSend(request, "version") != 7 && objc_msgSend(request, "version") != 8 && objc_msgSend(request, "version") != 9)
  {
    request2 = [(MADServiceTextProcessingSubtask *)self request];
    v31 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A768];
    v59 = *MEMORY[0x1E696A578];
    array = [MEMORY[0x1E696AEC0] stringWithFormat:@"Threshold calibration only supported for MD3-MD7"];
    v60 = array;
    v33 = MEMORY[0x1E695DF20];
    v34 = &v60;
    v35 = &v59;
    goto LABEL_43;
  }

  if ([request computeSafety] && objc_msgSend(request, "version") != 5 && objc_msgSend(request, "version") != 7 && objc_msgSend(request, "version") != 8 && objc_msgSend(request, "version") != 9)
  {
    request2 = [(MADServiceTextProcessingSubtask *)self request];
    v31 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A768];
    v57 = *MEMORY[0x1E696A578];
    array = [MEMORY[0x1E696AEC0] stringWithFormat:@"Safety only supported for MD5-MD7"];
    v58 = array;
    v33 = MEMORY[0x1E695DF20];
    v34 = &v58;
    v35 = &v57;
    goto LABEL_43;
  }

  v40 = v3;
  v41 = request;
  request2 = +[MADTextEmbeddingResource sharedResource:extendedContextLength:](MADTextEmbeddingResource, "sharedResource:extendedContextLength:", [request version], objc_msgSend(request, "extendedContextLength"));
  isTextEncoderWarm = [request2 isTextEncoderWarm];
  array = [MEMORY[0x1E695DF70] array];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  asset = [(MADServiceTextProcessingSubtask *)self asset];
  textInputs = [asset textInputs];

  v9 = [textInputs countByEnumeratingWithState:&v43 objects:v56 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v44;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(textInputs);
        }

        v13 = *(*(&v43 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        *buf = 0;
        v42 = 0;
        v15 = [(MADTextEmbeddingTask *)self processInput:v13 resource:request2 result:&v42 error:buf];
        if (v15)
        {
          [array addObject:v42];
        }

        else
        {
          request3 = [(MADServiceTextProcessingSubtask *)self request];
          [request3 setError:*buf];
        }

        objc_autoreleasePoolPop(v14);
        if (!v15)
        {

          goto LABEL_41;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [textInputs countByEnumeratingWithState:&v43 objects:v56 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  request4 = [(MADServiceTextProcessingSubtask *)self request];
  [request4 setResults:array];

  v19 = VCPSignPostPersistentLog(v18);
  v20 = VCPSignPostPersistentLog(v19);
  v21 = os_signpost_id_generate(v20);

  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    v22 = qos_class_self();
    v23 = VCPMAQoSDescription(v22);
    uTF8String = [v23 UTF8String];
    if (isTextEncoderWarm)
    {
      v25 = "Yes";
    }

    else
    {
      v25 = "No";
    }

    asset2 = [(MADServiceTextProcessingSubtask *)self asset];
    textInputs2 = [asset2 textInputs];
    v28 = [textInputs2 count];
    extendedContextLength = [v41 extendedContextLength];
    *buf = 134350082;
    v30 = 77;
    *&buf[4] = v40;
    if (extendedContextLength)
    {
      v30 = 512;
    }

    v48 = 2082;
    v49 = uTF8String;
    v50 = 2082;
    v51 = v25;
    v52 = 2050;
    v53 = v28;
    v54 = 2050;
    v55 = v30;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_EVENT, v21, "TextEmbeddingGeneration", "%{public, signpost.description:begin_time}llu QoS=%{public, signpost.telemetry:string1}s TextEncoderIsWarm=%{public, signpost.telemetry:string2}s InputCount=%{public, signpost.telemetry:number1}lld ContextLength=%{public, signpost.telemetry:number2}lld  enableTelemetry=YES ", buf, 0x34u);
  }

  if (MediaAnalysisLogLevel() < 6)
  {
LABEL_41:
    request = v41;
  }

  else
  {
    request = v41;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "MADTextEmbeddingTask complete", buf, 2u);
    }
  }

LABEL_44:

  return 0;
}

@end