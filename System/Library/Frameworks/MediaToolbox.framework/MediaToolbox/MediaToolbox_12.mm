uint64_t fpfs_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  if (a4 < 1.0 || a5 < 1.0)
  {
    fpfs_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline_cold_4(&v30);
    return v30;
  }

  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*&a4);
  if (!DictionaryRepresentation)
  {
    fpfs_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline_cold_3(&v30);
    return v30;
  }

  v10 = DictionaryRepresentation;
  fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
  if (!a3)
  {
LABEL_31:
    v26 = v10;
    goto LABEL_32;
  }

  v28 = 1.0;
  v29 = 1.0;
  Dimensions = fpfsi_GetDimensions(a3, &v29, &v28);
  if (Dimensions)
  {
    a3 = Dimensions;
    goto LABEL_31;
  }

  v12 = fminf(v29, v28);
  if (v12 >= 1.0)
  {
    v13 = v28;
  }

  else
  {
    v13 = a5;
  }

  if (v12 >= 1.0)
  {
    v14 = v29;
  }

  else
  {
    v14 = a4;
  }

  v15 = v14;
  v16 = v13;
  v17 = FigCFEqual();
  v31.width = v14;
  v31.height = v13;
  v18 = CGSizeCreateDictionaryRepresentation(v31);
  if (!v18)
  {
    fpfs_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline_cold_2(&v30);
    a3 = v30;
    goto LABEL_31;
  }

  v19 = v18;
  v20 = a4 / v15;
  v21 = a5 / v16;
  if (v20 >= v21)
  {
    v22 = a5 / v16;
  }

  else
  {
    v22 = a4 / v15;
  }

  if (v20 <= v21)
  {
    v20 = a5 / v16;
  }

  if (!v17)
  {
    v20 = v22;
  }

  v23 = (v14 * v20);
  v24 = (v13 * v20);
  fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
  v32.origin.x = (a4 - v23) * 0.5;
  v32.origin.y = (a5 - v24) * 0.5;
  v32.size.width = v23;
  v32.size.height = v24;
  v25 = CGRectCreateDictionaryRepresentation(v32);
  if (v25)
  {
    fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
    a3 = 0;
  }

  else
  {
    fpfs_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline_cold_1(&v30);
    a3 = v30;
  }

  CFRelease(v10);
  CFRelease(v19);
  if (v25)
  {
    v26 = v25;
LABEL_32:
    CFRelease(v26);
  }

  return a3;
}

float fpfs_ProjectedDeliveryTime(uint64_t a1, CFIndex a2)
{
  PeakBitRate = FigAlternateGetPeakBitRate(*(a1 + 1680));
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 1664), a2);
  return *(a1 + 1536) * (FigAlternateGetPeakBitRate(ValueAtIndex) / PeakBitRate);
}

BOOL fpfs_IsMarkerSampleContainingAttachment(opaqueCMSampleBuffer *a1, const __CFString *a2)
{
  result = fpfs_IsMarkerOnly(a1);
  if (result)
  {
    return CMGetAttachment(a1, a2, 0) != 0;
  }

  return result;
}

void fpfsi_restartAudioRendering(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = *(CMBaseObjectGetDerivedStorage() + 536);
  if (!v8)
  {
    goto LABEL_35;
  }

  BOOLean = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v10 = *(CMBaseObjectGetVTable() + 16);
  if (v10 && (v11 = *(v10 + 8)) != 0 && (v11(v8, @"FAS_IsActive", AllocatorForMedia, &BOOLean), BOOLean))
  {
    Value = CFBooleanGetValue(BOOLean);
    CFRelease(BOOLean);
    v13 = Value == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13 && dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!v13)
  {
LABEL_35:
    v15 = *(CMBaseObjectGetDerivedStorage() + 1024);
    if (v15)
    {
      while (1)
      {
        if (*(v15 + 48) == 1936684398)
        {
          v16 = *(v15 + 112);
          if (v16)
          {
            break;
          }
        }

        v15 = *(v15 + 24);
        if (!v15)
        {
          return;
        }
      }

      if (*(v16 + 32) == a4)
      {
        v17 = *(a3 + 840);
        if (v17 != 0.0)
        {
          if (dword_1EAF169F0)
          {
            LODWORD(BOOLean) = 0;
            v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v19 = BOOLean;
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v20 = v19;
            }

            else
            {
              v20 = v19 & 0xFFFFFFFE;
            }

            if (v20)
            {
              if (a1)
              {
                v21 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v21 = "";
              }

              if (a2)
              {
                v22 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v22 = "";
              }

              *v24 = 136316162;
              *&v24[4] = "fpfsi_restartAudioRendering";
              *&v24[12] = 2048;
              *&v24[14] = a1;
              *&v24[22] = 2082;
              v25 = v21;
              v26 = 2048;
              v27 = a2;
              v28 = 2082;
              v29 = v22;
              _os_log_send_and_compose_impl(v20, 0, &v30, 128, &dword_1962D5000, v18, 0, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: Restarting audio rendering.", v24, 52);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          fpfsi_pauseItem(a2);
          v30 = *MEMORY[0x1E6960C70];
          v31 = *(MEMORY[0x1E6960C70] + 16);
          *v24 = v30;
          *&v24[16] = v31;
          fpfs_setRateInternal(a1, a2, &v30, v24, v17);
        }
      }
    }
  }
}

uint64_t fpfs_SynchronousFrameEnqueued(uint64_t a1, const void *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 52) != 1)
  {
    result = FigAtomicIncrement32();
    if (result <= 1)
    {
      fpfs_PostNotificationWhenUnlocked(a2, @"SynchronousFrameEnqueued", a2, 0);
      CFRetain(a2);
      CMNotificationCenterGetDefaultLocalCenter();
      dispatch_get_global_queue(0, 0);
      FigGetAllocatorForMedia();

      return FigDeferNotificationToDispatchQueue();
    }
  }

  return result;
}

void fpfsi_completedDecodeForPreroll(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef cf, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cfa = 0;
  v19 = 0;
  if (cf)
  {
    v9 = CFGetTypeID(cf);
    TypeID = CFDictionaryGetTypeID();
    if (v9 == TypeID)
    {
      if (!fpfsi_CopyPlayerAndItemFromItemRetainProxy(a2, &v19, &cfa))
      {
        CMBaseObjectGetDerivedStorage();
        FigRetainProxyRetain();
        CMNotificationCenterGetDefaultLocalCenter();
        FigGetAllocatorForMedia();
        FigDeferNotificationToDispatchQueue();
      }
    }

    else
    {
      fpfsi_completedDecodeForPreroll_cold_1(TypeID, v11, v12, v13, v14, v15, v16, v17, cfa, v19, SHIDWORD(v19), v20);
    }
  }

  else
  {
    fpfsi_completedDecodeForPreroll_cold_2(a1, a2, a3, a4, 0, a6, a7, a8, cfa, v19, SHIDWORD(v19), v20);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v19)
  {
    CFRelease(v19);
  }
}

double fpfsi_markerBufferConsumed(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, CFTypeRef cf, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    return fpfsi_markerBufferConsumed_cold_2(a1, a2, a3, a4, 0, a6, a7, a8, v20, v21, SHIDWORD(v21), v22);
  }

  v9 = CFGetTypeID(cf);
  TypeID = CFDictionaryGetTypeID();
  if (v9 != TypeID)
  {
    return fpfsi_markerBufferConsumed_cold_1(TypeID, v11, v12, v13, v14, v15, v16, v17, v20, v21, SHIDWORD(v21), v22);
  }

  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigRetainProxyRetain();
  if (a4)
  {
    CFRetain(a4);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  dispatch_get_global_queue(2, 0);
  FigGetAllocatorForMedia();
  FigDeferNotificationToDispatchQueue();
  return result;
}

void fpfs_RenderPipelineLostDecoderState(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = 0;
  cf = 0;
  if (!fpfsi_CopyPlayerAndItemFromItemRetainProxy(a2, &cf, &v6))
  {
    FigRetainProxyRetain();
    if (a4)
    {
      CFRetain(a4);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    v5 = v6;
    CMBaseObjectGetDerivedStorage();
    FigGetAllocatorForMedia();
    FigDeferNotificationToDispatchQueue();
    if (cf)
    {
      CFRelease(cf);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }
}

void fpfs_deferredSynchronousFrameEnqueued(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v4 + 8);
  *(DerivedStorage + 808) = 0;
  FigMemoryBarrier();
  if (!*(DerivedStorage + 52))
  {
    v5 = *(DerivedStorage + 392);
    if (v5)
    {
      if (CFArrayGetCount(v5) >= 1)
      {
        cf = 0;
        AllocatorForMedia = FigGetAllocatorForMedia();
        FigDeferredTransactionCreate(AllocatorForMedia, &cf);
        FPSupport_AppendDeferredTransactionChangeForCallingSetContentsChangedOnLayers(cf, *(DerivedStorage + 392));
        FigDeferredTransactionCommit(cf, 0);
        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }

  fpfs_UnlockAndPostNotificationsWithCaller(a2);
  CFRelease(a2);
}

uint64_t fpfsi_RTCReportingUpdateAudioInfoForVariantEnd(uint64_t result, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 456))
  {
    return result;
  }

  v3 = result;
  RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(*(a2 + 56));
  if (RichestDecodableFormat)
  {
    v5 = 1;
  }

  else
  {
    v5 = dword_1EAF169F0 == 0;
  }

  if (!v5)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CurrentAudioPersistentIDFromMediaOption = fpfsi_GetCurrentAudioPersistentIDFromMediaOption(*(a2 + 16));
  v16[0] = 0;
  AudioChannelCount = FigAlternateGetAudioChannelCount(*(a2 + 456), CurrentAudioPersistentIDFromMediaOption, v16);
  if ((AudioChannelCount - 1) <= 1)
  {
    if ((v16[0] & 2) != 0)
    {
      v9 = 3;
    }

    else
    {
      v9 = (v16[0] >> 1) & 2;
    }

LABEL_14:
    v10 = *(v3 + 2568);
    if (v10)
    {
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v11)
      {
        v11(v10, @"playerStats", 0x1F0B43438, v9, 0);
      }
    }

    goto LABEL_17;
  }

  if (AudioChannelCount >= 3)
  {
    v9 = 1;
    goto LABEL_14;
  }

LABEL_17:
  result = fpfs_ShouldEnableSpatializationForTrack(a2);
  if (result)
  {
    v12 = *(v3 + 2568);
    if (v12)
    {
      VTable = CMBaseObjectGetVTable();
      v14 = *(VTable + 16);
      result = VTable + 16;
      v15 = *(v14 + 56);
      if (v15)
      {
        result = v15(v12, @"playerStats", 0x1F0B43498, 1, 0);
      }
    }
  }

  if (RichestDecodableFormat)
  {
    return fpfsi_RTCReportingUpdateAudioInfoForVariantEnd_cold_1(v3, RichestDecodableFormat);
  }

  return result;
}

