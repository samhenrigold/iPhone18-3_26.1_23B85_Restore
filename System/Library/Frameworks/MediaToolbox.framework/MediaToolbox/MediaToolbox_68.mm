uint64_t frpfanout_dequeueProviderAndEnqueueConsumers(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count;
      v5 = 0;
      v6 = *MEMORY[0x1E695E4D0];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 16), v5);
        while (1)
        {
          v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v8)
          {
            if (v8(ValueAtIndex))
            {
              break;
            }
          }

          v9 = *(DerivedStorage + 8);
          v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (!v10)
          {
            goto LABEL_15;
          }

          v11 = v10(v9);
          if (!v11)
          {
            goto LABEL_15;
          }

          v12 = v11;
          SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v11, 0);
          if (SampleAttachmentsArray)
          {
            CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
          }

          if (FigCFDictionaryGetValue() != v6)
          {
            FigCFArrayApplyFunction();
          }

          CFRelease(v12);
        }

        ++v5;
      }

      while (v5 != v4);
    }
  }

LABEL_15:

  return FigSimpleMutexUnlock();
}

uint64_t frpfanout_enqueueFrameApplierFunc(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 8);
  if (v7)
  {

    return v7(a1, a2);
  }

  return result;
}

CFIndex frpfanout_resetOutputOfConsumers(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 16);
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v3 = result;
      for (i = 0; i != v3; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 16), i);
        VTable = CMBaseObjectGetVTable();
        v7 = *(VTable + 16);
        result = VTable + 16;
        v8 = *(v7 + 72);
        if (v8)
        {
          result = v8(ValueAtIndex);
        }
      }
    }
  }

  return result;
}

uint64_t frpfanout_resetPipeline(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v5 = CMBufferQueueReset(*DerivedStorage);
  v6 = v5;
  if (a2 && !v5)
  {
    frpfanout_resetOutputOfConsumers(a1);
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t FigVTTSerializerCreateForByteStream(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (!a2)
  {
    FigVTTSerializerCreateForByteStream_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigVTTSerializerCreateForByteStream_cold_1(&v8);
    return v8;
  }

  FigVTTSerializerGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    FigBytePumpGetFigBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    *a3 = 0;
  }

  return v5;
}

uint64_t figVTTSerializerForByteStream_Invalidate()
{
  FigBytePumpGetFigBaseObject();
  CMBaseObjectGetDerivedStorage();
  if (FigAtomicCompareAndSwap32())
  {
    CMBaseObject = CMByteStreamGetCMBaseObject();
    if (CMBaseObject)
    {
      v1 = CMBaseObject;
      v2 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v2)
      {
        v2(v1);
      }
    }
  }

  return 0;
}

void figVTTSerializerForByteStream_Finalize()
{
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  figVTTSerializerForByteStream_Invalidate();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

CFStringRef figVTTSerializerForByteStream_CopyDebugDesc()
{
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigVTTSerializerForByteStream: %@", *DerivedStorage);
}

uint64_t figVTTSerializerForByteStream_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a4)
      {
        FigBytePumpGetFigBaseObject();
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (CFEqual(a2, @"IncludeDebugInfo"))
        {
          result = 0;
          v8 = MEMORY[0x1E695E4D0];
          if (!*(DerivedStorage + 8))
          {
            v8 = MEMORY[0x1E695E4C0];
          }

          v9 = *v8;
        }

        else
        {
          v9 = 0;
          result = 4294954512;
        }

        *a4 = v9;
      }

      else
      {
        figVTTSerializerForByteStream_CopyProperty_cold_1(&v10);
        return v10;
      }
    }

    else
    {
      figVTTSerializerForByteStream_CopyProperty_cold_2(&v11);
      return v11;
    }
  }

  else
  {
    figVTTStyleBlock_copyNodeDocumentSerialization_cold_2(&v12);
    return v12;
  }

  return result;
}

uint64_t figVTTSerializerForByteStream_SetProperty(int a1, CFTypeRef cf1, const void *a3)
{
  if (cf1)
  {
    if (a3)
    {
      if (CFEqual(cf1, @"IncludeDebugInfo"))
      {
        FigBytePumpGetFigBaseObject();
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v5 = CFGetTypeID(a3);
        if (v5 == CFBooleanGetTypeID())
        {
          Value = CFBooleanGetValue(a3);
          result = 0;
          *(DerivedStorage + 8) = Value;
        }

        else
        {
          figVTTSerializerForByteStream_SetProperty_cold_1(&v8);
          return v8;
        }
      }

      else
      {
        return 4294954512;
      }
    }

    else
    {
      figVTTSerializerForByteStream_SetProperty_cold_2(&v9);
      return v9;
    }
  }

  else
  {
    figVTTSerializerForByteStream_SetProperty_cold_3(&v10);
    return v10;
  }

  return result;
}

uint64_t figVTTSerializerForByteStream_Flush()
{
  FigBytePumpGetFigBaseObject();
  v0 = *CMBaseObjectGetDerivedStorage();
  v1 = *(CMBaseObjectGetVTable() + 16);
  if (*v1 >= 2uLL)
  {
    v2 = v1[5];
    if (v2)
    {
      v2(v0, 1);
    }
  }

  return 0;
}

uint64_t RegisterFigPlayerInterstitialCoordinatorType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigPlayerInterstitialCoordinatorCreate(uint64_t a1, const void *a2, uint64_t a3, void *a4, CFTypeRef *a5)
{
  cf = 0;
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (CFPreferenceNumberWithDefault)
  {
    CMTimeMake(&v29, CFPreferenceNumberWithDefault, 1000);
    *gAudioTransitionScheduleAdvance = v29;
  }

  if (!a1)
  {
    FigPlayerInterstitialCoordinatorCreate_cold_13(&v29);
LABEL_32:
    value_low = LODWORD(v29.value);
    goto LABEL_33;
  }

  if (!a2)
  {
    FigPlayerInterstitialCoordinatorCreate_cold_12(&v29);
    goto LABEL_32;
  }

  if (!a3)
  {
    FigPlayerInterstitialCoordinatorCreate_cold_11(&v29);
    goto LABEL_32;
  }

  if (!a4)
  {
    FigPlayerInterstitialCoordinatorCreate_cold_10(&v29);
    goto LABEL_32;
  }

  if (*a4)
  {
    FigPlayerInterstitialCoordinatorCreate_cold_1(&v29);
    goto LABEL_32;
  }

  if (!a5)
  {
    FigPlayerInterstitialCoordinatorCreate_cold_9(&v29);
    goto LABEL_32;
  }

  v10 = a5;
  v11 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&FigPlayerInterstitialCoordinatorGetClassID_sRegisterFigPlayerInterstitialCoordinatorTypeOnce, RegisterFigPlayerInterstitialCoordinatorType);
  v12 = CMDerivedObjectCreate();
  if (!v12)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v14 = DerivedStorage;
      *DerivedStorage = FigDispatchQueueCreateWithPriority();
      if (fpic_getTimerQueue_onceToken != -1)
      {
        FigPlayerInterstitialCoordinatorCreate_cold_2();
      }

      v15 = fpic_getTimerQueue_sTimerQueue;
      if (fpic_getTimerQueue_sTimerQueue)
      {
        dispatch_retain(fpic_getTimerQueue_sTimerQueue);
      }

      v14[1] = v15;
      v14[2] = FigDispatchQueueCreateWithPriority();
      if (fpic_getNotificationQueue_onceToken != -1)
      {
        FigPlayerInterstitialCoordinatorCreate_cold_3();
      }

      v16 = fpic_getNotificationQueue_sNotificationQueue;
      if (fpic_getNotificationQueue_sNotificationQueue)
      {
        dispatch_retain(fpic_getNotificationQueue_sNotificationQueue);
      }

      v14[3] = v16;
      v17 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      v14[4] = v17;
      if (v17)
      {
        v18 = FigCFWeakReferenceHolderCreateWithReferencedObject();
        v14[5] = v18;
        if (v18)
        {
          v14[19] = FigSimpleMutexCreate();
          v14[6] = CFRetain(a2);
          v19 = FigCFWeakReferenceHolderCreateWithReferencedObject();
          v14[7] = v19;
          if (v19)
          {
            __copy_assignment_8_8_t0w8_pa0_56768_8_pa0_52838_16_pa0_24134_24_pa0_7605_32_pa0_17116_40_pa0_6263_48_pa0_54615_56_pa0_17098_64_pa0_24200_72_pa0_8969_80(v14 + 8, a4);
            v20 = MEMORY[0x1E695E9D8];
            v21 = MEMORY[0x1E695E9E8];
            v14[23] = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            v22 = MEMORY[0x1E695E9C0];
            v14[25] = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
            v14[26] = CFArrayCreateMutable(v11, 0, v22);
            v14[82] = CFArrayCreateMutable(v11, 0, v22);
            v14[83] = CFArrayCreateMutable(v11, 0, v22);
            v14[85] = CFArrayCreateMutable(v11, 0, v22);
            v14[84] = CFDictionaryCreateMutable(v11, 0, v20, v21);
            v14[86] = CFSetCreateMutable(v11, 0, MEMORY[0x1E695E9F8]);
            v14[87] = CFDictionaryCreateMutable(v11, 0, v20, v21);
            v14[88] = CFArrayCreateMutable(v11, 0, v22);
            v14[89] = CFDictionaryCreateMutable(v11, 0, v20, v21);
            *(v14 + 223) = FPSupport_InitialSeekIDForSource(3);
            v14[146] = @"Advance";
            v23 = MEMORY[0x1E6960C70];
            v24 = *MEMORY[0x1E6960C70];
            *(v14 + 604) = *MEMORY[0x1E6960C70];
            v25 = *(v23 + 16);
            *(v14 + 620) = v25;
            *(v14 + 65) = v24;
            v14[132] = v25;
            *(v14 + 1196) = 0;
            *(v14 + 147) = 0u;
            *(v14 + 82) = xmmword_196E791C0;
            v14[163] = 0x300000000;
            if (v14[25] && v14[26] && v14[82] && v14[83] && v14[85] && v14[86] && v14[87])
            {
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              value_low = 0;
              *v10 = cf;
              return value_low;
            }

            FigPlayerInterstitialCoordinatorCreate_cold_4(&v29);
          }

          else
          {
            FigPlayerInterstitialCoordinatorCreate_cold_5(&v29);
          }
        }

        else
        {
          FigPlayerInterstitialCoordinatorCreate_cold_6(&v29);
        }
      }

      else
      {
        FigPlayerInterstitialCoordinatorCreate_cold_7(&v29);
      }
    }

    else
    {
      FigPlayerInterstitialCoordinatorCreate_cold_8(&v29);
    }

    goto LABEL_32;
  }

  value_low = v12;
LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

  return value_low;
}

void *__copy_assignment_8_8_t0w8_pa0_56768_8_pa0_52838_16_pa0_24134_24_pa0_7605_32_pa0_17116_40_pa0_6263_48_pa0_54615_56_pa0_17098_64_pa0_24200_72_pa0_8969_80(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  result[4] = a2[4];
  result[5] = a2[5];
  result[6] = a2[6];
  result[7] = a2[7];
  result[8] = a2[8];
  result[9] = a2[9];
  result[10] = a2[10];
  return result;
}

void fpic_NotifyServiceCurrentEvent(uint64_t a1, uint64_t a2, const void *a3, const void *a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = CFRetain(*(DerivedStorage + 32));
  CFRetain(a3);
  if (a4)
  {
    CFRetain(a4);
  }

  if (a5)
  {
    CFRetain(a5);
  }

  v10 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __fpic_NotifyServiceCurrentEvent_block_invoke;
  block[3] = &__block_descriptor_72_e5_v8__0l;
  block[4] = v9;
  block[5] = a3;
  block[6] = a4;
  block[7] = a5;
  block[8] = DerivedStorage;
  dispatch_async(v10, block);
}

void FigCFRelease_12(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigPlayerInterstitialRemoteCoordinatorCreate(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, void *a5, void **a6)
{
  values = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2)
  {
    FigPlayerInterstitialRemoteCoordinatorCreate_cold_10(&v15);
    return v15;
  }

  if (!a3)
  {
    FigPlayerInterstitialRemoteCoordinatorCreate_cold_9(&v15);
    return v15;
  }

  if (!a4)
  {
    FigPlayerInterstitialRemoteCoordinatorCreate_cold_8(&v15);
    return v15;
  }

  if (!a5)
  {
    FigPlayerInterstitialRemoteCoordinatorCreate_cold_7(&v15);
    return v15;
  }

  if (*a5)
  {
    FigPlayerInterstitialRemoteCoordinatorCreate_cold_1(&v15);
    return v15;
  }

  if (!a6)
  {
    FigPlayerInterstitialRemoteCoordinatorCreate_cold_6(&v15);
    return v15;
  }

  MEMORY[0x19A8D3660](&FigPlayerInterstitialCoordinatorGetClassID_sRegisterFigPlayerInterstitialCoordinatorTypeOnce, RegisterFigPlayerInterstitialCoordinatorType);
  v11 = CMDerivedObjectCreate();
  if (!v11)
  {
    CMBaseObjectGetDerivedStorage();
    FigPlayerInterstitialRemoteCoordinatorCreate_cold_5(&v15);
    return v15;
  }

  return v11;
}

uint64_t FigPlayerInterstitialCoordinatorIsRemote(uint64_t result)
{
  if (result)
  {
    MEMORY[0x19A8D3660](&FigPlayerInterstitialCoordinatorGetClassID_sRegisterFigPlayerInterstitialCoordinatorTypeOnce, RegisterFigPlayerInterstitialCoordinatorType);
    result = CMBaseObjectIsMemberOfClass();
    if (result)
    {
      return CMBaseObjectGetVTable() == &kFigPlayerInterstitialRemoteCoordinatorVTable;
    }
  }

  return result;
}

uint64_t FigPlayerInterstitialRemoteCoordinatorSetInterstitialPlayer(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigPlayerInterstitialRemoteCoordinatorSetInterstitialPlayer_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = a1;
  block[5] = DerivedStorage;
  block[6] = a2;
  dispatch_sync(v5, block);
  return 0;
}

void __FigPlayerInterstitialRemoteCoordinatorSetInterstitialPlayer_block_invoke(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1EAF178D0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = a1[5];
  v3 = a1[6];
  v5 = *(v4 + 32);
  *(v4 + 32) = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t FigPlayerInterstitialRemoteCoordinatorSetEvents(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigPlayerInterstitialRemoteCoordinatorSetEvents_block_invoke;
  block[3] = &unk_1E7494FB8;
  block[6] = a2;
  block[7] = a3;
  block[4] = &v10;
  block[5] = a1;
  block[8] = DerivedStorage;
  dispatch_sync(v7, block);
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (!*(v11 + 24))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  _Block_object_dispose(&v10, 8);
  return 0;
}

void __FigPlayerInterstitialRemoteCoordinatorSetEvents_block_invoke(void *a1)
{
  v1 = a1;
  v2 = a1[7];
  v32 = a1[6];
  v3 = a1[5];
  v4 = *(a1[4] + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v8 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v8)
    {
      v16 = v8;
      v29 = v4;
      v31 = v1;
      if (Count < 1)
      {
        LOBYTE(v17) = 0;
      }

      else
      {
        v17 = 0;
        for (i = 0; i != Count; ++i)
        {
          value = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(v2, i);
          cf = 0;
          if (FigPlayerInterstitialEventCreateFromDictionary(v32, ValueAtIndex, &cf) || !cf)
          {
            break;
          }

          v20 = FigPlayerInterstitialEventCopyIdentifier(cf);
          if (*(DerivedStorage + 144) && !v17)
          {
            v17 = FigCFEqual();
          }

          if ((*(DerivedStorage + 96))(v3, v16, cf, 0, &value) || !value)
          {
            break;
          }

          CFArrayAppendValue(Mutable, value);
          CFRelease(cf);
          if (value)
          {
            CFRelease(value);
          }

          if (v20)
          {
            CFRelease(v20);
          }
        }
      }

      CFRelease(v16);
      v4 = v29;
      v1 = v31;
    }

    else
    {
      __FigPlayerInterstitialRemoteCoordinatorSetEvents_block_invoke_cold_1(0, v9, v10, v11, v12, v13, v14, v15, v27, v28, SHIDWORD(v28), v30);
      LOBYTE(v17) = 0;
    }

    *(v4 + 24) = v17;
    v22 = v1 + 8;
    v21 = v1[8];
    v23 = *(v21 + 136);
    *(v21 + 136) = Mutable;
    CFRetain(Mutable);
    if (v23)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *(v4 + 24) = 0;
    v22 = v1 + 8;
    v26 = v1[8];
    v23 = *(v26 + 136);
    *(v26 + 136) = 0;
    if (v23)
    {
LABEL_24:
      CFRelease(v23);
    }
  }

  v24 = *(v1[4] + 8);
  if (*(v24 + 24))
  {
    goto LABEL_28;
  }

  v25 = *(*v22 + 144);
  if (v25)
  {
    CFRelease(v25);
    *(*v22 + 144) = 0;
LABEL_28:
    if (!Mutable)
    {
      return;
    }

    goto LABEL_29;
  }

  *(v24 + 24) = 1;
  if (Mutable)
  {
LABEL_29:
    CFRelease(Mutable);
  }
}

uint64_t FigPlayerInterstitialRemoteCoordinatorSetCurrentEvent(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v5)
  {
    v6 = v5;
    v7 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __FigPlayerInterstitialRemoteCoordinatorSetCurrentEvent_block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = DerivedStorage;
    block[5] = a2;
    dispatch_sync(v7, block);
    v8 = fpirc_CopyCurrentEvent(a1);
    v9 = v8 != 0;
    if (v8)
    {
      CFRelease(v8);
    }

    (*(DerivedStorage + 120))(a1, v6, v9, NAN);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CFRelease(v6);
    return 0;
  }

  else
  {
    FigPlayerInterstitialRemoteCoordinatorSetCurrentEvent_cold_1(&v12);
    return v12;
  }
}

void __FigPlayerInterstitialRemoteCoordinatorSetCurrentEvent_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 144);
  *(v2 + 144) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t fpirc_CopyCurrentEvent(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __fpirc_CopyCurrentEvent_block_invoke;
    block[3] = &unk_1E747EC60;
    block[4] = &v8;
    block[5] = a1;
    block[6] = v3;
    dispatch_sync(v4, block);
    CFRelease(v3);
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_1967BBDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigPlayerInterstitialRemoteCoordinatorSetCurrentEventSkippableStateWithLabel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v7)
  {
    v8 = *(DerivedStorage + 16);
    block = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __FigPlayerInterstitialRemoteCoordinatorSetCurrentEventSkippableStateWithLabel_block_invoke;
    v18 = &unk_1E7494FE0;
    v21 = a1;
    v22 = v7;
    v25 = v4;
    v23 = DerivedStorage;
    v24 = a3;
    v19 = v30;
    v20 = &v26;
    dispatch_sync(v8, &block);
    if (*(v27 + 24))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        FigCFDictionarySetValue();
        FigCFDictionarySetInt();
        FigCFDictionarySetValue();
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        v10 = 0;
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, block, v16);
        v10 = v13;
        Mutable = 0;
      }
    }

    else
    {
      Mutable = 0;
      v10 = 0;
    }

    CFRelease(v7);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, block, v16);
    v10 = v12;
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(v30, 8);
  return v10;
}

void sub_1967BC02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 80), 8);
  _Unwind_Resume(a1);
}

void __FigPlayerInterstitialRemoteCoordinatorSetCurrentEventSkippableStateWithLabel_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 24) = fpirc_GetCurrentEventWrapperOnQueue(*(a1 + 48), *(a1 + 56));
  if (dword_1EAF178D0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = *(a1 + 64);
  v3 = *(a1 + 72);
  *(v4 + 152) = *(a1 + 80);
  v5 = *(v4 + 160);
  *(v4 + 160) = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

const void *fpirc_GetCurrentEventWrapperOnQueue(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 144))
  {
    return 0;
  }

  v5 = DerivedStorage;
  v6 = *(DerivedStorage + 136);
  if (!v6)
  {
    return 0;
  }

  Count = CFArrayGetCount(v6);
  if (Count < 1)
  {
    return 0;
  }

  v8 = Count;
  v9 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v5 + 136), v9);
    v11 = (*(v5 + 72))(a1, a2, ValueAtIndex);
    v12 = FigPlayerInterstitialEventCopyIdentifier(v11);
    if (FigCFEqual())
    {
      break;
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (v8 == ++v9)
    {
      return 0;
    }
  }

  return ValueAtIndex;
}

uint64_t fpic_finalize(uint64_t a1)
{
  v37 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  fpic_DisengageFromPrimaryItem(a1, v3, &v37);
  v4 = v37;
  fpic_DequeueItemsFromInterstitialPlayer(a1, v37, v3);
  v5 = CMBaseObjectGetDerivedStorage();
  StopAndReleaseTimer((v5 + 816));
  *(v5 + 872) = 0;
  StopAndReleaseTimer((DerivedStorage + 824));
  StopAndReleaseTimer((DerivedStorage + 832));
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (v3)
  {
    CFRelease(v3);
  }

  v6 = *(DerivedStorage + 40);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 40) = 0;
  }

  v7 = *(DerivedStorage + 48);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 48) = 0;
  }

  v8 = *(DerivedStorage + 56);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 56) = 0;
  }

  StopAndReleaseTimer((DerivedStorage + 752));
  *(DerivedStorage + 744) = 0;
  v9 = MEMORY[0x1E6960C70];
  v36 = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 720) = *MEMORY[0x1E6960C70];
  v10 = *(v9 + 16);
  *(DerivedStorage + 736) = v10;
  StopAndReleaseTimer((DerivedStorage + 800));
  *(DerivedStorage + 792) = 0;
  *(DerivedStorage + 768) = v36;
  *(DerivedStorage + 784) = v10;
  v11 = *(DerivedStorage + 704);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 704) = 0;
  }

  v12 = *(DerivedStorage + 712);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 712) = 0;
  }

  v13 = *(DerivedStorage + 696);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 696) = 0;
  }

  v14 = *(DerivedStorage + 672);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 672) = 0;
  }

  v15 = *(DerivedStorage + 688);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 688) = 0;
  }

  v16 = *(DerivedStorage + 656);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 656) = 0;
  }

  v17 = *(DerivedStorage + 664);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 664) = 0;
  }

  v18 = *(DerivedStorage + 680);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 680) = 0;
  }

  v19 = *(DerivedStorage + 184);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 184) = 0;
  }

  v20 = *(DerivedStorage + 200);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 200) = 0;
  }

  v21 = *(DerivedStorage + 208);
  if (v21)
  {
    CFRelease(v21);
    *(DerivedStorage + 208) = 0;
  }

  v22 = *(DerivedStorage + 216);
  if (v22)
  {
    CFRelease(v22);
    *(DerivedStorage + 216) = 0;
  }

  v23 = *(DerivedStorage + 1152);
  if (v23)
  {
    CFRelease(v23);
    *(DerivedStorage + 1152) = 0;
  }

  v24 = *(DerivedStorage + 1248);
  if (v24)
  {
    CFRelease(v24);
    *(DerivedStorage + 1248) = 0;
  }

  v25 = *(DerivedStorage + 1208);
  if (v25)
  {
    CFRelease(v25);
    *(DerivedStorage + 1208) = 0;
  }

  v26 = *(DerivedStorage + 1264);
  if (v26)
  {
    CFRelease(v26);
    *(DerivedStorage + 1264) = 0;
  }

  v27 = *(DerivedStorage + 1272);
  if (v27)
  {
    CFRelease(v27);
    *(DerivedStorage + 1272) = 0;
  }

  v28 = *(DerivedStorage + 1280);
  if (v28)
  {
    CFRelease(v28);
    *(DerivedStorage + 1280) = 0;
  }

  v29 = *(DerivedStorage + 1288);
  if (v29)
  {
    CFRelease(v29);
    *(DerivedStorage + 1288) = 0;
  }

  v30 = *(DerivedStorage + 1296);
  if (v30)
  {
    CFRelease(v30);
    *(DerivedStorage + 1296) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v31 = *(DerivedStorage + 8);
  if (v31)
  {
    dispatch_release(v31);
    *(DerivedStorage + 8) = 0;
  }

  v32 = *(DerivedStorage + 16);
  if (v32)
  {
    dispatch_release(v32);
    *(DerivedStorage + 16) = 0;
  }

  v33 = *(DerivedStorage + 24);
  if (v33)
  {
    dispatch_release(v33);
    *(DerivedStorage + 24) = 0;
  }

  FigSimpleMutexDestroy();
  if (v4)
  {
    CFRelease(v4);
  }

  v34 = *(DerivedStorage + 32);
  if (v34)
  {
    CFRelease(v34);
    *(DerivedStorage + 32) = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterCheckWeakListenersWereRemovedBeforeFinalization();
}

CFStringRef fpic_copyDebugDesc(uint64_t a1)
{
  cf = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v2)
  {
    v2(a1, &cf);
    v2 = cf;
  }

  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigPlayerInterstitialCoordinator %p, events %@]", a1, v2);
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t fpic_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v8)
  {
    v9 = *DerivedStorage;
    block = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __fpic_CopyProperty_block_invoke;
    v17 = &unk_1E7494FB8;
    v18 = &v23;
    v19 = a2;
    v20 = a1;
    v21 = a4;
    v22 = v8;
    dispatch_sync(v9, &block);
    CFRelease(v8);
    v10 = *(v24 + 6);
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, block, v15);
    v10 = v12;
    *(v24 + 6) = v12;
  }

  _Block_object_dispose(&v23, 8);
  return v10;
}

void sub_1967BC9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t fpic_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  v8 = *DerivedStorage;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __fpic_SetProperty_block_invoke;
  v11[3] = &unk_1E74950E8;
  v11[6] = a3;
  v11[7] = DerivedStorage;
  v11[4] = &v12;
  v11[5] = a2;
  v11[8] = a1;
  v11[9] = v7;
  dispatch_sync(v8, v11);
  if (v7)
  {
    CFRelease(v7);
  }

  v9 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v9;
}

