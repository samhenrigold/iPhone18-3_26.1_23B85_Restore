double FigVideoReceiverForBufferDeliveryProvideFrameTelemetryForSamplingEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (FigVideoReceiverIsForBufferDelivery(a1))
  {
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 168);
    if (v7)
    {

      v7(a1, a2, a3);
    }
  }

  else
  {
    v9 = qword_1ED4CBE88;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294951724, "<<<< FigVideoReceiverForBufferDelivery >>>>", 5336, v3);
  }

  return result;
}

double FigVideoReceiverForBufferDeliveryCreateEndpointID(uint64_t a1, uint64_t a2)
{
  if (FigVideoReceiverIsForBufferDelivery(a1))
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v5)
    {

      v5(a1, a2);
    }
  }

  else
  {
    v7 = qword_1ED4CBE88;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 4294951724, "<<<< FigVideoReceiverForBufferDelivery >>>>", 5346, v2);
  }

  return result;
}

double FigVideoReceiverForBufferDeliveryCreatePlaybackStartupPreventionAssertion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (FigVideoReceiverIsForBufferDelivery(a1))
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v9)
    {

      v9(a1, a2, a3, a4);
    }
  }

  else
  {
    v11 = qword_1ED4CBE88;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 4294951724, "<<<< FigVideoReceiverForBufferDelivery >>>>", 5358, v4);
  }

  return result;
}

double FigVideoReceiverForBufferDeliverySetResourceLifeCycleHandler(uint64_t a1, uint64_t a2)
{
  if (FigVideoReceiverIsForBufferDelivery(a1))
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 176);
    if (v5)
    {

      v5(a1, a2);
    }
  }

  else
  {
    v7 = qword_1ED4CBE88;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 4294951724, "<<<< FigVideoReceiverForBufferDelivery >>>>", 5368, v2);
  }

  return result;
}

double FigVideoReceiverForBufferDeliverySetPrepareDataChannelsWithDependentResourcesHandler(uint64_t a1, uint64_t a2)
{
  if (FigVideoReceiverIsForBufferDelivery(a1))
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 184);
    if (v5)
    {

      v5(a1, a2);
    }
  }

  else
  {
    v7 = qword_1ED4CBE88;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 4294951724, "<<<< FigVideoReceiverForBufferDelivery >>>>", 5378, v2);
  }

  return result;
}

double FigVideoReceiverForBufferDeliverySpecifyDataChannelSettingsWithID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (FigVideoReceiverIsForBufferDelivery(a1))
  {
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v7)
    {

      v7(a1, a2, a3);
    }
  }

  else
  {
    v9 = qword_1ED4CBE88;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294951724, "<<<< FigVideoReceiverForBufferDelivery >>>>", 5389, v3);
  }

  return result;
}

double FigVideoReceiverForBufferDeliverySpecifyPreferredDataChannelGroupsWithID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (FigVideoReceiverIsForBufferDelivery(a1))
  {
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v7)
    {

      v7(a1, a2, a3);
    }
  }

  else
  {
    v9 = qword_1ED4CBE88;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294951724, "<<<< FigVideoReceiverForBufferDelivery >>>>", 5400, v3);
  }

  return result;
}

double FigVideoReceiverForBufferDeliverySetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (FigVideoReceiverIsForBufferDelivery(a1))
  {
    FigVideoReceiverGetCMBaseObject();
    v7 = v6;
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v8)
    {

      v8(v7, a2, a3);
    }
  }

  else
  {
    v10 = qword_1ED4CBE88;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 4294951724, "<<<< FigVideoReceiverForBufferDelivery >>>>", 5411, v3);
  }

  return result;
}

double FigVideoReceiverForBufferDeliveryCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (FigVideoReceiverIsForBufferDelivery(a1))
  {
    FigVideoReceiverGetCMBaseObject();
    v9 = v8;
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {

      v10(v9, a2, a3, a4);
    }
  }

  else
  {
    v12 = qword_1ED4CBE88;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 4294951724, "<<<< FigVideoReceiverForBufferDelivery >>>>", 5423, v4);
  }

  return result;
}

uint64_t FigVideoReceiverForBufferDeliverySetDataChannelEventHandler(uint64_t a1, NSObject *a2, const void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3002000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  if (dword_1ED4CBE90 >= 2)
  {
    v15 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (FigVideoReceiverIsForBufferDelivery(a1))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = _Block_copy(a3);
    if (a2)
    {
      dispatch_retain(a2);
    }

    v9 = *(DerivedStorage + 264);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __FigVideoReceiverForBufferDeliverySetDataChannelEventHandler_block_invoke;
    block[3] = &unk_1E7483508;
    block[4] = v8;
    block[5] = &v20;
    block[6] = &v16;
    block[7] = DerivedStorage;
    block[8] = a2;
    dispatch_sync(v9, block);
    atomic_store(a3 != 0, (DerivedStorage + 624));
    v10 = v17[3];
    if (v10)
    {
      dispatch_release(v10);
    }

    _Block_release(v21[5]);
    v11 = 0;
  }

  else
  {
    FigVideoReceiverForBufferDeliverySetDataChannelEventHandler_cold_1(v26);
    v11 = v26[0];
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  return v11;
}

void *__FigVideoReceiverForBufferDeliverySetDataChannelEventHandler_block_invoke(void *result)
{
  *(*(result[5] + 8) + 40) = *(result[7] + 608);
  v1 = result[7];
  *(v1 + 608) = result[4];
  *(*(result[6] + 8) + 24) = *(v1 + 616);
  *(result[7] + 616) = result[8];
  return result;
}

uint64_t __receiverPlaybackStartupPreventionAssertion_finalize_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void videoReceiver_Finalize(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBE90)
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

  v5 = *(DerivedStorage + 24);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 24) = 0;
  }

  v6 = *(DerivedStorage + 32);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 32) = 0;
  }

  v7 = *(DerivedStorage + 48);
  time = **&MEMORY[0x1E6960C70];
  FigVideoReceiverConfigurationSchedulerSetConfigurationIsReadyToActivateCallack(v7, &time, 0, 0);
  FigVideoReceiverConfigurationSchedulerSetConfigurationWasRemovedCallback(*(DerivedStorage + 48), 0, 0);
  v8 = *(DerivedStorage + 48);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 48) = 0;
  }

  v9 = *(DerivedStorage + 56);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 56) = 0;
  }

  v10 = *(DerivedStorage + 80);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 80) = 0;
  }

  v11 = *(DerivedStorage + 72);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 72) = 0;
  }

  v12 = *(DerivedStorage + 144);
  if (v12)
  {
    dispatch_release(v12);
  }

  v13 = *(DerivedStorage + 64);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 64) = 0;
  }

  v14 = *(DerivedStorage + 264);
  if (v14)
  {
    dispatch_release(v14);
    *(DerivedStorage + 264) = 0;
  }

  _Block_release(*(DerivedStorage + 424));
  *(DerivedStorage + 424) = 0;
  _Block_release(*(DerivedStorage + 432));
  *(DerivedStorage + 432) = 0;
  FigSimpleMutexDestroy();
  _Block_release(*(DerivedStorage + 448));
  *(DerivedStorage + 448) = 0;
  _Block_release(*(DerivedStorage + 608));
  *(DerivedStorage + 608) = 0;
  v15 = *(DerivedStorage + 616);
  if (v15)
  {
    dispatch_release(v15);
    *(DerivedStorage + 616) = 0;
  }

  if (*(DerivedStorage + 632))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 632) = 0;
  }

  v16 = *(DerivedStorage + 288);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 288) = 0;
  }

  FigSimpleMutexDestroy();
  v17 = *(DerivedStorage + 312);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 312) = 0;
  }

  v18 = *(DerivedStorage + 320);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 320) = 0;
  }

  FigSimpleMutexDestroy();
  FigImageQueueDisplayCountHistory_FinishTracingDisplayCount(*(DerivedStorage + 344));
  v19 = *(DerivedStorage + 344);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 344) = 0;
  }

  v20 = *(DerivedStorage + 352);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 352) = 0;
  }

  v21 = *(DerivedStorage + 384);
  if (v21)
  {
    CFRelease(v21);
    *(DerivedStorage + 384) = 0;
  }

  v22 = *(DerivedStorage + 392);
  if (v22)
  {
    CFRelease(v22);
    *(DerivedStorage + 392) = 0;
  }

  v23 = *(DerivedStorage + 400);
  if (v23)
  {
    CFRelease(v23);
    *(DerivedStorage + 400) = 0;
  }

  if (*(DerivedStorage + 456))
  {
    v24 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v24)
    {
      v25 = v24;
      receiverPlaybackStartupPreventionAssertion_setAssertionFinalizedHandler(v24, 0);
      CFRelease(v25);
    }

    v26 = *(DerivedStorage + 456);
    if (v26)
    {
      CFRelease(v26);
      *(DerivedStorage + 456) = 0;
    }
  }

  v27 = *(DerivedStorage + 464);
  if (v27)
  {
    CFRelease(v27);
    *(DerivedStorage + 464) = 0;
  }

  v28 = *(DerivedStorage + 472);
  if (v28)
  {
    CFRelease(v28);
    *(DerivedStorage + 472) = 0;
  }

  v29 = *(DerivedStorage + 600);
  if (v29)
  {
    dispatch_release(v29);
    *(DerivedStorage + 600) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *videoReceiver_CopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  if (a1)
  {
    v4 = (CMBaseObjectGetDerivedStorage() + 228);
  }

  else
  {
    v4 = "";
  }

  v5 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigVideoReceiver [%p|%s] retainCount: %d>", a1, v4, v5);
  return Mutable;
}

uint64_t videoReceiver_SetProperty(CFTypeRef cf, const void *a2, const void *a3, __n128 a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBE90 >= 4)
  {
    LODWORD(v26.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!cf || (v9 = CFGetTypeID(cf), v9 != FigVideoReceiverGetTypeID(v9)))
  {
    videoReceiver_SetProperty_cold_9(v28);
    return LODWORD(v28[0].value);
  }

  if (!a2)
  {
    videoReceiver_SetProperty_cold_8(v28);
    return LODWORD(v28[0].value);
  }

  if (!a3)
  {
    videoReceiver_SetProperty_cold_7(v28);
    return LODWORD(v28[0].value);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    v11 = CFGetTypeID(a3);
    if (v11 == CFDictionaryGetTypeID())
    {
      v28[0] = **&MEMORY[0x1E6960C70];
      valuePtr = v28[0];
      v26 = v28[0];
      FigCFDictionaryGetCMTimeIfPresent();
      if ((v28[0].flags & 0x1D) == 1 && (type = v28[0], v19 = *MEMORY[0x1E6960CC0], *&time2.value = *MEMORY[0x1E6960CC0], v12 = *(MEMORY[0x1E6960CC0] + 16), time2.epoch = v12, CMTimeCompare(&type, &time2) > 0))
      {
        FigCFDictionaryGetCMTimeIfPresent();
        if ((valuePtr.flags & 0x1D) == 1 && (type = valuePtr, *&time2.value = v19, time2.epoch = v12, CMTimeCompare(&type, &time2) > 0))
        {
          FigCFDictionaryGetCMTimeIfPresent();
          if ((v26.flags & 0x1D) == 1)
          {
            *(DerivedStorage + 156) = v28[0];
            *(DerivedStorage + 180) = valuePtr;
            *(DerivedStorage + 204) = v26;
            CFRetain(cf);
            v13 = *(DerivedStorage + 144);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 0x40000000;
            block[2] = __videoReceiver_SetProperty_block_invoke;
            block[3] = &__block_descriptor_tmp_34;
            block[4] = cf;
            v23 = v28[0];
            dispatch_async(v13, block);
            Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            CFDictionarySetValue(Mutable, a2, a3);
            CMNotificationCenterGetDefaultLocalCenter();
LABEL_21:
            CMNotificationCenterPostNotification();
            value_low = 0;
            goto LABEL_22;
          }

          videoReceiver_SetProperty_cold_2(&type);
        }

        else
        {
          videoReceiver_SetProperty_cold_3(&type);
        }
      }

      else
      {
        videoReceiver_SetProperty_cold_4(&type);
      }

      Mutable = 0;
      value_low = LODWORD(type.value);
      goto LABEL_22;
    }

    videoReceiver_SetProperty_cold_1(v28);
    return LODWORD(v28[0].value);
  }

  if (FigCFEqual())
  {
    v15 = CFGetTypeID(a3);
    if (v15 == CFNumberGetTypeID())
    {
      LODWORD(valuePtr.value) = 0;
      CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
      if ((valuePtr.value & 0x80000000) == 0)
      {
        *(DerivedStorage + 152) = valuePtr.value;
        CFRetain(cf);
        v16 = *(DerivedStorage + 144);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 0x40000000;
        v20[2] = __videoReceiver_SetProperty_block_invoke_2;
        v20[3] = &__block_descriptor_tmp_35;
        v20[4] = cf;
        value = valuePtr.value;
        dispatch_async(v16, v20);
        v17 = CFGetAllocator(cf);
        Mutable = CFDictionaryCreateMutable(v17, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetValue();
        CMNotificationCenterGetDefaultLocalCenter();
        goto LABEL_21;
      }

      videoReceiver_SetProperty_cold_6(v28);
      Mutable = 0;
      value_low = LODWORD(v28[0].value);
LABEL_22:
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      return value_low;
    }

    videoReceiver_SetProperty_cold_5(v28);
    return LODWORD(v28[0].value);
  }

  if (!CFEqual(a2, @"ConnectionHelper"))
  {
    return 4294954509;
  }

  value_low = *(DerivedStorage + 8);
  *(DerivedStorage + 8) = a3;
  CFRetain(a3);
  if (value_low)
  {
    CFRelease(value_low);
    return 0;
  }

  return value_low;
}

void receiverPlaybackStartupPreventionAssertion_setAssertionFinalizedHandler(uint64_t a1, void *aBlock)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3002000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  v3 = _Block_copy(aBlock);
  v4 = *(a1 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __receiverPlaybackStartupPreventionAssertion_setAssertionFinalizedHandler_block_invoke;
  block[3] = &unk_1E7483550;
  block[5] = &v7;
  block[6] = a1;
  block[4] = v3;
  dispatch_sync(v4, block);
  if (dword_1ED4CBE90 >= 4)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  _Block_release(v8[5]);
  _Block_object_dispose(&v7, 8);
}

void *__receiverPlaybackStartupPreventionAssertion_setAssertionFinalizedHandler_block_invoke(void *result)
{
  *(*(result[5] + 8) + 40) = *(result[6] + 32);
  *(result[6] + 32) = result[4];
  return result;
}

void videoReceiver_deferCFObjectRelease(uint64_t a1)
{
  if (a1)
  {
    if (videoReceiver_deferCFObjectRelease_deferredReleaseQueueOnce != -1)
    {
      videoReceiver_deferCFObjectRelease_cold_1();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __videoReceiver_deferCFObjectRelease_block_invoke_2;
    block[3] = &__block_descriptor_tmp_40;
    block[4] = a1;
    dispatch_async(videoReceiver_deferCFObjectRelease_deferredReleaseQueue, block);
  }
}

dispatch_queue_t __videoReceiver_deferCFObjectRelease_block_invoke()
{
  result = dispatch_queue_create("com.apple.coremedia.videoreceiver.deferredrelease", 0);
  videoReceiver_deferCFObjectRelease_deferredReleaseQueue = result;
  return result;
}

void __videoReceiver_deferCFObjectRelease_block_invoke_2(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBE90 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CFRelease(*(a1 + 32));
}

uint64_t videoReceiver_createPlaybackStartupPreventionAssertion(const void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v53 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    videoReceiver_createPlaybackStartupPreventionAssertion_cold_6(v52);
    return v52[0];
  }

  if (!a2)
  {
    videoReceiver_createPlaybackStartupPreventionAssertion_cold_5(DerivedStorage, v8, v9, v10, v11, v12, v13, v14, v39, v40, SHIDWORD(v40), aBlock[0]);
    return 0;
  }

  v15 = DerivedStorage;
  if (!*(CMBaseObjectGetDerivedStorage() + 456) || (v16 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
    CFGetAllocator(a1);
    if (FigVideoReceiverPlaybackStartupPreventionAssertionGetTypeID_sRegisterReceiverPlaybackStartupPreventionAssertionTypeOnceToken != -1)
    {
      FigVideoReceiverPlaybackStartupPreventionAssertionGetTypeID_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v20 = Instance;
      v21 = dispatch_queue_create("com.apple.coremedia.videoreceiver.videoreceiverassertionQ", 0);
      *(v20 + 24) = v21;
      if (v21)
      {
        *(v20 + 16) = CFRetain(a2);
        goto LABEL_12;
      }

      videoReceiver_createPlaybackStartupPreventionAssertion_cold_2(v20, v52);
    }

    else
    {
      videoReceiver_createPlaybackStartupPreventionAssertion_cold_3(v52);
    }

    v35 = v52[0];
    if (v52[0])
    {
      return v35;
    }

    v20 = 0;
LABEL_12:
    v22 = *v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 0x40000000;
    aBlock[2] = __videoReceiver_createPlaybackStartupPreventionAssertion_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_61;
    aBlock[4] = v22;
    receiverPlaybackStartupPreventionAssertion_setAssertionFinalizedHandler(v20, aBlock);
    v23 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v23, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v25 = Mutable;
      CFDictionarySetValue(Mutable, @"PlaybackStartupPreventionAssertionDebugDescription", *(v20 + 16));
      if (dword_1ED4CBE90)
      {
        v43 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v27 = v43;
        v28 = type;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v29 = v27;
        }

        else
        {
          v29 = v27 & 0xFFFFFFFE;
        }

        if (v29)
        {
          if (a1)
          {
            v30 = (CMBaseObjectGetDerivedStorage() + 228);
          }

          else
          {
            v30 = "";
          }

          v44 = 136315906;
          v45 = "videoReceiver_createPlaybackStartupPreventionAssertion";
          v46 = 2048;
          v47 = a1;
          v48 = 2082;
          v49 = v30;
          v50 = 2112;
          v51 = v20;
          _os_log_send_and_compose_impl(v29, 0, v52, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v28, "<<<< FigVideoReceiverForBufferDelivery >>>> %s: [%p|%{public}s]: posting kFigVideoReceiverNotification_PlaybackStartupPreventionAssertionAcquired with assertion: %@", &v44, 42);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMNotificationCenterGetDefaultLocalCenter();
      v31 = CMNotificationCenterPostNotification();
      if (v31)
      {
        v35 = v31;
      }

      else
      {
        v32 = FigCFWeakReferenceHolderCreateWithReferencedObject();
        if (v32)
        {
          v33 = v32;
          v34 = v15[57];
          v15[57] = v32;
          CFRetain(v32);
          if (v34)
          {
            CFRelease(v34);
          }

          *a4 = v20;
          CFRelease(v25);
          CFRelease(v33);
          return 0;
        }

        videoReceiver_createPlaybackStartupPreventionAssertion_cold_4(v52);
        v35 = v52[0];
      }

      CFRelease(v20);
      v38 = v25;
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, v40, LODWORD(aBlock[0]));
      v35 = v37;
      if (!v20)
      {
        return v35;
      }

      v38 = v20;
    }

    CFRelease(v38);
    return v35;
  }

  v17 = v16;
  if (dword_1ED4CBE90)
  {
    v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v35 = 0;
  *a4 = v17;
  return v35;
}

uint64_t videoReceiver_specifyDataChannelSettingsWithID(CFTypeRef cf, const __CFArray *a2, uint64_t a3, __n128 a4)
{
  v4 = a3;
  theDict[16] = *MEMORY[0x1E69E9840];
  v33 = 0;
  cfa = 0;
  if (dword_1ED4CBE90 >= 4)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!cf || (v10 = CFGetTypeID(cf), v10 != FigVideoReceiverGetTypeID(v10)))
  {
    videoReceiver_specifyDataChannelSettingsWithID_cold_3(theDict);
LABEL_5:
    v8 = 0;
    v9 = LODWORD(theDict[0]);
    goto LABEL_43;
  }

  v11 = 0;
  if (a2)
  {
    goto LABEL_15;
  }

LABEL_16:
  for (i = 0; v11 < i; i = CFArrayGetCount(a2))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v11);
    CFDictionaryGetValue(ValueAtIndex, @"ChannelSpecificSettings");
    theDict[0] = 0;
    if (FigCFDictionaryGetValueIfPresent() && (CFDictionaryGetCount(theDict[0]) < 3 || !CFDictionaryGetValue(theDict[0], @"VideoColorPrimaries") || !CFDictionaryGetValue(theDict[0], @"VideoYCbCrMatrix") || !CFDictionaryGetValue(theDict[0], @"VideoTransferFunction")))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, v31, v32);
      v9 = v29;
      v8 = 0;
      goto LABEL_43;
    }

    ++v11;
    if (!a2)
    {
      goto LABEL_16;
    }

LABEL_15:
    ;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    videoReceiver_specifyDataChannelSettingsWithID_cold_2(theDict);
    goto LABEL_5;
  }

  v17 = Mutable;
  if (CFArrayGetCount(a2) >= 1)
  {
    for (j = 0; j < CFArrayGetCount(a2); ++j)
    {
      v19 = CFArrayGetValueAtIndex(a2, j);
      MutableCopy = CFDictionaryCreateMutableCopy(v15, 0, v19);
      Value = CFDictionaryGetValue(v19, @"ChannelDescription");
      if (Value)
      {
        v22 = vr_createModifiedDataChannelTagCollectionWithDefaultTags(Value, &v33);
        if (v22)
        {
          v9 = v22;
          goto LABEL_50;
        }

        videoReceiver_specifyDataChannelSettingsWithID_cold_1(&v33, MutableCopy, @"ChannelDescription");
      }

      CFArrayAppendValue(v17, MutableCopy);
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }
    }
  }

  v23 = FigVideoReceiverDataChannelSettingsCopySerializable(v17, &cfa);
  if (v23)
  {
    v9 = v23;
    MutableCopy = 0;
LABEL_50:
    v8 = 0;
  }

  else
  {
    FigSimpleMutexLock();
    v24 = *(DerivedStorage + 312);
    *(DerivedStorage + 312) = v17;
    CFRetain(v17);
    if (v24)
    {
      CFRelease(v24);
    }

    v25 = *(DerivedStorage + 320);
    v26 = cfa;
    *(DerivedStorage + 320) = cfa;
    if (v26)
    {
      CFRetain(v26);
    }

    if (v25)
    {
      CFRelease(v25);
    }

    *(DerivedStorage + 328) = v4;
    FigSimpleMutexUnlock();
    v27 = CFDictionaryCreateMutable(v15, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v8 = v27;
    if (cfa)
    {
      CFDictionarySetValue(v27, @"DataChannelSettings", cfa);
    }

    if (v4)
    {
      FigCFDictionarySetInt32();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    MutableCopy = 0;
    v9 = 0;
  }

  CFRelease(v17);
  if (v33)
  {
    CFRelease(v33);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

LABEL_43:
  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v9;
}

uint64_t videoReceiver_copyTaggedBufferGroupForTime(const void *a1, __int128 *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  return videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample(a1, &v6, a3, a4, 0, a5, 0, 0);
}

double videoReceiver_copyTaggedBufferGroupAndResourcesForTime(const void *a1, __int128 *a2, uint64_t a3, void *a4, CFTypeRef *a5, uint64_t a6)
{
  if (a5)
  {
    v9 = *a2;
    v10 = *(a2 + 2);
    videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample(a1, &v9, a3, a4, a5, a6, 0, 0);
  }

  else
  {
    v8 = qword_1ED4CBE88;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 4294951724, "<<<< FigVideoReceiverForBufferDelivery >>>>", 4923, v6);
  }

  return result;
}

uint64_t videoReceiver_setPrepareDataChannelsWithDependentResourcesCallback(CFTypeRef cf, uint64_t a2, uint64_t a3, __n128 a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBE90 >= 2)
  {
    v14 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf && (v9 = CFGetTypeID(cf), v9 == FigVideoReceiverGetTypeID(v9)))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v11 = *(DerivedStorage + 264);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __videoReceiver_setPrepareDataChannelsWithDependentResourcesCallback_block_invoke;
    block[3] = &__block_descriptor_tmp_63;
    block[4] = DerivedStorage;
    block[5] = a2;
    block[6] = a3;
    dispatch_sync(v11, block);
    return 0;
  }

  else
  {
    videoReceiver_setPrepareDataChannelsWithDependentResourcesCallback_cold_1(v15);
    return v15[0];
  }
}

uint64_t videoReceiver_setResourceLifeCycleCallback(CFTypeRef cf, uint64_t a2, uint64_t a3, __n128 a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBE90 >= 3)
  {
    v14 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf && (v9 = CFGetTypeID(cf), v9 == FigVideoReceiverGetTypeID(v9)))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v11 = *(DerivedStorage + 264);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __videoReceiver_setResourceLifeCycleCallback_block_invoke;
    block[3] = &__block_descriptor_tmp_64;
    block[4] = DerivedStorage;
    block[5] = a2;
    block[6] = a3;
    dispatch_sync(v11, block);
    return 0;
  }

  else
  {
    videoReceiver_setResourceLifeCycleCallback_cold_1(v15);
    return v15[0];
  }
}

