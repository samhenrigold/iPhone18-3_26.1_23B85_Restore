@interface STSpeechTranslatorClientList
@end

@implementation STSpeechTranslatorClientList

void __74___STSpeechTranslatorClientList_addSecondaryClientPeer_withXPCConnection___block_invoke(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [[_STSpeechTranslatorClientContext alloc] initWithClientPeer:a1[4]];
  v3 = [*(a1[5] + 56) setObject:v2 forKeyedSubscript:a1[6]];
  v5 = _LTOSLogSTMultiprocess(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[5];
    v7 = a1[6];
    v8 = a1[7];
    v12 = 138544130;
    v13 = v6;
    v14 = 2114;
    v15 = v2;
    v16 = 2114;
    v17 = v7;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_26B5BC000, v5, OS_LOG_TYPE_DEFAULT, "clientList: %{public}@ adding context: %{public}@ for key: %{public}@ connection: %{public}@", &v12, 0x2Au);
  }

  v9 = a1[5];
  if (v9[4])
  {
    v10 = [(_STSpeechTranslatorClientContext *)v2 clientPeer];
    [v10 translationDidStart];

    v11 = [(_STSpeechTranslatorClientContext *)v2 clientPeer];
    [v11 translationDidPauseWithReason:*(a1[5] + 32)];
LABEL_7:

    goto LABEL_8;
  }

  if ([v9 _running])
  {
    v11 = [(_STSpeechTranslatorClientContext *)v2 clientPeer];
    [v11 translationDidStart];
    goto LABEL_7;
  }

LABEL_8:
}

void __89___STSpeechTranslatorClientList__prefetchPreferredAudioFormatWithSourceLocale_fromClass___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89___STSpeechTranslatorClientList__prefetchPreferredAudioFormatWithSourceLocale_fromClass___block_invoke_2;
    block[3] = &unk_279CF7E50;
    block[4] = WeakRetained;
    v13 = v6;
    v14 = v5;
    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    v15 = v10;
    v16 = v11;
    dispatch_async(v9, block);
  }
}

uint64_t __89___STSpeechTranslatorClientList__prefetchPreferredAudioFormatWithSourceLocale_fromClass___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) _invalidated];
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 40);
    v5 = _LTOSLogSTMultiprocess(result, v3);
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __89___STSpeechTranslatorClientList__prefetchPreferredAudioFormatWithSourceLocale_fromClass___block_invoke_2_cold_1(a1, v6, (a1 + 40));
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      v7 = *(a1 + 56);
      v9 = v6;
      v10 = [v7 localeIdentifier];
      v11 = NSStringFromClass(*(a1 + 64));
      *buf = 138543874;
      v24 = v8;
      v25 = 2114;
      v26 = v10;
      v27 = 2114;
      v28 = v11;
      _os_log_impl(&dword_26B5BC000, v9, OS_LOG_TYPE_DEFAULT, "Fetched preferredFormat: %{public}@ for locale: %{public}@ onto class: %{public}@", buf, 0x20u);
    }

    if (*(a1 + 40))
    {
      v12 = 0;
    }

    else
    {
      v12 = *(a1 + 48);
    }

    objc_storeStrong((*(a1 + 32) + 72), v12);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = *(*(a1 + 32) + 80);
    v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(v13);
          }

          (*(*(*(&v18 + 1) + 8 * i) + 16))(*(*(&v18 + 1) + 8 * i));
        }

        v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v15);
    }

    return [*(*(a1 + 32) + 80) removeAllObjects];
  }

  return result;
}

void __55___STSpeechTranslatorClientList__prepareXPCConnection___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 48));
    v5 = _LTOSLogSTMultiprocess(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = 138543874;
      v8 = v3;
      v9 = 2114;
      v10 = WeakRetained;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_26B5BC000, v5, OS_LOG_TYPE_INFO, "secondary connection: %{public}@ exiting, clientList: %{public}@ key: %{public}@", &v7, 0x20u);
    }

    [WeakRetained _removeSecondaryClientPeerWithConnectionKey:*(a1 + 32)];
  }
}

