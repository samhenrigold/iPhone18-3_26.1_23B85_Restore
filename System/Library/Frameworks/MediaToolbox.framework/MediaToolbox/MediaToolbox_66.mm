uint64_t remoteXPCAsset_DeserializeAndCreateDefaultContentKeySessionFromXPCDictionary(void *a1, uint64_t *a2)
{
  cf = 0;
  uint64 = xpc_dictionary_get_uint64(a1, *MEMORY[0x1E69615A0]);
  if (uint64 && (FigContentKeySessionRemoteCreateSessionForID(*MEMORY[0x1E695E480], uint64, &cf), v5 = v4, uint64 = cf, v5))
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v5 = 0;
    *a2 = uint64;
  }

  return v5;
}

uint64_t remoteXPCAsset_DeserializeAndCreateHLSSessionKeysFromXPCDictionary(void *a1, __CFArray **a2)
{
  value = xpc_dictionary_get_value(a1, *MEMORY[0x1E69615C8]);
  if (value)
  {

    return FigContentKeyBossClientServerXPC_DeserializeAndCopyKeySpecifiers(value, a2);
  }

  else
  {
    remoteXPCAsset_DeserializeAndCreateHLSSessionKeysFromXPCDictionary_cold_1(&v5);
    return v5;
  }
}

uint64_t remoteXPCAsset_DeserializeAndCreateTracksArrayFromXPCDictionary(void *a1, __CFArray **a2)
{
  v4 = xpc_dictionary_get_value(a1, "TrackIDsAndTypes");
  v5 = xpc_dictionary_get_value(a1, "TrackObjectIDs");
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_22;
  }

  v7 = v5;
  count = xpc_array_get_count(v4);
  v9 = xpc_array_get_count(v7);
  if (v9 != count)
  {
    remoteXPCAsset_DeserializeAndCreateTracksArrayFromXPCDictionary_cold_1(&cf);
    return cf;
  }

  if (!count)
  {
LABEL_22:
    v12 = 0;
    goto LABEL_23;
  }

  v10 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v9, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    remoteXPCAsset_DeserializeAndCreateTracksArrayFromXPCDictionary_cold_3(&cf);
    return cf;
  }

  v12 = Mutable;
  if (count < 1)
  {
LABEL_23:
    v18 = 0;
    goto LABEL_24;
  }

  v25 = a2;
  v26 = v7;
  v13 = 0;
  v14 = count & 0x7FFFFFFF;
  while (1)
  {
    uint64 = xpc_array_get_uint64(v7, v13);
    v16 = xpc_array_get_uint64(v4, v13);
    value = 0;
    if (uint64)
    {
      break;
    }

    if (remoteXPCAsset_DeserializeAndCreateTracksArrayFromXPCDictionary_cold_2(&value, v12, &cf))
    {
      v18 = cf;
      a2 = v25;
      goto LABEL_29;
    }

LABEL_18:
    if (v14 == ++v13)
    {
      v18 = 0;
      a2 = v25;
      goto LABEL_24;
    }
  }

  v17 = v16;
  v18 = FigXPCRemoteClientRetainCopiedObject();
  v19 = value;
  if (v18)
  {
    goto LABEL_27;
  }

  if (value)
  {
    remoteXPCAssetTrack_GetObjectID(value, &cf);
LABEL_16:
    v23 = value;
    CFArrayAppendValue(v12, value);
    if (v23)
    {
      CFRelease(v23);
    }

    goto LABEL_18;
  }

  cf = 0;
  FigAssetTrackGetClassID();
  v18 = CMDerivedObjectCreate();
  v19 = cf;
  if (v18)
  {
    value = cf;
    goto LABEL_27;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRemotePropertyCacheSetup(v10, (DerivedStorage + 16), "remoteFigAssetTrack_cache");
  value = cf;
  v21 = CMBaseObjectGetDerivedStorage();
  *(v21 + 8) = HIDWORD(v17);
  *(v21 + 12) = v17;
  v7 = v26;
  *v21 = uint64;
  v22 = FigXPCRemoteClientAssociateObject();
  if (!v22)
  {
    goto LABEL_16;
  }

  v18 = v22;
  v19 = value;
LABEL_27:
  a2 = v25;
  if (v19)
  {
    CFRelease(v19);
  }

LABEL_29:
  CFRelease(v12);
  v12 = 0;
LABEL_24:
  *a2 = v12;
  return v18;
}

uint64_t remoteXPCAsset_DeserializeAndCreateHLSAlternatesFromXPCDictionary(void *a1, __CFArray **a2)
{
  value = xpc_dictionary_get_value(a1, *MEMORY[0x1E69615C8]);
  if (value)
  {

    return FigAlternateCreateArrayOfAlternatesFromXPCObject(value, a2);
  }

  else
  {
    remoteXPCAsset_DeserializeAndCreateHLSAlternatesFromXPCDictionary_cold_1(&v5);
    return v5;
  }
}

uint64_t remoteXPCAssetTrack_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48))
  {
    remoteXPCAssetTrack_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 49))
    {
      remoteXPCAssetTrack_GetObjectID_cold_2(&v7);
      return v7;
    }

    else
    {
      result = 0;
      *a2 = *v4;
    }
  }

  return result;
}

CFMutableDictionaryRef FigRemotePropertyCacheSetup(const __CFAllocator *a1, dispatch_queue_t *a2, char *label)
{
  *a2 = dispatch_queue_create(label, 0);
  v5 = MEMORY[0x1E695E9D8];
  v6 = MEMORY[0x1E695E9E8];
  a2[1] = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  a2[2] = CFDictionaryCreateMutable(a1, 0, v5, v6);
  result = CFDictionaryCreateMutable(a1, 0, v5, v6);
  a2[3] = result;
  return result;
}

__CFString *remoteXPCAssetTrack_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 48))
  {
    v6 = " SERVER DIED";
  }

  else
  {
    v6 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigAssetTrackRemote(XPC) %p retainCount: %ld ObjectID %016llx TrackID %d MediaType '%c%c%c%c'%s>", a1, v5, *DerivedStorage, *(DerivedStorage + 8), HIBYTE(*(DerivedStorage + 12)), BYTE2(*(DerivedStorage + 12)), BYTE1(*(DerivedStorage + 12)), *(DerivedStorage + 12), v6);
  return Mutable;
}

void FigRemotePropertyCacheTeardown(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 8) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 24) = 0;
  }

  if (*a1)
  {
    dispatch_release(*a1);
    *a1 = 0;
  }
}

uint64_t remoteXPCAssetTrack_DeserializeAndCreateAssetTrackPropertyValueFromXPCDictionary(uint64_t a1, CFTypeRef cf1, void *a3)
{
  if (CFEqual(cf1, @"FormatDescriptionArray"))
  {
    result = FigXPCMessageCopyFormatDescriptionArray();
    if (!result)
    {
      *a3 = 0;
    }
  }

  else if (CFEqual(cf1, @"CommonMetadata") || CFEqual(cf1, @"assetTrackProperty_QuickTimeMetadata") || CFEqual(cf1, @"assetTrackProperty_QuickTimeUserData") || CFEqual(cf1, @"assetTrackProperty_ISOUserData"))
  {
    v7 = *MEMORY[0x1E69615C8];

    return remoteXPCAsset_ConvertMetadataBinaryPListDataToArray(a1, v7);
  }

  else
  {

    return FigXPCMessageCopyCFObject();
  }

  return result;
}

uint64_t remoteXPCAssetTrack_GetTrackInfo(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48))
  {
    remoteXPCAssetTrack_GetTrackInfo_cold_1(&v8);
    return v8;
  }

  else
  {
    if (a2)
    {
      *a2 = *(DerivedStorage + 8);
    }

    v6 = 0;
    if (a3)
    {
      *a3 = *(DerivedStorage + 12);
    }
  }

  return v6;
}

void remoteXPCAsset_sandboxRegisterURLdAddToXPCMessageAndCopyRegistration(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (!a1)
  {
    if (FigSandboxRegisterURLWithProcessAndCopyRegistration())
    {
      return;
    }

    goto LABEL_5;
  }

  if (!FigSandboxRegisterDirectoryURLWithProcessAndCopyRegistration())
  {
LABEL_5:
    *a6 = 0;
  }
}

void remoteXPCAsset_storeSandboxRegistration(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = *(DerivedStorage + 48);
  if (Mutable || (v6 = CFGetAllocator(a1), Mutable = CFSetCreateMutable(v6, 0, MEMORY[0x1E695E9F8]), (*(DerivedStorage + 48) = Mutable) != 0))
  {
    if (a2)
    {

      CFSetAddValue(Mutable, a2);
    }
  }

  else
  {
    remoteXPCAsset_storeSandboxRegistration_cold_1();
  }
}

__CFString *remoteXPCAsset_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 40))
  {
    v6 = " SERVER DIED";
  }

  else
  {
    v6 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigAssetRemote(XPC) %p retainCount: %ld ObjectID: %016llx%s>", a1, v5, *DerivedStorage, v6);
  return Mutable;
}

uint64_t remoteXPCAsset_CopyTrackByID(uint64_t a1, int a2, void *a3)
{
  theArray = 0;
  if (a2)
  {
    if (!a3)
    {
      remoteXPCAsset_CopyTrackByID_cold_1(v21);
      v16 = v21[0];
      goto LABEL_19;
    }

    FigAssetGetCMBaseObject();
    v6 = v5;
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v7)
    {
      goto LABEL_16;
    }

    if (v7(v6, @"assetProperty_Tracks", *MEMORY[0x1E695E480], &theArray) || theArray == 0)
    {
      goto LABEL_16;
    }

    v21[0] = 0;
    Count = CFArrayGetCount(theArray);
    if (Count < 1)
    {
      goto LABEL_16;
    }

    v10 = Count;
    v11 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v13)
      {
        if (!v13(ValueAtIndex, v21, 0) && v21[0] == a2)
        {
          break;
        }
      }

      if (v10 == ++v11)
      {
        goto LABEL_16;
      }
    }

    v17 = CFRetain(ValueAtIndex);
    if (v17)
    {
      v16 = 0;
    }

    else
    {
LABEL_16:
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", theArray, v20, v21[1]);
      v16 = v15;
      v17 = 0;
    }
  }

  else
  {
    remoteXPCAsset_CopyTrackByID_cold_2(v21);
    v17 = 0;
    v16 = v21[0];
  }

  if (a3)
  {
    *a3 = v17;
  }

LABEL_19:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v16;
}

uint64_t remoteXPCAsset_CopyTracksWithMediaType(uint64_t a1, int a2, __CFArray **a3)
{
  theArray = 0;
  if (!a3)
  {
    remoteXPCAsset_CopyTracksWithMediaType_cold_2(&v24);
    return v24;
  }

  FigAssetGetCMBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = *MEMORY[0x1E695E480];
  v9 = v7(v6, @"assetProperty_Tracks", *MEMORY[0x1E695E480], &theArray);
  v10 = theArray;
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = theArray == 0;
  }

  if (v11)
  {
    Mutable = 0;
    v13 = 4294955122;
    goto LABEL_25;
  }

  v22 = 0;
  Count = CFArrayGetCount(theArray);
  if (Count)
  {
    v15 = Count;
    Mutable = CFArrayCreateMutable(v8, Count, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      if (v15 < 1)
      {
        v19 = 0;
      }

      else
      {
        for (i = 0; i != v15; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          v18 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v18)
          {
            v19 = v18(ValueAtIndex, 0, &v22);
            if (v19)
            {
              v20 = 0;
            }

            else
            {
              v20 = v22 == a2;
            }

            if (v20)
            {
              CFArrayAppendValue(Mutable, ValueAtIndex);
              v19 = 0;
            }
          }

          else
          {
            v19 = -12782;
          }
        }
      }

      if (!CFArrayGetCount(Mutable))
      {
        CFRelease(Mutable);
        Mutable = 0;
      }

      if (Mutable)
      {
        v13 = v19;
      }

      else
      {
        v13 = 4294955122;
      }
    }

    else
    {
      remoteXPCAsset_CopyTracksWithMediaType_cold_1(&v22, &v24);
      v13 = v24;
    }
  }

  else
  {
LABEL_23:
    Mutable = 0;
    v13 = 4294955122;
  }

  v10 = theArray;
LABEL_25:
  *a3 = Mutable;
  if (v10)
  {
    CFRelease(v10);
  }

  return v13;
}

uint64_t OUTLINED_FUNCTION_8_71()
{

  return FigXPCRemoteClientSendSyncMessageCreatingReply();
}

uint64_t OUTLINED_FUNCTION_13_45(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t RegisterFigDataQueueType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigDataQueueGetTypeID()
{
  MEMORY[0x19A8D3660](&FigDataQueueGetClassID_sRegisterFigDataQueueTypeOnce, RegisterFigDataQueueType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigDataQueueCreate(const __CFAllocator *a1, uint64_t a2, CMTime *a3, CMTime *a4, CFTypeRef *a5)
{
  cf = 0;
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a5)
  {
    FigDataQueueCreate_cold_6(&time1);
LABEL_21:
    value_low = LODWORD(time1.value);
    goto LABEL_22;
  }

  MEMORY[0x19A8D3660](&FigDataQueueGetClassID_sRegisterFigDataQueueTypeOnce, RegisterFigDataQueueType);
  v9 = CMDerivedObjectCreate();
  if (v9)
  {
    value_low = v9;
    goto LABEL_22;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = FigReentrantMutexCreate();
  *DerivedStorage = v11;
  if (!v11)
  {
    FigDataQueueCreate_cold_5(&time1);
    goto LABEL_21;
  }

  if ((a4->flags & 0x1D) == 1 && (a3->flags & 0x1D) == 1)
  {
    time1 = *a4;
    v21 = *a3;
    if (CMTimeCompare(&time1, &v21) >= 1)
    {
      FigDataQueueCreate_cold_4(&time1);
      goto LABEL_21;
    }
  }

  v12 = *&a4->value;
  *(DerivedStorage + 56) = a4->epoch;
  *(DerivedStorage + 40) = v12;
  v13 = *&a3->value;
  *(DerivedStorage + 80) = a3->epoch;
  *(DerivedStorage + 64) = v13;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 8) = Mutable;
  if (!Mutable)
  {
    FigDataQueueCreate_cold_3(&time1);
    goto LABEL_21;
  }

  TargetingWorkloopWithPriority = FigDispatchQueueCreateTargetingWorkloopWithPriority();
  *(DerivedStorage + 144) = TargetingWorkloopWithPriority;
  if (!TargetingWorkloopWithPriority)
  {
    FigDataQueueCreate_cold_2(&time1);
    goto LABEL_21;
  }

  v16 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, TargetingWorkloopWithPriority);
  *(DerivedStorage + 136) = v16;
  if (!v16)
  {
    FigDataQueueCreate_cold_1(&time1);
    goto LABEL_21;
  }

  v17 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (v17)
  {
    dispatch_set_context(*(DerivedStorage + 136), v17);
    v18 = CMBaseObjectGetDerivedStorage();
    dispatch_source_set_timer(*(v18 + 136), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler_f(*(DerivedStorage + 136), dq_PruneTimerFired);
    dispatch_source_set_cancel_handler_f(*(DerivedStorage + 136), FigCFRelease_10);
    dispatch_activate(*(DerivedStorage + 136));
    value_low = 0;
    *a5 = cf;
    return value_low;
  }

  value_low = 4294951505;
LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

  return value_low;
}

void dq_PruneTimerFired(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    dq_Prune(v2);
    FigSimpleMutexUnlock();

    CFRelease(v2);
  }
}

void FigCFRelease_10(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t dq_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage[1];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[1] = 0;
  }

  v3 = DerivedStorage[4];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[4] = 0;
  }

  v4 = DerivedStorage[2];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[2] = 0;
  }

  v5 = DerivedStorage[16];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[16] = 0;
  }

  v6 = DerivedStorage[14];
  if (v6)
  {
    dispatch_release(v6);
    DerivedStorage[14] = 0;
  }

  v7 = DerivedStorage[13];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[13] = 0;
  }

  v8 = DerivedStorage[17];
  if (v8)
  {
    dispatch_source_cancel(v8);
    v9 = DerivedStorage[17];
    if (v9)
    {
      dispatch_release(v9);
      DerivedStorage[17] = 0;
    }
  }

  v10 = DerivedStorage[18];
  if (v10)
  {
    dispatch_release(v10);
    DerivedStorage[18] = 0;
  }

  return FigSimpleMutexDestroy();
}

__CFString *dq_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  FigSimpleMutexLock();
  memset(&v8, 0, sizeof(v8));
  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    CMTimebaseGetTime(&v8, v4);
  }

  else
  {
    v8 = **&MEMORY[0x1E6960C70];
  }

  time = v8;
  Seconds = CMTimeGetSeconds(&time);
  CFStringAppendFormat(Mutable, 0, @"<FigDataQueue %p>: currentMediaTime:%.3f, generationCount:%llu", a1, *&Seconds, *(DerivedStorage + 24));
  FigSimpleMutexUnlock();
  return Mutable;
}

uint64_t dq_CopyProperty(const void *a1, uint64_t a2, const __CFAllocator *a3, __CFString **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    dq_CopyProperty_cold_4(&cf);
    return cf;
  }

  v9 = DerivedStorage;
  FigSimpleMutexLock();
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v13 = *(v9 + 8);
      if (v13)
      {
        Count = CFArrayGetCount(v13);
      }

      else
      {
        Count = 0;
      }

      v21 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v23 = Mutable;
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            v25 = CFDictionaryCreateMutable(v21, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            ValueAtIndex = CFArrayGetValueAtIndex(*(v9 + 8), i);
            CFDictionarySetValue(v25, @"SampleBuffer", ValueAtIndex[2]);
            FigCFDictionarySetInt32();
            FigCFDictionarySetInt64();
            CFArrayAppendValue(v23, v25);
            if (v25)
            {
              CFRelease(v25);
            }
          }
        }

        if (*(v9 + 32))
        {
          v27 = CFDictionaryCreateMutable(v21, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFDictionarySetValue(v27, @"SampleBuffer", *(*(v9 + 32) + 16));
          FigCFDictionarySetInt32();
          FigCFDictionarySetInt64();
          v32.length = CFArrayGetCount(v23);
          v32.location = 0;
          v28 = CFArrayBSearchValues(v23, v32, v27, FigDataQueueDumpQueue_comparatorEntryPTS, 0);
          if (v28 > CFArrayGetCount(v23))
          {
            v28 = CFArrayGetCount(v23);
          }

          CFArrayInsertValueAtIndex(v23, v28, v27);
        }

        v20 = 0;
        *a4 = v23;
      }

      else
      {
        dq_CopyProperty_cold_3(&cf);
        v20 = cf;
      }
    }

    else
    {
      v20 = 0;
      if (FigCFEqual())
      {
        *a4 = dq_CopyDebugDescription(a1);
      }
    }

    goto LABEL_32;
  }

  v10 = CMBaseObjectGetDerivedStorage();
  v11 = FigCFWeakReferenceHolderCopyReferencedObject();
  cf = v11;
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v15 = CFDictionaryCreate(a3, &kFigSampleBufferConsumerForDataQueueOption_ConsumeAsynchronously, MEMORY[0x1E695E4D0], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v15)
    {
      v16 = v15;
      v17 = FigSampleBufferConsumerForDataQueueCreate(a1, a3, v15, &cf);
      if (v17)
      {
        v20 = v17;
        v12 = 0;
      }

      else
      {
        v18 = *(v10 + 128);
        if (v18)
        {
          CFRelease(v18);
          *(v10 + 128) = 0;
        }

        v19 = FigCFWeakReferenceHolderCreateWithReferencedObject();
        *(v10 + 128) = v19;
        if (v19)
        {
          v20 = 0;
          v12 = cf;
          cf = 0;
        }

        else
        {
          dq_CopyProperty_cold_1(&v31);
          v12 = 0;
          v20 = v31;
        }
      }

      CFRelease(v16);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v20)
      {
        goto LABEL_32;
      }
    }

    else
    {
      dq_CopyProperty_cold_2(&v31);
      v12 = 0;
      v20 = v31;
      if (v31)
      {
        goto LABEL_32;
      }
    }
  }

  v20 = 0;
  *a4 = v12;
LABEL_32:
  FigSimpleMutexUnlock();
  return v20;
}

void dq_SetProperty(const void *a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    if (FigCFEqual())
    {
      if (a3 && (TypeID = CMTimebaseGetTypeID(), TypeID != CFGetTypeID(a3)))
      {
        v9 = qword_1EAF177C8;

        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294951506, "<<<< DQ >>>>", 1008, v3);
      }

      else
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        if (*(DerivedStorage + 16))
        {
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterRemoveWeakListener();
          v8 = *(DerivedStorage + 16);
        }

        else
        {
          v8 = 0;
        }

        *(DerivedStorage + 16) = a3;
        if (a3)
        {
          CFRetain(a3);
        }

        if (v8)
        {
          CFRelease(v8);
        }

        if (a3 && (CMNotificationCenterGetDefaultLocalCenter(), FigNotificationCenterAddWeakListener(), CMTimebaseGetRate(a3) != 0.0))
        {
          dq_Prune(a1);
        }

        else
        {
          v10 = CMBaseObjectGetDerivedStorage();
          dispatch_source_set_timer(*(v10 + 136), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
        }

        FigSimpleMutexUnlock();
      }
    }
  }

  else
  {
    dq_SetProperty_cold_1(&v11);
  }
}

uint64_t FigDataQueueDumpQueue_comparatorEntryPTS(const __CFDictionary *a1, const __CFDictionary *a2)
{
  Value = CFDictionaryGetValue(a1, @"SampleBuffer");
  v4 = CFDictionaryGetValue(a2, @"SampleBuffer");
  memset(&v9, 0, sizeof(v9));
  if (Value)
  {
    CMSampleBufferGetOutputPresentationTimeStamp(&v9, Value);
  }

  else
  {
    v9 = **&MEMORY[0x1E6960C70];
  }

  memset(&v8, 0, sizeof(v8));
  if (v4)
  {
    CMSampleBufferGetOutputPresentationTimeStamp(&v8, v4);
  }

  else
  {
    v8 = **&MEMORY[0x1E6960C70];
  }

  time1 = v9;
  v6 = v8;
  return CMTimeCompare(&time1, &v6);
}

uint64_t dq_TimebaseRateChangedCallback(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CMTimebaseGetRate(*(DerivedStorage + 16)) == 0.0)
  {
    v4 = CMBaseObjectGetDerivedStorage();
    dispatch_source_set_timer(*(v4 + 136), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  else
  {
    dq_Prune(a2);
  }

  return FigSimpleMutexUnlock();
}

void dq_Prune(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ArrayRemovingStaleFrames = dq_CreateArrayRemovingStaleFrames(a1, 1);
  v4 = ArrayRemovingStaleFrames;
  v5 = *(DerivedStorage + 8);
  *(DerivedStorage + 8) = ArrayRemovingStaleFrames;
  if (ArrayRemovingStaleFrames)
  {
    CFRetain(ArrayRemovingStaleFrames);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  dq_EvaluateAndFireLWMTriggerCallback(a1);
  v6 = CMBaseObjectGetDerivedStorage();
  memset(&v12, 0, sizeof(v12));
  CMTimeMake(&v12, 40, 10000);
  if (*(v6 + 52))
  {
    time1 = *(v6 + 40);
    time2 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      time1 = *(v6 + 40);
      time2 = *(v6 + 40);
      v9 = v12;
      if (CMTimeCompare(&time2, &v9) < 0)
      {
        time1 = v12;
      }

      time2 = time1;
      v7 = (CMTimeGetSeconds(&time2) * 500000000.0);
      v8 = dispatch_time(0, v7);
      dispatch_source_set_timer(*(v6 + 136), v8, v7, 0);
    }
  }
}

__CFArray *dq_CreateArrayRemovingStaleFrames(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 8);
  if (v5)
  {
    Count = CFArrayGetCount(v5);
  }

  else
  {
    Count = 0;
  }

  v19 = **&MEMORY[0x1E6960C70];
  memset(&v18, 0, sizeof(v18));
  if (a2)
  {
    CMTimeMake(&v18, 50, 1000);
  }

  else
  {
    v18 = **&MEMORY[0x1E6960CC0];
  }

  v7 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v9 = *(DerivedStorage + 16);
    if (v9)
    {
      Rate = CMTimebaseGetRate(v9);
      CMTimebaseGetTime(&v19, *(DerivedStorage + 16));
    }

    else
    {
      Rate = 0.0;
    }

    if (Count >= 1)
    {
      for (i = 0; Count != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 8), i);
        memset(&v17, 0, sizeof(v17));
        CMSampleBufferGetOutputPresentationTimeStamp(&v17, ValueAtIndex[2]);
        if (*(ValueAtIndex + 8) == 2 || *(DerivedStorage + 24) != ValueAtIndex[3])
        {
          continue;
        }

        if (Rate <= 0.0)
        {
          if (Rate < 0.0)
          {
            memset(&v16, 0, sizeof(v16));
            lhs = v19;
            v14 = v18;
            CMTimeAdd(&v16, &lhs, &v14);
            lhs = v17;
            v14 = v16;
            if ((CMTimeCompare(&lhs, &v14) & 0x80000000) == 0)
            {
              continue;
            }
          }
        }

        else
        {
          memset(&v16, 0, sizeof(v16));
          lhs = v19;
          v14 = v18;
          CMTimeSubtract(&v16, &lhs, &v14);
          lhs = v17;
          v14 = v16;
          if (CMTimeCompare(&lhs, &v14) < 1)
          {
            continue;
          }
        }

        CFArrayAppendValue(Mutable, ValueAtIndex);
      }
    }
  }

  return Mutable;
}

