void FigFormatWriterInvalidate()
{
  FigFormatWriterGetFigBaseObject();
  if (v0)
  {
    v1 = v0;
    v2 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v2)
    {

      v2(v1);
    }
  }
}

intptr_t remakerFamily_removeTrackNotifications(intptr_t result)
{
  v1 = result;
  if (*(result + 416))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListeners();
    result = *(v1 + 408);
    if (result)
    {
      result = dispatch_semaphore_signal(result);
    }
  }

  if (*(v1 + 56))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    result = FigNotificationCenterRemoveWeakListeners();
  }

  if (*(v1 + 168))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    result = FigNotificationCenterRemoveWeakListeners();
  }

  if (*(v1 + 200))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    result = FigNotificationCenterRemoveWeakListeners();
  }

  if (*(v1 + 232))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    result = FigNotificationCenterRemoveWeakListeners();
    if (*(*(v1 + 152) + 160))
    {
      result = *(v1 + 240);
      if (result)
      {
        result = CFArrayGetCount(result);
        if (result >= 2)
        {
          v2 = result;
          for (i = 1; i != v2; ++i)
          {
            CFArrayGetValueAtIndex(*(v1 + 240), i);
            CMNotificationCenterGetDefaultLocalCenter();
            result = FigNotificationCenterRemoveWeakListeners();
          }
        }
      }
    }
  }

  if (*(v1 + 264))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    result = FigNotificationCenterRemoveWeakListeners();
  }

  if (*(v1 + 288))
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return FigNotificationCenterRemoveWeakListeners();
  }

  return result;
}

void remakerFamily_invalidateTrack(uint64_t a1)
{
  if (FigAtomicCompareAndSwap32())
  {
    v2 = *(a1 + 288);
    if (v2)
    {
      FigMediaProcessorInvalidate(v2);
    }

    v3 = *(a1 + 264);
    if (v3)
    {
      FigMediaProcessorInvalidate(v3);
    }

    v4 = *(a1 + 232);
    if (v4)
    {
      FigMediaProcessorInvalidate(v4);
      if (*(*(a1 + 152) + 160))
      {
        v5 = *(a1 + 240);
        if (v5)
        {
          Count = CFArrayGetCount(v5);
          if (Count >= 2)
          {
            v7 = Count;
            for (i = 1; i != v7; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 240), i);
              FigMediaProcessorInvalidate(ValueAtIndex);
            }
          }
        }
      }
    }

    FigPlaybackBossInvalidate(*(a1 + 416));
    if (*(a1 + 56))
    {
      FigRenderPipelineGetFigBaseObject();
      if (v10)
      {
        v11 = v10;
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v12)
        {
          v12(v11);
        }
      }
    }

    assetReaderTrack_Invalidate(*(a1 + 152));
    assetWriterTrack_Invalidate(*(a1 + 160));
    v13 = *(a1 + 168);
    if (v13)
    {
      FigVideoCompositionProcessorInvalidate(v13);
    }

    v14 = *(a1 + 368);
    if (v14 && dispatch_get_current_queue() != v14)
    {
      dispatch_sync_f(v14, 0, remakerFamily_NoOp);
    }

    remakerFamily_cleanupTemporaryTrackFiles(a1);
    v15 = *(a1 + 200);
    if (v15)
    {
      FigAudioQueueOfflineMixerInvalidate(v15);
    }

    v16 = *(a1 + 232);
    if (v16)
    {
      FigMediaProcessorInvalidate(v16);
      if (*(*(a1 + 152) + 160))
      {
        v17 = *(a1 + 240);
        if (v17)
        {
          v18 = CFArrayGetCount(v17);
          if (v18 >= 2)
          {
            v19 = v18;
            for (j = 1; j != v19; ++j)
            {
              v21 = CFArrayGetValueAtIndex(*(a1 + 240), j);
              FigMediaProcessorInvalidate(v21);
            }
          }
        }
      }
    }

    v22 = *(a1 + 264);
    if (v22)
    {
      FigMediaProcessorInvalidate(v22);
    }

    v23 = *(a1 + 288);
    if (v23)
    {

      FigMediaProcessorInvalidate(v23);
    }
  }
}

void remakerFamily_invalidateAllMediaProcessors(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 80);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 80), i);
        v7 = *(ValueAtIndex + 33);
        if (v7)
        {
          FigMediaProcessorInvalidate(v7);
        }

        v8 = *(ValueAtIndex + 29);
        if (v8)
        {
          FigMediaProcessorInvalidate(v8);
          if (*(*(ValueAtIndex + 19) + 160))
          {
            v9 = *(ValueAtIndex + 30);
            if (v9)
            {
              v10 = CFArrayGetCount(v9);
              if (v10 >= 2)
              {
                v11 = v10;
                for (j = 1; j != v11; ++j)
                {
                  v13 = CFArrayGetValueAtIndex(*(ValueAtIndex + 30), j);
                  FigMediaProcessorInvalidate(v13);
                }
              }
            }
          }
        }

        v14 = *(ValueAtIndex + 36);
        if (v14)
        {
          FigMediaProcessorInvalidate(v14);
        }

        remakerFamily_cleanupTemporaryTrackFiles(ValueAtIndex);
      }
    }
  }
}

void remakerFamily_cleanupTemporaryTrackFiles(uint64_t a1)
{
  v2 = *(a1 + 360);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 360) = 0;
  }

  v3 = *(a1 + 392);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 392) = 0;
  }
}

uint64_t remakerFamily_setMemoryUsage(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v26, 0, sizeof(v26));
  if (a2)
  {
    CMTimeMake(&v26, 2, 1000);
    v4 = 1;
  }

  else
  {
    CMTimeMake(&v26, 45, 1000);
    v4 = 35;
  }

  memset(&v25, 0, sizeof(v25));
  CMTimeMake(&v25, v4, 1000);
  result = *(DerivedStorage + 80);
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v6 = result;
      v7 = 0;
      if (a2)
      {
        v8 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v8 = MEMORY[0x1E695E4C0];
      }

      v9 = *v8;
      do
      {
        result = CFArrayGetValueAtIndex(*(DerivedStorage + 80), v7);
        v10 = *(result + 32);
        if (v10 == 1986618469 || v10 == 1635088502)
        {
          v12 = result;
          v13 = *(result + 264);
          if (v13)
          {
            v28 = v26;
            v27 = v25;
            FigMediaProcessorSetWaterLevels(v13, &v28, &v27);
          }

          v14 = *(v12 + 232);
          if (v14)
          {
            v28 = v26;
            v27 = v25;
            FigMediaProcessorSetWaterLevels(v14, &v28, &v27);
            if (*(*(v12 + 152) + 160))
            {
              v15 = *(v12 + 240);
              if (v15)
              {
                Count = CFArrayGetCount(v15);
                if (Count >= 2)
                {
                  v17 = Count;
                  for (i = 1; i != v17; ++i)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(*(v12 + 240), i);
                    v28 = v26;
                    v27 = v25;
                    FigMediaProcessorSetWaterLevels(ValueAtIndex, &v28, &v27);
                  }
                }
              }
            }
          }

          v20 = *(v12 + 56);
          if (v20)
          {
            v24 = v26;
            v23 = v25;
            v21 = *(*(CMBaseObjectGetVTable() + 16) + 104);
            if (v21)
            {
              v28 = v24;
              v27 = v23;
              v21(v20, &v28, &v27);
            }
          }

          v22 = *(v12 + 168);
          if (v22)
          {
            v28 = v26;
            v27 = v25;
            FigVideoCompositionProcessorSetOutputDurationHighAndLowWaterLevels(v22, &v28, &v27);
          }

          result = *(v12 + 288);
          if (result)
          {
            result = FigMediaProcessorSetProperty(result, @"MinimizeMemoryUsage", v9);
          }
        }

        ++v7;
      }

      while (v7 != v6);
    }
  }

  return result;
}

CMTime *remakerFamily_getHighWaterLevel@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (a1)
  {
    v2 = 5;
    v3 = 30;
  }

  else
  {
    v2 = 45;
    v3 = 1000;
  }

  return CMTimeMake(a2, v2, v3);
}

CMTime *remakerFamily_getLowWaterLevel@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (a1)
  {
    v2 = 3;
    v3 = 30;
  }

  else
  {
    v2 = 35;
    v3 = 1000;
  }

  return CMTimeMake(a2, v2, v3);
}

const char *remakerFamily_StateDesc(int a1)
{
  if ((a1 - 1) > 7)
  {
    return "bad";
  }

  else
  {
    return off_1E74844A0[a1 - 1];
  }
}

__CFString *remakerFamily_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = "FigRemaker";
  if (a1)
  {
    v6 = CFGetTypeID(a1);
    if (v6 == FigAssetReaderGetTypeID())
    {
      v5 = "FigAssetReader";
    }

    else
    {
      v7 = CFGetTypeID(a1);
      if (v7 == FigAssetWriterGetTypeID())
      {
        v5 = "FigAssetWriter";
      }
    }
  }

  v8 = CFGetRetainCount(a1);
  v9 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<%s %p retainCount: %d allocator: %p, ", v5, a1, v8, v9);
  v10 = remakerFamily_StateDesc(*DerivedStorage);
  if (*(DerivedStorage + 384))
  {
    v11 = " singlePassBossIsDone";
  }

  else
  {
    v11 = "";
  }

  if (*(DerivedStorage + 428))
  {
    v12 = " didLastStep";
  }

  else
  {
    v12 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"state: %s%s%s, ", v10, v11, v12);
  CFStringAppendFormat(Mutable, 0, @"sourceAsset %@, destByteStream %@, tempByteStream %@, tempFilePath %@, formatWriter %@, singlePassBoss %@", *(DerivedStorage + 72), *(DerivedStorage + 168), *(DerivedStorage + 216), *(DerivedStorage + 224), *(DerivedStorage + 184), *(DerivedStorage + 376));
  CFStringAppendFormat(Mutable, 0, @"\n  %@", *(DerivedStorage + 80));
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

_DWORD *remakerFamily_getChannelBySourceTrackID(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 80));
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    result = CFArrayGetValueAtIndex(*(DerivedStorage + 80), v6);
    if (result[7] == a2)
    {
      break;
    }

    if (v5 == ++v6)
    {
      return 0;
    }
  }

  return result;
}

unint64_t remakerFamily_useAudioFormatWriterGivenFormatWriterOption(unint64_t result)
{
  if (result)
  {
    v1 = result;
    return CFEqual(result, @"CAFAudioFile") || CFEqual(v1, @"AIFFAudioFile") || CFEqual(v1, @"WAVEAudioFile") || CFEqual(v1, @"AMRAudioFile") != 0;
  }

  return result;
}

uint64_t remakerFamily_createFormatWriter(const void *a1, const __CFAllocator *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5, CFTypeRef *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v54 = 0;
  if (a5)
  {
    Value = CFDictionaryGetValue(a5, @"FileFormat");
    v13 = Value;
    if (Value)
    {
      Value = CFRetain(Value);
    }

    *(DerivedStorage + 432) = Value;
    v14 = CFDictionaryGetValue(a5, @"AudioPrimingFormat");
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (MutableCopy)
    {
      v16 = MutableCopy;
      if (v14)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_74:
    remakerFamily_createFormatWriter_cold_1(&cf);
    return cf;
  }

  v17 = FigCFDictionaryCreateMutableCopy();
  if (!v17)
  {
    goto LABEL_74;
  }

  v16 = v17;
  v13 = 0;
LABEL_9:
  v14 = @"AudioPrimingFormat_DetermineFromSampleOrFileFormat";
  CFDictionarySetValue(v16, @"AudioPrimingFormat", @"AudioPrimingFormat_DetermineFromSampleOrFileFormat");
  if (!@"AudioPrimingFormat_DetermineFromSampleOrFileFormat")
  {
    v18 = 0;
    goto LABEL_14;
  }

LABEL_10:
  if (!CFEqual(v14, @"AudioPrimingFormat_Manual"))
  {
    *(DerivedStorage + 208) = 1;
  }

  v18 = CFRetain(v14);
LABEL_14:
  *(DerivedStorage + 200) = v18;
  if (*(DerivedStorage + 32))
  {
    CFDictionarySetValue(v16, @"RealTime", *MEMORY[0x1E695E4D0]);
  }

  *(DerivedStorage + 296) = a4;
  v19 = remakerFamily_useAudioFormatWriterGivenFormatWriterOption(v13);
  v20 = FigCFEqual();
  v21 = FigCFEqual();
  v53 = FigCFEqual();
  if (!*(DerivedStorage + 240))
  {
    goto LABEL_34;
  }

  if (v19)
  {
    FigAudioFileFormatWriterCreateWithByteStream(a2, *(DerivedStorage + 168), v16, &v54);
    if (TempFile)
    {
      goto LABEL_59;
    }
  }

  else if (v20)
  {
    TempFile = FigTTMLFormatWriterCreateWithByteStream(a2, *(DerivedStorage + 168), v16, &v54);
    if (TempFile)
    {
      goto LABEL_59;
    }
  }

  else if (v21)
  {
    TempFile = FigSCCFormatWriterCreateWithByteStream(a2, *(DerivedStorage + 168), v16, &v54);
    if (TempFile)
    {
      goto LABEL_59;
    }
  }

  else if (v53)
  {
    TempFile = FigWebVTTFormatWriterCreateWithByteStream(a2, *(DerivedStorage + 168), v16, &v54);
    if (TempFile)
    {
      goto LABEL_59;
    }
  }

  else if (a4)
  {
    *(DerivedStorage + 240) = 0;
  }

  else
  {
    TempFile = FigMovieFormatWriterCreateWithByteStream(a2, *(DerivedStorage + 168), v16, &v54);
    if (TempFile)
    {
      goto LABEL_59;
    }
  }

  if (v54)
  {
    v23 = *(*(CMBaseObjectGetVTable() + 16) + 72) != 0;
    *(DerivedStorage + 240) = v23;
    if (!v23)
    {
      goto LABEL_34;
    }
  }

  else if (!*(DerivedStorage + 240))
  {
LABEL_34:
    if (*(DerivedStorage + 336))
    {
      v24 = *(DerivedStorage + 344);
    }

    else
    {
      v24 = *(DerivedStorage + 168);
    }

    goto LABEL_37;
  }

  v50 = v20;
  v37 = a3;
  v38 = a4;
  v39 = v21;
  v40 = a6;
  v41 = *(DerivedStorage + 336);
  v42 = CFGetTypeID(a1);
  v43 = *(DerivedStorage + 232);
  v44 = *(DerivedStorage + 160);
  if (v41)
  {
    TempFile = remakerFamily_createTempFile(v42, v43, v44, 0, 0, (DerivedStorage + 224));
    if (TempFile)
    {
      goto LABEL_59;
    }

    v45 = (DerivedStorage + 344);
    goto LABEL_71;
  }

  v45 = (DerivedStorage + 216);
  TempFile = remakerFamily_createTempFile(v42, v43, v44, 0, (DerivedStorage + 216), (DerivedStorage + 224));
  if (!TempFile)
  {
LABEL_71:
    v24 = *v45;
    CFDictionarySetValue(v16, @"WriteFileType", @"WriteFileType_OnlyInWriteHeaderToByteStream");
    a6 = v40;
    v21 = v39;
    a4 = v38;
    a3 = v37;
    v20 = v50;
LABEL_37:
    v25 = *(DerivedStorage + 168);
    if (v25 && v24 && v25 != v24)
    {
      v26 = v20;
      v27 = a3;
      v28 = a4;
      v29 = v21;
      v30 = a6;
      cf = 0;
      CMBaseObject = CMByteStreamGetCMBaseObject();
      v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v32)
      {
        v33 = CMBaseObject;
        v34 = *MEMORY[0x1E695FF88];
        if (!v32(v33))
        {
          v51 = cf;
          v49 = CMByteStreamGetCMBaseObject();
          v48 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v48)
          {
            v48(v49, v34, v51);
          }
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }

      a6 = v30;
      v21 = v29;
      a4 = v28;
      a3 = v27;
      v20 = v26;
    }

    if (a3 >= 1)
    {
      cf = 0;
      v35 = *(CMBaseObjectGetVTable() + 16);
      if (*v35 >= 3uLL)
      {
        v36 = v35[6];
        if (v36)
        {
          v36(v24, a3, 2, &cf);
        }
      }
    }

    if (v19)
    {
      FigAudioFileFormatWriterCreateWithByteStream(a2, v24, v16, a6);
    }

    else if (v20)
    {
      TempFile = FigTTMLFormatWriterCreateWithByteStream(a2, v24, v16, a6);
    }

    else if (v21)
    {
      TempFile = FigSCCFormatWriterCreateWithByteStream(a2, v24, v16, a6);
    }

    else if (v53)
    {
      if (a4)
      {
        TempFile = FigWebVTTFormatWriterCreateForWritingWebVTTSegments(a2, a4, a1, v16, a6);
      }

      else
      {
        TempFile = FigWebVTTFormatWriterCreateWithByteStream(a2, v24, v16, a6);
      }
    }

    else if (a4)
    {
      TempFile = FigMovieFormatWriterCreateForWritingMovieFragments(a2, remakerFamily_MovieFormatWriterFragmentCallback, a1, v16, a6);
    }

    else
    {
      TempFile = FigMovieFormatWriterCreateWithByteStream(a2, v24, v16, a6);
    }
  }

LABEL_59:
  v46 = TempFile;
  CFRelease(v16);
  if (v54)
  {
    CFRelease(v54);
  }

  return v46;
}

uint64_t remakerFamily_MovieFormatWriterFragmentCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(CMBaseObjectGetDerivedStorage() + 296);

  return v8(a1, a2, a5);
}

uint64_t remakerFamily_createChannel(const void *a1, int a2, int a3, uint64_t *a4)
{
  CFGetAllocator(a1);
  MEMORY[0x19A8D3660](&FigRemakerTrackGetTypeID_sRegisterFigRemakerTrackOnce, RegisterFigRemakerTrack);
  Instance = _CFRuntimeCreateInstance();
  v9 = Instance;
  if (!a1)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v19, v20[1]);
    v14 = v16;
    if (!v9)
    {
      return v14;
    }

    goto LABEL_13;
  }

  if (!Instance)
  {
    remakerFamily_createChannel_cold_2(a1, v20);
    return v20[0];
  }

  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  FigKTraceInit();
  *(v9 + 16) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v9 + 28) = a2;
  *(v9 + 32) = a3;
  CFGetAllocator(a1);
  MEMORY[0x19A8D3660](&FigAssetReaderTrackGetTypeID_sRegisterFigAssetReaderTrackOnce, RegisterFigAssetReaderTrack);
  v10 = _CFRuntimeCreateInstance();
  if (!v10)
  {
    v17 = 2364;
LABEL_12:
    remakerFamily_createChannel_cold_1(a1, v17, &v19);
    v14 = v19;
LABEL_13:
    CFRelease(v9);
    return v14;
  }

  v11 = v10;
  *(v10 + 16) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v9 + 152) = v11;
  CFGetAllocator(a1);
  MEMORY[0x19A8D3660](&FigAssetWriterTrackGetTypeID_sRegisterFigAssetWriterTrackOnce, RegisterFigAssetWriterTrack);
  v12 = _CFRuntimeCreateInstance();
  if (!v12)
  {
    v17 = 2373;
    goto LABEL_12;
  }

  v13 = v12;
  v14 = 0;
  *(v12 + 16) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v9 + 160) = v13;
  *a4 = v9;
  return v14;
}

uint64_t remakerFamily_MapError(uint64_t a1, int a2)
{
  if (FigRemakerGetTypeID() == a1)
  {
    v4 = &unk_196E767C8;
LABEL_3:
    v5 = &v4[4 * a2];
    return *v5;
  }

  if (FigAssetReaderGetTypeID() == a1)
  {
    if (a2 < 6)
    {
      v5 = &unk_196E767E4 + 4 * a2;
      return *v5;
    }
  }

  else if (FigAssetWriterGetTypeID() == a1)
  {
    v4 = &unk_196E767FC;
    goto LABEL_3;
  }

  return 4294966297;
}

void remakerFamily_commitChannel(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    if (*(a2 + 56))
    {
      v5 = *(a2 + 32);
      if (v5 == 1986618469 || v5 == 1635088502)
      {
        FigStartForwardingMediaServicesProcessDeathNotification();
      }
    }

    CFArrayAppendValue(*(v4 + 80), a2);

    CFRelease(a2);
  }
}

void remakerFamily_discardChannel(uint64_t a1, intptr_t a2)
{
  if (a2)
  {
    if (*(a2 + 56))
    {
      v3 = *(a2 + 32);
      if (v3 == 1986618469 || v3 == 1635088502)
      {
        FigStopForwardingMediaServicesProcessDeathNotification();
      }
    }

    remakerFamily_removeTrackNotifications(a2);

    CFRelease(a2);
  }
}

uint64_t remakerFamily_setFormatWriterMovieTimeScaleIfAppropriate(uint64_t a1, uint64_t a2, int a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*(result + 392))
  {
    v6 = result;
    if (a3 == 1986618469 || a3 == 1936684398 && *(result + 388) != 1986618469)
    {
      FigFormatWriterGetFigBaseObject();
      v8 = v7;
      VTable = CMBaseObjectGetVTable();
      v10 = *(VTable + 8);
      result = VTable + 8;
      v11 = *(v10 + 56);
      if (v11)
      {
        result = v11(v8, @"MovieTimeScale", a2);
      }

      *(v6 + 388) = a3;
    }
  }

  return result;
}

uint64_t remakerFamily_createMultiPassPlaybackBossForTrack(uint64_t a1, void *a2)
{
  cf = 0;
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v4)
  {
    v5 = v4;
    if (*(a1 + 356) && *(a1 + 300))
    {
      RelatedTrackArray = remakerFamily_createRelatedTrackArray(a1, &cf);
      if (!RelatedTrackArray)
      {
        RelatedTrackArray = remakerFamily_createPlaybackBossForTracks(v5, cf, a1, &remakerFamily_multiPassPlaybackBossNotifications, a2);
      }

      v7 = RelatedTrackArray;
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v5);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    remakerFamily_createMultiPassPlaybackBossForTrack_cold_1(&v10);
    return v10;
  }

  return v7;
}

uint64_t remakerFamily_createRelatedTrackArray(_DWORD *a1, __CFArray **a2)
{
  v4 = a1[75];
  v5 = a1[76];
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!v6)
  {
    remakerFamily_createRelatedTrackArray_cold_1(&v19);
    return v19;
  }

  v8 = DerivedStorage;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 1, 0);
  CFArrayAppendValue(Mutable, a1);
  Count = CFArrayGetCount(*(v8 + 80));
  if (Count >= 1)
  {
    v11 = Count;
    for (i = 0; v11 != i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v8 + 80), i);
      if (ValueAtIndex != a1)
      {
        if (v4)
        {
          v14 = a1[75];
          v15 = ValueAtIndex[76];
          if (v14 != v15 && v5 != 0)
          {
LABEL_13:
            v14 = a1[76];
            v15 = ValueAtIndex[75];
          }

          if (v14 == v15)
          {
            CFArrayAppendValue(Mutable, ValueAtIndex);
          }

          continue;
        }

        if (v5)
        {
          goto LABEL_13;
        }
      }
    }
  }

  if (a2)
  {
    *a2 = Mutable;
    v17 = v6;
LABEL_21:
    CFRelease(v17);
    return 0;
  }

  CFRelease(v6);
  if (Mutable)
  {
    v17 = Mutable;
    goto LABEL_21;
  }

  return 0;
}

