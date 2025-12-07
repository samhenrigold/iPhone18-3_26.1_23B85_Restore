@interface MADSharedTextEncoder
+ (MADSharedTextEncoder)textEncoderWithVersion:(unint64_t)version extendedContextLength:(BOOL)length;
+ (int64_t)revisionForVersion:(unint64_t)version;
+ (unint64_t)contextLength:(BOOL)length;
- (BOOL)_runOnInput:(id)input output:(id *)output error:(id *)error;
- (BOOL)loadResources:(id *)resources;
- (BOOL)runOnInput:(id)input output:(id *)output error:(id *)error;
- (MADSharedTextEncoder)initWithTextEncoderWithVersion:(unint64_t)version extendedContextLength:(BOOL)length;
@end

@implementation MADSharedTextEncoder

+ (int64_t)revisionForVersion:(unint64_t)version
{
  versionCopy = version;
  v7 = *MEMORY[0x1E69E9840];
  v4 = version - 1;
  if (version - 1 < 9 && ((0x15Fu >> v4) & 1) != 0)
  {
    return qword_1C9F636C0[v4];
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6[0] = 67109120;
    v6[1] = versionCopy;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unknown embedding version specified (%d)", v6, 8u);
  }

  return 0;
}

+ (unint64_t)contextLength:(BOOL)length
{
  if (length)
  {
    return 512;
  }

  else
  {
    return 77;
  }
}

- (MADSharedTextEncoder)initWithTextEncoderWithVersion:(unint64_t)version extendedContextLength:(BOOL)length
{
  lengthCopy = length;
  v59 = *MEMORY[0x1E69E9840];
  v52.receiver = self;
  v52.super_class = MADSharedTextEncoder;
  v6 = [(MADSharedTextEncoder *)&v52 init];
  if (!v6)
  {
    goto LABEL_45;
  }

  v51 = 0;
  v7 = [MEMORY[0x1E6999168] createForRevision:objc_msgSend(objc_opt_class() error:{"revisionForVersion:", version), &v51}];
  v8 = v51;
  if (!v7)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v40 = [v8 description];
      *buf = 138412290;
      v54 = v40;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create text encoder configuration (%@)", buf, 0xCu);
    }

    goto LABEL_42;
  }

  computeBackend = [objc_opt_class() computeBackend];
  v10 = computeBackend;
  if (computeBackend)
  {
    computeBackend = [v7 setInferenceBackend:{objc_msgSend(computeBackend, "integerValue")}];
    if ((computeBackend & 1) == 0)
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_41;
      }

      *buf = 138412290;
      v54 = v10;
      v41 = MEMORY[0x1E69E9C10];
      v42 = "Failed to set text encoder compute backend (%@)";
      v43 = 12;
      goto LABEL_40;
    }
  }

  v11 = VCPSignPostLog(computeBackend);
  v12 = os_signpost_id_generate(v11);

  v14 = VCPSignPostLog(v13);
  v15 = v14;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v12, "CSUTextEncoder_init", "", buf, 2u);
  }

  v16 = [objc_alloc(MEMORY[0x1E6999160]) initWithConfiguration:v7];
  textEncoder = v6->_textEncoder;
  v6->_textEncoder = v16;

  v19 = VCPSignPostLog(v18);
  v20 = v19;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v20, OS_SIGNPOST_INTERVAL_END, v12, "CSUTextEncoder_init", "", buf, 2u);
  }

  if (v6->_textEncoder)
  {
    if (version <= 9 && ((1 << version) & 0x3A0) != 0)
    {
      v49 = [objc_opt_class() contextLength:lengthCopy];
      v21 = MediaAnalysisLogLevel();
      if (v21 >= 6)
      {
        v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO);
        if (v21)
        {
          *buf = 134217984;
          v54 = v49;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Setting context length: %lu", buf, 0xCu);
        }
      }

      v22 = VCPSignPostPersistentLog(v21);
      v23 = os_signpost_id_generate(v22);

      v25 = VCPSignPostPersistentLog(v24);
      v26 = v25;
      if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v23, "CSUTextEncoder_setContextLength", " enableTelemetry=YES ", buf, 2u);
      }

      v27 = +[MADStateHandler sharedStateHandler];
      [v27 enterKnownTimeoutRisk:5];

      v28 = v6->_textEncoder;
      v50 = v8;
      [(CSUTextEncoder *)v28 setContextLength:v49 error:&v50];
      v29 = v50;

      v30 = +[MADStateHandler sharedStateHandler];
      [v30 exitKnownTimeoutRisk];

      v32 = VCPSignPostPersistentLog(v31);
      v33 = v32;
      if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
      {
        v34 = qos_class_self();
        v35 = VCPMAQoSDescription(v34);
        v36 = v35;
        uTF8String = [v35 UTF8String];
        v38 = "Failure";
        *buf = 136446722;
        v54 = uTF8String;
        if (!v29)
        {
          v38 = "Success";
        }

        v55 = 2082;
        v56 = v38;
        v57 = 2050;
        v58 = v49;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v33, OS_SIGNPOST_INTERVAL_END, v23, "CSUTextEncoder_setContextLength", "QoS=%{public, signpost.telemetry:string1}s Status=%{public, signpost.telemetry:string2}s ContextLength=%{public, signpost.telemetry:number1}lld  enableTelemetry=YES ", buf, 0x20u);
      }

      if (v29)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v39 = [v29 description];
          *buf = 138412290;
          v54 = v39;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to set context length (%@)", buf, 0xCu);
        }

        v8 = v29;
        goto LABEL_41;
      }

      v8 = 0;
      v6->_extendedContextLength = lengthCopy;
    }

    v6->_version = version;
    v45 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v46 = dispatch_queue_create("MADSharedTextEncoder", v45);
    queue = v6->_queue;
    v6->_queue = v46;