void dq_EvaluateAndFireLWMTriggerCallback(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 96))
  {
    v3 = DerivedStorage;
    v4 = CMBaseObjectGetDerivedStorage();
    v5 = *(v4 + 88);
    dq_UpdateWaterLevelState(a1);
    if (*(v4 + 88) == 2 && (!*(v4 + 120) || v5 != 2))
    {
      *(v3 + 120) = 1;
      v7 = *(v3 + 104);
      v6 = *(v3 + 112);
      v8 = *(v3 + 96);
      if (v6)
      {
        if (v7)
        {
          v11 = *(v3 + 96);
          v9 = CFRetain(*(v3 + 104));
          v8 = v11;
          v7 = v9;
          v6 = *(v3 + 112);
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __dq_EvaluateAndFireLWMTriggerCallback_block_invoke;
        block[3] = &__block_descriptor_tmp_113;
        block[4] = v8;
        block[5] = v7;
        dispatch_async(v6, block);
      }

      else
      {
        v10 = *(v3 + 104);

        v8(v10);
      }
    }
  }
}

void dq_UpdateWaterLevelState(const void *a1)
{
  v19 = **&MEMORY[0x1E6960CC0];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ArrayRemovingStaleFrames = dq_CreateArrayRemovingStaleFrames(a1, 0);
  v4 = ArrayRemovingStaleFrames;
  if (ArrayRemovingStaleFrames)
  {
    Count = CFArrayGetCount(ArrayRemovingStaleFrames);
    if (Count)
    {
      v6 = Count;
      ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);
      memset(&v18, 0, sizeof(v18));
      CMSampleBufferGetOutputPresentationTimeStamp(&v18, ValueAtIndex[2]);
      CMSampleBufferGetOutputDuration(&v19, ValueAtIndex[2]);
      v8 = CFArrayGetValueAtIndex(v4, v6 - 1);
      memset(&v17, 0, sizeof(v17));
      CMSampleBufferGetOutputPresentationTimeStamp(&lhs, v8[2]);
      CMSampleBufferGetOutputDuration(&rhs, v8[2]);
      CMTimeAdd(&v17, &lhs, &rhs);
      rhs = v17;
      v14 = v18;
      CMTimeSubtract(&lhs, &rhs, &v14);
      v19 = lhs;
    }
  }

  v9 = *(DerivedStorage + 52) & 0x1D;
  v10 = *(DerivedStorage + 76);
  v11 = *(DerivedStorage + 88);
  if (v9 == 1)
  {
    lhs = v19;
    rhs = *(DerivedStorage + 40);
    if (CMTimeCompare(&lhs, &rhs) <= 0)
    {
      *(DerivedStorage + 88) = 2;
      if (!v4)
      {
        return;
      }

      goto LABEL_16;
    }
  }

  if ((v10 & 0x1D) != 1 || ((lhs = v19, rhs = *(DerivedStorage + 64), v12 = CMTimeCompare(&lhs, &rhs), v12 < 0) ? (v13 = 1) : (v13 = 3), v12 < 0 && v9 != 1))
  {
    v13 = 0;
  }

  *(DerivedStorage + 88) = v13;
  if (v11 == 2)
  {
    *(DerivedStorage + 120) = 0;
  }

  if (v4)
  {
LABEL_16:
    CFRelease(v4);
  }
}

uint64_t dq_GetWaterLevelState(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  dq_UpdateWaterLevelState(a1);
  v3 = *(DerivedStorage + 88);
  FigSimpleMutexUnlock();
  return v3;
}

uint64_t dq_InstallLowWaterTrigger(const void *a1, uint64_t a2, const void *a3, NSObject *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v9 = DerivedStorage;
    FigSimpleMutexLock();
    if (*(v9 + 96))
    {
      dq_InstallLowWaterTrigger_cold_1(&v13);
      v11 = v13;
    }

    else if ((*(v9 + 52) & 0x1D) == 1)
    {
      *(v9 + 96) = a2;
      if (a3)
      {
        v10 = CFRetain(a3);
      }

      else
      {
        v10 = 0;
      }

      *(v9 + 104) = v10;
      if (a4)
      {
        dispatch_retain(a4);
      }

      *(v9 + 112) = a4;
      dq_EvaluateAndFireLWMTriggerCallback(a1);
      v11 = 0;
    }

    else
    {
      dq_InstallLowWaterTrigger_cold_2(&v14);
      v11 = v14;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    dq_InstallLowWaterTrigger_cold_3(&v15);
    return v15;
  }

  return v11;
}

uint64_t dq_RemoveLowWaterTrigger(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (DerivedStorage[12])
  {
    DerivedStorage[12] = 0;
    v2 = DerivedStorage[13];
    if (v2)
    {
      CFRelease(v2);
      DerivedStorage[13] = 0;
    }

    v3 = DerivedStorage[14];
    if (v3)
    {
      dispatch_release(v3);
      v4 = 0;
      DerivedStorage[14] = 0;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    dq_RemoveLowWaterTrigger_cold_1(&v6);
    v4 = v6;
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t dq_Flush(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(DerivedStorage + 24);
  dq_Prune(a1);
  v3 = FigCFCopyCompactDescription();
  v4 = *(DerivedStorage + 32);
  if (v4 && (v5 = *(v4 + 16)) != 0)
  {
    memset(&v12, 0, sizeof(v12));
    CMSampleBufferGetOutputPresentationTimeStamp(&v12, v5);
    v6 = *MEMORY[0x1E695E480];
    time = v12;
    Seconds = CMTimeGetSeconds(&time);
    v8 = CFStringCreateWithFormat(v6, 0, @"lastSampledBuffer->pts: %1.3f", *&Seconds);
  }

  else
  {
    v8 = CFRetain(@"lastSampledBuffer: NULL");
  }

  v9 = v8;
  FigSimpleMutexUnlock();
  if (v3)
  {
    CFRelease(v3);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return 0;
}

uint64_t FigDataQueueBufferInfo_compareOutputPTS(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  memset(&v8, 0, sizeof(v8));
  CMSampleBufferGetOutputPresentationTimeStamp(&v8, v2);
  memset(&v7, 0, sizeof(v7));
  CMSampleBufferGetOutputPresentationTimeStamp(&v7, v3);
  time1 = v8;
  v5 = v7;
  return CMTimeCompare(&time1, &v5);
}

void *FigDataQueueBufferInfo_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void FigDataQueueBufferInfo_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

uint64_t FigDataQueueBufferInfo_Equal(uint64_t a1, uint64_t a2)
{
  result = FigCFEqual();
  if (result)
  {
    return *(a1 + 24) == *(a2 + 24);
  }

  return result;
}

CFStringRef FigDataQueueBufferInfo_CopyDebugDesc(uint64_t a1)
{
  if (!a1)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[BufferInfo %p]", 0);
  }

  v2 = *(a1 + 16);
  memset(&v9, 0, sizeof(v9));
  CMSampleBufferGetOutputPresentationTimeStamp(&v9, v2);
  v3 = *(a1 + 32);
  if (v3 > 2)
  {
    v4 = "Unknown";
  }

  else
  {
    v4 = off_1E74947A8[v3];
  }

  v6 = *MEMORY[0x1E695E480];
  time = v9;
  Seconds = CMTimeGetSeconds(&time);
  return CFStringCreateWithFormat(v6, 0, @"[%p] sbuf:%p pts:%.5f gen=%llu state=%s ", a1, v2, *&Seconds, *(a1 + 24), v4);
}

uint64_t dq_BufferPTSIsWithinSamplingTimeWithPrecision(__int128 *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 12))
  {
    memset(&v11, 0, sizeof(v11));
    *&time1.start.value = *a2;
    time1.start.epoch = *(a2 + 16);
    *&v7.start.value = *a3;
    v7.start.epoch = *(a3 + 16);
    CMTimeSubtract(&v11, &time1.start, &v7.start);
    memset(&v10, 0, sizeof(v10));
    *&time1.start.value = *a3;
    time1.start.epoch = *(a3 + 16);
    CMTimeMultiply(&v10, &time1.start, 2);
    memset(&time1, 0, sizeof(time1));
    v7.start = v11;
    duration = v10;
    CMTimeRangeMake(&time1, &v7.start, &duration);
    *&v7.start.value = *&time1.start.value;
    *&v7.start.epoch = *&time1.start.epoch;
    v6 = *a1;
    *&v7.duration.timescale = *&time1.duration.timescale;
    *&duration.value = v6;
    duration.epoch = *(a1 + 2);
    return CMTimeRangeContainsTime(&v7, &duration);
  }

  else
  {
    *&time1.start.value = *a1;
    time1.start.epoch = *(a1 + 2);
    *&v7.start.value = *a2;
    v7.start.epoch = *(a2 + 16);
    return CMTimeCompare(&time1.start, &v7.start) == 0;
  }
}

CMTime *OUTLINED_FUNCTION_4_128(uint64_t a1, uint64_t a2, CMTime *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  a12 = 0;
  a13 = 0;
  a11 = 0;
  v14 = *(a1 + 16);

  return CMSampleBufferGetOutputPresentationTimeStamp(&a11, v14);
}

uint64_t FigStreamTrackCanMetadataFormatsSync(const opaqueCMFormatDescription *a1, const opaqueCMFormatDescription *a2)
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  if (MediaSubType != CMFormatDescriptionGetMediaSubType(a2))
  {
    return 0;
  }

  result = 0;
  if (a1 && a2)
  {
    if (MediaSubType == 1835360888)
    {

      return CMFormatDescriptionEqual(a1, a2);
    }

    else if (MediaSubType == 1701671783)
    {
      CMFormatDescriptionGetExtensions(a1);
      CMFormatDescriptionGetExtensions(a2);

      return FigCFEqual();
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL FigStreamTrackCanTracksBeSyncPairsIgnoringDiscontinuity(uint64_t a1, uint64_t a2)
{
  if (FigStreamTrackGetMediaType(a1) == 1835365473 && FigStreamTrackGetMediaType(a2) == 1835365473)
  {
    SubstreamID = FigStreamTrackGetSubstreamID(a1);
    return SubstreamID == FigStreamTrackGetSubstreamID(a2) && FigStreamTrackCanMetadataFormatsSync(*(a1 + 56), *(a2 + 56)) != 0;
  }

  else
  {
    MediaType = FigStreamTrackGetMediaType(a1);
    return MediaType == FigStreamTrackGetMediaType(a2);
  }
}

uint64_t FigStreamTrackGetCAImageQueueFlagsForTrack(uint64_t a1, int *a2, int *a3)
{
  cf[20] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 400);
  cf[0] = *MEMORY[0x1E695E4C0];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!v6)
  {
    v8 = 0;
    v9 = 4;
    goto LABEL_13;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    v6 = 4294954514;
    goto LABEL_7;
  }

  v6 = v7(v6, *MEMORY[0x1E69610B8], *MEMORY[0x1E695E480], cf);
  if (v6 || cf[0] != *MEMORY[0x1E695E4D0])
  {
LABEL_7:
    if (FigAlternateGetAllowedAOCP(*(a1 + 456)))
    {
      v8 = 4;
      v9 = 2097156;
      goto LABEL_13;
    }
  }

  if (dword_1EAF177F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9 = 2097156;
  v8 = 2097156;
LABEL_13:
  *a2 = v8;
  *a3 = v9;
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v6;
}

uint64_t RegisterFigHLSPersistentStoreBaseType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigHLSPersistentStoreGetTypeID()
{
  MEMORY[0x19A8D3660](&FigHLSPersistentStoreGetClassID_sRegisterFigPersistentStoreBaseTypeOnce, RegisterFigHLSPersistentStoreBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigHLSPersistentStoreCreateAtURL(const void *a1, uint64_t a2, const __CFDictionary *a3, int a4, CFTypeRef *a5)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2)
  {
    FigHLSPersistentStoreCreateAtURL_cold_19(buffer);
    return *buffer;
  }

  if (!a5)
  {
    FigHLSPersistentStoreCreateAtURL_cold_18(buffer);
    return *buffer;
  }

  if (FigCFURLIsLocalResource() != 1)
  {
    FigHLSPersistentStoreCreateAtURL_cold_1(buffer);
    return *buffer;
  }

  MEMORY[0x19A8D3660](&FigHLSPersistentStoreGetClassID_sRegisterFigPersistentStoreBaseTypeOnce, RegisterFigHLSPersistentStoreBaseType);
  v10 = CMDerivedObjectCreate();
  if (v10)
  {
    return v10;
  }

  v86 = a5;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"HLSStoreClientAuditToken");
    if (Value)
    {
      v74 = CFRetain(Value);
      *(DerivedStorage + 144) = v74;
      if (v74)
      {
        *buffer = 0u;
        v91 = 0u;
        if (CFDataGetLength(v74) == 32)
        {
          v75 = *(DerivedStorage + 144);
          v97.length = CFDataGetLength(v75);
          v97.location = 0;
          CFDataGetBytes(v75, v97, buffer);
          v76 = *buffer;
          v77 = v91;
          *(DerivedStorage + 160) = *buffer;
          *(DerivedStorage + 176) = v77;
          *cf = v76;
          v89 = v77;
          if (!FigServer_GetClientPIDFromAuditToken())
          {
            goto LABEL_89;
          }

          *cf = *buffer;
          v89 = v91;
          if (FigServer_IsWritableFileOpeningOrCreationPermittedForAuditToken() == 1)
          {
            goto LABEL_89;
          }

          FigHLSPersistentStoreCreateAtURL_cold_3(cf);
        }

        else
        {
          FigHLSPersistentStoreCreateAtURL_cold_2(cf);
        }

        BootFromFile = LODWORD(cf[0]);
        if (LODWORD(cf[0]))
        {
          return BootFromFile;
        }

        goto LABEL_6;
      }
    }

    else
    {
      *(DerivedStorage + 144) = 0;
    }

LABEL_89:
    FigHLSPersistentStoreCreateAtURL_cold_4(a3, DerivedStorage);
  }

LABEL_6:
  if (a1)
  {
    v12 = CFRetain(a1);
  }

  else
  {
    v12 = 0;
  }

  *(DerivedStorage + 104) = v12;
  *(DerivedStorage + 128) = 0;
  *(DerivedStorage + 120) = FigReadWriteLockCreate();
  AllocatorForMedia = FigGetAllocatorForMedia();
  v14 = MEMORY[0x1E695E9D8];
  v15 = MEMORY[0x1E695E9E8];
  *(DerivedStorage + 88) = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v16 = FigGetAllocatorForMedia();
  *(DerivedStorage + 56) = CFDictionaryCreateMutable(v16, 0, v14, v15);
  v17 = FigGetAllocatorForMedia();
  *(DerivedStorage + 208) = CFDictionaryCreateMutable(v17, 0, v14, v15);
  v18 = FigGetAllocatorForMedia();
  *(DerivedStorage + 216) = CFDictionaryCreateMutable(v18, 0, v14, v15);
  *(DerivedStorage + 136) = 0;
  FigCFDictionaryGetBooleanIfPresent();
  *(DerivedStorage + 136) = 0;
  if (!*(DerivedStorage + 56))
  {
    FigHLSPersistentStoreCreateAtURL_cold_20(buffer);
    return *buffer;
  }

  *(DerivedStorage + 112) = a4 == 1;
  v19 = FigFileConvertURLToAbsoluteAndMarkAsDirectory();
  if (v19)
  {
    BootFromFile = v19;
    if (v19 == -17913)
    {
      FigBytePumpGetFigBaseObject();
      return 4294949383;
    }

    return BootFromFile;
  }

  v20 = FigGetAllocatorForMedia();
  v21 = MEMORY[0x1E695E9E8];
  *(DerivedStorage + 96) = CFDictionaryCreateMutable(v20, 0, v14, MEMORY[0x1E695E9E8]);
  v22 = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(v22, 0, v14, v21);
  CFDictionarySetValue(*(DerivedStorage + 96), @"Default", Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v24 = *(DerivedStorage + 8);
  if (!FigCFURLDoesDirectoryExist())
  {
    goto LABEL_21;
  }

  v25 = FigGetAllocatorForMedia();
  v26 = CFURLCreateCopyAppendingPathComponent(v25, v24, @"root.xml", 0);
  if (!v26)
  {
    FigHLSPersistentStoreCreateAtURL_cold_6();
    goto LABEL_21;
  }

  v27 = v26;
  v28 = FigGetAllocatorForMedia();
  v29 = CFURLCreateCopyAppendingPathComponent(v28, v24, @"boot.xml", 0);
  if (!v29)
  {
    FigHLSPersistentStoreCreateAtURL_cold_5(v27);
    goto LABEL_21;
  }

  v30 = v29;
  if (!FigFileDoesFileExist())
  {
    CFRelease(v27);
    CFRelease(v30);
    goto LABEL_21;
  }

  DoesFileExist = FigFileDoesFileExist();
  CFRelease(v27);
  CFRelease(v30);
  if (!DoesFileExist)
  {
LABEL_21:
    if (*(DerivedStorage + 112))
    {
      v33 = *(DerivedStorage + 8);
      v94 = 0;
      v92 = 0;
      v93 = 0;
      v34 = FigGetAllocatorForMedia();
      v35 = CFStringCreateWithCString(v34, "MoviePackage", 0x8000100u);
      if (!v35)
      {
        FigHLSPersistentStoreCreateAtURL_cold_13(buffer);
        v46 = 0;
        v42 = 0;
        BootFromFile = *buffer;
        goto LABEL_63;
      }

      v36 = v35;
      TempDirectory = FigFileCreateTempDirectory();
      if (TempDirectory)
      {
        BootFromFile = TempDirectory;
        if (TempDirectory != -17913)
        {
LABEL_127:
          v46 = 0;
          v42 = 0;
          goto LABEL_61;
        }

        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17808, 4294949383, "<<<< HLSPersistentStore >>>>", 1227);
      }

      else
      {
        v38 = FigDirectoryEnableDirStatsTracking();
        if (v38 == -17916)
        {
          v39 = 0;
        }

        else
        {
          v39 = v38;
        }

        if (!v39)
        {
          FigGetAllocatorForMedia();
          BlockBufferWithCFString = FigCreateBlockBufferWithCFString();
          if (!BlockBufferWithCFString)
          {
            v41 = FigGetAllocatorForMedia();
            v42 = CFURLCreateCopyAppendingPathComponent(v41, v94, @"root.xml", 0);
            if (!v42)
            {
              FigHLSPersistentStoreCreateAtURL_cold_12(buffer);
              v46 = 0;
              goto LABEL_133;
            }

            FigXMLNodeWriteXMLFileFromBlockBufferAtURL(v93, 0x1F0B33258, v42);
            if (v43)
            {
              if (v43 == -17913)
              {
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v85, a5, v87);
                BootFromFile = v79;
                FigBytePumpGetFigBaseObject();
LABEL_131:
                v46 = 0;
                goto LABEL_61;
              }

              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v85, a5, v87);
            }

            else
            {
              FigGetAllocatorForMedia();
              v44 = FigCreateBlockBufferWithCFString();
              if (!v44)
              {
                v45 = FigGetAllocatorForMedia();
                v46 = CFURLCreateCopyAppendingPathComponent(v45, v94, @"boot.xml", 0);
                if (!v46)
                {
                  FigHLSPersistentStoreCreateAtURL_cold_11(buffer);
                  goto LABEL_133;
                }

                FigXMLNodeWriteXMLFileFromBlockBufferAtURL(v92, 0x1F0B33258, v46);
                if (v47)
                {
                  if (v47 == -17913)
                  {
                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v85, a5, v87);
                    BootFromFile = v80;
                    FigBytePumpGetFigBaseObject();
                  }

                  else
                  {
                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v85, a5, v87);
                    BootFromFile = v82;
                  }
                }

                else
                {
                  BootFromFile = FigFileRename();
                  if (*__error() == 18)
                  {
                    *buffer = 0;
                    cf[0] = 0;
                    v95 = 0;
                    if (!FigCFURLDoesDirectoryExist())
                    {
                      makeDirectoryAtURL(v33);
                    }

                    if (!FigCFURLDoesDirectoryExist())
                    {
                      FigHLSPersistentStoreCreateAtURL_cold_10(&v96);
                      v52 = 0;
                      goto LABEL_146;
                    }

                    v49 = FigFileForkOpenMainByCFURL();
                    if (v49)
                    {
                      BootFromFile = v49;
                      if (v49 == -17913)
                      {
                        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17808, 4294949383, "<<<< HLSPersistentStore >>>>", 1160);
LABEL_139:
                        BootFromFile = v83;
                        FigBytePumpGetFigBaseObject();
                      }
                    }

                    else
                    {
                      v50 = FigFileLock();
                      if (!v50)
                      {
                        v51 = FigGetAllocatorForMedia();
                        v52 = CFURLCreateCopyAppendingPathComponent(v51, v33, @"root.xml", 0);
                        if (v52)
                        {
                          if (FigFileDoesFileExist())
                          {
                            BootFromFile = 0;
LABEL_43:
                            v53 = 0;
LABEL_53:
                            FigFileUnlock();
                            FigFileForkClose();
                            if (v52)
                            {
                              CFRelease(v52);
                            }

                            if (v53)
                            {
                              CFRelease(v53);
                            }

                            if (v95)
                            {
                              CFRelease(v95);
                            }

                            if (cf[0])
                            {
                              CFRelease(cf[0]);
                            }

                            goto LABEL_61;
                          }

                          v54 = FigGetAllocatorForMedia();
                          v53 = CFURLCreateCopyAppendingPathComponent(v54, v33, @"boot.xml", 0);
                          if (v53)
                          {
                            if (FigFileDoesFileExist() && (v55 = FigFileDeleteFile(), v55))
                            {
                              BootFromFile = v55;
                              if (v55 != -17913)
                              {
                                goto LABEL_53;
                              }

                              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17808, 4294949383, "<<<< HLSPersistentStore >>>>", 1177);
                            }

                            else
                            {
                              FigGetAllocatorForMedia();
                              v56 = FigCreateBlockBufferWithCFString();
                              if (v56)
                              {
                                goto LABEL_158;
                              }

                              FigXMLNodeWriteXMLFileFromBlockBufferAtURL(cf[0], 0x1F0B33258, v53);
                              if (!v57)
                              {
                                FigGetAllocatorForMedia();
                                v56 = FigCreateBlockBufferWithCFString();
                                if (!v56)
                                {
                                  FigXMLNodeWriteXMLFileFromBlockBufferAtURL(v95, 0x1F0B33258, v52);
                                  BootFromFile = v58;
                                  if (!v58)
                                  {
                                    goto LABEL_53;
                                  }

                                  if (v58 == -17913)
                                  {
                                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17808, 4294950386, "<<<< HLSPersistentStore >>>>", 1194);
                                    goto LABEL_154;
                                  }

                                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17808, 4294950386, "<<<< HLSPersistentStore >>>>", 1195);
                                }

LABEL_158:
                                BootFromFile = v56;
                                goto LABEL_53;
                              }

                              if (v57 != -17913)
                              {
                                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17808, 4294950386, "<<<< HLSPersistentStore >>>>", 1187);
                                goto LABEL_158;
                              }

                              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17808, 4294950386, "<<<< HLSPersistentStore >>>>", 1186);
                            }

LABEL_154:
                            BootFromFile = v84;
                            FigBytePumpGetFigBaseObject();
                            goto LABEL_53;
                          }

                          FigHLSPersistentStoreCreateAtURL_cold_8(&v96);
LABEL_147:
                          BootFromFile = v96;
                          goto LABEL_53;
                        }

                        FigHLSPersistentStoreCreateAtURL_cold_9(&v96);
LABEL_146:
                        v53 = 0;
                        goto LABEL_147;
                      }

                      BootFromFile = v50;
                      if (v50 == -17913)
                      {
                        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17808, 4294949383, "<<<< HLSPersistentStore >>>>", 1165);
                        goto LABEL_139;
                      }
                    }

                    v52 = 0;
                    goto LABEL_43;
                  }

                  if (BootFromFile == -17913)
                  {
                    FigHLSPersistentStoreCreateAtURL_cold_7(buffer);
LABEL_133:
                    BootFromFile = *buffer;
                  }
                }

LABEL_61:
                CFRelease(v36);
                if (v94)
                {
                  CFRelease(v94);
                }

LABEL_63:
                if (v92)
                {
                  CFRelease(v92);
                }

                if (v93)
                {
                  CFRelease(v93);
                }

                if (v46)
                {
                  CFRelease(v46);
                }

                if (v42)
                {
                  CFRelease(v42);
                }

                if (BootFromFile)
                {
                  return BootFromFile;
                }

                goto LABEL_72;
              }
            }

            BootFromFile = v44;
            goto LABEL_131;
          }

          goto LABEL_126;
        }

        if (v39 != -17913)
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v85, a5, v87);
LABEL_126:
          BootFromFile = BlockBufferWithCFString;
          goto LABEL_127;
        }

        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17808, 4294950386, "<<<< HLSPersistentStore >>>>", 1239);
      }

      BootFromFile = v78;
      FigBytePumpGetFigBaseObject();
      goto LABEL_127;
    }

    FigHLSPersistentStoreCreateAtURL_cold_17(buffer);
    return *buffer;
  }

  if (!*(DerivedStorage + 112))
  {
    v32 = 1;
    goto LABEL_73;
  }

LABEL_72:
  v32 = 2;