uint64_t videoReceiver_copyTaggedBufferGroupAndResourcesAndSamplingEventIdentifierForTime(const void *a1, __int128 *a2, uint64_t a3, void *a4, CFTypeRef *a5, uint64_t a6, uint64_t *a7)
{
  v8 = *a2;
  v9 = *(a2 + 2);
  return videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample(a1, &v8, a3, a4, a5, a6, a7, 0);
}

uint64_t videoReceiver_provideFrameTelemetryForSamplingEvent(CFTypeRef cf, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v26 = *(a2 + 24);
  v27 = *(a2 + 32);
  if (!a3)
  {
    v4 = 4963;
    goto LABEL_5;
  }

  if ((*a3 - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    v4 = 4966;
    goto LABEL_5;
  }

  if (!cf || (v7 = *(a2 + 36), v8 = *(a2 + 40), v9 = CFGetTypeID(cf), v9 != FigVideoReceiverGetTypeID(v9)))
  {
    v4 = 4968;
    goto LABEL_5;
  }

  if ((*(a3 + 20) & 1) == 0)
  {
    v4 = 4969;
    goto LABEL_5;
  }

  if ((*(a3 + 44) & 1) == 0)
  {
    v4 = 4970;
    goto LABEL_5;
  }

  if ((v7 & 1) == 0)
  {
    v4 = 4971;
LABEL_5:
    videoReceiver_provideFrameTelemetryForSamplingEvent_cold_2(v4, &time);
    return LODWORD(time.value);
  }

  if (dword_1ED4CBE90 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  time = *(a3 + 8);
  v12 = CMClockConvertHostTimeToSystemUnits(&time);
  v13 = *(a3 + 56);
  v14 = *(a3 + 64) / v13;
  LODWORD(v15) = v13;
  if (*a3 >= 2uLL)
  {
    v15 = *(a3 + 80);
  }

  v16 = *(DerivedStorage + 344);
  v17 = *(a3 + 72);
  time.value = v26;
  time.timescale = v27;
  time.flags = v7;
  time.epoch = v8;
  FigImageQueueDisplayCountHistory_TraceDisplayCountUsingHostTime(v16, &time, v13, v15, v12, v14, v17);
  for (i = 0; ; ++i)
  {
    Count = *(a2 + 16);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 16), i);
    if (ValueAtIndex)
    {
      v21 = ValueAtIndex;
      FigReadWriteLockLockForWrite();
      v22 = *(a3 + 56);
      if (v22 > 0xFFFFFFFE)
      {
        v23 = -1;
      }

      else
      {
        v23 = *(a3 + 56);
      }

      if (v22 < 0)
      {
        v23 = 0;
      }

      *(v21 + 10) = v23;
      v24 = *(a3 + 64);
      v21[6] = v24 / v22;
      v21[10] = v24;
      time = *(a3 + 8);
      *(v21 + 8) = CMClockConvertHostTimeToSystemUnits(&time);
      time = *(a3 + 32);
      *(v21 + 9) = CMClockConvertHostTimeToSystemUnits(&time);
      v21[7] = *(a3 + 72);
      FigReadWriteLockUnlockForWrite();
    }

    else if (!videoReceiver_provideFrameTelemetryForSamplingEvent_cold_1())
    {
      return LODWORD(time.value);
    }
  }

  return 0;
}

uint64_t videoReceiver_setResourceLifeCycleHandler(CFTypeRef cf, const void *a2, __n128 a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3002000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  if (dword_1ED4CBE90 >= 2)
  {
    v14 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf && (v7 = CFGetTypeID(cf), v7 == FigVideoReceiverGetTypeID(v7)))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = _Block_copy(a2);
    v10 = *(DerivedStorage + 264);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __videoReceiver_setResourceLifeCycleHandler_block_invoke;
    block[3] = &unk_1E7483738;
    block[5] = &v15;
    block[6] = DerivedStorage;
    block[4] = v9;
    dispatch_sync(v10, block);
    _Block_release(v16[5]);
    v6 = 0;
  }

  else
  {
    videoReceiver_setResourceLifeCycleHandler_cold_1(v21);
    v6 = v21[0];
  }

  _Block_object_dispose(&v15, 8);
  return v6;
}

uint64_t videoReceiver_setPrepareDataChannelsWithDependentResourcesHandler(CFTypeRef cf, const void *a2, __n128 a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3002000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  if (dword_1ED4CBE90 >= 2)
  {
    v14 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf && (v7 = CFGetTypeID(cf), v7 == FigVideoReceiverGetTypeID(v7)))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = _Block_copy(a2);
    v10 = *(DerivedStorage + 264);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __videoReceiver_setPrepareDataChannelsWithDependentResourcesHandler_block_invoke;
    block[3] = &unk_1E7483760;
    block[5] = &v15;
    block[6] = DerivedStorage;
    block[4] = v9;
    dispatch_sync(v10, block);
    _Block_release(v16[5]);
    v6 = 0;
  }

  else
  {
    videoReceiver_setPrepareDataChannelsWithDependentResourcesHandler_cold_1(v21);
    v6 = v21[0];
  }

  _Block_object_dispose(&v15, 8);
  return v6;
}

uint64_t videoReceiver_setActiveConfigurationChangedHandler(const void *a1, const void *a2)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (a1 && (v4 = CFGetTypeID(a1), v4 == FigVideoReceiverGetTypeID(v4)))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v6 = _Block_copy(a2);
    FigSimpleMutexLock();
    v7 = *(DerivedStorage + 448);
    *(DerivedStorage + 448) = v6;
    FigSimpleMutexUnlock();
    if (dword_1ED4CBE90 >= 2)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    _Block_release(v7);
    return 0;
  }

  else
  {
    videoReceiver_setActiveConfigurationChangedHandler_cold_1(cf);
    return LODWORD(cf[0]);
  }
}

__n128 __videoReceiver_copyImageForTime_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  time1 = *(a1 + 48);
  v6 = *(v2 + 116);
  if ((CMTimeCompare(&time1, &v6) & 0x80000000) == 0)
  {
    v4 = *(a1 + 32);
    *(v4 + 88) = 1;
    v5 = *(a1 + 48);
    *(v4 + 108) = *(a1 + 64);
    *(v4 + 92) = v5;
    videoReceiver_activateReceiverConfigurationOnSyncQueue(*(a1 + 40));
  }

  return result;
}

void videoReceiver_activateReceiverConfigurationOnSyncQueue(const void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v11, 0, sizeof(v11));
  CMTimebaseGetTime(&v11, *(DerivedStorage + 56));
  v8 = *MEMORY[0x1E6960C70];
  *&v9.value = *MEMORY[0x1E6960C70];
  v3 = *(MEMORY[0x1E6960C70] + 16);
  v9.epoch = v3;
  v10 = 0;
  if (*(DerivedStorage + 88))
  {
    v11 = *(DerivedStorage + 92);
  }

  v4 = *(DerivedStorage + 48);
  time = v11;
  if (!FigVideoReceiverConfigurationSchedulerCopyBestConfigurationForHostTime(v4, &time, &v9, &v10))
  {
    if (v10)
    {
      videoReceiver_replacePendingConfiguration(a1, v10);
      if (dword_1ED4CBE90 >= 2)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  v6 = *(DerivedStorage + 48);
  time = v9;
  FigVideoReceiverConfigurationSchedulerPruneConfigurationsBeforeHostTime(v6, &time, 1);
  *(DerivedStorage + 116) = *&v9.value;
  v7 = v10;
  *(DerivedStorage + 132) = v9.epoch;
  *(DerivedStorage + 88) = 0;
  *(DerivedStorage + 92) = v8;
  *(DerivedStorage + 108) = v3;
  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t videoReceiver_copyOutputQueuesIfReady(const void *a1, _BYTE *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v63 = 0;
  v64[0] = &v63;
  v64[1] = 0x2000000000;
  v65 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2000000000;
  v62 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2000000000;
  v58 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2000000000;
  v54 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2000000000;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2000000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2000000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 0;
  if (a1 && (v16 = CFGetTypeID(a1), v16 == FigVideoReceiverGetTypeID(v16)))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v18 = *(DerivedStorage + 144);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 0x40000000;
    v34[2] = __videoReceiver_copyOutputQueuesIfReady_block_invoke;
    v34[3] = &unk_1E7483690;
    v34[4] = &v59;
    v34[5] = &v63;
    v34[12] = DerivedStorage;
    v34[13] = a1;
    v34[6] = &v55;
    v34[7] = &v51;
    v34[8] = &v47;
    v34[9] = &v43;
    v34[14] = a8;
    v34[10] = &v39;
    v34[11] = &v35;
    dispatch_sync(v18, v34);
  }

  else
  {
    videoReceiver_copyOutputQueuesIfReady_cold_1(v64);
  }

  v19 = v36;
  if (*(v36 + 24))
  {
    if (a4)
    {
      v20 = v56;
      *a4 = v56[3];
      v20[3] = 0;
    }

    if (a5)
    {
      v21 = v52;
      *a5 = v52[3];
      v21[3] = 0;
    }

    if (a6)
    {
      v22 = v48;
      *a6 = v48[3];
      v22[3] = 0;
    }

    if (a7)
    {
      v23 = v44;
      *a7 = v44[3];
      v23[3] = 0;
    }

    if (a8)
    {
      v24 = v40;
      *a8 = v40[3];
      v24[3] = 0;
    }
  }

  if (a3)
  {
    v25 = v60;
    *a3 = v60[3];
    v25[3] = 0;
  }

  if (a2)
  {
    *a2 = *(v19 + 24);
  }

  v26 = v60[3];
  if (v26)
  {
    CFRelease(v26);
  }

  v27 = v56[3];
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = v52[3];
  if (v28)
  {
    CFRelease(v28);
  }

  v29 = v48[3];
  if (v29)
  {
    CFRelease(v29);
  }

  v30 = v44[3];
  if (v30)
  {
    CFRelease(v30);
  }

  v31 = v40[3];
  if (v31)
  {
    CFRelease(v31);
  }

  v32 = *(v64[0] + 24);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v63, 8);
  return v32;
}

uint64_t __videoReceiver_copyImageForTime_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 104);
  v5 = *(*(a1 + 72) + 40);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(*(a1 + 48) + 8);
  v9 = *(a1 + 80);
  v10 = *(a1 + 96);
  result = videoReceiver_copyPixelBufferFromImageQueueReceiverSamplingAtTime(v2, v3, &v9, v4, v5, (v6 + 24), v7 + 1, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t videoReceiver_copyPixelBufferFromImageQueueReceiverSamplingAtTime(const void *a1, const void *a2, uint64_t a3, int a4, int a5, void *a6, CMTime *a7, uint64_t *a8)
{
  v43 = a8;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFGetAllocator(a1);
  if (a2)
  {
    v16 = *(a3 + 12);
    if (v16)
    {
      v17 = *(a3 + 16);
      time.value = *a3;
      time.timescale = *(a3 + 8);
      time.flags = v16;
      time.epoch = v17;
      CMTimeGetSeconds(&time);
      SampleForTime = CAXPCImageQueueReceiverCreateSampleForTime();
      if (SampleForTime)
      {
        v19 = SampleForTime;
        if (FigCAXPCImageQueueSampleGetTypeID_sRegisterFigCAXPCImageQueueSampleTypeOnce != -1)
        {
          videoReceiver_copyPixelBufferFromImageQueueReceiverSamplingAtTime_cold_1();
        }

        Instance = _CFRuntimeCreateInstance();
        if (Instance)
        {
          *(Instance + 16) = CFRetain(v19);
          *(Instance + 32) = FigReadWriteLockCreate();
          *(Instance + 24) = a4;
          *(Instance + 25) = a4 == 0;
          *(Instance + 26) = 0;
        }

        else if (!videoReceiver_copyPixelBufferFromImageQueueReceiverSamplingAtTime_cold_2())
        {
          value_low = LODWORD(time.value);
LABEL_9:
          CFRelease(v19);
          if (!value_low)
          {
            goto LABEL_10;
          }

LABEL_51:
          if (!Instance)
          {
            return value_low;
          }

          Mutable = 0;
          goto LABEL_59;
        }

        value_low = 0;
        goto LABEL_9;
      }

      videoReceiver_copyPixelBufferFromImageQueueReceiverSamplingAtTime_cold_3(&time);
    }

    else
    {
      videoReceiver_copyPixelBufferFromImageQueueReceiverSamplingAtTime_cold_4(&time);
    }
  }

  else
  {
    videoReceiver_copyPixelBufferFromImageQueueReceiverSamplingAtTime_cold_5(&time);
  }

  Instance = 0;
  value_low = LODWORD(time.value);
  if (LODWORD(time.value))
  {
    goto LABEL_51;
  }

LABEL_10:
  CAXPCImageQueueSampleGetTimestamp();
  v23 = v22;
  if (!CAXPCImageQueueSampleGetIOSurface())
  {
    videoReceiver_copyPixelBufferFromImageQueueReceiverSamplingAtTime_cold_7(&time);
    Mutable = 0;
    v33 = 0;
    goto LABEL_48;
  }

  if (a5)
  {
    v24 = 32;
    if (a4)
    {
      v25 = 32;
    }

    else
    {
      v25 = 24;
    }

    if (a4)
    {
      v24 = 24;
    }

    v26 = *(DerivedStorage + v24);
    v27 = *(DerivedStorage + v25);
    Value = CFDictionaryGetValue(v27, a2);
    Mutable = Value;
    if (Value)
    {
      CFRetain(Value);
      v30 = vr_copyCachedPixelBufferIfSameIQSample(Mutable, Instance);
      v31 = v30 != 0;
      if (v30)
      {
LABEL_24:
        v33 = v30;
        goto LABEL_30;
      }
    }

    else
    {
      v31 = 0;
    }

    v32 = CFDictionaryGetValue(v26, a2);
    if (v32)
    {
      v30 = vr_copyCachedPixelBufferIfSameIQSample(v32, Instance);
      if (v30)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v31 = 0;
    Mutable = 0;
    v27 = 0;
  }

  time.value = 0;
  IOSurface = CAXPCImageQueueSampleGetIOSurface();
  if (IOSurface)
  {
    v35 = IOSurface;
    IsLowLatency = CAXPCImageQueueSampleIsLowLatency();
    v37 = CFGetAllocator(Instance);
    v38 = CVPixelBufferCreateWithIOSurface(v37, v35, 0, &time);
    if (!v38)
    {
      if (IsLowLatency)
      {
        CVBufferSetAttachment(time.value, *MEMORY[0x1E6965DF0], *MEMORY[0x1E695E4D0], kCVAttachmentMode_ShouldNotPropagate);
      }

      v33 = time.value;
      goto LABEL_30;
    }

    value_low = v38;
    if (time.value)
    {
      CFRelease(time.value);
    }

LABEL_59:
    v33 = 0;
    goto LABEL_60;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v41, v42, v43);
  v33 = 0;
  if (v40)
  {
    value_low = v40;
    goto LABEL_60;
  }

LABEL_30:
  if (a5 && !v31)
  {
    if (Mutable || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0)
    {
      CFDictionarySetValue(Mutable, @"CachedPixelBuffer", v33);
      CFDictionarySetValue(Mutable, @"CachedIQSample", Instance);
      CFDictionarySetValue(v27, a2, Mutable);
      goto LABEL_35;
    }

    videoReceiver_copyPixelBufferFromImageQueueReceiverSamplingAtTime_cold_6(&time);
LABEL_48:
    value_low = LODWORD(time.value);
    goto LABEL_60;
  }

LABEL_35:
  if (a6)
  {
    *a6 = v33;
    v33 = 0;
  }

  if (a7)
  {
    CMTimeMakeWithSeconds(&time, v23 + 0.00000555555556, 90000);
    *a7 = time;
  }

  value_low = 0;
  if (v43)
  {
    *v43 = Instance;
    if (!v33)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_60:
  CFRelease(Instance);
  if (v33)
  {
LABEL_41:
    CFRelease(v33);
  }

LABEL_42:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return value_low;
}

void videoReceiver_replacePendingConfiguration(const void *a1, const void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBE90)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  videoReceiver_RemoveAndReleaseConfiguration(a1, *(DerivedStorage + 72));
  *(DerivedStorage + 72) = a2;
  if (a2)
  {
    CFRetain(a2);
  }
}

void videoReceiver_RemoveAndReleaseConfiguration(const void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBE90 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  videoReceiver_announceRemovalOfConfiguration(a1, a2);
  videoReceiver_deferCFObjectRelease(a2);
}

uint64_t videoReceiver_dispatchAsyncPostNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();

  return FigDispatchAsyncPostNotification();
}

uint64_t videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration(uint64_t a1, uint64_t a2, __CFArray **a3, __CFArray **a4, __CFArray **a5, __CFArray **a6, uint64_t *a7, char *a8, char *a9)
{
  CMBaseObjectGetDerivedStorage();
  ChannelCount = FigDataChannelConfigurationGetChannelCount(a2);
  if (!ChannelCount)
  {
    v17 = 0;
    Mutable = 0;
    v16 = 0;
    v28 = 0;
    v15 = 0;
    v29 = 1;
    goto LABEL_30;
  }

  v13 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_10(&v43);
    v15 = 0;
    goto LABEL_67;
  }

  v15 = CFArrayCreateMutable(v13, 0, MEMORY[0x1E695E9C0]);
  if (!v15)
  {
    videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_9(&v43);
    goto LABEL_67;
  }

  theArray = CFArrayCreateMutable(v13, 0, MEMORY[0x1E695E9C0]);
  if (!theArray)
  {
    videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_8(&v43);
LABEL_67:
    v28 = 0;
    v16 = 0;
    ChannelCount = 0;
    v17 = 0;
    v34 = v43;
    if (!v43)
    {
      goto LABEL_63;
    }

    goto LABEL_44;
  }

  v16 = CFArrayCreateMutable(v13, 0, MEMORY[0x1E695E9C0]);
  if (!v16)
  {
    videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_7(&v43);
    ChannelCount = 0;
    v17 = 0;
    v34 = v43;
    goto LABEL_62;
  }

  v36 = a8;
  v37 = a7;
  if (ChannelCount >= 1)
  {
    v17 = 0;
    v18 = 0;
    while (1)
    {
      OutputQueueTypeAtIndex = FigDataChannelConfigurationGetOutputQueueTypeAtIndex(a2, v18);
      if (OutputQueueTypeAtIndex == 2)
      {
        FigDataQueueAtIndex = FigDataChannelConfigurationGetFigDataQueueAtIndex(a2, v18);
        if (!FigDataQueueAtIndex)
        {
          videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_2(&v43);
          goto LABEL_60;
        }

        v25 = FigDataQueueAtIndex;
        ChannelDescriptionTagsAtIndex = FigDataChannelConfigurationGetChannelDescriptionTagsAtIndex(a2, v18);
        if (!ChannelDescriptionTagsAtIndex)
        {
          videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_1(&v43);
          goto LABEL_60;
        }

        v27 = ChannelDescriptionTagsAtIndex;
        CFArrayAppendValue(theArray, v25);
        CFArrayAppendValue(v16, v27);
        v17 = 1;
      }

      else if (OutputQueueTypeAtIndex == 1)
      {
        CAImageQueueReceiverAtIndex = FigDataChannelConfigurationGetCAImageQueueReceiverAtIndex(a2, v18);
        if (!CAImageQueueReceiverAtIndex)
        {
          videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_4(&v43);
          goto LABEL_60;
        }

        v21 = CAImageQueueReceiverAtIndex;
        v22 = FigDataChannelConfigurationGetChannelDescriptionTagsAtIndex(a2, v18);
        if (!v22)
        {
          videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_3(&v43);
LABEL_60:
          ChannelCount = 0;
LABEL_61:
          v34 = v43;
          a8 = v36;
          a7 = v37;
LABEL_62:
          v28 = theArray;
          if (!v34)
          {
LABEL_63:
            v29 = 0;
            goto LABEL_30;
          }

          goto LABEL_44;
        }

        v23 = v22;
        if (CAXPCImageQueueReceiverGetImageCount())
        {
          v17 = 1;
        }

        CFArrayAppendValue(Mutable, v21);
        CFArrayAppendValue(v15, v23);
      }

      if (ChannelCount == ++v18)
      {
        goto LABEL_22;
      }
    }
  }

  v17 = 0;
LABEL_22:
  ResourceCount = FigDataChannelConfigurationGetResourceCount(a2);
  ChannelCount = 0;
  v29 = 0;
  if (v37)
  {
    v31 = ResourceCount;
    if (ResourceCount >= 1)
    {
      ChannelCount = CFArrayCreateMutable(v13, 0, MEMORY[0x1E695E9C0]);
      if (ChannelCount)
      {
        v32 = 0;
        while (1)
        {
          FigDataChannelResourceAtIndex = FigDataChannelConfigurationGetFigDataChannelResourceAtIndex(a2, v32);
          if (!FigDataChannelResourceAtIndex)
          {
            break;
          }

          CFArrayAppendValue(ChannelCount, FigDataChannelResourceAtIndex);
          if (v31 == ++v32)
          {
            v29 = 0;
            goto LABEL_29;
          }
        }

        videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_5(&v43);
      }

      else
      {
        videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_6(&v43);
      }

      goto LABEL_61;
    }
  }

LABEL_29:
  a8 = v36;
  a7 = v37;
  v28 = theArray;
LABEL_30:
  if (a3)
  {
    *a3 = Mutable;
    Mutable = 0;
  }

  if (a4)
  {
    *a4 = v15;
    v15 = 0;
  }

  if (a5)
  {
    *a5 = v28;
    v28 = 0;
  }

  if (a6)
  {
    *a6 = v16;
    v16 = 0;
  }

  if (a7)
  {
    *a7 = ChannelCount;
    ChannelCount = 0;
  }

  if (a8)
  {
    *a8 = v29;
  }

  v34 = 0;
  if (a9)
  {
    *a9 = v17;
  }

LABEL_44:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (ChannelCount)
  {
    CFRelease(ChannelCount);
  }

  return v34;
}

uint64_t fvr_copyDescriptionSettingsAndResourcesFromConfiguration(const void *a1, __CFArray **a2, __CFDictionary **a3, __CFArray **a4)
{
  theArray = 0;
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fvr_copyDescriptionSettingsAndResourcesFromConfiguration_cold_5(formatDescriptionOut);
    v23 = 0;
    v17 = 0;
    TagsWithCategory = LODWORD(formatDescriptionOut[0]);
    goto LABEL_60;
  }

  v8 = Mutable;
  v9 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v9 || (v10 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0])) == 0)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v34, a3);
    TagsWithCategory = v32;
    v23 = 0;
    v27 = 0;
    v17 = 0;
    goto LABEL_55;
  }

  v35 = a2;
  cf = v10;
  ChannelCount = FigDataChannelConfigurationGetChannelCount(a1);
  if (ChannelCount < 1)
  {
LABEL_44:
    ResourceCount = FigDataChannelConfigurationGetResourceCount(a1);
    v27 = cf;
    if (ResourceCount < 1)
    {
LABEL_48:
      if (v35)
      {
        *v35 = v8;
        v8 = 0;
      }

      if (a3)
      {
        *a3 = v9;
        v9 = 0;
      }

      v17 = 0;
      v23 = 0;
      TagsWithCategory = 0;
      if (a4)
      {
        *a4 = cf;
        v27 = 0;
      }
    }

    else
    {
      v28 = ResourceCount;
      v29 = 0;
      while (1)
      {
        FigDataChannelResourceAtIndex = FigDataChannelConfigurationGetFigDataChannelResourceAtIndex(a1, v29);
        if (!FigDataChannelResourceAtIndex)
        {
          break;
        }

        CFArrayAppendValue(cf, FigDataChannelResourceAtIndex);
        if (v28 == ++v29)
        {
          goto LABEL_48;
        }
      }

      fvr_copyDescriptionSettingsAndResourcesFromConfiguration_cold_3(formatDescriptionOut);
      v17 = 0;
      v23 = 0;
      TagsWithCategory = LODWORD(formatDescriptionOut[0]);
    }

    goto LABEL_54;
  }

  v11 = 0;
  v39 = v8;
  v40 = v9;
  while (1)
  {
    ChannelDescriptionTagsAtIndex = FigDataChannelConfigurationGetChannelDescriptionTagsAtIndex(a1, v11);
    if (!ChannelDescriptionTagsAtIndex)
    {
      fvr_copyDescriptionSettingsAndResourcesFromConfiguration_cold_4(formatDescriptionOut);
      v17 = 0;
      v23 = 0;
      TagsWithCategory = LODWORD(formatDescriptionOut[0]);
      goto LABEL_70;
    }

    CFArrayAppendValue(v8, ChannelDescriptionTagsAtIndex);
    v13 = CFGetAllocator(a1);
    FigDataChannelConfigurationCopySidebandVideoPropertiesAtIndex(a1, v13, v11, &theArray);
    v14 = theArray;
    if (!theArray)
    {
      v17 = 0;
      goto LABEL_29;
    }

    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v16 = Count;
      v17 = CFArrayCreateMutable(v6, Count, MEMORY[0x1E695E9C0]);
      if (!v17)
      {
        fvr_copyDescriptionSettingsAndResourcesFromConfiguration_cold_1();
        goto LABEL_28;
      }

      v18 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v14, v18);
        formatDescriptionOut[0] = 0;
        v44 = 0;
        if (FigSidebandVideoPropertiesCopyAsFormatDescriptionExtensions(ValueAtIndex, &v44) || CMVideoFormatDescriptionCreate(v6, 0x66616B65u, -1, -1, v44, formatDescriptionOut))
        {
          v20 = 0;
          v21 = 0;
        }

        else
        {
          v20 = formatDescriptionOut[0];
          formatDescriptionOut[0] = 0;
          v21 = 1;
        }

        if (v44)
        {
          CFRelease(v44);
        }

        if (formatDescriptionOut[0])
        {
          CFRelease(formatDescriptionOut[0]);
        }

        if (!v21)
        {
          break;
        }

        CFArrayAppendValue(v17, v20);
        if (v20)
        {
          CFRelease(v20);
        }

        if (v16 == ++v18)
        {
          goto LABEL_28;
        }
      }

      CFRelease(v17);
      if (v20)
      {
        CFRelease(v20);
      }
    }

    v17 = 0;
