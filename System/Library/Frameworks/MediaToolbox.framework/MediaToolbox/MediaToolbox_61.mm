uint64_t FigActivitySchedulerSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigActivitySchedulerGetFigBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v6, a2, a3);
}

double aqOfflineMixer_outputBelowLowWater(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17670)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 16))
  {
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    aqOfflineMixer_triggerSchedulingIfOutputIsLow(a1);
  }

  return result;
}

void FigAudioQueueOfflineMixerCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    FigSimpleMutexLock();
    if (*(a1 + 16))
    {
      FigAudioQueueOfflineMixerCopyProperty_cold_1(&v12);
    }

    else
    {
      if (CFEqual(a2, @"AudioQueueOfflineMixer_ThrottleForBackground"))
      {
        if (*(a1 + 73))
        {
          v8 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v8 = MEMORY[0x1E695E4C0];
        }

        SInt32 = *v8;
        if (*v8)
        {
          SInt32 = CFRetain(SInt32);
        }
      }

      else
      {
        if (!CFEqual(a2, @"AudioQueueOfflineMixer_ConnectedAudioQueueCount"))
        {
          goto LABEL_18;
        }

        v10 = *(a1 + 296);
        if (v10)
        {
          CFArrayGetCount(v10);
        }

        SInt32 = FigCFNumberCreateSInt32();
      }

      *a4 = SInt32;
    }

LABEL_18:
    FigSimpleMutexUnlock();
    return;
  }

  v9 = qword_1EAF17668;

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954516, "<<<< FAQ Offline Mixer >>>>", 988, v4);
}

void FigAudioQueueOfflineMixerSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  if (a1)
  {
    FigSimpleMutexLock();
    if (*(a1 + 16))
    {
      FigAudioQueueOfflineMixerSetProperty_cold_1(&valuePtr);
      goto LABEL_53;
    }

    if (CFEqual(a2, @"AudioQueueOfflineMixer_ClientPID"))
    {
      FigActivitySchedulerGetFigBaseObject();
      v8 = v7;
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v9)
      {
        goto LABEL_53;
      }

      v10 = kFigActivitySchedulerProperty_ClientPID;
    }

    else
    {
      if (CFEqual(a2, @"AudioQueueOfflineMixer_SampleBufferAllocator"))
      {
        if (a3)
        {
          TypeID = CFAllocatorGetTypeID();
          if (TypeID != CFGetTypeID(a3))
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17668, 4294954516, "<<<< FAQ Offline Mixer >>>>", 1047, v3);
            goto LABEL_53;
          }

          v13 = *(a1 + 40);
          *(a1 + 40) = a3;
          CFRetain(a3);
        }

        else
        {
          v13 = *(a1 + 40);
          *(a1 + 40) = 0;
        }

        if (v13)
        {
          CFRelease(v13);
        }

        goto LABEL_53;
      }

      if (!CFEqual(a2, @"AudioQueueOfflineMixer_ThrottleForBackground"))
      {
        if (CFEqual(a2, @"AudioQueueOfflineMixer_TimelineMilestone"))
        {
          v16 = CFDictionaryGetTypeID();
          if (v16 == CFGetTypeID(a3))
          {
            memset(&valuePtr, 0, sizeof(valuePtr));
            CMTimeMakeFromDictionary(&valuePtr, a3);
            if (*(a1 + 160) & 1) != 0 && (valuePtr.flags)
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17668, 4294954516, "<<<< FAQ Offline Mixer >>>>", 1075, v3);
            }

            else
            {
              v20 = *&valuePtr.value;
              *(a1 + 148) = *&valuePtr.value;
              epoch = valuePtr.epoch;
              *(a1 + 164) = valuePtr.epoch;
              v25 = v20;
              v26 = epoch;
              v23 = *(a1 + 100);
              v24 = *(a1 + 116);
              if (aqOfflineMixer_passedTimelineMilestone(a1, &v25, &v23))
              {
                aqOfflineMixer_postMilestoneNotification(a1);
              }
            }
          }

          else
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17668, 4294954516, "<<<< FAQ Offline Mixer >>>>", 1080, v3);
          }

          goto LABEL_53;
        }

        if (CFEqual(a2, @"AudioQueueOfflineMixer_TimelineMilestoneAllowance"))
        {
          if (a3 && (v17 = CFNumberGetTypeID(), v17 == CFGetTypeID(a3)))
          {
            CFNumberGetValue(a3, kCFNumberSInt32Type, (a1 + 352));
          }

          else
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17668, 4294954516, "<<<< FAQ Offline Mixer >>>>", 1088, v3);
          }

          goto LABEL_53;
        }

        if (CFEqual(a2, @"AudioQueueOfflineMixer_CodecQuality"))
        {
          if (!a3 || (v18 = CFNumberGetTypeID(), v18 != CFGetTypeID(a3)))
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17668, 4294954516, "<<<< FAQ Offline Mixer >>>>", 1098, v3);
            goto LABEL_53;
          }
        }

        else
        {
          if (!CFEqual(a2, @"AudioQueueOfflineMixer_BitRateForVBR"))
          {
            if (CFEqual(a2, @"AudioQueueOfflineMixer_ThreadPriority"))
            {
              if (a3 && (v22 = CFNumberGetTypeID(), v22 == CFGetTypeID(a3)))
              {
                FigActivitySchedulerSetProperty(*(a1 + 64), @"ThreadPriority", a3);
              }

              else
              {
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17668, 4294954516, "<<<< FAQ Offline Mixer >>>>", 1118, v3);
              }
            }

            else if (CFEqual(a2, @"AudioQueueOfflineMixer_ApplyTrimAtEndAfterPTS"))
            {
              memset(&valuePtr, 0, sizeof(valuePtr));
              CMTimeMakeFromDictionary(&valuePtr, a3);
              FigSimpleMutexLock();
              *(a1 + 172) = valuePtr;
              FigSimpleMutexUnlock();
            }

            goto LABEL_53;
          }

          if (!a3 || (v19 = CFNumberGetTypeID(), v19 != CFGetTypeID(a3)))
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17668, 4294954516, "<<<< FAQ Offline Mixer >>>>", 1109, v3);
            goto LABEL_53;
          }
        }

        LODWORD(valuePtr.value) = 0;
        CFNumberGetValue(a3, kCFNumberIntType, &valuePtr);
        AQOfflineMixerSetProperty();
        goto LABEL_53;
      }

      v14 = CFBooleanGetTypeID();
      if (v14 != CFGetTypeID(a3))
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17668, 4294954516, "<<<< FAQ Offline Mixer >>>>", 1058, v3);
        goto LABEL_53;
      }

      *(a1 + 73) = CFBooleanGetValue(a3);
      FigActivitySchedulerGetFigBaseObject();
      v8 = v15;
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v9)
      {
        goto LABEL_53;
      }

      v10 = kFigActivitySchedulerProperty_ThrottleForBackground;
    }

    v9(v8, *v10, a3);
LABEL_53:
    FigSimpleMutexUnlock();
    return;
  }

  v11 = qword_1EAF17668;

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 4294954516, "<<<< FAQ Offline Mixer >>>>", 1030, v3);
}

__n128 aqOfflineMixer_postMilestoneNotification(uint64_t a1)
{
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v3 = MutableCopy;
    FigCFDictionarySetCMTime();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    v4 = MEMORY[0x1E6960C70];
    *(a1 + 148) = *MEMORY[0x1E6960C70];
    *(a1 + 164) = *(v4 + 16);
    CFRelease(v3);
  }

  else
  {
    v6 = MEMORY[0x1E6960C70];
    result = *MEMORY[0x1E6960C70];
    *(a1 + 148) = *MEMORY[0x1E6960C70];
    *(a1 + 164) = *(v6 + 16);
  }

  return result;
}

__n128 FigAudioQueueOfflineMixerGetOutputASBD@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 208);
  v3 = *(a1 + 224);
  *a2 = result;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 240);
  return result;
}

uint64_t FigAudioQueueOfflineMixerGo(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17670)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(a1 + 16))
  {
    FigAudioQueueOfflineMixerGo_cold_1(v7);
    v5 = v7[0];
  }

  else
  {
    FigSimpleMutexLock();
    *(a1 + 75) = 1;
    FigSimpleMutexUnlock();
    v3 = *(a1 + 64);
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v4)
    {
      v4(v3);
    }

    v5 = 0;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t FigAudioQueueOfflineMixerStartDrainingSampleBuffersUntilTime(uint64_t a1, CMTime *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  if (*(a1 + 16))
  {
    FigAudioQueueOfflineMixerStartDrainingSampleBuffersUntilTime_cold_1(&time1);
LABEL_19:
    value_low = LODWORD(time1.value);
    goto LABEL_14;
  }

  if ((a2->flags & 0x1D) != 1)
  {
    FigAudioQueueOfflineMixerStartDrainingSampleBuffersUntilTime_cold_2(&time1);
    goto LABEL_19;
  }

  v4 = (a1 + 324);
  if ((*(a1 + 336) & 0x1D) == 1)
  {
    time1 = *a2;
    *&time2.value = *v4;
    time2.epoch = *(a1 + 340);
    if (CMTimeCompare(&time1, &time2) < 1)
    {
      if (dword_1EAF17670)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_11;
    }

    if (dword_1EAF17670)
    {
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
LABEL_9:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else if (dword_1EAF17670)
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    goto LABEL_9;
  }

  v7 = *&a2->value;
  *(a1 + 340) = a2->epoch;
  *v4 = v7;
LABEL_11:
  v8 = *(a1 + 64);
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v9)
  {
    v9(v8);
  }

  value_low = 0;
LABEL_14:
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t FigAudioQueueOfflineMixerInterruptAndStop(_BYTE *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (dword_1EAF17670)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigSimpleMutexLock();
    if (a1[16])
    {
      FigAudioQueueOfflineMixerInterruptAndStop_cold_1(v5);
      v3 = v5[0];
    }

    else
    {
      a1[74] = 1;
      FigSimpleMutexLock();
      a1[75] = 0;
      a1[74] = 0;
      FigSimpleMutexUnlock();
      v3 = 0;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    FigAudioQueueOfflineMixerInterruptAndStop_cold_2(v5);
    return v5[0];
  }

  return v3;
}

uint64_t aqOfflineMixer_faqDidEnqueueData(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  if (dword_1EAF17670)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a2 + 16))
  {
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v8 = *(a2 + 312);
    if (v8)
    {
      Count = CFArrayGetCount(v8);
      if (a4)
      {
        v10.length = Count;
        if (Count >= 1)
        {
          v10.location = 0;
          FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(a2 + 312), v10, a4);
          if (FirstIndexOfValue != -1)
          {
            CFArrayRemoveValueAtIndex(*(a2 + 312), FirstIndexOfValue);
          }
        }
      }
    }

    aqOfflineMixer_triggerSchedulingIfOutputIsLow(a2);
  }

  return FigSimpleMutexUnlock();
}

uint64_t aqOfflineMixer_faqDidStart(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  if (dword_1EAF17670)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a2 + 16))
  {
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v8 = *(a2 + 304);
    v16.length = CFArrayGetCount(v8);
    v16.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v8, v16, a4);
    if (FirstIndexOfValue != -1)
    {
      for (i = FirstIndexOfValue; i != -1; i = CFArrayGetFirstIndexOfValue(v11, v17, a4))
      {
        CFArrayRemoveValueAtIndex(*(a2 + 304), i);
        v11 = *(a2 + 304);
        v17.length = CFArrayGetCount(v11);
        v17.location = 0;
      }
    }

    *(a2 + 321) = CFArrayGetCount(*(a2 + 304)) == 0;
    if (*(a2 + 75))
    {
      if (*(a2 + 321))
      {
        v12 = *(a2 + 64);
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v13)
        {
          v13(v12);
        }
      }
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t aqOfflineMixer_triggerSchedulingIfOutputIsLow(uint64_t a1)
{
  v2 = *(a1 + 32);
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  v6 = *(v5 + 24);
  if (v6)
  {
    result = v6(v2);
    if (result)
    {
      v7 = *(a1 + 64);
      v8 = CMBaseObjectGetVTable();
      v9 = *(v8 + 16);
      result = v8 + 16;
      v10 = *(v9 + 16);
      if (v10)
      {

        return v10(v7);
      }
    }
  }

  return result;
}

uint64_t aqOfflineMixer_Finalize(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17670)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigAudioQueueOfflineMixerInvalidate(a1);
  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }

  if (*(a1 + 288))
  {
    AQOfflineMixerDispose();
    *(a1 + 288) = 0;
  }

  v4 = *(a1 + 280);
  if (v4)
  {
    if (*v4)
    {
      v5 = 0;
      v6 = 4;
      do
      {
        free(*&v4[v6]);
        ++v5;
        v4 = *(a1 + 280);
        v6 += 4;
      }

      while (v5 < *v4);
    }

    free(v4);
    *(a1 + 280) = 0;
  }

  free(*(a1 + 248));
  *(a1 + 248) = 0;
  free(*(a1 + 256));
  *(a1 + 256) = 0;
  free(*(a1 + 264));
  *(a1 + 264) = 0;
  v7 = *(a1 + 200);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 200) = 0;
  }

  v8 = *(a1 + 296);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 296) = 0;
  }

  v9 = *(a1 + 304);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 304) = 0;
  }

  v10 = *(a1 + 312);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 312) = 0;
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 40) = 0;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 32) = 0;
  }

  if (*(a1 + 80))
  {
    FigSimpleMutexDestroy();
    *(a1 + 80) = 0;
  }

  FigSimpleMutexDestroy();
  result = *(a1 + 24);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(a1 + 24) = 0;
  }

  return result;
}

CFStringRef aqOfflineMixer_CopyFormattingDesc(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = " (invalidated)";
  }

  else
  {
    v1 = "";
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigAudioQueueOfflineMixer %p%s]", a1, v1);
}

__CFString *aqOfflineMixer_CopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  if (*(a1 + 16))
  {
    v5 = " (invalidated)";
  }

  else
  {
    v5 = "";
  }

  v6 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigAudioQueueOfflineMixer %p retainCount: %d%s allocator: %p, ", a1, v4, v5, v6);
  CFStringAppendFormat(Mutable, 0, @"sampleBufferConsumer %@, activityScheduler %@", *(a1 + 32), *(a1 + 64));
  CFStringAppendFormat(Mutable, 0, @", numberOfSampleBuffersOutput %d", *(a1 + 476));
  if (*(a1 + 348))
  {
    v7 = " (didSendReachedEndOfOutputData)";
  }

  else
  {
    v7 = "";
  }

  if (*(a1 + 349))
  {
    v8 = " (didFinishPendingProcessingAtEndOfInput)";
  }

  else
  {
    v8 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"%s%s", v7, v8);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

__n128 OUTLINED_FUNCTION_1_152()
{
  result = *(v0 + 100);
  *&STACK[0x390] = result;
  STACK[0x3A0] = *(v0 + 116);
  return result;
}

void OUTLINED_FUNCTION_2_146(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unint64_t a37, int a38)
{
  STACK[0x390] = STACK[0x380];
  LODWORD(STACK[0x398]) = STACK[0x388];
  LODWORD(STACK[0x39C]) = a38;
  STACK[0x3A0] = a37;
}

uint64_t OUTLINED_FUNCTION_6_88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61)
{
  *(v61 - 176) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_8_62()
{
  result = *&STACK[0x2F0];
  *&STACK[0x2D0] = *&STACK[0x2F0];
  STACK[0x2E0] = STACK[0x300];
  return result;
}

uint64_t OUTLINED_FUNCTION_13_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_14_50()
{
  *(v0 - 176) = 0;
  LOBYTE(STACK[0x2F0]) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_16_44@<Q0>(unint64_t a1@<X8>)
{
  STACK[0x2A0] = a1;
  result = *(v1 - 176);
  *&STACK[0x270] = result;
  STACK[0x280] = *(v1 - 160);
  return result;
}

__n128 OUTLINED_FUNCTION_18_40@<Q0>(unint64_t a1@<X8>)
{
  STACK[0x3A0] = a1;
  result = *&STACK[0x230];
  *&STACK[0x310] = *&STACK[0x230];
  STACK[0x320] = STACK[0x240];
  return result;
}

void OUTLINED_FUNCTION_19_38()
{
  STACK[0x290] = *(v1 - 256);
  LODWORD(STACK[0x298]) = *(v1 - 248);
  LODWORD(STACK[0x29C]) = v0;
}

CMTime *OUTLINED_FUNCTION_21_33()
{

  return CMTimeSubtract(&STACK[0x290], &STACK[0x270], &STACK[0x250]);
}

__n128 OUTLINED_FUNCTION_25_30()
{
  result = *&STACK[0x390];
  *v0 = *&STACK[0x390];
  *(v0 + 16) = STACK[0x3A0];
  return result;
}

__n128 OUTLINED_FUNCTION_26_31@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *&STACK[0x310] = *a1;
  STACK[0x320] = a1[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_28_28()
{
  result = *(v0 + 100);
  *&STACK[0x310] = result;
  STACK[0x320] = *(v0 + 116);
  return result;
}

__n128 OUTLINED_FUNCTION_29_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  result = *v32;
  *(v31 + 100) = *v32;
  *(v31 + 116) = a31;
  return result;
}

void OUTLINED_FUNCTION_30_25()
{
  STACK[0x398] = 0;
  STACK[0x390] = 0;
  STACK[0x3A0] = 0;
}

__n128 OUTLINED_FUNCTION_32_26()
{
  result = *v0;
  *v1 = *v0;
  return result;
}

__n128 OUTLINED_FUNCTION_33_25()
{
  result = *v0;
  *v1 = *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_21()
{

  return CMBaseObjectGetVTable();
}

void FigCoreAnimationRendererInvalidate(uint64_t a1)
{
  if (a1 && !*(a1 + 16))
  {
    v2 = objc_autoreleasePoolPush();
    *(a1 + 16) = 1;
    [MEMORY[0x1E6977FE8] setCurrentContext:*(a1 + 104)];
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setDisableActions:1];
    [*(a1 + 96) setLayer:0];
    [MEMORY[0x1E6979518] commit];
    v3 = *(a1 + 96);
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 96) = 0;
    glDeleteTextures(1, (a1 + 112));
    if (*(a1 + 104))
    {
      v4 = [MEMORY[0x1E6977FE8] currentContext];
      v5 = *(a1 + 104);
      if (v4 == v5)
      {
        [MEMORY[0x1E6977FE8] setCurrentContext:0];
        v5 = *(a1 + 104);
      }

      if (v5)
      {
        CFRelease(v5);
      }

      *(a1 + 104) = 0;
    }

    CGColorSpaceRelease(*(a1 + 72));
    *(a1 + 72) = 0;
    v6 = *(a1 + 80);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 80) = 0;
    }

    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
    CFRelease(*(a1 + 24));
    *(a1 + 24) = 0;
    v7 = *(a1 + 48);
    if (v7)
    {
      Count = CFArrayGetCount(v7);
      if (Count >= 1)
      {
        v9 = Count;
        for (i = 0; i != v9; ++i)
        {
          [CFArrayGetValueAtIndex(*(a1 + 48) i)];
        }
      }

      CFRelease(*(a1 + 48));
      *(a1 + 48) = 0;
    }

    v11 = *(a1 + 56);
    if (v11)
    {
      v12 = CFArrayGetCount(v11);
      if (v12 >= 1)
      {
        v13 = v12;
        for (j = 0; j != v13; ++j)
        {
          CFArrayGetValueAtIndex(*(a1 + 56), j);
          CAImageQueueFlush();
          CAImageQueueCollect();
        }
      }

      CFRelease(*(a1 + 56));
      *(a1 + 56) = 0;
    }

    [*(a1 + 88) setLayer:0];
    v15 = *(a1 + 88);
    if (v15)
    {
      CFRelease(v15);
    }

    *(a1 + 88) = 0;
    [MEMORY[0x1E6979518] commit];
    v16 = *(a1 + 64);
    if (v16)
    {
      CVPixelBufferPoolRelease(v16);
      *(a1 + 64) = 0;
    }

    v17 = *(a1 + 120);
    if (v17)
    {
      CFRelease(v17);
    }

    *(a1 + 120) = 0;
    v18 = *(a1 + 128);
    if (v18)
    {
      CFRelease(v18);
    }

    *(a1 + 128) = 0;
    v19 = *(a1 + 40);
    if (v19)
    {
      CFRelease(v19);
    }

    *(a1 + 40) = 0;

    objc_autoreleasePoolPop(v2);
  }
}

uint64_t RegisterFCARType()
{
  result = _CFRuntimeRegisterClass();
  sFCARID = result;
  return result;
}

uint64_t FigCoreAnimationRendererCreate(const __CFAllocator *a1, const __CFDictionary *a2, uint64_t a3, const __CFArray *a4, const __CFDictionary *a5, uint64_t *a6)
{
  valuePtr[0] = 1111970369;
  v13 = objc_autoreleasePoolPush();
  v59 = 0;
  if (!a6)
  {
    emitter = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954975, "<<<< FCAR >>>>", 1058, v6);
LABEL_19:
    m11_low = v28;
    goto LABEL_20;
  }

  if (!a2)
  {
    v29 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, 4294954975, "<<<< FCAR >>>>", 1064, v6);
    goto LABEL_19;
  }

  if (!a3)
  {
    v30 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, 4294954975, "<<<< FCAR >>>>", 1070, v6);
    goto LABEL_19;
  }

  MEMORY[0x19A8D3660](&sRegisterFCARTypeOnce, RegisterFCARType);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    v31 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, 4294954974, "<<<< FCAR >>>>", 1077, v6);
    goto LABEL_19;
  }

  v15 = Instance;
  *(Instance + 144) = 0x7FFFFFFFLL;
  *(Instance + 176) = 0x7FFFFFFFLL;
  MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, a2);
  if (!MutableCopy)
  {
    FigCoreAnimationRendererCreate_cold_13(&v58);
    goto LABEL_70;
  }

  allocator = *MEMORY[0x1E695E480];
  v17 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
  CFDictionarySetValue(MutableCopy, *MEMORY[0x1E6966130], v17);
  CFRelease(v17);
  Value = CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E6966208]);
  if (!Value)
  {
    FigCoreAnimationRendererCreate_cold_12(&v58);
    goto LABEL_70;
  }

  CFNumberGetValue(Value, kCFNumberIntType, (v15 + 32));
  v19 = CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69660B8]);
  if (!v19)
  {
    FigCoreAnimationRendererCreate_cold_11(&v58);
    goto LABEL_70;
  }

  CFNumberGetValue(v19, kCFNumberIntType, (v15 + 36));
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  v20 = *MEMORY[0x1E695E4D0];
  v56 = *MEMORY[0x1E697A020];
  [MEMORY[0x1E6979518] setValue:? forKey:?];
  v21 = CFRetain([MEMORY[0x1E6979398] layer]);
  *(v15 + 24) = v21;
  [v21 addSublayer:a3];
  [*(v15 + 24) setFrame:{0.0, 0.0, *(v15 + 32), *(v15 + 36)}];
  v22 = *(v15 + 24);
  CATransform3DMakeScale(&v58, 1.0, -1.0, 1.0);
  [v22 setSublayerTransform:&v58];
  [MEMORY[0x1E6979518] commit];
  v23 = fcar_ensureBufferAttributesCompatibleWithHWProcessing(MutableCopy, v15 + 40);
  if (v23)
  {
    goto LABEL_75;
  }

  if (!a4)
  {
    goto LABEL_26;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a4, 0);
  if (!ValueAtIndex)
  {
    goto LABEL_26;
  }

  v25 = CFGetTypeID(ValueAtIndex);
  if (v25 == CAImageQueueGetTypeID())
  {
    v26 = 56;
LABEL_25:
    *(v15 + v26) = CFRetain(a4);
    goto LABEL_26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = 48;
    goto LABEL_25;
  }