LABEL_73:
  v10 = lockRoot(DerivedStorage, v32);
  if (v10)
  {
    return v10;
  }

  v59 = CMBaseObjectGetDerivedStorage();
  v60 = FigGetAllocatorForMedia();
  v61 = CFURLCreateCopyAppendingPathComponent(v60, *(v59 + 8), @"root.xml", 0);
  if (!v61)
  {
    FigHLSPersistentStoreCreateAtURL_cold_16(buffer);
    BootFromFile = *buffer;
LABEL_115:
    if (!BootFromFile)
    {
      BootFromFile = loadBootFromFile(0);
      if (!BootFromFile)
      {
        *v86 = 0;
      }
    }

    return BootFromFile;
  }

  v62 = v61;
  v63 = FigGetAllocatorForMedia();
  v64 = FigXMLNodeCreateFromURL(v63, v62, (v59 + 40));
  if (v64)
  {
    goto LABEL_109;
  }

  v65 = *(v59 + 40);
  FigXMLNodeGetTag(v65);
  v66 = FigCFEqual();
  if (!v65 || !v66)
  {
    FigHLSPersistentStoreCreateAtURL_cold_15(buffer);
LABEL_108:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v85, v86, v87);
LABEL_109:
    BootFromFile = v64;
LABEL_114:
    CFRelease(v62);
    goto LABEL_115;
  }

  Child = FigXMLNodeGetChild(v65, @"MoviePackageType");
  FigXMLNodeGetContentAsCFString(Child);
  if (FigCFEqual() != 1)
  {
    goto LABEL_108;
  }

  v68 = *(v59 + 40);
  FigXMLNodeGetTag(v68);
  v69 = FigCFEqual();
  if (!v68 || !v69)
  {
    if (!FigHLSPersistentStoreCreateAtURL_cold_14())
    {
      BootFromFile = *buffer;
      goto LABEL_114;
    }

    goto LABEL_111;
  }

  v70 = FigXMLNodeGetChild(v68, @"BootImage");
  ContentAsCFString = FigXMLNodeGetContentAsCFString(v70);
  if (!ContentAsCFString)
  {
LABEL_111:
    v72 = 0;
    goto LABEL_112;
  }

  v72 = CFRetain(ContentAsCFString);
LABEL_112:
  BootFromFile = FigFileValidateFileNameIsWithinParentDirectory();
  if (!BootFromFile)
  {
    *(v59 + 80) = v72;
    goto LABEL_114;
  }

  CFRelease(v62);
  if (v72)
  {
    CFRelease(v72);
  }

  return BootFromFile;
}

uint64_t loadBootFromFile(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 80))
  {
    loadBootFromFile_cold_11(&cf);
    return cf;
  }

  v2 = DerivedStorage;
  v4 = (DerivedStorage + 48);
  v3 = *(DerivedStorage + 48);
  if (v3)
  {
    CFRelease(v3);
    *v4 = 0;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v6 = CFURLCreateCopyAppendingPathComponent(AllocatorForMedia, *(v2 + 8), *(v2 + 80), 0);
  if (!v6)
  {
    loadBootFromFile_cold_10(&cf);
    return cf;
  }

  v7 = v6;
  v8 = FigGetAllocatorForMedia();
  v87 = v7;
  v9 = FigXMLNodeCreateFromURL(v8, v7, v4);
  if (!v9)
  {
    v10 = *v4;
    cf = 0;
    if (xmlCopyHLSMoviePackageType(v10, &cf))
    {
      v11 = 0;
    }

    else
    {
      v11 = FigCFEqual() == 1;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v11)
    {
      v89 = v4;
      StreamList = xmlGetStreamList(*v4);
      if (!StreamList)
      {
        goto LABEL_22;
      }

      v13 = StreamList;
      if (FigXMLNodeGetCountOfChildren(StreamList) < 1)
      {
        goto LABEL_22;
      }

      v14 = 0;
      while (1)
      {
        ChildAtIndex = FigXMLNodeGetChildAtIndex(v13, v14);
        Attribute = FigXMLNodeGetAttribute(ChildAtIndex, @"ID");
        v17 = FigXMLNodeGetAttribute(ChildAtIndex, @"Path");
        v18 = FigGetAllocatorForMedia();
        v19 = CFURLCreateCopyAppendingPathComponent(v18, *(v2 + 8), v17, 1u);
        if (!v19)
        {
          break;
        }

        v20 = v19;
        v21 = FigXMLNodeGetAttribute(ChildAtIndex, @"NetworkURL");
        v22 = FigXMLNodeGetAttribute(ChildAtIndex, @"UniqueTag");
        if (!ChildAtIndex)
        {
          loadBootFromFile_cold_1();
LABEL_19:
          v24 = 0;
          goto LABEL_20;
        }

        Child = FigXMLNodeGetChild(ChildAtIndex, @"Complete");
        if (!Child)
        {
          goto LABEL_19;
        }

        FigXMLNodeGetContentAsCFString(Child);
        v24 = FigCFEqual();
LABEL_20:
        v25 = addStreamToStreamList(v2, Attribute, v20, v21, v22, v24, 0);
        CFRelease(v20);
        if (v25)
        {
          goto LABEL_90;
        }

        if (++v14 >= FigXMLNodeGetCountOfChildren(v13))
        {
          goto LABEL_22;
        }
      }

      if (!loadBootFromFile_cold_2(&cf))
      {
        v25 = cf;
        goto LABEL_90;
      }

LABEL_22:
      value = 0;
      cf = 0;
      v26 = v89;
      v27 = *v89;
      FigXMLNodeGetTag(*v89);
      v28 = FigCFEqual();
      if (v27 && v28)
      {
        v29 = FigXMLNodeGetChild(v27, @"DataItems");
        if (!v29)
        {
          goto LABEL_51;
        }

        v30 = v29;
        v31 = FigXMLNodeCopyAttributeAsCFString(v29, @"Directory", &cf);
        if (v31)
        {
          v25 = v31;
        }

        else
        {
          if (!*(v2 + 32))
          {
            v32 = FigGetAllocatorForMedia();
            *(v2 + 32) = CFURLCreateCopyAppendingPathComponent(v32, *(v2 + 8), cf, 1u);
          }

          if (FigXMLNodeGetCountOfChildren(v30) >= 1)
          {
            v33 = 0;
            do
            {
              v34 = FigXMLNodeGetChildAtIndex(v30, v33);
              v35 = *(v2 + 32);
              v36 = FigGetAllocatorForMedia();
              Mutable = CFDictionaryCreateMutable(v36, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              v38 = FigXMLNodeGetChild(v34, @"ID");
              ContentAsCFString = FigXMLNodeGetContentAsCFString(v38);
              CFDictionarySetValue(Mutable, @"DataItemDescriptorID", ContentAsCFString);
              v40 = FigXMLNodeGetChild(v34, @"Category");
              v41 = FigXMLNodeGetContentAsCFString(v40);
              CFDictionarySetValue(Mutable, @"DataItemDescriptorCategory", v41);
              v42 = FigXMLNodeGetChild(v34, @"Name");
              v43 = FigXMLNodeGetContentAsCFString(v42);
              CFDictionarySetValue(Mutable, @"DataItemDescriptorName", v43);
              v44 = FigXMLNodeGetChild(v34, @"DataPath");
              v45 = FigXMLNodeGetContentAsCFString(v44);
              if (v45)
              {
                v46 = v45;
                v47 = FigGetAllocatorForMedia();
                v48 = CFURLCreateWithString(v47, v46, v35);
                CFDictionarySetValue(Mutable, @"DataItemURL", v48);
                CFDictionarySetValue(Mutable, @"DataItemFileName", v46);
              }

              else
              {
                v48 = 0;
              }

              v49 = FigXMLNodeGetChild(v34, @"DescriptorPath");
              v50 = FigXMLNodeGetContentAsCFString(v49);
              if (v50)
              {
                v51 = v50;
                v52 = FigGetAllocatorForMedia();
                v53 = CFURLCreateWithString(v52, v51, v35);
                CFDictionarySetValue(Mutable, @"DataItemDescriptorURL", v53);
                CFDictionarySetValue(Mutable, @"DataItemDescriptorFileName", v51);
              }

              else
              {
                v53 = 0;
              }

              v54 = FigXMLNodeGetChild(v34, @"Role");
              v55 = FigXMLNodeGetContentAsCFString(v54);
              if (v55)
              {
                CFDictionarySetValue(Mutable, @"DataItemDescriptorRole", v55);
              }

              v56 = FigXMLNodeGetChild(v34, @"kDataItemNetworkURL");
              v57 = FigXMLNodeGetContentAsCFString(v56);
              if (v57)
              {
                CFDictionarySetValue(Mutable, @"DataItemDescriptorNetworkURL", v57);
              }

              if (v48)
              {
                CFRelease(v48);
              }

              if (v53)
              {
                CFRelease(v53);
              }

              v58 = CFDictionaryGetValue(Mutable, @"DataItemDescriptorID");
              CFDictionarySetValue(*(v2 + 88), v58, Mutable);
              v59 = CFDictionaryGetValue(Mutable, @"DataItemDescriptorCategory");
              if (CFDictionaryGetValueIfPresent(*(v2 + 96), v59, &value))
              {
                CFDictionarySetValue(value, v58, Mutable);
              }

              else
              {
                v60 = FigGetAllocatorForMedia();
                value = CFDictionaryCreateMutable(v60, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                CFDictionarySetValue(*(v2 + 96), v59, value);
                CFDictionarySetValue(value, v58, Mutable);
                if (value)
                {
                  CFRelease(value);
                }
              }

              if (Mutable)
              {
                CFRelease(Mutable);
              }

              ++v33;
            }

            while (v33 < FigXMLNodeGetCountOfChildren(v30));
          }

LABEL_51:
          v25 = 0;
        }

        v26 = v89;
      }

      else
      {
        loadBootFromFile_cold_3(&v92);
        v25 = v92;
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v25)
      {
        goto LABEL_90;
      }

      cf = 0;
      v61 = *v26;
      FigXMLNodeGetTag(*v26);
      v62 = FigCFEqual();
      if (v61 && v62)
      {
        v63 = FigXMLNodeGetChild(v61, @"InterstitialAssets");
        if (!v63)
        {
LABEL_87:
          v25 = 0;
          goto LABEL_88;
        }

        v64 = v63;
        v65 = FigXMLNodeCopyAttributeAsCFString(v63, @"Directory", &cf);
        if (!v65)
        {
          if (!*(v2 + 200))
          {
            v66 = FigGetAllocatorForMedia();
            *(v2 + 200) = CFURLCreateCopyAppendingPathComponent(v66, *(v2 + 8), cf, 1u);
          }

          if (FigXMLNodeGetCountOfChildren(v64) >= 1)
          {
            v67 = 0;
            while (1)
            {
              v68 = FigXMLNodeGetChildAtIndex(v64, v67);
              Tag = FigXMLNodeGetTag(v68);
              if (CFStringCompare(Tag, @"InterstitialAsset", 0))
              {
                if (CFStringCompare(Tag, @"InterstitialAssetList", 0))
                {
                  goto LABEL_77;
                }

                if (v68)
                {
                  v70 = FigGetAllocatorForMedia();
                  v71 = CFDictionaryCreateMutable(v70, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  if (v71)
                  {
                    v72 = v71;
                    v73 = FigXMLNodeGetChild(v68, @"NetworkURL");
                    v74 = FigXMLNodeGetChild(v68, @"PathToLocalCopy");
                    if (v73)
                    {
                      v75 = v74;
                      if (v74)
                      {
                        v76 = FigXMLNodeGetContentAsCFString(v73);
                        CFDictionarySetValue(v72, @"InterstitialAssetListNetworkURL", v76);
                        v77 = FigXMLNodeGetContentAsCFString(v75);
                        v78 = FigGetAllocatorForMedia();
                        v25 = CFURLCreateWithString(v78, v77, *(v2 + 200));
                        CFDictionarySetValue(v72, @"InterstitialAssetListFileName", v25);
                        CFDictionarySetValue(*(v2 + 216), v77, v72);
                        if (v25)
                        {
                          CFRelease(v25);
                          v25 = 0;
                        }

LABEL_72:
                        CFRelease(v72);
                        if (v25)
                        {
                          goto LABEL_88;
                        }

                        goto LABEL_77;
                      }

                      loadBootFromFile_cold_4(&value);
                    }

                    else
                    {
                      loadBootFromFile_cold_5(&value);
                    }

                    v25 = value;
                    goto LABEL_72;
                  }

                  loadBootFromFile_cold_6(&value);
                }

                else
                {
                  loadBootFromFile_cold_7(&value);
                }
              }

              else
              {
                if (v68)
                {
                  v79 = FigXMLNodeGetChild(v68, @"NetworkURL");
                  v80 = FigXMLNodeGetContentAsCFString(v79);
                  v81 = FigXMLNodeGetChild(v68, @"PathToLocalCopy");
                  v82 = FigXMLNodeGetContentAsCFString(v81);
                  v83 = FigGetAllocatorForMedia();
                  v84 = CFURLCreateWithString(v83, v82, *(v2 + 200));
                  CFDictionarySetValue(*(v2 + 208), v80, v84);
                  if (v84)
                  {
                    CFRelease(v84);
                  }

                  goto LABEL_77;
                }

                loadBootFromFile_cold_8(&value);
              }

              v25 = value;
              if (value)
              {
                goto LABEL_88;
              }

LABEL_77:
              if (++v67 >= FigXMLNodeGetCountOfChildren(v64))
              {
                goto LABEL_87;
              }
            }
          }

          goto LABEL_87;
        }

        v25 = v65;
      }

      else
      {
        loadBootFromFile_cold_9(&value);
        v25 = value;
      }

LABEL_88:
      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_90;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v86, v87, v88);
  }

  v25 = v9;
LABEL_90:
  CFRelease(v87);
  return v25;
}

uint64_t HLSPersistentStore_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {

    return persistentStore_Invalidate(DerivedStorage);
  }

  else
  {
    HLSPersistentStore_Invalidate_cold_1(&v3);
    return v3;
  }
}

double persistentStore_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return persistentStore_Finalize_cold_1(0, v2, v3, v4, v5, v6, v7, v8, v11, v12, SHIDWORD(v12), vars0);
  }

  v9 = DerivedStorage;
  persistentStore_Invalidate(DerivedStorage);
  FigReadWriteLockDestroy();
  *(v9 + 120) = 0;
  return result;
}

CFStringRef persistentStore_CopyDebugDescription(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 8);
  if (v1)
  {
    PathComponent = CFURLCopyLastPathComponent(v1);
  }

  else
  {
    PathComponent = 0;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v4 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"[FigHLSPersistentStore]{%@}", PathComponent);
  if (PathComponent)
  {
    CFRelease(PathComponent);
  }

  return v4;
}

uint64_t persistentStore_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    persistentStore_CopyProperty_cold_6(&v25);
    return v25;
  }

  v8 = DerivedStorage;
  v9 = FigReadWriteLockLockForRead();
  if (v9)
  {
    goto LABEL_40;
  }

  if (!a2)
  {
    persistentStore_CopyProperty_cold_5(&v25);
    goto LABEL_45;
  }

  if (!a4)
  {
    persistentStore_CopyProperty_cold_4(&v25);
    goto LABEL_45;
  }

  if (*v8)
  {
    persistentStore_CopyProperty_cold_1(&v25);
    goto LABEL_45;
  }

  if (!CFEqual(a2, @"MasterPlaylistNetworkURL"))
  {
    if (CFEqual(a2, @"HLSPersistentStoreURL"))
    {
      ContentAsCFString = *(v8 + 8);
      if (!ContentAsCFString)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (CFEqual(a2, @"MoviePackageBootVersion"))
    {
      v17 = *(v8 + 48);
      FigXMLNodeGetTag(v17);
      v18 = FigCFEqual();
      if (v17 && v18)
      {
        Child = FigXMLNodeGetChild(v17, @"Version");
        ContentAsCFString = FigXMLNodeGetContentAsCFString(Child);
        if (!ContentAsCFString)
        {
LABEL_24:
          v16 = 0;
          *a4 = ContentAsCFString;
          goto LABEL_25;
        }

LABEL_23:
        ContentAsCFString = CFRetain(ContentAsCFString);
        goto LABEL_24;
      }

      if (persistentStore_CopyProperty_cold_2())
      {
LABEL_49:
        ContentAsCFString = 0;
        goto LABEL_24;
      }
    }

    else
    {
      if (!CFEqual(a2, @"MoviePackageRootVersion"))
      {
        if (CFEqual(a2, @"MoviePackageBootType"))
        {
          v25 = 0;
          v24 = xmlCopyHLSMoviePackageType(*(v8 + 48), &v25);
        }

        else
        {
          if (!CFEqual(a2, @"MoviePackageRootType"))
          {
            if (!CFEqual(a2, @"DataDirectory"))
            {
              v16 = 4294954512;
              goto LABEL_25;
            }

            ContentAsCFString = CFURLCreateCopyAppendingPathComponent(a3, *(v8 + 8), @"Data", 1u);
            goto LABEL_24;
          }

          v25 = 0;
          v24 = xmlCopyRootType(*(v8 + 40), &v25);
        }

        v16 = v24;
        if (v24)
        {
          goto LABEL_25;
        }

        v12 = v25;
        goto LABEL_18;
      }

      v21 = *(v8 + 40);
      FigXMLNodeGetTag(v21);
      v22 = FigCFEqual();
      if (v21 && v22)
      {
        v23 = FigXMLNodeGetChild(v21, @"Version");
        ContentAsCFString = FigXMLNodeGetContentAsCFString(v23);
        goto LABEL_24;
      }

      if (persistentStore_CopyProperty_cold_3())
      {
        goto LABEL_49;
      }
    }

LABEL_45:
    v16 = v25;
    goto LABEL_25;
  }

  v10 = *(v8 + 48);
  v25 = 0;
  FigXMLNodeGetTag(v10);
  v11 = FigCFEqual();
  v12 = 0;
  if (!v10 || !v11)
  {
    goto LABEL_17;
  }

  v13 = FigXMLNodeGetChild(v10, @"MasterPlaylist");
  if (!v13 || (v14 = FigXMLNodeGetChild(v13, @"NetworkURL")) == 0)
  {
    v12 = 0;
    goto LABEL_17;
  }

  v9 = FigXMLNodeCopyContentAsCFString(v14, &v25);
  if (v9)
  {
LABEL_40:
    v16 = v9;
    goto LABEL_25;
  }

  v12 = v25;
LABEL_17:
  v16 = 0;
LABEL_18:
  *a4 = v12;
LABEL_25:
  FigReadWriteLockUnlockForRead();
  return v16;
}

uint64_t unlockRoot(uint64_t a1)
{
  if (*(a1 + 128) && (result = FigFileUnlock(), result))
  {
    if (result == -17913)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
      v4 = v3;
      FigBytePumpGetFigBaseObject();
      return v4;
    }
  }

  else
  {
    result = 0;
    *(a1 + 112) = 0;
  }

  return result;
}

uint64_t xmlCopyHLSMoviePackageType(uint64_t a1, void *a2)
{
  if (a2)
  {
    FigXMLNodeGetTag(a1);
    v4 = FigCFEqual();
    if (a1 && v4)
    {
      Child = FigXMLNodeGetChild(a1, @"HLSMoviePackageType");
      ContentAsCFString = FigXMLNodeGetContentAsCFString(Child);
      if (ContentAsCFString)
      {
        v7 = CFRetain(ContentAsCFString);
      }

      else
      {
        v7 = 0;
      }

      result = 0;
      *a2 = v7;
    }

    else
    {
      xmlCopyHLSMoviePackageType_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    xmlCopyHLSMoviePackageType_cold_2(&v10);
    return v10;
  }

  return result;
}

uint64_t xmlCopyRootType(uint64_t a1, void *a2)
{
  FigXMLNodeGetTag(a1);
  v4 = FigCFEqual();
  if (a1 && v4)
  {
    Child = FigXMLNodeGetChild(a1, @"MoviePackageType");
    ContentAsCFString = FigXMLNodeGetContentAsCFString(Child);
    if (ContentAsCFString)
    {
      v7 = CFRetain(ContentAsCFString);
    }

    else
    {
      v7 = 0;
    }

    result = 0;
    *a2 = v7;
  }

  else
  {
    xmlCopyRootType_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t writeBoot(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  AllocatorForMedia = FigGetAllocatorForMedia();
  v3 = CFURLCreateCopyAppendingPathComponent(AllocatorForMedia, *(DerivedStorage + 8), *(DerivedStorage + 80), 0);
  if (v3)
  {
    v4 = v3;
    v5 = FigXMLNodeWriteToFilePath(*(DerivedStorage + 48), v3);
    CFRelease(v4);
    return v5;
  }

  else
  {
    writeBoot_cold_1(&v7);
    return v7;
  }
}

uint64_t persistentStore_CopyStreamIDs(uint64_t a1, uint64_t *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    persistentStore_CopyStreamIDs_cold_5(&v10);
    return v10;
  }

  v4 = DerivedStorage;
  v5 = FigReadWriteLockLockForRead();
  if (v5)
  {
    v8 = v5;
    goto LABEL_11;
  }

  if (*v4)
  {
    persistentStore_CopyStreamIDs_cold_1(&v10);
LABEL_19:
    v8 = v10;
    goto LABEL_11;
  }

  if (*(v4 + 113) != 1)
  {
    persistentStore_CopyStreamIDs_cold_2(&v10);
    goto LABEL_19;
  }

  if (!a2)
  {
    persistentStore_CopyStreamIDs_cold_4(&v10);
    goto LABEL_19;
  }

  *a2 = 0;
  v6 = *(v4 + 56);
  if (!v6 || CFDictionaryGetCount(v6) < 1)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v7 = FigCFDictionaryCopyArrayOfKeys();
  if (!v7)
  {
    persistentStore_CopyStreamIDs_cold_3(&v10);
    goto LABEL_19;
  }

  v8 = 0;
  *a2 = v7;
LABEL_11:
  FigReadWriteLockUnlockForRead();
  return v8;
}

uint64_t persistentStore_CopyMasterPlaylist(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, CMBlockBufferRef *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v26 = 0;
  theDict = 0;
  v12 = FigCFEqual();
  v13 = FigCFEqual();
  if (!DerivedStorage)
  {
    persistentStore_CopyMasterPlaylist_cold_5(&v28);
    v24 = v28;
    goto LABEL_31;
  }

  v14 = v13;
  v15 = FigReadWriteLockLockForRead();
  if (v15)
  {
LABEL_34:
    v24 = v15;
    goto LABEL_29;
  }

  if (*DerivedStorage)
  {
    persistentStore_CopyMasterPlaylist_cold_1(&v28);
  }

  else if (a2)
  {
    if (v12 | v14)
    {
      copyDataIDDictionaryFilteredByCategoryIndexedByAccessKeyWork(DerivedStorage, @"Playlist", @"DataItemDescriptorRole", &theDict);
      v16 = theDict;
      if (theDict)
      {
        if (v12)
        {
          Value = CFDictionaryGetValue(theDict, @"Master");
          if (!v14)
          {
            goto LABEL_12;
          }
        }

        else
        {
          Value = 0;
          if (!v14)
          {
LABEL_12:
            v15 = copyDataItemWork(DerivedStorage, Value, &v26, a6);
            if (!v15)
            {
              v18 = CFDictionaryGetValue(v26, @"DataItemDescriptorPropertyListDescriptor");
              v19 = CFDictionaryGetValue(v26, @"DataItemDescriptorName");
              v20 = CFDictionaryGetValue(v26, @"DataItemFileName");
              if (a5)
              {
                if (v18)
                {
                  v21 = CFRetain(v18);
                }

                else
                {
                  v21 = 0;
                }

                *a5 = v21;
              }

              if (a3)
              {
                if (v19)
                {
                  v22 = CFRetain(v19);
                }

                else
                {
                  v22 = 0;
                }

                *a3 = v22;
              }

              if (a4)
              {
                if (v20)
                {
                  v23 = CFRetain(v20);
                }

                else
                {
                  v23 = 0;
                }

                v24 = 0;
                *a4 = v23;
              }

              else
              {
                v24 = 0;
              }

              goto LABEL_29;
            }

            goto LABEL_34;
          }
        }

        Value = CFDictionaryGetValue(v16, @"AvailableOfflineMaster");
        goto LABEL_12;
      }

      persistentStore_CopyMasterPlaylist_cold_2(&v28);
    }

    else
    {
      persistentStore_CopyMasterPlaylist_cold_3(&v28);
    }
  }

  else
  {
    persistentStore_CopyMasterPlaylist_cold_4(&v28);
  }

  v24 = v28;
LABEL_29:
  FigReadWriteLockUnlockForRead();
  if (theDict)
  {
    CFRelease(theDict);
  }

LABEL_31:
  if (v26)
  {
    CFRelease(v26);
  }

  return v24;
}

uint64_t persistentStore_IsStreamComplete(uint64_t a1, const void *a2, _BYTE *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    persistentStore_IsStreamComplete_cold_4(&v10);
    return v10;
  }

  if (!a3)
  {
    persistentStore_IsStreamComplete_cold_3(&v10);
    return v10;
  }

  v6 = DerivedStorage;
  v7 = FigReadWriteLockLockForRead();
  if (v7)
  {
    v8 = v7;
    goto LABEL_7;
  }

  if (*v6)
  {
    persistentStore_IsStreamComplete_cold_1(&v10);
LABEL_15:
    v8 = v10;
    goto LABEL_7;
  }

  if (!CFDictionaryGetValue(*(v6 + 56), a2))
  {
    persistentStore_IsStreamComplete_cold_2(&v10);
    goto LABEL_15;
  }

  FigCFDictionaryGetBooleanIfPresent();
  v8 = 0;
  *a3 = 0;
LABEL_7:
  FigReadWriteLockUnlockForRead();
  return v8;
}

uint64_t persistentStore_CopyNetworkURLForStreamID(uint64_t a1, const void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    persistentStore_CopyNetworkURLForStreamID_cold_4(&v12);
    return v12;
  }

  if (!a3)
  {
    persistentStore_CopyNetworkURLForStreamID_cold_3(&v12);
    return v12;
  }

  v6 = DerivedStorage;
  v7 = FigReadWriteLockLockForRead();
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    if (*v6)
    {
      persistentStore_CopyNetworkURLForStreamID_cold_1(&v12);
    }

    else
    {
      Value = CFDictionaryGetValue(*(v6 + 56), a2);
      if (Value)
      {
        v9 = CFDictionaryGetValue(Value, @"StreamInformationNetworkURL");
        if (v9)
        {
          v9 = CFRetain(v9);
        }

        v10 = 0;
        *a3 = v9;
        goto LABEL_9;
      }

      persistentStore_CopyNetworkURLForStreamID_cold_2(&v12);
    }

    v10 = v12;
  }