uint64_t remakerFamily_createPlaybackBossForTracks(const void *a1, const __CFArray *a2, uint64_t a3, uint64_t a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v84[0] = 0;
  v83 = 0;
  v81 = 0;
  v82 = 0;
  v79 = 0;
  v80 = 0;
  v78 = 0;
  Count = CFArrayGetCount(a2);
  v10 = Count;
  if (Count < 1)
  {
    v63 = 0;
    v64 = 0;
    v11 = 0;
    v20 = 0;
    goto LABEL_95;
  }

  v64 = malloc_type_calloc(Count, 4uLL, 0x100004052888210uLL);
  v63 = malloc_type_calloc(v10, 8uLL, 0x2004093837F09uLL);
  v11 = malloc_type_calloc(v10, 8uLL, 0x6004044C4A2DFuLL);
  v65 = *MEMORY[0x1E695E480];
  FigAssetGetCMBaseObject();
  v13 = v12;
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v14)
  {
    v14(v13, @"iTunesGaplessInfo", v65, v84);
  }

  theArray = a2;
  v15 = *(DerivedStorage + 72);
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v16)
  {
    v16(v15, 1936684398, &v80);
  }

  if (v80 && CFArrayGetCount(v80) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v80, 0);
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v18)
    {
LABEL_94:
      v20 = 4294954514;
      goto LABEL_95;
    }

    v19 = v18(ValueAtIndex, &v83, 0);
    if (v19)
    {
LABEL_10:
      v20 = v19;
      goto LABEL_95;
    }
  }

  FigAssetGetCMBaseObject();
  v22 = v21;
  v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v23)
  {
    goto LABEL_94;
  }

  v56 = a5;
  cf = a1;
  v19 = v23(v22, @"assetProperty_FormatReader", v65, &v79);
  if (v19)
  {
    goto LABEL_10;
  }

  v60 = 0;
  v24 = 0;
  v25 = 0;
  v58 = *MEMORY[0x1E695E4C0];
  v26 = *MEMORY[0x1E695E4D0];
  v61 = 1;
  v27 = theArray;
  v59 = DerivedStorage;
  do
  {
    v28 = CFArrayGetValueAtIndex(v27, v25);
    v77 = 0;
    v29 = v28[7];
    if (v29)
    {
      v30 = v28;
      v64[v24] = *(v28 + 7);
      v63[v24] = v29;
      Mutable = CFDictionaryCreateMutable(v65, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v11[v24] = Mutable;
      if (!Mutable)
      {
        remakerFamily_createPlaybackBossForTracks_cold_1(&__dst);
        v20 = __dst;
        goto LABEL_95;
      }

      if (!*(v30 + 50))
      {
        CFDictionarySetValue(Mutable, @"BossTrack_TrimSampleBufferDurations", v58);
      }

      if (*(v30 + 49) && (*(v30 + 340) & 1) != 0)
      {
        __dst = *(v30 + 41);
        *v74 = v30[43];
        FigCFDictionarySetCMTime();
      }

      if (*(v30 + 51))
      {
        CFDictionarySetValue(v11[v24], @"BossTrack_SendSampleReferenceSampleBuffers", v26);
        v61 = 0;
      }

      if (*(v30 + 52))
      {
        CFDictionarySetValue(v11[v24], @"BossTrack_SendCaptionBackedSampleBuffers", v26);
      }

      if (*(v30 + 8) == 1936684398 && *(v30 + 50))
      {
        *&__dst = 0;
        v32 = *(DerivedStorage + 72);
        v33 = *(v30 + 7);
        v34 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (!v34)
        {
          goto LABEL_94;
        }

        v19 = v34(v32, v33, &__dst);
        if (v19)
        {
          goto LABEL_10;
        }

        FigAssetTrackGetCMBaseObject();
        v36 = v35;
        v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v37)
        {
          v37(v36, @"assetTrackProperty_EditsExcludeAudioPrimingAndRemainderDuration", v65, &v78);
        }

        DefaultEnhanced = 0;
        v39 = *(v30 + 7);
        v27 = theArray;
        if (v39 == v83 && v84[0])
        {
          v40 = v79;
          v41 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v41)
          {
            v41(v40, v39, &v77, 0);
          }

          if (v77)
          {
            DefaultEnhanced = FigGaplessInfoCopyAndEnhance_CorrectingWithTrackReader(v30[5], v77, v84[0]);
          }

          else
          {
            DefaultEnhanced = 0;
          }
        }

        v43 = v30[5];
        if (v43)
        {
          if (!DefaultEnhanced)
          {
            DefaultEnhanced = FigGaplessInfoCreateDefaultEnhanced(v43);
            v43 = v30[5];
          }

          GradualDecoderRefresh = FigGaplessInfoCreateGradualDecoderRefresh(v43);
          if (GradualDecoderRefresh)
          {
            CFDictionarySetValue(v11[v24], @"gdrCount", GradualDecoderRefresh);
          }

          if (FigGaplessInfoGetDefaultBonusAudioPrimingPacketCount(v30[5]))
          {
            FigCFDictionarySetInt32();
          }
        }

        else
        {
          GradualDecoderRefresh = 0;
        }

        if (v78 && CFEqual(v78, v26))
        {
          if (DefaultEnhanced)
          {
            CFRelease(DefaultEnhanced);
            DefaultEnhanced = 0;
          }
        }

        else if (DefaultEnhanced)
        {
          CFDictionarySetValue(v11[v24], @"iTunesGaplessInfo", DefaultEnhanced);
        }

        if (__dst)
        {
          CFRelease(__dst);
        }
      }

      else
      {
        GradualDecoderRefresh = 0;
        DefaultEnhanced = 0;
      }

      v44 = v11[v24];
      if (*(v30 + 17))
      {
        FigCFDictionarySetInt32();
        __dst = *(v30 + 9);
        *v74 = v30[11];
        FigCFDictionarySetCMTime();
        __dst = *(v30 + 6);
        *v74 = v30[14];
        FigCFDictionarySetCMTime();
        v44 = v11[v24];
      }

      if (*(v30 + 121))
      {
        __dst = *(v30 + 124);
        *v74 = *(v30 + 140);
        FigCFDictionarySetCMTime();
        v44 = v11[v24];
        v60 = 1;
      }

      if (*(v30 + 432))
      {
        CFDictionarySetValue(v44, @"BossTrack_RoundUpStartPTS", v26);
      }

      FigCFDictionarySetInt32();
      v45 = *(v30 + 8);
      if (v45 == 1635088502 || v45 == 1986618469)
      {
        v47 = *(DerivedStorage + 480);
        if (v47)
        {
          __dst = *MEMORY[0x1E6960CC0];
          *v74 = *(MEMORY[0x1E6960CC0] + 16);
          *&v74[8] = __dst;
          *&v74[24] = *v74;
          v75 = __dst;
          *v76 = *v74;
          *&v76[8] = __dst;
          *&v76[24] = *v74;
          FigVideoCompositionWindowGetFromSerializedConfigurationForTrack(v47, *(v30 + 7), &__dst);
          v69 = *&v74[16];
          v70 = v75;
          v71 = *v76;
          v72 = *&v76[16];
          *v68 = __dst;
          *&v68[16] = *v74;
          if (!FigVideoCompositionTimeWindowDurationIsZero(v68))
          {
            *v68 = __dst;
            *&v68[16] = *v74;
            FigCFDictionarySetCMTime();
            *v68 = *&v74[8];
            *&v68[16] = *&v74[24];
            FigCFDictionarySetCMTime();
            *v68 = __dst;
            *&v68[16] = *v74;
            FigCFDictionarySetCMTime();
            *v68 = *&v74[8];
            *&v68[16] = *&v74[24];
            FigCFDictionarySetCMTime();
            *v68 = *(v59 + 88);
            *&v68[16] = *(v59 + 104);
            FigCFDictionarySetCMTime();
            *v68 = *(v59 + 112);
            *&v68[16] = *(v59 + 128);
            FigCFDictionarySetCMTime();
            if (*(v59 + 136))
            {
              lhs = *(v59 + 88);
              *&rhs.value = __dst;
              rhs.epoch = *v74;
              CMTimeSubtract(v68, &lhs, &rhs);
              FigCFDictionarySetCMTime();
              lhs = *(v59 + 112);
              rhs = *&v74[8];
              CMTimeAdd(v68, &lhs, &rhs);
              FigCFDictionarySetCMTime();
            }
          }

          v27 = theArray;
          DerivedStorage = v59;
        }
      }

      else if (v45 == 1835365473)
      {
        v46 = *(DerivedStorage + 488);
        if (v46)
        {
          __dst = *MEMORY[0x1E6960CC0];
          *v74 = *(MEMORY[0x1E6960CC0] + 16);
          *&v74[8] = __dst;
          *&v74[24] = *v74;
          v75 = __dst;
          *v76 = *v74;
          *&v76[8] = __dst;
          *&v76[24] = *v74;
          FigVideoCompositionWindowGetFromSerializedConfigurationForTrack(v46, *(v30 + 7), &__dst);
          if (v19)
          {
            goto LABEL_10;
          }

          v69 = *&v74[16];
          v70 = v75;
          v71 = *v76;
          v72 = *&v76[16];
          *v68 = __dst;
          *&v68[16] = *v74;
          if (!FigVideoCompositionTimeWindowDurationIsZero(v68))
          {
            *v68 = __dst;
            *&v68[16] = *v74;
            FigCFDictionarySetCMTime();
            *v68 = *&v74[8];
            *&v68[16] = *&v74[24];
            FigCFDictionarySetCMTime();
            *v68 = __dst;
            *&v68[16] = *v74;
            FigCFDictionarySetCMTime();
            *v68 = *&v74[8];
            *&v68[16] = *&v74[24];
            FigCFDictionarySetCMTime();
            *v68 = *(DerivedStorage + 88);
            *&v68[16] = *(DerivedStorage + 104);
            FigCFDictionarySetCMTime();
            *v68 = *(DerivedStorage + 112);
            *&v68[16] = *(DerivedStorage + 128);
            FigCFDictionarySetCMTime();
            if (*(DerivedStorage + 136))
            {
              lhs = *(DerivedStorage + 88);
              *&rhs.value = __dst;
              rhs.epoch = *v74;
              CMTimeSubtract(v68, &lhs, &rhs);
              FigCFDictionarySetCMTime();
              lhs = *(DerivedStorage + 112);
              rhs = *&v74[8];
              CMTimeAdd(v68, &lhs, &rhs);
              FigCFDictionarySetCMTime();
            }
          }

          v27 = theArray;
        }
      }

      if (GradualDecoderRefresh)
      {
        CFRelease(GradualDecoderRefresh);
      }

      if (DefaultEnhanced)
      {
        CFRelease(DefaultEnhanced);
      }

      if (v78)
      {
        CFRelease(v78);
        v78 = 0;
      }

      if (v77)
      {
        CFRelease(v77);
      }

      ++v24;
    }

    ++v25;
  }

  while (v10 != v25);
  FigAssetGetCMBaseObject();
  v49 = v48;
  v50 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v50)
  {
    goto LABEL_94;
  }

  v19 = v50(v49, @"assetProperty_ByteStreamProvider", v65, &v82);
  if (v19)
  {
    goto LABEL_10;
  }

  if (!v61)
  {
    goto LABEL_115;
  }

  if (qword_1ED4CA968 != -1)
  {
    remakerFamily_createPlaybackBossForTracks_cold_2();
  }

  if (_MergedGlobals_51)
  {
    v51 = *(DerivedStorage + 32) ? 25 : 49;
  }

  else
  {
LABEL_115:
    v51 = 1;
  }

  v54 = CFGetAllocator(cf);
  FigPlaybackBossCreate(v54, v79, v24, v64, v63, v11, v82, 1, 0, v51, 0, &v81);
  if (v19)
  {
    goto LABEL_10;
  }

  if (v60)
  {
    FigPlaybackBossSetIFrameOnlySpeedThreshold(v81, 0.0);
    if (v19)
    {
      goto LABEL_10;
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v55 = FigNotificationCenterAddWeakListeners();
  v20 = v55;
  if (v56 && !v55)
  {
    *v56 = v81;
    v81 = 0;
    goto LABEL_97;
  }

LABEL_95:
  if (v81)
  {
    CFRelease(v81);
  }

LABEL_97:
  free(v64);
  free(v63);
  if (v11)
  {
    if (v10 >= 1)
    {
      v52 = v11;
      do
      {
        if (*v52)
        {
          CFRelease(*v52);
          *v52 = 0;
        }

        ++v52;
        --v10;
      }

      while (v10);
    }

    free(v11);
  }

  if (v84[0])
  {
    CFRelease(v84[0]);
    v84[0] = 0;
  }

  if (v82)
  {
    CFRelease(v82);
    v82 = 0;
  }

  if (v80)
  {
    CFRelease(v80);
  }

  if (v79)
  {
    CFRelease(v79);
  }

  if (v78)
  {
    CFRelease(v78);
  }

  return v20;
}

uint64_t remakerFamily_createSinglePassPlaybackBoss(const void *a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 80));
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 1, 0);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 80), i);
      if (!ValueAtIndex[356])
      {
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }
    }
  }

  PlaybackBossForTracks = remakerFamily_createPlaybackBossForTracks(a1, Mutable, a1, &remakerFamily_singlePassPlaybackBossNotifications, a2);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return PlaybackBossForTracks;
}

uint64_t remakerFamily_startTrack(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v5)
  {
    v6 = v5;
    v7 = *(a1 + 232);
    if (v7)
    {
      FigMediaProcessorGo(v7);
      if (*(*(a1 + 152) + 160))
      {
        v8 = *(a1 + 240);
        if (v8)
        {
          Count = CFArrayGetCount(v8);
          if (Count >= 2)
          {
            v10 = Count;
            for (i = 1; i != v10; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 240), i);
              FigMediaProcessorGo(ValueAtIndex);
            }
          }
        }
      }
    }

    v13 = *(a1 + 264);
    if (v13)
    {
      FigMediaProcessorGo(v13);
    }

    v14 = *(a1 + 288);
    if (v14)
    {
      if (*(a1 + 356))
      {
        v15 = CFGetTypeID(v6);
        TypeID = FigRemakerGetTypeID();
        v14 = *(a1 + 288);
        if (v15 == TypeID)
        {
          VTCompressionSession = FigMediaProcessorGetVTCompressionSession(v14);
          v18 = VTCompressionSessionBeginPass(VTCompressionSession, 0, 0);
          if (v18)
          {
            v19 = v18;
            CFRelease(v6);
            return v19;
          }

          v14 = *(a1 + 288);
        }
      }

      FigMediaProcessorGo(v14);
    }

    CFRelease(v6);
  }

  v21 = *a2;
  v22 = *(a2 + 2);
  return remakerFamily_startSourceRendererOfTrack(a1, &v21);
}

uint64_t remakerFamily_startAllMultiPassTracks(uint64_t a1, _BYTE *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 80));
  if (Count < 1)
  {
    return 0;
  }

  v6 = Count;
  v7 = 0;
  for (i = 0; i != v6; ++i)
  {
    memset(&v15, 0, sizeof(v15));
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 80), i);
    if (*(ValueAtIndex + 356))
    {
      v10 = ValueAtIndex;
      v11 = ValueAtIndex[52];
      if (v11)
      {
        *(v10 + 424) = 0;
        if (*(DerivedStorage + 136))
        {
          v14 = *(DerivedStorage + 88);
          result = FigPlaybackBossSendSampleForTime(v11, &v14, 4);
          if (result)
          {
            return result;
          }
        }

        else
        {
          v14 = *(DerivedStorage + 88);
          v13 = *(DerivedStorage + 112);
          result = FigPlaybackBossSendSamplesForTimeRange(v11, &v14, &v13, 4);
          if (result)
          {
            return result;
          }
        }
      }

      result = remakerFamily_getExpectedEndTime(a1, &v15);
      if (result)
      {
        return result;
      }

      v14 = *(DerivedStorage + 88);
      v13 = v15;
      result = remakerFamily_startTrack(v10, &v14.value, &v13.value);
      if (result)
      {
        return result;
      }

      ++v7;
    }
  }

  result = 0;
  if (a2)
  {
    if (v7 >= 1)
    {
      result = 0;
      *a2 = 1;
    }
  }

  return result;
}

uint64_t remakerFamily_getExpectedEndTime(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dictionaryRepresentation = 0;
  if (a2)
  {
    v4 = MEMORY[0x1E6960C88];
    *a2 = *MEMORY[0x1E6960C88];
    *(a2 + 16) = *(v4 + 16);
    if ((*(DerivedStorage + 124) & 0x1D) == 1)
    {
      v5 = 0;
      v6 = *(DerivedStorage + 112);
      *(a2 + 16) = *(DerivedStorage + 128);
      *a2 = v6;
    }

    else if (*(DerivedStorage + 72))
    {
      FigAssetGetCMBaseObject();
      v8 = v7;
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v9)
      {
        v5 = v9(v8, @"Duration", *MEMORY[0x1E695E480], &dictionaryRepresentation);
        v10 = dictionaryRepresentation;
        if (v5)
        {
          v11 = 1;
        }

        else
        {
          v11 = dictionaryRepresentation == 0;
        }

        if (!v11)
        {
          CMTimeMakeFromDictionary(&v13, dictionaryRepresentation);
          *a2 = *&v13.value;
          v10 = dictionaryRepresentation;
          *(a2 + 16) = v13.epoch;
        }

        if (v10)
        {
          CFRelease(v10);
        }
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    remakerFamily_getExpectedEndTime_cold_1(&v13);
    return LODWORD(v13.value);
  }

  return v5;
}

uint64_t remakerFamily_startAllSinglePassTracks(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 80));
  if (Count < 1)
  {
LABEL_7:
    result = *(DerivedStorage + 376);
    if (result)
    {
      if (*(DerivedStorage + 136))
      {
        v11 = *(DerivedStorage + 88);
        return FigPlaybackBossSendSampleForTime(result, &v11, 0);
      }

      else
      {
        v11 = *(DerivedStorage + 88);
        v10 = *(DerivedStorage + 112);
        return FigPlaybackBossSendSamplesForTimeRange(result, &v11, &v10, 0);
      }
    }
  }

  else
  {
    v4 = Count;
    v5 = 0;
    while (1)
    {
      memset(&v11, 0, sizeof(v11));
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 80), v5);
      if (!ValueAtIndex[356])
      {
        v7 = ValueAtIndex;
        result = remakerFamily_getExpectedEndTime(a1, &v11);
        if (result)
        {
          break;
        }

        v10 = *(DerivedStorage + 88);
        v9 = v11;
        result = remakerFamily_startTrack(v7, &v10.value, &v9.value);
        if (result)
        {
          break;
        }
      }

      if (v4 == ++v5)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t remakerFamily_MarkEndOfDataForTrack(uint64_t a1, int a2)
{
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!v4)
  {
    remakerFamily_MarkEndOfDataForTrack_cold_4(&queue);
    return queue;
  }

  v6 = DerivedStorage;
  v7 = *DerivedStorage;
  if (*DerivedStorage >= 7)
  {
    remakerFamily_MarkEndOfDataForTrack_cold_3(&queue);
    goto LABEL_26;
  }

  if (!DerivedStorage[5])
  {
    if (v7 >= 5)
    {
      remakerFamily_MarkEndOfDataForTrack_cold_2(&queue);
    }

    else
    {
      if (v7 > 2)
      {
        if (a2)
        {
          *(a1 + 424) = 257;
        }

        v8 = *(*(a1 + 160) + 32);
        if (!v8 || (v9 = CMBufferQueueMarkEndOfData(v8), !v9))
        {
          if (!*(a1 + 288))
          {
            v10 = *(v6 + 23);
            if (v10)
            {
              queue = 0;
              v11 = *(a1 + 300);
              v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
              if (v12)
              {
                v12(v10, v11, @"SourceSampleBufferQueue", *MEMORY[0x1E695E480], &queue);
                if (queue)
                {
                  if (queue != *(*(a1 + 160) + 32))
                  {
                    CMBufferQueueMarkEndOfData(queue);
                  }
                }
              }

              FigBufferQueueRelease();
            }
          }

          v13 = 0;
          goto LABEL_18;
        }

        goto LABEL_23;
      }

      remakerFamily_MarkEndOfDataForTrack_cold_1(&queue);
    }

LABEL_26:
    v13 = queue;
    goto LABEL_18;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, queue, v17);
LABEL_23:
  v13 = v9;
LABEL_18:
  CFRelease(v4);
  return v13;
}

uint64_t remakerFamily_copyFormatDescription(uint64_t a1, uint64_t a2, void *a3)
{
  theArray = 0;
  FigAssetTrackGetCMBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v8 = v7(v6, @"FormatDescriptionArray", *MEMORY[0x1E695E480], &theArray);
    if (v8 == -12521)
    {
      goto LABEL_11;
    }

    v9 = v8;
    if (v8)
    {
      goto LABEL_14;
    }

    if (theArray && CFArrayGetCount(theArray))
    {
      if (a3)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        if (ValueAtIndex)
        {
          ValueAtIndex = CFRetain(ValueAtIndex);
        }

        v9 = 0;
        *a3 = ValueAtIndex;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
LABEL_11:
      if (FigAssetReaderGetTypeID() == a1)
      {
        v9 = 4294955158;
      }

      else
      {
        v9 = 4294955173;
      }
    }
  }

  else
  {
    v9 = 4294954514;
  }

LABEL_14:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v9;
}

uint64_t remakerFamily_setupMultiPassTrackIfNecessary(const void *a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  if (!FigCFDictionaryGetBooleanIfPresent() || !*(a2 + 356))
  {
    goto LABEL_10;
  }

  if ((!a1 || (v6 = CFGetTypeID(a1), v6 != FigAssetReaderGetTypeID())) && ((v17 = **&MEMORY[0x1E6960C70], ExpectedDuration = remakerFamily_getExpectedDuration(a1, &v17), ExpectedDuration) || (v8 = CFGetTypeID(a1), ExpectedDuration = remakerFamily_createTempFile(v8, *(DerivedStorage + 232), *(DerivedStorage + 160), 0, 0, &v18), ExpectedDuration) || (FigFileDeleteFile(), v9 = *MEMORY[0x1E695E480], start = *(DerivedStorage + 88), v14 = v17, v10 = v18, CMTimeRangeMake(&timeRange, &start, &v14), ExpectedDuration = VTFrameSiloCreate(v9, v10, &timeRange, 0, (a2 + 360)), ExpectedDuration)))
  {
    value_low = ExpectedDuration;
  }

  else
  {
    *(a2 + 428) = 1;
    v11 = FigDispatchQueueCreateWithPriorityAndClientPID();
    *(a2 + 368) = v11;
    if (v11)
    {
      *(a2 + 408) = dispatch_semaphore_create(0);
      if (*(a2 + 368))
      {
LABEL_10:
        value_low = 0;
        goto LABEL_11;
      }

      remakerFamily_setupMultiPassTrackIfNecessary_cold_1(&timeRange);
    }

    else
    {
      remakerFamily_setupMultiPassTrackIfNecessary_cold_2(&timeRange);
    }

    value_low = LODWORD(timeRange.start.value);
  }

LABEL_11:
  if (v18)
  {
    CFRelease(v18);
  }

  return value_low;
}

CFStringRef remakerFamily_createRenderPipelineOptions(int a1, const void *a2, __int128 *a3, __int128 *a4, int a5, const void *a6, int a7, int a8, char a9, char a10, char a11, void *value, char a13, uint64_t a14, int a15, __CFDictionary **a16)
{
  if (!a16)
  {
    remakerFamily_createRenderPipelineOptions_cold_2(&v30);
    return v30;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 16, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    remakerFamily_createRenderPipelineOptions_cold_1(&v30);
    return v30;
  }

  v24 = Mutable;
  if (a2)
  {
    CFDictionarySetValue(Mutable, @"FormatDescription", a2);
  }

  if ((*(a3 + 3) & 0x1D) == 1)
  {
    v30 = *a3;
    v31 = *(a3 + 2);
    FigCFDictionarySetCMTime();
  }

  if ((*(a4 + 3) & 0x1D) == 1)
  {
    v30 = *a4;
    v31 = *(a4 + 2);
    FigCFDictionarySetCMTime();
  }

  v25 = MEMORY[0x1E695E4D0];
  if (a5)
  {
    CFDictionarySetValue(v24, @"AllowAMRDecode", *MEMORY[0x1E695E4D0]);
  }

  if (a6)
  {
    CFDictionarySetValue(v24, @"SharePixelBufferPool", a6);
  }

  v26 = *v25;
  if (a7)
  {
    CFDictionarySetValue(v24, @"MaximizePowerEfficiency", *v25);
  }

  if (a8)
  {
    CFDictionarySetValue(v24, @"InhibitPixelFormatConversion", v26);
  }

  if (a9)
  {
    CFDictionarySetValue(v24, @"InhibitCompressedBufferUse", v26);
  }

  CFDictionarySetValue(v24, @"NonRealTime", v26);
  if (a10)
  {
    CFDictionarySetValue(v24, @"RealTimePriority", v26);
  }

  if (a11)
  {
    CFDictionarySetValue(v24, @"EnableSpatialization", v26);
  }

  if (value)
  {
    CFDictionarySetValue(v24, @"DestFormatDescription", value);
  }

  if (a13)
  {
    CFDictionarySetValue(v24, @"DisableAsyncVideoDecompression", v26);
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  result = CFStringCreateWithFormat(AllocatorForMedia, 0, @"%s.t%d", a14, a15);
  if (result)
  {
    v29 = result;
    CFDictionarySetValue(v24, @"LoggingID", result);
    *a16 = v24;
    CFRelease(v29);
    return 0;
  }

  else
  {
    *a16 = v24;
  }

  return result;
}

uint64_t remakerFamily_getSourceASBDForTrackID(const void *a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  desc = 0;
  HIDWORD(v19) = 0;
  if (*DerivedStorage >= 7u)
  {
    remakerFamily_getSourceASBDForTrackID_cold_2(&v22);
LABEL_19:
    v14 = v22;
    goto LABEL_12;
  }

  v7 = *(DerivedStorage + 72);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8(v7, a2, &cf);
  if (v9)
  {
LABEL_20:
    v14 = v9;
    goto LABEL_12;
  }

  v10 = cf;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v11)
  {
LABEL_11:
    v14 = 4294954514;
    goto LABEL_12;
  }

  v9 = v11(v10, 0, &v19 + 4);
  if (v9)
  {
    goto LABEL_20;
  }

  if (HIDWORD(v19) != 1936684398)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, cf, desc);
    return v18;
  }

  v12 = CFGetTypeID(a1);
  v9 = remakerFamily_copyFormatDescription(v12, cf, &desc);
  if (v9)
  {
    goto LABEL_20;
  }

  RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(desc);
  if (!RichestDecodableFormat)
  {
    RichestDecodableFormat = CMAudioFormatDescriptionGetStreamBasicDescription(desc);
    if (!RichestDecodableFormat)
    {
      remakerFamily_getSourceASBDForTrackID_cold_1(&v22);
      goto LABEL_19;
    }
  }

  v14 = 0;
  v15 = *&RichestDecodableFormat->mASBD.mSampleRate;
  v16 = *&RichestDecodableFormat->mASBD.mBytesPerPacket;
  *(a3 + 32) = *&RichestDecodableFormat->mASBD.mBitsPerChannel;
  *a3 = v15;
  *(a3 + 16) = v16;
LABEL_12:
  if (desc)
  {
    CFRelease(desc);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

void remakerfamily_updateThrottleForBackground(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 80);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      v7 = *MEMORY[0x1E695E4D0];
      v8 = *MEMORY[0x1E695E4C0];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 80), v6);
        v10 = ValueAtIndex;
        if (*(ValueAtIndex + 8) == 1986618469)
        {
          v11 = ValueAtIndex[21];
          if (v11)
          {
            v12 = (*(DerivedStorage + 40) ? v7 : v8);
            FigVideoCompositionProcessorSetProperty(v11, @"VideoCompositionProcessor_ThrottleForBackground", v12);
            if (v13)
            {
              break;
            }
          }
        }

        if (*(v10 + 356))
        {
          v14 = v10[52];
          if (v14)
          {
            FigPlaybackBossSetThrottleForBackground(v14, *(DerivedStorage + 40));
          }
        }

        if (v5 == ++v6)
        {
          return;
        }
      }

      if (v13 == -12303)
      {
        if (a1)
        {
          v15 = CFGetTypeID(a1);
          if (v15 != FigRemakerGetTypeID())
          {
            CFGetTypeID(a1);
            FigAssetReaderGetTypeID();
          }
        }
      }
    }
  }
}

CFTypeRef remakerfamily_updateIOPolicy(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v2 = *MEMORY[0x1E695E480];
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, DerivedStorage + 57);
  if (v3)
  {
    v4 = v3;
    if (DerivedStorage[9])
    {
      FigAssetGetCMBaseObject();
      v6 = v5;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v7)
      {
        if (!v7(v6, @"assetProperty_ContentByteStream", v2, &cf) && cf != 0)
        {
          CMBaseObject = CMByteStreamGetCMBaseObject();
          v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v10)
          {
            v10(CMBaseObject, *MEMORY[0x1E695FF88], v4);
          }
        }
      }
    }

    if (DerivedStorage[21])
    {
      v11 = CMByteStreamGetCMBaseObject();
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v12)
      {
        v12(v11, *MEMORY[0x1E695FF88], v4);
      }
    }

    if (DerivedStorage[27])
    {
      v13 = CMByteStreamGetCMBaseObject();
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v14)
      {
        v14(v13, *MEMORY[0x1E695FF88], v4);
      }
    }

    CFRelease(v4);
    result = cf;
    if (cf)
    {
      CFRelease(cf);
      return 0;
    }
  }

  else
  {
    remakerfamily_updateIOPolicy_cold_1(&v17);
    return v17;
  }

  return result;
}

uint64_t remakerfamily_updateJoinWritingThreadToNewWorkgroup(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage[394])
  {
    if (DerivedStorage[32])
    {
      if (DerivedStorage[176])
      {
        FigFormatWriterGetFigBaseObject();
        v4 = v3;
        v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v5)
        {
          v5(v4, @"JoinWritingThreadToNewWorkgroup", *MEMORY[0x1E695E4D0]);
        }
      }
    }
  }

  return 0;
}

void remakerfamily_setFailureStatusIfError(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17020)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a2)
  {
    if ((*DerivedStorage & 0xFFFFFFFE) != 6)
    {
      DerivedStorage[5] = a2;
    }

    remakerFamily_SetRemakerState(a1, 6, 0);
  }
}