LABEL_26:
  v34 = allocator;
  if (*(v15 + 48))
  {
    v35 = CFGetAllocator(v15);
    Mutable = CFArrayCreateMutable(v35, 0, MEMORY[0x1E695E9C0]);
    *(v15 + 56) = Mutable;
    if (Mutable)
    {
      Count = CFArrayGetCount(*(v15 + 48));
      [MEMORY[0x1E6979518] begin];
      if (!pthread_main_np())
      {
        [MEMORY[0x1E6979518] activateBackground:1];
      }

      [MEMORY[0x1E6979518] setValue:v20 forKey:v56];
      if (Count < 1)
      {
LABEL_34:
        m11_low = 0;
      }

      else
      {
        v38 = 0;
        while (1)
        {
          v39 = CAImageQueueCreate();
          if (!v39)
          {
            break;
          }

          v40 = v39;
          CAImageQueueSetFlags();
          [CFArrayGetValueAtIndex(*(v15 + 48) v38)];
          CFArrayAppendValue(*(v15 + 56), v40);
          CFRelease(v40);
          if (Count == ++v38)
          {
            goto LABEL_34;
          }
        }

        FigCoreAnimationRendererCreate_cold_1(&v58);
        m11_low = LODWORD(v58.m11);
      }

      [MEMORY[0x1E6979518] commit];
      [MEMORY[0x1E6979518] synchronize];
    }

    else
    {
      FigCoreAnimationRendererCreate_cold_2(&v58);
      m11_low = LODWORD(v58.m11);
    }

    v34 = allocator;
    if (m11_low)
    {
      goto LABEL_71;
    }
  }

  if (!*(v15 + 56) && !*(v15 + 48))
  {
    goto LABEL_41;
  }

  v23 = VTPixelTransferSessionCreate(v34, (v15 + 120));
  if (v23)
  {
LABEL_75:
    m11_low = v23;
    goto LABEL_71;
  }

  v41 = CFArrayCreateMutable(v34, 0, MEMORY[0x1E695E9C0]);
  *(v15 + 128) = v41;
  if (!v41)
  {
    FigCoreAnimationRendererCreate_cold_3(&v58);
    goto LABEL_70;
  }

LABEL_41:
  v42 = MEMORY[0x1E6965CE8];
  if (!a5 || (*(v15 + 88) = CFDictionaryGetValue(a5, @"RenderCAContext"), (v43 = CFDictionaryGetValue(a5, @"DestinationColorAttachments")) == 0))
  {
    v49 = (v15 + 72);
    if (*(v15 + 72))
    {
LABEL_52:
      v50 = CFDictionaryCreateMutable(v34, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(v15 + 80) = v50;
      if (!v50)
      {
        FigCoreAnimationRendererCreate_cold_7(&v58);
        goto LABEL_70;
      }

      goto LABEL_53;
    }

LABEL_51:
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    *v49 = DeviceRGB;
    if (!DeviceRGB)
    {
      FigCoreAnimationRendererCreate_cold_10(&v58);
      goto LABEL_70;
    }

    goto LABEL_52;
  }

  v44 = v43;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v44))
  {
    FigCoreAnimationRendererCreate_cold_4(&v58);
    goto LABEL_70;
  }

  v46 = CFDictionaryGetValue(v44, *v42);
  if (v46)
  {
    v47 = v46;
    v48 = CGColorSpaceGetTypeID();
    if (v48 != CFGetTypeID(v47))
    {
      FigCoreAnimationRendererCreate_cold_5(&v58);
      goto LABEL_70;
    }

    *(v15 + 72) = CFRetain(v47);
    v34 = allocator;
  }

  v49 = (v15 + 72);
  if (!*(v15 + 72))
  {
    goto LABEL_51;
  }

  v50 = CFDictionaryCreateMutableCopy(v34, 0, v44);
  *(v15 + 80) = v50;
  if (!v50)
  {
    FigCoreAnimationRendererCreate_cold_6(&v58);
LABEL_70:
    m11_low = LODWORD(v58.m11);
    goto LABEL_71;
  }

LABEL_53:
  CFDictionarySetValue(v50, *v42, *(v15 + 72));
  CFGetAllocator(v15);
  v23 = VTCreatePixelBufferPoolAttributesWithName();
  if (v23)
  {
    goto LABEL_75;
  }

  v52 = CFGetAllocator(v15);
  v53 = CVPixelBufferPoolCreate(v52, v59, *(v15 + 40), (v15 + 64));
  if (v53)
  {
    FigCoreAnimationRendererCreate_cold_9(v53, &v58);
    goto LABEL_70;
  }

  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setValue:v20 forKey:v56];
  v54 = *(v15 + 88);
  if (v54)
  {
    CFRetain(v54);
    v55 = *(v15 + 88);
    if (v55)
    {
      goto LABEL_59;
    }

LABEL_64:
    FigCoreAnimationRendererCreate_cold_8(&v58);
    goto LABEL_70;
  }

  v55 = [MEMORY[0x1E6979320] localContext];
  if (v55)
  {
    v55 = CFRetain(v55);
  }

  *(v15 + 88) = v55;
  if (!v55)
  {
    goto LABEL_64;
  }

LABEL_59:
  [v55 setColorSpace:*(v15 + 72)];
  [MEMORY[0x1E6979518] commit];
  [MEMORY[0x1E6979518] flush];
  m11_low = fcar_setupGLESRenderer(v15);
  if (!m11_low)
  {
    *a6 = v15;
    goto LABEL_72;
  }

LABEL_71:
  CFRelease(v15);
LABEL_72:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

LABEL_20:
  if (v59)
  {
    CFRelease(v59);
  }

  objc_autoreleasePoolPop(v13);
  return m11_low;
}

uint64_t fcar_ensureBufferAttributesCompatibleWithHWProcessing(CFDictionaryRef theDict, uint64_t a2)
{
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
  if (MutableCopy)
  {
    v3 = MutableCopy;
    FigGetAlignmentForIOSurfaceOutput();
    v4 = *MEMORY[0x1E6966140];
    if (!CFDictionaryGetValue(v3, *MEMORY[0x1E6966140]))
    {
      fcar_addNumberToDictionary(v3, v4, 0);
    }

    v5 = *MEMORY[0x1E6966020];
    if (!CFDictionaryGetValue(v3, *MEMORY[0x1E6966020]))
    {
      fcar_addNumberToDictionary(v3, v5, 0);
    }

    PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport();
    CFRelease(v3);
  }

  else
  {
    fcar_ensureBufferAttributesCompatibleWithHWProcessing_cold_1(&v8);
    return v8;
  }

  return PixelBufferAttributesWithIOSurfaceSupport;
}

uint64_t fcar_setupGLESRenderer(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E6977FE8]) initWithAPI:3];
  *(a1 + 104) = v2;
  if (v2)
  {
    CFRetain(v2);
    v3 = *(a1 + 104);
  }

  else
  {
    v3 = 0;
  }

  framebuffers = 0;

  if (*(a1 + 104))
  {
    [MEMORY[0x1E6977FE8] setCurrentContext:?];
    v4 = *(a1 + 104);
    v12[0] = 2;
    if ([v4 setParameter:608 to:v12])
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, framebuffers, v12[1]);
    }

    v5 = *(a1 + 32);
    v6 = *(a1 + 36);
    glGenTextures(1, (a1 + 112));
    glBindTexture(0xDE1u, *(a1 + 112));
    glTexParameteri(0xDE1u, 0x2801u, 9728);
    glTexParameteri(0xDE1u, 0x2800u, 9728);
    glTexParameteri(0xDE1u, 0x2802u, 33071);
    glTexParameteri(0xDE1u, 0x2803u, 33071);
    glGenFramebuffers(1, &framebuffers);
    glBindFramebuffer(0x8D40u, framebuffers);
    glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, *(a1 + 112), 0);
    glViewport(0, 0, v5, v6);
    v7 = [MEMORY[0x1E6979428] rendererWithEAGLContext:*(a1 + 104) options:0];
    *(a1 + 96) = v7;
    if (v7)
    {
      CFRetain(v7);
      [MEMORY[0x1E6979518] begin];
      if (!pthread_main_np())
      {
        [MEMORY[0x1E6979518] activateBackground:1];
      }

      [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
      [*(a1 + 96) setLayer:*(a1 + 24)];
      [*(a1 + 96) setBounds:{0.0, 0.0, v5, v6}];
      [MEMORY[0x1E6979518] commit];
      v8 = 0;
    }

    else
    {
      v8 = 4294954973;
    }
  }

  else
  {
    v8 = 4294954974;
  }

  [MEMORY[0x1E6977FE8] setCurrentContext:0];
  return v8;
}

void FigCoreAnimationRendererCopyProperty(uint64_t a1, CFTypeRef cf1, uint64_t a3, CFDictionaryRef *a4)
{
  if (*(a1 + 16))
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954970, "<<<< FCAR >>>>", 1355, v4);
  }

  else if (CFEqual(cf1, @"FCARPerformanceDictionary"))
  {
    fcar_copyPerformanceDictionary(a1, a4);
  }
}

void fcar_copyPerformanceDictionary(uint64_t a1, CFDictionaryRef *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    *keys = 0u;
    v24 = 0u;
    *values = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = (a1 + 160);
    v4 = *(a1 + 160);
    valuePtr = 0.0;
    v6 = *MEMORY[0x1E695E480];
    if (v4 < 1)
    {
      v7 = 0;
    }

    else
    {
      valuePtr = (*(a1 + 152) / (v4 * 1000000.0));
      keys[0] = @"AverageCoreAnimationRendererConversionTime";
      values[0] = CFNumberCreate(v6, kCFNumberDoubleType, &valuePtr);
      valuePtr = (*(a1 + 136) / 1000000.0);
      keys[1] = @"MaxCoreAnimationRendererConversionTime";
      values[1] = CFNumberCreate(v6, kCFNumberDoubleType, &valuePtr);
      valuePtr = (*(a1 + 144) / 1000000.0);
      *&v24 = @"MinCoreAnimationRendererConversionTime";
      *&v14 = CFNumberCreate(v6, kCFNumberDoubleType, &valuePtr);
      v7 = 3;
    }

    keys[v7] = @"NumberOfCoreAnimationRendererConversions";
    values[v7] = CFNumberCreate(v6, kCFNumberIntType, v5);
    v8 = v7 + 1;
    v9 = *(a1 + 192);
    if (v9 >= 1)
    {
      valuePtr = (*(a1 + 184) / (v9 * 1000000.0));
      keys[v8] = @"AverageCoreAnimationRendererRenderingTime";
      values[v8] = CFNumberCreate(v6, kCFNumberDoubleType, &valuePtr);
      valuePtr = (*(a1 + 168) / 1000000.0);
      keys[v7 + 2] = @"MaxCoreAnimationRendererRenderingTime";
      values[v7 + 2] = CFNumberCreate(v6, kCFNumberDoubleType, &valuePtr);
      valuePtr = (*(a1 + 176) / 1000000.0);
      keys[v7 + 3] = @"MinCoreAnimationRendererRenderingTime";
      values[v7 + 3] = CFNumberCreate(v6, kCFNumberDoubleType, &valuePtr);
      v8 = v7 | 4;
    }

    v10 = v8;
    v11 = values;
    *a2 = CFDictionaryCreate(v6, keys, values, v8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    do
    {
      if (*v11)
      {
        CFRelease(*v11);
      }

      ++v11;
      --v10;
    }

    while (v10);
  }
}

void FigCoreAnimationRendererSetProperty(uint64_t a1)
{
  if (*(a1 + 16))
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954970, "<<<< FCAR >>>>", 1385, v1);
  }
}

uint64_t FigCoreAnimationRendererCopyPixelBufferAtTime(uint64_t a1, CMTime *a2, const __CFArray *a3, CVPixelBufferRef *a4, CMTime *a5)
{
  pixelBufferOut = 0;
  v10 = objc_autoreleasePoolPush();
  if (!a4)
  {
    FigCoreAnimationRendererCopyPixelBufferAtTime_cold_5(&poolOut);
LABEL_117:
    v15 = 0;
    goto LABEL_118;
  }

  v11 = CFGetAllocator(a1);
  value_low = CVPixelBufferPoolCreatePixelBuffer(v11, *(a1 + 64), &pixelBufferOut);
  v13 = pixelBufferOut;
  if (value_low)
  {
    v14 = 1;
  }

  else
  {
    v14 = pixelBufferOut == 0;
  }

  if (v14)
  {
    v15 = 0;
    if (pixelBufferOut)
    {
      goto LABEL_120;
    }

    goto LABEL_122;
  }

  CVPixelBufferGetPixelFormatType(pixelBufferOut);
  Width = CVPixelBufferGetWidth(pixelBufferOut);
  Height = CVPixelBufferGetHeight(pixelBufferOut);
  CVBufferSetAttachments(pixelBufferOut, *(a1 + 80), kCVAttachmentMode_ShouldPropagate);
  v96 = a5;
  if (!a3)
  {
    v91 = Height;
    v92 = Width;
    v93 = a2;
    v15 = 0;
    goto LABEL_87;
  }

  Count = CFArrayGetCount(a3);
  v19 = *(a1 + 56);
  if (!v19)
  {
    FigCoreAnimationRendererCopyPixelBufferAtTime_cold_4(&poolOut);
    goto LABEL_117;
  }

  if (Count > CFArrayGetCount(v19))
  {
    FigCoreAnimationRendererCopyPixelBufferAtTime_cold_3(&poolOut);
    goto LABEL_117;
  }

  allocator = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    v15 = 0;
    value_low = 4294954974;
    goto LABEL_119;
  }

  v21 = Mutable;
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  v91 = Height;
  v92 = Width;
  v93 = a2;
  v98 = v21;
  v84 = a4;
  v85 = v10;
  [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
  v22 = *(a1 + 56);
  v23 = *(a1 + 120);
  v95 = *(a1 + 128);
  v24 = CFArrayGetCount(a3);
  theArray = v22;
  v25 = CFArrayGetCount(v22);
  if (v24 >= v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = v24;
  }

  if (v26 < 1)
  {
LABEL_82:
    v30 = 0;
    value_low = 0;
    goto LABEL_86;
  }

  session = v23;
  v27 = 0;
  key = *MEMORY[0x1E6966208];
  v97 = *MEMORY[0x1E69660B8];
  v86 = *MEMORY[0x1E6966130];
  v87 = v26;
  v88 = v25 - 1;
  v89 = v24 - 1;
  v94 = a3;
  v28 = v95;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a3, v27);
    if (!ValueAtIndex)
    {
      goto LABEL_73;
    }

    v30 = ValueAtIndex;
    v31 = CFGetTypeID(ValueAtIndex);
    if (v31 != CVPixelBufferGetTypeID())
    {
      goto LABEL_73;
    }

    ID = 0;
    CVPixelBufferGetWidth(v30);
    CVPixelBufferGetHeight(v30);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v30);
    v33 = PixelFormatType;
    if (PixelFormatType == 32 || PixelFormatType == 1111970369 || (PixelFormatType & 0xFFFFFFEF) == 0x34323066 && (v34 = PixelFormatType, IOSurface = CVPixelBufferGetIOSurface(v30), v33 = v34, IOSurface))
    {
      v100 = v33;
      CVPixelBufferRetain(v30);
      goto LABEL_59;
    }

    v100 = 1111970369;
    v105 = 0;
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    poolOut.value = 0;
    v36 = CVPixelBufferGetWidth(v30);
    v90 = CVPixelBufferGetHeight(v30);
    v107 = 0;
    v108 = 0;
    v37 = CFArrayGetCount(v28);
    if (v37 < 1)
    {
      goto LABEL_131;
    }

    v38 = v37;
    v39 = 0;
    while (1)
    {
      valuePtr[0] = 0;
      v40 = CFArrayGetValueAtIndex(v28, v39);
      poolOut.value = v40;
      PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(v40);
      valuePtr[0] = 0;
      Value = CFDictionaryGetValue(PixelBufferAttributes, key);
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberIntType, valuePtr);
        if (valuePtr[0] == v36)
        {
          valuePtr[0] = 0;
          v43 = CFDictionaryGetValue(PixelBufferAttributes, v97);
          if (v43)
          {
            CFNumberGetValue(v43, kCFNumberIntType, valuePtr);
            if (valuePtr[0] == v90)
            {
              valuePtr[0] = 0;
              v44 = CFDictionaryGetValue(PixelBufferAttributes, v86);
              if (v44)
              {
                v45 = v44;
                v46 = CFGetTypeID(v44);
                if (v46 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v45, kCFNumberIntType, valuePtr);
                  if (valuePtr[0] == 1111970369)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }

      poolOut.value = 0;
      if (v38 == ++v39)
      {
        goto LABEL_37;
      }
    }

    if (v40)
    {
      CVPixelBufferPoolRetain(v40);
      a3 = v94;
      v47 = allocator;
    }

    else
    {
LABEL_131:
    {
LABEL_37:
      v47 = allocator;
      v48 = VTCreatePixelBufferPoolAttributesWithName();
      if (v48)
      {
        value_low = v48;
        a3 = v94;
        goto LABEL_47;
      }

      v49 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v49)
      {
        v50 = v49;
        fcar_addNumberToDictionary(v49, v86, 1111970369);
        fcar_addNumberToDictionary(v50, key, v36);
        fcar_addNumberToDictionary(v50, v97, v90);
        value_low = fcar_ensureBufferAttributesCompatibleWithHWProcessing(v50, &v108);
        CFRelease(v50);
      }

      else
      {
        FigCoreAnimationRendererCopyPixelBufferAtTime_cold_1(valuePtr);
        value_low = valuePtr[0];
      }

      a3 = v94;
      if (value_low)
      {
        goto LABEL_47;
      }

      v51 = CVPixelBufferPoolCreate(allocator, 0, v108, &poolOut);
      if (v51)
      {
        goto LABEL_46;
      }
    }

      CFArrayAppendValue(v28, poolOut.value);
      v40 = poolOut.value;
    }

    v51 = CVPixelBufferPoolCreatePixelBuffer(v47, v40, &v105);
    if (!v51)
    {
      if (!v105)
      {
        value_low = 0;
        goto LABEL_47;
      }

      v51 = VTPixelTransferSessionTransferImage(session, v30, v105);
    }

LABEL_46:
    value_low = v51;
LABEL_47:
    CVPixelBufferPoolRelease(poolOut.value);
    if (v108)
    {
      CFRelease(v108);
    }

    if (v107)
    {
      CFRelease(v107);
    }

    if (value_low)
    {
      CVPixelBufferRelease(v105);
      v105 = 0;
    }

    v52 = (FigGetUpTimeNanoseconds() - UpTimeNanoseconds) / 1000;
    ++*(a1 + 160);
    *(a1 + 152) += v52;
    v53 = *(a1 + 144);
    if (v53 >= v52)
    {
      v53 = v52;
    }

    if (*(a1 + 136) > v52)
    {
      v52 = *(a1 + 136);
    }

    *(a1 + 136) = v52;
    *(a1 + 144) = v53;
    if (value_low)
    {
      v30 = 0;
      goto LABEL_86;
    }

    v30 = v105;
LABEL_59:
    v54 = v88;
    if (v27 != v89)
    {
      v54 = v27;
    }

    if (v27 <= v54)
    {
      break;
    }

LABEL_72:
    CVPixelBufferRelease(v30);
    a3 = v94;
    v28 = v95;
    v26 = v87;
LABEL_73:
    if (++v27 == v26)
    {
      goto LABEL_82;
    }
  }

  v55 = v54 + 1;
  v56 = v27;
  while (1)
  {
    CFArrayGetValueAtIndex(theArray, v56);
    CAImageQueueSetSize();
    v57 = CVPixelBufferGetIOSurface(v30);
    if (!v57)
    {
      break;
    }

    ID = IOSurfaceGetID(v57);
LABEL_69:
    CVPixelBufferRetain(v30);
    if ((CAImageQueueInsertImage() & 1) == 0)
    {
      CVPixelBufferRelease(v30);
    }

    if (v55 == ++v56)
    {
      goto LABEL_72;
    }
  }

  if (v100 != 1111970369 && v100 != 32)
  {
    goto LABEL_85;
  }

  CVPixelBufferLockBaseAddress(v30, 0);
  CVPixelBufferGetBaseAddress(v30);
  CVPixelBufferGetBytesPerRow(v30);
  ID = CAImageQueueRegisterBuffer();
  if (ID)
  {
    v58 = CFNumberCreate(allocator, kCFNumberSInt64Type, &ID);
    CFArrayAppendValue(v98, v58);
    CFRelease(v58);
    goto LABEL_69;
  }

  CVPixelBufferUnlockBaseAddress(v30, 0);
LABEL_85:
  value_low = 4294954975;
  a3 = v94;
LABEL_86:
  CVPixelBufferRelease(v30);
  [MEMORY[0x1E6979518] commit];
  [MEMORY[0x1E6979518] flush];
  [MEMORY[0x1E6979518] synchronize];
  a4 = v84;
  v10 = v85;
  v15 = v98;
  if (value_low)
  {
    goto LABEL_119;
  }

LABEL_87:
  [MEMORY[0x1E6977FE8] setCurrentContext:*(a1 + 104)];
  v59 = CVPixelBufferGetIOSurface(pixelBufferOut);
  if (v59)
  {
    v60 = v59;
    PixelFormat = IOSurfaceGetPixelFormat(v59);
    WidthOfPlane = IOSurfaceGetWidthOfPlane(v60, 0);
    HeightOfPlane = IOSurfaceGetHeightOfPlane(v60, 0);
    if (PixelFormat == 1111970369)
    {
      v64 = HeightOfPlane;
      glBindTexture(0xDE1u, *(a1 + 112));
      BYTE4(v81) = 0;
      LODWORD(v81) = 0;
      if ([*(a1 + 104) texImageIOSurface:v60 target:3553 internalFormat:6408 width:WidthOfPlane height:v64 format:32993 type:33639 plane:v81 invert:?])
      {
        v65 = *(a1 + 112);
        glTexParameteri(0xDE1u, 0x2801u, 9728);
        glTexParameteri(0xDE1u, 0x2800u, 9728);
        glTexParameteri(0xDE1u, 0x2802u, 33071);
        glTexParameteri(0xDE1u, 0x2803u, 33071);
        goto LABEL_91;
      }

      value_low = 4294954973;
LABEL_119:
      v13 = pixelBufferOut;
      if (pixelBufferOut)
      {
LABEL_120:
        CVPixelBufferRelease(v13);
        goto LABEL_121;
      }

      goto LABEL_122;
    }

    v78 = 1844;
  }

  else
  {
    v78 = 1829;
  }

  if (!FigCoreAnimationRendererCopyPixelBufferAtTime_cold_2(v78, &poolOut))
  {
LABEL_118:
    value_low = LODWORD(poolOut.value);
    goto LABEL_119;
  }

  v65 = 0;
