uint64_t warehouse_reflectNotificationFromUpstreamBufferQueue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    FigSimpleMutexLock();
    FigCFArrayRemoveAllValues();
    FigCFArrayRemoveAllValues();
    CFArrayRemoveAllValues(*(DerivedStorage + 128));
    FigSimpleMutexUnlock();
    v7 = *(DerivedStorage + 40);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v8)
    {
      v8(v7);
    }
  }

  else
  {
    v9 = FigCFEqual();
    if (a5)
    {
      if (v9)
      {
        v10 = CFGetTypeID(a5);
        if (v10 == CFDictionaryGetTypeID())
        {
          Value = FigCFDictionaryGetValue();
          FigSimpleMutexLock();
          v12 = *(DerivedStorage + 136);
          *(DerivedStorage + 136) = Value;
          if (Value)
          {
            CFRetain(Value);
          }

          if (v12)
          {
            CFRelease(v12);
          }

          FigSimpleMutexUnlock();
        }
      }
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

CFMutableDictionaryRef warehouseRenderPipelineSetupOnce()
{
  sWarehouseRenderPipelineVTableQueue = dispatch_queue_create("com.apple.coremedia.warehouserenderpipeline.vtables", 0);
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  sWarehouseRenderPipelineVTableDictionary = result;
  return result;
}

void warehouse_RenderPipeline_getVTableWithOptionalMethodsWork(int *a1)
{
  v2 = *a1;
  Value = CFDictionaryGetValue(sWarehouseRenderPipelineVTableDictionary, v2);
  if (Value)
  {
    goto LABEL_15;
  }

  Value = malloc_type_malloc(0x18uLL, 0x6004045F868BCuLL);
  v4 = malloc_type_malloc(0x78uLL, 0x10C00406FD3D2E8uLL);
  __copy_assignment_8_8_t0w8_pa0_57874_8_pa0_34440_16_pa0_612_24_pa0_26992_32_pa0_12599_40_pa0_51310_48_pa0_29770_56_pa0_24547_64_pa0_53210_72_pa0_23665_80_pa0_52496_88_pa0_23813_96_pa0_52734_104_pa0_18255_112(v4, kFigWarehouseRenderPipeline_FigRenderPipelineClass);
  if (v2)
  {
    if ((v2 & 2) != 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4[1] = 0;
    if ((v2 & 2) != 0)
    {
LABEL_4:
      if ((v2 & 4) != 0)
      {
        goto LABEL_5;
      }

LABEL_11:
      v4[10] = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v4[2] = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
LABEL_6:
    v4[11] = 0;
  }

LABEL_7:
  *Value = 0;
  Value[1] = &kFigWarehouseRenderPipeline_BaseClass;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  Value[2] = v5;
  CFDictionarySetValue(sWarehouseRenderPipelineVTableDictionary, v2, Value);
LABEL_15:
  *(a1 + 1) = Value;
}

uint64_t figWarehouseRenderPipelineSetRateAndAnchorTime(uint64_t a1, __int128 *a2, __int128 *a3, float a4, float a5)
{
  v9 = *(CMBaseObjectGetDerivedStorage() + 144);
  v14 = *a2;
  v15 = *(a2 + 2);
  v12 = *a3;
  v13 = *(a3 + 2);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v10)
  {
    return 4294954514;
  }

  v18 = v14;
  v19 = v15;
  v16 = v12;
  v17 = v13;
  return v10(v9, &v18, &v16, a4, a5);
}

uint64_t figWarehouseRenderPipelineStartAndUseTimebaseAtTransition(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  if (a5)
  {
    if (a6)
    {
      v13 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      if (!v13)
      {
        figWarehouseRenderPipelineStartAndUseTimebaseAtTransition_cold_1(&v24);
        return v24;
      }
    }
  }

  FigSimpleMutexLock();
  value[0] = a4;
  value[1] = a2;
  value[2] = a5;
  value[3] = v13;
  value[4] = 0;
  CFArrayAppendValue(*(DerivedStorage + 128), value);
  FigSimpleMutexUnlock();
  v14 = *(DerivedStorage + 144);
  v21 = *a3;
  v22 = *(a3 + 2);
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v15)
  {
    v19 = 4294954514;
    if (!v13)
    {
      return v19;
    }

    goto LABEL_11;
  }

  v24 = v21;
  v25 = v22;
  v16 = v15(v14, a2, &v24, a4, warehouse_timebaseTransitionCommitted, a1);
  if (v16)
  {
    v19 = v16;
    if (!v13)
    {
      return v19;
    }

    goto LABEL_11;
  }

  v17 = *(DerivedStorage + 40);
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v18)
  {
    v18(v17);
  }

  v19 = 0;
  if (v13)
  {
LABEL_11:
    CFRelease(v13);
  }

  return v19;
}

uint64_t figWarehouseRenderPipelineStartOffline(uint64_t a1, __int128 *a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 144);
  v6 = *a2;
  v7 = *(a2 + 2);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v4)
  {
    return 4294954514;
  }

  v8 = v6;
  v9 = v7;
  return v4(v3, &v8);
}

uint64_t figWarehouseRenderPipelineStopOffline(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 144);
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(v1);
}

uint64_t figWarehouseRenderPipelinePretendOutputIsLow(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  warehouse_deliverSampleBuffersUpToHighWaterLevel(a1);
  v3 = *(DerivedStorage + 144);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3);
}

uint64_t figWarehouseRenderPipelineSynchronizeToTimebase(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 144);
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(v1);
}

uint64_t figWarehouseRenderPipelineRequestDecodeForPreroll(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  warehouse_deliverSampleBuffersUpToHighWaterLevel(a1);
  v5 = *(DerivedStorage + 144);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, a2);
}

uint64_t figWarehouseRenderPipelineFinishSettingRate(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 144);
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(v1);
}

uint64_t figWarehouseRenderPipelineCancelAndFlushTransition(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17C98)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  v5 = *(DerivedStorage + 112);
  if (v5 && (Count = CFArrayGetCount(v5), Count >= 1))
  {
    v7 = Count;
    v8 = 0;
    v9 = *MEMORY[0x1E6960550];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 112), v8);
      if (!CMSampleBufferGetNumSamples(ValueAtIndex))
      {
        CMGetAttachment(ValueAtIndex, v9, 0);
        if (FigCFEqual())
        {
          break;
        }
      }

      if (v7 == ++v8)
      {
        goto LABEL_9;
      }
    }

    v18.length = v7 - v8;
    v18.location = v8;
    CFArrayReplaceValues(*(DerivedStorage + 112), v18, 0, 0);
    CMBufferQueueGetBufferCount(*(DerivedStorage + 16));
    CMBufferQueueReset(*(DerivedStorage + 16));
    if (dword_1EAF17C98)
    {
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
LABEL_9:
    FigBufferQueueTwoPassFilter();
  }

  v12 = CFArrayGetCount(*(DerivedStorage + 128));
  if (v12 >= 1)
  {
    v13 = v12;
    v14 = 0;
    while (1)
    {
      CFArrayGetValueAtIndex(*(DerivedStorage + 128), v14);
      if (FigCFEqual())
      {
        break;
      }

      if (v13 == ++v14)
      {
        goto LABEL_18;
      }
    }

    v19.length = v13 - v14;
    v19.location = v14;
    CFArrayReplaceValues(*(DerivedStorage + 128), v19, 0, 0);
  }

LABEL_18:
  FigSimpleMutexUnlock();
  v15 = *(DerivedStorage + 144);
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v16)
  {
    return v16(v15, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t figWarehouseRenderPipelineFlushFromTime(uint64_t a1, __int128 *a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 144);
  v6 = *a2;
  v7 = *(a2 + 2);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (!v4)
  {
    return 4294954514;
  }

  v8 = v6;
  v9 = v7;
  return v4(v3, &v8);
}

uint64_t figWarehouseRenderPipelineDoesSupportTransitionToFormatDescription(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 144);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v4)
  {
    return 0;
  }

  return v4(v3, a2);
}

void figWarehouseRenderPipelineSetPropertiesToUpdateAtTransition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  Count = CFArrayGetCount(*(DerivedStorage + 128));
  if (Count < 1)
  {
LABEL_5:
    FigSimpleMutexUnlock();
    v11 = qword_1EAF17C90;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 4294954439, "<<<< Warehouse RP >>>>", 633, v3);
  }

  else
  {
    v8 = Count;
    v9 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 128), v9);
      if (FigCFEqual())
      {
        break;
      }

      if (v8 == ++v9)
      {
        goto LABEL_5;
      }
    }

    Value = FigCFDictionaryGetValue();
    if (*MEMORY[0x1E695E738] == Value)
    {
      Value = 0;
    }

    v13 = ValueAtIndex[4];
    ValueAtIndex[4] = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    FigSimpleMutexUnlock();
    v14 = *(DerivedStorage + 144);
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 112);
    if (v15)
    {

      v15(v14, a2, a3);
    }
  }
}

void warehouse_timebaseTransitionCommitted(const void *a1, uint64_t a2, __int128 *a3, uint64_t a4, float a5)
{
  v29 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  Count = CFArrayGetCount(*(DerivedStorage + 128));
  if (Count < 1)
  {
LABEL_5:

    FigSimpleMutexUnlock();
  }

  else
  {
    v12 = Count;
    v13 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 128), v13);
      if (FigCFEqual())
      {
        break;
      }

      if (v12 == ++v13)
      {
        goto LABEL_5;
      }
    }

    v24 = a4;
    v16 = ValueAtIndex[1];
    v15 = ValueAtIndex[2];
    ValueAtIndex[1] = 0;
    if (ValueAtIndex[3])
    {
      v17 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (!v17)
      {
        if (dword_1EAF17C98)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v17 = 0;
        v15 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v19 = ValueAtIndex[4];
    ValueAtIndex[4] = 0;
    CFArrayRemoveValueAtIndex(*(DerivedStorage + 128), v13);
    CFRetain(a1);
    warehouse_setTimebase(a1, v16);
    v20 = *(DerivedStorage + 32);
    *(DerivedStorage + 32) = v19;
    if (v19)
    {
      CFRetain(v19);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    CFArrayGetCount(*(DerivedStorage + 120));
    CFArrayRemoveAllValues(*(DerivedStorage + 120));
    v21 = *MEMORY[0x1E6960550];
    do
    {
      FirstValue = FigCFArrayGetFirstValue();
      if (!FirstValue)
      {
        break;
      }

      CMGetAttachment(FirstValue, v21, 0);
      v23 = FigCFEqual();
      CFArrayRemoveValueAtIndex(*(DerivedStorage + 112), 0);
    }

    while (!v23);
    CFRelease(a1);
    FigSimpleMutexUnlock();
    if (v16)
    {
      CFRelease(v16);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    if (v15)
    {
      v27 = *a3;
      v28 = *(a3 + 2);
      v25 = *v24;
      v26 = *(v24 + 16);
      v15(v17, a2, &v27, &v25, a5);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }
}

OpaqueCMTimebase *warehouse_setTimebase(uint64_t a1, OpaqueCMTimebase *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 24);
  if (result != a2)
  {
    if (dword_1EAF17C98)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      result = *(DerivedStorage + 24);
    }

    if (result)
    {
      CMTimebaseRemoveTimerDispatchSource(result, *(DerivedStorage + 184));
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v6 = *(DerivedStorage + 24);
    }

    else
    {
      v6 = 0;
    }

    *(DerivedStorage + 24) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    result = *(DerivedStorage + 24);
    if (result)
    {
      CMTimebaseAddTimerDispatchSource(result, *(DerivedStorage + 184));
      CMNotificationCenterGetDefaultLocalCenter();
      return FigNotificationCenterAddWeakListener();
    }
  }

  return result;
}

uint64_t warehouse_timebaseTimeJumped(uint64_t a1, uint64_t a2)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 40);
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  v6 = *(v5 + 16);
  if (v6)
  {

    return v6(v2);
  }

  return result;
}

CFTypeRef warehouse_retainAndKeepSampleBuffersBeforeTransitionIDMarkerFilterCallback(opaqueCMSampleBuffer *a1, uint64_t *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (*(a2 + 8))
  {
    if (dword_1EAF17C98 >= 8)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  CMGetAttachment(a1, *MEMORY[0x1E6960550], 0);
  if (FigCFEqual())
  {
    *(a2 + 8) = 1;
    if (dword_1EAF17C98)
    {
LABEL_6:
      LODWORD(v9.value) = 0;
      LOBYTE(type.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_7:
    if (CMSampleBufferGetNumSamples(a1) < 1)
    {
      ++*(a2 + 7);
    }

    else
    {
      memset(&time, 0, sizeof(time));
      CMSampleBufferGetOutputPresentationTimeStamp(&time, a1);
      memset(&v10, 0, sizeof(v10));
      CMSampleBufferGetOutputDuration(&v10, a1);
      memset(&v9, 0, sizeof(v9));
      type = time;
      rhs = v10;
      CMTimeAdd(&v9, &type, &rhs);
      v5 = *(a2 + 8);
      if (!v5)
      {
        *(a2 + 36) = time;
      }

      *(a2 + 60) = v9;
      *(a2 + 8) = v5 + 1;
    }

    return 0;
  }

  ++*(a2 + 6);

  return CFRetain(a1);
}

uint64_t figWarehouseRenderPipelineInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  v3 = *(DerivedStorage + 40);
  if (v3 && *(DerivedStorage + 48))
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v4)
    {
      v4(v3, 0, 0);
    }

    *(v2 + 48) = 0;
  }

  if (*(v2 + 104))
  {
    FigSimpleMutexLock();
  }

  if (!*v2)
  {
    *v2 = 1;
    if (*(v2 + 144))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
    }

    if (*(v2 + 16))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
    }

    v5 = *(v2 + 160);
    if (v5)
    {
      CMBufferQueueRemoveTrigger(*(v2 + 16), v5);
      *(v2 + 160) = 0;
    }

    v6 = *(v2 + 168);
    if (v6)
    {
      CMBufferQueueRemoveTrigger(*(v2 + 152), v6);
      *(v2 + 168) = 0;
    }

    v7 = *(v2 + 176);
    if (v7)
    {
      CMBufferQueueRemoveTrigger(*(v2 + 152), v7);
      *(v2 + 176) = 0;
    }

    if (*(v2 + 144))
    {
      FigRenderPipelineGetFigBaseObject();
      if (v8)
      {
        v9 = v8;
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v10)
        {
          v10(v9);
        }
      }
    }

    v11 = *(v2 + 184);
    if (v11)
    {
      v12 = *(v2 + 24);
      if (v12)
      {
        CMTimebaseRemoveTimerDispatchSource(v12, v11);
        v11 = *(v2 + 184);
      }

      dispatch_source_cancel(v11);
    }

    if (*(v2 + 24))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
    }
  }

  if (*(v2 + 104))
  {
    FigSimpleMutexUnlock();
  }

  return 0;
}

void figWarehouseRenderPipelineFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  figWarehouseRenderPipelineInvalidate(a1);
  v3 = DerivedStorage[5];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[5] = 0;
  }

  v4 = DerivedStorage[1];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[1] = 0;
  }

  v5 = DerivedStorage[2];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[2] = 0;
  }

  v6 = DerivedStorage[3];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[3] = 0;
  }

  v7 = DerivedStorage[4];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[4] = 0;
  }

  FigSimpleMutexDestroy();
  DerivedStorage[13] = 0;
  v8 = DerivedStorage[14];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[14] = 0;
  }

  v9 = DerivedStorage[15];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[15] = 0;
  }

  v10 = DerivedStorage[16];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[16] = 0;
  }

  v11 = DerivedStorage[17];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[17] = 0;
  }

  v12 = DerivedStorage[18];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[18] = 0;
  }

  v13 = DerivedStorage[19];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[19] = 0;
  }

  v14 = DerivedStorage[23];
  if (v14)
  {
    dispatch_release(v14);
    DerivedStorage[23] = 0;
  }
}

__CFString *figWarehouseRenderPipelineCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigWarehouseRenderPipeline %p: ", a1);
  v4 = *(DerivedStorage + 16);
  BufferCount = CMBufferQueueGetBufferCount(v4);
  v6 = *(DerivedStorage + 112);
  if (v6)
  {
    Count = CFArrayGetCount(*(DerivedStorage + 112));
  }

  else
  {
    Count = 0;
  }

  v8 = *(DerivedStorage + 120);
  if (v8)
  {
    v9 = CFArrayGetCount(*(DerivedStorage + 120));
  }

  else
  {
    v9 = 0;
  }

  CFStringAppendFormat(Mutable, 0, @"%s sourceSampleBufferQueue %p (%d sbufs), warehouseSampleBufferArray %p (%d sbufs), catchupSampleBufferArray %p (%d sbufs), downstreamRenderPipeline %@", DerivedStorage + 192, v4, BufferCount, v6, Count, v8, v9, *(DerivedStorage + 144));
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t figWarehouseRenderPipelineCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFMutableDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    figWarehouseRenderPipelineCopyProperty_cold_1(&lhs);
    return LODWORD(lhs.start.value);
  }

  v8 = DerivedStorage;
  if (CFEqual(@"SourceSampleBufferQueue", a2))
  {
    v9 = *(v8 + 2);
    if (!v9)
    {
LABEL_5:
      value_low = 0;
      *a4 = v9;
      return value_low;
    }

LABEL_4:
    v9 = CFRetain(v9);
    goto LABEL_5;
  }

  if (CFEqual(@"SourceSampleBufferConsumer", a2))
  {
    return 4294954446;
  }

  if (CFEqual(@"PrefersConsumptionDrivenReads", a2))
  {
    v9 = *MEMORY[0x1E695E4D0];
    if (!*MEMORY[0x1E695E4D0])
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (CFEqual(@"EndPresentationTimeForQueuedSamples", a2))
  {
    memset(&lhs, 0, 24);
    CMBufferQueueGetEndPresentationTimeStamp(&lhs.start, *(v8 + 2));
    if ((lhs.start.flags & 1) == 0)
    {
      return FigRenderPipelineCopyProperty(*(v8 + 18), a2, a3, a4);
    }

    time = lhs.start;
    v9 = CMTimeCopyAsDictionary(&time, a3);
    goto LABEL_5;
  }

  if (CFEqual(@"WarehouseArraySummaries", a2))
  {
    FigSimpleMutexLock();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v13 = *(v8 + 14);
      if (v13)
      {
        Count = CFArrayGetCount(v13);
        FigCFDictionarySetInt32();
        v15 = Count < 1;
        v16 = Count - 1;
        if (!v15)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v8 + 14), 0);
          v18 = CFArrayGetValueAtIndex(*(v8 + 14), v16);
          memset(&time, 0, sizeof(time));
          CMSampleBufferGetOutputPresentationTimeStamp(&time, ValueAtIndex);
          memset(&v28, 0, sizeof(v28));
          CMSampleBufferGetOutputPresentationTimeStamp(&lhs.start, v18);
          CMSampleBufferGetOutputDuration(&rhs, v18);
          CMTimeAdd(&v28, &lhs.start, &rhs);
          rhs = time;
          v25 = v28;
          CMTimeRangeFromTimeToTime(&lhs, &rhs, &v25);
          FigCFDictionarySetCMTimeRange();
        }
      }

      else
      {
        FigCFDictionarySetInt32();
      }

      v19 = *(v8 + 15);
      if (v19)
      {
        v20 = CFArrayGetCount(v19);
        FigCFDictionarySetInt32();
        v15 = v20 < 1;
        v21 = v20 - 1;
        if (!v15)
        {
          v22 = CFArrayGetValueAtIndex(*(v8 + 15), 0);
          v23 = CFArrayGetValueAtIndex(*(v8 + 15), v21);
          memset(&time, 0, sizeof(time));
          CMSampleBufferGetOutputPresentationTimeStamp(&time, v22);
          memset(&v28, 0, sizeof(v28));
          CMSampleBufferGetOutputPresentationTimeStamp(&lhs.start, v23);
          CMSampleBufferGetOutputDuration(&rhs, v23);
          CMTimeAdd(&v28, &lhs.start, &rhs);
          rhs = time;
          v25 = v28;
          CMTimeRangeFromTimeToTime(&lhs, &rhs, &v25);
          FigCFDictionarySetCMTimeRange();
        }
      }

      else
      {
        FigCFDictionarySetInt32();
      }

      value_low = 0;
    }

    else
    {
      figWarehouseRenderPipelineCopyProperty_cold_2(&lhs);
      value_low = LODWORD(lhs.start.value);
    }

    FigSimpleMutexUnlock();
    *a4 = Mutable;
    return value_low;
  }

  if (CFEqual(@"WarehouseTimebase", a2))
  {
    v9 = *(v8 + 3);
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (CFEqual(@"WarehouseSpeedRampData", a2))
  {
    v9 = *(v8 + 4);
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (CFEqual(@"LoggingIdentifier", a2))
  {
    v9 = CFStringCreateWithCString(a3, v8 + 192, 0x600u);
    goto LABEL_5;
  }

  v24 = *(v8 + 18);

  return FigRenderPipelineCopyProperty(v24, a2, a3, a4);
}

void figWarehouseRenderPipelineSetProperty(uint64_t a1, const void *a2, OpaqueCMTimebase *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    figWarehouseRenderPipelineSetProperty_cold_1(&v23);
    return;
  }

  v8 = DerivedStorage;
  if (CFEqual(@"Timebase", a2))
  {
    if (!a3 || (v9 = CFGetTypeID(a3), v9 == CMTimebaseGetTypeID()))
    {
      FigSimpleMutexLock();
      warehouse_setTimebase(a1, a3);
      FigSimpleMutexUnlock();
      FigRenderPipelineGetFigBaseObject();
      v11 = v10;
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v12)
      {
        v12(v11, a2, a3);
      }

      v15 = *(v8 + 5);
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v16)
      {
        v16(v15);
      }

      return;
    }

    v17 = qword_1EAF17C90;
    v18 = v3;
    v19 = 576;
    goto LABEL_16;
  }

  if (CFEqual(@"SpeedRampData", a2))
  {
    if (a3)
    {
      v13 = CFGetTypeID(a3);
      if (v13 != CFDataGetTypeID() || !FigSpeedRampDataIsValid(a3))
      {
        v17 = qword_1EAF17C90;
        v18 = v3;
        v19 = 586;
LABEL_16:

        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, 4294954444, "<<<< Warehouse RP >>>>", v19, v18);
        return;
      }

      v14 = *(v8 + 4);
      *(v8 + 4) = a3;
      CFRetain(a3);
    }

    else
    {
      v14 = *(v8 + 4);
      *(v8 + 4) = 0;
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  FigRenderPipelineGetFigBaseObject();
  v21 = v20;
  v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v22)
  {

    v22(v21, a2, a3);
  }
}

uint64_t warehouseUpcomingTransition_retain(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x19A8CC720](a1, 40, 0xE004017C7DA58, 0);
  v4 = *(a2 + 32);
  v5 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  if (*v3)
  {
    CFRetain(*v3);
  }

  v6 = *(v3 + 8);
  if (v6)
  {
    CFRetain(v6);
  }

  v7 = *(v3 + 24);
  if (v7)
  {
    CFRetain(v7);
  }

  v8 = *(v3 + 32);
  if (v8)
  {
    CFRetain(v8);
  }

  return v3;
}

void warehouseUpcomingTransition_release(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (*ptr)
  {
    CFRelease(*ptr);
    *ptr = 0;
  }

  v4 = ptr[1];
  if (v4)
  {
    CFRelease(v4);
    ptr[1] = 0;
  }

  v5 = ptr[3];
  if (v5)
  {
    CFRelease(v5);
    ptr[3] = 0;
  }

  v6 = ptr[4];
  if (v6)
  {
    CFRelease(v6);
    ptr[4] = 0;
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t warehouse_setTrimAttachmentToTrimUntilTime(void *a1, CMTime *a2)
{
  v4 = *MEMORY[0x1E6960560];
  CMRemoveAttachment(a1, *MEMORY[0x1E6960560]);
  memset(&v11, 0, sizeof(v11));
  CMSampleBufferGetOutputPresentationTimeStamp(&v11, a1);
  memset(&v10, 0, sizeof(v10));
  lhs = *a2;
  v8 = v11;
  CMTimeSubtract(&v10, &lhs, &v8);
  AllocatorForMedia = FigGetAllocatorForMedia();
  lhs = v10;
  v6 = CMTimeCopyAsDictionary(&lhs, AllocatorForMedia);
  CMSetAttachment(a1, v4, v6, 1u);
  if (v6)
  {
    CFRelease(v6);
  }

  lhs = *a2;
  return CMSampleBufferSetOutputPresentationTimeStamp(a1, &lhs);
}

void warehouse_setTrimAttachmentToTrimWholeDuration(void *a1)
{
  v2 = *MEMORY[0x1E6960560];
  CMRemoveAttachment(a1, *MEMORY[0x1E6960560]);
  memset(&v6, 0, sizeof(v6));
  CMSampleBufferGetOutputDuration(&v6, a1);
  AllocatorForMedia = FigGetAllocatorForMedia();
  v5 = v6;
  v4 = CMTimeCopyAsDictionary(&v5, AllocatorForMedia);
  CMSetAttachment(a1, v2, v4, 1u);
  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t FigVirtualDisplaySourceNullCreate(uint64_t a1, CFTypeRef *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  FigVirtualDisplaySourceGetClassID();
  v3 = CMDerivedObjectCreate();
  if (v3)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    *(CMBaseObjectGetDerivedStorage() + 8) = 0;
    *a2 = 0;
  }

  return v3;
}

double srcnull_finalize(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    return srcnull_finalize_cold_1();
  }

  return result;
}

uint64_t srcnull_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (!CFEqual(@"sourceType", a2))
  {
    return 4294954512;
  }

  v5 = CFRetain(@"NullSource");
  result = 0;
  *a4 = v5;
  return result;
}

