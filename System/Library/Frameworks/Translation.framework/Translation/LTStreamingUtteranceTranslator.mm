@interface LTStreamingUtteranceTranslator
@end

@implementation LTStreamingUtteranceTranslator

void __44___LTStreamingUtteranceTranslator_addInput___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[5] = WeakRetained[5] + 1;
    v4 = WeakRetained[8];
    WeakRetained[8] = v4 + 1;
    v5 = objc_loadWeakRetained(WeakRetained + 15);
    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44___LTStreamingUtteranceTranslator_addInput___block_invoke_2;
    v7[3] = &unk_278B6D6B0;
    objc_copyWeak(v8, (a1 + 40));
    v8[1] = v4;
    [v5 translateInput:v6 withGeneration:v4 completion:v7];
    objc_destroyWeak(v8);
  }
}

void __44___LTStreamingUtteranceTranslator_addInput___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __44___LTStreamingUtteranceTranslator_addInput___block_invoke_3;
    v12[3] = &unk_278B6D688;
    v13 = v5;
    v14 = v8;
    v10 = v6;
    v11 = *(a1 + 40);
    v15 = v10;
    v16 = v11;
    dispatch_async(v9, v12);
  }
}

void __44___LTStreamingUtteranceTranslator_addInput___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = _LTOSLogStabilization(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __44___LTStreamingUtteranceTranslator_addInput___block_invoke_3_cold_1(a1, v3);
  }

  --*(*(a1 + 40) + 40);
  if (*(a1 + 48))
  {
    [*(a1 + 40) _handleError:?];
  }

  else
  {
    v4 = [*(a1 + 32) output];
    if (v4)
    {
      v5 = [*(a1 + 40) delegate];
      if (objc_opt_respondsToSelector())
      {
        v6 = *(a1 + 40);
        v14[0] = v4;
        v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
        [v5 translator:v6 didProduceTranslatedOutputs:v7];
      }

      [*(a1 + 40) _checkSpeakableSegmentsForResult:*(a1 + 32) expectedGeneration:*(a1 + 56)];
      v8 = *(a1 + 40);
      if (!*(v8 + 40))
      {
        v9 = _Block_copy(*(v8 + 32));
        if (v9)
        {
          v10 = *(a1 + 40);
          v11 = *(v10 + 32);
          *(v10 + 32) = 0;

          v9[2](v9);
        }
      }
    }

    else
    {
      v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TranslationErrorDomain" code:13 userInfo:0];
      v13 = _LTOSLogStabilization(v5, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __44___LTStreamingUtteranceTranslator_addInput___block_invoke_3_cold_2();
      }

      [*(a1 + 40) _handleError:v5];
    }
  }
}

void __49___LTStreamingUtteranceTranslator_inputDidFinish__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 16) = 1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __49___LTStreamingUtteranceTranslator_inputDidFinish__block_invoke_2;
    aBlock[3] = &unk_278B6CD30;
    objc_copyWeak(&v9, (a1 + 32));
    v4 = _Block_copy(aBlock);
    v5 = v4;
    if (v3[5])
    {
      v6 = _Block_copy(v4);
      v7 = v3[4];
      v3[4] = v6;
    }

    else
    {
      v4[2](v4);
    }

    objc_destroyWeak(&v9);
  }
}

void __49___LTStreamingUtteranceTranslator_inputDidFinish__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [v2 translatorDidFinish:v3];
    }

    WeakRetained = v3;
  }
}

void __44___LTStreamingUtteranceTranslator_addInput___block_invoke_3_cold_1(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 output];
  v5 = [v4 translatedText];
  v6 = 138739971;
  v7 = v5;
  _os_log_debug_impl(&dword_23AAF5000, v3, OS_LOG_TYPE_DEBUG, "Got a streaming request completion handler: %{sensitive}@", &v6, 0xCu);
}

@end