LABEL_28:
    v8 = v39;
    v9 = v40;
LABEL_29:
    FigDataChannelConfigurationGetChannelSettingsAtIndex(a1, v11);
    CFGetAllocator(a1);
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (MutableCopy)
    {
      break;
    }

LABEL_37:
    if (theArray)
    {
      CFRelease(theArray);
      theArray = 0;
    }

    if (v17)
    {
      CFRelease(v17);
    }

    if (++v11 == ChannelCount)
    {
      goto LABEL_44;
    }
  }

  v23 = MutableCopy;
  FigCFDictionarySetValue();
  if (v17)
  {
    FigCFDictionarySetValue();
  }

  *formatDescriptionOut = *MEMORY[0x1E6960630];
  v44 = 0;
  TagsWithCategory = FigTagCollectionGetTagsWithCategory();
  if (!TagsWithCategory && v44 == 1)
  {
    FigTagGetSInt64Value();
    SInt64 = FigCFNumberCreateSInt64();
    CFDictionarySetValue(v9, SInt64, v23);
    if (SInt64)
    {
      CFRelease(SInt64);
    }

    CFRelease(v23);
    goto LABEL_37;
  }

  fvr_copyDescriptionSettingsAndResourcesFromConfiguration_cold_2(&v44, formatDescriptionOut);
LABEL_70:
  v27 = cf;
LABEL_54:
  if (v8)
  {
LABEL_55:
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v27)
  {
    CFRelease(v27);
  }

LABEL_60:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return TagsWithCategory;
}

uint64_t vr_createModifiedDataChannelTagCollectionWithDefaultTags(const OpaqueCMTagCollection *a1, void *a2)
{
  if (!a1)
  {
    v11 = 2275;
LABEL_21:
    videoReceiver_provideFrameTelemetryForSamplingEvent_cold_2(v11, &v12);
    return v12;
  }

  if (!a2)
  {
    v11 = 2276;
    goto LABEL_21;
  }

  MutableCopy = FigTagCollectionCreateMutableCopy();
  if (MutableCopy)
  {
    return MutableCopy;
  }

  if (CMTagCollectionContainsTag(a1, *MEMORY[0x1E6960640]))
  {
    v5 = *MEMORY[0x1E6960690];
    v6 = *(MEMORY[0x1E6960690] + 8);
    *&v13.category = *MEMORY[0x1E6960690];
    v13.value = v6;
    if (CMTagCollectionContainsTag(a1, v13))
    {
      v7 = *MEMORY[0x1E69606A0];
      v8 = *(MEMORY[0x1E69606A0] + 8);
      *&v14.category = *MEMORY[0x1E69606A0];
      v14.value = v8;
      if (CMTagCollectionContainsTag(a1, v14))
      {
        *&v15.category = v5;
        v15.value = v6;
        MutableCopy = CMTagCollectionRemoveTag(0, v15);
        if (MutableCopy)
        {
          return MutableCopy;
        }

        *&v16.category = v7;
        v16.value = v8;
        MutableCopy = CMTagCollectionRemoveTag(0, v16);
        if (MutableCopy)
        {
          return MutableCopy;
        }

        MutableCopy = CMTagCollectionAddTag(0, *MEMORY[0x1E6960688]);
        if (MutableCopy)
        {
          return MutableCopy;
        }
      }
    }

    if (!CMTagCollectionContainsCategory(a1, kCMTagCategory_StereoView))
    {
      MutableCopy = CMTagCollectionAddTag(0, *MEMORY[0x1E6960698]);
      if (MutableCopy)
      {
        return MutableCopy;
      }
    }

    if (!CMTagCollectionContainsCategory(a1, kCMTagCategory_PackingType))
    {
      MutableCopy = CMTagCollectionAddTag(0, *MEMORY[0x1E6960648]);
      if (MutableCopy)
      {
        return MutableCopy;
      }
    }

    if (!CMTagCollectionContainsCategory(a1, kCMTagCategory_ProjectionType))
    {
      MutableCopy = CMTagCollectionAddTag(0, *MEMORY[0x1E6960680]);
      if (MutableCopy)
      {
        return MutableCopy;
      }
    }
  }

  v9 = 0;
  *a2 = 0;
  return v9;
}

CFTypeRef vr_copyCachedPixelBufferIfSameIQSample(const __CFDictionary *a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(a1, @"CachedPixelBuffer");
  v4 = CFDictionaryGetValue(a1, @"CachedIQSample");
  if (Value)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  IOSurface = CAXPCImageQueueSampleGetIOSurface();
  CAXPCImageQueueSampleGetTimestamp();
  v8 = v7;
  v9 = CAXPCImageQueueSampleGetIOSurface();
  CAXPCImageQueueSampleGetTimestamp();
  v11 = v10;
  ID = IOSurfaceGetID(IOSurface);
  if (ID != IOSurfaceGetID(v9) || v8 != v11)
  {
    return 0;
  }

  return CFRetain(Value);
}

uint64_t __FigCAXPCImageQueueSampleGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  FigCAXPCImageQueueSampleGetTypeID_sFigCAXPCImageQueueSampleTypeID = result;
  return result;
}

double figCAXPCImageQueueSample_init(uint64_t a1)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t figCAXPCImageQueueSample_finalize(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBE90 >= 7)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 25))
  {
    cf[0] = 0;
    figCAXPCImageQueueSample_copyTelemetryInfoDict(a1, cf, a4, a5, a6, a7, a8, a9);
    CAXPCImageQueueSampleFinish();
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 16) = 0;
  }

  return FigReadWriteLockDestroy();
}

CFStringRef figCAXPCImageQueueSample_copyDebugDesc(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  cf = 0;
  figCAXPCImageQueueSample_copyTelemetryInfoDict(a1, &cf, a4, a5, a6, a7, a8, a9);
  v10 = FigCFCopyCompactDescription();
  v11 = CFGetAllocator(a1);
  v12 = CFGetRetainCount(a1);
  if (*(a1 + 26))
  {
    v13 = "YES";
  }

  else
  {
    v13 = "NO";
  }

  v14 = CFStringCreateWithFormat(v11, 0, @"<FigCAXPCImageQueueSample %p retainCount %d> iqSample: %@, wasProvidedToClient: %s, telemetryInfo: %@", a1, v12, *(a1 + 16), v13, v10);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v14;
}

void figCAXPCImageQueueSample_copyTelemetryInfoDict(_BYTE *a1, CFMutableDictionaryRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    figCAXPCImageQueueSample_copyTelemetryInfoDict_cold_3(0, a2, a3, a4, a5, a6, a7, a8, v21, v22, SHIDWORD(v22), v23);
    return;
  }

  if (!a2)
  {
    figCAXPCImageQueueSample_copyTelemetryInfoDict_cold_2(a1, 0, a3, a4, a5, a6, a7, a8, v21, v22, SHIDWORD(v22), v23);
    return;
  }

  if (a1[26])
  {
    FigReadWriteLockLockForRead();
    v10 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v10, 6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      figCAXPCImageQueueSample_copyTelemetryInfoDict_cold_1(0, v12, v13, v14, v15, v16, v17, v18, v21, v22, SHIDWORD(v22), v23);
      goto LABEL_12;
    }

    v19 = Mutable;
    if (!FigCFDictionarySetUInt32() && !FigCFDictionarySetDouble() && !FigCFDictionarySetUInt64() && !FigCFDictionarySetUInt64() && !FigCFDictionarySetDouble() && !FigCFDictionarySetDouble())
    {
      *a2 = v19;
LABEL_12:

      FigReadWriteLockUnlockForRead();
      return;
    }

    FigReadWriteLockUnlockForRead();

    CFRelease(v19);
  }

  else if (dword_1ED4CBE90 >= 7)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void __videoReceiver_createPlaybackStartupPreventionAssertion_block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v2)
    {
      v3 = v2;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetValue();
      CMNotificationCenterGetDefaultLocalCenter();
      if (CMNotificationCenterPostNotification())
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      }

      else
      {
        if (!dword_1ED4CBE90)
        {
          goto LABEL_8;
        }

        v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_8:
      CFRelease(v3);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }
}

void *__videoReceiver_setPrepareDataChannelsWithDependentResourcesCallback_block_invoke(void *result)
{
  *(result[4] + 248) = result[5];
  *(result[4] + 256) = result[6];
  return result;
}

void *__videoReceiver_setResourceLifeCycleCallback_block_invoke(void *result)
{
  *(result[4] + 272) = result[5];
  *(result[4] + 280) = result[6];
  return result;
}

void *__videoReceiver_setResourceLifeCycleHandler_block_invoke(void *result)
{
  *(*(result[5] + 8) + 40) = *(result[6] + 424);
  *(result[6] + 424) = result[4];
  return result;
}

void *__videoReceiver_setPrepareDataChannelsWithDependentResourcesHandler_block_invoke(void *result)
{
  *(*(result[5] + 8) + 40) = *(result[6] + 432);
  *(result[6] + 432) = result[4];
  return result;
}

uint64_t videoReceiver_createImageQueueReceiver(CFTypeRef cf, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5)
{
  v37 = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBE90 >= 2)
  {
    v25 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!cf || (v10 = CFGetTypeID(cf), v10 != FigVideoReceiverGetTypeID(v10)))
  {
    videoReceiver_createImageQueueReceiver_cold_4(&time);
    return LODWORD(time.value);
  }

  if (!a2)
  {
    videoReceiver_createImageQueueReceiver_cold_3(&time);
    return LODWORD(time.value);
  }

  if (!a5)
  {
    videoReceiver_createImageQueueReceiver_cold_2(&time);
    return LODWORD(time.value);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = CAXPCImageQueueReceiverCreate();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    videoReceiver_createImageQueueReceiver_cold_1(&time);
    value_low = LODWORD(time.value);
    if (!v12)
    {
      return value_low;
    }

    goto LABEL_23;
  }

  v14 = Mutable;
  FigCFDictionarySetValue();
  if (*(DerivedStorage + 152))
  {
    CAXPCImageQueueReceiverSetDisplayedPixelCount();
  }

  if ((*(DerivedStorage + 168) & 0x1D) == 1)
  {
    time = *(DerivedStorage + 156);
    CMTimeGetSeconds(&time);
    Float32 = FigCFNumberCreateFloat32();
    CAXPCImageQueueReceiverSetProperty();
    if (Float32)
    {
      CFRelease(Float32);
    }
  }

  v16 = *(DerivedStorage + 144);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __videoReceiver_createImageQueueReceiver_block_invoke;
  block[3] = &__block_descriptor_tmp_74;
  block[4] = a2;
  block[5] = DerivedStorage;
  block[6] = v14;
  dispatch_sync(v16, block);
  if (dword_1ED4CBE90)
  {
    v25 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v18 = v25;
    v19 = type;
    if (os_log_type_enabled(v17, type))
    {
      v20 = v18;
    }

    else
    {
      v20 = v18 & 0xFFFFFFFE;
    }

    if (v20)
    {
      v21 = CMBaseObjectGetDerivedStorage();
      v26 = 136316162;
      v27 = "videoReceiver_createImageQueueReceiver";
      v28 = 2048;
      v29 = cf;
      v30 = 2082;
      v31 = v21 + 228;
      v32 = 2048;
      v33 = v12;
      v34 = 2048;
      v35 = a2;
      _os_log_send_and_compose_impl(v20, 0, &time, 128, &dword_1962D5000, v17, v19, "<<<< FigVideoReceiverForBufferDelivery >>>> %s: [%p|%{public}s]: Created image queue(%p) on receiver for ID:%llu", &v26, 52);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CFRelease(v14);
  value_low = 0;
  if (v12)
  {
LABEL_23:
    CFRelease(v12);
  }

  return value_low;
}

uint64_t videoReceiver_releaseImageQueueReceiver(CFTypeRef cf, uint64_t a2, __n128 a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBE90 >= 2)
  {
    v11 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!cf || (v7 = CFGetTypeID(cf), v7 != FigVideoReceiverGetTypeID(v7)))
  {
    videoReceiver_releaseImageQueueReceiver_cold_2(v12);
    return v12[0];
  }

  if (!a2)
  {
    videoReceiver_releaseImageQueueReceiver_cold_1(v12);
    return v12[0];
  }

  v8 = *(CMBaseObjectGetDerivedStorage() + 144);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __videoReceiver_releaseImageQueueReceiver_block_invoke;
  block[3] = &__block_descriptor_tmp_75_0;
  block[4] = cf;
  block[5] = a2;
  dispatch_sync(v8, block);
  return 0;
}

uint64_t videoReceiver_setImageQueueMessage(const void *a1, const char *a2, uint64_t a3)
{
  block[16] = *MEMORY[0x1E69E9840];
  v6 = CAXPCImageQueueCommandForMessage();
  if (dword_1ED4CBE90 >= 2)
  {
    LODWORD(theArray) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1 || (v9 = CFGetTypeID(a1), v9 != FigVideoReceiverGetTypeID(v9)))
  {
    videoReceiver_setImageQueueMessage_cold_4(block);
    return LODWORD(block[0]);
  }

  if (!a2)
  {
    videoReceiver_setImageQueueMessage_cold_3(block);
    return LODWORD(block[0]);
  }

  if (!a3)
  {
    videoReceiver_setImageQueueMessage_cold_2(block);
    return LODWORD(block[0]);
  }

  if (v6 == 5)
  {
    v30 = 0;
    *type = 0;
    theArray = 0;
    values = 0;
    cf = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v11 = atomic_load((DerivedStorage + 624));
    if (v11)
    {
      v12 = DerivedStorage;
      v13 = videoReceiver_copyImageQueueReceiverWithID(a1, a2, &cf);
      if (v13)
      {
        v8 = v13;
      }

      else
      {
        v8 = videoReceiver_copyOutputQueuesIfReady(a1, &v30, 0, &theArray, type, 0, 0, 0);
        if (!v8 && v30)
        {
          v14 = 0;
          v15 = cf;
          while (1)
          {
            Count = theArray;
            if (theArray)
            {
              Count = CFArrayGetCount(theArray);
            }

            if (v14 >= Count)
            {
              goto LABEL_30;
            }

            if (v15 == CFArrayGetValueAtIndex(theArray, v14))
            {
              values = CFArrayGetValueAtIndex(*type, v14);
              CFRetain(a1);
              v21 = CFGetAllocator(a1);
              v22 = CFDictionaryCreate(v21, kFigVideoReceiverDataChannelEventInfo_ChannelDescription, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              FigSimpleMutexLock();
              v23 = *(v12 + 616);
              if (!v23)
              {
                v23 = *(v12 + 264);
              }

              v24 = _Block_copy(*(v12 + 608));
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 0x40000000;
              block[2] = __videoReceiver_lowLatencyImageEnqueuedForImageQueueWithID_block_invoke;
              block[3] = &unk_1E7483880;
              block[4] = v24;
              block[5] = a1;
              block[6] = v22;
              dispatch_async(v23, block);
              FigSimpleMutexUnlock();
              goto LABEL_30;
            }

            ++v14;
          }
        }

        if (dword_1ED4CBE90 >= 2)
        {
          v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

LABEL_31:
      if (theArray)
      {
        CFRelease(theArray);
      }

      if (*type)
      {
        CFRelease(*type);
      }

      v19 = cf;
      if (cf)
      {
        goto LABEL_36;
      }

      return v8;
    }

LABEL_30:
    v8 = 0;
    goto LABEL_31;
  }

  block[0] = 0;
  v17 = videoReceiver_copyImageQueueReceiverWithID(a1, a2, block);
  v18 = block[0];
  if (v17)
  {
    v8 = v17;
  }

  else if (CAXPCImageQueueReceiverProcessMessage())
  {
    v8 = 0;
  }

  else
  {
    videoReceiver_setImageQueueMessage_cold_1(&v31);
    v8 = v31;
  }

  if (v18)
  {
    v19 = v18;
LABEL_36:
    CFRelease(v19);
  }

  return v8;
}

uint64_t videoReceiver_createDataQueue(const void *a1, uint64_t a2, __int128 *a3, CMTime *a4, CFTypeRef *a5, __n128 a6)
{
  v31 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (dword_1ED4CBE90 >= 2)
  {
    v24 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a5)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v13 = CFGetAllocator(a1);
    v30[0] = *a3;
    v26 = *a4;
    v14 = FigDataQueueCreate(v13, a2, v30, &v26, &cf);
    if (v14)
    {
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      v15 = *(DerivedStorage + 144);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __videoReceiver_createDataQueue_block_invoke;
      block[3] = &__block_descriptor_tmp_78;
      block[4] = cf;
      block[5] = DerivedStorage;
      dispatch_sync(v15, block);
      if (dword_1ED4CBE90)
      {
        v24 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v17 = v24;
        v18 = type;
        if (os_log_type_enabled(v16, type))
        {
          v19 = v17;
        }

        else
        {
          v19 = v17 & 0xFFFFFFFE;
        }

        if (v19)
        {
          if (a1)
          {
            v20 = (CMBaseObjectGetDerivedStorage() + 228);
          }

          else
          {
            v20 = "";
          }

          LODWORD(v26.value) = 136315906;
          *(&v26.value + 4) = "videoReceiver_createDataQueue";
          LOWORD(v26.flags) = 2048;
          *(&v26.flags + 2) = a1;
          HIWORD(v26.epoch) = 2082;
          v27 = v20;
          v28 = 2048;
          v29 = cf;
          _os_log_send_and_compose_impl(v19, 0, v30, 128, &dword_1962D5000, v16, v18, "<<<< FigVideoReceiverForBufferDelivery >>>> %s: [%p|%{public}s]: Created data queue(%p)", &v26, 42);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v14 = 0;
      *a5 = cf;
    }
  }

  else
  {
    videoReceiver_createDataQueue_cold_1(v30);
    return LODWORD(v30[0].value);
  }

  return v14;
}

uint64_t videoReceiver_createDataChannelResource(const void *a1, uint64_t a2, uint64_t a3, CFTypeRef *a4, __n128 a5)
{
  v23 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (dword_1ED4CBE90 >= 3)
  {
    v20 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v11 = CFGetAllocator(a1);
    v12 = FigDataChannelResourceCreate(v11, a2, a3, &cf);
    if (v12)
    {
      v16 = v12;
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      if (dword_1ED4CBE90)
      {
        v20 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (a1)
      {
        CFRetain(a1);
      }

      if (cf)
      {
        CFRetain(cf);
        v14 = cf;
      }

      else
      {
        v14 = 0;
      }

      v15 = *(DerivedStorage + 264);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __videoReceiver_createDataChannelResource_block_invoke;
      block[3] = &__block_descriptor_tmp_79;
      block[4] = DerivedStorage;
      block[5] = a1;
      block[6] = v14;
      dispatch_async(v15, block);
      v16 = 0;
      *a4 = cf;
    }
  }

  else
  {
    videoReceiver_createDataChannelResource_cold_1(v22);
    return v22[0];
  }

  return v16;
}

uint64_t videoReceiver_announceDataChannelResourceRemoval(CFTypeRef cf, const void *a2, __n128 a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBE90 >= 3)
  {
    v12 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf && (v7 = CFGetTypeID(cf), v7 == FigVideoReceiverGetTypeID(v7)))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    CFRetain(cf);
    if (a2)
    {
      CFRetain(a2);
    }

    v9 = *(DerivedStorage + 264);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __videoReceiver_announceDataChannelResourceRemoval_block_invoke;
    block[3] = &__block_descriptor_tmp_80;
    block[4] = DerivedStorage;
    block[5] = cf;
    block[6] = a2;
    dispatch_async(v9, block);
    return 0;
  }

  else
  {
    videoReceiver_announceDataChannelResourceRemoval_cold_1(v13);
    return v13[0];
  }
}

uint64_t videoReceiver_getInstanceType(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = 2;
    }

    else
    {
      videoReceiver_getInstanceType_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    videoReceiver_getInstanceType_cold_2(&v4);
    return v4;
  }

  return result;
}

double __videoReceiver_addDataChannelConfiguration_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (FigCFEqual())
  {
    v3 = *(*(a1 + 40) + 72) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3 || FigCFEqual())
  {
    if (dword_1ED4CBE90 >= 2)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    FigVideoReceiverConfigurationSchedulerReset(*(*(a1 + 40) + 48));
    videoReceiver_replacePendingConfiguration(*(a1 + 48), *(a1 + 32));
    v5 = *(a1 + 40);
    v6 = MEMORY[0x1E6960C70];
    v2 = *MEMORY[0x1E6960C70];
    *(v5 + 116) = *MEMORY[0x1E6960C70];
    *(v5 + 132) = *(v6 + 16);
  }

  return *&v2;
}

void __videoReceiver_addDataChannelConfiguration_block_invoke_70(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2[31];
  if (v3)
  {
    if (dword_1ED4CBE90)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v2 = *(a1 + 32);
      v3 = v2[31];
    }

    v5 = *(a1 + 40);
    v6 = *(a1 + 104);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
    v10 = v2[32];
    v24 = *(a1 + 80);
    v25 = *(a1 + 96);
    v3(v5, &v24, v6, v7, v8, v9, v10);
    v2 = *(a1 + 32);
  }

  v11 = v2[54];
  if (v11)
  {
    if (dword_1ED4CBE90)
    {
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v11 = *(*(a1 + 32) + 432);
    }

    v13 = *(a1 + 40);
    v14 = *(a1 + 104);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    v17 = *(a1 + 72);
    v18 = *(v11 + 16);
    v24 = *(a1 + 80);
    v25 = *(a1 + 96);
    v18(v11, v13, &v24, v14, v15, v16, v17);
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(a1 + 56);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(a1 + 64);
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *(a1 + 72);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(a1 + 48);
  if (v23)
  {
    CFRelease(v23);
  }
}

const __CFDictionary *videoReceiver_getImageQueueReceiverByIDOnSyncQueue(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  UInt64 = FigCFNumberCreateUInt64();
  Value = CFDictionaryGetValue(*(DerivedStorage + 16), UInt64);
  if (UInt64)
  {
    CFRelease(UInt64);
  }

  if (Value)
  {
    Value = CFDictionaryGetValue(Value, @"ImageQueueReceiverKey");
    if (dword_1ED4CBE90 >= 7)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return Value;
}

void __videoReceiver_createImageQueueReceiver_block_invoke(uint64_t a1)
{
  UInt64 = FigCFNumberCreateUInt64();
  CFDictionarySetValue(*(*(a1 + 40) + 16), UInt64, *(a1 + 48));
  if (UInt64)
  {

    CFRelease(UInt64);
  }
}

void __videoReceiver_releaseImageQueueReceiver_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBE90 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  UInt64 = FigCFNumberCreateUInt64();
  Value = CFDictionaryGetValue(*(DerivedStorage + 16), UInt64);
  if (Value)
  {
    CFDictionaryGetValue(Value, @"ImageQueueReceiverKey");
    if (dword_1ED4CBE90)
    {
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CFDictionaryRemoveValue(*(DerivedStorage + 16), UInt64);
  }

  if (UInt64)
  {
    CFRelease(UInt64);
  }
}

uint64_t videoReceiver_copyImageQueueReceiverWithID(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v6 = *(CMBaseObjectGetDerivedStorage() + 144);
  block = MEMORY[0x1E69E9820];
  v15 = 0x40000000;
  v16 = __videoReceiver_copyImageQueueReceiverWithID_block_invoke;
  v17 = &unk_1E74838A8;
  v18 = &v21;
  v19 = a1;
  v20 = a2;
  dispatch_sync(v6, &block);
  v7 = v22;
  v8 = v22[3];
  if (v8)
  {
    v9 = 0;
    *a3 = v8;
    v7[3] = 0;
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, block, v15);
    v9 = v11;
    v12 = v22[3];
    if (v12)
    {
      CFRelease(v12);
    }
  }

  _Block_object_dispose(&v21, 8);
  return v9;
}

void __videoReceiver_lowLatencyImageEnqueuedForImageQueueWithID_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 40), 1, *(a1 + 48));
    _Block_release(*(a1 + 32));
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {

    CFRelease(v4);
  }
}