uint64_t srcnull_start(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigCFDictionaryGetBooleanIfPresent();
  *(DerivedStorage + 8) = 2;
  return 0;
}

void serverVideoCompositor_releaseAssignAndDeepCopySourceTimedSamplesForTrackIDs(CFMutableDictionaryRef *a1, CFTypeRef cf)
{
  v3 = CFGetAllocator(cf);
  Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v5 = Mutable;
    FigCFDictionaryApplyBlock();
    if (a1)
    {
      v6 = *a1;
      *a1 = v5;
      CFRetain(v5);
      if (v6)
      {
        CFRelease(v6);
      }
    }

    CFRelease(v5);
  }

  else
  {
    serverVideoCompositor_releaseAssignAndDeepCopySourceTimedSamplesForTrackIDs_cold_1();
  }
}

uint64_t FigVideoCompositorServerRetainVideoCompositorForID(uint64_t a1, CFTypeRef *a2)
{
  v3 = FigXPCServerRetainNeighborObjectFromID();
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v4 = CFGetTypeID(*a2);
    if (v4 == FigVideoCompositorGetTypeID())
    {
      return 0;
    }

    FigVideoCompositorServerRetainVideoCompositorForID_cold_1(&v7);
    v5 = v7;
  }

  if (a2 && v5 && *a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return v5;
}

void FigVideoCompositorServerStart(uint64_t a1)
{
  if (FigServer_IsMediaparserd())
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 1, HandleVideoCompositorMessage, 0);
  }

  else
  {
    FigServer_IsMediaplaybackd();
    FigXPCServerStart();
  }
}

void __serverVideoCompositor_createReducedTimedSamplesForTracks_block_invoke(uint64_t a1, const void *a2, const __CFArray *a3)
{
  value = 0;
  v6 = FigCFDictionaryGetValue();
  v7 = v6;
  if (v6)
  {
    Count = CFArrayGetCount(v6);
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    Count = 0;
    if (a3)
    {
LABEL_3:
      v9 = CFArrayGetCount(a3);
      if (Count)
      {
        goto LABEL_4;
      }

LABEL_17:
      CFDictionarySetValue(*(a1 + 48), a2, a3);
      *(*(*(a1 + 32) + 8) + 24) += v9;
      goto LABEL_18;
    }
  }

  v9 = 0;
  if (!Count)
  {
    goto LABEL_17;
  }

LABEL_4:
  Mutable = CFArrayCreateMutable(*(a1 + 56), v9, MEMORY[0x1E695E9C0]);
  v18 = 0;
  if (v9 < 1)
  {
LABEL_13:
    CFDictionarySetValue(*(a1 + 48), a2, Mutable);
    if (!Mutable)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    if (FigVCPGetTimedSampleWithMatchingPTSFromAscendingPTSTimedSampleArray(v7, ValueAtIndex, v12, Count, &v18))
    {
      if (FigCFEqual())
      {
        break;
      }
    }

    v12 = v18;
    CFArrayAppendValue(Mutable, ValueAtIndex);
    ++*(*(*(a1 + 32) + 8) + 24);
LABEL_12:
    if (v9 == ++v11)
    {
      goto LABEL_13;
    }
  }

  v16 = v18;
  FigVCPTimedSampleGetPTS(ValueAtIndex, v14, v17, v15);
  if (!FigVCPTimedSampleCreateWithNULL(v17, &value))
  {
    v12 = v16 + 1;
    CFArrayAppendValue(Mutable, value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    goto LABEL_12;
  }

  __serverVideoCompositor_createReducedTimedSamplesForTracks_block_invoke_cold_1();
  if (Mutable)
  {
LABEL_14:
    CFRelease(Mutable);
  }

LABEL_18:
  if (value)
  {
    CFRelease(value);
  }
}

void __serverVideoCompositor_releaseAssignAndDeepCopySourceTimedSamplesForTrackIDs_block_invoke(uint64_t a1, const void *a2, CFArrayRef theArray)
{
  Copy = CFArrayCreateCopy(*(a1 + 32), theArray);
  CFDictionarySetValue(*(a1 + 40), a2, Copy);
  if (Copy)
  {

    CFRelease(Copy);
  }
}

void DisposeServedVCState(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v3)
      {
        v3(v2, 0, 0);
      }

      ReportErrorAndForgetPendingFrames(a1, 0xFFFFCF23);
    }

    v4 = *(a1 + 80);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 88);
    if (v5)
    {
      CFRelease(v5);
    }

    FigSimpleMutexDestroy();
    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }

    v6 = *(a1 + 16);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 16) = 0;
    }

    v7 = *(a1 + 72);
    if (v7)
    {
      os_release(v7);
    }

    free(a1);
  }
}

uint64_t VCServerCopyPerformanceDictionary(uint64_t a1, CFDictionaryRef *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    keys = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    *values = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = *MEMORY[0x1E695E480];
    if (*(a1 + 64) <= 0)
    {
      *a2 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, values, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    else
    {
      valuePtr = (*(a1 + 40) / 1000000.0);
      *&keys = @"MinProcessingTime";
      values[0] = CFNumberCreate(v4, kCFNumberDoubleType, &valuePtr);
      valuePtr = (*(a1 + 48) / 1000000.0);
      *(&keys + 1) = @"MaxProcessingTime";
      values[1] = CFNumberCreate(v4, kCFNumberDoubleType, &valuePtr);
      valuePtr = (*(a1 + 56) / (*(a1 + 64) * 1000000.0));
      *&v21 = @"AverageProcessingTime";
      *&v11 = CFNumberCreate(v4, kCFNumberDoubleType, &valuePtr);
      v5 = CFDictionaryCreate(v4, &keys, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v6 = 0;
      *a2 = v5;
      do
      {
        v7 = values[v6];
        if (v7)
        {
          CFRelease(v7);
        }

        ++v6;
      }

      while (v6 != 3);
    }

    return 0;
  }

  else
  {
    VCServerCopyPerformanceDictionary_cold_1(&keys);
    return keys;
  }
}

uint64_t VCServerRenderFrameFromWindowWithSourceSampleSeed(uint64_t a1, const __CFDictionary *a2, const __CFDictionary *a3, uint64_t a4, __int128 *a5, const void *a6, int a7)
{
  if (shouldUseIncrementalUpdateForRenderFrameForWindow_once != -1)
  {
    VCServerRenderFrameFromWindowWithSourceSampleSeed_cold_1();
  }

  v14 = *(a1 + 24);
  v18 = *a5;
  v19 = *(a5 + 2);
  if (shouldUseIncrementalUpdateForRenderFrameForWindow_useIncrementalUpdate)
  {
    RenderFrameFromWindowMessage = FigVideoCompositionServerCreateRenderFrameFromWindowMessage(v14, a2, a3, a4, &v18, a6);
  }

  else
  {
    RenderFrameFromWindowMessage = FigVideoCompositionServerCreateIncrementalRenderFrameFromWindowMessage(v14, a2, (a1 + 80), a3, (a1 + 88), a4, &v18, a6, a7, (a1 + 96));
  }

  v16 = RenderFrameFromWindowMessage;
  AddNewPendingFrame(a1, a6);
  xpc_connection_send_message(*(a1 + 32), v16);
  FigXPCRelease();
  return 0;
}

uint64_t AddNewPendingFrame(CFMutableSetRef *a1, const void *a2)
{
  FigSimpleMutexLock();
  CFSetAddValue(*a1, a2);

  return FigSimpleMutexUnlock();
}

CFPropertyListRef __shouldUseIncrementalUpdateForRenderFrameForWindow_block_invoke()
{
  result = CFPreferencesCopyAppValue(@"RenderFrameForWindow_incremental_sample_update", @"com.apple.coremedia");
  if (result)
  {
    result = FigCFEqual();
    if (!result)
    {
      shouldUseIncrementalUpdateForRenderFrameForWindow_useIncrementalUpdate = 1;
    }
  }

  return result;
}

void ReportErrorAndForgetPendingFrames(const __CFSet **a1, unsigned int a2)
{
  v5[0] = a1;
  v5[1] = a2;
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  FigSimpleMutexLock();
  v4 = *a1;
  *a1 = Mutable;
  FigSimpleMutexUnlock();
  CFSetApplyFunction(v4, PendingFrameApplierFunction, v5);
  CFRelease(v4);
}

uint64_t PendingFrameApplierFunction(uint64_t a1, unsigned int *a2)
{
  v3 = *(*a2 + 16);
  v4 = a2[2];
  VTable = CMBaseObjectGetVTable();
  v7 = *(VTable + 16);
  result = VTable + 16;
  v8 = *(v7 + 40);
  if (v8)
  {

    return v8(v3, a1, v4, 0);
  }

  return result;
}

uint64_t LookupAndRetainVCByObjectIDForConnection(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v3 = FigXPCServerLookupAndRetainAssociatedObject();
  if (v3)
  {
    return v3;
  }

  LookupAndRetainVCByObjectIDForConnection_cold_1(&v6);
  return v6;
}

uint64_t OUTLINED_FUNCTION_9_88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return FigRemote_CreateSerializedAtomDataForSampleBuffer();
}

xpc_object_t OUTLINED_FUNCTION_10_82()
{

  return xpc_array_create(0, 0);
}

uint64_t OUTLINED_FUNCTION_13_63(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return LookupAndRetainVCByObjectIDForConnection(v11, a1, va);
}

uint64_t FigUpstreamMonitor_CreateOrRetainSharedMonitor(unsigned __int8 a1)
{
  v4 = 0;
  if (_MergedGlobals_149 != -1)
  {
    FigUpstreamMonitor_CreateOrRetainSharedMonitor_cold_1();
  }

  v3[0] = qword_1ED4CBCF8;
  v3[1] = &v4;
  v3[2] = a1;
  dispatch_sync_f(qword_1ED4CBCF8, v3, createOrRetainSharedMonitor);
  return v4;
}

void createOrRetainSharedMonitor(uint64_t a1)
{
  context = dispatch_get_context(*a1);
  v3 = *(a1 + 8);
  v4 = *context;
  *v3 = *context;
  if (v4)
  {
    goto LABEL_11;
  }

  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  v6 = malloc_type_calloc(1uLL, 0x38uLL, 0xA004049E9B67CuLL);
  if (v6)
  {
    if (FigUpstreamMonitor_CreateGuts_functionsOnce != -1)
    {
      createOrRetainSharedMonitor_cold_1();
    }

    v7 = sUpstreamMonitorUsingCoreAUC == 1 ? &FigUpstreamMonitor_CreateGuts_constRealFunctions : &FigUpstreamMonitor_CreateGuts_constStubFunctions;
    v8 = v7[1];
    *(v6 + 8) = *v7;
    *(v6 + 24) = v8;
    *(v6 + 5) = *(v7 + 4);
    if (!CMNotificationCenterRegisterForBarrierSupport())
    {
      *(v6 + 6) = DefaultLocalCenter;
      if (!(*(v6 + 1))(FigUpstreamMonitorProtectionStatusChangedCallback, v6, 0, v6))
      {
        CMNotificationCenterAddListener();
        *context = v6;
        *v3 = v6;
LABEL_11:
        ++context[2];
        return;
      }
    }
  }

  FigUpstreamMonitor_DisposeGuts(v6);
  *context = 0;
  *v3 = 0;
}

void FigUpstreamMonitor_ReleaseSharedMonitor(uint64_t a1)
{
  if (a1)
  {
    if (_MergedGlobals_149 != -1)
    {
      FigUpstreamMonitor_CreateOrRetainSharedMonitor_cold_1();
    }

    v2[0] = qword_1ED4CBCF8;
    v2[1] = a1;
    dispatch_sync_f(qword_1ED4CBCF8, v2, releaseSharedMonitor);
  }
}

void releaseSharedMonitor(uint64_t a1)
{
  context = dispatch_get_context(*a1);
  v3 = context[2] - 1;
  context[2] = v3;
  if (!v3)
  {
    v4 = context;
    FigUpstreamMonitor_DisposeGuts(*(a1 + 8));
    *v4 = 0;
  }
}

void getUpstreamMonitorQueueCreateQueue(NSObject **a1)
{
  v2 = dispatch_queue_create(0, 0);
  *a1 = v2;

  dispatch_set_context(v2, &getUpstreamMonitorQueueCreateQueue_queue_context);
}

uint64_t FigHDCPMonitorGetSecureStatusTypeAndIsDeterminedForDisplays(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _BYTE *a5, int *a6)
{
  *a3 = 2;
  *a5 = 1;
  *a4 = 0;
  v6 = FigHDCPMonitorGetSecureStatusTypeAndIsDeterminedForDisplays_statusSeed++;
  *a6 = v6;
  return 0;
}

void FigUpstreamMonitorProtectionStatusChangedCallback(uint64_t a1)
{
  v2 = FigUpstreamMonitor_CreateOrRetainSharedMonitor(0);
  if (v2 == a1)
  {
    CMNotificationCenterPostNotification();
  }

  FigUpstreamMonitor_ReleaseSharedMonitor(v2);
}

void FigUpstreamMonitorExternalProtectionStateChangedCallback(uint64_t a1, uint64_t a2)
{
  v3 = FigUpstreamMonitor_CreateOrRetainSharedMonitor(0);
  if (v3 == a2)
  {
    CMNotificationCenterPostNotification();
  }

  FigUpstreamMonitor_ReleaseSharedMonitor(v3);
}

void FigUpstreamMonitor_DisposeGuts(CFTypeRef *a1)
{
  if (a1)
  {
    if (a1[6])
    {
      CMNotificationCenterRemoveListener();
      CMNotificationCenterBarrier();
      CMNotificationCenterUnregisterForBarrierSupport();
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    free(a1);
  }
}

uint64_t FigVTTStringifyFigGeometryDimensionAndAppend(__CFString *a1, uint64_t a2, int a3)
{
  if (a1)
  {
    figTTMLStringifyFigGeometryDimensionAndAppend(a1, a2, a3);
    return 0;
  }

  else
  {
    FigVTTStringifyFigGeometryDimensionAndAppend_cold_1(&v4);
    return v4;
  }
}

uint64_t FigVTTStringifyFigGeometryPointAndAppend(__CFString *a1, uint64_t *a2)
{
  if (a1)
  {
    figTTMLStringifyFigGeometryDimensionAndAppend(a1, *a2, a2[1]);
    CFStringAppend(a1, @",");
    figTTMLStringifyFigGeometryDimensionAndAppend(a1, a2[2], a2[3]);
    return 0;
  }

  else
  {
    FigVTTStringifyFigGeometryPointAndAppend_cold_1(&v5);
    return v5;
  }
}

CFStringRef FigVTTCopyCMTimeAsTimeStamp(CMTime *a1)
{
  if ((a1->flags & 0x1D) == 1)
  {
    time = *a1;
    CMTimeConvertScale(&v6, &time, 1000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v1 = v6.value - 3600000 * (v6.value / 3600000);
    v2 = v1 / 60000;
    v3 = v1 - 60000 * (v1 / 60000);
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d:%02d:%02d.%03d", v6.value / 3600000, v2, v3 / 1000, v3 + 4294966296 * (v3 / 1000));
  }

  else
  {
    FigVTTCopyCMTimeAsTimeStamp_cold_1(&v6);
    return v6.value;
  }
}

CFStringRef FigVTTCopyRGBAColorAsColorSyntax(float32x4_t a1, float32_t a2, float a3, float a4)
{
  v4 = 0;
  LODWORD(v5) = 0;
  a1.f32[1] = a2;
  a1.i64[1] = __PAIR64__(LODWORD(a4), LODWORD(a3));
  v11 = *MEMORY[0x1E69E9840];
  v10 = vcvtq_s32_f32(vmulq_f32(a1, vdupq_n_s32(0x437F0000u)));
  do
  {
    v6 = v10.i32[v4] & ~(v10.i32[v4] >> 31);
    if (v6 >= 255)
    {
      v6 = 255;
    }

    v5 = (v6 | (v5 << 8));
    v10.i32[v4++] = v6;
  }

  while (v4 != 4);
  MEMORY[0x19A8D3660](&initRGBANamedCSSColorMaps, figVTTInitRGBANamedCSSColorMaps);
  Value = CFDictionaryGetValue(sRGBAToNamedCSSColorMap, v5);
  if (!Value)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"rgba(%d,%d,%d,%0.2f)", v10.u32[0], v10.u32[1], v10.u32[2], v10.i32[3] / *"");
  }

  v8 = Value;
  CFRetain(Value);
  return v8;
}

CFStringRef FigVTTCGColorCopyAsVTTColorSyntax(CGColor *a1)
{
  ColorSpace = CGColorGetColorSpace(a1);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
  {
    FigVTTCGColorCopyAsVTTColorSyntax_cold_1();
    return 0;
  }

  if (CGColorGetNumberOfComponents(a1) != 4)
  {
    FigVTTCGColorCopyAsVTTColorSyntax_cold_2();
    return 0;
  }

  Components = CGColorGetComponents(a1);
  *v4.i64 = *Components;
  v4.f32[0] = *Components;
  v5 = Components[1];
  v6 = Components[2];
  v7 = Components[3];

  return FigVTTCopyRGBAColorAsColorSyntax(v4, v5, v6, v7);
}

uint64_t FigVTTCGColorCopyVTTColorAttributeValueAsCSSColorSyntax(const __CFString *a1, void *a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFStringGetTypeID()))
  {
    if (CFStringFind(a1, @"rgba("), 1uLL.location == -1 && (MEMORY[0x19A8D3660](&initRGBANamedCSSColorMaps, figVTTInitRGBANamedCSSColorMaps), !FigCFDictionaryGetInt32IfPresent()))
    {
      v5 = 0;
    }

    else
    {
      v5 = CFRetain(a1);
    }

    *a2 = v5;
  }

  else
  {
    FigVTTCGColorCopyVTTColorAttributeValueAsCSSColorSyntax_cold_1();
  }

  return 0;
}

uint64_t FigVTTDocumentWriterMapPropertyToAttribute_BackgroundColor(CGColor *a1, __CFDictionary *a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CGColorGetTypeID()))
  {
    v5 = FigVTTCGColorCopyAsVTTColorSyntax(a1);
    if (v5)
    {
      v6 = v5;
      CFDictionarySetValue(a2, @"https://www.w3.org/Style/CSS/ background-color", v5);
      CFRelease(v6);
      return 0;
    }

    else
    {
      FigVTTDocumentWriterMapPropertyToAttribute_BackgroundColor_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    FigVTTDocumentWriterMapPropertyToAttribute_BackgroundColor_cold_2(&v9);
    return v9;
  }
}

double FigVTTDocumentWriterMapPropertyToAttribute_WritingMode(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFStringGetTypeID()))
  {
    FigVTTDocumentWriterMapPropertyToAttribute_WritingMode_cold_1(&v7);
    return result;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    v5 = kFigVTT_AttributeValue_css_writingMode_horizontalTopToBottom;
LABEL_6:
    CFDictionarySetValue(a2, @"https://www.w3.org/Style/CSS/ writing-mode", *v5);
    return result;
  }

  if (FigCFEqual())
  {
    v5 = kFigVTT_AttributeValue_css_writingMode_verticalRightToLeft;
    goto LABEL_6;
  }

  if (FigCFEqual())
  {
    v5 = kFigVTT_AttributeValue_css_writingMode_verticalLeftToRight;
    goto LABEL_6;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294949413, "(Fig)", 714, v2);
}

uint64_t FigVTTDocumentWriterMapPropertyToAttribute_TextColor(CGColor *a1, __CFDictionary *a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CGColorGetTypeID()))
  {
    v5 = FigVTTCGColorCopyAsVTTColorSyntax(a1);
    if (v5)
    {
      v6 = v5;
      CFDictionarySetValue(a2, @"https://www.w3.org/Style/CSS/ color", v5);
      CFRelease(v6);
      return 0;
    }

    else
    {
      FigVTTDocumentWriterMapPropertyToAttribute_TextColor_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    FigVTTDocumentWriterMapPropertyToAttribute_TextColor_cold_2(&v9);
    return v9;
  }
}

double FigVTTDocumentWriterMapPropertyToAttribute_FontWeight(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v5 = CFGetTypeID(a1), v5 != CFStringGetTypeID()))
  {
    FigVTTDocumentWriterMapPropertyToAttribute_FontWeight_cold_1(&v8);
    return result;
  }

  if (CFEqual(a1, *MEMORY[0x1E69614B0]))
  {
    v6 = kFigVTT_AttributeValue_css_fontWeight_normal;
LABEL_7:
    CFDictionarySetValue(a2, @"https://www.w3.org/Style/CSS/ font-weight", *v6);
    return result;
  }

  if (CFEqual(a1, *MEMORY[0x1E69614A8]))
  {
    v6 = kFigVTT_AttributeValue_css_fontWeight_bold;
    goto LABEL_7;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294949413, "(Fig)", 751, v2);
}

double FigVTTDocumentWriterMapPropertyToAttribute_FontStyle(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v5 = CFGetTypeID(a1), v5 != CFStringGetTypeID()))
  {
    FigVTTDocumentWriterMapPropertyToAttribute_FontStyle_cold_1(&v8);
    return result;
  }

  if (CFEqual(a1, *MEMORY[0x1E6961490]))
  {
    v6 = kFigVTT_AttributeValue_css_fontStyle_normal;
LABEL_9:
    CFDictionarySetValue(a2, @"https://www.w3.org/Style/CSS/ font-style", *v6);
    return result;
  }

  if (CFEqual(a1, *MEMORY[0x1E6961488]))
  {
    v6 = kFigVTT_AttributeValue_css_fontStyle_italic;
    goto LABEL_9;
  }

  if (CFEqual(a1, *MEMORY[0x1E6961498]))
  {
    v6 = kFigVTT_AttributeValue_css_fontStyle_oblique;
    goto LABEL_9;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294949413, "(Fig)", 771, v2);
}

uint64_t FigVTTDocumentWriterMapPropertyToAttribute_Decoration(const __CFNumber *a1, __CFDictionary *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
    v5 = valuePtr;
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    if (Mutable)
    {
      v7 = Mutable;
      v8 = 0;
      v9 = 1;
      v12[0] = 1;
      v13 = @"underline";
      v14 = 2;
      v15 = @"line-through";
      v16 = 4;
      v17 = @"overline";
      do
      {
        if ((v12[v8] & v5) != 0)
        {
          if (!v9)
          {
            CFStringAppend(v7, @" ");
          }

          CFStringAppend(v7, *&v12[v8 + 2]);
          v9 = 0;
        }

        v8 += 4;
      }

      while (v8 != 12);
      if (!CFStringGetLength(v7))
      {
        CFStringAppend(v7, @"none");
      }

      CFDictionarySetValue(a2, @"https://www.w3.org/Style/CSS/ text-decoration", v7);
      CFRelease(v7);
    }

    else
    {
      FigVTTDocumentWriterMapPropertyToAttribute_Decoration_cold_1(v12, a2);
    }

    return 0;
  }

  else
  {
    FigVTTDocumentWriterMapPropertyToAttribute_Decoration_cold_2(v12);
    return v12[0];
  }
}

double FigVTTDocumentWriterMapPropertyToAttribute_TextAlign(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFStringGetTypeID()))
  {
    FigVTTDocumentWriterMapPropertyToAttribute_TextAlign_cold_1(&v7);
    return result;
  }

  if (FigCFEqual())
  {
    v5 = kFigVTT_AttributeValue_css_textAlign_start;
LABEL_13:
    CFDictionarySetValue(a2, @"https://www.w3.org/Style/CSS/ text-align", *v5);
    return result;
  }

  if (FigCFEqual())
  {
    v5 = kFigVTT_AttributeValue_css_textAlign_end;
    goto LABEL_13;
  }

  if (FigCFEqual())
  {
    v5 = kFigVTT_AttributeValue_css_textAlign_center;
    goto LABEL_13;
  }

  if (FigCFEqual())
  {
    v5 = kFigVTT_AttributeValue_css_textAlign_left;
    goto LABEL_13;
  }

  if (FigCFEqual())
  {
    v5 = kFigVTT_AttributeValue_css_textAlign_right;
    goto LABEL_13;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294949413, "(Fig)", 856, v2);
}