void __64___STSpeechTranslatorClientList__startTranslatorWhileDispatched__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[2];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64___STSpeechTranslatorClientList__startTranslatorWhileDispatched__block_invoke_2;
    v7[3] = &unk_279CF7D38;
    v7[4] = WeakRetained;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __73___STSpeechTranslatorClientList__stopTranslatorWhileDispatchedWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __73___STSpeechTranslatorClientList__stopTranslatorWhileDispatchedWithError___block_invoke_2;
    v5[3] = &unk_279CF7D38;
    v5[4] = WeakRetained;
    v6 = *(a1 + 32);
    dispatch_async(v4, v5);
  }
}

void __65___STSpeechTranslatorClientList_translator_producedSpeechResult___block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = _LTOSLogSTMultiprocess(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *buf = 138543618;
    v21 = v4;
    v22 = 2114;
    v23 = v5;
    _os_log_impl(&dword_26B5BC000, v3, OS_LOG_TYPE_INFO, "clientList: %{public}@ received callback producedSpeechResult: %{public}@", buf, 0x16u);
  }

  if ([*(*(a1 + 32) + 48) produceTranscripts])
  {
    v6 = [*(*(a1 + 32) + 48) clientPeer];
    [v6 producedTranscription:*(a1 + 40)];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [*(*(a1 + 32) + 56) allValues];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 produceTranscripts])
        {
          v13 = [v12 clientPeer];
          [v13 producedTranscription:*(a1 + 40)];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = [*(a1 + 32) delegate];
  [v14 producedTranscription:*(a1 + 40)];
}

void __70___STSpeechTranslatorClientList_translator_producedTranslationResult___block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = _LTOSLogSTMultiprocess(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *buf = 138543618;
    v21 = v4;
    v22 = 2114;
    v23 = v5;
    _os_log_impl(&dword_26B5BC000, v3, OS_LOG_TYPE_INFO, "clientList: %{public}@ received callback producedTranslationResult: %{public}@", buf, 0x16u);
  }

  if ([*(*(a1 + 32) + 48) produceTranslatedText])
  {
    v6 = [*(*(a1 + 32) + 48) clientPeer];
    [v6 producedTranslation:*(a1 + 40)];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [*(*(a1 + 32) + 56) allValues];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 produceTranslatedText])
        {
          v13 = [v12 clientPeer];
          [v13 producedTranslation:*(a1 + 40)];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = [*(a1 + 32) delegate];
  [v14 producedTranslation:*(a1 + 40)];
}

void __81___STSpeechTranslatorClientList_translator_willStartTranslatedAudioWithMetadata___block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = _LTOSLogSTMultiprocess(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *buf = 138543618;
    v21 = v4;
    v22 = 2114;
    v23 = v5;
    _os_log_impl(&dword_26B5BC000, v3, OS_LOG_TYPE_INFO, "clientList: %{public}@ received callback willStartTranslatedAudioWithMetadata: %{public}@", buf, 0x16u);
  }

  if ([*(*(a1 + 32) + 48) produceAudio])
  {
    v6 = [*(*(a1 + 32) + 48) clientPeer];
    [v6 willStartTranslatedAudioWithMetadata:*(a1 + 40)];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [*(*(a1 + 32) + 56) allValues];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 produceAudio])
        {
          v13 = [v12 clientPeer];
          [v13 willStartTranslatedAudioWithMetadata:*(a1 + 40)];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = [*(a1 + 32) delegate];
  [v14 willStartTranslatedAudioWithMetadata:*(a1 + 40)];
}