const void *__videoReceiver_copyImageQueueReceiverWithID_block_invoke(void *a1)
{
  result = videoReceiver_getImageQueueReceiverByIDOnSyncQueue(a1[5], a1[6]);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void __videoReceiver_createDataQueue_block_invoke(uint64_t a1)
{
  v2 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  CFArrayAppendValue(*(*(a1 + 40) + 64), v2);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __videoReceiver_createDataChannelResource_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = v2[34];
  if (v3)
  {
    v3(a1[5], a1[6], v2[35], 0);
    v2 = a1[4];
  }

  v4 = v2[53];
  if (v4)
  {
    (*(v4 + 16))(v4, a1[5], a1[6], 0);
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[6];
  if (v6)
  {

    CFRelease(v6);
  }
}

void __videoReceiver_announceDataChannelResourceRemoval_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = v2[34];
  if (v3)
  {
    v3(a1[5], a1[6], v2[35], 1);
    v2 = a1[4];
  }

  v4 = v2[53];
  if (v4)
  {
    (*(v4 + 16))(v4, a1[5], a1[6], 1);
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[6];
  if (v6)
  {

    CFRelease(v6);
  }
}

dispatch_queue_t __vr_copyGlobalNotificationQueue_block_invoke()
{
  result = dispatch_queue_create("com.apple.coremedia.videoreceiver.notificationqueue", 0);
  vr_copyGlobalNotificationQueue_sCommonVideoReceiverForBufferDeliveryNotificationQueue = result;
  return result;
}

uint64_t fvr_isAllowedToLog(uint64_t a1, int a2)
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (*(a1 + 4) == a2 && *a1)
  {
    v5 = *(a1 + 16) + 1;
    *(a1 + 16) = v5;
    if (!a2 || v5 > *(a1 + 32) && UpTimeNanoseconds < *(a1 + 24) + *(a1 + 8))
    {
      return 0;
    }

    *(a1 + 8) = UpTimeNanoseconds;
  }

  else
  {
    *(a1 + 4) = a2;
    *(a1 + 8) = UpTimeNanoseconds;
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 20) = v7;
  }

  return 1;
}

void __videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample_block_invoke(uint64_t a1)
{
  if (!*(a1 + 64))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 92);
    *(v2 + 376) = *(a1 + 108);
    *(v2 + 360) = v3;
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(v5 + 384);
    *(v5 + 384) = v4;
    if (v4)
    {
      CFRetain(v4);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(a1 + 32);
    v8 = *(v7 + 392);
    v9 = *(a1 + 48);
    *(v7 + 392) = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    v10 = *(a1 + 32);
    v11 = *(v10 + 400);
    v12 = *(a1 + 56);
    *(v10 + 400) = v12;
    if (v12)
    {
      CFRetain(v12);
    }

    if (v11)
    {

      CFRelease(v11);
    }
  }
}

__n128 __videoReceiver_updateActiveConfigurationForHostTimeIfNecessary_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  time1 = *(a1 + 48);
  v6 = *(v2 + 116);
  if ((CMTimeCompare(&time1, &v6) & 0x80000000) == 0)
  {
    v4 = *(a1 + 32);
    *(v4 + 88) = 1;
    v5 = *(a1 + 48);
    *(v4 + 108) = *(a1 + 64);
    *(v4 + 92) = v5;
    videoReceiver_activateReceiverConfigurationOnSyncQueue(*(a1 + 40));
  }

  return result;
}

const __CFArray *__videoReceiver_createConformedPixelBufferWithClientSpecifiedAttributes_block_invoke(uint64_t a1)
{
  for (i = 0; ; ++i)
  {
    result = *(*(a1 + 40) + 464);
    if (result)
    {
      result = CFArrayGetCount(result);
    }

    if (i >= result)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 40) + 464), i);
    if (CMTagCollectionContainsTagsOfCollection(*(a1 + 48), ValueAtIndex))
    {
      result = CFArrayGetValueAtIndex(*(*(a1 + 40) + 472), i);
      if (result)
      {
        result = CFRetain(result);
      }

      *(*(*(a1 + 32) + 8) + 24) = result;
      return result;
    }
  }

  return result;
}

uint64_t samplingEventIdentifier_create(uint64_t a1, CMTime *a2, const void *a3, uint64_t *a4, __n128 a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBE90 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a4)
  {
    samplingEventIdentifier_create_cold_3(&time);
    return LODWORD(time.value);
  }

  if (FigSamplingEventIdentifierGetTypeID_sRegisterSamplingEventIdentifierTypeOnce != -1)
  {
    samplingEventIdentifier_create_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    samplingEventIdentifier_create_cold_2(&time);
    return LODWORD(time.value);
  }

  v10 = Instance;
  v11 = *&a2->value;
  *(Instance + 40) = a2->epoch;
  *(Instance + 24) = v11;
  if (a3)
  {
    v12 = CFRetain(a3);
  }

  else
  {
    v12 = 0;
  }

  v13 = 0;
  *(v10 + 16) = v12;
  if (a3)
  {
    goto LABEL_13;
  }

LABEL_14:
  for (i = 0; v13 < i; i = CFArrayGetCount(a3))
  {
    *(CFArrayGetValueAtIndex(a3, v13++) + 26) = 1;
    if (!a3)
    {
      goto LABEL_14;
    }

LABEL_13:
    ;
  }

  result = 0;
  *a4 = v10;
  return result;
}

void *__videoReceiver_copyCachedTaggedBufferGroupAndRelatedObjectsIfAvailable_block_invoke(void *result)
{
  v1 = result[10];
  if ((*(v1 + 372) & 1) != 0 && *(v1 + 384))
  {
    v2 = result;
    *(*(result[4] + 8) + 24) = 1;
    v3 = *(result[10] + 384);
    if (v3)
    {
      v3 = CFRetain(v3);
    }

    *(*(v2[5] + 8) + 24) = v3;
    v4 = *(v2[6] + 8);
    v5 = v2[10];
    v6 = *(v5 + 360);
    *(v4 + 40) = *(v5 + 376);
    *(v4 + 24) = v6;
    result = *(v2[10] + 392);
    if (result)
    {
      result = CFRetain(result);
    }

    *(*(v2[7] + 8) + 24) = result;
    if (v2[11])
    {
      result = FigCFWeakReferenceHolderCopyReferencedObject();
      *(*(v2[8] + 8) + 24) = result;
      if (!*(*(v2[8] + 8) + 24))
      {
        v7 = CFGetAllocator(v2[12]);
        v8 = *(v2[8] + 8);
        v9 = *(*(v2[6] + 8) + 24);
        result = samplingEventIdentifier_create(v7, &v9, 0, (v8 + 24), *&v9.value);
      }
    }

    if (v2[13])
    {
      result = *(v2[10] + 400);
      if (result)
      {
        result = CFRetain(result);
      }

      *(*(v2[9] + 8) + 24) = result;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_1_55(int a1@<W8>, double a2@<D0>)
{
  LOWORD(STACK[0x2A6]) = 2082;
  STACK[0x2A8] = v5;
  LOWORD(STACK[0x2B0]) = v3;
  *(v4 + 34) = a2;
  LOWORD(STACK[0x2BA]) = 2080;
  *(v4 + 44) = v2;
  LOWORD(STACK[0x2C4]) = 1024;
  *(v4 + 54) = a1;
}

uint64_t OUTLINED_FUNCTION_2_54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, ...)
{
  va_start(va, a60);

  return _os_log_send_and_compose_impl(v62, 0, va, 128, a5, v60, v61, a8);
}

CFIndex OUTLINED_FUNCTION_5_41(const __CFString *a1, CFRange a2, uint64_t a3, uint64_t a4, uint64_t a5, UInt8 *a6, uint64_t a7, CFIndex *a8)
{
  a2.location = 0;

  return CFStringGetBytes(a1, a2, 0, 0x3Fu, 0, a6, 8, a8);
}

Float64 OUTLINED_FUNCTION_11_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, CMTime *time, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t timea, int time_8, int time_12)
{
  timea = *(v66 - 184);
  time_8 = *(v66 - 176);
  time_12 = v64;
  time_16 = v65;

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_17_10(uint64_t a1)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

Float64 OUTLINED_FUNCTION_21_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, CMTime *time, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, __int128 timea, uint64_t time_16)
{
  timea = *a18;
  time_16 = *(a18 + 2);

  return CMTimeGetSeconds(&timea);
}

BOOL OUTLINED_FUNCTION_24_10(NSObject *a1)
{
  v3 = *(v1 - 168);

  return os_log_type_enabled(a1, v3);
}

Float64 OUTLINED_FUNCTION_32_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, CMTime *time, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, __int128 timea, uint64_t time_16)
{
  timea = *v62;
  time_16 = *(v62 + 16);

  return CMTimeGetSeconds(&timea);
}

void OUTLINED_FUNCTION_35_8()
{
  STACK[0x290] = *(v2 - 184);
  LODWORD(STACK[0x298]) = *(v2 - 176);
  LODWORD(STACK[0x29C]) = v0;
  STACK[0x2A0] = v1;
}

BOOL OUTLINED_FUNCTION_37_7(NSObject *a1)
{
  v3 = *(v1 - 168);

  return os_log_type_enabled(a1, v3);
}

Float64 OUTLINED_FUNCTION_38_7@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, CMTime *time, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t timea, uint64_t time_8, uint64_t time_16)
{
  time_16 = a1;

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_41_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X6>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{

  return videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration(a1, a2, (a4 + 24), (v45 + 24), (v46 + 24), (v47 + 24), a3, &a45, &a44);
}

uint64_t OUTLINED_FUNCTION_50_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, char a55, int a56)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_51_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19, int a20)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_52_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, __int16 a54, char a55, char a56, int a57)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void OUTLINED_FUNCTION_53_5()
{
  LOWORD(STACK[0x2A6]) = 2082;
  STACK[0x2A8] = v0;
  LOWORD(STACK[0x2B0]) = 1024;
}

__n128 OUTLINED_FUNCTION_58_1()
{
  result = *&STACK[0x338];
  *&STACK[0x290] = *&STACK[0x338];
  STACK[0x2A0] = *(v0 - 152);
  return result;
}

char *OUTLINED_FUNCTION_59_3(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, ...)
{
  va_start(va, a60);

  return strncpy((v60 - 240), va, 8uLL);
}

uint64_t OUTLINED_FUNCTION_60_6()
{
  *&STACK[0x290] = *v0;
  STACK[0x2A0] = *(v0 + 16);

  return CMBaseObjectGetDerivedStorage();
}

__n128 OUTLINED_FUNCTION_69_2()
{
  result = *(v0 + 152);
  *(v1 + 16) = *(v0 + 168);
  return result;
}

BOOL OUTLINED_FUNCTION_74_4(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, os_log_type_t type, int a20)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_75_3(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, os_log_type_t type, int a56)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_76_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_77_4(NSObject *a1)
{
  v2 = STACK[0x270];

  return os_log_type_enabled(a1, v2);
}

void OUTLINED_FUNCTION_78_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);

  _Block_object_dispose(va, 8);
}

uint64_t FigStreamTrackGetSyncPairID(uint64_t result)
{
  if (result)
  {
    return *(result + 44);
  }

  return result;
}

uint64_t FigStreamTrackIsRendererTimebaseStarter(uint64_t a1)
{
  cf = 0;
  if (!*(a1 + 112))
  {
    return 0;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  FigRenderPipelineGetFigBaseObject();
  v3 = v2;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    return 0;
  }

  if (v4(v3, @"IsTimebaseStarter", AllocatorForMedia, &cf))
  {
    v5 = 0;
  }

  else
  {
    v5 = cf == *MEMORY[0x1E695E4D0];
  }

  v6 = v5;
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t FigStreamTrack_initOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigStreamTrackID = result;
  return result;
}

uint64_t FigStreamTrackCreate(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, const void *a6, char a7, int a8, uint64_t a9, const void *a10, uint64_t *a11)
{
  if (!a3)
  {
    FigStreamTrackCreate_cold_2(&v39);
    return v39;
  }

  MEMORY[0x19A8D3660](&FigStreamTrackGetTypeID_sFigStreamTrackRegisterOnce, FigStreamTrack_initOnce);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigStreamTrackCreate_cold_1(&v38);
    return v38;
  }

  v19 = Instance;
  *(Instance + 32) = a2;
  v20 = MEMORY[0x1E6960C70];
  *(Instance + 44) = a3;
  v37 = *v20;
  *(Instance + 144) = *v20;
  v21 = *(v20 + 2);
  *(Instance + 160) = v21;
  *(Instance + 208) = v37;
  *(Instance + 224) = v21;
  *(Instance + 232) = v37;
  *(Instance + 248) = v21;
  *(Instance + 256) = v37;
  *(Instance + 272) = v21;
  *(Instance + 304) = v21;
  *(Instance + 288) = v37;
  v22 = MEMORY[0x1E6960CC0];
  v23 = *MEMORY[0x1E6960CC0];
  *(Instance + 412) = *MEMORY[0x1E6960CC0];
  v24 = *(v22 + 16);
  *(Instance + 428) = v24;
  *(Instance + 352) = v24;
  *(Instance + 336) = v23;
  *(Instance + 440) = -1;
  *(Instance + 360) = FigGetUpTimeNanoseconds();
  *(v19 + 376) = v37;
  *(v19 + 392) = v21;
  v25 = MEMORY[0x1E6960C98];
  v26 = *(MEMORY[0x1E6960C98] + 16);
  *(v19 + 512) = *MEMORY[0x1E6960C98];
  *(v19 + 528) = v26;
  *(v19 + 544) = *(v25 + 32);
  *(v19 + 16) = a4;
  *(v19 + 40) = a5;
  if (a6)
  {
    v27 = CFRetain(a6);
  }

  else
  {
    v27 = 0;
  }

  *(v19 + 64) = v27;
  *(v19 + 196) = a7;
  *(v19 + 80) = a9;
  if (a10)
  {
    v28 = CFRetain(a10);
  }

  else
  {
    v28 = 0;
  }

  *(v19 + 456) = v28;
  IsIFrameOnly = 1;
  if (a8 <= 1935832171)
  {
    if (a8 == 1668047728 || a8 == 1835365473)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if (a8 != 1935832172)
  {
    if (a8 == 1936684398)
    {
      goto LABEL_17;
    }

    if (a8 == 1986618469)
    {
      IsIFrameOnly = FigAlternateIsIFrameOnly(a10);
      goto LABEL_16;
    }

LABEL_21:
    *(v19 + 560) = v37;
    *(v19 + 576) = v21;
    v35 = 4294947616;
    goto LABEL_22;
  }

LABEL_16:
  *(v19 + 200) = IsIFrameOnly;
LABEL_17:
  *(v19 + 560) = v37;
  *(v19 + 576) = v21;
  *(v19 + 48) = a8;
  AllocatorForMedia = FigGetAllocatorForMedia();
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v32 = CMBufferQueueCreate(AllocatorForMedia, 0, CallbacksForUnsortedSampleBuffers, (v19 + 88));
  if (v32)
  {
    v35 = v32;
    goto LABEL_22;
  }

  v33 = FigGetAllocatorForMedia();
  v34 = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v35 = CMBufferQueueCreate(v33, 0, v34, (v19 + 96));
  if (v35)
  {
LABEL_22:
    CFRelease(v19);
    return v35;
  }

  *a11 = v19;
  return v35;
}

__n128 FigStreamTrackGetRecentSampleEndTimeForTrack@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x1E6960C70];
  result = *MEMORY[0x1E6960C70];
  *a2 = *MEMORY[0x1E6960C70];
  *(a2 + 16) = *(v2 + 16);
  if (a1)
  {
    v4 = 560;
    if ((*(a1 + 572) & 1) == 0)
    {
      v4 = 208;
    }

    v5 = (a1 + v4);
    result = *v5;
    *a2 = *v5;
    *(a2 + 16) = v5[1].n128_u64[0];
  }

  return result;
}

__n128 FigStreamTrackUpdateRecentSampleEndTimeForTrack(uint64_t a1)
{
  if (a1)
  {
    result = *(a1 + 232);
    *(a1 + 560) = result;
    *(a1 + 576) = *(a1 + 248);
  }

  return result;
}

void *fst_finalize(void *a1)
{
  FigFormatDescriptionRelease();
  v2 = a1[56];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[57];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[60];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[9];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[13];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[8];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[50];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[11];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[12];
  if (v10)
  {
    CFRelease(v10);
  }

  return memset(a1 + 2, 3, 0x238uLL);
}

CFStringRef fst_copyFormattingDesc(uint64_t a1)
{
  v19 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = v2 >> 24;
  v4 = MEMORY[0x1E69E9830];
  if ((v2 & 0x80000000) != 0)
  {
    v5 = __maskrune(HIBYTE(*(a1 + 48)), 0x40000uLL);
    LODWORD(v2) = *(a1 + 48);
  }

  else
  {
    v5 = *(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x40000;
  }

  v6 = MEMORY[0x1E695E480];
  v7 = BYTE2(v2);
  if (BYTE2(v2) > 0x7Fu)
  {
    v8 = __maskrune(BYTE2(v2), 0x40000uLL);
    LODWORD(v2) = *(a1 + 48);
  }

  else
  {
    v8 = *(v4 + 4 * BYTE2(v2) + 60) & 0x40000;
  }

  v9 = *v6;
  v10 = BYTE1(v2);
  if (BYTE1(v2) > 0x7Fu)
  {
    v11 = __maskrune(BYTE1(v2), 0x40000uLL);
    LOBYTE(v2) = *(a1 + 48);
  }

  else
  {
    v11 = *(v4 + 4 * BYTE1(v2) + 60) & 0x40000;
  }

  v12 = v2;
  if (v2 > 0x7Fu)
  {
    v13 = __maskrune(v2, 0x40000uLL);
  }

  else
  {
    v13 = *(v4 + 4 * v2 + 60) & 0x40000;
  }

  if (v11)
  {
    v14 = v10;
  }

  else
  {
    v14 = 46;
  }

  if (v8)
  {
    v15 = v7;
  }

  else
  {
    v15 = 46;
  }

  if (v5)
  {
    v16 = v3;
  }

  else
  {
    v16 = 46;
  }

  if (v13)
  {
    v17 = v12;
  }

  else
  {
    v17 = 46;
  }

  return CFStringCreateWithFormat(v9, 0, @"Track[%p] %d [%c%c%c%c]", a1, v19, v16, v15, v14, v17);
}

void FigSampleBufferProcessorCreateForMonochrome(uint64_t a1, CFTypeRef *a2)
{
  if (a2)
  {
    FigSampleBufferProcessorGetClassID();
    if (!CMDerivedObjectCreate())
    {
      *a2 = 0;
    }
  }

  else
  {

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }
}

void *sbp_monochrome_finalize(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *result = 0;
  return result;
}

__CFString *sbp_monochrome_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProcessor_Monochrome %p>", a1);
  return Mutable;
}

uint64_t sbp_monochrome_setOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a2;
  DerivedStorage[1] = a3;
  return 0;
}

uint64_t sbp_monochrome_processSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  if (ImageBuffer)
  {
    v6 = ImageBuffer;
    if (CVPixelBufferGetPixelFormatType(ImageBuffer) == 875704438)
    {
      if (!CVPixelBufferLockBaseAddress(v6, 0))
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v6, 1uLL);
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v6, 1uLL);
        WidthOfPlane = CVPixelBufferGetWidthOfPlane(v6, 1uLL);
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(v6, 1uLL);
        if (WidthOfPlane == BytesPerRowOfPlane >> 1)
        {
          memset(BaseAddressOfPlane, 136, 2 * WidthOfPlane * HeightOfPlane);
          v9 = 0;
        }

        else
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v17, v18);
          v9 = v15;
        }

        CVPixelBufferUnlockBaseAddress(v6, 0);
        goto LABEL_8;
      }

      v8.n128_f64[0] = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954516, "(Fig)", 92, v2);
    }

    else
    {
      v8.n128_f64[0] = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954516, "(Fig)", 86, v2);
    }
  }

  else
  {
    v8.n128_f64[0] = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954516, "(Fig)", 80, v2);
  }

  v9 = v7;
LABEL_8:
  if (*DerivedStorage)
  {
    (*DerivedStorage)(*(DerivedStorage + 8), v9, a2, v8);
  }

  return v9;
}

uint64_t FigVideoReceiverForCALayerCommonCreateFigImageQueue(const void *a1, uint64_t a2, CFTypeRef *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  cf = 0;
  v12 = 0;
  if (!a3)
  {
    FigVideoReceiverForCALayerCommonCreateFigImageQueue_cold_3(v13);
    Mutable = 0;
LABEL_16:
    v9 = v13[0];
    goto LABEL_8;
  }

  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetStringIfPresent();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FigVideoReceiverForCALayerCommonCreateFigImageQueue_cold_2(v13);
    goto LABEL_16;
  }

  if (dword_1ED4CBE90)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FPSupport_EnsureCAImageQueue(&cf, 0, 0, 0, 0x20u);
  if (!cf)
  {
    FigVideoReceiverForCALayerCommonCreateFigImageQueue_cold_1(v13);
    goto LABEL_16;
  }

  v7 = CFGetAllocator(a1);
  FigImageQueueCreateForCoreAnimationWithOptions(v7, cf, Mutable, &v12);
  if (v8)
  {
    v9 = v8;
    if (v12)
    {
      CFRelease(v12);
    }
  }

  else
  {
    v9 = 0;
    *a3 = v12;
    v12 = 0;
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v9;
}