uint64_t FigVTTDocumentWriterMapPropertyToAttribute_FontFamily(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v3 = CFGetTypeID(a1), v3 == FigCaptionFontFamilyNameListGetTypeID()))
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    if (Mutable)
    {
      Count = FigCaptionFontFamilyNameListGetCount();
      if (!Count)
      {
LABEL_11:
        CFDictionarySetValue(a2, @"https://www.w3.org/Style/CSS/ font-family", Mutable);
        v10 = 0;
        goto LABEL_12;
      }

      v6 = Count;
      v7 = 0;
      while (1)
      {
        v8 = FigCaptionFontFamilyNameListCopyFamilyKindAndNameAtIndex();
        if (v8)
        {
          v10 = v8;
          goto LABEL_12;
        }

        if (v7)
        {
          CFStringAppend(Mutable, @",");
        }

        MEMORY[0x19A8D3660](&figVTTDocumentWriter_getVTTFontFamilyName_once, initMapFromFigCaptionFontFamilyToVTTFontFamily);
        Value = CFDictionaryGetValue(sMapFromFigCaptionFontFamilyToVTTFontFamily, 0);
        if (!Value)
        {
          break;
        }

        CFStringAppend(Mutable, Value);
        if (v6 == ++v7)
        {
          goto LABEL_11;
        }
      }

      FigVTTDocumentWriterMapPropertyToAttribute_FontFamily_cold_1(&v12);
    }

    else
    {
      FigVTTDocumentWriterMapPropertyToAttribute_FontFamily_cold_2(&v12);
    }
  }

  else
  {
    FigVTTDocumentWriterMapPropertyToAttribute_FontFamily_cold_3(&v12);
    Mutable = 0;
  }

  v10 = v12;
LABEL_12:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v10;
}

uint64_t FigVTTDocumentWriterMapPropertyToAttribute_FontSize(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v3 = CFGetTypeID(a1), v3 == CFDictionaryGetTypeID()))
  {
    FigGeometrySizeMakeFromDictionary();
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    v5 = FigGeometryDimensionEqualToDimension();
    figTTMLStringifyFigGeometryDimensionAndAppend(Mutable, 0, 0);
    if (!v5)
    {
      CFStringAppend(Mutable, @" ");
      figTTMLStringifyFigGeometryDimensionAndAppend(Mutable, 0, 0);
    }

    CFDictionarySetValue(a2, @"https://www.w3.org/Style/CSS/ font-size", Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return 0;
  }

  else
  {
    FigVTTDocumentWriterMapPropertyToAttribute_FontSize_cold_1(&v7);
    return v7;
  }
}

uint64_t FigVTTDocumentWriterMapAttributeToCSS_BackgroundColor(const __CFString *a1, __CFDictionary *a2)
{
  v7 = 0;
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFStringGetTypeID()))
  {
    FigVTTCGColorCopyVTTColorAttributeValueAsCSSColorSyntax(a1, &v7);
    v5 = v7;
    if (v7)
    {
      CFDictionarySetValue(a2, @"name", @"background-color");
      CFDictionarySetValue(a2, @"value", v5);
      CFRelease(v5);
    }

    return 0;
  }

  else
  {
    FigVTTDocumentWriterMapAttributeToCSS_BackgroundColor_cold_1(&v8);
    return v8;
  }
}

uint64_t FigVTTDocumentWriterMapAttributeToCSS_WritingMode(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFStringGetTypeID()))
  {
    FigVTTDocumentWriterMapAttributeToCSS_WritingMode_cold_1(&v8);
    return v8;
  }

  if (CFEqual(a1, @"horizontal-tb"))
  {
    v5 = kFigVTT_PropertyValue_css_writingMode_horizontalTopToBottom;
  }

  else if (CFEqual(a1, @"vertical-lr"))
  {
    v5 = kFigVTT_PropertyValue_css_writingMode_verticalLeftToRight;
  }

  else
  {
    result = CFEqual(a1, @"vertical-rl");
    if (!result)
    {
      return result;
    }

    v5 = kFigVTT_PropertyValue_css_writingMode_verticalRightToLeft;
  }

  v7 = *v5;
  if (*v5)
  {
    CFDictionarySetValue(a2, @"name", @"writing-mode");
    CFDictionarySetValue(a2, @"value", v7);
  }

  return 0;
}

uint64_t FigVTTDocumentWriterMapAttributeToCSS_TextColor(const __CFString *a1, __CFDictionary *a2)
{
  v7 = 0;
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFStringGetTypeID()))
  {
    FigVTTCGColorCopyVTTColorAttributeValueAsCSSColorSyntax(a1, &v7);
    v5 = v7;
    if (v7)
    {
      CFDictionarySetValue(a2, @"name", @"color");
      CFDictionarySetValue(a2, @"value", v5);
      CFRelease(v5);
    }

    return 0;
  }

  else
  {
    FigVTTDocumentWriterMapAttributeToCSS_TextColor_cold_1(&v8);
    return v8;
  }
}

uint64_t FigVTTDocumentWriterMapAttributeToCSS_FontWeight(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFStringGetTypeID()))
  {
    FigVTTDocumentWriterMapAttributeToCSS_FontWeight_cold_1(&v8);
    return v8;
  }

  if (CFEqual(a1, @"normal"))
  {
    v5 = kFigVTT_PropertyValue_css_fontWeight_normal;
  }

  else
  {
    result = CFEqual(a1, @"bold");
    if (!result)
    {
      return result;
    }

    v5 = kFigVTT_PropertyValue_css_fontWeight_bold;
  }

  v7 = *v5;
  if (*v5)
  {
    CFDictionarySetValue(a2, @"name", @"font-weight");
    CFDictionarySetValue(a2, @"value", v7);
  }

  return 0;
}

uint64_t FigVTTDocumentWriterMapAttributeToCSS_FontStyle(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFStringGetTypeID()))
  {
    FigVTTDocumentWriterMapAttributeToCSS_FontStyle_cold_1(&v8);
    return v8;
  }

  if (CFEqual(a1, @"normal"))
  {
    v5 = kFigVTT_PropertyValue_css_fontStyle_normal;
  }

  else if (CFEqual(a1, @"italic"))
  {
    v5 = kFigVTT_PropertyValue_css_fontStyle_italic;
  }

  else
  {
    result = CFEqual(a1, @"oblique");
    if (!result)
    {
      return result;
    }

    v5 = kFigVTT_PropertyValue_css_fontStyle_oblique;
  }

  v7 = *v5;
  if (*v5)
  {
    CFDictionarySetValue(a2, @"name", @"font-style");
    CFDictionarySetValue(a2, @"value", v7);
  }

  return 0;
}

uint64_t FigVTTDocumentWriterMapAttributeToCSS_Decoration(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFStringGetTypeID()))
  {
    FigVTTDocumentWriterMapAttributeToCSS_Decoration_cold_1(&v8);
    return v8;
  }

  if (CFEqual(a1, @"underline"))
  {
    v5 = kFigVTT_PropertyValue_css_textDecoration_underline;
  }

  else if (CFEqual(a1, @"none"))
  {
    v5 = kFigVTT_PropertyValue_css_textDecoration_none;
  }

  else if (CFEqual(a1, @"overline"))
  {
    v5 = kFigVTT_PropertyValue_css_textDecoration_overline;
  }

  else
  {
    result = CFEqual(a1, @"line-through");
    if (!result)
    {
      return result;
    }

    v5 = kFigVTT_PropertyValue_css_textDecoration_lineThrough;
  }

  v7 = *v5;
  if (*v5)
  {
    CFDictionarySetValue(a2, @"name", @"text-decoration");
    CFDictionarySetValue(a2, @"value", v7);
  }

  return 0;
}

uint64_t FigVTTDocumentWriterMapAttributeToCSS_TextAlign(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFStringGetTypeID()))
  {
    FigVTTDocumentWriterMapAttributeToCSS_TextAlign_cold_1(&v8);
    return v8;
  }

  if (CFEqual(a1, @"left"))
  {
    v5 = kFigVTT_PropertyValue_css_textAlign_left;
  }

  else if (CFEqual(a1, @"right"))
  {
    v5 = kFigVTT_PropertyValue_css_textAlign_right;
  }

  else if (CFEqual(a1, @"center"))
  {
    v5 = kFigVTT_PropertyValue_css_textAlign_center;
  }

  else if (CFEqual(a1, @"start"))
  {
    v5 = kFigVTT_PropertyValue_css_textAlign_start;
  }

  else
  {
    result = CFEqual(a1, @"end");
    if (!result)
    {
      return result;
    }

    v5 = kFigVTT_PropertyValue_css_textAlign_end;
  }

  v7 = *v5;
  if (*v5)
  {
    CFDictionarySetValue(a2, @"name", @"text-align");
    CFDictionarySetValue(a2, @"value", v7);
  }

  return 0;
}

uint64_t FigVTTDocumentWriterMapAttributeToCSS_FontFamily(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFStringGetTypeID()))
  {
    CFDictionarySetValue(a2, @"name", @"font-family");
    CFDictionarySetValue(a2, @"value", a1);
    return 0;
  }

  else
  {
    FigVTTDocumentWriterMapAttributeToCSS_FontFamily_cold_1(&v6);
    return v6;
  }
}

uint64_t FigVTTDocumentWriterMapAttributeToCSS_FontSize(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFStringGetTypeID()))
  {
    CFDictionarySetValue(a2, @"name", @"font-size");
    CFDictionarySetValue(a2, @"value", a1);
    return 0;
  }

  else
  {
    FigVTTDocumentWriterMapAttributeToCSS_FontSize_cold_1(&v6);
    return v6;
  }
}

uint64_t figVTTInitRGBANamedCSSColorMaps()
{
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  v3 = CFDictionaryCreateMutable(v0, 0, MEMORY[0x1E695E9D8], v1);
  CFDictionarySetValue(Mutable, 0xF0F8FFFFLL, @"aliceblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFAEBD7FFLL, @"antiquewhite");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFFFFF, @"aqua");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x7FFFD4FF, @"aquamarine");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xF0FFFFFFLL, @"azure");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xF5F5DCFFLL, @"beige");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFE4C4FFLL, @"bisque");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFF, @"black");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFEBCDFFLL, @"blanchedalmond");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFFF, @"blue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x8A2BE2FFLL, @"blueviolet");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xA52A2AFFLL, @"brown");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xDEB887FFLL, @"burlywood");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x5F9EA0FF, @"cadetblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x7FFF00FF, @"chartreuse");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xD2691EFFLL, @"chocolate");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFF7F50FFLL, @"coral");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x6495EDFF, @"cornflowerblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFF8DCFFLL, @"cornsilk");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xDC143CFFLL, @"crimson");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFFFFF, @"cyan");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x8BFF, @"darkblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x8B8BFF, @"darkcyan");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xB8860BFFLL, @"darkgoldenrod");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xA9A9A9FFLL, @"darkgray");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xA9A9A9FFLL, @"darkgrey");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x6400FF, @"darkgreen");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xBDB76BFFLL, @"darkkhaki");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x8B008BFFLL, @"darkmagenta");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x556B2FFF, @"darkolivegreen");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFF8C00FFLL, @"darkorange");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x9932CCFFLL, @"darkorchid");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x8B0000FFLL, @"darkred");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xE9967AFFLL, @"darksalmon");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x8FBC8FFFLL, @"darkseagreen");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x483D8BFF, @"darkslateblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x2F4F4FFF, @"darkslategray");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x2F4F4FFF, @"darkslategrey");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xCED1FF, @"darkturquoise");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x9400D3FFLL, @"darkviolet");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFF1493FFLL, @"deeppink");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xBFFFFF, @"deepskyblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x696969FF, @"dimgray");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x696969FF, @"dimgrey");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x1E90FFFF, @"dodgerblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xB22222FFLL, @"firebrick");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFFAF0FFLL, @"floralwhite");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x228B22FF, @"forestgreen");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFF00FFFFLL, @"fuchsia");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xDCDCDCFFLL, @"gainsboro");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xF8F8FFFFLL, @"ghostwhite");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFD700FFLL, @"gold");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xDAA520FFLL, @"goldenrod");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x808080FFLL, @"gray");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x808080FFLL, @"grey");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x8000FF, @"green");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xADFF2FFFLL, @"greenyellow");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xF0FFF0FFLL, @"honeydew");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFF69B4FFLL, @"hotpink");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xCD5C5CFFLL, @"indianred");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x4B0082FF, @"indigo");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFFFF0FFLL, @"ivory");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xF0E68CFFLL, @"khaki");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xE6E6FAFFLL, @"lavender");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFF0F5FFLL, @"lavenderblush");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x7CFC00FF, @"lawngreen");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFFACDFFLL, @"lemonchiffon");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xADD8E6FFLL, @"lightblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xF08080FFLL, @"lightcoral");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xE0FFFFFFLL, @"lightcyan");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFAFAD2FFLL, @"lightgoldenrodyellow");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xD3D3D3FFLL, @"lightgray");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xD3D3D3FFLL, @"lightgrey");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x90EE90FFLL, @"lightgreen");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFB6C1FFLL, @"lightpink");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFA07AFFLL, @"lightsalmon");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x20B2AAFF, @"lightseagreen");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x87CEFAFFLL, @"lightskyblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x778899FF, @"lightslategray");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x778899FF, @"lightslategrey");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xB0C4DEFFLL, @"lightsteelblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFFFE0FFLL, @"lightyellow");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFF00FF, @"lime");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x32CD32FF, @"limegreen");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFAF0E6FFLL, @"linen");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFF00FFFFLL, @"magenta");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x800000FFLL, @"maroon");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x66CDAAFF, @"mediumaquamarine");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xCDFF, @"mediumblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xBA55D3FFLL, @"mediumorchid");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x9370DBFFLL, @"mediumpurple");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x3CB371FF, @"mediumseagreen");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x7B68EEFF, @"mediumslateblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFA9AFF, @"mediumspringgreen");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x48D1CCFF, @"mediumturquoise");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xC71585FFLL, @"mediumvioletred");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x191970FF, @"midnightblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xF5FFFAFFLL, @"mintcream");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFE4E1FFLL, @"mistyrose");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFE4B5FFLL, @"moccasin");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFDEADFFLL, @"navajowhite");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x80FF, @"navy");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFDF5E6FFLL, @"oldlace");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x808000FFLL, @"olive");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x6B8E23FF, @"olivedrab");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFA500FFLL, @"orange");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFF4500FFLL, @"orangered");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xDA70D6FFLL, @"orchid");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xEEE8AAFFLL, @"palegoldenrod");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x98FB98FFLL, @"palegreen");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xAFEEEEFFLL, @"paleturquoise");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xDB7093FFLL, @"palevioletred");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFEFD5FFLL, @"papayawhip");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFDAB9FFLL, @"peachpuff");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xCD853FFFLL, @"peru");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFC0CBFFLL, @"pink");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xDDA0DDFFLL, @"plum");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xB0E0E6FFLL, @"powderblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x800080FFLL, @"purple");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x663399FF, @"rebeccapurple");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFF0000FFLL, @"red");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xBC8F8FFFLL, @"rosybrown");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x4169E1FF, @"royalblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x8B4513FFLL, @"saddlebrown");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFA8072FFLL, @"salmon");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xF4A460FFLL, @"sandybrown");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x2E8B57FF, @"seagreen");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFF5EEFFLL, @"seashell");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xA0522DFFLL, @"sienna");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xC0C0C0FFLL, @"silver");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x87CEEBFFLL, @"skyblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x6A5ACDFF, @"slateblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x708090FF, @"slategray");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x708090FF, @"slategrey");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFFAFAFFLL, @"snow");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFF7FFF, @"springgreen");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x4682B4FF, @"steelblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xD2B48CFFLL, @"tan");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x8080FF, @"teal");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xD8BFD8FFLL, @"thistle");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFF6347FFLL, @"tomato");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0, @"transparent");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x40E0D0FF, @"turquoise");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xEE82EEFFLL, @"violet");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xF5DEB3FFLL, @"wheat");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFFFFFFFLL, @"white");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xF5F5F5FFLL, @"whitesmoke");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFFF00FFLL, @"yellow");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x9ACD32FFLL, @"yellowgreen");
  result = FigCFDictionarySetInt32();
  sRGBAToNamedCSSColorMap = Mutable;
  sNamedCSSColorToRGBAMap = v3;
  return result;
}

void initMapFromFigCaptionFontFamilyToVTTFontFamily()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961190], @"default");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69611D0], @"serif");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69611C8], @"sans-serif");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69611A0], @"monospace");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961188], @"cursive");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961198], @"fantasy");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69611C0], @"serif");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69611B8], @"sans-serif");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69611B0], @"monospace");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69611A8], @"monospace");
  sMapFromFigCaptionFontFamilyToVTTFontFamily = Mutable;
}

CFTypeRef _FigURLStorageSessionNSCopyGlobalSession(uint64_t a1)
{
  if (sCreateGlobalFigURLStorageSessionNSTypeOnce != -1)
  {
    _FigURLStorageSessionNSCopyGlobalSession_cold_1();
  }

  result = sGlobalFigURLStorageSessionNS;
  if (sGlobalFigURLStorageSessionNS)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t _FigURLStorageSessionNSCreate(CFDictionaryRef theDict, uint64_t *a2)
{
  if (a2)
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"FUSS_AdditionalHTTPCookies");
    }

    else
    {
      Value = 0;
    }

    v5 = objc_autoreleasePoolPush();
    v6 = [MEMORY[0x1E695AC80] ephemeralSessionConfiguration];
    v7 = *MEMORY[0x1E695E4D0];
    if (v7 == [(__CFDictionary *)theDict valueForKey:0x1F0B40418]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v6 set_alwaysPerformDefaultTrustEvaluation:1];
    }

    [v6 setMultipathServiceType:0];
    if (v7 == [(__CFDictionary *)theDict valueForKey:0x1F0B403F8])
    {
      [v6 setMultipathServiceType:100];
    }

    [v6 set_multipathAlternatePort:5228];
    if (_os_feature_enabled_impl())
    {
      [v6 set_usesNWLoader:1];
    }

    [v6 set_alternativeServicesStorage:{objc_msgSend(MEMORY[0x1E695ACE8], "sharedPersistentStore")}];
    [v6 setURLCache:0];
    [v6 setHTTPCookieAcceptPolicy:0];
    v8 = [(__CFDictionary *)theDict valueForKey:0x1F0B40378];
    if (v8)
    {
      v9 = v8;
      [v6 set_sourceApplicationBundleIdentifier:v8];
    }

    else
    {
      v9 = [(__CFDictionary *)theDict valueForKey:0x1F0B40358];
      if (v9)
      {
        [v6 set_sourceApplicationAuditTokenData:v9];
        v9 = FigCFHTTPCopyClientBundleIdentifier(v9);
      }
    }

    v10 = [(__CFDictionary *)theDict valueForKey:0x1F0B40398];
    v11 = [(__CFDictionary *)theDict valueForKey:0x1F0B403B8];
    if (v11)
    {
      [v6 set_atsContext:v11];
    }

    v12 = [(__CFDictionary *)theDict valueForKey:0x1F0B403D8];
    v13 = [(__CFDictionary *)theDict valueForKey:0x1F0B40338];
    if (v13 || v7 == v12)
    {
      v14 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
      v15 = v14;
      if (v7 == v12)
      {
        [v14 setObject:v7 forKey:*MEMORY[0x1E695AD50]];
      }

      if (v13)
      {
        [v15 setObject:v13 forKey:*MEMORY[0x1E695AE80]];
      }

      [v6 set_socketStreamProperties:v15];
    }

    v16 = figURLStorageSessionNSCommonCreate(*MEMORY[0x1E695E480], v6, v9, v10);
    v18 = v16;
    if (v16 && Value)
    {
      figURLStorageSessionSetCookieDescArrayForURL(v16, v17, Value);
      objc_autoreleasePoolPop(v5);
    }

    else
    {
      objc_autoreleasePoolPop(v5);
      if (!v18)
      {
        _FigURLStorageSessionNSCreate_cold_1(&v21);
        v19 = v21;
        goto LABEL_30;
      }
    }

    v19 = 0;
    *a2 = v18;
  }

  else
  {
    _FigURLStorageSessionNSCreate_cold_2(&v22);
    v10 = 0;
    v9 = 0;
    v19 = v22;
  }

LABEL_30:

  return v19;
}

uint64_t figURLStorageSessionSetCookieDescArrayForURL(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = objc_autoreleasePoolPush();
  v6 = [*DerivedStorage HTTPCookieStorage];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __figURLStorageSessionSetCookieDescArrayForURL_block_invoke;
  v8[3] = &unk_1E7499D90;
  v8[4] = v6;
  [a3 enumerateObjectsUsingBlock:v8];
  objc_autoreleasePoolPop(v5);
  return 0;
}

void figURLStorageSessionFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v2 = DerivedStorage;
    v3 = objc_autoreleasePoolPush();

    *v2 = 0;
    v2[1] = 0;

    v2[2] = 0;

    objc_autoreleasePoolPop(v3);
  }
}

uint64_t figURLStorageSessionSetCredentialPlist(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    figURLStorageSessionSetCredentialPlist_cold_4(&v11);
    return v11;
  }

  v4 = DerivedStorage;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    figURLStorageSessionSetCredentialPlist_cold_1(&v11);
    return v11;
  }

  v6 = objc_autoreleasePoolPush();
  if (!v4)
  {
    figURLStorageSessionSetCredentialPlist_cold_3(&v11);
LABEL_13:
    v8 = v11;
    goto LABEL_6;
  }

  v7 = [*v4 URLCredentialStorage];
  if (!v7)
  {
    figURLStorageSessionSetCredentialPlist_cold_2(&v11);
    goto LABEL_13;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __figURLStorageSessionSetCredentialPlist_block_invoke;
  v10[3] = &unk_1E7499D18;
  v10[4] = v7;
  [a2 enumerateKeysAndObjectsUsingBlock:v10];
  v8 = 0;
LABEL_6:
  objc_autoreleasePoolPop(v6);
  return v8;
}

uint64_t figURLStorageSessionCreateHTTPSession(uint64_t a1, uint64_t a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = DerivedStorage;
  if (*(DerivedStorage + 8) == 0)
  {
    v16 = *DerivedStorage;

    return _FigHTTPRequestSessionCreateForNSURLSession(v16, a2, a3, a4);
  }

  else
  {
    v9 = *MEMORY[0x1E695E480];
    if (a3)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v9, 0, a3);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v11 = MutableCopy;
    if (MutableCopy)
    {
      v12 = v8[1];
      if (v12)
      {
        CFDictionarySetValue(MutableCopy, @"FHRSP_ClientBundleIdentifier", v12);
      }

      v13 = v8[2];
      if (v13)
      {
        CFDictionarySetValue(v11, @"FHRSP_ClientPersonaIdentifier", v13);
      }

      v14 = _FigHTTPRequestSessionCreateForNSURLSession(*v8, a2, v11, a4);
      CFRelease(v11);
      return v14;
    }

    else
    {
      figURLStorageSessionCreateHTTPSession_cold_1(&v17);
      return v17;
    }
  }
}

void __figURLStorageSessionCopyCookieDescArrayForURL_block_invoke(uint64_t a1, void *a2, CFIndex a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 properties];

  CFArrayInsertValueAtIndex(v4, a3, v5);
}

void __figURLStorageSessionSetCredentialPlist_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_alloc(MEMORY[0x1E695AC58]);
  FigNSHTTPInitWithSerializedObject(v6, a2);
  if (v6)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __figURLStorageSessionSetCredentialPlist_block_invoke_2;
    v7[3] = &unk_1E7499CF0;
    v7[4] = *(a1 + 32);
    v7[5] = v6;
    [a3 enumerateObjectsUsingBlock:v7];
  }
}

void *__figURLStorageSessionSetCredentialPlist_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = objc_alloc(MEMORY[0x1E695AC48]);
  result = [a2 length];
  if (result)
  {
    FigNSHTTPInitWithSerializedObject(v6, a2);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    if (a3)
    {

      return [v8 setCredential:v6 forProtectionSpace:v9];
    }

    else
    {

      return [v8 setDefaultCredential:v6 forProtectionSpace:v9];
    }
  }

  return result;
}

