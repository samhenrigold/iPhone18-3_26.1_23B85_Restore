@interface FlushWithinSampleRange
@end

@implementation FlushWithinSampleRange

uint64_t __audioHoseManagerBuffered_FlushWithinSampleRange_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3 + 5;
  v5 = *(a3 + 5);
  v7 = *(a1 + 100);
  if ((v5 - v7) >= 1)
  {
    *v6 = v7;
  }

  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
    }

    else
    {
      DerivedStorage = "";
    }

    v10 = *a3;
    v11 = *(a3 + 5);
    *time = *(a3 + 4);
    *&time[16] = a3[10];
    Seconds = CMTimeGetSeconds(time);
    LogPrintF(&gLogCategory_APAudioHoseManagerBuffered, "OSStatus audioHoseManagerBuffered_FlushWithinSampleRange(APAudioHoseManagerBufferedRef, uint16_t, uint32_t, CMTime, uint32_t, CMTime, int32_t)_block_invoke", 33554482, "HMB [%{ptr}] %sFlushing hose [%{ptr}]: current read idx = %u new read idx = %u current buffer level = %1.1f\n", v8, DerivedStorage, v10, v5, v11, *&Seconds);
  }

  v13 = *(a1 + 32);
  v41 = *(a1 + 40);
  v14 = *(a1 + 44);
  v15 = *(a1 + 52);
  v51 = *(a1 + 56);
  v40 = *(a1 + 68);
  v52 = *(a1 + 64);
  v16 = *(a1 + 72);
  v17 = *(a1 + 80);
  v49 = *(a1 + 84);
  v18 = *(a1 + 96);
  v50 = *(a1 + 92);
  v19 = CMBaseObjectGetDerivedStorage();
  v46 = **&MEMORY[0x277CC08F0];
  v45[0] = *MEMORY[0x277CEA038];
  v20 = v45[0];
  *(v45 + 12) = *(MEMORY[0x277CEA038] + 12);
  v44[0] = v20;
  *(v44 + 12) = *(v45 + 12);
  *time = *(a3 + 1);
  *&time[16] = a3[4];
  *rhs = v14;
  *&rhs[12] = v51;
  *&rhs[8] = v15;
  *&rhs[20] = v52;
  CMTimeSubtract(&v46, time, rhs);
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    __audioHoseManagerBuffered_FlushWithinSampleRange_block_invoke_cold_1(v13, a3, v6);
  }

  *rhs = *(a3 + 4);
  *&rhs[16] = a3[10];
  *v43 = v46;
  CMTimeSubtract(time, rhs, v43);
  *(a3 + 4) = *time;
  a3[10] = *&time[16];
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    v38 = v16;
    v21 = v17;
    v22 = v19;
    v23 = v18;
    if (v13)
    {
      v24 = CMBaseObjectGetDerivedStorage();
    }

    else
    {
      v24 = "";
    }

    v25 = *a3;
    *time = v46;
    v26 = CMTimeGetSeconds(time);
    *time = *(a3 + 4);
    *&time[16] = a3[10];
    v27 = CMTimeGetSeconds(time);
    LogPrintF(&gLogCategory_APAudioHoseManagerBuffered, "OSStatus audioHoseManagerBuffered_flushHoseWithinSampleRange(APAudioHoseManagerBufferedRef, APAudioHoseManagerBufferedHoseDescriptorPtr, uint32_t, CMTime, uint32_t, CMTime, int32_t)", 33554482, "HMB [%{ptr}] %sFlushing hose [%{ptr}]: %f seconds flushed, new buffer level = %f\n", v13, v24, v25, *&v26, *&v27);
    v18 = v23;
    v19 = v22;
    v17 = v21;
    v16 = v38;
  }

  *(a3 + 20) = 256;
  a3[7] = 0;
  a3[6] = mach_absolute_time();
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    v39 = v19;
    v28 = v18;
    if (v13)
    {
      v29 = CMBaseObjectGetDerivedStorage();
    }

    else
    {
      v29 = "";
    }

    v30 = *a3;
    *time = v14;
    *&time[12] = v51;
    *&time[8] = v15;
    *&time[20] = v52;
    v31 = CMTimeGetSeconds(time);
    *time = v16;
    *&time[12] = v49;
    *&time[8] = v17;
    *&time[20] = v50;
    v32 = CMTimeGetSeconds(time);
    LogPrintF(&gLogCategory_APAudioHoseManagerBuffered, "OSStatus audioHoseManagerBuffered_flushHoseWithinSampleRange(APAudioHoseManagerBufferedRef, APAudioHoseManagerBufferedHoseDescriptorPtr, uint32_t, CMTime, uint32_t, CMTime, int32_t)", 33554482, "HMB [%{ptr}] %s(burst) Flushing hose [%{ptr}]: Flush within range from seq # %u and RemoteMediaTS %1.6f (%lld/%d), until seq # %u and RemoteMediaTS %1.6f (%lld/%d)\n", v13, v29, v30, v41, *&v31, v14, v15, v40, *&v32, v16, v17);
    v18 = v28;
    v19 = v39;
  }

  if (!*(v19 + 186))
  {
    *rhs = v14;
    *&rhs[12] = v51;
    *&rhs[8] = v15;
    *&rhs[20] = v52;
    CMTimeConvertScale(time, rhs, v18, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    APSAudioTransportTimeMakeWithRTPTime();
    *rhs = v16;
    *&rhs[12] = v49;
    *&rhs[8] = v17;
    *&rhs[20] = v50;
    CMTimeConvertScale(time, rhs, v18, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    APSAudioTransportTimeMakeWithRTPTime();
    if (!v13)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  *time = v14;
  *&time[12] = v51;
  *&time[8] = v15;
  *&time[20] = v52;
  APSAudioTransportTimeMakeWithMediaTime();
  *time = v16;
  *&time[12] = v49;
  *&time[8] = v17;
  *&time[20] = v50;
  APSAudioTransportTimeMakeWithMediaTime();
  if (v13)
  {
LABEL_32:
    CFRetain(v13);
  }

LABEL_33:
  v33 = *a3;
  *v43 = v45[0];
  *&v43[12] = *(v45 + 12);
  *v42 = v44[0];
  *&v42[12] = *(v44 + 12);
  APSEndpointStreamAudioHoseProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v35 = *(ProtocolVTable + 16);
    if (v35)
    {
      v36 = *(v35 + 32);
      if (v36)
      {
        *time = *v43;
        *&time[12] = *&v43[12];
        *rhs = *v42;
        *&rhs[12] = *&v42[12];
        v36(v33, v41, time, v40, rhs, audioHoseManagerBuffered_hoseFlushWithinSampleRangeCallbackCompletionHandler, v13);
      }

      else
      {
        audioHoseManagerBuffered_hoseFlushWithinSampleRangeCallbackCompletionHandler(v33, 0, MEMORY[0x277CEA038], 0, MEMORY[0x277CEA038], 0xFFFFCE12, v13);
      }
    }
  }

  ++*(a3 + 36);
  result = APMessageRingBufferedGetByteCountAtIndex(*(v19 + 200), (*(a3 + 5) + 1), a3 + 22);
  if (result)
  {
    return __audioHoseManagerBuffered_FlushWithinSampleRange_block_invoke_cold_2(result);
  }

  return result;
}

uint64_t __audioHoseManagerBuffered_FlushWithinSampleRange_block_invoke_cold_1(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  OUTLINED_FUNCTION_27();
  if (DerivedStorage)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v14 = DerivedStorage;
  }

  else
  {
    v14 = "";
  }

  v15 = *v4;
  v16 = *a3;
  v27 = OUTLINED_FUNCTION_23_6(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v22, v23, v24, v25, v26, v28, v29, v30);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF(v17, v18, v19, v20, v3, v14, v15, v16, *&v27);
}

@end