uint64_t FigVideoReceiverCreateWithVideoLayer(const __CFAllocator *a1, void *a2, uint64_t a3, CFTypeRef *a4)
{
  v51 = *MEMORY[0x1E69E9840];
  cf = 0;
  v48 = a2;
  values = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  v7 = fig_note_initialize_category_with_default_work_cf();
  if (!a2)
  {
    FigVideoReceiverCreateWithVideoLayer_cold_14(&timebaseTime);
LABEL_54:
    value_low = LODWORD(timebaseTime.value);
    goto LABEL_32;
  }

  if (!a4)
  {
    FigVideoReceiverCreateWithVideoLayer_cold_13(&timebaseTime);
    goto LABEL_54;
  }

  FigVideoReceiverGetClassID(v7);
  IsReadyToActivateCallack = CMDerivedObjectCreate();
  if (IsReadyToActivateCallack)
  {
LABEL_31:
    value_low = IsReadyToActivateCallack;
    goto LABEL_32;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = CMBaseObjectGetDerivedStorage();
  v11 = CFGetAllocator(cf);
  LoggingIdentifierOfLength = FigCFStringCreateLoggingIdentifierOfLength();
  if (!LoggingIdentifierOfLength)
  {
    FigVideoReceiverCreateWithVideoLayer_cold_2(&timebaseTime);
    goto LABEL_42;
  }

  v13 = LoggingIdentifierOfLength;
  v14 = CFStringCreateWithFormat(v11, 0, @"L/%@", LoggingIdentifierOfLength);
  if (!v14)
  {
    FigVideoReceiverCreateWithVideoLayer_cold_1(v13, &timebaseTime);
LABEL_42:
    value_low = LODWORD(timebaseTime.value);
    if (!LODWORD(timebaseTime.value))
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

  v15 = v14;
  if (CFStringGetCString(v14, (v10 + 8), 16, 0x600u))
  {
    value_low = 0;
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v42, v43, v44);
    value_low = v17;
  }

  CFRelease(v13);
  CFRelease(v15);
  if (!value_low)
  {
LABEL_10:
    FigDataChannelGroupCreateForUseCase(a1, 116, &values);
    v18 = MEMORY[0x1E695E9C0];
    v19 = CFArrayCreate(a1, &values, 1, MEMORY[0x1E695E9C0]);
    *(DerivedStorage + 144) = v19;
    FigDataChannelGroupsArrayCopyAsDictionary(v19, a1, (DerivedStorage + 152));
    v20 = CFArrayCreate(*MEMORY[0x1E695E480], &v48, 1, v18);
    *(DerivedStorage + 24) = v20;
    if (v20)
    {
      v21 = v20;
      Count = CFArrayGetCount(v20);
      if (Count >= 1)
      {
        v23 = Count;
        v24 = 0;
        do
        {
          CFArrayGetValueAtIndex(v21, v24);
          CMNotificationCenterGetDefaultLocalCenter();
          IsReadyToActivateCallack = FigNotificationCenterAddWeakListener();
          if (IsReadyToActivateCallack)
          {
            goto LABEL_31;
          }
        }

        while (v23 != ++v24);
      }

      v25 = FigSimpleMutexCreate();
      *(DerivedStorage + 136) = v25;
      if (v25)
      {
        Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        *(DerivedStorage + 128) = Mutable;
        if (Mutable)
        {
          v27 = FigSimpleMutexCreate();
          *(DerivedStorage + 232) = v27;
          if (v27)
          {
            v28 = FigSimpleMutexCreate();
            *(DerivedStorage + 280) = v28;
            if (v28)
            {
              v29 = FigSimpleMutexCreate();
              *(DerivedStorage + 296) = v29;
              if (v29)
              {
                v30 = FigSimpleMutexCreate();
                *(DerivedStorage + 256) = v30;
                if (v30)
                {
                  v31 = FigSimpleMutexCreate();
                  *(DerivedStorage + 168) = v31;
                  if (v31)
                  {
                    v32 = FigSimpleMutexCreate();
                    *(DerivedStorage + 200) = v32;
                    if (v32)
                    {
                      v33 = FigDispatchQueueCreateWithPriority();
                      *(DerivedStorage + 32) = v33;
                      if (v33)
                      {
                        HostTimeClock = CMClockGetHostTimeClock();
                        IsReadyToActivateCallack = CMTimebaseCreateWithSourceClock(a1, HostTimeClock, (DerivedStorage + 40));
                        if (!IsReadyToActivateCallack)
                        {
                          v35 = *(DerivedStorage + 40);
                          timebaseTime = **&MEMORY[0x1E6960CC0];
                          immediateSourceTime = timebaseTime;
                          IsReadyToActivateCallack = CMTimebaseSetRateAndAnchorTime(v35, 1.0, &timebaseTime, &immediateSourceTime);
                          if (!IsReadyToActivateCallack)
                          {
                            IsReadyToActivateCallack = FigVideoReceiverConfigurationSchedulerCreate(a1, 0, *(DerivedStorage + 40), 0, (DerivedStorage + 48), v36, v37, v38);
                            if (!IsReadyToActivateCallack)
                            {
                              memset(&v45, 0, sizeof(v45));
                              CMTimeMake(&v45, 50, 1000);
                              v39 = *(DerivedStorage + 48);
                              timebaseTime = v45;
                              IsReadyToActivateCallack = FigVideoReceiverConfigurationSchedulerSetConfigurationIsReadyToActivateCallack(v39, &timebaseTime, videoReceiverForCA_configurationIsReadyCallback, cf);
                              if (!IsReadyToActivateCallack)
                              {
                                IsReadyToActivateCallack = FigVideoReceiverConfigurationSchedulerSetConfigurationWasRemovedCallback(*(DerivedStorage + 48), videoReceiverForCA_schedulerDidRemoveConfigurationCallback, cf);
                                if (!IsReadyToActivateCallack)
                                {
                                  if (dword_1ED4CBE90)
                                  {
                                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                                    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                                  }

                                  value_low = 0;
                                  *a4 = cf;
                                  cf = 0;
                                  goto LABEL_35;
                                }
                              }
                            }
                          }
                        }

                        goto LABEL_31;
                      }

                      FigVideoReceiverCreateWithVideoLayer_cold_3(&timebaseTime);
                    }

                    else
                    {
                      FigVideoReceiverCreateWithVideoLayer_cold_4(&timebaseTime);
                    }
                  }

                  else
                  {
                    FigVideoReceiverCreateWithVideoLayer_cold_5(&timebaseTime);
                  }
                }

                else
                {
                  FigVideoReceiverCreateWithVideoLayer_cold_6(&timebaseTime);
                }
              }

              else
              {
                FigVideoReceiverCreateWithVideoLayer_cold_7(&timebaseTime);
              }
            }

            else
            {
              FigVideoReceiverCreateWithVideoLayer_cold_8(&timebaseTime);
            }
          }

          else
          {
            FigVideoReceiverCreateWithVideoLayer_cold_9(&timebaseTime);
          }
        }

        else
        {
          FigVideoReceiverCreateWithVideoLayer_cold_10(&timebaseTime);
        }
      }

      else
      {
        FigVideoReceiverCreateWithVideoLayer_cold_11(&timebaseTime);
      }
    }

    else
    {
      FigVideoReceiverCreateWithVideoLayer_cold_12(&timebaseTime);
    }

    goto LABEL_54;
  }

LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_35:
  if (values)
  {
    CFRelease(values);
  }

  return value_low;
}

double videoReceiverForCA_schedulerDidRemoveConfigurationCallback(uint64_t a1, uint64_t a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (FigCFEqual())
  {

    FigSimpleMutexUnlock();
  }

  else
  {
    v6 = FigCFEqual();
    FigSimpleMutexUnlock();
    if (!v6)
    {

      return videoReceiverForCA_announceRemovalOfConfiguration(a3, a2);
    }
  }

  return result;
}

void videoReceiverForCA_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v2 = *(DerivedStorage + 48);
  v21 = *MEMORY[0x1E6960C70];
  v22 = *(MEMORY[0x1E6960C70] + 16);
  FigVideoReceiverConfigurationSchedulerSetConfigurationIsReadyToActivateCallack(v2, &v21, 0, 0);
  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    Count = CFArrayGetCount(*(DerivedStorage + 24));
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        CFArrayGetValueAtIndex(v3, i);
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
      }
    }
  }

  v7 = *(DerivedStorage + 88);
  v8 = *(DerivedStorage + 96);
  *(DerivedStorage + 88) = 0;
  *(DerivedStorage + 96) = 0;
  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  FigVideoReceiverConfigurationSchedulerSetConfigurationWasRemovedCallback(*(DerivedStorage + 48), 0, 0);
  FigVideoReceiverConfigurationSchedulerReset(*(DerivedStorage + 48));
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v9 = *(DerivedStorage + 48);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 48) = 0;
  }

  if (*(DerivedStorage + 136))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 136) = 0;
  }

  v10 = *(DerivedStorage + 40);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 40) = 0;
  }

  v11 = *(DerivedStorage + 128);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 128) = 0;
  }

  v12 = *(DerivedStorage + 144);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 144) = 0;
  }

  v13 = *(DerivedStorage + 152);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 152) = 0;
  }

  if (*(DerivedStorage + 168))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 168) = 0;
  }

  v14 = *(DerivedStorage + 176);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 176) = 0;
  }

  v15 = *(DerivedStorage + 184);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 184) = 0;
  }

  if (*(DerivedStorage + 200))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 200) = 0;
  }

  *(DerivedStorage + 216) = 0;
  _Block_release(*(DerivedStorage + 208));
  *(DerivedStorage + 208) = 0;
  v16 = *(DerivedStorage + 224);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 224) = 0;
  }

  if (*(DerivedStorage + 232))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 232) = 0;
  }

  *(DerivedStorage + 240) = 0;
  v17 = *(DerivedStorage + 248);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 248) = 0;
  }

  if (*(DerivedStorage + 256))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 256) = 0;
  }

  v18 = *(DerivedStorage + 272);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 272) = 0;
  }

  if (*(DerivedStorage + 280))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 280) = 0;
  }

  v19 = *(DerivedStorage + 288);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 288) = 0;
  }

  if (*(DerivedStorage + 296))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 296) = 0;
  }

  v20 = *(DerivedStorage + 32);
  if (v20)
  {
    dispatch_release(v20);
    *(DerivedStorage + 32) = 0;
  }

  FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf);
  FPSupport_AppendDeferredTransactionChangeToRelease(cf, *(DerivedStorage + 24));
  *(DerivedStorage + 24) = 0;
  FPSupport_AppendDeferredTransactionChangeToRelease(cf, *(DerivedStorage + 264));
  *(DerivedStorage + 264) = 0;
  FigDeferredTransactionCommit(cf, 0);
  if (cf)
  {
    CFRelease(cf);
  }
}

CFStringRef videoReceiverForCA_CopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v4 = (DerivedStorage + 8);
  }

  else
  {
    v4 = "";
  }

  v5 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"<FigVideoReceiverForCALayer [%p|%s] retainCount: %d>", a1, v4, v5);
}

void videoReceiverForCA_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFTypeRef *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBE90 >= 3)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a2)
  {
    videoReceiverForCA_CopyProperty_cold_2(v8);
    return;
  }

  if (!a4)
  {
    videoReceiverForCA_CopyProperty_cold_1(v8);
    return;
  }

  if (CFEqual(a2, @"LoggingIdentifier"))
  {
    v10 = CFStringCreateWithCString(a3, (DerivedStorage + 8), 0x600u);
LABEL_7:
    v11 = v10;
LABEL_8:
    *a4 = v11;
    return;
  }

  if (CFEqual(a2, @"ClientPreferredDataChannelGroups"))
  {
    FigSimpleMutexLock();
    v12 = *(DerivedStorage + 144);
    if (v12)
    {
      v12 = CFRetain(v12);
    }

    *a4 = v12;
LABEL_17:
    FigSimpleMutexUnlock();
    return;
  }

  if (CFEqual(a2, @"ClientDataChannelSettings"))
  {
    FigSimpleMutexLock();
    v13 = *(DerivedStorage + 176);
    if (v13)
    {
      v13 = CFRetain(v13);
    }

    *a4 = v13;
    goto LABEL_17;
  }

  if (CFEqual(a2, @"ConnectionHelper"))
  {
    ValueAtIndex = *DerivedStorage;
    if (!*DerivedStorage)
    {
      goto LABEL_28;
    }

LABEL_24:
    v10 = CFRetain(ValueAtIndex);
    goto LABEL_7;
  }

  if (CFEqual(a2, @"VideoLayer"))
  {
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    if (ValueAtIndex)
    {
      goto LABEL_24;
    }

LABEL_28:
    v11 = 0;
    goto LABEL_8;
  }

  if (CFEqual(a2, @"DisplayName"))
  {
    FirstValue = FigCFArrayGetFirstValue();
    if (objc_opt_respondsToSelector())
    {
      ValueAtIndex = [FirstValue layerDisplayName];
      if (ValueAtIndex)
      {
        goto LABEL_24;
      }

      goto LABEL_28;
    }
  }

  else
  {
    if (!CFEqual(a2, @"STSLabel"))
    {
      if (CFEqual(a2, @"AirPlayVideoScrubbingContextID"))
      {
        FigSimpleMutexLock();
        v18 = *(DerivedStorage + 272);
        if (v18)
        {
          v18 = CFRetain(v18);
        }

        *a4 = v18;
        goto LABEL_17;
      }

      if (CFEqual(a2, @"LastSampledCVPixelBuffer"))
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, v22);
        return;
      }

      if (CFEqual(a2, @"IsReadyForDisplay"))
      {
        FigSimpleMutexLock();
        v19 = MEMORY[0x1E695E4D0];
        if (!*(DerivedStorage + 80))
        {
          v19 = MEMORY[0x1E695E4C0];
        }

        *a4 = CFRetain(*v19);
        goto LABEL_17;
      }

      if (!CFEqual(a2, @"RequiresCPUToReadVideo"))
      {
        return;
      }

      ValueAtIndex = *MEMORY[0x1E695E4C0];
      goto LABEL_24;
    }

    FigSimpleMutexLock();
    v16 = *(DerivedStorage + 288);
    if (v16)
    {
      v17 = CFRetain(v16);
    }

    else
    {
      v17 = 0;
    }

    FigSimpleMutexUnlock();
    *a4 = v17;
  }
}

uint64_t videoReceiverForCA_SetProperty(const void *a1, const void *a2, const __CFString *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    videoReceiverForCA_SetProperty_cold_4(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v22, v23, v24[0], v24[1]);
    return 0;
  }

  v14 = DerivedStorage;
  if (CFEqual(a2, @"ConnectionHelper"))
  {
    v15 = *v14;
    if (a3)
    {
      if (v15)
      {
        CFEqual(a3, *v14);
        v15 = *v14;
      }

      *v14 = a3;
      CFRetain(a3);
      if (!v15)
      {
        return 0;
      }
    }

    else
    {
      *v14 = 0;
      if (!v15)
      {
        return 0;
      }
    }

    CFRelease(v15);
    return 0;
  }

  if (CFEqual(a2, @"STSLabel"))
  {
    if (a3 && (v16 = CFGetTypeID(a3), v16 != CFStringGetTypeID()))
    {
      videoReceiverForCA_SetProperty_cold_1(&v22 + 1);
      return HIDWORD(v22);
    }

    else
    {
      v17 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      v18 = *(v17 + 288);
      if (v18)
      {
        CFRelease(v18);
        *(v17 + 288) = 0;
      }

      if (a3)
      {
        v19 = CFGetAllocator(a1);
        *(v17 + 288) = CFStringCreateCopy(v19, a3);
      }

      FigSimpleMutexUnlock();
      CMNotificationCenterGetDefaultLocalCenter();

      return CMNotificationCenterPostNotification();
    }
  }

  else if (CFEqual(a2, @"AirPlayVideoScrubbingContextID"))
  {
    if (a3 && (v21 = CFGetTypeID(a3), v21 == CFNumberGetTypeID()))
    {
      videoReceiverForCA_SetProperty_cold_2(a1, a3, &v23);
      return v23;
    }

    else
    {
      videoReceiverForCA_SetProperty_cold_3(v24);
      return v24[0];
    }
  }

  else
  {
    return 4294954509;
  }
}

uint64_t videoReceiverForCA_handleVideoLayerNotification(int a1, uint64_t a2, CFTypeRef cf1, uint64_t a4, uint64_t a5)
{
  result = CFEqual(cf1, @"LayerIsBeingServicedStatusChanged");
  if (result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

double videoReceiverForCA_appendDeferredTransactionChangeForAddingAirPlaySublayerToVideoLayer(const void *a1, void *a2, void *a3, const void *a4, char a5)
{
  v10 = malloc_type_malloc(0x20uLL, 0x10E00404F53F4E5uLL);
  if (!v10)
  {
    return videoReceiverForCA_appendDeferredTransactionChangeForAddingAirPlaySublayerToVideoLayer_cold_1(0, v11, v12, v13, v14, v15, v16, v17, v23, v24, SHIDWORD(v24), v25);
  }

  v18 = v10;
  v19 = a2;
  v20 = a3;
  if (a4)
  {
    v21 = CFRetain(a4);
  }

  else
  {
    v21 = 0;
  }

  *v18 = v19;
  *(v18 + 8) = v20;
  *(v18 + 16) = v21;
  *(v18 + 24) = a5;

  FigDeferredTransactionAppendChangeWithCallback(a1, 1, "videoReceiverForCA_reevaluateAirPlayHostLayer", v18, disposeAddAirPlayLayerHostToVideoLayerContext, copyDescriptionForAddingAirPlayLayerHostToVideoLayer, addAirPlayLayerHostToVideoLayerCallback);
  return result;
}

void disposeAddAirPlayLayerHostToVideoLayerContext(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
    a1[1] = 0;
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

CFStringRef copyDescriptionForAddingAirPlayLayerHostToVideoLayer(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v1 = "YES";
  }

  else
  {
    v1 = "NO";
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Adding AirPlay layerHost (%p) to videoLayer (%p) AirPlayScrubbingContext: (%@) shouldRemoveAirPlayLayerHostFromSuperLayer: %s", *(a1 + 8), *a1, *(a1 + 16), v1);
}

uint64_t addAirPlayLayerHostToVideoLayerCallback(uint64_t a1)
{
  if (*(a1 + 24))
  {
    [*(a1 + 8) removeFromSuperlayer];
  }

  if (*(a1 + 8))
  {
    if (!*(a1 + 16) || ([*(a1 + 8) setContextId:FigCFNumberGetUInt32()], *(a1 + 8)))
    {
      if (*a1)
      {
        [*a1 addSublayer:?];
      }
    }
  }

  return 0;
}

uint64_t videoReceiverForCA_SetActiveConfigurationChangedHandler(uint64_t a1, void *a2)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a2)
    {
      a2 = _Block_copy(a2);
    }

    FigSimpleMutexLock();
    v4 = *(DerivedStorage + 208);
    *(DerivedStorage + 208) = a2;
    FigSimpleMutexUnlock();
    if (v4)
    {
      _Block_release(v4);
    }

    return 0;
  }

  else
  {
    videoReceiverForCA_SetActiveConfigurationChangedHandler_cold_1(&v6);
    return v6;
  }
}

uint64_t videoReceiverForCA_SetActiveConfigurationChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v7 = DerivedStorage;
    FigSimpleMutexLock();
    v8 = *(v7 + 224);
    if (a3)
    {
      v9 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }

    else
    {
      v9 = 0;
    }

    *(v7 + 216) = a2;
    *(v7 + 224) = v9;
    FigSimpleMutexUnlock();
    if (v8)
    {
      CFRelease(v8);
    }

    return 0;
  }

  else
  {
    videoReceiverForCA_SetActiveConfigurationChangedCallback_cold_1(&v11);
    return v11;
  }
}

uint64_t videoReceiverForCA_postPreferencesChangedNotification(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v5, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v7 = Mutable;
    if (a2)
    {
      v8 = 192;
    }

    else
    {
      v8 = 160;
    }

    FigSimpleMutexLock();
    v9 = *(DerivedStorage + v8);
    FigSimpleMutexUnlock();
    FigCFDictionarySetValue();
    if (v9)
    {
      FigCFDictionarySetUInt32();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    v10 = CMNotificationCenterPostNotification();
    CFRelease(v7);
    return v10;
  }

  else
  {
    videoReceiverForCA_postPreferencesChangedNotification_cold_1(&v12);
    return v12;
  }
}

uint64_t videoReceiverForCA_AddLayersToLayerSynchronizerConfiguration(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (a2 && (v5 = DerivedStorage, v6 = CFGetTypeID(a2), v6 == FigLayerSynchronizerConfigurationGetTypeID(v6, v7)))
    {
      v8 = *(v5 + 24);

      return FigLayerSynchronizerConfigurationAddLayersSubjectToImageQueueTiming(a2, v8);
    }

    else
    {
      videoReceiverForCA_AddLayersToLayerSynchronizerConfiguration_cold_1(&v10);
      return v10;
    }
  }

  else
  {
    videoReceiverForCA_AddLayersToLayerSynchronizerConfiguration_cold_2(&v11);
    return v11;
  }
}

uint64_t videoReceiverForCA_SetBoundsChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v7 = DerivedStorage;
    FigSimpleMutexLock();
    v8 = *(v7 + 248);
    if (a3)
    {
      v9 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }

    else
    {
      v9 = 0;
    }

    *(v7 + 240) = a2;
    *(v7 + 248) = v9;
    FigSimpleMutexUnlock();
    if (v8)
    {
      CFRelease(v8);
    }

    return 0;
  }

  else
  {
    videoReceiverForCA_SetBoundsChangedCallback_cold_1(&v11);
    return v11;
  }
}

uint64_t videoReceiverForCA_HandleImageQueueSlotEvent(const void *a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    videoReceiverForCA_HandleImageQueueSlotEvent_cold_4(&v30);
    return v30;
  }

  if (!a2)
  {
    videoReceiverForCA_HandleImageQueueSlotEvent_cold_3(&v30);
    return v30;
  }

  if (!a3)
  {
    videoReceiverForCA_HandleImageQueueSlotEvent_cold_2(&v30);
    return v30;
  }

  UInt32 = FigCFNumberCreateUInt32();
  if (!UInt32)
  {
    videoReceiverForCA_HandleImageQueueSlotEvent_cold_1(&v30);
    return v30;
  }

  v7 = UInt32;
  if (CFEqual(@"SynchronousFrameEnqueued", a3))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    ImageQueueOrSlotInConfig = videoReceiverForCA_findImageQueueOrSlotInConfig(*(DerivedStorage + 88), v7, 0);
    FigSimpleMutexUnlock();
    if (ImageQueueOrSlotInConfig)
    {
      ImageQueueOrSlotInConfig = videoReceiverForCA_InformRendererThatContentsChanged();
    }

    goto LABEL_12;
  }

  if (CFEqual(@"FirstFrameEnqueued", a3))
  {
    v13 = CMBaseObjectGetDerivedStorage();
    v28 = 0;
    theArray = 0;
    v26 = *MEMORY[0x1E6960C70];
    v27 = *(MEMORY[0x1E6960C70] + 16);
    idx = -1;
    if (dword_1ED4CBE90)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    videoReceiverForCA_updateImageQueueSlotInRegistry(a1, v7, 1u);
    FigSimpleMutexLock();
    v15 = *(v13 + 80);
    if (videoReceiverForCA_findImageQueueOrSlotInConfig(*(v13 + 88), v7, &idx))
    {
      FigDataChannelConfigurationSetFirstFrameWasEnqueuedAtIndex(*(v13 + 88), idx, 1);
      if (!v15)
      {
        *(v13 + 80) = 1;
      }
    }

    v16 = videoReceiverForCA_findImageQueueOrSlotInConfig(*(v13 + 96), v7, &idx);
    if (v16)
    {
      FigDataChannelConfigurationSetFirstFrameWasEnqueuedAtIndex(*(v13 + 96), idx, 1);
    }

    v17 = *(v13 + 48);
    v18 = CFGetAllocator(a1);
    v19 = FigVideoReceiverConfigurationSchedulerCopyAllConfigurations(v17, v18, &theArray);
    if (v19)
    {
      ImageQueueOrSlotInConfig = v19;
      FigSimpleMutexUnlock();
      v23 = 0;
      goto LABEL_38;
    }

    for (i = 0; ; ++i)
    {
      Count = theArray;
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
      }

      if (i >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (videoReceiverForCA_findImageQueueOrSlotInConfig(ValueAtIndex, v7, &idx))
      {
        FigDataChannelConfigurationSetFirstFrameWasEnqueuedAtIndex(ValueAtIndex, idx, 1);
      }
    }

    if (v16)
    {
      videoReceiverForCA_activatePendingConfigurationIfReadyAndCopyNewlyActivatedConfig(a1, &v28, &v26);
      v23 = v28;
    }

    else
    {
      v23 = 0;
    }

    v24 = *(v13 + 80);
    FigSimpleMutexUnlock();
    if (v23)
    {
      v30 = v26;
      v31 = v27;
      ImageQueueOrSlotInConfig = videoReceiverForCA_notifyActiveConfigurationWasReplaced(a1, v23, &v30);
      if (ImageQueueOrSlotInConfig || v15 == v24)
      {
        goto LABEL_38;
      }
    }

    else if (v15 == v24)
    {
      v23 = 0;
      ImageQueueOrSlotInConfig = 0;
      goto LABEL_38;
    }

    ImageQueueOrSlotInConfig = videoReceiverForCA_postReadyForDisplayChanged(a1, v24);
LABEL_38:
    if (theArray)
    {
      CFRelease(theArray);
    }

    if (v23)
    {
      CFRelease(v23);
    }

    goto LABEL_12;
  }

  if (CFEqual(@"SlotCreated", a3))
  {
    v8 = *MEMORY[0x1E695E4D0] == FigCFDictionaryGetBooleanValue();
    videoReceiverForCA_updateImageQueueSlotInRegistry(a1, v7, v8);
  }

  else
  {
    if (!CFEqual(@"SlotDestroyed", a3))
    {
      ImageQueueOrSlotInConfig = 4294951724;
      goto LABEL_12;
    }

    v9 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    CFDictionaryRemoveValue(*(v9 + 128), v7);
    FigSimpleMutexUnlock();
  }

  ImageQueueOrSlotInConfig = 0;
LABEL_12:
  CFRelease(v7);
  return ImageQueueOrSlotInConfig;
}

uint64_t videoReceiverForCALayer_GetInstanceType(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = 4;
    }

    else
    {
      videoReceiverForCALayer_GetInstanceType_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    videoReceiverForCALayer_GetInstanceType_cold_2(&v4);
    return v4;
  }

  return result;
}

uint64_t videoReceiverForCA_setPendingConfigurationAndAttemptToMakeActive(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = *MEMORY[0x1E6960C70];
  *&v16.value = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  v16.epoch = v5;
  v17 = 0;
  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 80);
  v7 = CMBaseObjectGetDerivedStorage();
  if (!FigCFEqual() || (*&time1.value = v15, time1.epoch = v5, time2 = *(v7 + 104), CMTimeCompare(&time1, &time2)))
  {
    v8 = *(v7 + 96);
    if (a2)
    {
      v9 = CFRetain(a2);
    }

    else
    {
      v9 = 0;
    }

    *(v7 + 96) = v9;
    *(v7 + 104) = v15;
    *(v7 + 120) = v5;
    videoReceiverForCA_appendPostCommitChangeToAnnounceRemovalOfConfiguration(a1, 0, v8, "videoReceiverForCA_setPendingConfiguration");
    if (v8)
    {
      CFRelease(v8);
    }
  }

  v10 = videoReceiverForCA_activatePendingConfigurationIfReadyAndCopyNewlyActivatedConfig(a1, &v17, &v16);
  if (v10)
  {
    active = v10;
    FigSimpleMutexUnlock();
    v12 = v17;
    if (!v17)
    {
      return active;
    }

    goto LABEL_12;
  }

  v11 = *(DerivedStorage + 80);
  FigSimpleMutexUnlock();
  v12 = v17;
  if (v17)
  {
    time1 = v16;
    active = videoReceiverForCA_notifyActiveConfigurationWasReplaced(a1, v17, &time1);
    if (active || v6 == v11)
    {
      goto LABEL_12;
    }
  }

  else if (v6 == v11)
  {
    return 0;
  }

  active = videoReceiverForCA_postReadyForDisplayChanged(a1, v11);
  if (v12)
  {
LABEL_12:
    CFRelease(v12);
  }

  return active;
}

