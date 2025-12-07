@interface MRInvokeClientCallback
@end

@implementation MRInvokeClientCallback

void ___onClientQueue_MRInvokeClientCallback_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) disarm])
  {
    v4 = *(*(a1 + 64) + 16);

    v4();
  }

  else if (a2 || MRContentItemIsEmpty(*(a1 + 40)) || ([*(a1 + 48) includeArtwork] & 1) != 0)
  {
    v5 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v7 = MRContentItemCopyMinimalReadableDescription(*(a1 + 40));
      v14 = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[MRPlaybackQueueServiceClient] After completion playbackQueueRequest %{public}@ responded to asset request with item, but was ignored %{public}@", &v14, 0x16u);
    }
  }

  else
  {
    v8 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 48);
      v10 = MRContentItemCopyMinimalReadableDescription(*(a1 + 40));
      v14 = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[MRPlaybackQueueServiceClient] After completion playbackQueueRequest %{public}@ responded to asset request with item %{public}@", &v14, 0x16u);
    }

    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = [*(a1 + 56) playerPath];
    MRMediaRemotePlaybackQueueDataSourceContentItemChangedWithRequestForPlayer(v11, v12, v13);
  }
}

void ___onClientQueue_MRInvokeClientCallback_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ___onClientQueue_MRInvokeClientCallback_block_invoke_cold_1(a1, v3, v4);
    }
  }

  else
  {
    [*(a1 + 32) startCachingContentItemUpdatesForItem:*(a1 + 40) forPendingRequest:*(a1 + 48)];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___onClientQueue_MRInvokeClientCallback_block_invoke_29;
  v8[3] = &unk_1E769AB28;
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

void ___onClientQueue_MRInvokeClientCallback_block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1A2860000, log, OS_LOG_TYPE_ERROR, "[MRPlaybackQueueServiceClient] playbackQueueRequest %{public}@ responded to asset request with error %{public}@", &v4, 0x16u);
}

@end