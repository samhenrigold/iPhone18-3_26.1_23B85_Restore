uint64_t AudioSBufSourceGetTypeID(uint64_t a1, uint64_t a2)
{
  if (gAudioSBufSourceInitOnce != -1)
  {
    AudioSBufSourceGetTypeID_cold_1();
  }

  return gAudioSBufSourceTypeID;
}

uint64_t _AudioSBufSourceGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAudioSBufSourceTypeID = result;
  return result;
}

uint64_t AudioSBufSourceCreate(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (gAudioSBufSourceInitOnce != -1)
  {
    AudioSBufSourceGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    AudioSBufSourceCreate_cold_5();
    return 4294960568;
  }

  v8 = Instance;
  *(Instance + 128) = 0u;
  *(Instance + 144) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 112) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  v9 = (Instance + 32);
  *(Instance + 24) = CFStringCreateF(0, "[%{ptr}]", Instance);
  SNPrintF(label, 64, "APMediaSenderAudioSBufSourceQueue.%{ptr}", v8);
  *(v8 + 16) = dispatch_queue_create(label, 0);
  SNPrintF(label, 64, "APMediaSenderAudioSBufSourceResumeQueue.%{ptr}", v8);
  v10 = dispatch_queue_create(label, 0);
  v11 = MEMORY[0x277CC08F0];
  *(v8 + 112) = *MEMORY[0x277CC08F0];
  *(v8 + 128) = *(v11 + 16);
  *(v8 + 136) = v10;
  v12 = *(a2 + 32);
  v13 = *(a2 + 16);
  *&v9->mSampleRate = *a2;
  *(v8 + 48) = v13;
  *(v8 + 64) = v12;
  *(v8 + 80) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (a3 <= 0)
  {
    v14 = 5;
  }

  else
  {
    v14 = a3;
  }

  *(v8 + 148) = v14;
  v15 = *MEMORY[0x277CBECE8];
  v16 = CMAudioFormatDescriptionCreate(*MEMORY[0x277CBECE8], v9, 0, 0, 0, 0, 0, (v8 + 72));
  if (v16)
  {
    v22 = v16;
    AudioSBufSourceCreate_cold_2(v16);
    goto LABEL_17;
  }

  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v18)
  {
    v22 = 4294954514;
LABEL_16:
    APSLogErrorAt();
LABEL_17:
    CFRelease(v8);
    return v22;
  }

  v19 = v18(CMBaseObject, *MEMORY[0x277CC1840], v15, v8 + 88);
  if (v19)
  {
    v22 = v19;
    goto LABEL_16;
  }

  v20 = FigEndpointAudioSourceBufferQueueCreate();
  if (v20)
  {
    v22 = v20;
    AudioSBufSourceCreate_cold_3(v20);
    goto LABEL_17;
  }

  v21 = FigEndpointAudioSourceCopyProperty(*(v8 + 96), *MEMORY[0x277CD61C0], v15, v8 + 104);
  if (v21)
  {
    v22 = v21;
    AudioSBufSourceCreate_cold_4(v21);
    goto LABEL_17;
  }

  if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlaySenderKit, "OSStatus AudioSBufSourceCreate(FigEndpointStreamRef, AudioStreamBasicDescription *, int, AudioSBufSourceRef *)", 33554482, "%@ created media sender audio source [%{ptr}] for [%{asbd}]", *(v8 + 24), *(v8 + 96), v9);
  }

  v22 = 0;
  *a4 = v8;
  return v22;
}

uint64_t FigEndpointAudioSourceCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObject = FigEndpointAudioSourceGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(CMBaseObject, a2, a3, a4);
}

uint64_t AudioSBufSourceEnqueueAudioData(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __AudioSBufSourceEnqueueAudioData_block_invoke;
  block[3] = &unk_278C65700;
  block[5] = a2;
  block[6] = a1;
  block[4] = &v6;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __AudioSBufSourceEnqueueAudioData_block_invoke(uint64_t a1)
{
  Length = CFDataGetLength(*(a1 + 40));
  v3 = *(a1 + 48);
  CMTimeMake(&rhs, Length / *(v3 + 48), *(v3 + 32));
  v8 = *(v3 + 112);
  CMTimeAdd(&v10, &v8, &rhs);
  *(v3 + 112) = v10;
  memset(&v10, 0, sizeof(v10));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v10, HostTimeClock);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  rhs = v10;
  v8 = *(v5 + 112);
  result = ausrc_enqueueAudioDataInternal(v5, v6, &rhs.value, &v8);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t ausrc_enqueueAudioDataInternal(uint64_t a1, CFDataRef theData, __int128 *a3, CMTime *a4)
{
  if (*(a1 + 40) != 1819304813)
  {
    ausrc_enqueueAudioDataInternal_cold_1();
    return 4294960591;
  }

  if (theData)
  {
    v5 = atomic_load((a1 + 144));
    if (v5)
    {
      ausrc_enqueueAudioDataInternal_cold_2(v5);
      return v5;
    }

    v23 = *a4;
    v25 = 0;
    sampleBufferOut = 0;
    Length = CFDataGetLength(theData);
    v8 = *(a1 + 48);
    v9 = Length / v8;
    if (!(Length % v8))
    {
      v10 = *MEMORY[0x277CBECE8];
      BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
      if (BlockBufferWithCFDataNoCopy)
      {
        v5 = BlockBufferWithCFDataNoCopy;
        ausrc_enqueueAudioDataInternal_cold_4(BlockBufferWithCFDataNoCopy);
      }

      else
      {
        v12 = *(a1 + 72);
        presentationTimeStamp = v23;
        v5 = CMAudioSampleBufferCreateReadyWithPacketDescriptions(v10, v25, v12, v9, &presentationTimeStamp, 0, &sampleBufferOut);
        if (!v5)
        {
          v13 = sampleBufferOut;
          sampleBufferOut = 0;
LABEL_8:
          if (v25)
          {
            CFRelease(v25);
          }

          if (v5)
          {
            ausrc_enqueueAudioDataInternal_cold_5(v5);
          }

          else
          {
            v14 = CMBufferQueueEnqueue(*(a1 + 104), v13);
            if (v14)
            {
              v5 = v14;
              ausrc_enqueueAudioDataInternal_cold_6(v14);
            }

            else
            {
              if (!*(a1 + 152))
              {
                *(a1 + 152) = 1;
                CFRetain(a1);
                v15 = *(a1 + 136);
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 0x40000000;
                block[2] = __ausrc_enqueueAudioDataInternal_block_invoke;
                block[3] = &__block_descriptor_tmp_7;
                block[4] = a1;
                v21 = *a3;
                v22 = *(a3 + 2);
                dispatch_async(v15, block);
              }

              v5 = 0;
            }
          }

          if (v13)
          {
            CFRelease(v13);
          }

          return v5;
        }

        APSLogErrorAt();
        if (sampleBufferOut)
        {
          CFRelease(sampleBufferOut);
        }
      }

      v13 = 0;
      goto LABEL_8;
    }

    ausrc_enqueueAudioDataInternal_cold_3();
    v13 = 0;
    v5 = 4294960591;
    goto LABEL_8;
  }

  if (!*(a1 + 152))
  {
    return 0;
  }

  *(a1 + 152) = 0;
  v16 = MEMORY[0x277CC08F0];
  *(a1 + 112) = *MEMORY[0x277CC08F0];
  *(a1 + 128) = *(v16 + 16);
  v17 = *(a1 + 136);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 0x40000000;
  v19[2] = __ausrc_enqueueAudioDataInternal_block_invoke_2;
  v19[3] = &__block_descriptor_tmp_8;
  v19[4] = a1;
  dispatch_sync(v17, v19);
  CMBufferQueueReset(*(a1 + 104));
  v5 = atomic_load((a1 + 144));
  if (v5)
  {
    ausrc_enqueueAudioDataInternal_cold_7(v5);
  }

  return v5;
}

uint64_t AudioSBufSourceEnqueueAudioDataWithTimestamps(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, char a5)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v5 = *(a1 + 16);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = __AudioSBufSourceEnqueueAudioDataWithTimestamps_block_invoke;
  v8[3] = &unk_278C65728;
  v8[4] = &v12;
  v8[5] = a1;
  v8[6] = a4;
  v8[7] = a2;
  v9 = *a3;
  v10 = *(a3 + 2);
  v11 = a5;
  dispatch_sync(v5, v8);
  v6 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v6;
}

uint64_t __AudioSBufSourceEnqueueAudioDataWithTimestamps_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  CMTimeMake(&v7, *(a1 + 48), *(v2 + 32));
  *(v2 + 112) = v7;
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v7 = *(a1 + 64);
  v6 = *(v3 + 112);
  result = ausrc_enqueueAudioDataInternal(v3, v4, &v7.value, &v6);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void _AudioSBufSourceFinalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[9];
  if (v3)
  {
    CFRelease(v3);
    a1[9] = 0;
  }

  v4 = a1[10];
  if (v4)
  {
    CFRelease(v4);
    a1[10] = 0;
  }

  v5 = a1[11];
  if (v5)
  {
    CFRelease(v5);
    a1[11] = 0;
  }

  v6 = a1[12];
  if (v6)
  {
    CFRelease(v6);
    a1[12] = 0;
  }

  v7 = a1[13];
  if (v7)
  {
    CFRelease(v7);
    a1[13] = 0;
  }

  v8 = a1[17];
  if (v8)
  {
    dispatch_release(v8);
    a1[17] = 0;
  }

  v9 = a1[2];
  if (v9)
  {
    dispatch_release(v9);
    a1[2] = 0;
  }
}

