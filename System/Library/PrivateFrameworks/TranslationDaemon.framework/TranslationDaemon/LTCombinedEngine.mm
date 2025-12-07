@interface LTCombinedEngine
@end

@implementation LTCombinedEngine

void __50___LTCombinedEngine_speak_withContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v10 = _LTOSLogTTS(WeakRetained, v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __50___LTCombinedEngine_speak_withContext_completion___block_invoke_cold_1(v6, v10);
      }

      [v9[3] speak:*(a1 + 32) withContext:*(a1 + 40) completion:*(a1 + 48)];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }
}

void __70___LTCombinedEngine_translate_withContext_paragraphResult_completion___block_invoke_6(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (!a4)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70___LTCombinedEngine_translate_withContext_paragraphResult_completion___block_invoke_2;
    v10[3] = &unk_2789B55A0;
    v16 = *(a1 + 64);
    v9 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = v8;
    v15 = *(a1 + 56);
    v13 = v7;
    v14 = *(a1 + 48);
    dispatch_async(v9, v10);
  }
}

void __70___LTCombinedEngine_translate_withContext_paragraphResult_completion___block_invoke_2(void *a1)
{
  v2 = a1[5];
  if (*(*(a1[9] + 8) + 40))
  {
    v3 = a1[4];
    v4 = [a1[5] identifier];
    [v3 removeObject:v4];

    v5 = *(a1[8] + 16);

    v5();
  }

  else
  {
    v6 = a1[7];
    v7 = [a1[5] identifier];
    [v6 setObject:v2 forKey:v7];
  }
}

void __70___LTCombinedEngine_translate_withContext_paragraphResult_completion___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __70___LTCombinedEngine_translate_withContext_paragraphResult_completion___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70___LTCombinedEngine_translate_withContext_paragraphResult_completion___block_invoke_5;
  block[3] = &unk_2789B5618;
  v16 = v9;
  v10 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = v8;
  v11 = *(a1 + 48);
  v19 = v7;
  v20 = v11;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  dispatch_async(v10, block);
}

uint64_t __70___LTCombinedEngine_translate_withContext_paragraphResult_completion___block_invoke_5(uint64_t result)
{
  if (!*(result + 32))
  {
    v2 = result;
    v3 = *(result + 40);
    v4 = [*(result + 48) identifier];
    [v3 removeObject:v4];

    v5 = *(*(v2 + 64) + 16);

    return v5();
  }

  return result;
}

void __70___LTCombinedEngine_translate_withContext_paragraphResult_completion___block_invoke_6(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __70___LTCombinedEngine_translate_withContext_paragraphResult_completion___block_invoke_7(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v2 = *(*(a1 + 48) + 16);
LABEL_5:

    return v2();
  }

  if (*(*(*(a1 + 72) + 8) + 40))
  {
    v2 = *(*(a1 + 48) + 16);
    goto LABEL_5;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(a1 + 40) objectForKeyedSubscript:{*(*(&v10 + 1) + 8 * i), v10}];
        if (v9)
        {
          (*(*(a1 + 56) + 16))();
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return (*(*(a1 + 48) + 16))();
}

void __62___LTCombinedEngine_translateSentence_withContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_group_leave(*(a1 + 32));
}

void __62___LTCombinedEngine_translateSentence_withContext_completion___block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 && !a3)
  {
    *(*(a1[6] + 8) + 24) = 1;
    (*(a1[5] + 16))();
  }

  v4 = a1[4];

  dispatch_group_leave(v4);
}

void *__62___LTCombinedEngine_translateSentence_withContext_completion___block_invoke_3(void *result)
{
  if ((*(*(result[5] + 8) + 24) & 1) == 0)
  {
    v1 = *(*(result[6] + 8) + 40);
    v2 = result[4];
    if (v1)
    {
      return (*(v2 + 16))(result[4], v1, 0);
    }

    else
    {
      return (*(v2 + 16))(result[4], 0, *(*(result[7] + 8) + 40));
    }
  }

  return result;
}

void __50___LTCombinedEngine_speak_withContext_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_232E53000, a2, OS_LOG_TYPE_ERROR, "Failed online TTS, will fallback to offline: %@", &v2, 0xCu);
}

@end