LABEL_91:
  glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, v65, 0);
  v66 = FigGetUpTimeNanoseconds();
  glClearColor(0.0, 0.0, 0.0, 0.0);
  glClear(0x4000u);
  v67 = *(a1 + 96);
  poolOut = *v93;
  [v67 beginFrameAtTime:0 timeStamp:CMTimeGetSeconds(&poolOut)];
  [*(a1 + 96) addUpdateRect:{0.0, 0.0, v92, v91}];
  [*(a1 + 96) render];
  glFlush();
  glFinish();
  v68 = FigGetUpTimeNanoseconds();
  v69 = (v68 - v66) / 1000;
  ++*(a1 + 192);
  *(a1 + 184) += v69;
  v70 = *(a1 + 176);
  if (v70 >= v69)
  {
    v70 = (v68 - v66) / 1000;
  }

  if (*(a1 + 168) > v69)
  {
    v69 = *(a1 + 168);
  }

  *(a1 + 168) = v69;
  *(a1 + 176) = v70;
  if (v96)
  {
    [*(a1 + 96) nextFrameTime];
    CMTimeMakeWithSeconds(&poolOut, v71, 1000);
    *v96 = poolOut;
  }

  [*(a1 + 96) endFrame];
  if (a3)
  {
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
    v72 = *(a1 + 56);
    if (v72)
    {
      v73 = CFArrayGetCount(v72);
      if (v73 >= 1)
      {
        v74 = v73;
        for (i = 0; i != v74; ++i)
        {
          v76 = CFArrayGetValueAtIndex(*(a1 + 56), i);
          CAImageQueueFlush();
          CAImageQueueCollect();
          if (v15)
          {
            if (i < CFArrayGetCount(v15))
            {
              v77 = CFArrayGetValueAtIndex(v15, i);
              if (v77)
              {
                poolOut.value = 0;
                CFNumberGetValue(v77, kCFNumberSInt64Type, &poolOut);
                if (poolOut.value)
                {
                  MEMORY[0x19A8CC3C0](v76);
                }
              }
            }
          }
        }
      }
    }

    [MEMORY[0x1E6979518] commit];
    [MEMORY[0x1E6979518] synchronize];
  }

  value_low = 0;
  *a4 = pixelBufferOut;
LABEL_121:
  pixelBufferOut = 0;
LABEL_122:
  if (v15)
  {
    CFRelease(v15);
  }

  [MEMORY[0x1E6977FE8] setCurrentContext:0];
  v79 = *(a1 + 128);
  if (v79)
  {
    v110.length = CFArrayGetCount(*(a1 + 128));
    v110.location = 0;
    CFArrayApplyFunction(v79, v110, fcar_flushConversionPool, 0);
  }

  CVPixelBufferPoolFlush(*(a1 + 64), 0);
  objc_autoreleasePoolPop(v10);
  return value_low;
}

double fcarInit(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

CFTypeRef fcarCopyFormattingDesc(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return CFRetain(@"[FCAR (invalidated)]");
  }

  else
  {
    return CFRetain(@"[FCAR]");
  }
}

__CFString *fcarCopyDebugDesc(_BYTE *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  cf = 0;
  v4 = CFGetRetainCount(a1);
  if (a1[16])
  {
    v5 = " (invalidated)";
  }

  else
  {
    v5 = "";
  }

  v6 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"FCAR %p retainCount: %ld%s allocator: %p\n", a1, v4, v5, v6);
  fcar_copyPerformanceDictionary(a1, &cf);
  if (cf)
  {
    CFStringAppendFormat(Mutable, 0, @", performanceDictionary %@", cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return Mutable;
}

void fcar_addNumberToDictionary(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(a1, a2, v5);
    CFRelease(v6);
  }
}

void fcar_releaseCVPixelBufferCallback(int a1, int a2, CVPixelBufferRef texture)
{
  if (texture)
  {
    CVPixelBufferRelease(texture);
  }
}

uint64_t FigRemote_StartCARenderServerAndReturnPort(_DWORD *a1)
{
  if (!a1)
  {
    return 1;
  }

  FigAtomicIncrement32();
  if (CARenderServerIsRunning() & 1) != 0 || (MEMORY[0x19A8CC550]())
  {
    v2 = MEMORY[0x19A8CC520]();
    result = 0;
    *a1 = v2;
  }

  else
  {
    if (FigAtomicDecrement32() <= 0)
    {
      MEMORY[0x19A8CC540]();
    }

    return 1;
  }

  return result;
}

uint64_t FigRemote_CreateLocalCAContext(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E6979320] localContext];
  if (v3)
  {
    v4 = 0;
    *a1 = v3;
  }

  else
  {
    v4 = 1;
  }

  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t FigRemote_CreateCAImageQueuesAndSlotIDs(int a1, void *a2, __CFArray **a3, __CFArray **a4)
{
  valuePtr = 0;
  v8 = objc_autoreleasePoolPush();
  v9 = 1;
  if (a2 && a3 && a4)
  {
    v10 = *MEMORY[0x1E695E480];
    v11 = MEMORY[0x1E695E9C0];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v13 = CFArrayCreateMutable(v10, 0, v11);
    v14 = v13;
    if (Mutable)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      [MEMORY[0x1E6979518] begin];
      if (!pthread_main_np())
      {
        [MEMORY[0x1E6979518] activateBackground:1];
      }

      [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
      if (a1 < 1)
      {
LABEL_13:
        v9 = 0;
        *a3 = Mutable;
        *a4 = v14;
        Mutable = 0;
        v14 = 0;
      }

      else
      {
        while (1)
        {
          v9 = 1;
          v16 = CAImageQueueCreate();
          if (!v16)
          {
            break;
          }

          v17 = v16;
          CAImageQueueSetFlags();
          v18 = [a2 createSlot];
          valuePtr = v18;
          [a2 setObject:v17 forSlot:v18];
          CFArrayAppendValue(Mutable, v17);
          CFRelease(v17);
          v19 = CFNumberCreate(v10, kCFNumberSInt32Type, &valuePtr);
          CFArrayAppendValue(v14, v19);
          CFRelease(v19);
          if (!--a1)
          {
            goto LABEL_13;
          }
        }
      }

      [MEMORY[0x1E6979518] commit];
      [MEMORY[0x1E6979518] flush];
      [MEMORY[0x1E6979518] synchronize];
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  objc_autoreleasePoolPop(v8);
  return v9;
}

uint64_t FigRemote_CreateLayerHostForRemoteContext(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 1;
  }

  v4 = objc_autoreleasePoolPush();
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
  v5 = [MEMORY[0x1E69793A8] layer];
  [v5 setContextId:a1];
  [MEMORY[0x1E6979518] commit];
  [MEMORY[0x1E6979518] flush];
  [MEMORY[0x1E6979518] synchronize];
  *a2 = v5;
  objc_autoreleasePoolPop(v4);
  return 0;
}

uint64_t FigRemote_RemoveReleaseAndClearLayerHost(id *a1)
{
  if (a1 && *a1)
  {
    v2 = objc_autoreleasePoolPush();
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
    [*a1 removeFromSuperlayer];

    *a1 = 0;
    [MEMORY[0x1E6979518] commit];
    objc_autoreleasePoolPop(v2);
  }

  return 0;
}

uint64_t FigRemote_RemoveReleaseAndClearCAImageQueuesAndSlotIDs(void *a1, CFTypeRef *a2, CFArrayRef *a3)
{
  valuePtr = 0;
  v6 = objc_autoreleasePoolPush();
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
  Count = CFArrayGetCount(*a3);
  if (Count >= 1)
  {
    v8 = Count;
    for (i = 0; i != v8; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*a3, i);
      if (ValueAtIndex)
      {
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        [a1 deleteSlot:valuePtr];
      }

      valuePtr = 0;
    }
  }

  if (*a3)
  {
    CFRelease(*a3);
  }

  *a3 = 0;
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a2 = 0;
  [MEMORY[0x1E6979518] commit];
  objc_autoreleasePoolPop(v6);
  return 0;
}

uint64_t FigRemote_ReleaseAndClearLocalCAContextAndShutDownCAServer(id *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1 && *a1)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigRemote_ReleaseAndClearLocalCAContextAndShutDownCAServer_block_invoke;
    v6[3] = &unk_1E7482608;
    v6[4] = a2;
    [MEMORY[0x1E6979518] addCommitHandler:v6 forPhase:5];
    [*a1 invalidate];

    [MEMORY[0x1E6979518] commit];
    *a1 = 0;
  }

  else if (FigAtomicDecrement32() <= 0)
  {
    MEMORY[0x19A8CC540]();
  }

  objc_autoreleasePoolPop(v4);
  return 0;
}

uint64_t FigRemote_CreateRemoteCAContextAndAttachLayer(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  result = 1;
  if (a1 && a2 && a3 && a4)
  {
    v9 = objc_autoreleasePoolPush();
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
    v10 = MEMORY[0x1E695DF20];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
    v12 = [v10 dictionaryWithObjectsAndKeys:{v11, *MEMORY[0x1E69796C8], 0}];
    v13 = [MEMORY[0x1E6979320] remoteContextWithOptions:v12];
    [v13 setLayer:a2];
    *a4 = [v13 contextId];
    [MEMORY[0x1E6979518] commit];
    [MEMORY[0x1E6979518] flush];
    [MEMORY[0x1E6979518] synchronize];
    *a3 = v13;
    objc_autoreleasePoolPop(v9);
    return 0;
  }

  return result;
}

uint64_t FigRemote_InstallSlotIDsInVideoLayers(const __CFArray *a1, const __CFArray *a2)
{
  valuePtr = 0;
  v4 = objc_autoreleasePoolPush();
  Count = CFArrayGetCount(a1);
  v6 = CFArrayGetCount(a2);
  v7 = 1;
  if (Count && v6 && Count == v6)
  {
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        v10 = CFArrayGetValueAtIndex(a2, i);
        if (!v10)
        {
          break;
        }

        if (!ValueAtIndex)
        {
          break;
        }

        v11 = v10;
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        [v11 setContents:{objc_msgSend(MEMORY[0x1E6979320], "objectForSlot:", valuePtr)}];
      }
    }

    [MEMORY[0x1E6979518] commit];
    [MEMORY[0x1E6979518] flush];
    [MEMORY[0x1E6979518] synchronize];
    v7 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v7;
}

uint64_t FigRemote_RemoveSlotIDsFromVideoLayers(const __CFArray *a1)
{
  v2 = objc_autoreleasePoolPush();
  Count = CFArrayGetCount(a1);
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      [CFArrayGetValueAtIndex(a1 i)];
    }
  }

  [MEMORY[0x1E6979518] commit];
  objc_autoreleasePoolPop(v2);
  return 0;
}

uint64_t FigRemote_RemoveReleaseAndClearRemoteCAContext(id *a1, void *a2)
{
  if (a1 && *a1)
  {
    v4 = objc_autoreleasePoolPush();
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
    [a2 removeFromSuperlayer];
    [*a1 setLayer:0];
    [*a1 invalidate];

    *a1 = 0;
    [MEMORY[0x1E6979518] commit];
    objc_autoreleasePoolPop(v4);
  }

  return 0;
}

uint64_t FigRemote_DestroyCARenderServerPort(uint64_t a1)
{
  if (a1)
  {
    FigMachPortReleaseSendRight_();
  }

  return 0;
}

uint64_t FigRemote_CreatePixelBufferAndPoolAttributesDictionary(const __CFAllocator *a1, void *a2, void *a3, CFDictionaryRef *a4)
{
  keys[2] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    FigRemote_CreatePixelBufferAndPoolAttributesDictionary_cold_2(keys);
    return LODWORD(keys[0]);
  }

  keys[0] = 0;
  keys[1] = 0;
  values[0] = 0;
  values[1] = 0;
  if (a2)
  {
    keys[0] = @"PixelBufferPoolAtttributes";
    values[0] = a2;
    v5 = 1;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v5 = 0;
  if (a3)
  {
LABEL_4:
    keys[v5] = @"PixelBufferAttributes";
    values[v5++] = a3;
  }

LABEL_5:
  v6 = CFDictionaryCreate(a1, keys, values, v5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v6)
  {
    v7 = v6;
    result = 0;
    *a4 = v7;
  }

  else
  {
    FigRemote_CreatePixelBufferAndPoolAttributesDictionary_cold_1(&v9);
    return v9;
  }

  return result;
}

const void *FigRemote_CopyPixelBufferAndPoolAttributesFromDictionary(const __CFDictionary *a1, void *a2, void *a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        Value = CFDictionaryGetValue(a1, @"PixelBufferPoolAtttributes");
        *a2 = Value;
        if (Value)
        {
          CFRetain(Value);
        }

        result = CFDictionaryGetValue(a1, @"PixelBufferAttributes");
        *a3 = result;
        if (result)
        {
          CFRetain(result);
          return 0;
        }
      }

      else
      {
        FigRemote_CopyPixelBufferAndPoolAttributesFromDictionary_cold_1(&v8);
        return v8;
      }
    }

    else
    {
      FigRemote_CopyPixelBufferAndPoolAttributesFromDictionary_cold_2(&v9);
      return v9;
    }
  }

  else
  {
    FigRemote_CopyPixelBufferAndPoolAttributesFromDictionary_cold_3(&v10);
    return v10;
  }

  return result;
}

CFMutableDictionaryRef InitSharedContextPool(uint64_t a1)
{
  qword_1ED4CB698 = FigSimpleMutexCreate();
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  qword_1ED4CB6A0 = result;
  return result;
}

void FigFairPlaySharedContextLoad_EnsureFairPlayContext(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  EnsureFairPlayContext(DerivedStorage);
  if (a1)
  {

    CFRelease(a1);
  }
}

uint64_t FigFairPlaySharedContextEqual(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || !v5)
  {
    return a1 == a2;
  }

  v6 = *(v5 + 24);
  v7 = *(DerivedStorage + 24);

  return CFEqual(v7, v6);
}

uint64_t FigFairPlaySharedContextInvalidate(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    v2 = result;
    FigSimpleMutexLock();
    v3 = v2[2];
    if (v3 && !CFSetGetCount(v3))
    {
      v4 = v2[2];
      if (v4)
      {
        CFRelease(v4);
        v2[2] = 0;
      }

      FigSimpleMutexUnlock();
      dispatch_sync_f(v2[4], v2, FigFairPlaySharedContextInvalidate_FairPlay);
      if (*v2)
      {
        CFRelease(*v2);
        *v2 = 0;
      }

      result = v2[3];
      if (result)
      {
        CFRelease(result);
        result = 0;
        v2[3] = 0;
      }
    }

    else
    {
      FigSimpleMutexUnlock();
      return 4294955138;
    }
  }

  return result;
}

void FigFairPlaySharedContextFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigFairPlaySharedContextInvalidate(a1);
  FigSimpleMutexDestroy();
  v3 = *(DerivedStorage + 32);

  dispatch_release(v3);
}

__CFString *FigFairPlaySharedContextCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 0;
  }

  v2 = DerivedStorage;
  Mutable = CFStringCreateMutable(*DerivedStorage, 0);
  v4 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"<FigFPSharedContext: context<0x%x>", *(v2 + 11));
  }

  return v4;
}

uint64_t FigFairPlaySharedContextInvalidate_FairPlay(uint64_t result)
{
  v1 = result;
  if (*(result + 40))
  {
    result = *(result + 44);
    if (result)
    {
      v2 = VLxCLgDpiF(result);
      result = FAIRPLAY_CALL_LOG(v2);
      *(v1 + 44) = 0;
    }
  }

  *(v1 + 41) = 1;
  return result;
}

void EnsureFairPlayContext(uint64_t a1)
{
  v14[3] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 40) || (df35957c4e0(), FAIRPLAY_CALL_LOG(v2) == -42032))
  {
    if (!*(a1 + 41))
    {
      memset(v14, 0, 24);
      maxBufLen = 0;
      v13 = 0;
      *(a1 + 44) = 0;
      v3 = MGCopyAnswer();
      if (v3)
      {
        v4 = v3;
        Length = CFStringGetLength(v3);
        CFStringGetSystemEncoding();
        CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
        zxcm2Qme0x(CStringPtrAndBufferToFree, Length, v14);
        LODWORD(Length) = FAIRPLAY_CALL_LOG(v7);
        free(v13);
        CFRelease(v4);
        if (!Length)
        {
          v8 = CFStringGetLength(*(a1 + 24));
          v15.location = 0;
          v15.length = v8;
          if (CFStringGetBytes(*(a1 + 24), v15, 0x8000100u, 0, 0, 0, 0, &maxBufLen) >= 1)
          {
            v9 = malloc_type_malloc(maxBufLen + 2, 0xAFAB4281uLL);
            if (v9)
            {
              v10 = v9;
              v16.location = 0;
              v16.length = v8;
              CFStringGetBytes(*(a1 + 24), v16, 0x8000100u, 0, 0, v9, maxBufLen, &maxBufLen);
              v10[maxBufLen] = 0;
              v11 = XtCqEf5X(0, v14, v10, a1 + 44);
              if (FAIRPLAY_CALL_LOG(v11))
              {
                *(a1 + 44) = 0;
              }

              free(v10);
            }
          }
        }
      }

      *(a1 + 40) = 1;
    }
  }
}

uint64_t RegisterFigFairPlaySharedContextType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

void OUTLINED_FUNCTION_0_163(dispatch_once_t *a1)
{

  dispatch_once_f(a1, 0, InitSharedContextPool);
}

uint64_t FigTTMLFeatureCreate(const __CFAllocator *a1, uint64_t a2, __int128 *a3, CFTypeRef *a4)
{
  v8 = FigTTMLGetLibXMLAccess();
  if (!v8)
  {
    FigTTMLFeatureCreate_cold_4(&v16);
LABEL_15:
    v11 = 0;
LABEL_17:
    v14 = v16;
    goto LABEL_20;
  }

  if (!a4)
  {
    FigTTMLFeatureCreate_cold_3(&v16);
    goto LABEL_15;
  }

  FigTTMLNodeGetClassID();
  v9 = CMDerivedObjectCreate();
  if (v9 || (DerivedStorage = CMBaseObjectGetDerivedStorage(), v9 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a3), v9) || (v9 = FigTTMLAddCurrentElementAttributesToDictionary(a2, *(DerivedStorage + 24)), v9))
  {
    v14 = v9;
    v11 = 0;
    goto LABEL_20;
  }

  v11 = (*(v8 + 104))(a2);
  v12 = CFStringCreateWithCString(a1, v11, 0x8000100u);
  if (!v12)
  {
    FigTTMLFeatureCreate_cold_1(&v16);
    goto LABEL_17;
  }

  v13 = v12;
  if (!CFStringGetLength(v12))
  {
    FigTTMLFeatureCreate_cold_1(&v16);
    v14 = v16;
    goto LABEL_19;
  }

  v14 = FigTTMLSkipNode(a2, a3, *(DerivedStorage + 128));
  if (v14)
  {
LABEL_19:
    CFRelease(v13);
LABEL_20:
    if (!v8)
    {
      return v14;
    }

    goto LABEL_10;
  }

  *(DerivedStorage + 144) = v13;
  *a4 = 0;
LABEL_10:
  (*(v8 + 112))(v11);
  return v14;
}

void figTTMLFeature_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 136);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 136) = 0;
  }

  v3 = *(DerivedStorage + 144);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 144) = 0;
  }

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figTTMLFeature_CopyDebugDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = FigCFCopyCompactDescription();
  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"feature[%@] : %@(%@)", v2, *(DerivedStorage + 144), *(DerivedStorage + 136));
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

uint64_t figTTMLFeature_CopyChildNodeArray(const void *a1, CFMutableArrayRef *a2)
{
  if (a2)
  {
    v3 = CFGetAllocator(a1);
    Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
    result = 0;
    *a2 = Mutable;
  }

  else
  {
    figTTMLExtension_CopyChildNodeArray_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t figTTMLFeature_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 18;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    copyElementLocalName_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t FigTTMLBodyCreate(const __CFAllocator *a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  if (!a4)
  {
    FigTTMLBodyCreate_cold_2(&v16);
    return v16;
  }

  FigTTMLNodeGetClassID();
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    return v8;
  }

  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a3);
  if (v8)
  {
    return v8;
  }

  v8 = FigTTMLAddCurrentElementAttributesToDictionary(a2, *(DerivedStorage + 24));
  if (v8)
  {
    return v8;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 136) = Mutable;
  if (!Mutable)
  {
    v15 = 203;
LABEL_14:
    FigTTMLBodyCreate_cold_1(v15, &v16);
    return v16;
  }

  v11 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 144) = v11;
  if (!v11)
  {
    v15 = 206;
    goto LABEL_14;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  FigTTMLParseNode(a2, figTTMLBodyConsumeChildNode, a3);
  v13 = v12;
  if (!v12)
  {
    *a4 = 0;
  }

  return v13;
}