void *__figURLStorageSessionCopyCredentialPlistForURL_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) isEqual:?];
  if ((result & 1) == 0)
  {
    v6 = FigNSHTTPCreateSerializedObjectFromNSSecureCoding(a3);
    v7 = *(a1 + 40);

    return [v7 addObject:v6];
  }

  return result;
}

uint64_t __FigURLStorageSessionNSGetClassID_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t __figURLStorageSessionSetCookieDescArrayForURL_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E695ABF8] cookieWithProperties:a2];
  v4 = *(a1 + 32);

  return [v4 setCookie:v3];
}

uint64_t FigAudioSessionClockCreateFromClockConfigurationAndExistingFigAudioSession(uint64_t a1, uint64_t a2, _BOOL8 a3, CFTypeRef *a4)
{
  if (!FigCFDictionaryGetInt32IfPresent())
  {
    FigAudioSessionClockCreateFromClockConfigurationAndExistingFigAudioSession_cold_3(&v9);
    return v9;
  }

  if (!FigCFDictionaryGetInt32IfPresent())
  {
    FigAudioSessionClockCreateFromClockConfigurationAndExistingFigAudioSession_cold_2(&v9);
    return v9;
  }

  if (!FigAudioSessionClockConfigurationCanUseFigAudioSessionToCreateClock(a2, a3))
  {
    FigAudioSessionClockCreateFromClockConfigurationAndExistingFigAudioSession_cold_1(&v9);
    return v9;
  }

  return FigAudioSessionClockCreateForAVAudioSession(a1, 0, 0, a4);
}

uint64_t FigAudioSessionClockCreateFromClockConfigurationAndExistingAVAudioSession(uint64_t a1, uint64_t a2, void *a3, CFTypeRef *a4)
{
  v8 = objc_autoreleasePoolPush();
  if (!FigCFDictionaryGetInt32IfPresent())
  {
    FigAudioSessionClockCreateFromClockConfigurationAndExistingAVAudioSession_cold_3(&v11);
LABEL_9:
    v9 = v11;
    goto LABEL_5;
  }

  if (!FigCFDictionaryGetInt32IfPresent())
  {
    FigAudioSessionClockCreateFromClockConfigurationAndExistingAVAudioSession_cold_2(&v11);
    goto LABEL_9;
  }

  if (!FigAudioSessionClockConfigurationCanUseAVAudioSessionToCreateClock(a2, a3))
  {
    FigAudioSessionClockCreateFromClockConfigurationAndExistingAVAudioSession_cold_1(&v11);
    goto LABEL_9;
  }

  v9 = FigAudioSessionClockCreateForAVAudioSession(a1, 0, 0, a4);
LABEL_5:
  objc_autoreleasePoolPop(v8);
  return v9;
}

CFStringRef audioSessionClock_CopyDebugDesc(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"AudioSessionClock");
}

void audioSessionClock_Finalize(uint64_t a1)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage();

  *(DerivedStorage + 16) = 0;
  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }
}

double audioSessionClock_GetRate(uint64_t a1)
{
  v3 = 1.0;
  RateAndNanosecondTimeAndHostTime = audioSessionClock_getRateAndNanosecondTimeAndHostTime(a1, &v3, 0, 0);
  result = v3;
  if (RateAndNanosecondTimeAndHostTime)
  {
    return 1.0;
  }

  return result;
}

uint64_t audioSessionClock_GetAnchorTime(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v26 = **&MEMORY[0x1E6960C70];
  v25 = v26;
  hostTime = 0;
  v24 = 0;
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  RateAndNanosecondTimeAndHostTime = audioSessionClock_getRateAndNanosecondTimeAndHostTime(a1, 0, &v24, &hostTime);
  if (RateAndNanosecondTimeAndHostTime)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    if (DerivedStorage[6])
    {
      v8 = v24 - DerivedStorage[5];
      if (audioSessionClock_getMaxDiscontinuityInNanoSeconds_sCheckDefaultsWriteOnce != -1)
      {
        audioSessionClock_GetAnchorTime_cold_1();
      }

      if (audioSessionClock_getMaxDiscontinuityInNanoSeconds_sMaxDiscontinuityInNanoSeconds)
      {
        v9 = -50000000;
      }

      else
      {
        v9 = 0;
      }

      if (audioSessionClock_getMaxDiscontinuityInNanoSeconds_sMaxDiscontinuityInNanoSeconds)
      {
        v10 = 50000000;
      }

      else
      {
        v10 = 0;
      }

      v11 = DerivedStorage[5];
      if (v11 > v24)
      {
        v8 = v11 - v24;
      }

      v12 = v8 - FigHostTimeToNanoseconds();
      if (v12 < v9 || v12 > v10)
      {
        cf = 0;
        FigHostTimeToNanoseconds();
        v14 = DerivedStorage[1];
        if (v14)
        {
          v15 = *(CMBaseObjectGetVTable() + 16);
          if (v15)
          {
            v16 = *(v15 + 48);
            if (v16)
            {
              v16(v14, *MEMORY[0x1E69AFD90], *MEMORY[0x1E695E480], &cf);
            }
          }
        }

        v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        if (cf)
        {
          CFRelease(cf);
        }
      }
    }

    v19 = hostTime;
    v18 = v24;
    DerivedStorage[5] = v24;
    DerivedStorage[6] = v19;
    CMTimeMake(&v26, v18, 1000000000);
    CMClockMakeHostTimeFromSystemUnits(&v25, hostTime);
    if (a2)
    {
      *a2 = v26;
    }

    if (a3)
    {
      *a3 = v25;
    }
  }

  return RateAndNanosecondTimeAndHostTime;
}

uint64_t audioSessionClock_getRateAndNanosecondTimeAndHostTime(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2 != 0;
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  v9 = 4 * v7;
  if (a3)
  {
    v9 = (4 * v7) | 0x20;
  }

  if (a4)
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(DerivedStorage + 16);
  if (v11)
  {
    objc_msgSend_currentPresentationTime(v11);
    v12 = v17;
    v13 = v18;
    v14 = v19;
    v15 = v20;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v15 = 0;
  }

  if ((v10 & ~v12) != 0)
  {
    audioSessionClock_getRateAndNanosecondTimeAndHostTime_cold_1(&v17);
    return v17;
  }

  else
  {
    if (a2)
    {
      *a2 = v15;
    }

    if (a3)
    {
      *a3 = v14;
    }

    result = 0;
    if (a4)
    {
      *a4 = v13;
    }
  }

  return result;
}

double __audioSessionClock_getMaxDiscontinuityInNanoSeconds_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  audioSessionClock_getMaxDiscontinuityInNanoSeconds_sMaxDiscontinuityInNanoSeconds = 1;
  if (dword_1EAF17CB8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t FigVTTDocumentWriterCreateForVTT(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (!a2)
  {
    FigVTTDocumentWriterCreateForVTT_cold_2(&v16);
    return v16;
  }

  if (!a3)
  {
    FigVTTDocumentWriterCreateForVTT_cold_1(&v16);
    return v16;
  }

  FigVTTDocumentWriterGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    return v5;
  }

  v6 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 4294954510;
  }

  v8 = Mutable;
  v9 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
  if (!v9)
  {
LABEL_13:
    CFRelease(v8);
    return 4294954510;
  }

  v10 = v9;
  v11 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
  if (!v11)
  {
    CFRelease(v10);
    goto LABEL_13;
  }

  v12 = v11;
  FigVTTDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = 0;
  *DerivedStorage = CFRetain(a2);
  DerivedStorage[1] = v8;
  DerivedStorage[2] = v10;
  DerivedStorage[3] = v12;
  *a3 = 0;
  return v14;
}

void figVTTDocumentWriterForVTT_Finalize()
{
  FigVTTDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 32);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 32) = 0;
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 16) = 0;
  }

  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 24) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

void figVTTDocumentWriterForVTT_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  FigVTTDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a4)
    {
      v8 = DerivedStorage;
      if (CFEqual(a2, @"languageIdentifier"))
      {
        v9 = *(v8 + 32);
        if (v9)
        {
          v10 = CFRetain(v9);
        }

        else
        {
          v10 = 0;
        }

        *a4 = v10;
      }

      else
      {

        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954512, "(Fig)", 101, v4);
      }
    }

    else
    {
      figVTTDocumentWriterForVTT_CopyProperty_cold_1(&v11);
    }
  }

  else
  {
    figVTTDocumentWriterForVTT_CopyProperty_cold_2(&v12);
  }
}

double figVTTDocumentWriterForVTT_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  FigVTTDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (a2)
    {
      v7 = DerivedStorage;
      if (CFEqual(a2, @"languageIdentifier"))
      {
        if (a3)
        {
          v8 = CFGetTypeID(a3);
          if (v8 == CFStringGetTypeID())
          {
            v9 = *(v7 + 32);
            *(v7 + 32) = a3;
            CFRetain(a3);
            if (v9)
            {
              CFRelease(v9);
            }
          }

          else
          {
            figVTTDocumentWriterForVTT_SetProperty_cold_1(&v11);
          }
        }

        else
        {
          figVTTDocumentWriterForVTT_SetProperty_cold_2(&v11);
        }
      }

      else
      {

        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954512, "(Fig)", 130, v3);
      }
    }

    else
    {
      figVTTDocumentWriterForVTT_SetProperty_cold_3(&v11);
    }
  }

  else
  {
    figVTTDocumentWriterForVTT_SetProperty_cold_4(&v11);
  }

  return result;
}

double figVTTDocumentWriterForVTT_CreateAndAddNode(const void *a1, int a2, unsigned int a3, void **a4)
{
  FigVTTDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  if (!a2)
  {
    return figVTTDocumentWriterForVTT_CreateAndAddNode_cold_5();
  }

  if (!a3)
  {
    return figVTTDocumentWriterForVTT_CreateAndAddNode_cold_4();
  }

  if (!a4)
  {
    return figVTTDocumentWriterForVTT_CreateAndAddNode_cold_3();
  }

  if (a2 == 3)
  {
    if ((a3 & 0xFFFFFFFD) != 1)
    {
      figVTTDocumentWriterForVTT_CreateAndAddNode_cold_1(&v22);
      return result;
    }

    v11 = 24;
LABEL_14:
    v10 = *(DerivedStorage + v11);
LABEL_16:
    if (a3 <= 3)
    {
      if (a3 == 1)
      {
        v18 = CFGetAllocator(a1);
        FigVTTCueCreate(v18, &value);
        goto LABEL_29;
      }

      if (a3 != 2)
      {
        if (a3 == 3)
        {
          v12 = CFGetAllocator(a1);
          FigVTTNoteBlockCreate(v12, &value);
        }

        goto LABEL_29;
      }

LABEL_21:
      v13 = CFGetAllocator(a1);
      FigVTTMetadataCreate(v13, &value);
LABEL_29:
      CFArrayAppendValue(v10, value);
      *a4 = value;
      return result;
    }

    if (a3 - 5 >= 2)
    {
      if (a3 == 4)
      {
        v19 = CFGetAllocator(a1);
        FigVTTRegionBlockCreate(v19, &value);
      }

      else if (a3 == 7)
      {
        v14 = CFGetAllocator(a1);
        FigVTTStyleBlockCreate(v14, &value);
      }

      goto LABEL_29;
    }

    v15 = v4;
    v16 = 4294949412;
    v17 = 198;
    goto LABEL_31;
  }

  if (a2 == 2)
  {
    if (a3 > 7 || ((1 << a3) & 0x98) == 0)
    {
      v15 = v4;
      v16 = 4294949411;
      v17 = 163;
LABEL_31:

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v16, "(Fig)", v17, v15);
    }

    v11 = 16;
    goto LABEL_14;
  }

  if (a2 != 1)
  {
    v10 = 0;
    goto LABEL_16;
  }

  if (a3 == 2)
  {
    v10 = *(DerivedStorage + 8);
    goto LABEL_21;
  }

  figVTTDocumentWriterForVTT_CreateAndAddNode_cold_2(&v22);
  return result;
}

uint64_t figVTTDocumentWriterForVTT_Flush(const void *a1)
{
  FigVTTDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  if (Mutable)
  {
    v5 = Mutable;
    CFStringAppendFormat(Mutable, 0, @"%@\n", @"WEBVTT");
    FigCFArrayApplyFunction();
    CFStringAppendFormat(v5, 0, @"\n");
    FigCFArrayApplyFunction();
    FigCFArrayApplyFunction();
    v6 = FigVTTSerializerAddText(*DerivedStorage, v5);
    if (!v6)
    {
      v6 = FigVTTSerializerFlush(*DerivedStorage);
    }

    v7 = v6;
    CFRelease(v5);
  }

  else
  {
    figVTTDocumentWriterForVTT_Flush_cold_1(&v9);
    return v9;
  }

  return v7;
}

BOOL FigCFHTTPIsHTTPBasedURL(const __CFURL *a1)
{
  v1 = CFURLCopyScheme(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = 1;
  if (CFStringCompare(v1, @"http", 1uLL))
  {
    v3 = 1;
    if (CFStringCompare(v2, @"https", 1uLL))
    {
      v3 = CFStringCompare(v2, @"daap", 1uLL) == kCFCompareEqualTo;
    }
  }

  CFRelease(v2);
  return v3;
}

BOOL FigCFHTTPIsDataURL(const __CFURL *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CFURLCopyScheme(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFStringCompare(v1, @"data", 1uLL) == kCFCompareEqualTo;
  CFRelease(v2);
  return v3;
}

uint64_t FigCFHTTPCopyDeviceStrings(CFTypeRef *a1, void *a2, void *a3)
{
  v6 = *MEMORY[0x1E695E480];
  v7 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], @"/System/Library/CoreServices/SystemVersion.plist", kCFURLPOSIXPathStyle, 0);
  if (!v7)
  {
    return 4294954510;
  }

  v8 = v7;
  CFData = FigFileReadURLAndCreateCFData();
  if (CFData)
  {
    v15 = CFData;
    goto LABEL_18;
  }

  v10 = CFPropertyListCreateWithData(v6, 0, 0, 0, 0);
  if (!v10)
  {
    v15 = 4294954510;
    goto LABEL_18;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v10))
  {
    CFRelease(v10);
    v15 = 4294954516;
LABEL_18:
    CFRelease(v8);
    return v15;
  }

  CFRelease(v8);
  if (a1)
  {
    v12 = MGCopyAnswer();
    *a1 = v12;
    if (!v12)
    {
      *a1 = CFRetain(@"iPhone");
    }
  }

  if (a2)
  {
    Value = CFDictionaryGetValue(v10, @"ProductVersion");
    if (Value)
    {
      Value = CFRetain(Value);
    }

    *a2 = Value;
  }

  if (a3)
  {
    v14 = CFDictionaryGetValue(v10, @"ProductBuildVersion");
    if (v14)
    {
      v14 = CFRetain(v14);
    }

    *a3 = v14;
  }

  CFRelease(v10);
  return 0;
}

CFTypeRef FigCFHTTPCreateURLString(const __CFURL *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CFURLCopyAbsoluteURL(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFURLGetString(v1);
  v4 = CFRetain(v3);
  CFRelease(v2);
  return v4;
}

const sockaddr *FigCFHTTPCreateAddressStringFromSockaddr(const sockaddr *result, socklen_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (getnameinfo(result, a2, cStr, 0x401u, 0, 0, 2))
    {
      return 0;
    }

    else
    {
      return CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x600u);
    }
  }

  return result;
}

const __CFData *FigCFHTTPCreateAddressString(const __CFData *result)
{
  if (result)
  {
    v1 = result;
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(v1);

    return FigCFHTTPCreateAddressStringFromSockaddr(BytePtr, Length);
  }

  return result;
}

