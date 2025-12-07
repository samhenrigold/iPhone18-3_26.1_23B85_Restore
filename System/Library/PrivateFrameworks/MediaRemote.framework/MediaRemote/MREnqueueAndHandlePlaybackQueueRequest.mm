@interface MREnqueueAndHandlePlaybackQueueRequest
@end

@implementation MREnqueueAndHandlePlaybackQueueRequest

void ___MREnqueueAndHandlePlaybackQueueRequest_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[MRUserSettings currentSettings];
  v8 = [v7 verbosePlaybackQueueRequestLogging];

  if (v8)
  {
    v9 = _MRLogForCategory(0xAuLL);
    v10 = v9;
    if (v6)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        ___MREnqueueAndHandlePlaybackQueueRequest_block_invoke_cold_1(a1);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) requestIdentifier];
      v12 = [MEMORY[0x1E695DF00] date];
      [v12 timeIntervalSinceDate:*(a1 + 40)];
      v14 = 138543874;
      v15 = @"MREnqueueAndHandlePlaybackQueueRequest";
      v16 = 2114;
      v17 = v11;
      v18 = 2048;
      v19 = v13;
      _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", &v14, 0x20u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void ___MREnqueueAndHandlePlaybackQueueRequest_block_invoke_108(uint64_t a1)
{
  v2 = _MRLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    ___MREnqueueAndHandlePlaybackQueueRequest_block_invoke_108_cold_1(a1, v2);
  }
}

void ___MREnqueueAndHandlePlaybackQueueRequest_block_invoke_109(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:26 description:@"Unable to begin execution of playbackQueueRequest operation"];
  [*(*(*(a1 + 40) + 8) + 40) cancel];
  (*(*(a1 + 32) + 16))();
}

void ___MREnqueueAndHandlePlaybackQueueRequest_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  [*(a1 + 40) invalidate];
  LOBYTE(v3) = [v4 isCancelled];

  if ((v3 & 1) == 0)
  {
    v5 = dispatch_semaphore_create(0);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = ___MREnqueueAndHandlePlaybackQueueRequest_block_invoke_3;
    v10[3] = &unk_1E769C270;
    v8 = *(a1 + 64);
    v11 = v5;
    v12 = v8;
    v9 = v5;
    _MRHandlePlaybackQueueRequest(v6, v7, v10);
    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  }
}

intptr_t ___MREnqueueAndHandlePlaybackQueueRequest_block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

void ___MREnqueueAndHandlePlaybackQueueRequest_block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___MREnqueueAndHandlePlaybackQueueRequest_block_invoke_5;
  v5[3] = &unk_1E76A43B8;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  MRAnalyticsSendEvent(@"com.apple.mediaremote.serviceclient.playbackqueue.operation", 0, v5);
}

id ___MREnqueueAndHandlePlaybackQueueRequest_block_invoke_5(uint64_t a1)
{
  v19[6] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DF90]);
  v18[0] = @"waitDuration";
  v3 = MEMORY[0x1E696AD98];
  [*(a1 + 32) waitDuration];
  v4 = [v3 numberWithDouble:?];
  v19[0] = v4;
  v18[1] = @"executionDuration";
  v5 = MEMORY[0x1E696AD98];
  [*(a1 + 32) executionDuration];
  v6 = [v5 numberWithDouble:?];
  v19[1] = v6;
  v18[2] = @"totalDuration";
  v7 = MEMORY[0x1E696AD98];
  [*(a1 + 32) totalDuration];
  v8 = [v7 numberWithDouble:?];
  v19[2] = v8;
  v18[3] = @"bundleID";
  v9 = MEMORY[0x1E696AD98];
  v10 = [MEMORY[0x1E696AAE8] mainBundle];
  v11 = [v10 bundleIdentifier];
  v12 = [v9 numberWithInt:MRAnalyticsAppBundleIDStringToInt(v11)];
  v19[3] = v12;
  v18[4] = @"pendingOperationCount";
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "operationCount")}];
  v19[4] = v13;
  v18[5] = @"maxConcurrentOperationCount";
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 40), "maxConcurrentOperationCount")}];
  v19[5] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:6];
  v16 = [v2 initWithDictionary:v15];

  return v16;
}

void ___MREnqueueAndHandlePlaybackQueueRequest_block_invoke_cold_1(uint64_t a1)
{
  v2 = [*(a1 + 32) requestIdentifier];
  v3 = [MEMORY[0x1E695DF00] date];
  [v3 timeIntervalSinceDate:*(a1 + 40)];
  OUTLINED_FUNCTION_2_14();
  OUTLINED_FUNCTION_4_11();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x2Au);
}

void ___MREnqueueAndHandlePlaybackQueueRequest_block_invoke_108_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = 134218242;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_1A2860000, a2, OS_LOG_TYPE_ERROR, "It has been more than <%lf> seconds since playbackQueueRequest=%@ was called and still waiting for operation to begin", &v4, 0x16u);
}

@end