@interface AFGetPlaybackState
@end

@implementation AFGetPlaybackState

uint64_t ___AFGetPlaybackState_block_invoke_116(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "_AFGetPlaybackState_block_invoke";
    v8 = 1024;
    v9 = a2;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Done MRMediaRemoteGetNowPlayingApplicationPlaybackState() (state = %u)", &v6, 0x12u);
  }

  return (*(*(a1 + 32) + 16))();
}

void ___AFGetPlaybackState_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___AFGetPlaybackState_block_invoke_2;
  block[3] = &unk_1E73496E8;
  v11 = v6;
  v12 = v5;
  v7 = *(a1 + 32);
  v13 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

uint64_t ___AFGetPlaybackState_block_invoke_2(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2 || (v5 = a1[5]) == 0)
  {
    v3 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[5];
      v10 = 136315650;
      v11 = "_AFGetPlaybackState_block_invoke";
      v12 = 2112;
      v13 = v9;
      v14 = 2112;
      v15 = v2;
      _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s Failed [MRNowPlayingController performRequestWithCompletion:] (response = %@, error = %@)", &v10, 0x20u);
    }

    v4 = *(a1[6] + 16);
  }

  else
  {
    v6 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315394;
      v11 = "_AFGetPlaybackState_block_invoke_2";
      v12 = 2112;
      v13 = v5;
      _os_log_debug_impl(&dword_1912FE000, v6, OS_LOG_TYPE_DEBUG, "%s Succeeded [MRNowPlayingController performRequestWithCompletion:] (response = %@)", &v10, 0x16u);
      v5 = a1[5];
    }

    v7 = a1[6];
    [v5 playbackState];
    v4 = *(v7 + 16);
  }

  return v4();
}

@end