void fpfs_BufferChomper(opaqueCMBufferQueue **a1)
{
  v2 = *a1;
  v3 = 100;
  while (1)
  {
    v4 = CMBufferQueueDequeueAndRetain(v2);
    if (!v4)
    {
      break;
    }

    CFRelease(v4);
    if (!--v3)
    {
      if (CMBufferQueueGetBufferCount(v2) >= 1)
      {
        v5 = dispatch_time(0, 20000000);
        global_queue = dispatch_get_global_queue(-2, 0);

        dispatch_after_f(v5, global_queue, a1, fpfs_BufferChomper);
        return;
      }

      break;
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v7 = dispatch_time(0, 3000000000);
  v8 = dispatch_get_global_queue(-2, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __fpfs_BufferChomper_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_after(v7, v8, block);
}

void fpfsi_ExternalProtectionStatusChanged(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  cf = 0;
  FigRetainProxyRetain();
  if (fpfsi_CopyPlayerAndItemFromItemRetainProxy(a2, &cf, &v4))
  {
    FigRetainProxyRelease();
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v3 = v4;
    CMBaseObjectGetDerivedStorage();
    FigGetAllocatorForMedia();
    FigDeferNotificationToDispatchQueue();
    if (v3)
    {
      CFRelease(v3);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void fpfsi_ExternalProtectionRequiredChanged(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  cf = 0;
  FigRetainProxyRetain();
  if (fpfsi_CopyPlayerAndItemFromItemRetainProxy(a2, &cf, &v4))
  {
    FigRetainProxyRelease();
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v3 = v4;
    CMBaseObjectGetDerivedStorage();
    FigGetAllocatorForMedia();
    FigDeferNotificationToDispatchQueue();
    if (v3)
    {
      CFRelease(v3);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void fpfs_PreserveResumeTag(const void *a1, uint64_t a2)
{
  v3 = CMGetAttachment(a1, *MEMORY[0x1E6960518], 0);
  if (v3)
  {
    v4 = *(a2 + 56);
    *(a2 + 56) = v3;
    CFRetain(v3);
    if (v4)
    {

      CFRelease(v4);
    }
  }
}

BOOL fpfs_UseTrackToSetPumpOffset(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valid = fpfs_audioOnlyValidAlternateList(DerivedStorage);
  if ((*(DerivedStorage + 24 * *(a1 + 196) + 1196) & 1) == 0 || *(a1 + 64) == *(DerivedStorage + 16 * *(a1 + 196) + 984))
  {
    return 0;
  }

  v4 = *(a1 + 48);
  if (v4 == 1986618469)
  {
    return 1;
  }

  return valid && v4 == 1936684398;
}

void fpfs_UpdatePumpOffset(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage;
  v8 = (DerivedStorage + 1280);
  v9 = *(DerivedStorage + 1292);
  v10 = MEMORY[0x1E6960C70];
  if (v9)
  {
    memset(&v41, 0, sizeof(v41));
    v11 = (DerivedStorage + 1256);
    lhs = *a3;
    rhs = *(DerivedStorage + 1256);
    CMTimeSubtract(&v41, &lhs, &rhs);
    memset(&v40, 0, sizeof(v40));
    lhs = *a2;
    rhs = *v8;
    CMTimeSubtract(&v40, &lhs, &rhs);
    memset(&v39, 0, sizeof(v39));
    memset(&v38, 0, sizeof(v38));
    CMTimeMake(&v38, 1, 1);
    lhs = v41;
    rhs = v40;
    if (CMTimeCompare(&lhs, &rhs) < 0)
    {
      lhs = v40;
      *&rhs.value = *&v41.value;
      epoch = v41.epoch;
    }

    else
    {
      lhs = v41;
      *&rhs.value = *&v40.value;
      epoch = v40.epoch;
    }

    rhs.epoch = epoch;
    CMTimeSubtract(&v39, &lhs, &rhs);
    lhs = v39;
    rhs = v38;
    if ((CMTimeCompare(&lhs, &rhs) & 0x80000000) == 0)
    {
      if (dword_1EAF169F0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v10 = MEMORY[0x1E6960C70];
      }

      v13 = *v10;
      *&v8->value = *v10;
      v14 = *(v10 + 2);
      v8->epoch = v14;
      *v11 = v13;
      *(v7 + 1272) = v14;
    }

    v9 = *(v7 + 1292);
  }

  if ((v9 & 1) == 0)
  {
    rhs = *a3;
    v41 = *a2;
    CMTimeSubtract(&lhs, &rhs, &v41);
    *(v7 + 1160) = *&lhs.value;
    v15 = lhs.epoch;
    *(v7 + 1176) = lhs.epoch;
    v16 = *(v7 + 96);
    *&lhs.value = *(v7 + 1160);
    lhs.epoch = v15;
    FigAlternatePlaybackBitrateMonitorSetPumpOffset(v16, &lhs);
    if (dword_1EAF169F0)
    {
      LODWORD(v41.value) = 0;
      LOBYTE(v40.value) = 0;
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      value = v41.value;
      value_low = LOBYTE(v40.value);
      v37 = v17;
      if (os_log_type_enabled(v17, v40.value))
      {
        v20 = value;
      }

      else
      {
        v20 = value & 0xFFFFFFFE;
      }

      if (v20)
      {
        v21 = *v7;
        if (*v7)
        {
          v22 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v22 = "";
        }

        v35 = v22;
        if (a1)
        {
          v23 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v23 = "";
        }

        v34 = v23;
        lhs = *(v7 + 1160);
        Seconds = CMTimeGetSeconds(&lhs);
        fpfs_GetTime(v7, &lhs);
        v25 = CMTimeGetSeconds(&lhs);
        lhs = *a3;
        v26 = CMTimeGetSeconds(&lhs);
        lhs = *a2;
        v27 = CMTimeGetSeconds(&lhs);
        LODWORD(rhs.value) = 136317186;
        *(&rhs.value + 4) = "fpfs_UpdatePumpOffset";
        LOWORD(rhs.flags) = 2048;
        *(&rhs.flags + 2) = v21;
        HIWORD(rhs.epoch) = 2082;
        v43 = v35;
        v44 = 2048;
        v45 = a1;
        v46 = 2082;
        v47 = v34;
        v48 = 2048;
        v49 = Seconds;
        v50 = 2048;
        v51 = v25;
        v52 = 2048;
        v53 = v26;
        v54 = 2048;
        v55 = v27;
        _os_log_send_and_compose_impl(v20, 0, &lhs, 128, &dword_1962D5000, v37, value_low, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: new pumpOffset %1.3f, now %1.3f, anchorPumpTime %1.3f, anchorL2Time %1.3f", &rhs, 92);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v10 = MEMORY[0x1E6960C70];
    }

    v28 = *&a2->value;
    v8->epoch = a2->epoch;
    *&v8->value = v28;
    v29 = *&a3->value;
    *(v7 + 1272) = a3->epoch;
    *(v7 + 1256) = v29;
  }

  v30 = 0;
  v31 = *v10;
  v32 = *(v10 + 2);
  do
  {
    v33 = v7 + 1184 + v30;
    *v33 = v31;
    *(v33 + 16) = v32;
    v30 += 24;
  }

  while (v30 != 72);
}

void fpfs_SyncAudioBuffer(float *a1, uint64_t a2, opaqueCMSampleBuffer *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  memset(&v17, 0, sizeof(v17));
  memset(&v18, 0, sizeof(v18));
  CMSampleBufferGetOutputPresentationTimeStamp(&v17, a3);
  v14 = 0uLL;
  v15 = 0;
  if (*(a2 + 64) == *&a1[4 * *(a2 + 196) + 244])
  {
    *&v13.value = *(a2 + 208);
    v6 = *(a2 + 224);
  }

  else
  {
    *&v13.value = *MEMORY[0x1E6960C88];
    v6 = *(MEMORY[0x1E6960C88] + 16);
  }

  v13.epoch = v6;
  memset(&v16, 0, sizeof(v16));
  fpfs_GetTime(a1, &v14);
  if (*(a2 + 199))
  {
    v7 = *(a2 + 64) == *&a1[4 * *(a2 + 196) + 246] && fpfs_IsTrialReadyToComplete(a1, a2);
    *&time1.value = v14;
    time1.epoch = v15;
    time2 = v13;
    if (fpfs_CheckAudioSync(a1, a2, a3, &time1, &time2, v7, &v16))
    {
      Head = CMBufferQueueGetHead(*(a2 + 88));
      memset(&v12, 0, sizeof(v12));
      CMSampleBufferGetOutputPresentationTimeStamp(&v12, Head);
      if (dword_1EAF169F0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      time1 = v16;
      fpfs_FinishAudioSyncAndStart();
    }
  }

  else
  {
    fpfs_GetEndOutputPresentationTimeStamp(a3, &v18);
    time1 = v18;
    *&time2.value = v14;
    time2.epoch = v15;
    if (CMTimeCompare(&time1, &time2) <= 0)
    {
      if (*(a2 + 436))
      {
        fpfs_SyncAudioBuffer_cold_1(&v14, a2);
      }

      else
      {
        CMBufferQueueReset(*(a2 + 88));
        CMBufferQueueReset(*(a2 + 96));
      }
    }

    else
    {
      v8 = CMBufferQueueGetHead(*(a2 + 88));
      memset(&v12, 0, sizeof(v12));
      if (v8)
      {
        CMSampleBufferGetOutputPresentationTimeStamp(&v12, v8);
      }

      else
      {
        v12 = v17;
      }

      if (dword_1EAF169F0)
      {
        v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *(a2 + 199) = 1;
      *(a2 + 201) = 1;
      *(a2 + 312) = v12;
      fpfs_SyncAudioBuffer(a1, a2, a3);
    }
  }
}

uint64_t fpfs_ensureDecryptorHasStarted(uint64_t a1)
{
  v10[26] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 408);
  if (!v1)
  {
    v10[0] = 0;
    v3 = *(a1 + 400);
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v4)
    {
      return 0;
    }

    v5 = v4(v3, v10);
    v6 = v5 == -15844 || v5 == -12782;
    if (v6 || v5 == 0)
    {
      return 0;
    }

    else
    {
      if (v5 == -12785)
      {
        v1 = 4294954373;
      }

      else
      {
        v1 = v5;
      }

      *(a1 + 408) = v1;
      CMBaseObjectGetDerivedStorage();
      if (dword_1EAF169F0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  return v1;
}

void fpfs_associateCrossTalkerToRenderChain(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v2 = *(a1 + 1024);
  if (v2)
  {
    do
    {
      if (v2 != a2 && *(v2 + 80) == *(a2 + 80))
      {
        v4 = *(v2 + 48);
        v5 = v4 == 1668047728 || v4 == 1986618469;
        if (v5 || v4 == 1935832172)
        {
          if (*(v2 + 112))
          {
            AllocatorForMedia = FigGetAllocatorForMedia();
            FigRenderPipelineGetFigBaseObject();
            v9 = v8;
            v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v10)
            {
              if (!v10(v9, @"HDRCrossTalker", AllocatorForMedia, &cf))
              {
                break;
              }
            }
          }
        }
      }

      v2 = *(v2 + 24);
    }

    while (v2);
    v11 = cf;
    if (cf)
    {
      goto LABEL_18;
    }
  }

  v12 = FigGetAllocatorForMedia();
  FigCrossTalkerCreate(v12, &cf);
  v11 = cf;
  if (cf)
  {
LABEL_18:
    FigRenderPipelineGetFigBaseObject();
    v14 = v13;
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v15)
    {
      v15(v14, @"HDRCrossTalker", v11);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t fpfs_createTimedDataRenderChain(uint64_t a1, uint64_t a2, CFTypeRef **a3)
{
  v5 = malloc_type_calloc(1uLL, 0x90uLL, 0x1060040EF867D01uLL);
  if (!v5)
  {
    fpfs_createTimedDataRenderChain_cold_1(&v15);
    return v15;
  }

  v6 = v5;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v8 = FigTimedMetadataRenderPipelineCreate(AllocatorForMedia, fpfs_TimedDataRenderCallback, a1, v6 + 4);
  if (v8)
  {
    v13 = v8;
    goto LABEL_8;
  }

  v9 = FigGetAllocatorForMedia();
  FigRenderPipelineGetFigBaseObject();
  v11 = v10;
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12)
  {
    v13 = 4294954514;
    goto LABEL_7;
  }

  v13 = v12(v11, @"SourceSampleBufferQueue", v9, v6 + 5);
  if (v13)
  {
LABEL_7:
    CFRelease(v6[4]);
LABEL_8:
    free(v6);
    return v13;
  }

  v6[2] = FigFormatDescriptionRetain();
  *v6 = 1;
  *a3 = v6;
  return v13;
}

CFStringRef fpfs_createNextRenderPipelineIdentifierString(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ++*(DerivedStorage + 900);
  AllocatorForMedia = FigGetAllocatorForMedia();
  return CFStringCreateWithFormat(AllocatorForMedia, 0, @"R%s.%02d", DerivedStorage + 888, *(DerivedStorage + 900));
}

CFMutableDictionaryRef fpfs_createSpeedRampOrWarehouseRenderPipelineOptions(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  return Mutable;
}

uint64_t fpfsi_syncMomentSourceCallback(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigRetainProxyIsInvalidated();
  if (!result)
  {
    FigSimpleMutexLock();
    if (*(DerivedStorage + 688))
    {
      v5 = pthread_main_np();
      v6 = *(DerivedStorage + 688);
      if (v5)
      {
        FigLayerSynchronizerSynchronizeToMoment(v6, a2, 0);
      }

      else
      {
        FigLayerSynchronizerSynchronizeToMomentWithDeferredTransaction(v6, a2);
      }
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

void fpfs_TimedDataRenderCallback(void *a1, const void *a2)
{
  values = a1;
  if (*(CMBaseObjectGetDerivedStorage() + 459))
  {
    if (a1)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      v5 = CFDictionaryCreate(AllocatorForMedia, &kFigPlayerTimedMetadataNotificationKey_ValueArray, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      fpfs_PostNotificationWhenUnlocked(a2, @"TimedMetadata", a2, v5);
      if (v5)
      {
        CFRelease(v5);
      }
    }

    else
    {

      fpfs_PostNotificationWhenUnlocked(a2, @"TimedMetadata", a2, 0);
    }
  }
}

uint64_t fpfsi_prepareSubtitleRenderPipeline(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = CMBaseObjectGetDerivedStorage();
  FigRenderPipelineGetFigBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v5)
  {
    v5(v4, @"DisplayNonForcedSubtitles", *MEMORY[0x1E695E4D0]);
  }

  v6 = *(DerivedStorage + 1824);
  if (!v6)
  {
    return 0;
  }

  if (!*(v2 + 460))
  {
    FigRenderPipelineGetFigBaseObject();
    v8 = v12;
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v9)
    {
      v10 = 0x1F0B550D8;
      goto LABEL_10;
    }

    return 4294954514;
  }

  FigRenderPipelineGetFigBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v9)
  {
    return 4294954514;
  }

  v10 = 0x1F0B2FB78;
LABEL_10:

  return v9(v8, v10, v6);
}

double fpfsi_setAudioSessionPreferredAudioHardwareFormat(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *(CMBaseObjectGetDerivedStorage() + 536);
  if (v4)
  {
    v6 = *(CMBaseObjectGetVTable() + 16);
    if (v6)
    {
      v7 = *(v6 + 56);
      if (v7)
      {
        v7(v4, *MEMORY[0x1E69B01E8], a3);
      }
    }
  }

  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

void fpfsi_DetermineRateSnapping(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v3 = 0x420000003D000000;
    if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual())
    {
      if (FigCFEqual())
      {
        v3 = 0;
        v4 = 1;
        goto LABEL_6;
      }

      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v4 = 0;
LABEL_6:
    *a2 = v4;
    *(a2 + 4) = v3;
  }
}

void fpfs_enqueuePrerollDidCompleteNotificationIfNeeded(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 2224))
  {
    fpfs_enqueuePrerollDidCompleteNotificationIfNeeded_cold_1();
  }
}

void fpfs_PostNotificationListFromDispatch(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    do
    {
      v3 = *(v2 + 32);
      fpfs_PostNotificationFromDispatch(v2);
      v2 = v3;
    }

    while (v3);
  }

  free(a1);
}

uint64_t fpfs_Invalidate(CFTypeRef cf)
{
  v21 = *MEMORY[0x1E69E9840];
  if (dword_1EAF169F0)
  {
    HIDWORD(v14) = 0;
    BYTE3(v14) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CFRetain(cf);
  fpfs_InvalidateGuts(cf, v3, v4, v5, v6, v7, v8, v9, cfa, v12, v13, v14, v15, v16, v17, v18, v19, v20);
  CFRelease(cf);
  return 0;
}

void fpfs_InvalidateItem()
{
  FigPlaybackItemGetFigBaseObject();
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

uint64_t fpfs_clientRenderOptionChanged(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFRetain(a2);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigGetAllocatorForMedia();

  return FigDeferNotificationToDispatchQueue();
}

uint64_t fpfs_FVTPreferredDataChannelGroupsChanged(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFRetain(a2);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigGetAllocatorForMedia();

  return FigDeferNotificationToDispatchQueue();
}

uint64_t fpfs_externalStartupTaskCompleted(uint64_t a1, const void *a2, uint64_t a3, const void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CMBaseObjectGetDerivedStorage();
  v8 = FigSimpleMutexLock();
  ++*(v7 + 8);
  if (*(DerivedStorage + 52))
  {
    fpfs_externalStartupTaskCompleted_cold_1(v8, v9, v10, v11, v12, v13, v14, v15, v20, v21, SHIDWORD(v21), v22);
  }

  else
  {
    v16 = *(DerivedStorage + 952);
    v24.length = CFArrayGetCount(v16);
    v24.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v16, v24, a4);
    if (FigPlayerStartupTaskDoesAllowStartup(a4) && FirstIndexOfValue != -1 && *(DerivedStorage + 80))
    {
      if (dword_1EAF169F0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CFArrayRemoveValueAtIndex(*(DerivedStorage + 952), FirstIndexOfValue);
      fpfs_CheckPrebufferedLevels();
    }
  }

  return fpfs_UnlockAndPostNotificationsWithCaller(a2);
}

uint64_t fpfs_prerollLost(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFRetain(a2);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigGetAllocatorForMedia();

  return FigDeferNotificationToDispatchQueue();
}

uint64_t fpfs_handleSetProperty(void *a1, int a2, const void *a3, const void *a4, _BYTE *a5)
{
  v265 = *MEMORY[0x1E69E9840];
  *cf = a4;
  if (!a1 || !a3)
  {
    fpfs_handleSetProperty_cold_37(&size);
    return LODWORD(size.width);
  }

  *a5 = 1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a3, @"PlayerRole"))
  {
    v9 = FigCFCopyCompactDescription();
    if (dword_1EAF169F0)
    {
      LODWORD(v244.origin.x) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v9)
    {
      CFRelease(v9);
    }
  }

  v11 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v11 + 8);
  if (*(DerivedStorage + 52))
  {
    fpfs_handleSetProperty_cold_1(&size);
    goto LABEL_54;
  }

  if (CFEqual(a3, @"DestinationPixelBufferAttributes"))
  {
    if (!*cf || (v12 = CFGetTypeID(*cf), v12 == CFDictionaryGetTypeID()))
    {
      v13 = *(DerivedStorage + 640);
      if (v13)
      {
        CFRelease(v13);
      }

      v14 = *cf;
      *(DerivedStorage + 640) = *cf;
      if (v14)
      {
        CFRetain(v14);
      }

      goto LABEL_16;
    }

    fpfs_handleSetProperty_cold_2(&size);
LABEL_54:
    width_low = LODWORD(size.width);
    goto LABEL_67;
  }

  if (CFEqual(a3, @"ClosedCaptionLayerArray"))
  {
    fpfs_handleSetProperty_cold_31(cf, a1, &size);
    goto LABEL_54;
  }

  if (CFEqual(a3, @"ClosedCaptionLayerBoundsUpdate"))
  {
    *type = 0;
    v16 = *(MEMORY[0x1E695F058] + 16);
    *&cf[8] = *MEMORY[0x1E695F058];
    rect_16 = v16;
    v244.origin = *&cf[8];
    v244.size = v16;
    v17 = *(MEMORY[0x1E6962818] + 16);
    size = *MEMORY[0x1E6962818];
    v18 = *(MEMORY[0x1E6962818] + 32);
    v19 = *(MEMORY[0x1E6962818] + 48);
    v253 = v17;
    v254 = v18;
    v255 = v19;
    if (*cf && (TypeID = CFDictionaryGetTypeID(), TypeID == CFGetTypeID(*cf)))
    {
      Value = CFDictionaryGetValue(*cf, @"ClosedCaptionLayerBoundsUpdate_LayerBounds");
      if (Value)
      {
        CGRectMakeWithDictionaryRepresentation(Value, &cf[8]);
      }

      v22 = CFDictionaryGetValue(*cf, @"ClosedCaptionLayerBoundsUpdate_LayerVideoRelativeToViewport");
      v23 = v22;
      if (v22)
      {
        CGRectMakeWithDictionaryRepresentation(v22, &v244);
      }

      v24 = CFDictionaryGetValue(*cf, @"ClosedCaptionLayerBoundsUpdate_LayerCaptionsAvoidanceMargins");
      v25 = v24 == 0;
      if (v24)
      {
        FigGeometryMarginsMakeFromDictionary();
      }

      v26 = CFDictionaryGetValue(*cf, @"ClosedCaptionLayerBoundsUpdate_LayerIndex");
      if (v26)
      {
        CFNumberGetValue(v26, kCFNumberIntType, type);
        v27 = *type;
        if ((*type & 0x80000000) != 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v27 = 0;
      }

      width_low = 0;
      v30 = DerivedStorage + 208;
      v31 = *(DerivedStorage + 200);
      v29 = v27;
      if (v23)
      {
        v32 = &v244;
        goto LABEL_32;
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v240, v241, v242);
      width_low = v28;
      v29 = 0;
      v30 = DerivedStorage + 208;
      v31 = *(DerivedStorage + 200);
      v25 = 1;
    }

    v32 = 0;
LABEL_32:
    if (v25)
    {
      p_size = 0;
    }

    else
    {
      p_size = &size;
    }

    FPSupport_updateClosedCaptionLayerBounds(v30, *&cf[8], *&cf[16], rect_16.width, rect_16.height, v31, v29, v32, p_size);
    goto LABEL_67;
  }

  if (CFEqual(a3, @"ClosedCaptionLayerSetOptions"))
  {
    *&cf[8] = 0;
    if (*cf && (v34 = CFDictionaryGetTypeID(), v34 == CFGetTypeID(*cf)))
    {
      v35 = CFDictionaryGetValue(*cf, @"ClosedCaptionLayerSetOption_LayerIndex");
      if (v35)
      {
        CFNumberGetValue(v35, kCFNumberIntType, &cf[8]);
      }

      v36 = FigCFDictionaryGetValue();
      if (!v36)
      {
        fpfs_handleSetProperty_cold_4(&size);
        goto LABEL_54;
      }

      v37 = v36;
      v38 = FigCFDictionaryGetValue();
      if (!v38)
      {
        fpfs_handleSetProperty_cold_3(&size);
        goto LABEL_54;
      }

      width_low = 0;
      v39 = *&cf[8];
      if ((*&cf[8] & 0x80000000) != 0)
      {
        goto LABEL_67;
      }

      v40 = v38;
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v240, v241, v242);
      width_low = v41;
      v37 = 0;
      v40 = 0;
      v39 = 0;
    }

    FPSupport_setClosedCaptionLayerOptions(DerivedStorage + 208, *(DerivedStorage + 200), v39, v37, v40);
    goto LABEL_67;
  }

  if (CFEqual(a3, @"ClosedCaptionLayerSetSeparated"))
  {
    fpfs_handleSetProperty_cold_27(cf, DerivedStorage, &size, v42, v43, v44, v45, v46, v240, v241, SHIDWORD(v241), v242, *type, *&v244.origin.x, *&v244.origin.y, *&v244.size.width, *&v244.size.height, v245, *cf);
    goto LABEL_54;
  }

  if (CFEqual(a3, @"ImageQueueSlotTransitionFinished"))
  {
    fpfs_releaseTransitionImageQueuesAndSlots(a1);
    goto LABEL_16;
  }

  if (CFEqual(a3, @"VideoLayerArray"))
  {
    if (*cf)
    {
      v47 = CFArrayGetTypeID();
      if (v47 != CFGetTypeID(*cf))
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF169E8, 4294954516, "<<<< FigStreamPlayer >>>>", 65004, v5);
        goto LABEL_66;
      }

      v48 = *cf;
    }

    else
    {
      v48 = 0;
    }

    if (FigUseVideoReceiverForCALayer())
    {
      fpfs_handleSetProperty_cold_5(&size);
      goto LABEL_54;
    }

    v52 = fpfs_setClientVideoLayerArray(a1, v48);
LABEL_66:
    width_low = v52;
    goto LABEL_67;
  }

  if (CFEqual(a3, @"VideoLayer"))
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v50 = CFArrayCreate(AllocatorForMedia, cf, *cf != 0, MEMORY[0x1E695E9C0]);
    if (v50)
    {
      v51 = v50;
      width_low = fpfs_setClientVideoLayerArray(a1, v50);
      CFRelease(v51);
      goto LABEL_67;
    }

    fpfs_handleSetProperty_cold_6(&size);
    goto LABEL_54;
  }

  if (CFEqual(a3, @"RequiresNumVideoSlots"))
  {
    *type = 0;
    if (*cf && (v54 = CFGetTypeID(*cf), v54 == CFNumberGetTypeID()))
    {
      if (!FigUseVideoReceiverForCALayer())
      {
        CFNumberGetValue(*cf, kCFNumberCFIndexType, type);
        if (*type == *(DerivedStorage + 408))
        {
          goto LABEL_16;
        }

        v244.size.width = 0.0;
        v55 = CAImageQueueGetTypeID();
        v56 = *(DerivedStorage + 408);
        *&v244.origin.x = v55;
        *&v244.origin.y = *type - v56;
        LOBYTE(v244.size.width) = 1;
        Next = fpfs_getNext(DerivedStorage, 0);
        if (dword_1EAF169F0)
        {
          v58 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v64 = *type;
        if (*type >= 1 && Next)
        {
          fpfs_EnqueueNotification(a1, @"TimebaseChanged", Next, 0);
          v64 = *type;
        }

        *(DerivedStorage + 408) = v64;
        *(DerivedStorage + 456) = 1;
        v65 = fpfsi_handleVideoOutputsChanged;
        v66 = &v244;
        v67 = a1;
        goto LABEL_96;
      }

      v74 = 65026;
    }

    else
    {
      v74 = 65024;
    }

    fpfs_handleSetProperty_cold_7(v74, &size);
    goto LABEL_54;
  }

  if (CFEqual(a3, @"VideoLayerDestinationIsTVOut") || CFEqual(a3, @"PreventDisplaySleepDuringVideoPlayback"))
  {
    if (*cf && (v59 = CFBooleanGetTypeID(), v59 == CFGetTypeID(*cf)))
    {
      v60 = CFEqual(a3, @"PreventDisplaySleepDuringVideoPlayback");
      v61 = CFBooleanGetValue(*cf);
      if (v60)
      {
        v62 = v61;
      }

      else
      {
        v62 = v61 == 0;
      }

      if (*(DerivedStorage + 416) == v62)
      {
        goto LABEL_16;
      }

      v63 = fpfs_getNext(DerivedStorage, 0);
      *(DerivedStorage + 416) = v62;
      if (!v63 || !*(CMBaseObjectGetDerivedStorage() + 832))
      {
        goto LABEL_16;
      }

      v52 = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF169E8, 4294954516, "<<<< FigStreamPlayer >>>>", 65086, v5);
    }

    goto LABEL_66;
  }

  if (CFEqual(a3, @"AudioPipelineEarlyDump"))
  {
    if (!*cf || (v68 = CFGetTypeID(*cf), v68 != CFNumberGetTypeID()))
    {
      fpfs_handleSetProperty_cold_8(&size);
      goto LABEL_54;
    }

    CFNumberGetValue(*cf, kCFNumberIntType, (DerivedStorage + 628));
LABEL_16:
    width_low = 0;
LABEL_67:
    fpfs_UnlockAndPostNotificationsWithCaller(a1);
    return width_low;
  }

  if (CFEqual(a3, @"VideoPipelineEarlyDump"))
  {
    if (*cf)
    {
      v69 = CFGetTypeID(*cf);
      if (v69 == CFNumberGetTypeID())
      {
        CFNumberGetValue(*cf, kCFNumberIntType, (DerivedStorage + 632));
        goto LABEL_105;
      }
    }

    fpfs_handleSetProperty_cold_9(&size);
LABEL_152:
    width_low = LODWORD(size.width);
    goto LABEL_67;
  }

  if (CFEqual(a3, @"DisallowVideoLayerDisplayCompositing"))
  {
    if (!*cf || (v70 = CFGetTypeID(*cf), v70 != CFBooleanGetTypeID()))
    {
      fpfs_handleSetProperty_cold_10(&size);
      goto LABEL_152;
    }

    *(DerivedStorage + 400) = CFBooleanGetValue(*cf);
    v71 = fpfsi_updateVideoChannelSettingForAllVideoTracks;
    v72 = a1;
    v73 = 0;
LABEL_111:
    fpfs_PlayQueueCallForEachItem(v72, v71, v73);
    goto LABEL_16;
  }

  if (CFEqual(a3, @"AllowGaplessTransitions"))
  {
    width_low = 0;
    *(DerivedStorage + 49) = *cf != *MEMORY[0x1E695E4C0];
    goto LABEL_67;
  }

  if (CFEqual(a3, @"NetworkCacheURL"))
  {
LABEL_118:
    width_low = 4294954514;
    goto LABEL_67;
  }

  if (CFEqual(a3, @"PlayerVolume"))
  {
    v52 = fpfs_setVolume(a1, *cf);
    goto LABEL_66;
  }

  if (CFEqual(a3, @"PlayerMuted"))
  {
    v52 = fpfs_setMuted();
    goto LABEL_66;
  }

  if (CFEqual(a3, @"EQPreset"))
  {
    *&cf[8] = 0;
    if (*cf)
    {
      v75 = CFGetTypeID(*cf);
      if (v75 == CFNumberGetTypeID())
      {
        CFNumberGetValue(*cf, kCFNumberIntType, &cf[8]);
        v52 = fpfs_setEQPreset(a1, *&cf[8]);
        goto LABEL_66;
      }
    }

    fpfs_handleSetProperty_cold_11(&size);
    goto LABEL_152;
  }

  if (CFEqual(a3, @"SetVideoLayerBoundsAutomatically"))
  {
    if (*cf)
    {
      v76 = CFGetTypeID(*cf);
      if (v76 == CFBooleanGetTypeID())
      {
        width_low = 0;
        *(DerivedStorage + 457) = CFBooleanGetValue(*cf);
        goto LABEL_67;
      }
    }

    fpfs_handleSetProperty_cold_12(&size);
    goto LABEL_152;
  }

  if (CFEqual(a3, @"PrimaryVideoOutputSize"))
  {
    size.height = 0.0;
    size.width = 0.0;
    if (*cf)
    {
      v77 = CFGetTypeID(*cf);
      if (v77 == CFDictionaryGetTypeID() && CGSizeMakeWithDictionaryRepresentation(*cf, &size))
      {
        if (size.width == *(DerivedStorage + 440) && size.height == *(DerivedStorage + 448))
        {
          goto LABEL_105;
        }

        *(DerivedStorage + 440) = size;
        v78 = fpfs_PlayQueueCallForEachItem(a1, fpfsi_HandleResolutionCapOrDisplaySizeChange, 0);
        goto LABEL_145;
      }
    }

    v79 = qword_1EAF169E8;
    v80 = v5;
    v81 = 4294954436;
    v82 = 65147;
LABEL_144:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v79, v81, "<<<< FigStreamPlayer >>>>", v82, v80);
    goto LABEL_145;
  }

  if (CFEqual(a3, @"PostClosedCaptionCommands"))
  {
    if (*cf)
    {
      v83 = CFGetTypeID(*cf);
      if (v83 == CFBooleanGetTypeID())
      {
        width_low = 0;
        *(DerivedStorage + 208) = CFBooleanGetValue(*cf);
        goto LABEL_67;
      }
    }

    fpfs_handleSetProperty_cold_13(&size);
    goto LABEL_152;
  }

  if (CFEqual(a3, @"DisplayClosedCaptions"))
  {
    if (!*cf || (v84 = CFGetTypeID(*cf), v84 != CFBooleanGetTypeID()))
    {
      fpfs_handleSetProperty_cold_14(&size);
      goto LABEL_152;
    }

    v85 = CFBooleanGetValue(*cf);
    if (v85 != *(DerivedStorage + 209))
    {
      *(DerivedStorage + 209) = v85;
      fpfs_updateClosedCaptionsDisplay();
      goto LABEL_16;
    }

    goto LABEL_105;
  }

  if (CFEqual(a3, @"RequiredNumberOfCAContextsForClosedCaptionLayers"))
  {
    fpfs_handleSetProperty_cold_28(cf, DerivedStorage, &size);
    goto LABEL_152;
  }

  if (CFEqual(a3, @"DisplayNonForcedSubtitles") || CFEqual(a3, @"PreferredLanguageList"))
  {
    width_low = 4294954513;
    goto LABEL_67;
  }

  if (CFEqual(a3, @"ActionAtEnd"))
  {
    v86 = *(DerivedStorage + 688);
    v87 = fpfs_getNext(DerivedStorage, 0);
    if (*cf)
    {
      v88 = CFGetTypeID(*cf);
      if (v88 == CFStringGetTypeID())
      {
        ActionAtEndForString = FigPlaybackGetActionAtEndForString(*cf);
        width_low = 0;
        *(DerivedStorage + 688) = ActionAtEndForString;
        if (v86 == ActionAtEndForString || !v87)
        {
          goto LABEL_67;
        }

        v90 = ActionAtEndForString;
        v91 = *(DerivedStorage + 80);
        Count = CFArrayGetCount(*(DerivedStorage + 72));
        if (v91)
        {
          v93 = Count + 1;
        }

        else
        {
          v93 = Count;
        }

        if (FigPlaybackGetEffectiveActionAtEnd(v90, v93))
        {
          RenderingTrackofType = fpfs_LastRenderingTrackofType(v87, 1936684398, 0);
          if (RenderingTrackofType)
          {
            fpfs_CancelGaplessTransitionThatDependsOnTrack(a1, RenderingTrackofType, 1, v95, v96, v97, v98, v99, v240, v241, v242, *type, *&v244.origin.x, *&v244.origin.y, *&v244.size.width, *&v244.size.height, v245, *cf, *&cf[8], *&cf[16], *&rect_16.width, *&rect_16.height, v248, v249, v250, v251, *&size.width, *&size.height, v253, *(&v253 + 1), v254, *(&v254 + 1));
          }
        }

        fpfs_AdvanceToNextItemIfNecessary(a1);
        goto LABEL_16;
      }
    }

    fpfs_handleSetProperty_cold_15(&size);
    goto LABEL_152;
  }

  if (CFEqual(a3, @"ApplyVideoTrackMatrix"))
  {
    if (!*cf || (v100 = CFGetTypeID(*cf), v100 != CFBooleanGetTypeID()))
    {
      fpfs_handleSetProperty_cold_16(&size);
      goto LABEL_152;
    }

    v101 = CFBooleanGetValue(*cf);
    if (v101 != *(DerivedStorage + 664))
    {
      width_low = 0;
      *(DerivedStorage + 664) = v101;
      goto LABEL_67;
    }

    goto LABEL_105;
  }

  if (CFEqual(a3, @"TimeAccuracy"))
  {
    goto LABEL_118;
  }

  if (CFEqual(a3, @"FigAudioSession"))
  {
    if (*cf)
    {
      v102 = CFGetTypeID(*cf);
      if (v102 != FigAudioSessionGetTypeID())
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF169E8, 4294954516, "<<<< FigStreamPlayer >>>>", 65290, v5);
        goto LABEL_145;
      }

      v103 = *cf;
      v104 = (DerivedStorage + 536);
      v105 = *(DerivedStorage + 536);
      *(DerivedStorage + 536) = *cf;
      CFRetain(v103);
    }

    else
    {
      v104 = (DerivedStorage + 536);
      v105 = *(DerivedStorage + 536);
      *(DerivedStorage + 536) = 0;
    }

    if (v105)
    {
      CFRelease(v105);
    }

    fpfs_setCachedRouteInfo(a1);
    if (*(DerivedStorage + 80))
    {
      v107 = *(CMBaseObjectGetDerivedStorage() + 1024);
      if (!v107)
      {
        goto LABEL_207;
      }

      while (*(v107 + 48) != 1936684398 || !*(v107 + 112))
      {
        v107 = *(v107 + 24);
        if (!v107)
        {
          goto LABEL_207;
        }
      }
    }

    if (*v104)
    {
      fpfs_stopResetDisturbReprepareAndResume(a1, *(DerivedStorage + 80), 0);
    }

LABEL_207:
    if (!*(DerivedStorage + 528))
    {
      fpfs_FetchClientBundleIdentifierFromAudioSession(a1);
      goto LABEL_16;
    }

    goto LABEL_105;
  }

  if (CFEqual(a3, @"FigAudioSession2"))
  {
    goto LABEL_105;
  }

  if (CFEqual(a3, @"ClientName"))
  {
    if (fpfs_handleSetProperty_cold_35(cf))
    {
      v111 = *(DerivedStorage + 184);
      if (v111)
      {
        CFRelease(v111);
        *(DerivedStorage + 184) = 0;
      }

      if (*cf)
      {
        width_low = 0;
        *(DerivedStorage + 184) = CFRetain(*cf);
        goto LABEL_67;
      }

      goto LABEL_105;
    }

    goto LABEL_234;
  }

  if (CFEqual(a3, @"STSLabel"))
  {
    v112 = fpfs_handleSetProperty_cold_34(cf);
    if (v112)
    {
      if (v112 != 1)
      {
        goto LABEL_234;
      }

      v113 = *cf;
    }

    else
    {
      v113 = 0;
    }

    *&size.width = @"STSLabel";
    *&size.height = v113;
    v119 = *(DerivedStorage + 192);
    *(DerivedStorage + 192) = v113;
    if (v113)
    {
      CFRetain(v113);
    }

    if (v119)
    {
      CFRelease(v119);
    }

    v65 = fpfsi_setPropertyOnAllAudioRenderPipelines;
    v66 = &size;
    v67 = a1;
LABEL_96:
    v52 = fpfs_PlayQueueCallForEachItem(v67, v65, v66);
    goto LABEL_66;
  }

  if (CFEqual(a3, @"AudioDeviceUID"))
  {
    if (!*cf || (v106 = CFStringGetTypeID(), v106 == CFGetTypeID(*cf)))
    {
      v109 = (DerivedStorage + 176);
      if (!FigCFEqual())
      {
        fpfs_handleSetProperty_cold_29(v109, cf, a1);
        goto LABEL_16;
      }

      goto LABEL_105;
    }

LABEL_234:
    width_low = 4294954436;
    goto LABEL_67;
  }

  if (CFEqual(a3, @"EnableHardwareAcceleratedVideoDecoder"))
  {
    fpfs_handleSetProperty_cold_33();
    goto LABEL_152;
  }

  if (CFEqual(a3, @"PreferredVideoDecoderGPURegistryID"))
  {
    if (*cf)
    {
      v108 = CFNumberGetTypeID();
      if (v108 != CFGetTypeID(*cf))
      {
        width_low = 4294954516;
        goto LABEL_67;
      }
    }

    if (!FigCFEqual())
    {
      fpfs_handleSetProperty_cold_30((DerivedStorage + 656), cf);
      goto LABEL_16;
    }

    goto LABEL_105;
  }

  if (CFEqual(a3, @"GatherPerformanceHistoryArray"))
  {
    fpfs_handleSetProperty_cold_32(cf, DerivedStorage, &size);
    goto LABEL_152;
  }

  if (CFEqual(a3, @"DisplayTimedMetadata"))
  {
    if (*cf)
    {
      v110 = CFGetTypeID(*cf);
      if (v110 == CFBooleanGetTypeID())
      {
        width_low = 0;
        *(DerivedStorage + 459) = CFBooleanGetValue(*cf);
        goto LABEL_67;
      }
    }

    fpfs_handleSetProperty_cold_17(&size);
    goto LABEL_152;
  }

  if (CFEqual(a3, @"SendToNero"))
  {
    if (*cf && (v114 = CFDictionaryGetTypeID(), v114 == CFGetTypeID(*cf)))
    {
      v115 = CFDictionaryGetValue(*cf, @"Visuals");
      if (v115 && (v116 = v115, v117 = *(DerivedStorage + 462), v117 != CFBooleanGetValue(v115)))
      {
        v125 = CFBooleanGetValue(v116);
        *(DerivedStorage + 462) = v125;
        v118 = (*(DerivedStorage + 463) | v125) == 0;
      }

      else
      {
        v118 = 1;
      }

      if (*(DerivedStorage + 462))
      {
        v126 = CFDictionaryGetValue(*cf, @"NeroTransport");
        if (v126)
        {
          v127 = *(DerivedStorage + 488);
          *(DerivedStorage + 488) = v126;
          CFRetain(v126);
          if (v127)
          {
            CFRelease(v127);
          }
        }

        else
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v240, v241, v242);
        }
      }

      else
      {
        v128 = *(DerivedStorage + 488);
        if (v128)
        {
          CFRelease(v128);
          *(DerivedStorage + 488) = 0;
        }
      }

      if (v118)
      {
        goto LABEL_105;
      }

      v78 = fpfs_PlayQueueCallForEachItem(a1, fpfsi_updateNeroChange, 0);
      if (!v78)
      {
        if (*(DerivedStorage + 462))
        {
          fpfs_RTCReportingSetSendingVisualsToNero(DerivedStorage);
        }

        goto LABEL_105;
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF169E8, 4294954436, "<<<< FigStreamPlayer >>>>", 65453, v5);
    }

    goto LABEL_145;
  }

  if (CFEqual(a3, @"NeroDisplaySize"))
  {
    if (!*cf || (v120 = CFDictionaryGetTypeID(), v120 != CFGetTypeID(*cf)))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF169E8, 4294954436, "<<<< FigStreamPlayer >>>>", 65490, v5);
      goto LABEL_145;
    }

    size = *MEMORY[0x1E695F060];
    if (!CGSizeMakeWithDictionaryRepresentation(*cf, &size))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF169E8, 4294954436, "<<<< FigStreamPlayer >>>>", 65487, v5);
      goto LABEL_145;
    }

    if (size.width == *(DerivedStorage + 464) && size.height == *(DerivedStorage + 472))
    {
      goto LABEL_105;
    }

    *(DerivedStorage + 464) = size;
    if (!*(DerivedStorage + 462) || !*(DerivedStorage + 463) || !*(DerivedStorage + 80))
    {
      goto LABEL_328;
    }

    v121 = CMBaseObjectGetDerivedStorage();
    v122 = v121[101];
    v123 = v121[102];
    if (v123 && *(v123 + 32))
    {
      width_low = fpfs_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(v123, *(DerivedStorage + 480), *(DerivedStorage + 80), *(DerivedStorage + 464), *(DerivedStorage + 472));
    }

    else
    {
      width_low = 0;
    }

    if (!width_low && v122)
    {
      if (!*(v122 + 32))
      {
LABEL_326:
        v142 = v121[111];
        if (v142)
        {
          fpfs_setDisplaySizeOnOutOfBandSubtitleController(v142, *(DerivedStorage + 464), *(DerivedStorage + 472));
        }

LABEL_328:
        width_low = 0;
        goto LABEL_329;
      }

      width_low = fpfs_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(v122, *(DerivedStorage + 480), *(DerivedStorage + 80), *(DerivedStorage + 464), *(DerivedStorage + 472));
    }

    if (width_low)
    {
LABEL_329:
      fpfs_PlayQueueCallForEachItem(a1, fpfsi_HandleResolutionCapOrDisplaySizeChange, 0);
      goto LABEL_67;
    }

    goto LABEL_326;
  }

  if (CFEqual(a3, @"NeroVideoGravity"))
  {
    if (*cf)
    {
      v124 = CFStringGetTypeID();
      if (v124 != CFGetTypeID(*cf))
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF169E8, 4294954436, "<<<< FigStreamPlayer >>>>", 65523, v5);
        goto LABEL_145;
      }
    }

    if (FigCFEqual())
    {
      goto LABEL_105;
    }

    v131 = *(DerivedStorage + 480);
    v132 = *cf;
    *(DerivedStorage + 480) = *cf;
    if (v132)
    {
      CFRetain(v132);
    }

    if (v131)
    {
      CFRelease(v131);
    }

    if (!*(DerivedStorage + 462) || !*(DerivedStorage + 463) || !*(DerivedStorage + 80))
    {
      goto LABEL_105;
    }

    v133 = CMBaseObjectGetDerivedStorage();
    v134 = v133[104];
    if (v134 && *(v134 + 32))
    {
      width_low = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
    }

    else
    {
      width_low = 0;
    }

    v135 = v133[102];
    if (v135 && *(v135 + 32))
    {
      width_low = fpfs_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(v135, *(DerivedStorage + 480), *(DerivedStorage + 80), *(DerivedStorage + 464), *(DerivedStorage + 472));
    }

    if (!width_low)
    {
      v136 = v133[101];
      if (v136)
      {
        if (!*(v136 + 32))
        {
LABEL_307:
          v137 = v133[111];
          if (!v137)
          {
            goto LABEL_105;
          }

          FigOutOfBandTrackControllerSetProperty(v137, @"NeroVideoGravity", *(DerivedStorage + 480));
LABEL_145:
          width_low = v78;
          goto LABEL_67;
        }

        width_low = fpfs_setDisplaySizeAndItemVideoSizeOnTextRenderPipeline(v136, *(DerivedStorage + 480), *(DerivedStorage + 80), *(DerivedStorage + 464), *(DerivedStorage + 472));
      }
    }

    if (width_low)
    {
      goto LABEL_67;
    }

    goto LABEL_307;
  }

  if (CFEqual(a3, @"AllowVideoRenderingIfSendingVisualsToNero"))
  {
    if (*cf)
    {
      v129 = CFBooleanGetTypeID();
      if (v129 == CFGetTypeID(*cf))
      {
        v130 = *(DerivedStorage + 496);
        if (v130 != CFBooleanGetValue(*cf))
        {
          *(DerivedStorage + 496) = CFBooleanGetValue(*cf);
          if (*(DerivedStorage + 462))
          {
            if (*(DerivedStorage + 80))
            {
              fpfs_handleSetProperty_cold_18();
            }
          }
        }
      }
    }

    goto LABEL_105;
  }

  if (CFEqual(a3, @"AutoSwitchStreamQuality"))
  {
    if (!*cf || (v138 = CFGetTypeID(*cf), v138 != CFBooleanGetTypeID()))
    {
      fpfs_handleSetProperty_cold_19(&size);
      goto LABEL_152;
    }

    *(DerivedStorage + 458) = CFBooleanGetValue(*cf);
    v139 = fpfsi_setPlaybackMonitorAutoSwitchStreamQuality;
    goto LABEL_314;
  }

  if (!CFEqual(a3, @"ClientSuspended"))
  {
    if (CFEqual(a3, @"SystemWillSleep"))
    {
      if (!*cf || (v143 = CFBooleanGetTypeID(), v143 != CFGetTypeID(*cf)))
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF169E8, 4294954436, "<<<< FigStreamPlayer >>>>", 65594, v5);
        goto LABEL_145;
      }

      if (CFBooleanGetValue(*cf))
      {
        fpfs_DoAnyItemsHaveFairPlayEncryptedContent(a1);
        goto LABEL_16;
      }