uint64_t videoReceiverForCA_postReadyForDisplayChanged(const void *a1, uint64_t a2)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v2, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v4 = Mutable;
    FigCFDictionarySetBoolean();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CFRelease(v4);
    return 0;
  }

  else
  {
    videoReceiverForCA_postReadyForDisplayChanged_cold_1(&v6);
    return v6;
  }
}

void disposeAnnounceRemovalOfConfigurationContext(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}

uint64_t videoReceiverForCA_updateImageQueueSlotInRegistry(uint64_t a1, const void *a2, unsigned int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  FigSimpleMutexLock();
  CFDictionaryGetValueIfPresent(*(DerivedStorage + 128), a2, &value);
  FigCFDictionarySetBoolean();
  return FigSimpleMutexUnlock();
}

uint64_t OUTLINED_FUNCTION_5_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t fs_CreateDirectoryAtPath(CFStringRef URLString)
{
  v1 = CFURLCreateWithString(*MEMORY[0x1E695E480], URLString, 0);
  if (!v1)
  {
    return 4294954669;
  }

  v2 = v1;
  v3 = FigCFURLCreateDirectory();
  CFRelease(v2);
  return v3;
}

uint64_t fs_CopyRepositoryByParent(const __CFString *a1, int a2, void **a3)
{
  FigSimpleMutexLock();
  v6 = CFDictionaryGetValue(sDiskCacheList, a1);
  value = v6;
  if (v6)
  {
    v7 = v6;
    if (!a2 || FigDiskCacheRepositoryExists(v6))
    {
      CFRetain(v7);
      v8 = 0;
      goto LABEL_10;
    }

    CFDictionaryRemoveValue(sDiskCacheList, a1);
    value = 0;
  }

  v9 = CFURLCreateWithString(*MEMORY[0x1E695E480], a1, 0);
  if (v9)
  {
    v10 = v9;
    v8 = FigDiskCacheRepositoryCreate(v9, 52428800, 41943040, &value);
    CFRelease(v10);
    if (!v8)
    {
      CFDictionarySetValue(sDiskCacheList, a1, value);
    }
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, value, v15);
    v8 = v11;
  }

LABEL_10:
  FigSimpleMutexUnlock();
  *a3 = value;
  return v8;
}

uint64_t FigShared_DeleteFromDiskCache(const __CFString *cf, const __CFString *a2)
{
  v3 = cf;
  v9 = 0;
  cfa = cf;
  if (cf)
  {
    CFRetain(cf);
    if (sDiskCacheIsRemote)
    {
      DirectoryAtPath = fs_CreateDirectoryAtPath(v3);
      goto LABEL_6;
    }

LABEL_12:
    v7 = FigSharedRemote_DeleteFromDiskCache(v3, a2);
    goto LABEL_13;
  }

  if ((sDiskCacheIsRemote & 1) == 0)
  {
    goto LABEL_12;
  }

  v5.n128_f64[0] = FigDiskCacheRepositoryCopyDefaultParentURLForCurrentTask(&cfa, 0);
LABEL_6:
  v6 = DirectoryAtPath;
  if (DirectoryAtPath)
  {
    goto LABEL_14;
  }

  if ((sDiskCacheIsRemote & 1) == 0)
  {
    v3 = cfa;
    goto LABEL_12;
  }

  MEMORY[0x19A8D3660](&fmp_EnsureDiskCache_sInitDiskCacheOnce, InitDiskCache, v5);
  v6 = sDiskInitStatus;
  if (!sDiskInitStatus)
  {
    v6 = fs_CopyRepositoryByParent(cfa, 1, &v9);
    if (!v6)
    {
      FigDiskCacheRepositoryDelete(v9, a2);
LABEL_13:
      v6 = v7;
    }
  }

LABEL_14:
  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v6;
}

uint64_t FigShared_ReserveDiskCacheBacking(const void *a1, const void *a2, uint64_t a3)
{
  v9 = 0;
  cf = a1;
  if (a1)
  {
    v5 = a1;
    CFRetain(a1);
    if (sDiskCacheIsRemote)
    {
      goto LABEL_3;
    }

LABEL_11:
    v7 = FigSharedRemote_ReserveDiskCacheBacking(v5, a2, a3);
    goto LABEL_12;
  }

  if (sDiskCacheIsRemote != 1)
  {
    v5 = 0;
    goto LABEL_11;
  }

  FigDiskCacheRepositoryCopyDefaultParentURLForCurrentTask(&cf, 0);
  if (v7)
  {
    goto LABEL_12;
  }

  if ((sDiskCacheIsRemote & 1) == 0)
  {
    v5 = cf;
    goto LABEL_11;
  }

LABEL_3:
  MEMORY[0x19A8D3660](&fmp_EnsureDiskCache_sInitDiskCacheOnce, InitDiskCache);
  v6 = sDiskInitStatus;
  if (sDiskInitStatus)
  {
    goto LABEL_13;
  }

  v7 = fs_CopyRepositoryByParent(cf, 0, &v9);
  if (!v7)
  {
    v7 = FigDiskCacheRepositoryReserveBacking(v9, a2, a3);
  }

LABEL_12:
  v6 = v7;
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v6;
}

uint64_t FigShared_CopyDiskCacheCheckedInIDs(const __CFString *cf, CFMutableArrayRef *a2)
{
  v3 = cf;
  v9 = 0;
  cfa = cf;
  if (cf)
  {
    CFRetain(cf);
    if (sDiskCacheIsRemote)
    {
      DirectoryAtPath = fs_CreateDirectoryAtPath(v3);
      goto LABEL_6;
    }

LABEL_12:
    v7 = FigSharedRemote_CopyDiskCacheCheckedInIDs(v3, a2);
    goto LABEL_13;
  }

  if ((sDiskCacheIsRemote & 1) == 0)
  {
    goto LABEL_12;
  }

  v5.n128_f64[0] = FigDiskCacheRepositoryCopyDefaultParentURLForCurrentTask(&cfa, 0);
LABEL_6:
  v6 = DirectoryAtPath;
  if (DirectoryAtPath)
  {
    goto LABEL_14;
  }

  if ((sDiskCacheIsRemote & 1) == 0)
  {
    v3 = cfa;
    goto LABEL_12;
  }

  MEMORY[0x19A8D3660](&fmp_EnsureDiskCache_sInitDiskCacheOnce, InitDiskCache, v5);
  v6 = sDiskInitStatus;
  if (!sDiskInitStatus)
  {
    v6 = fs_CopyRepositoryByParent(cfa, 1, &v9);
    if (!v6)
    {
      FigDiskCacheRepositoryCopyCheckedInIDs(v9, a2);
LABEL_13:
      v6 = v7;
    }
  }

LABEL_14:
  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v6;
}

uint64_t FigShared_CopyCacheProperty(const __CFString *cf, const void *a2, const void *a3, const __CFAllocator *a4, CFNumberRef *a5, int a6, int a7, int a8)
{
  v12 = cf;
  v18 = 0;
  cfa[0] = cf;
  if (cf)
  {
    CFRetain(cf);
    if (sDiskCacheIsRemote)
    {
      DirectoryAtPath = fs_CreateDirectoryAtPath(v12);
      goto LABEL_6;
    }

LABEL_12:
    FigSharedRemote_CopyCacheProperty(v12, a2, a3, a4, a5, a6, a7, a8, v18, cfa[0], cfa[1], cfa[2], cfa[3], cfa[4], cfa[5], cfa[6], cfa[7], cfa[8]);
    goto LABEL_13;
  }

  if ((sDiskCacheIsRemote & 1) == 0)
  {
    goto LABEL_12;
  }

  v14.n128_f64[0] = FigDiskCacheRepositoryCopyDefaultParentURLForCurrentTask(cfa, 0);
LABEL_6:
  v15 = DirectoryAtPath;
  if (DirectoryAtPath)
  {
    goto LABEL_14;
  }

  if ((sDiskCacheIsRemote & 1) == 0)
  {
    LODWORD(v12) = cfa[0];
    goto LABEL_12;
  }

  MEMORY[0x19A8D3660](&fmp_EnsureDiskCache_sInitDiskCacheOnce, InitDiskCache, v14);
  v15 = sDiskInitStatus;
  if (!sDiskInitStatus)
  {
    v15 = fs_CopyRepositoryByParent(cfa[0], 1, &v18);
    if (!v15)
    {
      FigDiskCacheRepositoryCopyProperty(v18, a2, a3, a4, a5);
LABEL_13:
      v15 = v16;
    }
  }

LABEL_14:
  if (cfa[0])
  {
    CFRelease(cfa[0]);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v15;
}

uint64_t FigShared_DisableRemoteDiskCache()
{
  if ((sDiskCacheIsRemote & 1) == 0)
  {
    sDiskCacheIsRemote = 1;
    return FigShared_CopyDiskCacheParams(0);
  }

  return result;
}

void sub_1965674C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Block_object_dispose((v18 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1965677F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1965679E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_196567BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_196567DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Block_object_dispose((v18 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_19656838C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

id _animationByTransformingValues(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [a1 copy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 fromValue];
    v5 = [v3 toValue];
    v6 = [v3 byValue];
    if (v4)
    {
      [v3 setFromValue:{(*(a2 + 16))(a2, v4)}];
    }

    if (v5)
    {
      [v3 setToValue:{(*(a2 + 16))(a2, v5)}];
    }

    if (v6)
    {
      [v3 setByValue:{(*(a2 + 16))(a2, v6)}];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v3 values];
      if (v7)
      {
        v8 = v7;
        v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v16;
          do
          {
            v13 = 0;
            do
            {
              if (*v16 != v12)
              {
                objc_enumerationMutation(v8);
              }

              [v9 addObject:{(*(a2 + 16))(a2, *(*(&v15 + 1) + 8 * v13++))}];
            }

            while (v11 != v13);
            v11 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
          }

          while (v11);
        }

        [v3 setValues:v9];
      }
    }
  }

  return v3;
}

uint64_t sharedplayer_enableOverlapPlayer(uint64_t a1)
{
  v1 = *MEMORY[0x1E695E4D0];
  if (v1 == FigCFDictionaryGetValue())
  {
    return 1;
  }

  else
  {
    return _os_feature_enabled_impl();
  }
}

uint64_t OUTLINED_FUNCTION_1_57@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return FigSharedPlayerCreateWithOptions(v8, a1 & v6, v7, va);
}

const void *getContentIDDo(void **a1)
{
  result = CFDictionaryGetValue((*a1)[7], *MEMORY[0x1E6960AF8]);
  *a1[1] = result;
  return result;
}

void updateRegionDisplay(id *a1)
{
  v2 = *a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __updateRegionDisplay_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void setRendererDo(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

__n128 setViewportDo(uint64_t *a1)
{
  result.n128_u64[0] = a1[3];
  if (result.n128_f64[0] >= 0.0)
  {
    result.n128_u64[0] = a1[4];
    if (result.n128_f64[0] >= 0.0)
    {
      v2 = *a1;
      result = *(a1 + 1);
      *(v2 + 40) = *(a1 + 3);
      *(v2 + 24) = result;
      *(v2 + 72) = 1;
    }
  }

  return result;
}

void __updateRegionDisplay_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [*v2 setNeedsLayout];
  [*v2 setNeedsDisplay];
  [MEMORY[0x1E6979518] commit];
  v3 = **(a1 + 32);
}

uint64_t FigVisualContextGetClassID(uint64_t a1, uint64_t a2)
{
  if (FigVisualContextGetClassID_sRegisterFigVisualContextBaseTypeOnce != -1)
  {
    FigVisualContextGetClassID_cold_1();
  }

  return sFigVisualContextClassID;
}

uint64_t RegisterFigVisualContextBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigVisualContextGetTypeID(uint64_t a1, uint64_t a2)
{
  if (FigVisualContextGetClassID_sRegisterFigVisualContextBaseTypeOnce != -1)
  {
    FigVisualContextGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

CFTypeRef FigVisualContextRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void FigVisualContextRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigVisualContextGetEarliestSequentialImageTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v8)
  {
    return 4294954514;
  }

  v10 = *MEMORY[0x1E6960C70];
  v11 = *(MEMORY[0x1E6960C70] + 16);
  return v8(a1, a2, &v10, a3, a4);
}

uint64_t FigCreateNullPixelBuffer(const __CFAllocator *a1, CVPixelBufferRef *pixelBufferOut)
{
  v3 = CVPixelBufferCreate(a1, 1uLL, 1uLL, 0x20u, 0, pixelBufferOut);
  if (!v3)
  {
    CVBufferSetAttachment(*pixelBufferOut, @"QTNull", @"QTNull", kCVAttachmentMode_ShouldNotPropagate);
  }

  return v3;
}

BOOL FigIsNullPixelBuffer(__CVBuffer *a1)
{
  v2 = CVBufferCopyAttachment(a1, @"QTNull", 0);
  v3 = v2;
  if (v2)
  {
    CFRelease(v2);
  }

  if (a1)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  return !v4;
}

uint64_t FigCreateMediaSelectionArrayFromFormatReaderProperties(const __CFNumber *a1, int a2, uint64_t a3, void *a4)
{
  v5 = a1;
  v207 = 0;
  v208 = 0;
  v205 = 0;
  v206 = 0;
  v203 = 0;
  v204 = 0;
  v202 = 0;
  v200 = 0;
  v201 = 0;
  v199 = 0;
  v198 = 0;
  valuePtr = 0;
  if (!a1)
  {
    FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_13(&v218);
    Mutable = 0;
    v119 = 0;
    v125 = 0;
    v19 = 0;
    inserted = v218;
    goto LABEL_297;
  }

  v6 = *MEMORY[0x1E695E480];
  FigFormatReaderGetFigBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v9(v8, @"AlternateGroupAssignmentsArray", v6, &v208);
  }

  FigFormatReaderGetFigBaseObject();
  v11 = v10;
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(v11, @"TrackReferenceDictionary", v6, &v207);
  }

  if (v207)
  {
    Value = CFDictionaryGetValue(v207, @"forc");
    v181 = CFDictionaryGetValue(v207, @"folw");
    v183 = CFDictionaryGetValue(v207, @"fall");
  }

  else
  {
    v183 = 0;
    v181 = 0;
    Value = 0;
  }

  v187 = v5;
  v170 = a4;
  if (!v208 || (Count = CFArrayGetCount(v208), Count < 1))
  {
    v13 = 0;
    v174 = 0;
    Mutable = 0;
    v169 = -1;
    v16 = -1;
LABEL_275:
    FPSupport_GetDefaultTrackIDForMediaType(v5, 1668047728, &v202, 0);
    if (v202 && (v118 = *(*(CMBaseObjectGetVTable() + 16) + 64)) != 0 && v118(v5, 1, 1668047728, 0, 0) == -12843)
    {
      LODWORD(v216) = 0;
      v218 = 0;
      v119 = CFNumberCreate(v6, kCFNumberSInt32Type, &v202);
      if (!v119)
      {
        FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_9(&values);
        inserted = values;
        goto LABEL_375;
      }

      v120 = v202;
      v121 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (!v121)
      {
        inserted = 4294954514;
        goto LABEL_375;
      }

      MediaSelectionGroupWithOptions = v121(v5, v120, &v198, &v216);
      if (MediaSelectionGroupWithOptions)
      {
        goto LABEL_369;
      }

      if (!TrackIsAMemberOfAnyAlternateTrackGroup(v198))
      {
        MediaSelectionGroupWithOptions = CopyReferencedTrackIDs(v119, v181, &v218);
        if (MediaSelectionGroupWithOptions)
        {
          goto LABEL_369;
        }

        v123 = v218;
        inserted = CreateMediaSelectionOptionDictionary(v198, v119, 0, 0, 1668047728, 0, 0, 0, v218, 0, 0, &v200);
        if (v123)
        {
          CFRelease(v123);
        }

        if (inserted)
        {
          goto LABEL_375;
        }
      }

      if (v198)
      {
        CFRelease(v198);
        v198 = 0;
      }
    }

    else
    {
LABEL_288:
      v119 = 0;
    }

    if (v16 == -1)
    {
      v132 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v132)
      {
        if (!v132(v5, 0, 1935832172, &v199, &valuePtr))
        {
          v133 = *(*(CMBaseObjectGetVTable() + 16) + 64);
          if (v133 && v133(v5, 1, 1935832172, 0, 0) == -12843)
          {
            LODWORD(v216) = 0;
            values = 0;
            v218 = 0;
            v134 = *(*(CMBaseObjectGetVTable() + 16) + 64);
            if (v134)
            {
              v135 = 0;
              v136 = 1;
              v137 = 1;
              do
              {
                v138 = v136;
                if (v134(v187, v135, 1952807028, 0, &v216))
                {
                  break;
                }

                if (v137)
                {
                  FCSupport_GetListOfChapterTitleTrackIDs(v187, &values, &v218, 0);
                }

                v139 = values;
                v5 = v187;
                if (values < 1)
                {
LABEL_388:
                  free(v218);
                  goto LABEL_389;
                }

                v140 = v218;
                while (1)
                {
                  v141 = *v140++;
                  if (v141 == v216)
                  {
                    break;
                  }

                  if (!--v139)
                  {
                    goto LABEL_388;
                  }
                }

                ++v136;
                v137 = 0;
                v134 = *(*(CMBaseObjectGetVTable() + 16) + 64);
                v135 = v138;
              }

              while (v134);
            }

            free(v218);
            v5 = v187;
            if (!TrackIsAMemberOfAnyAlternateTrackGroup(v199))
            {
              MediaSelectionGroupWithOptions = SynthesizeOptionsForSoloSubtitleTrack(v199, valuePtr, Value, v181, &v201);
              if (MediaSelectionGroupWithOptions)
              {
                goto LABEL_369;
              }
            }
          }

LABEL_389:
          if (v199)
          {
            CFRelease(v199);
            v199 = 0;
          }
        }
      }
    }

    v124 = v201;
    if (!a3 && !v200 && !v201)
    {
      if (!Mutable)
      {
        goto LABEL_318;
      }

      goto LABEL_313;
    }

    if (v16 < 0)
    {
      v174 = CFRetain(@"SynthesizedLegibleGroup");
      Mutable = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
      if (!Mutable)
      {
        FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_10(&v218);
        goto LABEL_413;
      }

      v16 = v13;
      if (a3)
      {
LABEL_302:
        ConcatenationOfTwoArrays = FigCFArrayCreateConcatenationOfTwoArrays();
        if (ConcatenationOfTwoArrays)
        {
          v127 = ConcatenationOfTwoArrays;
          MutableCopy = FigCFArrayCreateMutableCopy();
          v5 = MutableCopy;
          if (MutableCopy)
          {
            CFRetain(MutableCopy);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          if (v5)
          {
            CFRelease(v5);
            CFRelease(v127);
            v124 = v201;
            if (!v201)
            {
              goto LABEL_310;
            }

            goto LABEL_309;
          }

          FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_14(v127, &v218);
          Mutable = 0;
LABEL_385:
          v19 = 0;
          inserted = v218;
          goto LABEL_386;
        }

        FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_12(&v218);
LABEL_413:
        v5 = 0;
        goto LABEL_385;
      }
    }

    else if (a3)
    {
      goto LABEL_302;
    }

    v5 = Mutable;
    if (!v124)
    {
LABEL_310:
      if (v200)
      {
        CFArrayAppendValue(v5, v200);
      }

      Mutable = v5;
      v5 = v187;
      if (!Mutable)
      {
        goto LABEL_318;
      }

LABEL_313:
      v218 = 0;
      MediaSelectionGroupWithOptions = CreateMediaSelectionGroupWithOptions(v174, *MEMORY[0x1E695E4D0], @"public.legible", Mutable, &v218);
      if (!MediaSelectionGroupWithOptions)
      {
        v129 = v218;
        inserted = InsertGroupIntoMediaSelectionArray(&v206, v16, v218);
        if (v129)
        {
          CFRelease(v129);
        }

        if (inserted)
        {
          goto LABEL_375;
        }

        ++v13;
LABEL_318:
        v19 = 0;
        inserted = 0;
        if (v16 < 0 || v169 != -1)
        {
          v5 = 0;
          a4 = v170;
          goto LABEL_324;
        }

        v130 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        a4 = v170;
        if (!v130 || v130(v5, 0, 1936684398, &v199, &valuePtr))
        {
          inserted = 0;
          v19 = 0;
          v5 = 0;
LABEL_324:
          v125 = v174;
          goto LABEL_325;
        }

        v142 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (!v142 || v142(v5, 1, 1936684398, 0, 0) != -12843 || TrackIsAMemberOfAnyAlternateTrackGroup(v199))
        {
          v5 = 0;
          v125 = v174;
LABEL_380:
          if (v199)
          {
            CFRelease(v199);
            inserted = 0;
            v19 = 0;
            v199 = 0;
          }

          else
          {
            inserted = 0;
            v19 = 0;
          }

          goto LABEL_325;
        }

        values = 0;
        v218 = 0;
        v216 = 0;
        v143 = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
        v5 = v143;
        if (v143)
        {
          v144 = CopyReferencedTrackIDs(v143, v181, &v218);
          if (v144)
          {
            inserted = v144;
            goto LABEL_419;
          }

          v145 = v218;
          inserted = CreateMediaSelectionOptionDictionary(v199, v5, 0, 0, 1936684398, 1, 0, 0, v218, 0, 0, &values);
          if (v145)
          {
            CFRelease(v145);
          }

          if (inserted)
          {
            goto LABEL_419;
          }

          v146 = CFArrayCreate(v6, &values, 1, MEMORY[0x1E695E9C0]);
          if (values)
          {
            CFRelease(values);
          }

          if (v146)
          {
            inserted = CreateMediaSelectionGroupWithOptions(@"SoloAudioGroup", *MEMORY[0x1E695E4D0], @"public.audible", v146, &v216);
            CFRelease(v146);
            if (!inserted)
            {
              v147 = v216;
              inserted = InsertGroupIntoMediaSelectionArray(&v206, v13, v216);
              if (v147)
              {
                CFRelease(v147);
              }

              v125 = v174;
              if (inserted)
              {
                v19 = 0;
                goto LABEL_297;
              }

              goto LABEL_380;
            }

LABEL_419:
            v19 = 0;
            goto LABEL_387;
          }

          v149 = v174;
          v150 = 1871;
        }

        else
        {
          v149 = v174;
          v150 = 1860;
        }

        v174 = v149;
        FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_11(v150, displayFlagsOut);
        inserted = displayFlagsOut[0];
        goto LABEL_419;
      }

LABEL_369:
      inserted = MediaSelectionGroupWithOptions;
LABEL_375:
      v5 = 0;
      v19 = 0;
      goto LABEL_386;
    }

LABEL_309:
    v220.length = CFArrayGetCount(v124);
    v220.location = 0;
    CFArrayAppendArray(v5, v124, v220);
    goto LABEL_310;
  }

  v13 = 0;
  v174 = 0;
  v14 = 0;
  v179 = 0;
  Mutable = 0;
  v162 = *MEMORY[0x1E695E4D0];
  v169 = -1;
  v16 = -1;
  v178 = v6;
  while (2)
  {
    v168 = v16;
    v171 = v14;
    v172 = v13;
    theArray = CFArrayGetValueAtIndex(v208, v14);
    v17 = CFArrayGetCount(theArray);
    v18 = v17;
    if (v17 < 1)
    {
      v189 = 0;
      v190 = v17;
      v180 = 0;
      v175 = 0;
      v19 = 0;
      goto LABEL_240;
    }

    v19 = 0;
    v175 = 0;
    v180 = 0;
    v189 = 0;
    v190 = v17;
    v182 = 0;
    v20 = 0;
    v188 = 0;
    v21 = 1;
    v166 = Mutable;
    do
    {
      v196 = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v20);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
      v23 = valuePtr;
      v24 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v24)
      {
        v24(v5, v23, &v199, &v196);
      }

      if (!v199)
      {
        --v190;
        goto LABEL_90;
      }

      if (v21)
      {
        FigTrackReaderGetFigBaseObject();
        v26 = v25;
        v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v27)
        {
          inserted = 4294954514;
          goto LABEL_296;
        }

        v28 = v27(v26, @"AlternateGroupID", v6, &v205);
        if (v28)
        {
          goto LABEL_405;
        }

        v19 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
        if (!v19)
        {
          FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_1(&v218);
          inserted = v218;
          goto LABEL_296;
        }
      }

      FigMediaCharacteristicsGetMajorIntrinsicCharacteristicForMediaType(v196);
      if (!a2)
      {
        LOBYTE(v29) = 0;
        if (v182)
        {
          v30 = 0;
          v188 = 0;
          goto LABEL_66;
        }

        goto LABEL_65;
      }

      if (IsFallbackTrackOfTrackInGroup(v5, theArray, valuePtr, v183))
      {
        v193 = 0;
        goto LABEL_78;
      }

      v191 = FigCFEqual();
      values = ValueAtIndex;
      v29 = CFArrayCreate(v6, &values, 1, MEMORY[0x1E695E9C0]);
      *v185 = ValueAtIndex;
      if (!v29)
      {
        FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_3();
        v30 = 0;
        goto LABEL_62;
      }

      v176 = v19;
      v31 = FigCFArrayCreateMutableCopy();
      if (!v31)
      {
        FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_2();
        goto LABEL_31;
      }

      v32 = v31;
      AppendFallbacksOfTracks(v29, v183, v31);
      if (CFArrayGetCount(v32) == 1)
      {
        CFRelease(v32);
LABEL_31:
        CFRelease(v29);
        LOBYTE(v29) = 0;
        v30 = 0;
        goto LABEL_61;
      }

      v33 = CFArrayGetCount(v32);
      if (v33 < 1)
      {
        CFRelease(v29);
        CFRelease(v32);
        LOBYTE(v29) = 0;
        v30 = 0;
        v19 = v176;
        goto LABEL_62;
      }

      v34 = v33;
      cf = v29;
      v30 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
      v35 = 0;
      v194 = 0;
      v36 = 0;
      do
      {
        LODWORD(v213) = 0;
        v216 = 0;
        values = CFArrayGetValueAtIndex(v32, v35);
        CFNumberGetValue(values, kCFNumberSInt32Type, &v213);
        v37 = v213;
        v38 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v38)
        {
          v38(v5, v37, &v216, 0);
        }

        if (v216)
        {
          IsEnabled = TrackIsEnabled();
          v40 = v216;
          if (!v191)
          {
LABEL_49:
            v36 |= IsEnabled;
            CFRelease(v40);
            CFArrayAppendValue(v30, values);
            goto LABEL_50;
          }

          v41 = v20;
          v42 = v30;
          v43 = v18;
          v218 = 0;
          FigTrackReaderGetFigBaseObject();
          v45 = v44;
          v46 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v46)
          {
            goto LABEL_44;
          }

          v46(v45, @"TrackFormatDescriptionArray", v178, &v218);
          if (!v218)
          {
            v51 = 0;
            v18 = v43;
LABEL_48:
            v30 = v42;
            v194 |= v51;
            v40 = v216;
            v5 = v187;
            v20 = v41;
            goto LABEL_49;
          }

          v47 = CFArrayGetCount(v218);
          if (v47 >= 1)
          {
            v48 = v47;
            v49 = 0;
            while (1)
            {
              v50 = CFArrayGetValueAtIndex(v218, v49);
              displayFlagsOut[0] = 0;
              if (!CMTextFormatDescriptionGetDisplayFlags(v50, displayFlagsOut))
              {
                break;
              }

              if (v48 == ++v49)
              {
                goto LABEL_44;
              }
            }

            v51 = 1;
          }

          else
          {
LABEL_44:
            v51 = 0;
          }

          v18 = v43;
          if (v218)
          {
            CFRelease(v218);
          }

          goto LABEL_48;
        }