void __ausrc_enqueueAudioDataInternal_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *&v14.value = *(a1 + 40);
  v14.epoch = *(a1 + 56);
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (gLogCategory_AirPlaySenderKit > 50 || gLogCategory_AirPlaySenderKit == -1 && !_LogCategory_Initialize())
  {
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_22:
    __ausrc_enqueueAudioDataInternal_block_invoke_cold_6();
    v13 = -6709;
    goto LABEL_20;
  }

  __ausrc_enqueueAudioDataInternal_block_invoke_cold_1();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_5:
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CD6280], *(v2 + 96));
  time = v14;
  v6 = FigCFDictionarySetCMTime();
  if (v6)
  {
    v13 = v6;
    __ausrc_enqueueAudioDataInternal_block_invoke_cold_2(v6);
LABEL_27:
    v9 = 0;
    goto LABEL_16;
  }

  v7 = FigEndpointStreamAudioEngineResumeSync();
  if (v7)
  {
    v13 = v7;
    __ausrc_enqueueAudioDataInternal_block_invoke_cold_3(v7);
    goto LABEL_27;
  }

  v8 = FigEndpointStreamAudioEngineSetEndpointStreamSync();
  if (v8)
  {
    v13 = v8;
    __ausrc_enqueueAudioDataInternal_block_invoke_cold_4(v8);
    goto LABEL_27;
  }

  time = **&MEMORY[0x277CC08F0];
  v9 = CMTimeCopyAsDictionary(&time, v4);
  CMBaseObject = FigEndpointStreamAudioEngineGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v11)
  {
    v12 = v11(CMBaseObject, *MEMORY[0x277CE9EE8], v9);
    if (!v12)
    {
      if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
      {
        __ausrc_enqueueAudioDataInternal_block_invoke_cold_5();
      }

      v13 = 0;
      goto LABEL_16;
    }

    v13 = v12;
  }

  else
  {
    v13 = -12782;
  }

  APSLogErrorAt();
LABEL_16:
  CFRelease(v3);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v9)
  {
    CFRelease(v9);
  }

LABEL_20:
  atomic_store(v13, (v2 + 144));
  CFRelease(*(a1 + 32));
}

uint64_t __ausrc_enqueueAudioDataInternal_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    __ausrc_enqueueAudioDataInternal_block_invoke_2_cold_1();
  }

  result = FigEndpointStreamAudioEngineSuspendSync();
  v3 = result;
  if (result)
  {
    result = __ausrc_enqueueAudioDataInternal_block_invoke_2_cold_2(result);
  }

  else if (gLogCategory_AirPlaySenderKit <= 50)
  {
    if (gLogCategory_AirPlaySenderKit != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __ausrc_enqueueAudioDataInternal_block_invoke_2_cold_3();
    }
  }

  atomic_store(v3, (v1 + 144));
  return result;
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 33554482, a4);
}

CFTypeRef APMediaSenderFVDSourceCreate()
{
  v10 = 0;
  v0 = *MEMORY[0x277CBECE8];
  FigVirtualDisplaySourceGetClassID();
  v1 = CMDerivedObjectCreate();
  if (v1)
  {
    APMediaSenderFVDSourceCreate_cold_1(v1);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 112) = 0;
    *(DerivedStorage + 16) = CFStringCreateF(0, "[%{ptr}]", v10);
    v3 = dispatch_queue_create("APMediaSenderFVDSourceQueue", 0);
    *(DerivedStorage + 8) = v3;
    v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 1uLL, v3);
    *(DerivedStorage + 80) = v4;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = __APMediaSenderFVDSourceCreate_block_invoke;
    handler[3] = &__block_descriptor_tmp_0;
    handler[4] = DerivedStorage;
    dispatch_source_set_event_handler(v4, handler);
    dispatch_source_set_timer(*(DerivedStorage + 80), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    dispatch_resume(*(DerivedStorage + 80));
    *(DerivedStorage + 116) = 1;
    v5 = VTPixelTransferSessionCreate(v0, (DerivedStorage + 24));
    if (!v5)
    {
      if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
      {
        APMediaSenderFVDSourceCreate_cold_3(DerivedStorage + 16, v6, v7);
      }

      return v10;
    }

    APMediaSenderFVDSourceCreate_cold_2(v5);
  }

  if (v10)
  {
    CFRelease(v10);
    return 0;
  }

  return v10;
}

uint64_t __APMediaSenderFVDSourceCreate_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 88))
  {
    return __APMediaSenderFVDSourceCreate_block_invoke_cold_2();
  }

  if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    __APMediaSenderFVDSourceCreate_block_invoke_cold_1();
  }

  v2 = *(v1 + 96);
  v3 = *(v1 + 104);

  return fvdsrc_submitPixelBufferInternal(v1, v2, v3);
}

uint64_t APMediaSenderFDVSourceSetDisplayInfoBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && a3)
  {
    v6 = *(DerivedStorage + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __APMediaSenderFDVSourceSetDisplayInfoBlock_block_invoke;
    block[3] = &unk_278C657B0;
    block[4] = a3;
    block[5] = DerivedStorage;
    block[6] = a2;
    dispatch_sync(v6, block);
    return 0;
  }

  else
  {
    APMediaSenderFDVSourceSetDisplayInfoBlock_cold_1();
    return 4294955226;
  }
}

void __APMediaSenderFDVSourceSetDisplayInfoBlock_block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = _Block_copy(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = a1[5];
  v5 = *(v4 + 32);
  if (v5)
  {
    _Block_release(v5);
    v4 = a1[5];
  }

  *(v4 + 32) = v3;
  if (a1[6])
  {
    v6 = a1[6];
  }

  else
  {
    v6 = MEMORY[0x277D85CD0];
  }

  dispatch_retain(v6);
  v7 = a1[5];
  v8 = *(v7 + 40);
  if (v8)
  {
    dispatch_release(v8);
    v7 = a1[5];
  }

  *(v7 + 40) = v6;
}

uint64_t APMediaSenderFDVSourceSetWritebackMode(uint64_t a1, char a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APMediaSenderFDVSourceSetWritebackMode_block_invoke;
  block[3] = &unk_278C657D8;
  v8 = a2;
  block[4] = &v9;
  block[5] = DerivedStorage;
  dispatch_sync(v4, block);
  v5 = 0;
  if (*(v10 + 6))
  {
    APSLogErrorAt();
    v5 = *(v10 + 6);
  }

  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t __APMediaSenderFDVSourceSetWritebackMode_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (*(v2 + 112))
  {
    *(*(*(result + 32) + 8) + 24) = -12070;
    return result;
  }

  v3 = *(result + 48);
  *(v2 + 116) = v3;
  if (gLogCategory_AirPlaySenderKit <= 50)
  {
    if (gLogCategory_AirPlaySenderKit == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v2 = *(v1 + 40);
      v3 = *(v2 + 116);
    }

    v4 = *(v2 + 16);
    if (v3)
    {
      v5 = "";
    }

    else
    {
      v5 = "not ";
    }

    return LogPrintF(&gLogCategory_AirPlaySenderKit, "OSStatus APMediaSenderFDVSourceSetWritebackMode(FigVirtualDisplaySourceRef, Boolean)_block_invoke", 33554482, "%@ FVD source: will %suse writeback mode", v4, v5);
  }

  return result;
}

uint64_t APMediaSenderFDVSourceSubmitPixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = __APMediaSenderFDVSourceSubmitPixelBuffer_block_invoke;
  v9[3] = &unk_278C65800;
  v9[4] = &v10;
  v9[5] = DerivedStorage;
  v9[6] = a2;
  v9[7] = a3;
  dispatch_sync(v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t __APMediaSenderFDVSourceSubmitPixelBuffer_block_invoke(uint64_t a1)
{
  result = fvdsrc_submitPixelBufferInternal(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t fvdsrc_submitPixelBufferInternal(uint64_t *a1, CVPixelBufferRef pixelBuffer, uint64_t a3)
{
  destinationBuffer = 0;
  v6 = *(a1 + 28);
  if (v6 != 2)
  {
    if (!v6)
    {
      APSLogErrorAt();
      goto LABEL_20;
    }

    v25 = 4294955224;
    goto LABEL_22;
  }

  if (!pixelBuffer)
  {
    v16 = *MEMORY[0x277CBF3A0];
    v17 = *(MEMORY[0x277CBF3A0] + 8);
    v18 = *(MEMORY[0x277CBF3A0] + 16);
    v19 = *(MEMORY[0x277CBF3A0] + 24);
    if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      fvdsrc_submitPixelBufferInternal_cold_2();
    }

    v20 = 0;
    v21 = v19;
    Width = v18;
    v23 = v17;
    v24 = v16;
LABEL_18:
    v31 = *a1;
    v32 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v32)
    {
      v33 = v32(v31, v20, a3, 0, 0, v24, v23, Width, v21, v16, v17, v18, v19);
      if (!v33)
      {
LABEL_20:
        fvdsrc_stopRetrying(a1);
        v34 = 0;
        goto LABEL_34;
      }

      v25 = v33;
    }

    else
    {
      v25 = 4294954514;
    }

    goto LABEL_22;
  }

  if (!*(a1 + 116))
  {
    destinationBuffer = CFRetain(pixelBuffer);
LABEL_15:
    Width = CVPixelBufferGetWidth(destinationBuffer);
    Height = CVPixelBufferGetHeight(destinationBuffer);
    v21 = Height;
    v27 = *(a1 + 6);
    v28 = *(a1 + 7);
    v29 = v27 / Width;
    if (v27 / Width >= v28 / Height)
    {
      v29 = v28 / Height;
    }

    v30 = (1.0 - *(a1 + 8)) * v29;
    v18 = v30 * Width;
    v19 = v30 * v21;
    v16 = (v27 - v30 * Width) * 0.5;
    v17 = (v28 - v30 * v21) * 0.5;
    v23 = 0.0;
    v20 = destinationBuffer;
    v24 = 0.0;
    goto LABEL_18;
  }

  v7 = *a1;
  v8 = CVPixelBufferGetWidth(pixelBuffer);
  v9 = CVPixelBufferGetHeight(pixelBuffer);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v10)
  {
    v11 = v10(v7, 0, 1, &destinationBuffer, v8, v9);
    if (!v11)
    {
      v12 = VTPixelTransferSessionTransferImage(a1[3], pixelBuffer, destinationBuffer);
      if (v12)
      {
        v25 = v12;
        fvdsrc_submitPixelBufferInternal_cold_1(v12);
        goto LABEL_23;
      }

      v13 = destinationBuffer;
      v14 = CVBufferCopyAttachment(pixelBuffer, @"FVDFrameUserData", 0);
      if (v14)
      {
        v15 = v14;
        CVBufferSetAttachment(v13, @"FVDFrameUserData", v14, kCVAttachmentMode_ShouldPropagate);
        CFRelease(v15);
      }

      goto LABEL_15;
    }

    v25 = v11;
  }

  else
  {
    v25 = 4294954514;
  }

LABEL_22:
  APSLogErrorAt();
LABEL_23:
  v35 = a1[10];
  v36 = dispatch_time(0, 50000000);
  dispatch_source_set_timer(v35, v36, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
  v37 = a1[12];
  a1[12] = pixelBuffer;
  if (pixelBuffer)
  {
    CFRetain(pixelBuffer);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  a1[13] = a3;
  *(a1 + 88) = 1;
  if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlaySenderKit, "OSStatus fvdsrc_submitPixelBufferInternal(FVDSourceStorage *, CVPixelBufferRef, int64_t)", 33554482, "%@ FVD source: got error %d, will retry", a1[2], v25);
  }

  if (v25 == -12073)
  {
    v34 = 0;
  }

  else
  {
    v34 = v25;
  }

LABEL_34:
  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }

  return v34;
}