LABEL_9:
  FigReadWriteLockUnlockForRead();
  return v10;
}

uint64_t persistentStore_CopyUniqueTagForStreamID(uint64_t a1, const void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    persistentStore_CopyUniqueTagForStreamID_cold_4(&v12);
    return v12;
  }

  if (!a3)
  {
    persistentStore_CopyUniqueTagForStreamID_cold_3(&v12);
    return v12;
  }

  v6 = DerivedStorage;
  v7 = FigReadWriteLockLockForRead();
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    if (*v6)
    {
      persistentStore_CopyUniqueTagForStreamID_cold_1(&v12);
    }

    else
    {
      Value = CFDictionaryGetValue(*(v6 + 56), a2);
      if (Value)
      {
        v9 = CFDictionaryGetValue(Value, @"StreamInformationUniqueTag");
        if (v9)
        {
          v9 = CFRetain(v9);
        }

        v10 = 0;
        *a3 = v9;
        goto LABEL_9;
      }

      persistentStore_CopyUniqueTagForStreamID_cold_2(&v12);
    }

    v10 = v12;
  }

LABEL_9:
  FigReadWriteLockUnlockForRead();
  return v10;
}

uint64_t persistentStore_CopyDataItem(uint64_t a1, const void *a2, __CFDictionary **a3, CMBlockBufferRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    persistentStore_CopyDataItem_cold_2(&v13);
    return v13;
  }

  v8 = DerivedStorage;
  v9 = FigReadWriteLockLockForRead();
  if (!v9)
  {
    if (*v8)
    {
      persistentStore_CopyDataItem_cold_1(&v12);
      v10 = v12;
      goto LABEL_6;
    }

    v9 = copyDataItemWork(v8, a2, a3, a4);
  }

  v10 = v9;
LABEL_6:
  FigReadWriteLockUnlockForRead();
  return v10;
}

uint64_t persistentStore_CopyDataCategories(uint64_t a1, uint64_t *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (a2)
    {
      v4 = DerivedStorage;
      v5 = FigReadWriteLockLockForRead();
      if (v5)
      {
        v6 = v5;
      }

      else if (*v4)
      {
        persistentStore_CopyDataCategories_cold_1(&v8);
        v6 = v8;
      }

      else
      {
        v6 = 0;
        *a2 = FigCFDictionaryCopyArrayOfKeys();
      }

      FigReadWriteLockUnlockForRead();
    }

    else
    {
      persistentStore_CopyDataCategories_cold_2(&v9);
      return v9;
    }
  }

  else
  {
    persistentStore_CopyDataCategories_cold_3(&v10);
    return v10;
  }

  return v6;
}

uint64_t persistentStore_CopyDataIDDictionaryFilteredByCategoryIndexedByAccessKey(uint64_t a1, __CFString *a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (a4)
    {
      v8 = DerivedStorage;
      v9 = FigReadWriteLockLockForRead();
      if (v9)
      {
        v10 = v9;
      }

      else if (*v8)
      {
        persistentStore_CopyDataIDDictionaryFilteredByCategoryIndexedByAccessKey_cold_1(&v12);
        v10 = v12;
      }

      else
      {
        copyDataIDDictionaryFilteredByCategoryIndexedByAccessKeyWork(v8, a2, a3, a4);
        v10 = 0;
      }

      FigReadWriteLockUnlockForRead();
    }

    else
    {
      persistentStore_CopyDataIDDictionaryFilteredByCategoryIndexedByAccessKey_cold_2(&v13);
      return v13;
    }
  }

  else
  {
    persistentStore_CopyDataIDDictionaryFilteredByCategoryIndexedByAccessKey_cold_3(&v14);
    return v14;
  }

  return v10;
}

uint64_t persistentStore_CreateStreamOptions(uint64_t a1, __CFDictionary **a2, const __CFDictionary *a3)
{
  if (a2)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    if (a3)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(AllocatorForMedia, 0, a3);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v8 = MutableCopy;
    if (MutableCopy)
    {
      v9 = *(a1 + 144);
      if (v9)
      {
        CFDictionarySetValue(MutableCopy, @"StreamInfoClientAuditToken", v9);
      }

      v10 = *(a1 + 152);
      if (v10)
      {
        CFDictionarySetValue(v8, @"StreamInfoClientBundleIdentifier", v10);
      }

      if (*(a1 + 136))
      {
        CFDictionarySetValue(v8, @"StreamInfoDoNotBlockOnLock", *MEMORY[0x1E695E4D0]);
      }

      persistentStore_ensureMemoryPool(a1);
      if (v11)
      {
        v12 = v11;
        CFRelease(v8);
      }

      else
      {
        CFDictionarySetValue(v8, @"StreamInfoMemoryPool", *(a1 + 192));
        if (!CFDictionaryGetCount(v8))
        {
          CFRelease(v8);
          v8 = 0;
        }

        v12 = 0;
        *a2 = v8;
      }
    }

    else
    {
      persistentStore_CreateStreamOptions_cold_1(&v14);
      return v14;
    }
  }

  else
  {
    persistentStore_CreateStreamOptions_cold_2(&v15);
    return v15;
  }

  return v12;
}

uint64_t removeDataItem(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(DerivedStorage + 88), a2);
  if (!Value)
  {
    removeDataItem_cold_1(v25);
    return v25[0];
  }

  v6 = Value;
  CFRetain(Value);
  v7 = CFDictionaryGetValue(v6, @"DataItemDescriptorCategory");
  v8 = CFDictionaryGetValue(*(DerivedStorage + 96), v7);
  CFDictionaryRemoveValue(v8, a2);
  CFDictionaryRemoveValue(*(DerivedStorage + 88), a2);
  v9 = *(DerivedStorage + 48);
  FigXMLNodeGetTag(v9);
  v10 = FigCFEqual();
  if (v9 && v10 && (v11 = FigXMLNodeGetChild(v9, @"DataItems")) != 0)
  {
    v12 = v11;
    if (FigXMLNodeGetCountOfChildren(v11) >= 1)
    {
      v13 = 0;
      do
      {
        ChildAtIndex = FigXMLNodeGetChildAtIndex(v12, v13);
        FigXMLNodeGetTag(ChildAtIndex);
        if (FigCFEqual())
        {
          Child = FigXMLNodeGetChild(ChildAtIndex, @"ID");
          if (Child)
          {
            if (FigXMLNodeGetContentAsCFString(Child) && FigCFEqual())
            {
              break;
            }
          }
        }

        ++v13;
      }

      while (v13 < FigXMLNodeGetCountOfChildren(v12));
      v23 = ChildAtIndex;
      if (ChildAtIndex)
      {
        FigXMLNodeRemoveAndClearChild(v12, &v23);
      }
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v24, v25[1]);
    if (v16)
    {
      goto LABEL_22;
    }
  }

  v16 = writeBoot(a1);
  if (!v16)
  {
    v17 = CFDictionaryGetValue(v6, @"DataItemURL");
    v18 = CFDictionaryGetValue(v6, @"DataItemDescriptorURL");
    v19 = v18;
    if (v17)
    {
      v20 = FigFileDeleteRecursive();
      if (v20 == -17913)
      {
        goto LABEL_26;
      }

      v21 = v20;
      if (v20 || !v19)
      {
        goto LABEL_24;
      }
    }

    else if (!v18)
    {
      v21 = 0;
      goto LABEL_24;
    }

    v16 = FigFileDeleteRecursive();
    if (v16 != -17913)
    {
      goto LABEL_22;
    }

LABEL_26:
    FigBytePumpGetFigBaseObject();
    v21 = 4294949383;
    goto LABEL_24;
  }

LABEL_22:
  v21 = v16;
LABEL_24:
  CFRelease(v6);
  return v21;
}

void retrieveDataIDsForKey(const void *a1, CFDictionaryRef theDict, uint64_t a3)
{
  Value = CFDictionaryGetValue(theDict, *(a3 + 8));
  if (Value)
  {
    v6 = Value;
    v7 = *a3;

    CFDictionarySetValue(v7, v6, a1);
  }
}

CFIndex reportIfError(__CFError *a1)
{
  if (!a1)
  {
    return 0;
  }

  Code = CFErrorGetCode(a1);
  v3 = CFErrorCopyFailureReason(a1);
  if (v3)
  {
    CFRelease(v3);
  }

  return Code;
}

const void *xmlFindStreamNode(uint64_t a1, uint64_t a2)
{
  StreamList = xmlGetStreamList(a1);
  if (!StreamList)
  {
    return 0;
  }

  v3 = StreamList;
  if (FigXMLNodeGetCountOfChildren(StreamList) < 1)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    ChildAtIndex = FigXMLNodeGetChildAtIndex(v3, v4);
    FigXMLNodeGetAttribute(ChildAtIndex, @"ID");
    if (FigCFEqual())
    {
      break;
    }

    ++v4;
  }

  while (v4 < FigXMLNodeGetCountOfChildren(v3));
  return ChildAtIndex;
}

CFStringRef *xmlGetStreamList(uint64_t a1)
{
  FigXMLNodeGetTag(a1);
  v2 = FigCFEqual();
  if (!a1 || !v2)
  {
    return 0;
  }

  return FigXMLNodeGetChild(a1, @"Streams");
}

uint64_t xmlRemoveStream(uint64_t a1, uint64_t a2)
{
  StreamList = xmlGetStreamList(a1);
  if (StreamList)
  {
    v5 = StreamList;
    StreamNode = xmlFindStreamNode(a1, a2);
    if (StreamNode)
    {
      FigXMLNodeRemoveAndClearChild(v5, &StreamNode);
      return 0;
    }

    else
    {
      xmlRemoveStream_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    xmlRemoveStream_cold_2(&StreamNode);
    return StreamNode;
  }
}

uint64_t addStreamToStreamList(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5, int a6, const void *a7)
{
  v12 = a2;
  v13 = a1;
  Value = CFDictionaryGetValue(*(a1 + 56), a2);
  if (Value && (v15 = CFRetain(Value)) != 0)
  {
    v16 = v15;
    AllocatorForMedia = FigGetAllocatorForMedia();
    MutableCopy = CFDictionaryCreateMutableCopy(AllocatorForMedia, 0, v16);
    v19 = 0;
  }

  else
  {
    v20 = FigGetAllocatorForMedia();
    MutableCopy = CFDictionaryCreateMutable(v20, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v16 = 0;
    v19 = 1;
  }

  if (!MutableCopy)
  {
    addStreamToStreamList_cold_1(&v35);
    v31 = v35;
    if (v19)
    {
      return v31;
    }

    goto LABEL_22;
  }

  if (FigCFDictionaryGetValue())
  {
    v33 = v13;
    v34 = 0;
    v21 = v12;
    v22 = a4;
    v23 = a5;
    v24 = a7;
    v25 = a6;
    v26 = v19;
    FigHLSPersistentStreamInfoGetFigBaseObject();
    v28 = v27;
    v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v29 && v29(v28, &stru_1F0B1AFB8, 0, &v34) == -12785)
    {
      CFDictionaryRemoveValue(MutableCopy, @"StreamInformationRef");
    }

    v19 = v26;
    a6 = v25;
    a7 = v24;
    a5 = v23;
    a4 = v22;
    v12 = v21;
    v13 = v33;
  }

  if (a3)
  {
    CFDictionarySetValue(MutableCopy, @"StreamInformationURL", a3);
  }

  v30 = MEMORY[0x1E695E4D0];
  if (a6 != 1)
  {
    v30 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(MutableCopy, @"StreamInformationComplete", *v30);
  if (a4)
  {
    CFDictionarySetValue(MutableCopy, @"StreamInformationNetworkURL", a4);
  }

  if (a5)
  {
    CFDictionarySetValue(MutableCopy, @"StreamInformationUniqueTag", a5);
  }

  if (a7)
  {
    CFDictionarySetValue(MutableCopy, @"StreamInformationRef", a7);
  }

  CFDictionarySetValue(*(v13 + 56), v12, MutableCopy);
  CFRelease(MutableCopy);
  v31 = 0;
  if ((v19 & 1) == 0)
  {
LABEL_22:
    CFRelease(v16);
  }

  return v31;
}

uint64_t primeInterstitialAssetFolder(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 200))
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    *(DerivedStorage + 200) = CFURLCreateCopyAppendingPathComponent(AllocatorForMedia, *(DerivedStorage + 8), @"InterstitialAssets", 1u);
  }

  if (FigCFURLDoesDirectoryExist())
  {
    return 0;
  }

  v4 = *(DerivedStorage + 200);

  return makeDirectoryAtURL(v4);
}

uint64_t OUTLINED_FUNCTION_13_46()
{
  v2 = *(v0 + 48);

  return FigXMLNodeGetTag(v2);
}

uint64_t FigPlayerInterstitialPreloadeCreateFromDictionary(const __CFDictionary *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  value = 0;
  if (!a1)
  {
    FigPlayerInterstitialPreloadeCreateFromDictionary_cold_9(0, a2, a3, a4, a5, a6, a7, a8, v24, value, SHIDWORD(value), SLODWORD(at));
    return 0;
  }

  if (!a2)
  {
    FigPlayerInterstitialPreloadeCreateFromDictionary_cold_8(a1, 0, a3, a4, a5, a6, a7, a8, v24, value, SHIDWORD(value), SLODWORD(at));
    return 0;
  }

  v10 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&FigPlayerInterstitialPreloadGetTypeID_sFigPlayerInterstitialPreloadRegisterOnce, figPlayerInterstitialPreload_initOnce);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigPlayerInterstitialPreloadeCreateFromDictionary_cold_7(&at);
    return LODWORD(at);
  }

  v12 = Instance;
  ValueIfPresent = CFDictionaryGetValueIfPresent(a1, @"identifier", (Instance + 16));
  if (!ValueIfPresent)
  {
    FigPlayerInterstitialPreloadeCreateFromDictionary_cold_6(ValueIfPresent, v14, v15, v16, v17, v18, v19, v20, v24, value, SHIDWORD(value), SLODWORD(at));
    return 0;
  }

  v21 = *(v12 + 16);
  if (v21)
  {
    CFRetain(v21);
  }

  at = 0.0;
  if (!FigCFDictionaryGetDoubleIfPresent())
  {
    FigPlayerInterstitialPreloadeCreateFromDictionary_cold_5();
    return 0;
  }

  *(v12 + 24) = CFDateCreate(v10, at);
  CFDictionaryGetValueIfPresent(a1, @"URL", &value);
  if (!value)
  {
    FigPlayerInterstitialPreloadeCreateFromDictionary_cold_4(&v27);
    return v27;
  }

  *(v12 + 40) = CFURLCreateWithString(v10, value, 0);
  if (!CFDictionaryGetValueIfPresent(a1, @"TargetID", (v12 + 48)))
  {
    FigPlayerInterstitialPreloadeCreateFromDictionary_cold_3();
    return 0;
  }

  v22 = *(v12 + 48);
  if (v22)
  {
    CFRetain(v22);
  }

  if (!FigCFDictionaryGetDoubleIfPresent())
  {
    FigPlayerInterstitialPreloadeCreateFromDictionary_cold_2();
    return 0;
  }

  if (!FigCFDictionaryGetDoubleIfPresent())
  {
    FigPlayerInterstitialPreloadeCreateFromDictionary_cold_1();
    return 0;
  }

  if (FigCFDictionaryGetDoubleIfPresent())
  {
    *(v12 + 72) = CFDateCreate(v10, at);
  }

  if (FigCFDictionaryGetDoubleIfPresent())
  {
    *(v12 + 80) = CFDateCreate(v10, at);
  }

  result = 0;
  *a2 = v12;
  return result;
}

__CFDictionary *FigPlayerInterstitialPreloadCopyAsDictionary(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"identifier", *(a1 + 16));
    if (*(a1 + 24))
    {
      MEMORY[0x19A8CCD90]();
      FigCFDictionarySetDouble();
    }

    FigCFDictionarySetDouble();
    FigCFDictionarySetDouble();
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = CFURLCopyAbsoluteURL(v4);
      if (v5)
      {
        v6 = v5;
        v7 = CFURLGetString(v5);
        CFDictionarySetValue(v3, @"URL", v7);
        CFRelease(v6);
      }
    }

    CFDictionarySetValue(v3, @"TargetID", *(a1 + 48));
    if (*(a1 + 72))
    {
      MEMORY[0x19A8CCD90]();
      FigCFDictionarySetDouble();
    }

    if (*(a1 + 80))
    {
      MEMORY[0x19A8CCD90]();
      FigCFDictionarySetDouble();
    }
  }

  return v3;
}

CFTypeRef FigPlayerInterstitialPreloadCopyIdentifier(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

CFTypeRef FigPlayerInterstitialPreloadCopyTargetID(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

CFTypeRef FigPlayerInterstitialPreloadCopyStartDate(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

double FigPlayerInterstitialPreloadGetTriggerOffset(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 64);
  FigSimpleMutexUnlock();
  return v2;
}

CFTypeRef FigPlayerInterstitialPreloadCopyURL(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

CFTypeRef FigPlayerInterstitialPreloadCopyEffectiveStartDate(void *a1)
{
  FigSimpleMutexLock();
  v2 = a1[9];
  if (v2 || (v2 = a1[3]) != 0)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

void FigPlayerInterstitialPreloadSetEffectiveStartDate(uint64_t a1, const void *a2)
{
  if (a2)
  {
    v4 = MEMORY[0x19A8CCD90](a2);
    v5 = MEMORY[0x19A8CCD90](*(a1 + 24));
    if (v4 < v5 || v4 >= v5 + *(a1 + 32))
    {
      return;
    }
  }

  else
  {
    MEMORY[0x19A8CCD90](*(a1 + 24));
  }

  FigSimpleMutexLock();
  v7 = *(a1 + 72);
  *(a1 + 72) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  figPlayerInterstitialPreload_recalculateTriggerOffset(a1, 0);

  FigSimpleMutexUnlock();
}

void figPlayerInterstitialPreload_recalculateTriggerOffset(uint64_t a1, int a2)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    v4 = *(a1 + 24);
  }

  v5 = MEMORY[0x19A8CCD90](v4);
  v6 = figPlayerInterstitialPreload_effectiveEndAbsTime(a1);
  if (a2)
  {
    v7 = v6 - v5;
  }

  else
  {
    v7 = v6 - v5;
    if (*(a1 + 64) <= v7)
    {
      return;
    }
  }

  bytes = 0;
  SecRandomCopyBytes(*MEMORY[0x1E697B308], 2uLL, &bytes);
  LOWORD(v8) = bytes;
  *(a1 + 64) = v7 * v8 / 65535.0;
}

CFDateRef FigPlayerInterstitialPreloadCopyEffectiveEndDate(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *MEMORY[0x1E695E480];
  v3 = figPlayerInterstitialPreload_effectiveEndAbsTime(a1);
  v4 = CFDateCreate(v2, v3);
  FigSimpleMutexUnlock();
  return v4;
}

double figPlayerInterstitialPreload_effectiveEndAbsTime(uint64_t a1)
{
  if (*(a1 + 80))
  {

    JUMPOUT(0x19A8CCD90);
  }

  return MEMORY[0x19A8CCD90](*(a1 + 24)) + *(a1 + 32);
}

uint64_t FigPlayerInterstitialPreloadSetEffectiveEndDate(uint64_t a1, const void *a2)
{
  if (a2)
  {
    v4 = MEMORY[0x19A8CCD90](a2);
  }

  else
  {
    v4 = 0.0;
  }

  result = MEMORY[0x19A8CCD90](*(a1 + 24));
  if (!a2 || v4 > v6)
  {
    if (v4 >= v6 + *(a1 + 32))
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    FigSimpleMutexLock();
    v8 = *(a1 + 80);
    *(a1 + 80) = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    figPlayerInterstitialPreload_recalculateTriggerOffset(a1, 0);

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata(const __CFArray *a1, CFMutableArrayRef *a2)
{
  v3 = a1;
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v5 = Count;
    Mutable = 0;
    v7 = 0;
    v8 = @"TaggedRangeMetadataKey_Class";
    allocator = *MEMORY[0x1E695E480];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v7);
      CFDictionaryGetValue(ValueAtIndex, v8);
      fpip_GetFirstMetadataValueForKey(ValueAtIndex, @"X-TARGET-CLASS");
      if (FigCFEqual() && FigCFEqual())
      {
        Value = CFDictionaryGetValue(ValueAtIndex, @"TaggedRangeMetadataKey_ID");
        if (!Value || (v11 = Value, TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(v11)))
        {
          FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata_cold_8(&v39);
          goto LABEL_39;
        }

        FirstMetadataValueForKey = fpip_GetFirstMetadataValueForKey(ValueAtIndex, @"X-TARGET-ID");
        if (!FirstMetadataValueForKey || (v14 = FirstMetadataValueForKey, v15 = CFStringGetTypeID(), v15 != CFGetTypeID(v14)))
        {
          FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata_cold_7(&v39);
LABEL_39:
          v33 = v39;
LABEL_44:
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          return v33;
        }

        theArray = Mutable;
        v16 = v5;
        v17 = v3;
        v18 = v8;
        v19 = fpip_GetFirstMetadataValueForKey(ValueAtIndex, @"X-URI");
        if (!v19 || (v20 = v19, v21 = CFStringGetTypeID(), v21 != CFGetTypeID(v20)))
        {
          FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata_cold_6(&v39);
          goto LABEL_43;
        }

        v22 = CFURLCreateWithString(allocator, v20, 0);
        if (!v22)
        {
          FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata_cold_5(&v39);
          goto LABEL_43;
        }

        v23 = v22;
        v24 = CFDictionaryGetValue(ValueAtIndex, @"TaggedRangeMetadataKey_StartDate");
        if (!v24 || (v25 = v24, v26 = CFDateGetTypeID(), v26 != CFGetTypeID(v25)))
        {
          FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata_cold_4(&v39);
          goto LABEL_43;
        }

        if (FigCFDictionaryGetDoubleIfPresent())
        {
          FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata_cold_1(&v39);
LABEL_43:
          v33 = v39;
          Mutable = theArray;
          goto LABEL_44;
        }

        v27 = CFDictionaryGetValue(ValueAtIndex, @"TaggedRangeMetadataKey_EndDate");
        if (!v27 || (v28 = v27, v29 = CFDateGetTypeID(), v29 != CFGetTypeID(v28)) || (v30 = MEMORY[0x19A8CCD90](v28), v31 = v30 - MEMORY[0x19A8CCD90](v25), v31 <= 0.0))
        {
          FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata_cold_3(&v39);
          goto LABEL_43;
        }

        MEMORY[0x19A8D3660](&FigPlayerInterstitialPreloadGetTypeID_sFigPlayerInterstitialPreloadRegisterOnce, figPlayerInterstitialPreload_initOnce);
        Instance = _CFRuntimeCreateInstance();
        if (Instance)
        {
          *(Instance + 56) = FigSimpleMutexCreate();
          *(Instance + 16) = CFRetain(v11);
          *(Instance + 24) = CFRetain(v25);
          *(Instance + 32) = v31;
          *(Instance + 40) = CFRetain(v23);
          *(Instance + 48) = CFRetain(v14);
          figPlayerInterstitialPreload_recalculateTriggerOffset(Instance, 1);
          CFRelease(v23);
        }

        else if (!FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata_cold_2(v23, &v39))
        {
          goto LABEL_43;
        }

        v8 = v18;
        Mutable = theArray;
        if (!theArray)
        {
          Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
          if (!Mutable)
          {
            if (Instance)
            {
              CFRelease(Instance);
            }

            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, a2, @"TaggedRangeMetadataKey_EndDate");
            return v35;
          }
        }

        CFArrayAppendValue(Mutable, Instance);
        if (Instance)
        {
          CFRelease(Instance);
        }

        v3 = v17;
        v5 = v16;
      }

      if (v5 == ++v7)
      {
        goto LABEL_31;
      }
    }
  }

  Mutable = 0;
LABEL_31:
  v33 = 0;
  *a2 = Mutable;
  return v33;
}

const __CFArray *fpip_GetFirstMetadataValueForKey(const __CFDictionary *a1, uint64_t a2)
{
  result = CFDictionaryGetValue(a1, @"TaggedRangeMetadataKey_MetadataArray");
  if (result)
  {
    v3 = result;
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v5 = Count;
      v6 = 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v6 - 1);
        CFDictionaryGetValue(ValueAtIndex, @"key");
        if (FigCFEqual())
        {
          result = CFDictionaryGetValue(ValueAtIndex, @"value");
        }

        else
        {
          result = 0;
        }

        if (v6 >= v5)
        {
          break;
        }

        ++v6;
      }

      while (!result);
    }
  }

  return result;
}