LABEL_45:
    v44 = v6;
    goto LABEL_46;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v41 = MEMORY[0x1E69E9C10];
    v42 = "Failed to create text encoder";
    v43 = 2;
LABEL_40:
    _os_log_impl(&dword_1C9B70000, v41, OS_LOG_TYPE_ERROR, v42, buf, v43);
  }

LABEL_41:

LABEL_42:
  v44 = 0;
LABEL_46:

  return v44;
}

+ (MADSharedTextEncoder)textEncoderWithVersion:(unint64_t)version extendedContextLength:(BOOL)length
{
  v4 = [[MADSharedTextEncoder alloc] initWithTextEncoderWithVersion:version extendedContextLength:length];

  return v4;
}

- (BOOL)loadResources:(id *)resources
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__66;
  v13 = __Block_byref_object_dispose__66;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__MADSharedTextEncoder_loadResources___block_invoke;
  block[3] = &unk_1E834E3C8;
  block[4] = self;
  block[5] = &v15;
  block[6] = &v9;
  dispatch_sync(queue, block);
  if ((v16[3] & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [v10[5] description];
      *buf = 138412290;
      v20 = v5;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Text encoder failed to load resource (%@)", buf, 0xCu);
    }

    if (resources)
    {
      *resources = [v10[5] copy];
    }
  }

  v6 = *(v16 + 24);
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  return v6 & 1;
}

void __38__MADSharedTextEncoder_loadResources___block_invoke(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = VCPSignPostPersistentLog(a1);
  v3 = os_signpost_id_generate(v2);

  v5 = VCPSignPostPersistentLog(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CSUTextEncoder_loadResources", " enableTelemetry=YES ", buf, 2u);
  }

  v7 = +[MADStateHandler sharedStateHandler];
  [v7 enterKnownTimeoutRisk:5];

  v8 = *(a1[4] + 16);
  v9 = *(a1[6] + 8);
  obj = *(v9 + 40);
  v10 = [v8 loadResources:&obj];
  objc_storeStrong((v9 + 40), obj);
  *(*(a1[5] + 8) + 24) = v10;
  v11 = +[MADStateHandler sharedStateHandler];
  [v11 exitKnownTimeoutRisk];

  v13 = VCPSignPostPersistentLog(v12);
  v14 = v13;
  if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v13))
  {
    v15 = qos_class_self();
    v16 = VCPMAQoSDescription(v15);
    v17 = v16;
    v18 = [v16 UTF8String];
    if (*(*(a1[5] + 8) + 24))
    {
      v19 = "Success";
    }

    else
    {
      v19 = "Failure";
    }

    v20 = atomic_load((a1[4] + 33));
    v21 = [objc_opt_class() contextLength:*(a1[4] + 32)];
    *buf = 136446978;
    v24 = v18;
    v25 = 2082;
    v26 = v19;
    v27 = 2050;
    v28 = v20 & 1;
    v29 = 2050;
    v30 = v21;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_END, v3, "CSUTextEncoder_loadResources", "QoS=%{public, signpost.telemetry:string1}s Status=%{public, signpost.telemetry:string2}s IsWarm=%{public, signpost.telemetry:number1}lld ContextLength=%{public, signpost.telemetry:number2}lld  enableTelemetry=YES ", buf, 0x2Au);
  }

  if (*(*(a1[5] + 8) + 24) == 1)
  {
    atomic_store(1u, (a1[4] + 33));
  }
}