void __71___STSpeechTranslatorClientList_translator_didGenerateTranslatedAudio___block_invoke(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = _LTOSLogSTMultiprocess(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __71___STSpeechTranslatorClientList_translator_didGenerateTranslatedAudio___block_invoke_cold_1(a1, v3);
  }

  v4 = [*(*(a1 + 32) + 48) produceAudio];
  v5 = MEMORY[0x277CBECE8];
  if (v4)
  {
    v6 = [*(a1 + 40) st_serializeWithBufferAllocator:*MEMORY[0x277CBECE8]];
    if (!v6)
    {
      return;
    }

    v7 = v6;
    v8 = [*(*(a1 + 32) + 48) clientPeer];
    [v8 didGenerateTranslatedAudio:v7];
  }

  else
  {
    v7 = 0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [*(*(a1 + 32) + 56) allValues];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    v13 = *v5;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        if ([v15 produceAudio])
        {
          if (!v7)
          {
            v7 = [*(a1 + 40) st_serializeWithBufferAllocator:v13];
            if (!v7)
            {
              goto LABEL_19;
            }
          }

          v16 = [v15 clientPeer];
          [v16 didGenerateTranslatedAudio:v7];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v17 = [*(a1 + 32) delegate];
  [v17 didGenerateTranslatedAudio:v7];

  v9 = v7;
LABEL_19:
}

void __68___STSpeechTranslatorClientList_translatorDidFinishTranslatedAudio___block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = _LTOSLogSTMultiprocess(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    *buf = 138543362;
    v20 = v4;
    _os_log_impl(&dword_26B5BC000, v3, OS_LOG_TYPE_INFO, "clientList: %{public}@ received callback translatorDidFinishTranslatedAudio", buf, 0xCu);
  }

  if ([*(*(a1 + 32) + 48) produceAudio])
  {
    v5 = [*(*(a1 + 32) + 48) clientPeer];
    [v5 audioGenerationDidFinish];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [*(*(a1 + 32) + 56) allValues];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 produceAudio])
        {
          v12 = [v11 clientPeer];
          [v12 audioGenerationDidFinish];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = [*(a1 + 32) delegate];
  [v13 audioGenerationDidFinish];
}

void __59___STSpeechTranslatorClientList_startTranslationWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _whileDispatchedTransitionToState:1];
  v3 = *(a1 + 40);
  v7 = v2;
  if (v2)
  {
    v3[2]();
  }

  else
  {
    v4 = _Block_copy(v3);
    v5 = *(a1 + 32);
    v6 = *(v5 + 64);
    *(v5 + 64) = v4;
  }
}

void __48___STSpeechTranslatorClientList_stopTranslation__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) _invalidated] & 1) == 0)
  {
    v2 = [*(a1 + 32) _whileDispatchedTransitionToState:4];
    v3 = *(a1 + 32);
    v5 = v2;
    if (v2)
    {
      [v3 _notifyClientsOfTranslationDidStopWhileDispatchedWithError:v2];
    }

    else
    {
      v4 = v3[3];
      v3[3] = 0;
    }
  }
}

void __55___STSpeechTranslatorClientList_setProduceTranscripts___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) _invalidated] & 1) == 0)
  {
    v2 = [*(a1 + 32) _contextForKeyWhileDispatched:*(a1 + 40)];
    v4 = _LTOSLogSTMultiprocess(v2, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 40);
      v5 = *(a1 + 48);
      v7 = *(a1 + 56);
      v8 = *(a1 + 32);
      v9 = 138544386;
      v10 = v8;
      v11 = 2114;
      v12 = v5;
      v13 = 1024;
      v14 = v7;
      v15 = 2114;
      v16 = v6;
      v17 = 2114;
      v18 = v2;
      _os_log_impl(&dword_26B5BC000, v4, OS_LOG_TYPE_INFO, "clientList: %{public}@ connection: %{public}@ calling setProduceTranscripts: %{BOOL}d key: %{public}@ context: %{public}@", &v9, 0x30u);
    }

    [v2 setProduceTranscripts:*(a1 + 56)];
  }
}

