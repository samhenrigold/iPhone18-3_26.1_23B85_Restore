@interface AFGetNowPlayingApplicationIdentifier
@end

@implementation AFGetNowPlayingApplicationIdentifier

void ___AFGetNowPlayingApplicationIdentifier_block_invoke_118(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = MRNowPlayingClientGetBundleIdentifier();
  }

  else
  {
    v4 = a3;
    if (a3)
    {
      v5 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "_AFGetNowPlayingApplicationIdentifier_block_invoke";
        v8 = 2112;
        v9 = v4;
        _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s MRMediaRemoteGetNowPlayingClient failed with error %@", &v6, 0x16u);
      }

      v4 = 0;
    }
  }

  (*(*(a1 + 32) + 16))();
}

void ___AFGetNowPlayingApplicationIdentifier_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___AFGetNowPlayingApplicationIdentifier_block_invoke_2;
  block[3] = &unk_1E73496E8;
  v11 = v5;
  v12 = v6;
  v7 = *(a1 + 32);
  v13 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void ___AFGetNowPlayingApplicationIdentifier_block_invoke_2(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2 && !a1[5])
  {
    v4 = a1[6];
    v8 = [v2 playerPath];
    v5 = [v8 client];
    v6 = [v5 bundleIdentifier];
    (*(v4 + 16))(v4, v6);
  }

  else
  {
    v3 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[5];
      *buf = 136315394;
      v10 = "_AFGetNowPlayingApplicationIdentifier_block_invoke_2";
      v11 = 2112;
      v12 = v7;
      _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s Failed to get response: %@", buf, 0x16u);
    }

    (*(a1[6] + 16))();
  }
}

@end