void fvdsrc_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  if (*(DerivedStorage + 112))
  {
    if (gLogCategory_AirPlaySenderKit > 100 || gLogCategory_AirPlaySenderKit == -1 && !_LogCategory_Initialize())
    {
LABEL_29:
      __break(1u);
LABEL_30:
      fvdsrc_finalize_cold_2();
      __break(1u);
      return;
    }

    fvdsrc_finalize_cold_1();
    __break(1u);
LABEL_26:
    if (v3 <= 100 && (v3 != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v3 = gLogCategory_AirPlaySenderKit;
  if (*DerivedStorage)
  {
    goto LABEL_26;
  }

  if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    fvdsrc_finalize_cold_3();
  }

  v4 = *(v2 + 80);
  if (v4)
  {
    dispatch_source_cancel(v4);
    dispatch_release(*(v2 + 80));
    *(v2 + 80) = 0;
  }

  v5 = *(v2 + 32);
  if (v5)
  {
    _Block_release(v5);
    *(v2 + 32) = 0;
  }

  v6 = *(v2 + 96);
  if (v6)
  {
    CFRelease(v6);
    *(v2 + 96) = 0;
  }

  v7 = *(v2 + 24);
  if (v7)
  {
    CFRelease(v7);
    *(v2 + 24) = 0;
  }

  v8 = *(v2 + 16);
  if (v8)
  {
    CFRelease(v8);
    *(v2 + 16) = 0;
  }

  v9 = *(v2 + 40);
  if (v9)
  {
    dispatch_release(v9);
    *(v2 + 40) = 0;
  }

  v10 = *(v2 + 8);
  if (v10)
  {
    dispatch_release(v10);
    *(v2 + 8) = 0;
  }
}

uint64_t fvdsrc_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (!CFEqual(*MEMORY[0x277CD6758], a2))
  {
    return 4294954512;
  }

  v5 = CFRetain(@"APMediaSenderFVDSource");
  result = 0;
  *a4 = v5;
  return result;
}

uint64_t fvdsrc_plugProcessor(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9[0] = &v8;
  v9[1] = 0x2000000000;
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __fvdsrc_plugProcessor_block_invoke;
    block[3] = &unk_278C65828;
    block[5] = DerivedStorage;
    block[6] = a2;
    block[4] = &v8;
    dispatch_sync(v4, block);
    if (*(v9[0] + 24))
    {
      APSLogErrorAt();
      v5 = *(v9[0] + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    fvdsrc_plugProcessor_cold_1(v9);
    v5 = 4294955226;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t fvdsrc_unplugProcessor(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9[0] = &v8;
  v9[1] = 0x2000000000;
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __fvdsrc_unplugProcessor_block_invoke;
    block[3] = &unk_278C65850;
    block[5] = DerivedStorage;
    block[6] = a2;
    block[4] = &v8;
    dispatch_sync(v4, block);
    if (*(v9[0] + 24))
    {
      APSLogErrorAt();
      v5 = *(v9[0] + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    fvdsrc_unplugProcessor_cold_1(v9);
    v5 = 4294955226;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t fvdsrc_start(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __fvdsrc_start_block_invoke;
  block[3] = &unk_278C65878;
  block[4] = &v8;
  block[5] = DerivedStorage;
  block[6] = a2;
  dispatch_sync(v4, block);
  v5 = 0;
  if (*(v9 + 6))
  {
    APSLogErrorAt();
    v5 = *(v9 + 6);
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t fvdsrc_stop(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __fvdsrc_stop_block_invoke;
  block[3] = &__block_descriptor_tmp_21;
  block[4] = DerivedStorage;
  dispatch_sync(v2, block);
  return 0;
}

uint64_t fvdsrc_suspend(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __fvdsrc_suspend_block_invoke;
  v5[3] = &unk_278C658E8;
  v5[4] = &v6;
  v5[5] = DerivedStorage;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t fvdsrc_resume(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __fvdsrc_resume_block_invoke;
  v5[3] = &unk_278C65910;
  v5[4] = &v6;
  v5[5] = DerivedStorage;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

CFTypeRef *__fvdsrc_plugProcessor_block_invoke(CFTypeRef *result)
{
  v1 = result;
  v2 = result[5];
  if (v2[28] || *v2)
  {
    *(*(result[4] + 1) + 24) = -12073;
  }

  else
  {
    result = CFRetain(result[6]);
    *v1[5] = v1[6];
  }

  return result;
}

void __fvdsrc_unplugProcessor_block_invoke(void *a1)
{
  v2 = a1[5];
  if (!*(v2 + 112) && (v3 = *v2, *v2 == a1[6]))
  {
    if (v3)
    {
      CFRelease(v3);
      *a1[5] = 0;
    }
  }

  else
  {
    *(*(a1[4] + 8) + 24) = -12070;
  }
}

void __fvdsrc_start_block_invoke(void *a1)
{
  v2 = a1[5];
  if (*(v2 + 28) || (v3 = *v2) == 0)
  {
    *(*(a1[4] + 8) + 24) = -12070;
    return;
  }

  v24 = 0;
  v25 = 0;
  v23 = 0;
  v22 = xmmword_23EB42B00;
  v21 = 60;
  v20 = 0;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v4)
  {
    v14 = -12782;
LABEL_18:
    APSLogErrorAt();
    goto LABEL_19;
  }

  v5 = v4(v3, &v25, &v24);
  if (v5)
  {
    v14 = v5;
    goto LABEL_18;
  }

  v6 = FigDisplayModes_LookupTimingModeIDByIndex();
  if (v6)
  {
    v14 = v6;
    __fvdsrc_start_block_invoke_cold_1(v6);
    goto LABEL_19;
  }

  v7 = *v2;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v8)
  {
    v14 = -12782;
    goto LABEL_18;
  }

  v9 = v8(v7, v23, v23);
  if (v9)
  {
    v14 = v9;
    goto LABEL_18;
  }

  DimensionsFromTimingMode = FigDisplayModes_ExtractDimensionsFromTimingMode();
  if (DimensionsFromTimingMode)
  {
    v14 = DimensionsFromTimingMode;
    __fvdsrc_start_block_invoke_cold_2(DimensionsFromTimingMode);
  }

  else
  {
    FigDisplayModes_ExtractOverscanInfoFromTimingMode();
    FigDisplayModes_ExtractVSyncRateFromTimingMode();
    *(v2 + 3) = v22;
    v11 = v21;
    *(v2 + 18) = v21;
    v2[8] = 0;
    v12 = v2[4];
    if (v12)
    {
      v13 = v2[5];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __fvdsrc_init_block_invoke;
      block[3] = &unk_278C658A0;
      block[4] = v12;
      v18 = v22;
      v19 = v11;
      dispatch_async(v13, block);
    }

    if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlaySenderKit, "OSStatus fvdsrc_init(FVDSourceStorage *)", 33554482, "%@ FVD source: using display size: %d x %d, refresh rate: %d Hz, overscanned: %d", v2[2], *&v22, *(&v22 + 1), v21, v20);
    }

    v14 = 0;
  }

LABEL_19:
  if (v25)
  {
    CFRelease(v25);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  *(*(a1[4] + 8) + 24) = v14;
  if (!*(*(a1[4] + 8) + 24))
  {
    LOBYTE(block[0]) = 0;
    FigCFDictionaryGetBooleanIfPresent();
    v15 = LOBYTE(block[0]) ? 1 : 2;
    v16 = a1[5];
    *(v16 + 112) = v15;
    if (gLogCategory_AirPlaySenderKit <= 50)
    {
      if (gLogCategory_AirPlaySenderKit != -1)
      {
LABEL_29:
        LogPrintF(&gLogCategory_AirPlaySenderKit, "OSStatus fvdsrc_start(FigVirtualDisplaySourceRef, CFDictionaryRef)_block_invoke", 33554482, "%@ FVD source started", *(v16 + 16));
        return;
      }

      if (_LogCategory_Initialize())
      {
        v16 = a1[5];
        goto LABEL_29;
      }
    }
  }
}

void __fvdsrc_stop_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 112))
  {
    fvdsrc_stopRetrying(v2);
    v3 = *(a1 + 32);
    *(v3 + 112) = 0;
    if (gLogCategory_AirPlaySenderKit <= 50)
    {
      if (gLogCategory_AirPlaySenderKit != -1)
      {
LABEL_4:
        LogPrintF(&gLogCategory_AirPlaySenderKit, "OSStatus fvdsrc_stop(FigVirtualDisplaySourceRef)_block_invoke", 33554482, "%@ FVD source stopped", *(v3 + 16));
        return;
      }

      if (_LogCategory_Initialize())
      {
        v3 = *(a1 + 32);
        goto LABEL_4;
      }
    }
  }
}

void fvdsrc_stopRetrying(uint64_t a1)
{
  if (*(a1 + 88))
  {
    dispatch_source_set_timer(*(a1 + 80), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    v2 = *(a1 + 96);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 96) = 0;
    }

    *(a1 + 104) = 0;
    *(a1 + 88) = 0;
  }
}

uint64_t __fvdsrc_suspend_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (!*(v2 + 112))
  {
    if (gLogCategory_AirPlaySenderKit <= 90)
    {
      if (gLogCategory_AirPlaySenderKit == -1)
      {
        result = _LogCategory_Initialize();
        if (!result)
        {
          goto LABEL_12;
        }

        v2 = *(v1 + 40);
        v3 = *(v2 + 112);
      }

      else
      {
        v3 = 0;
      }

      result = LogPrintF(&gLogCategory_AirPlaySenderKit, "OSStatus fvdsrc_suspend(FigVirtualDisplaySourceRef)_block_invoke", 33554522, "%@ FVD source: can't suspend from state '%d'", *(v2 + 16), v3);
    }

LABEL_12:
    *(*(*(v1 + 32) + 8) + 24) = -12070;
    return result;
  }

  *(v2 + 112) = 1;
  if (gLogCategory_AirPlaySenderKit <= 50)
  {
    if (gLogCategory_AirPlaySenderKit != -1)
    {
      return LogPrintF(&gLogCategory_AirPlaySenderKit, "OSStatus fvdsrc_suspend(FigVirtualDisplaySourceRef)_block_invoke", 33554482, "%@ FVD source suspended", *(v2 + 16));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(v1 + 40);
      return LogPrintF(&gLogCategory_AirPlaySenderKit, "OSStatus fvdsrc_suspend(FigVirtualDisplaySourceRef)_block_invoke", 33554482, "%@ FVD source suspended", *(v2 + 16));
    }
  }

  return result;
}

uint64_t __fvdsrc_resume_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  v3 = *(v2 + 112);
  if (v3 != 1)
  {
    if (gLogCategory_AirPlaySenderKit <= 90)
    {
      if (gLogCategory_AirPlaySenderKit == -1)
      {
        result = _LogCategory_Initialize();
        if (!result)
        {
          goto LABEL_11;
        }

        v2 = *(v1 + 40);
        v3 = *(v2 + 112);
      }

      result = LogPrintF(&gLogCategory_AirPlaySenderKit, "OSStatus fvdsrc_resume(FigVirtualDisplaySourceRef)_block_invoke", 33554522, "%@ FVD source: can't resume from state '%d'", *(v2 + 16), v3);
    }

LABEL_11:
    *(*(*(v1 + 32) + 8) + 24) = -12070;
    return result;
  }

  *(v2 + 112) = 2;
  if (gLogCategory_AirPlaySenderKit <= 50)
  {
    if (gLogCategory_AirPlaySenderKit != -1)
    {
      return LogPrintF(&gLogCategory_AirPlaySenderKit, "OSStatus fvdsrc_resume(FigVirtualDisplaySourceRef)_block_invoke", 33554482, "%@ FVD source resumed", *(v2 + 16));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(v1 + 40);
      return LogPrintF(&gLogCategory_AirPlaySenderKit, "OSStatus fvdsrc_resume(FigVirtualDisplaySourceRef)_block_invoke", 33554482, "%@ FVD source resumed", *(v2 + 16));
    }
  }

  return result;
}

void sub_23EB37998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23EB3A32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak(&a18);
  objc_destroyWeak(&a23);
  objc_destroyWeak(&a28);
  objc_destroyWeak(&a33);
  objc_destroyWeak((v33 - 120));
  objc_destroyWeak((v33 - 112));
  _Unwind_Resume(a1);
}