void __58___STSpeechTranslatorClientList_setProduceTranslatedText___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) _invalidated] & 1) == 0)
  {
    v2 = [*(a1 + 32) _contextForKeyWhileDispatched:*(a1 + 40)];
    v4 = _LTOSLogSTMultiprocess(v2, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 40);
      v5 = *(a1 + 48);
      v7 = *(a1 + 56);
      v8 = *(a1 + 32);
      v9 = 138544386;
      v10 = v8;
      v11 = 2114;
      v12 = v5;
      v13 = 1024;
      v14 = v7;
      v15 = 2114;
      v16 = v6;
      v17 = 2114;
      v18 = v2;
      _os_log_impl(&dword_26B5BC000, v4, OS_LOG_TYPE_INFO, "clientList: %{public}@ connection: %{public}@ calling setProduceTranslatedText: %{BOOL}d key: %{public}@ context: %{public}@", &v9, 0x30u);
    }

    [v2 setProduceTranslatedText:*(a1 + 56)];
  }
}

void __49___STSpeechTranslatorClientList_setProduceAudio___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) _invalidated] & 1) == 0)
  {
    v2 = [*(a1 + 32) _contextForKeyWhileDispatched:*(a1 + 40)];
    v4 = _LTOSLogSTMultiprocess(v2, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 40);
      v5 = *(a1 + 48);
      v7 = *(a1 + 56);
      v8 = *(a1 + 32);
      v9 = 138544386;
      v10 = v8;
      v11 = 2114;
      v12 = v5;
      v13 = 1024;
      v14 = v7;
      v15 = 2114;
      v16 = v6;
      v17 = 2114;
      v18 = v2;
      _os_log_impl(&dword_26B5BC000, v4, OS_LOG_TYPE_INFO, "clientList: %{public}@ connection: %{public}@ calling setProduceAudio: %{BOOL}d key: %{public}@ context: %{public}@", &v9, 0x30u);
    }

    [v2 setProduceAudio:*(a1 + 56)];
  }
}

uint64_t __67___STSpeechTranslatorClientList_setPreferredTranslatedAudioFormat___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) _invalidated];
  if ((result & 1) == 0)
  {
    v4 = _LTOSLogSTMultiprocess(result, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(v5 + 40);
      v8 = 138543874;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_26B5BC000, v4, OS_LOG_TYPE_INFO, "clientList: %{public}@ applying format: %{public}@ to translator: %{public}@", &v8, 0x20u);
    }

    return [*(*(a1 + 32) + 40) setPreferredOutputAudioFormat:*(a1 + 40)];
  }

  return result;
}

void __80___STSpeechTranslatorClientList_obtainCachedPreferredSourceAudioFormat_inReply___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _invalidated])
  {
    v2 = *(*(a1 + 40) + 16);
LABEL_6:

    v2();
    return;
  }

  v3 = *(a1 + 32);
  if (*(v3 + 72) || *(a1 + 48) == 1)
  {
    v2 = *(*(a1 + 40) + 16);
    goto LABEL_6;
  }

  v4 = *(v3 + 80);
  v5 = _Block_copy(*(a1 + 40));
  [v4 addObject:v5];
}