uint64_t FigCFHTTPGetHTTPPort(const __CFURL *a1, int *a2, char *a3)
{
  v6 = CFURLCopyScheme(a1);
  if (v6)
  {
    v7 = v6;
    v8 = 1;
    v9 = CFStringCompare(v6, @"https", 1uLL);
    CFRelease(v7);
    result = CFURLGetPortNumber(a1);
    v11 = result == -1;
    if (v9 == kCFCompareEqualTo)
    {
      v12 = 443;
      if (!a2)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

  else
  {
    result = CFURLGetPortNumber(a1);
    v11 = result == -1;
  }

  v8 = 0;
  v12 = 80;
  if (!a2)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = result;
  }

  *a2 = v13;
LABEL_11:
  if (a3)
  {
    *a3 = v8;
  }

  return result;
}

double FigCFHTTPCopyClientCertChain(uint64_t *a1)
{
  if (a1)
  {
    *a1 = 0;
    if ((FigCFHTTPCopyClientCertChain_sCheckedPref & 1) == 0)
    {
      v3 = CFPreferencesCopyValue(@"client_auth", @"com.apple.coremedia", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
      if (v3)
      {
        v5 = v3;
        v6 = CFEqual(v3, @"true") || CFEqual(v5, @"TRUE") || CFEqual(v5, @"1") || CFEqual(v5, @"YES") || CFEqual(v5, @"yes") != 0;
        FigCFHTTPCopyClientCertChain_sOkToUse = v6;
        CFRelease(v5);
      }

      FigCFHTTPCopyClientCertChain_sCheckedPref = 1;
    }

    if (FigCFHTTPCopyClientCertChain_sOkToUse)
    {
      v7 = off_1EE59EBD8(*MEMORY[0x1E695E480], 318767120);
      *a1 = v7;
      if (!v7)
      {
        emitter = fig_log_get_emitter();

        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954634, "<< CFHTTP >>", 1976, v1);
      }
    }
  }

  else
  {
    FigCFHTTPCopyClientCertChain_cold_1(&v9);
  }

  return result;
}

CFDateRef FigCFHTTPCreateDateFromHTTPDateString(const __CFString *a1)
{
  v2 = figCFHTTPGetHTTPDateFormater();
  if (!a1)
  {
    return 0;
  }

  v3 = v2;
  if (!v2)
  {
    return 0;
  }

  v4 = *MEMORY[0x1E695E480];

  return CFDateFormatterCreateDateFromString(v4, v3, a1, 0);
}

uint64_t figCFHTTPGetHTTPDateFormater()
{
  if (!figCFHTTPGetHTTPDateFormater_sHTTPDateFormater)
  {
    v0 = *MEMORY[0x1E695E480];
    v1 = CFLocaleCreate(*MEMORY[0x1E695E480], @"en_US_POSIX");
    v2 = CFDateFormatterCreate(v0, v1, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    if (v2)
    {
      v3 = v2;
      CFDateFormatterSetFormat(v2, @"EEE, d MMM yyyy HH:mm:ss z");
      CFDateFormatterSetProperty(v3, *MEMORY[0x1E695E568], *MEMORY[0x1E695E4D0]);
      if (!FigAtomicCompareAndSwapPtr())
      {
        CFRelease(v3);
      }
    }

    if (v1)
    {
      CFRelease(v1);
    }
  }

  return figCFHTTPGetHTTPDateFormater_sHTTPDateFormater;
}

CFDateRef FigCFHTTPCreateDateFromDelayString(CFStringRef string)
{
  if (!figCFHTTPGetHTTPDelaySecondsFormatter_sHTTPDelaySecondsFormatter)
  {
    v2 = *MEMORY[0x1E695E480];
    v3 = CFLocaleCreate(*MEMORY[0x1E695E480], @"en_US_POSIX");
    v4 = CFNumberFormatterCreate(v2, v3, kCFNumberFormatterNoStyle);
    if (v4)
    {
      v5 = v4;
      if (!FigAtomicCompareAndSwapPtr())
      {
        CFRelease(v5);
      }
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  v6 = 0;
  if (string && figCFHTTPGetHTTPDelaySecondsFormatter_sHTTPDelaySecondsFormatter)
  {
    v7 = *MEMORY[0x1E695E480];
    NumberFromString = CFNumberFormatterCreateNumberFromString(*MEMORY[0x1E695E480], figCFHTTPGetHTTPDelaySecondsFormatter_sHTTPDelaySecondsFormatter, string, 0, 1uLL);
    if (NumberFromString)
    {
      v9 = NumberFromString;
      valuePtr = 0;
      if (CFNumberGetValue(NumberFromString, kCFNumberIntType, &valuePtr))
      {
        Current = CFAbsoluteTimeGetCurrent();
        v6 = CFDateCreate(v7, Current + valuePtr);
      }

      else
      {
        v6 = 0;
      }

      CFRelease(v9);
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

CFDateRef FigCFHTTPCreateDateFromHTTPDateStringOrDelayString(const __CFString *a1)
{
  result = FigCFHTTPCreateDateFromHTTPDateString(a1);
  if (!result)
  {

    return FigCFHTTPCreateDateFromDelayString(a1);
  }

  return result;
}

const __CFString *figCFHTTPCopyDateFromHTTPResponse(__CFHTTPMessage *a1, const __CFString *a2)
{
  result = CFHTTPMessageCopyHeaderFieldValue(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = FigCFHTTPCreateDateFromHTTPDateString(result);
    CFRelease(v3);
    return v4;
  }

  return result;
}

CFDateRef FigCFHTTPCopyRetryAfterDateFromHTTPResponse(__CFHTTPMessage *a1)
{
  v1 = CFHTTPMessageCopyHeaderFieldValue(a1, @"Retry-After");
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = FigCFHTTPCreateDateFromHTTPDateString(v1);
  if (!v3)
  {
    v3 = FigCFHTTPCreateDateFromDelayString(v2);
  }

  CFRelease(v2);
  return v3;
}

uint64_t FigCFHTTPCanURLsBePersistent(const __CFURL *a1, const __CFURL *a2, BOOL *a3)
{
  v15 = 0;
  v6 = CFURLCopyHostName(a1);
  v7 = CFURLCopyScheme(a1);
  v8 = CFURLCopyHostName(a2);
  v9 = CFURLCopyScheme(a2);
  v10 = v9;
  if (v6 && v8)
  {
    v11 = CFStringCompare(v6, v8, 1uLL);
    v12 = v7 == 0;
    v13 = v10 == 0;
    if (v7 && v10)
    {
      if (v11 || CFStringCompare(v7, v10, 1uLL))
      {
        *a3 = 0;
      }

      else
      {
        FigCFHTTPGetHTTPPort(a1, &v15 + 1, 0);
        FigCFHTTPGetHTTPPort(a2, &v15, 0);
        *a3 = HIDWORD(v15) == v15;
      }

      goto LABEL_11;
    }

LABEL_13:
    CFRelease(v6);
    v6 = 4294954510;
    if (v12)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  v12 = v7 == 0;
  v13 = v9 == 0;
  if (v7 && v9)
  {
    *a3 = 0;
    if (v6)
    {
LABEL_11:
      CFRelease(v6);
      v13 = 0;
      v6 = 0;
      goto LABEL_22;
    }

    v13 = 0;
    goto LABEL_22;
  }

  if (v6)
  {
    goto LABEL_13;
  }

  v6 = 4294954510;
  if (!v7)
  {
LABEL_14:
    if (!v8)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_22:
  CFRelease(v7);
  if (v8)
  {
LABEL_15:
    CFRelease(v8);
  }

LABEL_16:
  if (!v13)
  {
    CFRelease(v10);
  }

  return v6;
}

uint64_t FigCFHTTPIsStatusCodeRedirect(int a1)
{
  if ((a1 - 301) >= 5)
  {
    v1 = 0;
  }

  else
  {
    v1 = 0x100010101uLL >> (8 * (a1 - 45));
  }

  return v1 & 1;
}

const __CFData *FigCFHTTPCopyClientProcessName(const __CFData *result)
{
  if (result)
  {
    CFDataGetBytePtr(result);
    if (FigServer_GetClientPIDFromAuditToken())
    {
      FigServer_CopyProcessName();
    }

    return 0;
  }

  return result;
}

uint64_t FigCFHTTPCopyClientBundleIdentifier(const __CFData *a1)
{
  if (!a1)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(a1);
  v8 = *BytePtr;
  v9 = *(BytePtr + 1);
  ClientPIDFromAuditToken = FigServer_GetClientPIDFromAuditToken();
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E69C75E0] identifierWithPid:{ClientPIDFromAuditToken, v8, v9}];
  v5 = [MEMORY[0x1E69C75D0] handleForIdentifier:v4 error:0];
  if (v5)
  {
    v6 = [objc_msgSend(objc_msgSend(v5 "bundle")];
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v3);
  return v6;
}

uint64_t FigCFHTTPCreateCacheHeaders(const void *a1, uint64_t a2, __CFHTTPMessage *a3, const __CFDictionary *a4, const __CFString *a5)
{
  v66 = *MEMORY[0x1E69E9840];
  cf = 0;
  v63 = a2;
  v61 = 0;
  valuePtr = 1;
  if (!a3)
  {
    FigCFHTTPCreateCacheHeaders_cold_7(buffer);
LABEL_100:
    v6 = 0;
LABEL_102:
    v9 = 0;
LABEL_104:
    v10 = 0;
LABEL_105:
    v12 = 0;
LABEL_106:
    location_low = *buffer;
    goto LABEL_45;
  }

  if (!a1)
  {
    FigCFHTTPCreateCacheHeaders_cold_6(buffer);
    goto LABEL_100;
  }

  v6 = a5;
  if (!a5)
  {
    FigCFHTTPCreateCacheHeaders_cold_5(buffer);
    goto LABEL_102;
  }

  v8 = *MEMORY[0x1E695E480];
  v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (!v9)
  {
    FigCFHTTPCreateCacheHeaders_cold_4(buffer);
    v6 = 0;
    goto LABEL_104;
  }

  v10 = CFNumberCreate(v8, kCFNumberSInt64Type, &v63);
  if (!v10)
  {
    FigCFHTTPCreateCacheHeaders_cold_3(buffer);
    v6 = 0;
    goto LABEL_105;
  }

  Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = Mutable;
  if (!Mutable)
  {
    FigCFHTTPCreateCacheHeaders_cold_2(buffer);
    v6 = 0;
    goto LABEL_106;
  }

  p_isa = &v6->isa;
  CFDictionarySetValue(Mutable, @"Version", v9);
  v13 = *MEMORY[0x1E695E4C0];
  CFDictionarySetValue(v12, @"no-cache", *MEMORY[0x1E695E4C0]);
  CFDictionarySetValue(v12, @"must-validate", v13);
  CFDictionarySetValue(v12, @"URL", a1);
  CFDictionarySetValue(v12, @"Size", v10);
  v14 = CFHTTPMessageCopyHeaderFieldValue(a3, @"Pragma");
  v56 = v10;
  v57 = v9;
  if (v14)
  {
    v15 = v14;
    location = CFStringFind(v14, @"no-cache", 1uLL).location;
    CFRelease(v15);
    if (location != -1)
    {
      CFDictionarySetValue(v12, @"no-cache", *MEMORY[0x1E695E4D0]);
LABEL_14:
      v19 = 0;
      v20 = 0;
      v21 = 0;
      DateFromString = 0;
      v23 = 0;
      goto LABEL_15;
    }
  }

  v17 = CFHTTPMessageCopyHeaderFieldValue(a3, @"Cache-control");
  if (v17)
  {
    v18 = v17;
    if (CFStringFind(v17, @"no-cache", 1uLL).location != -1 || CFStringFind(v18, @"no-store", 1uLL).location != -1)
    {
      CFDictionarySetValue(v12, @"no-cache", *MEMORY[0x1E695E4D0]);
      CFRelease(v18);
      goto LABEL_14;
    }

    if (CFStringFind(v18, @"must-revalidate", 1uLL).location != -1)
    {
      CFDictionarySetValue(v12, @"must-validate", *MEMORY[0x1E695E4D0]);
    }

    v33 = CFStringFind(v18, @"max-age=", 1uLL);
    if (v33.location != -1)
    {
      v34 = CFStringCreateWithSubstring(v8, v18, v33);
      if (v34)
      {
        v35 = v34;
        if (CFStringGetCString(v34, buffer, 128, 0x600u) && sscanf(v65, "%llu", &v61) != 1)
        {
          v61 = 0;
        }

        CFRelease(v35);
      }
    }

    CFRelease(v18);
  }

  v36 = CFHTTPMessageCopyHeaderFieldValue(a3, @"Etag");
  if (v36)
  {
    v37 = v36;
    if (CFStringGetLength(v36) < 2 || (v67.length = CFStringGetLength(@"W/"), v67.location = 0, v38 = CFStringCompareWithOptions(v37, @"W/", v67, 1uLL), v39 = CFStringFind(v37, @"", 0).location, v39 == -1))
    {
      v23 = 0;
    }

    else
    {
      v52 = v39;
      result.location = 0;
      result.length = 0;
      v53 = v39 + 1;
      v68.length = CFStringGetLength(v37) - (v39 + 1);
      v68.location = v53;
      v23 = 0;
      if (CFStringFindWithOptions(v37, @"", v68, 0, &result))
      {
        v69.length = result.location - v52 + 1;
        v69.location = v52;
        v23 = CFStringCreateWithSubstring(v8, v37, v69);
        CFDictionarySetValue(v12, @"ETag", v23);
        if (v38)
        {
          v54 = v13;
        }

        else
        {
          v54 = *MEMORY[0x1E695E4D0];
        }

        CFDictionarySetValue(v12, @"ETag weak", v54);
      }
    }

    CFRelease(v37);
  }

  else
  {
    v23 = 0;
  }

  v40 = figCFHTTPGetHTTPDateFormater();
  if (v40)
  {
    v41 = v40;
    v42 = CFHTTPMessageCopyHeaderFieldValue(a3, @"Date");
    if (v42)
    {
      v43 = v42;
      DateFromString = CFDateFormatterCreateDateFromString(v8, v41, v42, 0);
      CFRelease(v43);
    }

    else
    {
      DateFromString = 0;
    }

    v44 = CFHTTPMessageCopyHeaderFieldValue(a3, @"Expires");
    if (v44)
    {
      v45 = v44;
      v21 = CFDateFormatterCreateDateFromString(v8, v41, v44, 0);
      CFRelease(v45);
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
    DateFromString = 0;
  }

  v46 = CFHTTPMessageCopyHeaderFieldValue(a3, @"Last-Modified");
  if (v46)
  {
    v47 = v46;
    CFDictionarySetValue(v12, @"Last-Modified", v46);
    CFRelease(v47);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v20 = CFDateCreate(v8, Current);
  if (DateFromString && CFDateCompare(DateFromString, v20, 0) == kCFCompareGreaterThan)
  {
    v19 = DateFromString;
    DateFromString = 0;
  }

  else
  {
    v19 = v20;
    v20 = 0;
  }

  v49 = v61;
  if (v61)
  {
    if (v21)
    {
      CFRelease(v21);
      v49 = v61;
    }

    v50 = v49;
    v51 = MEMORY[0x19A8CCD90](v19);
    v21 = CFDateCreate(v8, v51 + v50);
  }

  if (v21)
  {
    CFDictionarySetValue(v12, @"Expires", v21);
  }

  if (!FigCFHTTPCopyFilenameFromContentDisposition(a3, 0, &cf))
  {
    CFDictionarySetValue(v12, @"FileName", cf);
  }

LABEL_15:
  ResponseStatusCode = CFHTTPMessageGetResponseStatusCode(a3);
  if (ResponseStatusCode == 200 || ResponseStatusCode == 304 || ResponseStatusCode == 206)
  {
    v6 = FigCFHTTPCopyMimeTypeFromHTTPResponse(a3);
    if (v6)
    {
      CFDictionarySetValue(v12, @"MIME Type", v6);
    }
  }

  else
  {
    v6 = 0;
  }

  if (a4)
  {
    if (!CFDictionaryContainsKey(v12, @"MIME Type"))
    {
      Value = CFDictionaryGetValue(a4, @"MIME Type");
      if (Value)
      {
        v26 = Value;
        CFDictionarySetValue(v12, @"MIME Type", Value);
        CFHTTPMessageSetHeaderFieldValue(a3, @"Content-Type", v26);
      }
    }

    if (!CFDictionaryContainsKey(v12, @"Last-Modified"))
    {
      v27 = CFDictionaryGetValue(a4, @"Last-Modified");
      if (v27)
      {
        CFDictionarySetValue(v12, @"Last-Modified", v27);
      }
    }

    if (!CFDictionaryContainsKey(v12, @"ETag"))
    {
      v28 = CFDictionaryGetValue(a4, @"ETag");
      if (v28)
      {
        CFDictionarySetValue(v12, @"ETag", v28);
      }
    }

    if (!CFDictionaryContainsKey(v12, @"Expires"))
    {
      v29 = CFDictionaryGetValue(a4, @"Expires");
      if (v29)
      {
        CFDictionarySetValue(v12, @"Expires", v29);
      }
    }
  }

  Copy = CFDictionaryCreateCopy(v8, v12);
  if (!Copy)
  {
    FigCFHTTPCreateCacheHeaders_cold_1(&result);
    location_low = LODWORD(result.location);
    if (!v23)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  location_low = 0;
  *p_isa = Copy;
  if (v23)
  {
LABEL_36:
    CFRelease(v23);
  }

LABEL_37:
  if (v21)
  {
    CFRelease(v21);
  }

  v9 = v57;
  if (v20)
  {
    CFRelease(v20);
  }

  v10 = v56;
  if (DateFromString)
  {
    CFRelease(DateFromString);
  }

  if (v19)
  {
    CFRelease(v19);
  }

LABEL_45:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return location_low;
}

const void *FigCFHTTPMatchCacheHeaders(const __CFDictionary *a1, uint64_t a2, const __CFString *a3, uint64_t a4, const __CFDictionary *a5)
{
  if (!a1)
  {
    return 0;
  }

  v6 = a4;
  Value = CFDictionaryGetValue(a1, @"Version");
  if (!Value)
  {
    return 0;
  }

  v29 = 0;
  valuePtr = 0;
  if (!CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
  {
    return 0;
  }

  if (valuePtr != 1)
  {
    return 0;
  }

  v11 = CFDictionaryGetValue(a1, @"Size");
  if (!v11)
  {
    return 0;
  }

  v12 = CFNumberGetValue(v11, kCFNumberSInt64Type, &v29);
  if (!a3)
  {
    return 0;
  }

  if (!v12)
  {
    return 0;
  }

  if (v29 != a2)
  {
    return 0;
  }

  v13 = CFDictionaryGetValue(a1, @"URL");
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  if (v6)
  {
    v15 = *MEMORY[0x1E695E480];
    v16 = CFURLCreateWithString(*MEMORY[0x1E695E480], a3, 0);
    if (v16)
    {
      v17 = v16;
      v18 = FigCFURLCreateCacheKey();
      CFRelease(v17);
    }

    else
    {
      v18 = 0;
    }

    v19 = CFURLCreateWithString(v15, v14, 0);
    if (v19)
    {
      v20 = v19;
      v21 = FigCFURLCreateCacheKey();
      CFRelease(v20);
      if (v18 && v21)
      {
        v22 = CFStringCompare(v18, v21, 0) == kCFCompareEqualTo;
LABEL_22:
        CFRelease(v18);
        v23 = v22;
LABEL_23:
        if (v21)
        {
          CFRelease(v21);
        }

        if (!v23)
        {
          return 0;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = 0;
    v23 = 0;
    if (!v18)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (CFStringCompare(a3, v13, 0))
  {
    return 0;
  }

LABEL_26:
  if (!a5)
  {
    return 0;
  }

  if (CFDictionaryContainsKey(a5, @"ETag"))
  {
    v24 = CFDictionaryGetValue(a5, @"ETag");
    result = CFDictionaryGetValue(a1, @"ETag");
    if (!result)
    {
      return result;
    }

    v26 = result;
    result = v24;
    return CFEqual(result, v26);
  }

  result = CFDictionaryContainsKey(a5, @"Last-Modified");
  if (result)
  {
    v27 = CFDictionaryGetValue(a5, @"Last-Modified");
    result = CFDictionaryGetValue(a1, @"Last-Modified");
    if (result)
    {
      v26 = v27;
      return CFEqual(result, v26);
    }
  }

  return result;
}

uint64_t FigCFHTTPVIAHeaderIsCacheHit(const __CFString *a1)
{
  location = CFStringFind(a1, @"[", 0).location;
  v3 = CFStringFind(a1, @"]", 0).location + ~location;
  v4 = v3 > 0x18;
  v5 = (1 << v3) & 0x1000060;
  if (v4 || v5 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  CharacterAtIndex = CFStringGetCharacterAtIndex(a1, location + 4);
  return CharacterAtIndex == 72 || CharacterAtIndex == 82;
}

uint64_t FigCFHTTPCreateCFErrorFromHTTPStatusCode(uint64_t a1, CFErrorRef *a2)
{
  code = 0;
  cf = 0;
  if (!a1)
  {
    a1 = 200;
  }

  FigCFHTTPCopyErrorCodeAndCommentForHTTPStatusCode(a1, &code, &cf);
  v3 = 0;
  v4 = 0;
  if (code)
  {
    v5 = cf == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    goto LABEL_9;
  }

  v6 = *MEMORY[0x1E695E480];
  v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E695E620], &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v4)
  {
    v3 = CFErrorCreate(v6, @"CoreMediaErrorDomain", code, v4);
    if (v3)
    {
LABEL_9:
      v7 = 0;
      *a2 = v3;
      goto LABEL_10;
    }

    FigCFHTTPCreateCFErrorFromHTTPStatusCode_cold_1(&code_4);
  }

  else
  {
    FigCFHTTPCreateCFErrorFromHTTPStatusCode_cold_2(&code_4);
  }

  v7 = code_4;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v7;
}

uint64_t FigCFHTTPCopyErrorCodeAndCommentForHTTPStatusCode(uint64_t a1, _DWORD *a2, void *a3)
{
  if (a1 > 408)
  {
    if (a1 > 499)
    {
      if (a1 > 502)
      {
        if (a1 == 503)
        {
          fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v25, v26);
          v7 = v19;
          v6 = @"HTTP 503: Service Unavailable";
          goto LABEL_49;
        }

        if (a1 != 504)
        {
          goto LABEL_59;
        }

        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v25, v26);
        v7 = v13;
        v6 = @"HTTP 504: Gateway Timeout";
        if (!a2)
        {
          goto LABEL_51;
        }
      }

      else if (a1 == 500)
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v25, v26);
        v7 = v16;
        v6 = @"HTTP 500: Internal Server Error";
        if (!a2)
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (a1 != 502)
        {
          goto LABEL_59;
        }

        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v25, v26);
        v7 = v10;
        v6 = @"HTTP 502: Bad Gateway";
        if (!a2)
        {
          goto LABEL_51;
        }
      }
    }

    else if (a1 > 415)
    {
      if (a1 == 416)
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v25, v26);
        v7 = v17;
        v6 = @"HTTP 416: Requested Range Not Satisfiable";
        if (!a2)
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (a1 != 418)
        {
          goto LABEL_59;
        }

        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v25, v26);
        v7 = v11;
        v6 = @"HTTP 418: Teapot";
        if (!a2)
        {
          goto LABEL_51;
        }
      }
    }

    else if (a1 == 409)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v25, v26);
      v7 = v14;
      v6 = @"HTTP 409: Conflict";
      if (!a2)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (a1 != 410)
      {
        goto LABEL_59;
      }

      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v25, v26);
      v7 = v8;
      v6 = @"HTTP 410: Gone";
      if (!a2)
      {
        goto LABEL_51;
      }
    }

LABEL_50:
    *a2 = v7;
    goto LABEL_51;
  }

  if (a1 > 400)
  {
    if (a1 > 403)
    {
      if (a1 == 404)
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v25, v26);
        v7 = v18;
        v6 = @"HTTP 404: File Not Found";
        if (!a2)
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (a1 != 407)
        {
          goto LABEL_59;
        }

        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v25, v26);
        v7 = v12;
        v6 = @"HTTP 407: Proxy Authentication Required";
        if (!a2)
        {
          goto LABEL_51;
        }
      }
    }

    else if (a1 == 401)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v25, v26);
      v7 = v15;
      v6 = @"HTTP 401: Unauthorized";
      if (!a2)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (a1 != 403)
      {
        goto LABEL_59;
      }

      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v25, v26);
      v7 = v9;
      v6 = @"HTTP 403: Forbidden";
      if (!a2)
      {
        goto LABEL_51;
      }
    }

    goto LABEL_50;
  }

  v6 = 0;
  v7 = 0;
  if (a1 <= 301)
  {
    if (a1 != 200 && a1 != 206)
    {
      goto LABEL_59;
    }

LABEL_49:
    if (!a2)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  if (a1 == 302 || a1 == 304)
  {
    goto LABEL_49;
  }

LABEL_59:
  fig_log_get_emitter();
  v22 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v25, v26);
  v7 = v23;
  v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"HTTP %d: (unhandled)", v22, a1);
  if (a2)
  {
    goto LABEL_50;
  }

LABEL_51:
  if (a3)
  {
    if (v6)
    {
      v20 = CFRetain(v6);
    }

    else
    {
      v20 = 0;
    }

    *a3 = v20;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return 0;
}

uint64_t FigCFHTTPCreateHTTPRequestOptionsFromAssetCreationOptions(const __CFAllocator *a1, uint64_t a2, __CFDictionary **a3)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v6 = Mutable;
    if (a2)
    {
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      if (!FigCFDictionaryGetValue())
      {
        Value = FigCFDictionaryGetValue();
        v8 = FigCFHTTPCopyClientBundleIdentifier(Value);
        if (v8)
        {
          v9 = v8;
          CFDictionarySetValue(v6, @"FHRP_ClientBundleIdentifier", v8);
          CFRelease(v9);
        }
      }
    }

    result = 0;
    *a3 = v6;
  }

  else
  {
    FigCFHTTPCreateHTTPRequestOptionsFromAssetCreationOptions_cold_1(&v11);
    return v11;
  }

  return result;
}

uint64_t FigCFHTTPCreateCommonHTTPHeadersFromAssetCreationOptions(const __CFAllocator *a1, uint64_t a2, unint64_t a3, __CFDictionary **a4)
{
  if (a2)
  {
    DictionaryValue = FigCFDictionaryGetDictionaryValue();
  }

  else
  {
    DictionaryValue = 0;
  }

  if (a3 | DictionaryValue)
  {
    if (DictionaryValue)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, DictionaryValue);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v9 = MutableCopy;
    if (!MutableCopy)
    {
      FigCFHTTPCreateCommonHTTPHeadersFromAssetCreationOptions_cold_1(&v11);
      return v11;
    }

    if (a3)
    {
      CFDictionaryAddValue(MutableCopy, @"X-Playback-Session-Id", a3);
    }
  }

  else
  {
    v9 = 0;
  }

  result = 0;
  *a4 = v9;
  return result;
}

uint64_t FigNSHTTPCreateSerializedObjectFromNSSecureCoding(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v2 encodeObject:a1 forKey:*MEMORY[0x1E696A508]];
  v3 = [v2 encodedData];

  return v3;
}

void FigNSHTTPInitWithSerializedObject(void *a1, uint64_t a2)
{
  v3 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:a2 error:0];
  [a1 initWithCoder:v3];
  [v3 finishDecoding];
}

void FigHTTPStopAndReleaseTimer(dispatch_object_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*a1);
    *a1 = 0;
  }
}

void FigHTTPRescheduleTimer(double a1, uint64_t a2, NSObject *a3)
{
  if (a1 == 0.0)
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = (a1 * 1000000000.0);
  }

  v5 = dispatch_time(0, v4);

  dispatch_source_set_timer(a3, v5, 0x7FFFFFFFFFFFFFFFuLL, 0x989680uLL);
}

double FigHTTPCreateTimer(const void *a1, uint64_t a2, NSObject *a3, dispatch_object_t *a4, double a5)
{
  FigHTTPStopAndReleaseTimer(a4);
  v11 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, a3);
  *a4 = v11;
  if (v11)
  {
    v12 = v11;
    v13 = malloc_type_calloc(1uLL, 0x18uLL, 0xC00407E72882DuLL);
    if (v13)
    {
      v14 = v13;
      v15 = CFRetain(a1);
      *v14 = a2;
      v14[1] = v15;
      v14[2] = v12;
      dispatch_retain(v12);
      dispatch_set_context(v12, v14);
      dispatch_source_set_cancel_handler_f(v12, figHTTPDispatchTimerCanceledCallback);
      dispatch_source_set_event_handler_f(v12, figHTTPDispatchTimerEventCallback);
      v16 = dispatch_time(0, (a5 * 1000000000.0));
      dispatch_source_set_timer(v12, v16, 0x7FFFFFFFFFFFFFFFuLL, 0x989680uLL);
      dispatch_resume(v12);
    }

    else
    {
      FigHTTPCreateTimer_cold_1(&v19);
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954510, "<< CFHTTP >>", 3249, v5);
  }

  return result;
}

void figHTTPDispatchTimerCanceledCallback(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      CFRelease(v2);
    }

    dispatch_release(*(a1 + 16));

    free(a1);
  }
}

uint64_t figHTTPDispatchTimerEventCallback(uint64_t result)
{
  if (result)
  {
    return (*result)(*(result + 16), *(result + 8));
  }

  return result;
}

uint64_t FigHTTPSchedulerCreateLocal(const void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  MEMORY[0x19A8D3660](&FigHTTPSchedulerCreateLocal_sInitOnce, shouldUseGlobalHTTPSchedulerGetPrefOnce);
  if (gShouldUseGlobalHTTPScheduler)
  {
    return 0;
  }

  snprintf(__str, 0x40uLL, "com.apple.coremedia.networkbuffering.bytepump.%p", a1);
  return FigDispatchQueueCreateWithPriority();
}

uint64_t shouldUseGlobalHTTPSchedulerGetPrefOnce()
{
  result = FigGetCFPreferenceNumberWithDefault();
  gShouldUseGlobalHTTPScheduler = result;
  return result;
}

NSObject *FigHTTPSchedulerRetain(dispatch_object_t object, __n128 a2)
{
  GlobalNetworkBufferingQueue = object;
  if (!object)
  {
    GlobalNetworkBufferingQueue = FigThreadGetGlobalNetworkBufferingQueue();
  }

  dispatch_retain(GlobalNetworkBufferingQueue);
  return GlobalNetworkBufferingQueue;
}

void FigHTTPSchedulerRelease(dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }
}

uint64_t FigCFHTTPCreateURLReplacingQueryComponent(uint64_t a1, const __CFString *a2, const __CFString **a3)
{
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      if (a3)
      {
        v6 = objc_autoreleasePoolPush();
        v7 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:1];
        if (CFStringGetLength(v4) <= 0)
        {
          v8 = 0;
        }

        else
        {
          v8 = v4;
        }

        [v7 setPercentEncodedQuery:v8];
        v9 = [v7 URL];
        if (v9)
        {
          v4 = CFRetain(v9);
        }

        else
        {
          v4 = 0;
        }

        if (v4)
        {
          v10 = 0;
        }

        else
        {
          v10 = 4294954633;
        }

        objc_autoreleasePoolPop(v6);
      }

      else
      {
        FigCFHTTPCreateURLReplacingQueryComponent_cold_1(&v12);
        v4 = 0;
        v10 = v12;
      }
    }

    else
    {
      FigCFHTTPCreateURLReplacingQueryComponent_cold_2(&v13);
      v10 = v13;
    }
  }

  else
  {
    FigCFHTTPCreateURLReplacingQueryComponent_cold_3(&v14);
    v4 = 0;
    v10 = v14;
  }

  *a3 = v4;
  return v10;
}

id FigCFHTTPCopyQueryValueForKey(uint64_t a1, const __CFString *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [objc_msgSend(MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:{1), "queryItems", 0}];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (CFStringCompare(a2, [v10 name], 1uLL) == kCFCompareEqualTo)
        {
          v11 = [v10 value];
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:
  objc_autoreleasePoolPop(v4);
  return v11;
}

__CFArray *FigCFHTTPCopyQueryParams(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v4 = objc_autoreleasePoolPush();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [objc_msgSend(MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:{1), "queryItems"}];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = CFStringCreateWithFormat(v2, 0, @"%@=", [v10 name]);
          if (!v11 || (v12 = v11, ![v10 value]))
          {
            FigCFHTTPCopyQueryParams_cold_1();
            goto LABEL_13;
          }

          CFArrayAppendValue(Mutable, v12);
          CFArrayAppendValue(Mutable, [v10 value]);
          CFRelease(v12);
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
    objc_autoreleasePoolPop(v4);
  }

  else
  {
    FigCFHTTPCopyQueryParams_cold_2();
  }

  return Mutable;
}

uint64_t FigCFHTTPCopyQueryParamsAsDict(uint64_t a1, CFMutableDictionaryRef *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    FigCFHTTPCopyQueryParamsAsDict_cold_2(&v27);
    return v27;
  }

  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FigCFHTTPCopyQueryParamsAsDict_cold_1(&v27);
    return v27;
  }

  v7 = Mutable;
  context = objc_autoreleasePoolPush();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [objc_msgSend(MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:{1), "queryItems"}];
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = CFStringCreateWithFormat(v5, 0, @"%@", [v13 name]);
        if (!v14 || (v15 = CFStringCreateWithFormat(v5, 0, @"%@", [v13 value])) == 0)
        {
          fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, v2);
          v17 = v18;
          objc_autoreleasePoolPop(context);
          CFRelease(v7);
          if (v14)
          {
            CFRelease(v14);
          }

          return v17;
        }

        v16 = v15;
        CFDictionaryAddValue(v7, v14, v15);
        CFRelease(v14);
        CFRelease(v16);
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  *a2 = v7;
  objc_autoreleasePoolPop(context);
  return 0;
}

