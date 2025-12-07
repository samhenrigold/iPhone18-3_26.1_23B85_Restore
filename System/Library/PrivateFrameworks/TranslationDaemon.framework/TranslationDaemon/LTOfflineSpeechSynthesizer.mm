@interface LTOfflineSpeechSynthesizer
@end

@implementation LTOfflineSpeechSynthesizer

void __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v4 = _LTOSLogTTS(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_INFO, "Received offline TTS metrics:%@ ", &v5, 0xCu);
  }
}

void __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      objc_msgSend_asbd(v3);
      *(v6 + 32) = v18;
      *(v6 + 48) = v19;
      *(v6 + 64) = v20;
      objc_msgSend_asbd(v3);
      if (v17 == 1819304813)
      {
        v7 = *(v6 + 72);
        v8 = [v3 audioData];
        [v7 addObject:v8];

        goto LABEL_10;
      }

      WeakRetained = objc_msgSend_asbd(v3);
      if (v16 == 1869641075)
      {
        v9 = *(v6 + 72);
        v10 = *(v6 + 88);
        v11 = [v3 audioData];
        v12 = [v3 packetCount];
        v13 = [v3 packetDescriptions];
        v14 = [v10 extractAudioChunksFromOpusWithData:v11 packetCount:v12 packetDescriptions:v13];
        [v9 addObjectsFromArray:v14];

        goto LABEL_10;
      }
    }

    else
    {
      *(WeakRetained + 64) = 0;
      *(WeakRetained + 32) = 0u;
      *(WeakRetained + 48) = 0u;
    }

    v15 = _LTOSLogTTS(WeakRetained, v5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke_9_cold_1(v15);
    }
  }

LABEL_10:
}

void __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke_11(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[10] addObjectsFromArray:v5];
  }
}

void __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = _LTOSLogTTS(WeakRetained, v5);
    v8 = v7;
    if (v3)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke_2_cold_1(v3, v8);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_INFO, "Finished offline TTS, successfully", buf, 2u);
    }

    if (v6[1])
    {
      v9 = dispatch_time(0, 300000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke_13;
      block[3] = &unk_2789B5968;
      block[4] = v6;
      v11 = *(a1 + 32);
      v12 = v3;
      dispatch_after(v9, MEMORY[0x277D85CD0], block);
    }
  }
}

void __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke_13(void *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = *(v2 + 80);
  if (v3)
  {
    v4 = [MEMORY[0x277CE1C50] wordTimingInfoFromSiriTTSService:v3 text:a1[5]];
    v2 = a1[4];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = *(v2 + 48);
  v27 = *(v2 + 32);
  v28 = v5;
  v29 = *(v2 + 64);
  if (*(v2 + 40) == 1869641075)
  {
    v6 = *(v2 + 88);
    v26 = 0;
    v7 = *(v2 + 48);
    *buf = *(v2 + 32);
    v31 = v7;
    v8 = *(v2 + 72);
    v32 = *(v2 + 64);
    v9 = [v6 decodeTo48KHzPCMFromChunks:v8 from:buf outError:&v26];
    v11 = v26;
    v12 = *(a1[4] + 88);
    if (v12)
    {
      v12 = objc_msgSend_get48khzPCMDescription(v12);
    }

    else
    {
      v32 = 0;
      *buf = 0u;
      v31 = 0u;
    }

    v27 = *buf;
    v28 = v31;
    v29 = v32;
    if (v11)
    {
      v15 = _LTOSLogTTS(v12, v10);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke_13_cold_1(v11, v15);
      }
    }
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v14 = *(a1[4] + 72);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke_16;
    v24[3] = &unk_2789B6FC8;
    v9 = v13;
    v25 = v9;
    [v14 enumerateObjectsUsingBlock:v24];
    v11 = v25;
  }

  v18 = _LTOSLogTTS(v16, v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = v18;
    v20 = [v9 length];
    *buf = 134217984;
    *&buf[4] = v20;
    _os_log_impl(&dword_232E53000, v19, OS_LOG_TYPE_INFO, "Converted to %ld bytes", buf, 0xCu);
  }

  v21 = [_LTAudioData alloc];
  *buf = v27;
  v31 = v28;
  v32 = v29;
  v22 = [(_LTAudioData *)v21 initWithASBD:buf rawData:v9 wordTimingInfo:v4];
  (*(*(a1[4] + 8) + 16))(*(a1[4] + 8), v22, a1[6], v23);
}

void __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_232E53000, a2, OS_LOG_TYPE_ERROR, "Encountered error when speaking TTS: %@", &v2, 0xCu);
}

void __49___LTOfflineSpeechSynthesizer_speak_withContext___block_invoke_13_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_232E53000, a2, OS_LOG_TYPE_ERROR, "Decoding to PCM 48kHz failed: %@", &v2, 0xCu);
}

@end