void *__54___STSpeechTranslatorClientList_translateAudioBuffer___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _running];
  if (result)
  {
    v3 = [MEMORY[0x277CB83C8] st_deserializeData:*(a1 + 40) withBufferAllocator:*MEMORY[0x277CBECE8]];
    if (v3)
    {
      [*(*(a1 + 32) + 40) addAudio:v3];
    }

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

void __60___STSpeechTranslatorClientList_pauseTranslationWithReason___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) _invalidated] & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = v2[3];
    if (([v2 _running] & 1) != 0 || v3)
    {
      if (!v3)
      {
        v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v5 = *(a1 + 32);
        v6 = *(v5 + 24);
        *(v5 + 24) = v4;
      }

      [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
      v7 = [*(a1 + 32) _whileDispatchedTransitionToState:4];
      v9 = v7;
      if (v7)
      {
        v10 = _LTOSLogSTMultiprocess(v7, v8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v18 = *(a1 + 32);
          v19 = *(a1 + 40);
          v20 = 138543874;
          v21 = v18;
          v22 = 2114;
          v23 = v19;
          v24 = 2112;
          v25 = v9;
          _os_log_error_impl(&dword_26B5BC000, v10, OS_LOG_TYPE_ERROR, "clientList: %{public}@ failed to process pause with reason: %{public}@, error: %@", &v20, 0x20u);
        }

        [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
        if (!v3)
        {
          v11 = *(a1 + 32);
          v12 = *(v11 + 24);
          *(v11 + 24) = 0;
        }
      }

      else
      {
        objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
        v15 = _LTOSLogSTMultiprocess(v13, v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = *(a1 + 32);
          v17 = *(a1 + 40);
          v20 = 138543618;
          v21 = v16;
          v22 = 2114;
          v23 = v17;
          _os_log_impl(&dword_26B5BC000, v15, OS_LOG_TYPE_INFO, "clientList: %{public}@ processing pause with reason: %{public}@", &v20, 0x16u);
        }
      }
    }
  }
}

void __50___STSpeechTranslatorClientList_resumeTranslation__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = (a1 + 32);
  if (([*(a1 + 32) _invalidated] & 1) == 0)
  {
    v3 = *v1;
    if (*(*v1 + 3))
    {
      v4 = [v3 _whileDispatchedTransitionToState:3];
      v6 = _LTOSLogSTMultiprocess(v4, v5);
      v7 = v6;
      if (v4)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __50___STSpeechTranslatorClientList_resumeTranslation__block_invoke_cold_1();
        }
      }

      else
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v9 = *v1;
          v10 = 138543362;
          v11 = v9;
          _os_log_impl(&dword_26B5BC000, v7, OS_LOG_TYPE_INFO, "clientList: %{public}@ processing resume", &v10, 0xCu);
        }

        [*v1 _resetPauseReasons];
      }
    }

    else
    {
      v8 = _LTOSLogSTMultiprocess(v3, v2);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __50___STSpeechTranslatorClientList_resumeTranslation__block_invoke_cold_2(v1, v8);
      }
    }
  }
}

void __89___STSpeechTranslatorClientList__prefetchPreferredAudioFormatWithSourceLocale_fromClass___block_invoke_2_cold_1(uint64_t a1, void *a2, uint64_t *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 56);
  v6 = a2;
  v7 = [v5 localeIdentifier];
  v8 = NSStringFromClass(*(a1 + 64));
  v9 = *a3;
  v10 = 138543874;
  v11 = v7;
  v12 = 2114;
  v13 = v8;
  v14 = 2112;
  v15 = v9;
  _os_log_error_impl(&dword_26B5BC000, v6, OS_LOG_TYPE_ERROR, "Fetching preferredFormat for locale: %{public}@ onto class: %{public}@ failed with error: %@", &v10, 0x20u);
}

void __71___STSpeechTranslatorClientList_translator_didGenerateTranslatedAudio___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = 138543618;
  v5 = v2;
  v6 = 2114;
  v7 = v3;
  _os_log_debug_impl(&dword_26B5BC000, a2, OS_LOG_TYPE_DEBUG, "clientList: %{public}@ received callback didGenerateTranslatedAudio: %{public}@", &v4, 0x16u);
}

void __50___STSpeechTranslatorClientList_resumeTranslation__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __50___STSpeechTranslatorClientList_resumeTranslation__block_invoke_cold_2(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_26B5BC000, a2, OS_LOG_TYPE_ERROR, "clientList: %{public}@ rejecting resume because there is no pause in progress", &v3, 0xCu);
}

@end