double remakerFamily_SinglePassBossBecameIdle(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage >= 7u)
  {
    return remakerFamily_SinglePassBossBecameIdle_cold_1(DerivedStorage, v8, v9, v10, v11, v12, v13, v14, v17, v18, SHIDWORD(v18), v19);
  }

  *(DerivedStorage + 384) = 1;
  if (dword_1EAF17020)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!remakerFamily_HandleNotificationErrorPayload(a2, 0, a5, @"OSStatus"))
  {
    remakerFamily_performLastStepIfComplete(a2);
  }

  return result;
}

uint64_t remakerFamily_HandleNotificationErrorPayload(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (FigCFDictionaryGetInt32IfPresent())
  {
    remakerFamily_PostFailureNotificationIfError(a1, a2, 0, 1u, 0);
  }

  return 0;
}

uint64_t remakerFamily_performLastStepIfComplete(const void *a1)
{
  v136 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage >= 7u)
  {
    remakerFamily_performLastStepIfComplete_cold_11(v135);
    return LODWORD(v135[0].value);
  }

  v3 = DerivedStorage;
  v4 = *(DerivedStorage + 64);
  if (v4)
  {
    FigSimpleMutexLock();
  }

  if (*(v3 + 384))
  {
    Count = CFArrayGetCount(*(v3 + 80));
    if (Count < 1)
    {
LABEL_20:
      v9 = 0;
      if (!v4)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v6 = Count;
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 80), v7);
      if (*(ValueAtIndex + 33))
      {
        if (!ValueAtIndex[280])
        {
          break;
        }
      }

      if (*(ValueAtIndex + 29) && !ValueAtIndex[256] || *(ValueAtIndex + 36) && !ValueAtIndex[296] || *(ValueAtIndex + 25) && !ValueAtIndex[216] || *(ValueAtIndex + 21) && !ValueAtIndex[184] || *(ValueAtIndex + 45) && !ValueAtIndex[357])
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_20;
      }
    }
  }

  v9 = 1;
  if (v4)
  {
LABEL_23:
    FigSimpleMutexUnlock();
  }

LABEL_24:
  if ((v9 & 1) != 0 || !FigAtomicCompareAndSwap32())
  {
    return 0;
  }

  v12 = CMBaseObjectGetDerivedStorage();
  v13 = &dword_1EAF17000;
  if (dword_1EAF17020)
  {
    LODWORD(desc) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (*v12 >= 7u)
  {
    remakerFamily_performLastStepIfComplete_cold_6(v135);
    value_low = LODWORD(v135[0].value);
    goto LABEL_43;
  }

  if (a1)
  {
    v15 = CFGetTypeID(a1);
    if (v15 == FigAssetReaderGetTypeID())
    {
      goto LABEL_189;
    }
  }

  if (!FigAtomicCompareAndSwap32() && dword_1EAF17020)
  {
    LODWORD(desc) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ((*(v12 + 124) & 0x1D) == 1)
  {
    v17 = *(v12 + 184);
    cf = *(v12 + 112);
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (!v18)
    {
      goto LABEL_42;
    }

    v135[0] = cf;
    v19 = v18(v17, v135);
    if (v19)
    {
      goto LABEL_179;
    }
  }

  v20 = *(v12 + 184);
  v21 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v21)
  {
    goto LABEL_42;
  }

  v127 = v12;
  v31 = v21(v20, 0);
  if (v31)
  {
    value_low = v31;
    goto LABEL_43;
  }

  v32 = CMBaseObjectGetDerivedStorage();
  v33 = CFArrayGetCount(*(v32 + 80));
  if (v33 >= 1)
  {
    v34 = v33;
    v35 = 0;
    allocator = *MEMORY[0x1E695E480];
    while (1)
    {
      v36 = CFArrayGetValueAtIndex(*(v32 + 80), v35);
      v37 = v36[36];
      if (v37)
      {
        if (FigMediaProcessorGetSampleBufferProcessor(v37))
        {
          break;
        }
      }

LABEL_93:
      if (v34 == ++v35)
      {
        goto LABEL_100;
      }
    }

    v38 = *(v36 + 75);
    *type = 0;
    desc = 0;
    theArray = 0;
    if (v38)
    {
      FigSampleBufferProcessorGetFigBaseObject();
      v40 = v39;
      v41 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v41)
      {
        if (!v41(v40, @"SampleBufferProcessorProperty_ImprovedOutputFormatDescription", allocator, &desc))
        {
          if (!desc)
          {
            Mutable = 0;
LABEL_87:
            if (*type)
            {
              CFRelease(*type);
              *type = 0;
            }

            if (theArray)
            {
              CFRelease(theArray);
              theArray = 0;
            }

            if (Mutable)
            {
              CFRelease(Mutable);
            }

            goto LABEL_93;
          }

          if (CMFormatDescriptionGetMediaType(desc) == 1936684398)
          {
            StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(desc);
            if (StreamBasicDescription)
            {
              if (StreamBasicDescription->mFormatID == 1634754915)
              {
                FigSampleBufferProcessorGetFigBaseObject();
                v44 = v43;
                v45 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v45)
                {
                  if (!v45(v44, @"SampleBufferProcessor_OutputFormatDescription", allocator, type) && !FigCFEqual())
                  {
                    if (v13[8])
                    {
                      v132[0] = OS_LOG_TYPE_DEFAULT;
                      v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      os_log_type_enabled(v46, v132[0]);
                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                      v13 = &dword_1EAF17000;
                    }

                    if (!remakerFamily_CopyFormatWriterTrackProperty(a1, v38, @"FormatDescriptionArray", allocator, &theArray) && theArray && CFArrayGetCount(theArray) == 1)
                    {
                      CFArrayGetValueAtIndex(theArray, 0);
                      if (FigCFEqual())
                      {
                        Mutable = CFArrayCreateMutable(allocator, 1, MEMORY[0x1E695E9C0]);
                        CFArrayAppendValue(Mutable, desc);
                        if (remakerFamily_SetFormatWriterTrackProperty(a1, v38, @"ReplacementFormatDescriptionArray", Mutable))
                        {
                          v132[0] = OS_LOG_TYPE_DEFAULT;
                          v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                          os_log_type_enabled(v48, v132[0]);
                        }

                        else
                        {
                          if (!v13[8])
                          {
                            goto LABEL_85;
                          }

                          v132[0] = OS_LOG_TYPE_DEFAULT;
                          v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                          os_log_type_enabled(v50, v132[0]);
                        }

                        fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_98:
                        v13 = &dword_1EAF17000;
LABEL_85:
                        if (desc)
                        {
                          CFRelease(desc);
                          desc = 0;
                        }

                        goto LABEL_87;
                      }

                      if (v13[8])
                      {
                        v132[0] = OS_LOG_TYPE_DEFAULT;
                        v49 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                        os_log_type_enabled(v49, v132[0]);
                        fig_log_call_emit_and_clean_up_after_send_and_compose();
                        Mutable = 0;
                        goto LABEL_98;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    Mutable = 0;
    goto LABEL_85;
  }

LABEL_100:
  CMBaseObjectGetDerivedStorage();
  v135[0].value = 0;
  cf.value = 0;
  if (!a1)
  {
    goto LABEL_131;
  }

  v51 = CFGetTypeID(a1);
  if (v51 != FigRemakerGetTypeID())
  {
    value_low = 0;
    v55 = 0;
    v12 = v127;
    goto LABEL_125;
  }

  FigAssetGetCMBaseObject();
  v53 = v52;
  v54 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v12 = v127;
  if (v54)
  {
    v56 = *MEMORY[0x1E695E480];
    v54(v53, @"assetProperty_TrackReferences", *MEMORY[0x1E695E480], v135);
    if (!v135[0].value)
    {
      goto LABEL_131;
    }

    v57 = CMBaseObjectGetDerivedStorage();
    v58 = CFArrayGetCount(*(v57 + 80));
    v55 = CFDictionaryCreateMutable(v56, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v55)
    {
      v12 = v127;
      if (v58 >= 1)
      {
        for (i = 0; i != v58; ++i)
        {
          v60 = CFArrayGetValueAtIndex(*(v57 + 80), i);
          v61 = v60[7];
          LODWORD(desc) = v61;
          v62 = v60[75];
          if (!v62)
          {
            v62 = v60[76];
          }

          *type = v62;
          if (v61)
          {
            v63 = v62 == 0;
          }

          else
          {
            v63 = 1;
          }

          if (!v63)
          {
            v64 = CFNumberCreate(v56, kCFNumberSInt32Type, &desc);
            v65 = CFNumberCreate(v56, kCFNumberSInt32Type, type);
            CFDictionaryAddValue(v55, v64, v65);
            if (v65)
            {
              CFRelease(v65);
            }

            if (v64)
            {
              CFRelease(v64);
            }
          }
        }
      }
    }

    else
    {
      v12 = v127;
      if (!remakerFamily_performLastStepIfComplete_cold_1(&desc))
      {
        v55 = 0;
        value_low = desc;
LABEL_124:
        v13 = &dword_1EAF17000;
        goto LABEL_125;
      }
    }

    value_low = remakerFamily_createDestinationTrackReferenceDictionary(v55, v135[0].value, &cf);
    value = cf.value;
    if (!value_low)
    {
      FigFormatWriterGetFigBaseObject();
      v68 = v67;
      v69 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v69)
      {
        v69(v68, @"TrackReference", value);
      }
    }

    if (value)
    {
      CFRelease(value);
    }

    goto LABEL_124;
  }

  value_low = 0;
  v55 = 0;
LABEL_125:
  if (v135[0].value)
  {
    CFRelease(v135[0].value);
    if (!v55)
    {
LABEL_127:
      if (value_low)
      {
        goto LABEL_43;
      }

      goto LABEL_131;
    }
  }

  else if (!v55)
  {
    goto LABEL_127;
  }

  CFRelease(v55);
  if (value_low)
  {
    goto LABEL_43;
  }

LABEL_131:
  v70 = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    goto LABEL_160;
  }

  v71 = v70;
  v72 = CFGetTypeID(a1);
  if (v72 != FigRemakerGetTypeID())
  {
    goto LABEL_160;
  }

  v73 = CFArrayGetCount(*(v71 + 80));
  if (v73 < 1)
  {
    goto LABEL_160;
  }

  v74 = v73;
  v75 = 0;
  v76 = *MEMORY[0x1E695E480];
  v77 = MEMORY[0x1E6960CC0];
  while (1)
  {
    v78 = CFArrayGetValueAtIndex(*(v71 + 80), v75);
    if (*(v78 + 8) == 1936684398)
    {
      break;
    }

LABEL_147:
    if (v74 == ++v75)
    {
      goto LABEL_160;
    }
  }

  desc = 0;
  if (*(v78 + 48))
  {
    v135[0] = *(v71 + 88);
    cf = *v77;
    if (!CMTimeCompare(v135, &cf) && (*(v71 + 124) & 0x1D) != 1)
    {
      FigAssetGetCMBaseObject();
      v80 = v79;
      v81 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v81)
      {
        v82 = v80;
        v83 = @"iTunesGaplessInfo";
LABEL_145:
        v81(v82, v83, v76, &desc);
      }
    }
  }

  else
  {
    v84 = *(v78 + 36);
    if (v84)
    {
      if (FigMediaProcessorGetSampleBufferProcessor(v84))
      {
        FigSampleBufferProcessorGetFigBaseObject();
        v86 = v85;
        v81 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v81)
        {
          v82 = v86;
          v83 = @"SampleBufferProcessor_iTunesGaplessInfo";
          goto LABEL_145;
        }
      }
    }
  }

  v87 = desc;
  if (!desc)
  {
    goto LABEL_147;
  }

  FigFormatWriterGetFigBaseObject();
  v91 = v90;
  v92 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v92)
  {
    v92(v91, @"iTunesGaplessInfo", v87);
  }

  CFRelease(desc);
LABEL_160:
  remakerFamily_transferMetadata(a1);
  v12 = v127;
  if (*(v127 + 240))
  {
    v95 = *(v127 + 336);
    v13 = &dword_1EAF17000;
    if (v95)
    {
      v110 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v110)
      {
        goto LABEL_42;
      }

      v19 = v110(v95);
      if (v19 || (v19 = CMByteStreamCreateForFileURL(), v19))
      {
LABEL_179:
        value_low = v19;
        goto LABEL_43;
      }
    }

    v96 = CMBaseObjectGetDerivedStorage();
    v135[0].value = 0;
    cf.value = 0;
    *type = 0;
    desc = 0;
    if (*v96 >= 7u)
    {
      remakerFamily_performLastStepIfComplete_cold_5(&theArray);
      v107 = 0;
      v103 = 0;
      goto LABEL_222;
    }

    v97 = v96;
    if (*(v96 + 241))
    {
      v111 = *(v96 + 184);
      v112 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (!v112)
      {
        goto LABEL_181;
      }

      v102 = v112(v111, 0);
      if (v102)
      {
        goto LABEL_191;
      }
    }

    FigFormatWriterGetFigBaseObject();
    v99 = v98;
    v100 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v100)
    {
      v101 = *MEMORY[0x1E695E480];
      v102 = v100(v99, @"HeaderByteCount", *MEMORY[0x1E695E480], v135);
      if (!v102)
      {
        v103 = CFDictionaryCreate(v101, kFigFormatWriterWriteHeaderOption_ByteOffsetToAddToAllSampleOffsets, v135, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v103)
        {
          v104 = *(v97 + 184);
          v105 = *(v97 + 168);
          v106 = *(*(CMBaseObjectGetVTable() + 16) + 72);
          if (!v106)
          {
            v107 = 0;
LABEL_182:
            value_low = 4294954514;
            goto LABEL_183;
          }

          v113 = v106(v104, v105, v103);
          if (v113)
          {
            value_low = v113;
            v107 = 0;
            goto LABEL_195;
          }

          FigFormatWriterGetFigBaseObject();
          v115 = v114;
          v116 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v116)
          {
            v107 = 0;
            value_low = 4294954514;
LABEL_195:
            v12 = v127;
            goto LABEL_183;
          }

          value_low = v116(v115, @"MediaDataLocation", v101, &cf);
          v117 = cf.value;
          if (value_low)
          {
            v107 = 0;
            if (!cf.value)
            {
              goto LABEL_220;
            }
          }

          else
          {
            FigCFArrayGetInt64AtIndex();
            FigCFArrayGetInt64AtIndex();
            v118 = desc;
            theArray = 0;
            v107 = malloc_type_malloc(0x20000uLL, 0x7B7EB5FAuLL);
            if (v107)
            {
              v119 = *type;
              if (*type >= 1)
              {
                while (1)
                {
                  if (*v97 >= 7u)
                  {
                    remakerFamily_performLastStepIfComplete_cold_2(v132);
                    goto LABEL_226;
                  }

                  if (v119 >= 0x20000)
                  {
                    v120 = 0x20000;
                  }

                  else
                  {
                    v120 = v119;
                  }

                  v121 = *(v97 + 216);
                  v122 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                  if (!v122)
                  {
                    value_low = 4294954514;
                    goto LABEL_218;
                  }

                  v123 = v122(v121, v120, v118, v107, &theArray);
                  if (v123)
                  {
                    break;
                  }

                  v124 = theArray;
                  if (theArray)
                  {
                    while (1)
                    {
                      v125 = CMByteStreamAppend();
                      if (v125)
                      {
                        break;
                      }

                      if (!v124)
                      {
                        v126 = theArray;
                        goto LABEL_211;
                      }
                    }

                    value_low = v125;
                    goto LABEL_218;
                  }

                  v126 = 0;
LABEL_211:
                  v118 = (v118 + v126);
                  v119 = (*type - v126);
                  *type = v119;
                  if (v119 <= 0)
                  {
                    goto LABEL_217;
                  }
                }

                value_low = v123;
                if (v123 != -12873)
                {
                  goto LABEL_218;
                }
              }

LABEL_217:
              value_low = 0;
            }

            else
            {
              remakerFamily_performLastStepIfComplete_cold_3(v132);
LABEL_226:
              value_low = *v132;
            }

LABEL_218:
            v117 = cf.value;
            if (!cf.value)
            {
              goto LABEL_220;
            }
          }

          CFRelease(v117);
LABEL_220:
          v12 = v127;
          goto LABEL_183;
        }

        remakerFamily_performLastStepIfComplete_cold_4(&theArray);
        v107 = 0;
LABEL_222:
        value_low = theArray;
LABEL_183:
        if (v135[0].value)
        {
          CFRelease(v135[0].value);
        }

        if (v103)
        {
          CFRelease(v103);
        }

        free(v107);
        v13 = &dword_1EAF17000;
        if (!value_low)
        {
          goto LABEL_188;
        }

        goto LABEL_43;
      }

LABEL_191:
      value_low = v102;
      v107 = 0;
      v103 = 0;
      goto LABEL_183;
    }

LABEL_181:
    v107 = 0;
    v103 = 0;
    goto LABEL_182;
  }

  v93 = *(v127 + 184);
  v94 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v94)
  {
    value_low = 4294954514;
    v13 = &dword_1EAF17000;
    goto LABEL_43;
  }

  v13 = &dword_1EAF17000;
  v19 = v94(v93, 0);
  if (v19)
  {
    goto LABEL_179;
  }

  v108 = *(v127 + 336);
  if (!v108)
  {
    goto LABEL_188;
  }

  v109 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v109)
  {
LABEL_42:
    value_low = 4294954514;
    goto LABEL_43;
  }

  v19 = v109(v108);
  if (v19)
  {
    goto LABEL_179;
  }

LABEL_188:
  remakerFamily_handleFinalHDRMetadataGenerationState(a1);
LABEL_189:
  value_low = 0;
LABEL_43:
  remakerFamily_registerPowerLogEvent(a1);
  remakerFamily_invalidateAllMediaProcessors(a1);
  if (a1)
  {
    v22 = CFGetTypeID(a1);
    if (v22 == FigRemakerGetTypeID())
    {
      remakerFamily_performLastStepIfComplete_cold_10(a1, value_low);
    }

    else
    {
      v23 = CFGetTypeID(a1);
      if (v23 == FigAssetWriterGetTypeID())
      {
        v24 = *(v12 + 56);
        if (dispatch_get_current_queue() != v24)
        {
          dispatch_sync_f(v24, 0, remakerFamily_NoOp);
        }

        remakerfamily_setFailureStatusIfError(a1, value_low);
        if (value_low != -12785)
        {
          if (value_low)
          {
            remakerFamily_PostFailureNotificationIfError(a1, 0, value_low, 0, 1u);
          }

          else if (*(v12 + 292))
          {
            v88 = CMBaseObjectGetDerivedStorage();
            v89 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (v89)
            {
              remakerFamily_performLastStepIfComplete_cold_7(v89, v88);
            }

            else
            {
              remakerFamily_performLastStepIfComplete_cold_8();
            }
          }

          else
          {
            remakerFamily_performLastStepIfComplete_cold_9(a1);
          }
        }
      }
    }
  }

  FigAtomicCompareAndSwap32();
  if (v13[8])
  {
    LODWORD(desc) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v26 = desc;
    v27 = type[0];
    if (os_log_type_enabled(v25, type[0]))
    {
      v28 = v26;
    }

    else
    {
      v28 = v26 & 0xFFFFFFFE;
    }

    if (v28)
    {
      v29 = remakerFamily_StateDesc(*v12);
      LODWORD(cf.value) = 136315906;
      *(&cf.value + 4) = "remakerFamily_handleLastStep";
      LOWORD(cf.flags) = 2048;
      *(&cf.flags + 2) = a1;
      HIWORD(cf.epoch) = 1024;
      v134[0] = value_low;
      LOWORD(v134[1]) = 2082;
      *(&v134[1] + 2) = v29;
      _os_log_send_and_compose_impl(v28, 0, v135, 128, &dword_1962D5000, v25, v27, "<<<< FigExportCommmon >>>> %s: Leaving [%p] err %d state %{public}s", &cf, 38);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1)
  {
    v30 = CFGetTypeID(a1);
    if (v30 == FigAssetWriterGetTypeID())
    {
      FigSemaphoreSignal();
    }
  }

  return value_low;
}

uint64_t remakerFamily_createVideoPixelTransferProperties(int a1, CFDictionaryRef theDict, int a3, __CFDictionary **a4)
{
  if (!theDict)
  {
    MutableCopy = 0;
LABEL_13:
    v13 = 0;
    *a4 = MutableCopy;
    return v13;
  }

  v7 = *MEMORY[0x1E695E480];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
  CFDictionaryRemoveValue(MutableCopy, @"MatrixHandling");
  v9 = *MEMORY[0x1E6983DC8];
  Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6983DC8]);
  if (!Value)
  {
    goto LABEL_13;
  }

  Mutable = Value;
  v12 = CFGetTypeID(Value);
  if (v12 != CFDictionaryGetTypeID())
  {
    goto LABEL_13;
  }

  if (a3 != 270 && a3 != 90)
  {
    CFRetain(Mutable);
    CFDictionarySetValue(MutableCopy, v9, Mutable);
LABEL_12:
    CFRelease(Mutable);
    goto LABEL_13;
  }

  if (FigCFDictionaryGetInt32IfPresent() && FigCFDictionaryGetInt32IfPresent())
  {
    Mutable = CFDictionaryCreateMutable(v7, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    CFDictionarySetValue(MutableCopy, v9, Mutable);
    if (!Mutable)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 0, v17);
  v13 = v15;
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v13;
}

void remakerFamily_startNextPassWork(uint64_t a1)
{
  v70 = *MEMORY[0x1E69E9840];
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (dword_1EAF17020)
  {
    LODWORD(timeRangeArrayOut.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!v2)
  {
    remakerFamily_startNextPassWork_cold_5(a1);
    goto LABEL_72;
  }

  if (*(a1 + 425))
  {
    goto LABEL_34;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CFGetTypeID(v2);
  TypeID = FigRemakerGetTypeID();
  type[0] = OS_LOG_TYPE_INFO;
  if (v5 == TypeID)
  {
    v7 = *(a1 + 408);
    if (v7)
    {
      dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    }

    v8 = *(a1 + 400);
    if (v8)
    {
      if (CFArrayGetCount(v8))
      {
        remakerFamily_startNextPassWork_cold_1(&v58);
        goto LABEL_82;
      }
    }
  }

  if (*DerivedStorage >= 7u)
  {
    remakerFamily_startNextPassWork_cold_2(&v58);
LABEL_82:
    value_low = LODWORD(v58.start.value);
    goto LABEL_31;
  }

  VTCompressionSession = FigMediaProcessorGetVTCompressionSession(*(a1 + 288));
  value_low = VTCompressionSessionEndPass(VTCompressionSession, type, 0);
  v11 = type[0];
  if (!value_low && type[0])
  {
    timeRangeCountOut.value = 0;
    timeRangeArrayOut.value = 0;
    TimeRangesForNextPass = VTCompressionSessionGetTimeRangesForNextPass(VTCompressionSession, &timeRangeCountOut.value, &timeRangeArrayOut);
    if (!TimeRangesForNextPass)
    {
      ++*(a1 + 428);
      TimeRangesForNextPass = remakerFamily_resetTrackMultiPassTimeRanges(a1, timeRangeArrayOut.value, timeRangeCountOut.value);
      if (!TimeRangesForNextPass)
      {
        if (v5 != TypeID || (TimeRangesForNextPass = VTFrameSiloSetTimeRangesForNextPass(*(a1 + 360), timeRangeCountOut.value, timeRangeArrayOut.value), !TimeRangesForNextPass) && (v13 = FigMediaProcessorGetVTCompressionSession(*(a1 + 288)), TimeRangesForNextPass = VTCompressionSessionBeginPass(v13, 0, 0), !TimeRangesForNextPass) && (v58 = *timeRangeArrayOut.value, TimeRangesForNextPass = remakerFamily_resetSourceRenderersForNextSegment(a1, &v58, 1), !TimeRangesForNextPass))
        {
          *(a1 + 296) = 0;
          FigMediaProcessorReset(*(a1 + 288), 1);
          if (!TimeRangesForNextPass)
          {
            v14 = *(a1 + 232);
            if (!v14)
            {
LABEL_28:
              v21 = *(*(a1 + 160) + 32);
              if (v21)
              {
                CMBufferQueueReset(v21);
              }

              value_low = 0;
              goto LABEL_31;
            }

            *(a1 + 256) = 0;
            FigMediaProcessorReset(v14, 1);
            if (!TimeRangesForNextPass)
            {
              if (*(*(a1 + 152) + 160))
              {
                v15 = *(a1 + 240);
                if (v15)
                {
                  Count = CFArrayGetCount(v15);
                  if (Count >= 2)
                  {
                    v17 = Count;
                    v18 = 1;
                    while (1)
                    {
                      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 240), v18);
                      FigMediaProcessorReset(ValueAtIndex, 1);
                      if (started)
                      {
                        goto LABEL_73;
                      }

                      if (v17 == ++v18)
                      {
                        goto LABEL_28;
                      }
                    }
                  }
                }
              }

              goto LABEL_28;
            }
          }
        }
      }
    }

    value_low = TimeRangesForNextPass;
LABEL_31:
    v11 = type[0];
  }

  if (value_low)
  {
    goto LABEL_71;
  }

  if (v11)
  {
    v22 = 0;
    goto LABEL_46;
  }

LABEL_34:
  v22 = 1;
  if (*(a1 + 358))
  {
    goto LABEL_46;
  }

  *(a1 + 358) = 1;
  started = remakerFamily_startAllSinglePassTracks(v2);
  if (started)
  {
LABEL_73:
    value_low = started;
    goto LABEL_71;
  }

  v23 = FigCFWeakReferenceHolderCopyReferencedObject();
  v24 = CMBaseObjectGetDerivedStorage();
  *type = 0;
  if (!v23)
  {
    remakerFamily_startNextPassWork_cold_4(&v58);
    value_low = LODWORD(v58.start.value);
    if (LODWORD(v58.start.value))
    {
      goto LABEL_71;
    }

LABEL_46:
    if (*(a1 + 425))
    {
      goto LABEL_70;
    }

    v32 = CFGetTypeID(v2);
    if (v32 != FigAssetWriterGetTypeID())
    {
      goto LABEL_70;
    }

    timeRangeArrayOut.value = 0;
    *type = 0;
    v33 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (dword_1EAF17020)
    {
      HIDWORD(v52) = 0;
      BYTE3(v52) = 0;
      v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v35 = HIDWORD(v52);
      v36 = BYTE3(v52);
      if (os_log_type_enabled(v34, BYTE3(v52)))
      {
        v37 = v35;
      }

      else
      {
        v37 = v35 & 0xFFFFFFFE;
      }

      if (v37)
      {
        LODWORD(timeRangeCountOut.value) = 136315394;
        *(&timeRangeCountOut.value + 4) = "assetWriter_postPassFinishedNotification";
        LOWORD(timeRangeCountOut.flags) = 2048;
        *(&timeRangeCountOut.flags + 2) = v33;
        _os_log_send_and_compose_impl(v37, 0, &v58, 128, &dword_1962D5000, v34, v36, "<<<< FigExportCommmon >>>> %s: (%p)", &timeRangeCountOut, 22);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (!v33)
    {
LABEL_69:
      free(timeRangeArrayOut.value);
LABEL_70:
      value_low = 0;
      goto LABEL_71;
    }

    v38 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v40 = Mutable;
    v41 = MEMORY[0x1E695E4C0];
    if (!v22)
    {
      v41 = MEMORY[0x1E695E4D0];
    }

    CFDictionarySetValue(Mutable, @"AssetWriter_FurtherPassesRequested", *v41);
    FigCFDictionarySetInt32();
    if ((v22 & 1) != 0 || (v45 = *(a1 + 400)) == 0 || CFArrayGetCount(v45) < 1)
    {
      v46 = 0;
    }

    else
    {
      if (remakerFamily_createTimeRangesCArray(*(a1 + 400), type, &timeRangeArrayOut))
      {
        v46 = 0;
        goto LABEL_65;
      }

      v46 = CFDataCreate(v38, timeRangeArrayOut.value, 48 * *type);
      CFDictionarySetValue(v40, @"AssetWriter_PassTimeRanges", v46);
    }

    remakerFamily_safelyPostNotification(v33, 0, @"AssetWriter_WriterTrackIDPassFinished", v40, v33, v42, v43, v44, v47, v48, timeRangeArrayOut.value, timeRangeArrayOut.timescale, SBYTE2(timeRangeArrayOut.timescale), HIBYTE(timeRangeArrayOut.timescale), timeRangeArrayOut.flags, timeRangeArrayOut.epoch, SHIDWORD(timeRangeArrayOut.epoch), v50, v51, v52, *type, timeRangeCountOut.value, *&timeRangeCountOut.timescale, timeRangeCountOut.epoch, v55, v56, v57, v58.start.value, *&v58.start.timescale, v58.start.epoch, v58.duration.value, *&v58.duration.timescale, v58.duration.epoch, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76);
LABEL_65:
    CFRelease(v33);
    if (v40)
    {
      CFRelease(v40);
    }

    if (v46)
    {
      CFRelease(v46);
    }

    goto LABEL_69;
  }

  v25 = v24;
  if (*v24 >= 7u)
  {
    remakerFamily_startNextPassWork_cold_3(&v58);
    value_low = LODWORD(v58.start.value);
  }

  else
  {
    *(a1 + 376) = FigSemaphoreCreate();
    v26 = *(v25 + 23);
    v27 = *(a1 + 300);
    CMTimeMake(&v58.start, 2, 1);
    CMTimeMake(&timeRangeCountOut, 1, 1);
    FigSampleBufferConsumerCreateForFormatWriter(v26, v27, &v58, 0, &timeRangeCountOut, 0, (a1 + 384));
    if (v28)
    {
      goto LABEL_80;
    }

    v29 = *(a1 + 384);
    v30 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v30)
    {
      value_low = 4294954514;
      goto LABEL_45;
    }

    v28 = v30(v29, remakerFamily_frameSiloLowWaterTrigger, a1, type);
    if (v28)
    {
LABEL_80:
      value_low = v28;
    }

    else
    {
      v31 = *(a1 + 360);
      timeRangeCountOut = *(v25 + 22);
      timeRangeArrayOut = *(v25 + 28);
      CMTimeRangeFromTimeToTime(&v58, &timeRangeCountOut, &timeRangeArrayOut);
      value_low = VTFrameSiloCallFunctionForEachSampleBuffer(v31, &v58, a1, remakerFamily_addFrameFromSiloToFormatWriter);
      if (!value_low)
      {
        remakerFamily_markFormatWriterTrackWithEOD(a1);
        *(a1 + 357) = 1;
        remakerFamily_performLastStepIfComplete(v23);
      }
    }
  }

LABEL_45:
  CFRelease(v23);
  if (!value_low)
  {
    goto LABEL_46;
  }

LABEL_71:
  remakerFamily_PostFailureNotificationIfError(v2, a1, value_low, 1u, 0);
  CFRelease(v2);
LABEL_72:
  CFRelease(a1);
}

void remakerFamily_VideoCompositionProcessorErrorOccurred(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  *(a2 + 184) = 1;
  remakerFamily_HandleNotificationErrorPayload(v7, a2, a5, @"VideoCompositionProcessor_Result");
  if (v7)
  {

    CFRelease(v7);
  }
}

uint64_t remakerFamily_getTrackRotationAngle(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v11 = 0;
  FigAssetTrackGetCMBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    return 0;
  }

  v7(v6, @"PreferredTransform", *MEMORY[0x1E695E480], &v11);
  if (!v11)
  {
    return 0;
  }

  FigGetCGAffineTransformFrom3x3MatrixArray(v11, v10);
  RotationAngleAndFlipsFromCGAffineTransform = FigGetRotationAngleAndFlipsFromCGAffineTransform(v10, a2, a3);
  CFRelease(v11);
  return RotationAngleAndFlipsFromCGAffineTransform;
}