LABEL_50:
        ++v35;
      }

      while (v35 != v34);
      CFRelease(cf);
      CFRelease(v32);
      if (v30)
      {
        if (v191)
        {
          LOBYTE(v29) = v194;
        }

        else
        {
          LOBYTE(v29) = 0;
        }

        v188 = v36;
      }

      else
      {
        LOBYTE(v29) = 0;
      }

      Mutable = v166;
      v6 = v178;
LABEL_61:
      v19 = v176;
LABEL_62:
      if (v182)
      {
        v188 = 0;
        ValueAtIndex = *v185;
        goto LABEL_66;
      }

      v182 = v188;
      ValueAtIndex = *v185;
      if (!v30)
      {
LABEL_65:
        v30 = 0;
        v188 = TrackIsEnabled();
        v182 = v188;
      }

LABEL_66:
      v193 = v30;
      if (v196 == 1935832172)
      {
        v28 = AddOptionsForSubtitleTrack(v199, ValueAtIndex, Value, v181, v188, v30, v19);
        if (!v28)
        {
          goto LABEL_78;
        }

LABEL_405:
        inserted = v28;
        goto LABEL_296;
      }

      v186 = ValueAtIndex;
      if (v196 != 1936684398)
      {
        v218 = 0;
        v52 = v179;
        if (v196 == 1668047728)
        {
          v52 = 1;
        }

        v179 = v52;
        v53 = CopyReferencedTrackIDs(ValueAtIndex, v181, &v218);
        if (v53)
        {
          inserted = v53;
          v148 = v193;
          if (!v193)
          {
            goto LABEL_296;
          }
        }

        else
        {
          inserted = CreateMediaSelectionOptionDictionary(v199, ValueAtIndex, 0, 0, v196, v188, v29, 0, v218, v30, 0, &v203);
          if (v218)
          {
            CFRelease(v218);
          }

          if (!inserted)
          {
            CFArrayAppendValue(v19, v203);
            if (v203)
            {
              CFRelease(v203);
              v203 = 0;
            }

            goto LABEL_78;
          }

          v148 = v193;
          if (!v193)
          {
            goto LABEL_296;
          }
        }

        CFRelease(v148);
        goto LABEL_296;
      }

      v58 = v199;
      v209 = 0;
      v59 = CopyAudioCompatibleCompositionPresetArrayOfTrack(v199, &v209);
      v60 = v209;
      if (v59)
      {
        inserted = v59;
        if (v209)
        {
          goto LABEL_224;
        }

        goto LABEL_225;
      }

      v212 = 0;
      v213 = 0;
      v211 = 0;
      v61 = CopyReferencedTrackIDs(v186, v181, &v213);
      if (v61)
      {
        inserted = v61;
LABEL_205:
        v177 = 0;
        v104 = 0;
        v105 = 0;
        goto LABEL_211;
      }

      if (!v60 || (v62 = CFArrayGetCount(v60)) == 0)
      {
        inserted = CreateMediaSelectionOptionDictionary(v58, v186, 0, 0, 1936684398, v188, 0, 0, v213, v30, 0, &v212);
        if (!inserted)
        {
          CFArrayAppendValue(v19, v212);
        }

        goto LABEL_205;
      }

      if (v62 < 1)
      {
        v177 = 0;
        v104 = 0;
        v105 = 0;
        inserted = 0;
        goto LABEL_211;
      }

      v63 = 0;
      v154 = v62;
      v155 = v58;
      while (2)
      {
        v159 = v63;
        FigCFArrayGetValueAtIndex();
        v210 = -1;
        cfa = FigCFDictionaryGetDictionaryValue();
        if (!cfa)
        {
          FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_8(&v218);
LABEL_234:
          v177 = 0;
          v104 = 0;
          v105 = 0;
          inserted = v218;
          break;
        }

        number = FigCFDictionaryGetNumberValue();
        if (!number)
        {
          FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_7(&v218);
          goto LABEL_234;
        }

        StringValue = FigCFDictionaryGetStringValue();
        if (StringValue)
        {
          v65 = StringValue;
        }

        else
        {
          v65 = @"und";
        }

        v218 = 0;
        v66 = v6;
        if (!v213 || (v67 = CFArrayGetCount(v213), v67 < 1))
        {
          v192 = 0;
          goto LABEL_115;
        }

        v68 = v67;
        v69 = 0;
        v192 = 0;
        while (2)
        {
          LODWORD(values) = 0;
          FigCFArrayGetInt32AtIndex();
          v70 = values;
          v71 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (!v71)
          {
            inserted = 4294954514;
LABEL_207:
            v6 = v66;
            if (v192)
            {
              CFRelease(v192);
            }

            v177 = 0;
            v104 = 0;
            v105 = 0;
            v5 = v187;
            goto LABEL_211;
          }

          v72 = v71(v187, v70, &v218, 0);
          if (v72)
          {
            inserted = v72;
            goto LABEL_207;
          }

          if (!TrackMatchesPrimaryLanguage(v218, v65))
          {
            goto LABEL_112;
          }

          v73 = v192;
          if (v192 || (v73 = CFArrayCreateMutable(v66, 0, MEMORY[0x1E695E9C0])) != 0)
          {
            v192 = v73;
            FigCFArrayAppendInt32();
LABEL_112:
            if (v68 == ++v69)
            {
              goto LABEL_115;
            }

            continue;
          }

          break;
        }

        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v151, v152, v153);
        v192 = 0;
        if (v106)
        {
          inserted = v106;
          v105 = 0;
          v177 = 0;
          v104 = 0;
          v6 = v66;
          v5 = v187;
          break;
        }

LABEL_115:
        v6 = v66;
        v74 = FigMediaCharacteristicsCopyTaggedMediaCharacteristicsForAudioCompositionPresetDescription(v66, cfa, &v211);
        if (v74)
        {
          inserted = v74;
          v177 = 0;
          v104 = 0;
          v5 = v187;
          v105 = v192;
          break;
        }

        v156 = v211;
        *displayFlagsOut = 0;
        v216 = 0;
        v5 = v187;
        v75 = v193;
        if (!v193)
        {
          v97 = 0;
          v98 = v155;
          goto LABEL_179;
        }

        v161 = CFArrayGetCount(v193);
        if (v161 < 1)
        {
          inserted = 0;
          v75 = 0;
          v177 = 0;
          v100 = v155;
          goto LABEL_176;
        }

        theString2 = v65;
        v76 = 0;
        v160 = 0;
        v177 = 0;
        while (2)
        {
          v214 = 0;
          FigCFArrayGetInt32AtIndex();
          v77 = HIDWORD(v214);
          v78 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (!v78)
          {
            inserted = 4294954514;
            goto LABEL_168;
          }

          v79 = v78(v5, v77, &v216, &v214);
          if (v79)
          {
            goto LABEL_200;
          }

          if (v214 != 1936684398)
          {
            goto LABEL_122;
          }

          v79 = CopyAudioCompatibleCompositionPresetArrayOfTrack(v216, displayFlagsOut);
          if (v79)
          {
LABEL_200:
            inserted = v79;
LABEL_168:
            v99 = v177;
            if (!v177)
            {
              goto LABEL_170;
            }

            goto LABEL_169;
          }

          v80 = *displayFlagsOut;
          if (!*displayFlagsOut || !CFArrayGetCount(*displayFlagsOut))
          {
            if (TrackMatchesPrimaryLanguage(v216, theString2) && !FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_6(&v216, v6, v156))
            {
              v95 = v177;
              goto LABEL_154;
            }

LABEL_160:
            if (v80)
            {
              CFRelease(v80);
              *displayFlagsOut = 0;
            }

LABEL_122:
            if (v216)
            {
              CFRelease(v216);
              v216 = 0;
            }

            if (++v76 == v161)
            {
              inserted = 0;
              v100 = v155;
              v75 = v160;
              goto LABEL_174;
            }

            continue;
          }

          break;
        }

        v81 = -1;
        values = -1;
        v218 = 0;
        v82 = CFArrayGetCount(v80);
        if (v82 < 1)
        {
          v85 = v80;
          inserted = 0;
        }

        else
        {
          v83 = v82;
          v84 = 0;
          while (1)
          {
            v85 = v80;
            FigCFArrayGetValueAtIndex();
            DictionaryValue = FigCFDictionaryGetDictionaryValue();
            if (!DictionaryValue)
            {
              FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_5(v219);
              inserted = v219[0];
              goto LABEL_143;
            }

            v87 = DictionaryValue;
            v88 = v18;
            v89 = v19;
            NumberValue = FigCFDictionaryGetNumberValue();
            if (!NumberValue)
            {
              FigCreateMediaSelectionArrayFromFormatReaderProperties_cold_4(v219);
              inserted = v219[0];
              goto LABEL_165;
            }

            v91 = NumberValue;
            v92 = FigCFDictionaryGetStringValue();
            v93 = FigMediaCharacteristicsCopyTaggedMediaCharacteristicsForAudioCompositionPresetDescription(v178, v87, &v218);
            if (v93)
            {
              break;
            }

            if (v92)
            {
              v94 = v92;
            }

            else
            {
              v94 = @"und";
            }

            if (CFStringCompare(v94, theString2, 1uLL) == kCFCompareEqualTo && MediaCharacteristicsArraysMatch(v218, v156))
            {
              CFNumberGetValue(v91, kCFNumberCFIndexType, &values);
              inserted = 0;
              v81 = values;
              goto LABEL_149;
            }

            if (v218)
            {
              CFRelease(v218);
              v218 = 0;
            }

            ++v84;
            v19 = v89;
            v18 = v88;
            v80 = v85;
            if (v83 == v84)
            {
              inserted = 0;
LABEL_143:
              v81 = -1;
              v5 = v187;
              goto LABEL_150;
            }
          }

          inserted = v93;
LABEL_165:
          v81 = -1;
LABEL_149:
          v5 = v187;
          v19 = v89;
          v18 = v88;
        }

LABEL_150:
        v6 = v178;
        if (v218)
        {
          CFRelease(v218);
        }

        if (inserted)
        {
          goto LABEL_168;
        }

        v95 = v177;
        if (v81 == -1)
        {
          v80 = v85;
          goto LABEL_160;
        }

LABEL_154:
        if (v95 || (v95 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0])) != 0)
        {
          v96 = v160;
          v177 = v95;
          if (v160 || (v96 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0])) != 0)
          {
            FigCFArrayAppendInt32();
            v160 = v96;
            FigCFArrayAppendCFIndex();
            v80 = *displayFlagsOut;
            goto LABEL_160;
          }

          fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v151, v152, v153);
          inserted = v108;
          v99 = v177;
          v160 = 0;
LABEL_169:
          CFRelease(v99);
          goto LABEL_170;
        }

        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v151, v152, v153);
        inserted = v107;
LABEL_170:
        v100 = v155;
        if (v160)
        {
          CFRelease(v160);
        }

        v177 = 0;
        v75 = 0;
LABEL_174:
        if (*displayFlagsOut)
        {
          CFRelease(*displayFlagsOut);
        }

LABEL_176:
        v98 = v100;
        if (v216)
        {
          CFRelease(v216);
        }

        v97 = v177;
        if (inserted)
        {
          v105 = v192;
          v104 = v75;
          break;
        }

LABEL_179:
        CFNumberGetValue(number, kCFNumberCFIndexType, &v210);
        if (v188)
        {
          v101 = v210 == 0;
        }

        else
        {
          v101 = 0;
        }

        v102 = v101;
        v177 = v97;
        v103 = CreateMediaSelectionOptionDictionary(v98, v186, cfa, number, 1936684398, v102, 0, 0, v192, v97, v75, &v212);
        if (v103)
        {
          inserted = v103;
          v105 = v192;
          v104 = v75;
          break;
        }

        CFArrayAppendValue(v19, v212);
        if (v212)
        {
          CFRelease(v212);
          v212 = 0;
        }

        if (v75)
        {
          CFRelease(v75);
        }

        if (v97)
        {
          CFRelease(v97);
        }

        if (v211)
        {
          CFRelease(v211);
          v211 = 0;
        }

        if (v192)
        {
          CFRelease(v192);
        }

        v177 = 0;
        v104 = 0;
        v105 = 0;
        inserted = 0;
        v63 = v159 + 1;
        if (v159 + 1 != v154)
        {
          continue;
        }

        break;
      }

LABEL_211:
      v109 = v105;
      if (v212)
      {
        CFRelease(v212);
      }

      Mutable = v166;
      if (v109)
      {
        CFRelease(v109);
      }

      if (v104)
      {
        CFRelease(v104);
      }

      if (v177)
      {
        CFRelease(v177);
      }

      if (v211)
      {
        CFRelease(v211);
      }

      if (v213)
      {
        CFRelease(v213);
      }

      v60 = v209;
      if (v209)
      {
LABEL_224:
        CFRelease(v60);
      }

LABEL_225:
      if (inserted)
      {
LABEL_296:
        a4 = v170;
        v125 = v174;
        v119 = 0;
        v5 = 0;
        goto LABEL_297;
      }

LABEL_78:
      if (FigCFEqual())
      {
        ++v189;
        v55 = v193;
      }

      else
      {
        v55 = v193;
        if (FigCFEqual())
        {
          ++v180;
        }

        else
        {
          v56 = FigCFEqual();
          v57 = v175;
          if (v56)
          {
            v57 = v175 + 1;
          }

          v175 = v57;
        }
      }

      if (v199)
      {
        CFRelease(v199);
        v199 = 0;
      }

      if (v55)
      {
        CFRelease(v55);
      }

      v21 = 0;
LABEL_90:
      ++v20;
    }

    while (v20 != v18);
LABEL_240:
    if (v180 == v190 && v174 == 0 && Mutable == 0)
    {
      v112 = v171;
      v13 = v172;
      if (v205)
      {
        v174 = CFRetain(v205);
        if (v19)
        {
LABEL_253:
          Mutable = CFRetain(v19);
          goto LABEL_265;
        }
      }

      else
      {
        v174 = 0;
        if (v19)
        {
          goto LABEL_253;
        }
      }

      Mutable = 0;
LABEL_265:
      v117 = v204;
      v16 = v172;
      if (!v204)
      {
        goto LABEL_267;
      }

LABEL_266:
      CFRelease(v117);
      v204 = 0;
      goto LABEL_267;
    }

    v112 = v171;
    if (v189 == v190)
    {
      v113 = v169;
      if (v169 == -1)
      {
        v113 = v171;
      }

      v169 = v113;
      v114 = @"public.audible";
    }

    else
    {
      v115 = @"public.visual";
      if (v175 != v190)
      {
        v115 = 0;
      }

      if (v180 == v190)
      {
        v114 = @"public.legible";
      }

      else
      {
        v114 = v115;
      }
    }

    v16 = v168;
    v116 = CreateMediaSelectionGroupWithOptions(v205, v162, v114, v19, &v204);
    if (!v116)
    {
      v117 = v204;
      v116 = InsertGroupIntoMediaSelectionArray(&v206, v172, v204);
      if (!v116)
      {
        v13 = v172 + 1;
        if (v117)
        {
          goto LABEL_266;
        }

LABEL_267:
        if (v205)
        {
          CFRelease(v205);
          v205 = 0;
        }

        if (v19)
        {
          CFRelease(v19);
        }

        v14 = v112 + 1;
        if (v14 == Count)
        {
          if (!v179)
          {
            goto LABEL_275;
          }

          goto LABEL_288;
        }

        continue;
      }
    }

    break;
  }

  inserted = v116;
  v119 = 0;
  v5 = 0;
LABEL_386:
  a4 = v170;
LABEL_387:
  v125 = v174;
LABEL_297:
  if (inserted && v206)
  {
    CFRelease(v206);
    v206 = 0;
  }

LABEL_325:
  if (v125)
  {
    CFRelease(v125);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v201)
  {
    CFRelease(v201);
  }

  if (v200)
  {
    CFRelease(v200);
  }

  if (v119)
  {
    CFRelease(v119);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v204)
  {
    CFRelease(v204);
  }

  if (v205)
  {
    CFRelease(v205);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v207)
  {
    CFRelease(v207);
  }

  if (v208)
  {
    CFRelease(v208);
  }

  if (v199)
  {
    CFRelease(v199);
  }

  if (v198)
  {
    CFRelease(v198);
  }

  *a4 = v206;
  return inserted;
}

uint64_t IsFallbackTrackOfTrackInGroup(uint64_t a1, uint64_t a2, int a3, const void *a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = CFGetTypeID(a4);
  if (v5 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(a4);
    if (Count >= 2)
    {
      v7 = Count;
      v8 = 1;
      do
      {
        v9 = v8 - 1;
        FigCFArrayGetInt32AtIndex();
        v8 += 2;
      }

      while (v9 + 3 < v7);
    }
  }

  return 0;
}

uint64_t TrackIsEnabled()
{
  cf = 0;
  FigTrackReaderGetFigBaseObject();
  v1 = v0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    return 0;
  }

  if (v2(v1, @"TrackEnabled", *MEMORY[0x1E695E480], &cf))
  {
    v3 = 0;
  }

  else
  {
    v3 = cf == *MEMORY[0x1E695E4D0];
  }

  v4 = v3;
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t AddOptionsForSubtitleTrack(uint64_t a1, const void *a2, const __CFArray *a3, const __CFArray *a4, uint64_t a5, const __CFArray *a6, __CFArray *a7)
{
  v9 = a5;
  cf = 0;
  v42 = 0;
  v40 = 0;
  theArray = 0;
  FigTrackReaderGetFigBaseObject();
  v15 = v14;
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v16)
  {
    v27 = 0;
    MediaSelectionOptionDictionary = 4294954514;
    goto LABEL_25;
  }

  v17 = v16(v15, @"TrackFormatDescriptionArray", *MEMORY[0x1E695E480], &theArray);
  if (v17)
  {
    MediaSelectionOptionDictionary = v17;
    goto LABEL_24;
  }

  if (!theArray)
  {
    v36 = CopyReferencedTrackIDs(a2, a4, &v42);
    if (v36)
    {
LABEL_47:
      MediaSelectionOptionDictionary = v36;
LABEL_50:
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v40)
      {
        CFRelease(v40);
        v40 = 0;
      }

      goto LABEL_54;
    }

    goto LABEL_49;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    MediaSelectionOptionDictionary = 0;
LABEL_24:
    v27 = 0;
LABEL_25:
    if (theArray)
    {
      CFRelease(theArray);
    }

    if (MediaSelectionOptionDictionary)
    {
      goto LABEL_50;
    }

    v36 = CopyReferencedTrackIDs(a2, a4, &v42);
    if (v36)
    {
      goto LABEL_47;
    }

    if (v27)
    {
      goto LABEL_30;
    }

LABEL_49:
    v37 = v42;
    MediaSelectionOptionDictionary = CreateMediaSelectionOptionDictionary(a1, a2, 0, 0, 1935832172, v9, 0, 0, v42, a6, 0, &cf);
    if (!MediaSelectionOptionDictionary)
    {
      goto LABEL_55;
    }

    goto LABEL_50;
  }

  v19 = Count;
  v39 = a7;
  v20 = 0;
  v21 = 1;
  while (1)
  {
    displayFlagsOut = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v20);
    DisplayFlags = CMTextFormatDescriptionGetDisplayFlags(ValueAtIndex, &displayFlagsOut);
    MediaSelectionOptionDictionary = DisplayFlags;
    v25 = displayFlagsOut > -1 && DisplayFlags == 0;
    v26 = ~(displayFlagsOut >> 31) & 7;
    if (v25)
    {
      v21 = 0;
    }

    if (DisplayFlags)
    {
      v26 = 4;
    }

    if (v26)
    {
      break;
    }

    if (v19 == ++v20)
    {
      goto LABEL_22;
    }
  }

  if (v26 == 4 || v26 == 7)
  {
LABEL_22:
    v27 = v21 == 0;
    a7 = v39;
    goto LABEL_25;
  }

  v36 = CopyReferencedTrackIDs(a2, a4, &v42);
  a7 = v39;
  if (v36)
  {
    goto LABEL_47;
  }

LABEL_30:
  if (a3 && (v29 = CFArrayGetCount(a3), v29 >= 1))
  {
    v30 = v29;
    v31 = 0;
    while (1)
    {
      v32 = CFArrayGetValueAtIndex(a3, v31);
      if (v32)
      {
        if (CFEqual(a2, v32))
        {
          break;
        }
      }

      v31 += 2;
      if (v31 >= v30)
      {
        goto LABEL_36;
      }
    }

    v34 = 0;
    v33 = 1;
  }

  else
  {
LABEL_36:
    v33 = 0;
    v34 = 1;
  }

  if (v9)
  {
    v35 = v33;
  }

  else
  {
    v35 = 0;
  }

  v36 = CreateMediaSelectionOptionDictionary(a1, a2, 0, 0, 1935832172, v35, 0, 1, v42, a6, 0, &cf);
  if (v36)
  {
    goto LABEL_47;
  }

  if (v34)
  {
    MediaSelectionOptionDictionary = CreateMediaSelectionOptionDictionary(a1, a2, 0, 0, 1935832172, v9, 0, 0, 0, a6, 0, &v40);
    if (MediaSelectionOptionDictionary)
    {
      goto LABEL_50;
    }
  }

  else
  {
    MediaSelectionOptionDictionary = 0;
  }

LABEL_54:
  v37 = v42;
