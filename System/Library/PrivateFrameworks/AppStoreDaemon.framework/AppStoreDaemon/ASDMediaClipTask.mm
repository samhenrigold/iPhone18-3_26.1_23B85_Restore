@interface ASDMediaClipTask
- (ASDMediaClipTask)initWithClientID:(id)d bag:(id)bag;
- (id)perform;
@end

@implementation ASDMediaClipTask

- (ASDMediaClipTask)initWithClientID:(id)d bag:(id)bag
{
  dCopy = d;
  bagCopy = bag;
  v17.receiver = self;
  v17.super_class = ASDMediaClipTask;
  v9 = [(AMSTask *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bag, bag);
    objc_storeStrong(&v10->_clientID, d);
    v11 = MEMORY[0x1E696AEC0];
    v12 = +[(NSUUID *)MEMORY[0x1E696AFB0]];
    v13 = [v11 stringWithFormat:@"MCT/%@", v12];
    logKey = v10->_logKey;
    v10->_logKey = v13;

    v15 = ASDLogHandleForCategory(31);
    v10->_signpostID = os_signpost_id_make_with_pointer(v15, v10);
  }

  return v10;
}

- (id)perform
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __27__ASDMediaClipTask_perform__block_invoke;
  v4[3] = &unk_1E7CDCCD0;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithBlock:v4];

  return v2;
}

id __27__ASDMediaClipTask_perform__block_invoke(uint64_t a1, void *a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = ASDLogHandleForCategory(31);
  v4 = v3;
  v5 = *(*(a1 + 32) + 72);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8220000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Clip::MediaAPI/Prepare", &unk_1B82B7E6D, buf, 2u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = [[ASDMediaClipTaskURLBuilder alloc] initWithBundleID:*(v6 + 48) bag:?];
    if (*(v6 + 96))
    {
      v8 = ASDLogHandleForCategory(13);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v38 = *(v6 + 64);
        v39 = *(v6 + 96);
        *buf = 138543618;
        *&buf[4] = v38;
        *&buf[12] = 2114;
        *&buf[14] = v39;
        _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Requesting specific version (unsupported in production) %{public}@", buf, 0x16u);
      }

      [(ASDMediaClipTaskURLBuilder *)v7 setExternalVersionID:?];
    }

    v45 = [(ASDMediaClipTaskURLBuilder *)v7 build];
  }

  else
  {
    v45 = 0;
  }

  v9 = [objc_alloc(MEMORY[0x1E698C9E8]) initWithClientIdentifier:*(*(a1 + 32) + 56) bag:*(*(a1 + 32) + 48)];
  v10 = [objc_alloc(MEMORY[0x1E698C9C0]) initWithTokenService:v9 bag:*(*(a1 + 32) + 48)];
  [v10 setClientInfo:*(*(a1 + 32) + 88)];
  [v10 setLogKey:*(*(a1 + 32) + 64)];
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __27__ASDMediaClipTask_perform__block_invoke_4;
  v59[3] = &unk_1E7CDCC58;
  v11 = v9;
  v12 = *(a1 + 32);
  v60 = v11;
  v61 = v12;
  v43 = [v45 thenWithBlock:v59];
  v44 = objc_alloc_init(MEMORY[0x1E698C9C8]);
  v13 = [objc_alloc(MEMORY[0x1E698C9B8]) initWithTokenService:v11];
  v14 = objc_alloc(MEMORY[0x1E698CBA8]);
  v15 = [MEMORY[0x1E696AF80] defaultSessionConfiguration];
  v16 = [v14 initWithConfiguration:v15];

  [v16 setProtocolHandler:v13];
  [v16 setResponseDecoder:v44];
  [v11 setSession:v16];
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __27__ASDMediaClipTask_perform__block_invoke_2;
  v57[3] = &unk_1E7CDCC80;
  v17 = v16;
  v58 = v17;
  v18 = [v43 thenWithBlock:v57];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v67 = __Block_byref_object_copy__8;
  v68 = __Block_byref_object_dispose__8;
  v69 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__8;
  v55 = __Block_byref_object_dispose__8;
  v56 = 0;
  v19 = ASDLogHandleForCategory(31);
  v20 = v19;
  v21 = *(*(a1 + 32) + 72);
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *v62 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8220000, v20, OS_SIGNPOST_INTERVAL_END, v21, "Clip::MediaAPI/Prepare", &unk_1B82B7E6D, v62, 2u);
  }

  v22 = ASDLogHandleForCategory(31);
  v23 = v22;
  v24 = *(*(a1 + 32) + 72);
  if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *v62 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8220000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v24, "Clip::MediaAPI/Request", &unk_1B82B7E6D, v62, 2u);
  }

  v25 = dispatch_semaphore_create(0);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __27__ASDMediaClipTask_perform__block_invoke_11;
  v46[3] = &unk_1E7CDCCA8;
  v26 = v25;
  v49 = &v51;
  v50 = buf;
  v27 = *(a1 + 32);
  v47 = v26;
  v48 = v27;
  [v18 resultWithCompletion:v46];
  v28 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v26, v28))
  {
    v29 = ASDErrorWithUnderlyingErrorAndInfo(0, @"ASDErrorDomain", 515, @"Timed out", @"Timed out doing media lookup", 0);
    v30 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v29;

    v31 = ASDLogHandleForCategory(31);
    v32 = v31;
    v33 = *(*(a1 + 32) + 72);
    if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      *v62 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B8220000, v32, OS_SIGNPOST_INTERVAL_END, v33, "Clip::MediaAPI/Request", &unk_1B82B7E6D, v62, 2u);
    }
  }

  v34 = v52[5];
  if (!v34)
  {
    v35 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v40 = *(*(a1 + 32) + 64);
      v41 = *(*&buf[8] + 40);
      *v62 = 138543618;
      v63 = v40;
      v64 = 2114;
      v65 = v41;
      _os_log_error_impl(&dword_1B8220000, v35, OS_LOG_TYPE_ERROR, "[%{public}@] Media API request failed: %{public}@", v62, 0x16u);
    }

    v34 = v52[5];
    if (a2 && !v34)
    {
      *a2 = *(*&buf[8] + 40);
      v34 = v52[5];
    }
  }

  v36 = v34;

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(buf, 8);

  return v36;
}

id __27__ASDMediaClipTask_perform__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E698C9C0];
  v4 = a2;
  v5 = [[v3 alloc] initWithTokenService:*(a1 + 32) bag:*(*(a1 + 40) + 48)];
  [v5 setClientInfo:*(*(a1 + 40) + 88)];
  [v5 setLogKey:*(*(a1 + 40) + 64)];
  v6 = [v5 requestWithComponents:v4];

  return v6;
}

void __27__ASDMediaClipTask_perform__block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_semaphore_signal(*(a1 + 32));
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
  v12 = v6;

  v13 = ASDLogHandleForCategory(31);
  v14 = *(*(a1 + 40) + 72);

  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8220000, v13, OS_SIGNPOST_INTERVAL_END, v14, "Clip::MediaAPI/Request", &unk_1B82B7E6D, v15, 2u);
  }
}

@end