void figTTMLBody_Finalize()
{
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 136);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 136) = 0;
  }

  v2 = *(DerivedStorage + 144);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 144) = 0;
  }

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figTTMLBody_CopyDebugDesc()
{
  FigBytePumpGetFigBaseObject();
  CMBaseObjectGetDerivedStorage();
  v0 = FigCFCopyCompactDescription();
  v1 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"body: %@", v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t figTTMLBody_CopyChildNodeArray(uint64_t a1, uint64_t *a2)
{
  FigBytePumpGetFigBaseObject();
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    ConcatenationOfTwoArrays = FigCFArrayCreateConcatenationOfTwoArrays();
    result = 0;
    *a2 = ConcatenationOfTwoArrays;
  }

  else
  {
    figTTMLBody_CopyChildNodeArray_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t figTTMLBody_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 2;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLBody_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

const __CFDictionary *FigCPEFairPlaySupportsFormatDescription(const opaqueCMFormatDescription *a1)
{
  v5 = 0;
  result = FigFairPlayCopySinfExtensionsFromFormatDescription(a1);
  if (result)
  {
    v2 = result;
    SchemeFromSinf = FigFairPlayGetSchemeFromSinf(result, &v5);
    CFRelease(v2);
    return (!SchemeFromSinf && v5 == 1769239918);
  }

  return result;
}

uint64_t FigCPEFairPlayInitializeWithOptions(const __CFDictionary *a1, __CFString **a2)
{
  Value = CFDictionaryGetValue(a1, @"StorageURL");
  FigBytePumpGetFigBaseObject();
  if (Value)
  {
    CFRetain(Value);
  }

  else
  {
    Value = FigFairPlayCopyDefaultKeybagFolderURL();
  }

  v5 = FigFairPlaySharedContextLoad(*MEMORY[0x1E695E480], Value, a1);
  if (!v5)
  {
    *a2 = FigFairPlayCopyAbsolutePathFromURL(Value);
  }

  if (Value)
  {
    CFRelease(Value);
  }

  return v5;
}

uint64_t FigCPEFairPlayUninitialize(CFStringRef URLString)
{
  v1 = CFURLCreateWithString(*MEMORY[0x1E695E480], URLString, 0);
  v2 = FigFairPlaySharedContextUnload(v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

void FormatDescriptionFilter(const void *a1, const opaqueCMFormatDescription *a2, uint64_t a3)
{
  v6 = FigFairPlayCopySinfExtensionsFromFormatDescription(a2);
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    if (!FigFairPlayGetSchemeFromSinf(v6, &v8) && v8 == 1769239918)
    {
      if (!*(a3 + 8))
      {
        *(a3 + 8) = CFRetain(a1);
      }

      CFDictionaryAddValue(*a3, a1, a2);
    }

    CFRelease(v7);
  }
}

uint64_t FigCPEFairPlayProtectorCheckInCryptRef(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = malloc_type_malloc(0x18uLL, 0x6004082687C62uLL);
  *v6 = DerivedStorage;
  if (a2)
  {
    v7 = CFRetain(a2);
  }

  else
  {
    v7 = 0;
  }

  v6[1] = v7;
  if (a3)
  {
    v8 = CFRetain(a3);
  }

  else
  {
    v8 = 0;
  }

  v6[2] = v8;
  dispatch_async_f(*(DerivedStorage + 128), v6, CheckInCryptRef);
  return 0;
}

void CheckInCryptRef(const void **a1)
{
  v2 = *(*a1 + 15);
  if (v2)
  {
    CFDictionarySetValue(v2, a1[1], a1[2]);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

uint64_t FigCPEFairPlayProtectorCheckOutCryptRef(uint64_t a1, uint64_t a2)
{
  context[0] = CMBaseObjectGetDerivedStorage();
  context[1] = a2;
  v5 = 0;
  dispatch_sync_f(*(context[0] + 128), context, CheckOutCryptRef);
  return v5;
}

void CheckOutCryptRef(uint64_t a1)
{
  v2 = *(*a1 + 120);
  if (v2)
  {
    Value = CFDictionaryGetValue(v2, *(a1 + 8));
    *(a1 + 16) = Value;
    if (Value)
    {
      CFRetain(Value);
      v4 = *(a1 + 8);
      v5 = *(*a1 + 120);

      CFDictionaryRemoveValue(v5, v4);
    }
  }
}

uint64_t FigFairPlayCPEProtectorInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    v4 = *(DerivedStorage + 16);
    if (v4)
    {
      CFRelease(v4);
      *(v3 + 16) = 0;
    }

    v5 = *(v3 + 24);
    if (v5)
    {
      CFRelease(v5);
      *(v3 + 24) = 0;
    }

    v6 = *(v3 + 32);
    if (v6)
    {
      CFRelease(v6);
      *(v3 + 32) = 0;
    }

    v7 = *(v3 + 40);
    if (v7)
    {
      CFRelease(v7);
      *(v3 + 40) = 0;
    }

    v8 = *(v3 + 48);
    if (v8)
    {
      CFRelease(v8);
      *(v3 + 48) = 0;
    }

    v9 = *(v3 + 8);
    if (v9)
    {
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v10)
      {
        v10(v9, a1);
      }

      v11 = *(v3 + 8);
      if (v11)
      {
        CFRelease(v11);
        *(v3 + 8) = 0;
      }
    }

    if (*v3)
    {
      CFRelease(*v3);
      *v3 = 0;
    }

    v12 = *(v3 + 64);
    if (v12)
    {
      if (*(v3 + 72))
      {
        FigCPEExternalProtectionMonitorEndMonitoring(v12);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      if (*(v3 + 73))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
      }

      v13 = *(v3 + 64);
      if (v13)
      {
        CFRelease(v13);
        *(v3 + 64) = 0;
      }
    }

    v14 = *(v3 + 104);
    if (v14)
    {
      CFRelease(v14);
      *(v3 + 104) = 0;
    }

    v15 = *(v3 + 112);
    if (v15)
    {
      CFRelease(v15);
      *(v3 + 112) = 0;
    }

    if (*(v3 + 96))
    {
      FigSimpleMutexDestroy();
      *(v3 + 96) = 0;
    }

    v16 = *(v3 + 88);
    if (v16)
    {
      FigFairPlayAirPlaySessionDestroy(v16);
      *(v3 + 88) = 0;
    }

    v17 = *(v3 + 128);
    if (v17)
    {
      dispatch_sync_f(v17, v3, DisposePersistentCryptRefRepository);
    }

    v18 = *(v3 + 136);
    if (v18)
    {
      CFRelease(v18);
      *(v3 + 136) = 0;
    }
  }

  return 0;
}

void FigFairPlayCPEProtectorFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigFairPlayCPEProtectorInvalidate(a1);
  if (DerivedStorage)
  {
    v3 = *(DerivedStorage + 128);
    if (v3)
    {
      dispatch_sync_f(v3, 0, NoOp);
      v4 = *(DerivedStorage + 128);

      dispatch_release(v4);
    }
  }
}

__CFString *FigFairPlayCPEProtectorCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*DerivedStorage, 0);
  v3 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"<FigFairPlayCPEProtector: sharedContext<%@>", *(DerivedStorage + 8));
  }

  return v3;
}

uint64_t ExternalProtectionStatusChangedCallback_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t ExternalProtectionStateChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void DisposePersistentCryptRefRepository(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 120) = 0;
  }
}

uint64_t IsRental(uint64_t a1, Boolean *a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 104);
  if (!v4)
  {
    v10 = 0;
    Value = CFDictionaryGetValue(*(a1 + 32), *(a1 + 24));
    IsRentalSinf = FigFairPlayIsRentalSinf(Value, &v10);
    if (IsRentalSinf)
    {
      v8 = IsRentalSinf;
      goto LABEL_12;
    }

    if (v10)
    {
      v7 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v7 = MEMORY[0x1E695E4C0];
    }

    v4 = *v7;
    if (*v7)
    {
      v4 = CFRetain(v4);
    }

    *(a1 + 104) = v4;
  }

  v8 = 0;
  if (a2 && v4)
  {
    v8 = 0;
    *a2 = CFBooleanGetValue(v4);
  }

LABEL_12:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t FigFairPlayCPEProtectorBeginAirPlaySessionAsync(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[11])
  {
    v12 = 4294955138;
    goto LABEL_7;
  }

  v9 = DerivedStorage;
  FairPlayContext = GetFairPlayContext(DerivedStorage);
  v11 = FigFairPlayAirPlaySessionCreateWithProtectionInfo(FairPlayContext, v9[4], a2);
  v9[11] = v11;
  if (!v11)
  {
    v12 = 4294955145;
    goto LABEL_7;
  }

  v12 = FigFairPlayAirPlaySessionBeginAsync(v11, a3, a4);
  if (v12)
  {
LABEL_7:
    FigFairPlayCPEProtectorEndAirPlaySession(a1);
  }

  return v12;
}

uint64_t RegisterFigFairPlayCPEProtectorType()
{
  FigCPEProtectorGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t SetProtectionInfoValidateEntry(uint64_t key, const opaqueCMFormatDescription *a2, uint64_t a3)
{
  if (*(a3 + 8))
  {
    key = CFDictionaryGetValue(*a3, key);
    *(a3 + 8) = key != 0;
    if (key)
    {
      v6 = *(a3 + 9);
      v5 = (a3 + 9);
      if (!v6)
      {
        v7 = key;
        key = CMFormatDescriptionGetMediaType(a2);
        if (key == 1986618469)
        {

          return FigFairPlayIsHDCPRequiredSinf(v7, v5);
        }
      }
    }
  }

  return key;
}

void *OUTLINED_FUNCTION_3_123()
{

  return malloc_type_calloc(v0, 8uLL, v1);
}

CFDateRef OUTLINED_FUNCTION_5_102(const __CFAllocator *a1, double a2, double a3)
{
  v5 = *&a2 + *&a3 - v4;

  return CFDateCreate(a1, v5);
}

uint64_t figCSSStyleSheetRegisterFigCSSStyleSheet()
{
  result = _CFRuntimeRegisterClass();
  sFigCSSStyleSheetID = result;
  return result;
}

uint64_t FigCSSStyleSheetCreate(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    MEMORY[0x19A8D3660](&FigCSSStyleSheetGetTypeID_sRegisterFigCSSStyleSheetOnce, figCSSStyleSheetRegisterFigCSSStyleSheet);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v4 = Instance;
      result = 0;
      *a2 = v4;
    }

    else
    {
      FigCSSStyleSheetCreate_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    FigCSSStyleSheetCreate_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t FigCSSStyleSheetCopyRuleList(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
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

      result = 0;
      *a2 = v4;
    }

    else
    {
      FigCSSStyleSheetCopyRuleList_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    FigCSSStyleSheetCopyRuleList_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t FigCSSStyleSheetSetRuleList(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    if (cf)
    {
      v2 = *(a1 + 16);
      *(a1 + 16) = cf;
      CFRetain(cf);
      if (v2)
      {
        CFRelease(v2);
      }

      return 0;
    }

    else
    {
      FigCSSStyleSheetSetRuleList_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    FigCSSStyleSheetSetRuleList_cold_2(&v5);
    return v5;
  }
}

uint64_t figCSSRuleListRegisterFigCSSRuleList()
{
  result = _CFRuntimeRegisterClass();
  sFigCSSRuleListID = result;
  return result;
}

uint64_t FigCSSRuleListCreate(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    MEMORY[0x19A8D3660](&FigCSSRuleListGetTypeID_sRegisterFigCSSRuleListOnce, figCSSRuleListRegisterFigCSSRuleList);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v4 = Instance;
      result = 0;
      *a2 = v4;
    }

    else
    {
      FigCSSRuleListCreate_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    FigCSSRuleListCreate_cold_2(&v7);
    return v7;
  }

  return result;
}

CFIndex FigCSSRuleListGetLength(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    FigCSSRuleListGetLength_cold_1();
    return 0;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  return CFArrayGetCount(v3);
}

uint64_t FigCSSRuleListCopyRuleAtIndex(uint64_t a1, CFIndex idx, CFTypeRef *a3, _DWORD *a4)
{
  if (a1)
  {
    Count = *(a1 + 16);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (idx < 0 || Count <= idx)
    {
      FigCSSRuleListCopyRuleAtIndex_cold_2(&v13);
      return v13;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), idx);
      if (ValueAtIndex)
      {
        v10 = ValueAtIndex;
        if (a3)
        {
          *a3 = CFRetain(ValueAtIndex);
        }

        result = 0;
        if (a4)
        {
          *a4 = v10[4];
        }
      }

      else
      {
        FigCSSRuleListCopyRuleAtIndex_cold_1(&v12);
        return v12;
      }
    }
  }

  else
  {
    FigCSSRuleListCopyRuleAtIndex_cold_3(&v14);
    return v14;
  }

  return result;
}

uint64_t FigCSSRuleListAppendRule(void *cf, void *value)
{
  if (cf)
  {
    if (value)
    {
      Mutable = cf[2];
      if (Mutable || (v5 = CFGetAllocator(cf), Mutable = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]), (cf[2] = Mutable) != 0))
      {
        CFArrayAppendValue(Mutable, value);
        return 0;
      }

      else
      {
        FigCSSRuleListAppendRule_cold_1(&v7);
        return v7;
      }
    }

    else
    {
      FigCSSAtRuleParserNodeSetPrelude_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    FigCSSRuleListAppendRule_cold_3(&v9);
    return v9;
  }
}

uint64_t figCSSRuleRegisterFigCSSRule()
{
  result = _CFRuntimeRegisterClass();
  sFigCSSRuleID = result;
  return result;
}

uint64_t FigCSSRuleCreate(uint64_t a1, int a2, uint64_t *a3)
{
  if (a3)
  {
    MEMORY[0x19A8D3660](&FigCSSRuleGetTypeID_sRegisterFigCSSRuleOnce, figCSSRuleRegisterFigCSSRule);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v6 = Instance;
      result = 0;
      *(v6 + 16) = a2;
      *a3 = v6;
    }

    else
    {
      FigCSSRuleCreate_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    FigCSSRuleCreate_cold_2(&v9);
    return v9;
  }

  return result;
}

uint64_t FigCSSStyleRuleCopySelector(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 16) == 1)
      {
        v3 = *(a1 + 24);
        if (v3)
        {
          v4 = CFRetain(v3);
        }

        else
        {
          v4 = 0;
        }

        result = 0;
        *a2 = v4;
      }

      else
      {
        FigCSSStyleRuleCopySelector_cold_1(&v6);
        return v6;
      }
    }

    else
    {
      FigCSSStyleRuleCopySelector_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    FigCSSStyleRuleCopySelector_cold_3(&v8);
    return v8;
  }

  return result;
}

uint64_t FigCSSStyleRuleCopyDeclaration(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 16) == 1)
      {
        v3 = *(a1 + 32);
        if (v3)
        {
          v4 = CFRetain(v3);
        }

        else
        {
          v4 = 0;
        }

        result = 0;
        *a2 = v4;
      }

      else
      {
        FigCSSStyleRuleCopyDeclaration_cold_1(&v6);
        return v6;
      }
    }

    else
    {
      FigCSSStyleRuleCopyDeclaration_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    FigCSSStyleRuleCopyDeclaration_cold_3(&v8);
    return v8;
  }

  return result;
}

uint64_t FigCSSStyleRuleSetSelector(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    if (cf && (v4 = CFGetTypeID(cf), v4 == CFStringGetTypeID()))
    {
      if (*(a1 + 16) == 1)
      {
        v5 = *(a1 + 24);
        *(a1 + 24) = cf;
        CFRetain(cf);
        if (v5)
        {
          CFRelease(v5);
        }

        return 0;
      }

      else
      {
        FigCSSStyleRuleSetSelector_cold_1(&v7);
        return v7;
      }
    }

    else
    {
      FigCSSStyleRuleSetSelector_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    FigCSSStyleRuleSetSelector_cold_3(&v9);
    return v9;
  }
}

uint64_t FigCSSStyleRuleSetDeclaration(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    if (cf && (v4 = CFGetTypeID(cf), MEMORY[0x19A8D3660](&FigCSSStyleDeclarationGetTypeID_sRegisterFigCSSStyleDeclarationOnce, figCSSStyleDeclarationRegisterFigCSSStyleDeclaration), v4 == sFigCSSStyleDeclarationID))
    {
      if (*(a1 + 16) == 1)
      {
        v5 = *(a1 + 32);
        *(a1 + 32) = cf;
        CFRetain(cf);
        if (v5)
        {
          CFRelease(v5);
        }

        return 0;
      }

      else
      {
        FigCSSStyleRuleSetDeclaration_cold_1(&v7);
        return v7;
      }
    }

    else
    {
      FigCSSStyleRuleSetDeclaration_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    FigCSSStyleRuleSetDeclaration_cold_3(&v9);
    return v9;
  }
}

uint64_t figCSSStyleDeclarationRegisterFigCSSStyleDeclaration()
{
  result = _CFRuntimeRegisterClass();
  sFigCSSStyleDeclarationID = result;
  return result;
}

uint64_t FigCSSStyleDeclarationCreate(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    MEMORY[0x19A8D3660](&FigCSSStyleDeclarationGetTypeID_sRegisterFigCSSStyleDeclarationOnce, figCSSStyleDeclarationRegisterFigCSSStyleDeclaration);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v4 = Instance;
      result = 0;
      *a2 = v4;
    }

    else
    {
      FigCSSStyleDeclarationCreate_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    FigCSSStyleDeclarationCreate_cold_2(&v7);
    return v7;
  }

  return result;
}

CFIndex FigCSSStyleDeclarationGetPropertyCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    FigCSSStyleDeclarationGetPropertyCount_cold_1();
    return 0;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  return CFArrayGetCount(v3);
}

uint64_t FigCSSStyleDeclarationCopyPropertyNameAtIndex(uint64_t a1, CFIndex idx, void *a3)
{
  if (a1)
  {
    if (a3)
    {
      Count = *(a1 + 16);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (idx < 0 || Count <= idx)
      {
        FigCSSStyleDeclarationCopyPropertyNameAtIndex_cold_1(&v10);
        return v10;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), idx);
        if (ValueAtIndex)
        {
          v8 = CFRetain(ValueAtIndex);
        }

        else
        {
          v8 = 0;
        }

        result = 0;
        *a3 = v8;
      }
    }

    else
    {
      FigCSSStyleDeclarationCopyPropertyNameAtIndex_cold_2(&v11);
      return v11;
    }
  }

  else
  {
    FigCSSStyleDeclarationCopyPropertyNameAtIndex_cold_3(&v12);
    return v12;
  }

  return result;
}

uint64_t FigCSSStyleDeclarationSetPropertyInfo(CFTypeRef cf, void *key, const void *a3, int a4)
{
  if (!cf)
  {
    FigCSSStyleDeclarationSetPropertyInfo_cold_6(&v20);
    return v20;
  }

  if (!key)
  {
    FigCSSComponentValueParserNodeSetFunctionNode_cold_2(&v20);
    return v20;
  }

  if (!a3)
  {
    FigCSSStyleDeclarationSetPropertyInfo_cold_4(&v20);
    return v20;
  }

  v8 = *(cf + 3);
  if (v8 && CFDictionaryGetValue(v8, key))
  {
    v9 = *(cf + 2);
    if (v9)
    {
      v10.length = CFArrayGetCount(v9);
      v9 = *(cf + 2);
    }

    else
    {
      v10.length = 0;
    }

    v10.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v9, v10, key);
    if (FirstIndexOfValue != -1)
    {
      CFArrayRemoveValueAtIndex(*(cf + 2), FirstIndexOfValue);
      CFDictionaryRemoveValue(*(cf + 3), key);
    }
  }

  if (!*(cf + 2))
  {
    v12 = CFGetAllocator(cf);
    Mutable = CFArrayCreateMutable(v12, 0, MEMORY[0x1E695E9C0]);
    *(cf + 2) = Mutable;
    if (!Mutable)
    {
      FigCSSStyleDeclarationSetPropertyInfo_cold_3(&v20);
      return v20;
    }
  }

  if (!*(cf + 3))
  {
    v14 = CFGetAllocator(cf);
    v15 = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(cf + 3) = v15;
    if (!v15)
    {
      FigCSSStyleDeclarationSetPropertyInfo_cold_2(&v20);
      return v20;
    }
  }

  v16 = CFGetAllocator(cf);
  v17 = CFDictionaryCreateMutable(v16, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v17)
  {
    FigCSSStyleDeclarationSetPropertyInfo_cold_1(&v20);
    return v20;
  }

  v18 = v17;
  CFDictionarySetValue(v17, @"value", a3);
  if (a4)
  {
    CFDictionarySetValue(v18, @"important", *MEMORY[0x1E695E4D0]);
  }

  CFArrayAppendValue(*(cf + 2), key);
  CFDictionarySetValue(*(cf + 3), key, v18);
  CFRelease(v18);
  return 0;
}

void figCSSStyleSheet_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

CFStringRef figCSSStyleSheet_CopyFormattingDesc(uint64_t a1)
{
  v2 = FigCFCopyCompactDescription();
  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<FigCSSStyleSheet [%p]\n %@>", a1, v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

CFStringRef figCSSStyleSheet_CopyDebugDesc(uint64_t a1)
{
  v2 = FigCFCopyCompactDescription();
  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigCSSStyleSheet %p] %@", a1, v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

void figCSSRuleList_Finalize(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    CFRelease(v1);
  }
}

__CFString *figCSSRuleList_CopyFormattingDesc(CFArrayRef *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCSSRuleList [%p]\n", a1);
  for (i = 0; ; ++i)
  {
    Count = a1[2];
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    CFArrayGetValueAtIndex(a1[2], i);
    v6 = FigCFCopyCompactDescription();
    CFStringAppendFormat(Mutable, 0, @"    rule[%ld] = %@\n", i, v6);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

CFStringRef figCSSRuleList_CopyDebugDesc(uint64_t a1)
{
  v2 = FigCFCopyCompactDescription();
  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigCSSRuleList %p] [%@]", a1, v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

void *figCSSRule_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void figCSSRule_Finalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    CFRelease(v3);
  }
}

__CFString *figCSSRule_CopyFormattingDesc(unsigned int *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFGetAllocator(a1);
  v4 = _figCSSObjModel_MapRuleTypeToString(a1[4]);
  v5 = FigCFCopyCompactDescription();
  v6 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"<FigCSSRule [%p]\n", a1);
  CFStringAppendFormat(Mutable, 0, @"    ruleType = %@ selector = %@\n", v4, v5);
  CFStringAppendFormat(Mutable, 0, @"    %@\n", v6);
  CFStringAppendFormat(Mutable, 0, @">");
  CFRelease(v4);
  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return Mutable;
}

CFStringRef figCSSRule_CopyDebugDesc(unsigned int *a1)
{
  CFGetAllocator(a1);
  v2 = _figCSSObjModel_MapRuleTypeToString(a1[4]);
  v3 = FigCFCopyCompactDescription();
  v4 = FigCFCopyCompactDescription();
  v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigCSSRule %p] %@ %@ : %@", a1, v2, v3, v4);
  CFRelease(v2);
  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

uint64_t figCSSStyleDeclaration_Init(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void figCSSStyleDeclaration_Finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    CFRelease(v3);
  }
}