void sub_1967BCAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double fpic_DisengageFromPrimaryItem(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 160))
  {
    v8 = DerivedStorage;
    if (dword_1EAF178D0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(v8 + 1224))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v10 = *(v8 + 1224);
      if (v10)
      {
        CFRelease(v10);
        *(v8 + 1224) = 0;
      }
    }

    v11 = CMBaseObjectGetDerivedStorage();
    if (*(v11 + 376) | *(v11 + 377))
    {
      cf[0] = 0;
      PrimaryPlayerAndCopyWrapper = fpic_GetPrimaryPlayerAndCopyWrapper(a1, cf);
      if (PrimaryPlayerAndCopyWrapper)
      {
        fpic_TransitionPlayback(a1, PrimaryPlayerAndCopyWrapper, 1, a2);
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }

    fpic_setCoordinationMediaSelectionCriteria(a1, 0);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    FigGetNotifyingObjectForMediaAccessibilityChanged(DefaultLocalCenter, v14);
    FigNotificationCenterRemoveWeakListener();
    v15 = *(v8 + 160);
    if (v15)
    {
      CFRelease(v15);
      *(v8 + 160) = 0;
    }

    v16 = *(v8 + 168);
    if (v16)
    {
      CFRelease(v16);
      *(v8 + 168) = 0;
    }

    v17 = *(v8 + 176);
    if (v17)
    {
      CFRelease(v17);
      *(v8 + 176) = 0;
    }

    v18 = *(v8 + 1208);
    if (v18)
    {
      CFRelease(v18);
      *(v8 + 1208) = 0;
    }

    v19 = *(v8 + 1152);
    if (v19)
    {
      CFRelease(v19);
      *(v8 + 1152) = 0;
    }

    v20 = *(v8 + 192);
    if (v20)
    {
      CFRelease(v20);
      *(v8 + 192) = 0;
    }

    *(v8 + 1142) = 0;
    v21 = MEMORY[0x1E6960C70];
    v25 = *MEMORY[0x1E6960C70];
    *(v8 + 1064) = *MEMORY[0x1E6960C70];
    v22 = *(v21 + 16);
    *(v8 + 1080) = v22;
    *(v8 + 1040) = v25;
    *(v8 + 1056) = v22;
    *(v8 + 604) = v25;
    *(v8 + 620) = v22;
    *(v8 + 384) = v25;
    *(v8 + 400) = v22;
    fpic_ForceCancelInitiatedSeek(a1);
    *(CMBaseObjectGetDerivedStorage() + 900) = 0;
    *(v8 + 1196) = 0;
    *(v8 + 1176) = 0u;
    v23 = CMBaseObjectGetDerivedStorage();
    *(v23 + 256) = 0;
    *(v23 + 296) = 0;
    *(v23 + 432) = v25;
    *(v23 + 448) = v22;
    *(v23 + 480) = v25;
    *(v23 + 496) = v22;
    *(v23 + 504) = v25;
    *(v23 + 520) = v22;
    *(v23 + 1144) = 0;
    *(v23 + 644) = v22;
    *(v23 + 628) = v25;
    *(v23 + 1147) = 0;
    fpic_ResetCurrentEventList(a1, a2, a3);
    CFArrayRemoveAllValues(*(v8 + 200));
    CFArrayRemoveAllValues(*(v8 + 208));
    CFSetRemoveAllValues(*(v8 + 688));
    CFDictionaryRemoveAllValues(*(v8 + 672));
    CFDictionaryRemoveAllValues(*(v8 + 696));
    if (dword_1EAF178D0)
    {
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

uint64_t fpic_GetPrimaryPlayerAndCopyWrapper(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v5)
  {
    v6 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v6 || (v7 = v6, v8 = (*(DerivedStorage + 72))(a1, v6, v5), CFRelease(v7), !v8))
    {
      CFRelease(v5);
      v8 = 0;
      v5 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  *a2 = v5;
  return v8;
}

void fpic_setCoordinationMediaSelectionCriteria(uint64_t a1, const void *a2)
{
  cf[24] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  cf[0] = 0;
  fpic_copyInterstitialPlayer(a1, v5, cf);
  if (FigCFEqual())
  {
LABEL_2:
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    goto LABEL_16;
  }

  if (dword_1EAF178D0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = *(DerivedStorage + 1160);
  *(DerivedStorage + 1160) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (*(DerivedStorage + 160))
  {
    FigPlaybackItemGetFigBaseObject();
    v9 = v8;
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v10)
    {
      v10(v9, @"ItemCoordinationMediaSelectionCriteria", a2);
    }
  }

  if (cf[0])
  {
    FigPlayerGetFigBaseObject();
    v12 = v11;
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v13)
    {
      v13(v12, @"PlayerCoordinationMediaSelectionCriteria", a2);
    }

    goto LABEL_2;
  }

LABEL_16:
  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t fpic_ForceCancelInitiatedSeek(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  fpic_FinishInitiatedSeek();
  fpic_clearIntendedCurrentItemMoment(a1);
  result = CMBaseObjectGetDerivedStorage();
  if (!(*(result + 376) | *(result + 377)))
  {
    *(DerivedStorage + 1088) = 0;
  }

  return result;
}

double fpic_ResetCurrentEventList(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (*a3 && (v5 = CFGetTypeID(*a3), Mutable = CFArrayGetTypeID(), v5 == Mutable))
  {
    v14 = *a3;
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v14 = Mutable;
  }

  if (!v14)
  {
    return fpic_ResetCurrentEventList_cold_1(Mutable, v7, v8, v9, v10, v11, v12, v13, v17, v18, SHIDWORD(v18), v19);
  }

  FirstCurrentItem = fpic_GetFirstCurrentItem();
  if (FirstCurrentItem)
  {
    fpic_StopRecordingActiveInterstitialItemPlayoutTime(a1, FirstCurrentItem);
  }

  result = fpic_removeAllCurrentEventsAfterEvent(a1, v14, 0, 0, 1);
  *a3 = v14;
  return result;
}

BOOL fpic_skipShowInterstitial(uint64_t a1)
{
  Count = CFArrayGetCount(*(a1 + 656));
  if (Count < 1)
  {
    return 1;
  }

  v3 = Count;
  v4 = 1;
  while (fpic_GetPerEventTrackingCount(a1, v4 - 1) == 1)
  {
    PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(a1, v4 - 1, 0, @"PlaybackItem");
    result = PerAssetPerEventTrackedObject == @"DummyItem";
    if (v4 < v3)
    {
      ++v4;
      if (PerAssetPerEventTrackedObject == @"DummyItem")
      {
        continue;
      }
    }

    return result;
  }

  return 0;
}

uint64_t fpic_flipInterstitialAndPrimaryVisibility(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = (DerivedStorage + 1232);
  if (*(DerivedStorage + 1232))
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v11 = (DerivedStorage + 1232);
    if (UpTimeNanoseconds >= *v9)
    {
LABEL_5:
      *v11 = 0;
      goto LABEL_6;
    }

    if (*(DerivedStorage + 1240) != a2)
    {
      v12 = CMBaseObjectGetDerivedStorage();
      v13 = v12 + 136;
      (*(v12 + 136))(a1, a3, *(v12 + 1240) == 0, NAN);
      v11 = (v13 + 1096);
      goto LABEL_5;
    }
  }

LABEL_6:
  v14 = FigGetUpTimeNanoseconds();
  v15 = (a4 * 1000000000.0);
  if (*v9 > v14 && *v9 - v14 < (v15 + 1000000))
  {
    v16 = CMBaseObjectGetDerivedStorage();
    v17 = v16 + 136;
    (*(v16 + 136))(a1, a3, *(v16 + 1240) == 0, NAN);
    *(v17 + 1096) = 0;
  }

  v19 = *(DerivedStorage + 136);
  v18 = DerivedStorage + 136;
  result = v19(a1, a3, a2, a4);
  *(v18 + 1104) = a2;
  *(v18 + 1096) = v14 + v15;
  return result;
}

void fpic_GetEffectiveCurrentItemMoment(uint64_t a3@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 968))
  {
    v5 = *(DerivedStorage + 936);
    v6 = *(DerivedStorage + 952);
    *(a3 + 32) = *(DerivedStorage + 968);
    *a3 = v5;
    *(a3 + 16) = v6;
  }

  else
  {

    fpic_CurrentItemMoment(a3);
  }
}

void fpic_UngatePrimaryPlayback(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  v4 = *MEMORY[0x1E6960C70];
  *&v15.value = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  v15.epoch = v5;
  v6 = *(DerivedStorage + 160);
  if (v6)
  {
    v14 = v4;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v7)
    {
      v7(v6, &v15);
    }

    CMTimeMake(&rhs, 5, 1000);
    *&lhs.value = kJumpForwardTolerance;
    lhs.epoch = 0;
    CMTimeAdd(&v16, &lhs, &rhs);
    lhs = v15;
    CMTimeAdd(&rhs, &lhs, &v16);
    lhs.value = rhs.value;
    flags = rhs.flags;
    lhs.timescale = rhs.timescale;
    if ((rhs.flags & 0x1D) == 1 && *(DerivedStorage + 1224))
    {
      epoch = rhs.epoch;
      StopAndReleaseTimer((DerivedStorage + 824));
      rhs.value = lhs.value;
      rhs.timescale = lhs.timescale;
      rhs.flags = flags;
      rhs.epoch = epoch;
      v18 = 0;
      v19 = 1;
      v20[0] = 0;
      *(v20 + 3) = 0;
      fpic_CreateAndPrimeItemTimer();
    }

    fpic_flipInterstitialAndPrimaryVisibility(a1, 0, v3, NAN);
    FigPlaybackItemGetFigBaseObject();
    v10 = v9;
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    v4 = v14;
    if (v11)
    {
      v11(v10, @"TimeToPausePlayback", 0, v14);
      v4 = v14;
    }
  }

  *(DerivedStorage + 1064) = v4;
  *(DerivedStorage + 1080) = v5;
  *(DerivedStorage + 1088) = 0;
  if (dword_1EAF178D0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

void fpic_CurrentItemMoment(uint64_t a1@<X8>)
{
  cf = 0;
  FigPlaybackItemGetFigBaseObject();
  v3 = v2;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(v3, @"currentDateAndTime", *MEMORY[0x1E695E480], &cf);
    v5 = cf;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  FigDateTimeMakeFromDictionary(v5, a1);
  if (cf)
  {
    CFRelease(cf);
  }
}

void fpic_ServiceCurrentEventTimerProc(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (dword_1EAF178D0 >= 5)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v1)
  {
    fpic_ServiceCurrentEvent(v1, MEMORY[0x1E6960C70]);
    CFRelease(v1);
  }
}

uint64_t fpic_ServiceCurrentEvent(NSObject **a1, __int128 *a2)
{
  v164 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v86 = 0;
  PrimaryPlayerAndCopyWrapper = fpic_GetPrimaryPlayerAndCopyWrapper(a1, &v86);
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  v6 = v5;
  if (!PrimaryPlayerAndCopyWrapper || !v5)
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v10 = CMBaseObjectGetDerivedStorage();
    v11 = *(v10 + 1304) + 1;
    *(v10 + 1304) = v11;
    if (v11 > *(v10 + 1308) && UpTimeNanoseconds < *(v10 + 1320) + *(v10 + 1312))
    {
      v12 = 4294951625;
      goto LABEL_86;
    }

    *(v10 + 1312) = UpTimeNanoseconds;
    if (PrimaryPlayerAndCopyWrapper)
    {
      if (v6)
      {
LABEL_10:
        v12 = 4294951625;
        goto LABEL_87;
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v79, v80, v81);
      if (v6)
      {
        goto LABEL_10;
      }
    }

    v12 = 4294951625;
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v79, v80, v81);
    goto LABEL_88;
  }

  *v144 = 0;
  *&v144[8] = v144;
  *&v144[16] = 0x2020000000;
  v145 = 0;
  v7 = CMBaseObjectGetDerivedStorage();
  *&v90 = 0;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v8)
  {
    (v8)(PrimaryPlayerAndCopyWrapper, 0, &v90);
    v8 = v90;
  }

  v13 = *v7;
  *&block = MEMORY[0x1E69E9820];
  *(&block + 1) = 3221225472;
  v155 = __fpic_EstablishCurrentPrimaryItem_block_invoke;
  v156 = &unk_1E7494FB8;
  v159 = v7;
  v160 = a1;
  v161 = v6;
  v157 = v144;
  v158 = v8;
  dispatch_sync(v13, &block);
  fpic_DequeueItemsFromInterstitialPlayer(a1, *(*&v144[8] + 24), v6);
  v14 = *(*&v144[8] + 24);
  if (v14)
  {
    CFRelease(v14);
  }

  _Block_object_dispose(v144, 8);
  if (*(DerivedStorage + 160))
  {
    isInterstitialBufferingUngated = fpic_isInterstitialBufferingUngated(a1);
    v90 = *a2;
    v91 = *(a2 + 2);
    v16 = CMBaseObjectGetDerivedStorage();
    *v144 = 0;
    *&v144[8] = v144;
    *&v144[16] = 0x2020000000;
    v145 = 0;
    v17 = *v16;
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 3221225472;
    v155 = __fpic_EstablishCurrentEventForCurrentItem_block_invoke;
    v156 = &unk_1E7495008;
    v159 = v6;
    v160 = v16;
    v162 = v90;
    v157 = v144;
    v158 = a1;
    v163 = v91;
    v161 = PrimaryPlayerAndCopyWrapper;
    dispatch_sync(v17, &block);
    v18 = *(*&v144[8] + 24);
    if (v18)
    {
      Count = CFArrayGetCount(v18);
      while (Count-- >= 1)
      {
        v21 = *(v16 + 128);
        ValueAtIndex = CFArrayGetValueAtIndex(*(*&v144[8] + 24), Count);
        v21(a1, v6, ValueAtIndex, *(v16 + 48));
      }

      v23 = *(*&v144[8] + 24);
      if (v23)
      {
        CFRelease(v23);
      }
    }

    _Block_object_dispose(v144, 8);
    if (!isInterstitialBufferingUngated)
    {
      isInterstitialBufferingUngated = fpic_isInterstitialBufferingUngated(a1);
    }

    v24 = CMBaseObjectGetDerivedStorage();
    *v144 = 0;
    *&v144[8] = v144;
    *&v144[16] = 0x2020000000;
    LODWORD(v145) = 0;
    v25 = *v24;
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 3221225472;
    v155 = &__fpic_EnsureNextEventHasAssets_block_invoke;
    v156 = &unk_1E7495030;
    LOBYTE(v162) = isInterstitialBufferingUngated;
    v157 = v144;
    v158 = v24;
    v159 = a1;
    v160 = v6;
    v161 = PrimaryPlayerAndCopyWrapper;
    dispatch_sync(v25, &block);
    v12 = *(*&v144[8] + 24);
    _Block_object_dispose(v144, 8);
    if (!v12)
    {
      v26 = CMBaseObjectGetDerivedStorage();
      v135 = 0;
      v136 = &v135;
      v137 = 0x2020000000;
      v138 = 0;
      v131 = 0;
      v132 = &v131;
      v133 = 0x2020000000;
      v134 = 0;
      v127 = 0;
      v128 = &v127;
      v129 = 0x2020000000;
      v130 = 0;
      v123 = 0;
      v124 = &v123;
      v125 = 0x2020000000;
      v126 = 0;
      v119 = 0;
      v120 = &v119;
      v121 = 0x2020000000;
      v122 = 0;
      v113 = 0;
      v114 = &v113;
      v115 = 0x3810000000;
      v116 = "";
      v85 = *MEMORY[0x1E6960C70];
      v117 = *MEMORY[0x1E6960C70];
      v84 = *(MEMORY[0x1E6960C70] + 16);
      v118 = v84;
      v109 = 0;
      v110 = &v109;
      v111 = 0x2020000000;
      v112 = 0;
      v105 = 0;
      v106 = &v105;
      v107 = 0x2020000000;
      v108 = 0;
      v101 = 0;
      v102 = &v101;
      v103 = 0x2020000000;
      v104 = 0;
      FigSimpleMutexLock();
      if (isInterstitialBufferingUngated)
      {
        allocator = *MEMORY[0x1E695E480];
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        v136[3] = Mutable;
        v28 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
        v132[3] = v28;
        v29 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
        v106[3] = v29;
        if (v136[3] && v132[3] && v29)
        {
          v30 = *v26;
          *&v90 = MEMORY[0x1E69E9820];
          *(&v90 + 1) = 3221225472;
          v91 = __fpic_EnsureNextEventWillBuffer_block_invoke;
          v92 = &unk_1E7495078;
          v99 = a1;
          v100 = v6;
          v93 = &v113;
          v94 = &v109;
          v95 = &v135;
          v96 = &v101;
          v97 = &v119;
          v98 = v26;
          dispatch_sync(v30, &v90);
          v31 = CFArrayGetCount(v136[3]);
          v124[3] = v31;
          if (v31 <= 0)
          {
LABEL_55:
            v53 = *v26;
            *v144 = MEMORY[0x1E69E9820];
            *&v144[8] = 3221225472;
            *&v144[16] = __fpic_EnsureNextEventWillBuffer_block_invoke_191;
            v145 = &unk_1E74950A0;
            *&v146 = &v123;
            *(&v146 + 1) = &v135;
            v147 = &v131;
            v148 = &v109;
            v151 = a1;
            v152 = v26;
            v153 = v6;
            v149 = &v127;
            v150 = &v105;
            dispatch_sync(v53, v144);
            for (i = 0; ; ++i)
            {
              v55 = v132[3];
              if (v55)
              {
                v55 = CFArrayGetCount(v55);
              }

              if (i >= v55)
              {
                break;
              }

              v56 = CFArrayGetValueAtIndex(v132[3], i);
              if (dword_1EAF178D0)
              {
                LODWORD(cf) = 0;
                v88[0] = OS_LOG_TYPE_DEFAULT;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v58 = cf;
                v59 = v88[0];
                if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v88[0]))
                {
                  v60 = v58;
                }

                else
                {
                  v60 = v58 & 0xFFFFFFFE;
                }

                if (v60)
                {
                  *value = 136315650;
                  *&value[4] = "fpic_EnsureNextEventWillBuffer";
                  v140 = 2048;
                  v141 = a1;
                  v142 = 2112;
                  v143 = v56;
                  LODWORD(v80) = 32;
                  _os_log_send_and_compose_impl(v60, 0, &block, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v59, "<<<< FigPlayerInterstitial >>>> %s: [%p] Backing out enqueue of items for interstitial playback: %@", value, v80);
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              fpic_DequeueItemsFromInterstitialPlayer(a1, v56, v6);
            }

            fpic_DequeueItemsFromInterstitialPlayer(a1, v106[3], v6);
          }

          else
          {
            v32 = 0;
            while (1)
            {
              v33 = CFArrayGetValueAtIndex(v136[3], v32);
              v34 = (*(v26 + 88))(a1, v6, v33);
              *value = 0;
              v35 = FigCFDictionaryGetValue();
              cf = 0;
              if (v35)
              {
                CFDataWithBlockBuffer = FigCreateCFDataWithBlockBuffer();
                *(v128 + 6) = CFDataWithBlockBuffer;
                if (CFDataWithBlockBuffer)
                {
                  break;
                }
              }

              v37 = FigPlayerInterstitialEventCopyIdentifier(v34);
              if (v32)
              {
                v38 = 0;
              }

              else
              {
                v38 = v110[3];
              }

              v39 = *(v26 + 120);
              v40 = *(v26 + 48);
              v41 = *(v26 + 168);
              v42 = *(v26 + 176);
              v43 = v120[3];
              block = *(v114 + 2);
              v155 = v114[6];
              v44 = v39(a1, v6, v33, v40, v37, v41, v42, v43, &block, v38, cf, value);
              *(v128 + 6) = v44;
              if (cf)
              {
                CFRelease(cf);
              }

              if (v37)
              {
                CFRelease(v37);
              }

              if (*(v128 + 6))
              {
                break;
              }

              v45 = *value;
              if (!*value)
              {
                goto LABEL_91;
              }

              if (dword_1EAF178D0)
              {
                *v88 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v47 = *v88;
                v48 = type;
                if (os_log_type_enabled(v46, type))
                {
                  v49 = v47;
                }

                else
                {
                  v49 = v47 & 0xFFFFFFFE;
                }

                if (v49)
                {
                  v50 = v136[3];
                  *v144 = 136315906;
                  *&v144[4] = "fpic_EnsureNextEventWillBuffer";
                  *&v144[12] = 2048;
                  *&v144[14] = a1;
                  *&v144[22] = 2048;
                  v145 = v50;
                  LOWORD(v146) = 2112;
                  *(&v146 + 2) = *value;
                  LODWORD(v80) = 42;
                  _os_log_send_and_compose_impl(v49, 0, &block, 128, &dword_1962D5000, v46, v48, "<<<< FigPlayerInterstitial >>>> %s: [%p]/%p Enqueued items for interstitial playback: %@", v144, v80);
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v45 = *value;
              }

              CFArrayAppendValue(v132[3], v45);
              if (*value)
              {
                v51 = CFArrayGetCount(*value);
              }

              else
              {
                v51 = 0;
              }

              FigPlayerInterstitialEventSetItemSuccessCount(v34, v51);
              if (*value)
              {
                CFRelease(*value);
              }

              v120[3] = 0;
              v52 = v114;
              v114[6] = v84;
              *(v52 + 2) = v85;
              if (++v32 >= v124[3])
              {
                goto LABEL_55;
              }
            }
          }
        }

        else
        {
LABEL_91:
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v79, v80, v81);
          *(v128 + 6) = v78;
        }
      }

      FigSimpleMutexUnlock();
      v61 = v136[3];
      if (v61)
      {
        CFRelease(v61);
      }

      v62 = v132[3];
      if (v62)
      {
        CFRelease(v62);
      }

      v63 = v106[3];
      if (v63)
      {
        CFRelease(v63);
      }

      v64 = v102[3];
      if (v64)
      {
        CFRelease(v64);
      }

      v12 = *(v128 + 6);
      _Block_object_dispose(&v101, 8);
      _Block_object_dispose(&v105, 8);
      _Block_object_dispose(&v109, 8);
      _Block_object_dispose(&v113, 8);
      _Block_object_dispose(&v119, 8);
      _Block_object_dispose(&v123, 8);
      _Block_object_dispose(&v127, 8);
      _Block_object_dispose(&v131, 8);
      _Block_object_dispose(&v135, 8);
      if (!v12)
      {
        v65 = CMBaseObjectGetDerivedStorage();
        *v144 = 0;
        *&v144[8] = v144;
        *&v144[16] = 0x2020000000;
        LODWORD(v145) = 0;
        v66 = *v65;
        *&block = MEMORY[0x1E69E9820];
        *(&block + 1) = 3221225472;
        v155 = __fpic_ScheduleNextPreload_block_invoke;
        v156 = &unk_1E747EC60;
        v158 = v65;
        v159 = a1;
        v157 = v144;
        dispatch_sync(v66, &block);
        v12 = *(*&v144[8] + 24);
        _Block_object_dispose(v144, 8);
        if (!v12)
        {
          v67 = CMBaseObjectGetDerivedStorage();
          *v144 = 0;
          *&v144[8] = v144;
          *&v144[16] = 0x2020000000;
          LODWORD(v145) = 0;
          v68 = *v67;
          *&block = MEMORY[0x1E69E9820];
          *(&block + 1) = 3221225472;
          v155 = __fpic_EnsureNextEventWillPlay_block_invoke;
          v156 = &unk_1E7494FB8;
          v157 = v144;
          v158 = v67;
          v159 = a1;
          v160 = PrimaryPlayerAndCopyWrapper;
          v161 = v6;
          dispatch_sync(v68, &block);
          v12 = *(*&v144[8] + 24);
          _Block_object_dispose(v144, 8);
          if (!v12)
          {
            *v144 = 0;
            *&v144[8] = v144;
            *&v144[16] = 0x2020000000;
            LODWORD(v145) = 0;
            v69 = *CMBaseObjectGetDerivedStorage();
            *&block = MEMORY[0x1E69E9820];
            *(&block + 1) = 3221225472;
            v155 = __fpic_UpdateSkippableEventStateIfNecessary_block_invoke;
            v156 = &unk_1E747EC60;
            v157 = v144;
            v158 = a1;
            v159 = v6;
            dispatch_sync(v69, &block);
            v12 = *(*&v144[8] + 24);
            _Block_object_dispose(v144, 8);
            if (!v12)
            {
              v70 = CMBaseObjectGetDerivedStorage();
              *v144 = 0;
              *&v144[8] = v144;
              *&v144[16] = 0x2020000000;
              LODWORD(v145) = 0;
              *&v90 = 0;
              *(&v90 + 1) = &v90;
              v91 = 0x2020000000;
              v92 = 0;
              v71 = *v70;
              *&block = MEMORY[0x1E69E9820];
              *(&block + 1) = 3221225472;
              v155 = __fpic_EnsureCurrentEventPlayoutLimitApplied_block_invoke;
              v156 = &unk_1E74942A8;
              v159 = v70;
              v160 = a1;
              v161 = v6;
              v157 = &v90;
              v158 = v144;
              dispatch_sync(v71, &block);
              fpic_DequeueItemsFromInterstitialPlayer(a1, *(*(&v90 + 1) + 24), v6);
              v72 = *(*(&v90 + 1) + 24);
              if (v72)
              {
                CFRelease(v72);
              }

              v12 = *(*&v144[8] + 24);
              _Block_object_dispose(&v90, 8);
              _Block_object_dispose(v144, 8);
              if (!v12)
              {
                v73 = CMBaseObjectGetDerivedStorage();
                *v144 = 0;
                *&v144[8] = v144;
                *&v144[16] = 0x2020000000;
                LODWORD(v145) = 0;
                v74 = *v73;
                *&block = MEMORY[0x1E69E9820];
                *(&block + 1) = 3221225472;
                v155 = __fpic_EnsurePrimaryBufferingPosition_block_invoke;
                v156 = &unk_1E748B8C8;
                v159 = a1;
                v160 = v6;
                v157 = v144;
                v158 = v73;
                dispatch_sync(v74, &block);
                v12 = *(*&v144[8] + 24);
                _Block_object_dispose(v144, 8);
                if (!v12)
                {
                  v12 = fpic_EnsurePrimaryWillResumeBuffering(a1, v6);
                  if (!v12)
                  {
                    v75 = CMBaseObjectGetDerivedStorage();
                    *v144 = 0;
                    *&v144[8] = v144;
                    *&v144[16] = 0x2020000000;
                    LODWORD(v145) = 0;
                    v76 = *v75;
                    *&block = MEMORY[0x1E69E9820];
                    *(&block + 1) = 3221225472;
                    v155 = __fpic_EnsurePrimaryWillResumePlaying_block_invoke;
                    v156 = &unk_1E7494FB8;
                    v157 = v144;
                    v158 = a1;
                    v159 = v75;
                    v160 = PrimaryPlayerAndCopyWrapper;
                    v161 = v6;
                    dispatch_sync(v76, &block);
                    v12 = *(*&v144[8] + 24);
                    _Block_object_dispose(v144, 8);
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_86:
    if (!v6)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

  v12 = 0;
LABEL_87:
  CFRelease(v6);
LABEL_88:
  if (v86)
  {
    CFRelease(v86);
  }

  return v12;
}

void sub_1967BEE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Unwind_Resume(a1);
}

uint64_t fpic_EnsurePrimaryWillResumeBuffering(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = *DerivedStorage;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __fpic_EnsurePrimaryWillResumeBuffering_block_invoke;
  v8[3] = &unk_1E748B8C8;
  v8[6] = a1;
  v8[7] = a2;
  v8[4] = &v9;
  v8[5] = DerivedStorage;
  dispatch_sync(v5, v8);
  v6 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v6;
}

double fpic_SwapToInterstitialPlayerLayerIfPrerollDetected(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 200));
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 200), v8);
      v10 = (*(DerivedStorage + 88))(a1, a2, ValueAtIndex);
      if (FigPlayerInterstitialEventIsPreRoll(v10))
      {
        break;
      }

      if (v7 == ++v8)
      {
        return result;
      }
    }

    fpic_flipInterstitialAndPrimaryVisibility(a1, 1, a2, NAN);
    if (dword_1EAF178D0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

double fpic_GetSeekableRange(uint64_t a1, int a2, CMTime *a3, CMTime *a4)
{
  v25[0] = 0;
  v24 = **&MEMORY[0x1E6960C70];
  v23 = **&MEMORY[0x1E6960C80];
  FigPlaybackItemGetFigBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v9(v8, @"SeekableTimeIntervals", *MEMORY[0x1E695E480], v25);
    if (v25[0])
    {
      Count = CFArrayGetCount(v25[0]);
      if (Count >= 1)
      {
        v11 = Count;
        for (i = 0; i != v11; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v25[0], i);
          memset(&v22, 0, sizeof(v22));
          Value = CFDictionaryGetValue(ValueAtIndex, @"startTime");
          CMTimeMakeFromDictionary(&v22, Value);
          memset(&v21, 0, sizeof(v21));
          memset(&v20, 0, sizeof(v20));
          v15 = CFDictionaryGetValue(ValueAtIndex, @"endTime");
          CMTimeMakeFromDictionary(&v20, v15);
          if (a2 && FigCFDictionaryGetCMTimeIfPresent())
          {
            lhs = v20;
            v17 = v21;
            CMTimeAdd(&time1, &lhs, &v17);
            v20 = time1;
          }

          time1 = v24;
          lhs = v22;
          if (CMTimeCompare(&time1, &lhs) >= 1)
          {
            v24 = v22;
          }

          time1 = v23;
          lhs = v20;
          if (CMTimeCompare(&time1, &lhs) < 0)
          {
            v23 = v20;
          }
        }
      }

      CFRelease(v25[0]);
    }
  }

  *a3 = v24;
  result = *&v23.value;
  *a4 = v23;
  return result;
}

void fpic_PostNotification(uint64_t a1, uint64_t a2, const void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = malloc_type_malloc(0x18uLL, 0xE004076C6CCF4uLL);
  if (v6)
  {
    v14 = v6;
    *v6 = a2;
    v15 = *(DerivedStorage + 32);
    if (v15)
    {
      v15 = CFRetain(v15);
    }

    v14[1] = v15;
    if (a3)
    {
      v16 = CFRetain(a3);
    }

    else
    {
      v16 = 0;
    }

    v14[2] = v16;
    if (dword_1EAF178D0 >= 3)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    dispatch_async_f(*(DerivedStorage + 24), v14, fpic_PostNotificationFromDispatch);
  }

  else
  {
    fpic_PostNotification_cold_1(0, v7, v8, v9, v10, v11, v12, v13, v18, v19, SHIDWORD(v19), v20);
  }
}

uint64_t fpic_UnwrapPlaybackItem(uint64_t a1, __CFString *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2 || a2 == @"DummyItem" || !a3)
  {
    return 0;
  }

  v7 = *(DerivedStorage + 80);

  return v7(a1, a3, a2);
}

void fpic_GetEventStartMoment(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  if (FigPlayerInterstitialEventIsPostRoll(a2))
  {

    fpic_GetEarliestStartForPostroll(x8_0);
  }

  else
  {

    fpic_EventDateTimeMoment(a2, x8_0);
  }
}

double fpic_GetEarliestStartForPostroll@<D0>(uint64_t a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = CMBaseObjectGetDerivedStorage();
  v5 = v4 + 264;
  if (!*(v4 + 296) && !*(v4 + 297))
  {
    v5 = v4 + 224;
  }

  v6 = *(v5 + 16);
  v17 = *v5;
  v18 = v6;
  v7 = *(v5 + 32);
  v8 = *(v5 + 33);
  v15 = *(v5 + 34);
  v16 = *(v5 + 38);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  v9 = CMBaseObjectGetDerivedStorage();
  if (*(v9 + 1142) && *(v9 + 1141))
  {
    v10 = CMBaseObjectGetDerivedStorage();
    if (!*(v10 + 1142) || !*(v10 + 1141) || !*(DerivedStorage + 1145))
    {
      CMTimeMake(&v14, -1352509440, 1);
LABEL_10:
      *(a2 + 36) = 0;
      *(a2 + 33) = 0;
      result = *&v14.value;
      *a2 = *&v14.value;
      v12 = v14.flags & 1;
      *(a2 + 16) = v14.epoch;
      *(a2 + 24) = 0;
      *(a2 + 32) = v12;
      return result;
    }
  }

  else if (!*(DerivedStorage + 1145) || !(v7 | v8))
  {
    fpic_GetItemEndTime();
    goto LABEL_10;
  }

  result = *&v17;
  v13 = v18;
  *a2 = v17;
  *(a2 + 16) = v13;
  *(a2 + 32) = v7;
  *(a2 + 33) = v8;
  *(a2 + 34) = v15;
  *(a2 + 38) = v16;
  return result;
}

void fpic_EventDateTimeMoment(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  started = FigPlayerInterstitialEventCopyStartDate(a1);
  FigPlayerInterstitialEventGetStartTime(a1, &v5);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = BYTE12(v5) & 1;
  if (started)
  {
    *(a2 + 24) = MEMORY[0x19A8CCD90](started);
    *(a2 + 33) = 1;
    CFRelease(started);
  }
}

BOOL fpic_MomentsAreCloseWithTolerance(uint64_t a1, uint64_t a2, CMTime *a3)
{
  if (*(a1 + 32) && *(a2 + 32))
  {
    time = *a1;
    v6 = *a2;
    v5 = *a3;
    return faqrp_timeDifferenceIsWithinTolerance(&time, &v6, &v5);
  }

  else if (*(a1 + 33) && *(a2 + 33))
  {
    v4 = vabdd_f64(*(a1 + 24), *(a2 + 24));
    time = *a3;
    return v4 <= CMTimeGetSeconds(&time);
  }

  else
  {
    return !*(a1 + 32) && !(*(a2 + 32) | *(a1 + 33)) && !*(a2 + 33);
  }
}

BOOL fpic_MomentGreaterThan(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) && *(a2 + 32))
  {
    time1 = *a1;
    v3 = *a2;
    return CMTimeCompare(&time1, &v3) > 0;
  }

  else
  {
    return *(a1 + 33) && *(a2 + 33) && *(a1 + 24) > *(a2 + 24) + 2.22044605e-16;
  }
}

