@interface Flush
@end

@implementation Flush

uint64_t __audioHoseManagerBuffered_Flush_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    __audioHoseManagerBuffered_Flush_block_invoke_cold_1(a1, a3);
  }

  v5 = *a3;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v6)
  {
    v6(v5, *MEMORY[0x277CEA0C8], *MEMORY[0x277CBED10]);
  }

  *(a3 + 5) = *(a1 + 72);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 44);
  v10 = *(a1 + 52);
  v29 = *(a1 + 56);
  v11 = *(a1 + 68);
  v30 = *(a1 + 64);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(a3 + 11))
  {
    v13 = 1;
  }

  else
  {
    v13 = a3[12] != 0;
  }

  v27[0] = *MEMORY[0x277CEA038];
  v25 = v27[0];
  *(v27 + 12) = *(MEMORY[0x277CEA038] + 12);
  v24 = *(v27 + 12);
  *(a3 + 11) = 0;
  v14 = MEMORY[0x277CC08F0];
  *(a3 + 4) = *MEMORY[0x277CC08F0];
  v15 = *(v14 + 16);
  a3[11] = 0;
  a3[12] = 0;
  a3[10] = v15;
  *(a3 + 20) = 256;
  a3[7] = 0;
  result = mach_absolute_time();
  a3[6] = result;
  *(a3 + 148) = v25;
  *(a3 + 10) = v24;
  *(a3 + 176) = 0;
  if (v13)
  {
    if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      if (v7)
      {
        v17 = CMBaseObjectGetDerivedStorage();
      }

      else
      {
        v17 = "";
      }

      v18 = *a3;
      *time = v9;
      *&time[8] = v10;
      *&time[12] = v29;
      *&time[20] = v30;
      Seconds = CMTimeGetSeconds(time);
      LogPrintF(&gLogCategory_APAudioHoseManagerBuffered, "OSStatus audioHoseManagerBuffered_flushHose(APAudioHoseManagerBufferedRef, APAudioHoseManagerBufferedHoseDescriptorPtr, uint32_t, CMTime, int32_t)", 33554482, "HMB [%{ptr}] %s(burst) Flushing hose [%{ptr}] Flush all until seq # %u and TS %1.6f (%lld/%d)\n", v7, v17, v18, v8, *&Seconds, v9, v10);
    }

    if (*(DerivedStorage + 186))
    {
      *time = v9;
      *&time[8] = v10;
      *&time[12] = v29;
      *&time[20] = v30;
      APSAudioTransportTimeMakeWithMediaTime();
      if (!v7)
      {
        goto LABEL_25;
      }
    }

    else
    {
      *v26 = v9;
      *&v26[8] = v10;
      *&v26[12] = v29;
      *&v26[20] = v30;
      CMTimeConvertScale(time, v26, v11, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      APSAudioTransportTimeMakeWithRTPTime();
      if (!v7)
      {
LABEL_25:
        v20 = *a3;
        *v26 = v27[0];
        *&v26[12] = *(v27 + 12);
        APSEndpointStreamAudioHoseProtocolGetProtocolID();
        result = CMBaseObjectGetProtocolVTable();
        if (result)
        {
          v22 = *(result + 16);
          result += 16;
          v21 = v22;
          if (v22)
          {
            v23 = *(v21 + 24);
            if (v23)
            {
              *time = *v26;
              *&time[12] = *&v26[12];
              result = v23(v20, v8, time, audioHoseManagerBuffered_hoseFlushCallbackCompletionHandler, v7);
            }

            else
            {
              result = audioHoseManagerBuffered_hoseFlushCallbackCompletionHandler(v20, 0, MEMORY[0x277CEA038], 0xFFFFCE12, v7);
            }
          }
        }

        ++*(a3 + 36);
        return result;
      }
    }

    CFRetain(v7);
    goto LABEL_25;
  }

  if (gLogCategory_APAudioHoseManagerBuffered <= 50)
  {
    if (gLogCategory_APAudioHoseManagerBuffered != -1)
    {
      return __audioHoseManagerBuffered_Flush_block_invoke_cold_2();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __audioHoseManagerBuffered_Flush_block_invoke_cold_2();
    }
  }

  return result;
}

void __audioEngineCarPlay_Flush_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  v11 = 0;
  v4 = *(a1 + 32);
  if (*(v4 + 216))
  {
    if (*(v4 + 236))
    {
      if (*(v4 + 184))
      {
        v5 = *(v4 + 144);
        time = *(a1 + 48);
        CMTimeConvertScale(&v10, &time, v5, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        *v12 = v10.value;
        DWORD2(v13) = 1;
        v6 = *(*(a1 + 32) + 184);
        v7 = *(CMBaseObjectGetVTable() + 16);
        if (*v7 < 2uLL || (v8 = v7[6]) == 0 || v8(v6, v12) || APMessageRingFlush(*(*(a1 + 32) + 200), &v11))
        {
          APSLogErrorAt();
        }

        else
        {
          (*(*(a1 + 32) + 216))(*(*(a1 + 32) + 208), v11, *v12 - *(*(a1 + 32) + 232), 0);
          kdebug_trace();
        }
      }
    }

    else if (gLogCategory_APAudioEngineCarPlay <= 50 && (gLogCategory_APAudioEngineCarPlay != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_2(&gLogCategory_APAudioEngineCarPlay, "OSStatus audioEngineCarPlay_Flush(APAudioEngineRef, Boolean, CMTime)_block_invoke", a3, "[%{ptr}] Skipping flush since no packets have been sent\n");
    }
  }

  CFRelease(*(a1 + 40));
}

uint64_t __audioHoseManagerBuffered_Flush_block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = "";
  }

  v14 = *(a1 + 72);
  v15 = *(a1 + 40);
  v12 = *a2;
  v13 = *(a2 + 5);
  v11 = DerivedStorage;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v6, v7, v8, v9, v4, v11, v12, v13, v14, v15);
}

uint64_t __audioHoseManagerBuffered_Flush_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_5_17();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v1, v2, v3, v4);
}

@end