void remoteSessionHandleDeadConnection(void *a1)
{
  v1 = a1;
  if (gLogCategory_AirPlaySenderKit <= 100 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    remoteSessionHandleDeadConnection_cold_1(v1);
  }

  v2 = v1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __remoteSessionHandleDeadConnection_block_invoke;
  block[3] = &unk_278C65968;
  v5 = v1;
  v3 = v1;
  dispatch_sync(v2, block);
}

uint64_t remoteSessionHandleServerMessage(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v7 = OpCode;
    remoteSessionHandleServerMessage_cold_1(OpCode);
  }

  else
  {
    if (gLogCategory_AirPlaySenderKit <= 90 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlaySenderKit, "OSStatus remoteSessionHandleServerMessage(CFTypeRef, __strong xpc_object_t)", 33554522, "[%{ptr}] session: received unknown opCode: '%C'", v4, 0);
    }

    v7 = 4294960591;
  }

  return v7;
}

void remoteSessionHandleServerDeath()
{
  if (gLogCategory_AirPlaySenderKit <= 100 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    remoteSessionHandleServerDeath_cold_1();
  }

  os_unfair_lock_lock(&sRemoteClientLock);
  if (sRemoteClient)
  {
    CFRelease(sRemoteClient);
    sRemoteClient = 0;
  }

  os_unfair_lock_unlock(&sRemoteClientLock);
}

void __remoteSessionHandleDeadConnection_block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 72) = 0;
  *(*(a1 + 32) + 64) = 0;
  v1 = *(a1 + 32);
  if (*(v1 + 56))
  {
    WeakRetained = objc_loadWeakRetained((v1 + 8));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = v5[2];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __remoteSessionHandleDeadConnection_block_invoke_2;
      block[3] = &unk_278C65968;
      v8 = v5;
      dispatch_async(v6, block);
    }
  }
}

void __remoteSessionHandleDeadConnection_block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained sessionDidFail:*(a1 + 32) withError:4294896154];
}

uint64_t APSKServiceSerializeFrame(__CVBuffer *a1, uint64_t a2, void *a3)
{
  v19 = 0u;
  v20 = 0u;
  empty = xpc_dictionary_create_empty();
  v7 = empty;
  bytes = a2;
  if (!a1)
  {
    xpc_dictionary_set_data(empty, "data", &bytes, 0x28uLL);
    goto LABEL_9;
  }

  IOSurface = CVPixelBufferGetIOSurface(a1);
  if (IOSurface)
  {
    XPCObject = IOSurfaceCreateXPCObject(IOSurface);
    if (XPCObject)
    {
      xpc_dictionary_set_value(v7, "surface", XPCObject);
      CVPixelBufferGetExtendedPixels(a1, &v19, &v19 + 1, &v20, &v20 + 1);
      v14 = CVBufferCopyAttachments(a1, kCVAttachmentMode_ShouldPropagate);
      xpc_dictionary_set_data(v7, "data", &bytes, 0x28uLL);
      if (v14)
      {
        v15 = FigXPCMessageSetCFDictionary();
        v16 = v15;
        if (v15)
        {
          APSKServiceSerializeFrame_cold_1(v15);
        }

        else
        {
          *a3 = v7;
        }

        CFRelease(v14);
        goto LABEL_10;
      }

LABEL_9:
      v16 = 0;
      *a3 = v7;
      goto LABEL_10;
    }

    if (gLogCategory_AirPlaySenderKit <= 90)
    {
      if (gLogCategory_AirPlaySenderKit != -1 || (XPCObject = _LogCategory_Initialize(), XPCObject))
      {
        APSKServiceSerializeFrame_cold_2(XPCObject, v12, v13);
      }
    }

    v16 = 4294960534;
  }

  else
  {
    if (gLogCategory_AirPlaySenderKit <= 90)
    {
      if (gLogCategory_AirPlaySenderKit != -1 || (IOSurface = _LogCategory_Initialize(), IOSurface))
      {
        APSKServiceSerializeFrame_cold_3(IOSurface, v9, v10);
      }
    }

    v16 = 4294960591;
  }

LABEL_10:
  FigXPCRelease();
  FigXPCRelease();
  return v16;
}

uint64_t APSKServiceDeserializeFrame(void *a1, CVPixelBufferRef *a2, void *a3)
{
  length = 0;
  pixelBufferOut = 0;
  data = xpc_dictionary_get_data(a1, "data", &length);
  if (!data)
  {
    if (gLogCategory_AirPlaySenderKit <= 90 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      APSKServiceDeserializeFrame_cold_5();
    }

    goto LABEL_38;
  }

  if (length != 40)
  {
    if (gLogCategory_AirPlaySenderKit <= 90 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      APSKServiceDeserializeFrame_cold_1();
    }

    goto LABEL_38;
  }

  v7 = data;
  value = xpc_dictionary_get_value(a1, "surface");
  if (!value)
  {
    v15 = 0;
    Mutable = 0;
    *a3 = *v7;
    *a2 = 0;
    pixelBufferOut = 0;
    goto LABEL_23;
  }

  v9 = IOSurfaceLookupFromXPCObject(value);
  if (!v9)
  {
    if (gLogCategory_AirPlaySenderKit <= 90 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      APSKServiceDeserializeFrame_cold_4();
    }

LABEL_38:
    Mutable = 0;
    v15 = 4294960591;
    goto LABEL_23;
  }

  v10 = v9;
  v11 = FigXPCMessageCopyCFDictionary();
  if (v11)
  {
    v15 = v11;
    APSKServiceDeserializeFrame_cold_2(v11);
    Mutable = 0;
  }

  else
  {
    if (v7[1] || v7[2] || v7[3] || v7[4])
    {
      v12 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v7[1])
      {
        FigCFDictionarySetInt64();
      }

      if (v7[2])
      {
        FigCFDictionarySetInt64();
      }

      if (v7[3])
      {
        FigCFDictionarySetInt64();
      }

      if (v7[4])
      {
        FigCFDictionarySetInt64();
      }
    }

    else
    {
      Mutable = 0;
      v12 = *MEMORY[0x277CBECE8];
    }

    v14 = CVPixelBufferCreateWithIOSurface(v12, v10, Mutable, &pixelBufferOut);
    if (v14)
    {
      v15 = v14;
      APSKServiceDeserializeFrame_cold_3(v14);
    }

    else
    {
      v15 = 0;
      *a3 = *v7;
      *a2 = pixelBufferOut;
      pixelBufferOut = 0;
    }
  }

  CFRelease(v10);
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

LABEL_23:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v15;
}

uint64_t APMediaSenderGetTypeID(uint64_t a1, uint64_t a2)
{
  if (APMediaSenderGetTypeID_once != -1)
  {
    APMediaSenderGetTypeID_cold_1();
  }

  return APMediaSenderGetTypeID_typeID;
}