LABEL_55:
  if (v37)
  {
    CFRelease(v37);
  }

  if (cf)
  {
    CFArrayAppendValue(a7, cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (v40)
  {
    CFArrayAppendValue(a7, v40);
    if (v40)
    {
      CFRelease(v40);
    }
  }

  return MediaSelectionOptionDictionary;
}

uint64_t CopyReferencedTrackIDs(const void *a1, CFArrayRef theArray, __CFArray **a3)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 2)
    {
      v7 = Count;
      Mutable = 0;
      v9 = *MEMORY[0x1E695E480];
      v10 = 1;
      v11 = MEMORY[0x1E695E9C0];
      while (1)
      {
        v12 = v10 - 1;
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10 - 1);
        if (ValueAtIndex && CFEqual(a1, ValueAtIndex))
        {
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(v9, 0, v11);
            if (!Mutable)
            {
              CopyReferencedTrackIDs_cold_1(&v16);
              result = v16;
              goto LABEL_12;
            }
          }

          v14 = CFArrayGetValueAtIndex(theArray, v10);
          CFArrayAppendValue(Mutable, v14);
        }

        v10 += 2;
        if (v12 + 3 >= v7)
        {
          result = 0;
          goto LABEL_12;
        }
      }
    }
  }

  result = 0;
  Mutable = 0;
LABEL_12:
  *a3 = Mutable;
  return result;
}

CFStringRef CreateMediaSelectionOptionDictionary(uint64_t a1, const void *ValueAtIndex, uint64_t a3, CFNumberRef a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, const __CFArray *a10, uint64_t a11, __CFDictionary **a12)
{
  v96 = *MEMORY[0x1E69E9840];
  v93 = 0u;
  memset(v94, 0, sizeof(v94));
  v92[0] = @"MediaSelectionOptionsPersistentID";
  v92[1] = @"MediaSelectionOptionsMediaType";
  v95 = 0;
  v92[2] = @"MediaSelectionOptionsIsDefault";
  memset(v91, 0, sizeof(v91));
  localeIdentifier = 0;
  v90 = 0;
  theArray = 0;
  cf = 0;
  v86 = 0;
  if (!a12)
  {
    CreateMediaSelectionOptionDictionary_cold_6(&valuePtr);
    v59 = 0;
    v36 = 0;
    v61 = 0;
    v60 = valuePtr;
LABEL_115:
    v78 = a12;
    goto LABEL_116;
  }

  v13 = a5;
  if (a10)
  {
    Count = CFArrayGetCount(a10);
    if (Count >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a10, Count - 1);
      valuePtr = -1;
      a4 = 0;
      if (a11)
      {
        FigCFArrayGetCFIndexAtIndex();
      }
    }
  }

  *&v91[0] = ValueAtIndex;
  CFStringForOSTypeValue = FigGetCFStringForOSTypeValue();
  v19 = *MEMORY[0x1E695E4D0];
  v20 = *MEMORY[0x1E695E4C0];
  if (a6)
  {
    v21 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v21 = *MEMORY[0x1E695E4C0];
  }

  *(&v91[0] + 1) = CFStringForOSTypeValue;
  *&v91[1] = v21;
  if (a3)
  {
    StringValue = FigCFDictionaryGetStringValue();
    if (StringValue)
    {
      v23 = StringValue;
    }

    else
    {
      v23 = @"und";
    }

    PackedISO639_2TFromLocaleIdentifier = FigMetadataGetPackedISO639_2TFromLocaleIdentifier(v23);
    v25 = *MEMORY[0x1E695E480];
    StringForLanguageCode = FigCreateStringForLanguageCode(*MEMORY[0x1E695E480], PackedISO639_2TFromLocaleIdentifier, 1);
    localeIdentifier = StringForLanguageCode;
  }

  else
  {
    v25 = *MEMORY[0x1E695E480];
    FigTrackReaderGetFigBaseObject();
    v28 = v27;
    v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v29)
    {
      v29(v28, @"TrackLanguageCode", v25, &localeIdentifier);
    }

    v23 = 0;
    StringForLanguageCode = localeIdentifier;
  }

  if (StringForLanguageCode)
  {
    v30 = &v91[2] + 8;
    v31 = v94;
    *&v93 = @"MediaSelectionOptionsLanguageCode";
    *(&v91[1] + 1) = StringForLanguageCode;
    CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v25, StringForLanguageCode);
    *(&v93 + 1) = @"MediaSelectionOptionsUnicodeLanguageCode";
    v82 = CanonicalLanguageIdentifierFromString;
    *&v91[2] = CanonicalLanguageIdentifierFromString;
    v33 = 5;
    if (a3)
    {
LABEL_19:
      v90 = CFRetain(v23);
      goto LABEL_20;
    }
  }

  else
  {
    v82 = 0;
    v31 = &v93;
    v30 = &v91[1] + 8;
    v33 = 3;
    if (a3)
    {
      goto LABEL_19;
    }
  }

  FigTrackReaderGetFigBaseObject();
  v39 = v38;
  v40 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v40)
  {
    v40(v39, @"ExtendedLanguageTagString", v25, &v90);
  }

LABEL_20:
  v34 = v90;
  if (!v90 && localeIdentifier)
  {
    ISO639_1FromISO639_2T = FigMetadataGetISO639_1FromISO639_2T(localeIdentifier);
    if (!ISO639_1FromISO639_2T)
    {
      ISO639_1FromISO639_2T = localeIdentifier;
    }

    v34 = CFRetain(ISO639_1FromISO639_2T);
    v90 = v34;
  }

  if (v34)
  {
    *v31 = @"MediaSelectionOptionsExtendedLanguageTag";
    *v30 = v34;
    v36 = CFLocaleCreateCanonicalLanguageIdentifierFromString(v25, v34);
    v37 = 8 * v33 + 8;
    *(v92 + v37) = @"MediaSelectionOptionsUnicodeLanguageIdentifier";
    *(v91 + v37) = v36;
    v33 += 2;
  }

  else
  {
    v36 = 0;
  }

  if (a4)
  {
    v92[v33] = @"MediaSelectionOptionsAudioCompositionPresetIndex";
    *(v91 + v33++) = a4;
  }

  if (a3)
  {
    FigMediaCharacteristicsCopyTaggedMediaCharacteristicsForAudioCompositionPresetDescription(v25, a3, &cf);
  }

  else
  {
    FigMediaCharacteristicsCopyTaggedMediaCharacteristicsForTrackReader(v25, a1, &cf);
  }

  v41 = cf;
  if (v13 == 1668047728)
  {
    MutableCopy = FigCFArrayCreateMutableCopy();
    if (!MutableCopy)
    {
      CreateMediaSelectionOptionDictionary_cold_5(&valuePtr);
      goto LABEL_138;
    }

    v41 = MutableCopy;
    if (!FigCFArrayContainsValue())
    {
      CFArrayAppendValue(v41, @"public.accessibility.transcribes-spoken-dialog");
    }

    if (!FigCFArrayContainsValue())
    {
      CFArrayAppendValue(v41, @"public.accessibility.describes-music-and-sound");
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = v41;
  }

  else if (!cf)
  {
    goto LABEL_47;
  }

  v92[v33] = @"MediaSelectionOptionsTaggedMediaCharacteristics";
  *(v91 + v33++) = v41;
LABEL_47:
  FigTrackReaderGetFigBaseObject();
  v44 = v43;
  v45 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v45)
  {
    v45(v44, @"TrackExcludeFromAutoSelection", v25, &v86);
  }

  if (v86 == v19 || FigCFArrayContainsValue())
  {
    v92[v33] = @"MediaSelectionOptionsIsAuxiliaryContent";
    *(v91 + v33++) = v19;
  }

  if (v13 == 1935832172 || a7)
  {
    v92[v33] = @"MediaSelectionOptionsDisplaysNonForcedSubtitles";
    if (a7)
    {
      if (FigCFArrayContainsValue())
      {
        *(v91 + v33) = v20;
        v50 = v20;
      }

      else
      {
        *(v91 + v33) = v19;
        v50 = v19;
      }
    }

    else
    {
      if (a8)
      {
        v50 = v19;
      }

      else
      {
        v50 = v20;
      }

      *(v91 + v33) = v50;
    }

    v49 = v33 + 1;
    v92[v33 + 1] = @"MediaSelectionOptionsDisplaysForcedSubtitlesOnly";
    if (v50 == v20)
    {
      v47 = v19;
    }

    else
    {
      v47 = v20;
    }

    v48 = 2;
    goto LABEL_71;
  }

  if (v13 == 1952807028)
  {
    v46 = FigCFArrayContainsValue();
    v92[v33] = @"MediaSelectionOptionsDisplaysForcedSubtitlesOnly";
    if (v46)
    {
      v47 = v19;
    }

    else
    {
      v47 = v20;
    }

    v48 = 1;
    v49 = v33;
LABEL_71:
    *(v91 + v49) = v47;
    v33 += v48;
  }

  if (a9)
  {
    v92[v33] = @"MediaSelectionOptionsAssociatedPersistentIDs";
    *(v91 + v33++) = a9;
  }

  if (a10)
  {
    v92[v33] = @"MediaSelectionOptionsFallbackIDs";
    *(v91 + v33++) = a10;
  }

  if (a11)
  {
    v92[v33] = @"MediaSelectionOptionsAudioCompositionPresetIndexesForFallbackIDs";
    *(v91 + v33++) = a11;
  }

  FigTrackReaderGetFigBaseObject();
  v52 = v51;
  v53 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v53)
  {
    v53(v52, @"TrackFormatDescriptionArray", v25, &theArray);
  }

  if (!theArray)
  {
    v56 = 0;
    v58 = 0;
    goto LABEL_105;
  }

  v54 = CFArrayGetCount(theArray);
  Mutable = CFArrayCreateMutable(v25, v54, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v56 = Mutable;
    if (v13 == 1936684398)
    {
      v57 = CFArrayGetCount(theArray);
      v58 = CFArrayCreateMutable(v25, v57, MEMORY[0x1E695E9C0]);
      if (!v58)
      {
        CreateMediaSelectionOptionDictionary_cold_2(&valuePtr);
        v59 = 0;
        v60 = valuePtr;
        v61 = v82;
        goto LABEL_112;
      }
    }

    else
    {
      v58 = 0;
    }

    v84 = v36;
    v62 = CFArrayGetCount(theArray);
    if (v62 >= 1)
    {
      v63 = 0;
      v64 = v62 & 0x7FFFFFFF;
      do
      {
        v65 = CFArrayGetValueAtIndex(theArray, v63);
        CMFormatDescriptionGetMediaSubType(v65);
        FigCFArrayAppendInt32();
        if (v13 == 1936684398)
        {
          valuePtr = 0;
          ChannelLayout = CMAudioFormatDescriptionGetChannelLayout(v65, &valuePtr);
          v67 = valuePtr;
          if (ChannelLayout)
          {
            v68 = valuePtr == 0;
          }

          else
          {
            v68 = 1;
          }

          if (v68)
          {
            v67 = 0;
            valuePtr = 0;
          }

          else
          {
            v69 = 20 * ChannelLayout->mNumberChannelDescriptions + 12;
            if (v69 < valuePtr)
            {
              valuePtr = 20 * ChannelLayout->mNumberChannelDescriptions + 12;
              v67 = v69;
            }
          }

          v70 = CFDataCreate(v25, ChannelLayout, v67);
          if (v70)
          {
            v71 = v70;
            CFArrayAppendValue(v58, v70);
            CFRelease(v71);
          }
        }

        ++v63;
      }

      while (v64 != v63);
    }

    v92[v33] = @"MediaSelectionOptionsMediaSubTypes";
    *(v91 + v33) = v56;
    v72 = v33 + 1;
    if (v13 == 1936684398)
    {
      v92[v72] = @"MediaSelectionOptionsAudioChannelLayouts";
      *(v91 + v72) = v58;
      v33 += 2;
    }

    else
    {
      ++v33;
    }

    v36 = v84;
LABEL_105:
    v59 = CFDictionaryCreateMutable(v25, v33 + 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v59)
    {
      if (v33 >= 1)
      {
        v73 = v91;
        v74 = v92;
        do
        {
          v76 = *v74++;
          v75 = v76;
          v77 = *v73++;
          CFDictionaryAddValue(v59, v75, v77);
          --v33;
        }

        while (v33);
      }

      v60 = FigCopyGMLoggingDescriptionForOption(v59);
      CFDictionaryAddValue(v59, @"MediaSelectionOptionsDebugDescription", v60);
      v61 = v82;
      if (v60)
      {
        CFRelease(v60);
        v60 = 0;
      }

      if (!v56)
      {
        goto LABEL_113;
      }
    }

    else
    {
      CreateMediaSelectionOptionDictionary_cold_4(&valuePtr);
      v60 = valuePtr;
      v61 = v82;
      if (!v56)
      {
LABEL_113:
        if (v58)
        {
          CFRelease(v58);
        }

        goto LABEL_115;
      }
    }

LABEL_112:
    CFRelease(v56);
    goto LABEL_113;
  }

  CreateMediaSelectionOptionDictionary_cold_3(&valuePtr);
LABEL_138:
  v59 = 0;
  v60 = valuePtr;
  v78 = a12;
  v61 = v82;
LABEL_116:
  if (localeIdentifier)
  {
    CFRelease(localeIdentifier);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  if (v90)
  {
    CFRelease(v90);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v86)
  {
    CFRelease(v86);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v78)
  {
    *v78 = v59;
  }

  return v60;
}

uint64_t CreateMediaSelectionGroupWithOptions(void *a1, void *a2, void *a3, void *a4, CFDictionaryRef *a5)
{
  keys[4] = *MEMORY[0x1E69E9840];
  values = a3;
  keys[0] = @"MediaSelectionGroupID";
  keys[1] = @"MediaSelectionGroupAllowEmptySelection";
  keys[2] = @"MediaSelectionGroupOptions";
  keys[3] = @"MediaSelectionGroupMediaCharacteristics";
  v15[0] = a1;
  v15[1] = a2;
  v15[2] = a4;
  v16 = 0;
  v6 = *MEMORY[0x1E695E480];
  if (a3)
  {
    v7 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    if (!v7)
    {
      CreateMediaSelectionGroupWithOptions_cold_1(a5, &v14);
      return v14;
    }

    v8 = v7;
    v16 = v7;
    v9 = 4;
  }

  else
  {
    v8 = 0;
    v9 = 3;
  }

  v10 = CFDictionaryCreate(v6, keys, v15, v9, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    CreateMediaSelectionGroupWithOptions_cold_2(&v14);
    v11 = v14;
  }

  *a5 = v10;
  if (v8)
  {
    CFRelease(v8);
  }

  return v11;
}

uint64_t InsertGroupIntoMediaSelectionArray(CFMutableArrayRef *a1, CFIndex a2, const void *a3)
{
  Mutable = *a1;
  if (Mutable || (Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]), (*a1 = Mutable) != 0))
  {
    if (CFArrayGetCount(Mutable) < a2)
    {
      InsertGroupIntoMediaSelectionArray_cold_1(&v8);
      return v8;
    }

    else
    {
      CFArrayInsertValueAtIndex(*a1, a2, a3);
      return 0;
    }
  }

  else
  {
    InsertGroupIntoMediaSelectionArray_cold_2(&v9);
    return v9;
  }
}

uint64_t SynthesizeOptionsForSoloSubtitleTrack(uint64_t a1, int a2, const __CFArray *a3, const __CFArray *a4, __CFArray **a5)
{
  valuePtr = a2;
  cf = 0;
  v9 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    SynthesizeOptionsForSoloSubtitleTrack_cold_2(&v20);
    v11 = 0;
    v16 = v20;
    goto LABEL_9;
  }

  v11 = CFNumberCreate(v9, kCFNumberSInt32Type, &valuePtr);
  if (v11)
  {
    FigTrackReaderGetFigBaseObject();
    v13 = v12;
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v15 = v14(v13, @"TrackEnabled", v9, &cf);
      if (v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = AddOptionsForSubtitleTrack(a1, v11, a3, a4, cf == *MEMORY[0x1E695E4D0], 0, Mutable);
        if (!v16)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      v16 = 4294954514;
    }

LABEL_8:
    CFRelease(Mutable);
    Mutable = 0;
    goto LABEL_9;
  }

  SynthesizeOptionsForSoloSubtitleTrack_cold_1(&v20);
  v16 = v20;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  *a5 = Mutable;
  return v16;
}

double FigMediaSelectionGroupsMatchToMediaSelectionArray(const __CFArray *a1, const __CFArray *a2)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
        if (!ValueAtIndex)
        {
          break;
        }

        v10 = ValueAtIndex;
        v11 = CFGetTypeID(ValueAtIndex);
        if (v11 != CFDictionaryGetTypeID())
        {
          break;
        }

        MatchingSelection = FigMediaSelectionGroupsCreateMatchingSelection(a2, v10);
        CFArraySetValueAtIndex(a1, v8, MatchingSelection);
        if (MatchingSelection)
        {
          CFRelease(MatchingSelection);
        }

        if (v7 == ++v8)
        {
          return result;
        }
      }

      emitter = fig_log_get_emitter();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<< FigMediaSelectionGroups >>>", 2010, v2);
    }
  }

  return result;
}

double FigMediaSelectionGroupsAddCrossDeviceInfoToSelectedMediaArray(CFArrayRef theArray, const __CFArray *a2)
{
  if (a2)
  {
    if (theArray)
    {
      v4 = v2;
      v5 = a2;
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v8 = Count;
        v9 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
          if (!ValueAtIndex)
          {
            break;
          }

          v11 = CFGetTypeID(ValueAtIndex);
          if (v11 != CFDictionaryGetTypeID())
          {
            break;
          }

          MutableCopy = FigCFDictionaryCreateMutableCopy();
          Value = FigCFDictionaryGetValue();
          v14 = FigCFDictionaryGetValue();
          FigCFDictionaryGetValue();
          FigCFDictionaryGetValue();
          FigCFDictionaryGetValue();
          FigCFDictionaryGetValue();
          if (Value)
          {
            v22 = v5;
            v23 = v4;
            v24 = 0;
            FindMediaTypeInMediaArray(v5, v14, &v24);
            v15 = FigCFDictionaryGetValue();
            if (v15)
            {
              v16 = CFArrayGetCount(v15);
              if (v16 >= 1)
              {
                v17 = v16;
                v18 = 0;
                while (1)
                {
                  FigCFArrayGetValueAtIndex();
                  FigCFDictionaryGetValue();
                  if (FigCFEqual())
                  {
                    break;
                  }

                  if (v17 == ++v18)
                  {
                    goto LABEL_19;
                  }
                }

                FigCFDictionaryGetValue();
                v21 = FigCFDictionaryGetValue();
                FigCFDictionaryGetValue();
                v20 = FigCFDictionaryGetValue();
                FigCFDictionarySetValue();
                FigCFDictionarySetValue();
                FigCFDictionarySetValue();
                FigCFDictionarySetValue();
              }
            }

LABEL_19:
            v5 = v22;
            v4 = v23;
          }

          CFArraySetValueAtIndex(theArray, v9, MutableCopy);
          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

          if (++v9 == v8)
          {
            return result;
          }
        }

        fig_log_get_emitter();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21);
      }
    }
  }

  return result;
}

void AppendFallbacksOfTracks(const __CFArray *a1, const __CFArray *a2, __CFArray *a3)
{
  if (a1)
  {
    v5 = a1;
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v7 = Count;
      Mutable = 0;
      v9 = 0;
      v18 = v5;
      allocator = *MEMORY[0x1E695E480];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v9);
        theArray = 0;
        if (CopyReferencedTrackIDs(ValueAtIndex, a2, &theArray))
        {
          break;
        }

        v11 = theArray;
        if (theArray)
        {
          v12 = CFArrayGetCount(theArray);
          if (v12 >= 1)
          {
            v13 = v12;
            v14 = v7;
            v15 = 0;
            for (i = 0; i != v13; ++i)
            {
              v17 = CFArrayGetValueAtIndex(v11, i);
              if (!FigCFArrayContainsValue() && !FigCFArrayContainsValue())
              {
                if (!Mutable)
                {
                  Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
                  if (!Mutable)
                  {
                    AppendFallbacksOfTracks_cold_1();
                    return;
                  }
                }

                ++v15;
                CFArrayAppendValue(Mutable, v17);
              }
            }

            if (v15 >= 1)
            {
              v22.location = 0;
              v22.length = v15;
              CFArrayAppendArray(a3, Mutable, v22);
              AppendFallbacksOfTracks(Mutable, a2, a3);
            }

            v7 = v14;
            v5 = v18;
          }

          CFRelease(v11);
        }

        ++v9;
      }

      while (v9 != v7);
      if (Mutable)
      {

        CFRelease(Mutable);
      }
    }
  }
}

BOOL TrackMatchesPrimaryLanguage(uint64_t a1, const __CFString *a2)
{
  theString1 = 0;
  v3 = *MEMORY[0x1E695E480];
  FigTrackReaderGetFigBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(v5, @"ExtendedLanguageTagString", v3, &theString1);
    if (theString1)
    {
      v7 = CFStringCompare(theString1, a2, 1uLL) == kCFCompareEqualTo;
      v8 = theString1;
      if (!theString1)
      {
        return v7;
      }

LABEL_8:
      CFRelease(v8);
      return v7;
    }
  }

  cf = 0;
  FigTrackReaderGetFigBaseObject();
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    return 0;
  }

  v11(v10, @"TrackLanguageCode", v3, &cf);
  if (!cf)
  {
    return 0;
  }

  PackedISO639_2T = FigMetadataGetPackedISO639_2T(cf);
  v7 = PackedISO639_2T == FigMetadataGetPackedISO639_2TFromLocaleIdentifier(a2);
  v8 = cf;
  if (cf)
  {
    goto LABEL_8;
  }

  return v7;
}

uint64_t MediaCharacteristicsArraysMatch(CFArrayRef theArray, const __CFArray *a2)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (a2)
    {
LABEL_3:
      v4 = CFArrayGetCount(a2);
      goto LABEL_6;
    }
  }

  else
  {
    Count = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
LABEL_6:
  if (Count != v4)
  {
    return 0;
  }

  if (Count < 1)
  {
    return 1;
  }

  v5 = 0;
  while (1)
  {
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    v8.location = 0;
    v8.length = Count;
    result = CFArrayContainsValue(a2, v8, ValueAtIndex);
    if (!result)
    {
      break;
    }

    if (Count == ++v5)
    {
      return 1;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_1_58(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  CFStringAppendFormat(v3, 0, a3);
}

uint64_t FigAlternateFilterTreeInsertLeaf(uint64_t a1, const void *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 8);
  if (v6 && *(v6 + 8) >= a3)
  {
    do
    {
      v7 = v6;
      v6 = *(v6 + 16);
    }

    while (v6 && *(v6 + 8) >= a3);
  }

  else
  {
    v7 = 0;
  }

  v8 = malloc_type_calloc(1uLL, 0x20uLL, 0x10A004041F259BEuLL);
  if (v8)
  {
    v9 = v8;
    if (a2)
    {
      v10 = CFRetain(a2);
    }

    else
    {
      v10 = 0;
    }

    *v9 = v10;
    v9[2] = a3;
    v11 = 0;
    if (v7)
    {
      v13 = *(v7 + 16);
      v12 = (v7 + 16);
      *(v9 + 2) = v13;
      v14 = (v13 + 24);
      if (v13)
      {
        v15 = v14;
      }

      else
      {
        v15 = (DerivedStorage + 16);
      }

      *v15 = v9 + 4;
      *v12 = v9;
      *(v9 + 3) = v12;
    }

    else
    {
      v16 = *(DerivedStorage + 8);
      *(v9 + 2) = v16;
      if (v16)
      {
        v17 = (v16 + 24);
      }

      else
      {
        v17 = (DerivedStorage + 16);
      }

      *v17 = v9 + 4;
      *(DerivedStorage + 8) = v9;
      *(v9 + 3) = DerivedStorage + 8;
    }
  }

  else
  {
    FigAlternateFilterTreeInsertLeaf_cold_1(&v19);
    v11 = v19;
  }

  FigSimpleMutexUnlock();
  return v11;
}

uint64_t FigAlternateFilterTreeRemoveLeaf(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    while (1)
    {
      v4 = *v3;
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v5)
      {
        v5(v4);
      }

      v6 = FigCFEqual();
      v7 = *(v3 + 16);
      if (v6)
      {
        break;
      }

      v3 = *(v3 + 16);
      if (!v7)
      {
        goto LABEL_10;
      }
    }

    v8 = *(v3 + 24);
    v9 = (DerivedStorage + 16);
    if (v7)
    {
      v9 = (v7 + 24);
    }

    *v9 = v8;
    *v8 = v7;
    ftree_freeLeaf(v3);
  }

LABEL_10:
  FigSimpleMutexUnlock();
  return 0;
}

void ftree_freeLeaf(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

uint64_t FigAlternateFilterTreeSetFallbackBranch(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 24);
  *(DerivedStorage + 24) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  FigSimpleMutexUnlock();
  return 0;
}