__CFString *figCSSStyleDeclaration_CopyFormattingDesc(CFArrayRef *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCSSStyleDeclaration [%p] {\n", a1);
  v4 = 0;
  v5 = *MEMORY[0x1E695E4D0];
  while (1)
  {
    Count = a1[2];
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v4 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(a1[2], v4);
    Value = CFDictionaryGetValue(a1[3], ValueAtIndex);
    if (!Value)
    {
      v11 = FigCFCopyCompactDescription();
LABEL_11:
      v13 = &stru_1F0B1AFB8;
      goto LABEL_12;
    }

    v9 = Value;
    CFDictionaryGetValue(Value, @"value");
    v10 = CFDictionaryGetValue(v9, @"important");
    v11 = FigCFCopyCompactDescription();
    if (!v10)
    {
      goto LABEL_11;
    }

    v12 = CFEqual(v10, v5);
    v13 = @"!important";
    if (!v12)
    {
      v13 = &stru_1F0B1AFB8;
    }

LABEL_12:
    CFStringAppendFormat(Mutable, 0, @"    %@ : %@ %@\n", ValueAtIndex, v11, v13);
    if (v11)
    {
      CFRelease(v11);
    }

    ++v4;
  }

  CFStringAppendFormat(Mutable, 0, @"} >");
  return Mutable;
}

CFStringRef figCSSStyleDeclaration_CopyDebugDesc(uint64_t a1)
{
  v2 = FigCFCopyCompactDescription();
  v3 = FigCFCopyCompactDescription();
  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"** [FigCSSStyleDeclaration <%p> names = {%@} properties = {%@} ]", a1, v2, v3);
  if (v3)
  {
    CFRelease(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return v4;
}

uint64_t RegisterFigCaptionGroupConverterToSampleBufferType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

void sub_196744EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose((v25 - 112), 8);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getAMSBagClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__11;
  v0 = getAMSBagClass_softClass;
  v7 = __Block_byref_object_dispose__11;
  v8 = getAMSBagClass_softClass;
  if (!getAMSBagClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getAMSBagClass_block_invoke;
    v2[3] = &unk_1E7486A28;
    v2[4] = &v3;
    __getAMSBagClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_196745008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_196745320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1967454FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1967456D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigPWDKeyExchangeSenderInitializeAMS()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[FigPWDKeyExchangeSenderServerHelperProd InitializeAMS];
  objc_autoreleasePoolPop(v0);
  return v1;
}

uint64_t FigPWDKeyExchangeSenderCreateForAOCP(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  if (FigPWDKeyExchangeSenderAOCP_initOnce_initOnce != -1)
  {
    FigPWDKeyExchangeSenderCreateForAOCP_cold_1();
  }

  v6 = objc_autoreleasePoolPush();
  v8 = v6;
  if (!a4)
  {
    FigPWDKeyExchangeSenderCreateForAOCP_cold_4(&v15);
LABEL_18:
    v13 = v15;
    goto LABEL_12;
  }

  FigPWDKeyExchangeSenderGetClassID(v6, v7);
  v9 = CMDerivedObjectCreate();
  if (v9)
  {
    v13 = v9;
    goto LABEL_12;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    goto LABEL_13;
  }

  v11 = DerivedStorage;
  *(DerivedStorage + 24) = 0;
  *(DerivedStorage + 32) = 0;
  *(DerivedStorage + 52) = 0;
  *(DerivedStorage + 44) = 0;
  *(DerivedStorage + 40) = 0;
  *(DerivedStorage + 88) = 0;
  *(DerivedStorage + 96) = 0;
  if (!a2)
  {
    FigPWDKeyExchangeSenderCreateForAOCP_cold_3(&v15);
    goto LABEL_18;
  }

  __copy_assignment_8_8_t0w16_pa0_46156_16_pa0_29868_24_pa0_61312_32(DerivedStorage + 104, a2);
  if (!*(a2 + 8))
  {
    FigPWDKeyExchangeSenderCreateForAOCP_cold_2(&v15);
    goto LABEL_18;
  }

  *(v11 + 144) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  FigCFDictionaryGetInt32IfPresent();
  *(v11 + 64) = kFigPWDKeyExchangeAOCP_AssetID_None;
  *(v11 + 40) = 4;
  *(v11 + 44) = 1;
  *(v11 + 168) = FigDispatchQueueCreateWithPriority();
  v12 = FigSimpleMutexCreate();
  *(v11 + 16) = v12;
  if (!v12)
  {
LABEL_13:
    v13 = 4294947756;
    goto LABEL_12;
  }

  *(v11 + 176) = objc_alloc_init(FigPWDKeyExchangeSenderServerHelperProd);
  if (!sPWDKeyExchangeTelemetryHelper)
  {
    sPWDKeyExchangeTelemetryHelper = objc_alloc_init(FigPWDKeyExchangeSenderTelementryHelper);
  }

  v13 = 0;
  *a4 = 0;
LABEL_12:
  objc_autoreleasePoolPop(v8);
  return v13;
}

uint64_t __copy_assignment_8_8_t0w16_pa0_46156_16_pa0_29868_24_pa0_61312_32(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  *(result + 32) = *(a2 + 32);
  return result;
}

Class __getAMSBagClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesLibrary();
  result = objc_getClass("AMSBag");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getAMSBagClass_block_invoke_cold_1();
  }

  getAMSBagClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void AppleMediaServicesLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!AppleMediaServicesLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __AppleMediaServicesLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E74922C8;
    v2 = 0;
    AppleMediaServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppleMediaServicesLibraryCore_frameworkLibrary)
  {
    AppleMediaServicesLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __AppleMediaServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AppleMediaServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAMSFairPlayDeviceIdentityProviderClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesLibrary();
  result = objc_getClass("AMSFairPlayDeviceIdentityProvider");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getAMSFairPlayDeviceIdentityProviderClass_block_invoke_cold_1();
  }

  getAMSFairPlayDeviceIdentityProviderClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getAMSURLSessionClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesLibrary();
  result = objc_getClass("AMSURLSession");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getAMSURLSessionClass_block_invoke_cold_1();
  }

  getAMSURLSessionClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getAMSURLRequestEncoderClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesLibrary();
  result = objc_getClass("AMSURLRequestEncoder");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getAMSURLRequestEncoderClass_block_invoke_cold_1();
  }

  getAMSURLRequestEncoderClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void *pwdKeyExchangeSenderAOCP_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v2 = DerivedStorage;
    if (*(DerivedStorage + 32))
    {
      MzdSdcDIXg8COV();
      *(v2 + 32) = 0;
    }

    if (*(v2 + 72))
    {
      JE2f6WCx();
      *(v2 + 72) = 0;
    }

    if (*(v2 + 80))
    {
      N8pdwAfn();
      *(v2 + 80) = 0;
    }

    *(v2 + 24) = 0;
    v3 = *(v2 + 144);
    if (v3)
    {
      CFRelease(v3);
      *(v2 + 144) = 0;
    }

    v4 = *(v2 + 88);
    if (v4)
    {
      CFRelease(v4);
      *(v2 + 88) = 0;
    }

    v5 = *(v2 + 96);
    if (v5)
    {
      CFRelease(v5);
      *(v2 + 96) = 0;
    }

    v6 = *(v2 + 168);
    if (v6)
    {
      dispatch_release(v6);
      *(v2 + 168) = 0;
    }

    v7 = *(v2 + 176);
    if (v7)
    {

      *(v2 + 176) = 0;
    }

    FigSimpleMutexDestroy();
  }

  result = sPWDKeyExchangeTelemetryHelper;
  if (sPWDKeyExchangeTelemetryHelper)
  {

    return [result clearTelemetry];
  }

  return result;
}

__CFString *pwdKeyExchangeSenderAOCP_CopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigPWDKeyExchangeSenderAOCP %p>", a1);
  return Mutable;
}

uint64_t pwdKeyExchangeSenderAOCP_Start(const __CFData *a1)
{
  v45 = 0;
  v44 = 0;
  if (!a1)
  {
    pwdKeyExchangeSenderAOCP_Start_cold_9(&bytes);
    return *&bytes.byte0;
  }

  FigPWDKeyExchangeSenderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 32))
  {
    MzdSdcDIXg8COV();
    *(DerivedStorage + 32) = 0;
  }

  if (*(DerivedStorage + 72))
  {
    JE2f6WCx();
    *(DerivedStorage + 72) = 0;
  }

  if (*(DerivedStorage + 80))
  {
    N8pdwAfn();
    *(DerivedStorage + 80) = 0;
  }

  *(DerivedStorage + 152) = FigGetUpTimeNanoseconds();
  if (!*(DerivedStorage + 88))
  {
    v3 = objc_autoreleasePoolPush();
    v52 = 0;
    v53 = &v52;
    v54 = 0x2020000000;
    v55 = 0;
    v4 = dispatch_semaphore_create(0);
    FigPWDKeyExchangeSenderGetCMBaseObject();
    v5 = CMBaseObjectGetDerivedStorage();
    v6 = [*(v5 + 176) requestCertURL];
    *(v53 + 6) = v6;
    if (!v6)
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v8 = *(v5 + 176);
      *&bytes.byte0 = MEMORY[0x1E69E9820];
      *&bytes.byte8 = 3221225472;
      v47 = __FigPWDKeyExchangeSenderAOCP_getCertificate_block_invoke;
      v48 = &unk_1E74922E8;
      v50 = &v52;
      v51 = v5;
      v49 = v4;
      [v8 requestCertDataFromServer:&bytes];
      dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
      v9 = *(v53 + 6);
      if (v9)
      {
        [sPWDKeyExchangeTelemetryHelper setResultCode:v9 forKey:*MEMORY[0x1E6960E88]];
      }

      else
      {
        [sPWDKeyExchangeTelemetryHelper setTimeRange:UpTimeNanoseconds end:FigGetUpTimeNanoseconds() forKey:*MEMORY[0x1E6960E90]];
      }
    }

    if (v4)
    {
      dispatch_release(v4);
    }

    v10 = *(v53 + 6);
    _Block_object_dispose(&v52, 8);
    objc_autoreleasePoolPop(v3);
    if (v10)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v36, v37, v38);
      v33 = v35;
      Mutable = 0;
      goto LABEL_53;
    }
  }

  v11 = MEMORY[0x1E695E480];
  if (!*(DerivedStorage + 96))
  {
    FigPWDKeyExchangeSenderGetCMBaseObject();
    v12 = CMBaseObjectGetDerivedStorage();
    v13 = *v11;
    v14 = CFUUIDCreate(*v11);
    if (v14)
    {
      v15 = v14;
      bytes = CFUUIDGetUUIDBytes(v14);
      v16 = CFDataCreate(v13, &bytes.byte0, 16);
      if (v16)
      {
        v17 = v16;
        v18 = *(v12 + 96);
        if (v18)
        {
          CFRelease(v18);
        }

        v19 = 0;
        *(v12 + 96) = v17;
      }

      else
      {
        pwdKeyExchangeSenderAOCP_Start_cold_1(&v52);
        v19 = v52;
      }

      CFRelease(v15);
      if (!v19)
      {
        goto LABEL_23;
      }
    }

    else
    {
      pwdKeyExchangeSenderAOCP_Start_cold_2(&bytes);
      if (!*&bytes.byte0)
      {
        goto LABEL_23;
      }
    }

    pwdKeyExchangeSenderAOCP_Start_cold_3(&bytes);
    goto LABEL_51;
  }

LABEL_23:
  v20 = objc_autoreleasePoolPush();
  FigPWDKeyExchangeSenderGetCMBaseObject();
  v21 = [*(CMBaseObjectGetDerivedStorage() + 176) requestEndpointURL];
  objc_autoreleasePoolPop(v20);
  if (v21)
  {
    pwdKeyExchangeSenderAOCP_Start_cold_4(&bytes);
LABEL_51:
    Mutable = 0;
    goto LABEL_52;
  }

  CFDataGetBytePtr(*(DerivedStorage + 88));
  CFDataGetLength(*(DerivedStorage + 88));
  Qhl17oSYJtCJIxM();
  if (v22)
  {
    v33 = v22;
    pwdKeyExchangeSenderAOCP_Start_cold_5();
    return v33;
  }

  *(DerivedStorage + 32) = v45;
  v23 = *v11;
  Mutable = CFDictionaryCreateMutable(v23, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    pwdKeyExchangeSenderAOCP_Start_cold_8(&bytes);
LABEL_52:
    v33 = *&bytes.byte0;
LABEL_53:
    v26 = 0;
    v29 = 0;
    v31 = 0;
    Data = a1;
    if (v33)
    {
      goto LABEL_37;
    }

    goto LABEL_30;
  }

  v25 = CFDictionaryCreateMutable(v23, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v25)
  {
    pwdKeyExchangeSenderAOCP_Start_cold_7(&bytes);
    goto LABEL_52;
  }

  v26 = v25;
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, @"Y7bdIsnh7", *(DerivedStorage + 88));
  v27 = nS1Q9ljw9esy9(Mutable, v26);
  if (!v27)
  {
    FigCFDictionaryGetInt32IfPresent();
    *(DerivedStorage + 24) = v44;
    Value = CFDictionaryGetValue(v26, @"xNJu5eepP");
    v29 = CFDictionaryCreateMutable(v23, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt32();
    CFDictionarySetValue(v29, @"payload", Value);
    CFDictionarySetValue(v29, @"certificate", *(DerivedStorage + 88));
    CFDictionarySetValue(v29, @"key-id", *(DerivedStorage + 96));
    Data = CFPropertyListCreateData(v23, v29, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    CFRetain(a1);
    if (!Data)
    {
      v31 = 0;
      goto LABEL_32;
    }

    v31 = Data;
LABEL_30:
    CFRetain(Data);
LABEL_32:
    v32 = *(DerivedStorage + 168);
    v36 = MEMORY[0x1E69E9820];
    v37 = 3221225472;
    v38 = __pwdKeyExchangeSenderAOCP_Start_block_invoke;
    v39 = &__block_descriptor_60_e5_v8__0l;
    v40 = DerivedStorage;
    v41 = a1;
    v42 = v31;
    v43 = 0;
    dispatch_async(v32, &v36);
    if (v29)
    {
      CFRelease(v29);
    }

    if (v31)
    {
      CFRelease(v31);
    }

    v33 = 0;
LABEL_37:
    if (!Mutable)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v33 = v27;
  pwdKeyExchangeSenderAOCP_Start_cold_6();
LABEL_38:
  CFRelease(Mutable);
LABEL_39:
  if (v26)
  {
    CFRelease(v26);
  }

  return v33;
}

uint64_t pwdKeyExchangeSenderAOCP_ProcessIncomingMessage(const void *a1, const __CFData *a2)
{
  v51 = 0;
  v49 = 0;
  error = 0;
  if (!a1)
  {
    pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_19(&v53);
    return v53;
  }

  if (!a2)
  {
    pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_18(&v53);
    return v53;
  }

  v2 = a1;
  v3 = *MEMORY[0x1E695E480];
  v4 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], a2, 0, 0, &error);
  if (!v4)
  {
    pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_17(&v53);
    return v53;
  }

  v5 = v4;
  FigCFDictionaryGetInt32IfPresent();
  if (!v51)
  {
    pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_16(&v53);
LABEL_59:
    v8 = v53;
    goto LABEL_51;
  }

  Value = CFDictionaryGetValue(v5, @"payload");
  if (!Value)
  {
    pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_15(&v53);
    goto LABEL_59;
  }

  v7 = Value;
  if (v51 == 1667982195)
  {
    FigCFDictionaryGetInt64IfPresent();
    v9 = v49;
    v52 = 0;
    FigPWDKeyExchangeSenderGetCMBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 72))
    {
      JE2f6WCx();
      *(DerivedStorage + 72) = 0;
    }

    if (*(DerivedStorage + 80))
    {
      N8pdwAfn();
      *(DerivedStorage + 80) = 0;
    }

    v11 = (FigGetUpTimeNanoseconds() - *(DerivedStorage + 160)) / 0xF4240uLL - v9;
    [sPWDKeyExchangeTelemetryHelper setTime:v11 forKey:*MEMORY[0x1E6960EF0]];
    if ((v11 & 0x8000000000000000) != 0)
    {
      pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_14(&v53);
    }

    else if (v11 >= 0x1389)
    {
      pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_13(&v53);
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v13 = Mutable;
        v14 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v14)
        {
          v15 = v14;
          FigCFDictionarySetInt32();
          v16 = *(DerivedStorage + 88);
          if (v16)
          {
            CFDictionarySetValue(v13, @"Y7bdIsnh7", v16);
            FigCFDictionarySetInt32();
            CFDictionarySetValue(v13, @"yN1lNULD2GD", v7);
            FigCFDictionarySetInt64();
            v17 = strlen(*(DerivedStorage + 64));
            v18 = CFDataCreate(v3, *(DerivedStorage + 64), v17);
            if (v18)
            {
              v19 = v18;
              CFDictionarySetValue(v13, @"HJN6grNt", v18);
              v20 = pC3lVfLuVJLMz(v13, v15);
              if (v20)
              {
                v8 = v20;
                pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_1();
                goto LABEL_46;
              }

              FigCFDictionaryGetInt64IfPresent();
              if (!v52)
              {
                pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_8(&v53);
                goto LABEL_74;
              }

              *(DerivedStorage + 72) = v52;
              v21 = CFDictionaryGetValue(v15, @"yN1lNULD2GD");
              if (!v21)
              {
                pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_7(&v53);
                goto LABEL_74;
              }

              v22 = v21;
              context = objc_autoreleasePoolPush();
              v60 = 0;
              values = 0;
              v59 = 0;
              FigPWDKeyExchangeSenderGetCMBaseObject();
              v23 = CMBaseObjectGetDerivedStorage();
              if (v23[10])
              {
                N8pdwAfn();
                v23[10] = 0;
              }

              v45 = DerivedStorage;
              v24 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (!v24)
              {
                pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_5(&v53);
                v31 = 0;
                v26 = 0;
                v32 = v53;
LABEL_36:
                if (v59)
                {
                  CFRelease(v59);
                }

                if (v26)
                {
                  CFRelease(v26);
                }

                if (values)
                {
                  CFRelease(values);
                }

                DerivedStorage = v45;
                if (v31)
                {
                  CFRelease(v31);
                }

                objc_autoreleasePoolPop(context);
                if (!v32)
                {
                  v8 = 0;
LABEL_46:
                  CFRelease(v19);
                  goto LABEL_47;
                }

                pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_6(&v53);
LABEL_74:
                v8 = v53;
                goto LABEL_46;
              }

              v25 = v24;
              v26 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              cf = v2;
              if (!v26)
              {
                pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_4(&v53);
                v31 = 0;
                v29 = 0;
                v32 = v53;
LABEL_31:
                CFRelease(v25);
                if (v60)
                {
                  CFRelease(v60);
                }

                if (v29)
                {
                  CFRelease(v29);
                }

                v2 = cf;
                goto LABEL_36;
              }

              v42 = v19;
              v27 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              values = v27;
              if (v27)
              {
                v28 = v27;
                FigCFDictionarySetInt();
                FigCFDictionarySetInt();
                v29 = CFStringCreateWithFormat(v3, 0, @"skd://%s", v23[8]);
                CFDictionarySetValue(v28, @"uri", v29);
                CFDataGetBytePtr(v22);
                CFDataGetLength(v22);
                Base64EncodedStringFromBytes = FigCreateBase64EncodedStringFromBytes();
                if (Base64EncodedStringFromBytes)
                {
                  v32 = Base64EncodedStringFromBytes;
                  v31 = 0;
LABEL_80:
                  v19 = v42;
                  goto LABEL_31;
                }

                CFDictionarySetValue(v28, @"spc", v59);
                v31 = CFArrayCreate(v3, &values, 1, MEMORY[0x1E695E9C0]);
                if (v31)
                {
                  CFDictionarySetValue(v26, @"streaming-keys", v31);
                  CFDictionarySetValue(v25, @"fairplay-streaming-request", v26);
                  v32 = FigCFDataCreateWithJSONObject();
                  v19 = v42;
                  if (!v32)
                  {
                    CFRetain(cf);
                    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
                    v34 = v23[22];
                    v53 = MEMORY[0x1E69E9820];
                    v54 = 3221225472;
                    v55 = __FigPWDKeyExchangeSenderAOCP_requestCKCFromServerAfterSendingSPC_block_invoke;
                    v56 = &__block_descriptor_48_e28_v24__0__NSData_8__NSError_16l;
                    v57 = UpTimeNanoseconds;
                    v58 = cf;
                    [v34 requestKeyDataFromServer:v60 completionHandler:&v53];
                  }

                  goto LABEL_31;
                }

                pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_2(&v53);
              }

              else
              {
                pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_3(&v53);
                v31 = 0;
                v29 = 0;
              }

              v32 = v53;
              goto LABEL_80;
            }

            pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_9(&v53);
          }

          else
          {
            pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_10(&v53);
          }

          v8 = v53;
LABEL_47:
          CFRelease(v13);
          CFRelease(v15);
          if (!v8)
          {
            goto LABEL_51;
          }

          goto LABEL_48;
        }

        pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_11(v13, &v53);
      }

      else
      {
        pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_12(&v53);
      }
    }

    v8 = v53;
    if (!v53)
    {
      goto LABEL_51;
    }

LABEL_48:
    CFRetain(v2);
    v35 = *(DerivedStorage + 168);
    v53 = MEMORY[0x1E69E9820];
    v54 = 3221225472;
    v55 = __FigPWDKeyExchangeSenderAOCP_createSenderSPCAndProcessCKC_block_invoke;
    v56 = &__block_descriptor_44_e5_v8__0l;
    v57 = v2;
    LODWORD(v58) = v8;
    v36 = &v53;
LABEL_50:
    dispatch_async(v35, v36);
    goto LABEL_51;
  }

  if (v51 != 1919251058)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, v41, v43);
    v8 = v37;
    FigPWDKeyExchangeSenderGetCMBaseObject();
    v38 = CMBaseObjectGetDerivedStorage();
    CFRetain(v2);
    v35 = *(v38 + 168);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_block_invoke;
    block[3] = &__block_descriptor_44_e5_v8__0l;
    block[4] = v2;
    v48 = v8;
    v36 = block;
    goto LABEL_50;
  }

  v8 = *CFDataGetBytePtr(Value);
LABEL_51:
  CFRelease(v5);
  return v8;
}

void FigPWDKeyExchangeSenderAOCP_callCallback(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  FigPWDKeyExchangeSenderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[18])
  {
    v16 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v16)
    {
      v8 = FigPWDKeyExchangeSenderAOCP_callCallback_cold_1(0, v9, v10, v11, v12, v13, v14, v15, v20, v21, SHIDWORD(v21), v22);
      if (!a4)
      {
        return;
      }

      goto LABEL_13;
    }

    if (a3)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v16 = 0;
    if (a3)
    {
LABEL_4:
      v17 = DerivedStorage[17];
      if (v17)
      {
        v17(v16, a3);
      }

      goto LABEL_10;
    }
  }

  v18 = DerivedStorage[15];
  if (v18 && v18(v16, a2))
  {
    v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, v22);
  }

LABEL_10:
  if (v16)
  {
    CFRelease(v16);
  }

  if (a4)
  {
LABEL_13:
    [sPWDKeyExchangeTelemetryHelper setResultCode:a3 forKey:{*MEMORY[0x1E6960EE0], v8}];
    v19 = sPWDKeyExchangeTelemetryHelper;

    [v19 sendTelemetry];
  }
}

CFMutableDictionaryRef OUTLINED_FUNCTION_1_155()
{

  return CFDictionaryCreateMutable(0, 0, v0, v1);
}

uint64_t FigPictureCollectionGetClassID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_105 != -1)
  {
    FigPictureCollectionGetClassID_cold_1();
  }

  return qword_1ED4CB6C0;
}