CFDictionaryRef remakerFamily_IsRasterFormatDescription(const opaqueCMFormatDescription *a1)
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  result = CVPixelFormatDescriptionCreateWithPixelFormatType(0, MediaSubType);
  if (result)
  {
    CFRelease(result);
    return 1;
  }

  return result;
}

uint64_t remakerFamily_finishVideoCompositionChannel(const void *a1, uint64_t a2, const __CFArray *a3, const __CFArray *a4, __CFString *a5, const void *a6, const void *a7, unsigned int a8, const __CFArray *a9, uint64_t a10, const void *a11, __int128 *a12, unsigned int a13, int a14, int a15, const void *a16, CFDictionaryRef theDict, const __CFDictionary *a18, const __CFArray *a19, OpaqueCMTimebase *a20)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v166 = 0;
  v165 = 1986618469;
  v163 = 0;
  v164 = 0;
  __dst = *MEMORY[0x1E6960CC0];
  v28 = *(MEMORY[0x1E6960CC0] + 16);
  *&v160[8] = __dst;
  *v160 = v28;
  *&v160[24] = v28;
  v161 = __dst;
  *v162 = v28;
  *&v162[24] = v28;
  *&v162[8] = __dst;
  formatDescription = 0;
  value = 0;
  v155 = 0;
  v156 = 0;
  v154 = 0;
  cf1 = 0;
  if (*(DerivedStorage + 32))
  {
    v29 = 30;
  }

  else
  {
    v29 = 31;
  }

  valuePtr = v29;
  queueOut = 0;
  v150 = 0;
  cf = 0;
  tagCollectionsOut = 0;
  v132 = a3;
  Count = CFArrayGetCount(a3);
  theArray = a4;
  v128 = a7;
  if (a4)
  {
    v30 = CFArrayGetCount(a4);
  }

  else
  {
    v30 = 0;
  }

  v153 = 0;
  v31 = v30 + Count;
  v135 = malloc_type_calloc(8uLL, v30 + Count, 0xC918AAF5uLL);
  if (!a5)
  {
    a5 = @"RemakerFamilyVideoCompositor_DeviceSpecific";
  }

  if (CFEqual(a5, @"RemakerFamilyVideoCompositor_Basic"))
  {
    v32 = @"VideoCompositorBasic";
LABEL_11:
    v33 = CFRetain(v32);
    cf1 = v33;
    goto LABEL_12;
  }

  if (CFEqual(a5, @"RemakerFamilyVideoCompositor_vImage"))
  {
    v32 = @"VideoCompositorvImage";
    goto LABEL_11;
  }

  if (CFEqual(a5, @"RemakerFamilyVideoCompositor_Metal"))
  {
    v32 = @"VideoCompositorMetal";
    goto LABEL_11;
  }

  if (CFEqual(a5, @"RemakerFamilyVideoCompositor_OpenGL"))
  {
    v32 = @"VideoCompositorOpenGL";
    goto LABEL_11;
  }

  if (!CFEqual(a5, @"RemakerFamilyVideoCompositor_DeviceSpecific"))
  {
    TypeID = FigVideoCompositorGetTypeID();
    if (TypeID != CFGetTypeID(a5))
    {
      remakerFamily_finishVideoCompositionChannel_cold_13(v138);
      goto LABEL_252;
    }

    v32 = @"VideoCompositorCustom";
    goto LABEL_11;
  }

  FigVideoCompositorCopyDeviceSpecificCompositorName(1, &cf1);
  if (v35)
  {
    goto LABEL_250;
  }

  v33 = cf1;
LABEL_12:
  if (CFEqual(v33, @"VideoCompositorBasic"))
  {
    v34 = CFGetAllocator(a1);
    v35 = FigVideoCompositorCreateBasic(v34, 0, &v153);
    if (!v35)
    {
      goto LABEL_29;
    }

LABEL_250:
    v66 = v35;
    v131 = 0;
    Mutable = 0;
    goto LABEL_234;
  }

  if (CFEqual(cf1, @"VideoCompositorvImage"))
  {
    v36 = CFGetAllocator(a1);
    v35 = FigVideoCompositorCreatevImage(v36, 0, &v153);
    if (v35)
    {
      goto LABEL_250;
    }

    goto LABEL_29;
  }

  if (CFEqual(cf1, @"VideoCompositorMetal"))
  {
    v37 = CFGetAllocator(a1);
    v35 = FigVideoCompositorCreateMetal(v37, &v153);
    if (v35)
    {
      goto LABEL_250;
    }

    goto LABEL_29;
  }

  if (CFEqual(cf1, @"VideoCompositorOpenGL"))
  {
    v38 = CFGetAllocator(a1);
    v35 = FigVideoCompositorCreateOpenGL(v38, 0, &v153);
    if (v35)
    {
      goto LABEL_250;
    }

LABEL_29:
    v131 = 1;
    goto LABEL_30;
  }

  if (!CFEqual(cf1, @"VideoCompositorCustom"))
  {
    remakerFamily_finishVideoCompositionChannel_cold_12(v138);
LABEL_252:
    v131 = 0;
    goto LABEL_253;
  }

  v131 = 0;
  v153 = a5;
LABEL_30:
  allocator = *MEMORY[0x1E695E480];
  v39 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  FigVideoCompositorGetFigBaseObject();
  v41 = v40;
  v42 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v42)
  {
    v42(v41, @"WorkerThreadPriority", v39);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  FigVideoCompositorGetFigBaseObject();
  v44 = v43;
  v45 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v45)
  {
    v45(v44, @"HighQualityRendering", *MEMORY[0x1E695E4D0]);
  }

  if (!a1)
  {
    remakerFamily_finishVideoCompositionChannel_cold_11(v138);
LABEL_253:
    Mutable = 0;
    v72 = 0;
LABEL_254:
    v104 = 0;
    v66 = LODWORD(v138[0]);
    goto LABEL_185;
  }

  *v138 = *MEMORY[0x1E6960C70];
  *&v139 = *(MEMORY[0x1E6960C70] + 16);
  v126 = *v138;
  *v145 = *v138;
  v125 = v139;
  v146 = v139;
  if (!FigVideoCompositionInstructionArrayIsValid(a6, v138, v145))
  {
    remakerFamily_finishVideoCompositionChannel_cold_10(a1, v138);
    goto LABEL_253;
  }

  if (a6)
  {
    v46 = CFRetain(a6);
  }

  else
  {
    v46 = 0;
  }

  *(a2 + 176) = v46;
  if (!a19)
  {
    Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      goto LABEL_57;
    }

    goto LABEL_249;
  }

  v47 = CFArrayGetCount(a19);
  v48 = CFArrayCreateMutable(allocator, v47, MEMORY[0x1E695E9C0]);
  if (!v48)
  {
LABEL_249:
    remakerFamily_finishVideoCompositionChannel_cold_9(v138);
    goto LABEL_253;
  }

  Mutable = v48;
  if (v47 >= 1)
  {
    v50 = 0;
    while (1)
    {
      v51 = CFGetAllocator(a1);
      FigImageQueueCreateForCoreVideo(v51, &v164);
      if (v52)
      {
        goto LABEL_233;
      }

      v53 = v164;
      v54 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v54)
      {
        v54(v53, 1);
      }

      v55 = v164;
      v56 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v56)
      {
        v56(v55, 1.0);
      }

      CFArrayAppendValue(Mutable, v164);
      ValueAtIndex = CFArrayGetValueAtIndex(a19, v50);
      v58 = v164;
      v59 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v59)
      {
        break;
      }

      v52 = v59(v58, ValueAtIndex, 0);
      if (v52)
      {
        goto LABEL_233;
      }

      if (v164)
      {
        CFRelease(v164);
        v164 = 0;
      }

      if (v47 == ++v50)
      {
        goto LABEL_57;
      }
    }

    v72 = 0;
    v104 = 0;
    v66 = 4294954514;
LABEL_185:
    v113 = v135;
    goto LABEL_187;
  }

LABEL_57:
  v60 = CFGetAllocator(a1);
  if (*(DerivedStorage + 32))
  {
    v61 = 30;
  }

  else
  {
    v61 = 31;
  }

  FigActivitySchedulerCreateForNewThread(v60, v61, @"com.apple.coremedia.remaker.videoprocessor", &v163);
  if (v52)
  {
    goto LABEL_233;
  }

  v172.width = a14;
  v172.height = a15;
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v172);
  FigVideoCompositorGetFigBaseObject();
  v64 = v63;
  v65 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v65)
  {
    v66 = 4294954514;
    if (!DictionaryRepresentation)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v66 = v65(v64, @"RenderDimensions", DictionaryRepresentation);
  if (DictionaryRepresentation)
  {
LABEL_65:
    CFRelease(DictionaryRepresentation);
  }

LABEL_66:
  if (v66)
  {
LABEL_234:
    v72 = 0;
LABEL_235:
    v104 = 0;
    goto LABEL_185;
  }

  v67 = CFGetAllocator(a1);
  v68 = v153;
  v69 = *(*(a2 + 152) + 152);
  remakerFamily_getHighWaterLevel(*(DerivedStorage + 32), v138);
  v129 = Mutable;
  remakerFamily_getLowWaterLevel(*(DerivedStorage + 32), v145);
  *&v144.value = *a12;
  v144.epoch = *(a12 + 2);
  v133 = (a2 + 168);
  v70 = FigVideoCompositionProcessorCreateWithImageQueueArray(v67, 5u, v68, &v144, a13, Mutable, v69, v138, v145, v163, (a2 + 168));
  if (v70)
  {
    v66 = v70;
    v72 = 0;
    v104 = 0;
    v113 = v135;
    goto LABEL_187;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v71 = FigNotificationCenterAddWeakListeners();
  if (v71)
  {
    v66 = v71;
    v72 = 0;
    v104 = 0;
    v113 = v135;
    goto LABEL_187;
  }

  v52 = FigVideoCompositionProcessorSetCompositionInstructionCallback(*(a2 + 168), remakerFamily_copyCompositionInstructionAtTime, a2);
  if (v52 || (FigVideoCompositionProcessorSetProperty(*v133, @"VideoCompositionProcessor_DestinationPixelBufferDesiredAttributes", a20), v52))
  {
LABEL_233:
    v66 = v52;
    goto LABEL_234;
  }

  v150 = VTNextUniquePixelBufferPoolSharingIDFromSource();
  v72 = CFNumberCreate(allocator, kCFNumberSInt64Type, &v150);
  if (!v72)
  {
    remakerFamily_finishVideoCompositionChannel_cold_8(v138);
    goto LABEL_254;
  }

  FigVideoCompositionProcessorSetProperty(*v133, @"VideoCompositionProcessor_PixelBufferPoolSharingID", v72);
  if (v73 || (v74 = *v133, v75 = CFGetAllocator(a1), v73 = FigVideoCompositionProcessorCopyProperty(v74, @"VideoCompositionProcessor_SourcePixelBufferAttributes", v75, &v154), v73))
  {
    v66 = v73;
    goto LABEL_235;
  }

  v76 = CFArrayGetCount(Mutable);
  if (a19)
  {
    v77 = CFArrayGetCount(a19);
  }

  else
  {
    v77 = 0;
  }

  v78 = theArray;
  if (v76 != v77)
  {
    remakerFamily_finishVideoCompositionChannel_cold_1(v138);
    goto LABEL_254;
  }

  v130 = v72;
  if (v31 < 1)
  {
LABEL_148:
    v138[0] = 0;
    v145[0] = 0;
    v144.value = 0;
    v170 = 0;
    v171 = 0;
    v168 = 0;
    v169 = 0;
    v167 = 0;
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    CFDictionaryGetValueIfPresent(a18, @"VideoCompositionProcessor_CompositionYCbCrMatrix", &v171);
    CFDictionaryGetValueIfPresent(a18, @"VideoCompositionProcessor_CompositionColorPrimaries", v145);
    CFDictionaryGetValueIfPresent(a18, @"VideoCompositionProcessor_CompositionTransferFunction", &v144);
    if (v171)
    {
      CFDictionaryAddValue(MutableCopy, @"VideoCompositionProcessor_CompositionYCbCrMatrix", v171);
    }

    if (v145[0])
    {
      CFDictionaryAddValue(MutableCopy, @"VideoCompositionProcessor_CompositionColorPrimaries", v145[0]);
    }

    if (v144.value)
    {
      CFDictionaryAddValue(MutableCopy, @"VideoCompositionProcessor_CompositionTransferFunction", v144.value);
    }

    if (CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x1E6983DE0], &v168))
    {
      CFDictionaryAddValue(MutableCopy, @"VideoCompositionProcessor_DestinationPixelBufferDesiredYCbCrMatrix", v168);
    }

    if (CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x1E6983DC0], &v170))
    {
      CFDictionaryAddValue(MutableCopy, @"VideoCompositionProcessor_DestinationPixelBufferDesiredColorPrimaries", v170);
    }

    if (CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x1E6983DD8], &v169))
    {
      CFDictionaryAddValue(MutableCopy, @"VideoCompositionProcessor_DestinationPixelBufferDesiredTransferFunction", v169);
    }

    if (!v171 && v168)
    {
      CFDictionaryAddValue(MutableCopy, @"VideoCompositionProcessor_CompositionYCbCrMatrix", v168);
    }

    if (!v145[0] && v170)
    {
      CFDictionaryAddValue(MutableCopy, @"VideoCompositionProcessor_CompositionColorPrimaries", v170);
    }

    v113 = v135;
    if (!v144.value && v169)
    {
      CFDictionaryAddValue(MutableCopy, @"VideoCompositionProcessor_CompositionTransferFunction", v169);
    }

    CFDictionaryGetValueIfPresent(a18, @"VideoCompositionProcessor_HDRDisplayMetadataPolicy", &v167);
    if (v167)
    {
      CFDictionarySetValue(MutableCopy, @"VideoCompositionProcessor_HDRDisplayMetadataPolicy", v167);
    }

    CFDictionaryApplyFunction(MutableCopy, remakerFamily_setPropertyOnVideoCompositionProcessor, *v133);
    VideoPixelTransferProperties = remakerFamily_createVideoPixelTransferProperties(v115, theDict, 0, v138);
    if (!VideoPixelTransferProperties)
    {
      FigVideoCompositionProcessorSetProperty(*v133, @"VideoCompositionProcessor_DestinationPixelTransferProperties", v138[0]);
    }

    v66 = VideoPixelTransferProperties;
    v72 = v130;
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (v138[0])
    {
      CFRelease(v138[0]);
    }

    if (!v66)
    {
      if (!v128 || (v117 = FigVideoCompositionProcessorSetAnimationLayer(*v133, a8, v128, a9, a10, a11), !v117))
      {
        v118 = *a12;
        *(a2 + 344) = *(a12 + 2);
        *(a2 + 328) = v118;
        remakerFamily_commitChannel(a1, a2);
        if (v31 < 1)
        {
          v104 = 0;
          v66 = 0;
          goto LABEL_187;
        }

        v119 = v135;
        v120 = v31;
        do
        {
          remakerFamily_commitChannel(a1, *v119);
          *v119++ = 0;
          --v120;
        }

        while (v120);
        v66 = 0;
        v104 = 0;
        goto LABEL_188;
      }

      v66 = v117;
    }

    v104 = 0;
    goto LABEL_187;
  }

  v79 = 0;
  while (1)
  {
    LODWORD(v144.value) = 0;
    v80 = v79 - Count;
    if (v79 >= Count)
    {
      v81 = v78;
    }

    else
    {
      v81 = v132;
      v80 = v79;
    }

    v82 = CFArrayGetValueAtIndex(v81, v80);
    if (!v82)
    {
      remakerFamily_finishVideoCompositionChannel_cold_6(a1, v138);
      goto LABEL_241;
    }

    v83 = CFNumberGetTypeID();
    if (v83 != CFGetTypeID(v82))
    {
      remakerFamily_finishVideoCompositionChannel_cold_2(a1, v138);
      goto LABEL_241;
    }

    CFNumberGetValue(v82, kCFNumberSInt32Type, &v144);
    v84 = *(DerivedStorage + 72);
    value_low = LODWORD(v144.value);
    v86 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (!v86)
    {
      goto LABEL_146;
    }

    Channel = v86(v84, value_low, &v166);
    if (Channel)
    {
      goto LABEL_242;
    }

    v88 = v166;
    v89 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v89)
    {
LABEL_146:
      v104 = 0;
      v66 = 4294954514;
      goto LABEL_147;
    }

    Channel = v89(v88, 0, &v165);
    if (Channel)
    {
      goto LABEL_242;
    }

    if (v165 != 1635088502 && v165 != 1835365473 && v165 != 1986618469)
    {
      remakerFamily_finishVideoCompositionChannel_cold_7(a1, v138);
LABEL_241:
      v104 = 0;
      v66 = LODWORD(v138[0]);
      goto LABEL_147;
    }

    v90 = CFGetTypeID(a1);
    v91 = remakerFamily_copyFormatDescription(v90, v166, &formatDescription);
    if (v91 == -12138)
    {
      goto LABEL_139;
    }

    v66 = v91;
    if (v91 == -12123)
    {
      goto LABEL_139;
    }

    if (v91)
    {
      goto LABEL_243;
    }

    v92 = &v135[v79];
    Channel = remakerFamily_createChannel(a1, v144.value, v165, v92);
    if (Channel)
    {
LABEL_242:
      v66 = Channel;
LABEL_243:
      v104 = 0;
LABEL_147:
      v113 = v135;
      v72 = v130;
      goto LABEL_187;
    }

    v93 = *v92;
    *(v93 + 48) = 0;
    *(v93 + 50) = 1;
    if (v165 == 1986618469)
    {
      goto LABEL_99;
    }

    if (v165 != 1835365473)
    {
      break;
    }

    CallbacksForSampleBuffersSortedByOutputPTS = CMBufferQueueGetCallbacksForSampleBuffersSortedByOutputPTS();
    v78 = theArray;
    if (!CMBufferQueueCreate(allocator, 0, CallbacksForSampleBuffersSortedByOutputPTS, &queueOut))
    {
      FigRenderPipelineCreateForBufferQueue(allocator, queueOut, 0, (*v92 + 56));
      if (Channel)
      {
        goto LABEL_242;
      }

      FigVideoCompositionWindowGetFromSerializedConfigurationForTrack(*(DerivedStorage + 488), v144.value, &__dst);
      if (Channel)
      {
        goto LABEL_242;
      }

      v112 = *v133;
      v140 = *&v160[16];
      v141 = v161;
      v142 = *v162;
      v143 = *&v162[16];
      *v138 = __dst;
      v139 = *v160;
      *v145 = v126;
      v146 = v125;
      Channel = FigVideoCompositionProcessorSetSourceBufferQueue(v112, LODWORD(v144.value), v138, queueOut, v145);
      if (Channel)
      {
        goto LABEL_242;
      }

      if (queueOut)
      {
        CFRelease(queueOut);
        queueOut = 0;
      }

      goto LABEL_128;
    }

LABEL_139:
    if (++v79 == v31)
    {
      goto LABEL_148;
    }
  }

  if (v165 != 1635088502)
  {
LABEL_128:
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    if (formatDescription)
    {
      CFRelease(formatDescription);
      formatDescription = 0;
    }

    v78 = theArray;
    if (v156)
    {
      CFRelease(v156);
      v156 = 0;
    }

    if (v155)
    {
      CFRelease(v155);
      v155 = 0;
    }

    if (v166)
    {
      CFRelease(v166);
      v166 = 0;
    }

    goto LABEL_139;
  }

LABEL_99:
  if (FigRemakerIsFormatDescriptionProtected(formatDescription))
  {
    remakerFamily_finishVideoCompositionChannel_cold_3(a1, v138);
    goto LABEL_241;
  }

  v94 = CFGetAllocator(a1);
  Channel = FigVisualContextCreateBasic(v94, 0, &value);
  if (Channel)
  {
    goto LABEL_242;
  }

  CFGetAllocator(a1);
  v95 = formatDescription;
  remakerFamily_getLowWaterLevel(*(DerivedStorage + 32), v138);
  HighWaterLevel = remakerFamily_getHighWaterLevel(*(DerivedStorage + 32), v145);
  Channel = remakerFamily_createRenderPipelineOptions(HighWaterLevel, v95, v138, v145, 0, v130, *(DerivedStorage + 424), 0, 0, *(DerivedStorage + 32), 0, 0, 0, DerivedStorage + 41, v144.value, &v156);
  if (Channel)
  {
    goto LABEL_242;
  }

  Channel = remakerFamily_createRemakerVideoDecoderSpecification(a1, v97, &v155);
  if (Channel)
  {
    goto LABEL_242;
  }

  v98 = FigVideoFormatDescriptionContainsStereoMultiviewVideo();
  if (!v98 || !FigVideoCompositorSupportsSpatialVideoSources(v153))
  {
    v108 = CFGetAllocator(a1);
    v109 = FigVideoRenderPipelineCreateWithVisualContext(v108, v155, v154, 0, 1, value, 0, v156, *v92 + 56);
    v104 = 0;
    if (v109)
    {
      goto LABEL_245;
    }

LABEL_117:
    v109 = remakerFamily_setVideoRenderPipelineProperties(a1, *v92, 0, 0, formatDescription, a16, *(DerivedStorage + 32), 0, 0, 0);
    if (v109 || (CMNotificationCenterGetDefaultLocalCenter(), v109 = FigNotificationCenterAddWeakListeners(), v109) || (*(*v92 + 356) = *(a2 + 356), FigVideoCompositionWindowGetFromSerializedConfigurationForTrack(*(DerivedStorage + 480), v144.value, &__dst), v109))
    {
LABEL_245:
      v66 = v109;
      goto LABEL_147;
    }

    if (v98 && FigVideoCompositorSupportsSpatialVideoSources(v153))
    {
      v66 = FigVideoCompositionProcessorSetSourceVisualContextGroup(*v133, LODWORD(v144.value), v165, v104, tagCollectionsOut);
      if (tagCollectionsOut)
      {
        CFRelease(tagCollectionsOut);
        tagCollectionsOut = 0;
      }
    }

    else
    {
      v110 = *v133;
      v140 = *&v160[16];
      v141 = v161;
      v142 = *v162;
      v143 = *&v162[16];
      *v138 = __dst;
      v139 = *v160;
      v66 = FigVideoCompositionProcessorSetSourceVisualContext(v110, LODWORD(v144.value), v165, v138, value);
    }

    if (v66)
    {
      goto LABEL_147;
    }

    *(*v92 + 304) = *(a2 + 300);
    if (v104)
    {
      CFRelease(v104);
    }

    goto LABEL_128;
  }

  v99 = a2;
  v100 = CMVideoFormatDescriptionCopyTagCollectionArray(formatDescription, &tagCollectionsOut);
  if (v100)
  {
    v66 = v100;
    v104 = 0;
    goto LABEL_237;
  }

  if (!tagCollectionsOut || (v101 = CFArrayGetCount(tagCollectionsOut), v102 = v101 - 1, v101 <= 1))
  {
    remakerFamily_finishVideoCompositionChannel_cold_5(v138);
    v104 = 0;
LABEL_260:
    v66 = LODWORD(v138[0]);
    goto LABEL_237;
  }

  v103 = CFArrayCreateMutable(allocator, v101, MEMORY[0x1E695E9C0]);
  v104 = v103;
  if (!v103)
  {
    remakerFamily_finishVideoCompositionChannel_cold_4(v138);
    goto LABEL_260;
  }

  CFArrayAppendValue(v103, value);
  while (1)
  {
    v105 = CFGetAllocator(a1);
    v106 = FigVisualContextCreateBasic(v105, 0, &cf);
    if (v106)
    {
      break;
    }

    CFArrayAppendValue(v104, cf);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (!--v102)
    {
      v107 = CFGetAllocator(a1);
      v106 = FigVideoRenderPipelineCreateWithVisualContextGroup(v107, v155, v154, 0, 1, v104, tagCollectionsOut, 0, v156, (*v92 + 56));
      if (!v106)
      {
        a2 = v99;
        Mutable = v129;
        goto LABEL_117;
      }

      break;
    }
  }

  v66 = v106;