uint64_t figPlayerInterstitialPreload_initOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigPlayerInterstitialPreloadTypeID = result;
  return result;
}

double figPlayerInterstitialPreload_init(uint64_t a1)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t figPlayerInterstitialPreload_finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
    a1[6] = 0;
  }

  v6 = a1[9];
  if (v6)
  {
    CFRelease(v6);
    a1[9] = 0;
  }

  v7 = a1[10];
  if (v7)
  {
    CFRelease(v7);
    a1[10] = 0;
  }

  return FigSimpleMutexDestroy();
}

BOOL figPlayerInterstitialPreload_equal(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = CFRetain(v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = CFRetain(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = FigCFEqual();
  if (v4)
  {
    CFRelease(v4);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v7 != 0;
}

void figNSURLSessionAssertionFinalize(void *a1)
{
  [sFigNSURLSessionRegistry releaseSession:a1];
}

void sub_196798F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _FigHTTPRequestSessionNoteNativeConnectionForNSURLSession(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___FigHTTPRequestSessionNoteNativeConnectionForNSURLSession_block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = a2;
  v5[5] = DerivedStorage;
  dispatch_sync(v4, v5);
}

uint64_t _FigHTTPRequestSessionCreateForNSURLSession(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  if (figNSURLSessionRegistryEnsureGlobalInit_sFigNSURLSessionInit != -1)
  {
    _FigHTTPRequestSessionCreateForNSURLSession_cold_1();
  }

  if (sFigNSURLSessionRegistry)
  {
    if (FigHTTPRequestSessionNSGetClassID_sRegisterFigHTTPRequestSessionNSTypeOnce != -1)
    {
      _FigHTTPRequestSessionCreateForNSURLSession_cold_2();
    }

    v4 = CMDerivedObjectCreate();
    _FigHTTPRequestSessionCreateForNSURLSession_cold_7(v4, &v6);
  }

  else
  {
    _FigHTTPRequestSessionCreateForNSURLSession_cold_8(&v6);
  }

  return v6;
}

FigNSURLSessionRegistry *__figNSURLSessionRegistryEnsureGlobalInit_block_invoke()
{
  result = objc_alloc_init(FigNSURLSessionRegistry);
  sFigNSURLSessionRegistry = result;
  return result;
}

void figHTTPRequestSessionNSFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 40);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 40) = 0;
  }

  FigTestSupportUnregisterNSHTTPRequestSession(a1);
  v5 = *(DerivedStorage + 56);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(DerivedStorage + 32);

  dispatch_release(v6);
}

uint64_t figHTTPRequestSessionNSCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"FHRSP_MultiPathServiceType"))
  {
    return 4294954512;
  }

  v7 = *(DerivedStorage + 24);
  if (v7)
  {
    v7 = CFRetain(v7);
  }

  *a4 = v7;
  if (*(DerivedStorage + 24))
  {
    return 0;
  }

  else
  {
    return 4294954513;
  }
}

uint64_t figHTTPRequestSessionNSSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __figHTTPRequestSessionNSSetProperty_block_invoke;
  v9[3] = &unk_1E748B8C8;
  v9[6] = DerivedStorage;
  v9[7] = a3;
  v9[4] = &v10;
  v9[5] = a2;
  dispatch_sync(v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_196799A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __figHTTPRequestSessionNSSetProperty_block_invoke(uint64_t a1)
{
  if (CFEqual(*(a1 + 40), @"FHRSP_EnablePingReporting"))
  {
    *(*(a1 + 48) + 48) = FigCFEqual();
  }

  else if (CFEqual(*(a1 + 40), @"FHRSP_CMCDHeaderVendor"))
  {
    v3 = *(a1 + 48);
    v2 = *(a1 + 56);
    v4 = *(v3 + 56);
    *(v3 + 56) = v2;
    if (v2)
    {
      CFRetain(v2);
    }

    if (v4)
    {

      CFRelease(v4);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -12784;
  }
}

uint64_t figHTTPRequestSessionNSCreateHTTPRequest(uint64_t a1, const void *a2, uint64_t a3, const void *a4, const void *a5, CFTypeRef a6, void *a7, unsigned int a8, _OWORD *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, CFTypeRef *a15, _DWORD *a16)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v24 = DerivedStorage;
  if (*(DerivedStorage + 48))
  {
    v25 = a8 | 0x2000;
  }

  else
  {
    v25 = a8;
  }

  v26 = *(DerivedStorage + 56);
  if (!v26)
  {
    MutableCopy = 0;
LABEL_19:
    v33 = FigTestSupportHTTPRequestUseFakeFromDisk(a7);
    v34 = v24[1];
    if (v33)
    {
      LODWORD(v37) = v25;
      FakeFromDisk = FigTestSupportHTTPRequestCreateFakeFromDisk(a2, a3, a1, a4, a5, a6, [v34 dispatchQueue], a7, v37, a10, a11, a12, a13, a14, a15, a16);
    }

    else
    {
      FakeFromDisk = _FigHTTPRequestCreateWithNSURLSession(a2, a3, a4, a5, a6, a1, [v34 session], *v24, objc_msgSend(v24[1], "dataDelegate"), objc_msgSend(v24[1], "dispatchQueue"), a7, v25, a10, a11, a12, a13, a14, a15, a16);
    }

    v32 = FakeFromDisk;
    goto LABEL_23;
  }

  v27 = a9[5];
  v39[4] = a9[4];
  v39[5] = v27;
  v39[6] = a9[6];
  v28 = a9[1];
  v39[0] = *a9;
  v39[1] = v28;
  v29 = a9[3];
  v39[2] = a9[2];
  v39[3] = v29;
  v40[0] = 0;
  v30 = FigCMCDHeaderVendorCopyHeaders(v26, v39, v40);
  if (v30)
  {
    v32 = v30;
    MutableCopy = 0;
    goto LABEL_16;
  }

  if (!FigCFDictionaryGetCount())
  {
    if (a6)
    {
      MutableCopy = CFRetain(a6);
    }

    else
    {
      MutableCopy = 0;
    }

    goto LABEL_15;
  }

  if (!FigCFDictionaryGetCount())
  {
    MutableCopy = v40[0];
    a6 = v40[0];
    goto LABEL_19;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(a2, 0, a6);
  if (MutableCopy)
  {
    FigCFDictionarySetAllValuesFromDictionary();
LABEL_15:
    v32 = 0;
    goto LABEL_16;
  }

  figHTTPRequestSessionNSCreateHTTPRequest_cold_1(v39);
  v32 = LODWORD(v39[0]);
LABEL_16:
  if (v40[0])
  {
    CFRelease(v40[0]);
  }

  a6 = MutableCopy;
  if (!v32)
  {
    goto LABEL_19;
  }

LABEL_23:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v32;
}

uint64_t figHTTPRequestSessionNSSendPingWithPongHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v14 = *(DerivedStorage + 32);
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __figHTTPRequestSessionNSSendPingWithPongHandler_block_invoke;
  v24 = &unk_1E7482510;
  v25 = &v27;
  v26 = DerivedStorage;
  dispatch_sync(v14, &v21);
  if (v28[3])
  {
    v15 = FigTestSupportHTTPRequestUseFakeFromDisk(a3);
    v16 = v28[3];
    if (!v15)
    {
      if (v16 && [v28[3] isValid])
      {
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __figHTTPRequestSessionNativeConnectionSendPingForNSURLSession_block_invoke;
        v31[3] = &unk_1E7494920;
        v31[4] = a5;
        v31[5] = a7;
        v31[6] = a4;
        v31[7] = a6;
        [v16 sendPingWithReceiveHandler:v31];
        v18 = 0;
      }

      else
      {
        v18 = 4294954511;
      }

      goto LABEL_9;
    }

    v17 = FigTestSupportHTTPRequestSessionNativeConnectionSendPingFakeFromDisk(v28[3], a2, a3, a4, a5, a6, a7);
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, v22, v23);
  }

  v18 = v17;
LABEL_9:
  v19 = v28[3];
  if (v19)
  {
    CFRelease(v19);
  }

  _Block_object_dispose(&v27, 8);
  return v18;
}

void sub_196799EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__figHTTPRequestSessionNSSendPingWithPongHandler_block_invoke(void *result)
{
  v1 = result[5];
  if (*(v1 + 48))
  {
    v2 = result;
    result = *(v1 + 40);
    if (result)
    {
      result = CFRetain(result);
    }

    *(*(v2[4] + 8) + 24) = result;
  }

  return result;
}

void __figHTTPRequestSessionNativeConnectionSendPingForNSURLSession_block_invoke(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __figHTTPRequestSessionNativeConnectionSendPingForNSURLSession_block_invoke_2;
  block[3] = &unk_1E74948F8;
  block[4] = a2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = a3;
  dispatch_async(v3, block);
}

uint64_t __figHTTPRequestSessionNativeConnectionSendPingForNSURLSession_block_invoke_2(void *a1, __n128 a2)
{
  v3 = a1[4];
  if (v3)
  {
    v4 = [v3 code];
  }

  else
  {
    v4 = 0;
  }

  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  a2.n128_u64[0] = a1[8];

  return v6(v5, v7, v4, a2);
}

uint64_t __FigHTTPRequestSessionNSGetClassID_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

void FigVideoQueueServerStart(uint64_t a1)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (FigServer_IsMediaparserd())
  {
    v2 = qword_1EAF17828;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 4294951145, "<<<< FigVideoQueueServer >>>>", 605, v1);
  }

  else
  {
    if (FigServer_IsMediaplaybackd())
    {
      v3 = "com.apple.coremedia.mediaplaybackd.videoqueue";
    }

    else
    {
      v3 = "com.apple.coremedia.videoqueue";
    }

    if (FigServer_IsMediaparserd())
    {

      MEMORY[0x1EEDBDA58](v3, 600, figvideoqueue_server, FigVideoQueueRemoteServer_Destroy, &_MergedGlobals_122);
    }

    else
    {
      FigServer_IsMediaplaybackd();
      if (FigServer_IsMediaparserd())
      {
        v4 = 0;
      }

      else
      {
        v4 = FigServer_IsMediaplaybackd() != 0;
      }

      MEMORY[0x1EEDBDA60](v3, 600, v4, &FigVideoQueueServerStart_subsystems, 1, FigVideoQueueRemoteServer_Destroy, 0, &_MergedGlobals_122);
    }
  }
}

uint64_t FigVideoQueueRemoteServer_GetNextPendingNotification(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, vm_address_t *a5, unsigned int *a6)
{
  v16 = 0;
  v17 = 0;
  v9 = videoQueueServerCopyClientFromCommandPort(a1, &v16, &v17);
  if (!v17)
  {
    return v9;
  }

  theString = 0;
  cf = 0;
  theData = 0;
  PendingNotification = FigRPCFetchNextPendingNotification();
  if (PendingNotification)
  {
    v12 = PendingNotification;
  }

  else
  {
    MEMORY[0x19A8D2A70](cf, *MEMORY[0x1E695E480], &theData);
    CFStringGetCString(theString, a4, 512, 0);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (theString)
    {
      CFRelease(theString);
      theString = 0;
    }

    if (theData && CFDataGetLength(theData))
    {
      Length = CFDataGetLength(theData);
      *a6 = Length;
      v12 = vm_allocate(*MEMORY[0x1E69E9A60], a5, Length, 1560281089);
      if (!v12)
      {
        v13 = *a5;
        BytePtr = CFDataGetBytePtr(theData);
        memcpy(v13, BytePtr, *a6);
      }
    }

    else
    {
      v12 = 0;
      *a5 = 0;
      *a6 = 0;
    }
  }

  if (theData)
  {
    CFRelease(theData);
  }

  CFRelease(v17);
  return v12;
}

CFTypeRef videoQueueServer_copySubVideoQueue(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v2 = CFRetain(*DerivedStorage);
  }

  else
  {
    v2 = 0;
  }

  FigSimpleMutexUnlock();
  return v2;
}

void __videoQueueServer_makeWrapperForVideoQueueInternal_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  context = dispatch_get_context(v1);
  dispatch_set_context(v1, 0);
  if (context)
  {

    CFRelease(context);
  }
}

void __videoQueueServer_makeWrapperForVideoQueueInternal_block_invoke_2(uint64_t a1)
{
  cf[22] = *MEMORY[0x1E69E9840];
  if (dispatch_get_context(*(a1 + 32)))
  {
    v1 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v1)
    {
      v2 = v1;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v4 = videoQueueServer_copySubVideoQueue(v2);
      if (v4)
      {
        v5 = v4;
        cf[0] = 0;
        FigVideoQueueGetCMBaseObject();
        v7 = v6;
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v8)
        {
          v9 = v8(v7, @"IsImageQueueBeingServiced", *MEMORY[0x1E695E480], cf);
          v10 = cf[0];
          if (v9)
          {
            v11 = 0;
          }

          else
          {
            v11 = *MEMORY[0x1E695E4C0] == cf[0];
          }

          if (v11)
          {
            if (dword_1EAF17830)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            videoQueueServer_invalidateSubVideoQueue(v2, v5);
            dispatch_source_set_timer(*(DerivedStorage + 96), 0xFFFFFFFFFFFFFFFFLL, 0, 0x1DCD6500uLL);
            FigSimpleMutexLock();
            if (*DerivedStorage)
            {
              CFRelease(*DerivedStorage);
              *DerivedStorage = 0;
            }

            FigSimpleMutexUnlock();
            v10 = cf[0];
          }

          if (v10)
          {
            CFRelease(v10);
          }
        }

        CFRelease(v5);
      }

      else if (DerivedStorage)
      {
        dispatch_source_set_timer(*(DerivedStorage + 96), 0xFFFFFFFFFFFFFFFFLL, 0, 0x1DCD6500uLL);
      }

      CFRelease(v2);
    }
  }
}

void videoQueueServer_invalidateSubVideoQueue(uint64_t a1, uint64_t a2)
{
  values[16] = *MEMORY[0x1E69E9840];
  valuePtr = -12084;
  if (dword_1EAF17830)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *MEMORY[0x1E695E480];
  values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v4 = CFDictionaryCreate(v3, kFigVideoQueueNotificationParameter_OSStatus, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  FigVideoQueueGetCMBaseObject();
  if (v5)
  {
    v6 = v5;
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v7)
    {
      v7(v6);
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (values[0])
  {
    CFRelease(values[0]);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t videoQueueServer_Finalize(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17830)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 8) = 0;
  }

  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 16) = 0;
  }

  if (*DerivedStorage)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  v5 = *(DerivedStorage + 96);
  if (v5)
  {
    dispatch_source_cancel(v5);
    v6 = *(DerivedStorage + 96);
    if (v6)
    {
      dispatch_release(v6);
      *(DerivedStorage + 96) = 0;
    }
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  FigSimpleMutexDestroy();
  v7 = *(DerivedStorage + 32);
  if (v7)
  {
    os_release(v7);
    *(DerivedStorage + 32) = 0;
  }

  if (*(DerivedStorage + 24))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v8 = *(DerivedStorage + 24);
    if (v8)
    {
      CFRelease(v8);
      *(DerivedStorage + 24) = 0;
    }
  }

  v9 = *(DerivedStorage + 40);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 40) = 0;
  }

  v10 = *(DerivedStorage + 48);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 48) = 0;
  }

  FigServer_RememberProcessInfoForAFewSeconds();
  v11 = *(DerivedStorage + 88);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 88) = 0;
  }

  return FigSimpleMutexDestroy();
}

__CFString *videoQueueServer_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = videoQueueServer_copySubVideoQueue(a1);
  CFStringAppendFormat(Mutable, 0, @"videoQueueClientObj %p [%@]", a1, v3);
  if (v3)
  {
    CFRelease(v3);
  }

  return Mutable;
}

void videoQueueServer_mediaServicesProcessDeathNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = videoQueueServer_copySubVideoQueue(a2);
  if (v5)
  {
    v6 = v5;
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();

    CFRelease(v6);
  }
}

void videoQueueServer_appStateChangeListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = videoQueueServer_copySubVideoQueue(a2);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!FigCFEqual())
  {
    goto LABEL_21;
  }

  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AFA50]);
  if (Value)
  {
    valuePtr[0] = 0;
    if (CFNumberGetValue(Value, kCFNumberSInt32Type, valuePtr))
    {
      v10 = valuePtr[0];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  if (dword_1EAF17830)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v10 == 4)
  {
    if (dword_1EAF17830)
    {
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v16 = *(DerivedStorage + 96);
    v14 = dispatch_time(0, 1000000000);
    v13 = v16;
    v15 = 1000000000;
    goto LABEL_20;
  }

  if (v10 != 2)
  {
    v13 = *(DerivedStorage + 96);
    v14 = -1;
    v15 = 0;
LABEL_20:
    dispatch_source_set_timer(v13, v14, v15, 0x1DCD6500uLL);
    goto LABEL_21;
  }

  if (v7)
  {
    videoQueueServer_invalidateSubVideoQueue(a2, v7);
  }

  dispatch_source_set_timer(*(DerivedStorage + 96), 0xFFFFFFFFFFFFFFFFLL, 0, 0x1DCD6500uLL);
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  FigSimpleMutexUnlock();
LABEL_21:
  if (v7)
  {
    CFRelease(v7);
  }
}

dispatch_queue_t __videoQueueServer_getCommonTimerSourceQueue_block_invoke()
{
  result = dispatch_queue_create("com.apple.coremedia.videoqueue.timer", 0);
  qword_1ED4CB920 = result;
  return result;
}

void videoQueueServer_blockDeallocate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    JUMPOUT(0x19A8D6C70);
  }
}

uint64_t OUTLINED_FUNCTION_4_129(uint64_t a1)
{

  return FigMachPortReleaseSendRight_();
}

uint64_t OUTLINED_FUNCTION_8_72(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;

  return videoQueueServerCopyClientFromCommandPort(a1, 0, &a10);
}

uint64_t OUTLINED_FUNCTION_9_65(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;

  return videoQueueServerCopyClientFromCommandPort(a1, 0, &a10);
}

uint64_t OUTLINED_FUNCTION_14_54(CFAllocatorRef blockAllocator, void *a2, size_t dataLength, uint64_t a4, const CMBlockBufferCustomBlockSource *a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{

  return CMBlockBufferCreateWithMemoryBlock(blockAllocator, a2, dataLength, blockAllocator, a5, 0, dataLength, 0, a9);
}

uint64_t FigFastStartRemakerCreateWithURLs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef *a5)
{
  if (!a2)
  {
    FigFastStartRemakerCreateWithURLs_cold_8(&v11);
    return v11;
  }

  if (!FigCFURLIsLocalResource())
  {
    FigFastStartRemakerCreateWithURLs_cold_7(&v11);
    return v11;
  }

  if (!a3)
  {
    FigFastStartRemakerCreateWithURLs_cold_6(&v11);
    return v11;
  }

  if (!FigCFURLIsLocalResource())
  {
    FigFastStartRemakerCreateWithURLs_cold_5(&v11);
    return v11;
  }

  if (FigFileDoesFileExist())
  {
    FigFastStartRemakerCreateWithURLs_cold_1(&v11);
    return v11;
  }

  if (!a5)
  {
    FigFastStartRemakerCreateWithURLs_cold_4(&v11);
    return v11;
  }

  FigRemakerGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    return v7;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CMByteStreamCreateForFileURL())
  {
    FigFastStartRemakerCreateWithURLs_cold_2(&v11);
    return v11;
  }

  if (CMByteStreamCreateForFileURL())
  {
    FigFastStartRemakerCreateWithURLs_cold_3(&v11);
    return v11;
  }

  *DerivedStorage = 0;
  *(DerivedStorage + 40) = 512;
  v9 = 0;
  *(DerivedStorage + 16) = dispatch_queue_create("com.apple.coremedia.faststartremaker", 0);
  *a5 = 0;
  return v9;
}

const void *fastStartRemaker_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v2 = DerivedStorage;
    if (*(DerivedStorage + 8))
    {
      return 0;
    }

    else
    {
      *(DerivedStorage + 8) = 1;
      v4 = *(DerivedStorage + 16);
      if (v4)
      {
        *(v2 + 9) = 1;
        dispatch_sync_f(v4, 0, doNothingDispatchFunction);
        dispatch_release(*(v2 + 16));
        *(v2 + 16) = 0;
      }

      v5 = *(v2 + 32);
      if (v5)
      {
        CFRelease(v5);
        *(v2 + 32) = 0;
      }

      result = *(v2 + 24);
      if (result)
      {
        CFRelease(result);
        result = 0;
        *(v2 + 24) = 0;
      }
    }
  }

  else
  {
    fastStartRemaker_Invalidate_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t fastStartRemaker_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFNumberRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v7 = DerivedStorage, *(DerivedStorage + 8)))
  {
    fastStartRemaker_CopyProperty_cold_3(&v11);
    return v11;
  }

  if (CFEqual(a2, @"Remaker_Progress"))
  {
    valuePtr[0] = 0.0;
    if (*(v7 + 10))
    {
      fastStartRemaker_CopyProperty_cold_2(v7, valuePtr);
    }

    else if (!fastStartRemaker_CopyProperty_cold_1())
    {
      return LODWORD(valuePtr[1]);
    }

    v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, valuePtr);
    result = 0;
    *a4 = v9;
    return result;
  }

  return 4294954512;
}

uint64_t fastStartRemaker_StartOutput(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || *(DerivedStorage + 8))
  {
    fastStartRemaker_StartOutput_cold_2(&v5);
    return v5;
  }

  else if (*(DerivedStorage + 10))
  {
    fastStartRemaker_StartOutput_cold_1(&v4);
    return v4;
  }

  else
  {
    *(DerivedStorage + 10) = 1;
    dispatch_async_f(*(DerivedStorage + 16), a1, writeFirstStartMovieDispatchFunction);
    return 0;
  }
}

void writeFirstStartMovieDispatchFunction(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v2 = DerivedStorage, *(DerivedStorage + 8)))
  {
    if (!writeFirstStartMovieDispatchFunction_cold_19())
    {
      v11 = theBuffer[0];
      goto LABEL_230;
    }

    goto LABEL_239;
  }

  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  *theBuffer = 0u;
  v3 = FigAtomStreamInitWithByteStream();
  if (v3 || (fastStartRemaker_parseChildAtoms(theBuffer, 3, &fastStartRemaker_parseMovieFile_atomDispatch, v2), v3))
  {
LABEL_257:
    v11 = v3;
    goto LABEL_230;
  }

  if (*(v2 + 96))
  {
    if (*(v2 + 104))
    {
      goto LABEL_7;
    }

    writeFirstStartMovieDispatchFunction_cold_1(&blockBufferOut);
  }

  else
  {
    writeFirstStartMovieDispatchFunction_cold_2(&blockBufferOut);
  }

  v11 = blockBufferOut;
  if (blockBufferOut)
  {
    goto LABEL_230;
  }

LABEL_7:
  theBuffer[0] = 0;
  v4 = *(v2 + 88);
  if (!v4)
  {
    goto LABEL_15;
  }

  blockBufferOut = 0;
  if (v4 < 0)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v135, v136, v137);
    if (v3)
    {
      goto LABEL_257;
    }

LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  v5 = *(v2 + 24);
  v6 = *(v2 + 64);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v7)
  {
    v11 = -12782;
    goto LABEL_230;
  }

  v8 = v7(v5, v4, v6, theBuffer, &blockBufferOut);
  if (v8)
  {
    v11 = v8;
    if (theBuffer[0])
    {
      CFRelease(theBuffer[0]);
    }

    goto LABEL_230;
  }

  v9 = theBuffer[0];
  if (theBuffer[0])
  {
    CMBlockBufferGetDataLength(theBuffer[0]);
    appended = CMByteStreamAppendBlockBuffer();
    if (appended)
    {
      v11 = appended;
      goto LABEL_201;
    }
  }

LABEL_16:
  v151 = 0;
  destinationBuffer = 0;
  sourceBytes = 0;
  v12 = *(v2 + 96);
  if (v12 < 0)
  {
    writeFirstStartMovieDispatchFunction_cold_17(theBuffer);
    v31 = 0;
    v32 = 0;
    v11 = theBuffer[0];
    goto LABEL_183;
  }

  v13 = *(v2 + 24);
  v14 = *(v2 + 72);
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v15)
  {
    v31 = 0;
    v32 = 0;
    v11 = -12782;
    goto LABEL_183;
  }

  v138 = v9;
  v16 = v15(v13, v12, v14, &destinationBuffer, &v151);
  if (v16)
  {
LABEL_265:
    v11 = v16;
    goto LABEL_262;
  }

  v17 = CFGetAllocator(*v2);
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  *theBuffer = 0u;
  Mutable = CFArrayCreateMutable(v17, 0, 0);
  if (!Mutable)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v135, v136, v138);
    if (!v16)
    {
      goto LABEL_22;
    }

    goto LABEL_265;
  }

  v19 = FigAtomStreamInitWithBBuf();
  if (v19 || (fastStartRemaker_parseChildAtoms(theBuffer, 2, parseMoovAtomAndCreateTrackAtomInfoArray_atomDispatch, Mutable), v19))
  {
    v11 = v19;
    CFRelease(Mutable);
LABEL_262:
    v31 = 0;
    v32 = 0;
    v9 = v138;
    goto LABEL_183;
  }