uint64_t __APMediaSenderGetTypeID_block_invoke()
{
  APMediaSenderGetTypeID_frameSenderClass = 0;
  *algn_27E380618 = "APMediaSender";
  qword_27E380620 = 0;
  unk_27E380628 = 0;
  qword_27E380630 = sender_finalize;
  unk_27E380638 = 0;
  qword_27E380640 = 0;
  unk_27E380648 = 0;
  qword_27E380650 = sender_copyDebugDescription;
  result = _CFRuntimeRegisterClass();
  APMediaSenderGetTypeID_typeID = result;
  return result;
}

void sender_finalize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    sender_finalize_cold_1(a1, a2, a3);
  }

  if (*(a1 + 182))
  {
    if (gLogCategory_AirPlaySenderKit <= 100 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      sender_finalize_cold_2(a1);
    }

    __break(1u);
  }

  else
  {
    v4 = *(a1 + 120);
    if (v4)
    {
      _Block_release(v4);
      *(a1 + 120) = 0;
    }

    v5 = *(a1 + 128);
    if (v5)
    {
      _Block_release(v5);
      *(a1 + 128) = 0;
    }

    if (*(a1 + 136))
    {
      FigSimpleMutexDestroy();
      *(a1 + 136) = 0;
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 40) = 0;
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 32) = 0;
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 48) = 0;
    }

    v9 = *(a1 + 56);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 56) = 0;
    }

    v10 = *(a1 + 104);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 104) = 0;
    }

    v11 = *(a1 + 112);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 112) = 0;
    }

    v12 = *(a1 + 152);
    if (v12)
    {
      dispatch_release(v12);
      *(a1 + 152) = 0;
    }

    v13 = *(a1 + 144);
    if (v13)
    {
      dispatch_release(v13);
      *(a1 + 144) = 0;
    }

    v14 = *(a1 + 24);
    if (v14)
    {
      dispatch_release(v14);
      *(a1 + 24) = 0;
    }

    v15 = *(a1 + 16);
    if (v15)
    {
      dispatch_release(v15);
      *(a1 + 16) = 0;
    }
  }
}

CFStringRef sender_copyDebugDescription(uint64_t a1)
{
  v6 = 0;
  ASPrintF(&v6, "%{ptr}", a1);
  v2 = CFGetAllocator(a1);
  v3 = "yes";
  if (!*(a1 + 182))
  {
    v3 = "no";
  }

  v4 = CFStringCreateWithFormat(v2, 0, @"<APMediaSender %p %s>{ active: %s, usage modes: 0x%x }", a1, v6, v3, *(a1 + 168));
  free(v6);
  return v4;
}

void *APMediaSenderCreate(uint64_t a1, uint64_t a2)
{
  if (APMediaSenderGetTypeID_once != -1)
  {
    APMediaSenderGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (!Instance)
  {
    APMediaSenderCreate_cold_4();
    v7 = 4294960568;
LABEL_14:
    if (gLogCategory_AirPlaySenderKit <= 90 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      APMediaSenderCreate_cold_5(v7);
      if (!v3)
      {
        return v3;
      }
    }

    else if (!v3)
    {
      return v3;
    }

    CFRelease(v3);
    return 0;
  }

  *(Instance + 32) = 0u;
  *(Instance + 176) = 0;
  *(Instance + 144) = 0u;
  *(Instance + 160) = 0u;
  *(Instance + 112) = 0u;
  *(Instance + 128) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 16) = 0u;
  *(Instance + 16) = dispatch_queue_create("APMediaSenderQueue", 0);
  v3[3] = dispatch_queue_create("APMediaSenderCallbackQueue", 0);
  v3[19] = dispatch_semaphore_create(0);
  v3[17] = FigSimpleMutexCreate();
  v4 = APEndpointManagerCreate();
  if (v4)
  {
    v7 = v4;
    APMediaSenderCreate_cold_2(v4);
    goto LABEL_14;
  }

  v5 = APMediaSenderFVDSourceCreate();
  v3[6] = v5;
  if (!v5)
  {
    APMediaSenderCreate_cold_3();
    v7 = 4294960534;
    goto LABEL_14;
  }

  if (gLogCategory_AirPlaySenderKit <= 50)
  {
    if (gLogCategory_AirPlaySenderKit == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return v3;
      }

      v5 = v3[6];
    }

    LogPrintF(&gLogCategory_AirPlaySenderKit, "APMediaSenderRef APMediaSenderCreate(void)", 33554482, "[%{ptr}] created media sender with FVD source %{ptr}", v3, v5);
  }

  return v3;
}

uint64_t APMediaSenderSetAuthBlock(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APMediaSenderSetAuthBlock_block_invoke;
  block[3] = &unk_278C65BA8;
  block[5] = &v6;
  block[6] = a1;
  block[4] = a2;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __APMediaSenderSetAuthBlock_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 182))
  {
    __APMediaSenderSetAuthBlock_block_invoke_cold_1(a1);
  }

  else
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = _Block_copy(v3);
      v2 = *(a1 + 48);
    }

    else
    {
      v4 = 0;
    }

    v5 = *(v2 + 120);
    if (v5)
    {
      _Block_release(v5);
      v2 = *(a1 + 48);
    }

    *(v2 + 120) = v4;
  }
}

uint64_t APMediaSenderSetFailureBlock(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APMediaSenderSetFailureBlock_block_invoke;
  block[3] = &unk_278C65BD0;
  block[5] = &v6;
  block[6] = a1;
  block[4] = a2;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __APMediaSenderSetFailureBlock_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 182))
  {
    __APMediaSenderSetFailureBlock_block_invoke_cold_1(a1);
  }

  else
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = _Block_copy(v3);
      v2 = *(a1 + 48);
    }

    else
    {
      v4 = 0;
    }

    v5 = *(v2 + 128);
    if (v5)
    {
      _Block_release(v5);
      v2 = *(a1 + 48);
    }

    *(v2 + 128) = v4;
  }
}

uint64_t APMediaSenderSetDisplayInfoUpdateBlock(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APMediaSenderSetDisplayInfoUpdateBlock_block_invoke;
  block[3] = &unk_278C65BF8;
  block[5] = &v6;
  block[6] = a1;
  block[4] = a2;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __APMediaSenderSetDisplayInfoUpdateBlock_block_invoke(uint64_t *a1)
{
  v2 = a1[6];
  if (*(v2 + 182))
  {
    return __APMediaSenderSetDisplayInfoUpdateBlock_block_invoke_cold_1(a1);
  }

  *(*(a1[5] + 8) + 24) = APMediaSenderFDVSourceSetDisplayInfoBlock(*(v2 + 48), *(v2 + 24), a1[4]);
  result = *(*(a1[5] + 8) + 24);
  if (result)
  {
    return __APMediaSenderSetDisplayInfoUpdateBlock_block_invoke_cold_2(result);
  }

  return result;
}

uint64_t APMediaSenderSetVideoPassthroughMode(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(a1 + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __APMediaSenderSetVideoPassthroughMode_block_invoke;
  v4[3] = &unk_278C65C20;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __APMediaSenderSetVideoPassthroughMode_block_invoke(uint64_t a1)
{
  v3 = a1 + 40;
  v2 = *(a1 + 40);
  if (*(v2 + 182))
  {
    return __APMediaSenderSetVideoPassthroughMode_block_invoke_cold_1(a1);
  }

  *(*(*(a1 + 32) + 8) + 24) = APMediaSenderFDVSourceSetWritebackMode(*(v2 + 48), 0);
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    return __APMediaSenderSetVideoPassthroughMode_block_invoke_cold_2(result);
  }

  if (gLogCategory_AirPlaySenderKit <= 50)
  {
    if (gLogCategory_AirPlaySenderKit != -1)
    {
      return __APMediaSenderSetVideoPassthroughMode_block_invoke_cold_3(v3, v4, v5);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __APMediaSenderSetVideoPassthroughMode_block_invoke_cold_3(v3, v4, v5);
    }
  }

  return result;
}

uint64_t APMediaSenderSetVideoOverrides(uint64_t a1, CFTypeRef cf)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFDictionaryGetTypeID())
    {
      if (IsAppleInternalBuild())
      {
        v5 = *(a1 + 16);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __APMediaSenderSetVideoOverrides_block_invoke;
        block[3] = &unk_278C65C48;
        block[4] = &v9;
        block[5] = a1;
        block[6] = cf;
        dispatch_sync(v5, block);
      }
    }
  }

  v6 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v6;
}

void __APMediaSenderSetVideoOverrides_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 40;
  v3 = *(a1 + 40);
  if (*(v3 + 182))
  {
    __APMediaSenderSetVideoOverrides_block_invoke_cold_1(a1);
  }

  else
  {
    v5 = *(v3 + 104);
    v7 = a1 + 48;
    v6 = *(a1 + 48);
    *(v3 + 104) = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      __APMediaSenderSetVideoOverrides_block_invoke_cold_2(v4, v7, a3);
    }
  }
}