LABEL_237:
  v113 = v135;
  Mutable = v129;
  v72 = v130;
LABEL_187:
  if (v113)
  {
LABEL_188:
    if (v31 >= 1)
    {
      v121 = v113;
      do
      {
        v122 = *v121++;
        remakerFamily_discardChannel(a1, v122);
        --v31;
      }

      while (v31);
    }

    free(v113);
  }

  if (v164)
  {
    CFRelease(v164);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v163)
  {
    CFRelease(v163);
  }

  if (v155)
  {
    CFRelease(v155);
  }

  if (v154)
  {
    CFRelease(v154);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (formatDescription)
  {
    CFRelease(formatDescription);
  }

  if (v156)
  {
    CFRelease(v156);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  if (v72)
  {
    CFRelease(v72);
  }

  if (v166)
  {
    CFRelease(v166);
  }

  if (queueOut)
  {
    CFRelease(queueOut);
  }

  if (tagCollectionsOut)
  {
    CFRelease(tagCollectionsOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v104)
  {
    CFRelease(v104);
  }

  if (v131 && v153)
  {
    CFRelease(v153);
  }

  return v66;
}

uint64_t remakerFamily_copyCompositionInstructionAtTime(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 176);
  if (!v4)
  {
    goto LABEL_7;
  }

  Count = CFArrayGetCount(*(a1 + 176));
  if (Count < 1)
  {
    goto LABEL_7;
  }

  v7 = Count;
  v8 = 0;
  v13 = *MEMORY[0x1E6960C70];
  v9 = *(MEMORY[0x1E6960C70] + 16);
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v4, v8);
    *&v14.value = *a2;
    v14.epoch = *(a2 + 16);
    *&v18.value = v13;
    v18.epoch = v9;
    *&v17.value = v13;
    v17.epoch = v9;
    FigCFDictionaryGetCMTimeIfPresent();
    FigCFDictionaryGetCMTimeIfPresent();
    time1 = v14;
    time2 = v18;
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
    {
      time1 = v17;
      time2 = v14;
      if (CMTimeCompare(&time1, &time2) >= 1)
      {
        break;
      }
    }

    if (v7 == ++v8)
    {
      goto LABEL_7;
    }
  }

  if (ValueAtIndex)
  {
    v11 = CFRetain(ValueAtIndex);
  }

  else
  {
LABEL_7:
    v11 = 0;
  }

  *a3 = v11;
  return 0;
}

uint64_t remakerFamily_getExpectedDuration(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = **&MEMORY[0x1E6960C70];
  ExpectedEndTime = remakerFamily_getExpectedEndTime(a1, &v10);
  lhs = v10;
  v7 = *(DerivedStorage + 88);
  CMTimeSubtract(&v9, &lhs, &v7);
  *a2 = v9;
  return ExpectedEndTime;
}

uint64_t remakerFamily_resetTrackMultiPassTimeRanges(uint64_t a1, void *a2, CFIndex capacity)
{
  if (!a1)
  {
    remakerFamily_resetTrackMultiPassTimeRanges_cold_5(&v10);
    return LODWORD(v10.version);
  }

  if (!*(a1 + 356))
  {
    remakerFamily_resetTrackMultiPassTimeRanges_cold_4(&v10);
    return LODWORD(v10.version);
  }

  v4 = capacity;
  if (capacity <= 0)
  {
    remakerFamily_resetTrackMultiPassTimeRanges_cold_3(&v10);
    return LODWORD(v10.version);
  }

  v5 = a2;
  if (!a2)
  {
    remakerFamily_resetTrackMultiPassTimeRanges_cold_2(&v10);
    return LODWORD(v10.version);
  }

  v6 = a2 + 5;
  v7 = capacity;
  do
  {
    if ((*(v6 - 28) & 1) == 0 || (*(v6 - 4) & 1) == 0 || *v6 || (*(v6 - 2) & 0x8000000000000000) != 0)
    {
      remakerFamily_resetTrackMultiPassTimeRanges_cold_1(&v10);
      return LODWORD(v10.version);
    }

    v6 += 6;
    --v7;
  }

  while (v7);
  v8 = *(a1 + 400);
  if (v8)
  {
    CFArrayRemoveAllValues(v8);
  }

  else
  {
    v10 = *byte_1F0AE3C80;
    *(a1 + 400) = CFArrayCreateMutable(*MEMORY[0x1E695E480], capacity, &v10);
  }

  do
  {
    CFArrayAppendValue(*(a1 + 400), v5);
    v5 += 6;
    --v4;
  }

  while (v4);
  return 0;
}

uint64_t remakerFamily_createTimeRangesCArray(CFArrayRef theArray, CFIndex *a2, void *a3)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_9:
    remakerFamily_createTimeRangesCArray_cold_2(&v15);
    return v15;
  }

  Count = 0;
  if (!a3)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (a2)
  {
    if (Count < 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = malloc_type_malloc(48 * Count, 0x1000040EED21634uLL);
      v8 = 0;
      v9 = v7;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
        v12 = ValueAtIndex[1];
        v11 = ValueAtIndex[2];
        *v9 = *ValueAtIndex;
        v9[1] = v12;
        v9[2] = v11;
        ++v8;
        v9 += 3;
      }

      while (Count != v8);
    }

    result = 0;
    *a2 = Count;
    *a3 = v7;
  }

  else
  {
    remakerFamily_createTimeRangesCArray_cold_1(&v14);
    return v14;
  }

  return result;
}

BOOL remakerFamily_CFURLSchemeIsFile(const __CFURL *a1)
{
  v1 = CFURLCopyScheme(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFStringCompare(@"file", v1, 1uLL) == kCFCompareEqualTo;
  CFRelease(v2);
  return v3;
}

uint64_t remakerFamily_GetDefaultSourceAudioTrack(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (*CMBaseObjectGetDerivedStorage() >= 7u)
  {
    remakerFamily_GetDefaultSourceAudioTrack_cold_1(&v9);
    return v9;
  }

  else
  {
    FigAssetGetCMBaseObject();
    v4 = v3;
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5 && (v5(v4, @"assetProperty_FormatReader", *MEMORY[0x1E695E480], &cf), cf))
    {
      DefaultTrackIDForMediaType = FPSupport_GetDefaultTrackIDForMediaType(cf, 1936684398, a2, 0);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      return 0;
    }
  }

  return DefaultTrackIDForMediaType;
}

const __CFArray *remakerFamily_hasTrackForMediaType(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 80);
  if (result)
  {
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v6 = Count;
      v7 = 0;
      while (*(CFArrayGetValueAtIndex(*(DerivedStorage + 80), v7) + 8) != a2)
      {
        if (v6 == ++v7)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t remakerFamily_GetEnabledTrackWithAllAlphaSegments(const __CFArray *a1)
{
  v17 = 0;
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    theArray = 0;
    if (Count >= 1)
    {
      v3 = Count;
      v4 = 0;
      v5 = *MEMORY[0x1E695E480];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
        if (remakerFamily_isTrackEnabled(ValueAtIndex))
        {
          FigAssetTrackGetCMBaseObject();
          v8 = v7;
          v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v9)
          {
            break;
          }

          v10 = v9(v8, @"FormatDescriptionArray", v5, &theArray);
          v11 = theArray;
          if (v10)
          {
            v12 = 1;
          }

          else
          {
            v12 = theArray == 0;
          }

          if (v12)
          {
            goto LABEL_22;
          }

          if (CFArrayGetCount(theArray) < 1)
          {
LABEL_14:
            remakerFamily_GetEnabledTrackWithAllAlphaSegments_cold_1(ValueAtIndex, &v17, &v18);
            v14 = v18;
          }

          else
          {
            v13 = 0;
            while (1)
            {
              CFArrayGetValueAtIndex(v11, v13);
              if (!FigVideoFormatDescriptionContainsAlphaChannel())
              {
                break;
              }

              if (++v13 >= CFArrayGetCount(v11))
              {
                goto LABEL_14;
              }
            }

            v14 = 0;
          }

          if (theArray)
          {
            CFRelease(theArray);
            theArray = 0;
          }
        }

        else
        {
          v14 = 0;
        }

        if (v14)
        {
          break;
        }

        ++v4;
      }

      while (v4 < v3);
      v11 = theArray;
LABEL_22:
      if (v11)
      {
        CFRelease(v11);
      }
    }
  }

  return v17;
}

uint64_t remakerFamily_isTrackEnabled(uint64_t a1)
{
  cf1 = 0;
  FigAssetTrackGetCMBaseObject();
  v2 = v1;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 1;
  }

  v3(v2, @"IsEnabled", *MEMORY[0x1E695E480], &cf1);
  if (!cf1)
  {
    return 1;
  }

  v4 = CFEqual(cf1, *MEMORY[0x1E695E4D0]);
  CFRelease(cf1);
  return v4;
}

uint64_t remakerFamily_GetEnabledTrackWithHomogeneousStereoSegments(const __CFArray *a1)
{
  v30 = 0;
  if (!a1)
  {
    return v30;
  }

  Count = CFArrayGetCount(a1);
  theArray = 0;
  if (Count < 1)
  {
    return v30;
  }

  v3 = Count;
  v4 = 0;
  v5 = @"FormatDescriptionArray";
  v6 = *MEMORY[0x1E695E480];
  v27 = *MEMORY[0x1E695E480];
  v28 = Count;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
    if (!remakerFamily_isTrackEnabled(ValueAtIndex))
    {
      v24 = 0;
      goto LABEL_32;
    }

    FigAssetTrackGetCMBaseObject();
    v9 = v8;
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v10)
    {
      break;
    }

    v11 = v10(v9, v5, v6, &theArray);
    v12 = theArray;
    if (v11)
    {
      v13 = 1;
    }

    else
    {
      v13 = theArray == 0;
    }

    if (v13)
    {
      goto LABEL_35;
    }

    v14 = CFArrayGetCount(theArray);
    v31 = 0;
    v32 = 0;
    if (v14 < 1)
    {
LABEL_24:
      v25 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v25)
      {
        v25(ValueAtIndex, &v30, 0);
      }

      v24 = 1;
      goto LABEL_30;
    }

    v15 = v14;
    CFArrayGetValueAtIndex(v12, 0);
    if (FigVideoFormatDescriptionGetMVHEVCVideoLayerIDs())
    {
      v16 = v5;
      v17 = 0;
      v18 = 0;
      v19 = 1;
      v20 = 1;
      do
      {
        v21 = v19;
        if (v19 == 1)
        {
          v18 = v31;
          v17 = v32;
        }

        else if (v18 != v31 || v17 != v32)
        {
          v20 = 0;
        }

        if (v15 == v19)
        {
          break;
        }

        CFArrayGetValueAtIndex(v12, v19);
        MVHEVCVideoLayerIDs = FigVideoFormatDescriptionGetMVHEVCVideoLayerIDs();
        v19 = v21 + 1;
      }

      while (MVHEVCVideoLayerIDs);
      v24 = 0;
      if (v21 < v15)
      {
        v5 = v16;
        v6 = v27;
        v3 = v28;
      }

      else
      {
        v5 = v16;
        v6 = v27;
        v3 = v28;
        if (v20)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      v24 = 0;
    }

LABEL_30:
    if (theArray)
    {
      CFRelease(theArray);
      theArray = 0;
    }

LABEL_32:
    if (v24)
    {
      break;
    }

    ++v4;
  }

  while (v4 < v3);
  v12 = theArray;
LABEL_35:
  if (v12)
  {
    CFRelease(v12);
  }

  return v30;
}

uint64_t remakerFamily_GetDefaultSourceVideoTrack(const void *a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage >= 7u)
  {
    remakerFamily_GetDefaultSourceVideoTrack_cold_1(&v11);
    return v11;
  }

  else
  {
    v5 = DerivedStorage;
    v6 = CFGetTypeID(a1);
    v7 = *(v5 + 9);
    v8 = *(v5 + 460);
    v9 = *(v5 + 427);

    return remakerFamily_GetDefaultSourceVideoTrackFromAsset(v6, v7, v8, v9, a2);
  }
}

uint64_t remakerFamily_SetFormatWriterProperty(const void *a1, const void *a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage != 1 && !CFEqual(a2, @"NextMovieFragmentSequenceNumber"))
  {
    remakerFamily_SetFormatWriterProperty_cold_1(&v24);
    return LODWORD(v24.value);
  }

  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (a1)
  {
    v8 = CFGetTypeID(a1);
    if (v8 == FigRemakerGetTypeID())
    {
      if (FigCFEqual())
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22.value, v22.timescale, LODWORD(v22.epoch));
        v10 = v9;
        if (!v7)
        {
          return v10;
        }

        goto LABEL_32;
      }
    }
  }

  if (CFEqual(a2, @"MovieTimeScale"))
  {
    *(DerivedStorage + 392) = 1;
    *(DerivedStorage + 388) = 0;
  }

  if (CFEqual(a2, @"FileTypeCompatibleBrands") || CFEqual(a2, @"FileTypeMajorBrand") || CFEqual(a2, @"FileTypeMinorVersion"))
  {
    *(DerivedStorage + 393) = 1;
  }

  if (CFEqual(a2, @"JoinWritingThreadToNewWorkgroup"))
  {
    *(DerivedStorage + 394) = 1;
  }

  if (!CFEqual(@"MovieFragmentCheckpointInterval", a2))
  {
    goto LABEL_27;
  }

  memset(&v24, 0, sizeof(v24));
  CMTimeMakeFromDictionary(&v24, a3);
  if ((v24.flags & 0x1D) == 1 && (time1 = v24, v22 = **&MEMORY[0x1E6960CC0], CMTimeCompare(&time1, &v22)))
  {
    v11 = 0;
    v12 = 1;
  }

  else
  {
    v12 = 0;
    v11 = 1;
  }

  *(DerivedStorage + 241) = v12;
  if (!v7)
  {
    goto LABEL_27;
  }

  if (v11)
  {
    v13 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v13 = MEMORY[0x1E695E4D0];
  }

  FigFormatWriterGetFigBaseObject();
  v15 = v14;
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v16)
  {
    goto LABEL_31;
  }

  v17 = v16(v15, @"ConsolidateMovieFragments", *v13);
  if (!v17)
  {
LABEL_27:
    if (!v7)
    {
      return 0;
    }

    FigFormatWriterGetFigBaseObject();
    v19 = v18;
    v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v20)
    {
      v17 = v20(v19, a2, a3);
      goto LABEL_30;
    }

LABEL_31:
    v10 = 4294954514;
    goto LABEL_32;
  }

LABEL_30:
  v10 = v17;
LABEL_32:
  CFRelease(v7);
  return v10;
}

uint64_t remakerFamily_SetFormatWriterTrackProperty(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage >= 7u)
  {
    remakerFamily_SetFormatWriterTrackProperty_cold_2(&v13);
    return v13;
  }

  else
  {
    v8 = DerivedStorage;
    if (CFEqual(a3, @"EditList") || CFEqual(a3, @"ReplacementFormatDescriptionArray") || *v8 < 3u)
    {
      v9 = *(v8 + 23);
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v10)
      {

        return v10(v9, a2, a3, a4);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      remakerFamily_SetFormatWriterTrackProperty_cold_1(&v12);
      return v12;
    }
  }
}

uint64_t remakerFamily_CopyFormatWriterTrackProperty(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage >= 7u)
  {
    remakerFamily_CopyFormatWriterTrackProperty_cold_2(&v15);
    return v15;
  }

  else
  {
    v10 = DerivedStorage;
    if (CFEqual(a3, @"FormatDescriptionArray") || *v10 < 3u)
    {
      v11 = *(v10 + 23);
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v12)
      {

        return v12(v11, a2, a3, a4, a5);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      remakerFamily_CopyFormatWriterTrackProperty_cold_1(&v14);
      return v14;
    }
  }
}

uint64_t remakerFamily_createDestinationTrackReferenceDictionary(uint64_t a1, const __CFDictionary *a2, CFMutableDictionaryRef *a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v10[0] = a1;
  v10[1] = Mutable;
  if (Mutable)
  {
    v7 = Mutable;
    v11 = 0;
    CFDictionaryApplyFunction(a2, remakerFamily_addDestinationTrackReferenceToDictionaryForEachReferenceType, v10);
    v8 = v11;
    if (v11)
    {
      CFRelease(v7);
    }

    else
    {
      *a3 = v7;
    }
  }

  else
  {
    remakerFamily_createDestinationTrackReferenceDictionary_cold_1(&v12);
    return v12;
  }

  return v8;
}

void remakerFamily_addDestinationTrackReferenceToDictionaryForEachReferenceType(const void *a1, const __CFArray *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a3 + 16);
    if (v4)
    {
LABEL_3:
      *(a3 + 16) = v4;
      return;
    }

    v8 = *a3;
    v7 = *(a3 + 8);
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v10 = Mutable;
      v23 = a1;
      Count = CFArrayGetCount(a2);
      if (Count >= 2)
      {
        v12 = Count / 2;
        v13 = 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, v13 - 1);
          v15 = CFArrayGetValueAtIndex(a2, v13);
          v25 = 0;
          value = 0;
          if (!CFDictionaryGetValueIfPresent(v8, ValueAtIndex, &value))
          {
            value = 0;
          }

          if (CFDictionaryGetValueIfPresent(v8, v15, &v25) && value && v25 && !FigCFEqual())
          {
            CFArrayAppendValue(v10, value);
            CFArrayAppendValue(v10, v25);
          }

          v13 += 2;
          --v12;
        }

        while (v12);
      }

      v22 = v7;
      v16 = CFArrayGetCount(v10);
      if (v16 >= 2)
      {
        v17 = 0;
        v18 = v16 >> 1;
        do
        {
          v19 = 2 * v17 + 2;
          while (1)
          {
            CFArrayGetValueAtIndex(v10, 2 * v17);
            CFArrayGetValueAtIndex(v10, (2 * v17) | 1);
            v24 = v17++;
            if (v17 < v18)
            {
              break;
            }

LABEL_23:
            v19 += 2;
            if (v17 == v18)
            {
              goto LABEL_26;
            }
          }

          v20 = v19;
          v21 = v17;
          while (1)
          {
            CFArrayGetValueAtIndex(v10, v20);
            CFArrayGetValueAtIndex(v10, v20 + 1);
            if (FigCFEqual())
            {
              if (FigCFEqual())
              {
                break;
              }
            }

            ++v21;
            v20 += 2;
            if (v21 >= v18)
            {
              goto LABEL_23;
            }
          }

          CFArrayRemoveValueAtIndex(v10, v20);
          CFArrayRemoveValueAtIndex(v10, v20);
          v18 = CFArrayGetCount(v10) / 2;
          v17 = v24;
        }

        while (v24 < v18);
      }

LABEL_26:
      if (CFArrayGetCount(v10))
      {
        CFDictionaryAddValue(v22, v23, v10);
      }

      CFRelease(v10);
    }

    else if (!remakerFamily_addDestinationTrackReferenceToDictionaryForEachReferenceType_cold_1(&value))
    {
      v4 = value;
      goto LABEL_3;
    }
  }
}

void remakerFamily_safeDispatchAsync(dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  if (context)
  {
    CFRetain(context);
  }

  dispatch_async_f(queue, context, work);

  dispatch_async_f(queue, context, remakerFamily_relaseObject);
}

void remakerFamily_relaseObject(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t assetReaderTrack_Invalidate(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17020)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = FigAtomicCompareAndSwap32();
  if (result)
  {
    result = *(a1 + 72);
    if (result)
    {
      CMBufferQueueRemoveTrigger(result, *(a1 + 88));
      CMBufferQueueRemoveTrigger(*(a1 + 72), *(a1 + 96));
      if (*(a1 + 160))
      {
        v4 = *(a1 + 128);
        if (v4)
        {
          Count = CFArrayGetCount(v4);
          if (Count >= 2)
          {
            v6 = Count;
            for (i = 1; i != v6; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 128), i);
              CMBufferQueueRemoveTrigger(ValueAtIndex, *(*(a1 + 136) + 8 * i));
              CMBufferQueueRemoveTrigger(ValueAtIndex, *(*(a1 + 144) + 8 * i));
            }
          }
        }
      }

      result = CMBufferQueueRemoveTrigger(*(a1 + 72), *(a1 + 104));
    }

    v9 = *(a1 + 112);
    if (v9)
    {
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v10)
      {
        v10(v9, 0, 0);
      }

      if (*(a1 + 160))
      {
        v11 = *(a1 + 120);
        if (v11)
        {
          v12 = CFArrayGetCount(v11);
          if (v12 >= 2)
          {
            v13 = v12;
            for (j = 1; j != v13; ++j)
            {
              v15 = CFArrayGetValueAtIndex(*(a1 + 120), j);
              v16 = *(*(CMBaseObjectGetVTable() + 16) + 16);
              if (v16)
              {
                v16(v15, 0, 0);
              }
            }
          }
        }
      }

      v17 = *(a1 + 112);
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v18)
      {
        v18(v17, 0, 0);
      }

      v19 = *(a1 + 112);
      VTable = CMBaseObjectGetVTable();
      v21 = *(VTable + 16);
      result = VTable + 16;
      v22 = *(v21 + 32);
      if (v22)
      {
        return v22(v19, 0, 0);
      }
    }
  }

  return result;
}

opaqueCMBufferQueue *assetWriterTrack_Invalidate(uint64_t a1)
{
  result = FigAtomicCompareAndSwap32();
  if (result)
  {
    result = *(a1 + 32);
    if (result)
    {
      v3 = *(a1 + 104);

      return CMBufferQueueRemoveTrigger(result, v3);
    }
  }

  return result;
}

uint64_t RegisterFigRemakerTrack()
{
  result = _CFRuntimeRegisterClass();
  sFigRemakerTrackID = result;
  return result;
}

double FigRemakerTrackInit(_OWORD *a1)
{
  result = 0.0;
  a1[26] = 0u;
  a1[27] = 0u;
  a1[24] = 0u;
  a1[25] = 0u;
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void FigRemakerTrackFinalize(void *a1)
{
  remakerFamily_invalidateTrack(a1);
  v2 = a1[52];
  if (v2)
  {
    CFRelease(v2);
    a1[52] = 0;
  }

  v3 = a1[24];
  if (v3)
  {
    CFRelease(v3);
    a1[24] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  FigSemaphoreDestroy();
  a1[47] = 0;
  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
    a1[7] = 0;
  }

  v6 = a1[19];
  if (v6)
  {
    CFRelease(v6);
    a1[19] = 0;
  }

  v7 = a1[20];
  if (v7)
  {
    CFRelease(v7);
    a1[20] = 0;
  }

  v8 = a1[21];
  if (v8)
  {
    CFRelease(v8);
    a1[21] = 0;
  }

  v9 = a1[22];
  if (v9)
  {
    CFRelease(v9);
    a1[22] = 0;
  }

  v10 = a1[46];
  if (v10)
  {
    dispatch_release(v10);
    a1[46] = 0;
  }

  v11 = a1[48];
  if (v11)
  {
    CFRelease(v11);
    a1[48] = 0;
  }

  v12 = a1[51];
  if (v12)
  {
    dispatch_release(v12);
    a1[51] = 0;
  }

  v13 = a1[50];
  if (v13)
  {
    CFRelease(v13);
    a1[50] = 0;
  }

  v14 = a1[25];
  if (v14)
  {
    CFRelease(v14);
    a1[25] = 0;
  }

  v15 = a1[26];
  if (v15)
  {
    CFRelease(v15);
    a1[26] = 0;
  }

  FigBufferQueueRelease();
  a1[28] = 0;
  v16 = a1[29];
  if (v16)
  {
    CFRelease(v16);
    a1[29] = 0;
  }

  v17 = a1[30];
  if (v17)
  {
    CFRelease(v17);
    a1[30] = 0;
  }

  FigBufferQueueRelease();
  a1[31] = 0;
  v18 = a1[33];
  if (v18)
  {
    CFRelease(v18);
    a1[33] = 0;
  }

  FigBufferQueueRelease();
  a1[34] = 0;
  v19 = a1[36];
  if (v19)
  {
    CFRelease(v19);
    a1[36] = 0;
  }

  FigBufferQueueRelease();
  a1[39] = 0;
  v20 = a1[55];
  if (v20)
  {
    CFRelease(v20);
    a1[55] = 0;
  }

  v21 = a1[2];
  if (v21)
  {
    CFRelease(v21);
    a1[2] = 0;
  }
}

__CFString *FigRemakerTrackCopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  if (*(a1 + 48))
  {
    v4 = "(passthrough)";
  }

  else
  {
    v4 = "(recompress)";
  }

  v5 = " (done)";
  if (*(a1 + 296))
  {
    v6 = " (done)";
  }

  else
  {
    v6 = "";
  }

  if (!*(a1 + 424))
  {
    v5 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"FigRemakerTrack %p: '%c%c%c%c' id %d -> id %d %s, renderPipeline %@, mediaProcessor %@%s  multiPassBoss %@%s", a1, HIBYTE(*(a1 + 32)), BYTE2(*(a1 + 32)), BYTE1(*(a1 + 32)), *(a1 + 32), *(a1 + 28), *(a1 + 300), v4, *(a1 + 56), *(a1 + 288), v6, *(a1 + 416), v5);
  return Mutable;
}

uint64_t remakerFamily_useMakeDataReadyProcessorOnce(BOOL *a1)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v3 = 1;
  }

  else
  {
    result = FigGetCFPreferenceBooleanWithDefault();
    v3 = result != 0;
  }

  *a1 = v3;
  return result;
}

uint64_t remakerFamily_frameSiloLowWaterTrigger(uint64_t a1)
{
  v1 = *(a1 + 384);
  VTable = CMBaseObjectGetVTable();
  v4 = *(VTable + 16);
  result = VTable + 16;
  v5 = *(v4 + 24);
  if (v5)
  {
    result = v5(v1);
    if (result)
    {

      return FigSemaphoreSignal();
    }
  }

  return result;
}

