@interface LTServerSpeakSession
@end

@implementation LTServerSpeakSession

uint64_t __72___LTServerSpeakSession__playback_context_completion_audioStartHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), *(a1 + 48));
  }

  return result;
}

void __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [(os_unfair_lock_s *)WeakRetained _hasCachedCompletion];
    if (v4)
    {
      v6 = _LTOSLogTTS(v4, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_cold_1();
      }

      [(os_unfair_lock_s *)v3 _callCompletionAndClearIfNeeded:0 error:0];
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_8;
    v18[3] = &unk_2789B6B60;
    v18[4] = v3;
    v19 = *(a1 + 56);
    os_unfair_lock_assert_not_owner(v3 + 10);
    os_unfair_lock_lock(v3 + 10);
    __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_8(v18);
    os_unfair_lock_unlock(v3 + 10);
    v9 = _LTOSLogTTS(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_cold_2();
    }

    v10 = *&v3[2]._os_unfair_lock_opaque;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_9;
    v13[3] = &unk_2789B7A28;
    v14 = *(a1 + 48);
    objc_copyWeak(&v17, (a1 + 72));
    v15 = *(a1 + 40);
    v16 = *(a1 + 64);
    [v10 speak:v11 withContext:v12 completion:v13];

    objc_destroyWeak(&v17);
  }
}

uint64_t __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_8(uint64_t a1)
{
  *(*(a1 + 32) + 48) = MEMORY[0x238398770](*(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

void __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_9(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_2;
  v10[3] = &unk_2789B7A00;
  objc_copyWeak(&v16, a1 + 7);
  v11 = v6;
  v12 = v5;
  v13 = a1[5];
  v14 = a1[4];
  v15 = a1[6];
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);

  objc_destroyWeak(&v16);
}

void __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32) || !*(a1 + 40))
    {
      v5 = _LTOSLogTTS(WeakRetained, v3);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_2_cold_2();
      }

      [v4 _callCompletionAndClearIfNeeded:0 error:*(a1 + 32)];
    }

    else
    {
      v6 = _LTOSLogTTS(WeakRetained, v3);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_2_cold_1();
      }

      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_10;
      v9[3] = &unk_2789B79D8;
      v10 = *(a1 + 56);
      objc_copyWeak(&v11, (a1 + 72));
      [v4 _playback:v7 context:v8 completion:v9 audioStartHandler:*(a1 + 64)];
      objc_destroyWeak(&v11);
    }
  }
}

void __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_2_11;
  block[3] = &unk_2789B6C78;
  objc_copyWeak(&v13, (a1 + 40));
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);

  objc_destroyWeak(&v13);
}

void __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_2_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = _LTOSLogTTS(WeakRetained, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Finished speaking", v6, 2u);
    }

    [v4 _callCompletionAndClearIfNeeded:*(a1 + 32) error:*(a1 + 40)];
  }
}

void __63___LTServerSpeakSession__callCompletionAndClearIfNeeded_error___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 48))
  {
    v2 = MEMORY[0x238398770]();
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    *(v5 + 48) = 0;
  }
}

void __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end