uint64_t FigPictureCollectionGetClassIDCallback(uint64_t a1)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigPictureCollectionGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_105 != -1)
  {
    FigPictureCollectionGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t FigFairPlayCPECryptorCreate(const void *a1, const void *a2, int a3, const opaqueCMFormatDescription *a4, const void *a5, const void *a6, dispatch_queue_t *a7, CFTypeRef *a8)
{
  v50 = *MEMORY[0x1E69E9840];
  v44 = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v13 = 4294955146;
  if (!a1)
  {
    goto LABEL_51;
  }

  if (!a3)
  {
    goto LABEL_51;
  }

  if (!a4)
  {
    goto LABEL_51;
  }

  if (!a5)
  {
    goto LABEL_51;
  }

  v14 = a8;
  if (!a8)
  {
    goto LABEL_51;
  }

  FigCPEFairPlayCryptorGetClassID();
  IsSkipEncrypted = CMDerivedObjectCreate();
  if (IsSkipEncrypted)
  {
    goto LABEL_49;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    v13 = 4294955145;
    goto LABEL_51;
  }

  v17 = DerivedStorage;
  if (a2)
  {
    v18 = CFRetain(a2);
  }

  else
  {
    v18 = 0;
  }

  *v17 = v18;
  *(v17 + 8) = CFRetain(a1);
  *(v17 + 16) = a3;
  *(v17 + 24) = CFRetain(a5);
  if (a6)
  {
    v19 = CFRetain(a6);
  }

  else
  {
    v19 = 0;
  }

  *(v17 + 32) = v19;
  if ((a3 & 0xD) == 0)
  {
    goto LABEL_40;
  }

  number[0] = 0;
  *valuePtr = 0;
  v20 = *v17;
  v21 = *(v17 + 8);
  v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v22)
  {
    if (!v22(v21, 0x1F0B529B8, v20, number))
    {
      CFNumberGetValue(number[0], kCFNumberSInt32Type, valuePtr);
      if (number[0])
      {
        CFRelease(number[0]);
      }
    }
  }

  *number = 0u;
  v49 = 0u;
  LegacySinfFromSinfExtensions = FigFairPlayGetLegacySinfFromSinfExtensions(*(v17 + 24));
  ExtendedSinfFromSinfExtensions = FigFairPlayGetExtendedSinfFromSinfExtensions(*(v17 + 24));
  DPInfoFromSinfExtensions = FigFairPlayGetDPInfoFromSinfExtensions(*(v17 + 24));
  if (LegacySinfFromSinfExtensions)
  {
    number[1] = CFDataGetBytePtr(LegacySinfFromSinfExtensions);
    Length = CFDataGetLength(LegacySinfFromSinfExtensions);
  }

  else
  {
    Length = 0;
    number[1] = 0;
  }

  LODWORD(number[0]) = Length;
  if (ExtendedSinfFromSinfExtensions)
  {
    *(&v49 + 1) = CFDataGetBytePtr(ExtendedSinfFromSinfExtensions);
    v27 = CFDataGetLength(ExtendedSinfFromSinfExtensions);
  }

  else
  {
    v27 = 0;
    *(&v49 + 1) = 0;
  }

  LODWORD(v49) = v27;
  if ((a3 & 5) == 0)
  {
    goto LABEL_40;
  }

  v28 = FigCPEFairPlayProtectorCheckOutCryptRef(a1, a5);
  *(v17 + 40) = v28;
  if (v28)
  {
    goto LABEL_40;
  }

  CMFormatDescriptionGetMediaType(a4);
  if (*(v17 + 40))
  {
    goto LABEL_40;
  }

  *valuePtr = 0;
  v29 = *(v17 + 32);
  if (!v29)
  {
    if (LegacySinfFromSinfExtensions | ExtendedSinfFromSinfExtensions)
    {
      qdrn6();
    }

    else
    {
      if (!DPInfoFromSinfExtensions)
      {
        v13 = 0;
        goto LABEL_37;
      }

      CFDataGetBytePtr(DPInfoFromSinfExtensions);
      CFDataGetLength(DPInfoFromSinfExtensions);
      NOAHabXy();
    }

    v13 = FAIRPLAY_CALL_LOG(v33);
    goto LABEL_37;
  }

  v43 = 0;
  Value = CFDictionaryGetValue(v29, @"SessionID");
  CFNumberGetValue(Value, kCFNumberSInt64Type, &v43);
  v31 = CFDictionaryGetValue(*(v17 + 32), @"PlayInfo");
  if (v31)
  {
    v32 = v31;
    CFDataGetBytePtr(v31);
    CFDataGetLength(v32);
  }

  NQ7ggq70Owbvqj8qbExsJ5Hw();
  v13 = FAIRPLAY_CALL_LOG(v34);
  v14 = a8;
LABEL_37:
  if (*valuePtr)
  {
    *(v17 + 40) = FigCFKBCryptRefCreate(*MEMORY[0x1E695E480], *valuePtr);
  }

  if (v13)
  {
    goto LABEL_51;
  }

LABEL_40:
  IsSkipEncrypted = FigFairPlayIsSkipEncrypted(*(v17 + 24), (v17 + 49));
  if (IsSkipEncrypted || *(v17 + 49) && (IsSkipEncrypted = FigFairPlayGetSkipParametersFromSinf(*(v17 + 24), (v17 + 52)), IsSkipEncrypted))
  {
LABEL_49:
    v13 = IsSkipEncrypted;
    goto LABEL_51;
  }

  v35 = a7;
  if (a7)
  {
    v35 = CFRetain(a7);
  }

  *(v17 + 80) = v35;
  FigCPEExternalProtectionMonitorBeginMonitoring(v35);
  CMNotificationCenterGetDefaultLocalCenter();
  v13 = FigNotificationCenterAddWeakListener();
  if (!v13)
  {
    *v14 = v44;
    v44 = 0;
    return FigFairPlayMapFairPlayErrorToCPEError(v13);
  }

LABEL_51:
  if (v44)
  {
    CFRelease(v44);
  }

  if (dword_1EAF176B0)
  {
    LODWORD(v43) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v38 = v43;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v38;
    }

    else
    {
      v39 = v38 & 0xFFFFFFFE;
    }

    if (v39)
    {
      *valuePtr = 136315394;
      *&valuePtr[4] = "FigFairPlayCPECryptorCreate";
      v46 = 1024;
      v47 = v13;
      _os_log_send_and_compose_impl(v39, 0, number, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, 0, "<<<< FigCPEFP >>>> %s: CPEFP error returned = %d", valuePtr, 18);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return FigFairPlayMapFairPlayErrorToCPEError(v13);
}

uint64_t ExternalProtectionStatusChangedCallback_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t FigFairPlayCPELimitedCryptorCreate(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a3)
  {
    FigCPEFairPlayCryptorGetClassID();
    v6 = CMDerivedObjectCreate();
    if (!v6)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (DerivedStorage)
      {
        v8 = DerivedStorage;
        if (a2)
        {
          v9 = CFRetain(a2);
        }

        else
        {
          v9 = 0;
        }

        *v8 = v9;
        v6 = 0;
        v8[1] = FigCFKBCryptRefCreate(*MEMORY[0x1E695E480], a1);
        *a3 = 0;
        return FigFairPlayMapFairPlayErrorToCPEError(v6);
      }

      v6 = 4294955145;
    }
  }

  else
  {
    v6 = 4294955146;
  }

  if (dword_1EAF176B0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return FigFairPlayMapFairPlayErrorToCPEError(v6);
}

uint64_t FigFairPlayCPELimitedCryptorCreateWithExternalProtectionMethods(uint64_t a1, int a2, const void *a3, CFTypeRef *a4)
{
  v6 = FigFairPlayCPELimitedCryptorCreate(a1, a3, a4);
  v7 = v6;
  if (a4 && !v6)
  {
    *(CMBaseObjectGetDerivedStorage() + 24) = a2;
  }

  return v7;
}

uint64_t FigFairPlayCPECryptorEqual(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || !v3)
  {
    return (DerivedStorage | v3) == 0;
  }

  result = FigCFEqual();
  if (result)
  {
    result = FigCFEqual();
    if (result)
    {
      return FigCFEqual() != 0;
    }
  }

  return result;
}

uint64_t FigFairPlayCPECryptorInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v2 = DerivedStorage;
    v12 = 0;
    v3 = *DerivedStorage;
    if (v3)
    {
      CFRelease(v3);
      *v2 = 0;
    }

    if (v2[5])
    {
      if (FigFairPlayGetSinfExtensionType(v2[3], &v12))
      {
        v4 = 0;
      }

      else
      {
        v4 = v12 == 2;
      }

      if (v4)
      {
        FigCPEFairPlayProtectorCheckInCryptRef(v2[1], v2[3], v2[5]);
      }

      v5 = v2[5];
      if (v5)
      {
        CFRelease(v5);
        v2[5] = 0;
      }
    }

    *(v2 + 48) = 0;
    v6 = v2[3];
    if (v6)
    {
      CFRelease(v6);
      v2[3] = 0;
    }

    v7 = v2[4];
    if (v7)
    {
      CFRelease(v7);
      v2[4] = 0;
    }

    if (v2[10])
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      FigCPEExternalProtectionMonitorEndMonitoring(v2[10]);
      v8 = v2[10];
      if (v8)
      {
        CFRelease(v8);
        v2[10] = 0;
      }
    }

    v9 = v2[11];
    if (v9)
    {
      CFRelease(v9);
      v2[11] = 0;
    }

    v10 = v2[1];
    if (v10)
    {
      CFRelease(v10);
      v2[1] = 0;
    }
  }

  return 0;
}

__CFString *FigFairPlayCPECryptorCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 0;
  }

  v2 = DerivedStorage;
  Mutable = CFStringCreateMutable(*DerivedStorage, 0);
  v4 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"<FigFPCPECryptor: protectorParent<%@> >", v2[1]);
  }

  return v4;
}

uint64_t FigFairPlayCPECryptorDecryptSample(uint64_t a1, OpaqueCMBlockBuffer *a2, const void *a3)
{
  v6 = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  return DecryptCommon(DerivedStorage, a2, &v6);
}

uint64_t FigFairPlayCPECryptorDecryptSampleWithFormat(uint64_t a1, OpaqueCMBlockBuffer *a2, const void *a3)
{
  v6 = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  return DecryptCommon(DerivedStorage, a2, &v6);
}

uint64_t FigFairPlayCPELimitedCryptorInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v2 = DerivedStorage;
    v3 = *DerivedStorage;
    if (v3)
    {
      CFRelease(v3);
      *v2 = 0;
    }

    v4 = v2[1];
    if (v4)
    {
      CFRelease(v4);
      v2[1] = 0;
    }

    v5 = v2[2];
    if (v5)
    {
      CFRelease(v5);
      v2[2] = 0;
    }
  }

  return 0;
}

void OUTLINED_FUNCTION_1_156(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  *(v22 - 232) = a1;
  *(v22 - 204) = 4;
  *(v22 - 200) = a8;
  *(v22 - 192) = a7;
  *(v22 - 184) = a5;
  *(v22 - 176) = a7;
  *(v22 - 156) = 0;
  *(v22 - 152) = &a22;
  *(v22 - 144) = 16;
  *(v22 - 116) = 0;

  LGokLiStr(v22 - 240);
}

uint64_t OUTLINED_FUNCTION_2_149(OpaqueCMBlockBuffer *a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{

  return CMBlockBufferGetDataPointer(a1, 0, 0, 0, a5);
}

void OUTLINED_FUNCTION_3_124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  v28[6] = 0u;
  v28[7] = 0u;
  v28[4] = 0u;
  v28[5] = 0u;
  v28[2] = 0u;
  v28[3] = 0u;
  *v28 = 0u;
  v28[1] = 0u;

  bzero(va, 0x180uLL);
}

uint64_t OUTLINED_FUNCTION_4_119(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CMBlockBufferRef *blockBufferOut, uint64_t a10, uint64_t a11, uint64_t a12, CMBlockBufferRef a13, size_t dataLength)
{
  v16 = dataLength;
  v17 = dataLength;

  return CMBlockBufferCreateWithMemoryBlock(v14, 0, v16, v14, 0, 0, v17, 1u, &a13);
}

uint64_t OUTLINED_FUNCTION_7_77(CMBlockBufferRef sourceBuffer, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, CMBlockBufferRef blockBufferOut)
{

  return CMBlockBufferCreateContiguous(v16, sourceBuffer, v16, 0, 0, 0, 0, &blockBufferOut);
}

uint64_t OUTLINED_FUNCTION_9_59(int a1)
{
  result = 0;
  *v1 = a1;
  return result;
}

CFDataRef OUTLINED_FUNCTION_10_57@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  *v22 = *(v21 + 116);

  return CFDataCreate(v23, va, 24 * a1);
}

uint64_t OUTLINED_FUNCTION_11_60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *v13 = a13;
  *v14 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_55(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{

  return FigH264Bridge_GetSPSFromAVCC();
}

uint64_t OUTLINED_FUNCTION_13_43(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);

  return MEMORY[0x1EEDBD410](v18, a1, 0, va1, va);
}

uint64_t OUTLINED_FUNCTION_14_51(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, size_t totalLengthOut, char *dataPointerOut, CMBlockBufferRef theBuffer)
{
  v17 = theBuffer;

  return CMBlockBufferGetDataPointer(v17, 0, 0, &totalLengthOut, &dataPointerOut);
}

uint64_t OUTLINED_FUNCTION_15_47(uint64_t a1)
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_16_45@<X0>(uint64_t a1@<X8>)
{
  result = 0;
  *v1 = a1;
  return result;
}

CFIndex OUTLINED_FUNCTION_17_40()
{

  return CFDataGetLength(v0);
}

uint64_t FigAudioSessionCreateWithCMSessionAndMXSession(uint64_t a1, const void *a2, const void *a3, CFTypeRef *a4)
{
  if (_os_feature_enabled_impl())
  {
    FigAudioSessionCreateWithCMSessionAndMXSession_cold_5(&theString);
    return theString;
  }

  if (!a2)
  {
    FigAudioSessionCreateWithCMSessionAndMXSession_cold_4(&theString);
    return theString;
  }

  if (!a3)
  {
    FigAudioSessionCreateWithCMSessionAndMXSession_cold_3(&theString);
    return theString;
  }

  if (!a4)
  {
    FigAudioSessionCreateWithCMSessionAndMXSession_cold_2(&theString);
    return theString;
  }

  MEMORY[0x19A8D3660](&FigAudioSessionCreateWithCMSessionAndMXSession_sInitOnce, audioSessionMXSession_initOnce);
  if (!_MergedGlobals_106 || !qword_1ED4CB6D0 || !qword_1ED4CB6D8)
  {
    FigAudioSessionCreateWithCMSessionAndMXSession_cold_1(&theString);
    return theString;
  }

  FigAudioSessionGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    return v7;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = CFRetain(a2);
  DerivedStorage[1] = CFRetain(a3);
  CMNotificationCenterGetDefaultLocalCenter();
  v9 = FigNotificationCenterAddWeakListener();
  if (v9)
  {
    return v9;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v7 = FigNotificationCenterAddWeakListener();
  if (v7)
  {
    return v7;
  }

  CMBaseObjectGetDerivedStorage();
  theString = 0;
  v10 = 0;
  *a4 = 0;
  return v10;
}

CFMutableDictionaryRef audioSessionMXSession_initOnce(uint64_t a1)
{
  FigKTraceInit();
  qword_1ED4CB6D8 = FigSimpleMutexCreate();
  v1 = *MEMORY[0x1E695E480];
  v2 = MEMORY[0x1E695E9D8];
  v3 = MEMORY[0x1E695E9E8];
  qword_1ED4CB6D0 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  result = CFDictionaryCreateMutable(v1, 0, v2, v3);
  _MergedGlobals_106 = result;
  return result;
}

uint64_t FigAudioSessionCreateUsingPrimaryCMSessionForAuditToken(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (AudioSessionGetPrimaryAudioSessionIDForAuditToken())
  {
    v5 = AudioSessionCopyCMSessionForSessionID();
    if (v5)
    {
      v6 = v5;
      v7 = FigAudioSessionCreateWithCMSession(a1, v5, a3);
      CFRelease(v6);
      return v7;
    }

    else
    {
      FigAudioSessionCreateUsingPrimaryCMSessionForAuditToken_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    FigAudioSessionCreateUsingPrimaryCMSessionForAuditToken_cold_2(&v10);
    return v10;
  }
}

uint64_t FigAudioSessionCreateWithMXSessionSiblingForFigAudioSession(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  if (!a2)
  {
    return 4294948075;
  }

  v7 = *(CMBaseObjectGetVTable() + 16);
  if (v7)
  {
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = v8(a2, @"FAS_AudioSessionID", a1, &cf);
      if (v9)
      {
        v12 = v9;
      }

      else
      {
        FigCFNumberGetSInt32();
        v10 = AudioSessionCopyCMSessionForSessionID();
        if (v10)
        {
          v11 = v10;
          v12 = FigAudioSessionCreateWithCMSession(a1, v10, a4);
          CFRelease(v11);
        }

        else
        {
          FigAudioSessionCreateWithMXSessionSiblingForFigAudioSession_cold_1(&v15);
          v12 = v15;
        }
      }
    }

    else
    {
      v12 = 4294948071;
    }
  }

  else
  {
    v12 = 4294948075;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

void audioSessionMXSession_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }
}

uint64_t audioSessionMXSession_CopyResolvedConfigurationForProperty(uint64_t a1, void *a2, const __CFAllocator *a3, __CFDictionary **a4)
{
  CMBaseObjectGetDerivedStorage();
  MXSessionPropertyForResolvedFigAudioSessionPropertyInternal = FigAudioSessionGetMXSessionPropertyForResolvedFigAudioSessionPropertyInternal(a2);
  v9 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  if (MXSessionPropertyForResolvedFigAudioSessionPropertyInternal || FigCFEqual() || FigCFEqual())
  {
    IsAvailable = MXSessionCopyProperty();
LABEL_9:
    v11 = IsAvailable;
    goto LABEL_10;
  }

  if (FigCFEqual())
  {
    v13 = a1;
    v14 = a3;
    v15 = 1836019574;
LABEL_23:
    IsAvailable = audioSessionMXSession_CopySpatializationCapabilities(v13, v14, v15, a4);
    goto LABEL_9;
  }

  if (FigCFEqual())
  {
    v13 = a1;
    v14 = a3;
    v15 = 1936684398;
    goto LABEL_23;
  }

  if (FigCFEqual())
  {
    IsAvailable = audioSessionMXSession_copyNeroInformationDictionary(a1, a3, a4);
    goto LABEL_9;
  }

  if (FigCFEqual())
  {
    IsAvailable = audioSessionMXSession_copyAudioDeviceIsAvailable(a1, a4);
    goto LABEL_9;
  }

  v11 = 4294948074;
LABEL_10:
  if (*v9 == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  return v11;
}

uint64_t audioSessionMXSession_CopyRequestedConfigurationForProperty(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MXSessionPropertyForRequestedFigAudioSessionPropertyInternal = FigAudioSessionGetMXSessionPropertyForRequestedFigAudioSessionPropertyInternal(a2);
  v8 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  if (MXSessionPropertyForRequestedFigAudioSessionPropertyInternal || FigCFEqual() || FigCFEqual())
  {
    v9 = MXSessionCopyProperty();
  }

  else if (FigCFEqual())
  {
    v11 = *(DerivedStorage + 8);
    if (v11)
    {
      v11 = CFRetain(v11);
    }

    v9 = 0;
    *a4 = v11;
  }

  else
  {
    v9 = 4294948074;
  }

  if (*v8 == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  return v9;
}

uint64_t audioSessionMXSession_CopyCMSessionProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  v6 = CMSessionCopyProperty();
  if (*v5 == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  return v6;
}

uint64_t audioSessionMXSession_SetCMSessionProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  v4 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  v5 = CMSessionSetProperty();
  if (*v4 == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  return v5;
}

uint64_t audioSessionMXSession_CopyMXSessionProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  v6 = MXSessionCopyProperty();
  if (*v5 == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  return v6;
}

uint64_t audioSessionMXSession_SetMXSessionProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  v4 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  v5 = MXSessionSetProperty();
  if (*v4 == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  return v5;
}

uint64_t audioSessionMXSession_Activate(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v2 = CMSessionBeginInterruption();
  if (*v1 == 1)
  {
    kdebug_trace();
  }

  return v2;
}

uint64_t audioSessionMXSession_Deactivate(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  v2 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (FigCFDictionaryGetBooleanIfPresent())
  {
    v3 = CMSessionEndInterruption_WithInterruptionNotification();
  }

  else
  {
    v3 = CMSessionEndInterruption();
  }

  v4 = v3;
  if (*v2 == 1)
  {
    kdebug_trace();
  }

  return v4;
}

uint64_t audioSessionMXSession_CopyMXSessionPropertiesAndErrors(uint64_t a1, const __CFArray *a2, uint64_t *a3, CFTypeRef *a4)
{
  CMBaseObjectGetDerivedStorage();
  v7 = MEMORY[0x1E695FF58];
  if (a2)
  {
    Count = CFArrayGetCount(a2);
    v9 = Count;
    if (*v7 != 1)
    {
      goto LABEL_11;
    }

    if (Count >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, 0);
      if (ValueAtIndex)
      {
        CFHash(ValueAtIndex);
      }

      if (v9 != 1)
      {
        v12 = CFArrayGetValueAtIndex(a2, 1);
        if (v12)
        {
          CFHash(v12);
        }

        if (v9 < 3)
        {
          v9 = 2;
        }

        else
        {
          v16 = CFArrayGetValueAtIndex(a2, 2);
          if (v16)
          {
            CFHash(v16);
          }
        }
      }
    }

    goto LABEL_10;
  }

  v9 = 0;
  if (*MEMORY[0x1E695FF58] == 1)
  {
LABEL_10:
    kdebug_trace();
  }

LABEL_11:
  *a3 = MXSessionCopyProperties();
  if (*v7 == 1)
  {
    if (v9 >= 4)
    {
      v11 = CFArrayGetValueAtIndex(a2, 3);
      if (v11)
      {
        CFHash(v11);
      }

      if (v9 != 4)
      {
        v13 = CFArrayGetValueAtIndex(a2, 4);
        if (v13)
        {
          CFHash(v13);
        }

        if (v9 >= 6)
        {
          v14 = CFArrayGetValueAtIndex(a2, 5);
          if (v14)
          {
            CFHash(v14);
          }
        }
      }
    }

    kdebug_trace();
  }

  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

uint64_t audioSessionMXSession_copyNeroInformationDictionary(uint64_t a1, const __CFAllocator *a2, __CFDictionary **a3)
{
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  BOOLean[1] = 0;
  if (a3)
  {
    v4 = CMSessionCopyProperty();
    if (!v4)
    {
      v5 = 0;
      *a3 = 0;
      return v5;
    }

    v5 = v4;
  }

  else
  {
    audioSessionMXSession_copyNeroInformationDictionary_cold_1(BOOLean);
    v5 = LODWORD(BOOLean[0]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t FigRCLCopyCFType(CFDictionaryRef theDict, __CFString *key)
{
  if (gStorebagOverrideDefaults)
  {
    v4 = CFPreferencesCopyAppValue(key, @"com.apple.coremedia");
  }

  else
  {
    if (!theDict)
    {
      return 0;
    }

    Value = CFDictionaryGetValue(theDict, key);
    if (!Value)
    {
      v5 = 0;
      if (theDict)
      {
        goto LABEL_4;
      }

      return v5;
    }

    v4 = CFRetain(Value);
  }

  v5 = v4;
  if (!theDict)
  {
    return v5;
  }

LABEL_4:
  if (gStorebagOverrideDefaults || !CFDictionaryContainsKey(theDict, @"figTrial"))
  {
    return v5;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v6 = FigCFDictionaryGetValue();

  return FigTrialCopyCFType(v6, key);
}

uint64_t FigRCLGetNumberWithDefault(const __CFDictionary *a1, __CFString *a2, uint64_t a3)
{
  v3 = FigRCLCopyCFType(a1, a2);
  NumberFromCFTypeWithDefault = FigGetNumberFromCFTypeWithDefault();
  if (v3)
  {
    CFRelease(v3);
  }

  return NumberFromCFTypeWithDefault;
}

uint64_t FigRCLGetLongNumberWithDefault(const __CFDictionary *a1, __CFString *a2, uint64_t a3)
{
  v3 = FigRCLCopyCFType(a1, a2);
  LongNumberFromCFTypeWithDefault = FigGetLongNumberFromCFTypeWithDefault();
  if (v3)
  {
    CFRelease(v3);
  }

  return LongNumberFromCFTypeWithDefault;
}

double FigRCLGetDoubleWithDefault(const __CFDictionary *a1, __CFString *a2, double a3)
{
  v3 = FigRCLCopyCFType(a1, a2);
  FigGetDoubleFromCFTypeWithDefault();
  v5 = v4;
  if (v3)
  {
    CFRelease(v3);
  }

  return v5;
}

const __CFDictionary *FigRCLCopyConfigurationGroupName(CFDictionaryRef theDict)
{
  v1 = theDict;
  if (gStorebagOverrideDefaults)
  {
    v2 = @"overriddenByDefaults";
  }

  else
  {
    if (!theDict)
    {
      return v1;
    }

    Value = CFDictionaryGetValue(theDict, @"configurationGroup");
    if (Value)
    {
      v2 = CFRetain(Value);
    }

    else
    {
      v2 = 0;
    }
  }

  if (!v1 || gStorebagOverrideDefaults || !CFDictionaryContainsKey(v1, @"figTrial"))
  {
    return v2;
  }

  v3 = FigCFDictionaryGetValue();
  v4 = FigTrialCopyExperimentId(v3);
  v1 = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  return v1;
}

void rcl_InitializeLoader()
{
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  qword_1ED4CB6F8 = malloc_type_calloc(1uLL, 0x70uLL, 0x10E004040338472uLL);
  if (!qword_1ED4CB6F8)
  {
    goto LABEL_26;
  }

  v0 = FigDispatchQueueCreateWithPriority();
  v2 = qword_1ED4CB6F8;
  *qword_1ED4CB6F8 = v0;
  if (!v0)
  {
    goto LABEL_25;
  }

  v3 = FigURLStorageSessionCopyGlobalSession(v0, v1);
  v2 = qword_1ED4CB6F8;
  *(qword_1ED4CB6F8 + 24) = v3;
  if (!v3)
  {
    goto LABEL_25;
  }

  v4 = v3;
  v7 = *v2;
  v5 = v2 + 4;
  v6 = v7;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v8)
  {
    v8(v4, v6, 0, v5);
  }

  v2 = qword_1ED4CB6F8;
  if (!*(qword_1ED4CB6F8 + 32))
  {
LABEL_25:
    rcl_InitializeLoader_cold_1(v2);
LABEL_26:
    qword_1ED4CB6F8 = 0;
    return;
  }

  *(qword_1ED4CB6F8 + 8) = 0;
  v2[2] = (v2 + 1);
  v9 = MGCopyAnswer();
  if (v9)
  {
    v10 = v9;
    gFRCL_IsInternalOS = CFEqual(v9, @"Internal");
    CFRelease(v10);
  }

  v11 = MGCopyAnswer();
  if (v11)
  {
    v12 = v11;
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], v11, @".");
    if (ArrayBySeparatingStrings)
    {
      v14 = ArrayBySeparatingStrings;
      if (CFArrayGetCount(ArrayBySeparatingStrings) < 1)
      {
        v15 = 0;
      }

      else
      {
        v15 = 0;
        v16 = 24;
        v17 = 1;
        do
        {
          v18 = v16;
          ValueAtIndex = CFArrayGetValueAtIndex(v14, v17 - 1);
          v15 |= CFStringGetIntValue(ValueAtIndex) << v18;
          if (v17 >= CFArrayGetCount(v14))
          {
            break;
          }

          v16 = v18 - 8;
          ++v17;
        }

        while (v18);
      }

      CFRelease(v14);
    }

    else
    {
      v15 = 0;
    }

    _MergedGlobals_107 = v15;
    CFRelease(v12);
  }

  qword_1ED4CB700 = CelestialGetModelSpecificName();
  v20 = MGCopyAnswer();
  if (v20)
  {
    v21 = v20;
    qword_1ED4CB708 = CFRetain(v20);
    CFRelease(v21);
  }

  rcl_InitializeStoreBagContext((qword_1ED4CB6F8 + 40), rcl_InitializeLoader_kFigRemoteConfigurationLoader_PumpStoreBagValues);
  rcl_InitializeStoreBagContext((qword_1ED4CB6F8 + 64), rcl_InitializeLoader_kFigRemoteConfigurationLoader_CRABSStoreBagValues);
  v22 = (qword_1ED4CB6F8 + 88);

  rcl_InitializeStoreBagContext(v22, rcl_InitializeLoader_kFigRemoteConfigurationLoader_AirPlayStoreBagValues);
}

CFTypeRef rcl_InitializeStoreBagContext(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = CFPreferencesCopyAppValue(*a2, @"com.apple.coremedia");
  if (!v6)
  {
    v6 = (gFRCL_IsInternalOS ? v3 : v5);
    if (v6)
    {
      CFRetain(v6);
    }
  }

  *a1 = v6;
  if (v4)
  {
    result = CFRetain(v4);
  }

  else
  {
    result = 0;
  }

  a1[1] = result;
  a1[2] = 0;
  return result;
}

void *rcl_ReleaseConnectionDataList(void **a1)
{
  result = *a1;
  if (result)
  {
    do
    {
      v3 = *result;
      v4 = result[1];
      if (*result)
      {
        v5 = *result;
      }

      else
      {
        v5 = a1;
      }

      v5[1] = v4;
      *v4 = v3;
      rcl_ReleaseConnectionData(result);
      result = *a1;
    }

    while (*a1);
  }

  return result;
}

void rcl_ReleaseConnectionData(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v3)
      {
        v3(v2);
      }

      v4 = a1[3];
      if (v4)
      {
        CFRelease(v4);
      }
    }

    v5 = a1[5];
    if (v5)
    {
      CFRelease(v5);
    }

    free(a1);
  }
}

void rcl_VersionConfigurationDictApplierFunc(int a1, CFTypeRef cf, uint64_t a3)
{
  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 == CFArrayGetTypeID())
    {

      FigCFArrayApplyFunction();
    }
  }
}