uint64_t remakerFamily_addFrameFromSiloToFormatWriter(uint64_t a1, uint64_t a2)
{
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v4)
  {
    v6 = DerivedStorage;
    if (*DerivedStorage >= 7u)
    {
      remakerFamily_addFrameFromSiloToFormatWriter_cold_1(&v14);
      v12 = v14;
    }

    else
    {
      v7 = *(a1 + 384);
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v8 && v8(v7))
      {
        FigSemaphoreWaitRelative();
      }

      v9 = *(v6 + 23);
      v10 = *(a1 + 300);
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v11)
      {
        v12 = v11(v9, v10, a2);
      }

      else
      {
        v12 = 4294954514;
      }
    }

    CFRelease(v4);
  }

  else
  {
    remakerFamily_addFrameFromSiloToFormatWriter_cold_2(&v15);
    return v15;
  }

  return v12;
}

__n128 remakerFamily_timeRangesRetainCallBack(uint64_t a1, uint64_t a2)
{
  v3 = malloc_type_malloc(0x30uLL, 0x1000040EED21634uLL);
  v5 = *(a2 + 16);
  result = *(a2 + 32);
  *v3 = *a2;
  v3[1] = v5;
  v3[2] = result;
  return result;
}

CFStringRef remakerFamily_timeRangesCopyDescriptionCallBack(_OWORD *a1)
{
  v1 = *MEMORY[0x1E695E480];
  v2 = a1[1];
  *&v4.start.value = *a1;
  *&v4.start.epoch = v2;
  *&v4.duration.timescale = a1[2];
  return CMTimeRangeCopyDescription(v1, &v4);
}

uint64_t remakerFamily_timeRangesEqualCallBack(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *&range1.start.value = *a1;
  *&range1.start.epoch = v2;
  *&range1.duration.timescale = a1[2];
  v3 = a2[1];
  *&v5.start.value = *a2;
  *&v5.start.epoch = v3;
  *&v5.duration.timescale = a2[2];
  return CMTimeRangeEqual(&range1, &v5);
}

uint64_t RegisterFigAssetReaderTrack()
{
  result = _CFRuntimeRegisterClass();
  sFigAssetReaderTrackID = result;
  return result;
}

double FigAssetReaderTrackInit(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void FigAssetReaderTrackFinalize(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17020)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  assetReaderTrack_Invalidate(a1);
  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 40) = 0;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 48) = 0;
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 56) = 0;
  }

  if (*(a1 + 80))
  {
    FigSemaphoreDestroy();
    *(a1 + 80) = 0;
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 72) = 0;
  }

  v8 = *(a1 + 112);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 112) = 0;
  }

  v9 = *(a1 + 120);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 120) = 0;
  }

  v10 = *(a1 + 128);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 128) = 0;
  }

  free(*(a1 + 136));
  free(*(a1 + 144));
  v11 = *(a1 + 152);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 152) = 0;
  }

  v12 = *(a1 + 192);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 192) = 0;
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 16) = 0;
  }
}

__CFString *FigAssetReaderTrackCopyDebugDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"FigAssetReaderTrack %p", a1);
  return Mutable;
}

uint64_t RegisterFigAssetWriterTrack()
{
  result = _CFRuntimeRegisterClass();
  sFigAssetWriterTrackID = result;
  return result;
}

double FigAssetWriterTrackInit(uint64_t a1)
{
  *(a1 + 272) = 0;
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void FigAssetWriterTrackFinalize(void *a1)
{
  assetWriterTrack_Invalidate(a1);
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
    a1[4] = 0;
  }

  v3 = a1[14];
  if (v3)
  {
    CFRelease(v3);
    a1[14] = 0;
  }

  v4 = a1[22];
  if (v4)
  {
    free(v4);
    a1[22] = 0;
  }

  v5 = a1[23];
  if (v5)
  {
    CFRelease(v5);
    a1[23] = 0;
  }

  v6 = a1[30];
  if (v6)
  {
    CFRelease(v6);
    a1[30] = 0;
  }

  v7 = a1[34];
  if (v7)
  {
    CFRelease(v7);
    a1[34] = 0;
  }

  v8 = a1[2];
  if (v8)
  {
    CFRelease(v8);
    a1[2] = 0;
  }
}

__CFString *FigAssetWriterTrackCopyDebugDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"FigAssetWriterTrack %p", a1);
  return Mutable;
}

uint64_t OUTLINED_FUNCTION_4_53(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

CMTime *OUTLINED_FUNCTION_24_12(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int128 a10, __int128 a11, CMTime *a12)
{
  v14 = v12[1];
  a9 = *v12;
  a10 = v14;
  a11 = v12[2];

  return CMTimeRangeGetEnd(&a12, &a9);
}

Float64 OUTLINED_FUNCTION_31_11(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  a9 = a12;
  a10 = a13;

  return CMTimeGetSeconds(&a9);
}

uint64_t OUTLINED_FUNCTION_32_10@<X0>(uint64_t a2@<X8>)
{
  *(v2 - 72) = a2;

  return FigCFWeakReferenceHolderCopyReferencedObject();
}

uint64_t OUTLINED_FUNCTION_44_10(uint64_t a1)
{

  return FigMediaProcessorSetProperty(a1, v2, v1);
}

const void *OUTLINED_FUNCTION_45_7()
{
  v3 = *(v0 + 80);

  return CFArrayGetValueAtIndex(v3, v1);
}

uint64_t FigXPCAssetServerAssociateCopiedNeighborAsset(_xpc_connection_s *a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  xpc_connection_get_audit_token();
  memset(v10, 0, sizeof(v10));
  ClientPIDFromAuditToken = FigServer_GetClientPIDFromAuditToken();
  v5 = CreateServedAssetState(ClientPIDFromAuditToken, &v11);
  v6 = v11;
  if (v5 || (v5 = FigSandboxAssertionCreateForPID(), v5))
  {
    v8 = v5;
    goto LABEL_5;
  }

  xpc_connection_get_pid(a1);
  v7 = FigOSTransactionCreate();
  *(v6 + 8) = v7;
  if (!v7)
  {
    FigXPCAssetServerAssociateCopiedNeighborAsset_cold_1(v10);
    v8 = LODWORD(v10[0]);
    if (!LODWORD(v10[0]))
    {
      return v8;
    }

    goto LABEL_5;
  }

  v8 = FigXPCServerAssociateCopiedObjectWithNeighborProcess();
  if (v8)
  {
LABEL_5:
    DisposeServedAssetState(v6);
  }

  return v8;
}

uint64_t CreateServedAssetState(int a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x28uLL, 0x10E00407B9DDE52uLL);
  if (v4)
  {
    result = 0;
    v4[4] = a1;
  }

  else
  {
    CreateServedAssetState_cold_1(&v6);
    result = v6;
  }

  *a2 = v4;
  return result;
}

void DisposeServedAssetState(CFTypeRef *a1)
{
  if (a1)
  {
    v2 = a1[4];
    if (v2)
    {
      CFRelease(v2);
      a1[4] = 0;
    }

    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }

    v3 = a1[1];
    if (v3)
    {
      os_release(v3);
    }

    free(a1);
  }
}

uint64_t FigXPCAssetServerCopyAssetForID(uint64_t a1, CFTypeRef *a2)
{
  v3 = FigXPCServerRetainNeighborObjectFromID();
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    if (*a2)
    {
      v4 = CFGetTypeID(*a2);
      if (v4 == FigAssetGetTypeID())
      {
        return 0;
      }
    }

    FigXPCAssetServerCopyAssetForID_cold_1(&v7);
    v5 = v7;
  }

  if (a2 && v5 && *a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return v5;
}

uint64_t FigAssetServerStart()
{
  gCommonAssetServerAsyncQueue = dispatch_queue_create("CommonAssetServerAsyncQueue", 0);
  FigWatchdogMonitorDispatchQueue();
  FigAssetWatchdogMonitorCommonQueues();
  if (FigServer_IsMediaparserd())
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 1, HandleAssetMessage);
    return v0;
  }

  else
  {
    FigServer_IsMediaplaybackd();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v3 = Mutable;
      v1 = FigXPCServerStart();
      CFRelease(v3);
    }

    else
    {
      FigAssetServerStart_cold_1(&v6);
      return v6;
    }
  }

  return v1;
}

uint64_t HandleAssetCopyChapterDataMessage(const void *a1, void *a2, uint64_t a3)
{
  cf = 0;
  v5 = CFGetTypeID(a1);
  if (v5 != FigAssetGetTypeID())
  {
    HandleAssetCopyChapterDataMessage_cold_1(&v15);
    return v15;
  }

  int64 = xpc_dictionary_get_int64(a2, "ChapterGroupIndex");
  v7 = xpc_dictionary_get_int64(a2, "ChapterIndex");
  v8 = xpc_dictionary_get_int64(a2, "ChapterCount");
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v9)
  {
    return 4294954514;
  }

  v10 = v9(a1, int64, v7, v8, &cf);
  v11 = cf;
  if (v10)
  {
    v12 = v10;
    if (!cf)
    {
      return v12;
    }

    goto LABEL_5;
  }

  v12 = FigXPCMessageSetCFArray();
  v11 = cf;
  if (cf)
  {
LABEL_5:
    CFRelease(v11);
  }

  return v12;
}

uint64_t assetXPCServer_NotificationFilter(uint64_t a1, const void *a2, CFTypeRef cf1, uint64_t a4, uint64_t *a5, void *a6)
{
  v6 = a4;
  cf[0] = 0;
  if (!a4)
  {
    return v6;
  }

  if (CFEqual(cf1, @"assetNotice_PropertyLoaded") || CFEqual(cf1, @"assetNotice_PropertyRevised"))
  {
    v12 = CFGetTypeID(a2);
    if (v12 == FigAssetGetTypeID())
    {
      Value = CFDictionaryGetValue(v6, @"assetPayload_Property");
      if (!CFEqual(@"assetProperty_MakeReadAheadAssertionWhenCreatingByteStream", Value) && !CFEqual(@"assetProperty_OriginalReadAheadAssertion", Value) && !CFEqual(@"assetProperty_ContentByteStream", Value) && !CFEqual(@"assetProperty_FormatReader", Value) && !CFEqual(@"assetProperty_CPEProtector", Value) && !CFEqual(@"assetProperty_ByteStreamProvider", Value) && !CFEqual(@"assetProperty_StorageSession", Value))
      {
        FigAssetGetCMBaseObject();
        v15 = v14;
        v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v16)
        {
          if (!v16(v15, Value, *MEMORY[0x1E695E480], cf))
          {
            v17 = xpc_dictionary_create(0, 0, 0);
            if (v17)
            {
              v22 = v17;
              if (!assetXPCServer_SerializeAssetPropertyValueIntoXPCDictionary(*(a1 + 24), Value, cf[0], v17, v18, v19, v20, v21, v33, cf[0], cf[1], cf[2], cf[3], cf[4], cf[5], cf[6], cf[7], cf[8]))
              {
LABEL_16:
                xpc_dictionary_set_value(a6, "LoadedValue", v22);
                FigXPCMessageSetCFDictionary();
                v6 = 2;
LABEL_25:
                FigXPCRelease();
                goto LABEL_35;
              }

LABEL_24:
              v6 = 0;
              goto LABEL_25;
            }

            assetXPCServer_NotificationFilter_cold_1();
          }
        }
      }
    }
  }

  else if (CFEqual(cf1, @"assetTrackNotice_PropertyLoaded") || CFEqual(cf1, @"assetTrackNotice_PropertyRevised"))
  {
    v23 = CFGetTypeID(a2);
    if (v23 == FigAssetTrackGetTypeID())
    {
      v24 = CFDictionaryGetValue(v6, @"assetPayload_Property");
      FigAssetTrackGetCMBaseObject();
      v26 = v25;
      v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v27)
      {
        if (!v27(v26, v24, *MEMORY[0x1E695E480], cf))
        {
          v28 = xpc_dictionary_create(0, 0, 0);
          if (v28)
          {
            v22 = v28;
            if (!assetXPCServer_SerializeAssetTrackPropertyValueIntoXPCDictionary(v24, cf[0], v28))
            {
              goto LABEL_16;
            }

            goto LABEL_24;
          }

          assetXPCServer_NotificationFilter_cold_2();
        }
      }
    }
  }

  else if (CFDictionaryGetValue(v6, @"assetPayload_CFError"))
  {
    v29 = FigCFCopyCFErrorAsPropertyList();
    if (v29)
    {
      v30 = v29;
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v6);
      v6 = MutableCopy;
      if (MutableCopy)
      {
        CFDictionaryRemoveValue(MutableCopy, @"assetPayload_CFError");
        CFDictionarySetValue(v6, @"CFErrorAsDictionary", v30);
        *a5 = v6;
        v6 = 4;
      }

      else
      {
        assetXPCServer_NotificationFilter_cold_3();
      }

      CFRelease(v30);
      goto LABEL_35;
    }

    assetXPCServer_NotificationFilter_cold_4();
  }

  v6 = 0;
LABEL_35:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v6;
}

uint64_t assetXPCServer_SerializeAssetTrackPropertyValueIntoXPCDictionary(const void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  if (CFEqual(a1, @"FormatDescriptionArray"))
  {

    return FigXPCMessageSetFormatDescriptionArray();
  }

  else if (CFEqual(a1, @"CommonMetadata") || CFEqual(a1, @"assetTrackProperty_QuickTimeMetadata") || CFEqual(a1, @"assetTrackProperty_QuickTimeUserData") || CFEqual(a1, @"assetTrackProperty_ISOUserData"))
  {
    assetXPCServer_SerializeAssetTrackPropertyValueIntoXPCDictionary_cold_1(a2, a3, &v7);
    return v7;
  }

  else
  {

    return FigXPCMessageSetCFObject();
  }
}

uint64_t assetXPCServer_SerializeTracksArrayIntoXPCDictionary(uint64_t a1, CFArrayRef theArray, void *a3)
{
  Count = CFArrayGetCount(theArray);
  v6 = xpc_array_create(0, 0);
  if (!v6)
  {
    assetXPCServer_SerializeTracksArrayIntoXPCDictionary_cold_3(&value);
LABEL_18:
    v16 = value;
    goto LABEL_13;
  }

  v7 = xpc_array_create(0, 0);
  if (!v7)
  {
    assetXPCServer_SerializeTracksArrayIntoXPCDictionary_cold_2(&value);
    goto LABEL_18;
  }

  xdict = a3;
  if (Count < 1)
  {
LABEL_11:
    xpc_dictionary_set_value(xdict, "TrackIDsAndTypes", v6);
    xpc_dictionary_set_value(xdict, "TrackObjectIDs", v7);
    v16 = 0;
  }

  else
  {
    v8 = 0;
    while (1)
    {
      v20 = 0;
      v21 = 0;
      value = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
      if (!ValueAtIndex || (v10 = ValueAtIndex, v11 = CFGetTypeID(ValueAtIndex), v11 != FigAssetTrackGetTypeID()))
      {
        assetXPCServer_SerializeTracksArrayIntoXPCDictionary_cold_1(&v22);
        v16 = v22;
        goto LABEL_13;
      }

      v12 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v12)
      {
        v16 = 4294954514;
        goto LABEL_13;
      }

      v13 = v12(v10, &v21, &v20);
      if (v13)
      {
        break;
      }

      v14 = v20;
      v15 = v21;
      v13 = FigXPCServerAssociateCopiedObjectWithConnection();
      if (v13)
      {
        break;
      }

      xpc_array_set_uint64(v6, 0xFFFFFFFFFFFFFFFFLL, v14 | (v15 << 32));
      xpc_array_set_uint64(v7, 0xFFFFFFFFFFFFFFFFLL, value);
      if (Count == ++v8)
      {
        goto LABEL_11;
      }
    }

    v16 = v13;
  }

LABEL_13:
  FigXPCRelease();
  FigXPCRelease();
  return v16;
}

__n128 OUTLINED_FUNCTION_9_26()
{
  result = *(v0 - 160);
  v2 = *(v0 - 144);
  *(v0 - 192) = result;
  *(v0 - 176) = v2;
  return result;
}

CFTypeID OUTLINED_FUNCTION_17_17(CFTypeRef cf)
{

  return CFGetTypeID(cf);
}

CFTypeID OUTLINED_FUNCTION_23_20(CFTypeRef cf)
{

  return CFGetTypeID(cf);
}

CFTypeID OUTLINED_FUNCTION_24_13(CFTypeRef cf)
{

  return CFGetTypeID(cf);
}

CFTypeRef OUTLINED_FUNCTION_31_12(uint64_t a1, const __CFString *a2)
{

  return SecTaskCopyValueForEntitlement(v2, a2, 0);
}

uint64_t FigPWDKeyExchangeSenderGetClassID(uint64_t a1, uint64_t a2)
{
  if (FigPWDKeyExchangeSenderGetClassID_onceToken != -1)
  {
    FigPWDKeyExchangeSenderGetClassID_cold_1();
  }

  return sFigPWDKeyExchangeSenderClassID;
}

uint64_t RegisterFigPWDKeyExchangeSenderBaseTypeOnce()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigPWDKeyExchangeSenderGetTypeID(uint64_t a1, uint64_t a2)
{
  if (FigPWDKeyExchangeSenderGetClassID_onceToken != -1)
  {
    FigPWDKeyExchangeSenderGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

CGAffineTransform *FCRGetTransform@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v7 = MEMORY[0x1E69792E8];
  v8 = *MEMORY[0x1E69792E8];
  v9 = *(MEMORY[0x1E69792E8] + 40);
  if (a2 > 0.0 && a3 > 0.0)
  {
    v9 = fmin(a4 / a2, a5 / a3);
    v8 = v9;
  }

  v14 = v5;
  v15 = v6;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v13.m11 = v8;
  *&v13.m12 = *(v7 + 8);
  *&v13.m14 = *(v7 + 24);
  v13.m22 = v9;
  v10 = v7[6];
  *&v13.m33 = v7[5];
  *&v13.m41 = v10;
  *&v13.m43 = v7[7];
  v11 = v7[4];
  *&v13.m23 = v7[3];
  *&v13.m31 = v11;
  return CATransform3DGetAffineTransform(a1, &v13);
}

double FCRGetVideoPresentationBounds(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v13 = 0u;
  v14 = 0u;
  v10 = a5;
  v12 = 0u;
  FCRGetTransform(&v12, a1, a2, a5, a6);
  if (a1 > 0.0 && a2 > 0.0)
  {
    v10 = a2 * *&v13 + *&v12 * a1;
  }

  return a3 + (a5 - v10) * 0.5;
}

double FCRGetOverscanSafeRectForVideo(double *a1)
{
  v1 = FCRGetVideoPresentationBounds(a1[47], a1[48], a1[43], a1[44], a1[45], a1[46]);

  *&result = CGRectInset(*&v1, v3 * 0.1 * 0.5, v4 * 0.1 * 0.5);
  return result;
}

double FCRGetOverscanSafeRectForViewport(uint64_t a1)
{
  if (!CFPreferencesGetAppBooleanValue(@"use_legacy_overscan", @"com.apple.coremedia", 0))
  {
    return FCRGetOverscanSafeRectForVideo(a1);
  }

  v3 = *(a1 + 344);
  *&result = CGRectInset(v3, v3.size.width * 0.1 * 0.5, v3.size.height * 0.1 * 0.5);
  return result;
}

double FCRGetCEA608CellSize(uint64_t a1)
{
  if (!a1)
  {
    return *MEMORY[0x1E695F060];
  }

  FigGeometryDimensionMake();
  FigGeometryDimensionMake();
  FigGeometryPointMake();
  FigGeometryMappingConvertPointToPoint();
  FigGeometryPointGetCGPoint();
  v2 = v1;
  FigGeometryDimensionMake();
  FigGeometryDimensionMake();
  FigGeometryPointMake();
  FigGeometryMappingConvertPointToPoint();
  FigGeometryPointGetCGPoint();
  return v3 - v2;
}

void videoContainerLayer_boundsDidChangeCallback(uint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = objc_autoreleasePoolPush();
  values = a3;
  if (a3)
  {
    v14 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    FPSupport_AppendDeferredTransactionChangeForSettingBoundsOnLayers(a2, v14, a4, a5, a6, a7);
    FPSupport_AppendDeferredTransactionChangeToRelease(a2, v14);
  }

  objc_autoreleasePoolPop(v13);
}

void videoContainerLayer_activeConfigurationChangedCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_autoreleasePoolPush();
  v5 = MEMORY[0x1E695F060];
  v9 = *MEMORY[0x1E695F060];
  CGSizeIfPresent = FigCFDictionaryGetCGSizeIfPresent();
  v7 = *v5;
  v8 = v5[1];
  if (CGSizeIfPresent)
  {
    v7 = *&v9;
    v8 = *(&v9 + 1);
  }

  [a3 setPresentationSize:{v7, v8, v9, v9}];
  objc_autoreleasePoolPop(v4);
}

const __CFDictionary *FCSupport_HasChapterDetails(const __CFDictionary *result)
{
  if (result)
  {
    return (CFDictionaryContainsKey(result, @"ChapterSampleMediaPTS") == 0);
  }

  return result;
}

uint64_t FCSupport_CopyChapterTimesForChapterGroup(CFArrayRef theArray, CFIndex a2, __CFArray **a3)
{
  if (a2 < 0)
  {
    FCSupport_CopyChapterTimesForChapterGroup_cold_3(&v18);
    return v18;
  }

  if (!a3)
  {
    FCSupport_CopyChapterTimesForChapterGroup_cold_2(&v17);
    return v17;
  }

  if (!theArray)
  {
    goto LABEL_10;
  }

  if (CFArrayGetCount(theArray) <= a2)
  {
    FCSupport_CopyChapterTimesForChapterGroup_cold_1(&v16);
    return v16;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, a2);
  Value = CFDictionaryGetValue(ValueAtIndex, @"chapterGroupKey_PerChapterInfo");
  if (Value && (v8 = Value, Count = CFArrayGetCount(Value), Count >= 1))
  {
    v10 = Count;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    for (i = 0; i != v10; ++i)
    {
      v13 = CFArrayGetValueAtIndex(v8, i);
      v14 = CFDictionaryGetValue(v13, @"ChapterTime");
      CFArrayAppendValue(Mutable, v14);
    }
  }

  else
  {
LABEL_10:
    Mutable = 0;
  }

  result = 0;
  *a3 = Mutable;
  return result;
}

uint64_t FCSupport_CopyChapterTimeRangesForChapterGroup(CFArrayRef theArray, CFIndex a2, __CFArray **a3)
{
  keys[2] = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    FCSupport_CopyChapterTimeRangesForChapterGroup_cold_3(keys);
    return LODWORD(keys[0]);
  }

  v3 = a3;
  if (!a3)
  {
    FCSupport_CopyChapterTimeRangesForChapterGroup_cold_2(keys);
    return LODWORD(keys[0]);
  }

  if (!theArray)
  {
    goto LABEL_12;
  }

  if (CFArrayGetCount(theArray) <= a2)
  {
    FCSupport_CopyChapterTimeRangesForChapterGroup_cold_1(keys);
    return LODWORD(keys[0]);
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, a2);
  Value = CFDictionaryGetValue(ValueAtIndex, @"chapterGroupKey_PerChapterInfo");
  if (Value)
  {
    v8 = Value;
    Count = CFArrayGetCount(Value);
    if (Count >= 1)
    {
      v10 = Count;
      v22 = v3;
      v11 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      v13 = 0;
      v14 = *MEMORY[0x1E6960CA0];
      v15 = *MEMORY[0x1E6960C90];
      v16 = MEMORY[0x1E695E9E8];
      do
      {
        v17 = CFArrayGetValueAtIndex(v8, v13);
        v18 = CFDictionaryGetValue(v17, @"ChapterTime");
        v19 = CFDictionaryGetValue(v17, @"ChapterDuration");
        keys[0] = v14;
        keys[1] = v15;
        values[0] = v18;
        values[1] = v19;
        v20 = CFDictionaryCreate(v11, keys, values, 2, MEMORY[0x1E695E9D8], v16);
        CFArrayAppendValue(Mutable, v20);
        if (v20)
        {
          CFRelease(v20);
        }

        ++v13;
      }

      while (v10 != v13);
      v3 = v22;
      goto LABEL_13;
    }
  }

LABEL_12:
  Mutable = 0;
LABEL_13:
  result = 0;
  *v3 = Mutable;
  return result;
}

void fcSupport_getTrackMediaTypeAndEnabled(uint64_t a1, uint64_t a2, Boolean *a3)
{
  cf = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v6 && !v6(a1, a2, &cf, 0))
  {
    cf1 = 0;
    FigTrackReaderGetFigBaseObject();
    v8 = v7;
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9 && (v9(v8, @"TrackEnabled", *MEMORY[0x1E695E480], &cf1), cf1))
    {
      v10 = CFEqual(cf1, *MEMORY[0x1E695E4D0]);
      CFRelease(cf1);
    }

    else
    {
      v10 = 1;
    }

    *a3 = v10;
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t OUTLINED_FUNCTION_4_55(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, CMTime *time2, uint64_t a16, uint64_t a17, uint64_t a18, CMTime *time1, uint64_t a20, uint64_t a21, uint64_t a22, __int128 time2a, uint64_t time2_16, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t time1a, uint64_t time1_8, uint64_t time1_16, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  time2a = *v57;
  time2_16 = a57;

  return CMTimeCompare(&time1a, &time2a);
}

__n128 OUTLINED_FUNCTION_5_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, uint64_t a11)
{
  result = a10;
  *(v11 - 96) = a10;
  *(v11 - 80) = a11;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_43()
{

  return CMBaseObjectGetVTable();
}

CMTime *OUTLINED_FUNCTION_13_18@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CMTime *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, CMTime *rhs, uint64_t a19, CMTime *lhs, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t rhsa, uint64_t rhs_8, uint64_t rhs_16, uint64_t a31, uint64_t lhsa)
{
  rhs_16 = a1;

  return CMTimeSubtract(&a16, &lhsa, &rhsa);
}

uint64_t ParseFileTypeAtom(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2[3])
  {
    ParseFileTypeAtom_cold_1(&v4);
    return v4;
  }

  else if (a2[4])
  {
    ParseFileTypeAtom_cold_2(&v5);
    return v5;
  }

  else if (a2[5])
  {
    ParseFileTypeAtom_cold_3(&v6);
    return v6;
  }

  else
  {

    return IFFParseFileTypeAtom(a1);
  }
}