void fpic_PredictEventGroupDurationOnPrimary(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, CMTime *a6@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = a2;
  v12 = (*(DerivedStorage + 88))(a1, a3, a2);
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  fpic_EventDateTimeMoment(v12, &v25);
  *a6 = **&MEMORY[0x1E6960CC0];
  Count = CFArrayGetCount(*(DerivedStorage + 200));
  if (Count >= 1)
  {
    v14 = Count;
    for (i = 0; i != v14; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 200), i);
      v17 = (*(DerivedStorage + 88))(a1, a3, ValueAtIndex);
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      fpic_EventDateTimeMoment(v17, &v22);
      v30 = v22;
      v31 = v23;
      v32 = v24;
      *lhs = v25;
      *&lhs[16] = v26;
      v29 = v27;
      if (fpic_MomentsAreCloseWithTolerance(&v30, lhs, &kMomentsAreCloseThreshold))
      {
        if (a4)
        {
          v18 = FigPlayerInterstitialEventDidLastPlaybackFail(v17) == 0;
        }

        else
        {
          v18 = 1;
        }

        v30 = 0uLL;
        *&v31 = 0;
        fpic_PredictEventDurationOnPrimary(a1, ValueAtIndex, a3, &v30);
        if (a5 && ValueAtIndex == v19)
        {
          *a5 = *&a6->value;
          *(a5 + 16) = a6->epoch;
        }

        if (BYTE12(v30) & v18)
        {
          *lhs = *&a6->value;
          *&lhs[16] = a6->epoch;
          *&rhs.value = v30;
          rhs.epoch = v31;
          CMTimeAdd(a6, lhs, &rhs);
        }
      }
    }
  }
}

void fpic_AddTimeToMoment(uint64_t a1@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if ((a2->flags & 0x1D) == 1)
  {
    if (*(a1 + 32))
    {
      lhs = *a1;
      v7 = *a2;
      CMTimeAdd(a3, &lhs, &v7);
      *(a3 + 32) = 1;
    }

    if (*(a1 + 33))
    {
      v6 = *(a1 + 24);
      lhs = *a2;
      *(a3 + 24) = v6 + CMTimeGetSeconds(&lhs);
      *(a3 + 33) = 1;
    }
  }
}

CMTime *fpic_SubtractMomentFromMoment@<X0>(CMTime *result@<X0>, uint64_t a2@<X1>, CMTime *a3@<X8>)
{
  *a3 = **&MEMORY[0x1E6960C70];
  if (LOBYTE(result[1].timescale) && *(a2 + 32))
  {
    lhs = *result;
    v5 = *a2;
    return CMTimeSubtract(a3, &lhs, &v5);
  }

  else if (BYTE1(result[1].timescale) && *(a2 + 33))
  {
    v4 = *&result[1].value - *(a2 + 24);

    return CMTimeMakeWithSeconds(a3, v4, 1000000);
  }

  return result;
}

__n128 fpic_PredictEventDurationOnPrimary@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = (*(DerivedStorage + 88))(a1, a3, a2);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  FigPlayerInterstitialEventGetResumptionOffset(v9, a4);
  if (FigPlayerInterstitialEventIsPreRoll(v9) || FigPlayerInterstitialEventIsPostRoll(v9))
  {
    v10 = MEMORY[0x1E6960CC0];
    result = *MEMORY[0x1E6960CC0];
    *a4 = *MEMORY[0x1E6960CC0];
    epoch = *(v10 + 16);
LABEL_4:
    *(a4 + 16) = epoch;
    return result;
  }

  if ((*(a4 + 12) & 0x11) != 1)
  {
    fpic_GetEventDuration(&time1);
    result.n128_u64[0] = time1.value;
    *a4 = *&time1.value;
    epoch = time1.epoch;
    goto LABEL_4;
  }

  time1 = *a4;
  v14 = *MEMORY[0x1E6960CC0];
  *&time2.value = *MEMORY[0x1E6960CC0];
  v13 = *(MEMORY[0x1E6960CC0] + 16);
  time2.epoch = v13;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    result = v14;
    *a4 = v14;
    *(a4 + 16) = v13;
  }

  return result;
}

const void *fpic_GetCurrentlyPlayingEvent(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  if (!(*(v3 + 376) | *(v3 + 377)) || !fpic_DoesNextMomentBelongToCurrentDepartureMoment(a1) || !CFArrayGetCount(*(DerivedStorage + 656)))
  {
    return 0;
  }

  v5 = *(DerivedStorage + 656);

  return CFArrayGetValueAtIndex(v5, 0);
}

void fpic_SubtractTimeFromMoment(uint64_t a1@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if ((a2->flags & 0x1D) == 1)
  {
    if (*(a1 + 32))
    {
      lhs = *a1;
      v7 = *a2;
      CMTimeSubtract(a3, &lhs, &v7);
      *(a3 + 32) = 1;
    }

    if (*(a1 + 33))
    {
      v6 = *(a1 + 24);
      lhs = *a2;
      *(a3 + 24) = v6 - CMTimeGetSeconds(&lhs);
      *(a3 + 33) = 1;
    }
  }
}

void fpic_PostNotificationFromDispatch(void *a1)
{
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2)
  {
    v3 = v2;
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CFRelease(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

BOOL fpic_ShouldIgnoreInterstitialsDueToExternalPlaybackStrategy(uint64_t a1)
{
  cf = 0;
  v2 = *MEMORY[0x1E695E4C0];
  v3 = *MEMORY[0x1E695E4C0];
  v10 = *MEMORY[0x1E695E4C0];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!fpic_GetPrimaryPlayerAndCopyWrapper(a1, &cf) || *(DerivedStorage + 1260) != 1 || !*(CMBaseObjectGetDerivedStorage() + 1256))
  {
    v8 = 0;
    if (!v3)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  FigPlayerGetFigBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(v6, @"IsIntegratedTimelineAllowedForExternalPlayback", *MEMORY[0x1E695E480], &v10);
    v3 = v10;
  }

  v8 = v3 == v2;
  if (v3)
  {
LABEL_9:
    CFRelease(v3);
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

char *fpic_getMomentDesc(uint64_t a1, char *a2)
{
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v7 = *(a1 + 32);
  MomentDesc = fpic_CreateMomentDesc(v6);
  *a2 = 0;
  CFStringGetCString(MomentDesc, a2, 100, 0x8000100u);
  if (MomentDesc)
  {
    CFRelease(MomentDesc);
  }

  return a2;
}

CFStringRef fpic_CreateMomentDesc(uint64_t a1)
{
  v2 = CFRetain(&stru_1F0B1AFB8);
  if (*(a1 + 32))
  {
    time = *a1;
    Seconds = CMTimeGetSeconds(&time);
  }

  else
  {
    Seconds = NAN;
  }

  v4 = *MEMORY[0x1E695E480];
  if (*(a1 + 33))
  {
    v5 = CFDateCreate(*MEMORY[0x1E695E480], *(a1 + 24));
    v2 = CFCopyDescription(v5);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  v6 = CFStringCreateWithFormat(v4, 0, @"time: %f date: %@ (%f)", *&Seconds, v2, *(a1 + 24));
  CFRelease(v2);
  return v6;
}

uint64_t __fpic_isInterstitialBufferingUngated_block_invoke(void *a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v3 = result + 264;
  if (!*(result + 296) && !*(result + 297))
  {
    v3 = result + 224;
  }

  v22 = *v3;
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 33);
  v20 = *(v3 + 34);
  v21 = *(v3 + 38);
  if (v5 | v6)
  {
    v7 = a1[6];
    if (*(v7 + 640))
    {
      v8 = (v7 + 628);
      v27 = *v8;
      *&v28 = *(v8 + 2);
      *time2 = *v3;
      *&time2[16] = *(v3 + 16);
      *&time2[24] = v4;
      LOBYTE(v31) = v5;
      BYTE1(v31) = v6;
      *(&v31 + 2) = *(v3 + 34);
      HIWORD(v31) = *(v3 + 38);
      fpic_MakeMomentFromTime(&v27, time2, time1);
      v22 = *time1;
      v4 = *&time1[24];
      v5 = v33;
      v6 = BYTE1(v33);
      v20 = *(&v33 + 2);
      v21 = HIWORD(v33);
      v7 = a1[6];
    }

    v9 = a1[5];
    v10 = *(v7 + 160);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 1142))
    {
      v12 = *(DerivedStorage + 1141) != 0;
    }

    else
    {
      v12 = 0;
    }

    v19 = v22;
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    fpic_CurrentItemMoment(&v27);
    if (!(v5 | v6))
    {
LABEL_27:
      result = CMBaseObjectGetDerivedStorage();
      if (!*(result + 896))
      {
        result = CMBaseObjectGetDerivedStorage();
        v14 = (*(result + 376) | *(result + 377)) != 0;
        goto LABEL_30;
      }

LABEL_28:
      v14 = 1;
LABEL_30:
      *(*(a1[4] + 8) + 24) = v14;
      return result;
    }

    if (v12)
    {
      v26 = 0;
      v25 = kLiveInterstitialAdvanceInterval;
      if (v5)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v25 = *MEMORY[0x1E6960CC0];
      v26 = *(MEMORY[0x1E6960CC0] + 16);
      if (v5)
      {
        goto LABEL_16;
      }
    }

    *time1 = v27;
    *&time1[16] = v28;
    v33 = v29;
    FigCreateTimeWithDateAndMoment(time1, &v19, v4);
    LOBYTE(v5) = 1;
LABEL_16:
    *time1 = v19;
    *&time1[24] = v4;
    LOBYTE(v33) = v5;
    BYTE1(v33) = v6;
    *(&v33 + 2) = v20;
    HIWORD(v33) = v21;
    *time2 = v27;
    *&time2[16] = v28;
    v31 = v29;
    if (fpic_MomentsAreCloseWithTolerance(time1, time2, &kMomentsAreCloseThreshold))
    {
LABEL_17:
      result = 1;
      goto LABEL_25;
    }

    *time1 = v27;
    *&time1[16] = v28;
    v33 = v29;
    *time2 = v19;
    *&time2[24] = v4;
    LOBYTE(v31) = v5;
    BYTE1(v31) = v6;
    *(&v31 + 2) = v20;
    HIWORD(v31) = v21;
    v13 = fpic_MomentGreaterThan(time1, time2);
    if (!v12 || v13)
    {
      if (v13)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *time1 = v27;
      *&time1[16] = v28;
      *time2 = v19;
      if (CMTimeCompare(time1, time2) <= 0)
      {
        *time2 = v19;
        *&rhs.value = kLiveInterstitialAdvanceInterval;
        rhs.epoch = 0;
        CMTimeSubtract(time1, time2, &rhs);
        *time2 = v27;
        *&time2[16] = v28;
        if ((CMTimeCompare(time2, time1) & 0x80000000) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    *time1 = v19;
    *time2 = v25;
    *&time2[16] = v26;
    result = fpic_BufferIncludesTime(v10, time1, time2);
LABEL_25:
    if (!(result | v12))
    {
      memset(time1, 0, 24);
      fpic_GetItemEndTime();
      if ((time1[12] & 0x1D) == 1 && (*time2 = *time1, *&time2[16] = *&time1[16], rhs = v19, v15 = CMTimeCompare(time2, &rhs), rhs = *time1, *&v23.value = v27, v23.epoch = v28, CMTimeSubtract(time2, &rhs, &v23), *&rhs.value = *&kPostRollTimeToPausePlaybackBuffer.value, rhs.epoch = 0, v16 = CMTimeCompare(time2, &rhs), !v15))
      {
        v17 = v16;
        result = fpic_IsItemBufferedToEnd(v9, v10) || v17 < 1;
      }

      else
      {
        result = 0;
      }
    }

    if (result)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  return result;
}

void fpic_MakeMomentFromTime(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = *a1;
  *(a3 + 16) = *(a1 + 16);
  *(a3 + 24) = 0;
  *(a3 + 32) = *(a1 + 12) & 1;
  if (*(a2 + 32))
  {
    if (*(a2 + 33))
    {
      v5 = *(a2 + 24);
      v7 = *a1;
      v6 = v5 + CMTimeGetSeconds(&v7);
      v7 = *a2;
      *(a3 + 24) = v6 - CMTimeGetSeconds(&v7);
      *(a3 + 33) = 1;
    }
  }
}

BOOL fpic_BufferIncludesTime(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  theArray = 0;
  FigPlaybackItemGetFigBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7 && (v7(v6, @"PlayableTimeIntervals", *MEMORY[0x1E695E480], &theArray), theArray) && (Count = CFArrayGetCount(theArray), Count >= 1))
  {
    v10 = Count;
    v11 = 0;
    v12 = @"endTime";
    v13 = 1;
    v14 = &dword_1EAF17000;
    *&v9 = 136316162;
    v28 = v9;
    v29 = @"endTime";
    v30 = a3;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
      memset(&v34, 0, sizeof(v34));
      Value = CFDictionaryGetValue(ValueAtIndex, @"startTime");
      CMTimeMakeFromDictionary(&v34, Value);
      memset(&v33, 0, sizeof(v33));
      v17 = CFDictionaryGetValue(ValueAtIndex, v12);
      CMTimeMakeFromDictionary(&v33, v17);
      lhs = v33;
      rhs = *a3;
      CMTimeAdd(&time, &lhs, &rhs);
      v33 = time;
      if (v14[564] >= 7)
      {
        LODWORD(rhs.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v19 = rhs.value;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
        }

        else
        {
          v20 = v19 & 0xFFFFFFFE;
        }

        if (v20)
        {
          time = *a2;
          Seconds = CMTimeGetSeconds(&time);
          time = v34;
          v22 = CMTimeGetSeconds(&time);
          time = v33;
          v23 = CMTimeGetSeconds(&time);
          LODWORD(lhs.value) = v28;
          *(&lhs.value + 4) = "fpic_BufferIncludesTime";
          LOWORD(lhs.flags) = 2048;
          *(&lhs.flags + 2) = Seconds;
          HIWORD(lhs.epoch) = 2048;
          v37 = a1;
          v38 = 2048;
          v39 = v22;
          v40 = 2048;
          v41 = v23;
          LODWORD(v27) = 52;
          _os_log_send_and_compose_impl(v20, 0, &time, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, 0, "<<<< FigPlayerInterstitial >>>> %s: checking if %f in %p is between %f and %f", &lhs, v27, v28, *(&v28 + 1), *&v29);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v12 = v29;
        a3 = v30;
        v14 = &dword_1EAF17000;
      }

      time = v34;
      lhs = *a2;
      if (CMTimeCompare(&time, &lhs) <= 0)
      {
        time = v33;
        lhs = *a2;
        if ((CMTimeCompare(&time, &lhs) & 0x80000000) == 0)
        {
          break;
        }
      }

      v13 = ++v11 < v10;
    }

    while (v10 != v11);
    v24 = v13;
  }

  else
  {
    if (dword_1EAF178D0 >= 7)
    {
      LODWORD(v34.value) = 0;
      LOBYTE(v33.value) = 0;
      v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v24 = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v24;
}

BOOL fpic_MomentCanBeCurrent(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v5 = a2[1];
  v11[0] = *a2;
  v11[1] = v5;
  v12 = *(a2 + 4);
  if (*(a3 + 12))
  {
    v6 = a2[1];
    v16 = *a2;
    v17 = v6;
    v18 = *(a2 + 4);
    v13 = *a3;
    *&v14 = *(a3 + 2);
    fpic_AddTimeToMoment(&v16, &v13, v11);
  }

  v7 = a1[1];
  v16 = *a1;
  v17 = v7;
  v18 = *(a1 + 4);
  if (fpic_MomentGreaterThan(v11, &v16))
  {
    return 1;
  }

  v9 = a1[1];
  v16 = *a1;
  v17 = v9;
  v18 = *(a1 + 4);
  v10 = a2[1];
  v13 = *a2;
  v14 = v10;
  v15 = *(a2 + 4);
  return fpic_MomentsAreCloseWithTolerance(&v16, &v13, &kMomentsAreCloseThreshold);
}

uint64_t fpic_copyEventsScheduledAtSameMomentAsEvent(uint64_t a1, uint64_t a2, __CFArray **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v6 = DerivedStorage;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v8 = Mutable;
      for (i = 0; ; ++i)
      {
        Count = *(v6 + 208);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (i >= Count)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(*(v6 + 208), i);
        v12 = fpic_UnwrapEvent();
        if (FigPlayerInterstitialEventDoStartTimesMatch(a2, v12))
        {
          CFArrayAppendValue(v8, ValueAtIndex);
        }

        else if (CFArrayGetCount(v8) > 0)
        {
          break;
        }
      }

      result = 0;
      *a3 = v8;
    }

    else
    {
      fpic_copyEventsScheduledAtSameMomentAsEvent_cold_1(&v14);
      return v14;
    }
  }

  else
  {
    fpic_copyEventsScheduledAtSameMomentAsEvent_cold_2(&v15);
    return v15;
  }

  return result;
}

__n128 fpic_AccumulateDuration(CMTime *a1, CMTime *a2)
{
  if ((a2->flags & 0x1D) == 1)
  {
    if ((a1->flags & 0x1D) == 1)
    {
      lhs = *a1;
      v4 = *a2;
      CMTimeAdd(&v6, &lhs, &v4);
      result.n128_u64[0] = v6.value;
      *a1 = v6;
    }

    else
    {
      result = *&a2->value;
      a1->epoch = a2->epoch;
      *&a1->value = result;
    }
  }

  return result;
}

uint64_t fpic_collectEventsAtNextMoment(uint64_t a1, uint64_t a2, __CFArray *a3, CMTime *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *MEMORY[0x1E6960CC0];
  *&v27.value = *MEMORY[0x1E6960CC0];
  v10 = *(MEMORY[0x1E6960CC0] + 16);
  v27.epoch = v10;
  v11 = *(DerivedStorage + 208);
  if (v11)
  {
    v23 = v9;
    Count = CFArrayGetCount(v11);
    v9 = v23;
    v13 = Count;
  }

  else
  {
    v13 = 0;
  }

  *&v26.value = v9;
  v26.epoch = v10;
  if (a3)
  {
    theArray = a3;
    v24 = a4;
    if (CFArrayGetCount(*(DerivedStorage + 656)) < 1)
    {
      FirstIndexOfValue = 0;
    }

    else
    {
      CFArrayGetValueAtIndex(*(DerivedStorage + 656), 0);
      CMBaseObjectGetDerivedStorage();
      FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
    }

    if (FirstIndexOfValue < v13)
    {
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 208), FirstIndexOfValue);
        v16 = (*(DerivedStorage + 88))(a1, a2, ValueAtIndex);
        fpic_EventDateTimeMoment(v16, &lhs);
        v17 = *(DerivedStorage + 240);
        v29 = *(DerivedStorage + 224);
        v30 = v17;
        v31 = *(DerivedStorage + 256);
        v18 = fpic_MomentsAreCloseWithTolerance(&v29, &lhs, &kMomentsAreCloseThreshold);
        v19 = FigPlayerInterstitialEventIsPostRoll(v16);
        if (v18 && !(CFSetContainsValue(*(DerivedStorage + 688), ValueAtIndex) | v19))
        {
          CMBaseObjectGetDerivedStorage();
          v20 = FigCFArrayGetFirstIndexOfValue();
          v29 = 0uLL;
          *&v30 = 0;
          fpic_PredictEventDurationOnPrimary(a1, ValueAtIndex, a2, &v29);
          if (BYTE12(v29))
          {
            lhs = v27;
            *&rhs.value = v29;
            rhs.epoch = v30;
            CMTimeAdd(&v27, &lhs, &rhs);
          }

          if (v20 == -1)
          {
            memset(&lhs, 0, sizeof(lhs));
            rhs = v27;
            fpic_GetOffsetForEvent(a1, ValueAtIndex, &rhs, a2, &lhs);
            if (lhs.flags)
            {
              CFArrayAppendValue(theArray, ValueAtIndex);
            }

            else if (BYTE12(v29))
            {
              *&rhs.value = v29;
              rhs.epoch = v30;
              fpic_AccumulateDuration(&v26, &rhs);
            }
          }
        }

        ++FirstIndexOfValue;
      }

      while (v13 != FirstIndexOfValue);
    }

    result = 0;
    if (v24)
    {
      *v24 = v26;
    }
  }

  else
  {
    fpic_collectEventsAtNextMoment_cold_1(&v29);
    return v29;
  }

  return result;
}

uint64_t fpic_collectPostrollEvents(uint64_t a1, __CFArray *a2, char *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = DerivedStorage;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      Count = *(v6 + 208);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (v7 >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(v6 + 208), v7);
      v11 = fpic_UnwrapEvent();
      if (FigPlayerInterstitialEventIsPostRoll(v11))
      {
        CMBaseObjectGetDerivedStorage();
        if (FigCFArrayGetFirstIndexOfValue() == -1)
        {
          CFArrayAppendValue(a2, ValueAtIndex);
          v8 = 1;
        }
      }

      ++v7;
    }

    result = 0;
    if (a3)
    {
      *a3 = v8;
    }
  }

  else
  {
    fpic_collectPostrollEvents_cold_1(&v13);
    return v13;
  }

  return result;
}