uint64_t FigCFHTTPCreateURLWithQueryParam(const __CFURL *a1, const __CFString *a2, uint64_t a3, const __CFString **a4)
{
  if (!a1)
  {
    FigCFHTTPCreateURLWithQueryParam_cold_2(&v18);
    return v18;
  }

  String = CFURLCopyQueryString(a1, 0);
  v9 = String;
  if (String && CFStringGetLength(String) >= 1)
  {
    StringMinusParam = FigCFHTTPCreateQueryStringMinusParam(v9, a2);
    Length = CFStringGetLength(StringMinusParam);
    v12 = *MEMORY[0x1E695E480];
    if (Length < 1)
    {
      v13 = CFStringCreateWithFormat(v12, 0, @"%@%@", a2, a3);
    }

    else
    {
      v13 = CFStringCreateWithFormat(v12, 0, @"%@&%@%@", StringMinusParam, a2, a3);
    }

    v14 = v13;
    if (StringMinusParam)
    {
      CFRelease(StringMinusParam);
    }
  }

  else
  {
    v14 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@%@", a2, a3);
  }

  if (v14)
  {
    Component = FigCFHTTPCreateURLReplacingQueryComponent(a1, v14, a4);
    if (!v9)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  FigCFHTTPCreateURLWithQueryParam_cold_1(&v17);
  Component = v17;
  if (v9)
  {
LABEL_12:
    CFRelease(v9);
  }

LABEL_13:
  if (v14)
  {
    CFRelease(v14);
  }

  return Component;
}

CFMutableStringRef FigCFHTTPCreateQueryStringMinusParam(const __CFString *a1, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  v5 = CFStringGetLength(a1);
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
  if (MutableCopy)
  {
    v7 = v5 < Length;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = 0;
    do
    {
      v18.location = v8;
      v18.length = Length;
      if (CFStringCompareWithOptions(MutableCopy, theString, v18, 0))
      {
        if (v5 >= 1)
        {
          do
          {
            v9 = v5;
            CharacterAtIndex = CFStringGetCharacterAtIndex(MutableCopy, v8++);
            --v5;
          }

          while (v9 >= 2 && CharacterAtIndex != 38);
        }
      }

      else
      {
        v11 = v8;
        v12 = Length;
        if (v8 >= 1)
        {
          v13 = CFStringGetCharacterAtIndex(MutableCopy, v8 - 1);
          if (v13 == 38)
          {
            v11 = v8 - 1;
          }

          else
          {
            v11 = v8;
          }

          if (v13 == 38)
          {
            v12 = Length + 1;
          }

          else
          {
            v12 = Length;
          }
        }

        if (v12 + v11 < v8 + v5)
        {
          do
          {
            v14 = v11 + v12;
            v15 = CFStringGetCharacterAtIndex(MutableCopy, v11 + v12++);
          }

          while (v14 + 1 < v8 + v5 && v15 != 38);
          if (v15 == 38)
          {
            v12 -= CFStringGetCharacterAtIndex(MutableCopy, v11) == 38;
          }
        }

        v17.location = v11;
        v17.length = v12;
        CFStringDelete(MutableCopy, v17);
        v5 -= v12;
      }
    }

    while (v5 >= Length);
  }

  return MutableCopy;
}

uint64_t FigCFHTTPCreateURLMinusQueryParam(const __CFURL *a1, const __CFString *a2, const __CFString **a3)
{
  String = CFURLCopyQueryString(a1, 0);
  if (String)
  {
    v7 = String;
    if (CFStringGetLength(String) < 1)
    {
      v12 = CFRetain(a1);
      Component = 0;
      *a3 = v12;
    }

    else
    {
      StringMinusParam = FigCFHTTPCreateQueryStringMinusParam(v7, a2);
      if (StringMinusParam)
      {
        v9 = StringMinusParam;
        Component = FigCFHTTPCreateURLReplacingQueryComponent(a1, StringMinusParam, a3);
        CFRelease(v9);
      }

      else
      {
        FigCFHTTPCreateURLMinusQueryParam_cold_1(&v14);
        Component = v14;
      }
    }

    CFRelease(v7);
  }

  else
  {
    v11 = CFRetain(a1);
    Component = 0;
    *a3 = v11;
  }

  return Component;
}

uint64_t FigCFHTTPCreatePropertyListFromJSON(uint64_t a1, CFTypeRef *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1 && (v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a1 options:0 error:0]) != 0)
  {
    v6 = 0;
    *a2 = CFRetain(v5);
  }

  else
  {
    v6 = 4294954410;
  }

  objc_autoreleasePoolPop(v4);
  return v6;
}

uint64_t FigCFHTTPCreatePercentEncodedString(void *a1, int a2, void *a3)
{
  v6 = 4294954516;
  v7 = objc_autoreleasePoolPush();
  if (a2 > 3)
  {
    switch(a2)
    {
      case 4:
        v8 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
        goto LABEL_14;
      case 5:
        v8 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
        goto LABEL_14;
      case 6:
        v8 = [MEMORY[0x1E696AB08] URLFragmentAllowedCharacterSet];
        goto LABEL_14;
    }
  }

  else
  {
    switch(a2)
    {
      case 1:
        v8 = [MEMORY[0x1E696AB08] URLUserAllowedCharacterSet];
        goto LABEL_14;
      case 2:
        v8 = [MEMORY[0x1E696AB08] URLPasswordAllowedCharacterSet];
        goto LABEL_14;
      case 3:
        v8 = [MEMORY[0x1E696AB08] URLHostAllowedCharacterSet];
LABEL_14:
        v6 = 0;
        *a3 = [a1 stringByAddingPercentEncodingWithAllowedCharacters:v8];
        break;
    }
  }

  objc_autoreleasePoolPop(v7);
  return v6;
}

uint64_t OUTLINED_FUNCTION_4_164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);

  return [v4 countByEnumeratingWithState:va objects:va1 count:16];
}

uint64_t FigCaptionRendererTriggerSetTimebase(uint64_t a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      fcrTrigger_setTimebase(a1, a2);
      result = 0;
      *(a1 + 88) = 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    FigCaptionRendererTriggerSetTimebase_cold_1(&v4);
    return v4;
  }

  return result;
}

void fcrTrigger_setTimebase(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 80);
  if (v2 != cf)
  {
    if (v2)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v5 = *(a1 + 80);
      *(a1 + 80) = cf;
      CFRetain(cf);
      if (v5)
      {
        CFRelease(v5);
      }
    }

    else
    {
      *(a1 + 80) = cf;
      CFRetain(cf);
    }

    if (*(a1 + 80))
    {
      CMNotificationCenterGetDefaultLocalCenter();

      FigNotificationCenterAddWeakListener();
    }
  }
}

double FigCaptionRendererTriggerGetCurrentTime@<D0>(uint64_t a1@<X0>, CMTime *a2@<X8>)
{
  *a2 = **&MEMORY[0x1E6960C70];
  if (!a1)
  {
    return FigCaptionRendererTriggerGetCurrentTime_cold_2();
  }

  v2 = *(a1 + 80);
  if (!v2)
  {
    return FigCaptionRendererTriggerGetCurrentTime_cold_1();
  }

  CMTimebaseGetTime(a2, v2);
  return result;
}

uint64_t FigCaptionRendererTriggerSetCurrentTime(uint64_t a1, CMTime *a2)
{
  if (!a1)
  {
    FigCaptionRendererTriggerSetCurrentTime_cold_2(&v5);
    return LODWORD(v5.value);
  }

  v3 = *(a1 + 80);
  if (!v3)
  {
    FigCaptionRendererTriggerSetCurrentTime_cold_1(&v5);
    return LODWORD(v5.value);
  }

  if (*(a1 + 88))
  {
    return 0;
  }

  v5 = *a2;
  return CMTimebaseSetTime(v3, &v5);
}

uint64_t FigCaptionRendererTriggerSetRate(uint64_t a1, Float64 a2)
{
  if (a1)
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      if (!*(a1 + 88))
      {
        CMTimebaseSetRate(v3, a2);
      }

      return 0;
    }

    else
    {
      FigCaptionRendererTriggerSetRate_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    FigCaptionRendererTriggerSetRate_cold_2(&v6);
    return v6;
  }
}

Float64 FigCaptionRendererTriggerGetRate(uint64_t a1)
{
  if (!a1)
  {
    FigCaptionRendererTriggerGetRate_cold_2();
    return 0.0;
  }

  v1 = *(a1 + 80);
  if (!v1)
  {
    FigCaptionRendererTriggerGetRate_cold_1();
    return 0.0;
  }

  return CMTimebaseGetRate(v1);
}

uint64_t FigCaptionRendererTriggerStart(uint64_t a1)
{
  if (!a1)
  {
    FigCaptionRendererTriggerStart_cold_2(&v7);
    return LODWORD(v7.value);
  }

  v2 = *(a1 + 80);
  if (!v2)
  {
    FigCaptionRendererTriggerStart_cold_1(&v7);
    return LODWORD(v7.value);
  }

  if (!*(a1 + 88))
  {
    v3 = MEMORY[0x1E6960CC0];
    v4 = *MEMORY[0x1E6960CC0];
    *(a1 + 52) = *MEMORY[0x1E6960CC0];
    v5 = *(v3 + 16);
    *(a1 + 68) = v5;
    *&v7.value = v4;
    v7.epoch = v5;
    CMTimebaseSetTime(v2, &v7);
  }

  return 0;
}

uint64_t FigCaptionRendererTriggerResume(uint64_t a1)
{
  if (!a1)
  {
    FigCaptionRendererTriggerResume_cold_3(&v4);
    return LODWORD(v4.value);
  }

  v2 = *(a1 + 80);
  if (!v2)
  {
    FigCaptionRendererTriggerResume_cold_2(&v4);
    return LODWORD(v4.value);
  }

  if (!*(a1 + 90))
  {
    FigCaptionRendererTriggerResume_cold_1(&v4);
    return LODWORD(v4.value);
  }

  if (!*(a1 + 88))
  {
    v4 = *(a1 + 52);
    CMTimebaseSetTime(v2, &v4);
    CMTimebaseSetRate(*(a1 + 80), 1.0);
  }

  result = 0;
  *(a1 + 90) = 0;
  return result;
}

uint64_t FigCaptionRendererTriggerPause(uint64_t a1)
{
  if (!a1)
  {
    FigCaptionRendererTriggerPause_cold_3(&v4);
    return LODWORD(v4.value);
  }

  v2 = *(a1 + 80);
  if (!v2)
  {
    FigCaptionRendererTriggerPause_cold_2(&v4);
    return LODWORD(v4.value);
  }

  if (*(a1 + 90))
  {
    FigCaptionRendererTriggerPause_cold_1(&v4);
    return LODWORD(v4.value);
  }

  if (!*(a1 + 88))
  {
    CMTimebaseSetRate(v2, 0.0);
    CMTimebaseGetTime(&v4, *(a1 + 80));
    *(a1 + 52) = v4;
  }

  result = 0;
  *(a1 + 90) = 1;
  return result;
}

uint64_t FigCaptionRendererTriggerStop(uint64_t a1)
{
  if (!a1)
  {
    FigCaptionRendererTriggerStop_cold_2(&v3);
    return LODWORD(v3.value);
  }

  if (FigCaptionRendererTimerIsOn(*(a1 + 40)))
  {
    FigCaptionRendererTimerStop(*(a1 + 40));
  }

  if (!*(a1 + 80))
  {
    FigCaptionRendererTriggerStop_cold_1(&v3);
    return LODWORD(v3.value);
  }

  if (!*(a1 + 88))
  {
    CMTimeMake(&v3, 0, 1);
    *(a1 + 52) = v3;
    CMTimebaseSetRate(*(a1 + 80), 0.0);
  }

  return 0;
}

const void *FigCaptionRendererTriggerManualTrigger(uint64_t a1)
{
  if (!a1)
  {
    FigCaptionRendererTriggerManualTrigger_cold_2(&v5);
    return LODWORD(v5.value);
  }

  if (!*(a1 + 80))
  {
    FigCaptionRendererTriggerManualTrigger_cold_1(&v5);
    return LODWORD(v5.value);
  }

  if (*(a1 + 24))
  {
    result = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!result)
    {
      return result;
    }

    v3 = result;
    v4 = *(a1 + 24);
    CMTimebaseGetTime(&v5, *(a1 + 80));
    v4(0, &v5, v3);
    CFRelease(v3);
  }

  return 0;
}

NSObject *FigCaptionRendererTriggerScheduleEvent(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v9 = 0;
  if (a1)
  {
    result = *(a1 + 104);
    if (result)
    {
      context[0] = a1;
      context[1] = a2;
      v6 = *a3;
      v7 = *(a3 + 2);
      v8 = &v9;
      dispatch_sync_f(result, context, scheduleEventDo);
      return v9;
    }
  }

  else
  {
    FigCaptionRendererTriggerScheduleEvent_cold_1(context);
    return LODWORD(context[0]);
  }

  return result;
}

void scheduleEventDo(uint64_t *a1)
{
  v2 = *a1;
  v11 = *(a1 + 2);
  v3 = *(v2 + 80);
  if (v3)
  {
    if (CMTimebaseGetRate(v3) != 0.0 && !FigCaptionRendererTimerIsOn(*(v2 + 40)))
    {
      FigCaptionRendererTimerStart(*(v2 + 40));
    }

    time = v11;
    Seconds = CMTimeGetSeconds(&time);
    memset(&v9, 0, sizeof(v9));
    CMTimebaseGetTime(&v9, *(v2 + 80));
    time = v9;
    v8 = Seconds - CMTimeGetSeconds(&time);
    v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, &v8);
    CFArrayAppendValue(*(v2 + 96), v5);
    CFRelease(v5);
    value = 0;
  }

  else
  {
    scheduleEventDo_cold_1(&time);
    value = time.value;
  }

  v7 = a1[5];
  if (v7)
  {
    *v7 = value;
  }
}

uint64_t RegisterFigCaptionRendererTriggerClass()
{
  result = _CFRuntimeRegisterClass();
  sFigCaptionRendererTriggerID = result;
  return result;
}

double FigCaptionRendererTriggerInit(_OWORD *a1)
{
  result = 0.0;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

uint64_t FigCaptionRendererTrigger_Finalize(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 104) = 0;
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 96) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 40) = 0;
  }

  if (*(a1 + 80))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    if (!*(a1 + 88))
    {
      CMTimebaseSetRate(*(a1 + 80), 0.0);
    }

    v5 = *(a1 + 80);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 80) = 0;
    }
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 16) = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterCheckWeakListenersWereRemovedBeforeFinalization();
}

__CFString *FigCaptionRendererTriggerCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptionRendererTrigger %p>", a1);
  return Mutable;
}

void fcrTrigger_timebaseRateChanged(uint64_t a1, uint64_t a2)
{
  Rate = CMTimebaseGetRate(*(a2 + 80));
  if (Rate == 0.0 && !*(a2 + 90))
  {

    FigCaptionRendererTriggerPause(a2);
  }

  else if (Rate != 0.0 && *(a2 + 90))
  {

    FigCaptionRendererTriggerResume(a2);
  }
}

void onTimerTimeoutDo(uint64_t *a1)
{
  v2 = *a1;
  if (!*(*a1 + 90))
  {
    if (!CFArrayGetCount(*(v2 + 96)) && FigCaptionRendererTimerIsOn(*(v2 + 40)))
    {
      FigCaptionRendererTimerStop(*(v2 + 40));
    }

    if (CFArrayGetCount(*(v2 + 96)) >= 1)
    {
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = *MEMORY[0x1E695E480];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 96), v3);
        valuePtr.value = 0;
        CFNumberGetValue(ValueAtIndex, kCFNumberCGFloatType, &valuePtr);
        if (*&valuePtr.value <= 0.0)
        {
          CFArrayRemoveValueAtIndex(*(v2 + 96), v3);
          v5 = 1;
        }

        else
        {
          *&valuePtr.value = *&valuePtr.value + *(v2 + 48) / -1000.0;
          v8 = CFNumberCreate(v6, kCFNumberCGFloatType, &valuePtr);
          CFArraySetValueAtIndex(*(v2 + 96), v3, v8);
          CFRelease(v8);
          ++v4;
        }

        v3 = v4;
      }

      while (CFArrayGetCount(*(v2 + 96)) > v4);
      if (v5 && *(v2 + 24))
      {
        v9 = *(v2 + 80);
        if (v9)
        {
          memset(&valuePtr, 0, sizeof(valuePtr));
          CMTimebaseGetTime(&valuePtr, v9);
          v10 = FigCFWeakReferenceHolderCopyReferencedObject();
          if (v10)
          {
            v11 = v10;
            v12 = *(v2 + 24);
            v13 = valuePtr;
            v12(0, &v13, v10);
            CFRelease(v11);
          }
        }

        else
        {
          onTimerTimeoutDo_cold_1();
        }
      }
    }
  }

  free(a1);
}

uint64_t FigStreamingCacheGetTypeID(uint64_t a1, uint64_t a2)
{
  if (sRegisterFigStreamingCacheTypeOnce != -1)
  {
    FigStreamingCacheGetTypeID_cold_1();
  }

  return sFigStreamingCacheID;
}

uint64_t RegisterFigStreamingCacheType()
{
  result = _CFRuntimeRegisterClass();
  sFigStreamingCacheID = result;
  return result;
}

uint64_t FigStreamingCacheSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  if (!a1)
  {
    FigStreamingCacheSetProperty_cold_3(&v14);
    return v14;
  }

  if (!a2)
  {
    FigStreamingCacheSetProperty_cold_2(&v13);
    return v13;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheSetProperty_cold_1(&v12);
    v10 = v12;
    goto LABEL_19;
  }

  if (CFEqual(a2, @"FSC_MinOverlappedDuration"))
  {
    if (a3)
    {
      v7 = CFGetTypeID(a3);
      if (v7 == CFNumberGetTypeID())
      {
        CFNumberGetValue(a3, kCFNumberDoubleType, (a1 + 80));
LABEL_15:
        v10 = 0;
        goto LABEL_19;
      }
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17CD0, 4294951056, "<< StreamingCache >>", 4030, v3);
LABEL_18:
    v10 = v8;
    goto LABEL_19;
  }

  if (!CFEqual(a2, @"FSC_IsDonor"))
  {
    goto LABEL_15;
  }

  if (!a3 || (v9 = CFGetTypeID(a3), v9 != CFBooleanGetTypeID()))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17CD0, 4294951056, "<< StreamingCache >>", 4044, v3);
    goto LABEL_18;
  }

  if ((*(a1 + 220) & 2) != 0 || !*(a1 + 136))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17CD0, 4294954514, "<< StreamingCache >>", 4040, v3);
    goto LABEL_18;
  }

  v10 = 0;
  *(a1 + 144) = CFBooleanGetValue(a3);
