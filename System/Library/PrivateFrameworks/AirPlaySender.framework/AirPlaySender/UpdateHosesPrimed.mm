@interface UpdateHosesPrimed
@end

@implementation UpdateHosesPrimed

uint64_t __audioHoseManagerBuffered_UpdateHosesPrimed_block_invoke(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = result;
  if (gLogCategory_APAudioHoseManagerBuffered <= 50)
  {
    if (gLogCategory_APAudioHoseManagerBuffered != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __audioHoseManagerBuffered_UpdateHosesPrimed_block_invoke_cold_1(v4, a3);
    }
  }

  if (!*(a3 + 23))
  {
    if (*(*(v4 + 80) + 300))
    {
      audioHoseManagerBuffered_getBufferLevelTimeEstimateForHoseStartup();
      time2 = *(*(v4 + 80) + 288);
      v5 = CMTimeCompare(&time1, &time2) >= 0;
    }

    else
    {
      v5 = 0;
    }

    *(*(*(v4 + 32) + 8) + 24) = v5;
    if (*(*(v4 + 80) + 320))
    {
      v6 = *(a3 + 176);
    }

    else
    {
      v6 = 1;
    }

    *(*(*(v4 + 40) + 8) + 24) = v6;
    if (*(v4 + 104))
    {
      v7 = 0;
    }

    else
    {
      v8 = *(v4 + 80);
      v9 = 344;
      if (!*(v8 + 328))
      {
        v9 = 336;
      }

      v7 = (*(v4 + 96) - a3[6]) >= *(v8 + v9);
    }

    *(*(*(v4 + 48) + 8) + 24) = v7;
    if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      v10 = *(v4 + 88);
      if (v10)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v12 = *(v4 + 88);
      }

      else
      {
        v12 = 0;
        DerivedStorage = "";
      }

      v13 = *(*(*(v4 + 32) + 8) + 24);
      v14 = *(*(*(v4 + 48) + 8) + 24);
      v15 = *(*(*(v4 + 40) + 8) + 24);
      started = audioHoseManagerBuffered_hoseBufferedToStartHighWaterMark(v12, a3);
      v17 = 84;
      if (v15)
      {
        v18 = 84;
      }

      else
      {
        v18 = 70;
      }

      v34 = v18;
      if (v14)
      {
        v19 = 84;
      }

      else
      {
        v19 = 70;
      }

      if (!v13)
      {
        v17 = 70;
      }

      LogPrintF(&gLogCategory_APAudioHoseManagerBuffered, "OSStatus audioHoseManagerBuffered_UpdateHosesPrimed(APAudioHoseManagerBufferedRef, int *)_block_invoke", 33554482, "HMB [%{ptr}] %saudioHoseManagerBuffered_UpdateHosesPrimed preroll req met: %c, starting tick met: %c, audioDataCryptorSet: %c, hoseBufferedToStartHighWaterMark %c ", v10, DerivedStorage, v17, v19, v34, started);
    }

    result = audioHoseManagerBuffered_hoseBufferedToStartHighWaterMark(*(v4 + 88), a3);
    if (result && *(*(*(v4 + 40) + 8) + 24) || *(*(*(v4 + 32) + 8) + 24) && *(*(*(v4 + 40) + 8) + 24) || *(*(*(v4 + 48) + 8) + 24))
    {
      *(a3 + 23) = 1;
      if (gLogCategory_APAudioHoseManagerBuffered <= 50)
      {
        if (gLogCategory_APAudioHoseManagerBuffered != -1 || (result = _LogCategory_Initialize(), result))
        {
          v22 = *(v4 + 72);
          v23 = "";
          v24 = "";
          if (v22)
          {
            v24 = CMBaseObjectGetDerivedStorage();
          }

          v25 = *a3;
          audioHoseManagerBuffered_getBufferLevelTimeEstimateForHoseStartup();
          Seconds = CMTimeGetSeconds(&time1);
          time1 = *(*(v4 + 80) + 48);
          v27 = CMTimeGetSeconds(&time1);
          v28 = *(a3 + 22);
          v29 = *(a3 + 28);
          v30 = UpTicksToMilliseconds() / 1000.0;
          if (*(v4 + 104))
          {
            v23 = "(Stopped)";
            v31 = INFINITY;
          }

          else
          {
            if (*(*(v4 + 80) + 328))
            {
              v23 = "(Started)";
            }

            v31 = UpTicksToMilliseconds() / 1000.0;
          }

          time1 = *(a3 + 8);
          v32 = CMTimeGetSeconds(&time1);
          time1 = *(*(v4 + 80) + 288);
          v33 = CMTimeGetSeconds(&time1);
          result = LogPrintF(&gLogCategory_APAudioHoseManagerBuffered, "OSStatus audioHoseManagerBuffered_UpdateHosesPrimed(APAudioHoseManagerBufferedRef, int *)_block_invoke", 33554482, "HMB [%{ptr}] %s(startup) Stream [%{ptr}] Buffering -> Primed because bufferLevelTime %1.3f >= startWatermarkTime %1.3f || bufferLevelBytes %d >= startWatermarkBytes %d || burstStartTimeUpSecs %1.3f >= maxWait%sSecs %1.3f || bufferLevelTime %1.3f >= expectedAudioDuration %1.3f\n", v22, v24, v25, *&Seconds, *&v27, v28, v29, *&v30, v23, *&v31, *&v32, *&v33);
        }
      }
    }
  }

  if ((*(a3 + 23) - 1) <= 2)
  {
    ++*(*(*(v4 + 56) + 8) + 24);
  }

  v20 = *(v4 + 96) - a3[6];
  v21 = *(*(v4 + 64) + 8);
  if (v20 < *(v21 + 24))
  {
    *(v21 + 24) = v20;
  }

  return result;
}

uint64_t __audioHoseManagerBuffered_UpdateHosesPrimed_block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 72);
  if (v3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = "";
  }

  v5 = 84;
  if (!*(a2 + 8))
  {
    v5 = 70;
  }

  v13 = *(a2 + 23);
  v14 = v5;
  v11 = DerivedStorage;
  v12 = *a2;
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v6, v7, v8, v9, v3, v11, v12, v13, v14);
}

@end