uint64_t fpic_AssertPostRoll(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 1146) = 1;
  FigPlayerGetFigBaseObject();
  v3 = v2;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(v3, @"ActionAtEnd", *MEMORY[0x1E695E480], DerivedStorage + 1168);
  }

  FigPlayerGetFigBaseObject();
  v6 = v5;
  VTable = CMBaseObjectGetVTable();
  v9 = *(VTable + 8);
  result = VTable + 8;
  v10 = *(v9 + 56);
  if (v10)
  {

    return v10(v6, @"ActionAtEnd", @"None");
  }

  return result;
}

CFIndex fpic_addCurrentEventsAndEnsureAssets(uint64_t a1, uint64_t a2, const __CFArray *a3, char *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  v8 = 0;
  if (!a3)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (result = CFArrayGetCount(a3); v8 < result; result = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a3, v8);
    v11 = fpic_UnwrapEvent();
    v12 = FigPlayerInterstitialEventCopyInterstitialAssetURLs(v11);
    v13 = v12;
    if (v12)
    {
      Count = CFArrayGetCount(v12);
    }

    else
    {
      Count = 0;
    }

    CFArrayGetCount(*(DerivedStorage + 656));
    CFArrayAppendValue(*(DerivedStorage + 656), ValueAtIndex);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        CFArrayGetValueAtIndex(v13, i);
        fpic_SetPerAssetPerEventTrackedObject();
      }

      goto LABEL_24;
    }

    v28 = 0;
    cf = 0;
    v26 = 0;
    v27 = 0;
    v16 = fpic_ReadAssetListForEvent(a1, a2, ValueAtIndex, 0, &cf, &v28, &v27, &v26);
    if (!v16)
    {
      if (cf)
      {
        fpic_AddNewHttpReq(a1, ValueAtIndex, cf, v26);
      }

      else
      {
        if (!v28)
        {
          goto LABEL_19;
        }

        fpic_AddNewCustomURLReq(a1, ValueAtIndex, v28, v27, v26);
      }
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

LABEL_19:
    if (v26)
    {
      CFRelease(v26);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    if (v16)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v22 = *(DerivedStorage + 1200) + 1;
      *(DerivedStorage + 1200) = v22;
      fpic_setItemPropertyInt32(*(DerivedStorage + 160), @"interstitialPlaybackFailureCount", v22);
      fpic_ClearAssetListResponseAfterAssetListReadFailure(a1, ValueAtIndex, v16);
      fpic_RemoveEvent(a1, ValueAtIndex, 0, 0, 0, 1);
      CFArrayRemoveValueAtIndex(a3, v8--);
      goto LABEL_34;
    }

LABEL_24:
    if (v13)
    {
      CFRelease(v13);
    }

    if (dword_1EAF178D0)
    {
      LODWORD(cf) = 0;
      LOBYTE(v28) = 0;
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v18 = cf;
      v19 = v28;
      if (os_log_type_enabled(v17, v28))
      {
        v20 = v18;
      }

      else
      {
        v20 = v18 & 0xFFFFFFFE;
      }

      if (v20)
      {
        v30 = 136315650;
        v31 = "fpic_addCurrentEventsAndEnsureAssets";
        v32 = 2048;
        v33 = a1;
        v34 = 2112;
        v35 = v11;
        LODWORD(v23) = 32;
        _os_log_send_and_compose_impl(v20, 0, v36, 128, &dword_1962D5000, v17, v19, "<<<< FigPlayerInterstitial >>>> %s: %p: can buffer; need to make item(s) for %@", &v30, v23);
      }

      v7 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      v7 = 1;
    }

LABEL_34:
    ++v8;
    if (a3)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  if (a4)
  {
    *a4 = v7;
  }

  return result;
}

void fpic_GatePrimaryPlaybackAtCurrentEvent(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v27 = 0;
  v22 = *MEMORY[0x1E6960C70];
  *&v26.value = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  v26.epoch = v5;
  memset(&v25, 0, sizeof(v25));
  fpic_TimeToGatePrimaryPlaybackAtCurrentEvent(&v26, &v27, &v25);
  v8 = CFArrayGetCount(*(DerivedStorage + 656)) < 1 || (ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 656), 0), v7 = (*(DerivedStorage + 88))(a1, a2, ValueAtIndex), *(CMBaseObjectGetDerivedStorage() + 896)) || (FigPlayerInterstitialEventGetSnapOptions(v7) & 1) == 0;
  if (*(DerivedStorage + 160))
  {
    if (v8)
    {
      v9 = MEMORY[0x1E695E4C0];
    }

    else
    {
      v9 = MEMORY[0x1E695E4D0];
    }

    FigPlaybackItemGetFigBaseObject();
    v11 = v10;
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v12)
    {
      v12(v11, @"SnapTimeToPausePlayback", *v9);
    }

    lhs = v25;
    FigCFSetPropertyToTime();
    *(DerivedStorage + 1064) = v25;
    *(DerivedStorage + 1088) = v27;
    *&lhs.value = v22;
    lhs.epoch = v5;
    v13 = *(DerivedStorage + 160);
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v14)
    {
      v14(v13, &lhs);
    }

    rhs = lhs;
    fpic_CheckIfPlayheadHasReachedPrimaryPlaybackGate(a1, &rhs);
  }

  if (v26.flags)
  {
    memset(&v24, 0, sizeof(v24));
    lhs = v25;
    rhs = v26;
    CMTimeAdd(&v24, &lhs, &rhs);
    if (dword_1EAF178D0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (dword_1EAF178D0)
  {
    LODWORD(v24.value) = 0;
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = v24.value;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = value;
    }

    else
    {
      v18 = value & 0xFFFFFFFE;
    }

    if (v18)
    {
      lhs = v25;
      Seconds = CMTimeGetSeconds(&lhs);
      v20 = *(CMBaseObjectGetDerivedStorage() + 1088);
      v21 = *(DerivedStorage + 1144);
      LODWORD(rhs.value) = 136316162;
      *(&rhs.value + 4) = "fpic_GatePrimaryPlaybackAtCurrentEvent";
      LOWORD(rhs.flags) = 2048;
      *(&rhs.flags + 2) = a1;
      HIWORD(rhs.epoch) = 2048;
      v29 = Seconds;
      v30 = 1024;
      v31[0] = v20;
      LOWORD(v31[1]) = 1024;
      *(&v31[1] + 2) = v21;
      _os_log_send_and_compose_impl(v18, 0, &lhs, 128, &dword_1962D5000, v16, 0, "<<<< FigPlayerInterstitial >>>> %s: %p: gated primary playback to %f, isPrimaryPlaybackGateSetForIntendedSeek %d, already there: %d", &rhs, 44, *&v22, DWORD2(v22), v23);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

uint64_t fpic_GetOffsetForEvent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, CMTime *a5@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = (*(DerivedStorage + 88))(a1, a4, a2);
  v12 = MEMORY[0x1E6960CC0];
  v17 = *MEMORY[0x1E6960CC0];
  *&a5->value = *MEMORY[0x1E6960CC0];
  v13 = *(v12 + 16);
  a5->epoch = v13;
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 896))
  {
    if (*(DerivedStorage + 904) != a2)
    {
      *&a5->value = v17;
      a5->epoch = v13;
      return result;
    }

    goto LABEL_10;
  }

  if (*(DerivedStorage + 924))
  {
LABEL_10:
    *&a5->value = *(DerivedStorage + 912);
    v15 = *(DerivedStorage + 928);
LABEL_11:
    a5->epoch = v15;
    return result;
  }

  if (*(a3 + 12))
  {
    *time1 = *a3;
    *&time1[16] = *(a3 + 16);
    *time2 = v17;
    *&time2[16] = v13;
    result = CMTimeCompare(time1, time2);
    if (result >= 1)
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      fpic_EventDateTimeMoment(v11, &v26);
      v25 = 0;
      memset(time1, 0, sizeof(time1));
      fpic_GetEffectiveCurrentItemMoment(time1);
      *time2 = *time1;
      *&time2[16] = *&time1[16];
      v23 = v25;
      result = fpic_MomentGreaterThan(time2, &v26);
      if (result)
      {
        v19 = v26;
        v20 = v27;
        v21 = v28;
        v18 = *a3;
        fpic_AddTimeToMoment(&v19, &v18, time2);
        v19 = *time1;
        v20 = *&time1[16];
        v21 = v25;
        result = fpic_MomentGreaterThan(time2, &v19);
        if (result)
        {
          *time2 = *time1;
          *&time2[16] = *&time1[16];
          v23 = v25;
          v19 = v26;
          v20 = v27;
          v21 = v28;
          return fpic_SubtractMomentFromMoment(time2, &v19, a5);
        }

        v16 = MEMORY[0x1E6960C70];
        *&a5->value = *MEMORY[0x1E6960C70];
        v15 = *(v16 + 16);
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t fpic_ReadAssetListForEvent(uint64_t a1, uint64_t a2, const void *a3, const void *a4, uint64_t a5, void *a6, uint64_t a7, CMBlockBufferRef *a8)
{
  v82 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = (*(DerivedStorage + 88))(a1, a2, a3);
  v18 = v17;
  if (a4)
  {
    v19 = CFRetain(a4);
  }

  else
  {
    v19 = FigPlayerInterstitialEventCopyAssetListUrl(v17);
  }

  anURL = v19;
  CMBaseObjectGetDerivedStorage();
  FigCFArrayGetFirstIndexOfValue();
  blockBufferOut = 0;
  memset(&v62, 0, sizeof(v62));
  fpic_PredictEventGroupDurationOnPrimary(a1, a3, a2, 0, 0, &v62);
  memset(&v61, 0, sizeof(v61));
  *time = v62;
  fpic_GetOffsetForEvent(a1, a3, time, a2, &v61);
  Seconds = 0.0;
  if (v61.flags)
  {
    *time = v61;
    Seconds = CMTimeGetSeconds(time);
  }

  if (anURL)
  {
    CFURLGetString(anURL);
    Value = FigCFDictionaryGetValue();
    if (Value)
    {
      v23 = Value;
      CMBaseObjectGetDerivedStorage();
      theArray = 0;
      v73 = 0;
      cf = 0;
      v67 = 0;
      v24 = *(MEMORY[0x1E6960C98] + 16);
      v68 = *MEMORY[0x1E6960C98];
      v69 = v24;
      v70 = *(MEMORY[0x1E6960C98] + 32);
      v66 = 0;
      if (dword_1EAF178D0)
      {
        *v65 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v26 = *v65;
        v27 = type;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v28 = v26;
        }

        else
        {
          v28 = v26 & 0xFFFFFFFE;
        }

        if (v28)
        {
          v74 = 136315650;
          v75 = "fpic_SetAssetListResponseFromOfflineCache";
          v76 = 2048;
          v77 = a1;
          v78 = 2112;
          v79 = a3;
          _os_log_send_and_compose_impl(v28, 0, time, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v27, "<<<< FigPlayerInterstitial >>>> %s: %p: setting cached asset list response data for %@", &v74, 32);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v34 = FigInterstitialCreatePropertyListsFromJSONData(v23, &theArray, &cf, &v67, &v68, &v66);
      if (v34)
      {
        goto LABEL_69;
      }

      FigPlaybackItemGetFigBaseObject();
      v36 = v35;
      v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v37)
      {
        v21 = 4294954514;
        goto LABEL_34;
      }

      v38 = *MEMORY[0x1E695E480];
      v34 = v37(v36, @"OfflineInterstitialURLs", *MEMORY[0x1E695E480], &v73);
      if (v34)
      {
LABEL_69:
        v21 = v34;
      }

      else
      {
        MutableCopy = CFArrayCreateMutableCopy(v38, 0, theArray);
        v21 = MutableCopy;
        if (MutableCopy)
        {
          if (CFArrayGetCount(MutableCopy) >= 1)
          {
            v40 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v21, v40);
              CFURLGetString(ValueAtIndex);
              v42 = FigCFDictionaryGetValue();
              if (v42)
              {
                v43 = v42;
              }

              else
              {
                v43 = ValueAtIndex;
              }

              CFArraySetValueAtIndex(v21, v40++, v43);
            }

            while (v40 < CFArrayGetCount(v21));
          }

          *time = v68;
          *&time[16] = v69;
          v81 = v70;
          fpic_handleAssetListResponseDataOnQueue();
          CFRelease(v21);
          v21 = 0;
        }
      }

LABEL_34:
      if (theArray)
      {
        CFRelease(theArray);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v67)
      {
        CFRelease(v67);
      }

      if (v73)
      {
        CFRelease(v73);
      }

      v44 = v66;
      if (!v66)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    if (!fpic_wasPreloadLoaded(a1, v18))
    {
      v29 = *MEMORY[0x1E695E480];
      v30 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%f", *&Seconds);
      v31 = CMBlockBufferCreateEmpty(v29, 0, 0, &blockBufferOut);
      if (v31)
      {
        v21 = v31;
        v32 = blockBufferOut;
      }

      else
      {
        v21 = fpic_IssueTopLevelInterstitialRequest(a1, anURL, v30, fpic_HTTPReadCallback, fpic_customURLReadCallback, a5, a6, a7);
        v32 = blockBufferOut;
        if (!v21)
        {
          *a8 = blockBufferOut;
          blockBufferOut = 0;
LABEL_19:
          CFRelease(anURL);
          if (!v30)
          {
            return v21;
          }

          v33 = v30;
LABEL_45:
          CFRelease(v33);
          return v21;
        }
      }

      if (v32)
      {
        CFRelease(v32);
      }

      goto LABEL_19;
    }

    theArray = 0;
    v73 = 0;
    cf = 0;
    v46 = *(MEMORY[0x1E6960C98] + 16);
    v68 = *MEMORY[0x1E6960C98];
    v69 = v46;
    v70 = *(MEMORY[0x1E6960C98] + 32);
    v67 = 0;
    if (dword_1EAF178D0)
    {
      LODWORD(v66) = 0;
      v65[0] = OS_LOG_TYPE_DEFAULT;
      v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v48 = v66;
      v49 = v65[0];
      if (os_log_type_enabled(v47, v65[0]))
      {
        v50 = v48;
      }

      else
      {
        v50 = v48 & 0xFFFFFFFE;
      }

      if (v50)
      {
        v74 = 136315650;
        v75 = "fpic_SetAssetListResponseFromPreloadCache";
        v76 = 2048;
        v77 = a1;
        v78 = 2112;
        v79 = a3;
        _os_log_send_and_compose_impl(v50, 0, time, 128, &dword_1962D5000, v47, v49, "<<<< FigPlayerInterstitial >>>> %s: %p: setting preloaded cached asset list response data for %@", &v74, 32);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v51 = fpic_UnwrapEvent();
    PreloadedData = fpic_GetPreloadedData(a1, v51);
    if (PreloadedData)
    {
      v53 = PreloadedData;
      DataLength = CMBlockBufferGetDataLength(PreloadedData);
      Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], DataLength);
      v56 = Mutable;
      if (Mutable)
      {
        CFDataIncreaseLength(Mutable, DataLength);
        MutableBytePtr = CFDataGetMutableBytePtr(v56);
        v58 = CMBlockBufferCopyDataBytes(v53, 0, DataLength, MutableBytePtr);
        if (v58)
        {
          v21 = v58;
        }

        else
        {
          v21 = FigInterstitialCreatePropertyListsFromJSONData(v56, &v73, &theArray, &cf, &v68, &v67);
          v59 = v73;
          if (!v21)
          {
            *time = v68;
            *&time[16] = v69;
            v81 = v70;
            fpic_handleAssetListResponseDataOnQueue();
            v59 = v73;
          }

          if (v59)
          {
            CFRelease(v59);
          }
        }

LABEL_61:
        if (theArray)
        {
          CFRelease(theArray);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v56)
        {
          CFRelease(v56);
        }

        v44 = v67;
        if (!v67)
        {
          goto LABEL_44;
        }

LABEL_43:
        CFRelease(v44);
LABEL_44:
        v33 = anURL;
        goto LABEL_45;
      }

      fpic_ReadAssetListForEvent_cold_1(time);
    }

    else
    {
      fpic_ReadAssetListForEvent_cold_2(time);
      v56 = 0;
    }

    v21 = *time;
    goto LABEL_61;
  }

  fpic_SetPerAssetPerEventTrackedObject();
  return 0;
}

void fpic_AddNewHttpReq(uint64_t a1, const void *a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v9 = Mutable;
    CFDictionarySetValue(Mutable, @"FPICURLR_Event", a2);
    CFDictionarySetValue(v9, @"FPICURLR_HTTPRequest", a3);
    CFDictionarySetValue(v9, @"FPICURLR_Buffer", a4);
    CFArrayAppendValue(*(DerivedStorage + 680), v9);

    CFRelease(v9);
  }
}

void fpic_AddNewCustomURLReq(uint64_t a1, const void *a2, const void *a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v10 = Mutable;
    CFDictionarySetValue(Mutable, @"FPICURLR_Event", a2);
    CFDictionarySetValue(v10, @"FPICURLR_CURLLoader", a3);
    FigCFDictionarySetInt64();
    CFDictionarySetValue(v10, @"FPICURLR_Buffer", a5);
    CFArrayAppendValue(*(DerivedStorage + 680), v10);

    CFRelease(v10);
  }
}

void fpic_RemoveEvent(uint64_t a1, const void *a2, __CFArray *a3, int a4, int a5, int a6)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = FigCFWeakReferenceHolderCopyReferencedObject();
  CMBaseObjectGetDerivedStorage();
  FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
  if (FirstIndexOfValue == -1 || v13 == 0)
  {
    goto LABEL_32;
  }

  v57 = a6;
  idx = FirstIndexOfValue;
  v62 = a4;
  v16 = (*(DerivedStorage + 88))(a1, v13, a2);
  v17 = FigCFArrayGetFirstIndexOfValue();
  v59 = v16;
  v18 = FigPlayerInterstitialEventCopyIdentifier(v16);
  v63 = v13;
  v61 = DerivedStorage;
  if (dword_1EAF178D0)
  {
    v66 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(CMBaseObjectGetDerivedStorage() + 896))
  {
    fpic_UnwrapEvent();
    if (FigCFEqual())
    {
      if (dword_1EAF178D0)
      {
        v66 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      fpic_ForceCancelInitiatedSeek(a1);
    }
  }

  CFRetain(a2);
  v60 = v18;
  if (v17 != -1)
  {
    PerEventTrackingCount = fpic_GetPerEventTrackingCount(DerivedStorage, v17);
    FirstCurrentItem = fpic_GetFirstCurrentItem();
    LastPlaybackError = FigPlayerInterstitialEventGetLastPlaybackError(v59);
    v37 = LastPlaybackError;
    if (a3)
    {
      v55 = LastPlaybackError;
      cf[0] = 0;
      fpic_CopyNextItemFromInterstitialPlayer(a1, v13, cf);
      if (PerEventTrackingCount >= 1)
      {
        for (i = 0; i != PerEventTrackingCount; ++i)
        {
          PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(v61, v17, i, @"PlaybackItem");
          v40 = CMBaseObjectGetDerivedStorage();
          if (PerAssetPerEventTrackedObject)
          {
            v41 = PerAssetPerEventTrackedObject == @"DummyItem";
          }

          else
          {
            v41 = 1;
          }

          if (!v41)
          {
            v42 = (*(v40 + 80))(a1, v13, PerAssetPerEventTrackedObject);
            if (!a5 || (cf[0] == v42 ? (v43 = cf[0] == 0) : (v43 = 1), v43))
            {
              CFArrayAppendValue(a3, PerAssetPerEventTrackedObject);
            }
          }
        }
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      DerivedStorage = v61;
      v37 = v55;
    }

    fpic_RecordPastCurrentEventDuration(a1, a2);
    CFArrayRemoveValueAtIndex(*(DerivedStorage + 656), v17);
    fpic_RemovePerEventTrackedObjects();
    v44 = FigPlayerInterstitialEventCopyIdentifier(v59);
    fpic_ForgetPreloadByTargetID(a1, v44);
    if (v44)
    {
      CFRelease(v44);
    }

    CFSetSetValue(*(DerivedStorage + 688), a2);
    fpic_CancelPendingURLRequest(a1, a2);
    if (v57)
    {
      fpic_HopNextMomentIfNecessary();
    }

    if (!CFArrayGetCount(*(DerivedStorage + 656)) && FigPlayerInterstitialEventIsPostRoll(v59))
    {
      fpic_DeassertPostRoll(a1);
    }

    if (v17)
    {
      if (PerEventTrackingCount > 0 || v37)
      {
LABEL_78:
        fpic_PostInterstitialWasUnscheduledNotification(a1, a2, v37);
      }
    }

    else
    {
      v46 = *(DerivedStorage + 540);
      fpic_StopRecordingActiveInterstitialItemPlayoutTime(a1, FirstCurrentItem);
      fpic_SignalCurrentEvent(a1, v13);
      v47 = v46 & 0x1D;
      v18 = v60;
      v48 = MEMORY[0x1E6960CC0];
      v49 = *MEMORY[0x1E6960CC0];
      *(DerivedStorage + 432) = *MEMORY[0x1E6960CC0];
      v50 = *(v48 + 16);
      *(DerivedStorage + 448) = v50;
      *(DerivedStorage + 480) = v49;
      *(DerivedStorage + 496) = v50;
      v52 = PerEventTrackingCount > 0 || v37 != 0;
      if (v47 != 1 && v52)
      {
        goto LABEL_78;
      }
    }

    FigPlayerInterstitialEventSetLastPlaybackError(v59);
    if (*(DerivedStorage + 1224))
    {
      v53 = CFRetain(*(DerivedStorage + 32));
      v54 = *(DerivedStorage + 8);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __fpic_RemoveEvent_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v53;
      dispatch_async(v54, block);
    }
  }

  v20 = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(v20 + 656));
  v22 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v22)
  {
    v23 = v22;
    v24 = (*(v20 + 88))(a1, v22, a2);
    v25 = FigPlayerInterstitialEventCopyIdentifier(v24);
    if (FigPlayerInterstitialEventIsPreRoll(v24))
    {
      if (Count < 1)
      {
LABEL_18:
        fpic_flipInterstitialAndPrimaryVisibility(a1, 0, v23, NAN);
        if (dword_1EAF178D0)
        {
          v66 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v31 = v66;
          v32 = type;
          if (os_log_type_enabled(v30, type))
          {
            v33 = v31;
          }

          else
          {
            v33 = v31 & 0xFFFFFFFE;
          }

          if (v33)
          {
            v67 = 136315394;
            v68 = "fpic_SwapToPrimaryItemPlayerLayerUponPrerollCancelation";
            v69 = 2048;
            v70 = a1;
            _os_log_send_and_compose_impl(v33, 0, cf, 128, &dword_1962D5000, v30, v32, "<<<< FigPlayerInterstitial >>>> %s: %p: preroll event encountered an error condition, swapping back to primary item player layer", &v67, 22);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        v26 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v20 + 656), v26);
          v28 = (*(v20 + 88))(a1, v23, ValueAtIndex);
          v29 = FigPlayerInterstitialEventCopyIdentifier(v28);
          if (FigPlayerInterstitialEventIsPreRoll(v28))
          {
            if (!FigCFEqual())
            {
              break;
            }
          }

          if (v29)
          {
            CFRelease(v29);
          }

          if (Count == ++v26)
          {
            goto LABEL_18;
          }
        }

        if (v29)
        {
          CFRelease(v29);
        }
      }
    }

    CFRelease(v23);
    v13 = v63;
    v18 = v60;
    if (v25)
    {
      CFRelease(v25);
    }
  }

  if (v62)
  {
    CMBaseObjectGetDerivedStorage();
    v45 = FigCFArrayGetFirstIndexOfValue();
    CFDictionaryRemoveValue(v61[87], v18);
    CFArrayRemoveValueAtIndex(v61[25], idx);
    if (v45 != -1)
    {
      CFArrayRemoveValueAtIndex(v61[26], v45);
    }

    fpic_ForgetPastEvent();
    fpic_UpdatePlaybackItemEventList();
    v18 = v60;
  }

  CFRelease(a2);
  if (v18)
  {
    CFRelease(v18);
  }