uint64_t ParseGlobalMetaDataGroupAtom(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v16 = 0;
  if (FigAtomStreamGetCurrentAtomVersionAndFlags())
  {
    goto LABEL_19;
  }

  if (FigAtomStreamReadCurrentAtomData())
  {
    goto LABEL_19;
  }

  v18 = vrev32_s8(v18);
  v15 = 0;
  if (FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    goto LABEL_19;
  }

  if (v17 | v16)
  {
    ParseGlobalMetaDataGroupAtom_cold_8(&v14);
LABEL_18:
    if (!v14)
    {
      return 0;
    }

    goto LABEL_19;
  }

  if (v18.i32[0] < 0)
  {
    ParseGlobalMetaDataGroupAtom_cold_7(&v14);
    goto LABEL_18;
  }

  IFFInformationReserveItemGroup(*(a2 + 8), v18.i32[0], 0, 0, &v19, v3, v4, v5, v14);
  if (!v6)
  {
    v7 = v18.i32[1]--;
    v8 = -1;
    if (!v7)
    {
LABEL_14:
      *(v19 + 5) = v8;
      return 0;
    }

    v9 = 12;
    while (1)
    {
      LODWORD(v14) = 0;
      if (FigAtomStreamReadCurrentAtomData())
      {
        break;
      }

      v10 = bswap32(v14);
      LODWORD(v14) = v10;
      IFFInformationAddItemToGroup(*(a2 + 8), v10, v19);
      if (v11)
      {
        break;
      }

      if (v10 < v8)
      {
        v8 = v10;
      }

      v12 = v18.i32[1]--;
      v9 += 4;
      if (!v12)
      {
        goto LABEL_14;
      }
    }
  }

LABEL_19:
  if (v19)
  {
    IFFInformationDropItemGroup(*(a2 + 8), v19);
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_2_70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15)
{

  return FigAtomStreamInitWithParent();
}

uint64_t OUTLINED_FUNCTION_6_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t a13)
{

  return FigAtomStreamReadCurrentAtomData();
}

uint64_t OUTLINED_FUNCTION_7_32(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *dataPointerOut, CMBlockBufferRef theBuffer)
{
  a9 = 0;
  dataPointerOut = 0;
  v12 = theBuffer;

  return CMBlockBufferGetDataPointer(v12, 0, &a9, 0, &dataPointerOut);
}

void OUTLINED_FUNCTION_8_24()
{

  JUMPOUT(0x19A8CC720);
}

uint64_t OUTLINED_FUNCTION_14_22(uint64_t a1)
{

  return FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
}

uint64_t OUTLINED_FUNCTION_17_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{

  return FigAtomStreamGetCurrentAtomVersionAndFlags();
}

uint64_t OUTLINED_FUNCTION_26_17(OpaqueCMBlockBuffer *a1, uint64_t a2, size_t *a3, uint64_t a4, char **a5)
{

  return CMBlockBufferGetDataPointer(a1, 0, a3, 0, a5);
}

uint64_t OUTLINED_FUNCTION_33_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return FigAtomStreamReadCurrentAtomData();
}

uint64_t OUTLINED_FUNCTION_39_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return FigAtomStreamReadCurrentAtomData();
}

uint64_t FigUserDataCopyOSTypeKeysFromCommonKey(void *a1, CFArrayRef *a2)
{
  MEMORY[0x19A8D3660](&_MergedGlobals_3, FigUserDataSetUpCommonKeyMapping);
  v4 = qword_1EAF19308;
  MEMORY[0x19A8D3660](&_MergedGlobals_3, FigUserDataSetUpCommonKeyMapping);
  FigCopyOSTypeKeysFromCommonKeys(a1, a2, v4, gUserDataCommonKeyMappingCountDict);
  return 0;
}

double FigCopyOSTypeKeysFromCommonKeys(void *key, CFArrayRef *a2, CFDictionaryRef theDict, const __CFDictionary *a4)
{
  if (!key)
  {
    return FigCopyOSTypeKeysFromCommonKeys_cold_2();
  }

  if (!a2)
  {
    return FigCopyOSTypeKeysFromCommonKeys_cold_1();
  }

  *a2 = 0;
  Value = CFDictionaryGetValue(theDict, key);
  values = Value;
  if (Value)
  {
    v9 = Value;
    v10 = CFDictionaryGetValue(a4, key);
    if (v10 < 1)
    {
      v12 = *MEMORY[0x1E695E480];
      p_values = &values;
      v11 = 1;
    }

    else
    {
      v11 = v10;
      v12 = *MEMORY[0x1E695E480];
      p_values = v9;
    }

    *a2 = CFArrayCreate(v12, p_values, v11, 0);
  }

  return result;
}

uint64_t FigISOUserDataCopyOSTypeKeysFromCommonKey(void *a1, CFArrayRef *a2)
{
  MEMORY[0x19A8D3660](&unk_1ED4CA0B0, FigISOUserDataSetUpCommonKeyMapping);
  v4 = qword_1EAF19310;
  MEMORY[0x19A8D3660](&unk_1ED4CA0B0, FigISOUserDataSetUpCommonKeyMapping);
  FigCopyOSTypeKeysFromCommonKeys(a1, a2, v4, gISOUserDataCommonKeyMappingCountDict);
  return 0;
}

uint64_t FigQuickTimeMetadataCopyNativeKeysFromCommonKey(const void *a1, void *a2)
{
  MEMORY[0x19A8D3660](&unk_1ED4CA0C0, FigQuickTimeMetadataSetUpCommonKeyMapping);
  if (a1)
  {
    if (a2)
    {
      Value = CFDictionaryGetValue(qword_1EAF19318, a1);
      if (Value)
      {
        v5 = CFRetain(Value);
      }

      else
      {
        v5 = 0;
      }

      result = 0;
      *a2 = v5;
    }

    else
    {
      FigQuickTimeMetadataCopyNativeKeysFromCommonKey_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    FigQuickTimeMetadataCopyNativeKeysFromCommonKey_cold_2(&v8);
    return v8;
  }

  return result;
}

uint64_t FigUserDataStringKeyToOSTypeKey(const __CFString *a1, unsigned int *a2)
{
  MEMORY[0x19A8D3660](&FigUserDataSetUpStringKeyMappingOnce_sCreateKeyArrayOnce, FigUserDataSetUpStringKeyMapping);
  v4 = gUserDataStringKeyToOSTypeKeyDict;

  return FigMetadataCopyOSTypeKeyFromStringKey(v4, a1, a2);
}

uint64_t FigMetadataCopyOSTypeKeyFromStringKey(const __CFDictionary *a1, const __CFString *a2, unsigned int *a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    *a3 = Value;
    return 1;
  }

  else
  {

    return FigMetadataStringKeyToOSTypeKey(a2, 0, a3);
  }
}

uint64_t FigISOUserDataStringKeyToOSTypeKey(const __CFString *a1, unsigned int *a2)
{
  MEMORY[0x19A8D3660](&FigISOUserDataSetUpStringKeyMappingOnce_sCreateKeyArrayOnce, FigISOUserDataSetUpStringKeyMapping);
  v4 = gISOUserDataStringKeyToOSTypeKeyDict;

  return FigMetadataCopyOSTypeKeyFromStringKey(v4, a1, a2);
}

uint64_t FigMetadataStringKeyToOSTypeKey(const __CFString *a1, int a2, unsigned int *a3)
{
  *buffer = 0;
  Length = CFStringGetLength(a1);
  if (Length > 4)
  {
    return 0;
  }

  v7 = Length;
  v13.location = 0;
  v13.length = Length;
  if (Length != CFStringGetBytes(a1, v13, 0, 0, 0, buffer, 4, 0))
  {
    return 0;
  }

  v8 = bswap32(*buffer);
  v9 = 32 - 8 * v7;
  if (v7 == 4 || a2 == 0)
  {
    v9 = 0;
  }

  *a3 = v8 >> v9;
  return 1;
}

uint64_t FigID3MetadataCommonKeyToOSTypeKey(const void *a1, _DWORD *a2)
{
  MEMORY[0x19A8D3660](&unk_1ED4CA0E0, FigID3MetadataSetUpCommonKeyMapping);
  result = CFDictionaryGetValue(qword_1EAF192F8, a1);
  if (result)
  {
    *a2 = result;
    return 1;
  }

  return result;
}

CFNumberRef FigMetadataCopyLangCodeFromLocale(const __CFLocale *a1)
{
  MEMORY[0x19A8D3660](&FigMetadataSetupLanguageMapping_sCreateKeyMappingOnce, FigMetadataSetUpISO639LanguageMapping);
  v2 = gISO639CanonicalToLangCodeDict;
  v3 = CFLocaleGetValue(a1, *MEMORY[0x1E695E6F0]);
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(v2, v3, &value))
  {
    return 0;
  }

  valuePtr = value;
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr);
}

uint64_t FigMetadataGetPackedISO639_2T(const __CFString *a1)
{
  *buffer = 0;
  if (a1 && CFStringGetLength(a1) == 3 && CFStringGetCString(a1, buffer, 4, 0x600u))
  {
    return ((32 * buffer[1] - 3072) | (buffer[0] << 10) ^ 0x8000 | (buffer[2] - 96));
  }

  else
  {
    return 21956;
  }
}

uint64_t FigMetadataGetPackedISO639_2TFromLocale(const __CFLocale *a1)
{
  MEMORY[0x19A8D3660](&FigMetadataSetupLanguageMapping_sCreateKeyMappingOnce, FigMetadataSetUpISO639LanguageMapping);
  if (!a1 || ((v2 = gISO639CanonicalToISO639_2TDict, (v3 = CFLocaleGetValue(a1, *MEMORY[0x1E695E6F0])) != 0) ? (v4 = v2 == 0) : (v4 = 1), v4))
  {
    LOWORD(result) = 21956;
  }

  else
  {
    v6 = v3;
    value = 0;
    if (CFDictionaryGetValueIfPresent(v2, v3, &value))
    {
      LOWORD(result) = value;
    }

    else
    {
      LOWORD(result) = FigMetadataGetPackedISO639_2T(v6);
    }
  }

  return result;
}

void *FigMetadataGetISO639_1FromISO639_2T(const __CFString *a1)
{
  value = 0;
  MEMORY[0x19A8D3660](&FigMetadataSetupLanguageMapping_sCreateKeyMappingOnce, FigMetadataSetUpISO639LanguageMapping);
  v2 = gISO639_2TToISO639_1Dict;
  PackedISO639_2T = FigMetadataGetPackedISO639_2T(a1);
  if (CFDictionaryGetValueIfPresent(v2, PackedISO639_2T, &value))
  {
    return value;
  }

  else
  {
    return 0;
  }
}

uint64_t FigMetadataGetPackedISO639_2TFromLocaleIdentifier(const __CFString *a1)
{
  if (a1)
  {
    value = 0;
    MEMORY[0x19A8D3660](&FigMetadataSetupNonCanonicalLanguageMapping_sCreateKeyMappingOnce, FigMetadataSetUpISO639NonCanonicalLanguageMapping);
    v3 = gISO639NonCanonicalToISO639_2TDict;
    v4 = *MEMORY[0x1E695E480];
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], a1, @"-");
    ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
    ValueIfPresent = CFDictionaryGetValueIfPresent(v3, ValueAtIndex, &value);
    PackedISO639_2TFromLocale = value;
    if (ArrayBySeparatingStrings)
    {
      CFRelease(ArrayBySeparatingStrings);
    }

    if (!ValueIfPresent)
    {
      v9 = CFLocaleCreate(v4, a1);
      PackedISO639_2TFromLocale = FigMetadataGetPackedISO639_2TFromLocale(v9);
      if (v9)
      {
        CFRelease(v9);
      }
    }

    return PackedISO639_2TFromLocale;
  }

  else
  {

    return FigMetadataGetPackedISO639_2TFromLocale(0);
  }
}

void FigMetadataCopyCurrentLocaleAndLangCode(CFTypeRef *a1, CFNumberRef *a2)
{
  v4 = CFLocaleCopyCurrent();
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      *a1 = CFRetain(v4);
    }

    if (a2)
    {
      v6 = CFLocaleGetValue(v5, *MEMORY[0x1E695E6F0]);
      MEMORY[0x19A8D3660](&FigMetadataSetupLanguageMapping_sCreateKeyMappingOnce, FigMetadataSetUpISO639LanguageMapping);
      v7 = gISO639CanonicalToLangCodeDict;
      *a2 = 0;
      if (v7)
      {
        if (v6)
        {
          value = 0;
          if (CFDictionaryGetValueIfPresent(v7, v6, &value))
          {
            valuePtr = value;
            *a2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr);
          }
        }
      }
    }

    CFRelease(v5);
  }
}

uint64_t FigMetadataCopyISO8601GMTStringFromDate(const __CFDate *a1, CFStringRef *a2)
{
  if (!a1)
  {
    FigMetadataCopyISO8601GMTStringFromDate_cold_5(&v12);
    return v12;
  }

  if (!a2)
  {
    FigMetadataCopyISO8601GMTStringFromDate_cold_4(&v12);
    return v12;
  }

  v4 = *MEMORY[0x1E695E480];
  ISO8601Formatter = CFDateFormatterCreateISO8601Formatter(*MEMORY[0x1E695E480], 0x773uLL);
  if (!ISO8601Formatter)
  {
    FigMetadataCopyISO8601GMTStringFromDate_cold_3(&v12);
    return v12;
  }

  v6 = ISO8601Formatter;
  v7 = CFTimeZoneCreateWithTimeIntervalFromGMT(v4, 0.0);
  if (v7)
  {
    v8 = v7;
    CFDateFormatterSetProperty(v6, *MEMORY[0x1E695E5D8], v7);
    StringWithDate = CFDateFormatterCreateStringWithDate(v4, v6, a1);
    if (StringWithDate)
    {
      v10 = 0;
      *a2 = StringWithDate;
    }

    else
    {
      FigMetadataCopyISO8601GMTStringFromDate_cold_1(&v12);
      v10 = v12;
    }

    CFRelease(v8);
  }

  else
  {
    FigMetadataCopyISO8601GMTStringFromDate_cold_2(&v12);
    v10 = v12;
  }

  CFRelease(v6);
  return v10;
}

uint64_t FigISOUserDataWeKnowIsISOText(int a1)
{
  result = 0;
  if (a1 <= 1735291492)
  {
    if (a1 <= 1668246635)
    {
      if (a1 == 1633969523)
      {
        return 1;
      }

      v3 = 1635087464;
    }

    else
    {
      if (a1 == 1668246636 || a1 == 1668313716)
      {
        return 1;
      }

      v3 = 1685283696;
    }

LABEL_15:
    if (a1 != v3)
    {
      return result;
    }

    return 1;
  }

  if (a1 > 1937207908)
  {
    if (a1 == 1937207909 || a1 == 1953390957)
    {
      return 1;
    }

    v3 = 1953068140;
    goto LABEL_15;
  }

  if (a1 != 1735291493 && a1 != 1819239273)
  {
    v3 = 1885696614;
    goto LABEL_15;
  }

  return 1;
}

uint64_t FigMetadataWriteFreeAtom(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a4)
  {
    result = FigAtomWriterGetAtomSize();
    if (result)
    {
      return result;
    }

    v8 = a4;
    if (a4 <= a3)
    {
      v8 = a3;
    }

    a3 = v8;
  }

  return FigMetadataAppendFreeAtom(a2, a3);
}

CFArrayRef FigMetadataSetupCommonKeys()
{
  values[24] = *MEMORY[0x1E69E9840];
  values[0] = @"title";
  values[1] = @"creator";
  values[2] = @"subject";
  values[3] = @"description";
  values[4] = @"publisher";
  values[5] = @"contributor";
  values[6] = @"creationDate";
  values[7] = @"lastModifiedDate";
  values[8] = @"type";
  values[9] = @"format";
  values[10] = @"identifier";
  values[11] = @"source";
  values[12] = @"language";
  values[13] = @"relation";
  values[14] = @"location";
  values[15] = @"copyrights";
  values[16] = @"albumName";
  values[17] = @"author";
  values[18] = @"artist";
  values[19] = @"artwork";
  values[20] = @"make";
  values[21] = @"model";
  values[22] = @"software";
  values[23] = @"accessibilityDescription";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 24, 0);
  gCommonKeyArray = result;
  return result;
}

__CFString *FigMetadataGetCommonKey(CFTypeRef cf1, const __CFString *a2)
{
  result = 0;
  if (cf1 && a2)
  {
    if (CFEqual(cf1, @"udta"))
    {
      MEMORY[0x19A8D3660](&_MergedGlobals_3, FigUserDataSetUpCommonKeyMapping);
      v5 = 1;
      v6 = &gUserDataOSTypeKeyToCommonKeyDict;
    }

    else if (CFEqual(cf1, @"uiso"))
    {
      MEMORY[0x19A8D3660](&unk_1ED4CA0B0, FigISOUserDataSetUpCommonKeyMapping);
      v5 = 1;
      v6 = &gISOUserDataOSTypeKeyToCommonKeyDict;
    }

    else if (CFEqual(cf1, @"mdta"))
    {
      MEMORY[0x19A8D3660](&unk_1ED4CA0C0, FigQuickTimeMetadataSetUpCommonKeyMapping);
      v5 = 0;
      v6 = &gQuickTimeMetadataNativeKeyToCommonKeyDict;
    }

    else if (CFEqual(cf1, @"itsk"))
    {
      MEMORY[0x19A8D3660](&unk_1ED4CA0D0, FigiTunesMetadataSetUpCommonKeyMapping);
      v5 = 1;
      v6 = &giTunesMetadataShortKeyToCommonKeyDict;
    }

    else if (CFEqual(cf1, @"org.id3"))
    {
      MEMORY[0x19A8D3660](&unk_1ED4CA0E0, FigID3MetadataSetUpCommonKeyMapping);
      v5 = 1;
      v6 = &gID3MetadataOSTypeKeyToCommonKeyDict;
    }

    else if (CFEqual(cf1, @"vorb"))
    {
      MEMORY[0x19A8D3660](&unk_1ED4CA0F0, FigVorbisCommentSetUpCommonKeyMapping);
      v5 = 0;
      v6 = &gVorbisCommentFieldStringKeyToCommonKeyDict;
    }

    else
    {
      if (CFEqual(cf1, @"icy"))
      {
        if (FigCFEqual())
        {
          return @"title";
        }

        else
        {
          return 0;
        }
      }

      if (!CFEqual(cf1, @"caaf"))
      {
        if (CFEqual(cf1, @"comn"))
        {
          return a2;
        }

        else
        {
          return 0;
        }
      }

      MEMORY[0x19A8D3660](&FigAudioFileInfoDictionarySetUpCommonKeyMappingOnce_sCreateKeyArrayOnce, FigAudioFileInfoDictionarySetUpCommonKeyMapping);
      v5 = 0;
      v6 = &gAudioFileInfoDictionaryKeyToCommonKeyDict;
    }

    v7 = *v6;
    if (!*v6)
    {
      return 0;
    }

    v8 = CFGetTypeID(a2);
    if (v8 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      return CFDictionaryGetValue(v7, v9);
    }

    v10 = CFGetTypeID(a2);
    if (v10 != CFStringGetTypeID())
    {
      return 0;
    }

    if (v5)
    {
      v11 = 0;
      if (FigMetadataStringKeyToOSTypeKeyWithKeySpace(cf1, a2, &v11))
      {
        v9 = v11;
        return CFDictionaryGetValue(v7, v9);
      }

      return 0;
    }

    return CFDictionaryGetValue(v7, a2);
  }

  return result;
}

CFIndex FigMetadataStringKeyToOSTypeKeyWithKeySpace(uint64_t a1, const __CFString *a2, unsigned int *a3)
{
  if (FigCFEqual())
  {
    MEMORY[0x19A8D3660](&FigUserDataSetUpStringKeyMappingOnce_sCreateKeyArrayOnce, FigUserDataSetUpStringKeyMapping);
    v5 = gUserDataStringKeyToOSTypeKeyDict;
LABEL_5:

    return FigMetadataCopyOSTypeKeyFromStringKey(v5, a2, a3);
  }

  if (FigCFEqual())
  {
    MEMORY[0x19A8D3660](&FigISOUserDataSetUpStringKeyMappingOnce_sCreateKeyArrayOnce, FigISOUserDataSetUpStringKeyMapping);
    v5 = gISOUserDataStringKeyToOSTypeKeyDict;
    goto LABEL_5;
  }

  if (FigCFEqual())
  {

    return FigiTunesMetadataShortStringKeyToOSTypeKey(a2, a3);
  }

  else
  {
    if (FigCFEqual())
    {
      v7 = a2;
      v8 = 1;
    }

    else
    {
      v7 = a2;
      v8 = 0;
    }

    return FigMetadataStringKeyToOSTypeKey(v7, v8, a3);
  }
}

uint64_t FigMetadataCopyTrackCommonMetadata(uint64_t a1, const __CFAllocator *a2, __CFArray **a3)
{
  v26 = 0;
  v27 = 0;
  cf = 0;
  v25 = 0;
  if (!a1)
  {
    FigMetadataCopyTrackCommonMetadata_cold_2(&v28);
LABEL_29:
    v19 = v28;
    goto LABEL_18;
  }

  if (!a3)
  {
    FigMetadataCopyTrackCommonMetadata_cold_1(&v28);
    goto LABEL_29;
  }

  FigTrackReaderGetFigBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(v6, @"SupportsMetadataArrays", a2, &cf);
    v7 = cf;
  }

  if (v7 != *MEMORY[0x1E695E4D0])
  {
    FigTrackReaderGetFigBaseObject();
    v9 = v8;
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v10(v9, @"QuickTimeMetadataReader", a2, &v27);
    }

    FigTrackReaderGetFigBaseObject();
    v12 = v11;
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(v12, @"QuickTimeUserDataReader", a2, &v26);
    }

    FigTrackReaderGetFigBaseObject();
    v15 = v14;
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v16)
    {
      v16(v15, @"ISOUserDataReader", a2, &v25);
      v17 = v25;
    }

    else
    {
      v17 = 0;
    }

    v18 = FigMetadataCopyCommonMetadata(v27, 0, v26, v17, 0, a2, a3);
    goto LABEL_14;
  }

  FigTrackReaderGetFigBaseObject();
  v21 = v20;
  v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v22)
  {
    v18 = v22(v21, @"CommonMetadataArray", a2, a3);
LABEL_14:
    v19 = v18;
    goto LABEL_18;
  }

  v19 = 4294954514;
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  return v19;
}

uint64_t FigMetadataCopyCommonMetadata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const __CFAllocator *a6, __CFArray **a7)
{
  theDict = 0;
  value = 0;
  MEMORY[0x19A8D3660](&FigMetadataGetAllCommonKeys_sCreateKeyArrayOnce, FigMetadataSetupCommonKeys);
  v14 = gCommonKeyArray;
  v28 = a7;
  if (gCommonKeyArray)
  {
    Count = CFArrayGetCount(gCommonKeyArray);
    if (Count >= 1)
    {
      v15 = 0;
      Mutable = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v14, v15);
        if (a1)
        {
          v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v18)
          {
            if (!v18(a1, @"comn", ValueAtIndex, 0, a6, &value, &theDict))
            {
              goto LABEL_23;
            }
          }
        }

        if (a2)
        {
          v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v19)
          {
            if (!v19(a2, @"comn", ValueAtIndex, 0, a6, &value, &theDict))
            {
              goto LABEL_23;
            }
          }
        }

        if (a3)
        {
          v20 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v20)
          {
            if (!v20(a3, @"comn", ValueAtIndex, 0, a6, &value, &theDict))
            {
              goto LABEL_23;
            }
          }
        }

        if (!a4)
        {
          break;
        }

        v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v21)
        {
          v22 = v21(a4, @"comn", ValueAtIndex, 0, a6, &value, &theDict) != 0;
          if (!a5)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v22 = 1;
          if (!a5)
          {
            goto LABEL_23;
          }
        }

        if (v22)
        {
          goto LABEL_21;
        }

LABEL_23:
        if (value)
        {
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(a6, 0, MEMORY[0x1E695E9C0]);
            if (!Mutable)
            {
              FigMetadataCopyCommonMetadata_cold_2(&v32);
              goto LABEL_47;
            }
          }

          if (theDict)
          {
            MutableCopy = CFDictionaryCreateMutableCopy(a6, 0, theDict);
          }

          else
          {
            MutableCopy = CFDictionaryCreateMutable(a6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          }

          v25 = MutableCopy;
          if (!MutableCopy)
          {
            FigMetadataCopyCommonMetadata_cold_1(&v32);
            goto LABEL_47;
          }

          CFDictionaryAddValue(MutableCopy, @"value", value);
          CFArrayAppendValue(Mutable, v25);
          CFRelease(v25);
          if (value)
          {
            CFRelease(value);
            value = 0;
          }
        }

        if (theDict)
        {
          CFRelease(theDict);
          theDict = 0;
        }

        if (Count == ++v15)
        {
          goto LABEL_37;
        }
      }

      if (!a5)
      {
        goto LABEL_23;
      }

LABEL_21:
      v23 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v23)
      {
        v23(a5, @"comn", ValueAtIndex, 0, a6, &value, &theDict);
      }

      goto LABEL_23;
    }

    FigMetadataCopyCommonMetadata_cold_3(&v32);
    Mutable = 0;
LABEL_47:
    v26 = v32;
  }

  else
  {
    Mutable = 0;
LABEL_37:
    v26 = 0;
    *v28 = Mutable;
    Mutable = 0;
  }

  if (value)
  {
    CFRelease(value);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v26;
}

uint64_t FigMetadataCopyMovieCommonMetadata(uint64_t a1, const __CFAllocator *a2, __CFArray **a3)
{
  v26 = 0;
  cf = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  if (!a1)
  {
    FigMetadataCopyMovieCommonMetadata_cold_2(&v28);
LABEL_27:
    v21 = v28;
    goto LABEL_16;
  }

  if (!a3)
  {
    FigMetadataCopyMovieCommonMetadata_cold_1(&v28);
    goto LABEL_27;
  }

  FigFormatReaderGetFigBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(v6, @"QuickTimeMetadataReader", a2, &cf);
  }

  FigFormatReaderGetFigBaseObject();
  v9 = v8;
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10)
  {
    v10(v9, @"iTunesMetadataReader", a2, &v26);
  }

  FigFormatReaderGetFigBaseObject();
  v12 = v11;
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v13(v12, @"QuickTimeUserDataReader", a2, &v25);
  }

  FigFormatReaderGetFigBaseObject();
  v15 = v14;
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v16)
  {
    v16(v15, @"ISOUserDataReader", a2, &v24);
  }

  FigFormatReaderGetFigBaseObject();
  v18 = v17;
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v19)
  {
    v19(v18, @"MetadataReader", a2, &v23);
    v20 = v23;
  }

  else
  {
    v20 = 0;
  }

  v21 = FigMetadataCopyCommonMetadata(cf, v26, v25, v24, v20, a2, a3);
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_16:
  if (v26)
  {
    CFRelease(v26);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  return v21;
}

uint64_t FigMetadataCopyMovieMetadata(uint64_t a1, const __CFAllocator *a2, __CFArray **a3)
{
  cf = 0;
  if (!a1)
  {
    FigMetadataCopyMovieMetadata_cold_2(&v13);
    return v13;
  }

  if (!a3)
  {
    FigMetadataCopyMovieMetadata_cold_1(&v13);
    return v13;
  }

  FigFormatReaderGetFigBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    return 0;
  }

  v8 = v7(v6, @"MetadataReaders", a2, &cf);
  v9 = cf;
  if (v8)
  {
    v10 = 0;
    if (!cf)
    {
      return v10;
    }

    goto LABEL_9;
  }

  v10 = FigMetadataCopyAllMetadata(cf, a2, a3);
  v9 = cf;
  if (cf)
  {
LABEL_9:
    CFRelease(v9);
  }

  return v10;
}