uint64_t APMediaSenderSetAudioDescription(uint64_t a1, uint64_t a2, char a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (a2)
  {
    v3 = *(a1 + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = __APMediaSenderSetAudioDescription_block_invoke;
    v6[3] = &unk_278C65C70;
    v6[4] = &v8;
    v6[5] = a1;
    v6[6] = a2;
    v7 = a3;
    dispatch_sync(v3, v6);
    v4 = *(v9 + 6);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __APMediaSenderSetAudioDescription_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (*(v2 + 182))
  {
    return __APMediaSenderSetAudioDescription_block_invoke_cold_1(result);
  }

  v3 = *(result + 48);
  v4 = *v3;
  v5 = v3[1];
  *(v2 + 96) = *(v3 + 4);
  *(v2 + 64) = v4;
  *(v2 + 80) = v5;
  v6 = *(result + 40);
  *(v6 + 180) = *(result + 56);
  if (gLogCategory_AirPlaySenderKit <= 50)
  {
    if (gLogCategory_AirPlaySenderKit != -1)
    {
      return LogPrintF(&gLogCategory_AirPlaySenderKit, "OSStatus APMediaSenderSetAudioDescription(APMediaSenderRef, const AudioStreamBasicDescription *, Boolean)_block_invoke", 33554482, "[%{ptr}] media sender: set audio description to [%{asbd}]", v6, *(v1 + 48));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v6 = *(v1 + 40);
      return LogPrintF(&gLogCategory_AirPlaySenderKit, "OSStatus APMediaSenderSetAudioDescription(APMediaSenderRef, const AudioStreamBasicDescription *, Boolean)_block_invoke", 33554482, "[%{ptr}] media sender: set audio description to [%{asbd}]", v6, *(v1 + 48));
    }
  }

  return result;
}

uint64_t APMediaSenderSetAuthString(uint64_t a1, const void *a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  FigSimpleMutexLock();
  v4 = *(a1 + 144);
  if (v4)
  {
    dispatch_retain(*(a1 + 144));
    v5 = *(a1 + 112);
    *(a1 + 112) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    FigSimpleMutexUnlock();
    dispatch_semaphore_signal(v4);
    dispatch_release(v4);
  }

  else
  {
    FigSimpleMutexUnlock();
    v6 = *(a1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __APMediaSenderSetAuthString_block_invoke;
    block[3] = &unk_278C65C98;
    block[4] = &v10;
    block[5] = a1;
    block[6] = a2;
    dispatch_sync(v6, block);
  }

  if (*(v11 + 6))
  {
    APSLogErrorAt();
    v7 = *(v11 + 6);
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v10, 8);
  return v7;
}

void __APMediaSenderSetAuthString_block_invoke(void *a1)
{
  v1 = a1[5];
  if (*(v1 + 182))
  {
    *(*(a1[4] + 8) + 24) = -6709;
  }

  else
  {
    v2 = *(v1 + 112);
    v3 = a1[6];
    *(v1 + 112) = v3;
    if (v3)
    {
      CFRetain(v3);
    }

    if (v2)
    {

      CFRelease(v2);
    }
  }
}

void APMediaSenderStart(uint64_t a1, CFTypeRef cf, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v9 = a3;
  if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    APMediaSenderStart_cold_1(a1, cf, a3);
    if (!cf)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (cf)
  {
LABEL_5:
    CFRetain(cf);
  }

LABEL_6:
  v12 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APMediaSenderStart_block_invoke;
  block[3] = &unk_278C65CE8;
  v14 = a4;
  v15 = a5;
  block[5] = a1;
  block[6] = cf;
  v16 = v9;
  block[4] = a6;
  dispatch_async(v12, block);
}

void __APMediaSenderStart_block_invoke(uint64_t a1)
{
  v1 = a1;
  v3 = a1 + 40;
  v2 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(v2 + 168) = v4;
  if (*(a1 + 60))
  {
    v5 = *(a1 + 60);
  }

  else
  {
    v5 = 30;
  }

  *(v2 + 172) = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v62 = 0;
  cf = 0;
  memset(v61, 0, sizeof(v61));
  if (!v6)
  {
    __APMediaSenderStart_block_invoke_cold_28();
LABEL_149:
    v11 = 4294960591;
    goto LABEL_117;
  }

  if (*(v2 + 182))
  {
    __APMediaSenderStart_block_invoke_cold_1();
    v6 = 0;
    v11 = 4294960587;
    goto LABEL_117;
  }

  if ((v4 & 3) == 0)
  {
    __APMediaSenderStart_block_invoke_cold_27();
    v6 = 0;
    goto LABEL_149;
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v13 = CFGetTypeID(v6);
      if (v13 == CFStringGetTypeID())
      {
        v58 = v1;
        if (gLogCategory_AirPlaySenderKit <= 50)
        {
          if (gLogCategory_AirPlaySenderKit == -1)
          {
            v9 = 0;
            if (!_LogCategory_Initialize())
            {
              goto LABEL_61;
            }
          }

          else
          {
            v9 = 0;
          }

          LogPrintF(&gLogCategory_AirPlaySenderKit, "OSStatus sender_discoverAndCopyEndpoint(APMediaSenderRef, CFTypeRef, APMediaSenderDestinationType, FigEndpointRef *)", 33554482, "[%{ptr}] media sender: using endpoint ID '%@'", v2, v6);
          goto LABEL_61;
        }

LABEL_31:
        v9 = 0;
        goto LABEL_61;
      }

      __APMediaSenderStart_block_invoke_cold_3();
    }

    else
    {
      if (v7 != 3)
      {
        goto LABEL_21;
      }

      v10 = CFGetTypeID(v6);
      if (v10 == CFDictionaryGetTypeID())
      {
        v58 = v1;
        if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
        {
          v9 = v6;
          LogPrintF(&gLogCategory_AirPlaySenderKit, "OSStatus sender_discoverAndCopyEndpoint(APMediaSenderRef, CFTypeRef, APMediaSenderDestinationType, FigEndpointRef *)", 33554482, "[%{ptr}] media sender: using assisted discovery info: %@", v2, v6);
        }

        else
        {
          v9 = v6;
        }

        goto LABEL_61;
      }

      __APMediaSenderStart_block_invoke_cold_2();
    }

LABEL_160:
    v11 = 4294960591;
    goto LABEL_116;
  }

  if (!v7)
  {
    v12 = CFGetTypeID(v6);
    if (v12 != CFStringGetTypeID())
    {
      __APMediaSenderStart_block_invoke_cold_13();
      goto LABEL_160;
    }

    v58 = v1;
    if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlaySenderKit, "OSStatus sender_discoverAndCopyEndpoint(APMediaSenderRef, CFTypeRef, APMediaSenderDestinationType, FigEndpointRef *)", 33554482, "[%{ptr}] media sender: using endpoint address '%@'", v2, v6);
    }

    v73 = 0;
    v74 = &v73;
    v75 = 0x2000000000;
    v76 = 0;
    v71 = 0;
    v72 = 0;
    v70 = 0;
    TestInfoDictionary = APAdvertiserInfoCreateTestInfoDictionary();
    CFDictionarySetValue(TestInfoDictionary, *MEMORY[0x277CE4B90], v6);
    v15 = CFDictionaryCopyCString();
    v16 = *(v74 + 6);
    if (v16)
    {
      __APMediaSenderStart_block_invoke_cold_14(v16);
    }

    else
    {
      TextToHardwareAddressScalar();
      v17 = *MEMORY[0x277CBECE8];
      v18 = APAdvertiserInfoCreate();
      *(v74 + 6) = v18;
      if (!v18)
      {
        theArray = MEMORY[0x277D85DD0];
        v65 = 0x40000000;
        v66 = __createEndpointForNetworkAddress_block_invoke;
        v67 = &unk_278C65DA8;
        v68 = &v73;
        v69 = v72;
        CFDictionaryApplyBlock();
        Mutable = CFDictionaryCreateMutable(v17, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFDictionarySetInt64();
        CFDictionarySetValue(Mutable, *MEMORY[0x277CE4CF8], v72);
        v20 = *MEMORY[0x277CBED28];
        CFDictionarySetValue(Mutable, *MEMORY[0x277CE4D08], *MEMORY[0x277CBED28]);
        CFDictionarySetValue(Mutable, *MEMORY[0x277CE4D10], v20);
        v21 = APSNetworkAddressCreateWithString();
        *(v74 + 6) = v21;
        if (v21)
        {
          __APMediaSenderStart_block_invoke_cold_16(v21);
        }

        else
        {
          v22 = APTransportDeviceCreateWithNetworkAddress();
          *(v74 + 6) = v22;
          if (!v22)
          {
            v23 = CFDictionaryCreateMutable(v17, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            v24 = APEndpointCreateWithTransportDevice();
            *(v74 + 6) = v24;
            if (v24)
            {
              __APMediaSenderStart_block_invoke_cold_18(v24);
            }

            else if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
            {
              __APMediaSenderStart_block_invoke_cold_19(TestInfoDictionary, v25, v26);
            }

LABEL_46:
            free(v15);
            if (TestInfoDictionary)
            {
              CFRelease(TestInfoDictionary);
            }

            if (Mutable)
            {
              CFRelease(Mutable);
            }

            if (v23)
            {
              CFRelease(v23);
            }

            if (v72)
            {
              CFRelease(v72);
            }

            if (v71)
            {
              CFRelease(v71);
            }

            if (v70)
            {
              CFRelease(v70);
            }

            v11 = *(v74 + 6);
            _Block_object_dispose(&v73, 8);
            if (v11)
            {
              __APMediaSenderStart_block_invoke_cold_20(v11);
              goto LABEL_163;
            }

            v57 = v3;
            v6 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            v38 = *MEMORY[0x277CBED28];
            CFDictionarySetValue(v6, *MEMORY[0x277CE9F10], *MEMORY[0x277CBED28]);
            if (*(v2 + 168))
            {
              CFDictionarySetValue(v6, *MEMORY[0x277CE9EF8], v38);
              CFDictionarySetValue(v6, *MEMORY[0x277CC09E8], *MEMORY[0x277CC11E0]);
              CFDictionarySetValue(v6, *MEMORY[0x277CE9F08], *(v2 + 48));
              v39 = *(v2 + 104);
              if (v39)
              {
                CFDictionarySetValue(v6, *MEMORY[0x277CE9F00], v39);
              }
            }

            v3 = v57;
            if ((*(v2 + 168) & 2) != 0)
            {
              if (!*(v2 + 72))
              {
                __APMediaSenderStart_block_invoke_cold_21();
                v11 = 4294960591;
                goto LABEL_111;
              }

              if (*(v2 + 180))
              {
                CFDictionarySetValue(v6, *MEMORY[0x277CC09E8], *MEMORY[0x277CC11E0]);
              }
            }

            v40 = *(v2 + 112);
            if (!v40)
            {
              goto LABEL_98;
            }

            CMBaseObject = FigEndpointGetCMBaseObject();
            v42 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v42)
            {
              v43 = v42(CMBaseObject, *MEMORY[0x277CC1488], v40);
              if (!v43)
              {
LABEL_98:
                memset(&v61[1] + 8, 0, 40);
                *&v61[0] = v2;
                *(&v61[0] + 1) = sender_handleAuthRequiredCallback;
                *&v61[1] = sender_handleEndpointFailure;
                v44 = *(v2 + 40);
                v45 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                if (v45)
                {
                  v45(v44, v61);
                }

                v46 = FigEndpointActivateSync();
                if (v46)
                {
                  v11 = v46;
                  __APMediaSenderStart_block_invoke_cold_22(v46);
                }

                else
                {
                  v47 = *(v2 + 168);
                  if (v47)
                  {
                    StreamOfType = FigEndpointCopyFirstStreamOfType();
                    if (StreamOfType)
                    {
                      v11 = StreamOfType;
                      __APMediaSenderStart_block_invoke_cold_23(StreamOfType);
                      goto LABEL_111;
                    }

                    CMNotificationCenterGetDefaultLocalCenter();
                    CMNotificationCenterAddListener();
                    v49 = FigEndpointStreamResume();
                    if (v49)
                    {
                      v11 = v49;
                      __APMediaSenderStart_block_invoke_cold_24(v49);
                      goto LABEL_111;
                    }

                    v47 = *(v2 + 168);
                  }

                  if ((v47 & 2) != 0)
                  {
                    v50 = FigEndpointCopyFirstStreamOfType();
                    if (v50)
                    {
                      v11 = v50;
                      __APMediaSenderStart_block_invoke_cold_25(v50);
                      goto LABEL_111;
                    }

                    v51 = AudioSBufSourceCreate(v62, v2 + 64, 0, (v2 + 56));
                    if (v51)
                    {
                      v11 = v51;
                      __APMediaSenderStart_block_invoke_cold_26(v51);
                      goto LABEL_111;
                    }
                  }

                  v11 = 0;
                  *(v2 + 182) = 1;
                }

LABEL_111:
                v1 = v58;
                goto LABEL_117;
              }

              v11 = v43;
            }

            else
            {
              v11 = 4294954514;
            }

            APSLogErrorAt();
            goto LABEL_111;
          }

          __APMediaSenderStart_block_invoke_cold_17(v22);
        }

LABEL_168:
        v23 = 0;
        goto LABEL_46;
      }

      __APMediaSenderStart_block_invoke_cold_15(v18);
    }

    Mutable = 0;
    goto LABEL_168;
  }

  if (v7 != 1)
  {
LABEL_21:
    v11 = 4294960591;
    goto LABEL_115;
  }

  v8 = CFGetTypeID(v6);
  if (v8 != CFStringGetTypeID())
  {
    __APMediaSenderStart_block_invoke_cold_4();
    goto LABEL_160;
  }

  v58 = v1;
  if (gLogCategory_AirPlaySenderKit > 50)
  {
    goto LABEL_31;
  }

  if (gLogCategory_AirPlaySenderKit == -1)
  {
    v9 = 0;
    if (!_LogCategory_Initialize())
    {
      goto LABEL_61;
    }
  }

  else
  {
    v9 = 0;
  }

  LogPrintF(&gLogCategory_AirPlaySenderKit, "OSStatus sender_discoverAndCopyEndpoint(APMediaSenderRef, CFTypeRef, APMediaSenderDestinationType, FigEndpointRef *)", 33554482, "[%{ptr}] media sender: using endpoint name '%@'", v2, v6);
LABEL_61:
  if (sender_startDiscovery_once != -1)
  {
    __APMediaSenderStart_block_invoke_cold_5();
  }

  v27 = *(v2 + 172);
  if ((v27 & 0x80000000) != 0)
  {
    v28 = -1;
  }

  else
  {
    v28 = dispatch_time(0, 1000000000 * v27);
  }

  while (1)
  {
    v29 = sender_startDiscovery_activationSema;
    v30 = dispatch_time(0, 1000000000);
    if (!dispatch_semaphore_wait(v29, v30))
    {
      break;
    }

    if (v28 <= dispatch_time(0, 0))
    {
      __APMediaSenderStart_block_invoke_cold_6();
      v11 = 4294960574;
LABEL_114:
      v1 = v58;
LABEL_115:
      APSLogErrorAt();
      goto LABEL_116;
    }

    if (*(v2 + 181))
    {
      __APMediaSenderStart_block_invoke_cold_7();
      v11 = 4294960573;
      goto LABEL_114;
    }
  }

  *(v2 + 160) = sender_startDiscovery_activationSema;
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterAddListener();
  if (!v9)
  {
    v34 = *(v2 + 32);
    v35 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v35)
    {
      v36 = v35(v34, *MEMORY[0x277CC0C00], 0);
      if (!v36)
      {
        if (gLogCategory_AirPlaySenderKit > 50 || gLogCategory_AirPlaySenderKit == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_74;
        }

        v37 = "[%{ptr}] media sender: started detailed discovery";
        goto LABEL_139;
      }

      v11 = v36;
    }

    else
    {
      v11 = 4294954514;
    }

    APSLogErrorAt();
    goto LABEL_114;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (gLogCategory_AirPlaySenderKit > 50 || gLogCategory_AirPlaySenderKit == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_74;
  }

  v37 = "[%{ptr}] media sender: requested to create endpoint with assisted info";
LABEL_139:
  __APMediaSenderStart_block_invoke_cold_8(v37, v2, v31);
LABEL_74:
  theArray = 0;
  v32 = *(v2 + 172);
  if ((v32 & 0x80000000) != 0)
  {
    v33 = -1;
  }

  else
  {
    v33 = dispatch_time(0, 1000000000 * v32);
  }

  while (1)
  {
    if (v33 <= dispatch_time(0, 0))
    {
      __APMediaSenderStart_block_invoke_cold_9();
LABEL_143:
      v11 = 4294960574;
      goto LABEL_87;
    }

    if (dispatch_semaphore_wait(*(v2 + 152), v33))
    {
      __APMediaSenderStart_block_invoke_cold_10();
      goto LABEL_143;
    }

    if (*(v2 + 181))
    {
      break;
    }

    FigEndpointManagerCopyEndpointsForType();
  }

  __APMediaSenderStart_block_invoke_cold_11();
  v11 = 4294960573;
LABEL_87:
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  __APMediaSenderStart_block_invoke_cold_12(v11);
LABEL_163:
  v1 = v58;
LABEL_116:
  APSLogErrorAt();
  v6 = 0;
LABEL_117:
  sender_stopDiscovery(v2);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v11)
  {
    if (gLogCategory_AirPlaySenderKit <= 90 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlaySenderKit, "OSStatus sender_startInternal(APMediaSenderRef, CFTypeRef, APMediaSenderDestinationType)", 33554522, "### [%{ptr}] APMediaSenderStart failed, error: %#m\n", v2, v11);
    }

    sender_stopInternal(v2, 0);
    APSLogErrorAt();
  }

  else if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    __APMediaSenderStart_block_invoke_cold_29(v3, v52, v53);
  }

  *(v1[5] + 176) = v11;
  v54 = v1[6];
  if (v54)
  {
    CFRelease(v54);
  }

  v55 = v1[4];
  if (v55)
  {
    v56 = *(*v3 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __APMediaSenderStart_block_invoke_2;
    block[3] = &unk_278C65CC0;
    block[4] = v55;
    v60 = v11;
    dispatch_async(v56, block);
  }
}