LABEL_22:
  Count = CFArrayGetCount(Mutable);
  v21 = destinationBuffer;
  if (!Count)
  {
    v140 = 0;
LABEL_159:
    DataLength = CMBlockBufferGetDataLength(v21);
    if (DataLength == DataLength)
    {
      sourceBytes = bswap32(DataLength);
      v95 = CMBlockBufferReplaceDataBytes(&sourceBytes, destinationBuffer, 0, 4uLL);
      if (v95)
      {
        v11 = v95;
LABEL_273:
        v31 = 0;
        v32 = 0;
        cf = 0;
        v93 = 0;
        v146 = 0;
        v78 = 0;
        goto LABEL_170;
      }

      if (v140)
      {
        theBuffer[0] = 0;
        blockBufferOut = 0;
        if (v140 < 8 || (v140 & 0x8000000000000000) != 0)
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v135, v136, v138);
          v31 = 0;
          if (v134)
          {
            v11 = v134;
            v32 = 0;
            cf = 0;
            v93 = 0;
            v146 = 0;
            v78 = 0;
            goto LABEL_170;
          }
        }

        else
        {
          v96 = CFGetAllocator(*v2);
          v97 = CMBlockBufferCreateWithMemoryBlock(v96, 0, v140, v96, 0, 0, v140, 1u, theBuffer);
          v31 = theBuffer[0];
          if (v97)
          {
            goto LABEL_167;
          }

          v98 = CMBlockBufferFillDataBytes(0, theBuffer[0], 0, 0);
          if (v98)
          {
            v11 = v98;
            v31 = theBuffer[0];
LABEL_271:
            if (v31)
            {
              CFRelease(v31);
            }

            goto LABEL_273;
          }

          blockBufferOut = (bswap32(v140) | 0x6565726600000000);
          v97 = CMBlockBufferReplaceDataBytes(&blockBufferOut, theBuffer[0], 0, 8uLL);
          v31 = theBuffer[0];
          if (v97)
          {
LABEL_167:
            v11 = v97;
            goto LABEL_271;
          }
        }
      }

      else
      {
        v31 = 0;
      }

      cf = 0;
      v93 = 0;
      v146 = 0;
      v78 = 0;
      v11 = 0;
      v32 = v31;
      v31 = destinationBuffer;
      destinationBuffer = 0;
      goto LABEL_170;
    }

    writeFirstStartMovieDispatchFunction_cold_16(theBuffer);
LABEL_243:
    v31 = 0;
    v32 = 0;
    cf = 0;
    v93 = 0;
    v146 = 0;
    v78 = 0;
    v11 = theBuffer[0];
    goto LABEL_170;
  }

  v148 = Count;
  v22 = v2;
  v23 = *(v2 + 40);
  v24 = CFArrayGetCount(Mutable);
  if (v24 < 1)
  {
    v28 = 0;
  }

  else
  {
    v25 = v24;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v26);
      if (*(ValueAtIndex + 22))
      {
        if (v28 >= ValueAtIndex[12])
        {
          v30 = ValueAtIndex[12];
        }

        else
        {
          v30 = v28;
        }

        if (v27)
        {
          v28 = v30;
        }

        else
        {
          v28 = ValueAtIndex[12];
        }

        v27 = 1;
      }

      ++v26;
    }

    while (v25 != v26);
  }

  v144 = v21;
  v33 = 0;
  if (v23 <= 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = v23;
  }

  v35 = v34;
  v142 = v34 - 1;
  v36 = 1;
  v2 = v22;
  do
  {
    v37 = v2;
    v38 = CMBlockBufferGetDataLength(v144);
    v39 = CFArrayGetCount(Mutable);
    if (v39 >= 1)
    {
      v40 = v39;
      for (i = 0; i != v40; ++i)
      {
        v42 = CFArrayGetValueAtIndex(Mutable, i);
        v43 = v42[22];
        if (*(v42 + 64))
        {
          v44 = 8;
        }

        else if (v43)
        {
          if ((*(v42 + 13) + v33) >> 32)
          {
            v44 = 8;
          }

          else
          {
            v44 = 4;
          }
        }

        else
        {
          v44 = 4;
        }

        v38 = v38 - *(v42 + 10) + v44 * v43 + 16;
      }
    }

    v2 = v37;
    v45 = *(v37 + 88) + v38 + 8 * (*(v37 + 11) != 0) + v28 - *(v37 + 80);
    if (v45 % v35)
    {
      v46 = (v35 - v45 % v35);
    }

    else
    {
      v46 = 0;
    }

    if (v46 - 1 <= 6)
    {
      v46 += (v142 - v46 + 8) / v35 * v35;
    }

    v47 = v46 + *(v37 + 88) + v38 + 8 * (*(v37 + 11) != 0) - *(v37 + 80);
    if (v47 == v33)
    {
      goto LABEL_63;
    }

    if (v47 != v47)
    {
      break;
    }

    v33 = v46 + v45 - v28;
    v126 = CFArrayGetCount(Mutable) + 2 <= v36++;
  }

  while (!v126);
  if (!writeFirstStartMovieDispatchFunction_cold_3())
  {
    goto LABEL_243;
  }

  v46 = 0;
  v33 = 0;
LABEL_63:
  v48 = v148;
  v140 = v46;
  if (v148 <= 0)
  {
    v21 = destinationBuffer;
    goto LABEL_159;
  }

  v141 = v33;
  v49 = v33;
  v147 = v37;
  while (1)
  {
    v50 = CFArrayGetValueAtIndex(Mutable, v48 - 1);
    if ((v50[10] & 0x8000000000000000) != 0)
    {
      writeFirstStartMovieDispatchFunction_cold_15(theBuffer);
      goto LABEL_243;
    }

    v51 = v50;
    v143 = v48 - 1;
    v149 = v48;
    v52 = CFGetAllocator(*v2);
    v53 = destinationBuffer;
    v54 = v51[9];
    v55 = v51[10];
    v56 = CMBlockBufferGetDataLength(destinationBuffer);
    theBuffer[0] = 0;
    v161 = 0;
    blockBufferOut = 0;
    if ((v54 & 0x8000000000000000) != 0)
    {
      v92 = 859;
    }

    else
    {
      v57 = v56;
      v58 = CMBlockBufferCreateWithBufferReference(v52, v53, 0, v54, 0, theBuffer);
      if (v58)
      {
        goto LABEL_131;
      }

      v58 = CMBlockBufferCreateWithBufferReference(v52, v53, v54, v55, 0, &blockBufferOut);
      if (v58)
      {
        goto LABEL_131;
      }

      v59 = v55 + v54;
      if ((v55 + v54) >= 0)
      {
        if (v57 == v59)
        {
          v60 = 0;
LABEL_74:
          v2 = v147;
          v61 = theBuffer[0];
          v62 = blockBufferOut;
          goto LABEL_75;
        }

        v58 = CMBlockBufferCreateWithBufferReference(v52, v53, v59, v57 - v59, 0, &v161);
        if (!v58)
        {
          v60 = v161;
          goto LABEL_74;
        }

LABEL_131:
        v11 = v58;
        goto LABEL_140;
      }

      v92 = 870;
    }

    writeFirstStartMovieDispatchFunction_cold_4(v92, &dataPointerOut);
    v11 = dataPointerOut;
LABEL_140:
    v2 = v147;
    if (theBuffer[0])
    {
      CFRelease(theBuffer[0]);
    }

    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }

    if (v161)
    {
      CFRelease(v161);
    }

    v60 = 0;
    v62 = 0;
    v61 = 0;
    v31 = 0;
    v32 = 0;
    cf = 0;
    v93 = 0;
    v146 = 0;
    v78 = 0;
    if (v11)
    {
      goto LABEL_170;
    }

LABEL_75:
    v145 = v60;
    v63 = CFGetAllocator(*v2);
    v64 = *(v51 + 22);
    v65 = *(v51 + 64);
    v66 = v51[13];
    v161 = 0;
    blockBufferOut = 0;
    dataPointerOut = 0;
    theBuffer[0] = 0;
    theBuffer[1] = 0;
    LODWORD(v154) = 0;
    v67 = (v66 + v49) >> 32 == 0;
    v68 = v67;
    if (v67)
    {
      v69 = 4;
    }

    else
    {
      v69 = 8;
    }

    if (!v64)
    {
      v69 = 4;
      v68 = 1;
    }

    if (v65)
    {
      v69 = 8;
      v70 = 0;
    }

    else
    {
      v70 = v68;
    }

    if ((v69 * v64) > -17)
    {
      v71 = (v69 * v64) + 16;
      DataPointer = CMBlockBufferCreateWithMemoryBlock(v63, 0, v71, v63, 0, 0, v71, 1u, &blockBufferOut);
      if (!DataPointer)
      {
        if (!v64)
        {
LABEL_98:
          v76 = bswap32(v71);
          if (v70)
          {
            v77 = 1868788851;
          }

          else
          {
            v77 = 875982691;
          }

          theBuffer[0] = __PAIR64__(v77, v76);
          LODWORD(theBuffer[1]) = 0;
          HIDWORD(theBuffer[1]) = bswap32(v64);
          DataPointer = CMBlockBufferReplaceDataBytes(theBuffer, blockBufferOut, 0, 0x10uLL);
          if (!DataPointer)
          {
            v78 = blockBufferOut;
            v21 = v61;
            v79 = v145;
            goto LABEL_103;
          }

          goto LABEL_130;
        }

        DataPointer = CMBlockBufferGetDataPointer(blockBufferOut, 0x10uLL, 0, 0, &v161);
        if (!DataPointer)
        {
          DataPointer = CMBlockBufferGetDataPointer(v62, 0x10uLL, 0, 0, &dataPointerOut);
          if (!DataPointer)
          {
            v73 = dataPointerOut;
            v74 = v64;
            v75 = v64;
            if (v65)
            {
              if (v70)
              {
                do
                {
                  *v161 = bswap32(v141 + bswap64(*v73));
                  v73 = dataPointerOut + 8;
                  dataPointerOut += 8;
                  v161 = (v161 + 4);
                  --v75;
                }

                while (v75);
              }

              else
              {
                do
                {
                  *v161 = bswap64(bswap64(*v73) + v49);
                  v73 = dataPointerOut + 8;
                  dataPointerOut += 8;
                  v161 = (v161 + 8);
                  --v74;
                }

                while (v74);
              }
            }

            else if (v70)
            {
              do
              {
                *v161 = bswap32(bswap32(*v73) + v141);
                v73 = dataPointerOut + 4;
                dataPointerOut += 4;
                v161 = (v161 + 4);
                --v75;
              }

              while (v75);
            }

            else
            {
              do
              {
                *v161 = bswap64(bswap32(*v73) + v49);
                v73 = dataPointerOut + 4;
                dataPointerOut += 4;
                v161 = (v161 + 8);
                --v74;
              }

              while (v74);
            }

            goto LABEL_98;
          }
        }
      }

LABEL_130:
      v11 = DataPointer;
      goto LABEL_134;
    }

    writeFirstStartMovieDispatchFunction_cold_5(v163);
    v11 = v163[0];
LABEL_134:
    v21 = v61;
    v79 = v145;
    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }

    v78 = 0;
    if (v11)
    {
      v32 = 0;
      cf = v21;
      v31 = 0;
      goto LABEL_246;
    }

LABEL_103:
    v80 = CMBlockBufferAppendBufferReference(v21, v78, 0, 0, 0);
    v11 = v80;
    if (v79 && !v80)
    {
      v11 = CMBlockBufferAppendBufferReference(v21, v79, 0, 0, 0);
    }

    if (v11)
    {
      goto LABEL_241;
    }

    v81 = CMBlockBufferGetDataLength(v78);
    v82 = v81 - CMBlockBufferGetDataLength(v62);
    if (v82 < 0)
    {
      break;
    }

    v83 = v51[3];
    if ((v83 & 0x8000000000000000) != 0)
    {
      writeFirstStartMovieDispatchFunction_cold_13(theBuffer);
    }

    else
    {
      v84 = v51[7] + v82;
      if (HIDWORD(v84))
      {
        writeFirstStartMovieDispatchFunction_cold_12(theBuffer);
      }

      else
      {
        LODWORD(blockBufferOut) = bswap32(v84);
        v85 = CMBlockBufferReplaceDataBytes(&blockBufferOut, v21, v83, 4uLL);
        if (v85)
        {
          goto LABEL_240;
        }

        v86 = v51[2];
        if ((v86 & 0x8000000000000000) != 0)
        {
          writeFirstStartMovieDispatchFunction_cold_11(theBuffer);
        }

        else
        {
          v87 = v51[6] + v82;
          if (HIDWORD(v87))
          {
            writeFirstStartMovieDispatchFunction_cold_10(theBuffer);
          }

          else
          {
            LODWORD(blockBufferOut) = bswap32(v87);
            v85 = CMBlockBufferReplaceDataBytes(&blockBufferOut, v21, v86, 4uLL);
            if (v85)
            {
              goto LABEL_240;
            }

            v88 = v51[1];
            if ((v88 & 0x8000000000000000) != 0)
            {
              writeFirstStartMovieDispatchFunction_cold_9(theBuffer);
            }

            else
            {
              v89 = v51[5] + v82;
              if (HIDWORD(v89))
              {
                writeFirstStartMovieDispatchFunction_cold_8(theBuffer);
              }

              else
              {
                LODWORD(blockBufferOut) = bswap32(v89);
                v85 = CMBlockBufferReplaceDataBytes(&blockBufferOut, v21, v88, 4uLL);
                if (v85)
                {
LABEL_240:
                  v11 = v85;
LABEL_241:
                  v32 = 0;
                  goto LABEL_245;
                }

                v90 = *v51;
                if ((*v51 & 0x8000000000000000) != 0)
                {
                  writeFirstStartMovieDispatchFunction_cold_7(theBuffer);
                }

                else
                {
                  v91 = v51[4] + v82;
                  if (!HIDWORD(v91))
                  {
                    LODWORD(blockBufferOut) = bswap32(v91);
                    v11 = CMBlockBufferReplaceDataBytes(&blockBufferOut, v21, v90, 4uLL);
                    if (v11)
                    {
                      goto LABEL_241;
                    }

                    goto LABEL_120;
                  }

                  writeFirstStartMovieDispatchFunction_cold_6(theBuffer);
                }
              }
            }
          }
        }
      }
    }

    v11 = theBuffer[0];
    if (LODWORD(theBuffer[0]))
    {
      goto LABEL_241;
    }

LABEL_120:
    if (v62)
    {
      CFRelease(v62);
    }

    if (v78)
    {
      CFRelease(v78);
    }

    v2 = v147;
    if (v79)
    {
      CFRelease(v79);
    }

    v48 = v143;
    if (destinationBuffer)
    {
      CFRelease(destinationBuffer);
    }

    destinationBuffer = v21;
    if (v149 <= 1)
    {
      goto LABEL_159;
    }
  }

  writeFirstStartMovieDispatchFunction_cold_14(theBuffer);
  v32 = 0;
  v11 = theBuffer[0];
LABEL_245:
  cf = v21;
  v31 = 0;
LABEL_246:
  v93 = v62;
  v146 = v79;
  v2 = v147;
LABEL_170:
  if (Mutable)
  {
    v99 = v93;
    v100 = v32;
    v101 = CFArrayGetCount(Mutable);
    if (v101 >= 1)
    {
      v102 = v101;
      for (j = 0; j != v102; ++j)
      {
        v104 = CFArrayGetValueAtIndex(Mutable, j);
        v105 = CFGetAllocator(Mutable);
        CFAllocatorDeallocate(v105, v104);
      }
    }

    CFRelease(Mutable);
    v32 = v100;
    v93 = v99;
  }

  if (v93)
  {
    CFRelease(v93);
  }

  v9 = v138;
  if (v78)
  {
    CFRelease(v78);
  }

  if (v146)
  {
    CFRelease(v146);
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_183:
  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }

  if (v11)
  {
    goto LABEL_196;
  }

  CMBlockBufferGetDataLength(v31);
  v106 = CMByteStreamAppendBlockBuffer();
  if (v106)
  {
    v11 = v106;
    goto LABEL_196;
  }

  if (v32)
  {
    CMBlockBufferGetDataLength(v32);
    v107 = CMByteStreamAppendBlockBuffer();
    if (v107)
    {
      v11 = v107;
      goto LABEL_197;
    }
  }

  if (*(v2 + 11))
  {
    theBuffer[0] = 0;
    blockBufferOut = 0;
    v108 = CFGetAllocator(*v2);
    v109 = CMBlockBufferCreateWithMemoryBlock(v108, 0, 8uLL, v108, 0, 0, 8uLL, 1u, theBuffer);
    if (v109 || (blockBufferOut = 0x6564697708000000, (v109 = CMBlockBufferReplaceDataBytes(&blockBufferOut, theBuffer[0], 0, 8uLL)) != 0))
    {
      v11 = v109;
      v111 = theBuffer[0];
      if (theBuffer[0])
      {
LABEL_194:
        CFRelease(v111);
      }
    }

    else
    {
      v110 = theBuffer[0];
      CMBlockBufferGetDataLength(theBuffer[0]);
      v11 = CMByteStreamAppendBlockBuffer();
      if (v110)
      {
        v111 = v110;
        goto LABEL_194;
      }
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_196:
  if (v32)
  {
LABEL_197:
    CFRelease(v32);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v9)
  {
LABEL_201:
    CFRelease(v9);
  }

  if (!v11)
  {
    v112 = *(v2 + 80);
    blockBufferOut = 0;
    v113 = malloc_type_malloc(0x100000uLL, 0x71C13146uLL);
    if (!v113)
    {
      writeFirstStartMovieDispatchFunction_cold_18(theBuffer);
      v11 = theBuffer[0];
      goto LABEL_226;
    }

    v114 = CFGetAllocator(*v2);
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v116 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v116)
    {
      goto LABEL_225;
    }

    v117 = v116(CMBaseObject, *MEMORY[0x1E695FF78], v114, &blockBufferOut);
    if (v117)
    {
LABEL_255:
      v11 = v117;
      goto LABEL_226;
    }

    CFNumberGetValue(blockBufferOut, kCFNumberSInt64Type, (v2 + 56));
    if (*(v2 + 9))
    {
LABEL_207:
      v118 = 0;
      v11 = 0;
      goto LABEL_227;
    }

    v119 = *(v2 + 48);
    v120 = 0x100000;
    while (1)
    {
      v121 = *(v2 + 104);
      if (v121 <= v119)
      {
        break;
      }

      theBuffer[0] = 0;
      v161 = 0;
      if (v121 < &v119[v120])
      {
        v120 = v121 - v119;
      }

      v122 = *(v2 + 24);
      v123 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v123)
      {
        goto LABEL_225;
      }

      v117 = v123(v122, v120, v112, v113, theBuffer);
      if (v117)
      {
        goto LABEL_255;
      }

      v117 = CMByteStreamAppend();
      if (v117)
      {
        goto LABEL_255;
      }

      v112 += v161;
      v119 = v161 + *(v2 + 48);
      *(v2 + 48) = v119;
      if (*(v2 + 9))
      {
        goto LABEL_207;
      }
    }

    v124 = *(v2 + 72);
    v125 = *(v2 + 80);
    v126 = v125 < v124 && v124 < v125 + v121;
    if (!v126)
    {
      v11 = 0;
      goto LABEL_226;
    }

    LODWORD(v161) = 1701147238;
    theBuffer[0] = 0;
    v127 = v2;
    v128 = *(v2 + 56);
    v129 = v127;
    v130 = *(v127 + 32);
    v131 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v131)
    {
      v11 = v131(v130, 4, v124 - v125 + v128 + 4, &v161, theBuffer);
      if (!v11)
      {
        v118 = *(v129 + 9) == 0;
        goto LABEL_227;
      }
    }

    else
    {
LABEL_225:
      v11 = -12782;
    }

LABEL_226:
    v118 = 1;
LABEL_227:
    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }

    free(v113);
    if (!v11)
    {
      if (!v118)
      {
        return;
      }

LABEL_239:
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      return;
    }
  }

LABEL_230:
  LODWORD(blockBufferOut) = v11;
  v132 = *MEMORY[0x1E695E480];
  theBuffer[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &blockBufferOut);
  if (theBuffer[0])
  {
    v133 = CFDictionaryCreate(v132, &kFigRemakerNotificationParameter_OSStatus, theBuffer, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  else
  {
    v133 = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v133)
  {
    CFRelease(v133);
  }

  if (theBuffer[0])
  {
    CFRelease(theBuffer[0]);
  }
}

uint64_t OUTLINED_FUNCTION_3_131(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return FigAtomStreamInitWithParent();
}

uint64_t RegisterFigReportingAgentBaseType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigReportingAgentGetTypeID()
{
  MEMORY[0x19A8D3660](&_MergedGlobals_10, RegisterFigReportingAgentBaseType);

  return CMBaseClassGetCFTypeID();
}

CFArrayRef fra_createStaticKeyArrayForTCPIStats()
{
  result = CFArrayCreate(*MEMORY[0x1E695E480], kFigReportingTCPInfoKeyForTimeWeightedStats, 8, 0);
  kFigReportingEventKeyArray_TCPInfoKeyForTimeWeightedStats = result;
  return result;
}

void fra_handlePeriodicTimerCancelCallback(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigReportingAgentSetStatsForAllKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = FigCFDictionaryCopyArrayOfKeys();
  v6 = 0;
  while (1)
  {
    v7 = v5 ? CFArrayGetCount(v5) : 0;
    if (v6 >= v7)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v5, v6);
    Value = FigCFDictionaryGetValue();
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v10)
    {
      v12 = 4294954514;
      if (!v5)
      {
        return v12;
      }

      goto LABEL_13;
    }

    v11 = v10(a1, a2, ValueAtIndex, Value, 0);
    ++v6;
    if (v11)
    {
      v12 = v11;
      if (!v5)
      {
        return v12;
      }

      goto LABEL_13;
    }
  }

  v12 = 0;
  if (v5)
  {
LABEL_13:
    CFRelease(v5);
  }

  return v12;
}

uint64_t reportingAgentInvalidate(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  reportingAgentInvalidateGuts(a1);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t reportingAgentFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  reportingAgentInvalidateGuts(a1);
  v3 = *(DerivedStorage + 112);
  if (v3)
  {
    dispatch_release(v3);
  }

  return FigSimpleMutexDestroy();
}

__CFString *reportingAgentCopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigReportingAgent : ");
  return Mutable;
}

uint64_t fra_issueDeferredRTCReportingEventApplierFunc(__CFDictionary *a1, uint64_t a2)
{
  result = FigCFDictionaryGetIntIfPresent();
  if (result)
  {
    CFDictionaryRemoveValue(a1, @"deferredEventID");
    return fra_issueRTCReportingEvent(a2, 0, a1, 0);
  }

  return result;
}

void fra_mergeDictApplier(void *key, void *value, CFMutableDictionaryRef theDict)
{
  if (key && value)
  {
    if (theDict)
    {
      CFDictionarySetValue(theDict, key, value);
    }
  }
}

void fra_issuePowerlogEvent(uint64_t *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = Mutable;
  v5 = 0;
  if (a1[2])
  {
    v4 = a1[2];
  }

  else
  {
    v4 = @"N/A";
  }

  if (a1 && Mutable)
  {
    fra_issuePowerlogEvent_cold_1(a1, &v5, Mutable, v4);
LABEL_7:
    CFRelease(v3);
    return;
  }

  if (Mutable)
  {
    goto LABEL_7;
  }
}

uint64_t OUTLINED_FUNCTION_6_103(uint64_t a1)
{

  return FigSimpleMutexLock();
}

uint64_t OUTLINED_FUNCTION_7_87(uint64_t a1)
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_14_55()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_15_48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return fra_updatePercentValue(v5, a2, a3, a4, v4);
}

void FigPlayerSurrogateCreateWithOptions(const __CFAllocator *a1, const void *a2, CFTypeRef *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a3)
  {
    FigPlayerGetClassID();
    if (!CMDerivedObjectCreate())
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v8 = DerivedStorage;
      *DerivedStorage = 0;
      if (a2)
      {
        v9 = CFRetain(a2);
        *(v8 + 128) = 0;
        *(v8 + 8) = v9;
        if (FigCFDictionaryGetStringIfPresent())
        {
          CFStringGetCString(0, (v8 + 128), 16, 0x600u);
        }

        FigCFDictionaryGetBooleanIfPresent();
      }

      else
      {
        *(DerivedStorage + 8) = 0;
        *(DerivedStorage + 128) = 0;
      }

      if (dword_1EAF17870)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (FigCFDictionaryGetValue())
      {
        DispatchQueue = FigDispatchQueueHolderGetDispatchQueue();
      }

      else
      {
        FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue();
        DispatchQueue = 0;
      }

      if (FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue() && DispatchQueue)
      {
        if (qword_1ED4CB938 != -1)
        {
          FigPlayerSurrogateCreateWithOptions_cold_1();
        }

        *(v8 + 16) = DispatchQueue;
        dispatch_retain(DispatchQueue);
        snprintf(__str, 0x50uLL, "com.apple.coremedia.surrogatePlayer.outboundNotifications[%p.%s]", 0, "");
        if (_MergedGlobals_123)
        {
          v14 = dispatch_queue_create_with_target_V2(__str, 0, *(v8 + 16));
        }

        else
        {
          v14 = FigDispatchQueueCreateWithPriority();
        }

        *(v8 + 24) = v14;
        snprintf(__str, 0x50uLL, "com.apple.coremedia.surrogatePlayer.inboundNotifications[%p.%s]", 0, "");
        *(v8 + 72) = dispatch_queue_create_with_target_V2(__str, 0, *(v8 + 16));
        snprintf(__str, 0x50uLL, "com.apple.coremedia.surrogatePlayer[%p.%s]", 0, "");
        v13 = dispatch_queue_create(__str, 0);
      }

      else
      {
        snprintf(__str, 0x50uLL, "com.apple.coremedia.surrogatePlayer.outboundNotifications[%p.%s]", 0, "");
        *(v8 + 24) = FigDispatchQueueCreateWithPriority();
        snprintf(__str, 0x50uLL, "com.apple.coremedia.surrogatePlayer.inboundNotifications[%p.%s]", 0, "");
        *(v8 + 72) = FigDispatchQueueCreateWithPriority();
        snprintf(__str, 0x50uLL, "com.apple.coremedia.surrogatePlayer[%p.%s]", 0, "");
        v13 = FigDispatchQueueCreateWithPriority();
      }

      *(v8 + 64) = v13;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      if (!FigCFWeakReferenceTableCreate())
      {
        *(v8 + 56) = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, @"ActionAtEnd", @"Advance");
        *(v8 + 80) = Mutable;
        *(v8 + 97) = 1;
        *(v8 + 144) = 0;
        *a3 = 0;
      }
    }
  }

  else
  {
    v10 = qword_1EAF17868;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 4294954516, "<<<< FigPlayerSurrogate >>>>", 7454, v3);
  }
}

