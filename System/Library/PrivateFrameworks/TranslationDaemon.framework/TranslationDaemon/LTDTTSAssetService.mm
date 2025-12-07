@interface LTDTTSAssetService
@end

@implementation LTDTTSAssetService

uint64_t __29___LTDTTSAssetService__queue__block_invoke()
{
  _queue__queue_1 = dispatch_queue_create("com.apple.translationd.TTSAssetService", 0);

  return MEMORY[0x2821F96F8]();
}

void __43___LTDTTSAssetService_setSubscribedVoices___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = _LTOSLogAssets(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __43___LTDTTSAssetService_setSubscribedVoices___block_invoke_cold_1();
    }

    [*(a1 + 32) setSiriTTSSession:0];
  }
}

void __41___LTDTTSAssetService__subscribeToVoice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = _LTOSLogAssets(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __43___LTDTTSAssetService_setSubscribedVoices___block_invoke_cold_1();
    }

    [*(a1 + 32) setSiriTTSSession:0];
  }
}

void __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) provider];

  if (v2)
  {
    v3 = *(a1 + 56);
    v4 = [*(a1 + 32) provider];
    if ([v4 locallyAvailable])
    {
    }

    else
    {
      v10 = [*(a1 + 32) provider];
      v11 = [v10 downloading];

      if (!v11)
      {
LABEL_17:
        v18 = *(a1 + 56);
        v19 = [*(a1 + 32) provider];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_53;
        v27[3] = &unk_2789B67F8;
        v30 = *(a1 + 64);
        v28 = *(a1 + 32);
        v29 = *(a1 + 48);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_57;
        v22[3] = &unk_2789B6820;
        v26 = *(a1 + 64);
        v23 = *(a1 + 32);
        v24 = *(a1 + 48);
        v25 = *(a1 + 40);
        [v19 downloadWithOptions:v18 & 1 progress:v27 then:v22];

        return;
      }
    }

    v12 = [*(a1 + 32) provider];
    if ([v12 locallyAvailable])
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    v14 = [*(a1 + 32) progress];
    [v14 setOfflineState:v13];

    v15 = *(a1 + 48);
    if (v15)
    {
      (*(v15 + 16))(v15, *(a1 + 32));
    }

    v16 = [*(a1 + 32) provider];
    v17 = [v16 locallyAvailable];

    if ((v17 & 1) == 0 && (v3 & 0x80) != 0)
    {
      goto LABEL_17;
    }

    v20 = *(a1 + 40);
    if (v20)
    {
      v21 = *(v20 + 16);

      v21();
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"TTS asset not found for %@", *(a1 + 32)];
    v6 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:16 description:v5 userInfo:0];
    v8 = _LTOSLogAssets(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_cold_1();
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, v6);
    }
  }
}

void __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_53(id *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1[6] _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_2;
  block[3] = &unk_2789B67D0;
  v12 = a2;
  v10 = a1[4];
  v13 = a3;
  v7 = a1[5];
  v8 = a1[6];
  v11 = v7;
  v14 = v8;
  dispatch_async(v6, block);
}

void __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) >= 2)
  {
    v2 = [*(a1 + 32) progress];
    v3 = [v2 updateTotalUnitCount:*(a1 + 56) completedUnitCount:*(a1 + 48)];

    if (v3)
    {
      v6 = _LTOSLogAssets(v4, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 32);
        v8 = v6;
        v9 = [v7 progress];
        *buf = 138543362;
        v24 = v9;
        _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_INFO, "SiriTTS progress for %{public}@", buf, 0xCu);
      }
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, *(a1 + 32));
    }
  }

  if (*(a1 + 40))
  {
    v11 = [*(a1 + 32) progress];
    v12 = [v11 isCancelled];

    if (v12)
    {
      v15 = _LTOSLogAssets(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = *(a1 + 32);
        *buf = 138543362;
        v24 = v16;
        _os_log_impl(&dword_232E53000, v15, OS_LOG_TYPE_INFO, "Cancelling download for %{public}@", buf, 0xCu);
      }

      v17 = [*(a1 + 32) provider];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_54;
      v20[3] = &unk_2789B67A8;
      v18 = *(a1 + 32);
      v19 = *(a1 + 64);
      v21 = v18;
      v22 = v19;
      [v17 cancelDownloadingThen:v20];
    }
  }
}

uint64_t __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_54(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _LTOSLogAssets(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "Cancelled download for %{public}@", &v6, 0xCu);
  }

  return [*(a1 + 40) purgeAsset:*(a1 + 32) completion:0];
}

void __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_57(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[7] _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_2_58;
  block[3] = &unk_2789B6650;
  v12 = v3;
  v5 = a1[4];
  v6 = a1[7];
  v7 = a1[5];
  *&v8 = a1[6];
  *(&v8 + 1) = v6;
  *&v9 = v5;
  *(&v9 + 1) = v7;
  v13 = v9;
  v14 = v8;
  v10 = v3;
  dispatch_async(v4, block);
}

void __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_2_58(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v3 = _LTOSLogAssets(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      *buf = 138412290;
      v20 = v4;
      _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "SiriTTS downloaded %@", buf, 0xCu);
    }

    v5 = [*(a1 + 40) progress];
    v6 = [v5 isFinished];

    if ((v6 & 1) == 0)
    {
      v7 = [*(a1 + 40) progress];
      [v7 setOfflineState:2];
    }

    v8 = *(a1 + 64);
    v9 = [*(a1 + 40) provider];
    v10 = [v8 _siriVoiceForTTSAsset:v9];

    if (v10)
    {
      [*(a1 + 64) _subscribeToVoice:v10];
      v11 = 0;
    }

    else
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"TTS asset lookup failed for %@", *(a1 + 40)];
      v11 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:15 description:v14 userInfo:0];
      v16 = _LTOSLogAssets(v11, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_2_58_cold_1();
      }
    }

    v17 = *(a1 + 48);
    if (v17)
    {
      (*(v17 + 16))(v17, *(a1 + 40));
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"TTS asset download failed for %@", *(a1 + 40)];
    v11 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:16 description:v10 userInfo:0];
    v13 = _LTOSLogAssets(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_2_58_cold_2((a1 + 40), v11, v13);
    }
  }

  v18 = *(a1 + 56);
  if (v18)
  {
    (*(v18 + 16))(v18, v11);
  }
}

void __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_2_58_cold_2(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1(&dword_232E53000, a2, a3, "SiriTTS download %{public}@ failure: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end