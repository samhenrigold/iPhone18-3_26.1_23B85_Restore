@interface LTTextToSpeechCache
@end

@implementation LTTextToSpeechCache

void __46___LTTextToSpeechCache_cacheAudioData_forKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[2] setObject:*(a1 + 40) forKeyedSubscript:*(a1 + 32)];
    WeakRetained = v3;
  }
}

uint64_t __40___LTTextToSpeechCache_audioDataForKey___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];

  return MEMORY[0x2821F96F8]();
}

void __29___LTTextToSpeechCache_clear__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[2] count];
    if (v3 >= 1)
    {
      v5 = v3;
      v6 = _LTOSLogTTS(v3, v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = 134217984;
        v8 = v5;
        _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Purging %ld items from TTS cache", &v7, 0xCu);
      }

      [v2[2] removeAllObjects];
    }
  }
}

@end