uint64_t FigMetadataCopyAllMetadata(const __CFArray *a1, const __CFAllocator *a2, __CFArray **a3)
{
  theDict = 0;
  value = 0;
  cf = 0;
  if (!a1 || (Count = CFArrayGetCount(a1), Count < 1))
  {
    v9 = 0;
LABEL_36:
    v24 = 0;
    *a3 = v9;
    goto LABEL_37;
  }

  v7 = Count;
  v8 = 0;
  v9 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
    FigMetadataReaderGetFigBaseObject();
    v12 = v11;
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      if (!v13(v12, @"format", a2, &cf))
      {
        break;
      }
    }

LABEL_30:
    if (++v8 == v7)
    {
      goto LABEL_36;
    }
  }

  v14 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v14)
  {
LABEL_25:
    v23 = 0;
LABEL_26:
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v23)
    {
      CFRelease(v23);
    }

    goto LABEL_30;
  }

  v28 = v9;
  v15 = v14(ValueAtIndex, 0, 0);
  if (v15 < 1)
  {
    v23 = 0;
    goto LABEL_26;
  }

  v16 = v15;
  v17 = 0;
  Mutable = 0;
  do
  {
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v19 && !v19(ValueAtIndex, 0, 0, v17, a2, &value, &theDict))
    {
      MutableCopy = CFDictionaryCreateMutableCopy(a2, 0, theDict);
      v21 = MutableCopy;
      if (!MutableCopy)
      {
        v9 = v28;
        goto LABEL_46;
      }

      CFDictionaryAddValue(MutableCopy, @"value", value);
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(a2, 0, MEMORY[0x1E695E9C0]);
        if (!Mutable)
        {
          v9 = v28;
          goto LABEL_46;
        }
      }

      CFArrayAppendValue(Mutable, v21);
      CFRelease(v21);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }

      if (theDict)
      {
        CFRelease(theDict);
        theDict = 0;
      }
    }

    ++v17;
  }

  while (v16 != v17);
  v9 = v28;
  if (!Mutable)
  {
    goto LABEL_25;
  }

  if (CFArrayGetCount(Mutable) < 1)
  {
    v23 = 0;
    goto LABEL_34;
  }

  v22 = CFDictionaryCreateMutable(a2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v22)
  {
    v23 = v22;
    CFDictionaryAddValue(v22, @"items", Mutable);
    CFDictionaryAddValue(v23, @"format", cf);
    if (v28 || (v9 = CFArrayCreateMutable(a2, 0, MEMORY[0x1E695E9C0])) != 0)
    {
      CFArrayAppendValue(v9, v23);
LABEL_34:
      CFRelease(Mutable);
      goto LABEL_26;
    }

    FigMetadataCopyAllMetadata_cold_1();
    v21 = 0;
    v24 = v32;
LABEL_49:
    CFRelease(Mutable);
  }

  else
  {
    v21 = 0;
LABEL_46:
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, @"format", @"items");
    v24 = v26;
    if (v9)
    {
      CFRelease(v9);
    }

    if (Mutable)
    {
      goto LABEL_49;
    }
  }

  if (v21)
  {
    CFRelease(v21);
  }

LABEL_37:
  if (value)
  {
    CFRelease(value);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v24;
}

uint64_t FigMetadataCopyTrackMetadata(uint64_t a1, const __CFAllocator *a2, __CFArray **a3)
{
  cf = 0;
  if (!a1)
  {
    FigMetadataCopyTrackMetadata_cold_2(&v13);
    return v13;
  }

  if (!a3)
  {
    FigMetadataCopyTrackMetadata_cold_1(&v13);
    return v13;
  }

  FigTrackReaderGetFigBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    return 0;
  }

  v8 = v7(v6, @"MetadataReaders", a2, &cf);
  v9 = cf;
  if (v8)
  {
    v10 = 0;
    if (!cf)
    {
      return v10;
    }

    goto LABEL_9;
  }

  v10 = FigMetadataCopyAllMetadata(cf, a2, a3);
  v9 = cf;
  if (cf)
  {
LABEL_9:
    CFRelease(v9);
  }

  return v10;
}

uint64_t FigMetadataCopyMetadataItemsIf(const __CFAllocator *a1, uint64_t a2, unsigned int (*a3)(CFDictionaryRef, uint64_t), uint64_t a4, __CFArray **a5)
{
  value = 0;
  theDict = 0;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v10 && (v11 = v10(a2, 0, 0)) != 0)
  {
    v12 = v11;
    Mutable = CFArrayCreateMutable(a1, v11, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      if (v12 >= 1)
      {
        v14 = 0;
        while (1)
        {
          v15 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (v15)
          {
            v16 = v15(a2, 0, 0, v14, a1, &value, &theDict);
            v17 = theDict;
            if (v16)
            {
              v18 = 1;
            }

            else
            {
              v18 = value == 0;
            }

            if (v18 || theDict == 0)
            {
              goto LABEL_20;
            }

            if (!a3)
            {
              goto LABEL_17;
            }

            if (a3(theDict, a4))
            {
              break;
            }
          }

LABEL_19:
          v17 = theDict;
LABEL_20:
          if (v17)
          {
            CFRelease(v17);
            theDict = 0;
          }

          if (value)
          {
            CFRelease(value);
            value = 0;
          }

          if (v12 == ++v14)
          {
            goto LABEL_25;
          }
        }

        v17 = theDict;
LABEL_17:
        MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, v17);
        if (!MutableCopy)
        {
          FigMetadataCopyMetadataItemsIf_cold_1(&v26);
          goto LABEL_37;
        }

        v21 = MutableCopy;
        CFDictionaryAddValue(MutableCopy, @"value", value);
        CFArrayAppendValue(Mutable, v21);
        CFRelease(v21);
        goto LABEL_19;
      }

LABEL_25:
      v22 = 0;
    }

    else
    {
      FigMetadataCopyMetadataItemsIf_cold_2(&v26);
LABEL_37:
      v22 = v26;
    }
  }

  else
  {
    v22 = 0;
    Mutable = 0;
  }

  if (theDict)
  {
    CFRelease(theDict);
    theDict = 0;
  }

  if (value)
  {
    CFRelease(value);
    value = 0;
  }

  if (v22 && Mutable)
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

  *a5 = Mutable;
  return v22;
}

uint64_t FigMetadataArrayHasKey(uint64_t result, uint64_t a2, uint64_t a3, const __CFArray *a4, CFIndex a5, CFIndex a6)
{
  if (result)
  {
    v10 = result;
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    v12 = Count;
    v13 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v10, v13);
      v15 = ValueAtIndex;
      if (!a3 || (CFDictionaryGetValue(ValueAtIndex, @"keyspace"), FigCFEqual()))
      {
        Value = CFDictionaryGetValue(v15, @"key");
        if (a4)
        {
          v17.location = a5;
          v17.length = a6;
          if (CFArrayContainsValue(a4, v17, Value))
          {
            return 1;
          }
        }

        else if (FigCFEqual())
        {
          return 1;
        }
      }

      if (v12 == ++v13)
      {
        return 0;
      }
    }
  }

  return result;
}

CFIndex FigMetadataArrayGetKeyCount(const __CFArray *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = 0;
  Mutable = 0;
  v8 = *MEMORY[0x1E695E480];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
    v10 = ValueAtIndex;
    if (!a2 || (CFDictionaryGetValue(ValueAtIndex, @"keyspace"), FigCFEqual()))
    {
      if (!Mutable)
      {
        Mutable = CFSetCreateMutable(v8, 0, 0);
      }

      Value = CFDictionaryGetValue(v10, @"key");
      CFSetAddValue(Mutable, Value);
    }

    ++v6;
  }

  while (v5 != v6);
  if (!Mutable)
  {
    return 0;
  }

  v12 = CFSetGetCount(Mutable);
  CFRelease(Mutable);
  return v12;
}

uint64_t FigMetadataArrayCopyKeyAtIndex(const __CFArray *a1, uint64_t a2, uint64_t a3, char *a4)
{
  if (a1 && (Count = CFArrayGetCount(a1), Count >= 1))
  {
    v9 = Count;
    v20 = a4;
    v10 = 0;
    Mutable = 0;
    v12 = *MEMORY[0x1E695E480];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
      v14 = ValueAtIndex;
      if (!a3 || (CFDictionaryGetValue(ValueAtIndex, @"keyspace"), FigCFEqual()))
      {
        if (!Mutable)
        {
          Mutable = CFSetCreateMutable(v12, 0, 0);
        }

        Value = CFDictionaryGetValue(v14, @"key");
        CFSetAddValue(Mutable, Value);
        if (CFSetGetCount(Mutable) - 1 == a2)
        {
          break;
        }
      }

      if (v9 == ++v10)
      {
        goto LABEL_12;
      }
    }

    if (Value)
    {
      v19 = CFRetain(Value);
      v17 = 0;
      *v20 = v19;
      if (!Mutable)
      {
        return v17;
      }

      goto LABEL_13;
    }
  }

  else
  {
    Mutable = 0;
  }

LABEL_12:
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, v22);
  v17 = v16;
  if (Mutable)
  {
LABEL_13:
    CFRelease(Mutable);
  }

  return v17;
}

uint64_t FigMetadataArrayGetItemCount(const __CFArray *a1, uint64_t a2, uint64_t a3, const __CFArray *a4, CFIndex a5, CFIndex a6)
{
  v18.location = a5;
  v18.length = a6;
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v11 = Count;
  v12 = 0;
  v13 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v12);
    v15 = ValueAtIndex;
    if (!a3 || (CFDictionaryGetValue(ValueAtIndex, @"keyspace"), FigCFEqual()))
    {
      Value = CFDictionaryGetValue(v15, @"key");
      if (a4)
      {
        if (CFArrayContainsValue(a4, v18, Value))
        {
          ++v13;
        }
      }

      else if (!a2 || FigCFEqual())
      {
        ++v13;
      }
    }

    ++v12;
  }

  while (v11 != v12);
  return v13;
}

uint64_t FigMetadataArrayCopyItemWithKeyAndIndex(const __CFArray *a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFArray *a5, CFIndex a6, CFIndex a7, void *a8, __CFDictionary **a9)
{
  v25.location = a6;
  v25.length = a7;
  if (!a1)
  {
    goto LABEL_21;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    goto LABEL_21;
  }

  v14 = Count;
  v15 = 0;
  v16 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v16);
    v18 = ValueAtIndex;
    if (a4)
    {
      CFDictionaryGetValue(ValueAtIndex, @"keyspace");
      if (!FigCFEqual())
      {
        goto LABEL_13;
      }
    }

    Value = CFDictionaryGetValue(v18, @"key");
    if (a5)
    {
      if (!CFArrayContainsValue(a5, v25, Value))
      {
        goto LABEL_13;
      }
    }

    else if (a2 && !FigCFEqual())
    {
      goto LABEL_13;
    }

    if (v15 == a3)
    {
      break;
    }

    ++v15;
LABEL_13:
    if (v14 == ++v16)
    {
      goto LABEL_21;
    }
  }

  if (a8)
  {
    v20 = CFDictionaryGetValue(v18, @"value");
    if (v20)
    {
      v20 = CFRetain(v20);
    }

    *a8 = v20;
  }

  if (a9)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v18);
    CFDictionaryRemoveValue(MutableCopy, @"value");
    *a9 = MutableCopy;
  }

LABEL_21:
  if (!a8)
  {
    return 0;
  }

  if (*a8)
  {
    return 0;
  }

  return 4294954689;
}

CFStringRef FigMetadataGetCoreMediaDataType(uint64_t a1, CFStringRef PreferredIdentifierForTag, uint64_t a3)
{
  if (FigCFEqual())
  {
    return PreferredIdentifierForTag;
  }

  if (FigCFEqual())
  {
    if (PreferredIdentifierForTag)
    {
      v6 = CFGetTypeID(PreferredIdentifierForTag);
      if (v6 == CFNumberGetTypeID())
      {
        valuePtr = -1;
        CFNumberGetValue(PreferredIdentifierForTag, kCFNumberSInt32Type, &valuePtr);
        switch(valuePtr)
        {
          case 3:
            v7 = MEMORY[0x1E69602B0];
            return *v7;
          case 2:
            v7 = MEMORY[0x1E69602B8];
            return *v7;
          case 0:
            v7 = MEMORY[0x1E6960260];
            return *v7;
        }
      }

      return 0;
    }

    return PreferredIdentifierForTag;
  }

  if (FigCFEqual())
  {
    if (!PreferredIdentifierForTag)
    {
      return PreferredIdentifierForTag;
    }

    v8 = CFGetTypeID(PreferredIdentifierForTag);
    if (v8 != CFNumberGetTypeID())
    {
      return 0;
    }

    key_4 = -1;
    CFNumberGetValue(PreferredIdentifierForTag, kCFNumberSInt32Type, &key_4);
    if (key_4 == 22)
    {
      PreferredIdentifierForTag = 0;
      if (a3 > 3)
      {
        if (a3 == 4)
        {
          v7 = MEMORY[0x1E6960298];
        }

        else
        {
          if (a3 != 8)
          {
            return PreferredIdentifierForTag;
          }

          v7 = MEMORY[0x1E69602A0];
        }
      }

      else if (a3 == 1)
      {
        v7 = MEMORY[0x1E69602A8];
      }

      else
      {
        if (a3 != 2)
        {
          return PreferredIdentifierForTag;
        }

        v7 = MEMORY[0x1E6960290];
      }

      return *v7;
    }

    if (key_4 != 21)
    {
      MEMORY[0x19A8D3660](&FigCoreMediaDataTypesSetUpQuickTimeMetadataMappingOnce_sCreateDataTypeMappingOnce, FigCoreMediaDataTypesSetUpQuickTimeMetadataMapping);
      v9 = gQTMetadataDataTypeToCoreMediaDataTypeDict;
      v10 = key_4;
      return CFDictionaryGetValue(v9, v10);
    }

    goto LABEL_20;
  }

  if (FigCFEqual())
  {
    if (!PreferredIdentifierForTag)
    {
      return PreferredIdentifierForTag;
    }

    v11 = CFGetTypeID(PreferredIdentifierForTag);
    if (v11 != CFNumberGetTypeID())
    {
      return 0;
    }

    key = -1;
    CFNumberGetValue(PreferredIdentifierForTag, kCFNumberSInt32Type, &key);
    if (key != 21)
    {
      MEMORY[0x19A8D3660](&FigCoreMediaDataTypesSetUpiTunesMetadataMappingOnce_sCreateDataTypeMappingOnce, FigCoreMediaDataTypesSetUpiTunesMetadataMapping);
      v9 = giTunesDataTypeToCoreMediaDataTypeDict;
      v10 = key;
      return CFDictionaryGetValue(v9, v10);
    }

LABEL_20:
    PreferredIdentifierForTag = 0;
    if (a3 > 3)
    {
      if (a3 == 4)
      {
        v7 = MEMORY[0x1E6960278];
      }

      else
      {
        if (a3 != 8)
        {
          return PreferredIdentifierForTag;
        }

        v7 = MEMORY[0x1E6960280];
      }

      return *v7;
    }

    if (a3 == 1)
    {
      v7 = MEMORY[0x1E6960288];
      return *v7;
    }

    if (a3 == 2)
    {
      v7 = MEMORY[0x1E6960270];
      return *v7;
    }

    return PreferredIdentifierForTag;
  }

  if (FigCFEqual())
  {
    if (!PreferredIdentifierForTag)
    {
      return PreferredIdentifierForTag;
    }

    v12 = CFGetTypeID(PreferredIdentifierForTag);
    if (v12 != CFStringGetTypeID())
    {
      return 0;
    }

    v13 = MEMORY[0x1E6963718];
    Length = CFStringGetLength(PreferredIdentifierForTag);
    v15 = MEMORY[0x1E6963710];
    if (Length != 3)
    {
      v15 = v13;
    }

    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*v15, PreferredIdentifierForTag, 0);
    if (!PreferredIdentifierForTag)
    {
      return PreferredIdentifierForTag;
    }

    MEMORY[0x19A8D3660](&FigCoreMediaDataTypesSetUpUTIMappingOnce_sCreateDataTypeMappingOnce, FigCoreMediaDataTypesSetUpUTIMapping);
    Value = CFDictionaryGetValue(gUTIDataTypeToCoreMediaDataTypeDict, PreferredIdentifierForTag);
    CFRelease(PreferredIdentifierForTag);
    return Value;
  }

  else
  {
    if (!FigCFEqual())
    {
      return 0;
    }

    MEMORY[0x19A8D3660](&FigCoreMediaDataTypesSetUpUTIMappingOnce_sCreateDataTypeMappingOnce, FigCoreMediaDataTypesSetUpUTIMapping);
    v17 = gUTIDataTypeToCoreMediaDataTypeDict;

    return CFDictionaryGetValue(v17, PreferredIdentifierForTag);
  }
}

uint64_t FigMetadataGetDataTypeWithNamespaceForCoreMediaDataType(uint64_t a1, const void *a2, const void **a3)
{
  if (FigCFEqual())
  {
    *a3 = a2;
    return 1;
  }

  if (FigCFEqual())
  {
    MEMORY[0x19A8D3660](&FigCoreMediaDataTypesSetUpQuickTimeMetadataMappingOnce_sCreateDataTypeMappingOnce, FigCoreMediaDataTypesSetUpQuickTimeMetadataMapping);
    v6 = &gCoreMediaDataTypeToQTMetadataDataTypeDict;
  }

  else if (FigCFEqual())
  {
    MEMORY[0x19A8D3660](&FigCoreMediaDataTypesSetUpiTunesMetadataMappingOnce_sCreateDataTypeMappingOnce, FigCoreMediaDataTypesSetUpiTunesMetadataMapping);
    v6 = &gCoreMediaDataTypeToiTunesDataTypeDict;
  }

  else if (FigCFEqual())
  {
    MEMORY[0x19A8D3660](&FigCoreMediaDataTypesSetUpUserdataMappingOnce_sCreateDataTypeMappingOnce, FigCoreMediaDataTypesSetUpUserdataMapping);
    v6 = &gCoreMediaDataTypeToUserDataTypeDict;
  }

  else
  {
    result = FigCFEqual();
    if (!result)
    {
      return result;
    }

    MEMORY[0x19A8D3660](&FigCoreMediaDataTypesSetUpUTIMappingOnce_sCreateDataTypeMappingOnce, FigCoreMediaDataTypesSetUpUTIMapping);
    v6 = &gCoreMediaDataTypeToUTIDataTypeDict;
  }

  result = *v6;
  if (*v6)
  {

    return CFDictionaryGetValueIfPresent(result, a2, a3);
  }

  return result;
}

BOOL FigMetadataDataLengthCanHoldValue(char a1, int a2, CFNumberRef number)
{
  if (a2)
  {
    v4 = -1 << (8 * a1 - 1);
    v7 = 0;
    CFNumberGetValue(number, kCFNumberSInt64Type, &v7);
    return v4 <= v7 && v7 <= ~v4;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    CFNumberGetValue(number, kCFNumberMaxType|kCFNumberSInt8Type, &v7);
    return !v7 && v8 >> (8 * a1) == 0;
  }
}

CFMutableArrayRef FigVorbisCommentMetadataCreateChapterArray(const __CFAllocator *a1, CFTypeRef cf)
{
  v47 = 0;
  v48 = 0;
  v4 = CFGetAllocator(cf);
  FigMetadataReaderGetFigBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v8 = v7(v6, @"format", v4, &v48);
  }

  else
  {
    v8 = -12782;
  }

  if (!FigCFEqual())
  {
    Mutable = 0;
    v11 = 0;
    goto LABEL_76;
  }

  FigMetadataCopyMetadataItemsIf(a1, cf, FigMetadataItemKeyIsVorbisCommentChapterFieldName, 0, &v47);
  v9 = v47;
  if (!v47)
  {
    Mutable = 0;
    goto LABEL_80;
  }

  if (CFArrayGetCount(v47) < 1)
  {
    v11 = 0;
    Mutable = 0;
    goto LABEL_77;
  }

  MutableCopy = FigCFArrayCreateMutableCopy();
  v11 = MutableCopy;
  if (!MutableCopy)
  {
    FigVorbisCommentMetadataCreateChapterArray_cold_6();
    Mutable = 0;
    goto LABEL_76;
  }

  v50.length = CFArrayGetCount(MutableCopy);
  v50.location = 0;
  CFArraySortValues(v11, v50, FigMetadataCompareStringKeys, 0);
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  Count = CFArrayGetCount(v11);
  if (Count < 1)
  {
    v16 = 0;
    goto LABEL_61;
  }

  v14 = Count;
  v42 = v8;
  v43 = Mutable;
  theDict = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = -1.0;
  do
  {
    CFArrayGetValueAtIndex(v11, v15);
    Value = FigCFDictionaryGetValue();
    Length = CFStringGetLength(Value);
    if (Length == 10)
    {
      if (FigCFEqual())
      {
        goto LABEL_28;
      }

      v21 = FigCFDictionaryGetValue();
      if (!v21)
      {
        goto LABEL_28;
      }

      v22 = CFGetTypeID(v21);
      if (v22 != CFStringGetTypeID())
      {
        goto LABEL_28;
      }

      v46.value = 0;
      CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
      if (!CStringPtrAndBufferToFree)
      {
        goto LABEL_28;
      }

      v24 = CStringPtrAndBufferToFree;
      v25 = strchr(CStringPtrAndBufferToFree, 58);
      if (v25)
      {
        v26 = -1;
        do
        {
          v25 = strchr(v25 + 1, 58);
          ++v26;
        }

        while (v25);
        if (v26)
        {
          v27 = -1.0;
          if (v26 != 1)
          {
            goto LABEL_33;
          }

          LODWORD(time.value) = 0;
          v49[0] = 0;
          sscanf(v24, "%d:%d:%f", &time, v49 + 4, v49);
          v28 = (3600 * LODWORD(time.value) + 60 * HIDWORD(v49[0]));
          v29 = *v49;
        }

        else
        {
          LODWORD(time.value) = 0;
          HIDWORD(v49[0]) = 0;
          sscanf(v24, "%d:%f", &time, v49 + 4);
          v28 = (60 * LODWORD(time.value));
          v29 = *(v49 + 1);
        }

        v27 = (v29 + v28);
      }

      else
      {
        v27 = strtod(v24, 0);
      }

LABEL_33:
      free(v46.value);
      if (v27 >= 0.0 && v27 > v18)
      {
        if (theDict)
        {
          memset(&v46, 0, sizeof(v46));
          CMTimeMakeWithSeconds(&v46, v27 - v18, 1000);
          time = v46;
          v36 = CMTimeCopyAsDictionary(&time, a1);
          if (!v36)
          {
            FigVorbisCommentMetadataCreateChapterArray_cold_3(&v46, &time);
            goto LABEL_95;
          }

          v37 = v36;
          CFDictionarySetValue(theDict, @"ChapterDuration", v36);
          CFRelease(v37);
          if (v17)
          {
            if (CFArrayGetCount(v17) >= 1)
            {
              CFDictionarySetValue(theDict, @"ChapterMetadataItems", v17);
            }

            CFRelease(v17);
          }

          CFArrayAppendValue(v43, theDict);
          CFRelease(theDict);
          v17 = 0;
        }

        theDict = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (theDict)
        {
          memset(&v46, 0, sizeof(v46));
          CMTimeMakeWithSeconds(&v46, v27, 1000);
          time = v46;
          v38 = CMTimeCopyAsDictionary(&time, a1);
          if (!v38)
          {
            FigVorbisCommentMetadataCreateChapterArray_cold_4(&v46, &time);
LABEL_95:
            v32 = 0;
            v8 = time.value;
LABEL_89:
            Mutable = v43;
            v40 = theDict;
            goto LABEL_63;
          }

          v39 = v38;
          CFDictionarySetValue(theDict, @"ChapterTime", v38);
          CFRelease(v39);
          v17 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
        }

        if (Value)
        {
          CFRetain(Value);
        }

        if (v16)
        {
          CFRelease(v16);
        }

        v18 = v27;
        v16 = Value;
      }

      goto LABEL_28;
    }

    if (v17 && Length >= 11 && v16 && CFStringHasPrefix(Value, v16))
    {
      v30 = CFGetAllocator(Value);
      v31 = CFStringCreateMutableCopy(v30, 0, Value);
      v32 = v31;
      if (v31)
      {
        v51.location = 7;
        v51.length = 3;
        CFStringDelete(v31, v51);
        v33 = FigCFDictionaryCreateMutableCopy();
        if (v33)
        {
          v34 = v33;
          CFDictionarySetValue(v33, @"key", v32);
          CFArrayAppendValue(v17, v34);
          CFRelease(v34);
          CFRelease(v32);
          goto LABEL_28;
        }

        FigVorbisCommentMetadataCreateChapterArray_cold_1(&v46);
      }

      else
      {
        FigVorbisCommentMetadataCreateChapterArray_cold_2(&v46);
      }

      v8 = v46.value;
      goto LABEL_89;
    }

LABEL_28:
    ++v15;
  }

  while (v15 != v14);
  v8 = v42;
  v40 = theDict;
  if (theDict)
  {
    v46 = **&MEMORY[0x1E6960C68];
    v32 = CMTimeCopyAsDictionary(&v46, a1);
    Mutable = v43;
    if (!v32)
    {
      FigVorbisCommentMetadataCreateChapterArray_cold_5(&v46);
      v8 = v46.value;
      goto LABEL_63;
    }

    CFDictionarySetValue(theDict, @"ChapterDuration", v32);
    CFRelease(v32);
    if (v17)
    {
      if (CFArrayGetCount(v17) >= 1)
      {
        CFDictionarySetValue(theDict, @"ChapterMetadataItems", v17);
      }

      CFRelease(v17);
    }

    CFArrayAppendValue(v43, theDict);
    CFRelease(theDict);
LABEL_61:
    v17 = 0;
    if (Mutable)
    {
LABEL_62:
      v40 = 0;
      v32 = 0;
      if (CFArrayGetCount(Mutable))
      {
LABEL_63:
        if (v8 && Mutable)
        {
          CFRelease(Mutable);
          Mutable = 0;
        }

        if (!v32)
        {
LABEL_70:
          if (v17)
          {
            goto LABEL_71;
          }

          goto LABEL_72;
        }
      }

      else
      {
        v32 = Mutable;
        Mutable = 0;
      }

      CFRelease(v32);
      goto LABEL_70;
    }
  }

  else
  {
    Mutable = v43;
    if (v43)
    {
      goto LABEL_62;
    }
  }

  v40 = 0;
  if (v17)
  {
LABEL_71:
    CFRelease(v17);
  }

LABEL_72:
  if (v40)
  {
    CFRelease(v40);
  }

  if (v16)
  {
    CFRelease(v16);
  }

LABEL_76:
  v9 = v47;
  if (v47)
  {
LABEL_77:
    CFRelease(v9);
  }

  if (v11)
  {
    CFRelease(v11);
  }

LABEL_80:
  if (v48)
  {
    CFRelease(v48);
  }

  return Mutable;
}