LABEL_105:
      width_low = 0;
      goto LABEL_67;
    }

    if (CFEqual(a3, @"SystemHasPoweredOn"))
    {
      if (*cf)
      {
        CFBooleanGetTypeID();
        CFGetTypeID(*cf);
      }

      v79 = qword_1EAF169E8;
      v80 = v5;
      v82 = 65609;
      goto LABEL_604;
    }

    if (CFEqual(a3, @"DisplayList"))
    {
      if (!*cf)
      {
        shouldApplyResolutionCapForBuiltinDisplay = fpfs_shouldApplyResolutionCapForBuiltinDisplay(a1);
        Copy = 0;
        v149 = *(DerivedStorage + 728);
        *(DerivedStorage + 728) = 0;
        v151 = 1;
        goto LABEL_368;
      }

      v144 = CFArrayGetTypeID();
      if (v144 == CFGetTypeID(*cf))
      {
        v145 = FigGetAllocatorForMedia();
        Copy = CFArrayCreateCopy(v145, *cf);
        if (!Copy)
        {
          width_low = 4294954510;
          goto LABEL_67;
        }

        shouldApplyResolutionCapForBuiltinDisplay = fpfs_shouldApplyResolutionCapForBuiltinDisplay(a1);
        v149 = *(DerivedStorage + 728);
        *(DerivedStorage + 728) = Copy;
        CFRetain(Copy);
        v151 = 0;
LABEL_368:
        if (v149)
        {
          CFRelease(v149);
        }

        if ((v151 & 1) == 0)
        {
          CFRelease(Copy);
        }

        v152 = fpfs_PlayQueueCallForEachItem(a1, fpfsi_updateDisplayListOnCryptors, 0);
        if (v152)
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF169E8, v152, "<<<< FigStreamPlayer >>>>", 65626, v5);
        }

        else
        {
          v153 = fpfs_PlayQueueCallForEachItem(a1, fpfsi_updateDisplayListForHDCPMonitor, 0);
          if (v153)
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF169E8, v153, "<<<< FigStreamPlayer >>>>", 65629, v5);
          }

          else
          {
            v154 = fpfs_PlayQueueCallForEachItem(a1, fpfsi_updateDisplayListForVideoRangeMonitors, 0);
            if (v154)
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF169E8, v154, "<<<< FigStreamPlayer >>>>", 65632, v5);
            }

            else
            {
              if (shouldApplyResolutionCapForBuiltinDisplay == fpfs_shouldApplyResolutionCapForBuiltinDisplay(a1))
              {
                goto LABEL_105;
              }

              v155 = fpfs_PlayQueueCallForEachItem(a1, fpfsi_HandleResolutionCapOrDisplaySizeChange, 0);
              if (!v155)
              {
                goto LABEL_105;
              }

              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF169E8, v155, "<<<< FigStreamPlayer >>>>", 65638, v5);
            }
          }
        }

        goto LABEL_145;
      }

      v79 = qword_1EAF169E8;
      v80 = v5;
      v82 = 65643;
LABEL_528:
      v81 = 4294954516;
      goto LABEL_144;
    }

    if (CFEqual(a3, @"OverrideDisplaySupportedVideoRange"))
    {
      if (*cf && (v147 = CFNumberGetTypeID(), v147 == CFGetTypeID(*cf)))
      {
        LODWORD(size.width) = 0;
        CFNumberGetValue(*cf, kCFNumberSInt32Type, &size);
        if (LODWORD(size.width) < 6)
        {
          *(DerivedStorage + 736) = LODWORD(size.width);
          v139 = fpfsi_setOverrideDisplaysSupportedVideoRangeForEachItem;
LABEL_314:
          v65 = v139;
          v67 = a1;
          v66 = 0;
          goto LABEL_96;
        }

        v79 = qword_1EAF169E8;
        v80 = v5;
        v82 = 65654;
      }

      else
      {
        v79 = qword_1EAF169E8;
        v80 = v5;
        v82 = 65662;
      }

      goto LABEL_528;
    }

    if (CFEqual(a3, @"MediaSelectionCriteria"))
    {
      if (*cf)
      {
        v150 = CFDictionaryGetTypeID();
        if (v150 != CFGetTypeID(*cf))
        {
          v79 = qword_1EAF169E8;
          v80 = v5;
          v82 = 65674;
          goto LABEL_528;
        }
      }

      if (FigCFEqual())
      {
        goto LABEL_397;
      }

      v157 = *(DerivedStorage + 744);
      v158 = *cf;
      *(DerivedStorage + 744) = *cf;
      if (!v158)
      {
        goto LABEL_385;
      }

      goto LABEL_384;
    }

    if (CFEqual(a3, @"LegibleFallbackMediaSelectionCriteria"))
    {
      if (*cf)
      {
        v156 = CFDictionaryGetTypeID();
        if (v156 != CFGetTypeID(*cf))
        {
          v79 = qword_1EAF169E8;
          v80 = v5;
          v82 = 65685;
          goto LABEL_528;
        }
      }

      if (FigCFEqual())
      {
        goto LABEL_397;
      }

      v157 = *(DerivedStorage + 752);
      v158 = *cf;
      *(DerivedStorage + 752) = *cf;
      if (!v158)
      {
        goto LABEL_385;
      }

LABEL_384:
      CFRetain(v158);
LABEL_385:
      if (v157)
      {
        CFRelease(v157);
      }

LABEL_397:
      v162 = a1;
LABEL_405:
      v166 = 0;
      goto LABEL_425;
    }

    if (CFEqual(a3, @"AllowsLegibleFallbackMediaSelectionCriteriaForAllAudibleMediaSelections"))
    {
      if (!*cf || (v159 = CFGetTypeID(*cf), v159 != CFBooleanGetTypeID()))
      {
        v79 = qword_1EAF169E8;
        v80 = v5;
        v82 = 65698;
        goto LABEL_528;
      }

      v160 = *(DerivedStorage + 760) != 0;
      v161 = CFBooleanGetValue(*cf);
      *(DerivedStorage + 760) = v161;
      if (v161 == v160)
      {
        goto LABEL_105;
      }

      goto LABEL_397;
    }

    if (CFEqual(a3, @"AppliesMediaSelectionCriteriaAutomatically"))
    {
      if (!*cf || (v163 = CFGetTypeID(*cf), v163 != CFBooleanGetTypeID()))
      {
        v79 = qword_1EAF169E8;
        v80 = v5;
        v82 = 65711;
        goto LABEL_528;
      }

      v164 = *(DerivedStorage + 761);
      v165 = CFBooleanGetValue(*cf);
      width_low = 0;
      *(DerivedStorage + 761) = v165;
      if (!v165 || v164)
      {
        goto LABEL_67;
      }

      v162 = a1;
      goto LABEL_405;
    }

    if (CFEqual(a3, @"PlayerCoordinationMediaSelectionCriteria"))
    {
      if (*cf)
      {
        v167 = CFDictionaryGetTypeID();
        if (v167 != CFGetTypeID(*cf))
        {
          v79 = qword_1EAF169E8;
          v80 = v5;
          v82 = 65724;
          goto LABEL_528;
        }
      }

      if (FigCFEqual())
      {
        goto LABEL_105;
      }

      v174 = *(DerivedStorage + 768);
      v175 = *cf;
      *(DerivedStorage + 768) = *cf;
      if (v175)
      {
        CFRetain(v175);
      }

      if (v174)
      {
        CFRelease(v174);
      }

      v162 = a1;
      v166 = 1;
LABEL_425:
      fpfs_applyAutoSelectionCriteria(v162, v166);
      goto LABEL_16;
    }

    if (CFEqual(a3, @"MinRateForAudioPlayback"))
    {
      if (!*cf)
      {
        v169 = *(DerivedStorage + 776);
        v170 = *(DerivedStorage + 784);
        *(DerivedStorage + 776) = 0;
        goto LABEL_442;
      }

      v168 = CFNumberGetTypeID();
      if (v168 == CFGetTypeID(*cf))
      {
        v169 = *(DerivedStorage + 776);
        v170 = *(DerivedStorage + 784);
        v171 = CFNumberGetTypeID();
        if (v171 == CFGetTypeID(*cf))
        {
          *(DerivedStorage + 776) = 1;
          v172 = *cf;
          v173 = (DerivedStorage + 780);
LABEL_432:
          CFNumberGetValue(v172, kCFNumberFloat32Type, v173);
          goto LABEL_442;
        }

        goto LABEL_442;
      }

      v79 = qword_1EAF169E8;
      v80 = v5;
      v82 = 65747;
      goto LABEL_604;
    }

    if (CFEqual(a3, @"MaxRateForAudioPlayback"))
    {
      if (!*cf)
      {
        v169 = *(DerivedStorage + 776);
        v170 = *(DerivedStorage + 784);
        *(DerivedStorage + 777) = 0;
        goto LABEL_442;
      }

      v176 = CFNumberGetTypeID();
      if (v176 == CFGetTypeID(*cf))
      {
        v169 = *(DerivedStorage + 776);
        v170 = *(DerivedStorage + 784);
        v177 = CFNumberGetTypeID();
        if (v177 == CFGetTypeID(*cf))
        {
          *(DerivedStorage + 777) = 1;
          v172 = *cf;
          v173 = (DerivedStorage + 784);
          goto LABEL_432;
        }

LABEL_442:
        fpfs_handlePlayerAudibleRateRangeChangeIfNecessary(a1, v169, v170);
        goto LABEL_16;
      }

      v79 = qword_1EAF169E8;
      v80 = v5;
      v82 = 65771;
LABEL_604:
      v81 = 4294954436;
      goto LABEL_144;
    }

    if (CFEqual(a3, @"AllowPixelBufferPoolSharing"))
    {
      if (*cf)
      {
        v178 = CFGetTypeID(*cf);
        if (v178 == CFBooleanGetTypeID() || (v179 = CFGetTypeID(*cf), v179 == CFNumberGetTypeID()))
        {
          width_low = *(DerivedStorage + 680);
          v180 = *cf;
          *(DerivedStorage + 680) = *cf;
          CFRetain(v180);
          if (!width_low)
          {
            goto LABEL_67;
          }

          CFRelease(width_low);
          goto LABEL_105;
        }
      }

      fpfs_handleSetProperty_cold_20(&size);
      goto LABEL_152;
    }

    if (CFEqual(a3, @"AllowOutOfBandTextTrackRendering"))
    {
      if (!*cf || (v181 = CFGetTypeID(*cf), v181 != CFBooleanGetTypeID()))
      {
        v79 = qword_1EAF169E8;
        v80 = v5;
        v82 = 65792;
        goto LABEL_604;
      }

      v182 = CFBooleanGetValue(*cf);
      if (v182 == *(DerivedStorage + 788))
      {
        goto LABEL_105;
      }

      *(DerivedStorage + 788) = v182;
      goto LABEL_565;
    }

    if (CFEqual(a3, @"MultichannelAudioStrategy"))
    {
      if (*cf)
      {
        v183 = CFStringGetTypeID();
        if (v183 == CFGetTypeID(*cf))
        {
          if (!FigCFEqual() && (CFEqual(*cf, @"MatchMultichannelTrackPreferenceToAudioDevice") || CFEqual(*cf, @"PreferAC3ViaExclusivePassthrough") || CFEqual(*cf, @"PreferExclusivePassthrough") || CFEqual(*cf, @"PreferStereo")))
          {
            fpfs_setMultiAudioChannelStrategy(a1, *cf);
            goto LABEL_16;
          }

          goto LABEL_105;
        }
      }

      v79 = qword_1EAF169E8;
      v80 = v5;
      v82 = 65811;
      goto LABEL_604;
    }

    if (CFEqual(a3, @"BandwidthCap"))
    {
      v184 = *cf;
      if (*cf)
      {
        v185 = CFNumberGetTypeID();
        if (v185 != CFGetTypeID(*cf))
        {
          v79 = qword_1EAF169E8;
          v80 = v5;
          v82 = 65827;
          goto LABEL_528;
        }

        LODWORD(size.width) = 0;
        CFNumberGetValue(*cf, kCFNumberSInt32Type, &size);
        v184 = LODWORD(size.width);
      }

      else
      {
        LODWORD(size.width) = 0;
      }

      *(DerivedStorage + 812) = v184;
    }

    else if (CFEqual(a3, @"PreferredMaximumBufferDuration"))
    {
      v186 = *cf;
      if (*cf)
      {
        v187 = CFNumberGetTypeID();
        if (v187 != CFGetTypeID(*cf))
        {
          v79 = qword_1EAF169E8;
          v80 = v5;
          v82 = 65847;
          goto LABEL_528;
        }

        LODWORD(size.width) = 0;
        CFNumberGetValue(*cf, kCFNumberSInt32Type, &size);
        v186 = LODWORD(size.width);
        if ((LODWORD(size.width) & 0x80000000) != 0)
        {
          v79 = qword_1EAF169E8;
          v80 = v5;
          v82 = 65843;
          goto LABEL_528;
        }
      }

      else
      {
        LODWORD(size.width) = 0;
      }

      *(DerivedStorage + 816) = v186;
    }

    else
    {
      if (!CFEqual(a3, @"MaximumTrailingBufferDuration"))
      {
        if (CFEqual(a3, @"ReleaseResourcesWhenPaused"))
        {
          fpfs_SetReleaseResourcesWhenPaused(a1, *cf == *MEMORY[0x1E695E4D0]);
          goto LABEL_66;
        }

        if (CFEqual(a3, @"ResourceConservationLevelWhenPaused"))
        {
          if (*cf)
          {
            v189 = CFNumberGetTypeID();
            if (v189 != CFGetTypeID(*cf))
            {
              v79 = qword_1EAF169E8;
              v80 = v5;
              v82 = 65883;
              goto LABEL_528;
            }

            LODWORD(size.width) = 0;
            CFNumberGetValue(*cf, kCFNumberSInt32Type, &size);
          }

          else
          {
            LODWORD(size.width) = 0;
          }

          v52 = fpfs_SetResourceConservationLevelWhenPaused();
          goto LABEL_66;
        }

        if (CFEqual(a3, @"NetworkResourcePriority"))
        {
          if (*cf)
          {
            v190 = CFGetTypeID(*cf);
            if (v190 == CFNumberGetTypeID())
            {
              fpfs_handleSetProperty_cold_21(cf);
              goto LABEL_105;
            }
          }

          v79 = qword_1EAF169E8;
          v80 = v5;
          v82 = 65895;
          goto LABEL_528;
        }

        if (CFEqual(a3, @"PlayerRole"))
        {
          if (*cf)
          {
            if (CFEqual(*cf, @"Scanning"))
            {
              v192 = a1;
              v193 = 1;
            }

            else
            {
              if (!CFEqual(*cf, @"PIP"))
              {
                goto LABEL_105;
              }

              v192 = a1;
              v193 = 2;
            }
          }

          else
          {
            v192 = a1;
            v193 = 0;
          }

          v52 = fpfs_SetPlayerRole(v192, v193);
          goto LABEL_66;
        }

        if (CFEqual(a3, @"LimitsBandwidthForCellularAccess"))
        {
          v194 = *cf;
          if (*cf)
          {
            v195 = CFBooleanGetTypeID();
            if (v195 != CFGetTypeID(*cf))
            {
              v79 = qword_1EAF169E8;
              v80 = v5;
              v82 = 65923;
              goto LABEL_528;
            }

            v194 = *cf;
          }

          width_low = 0;
          *(DerivedStorage + 832) = v194 != *MEMORY[0x1E695E4C0];
          goto LABEL_67;
        }

        v196 = CFEqual(a3, @"BufferedAirPlayOutput");
        if (v196)
        {
          v198 = *cf;
          if (*cf)
          {
            v199 = FigBufferedAirPlayOutputGetTypeID(v196, v197);
            if (v199 != CFGetTypeID(*cf))
            {
              v79 = qword_1EAF169E8;
              v80 = v5;
              v82 = 65956;
              goto LABEL_604;
            }

            v198 = *cf;
          }

          if (*(DerivedStorage + 504) == v198)
          {
            goto LABEL_105;
          }

          v200 = CMBaseObjectGetDerivedStorage();
          if (*(CMBaseObjectGetDerivedStorage() + 504))
          {
            CMNotificationCenterGetDefaultLocalCenter();
            FigNotificationCenterRemoveWeakListener();
          }

          fpfs_PlayQueueCallForEachItem(a1, fpfsi_ClearCachedAudioRenderChains, 0);
          fpfs_ResetAudioHardwareFormat(a1);
          v201 = *(DerivedStorage + 504);
          v202 = *cf;
          *(DerivedStorage + 504) = *cf;
          if (v202)
          {
            CFRetain(v202);
          }

          if (v201)
          {
            CFRelease(v201);
          }

          if (v200)
          {
            fpfs_handleSetProperty_cold_22(DerivedStorage + 504, v200);
          }

          if (*(CMBaseObjectGetDerivedStorage() + 504))
          {
            CMNotificationCenterGetDefaultLocalCenter();
            FigNotificationCenterAddWeakListener();
          }

          LOBYTE(size.width) = 1;
          v71 = fpfs_handleAvailableAudioFormatChange_Apply;
          v73 = &size;
          v72 = a1;
          goto LABEL_111;
        }

        if (CFEqual(a3, @"AutomaticallyWaitsToMinimizeStalling"))
        {
          if (*cf)
          {
            v203 = CFBooleanGetTypeID();
            if (v203 == CFGetTypeID(*cf))
            {
              v204 = CMBaseObjectGetDerivedStorage();
              v205 = CFBooleanGetValue(*cf);
              *(DerivedStorage + 160) = v205;
              if (v204)
              {
                FigReportingAgentStatsSetIntValueWithOptions(*(v204 + 2568));
                v205 = *(DerivedStorage + 160);
              }

              if (!v205 && *(DerivedStorage + 80))
              {
                fpfs_CheckPrebufferedLevels();
              }

              goto LABEL_105;
            }
          }

          v79 = qword_1EAF169E8;
          v80 = v5;
          v82 = 65973;
          goto LABEL_604;
        }

        if (CFEqual(a3, @"CaptionPlaybackStrategy"))
        {
          if (*cf && (v206 = CFStringGetTypeID(), v206 == CFGetTypeID(*cf)))
          {
            if (CFEqual(*cf, @"CoreTextSubtitleRenderer"))
            {
              width_low = 0;
              *(DerivedStorage + 461) = 1;
              goto LABEL_67;
            }

            if (CFEqual(*cf, @"CaptionDisplayService"))
            {
              width_low = 0;
              *(DerivedStorage + 461) = 0;
              goto LABEL_67;
            }

            v79 = qword_1EAF169E8;
            v80 = v5;
            v82 = 66012;
          }

          else
          {
            v79 = qword_1EAF169E8;
            v80 = v5;
            v82 = 66014;
          }

          goto LABEL_604;
        }

        if (CFEqual(a3, @"CaptionPipelineStrategy"))
        {
          if (*cf && (v207 = CFStringGetTypeID(), v207 == CFGetTypeID(*cf)))
          {
            if (CFEqual(*cf, @"CFAttributedStrings"))
            {
              width_low = 0;
              *(DerivedStorage + 460) = 1;
              goto LABEL_67;
            }

            if (CFEqual(*cf, @"FigCaptions"))
            {
              width_low = 0;
              *(DerivedStorage + 460) = 0;
              goto LABEL_67;
            }

            v79 = qword_1EAF169E8;
            v80 = v5;
            v82 = 66033;
          }

          else
          {
            v79 = qword_1EAF169E8;
            v80 = v5;
            v82 = 66035;
          }

          goto LABEL_604;
        }

        if (CFEqual(a3, @"AutomaticallyResumesRenderingAfterConfigurationChange"))
        {
          if (*cf)
          {
            v208 = CFGetTypeID(*cf);
            if (v208 == CFBooleanGetTypeID())
            {
              width_low = 0;
              *(DerivedStorage + 624) = *cf == *MEMORY[0x1E695E4D0];
              goto LABEL_67;
            }
          }

          v79 = qword_1EAF169E8;
          v80 = v5;
          v82 = 66044;
          goto LABEL_604;
        }

        if (!CFEqual(a3, @"SuppressAudioRendering"))
        {
          if (!CFEqual(a3, @"IgnoreAudioDeviceLatencyInStartupSync"))
          {
            if (CFEqual(a3, @"VideoTargetArray"))
            {
              if (*cf)
              {
                v239 = CFGetTypeID(*cf);
                if (v239 != CFArrayGetTypeID())
                {
                  fpfs_handleSetProperty_cold_23(&size);
                  goto LABEL_152;
                }

                v221 = *cf;
              }

              else
              {
                v221 = 0;
              }

              fpfs_setVideoTargetArray(a1, v221, v214, v215, v216, v217, v218, v219, v240, v241, v242, SBYTE2(v242), BYTE3(v242), SHIDWORD(v242), *type, *&v244.origin.x, *&v244.origin.y, *&v244.size.width, *&v244.size.height, v245, SHIDWORD(v245), *cf, *&cf[16], *&rect_16, v248, v249, v250, v251, *&size.width, *&size.height, v253, *(&v253 + 1), v254, *(&v254 + 1), v255, *(&v255 + 1), v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274);
              goto LABEL_66;
            }

            if (CFEqual(a3, @"ItemsToPrebuffer"))
            {
              if (!*cf)
              {
                fpfs_RemoveFromPrebufferArrayGuts();
                v238 = *(DerivedStorage + 976);
                if (v238)
                {
                  CFRelease(v238);
                  width_low = 0;
                  *(DerivedStorage + 976) = 0;
                  goto LABEL_67;
                }

                goto LABEL_105;
              }

              v220 = CFGetTypeID(*cf);
              if (v220 == CFArrayGetTypeID())
              {
                v224 = CFArrayGetCount(*cf);
                if (v224 < 1)
                {
LABEL_592:
                  v236 = *(DerivedStorage + 976);
                  if (v236)
                  {
                    fpfs_handleSetProperty_cold_26(v236, (DerivedStorage + 976), a1, cf);
                  }

                  if (*cf)
                  {
                    v237 = FigGetAllocatorForMedia();
                    *(DerivedStorage + 976) = CFArrayCreateMutableCopy(v237, 0, *cf);
                  }

                  fpfs_CheckItemsPrebuffering(a1, v225, v226, v227, v228, v229, v230, v231, v240, v241, v242, *type, *&v244.origin, SLODWORD(v244.size.width), SWORD2(v244.size.width), SBYTE6(v244.size.width), HIBYTE(v244.size.width), SLODWORD(v244.size.height), SWORD2(v244.size.height), SBYTE6(v244.size.height), SHIBYTE(v244.size.height), v245, SHIDWORD(v245), *cf, *&cf[4], *&cf[8], *&cf[16], *&rect_16.width, SLOWORD(rect_16.height), v248, v249, v250, v251, SLOBYTE(size.width), *&size.height, v253, *(&v253 + 1), v254, *(&v254 + 1), v255, *(&v255 + 1), v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277);
                  goto LABEL_16;
                }

                v232 = v224;
                v233 = 0;
                while (1)
                {
                  ValueAtIndex = FigCFArrayGetValueAtIndex();
                  if (!fpfs_CheckItem(a1, ValueAtIndex))
                  {
                    fpfs_handleSetProperty_cold_25(&size);
                    goto LABEL_152;
                  }

                  LastIndexOfValue = FigCFArrayGetLastIndexOfValue();
                  if (LastIndexOfValue != FigCFArrayGetFirstIndexOfValue())
                  {
                    break;
                  }

                  if (v232 == ++v233)
                  {
                    goto LABEL_592;
                  }
                }

                fpfs_handleSetProperty_cold_24(&size);
                goto LABEL_152;
              }

              v79 = qword_1EAF169E8;
              v80 = v5;
              v82 = 66141;
            }

            else
            {
              if (!CFEqual(a3, @"SupportsNetworkArbitration"))
              {
                width_low = 4294954512;
                goto LABEL_67;
              }

              if (*cf)
              {
                v222 = CFGetTypeID(*cf);
                if (v222 == CFBooleanGetTypeID())
                {
                  size.width = 0.0;
                  v223 = *cf == *MEMORY[0x1E695E4D0];
                  FigPlayerResourceArbiterGetGlobalSingleton(&size);
                  FigPlayerResourceArbiterSetSupportsNetworkArbitration(*&size.width, *(DerivedStorage + 928), 0, v223);
                  goto LABEL_105;
                }
              }

              v79 = qword_1EAF169E8;
              v80 = v5;
              v82 = 66155;
            }

            goto LABEL_604;
          }

          if (!*cf || (v212 = CFGetTypeID(*cf), v212 != CFBooleanGetTypeID()))
          {
            v79 = qword_1EAF169E8;
            v80 = v5;
            v82 = 66091;
            goto LABEL_604;
          }

          v213 = *cf == *MEMORY[0x1E695E4D0];
          if (*(DerivedStorage + 524) == v213)
          {
            goto LABEL_105;
          }

          *&size.width = @"IgnoreAudioDeviceLatencyInStartupSync";
          size.height = *cf;
          fpfs_PlayQueueCallForEachItem(a1, fpfsi_setPropertyOnAllAudioRenderPipelines, &size);
          *(DerivedStorage + 524) = v213;
          v211 = *(DerivedStorage + 80);
LABEL_573:
          fpfs_stopResetDisturbReprepareAndResume(a1, v211, 0);
          goto LABEL_16;
        }

        if (!*cf || (v209 = CFGetTypeID(*cf), v209 != CFBooleanGetTypeID()))
        {
          v79 = qword_1EAF169E8;
          v80 = v5;
          v82 = 66072;
          goto LABEL_604;
        }

        v210 = *cf == *MEMORY[0x1E695E4D0];
        if (*(DerivedStorage + 523) == v210)
        {
          goto LABEL_105;
        }

        *(DerivedStorage + 523) = v210;
LABEL_565:
        v211 = *(DerivedStorage + 80);
        goto LABEL_573;
      }

      if (*cf)
      {
        v188 = CFNumberGetTypeID();
        if (v188 != CFGetTypeID(*cf))
        {
          v79 = qword_1EAF169E8;
          v80 = v5;
          v82 = 65865;
          goto LABEL_528;
        }

        LODWORD(size.width) = 0;
        CFNumberGetValue(*cf, kCFNumberSInt32Type, &size);
        v191 = LODWORD(size.width);
      }

      else
      {
        v191 = -1;
        LODWORD(size.width) = -1;
      }

      *(DerivedStorage + 820) = v191;
    }

    fpfs_UpdatePlayerOverrideForAllItems();
    goto LABEL_145;
  }

  if (!*cf || (v140 = CFBooleanGetTypeID(), v140 != CFGetTypeID(*cf)))
  {
    fpfs_handleSetProperty_cold_36(&size);
    goto LABEL_152;
  }

  *(DerivedStorage + 51) = CFBooleanGetValue(*cf);
  fpfs_UnlockAndPostNotificationsWithCaller(a1);
  if (*(DerivedStorage + 51))
  {
    v141 = 0;
  }

  else if (*(DerivedStorage + 48) && *(DerivedStorage + 32) != 2)
  {
    v141 = 1;
  }

  else
  {
    v141 = 2;
  }

  return fpfs_updatePlayerActiveState(a1, v141);
}