LABEL_32:
  if (v13)
  {
    CFRelease(v13);
  }
}

const void *fpic_wasPreloadLoaded(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = FigPlayerInterstitialEventCopyIdentifier(a2);
  attachmentModeOut = 0;
  Value = CFDictionaryGetValue(*(DerivedStorage + 712), v4);
  if (Value)
  {
    TypeID = CMBlockBufferGetTypeID();
    if (TypeID != CFGetTypeID(Value) || CMGetAttachment(Value, @"Preload_RequestID", &attachmentModeOut))
    {
      Value = 0;
      goto LABEL_5;
    }

    CMGetAttachment(Value, @"Preload_URL", &attachmentModeOut);
    v8 = FigPlayerInterstitialEventCopyAssetListUrl(a2);
    v9 = FigPlayerInterstitialEventCopyInterstitialAssetURLs(a2);
    v10 = v9;
    if (v8)
    {
      Value = FigCFEqual();
      if (v10)
      {
        CFRelease(v10);
      }

      v11 = v8;
    }

    else
    {
      if (!v9)
      {
        Value = FigCFEqual();
        goto LABEL_5;
      }

      if (CFArrayGetCount(v9) == 1)
      {
        CFArrayGetValueAtIndex(v10, 0);
      }

      Value = FigCFEqual();
      v11 = v10;
    }

    CFRelease(v11);
  }

LABEL_5:
  if (v4)
  {
    CFRelease(v4);
  }

  return Value;
}

void fpic_HTTPReadCallback(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, unsigned int a7, int a8)
{
  v61 = *MEMORY[0x1E69E9840];
  *&v42 = 0;
  *(&v42 + 1) = &v42;
  v43 = 0x2020000000uLL;
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated() || (Owner = FigRetainProxyGetOwner()) == 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = CFRetain(Owner);
  }

  FigRetainProxyUnlockMutex();
  if (v14)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v17 = *DerivedStorage;
    block = MEMORY[0x1E69E9820];
    *&v38 = 3221225472;
    *(&v38 + 1) = __fpic_HTTPReadCallback_block_invoke;
    *&v39 = &unk_1E748B8C8;
    *(&v39 + 1) = &v42;
    *&v40 = v14;
    *(&v40 + 1) = a1;
    v41 = DerivedStorage;
    dispatch_sync(v17, &block);
    v18 = *(*(&v42 + 1) + 24);
    if (v18)
    {
      Value = CFDictionaryGetValue(v18, @"FPICURLR_Event");
      v20 = CFDictionaryGetValue(*(*(&v42 + 1) + 24), @"FPICURLR_Buffer");
      if (a8 || (fpic_HandleResponseData(v14, Value, a4, a5, a6, v20, (a7 >> 1) & 1, v21, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, block, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60), (a8 = v22) != 0))
      {
        v23 = *(DerivedStorage + 300) + 1;
        *(DerivedStorage + 300) = v23;
        fpic_setItemPropertyInt32(DerivedStorage[20], @"interstitialPlaybackFailureCount", v23);
        HIDWORD(v36) = 0;
        BYTE3(v36) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v25 = *DerivedStorage;
        v29 = MEMORY[0x1E69E9820];
        v30 = 3221225472;
        v31 = __fpic_HTTPReadCallback_block_invoke_166;
        v32 = &__block_descriptor_52_e5_v8__0l;
        v33 = v14;
        v34 = Value;
        LODWORD(v35) = a8;
        dispatch_sync(v25, &v29);
      }

      fpic_ServiceCurrentEvent(v14, MEMORY[0x1E6960C70]);
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, v28, v29);
    }

    CFRelease(v14);
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, v28, v29);
  }

  v26 = *(*(&v42 + 1) + 24);
  if (v26)
  {
    CFRelease(v26);
  }

  _Block_object_dispose(&v42, 8);
}

void sub_1967C4B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void fpic_customURLReadCallback(const void *a1, uint64_t a2, uint64_t a3, int a4, char a5, uint64_t a6)
{
  v62 = *MEMORY[0x1E69E9840];
  SInt64 = FigCFNumberCreateSInt64();
  cf = 0;
  v61 = 0;
  HIDWORD(v59) = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  LODWORD(v58) = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  if (!a1)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, v29, v30);
    *(v56 + 6) = v26;
LABEL_19:
    fpic_ServiceCurrentEvent(a1, MEMORY[0x1E6960C70]);
    if (!v6)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  v14 = *DerivedStorage;
  *(&v44 + 1) = MEMORY[0x1E69E9820];
  *&v45 = 3221225472;
  *(&v45 + 1) = __fpic_customURLReadCallback_block_invoke;
  v46 = &unk_1E748B8C8;
  v47 = &v51;
  v48 = a1;
  v49 = SInt64;
  v50 = DerivedStorage;
  dispatch_sync(v14, &v44 + 8);
  v15 = v52[3];
  if (v15)
  {
    Value = CFDictionaryGetValue(v15, @"FPICURLR_Event");
    HTTPStatusCode = FigCustomURLResponseInfoGetHTTPStatusCode();
    v18 = v56;
    *(v56 + 6) = HTTPStatusCode;
    if (HTTPStatusCode == -17360)
    {
      *(v18 + 6) = 0;
    }

    else if (HTTPStatusCode)
    {
      goto LABEL_14;
    }

    v19 = v61;
    if (!v61)
    {
      v19 = 200;
      v61 = 200;
    }

    HTTPStatusCode = FigCFHTTPCopyErrorCodeAndCommentForHTTPStatusCode(v19, &v59 + 1, 0);
    *(v56 + 6) = HTTPStatusCode;
    if (!HTTPStatusCode && !a6 && !HIDWORD(v59))
    {
      if ((a5 & 1) == 0 || !fpic_copyRedirectURLFromCustomURLResponse(a3, &cf))
      {
        v21 = CFDictionaryGetValue(v52[3], @"FPICURLR_Buffer");
        fpic_HandleResponseData(a1, Value, a4, 0, 0, v21, a5 & 1, v22, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, cf, v61);
        *(v56 + 6) = HTTPStatusCode;
        goto LABEL_17;
      }

      v20 = *DerivedStorage;
      *(&v39 + 1) = MEMORY[0x1E69E9820];
      *&v40 = 3221225472;
      *(&v40 + 1) = __fpic_customURLReadCallback_block_invoke_2;
      *&v41 = &unk_1E7494FB8;
      *(&v41 + 1) = &v55;
      v42 = v6;
      *&v43 = a1;
      *(&v43 + 1) = Value;
      *&v44 = cf;
      dispatch_sync(v20, &v39 + 8);
      HTTPStatusCode = *(v56 + 6);
    }

LABEL_14:
    if (a6)
    {
LABEL_18:
      DWORD1(v39) = 0;
      BYTE3(v39) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v24 = *DerivedStorage;
      v31 = MEMORY[0x1E69E9820];
      v32 = 3221225472;
      v33 = __fpic_customURLReadCallback_block_invoke_172;
      v34 = &unk_1E748B8C8;
      v35 = &v55;
      v36 = a1;
      v37 = Value;
      v38 = a6;
      dispatch_sync(v24, &v31);
      goto LABEL_19;
    }

LABEL_17:
    if (!HTTPStatusCode)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, v29, v30);
  *(v56 + 6) = v27;
  if (v6)
  {
LABEL_20:
    CFRelease(v6);
  }

LABEL_21:
  if (SInt64)
  {
    CFRelease(SInt64);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v25 = v52[3];
  if (v25)
  {
    CFRelease(v25);
  }

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);
}

void sub_1967C4FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const void *fpic_GetPreloadedData(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigPlayerInterstitialEventCopyIdentifier(a2);
  if (!fpic_wasPreloadLoaded(a1, a2))
  {
    Value = 0;
    if (!v5)
    {
      return Value;
    }

    goto LABEL_3;
  }

  Value = CFDictionaryGetValue(*(DerivedStorage + 712), v5);
  if (v5)
  {
LABEL_3:
    CFRelease(v5);
  }

  return Value;
}

CFIndex fpic_FindURLReq(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 680));
  while (Count-- >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 680), Count);
    if (CFDictionaryGetValue(ValueAtIndex, a2) == a3)
    {
      return Count;
    }
  }

  return -1;
}

const void *__fpic_customURLReadCallback_block_invoke(uint64_t a1)
{
  result = fpic_FindURLReq(*(a1 + 40), @"FPICURLR_CURLRequestID", *(a1 + 48));
  if (result != -1)
  {
    result = CFArrayGetValueAtIndex(*(*(a1 + 56) + 680), result);
    if (result)
    {
      result = CFRetain(result);
    }

    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

void fpic_setItemPropertyInt32(uint64_t a1, uint64_t a2, int a3)
{
  valuePtr = a3;
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  FigPlaybackItemGetFigBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v7)
  {
    v7(v6, a2, v4);
  }

  CFRelease(v4);
}

double fpic_clearEventAssetListState(uint64_t a1)
{
  FigPlayerInterstitialEventSetAssetListResponse(a1, 0);
  v2 = *(MEMORY[0x1E6960C98] + 16);
  v4[0] = *MEMORY[0x1E6960C98];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E6960C98] + 32);
  FigPlayerInterstitialEventSetOverrideSkipControlTimeRange(a1, v4);
  return FigPlayerInterstitialEventSetOverrideSkipControlLocalizedLabelBundleKey(a1, 0);
}

void fpic_UpdateEventInAddOrder(uint64_t a1, CFTypeRef a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
  CMBaseObjectGetDerivedStorage();
  v8 = FigCFArrayGetFirstIndexOfValue();
  if (a2)
  {
    a2 = CFRetain(a2);
  }

  if (FirstIndexOfValue != -1)
  {
    fpic_ForgetPastEvent();
    CFArraySetValueAtIndex(*(DerivedStorage + 200), FirstIndexOfValue, a3);
    if (v8 == -1)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      CFArraySetValueAtIndex(*(DerivedStorage + 208), v8, a3);
    }

    fpic_UpdatePlaybackItemEventList();
    CMBaseObjectGetDerivedStorage();
    v10 = FigCFArrayGetFirstIndexOfValue();
    if (v10 != -1)
    {
      CFArraySetValueAtIndex(*(DerivedStorage + 656), v10, a3);
      URLReq = fpic_FindURLReq(a1, @"FPICURLR_Event", a2);
      if (URLReq != -1)
      {
        v12 = URLReq;
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 680), URLReq);
        Value = CFDictionaryGetValue(ValueAtIndex, @"FPICURLR_Buffer");
        v15 = CFDictionaryGetValue(ValueAtIndex, @"FPICURLR_HTTPRequest");
        if (v15)
        {
          fpic_AddNewHttpReq(a1, a3, v15, Value);
        }

        else
        {
          v16 = CFDictionaryGetValue(ValueAtIndex, @"FPICURLR_CURLLoader");
          v18 = 0;
          if (v16)
          {
            v17 = v16;
            if (FigCFDictionaryGetInt64IfPresent())
            {
              fpic_AddNewCustomURLReq(a1, a3, v17, v18, Value);
            }
          }
        }

        CFArrayRemoveValueAtIndex(*(DerivedStorage + 680), v12);
      }
    }

    fpic_PostNotification(a1, @"fpiEventsDidChange", 0);
    if (*(DerivedStorage + 904) == a2)
    {
      *(DerivedStorage + 904) = a3;
    }
  }

  if (a2)
  {
    CFRelease(a2);
  }
}

uint64_t fpic_CopyNextItemFromInterstitialPlayer(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = (*(DerivedStorage + 72))(a1, a2, *(DerivedStorage + 48));
  if (a3)
  {
    if (result)
    {
      fpic_CopyNextItem(result, a3);
      return 0;
    }

    else
    {
      *a3 = 0;
    }
  }

  else
  {
    fpic_CopyNextItemFromInterstitialPlayer_cold_1(&v8);
    return v8;
  }

  return result;
}

uint64_t fpic_RecordPastCurrentEventDuration(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = **&MEMORY[0x1E6960C70];
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v5)
  {
    v6 = v5;
    CMBaseObjectGetDerivedStorage();
    FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
    fpic_GetProjectedDuration(a1, a2, FirstIndexOfValue, v6);
    if (!FirstIndexOfValue)
    {
      lhs = v13;
      v11 = *(DerivedStorage + 480);
      CMTimeAdd(&v13, &lhs, &v11);
    }

    v8 = *MEMORY[0x1E695E480];
    lhs = v13;
    v9 = CMTimeCopyAsDictionary(&lhs, v8);
    CFDictionarySetValue(*(DerivedStorage + 672), a2, v9);
    if (v9)
    {
      CFRelease(v9);
    }

    CFRelease(v6);
    return 0;
  }

  else
  {
    fpic_RecordPastCurrentEventDuration_cold_1(&lhs);
    return LODWORD(lhs.value);
  }
}

void fpic_CancelPendingURLRequest(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  URLReq = fpic_FindURLReq(a1, @"FPICURLR_Event", a2);
  if (URLReq != -1)
  {
    v6 = URLReq;
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 680), URLReq);
    Value = CFDictionaryGetValue(ValueAtIndex, @"FPICURLR_HTTPRequest");
    if (Value)
    {
      v9 = Value;
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v10)
      {
        v10(v9);
      }
    }

    else
    {
      v11 = CFDictionaryGetValue(ValueAtIndex, @"FPICURLR_CURLLoader");
      if (v11)
      {
        v12 = v11;
        if (FigCFDictionaryGetInt64IfPresent())
        {
          v13 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v13)
          {
            v13(v12, 0);
          }
        }
      }
    }

    CFArrayRemoveValueAtIndex(*(DerivedStorage + 680), v6);
  }
}

void fpic_DeassertPostRoll(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  PrimaryPlayerAndCopyWrapper = fpic_GetPrimaryPlayerAndCopyWrapper(a1, &cf);
  *(DerivedStorage + 1146) = 0;
  if (PrimaryPlayerAndCopyWrapper)
  {
    v4 = *(DerivedStorage + 1168);
    FigPlayerGetFigBaseObject();
    v6 = v5;
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v7(v6, @"ActionAtEnd", v4);
    }
  }

  v8 = cf;
  if (cf)
  {

    CFRelease(v8);
  }
}

void fpic_StopRecordingActiveInterstitialItemPlayoutTime(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(DerivedStorage + 540) & 0x1D) == 1)
  {
    v5 = DerivedStorage;
    memset(&v13, 0, sizeof(v13));
    fpic_GetItemPlayoutDuration(a1, a2, &v13);
    if ((v13.flags & 0x1D) == 1)
    {
      lhs = *(v5 + 432);
      rhs = v13;
      CMTimeAdd(&time, &lhs, &rhs);
      *(v5 + 432) = time;
    }

    if (dword_1EAF178D0)
    {
      LODWORD(rhs.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      value = rhs.value;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
      {
        v8 = value;
      }

      else
      {
        v8 = value & 0xFFFFFFFE;
      }

      if (v8)
      {
        time = v13;
        Seconds = CMTimeGetSeconds(&time);
        time = *(v5 + 432);
        v10 = CMTimeGetSeconds(&time);
        LODWORD(lhs.value) = 136315906;
        *(&lhs.value + 4) = "fpic_StopRecordingActiveInterstitialItemPlayoutTime";
        LOWORD(lhs.flags) = 2112;
        *(&lhs.flags + 2) = a2;
        HIWORD(lhs.epoch) = 2048;
        v15 = Seconds;
        v16 = 2048;
        v17 = v10;
        _os_log_send_and_compose_impl(v8, 0, &time, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, 0, "<<<< FigPlayerInterstitial >>>> %s: Finish recording playout time for %@; %f contributes to %f", &lhs, 42);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v11 = MEMORY[0x1E6960C70];
    *(v5 + 528) = *MEMORY[0x1E6960C70];
    *(v5 + 544) = *(v11 + 16);
  }
}

void fpic_SignalCurrentEvent(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v17 = 0;
  cf = 0;
  if (!Mutable)
  {
    goto LABEL_21;
  }

  v7 = Mutable;
  if (!*(DerivedStorage + 160))
  {
    CFRelease(Mutable);
LABEL_21:
    v9 = &stru_1F0B1AFB8;
LABEL_14:
    CFRelease(v9);
    goto LABEL_15;
  }

  if (CFArrayGetCount(*(DerivedStorage + 656)) && (ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 656), 0)) != 0)
  {
    v10 = (*(DerivedStorage + 88))(a1, a2, ValueAtIndex);
    v9 = FigPlayerInterstitialEventCopyIdentifier(v10);
  }

  else
  {
    v9 = &stru_1F0B1AFB8;
  }

  FigPlaybackItemGetFigBaseObject();
  v12 = v11;
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v13)
  {
    v13(v12, @"currentInterstitialEvent", v9);
  }

  FigCFDictionarySetValue();
  fpic_copyPrimaryPlayer(a1, &v17);
  if (v17)
  {
    FigPlayerGetFigBaseObject();
    v15 = v14;
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v16)
    {
      v16(v15, @"PlaybackState", v5, &cf);
    }

    FigCFDictionarySetValue();
  }

  fpic_PostNotification(a1, @"fpiCurrentEventDidChange", v7);
  fpic_updateSkippableEventStateOnQueue();
  CFRelease(v7);
  if (v9)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }
}

void fpic_CopyNextItem(uint64_t a1, CFTypeRef *a2)
{
  v6 = 0;
  if (a1)
  {
    v4 = *a2;
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v5)
    {
      v5(a1, v4, &v6);
    }
  }

  if (*a2)
  {
    CFRelease(*a2);
  }

  *a2 = v6;
}

void fpic_ForgetPreloadByTargetID(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(DerivedStorage + 712), a2);
  if (Value)
  {
    v5 = Value;
    attachmentModeOut = 0;
    v6 = CMGetAttachment(Value, @"Preload_RequestID", &attachmentModeOut);
    if (v6)
    {
      v8 = v6;
      FigHTTPRequestGetClassID(v6, v7);
      if (CMBaseObjectIsMemberOfClass())
      {
        v9 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v9)
        {
          v9(v8);
        }
      }

      else
      {
        TypeID = CFNumberGetTypeID();
        if (TypeID == CFGetTypeID(v8))
        {
          v11 = CMGetAttachment(v5, @"Preload_CustomURLLoader", &attachmentModeOut);
          if (v11)
          {
            v12 = v11;
            UInt64 = FigCFNumberGetUInt64();
            v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
            if (v14)
            {
              v14(v12, UInt64);
            }
          }
        }
      }
    }

    CFDictionaryRemoveValue(*(DerivedStorage + 712), a2);
  }
}

double fpic_GetItemPlayoutDuration@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, CMTime *a3@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = MEMORY[0x1E6960C70];
  a3->epoch = *(MEMORY[0x1E6960C70] + 16);
  v8 = *v7;
  *&a3->value = *v7;
  if ((*(DerivedStorage + 540) & 0x1D) == 1)
  {
    memset(&v17, 0, sizeof(v17));
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v9)
    {
      v9(a2, &v17);
      if ((v17.flags & 0x1D) == 1)
      {
        fpic_GetCurrentlyPlayingEvent(a1);
        v10 = fpic_UnwrapEvent();
        v15 = 0uLL;
        v16 = 0;
        fpic_GetItemEndTime();
        time1 = v17;
        memset(&time2, 0, sizeof(time2));
        CMTimeMinimum(a3, &time1, &time2);
        if (!fpic_hasFirstItemPlayedOutForEvent())
        {
          FigPlayerInterstitialEventGetFirstItemStartOffset(v10, &time1);
          time2 = *a3;
          if ((CMTimeCompare(&time2, &time1) & 0x80000000) == 0)
          {
            FigPlayerInterstitialEventGetFirstItemStartOffset(v10, &time2);
            v12 = *a3;
            CMTimeSubtract(&time1, &v12, &time2);
            *&v8 = time1.value;
            *a3 = time1;
          }
        }
      }
    }
  }

  return *&v8;
}

uint64_t fpic_copyPrimaryPlayer(uint64_t a1, void *a2)
{
  cf = 0;
  PrimaryPlayerAndCopyWrapper = fpic_GetPrimaryPlayerAndCopyWrapper(a1, &cf);
  if (a2)
  {
    if (PrimaryPlayerAndCopyWrapper)
    {
      PrimaryPlayerAndCopyWrapper = CFRetain(PrimaryPlayerAndCopyWrapper);
    }

    v4 = 0;
    *a2 = PrimaryPlayerAndCopyWrapper;
  }

  else
  {
    fpic_copyPrimaryPlayer_cold_1(&v7);
    v4 = v7;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

BOOL fpic_isTimelineTimerScheduledForItemTime(uint64_t a1, uint64_t a2, CMTime *a3)
{
  if (!*(a1 + 32) || *(a1 + 24) != a2)
  {
    return 0;
  }

  v8 = v3;
  v9 = v4;
  v7 = *a1;
  v6 = *a3;
  return faqrp_timeDifferenceIsWithinTolerance(&v7, &v6, &kMomentsAreCloseThreshold);
}

void fpic_UpdateSkippableEventStateTimerProc(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v1)
  {
    v3 = *DerivedStorage;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __fpic_UpdateSkippableEventStateTimerProc_block_invoke;
    v4[3] = &__block_descriptor_48_e5_v8__0l;
    v4[4] = v1;
    v4[5] = DerivedStorage;
    dispatch_sync(v3, v4);
    fpic_ServiceCurrentEvent(v1, MEMORY[0x1E6960C70]);
    CFRelease(v1);
  }
}

uint64_t fpic_TimeToGatePrimaryPlaybackAtCurrentEvent@<X0>(CMTime *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = CMBaseObjectGetDerivedStorage();
  v9 = v8 + 264;
  if (!*(v8 + 296))
  {
    v9 = v8 + 224;
  }

  v26 = *v9;
  v27 = *(v9 + 16);
  v10 = *(v9 + 24);
  v11 = *(v9 + 32);
  v12 = *(v9 + 33);
  v13 = *MEMORY[0x1E6960C70];
  *&v25.value = *MEMORY[0x1E6960C70];
  v14 = *(MEMORY[0x1E6960C70] + 16);
  v25.epoch = v14;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  if (*(DerivedStorage + 1143))
  {
    if (v11)
    {
      *a4 = v26;
      *(a4 + 16) = v27;
    }

    else if (v12)
    {
      v15 = *(DerivedStorage + 320);
      *time1 = *(DerivedStorage + 304);
      *&time1[16] = v15;
      v29 = *(DerivedStorage + 336);
      FigCreateTimeWithDateAndMoment(time1, a4, v10);
    }

    else
    {
      *a4 = v13;
      *(a4 + 16) = v14;
    }
  }

  else
  {
    CMTimeMake(a4, 0, 1);
  }

  if (!*(DerivedStorage + 968) && !*(DerivedStorage + 969))
  {
    result = CMBaseObjectGetDerivedStorage();
    if (*(result + 1144) && (*&time1[16] = *(DerivedStorage + 520), *time1 = *(DerivedStorage + 504), time2 = **&MEMORY[0x1E6960CC0], result = CMTimeCompare(time1, &time2), result >= 1))
    {
      v22 = (DerivedStorage + 1064);
      *time1 = *a4;
      *&time1[16] = *(a4 + 16);
      time2 = *(DerivedStorage + 1064);
      result = faqrp_timeDifferenceIsWithinTolerance(time1, &time2, &kMomentsAreCloseThreshold);
      if (!result)
      {
        result = CMBaseObjectGetDerivedStorage();
        if (!*(result + 1088))
        {
          *time1 = *a4;
          *&time1[16] = *(a4 + 16);
          *&time2.value = *v22;
          time2.epoch = *(DerivedStorage + 1080);
          result = CMTimeSubtract(&v25, time1, &time2);
          v21 = 0;
          v23 = *v22;
          *(a4 + 16) = *(DerivedStorage + 1080);
          *a4 = v23;
          goto LABEL_15;
        }
      }
    }

    else
    {
      v21 = *(DerivedStorage + 1146);
      if (!v21)
      {
        goto LABEL_15;
      }

      if (*(DerivedStorage + 160))
      {
        fpic_GetItemEndTime();
        *&v24.value = *&kPostRollTimeToPausePlaybackBuffer.value;
        v24.epoch = 0;
        result = CMTimeAdd(time1, &time2, &v24);
        v21 = 0;
        *a4 = *time1;
        *(a4 + 16) = *&time1[16];
        goto LABEL_15;
      }
    }

    v21 = 0;
    goto LABEL_15;
  }

  v16 = *(DerivedStorage + 160);
  VTable = CMBaseObjectGetVTable();
  v19 = *(VTable + 16);
  result = VTable + 16;
  v20 = *(v19 + 32);
  if (v20)
  {
    result = v20(v16, a4);
  }

  v21 = 1;
LABEL_15:
  if (a2)
  {
    *a2 = v25;
  }

  if (a3)
  {
    *a3 = v21;
  }

  return result;
}

void fpic_CheckIfPlayheadHasReachedPrimaryPlaybackGate(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1076))
  {
    v4 = DerivedStorage;
    v5 = (DerivedStorage + 1064);
    lhs = *a2;
    *&v10.value = *&kMomentsAreCloseThreshold.value;
    v10.epoch = 0;
    CMTimeAdd(&time1, &lhs, &v10);
    lhs = *v5;
    if ((CMTimeCompare(&time1, &lhs) & 0x80000000) == 0 && !*(CMBaseObjectGetDerivedStorage() + 1144))
    {
      v6 = FigCFWeakReferenceHolderCopyReferencedObject();
      v7 = fpic_CopyCurrentInterstitialItemTimebase();
      if (v7)
      {
        v8 = v7;
        if (CMTimebaseGetRate(v7) == 0.0)
        {
          UpTimeNanoseconds = FigGetUpTimeNanoseconds();
        }

        else
        {
          UpTimeNanoseconds = 0;
        }

        *(v4 + 1176) = UpTimeNanoseconds;
        CFRelease(v8);
      }

      else
      {
        *(v4 + 1176) = FigGetUpTimeNanoseconds();
      }

      if (v6)
      {
        CFRelease(v6);
      }

      *(v4 + 1144) = 1;
    }
  }
}