uint64_t surrogatePlaybackItem_initUseAsyncControlQueueForOutboundNotificationsOnce(_BYTE *a1)
{
  result = FigGetCFPreferenceBooleanWithDefault();
  *a1 = result;
  return result;
}

void surrogatePlayer_realPlayerNotificationWeakCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11[0] = a2;
  v11[1] = a4;
  v11[2] = a3;
  v11[3] = a5;
  dispatch_sync_f(*(DerivedStorage + 64), v11, surrogatePlayer_realPlayerNotificationWeakCallbackInternal);
  v10 = CMBaseObjectGetDerivedStorage();
  CFRetain(a2);
  surrogatePlayer_waitOutWorkOnQueueThenDeferReleaseToSafeQ(a2, *(v10 + 16), *(v10 + 64));
}

void replaceNextCurrentItemDidChangeNotification(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 120);
  *(DerivedStorage + 120) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  *(DerivedStorage + 112) = 2;
}

uint64_t surrogatePlayer_deferPostNotification(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  CMNotificationCenterGetDefaultLocalCenter();

  return FigDeferNotificationToDispatchQueue();
}

void surrogatePlaybackItem_deferFailedToBecomeReadyForInspectionNotification(const void *a1, uint64_t a2, const void *a3, void *a4)
{
  v6 = a2;
  values[22] = *MEMORY[0x1E69E9840];
  values[0] = a4;
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v6)
  {
    FigCFDictionarySetInt32();
  }

  if (a3)
  {
    CFDictionarySetValue(Mutable, @"CFError", a3);
  }

  if (a4)
  {
    v10 = CFArrayCreate(v8, values, 1, MEMORY[0x1E695E9C0]);
    CFDictionarySetValue(Mutable, @"Properties", v10);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  if (dword_1EAF17870)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  surrogatePlaybackItem_deferPostNotification(a1);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

_BYTE *surrogatePlaybackItem_deferPostNotification(const void *a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    CFRetain(a1);
    CMNotificationCenterGetDefaultLocalCenter();

    return FigDeferNotificationToDispatchQueue();
  }

  return result;
}

uint64_t surrogatePlaybackItem_copyOwningPlayer(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 96))
  {
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  }

  else
  {
    v2 = 0;
  }

  FigSimpleMutexUnlock();
  return v2;
}

void surrogatePlaybackItem_deferReleaseToSafeQ(void *result)
{
  if (result)
  {
    v2 = *(CMBaseObjectGetDerivedStorage() + 8);

    surrogatePlayer_waitOutWorkOnQueueThenDeferReleaseToSafeQInternal(result, v2, 0);
  }
}

void surrogatePlayer_deferReleaseToSafeQ(void *result)
{
  if (result)
  {
    v2 = *(CMBaseObjectGetDerivedStorage() + 16);

    surrogatePlayer_waitOutWorkOnQueueThenDeferReleaseToSafeQInternal(result, v2, 0);
  }
}

void surrogatePlayer_waitOutWorkOnQueueThenDeferReleaseToSafeQInternal(void *context, dispatch_queue_t queue, dispatch_queue_t a3)
{
  if (context)
  {
    v3 = queue;
    if (!queue)
    {
      if (qword_1ED4CB948 != -1)
      {
        v5 = a3;
        surrogatePlayer_waitOutWorkOnQueueThenDeferReleaseToSafeQInternal_cold_1();
        a3 = v5;
      }

      v3 = qword_1ED4CB940;
    }

    if (a3)
    {
      dispatch_sync_f(a3, 0, a_noop);
    }

    dispatch_async_f(v3, context, _releaseCFType);
  }
}

dispatch_queue_t _initDeferredReleaseQ(dispatch_queue_t *a1)
{
  result = dispatch_queue_create("com.apple.coremedia.surrogatePlayer.deferredRelease", 0);
  *a1 = result;
  return result;
}

void surrogatePlayer_deferPostCurrentItemDidChangeNotification(const void *a1, const void *a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"ReasonForCurrentItemDidChange", a2);
  surrogatePlayer_deferPostNotification(a1);
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

CFDictionaryRef *surrogatePlayer_copyPropertyFromCacheInternal(uint64_t *a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*result)
  {
    v6 = -12785;
    goto LABEL_9;
  }

  v3 = result;
  v4 = *a1;
  cf = 0;
  v9 = 0;
  v7 = v4;
  surrogatePlayer_currentRealPlayerInternal(&v7);
  v5 = cf;
  if (!cf)
  {
    result = CFDictionaryGetValue(v3[10], a1[1]);
    if (result)
    {
      if (result != *MEMORY[0x1E695E738])
      {
        result = CFRetain(result);
        v6 = 0;
        a1[2] = result;
        a1[3] = 0;
        goto LABEL_10;
      }

      v6 = 0;
    }

    else
    {
      v6 = -12784;
    }

LABEL_9:
    a1[2] = 0;
    a1[3] = 0;
    goto LABEL_10;
  }

  a1[2] = 0;
  a1[3] = v5;
  result = CFRetain(v5);
  v6 = 0;
LABEL_10:
  *(a1 + 8) = v6;
  return result;
}

void *surrogatePlayer_currentRealPlayerInternal(void *a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v3 = result[11];
  v4 = result[4];
  if (!v3)
  {
    if (v4)
    {
      a1[1] = v4;
LABEL_6:
      v4 = result[5];
      goto LABEL_7;
    }

    v3 = result[5];
  }

  a1[1] = v3;
  if (v3 == v4)
  {
    goto LABEL_6;
  }

LABEL_7:
  a1[2] = v4;
  return result;
}

uint64_t surrogatePlayer_resetIsEnqueuedWithRealPlayerForArrayPlaybackItem(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 162) = 0;
  return result;
}

uint64_t surrogatePlayer_resetIsWaitingForVideoTargetForArrayPlaybackItem(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 161) = 0;
  return result;
}

double surrogatePlayer_deferCancelPendingPrerollForArrayPlaybackItem(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = malloc_type_malloc(0x10uLL, 0x1020040FFEA222EuLL);
  if (!v3)
  {
    return surrogatePlayer_deferCancelPendingPrerollForArrayPlaybackItem_cold_1(0, v4, v5, v6, v7, v8, v9, v10, v15, v16, SHIDWORD(v16), v17);
  }

  v11 = v3;
  *v3 = CFRetain(a1);
  *(v11 + 4) = 257;
  v12 = *(DerivedStorage + 8);
  v13 = *(DerivedStorage + 144);

  surrogatePlayer_dispatchToAsyncControlQueueIfAvailableThenSynchronizeWithQueue_f(v12, v13, v11, surrogatePlayerItem_cancelPendingPrerollInternal);
  return result;
}

void surrogatePlaybackItem_deferItemWasRemovedFromPlayQueueNotification(const void *a1, int a2)
{
  v3 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  values = *v3;
  v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigPlaybackItemParameter_AsRequested, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  surrogatePlaybackItem_deferPostNotification(a1);
  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t surrogatePlayer_setCachedActionAtEndOnRealPlayerOnQ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, __int16 a16, uint64_t a17, uint64_t a18, __int16 a19, uint64_t a20, uint64_t a21, const void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v50 = a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(DerivedStorage + 80), @"ActionAtEnd");

  return surrogatePlayer_setActionAtEndOnRealPlayerOnQ(v50, Value, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50);
}

void surrogatePlayer_deferItemWasRemovedFromPlayQueueNotificationForArrayPlaybackItem(const void *a1, uint64_t a2)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 162))
  {
    v4 = *(a2 + 16);

    surrogatePlaybackItem_deferItemWasRemovedFromPlayQueueNotification(a1, v4);
  }
}

__CFString *surrogatePlayer_copyPlayQueueDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  Count = CFArrayGetCount(*(DerivedStorage + 56));
  if (Count >= 1)
  {
    v4 = Count;
    v5 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 56), v5);
      if (ValueAtIndex)
      {
        v7 = (CMBaseObjectGetDerivedStorage() + 175);
      }

      else
      {
        v7 = "";
      }

      if (++v5 >= v4)
      {
        v8 = "";
      }

      else
      {
        v8 = ", ";
      }

      CFStringAppendFormat(Mutable, 0, @"item %p %s%s", ValueAtIndex, v7, v8);
    }

    while (v4 != v5);
  }

  return Mutable;
}

void surrogatePlayer_dispatchToAsyncControlQueueIfAvailableThenSynchronizeWithQueue_f(NSObject *a1, dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  if (a1)
  {
    v8 = malloc_type_malloc(0x18uLL, 0xA0040114AFA65uLL);
    v8[1] = work;
    v8[2] = queue;
    *v8 = context;
    v9 = surrogatePlayer_dispatchToAsyncControlQueueIfAvailableThenSynchronizeWithQueueInternal;
    v10 = a1;
  }

  else
  {
    v10 = queue;
    v8 = context;
    v9 = work;
  }

  dispatch_async_f(v10, v8, v9);
}

void surrogatePlayer_dispatchToAsyncControlQueueIfAvailableThenSynchronizeWithQueueInternal(uint64_t a1)
{
  dispatch_sync_f(*(a1 + 16), *a1, *(a1 + 8));

  free(a1);
}

uint64_t surrogatePlaybackItem_copyAssetTypeInternal(uint64_t a1)
{
  result = *(CMBaseObjectGetDerivedStorage() + 48);
  if (result)
  {
    FigAssetGetCMBaseObject();
    v4 = v3;
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      result = v5(v4, @"assetProperty_AssetType", *MEMORY[0x1E695E480], a1 + 8);
    }

    else
    {
      result = 4294954514;
    }
  }

  *(a1 + 16) = result;
  return result;
}

CFIndex surrogatePlayer_applyCachedPanItemPropertyToRealPlayer(uint64_t a1, const __CFDictionary *a2, uint64_t a3)
{
  if (FigCFEqual())
  {
    Value = CFDictionaryGetValue(a2, @"Active");
    v6 = CFBooleanGetValue(Value);
    VTable = CMBaseObjectGetVTable();
    v10 = *(VTable + 24);
    result = VTable + 24;
    v9 = v10;
    if (v10)
    {
      v11 = *(v9 + 24);
      if (v11)
      {
        v12 = a3;
        v13 = v6;

        return v11(v12, v13);
      }
    }
  }

  else if (FigCFEqual())
  {
    v14 = CFDictionaryGetValue(a2, @"DuckDown");
    v15 = CFBooleanGetValue(v14);
    valuePtr = 0;
    v16 = CFDictionaryGetValue(a2, @"DuckVolume");
    CFNumberGetValue(v16, kCFNumberFloat32Type, &valuePtr + 4);
    v17 = CFDictionaryGetValue(a2, @"RampDuration");
    CFNumberGetValue(v17, kCFNumberFloat32Type, &valuePtr);
    v18 = valuePtr;
    v19 = CMBaseObjectGetVTable();
    v21 = *(v19 + 32);
    result = v19 + 32;
    v20 = v21;
    if (v21)
    {
      v22 = *(v20 + 8);
      if (v22)
      {
        return v22(a3, v15, *(&v18 + 1), *&v18);
      }
    }
  }

  else if (FigCFEqual())
  {
    v23 = CFBooleanGetValue(a2);
    v24 = CMBaseObjectGetVTable();
    v26 = *(v24 + 32);
    result = v24 + 32;
    v25 = v26;
    if (v26)
    {
      v11 = *(v25 + 16);
      if (v11)
      {
        v12 = a3;
        v13 = v23;

        return v11(v12, v13);
      }
    }
  }

  else
  {
    result = FigCFEqual();
    if (result)
    {
      v27 = 0;
      if (!a2)
      {
        goto LABEL_20;
      }

LABEL_19:
      for (result = CFArrayGetCount(a2); v27 < result; result = 0)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v27);
        v29 = *(*(CMBaseObjectGetVTable() + 16) + 128);
        if (v29)
        {
          v29(a3, ValueAtIndex);
        }

        ++v27;
        if (a2)
        {
          goto LABEL_19;
        }

LABEL_20:
        ;
      }
    }
  }

  return result;
}

const void *surrogatePlaybackItem_applyCachedItemPropertyToRealPlaybackItem(uint64_t a1, const __CFDictionary *a2, uint64_t a3)
{
  if (FigCFEqual())
  {
    return surrogatePlaybackItem_applyCachedItemPropertyToRealPlaybackItem_cold_1();
  }

  result = FigCFEqual();
  if (result)
  {
    v10 = *MEMORY[0x1E6960C70];
    v11 = *(MEMORY[0x1E6960C70] + 16);
    result = FigCFDictionaryGetCMTimeIfPresent();
    if (result)
    {
      Value = CFDictionaryGetValue(a2, @"Options");
      VTable = CMBaseObjectGetVTable();
      v8 = *(VTable + 16);
      result = (VTable + 16);
      v9 = *(v8 + 176);
      if (v9)
      {
        v12 = v10;
        v13 = v11;
        return v9(a3, &v12, Value);
      }
    }
  }

  return result;
}

void surrogatePlaybackItem_applyCachedTrackPropertiesToRealPlaybackItem(unsigned int a1, CFDictionaryRef theDict, uint64_t a3)
{
  v4[0] = a3;
  v4[1] = a1;
  CFDictionaryApplyFunction(theDict, surrogatePlaybackItem_applyCachedTrackPropertyToRealPlaybackItemTrack, v4);
  CFDictionaryRemoveAllValues(theDict);
}

void surrogatePlaybackItem_retainReleaseOnSafeQ(void *a1)
{
  v2 = surrogatePlaybackItem_copyOwningPlayer(a1);
  CFRetain(a1);
  if (v2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    surrogatePlayer_waitOutWorkOnQueueThenDeferReleaseToSafeQ(a1, *(DerivedStorage + 16), *(DerivedStorage + 64));
    v4 = *(DerivedStorage + 16);
    v5 = *(DerivedStorage + 64);

    surrogatePlayer_waitOutWorkOnQueueThenDeferReleaseToSafeQ(v2, v4, v5);
  }

  else
  {

    surrogatePlaybackItem_deferReleaseToSafeQ(a1);
  }
}

void surrogatePlaybackItem_applyPropertiesToBeAppliedOnceWhenRealItemBecomesCurrentInternal(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFDictionaryApplyFunction(*(DerivedStorage + 120), surrogatePlaybackItem_applyPropertyWhenRealItemBecomesCurrentToItem, a1);
  v3 = *(DerivedStorage + 120);

  CFDictionaryRemoveAllValues(v3);
}

const void *surrogatePlaybackItem_applyPropertyWhenRealItemBecomesCurrentToItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigCFEqual();
  if (result)
  {
    result = CFDictionaryGetValue(*(DerivedStorage + 120), @"StartPreroll");
    if (result)
    {
      FigCFDictionaryGetFloat32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      v5 = *(DerivedStorage + 72);
      VTable = CMBaseObjectGetVTable();
      v7 = *(VTable + 16);
      result = (VTable + 16);
      v8 = *(v7 + 64);
      if (v8)
      {
        return v8(v5, 0, 0.0);
      }
    }
  }

  return result;
}

void surrogatePlayer_waitOutWorkOnQueueThenDeferReleaseToSafeQ(void *context, dispatch_queue_t queue, NSObject *a3)
{
  if (a3)
  {
    v6 = malloc_type_malloc(0x18uLL, 0xE00407A161445uLL);
    v7 = v6;
    *v6 = context;
    v6[1] = queue;
    if (queue)
    {
      dispatch_retain(queue);
      v7[2] = a3;
      dispatch_retain(a3);
      v8 = queue;
    }

    else
    {
      v6[2] = 0;
      v8 = a3;
    }

    dispatch_async_f(v8, v7, surrogatePlayer_waitOutWorkOnQueueThenDeferReleaseToSafeQ_f);
  }

  else
  {

    surrogatePlayer_waitOutWorkOnQueueThenDeferReleaseToSafeQInternal(context, queue, 0);
  }
}

void surrogatePlayer_waitOutWorkOnQueueThenDeferReleaseToSafeQ_f(uint64_t a1)
{
  if (a1)
  {
    surrogatePlayer_waitOutWorkOnQueueThenDeferReleaseToSafeQInternal(*a1, *(a1 + 8), *(a1 + 16));
    v2 = *(a1 + 8);
    if (v2)
    {
      dispatch_release(v2);
    }

    v3 = *(a1 + 16);
    if (v3)
    {
      dispatch_release(v3);
    }

    free(a1);
  }
}

uint64_t surrogatePlaybackItem_applyCachedTrackPropertyToRealPlaybackItemTrack(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = *(a3 + 2);
  VTable = CMBaseObjectGetVTable();
  v9 = *(VTable + 16);
  result = VTable + 16;
  v10 = *(v9 + 112);
  if (v10)
  {

    return v10(v5, v6, a1, a2);
  }

  return result;
}

uint64_t surrogatePlaybackItem_callMakeReadyForInspectionOnRealItemForProperty(const void *a1, uint64_t a2, void *a3, int a4, _BYTE *a5)
{
  values = a3;
  v13 = 0;
  if (a3)
  {
    v9 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v10)
  {
    v11 = v10(a2, v9, &v13);
    if (!a4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = 4294954514;
    if (!a4)
    {
      goto LABEL_11;
    }
  }

  if (v11)
  {
    surrogatePlaybackItem_deferFailedToBecomeReadyForInspectionNotification(a1, v11, 0, values);
    goto LABEL_14;
  }

  if (v13)
  {
    surrogatePlaybackItem_deferReadyForInspectionNotification(a1, values);
    if (!a5)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_11:
  if (!a5)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (!v11)
  {
    *a5 = v13;
  }

LABEL_14:
  if (v9)
  {
    CFRelease(v9);
  }

  return v11;
}

CFArrayRef surrogatePlaybackItem_initPropertiesWithSpecialHandlingWhenMakingReadyForInspection(CFArrayRef *a1)
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = @"CPEProtector";
  v3[1] = @"InitialSamples";
  v3[2] = @"AccurateDuration";
  v3[3] = @"iTunesGaplessInfo";
  v3[4] = @"Lyrics";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v3, 5, MEMORY[0x1E695E9C0]);
  *a1 = result;
  return result;
}

const void *surrogatePlayer_setRealPlayerPropertyFromCache(uint64_t a1, int a2, void *key)
{
  result = CFDictionaryGetValue(*(a1 + 80), key);
  if (result)
  {
    v5 = result == *MEMORY[0x1E695E738] ? 0 : result;
    FigPlayerGetFigBaseObject();
    v7 = v6;
    VTable = CMBaseObjectGetVTable();
    v9 = *(VTable + 8);
    result = (VTable + 8);
    v10 = *(v9 + 56);
    if (v10)
    {

      return v10(v7, key, v5);
    }
  }

  return result;
}

void surrogatePlayer_postDeferredNotification(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*CMBaseObjectGetDerivedStorage())
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  surrogatePlayer_deferReleaseToSafeQ(a2);
}

uint64_t surrogatePlayer_copyPropertyFromCache(uint64_t a1, uint64_t a2, CFTypeRef *a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context[0] = a1;
  context[1] = a2;
  v12 = 0;
  v13 = 0;
  cf = 0;
  dispatch_sync_f(*(DerivedStorage + 64), context, surrogatePlayer_copyPropertyFromCacheInternal);
  if (a3)
  {
    *a3 = cf;
  }

  else if (cf)
  {
    CFRelease(cf);
  }

  if (a4)
  {
    *a4 = v12;
  }

  else if (v12)
  {
    CFRelease(v12);
  }

  return v13;
}

uint64_t surrogatePlayer_handleSetProperty(uint64_t a1, uint64_t a2, const void *a3, const __CFArray *a4, _BYTE *a5, __CFString **a6, CFArrayRef *a7)
{
  v10 = a4;
  v32 = a4;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v14 = CFRetain(a3);
    if (v10)
    {
LABEL_3:
      v15 = CFRetain(v10);
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_6:
  if (*DerivedStorage)
  {
    v20 = 4294954511;
    goto LABEL_58;
  }

  if (FigCFEqual())
  {
    if (v10)
    {
      v10 = CFArrayCreate(*MEMORY[0x1E695E480], &v32, 1, MEMORY[0x1E695E9C0]);
    }

    v16 = @"VideoLayerArray";
    if (@"VideoLayerArray")
    {
      CFRetain(@"VideoLayerArray");
    }

    if (v14)
    {
      CFRelease(v14);
    }

    if (v10)
    {
      CFRetain(v10);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    v17 = v10;
    goto LABEL_24;
  }

  if (FigCFEqual())
  {
    if (!FigCFEqual() && !FigCFEqual())
    {
      v20 = 0;
      goto LABEL_58;
    }

    surrogatePlayer_createRealPlayer(a1, v10, 0);
    if (!v18)
    {
LABEL_23:
      v17 = 0;
      v10 = v15;
      v16 = v14;
LABEL_24:
      *a5 = 0;
      v19 = CMBaseObjectGetDerivedStorage();
      context[0] = a1;
      context[1] = v16;
      context[3] = 0;
      context[4] = 0;
      context[2] = v10;
      dispatch_sync_f(*(v19 + 64), context, surrogatePlayer_setPropertyInCacheInternal);
      *a6 = v16;
      *a7 = v10;
      if (v17)
      {
        CFRelease(v17);
      }

      return 0;
    }

    goto LABEL_69;
  }

  if (FigCFEqual())
  {
    surrogatePlayer_handleSetProperty_cold_10(v10 == 0, v10, DerivedStorage, a1);
    goto LABEL_57;
  }

  if (FigCFEqual())
  {
    if (v10)
    {
      v22 = CFGetTypeID(v10);
      if (v22 != CFArrayGetTypeID())
      {
        goto LABEL_23;
      }

      Count = CFArrayGetCount(v10);
    }

    else
    {
      Count = 0;
    }

    if (*(DerivedStorage + 100) != Count)
    {
      surrogatePlayer_handleWaitForVideoTargetConditionChange(a1, 2, 0, Count);
    }

    goto LABEL_23;
  }

  if (FigCFEqual())
  {
    if (v10 && (v24 = CFGetTypeID(v10), v24 == FigDispatchQueueHolderGetTypeID()))
    {
      if (*(DerivedStorage + 32))
      {
        surrogatePlayer_handleSetProperty_cold_1(context);
      }

      else if (*(DerivedStorage + 40))
      {
        surrogatePlayer_handleSetProperty_cold_2(context);
      }

      else
      {
        v25 = *(DerivedStorage + 56);
        if (!v25 || !CFArrayGetCount(v25))
        {
          DispatchQueue = FigDispatchQueueHolderGetDispatchQueue();
          v27 = *(DerivedStorage + 72);
          if (v27)
          {
            dispatch_release(v27);
          }

          *(DerivedStorage + 72) = DispatchQueue;
LABEL_56:
          dispatch_retain(DispatchQueue);
          goto LABEL_57;
        }

        surrogatePlayer_handleSetProperty_cold_3(context);
      }
    }

    else
    {
      surrogatePlayer_handleSetProperty_cold_4(context);
    }

    goto LABEL_80;
  }

  if (FigCFEqual())
  {
    if (v10 && (v28 = CFGetTypeID(v10), v28 == FigDispatchQueueHolderGetTypeID()))
    {
      if (*(DerivedStorage + 32))
      {
        surrogatePlayer_handleSetProperty_cold_5(context);
      }

      else if (*(DerivedStorage + 40))
      {
        surrogatePlayer_handleSetProperty_cold_6(context);
      }

      else
      {
        v29 = *(DerivedStorage + 56);
        if (!v29 || !CFArrayGetCount(v29))
        {
          DispatchQueue = FigDispatchQueueHolderGetDispatchQueue();
          v30 = *(DerivedStorage + 64);
          if (v30)
          {
            dispatch_release(v30);
          }

          *(DerivedStorage + 64) = DispatchQueue;
          goto LABEL_56;
        }

        surrogatePlayer_handleSetProperty_cold_7(context);
      }
    }

    else
    {
      surrogatePlayer_handleSetProperty_cold_8(context);
    }

LABEL_80:
    v20 = LODWORD(context[0]);
    goto LABEL_58;
  }

  if (FigCFEqual())
  {
    surrogatePlayer_setActionAtEndOnRealPlayer(a1, v10);
    goto LABEL_57;
  }

  if (!CFEqual(a3, @"ItemsToPrebuffer"))
  {
    goto LABEL_23;
  }

  if (v10)
  {
    v31 = CFGetTypeID(v10);
    if (v31 != CFArrayGetTypeID())
    {
      surrogatePlayer_handleSetProperty_cold_9(context);
      goto LABEL_80;
    }
  }

  surrogatePlayer_setItemsToPrebuffer(a1, v10);
  if (v18)
  {
LABEL_69:
    v20 = v18;
    goto LABEL_58;
  }

LABEL_57:
  v20 = 0;
  *a5 = 1;
LABEL_58:
  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v20;
}

void surrogatePlayer_createRealPlayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  context[16] = *MEMORY[0x1E69E9840];
  if (dword_1EAF17870 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
  }

  else
  {
    context[0] = a1;
    context[1] = a2;
    context[2] = a3;
    context[3] = 0;
    dispatch_sync_f(*(DerivedStorage + 64), context, surrogatePlayer_createRealPlayer_internal);
  }
}

void surrogatePlayer_handleWaitForVideoTargetConditionChange(uint64_t a1, int a2, unsigned __int8 a3, unsigned int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  dispatch_sync_f(*(DerivedStorage + 64), &context, surrogatePlayer_handleWaitForVideoTargetConditionChangeInternal);
}

void surrogatePlayer_setActionAtEndOnRealPlayer(uint64_t a1, uint64_t a2)
{
  context[16] = *MEMORY[0x1E69E9840];
  if (dword_1EAF17870 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  }

  else
  {
    context[1] = a2;
    context[2] = 0;
    context[0] = a1;
    dispatch_sync_f(*(DerivedStorage + 64), context, &surrogatePlayer_setActionAtEndOnRealPlayer_internal);
  }
}

void surrogatePlayer_setItemsToPrebuffer(uint64_t a1, uint64_t a2)
{
  context[16] = *MEMORY[0x1E69E9840];
  if (dword_1EAF17870 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  }

  else
  {
    context[1] = a2;
    context[2] = 0;
    context[0] = a1;
    dispatch_sync_f(*(DerivedStorage + 64), context, surrogatePlayer_setItemsToPrebuffer_internal);
  }
}

void surrogatePlayer_handleWaitForVideoTargetConditionChangeInternal(uint64_t *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  v5 = *(a1 + 2);
  if (v5 == 2)
  {
    v8 = *(DerivedStorage + 100);
    if (dword_1EAF17870)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(v4 + 100) = *(a1 + 4);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else if (v5 == 1)
  {
    v6 = *(a1 + 12);
    *(DerivedStorage + 98) = v6;
    if (dword_1EAF17870)
    {
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v6 = *(v4 + 98);
    }

    if (!v6)
    {
LABEL_10:
      v10 = *(v4 + 56);
      if (v10)
      {
        Count = CFArrayGetCount(v10);
      }

      else
      {
        Count = 0;
      }

      if (dword_1EAF17870)
      {
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 56), i);
          v15 = CMBaseObjectGetDerivedStorage();
          if (*(v15 + 161))
          {
            *(v15 + 161) = 0;
            surrogatePlayer_respondToLoadingOfItemAssetTypeOnQ(v2, ValueAtIndex);
          }
        }
      }
    }
  }
}