LABEL_19:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t FigStreamingCacheCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (!a1)
  {
    FigStreamingCacheCopyProperty_cold_5(&v13);
    return v13;
  }

  if (!a2)
  {
    FigStreamingCacheCopyProperty_cold_4(&v13);
    return v13;
  }

  if (!a4)
  {
    FigStreamingCacheCopyProperty_cold_3(&v13);
    return v13;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheCopyProperty_cold_1(&v13);
    goto LABEL_26;
  }

  if (!CFEqual(a2, @"FSC_DownloadDestinationURL"))
  {
    if (CFEqual(a2, @"FSC_IsDiskBacked"))
    {
      v8 = 0;
      if ((*(a1 + 220) & 2) != 0)
      {
        v9 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v9 = MEMORY[0x1E695E4C0];
      }

      v10 = *v9;
LABEL_14:
      *a4 = v10;
      goto LABEL_15;
    }

    if (CFEqual(a2, @"FSC_CacheBundleURL"))
    {
      v7 = *(a1 + 56);
      if (!v7)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    if (!CFEqual(a2, @"FSC_OfflineInterstitialURLs"))
    {
      if (!CFEqual(a2, @"FSC_OfflineInterstitialListJSONs"))
      {
        v8 = 4294954512;
        goto LABEL_15;
      }

      v13 = 0;
      v12 = *(a1 + 280);
      if (v12)
      {
        v8 = sc_CopyDataForCategory(v12, &v13);
        v10 = v13;
      }

      else
      {
        v10 = 0;
        v8 = 0;
      }

      goto LABEL_14;
    }

    FigStreamingCacheCopyProperty_cold_2(a1, a4, &v13);
LABEL_26:
    v8 = v13;
    goto LABEL_15;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
LABEL_7:
    v7 = CFRetain(v7);
  }

LABEL_8:
  v8 = 0;
  *a4 = v7;
LABEL_15:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t FigStreamingCacheSetMasterPlaylist(uint64_t a1, const void *a2, const void *a3)
{
  if (a1)
  {
    FigSimpleMutexLock();
    if (*(a1 + 272))
    {
      FigStreamingCacheSetMasterPlaylist_cold_1(&v10);
      v8 = v10;
    }

    else
    {
      v6 = *(a1 + 120);
      *(a1 + 120) = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      if (v6)
      {
        CFRelease(v6);
      }

      v7 = *(a1 + 160);
      *(a1 + 160) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (v7)
      {
        CFRelease(v7);
      }

      if ((*(a1 + 220) & 2) != 0)
      {
        CFRetain(a1);
        dispatch_async_f(*(a1 + 240), a1, sc_WriteMasterPlaylistToDiskDispatchFunction);
      }

      v8 = 0;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    FigStreamingCacheSetMasterPlaylist_cold_2(&v11);
    return v11;
  }

  return v8;
}

uint64_t sc_WriteMasterPlaylistToDiskDispatchFunction(void *a1)
{
  v10 = 0;
  FigSimpleMutexLock();
  v2 = sc_UpgradePersistentStoreForWriting(a1, &v10);
  if (v2)
  {
    v8 = v2;
    goto LABEL_9;
  }

  if (!a1[15])
  {
    v3 = 0;
LABEL_6:
    v5 = a1[35];
    v6 = a1[20];
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v7)
    {
      v8 = v7(v5, @"NetworkPlaylist", @"master.m3u8", v6, v3);
      sc_RestorePersistentStoreLockStatus(a1, v10);
      if (!v8)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v8 = 4294954514;
    goto LABEL_8;
  }

  v4 = sc_EnsureMasterPlaylistNetworkURLIsSetOnPersistentStore(a1);
  if (!v4)
  {
    v3 = a1[15];
    goto LABEL_6;
  }

  v8 = v4;
LABEL_8:
  sc_RestorePersistentStoreLockStatus(a1, v10);
LABEL_9:
  sc_SendDiskWriteErrorNotification(a1, v8);
LABEL_10:
  FigSimpleMutexUnlock();
  return FigDeferCFRelease();
}

uint64_t FigStreamingCacheCopyMasterPlaylist(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v17 = 0;
  cf = 0;
  if (!a1)
  {
    FigStreamingCacheCopyMasterPlaylist_cold_3(&v19);
LABEL_36:
    v10 = v19;
    goto LABEL_30;
  }

  if (!(a2 | a3))
  {
    FigStreamingCacheCopyMasterPlaylist_cold_2(&v19);
    goto LABEL_36;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheCopyMasterPlaylist_cold_1(&v19);
    v10 = v19;
  }

  else
  {
    if (!a2)
    {
      goto LABEL_23;
    }

    v6 = *(a1 + 120);
    if (v6)
    {
      goto LABEL_21;
    }

    if ((*(a1 + 220) & 2) == 0 || (v7 = *(a1 + 280)) == 0)
    {
LABEL_20:
      v6 = *(a1 + 120);
      if (!v6)
      {
LABEL_22:
        *a2 = v6;
LABEL_23:
        if (a3)
        {
          v15 = *(a1 + 160);
          if (v15)
          {
            v15 = CFRetain(v15);
          }

          v10 = 0;
          *a3 = v15;
          goto LABEL_28;
        }

        goto LABEL_27;
      }

LABEL_21:
      v6 = CFRetain(v6);
      goto LABEL_22;
    }

    if (*(a1 + 128))
    {
LABEL_27:
      v10 = 0;
      goto LABEL_28;
    }

    v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v8)
    {
      v9 = v8(v7, @"NetworkPlaylist", a1 + 128, 0, &cf, &v17);
      if (v9 != -16913)
      {
        v10 = v9;
        if (v9)
        {
          goto LABEL_28;
        }

        v11 = *(a1 + 160);
        v12 = cf;
        *(a1 + 160) = cf;
        if (v12)
        {
          CFRetain(v12);
        }

        if (v11)
        {
          CFRelease(v11);
        }

        v13 = *(a1 + 120);
        v14 = v17;
        *(a1 + 120) = v17;
        if (v14)
        {
          CFRetain(v14);
        }

        if (v13)
        {
          CFRelease(v13);
        }
      }

      goto LABEL_20;
    }

    v10 = 4294954514;
  }

LABEL_28:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_30:
  if (v17)
  {
    CFRelease(v17);
  }

  return v10;
}

uint64_t FigStreamingCacheCopyStreamNetworkURL(uint64_t a1, CFURLRef *a2)
{
  if (!a1)
  {
    FigStreamingCacheCopyStreamNetworkURL_cold_4(&v8);
    return v8;
  }

  if (!a2)
  {
    FigStreamingCacheCopyStreamNetworkURL_cold_3(&v8);
    return v8;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheCopyStreamNetworkURL_cold_1(&v8);
LABEL_13:
    v6 = v8;
    goto LABEL_6;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v5 = CFURLCreateWithString(AllocatorForMedia, *(a1 + 24), 0);
  *a2 = v5;
  if (!v5)
  {
    FigStreamingCacheCopyStreamNetworkURL_cold_2(&v8);
    goto LABEL_13;
  }

  v6 = 0;
LABEL_6:
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t FigStreamingCacheAddMediaMap(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, const void *a6)
{
  valuePtr = a5;
  if (!a1)
  {
    FigStreamingCacheAddMediaMap_cold_9(&v25);
    return v25;
  }

  if (!a2)
  {
    FigStreamingCacheAddMediaMap_cold_8(&v25);
    return v25;
  }

  if (!a3)
  {
    FigStreamingCacheAddMediaMap_cold_7(&v25);
    return v25;
  }

  if (a4 < 0)
  {
    FigStreamingCacheAddMediaMap_cold_6(&v25);
    return v25;
  }

  if (!a6)
  {
    FigStreamingCacheAddMediaMap_cold_5(&v25);
    return v25;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v12 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"%@-%lld", a3, a4, valuePtr);
  if (!v12)
  {
    FigStreamingCacheAddMediaMap_cold_4(&v25);
    return v25;
  }

  v13 = v12;
  v14 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  if (!v14)
  {
    FigStreamingCacheAddMediaMap_cold_3();
    return v25;
  }

  v15 = v14;
  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheAddMediaMap_cold_1(&v25);
    goto LABEL_28;
  }

  v16 = *(a1 + 168);
  if (v16)
  {
    while (v16 != a2)
    {
      v16 = *(v16 + 8);
      if (!v16)
      {
        goto LABEL_12;
      }
    }

    CFDictionaryAddValue(*(v16 + 144), v13, a6);
    CFDictionaryAddValue(*(v16 + 152), v15, a6);
    if ((*(a1 + 220) & 2) == 0)
    {
      goto LABEL_16;
    }

    v19 = malloc_type_malloc(0x40uLL, 0x10600402F6BEFCEuLL);
    if (v19)
    {
      v20 = v19;
      *v19 = CFRetain(a1);
      v20[1] = a2;
      v20[3] = CFRetain(a3);
      v20[4] = a4;
      v20[5] = CFRetain(v15);
      v20[6] = CFRetain(v13);
      dispatch_async_f(*(a1 + 240), v20, sc_WriteMediaMapToDiskDispatchFunction);
LABEL_16:
      v18 = 0;
      goto LABEL_17;
    }

    FigStreamingCacheAddMediaMap_cold_2(&v25);
LABEL_28:
    v18 = v25;
    goto LABEL_17;
  }

LABEL_12:
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, valuePtr);
  v18 = v17;
LABEL_17:
  FigSimpleMutexUnlock();
  CFRelease(v13);
  CFRelease(v15);
  return v18;
}

uint64_t sc_WriteMediaMapToDiskDispatchFunction(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  value = 0;
  cf = 0;
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  FigSimpleMutexLock();
  if (*(v2 + 272))
  {
    FigSimpleMutexUnlock();
  }

  else
  {
    v8 = *(v2 + 168);
    if (v8)
    {
      while (v8 != v3)
      {
        v8 = *(v8 + 8);
        if (!v8)
        {
          goto LABEL_5;
        }
      }

      v9 = CFRetain(*(v8 + 128));
    }

    else
    {
LABEL_5:
      v9 = 0;
    }

    MapBBufFromStreamMediaMapDictionary = sc_GetMapBBufFromStreamMediaMapDictionary(v8, v7, v6, 0, &cf);
    if (MapBBufFromStreamMediaMapDictionary)
    {
      v14 = MapBBufFromStreamMediaMapDictionary;
LABEL_14:
      FigSimpleMutexUnlock();
      if (!v14)
      {
        goto LABEL_15;
      }

      goto LABEL_27;
    }

    FigSimpleMutexUnlock();
    if (v9)
    {
      v11 = cf;
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v12)
      {
        v14 = 4294954514;
        goto LABEL_27;
      }

      v13 = v12(v9, v11, v4, v5, v6, &value);
      if (v13)
      {
        v14 = v13;
        goto LABEL_27;
      }

      FigSimpleMutexLock();
      if (*(v2 + 272))
      {
        sc_WriteMediaMapToDiskDispatchFunction_cold_1(&v21);
        v14 = v21;
      }

      else
      {
        v14 = stream_SetNeedsToCommitPersistentStreamInfo(v8);
        if (!v14)
        {
          CFDictionarySetValue(*(v8 + 160), v7, value);
          CFDictionarySetValue(*(v8 + 168), v6, value);
          CFDictionaryRemoveValue(*(v8 + 144), v7);
          CFDictionaryRemoveValue(*(v8 + 152), v6);
        }
      }

      goto LABEL_14;
    }
  }

  sc_WriteMediaMapToDiskDispatchFunction_cold_2(&v21);
  v9 = 0;
  v14 = v21;
  if (!v21)
  {
LABEL_15:
    if (!v9)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_27:
  FigSimpleMutexLock();
  if (!*(v2 + 272))
  {
    sc_SendDiskWriteErrorNotification(v2, v14);
  }

  FigSimpleMutexUnlock();
  if (v9)
  {
LABEL_16:
    CFRelease(v9);
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  v15 = a1[5];
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = a1[3];
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = a1[6];
  if (v17)
  {
    CFRelease(v17);
  }

  free(a1);
  return FigDeferCFRelease();
}

uint64_t FigStreamingCacheCopyMediaMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v26 = 0;
  valuePtr = a5;
  if (!a1)
  {
    FigStreamingCacheCopyMediaMap_cold_8(&v28);
    return v28;
  }

  if (!a2)
  {
    FigStreamingCacheCopyMediaMap_cold_7(&v28);
    return v28;
  }

  if (!a3)
  {
    FigStreamingCacheCopyMediaMap_cold_6(&v28);
    return v28;
  }

  if (a4 < 0)
  {
    FigStreamingCacheCopyMediaMap_cold_5(&v28);
    return v28;
  }

  if (!a6)
  {
    FigStreamingCacheCopyMediaMap_cold_4(&v28);
    return v28;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v12 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"%@-%lld", a3, a4);
  if (!v12)
  {
    FigStreamingCacheCopyMediaMap_cold_3(&v28);
    return v28;
  }

  v13 = v12;
  v14 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  if (!v14)
  {
    FigStreamingCacheCopyMediaMap_cold_2();
    return v28;
  }

  v15 = v14;
  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheCopyMediaMap_cold_1(&v28);
    v18 = v28;
    goto LABEL_18;
  }

  v16 = *(a1 + 168);
  if (v16)
  {
    while (v16 != a2)
    {
      v16 = *(v16 + 8);
      if (!v16)
      {
        goto LABEL_12;
      }
    }

    MapBBufFromStreamMediaMapDictionary = sc_GetMapBBufFromStreamMediaMapDictionary(v16, v13, v15, &v26, a6);
    if (!MapBBufFromStreamMediaMapDictionary)
    {
      if (*a6 || (*(a1 + 220) & 2) == 0)
      {
        v18 = 0;
        goto LABEL_18;
      }

      Value = CFDictionaryGetValue(*(v16 + 160), v13);
      v26 = v13;
      if (Value)
      {
        v18 = Value;
      }

      else
      {
        v18 = CFDictionaryGetValue(*(v16 + 168), v15);
        v26 = v15;
        if (!v18)
        {
          goto LABEL_18;
        }
      }

      v21 = *(v16 + 128);
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 88);
      if (!v22)
      {
        v18 = 4294954514;
        goto LABEL_18;
      }

      MapBBufFromStreamMediaMapDictionary = v22(v21, v18, a6);
    }
  }

  else
  {
LABEL_12:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v24, v25);
  }

  v18 = MapBBufFromStreamMediaMapDictionary;
LABEL_18:
  FigSimpleMutexUnlock();
  CFRelease(v13);
  CFRelease(v15);
  return v18;
}

uint64_t sc_GetMapBBufFromStreamMediaMapDictionary(uint64_t a1, const void *a2, const void *a3, void *a4, void *a5)
{
  if (!a5)
  {
    sc_GetMapBBufFromStreamMediaMapDictionary_cold_1(&v14);
    return v14;
  }

  v8 = a2;
  Value = CFDictionaryGetValue(*(a1 + 144), a2);
  if (!Value)
  {
    *a5 = 0;
LABEL_6:
    v12 = CFDictionaryGetValue(*(a1 + 152), a3);
    if (v12)
    {
      v12 = CFRetain(v12);
    }

    *a5 = v12;
    v8 = a3;
    goto LABEL_9;
  }

  v11 = CFRetain(Value);
  *a5 = v11;
  if (!v11)
  {
    goto LABEL_6;
  }

LABEL_9:
  result = 0;
  if (a4)
  {
    *a4 = v8;
  }

  return result;
}

uint64_t FigStreamingCacheRemoveMediaMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = a5;
  if (!a1)
  {
    FigStreamingCacheRemoveMediaMap_cold_6(&v25);
    return v25;
  }

  if (!a3)
  {
    FigStreamingCacheRemoveMediaMap_cold_5(&v25);
    return v25;
  }

  if (a4 < 0)
  {
    FigStreamingCacheRemoveMediaMap_cold_4(&v25);
    return v25;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v10 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"%@-%lld", a3, a4, valuePtr);
  if (!v10)
  {
    FigStreamingCacheRemoveMediaMap_cold_3(&v25);
    return v25;
  }

  v11 = v10;
  v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  if (!v12)
  {
    FigStreamingCacheRemoveMediaMap_cold_2();
    return v25;
  }

  v13 = v12;
  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheRemoveMediaMap_cold_1(&v25);
    v16 = v25;
  }

  else
  {
    v14 = *(a1 + 168);
    if (v14)
    {
      while (v14 != a2)
      {
        v14 = *(v14 + 8);
        if (!v14)
        {
          goto LABEL_10;
        }
      }

      CFDictionaryRemoveValue(*(v14 + 144), v11);
      CFDictionaryRemoveValue(*(v14 + 152), v13);
      if ((*(a1 + 220) & 2) != 0)
      {
        Value = CFDictionaryGetValue(*(v14 + 160), v11);
        if (!Value || (v19 = CFRetain(Value)) == 0)
        {
          v20 = CFDictionaryGetValue(*(v14 + 168), v13);
          if (v20)
          {
            v19 = CFRetain(v20);
          }

          else
          {
            v19 = 0;
          }
        }

        CFDictionaryRemoveValue(*(v14 + 160), v11);
        CFDictionaryRemoveValue(*(v14 + 168), v13);
        v21 = malloc_type_malloc(0x40uLL, 0x10600402F6BEFCEuLL);
        *v21 = CFRetain(a1);
        v21[1] = a2;
        v21[6] = CFRetain(v11);
        v21[5] = CFRetain(v13);
        if (v19)
        {
          v21[7] = CFRetain(v19);
          dispatch_async_f(*(a1 + 240), v21, sc_DeleteMediaMapFromDiskDispatchFunction);
          FigSimpleMutexUnlock();
          CFRelease(v19);
        }

        else
        {
          v21[7] = 0;
          dispatch_async_f(*(a1 + 240), v21, sc_DeleteMediaMapFromDiskDispatchFunction);
          FigSimpleMutexUnlock();
        }

        v16 = 0;
        goto LABEL_12;
      }

      v16 = 0;
    }

    else
    {
LABEL_10:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, valuePtr);
      v16 = v15;
    }
  }

  FigSimpleMutexUnlock();
LABEL_12:
  CFRelease(v11);
  CFRelease(v13);
  return v16;
}

uint64_t sc_DeleteMediaMapFromDiskDispatchFunction(uint64_t *a1)
{
  v2 = *a1;
  v3 = FigSimpleMutexLock();
  if (*(v2 + 272))
  {
    sc_DeleteMediaMapFromDiskDispatchFunction_cold_1(v3, v4, v5, v6, v7, v8, v9, v10, v19, v20, SHIDWORD(v20), v21);
    goto LABEL_6;
  }

  v11 = *(v2 + 168);
  if (!v11)
  {
LABEL_5:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21);
LABEL_6:
    FigSimpleMutexUnlock();
    goto LABEL_11;
  }

  while (v11 != a1[1])
  {
    v11 = *(v11 + 8);
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  v12 = CFRetain(*(v11 + 128));
  FigSimpleMutexUnlock();
  v13 = a1[7];
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v14)
  {
    v14(v12, v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

LABEL_11:
  v15 = a1[5];
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = a1[7];
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = a1[6];
  if (v17)
  {
    CFRelease(v17);
  }

  free(a1);

  return FigDeferCFRelease();
}

uint64_t FigStreamingCacheCopyCompletedMediaStreamURLs(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    FigStreamingCacheCopyCompletedMediaStreamURLs_cold_7(&v35);
    Mutable = 0;
    v10 = 0;
    v13 = v35;
    if (!v35)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

  if (!(a2 | a3))
  {
    FigStreamingCacheCopyCompletedMediaStreamURLs_cold_6(&v35);
    return v35;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheCopyCompletedMediaStreamURLs_cold_1(&v35);
    Mutable = 0;
    v10 = 0;
    v13 = v35;
    goto LABEL_17;
  }

  if ((*(a1 + 220) & 2) == 0)
  {
    Mutable = 0;
    v10 = 0;
    v13 = 0;
    goto LABEL_17;
  }

  v35 = 0;
  v34 = 0;
  v32 = 0;
  cf = 0;
  if (*(a1 + 280))
  {
    v6 = sc_UpgradePersistentStoreForWriting(a1, &v34);
    if (v6)
    {
      v13 = v6;
      Mutable = 0;
      v10 = 0;
    }

    else
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v9 = FigGetAllocatorForMedia();
        v10 = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
        if (v10)
        {
          v11 = *(a1 + 280);
          v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (v12)
          {
            v16 = v12(v11, &v35);
            if (!v16)
            {
              v17 = 0;
              v18 = *MEMORY[0x1E695E738];
              while (1)
              {
                Count = v35;
                if (v35)
                {
                  Count = CFArrayGetCount(v35);
                }

                if (v17 >= Count)
                {
                  v13 = 0;
                  goto LABEL_11;
                }

                v31 = 0;
                ValueAtIndex = CFArrayGetValueAtIndex(v35, v17);
                v21 = *(a1 + 280);
                v22 = *(*(CMBaseObjectGetVTable() + 16) + 64);
                if (!v22)
                {
                  goto LABEL_10;
                }

                v16 = v22(v21, ValueAtIndex, &v31);
                if (v16)
                {
                  break;
                }

                if (v31)
                {
                  v23 = *(a1 + 280);
                  v24 = *(*(CMBaseObjectGetVTable() + 16) + 72);
                  if (!v24)
                  {
                    goto LABEL_10;
                  }

                  v16 = v24(v23, ValueAtIndex, &cf);
                  if (v16)
                  {
                    break;
                  }

                  if (!cf)
                  {
                    FigStreamingCacheCopyCompletedMediaStreamURLs_cold_2(&v36);
                    goto LABEL_57;
                  }

                  v25 = *(a1 + 280);
                  v26 = *(*(CMBaseObjectGetVTable() + 16) + 80);
                  if (!v26)
                  {
                    goto LABEL_10;
                  }

                  v16 = v26(v25, ValueAtIndex, &v32);
                  if (v16)
                  {
                    break;
                  }

                  if (v32)
                  {
                    v27 = v32;
                  }

                  else
                  {
                    v27 = v18;
                  }

                  CFArrayAppendValue(Mutable, cf);
                  CFArrayAppendValue(v10, v27);
                }

                if (cf)
                {
                  CFRelease(cf);
                  cf = 0;
                }

                if (v32)
                {
                  CFRelease(v32);
                  v32 = 0;
                }

                ++v17;
              }
            }

            v13 = v16;
          }

          else
          {
LABEL_10:
            v13 = 4294954514;
          }

          goto LABEL_11;
        }

        FigStreamingCacheCopyCompletedMediaStreamURLs_cold_3(&v36);
      }

      else
      {
        FigStreamingCacheCopyCompletedMediaStreamURLs_cold_4(&v36);
        v10 = 0;
      }

LABEL_57:
      v13 = v36;
    }

LABEL_11:
    sc_RestorePersistentStoreLockStatus(a1, v34);
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_13;
  }

  FigStreamingCacheCopyCompletedMediaStreamURLs_cold_5(&v36);
  v10 = 0;
  Mutable = 0;
  v13 = v36;
LABEL_13:
  if (v32)
  {
    CFRelease(v32);
  }

  if (v35)
  {
    CFRelease(v35);
  }

LABEL_17:
  FigSimpleMutexUnlock();
  if (!v13)
  {
LABEL_18:
    if (a2)
    {
      v14 = FigGetAllocatorForMedia();
      if (Mutable)
      {
        Copy = CFArrayCreateCopy(v14, Mutable);
      }

      else
      {
        Copy = CFArrayCreate(v14, 0, 0, MEMORY[0x1E695E9C0]);
      }

      *a2 = Copy;
    }

    if (a3)
    {
      v28 = FigGetAllocatorForMedia();
      if (v10)
      {
        v29 = CFArrayCreateCopy(v28, v10);
      }

      else
      {
        v29 = CFArrayCreate(v28, 0, 0, MEMORY[0x1E695E9C0]);
      }

      *a3 = v29;
    }
  }

LABEL_50:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v13;
}

uint64_t FigStreamingCacheCleanupStreamsForPersisting(uint64_t a1, void *a2)
{
  v21 = 0;
  if (!a1)
  {
    FigStreamingCacheCleanupStreamsForPersisting_cold_3(&v22);
    return v22;
  }

  if (!a2)
  {
    FigStreamingCacheCleanupStreamsForPersisting_cold_2(&v22);
    return v22;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheCleanupStreamsForPersisting_cold_1(&v22);
    v18 = 0;
    v6 = v22;
    goto LABEL_34;
  }

  if ((*(a1 + 220) & 2) == 0)
  {
    FigSimpleMutexUnlock();
    v19 = MEMORY[0x1E695E4D0];
    goto LABEL_37;
  }

  v4 = sc_UpgradePersistentStoreForWriting(a1, &v21);
  if (v4)
  {
    v6 = v4;
    FigSimpleMutexUnlock();
    return v6;
  }

  v5 = *(a1 + 168);
  if (!v5)
  {
    v6 = 0;
    v7 = 1;
    goto LABEL_33;
  }

  v7 = 1;
  while (1)
  {
    LOBYTE(v22) = 0;
    if (!stream_EnsurePersistentStreamInfo(v5, &v22))
    {
      break;
    }

LABEL_31:
    v5 = *(v5 + 8);
    if (!v5)
    {
      v6 = 0;
      goto LABEL_33;
    }
  }

  if (*(v5 + 121))
  {
    if ((*(a1 + 220) & 2) != 0)
    {
      stream_UpgradePersistentStreamInfoForWriting(v5);
      if (v8)
      {
        goto LABEL_28;
      }

      v9 = *(a1 + 280);
      v10 = *(v5 + 136);
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 88);
      if (v11)
      {
        v11(v9, v10);
      }

      v12 = *(v5 + 128);
      if (v12)
      {
        CFRelease(v12);
        *(v5 + 128) = 0;
      }

      v13 = *(v5 + 136);
      if (v13)
      {
        CFRelease(v13);
        *(v5 + 136) = 0;
      }

      *(v5 + 176) = 0;
    }

    v14 = *(v5 + 24);
    if (v14)
    {
      do
      {
        v15 = v14;
        v14 = *(v14 + 8);
      }

      while (v14);
      while (1)
      {
        segment_EvictEntry(v15, 0, 1);
        v16 = *(v5 + 24);
        if (!v16)
        {
          break;
        }

        do
        {
          v15 = v16;
          v16 = *(v16 + 8);
        }

        while (v16);
      }
    }
  }

  else if (!*(v5 + 120))
  {
    v7 = 0;
  }

LABEL_28:
  if (!v22)
  {
    goto LABEL_31;
  }

  if (!*(v5 + 128))
  {
    goto LABEL_31;
  }

  stream_UnlockPersistentStreamInfoForAnything(v5);
  if (!v17)
  {
    goto LABEL_31;
  }

  v6 = v17;
LABEL_33:
  sc_RestorePersistentStoreLockStatus(a1, v21);
  v18 = v7 == 0;
LABEL_34:
  FigSimpleMutexUnlock();
  if (!v6)
  {
    v19 = MEMORY[0x1E695E4D0];
    if (v18)
    {
      v19 = MEMORY[0x1E695E4C0];
    }

LABEL_37:
    v6 = 0;
    *a2 = *v19;
  }

  return v6;
}

uint64_t sc_UpgradePersistentStoreForWriting(uint64_t a1, _DWORD *a2)
{
  if ((*(a1 + 220) & 2) == 0)
  {
    v8 = 2388;
LABEL_14:
    sc_UpgradePersistentStoreForWriting_cold_1(v8, &v9);
    v3 = v9;
    goto LABEL_15;
  }

  if (!*(a1 + 280))
  {
    v8 = 2389;
    goto LABEL_14;
  }

  if (!a2)
  {
    v8 = 2390;
    goto LABEL_14;
  }

  v3 = 0;
  v4 = *(a1 + 288);
  *a2 = v4;
  if ((*(a1 + 220) & 2) == 0 || (v4 & 2) != 0)
  {
    return v3;
  }

  FigGetUpTimeNanoseconds();
  v5 = *(a1 + 280);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v6)
  {
    FigGetUpTimeNanoseconds();
    return 4294954514;
  }

  v3 = v6(v5, 1, 0);
  FigGetUpTimeNanoseconds();
  if (!v3)
  {
    *(a1 + 288) |= 3u;
    return v3;
  }

LABEL_15:
  if (v3 == -16914)
  {
    *(a1 + 288) &= 0xFFFFFFFC;
    return 4294950382;
  }

  return v3;
}

uint64_t FigStreamingCacheFlushIO(uint64_t a1, uint64_t *a2)
{
  if (!a1)
  {
    FigStreamingCacheFlushIO_cold_3(&v12);
    return v12;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheFlushIO_cold_1(&v10);
    v6 = v10;
    goto LABEL_11;
  }

  v4 = *(a1 + 256) + 1;
  *(a1 + 256) = v4;
  if ((*(a1 + 220) & 2) != 0)
  {
    v7 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040EDED9539uLL);
    if (!v7)
    {
      FigStreamingCacheFlushIO_cold_2(&v11);
      v6 = v11;
      goto LABEL_11;
    }

    v8 = v7;
    *v7 = CFRetain(a1);
    v8[1] = v4;
    dispatch_async_f(*(a1 + 240), v8, sc_FlushIOCompleteDispatchFunction);
    if (!a2)
    {
      v6 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v5 = sc_PostFlushIOCompletedNotification(a1, v4);
    v6 = v5;
    if (!a2 || v5)
    {
      goto LABEL_11;
    }
  }

  v6 = 0;
  *a2 = v4;
LABEL_11:
  FigSimpleMutexUnlock();
  return v6;
}

void sc_FlushIOCompleteDispatchFunction(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = FigSimpleMutexLock();
  if (*(v2 + 272))
  {
    sc_FlushIOCompleteDispatchFunction_cold_1(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16, SHIDWORD(v16), v17);
  }

  else
  {
    v12 = *(v2 + 168);
    while (v12)
    {
      v14 = v12;
      v12 = *(v12 + 8);
      if (*(v14 + 128))
      {
        stream_UpgradePersistentStreamInfoForWriting(v14);
        if (!v13)
        {
          stream_CommitPersistentStreamInfoIfNecessary(v14);
          if (*(v14 + 120))
          {
            if (!*(v14 + 121))
            {
              stream_DowngradePersistentStreamInfoForReading(v14);
            }
          }
        }
      }
    }

    if (v3 != -1)
    {
      sc_PostFlushIOCompletedNotification(v2, v3);
    }
  }

  FigSimpleMutexUnlock();
  FigDeferCFRelease();

  free(a1);
}