void fpic_HandlePreloadResponseData(uint64_t a1, uint64_t a2, const void *a3, OpaqueCMBlockBuffer *a4, size_t a5, size_t a6, int a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = a2;
  key = 0;
  CFDictionaryApplyFunction(*(DerivedStorage + 712), fpic_FindPreloadApplier, &v18);
  if (key)
  {
    Value = CFDictionaryGetValue(*(DerivedStorage + 712), key);
    if (a3)
    {
      v15 = key;
      v16 = CMBaseObjectGetDerivedStorage();
      CFDictionarySetValue(*(v16 + 712), v15, a3);
    }

    else
    {
      v17 = Value;
      if (Value)
      {
        if (a4)
        {
          CMBlockBufferAppendBufferReference(Value, a4, a5, a6, 0);
        }

        if (a7)
        {
          CMRemoveAttachment(v17, @"Preload_RequestID");
        }
      }
    }
  }
}

CFTypeID fpic_FindPreloadApplier(uint64_t a1, const void *a2, void *a3)
{
  TypeID = CMBlockBufferGetTypeID();
  result = CFGetTypeID(a2);
  if (TypeID == result)
  {
    attachmentModeOut = 0;
    CMGetAttachment(a2, @"Preload_RequestID", &attachmentModeOut);
    result = FigCFEqual();
    if (result)
    {
      a3[1] = a1;
    }
  }

  return result;
}

void __fpic_customURLIssuePreloadCallback_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2 & 1) == 0 || (__fpic_customURLIssuePreloadCallback_block_invoke_cold_1())
  {
    fpic_HandlePreloadResponseData(*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), 0, 0, v2 & 1);
  }
}

BOOL fpic_FindEventStraddlingPrimaryMoment(uint64_t a1, __int128 *a2, void *a3, CMTime *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v27 = *MEMORY[0x1E6960C70];
  *&v41.value = *MEMORY[0x1E6960C70];
  v9 = *(MEMORY[0x1E6960C70] + 16);
  v41.epoch = v9;
  v10 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v10)
  {
    fpic_FindEventStraddlingPrimaryMoment_cold_1(0, v11, v12, v13, v14, v15, v16, v17, v27, SDWORD2(v27), SHIDWORD(v27), v28);
    return 0;
  }

  v18 = v10;
  for (i = 0; ; ++i)
  {
    Count = *(DerivedStorage + 208);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      ValueAtIndex = 0;
      if (!a3)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    ValueAtIndex = FigCFArrayGetValueAtIndex();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    v22 = fpic_UnwrapEvent();
    fpic_GetEventStartMoment(v22, &v38);
    v36 = v27;
    v37 = v9;
    v34 = 0uLL;
    v35 = 0;
    fpic_PredictEventDurationOnPrimary(a1, ValueAtIndex, v18, &v34);
    fpic_PredictEventGroupDurationOnPrimary(a1, ValueAtIndex, v18, 0, &v36, &v45);
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    v45 = v38;
    v46 = v39;
    v47 = v40;
    v42 = v36;
    *&v43 = v37;
    fpic_AddTimeToMoment(&v45, &v42, &v31);
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v45 = v31;
    v46 = v32;
    v47 = v33;
    v42 = v34;
    *&v43 = v35;
    fpic_AddTimeToMoment(&v45, &v42, &v28);
    v23 = a2[1];
    v45 = *a2;
    v46 = v23;
    v47 = *(a2 + 4);
    v42 = v31;
    v43 = v32;
    v44 = v33;
    if (fpic_MomentGreaterThan(&v45, &v42))
    {
      v24 = a2[1];
      v42 = *a2;
      v43 = v24;
      v44 = *(a2 + 4);
      v45 = v28;
      v46 = v29;
      v47 = v30;
      if (fpic_MomentGreaterThan(&v45, &v42))
      {
        break;
      }
    }
  }

  v26 = a2[1];
  v45 = *a2;
  v46 = v26;
  v47 = *(a2 + 4);
  v42 = v31;
  v43 = v32;
  v44 = v33;
  fpic_SubtractMomentFromMoment(&v45, &v42, &v41);
  if (a3)
  {
LABEL_10:
    *a3 = ValueAtIndex;
  }

LABEL_11:
  if (a4)
  {
    *a4 = v41;
  }

  CFRelease(v18);
  return ValueAtIndex != 0;
}

void fpic_UnpauseInterstitialPlayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf[24] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  PrimaryPlayerAndCopyWrapper = fpic_GetPrimaryPlayerAndCopyWrapper(a1, cf);
  v32 = 1.0;
  Count = *(DerivedStorage + 656);
  if (Count && (Count = CFArrayGetCount(Count), Count > 0))
  {
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    v17 = 1.0;
    if (v16)
    {
      v16(PrimaryPlayerAndCopyWrapper, &v32);
      v17 = v32;
      if (v32 == 0.0 && *(DerivedStorage + 1146))
      {
        v17 = *(DerivedStorage + 880);
        v32 = v17;
      }

      if (v17 == 0.0)
      {
        if (*(CMBaseObjectGetDerivedStorage() + 1256))
        {
          v17 = *(DerivedStorage + 880);
          v32 = v17;
        }

        else
        {
          v17 = v32;
        }
      }
    }

    v18 = CMBaseObjectGetDerivedStorage();
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    if (ValueAtIndex)
    {
      v20 = (*(v18 + 88))(a1, a3, ValueAtIndex);
      if ((FigPlayerInterstitialEventGetRestrictions(v20) & 4) != 0 && v17 >= 1.0)
      {
        v17 = 1.0;
      }
    }

    v32 = v17;
    FigPlayerGetFigBaseObject();
    v23 = v22;
    v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v24)
    {
      v24(v23, @"AllowVideoRenderingIfSendingVisualsToNero", *MEMORY[0x1E695E4C0]);
    }

    FigPlayerGetFigBaseObject();
    v26 = v25;
    v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v27)
    {
      v27(v26, @"AllowVideoRenderingIfSendingVisualsToNero", *MEMORY[0x1E695E4D0]);
    }

    fpic_SetRateWithReason(a2, 37, v32);
    if (dword_1EAF178D0)
    {
      v31 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    fpic_UnpauseInterstitialPlayer_cold_1(Count, v7, v8, v9, v10, v11, v12, v13, v29, v30, SHIDWORD(v30), v31);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }
}

void fpic_UnregisterInterstitialItemNotifications(uint64_t a1, uint64_t a2, CFTypeRef a3)
{
  cf = 0;
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (a3 || (FigPlaybackItemGetFigBaseObject(), v5 = v4, (v6 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && (v6(v5, @"Timebase", *MEMORY[0x1E695E480], &cf), cf))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t fpic_findEventAndItemIndexForItemOnQueue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 656));
  if (Count < 1)
  {
    result = 0;
    v20 = -1;
    v17 = -1;
    if (a4)
    {
LABEL_10:
      *a4 = v20;
    }
  }

  else
  {
    v12 = Count;
    v21 = a4;
    v22 = a5;
    v13 = 0;
    v14 = 1;
    while (1)
    {
      PerEventTrackingCount = fpic_GetPerEventTrackingCount(DerivedStorage, v13);
      if (PerEventTrackingCount >= 1)
      {
        break;
      }

LABEL_7:
      v14 = ++v13 < v12;
      if (v13 == v12)
      {
        result = 0;
        v20 = -1;
        v17 = -1;
        goto LABEL_9;
      }
    }

    v16 = PerEventTrackingCount;
    v17 = 0;
    while (1)
    {
      PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(DerivedStorage, v13, v17, @"PlaybackItem");
      if (fpic_UnwrapPlaybackItem(a1, PerAssetPerEventTrackedObject, a2) == a3)
      {
        break;
      }

      if (v16 == ++v17)
      {
        goto LABEL_7;
      }
    }

    if (v14)
    {
      v20 = v13;
    }

    else
    {
      v20 = -1;
    }

    result = 1;
LABEL_9:
    a4 = v21;
    a5 = v22;
    if (v21)
    {
      goto LABEL_10;
    }
  }

  if (a5)
  {
    *a5 = v17;
  }

  return result;
}

double fpic_CurrentResumptionOffset@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, CMTime *a6@<X5>, CMTime *a7@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v38, 0, sizeof(v38));
  v10 = *(DerivedStorage + 408);
  a7->epoch = *(DerivedStorage + 424);
  v11 = MEMORY[0x1E6960CC0];
  v24 = a7;
  *&a7->value = v10;
  v36 = *v11;
  v37 = *(v11 + 2);
  Count = CFArrayGetCount(*(DerivedStorage + 656));
  v13 = *(DerivedStorage + 456);
  v35.epoch = *(DerivedStorage + 472);
  result = 0.0;
  v33 = 0u;
  v34 = 0u;
  *&v35.value = v13;
  v31 = 0;
  v32 = 0;
  if (Count >= 1)
  {
    v15 = Count;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 656), v16);
      v20 = (*(DerivedStorage + 88))(a1, a3, ValueAtIndex);
      v30 = 0;
      v28 = 0u;
      v29 = 0u;
      fpic_GetEventStartMoment(v20, &v28);
      if (!v17)
      {
        if (v18)
        {
          v17 = 0;
        }

        else
        {
          v33 = v28;
          v34 = v29;
          v17 = v30;
          v18 = BYTE1(v30);
          v31 = *(&v30 + 2);
          v32 = HIWORD(v30);
        }
      }

      if (!a4)
      {
        if (v16)
        {
          *lhs = v28;
          *&lhs[16] = v29;
          v45 = v30;
          *rhs = v33;
          *&rhs[16] = v34;
          v42 = v31;
          v43 = v32;
          v40 = v17;
          v41 = v18;
          if (fpic_MomentsAreCloseWithTolerance(lhs, rhs, &kMomentsAreCloseThreshold))
          {
            goto LABEL_12;
          }
        }
      }

      if (!a5)
      {
        *lhs = v28;
        *&lhs[16] = v29;
        v45 = v30;
        *rhs = v33;
        *&rhs[16] = v34;
        v42 = v31;
        v43 = v32;
        v40 = v17;
        v41 = v18;
        if (!fpic_MomentsAreCloseWithTolerance(lhs, rhs, &kMomentsAreCloseThreshold))
        {
          goto LABEL_12;
        }
      }

      if (v16)
      {
        fpic_GetProjectedDuration(a1, ValueAtIndex, v16, a3);
        v38 = *lhs;
        v21 = *&lhs[16];
      }

      else
      {
        if (a2 || (*(DerivedStorage + 540) & 0x1D) != 1)
        {
          fpic_GetProjectedDuration(a1, ValueAtIndex, 0, a3);
          v38 = *lhs;
          fpic_AccumulateDuration(&v35, lhs);
          *lhs = v38;
          *rhs = *(DerivedStorage + 480);
          *&rhs[16] = *(DerivedStorage + 496);
          CMTimeAdd(&v38, lhs, rhs);
          goto LABEL_21;
        }

        fpic_GetCurrentlyPlayingEventPlayoutDuration();
        *lhs = v36;
        v21 = v37;
      }

      *&lhs[16] = v21;
      fpic_AccumulateDuration(&v35, lhs);
LABEL_21:
      FigPlayerInterstitialEventGetResumptionOffset(v20, lhs);
      if ((lhs[12] & 0x11) == 1)
      {
        FigPlayerInterstitialEventGetResumptionOffset(v20, lhs);
        v38 = *lhs;
      }

      *lhs = v38;
      *&result = fpic_AccumulateDuration(v24, lhs).n128_u64[0];
LABEL_12:
      ++v16;
    }

    while (v15 != v16);
  }

  if (a6)
  {
    result = *&v35.value;
    *a6 = v35;
  }

  return result;
}

double fpic_clearIntendedCurrentItemMoment(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage + 936;
  if (*(DerivedStorage + 968) || *(DerivedStorage + 969))
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
    if (dword_1EAF178D0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  *(v2 + 32) = 0;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  return result;
}

__n128 fpic_clearIntentionToSeekIntoEventState(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(CMBaseObjectGetDerivedStorage() + 896))
  {
    v2 = dword_1EAF178D0 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(DerivedStorage + 896) = 0;
  *(DerivedStorage + 904) = 0;
  v4 = MEMORY[0x1E6960C70];
  result = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 912) = *MEMORY[0x1E6960C70];
  v6 = *(v4 + 16);
  *(DerivedStorage + 928) = v6;
  *(DerivedStorage + 976) = result;
  *(DerivedStorage + 992) = v6;
  *(DerivedStorage + 1000) = result;
  *(DerivedStorage + 1016) = v6;
  *(DerivedStorage + 1024) = 0;
  *(DerivedStorage + 1028) = 0;
  return result;
}

double fpic_CopyEvents(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v6 = *DerivedStorage;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __fpic_CopyEvents_block_invoke;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    block[4] = a1;
    block[5] = a2;
    block[6] = DerivedStorage;
    dispatch_sync(v6, block);
  }

  else
  {
    v8 = qword_1EAF178C8;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 4294951626, "<<<< FigPlayerInterstitial >>>>", 12266, v2);
  }

  return result;
}

uint64_t fpic_CopyCurrentEvent(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *CMBaseObjectGetDerivedStorage();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __fpic_CopyCurrentEvent_block_invoke;
  v5[3] = &unk_1E7482510;
  v5[4] = &v6;
  v5[5] = a1;
  dispatch_sync(v2, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void fpic_SetEvents(NSObject **a1, const __CFArray *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (dword_1EAF178D0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    fpic_SetEventsInternal(a1, a2, 1);
  }

  else
  {
    v6 = qword_1EAF178C8;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 4294951626, "<<<< FigPlayerInterstitial >>>>", 12323, v2);
  }
}

uint64_t fpic_RemoveEvents(NSObject **a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3810000000;
  v37 = "";
  v38 = *MEMORY[0x1E6960C70];
  v39 = *(MEMORY[0x1E6960C70] + 16);
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  if (a1)
  {
    v5 = DerivedStorage;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (v27[3] && (v6 = FigCFWeakReferenceHolderCopyReferencedObject()) != 0)
    {
      v7 = *v5;
      block = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __fpic_RemoveEvents_block_invoke;
      v17 = &unk_1E7495160;
      v22 = a2;
      v23 = v5;
      v18 = &v40;
      v19 = &v26;
      v24 = a1;
      v25 = v6;
      v20 = &v30;
      v21 = &v34;
      dispatch_sync(v7, &block);
      fpic_DequeueItemsFromInterstitialPlayer(a1, v27[3], v6);
      if (*(v31 + 24))
      {
        v44 = *(v35 + 2);
        v45 = v35[6];
        fpic_cancelCurrentEventPlaybackWithReason(a1, &v44, 1, 0);
      }

      if (v41[3] >= 1)
      {
        fpic_PostNotification(a1, @"fpiEventsDidChange", 0);
      }

      v8 = fpic_ServiceCurrentEvent(a1, MEMORY[0x1E6960C70]);
      CFRelease(v6);
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, block, v15);
      v8 = v12;
    }

    v9 = v27[3];
    if (v9)
    {
      CFRelease(v9);
    }

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, block, v15);
    v8 = v10;
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);
  return v8;
}

void sub_1967CA0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t fpic_CancelCurrentEventPlayback(NSObject **a1, __int128 *a2)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  fpic_cancelCurrentEventPlaybackWithReason(a1, &v5, 0, 0);
  v3 = MEMORY[0x1E6960C70];

  return fpic_ServiceCurrentEvent(a1, v3);
}

void fpic_SetRemoteEvents(NSObject **a1, const __CFArray *a2)
{
  value[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v6 = DerivedStorage;
    if (dword_1EAF178D0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v10 = Mutable;
      v11 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v11)
      {
        v12 = v11;
        if (a2 && (Count = CFArrayGetCount(a2), Count >= 1))
        {
          v14 = Count;
          v15 = 0;
          while (1)
          {
            value[0] = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(a2, v15);
            if ((*(v6 + 112))(a1, v12, ValueAtIndex, 0, value))
            {
              break;
            }

            CFArrayAppendValue(v10, value[0]);
            if (value[0])
            {
              CFRelease(value[0]);
            }

            if (v14 == ++v15)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
LABEL_16:
          fpic_SetEventsInternal(a1, v10, 0);
        }

        CFRelease(v12);
      }

      else
      {
        fpic_SetRemoteEvents_cold_1(value);
      }

      CFRelease(v10);
    }

    else
    {
      fpic_SetRemoteEvents_cold_2(value);
    }
  }

  else
  {
    v8 = qword_1EAF178C8;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 4294951626, "<<<< FigPlayerInterstitial >>>>", 12535, v2);
  }
}

void fpic_WrappedPlayerDidChange(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v2 = CFRetain(*(DerivedStorage + 32));
    v3 = *(DerivedStorage + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __fpic_WrappedPlayerDidChange_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

void fpic_SetActionAtEnd(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v4 = *DerivedStorage;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __fpic_SetActionAtEnd_block_invoke;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = DerivedStorage;
    v5[5] = a2;
    dispatch_sync(v4, v5);
  }
}

void fpic_WillSeekTo(uint64_t a1, __int128 *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  v8 = *DerivedStorage;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __fpic_WillSeekTo_block_invoke;
  block[3] = &__block_descriptor_84_e5_v8__0l;
  v10 = a3;
  v12 = *(a2 + 2);
  v11 = *a2;
  block[4] = DerivedStorage;
  block[5] = a1;
  block[6] = v7;
  dispatch_sync(v8, block);
  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t fpic_CopyPlayableEventsForItem(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = FigCFWeakReferenceHolderCopyReferencedObject();
  v10 = v9;
  if (a2 && a3 && a4 && v9)
  {
    v11 = *DerivedStorage;
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __fpic_CopyPlayableEventsForItem_block_invoke;
    v20 = &unk_1E74950E8;
    v21 = &v27;
    v22 = DerivedStorage;
    v23 = a3;
    v24 = a2;
    v25 = a1;
    v26 = v10;
    dispatch_sync(v11, &v17);
    v12 = 0;
    v13 = v28;
    *a4 = v28[3];
    v13[3] = 0;
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v18, v19);
    v12 = v16;
  }

  v14 = v28[3];
  if (v14)
  {
    CFRelease(v14);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  _Block_object_dispose(&v27, 8);
  return v12;
}

void sub_1967CA7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t fpic_InitiateSeekIntoEvent(NSObject **a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, int a6, int a7)
{
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x4810000000;
  v46 = 0u;
  v47 = 0u;
  v45[3] = "";
  v48 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v16 && v50[3])
  {
    v17 = *DerivedStorage;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __fpic_InitiateSeekIntoEvent_block_invoke;
    block[3] = &unk_1E7495188;
    block[8] = a2;
    block[9] = DerivedStorage;
    v37 = *a3;
    v18 = *(a3 + 2);
    v39 = *a4;
    v19 = *a5;
    v20 = *(a5 + 2);
    v40 = *(a4 + 2);
    v42 = v20;
    v41 = v19;
    v43 = a7;
    v44 = a6;
    v38 = v18;
    block[10] = v16;
    block[4] = v45;
    block[5] = &v53;
    block[6] = &v49;
    block[7] = a1;
    dispatch_sync(v17, block);
    v21 = fpic_DequeueItemsFromInterstitialPlayer(a1, v50[3], v16);
    *(v54 + 6) = v21;
    if (!v21)
    {
      v22 = fpic_ServiceCurrentEvent(a1, MEMORY[0x1E6960C70]);
      *(v54 + 6) = v22;
      v23 = *DerivedStorage;
      v28 = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v30 = __fpic_InitiateSeekIntoEvent_block_invoke_217;
      v31 = &unk_1E748B8C8;
      v34 = a2;
      v35 = DerivedStorage;
      v32 = v45;
      v33 = a1;
      dispatch_sync(v23, &v28);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v28, v29);
    *(v54 + 6) = v27;
  }

  v24 = v50[3];
  if (v24)
  {
    CFRelease(v24);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  v25 = *(v54 + 6);
  _Block_object_dispose(v45, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);
  return v25;
}

void sub_1967CAAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v38 - 168), 8);
  _Block_object_dispose((v38 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t fpic_ObserveSeekOutOfEvent(uint64_t a1, int a2)
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v5)
  {
    if (v23[3])
    {
      v6 = *DerivedStorage;
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __fpic_ObserveSeekOutOfEvent_block_invoke;
      v15 = &unk_1E74951B0;
      v18 = a1;
      v19 = DerivedStorage;
      v21 = a2;
      v20 = v5;
      v16 = &v26;
      v17 = &v22;
      dispatch_sync(v6, &v12);
      v7 = fpic_DequeueItemsFromInterstitialPlayer(a1, v23[3], v5);
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v14);
    }

    *(v27 + 6) = v7;
    CFRelease(v5);
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v14);
    *(v27 + 6) = v11;
  }

  v8 = v23[3];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(v27 + 6);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  return v9;
}

