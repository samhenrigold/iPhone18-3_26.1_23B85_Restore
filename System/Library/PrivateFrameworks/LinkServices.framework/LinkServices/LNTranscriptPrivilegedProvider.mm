@interface LNTranscriptPrivilegedProvider
- (id)transcriptPublisherWithStreamName:(id)name fromDate:(id)date toDate:(id)toDate maxEvents:(id)events reversed:(BOOL)reversed error:(id *)error;
- (void)donateActionRecordData:(id)data bundleIdentifier:(id)identifier timestamp:(double)timestamp writeImmediately:(BOOL)immediately reply:(id)reply;
@end

@implementation LNTranscriptPrivilegedProvider

- (id)transcriptPublisherWithStreamName:(id)name fromDate:(id)date toDate:(id)toDate maxEvents:(id)events reversed:(BOOL)reversed error:(id *)error
{
  reversedCopy = reversed;
  v44 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  dateCopy = date;
  toDateCopy = toDate;
  eventsCopy = events;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__14194;
  v40 = __Block_byref_object_dispose__14195;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__14194;
  v34 = __Block_byref_object_dispose__14195;
  v35 = 0;
  connection = [(LNTranscriptProvider *)self connection];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __109__LNTranscriptPrivilegedProvider_transcriptPublisherWithStreamName_fromDate_toDate_maxEvents_reversed_error___block_invoke;
  v29[3] = &unk_1E74B2658;
  v29[4] = &v30;
  v19 = [connection synchronousRemoteObjectProxyWithErrorHandler:v29];
  v20 = v19;
  if (nameCopy)
  {
    v21 = nameCopy;
  }

  else
  {
    v21 = @"System";
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __109__LNTranscriptPrivilegedProvider_transcriptPublisherWithStreamName_fromDate_toDate_maxEvents_reversed_error___block_invoke_3;
  v28[3] = &unk_1E74B2680;
  v28[4] = &v30;
  v28[5] = &v36;
  [v19 requestReadAccessForStream:v21 reply:v28];

  v22 = v37[5];
  if (v22)
  {
    v23 = [v22 url];
    v24 = [LNTranscriptProvider publisherForStream:v23 fromDate:dateCopy toDate:toDateCopy maxEvents:eventsCopy reversed:reversedCopy];
  }

  else
  {
    v25 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = v31[5];
      *buf = 138412290;
      v43 = v26;
      _os_log_impl(&dword_19763D000, v25, OS_LOG_TYPE_ERROR, "Failed to get transcript %@", buf, 0xCu);
    }

    v24 = 0;
    if (error)
    {
      *error = v31[5];
    }
  }

  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);

  return v24;
}

void __109__LNTranscriptPrivilegedProvider_transcriptPublisherWithStreamName_fromDate_toDate_maxEvents_reversed_error___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getLNLogCategoryGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_ERROR, "Error when executing requestReadAccessForStream. error: %@", &v8, 0xCu);
  }

  v5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"LNTranscriptErrorDomain" code:1004 userInfo:0];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __109__LNTranscriptPrivilegedProvider_transcriptPublisherWithStreamName_fromDate_toDate_maxEvents_reversed_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)donateActionRecordData:(id)data bundleIdentifier:(id)identifier timestamp:(double)timestamp writeImmediately:(BOOL)immediately reply:(id)reply
{
  immediatelyCopy = immediately;
  replyCopy = reply;
  identifierCopy = identifier;
  dataCopy = data;
  v15 = getLNLogCategoryExecution();
  v16 = v15;
  if (data + 1 >= 2 && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19763D000, v16, OS_SIGNPOST_INTERVAL_BEGIN, data, "donating", "", buf, 2u);
  }

  connection = [(LNTranscriptProvider *)self connection];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __107__LNTranscriptPrivilegedProvider_donateActionRecordData_bundleIdentifier_timestamp_writeImmediately_reply___block_invoke;
  v24[3] = &unk_1E74B2870;
  v18 = replyCopy;
  v25 = v18;
  dataCopy2 = data;
  v19 = [connection remoteObjectProxyWithErrorHandler:v24];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __107__LNTranscriptPrivilegedProvider_donateActionRecordData_bundleIdentifier_timestamp_writeImmediately_reply___block_invoke_1;
  v21[3] = &unk_1E74B2870;
  v22 = v18;
  dataCopy3 = data;
  v20 = v18;
  [v19 donateActionRecordData:dataCopy bundleIdentifier:identifierCopy timestamp:immediatelyCopy writeImmediately:v21 reply:timestamp];
}

void __107__LNTranscriptPrivilegedProvider_donateActionRecordData_bundleIdentifier_timestamp_writeImmediately_reply___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getLNLogCategoryGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_INFO, "XPC Error when executing donateActionRecordData. error: %@", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = getLNLogCategoryExecution();
  v6 = v5;
  v7 = *(a1 + 40);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_19763D000, v6, OS_SIGNPOST_INTERVAL_END, v7, "donating", "", &v8, 2u);
  }
}

void __107__LNTranscriptPrivilegedProvider_donateActionRecordData_bundleIdentifier_timestamp_writeImmediately_reply___block_invoke_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_INFO, "Error when executing donateActionRecordData. error: %@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
  v5 = getLNLogCategoryExecution();
  v6 = v5;
  v7 = *(a1 + 40);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_19763D000, v6, OS_SIGNPOST_INTERVAL_END, v7, "donating", "", &v8, 2u);
  }
}

@end