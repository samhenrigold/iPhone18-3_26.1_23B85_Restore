@interface Suspend
@end

@implementation Suspend

void __audioEngineCarPlay_Suspend_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 120))
  {
    *(v1 + 120) = 0;
    v3 = *(v1 + 88);
    if (v3)
    {
      CFRelease(v3);
      *(*(a1 + 32) + 88) = 0;
    }

    CFRetain(*(a1 + 40));
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 0x40000000;
    v4[2] = __audioEngineCarPlay_Suspend_block_invoke_2;
    v4[3] = &__block_descriptor_tmp_27;
    dispatch_async(*(*(a1 + 32) + 128), v4);
  }
}

void __audioEngineCarPlay_Suspend_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 136) = 0;
  v3 = *(v2 + 184);
  if (v3)
  {
    v4 = *(CMBaseObjectGetVTable() + 16);
    if (*v4 >= 2uLL)
    {
      v5 = v4[5];
      if (v5)
      {
        v5(v3);
      }
    }

    v2 = *(a1 + 32);
    v6 = *(v2 + 184);
    if (v6)
    {
      CFRelease(v6);
      *(*(a1 + 32) + 184) = 0;
      v2 = *(a1 + 32);
    }
  }

  *(v2 + 176) = 0;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  v7 = *(a1 + 32);
  v8 = v7[24];
  if (v8)
  {
    CFRelease(v8);
    *(*(a1 + 32) + 192) = 0;
    v7 = *(a1 + 32);
  }

  v9 = v7[25];
  if (v9)
  {
    CFRelease(v9);
    *(*(a1 + 32) + 200) = 0;
    v7 = *(a1 + 32);
  }

  v10 = v7[26];
  if (v10)
  {
    CFRelease(v10);
    *(*(a1 + 32) + 208) = 0;
    v7 = *(a1 + 32);
  }

  v7[27] = 0;
  *(*(a1 + 32) + 224) = 0;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  *(v12 + 232) = 0;
  *(v12 + 236) = 0;

  CFRelease(v11);
}

void __screenstream_Suspend_block_invoke_2(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 56), *(a1 + 48));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void __screenstreamudp_Suspend_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v25 = *(a1 + 48);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24))
  {
    v15 = APSLogErrorAt();
    OUTLINED_FUNCTION_5_6(v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
    screenstreamudp_dispatchCallback(v2, v26, -16762);
    screenstreamudp_handleFatalError(v2, 4294950534, @"Suspend failed");
  }

  else if (*(DerivedStorage + 26))
  {
    if (*(DerivedStorage + 25))
    {
      if (!*(DerivedStorage + 256))
      {
        *&v11 = OUTLINED_FUNCTION_5_6(*(DerivedStorage + 40), v4, v5, v6, v7, v8, v9, v10, v23, v24, v25).n128_u64[0];
        [v12 stopWithCompletion:{v26, v11}];
        screenstreamudp_teardownStream(v2);
        if (gLogCategory_APEndpointStreamScreenUDP <= 50 && (gLogCategory_APEndpointStreamScreenUDP != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamScreenUDP)))
        {
          OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamScreenUDP, "OSStatus screenstreamudp_suspendInternal(FigEndpointStreamRef, CFDictionaryRef, StreamScreenUDPCompletionContext)", v13, "screen stream %{ptr} suspended\n");
        }
      }
    }
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    CFRelease(v14);
  }

  CFRelease(*(a1 + 32));
}

uint64_t __audioHoseManagerBuffered_Suspend_block_invoke(uint64_t a1)
{
  v2 = audioHoseManagerBuffered_releaseCryptors(*(a1 + 40), MEMORY[0x277CC0898]);
  if (OUTLINED_FUNCTION_1_38(v2) || (v3 = audioHoseManagerBuffered_releaseMagicCookies(*(a1 + 40), MEMORY[0x277CC0898]), result = OUTLINED_FUNCTION_1_38(v3), result))
  {

    return APSLogErrorAt();
  }

  return result;
}

void __screenstream_Suspend_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[24])
  {
    v8 = -16762;
    APSLogErrorAt();
  }

  else
  {
    v4 = DerivedStorage;
    if (DerivedStorage[26] && DerivedStorage[25])
    {
      screenstream_stopStatsTimer(v2);
      v5 = *(v4 + 20);
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v6)
      {
        v6(v5);
      }

      screenstream_teardownTransportStream(v2);
      CMBufferQueueReset(*(v4 + 13));
      screenStream_setResumedAndNotifiyObservers(v2, 0);
      if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamScreen)))
      {
        OUTLINED_FUNCTION_29_3();
        OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamScreen, "OSStatus screenstream_suspendInternal(FigEndpointStreamRef, CFDictionaryRef)", v7, "%@ suspended\n");
      }
    }

    v8 = 0;
  }

  if (*(a1 + 48))
  {
    CFRetain(*(a1 + 32));
    OUTLINED_FUNCTION_1_17();
    OUTLINED_FUNCTION_27_1();
    v13 = __screenstream_Suspend_block_invoke_2;
    v14 = &__block_descriptor_tmp_102;
    v9 = *(a1 + 32);
    v15 = *(a1 + 48);
    v16 = v9;
    v18 = v8;
    v17 = *(a1 + 64);
    dispatch_async(v10, block);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    CFRelease(v11);
  }

  CFRelease(*(a1 + 32));
}

@end