void sub_1967CAD0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void fpic_GetCurrentTimeInCurrentEvent(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3810000000;
  v15 = "";
  v16 = *MEMORY[0x1E6960C70];
  v17 = *(MEMORY[0x1E6960C70] + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  v8 = v7;
  if (a2 && v7)
  {
    v9 = *DerivedStorage;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __fpic_GetCurrentTimeInCurrentEvent_block_invoke;
    v11[3] = &unk_1E7494FB8;
    v11[4] = &v12;
    v11[5] = a1;
    v11[6] = v8;
    v11[7] = DerivedStorage;
    v11[8] = a2;
    dispatch_sync(v9, v11);
  }

  else if (!v7)
  {
    goto LABEL_5;
  }

  CFRelease(v8);
LABEL_5:
  v10 = v13;
  *a3 = *(v13 + 2);
  *(a3 + 16) = v10[6];
  _Block_object_dispose(&v12, 8);
}

void sub_1967CAE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t fpic_GetCurrentEventSkippableState(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *DerivedStorage;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __fpic_GetCurrentEventSkippableState_block_invoke;
  v5[3] = &unk_1E7482510;
  v5[4] = &v6;
  v5[5] = DerivedStorage;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t fpic_CancelCurrentEventPlaybackWithReason(NSObject **a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v4 = *CMBaseObjectGetDerivedStorage();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __fpic_CancelCurrentEventPlaybackWithReason_block_invoke;
  block[3] = &unk_1E7482510;
  block[4] = &v16;
  block[5] = a1;
  dispatch_sync(v4, block);
  if (!v17[3])
  {
    v10 = 0;
    goto LABEL_10;
  }

  v5 = fpic_UnwrapEvent();
  v6 = FigPlayerInterstitialEventCopyIdentifier(v5);
  if (dword_1EAF178D0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  fpic_cancelCurrentEventPlaybackWithReason(a1, MEMORY[0x1E6960C70], 0, a2);
  if (!FigCFEqual())
  {
    goto LABEL_7;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    FigCFDictionarySetValue();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CFRelease(Mutable);
LABEL_7:
    v9 = fpic_ServiceCurrentEvent(a1, MEMORY[0x1E6960C70]);
    goto LABEL_8;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v14);
LABEL_8:
  v10 = v9;
  if (v6)
  {
    CFRelease(v6);
  }

LABEL_10:
  _Block_object_dispose(&v16, 8);
  return v10;
}

void sub_1967CB224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void fpic_SetRemotePreloads(uint64_t a1, const __CFArray *a2)
{
  block[16] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (dword_1EAF178D0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = *DerivedStorage;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __fpic_SetRemotePreloadsInternal_block_invoke;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    block[4] = a2;
    block[5] = DerivedStorage;
    block[6] = a1;
    dispatch_sync(v8, block);
  }

  else
  {
    v6 = qword_1EAF178C8;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 4294951626, "<<<< FigPlayerInterstitial >>>>", 12571, v2);
  }
}

CFTypeRef fpic_CopyCurrentEventSkipControlLabel(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = *DerivedStorage;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __fpic_CopyCurrentEventSkipControlLabel_block_invoke;
  v6[3] = &unk_1E7482510;
  v6[4] = &v7;
  v6[5] = DerivedStorage;
  dispatch_sync(v2, v6);
  v3 = v8[3];
  if (v3)
  {
    v4 = CFRetain(v3);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_1967CB54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t fpic_SetEventsInternal(NSObject **a1, CFArrayRef a2, char a3)
{
  v59 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3810000000;
  v26 = "";
  v27 = *MEMORY[0x1E6960C70];
  v28 = *(MEMORY[0x1E6960C70] + 16);
  v29 = 0;
  if (!v38[3] || (v8 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v19, v20);
    *(v54 + 6) = v17;
    goto LABEL_21;
  }

  if (a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = CFArrayCreate(v7, 0, 0, MEMORY[0x1E695E9C0]);
    a2 = v9;
    if (!v9)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v19, v20);
      v9 = 0;
      goto LABEL_18;
    }
  }

  v10 = *DerivedStorage;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __fpic_SetEventsInternal_block_invoke;
  block[3] = &unk_1E7495110;
  block[12] = a2;
  block[13] = a1;
  v22 = a3;
  block[14] = v8;
  block[15] = DerivedStorage;
  block[4] = &v53;
  block[5] = &v45;
  block[6] = &v41;
  block[7] = &v49;
  block[8] = &v37;
  block[9] = &v33;
  block[10] = &v29;
  block[11] = &v23;
  dispatch_sync(v10, block);
  v11 = fpic_DequeueItemsFromInterstitialPlayer(a1, v38[3], v8);
  *(v54 + 6) = v11;
  if (v11)
  {
    goto LABEL_19;
  }

  if (*(v34 + 24))
  {
    v57 = *(v24 + 2);
    v58 = v24[6];
    fpic_cancelCurrentEventPlaybackWithReason(a1, &v57, 1, 0);
  }

  else if (*(v30 + 24))
  {
    CFArrayRemoveAllValues(v38[3]);
    if (dword_1EAF178D0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    fpic_RescheduleCurrentEvents(a1, v38 + 3, v8);
    fpic_DequeueItemsFromInterstitialPlayer(a1, v38[3], v8);
  }

  if (v46[3] > 0 || v50[3] > 0 || v42[3] >= 1)
  {
    fpic_PostNotification(a1, @"fpiEventsDidChange", 0);
  }

  v13 = fpic_ServiceCurrentEvent(a1, MEMORY[0x1E6960C70]);
LABEL_18:
  *(v54 + 6) = v13;
LABEL_19:
  CFRelease(v8);
  if (v9)
  {
    CFRelease(v9);
  }

LABEL_21:
  v14 = v38[3];
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(v54 + 6);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);
  return v15;
}

void sub_1967CBB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, ...)
{
  va_start(va, a60);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void fpic_setEventsInAddOrderForPlayerItem(uint64_t a1, __CFString *a2, const __CFArray *a3, uint64_t a4, void *a5, void *a6, void *a7, __CFArray *a8, _BYTE *a9, _BYTE *a10, __n128 *a11)
{
  v112 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    Count = CFArrayGetCount(a3);
  }

  else
  {
    Count = 0;
  }

  v101 = 0;
  v99 = 0u;
  v100 = 0u;
  v98 = 0;
  v96 = 0u;
  v97 = 0u;
  v93 = 0;
  v92 = 0;
  v94 = *MEMORY[0x1E6960C70];
  v95 = *(MEMORY[0x1E6960C70] + 16);
  if (a2)
  {
    v17 = fpic_doesPlayerItemWrapperBelongToCurrentlyEngagedPrimaryItem(a1, a2, a4) != 0;
  }

  else
  {
    v17 = 1;
  }

  v86 = v17;
  v18 = *(DerivedStorage + 656);
  if (v18 && CFArrayGetCount(v18))
  {
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    v20 = (*(DerivedStorage + 88))(a1, a4, ValueAtIndex);
    fpic_GetEventStartMoment(v20, &v109);
    v94 = v109;
    v21 = *(&v110 + 1);
    v95 = v110;
    LODWORD(v71) = v111;
    HIDWORD(v71) = BYTE1(v111);
    v92 = *(&v111 + 2);
    v93 = HIWORD(v111);
    v22 = CMBaseObjectGetDerivedStorage();
    if (*(v22 + 376) | *(v22 + 377))
    {
      v98 = *(DerivedStorage + 376);
      v23 = *(DerivedStorage + 360);
      v96 = *(DerivedStorage + 344);
      v97 = v23;
    }

    else
    {
      fpic_CurrentItemMoment(&v96);
    }
  }

  else
  {
    v71 = 0;
    v21 = 0x7FEFFFFFFFFFFFFFLL;
  }

  v87 = a3;
  if (v86)
  {
    theArray = *(DerivedStorage + 200);
    goto LABEL_19;
  }

  v24 = CMBaseObjectGetDerivedStorage();
  if (CFDictionaryContainsKey(*(v24 + 184), a2))
  {
    goto LABEL_18;
  }

  v25 = a7;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v27 = Mutable;
    CFDictionaryAddValue(*(v24 + 184), a2, Mutable);
    CFRelease(v27);
    a7 = v25;
LABEL_18:
    v28 = CMBaseObjectGetDerivedStorage();
    theArray = CFDictionaryGetValue(*(v28 + 184), a2);
    a3 = v87;
    goto LABEL_19;
  }

  if (!fpic_setEventsInAddOrderForPlayerItem_cold_1(&v109))
  {
    return;
  }

  theArray = 0;
  a3 = v87;
LABEL_19:
  v29 = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    range = CFArrayGetCount(a3);
  }

  else
  {
    range = 0;
  }

  LOBYTE(v89[0]) = 0;
  v79 = a1;
  v72 = DerivedStorage;
  v73 = a2;
  v88 = a4;
  if (a2 && !fpic_doesPlayerItemWrapperBelongToCurrentlyEngagedPrimaryItem(a1, a2, a4))
  {
    v32 = CMBaseObjectGetDerivedStorage();
    Value = CFDictionaryGetValue(*(v32 + 184), a2);
    v31 = 0;
    if (!Value)
    {
      goto LABEL_57;
    }

LABEL_30:
    v70 = a7;
    v33 = CFArrayGetCount(Value);
    if (v33 < 1)
    {
      v82 = 0;
    }

    else
    {
      v82 = 0;
      v34 = (v29 + 88);
      v35 = v31 ^ 1;
      v36 = v33 + 1;
      v74 = v31;
      v37 = v87;
      do
      {
        v38 = CFArrayGetValueAtIndex(Value, v36 - 2);
        v39 = (*v34)(a1, v88, v38);
        v113.location = 0;
        v113.length = range;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v37, v113, v38);
        if (FirstIndexOfValue == -1)
        {
          v41 = v35;
        }

        else
        {
          v41 = 1;
        }

        if (v41)
        {
          v42 = v74;
          if (FirstIndexOfValue != -1)
          {
            v42 = 1;
          }

          if ((v42 & 1) == 0)
          {
            if (dword_1EAF178D0)
            {
              v102 = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v44 = v102;
              v45 = type[0];
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
              {
                v46 = v44;
              }

              else
              {
                v46 = v44 & 0xFFFFFFFE;
              }

              if (v46)
              {
                LODWORD(v103[0]) = 136315906;
                *(v103 + 4) = "fpic_removeEventsThatAreNotPartOfIncomingEventsForPlayerItem";
                WORD6(v103[0]) = 2048;
                *(v103 + 14) = v79;
                WORD3(v103[1]) = 2112;
                *(&v103[1] + 1) = v38;
                LOWORD(v104) = 2048;
                *(&v104 + 2) = v73;
                LODWORD(v65) = 42;
                _os_log_send_and_compose_impl(v46, 0, &v109, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v45, "<<<< FigPlayerInterstitial >>>> %s: %p: removing event %@ for unengaged item wrapper %p", v103, v65);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              a1 = v79;
              v37 = v87;
            }

            CFArrayRemoveValueAtIndex(Value, v36 - 2);
          }
        }

        else
        {
          fpic_RemoveEventIfNotPlaying(a1, v38, a8, v89);
          if (a11 && a9 && LOBYTE(v89[0]))
          {
            *a9 = 1;
            FigPlayerInterstitialEventGetResumptionOffset(v39, &v109);
            *a11 = v109;
            a11[1].n128_u64[0] = v110;
          }

          ++v82;
        }

        --v36;
      }

      while (v36 > 1);
    }

    a4 = v88;
    if (v70)
    {
      *v70 += v82;
    }

    goto LABEL_57;
  }

  if (!a8 || !a9 || !a11)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v64, v65, v66);
    v47 = theArray;
    if (v63)
    {
      return;
    }

    goto LABEL_58;
  }

  Value = *(v29 + 200);
  v31 = 1;
  if (Value)
  {
    goto LABEL_30;
  }

LABEL_57:
  v47 = theArray;
LABEL_58:
  if (v47)
  {
    v83 = CFArrayGetCount(v47);
  }

  else
  {
    v83 = 0;
  }

  v48 = v87;
  if (Count < 1)
  {
    LOBYTE(v75) = 0;
    v77 = 0;
    v50 = 0;
  }

  else
  {
    v49 = 0;
    v50 = 0;
    v77 = 0;
    v75 = 0;
    v51 = (DerivedStorage + 88);
    rangea = *MEMORY[0x1E695E4C0];
    v78 = *MEMORY[0x1E695E4D0];
    v67 = (DerivedStorage + 604);
    do
    {
      v52 = CFArrayGetValueAtIndex(v48, v49);
      v114.location = 0;
      v114.length = v83;
      v53 = CFArrayGetFirstIndexOfValue(v47, v114, v52);
      v54 = (*v51)(a1, a4, v52);
      *type = rangea;
      v90 = 0;
      memset(v89, 0, sizeof(v89));
      fpic_EventDateTimeMoment(v54, v89);
      if (v53 == -1)
      {
        v108 = 0;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        memset(v103, 0, sizeof(v103));
        CFArrayAppendValue(v47, v52);
        if (dword_1EAF178D0)
        {
          v58 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          a1 = v79;
          a4 = v88;
        }

        v59 = 0;
        ++v50;
        v56 = v54;
      }

      else
      {
        v55 = CFArrayGetValueAtIndex(v47, v53);
        v56 = (*v51)(a1, a4, v55);
        if (FigPlayerInterstitialEventMerge(v56, v54, type))
        {
          return;
        }

        if (*type == v78)
        {
          v108 = 0;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          memset(v103, 0, sizeof(v103));
          if (dword_1EAF178D0)
          {
            v57 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            a1 = v79;
            a4 = v88;
          }

          ++v77;
        }

        v59 = v56;
      }

      if (!v86)
      {
        goto LABEL_88;
      }

      if (FigPlayerInterstitialEventIsPreRoll(v56))
      {
        if ((v72[1076] & 1) == 0 && (v72[616] & 1) == 0)
        {
          fpic_GatePrimaryPlaybackAtCurrentEvent(a1, a4);
          fpic_SwapToInterstitialPlayerLayerIfPrerollDetected(a1, a4);
        }

        if (v72[1143])
        {
          v109 = *v67;
          *&v110 = v67[1].n128_u64[0];
          FigPlayerInterstitialEventSetStartTime(v56, &v109);
          fpic_EnsureEventHasResolvedProperties();
        }
      }

      v60 = v71 == 0;
      if (!v56)
      {
        v60 = 1;
      }

      if (v60 || v56 == v59)
      {
LABEL_88:
        v48 = v87;
      }

      else
      {
        fpic_GetEventStartMoment(v56, &v99);
        v103[0] = v99;
        v103[1] = v100;
        *&v104 = v101;
        v109 = v94;
        *&v110 = v95;
        *(&v111 + 2) = v92;
        HIWORD(v111) = v93;
        *(&v110 + 1) = v21;
        LOBYTE(v111) = v71;
        BYTE1(v111) = BYTE4(v71);
        v48 = v87;
        if (fpic_MomentGreaterThan(&v109, v103))
        {
          v109 = v96;
          v110 = v97;
          v111 = v98;
          v103[0] = v99;
          v103[1] = v100;
          *&v104 = v101;
          v61 = fpic_MomentGreaterThan(&v109, v103);
          v62 = v75;
          if (!v61)
          {
            v62 = 1;
          }

          v75 = v62;
        }
      }

      v47 = theArray;
      ++v49;
    }

    while (Count != v49);
  }

  if (v86)
  {
    fpic_SortEventsInAddOrder();
  }

  if (fpic_UnwrapPlaybackItem(a1, v73, a4))
  {
    fpic_UpdatePlaybackItemEventList();
  }

  if (a5)
  {
    *a5 += v50;
  }

  if (a6)
  {
    *a6 += v77;
  }

  if (a10)
  {
    *a10 = v75;
  }
}

void fpic_RescheduleCurrentEvents(uint64_t a1, CFTypeRef *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  Copy = FigCFArrayCreateCopy();
  if (dword_1EAF178D0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  fpic_ResetCurrentEventList(a1, a3, a2);
  if (Copy)
  {
    Count = CFArrayGetCount(Copy);
    if (Count >= 1)
    {
      v9 = Count + 1;
      do
      {
        CFArrayGetValueAtIndex(Copy, v9 - 2);
        fpic_ForgetPastEvent();
        --v9;
      }

      while (v9 > 1);
    }

    CFRelease(Copy);
  }
}

uint64_t fpic_doesPlayerItemWrapperBelongToCurrentlyEngagedPrimaryItem(uint64_t a1, __CFString *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = fpic_UnwrapPlaybackItem(a1, a2, a3);
  if (result)
  {
    return *(DerivedStorage + 160) == result;
  }

  return result;
}

void fpic_RemoveEventIfNotPlaying(uint64_t a1, const void *a2, __CFArray *a3, char *a4)
{
  if (fpic_GetCurrentlyPlayingEvent(a1) == a2)
  {
    v8 = 1;
  }

  else
  {
    fpic_RemoveEvent(a1, a2, a3, 1, 0, 1);
    v8 = 0;
  }

  *a4 = v8;
}

void fpic_cancelCurrentEventPlaybackWithReason(NSObject **a1, __int128 *a2, char a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3810000000;
  v34 = *MEMORY[0x1E6960C70];
  v9 = *(MEMORY[0x1E6960C70] + 16);
  v33 = "";
  v35 = v9;
  if (a1)
  {
    v10 = DerivedStorage;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v49[3] = Mutable;
    if (Mutable && (v12 = FigCFWeakReferenceHolderCopyReferencedObject()) != 0)
    {
      v13 = *v10;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __fpic_cancelCurrentEventPlaybackWithReason_block_invoke;
      block[3] = &unk_1E7495138;
      block[10] = a1;
      block[11] = a4;
      v27 = *a2;
      v28 = *(a2 + 2);
      v29 = a3;
      block[12] = v12;
      block[13] = v10;
      block[4] = &v48;
      block[5] = &v36;
      block[6] = &v30;
      block[7] = &v40;
      block[8] = &v44;
      block[9] = &v52;
      dispatch_sync(v13, block);
      if (!*(v41 + 24) || (v14 = v37[3], v15 = *(v45 + 6), v24 = *(v31 + 2), v25 = v31[6], v22 = *(v31 + 2), v23 = v31[6], v20 = *(v31 + 2), v21 = v31[6], v16 = fpic_InitiateSeekIntoEvent(a1, v14, &v24, &v22, &v20, v15, 5), (*(v53 + 6) = v16) == 0))
      {
        v17 = fpic_DequeueItemsFromInterstitialPlayer(a1, v49[3], v12);
        *(v53 + 6) = v17;
      }

      CFRelease(v12);
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, DWORD2(v20), v21);
      *(v53 + 6) = v19;
    }

    v18 = v49[3];
    if (v18)
    {
      CFRelease(v18);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, DWORD2(v20), v21);
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);
}

void sub_1967CCD84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v37 - 240), 8);
  _Block_object_dispose((v37 - 208), 8);
  _Block_object_dispose((v37 - 176), 8);
  _Block_object_dispose((v37 - 144), 8);
  _Block_object_dispose((v37 - 112), 8);
  _Unwind_Resume(a1);
}

CFIndex fpic_RescheduleEvents(uint64_t a1, CFArrayRef theArray)
{
  v3 = 0;
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (result = CFArrayGetCount(theArray); v3 < result; result = 0)
  {
    FigCFArrayGetValueAtIndex();
    fpic_ForgetPastEvent();
    ++v3;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return result;
}

uint64_t fpic_preloadCompFunc(uint64_t a1, uint64_t a2)
{
  started = FigPlayerInterstitialPreloadCopyStartDate(a1);
  v5 = FigPlayerInterstitialPreloadCopyStartDate(a2);
  v6 = MEMORY[0x19A8CCD90](started);
  v7 = v6 + FigPlayerInterstitialPreloadGetTriggerOffset(a1);
  v8 = MEMORY[0x19A8CCD90](v5);
  v9 = v8 + FigPlayerInterstitialPreloadGetTriggerOffset(a2);
  if (v7 < v9)
  {
    v10 = -1;
    if (!started)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v7 <= v9)
  {
    v10 = 0;
    if (!started)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v10 = 1;
  if (started)
  {
LABEL_8:
    CFRelease(started);
  }

LABEL_9:
  if (v5)
  {
    CFRelease(v5);
  }

  return v10;
}

uint64_t __fpic_getTimerQueue_block_invoke()
{
  result = FigDispatchQueueCreateWithPriority();
  fpic_getTimerQueue_sTimerQueue = result;
  return result;
}

uint64_t __fpic_getNotificationQueue_block_invoke()
{
  result = FigDispatchQueueCreateWithPriority();
  fpic_getNotificationQueue_sNotificationQueue = result;
  return result;
}

void fpic_eventItemReadyStateChange(uint64_t a1, uint64_t a2, char a3, int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = FigCFWeakReferenceHolderCopyReferencedObject();
  v10 = *DerivedStorage;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __fpic_eventItemReadyStateChange_block_invoke;
  block[3] = &__block_descriptor_69_e5_v8__0l;
  block[4] = a1;
  block[5] = v9;
  block[6] = a2;
  block[7] = DerivedStorage;
  v13 = a3;
  v12 = a4;
  dispatch_sync(v10, block);
  if (v9)
  {
    CFRelease(v9);
  }
}

void fpic_NoticeRateChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v23 = 0.0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  PrimaryPlayerAndCopyWrapper = fpic_GetPrimaryPlayerAndCopyWrapper(a1, &v22);
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  v8 = (*(DerivedStorage + 72))(a1, v7, *(DerivedStorage + 48));
  Float32IfPresent = FigCFDictionaryGetFloat32IfPresent();
  v21 = 0;
  Mutable = 0;
  FigCFDictionaryGetInt32IfPresent();
  v10 = 0;
  if (Float32IfPresent && v23 < 0.0)
  {
    v11 = *(CMBaseObjectGetDerivedStorage() + 884);
    CurrentlyPlayingEvent = fpic_GetCurrentlyPlayingEvent(a1);
    if ((PrimaryPlayerAndCopyWrapper == a2 || v8 == a2) && (v11 <= 2.0 && v11 >= 0.0 || !CurrentlyPlayingEvent && !*(CMBaseObjectGetDerivedStorage() + 896)))
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (dword_1EAF178D0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      fpic_RescheduleCurrentEvents(a1, &Mutable, v7);
      v10 = Mutable;
      fpic_DequeueItemsFromInterstitialPlayer(a1, Mutable, v7);
      fpic_UngatePrimaryBuffering(a1);
      fpic_UngatePrimaryPlayback(a1);
      v16 = CMBaseObjectGetDerivedStorage();
      *(v16 + 256) = 0;
      *(v16 + 296) = 0;
      v17 = MEMORY[0x1E6960C70];
      v18 = *MEMORY[0x1E6960C70];
      *(v16 + 432) = *MEMORY[0x1E6960C70];
      v19 = *(v17 + 16);
      *(v16 + 448) = v19;
      *(v16 + 480) = v18;
      *(v16 + 496) = v19;
      *(v16 + 504) = v18;
      *(v16 + 520) = v19;
      *(v16 + 1144) = 0;
      *(v16 + 644) = v19;
      *(v16 + 628) = v18;
      *(v16 + 1147) = 0;
    }

    else
    {
      v10 = 0;
    }

    if (PrimaryPlayerAndCopyWrapper == a2)
    {
      *(DerivedStorage + 1145) = 0;
    }
  }

  if (Float32IfPresent && v23 > 0.0 && PrimaryPlayerAndCopyWrapper == a2 && v21 != 43)
  {
    LODWORD(cf[0]) = 0;
    if (v8)
    {
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (!v13 || (v13(v8, cf), *cf == 0.0))
      {
        v14 = CMBaseObjectGetDerivedStorage();
        if (*(v14 + 376) | *(v14 + 377))
        {
          fpic_UnpauseInterstitialPlayer(a1, v8, v7);
        }
      }
    }

    *(DerivedStorage + 880) = v23;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v10)
  {
    CFRelease(v10);
  }
}

void fpic_HandleAirPlayVideoActiveDidChange(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v31 = 0;
  PrimaryPlayerAndCopyWrapper = fpic_GetPrimaryPlayerAndCopyWrapper(a1, &v31);
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = FigCFWeakReferenceHolderCopyReferencedObject();
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  if (v24[3])
  {
    if (PrimaryPlayerAndCopyWrapper == a2)
    {
      v6 = *DerivedStorage;
      block = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __fpic_HandleAirPlayVideoActiveDidChange_block_invoke;
      v14 = &unk_1E74951F8;
      v19 = DerivedStorage;
      v20 = a1;
      v15 = v21;
      v16 = &v23;
      v17 = &v27;
      v18 = PrimaryPlayerAndCopyWrapper;
      dispatch_sync(v6, &block);
    }

    v7 = v28[3];
    if (v7)
    {
      fpic_DequeueItemsFromInterstitialPlayer(a1, v7, v24[3]);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, block, v12);
  }

  v8 = v28[3];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = v24[3];
  if (v9)
  {
    CFRelease(v9);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
}

void fpic_HandleExternalPlaybackInitiatedCancelInterstitialEvent(NSObject **a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (v6)
  {
    v7 = v6;
    if ((*(DerivedStorage + 72))(a1, v6, *(DerivedStorage + 48)) == a2)
    {
      FigCFDictionaryGetValueIfPresent();
      v8 = *DerivedStorage;
      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = __fpic_HandleExternalPlaybackInitiatedCancelInterstitialEvent_block_invoke;
      v12 = &unk_1E747EC60;
      v13 = &v16;
      v14 = a1;
      v15 = v20;
      dispatch_sync(v8, &v9);
      if (*(v17 + 24))
      {
        fpic_CancelCurrentEventPlaybackWithReason(a1, @"CancelCurrentEventReasonSkipControlAction");
      }
    }

    CFRelease(v7);
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
  }

  _Block_object_dispose(&v16, 8);
}

void sub_1967CDE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void fpic_mediaSelectionsChanged(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  v9 = 0;
  FigCFDictionaryGetBooleanIfPresent();
  v7 = *DerivedStorage;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __fpic_mediaSelectionsChanged_block_invoke;
  block[3] = &__block_descriptor_64_e5_v8__0l;
  block[4] = a2;
  block[5] = DerivedStorage;
  block[6] = a1;
  block[7] = v6;
  dispatch_sync(v7, block);
  if (v6)
  {
    CFRelease(v6);
  }
}

void fpic_checkForSnappedTimeToPauseBuffering(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *DerivedStorage;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __fpic_checkForSnappedTimeToPauseBuffering_block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = DerivedStorage;
  v4[5] = a1;
  dispatch_sync(v3, v4);
}

void fpic_checkForSnapOut(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *DerivedStorage;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __fpic_checkForSnapOut_block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = DerivedStorage;
  v4[5] = a1;
  dispatch_sync(v3, v4);
}

void fpic_schedulePrimaryToInterstitialTransition(uint64_t a1, __int128 *a2)
{
  v4 = *CMBaseObjectGetDerivedStorage();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __fpic_schedulePrimaryToInterstitialTransition_block_invoke;
  v5[3] = &__block_descriptor_64_e5_v8__0l;
  v5[4] = a1;
  v7 = *(a2 + 2);
  v6 = *a2;
  dispatch_sync(v4, v5);
}

void fpic_HandleSeekDidFinishNotification(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v31 = -1;
  v29 = *MEMORY[0x1E6960C70];
  v30 = *(MEMORY[0x1E6960C70] + 16);
  v8 = FigCFEqual();
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if (a3)
  {
    v9 = v8;
    v10 = CFGetTypeID(a3);
    if (v10 == CFDictionaryGetTypeID())
    {
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetCMTimeIfPresent();
      if (v31 >= 1)
      {
        v11 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v11)
        {
          v12 = *DerivedStorage;
          v13 = MEMORY[0x1E69E9820];
          v14 = 3221225472;
          v15 = __fpic_HandleSeekDidFinishNotification_block_invoke;
          v16 = &unk_1E7495220;
          v21 = v31;
          v22 = v29;
          v23 = v30;
          v17 = &v25;
          v18 = DerivedStorage;
          v19 = a1;
          v20 = v11;
          v24 = v9;
          dispatch_sync(v12, &v13);
          if (*(v26 + 24))
          {
            fpic_EnsurePrimaryWillResumeBuffering(a1, v11);
          }

          if (a4 && (BYTE12(v29) & 0x1D) == 1)
          {
            *a4 = v29;
            *(a4 + 16) = v30;
          }

          CFRelease(v11);
        }

        else
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, v15);
        }
      }
    }
  }

  _Block_object_dispose(&v25, 8);
}

void sub_1967CE320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void fpic_EnsureCurrentEventsHaveResolvedProperties(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v11 = v3;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      Count = *(DerivedStorage + 656);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (v12 >= Count)
      {
        break;
      }

      CFArrayGetValueAtIndex(*(DerivedStorage + 656), v12);
      fpic_EnsureEventHasResolvedProperties();
      if (v15)
      {
        v13 = 1;
      }

      ++v12;
    }

    if (v13)
    {
      fpic_EnsureCurrentEventsHaveResolvedProperties_cold_1(DerivedStorage, a1);
    }

    CFRelease(v11);
  }

  else
  {
    fpic_EnsureCurrentEventsHaveResolvedProperties_cold_2(0, v4, v5, v6, v7, v8, v9, v10, v16, v17, SHIDWORD(v17), v18);
  }
}

void fpic_HandleEndTimeChangedNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = *MEMORY[0x1E6960C70];
  v17 = *(MEMORY[0x1E6960C70] + 16);
  FigCFDictionaryGetCMTimeIfPresent();
  v6 = *DerivedStorage;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __fpic_HandleEndTimeChangedNotification_block_invoke;
  v7[3] = &unk_1E7495248;
  v7[6] = DerivedStorage;
  v8 = v16;
  v9 = v17;
  v10 = 0;
  v11 = BYTE12(v16) & 1;
  memset(v12, 0, sizeof(v12));
  v14 = v16;
  v15 = v17;
  v13 = a1;
  v7[4] = v18;
  v7[5] = a2;
  dispatch_sync(v6, v7);
  _Block_object_dispose(v18, 8);
}

void fpic_updateEventLoadedTimeIntervals(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *CMBaseObjectGetDerivedStorage();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __fpic_updateEventLoadedTimeIntervals_block_invoke;
  v9[3] = &__block_descriptor_64_e5_v8__0l;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = a3;
  v9[7] = a4;
  dispatch_sync(v8, v9);
}

void fpic_mediaAccessibilityChanged(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigMediaAccessibilityCaptionsDisplayType();
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = *DerivedStorage;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __fpic_mediaAccessibilityChanged_block_invoke;
  v6[3] = &unk_1E748B8C8;
  v6[4] = &v7;
  v6[5] = DerivedStorage;
  v6[6] = v3;
  v6[7] = a1;
  dispatch_sync(v4, v6);
  v5 = v8[3];
  if (v5)
  {
    CFRelease(v5);
  }

  _Block_object_dispose(&v7, 8);
}