uint64_t fpfs_setClientVideoLayerArray(const void *a1, const __CFArray *a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 80);
  cf[0] = 0;
  *(DerivedStorage + 456) = 1;
  if (FigCFEqual())
  {
    v7 = 0;
    v8 = 0;
    Mutable = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_3;
  }

  v48 = v6;
  if (a2)
  {
    Count = CFArrayGetCount(a2);
  }

  else
  {
    Count = 0;
  }

  v16 = *(DerivedStorage + 384);
  if (v16)
  {
    v17 = CFArrayGetCount(v16);
  }

  else
  {
    v17 = 0;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v19 = FigGetAllocatorForMedia();
    v8 = CFArrayCreateMutable(v19, 0, MEMORY[0x1E695E9C0]);
    if (v8)
    {
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
          v22 = *(DerivedStorage + 384);
          if (!v22 || (v85.location = 0, v85.length = v17, v23 = CFArrayContainsValue(v22, v85, ValueAtIndex), v24 = Mutable, !v23))
          {
            v24 = v8;
          }

          CFArrayAppendValue(v24, ValueAtIndex);
        }
      }

      v86.length = CFArrayGetCount(v8);
      v86.location = 0;
      CFArrayAppendArray(Mutable, v8, v86);
      fpfs_ensureTransaction(a1, cf);
      v7 = CFRetain(a1);
      fpfs_disassociatePlayerVideoLayer(a1, 1);
      *v49 = *(DerivedStorage + 392);
      *&v50 = *(DerivedStorage + 384);
      *(DerivedStorage + 392) = 0;
      v25 = CFRetain(Mutable);
      *(DerivedStorage + 384) = v25;
      if (v25 && CFArrayGetCount(v25) >= 1)
      {
        *v47 = v4;
        v33 = FigGetAllocatorForMedia();
        v10 = CFArrayCreateMutable(v33, Count, MEMORY[0x1E695E9C0]);
        if (Count >= 1)
        {
          v34 = Count;
          while (1)
          {
            v35 = [[FigVideoLayer alloc] initWithDeferredTransaction:*(DerivedStorage + 880)];
            if (!v35)
            {
              break;
            }

            v36 = v35;
            if (*(DerivedStorage + 400))
            {
              FBLSupportAppendDeferredTransactionChangeToSetAllowsDisplayCompositing(*(DerivedStorage + 880), v35, 0, "fpfs_setClientVideoLayerArray");
            }

            CFArrayAppendValue(v10, v36);
            if (!--v34)
            {
              goto LABEL_34;
            }
          }

          v13 = 4294954434;
          v4 = *v47;
          goto LABEL_50;
        }

LABEL_34:
        FPSupport_AppendDeferredTransactionChangeToRelease(*(DerivedStorage + 880), *(DerivedStorage + 392));
        if (v10)
        {
          *(DerivedStorage + 392) = CFRetain(v10);
          CFRelease(v10);
        }

        else
        {
          *(DerivedStorage + 392) = 0;
        }

        v4 = *v47;
        v37 = FigCFCopyCompactDescription();
        v38 = FigCFCopyCompactDescription();
        v39 = v38;
        if (dword_1EAF169F0)
        {
          v46 = v38;
          *v47 = v37;
          HIDWORD(v50) = 0;
          BYTE11(v50) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v39 = v46;
        }

        if (v37)
        {
          CFRelease(v37);
        }

        if (v39)
        {
          CFRelease(v39);
        }

        FPSupport_AppendDeferredTransactionChangeForAttachingFigVideoLayersToClientLayers();
      }

      v40 = *(DerivedStorage + 80);
      if (v40)
      {
        fpfsi_removeLayerSync(v40);
      }

      if (Count == v17 || (v58 = 0, TypeID = CAImageQueueGetTypeID(), v57 = Count - v17, v41 = fpfs_PlayQueueCallForEachItem(a1, fpfsi_handleVideoOutputsChanged, &TypeID), !v41))
      {
        v10 = v48;
        v12 = *v49;
        if (v48)
        {
          fpfsi_assignCAImageQueuesToLayers(v48, v26, v27, v28, v29, v30, v31, v32, v43, v44, os_log_and_send_and_compose_flags_and_os_log_type, v46, v47[0], v47[1], HIBYTE(v47[1]), *&v47[2], v48, v49[0], v49[1], v50, cf[0], cf[1], cf[2], v52, v53, v54[0], v54[1], v55, TypeID, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, vars0);
          v13 = v42;
          if (!v42)
          {
            fpfsi_ensureLayerSyncForItem(v10);
          }

          v10 = 0;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_53;
      }

      v13 = v41;
      v10 = 0;
LABEL_50:
      v12 = *v49;
LABEL_53:
      v11 = v50;
      goto LABEL_3;
    }

    fpfs_setClientVideoLayerArray_cold_1(&TypeID);
    v7 = 0;
  }

  else
  {
    fpfs_setClientVideoLayerArray_cold_2(&TypeID);
    v7 = 0;
    v8 = 0;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = TypeID;
LABEL_3:
  FPSupport_AppendDeferredTransactionChangeToRelease(*(DerivedStorage + 880), v11);
  FPSupport_AppendDeferredTransactionChangeToRelease(*(DerivedStorage + 880), v12);
  FPSupport_AppendDeferredTransactionChangeToRelease(*(DerivedStorage + 880), v10);
  fpfs_commitTransaction(a1, cf[0]);
  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  objc_autoreleasePoolPop(v4);
  return v13;
}

uint64_t fpfs_setVolume(const void *a1, const __CFNumber *a2)
{
  keys[1] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Next = fpfs_getNext(DerivedStorage, 0);
  valuePtr = 0.0;
  if (a2 && (v6 = Next, v7 = CFGetTypeID(a2), v7 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(a2, kCFNumberFloat32Type, &valuePtr);
    if (valuePtr == *(DerivedStorage + 104))
    {
      return 0;
    }

    else
    {
      values = a2;
      keys[0] = @"AVController_Volume";
      AllocatorForMedia = FigGetAllocatorForMedia();
      v9 = CFDictionaryCreate(AllocatorForMedia, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(DerivedStorage + 104) = valuePtr;
      if (v6 && (v10 = *(CMBaseObjectGetDerivedStorage() + 1024)) != 0)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          v13 = *(v10 + 112);
          if (v13)
          {
            if (*(v10 + 48) == 1936684398 && v13 != v11)
            {
              v12 = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
              v11 = *(v10 + 112);
            }
          }

          v10 = *(v10 + 24);
        }

        while (v10);
      }

      else
      {
        v12 = 0;
      }

      fpfs_EnqueueNotification(a1, @"VolumeDidChange", a1, v9);
      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

  else
  {
    fpfs_setVolume_cold_1(keys);
    return LODWORD(keys[0]);
  }

  return v12;
}

const __CFArray *fpfs_setEQPreset(uint64_t a1, int a2)
{
  *(CMBaseObjectGetDerivedStorage() + 172) = a2;

  return fpfs_applyEQPreset(a1, 0, 0);
}

void fpfs_setCachedRouteInfo(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  v14 = 0;
  cf = 0;
  v3 = *(DerivedStorage + 536);
  if (!v3)
  {
    *(DerivedStorage + 568) = 0;
    goto LABEL_14;
  }

  if (FigAudioCodecTypeIsDecodable())
  {
    v4 = *(v2 + 536);
    AllocatorForMedia = FigGetAllocatorForMedia();
    if (v4)
    {
      v6 = AllocatorForMedia;
      v7 = *(CMBaseObjectGetVTable() + 16);
      if (v7)
      {
        v8 = *(v7 + 48);
        if (v8)
        {
          if (!v8(v4, *MEMORY[0x1E69B0108], v6, &cf))
          {
            *(v2 + 568) = cf == *MEMORY[0x1E695E4D0];
          }
        }
      }
    }
  }

  v9 = *(v2 + 536);
  v10 = FigGetAllocatorForMedia();
  if (v9)
  {
    v11 = v10;
    v12 = *(CMBaseObjectGetVTable() + 16);
    if (v12)
    {
      v13 = *(v12 + 48);
      if (v13)
      {
        if (!v13(v9, *MEMORY[0x1E69AFC28], v11, &v14))
        {
          LOBYTE(v3) = v14 == *MEMORY[0x1E695E4D0];
LABEL_14:
          *(v2 + 569) = v3;
        }
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }
}

uint64_t fpfs_updatePlayerActiveState(void *a1, int a2)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 32) != a2)
  {
    v7 = DerivedStorage;
    v8 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    ++*(v8 + 8);
    if ((a2 - 1) <= 1)
    {
      v9 = *(v7 + 32);
      *(v7 + 32) = a2;
      *(v7 + 40) = FigGetUpTimeNanoseconds();
      updated = fpfsi_UpdateResourceSpecifierOnResourceArbiter(*(v7 + 80));
      if (updated)
      {
        goto LABEL_27;
      }

      if (v9 == 1)
      {
        if (*(v7 + 536))
        {
          v15 = *(v7 + 80);
          if (v15)
          {
            v16 = *(v7 + 544);
            if (v16)
            {
              if (!*(v7 + 504))
              {
                fpfsi_setAudioSessionPreferredAudioHardwareFormat(a1, v15, v16);
                if (FigCFEqual())
                {
                  if (*(v7 + 560))
                  {
                    v17 = *(v7 + 552);
                    if (v17)
                    {
                      updated = FigAudioSessionSetMXSessionProperty(*(v7 + 536), *MEMORY[0x1E69B0260], v17);
                      if (!updated)
                      {
                        if (dword_1EAF169F0)
                        {
                          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                          fig_log_call_emit_and_clean_up_after_send_and_compose();
                        }

                        v5 = 0;
                        *(v7 + 560) = 0;
                        goto LABEL_22;
                      }

                      goto LABEL_27;
                    }
                  }
                }
              }
            }
          }
        }
      }

      else if (!v9)
      {
        fpfs_UpdatePlayerOverrideForAllItems();
        if (!updated)
        {
          if (!*(v7 + 80))
          {
            fpfs_PullNextItem(a1);
          }

          goto LABEL_21;
        }

LABEL_27:
        v5 = updated;
        goto LABEL_22;
      }

LABEL_21:
      v5 = 0;
      goto LABEL_22;
    }

    cf[0] = 0;
    AllocatorForMedia = FigGetAllocatorForMedia();
    FPSupport_CreateSetRateOptions(AllocatorForMedia, 26, cf);
    v12 = cf[0];
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    if (v13)
    {
      v13(a1, v12, 0.0);
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }

    *(v7 + 32) = 0;
    updated = fpfsi_UpdateResourceSpecifierOnResourceArbiter(*(v7 + 80));
    if (!updated)
    {
      fpfs_UpdatePlayerOverrideForAllItems();
      v5 = v14;
      fpfs_releaseTransitionImageQueuesAndSlots(a1);
      fpfs_sendEmptyConfigurationToEachVideoTarget(a1);
      fpfs_ResetAudioHardwareFormat(a1);
LABEL_22:
      fpfs_UnlockAndPostNotificationsWithCaller(a1);
      return v5;
    }

    goto LABEL_27;
  }

  return 0;
}

const __CFArray *fpfs_DoAnyItemsHaveFairPlayEncryptedContent(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = fpfs_getNext(DerivedStorage, 0);
  if (result)
  {
    v3 = result;
    v4 = *MEMORY[0x1E695E4C0];
    v5 = *MEMORY[0x1E695E4D0];
    do
    {
      v12 = v4;
      if (DerivedStorage)
      {
        v6 = CMBaseObjectGetDerivedStorage();
        v7 = v4;
        if (!FigRetainProxyIsInvalidated())
        {
          v7 = v4;
          if (*(v6 + 912))
          {
            AllocatorForMedia = FigGetAllocatorForMedia();
            FigBytePumpGetFigBaseObject();
            v10 = v9;
            v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            v7 = v4;
            if (v11)
            {
              v11(v10, 0x1F0B1F918, AllocatorForMedia, &v12);
              v7 = v12;
            }
          }
        }
      }

      else
      {
        fpfs_DoAnyItemsHaveFairPlayEncryptedContent_cold_1();
        v7 = v4;
      }

      result = fpfs_getNext(DerivedStorage, v3);
      if (v7 == v5)
      {
        break;
      }

      v3 = result;
    }

    while (result);
  }

  return result;
}

uint64_t fpfsi_updateDisplayListOnCryptors(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 1024);
  if (!v3)
  {
    return 0;
  }

  v4 = v2;
  while (1)
  {
    v5 = *(v3 + 400);
    if (!v5)
    {
      goto LABEL_10;
    }

    v6 = *(v4 + 728);
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v7)
    {
      return 4294954514;
    }

    result = v7(v5, @"DisplayList", v6);
    if ((result + 12785) >= 2 && result != 0)
    {
      return result;
    }

LABEL_10:
    v3 = *(v3 + 24);
    if (!v3)
    {
      return 0;
    }
  }
}

void fpfs_handlePlayerAudibleRateRangeChangeIfNecessary(const void *a1, uint64_t a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Next = fpfs_getNext(DerivedStorage, 0);
  v8 = Next;
  v9 = *(DerivedStorage + 776);
  v10 = *(DerivedStorage + 784);
  if (((v9 ^ a2) & 0xFF00) != 0)
  {
    goto LABEL_23;
  }

  v11 = *&a3 != *&v10;
  if (*(&a2 + 1) != *(&v9 + 1))
  {
    v11 = 1;
  }

  if (v9 != a2 || v11)
  {
LABEL_23:
    if (Next)
    {
      CMBaseObjectGetDerivedStorage();
      v13 = *(DerivedStorage + 108);
      if (v13 <= 2.0 && v13 >= 0.0)
      {
        v14 = *(CMBaseObjectGetDerivedStorage() + 1024);
        if (v14)
        {
          while (*(v14 + 48) != 1936684398 || !*(v14 + 112))
          {
            v14 = *(v14 + 24);
            if (!v14)
            {
              return;
            }
          }

          v21 = 0;
          v20 = 0;
          v19 = 0;
          v18 = 0;
          v17 = 0;
          v16 = 0;
          fpfsi_DetermineRateSnapping(v8, &v20);
          v15 = fpfs_ConfigureRatePlan(a2, a3, v20, v21, &v18, *(DerivedStorage + 108), *(DerivedStorage + 108));
          if (v15 != fpfs_ConfigureRatePlan(v9, v10, v20, v21, &v16, *(DerivedStorage + 108), *(DerivedStorage + 108)) || *(&v18 + 1) != *(&v16 + 1) || *&v18 != *&v16 || v19 != v17)
          {
            fpfs_stopResetDisturbReprepareAndResume(a1, *(DerivedStorage + 80), 0);
          }
        }
      }
    }
  }
}

uint64_t fpfs_setMultiAudioChannelStrategy(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 792);
  *(DerivedStorage + 792) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v6 = CFEqual(a2, @"PreferExclusivePassthrough");
  if (v6)
  {
    FPSupport_ReleasePassthroughHelper(v6, v7);
  }

  else if (CFEqual(a2, @"PreferAC3ViaExclusivePassthrough"))
  {
    FPSupport_ReleasePassthroughHelper(1633889587, v8);
  }

  v10 = 0;
  return fpfs_PlayQueueCallForEachItem(a1, fpfs_handleAvailableAudioFormatChange_Apply, &v10);
}

void fpfsi_setMutedApply(uint64_t a1, uint64_t *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(CMBaseObjectGetDerivedStorage() + 522))
  {
    v3 = *(DerivedStorage + 1024);
    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = *(v3 + 112);
        if (v5)
        {
          if (*(v3 + 48) == 1936684398 && v5 != v4)
          {
            fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
            v4 = *(v3 + 112);
          }
        }

        v3 = *(v3 + 24);
      }

      while (v3);
    }
  }
}

uint64_t fpfsi_EnsureVideoModeForPIPPlayer(uint64_t a1, _DWORD *a2)
{
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *a2 == 2;
  if (CelestialShouldLimitHDRConcurrentPlayback() && (v6 = fpfsi_SwitchBetweenHDRAndSDR(a1, v5), v6))
  {
    v7 = v6;
  }

  else
  {
    if (!CelestialShouldLimit4kConcurrentPlayback())
    {
      return 0;
    }

    v7 = fpfsi_SwitchBetween4kAndHD(a1);
    if (!v7)
    {
      return v7;
    }
  }

  fpfs_StopPlayingItemWithOSStatus(DerivedStorage, a1, v7);
  return v7;
}

void fpfs_traceVideoTargetEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  theString = 0;
  v10 = 0;
  *buffer = 1280070990;
  FigVideoTargetGetCMBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    if (!v5(v4, 0x1F0B32A78, *MEMORY[0x1E695E480], &theString) && theString != 0)
    {
      CFStringGetCString(theString, buffer, 10, 0x600u);
    }
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    strncpy(__dst, buffer, 8uLL);
    kdebug_trace();
  }

  if (theString)
  {
    CFRelease(theString);
  }
}

uint64_t fpfs_AddToPlayQueue(void *a1, const void *a2, const void *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a1)
    {
      v9 = (CMBaseObjectGetDerivedStorage() + 888);
    }

    else
    {
      v9 = "";
    }

    strncpy(__dst, v9, 8uLL);
    if (a2)
    {
      v10 = (CMBaseObjectGetDerivedStorage() + 3096);
    }

    else
    {
      v10 = "";
    }

    strncpy(__dst, v10, 8uLL);
    if (a3)
    {
      v11 = (CMBaseObjectGetDerivedStorage() + 3096);
    }

    else
    {
      v11 = "";
    }

    strncpy(__dst, v11, 8uLL);
    kdebug_trace();
  }

  v12 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v12 + 8);
  if (*(DerivedStorage + 52))
  {
    fpfs_AddToPlayQueue_cold_1(__dst);
LABEL_94:
    v49 = __dst[0];
    goto LABEL_76;
  }

  if (!fpfs_CheckItem(a1, a2))
  {
    fpfs_AddToPlayQueue_cold_6(__dst);
    goto LABEL_94;
  }

  if (a3 && !fpfs_CheckItem(a1, a3))
  {
    fpfs_AddToPlayQueue_cold_2(__dst);
    goto LABEL_94;
  }

  v13 = CMBaseObjectGetDerivedStorage();
  if (!CFArrayGetCount(*(DerivedStorage + 72)) && !*(DerivedStorage + 80))
  {
    *(v13 + 3296) = 1;
    *(DerivedStorage + 704) = @"ReasonAddToPlayQueue";
  }

  v14 = *(DerivedStorage + 812);
  v15 = *(v13 + 2412);
  if (v14 >= v15)
  {
    v16 = *(v13 + 2412);
  }

  else
  {
    v16 = *(DerivedStorage + 812);
  }

  if (!v15)
  {
    v16 = *(DerivedStorage + 812);
  }

  if (v14)
  {
    v17 = v16;
  }

  else
  {
    v17 = *(v13 + 2412);
  }

  *(v13 + 2408) = v17;
  v18 = *(DerivedStorage + 816);
  v19 = *(v13 + 2260);
  if (v18 >= v19)
  {
    v20 = *(v13 + 2260);
  }

  else
  {
    v20 = *(DerivedStorage + 816);
  }

  if (!v19)
  {
    v19 = 50;
    v20 = *(DerivedStorage + 816);
  }

  if (v18)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  *(v13 + 2256) = v21;
  v22 = *(DerivedStorage + 820);
  v23 = *(v13 + 2304);
  if (v22 < 0)
  {
    v22 = *(v13 + 2304);
    if (v23 < 0)
    {
      v22 = *(v13 + 2300);
    }
  }

  else if ((v23 & 0x80000000) == 0 && v22 >= *(v13 + 2296))
  {
    v22 = *(v13 + 2296);
  }

  *(v13 + 2296) = v22;
  if (!a3)
  {
    if (!*(v13 + 463))
    {
      CFArrayAppendValue(*(DerivedStorage + 72), a2);
      goto LABEL_54;
    }

    goto LABEL_90;
  }

  v24 = CMBaseObjectGetDerivedStorage();
  if (*(v13 + 463))
  {
LABEL_90:
    fpfs_AddToPlayQueue_cold_5(__dst);
    goto LABEL_94;
  }

  if (!*(v24 + 463))
  {
    fpfs_AddToPlayQueue_cold_4(__dst);
    goto LABEL_94;
  }

  if (*(DerivedStorage + 80) == a3)
  {
    v25 = 0;
  }

  else
  {
    v26 = *(DerivedStorage + 72);
    v56.length = CFArrayGetCount(v26);
    v56.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v26, v56, a3);
    if (FirstIndexOfValue == -1)
    {
      fpfs_AddToPlayQueue_cold_3(__dst);
      goto LABEL_94;
    }

    v25 = FirstIndexOfValue + 1;
    if (FirstIndexOfValue + 1 < CFArrayGetCount(*(DerivedStorage + 72)))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 72), v25);
      fpfs_CancelGaplessAttemptGuts(a1, ValueAtIndex, 1);
    }
  }

  CFArrayInsertValueAtIndex(*(DerivedStorage + 72), v25, a2);
LABEL_54:
  Current = CFAbsoluteTimeGetCurrent();
  v30 = *(v13 + 2568);
  if (v30)
  {
    v31 = Current;
    v32 = *(v13 + 2040);
    v33 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v33)
    {
      v33(v30, @"playerStats", 0x1F0B66538, ((v31 - v32) * 1000.0), 0);
    }
  }

  v34 = *(v13 + 2568);
  if (v34)
  {
    v35 = *(v13 + 3296);
    v36 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v36)
    {
      v36(v34, @"playerStats", 0x1F0B67458, v35, 0);
    }
  }

  if (*(v13 + 2072))
  {
    if (!*(v13 + 2096))
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v38 = *(v13 + 2568);
      if (v38)
      {
        v39 = UpTimeNanoseconds;
        v40 = *(v13 + 2072);
        v41 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v41)
        {
          v41(v38, 0x1F0B64678, 0x1F0B675F8, (v39 - v40) / 0xF4240uLL, 1);
        }
      }
    }
  }

  *(v13 + 463) = 1;
  *(v13 + 469) = 0;
  *(v13 + 530) = 0;
  CFArrayRemoveAllValues(*(v13 + 1920));
  v42 = *(v13 + 1904);
  if (v42)
  {
    CFRelease(v42);
    *(v13 + 1904) = 0;
  }

  v43 = *(v13 + 1912);
  if (v43)
  {
    CFRelease(v43);
    *(v13 + 1912) = 0;
  }

  fpfs_AdvanceToNextItemIfNecessary(a1);
  v44 = *(DerivedStorage + 80);
  if (v44)
  {
    fpfsi_MakeNextItemReadyForInspectionIfItemEndedOrBeyondFwdEnd(v44);
  }

  else
  {
    fpfs_PullNextItem(a1);
  }

  FVTCount = FigStreamingPlayerCombinedVideoDestinationGetFVTCount(*(DerivedStorage + 376));
  v46 = *(v13 + 2568);
  if (v46)
  {
    v47 = FVTCount;
    v48 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v48)
    {
      v48(v46, @"playerStats", 0x1F0B650F8, v47, 0);
    }
  }

  fpfs_PostPlayQueueNotificationIfHungry(a1);
  v49 = 0;
LABEL_76:
  fpfs_UnlockAndPostNotificationsWithCaller(a1);
  if (*v8 == 1)
  {
    if (a1)
    {
      v50 = (CMBaseObjectGetDerivedStorage() + 888);
    }

    else
    {
      v50 = "";
    }

    strncpy(__dst, v50, 8uLL);
    if (a2)
    {
      v51 = (CMBaseObjectGetDerivedStorage() + 3096);
    }

    else
    {
      v51 = "";
    }

    strncpy(__dst, v51, 8uLL);
    if (a3)
    {
      v52 = (CMBaseObjectGetDerivedStorage() + 3096);
    }

    else
    {
      v52 = "";
    }

    strncpy(__dst, v52, 8uLL);
    kdebug_trace();
  }

  return v49;
}