void APMediaSenderStop(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    APMediaSenderStop_cold_1(a1, a2, a3);
  }

  *(a1 + 181) = 1;
  dispatch_semaphore_signal(*(a1 + 152));
  FigSimpleMutexLock();
  v4 = *(a1 + 144);
  if (v4)
  {
    if (*(a1 + 112))
    {
      CFRelease(*(a1 + 112));
      *(a1 + 112) = 0;
      v4 = *(a1 + 144);
    }

    dispatch_semaphore_signal(v4);
  }

  FigSimpleMutexUnlock();
  v5 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APMediaSenderStop_block_invoke;
  block[3] = &__block_descriptor_tmp_25;
  block[4] = a1;
  dispatch_sync(v5, block);
}

void sender_stopInternal(intptr_t a1, int a2)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  sender_stopDiscovery(a1);
  if (*(a1 + 40))
  {
    FigEndpointDeactivate();
    v4 = *(a1 + 40);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 40) = 0;
    }
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 56) = 0;
  }

  if (a2)
  {
    *(a1 + 181) = 0;
    *(a1 + 176) = 0;
  }
}

uint64_t APMediaSenderSubmitPixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v3 = *(a1 + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = __APMediaSenderSubmitPixelBuffer_block_invoke;
  v6[3] = &unk_278C65D30;
  v6[4] = &v7;
  v6[5] = a1;
  v6[6] = a2;
  v6[7] = a3;
  dispatch_sync(v3, v6);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __APMediaSenderSubmitPixelBuffer_block_invoke(void *a1)
{
  v2 = a1[5];
  if (!*(v2 + 182))
  {
    return __APMediaSenderSubmitPixelBuffer_block_invoke_cold_4(a1);
  }

  if ((*(v2 + 168) & 1) == 0)
  {
    return __APMediaSenderSubmitPixelBuffer_block_invoke_cold_3(a1);
  }

  v3 = *(v2 + 176);
  if (v3)
  {
    return __APMediaSenderSubmitPixelBuffer_block_invoke_cold_1(a1, v3);
  }

  *(*(a1[4] + 8) + 24) = APMediaSenderFDVSourceSubmitPixelBuffer(*(v2 + 48), a1[6], a1[7]);
  result = *(*(a1[4] + 8) + 24);
  if (result)
  {
    return __APMediaSenderSubmitPixelBuffer_block_invoke_cold_2(result);
  }

  return result;
}

uint64_t APMediaSenderEnqueueAudioData(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APMediaSenderEnqueueAudioData_block_invoke;
  block[3] = &unk_278C65D58;
  block[4] = &v6;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __APMediaSenderEnqueueAudioData_block_invoke(void *a1)
{
  v2 = a1[5];
  if (!*(v2 + 182))
  {
    return __APMediaSenderEnqueueAudioData_block_invoke_cold_4(a1);
  }

  v3 = *(v2 + 56);
  if (!v3)
  {
    return __APMediaSenderEnqueueAudioData_block_invoke_cold_3(a1);
  }

  v4 = *(v2 + 176);
  if (v4)
  {
    return __APMediaSenderEnqueueAudioData_block_invoke_cold_1(a1, v4);
  }

  *(*(a1[4] + 8) + 24) = AudioSBufSourceEnqueueAudioData(v3, a1[6]);
  result = *(*(a1[4] + 8) + 24);
  if (result)
  {
    return __APMediaSenderEnqueueAudioData_block_invoke_cold_2(result);
  }

  return result;
}

uint64_t APMediaSenderEnqueueAudioDataWithTimestamps(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, char a5)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v5 = *(a1 + 16);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = __APMediaSenderEnqueueAudioDataWithTimestamps_block_invoke;
  v8[3] = &unk_278C65D80;
  v8[4] = &v12;
  v8[5] = a1;
  v9 = *a3;
  v10 = *(a3 + 2);
  v8[6] = a2;
  v8[7] = a4;
  v11 = a5;
  dispatch_sync(v5, v8);
  v6 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v6;
}

uint64_t __APMediaSenderEnqueueAudioDataWithTimestamps_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!*(v2 + 182))
  {
    return __APMediaSenderEnqueueAudioDataWithTimestamps_block_invoke_cold_4(a1);
  }

  v3 = *(v2 + 56);
  if (!v3)
  {
    return __APMediaSenderEnqueueAudioDataWithTimestamps_block_invoke_cold_3(a1);
  }

  v4 = *(v2 + 176);
  if (v4)
  {
    return __APMediaSenderEnqueueAudioDataWithTimestamps_block_invoke_cold_1(a1, v4);
  }

  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 88);
  v9 = *(a1 + 64);
  v10 = *(a1 + 80);
  *(*(*(a1 + 32) + 8) + 24) = AudioSBufSourceEnqueueAudioDataWithTimestamps(v3, v5, &v9, v6, v7);
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    return __APMediaSenderEnqueueAudioDataWithTimestamps_block_invoke_cold_2(result);
  }

  return result;
}