void __fpic_eventItemReadyStateChange_block_invoke(uint64_t a1)
{
  v20 = 0;
  v21 = 0;
  if (fpic_findEventAndItemIndexForItemOnQueue(*(a1 + 32), *(a1 + 40), *(a1 + 48), &v21, &v20))
  {
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    if (*(a1 + 68))
    {
      fpic_UpdateEventLastPlaybackFailed(*(a1 + 32), ValueAtIndex, 0);
      fpic_EnsureEventHasResolvedProperties();
      fpic_updateIntegratedTimelineOffsetTimesOnItemForEvent();
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v7 = *(MEMORY[0x1E6960C98] + 16);
      *&v27.start.value = *MEMORY[0x1E6960C98];
      *&v27.start.epoch = v7;
      *&v27.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
      *allocator = *MEMORY[0x1E6960CC0];
      *&start.value = *MEMORY[0x1E6960CC0];
      v8 = *(MEMORY[0x1E6960CC0] + 16);
      start.epoch = v8;
      v25 = **&MEMORY[0x1E6960C70];
      CMBaseObjectGetDerivedStorage();
      FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
      PerEventTrackingCount = fpic_GetPerEventTrackingCount(DerivedStorage, FirstIndexOfValue);
      if (!FirstIndexOfValue)
      {
        v11 = CMBaseObjectGetDerivedStorage();
        *&lhs.start.value = *(v11 + 432);
        lhs.start.epoch = *(v11 + 448);
        rhs = *(v11 + 480);
        CMTimeAdd(&v25, &lhs.start, &rhs);
        *&lhs.start.value = *allocator;
        lhs.start.epoch = v8;
        rhs = v25;
        CMTimeAdd(&start, &lhs.start, &rhs);
      }

      if (PerEventTrackingCount >= 1)
      {
        v12 = 0;
        allocatora = *MEMORY[0x1E695E480];
        do
        {
          PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(DerivedStorage, FirstIndexOfValue, v12, @"PlaybackItem");
          if (fpic_UnwrapPlaybackItem(v4, PerAssetPerEventTrackedObject, v5))
          {
            memset(&rhs, 0, sizeof(rhs));
            fpic_GetEventItemDurationOnEventTimeline(v4, v5, ValueAtIndex, v12, &rhs);
            if ((rhs.flags & 0x1D) == 1)
            {
              lhs.start = start;
              duration = rhs;
              CMTimeRangeMake(&v27, &lhs.start, &duration);
              duration = start;
              v23 = rhs;
              CMTimeAdd(&lhs.start, &duration, &v23);
              start = lhs.start;
            }

            lhs = v27;
            v14 = CMTimeRangeCopyAsDictionary(&lhs, allocatora);
            FigPlaybackItemGetFigBaseObject();
            v16 = v15;
            v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (!v17 || v17(v16, @"InterstitialEventItemTimeOffset", v14))
            {
              break;
            }

            if (v14)
            {
              CFRelease(v14);
            }
          }

          ++v12;
        }

        while (PerEventTrackingCount != v12);
      }

      fpic_passImageQueueGaugeBetweenPlayers(*(a1 + 32), *(a1 + 48), *(a1 + 40));
    }

    else
    {
      v3 = fpic_UnwrapEvent();
      FigPlayerInterstitialEventReportItemFailure(v3);
      if (FigPlayerInterstitialEventDidAllItemsFail(v3))
      {
        FigPlayerInterstitialEventSetLastPlaybackError(v3);
      }

      fpic_PruneCurrentEventsToQueue();
    }
  }
}

void __fpic_mediaSelectionsChanged_block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2 != *(a1[5] + 160))
  {
    if (!fpic_findEventAndItemIndexForItemOnQueue(a1[6], a1[7], v2, 0, 0))
    {
      return;
    }

    v2 = a1[4];
  }

  v3 = a1[6];

  fpic_applyCoordinationMediaSelectionCriteria(v3, v2);
}

void __fpic_coordinationIdentifierChanged_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 176);
  if (v3)
  {
    CFRelease(v3);
    *(*(a1 + 32) + 176) = 0;
    v2 = *(a1 + 32);
  }

  FigPlaybackItemGetFigBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(v5, @"CoordinationIdentifier", *MEMORY[0x1E695E480], v2 + 176);
  }

  v7 = *(a1 + 48);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = FigCFWeakReferenceHolderCopyReferencedObject();
  Count = CFArrayGetCount(*(DerivedStorage + 656));
  if (v9)
  {
    v18 = Count;
    if (Count >= 1)
    {
      v19 = 0;
      while (1)
      {
        PerEventTrackingCount = fpic_GetPerEventTrackingCount(DerivedStorage, v19);
        if (PerEventTrackingCount >= 1)
        {
          break;
        }

LABEL_18:
        if (++v19 == v18)
        {
          goto LABEL_19;
        }
      }

      v21 = PerEventTrackingCount;
      v22 = 0;
      while (1)
      {
        PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(DerivedStorage, v19, v22, @"PlaybackItem");
        v24 = CMBaseObjectGetDerivedStorage();
        if (PerAssetPerEventTrackedObject && PerAssetPerEventTrackedObject != @"DummyItem")
        {
          if ((*(v24 + 80))(v7, v9, PerAssetPerEventTrackedObject))
          {
            v26 = *(DerivedStorage + 176);
            FigPlaybackItemGetFigBaseObject();
            v28 = v27;
            v29 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (!v29 || v29(v28, @"CoordinationIdentifier", v26))
            {
              break;
            }
          }
        }

        if (v21 == ++v22)
        {
          goto LABEL_18;
        }
      }
    }

LABEL_19:

    CFRelease(v9);
  }

  else
  {
    __fpic_coordinationIdentifierChanged_block_invoke_cold_1(Count, v11, v12, v13, v14, v15, v16, v17, v30, @"CoordinationIdentifier", @"CoordinationIdentifier" >> 32, v31);
  }
}

void __fpic_schedulePrimaryToInterstitialTransition_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 40);
  v3 = *(a1 + 32);
  v17 = *(a1 + 40);
  v4 = *(a1 + 52);
  v18 = *(a1 + 48);
  v5 = *(a1 + 56);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v4)
  {
    v7 = DerivedStorage;
    if (*(DerivedStorage + 1224))
    {
      if (!fpic_skipShowInterstitial(DerivedStorage))
      {
        Rate = CMTimebaseGetRate(*(v7 + 1224));
        if (Rate > 0.0)
        {
          v9 = Rate;
          v10 = FigCFWeakReferenceHolderCopyReferencedObject();
          memset(&v16, 0, sizeof(v16));
          CMTimebaseGetTime(&v16, *(v7 + 1224));
          time1.timescale = v18;
          time1.flags = v4;
          time1.epoch = v5;
          time2 = v16;
          time1.value = v17;
          if (CMTimeCompare(&time1, &time2) >= 1)
          {
            time2.value = v17;
            time2.timescale = v18;
            time2.flags = v4;
            time2.epoch = v5;
            v13 = v16;
            CMTimeSubtract(&time1, &time2, &v13);
            Seconds = CMTimeGetSeconds(&time1);
            fpic_flipInterstitialAndPrimaryVisibility(v3, 1, v10, Seconds / v9);
          }

          if (v10)
          {
            CFRelease(v10);
          }
        }
      }
    }
  }

  v12 = *(a1 + 32);
  v16 = *v2;
  fpic_scheduleInterstitialAudioTransition(v12, &v16.value, 1);
}

void fpic_SchedulePrimaryTransitionTimerProc(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (dword_1EAF178D0 >= 5)
  {
    v7 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v4 = *DerivedStorage;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __fpic_SchedulePrimaryTransitionTimerProc_block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = DerivedStorage;
    block[5] = v1;
    dispatch_sync(v4, block);
    CFRelease(v1);
  }
}

void fpic_cancelScheduledAudioTransition(uint64_t a1, int a2, uint64_t a3)
{
  cf[20] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage;
  cf[0] = 0;
  if (a2)
  {
    v8 = DerivedStorage + 72;
    v9 = (*(DerivedStorage + 72))(a1, a3, *(DerivedStorage + 48));
    if ((*(v8 + 1032) & 1) == 0)
    {
      goto LABEL_10;
    }

    v10 = v9;
    v11 = v8 + 1020;
    if (dword_1EAF178D0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    fpic_SetRateWithReason(v10, 41, 0.0);
  }

  else
  {
    fpic_GetPrimaryPlayerAndCopyWrapper(a1, cf);
    if ((*(v7 + 1128) & 1) == 0)
    {
      goto LABEL_10;
    }

    v11 = v7 + 1116;
    if (dword_1EAF178D0)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    fpic_GatePrimaryPlaybackAtCurrentEvent(a1, a3);
  }

  v14 = MEMORY[0x1E6960C70];
  *v11 = *MEMORY[0x1E6960C70];
  *(v11 + 16) = *(v14 + 16);
LABEL_10:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }
}

void fpirc_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage[3];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[3] = 0;
  }

  v3 = DerivedStorage[4];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[4] = 0;
  }

  v4 = DerivedStorage[5];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[5] = 0;
  }

  v5 = DerivedStorage[17];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[17] = 0;
  }

  v6 = DerivedStorage[18];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[18] = 0;
  }

  v7 = DerivedStorage[20];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[20] = 0;
  }

  v8 = DerivedStorage[2];
  if (v8)
  {
    dispatch_release(v8);
    DerivedStorage[2] = 0;
  }
}

uint64_t fpirc_CopyEvents(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = *(DerivedStorage + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __fpirc_CopyEvents_block_invoke;
  v7[3] = &unk_1E7482510;
  v7[4] = &v8;
  v7[5] = DerivedStorage;
  dispatch_sync(v4, v7);
  v5 = v9;
  *a2 = v9[3];
  v5[3] = 0;
  _Block_object_dispose(&v8, 8);
  return 0;
}

void fpirc_WillSeekTo(uint64_t a1, __int128 *a2, int a3)
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  v8 = *(DerivedStorage + 16);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __fpirc_WillSeekTo_block_invoke;
  v9[3] = &unk_1E7495270;
  v9[4] = v13;
  v9[5] = a1;
  v10 = *a2;
  v11 = *(a2 + 2);
  v9[6] = v7;
  v9[7] = DerivedStorage;
  v12 = a3;
  dispatch_sync(v8, v9);
  _Block_object_dispose(v13, 8);
}

uint64_t fpirc_CopyPlayableEventsForItem(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = FigCFWeakReferenceHolderCopyReferencedObject();
  v10 = v9;
  if (a2 && a3 && a4 && v9)
  {
    v11 = *(DerivedStorage + 16);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __fpirc_CopyPlayableEventsForItem_block_invoke;
    v20 = &unk_1E74950E8;
    v21 = &v27;
    v22 = a3;
    v23 = DerivedStorage;
    v24 = a1;
    v25 = v10;
    v26 = a2;
    dispatch_sync(v11, &v17);
    v12 = 0;
    v13 = v28;
    *a4 = v28[3];
    v13[3] = 0;
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v18, v19);
    v12 = v16;
  }

  v14 = v28[3];
  if (v14)
  {
    CFRelease(v14);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  _Block_object_dispose(&v27, 8);
  return v12;
}

void sub_1967D0A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void fpirc_GetCurrentTimeInCurrentEvent(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3810000000;
  v15 = "";
  v16 = *MEMORY[0x1E6960C70];
  v17 = *(MEMORY[0x1E6960C70] + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  v8 = v7;
  if (a2 && v7)
  {
    v9 = *(DerivedStorage + 16);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __fpirc_GetCurrentTimeInCurrentEvent_block_invoke;
    v11[3] = &unk_1E7494FB8;
    v11[6] = v8;
    v11[7] = DerivedStorage;
    v11[4] = &v12;
    v11[5] = a1;
    v11[8] = a2;
    dispatch_sync(v9, v11);
  }

  else if (!v7)
  {
    goto LABEL_5;
  }

  CFRelease(v8);
LABEL_5:
  v10 = v13;
  *a3 = *(v13 + 2);
  *(a3 + 16) = v10[6];
  _Block_object_dispose(&v12, 8);
}

void sub_1967D0B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t fpirc_GetCurrentEventSkippableState(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = fpirc_CopyCurrentEvent(a1);
  if (v3)
  {
    v4 = *(DerivedStorage + 16);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __fpirc_GetCurrentEventSkippableState_block_invoke;
    v7[3] = &unk_1E7482510;
    v7[4] = &v8;
    v7[5] = DerivedStorage;
    dispatch_sync(v4, v7);
    CFRelease(v3);
  }

  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_1967D0C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFTypeRef fpirc_CopyCurrentEventSkipControlLabel(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(CMBaseObjectGetDerivedStorage() + 160))
  {
    return 0;
  }

  v2 = *(DerivedStorage + 160);
  if (!v2)
  {
    return 0;
  }

  return CFRetain(v2);
}

uint64_t OUTLINED_FUNCTION_15_52(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

uint64_t OUTLINED_FUNCTION_18_43(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_19_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_25_34()
{
  result = v0[6];
  v0[12] = result;
  v0[13].n128_u64[0] = v0[7].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_33_28(uint64_t a1@<X8>)
{
  *(v2 + 52) = a1;
  *(v2 + 60) = 2048;
  *(v2 + 62) = v1;
  *(v2 + 70) = 2080;
}

__n128 OUTLINED_FUNCTION_38_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a18, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __n128 a19, unint64_t a20)
{
  result = a19;
  *v20 = a19;
  v20[1].n128_u64[0] = a20;
  return result;
}

__n128 OUTLINED_FUNCTION_39_22()
{
  result = v0[4];
  v0[12] = result;
  v0[13].n128_u64[0] = v0[5].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_40_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_43_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a23, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __n128 a24)
{
  *(a1 + 256) = 0;
  *(a1 + 296) = 0;
  result = a24;
  *(a1 + 432) = a24;
  *(a1 + 448) = a22;
  *(a1 + 480) = a24;
  *(a1 + 496) = a22;
  *(a1 + 504) = a24;
  *(a1 + 520) = a22;
  *(a1 + 1144) = 0;
  *(a1 + 644) = a22;
  *(a1 + 628) = a24;
  *(a1 + 1147) = 0;
  return result;
}

void OUTLINED_FUNCTION_46_16()
{
  *(v2 + 4) = v1;
  *(v2 + 14) = v3;
  *(v2 + 34) = v4;
  *(v2 + 44) = v0;
}

uint64_t OUTLINED_FUNCTION_51_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

Float64 OUTLINED_FUNCTION_52_18(uint64_t a1, uint64_t a2, uint64_t a3, __int128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 time, uint64_t time_16)
{
  time = a11;
  time_16 = a12;

  return CMTimeGetSeconds(&time);
}

CMTime *OUTLINED_FUNCTION_54_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, unint64_t a55, int a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, unint64_t rhs, int rhs_8, int rhs_12)
{
  STACK[0x210] = a55;
  LODWORD(STACK[0x218]) = a56;
  LODWORD(STACK[0x21C]) = v67;
  STACK[0x220] = v66;
  rhs = STACK[0x280];
  rhs_8 = STACK[0x288];
  rhs_12 = v64;
  rhs_16 = v65;

  return CMTimeSubtract(&STACK[0x2B0], &STACK[0x210], &rhs);
}

uint64_t OUTLINED_FUNCTION_58_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 a33, uint64_t a34)
{
  *(v34 - 224) = a33;
  *(v34 - 208) = a34;
  return v34 - 224;
}

__n128 OUTLINED_FUNCTION_59_14()
{
  v2 = *(v0 + 72);
  v3 = *(*(v0 + 32) + 8);
  v4 = *(v2 + 240);
  *(v1 - 256) = *(v2 + 224);
  *(v1 - 240) = v4;
  *(v1 - 224) = *(v2 + 256);
  return v3[2];
}

__n128 OUTLINED_FUNCTION_60_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a52, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, __n128 a53, unint64_t a54)
{
  result = a53;
  *&STACK[0x2B0] = a53;
  STACK[0x2C0] = a54;
  STACK[0x2C8] = v57;
  LOBYTE(STACK[0x2D0]) = v54;
  LOBYTE(STACK[0x2D1]) = v55;
  *(v56 + 194) = a37;
  LOWORD(STACK[0x2D6]) = a38;
  return result;
}

__n128 OUTLINED_FUNCTION_68_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a31, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __n128 a32, unint64_t a33)
{
  result = a32;
  *&STACK[0x2B0] = a32;
  STACK[0x2C0] = a33;
  return result;
}

__n128 OUTLINED_FUNCTION_72_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a21, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a22, unint64_t a23)
{
  result = a22;
  v23[2] = a22;
  v23[3].n128_u64[0] = a23;
  return result;
}

uint64_t OUTLINED_FUNCTION_83_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 time2, uint64_t time2_16)
{
  *(v33 - 256) = *(v32 + 88);
  *(v33 - 240) = *(v32 + 104);
  time2 = a23;
  time2_16 = a24;

  return CMTimeCompare((v33 - 256), &time2);
}

uint64_t OUTLINED_FUNCTION_97_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, char a14)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_100_6(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, os_log_type_t type, uint64_t a40, uint64_t a41, uint64_t a42, int a43)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_103_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_115_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, char a18, int a19)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_133_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int16 a20, char a21, char a22, int a23)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_134_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

Float64 OUTLINED_FUNCTION_135_3@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CMTime *time, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t timea, uint64_t time_8, uint64_t time_16)
{
  time_16 = a1;

  return CMTimeGetSeconds(&timea);
}

Float64 OUTLINED_FUNCTION_137_2@<D0>(uint64_t a1@<X8>)
{
  *(v1 - 240) = a1;

  return CMTimeGetSeconds((v1 - 256));
}

__n128 OUTLINED_FUNCTION_139_2@<Q0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, __n128 a48, __int128 a49, unint64_t a50)
{
  STACK[0x2D0] = a1;
  result = a48;
  *&STACK[0x210] = a48;
  *&STACK[0x220] = a49;
  STACK[0x230] = a50;
  return result;
}

void OUTLINED_FUNCTION_141_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50)
{
  STACK[0x2C8] = v53;
  LOBYTE(STACK[0x2D0]) = v51;
  LOBYTE(STACK[0x2D1]) = v50;
  *(v52 + 194) = a50;
}

__n128 OUTLINED_FUNCTION_144_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __n128 *a23)
{
  result = *a23;
  *&STACK[0x2B0] = *a23;
  STACK[0x2C0] = a23[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_155_1()
{
  result = *(v2 + 80);
  v5 = *(v2 + 96);
  *(v2 + 256) = result;
  *(v2 + 272) = v5;
  *(v3 - 208) = v1;
  *(v3 - 207) = v0;
  return result;
}

void OUTLINED_FUNCTION_162_1(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 4) = a1;
  *(v8 + 12) = 2048;
  *(v8 + 14) = a8;
}

uint64_t OUTLINED_FUNCTION_164_2(uint64_t a1)
{

  return FigCFArrayGetFirstIndexOfValue();
}

Float64 OUTLINED_FUNCTION_165_2@<D0>(unint64_t a1@<X8>)
{
  STACK[0x2C0] = a1;

  return CMTimeGetSeconds(&STACK[0x2B0]);
}

BOOL OUTLINED_FUNCTION_167_3(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_169_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_173_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a25, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a26, __int128 a27)
{
  result = a26;
  *(v27 + 96) = a26;
  *(v27 + 112) = a27;
  *(v27 + 128) = *(v27 + 32);
  return result;
}

__n128 OUTLINED_FUNCTION_181_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a61, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, __n128 a62, __int128 a63)
{
  result = a62;
  *&STACK[0x210] = a62;
  *&STACK[0x220] = a63;
  STACK[0x230] = a64;
  return result;
}

__n128 OUTLINED_FUNCTION_185_2()
{
  result = *&STACK[0x280];
  *&STACK[0x2B0] = *&STACK[0x280];
  STACK[0x2C0] = STACK[0x290];
  return result;
}

__n128 OUTLINED_FUNCTION_191_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a21, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a22, unint64_t a23)
{
  result = a22;
  v23[6] = a22;
  v23[7].n128_u64[0] = a23;
  return result;
}

__n128 OUTLINED_FUNCTION_193_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a21, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a22, uint64_t a23)
{
  result = a22;
  *(v23 - 240) = a22;
  *(v23 - 224) = a23;
  return result;
}

void OUTLINED_FUNCTION_194_1()
{
  v1 = *(v0 - 144);
  *(v0 - 112) = *(v0 - 160);
  *(v0 - 96) = v1;
  *(v0 - 80) = *(v0 - 128);
}

__n128 OUTLINED_FUNCTION_206_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a13, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a14, __int128 a15, uint64_t a16)
{
  result = a14;
  *(v16 + 96) = a14;
  *(v16 + 112) = a15;
  *(v16 + 128) = a16;
  return result;
}

__n128 OUTLINED_FUNCTION_208_1@<Q0>(uint64_t a1@<X8>)
{
  result = *(a1 + 224);
  v2 = *(a1 + 240);
  *&STACK[0x2B0] = result;
  *&STACK[0x2C0] = v2;
  STACK[0x2D0] = *(a1 + 256);
  return result;
}

__n128 OUTLINED_FUNCTION_213_1()
{
  result = v0[10];
  v0[16] = result;
  v0[17].n128_u64[0] = v0[11].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_222_1()
{
  result = v1[27];
  v0[4] = result;
  v0[5].n128_u64[0] = v1[28].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_225_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a29, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __n128 a30, unint64_t a31)
{
  result = a30;
  *v31 = a30;
  v31[1].n128_u64[0] = a31;
  return result;
}

__n128 OUTLINED_FUNCTION_227_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a15, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a16, uint64_t a17)
{
  result = a16;
  *(v17 - 208) = a16;
  *(v17 - 192) = a17;
  return result;
}

__n128 OUTLINED_FUNCTION_229_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a31, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __n128 a32, __int128 a33, unint64_t a34)
{
  result = a32;
  *&STACK[0x2B0] = a32;
  *&STACK[0x2C0] = a33;
  STACK[0x2D0] = a34;
  return result;
}

__n128 OUTLINED_FUNCTION_232_1()
{
  result = *(v0 + 32);
  v2 = *(v0 + 48);
  *(v0 + 208) = result;
  *(v0 + 224) = v2;
  *(v0 + 240) = *(v0 + 64);
  return result;
}

__n128 OUTLINED_FUNCTION_233_1()
{
  result = *(v0 + 32);
  v2 = *(v0 + 48);
  *(v0 + 256) = result;
  *(v0 + 272) = v2;
  *(v0 + 288) = *(v0 + 64);
  return result;
}

__n128 OUTLINED_FUNCTION_236_1()
{
  result = *(v0 + 224);
  v3 = *(v0 + 240);
  *(v1 + 96) = result;
  *(v1 + 112) = v3;
  *(v1 + 128) = *(v0 + 256);
  return result;
}

__n128 OUTLINED_FUNCTION_238_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a19, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a20, unint64_t a21)
{
  result = a20;
  v21[8] = a20;
  v21[9].n128_u64[0] = a21;
  return result;
}

BOOL OUTLINED_FUNCTION_254_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, os_log_type_t type, int a19)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_255_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, os_log_type_t type, int a42)
{

  return os_log_type_enabled(a1, type);
}

double OUTLINED_FUNCTION_256_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27, __int128 a28, __int128 a29)
{
  a28 = 0u;
  a29 = 0u;
  a27 = 0u;

  return FigPlayerInterstitialEventGetEffectiveSkipControlTimeRange(a1, &a27);
}

BOOL OUTLINED_FUNCTION_258_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, os_log_type_t type, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61)
{

  return os_log_type_enabled(a1, type);
}

uint64_t ExternalProtectionStatusChangedCallback_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t FigPKDCPEProtectorCryptorWasInvalidated(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 9) && !*(DerivedStorage + 8))
  {
    goto LABEL_9;
  }

  FigSimpleMutexLock();
  if (!*(DerivedStorage + 96))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  if (!*(DerivedStorage + 9))
  {
    CFSetRemoveValue(*(DerivedStorage + 24), a2);
  }

  FigSimpleMutexUnlock();
  if (*(DerivedStorage + 9) || *(DerivedStorage + 8))
  {
LABEL_9:
    v4 = 4294951452;
  }

  else
  {
    v4 = 0;
  }

  FigReadWriteLockUnlockForRead();
  return v4;
}

uint64_t ExternalProtectionRequiredChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t FigPKDCPEProtectorInvalidate(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    if (*DerivedStorage)
    {
      FigReadWriteLockLockForWrite();
      v4 = *(v3 + 9);
      *(v3 + 8) = *(v3 + 9) == 0;
      *(v3 + 9) = 1;
      FigReadWriteLockUnlockForWrite();
      FigReadWriteLockLockForRead();
      if (!v4)
      {
        FigSimpleMutexLock();
        CFSetApplyFunction(v3[3], InvalidateCryptorSetApplier, a1);
        FigSimpleMutexUnlock();
        v7 = v3[10];
        if (v7)
        {
          PKDKeyManagerInvalidate(v7);
          v8 = v3[10];
          if (v8)
          {
            CFRelease(v8);
            v3[10] = 0;
          }
        }

        v9 = v3[6];
        if (v9)
        {
          CFRelease(v9);
          v3[6] = 0;
        }

        v10 = v3[8];
        if (v10)
        {
          CFRelease(v10);
          v3[8] = 0;
        }

        v11 = v3[9];
        if (v11)
        {
          CFRelease(v11);
          v3[9] = 0;
        }

        if (v3[11])
        {
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterRemoveWeakListener();
          v12 = v3[11];
          if (v12)
          {
            CFRelease(v12);
            v3[11] = 0;
          }
        }
      }

      FigReadWriteLockUnlockForRead();
      FigReadWriteLockLockForWrite();
      *(v3 + 8) = 0;
      v5 = v3[3];
      if (v5)
      {
        CFRelease(v5);
        v3[3] = 0;
      }

      FigSimpleMutexDestroy();
      v3[2] = 0;
      FigReadWriteLockUnlockForWrite();
    }
  }

  return 0;
}

uint64_t FigPKDCPEProtectorFinalize(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigPKDCPEProtectorInvalidate(a1);
  result = *DerivedStorage;
  if (*DerivedStorage)
  {

    return FigReadWriteLockDestroy();
  }

  return result;
}

__CFString *FigPKDCPEProtectorCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = Mutable;
  if (DerivedStorage && Mutable)
  {
    v6 = CFGetRetainCount(a1);
    if (*(DerivedStorage + 9))
    {
      v7 = " (invalidated)";
    }

    else
    {
      v7 = "";
    }

    v8 = CFGetAllocator(a1);
    CFStringAppendFormat(v5, 0, @"<FigPKDPKDCPEProtector %p retainCount: %ld%s allocator: %p, >", a1, v6, v7, v8);
  }

  return v5;
}