uint64_t fpfs_CopyPlayQueueItem(const void *a1, const void *a2, const __CFArray **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v7 + 8);
  if (!a3)
  {
    fpfs_CopyPlayQueueItem_cold_4(&v12);
    v10 = v12;
    goto LABEL_10;
  }

  if (*(DerivedStorage + 52))
  {
    fpfs_CopyPlayQueueItem_cold_1(&v12);
  }

  else
  {
    if (!a2)
    {
LABEL_6:
      Next = fpfs_getNext(DerivedStorage, a2);
      v9 = Next;
      if (Next)
      {
        CFRetain(Next);
      }

      v10 = 0;
      goto LABEL_9;
    }

    if (fpfs_CheckItem(a1, a2))
    {
      if (*(CMBaseObjectGetDerivedStorage() + 463))
      {
        goto LABEL_6;
      }

      fpfs_CopyPlayQueueItem_cold_2(&v12);
    }

    else
    {
      fpfs_CopyPlayQueueItem_cold_3(&v12);
    }
  }

  v9 = 0;
  v10 = v12;
LABEL_9:
  *a3 = v9;
LABEL_10:
  fpfs_UnlockAndPostNotificationsWithCaller(a1);
  return v10;
}

void fpfs_SetRate(uint64_t a1, float a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  fpfs_SetRateWithOptionsGuts(a1, 0, 1, a2);
}

uint64_t fpfs_GetRate(const void *a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v5 + 8);
  *a2 = *(DerivedStorage + 108);
  fpfs_UnlockAndPostNotificationsWithCaller(a1);
  return 0;
}

uint64_t fpfs_SetRateWithFade(uint64_t a1, __int128 *a2, float a3)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetCMTime();
  fpfs_SetRateWithOptionsGuts(a1, Mutable, 1, a3);
  v8 = v7;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v8;
}

uint64_t fpfs_StartPreroll(const void *a1, int a2, float a3)
{
  v19 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF169F0 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*(DerivedStorage + 52))
  {
    if (a3 == 0.0)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF169E8, 4294954516, "<<<< FigStreamPlayer >>>>", 60872, v3);
      return v9;
    }

    v12 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    ++*(v12 + 8);
    Next = fpfs_getNext(DerivedStorage, 0);
    if (Next)
    {
      v14 = Next;
      v15 = CMBaseObjectGetDerivedStorage();
      if (*(v15 + 840) != 0.0)
      {
        fpfs_StartPreroll_cold_1(v18);
        v10 = v18[0];
        goto LABEL_17;
      }

      v16 = v15;
      if (!*(v15 + 464))
      {
        fpfs_enqueuePrerollWasCancelledNotificationIfNeeded(v14);
        v10 = 0;
        *(v16 + 2224) = a2;
LABEL_17:
        fpfs_UnlockAndPostNotificationsWithCaller(a1);
        return v10;
      }

      *(v15 + 2224) = a2;
      fpfs_enqueuePrerollDidCompleteNotificationIfNeeded(v14);
    }

    else if (dword_1EAF169F0 >= 2)
    {
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v10 = 0;
    goto LABEL_17;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF169E8, 4294954511, "<<<< FigStreamPlayer >>>>", 60869, v3);
  return v9;
}

uint64_t fpfs_ReevaluateRouteConfiguration(const void *a1, uint64_t a2)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v31 = 0;
  if (!a1)
  {
    fpfs_ReevaluateRouteConfiguration_cold_1(cf);
    return LODWORD(cf[0]);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v4 + 8);
  v5 = *(DerivedStorage + 80);
  v6 = FigCFCopyCompactDescription();
  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v6)
  {
    CFRelease(v6);
  }

  fpfs_setCachedRouteInfo(a1);
  if (!*(DerivedStorage + 504))
  {
LABEL_10:
    if (v5)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  FigBufferedAirPlayOutputGetCMBaseObject();
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    goto LABEL_37;
  }

  v12 = v11(v10, @"IsActiveConfigurationInvalid", AllocatorForMedia, &v31);
  if (v12)
  {
    goto LABEL_42;
  }

  if (v31 != *MEMORY[0x1E695E4D0])
  {
    goto LABEL_10;
  }

  if (dword_1EAF169F0)
  {
    v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v28 = *(DerivedStorage + 504);
  v29 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v29)
  {
LABEL_37:
    v26 = 4294954514;
    goto LABEL_38;
  }

  v12 = v29(v28);
  if (!v12)
  {
    fpfs_stopResetDisturbReprepareAndResume(a1, v5, 0);
    if (v5)
    {
LABEL_11:
      v13 = CMBaseObjectGetDerivedStorage();
      LOBYTE(cf[0]) = 0;
      v12 = fpfs_PlayQueueCallForEachItem(a1, fpfs_handleAvailableAudioFormatChange_Apply, cf);
      if (!v12)
      {
        v14 = CMBaseObjectGetDerivedStorage();
        cf[0] = 0;
        v15 = *(v14 + 1024);
        if (v15)
        {
          v16 = 0;
          v17 = *MEMORY[0x1E695E4D0];
          do
          {
            if (*(v15 + 48) == 1936684398)
            {
              v18 = *(v15 + 112);
              if (v18)
              {
                if (*(v18 + 32))
                {
                  v19 = FigGetAllocatorForMedia();
                  FigRenderPipelineGetFigBaseObject();
                  v21 = v20;
                  v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v22)
                  {
                    v22(v21, @"IsPausedForConfigurationChange", v19, cf);
                  }

                  if (cf[0] == v17)
                  {
                    v16 = 1;
                  }

                  if (cf[0])
                  {
                    CFRelease(cf[0]);
                    cf[0] = 0;
                  }
                }
              }
            }

            v15 = *(v15 + 24);
          }

          while (v15);
          if (v16)
          {
            for (i = (CMBaseObjectGetDerivedStorage() + 1024); ; i = (v24 + 24))
            {
              v24 = *i;
              if (*(v24 + 48) == 1936684398)
              {
                v25 = *(v24 + 112);
                if (v25)
                {
                  break;
                }
              }
            }

            fpfsi_restartAudioRendering(a1, v5, v13, *(v25 + 32));
          }
        }

        goto LABEL_30;
      }

      goto LABEL_42;
    }

LABEL_30:
    v26 = 0;
    goto LABEL_38;
  }

LABEL_42:
  v26 = v12;
LABEL_38:
  fpfs_UnlockAndPostNotificationsWithCaller(a1);
  if (v31)
  {
    CFRelease(v31);
  }

  return v26;
}

uint64_t fpfs_AddExternalStartupTask(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v5 + 8);
  if (*(DerivedStorage + 52))
  {
    fpfs_AddExternalStartupTask_cold_1(&v8);
    v6 = v8;
  }

  else
  {
    CFArrayAppendValue(*(DerivedStorage + 944), a2);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    v6 = 0;
  }

  fpfs_UnlockAndPostNotificationsWithCaller(a1);
  return v6;
}

uint64_t fpfs_TransferOwnershipOfPlaybackItemFromPlayer(const void *a1, const void *a2, const void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    fpfs_TransferOwnershipOfPlaybackItemFromPlayer_cold_4(v23);
    return v23[0];
  }

  if (!a1)
  {
    fpfs_TransferOwnershipOfPlaybackItemFromPlayer_cold_3(v23);
    return v23[0];
  }

  if (!a2)
  {
    fpfs_TransferOwnershipOfPlaybackItemFromPlayer_cold_2(v23);
    return v23[0];
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v9 + 8);
  if (*DerivedStorage != a3)
  {
    fpfs_TransferOwnershipOfPlaybackItemFromPlayer_cold_1(v23);
    v21 = v23[0];
LABEL_32:
    fpfs_UnlockAndPostNotificationsWithCaller(a3);
    return v21;
  }

  if (a3 != a1)
  {
    FigStopForwardingMediaServicesProcessDeathNotification();
  }

  if (*(DerivedStorage + 463))
  {
    fpfs_RemoveFromPlayQueueGuts(a3, a2, 1);
  }

  if (*DerivedStorage == a1)
  {
    v21 = 0;
    goto LABEL_32;
  }

  CFSetRemoveValue(*(v7 + 64), a2);
  FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
  if (FirstIndexOfValue != -1)
  {
    CFArrayRemoveValueAtIndex(*(v7 + 976), FirstIndexOfValue);
  }

  v11 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(v11 + 8);
  if (a3 != a1)
  {
    FigStartForwardingMediaServicesProcessDeathNotification();
  }

  FigSimpleMutexLock();
  *DerivedStorage = a1;
  FigSimpleMutexUnlock();
  fpfs_UnlockWithCaller(a3);
  v12 = CMBaseObjectGetDerivedStorage();
  v13 = v12;
  v14 = *(DerivedStorage + 2568);
  if (v14)
  {
    v15 = *(v12 + 160);
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v16)
    {
      v16(v14, @"playerStats", 0x1F0B65898, v15, 0);
    }

    v17 = *(v13 + 504) != 0;
    v18 = *(DerivedStorage + 2568);
    if (v18)
    {
      v19 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v19)
      {
        v19(v18, @"playerStats", 0x1F0B66618, v17, 0);
      }
    }
  }

  fpfsi_UpdateHighWaterSecs();
  v20 = *(DerivedStorage + 1872);
  if (v20)
  {
    FigLegibleOutputManagerSetCaptionPipelineStrategy(v20, *(v13 + 460) == 0);
    FigLegibleOutputManagerSetCaptionRenderingStrategy(*(DerivedStorage + 1872), *(v13 + 461) == 0);
    FigLegibleOutputManagerSetNonForcedEnabledForMediaType(*(DerivedStorage + 1872), 1668047728, *(v13 + 210));
  }

  CFSetAddValue(*(v13 + 64), a2);
  fpfs_UnlockAndPostNotificationsWithCaller(a1);
  return 0;
}

uint64_t fpfs_CopyDisplayedCVPixelBuffer(const void *a1, uint64_t a2, void *a3)
{
  values = 0;
  if (!a1)
  {
    fpfs_CopyDisplayedCVPixelBuffer_cold_3(&v15);
    return v15;
  }

  if (!a3)
  {
    fpfs_CopyDisplayedCVPixelBuffer_cold_2(&v15);
    return v15;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(DerivedStorage + 8);
  if (!*(CMBaseObjectGetDerivedStorage() + 80) || (v6 = CMBaseObjectGetDerivedStorage()) == 0)
  {
    fpfs_CopyDisplayedCVPixelBuffer_cold_1();
    return v15;
  }

  v7 = v6;
  if ((FigCFDictionaryGetValueIfPresent() || FigCFDictionaryGetValueIfPresent()) && FigCFArrayGetFirstIndexOfValue() != -1)
  {
    values = FigCFArrayGetValueAtIndex();
    if (values)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      v9 = CFArrayCreate(AllocatorForMedia, &values, 1, MEMORY[0x1E695E9C0]);
LABEL_12:
      v11 = v9;
      goto LABEL_14;
    }
  }

  v10 = *(v7 + 664);
  if (v10)
  {
    v9 = CFRetain(v10);
    goto LABEL_12;
  }

  v11 = 0;
LABEL_14:
  fpfs_UnlockAndPostNotificationsWithCaller(a1);
  v12 = FPSupport_CopyCurrentlyDisplayedPixelBufferFromCAImageQueueArray(v11, *MEMORY[0x1E695E480], a3);
  if (v11)
  {
    CFRelease(v11);
  }

  return v12;
}

uint64_t fpfs_SetConnectionActive(void *a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a2)
  {
    v6 = 2;
  }

  else
  {
    v6 = *(DerivedStorage + 48) && !*(DerivedStorage + 51);
  }

  updated = fpfs_updatePlayerActiveState(a1, v6);
  if (dword_1EAF169F0)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return updated;
}

__n128 OUTLINED_FUNCTION_5@<Q0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, __n128 *a45)
{
  STACK[0x370] = a1;
  result = *a45;
  v45[7] = *a45;
  STACK[0x280] = a45[1].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_6(uint64_t a1@<X8>)
{
  *(v2 + 32) = 2048;
  *(v2 + 34) = v1;
  *(v2 + 42) = 2082;
  *(v2 + 44) = a1;
}

__n128 OUTLINED_FUNCTION_8@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  v1[7] = *a1;
  STACK[0x280] = a1[1].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_13()
{
  STACK[0x320] = *(v2 - 208);
  LODWORD(STACK[0x328]) = *(v2 - 200);
  LODWORD(STACK[0x32C]) = v1;
  STACK[0x330] = v0;
}

__n128 OUTLINED_FUNCTION_18()
{
  v2 = v0[1];
  *&STACK[0x200] = *v0;
  *&STACK[0x210] = v2;
  *&STACK[0x220] = v0[2];
  return v1[2];
}

double OUTLINED_FUNCTION_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, double a34)
{
  *(v34 + 32) = a29;
  *(v34 + 48) = a30;
  return a34;
}

