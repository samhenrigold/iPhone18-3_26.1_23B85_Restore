@interface AFHandleSignalByFilingIssue
@end

@implementation AFHandleSignalByFilingIssue

void ___AFHandleSignalByFilingIssue_block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    if (v3)
    {
      v5 = [v3 description];
    }

    else
    {
      v5 = @"no error";
    }

    v6 = 136315394;
    v7 = "_AFHandleSignalByFilingIssue_block_invoke";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s Filed a radar, result: %@", &v6, 0x16u);
    if (v3)
    {
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

@end