void rcl_ConfigurationGroupMapDictApplierFunc(const void *a1, const void *a2, void *cf)
{
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFDictionaryGetTypeID())
    {

      CFDictionaryReplaceValue(cf, a1, a2);
    }
  }
}

void rcl_ConfigGroupArrayApplierFunc(const void *a1, __CFDictionary *a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(a1, @"configurationGroup");
      if (Value)
      {

        CFDictionarySetValue(a2, Value, Value);
      }
    }
  }
}

void OUTLINED_FUNCTION_1_158(dispatch_once_t *a1)
{

  dispatch_once_f(a1, 0, rcl_InitializeLoader);
}

uint64_t OUTLINED_FUNCTION_3_125(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int16 a19, char a20, char a21, int a22)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_10_58(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int16 a19, char a20, os_log_type_t type, int a22)
{

  return os_log_type_enabled(a1, type);
}

uint64_t FigAlternateCreationContextCopyMediaGroupLocatorMapForMediaGroupID(CFMutableDictionaryRef *a1, void *a2, const void *a3, void *a4)
{
  cf = 0;
  if (a4)
  {
    v6 = faiu_ensureAlternateCreationContextAndCopyMediaGroupCache(a1, a2, &cf);
    v7 = cf;
    if (!v6)
    {
      FigAlternateCreationContextCopyMediaGroupLocatorMapForMediaGroupID_cold_1(cf, a3, a4);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    FigAlternateCreationContextCopyMediaGroupLocatorMapForMediaGroupID_cold_2(&v10);
    return v10;
  }

  return v6;
}

uint64_t faiu_ensureAlternateCreationContextAndCopyMediaGroupCache(CFMutableDictionaryRef *a1, void *key, CFMutableDictionaryRef *a3)
{
  if (a1)
  {
    Mutable = *a1;
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *a1 = Mutable;
      if (!Mutable)
      {
        faiu_ensureAlternateCreationContextAndCopyMediaGroupCache_cold_2(&v12);
        return v12;
      }
    }

    Value = CFDictionaryGetValue(Mutable, key);
    if (Value)
    {
      v8 = Value;
      CFRetain(Value);
    }

    else
    {
      v9 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v9)
      {
        faiu_ensureAlternateCreationContextAndCopyMediaGroupCache_cold_1(&v11);
        return v11;
      }

      v8 = v9;
      CFDictionarySetValue(*a1, key, v9);
    }
  }

  else
  {
    v8 = 0;
  }

  result = 0;
  *a3 = v8;
  return result;
}

uint64_t FigResetDisplaySleepTimerOnBehalfOfSceneWithPID(__CFString *a1, int a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (FigResetDisplaySleepTimerOnBehalfOfSceneWithPID_onceToken != -1)
  {
    FigResetDisplaySleepTimerOnBehalfOfSceneWithPID_cold_1();
  }

  v4 = @"com.apple.coremedia";
  if (a1)
  {
    v4 = a1;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigResetDisplaySleepTimerOnBehalfOfSceneWithPID_block_invoke_2;
  block[3] = &unk_1E74924C0;
  block[4] = &v9;
  block[5] = v4;
  v8 = a2;
  dispatch_sync(FigResetDisplaySleepTimerOnBehalfOfSceneWithPID_sAssertionQueue, block);
  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v5;
}

dispatch_queue_t __FigResetDisplaySleepTimerOnBehalfOfSceneWithPID_block_invoke()
{
  FigResetDisplaySleepTimerOnBehalfOfSceneWithPID_sActiveAssertions = objc_alloc_init(MEMORY[0x1E695DF90]);
  result = dispatch_queue_create("com.apple.coremedia.displaysleeptimer", 0);
  FigResetDisplaySleepTimerOnBehalfOfSceneWithPID_sAssertionQueue = result;
  return result;
}

void __FigResetDisplaySleepTimerOnBehalfOfSceneWithPID_block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [FigResetDisplaySleepTimerOnBehalfOfSceneWithPID_sActiveAssertions objectForKey:*(a1 + 40)];
  if (!v3)
  {
    v4 = [FigDisplaySleepAssertion alloc];
    v5 = *(a1 + 40);
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __FigResetDisplaySleepTimerOnBehalfOfSceneWithPID_block_invoke_3;
    v10 = &__block_descriptor_40_e5_v8__0l;
    v11 = v5;
    v3 = [FigDisplaySleepAssertion initWithReason:v4 queue:"initWithReason:queue:expirationHandler:" expirationHandler:?];
    [FigResetDisplaySleepTimerOnBehalfOfSceneWithPID_sActiveAssertions setObject:v3 forKey:*(a1 + 40)];
    v6 = v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = [(FigDisplaySleepAssertion *)v3 resetIdleTimerOnBehalfOfSceneWithPID:*(a1 + 48)];
  objc_autoreleasePoolPop(v2);
}

uint64_t figDeferredTransactionClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  gFigDeferredTransactionTypeID = result;
  return result;
}

uint64_t FigDeferredTransactionCreate(uint64_t a1, uint64_t *a2)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a2)
  {
    v3 = *MEMORY[0x1E695E480];
    if (FigDeferredTransactionGetTypeID_oneTimeOnly != -1)
    {
      FigDeferredTransactionCreate_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v5 = Instance;
      v6 = MEMORY[0x1E695E9C0];
      *(Instance + 56) = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
      Mutable = CFArrayCreateMutable(v3, 0, v6);
      result = 0;
      *(v5 + 64) = Mutable;
      *(v5 + 72) = 0;
      v9 = MEMORY[0x1E6960C70];
      *(v5 + 24) = 0;
      *(v5 + 32) = *v9;
      *(v5 + 48) = *(v9 + 16);
      *a2 = v5;
    }

    else
    {
      FigDeferredTransactionCreate_cold_2(&v10);
      return v10;
    }
  }

  else
  {
    FigDeferredTransactionCreate_cold_3(&v11);
    return v11;
  }

  return result;
}

void fdt_commitTransactionOnMainQueue(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 24))
  {
    if ((FigGetUpTimeNanoseconds() - *(a1 + 24)) / 1000000000.0 > 0.02)
    {
      v3 = CFCopyDescription(a1);
      v12 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (v3)
      {
        CFRelease(v3);
      }
    }
  }

  [MEMORY[0x1E6979518] begin];
  if ((*(a1 + 76) & 1) == 0)
  {
    [MEMORY[0x1E6979518] setDisableActions:1];
  }

  fdt_commitTransactionChanges(a1);
  v5 = [FigDeferredTransactionReleaseTrigger alloc];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __fdt_commitTransactionOnMainQueue_block_invoke;
  v10[3] = &__block_descriptor_40_e5_v8__0l;
  v10[4] = a1;
  v6 = [(FigDeferredTransactionReleaseTrigger *)v5 initWithReleaseBlock:v10];
  v7 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __fdt_commitTransactionOnMainQueue_block_invoke_2;
  v9[3] = &unk_1E7482608;
  v9[4] = v6;
  [MEMORY[0x1E6979518] addCommitHandler:v9 forPhase:5];
  if (*(a1 + 44))
  {
    time = *(a1 + 32);
    Seconds = CMTimeGetSeconds(&time);
    if (Seconds > CACurrentMediaTime())
    {
      [MEMORY[0x1E6979518] setCommitTime:Seconds];
    }
  }

  [MEMORY[0x1E6979518] commit];

  objc_autoreleasePoolPop(v2);
}

uint64_t fdt_commitTransactionChanges(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    return 0;
  }

  Count = CFArrayGetCount(v2);
  if (Count < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = Count;
    LODWORD(v5) = 0;
    for (i = 0; i != v4; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), i);
      v8 = fdt_performTransactionChange(ValueAtIndex);
      if (v5)
      {
        v9 = v5;
      }

      else
      {
        v9 = v8;
      }

      if (v8)
      {
        v5 = v9;
      }

      else
      {
        v5 = v5;
      }
    }
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 56) = 0;
  }

  return v5;
}

uint64_t fdt_performPostCommitChanges(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    return 0;
  }

  Count = CFArrayGetCount(v2);
  if (Count < 1)
  {
    return 0;
  }

  v4 = Count;
  LODWORD(v5) = 0;
  for (i = 0; i != v4; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 64), i);
    v8 = fdt_performTransactionChange(ValueAtIndex);
    if (v5)
    {
      v9 = v5;
    }

    else
    {
      v9 = v8;
    }

    if (v8)
    {
      v5 = v9;
    }

    else
    {
      v5 = v5;
    }
  }

  return v5;
}

uint64_t fdr_createChange(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    if (FigDeferredTransactionChangeGetTypeID_oneTimeOnly != -1)
    {
      fdr_createChange_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v9 = Instance;
      result = 0;
      v9[3] = a1;
      v9[4] = a3;
      v9[5] = a2;
      *a4 = v9;
    }

    else
    {
      fdr_createChange_cold_2(&v11);
      return v11;
    }
  }

  else
  {
    fdr_createChange_cold_3(&v12);
    return v12;
  }

  return result;
}

uint64_t fdt_performTransactionChange(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      v1(*(a1 + 40));
      return 0;
    }

    else
    {
      fdt_performTransactionChange_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    fdt_performTransactionChange_cold_2(&v4);
    return v4;
  }
}

uint64_t FigDeferredTransactionSetCommitHostTime(uint64_t a1, __int128 *a2)
{
  if (a1)
  {
    result = 0;
    v6 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *(a1 + 32) = v6;
  }

  else
  {
    v8 = v2;
    v9 = v3;
    FigDeferredTransactionSetCommitHostTime_cold_1(&v7);
    return v7;
  }

  return result;
}

double figDeferredTransactionInit(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void figDeferredTransactionFinalize(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {

    CFRelease(v3);
  }
}

__CFString *figDeferredTransactionCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = Mutable;
  v4 = "wants";
  if (!*(a1 + 72))
  {
    v4 = "doesn't need";
  }

  if (*(a1 + 16))
  {
    v5 = "committed";
  }

  else
  {
    v5 = "pending";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigDeferredTransaction %p, %s CATransaction, is %s", a1, v4, v5);
  CFStringAppend(v3, @"\nChanges:\n");
  v6 = *(a1 + 56);
  if (v6)
  {
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; i != v8; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), i);
        v11 = CFCopyDescription(ValueAtIndex);
        CFStringAppend(v3, v11);
        CFStringAppend(v3, @"\n");
        if (v11)
        {
          CFRelease(v11);
        }
      }
    }
  }

  CFStringAppend(v3, @"\nPost commit changes:\n");
  v12 = *(a1 + 64);
  if (v12)
  {
    v13 = CFArrayGetCount(v12);
    if (v13 >= 1)
    {
      v14 = v13;
      for (j = 0; j != v14; ++j)
      {
        v16 = CFArrayGetValueAtIndex(*(a1 + 64), j);
        v17 = CFCopyDescription(v16);
        CFStringAppend(v3, v17);
        CFStringAppend(v3, @"\n");
        if (v17)
        {
          CFRelease(v17);
        }
      }
    }
  }

  CFStringAppendFormat(v3, 0, @">");
  return v3;
}

void __fdt_commitTransactionOnMainQueue_block_invoke(uint64_t a1)
{
  fdt_performPostCommitChanges(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t figDeferredTransactionChangeClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  gFigDeferredTransactionChangeTypeID = result;
  return result;
}

double figDeferredTransactionChangeInit(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t figDeferredTransactionChangeFinalize(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    return v1(*(result + 40));
  }

  return result;
}

__CFString *figDeferredTransactionChangeCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigDeferredTransactionChange %p", a1);
  CFStringAppendFormat(Mutable, 0, @"\nunknown caller requesting to\n");
  CFStringAppendFormat(Mutable, 0, @"\n%p", *(a1 + 24));
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t OUTLINED_FUNCTION_1_159@<X0>(uint64_t a1@<X2>, uint64_t a2@<X5>, uint64_t a3@<X8>, uint64_t a4, ...)
{
  va_start(va, a4);

  return fdr_createChange(a2, a1, a3, va);
}

uint64_t FigVTTStyleBlockCreate(uint64_t a1, CFTypeRef *a2)
{
  if (a2)
  {
    FigVTTNodeGetClassID();
    v3 = CMDerivedObjectCreate();
    if (!v3)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v3 = FigVTTInitializeNodeBaseStorage(DerivedStorage);
      if (!v3)
      {
        *a2 = 0;
      }
    }
  }

  else
  {
    FigVTTStyleBlockCreate_cold_1(&v6);
    return v6;
  }

  return v3;
}

void figVTTStyleBlock_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }

  FigVTTReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figVTTStyleBlock_CopyDebugDesc(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = FigCFCopyCompactDescription();
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"styleblock: %@", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t figVTTStyleBlock_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 7;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figVTTStyleBlock_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t figVTTStyleBlock_copyChildNodeArray(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 16);
    if (v4)
    {
      v5 = CFRetain(v4);
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
    figVTTStyleBlock_copyChildNodeArray_cold_1(&v7);
    return v7;
  }

  return result;
}

uint64_t figVTTStyleBlock_copyNodeDocumentSerialization(const void *a1, __CFString **a2)
{
  cf = 0;
  theArray = 0;
  if (a2)
  {
    *a2 = 0;
    v4 = CFGetAllocator(a1);
    Mutable = CFStringCreateMutable(v4, 0);
    v6 = Mutable;
    if (Mutable)
    {
      CFStringAppendFormat(Mutable, 0, @"%@\n", @"STYLE");
      v7 = FigVTTNodeCopyChildNodeArray(a1, &theArray);
      if (v7)
      {
LABEL_20:
        v11 = v7;
      }

      else
      {
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
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          v7 = FigVTTNodeCopyDocumentSerialization(ValueAtIndex, &cf);
          if (v7)
          {
            goto LABEL_20;
          }

          CFStringAppendFormat(v6, 0, @"%@\n", cf);
        }

        CFStringAppendFormat(v6, 0, @"\n");
        v11 = 0;
        *a2 = v6;
        v6 = 0;
      }
    }

    else
    {
      figVTTStyleBlock_copyNodeDocumentSerialization_cold_1(&v15);
      v11 = v15;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    figVTTStyleBlock_copyNodeDocumentSerialization_cold_2(&v15);
    v6 = 0;
    v11 = v15;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v11;
}

uint64_t figVTTStyleBlock_setChildNodeArray(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  *(DerivedStorage + 16) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t FigMultivariantPlaylistGetTypeID()
{
  v1 = xmmword_1E74924E0;
  if (mvp_getTypeID_once != -1)
  {
    dispatch_once_f(&mvp_getTypeID_once, &v1, spptUtil_registerClass_1);
  }

  return mvp_getTypeID_typeID;
}

uint64_t FigMultivariantPlaylistCreateEmpty(uint64_t a1, void *a2)
{
  if (!a2)
  {
    FigMultivariantPlaylistCreateEmpty_cold_3(&v25);
    return v25;
  }

  FigMultivariantPlaylistGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigMultivariantPlaylistCreateEmpty_cold_2(&v24);
    return v24;
  }

  v4 = Instance;
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4[4] = Mutable;
  if (!Mutable)
  {
    v22 = 156;
LABEL_23:
    FigMultivariantPlaylistCreateEmpty_cold_1(v22, v4, &v23);
    return v23;
  }

  v7 = FigGetAllocatorForMedia();
  v8 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4[6] = v8;
  if (!v8)
  {
    v22 = 159;
    goto LABEL_23;
  }

  v9 = FigGetAllocatorForMedia();
  v10 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4[7] = v10;
  if (!v10)
  {
    v22 = 162;
    goto LABEL_23;
  }

  v11 = FigGetAllocatorForMedia();
  v12 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4[5] = v12;
  if (!v12)
  {
    v22 = 165;
    goto LABEL_23;
  }

  v13 = FigGetAllocatorForMedia();
  v14 = CFArrayCreateMutable(v13, 0, MEMORY[0x1E695E9C0]);
  v4[8] = v14;
  if (!v14)
  {
    v22 = 168;
    goto LABEL_23;
  }

  v15 = FigGetAllocatorForMedia();
  v16 = CFArrayCreateMutable(v15, 0, MEMORY[0x1E695E9C0]);
  v4[2] = v16;
  if (!v16)
  {
    v22 = 171;
    goto LABEL_23;
  }

  v17 = FigGetAllocatorForMedia();
  v18 = CFArrayCreateMutable(v17, 0, MEMORY[0x1E695E9C0]);
  v4[3] = v18;
  if (!v18)
  {
    v22 = 174;
    goto LABEL_23;
  }

  v19 = FigGetAllocatorForMedia();
  v20 = CFArrayCreateMutable(v19, 0, MEMORY[0x1E695E9C0]);
  v4[9] = v20;
  if (!v20)
  {
    v22 = 177;
    goto LABEL_23;
  }

  result = 0;
  *a2 = v4;
  return result;
}

uint64_t FigMultivariantPlaylistAddAlternate(uint64_t a1, void *value)
{
  Mutable = *(a1 + 16);
  if (Mutable || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a1 + 16) = Mutable) != 0))
  {
    CFArrayAppendValue(Mutable, value);
    return 0;
  }

  else
  {
    FigMultivariantPlaylistAddAlternate_cold_1(&v7);
    return v7;
  }
}

void FigMultivariantPlaylistSetAlternates(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t FigMultivariantPlaylistAddMediaSelection(uint64_t a1, void *value)
{
  Mutable = *(a1 + 24);
  if (Mutable || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a1 + 24) = Mutable) != 0))
  {
    CFArrayAppendValue(Mutable, value);
    return 0;
  }

  else
  {
    FigMultivariantPlaylistAddMediaSelection_cold_1(&v7);
    return v7;
  }
}

void FigMultivariantPlaylistSetMediaSelectionArray(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigMultivariantPlaylistSetAudioGroups(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigMultivariantPlaylistSetVideoGroups(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigMultivariantPlaylistSetSubtitleGroups(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigMultivariantPlaylistSetClosedCaptionGroups(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 56);
  *(a1 + 56) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigMultivariantPlaylistSetContentSteeringServerURL(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 88);
  *(a1 + 88) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigMultivariantPlaylistSetContentSteeringInitPathwayID(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 96);
  *(a1 + 96) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t FigMultivariantPlaylistAddSessionDataSpecifier(uint64_t a1, void *value)
{
  Mutable = *(a1 + 64);
  if (Mutable || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a1 + 64) = Mutable) != 0))
  {
    CFArrayAppendValue(Mutable, value);
    return 0;
  }

  else
  {
    FigMultivariantPlaylistAddSessionDataSpecifier_cold_1(&v7);
    return v7;
  }
}

uint64_t FigMultivariantPlaylistAddContentKeySpecifier(uint64_t a1, void *value)
{
  Mutable = *(a1 + 72);
  if (Mutable || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a1 + 72) = Mutable) != 0))
  {
    CFArrayAppendValue(Mutable, value);
    return 0;
  }

  else
  {
    FigMultivariantPlaylistAddContentKeySpecifier_cold_1(&v7);
    return v7;
  }
}

void FigMultivariantPlaylistSetPlaylistVariables(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 80);
  *(a1 + 80) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t FigMediaPlaylistGetTypeID()
{
  v1 = xmmword_1E74924F0;
  if (mp_getTypeID_once != -1)
  {
    dispatch_once_f(&mp_getTypeID_once, &v1, spptUtil_registerClass_1);
  }

  return mp_getTypeID_typeID;
}