uint64_t OUTLINED_FUNCTION_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_42()
{
  result = v0[3];
  v0[14] = result;
  v0[15].n128_u64[0] = v0[4].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_43()
{
  result = v1[9];
  *v0 = result;
  STACK[0x370] = v1[10].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_53()
{
  result = *v0;
  STACK[0x200] = v0[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_55()
{
  result = *&STACK[0x258];
  *v0 = *&STACK[0x258];
  return result;
}

__n128 OUTLINED_FUNCTION_58()
{
  result = *v1;
  v0[6] = *v1;
  v0[7].n128_u64[0] = v1[1].n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_61(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

__n128 OUTLINED_FUNCTION_64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a42, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, __n128 a43, unint64_t a44)
{
  result = a43;
  *&STACK[0x320] = a43;
  STACK[0x330] = a44;
  return result;
}

__n128 OUTLINED_FUNCTION_74()
{
  result = *v0;
  v1[7] = *v0;
  return result;
}

__n128 OUTLINED_FUNCTION_75()
{
  result = v1[13];
  v0[6] = result;
  v0[7].n128_u64[0] = v1[14].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_76(uint64_t a1@<X8>)
{
  *(v2 + 116) = a1;
  *(v2 + 124) = 2048;
  *(v2 + 126) = v1;
  *(v2 + 134) = 2082;
}

void OUTLINED_FUNCTION_83(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  LOWORD(STACK[0x21A]) = v17;
  *(a1 + 44) = a16;
  LOWORD(STACK[0x224]) = 1024;
  *(a1 + 54) = v18;
  LOWORD(STACK[0x22A]) = v16;
  *(a1 + 60) = v19;
  LOWORD(STACK[0x234]) = v16;
}

void *OUTLINED_FUNCTION_88()
{

  return malloc_type_calloc(1uLL, 0x90uLL, 0x1060040EF867D01uLL);
}

void OUTLINED_FUNCTION_92(__int16 a1@<W8>)
{
  *(v1 + 164) = a1;
  *(v1 + 166) = v3;
  *(v1 + 174) = a1;
  *(v1 + 176) = v2;
  *(v1 + 184) = a1;
}

__n128 OUTLINED_FUNCTION_93()
{
  result = v0[5];
  v0[14] = result;
  v0[15].n128_u64[0] = v0[6].n128_u64[0];
  return result;
}

BOOL OUTLINED_FUNCTION_95(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, os_log_type_t type, uint64_t a24, uint64_t a25, uint64_t a26, int a27)
{

  return os_log_type_enabled(a1, type);
}

__n128 OUTLINED_FUNCTION_96()
{
  result = *&STACK[0x270];
  *&STACK[0x2F0] = *&STACK[0x270];
  STACK[0x300] = STACK[0x280];
  return result;
}

uint64_t OUTLINED_FUNCTION_102(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, char a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_112@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 OUTLINED_FUNCTION_119()
{
  *&STACK[0x330] = 0u;
  *&STACK[0x340] = 0u;
  *&STACK[0x320] = 0u;
  result = *(v0 - 160);
  *&STACK[0x2F0] = result;
  STACK[0x300] = *(v0 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_122(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, int a19, int a20)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_123(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *&STACK[0x320] = *&STACK[0x270];
  STACK[0x330] = STACK[0x280];

  return CMTimeCompare(&time1, &STACK[0x320]);
}

uint64_t OUTLINED_FUNCTION_124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, int a37)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_126(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, char a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, char a37)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_129(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int valuePtr)
{
  valuePtr = 0;

  return CFNumberGetValue(v29, kCFNumberSInt32Type, &valuePtr);
}

BOOL OUTLINED_FUNCTION_130(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

__n128 OUTLINED_FUNCTION_135(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a45, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, __n128 a46, unint64_t a47)
{
  result = a46;
  *&STACK[0x300] = a46;
  STACK[0x310] = a47;
  return result;
}

__n128 OUTLINED_FUNCTION_136()
{
  v0 = *&STACK[0x330];
  *&STACK[0x2F0] = *&STACK[0x320];
  *&STACK[0x300] = v0;
  result = *&STACK[0x340];
  *&STACK[0x310] = *&STACK[0x340];
  return result;
}

void OUTLINED_FUNCTION_142()
{
  STACK[0x298] = 0;
  STACK[0x290] = 0;
  STACK[0x2A0] = 0;
}

__n128 OUTLINED_FUNCTION_149(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a45, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, __n128 a46, unint64_t a47)
{
  result = a46;
  *&STACK[0x3C0] = a46;
  STACK[0x3D0] = a47;
  return result;
}

__n128 OUTLINED_FUNCTION_152()
{
  result = *v0;
  *&STACK[0x270] = *v0;
  STACK[0x280] = v0[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_155()
{
  result = v1[13];
  *v0 = result;
  STACK[0x370] = v1[14].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_156(uint64_t result)
{
  v1[2] = result;
  *v1 = 1;
  return result;
}

__n128 OUTLINED_FUNCTION_157()
{
  result = *v0;
  *(v0 + 32) = *v0;
  *(v0 + 48) = *(v0 + 16);
  return result;
}

__n128 OUTLINED_FUNCTION_159(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a41, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, __n128 a42, unint64_t a43)
{
  result = a42;
  *&STACK[0x200] = a42;
  STACK[0x210] = a43;
  return result;
}

void OUTLINED_FUNCTION_160(__int16 a1@<W8>)
{
  *(v3 + 32) = a1;
  *(v3 + 34) = v2;
  *(v3 + 42) = v1;
}

__n128 OUTLINED_FUNCTION_161()
{
  result = *v1;
  *v0 = *v1;
  STACK[0x370] = STACK[0x210];
  return result;
}

__n128 OUTLINED_FUNCTION_162()
{
  result = *v1;
  v0[14] = *v1;
  v0[15].n128_u64[0] = v1[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_174(uint64_t a1)
{

  return FigNotificationCenterAddWeakListener();
}

uint64_t OUTLINED_FUNCTION_190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, int a14)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_192()
{

  return kdebug_trace();
}

uint64_t OUTLINED_FUNCTION_195@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, CMTime *time2, uint64_t a11, CMTime *time1, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 time2a, __int128 time2_16, uint64_t time1a, uint64_t time1_8, uint64_t time1_16, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int128 a30)
{
  time1_16 = a1;
  time2a = a30;
  *&time2_16 = *(v30 + 16);

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_206@<X0>(unint64_t a1@<X8>)
{
  STACK[0x210] = a1;

  return CMTimeCompare((v1 - 256), &STACK[0x200]);
}

uint64_t OUTLINED_FUNCTION_212()
{
  LODWORD(STACK[0x270]) = 0;
  LOBYTE(STACK[0x258]) = 0;
  return *(v0 + 2536);
}

void OUTLINED_FUNCTION_215()
{
  *(v1 + 96) = *(v1 + 248);
  *(v1 + 104) = *(v1 + 256);
  *(v1 + 108) = v0;
  *(v1 + 112) = v2;
}

void OUTLINED_FUNCTION_219()
{
  STACK[0x328] = 0;
  STACK[0x320] = 0;
  STACK[0x330] = 0;
}

__n128 OUTLINED_FUNCTION_220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a42, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, __n128 a43, unint64_t a44)
{
  result = a43;
  *&STACK[0x3C0] = a43;
  STACK[0x3D0] = a44;
  return result;
}

void OUTLINED_FUNCTION_222(__int16 a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 118) = 2082;
  *(v10 + 120) = a10;
  *(v10 + 128) = a1;
}

void OUTLINED_FUNCTION_226(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unint64_t a24)
{
  LOWORD(STACK[0x206]) = 2082;
  STACK[0x208] = a24;
  LOWORD(STACK[0x210]) = v24;
}

BOOL OUTLINED_FUNCTION_229(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, os_log_type_t type, uint64_t a35, uint64_t a36, int a37)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_237@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x200] = a1;

  return CMTimeCompare(&STACK[0x270], &time2);
}

uint64_t OUTLINED_FUNCTION_238@<X0>(unint64_t a1@<X8>)
{
  STACK[0x3D0] = a1;

  return CMTimeCompare(&STACK[0x320], &STACK[0x3C0]);
}

float OUTLINED_FUNCTION_250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14)
{
  *(v14 - 80) = a13;
  *(v14 - 64) = a14;
  return v15;
}

BOOL OUTLINED_FUNCTION_254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unint64_t a35)
{
  STACK[0x320] = *(v38 - 192);
  LODWORD(STACK[0x328]) = *(v38 - 184);
  LODWORD(STACK[0x32C]) = v35;
  STACK[0x330] = v36;
  STACK[0x3C0] = *(v38 - 232);
  LODWORD(STACK[0x3C8]) = *(v38 - 224);
  LODWORD(STACK[0x3CC]) = v37;
  STACK[0x3D0] = a35;

  return fpfs_TimeIsAtOrAfter(a22, &STACK[0x320], &STACK[0x3C0]);
}

uint64_t OUTLINED_FUNCTION_255@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, __int128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, CMTime *time2, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, __int128 time2a, CMTime *time1)
{
  STACK[0x210] = a1;
  time2a = a11;
  time1 = v53;

  return CMTimeCompare(&STACK[0x200], &time2a);
}

uint64_t OUTLINED_FUNCTION_256()
{
  LODWORD(STACK[0x300]) = 0;
  LOBYTE(STACK[0x2E0]) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_257(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int16 a22, char a23, char a24, int a25)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_268@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t time2a, uint64_t time2_8, uint64_t time2_16, uint64_t a9, uint64_t time1a)
{
  time2_16 = a1;

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_271(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  a13 = 0;

  return fpfs_PlayQueueCallForEachItem(v13, fpfs_handleAvailableAudioFormatChange_Apply, &a13);
}

__n128 OUTLINED_FUNCTION_276()
{
  *&STACK[0x320] = *v0;
  STACK[0x330] = *(v1 - 200);
  result = *(v1 - 192);
  *&STACK[0x2F0] = result;
  STACK[0x300] = *(v1 - 176);
  return result;
}

void OUTLINED_FUNCTION_280(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 36) = a1;
  *(v5 + 44) = 2048;
  *(v5 + 46) = v6;
  *(v5 + 54) = 2082;
  *(v5 + 56) = a5;
  *(v5 + 64) = 2048;
  *(v5 + 66) = v7;
  *(v5 + 74) = 2082;
}

uint64_t OUTLINED_FUNCTION_299(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, uint64_t a19)
{
  a18 = *v21;
  a19 = *(v21 + 16);
  a13 = *v20;
  a14 = *(v20 + 16);

  return fpfs_setRateInternal(v19, 0, &a18, &a13, v23);
}

void OUTLINED_FUNCTION_300()
{

  fpfs_CheckPrebufferedLevels();
}

BOOL OUTLINED_FUNCTION_304(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_306(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, os_log_type_t type, uint64_t a18, uint64_t a19, uint64_t a20, int a21)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_311(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_313(opaqueCMBufferQueue *a1)
{

  return CMBufferQueueCallForEachBuffer(a1, fpfs_CountNonDroppableUntil, &STACK[0x320]);
}

uint64_t OUTLINED_FUNCTION_314(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, uint64_t a24, uint64_t a25, __int128 a26, uint64_t a27, uint64_t a28, unsigned __int32 a29, unsigned __int32 a30, uint64_t a31, uint64_t a32, uint64_t a33, __int128 a34, uint64_t a35)
{
  *(v35 - 256) = a26;
  *(v35 - 240) = a27;

  return fpfs_setRateOnPrimaryAndAuxRenderPipelines();
}

__n128 OUTLINED_FUNCTION_317()
{
  result = *v0;
  v1[7] = *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_339(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_341@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x200] = a1;

  return CMTimeCompare(&time1, &STACK[0x270]);
}

__n128 OUTLINED_FUNCTION_343@<Q0>(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  *v2 = a2;
  STACK[0x370] = STACK[0x2A0];
  result = a1[74];
  v3[7] = result;
  STACK[0x280] = a1[75].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a29, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __n128 a30, unint64_t a31)
{
  result = a30;
  v31[2] = a30;
  v31[3].n128_u64[0] = a31;
  return result;
}

__n128 OUTLINED_FUNCTION_346()
{
  result = v0[13];
  v1[8] = result;
  v1[9].n128_u64[0] = v0[14].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_352()
{
  result = *v0;
  *v1 = *v0;
  return result;
}

void OUTLINED_FUNCTION_357(__int16 a1@<W8>)
{
  *(v3 + 144) = a1;
  *(v3 + 146) = v2;
  *(v3 + 154) = v1;
}

__n128 OUTLINED_FUNCTION_360()
{
  result = v0[5];
  v0[14] = result;
  v0[15].n128_u64[0] = v0[6].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_363()
{
  result = *&STACK[0x320];
  *&STACK[0x300] = *&STACK[0x320];
  STACK[0x310] = STACK[0x330];
  return result;
}

CFNumberRef OUTLINED_FUNCTION_364(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, double valuePtr)
{
  valuePtr = *v18 * *(v18 + 24) * 8.0;

  return CFNumberCreate(v19, kCFNumberDoubleType, &valuePtr);
}

__n128 OUTLINED_FUNCTION_365(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a41, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, __n128 a42, unint64_t a43)
{
  result = a42;
  v43[6] = a42;
  v43[7].n128_u64[0] = a43;
  return result;
}

__n128 OUTLINED_FUNCTION_367()
{
  result = *v0;
  *&STACK[0x200] = *v0;
  STACK[0x210] = v0[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_371(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, char a16, char a17)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void OUTLINED_FUNCTION_380(uint64_t a1@<X8>, double a2@<D0>)
{
  *(v2 + 34) = v3;
  *(v2 + 44) = a1;
  *(v2 + 54) = a2;
}

__n128 OUTLINED_FUNCTION_390@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

__n128 OUTLINED_FUNCTION_391@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *(v1 - 64) = *a1;
  *(v1 - 48) = a1[1].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_395(__int16 a1@<W8>, double a2@<D0>)
{
  *(v3 + 44) = v2;
  *(v3 + 52) = a1;
  *(v3 + 54) = v4;
  *(v3 + 62) = a1;
  *(v3 + 64) = v5;
  *(v3 + 72) = a1;
  *(v3 + 74) = a2;
  *(v3 + 82) = a1;
}

double OUTLINED_FUNCTION_414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

double OUTLINED_FUNCTION_417(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

uint64_t OUTLINED_FUNCTION_418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_419@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, CMTime *time2, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, CMTime *time1, uint64_t time2_8, uint64_t time2_16, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t time1a)
{
  time2_16 = a1;

  return CMTimeCompare(&time1a, &time1);
}

double OUTLINED_FUNCTION_420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

void OUTLINED_FUNCTION_431()
{
  STACK[0x290] = v2;
  LODWORD(STACK[0x298]) = v1;
  *(v0 + 12) = *(v3 - 192);
  *(v0 + 20) = *(v3 - 184);
}

uint64_t OUTLINED_FUNCTION_448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, a2, a3, a4, a5, v8, v9, a8);
}

double OUTLINED_FUNCTION_449(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

uint64_t OUTLINED_FUNCTION_450(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, __int16 a15, char a16, os_log_type_t a17, int a18, int a19, int a20, int a21, __int16 a22, uint64_t a23, uint64_t a24, __int16 a25, uint64_t a26, __int16 a27, uint64_t a28, __int16 a29, uint64_t a30, __int16 a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return fpfsi_CopyPlayerAndItemFromItemRetainProxyAndLockPlayer(a6, &a11, &a12, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

Float64 OUTLINED_FUNCTION_451@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, CMTime *time, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t timea)
{
  *(v54 + 240) = a1;

  return CMTimeGetSeconds(&timea);
}

void OUTLINED_FUNCTION_452(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a65 = *(v65 + 1352);
  STACK[0x200] = *(v65 + 1368);

  FPSTimelineConverterL3TimeToL2(&a65, &STACK[0x270]);
}

uint64_t OUTLINED_FUNCTION_453(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

double OUTLINED_FUNCTION_454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

CFIndex OUTLINED_FUNCTION_455(CFIndex range)
{
  v4.length = range;
  v4.location = 0;

  return CFArrayGetFirstIndexOfValue(v2, v4, v1);
}

uint64_t OUTLINED_FUNCTION_456(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, a2, a3, a4, a5, v8, v9, a8);
}

BOOL OUTLINED_FUNCTION_461(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, os_log_type_t type, uint64_t a22, uint64_t a23, uint64_t a24, int a25)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_462(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_464(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_465(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_466(NSObject *a1)
{
  v2 = STACK[0x258];

  return os_log_type_enabled(a1, v2);
}

double OUTLINED_FUNCTION_467(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

uint64_t OUTLINED_FUNCTION_469(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25, uint64_t a26)
{
  v29 = *(v26 + 1608);
  a25 = *v27;
  a26 = *(v27 + 16);

  return FigSpeedRampTimerScheduleForL2Time(v29, &a25, 1u);
}

uint64_t OUTLINED_FUNCTION_470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

CFNumberRef OUTLINED_FUNCTION_472(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return CFNumberCreate(v10, kCFNumberDoubleType, va);
}

CMTime *OUTLINED_FUNCTION_476(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return CMTimeSubtract(&a65, &STACK[0x320], &STACK[0x2F0]);
}

__n128 OUTLINED_FUNCTION_477(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a21, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a22)
{
  result = a22;
  *(v22 + 112) = a22;
  *(v22 + 128) = a20;
  *(v22 + 136) = a22;
  *(v22 + 152) = a20;
  return result;
}

__n128 OUTLINED_FUNCTION_478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 a29, uint64_t a30)
{
  *(v30 + 96) = a29;
  *(v30 + 112) = a30;
  return *(v31 + 232);
}

double OUTLINED_FUNCTION_479(double a1)
{
  result = *(v1 + 1968) + a1 - *(v1 + 1952);
  *(v1 + 1968) = result;
  *(v1 + 1952) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_487(uint64_t a1)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_495()
{
  result = *&STACK[0x320];
  *v0 = *&STACK[0x320];
  *(v0 + 16) = STACK[0x330];
  return result;
}

uint64_t OUTLINED_FUNCTION_497(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, __int16 a32, char a33, char a34, char a35)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_509(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

double OUTLINED_FUNCTION_524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

__n128 OUTLINED_FUNCTION_525(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a40, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, __n128 a41)
{
  result = a41;
  v41[7] = a41;
  return result;
}

__n128 OUTLINED_FUNCTION_527(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a45, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, __n128 a46)
{
  result = a46;
  *&STACK[0x320] = a46;
  return result;
}

Float64 OUTLINED_FUNCTION_528@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, CMTime *time, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t timea, uint64_t time_8, uint64_t time_16)
{
  time_16 = a1;

  return CMTimeGetSeconds(&timea);
}

void OUTLINED_FUNCTION_530()
{

  fpfs_CheckPrebufferedLevels();
}

Float64 OUTLINED_FUNCTION_532@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, CMTime *time, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t timea, uint64_t time_8, uint64_t time_16)
{
  time_16 = a1;

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_551(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_552(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, __int16 a28, char a29, char a30, int a31)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

Float64 OUTLINED_FUNCTION_553(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, CMTime *time, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t timea)
{
  *(v35 + 96) = *v36;
  *(v35 + 112) = *(v36 + 16);

  return CMTimeGetSeconds(&timea);
}

CMTime *OUTLINED_FUNCTION_554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, CMTimeRange *range, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 rangea, __int128 range_16, __int128 range_32)
{
  v27 = v25[1];
  rangea = *v25;
  range_16 = v27;
  range_32 = v25[2];

  return CMTimeRangeGetEnd(&range, &rangea);
}

uint64_t OUTLINED_FUNCTION_555(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36)
{
  *(v36 + 24) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_556(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, int a13)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

Float64 OUTLINED_FUNCTION_557(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, CMTime *time, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t timea)
{
  *(v51 + 96) = a31;
  *(v51 + 112) = a32;

  return CMTimeGetSeconds(&timea);
}

Float64 OUTLINED_FUNCTION_558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, __int128 a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, CMTime *time, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t timea)
{
  *(v51 + 96) = a28;
  *(v51 + 112) = a29;

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_559(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, int a31)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, char a18, int a19)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_561(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int16 a22, char a23, char a24, int a25)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_562(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_563()
{

  return FigGetCFStringForOSTypeValue();
}

__n128 OUTLINED_FUNCTION_567()
{
  result = *v0;
  *v1 = *v0;
  v1[1].n128_u64[0] = v0[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_571()
{
  result = v0[4];
  *&STACK[0x290] = result;
  STACK[0x2A0] = STACK[0x250];
  return result;
}

__n128 OUTLINED_FUNCTION_583()
{
  result = *&STACK[0x290];
  *v0 = *&STACK[0x290];
  return result;
}

double OUTLINED_FUNCTION_585()
{
  *(v0 - 176) = 0;
  result = 0.0;
  *(v0 - 208) = 0u;
  *(v0 - 192) = 0u;
  *(v0 - 240) = 0u;
  *(v0 - 224) = 0u;
  return result;
}

__n128 OUTLINED_FUNCTION_605(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, __int128 a62)
{
  *&STACK[0x200] = a17;
  STACK[0x210] = a18;
  return a62;
}

void OUTLINED_FUNCTION_630()
{
  v3 = *v0;
  *(v1 + 224) = *(v0 + 2);
  *(v1 + 208) = v3;

  fpfs_AccumulateTrackDurationToBufferedAirPlayRenderedSampleRange(v1);
}

Float64 OUTLINED_FUNCTION_631(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, CMTime *time, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int128 timea, uint64_t time_16)
{
  timea = *(v36 + 232);
  time_16 = *(v36 + 248);

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_632()
{
  v3 = *(v0 + 88);

  return CMBufferQueueEnqueue(v3, v1);
}

uint64_t OUTLINED_FUNCTION_633(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, char a18, char a19)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_634()
{
  *(v0 - 160) = *&STACK[0x2F0];
  *(v0 - 144) = STACK[0x300];

  return CMBaseObjectGetDerivedStorage();
}

double OUTLINED_FUNCTION_635(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

uint64_t OUTLINED_FUNCTION_636@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t time2a, uint64_t time2_8, uint64_t time2_16, uint64_t a7, uint64_t time1a)
{
  time2_16 = a1;

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_637(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_639(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, char a39)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_640()
{

  return CMBaseObjectGetVTable();
}

CMTime *OUTLINED_FUNCTION_641(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, CMTime *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{

  return CMTimeMakeWithSeconds(&a19, 30.0, 1);
}

uint64_t OUTLINED_FUNCTION_642(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_643(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, __int16 a14, char a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_644(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, __int16 a15, char a16, os_log_type_t a17, int a18, int a19, int a20, int a21, __int16 a22, uint64_t a23, uint64_t a24, __int16 a25, uint64_t a26, __int16 a27, uint64_t a28, __int16 a29, uint64_t a30, __int16 a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v63 - 24) = 0;
  *&a13 = 0;

  return fpfsi_CopyPlayerAndItemFromItemRetainProxyAndLockPlayer(a2, v63 - 24, &a13, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t OUTLINED_FUNCTION_645(uint64_t a1, uint64_t a2)
{

  return CMBaseObjectGetDerivedStorage();
}

__n128 OUTLINED_FUNCTION_656()
{
  result = *v0;
  *(v1 - 96) = *v0;
  *(v1 - 80) = v0[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_657()
{
  result = *v0;
  v1[13] = *v0;
  v1[14].n128_u64[0] = STACK[0x2A0];
  return result;
}

__n128 OUTLINED_FUNCTION_661(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a19, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a20, unint64_t a21)
{
  result = a20;
  v21[5] = a20;
  v21[6].n128_u64[0] = a21;
  return result;
}

__n128 OUTLINED_FUNCTION_669()
{
  result = *(v0 + 232);
  *&STACK[0x270] = result;
  STACK[0x280] = *(v0 + 248);
  return result;
}

__n128 OUTLINED_FUNCTION_670()
{
  result = *(v1 - 160);
  *(v0 + 172) = result;
  *(v0 + 188) = *(v1 - 144);
  return result;
}

__n128 OUTLINED_FUNCTION_671()
{
  result = *(v0 - 160);
  *&STACK[0x270] = result;
  STACK[0x280] = *(v0 - 144);
  return result;
}

__n128 OUTLINED_FUNCTION_672()
{
  result = *(v1 - 160);
  *v0 = result;
  v0[1].n128_u64[0] = *(v1 - 144);
  return result;
}

void OUTLINED_FUNCTION_680()
{
  v2 = v0 + v1;
  *(v2 + 3082) = *(v0 + v1 + 3085);
  *(v2 + 3085) = 0;
}

void OUTLINED_FUNCTION_691(__int16 a1@<W8>)
{
  *(v4 + 24) = v2;
  *(v4 + 32) = a1;
  *(v4 + 34) = v3;
  *(v4 + 42) = v1;
}

__n128 OUTLINED_FUNCTION_692(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a29, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __n128 a30)
{
  result = a30;
  *v30 = a30;
  return result;
}

__n128 OUTLINED_FUNCTION_695(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a33, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __n128 a34, unint64_t a35)
{
  result = a34;
  v35[13] = a34;
  v35[14].n128_u64[0] = a35;
  return result;
}

__n128 OUTLINED_FUNCTION_697(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a25, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a26, unint64_t a27)
{
  result = a26;
  v27[8] = a26;
  v27[9].n128_u64[0] = a27;
  return result;
}

__n128 OUTLINED_FUNCTION_698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a25, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a26, unint64_t a27)
{
  result = a26;
  v27[14] = a26;
  v27[15].n128_u64[0] = a27;
  return result;
}

void OUTLINED_FUNCTION_707()
{
  *(v1 + 112) = *(v1 + 248);
  *(v1 + 120) = *(v1 + 256);
  *(v1 + 124) = v0;
}

__n128 OUTLINED_FUNCTION_708()
{
  result = v0[9];
  *v0 = result;
  STACK[0x370] = *(v1 - 160);
  return result;
}

__n128 OUTLINED_FUNCTION_709(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a30, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __n128 a31, unint64_t a32)
{
  result = a31;
  v32[14] = a31;
  v32[15].n128_u64[0] = a32;
  return result;
}

__n128 OUTLINED_FUNCTION_719(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a55, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, __n128 a56, unint64_t a57)
{
  result = a56;
  *&STACK[0x3C0] = a56;
  STACK[0x3D0] = a57;
  return result;
}

__n128 OUTLINED_FUNCTION_720()
{
  result = *(v0 + 24);
  *&STACK[0x3C0] = result;
  STACK[0x3D0] = *(v0 + 40);
  return result;
}

void OUTLINED_FUNCTION_721(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(v19 + 24) = a1;
  *(v19 + 48) = 0;
  *(v19 + 56) = 0;
  *(v19 + 40) = a19;
}

__n128 OUTLINED_FUNCTION_733(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, __int128 a9, __int128 a10, __n128 a12)
{
  *v12 = a9;
  v12[1] = a10;
  result = a12;
  v12[2] = a12;
  return result;
}

__n128 OUTLINED_FUNCTION_736()
{
  v1 = *(v0 + 16);
  *&STACK[0x200] = *v0;
  *&STACK[0x210] = v1;
  result = *(v0 + 32);
  *&STACK[0x220] = result;
  return result;
}

void OUTLINED_FUNCTION_737()
{
  STACK[0x278] = 0;
  STACK[0x270] = 0;
  STACK[0x280] = 0;
}

__n128 OUTLINED_FUNCTION_739()
{
  result = v1[2];
  *v0 = result;
  STACK[0x370] = STACK[0x230];
  return result;
}

__n128 OUTLINED_FUNCTION_743(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a34, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, __n128 a35, unint64_t a36)
{
  result = a35;
  v36[6] = a35;
  v36[7].n128_u64[0] = a36;
  return result;
}

__n128 OUTLINED_FUNCTION_753(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a53, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, __n128 a54, uint64_t a55)
{
  result = a54;
  v55[13] = a54;
  *(v56 - 240) = a55;
  return result;
}

__n128 OUTLINED_FUNCTION_754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a18, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __n128 a19, unint64_t a20)
{
  result = a19;
  *v20 = a19;
  v20[1].n128_u64[0] = a20;
  return result;
}

__n128 OUTLINED_FUNCTION_760()
{
  result = *v1;
  v0[13] = *v1;
  *(v2 - 240) = v1[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_769(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a13, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a14, uint64_t a15)
{
  result = a14;
  *(v15 + 16) = a15;
  return result;
}

__n128 OUTLINED_FUNCTION_788()
{
  result = *(v1 + 24);
  v0[6] = result;
  v0[7].n128_u64[0] = *(v1 + 40);
  return result;
}

__n128 OUTLINED_FUNCTION_789()
{
  result = *(v0 + 24);
  *(v0 + 112) = result;
  *(v0 + 128) = *(v0 + 40);
  return result;
}

__n128 OUTLINED_FUNCTION_790()
{
  result = v0[8];
  v0[1].n128_u64[0] = v0[9].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_800@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = a1[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_801@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *&STACK[0x320] = *a1;
  STACK[0x330] = a1[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_803(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, uint64_t a11)
{
  result = a10;
  *(v11 - 96) = a10;
  *(v11 - 80) = a11;
  return result;
}

uint64_t OUTLINED_FUNCTION_814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);

  return fpfsi_TrimFromAllTracks(v52, va, v53, v54);
}

uint64_t OUTLINED_FUNCTION_815(uint64_t a1, NSObject *a2, const void *a3)
{

  return fpfsi_CreateTimebaseTimer(v4, a2, a3, v3, 0, v5);
}

uint64_t OUTLINED_FUNCTION_816(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_817(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_818(NSObject *a1)
{
  v2 = STACK[0x2F0];

  return os_log_type_enabled(a1, v2);
}

BOOL OUTLINED_FUNCTION_819(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, os_log_type_t type, int a14)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_820(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_821(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_822(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_823()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_824()
{
  v4 = *(v0 + 16);
  v5 = *(v0 + 56);

  return fpfs_createLegibleOutputRenderChainsAndAttachToPrimary(v1, v4, v5, v2);
}

CMTime *OUTLINED_FUNCTION_825@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x330] = a1;

  return CMTimeAdd(&STACK[0x270], &STACK[0x320], &rhs);
}

BOOL OUTLINED_FUNCTION_826(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, os_log_type_t type, int a19, int a20)
{

  return os_log_type_enabled(a1, type);
}

double OUTLINED_FUNCTION_827()
{

  fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
  return result;
}

BOOL OUTLINED_FUNCTION_828(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, os_log_type_t type, int a19, int a20)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_829(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_830(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_832(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{

  return fpfs_GetItemBufferedDuration(v27, &a27, v28 - 240, 0);
}

BOOL OUTLINED_FUNCTION_833(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_834(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, os_log_type_t type, int a23)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_835(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_836(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  return FigCFArrayAppendInt32();
}

uint64_t OUTLINED_FUNCTION_837@<X0>(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *v2 = a2;
  STACK[0x2A0] = a1;

  return CMSampleBufferSetOutputPresentationTimeStamp(v3, &STACK[0x290]);
}

void OUTLINED_FUNCTION_838()
{
  v1[16] = 0;
  v1[17] = 0;
  v1[18] = 0;

  fpfs_GetTime(v0, (v2 - 144));
}

BOOL OUTLINED_FUNCTION_839(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, os_log_type_t type, uint64_t a35, uint64_t a36, int a37)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_840(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_841(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, os_log_type_t type, int a23)
{

  return os_log_type_enabled(a1, type);
}

double OUTLINED_FUNCTION_842@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  *(v11 - 96) = a1;

  return fpfsi_PrepareTrackForReplay(v10, (v11 - 112), va);
}

BOOL OUTLINED_FUNCTION_844(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int16 a22, char a23, os_log_type_t type, int a25)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_846(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, os_log_type_t type, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_847(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, CMTime *time2, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t time2a, uint64_t time2_8, uint64_t time2_16, uint64_t a54, CMTime *time1, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_849(uint64_t a1)
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, CMTime *time2, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t time2a, uint64_t time2_8, uint64_t time2_16, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, CMTime *time1, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_851(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, a2, a3, a4, a5, v8, v9, a8);
}

uint64_t OUTLINED_FUNCTION_852(void *a1, CMTime *a2, float a3)
{

  return fpfs_SetRateWithFadeInternal(a1, a2, a3);
}

Float64 OUTLINED_FUNCTION_853@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, CMTime *time, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t timea)
{
  *(v58 + 224) = a1;

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_854()
{

  return CMBaseObjectGetVTable();
}

double OUTLINED_FUNCTION_855(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

BOOL OUTLINED_FUNCTION_856(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CGSize size, CGSize sizea, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, CGSize sizeb)
{

  return CGSizeMakeWithDictionaryRepresentation(v31, &sizeb);
}

char *OUTLINED_FUNCTION_857(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  return strncpy(va, a2, 8uLL);
}

CFNumberRef OUTLINED_FUNCTION_858(uint64_t a1, uint64_t a2, const void *a3)
{

  return CFNumberCreate(v3, kCFNumberSInt32Type, a3);
}

uint64_t OUTLINED_FUNCTION_859(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t FigPlayerFileCreateWithOptions(const __CFAllocator *a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  __str = 0u;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  FPSupport_CheckPlayerPerformanceTrace();
  FigPlayerGetClassID();
  v4 = CMDerivedObjectCreate();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
  *a3 = 0;
  if (dword_1EAF16A10)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    strncpy(__dst, 0x3CC, 8uLL);
    kdebug_trace();
  }

  return v4;
}

uint64_t playerfig_autoSelectionCriteriaChanged(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();

  return FigDeferNotificationToDispatchQueue();
}

uint64_t playerfig_ValeriaEnabled(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();

  return FigDeferNotificationToDispatchQueue();
}

void playerfig_applyAutoSelectionCriteriaInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v6 = DerivedStorage;
    if (DerivedStorage[800])
    {
      FigSimpleMutexLock();
      v7 = *(v6 + 66);
      if (v7 && CFArrayGetCount(v7) && (ValueAtIndex = CFArrayGetValueAtIndex(*(v6 + 66), 0)) != 0)
      {
        v9 = ValueAtIndex;
        CFRetain(ValueAtIndex);
        FigSimpleMutexUnlock();
        itemfig_updateSelectedMediaArrayInternal(v9, 0, a2, a3);

        CFRelease(v9);
      }

      else
      {

        FigSimpleMutexUnlock();
      }
    }
  }
}

uint64_t itemfig_applySelectedMediaArray(uint64_t a1, const __CFArray *a2, _BYTE *a3, _BYTE *a4, char *a5)
{
  v6 = v5;
  v229[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *(DerivedStorage + 1840);
  v201 = DerivedStorage;
  if (!v10)
  {
    v202 = 0;
    v194 = 0;
    HasAnySourceTracksInArray = 0;
    LOBYTE(v203) = 0;
    v195 = 0;
    v15 = 0;
LABEL_362:
    v173 = a5;
    v172 = a4;
    v174 = a3;
    goto LABEL_325;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    itemfig_applySelectedMediaArray_cold_6(v229);
    LOBYTE(v10) = 0;
    v202 = 0;
LABEL_361:
    v194 = 0;
    HasAnySourceTracksInArray = 0;
    LOBYTE(v203) = 0;
    v195 = 0;
    v15 = LODWORD(v229[0]);
    goto LABEL_362;
  }

  v202 = Mutable;
  v12 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v12)
  {
    itemfig_applySelectedMediaArray_cold_5(v229);
    LOBYTE(v10) = 0;
    goto LABEL_361;
  }

  v195 = v12;
  Count = CFArrayGetCount(a2);
  if (Count < 1)
  {
    v200 = 0;
    v194 = 0;
    LOBYTE(v203) = 0;
    v15 = 0;
LABEL_321:
    v170 = *(v201 + 824);
    if (v170)
    {
      HasAnySourceTracksInArray = FigVideoCompositionProcessorHasAnySourceTracksInArray(v170, v202);
    }

    else
    {
      HasAnySourceTracksInArray = 0;
    }

    v173 = a5;
    v172 = a4;
    v174 = a3;
    LOBYTE(v10) = v200;
    goto LABEL_325;
  }

  v14 = Count;
  v15 = 0;
  v16 = 0;
  v203 = 0;
  v194 = 0;
  v200 = 0;
  v17 = &unk_1EAF16000;
  v190 = @"MediaSelectionGroupOptions";
  v189 = @"MediaSelectionOptionsAudioCompositionPresetIndex";
  cf2 = @"PreferExclusivePassthrough";
  v186 = @"PreferAC3ViaExclusivePassthrough";
  v187 = @"MediaSelectionOptionsAudioCompositionPresetIndexesForFallbackIDs";
  v193 = @"MediaSelectionOptionsDisplaysNonForcedSubtitles";
  v209 = a2;
  v208 = Count;
  v214 = a1;
  while (1)
  {
    v215 = 0;
    valuePtr = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v16);
    if (!ValueAtIndex || (v19 = ValueAtIndex, v20 = CFGetTypeID(ValueAtIndex), v20 != CFDictionaryGetTypeID()))
    {
      itemfig_applySelectedMediaArray_cold_3(v229);
      v15 = LODWORD(v229[0]);
      goto LABEL_333;
    }

    Value = CFDictionaryGetValue(v19, @"MediaSelectionOptionsPersistentID");
    if (Value)
    {
      v22 = Value;
      v23 = CFGetTypeID(Value);
      if (v23 != CFNumberGetTypeID())
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17[321], 4294954516, "<<<< FigFilePlayer >>>>", 23740, v6);
LABEL_11:
        v15 = v24;
        goto LABEL_34;
      }

      CFNumberGetValue(v22, kCFNumberSInt32Type, &valuePtr);
      TrackStorage = itemfig_getTrackStorage(a1, valuePtr, &v215);
      if (TrackStorage)
      {
        goto LABEL_352;
      }

      v213 = v16;
      if (*(v215 + 4) == 1668047728)
      {
        SecondaryForcedSubtitlesSelectedMediaDictionary = FigAutomaticMediaSelectionCreateSecondaryForcedSubtitlesSelectedMediaDictionary(a2, *(v201 + 1856), *(v201 + 1848), 0);
        if (SecondaryForcedSubtitlesSelectedMediaDictionary)
        {
          v44 = SecondaryForcedSubtitlesSelectedMediaDictionary;
          v45 = CFDictionaryGetValue(SecondaryForcedSubtitlesSelectedMediaDictionary, @"MediaSelectionOptionsPersistentID");
          if (v45)
          {
            v46 = v45;
            v47 = CFGetTypeID(v45);
            if (v47 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v46, kCFNumberSInt32Type, &valuePtr + 4);
            }
          }

          CFRelease(v44);
        }

        v210 = 0;
        v15 = 0;
        v204 = 1;
        v206 = 0;
        goto LABEL_18;
      }

      v210 = 0;
      v204 = 0;
      v15 = 0;
    }

    else
    {
      v25 = CFDictionaryGetValue(v19, @"MediaSelectionOptionsUniqueOutOfBandID");
      if (v25)
      {
        v210 = v25;
        v26 = CFGetTypeID(v25);
        if (v26 != CFNumberGetTypeID())
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17[321], 4294954516, "<<<< FigFilePlayer >>>>", 23747, v6);
          goto LABEL_11;
        }

        v213 = v16;
      }

      else
      {
        v213 = v16;
        v210 = 0;
      }

      v204 = 0;
    }

    v206 = 1;
LABEL_18:
    v27 = CFDictionaryGetValue(v19, @"MediaSelectionGroupID");
    v28 = CFDictionaryGetValue(v19, @"MediaSelectionGroupMediaType");
    v29 = CMBaseObjectGetDerivedStorage();
    v30 = *(v29 + 1840);
    if (!v30)
    {
      goto LABEL_27;
    }

    v31 = CFGetTypeID(v30);
    if (v31 != CFArrayGetTypeID())
    {
      goto LABEL_27;
    }

    v32 = CFArrayGetCount(*(v29 + 1840));
    if (v32 < 1)
    {
      goto LABEL_27;
    }

    v33 = v32;
    v34 = 0;
    while (1)
    {
      v35 = CFArrayGetValueAtIndex(*(v29 + 1840), v34);
      if (v35)
      {
        v36 = v35;
        v37 = CFGetTypeID(v35);
        if (v37 == CFDictionaryGetTypeID())
        {
          CFDictionaryGetValue(v36, @"MediaSelectionGroupID");
          CFDictionaryGetValue(v36, @"MediaSelectionGroupMediaType");
          if (FigCFEqual())
          {
            if (FigCFEqual())
            {
              break;
            }
          }
        }
      }

      if (v33 == ++v34)
      {
        goto LABEL_27;
      }
    }

    v48 = CFGetTypeID(v36);
    if (v48 != CFDictionaryGetTypeID())
    {
LABEL_27:
      LODWORD(v222) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v17 = &unk_1EAF16000;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v39 = v222;
      v40 = type[0];
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
      {
        v41 = v39;
      }

      else
      {
        v41 = v39 & 0xFFFFFFFE;
      }

      if (v41)
      {
        *v224 = 136315650;
        *&v224[4] = "itemfig_applySelectedMediaArray";
        v225 = 2114;
        v226 = v27;
        v227 = 2114;
        v228 = v28;
        LODWORD(v181) = 32;
        v180 = v224;
        _os_log_send_and_compose_impl(v41, 0, v229, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v40, "<<<< FigFilePlayer >>>> %s: Warning: cannot find a mediaSelection group with groupID=%{public}@/mediaType=%{public}@");
      }

      a2 = v209;
      v6 = v5;
      v14 = v208;
      v16 = v213;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      a1 = v214;
      goto LABEL_34;
    }

    v49 = CFDictionaryGetValue(v36, v190);
    if (!v49 || (v50 = v49, v51 = CFGetTypeID(v49), v51 != CFArrayGetTypeID()))
    {
      itemfig_applySelectedMediaArray_cold_4(v229);
      v15 = LODWORD(v229[0]);
      goto LABEL_355;
    }

    v52 = CFArrayGetCount(v50);
    LODWORD(v229[0]) = 1061109567;
    if (v52)
    {
      FigCFArrayGetValueAtIndex();
      FigCFDictionaryGetStringValue();
      FigCFStringGetOSTypeValue();
      if (LODWORD(v229[0]) == 1936684398)
      {
        break;
      }
    }

    v191 = CFArrayGetCount(v50);
    if (v191 >= 1)
    {
      theArray = v50;
      HIDWORD(v184) = 0;
      LODWORD(cf) = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      while (1)
      {
        LODWORD(v222) = 0;
        v229[0] = 0;
        v64 = CFArrayGetValueAtIndex(theArray, v63);
        v65 = CFDictionaryGetValue(v64, @"MediaSelectionOptionsFallbackIDs");
        if (v65)
        {
          v66 = CFArrayGetCount(v65);
        }

        else
        {
          v66 = 0;
        }

        *type = 1061109567;
        if (!v64 || (v67 = CFGetTypeID(v64), v67 != CFDictionaryGetTypeID()))
        {
          itemfig_applySelectedMediaArray_cold_1(v224);
LABEL_354:
          v15 = *v224;
          goto LABEL_355;
        }

        CFDictionaryGetValue(v64, @"MediaSelectionOptionsMediaType");
        FigCFStringGetOSTypeValue();
        v68 = CFDictionaryGetValue(v64, @"MediaSelectionOptionsPersistentID");
        if (v68)
        {
          v69 = v68;
          v70 = CFGetTypeID(v68);
          if (v70 != CFNumberGetTypeID())
          {
            itemfig_applySelectedMediaArray_cold_2(v224);
            goto LABEL_354;
          }

          CFNumberGetValue(v69, kCFNumberSInt32Type, &v222);
          v71 = FigCFEqual();
          v72 = v71;
          if (*type == 1935832172)
          {
            if (v71)
            {
              v79 = 1;
            }

            else
            {
              v79 = v222 == HIDWORD(valuePtr);
            }

            v72 = v79;
          }

          else if (*type == 1668047728)
          {
            if (v71)
            {
              LODWORD(cf) = 1;
              v72 = 1;
            }

            else
            {
              if (v206)
              {
                v72 = v222 == *(v201 + 1048);
              }

              else
              {
                v72 = 0;
              }

              LODWORD(cf) = 1;
            }
          }

          v81 = CFDictionaryGetValue(v64, v193);
          if (v81)
          {
            v62 = 1;
          }

          if (v72)
          {
            if (v81)
            {
              if (v222 != HIDWORD(valuePtr))
              {
                v82 = CFDictionaryGetValue(v19, v193);
                if (v82)
                {
                  v83 = v82;
                  v84 = CFGetTypeID(v82);
                  if (v84 == CFBooleanGetTypeID())
                  {
                    HIDWORD(v184) = CFBooleanGetValue(v83);
                  }
                }
              }
            }
          }

          HIDWORD(v192) = v62;
          if (*type == 1952807028)
          {
            v85 = 1;
          }

          else
          {
            v85 = v61;
          }

          v86 = v222;
          if (v72 && v66)
          {
            *v224 = 0;
            if (FigCFArrayGetInt32AtIndex())
            {
              v86 = *v224;
            }

            else
            {
              v86 = v86;
            }
          }

          v87 = v72;
          if (v66 >= 1)
          {
            for (i = 0; v66 != i; ++i)
            {
              *v224 = 0;
              FigCFArrayGetInt32AtIndex();
              if (*v224 != v86)
              {
                v89 = itemfig_getTrackStorage(v214, *v224, v229);
                if (v89)
                {
                  goto LABEL_350;
                }

                v90 = v229[0];
                if (*(v229[0] + 8))
                {
                  FigCFArrayAppendInt32();
                  itemfig_setTrackEnabled(v214, v90, 0);
                  updated = itemfig_updateDefaultTrackID(v214, *v224, v220);
                  if (updated)
                  {
                    v15 = updated;
                    goto LABEL_335;
                  }

                  v203 = 1;
                }
              }
            }
          }

          v89 = itemfig_getTrackStorage(v214, v86, v229);
          if (v89)
          {
LABEL_350:
            v15 = v89;
LABEL_355:
            v173 = a5;
            v172 = a4;
            v174 = a3;
            a1 = v214;
            goto LABEL_356;
          }

          v92 = v229[0];
          if (*(v229[0] + 8) == v87)
          {
            v15 = 0;
            v61 = v85;
          }

          else
          {
            FigCFArrayAppendInt32();
            itemfig_setTrackEnabled(v214, v92, v87);
            v15 = itemfig_updateDefaultTrackID(v214, v86, v224);
            if (v15)
            {
LABEL_335:
              v173 = a5;
              v172 = a4;
              v174 = a3;
              HasAnySourceTracksInArray = 0;
              LOBYTE(v203) = 1;
              v175 = v202;
              a1 = v214;
              goto LABEL_336;
            }

            v61 = v85;
            v203 = 1;
          }

          v62 = HIDWORD(v192);
        }

        else
        {
          v73 = CFDictionaryGetValue(v64, @"MediaSelectionOptionsUniqueOutOfBandID");
          if (!v73)
          {
            goto LABEL_120;
          }

          v74 = CFGetTypeID(v73);
          if (v74 != CFNumberGetTypeID())
          {
            goto LABEL_120;
          }

          if (!FigCFEqual())
          {
            if (v210)
            {
              goto LABEL_120;
            }

            v80 = *(v201 + 1896);
            if (!v80)
            {
              goto LABEL_120;
            }

            CFRelease(v80);
            *(v201 + 1896) = 0;
            goto LABEL_127;
          }

          v75 = v201;
          v76 = *(v201 + 1896);
          if (!v76)
          {
            goto LABEL_126;
          }

          CFDictionaryGetValue(v76, @"MediaSelectionOptionsUniqueOutOfBandID");
          v77 = FigCFEqual();
          v78 = *(v201 + 1896);
          if (!v77)
          {
            v75 = v201;
            if (v78)
            {
              CFRelease(v78);
            }

LABEL_126:
            *(v75 + 1896) = v64;
            CFRetain(v64);
LABEL_127:
            v203 = 1;
            goto LABEL_120;
          }

          v75 = v201;
          if (!v78)
          {
            goto LABEL_126;
          }
        }

LABEL_120:
        if (++v63 == v191)
        {
          if (v62)
          {
            *(v201 + 1062) = HIDWORD(valuePtr) != 0;
            itemfig_setDisplayNonForcedSubtitlesEnabled(v214, BYTE4(v184));
          }

          v17 = &unk_1EAF16000;
          if (v203 && v61)
          {
            playerfig_resetSubtitleRenderPipeline(v195);
          }

          if (cf)
          {
            a2 = v209;
            v6 = v5;
            v14 = v208;
            v16 = v213;
            if (v194)
            {
              v194 = 1;
              a1 = v214;
              v93 = v201;
            }

            else
            {
              v93 = v201;
              v194 = *(v201 + 1052) != v204;
              a1 = v214;
            }

            *(v93 + 1052) = v204;
          }

          else
          {
            a1 = v214;
            a2 = v209;
            v6 = v5;
            v14 = v208;
            v16 = v213;
          }

          goto LABEL_34;
        }
      }
    }

    a1 = v214;
LABEL_170:
    a2 = v209;
    v6 = v5;
    v14 = v208;
    v16 = v213;
LABEL_171:
    v17 = &unk_1EAF16000;
LABEL_34:
    if (++v16 == v14)
    {
      goto LABEL_321;
    }
  }

  v53 = -1;
  FigCFDictionaryGetCFIndexIfPresent();
  SInt32 = FigCFNumberGetSInt32();
  v212 = CFArrayGetCount(v50);
  v55 = CFArrayGetCount(v50);
  a1 = v214;
  if (v55 < 1)
  {
    v60 = 0;
    goto LABEL_141;
  }

  v56 = v55;
  v57 = 0;
  while (1)
  {
    v58 = FigCFArrayGetValueAtIndex();
    v218 = 0;
    v217 = -1;
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetCFIndexIfPresent();
    v59 = v218 == SInt32 && v217 == -1;
    if (v59)
    {
      break;
    }

    if (v56 == ++v57)
    {
      v60 = 0;
      v53 = -1;
      goto LABEL_141;
    }
  }

  ArrayValue = FigCFDictionaryGetArrayValue();
  if (ArrayValue && CFArrayGetCount(ArrayValue) >= 1)
  {
    CMBaseObjectGetDerivedStorage();
    v109 = CFDictionaryGetValue(v58, @"MediaSelectionOptionsFallbackIDs");
    if (v109)
    {
      v110 = CFArrayGetCount(v109);
    }

    else
    {
      v110 = 0;
    }

    *type = -1;
    LODWORD(v229[0]) = 0;
    v111 = v214;
    v211 = 0;
    if (itemfig_getMaximumNumberOfSpatializedOutputChannels(v214, v229))
    {
      v112 = 1;
    }

    else
    {
      v112 = SLODWORD(v229[0]) < 3;
    }

    v113 = v112;
    v114 = v110 - 1;
    if (v110 >= 1)
    {
      v115 = 0;
      v116 = 1;
      do
      {
        while (1)
        {
          LODWORD(v229[0]) = 0;
          FigCFArrayGetInt32AtIndex();
          if (!itemfig_isTrackAC3(v214, LODWORD(v229[0])))
          {
            break;
          }

          if (!itemfig_canTrackPassthrough(v214, LODWORD(v229[0])))
          {
            goto LABEL_194;
          }

          v116 = 0;
          v59 = v114 == v115++;
          if (v59)
          {
            goto LABEL_195;
          }
        }

        ++v115;
      }

      while (v110 != v115);
      if (v116)
      {
LABEL_194:
        v211 = 0;
        goto LABEL_196;
      }

LABEL_195:
      v211 = itemfig_isAC3PassthroughSupported(v214) != 0;
LABEL_196:
      v117 = 0;
      v118 = 1;
      do
      {
        while (1)
        {
          LODWORD(v229[0]) = 0;
          FigCFArrayGetInt32AtIndex();
          v119 = LODWORD(v229[0]);
          if (!itemfig_isTrackEnhancedAC3(v214, LODWORD(v229[0])) || itemfig_isTrackAtmos(v214, v119))
          {
            break;
          }

          if (!itemfig_canTrackPassthrough(v214, LODWORD(v229[0])))
          {
            goto LABEL_207;
          }

          v118 = 0;
          v59 = v114 == v117++;
          if (v59)
          {
            goto LABEL_206;
          }
        }

        ++v117;
      }

      while (v110 != v117);
      if (v118)
      {
        goto LABEL_207;
      }

LABEL_206:
      itemfig_isEC3PassthroughSupported(v214);
LABEL_207:
      v120 = 0;
      v121 = 1;
      do
      {
        while (1)
        {
          LODWORD(v229[0]) = 0;
          FigCFArrayGetInt32AtIndex();
          if (!itemfig_isTrackAtmos(v214, LODWORD(v229[0])))
          {
            break;
          }

          if (!itemfig_canTrackPassthrough(v214, LODWORD(v229[0])))
          {
            goto LABEL_216;
          }

          v121 = 0;
          v59 = v114 == v120++;
          if (v59)
          {
            goto LABEL_217;
          }
        }

        ++v120;
      }

      while (v110 != v120);
      if (v121)
      {
LABEL_216:
        v111 = v214;
        goto LABEL_218;
      }

LABEL_217:
      v111 = v214;
      itemfig_isEC3PassthroughSupported(v214);
    }

LABEL_218:
    isAtmosSupported = itemfig_isAtmosSupported(v111);
    v123 = FigCFWeakReferenceHolderCopyReferencedObject();
    v124 = CMBaseObjectGetDerivedStorage();
    if (!v123)
    {
      v218 = 0;
      v217 = -1;
      a1 = v214;
      goto LABEL_140;
    }

    v125 = v124;
    if (CFEqual(*(v124 + 944), cf2))
    {
      v126 = v211;
      if (isAtmosSupported)
      {
        v126 = 1;
      }
    }

    else
    {
      v126 = CFEqual(*(v125 + 944), v186) != 0 && v211;
    }

    v127 = 100000;
    if (!isAtmosSupported || v126)
    {
      if ((v113 | v126))
      {
        if (v211)
        {
          v129 = 10000;
        }

        else
        {
          v129 = 100000;
        }

        if (v211)
        {
          v130 = 100000;
        }

        else
        {
          v130 = 10;
        }

        LODWORD(v184) = v130;
        if (v211)
        {
          v131 = 10;
        }

        else
        {
          v131 = 100;
        }

        HIDWORD(v184) = v131;
        if (v211)
        {
          v128 = 1000;
        }

        else
        {
          v128 = 10000;
        }

        if (v211)
        {
          v127 = 100;
        }

        else
        {
          v127 = 1000;
        }
      }

      else
      {
        v127 = 10000;
        v184 = 0x3E800000064;
        v129 = 10;
        v128 = 100000;
      }
    }

    else
    {
      v128 = 10000;
      v184 = 0x3E800000064;
      v129 = 10;
    }

    cf = v123;
    if (v129 <= v128)
    {
      v132 = v128;
    }

    else
    {
      v132 = v129;
    }

    HIDWORD(v183) = v132;
    if (v110 < 1)
    {
      v134 = 0;
LABEL_312:
      if (FigCFDictionaryGetArrayValue())
      {
        FigCFArrayGetCFIndexAtIndex();
        v15 = 0;
        v169 = *type;
      }

      else
      {
        v15 = 0;
        v169 = -1;
      }

      a1 = v214;
LABEL_316:
      v218 = v134;
      v217 = v169;
      CFRelease(cf);
      if (v15)
      {
        goto LABEL_333;
      }

      goto LABEL_140;
    }

    v182 = __PAIR64__(v129, v128);
    LODWORD(v183) = v127;
    v133 = 0;
    v134 = 0;
    LODWORD(v191) = -1;
    v207 = -1;
    while (1)
    {
      v219 = 0;
      FigCFArrayGetInt32AtIndex();
      v135 = itemfig_getTrackStorage(v214, v219, v220);
      if (v135)
      {
        v15 = v135;
        v169 = -1;
        a1 = v214;
        goto LABEL_316;
      }

      TrackAudioChannelCount = itemfig_getTrackAudioChannelCount(v214, v219, 0);
      isTrackAC3 = itemfig_isTrackAC3(v214, v219);
      isTrackEnhancedAC3 = itemfig_isTrackEnhancedAC3(v214, v219);
      HIDWORD(v192) = itemfig_isTrackAtmos(v214, v219);
      v138 = v219;
      v139 = CMBaseObjectGetDerivedStorage();
      v229[0] = 0;
      LODWORD(v222) = 0;
      v140 = *(v139 + 1008);
      v141 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v141)
      {
        v142 = v141(v140, v138, v229, &v222);
        v143 = v229[0];
        if (v142)
        {
          v144 = 0;
        }

        else
        {
          v144 = v222 == 1936684398;
        }

        if (v144)
        {
          *v224 = 0;
          if (!itemfig_copyFormatDescription(v229[0], v224))
          {
            v145 = *v224;
            if (*v224)
            {
              CMFormatDescriptionGetMediaSubType(*v224);
              CFRelease(v145);
            }
          }

          v143 = v229[0];
        }

        if (v143)
        {
          CFRelease(v143);
        }
      }

      v146 = v219;
      v147 = CMBaseObjectGetDerivedStorage();
      v229[0] = 0;
      v223 = 0;
      v148 = *(v147 + 1008);
      v149 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (!v149)
      {
        v150 = 0;
        goto LABEL_263;
      }

      v163 = v149(v148, v146, v229, &v223);
      v164 = v229[0];
      if (!v163 && v223 == 1936684398)
      {
        break;
      }

      v150 = 0;
      if (v229[0])
      {
        goto LABEL_307;
      }

LABEL_263:
      if (itemfig_isTrackDecodable(v214, v219) || isTrackAC3 != 0 && v211)
      {
        v151 = HIDWORD(v182);
        v152 = v183;
        if (TrackAudioChannelCount > 2)
        {
          v151 = 0;
        }

        if (!BYTE4(v192))
        {
          v152 = 0;
        }

        v153 = TrackAudioChannelCount > 2 && (isTrackEnhancedAC3 | isTrackAC3 | BYTE4(v192)) == 0;
        v154 = v182;
        if (!v153)
        {
          v154 = 0;
        }

        v156 = HIDWORD(v183);
        v155 = v184;
        if (!isTrackAC3)
        {
          v155 = 0;
        }

        v157 = v155 + v151;
        v158 = HIDWORD(v184);
        if (!isTrackEnhancedAC3)
        {
          v158 = 0;
        }

        if (!v150)
        {
          v156 = 0;
        }

        v159 = v157 + v158 + v152 + v154 + v156;
        v160 = v191;
        v161 = v159 <= v191;
        if (v159 > v191)
        {
          v160 = v159;
        }

        LODWORD(v191) = v160;
        if (!v161)
        {
          v134 = v219;
        }

        v162 = v207;
        if (!v161)
        {
          v162 = v133;
        }

        v207 = v162;
      }

      if (v110 == ++v133)
      {
        goto LABEL_312;
      }
    }

    *v224 = 0;
    if (itemfig_copyFormatDescription(v229[0], v224))
    {
      v150 = 0;
    }

    else
    {
      v166 = *v224;
      if (*v224)
      {
        v167 = FigAudioFormatDescriptionGetCinematicAudioEffectEligibility() != 0;
        CFRelease(v166);
      }

      else
      {
        v167 = 0;
      }

      v222 = 0;
      v168 = itemfig_getTrackStorage(v214, v146, &v222);
      v150 = 0;
      if (v167 && !v168 && v222)
      {
        v150 = v222[161] || v222[162] || v222[160];
      }
    }

    v164 = v229[0];
    if (!v229[0])
    {
      goto LABEL_263;
    }

LABEL_307:
    CFRelease(v164);
    goto LABEL_263;
  }

LABEL_140:
  v60 = v218;
  v53 = v217;
LABEL_141:
  if (v212 < 1)
  {
    v200 = 0;
    v15 = 0;
    goto LABEL_170;
  }

  v95 = 0;
  v96 = 0;
  v97 = 0;
  while (1)
  {
    FigCFArrayGetValueAtIndex();
    v98 = FigCFDictionaryGetArrayValue();
    if (!v98)
    {
      v224[0] = 0;
      LOBYTE(v222) = 0;
      goto LABEL_158;
    }

    v99 = CFArrayGetCount(v98);
    v224[0] = 0;
    LOBYTE(v222) = 0;
    if (v99 >= 1)
    {
      break;
    }

LABEL_158:
    LODWORD(v229[0]) = 0;
    FigCFDictionaryGetInt32IfPresent();
    if (LODWORD(v229[0]) == v60)
    {
      v107 = v53;
    }

    else
    {
      v107 = -1;
    }

    TrackStorage = itemfig_enableAudioTrackAndSetCompositionPresetIndexForEnabledTrack(a1, LODWORD(v229[0]) == v60, v229[0], v107, v224, &v222, v105, v106, v180, v181, SWORD2(v181), SBYTE6(v181), SHIBYTE(v181), v182, v183, v184, cf, v186, v187, cf2, v189, v190, v191, v192, v193);
    if (TrackStorage)
    {
      goto LABEL_352;
    }

    if (v224[0])
    {
      v95 = 1;
    }

    if (v222)
    {
      v97 = 1;
    }

LABEL_155:
    if (++v96 == v212)
    {
      v15 = 0;
      v108 = v203;
      if (v95)
      {
        v108 = 1;
      }

      v203 = v108;
      v200 = v97;
      a2 = v209;
      v6 = v5;
      v14 = v208;
      v16 = v213;
      goto LABEL_171;
    }
  }

  v100 = v99;
  v101 = 0;
  while (1)
  {
    LODWORD(v229[0]) = 0;
    FigCFArrayGetInt32AtIndex();
    v104 = LODWORD(v229[0]) == v60 ? v53 : -1;
    TrackStorage = itemfig_enableAudioTrackAndSetCompositionPresetIndexForEnabledTrack(a1, LODWORD(v229[0]) == v60, v229[0], v104, v224, &v222, v102, v103, v180, v181, SWORD2(v181), SBYTE6(v181), SHIBYTE(v181), v182, v183, v184, cf, v186, v187, cf2, v189, v190, v191, v192, v193);
    if (TrackStorage)
    {
      break;
    }

    if (v224[0])
    {
      v95 = 1;
    }

    if (v222)
    {
      v97 = 1;
    }

    if (v100 == ++v101)
    {
      goto LABEL_155;
    }
  }

LABEL_352:
  v15 = TrackStorage;
LABEL_333:
  v173 = a5;
  v172 = a4;
  v174 = a3;
LABEL_356:
  LOBYTE(v10) = v200;
  HasAnySourceTracksInArray = 0;
LABEL_325:
  if (v203)
  {
    v200 = v10;
    v175 = v202;
  }

  else
  {
    v175 = v202;
    if (!v194 && !v10)
    {
      LOBYTE(v203) = 0;
      v176 = 0;
      if (!v174)
      {
        goto LABEL_340;
      }

LABEL_339:
      *v174 = v203;
      goto LABEL_340;
    }

    v200 = v10;
  }

LABEL_336:
  if (*(v201 + 1242))
  {
    v179 = v175;
    itemfig_postSelectedMediaOptionsDidChangeNotification(a1);
    v175 = v179;
    v174 = a3;
    v173 = a5;
    v172 = a4;
  }

  else
  {
    *(v201 + 1241) = 1;
  }

  v176 = v200;
  if (v174)
  {
    goto LABEL_339;
  }

LABEL_340:
  if (v173)
  {
    *v173 = v176;
  }

  if (v172)
  {
    *v172 = HasAnySourceTracksInArray;
  }

  if (v195)
  {
    v177 = v175;
    CFRelease(v195);
    v175 = v177;
  }

  if (v175)
  {
    CFRelease(v175);
  }

  return v15;
}

void playerfig_updateClosedCaptionsDisplayForItem(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 305);
  FigSimpleMutexLock();
  if (CFArrayGetCount(*(DerivedStorage + 528)) < 1)
  {
    ValueAtIndex = 0;
    goto LABEL_6;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
  if (!ValueAtIndex)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v7 = CMBaseObjectGetDerivedStorage();
  v8 = v7;
  if (v5)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(v7 + 1052) != 0;
  }

  if (*(v7 + 1328))
  {
    CFRetain(ValueAtIndex);
    v9 = 0;
    goto LABEL_11;
  }

  ValueAtIndex = 0;
LABEL_7:
  v9 = 1;
LABEL_11:
  FigSimpleMutexUnlock();
  if (a2 && ValueAtIndex != a2)
  {
    goto LABEL_30;
  }

  if (v5 && ValueAtIndex)
  {
    if (*(v8 + 1060))
    {
      v5 = 0;
    }

    goto LABEL_18;
  }

  if (ValueAtIndex)
  {
LABEL_18:
    v10 = *(CMBaseObjectGetDerivedStorage() + 1792);
    if (v10)
    {
      FigLegibleOutputManagerSetNonForcedEnabledForMediaType(v10, 1668047728, v5);
    }
  }

  if (*(DerivedStorage + 600))
  {
    if (v5)
    {
      v11 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v11 = MEMORY[0x1E695E4C0];
    }

    FigRenderPipelineGetFigBaseObject();
    v13 = v12;
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v14)
    {
      v14(v13, @"DisplayClosedCaptions", *v11);
    }

    if (v5 && *(DerivedStorage + 608))
    {
      playerfig_resetSubtitleRenderPipeline(a1);
    }
  }

  if (v5 != *(DerivedStorage + 306))
  {
    *(DerivedStorage + 306) = v5;
    FPSupport_updateClosedCaptionLayer(DerivedStorage + 304, *(DerivedStorage + 296));
    NotificationPayloadForProperties = playerfig_createNotificationPayloadForProperties(a1, a2, v15, v16, v17, v18, v19, v20, @"DisplayingClosedCaptions", 0);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (NotificationPayloadForProperties)
    {
      CFRelease(NotificationPayloadForProperties);
    }
  }

LABEL_30:
  if ((v9 & 1) == 0)
  {

    CFRelease(ValueAtIndex);
  }
}

void playerfig_updateSubtitleDisplayForItem(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFArrayGetCount(*(DerivedStorage + 528)) < 1)
  {
    ValueAtIndex = 0;
    goto LABEL_6;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
  if (!ValueAtIndex)
  {
LABEL_6:
    v6 = 0;
LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  v6 = CMBaseObjectGetDerivedStorage();
  if (!*(v6 + 1328))
  {
    ValueAtIndex = 0;
    goto LABEL_7;
  }

  CFRetain(ValueAtIndex);
  v7 = 0;
LABEL_8:
  FigSimpleMutexUnlock();
  if (a2 && ValueAtIndex != a2 || !v6 || !*(DerivedStorage + 608))
  {
    goto LABEL_20;
  }

  v8 = (*(DerivedStorage + 720) && *(v6 + 1060) ? MEMORY[0x1E695E4D0] : MEMORY[0x1E695E4C0]);
  v9 = *v8;
  FigRenderPipelineGetFigBaseObject();
  v11 = v10;
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v12)
  {
    v12(v11, @"DisplayNonForcedSubtitles", v9);
  }

  v13 = *(v6 + 1864);
  if (!v13 || !CFArrayGetCount(v13))
  {
    playerfig_resetSubtitleRenderPipeline(a1);
    if (v7)
    {
      return;
    }
  }

  else
  {
LABEL_20:
    if (v7)
    {
      return;
    }
  }

  CFRelease(ValueAtIndex);
}

void playerfig_updateCaptionOrSubtitleHintOnVideoPipeline(uint64_t a1, const void *a2)
{
  cf = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  if (*(DerivedStorage + 306))
  {
    v6 = *(DerivedStorage + 600) != 0;
  }

  else
  {
    v6 = 0;
  }

  if (!a2)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v9 || (v9(a1, 0, &cf), !cf))
    {
      v8 = 0;
      goto LABEL_15;
    }
  }

  v7 = CMBaseObjectGetDerivedStorage();
  if (*(v5 + 720) && *(v7 + 1060))
  {
    v8 = 1;
    if (a2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = *(v7 + 1061) != 0;
    if (a2)
    {
      goto LABEL_15;
    }
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

LABEL_15:
  v10 = v6 || v8;
  if (*(v5 + 744) != v10 && *(v5 + 592))
  {
    *(v5 + 744) = v10;
    if (v6 || v8)
    {
      v11 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v11 = MEMORY[0x1E695E4C0];
    }

    FigRenderPipelineGetFigBaseObject();
    v13 = v12;
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v14)
    {
      v14(v13, @"CAImageQueueCaptionsMayAppearHint", *v11);
    }
  }
}

uint64_t itemfig_assureBasicsReadyUsingAsset(void *a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 1240))
  {
    return 0;
  }

  return itemfig_setBasicInspectables(a1);
}

uint64_t itemfig_setBasicInspectables(void *a1)
{
  v133 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v128 = 0;
  if (*DerivedStorage)
  {
    itemfig_setBasicInspectables_cold_1();
    v3 = 0;
LABEL_162:
    v5 = 0;
    v4 = 1;
    goto LABEL_6;
  }

  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v3)
  {
    itemfig_setBasicInspectables_cold_4();
    goto LABEL_162;
  }

  if (*CMBaseObjectGetDerivedStorage())
  {
    itemfig_setBasicInspectables_cold_2();
    goto LABEL_162;
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 1240))
  {
    v4 = 0;
    v5 = 0;
    goto LABEL_6;
  }

  v126 = 0;
  itemfig_setFormatReader(a1);
  if (CoalescedClientAndAutomaticSelectedMediaArray)
  {
    goto LABEL_163;
  }

  v8 = CFGetAllocator(a1);
  FigAssetGetCMBaseObject();
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    goto LABEL_99;
  }

  CoalescedClientAndAutomaticSelectedMediaArray = v11(v10, @"assetProperty_ContentByteStream", v8, DerivedStorage + 128);
  if (CoalescedClientAndAutomaticSelectedMediaArray)
  {
LABEL_163:
    v5 = CoalescedClientAndAutomaticSelectedMediaArray;
    goto LABEL_164;
  }

  if (*(DerivedStorage + 128))
  {
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v70 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v70)
    {
      v70(CMBaseObject, @"CRABS_PlaybackSessionID", 0, &cf);
      v95 = *(DerivedStorage + 2232);
      if (v95)
      {
        v96 = cf;
        if (cf)
        {
          v97 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v97)
          {
            v97(v95, *MEMORY[0x1E69629F0], v96);
          }

          v98 = *(DerivedStorage + 2232);
          v99 = CMByteStreamGetCMBaseObject();
          v100 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v100)
          {
            v100(v99, *MEMORY[0x1E6960DE8], v98);
          }
        }
      }
    }

    CMByteStreamGetCMBaseObject();
    FigCRABSGetClassID();
    if (CMBaseObjectIsMemberOfClass())
    {
      values[0] = 0;
      if (*(DerivedStorage + 1))
      {
        v78 = *(DerivedStorage + 1432);
        if (v78)
        {
          CFRelease(v78);
          *(DerivedStorage + 1432) = 0;
        }

        v79 = CMByteStreamGetCMBaseObject();
        v80 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v80)
        {
          v80(v79, @"CRABS_InteractivePlaybackAssertion", 0, DerivedStorage + 1432);
        }
      }

      if (*(DerivedStorage + 1744))
      {
        *number = 0;
        v81 = CMByteStreamGetCMBaseObject();
        v82 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v82)
        {
          v82(v81, @"CRABS_ReadAheadStartTime", 0, number);
        }

        if (*number)
        {
          valuePtr = 0.0;
          CFNumberGetValue(*number, kCFNumberDoubleType, &valuePtr);
          CFRelease(*number);
          v83 = *(DerivedStorage + 1600);
          if (v83 >= valuePtr)
          {
            v83 = valuePtr;
          }

          *(DerivedStorage + 1600) = v83;
        }
      }

      *(DerivedStorage + 1745) = 1;
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      v84 = CMByteStreamGetCMBaseObject();
      v85 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v85)
      {
        if (!v85(v84, @"CRABS_ConnectionState", 0, values))
        {
          v86 = CFDictionaryCreate(*MEMORY[0x1E695E480], kFigCachedReadAheadByteStreamParameter_ConnectionState, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
          itemfig_ConnectionStateChanged(DefaultLocalCenter, a1, v88, *(DerivedStorage + 128), v86);
          if (v86)
          {
            CFRelease(v86);
          }
        }
      }

      if (values[0])
      {
        CFRelease(values[0]);
      }

      if (!*(DerivedStorage + 2056))
      {
        v89 = CMByteStreamGetCMBaseObject();
        v90 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v90)
        {
          v90(v89, @"CRABS_ClientNetworkActivity", 0, DerivedStorage + 2056);
        }
      }

      v91 = CFGetAllocator(a1);
      v92 = CMByteStreamGetCMBaseObject();
      v93 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v93)
      {
        v93(v92, @"CRABS_NetworkUrgencyMonitor", v91, DerivedStorage + 632);
      }
    }

    else
    {
      *(DerivedStorage + 1370) = 1;
    }

    itemfig_reportingAgentSetup(a1, v71, v72, v73, v74, v75, v76, v77, v118, v119, v120, v121, v122, v123, v124, *&valuePtr, v126, cf, v128, v129, *number, *&number[8], *&number[16], v131);
  }

  v12 = CFGetAllocator(a1);
  FigAssetGetCMBaseObject();
  v14 = v13;
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v15)
  {
    v5 = v15(v14, @"assetProperty_Tracks", v12, &v126);
  }

  else
  {
    v5 = 4294954514;
  }

  if (v126)
  {
    CFRelease(v126);
    v126 = 0;
  }

  if (v5)
  {
    goto LABEL_164;
  }

  v16 = CMBaseObjectGetDerivedStorage();
  v17 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v17)
  {
    itemfig_setBasicInspectables_cold_3();
    goto LABEL_87;
  }

  v18 = v17;
  v19 = CMBaseObjectGetDerivedStorage();
  if (*v19)
  {
    LODWORD(valuePtr) = 0;
    HIBYTE(v129) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v115 = LODWORD(valuePtr);
    v116 = HIBYTE(v129);
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, HIBYTE(v129)))
    {
      v117 = v115;
    }

    else
    {
      v117 = v115 & 0xFFFFFFFE;
    }

    if (v117)
    {
      *number = 136315138;
      *&number[4] = "itemfig_establishTrackIDs";
      LODWORD(v119) = 12;
      _os_log_send_and_compose_impl(v117, 0, values, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v116, "<<<< FigFilePlayer >>>> %s: Item's owning player is invalid.", number);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    CFRelease(v18);
LABEL_87:
    v58 = CFGetAllocator(a1);
    FigAssetGetCMBaseObject();
    v60 = v59;
    v61 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v61)
    {
      CoalescedClientAndAutomaticSelectedMediaArray = v61(v60, @"MediaSelectionArray", v58, DerivedStorage + 1840);
      if (!CoalescedClientAndAutomaticSelectedMediaArray)
      {
        FigAutomaticMediaSelectionGetMediaSelectionGroupsForMajorIntrinsicCharacteristics(*(DerivedStorage + 1840), 0, (DerivedStorage + 1848), (DerivedStorage + 1856));
        itemfig_checkForShortAudioTrack(a1);
        v62 = CMBaseObjectGetDerivedStorage();
        v63 = FigCFWeakReferenceHolderCopyReferencedObject();
        v64 = CMBaseObjectGetDerivedStorage();
        if (v63)
        {
          if (!*v64 && !*(v62 + 1442) && FPSupport_HasTrackOfType(*(v62 + 1008), 1986618469))
          {
            *(v62 + 1441) = 1;
            if (dword_1EAF16A10)
            {
              LODWORD(valuePtr) = 0;
              HIBYTE(v129) = 0;
              v65 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v66 = LODWORD(valuePtr);
              v67 = HIBYTE(v129);
              if (os_log_type_enabled(v65, HIBYTE(v129)))
              {
                v68 = v66;
              }

              else
              {
                v68 = v66 & 0xFFFFFFFE;
              }

              if (v68)
              {
                if (a1)
                {
                  v94 = (CMBaseObjectGetDerivedStorage() + 2096);
                }

                else
                {
                  v94 = "";
                }

                *number = 136315650;
                *&number[4] = "itemfig_establishStereoAudioSpatializationPreferenceForAsset";
                *&number[12] = 2048;
                *&number[14] = a1;
                *&number[22] = 2082;
                v131 = v94;
                LODWORD(v119) = 32;
                _os_log_send_and_compose_impl(v68, 0, values, 128, &dword_1962D5000, v65, v67, "<<<< FigFilePlayer >>>> %s: <%p|%{public}s>: Stereo Spatialization allowed by default due to asset containing video.", number);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            CMNotificationCenterGetDefaultLocalCenter();
            FigDispatchAsyncPostNotification();
          }

          CFRelease(v63);
        }

        *(DerivedStorage + 1240) = 1;
        *(DerivedStorage + 1624) = CFAbsoluteTimeGetCurrent();
        if (*(DerivedStorage + 1429))
        {
          if (*(DerivedStorage + 128))
          {
            CMByteStreamGetCMBaseObject();
            FigCRABSGetClassID();
            if (CMBaseObjectIsMemberOfClass())
            {
              v101 = (*(DerivedStorage + 1428) ? MEMORY[0x1E695E4D0] : MEMORY[0x1E695E4C0]);
              v102 = CMByteStreamGetCMBaseObject();
              v103 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v103)
              {
                v103(v102, @"CRABS_ReadAheadAllowBackfill", *v101);
              }
            }
          }
        }

        v104 = CMBaseObjectGetDerivedStorage();
        v105 = FigCFWeakReferenceHolderCopyReferencedObject();
        v106 = *(v104 + 1312);
        if (v106)
        {
          CFDictionaryApplyFunction(v106, itemfig_transferPendingTrackProperties, a1);
          v107 = *(v104 + 1312);
          if (v107)
          {
            CFRelease(v107);
            *(v104 + 1312) = 0;
          }
        }

        if (v105)
        {
          CFRelease(v105);
        }

        CoalescedClientAndAutomaticSelectedMediaArray = itemfig_createCoalescedClientAndAutomaticSelectedMediaArray();
        if (!CoalescedClientAndAutomaticSelectedMediaArray)
        {
          if (v128)
          {
            itemfig_applySelectedMediaArray(a1, v128, 0, 0, 0);
          }

          FigSimpleMutexUnlock();
          FigSimpleMutexLock();
          playerfig_configureDownloadInPlayQueueAndItemsToPrebuffer(v3);
          if (!*(DerivedStorage + 1))
          {
            itemfig_configureDownloadForItem(a1, *(DerivedStorage + 1369), v108, v109, v110, v111, v112, v113, v118, v119, v120, v121, v122, v123, v124, *&valuePtr, v126, cf, v128, v129, *number, *&number[8], *&number[16], v131, values[0], values[1], values[2], values[3], values[4], values[5], values[6], values[7], values[8], values[9], values[10], values[11], values[12], values[13], values[14], values[15], v133, v134, v135, v136);
          }

          FigSimpleMutexUnlock();
          goto LABEL_162;
        }
      }

      goto LABEL_163;
    }

LABEL_99:
    v4 = 0;
    v5 = 4294954514;
    goto LABEL_6;
  }

  v20 = v19;
  FigSimpleMutexLock();
  v21 = *(v20 + 95);
  if (v21)
  {
    v22 = CFRetain(v21);
  }

  else
  {
    v22 = 0;
  }

  FigSimpleMutexUnlock();
  v122 = (v16 + 1024);
  v23 = FPSupport_BuildAlternateTrackGroups(*(v16 + 1008), (v16 + 1024));
  if (v23)
  {
    v5 = v23;
    if (v22)
    {
      goto LABEL_85;
    }

    goto LABEL_86;
  }

  v123 = v22;
  v24 = *(v20 + 206);
  if (v24 == 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = 4 * (v24 == 2);
  }

  if (v20[897])
  {
    v26 = v25 | 2;
  }

  else
  {
    v26 = v25;
  }

  FPSupport_GetDefaultTrackIDForMediaType(*(v16 + 1008), 1986618469, v16 + 1040, v26);
  itemfig_updateHasEnabledVideo(a1);
  itemfig_updateListenersForVideoTrack(a1, *(v16 + 1040));
  v27 = *(v16 + 1048);
  if (v27 || (FPSupport_GetDefaultTrackIDForMediaType(*(v16 + 1008), 1668047728, v16 + 1048, 0), v27 = *(v16 + 1048), v27))
  {
    itemfig_hintTrackIfPreload(a1, v27);
  }

  v28 = (v16 + 1036);
  v29 = *(v16 + 1036);
  if (v29)
  {
    v30 = *(v16 + 1008);
    LODWORD(values[0]) = 0;
    v31 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v31 || (v31(v30, v29, 0, values), LODWORD(values[0]) != 1936684398))
    {
      LODWORD(valuePtr) = 0;
      HIBYTE(v129) = 0;
      v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v33 = LODWORD(valuePtr);
      v34 = HIBYTE(v129);
      if (os_log_type_enabled(v32, HIBYTE(v129)))
      {
        v35 = v33;
      }

      else
      {
        v35 = v33 & 0xFFFFFFFE;
      }

      if (v35)
      {
        v36 = *v28;
        *number = 136315394;
        *&number[4] = "itemfig_establishTrackIDs";
        *&number[12] = 1024;
        *&number[14] = v36;
        _os_log_send_and_compose_impl(v35, 0, values, 128, &dword_1962D5000, v32, v34, "<<<< FigFilePlayer >>>> %s: tried to set audio to non-audio track ID %d", number, 18);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *v28 = 0;
    }
  }

  v124 = v18;
  v37 = (v16 + 1056);
  v38 = *(v16 + 1056);
  if (v38)
  {
    v39 = *(v16 + 1008);
    LODWORD(values[0]) = 0;
    v40 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v40 || (v40(v39, v38, 0, values), LODWORD(values[0]) != 1935832172) && LODWORD(values[0]) != 1952807028)
    {
      LODWORD(valuePtr) = 0;
      HIBYTE(v129) = 0;
      v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v42 = LODWORD(valuePtr);
      v43 = HIBYTE(v129);
      if (os_log_type_enabled(v41, HIBYTE(v129)))
      {
        v44 = v42;
      }

      else
      {
        v44 = v42 & 0xFFFFFFFE;
      }

      if (v44)
      {
        v45 = *v37;
        *number = 136315394;
        *&number[4] = "itemfig_establishTrackIDs";
        *&number[12] = 1024;
        *&number[14] = v45;
        _os_log_send_and_compose_impl(v44, 0, values, 128, &dword_1962D5000, v41, v43, "<<<< FigFilePlayer >>>> %s: tried to set subtitle to non-subtitle track ID %d", number, 18);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *v37 = 0;
    }
  }

  v46 = (v16 + 1080);
  v47 = *(v16 + 1080);
  if (v47)
  {
    v48 = *(v16 + 1008);
    LODWORD(values[0]) = 0;
    v49 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v49 || (v49(v48, v47, 0, values), LODWORD(values[0]) != 1751216244))
    {
      v121 = (v16 + 1036);
      LODWORD(valuePtr) = 0;
      HIBYTE(v129) = 0;
      v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v51 = LODWORD(valuePtr);
      v52 = HIBYTE(v129);
      if (os_log_type_enabled(v50, HIBYTE(v129)))
      {
        v53 = v51;
      }

      else
      {
        v53 = v51 & 0xFFFFFFFE;
      }

      if (v53)
      {
        v54 = *v46;
        *number = 136315394;
        *&number[4] = "itemfig_establishTrackIDs";
        *&number[12] = 1024;
        *&number[14] = v54;
        _os_log_send_and_compose_impl(v53, 0, values, 128, &dword_1962D5000, v50, v52, "<<<< FigFilePlayer >>>> %s: tried to set hapticTrack to non-haptic ID %d", number, 18);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *v46 = 0;
      v28 = (v16 + 1036);
    }
  }

  v22 = v123;
  if (!*v28)
  {
    FPSupport_GetDefaultTrackIDForMediaType(*(v16 + 1008), 1936684398, v28, 0);
    if (!*(v16 + 1036))
    {
      FPSupport_GetFirstEnabledTrackIDForMediaType(*(v16 + 1008), 1936684398, v28);
    }

    v55 = FPSupport_ChooseTrackIDsUsingPreferredLanguageLists(*v122, v123, @"Audio", v28);
    if (v55)
    {
      goto LABEL_173;
    }
  }

  if (!*v37)
  {
    FPSupport_GetDefaultTrackIDForMediaType(*(v16 + 1008), 1935832172, v16 + 1056, 0);
    if (!*(v16 + 1056))
    {
      FPSupport_GetDefaultTrackIDForMediaType(*(v16 + 1008), 1952807028, v16 + 1056, 0);
    }

    v55 = FPSupport_ChooseTrackIDsUsingPreferredLanguageLists(*v122, v123, @"Subtitle", (v16 + 1056));
    if (!v55)
    {
      v56 = *v37;
      if (v56)
      {
        itemfig_hintTrackIfPreload(a1, v56);
      }

      goto LABEL_78;
    }

LABEL_173:
    v5 = v55;
LABEL_80:
    v18 = v124;
    if (!v123)
    {
      goto LABEL_86;
    }

LABEL_85:
    CFRelease(v22);
    goto LABEL_86;
  }

LABEL_78:
  if (*v46)
  {
    v5 = 0;
    goto LABEL_80;
  }

  FPSupport_GetDefaultTrackIDForMediaType(*(v16 + 1008), 1751216244, v16 + 1080, 0);
  v57 = *(v16 + 1080);
  v18 = v124;
  if (v57)
  {
    itemfig_hintTrackIfPreload(a1, v57);
  }

  v5 = 0;
  if (v123)
  {
    goto LABEL_85;
  }

LABEL_86:
  CFRelease(v18);
  if (!v5)
  {
    goto LABEL_87;
  }

LABEL_164:
  v4 = 0;
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v128)
  {
    CFRelease(v128);
  }

  if ((v4 & 1) == 0)
  {
    FigSimpleMutexUnlock();
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v5;
}

void playerfig_configureDownloadInPlayQueueAndItemsToPrebuffer(uint64_t a1)
{
  v77 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFArrayGetCount(*(DerivedStorage + 528)) < 1)
  {
    Mutable = 0;
  }

  else
  {
    v2 = CMBaseObjectGetDerivedStorage();
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    Count = CFArrayGetCount(*(v2 + 528));
    v5 = Count;
    if (*(v2 + 60))
    {
      v6 = *(v2 + 72) < 1;
    }

    else
    {
      v6 = 0;
    }

    if (Count >= 1)
    {
      v7 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 528), v7);
        v9 = CMBaseObjectGetDerivedStorage();
        if (v6)
        {
          v16 = itemfig_configureDownloadForItem(ValueAtIndex, *(v9 + 1368), v10, v11, v12, v13, v14, v15, v44, v45, v46, v47, v48, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
          if (v16)
          {
            CFArrayAppendValue(Mutable, ValueAtIndex);
          }

          v6 = v16 ^ 1;
        }

        else
        {
          itemfig_configureDownloadForItem(ValueAtIndex, 0, v10, v11, v12, v13, v14, v15, v44, v45, v46, v47, v48, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
          v6 = 0;
        }

        ++v7;
      }

      while (v5 != v7);
    }
  }

  v17 = *(DerivedStorage + 1200);
  if (!v17 || CFArrayGetCount(v17) < 1)
  {
    goto LABEL_49;
  }

  v18 = CMBaseObjectGetDerivedStorage();
  if (playerfig_getMaxSlotsForPrebuffering_sDidCheckDefaultsWrite == 1)
  {
    CFPreferenceBooleanWithDefault = playerfig_getMaxSlotsForPrebuffering_sMaxSlotsForPrebuffering;
    if (Mutable)
    {
LABEL_18:
      v21 = CFArrayGetCount(Mutable);
      goto LABEL_21;
    }
  }

  else
  {
    CFPreferenceBooleanWithDefault = FigGetCFPreferenceBooleanWithDefault();
    playerfig_getMaxSlotsForPrebuffering_sMaxSlotsForPrebuffering = CFPreferenceBooleanWithDefault;
    playerfig_getMaxSlotsForPrebuffering_sDidCheckDefaultsWrite = 1;
    if (Mutable)
    {
      goto LABEL_18;
    }
  }

  v21 = 0;
LABEL_21:
  v22 = CFPreferenceBooleanWithDefault - v21;
  v23 = *(v18 + 1200);
  if (v23)
  {
    v24 = CFArrayGetCount(v23);
  }

  else
  {
    v24 = 0;
  }

  if (dword_1EAF16A10)
  {
    HIDWORD(v52) = 0;
    BYTE3(v52) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v24 >= 1)
  {
    v26 = 0;
    *&v19 = 136316418;
    v49 = v19;
    do
    {
      v27 = CFArrayGetValueAtIndex(*(v18 + 1200), v26);
      v28 = CMBaseObjectGetDerivedStorage();
      if (!FigCFArrayContainsValue())
      {
        if (v22 <= 0)
        {
          v43 = *(v28 + 1376);
LABEL_42:
          if (v43)
          {
            itemfig_configureDownloadForItem(v27, 0, v29, v30, v31, v32, v33, v34, v44, v45, v46, v47, v49, *(&v49 + 1), v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
          }

          goto LABEL_44;
        }

        PlayableDurationAtCurrentTime = itemfig_getPlayableDurationAtCurrentTime(v27);
        v36 = CMBaseObjectGetDerivedStorage();
        v37 = CMBaseObjectGetDerivedStorage();
        v38 = *(v36 + 1192);
        v39 = *(v37 + 1424);
        if (v38 >= v39)
        {
          v40 = *(v37 + 1424);
        }

        else
        {
          v40 = *(v36 + 1192);
        }

        if (!v39)
        {
          v40 = *(v36 + 1192);
        }

        if (v38)
        {
          v41 = v40;
        }

        else
        {
          v41 = *(v37 + 1424);
        }

        v42 = v41;
        v43 = *(v28 + 1376);
        if (PlayableDurationAtCurrentTime > v42)
        {
          goto LABEL_42;
        }

        if (v43)
        {
          --v22;
        }

        else if (itemfig_configureDownloadForItem(v27, 1, v29, v30, v31, v32, v33, v34, v44, v45, v46, v47, v49, *(&v49 + 1), v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80))
        {
          --v22;
          if (dword_1EAF16A10)
          {
            HIDWORD(v52) = 0;
            BYTE3(v52) = 0;
            v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            HIDWORD(v46) = 0;
            os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }
      }

LABEL_44:
      ++v26;
    }

    while (v24 != v26);
  }

LABEL_49:
  FigSimpleMutexUnlock();
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void itemfig_DeferredPostNotificationOnDispatchQueue(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  if (!*CMBaseObjectGetDerivedStorage())
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  CFRelease(a2);
  if (a5)
  {

    CFRelease(a5);
  }
}

void itemfig_hintTrackIfPreload(uint64_t a1, uint64_t a2)
{
  v24[22] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = 0;
  v24[0] = 0;
  v22 = 0;
  cf = 0;
  if (*(DerivedStorage + 128))
  {
    if (*(DerivedStorage + 1008))
    {
      CMByteStreamGetCMBaseObject();
      FigCRABSGetClassID();
      if (CMBaseObjectIsMemberOfClass())
      {
        v21 = 0;
        valuePtr = 0;
        v4 = *(DerivedStorage + 1008);
        v5 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v5)
        {
          if (!v5(v4, a2, v24, &v21))
          {
            FigTrackReaderGetFigBaseObject();
            v7 = v6;
            v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v8)
            {
              if (!v8(v7, @"TrackQTLoadSettings", *MEMORY[0x1E695E480], &cf) && cf != 0)
              {
                TypeID = CFDictionaryGetTypeID();
                if (TypeID == CFGetTypeID(cf))
                {
                  Value = CFDictionaryGetValue(cf, @"PreloadFlags");
                  if (Value)
                  {
                    v12 = Value;
                    v13 = CFNumberGetTypeID();
                    if (v13 == CFGetTypeID(v12) && CFNumberGetValue(v12, kCFNumberSInt32Type, &valuePtr) && (valuePtr & 3) != 0)
                    {
                      v17 = 0;
                      v18 = 0;
                      v15 = 0;
                      v16 = 0;
                      if (!FigTrackReaderCopySampleCursorService(v24[0], &v23) && !FigSampleCursorServiceCreateCursorAtFirstSampleInDecodeOrder(v23, &v22) && !FigSampleCursorCopySampleLocation(v22, &v17, 0) && (itemfig_hintTrackIfPreload_cold_1(&v22, &v23, &v16, &v15) & 1) == 0)
                      {
                        if ((v16 - v17 + v15) > 0x80000)
                        {
                          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                          fig_log_call_emit_and_clean_up_after_send_and_compose();
                        }

                        else
                        {
                          v18 = v16 - v17 + v15;
                          FigCRABSHintActiveRanges(*(DerivedStorage + 128), 1, &v17);
                        }
                      }

                      if (v22)
                      {
                        CFRelease(v22);
                      }
                    }
                  }
                }
              }
            }
          }
        }

        if (v23)
        {
          CFRelease(v23);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v24[0])
        {
          CFRelease(v24[0]);
        }
      }
    }
  }
}

uint64_t FigFormatReaderCopyTrackByID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  result = VTable + 16;
  v11 = *(v10 + 56);
  if (v11)
  {

    return v11(a1, a2, a3, a4);
  }

  return result;
}

uint64_t itemfig_getVideoMatrixRotationAngleAndFlips(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v11 = 0;
  FigPlaybackItemGetFigBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    return 0;
  }

  v7(v6, @"VideoTrackMatrix", *MEMORY[0x1E695E480], &v11);
  if (!v11)
  {
    return 0;
  }

  FigGetCGAffineTransformFrom3x3MatrixArray(v11, v10);
  RotationAngleAndFlipsFromCGAffineTransform = FigGetRotationAngleAndFlipsFromCGAffineTransform(v10, a2, a3);
  CFRelease(v11);
  return RotationAngleAndFlipsFromCGAffineTransform;
}

uint64_t FigTrackReaderCopySampleCursorService(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigSampleCursorServiceCreateCursorAtFirstSampleInDecodeOrder(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigSampleCursorCopySampleLocation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3, 0, 0);
}

uint64_t FigSampleCursorServiceCreateCursorAtLastSampleInDecodeOrder(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

void itemfig_transferPendingTrackProperties(unsigned int a1, CFDictionaryRef theDict, uint64_t a3)
{
  v3[0] = a3;
  v3[1] = a1;
  CFDictionaryApplyFunction(theDict, itemfig_transferPendingTrackProperty, v3);
}

uint64_t fp_isValidAudioCurves(const void *a1)
{
  if (!a1)
  {
    return 1;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"AudioCurve_Volume");
  v20 = **&MEMORY[0x1E6960C80];
  if (Value)
  {
    v4 = Value;
    v5 = CFArrayGetTypeID();
    if (v5 != CFGetTypeID(v4))
    {
      return 0;
    }

    Count = CFArrayGetCount(v4);
    if (0xAAAAAAAAAAAAAAABLL * Count + 0x2AAAAAAAAAAAAAAALL > 0x5555555555555554)
    {
      return 0;
    }

    v8 = Count;
    if (Count >= 1)
    {
      v9 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v9);
        memset(&v19, 0, sizeof(v19));
        CMTimeMakeFromDictionary(&v19, ValueAtIndex);
        v11 = CFArrayGetValueAtIndex(v4, v9 + 1);
        v12 = v9 + 2;
        v13 = CFArrayGetValueAtIndex(v4, v12);
        if ((v19.flags & 0x1D) != 1)
        {
          break;
        }

        v14 = v13;
        time1 = v20;
        v17 = v19;
        if (CMTimeCompare(&time1, &v17) > 0)
        {
          break;
        }

        v20 = v19;
        v15 = CFNumberGetTypeID();
        if (v15 != CFGetTypeID(v11))
        {
          break;
        }

        if (!v14)
        {
          break;
        }

        v16 = CFGetTypeID(v14);
        if (v16 != CFStringGetTypeID())
        {
          break;
        }

        v9 = v12 + 1;
        if (v9 >= v8)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return 1;
}