uint64_t sc_PostFlushIOCompletedNotification(uint64_t a1, uint64_t a2)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    sc_PostFlushIOCompletedNotification_cold_1(Mutable, a2, a1);
    return v7;
  }

  else
  {
    sc_PostFlushIOCompletedNotification_cold_2(&v8);
    return v8;
  }
}

uint64_t FigStreamingCacheFlushIOSync(uint64_t a1)
{
  if (!a1)
  {
    FigStreamingCacheFlushIOSync_cold_2(&v10);
    v3 = 0;
    v4 = v10;
    goto LABEL_6;
  }

  v2 = a1 + 16;
  FigSimpleMutexLock();
  if (!*(v2 + 256) && (*(a1 + 220) & 2) != 0)
  {
    dispatch_retain(*(a1 + 240));
    v6 = *(a1 + 240);
    v7 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040EDED9539uLL);
    if (v7)
    {
      v3 = v7;
      *v7 = CFRetain(a1);
      v3[1] = -1;
      FigSimpleMutexUnlock();
      if (!v6)
      {
        goto LABEL_5;
      }

      dispatch_sync_f(v6, v3, sc_FlushIOCompleteDispatchFunction);
      v4 = 0;
    }

    else
    {
      v8 = FigStreamingCacheFlushIOSync_cold_1(v2, v6, &v9);
      v4 = v9;
      if (v8)
      {
        goto LABEL_11;
      }
    }

    dispatch_release(v6);
LABEL_11:
    v3 = 0;
    goto LABEL_6;
  }

  FigSimpleMutexUnlock();
  v3 = 0;
LABEL_5:
  v4 = 0;
LABEL_6:
  free(v3);
  return v4;
}

uint64_t FigStreamingCacheInvalidate(uint64_t a1)
{
  if (a1)
  {
    figStreamingCacheInvalidate(a1);
  }

  return 0;
}

uint64_t figStreamingCacheInvalidate(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17CD8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (!*(a1 + 272))
  {
    *(a1 + 272) = 1;
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    if ((*(a1 + 220) & 2) != 0)
    {
      if (*(a1 + 240))
      {
        FigSimpleMutexUnlock();
        dispatch_sync_f(*(a1 + 240), 0, sc_EmptyDispatchFunc);
        FigSimpleMutexLock();
        v3 = *(a1 + 168);
        if (v3)
        {
          do
          {
            v4 = *(v3 + 8);
            if (*(v3 + 128))
            {
              stream_CommitPersistentStreamInfoIfNecessary(v3);
            }

            v3 = v4;
          }

          while (v4);
        }
      }

      if (*(a1 + 280))
      {
        if ((*(a1 + 220) & 2) != 0 && !*(a1 + 40))
        {
          FigShared_CheckIntoDiskCache(*(a1 + 32));
        }

        FigHLSPersistentStoreGetFigBaseObject();
        if (v5)
        {
          v6 = v5;
          v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v7)
          {
            v7(v6);
          }
        }
      }
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 32) = 0;
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 40) = 0;
    }

    v10 = *(a1 + 24);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 24) = 0;
    }

    v11 = *(a1 + 48);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 48) = 0;
    }

    v12 = *(a1 + 56);
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 56) = 0;
    }

    v13 = *(a1 + 280);
    if (v13)
    {
      CFRelease(v13);
      *(a1 + 280) = 0;
    }

    v14 = *(a1 + 120);
    if (v14)
    {
      CFRelease(v14);
      *(a1 + 120) = 0;
    }

    v15 = *(a1 + 128);
    if (v15)
    {
      CFRelease(v15);
      *(a1 + 128) = 0;
    }

    v16 = *(a1 + 160);
    if (v16)
    {
      CFRelease(v16);
      *(a1 + 160) = 0;
    }

    v17 = *(a1 + 232);
    if (v17)
    {
      CFRelease(v17);
      *(a1 + 232) = 0;
    }

    v18 = *(a1 + 224);
    if (v18)
    {
      CFRelease(v18);
      *(a1 + 224) = 0;
    }

    v19 = *(a1 + 136);
    if (v19)
    {
      CFRelease(v19);
      *(a1 + 136) = 0;
    }

    v20 = *(a1 + 296);
    if (v20)
    {
      CFRelease(v20);
      *(a1 + 296) = 0;
    }

    v21 = *(a1 + 248);
    if (v21)
    {
      dispatch_release(v21);
      *(a1 + 248) = 0;
    }

    v22 = *(a1 + 168);
    while (v22)
    {
      v23 = v22;
      v22 = v22[1];
      v24 = v23[3];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *(v24 + 8);
        }

        while (v24);
        do
        {
          started = MediaSegmentStartTimeList_RB_NEXT(v25);
          segment_EvictEntry(v25, 1, 0);
          v25 = started;
        }

        while (started);
      }

      if (v23[4])
      {
        figStreamingCacheInvalidate_cold_1();
      }

      if (v23[3])
      {
        figStreamingCacheInvalidate_cold_2();
      }

      v27 = v23[9];
      if (v27)
      {
        CFRelease(v27);
        v23[9] = 0;
      }

      v28 = v23[8];
      if (v28)
      {
        CFRelease(v28);
        v23[8] = 0;
      }

      v29 = v23[13];
      if (v29)
      {
        CFRelease(v29);
        v23[13] = 0;
      }

      v30 = v23[11];
      if (v30)
      {
        CFRelease(v30);
        v23[11] = 0;
      }

      v31 = v23[14];
      if (v31)
      {
        CFRelease(v31);
        v23[14] = 0;
      }

      v32 = v23[6];
      if (v32)
      {
        CFRelease(v32);
        v23[6] = 0;
      }

      v33 = v23[17];
      if (v33)
      {
        CFRelease(v33);
        v23[17] = 0;
      }

      v34 = v23[18];
      if (v34)
      {
        CFRelease(v34);
        v23[18] = 0;
      }

      v35 = v23[19];
      if (v35)
      {
        CFRelease(v35);
        v23[19] = 0;
      }

      v36 = v23[20];
      if (v36)
      {
        CFRelease(v36);
        v23[20] = 0;
      }

      v37 = v23[21];
      if (v37)
      {
        CFRelease(v37);
        v23[21] = 0;
      }

      if (v23[16])
      {
        FigHLSPersistentStreamInfoGetFigBaseObject();
        if (v38)
        {
          v39 = v38;
          v40 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v40)
          {
            v40(v39);
          }
        }

        v41 = v23[16];
        if (v41)
        {
          CFRelease(v41);
        }
      }

      free(v23);
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t FigStreamingCacheSetCryptKey(uint64_t a1, const void *a2, const void *a3)
{
  if (!a1)
  {
    FigStreamingCacheSetCryptKey_cold_4(&v8);
    return v8;
  }

  if (!a2)
  {
    FigStreamingCacheSetCryptKey_cold_3(&v8);
    return v8;
  }

  if (!a3)
  {
    FigStreamingCacheSetCryptKey_cold_2(&v8);
    return v8;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheSetCryptKey_cold_1(&v8);
    v6 = v8;
  }

  else if ((*(a1 + 220) & 2) != 0)
  {
    v6 = sc_writeMetadataToDisk(a1, a2, a3, @"ContentCryptKey");
  }

  else
  {
    v6 = 0;
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t sc_writeMetadataToDisk(dispatch_queue_t *a1, const void *a2, const void *a3, const void *a4)
{
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        v8 = malloc_type_malloc(0x20uLL, 0x60040DC1F003FuLL);
        if (a1)
        {
          v9 = CFRetain(a1);
        }

        else
        {
          v9 = 0;
        }

        *v8 = v9;
        v8[1] = CFRetain(a2);
        v8[2] = CFRetain(a3);
        v8[3] = CFRetain(a4);
        dispatch_async_f(a1[30], v8, sc_WriteMetadataToDiskDispatchFunction);
        return 0;
      }

      else
      {
        sc_writeMetadataToDisk_cold_1(&v11);
        return v11;
      }
    }

    else
    {
      sc_writeMetadataToDisk_cold_2(&v12);
      return v12;
    }
  }

  else
  {
    sc_writeMetadataToDisk_cold_3(&v13);
    return v13;
  }
}

uint64_t FigStreamingCacheCopyCryptKey(uint64_t a1, const void *a2, void *a3)
{
  cf = 0;
  if (!a1)
  {
    FigStreamingCacheCopyCryptKey_cold_4(&v11);
    return v11;
  }

  if (!a2)
  {
    FigStreamingCacheCopyCryptKey_cold_3(&v11);
    return v11;
  }

  if (!a3)
  {
    FigStreamingCacheCopyCryptKey_cold_2(&v11);
    return v11;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheCopyCryptKey_cold_1(&v11);
    v8 = v11;
  }

  else if ((*(a1 + 220) & 2) != 0)
  {
    sc_copyMetadataFromDisk(a1, a2, @"ContentCryptKey", &cf);
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v7 = cf;
      if (cf)
      {
        v7 = CFRetain(cf);
      }

      v8 = 0;
      *a3 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t FigStreamingCacheSetChapterArtwork(uint64_t a1, const void *a2, const void *a3)
{
  if (!a1)
  {
    FigStreamingCacheSetChapterArtwork_cold_4(&v8);
    return v8;
  }

  if (!a2)
  {
    FigStreamingCacheSetChapterArtwork_cold_3(&v8);
    return v8;
  }

  if (!a3)
  {
    FigStreamingCacheSetChapterArtwork_cold_2(&v8);
    return v8;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheSetChapterArtwork_cold_1(&v8);
    v6 = v8;
  }

  else if ((*(a1 + 220) & 2) != 0)
  {
    v6 = sc_writeMetadataToDisk(a1, a2, a3, @"ChapterArtwork");
  }

  else
  {
    v6 = 0;
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t FigStreamingCacheCopyChapterArtwork(uint64_t a1, const void *a2, void *a3)
{
  cf = 0;
  if (!a1)
  {
    FigStreamingCacheCopyChapterArtwork_cold_4(&v11);
    return v11;
  }

  if (!a2)
  {
    FigStreamingCacheCopyChapterArtwork_cold_3(&v11);
    return v11;
  }

  if (!a3)
  {
    FigStreamingCacheCopyChapterArtwork_cold_2(&v11);
    return v11;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheCopyChapterArtwork_cold_1(&v11);
    v8 = v11;
  }

  else if ((*(a1 + 220) & 2) != 0)
  {
    sc_copyMetadataFromDisk(a1, a2, @"ChapterArtwork", &cf);
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v7 = cf;
      if (cf)
      {
        v7 = CFRetain(cf);
      }

      v8 = 0;
      *a3 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t FigStreamingCacheSetSessionData(uint64_t a1, const void *a2, const void *a3)
{
  if (a1)
  {
    FigSimpleMutexLock();
    if (*(a1 + 272))
    {
      FigStreamingCacheSetSessionData_cold_1(&v8);
      v6 = v8;
    }

    else if ((*(a1 + 220) & 2) != 0)
    {
      v6 = sc_writeMetadataToDisk(a1, a2, a3, @"SessionData");
    }

    else
    {
      v6 = 0;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    FigStreamingCacheSetSessionData_cold_2(&v9);
    return v9;
  }

  return v6;
}

uint64_t FigStreamingCacheCopySessionData(uint64_t a1, const void *a2, void *a3)
{
  cf = 0;
  if (!a1)
  {
    FigStreamingCacheCopySessionData_cold_4(&v11);
    return v11;
  }

  if (!a2)
  {
    FigStreamingCacheCopySessionData_cold_3(&v11);
    return v11;
  }

  if (!a3)
  {
    FigStreamingCacheCopySessionData_cold_2(&v11);
    return v11;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheCopySessionData_cold_1(&v11);
    v8 = v11;
  }

  else if ((*(a1 + 220) & 2) != 0)
  {
    sc_copyMetadataFromDisk(a1, a2, @"SessionData", &cf);
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v7 = cf;
      if (cf)
      {
        v7 = CFRetain(cf);
      }

      v8 = 0;
      *a3 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t FigStreamingCacheHintPlaybackTime(uint64_t a1, double a2)
{
  if (a1)
  {
    FigSimpleMutexLock();
    if (*(a1 + 272))
    {
      FigStreamingCacheHintPlaybackTime_cold_1(&v8);
      v6 = v8;
    }

    else
    {
      if (!*(a1 + 217))
      {
        goto LABEL_13;
      }

      v4 = *(a1 + 200);
      if (*(a1 + 220))
      {
        if (v4 <= a2)
        {
          v5 = a2;
        }

        else
        {
          v5 = *(a1 + 200);
        }

        if (*(a1 + 208) >= v5)
        {
          a2 = v5;
        }

        else
        {
          a2 = *(a1 + 208);
        }
      }

      if (a2 < v4 || a2 > *(a1 + 208))
      {
        FigStreamingCacheHintPlaybackTime_cold_2(&v9);
        v6 = v9;
      }

      else
      {
LABEL_13:
        v6 = 0;
        *(a1 + 192) = a2;
        *(a1 + 216) = 1;
      }
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    FigStreamingCacheHintPlaybackTime_cold_3(&v10);
    return v10;
  }

  return v6;
}

uint64_t FigStreamingCacheSetCacheTimeRange(uint64_t a1, double a2, double a3)
{
  if (a1)
  {
    if (a2 > a3)
    {
      FigStreamingCacheSetCacheTimeRange_cold_2(&v15);
      return v15;
    }

    else
    {
      FigSimpleMutexLock();
      if (*(a1 + 272))
      {
        FigStreamingCacheSetCacheTimeRange_cold_1(&v14);
        i = v14;
      }

      else
      {
        *(a1 + 200) = a2;
        *(a1 + 208) = a3;
        *(a1 + 217) = 1;
        for (i = *(a1 + 168); i; i = *(i + 8))
        {
          if (*(i + 121))
          {
            v7 = *(i + 24);
            if (v7)
            {
              v8 = *(i + 24);
              do
              {
                v9 = v8;
                v8 = *(v8 + 8);
              }

              while (v8);
              while (*(v9 + 120) + *(v9 + 128) <= *(a1 + 200))
              {
                segment_EvictEntry(v9, 0, 1);
                v7 = *(i + 24);
                if (!v7)
                {
                  goto LABEL_20;
                }

                v10 = *(i + 24);
                do
                {
                  v9 = v10;
                  v10 = *(v10 + 8);
                }

                while (v10);
              }

              do
              {
                v11 = v7;
                v7 = *(v7 + 16);
              }

              while (v7);
              while (*(v11 + 120) >= *(a1 + 208))
              {
                segment_EvictEntry(v11, 0, 1);
                v12 = *(i + 24);
                if (!v12)
                {
                  break;
                }

                do
                {
                  v11 = v12;
                  v12 = *(v12 + 16);
                }

                while (v12);
              }
            }
          }

LABEL_20:
          ;
        }
      }

      FigSimpleMutexUnlock();
    }
  }

  else
  {
    FigStreamingCacheSetCacheTimeRange_cold_3(&v16);
    return v16;
  }

  return i;
}

uint64_t FigStreamingCacheCreateMediaStream(uint64_t a1, uint64_t a2, __CFSet *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v18 = 0;
  v17 = 0;
  if (a1)
  {
    if (a3)
    {
      v9 = a5;
      if ((a5 & 0x80000000) == 0)
      {
        if (!a7)
        {
          FigStreamingCacheCreateMediaStream_cold_2(&v19);
          return v19;
        }

        v10 = a6;
        FigSimpleMutexLock();
        if (*(a1 + 272))
        {
          FigStreamingCacheCreateMediaStream_cold_1(&v19);
          v15 = v19;
        }

        else
        {
          v14 = sc_CreateAndAddStreamEntry(a1, a2, a3, a4, v9, v10, &v17, &v18);
          if (!v14)
          {
            if ((*(a1 + 220) & 2) == 0)
            {
              v15 = 0;
              goto LABEL_9;
            }

            v14 = stream_EnsurePersistentStreamInfo(v18, 0);
          }

          v15 = v14;
        }

LABEL_9:
        FigSimpleMutexUnlock();
        if (!a7)
        {
          return v15;
        }

        goto LABEL_10;
      }

      FigStreamingCacheCreateMediaStream_cold_3(&v19);
    }

    else
    {
      FigStreamingCacheCreateMediaStream_cold_4(&v19);
    }
  }

  else
  {
    FigStreamingCacheCreateMediaStream_cold_5(&v19);
  }

  v15 = v19;
  if (!a7)
  {
    return v15;
  }

LABEL_10:
  if (!v15)
  {
    *a7 = v18;
  }

  return v15;
}

uint64_t sc_CreateAndAddStreamEntry(void *a1, uint64_t a2, __CFSet *a3, const void *a4, int a5, char a6, char *a7, void *a8)
{
  v8 = a7;
  v9 = a1;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  memset(v39, 0, sizeof(v39));
  if (!a1)
  {
    sc_CreateAndAddStreamEntry_cold_10(v49);
    v16 = 0;
    v10 = 0;
LABEL_49:
    v19 = 0;
    v18 = 0;
    v32 = v49[0];
LABEL_58:
    if (v32)
    {
      if (v16)
      {
        free(v16);
      }

      v17 = 0;
      if (v10)
      {
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    v17 = 0;
    v20 = 0;
LABEL_15:
    v21 = a8;
    if (!a8)
    {
      goto LABEL_30;
    }

LABEL_29:
    *v21 = v16;
    goto LABEL_30;
  }

  v10 = a3;
  if (!a3)
  {
    sc_CreateAndAddStreamEntry_cold_9(v49);
    v16 = 0;
LABEL_48:
    v9 = 0;
    goto LABEL_49;
  }

  if (a5 < 0)
  {
    sc_CreateAndAddStreamEntry_cold_8(v49);
LABEL_47:
    v16 = 0;
    v10 = 0;
    goto LABEL_48;
  }

  if (!a8)
  {
    sc_CreateAndAddStreamEntry_cold_7(v49);
    goto LABEL_47;
  }

  v14 = a2;
  DWORD2(v40) = a2;
  *&v41 = a3;
  *(&v41 + 1) = a4;
  LODWORD(v42) = a5;
  LOBYTE(v49[0]) = 0;
  v15 = a1[21];
  if (v15)
  {
    v16 = 0;
    do
    {
      if (sc_MatchMediaStreamWithAttributes(v15, a2, v39, v49))
      {
        v16 = v15;
      }

      if (LOBYTE(v49[0]))
      {
        break;
      }

      v15 = v15[1];
    }

    while (v15);
    if (v16)
    {
      v8 = a7;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v9 = 0;
      v10 = 0;
      if (*(v16 + 14) == -1)
      {
        *(v16 + 14) = v14;
      }

      v20 = 1;
      goto LABEL_15;
    }
  }

  v16 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10E004082C26414uLL);
  if (!v16)
  {
    sc_CreateAndAddStreamEntry_cold_6(v49);
LABEL_52:
    v10 = 0;
    v9 = 0;
    v19 = 0;
    v18 = 0;
    v32 = v49[0];
    v8 = a7;
    goto LABEL_58;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  cf = CFSetCreateMutable(AllocatorForMedia, 0, 0);
  if (!cf)
  {
    sc_CreateAndAddStreamEntry_cold_5(v49);
    goto LABEL_52;
  }

  v23 = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(v23, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    sc_CreateAndAddStreamEntry_cold_4(v49);
    v9 = 0;
    v19 = 0;
    v18 = 0;
    v32 = v49[0];
    v10 = cf;
    v8 = a7;
    goto LABEL_58;
  }

  v24 = FigGetAllocatorForMedia();
  v34 = CFDictionaryCreateMutable(v24, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v34)
  {
    sc_CreateAndAddStreamEntry_cold_3(v49);
    v19 = 0;
    v18 = 0;
    v32 = v49[0];
    v10 = cf;
    v8 = a7;
    v9 = Mutable;
    goto LABEL_58;
  }

  v25 = FigGetAllocatorForMedia();
  v18 = CFDictionaryCreateMutable(v25, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v18)
  {
    sc_CreateAndAddStreamEntry_cold_2(v49);
LABEL_57:
    v32 = v49[0];
    v10 = cf;
    v8 = a7;
    v19 = v34;
    v9 = Mutable;
    goto LABEL_58;
  }

  v26 = FigGetAllocatorForMedia();
  v27 = CFDictionaryCreateMutable(v26, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v27)
  {
    sc_CreateAndAddStreamEntry_cold_1(v49);
    goto LABEL_57;
  }

  v17 = v27;
  v16[6] = CFRetain(cf);
  v16[18] = CFRetain(Mutable);
  v16[19] = CFRetain(v34);
  v16[20] = CFRetain(v18);
  v16[21] = CFRetain(v17);
  *(v16 + 14) = v14;
  v16[8] = CFRetain(v10);
  if (a4)
  {
    v28 = CFRetain(a4);
  }

  else
  {
    v28 = 0;
  }

  v20 = 0;
  v16[9] = v28;
  *(v16 + 20) = a5;
  *(v16 + 84) = a6;
  *v16 = v9;
  *(v16 + 121) = 1;
  v16[3] = 0;
  v16[4] = 0;
  v29 = v9[21];
  v16[1] = v29;
  v30 = v29 == 0;
  v31 = (v29 + 16);
  if (v30)
  {
    v31 = v9 + 22;
  }

  *v31 = v16 + 1;
  v9[21] = v16;
  v16[2] = v9 + 21;
  v8 = a7;
  v21 = a8;
  v9 = Mutable;
  v10 = cf;
  v19 = v34;
  if (a8)
  {
    goto LABEL_29;
  }

LABEL_30:
  v32 = 0;
  if (v8)
  {
    *v8 = v20;
  }

  if (v10)
  {
LABEL_33:
    CFRelease(v10);
  }

LABEL_34:
  if (v9)
  {
    CFRelease(v9);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v32;
}

uint64_t FigStreamingCacheCopyAllStreamsMetadata(uint64_t a1, __CFArray **a2)
{
  value = 0;
  if (!a1)
  {
    FigStreamingCacheCopyAllStreamsMetadata_cold_5(&v20);
LABEL_33:
    v17 = v20;
    goto LABEL_26;
  }

  if (!a2)
  {
    FigStreamingCacheCopyAllStreamsMetadata_cold_4(&v20);
    goto LABEL_33;
  }

  FigSimpleMutexLock();
  if (*(a1 + 272))
  {
    FigStreamingCacheCopyAllStreamsMetadata_cold_1(&v20);
    Mutable = 0;
  }

  else
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v6 = *(a1 + 168);
      if (v6)
      {
        v7 = MEMORY[0x1E695E9E8];
        v8 = *MEMORY[0x1E695E4D0];
        while (1)
        {
          v9 = FigGetAllocatorForMedia();
          v10 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], v7);
          if (!v10)
          {
            FigStreamingCacheCopyAllStreamsMetadata_cold_2(&v20);
            goto LABEL_36;
          }

          v11 = v10;
          v12 = *(v6 + 64);
          if (v12)
          {
            CFDictionaryAddValue(v10, @"SMD_URL", v12);
          }

          v13 = *(v6 + 72);
          if (v13)
          {
            CFDictionaryAddValue(v11, @"SMD_StableStreamIdentifier", v13);
          }

          if (*(v6 + 84))
          {
            CFDictionaryAddValue(v11, @"SMD_MediaIsCompressible", v8);
          }

          FigCFDictionarySetInt32();
          FigCFDictionarySetInt32();
          sc_CopyPlaylistForStream(a1, v6, &value);
          if (v14)
          {
            break;
          }

          v15 = value;
          if (value)
          {
            CFDictionaryAddValue(v11, @"SMD_PlaylistData", value);
          }

          v16 = *(v6 + 112);
          if (v16)
          {
            CFDictionaryAddValue(v11, @"SMD_HTTPResponseHeaders", v16);
          }

          CFArrayAppendValue(Mutable, v11);
          CFRelease(v11);
          if (v15)
          {
            CFRelease(v15);
            value = 0;
          }

          v6 = *(v6 + 8);
          if (!v6)
          {
            goto LABEL_22;
          }
        }

        v17 = v14;
      }

      else
      {
LABEL_22:
        v17 = 0;
        *a2 = Mutable;
      }

      goto LABEL_23;
    }

    FigStreamingCacheCopyAllStreamsMetadata_cold_3(&v20);
  }

LABEL_36:
  v17 = v20;
LABEL_23:
  FigSimpleMutexUnlock();
  if (v17 && Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_26:
  if (value)
  {
    CFRelease(value);
  }

  return v17;
}