uint64_t FigMediaPlaylistCreateEmpty(uint64_t a1, void *a2)
{
  if (!a2)
  {
    FigMediaPlaylistCreateEmpty_cold_3(&v25);
    return v25;
  }

  FigMediaPlaylistGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigMediaPlaylistCreateEmpty_cold_2(&v24);
    return v24;
  }

  v4 = Instance;
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  v4[2] = Mutable;
  if (!Mutable)
  {
    v22 = 579;
LABEL_23:
    FigMultivariantPlaylistCreateEmpty_cold_1(v22, v4, &v23);
    return v23;
  }

  v7 = FigGetAllocatorForMedia();
  v8 = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
  v4[3] = v8;
  if (!v8)
  {
    v22 = 582;
    goto LABEL_23;
  }

  v9 = FigGetAllocatorForMedia();
  v10 = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
  v4[4] = v10;
  if (!v10)
  {
    v22 = 585;
    goto LABEL_23;
  }

  v11 = FigGetAllocatorForMedia();
  v12 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
  v4[5] = v12;
  if (!v12)
  {
    v22 = 588;
    goto LABEL_23;
  }

  v13 = FigGetAllocatorForMedia();
  v14 = CFArrayCreateMutable(v13, 0, MEMORY[0x1E695E9C0]);
  v4[6] = v14;
  if (!v14)
  {
    v22 = 591;
    goto LABEL_23;
  }

  v15 = FigGetAllocatorForMedia();
  v16 = CFArrayCreateMutable(v15, 0, MEMORY[0x1E695E9C0]);
  v4[7] = v16;
  if (!v16)
  {
    v22 = 594;
    goto LABEL_23;
  }

  v17 = FigGetAllocatorForMedia();
  v18 = CFDictionaryCreateMutable(v17, 0, &parsedIndexKeyCallbacks, MEMORY[0x1E695E9E8]);
  v4[27] = v18;
  if (!v18)
  {
    v22 = 597;
    goto LABEL_23;
  }

  v19 = FigGetAllocatorForMedia();
  v20 = CFDictionaryCreateMutable(v19, 0, &parsedIndexKeyCallbacks, MEMORY[0x1E695E9E8]);
  v4[28] = v20;
  if (!v20)
  {
    v22 = 600;
    goto LABEL_23;
  }

  result = 0;
  *a2 = v4;
  return result;
}

uint64_t FigMediaPlaylistAddRenditionReportSpecifier(uint64_t a1, void *value)
{
  Mutable = *(a1 + 16);
  if (Mutable || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a1 + 16) = Mutable) != 0))
  {
    CFArrayAppendValue(Mutable, value);
    return 0;
  }

  else
  {
    FigMediaPlaylistAddRenditionReportSpecifier_cold_1(&v7);
    return v7;
  }
}

void FigMediaPlaylistSetRenditionReportSpecifiers(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t FigMediaPlaylistAddDateRangeSpecifier(uint64_t a1, void *value)
{
  Mutable = *(a1 + 24);
  if (Mutable || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a1 + 24) = Mutable) != 0))
  {
    CFArrayAppendValue(Mutable, value);
    return 0;
  }

  else
  {
    FigMediaPlaylistAddDateRangeSpecifier_cold_1(&v7);
    return v7;
  }
}

void FigMediaPlaylistSetDateRangeSpecifiers(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }
}

uint64_t FigMediaPlaylistAddContentKeySpecifier(uint64_t a1, void *value)
{
  Mutable = *(a1 + 32);
  if (Mutable || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a1 + 32) = Mutable) != 0))
  {
    CFArrayAppendValue(Mutable, value);
    return 0;
  }

  else
  {
    FigMediaPlaylistAddContentKeySpecifier_cold_1(&v7);
    return v7;
  }
}

uint64_t FigMediaPlaylistAddMediaSegmentSpecifier(uint64_t a1, const void *a2)
{
  if (*(a1 + 40) || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a1 + 40) = Mutable) != 0))
  {
    LastValue = FigCFArrayGetLastValue();
    if (LastValue)
    {
      v7 = LastValue;
      FigMediaSegmentSpecifierSetNextSegment(LastValue, a2);
      FigMediaSegmentSpecifierSetPreviousSegment(a2, v7);
      FigMediaSegmentSpecifierSetNextSegment(a2, 0);
    }

    if (FigMediaSegmentSpecifierGetDateStamp(a2))
    {
      ++*(a1 + 168);
    }

    CFArrayAppendValue(*(a1 + 40), a2);
    return 0;
  }

  else
  {
    FigMediaPlaylistAddMediaSegmentSpecifier_cold_1(&v9);
    return v9;
  }
}

uint64_t FigMediaPlaylistAddMapSegmentSpecifier(uint64_t a1, const void *a2)
{
  if (*(a1 + 48) || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a1 + 48) = Mutable) != 0))
  {
    LastValue = FigCFArrayGetLastValue();
    if (LastValue)
    {
      v7 = LastValue;
      FigMediaSegmentSpecifierSetNextSegment(LastValue, a2);
      FigMediaSegmentSpecifierSetPreviousSegment(a2, v7);
      FigMediaSegmentSpecifierSetNextSegment(a2, 0);
    }

    CFArrayAppendValue(*(a1 + 48), a2);
    return 0;
  }

  else
  {
    FigMediaPlaylistAddMapSegmentSpecifier_cold_1(&v9);
    return v9;
  }
}

uint64_t FigMediaPlaylistAddDateEntryArray(uint64_t a1, void *value)
{
  Mutable = *(a1 + 56);
  if (Mutable || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a1 + 56) = Mutable) != 0))
  {
    CFArrayAppendValue(Mutable, value);
    return 0;
  }

  else
  {
    FigMediaPlaylistAddDateEntryArray_cold_1(&v7);
    return v7;
  }
}

void FigMediaPlaylistSetDateEntryArray(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 56);
  *(a1 + 56) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigMediaPlaylistSetParseDate(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 64);
  *(a1 + 64) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigMediaPlaylistSetPreloadHint(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 72);
  *(a1 + 72) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigMediaPlaylistSetPreloadMapHint(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 80);
  *(a1 + 80) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t FigMediaPlaylistSetHoldBackDuration(uint64_t result, double a2)
{
  *(result + 104) = a2;
  *(result + 188) = a2 > 0.0;
  return result;
}

uint64_t FigMediaPlaylistSetPartHoldBackDuration(uint64_t result, double a2)
{
  *(result + 112) = a2;
  *(result + 189) = a2 > 0.0;
  return result;
}

uint64_t FigMediaPlaylistSetSkipDeltaBoundary(uint64_t result, double a2)
{
  *(result + 120) = a2;
  *(result + 190) = a2 > 0.0;
  return result;
}

_BYTE *FigMediaPlaylistRemoveContentKeySpecifier(_BYTE *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    FigMediaPlaylistRemoveContentKeySpecifierRemote(result);
    if (*(v3 + 28) && FigContentKeySpecifierGetCryptKeyParsedIndex(a2))
    {
      v4 = *(v3 + 28);
      CryptKeyParsedIndex = FigContentKeySpecifierGetCryptKeyParsedIndex(a2);
      CFDictionaryRemoveValue(v4, CryptKeyParsedIndex);
    }

    result = *(v3 + 4);
    if (result)
    {

      return FigCFArrayRemoveLastElementOfValue();
    }
  }

  return result;
}

uint64_t FigMediaPlaylistRemoveMediaSegmentSpecifier(uint64_t a1, uint64_t a2)
{
  FigMediaPlaylistRemoveMediaSegmentSpecifierRemote(a1);
  PreviousSegment = FigMediaSegmentSpecifierGetPreviousSegment(a2);
  NextSegment = FigMediaSegmentSpecifierGetNextSegment(a2);
  if (PreviousSegment)
  {
    FigMediaSegmentSpecifierSetNextSegment(PreviousSegment, NextSegment);
  }

  if (NextSegment)
  {
    FigMediaSegmentSpecifierSetPreviousSegment(NextSegment, PreviousSegment);
  }

  result = *(a1 + 40);
  if (result)
  {

    return FigCFArrayRemoveLastElementOfValue();
  }

  return result;
}

uint64_t FigMediaPlaylistRemovePartSegmentSpecifier(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  FigMediaPlaylistRemovePartSegmentSpecifierRemote(a1, a2, a3);

  return FigMediaSegmentSpecifierRemovePartialSegment(a2, a3);
}

uint64_t FigMediaPlaylistRemoveMapSegmentSpecifier(uint64_t a1, uint64_t a2)
{
  FigMediaPlaylistRemoveMapSegmentSpecifierRemote(a1);
  PreviousSegment = FigMediaSegmentSpecifierGetPreviousSegment(a2);
  NextSegment = FigMediaSegmentSpecifierGetNextSegment(a2);
  if (PreviousSegment)
  {
    FigMediaSegmentSpecifierSetNextSegment(PreviousSegment, NextSegment);
  }

  if (NextSegment)
  {
    FigMediaSegmentSpecifierSetPreviousSegment(NextSegment, PreviousSegment);
  }

  result = *(a1 + 48);
  if (result)
  {

    return FigCFArrayRemoveLastElementOfValue();
  }

  return result;
}

void FigMediaPlaylistSetXPCClientObject(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 232);
  *(a1 + 232) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void mvp_finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[9];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[10];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[4];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[5];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[6];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[7];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[11];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = a1[12];
  if (v12)
  {

    CFRelease(v12);
  }
}

uint64_t spptUtil_registerClass_1(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

void mp_finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
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

  v7 = a1[9];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[10];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[7];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[8];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[27];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = a1[28];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = a1[29];
  if (v13)
  {

    CFRelease(v13);
  }
}

void conduit_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  v3 = DerivedStorage[3];
  if (v3)
  {
    v3(*DerivedStorage);
  }

  v4 = v2[8];
  if (v4)
  {
    CFRelease(v4);
    v2[8] = 0;
  }

  v5 = v2[9];
  if (v5)
  {
    CFRelease(v5);
    v2[9] = 0;
  }

  v6 = v2[10];
  if (v6)
  {
    CFRelease(v6);
    v2[10] = 0;
  }

  v7 = v2[13];
  if (v7)
  {
    CFRelease(v7);
    v2[13] = 0;
  }

  v8 = v2[7];
  if (v8)
  {
    dispatch_release(v8);
    v2[7] = 0;
  }
}

uint64_t conduit_copyProperty(uint64_t a1, const void *a2, uint64_t a3, __CFDictionary **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"Type"))
  {
    v7 = CFRetain(@"Conduit");
    result = 0;
    *a4 = v7;
  }

  else if (CFEqual(a2, @"displayInfo"))
  {
    v20 = 0;
    value = 0;
    v18 = 0;
    v19 = 0;
    cf = 0;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v10 = *(DerivedStorage + 104);
    if (v10)
    {
      v11 = CFDictionaryGetValue(v10, @"HDRMode");
      FigDisplayModes_BuildColorAndTimingModes(*(DerivedStorage + 88), *(DerivedStorage + 96), *(DerivedStorage + 112), *(DerivedStorage + 116), 0x64u, 0, 0, 0, &v18);
      FigDisplayModes_BuildColorModesFromHDRMode(v11, *(DerivedStorage + 104), 0, 0x64u, &v19);
    }

    else
    {
      FigDisplayModes_BuildColorAndTimingModes(*(DerivedStorage + 88), *(DerivedStorage + 96), *(DerivedStorage + 112), *(DerivedStorage + 116), 0x64u, 0, 0, &v19, &v18);
    }

    if (v19 && v18)
    {
      v12 = *(DerivedStorage + 120);
      if (v12 >= 1)
      {
        FigDisplayModes_CopyTimingModeAppendingPreferredUIScale(v18, v12, &cf);
        v13 = v18;
        v18 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        if (v13)
        {
          CFRelease(v13);
        }
      }

      FigDisplayModes_CreateColorAndTimingModesArraysWithPreferredMode(v19, v18, &value, &v20);
      if (value && v20)
      {
        CFDictionarySetValue(Mutable, @"colorModes", value);
        CFDictionarySetValue(Mutable, @"timingModes", v20);
      }
    }

    CFDictionarySetValue(Mutable, @"displayUUID", *(DerivedStorage + 64));
    v14 = MEMORY[0x1E695E4D0];
    if (!*(DerivedStorage + 113))
    {
      v14 = MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(Mutable, @"rotationSupport", *v14);
    v15 = *(DerivedStorage + 72);
    if (v15)
    {
      CFDictionarySetValue(Mutable, @"displayName", v15);
    }

    v16 = *(DerivedStorage + 80);
    if (v16)
    {
      CFDictionarySetValue(Mutable, @"displayEDID", v16);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    if (value)
    {
      CFRelease(value);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    result = 0;
    *a4 = Mutable;
  }

  else
  {
    return 4294954512;
  }

  return result;
}

uint64_t conduit_start(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  v6 = DerivedStorage[1];
  if (!v6)
  {
    v7 = 0;
    if (!a3)
    {
      return v7;
    }

    goto LABEL_3;
  }

  v7 = v6(*DerivedStorage);
  if (a3)
  {
LABEL_3:
    v8 = v5[7];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __conduit_start_block_invoke;
    v10[3] = &unk_1E7492510;
    v10[4] = a3;
    v11 = v7;
    dispatch_async(v8, v10);
  }

  return v7;
}

uint64_t conduit_stop(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  v5 = DerivedStorage[2];
  if (v5)
  {
    v5(*DerivedStorage);
  }

  if (a2)
  {
    v6 = v4[7];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __conduit_stop_block_invoke;
    block[3] = &unk_1E7492538;
    block[4] = a2;
    dispatch_async(v6, block);
  }

  return 0;
}

uint64_t conduit_pushFrame(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = DerivedStorage[4];
  if (v22)
  {
    v22(*DerivedStorage, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }

  return 0;
}

uint64_t conduit_getPropertyAsync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigVirtualDisplaySinkGetCMBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v10 = v9(v8, a2, *MEMORY[0x1E695E480], &v15);
    v9 = v15;
  }

  else
  {
    v10 = 4294954514;
  }

  v11 = *(DerivedStorage + 56);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = __conduit_getPropertyAsync_block_invoke;
  v13[3] = &unk_1E7492560;
  v14 = v10;
  v13[4] = a4;
  v13[5] = v9;
  dispatch_async(v11, v13);
  return v10;
}

uint64_t conduit_perform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    v6 = DerivedStorage[6];
    if (v6)
    {
      v6(*DerivedStorage);
    }
  }

  if (a4)
  {
    v7 = DerivedStorage[7];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __conduit_perform_block_invoke;
    v9[3] = &unk_1E7492588;
    v9[4] = a4;
    v10 = 0;
    dispatch_async(v7, v9);
  }

  return 0;
}

uint64_t conduit_setDispatchQueue(uint64_t a1, NSObject *global_queue)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!global_queue)
  {
    global_queue = dispatch_get_global_queue(0, 0);
  }

  dispatch_retain(global_queue);
  v4 = *(DerivedStorage + 56);
  if (v4)
  {
    dispatch_release(v4);
  }

  *(DerivedStorage + 56) = global_queue;
  return 0;
}

uint64_t conduit_shouldDropFrame(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage[5];
  if (!v2)
  {
    return 0;
  }

  v3 = *DerivedStorage;

  return v2(v3);
}

void __conduit_getPropertyAsync_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 48), *(a1 + 40));
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t rad_ensureClientEstablished()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __rad_ensureClientEstablished_block_invoke;
  block[3] = &unk_1E74925B0;
  block[4] = &v3;
  if (rad_ensureClientEstablished_sFigAssetDownloaderRemoteClientSetupOnce != -1)
  {
    dispatch_once(&rad_ensureClientEstablished_sFigAssetDownloaderRemoteClientSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t rad_fillInCreationDictionary(void *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, const __CFDictionary *a6, uint64_t a7)
{
  value = 0;
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (a2)
  {
    ObjectID = FigAssetXPCRemoteGetObjectID(a2, &value);
    if (ObjectID)
    {
      goto LABEL_18;
    }

    xpc_dictionary_set_uint64(a1, "AssetToken", value);
  }

  ObjectID = FigXPCMessageSetCFURL();
  if (ObjectID || (ObjectID = FigXPCMessageSetCFArray(), ObjectID) || (ObjectID = FigXPCMessageSetCFArray(), ObjectID))
  {
LABEL_18:
    v15 = ObjectID;
    FigXPCRelease();
    if (!MutableCopy)
    {
      return v15;
    }

    goto LABEL_16;
  }

  if (a7)
  {
    v13 = FigStreamingAssetDownloadConfigCopySerializedRepresentation(a7);
    if (v13)
    {
      xpc_dictionary_set_value(a1, "DownloadConfig", v13);
    }
  }

  if (CFDictionaryGetValue(a6, @"AssetDownloaderCreateOption_RetryError"))
  {
    v14 = FigCFCopyCFErrorAsPropertyList();
    CFDictionarySetValue(MutableCopy, @"AssetDownloaderCreateOption_RetryError", v14);
  }

  else
  {
    v14 = 0;
  }

  v15 = FigXPCMessageSetCFDictionary();
  FigXPCRelease();
  if (v14)
  {
    CFRelease(v14);
  }

  if (MutableCopy)
  {
LABEL_16:
    CFRelease(MutableCopy);
  }

  return v15;
}

void __rad_ensureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = Mutable;
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"AssetDownloader_ServerConnectionDied");
    FigRemote_ShouldConnectToMediaparserdForFileParsing();
    FigRemote_ShouldConnectToMediaplaybackd();
    *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate();

    CFRelease(v3);
  }

  else
  {
    __rad_ensureClientEstablished_block_invoke_cold_1(a1);
  }
}

uint64_t rad_deadConnectionCallback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 1) = 1;
  return result;
}

void __rad_downloadSuccessCallback_block_invoke(void *a1)
{
  (*(a1[4] + 32))(a1[5], a1[6]);
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {

    CFRelease(v3);
  }
}

void __rad_downloadFailureCallback_block_invoke(void *a1)
{
  (*(a1[4] + 40))(a1[5], a1[6], a1[7]);
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {

    CFRelease(v4);
  }
}

void __rad_loadedTimeRangeChangedCallback_block_invoke(void *a1)
{
  (*(a1[4] + 48))(a1[5], a1[6], a1[7], a1[8], a1[9], a1[10]);
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[10];
  if (v7)
  {

    CFRelease(v7);
  }
}

void __rad_didResolveMediaSelection_block_invoke(void *a1)
{
  (*(a1[4] + 56))(a1[5], a1[6], a1[7]);
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {

    CFRelease(v4);
  }
}

void __rad_didFinishDownloadForMediaSelection_block_invoke(void *a1)
{
  (*(a1[4] + 64))(a1[5], a1[6], a1[7]);
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {

    CFRelease(v4);
  }
}

void __rad_progressUpdateCallback_block_invoke(void *a1)
{
  (*(a1[4] + 80))(a1[5], a1[6], a1[7], a1[8]);
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {

    CFRelease(v3);
  }
}

void __rad_willDownloadAlternatesCallback_block_invoke(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 24) >= 2)
  {
    (*(v2 + 88))(a1[5], a1[6], a1[7]);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[7];
  if (v5)
  {

    CFRelease(v5);
  }
}

void __rad_didReceiveMetricEventCallback_block_invoke(void *a1)
{
  (*(a1[4] + 112))(a1[5], a1[6], a1[7]);
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t rad_getObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    rad_getObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (DerivedStorage[1])
    {
      rad_getObjectID_cold_2(&v7);
      return v7;
    }

    else
    {
      result = 0;
      *a2 = *(v4 + 1);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_56(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return FigSandboxRegisterURLWithProcessAndCopyRegistration();
}

uint64_t OUTLINED_FUNCTION_13_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;

  return rad_getObjectID(a1, &a10);
}

void OUTLINED_FUNCTION_14_52(NSObject *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t block, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a10 = v11;
  a11 = a2;

  dispatch_async(a1, &block);
}

uint64_t RegisterSchemeInternal(__CFDictionary *a1, const void *a2, __int128 *a3)
{
  v3 = 0;
  v4 = 4294955146;
  if (a1 && a2 && a3)
  {
    v3 = malloc_type_calloc(1uLL, 0x40uLL, 0x80040A284212CuLL);
    v8 = a3[3];
    v10 = *a3;
    v9 = a3[1];
    v3[2] = a3[2];
    v3[3] = v8;
    *v3 = v10;
    v3[1] = v9;
    if (!CFDictionaryContainsKey(a1, a2))
    {
      CFDictionaryAddValue(a1, a2, v3);
      return 0;
    }

    v4 = 4294955136;
  }

  free(v3);
  return v4;
}

uint64_t FigCPEInitializeWithOptions(const void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ED4CB738 != -1)
  {
    FigCPEInitializeWithOptions_cold_1();
  }

  v6 = FigSimpleMutexLock();
  if (qword_1ED4CB748 != -1)
  {
    FigCPEInitializeWithOptions_cold_2(v6);
  }

  Value = CFDictionaryGetValue(qword_1ED4CB740, a1);
  if (qword_1ED4CB738 != -1)
  {
    FigCPEInitializeWithOptions_cold_1();
  }

  FigSimpleMutexUnlock();
  if (!Value)
  {
    return 4294955141;
  }

  v8 = Value[4];
  if (!v8)
  {
    return 4294955141;
  }

  return v8(a2, a3);
}

uint64_t FigCPEUninitialize(const void *a1, uint64_t a2)
{
  if (qword_1ED4CB738 != -1)
  {
    FigCPEInitializeWithOptions_cold_1();
  }

  v4 = FigSimpleMutexLock();
  if (qword_1ED4CB748 != -1)
  {
    FigCPEInitializeWithOptions_cold_2(v4);
  }

  Value = CFDictionaryGetValue(qword_1ED4CB740, a1);
  if (qword_1ED4CB738 != -1)
  {
    FigCPEInitializeWithOptions_cold_1();
  }

  FigSimpleMutexUnlock();
  if (!Value)
  {
    return 4294955141;
  }

  v6 = Value[5];
  if (!v6)
  {
    return 4294955141;
  }

  return v6(a2);
}

uint64_t SchemeRegistrationDictionaryLockInitOnce(uint64_t *a1)
{
  result = FigSimpleMutexCreate();
  *a1 = result;
  return result;
}

uint64_t SchemeRegistrationDictionaryInitOnce(__CFDictionary **a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  v4 = xmmword_1F0AF1CF0;
  v5 = *&off_1F0AF1D00;
  v6 = xmmword_1F0AF1D10;
  v7 = unk_1F0AF1D20;
  RegisterSchemeInternal(Mutable, @"FairPlay", &v4);
  v4 = xmmword_1F0AF1D30;
  v5 = unk_1F0AF1D40;
  v6 = xmmword_1F0AF1D50;
  v7 = unk_1F0AF1D60;
  RegisterSchemeInternal(Mutable, @"com.apple.pkd", &v4);
  v4 = xmmword_1F0AF1D70;
  v5 = unk_1F0AF1D80;
  v6 = xmmword_1F0AF1D90;
  v7 = unk_1F0AF1DA0;
  result = RegisterSchemeInternal(Mutable, @"com.apple.basicAES", &v4);
  *a1 = Mutable;
  return result;
}

CFMutableDictionaryRef InitCPESessionRecordLocations(uint64_t *a1)
{
  *a1 = FigSimpleMutexCreate();
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  a1[1] = result;
  return result;
}

void OUTLINED_FUNCTION_4_121(dispatch_once_t *a1)
{

  dispatch_once_f(a1, a1 + 1, InitCPESessionRecordLocations);
}

void OUTLINED_FUNCTION_5_104(const void **values)
{

  CFDictionaryGetKeysAndValues(v1, 0, values);
}

void OUTLINED_FUNCTION_6_92(uint64_t a1, uint64_t a2, void (__cdecl *a3)(void *))
{

  dispatch_once_f(v3 + 1, v3, a3);
}

void OUTLINED_FUNCTION_7_80(uint64_t a1, uint64_t a2, void (__cdecl *a3)(void *))
{

  dispatch_once_f(v3 + 1, v3, a3);
}

const void *FigExportSettingsForExportPreset(void *key)
{
  if (qword_1ED4CB770 == -1)
  {
    if (!key)
    {
      return 0;
    }
  }

  else
  {
    FigExportSettingsForExportPreset_cold_1(key);
    if (!key)
    {
      return 0;
    }
  }

  v2 = _MergedGlobals_109;
  if (!_MergedGlobals_109)
  {
    return 0;
  }

  return CFDictionaryGetValue(v2, key);
}