void sender_handleAuthRequiredCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, CFTypeRef, uint64_t, uint64_t), uint64_t a7)
{
  FigCFEqual();
  if (!*(a4 + 120))
  {
    v15 = 0;
    if (!a6)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  FigSimpleMutexLock();
  *(a4 + 144) = dispatch_semaphore_create(0);
  v11 = *(a4 + 112);
  if (v11)
  {
    CFRelease(v11);
    *(a4 + 112) = 0;
  }

  FigSimpleMutexUnlock();
  (*(*(a4 + 120) + 16))();
  v12 = *(a4 + 144);
  v13 = *(a4 + 172);
  if ((v13 & 0x80000000) != 0)
  {
    v14 = -1;
  }

  else
  {
    v14 = dispatch_time(0, 1000000000 * v13);
  }

  dispatch_semaphore_wait(v12, v14);
  FigSimpleMutexLock();
  v16 = *(a4 + 144);
  if (v16)
  {
    dispatch_release(v16);
    *(a4 + 144) = 0;
  }

  v17 = *(a4 + 112);
  if (v17)
  {
    v15 = CFRetain(v17);
  }

  else
  {
    v15 = 0;
  }

  FigSimpleMutexUnlock();
  if (a6)
  {
LABEL_15:
    if (v15)
    {
      v18 = 0;
    }

    else
    {
      v18 = 4294950568;
    }

    a6(a1, v15, v18, a7);
  }

LABEL_19:
  if (v15)
  {

    CFRelease(v15);
  }
}

void sender_handleEndpointFailure(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Int64 = CFDictionaryGetInt64();
  if (gLogCategory_AirPlaySenderKit <= 100 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlaySenderKit, "void sender_handleEndpointFailure(FigEndpointRef, uint64_t, CFDictionaryRef, CFTypeRef)", 33554532, "### [%{ptr}] media sender: endpoint failure: %@", a4, a3);
  }

  v7 = *(a4 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __sender_handleEndpointFailure_block_invoke;
  block[3] = &__block_descriptor_tmp_56;
  if (Int64)
  {
    v8 = Int64;
  }

  else
  {
    v8 = -6762;
  }

  block[4] = a4;
  v10 = v8;
  dispatch_sync(v7, block);
}

void sender_handleEndpointStreamFailure(int a1, const void *a2, int a3, int a4, const __CFDictionary *cf)
{
  Mutable = cf;
  if (!cf)
  {
    goto LABEL_5;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFDictionaryGetTypeID())
  {
    Mutable = 0;
LABEL_5:
    Value = 0;
    Int64 = 0;
    goto LABEL_6;
  }

  Int64 = CFDictionaryGetInt64();
  Value = CFDictionaryGetValue(Mutable, *MEMORY[0x277CC17E0]);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  FigCFDictionarySetInt32();
LABEL_6:
  if (gLogCategory_AirPlaySenderKit <= 90 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
  {
    v10 = &stru_2851432D8;
    if (Value)
    {
      v10 = Value;
    }

    LogPrintF(&gLogCategory_AirPlaySenderKit, "void sender_handleEndpointStreamFailure(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554522, "### [%{ptr}] APMediaSender got endpoint stream failure, error: %#m (%@)\n", a2, Int64, v10);
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"APMediaSender_VideoStreamFailed", a2, Mutable, 1u);
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

intptr_t sender_stopDiscovery(intptr_t result)
{
  v1 = *(result + 160);
  if (v1)
  {
    v2 = result;
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    v3 = *(v2 + 32);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v6)
    {
      v6(v3, *MEMORY[0x277CC0C08], 0);
    }

    if (gLogCategory_AirPlaySenderKit <= 50 && (gLogCategory_AirPlaySenderKit != -1 || _LogCategory_Initialize()))
    {
      sender_stopDiscovery_cold_1(v2, v4, v5);
    }

    *(v2 + 160) = 0;

    return dispatch_semaphore_signal(v1);
  }

  return result;
}

BOOL endpointMatchAssisted(const void *a1)
{
  cf = 0;
  v1 = CFGetAllocator(a1);
  CMBaseObject = FigEndpointGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3 && !v3(CMBaseObject, *MEMORY[0x277CC1278], v1, &cf))
  {
    v4 = cf;
    v5 = cf == *MEMORY[0x277CBED28];
    if (!cf)
    {
      return v5;
    }

    goto LABEL_6;
  }

  APSLogErrorAt();
  v5 = 0;
  v4 = cf;
  if (cf)
  {
LABEL_6:
    CFRelease(v4);
  }

  return v5;
}

uint64_t __createEndpointForNetworkAddress_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = APAdvertiserInfoSetProperty();
  *(*(*(a1 + 32) + 8) + 24) = result;
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (v6 && gLogCategory_AirPlaySenderKit <= 90)
  {
    if (gLogCategory_AirPlaySenderKit != -1)
    {
      return LogPrintF(&gLogCategory_AirPlaySenderKit, "OSStatus createEndpointForNetworkAddress(CFStringRef, FigEndpointRef *)_block_invoke", 33554522, "### APAdvertiserInfoSetProperty failed for key %@, error: %#m\n", a2, v6);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v6 = *(*(*(a1 + 32) + 8) + 24);
      return LogPrintF(&gLogCategory_AirPlaySenderKit, "OSStatus createEndpointForNetworkAddress(CFStringRef, FigEndpointRef *)_block_invoke", 33554522, "### APAdvertiserInfoSetProperty failed for key %@, error: %#m\n", a2, v6);
    }
  }

  return result;
}

dispatch_semaphore_t __sender_startDiscovery_block_invoke()
{
  result = dispatch_semaphore_create(1);
  sender_startDiscovery_activationSema = result;
  return result;
}

void __sender_handleEndpointFailure_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  if (*(v2 + 176))
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    v5 = *(v2 + 24);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = __sender_handleEndpointFailure_block_invoke_2;
    v6[3] = &unk_278C65DF0;
    v6[4] = v3;
    v7 = *(a1 + 40);
    dispatch_async(v5, v6);
    v2 = *(a1 + 32);
  }

  *(v2 + 176) = *(a1 + 40);
}

void sub_23EB3ED50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t fvdsrc_plugProcessor_cold_1(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -12070;
  return result;
}

uint64_t fvdsrc_unplugProcessor_cold_1(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -12070;
  return result;
}

uint64_t endpointMatchByName(const void *a1, const void *a2)
{
  cf1 = 0;
  v3 = CFGetAllocator(a1);
  CMBaseObject = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5 || v5(CMBaseObject, *MEMORY[0x277CC1450], v3, &cf1))
  {
    APSLogErrorAt();
    v6 = 0;
  }

  else
  {
    if (!cf1)
    {
      return 0;
    }

    v6 = CFEqual(cf1, a2);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  return v6;
}

BOOL endpointMatchByID(const void *a1, const __CFString *a2)
{
  theString1 = 0;
  v3 = CFGetAllocator(a1);
  CMBaseObject = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5 || v5(CMBaseObject, *MEMORY[0x277CC1368], v3, &theString1))
  {
    APSLogErrorAt();
    v6 = 0;
  }

  else
  {
    if (!theString1)
    {
      return 0;
    }

    v6 = CFStringCompare(theString1, a2, 1uLL) == kCFCompareEqualTo;
  }

  if (theString1)
  {
    CFRelease(theString1);
  }

  return v6;
}

void apsksa_rtDispatchSignalHandler(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  v2 = v1;
  hostTime = 0;
  v12 = 0;
  v13 = 0;
  memset(&v10, 0, sizeof(v10));
  if (v1)
  {
    if (atomic_load((v1 + 120)))
    {
      v4 = 0;
      while (1)
      {
        if (APSRingBufferGetBytesUsed() <= 0x17 || APSRingBufferDequeueBytes())
        {
          APSLogErrorAt();

          goto LABEL_11;
        }

        v5 = objc_alloc(MEMORY[0x277CBEB28]);
        v6 = [v5 initWithLength:v13];

        if (!v6)
        {
          break;
        }

        v7 = v13;
        if (APSRingBufferGetBytesUsed() < v7 || ([v6 mutableBytes], APSRingBufferDequeueBytes()))
        {
          APSLogErrorAt();
LABEL_10:

          goto LABEL_11;
        }

        atomic_fetch_add(v2 + 30, 0xFFFFFFFF);
        CMClockMakeHostTimeFromSystemUnits(&v10, hostTime);
        v9 = v10;
        [(atomic_uint *)v2 enqueueAudioDataWithTimestamps:v6 forHostTime:&v9 forSampleTime:v12 forDiscontinuity:BYTE4(v13)];
        v8 = atomic_load(v2 + 30);
        v4 = v6;
        if (!v8)
        {
          goto LABEL_10;
        }
      }

      APSLogErrorAt();
    }
  }

LABEL_11:
}