- (BOOL)_runOnInput:(id)input output:(id *)output error:(id *)error
{
  v59 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  v9 = VCPSignPostPersistentLog(inputCopy);
  v10 = os_signpost_id_generate(v9);

  v12 = VCPSignPostPersistentLog(v11);
  v13 = v12;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "CSUTextEncoder_runOnInput", " enableTelemetry=YES ", buf, 2u);
  }

  v14 = +[MADStateHandler sharedStateHandler];
  [v14 enterKnownTimeoutRisk:5];

  textEncoder = self->_textEncoder;
  v46 = 0;
  [(CSUTextEncoder *)textEncoder runOnInput:inputCopy error:&v46];
  v16 = v46;
  v17 = +[MADStateHandler sharedStateHandler];
  [v17 exitKnownTimeoutRisk];

  v19 = VCPSignPostPersistentLog(v18);
  v20 = v19;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    v45 = inputCopy;
    v21 = qos_class_self();
    v22 = VCPMAQoSDescription(v21);
    v23 = v22;
    uTF8String = [v22 UTF8String];
    if (v16)
    {
      v25 = "Failure";
    }

    else
    {
      v25 = "Success";
    }

    v26 = atomic_load(&self->_isWarm);
    v27 = [objc_opt_class() contextLength:self->_extendedContextLength];
    *buf = 136446978;
    v52 = uTF8String;
    v53 = 2082;
    v54 = v25;
    v55 = 2050;
    v56 = v26 & 1;
    v57 = 2050;
    v58 = v27;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v20, OS_SIGNPOST_INTERVAL_END, v10, "CSUTextEncoder_runOnInput", "QoS=%{public, signpost.telemetry:string1}s Status=%{public, signpost.telemetry:string2}s IsWarm=%{public, signpost.telemetry:number1}lld ContextLength=%{public, signpost.telemetry:number2}lld  enableTelemetry=YES ", buf, 0x2Au);

    inputCopy = v45;
  }

  if (!v16)
  {
    atomic_store(1u, &self->_isWarm);
    v37 = MEMORY[0x1E69AE300];
    inferenceOutputs = [(CSUTextEncoder *)self->_textEncoder inferenceOutputs];
    cSUTextEmbedding = [inferenceOutputs CSUTextEmbedding];
    v33 = [v37 embeddingFromMultiArray:cSUTextEmbedding version:self->_version];

    if (v33)
    {
      if (!output)
      {
        v35 = 1;
        goto LABEL_27;
      }

      v33 = v33;
      v36 = *output;
      *output = v33;
      v35 = 1;
    }

    else
    {
      v40 = MEMORY[0x1E696ABC0];
      v47 = *MEMORY[0x1E696A578];
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to extract and normalize embedding"];
      v48 = v41;
      v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v36 = [v40 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v42];

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v43 = [v36 description];
        *buf = 138412290;
        v52 = v43;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      if (error)
      {
        objc_storeStrong(error, v36);
      }

      v35 = 0;
    }

    goto LABEL_26;
  }

  v28 = MEMORY[0x1E696ABC0];
  v49 = *MEMORY[0x1E696A578];
  v29 = MEMORY[0x1E696AEC0];
  v30 = [v16 description];
  v31 = [v29 stringWithFormat:@"Text encoding failed (%@)", v30];
  v50 = v31;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
  v33 = [v28 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v32];

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v34 = [v33 description];
    *buf = 138412290;
    v52 = v34;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  if (error)
  {
    v33 = v33;
    v35 = 0;
    v36 = *error;
    *error = v33;
LABEL_26:

    goto LABEL_27;
  }

  v35 = 0;
LABEL_27:

  return v35;
}

- (BOOL)runOnInput:(id)input output:(id *)output error:(id *)error
{
  inputCopy = input;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__66;
  v22 = __Block_byref_object_dispose__66;
  v23 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__MADSharedTextEncoder_runOnInput_output_error___block_invoke;
  block[3] = &unk_1E83517F8;
  v15 = &v24;
  block[4] = self;
  v10 = inputCopy;
  v16 = &v18;
  outputCopy = output;
  v14 = v10;
  dispatch_sync(queue, block);
  v11 = *(v25 + 24);
  if (error && (v25[3] & 1) == 0)
  {
    *error = [v19[5] copy];
    v11 = *(v25 + 24);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11 & 1;
}

void *__48__MADSharedTextEncoder_runOnInput_output_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _runOnInput:*(a1 + 40) output:*(a1 + 64) error:*(*(a1 + 56) + 8) + 40];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

@end