uint64_t surrogatePlayer_deferInitiateLoadingOfItemAssetType(const void *a1, const void *a2, char a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = malloc_type_malloc(0x18uLL, 0x1020040A95220FAuLL);
  if (v7)
  {
    v8 = v7;
    *v7 = CFRetain(a1);
    v8[1] = CFRetain(a2);
    *(v8 + 16) = a3;
    surrogatePlayer_dispatchToAsyncControlQueueIfAvailableThenSynchronizeWithQueue_f(*(DerivedStorage + 16), *(DerivedStorage + 64), v8, surrogatePlayer_initiateLoadingOfItemAssetTypeAsync);
    return 0;
  }

  else
  {
    surrogatePlayer_deferInitiateLoadingOfItemAssetType_cold_1(&v10);
    return v10;
  }
}

__CFString *surrogatePlaybackItem_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  if (a1)
  {
    v5 = (CMBaseObjectGetDerivedStorage() + 175);
  }

  else
  {
    v5 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"FigPlaybackItemSurrogate <%p|%s> realItem %p", a1, v5, *(DerivedStorage + 64));
  return Mutable;
}

CFTypeRef surrogatePlaybackItem_copyRealItemAndRealPlayerInternal(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 64);
  a1[1] = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  result = *(DerivedStorage + 72);
  a1[2] = result;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t surrogatePlaybackItem_SetCurrentTime(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 2);
  return surrogatePlaybackItem_SetCurrentTimeWithRangeAndID(a1, &v4, a3, MEMORY[0x1E6960C80], MEMORY[0x1E6960C88], 0);
}

uint64_t surrogatePlaybackItem_SetCurrentTimeWithRange(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v10 = *a2;
  v11 = *(a2 + 2);
  v8 = *a4;
  v9 = *(a4 + 2);
  v6 = *a5;
  v7 = *(a5 + 2);
  return surrogatePlaybackItem_SetCurrentTimeWithRangeAndID(a1, &v10, a3, &v8, &v6, 0);
}

uint64_t surrogatePlaybackItem_SetCurrentTimeWithRangeAndID(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  v16 = *a4;
  v17 = *(a4 + 2);
  FigCFDictionarySetCMTime();
  v16 = *a5;
  v17 = *(a5 + 2);
  FigCFDictionarySetCMTime();
  v14 = *a2;
  v15 = *(a2 + 2);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (v11)
  {
    v16 = v14;
    v17 = v15;
    v12 = v11(a1, &v16, Mutable);
    if (!Mutable)
    {
      return v12;
    }

    goto LABEL_5;
  }

  v12 = 4294954514;
  if (Mutable)
  {
LABEL_5:
    CFRelease(Mutable);
  }

  return v12;
}

const void *surrogatePlaybackItem_copyPropertyFromCacheInternal(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 1) || *result)
  {
    goto LABEL_9;
  }

  v3 = *(result + 8);
  if (!v3)
  {
    result = CFDictionaryGetValue(*(result + 16), *(a1 + 8));
    if (!result)
    {
      v4 = -12784;
LABEL_10:
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      goto LABEL_11;
    }

    if (result != *MEMORY[0x1E695E738])
    {
      result = CFRetain(result);
      v4 = 0;
      *(a1 + 16) = result;
      *(a1 + 24) = 0;
      goto LABEL_11;
    }

LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = v3;
  result = CFRetain(v3);
  v4 = 0;
LABEL_11:
  *(a1 + 32) = v4;
  return result;
}

void surrogatePlaybackItem_MakeReadyForInspectionInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 64);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    *(a1 + 16) = v3;
  }

  else
  {
    v6 = DerivedStorage;
    Mutable = *(DerivedStorage + 112);
    if (Mutable || (v8 = CFGetAllocator(*a1), Mutable = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]), (*(v6 + 112) = Mutable) != 0))
    {
      v9 = *(a1 + 8);
      if (v9)
      {
        v15.length = CFArrayGetCount(*(a1 + 8));
        v15.location = 0;
        CFArrayAppendArray(Mutable, v9, v15);
      }
    }

    v10 = surrogatePlaybackItem_copyOwningPlayer(*a1);
    v5 = v10;
    if (v10)
    {
      v11 = surrogatePlayer_deferInitiateLoadingOfItemAssetType(v10, *a1, 0);
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v14);
    }

    v4 = v11;
  }

  surrogatePlayer_deferReleaseToSafeQ(v5);
  *(a1 + 24) = v4;
}

uint64_t surrogatePlayer_SetRateWithFade(uint64_t a1, __int128 *a2, float a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetCMTime();
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (v6)
  {
    v7 = v6(a1, Mutable, a3);
    if (!Mutable)
    {
      return v7;
    }

    goto LABEL_5;
  }

  v7 = 4294954514;
  if (Mutable)
  {
LABEL_5:
    CFRelease(Mutable);
  }

  return v7;
}

CFIndex surrogatePlayer_initiateEnqueueingOfCurrentItemIfNeeded_internal(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CFArrayGetCount(*(DerivedStorage + 56));
  if (result >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 56), 0);
    result = CMBaseObjectGetDerivedStorage();
    if (!*(result + 162) && !*(result + 160))
    {
      if (dword_1EAF17870)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      result = surrogatePlayer_deferInitiateLoadingOfItemAssetType(v2, ValueAtIndex, 1);
    }
  }

  *(a1 + 8) = 0;
  return result;
}

void surrogatePlayer_startPrerollInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    surrogatePlayer_startPrerollInternal_cold_1(context);
    goto LABEL_10;
  }

  v3 = DerivedStorage;
  v4 = *(DerivedStorage + 56);
  if (!v4 || CFArrayGetCount(v4) <= 0)
  {
    surrogatePlayer_startPrerollInternal_cold_3(context);
LABEL_10:
    v8 = context[0];
    goto LABEL_8;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 56), 0);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    surrogatePlayer_startPrerollInternal_cold_2(context);
    goto LABEL_10;
  }

  v7 = Mutable;
  v8 = FigCFDictionarySetFloat32();
  if (!v8)
  {
    FigCFDictionarySetInt32();
    v9 = CMBaseObjectGetDerivedStorage();
    context[0] = ValueAtIndex;
    context[1] = @"StartPreroll";
    context[2] = v7;
    dispatch_sync_f(*(v9 + 144), context, surrogatePlaybackItem_setPropertyToBeAppliedOnceWhenRealItemBecomesReadyInternal);
  }

  CFRelease(v7);
LABEL_8:
  *(a1 + 16) = v8;
}

void surrogatePlaybackItem_setPropertyToBeAppliedOnceWhenRealItemBecomesReadyInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFDictionarySetValue(*(DerivedStorage + 120), *(a1 + 8), *(a1 + 16));
  if (*(DerivedStorage + 64) && *(DerivedStorage + 162))
  {
    v3 = *a1;

    surrogatePlaybackItem_applyPropertiesToBeAppliedOnceWhenRealItemBecomesCurrentInternal(v3);
  }
}

double surrogatePlaybackItem_reportAttemptToWriteToReadOnlyTimebase(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

CFTypeRef surrogatePlaybackItem_updateOwningPlayer(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = v3[2];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(DerivedStorage + 24);
  v3[2] = v5;
  dispatch_retain(v5);
  v6 = v3[3];
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(DerivedStorage + 72);
  v3[3] = v7;
  dispatch_retain(v7);
  v8 = v3[9];
  result = a1[1];
  v3[9] = result;
  v3[10] = v8;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void OUTLINED_FUNCTION_2_163(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v10 = *(a1 + 64);

  dispatch_sync_f(v10, va, surrogatePlayer_setPropertyInCacheInternal);
}

uint64_t OUTLINED_FUNCTION_11_64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_20_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_21_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_33_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, int a17)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_35_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_38_20(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, os_log_type_t type, uint64_t a34, uint64_t a35, uint64_t a36, int a37)
{

  return os_log_type_enabled(a1, type);
}

void OUTLINED_FUNCTION_49_15(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  dispatch_sync_f(a1, va, v9);
}

uint64_t OUTLINED_FUNCTION_63_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, int a14)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_76_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = v13;
  a10 = v12;
  a12 = v14;

  return surrogatePlayer_removeItemFromPlayQueueInternal(&a10);
}

BOOL OUTLINED_FUNCTION_94_6(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_log_type_t type, int a13, int a14)
{

  return os_log_type_enabled(a1, type);
}

void OUTLINED_FUNCTION_96_5(uint64_t a1, CFRange a2)
{
  a2.location = 0;

  CFArrayApplyFunction(v3, a2, v2, 0);
}

uint64_t OUTLINED_FUNCTION_97_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int16 a18, char a19, char a20, char a21)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t FigMetricItemInitialLikelyToKeepUpEventCreate(const __CFAllocator *a1, __int128 *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8, double a9, const void *a10, CFTypeRef *a11)
{
  ensureMetricEventTrace();
  if (!a11)
  {
    FigMetricItemInitialLikelyToKeepUpEventCreate_cold_1(&v37);
    return v37;
  }

  FigMetricEventGetClassID();
  v21 = CMDerivedObjectCreate();
  v22 = 0;
  if (!v21)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v24 = FigSimpleMutexCreate();
    *(DerivedStorage + 104) = v24;
    if (v24)
    {
      *DerivedStorage = 1;
      *(DerivedStorage + 8) = 5;
      if (a3)
      {
        v25 = CFRetain(a3);
      }

      else
      {
        Current = CFAbsoluteTimeGetCurrent();
        v25 = CFDateCreate(a1, Current);
      }

      *(DerivedStorage + 16) = v25;
      v27 = *a2;
      *(DerivedStorage + 40) = *(a2 + 2);
      *(DerivedStorage + 24) = v27;
      if (a4)
      {
        v28 = CFRetain(a4);
      }

      else
      {
        v28 = 0;
      }

      *(DerivedStorage + 48) = v28;
      if (a5)
      {
        v29 = CFRetain(a5);
      }

      else
      {
        v29 = 0;
      }

      *(DerivedStorage + 56) = v29;
      *(DerivedStorage + 64) = a9;
      if (a6)
      {
        v30 = CFRetain(a6);
      }

      else
      {
        v30 = 0;
      }

      *(DerivedStorage + 72) = v30;
      if (a7)
      {
        v31 = CFRetain(a7);
      }

      else
      {
        v31 = 0;
      }

      *(DerivedStorage + 80) = v31;
      if (a8)
      {
        v32 = CFRetain(a8);
      }

      else
      {
        v32 = 0;
      }

      *(DerivedStorage + 88) = v32;
      if (a10)
      {
        v33 = CFRetain(a10);
      }

      else
      {
        v33 = 0;
      }

      v21 = 0;
      *(DerivedStorage + 96) = v33;
      *a11 = 0;
      return v21;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, a11, 0);
    v21 = v35;
    v22 = cf;
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v21;
}

uint64_t FigMetricItemLikelyToKeepUpEventCreateInternal(const __CFAllocator *a1, __int128 *a2, const void *a3, const void *a4, const void *a5, const void *a6, CFTypeRef *a7, double a8)
{
  ensureMetricEventTrace();
  if (!a7)
  {
    FigMetricItemLikelyToKeepUpEventCreateInternal_cold_1(v30);
    return v30[0];
  }

  FigMetricEventGetClassID();
  v16 = CMDerivedObjectCreate();
  v17 = 0;
  if (!v16)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v19 = FigSimpleMutexCreate();
    *(DerivedStorage + 104) = v19;
    if (v19)
    {
      *DerivedStorage = 1;
      *(DerivedStorage + 8) = 6;
      if (a3)
      {
        v20 = CFRetain(a3);
      }

      else
      {
        Current = CFAbsoluteTimeGetCurrent();
        v20 = CFDateCreate(a1, Current);
      }

      *(DerivedStorage + 16) = v20;
      v22 = *a2;
      *(DerivedStorage + 40) = *(a2 + 2);
      *(DerivedStorage + 24) = v22;
      if (a4)
      {
        v23 = CFRetain(a4);
      }

      else
      {
        v23 = 0;
      }

      *(DerivedStorage + 48) = v23;
      if (a5)
      {
        v24 = CFRetain(a5);
      }

      else
      {
        v24 = 0;
      }

      *(DerivedStorage + 56) = v24;
      *(DerivedStorage + 64) = a8;
      if (a6)
      {
        v25 = CFRetain(a6);
      }

      else
      {
        v25 = 0;
      }

      v16 = 0;
      *(DerivedStorage + 72) = v25;
      *a7 = 0;
      return v16;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v29, v30[1]);
    v16 = v27;
    v17 = cf;
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v16;
}

uint64_t FigMetricItemInternalInitialLikelyToKeepUpEventCreateInternal(const __CFAllocator *a1, __int128 *a2, const void *a3, const void *a4, const void *a5, const void *a6, CFTypeRef *a7, double a8)
{
  ensureMetricEventTrace();
  if (!a7)
  {
    FigMetricItemInternalInitialLikelyToKeepUpEventCreateInternal_cold_1(v30);
    return v30[0];
  }

  FigMetricEventGetClassID();
  v16 = CMDerivedObjectCreate();
  v17 = 0;
  if (!v16)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v19 = FigSimpleMutexCreate();
    *(DerivedStorage + 104) = v19;
    if (v19)
    {
      *DerivedStorage = 1;
      *(DerivedStorage + 8) = 4;
      if (a3)
      {
        v20 = CFRetain(a3);
      }

      else
      {
        Current = CFAbsoluteTimeGetCurrent();
        v20 = CFDateCreate(a1, Current);
      }

      *(DerivedStorage + 16) = v20;
      v22 = *a2;
      *(DerivedStorage + 40) = *(a2 + 2);
      *(DerivedStorage + 24) = v22;
      if (a4)
      {
        v23 = CFRetain(a4);
      }

      else
      {
        v23 = 0;
      }

      *(DerivedStorage + 48) = v23;
      if (a5)
      {
        v24 = CFRetain(a5);
      }

      else
      {
        v24 = 0;
      }

      *(DerivedStorage + 56) = v24;
      *(DerivedStorage + 64) = a8;
      if (a6)
      {
        v25 = CFRetain(a6);
      }

      else
      {
        v25 = 0;
      }

      v16 = 0;
      *(DerivedStorage + 72) = v25;
      *a7 = 0;
      return v16;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v29, v30[1]);
    v16 = v27;
    v17 = cf;
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v16;
}

uint64_t meiltku_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage[7];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = DerivedStorage[9];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[10];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = DerivedStorage[11];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = DerivedStorage[12];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = DerivedStorage[2];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = DerivedStorage[6];
  if (v8)
  {
    CFRelease(v8);
  }

  return FigSimpleMutexDestroy();
}

uint64_t meiltku_setImmutable(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *DerivedStorage = 0;

  return FigSimpleMutexUnlock();
}

uint64_t meiltku_isMutable(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *DerivedStorage;
  FigSimpleMutexUnlock();
  return v2;
}

CFTypeRef meiltku_copySessionID(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 48);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t meiltku_setSessionID(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v4 = *(DerivedStorage + 48);
    *(DerivedStorage + 48) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    v5 = 0;
  }

  else
  {
    meiltku_setSessionID_cold_1(&v7);
    v5 = v7;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t meiltku_getMediaTime@<X0>(uint64_t a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *a2 = *(DerivedStorage + 24);
  *(a2 + 16) = *(DerivedStorage + 40);

  return FigSimpleMutexUnlock();
}

uint64_t meiltku_setMediaTime(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v4 = 0;
    v5 = *a2;
    *(DerivedStorage + 40) = *(a2 + 2);
    *(DerivedStorage + 24) = v5;
  }

  else
  {
    meiltku_setMediaTime_cold_1(&v7);
    v4 = v7;
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t meiltku_serialize(uint64_t a1, void *a2)
{
  value = 0;
  if (!a1)
  {
    v56 = 315;
LABEL_79:
    meiltku_serialize_cold_4(v56, &v60);
    v43 = v60;
    goto LABEL_53;
  }

  if (!a2)
  {
    v56 = 316;
    goto LABEL_79;
  }

  v4 = *(*(CMBaseObjectGetVTable() + 40) + 24);
  if (v4 && (v5 = v4(a1)) != 0)
  {
    v6 = CFRetain(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 40) + 32);
  if (v7 && (v8 = v7(a1)) != 0)
  {
    v9 = CFRetain(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 40) + 40);
  if (v10 && (v11 = v10(a1)) != 0)
  {
    v12 = CFRetain(v11);
  }

  else
  {
    v12 = 0;
  }

  empty = xpc_array_create_empty();
  v14 = xpc_array_create_empty();
  v15 = xpc_array_create_empty();
  v23 = v15;
  if (!empty)
  {
    meiltku_serialize_cold_3(v15, v16, v17, v18, v19, v20, v21, v22, v57, v58, SHIDWORD(v58), v60);
LABEL_83:
    v43 = 0;
    goto LABEL_47;
  }

  if (!v14)
  {
    meiltku_serialize_cold_2(v15, v16, v17, v18, v19, v20, v21, v22, v57, v58, SHIDWORD(v58), v60);
    goto LABEL_83;
  }

  if (!v15)
  {
    meiltku_serialize_cold_1(0, v16, v17, v18, v19, v20, v21, v22, v57, v58, SHIDWORD(v58), v60);
    goto LABEL_83;
  }

  v24 = *(*(CMBaseObjectGetVTable() + 40) + 8);
  if (v24)
  {
    v25 = v24(a1);
  }

  else
  {
    v25 = 0;
  }

  v26 = FigAlternateCopyAsXPCObject(v25, &value);
  if (v26)
  {
    goto LABEL_76;
  }

  v59 = a2;
  v27 = 0;
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_23:
  for (i = CFArrayGetCount(v6); v27 < i; i = 0)
  {
    v29 = xpc_dictionary_create_empty();
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    v31 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (!v31)
    {
LABEL_46:
      v43 = 4294954514;
      goto LABEL_47;
    }

    v32 = v31(ValueAtIndex, v29);
    if (v32)
    {
LABEL_86:
      v43 = v32;
      goto LABEL_47;
    }

    xpc_array_append_value(empty, v29);
    FigXPCRelease();
    ++v27;
    if (v6)
    {
      goto LABEL_23;
    }

LABEL_24:
    ;
  }

  v33 = 0;
  if (!v9)
  {
    goto LABEL_32;
  }

LABEL_31:
  for (j = CFArrayGetCount(v9); v33 < j; j = 0)
  {
    v35 = xpc_dictionary_create_empty();
    v36 = FigCFArrayGetValueAtIndex();
    v37 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (!v37)
    {
      goto LABEL_46;
    }

    v32 = v37(v36, v35);
    if (v32)
    {
      goto LABEL_86;
    }

    xpc_array_append_value(v14, v35);
    FigXPCRelease();
    ++v33;
    if (v9)
    {
      goto LABEL_31;
    }

LABEL_32:
    ;
  }

  v38 = 0;
  if (!v12)
  {
    goto LABEL_40;
  }

LABEL_39:
  for (k = CFArrayGetCount(v12); v38 < k; k = 0)
  {
    v40 = xpc_dictionary_create_empty();
    v41 = FigCFArrayGetValueAtIndex();
    v42 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (!v42)
    {
      goto LABEL_46;
    }

    v32 = v42(v41, v40);
    if (v32)
    {
      goto LABEL_86;
    }

    xpc_array_append_value(v23, v40);
    FigXPCRelease();
    ++v38;
    if (v12)
    {
      goto LABEL_39;
    }

LABEL_40:
    ;
  }

  v45 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v45)
  {
    v46 = v59;
    v47 = v45(a1);
  }

  else
  {
    v47 = -12782;
    v46 = v59;
  }

  xpc_dictionary_set_int64(v46, "EventID", v47);
  v48 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v48)
  {
    v48(&v60, a1);
  }

  else
  {
    v60 = *MEMORY[0x1E6960C70];
    v61 = *(MEMORY[0x1E6960C70] + 16);
  }

  v26 = FigXPCMessageSetCMTime();
  if (v26)
  {
    goto LABEL_76;
  }

  v49 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v49)
  {
    v49(a1);
  }

  v26 = FigXPCMessageSetCFDate();
  if (v26)
  {
LABEL_76:
    v43 = v26;
    goto LABEL_47;
  }

  v50 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v50)
  {
    v51 = v50(a1);
  }

  else
  {
    v51 = 0;
  }

  v52 = FigXPCMessageSetCFString();
  if (v52)
  {
    v43 = v52;
    if (v51)
    {
LABEL_75:
      CFRelease(v51);
    }
  }

  else
  {
    v53 = *(*(CMBaseObjectGetVTable() + 40) + 48);
    v54.n128_u64[0] = 0;
    if (v53)
    {
      v54.n128_f64[0] = v53(a1, v54);
    }

    xpc_dictionary_set_double(v46, "TimeTaken", v54.n128_f64[0]);
    v55 = *(*(CMBaseObjectGetVTable() + 40) + 16);
    if (v55)
    {
      v55(a1);
    }

    v43 = FigXPCMessageSetCFArray();
    if (!v43)
    {
      xpc_dictionary_set_value(v46, "Variant", value);
      xpc_dictionary_set_value(v46, "MediaPlaylistRequestEvents", empty);
      xpc_dictionary_set_value(v46, "MediaSegmentRequestEvents", v14);
      xpc_dictionary_set_value(v46, "ContentKeyRequestEvents", v23);
    }

    if (v51)
    {
      goto LABEL_75;
    }
  }

LABEL_47:
  FigXPCRelease();
  if (v6)
  {
    CFRelease(v6);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v12)
  {
    CFRelease(v12);
  }

LABEL_53:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRelease();
  return v43;
}

uint64_t FigCLCPCaptionGroupConverterFromSampleBufferCreate(_OWORD *a1, const void *a2, uint64_t *a3)
{
  v10 = 0;
  if (!a1)
  {
    FigCLCPCaptionGroupConverterFromSampleBufferCreate_cold_3(&v11);
    return v11;
  }

  if (!a3)
  {
    FigCLCPCaptionGroupConverterFromSampleBufferCreate_cold_2(&v11);
    return v11;
  }

  FigCaptionGroupConverterFromSampleBufferGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    FigCLCPCaptionGroupConverterFromSampleBufferCreate_cold_1(v6, &v10, &v11);
    return v11;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v8 = CFRetain(a2);
  }

  else
  {
    v8 = 0;
  }

  result = 0;
  *DerivedStorage = v8;
  *(DerivedStorage + 72) = *a1;
  *(DerivedStorage + 88) = 1;
  *a3 = v10;
  return result;
}

void clcpcgcfsb_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  clcpcgcfsbCaptionSlicerRelease(*DerivedStorage, *(DerivedStorage + 120));
  v2 = *(DerivedStorage + 152);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 152) = 0;
  }

  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 8) = 0;
  }

  v4 = *(DerivedStorage + 40);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 40) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}