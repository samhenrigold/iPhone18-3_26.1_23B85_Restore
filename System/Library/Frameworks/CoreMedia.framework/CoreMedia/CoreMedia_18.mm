__CFString *ftbCopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  OUTLINED_FUNCTION_17(a1, &v53);
  v4 = CFGetAllocator(a1);
  OUTLINED_FUNCTION_31(v4, v5, v6, v7, v8, v9, v10, v11, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, time.value, *&time.timescale, time.epoch, *&v53.value);
  v13 = CMTimeCopyDescription(v12, &time);
  OUTLINED_FUNCTION_31(v13, v14, v15, v16, v17, v18, v19, v20, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, time.value, *&time.timescale, time.epoch, *&v53.value);
  Seconds = CMTimeGetSeconds(&time);
  v22 = "(UNKNOWN TYPE)";
  v23 = *(a1 + 16);
  if (v23 == 1)
  {
    v22 = "(Looping)";
  }

  if (v23 == 2)
  {
    v22 = "(ReadOnly)";
  }

  if (v23)
  {
    v24 = v22;
  }

  else
  {
    v24 = "";
  }

  v25 = *(a1 + 24);
  v26 = CFGetRetainCount(a1);
  v27 = CFGetAllocator(a1);
  v28 = *(a1 + 128);
  if (v28)
  {
    v29 = "clock";
  }

  else
  {
    v29 = "timebase";
  }

  if (!v28)
  {
    v28 = *(a1 + 136);
  }

  Rate = CMTimebaseGetRate(a1);
  CFStringAppendFormat(Mutable, 0, @"FigTimebase: %p %s targetTimebase: %p retainCount: %d allocator: %p master %s: %p rate: %f time: %@ = %f seconds\n", a1, v24, v25, v26, v27, v29, v28, *&Rate, v13, *&Seconds);
  if (v13)
  {
    CFRelease(v13);
  }

  return Mutable;
}

size_t figTimebaseReflectNotification(int a1, uint64_t a2, CFTypeRef cf1, uint64_t a4, const void *a5)
{
  v9 = FigCFEqual(cf1, @"CMTimebaseTimeJumped");
  result = FigCFEqual(cf1, @"CMTimebaseTimeAdjusted");
  if (a2)
  {
    v11 = result;
    FigReentrantMutexLock(*(a2 + 112));
    if (*(a2 + 24) == a4)
    {
      if (v9 | v11 || FigCFEqual(cf1, @"CMTimebaseEffectiveRateChanged"))
      {
        memset(&v42, 0, sizeof(v42));
        if (a5)
        {
          v17 = CFGetTypeID(a5);
          if (v17 == CFDictionaryGetTypeID())
          {
            Value = CFDictionaryGetValue(a5, @"CMTimebaseEventTime");
            CMTimeMakeFromDictionary(&v42, Value);
          }
        }

        if ((v42.flags & 1) == 0)
        {
          OUTLINED_FUNCTION_17(*(a2 + 24), &v44);
          OUTLINED_FUNCTION_8_2(v19, v20, v21, v22, v23, v24, v25, v26, v42.value, *&v42.timescale, v42.epoch, v43, *&v44.value);
        }

        v44 = v42;
        EffectiveRate = CMTimebaseGetEffectiveRate(a2);
        v36 = *(a2 + 320);
        if (EffectiveRate > 0.0)
        {
          v37 = 1;
        }

        else
        {
          v37 = -1;
        }

        if (EffectiveRate == 0.0)
        {
          v37 = *(a2 + 320);
        }

        *(a2 + 320) = v37;
        if (v11)
        {
          v38 = 1;
        }

        else
        {
          v38 = v36 == v37;
        }

        v40 = v38 && v9 == 0;
        if (*(a2 + 280))
        {
          OUTLINED_FUNCTION_8_2(v27, v28, v29, v30, v31, v32, v33, v34, v42.value, *&v42.timescale, v42.epoch, v43, *&v44.value);
          rescheduleValidAndRemoveInvalidTimers(a2, &v42, v40);
        }

        if (*(a2 + 304))
        {
          OUTLINED_FUNCTION_8_2(v27, v28, v29, v30, v31, v32, v33, v34, v42.value, *&v42.timescale, v42.epoch, v43, *&v44.value);
          rescheduleValidAndRemoveCancelledTimerSources(a2, &v42.value, v40);
        }
      }

      FigReentrantMutexUnlock(*(a2 + 112));
      return figTimebasePostNotification(a2, cf1, a5, v12, v13, v14, v15, v16, v42.value);
    }

    else
    {
      v41 = *(a2 + 112);

      return FigReentrantMutexUnlock(v41);
    }
  }

  return result;
}

size_t figTimebaseSetAnchorTimeMaybeNowMaybeNotifying()
{
  OUTLINED_FUNCTION_27(&kCMTimeInvalid);
  if (!v0)
  {
    return 4294954548;
  }

  v8 = v4;
  v9 = v3;
  v10 = v2;
  v11 = v1;
  v12 = v0;
  result = figTimebaseVerifyReadWrite(v0, v1, v2, v3, v4, v5, v6, v7, v44.value);
  if (!result)
  {
    FigReentrantMutexLock(*(v12 + 112));
    if (*(v12 + 184) != 0.0 || (figTimebaseGetTime_MaybeUpdatingAnchorTimeFromLoopiness(v12, 0, 0, &time1), OUTLINED_FUNCTION_13_0(), CMTimeCompare(&time1, &v44)))
    {
      if (v9)
      {
        figTimebaseGetMasterTime(v12, &time1);
        *v10 = time1;
        v48 = *v11;
        v49 = *(v11 + 16);
      }

      v21 = *&v10->value;
      *(v12 + 176) = v10->epoch;
      *(v12 + 160) = v21;
      v22 = *v11;
      *(v12 + 208) = *(v11 + 16);
      *(v12 + 192) = v22;
      *(v12 + 216) = 0;
      v23 = *(v12 + 184);
      if (v23 != 0.0)
      {
        *&v23 = FigSyncInvertTransform(v12 + 160, v12 + 224).n128_u64[0];
        if (!v24)
        {
          *(v12 + 216) = 1;
        }
      }

      if (!v9)
      {
        figTimebaseGetTime_MaybeUpdatingAnchorTimeFromLoopiness(v12, 0, 0, &v48);
      }

      if (*(v12 + 280))
      {
        OUTLINED_FUNCTION_0_18(v23, v14, v15, v16, v17, v18, v19, v20, *&v44.value, *&v44.timescale, *&v44.epoch, v45, *&time1.value, *&time1.timescale, *&time1.epoch, v47, *&v48);
        rescheduleValidAndRemoveInvalidTimers(v12, v25, 0);
      }

      if (*(v12 + 304))
      {
        OUTLINED_FUNCTION_0_18(v23, v14, v15, v16, v17, v18, v19, v20, *&v44.value, *&v44.timescale, *&v44.epoch, v45, *&time1.value, *&time1.timescale, *&time1.epoch, v47, *&v48);
        rescheduleValidAndRemoveCancelledTimerSources(v12, v26, 0);
      }

      FigReentrantMutexUnlock(*(v12 + 112));
      if (v8 == 1)
      {
        CFGetAllocator(v12);
        OUTLINED_FUNCTION_0_18(v27, v28, v29, v30, v31, v32, v33, v34, *&v44.value, *&v44.timescale, *&v44.epoch, v45, *&time1.value, *&time1.timescale, *&time1.epoch, v47, *&v48);
        PayloadForNotificationAtTime = figTimebaseCreatePayloadForNotificationAtTime(v35, v36);
        OUTLINED_FUNCTION_20(PayloadForNotificationAtTime, @"CMTimebaseTimeJumped", v38, v39, v40, v41, v42, v43, v44.value);
        if (PayloadForNotificationAtTime)
        {
          CFRelease(PayloadForNotificationAtTime);
        }
      }
    }

    else
    {
      FigReentrantMutexUnlock(*(v12 + 112));
    }

    return 0;
  }

  return result;
}

size_t figTimebaseCreate_cold_1(const CMBlockBufferCustomBlockSource *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC298, 0xFFFFCE32uLL, "<<< timebase >>>", a1, v8, a7, a8, v11);
  *a2 = result;
  return result;
}

double CMTimebaseGetTimeAndHostClockTimePairClampedAboveAnchorTime_cold_1(CMTime *a1, os_unfair_lock_s **a2, CMTime *a3)
{
  OUTLINED_FUNCTION_17(a2, a1);
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v6, HostTimeClock);
  result = *&v6.value;
  *a3 = v6;
  return result;
}

size_t CMTimebaseGetTimeAndHostClockTimePairClampedAboveAnchorTime_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC298, 0xFFFFCE2FuLL, "<<< timebase >>>", 0xF8D, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

void figTimebaseGetTimeAtMasterTime_cold_1(os_unfair_lock_s **a1, CMTime *a2)
{
  v4 = FigTimebaseCopyTargetTimebase(a1);
  OUTLINED_FUNCTION_19(v4);
  if (CMTimebaseGetRate(v2) == 0.0)
  {
    v5 = *(v2 + 192);
    a2->epoch = *(v2 + 208);
    *&a2->value = v5;
  }

  else
  {
    OUTLINED_FUNCTION_2_8();
    FigSyncApplyTransform(&v6, v2 + 160, a2, v6.value);
  }

  a2->flags &= ~2u;
  FigReentrantMutexUnlock(*(v2 + 112));
  CFRelease(v2);
}

void fpm_globalPerformanceMonitorInitOnce()
{
  cf = 0;
  v1 = *MEMORY[0x1E695E480];
  FigThreadRunOnce(&FigPerformanceMonitorGetClassID_sRegisterFigPerformanceMonitorBaseTypeOnce, RegisterFigPerformanceMonitorBaseType);
  if (CMDerivedObjectCreate(v1, kFigPerformanceMonitor_VTable, _MergedGlobals_13, &cf, v2, v3, v4, v5, v44))
  {
    goto LABEL_15;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage(cf);
  if (!DerivedStorage)
  {
    goto LABEL_15;
  }

  v7 = DerivedStorage;
  v8 = dispatch_queue_create("com.apple.coremedia.figperfmonitor.state", 0);
  *(v7 + 8) = v8;
  if (!v8)
  {
    v28 = qword_1EAF1CD80;
    v29 = v0;
    v30 = 866;
LABEL_23:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, 0xFFFFCE0EuLL, "< FigPerformanceMonitor >", v30, v29, v9, v10, v45);
    goto LABEL_15;
  }

  v11 = v8;
  v12 = FigCFWeakReferenceHolderCreateWithReferencedObject(cf);
  if (!v12)
  {
    OUTLINED_FUNCTION_0_19();
    if (FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, 0xFFFFCE0EuLL, "< FigPerformanceMonitor >", 0x244, v32, v33, v34, v45))
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  v13 = v12;
  v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v11);
  if (v14)
  {
    v15 = v14;
    v16 = dispatch_time(0, 30000000000);
    dispatch_source_set_timer(v15, v16, 0x6FC23AC00uLL, 0x3B9ACA00uLL);
    v17 = CFRetain(v13);
    dispatch_set_context(v15, v17);
    dispatch_source_set_event_handler_f(v15, fpm_timerCallback);
    dispatch_source_set_cancel_handler_f(v15, fpm_timerCancellationCallback);
    dispatch_resume(v15);
    v18 = 0;
    *v7 = v15;
  }

  else
  {
    OUTLINED_FUNCTION_0_19();
    v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, 0xFFFFCE0EuLL, "< FigPerformanceMonitor >", 0x247, v36, v37, v38, v45);
  }

  CFRelease(v13);
  if (!v18)
  {
LABEL_8:
    v19 = CFUUIDCreate(v1);
    if (v19)
    {
      v20 = v19;
      v21 = CFUUIDCreateString(v1, v19);
      *(v7 + 664) = v21;
      if (v21)
      {
        v22 = getpid();
        *(v7 + 16) = v22;
        proc_name(v22, (v7 + 20), 0x21u);
        v23 = objc_alloc_init(MEMORY[0x1E6999540]);
        *(v7 + 584) = v23;
        if (v23)
        {
          *(v7 + 56) = arc4random();
          v24 = objc_autoreleasePoolPush();
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __fpm_performanceMonitorCreate_block_invoke;
          v47[3] = &__block_descriptor_40_e5_v8__0l;
          v47[4] = v7;
          [*(v7 + 584) setScreenOnChangedHandler:v47];
          v25 = *(v7 + 584);
          v46[0] = MEMORY[0x1E69E9820];
          v46[1] = 3221225472;
          v46[2] = __fpm_performanceMonitorCreate_block_invoke_3;
          v46[3] = &__block_descriptor_40_e5_v8__0l;
          v46[4] = v7;
          [v25 activateWithCompletion:v46];
          objc_autoreleasePoolPop(v24);
          Mutable = CFArrayCreateMutable(v1, 0, MEMORY[0x1E695E9C0]);
          *(v7 + 64) = Mutable;
          if (Mutable)
          {
            v27 = CFDictionaryCreateMutable(v1, 0, 0, MEMORY[0x1E695E9E8]);
            *(v7 + 672) = v27;
            if (v27)
            {
              qword_1ED4CC518 = cf;
              cf = 0;
LABEL_14:
              CFRelease(v20);
              goto LABEL_15;
            }

            OUTLINED_FUNCTION_0_19();
            v43 = 905;
          }

          else
          {
            OUTLINED_FUNCTION_0_19();
            v43 = 902;
          }
        }

        else
        {
          OUTLINED_FUNCTION_0_19();
          v43 = 882;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_19();
        v43 = 875;
      }

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, 0xFFFFCE0EuLL, "< FigPerformanceMonitor >", v43, v40, v41, v42, v45);
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_0_19();
    v30 = 872;
    goto LABEL_23;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }
}

size_t __FigPerformanceMonitorUpdateOSTransactionData_block_invoke_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD80, 0xFFFFB582uLL, "< FigPerformanceMonitor >", 0x1A0, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

void fpm_timerCallback_cold_1(uint64_t a1, void *a2, CFIndex a3, CFArrayRef *a4)
{
  v8 = 0;
  v9 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*a4, v8);
    Value = FigCFDictionaryGetValue(ValueAtIndex);
    v12 = FigCFWeakReferenceHolderCopyReferencedObject(Value);
    FigCFDictionaryGetInt64IfPresent(ValueAtIndex, @"creationTime", a2, v13, v14, v15, v16, v17, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
    if (v12)
    {
      v18 = FigGetUpTimeNanoseconds() - *a2;
      if (v18 > v9)
      {
        v19 = *(a1 + 632);
        v20 = FigCFDictionaryGetValue(ValueAtIndex);
        *(a1 + 632) = v20;
        if (v20)
        {
          CFRetain(v20);
        }

        if (v19)
        {
          CFRelease(v19);
        }

        v9 = v18;
      }

      ++v8;
      CFRelease(v12);
    }

    else
    {
      CFArrayRemoveValueAtIndex(*a4, v8);
      --a3;
    }
  }

  while (v8 < a3);
  *(a1 + 624) = v9 / 0x3B9ACA00uLL;
}

size_t fpm_timerCallback_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD80, 0xFFFFB582uLL, "< FigPerformanceMonitor >", 0x11C, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t fpm_timerCallback_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD80, 0xFFFFB582uLL, "< FigPerformanceMonitor >", 0x119, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t fpm_timerCallback_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD80, 0xFFFFB582uLL, "< FigPerformanceMonitor >", 0xF9, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

void fpm_timerCallback_cold_5()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkRTCReportingSessionInfoContainsRealtimeEvents(void)") description:{@"FigPerformanceMonitor.m", 93, @"%s", dlerror()}];
  __break(1u);
}

void fpm_timerCallback_cold_6()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkRTCReportingSessionInfoSessionID(void)") description:{@"FigPerformanceMonitor.m", 90, @"%s", dlerror()}];
  __break(1u);
}

void fpm_timerCallback_cold_7()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkRTCReportingSessionInfoClientType(void)") description:{@"FigPerformanceMonitor.m", 87, @"%s", dlerror()}];
  __break(1u);
}

void fpm_timerCallback_cold_9()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkRTCReportingUserInfoClientName(void)") description:{@"FigPerformanceMonitor.m", 96, @"%s", dlerror()}];
  __break(1u);
}

size_t fpm_timerCallback_cold_10(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD80, 0xFFFFB582uLL, "< FigPerformanceMonitor >", 0x165, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t fpm_reportingDataForInternalUsingCoreAnalytics_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CD80, 0xFFFFB57DuLL, "< FigPerformanceMonitor >", 0x156, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

void RTCReportingLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *RTCReportingLibrary(void)") description:{@"FigPerformanceMonitor.m", 84, @"%s", *a1}];
  __break(1u);
}

void __getRTCReportingClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getRTCReportingClass(void)_block_invoke") description:{@"FigPerformanceMonitor.m", 85, @"Unable to find class %s", "RTCReporting"}];
  __break(1u);
}

size_t metserver_replyingMessageHandler(_xpc_connection_s *a1, void *a2, void *a3)
{
  HIDWORD(v72) = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v72 + 1);
  if (OpCode)
  {
    return OpCode;
  }

  switch(HIDWORD(v72))
  {
    case 0x63726574:
      v74 = 0;
      v75 = 0;
      cf = 0;
      int64 = xpc_dictionary_get_int64(a2, "MaxNoOfClasses");
      array = xpc_dictionary_get_array(a2, "EventCountByClassXPCArray");
      if (array)
      {
        v18 = array;
        MallocZoneForMedia = FigGetMallocZoneForMedia();
        v20 = malloc_type_zone_calloc(MallocZoneForMedia, 1uLL, 8 * int64, 0x100004000313F17uLL);
        if (v20)
        {
          v21 = v20;
          if (xpc_array_get_count(v18))
          {
            v22 = 0;
            do
            {
              v21[v22] = xpc_array_get_int64(v18, v22);
              ++v22;
            }

            while (v22 < xpc_array_get_count(v18));
          }

          AllocatorForMedia = FigGetAllocatorForMedia();
          v24 = FigMetricEventTimelineCreate(AllocatorForMedia, int64, v21, @"metricEventTimeline", 0, &v75);
          if (!v24)
          {
            v25 = FigGetAllocatorForMedia();
            Companion = metserver_createCompanion(v25, &cf);
            v27 = cf;
            if (Companion)
            {
              v15 = Companion;
            }

            else
            {
              v15 = FigXPCServerAssociateObjectWithConnection(a1, v75, cf, FigCFRelease, 0, &v74);
              if (!v15)
              {
                v28 = FigXPCRetain(a1);
                v30 = cf;
                v29 = v74;
                *(cf + 2) = v28;
                v30[3] = v29;
                xpc_dictionary_set_uint64(a3, ".objectID", v29);
                cf = 0;
                goto LABEL_19;
              }

              v27 = cf;
            }

            if (v27)
            {
              CFRelease(v27);
            }

LABEL_19:
            v31 = v75;
            if (!v75)
            {
              return v15;
            }

            goto LABEL_50;
          }

LABEL_55:
          v15 = v24;
          goto LABEL_19;
        }

        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        v70 = v3;
        v71 = 175;
      }

      else
      {
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        v70 = v3;
        v71 = 172;
      }

      v24 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFB405uLL, "metricevent", v71, v70, v68, v69, v72);
      goto LABEL_55;
    case 0x64697370:
      uint64 = xpc_dictionary_get_uint64(a2, ".objectID");
      return FigXPCServerDisassociateObjectWithConnection(a1, uint64);
    case 0x636C7369:
      v74 = 0;
      v75 = 0;
      v39 = xpc_dictionary_get_int64(a2, "ClassID");
      v33 = OUTLINED_FUNCTION_1_10(v39, v40, v41, v42, v43, v44, v45, v46, v72, cf, v74, v75);
      if (!v33)
      {
        if (*(*(CMBaseObjectGetVTable(v75) + 16) + 24))
        {
LABEL_41:
          v64 = OUTLINED_FUNCTION_2_9();
          v33 = v65(v64);
          goto LABEL_42;
        }

LABEL_43:
        v15 = 4294954514;
        goto LABEL_47;
      }

LABEL_42:
      v15 = v33;
      goto LABEL_47;
  }

  if (HIDWORD(v72) != 1886741107)
  {
    switch(HIDWORD(v72))
    {
      case 0x72656773:
        v33 = OUTLINED_FUNCTION_1_10(0, v8, v9, v10, v11, v12, v13, v14, v72, cf, 0, 0);
        if (!v33)
        {
          v34 = v74;
          if (!*(v74 + 2))
          {
            v35 = FigXPCRetain(a1);
            v34 = v74;
            *(v74 + 2) = v35;
          }

          v36 = v75;
          v37 = v34[4];
          v38 = *(*(CMBaseObjectGetVTable(v75) + 16) + 8);
          if (!v38)
          {
            goto LABEL_43;
          }

          v33 = v38(v36, v34, &metserver_registerSubscriber_subscriberCallbacks, v37);
        }

        break;
      case 0x73657669:
        v74 = 0;
        v75 = 0;
        v56 = xpc_dictionary_get_int64(a2, "EventID");
        v33 = OUTLINED_FUNCTION_1_10(v56, v57, v58, v59, v60, v61, v62, v63, v72, cf, v74, v75);
        if (!v33)
        {
          if (*(*(CMBaseObjectGetVTable(v75) + 16) + 16))
          {
            goto LABEL_41;
          }

          goto LABEL_43;
        }

        break;
      case 0x73746165:
        v33 = OUTLINED_FUNCTION_1_10(0, v8, v9, v10, v11, v12, v13, v14, v72, cf, 0, 0);
        if (v33)
        {
          goto LABEL_42;
        }

        if (*(*(CMBaseObjectGetVTable(v75) + 16) + 32))
        {
          goto LABEL_41;
        }

        goto LABEL_43;
      default:
        return 4294951138;
    }

    goto LABEL_42;
  }

  v47 = OUTLINED_FUNCTION_1_10(0, v8, v9, v10, v11, v12, v13, v14, v72, 0, 0, 0);
  if (v47)
  {
    goto LABEL_35;
  }

  v47 = FigMetricEventTimelineClientServerXPC_DeserializeAndCopyEvent(a2, &cf, v48, v49, v50, v51, v52, v53);
  if (v47)
  {
    goto LABEL_35;
  }

  if (*(*(CMBaseObjectGetVTable(v75) + 16) + 40))
  {
    v54 = OUTLINED_FUNCTION_2_9();
    v47 = v55(v54);
LABEL_35:
    v15 = v47;
    goto LABEL_45;
  }

  v15 = 4294954514;
LABEL_45:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_47:
  if (v75)
  {
    CFRelease(v75);
  }

  v31 = v74;
  if (v74)
  {
LABEL_50:
    CFRelease(v31);
  }

  return v15;
}

void metserver_didReceiveEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  message = 0;
  if (!a1)
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 24);
  if (!v6)
  {
    goto LABEL_7;
  }

  if (!*(a1 + 16))
  {
LABEL_8:
    v6 = 0;
    goto LABEL_7;
  }

  v8 = FigXPCCreateBasicMessage(0x65766E74u, v6, &message);
  v6 = message;
  if (!v8)
  {
    v14 = FigMetricEventTimelineClientServerXPC_SerializeEvent(message, a2, a4, v9, v10, v11, v12, v13);
    v6 = message;
    if (!v14)
    {
      xpc_connection_send_message(*(a1 + 16), message);
      v6 = message;
    }
  }

LABEL_7:
  FigXPCRelease(v6);
}

size_t metserver_copyEventTimelineAndCompanion(_xpc_connection_s *a1, xpc_object_t xdict, CFTypeRef *a3, void *a4)
{
  cf = 0;
  v17 = 0;
  uint64 = xpc_dictionary_get_uint64(xdict, ".objectID");
  if (!uint64)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFB406uLL, "metricevent", 0x8E, v4, v14, v15, cf);
    goto LABEL_14;
  }

  v9 = FigXPCServerLookupAndRetainAssociatedObject(a1, uint64, &v17, &cf);
  if (v9)
  {
LABEL_14:
    v11 = v9;
    goto LABEL_10;
  }

  if (a3)
  {
    *a3 = v17;
    v17 = 0;
  }

  if (a4)
  {
    v10 = cf;
    if (cf)
    {
      v10 = CFRetain(cf);
    }

    v11 = 0;
    *a4 = v10;
  }

  else
  {
    v11 = 0;
  }

LABEL_10:
  if (v17)
  {
    CFRelease(v17);
  }

  return v11;
}

void __FigMetricEventTimelineStartServer_block_invoke_cold_1(void *a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  FigCFDictionarySetInt32(a1, @"xpcServerOption_QueuePriority", 44, a4, a5, a6, a7, a8);
  *(*(*a3 + 8) + 24) = FigXPCServerStart("com.apple.coremedia.mediaplaybackd.figmetriceventtimeline.xpc", a2, a1, &gFigMetricEventTimelineServer, v11, v12, v13, v14);
  if (!*(*(*a3 + 8) + 24))
  {
    FigXPCServerActivate(gFigMetricEventTimelineServer);
  }

  CFRelease(a1);
}

size_t __FigMetricEventTimelineStartServer_block_invoke_cold_2(uint64_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB405uLL, "metricevent", 0x1A1, v3, v4, v5, v7);
  *(*(*a1 + 8) + 24) = result;
  return result;
}

size_t FigMetricEventTimelineGetIDByAssociatingWithClientConnection_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB406uLL, "metricevent", 0x1B8, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigMetricEventTimelineGetIDByAssociatingWithClientConnection_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB406uLL, "metricevent", 0x1B7, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigMetricEventTimelineGetIDByAssociatingWithClientConnection_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB406uLL, "metricevent", 0x1B6, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

void metserver_createCompanion_cold_1(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFB405uLL, "metricevent", 0x7C, v5, v6, v7, v8);
  CFRelease(a1);
}

size_t metserver_createCompanion_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB405uLL, "metricevent", 0x79, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t metserver_createCompanion_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB406uLL, "metricevent", 0x76, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

uint64_t fontFamilyList_Equal(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = CFGetTypeID(a1);
  OUTLINED_FUNCTION_1_11(&FigCaptionFontFamilyNameListGetTypeID_sRegisterFigCaptionFontFamilyNameListTypeOnce);
  if (!a2)
  {
    return 0;
  }

  if (v4 != sFigCaptionFontFamilyNameListID)
  {
    return 0;
  }

  v5 = CFGetTypeID(a2);
  OUTLINED_FUNCTION_1_11(&FigCaptionFontFamilyNameListGetTypeID_sRegisterFigCaptionFontFamilyNameListTypeOnce);
  if (v5 != sFigCaptionFontFamilyNameListID)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a2[2];

  return CFEqual(v6, v7);
}

CFHashCode fontFamilyList_Hash(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  OUTLINED_FUNCTION_1_11(&FigCaptionFontFamilyNameListGetTypeID_sRegisterFigCaptionFontFamilyNameListTypeOnce);
  if (v2 != sFigCaptionFontFamilyNameListID)
  {
    return 0;
  }

  v3 = a1[2];

  return CFHash(v3);
}

size_t FigCaptionFontFamilyNameListCreateMutable_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< FigCaptionFontFamilyNameList >>>>", 0xC2, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCaptionFontFamilyNameListCreateMutable_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigCaptionFontFamilyNameList >>>>", 0xBA, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

void FigCaptionFontFamilyNameListCreateMutableCopy_cold_1(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFCE0EuLL, "<<<< FigCaptionFontFamilyNameList >>>>", 0xE3, v5, v6, v7, v8);

  CFRelease(a1);
}

size_t FigCaptionFontFamilyNameListCreateMutableCopy_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< FigCaptionFontFamilyNameList >>>>", 0xE0, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCaptionFontFamilyNameListCreateMutableCopy_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigCaptionFontFamilyNameList >>>>", 0xD8, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCaptionFontFamilyNameListAppend_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigCaptionFontFamilyNameList >>>>", 0x105, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCaptionFontFamilyNameListAppend_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigCaptionFontFamilyNameList >>>>", 0x104, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCaptionFontFamilyNameListAppend_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigCaptionFontFamilyNameList >>>>", 0x101, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCaptionFontFamilyNameListCopyFamilyKindAndNameAtIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigCaptionFontFamilyNameList >>>>", 0x11E, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCaptionFontFamilyNameListCopyFamilyKindAndNameAtIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigCaptionFontFamilyNameList >>>>", 0x11F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCaptionFontFamilyNameListCopyFamilyKindAndNameAtIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigCaptionFontFamilyNameList >>>>", 0x11D, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCPECryptorRemoteRetainCopiedCryptor(uint64_t a1, CMBlockBufferRef *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v36 = 0;
  if (a2)
  {
    if (a3)
    {
      v38 = 0;
      v39 = &v38;
      v40 = 0x2000000000;
      v41 = 0;
      cf[0] = MEMORY[0x1E69E9820];
      cf[1] = 0x40000000;
      cf[2] = __cryptorRemote_EnsureClientEstablished_block_invoke;
      cf[3] = &unk_1E749ED60;
      cf[4] = &v38;
      if (qword_1ED4CC528 != -1)
      {
        dispatch_once(&qword_1ED4CC528, cf);
      }

      FigXPCRemoteClientKillServerOnTimeout();
      v12 = *(v39 + 6);
      _Block_object_dispose(&v38, 8);
      if (v12)
      {
        return v12;
      }

      v12 = FigXPCRemoteClientRetainCopiedObject(_MergedGlobals_14, a2, &v36);
      v13 = v36;
      if (v12)
      {
        goto LABEL_17;
      }

      if (v36)
      {
LABEL_15:
        v12 = 0;
        *a3 = v13;
        return v12;
      }

      cf[0] = 0;
      ClassID = FigCPECryptorGetClassID();
      v19 = CMDerivedObjectCreate(a1, kFigCPECryptorRemote_VTable, ClassID, cf, v15, v16, v17, v18, v36);
      if (!v19)
      {
        if (cf[0])
        {
          DerivedStorage = CMBaseObjectGetDerivedStorage(cf[0]);
          *(DerivedStorage + 8) = a2;
          *DerivedStorage = 0;
          *(DerivedStorage + 16) = 0;
          *(DerivedStorage + 24) = 0;
          *(DerivedStorage + 32) = 0;
          *(DerivedStorage + 48) = FigSimpleMutexCreate();
          v12 = FigXPCRemoteClientAssociateObject(_MergedGlobals_14, cf[0], a2, v21, v22, v23, v24, v25, v36);
          if (!v12)
          {
            v36 = CFRetain(cf[0]);
          }

LABEL_12:
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          v13 = v36;
          if (!v12)
          {
            goto LABEL_15;
          }

LABEL_17:
          if (v13)
          {
            CFRelease(v13);
          }

          return v12;
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0_20();
        v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, 0xFFFFBB5DuLL, "<<< FigCPECryptorRemote >>>", 0x2C6, v33, v34, v35, v36);
      }

      v12 = v19;
      goto LABEL_12;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v31 = 738;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v31 = 737;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, 0xFFFFCE14uLL, "<<< FigCPECryptorRemote >>>", v31, v28, v29, v30, a9);
}

size_t FigCPECryptorRemoteGetID(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v16 = 0;
  if (a1)
  {
    if (a2)
    {
      result = cryptorRemote_GetObjectID(a1, &v16);
      if (!result)
      {
        *a2 = v16;
      }

      return result;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v15 = 766;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v15 = 765;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0xFFFFBB5EuLL, "<<< FigCPECryptorRemote >>>", v15, v12, v13, v14, a9);
}

uint64_t cryptorRemote_Invalidate(uint64_t a1)
{
  v6 = 0;
  v7 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  ObjectID = cryptorRemote_GetObjectID(a1, &v7);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(0x69637279u, v7, &v6), ObjectID))
  {
    v4 = ObjectID;
  }

  else
  {
    v4 = FigXPCRemoteClientSendSyncMessage(_MergedGlobals_14, v6);
    if (!v4)
    {
      *DerivedStorage = 1;
    }
  }

  FigXPCRelease(v6);
  return v4;
}

void cryptorRemote_Finalize(uint64_t a1)
{
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigXPCRemoteClientDisassociateObject(_MergedGlobals_14, *(DerivedStorage + 8), v2, v3, v4, v5, v6, v7, v9);
  if (*(DerivedStorage + 1) || !FigXPCCreateBasicMessage(0x64697370u, *(DerivedStorage + 8), &v10) && !FigXPCRemoteClientSendAsyncMessage(_MergedGlobals_14, v10))
  {
    FigSimpleMutexDestroy(*(DerivedStorage + 48));
    v8 = *(DerivedStorage + 40);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  FigXPCRelease(v10);
  FigXPCRemoteClientKillServerOnTimeout();
}

size_t cryptorRemote_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v31 = 0;
  if (a4)
  {
    v14 = DerivedStorage;
    ObjectID = cryptorRemote_GetObjectID(a1, &v31);
    if (!ObjectID)
    {
      if (CFEqual(a2, @"UUIDString"))
      {
        FigSimpleMutexLock(*(v14 + 48));
        v24 = (v14 + 40);
        if (*(v14 + 40))
        {
          FigSimpleMutexUnlock(*(v14 + 48));
LABEL_9:
          v26 = *v24;
          if (*v24)
          {
            v26 = CFRetain(v26);
          }

          v25 = 0;
          *a4 = v26;
          return v25;
        }

        v25 = FigXPCSendStdCopyPropertyMessage(_MergedGlobals_14, v31, @"UUIDString", v14 + 40, v20, v21, v22, v23);
        FigSimpleMutexUnlock(*(v14 + 48));
        if (!v25)
        {
          goto LABEL_9;
        }

        return v25;
      }

      return FigXPCSendStdCopyPropertyMessage(_MergedGlobals_14, v31, a2, a4, v16, v17, v18, v19);
    }

    return ObjectID;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBB5EuLL, "<<< FigCPECryptorRemote >>>", 0x1E8, v9, v29, v30, a9);
}

uint64_t cryptorRemote_SetProperty(uint64_t a1, const void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v38 = 0;
  if (a2)
  {
    if (a3)
    {
      ObjectID = cryptorRemote_GetObjectID(a1, &v38);
      if (!ObjectID)
      {
        if (CFEqual(a2, @"KeyRequestError"))
        {
          v12 = CFGetTypeID(a3);
          if (v12 == CFErrorGetTypeID())
          {
            OUTLINED_FUNCTION_2_10();
            v15 = FigXPCCreateBasicMessage(0x736B7272u, v13, v14);
            if (v15)
            {
              goto LABEL_19;
            }

            v15 = FigXPCMessageSetCFError(*v39, "KeyRequestError", a3);
            if (v15)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }

          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_0_20();
          v37 = 456;
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, 0xFFFFBB5EuLL, "<<< FigCPECryptorRemote >>>", v37, v34, v35, v36, v38);
        }

        if (CFEqual(a2, @"CPEBAESCP_VideoFormatDescription"))
        {
          v16 = CFGetTypeID(a3);
          if (v16 == CMFormatDescriptionGetTypeID())
          {
            OUTLINED_FUNCTION_2_10();
            v15 = FigXPCCreateBasicMessage(0x73666D74u, v17, v18);
            if (v15)
            {
              goto LABEL_19;
            }

            v15 = FigXPCMessageSetFormatDescription(*v39, "FormatDescription", a3);
            if (v15)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }

          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_0_20();
          v37 = 461;
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, 0xFFFFBB5EuLL, "<<< FigCPECryptorRemote >>>", v37, v34, v35, v36, v38);
        }

        if (CFEqual(a2, @"CPEAESCP_SUBAUXDATA"))
        {
          v23 = CFGetTypeID(a3);
          if (v23 == CFDataGetTypeID())
          {
            OUTLINED_FUNCTION_2_10();
            v15 = FigXPCCreateBasicMessage(0x73736164u, v24, v25);
            if (v15)
            {
              goto LABEL_19;
            }

            v15 = FigXPCMessageSetCFData(*v39, "SubsampleAuxiliaryData", a3);
            if (v15)
            {
              goto LABEL_19;
            }

LABEL_18:
            v15 = FigXPCRemoteClientSendSyncMessage(_MergedGlobals_14, *v39);
LABEL_19:
            v26 = v15;
            FigXPCRelease(*v39);
            return v26;
          }

          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_0_20();
          v37 = 466;
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, 0xFFFFBB5EuLL, "<<< FigCPECryptorRemote >>>", v37, v34, v35, v36, v38);
        }

        return FigXPCSendStdSetPropertyMessage(_MergedGlobals_14, v38, a2, a3, v19, v20, v21, v22);
      }

      return ObjectID;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v32 = 450;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v32 = 449;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, 0xFFFFBB5EuLL, "<<< FigCPECryptorRemote >>>", v32, v29, v30, v31, a9);
}

size_t cryptorRemote_getNativeSession(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (a1)
  {
    if (a2)
    {
      v12 = DerivedStorage;
      result = cryptorRemote_ensureStateUpdatedFromServer(a1);
      if (!result)
      {
        *a2 = *(v12 + 24);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 0xFFFFBB5EuLL, "<<< FigCPECryptorRemote >>>", 0x330, v15, v16, v17, a9);
  }

  return result;
}

size_t cryptorRemote_getExternalProtectionMethods(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (a1)
  {
    if (a2)
    {
      v12 = DerivedStorage;
      result = cryptorRemote_ensureStateUpdatedFromServer(a1);
      *a2 = *(v12 + 32);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 0xFFFFBB5EuLL, "<<< FigCPECryptorRemote >>>", 0x340, v15, v16, v17, a9);
  }

  return result;
}

unint64_t cryptorRemote_CreateKeyRequest(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OUTLINED_FUNCTION_3_5(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14, *v15, v16);
  if (!v10)
  {
    v10 = FigXPCCreateBasicMessage(0x636B6579u, v16, v15);
    if (!v10)
    {
      v10 = FigXPCMessageSetCFDictionary(*v15, "KeyRequestData", a2);
      if (!v10)
      {
        v10 = FigXPCRemoteClientSendSyncMessageCreatingReply(_MergedGlobals_14, *v15, &v14);
        if (!v10)
        {
          v10 = FigXPCMessageCopyCFData(v14, "SPCBytes", a4);
        }
      }
    }
  }

  v11 = v10;
  FigXPCRelease(*v15);
  FigXPCRelease(v14);
  return v11;
}

uint64_t cryptorRemote_SetKeyRequestResponse(uint64_t a1, const void *a2, void *a3)
{
  *v10 = 0;
  v11 = 0;
  ObjectID = cryptorRemote_GetObjectID(a1, &v11);
  if (ObjectID)
  {
    v8 = ObjectID;
    v7 = 0;
  }

  else
  {
    v6 = FigXPCCreateBasicMessage(0x736B6579u, v11, v10);
    v7 = *v10;
    if (v6 || (v6 = FigXPCMessageSetCFData(*v10, "KeyRequestResponse", a2), v7 = *v10, v6) || (v6 = FigXPCMessageSetCFDictionary(*v10, "KeyResponseOptionsDictionary", a3), v7 = *v10, v6))
    {
      v8 = v6;
    }

    else
    {
      v8 = FigXPCRemoteClientSendSyncMessage(_MergedGlobals_14, *v10);
      v7 = *v10;
    }
  }

  FigXPCRelease(v7);
  return v8;
}

size_t cryptorRemote_GetSerializationToken(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v15 = 0;
  if (a2)
  {
    result = cryptorRemote_GetObjectID(a1, &v15);
    if (!result)
    {
      *a2 = v15;
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0xFFFFBB5EuLL, "<<< FigCPECryptorRemote >>>", 0x174, v12, v13, v14, a9);
  }

  return result;
}

unint64_t cryptorRemote_CopyPropertyForFormat(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, __CFDictionary **a5)
{
  *v22 = 0;
  v23 = 0;
  v21 = 0;
  if (a5)
  {
    ObjectID = cryptorRemote_GetObjectID(a1, &v23);
    if (!ObjectID)
    {
      ObjectID = FigXPCCreateBasicMessage(0x63706666u, v23, v22);
      if (!ObjectID)
      {
        ObjectID = FigXPCMessageSetCFString(*v22, ".PropertyName", a2);
        if (!ObjectID)
        {
          FigXPCMessageSetUInt32(*v22, "Format", a3, v10, v11, v12, v13, v14);
          ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply(_MergedGlobals_14, *v22, &v21);
          if (!ObjectID)
          {
            ObjectID = FigXPCMessageCopyCFObject(v21, ".Value", a5);
          }
        }
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    ObjectID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBB5EuLL, "<<< FigCPECryptorRemote >>>", 0x20A, v5, v18, v19, v20);
  }

  v15 = ObjectID;
  FigXPCRelease(*v22);
  FigXPCRelease(v21);
  return v15;
}

uint64_t cryptorRemote_TestAndSetKeyRequestState(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a3;
  v11 = a2;
  v12 = OUTLINED_FUNCTION_3_5(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, xdict, v18);
  if (v12 || (v12 = FigXPCCreateBasicMessage(0x74617373u, v18, &xdict), v12) || (xpc_dictionary_set_int64(xdict, "ExpectedState", v11), xpc_dictionary_set_int64(xdict, "NewState", v10), v12 = FigXPCRemoteClientSendSyncMessageCreatingReply(_MergedGlobals_14, xdict, &v16), v12))
  {
    v13 = v12;
  }

  else
  {
    if (a4)
    {
      *a4 = xpc_dictionary_get_BOOL(v16, "WasSetOutFlag");
    }

    v13 = 0;
    if (a5)
    {
      *a5 = xpc_dictionary_get_uint64(v16, "KeyRequestIDOut");
    }
  }

  FigXPCRelease(xdict);
  FigXPCRelease(v16);
  return v13;
}

uint64_t cryptorRemote_AbsorbKeyRequestContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectID = OUTLINED_FUNCTION_3_5(a1, a2, a3, a4, a5, a6, a7, a8, v13, xdict, value, v16);
  if (ObjectID || (ObjectID = cryptorRemote_GetObjectID(a2, &value), ObjectID))
  {
    v10 = ObjectID;
    v11 = 0;
  }

  else
  {
    v10 = FigXPCCreateBasicMessage(0x616B7263u, v16, &xdict);
    v11 = xdict;
    if (!v10)
    {
      xpc_dictionary_set_uint64(xdict, "FromCryptorID", value);
      v10 = FigXPCRemoteClientSendSyncMessage(_MergedGlobals_14, xdict);
      v11 = xdict;
    }
  }

  FigXPCRelease(v11);
  return v10;
}

uint64_t cryptorRemote_setKeyResponseForAirPlay(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  xdict = 0;
  v13 = 0;
  ObjectID = cryptorRemote_GetObjectID(a1, &v13);
  if (ObjectID)
  {
    v10 = ObjectID;
    v9 = 0;
  }

  else
  {
    v8 = FigXPCCreateBasicMessage(0x736B6170u, v13, &xdict);
    v9 = xdict;
    if (v8 || (xpc_dictionary_set_uint64(xdict, "SessionID", a2), v8 = FigXPCMessageSetCFData(xdict, "KeyRequestResponse", a3), v9 = xdict, v8) || (v8 = FigXPCMessageSetCFDictionary(xdict, "KeyResponseOptionsDictionary", a4), v9 = xdict, v8))
    {
      v10 = v8;
    }

    else
    {
      v10 = FigXPCRemoteClientSendSyncMessage(_MergedGlobals_14, xdict);
      v9 = xdict;
    }
  }

  FigXPCRelease(v9);
  FigXPCRelease(0);
  return v10;
}

size_t cryptorRemote_copySerializedCryptorRecipe(uint64_t a1, CFDataRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v24 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (a1)
  {
    if (a2)
    {
      v13 = DerivedStorage;
      result = cryptorRemote_ensureStateUpdatedFromServer(a1);
      if (!result)
      {
        v22 = *(v13 + 24);
        v15 = *(v13 + 32);
        *&v16 = v15;
        *(&v16 + 1) = HIDWORD(v15);
        v23 = v16;
        v17 = CFDataCreate(*MEMORY[0x1E695E480], &v22, 24);
        if (v17)
        {
          v18 = v17;
          result = 0;
          *a2 = v18;
        }

        else
        {
          return 4294949725;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBB5EuLL, "<<< FigCPECryptorRemote >>>", 0x352, v9, v20, v21, a9);
  }

  return result;
}

size_t cryptorRemote_GetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBB5BuLL, "<<< FigCPECryptorRemote >>>", 0xA5, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t cryptorRemote_GetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBB5AuLL, "<<< FigCPECryptorRemote >>>", 0xA6, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t cryptorRemote_GetObjectID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBB5EuLL, "<<< FigCPECryptorRemote >>>", 0xA4, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t cryptorRemote_ensureStateUpdatedFromServer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBB5BuLL, "<<< FigCPECryptorRemote >>>", 0x311, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t cryptorRemote_ensureStateUpdatedFromServer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBB5AuLL, "<<< FigCPECryptorRemote >>>", 0x312, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigMetricEventClassInstallEventDeserializeHandler(uint64_t a1, uint64_t a2)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  SInt64 = FigCFNumberCreateSInt64(AllocatorForMedia, a1);
  if (!a2)
  {
    v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDA0, 0xFFFFB3FCuLL, "metricevent", 0xA0, v2, v6, v7, v15);
    goto LABEL_12;
  }

  if (qword_1ED4CC540 != -1)
  {
    dispatch_once(&qword_1ED4CC540, &__block_literal_global_12);
  }

  v9 = dword_1ED4CC534;
  if (!dword_1ED4CC534)
  {
    FigGetAllocatorForMedia();
    v15 = xmmword_1E749EE00;
    if (qword_1ED4CC548 != -1)
    {
      dispatch_once_f(&qword_1ED4CC548, &v15, metutil_registerClass);
    }

    Instance = _CFRuntimeCreateInstance();
    v13 = Instance;
    if (Instance)
    {
      *(Instance + 16) = a2;
    }

    else
    {
      v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDA0, 0xFFFFB3FBuLL, "metricevent", 0x90, v2, v11, v12, v15, *(&v15 + 1));
      if (v9)
      {
        goto LABEL_12;
      }
    }

    os_unfair_lock_lock(&_MergedGlobals_15);
    FigCFDictionarySetValue(qword_1ED4CC538, SInt64, v13);
    os_unfair_lock_unlock(&_MergedGlobals_15);
    if (v13)
    {
      CFRelease(v13);
    }

    v9 = 0;
  }

LABEL_12:
  if (SInt64)
  {
    CFRelease(SInt64);
  }

  return v9;
}

size_t FigMetricEventDeserializeEventAndCopy(void *a1, CFTypeRef *a2)
{
  cf = 0;
  int64 = xpc_dictionary_get_int64(a1, "EventID");
  AllocatorForMedia = FigGetAllocatorForMedia();
  SInt64 = FigCFNumberCreateSInt64(AllocatorForMedia, int64);
  if (qword_1ED4CC538)
  {
    os_unfair_lock_lock(&_MergedGlobals_15);
    Value = FigCFDictionaryGetValue(qword_1ED4CC538);
    os_unfair_lock_unlock(&_MergedGlobals_15);
    if (Value)
    {
      v11 = Value[2];
      if (v11)
      {
        v12 = v11(a1, &cf);
        if (!v12)
        {
          *a2 = cf;
          cf = 0;
        }

        if (SInt64)
        {
          goto LABEL_7;
        }

        goto LABEL_8;
      }
    }

    v14 = qword_1EAF1CDA0;
    v15 = v2;
    v16 = 4294947834;
    v17 = 194;
  }

  else
  {
    v14 = qword_1EAF1CDA0;
    v15 = v2;
    v16 = 4294947833;
    v17 = 186;
  }

  v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v16, "metricevent", v17, v15, v7, v8, v18);
  if (SInt64)
  {
LABEL_7:
    CFRelease(SInt64);
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

size_t FigMetricMockEventForTestCreate_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDA0, 0xFFFFB3FCuLL, "metricevent", 0x134, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t __ensureGlobalDeserializeRegister_block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDA0, 0xFFFFB3FBuLL, "metricevent", 0x5B, v8, a7, a8, vars0);
  dword_1ED4CC534 = result;
  return result;
}

size_t CMByteStreamCreateCompositeForRead(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t *a4, uint64_t *a5, CFTypeRef *a6, size_t a7, CMBlockBufferFlags a8, CMBlockBufferRef *a9)
{
  if (a2 >= 1 && (v10 = a3) != 0 && (v11 = a4) != 0 && (v12 = a5) != 0 && a6)
  {
    cf = 0;
    ClassID = CMByteStreamGetClassID();
    v21 = CMDerivedObjectCreate(a1, kFigCompositeByteStreamVTable, ClassID, &cf, v17, v18, v19, v20, v34);
    if (v21)
    {
      return v21;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage(cf);
    *DerivedStorage = a2;
    DerivedStorage[2] = 0;
    v23 = malloc_type_malloc(32 * a2, 0x1020040B07D1DCCuLL);
    DerivedStorage[1] = v23;
    if (v23)
    {
      v26 = -16;
      v27 = a2;
      do
      {
        v28 = CFRetain(*v10);
        v29 = DerivedStorage[1];
        v30 = (v29 + v26);
        v31 = *v11++;
        v30[2] = v28;
        v30[3] = v31;
        v32 = *v12++;
        v30[5] = v32;
        if (v26 == -16)
        {
          *(v29 + 16) = 0;
        }

        else
        {
          v30[4] = v30[1] + *v30;
        }

        v26 += 32;
        ++v10;
        --v27;
      }

      while (v27);
      DerivedStorage[3] = *(v29 + 32 * a2 - 8) + *(v29 + 32 * a2 - 16);
      *a6 = cf;
    }

    else
    {
      v27 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE0EuLL, "(Fig)", 0x19F, v9, v24, v25, v35);
      CFRelease(cf);
    }

    return v27;
  }

  else
  {

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCDB8uLL, "(Fig)", 0x194, v9, a7, a8, a9);
  }
}

size_t FigCompositeByteStreamGetAvailableLengthAtOffset_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCDB8uLL, "(Fig)", 0x116, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CMByteStreamCreateForBlockBuffer(uint64_t a1, const void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (a3)
  {
    OUTLINED_FUNCTION_0_22();

    return FigSignalErrorAtGM(v9, v10, v11, v12, 0x228, v13, v14, v15, a9);
  }

  else
  {
    v28 = 0;
    ClassID = CMByteStreamGetClassID();
    result = CMDerivedObjectCreate(a1, kFigBBufByteStreamVTable, ClassID, &v28, v21, v22, v23, v24, v27);
    if (!result)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage(v28);
      if (a2)
      {
        v26 = CFRetain(a2);
      }

      else
      {
        v26 = 0;
      }

      result = 0;
      *DerivedStorage = v26;
      *a4 = v28;
    }
  }

  return result;
}

size_t FigBBufByteStreamWrite(uint64_t a1, size_t a2, size_t a3, char *a4, size_t *a5)
{
  CMByteStreamGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage(v10);
  DataLength = CMBlockBufferGetDataLength(*DerivedStorage);
  if (!*(DerivedStorage + 40))
  {
    v26 = v5;
    v27 = "%s signalled err=%d at <>:%d";
    v28 = "(Fig)";
    v29 = 0;
    v30 = 4294954419;
    v31 = 258;
LABEL_42:
    result = FigSignalErrorAtGM(v27, v29, v30, v28, v31, v26, v13, v14, v32);
    goto LABEL_43;
  }

  if (!a4)
  {
    OUTLINED_FUNCTION_0_22();
    v31 = 259;
    goto LABEL_42;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    OUTLINED_FUNCTION_0_22();
    v31 = 260;
    goto LABEL_42;
  }

  if (!a2)
  {
    goto LABEL_35;
  }

  v15 = DataLength;
  if (DataLength <= a3)
  {
    v18 = a2;
  }

  else
  {
    if (DataLength - a3 >= a2)
    {
      v16 = a2;
    }

    else
    {
      v16 = DataLength - a3;
    }

    result = CMBlockBufferReplaceDataBytes(a4, *DerivedStorage, a3, v16);
    if (result)
    {
      goto LABEL_43;
    }

    v18 = a2 - v16;
    if (a2 == v16)
    {
      goto LABEL_35;
    }

    a3 += v16;
    a4 += v16;
  }

  if (a3 >= v15)
  {
    v19 = a3 - v15;
  }

  else
  {
    v19 = 0;
  }

  v21 = (DerivedStorage + 104);
  v20 = *(DerivedStorage + 104);
  if (v20)
  {
    if (a3 <= v15)
    {
LABEL_23:
      if (v18 >= v20)
      {
        v23 = v20;
      }

      else
      {
        v23 = v18;
      }

      memcpy(*(DerivedStorage + 96), a4, v23);
      v18 -= v23;
      ConsumeSomeBacking(DerivedStorage, v23);
      if (!v18)
      {
LABEL_35:
        result = 0;
        if (!a5)
        {
          return result;
        }

        goto LABEL_36;
      }

      v19 = 0;
      a4 += v23;
      goto LABEL_28;
    }

    if (v19 >= v20)
    {
      v22 = *(DerivedStorage + 104);
    }

    else
    {
      v22 = v19;
    }

    bzero(*(DerivedStorage + 96), v22);
    ConsumeSomeBacking(DerivedStorage, v22);
    v19 -= v22;
    if (!v19)
    {
      v20 = *v21;
      if (*v21)
      {
        goto LABEL_23;
      }

      v19 = 0;
    }
  }

LABEL_28:
  v24 = CMBlockBufferGetDataLength(*(DerivedStorage + 40));
  if (*(DerivedStorage + 92))
  {
    v25 = (DerivedStorage + 64);
  }

  else
  {
    v25 = 0;
  }

  result = CMBlockBufferAppendMemoryBlock(*(DerivedStorage + 40), 0, (v19 + v18 + 0x3FFF) & 0xFFFFFFFFFFFFC000, *(DerivedStorage + 56), v25, 0, (v19 + v18 + 0x3FFF) & 0xFFFFFFFFFFFFC000, 1u);
  if (!result)
  {
    CMBlockBufferGetDataPointer(*(DerivedStorage + 40), v24, (DerivedStorage + 104), 0, (DerivedStorage + 96));
    if (v19)
    {
      bzero(*(DerivedStorage + 96), v19);
    }

    memcpy((*(DerivedStorage + 96) + v19), a4, v18);
    ConsumeSomeBacking(DerivedStorage, v19 + v18);
    goto LABEL_35;
  }

LABEL_43:
  a2 = 0;
  if (!a5)
  {
    return result;
  }

LABEL_36:
  *a5 = a2;
  return result;
}

size_t CMByteStreamCreateWritableForBlockBuffer_cold_1(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_0_22();
  result = FigSignalErrorAtGM(v3, v4, v5, v6, v7, v8, v9, v10, v12);
  *a2 = result;
  return result;
}

size_t FigBBufByteStreamSetProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_22();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x192, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigBBufByteStreamSetProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_22();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x19B, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigBBufByteStreamSetProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_22();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x1A4, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigBBufByteStreamSetProperty_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_22();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x1AE, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigBBufByteStreamRead_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_22();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xD2, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigBBufByteStreamReadAndCreateBlockBuffer_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_22();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x1DB, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

CFIndex FigCaptionDynamicStyleGetKeyFrameCount(CFIndex result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    if (!v2)
    {
      fcds_initializeSortedKeyFrameValues(v1);
      v2 = *(v1 + 24);
    }

    return CFArrayGetCount(v2);
  }

  return result;
}

size_t FigCaptionDynamicStyleCopyKeyFrameValueAtIndex(CFIndex a1, CFIndex a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount(a1);
  if (a1)
  {
    if (a2 < 0)
    {
      OUTLINED_FUNCTION_2_11();
      OUTLINED_FUNCTION_0_2();
      v25 = 352;
    }

    else
    {
      if (KeyFrameCount > a2)
      {
        v14 = *(a1 + 24);
        if (!v14)
        {
          fcds_initializeSortedKeyFrameValues(a1);
          v14 = *(a1 + 24);
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v14, a2);
        if (a3)
        {
          *a3 = *ValueAtIndex;
        }

        if (a4)
        {
          v16 = ValueAtIndex[1];
          if (v16)
          {
            v16 = CFRetain(v16);
          }

          *a4 = v16;
        }

        return 0;
      }

      OUTLINED_FUNCTION_2_11();
      OUTLINED_FUNCTION_0_2();
      v25 = 353;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_0_2();
    v25 = 351;
  }

  return FigSignalErrorAtGM(v18, v19, v20, v21, v25, v22, v23, v24, a9);
}

size_t FigCaptionDynamicStyleCopyKeyFrameValueAtRelativeTime(CFIndex a1, void *a2, void *a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, CMBlockBufferRef *a10)
{
  KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount(a1);
  if (a1)
  {
    v15 = KeyFrameCount;
    if (KeyFrameCount > 0)
    {
      v16 = *(a1 + 24);
      if (!v16)
      {
        fcds_initializeSortedKeyFrameValues(a1);
        v16 = *(a1 + 24);
      }

      v33[0] = a4;
      v33[1] = 0.0;
      v35.location = 0;
      v35.length = v15;
      v17 = CFArrayBSearchValues(v16, v35, v33, fcds_compareRelativeTime, 0);
      if (v17 >= v15)
      {
        v21 = v15 - 1;
      }

      else
      {
        v18 = v17;
        if (v17)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v17);
          v20 = v33[0] > *ValueAtIndex || v33[0] < *ValueAtIndex;
          v21 = v18 - v20;
        }

        else
        {
          v21 = 0;
        }
      }

      v22 = CFArrayGetValueAtIndex(*(a1 + 24), v21);
      if (a2)
      {
        *a2 = *v22;
      }

      if (a3)
      {
        v23 = v22[1];
        if (v23)
        {
          v23 = CFRetain(v23);
        }

        *a3 = v23;
      }

      return 0;
    }

    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_0_2();
    v32 = 381;
  }

  else
  {
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_0_2();
    v32 = 380;
  }

  return FigSignalErrorAtGM(v25, v26, v27, v28, v32, v29, v30, v31, a10);
}

CFTypeRef *fcds_Equal(CFTypeRef *result, CFTypeRef *a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    OUTLINED_FUNCTION_0_23(&sRegisterFigCaptionDynamicStyleTypeOnce);
    result = 0;
    if (a2)
    {
      if (v4 == sFigCaptionDynamicStyleID)
      {
        v5 = CFGetTypeID(a2);
        OUTLINED_FUNCTION_0_23(&sRegisterFigCaptionDynamicStyleTypeOnce);
        if (v5 == sFigCaptionDynamicStyleID)
        {
          return (CFEqual(v3[2], a2[2]) != 0);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t fcds_Hash(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  OUTLINED_FUNCTION_0_23(&sRegisterFigCaptionDynamicStyleTypeOnce);
  if (v2 != sFigCaptionDynamicStyleID)
  {
    return 0;
  }

  KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount(a1);
  if (!KeyFrameCount)
  {
    return 0;
  }

  v8 = KeyFrameCount;
  v9 = 0;
  v10 = 0;
  v13 = 0.0;
  do
  {
    if (FigCaptionDynamicStyleCopyKeyFrameValueAtIndex(a1, v9, &v13, 0, v4, v5, v6, v7, v12))
    {
      break;
    }

    v10 ^= (v13 * 1000.0);
    ++v9;
  }

  while (v8 != v9);
  return v10;
}

__CFString *fcds_CopyDebugDesc(CFIndex a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount(a1);
  cf = 0;
  v10 = KeyFrameCount;
  CFStringAppendFormat(Mutable, 0, @"FigCaptionDynamicStyle (number of values = %ld)\n");
  if (KeyFrameCount)
  {
    v8 = 0;
    v12 = 0;
    while (!FigCaptionDynamicStyleCopyKeyFrameValueAtIndex(a1, v8, &v12, &cf, v4, v5, v6, v7, v10))
    {
      v10 = v12;
      CFStringAppendFormat(Mutable, 0, @"  %3.2f : %@\n");
      if (KeyFrameCount - 1 == v8)
      {
        break;
      }

      ++v8;
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return Mutable;
}

size_t FigCaptionDynamicStyleCreateMutable_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x106, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigCaptionDynamicStyleCreateMutable_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x105, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigCaptionDynamicStyleAddKeyFrameValue_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE0EuLL, "(Fig)", 0x13B, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigCaptionDynamicStyleAddKeyFrameValue_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x138, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigCaptionDynamicStyleAddKeyFrameValue_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x137, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigCaptionDynamicStyleAddKeyFrameValue_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x136, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigCaptionDynamicStyleCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x122, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigEndpointXPCDemuxCreate_cold_2(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14uLL, "<< FigEndpointXPCDemux >>", 0x1DB, v1, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigEndpointXPCDemuxCreate_cold_3(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14uLL, "<< FigEndpointXPCDemux >>", 0x1DA, v1, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigSecCopyOutmostBundleSignedWithSameCertificateAsCodeAtURL(const __CFURL *a1, CFURLRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  cf[128] = *MEMORY[0x1E69E9840];
  staticCode = 0;
  cf[0] = 0;
  v10 = FigCFURLCopyCanonicalPath(a1, cf, a3, a4, a5, a6, a7, a8);
  v11 = MEMORY[0x1E695E480];
  if (v10)
  {
    v16 = v10;
    v15 = 0;
  }

  else
  {
    v12 = *MEMORY[0x1E695E480];
    v13 = cf[0];
    v14 = CFURLHasDirectoryPath(a1);
    v15 = CFURLCreateWithFileSystemPath(v12, v13, kCFURLPOSIXPathStyle, v14);
    v16 = SecStaticCodeCreateWithPath(v15, 0, &staticCode);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    v45 = 0;
    v18 = 0;
    goto LABEL_89;
  }

  cf[0] = 0;
  v16 = SecCodeCopyPath(staticCode, 0, cf);
  v71 = a2;
  if (v16)
  {
    v18 = 0;
  }

  else
  {
    if (CFURLHasDirectoryPath(cf[0]))
    {
      if (!cf[0])
      {
        v18 = 0;
        goto LABEL_20;
      }

      PathComponent = CFRetain(cf[0]);
    }

    else
    {
      PathComponent = CFURLCreateCopyDeletingLastPathComponent(*v11, cf[0]);
    }

    v18 = PathComponent;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v16)
  {
    v45 = 0;
    goto LABEL_89;
  }

  if (v18)
  {
    v19 = CFRetain(v18);
    goto LABEL_21;
  }

LABEL_20:
  v19 = 0;
LABEL_21:
  requirement = 0;
  errors = 0;
  cf[0] = 0;
  v20 = SecCodeCopySigningInformation(staticCode, 2u, cf);
  if (!v20)
  {
    if (cf[0])
    {
      Value = CFDictionaryGetValue(cf[0], *MEMORY[0x1E697B040]);
      if (Value && (v22 = Value, CFArrayGetCount(Value) > 0))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v22, 0);
        if (ValueAtIndex)
        {
          v24 = ValueAtIndex;
          v25 = CFGetTypeID(ValueAtIndex);
          if (v25 == SecCertificateGetTypeID())
          {
            CFRetain(v24);
            v26 = 0;
            goto LABEL_31;
          }
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0_3();
        v31 = 127;
      }

      else
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0_3();
        v31 = 123;
      }
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0_3();
      v31 = 120;
    }

    v20 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, 0xFFFFBB2CuLL, "<<<< FigSecurityUtilities >>>>", v31, v28, v29, v30, v70);
  }

  v26 = v20;
  v24 = 0;
LABEL_31:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v26)
  {
    v45 = 0;
    if (!v24)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  v32 = SecCertificateCopyData(v24);
  v33 = v32;
  if (v32)
  {
    v34 = CFGetTypeID(v32);
    if (v34 == CFDataGetTypeID())
    {
      Length = CFDataGetLength(v33);
      if (HIDWORD(Length))
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0_3();
        v26 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v66, 0xFFFFBB2CuLL, "<<<< FigSecurityUtilities >>>>", 0x95, v67, v68, v69, v70);
        Mutable = 0;
      }

      else
      {
        v36 = Length;
        Mutable = CFDataCreateMutable(*v11, 20);
        CFDataSetLength(Mutable, 20);
        BytePtr = CFDataGetBytePtr(v33);
        MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
        CC_SHA1(BytePtr, v36, MutableBytePtr);
        v26 = 0;
      }

      goto LABEL_38;
    }
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0_3();
  v26 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v62, 0xFFFFBB2CuLL, "<<<< FigSecurityUtilities >>>>", 0x92, v63, v64, v65, v70);
  Mutable = 0;
  v40 = 0;
  if (v33)
  {
LABEL_38:
    CFRelease(v33);
    v40 = Mutable;
  }

  if (v26)
  {
    v41 = 0;
    if (v40)
    {
LABEL_44:
      CFRelease(v40);
    }
  }

  else
  {
    v41 = CFStringCreateMutable(*v11, 0);
    v42 = CFDataGetBytePtr(v40);
    if (CFDataGetLength(v40) >= 1)
    {
      v43 = 0;
      do
      {
        CFStringAppendFormat(v41, 0, @"%02x", v42[v43++]);
      }

      while (CFDataGetLength(v40) > v43);
    }

    if (v40)
    {
      goto LABEL_44;
    }
  }

  if (v26)
  {
    v44 = 0;
    v45 = requirement;
  }

  else
  {
    v44 = CFStringCreateWithFormat(*v11, 0, @"certificate leaf = H%@", v41);
    v26 = SecRequirementCreateWithStringAndErrors(v44, 0, &errors, &requirement);
    v45 = requirement;
    if (!v26)
    {
      requirement = 0;
      goto LABEL_48;
    }
  }

  if (v45)
  {
    CFRelease(v45);
    v45 = 0;
  }

LABEL_48:
  if (v41)
  {
    CFRelease(v41);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (!v24)
  {
    goto LABEL_54;
  }

LABEL_53:
  CFRelease(v24);
LABEL_54:
  if (errors)
  {
    CFRelease(errors);
  }

  if (!v26)
  {
    v46 = *v11;
    while (1)
    {
      v47 = CFURLCopyPath(v18);
      v54 = CFEqual(v47, @"/");
      if (v47)
      {
        CFRelease(v47);
      }

      if (v54)
      {
        break;
      }

      requirement = 0;
      errors = 0;
      string = 0;
      v55 = FigCFURLCopyCanonicalPath(v18, &string, v48, v49, v50, v51, v52, v53);
      if (v55)
      {
        v56 = v55;
      }

      else
      {
        CFStringGetFileSystemRepresentation(string, cf, 1023);
        if (access(cf, 4))
        {
          v56 = -17621;
        }

        else
        {
          v56 = SecStaticCodeCreateWithPath(v18, 0, &errors);
          v57 = errors;
          if (!v56)
          {
            v56 = SecStaticCodeCheckValidityWithErrors(errors, 0, v45, &requirement);
            v57 = errors;
          }

          if (v57)
          {
            CFRelease(v57);
          }
        }
      }

      if (requirement)
      {
        CFRelease(requirement);
      }

      if (string)
      {
        CFRelease(string);
      }

      if (v56)
      {
        v58 = v19;
      }

      else
      {
        if (v18)
        {
          CFRetain(v18);
        }

        v58 = v18;
        if (v19)
        {
          CFRelease(v19);
          v58 = v18;
        }
      }

      v59 = CFURLCreateCopyDeletingLastPathComponent(v46, v18);
      if (v18)
      {
        CFRelease(v18);
      }

      v60 = v56 == -67062 || v56 == -67028;
      v18 = v59;
      v19 = v58;
      if (!v60)
      {
        v18 = v59;
        v19 = v58;
        if (v56)
        {
          goto LABEL_88;
        }
      }
    }
  }

  v59 = v18;
  v58 = v19;
LABEL_88:
  v16 = 0;
  *v71 = v58;
  v18 = v59;
LABEL_89:
  if (staticCode)
  {
    CFRelease(staticCode);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v16;
}

void EstablishOutmostContainerURLOfMainBundle()
{
  MainBundle = CFBundleGetMainBundle();
  v1 = CFBundleCopyExecutableURL(MainBundle);
  _MergedGlobals_16 = FigSecCopyOutmostBundleSignedWithSameCertificateAsCodeAtURL(v1, &qword_1ED4CC560, v2, v3, v4, v5, v6, v7);
  if (v1)
  {

    CFRelease(v1);
  }
}

uint64_t CMByteStreamWriteBlockBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6, a7, a8);
  v15 = v14;
  v34 = *MEMORY[0x1E69E9840];
  if (v12)
  {
    v16 = v13;
    v17 = v12;
    v18 = v11;
    v19 = v10;
    v20 = v9;
    dataPointerOut = 0;
    v21 = 0;
    v31 = 0;
    lengthAtOffsetOut = 0;
    while (1)
    {
      result = CMBlockBufferGetDataPointer(v19, v21 + v18, &lengthAtOffsetOut, 0, &dataPointerOut);
      if (result)
      {
        break;
      }

      v23 = lengthAtOffsetOut;
      if (lengthAtOffsetOut >= v17 - v21)
      {
        lengthAtOffsetOut = v17 - v21;
        v23 = v17 - v21;
      }

      else if (!(lengthAtOffsetOut >> 14))
      {
        if (v17 - v21 >= 0x4000)
        {
          v24 = 0x4000;
        }

        else
        {
          v24 = v17 - v21;
        }

        lengthAtOffsetOut = v24;
        result = CMBlockBufferCopyDataBytes(v19, v21 + v18, v24, destination);
        if (result)
        {
          break;
        }

        dataPointerOut = destination;
        v23 = lengthAtOffsetOut;
      }

      v25 = dataPointerOut;
      v26 = *(*(CMBaseObjectGetVTable(v20) + 16) + 16);
      if (!v26)
      {
        result = 4294954514;
        if (v15)
        {
          goto LABEL_22;
        }

        return result;
      }

      result = v26(v20, v23, v21 + v16, v25, &v31);
      if (result)
      {
        break;
      }

      if (!v31)
      {
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCDB7uLL, "<<<< FigByteStream >>>>", 0x180, v8, v28, v29, v8);
        if (v15)
        {
          goto LABEL_22;
        }

        return result;
      }

      v21 += v31;
      if (v21 >= v17)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    v21 = 0;
LABEL_20:
    result = 0;
  }

  if (v15)
  {
LABEL_22:
    *v15 = v21;
  }

  return result;
}

uint64_t CMByteStreamAppend(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable(a1) + 16) + 24);
  if (!v8)
  {
    return 4294954514;
  }

  v12 = 0;
  result = v8(a1, 0, &v12);
  if (result)
  {
    return result;
  }

  v10 = v12;
  v11 = *(*(CMBaseObjectGetVTable(a1) + 16) + 16);
  if (v11)
  {
    return v11(a1, a2, v10, a3, a4);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t CMByteStreamAppendBlockBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(CMBaseObjectGetVTable(a1) + 16) + 24);
  if (!v10)
  {
    return 4294954514;
  }

  v14 = 0;
  result = v10(a1, 0, &v14);
  if (!result)
  {
    return CMByteStreamWriteBlockBuffer(a1, a2, a3, a4, v14, a5, v12, v13);
  }

  return result;
}

CFDictionaryRef FigByteStreamStatsCreateStatsDictionary(const __CFAllocator *a1, const void *a2, const __CFURL *a3, uint64_t a4)
{
  __dst[13] = *MEMORY[0x1E69E9840];
  memcpy(__dst, off_1E749EF30, 0x68uLL);
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  *values = 0u;
  v66 = 0u;
  if (a4 && (v8 = *a4) != 0)
  {
    if (a3)
    {
      a3 = CFURLGetString(a3);
      v8 = *a4;
    }

    FigSimpleMutexLock(v8);
    v9 = *(a4 + 8);
    if (v9)
    {
      v10 = (*(a4 + 32) / v9);
    }

    else
    {
      v10 = 0.0;
    }

    if (a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = @"UNKNOWN";
    }

    values[0] = CFRetain(v11);
    v12 = *MEMORY[0x1E695E480];
    v13 = OUTLINED_FUNCTION_1_12();
    values[1] = CFNumberCreate(v13, v14, (a4 + 8));
    *&v66 = CFNumberCreate(v12, kCFNumberSInt64Type, (a4 + 16));
    v15 = OUTLINED_FUNCTION_1_12();
    *(&v66 + 1) = CFNumberCreate(v15, v16, v17);
    v18 = OUTLINED_FUNCTION_1_12();
    *&v67 = CFNumberCreate(v18, v19, v20);
    v21 = OUTLINED_FUNCTION_1_12();
    *(&v67 + 1) = CFNumberCreate(v21, v22, v23);
    *&v68 = OUTLINED_FUNCTION_0_24(SDWORD2(v67), v24, v25, v26, v27, v28, v29, v30, *(a4 + 32) / 1000000.0, 0);
    *(&v68 + 1) = OUTLINED_FUNCTION_0_24(v68, v31, v32, v33, v34, v35, v36, v37, *(a4 + 40) / 1000000.0, v62);
    *&v69 = OUTLINED_FUNCTION_0_24(SDWORD2(v68), v38, v39, v40, v41, v42, v43, v44, *(a4 + 48) / 1000000.0, v63);
    *(&v69 + 1) = OUTLINED_FUNCTION_0_24(v69, v45, v46, v47, v48, v49, v50, v51, v10 / 1000000.0, v64);
    v52 = OUTLINED_FUNCTION_1_12();
    *&v70 = CFNumberCreate(v52, v53, v54);
    v55 = OUTLINED_FUNCTION_1_12();
    *(&v70 + 1) = CFNumberCreate(v55, v56, v57);
    v71 = CFRetain(a2);
    FigSimpleMutexUnlock(*a4);
    v58 = CFDictionaryCreate(a1, __dst, values, 13, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  else
  {
    v58 = 0;
  }

  for (i = 0; i != 13; ++i)
  {
    v60 = values[i];
    if (v60)
    {
      CFRelease(v60);
    }
  }

  return v58;
}

size_t CMCreateContiguousBlockBufferFromStream_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFFF94uLL, "<<<< FigByteStream >>>>", 0x13F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigByteStreamCopySHA1Digest_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< FigByteStream >>>>", 0x2AE, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigByteStreamCopySHA1Digest_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigByteStream >>>>", 0x2A8, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t frb_FigCFRingBufferGetSize(__CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  CFStringGetTypeID();
  if (v1 == OUTLINED_FUNCTION_1_13())
  {

    return CFStringGetLength(a1);
  }

  CFNumberGetTypeID();
  if (v1 == OUTLINED_FUNCTION_1_13())
  {

    return CFNumberGetByteSize(a1);
  }

  CFDataGetTypeID();
  if (v1 == OUTLINED_FUNCTION_1_13())
  {

    return CFDataGetLength(a1);
  }

  CMBlockBufferGetTypeID();
  if (v1 != OUTLINED_FUNCTION_1_13())
  {
    return 0;
  }

  return CMBlockBufferGetDataLength(a1);
}

uint64_t FigRingBufferAppendValueAndEvictBuffer(uint64_t a1, const void *a2, __CFArray *a3)
{
  if (!a1)
  {
    return 4294950815;
  }

  if (!*(a1 + 8))
  {
    return 4294950813;
  }

  if (!a2)
  {
    return 4294950814;
  }

  Count = CFArrayGetCount(*a1);
  v7 = (*(*(a1 + 8) + 8))(a2);
  if (!Count)
  {
    v22 = 0;
    *(a1 + 32) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_0_25();
  if (!v9(Count + 1, v8 + v7))
  {
LABEL_34:
    v22 = *(a1 + 32);
    goto LABEL_36;
  }

  v10 = 0;
  do
  {
    if (Count < 1)
    {
      return 4294950816;
    }

    v11 = *(a1 + 32);
    if (v11 == *(a1 + 48))
    {
      if (a3 && !v10)
      {
LABEL_24:
        while (v11 < CFArrayGetCount(*a1))
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*a1, v11);
          CFArrayAppendValue(a3, ValueAtIndex);
          ++v11;
        }

        v11 = *(a1 + 32);
        if (v11 >= 1)
        {
          for (i = 0; i < v11; ++i)
          {
            v16 = CFArrayGetValueAtIndex(*a1, i);
            CFArrayAppendValue(a3, v16);
            v11 = *(a1 + 32);
          }
        }
      }

      v10 = 1;
      goto LABEL_29;
    }

    if (v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = (*(a1 + 56) + v7) > *(a1 + 24);
    }

    v13 = !v12;
    if (!v13)
    {
      v10 = 1;
    }

    if ((v13 & 1) == 0 && a3)
    {
      goto LABEL_24;
    }

LABEL_29:
    if (v11 >= Count)
    {
      v11 = 0;
      *(a1 + 32) = 0;
    }

    v17 = *(*(a1 + 8) + 8);
    v18 = CFArrayGetValueAtIndex(*a1, v11);
    *(a1 + 16) -= v17(v18);
    CFArrayRemoveValueAtIndex(*a1, *(a1 + 32));
    OUTLINED_FUNCTION_0_25();
  }

  while (v20(Count--, v19 + v7));
  if (!v10)
  {
    goto LABEL_34;
  }

  v22 = *(a1 + 32);
  *(a1 + 48) = v22;
  *(a1 + 56) = 0;
LABEL_36:
  CFArrayInsertValueAtIndex(*a1, v22, a2);
  result = 0;
  ++*(a1 + 32);
  *(a1 + 16) += v7;
  *(a1 + 56) += v7;
  return result;
}

void FigRingBufferFlush(uint64_t a1, __CFArray *a2)
{
  if (a1)
  {
    if (a2)
    {
      for (i = *(a1 + 32); i < CFArrayGetCount(*a1); ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a1, i);
        CFArrayAppendValue(a2, ValueAtIndex);
      }

      if (*(a1 + 32) >= 1)
      {
        v6 = 0;
        do
        {
          v7 = CFArrayGetValueAtIndex(*a1, v6);
          CFArrayAppendValue(a2, v7);
          ++v6;
        }

        while (v6 < *(a1 + 32));
      }
    }

    CFArrayRemoveAllValues(*a1);
    *(a1 + 32) = 0;
    *(a1 + 16) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }
}

void FigRingBufferRelease(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFArrayRemoveAllValues(v2);
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      if (*a1)
      {
        CFRelease(*a1);
      }

      free(a1);
    }
  }
}

CFIndex FigRingBufferGetCount(const __CFArray **a1)
{
  if (a1 && (v1 = *a1) != 0)
  {
    return CFArrayGetCount(v1);
  }

  else
  {
    return 0;
  }
}

void FigRingBufferGetEntries(uint64_t a1, __CFArray *a2)
{
  if (a1)
  {
    if (a2)
    {
      for (i = *(a1 + 32); i < CFArrayGetCount(*a1); ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a1, i);
        CFArrayAppendValue(a2, ValueAtIndex);
      }

      if (*(a1 + 32) >= 1)
      {
        v6 = 0;
        do
        {
          v7 = CFArrayGetValueAtIndex(*a1, v6);
          CFArrayAppendValue(a2, v7);
          ++v6;
        }

        while (v6 < *(a1 + 32));
      }
    }
  }
}

size_t CMByteStreamCreateForFileURL(uint64_t a1, const void *a2, unsigned int a3, CFTypeRef *a4)
{
  cf = 0;
  ClassID = CMByteStreamGetClassID();
  v13 = CMDerivedObjectCreate(a1, kFigFileByteStreamVTable, ClassID, &cf, v9, v10, v11, v12, v19);
  if (v13)
  {
    return v13;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage(cf);
  v15 = CFRetain(a2);
  *DerivedStorage = v15;
  *(DerivedStorage + 4216) = -1;
  *(DerivedStorage + 4220) = 1;
  *(DerivedStorage + 16) = a3;
  v16 = FigFileForkOpenMainByCFURL(v15, a3, (DerivedStorage + 8));
  if (v16)
  {
    Buffer = v16;
LABEL_9:
    CFRelease(cf);
    return Buffer;
  }

  FigByteStreamStatsSetupWorker((DerivedStorage + 4152));
  Buffer = fbs_SetupSmallReadBuffer(DerivedStorage + 24, a3);
  if (Buffer)
  {
    FigFileForkClose(*(DerivedStorage + 8));
    goto LABEL_9;
  }

  *a4 = cf;
  return Buffer;
}

uint64_t FigFileByteStreamWriteBlockBufferOptimized(uint64_t a1, OpaqueCMBlockBuffer *a2, size_t a3, size_t a4, off_t a5, void *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v44 = 0;
  lengthAtOffsetOut = 0;
  if (a4)
  {
    v10 = 0;
    v11 = 0;
    v12 = a4;
    v13 = a3;
    do
    {
      if (v11 == 0x7FFFFFFF)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_2();
        v34 = 4294954422;
        v35 = 551;
        goto LABEL_25;
      }

      DataPointer = CMBlockBufferGetDataPointer(a2, v13, &lengthAtOffsetOut, 0, 0);
      if (DataPointer)
      {
        goto LABEL_26;
      }

      v15 = lengthAtOffsetOut;
      if (v12 < lengthAtOffsetOut)
      {
        v15 = v12;
      }

      v13 += v15;
      ++v11;
      v10 += 16;
      v12 -= v15;
    }

    while (v12);
    OUTLINED_FUNCTION_1_14();
    v17 = malloc_type_malloc(v10, v16);
    if (!v17)
    {
      goto LABEL_29;
    }

    v18 = v17;
    v19 = v11 + 1;
    v20 = v17 + 1;
    v21 = a4;
    while (1)
    {
      dataPointerOut = 0;
      if (!--v19)
      {
        break;
      }

      v22 = CMBlockBufferGetDataPointer(a2, a3, &lengthAtOffsetOut, 0, &dataPointerOut);
      if (v22)
      {
        goto LABEL_28;
      }

      v23 = lengthAtOffsetOut;
      if (v21 < lengthAtOffsetOut)
      {
        v23 = v21;
      }

      *(v20 - 1) = dataPointerOut;
      *v20 = v23;
      v20 += 2;
      a3 += v23;
      v21 -= v23;
      if (!v21)
      {
        goto LABEL_18;
      }
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_2();
    v22 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v36, 0xFFFFCDB6uLL, "<<< FigByteStream_File >>>", 0x23D, v37, v38, v39, v40);
LABEL_28:
    v27 = v22;
    v28 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_1_14();
    v25 = malloc_type_malloc(0, v24);
    if (v25)
    {
      v18 = v25;
      LODWORD(v11) = 0;
LABEL_18:
      v26 = FigFileForkWriteIOVecArray(*(DerivedStorage + 8), *(DerivedStorage + 4216), v18, v11, a5, &v44);
      v27 = v26;
      v28 = v44;
      if (a6 && !v26)
      {
        *a6 = v44;
      }
    }

    else
    {
LABEL_29:
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_1_2();
      v34 = 4294954420;
      v35 = 565;
LABEL_25:
      DataPointer = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, v34, "<<< FigByteStream_File >>>", v35, v31, v32, v33, v40);
LABEL_26:
      v27 = DataPointer;
      v28 = 0;
      v18 = 0;
    }
  }

  free(v18);
  if (v28 == a4)
  {
    return 0;
  }

  else
  {
    return v27;
  }
}

size_t fbs_SetupSmallReadBuffer_cold_1(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0EuLL, "<<< FigByteStream_File >>>", 0x135, v1, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigFileByteStreamGetAvailableLengthAtOffset_cold_1(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCDB8uLL, "<<< FigByteStream_File >>>", 0x2F2, v1, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t PeruseActivatedEndpoints(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  cf = 0;
  v4 = *MEMORY[0x1E695E480];
  v5 = FigEndpointManagerCopyActivatedEndpoints(*(DerivedStorage + 64), *MEMORY[0x1E695E480], &cf);
  if (v5)
  {
    goto LABEL_22;
  }

  MutableCopy = FigCFArrayCreateMutableCopy(v4, cf);
  if (!MutableCopy)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBE06uLL, "<<< StdHALPlugin >>>", 0x163, v1, v36, v37, v38);
LABEL_22:
    v33 = v5;
    goto LABEL_18;
  }

  v7 = MutableCopy;
  v8 = *(DerivedStorage + 72);
  if (v8)
  {
    Count = CFArrayGetCount(v8);
    if (Count >= 1)
    {
      v10 = Count;
      v11 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 72), v11);
        v40.length = CFArrayGetCount(v7);
        v40.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v7, v40, ValueAtIndex);
        if (FirstIndexOfValue == -1)
        {
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_1_15();
          CMNotificationCenterRemoveListener(v14, v15, v16, v17, v18);
          CFArrayRemoveValueAtIndex(*(DerivedStorage + 72), v11);
          --v10;
        }

        else
        {
          CFArrayRemoveValueAtIndex(v7, FirstIndexOfValue);
          ++v11;
        }
      }

      while (v11 < v10);
    }
  }

  v19 = CFArrayGetCount(v7);
  if (v19 >= 1)
  {
    v20 = v19;
    for (i = 0; i != v20; ++i)
    {
      v22 = CFArrayGetValueAtIndex(v7, i);
      CFArrayAppendValue(*(DerivedStorage + 72), v22);
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_1_15();
      CMNotificationCenterAddListener(v23, v24, v25, v26, v27);
    }
  }

  v28 = *(DerivedStorage + 72);
  if (v28)
  {
    v29 = CFArrayGetCount(v28);
    if (v29 >= 1)
    {
      v30 = v29;
      for (j = 0; j != v30; ++j)
      {
        v32 = CFArrayGetValueAtIndex(*(DerivedStorage + 72), j);
        PeruseAudioStreamsForEndpoint(a1, v32);
      }
    }
  }

  CFRelease(v7);
  v33 = 0;
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  return v33;
}

size_t plugin_CreateStandardPluginObjectInternal_cold_1(const CMBlockBufferCustomBlockSource *a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFBE06uLL, "<<< StdHALPlugin >>>", a1, v5, v6, v7, v9);
  *a2 = result;
  return result;
}

size_t plugin_GetPropertyData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0x2173697AuLL, "<<< StdHALPlugin >>>", 0x293, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t plugin_GetPropertyData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0x2173697AuLL, "<<< StdHALPlugin >>>", 0x294, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t plugin_GetPropertyData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0x2173697AuLL, "<<< StdHALPlugin >>>", 0x292, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t PeruseAudioStreamsForEndpoint_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBE06uLL, "<<< StdHALPlugin >>>", 0x118, v1, v2, v3, v5);
}

void FigMachPortHolderCreateWithMachSendRight_cold_2(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFB30AuLL, "(Fig)", 0xA5, v5, v6, v7, v8);

  CFRelease(a1);
}

size_t FigMachPortHolderCreateWithMachSendRight_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB30BuLL, "(Fig)", 0xA2, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigMachPortHolderCreateWithMachSendRight_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB30CuLL, "(Fig)", 0x9F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigMachPortHolderCreateWithMachSendRight_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB30CuLL, "(Fig)", 0x9E, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

void *fnh_getFirstRequestEntryAfterTime(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  CMBaseObjectGetDerivedStorage(a1);
  OUTLINED_FUNCTION_9_3();
  if (v5 != v6)
  {
    return 0;
  }

  for (result = *(DerivedStorage + 48); result; result = result[10])
  {
    if (*result >= a2)
    {
      break;
    }
  }

  return result;
}

uint64_t FigNetworkHistorySetRequestSentTimestamp()
{
  OUTLINED_FUNCTION_11_1();
  DerivedStorage = CMBaseObjectGetDerivedStorage(v3);
  if (*(DerivedStorage + 41) && FigNetworkHistoryGetGlobal() != v2)
  {
    FigNetworkHistoryGetGlobal();
    FigNetworkHistorySetRequestSentTimestamp();
  }

  if (*(DerivedStorage + 32) && *(v1 + 72))
  {
    FigNetworkHistorySetRequestSentTimestamp();
  }

  FigSimpleMutexLock(*DerivedStorage);
  v5 = CMBaseObjectGetDerivedStorage(v2);
  if (*(v5 + 136))
  {
    v6 = *(v5 + 160);
    if (v6)
    {
      while (v6[7] != v1)
      {
        v6 = v6[11];
        if (!v6)
        {
          goto LABEL_11;
        }
      }

      v6[1] = v0;
    }

    else
    {
LABEL_11:
      OUTLINED_FUNCTION_2_11();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 0xFFFFBABEuLL, "<<<< FigNetworkHistory >>>>", 0xD97, v8, v9, v10, v13);
    }
  }

  v11 = OUTLINED_FUNCTION_7_4();
  FigSimpleMutexUnlock(*DerivedStorage);
  return v11;
}

uint64_t FigNetworkHistorySetRequestLatency(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*(DerivedStorage + 41) && FigNetworkHistoryGetGlobal() != a1)
  {
    Global = FigNetworkHistoryGetGlobal();
    FigNetworkHistorySetRequestLatency(Global, *(a2 + 64), a3, a4);
  }

  v10 = *(DerivedStorage + 32);
  if (v10)
  {
    v11 = *(a2 + 72);
    if (v11)
    {
      FigNetworkHistorySetRequestLatency(v10, v11, a3, a4);
    }
  }

  FigSimpleMutexLock(*DerivedStorage);
  v12 = CMBaseObjectGetDerivedStorage(a1);
  for (i = *(v12 + 160); i; i = i[11])
  {
    if (i[7] == a2)
    {
      break;
    }
  }

  if (*(v12 + 136))
  {
    if (i)
    {
      i[2] = a3;
      i[6] = a4;
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFBABEuLL, "<<<< FigNetworkHistory >>>>", 0xDA6, v4, v13, v14, v19);
    }
  }

  v16 = fnh_runOrEnqueueCommand(a1, fnh_setRequestLatencyCommand, a2, a3, 0, 0, a4);
  FigSimpleMutexUnlock(*DerivedStorage);
  return v16;
}

uint64_t FigNetworkHistoryRequestReceivedBytes(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*(DerivedStorage + 41) && FigNetworkHistoryGetGlobal() != a1)
  {
    Global = FigNetworkHistoryGetGlobal();
    FigNetworkHistoryRequestReceivedBytes(Global, *(a2 + 64), a3, a4, a5);
  }

  v12 = *(DerivedStorage + 32);
  if (v12)
  {
    v13 = *(a2 + 72);
    if (v13)
    {
      FigNetworkHistoryRequestReceivedBytes(v12, v13, a3, a4, a5);
    }
  }

  FigSimpleMutexLock(*DerivedStorage);
  v14 = CMBaseObjectGetDerivedStorage(a1);
  v28 = 0;
  if (*(v14 + 136))
  {
    v17 = v14;
    v18 = *(v14 + 160);
    if (v18)
    {
      while (v18[7] != a2)
      {
        v18 = v18[11];
        if (!v18)
        {
          goto LABEL_11;
        }
      }

      v19 = CFGetAllocator(a1);
      if (!fnh_createBytesReceivedEntry(v19, a4, &v28))
      {
        v20 = v28;
        v21 = v28;
        *(v28 + 48) = 0;
        v22 = v18[9];
        v23 = v18[10];
        *(v20 + 56) = v22;
        *v22 = v20;
        *(v20 + 24) = a3;
        *v20 = a4;
        *(v20 + 40) = a5;
        v18[5] += a3;
        v18[9] = v21 + 48;
        v18[10] = v23 + 1;
        ++*(v17 + 156);
      }
    }

    else
    {
LABEL_11:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFBABEuLL, "<<<< FigNetworkHistory >>>>", 0xDB7, v5, v15, v16, v27);
    }
  }

  v24 = fnh_runOrEnqueueCommand(a1, fnh_requestReceivedBytesCommand, a2, a4, a3, a5, 0);
  FigSimpleMutexUnlock(*DerivedStorage);
  return v24;
}

size_t fnh_requestReceivedBytesCommand(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8, CMBlockBufferRef *a9)
{
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  if (*(v10 + 32) > v11)
  {
    v21 = qword_1EAF1CDC0;
    v22 = v9;
    v23 = 1111;
  }

  else
  {
    v12 = *(v10 + 16);
    if (v12 > v11)
    {
      v21 = qword_1EAF1CDC0;
      v22 = v9;
      v23 = 1112;
    }

    else
    {
      if (v12 > 0)
      {
        v13 = *a1;
        v14 = *(a1 + 24);
        v15 = *(a1 + 40);
        CMBaseObjectGetDerivedStorage(*a1);
        if (*(v10 + 56) < v15)
        {
          *(v10 + 56) = v15;
        }

        BytesSentTimestampForRequestEntry = *(v10 + 32);
        if (!BytesSentTimestampForRequestEntry)
        {
          BytesSentTimestampForRequestEntry = fnh_firstBytesSentTimestampForRequestEntry(v10, v11);
          *(v10 + 32) = BytesSentTimestampForRequestEntry;
        }

        result = fnh_addBytesToBytesReceivedEntriesBetweenTimestamps(v13, v14, BytesSentTimestampForRequestEntry, v11, v11);
        if (!result)
        {
          if ((v18 = *(v10 + 56), v19 = *(v10 + 48), !v18) && !v19 || (result = fnh_addRTTToBytesReceivedEntriesBetweenTimestamps(v13, v18, v19, *(v10 + 16), *(v10 + 32), v11, v11), !result))
          {
            v20 = *(v10 + 40) + v14;
            *(v10 + 32) = v11;
            *(v10 + 40) = v20;
          }
        }

        return result;
      }

      v21 = qword_1EAF1CDC0;
      v22 = v9;
      v23 = 1113;
    }
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, 0xFFFFBABEuLL, "<<<< FigNetworkHistory >>>>", v23, v22, a7, a8, a9);
}

uint64_t FigNetworkHistoryRequestBecameInactive()
{
  OUTLINED_FUNCTION_11_1();
  DerivedStorage = CMBaseObjectGetDerivedStorage(v3);
  if (*(DerivedStorage + 41) && FigNetworkHistoryGetGlobal() != v2)
  {
    FigNetworkHistoryGetGlobal();
    FigNetworkHistoryRequestBecameInactive();
  }

  if (*(DerivedStorage + 32) && *(v1 + 72))
  {
    FigNetworkHistoryRequestBecameInactive();
  }

  FigSimpleMutexLock(*DerivedStorage);
  v5 = CMBaseObjectGetDerivedStorage(v2);
  if (*(v5 + 136))
  {
    v6 = *(v5 + 160);
    if (v6)
    {
      while (*(v6 + 56) != v1)
      {
        v6 = *(v6 + 88);
        if (!v6)
        {
          goto LABEL_11;
        }
      }

      *(v6 + 24) = v0;
      v11 = (v6 + 88);
      v12 = *(v6 + 88);
      v13 = *(v6 + 96);
      v14 = (v5 + 168);
      if (v12)
      {
        v14 = (v12 + 96);
      }

      *v14 = v13;
      *v13 = v12;
      --*(v5 + 176);
      *v11 = 0;
      v15 = *(v5 + 192);
      *(v6 + 96) = v15;
      *v15 = v6;
      *(v5 + 192) = v11;
      ++*(v5 + 200);
      v16 = *(v6 + 80);
      v17 = *(v5 + 152) + v16;
      v18 = *(v5 + 156) - v16;
      *(v5 + 152) = v17;
      *(v5 + 156) = v18;
    }

    else
    {
LABEL_11:
      OUTLINED_FUNCTION_2_11();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 0xFFFFBABEuLL, "<<<< FigNetworkHistory >>>>", 0xDD1, v8, v9, v10, v21);
    }
  }

  v19 = OUTLINED_FUNCTION_7_4();
  FigSimpleMutexUnlock(*DerivedStorage);
  return v19;
}

uint64_t fnh_requestBecameInactiveCommand(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  DerivedStorage = CMBaseObjectGetDerivedStorage(*a1);
  v13 = *(v10 + 40);
  v14 = *(v10 + 48);
  if (v14 < v13)
  {
    *(v10 + 48) = v13;
  }

  *(v10 + 24) = v11;
  if (*v10 > v11)
  {
    OUTLINED_FUNCTION_2_11();
    v25 = 1205;
  }

  else
  {
    if (*(v10 + 16) <= v11)
    {
      CMBaseObjectGetDerivedStorage(v9);
      fnh_purgeExpiredListEntriesOnQueue(v9, v11);
      fnh_updateEarliestActiveRequestFirstBytesSentTimestamp(v9, v11);
      BytesSentTimestampForRequestEntry = fnh_firstBytesSentTimestampForRequestEntry(v10, v11);
      if (BytesSentTimestampForRequestEntry == 0x7FFFFFFFFFFFFFFFLL || (result = fnh_addBytesToBytesReceivedEntriesBetweenTimestamps(v9, 0, BytesSentTimestampForRequestEntry, *(v10 + 24), v11), !result))
      {
        if (v14 >= v13 || (result = fnh_addRTTToBytesReceivedEntriesBetweenTimestamps(v9, *(v10 + 56), *(v10 + 48), *(v10 + 16), BytesSentTimestampForRequestEntry, *(v10 + 24), v11), !result))
        {
          result = CMBaseObjectGetDerivedStorage(v9);
          if (*(result + 80) == 0x7FFFFFFFFFFFFFFFLL)
          {
            v17 = *(DerivedStorage + 8);
            DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();

            return FigDispatchAsyncPostNotification(v17, DefaultLocalCenter, @"NetworkHistoryNotification_NetworkBecameInactive", v9, 0, 0, v19, v20);
          }
        }
      }

      return result;
    }

    OUTLINED_FUNCTION_2_11();
    v25 = 1206;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, 0xFFFFBABEuLL, "<<<< FigNetworkHistory >>>>", v25, v22, v23, v24, a9);
}

uint64_t fnh_getFirstBytesReceivedEntryAfterTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v11 = CMBaseObjectGetDerivedStorage(a1);
  result = 0;
  if (a4 && *(v11 + 112) >= 1)
  {
    updated = fnh_updateEarliestActiveRequestFirstBytesSentTimestamp(a1, a3);
    if (updated <= a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = updated;
    }

    if (updated == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0;
    }

    result = *(DerivedStorage + 64);
    if (result)
    {
      if (a5)
      {
        v15 = **(*(DerivedStorage + 72) + 8);
        do
        {
          result = v15;
          v15 = **(*(v15 + 56) + 8);
        }

        while (v15 && *(v15 + 8) >= a2);
      }

      else
      {
        do
        {
          if (*(result + 8) >= a2)
          {
            break;
          }

          result = *(result + 48);
        }

        while (result);
      }
    }

    *a4 = v14;
  }

  return result;
}

uint64_t fnh_populateBandwidthSampleFromBytesReceivedEntryAndActiveRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  CMBaseObjectGetDerivedStorage(a1);
  OUTLINED_FUNCTION_9_3();
  if (v11 != v12 || !a2 && !a3)
  {
    return 0;
  }

  *(a6 + 64) = 0;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  if (!a2)
  {
    *a6 = 0x7FFFFFFFFFFFFFFFLL;
    if (!a3)
    {
      return 1;
    }

    v21 = a4 + a3 / a4 * a4;
    if (v21 >= a5)
    {
      v19 = 0;
    }

    else
    {
      v19 = a4 + a3 / a4 * a4;
    }

    if (v21 >= a5)
    {
      v18 = a5;
    }

    else
    {
      v18 = a4 + a3 / a4 * a4;
    }

    goto LABEL_27;
  }

  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = v14 - 1;
  if (v14 - 1 <= *a2)
  {
    v15 = *a2;
  }

  v16 = a4 + v15 / a4 * a4;
  if (v14 > v16)
  {
    return 0;
  }

  *a6 = 0x7FFFFFFFFFFFFFFFLL;
  if (!a3)
  {
    v19 = 0;
    v18 = 0;
    v17 = 0;
LABEL_29:
    v20 = v14 <= v17;
    v22 = v14 > v17;
    if (v20)
    {
      *(a6 + 56) = a3;
      *(a6 + 64) = a2;
    }

    *a6 = v13;
    do
    {
      v23 = *(a2 + 8);
      if (v23 > v16)
      {
        break;
      }

      v24 = *(a2 + 16);
      v25 = *(a6 + 16);
      v26 = *(a2 + 32);
      if (v26 <= *(a6 + 32))
      {
        v26 = *(a6 + 32);
      }

      *(a6 + 24) += *(a2 + 24);
      *(a6 + 32) = v26;
      v27 = *(a2 + 40);
      if (v27 <= *(a6 + 40))
      {
        v27 = *(a6 + 40);
      }

      *(a6 + 40) = v27;
      *(a6 + 48) += v23 - *a2;
      v28 = v24 <= v25 ? v25 : v24;
      *(a6 + 8) = v23;
      *(a6 + 16) = v28;
      a2 = *(a2 + 48);
      *(a6 + 64) = a2;
    }

    while (a2);
    goto LABEL_42;
  }

  v17 = a3 / a4 * a4;
  v18 = v17 + a4;
  if (v17 + a4 >= a5)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17 + a4;
  }

  if (v17 + a4 >= a5)
  {
    v18 = a5;
  }

  v20 = v14 <= v17 || v14 <= v18;
  if (v20)
  {
    goto LABEL_29;
  }

  if (v18 <= v13)
  {
    *(a6 + 64) = a2;
  }

LABEL_27:
  v22 = 1;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_42:
  result = 1;
  if (a3 && v22)
  {
    if (v13 >= a3)
    {
      v13 = a3;
    }

    *a6 = v13;
    *(a6 + 8) = v18;
    *(a6 + 16) = a5;
    *(a6 + 48) = v18 - v13;
    *(a6 + 56) = v19;
  }

  return result;
}

uint64_t FigNetworkHistoryGetNextBandwidthSample(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigSimpleMutexLock(*DerivedStorage);
  active = fnh_populateBandwidthSampleFromBytesReceivedEntryAndActiveRange(a1, a2, *(a5 + 56), a3, a4, a5);
  FigSimpleMutexUnlock(*DerivedStorage);
  return active;
}

uint64_t FigNetworkHistoryGetFirstLatencySampleAfterTime(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v9 = OUTLINED_FUNCTION_19_0(DerivedStorage);
  FigSimpleMutexLock(v9);
  CMBaseObjectGetDerivedStorage(a1);
  OUTLINED_FUNCTION_9_3();
  if (v10 != v11 || (FirstRequestEntryAfterTime = fnh_getFirstRequestEntryAfterTime(a1, a2)) == 0)
  {
    v14 = 0;
  }

  else
  {
    while (1)
    {
      v13 = FirstRequestEntryAfterTime[2];
      if (v13 >= 1)
      {
        break;
      }

      v14 = 0;
      FirstRequestEntryAfterTime = FirstRequestEntryAfterTime[10];
      if (!FirstRequestEntryAfterTime)
      {
        goto LABEL_8;
      }
    }

    v15 = FirstRequestEntryAfterTime[5];
    *a4 = v13 - *FirstRequestEntryAfterTime;
    a4[1] = v15;
    a4[2] = FirstRequestEntryAfterTime[10];
    v14 = 1;
  }

LABEL_8:
  FigSimpleMutexUnlock(*v4);
  return v14;
}

uint64_t FigNetworkHistoryGetLastActiveTimestamp(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v6 = OUTLINED_FUNCTION_19_0(DerivedStorage);
  FigSimpleMutexLock(v6);
  CMBaseObjectGetDerivedStorage(a1);
  OUTLINED_FUNCTION_9_3();
  if (v7 != v8)
  {
    goto LABEL_5;
  }

  if (*(CMBaseObjectGetDerivedStorage(a1) + 80) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = **(*(v2 + 72) + 8);
    if (v9)
    {
      a2 = *(v9 + 8);
      goto LABEL_6;
    }

LABEL_5:
    a2 = 0;
  }

LABEL_6:
  FigSimpleMutexUnlock(*v2);
  return a2;
}

size_t FigNetworkHistoryCopySharedPredictor(const void *a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  cf = 0;
  FigSimpleMutexLock(*DerivedStorage);
  v11 = *(DerivedStorage + 104);
  if (v11)
  {
    v12 = FigCFWeakReferenceHolderCopyReferencedObject(v11);
    cf = v12;
    if (v12)
    {
      goto LABEL_8;
    }
  }

  v13 = FigNetworkHistoricalPredictorCreate(*MEMORY[0x1E695E480], a1, v6, &cf, v7, v8, v9, v10);
  if (!v13)
  {
    v14 = *(DerivedStorage + 104);
    if (v14)
    {
      CFRelease(v14);
    }

    v15 = FigCFWeakReferenceHolderCreateWithReferencedObject(cf);
    *(DerivedStorage + 104) = v15;
    if (v15)
    {
      v12 = cf;
LABEL_8:
      v18 = 0;
      *a2 = v12;
      cf = 0;
      goto LABEL_9;
    }

    v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFCE0EuLL, "<<<< FigNetworkHistory >>>>", 0x679, v2, v16, v17, v20);
  }

  v18 = v13;
LABEL_9:
  FigSimpleMutexUnlock(*DerivedStorage);
  if (cf)
  {
    CFRelease(cf);
  }

  return v18;
}

uint64_t FigNetworkHistoryGetSerializedRecordByteDataSize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v3 = OUTLINED_FUNCTION_19_0(DerivedStorage);
  FigSimpleMutexLock(v3);
  if (*(v1 + 136))
  {
    v4 = (12 * (*(v1 + 156) + *(v1 + 152)) + 24 * (*(v1 + 176) + *(v1 + 200)) + 24);
  }

  else
  {
    v4 = 0;
  }

  FigSimpleMutexUnlock(*v1);
  return v4;
}

size_t fnh_addBytesToBytesReceivedEntriesBetweenTimestamps(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (a4 - 2 * *(DerivedStorage + 16) > a3)
  {
    a3 = a4 - 2 * *(DerivedStorage + 16);
  }

  v11 = (DerivedStorage + 64);
  v12 = (DerivedStorage + 72);
  v13 = **(*(DerivedStorage + 72) + 8);
  v83 = 0;
  v84 = v13;
  if (!v13)
  {
    v14 = CFGetAllocator(a1);
    result = fnh_createBytesReceivedEntry(v14, a4, &v84);
    if (result)
    {
      return result;
    }

    v13 = v84;
    OUTLINED_FUNCTION_3_6(*v11);
    if (v54)
    {
      v18 = v12;
    }

    else
    {
      v18 = v17;
    }

    *v18 = v16;
    *v11 = v13;
    v13[7] = v11;
  }

  v78 = a4 - a3;
  while (*v13 > a4)
  {
    v13 = **(v13[7] + 8);
    if (!v13)
    {
      v84 = 0;
      v19 = CFGetAllocator(a1);
      result = fnh_createBytesReceivedEntry(v19, a4, &v84);
      if (result)
      {
        return result;
      }

      v13 = v84;
      OUTLINED_FUNCTION_3_6(*v11);
      if (v54)
      {
        v22 = v12;
      }

      else
      {
        v22 = v21;
      }

      *v22 = v20;
      *v11 = v13;
LABEL_24:
      v13[7] = v11;
      goto LABEL_25;
    }
  }

  if (a3 > v13[1] || (OUTLINED_FUNCTION_4_6(), v23 < a4))
  {
    v24 = CFGetAllocator(a1);
    result = fnh_createBytesReceivedEntry(v24, a4, &v83);
    if (result)
    {
      return result;
    }

    v26 = v13[6];
    v25 = v13 + 6;
    v11 = v25;
    OUTLINED_FUNCTION_15_0(v26);
    if (v54)
    {
      v30 = v12;
    }

    else
    {
      v30 = v29;
    }

    *v30 = v28;
    *v25 = v27;
    v13 = v27;
    goto LABEL_24;
  }

LABEL_25:
  OUTLINED_FUNCTION_1_16();
  if (v35 != v36)
  {
    v37 = 0;
    v38 = a2;
    v39 = v13;
    while (1)
    {
      v40 = v32 / v33 * v33;
      if (a3 <= v40)
      {
        v41 = v40;
      }

      else
      {
        v41 = a3;
      }

      if (v34 >= a4)
      {
        v42 = a4;
      }

      else
      {
        v42 = v34;
      }

      if (v78 < 1)
      {
        v43 = 1.0;
      }

      else
      {
        v43 = (v42 - v41) / v78;
      }

      v44 = (v43 * v38);
      v81 = 0u;
      v82 = 0u;
      __s1 = 0u;
      v80 = 0u;
      v45 = *v39;
      v46 = *(v39 + 1);
      v47 = *(v39 + 3);
      v81 = *(v39 + 2);
      v82 = v47;
      __s1 = v45;
      v80 = v46;
      if (v32 >= v41)
      {
        v32 = v41;
      }

      *v39 = v32;
      if (v31 <= v42)
      {
        v31 = v42;
      }

      *v12 = v31;
      v39[3] += v44;
      if (!v37 && !memcmp(&__s1, v39, 0x40uLL))
      {
        v37 = 0;
        v77 = 1;
      }

      else
      {
        v77 = 0;
        v39[2] = a5;
        v37 = 1;
      }

      v48 = CMBaseObjectGetDerivedStorage(a1);
      v49 = **(v39[7] + 8);
      if (v49)
      {
        v50 = v48;
        do
        {
          v51 = *v39;
          v53 = *v49;
          v52 = v49[1];
          v54 = *v39 < v52 || v51 == v53;
          if (!v54)
          {
            break;
          }

          if (v51 >= v53)
          {
            v51 = *v49;
          }

          *v39 = v51;
          if (*v12 > v52)
          {
            v52 = *v12;
          }

          *v12 = v52;
          v39[3] += v49[3];
          v56 = v49[6];
          v55 = v49[7];
          v57 = **(v55 + 8);
          if (v56)
          {
            *(v56 + 56) = v55;
            v55 = v49[7];
          }

          else
          {
            *(v50 + 72) = v55;
          }

          *v55 = v56;
          v58 = CFGetAllocator(a1);
          CFAllocatorDeallocate(v58, v49);
          v49 = v57;
        }

        while (v57);
      }

      CMBaseObjectGetDerivedStorage(a1);
      if (a3 >= *v39)
      {
        break;
      }

      v59 = CMBaseObjectGetDerivedStorage(a1);
      v60 = *v39 - 1;
      v85 = **(v39[7] + 8);
      v13 = v85;
      if (v85)
      {
        if (v60 > v85[1])
        {
          v61 = CFGetAllocator(a1);
          result = fnh_createBytesReceivedEntry(v61, v60, &v85);
          if (result)
          {
            return result;
          }

          v62 = v39[7];
          v13 = v85;
          v85[7] = v62;
          v13[6] = v39;
          *v62 = v13;
          v39[7] = (v13 + 6);
        }
      }

      else
      {
        v63 = v59;
        v64 = CFGetAllocator(a1);
        result = fnh_createBytesReceivedEntry(v64, v60, &v85);
        if (result)
        {
          return result;
        }

        v66 = *(v63 + 64);
        v65 = (v63 + 64);
        v13 = v85;
        v67 = v85;
        v85[6] = v66;
        v68 = v67 + 6;
        v69 = (v66 + 56);
        if (v66)
        {
          v70 = v69;
        }

        else
        {
          v70 = v65 + 1;
        }

        *v70 = v68;
        *v65 = v13;
        v13[7] = v65;
      }

      v71 = v13[6];
      if (v71 && v13[1] > *v71)
      {
        OUTLINED_FUNCTION_0_27();
        result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v72, 0xFFFFBABCuLL, "<<<< FigNetworkHistory >>>>", 0x3A1, v73, v74, v75, v76);
        v13 = v39;
        if (result)
        {
          return result;
        }
      }

      else
      {
        v39 = v13;
      }

      OUTLINED_FUNCTION_1_16();
      if (v35 == v36)
      {
        goto LABEL_77;
      }
    }
  }

  else
  {
    v77 = 1;
LABEL_77:
    if ((v77 & 1) == 0)
    {
      do
      {
        v13[2] = a5;
        v13 = v13[6];
      }

      while (v13);
    }
  }

  return 0;
}

uint64_t fnh_addRTTToBytesReceivedEntriesBetweenTimestamps(const void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v15 = DerivedStorage;
  if (a6 - 2 * *(DerivedStorage + 16) > a4)
  {
    a4 = a6 - 2 * *(DerivedStorage + 16);
  }

  v16 = (DerivedStorage + 64);
  v17 = *(DerivedStorage + 72);
  v43 = (DerivedStorage + 72);
  v44 = 0;
  v18 = **(v17 + 8);
  v45 = v18;
  if (v18)
  {
LABEL_8:
    while (*v18 > a6)
    {
      v18 = **(*(v18 + 56) + 8);
      if (!v18)
      {
        v45 = 0;
        v25 = CFGetAllocator(a1);
        result = fnh_createBytesReceivedEntry(v25, a6, &v45);
        if (result)
        {
          return result;
        }

        v18 = v45;
        OUTLINED_FUNCTION_3_6(*v16);
        v28 = v43;
        if (!v24)
        {
          v28 = v27;
        }

        *v28 = v26;
        *v16 = v18;
LABEL_20:
        *(v18 + 56) = v16;
        goto LABEL_21;
      }
    }

    if (a4 > *(v18 + 8) || (OUTLINED_FUNCTION_4_6(), v29 < a6))
    {
      v30 = CFGetAllocator(a1);
      result = fnh_createBytesReceivedEntry(v30, a6, &v44);
      if (result)
      {
        return result;
      }

      v32 = *(v18 + 48);
      v31 = (v18 + 48);
      v16 = v31;
      OUTLINED_FUNCTION_15_0(v32);
      v36 = v43;
      if (!v24)
      {
        v36 = v35;
      }

      *v36 = v34;
      *v31 = v33;
      v18 = v33;
      goto LABEL_20;
    }

    do
    {
LABEL_21:
      v37 = *(v18 + 8) - 1;
      if (v37 <= *v18)
      {
        v37 = *v18;
      }

      if (a4 >= *(v15 + 24) + v37 / *(v15 + 24) * *(v15 + 24))
      {
        break;
      }

      v38 = *(v18 + 40);
      if (v38)
      {
        if (*v18 < a5 || v38 >= a2)
        {
          goto LABEL_37;
        }
      }

      *(v18 + 40) = a2;
      *(v18 + 16) = a7;
      CMBaseObjectGetDerivedStorage(a1);
      v40 = *(v18 + 32);
      if (v40)
      {
        v41 = *v18;
        if (v40 >= a3 || v41 < a5)
        {
          goto LABEL_37;
        }
      }

      *(v18 + 32) = a3;
      *(v18 + 16) = a7;
      CMBaseObjectGetDerivedStorage(a1);
      v41 = *v18;
LABEL_37:
      if (a4 >= v41)
      {
        break;
      }

      v18 = **(*(v18 + 56) + 8);
    }

    while (v18);
    return 0;
  }

  else
  {
    v19 = CFGetAllocator(a1);
    result = fnh_createBytesReceivedEntry(v19, a6, &v45);
    if (!result)
    {
      v18 = v45;
      OUTLINED_FUNCTION_3_6(*v16);
      v23 = v43;
      if (!v24)
      {
        v23 = v22;
      }

      *v23 = v21;
      *v16 = v18;
      *(v18 + 56) = v16;
      goto LABEL_8;
    }
  }

  return result;
}

void fnhp_makePrediction()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v253 = *MEMORY[0x1E69E9840];
  v224 = v8;
  DerivedStorage = CMBaseObjectGetDerivedStorage(v8);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0;
  FigNetworkHistoryBeginImmutabilty(*DerivedStorage);
  v12 = &off_197165000;
  v228 = v7;
  switch(*v5)
  {
    case 0:
      OUTLINED_FUNCTION_6_6(__dst);
      v37 = v224;
      v38 = CMBaseObjectGetDerivedStorage(v224);
      v248 = 0;
      v39 = CMBaseObjectGetDerivedStorage(*v38);
      v40 = *(v39 + 24);
      v48 = OUTLINED_FUNCTION_8_3(v39, v41, v42, v43, v44, v45, v46, v47, v175, v179, v183, v190, v197, v205, v210, v215, v220, v224, v7, v232, v236, v240, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), *&__src[6], *(&__src[6] + 1), *&__src[7], *(&__src[7] + 1), *&__src[8], *(&__src[8] + 1), *&__src[9], *(&__src[9] + 1), *&__src[10], *(&__src[10] + 1), *&__src[11], *(&__src[11] + 1), *&__src[12], *(&__src[12] + 1), *&__src[13], *(&__src[13] + 1), v246, *(&v246 + 1), v247, 0, v249, *&v250[0], *&v250[1], *&v250[2], *&v250[3], *&v250[4], *&v250[5], *&v250[6], *&v250[7]);
      memcpy(v48, v49, 0xE0uLL);
      fnhp_medianAlgorithmForLatency(v37, v7, v251, v40, (v3 + 32), (v3 + 40), &v248);
      v50 = v248;
      *&__src[0] = 0;
      v249 = 0;
      v250[0] = 0.0;
      *&v246 = 0;
      v251[0] = __dst[0];
      v251[1] = __dst[1];
      memcpy(&v251[2] + 8, &__dst[2] + 8, 0xB8uLL);
      *&v251[2] = 0;
      fnhp_constantLatencyTimeWeightedAlgorithmForBandwidth(v37, 0, v7, v251, fnhp_constantWeightForBandwidthSample, 0, __src, &v246, &v249, v250);
      v25 = v51;
      if (!v51)
      {
        v59 = *&v250[0] + v50 / 2;
        if (v59 < 1)
        {
          v60 = 0.0;
        }

        else
        {
          v60 = *&__src[0] + (v50 / 2) / v59 * (0.0 - *&__src[0]);
        }

        v12 = &off_197165000;
        *v3 = llround(v60);
        v61 = v249;
        *(v3 + 8) = v246;
        *(v3 + 16) = v61;
        *(v3 + 48) = v59;
        goto LABEL_25;
      }

      v12 = &off_197165000;
      goto LABEL_27;
    case 1:
      OUTLINED_FUNCTION_6_6(v251);
      v30 = fnhp_constantLatencyPredictionAlgorithm(v224, v7, v251, v3);
      goto LABEL_12;
    case 2:
      OUTLINED_FUNCTION_5_6();
      OUTLINED_FUNCTION_6_6(v251);
      v36 = fnhp_linearTimeWeightForBandwidthSample;
      goto LABEL_24;
    case 3:
      OUTLINED_FUNCTION_5_6();
      OUTLINED_FUNCTION_6_6(v251);
      v36 = fnhp_quadraticTimeWeightForBandwidthSample;
      goto LABEL_24;
    case 4:
      v246 = *v5;
      v31 = *(v5 + 16);
      memcpy(__dst, (v5 + 24), 0xC8uLL);
      v32 = CMBaseObjectGetDerivedStorage(v224);
      v33 = *(CMBaseObjectGetDerivedStorage(*v32) + 24);
      v250[0] = v31 / 1000000000.0 * (v31 / 1000000000.0) * 0.01 / (v33 / 1000000000.0 * (v33 / 1000000000.0));
      *&v250[1] = v33;
      v251[0] = v246;
      *&v251[1] = v31;
      memcpy(&v251[1] + 8, __dst, 0xC8uLL);
      fnhp_timeWeightedConstantLatencyPredictionAlgorithm(v224, fnhp_quadraticTimeWeightWithHighPassUtilizationFilterForBandwidthSample, v250, v7, v251, v3);
      v25 = v34;
      if (!v34)
      {
        v251[0] = v246;
        *&v251[1] = v31;
        memcpy(&v251[1] + 8, __dst, 0xC8uLL);
        memcpy(__src, v3, 0x58uLL);
        fnhp_makeSafeBandwidthMultiplier(v251, __src);
        *(v3 + 24) = v35;
      }

      goto LABEL_27;
    case 5:
      OUTLINED_FUNCTION_5_6();
      OUTLINED_FUNCTION_6_6(v251);
      v36 = fnhp_logisticTimeWeightForBandwidthSample;
LABEL_24:
      fnhp_timeWeightedConstantLatencyPredictionAlgorithm(v224, v36, 0, v7, v251, v3);
      v25 = v51;
      if (v51)
      {
        goto LABEL_27;
      }

LABEL_25:
      v62 = OUTLINED_FUNCTION_8_3(v51, v52, v53, v54, v55, v56, v57, v58, v175, v179, v183, v190, v197, v205, v210, v215, v220, v224, v228, v232, v236, v240, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), *&__src[6], *(&__src[6] + 1), *&__src[7], *(&__src[7] + 1), *&__src[8], *(&__src[8] + 1), *&__src[9], *(&__src[9] + 1), *&__src[10], *(&__src[10] + 1), *&__src[11], *(&__src[11] + 1), *&__src[12], *(&__src[12] + 1), *&__src[13], *(&__src[13] + 1), v246, *(&v246 + 1), v247, v248, v249, *&v250[0], *&v250[1], *&v250[2], *&v250[3], *&v250[4], *&v250[5], *&v250[6], *&v250[7]);
      memcpy(v62, v63, 0xE0uLL);
      memcpy(__src, v3, 0x58uLL);
      v64 = __src;
      break;
    case 6:
      OUTLINED_FUNCTION_6_6(__src);
      OUTLINED_FUNCTION_5_6();
      v112 = v5;
      OUTLINED_FUNCTION_6_6(v251);
      v113 = CMBaseObjectGetDerivedStorage(v224);
      StartTimestamp = fnhp_getStartTimestamp(v224, v7, v251, 1);
      memset(v251, 0, 24);
      if (FigNetworkHistoryGetFirstLatencySampleAfterTime(*v113, StartTimestamp, v115, v251))
      {
        v117 = 0;
        v118 = 0;
        v119 = 0.0;
        v120 = 0.0;
        do
        {
          ++v117;
          v118 += *&v251[0];
          v121 = *&v251[0] - v120;
          v120 = v120 + 1.0 / v117 * v121;
          v119 = v119 + v121 * (*&v251[0] - v120);
        }

        while (FigNetworkHistoryGetNextValidLatencySample(*v113, *&v251[1], v116, v251));
        v122 = v118 / v117;
        if (v119 <= 2.22044605e-16)
        {
          v123 = 0.0;
        }

        else
        {
          v123 = sqrt(v119 / v117);
        }

        v5 = v112;
        *(v3 + 40) = v123;
      }

      else
      {
        v122 = 0;
        v123 = *(v3 + 40);
      }

      *(v3 + 32) = v122;
      fnhp_constantLatencyTimeWeightedAlgorithmForBandwidth(v224, (v123 + v122), v7, __dst, fnhp_logisticTimeWeightForBandwidthSample, 0, v3, v3 + 8, v3 + 16, v3 + 48);
      v25 = v124;
      if (v124)
      {
        goto LABEL_27;
      }

      memcpy(v251, __src, sizeof(v251));
      memcpy(v250, v3, sizeof(v250));
      v64 = v250;
      break;
    case 7:
      memcpy(__dst, v5, 0xB9uLL);
      v13 = *(v5 + 185);
      v14 = *(v5 + 186);
      LODWORD(v250[0]) = *(v5 + 187);
      BYTE4(v250[0]) = *(v5 + 191);
      v216 = *(v5 + 192);
      v221 = *(v5 + 200);
      v15 = *(v5 + 208);
      v16 = CMBaseObjectGetDerivedStorage(v224);
      v24 = v14;
      memset(__src, 0, 88);
      if (!v13 && (v14 & 1) != 0)
      {
        if (v15)
        {
          v28 = v221;
          if (v15 <= (v7 - v221))
          {
            v15 = v7 - v221;
          }
        }

        else
        {
          v16 = CMBaseObjectGetDerivedStorage(*v16);
          v15 = v7 - v16[2];
          v28 = v221;
        }

        v165 = OUTLINED_FUNCTION_8_3(v16, v17, v18, v19, v20, v21, v22, v23, v175, v179, v183, v190, v197, v205, v210, v216, v221, v224, v7, v232, v236, v240, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), *&__src[6], *(&__src[6] + 1), *&__src[7], *(&__src[7] + 1), *&__src[8], *(&__src[8] + 1), *&__src[9], *(&__src[9] + 1), *&__src[10], *(&__src[10] + 1), *&__src[11], *(&__src[11] + 1), *&__src[12], *(&__src[12] + 1), *&__src[13], *(&__src[13] + 1), v246, *(&v246 + 1), v247, v248, v249, *&v250[0], *&v250[1], *&v250[2], *&v250[3], *&v250[4], *&v250[5], *&v250[6], *&v250[7]);
        v167 = memcpy(v165, v166, 0xB9uLL);
        BYTE9(v251[11]) = 0;
        BYTE10(v251[11]) = v14;
        *(&v251[11] + 11) = LODWORD(v250[0]);
        HIBYTE(v251[11]) = BYTE4(v250[0]);
        *&v251[12] = v219;
        *(&v251[12] + 1) = v28;
        *&v251[13] = v15;
        v25 = OUTLINED_FUNCTION_12_1(v167, v168, v169, v170, v171, v172, v173, v174, v178, v182, v189, v196, v204, v209, v214, v219, v223, v227, v231, v235, v239, v244, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), *&__src[6], *(&__src[6] + 1), *&__src[7], *(&__src[7] + 1), *&__src[8], *(&__src[8] + 1), *&__src[9], *(&__src[9] + 1), *&__src[10], *(&__src[10] + 1), *&__src[11], *(&__src[11] + 1), *&__src[12], *(&__src[12] + 1), *&__src[13], *(&__src[13] + 1), v246, *(&v246 + 1), v247, v248, v249, *&v250[0], *&v250[1], *&v250[2], *&v250[3], *&v250[4], *&v250[5], *&v250[6], *&v250[7]);
        v27 = *(__src + 1);
        v26 = *&__src[0];
      }

      else
      {
        v25 = 0;
        v26 = 0;
        v27 = 1.0;
        if (v24 & 1) != 0 && (v13)
        {
          v211 = __PAIR64__(v24, v13);
          v185 = v5;
          v192 = v3;
          v125 = 0.0;
          v241 = -3000000000;
          v126 = 4000000000;
          v127 = 3000000000;
          v200 = DerivedStorage;
          v206 = v221;
          do
          {
            if (v127 + v15 + 1000000000 >= v7)
            {
              v147 = 0.0;
            }

            else
            {
              HIDWORD(v236) = 0;
              v128 = 0.0;
              v232 = v126;
              do
              {
                v129 = v7;
                v130 = OUTLINED_FUNCTION_8_3(v16, v17, v18, v19, v20, v21, v22, v23, v175, v179, v185, v192, v200, v206, v211, v216, v221, v224, v228, v232, v236, v241, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), *&__src[6], *(&__src[6] + 1), *&__src[7], *(&__src[7] + 1), *&__src[8], *(&__src[8] + 1), *&__src[9], *(&__src[9] + 1), *&__src[10], *(&__src[10] + 1), *&__src[11], *(&__src[11] + 1), *&__src[12], *(&__src[12] + 1), *&__src[13], *(&__src[13] + 1), v246, *(&v246 + 1), v247, v248, v249, *&v250[0], *&v250[1], *&v250[2], *&v250[3], *&v250[4], *&v250[5], *&v250[6], *&v250[7]);
                memcpy(v130, v131, 0xB9uLL);
                v133 = v212;
                v132 = BYTE4(v212);
                BYTE9(v251[11]) = v212;
                BYTE10(v251[11]) = BYTE4(v212);
                *(&v251[11] + 11) = LODWORD(v250[0]);
                HIBYTE(v251[11]) = BYTE4(v250[0]);
                v134 = v217;
                v251[12] = v217;
                *&v251[13] = v127 + v15;
                *(&v251[13] + 1) = 3000000000;
                v135 = v225;
                v136 = fnhp_constantLatencyPredictionAlgorithm(v225, v7, v251, __src);
                v137 = *&__src[0];
                v145 = OUTLINED_FUNCTION_8_3(v136, v138, v139, v140, v141, v142, v143, v144, v176, v180, v186, v193, v201, v207, v212, v217, *(&v217 + 1), v225, v229, v233, v237, v242, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), *&__src[6], *(&__src[6] + 1), *&__src[7], *(&__src[7] + 1), *&__src[8], *(&__src[8] + 1), *&__src[9], *(&__src[9] + 1), *&__src[10], *(&__src[10] + 1), *&__src[11], *(&__src[11] + 1), *&__src[12], *(&__src[12] + 1), *&__src[13], *(&__src[13] + 1), v246, *(&v246 + 1), v247, v248, v249, *&v250[0], *&v250[1], *&v250[2], *&v250[3], *&v250[4], *&v250[5], *&v250[6], *&v250[7]);
                memcpy(v145, v146, 0xB9uLL);
                BYTE9(v251[11]) = v133;
                BYTE10(v251[11]) = v132;
                *(&v251[11] + 11) = LODWORD(v250[0]);
                HIBYTE(v251[11]) = BYTE4(v250[0]);
                v251[12] = v134;
                *&v251[13] = v15;
                *(&v251[13] + 1) = v127;
                v16 = fnhp_constantLatencyPredictionAlgorithm(v135, v129, v251, __src);
                if (v137 && *&__src[0])
                {
                  v128 = v128 + (v137 - *&__src[0]) * (v137 - *&__src[0]);
                  ++HIDWORD(v236);
                }

                v7 = v228;
                v126 = v232;
                v15 += v127;
              }

              while (v232 + v15 < v228);
              v15 += v241;
              if (HIDWORD(v236))
              {
                v147 = v128 / SHIDWORD(v236);
              }

              else
              {
                v147 = 0.0;
              }
            }

            if (v125 == 0.0)
            {
              v206 = v127;
            }

            else
            {
              v148 = v147 < v125;
              v149 = v147 != 0.0;
              v150 = !v148 || !v149;
              if (!v148 || !v149)
              {
                v147 = v125;
              }

              v151 = v206;
              if (!v150)
              {
                v151 = v127;
              }

              v206 = v151;
            }

            v241 -= 2000000000;
            v126 += 2000000000;
            v125 = v147;
            v152 = v127 >= 0x3F5476A00;
            v127 += 2000000000;
          }

          while (!v152);
          v28 = v206;
          v153 = v216;
          if (v206)
          {
            v154 = v206;
          }

          else
          {
            v154 = v216;
          }

          v155 = OUTLINED_FUNCTION_8_3(v16, v17, v18, v19, v20, v21, v22, v23, v175, v179, v185, v192, v200, v206, v211, v216, v221, v224, v228, v232, v236, v241, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), *&__src[6], *(&__src[6] + 1), *&__src[7], *(&__src[7] + 1), *&__src[8], *(&__src[8] + 1), *&__src[9], *(&__src[9] + 1), *&__src[10], *(&__src[10] + 1), *&__src[11], *(&__src[11] + 1), *&__src[12], *(&__src[12] + 1), *&__src[13], *(&__src[13] + 1), v246, *(&v246 + 1), v247, v248, v249, *&v250[0], *&v250[1], *&v250[2], *&v250[3], *&v250[4], *&v250[5], *&v250[6], *&v250[7]);
          v157 = memcpy(v155, v156, 0xB9uLL);
          BYTE9(v251[11]) = v213;
          BYTE10(v251[11]) = BYTE4(v213);
          *(&v251[11] + 11) = LODWORD(v250[0]);
          HIBYTE(v251[11]) = BYTE4(v250[0]);
          *&v251[12] = v153;
          *(&v251[12] + 1) = v154;
          *&v251[13] = v7 - v154;
          v25 = OUTLINED_FUNCTION_12_1(v157, v158, v159, v160, v161, v162, v163, v164, v177, v181, v187, v194, v202, v208, v213, v218, v222, v226, v230, v234, v238, v243, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), *&__src[6], *(&__src[6] + 1), *&__src[7], *(&__src[7] + 1), *&__src[8], *(&__src[8] + 1), *&__src[9], *(&__src[9] + 1), *&__src[10], *(&__src[10] + 1), *&__src[11], *(&__src[11] + 1), *&__src[12], *(&__src[12] + 1), *&__src[13], *(&__src[13] + 1), v246, *(&v246 + 1), v247, v248, v249, *&v250[0], *&v250[1], *&v250[2], *&v250[3], *&v250[4], *&v250[5], *&v250[6], *&v250[7]);
          v27 = *(__src + 1);
          v26 = *&__src[0];
          v3 = v195;
          DerivedStorage = v203;
          v12 = &off_197165000;
          v5 = v188;
        }

        else
        {
          v28 = v221;
        }
      }

      if (v27 <= 0.0)
      {
        v29 = 1.0;
      }

      else
      {
        v29 = 1.0 / v27;
      }

      *&__src[5] = v29;
      *&__src[4] = v28;
      *(&__src[4] + 1) = v26;
      memcpy(v3, __src, 0x58uLL);
      goto LABEL_27;
    default:
      v30 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFBAB9uLL, "<<<< FigNetworkHistory >>>>", 0xC95, v1, v10, v11, v175);
LABEL_12:
      v25 = v30;
      goto LABEL_27;
  }

  fnhp_makeSafeBandwidthMultiplier(v251, v64);
  *(v3 + 24) = v65;
LABEL_27:
  if (v25)
  {
    goto LABEL_73;
  }

  if ((*(v5 + 8) & 1) == 0 || *(CMBaseObjectGetDerivedStorage(*DerivedStorage) + 42))
  {
    goto LABEL_71;
  }

  v184 = v5;
  v66 = CMBaseObjectGetDerivedStorage(v224);
  v67 = *(CMBaseObjectGetDerivedStorage(*v66) + 24);
  OUTLINED_FUNCTION_14_0();
  FigNetworkHistoryBeginImmutabilty(*v66);
  OUTLINED_FUNCTION_13_1();
  if (!FigNetworkHistoryGetFirstBandwidthSampleAfterTime(*v66, v68 / v67 * v67, v67, v69, v251))
  {
    FigNetworkHistoryEndImmutability(*v66);
    goto LABEL_70;
  }

  v198 = DerivedStorage;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = v67 / v12[179];
  v74 = 0.0;
  v75 = 0.0;
  v76 = 0.0;
  do
  {
    v77 = *(&v251[1] + 1);
    v78 = *&v251[3];
    NextBandwidthSample = FigNetworkHistoryGetNextBandwidthSample(*v66, *&v251[4], v67, v228, v251);
    if (v67 != v78)
    {
      goto LABEL_43;
    }

    v76 = v76 + 1.0;
    v80 = (8 * v77) / v73;
    v81 = v80 - v75;
    if (v76 <= 2.22044605e-16)
    {
      v74 = v74 + v81 * v80;
      v75 = 0.0;
    }

    else
    {
      v75 = v75 + 1.0 / v76 * v81;
      v74 = v74 + v81 * (v80 - v75);
      if (v74 > 2.22044605e-16)
      {
        v82 = sqrt(v74 / v76);
        goto LABEL_36;
      }
    }

    v82 = 0.0;
LABEL_36:
    ++v71;
    if (v82 / v75 > 0.05)
    {
      v70 = 0;
      goto LABEL_43;
    }

    v83 = v70 + 1;
    if (v70 <= 1)
    {
      ++v70;
LABEL_43:
      if (v70)
      {
        v83 = v70;
      }

      else
      {
        v83 = 0;
      }

      if (v70)
      {
        v84 = v76;
      }

      else
      {
        v84 = 0.0;
      }

      if (v70)
      {
        v85 = v75;
      }

      else
      {
        v85 = 0.0;
      }

      if (v70)
      {
        v86 = v74;
      }

      else
      {
        v86 = 0.0;
      }

      if (v70)
      {
        v87 = v71;
      }

      else
      {
        v87 = 0;
      }

      if (v71 >= 1)
      {
        v76 = v84;
        v75 = v85;
      }

      else
      {
        v83 = v70;
      }

      if (v71 >= 1)
      {
        v74 = v86;
        v71 = v87;
      }

      goto LABEL_63;
    }

    if (v80 < v72)
    {
      v80 = v72;
    }

    v72 = v80;
LABEL_63:
    v70 = v83;
  }

  while (NextBandwidthSample);
  FigNetworkHistoryEndImmutability(*v66);
  DerivedStorage = v198;
  if (v72 >= 1 && v72 < *v3)
  {
    *v3 = v72;
    *(v3 + 24) = 0x3FEE666666666666;
  }

LABEL_70:
  v5 = v184;
LABEL_71:
  if ((*(v5 + 8) & 2) == 0 || *(CMBaseObjectGetDerivedStorage(*DerivedStorage) + 42))
  {
    goto LABEL_73;
  }

  v191 = v3;
  v199 = DerivedStorage;
  v88 = CMBaseObjectGetDerivedStorage(v224);
  v89 = *(CMBaseObjectGetDerivedStorage(*v88) + 24);
  OUTLINED_FUNCTION_14_0();
  FigNetworkHistoryBeginImmutabilty(*v88);
  OUTLINED_FUNCTION_13_1();
  if (!FigNetworkHistoryGetFirstBandwidthSampleAfterTime(*v88, v90 / v89 * v89, v89, v91, v251))
  {
    FigNetworkHistoryEndImmutability(*v88);
    goto LABEL_142;
  }

  v92 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v97 = v89 / v12[179];
  v98 = 0.0;
  v99 = 0.0;
  v100 = 0.0;
  while (1)
  {
LABEL_76:
    v101 = *(&v251[1] + 1);
    v102 = *&v251[3];
    v103 = FigNetworkHistoryGetNextBandwidthSample(*v88, *&v251[4], v89, v228, v251);
    if (v89 == v102 && v101 >= 1 && v93 <= 10)
    {
      ++v93;
      v94 += v101;
LABEL_95:
      if (!v103)
      {
        goto LABEL_101;
      }

      continue;
    }

    if (v93 < 1)
    {
      goto LABEL_95;
    }

    if (v93 >= 3)
    {
      break;
    }

    v94 = 0;
    v93 = 0;
    if (!v103)
    {
      goto LABEL_101;
    }
  }

  v100 = v100 + 1.0;
  v106 = (8 * v94 / v93) / v97;
  v107 = v106 - v99;
  if (v100 <= 2.22044605e-16)
  {
    v98 = v98 + v107 * v106;
    v99 = 0.0;
  }

  else
  {
    v99 = v99 + 1.0 / v100 * v107;
    v98 = v98 + v107 * (v106 - v99);
    if (v98 > 2.22044605e-16)
    {
      v108 = sqrt(v98 / v100);
      goto LABEL_88;
    }
  }

  v108 = 0.0;
LABEL_88:
  v94 = 0;
  v93 = 0;
  v109 = v92 > 1;
  v110 = v108 / v99 <= 0.05;
  v111 = v96;
  if (v99 >= v96)
  {
    v111 = v99;
  }

  ++v92;
  if (v109 && v110)
  {
    v96 = v111;
    v95 = 1;
  }

  if (v103)
  {
    goto LABEL_76;
  }

LABEL_101:
  FigNetworkHistoryEndImmutability(*v88);
  if (v95)
  {
    *v191 = v96;
    v191[3] = 0x3FEE666666666666;
  }

LABEL_142:
  DerivedStorage = v199;
LABEL_73:
  FigNetworkHistoryEndImmutability(*DerivedStorage);
  OUTLINED_FUNCTION_20_0();
}

uint64_t fnhp_constantLatencyPredictionAlgorithm(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_11_1();
  memcpy(__dst, v7, sizeof(__dst));
  fnhp_timeWeightedConstantLatencyPredictionAlgorithm(v5, fnhp_constantWeightForBandwidthSample, 0, v4, __dst, a4);
  v9 = v8;
  if (!v8)
  {
    OUTLINED_FUNCTION_6_6(__dst);
    memcpy(v12, a4, sizeof(v12));
    fnhp_makeSafeBandwidthMultiplier(__dst, v12);
    a4[3] = v10;
  }

  return v9;
}

void fnhp_medianAlgorithmForLatency(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, void *a5, double *a6, void *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v17 = OUTLINED_FUNCTION_19_0(DerivedStorage);
  v18 = CMBaseObjectGetDerivedStorage(v17);
  memcpy(__dst, a3, 0xE0uLL);
  StartTimestamp = fnhp_getStartTimestamp(a1, a2, __dst, a4);
  memset(__dst, 0, 24);
  FigSimpleMutexLock(*(v7 + 8));
  v23 = malloc_type_calloc(*(v18 + 88), 8uLL, 0x100004000313F17uLL);
  if (v23)
  {
    if (FigNetworkHistoryGetFirstLatencySampleAfterTime(*v7, StartTimestamp, v20, __dst))
    {
      v24 = *v7;
      v25 = CMBaseObjectGetDerivedStorage(*v7);
      FigSimpleMutexLock(*v25);
      CMBaseObjectGetDerivedStorage(v24);
      OUTLINED_FUNCTION_9_3();
      if (v26 != v27)
      {
        v28 = 0;
      }

      else
      {
        v28 = *(v25 + 96);
      }

      FigSimpleMutexUnlock(*v25);
      v29 = __dst[2];
      v30 = CMBaseObjectGetDerivedStorage(a1);
      if (v29 != *(v30 + 32) || *(v30 + 24) != v28)
      {
        v32 = 0;
        v33 = 0;
        *(v7 + 32) = v29;
        v34 = 0.0;
        v35 = 0.0;
        do
        {
          v36 = __dst[0];
          v37 = __dst[2];
          v23[v32++] = __dst[0];
          v33 += v36;
          v38 = v32;
          v39 = v36 - v35;
          v35 = v35 + 1.0 / v32 * v39;
          v34 = v34 + v39 * (v36 - v35);
        }

        while (FigNetworkHistoryGetNextValidLatencySample(*v7, v37, v31, __dst));
        *(v7 + 24) = v28;
        v40 = malloc_type_calloc(v32, 8uLL, 0x10040436913F5uLL);
        v41 = v40;
        if (v40)
        {
          v42 = vdupq_n_s64(v32 - 1);
          v43 = ((v32 - 1) & 0xFFFFFFFFFFFFFFFELL) + 2;
          v44 = xmmword_197165580;
          v45 = v40 + 1;
          v46 = vdupq_n_s64(2uLL);
          v47 = v23;
          do
          {
            v48 = vmovn_s64(vcgeq_u64(v42, v44));
            if (v48.i8[0])
            {
              *(v45 - 1) = v47;
            }

            if (v48.i8[4])
            {
              *v45 = v47 + 1;
            }

            v44 = vaddq_s64(v44, v46);
            v45 += 2;
            v47 += 2;
            v43 -= 2;
          }

          while (v43);
          FigGetMedianValueOfCArray(v40, v32, fnhp_compareInt64, fnhp_averageInt64, 8uLL);
          v50 = v49;
          if (v49)
          {
            v51 = *v49;
          }

          else
          {
            v51 = 0;
          }
        }

        else
        {
          v51 = 0;
          v50 = 0;
        }

        free(v41);
        free(v50);
        *(v7 + 40) = v51;
        if (v34 <= 2.22044605e-16)
        {
          v52 = 0;
        }

        else
        {
          v52 = sqrt(v34 / v38);
        }

        *(v7 + 48) = v52;
        *(v7 + 56) = v33;
      }

      if (a5)
      {
        *a5 = *(v7 + 40);
      }

      if (a6)
      {
        *a6 = *(v7 + 48);
      }

      if (a7)
      {
        *a7 = *(v7 + 56);
      }
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFCE0EuLL, "<<<< FigNetworkHistory >>>>", 0x8C6, v8, v21, v22, v53);
  }

  FigSimpleMutexUnlock(*(v7 + 8));

  free(v23);
}

void *fnhp_averageInt64(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  if (result)
  {
    *result = v3 + v2 + v2 / -2 + v3 / -2;
  }

  return result;
}

void fnhp_constantLatencyTimeWeightedAlgorithmForBandwidth(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v14 = *(CMBaseObjectGetDerivedStorage(*DerivedStorage) + 24);
  v31 = 0;
  memcpy(__dst, a4, sizeof(__dst));
  OUTLINED_FUNCTION_18_0();
  fnhp_constantLatencyTimeWeightedAlgorithmForBandwidthHelper(v15, v16, v17, v18, v19, v20, 0, v14, &v31, 0, 0, a10, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19]);
  if (!v21)
  {
    if (v14 <= 0x3B9ACA00)
    {
      v14 = 1000000000;
    }

    memcpy(__dst, a4, sizeof(__dst));
    OUTLINED_FUNCTION_18_0();
    fnhp_constantLatencyTimeWeightedAlgorithmForBandwidthHelper(v22, v23, v24, v25, v26, v27, v28, v14, 0, a8, a9, 0, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19]);
    if (!v29)
    {
      *a7 = v31;
    }
  }
}

void fnhp_constantLatencyTimeWeightedAlgorithmForBandwidthHelper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, double *a30, double *a31, void *a32)
{
  OUTLINED_FUNCTION_21_0();
  v149 = v36;
  v212 = v37;
  v201 = v38;
  v200 = v39;
  v207 = v40;
  v208 = v41;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  DerivedStorage = CMBaseObjectGetDerivedStorage(v48);
  StartTimestamp = v43[26];
  if (!StartTimestamp)
  {
    OUTLINED_FUNCTION_10_2();
    StartTimestamp = fnhp_getStartTimestamp(v49, v45, __dst, v212);
  }

  WindowSize = fnhp_getWindowSize(v49, v43[2]);
  v53 = v45 - StartTimestamp;
  if (WindowSize > v45 - StartTimestamp)
  {
    v53 = fnhp_getWindowSize(v49, v43[2]);
  }

  if (v43[27])
  {
    v54 = v43[27];
  }

  else
  {
    v54 = v53;
  }

  v229 = 0uLL;
  v228 = 0;
  *v226 = 0u;
  v227 = 0u;
  *v224 = 0u;
  v225 = 0u;
  v223[1] = 0;
  v223[0] = 0;
  v55 = v43[4];
  v221[1] = 0;
  v221[0] = 0;
  memset(v220, 0, sizeof(v220));
  FigSimpleMutexLock(*(DerivedStorage + 8));
  FirstLatencySampleAfterTime = FigNetworkHistoryGetFirstLatencySampleAfterTime(*DerivedStorage, StartTimestamp, v56, v220);
  v58 = v220[0];
  if (!FirstLatencySampleAfterTime)
  {
    v58 = 0;
  }

  v154 = v58;
  if (!v43[2])
  {
    v43[2] = *(CMBaseObjectGetDerivedStorage(*DerivedStorage) + 16);
  }

  OUTLINED_FUNCTION_10_2();
  v59 = CMBaseObjectGetDerivedStorage(v49);
  BandwidthPredictionCacheKey = fnhp_createBandwidthPredictionCacheKey(__dst, v212);
  v210 = DerivedStorage;
  if (!BandwidthPredictionCacheKey || (v61 = BandwidthPredictionCacheKey, Value = CFDictionaryGetValue(*(v59 + 16), BandwidthPredictionCacheKey), CFRelease(v61), !Value))
  {
    v172 = 0;
    v173 = 0;
    v167 = 0;
    v170 = 0;
    v179 = 0;
    v180 = 0;
    v177 = 0;
    v178 = 0;
    v176 = 0;
    v163 = 0;
    v164 = 0.0;
    v171 = 0;
    v222[1] = 0;
    v222[0] = 0;
    v168 = 0;
    v169 = 0.0;
    v165 = 0;
    v166 = 0.0;
    v174 = 0.0;
    v175 = 0.0;
    goto LABEL_18;
  }

  v171 = *Value;
  v63 = *(Value + 3);
  v172 = *(Value + 4);
  v173 = *(Value + 2);
  v170 = *(Value + 5);
  v168 = *(Value + 6);
  v169 = *(Value + 1);
  v165 = *(Value + 8);
  v166 = *(Value + 7);
  v174 = *(Value + 10);
  v175 = *(Value + 9);
  v179 = *(Value + 11);
  v180 = *(Value + 12);
  v177 = *(Value + 14);
  v178 = *(Value + 13);
  *v222 = *(Value + 120);
  v176 = *(Value + 17);
  v163 = *(Value + 19);
  v164 = *(Value + 18);
  v64 = CMBaseObjectGetDerivedStorage(v49);
  memset(__dst, 0, 72);
  v167 = v63;
  if (v63 != StartTimestamp)
  {
LABEL_18:
    OUTLINED_FUNCTION_10_2();
    v68 = CMBaseObjectGetDerivedStorage(v49);
    v69 = fnhp_createBandwidthPredictionCacheKey(__dst, v212);
    if (v69)
    {
      v70 = v69;
      CFDictionaryRemoveValue(*(v68 + 16), v69);
      CFRelease(v70);
    }

    else
    {
      OUTLINED_FUNCTION_0_27();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v145, 0xFFFFCE0EuLL, "<<<< FigNetworkHistory >>>>", 0x808, v146, v147, v148, v149);
    }

    v213 = 0;
    v214 = 0;
    v35 = 0.0;
    v204 = 1;
    v209 = 0.0;
    v34 = 0.0;
    v33 = 0.0;
    v32 = 0.0;
    goto LABEL_21;
  }

  v65 = *v64;
  v66 = CMBaseObjectGetDerivedStorage(*v64);
  v230 = 0;
  FigSimpleMutexLock(*v66);
  FirstBytesReceivedEntryAfterTime = fnh_getFirstBytesReceivedEntryAfterTime(v65, v180 - v212 + 1, v45, &v230, 1);
  if (!FirstBytesReceivedEntryAfterTime)
  {
    FigSimpleMutexUnlock(*v66);
    goto LABEL_18;
  }

  active = fnh_populateBandwidthSampleFromBytesReceivedEntryAndActiveRange(v65, FirstBytesReceivedEntryAfterTime, v230, v212, v45, __dst);
  FigSimpleMutexUnlock(*v66);
  if (!active)
  {
    goto LABEL_18;
  }

  v128 = v179 == *&__dst[0] && v180 == *(&__dst[0] + 1);
  v129 = v128 && v177 == *(&__dst[1] + 1);
  v130 = v129 && v176 == *&__dst[3];
  v131 = v130 && v178 == *&__dst[1];
  if (!v131 || v200 && v174 < vabdd_f64(v175, *&v201))
  {
    goto LABEL_18;
  }

  *(&v227 + 1) = v172;
  v132 = OUTLINED_FUNCTION_16();
  v204 = 0;
  if (FigNetworkHistoryGetNextBandwidthSample(v132, v133, v134, v135, v136))
  {
    OUTLINED_FUNCTION_2_12(v137, v138, v139, v140, v141, v142, v143, v144, *&v149, v150, v152, *&v154, v155, v156, v157, v158, v159, v161, *&v163, v164, *&v165);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_2_12(v137, v138, v139, v140, v141, v142, v143, v144, *&v149, v150, v152, *&v154, v155, v156, v157, v158, v159, v161, *&v163, v164, *&v165);
LABEL_21:
  v71 = OUTLINED_FUNCTION_16();
  if (!FigNetworkHistoryGetFirstBandwidthSampleAfterTime(v71, v72, v73, v74, v75))
  {
    goto LABEL_93;
  }

LABEL_22:
  v160 = v49;
  v162 = StartTimestamp;
  __src = v43;
  v151 = v47 / 2;
  v153 = 8 * v55;
  v203 = v45;
  LastActiveTimestamp = FigNetworkHistoryGetLastActiveTimestamp(*DerivedStorage, v45);
  v219 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v197 = 0;
  v198 = 0;
  v195 = 0;
  v196 = 0;
  v199 = 0;
  v202 = 0;
  v190 = 0;
  v191 = 0;
  v188 = 0;
  v189 = 0;
  v80 = 0;
  v81 = 0.0;
  v82 = 0;
  v83 = 0;
  v193 = 0.0;
  v194 = 0;
  v192 = 0;
  v205 = LastActiveTimestamp - v54;
  v206 = LastActiveTimestamp;
  v186 = 0.0;
  v187 = 0.0;
  v184 = 0.0;
  v185 = 0;
  v182 = 0.0;
  v183 = 0;
  v181 = 0;
  do
  {
    v84 = v79;
    *v223 = v229;
    v85 = *(&v225 + 1);
    v229 = *v226;
    v86 = v227;
    v87 = v228;
    v218 = v224[0];
    __dst[0] = *v224;
    v216 = v225;
    v217 = v224[1];
    __dst[1] = v225;
    __dst[2] = *v226;
    __dst[3] = v227;
    v215 = *(&v227 + 1);
    *&__dst[4] = v228;
    v88 = v207(__dst, v205, v206, __src, v208);
    if (v88 < 0.0)
    {
      OUTLINED_FUNCTION_0_27();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v123, 0xFFFFBAB9uLL, "<<<< FigNetworkHistory >>>>", 0xA28, v124, v125, v126, v149);
      goto LABEL_93;
    }

    v89 = v88;
    NextBandwidthSample = FigNetworkHistoryGetNextBandwidthSample(*v210, v87, v212, v203, v224);
    if (v204)
    {
      if (NextBandwidthSample && v219)
      {
        if (v199)
        {
          v202 = 1;
          v171 = v181;
          *v222 = *v221;
          v167 = v189;
          v172 = v191;
          v173 = v188;
          v170 = v190;
          v168 = v183;
          v169 = v182;
          v165 = v185;
          v166 = v184;
          v174 = v187;
          v175 = v186;
          v179 = v198;
          v180 = v197;
          v177 = v195;
          v178 = v196;
          v176 = v192;
          v163 = v194;
          v164 = v193;
        }

        if (v32 <= 2.22044605e-16 || v34 <= 2.22044605e-16)
        {
          v92 = 0.0;
        }

        else
        {
          v92 = sqrt(v34 / v32);
        }

        v187 = v92;
        v199 = 1;
        *v221 = *v223;
        v197 = v78;
        v198 = v84;
        v195 = v83;
        v196 = v77;
        v192 = v82;
        v193 = v81;
        v194 = v80;
        v181 = *&v33;
        v182 = v32;
        v188 = v214;
        v189 = v162;
        v190 = v213;
        v191 = *(&v227 + 1);
        v183 = *&v34;
        v184 = v35;
        v185 = *&v209;
        v186 = *&v201;
      }

      else if (v202)
      {
        v93 = NextBandwidthSample;
        memcpy(__dst, __src, 0xE0uLL);
        v94 = CMBaseObjectGetDerivedStorage(v160);
        v95 = fnhp_createBandwidthPredictionCacheKey(__dst, v212);
        v96 = malloc_type_calloc(1uLL, 0xA0uLL, 0x10200408655B868uLL);
        if (v95)
        {
          if (v96)
          {
            *v96 = v171;
            *(v96 + 1) = v169;
            *(v96 + 2) = v173;
            *(v96 + 3) = v167;
            *(v96 + 4) = v172;
            *(v96 + 5) = v170;
            *(v96 + 6) = v168;
            *(v96 + 7) = v166;
            *(v96 + 8) = v165;
            *(v96 + 9) = v175;
            *(v96 + 10) = v174;
            *(v96 + 11) = v179;
            *(v96 + 12) = v180;
            *(v96 + 13) = v178;
            *(v96 + 14) = v177;
            *(v96 + 120) = *v222;
            *(v96 + 17) = v176;
            *(v96 + 18) = v164;
            *(v96 + 19) = v163;
            CFDictionarySetValue(*(v94 + 16), v95, v96);
            v97 = 0;
          }

          else
          {
            OUTLINED_FUNCTION_0_27();
            v97 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v109, 0xFFFFCE0EuLL, "<<<< FigNetworkHistory >>>>", 0x7F9, v110, v111, v112, v149);
          }

          CFRelease(v95);
        }

        else
        {
          OUTLINED_FUNCTION_0_27();
          v97 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v105, 0xFFFFCE0EuLL, "<<<< FigNetworkHistory >>>>", 0x7F8, v106, v107, v108, v149);
        }

        if (v97)
        {
          goto LABEL_93;
        }

        NextBandwidthSample = v93;
        v202 = 1;
      }

      else
      {
        v202 = 0;
      }
    }

    if (v86 < 1)
    {
      v81 = v215;
    }

    else
    {
      v98 = v89 * v86;
      v32 = v32 + v98;
      v99 = (8 * v85) / (v86 / 1000000000.0);
      v100 = v99 - v33;
      if (v32 <= 2.22044605e-16)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = v33 + v98 / v32 * (v99 - v33);
      }

      if (v200)
      {
        v101 = NextBandwidthSample;
        v102 = v200((8 * v85) / (v86 / 1000000000.0), *&v201);
        NextBandwidthSample = v101;
        v103 = v209 + v98 / v32 * (v102 - v209);
        if (v32 <= 2.22044605e-16)
        {
          v103 = 0.0;
        }

        v104 = v98 * (v102 - v209);
        v209 = v103;
        v35 = v35 + v104 * (v102 - v103);
      }

      v34 = v34 + v100 * v98 * (v99 - v33);
      v213 += v85;
      v81 = v215;
      v214 += v86;
    }

    --v219;
    v77 = v216;
    v78 = v217;
    v79 = v218;
    v80 = v87;
    v82 = v86;
    v83 = v85;
  }

  while (NextBandwidthSample);
  if (__src[4])
  {
    v33 = v153 / (v151 / 1000000000.0 + v153 / v33);
  }

  v113 = 0.0;
  v114 = v32 <= 2.22044605e-16 || v34 <= 2.22044605e-16;
  v115 = 0.0;
  if (!v114)
  {
    v115 = sqrt(v34 / v32);
  }

  if (v32 > 2.22044605e-16 && v35 > 2.22044605e-16)
  {
    v113 = sqrt(v35 / v32);
  }

  v118 = __src[7];
  v117 = __src[8];
  v120 = v118 > 0 && v118 <= v213;
  if (v118)
  {
    v121 = v120;
  }

  else
  {
    v121 = v117 == 0;
  }

  if (v117 < 1)
  {
    if (!v121)
    {
      goto LABEL_93;
    }
  }

  else
  {
    v122 = v117 <= v214 - v154 || v121;
    if ((v122 & 1) == 0)
    {
      goto LABEL_93;
    }
  }

  if (a29)
  {
    *a29 = llround(v33);
  }

  if (a30)
  {
    *a30 = v115;
  }

  if (a31)
  {
    *a31 = v113;
  }

  if (a32)
  {
    *a32 = v214;
  }

LABEL_93:
  FigSimpleMutexUnlock(*(v210 + 8));
  OUTLINED_FUNCTION_20_0();
}

void fnhp_timeWeightedConstantLatencyPredictionAlgorithm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v16 = 0;
  v13 = *(CMBaseObjectGetDerivedStorage(*DerivedStorage) + 24);
  memcpy(__dst, a5, sizeof(__dst));
  fnhp_medianAlgorithmForLatency(a1, a4, __dst, v13, &v16, (a6 + 40), 0);
  v14 = v16;
  *(a6 + 32) = v16;
  memcpy(__dst, a5, sizeof(__dst));
  fnhp_constantLatencyTimeWeightedAlgorithmForBandwidth(a1, v14, a4, __dst, a2, a3, a6, a6 + 8, a6 + 16, a6 + 48);
}

size_t FigNetworkHistoryEndImmutability_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFBABEuLL, "<<<< FigNetworkHistory >>>>", 0x207, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

BOOL FigNetworkHistoryRequestBecameActive_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFCE0EuLL, "<<<< FigNetworkHistory >>>>", 0x2BC, v8, a7, a8, v12);
  *a1 = v10;
  return v10 == 0;
}

void *FigNetworkHistoryRequestBecameActive_cold_3(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result[7] = a2;
  *result = a3;
  v4 = *(a4 + 144);
  if (v4 >= a3)
  {
    v4 = a3;
  }

  *(a4 + 144) = v4;
  result[11] = 0;
  v5 = *(a4 + 168);
  result[12] = v5;
  *v5 = result;
  *(a4 + 168) = result + 11;
  ++*(a4 + 176);
  return result;
}

void FigNetworkHistoryGetGlobal_cold_2()
{
  v20 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v1 = Mutable;
    v2 = *MEMORY[0x1E695E4C0];
    CFDictionarySetValue(Mutable, @"NetworkHistoryCreateOption_EnableLogging", *MEMORY[0x1E695E4C0]);
    CFDictionarySetValue(v1, @"NetworkHistoryCreateOption_ContributesToGlobalHistory", v2);
    FigCFDictionarySetInt64(v1, @"NetworkHistoryCreateOption_MaxWindowSize", 600000000000, v3, v4, v5, v6, v7);
    FigCFDictionarySetInt64(v1, @"NetworkHistoryCreateOption_BytesReceivedMaxResolution", 5000000000, v8, v9, v10, v11, v12);
    AllocatorForPermanentAllocations = FigGetAllocatorForPermanentAllocations();
    FigNetworkHistoryCreate(AllocatorForPermanentAllocations, v1, &v20, v14, v15, v16, v17, v18);
    CFRelease(v1);
    v19 = v20;
  }

  else
  {
    v19 = 0;
  }

  gNetworkHistory = v19;
}

size_t fnh_runOrEnqueueCommand_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFCE0EuLL, "<<<< FigNetworkHistory >>>>", 0x1E5, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoricalPredictorCreate_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFCE0EuLL, "<<<< FigNetworkHistory >>>>", 0xD15, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoricalPredictorCreate_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFCE0EuLL, "<<<< FigNetworkHistory >>>>", 0xD12, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoricalPredictorCreate_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFBAB9uLL, "<<<< FigNetworkHistory >>>>", 0xD08, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryCreate_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFCE0EuLL, "<<<< FigNetworkHistory >>>>", 0x71F, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryCreate_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFCE0EuLL, "<<<< FigNetworkHistory >>>>", 0x71C, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryCreate_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFBABEuLL, "<<<< FigNetworkHistory >>>>", 0x712, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

void FigNetworkHistoryCopySerializedRecordData_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  OUTLINED_FUNCTION_11_1();
  *a4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFCE0EuLL, "<<<< FigNetworkHistory >>>>", 0xE64, v8, v9, v10, v11);
  FigSimpleMutexUnlock(*v6);

  CFAllocatorDeallocate(v5, v4);
}

size_t FigNetworkHistoryCopySerializedRecordData_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFBABEuLL, "<<<< FigNetworkHistory >>>>", 0xE3D, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t fnh_createBytesReceivedEntry_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFCE0EuLL, "<<<< FigNetworkHistory >>>>", 0x254, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

void __FigTransportConnectionXPCSetCurrentConnection_block_invoke(uint64_t a1, uint64_t a2, OpaqueCMBlockBuffer *a3)
{
  v5 = *(a1 + 32);
  xdict = 0;
  FigSimpleMutexLock(*(v5 + 24));
  v6 = *(v5 + 8);
  if (v6)
  {
    v7 = xpc_retain(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v5 + 16);
  if (v8)
  {
    v9 = _Block_copy(v8);
  }

  else
  {
    v9 = 0;
  }

  FigSimpleMutexUnlock(*(v5 + 24));
  if (v7)
  {
    if (!FigXPCCreateBasicMessage(0x656D7367u, 0, &xdict))
    {
      xpc_dictionary_set_int64(xdict, kNeroTransportConnectionEventHandler_Type, a2);
      if (!FigXPCMessageSetBlockBuffer(xdict, kNeroTransportConnectionEventHandler_BBuf, a3))
      {
        xpc_connection_send_message(v7, xdict);
      }
    }
  }

  if (v9)
  {
    v9[2](v9, a2, a3);
    _Block_release(v9);
  }

  FigXPCRelease(v7);
  FigXPCRelease(xdict);
}

uint64_t ntcxpc_handleClientMessage(void *a1, void *a2)
{
  theBuffer[16] = *MEMORY[0x1E69E9840];
  v24 = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v24);
  if (OpCode)
  {
    return OpCode;
  }

  if (v24 != 1701736821)
  {
    if (v24 != 1718383464)
    {
      if (v24 == 1768843636)
      {
        if (_MergedGlobals_17 != -1)
        {
          dispatch_once(&_MergedGlobals_17, &__block_literal_global_15);
        }

        FigSimpleMutexLock(qword_1ED4CC590);
        v5 = qword_1ED4CC580;
        if (qword_1ED4CC580)
        {
          qword_1ED4CC580 = 0;
          xpc_release(v5);
        }

        qword_1ED4CC580 = xpc_retain(a1);
        dword_1ED4CC598 = xpc_connection_get_pid(a1);
        v26 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v26, &type);
        v7 = v26;
        v8 = type;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v9 = v7;
        }

        else
        {
          v9 = v7 & 0xFFFFFFFE;
        }

        if (v9)
        {
          *length = 136315394;
          *&length[4] = "ntcxpc_handleInit";
          v28 = 1024;
          v29 = dword_1ED4CC598;
          v10 = _os_log_send_and_compose_impl(v9, 0, theBuffer, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v8, "<<<< NeroTransportConnectionXPCServer >>>> %s: connected from client pid %d", length, 18);
          LOBYTE(v7) = v26;
        }

        else
        {
          v10 = 0;
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1, 1, v10, v10 != theBuffer, v7);
        FigSimpleMutexUnlock(qword_1ED4CC590);
      }

      return 0;
    }

    if (_MergedGlobals_17 != -1)
    {
      dispatch_once(&_MergedGlobals_17, &__block_literal_global_15);
    }

    int64 = xpc_dictionary_get_int64(a2, "flushPendingPackage");
    FigSimpleMutexLock(qword_1ED4CC590);
    if (qword_1ED4CC578)
    {
      v12 = FigCFWeakReferenceHolderCopyReferencedObject(qword_1ED4CC578);
      FigSimpleMutexUnlock(qword_1ED4CC590);
      if (v12)
      {
        v13 = *(*(CMBaseObjectGetVTable(v12) + 16) + 40);
        if (v13)
        {
          v14 = v13(v12, int64);
        }

        else
        {
          v14 = 4294954514;
        }

LABEL_43:
        CFRelease(v12);
        return v14;
      }
    }

    else
    {
      FigSimpleMutexUnlock(qword_1ED4CC590);
    }

    return 4294955265;
  }

  if (_MergedGlobals_17 != -1)
  {
    dispatch_once(&_MergedGlobals_17, &__block_literal_global_15);
  }

  theBuffer[0] = 0;
  *length = 0;
  data = xpc_dictionary_get_data(a2, "enqueuePkgHeader", length);
  if (!data)
  {
    goto LABEL_46;
  }

  v16 = data;
  BlockBufferData = FigXPCMessageCreateBlockBufferData(*MEMORY[0x1E695E480], a2, "enqueuePackage", theBuffer);
  if (BlockBufferData)
  {
    v14 = BlockBufferData;
    v12 = 0;
    goto LABEL_40;
  }

  v18 = *length;
  if (*length < 8uLL || (v19 = *v16, CMBlockBufferGetDataLength(theBuffer[0]) + v18 != v19) || *v16 < 8u)
  {
LABEL_46:
    v12 = 0;
    v14 = 4294954516;
    goto LABEL_40;
  }

  v20 = xpc_dictionary_get_int64(a2, "enqueuePriority");
  FigSimpleMutexLock(qword_1ED4CC590);
  if (!qword_1ED4CC578)
  {
    FigSimpleMutexUnlock(qword_1ED4CC590);
    v12 = 0;
    goto LABEL_39;
  }

  v12 = FigCFWeakReferenceHolderCopyReferencedObject(qword_1ED4CC578);
  FigSimpleMutexUnlock(qword_1ED4CC590);
  if (!v12)
  {
LABEL_39:
    v14 = 4294955265;
    goto LABEL_40;
  }

  v21 = theBuffer[0];
  v22 = *(*(CMBaseObjectGetVTable(v12) + 16) + 32);
  if (v22)
  {
    v14 = v22(v12, v16, v21, v20);
  }

  else
  {
    v14 = 4294954514;
  }

LABEL_40:
  if (theBuffer[0])
  {
    CFRelease(theBuffer[0]);
  }

  if (v12)
  {
    goto LABEL_43;
  }

  return v14;
}

uint64_t FigReadSchedulerExpediteRequest(dispatch_queue_t *a1, uint64_t a2, int a3)
{
  cf = 0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294949515;
    v20 = 3468;
LABEL_14:
    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v19, "<< FigReadScheduler >>", v20, v16, v17, v18, v21);
    goto LABEL_15;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294949515;
    v20 = 3469;
    goto LABEL_14;
  }

  v6 = CFGetAllocator(a1);
  v7 = rsBatch_Create(v6, &cf);
  if (v7)
  {
LABEL_15:
    v13 = v7;
    goto LABEL_8;
  }

  v9 = OUTLINED_FUNCTION_4_7(v7, v8, 0x14030ADEu);
  if (!v9)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294949516;
    v20 = 3477;
    goto LABEL_14;
  }

  v10 = v9;
  *v9 = CFRetain(a1);
  v10[1] = a2;
  v11 = cf;
  v12 = CFRetain(cf);
  v10[2] = v12;
  *(v12 + 13) = 1;
  dispatch_group_enter(*(v12 + 5));
  dispatch_async_f(a1[8], v10, readScheduler_HandleExpediteSingleRequestJob);
  if (a3)
  {
    dispatch_group_wait(v11[5], 0xFFFFFFFFFFFFFFFFLL);
  }

  v13 = 0;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t FigReadSchedulerCancelAllClientRequests(dispatch_queue_t *a1, uint64_t a2, int a3)
{
  cf = 0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294949515;
    v20 = 3526;
LABEL_14:
    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v19, "<< FigReadScheduler >>", v20, v16, v17, v18, v21);
    goto LABEL_15;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294949515;
    v20 = 3527;
    goto LABEL_14;
  }

  v6 = CFGetAllocator(a1);
  v7 = rsBatch_Create(v6, &cf);
  if (v7)
  {
LABEL_15:
    v13 = v7;
    goto LABEL_8;
  }

  v9 = OUTLINED_FUNCTION_4_7(v7, v8, 0x62D53EE8u);
  if (!v9)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294949516;
    v20 = 3535;
    goto LABEL_14;
  }

  v10 = v9;
  *v9 = CFRetain(a1);
  v11 = cf;
  v12 = CFRetain(cf);
  v10[1] = v12;
  v10[2] = a2;
  *(v12 + 13) = 1;
  dispatch_group_enter(*(v12 + 5));
  dispatch_async_f(a1[8], v10, readScheduler_HandleCancelAllClientRequestsJob);
  if (a3)
  {
    dispatch_group_wait(v11[5], 0xFFFFFFFFFFFFFFFFLL);
  }

  v13 = 0;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t FigReadSchedulerExpediteAllClientRequests(dispatch_queue_t *a1, uint64_t a2, int a3)
{
  cf = 0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294949515;
    v20 = 3562;
LABEL_14:
    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v19, "<< FigReadScheduler >>", v20, v16, v17, v18, v21);
    goto LABEL_15;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294949515;
    v20 = 3563;
    goto LABEL_14;
  }

  v6 = CFGetAllocator(a1);
  v7 = rsBatch_Create(v6, &cf);
  if (v7)
  {
LABEL_15:
    v13 = v7;
    goto LABEL_8;
  }

  v9 = OUTLINED_FUNCTION_4_7(v7, v8, 0x62D53EE8u);
  if (!v9)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 4294949516;
    v20 = 3571;
    goto LABEL_14;
  }

  v10 = v9;
  *v9 = CFRetain(a1);
  v11 = cf;
  v12 = CFRetain(cf);
  v10[1] = v12;
  v10[2] = a2;
  *(v12 + 13) = 1;
  dispatch_group_enter(*(v12 + 5));
  dispatch_async_f(a1[8], v10, readScheduler_HandleExpediteAllClientRequestsJob);
  if (a3)
  {
    dispatch_group_wait(v11[5], 0xFFFFFFFFFFFFFFFFLL);
  }

  v13 = 0;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

void FigReadSchedulerCopyForByteStream_cold_3(const CMBlockBufferCustomBlockSource *a1, const void *a2, _DWORD *a3)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 0xFFFFBA8CuLL, "<< FigReadScheduler >>", a1, v7, v8, v9, v10);
  CFRelease(a2);
}

size_t FigReadSchedulerCopyForByteStream_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8CuLL, "<< FigReadScheduler >>", 0x242, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerCopyForByteStream_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8CuLL, "<< FigReadScheduler >>", 0xBF2, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerCopyForByteStream_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xBD9, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerCopyForByteStream_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xBD8, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerCreateBatch_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xC20, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerCreateBatch_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xC1F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

void rsBatch_Create_cold_2(const CMBlockBufferCustomBlockSource *a1, const void *a2, _DWORD *a3)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 0xFFFFBA8CuLL, "<< FigReadScheduler >>", a1, v7, v8, v9, v10);

  CFRelease(a2);
}

size_t rsBatch_Create_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8CuLL, "<< FigReadScheduler >>", 0x3C6, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchAddReadWithDeadline_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA89uLL, "<< FigReadScheduler >>", 0xC3B, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchAddReadWithDeadline_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xC41, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchAddReadWithDeadline_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xC3E, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchAddReadWithDeadline_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xC3D, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchAddReadWithDeadline_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xC3C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchAddReadWithDeadline_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xC37, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t rsRequest_Create_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8CuLL, "<< FigReadScheduler >>", 0x361, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchAddBackgroundRead_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA89uLL, "<< FigReadScheduler >>", 0xC5F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchAddBackgroundRead_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xC65, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchAddBackgroundRead_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xC62, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchAddBackgroundRead_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xC61, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchAddBackgroundRead_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xC60, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchAddBackgroundRead_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xC5B, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchCommit_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8CuLL, "<< FigReadScheduler >>", 0xC8B, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchCommit_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xC86, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchCommit_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xC7F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchCancel_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8CuLL, "<< FigReadScheduler >>", 0xCAC, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchCancel_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xCA7, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchCancel_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xCA0, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchExpedite_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8CuLL, "<< FigReadScheduler >>", 0xCD3, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchExpedite_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xCCE, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchExpedite_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xCC7, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t readScheduler_HandleCommittedBatchExpedite_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBA8CuLL, "<< FigReadScheduler >>", 0xB86, v10, v11, v12, a9);
}

size_t FigReadSchedulerBatchAwaitCompletion_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA87uLL, "<< FigReadScheduler >>", 0xD13, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchAwaitCompletion_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA88uLL, "<< FigReadScheduler >>", 0xD0C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerBatchAwaitCompletion_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xD06, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerGetNewClientID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xD2A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerGetNewClientID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xD29, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

void FigReadSchedulerRequestReadWithDeadline_cold_1(void *a1, CFTypeRef cf, void *a3)
{
  if (a1)
  {
    *a1 = a3[4];
  }

  CFRetain(cf);
  CFRetain(a3);
  v4 = OUTLINED_FUNCTION_3_7();

  dispatch_async_f(v4, v5, v6);
}

size_t FigReadSchedulerRequestReadWithDeadline_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xD3A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerRequestReadWithDeadline_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xD39, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerRequestReadWithDeadline_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xD38, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerRequestReadWithDeadline_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xD37, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerRequestBackgroundRead_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xD5D, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerRequestBackgroundRead_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xD5C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerRequestBackgroundRead_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xD5B, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerRequestBackgroundRead_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xD5A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerCancelRequest_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8CuLL, "<< FigReadScheduler >>", 0xD7B, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerCancelRequest_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xD76, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigReadSchedulerCancelRequest_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8BuLL, "<< FigReadScheduler >>", 0xD75, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

void readScheduler_IngestRequest_cold_2(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFBA8CuLL, "<< FigReadScheduler >>", 0x303, v5, v6, v7, v8);

  CFRelease(a1);
}

size_t readScheduler_IngestRequest_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBA8CuLL, "<< FigReadScheduler >>", 0x300, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

void figNTPClient_addressInfoCallBack(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, size_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (a4)
  {
    v14 = qword_1EAF1CDE0;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 0xFFFFC1FEuLL, "<<<< FigNTP >>>>", 0xD2, v9, a7, a8, a9);
  }

  else if (a1 && a6)
  {
    if ((a2 & 2) != 0 && *(a6 + 1) == 2)
    {
      UInt32 = FigCFNumberCreateUInt32(*MEMORY[0x1E695E480], *(a6 + 4));
      CFArrayAppendValue(*(a8 + 72), UInt32);
      if (UInt32)
      {
        CFRelease(UInt32);
      }

      *(a8 + 64) = 1;
    }

    if ((a2 & 1) == 0)
    {
      v13 = *(a8 + 48);

      dispatch_semaphore_signal(v13);
    }
  }
}

size_t FigSandboxRegistrationRemoteCreate(uint64_t a1, const char *a2, const void *a3, const void *a4, NSObject *a5, void *a6)
{
  v12 = a1;
  xdict = 0;
  *v40 = 0;
  v13 = *MEMORY[0x1E695E480];
  if (qword_1ED4CC5E8 != -1)
  {
    OUTLINED_FUNCTION_0_29();
    dispatch_once_f(v31, v32, v33);
  }

  Instance = _CFRuntimeCreateInstance();
  v15 = Instance;
  if (!Instance)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v37 = v6;
    v38 = 185;
LABEL_20:
    v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBBA3uLL, "<<<< SandboxRegRemote(XPC) >>>>", v38, v37, v35, v36, xdict, *v40);
LABEL_21:
    v29 = v16;
    goto LABEL_14;
  }

  v16 = remoteSandboxReg_copyRemoteClientForProcess(v12, (Instance + 56));
  if (v16)
  {
    goto LABEL_21;
  }

  v15[2] = CFRetain(a3);
  v17 = CFRetain(a4);
  v15[3] = a5;
  v15[4] = v17;
  dispatch_retain(a5);
  v16 = FigXPCCreateBasicMessage(0x63726538u, 0, v40);
  if (v16)
  {
    goto LABEL_21;
  }

  v18 = strlen(a2);
  v19 = CFDataCreate(v13, a2, v18 + 1);
  if (!v19)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v37 = v6;
    v38 = 200;
    goto LABEL_20;
  }

  v20 = v19;
  v21 = FigXPCMessageSetCFData(*v40, "ExtensionTokenData", v19);
  if (v21)
  {
    goto LABEL_17;
  }

  if (FigIsItOKToLogURLs(v21, v22))
  {
    FigXPCMessageSetCFString(*v40, "ExtensionPath", a3);
  }

  v21 = FigXPCRemoteClientSendSyncMessageCreatingReply(v15[7], *v40, &xdict);
  if (v21)
  {
LABEL_17:
    v29 = v21;
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(xdict, ".objectID");
    v29 = FigXPCRemoteClientAssociateObject(v15[7], v15, uint64, v24, v25, v26, v27, v28, xdict);
    if (!v29)
    {
      v15[5] = uint64;
      *a6 = v15;
      v15 = 0;
    }
  }

  CFRelease(v20);
LABEL_14:
  FigXPCRelease(*v40);
  FigXPCRelease(xdict);
  if (v15)
  {
    CFRelease(v15);
  }

  return v29;
}

uint64_t remoteSandboxReg_copyRemoteClientForProcess(int a1, void *a2)
{
  if (a1 == 2)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __remoteSandboxReg_copyRemoteClientForProcess_block_invoke_2;
    v6[3] = &__block_descriptor_tmp_11_0;
    v7 = 2;
    if (qword_1ED4CC608 != -1)
    {
      dispatch_once(&qword_1ED4CC608, v6);
    }

    result = dword_1ED4CC5E4;
    if (!dword_1ED4CC5E4)
    {
      v4 = qword_1ED4CC610;
      if (qword_1ED4CC610)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else if (a1 == 1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __remoteSandboxReg_copyRemoteClientForProcess_block_invoke;
    block[3] = &__block_descriptor_tmp_10;
    v9 = 1;
    if (qword_1ED4CC5F8 != -1)
    {
      dispatch_once(&qword_1ED4CC5F8, block);
    }

    result = _MergedGlobals_19;
    if (!_MergedGlobals_19)
    {
      v4 = qword_1ED4CC600;
      if (qword_1ED4CC600)
      {
LABEL_7:
        v5 = CFRetain(v4);
LABEL_13:
        result = 0;
        *a2 = v5;
        return result;
      }

LABEL_12:
      v5 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    return 0;
  }

  return result;
}

size_t FigSandboxRegistrationRemoteGetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBBA4uLL, "<<<< SandboxRegRemote(XPC) >>>>", 0xED, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigSandboxRegistrationRemoteGetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBBA4uLL, "<<<< SandboxRegRemote(XPC) >>>>", 0xEC, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigSandboxRegistrationRemoteGetObjectID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBBA4uLL, "<<<< SandboxRegRemote(XPC) >>>>", 0xEB, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalSphericalBridge_ParseV2SphericalBox(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a4)
  {
    return 0;
  }

  v9[0] = a2;
  v9[1] = a3;
  v10 = *a4;
  v11 = a7;
  if (!a6)
  {
    return 0;
  }

  memset(v12, 0, sizeof(v12));
  result = FigAtomStreamInitWithMemoryBlockAndReporter(a5, a6, 0, 0, a7, v12);
  if (!result)
  {
    result = parseSphericalChildBoxes(v12, parseSphericalVideoBox_atomDispatch, v9);
    if (!result)
    {
      *a4 = v10;
    }
  }

  return result;
}

uint64_t FigExternalSphericalBridge_ParseV2StereoModeBox(uint64_t a1, CMBlockBufferRef *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v19 = a2;
    v20 = a3;
    v21 = *a4;
    v22 = 0;
    if (a6 == 5)
    {
      v10 = 0;
      v11 = 1;
      v12 = 1;
      switch(*(a5 + 4))
      {
        case 0:
          goto LABEL_14;
        case 1:
          goto LABEL_7;
        case 2:
          v11 = 0;
          goto LABEL_6;
        case 4:
          v11 = 0;
          v12 = 0;
LABEL_6:
          v10 = 1;
LABEL_7:
          v13 = *MEMORY[0x1E695E4D0];
          svReader_appendKeyAndValue(&v19, @"HasLeftStereoEyeView", *MEMORY[0x1E695E4D0]);
          svReader_appendKeyAndValue(&v19, @"HasRightStereoEyeView", v13);
          if (v10)
          {
            if (v11)
            {
              goto LABEL_12;
            }

            v14 = kFigFormatDescriptionViewPackingKind_SideBySide;
          }

          else
          {
            v14 = kFigFormatDescriptionViewPackingKind_OverUnder;
          }

          svReader_appendKeyAndValue(&v19, @"ViewPackingKind", *v14);
LABEL_12:
          if ((v12 & 1) == 0)
          {
            svReader_appendKeyAndValue(&v19, @"HasEyeViewsReversed", v13);
          }

LABEL_14:
          *a4 = v21;
          break;
        default:
          strcpy(v23, "The spherical stereo mode box contains an unrecognized value.");
          emitter = fig_log_get_emitter("com.apple.coremedia", "");
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0, "<<<< SphericalBridge >>>>", 0x1B6, v7, v17, v18, v19, v20);
          figBridge_ReportParsingFailureMessage(a7, v23);
          goto LABEL_14;
      }
    }
  }

  return 0;
}

void figBridge_ReportParsingFailureMessage(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v6 = Mutable;
      v7 = CFStringCreateMutable(v4, 0);
      if (v7)
      {
        v8 = v7;
        CFStringAppendFormat(v7, 0, @" %s.", a2);
        FigCFDictionarySetInt64(v6, @"MessageType", 4, v9, v10, v11, v12, v13);
        CFDictionarySetValue(v6, @"DiagnosticInformation", v8);
        FigCFDictionarySetInt32(v6, @"AnalysisType", 1836019574, v14, v15, v16, v17, v18);
        FigAssetAnalysisReporterAddMessage(a1, v6);
        CFRelease(v8);
      }

      CFRelease(v6);
    }
  }
}

uint64_t parseSphericalHeaderBox(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_18(a1, *MEMORY[0x1E69E9840], v10, v12, SHIDWORD(v12));
  if (v4)
  {
    return v4;
  }

  if (v11 > 4)
  {
    return 0;
  }

  strcpy(v13, "Invalid size of spherical header box.");
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  v5 = 4294954584;
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<<< SphericalBridge >>>>", 0x13B, v2, v8, v9, v11);
  figBridge_ReportParsingFailureMessage(*(a2 + 24), v13);
  return v5;
}

uint64_t parseSphericalProjectionBox(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  result = FigAtomStreamGetCurrentAtomTypeAndDataLength(a1, &v7, &v6);
  if (!result)
  {
    result = FigAtomStreamInitWithParent(a1, 0, v5);
    if (!result)
    {
      return parseSphericalChildBoxes(v5, parseSphericalProjectionBox_atomDispatch, a2);
    }
  }

  return result;
}

uint64_t parseProjectionHeaderBox(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_18(a1, *MEMORY[0x1E69E9840], v10, v12, SHIDWORD(v12));
  if (v4)
  {
    return v4;
  }

  if (v11 == 16)
  {
    return 0;
  }

  strcpy(v13, "Unrecognized size of spherical projection header box.");
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  v5 = 4294954584;
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<<< SphericalBridge >>>>", 0xDB, v2, v8, v9, v11);
  figBridge_ReportParsingFailureMessage(*(a2 + 24), v13);
  return v5;
}

uint64_t parseEquirectangularProjectionBox(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength(a1, &v21, &v20);
  if (CurrentAtomTypeAndDataLength)
  {
    return CurrentAtomTypeAndDataLength;
  }

  if (v20 != 20)
  {
    strcpy(v22, "Unrecognized size of spherical equirectangular projection box.");
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v7 = 4294954584;
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<<< SphericalBridge >>>>", 0xF5, v2, v10, v11, v15);
    figBridge_ReportParsingFailureMessage(a2[3], v22);
    v12 = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 0xFFFFCE58uLL, "<<<< SphericalBridge >>>>", 0xF7, v2, v13, v14, v16);
    return v7;
  }

  CurrentAtomTypeAndDataLength = FigAtomStreamReadCurrentAtomData(a1, 0, 20, &v17);
  if (CurrentAtomTypeAndDataLength)
  {
    return CurrentAtomTypeAndDataLength;
  }

  if (bswap32(v19) + bswap32(HIDWORD(v18)) < 0x7FFFFFFF)
  {
    v6 = kFigFormatDescriptionProjectionKind_Equirectangular;
  }

  else
  {
    v6 = kFigFormatDescriptionProjectionKind_HalfEquirectangular;
  }

  svReader_appendKeyAndValue(a2, @"ProjectionKind", *v6);
  return 0;
}

size_t FigExternalSphericalBridge_ParseVersion1Properties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< SphericalBridge >>>>", 0x1EE, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigExternalSphericalBridge_ParseVersion1Properties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "<<<< SphericalBridge >>>>", 0x1E9, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigExternalSphericalBridge_ParseVersion1Properties_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< SphericalBridge >>>>", 0x1E0, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigExternalSphericalBridge_ParseVersion1Properties_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "<<<< SphericalBridge >>>>", 0x1DF, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t parseSphericalChildBoxes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "<<<< SphericalBridge >>>>", 0xAD, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCaptionDataCreateMutableCopy_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< FigMutableCaptionData >>>>", 0x30C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCaptionDataCreateMutableCopy_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< FigMutableCaptionData >>>>", 0x328, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCaptionDataCreateMutableCopy_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< FigMutableCaptionData >>>>", 0x2E2, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCaptionDataCreateMutableCopy_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x2DF, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCaptionDataCreateMutableCopy_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x2DE, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_createStylePropertyRunIDKey_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE0EuLL, "<<<< FigMutableCaptionData >>>>", 0xEA, v10, v11, v12, a9);
}

size_t FigCaptionDataCreateMutable_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< FigMutableCaptionData >>>>", 0x356, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCaptionDataCreateMutable_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< FigMutableCaptionData >>>>", 0x353, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCaptionDataCreateMutable_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< FigMutableCaptionData >>>>", 0x350, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigCaptionDataCreateMutable_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x344, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_Equal_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x157, v10, v11, v12, a9);
}

size_t fmcd_Equal_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x158, v10, v11, v12, a9);
}

size_t fmcd_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< FigMutableCaptionData >>>>", 0x11C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< FigMutableCaptionData >>>>", 0x10C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_CopyProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< FigMutableCaptionData >>>>", 0x193, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_CopyProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< FigMutableCaptionData >>>>", 0x199, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_CopyProperty_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x180, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_CopyProperty_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x17F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1BA, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1B8, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1C3, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1C2, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1C9, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1CA, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1D0, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1CF, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_9(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1DA, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_10(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1D6, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_11(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1D5, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_12(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1DF, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_13(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1DE, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_14(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1E4, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_15(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1E3, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_16(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1E8, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_17(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1EE, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_18(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1ED, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_19(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1F4, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_20(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1F3, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_21(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1F9, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_22(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1F8, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_23(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1FE, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_24(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1FD, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_25(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x203, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_26(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x202, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_27(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x207, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_28(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x206, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_29(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1B4, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetProperty_cold_30(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x1B3, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_GetCaptionText_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE10uLL, "<<<< FigMutableCaptionData >>>>", 0x131, v10, v11, v12, a9);
}

size_t fmcd_GetCaptionText_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x130, v10, v11, v12, a9);
}

size_t fmcd_SetCaptionText_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< FigMutableCaptionData >>>>", 0x145, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetCaptionText_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x142, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_CopyStylePropertyAtIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x23B, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_CopyStylePropertyAtIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x239, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetStylePropertyInRange_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x275, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetStylePropertyInRange_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x277, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetStylePropertyInRange_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x273, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetStylePropertyInRange_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x272, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_SetStylePropertyInRange_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x271, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_RemoveStylePropertyInRange_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x298, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_RemoveStylePropertyInRange_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x29A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t fmcd_RemoveStylePropertyInRange_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< FigMutableCaptionData >>>>", 0x296, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

void remoteFigVirtualCaptureCard_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v12 = 0;
  FigXPCRemoteClientDisassociateObject(gFigVirtualCaptureCardRemoteClient, *DerivedStorage, v2, v3, v4, v5, v6, v7, v11);
  if (*(DerivedStorage + 9))
  {
    v8 = 0;
  }

  else
  {
    v9 = FigXPCCreateBasicMessage(0x64697370u, *DerivedStorage, &v12);
    v8 = v12;
    if (!v9)
    {
      FigXPCRemoteClientSendAsyncMessage(gFigVirtualCaptureCardRemoteClient, v12);
      v8 = v12;
    }
  }

  FigXPCRelease(v8);
  OUTLINED_FUNCTION_1_19(gFigVirtualCaptureCardRemoteClient, v10, "remoteFigVirtualCaptureCard_Finalize");
}

size_t remoteFigVirtualCaptureCard_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = 0;
  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v18 = 180;
LABEL_8:
    ObjectID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 0xFFFFBCC6uLL, "<<<< FigVirtualCaptureCardRemoteXPC >>>>", v18, v15, v16, v17, v19);
    goto LABEL_5;
  }

  if (!a4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v18 = 181;
    goto LABEL_8;
  }

  *a4 = 0;
  ObjectID = remoteVirtualCaptureCardClient_GetObjectID(a1, &v20);
  if (!ObjectID)
  {
    ObjectID = FigXPCSendStdCopyPropertyMessage(gFigVirtualCaptureCardRemoteClient, v20, a2, a4, v8, v9, v10, v11);
  }

LABEL_5:
  v12 = ObjectID;
  OUTLINED_FUNCTION_1_19(gFigVirtualCaptureCardRemoteClient, v7, "remoteFigVirtualCaptureCard_CopyProperty");
  return v12;
}

size_t remoteFigVirtualCaptureCard_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  if (a2)
  {
    ObjectID = remoteVirtualCaptureCardClient_GetObjectID(a1, &v17);
    if (!ObjectID)
    {
      ObjectID = FigXPCSendStdSetPropertyMessage(gFigVirtualCaptureCardRemoteClient, v17, a2, a3, v7, v8, v9, v10);
    }
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    ObjectID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBCC6uLL, "<<<< FigVirtualCaptureCardRemoteXPC >>>>", 0xD0, v3, v14, v15, v16);
  }

  v11 = ObjectID;
  FigXPCRemoteClientKillServerOnTimeout();
  return v11;
}

uint64_t remoteFigVirtualCaptureCard_showSystemUserInterface(uint64_t a1)
{
  v5 = 0;
  v6 = 0;
  ObjectID = remoteVirtualCaptureCardClient_GetObjectID(a1, &v6);
  if (!ObjectID)
  {
    ObjectID = FigXPCCreateBasicMessage(0x73686F77u, v6, &v5);
    if (!ObjectID)
    {
      ObjectID = FigXPCRemoteClientSendSyncMessage(gFigVirtualCaptureCardRemoteClient, v5);
    }
  }

  v3 = ObjectID;
  OUTLINED_FUNCTION_1_19(gFigVirtualCaptureCardRemoteClient, v2, "remoteFigVirtualCaptureCard_showSystemUserInterface");
  FigXPCRelease(v5);
  return v3;
}

size_t remoteFigVirtualCaptureCard_reserveForCaptureToFile(uint64_t a1, const __CFURL *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  xdict = 0;
  v12 = 0;
  ObjectID = remoteVirtualCaptureCardClient_GetObjectID(a1, &v12);
  if (!ObjectID)
  {
    ObjectID = FigXPCCreateBasicMessage(0x72657376u, v12, &xdict);
    if (!ObjectID)
    {
      if (CFURLGetFileSystemRepresentation(a2, 1u, buffer, 1024))
      {
        xpc_dictionary_set_string(xdict, "FileURL", buffer);
        ObjectID = FigXPCRemoteClientSendSyncMessage(gFigVirtualCaptureCardRemoteClient, xdict);
      }

      else
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        ObjectID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFBCBEuLL, "<<<< FigVirtualCaptureCardRemoteXPC >>>>", 0x100, v5, v6, v7, v10);
      }
    }
  }

  v8 = ObjectID;
  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease(xdict);
  return v8;
}

uint64_t remoteFigVirtualCaptureCard_saveCapture(uint64_t a1)
{
  v5 = 0;
  v6 = 0;
  ObjectID = remoteVirtualCaptureCardClient_GetObjectID(a1, &v6);
  if (!ObjectID)
  {
    ObjectID = FigXPCCreateBasicMessage(0x73617665u, v6, &v5);
    if (!ObjectID)
    {
      ObjectID = FigXPCRemoteClientSendSyncMessage(gFigVirtualCaptureCardRemoteClient, v5);
    }
  }

  v3 = ObjectID;
  OUTLINED_FUNCTION_1_19(gFigVirtualCaptureCardRemoteClient, v2, "remoteFigVirtualCaptureCard_saveCapture");
  FigXPCRelease(v5);
  return v3;
}

size_t remoteVirtualCaptureCardClient_EnsureClientEstablished_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFBCC3uLL, "<<<< FigVirtualCaptureCardRemoteXPC >>>>", 0x6F, v5, v6, v7, v9);
  *a2 = result;
  *(*a1 + 24) = result;
  return result;
}

size_t remoteVirtualCaptureCardClient_GetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0FuLL, "<<<< FigVirtualCaptureCardRemoteXPC >>>>", 0x43, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t remoteVirtualCaptureCardClient_GetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0FuLL, "<<<< FigVirtualCaptureCardRemoteXPC >>>>", 0x44, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t remoteVirtualCaptureCardClient_GetObjectID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0FuLL, "<<<< FigVirtualCaptureCardRemoteXPC >>>>", 0x42, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigAV1Bridge_parseav1c(char *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, _DWORD *a7, unsigned int *a8, CMBlockBufferRef *a9)
{
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v19 = 3127;
LABEL_28:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 0xFFFFCE58uLL, "<<<< AV1Bridge >>>>", v19, v16, v17, v18, a9);
  }

  if (!a3)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v19 = 3128;
    goto LABEL_28;
  }

  if (!a4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v19 = 3129;
    goto LABEL_28;
  }

  if (!a5)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v19 = 3130;
    goto LABEL_28;
  }

  if (!a8)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v19 = 3131;
    goto LABEL_28;
  }

  if (a7)
  {
    *a7 = 0;
  }

  v9 = *a1;
  if ((v9 & 0x80000000) == 0)
  {
    return 4294954582;
  }

  if ((v9 & 0x7F) != 1)
  {
    return 4294954579;
  }

  v10 = a1[1];
  *a8 = v10 >> 5;
  if (v10 > 0x5F)
  {
    return 4294954582;
  }

  a8[1] = a1[1] & 0x1F;
  a8[2] = a1[2] >> 7;
  v12 = a1[2];
  a8[4] = (v12 >> 4) & 1;
  a8[5] = (a1[2] >> 3) & 1;
  a8[6] = (a1[2] >> 2) & 1;
  a8[7] = a1[2] & 3;
  if ((v12 & 0x40) != 0)
  {
    v13 = 10;
  }

  else
  {
    v13 = 8;
  }

  if ((v12 & 0x20) != 0)
  {
    v14 = 12;
  }

  else
  {
    v14 = v13;
  }

  a8[3] = v14;
  if (a7)
  {
    *a7 |= 0x20u;
  }

  if (a2 >= 5)
  {
    return FigAV1Bridge_parseOBU((a1 + 4), a2 - 4, 0, a3, a4, a5, 0, 2, 1, a6, a7);
  }

  else
  {
    return 0;
  }
}

size_t FigAV1Bridge_parseOBU(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, _DWORD *a10, _DWORD *a11)
{
  v2449 = *MEMORY[0x1E69E9840];
  v2441 = 0u;
  v2442 = 0u;
  v2440 = 0u;
  if (a2 <= 2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v1323 = 2860;
LABEL_810:
    v29 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1319, 0xFFFFCE58uLL, "<<<< AV1Bridge >>>>", v1323, v1320, v1321, v1322, v1354);
    v91 = 0;
    v88 = 0;
    LODWORD(v87) = 0;
    goto LABEL_838;
  }

  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v1323 = 2861;
    goto LABEL_810;
  }

  v13 = a4;
  if (!a4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v1323 = 2862;
    goto LABEL_810;
  }

  if (!a5)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v1323 = 2863;
    goto LABEL_810;
  }

  if (!a6)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v1323 = 2864;
    goto LABEL_810;
  }

  v15 = a8;
  v2440 = 0uLL;
  *(&v2441 + 1) = a1;
  *&v2442 = a1;
  *(&v2442 + 1) = a1 + a2;
  LODWORD(v2441) = 0;
  v19 = OUTLINED_FUNCTION_5_7(a1, a2, a3, a4, a5, a6, a7, a8, v1354, v1432, v1512, v1592, v1673, v1754, v1833, v1915, v1991, v2066, v2141, v2217, v2291, a5, 0);
  bits = av1_get_bits(v19, v20);
  v29 = v2440;
  if (v2440)
  {
    return v29;
  }

  v30 = OUTLINED_FUNCTION_14_1(bits, v22, v23, v24, v25, v26, v27, v28, v1355, v1433, v1513, v1593, v1674, v1755, v1834, v1916, v1992, v2067, v2142, v2218, v2292, v2367);
  HIDWORD(v2293) = v30;
  v38 = OUTLINED_FUNCTION_5_7(v30, v31, v32, v33, v34, v35, v36, v37, v1356, v1434, v1514, v1594, v1675, v1756, v1835, v1917, v11, v2068, v2143, v2219, v2293, v2368, 0);
  v40 = av1_get_bits(v38, v39);
  v29 = v2440;
  if (v2440)
  {
    return v29;
  }

  v48 = v40;
  v49 = OUTLINED_FUNCTION_5_7(v40, v41, v42, v43, v44, v45, v46, v47, v1357, v1435, v1515, v1595, v1676, v1757, v1836, v1918, v1993, a3, v2144, v2220, v2294, v2369, 0);
  v51 = av1_get_bits(v49, v50);
  v29 = v2440;
  if (v2440)
  {
    return v29;
  }

  v59 = v51;
  v60 = OUTLINED_FUNCTION_5_7(v51, v52, v53, v54, v55, v56, v57, v58, v1358, v1436, v1516, v1596, v1677, v1758, v1837, v1919, v1994, v2069, v2145, v2221, v2295, v2370, 0);
  uleb128 = av1_get_bits(v60, v61);
  v29 = v2440;
  if (v2440)
  {
    return v29;
  }

  if (!v48)
  {
    v71 = 0;
    HIDWORD(v2146) = 0;
    if (v59)
    {
      goto LABEL_12;
    }

LABEL_15:
    v87 = (~v48 + a2);
    goto LABEL_16;
  }

  v70 = OUTLINED_FUNCTION_10_3(uleb128, v63, v64, v65, v66, v67, v68, v69, v1359, v1437, v1517, v1597, v1678, v1759, v1838, v1920, v1995, v2070, v2146, v2222, v2296, v2371);
  v71 = v70;
  v79 = OUTLINED_FUNCTION_8_4(v70, v72, v73, v74, v75, v76, v77, v78, v1360, v1438, v1518, v1598, v1679, v1760, v1839, v1921, v1996, v2071, v2147, v2223, v2297, v2372);
  HIDWORD(v2148) = v79;
  uleb128 = OUTLINED_FUNCTION_10_3(v79, v80, v81, v82, v83, v84, v85, v86, v1361, v1439, v1519, v1599, v1680, v1761, v1840, v1922, v1997, v2072, v2148, v2224, v2298, v2373);
  if (!v59)
  {
    goto LABEL_15;
  }

LABEL_12:
  uleb128 = av1_get_uleb128(&v2440);
  v29 = v2440;
  if (v2440)
  {
    return v29;
  }

  v87 = uleb128;
LABEL_16:
  v88 = 8 * (DWORD2(v2441) - v2442) - v2441;
  if ((v88 & 7) != 0)
  {
    return 4294954582;
  }

  v2225 = a7;
  v89 = v88 >> 3;
  if (v89 > a2)
  {
    return 4294954582;
  }

  if ((HIDWORD(v2296) - 3) <= 0xFFFFFFFD)
  {
    if (v48)
    {
      v90 = *(v13 + 6052);
      if (v90)
      {
        if ((((1 << (BYTE4(v2146) + 8)) | (1 << v71)) & ~v90) != 0)
        {
          v91 = 0;
          v29 = 0;
          goto LABEL_838;
        }
      }
    }
  }

  v91 = 0;
  v29 = 0;
  switch(HIDWORD(v2296))
  {
    case 1:
      v99 = 8 * (DWORD2(v2441) - v2442) - v2441;
      v100 = OUTLINED_FUNCTION_10_3(uleb128, v63, v64, v65, v66, v67, v68, v69, v1359, v1437, v1517, v1597, v1678, v1759, v1838, v1920, v1995, v2070, v2146, v2225, v2296, v2371);
      v108 = v2374;
      *v2374 = v100;
      if (v100 > 1)
      {
        v1766 = v13;
        v214 = 1118;
LABEL_72:
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_20();
        v221 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v217, 0xFFFFCE58uLL, "<<<< AV1Bridge >>>>", v214, v218, v219, v220, v1362);
        if (v221)
        {
          return v221;
        }

        goto LABEL_781;
      }

      v109 = v100;
      v110 = OUTLINED_FUNCTION_5_7(v100, v101, v102, v103, v104, v105, v106, v107, v1362, v1440, v1520, v1600, v1681, v1762, v1842, v1923, v1998, v2073, v2149, v2225, v2299, v2374, v2440);
      v112 = OUTLINED_FUNCTION_9_4(v110, v111);
      v108[235] = v112;
      v120 = OUTLINED_FUNCTION_5_7(v112, v113, v114, v115, v116, v117, v118, v119, v1363, v1441, v1521, v1601, v1682, v1763, v1843, v1924, v1999, v2074, v2150, v2226, v2300, v2375, v2440);
      v122 = av1_get_bits(v120, v121);
      v108[236] = v122;
      if (v122)
      {
        if (!a1)
        {
          return 4294954584;
        }

        v108[237] = 0;
        v108[242] = 0;
        v108[247] = 0;
        v108[10] = 1;
        v108[14] = 0;
        v130 = OUTLINED_FUNCTION_10_3(v122, v123, v124, v125, v126, v127, v128, v129, v1364, v1442, v1522, v1602, v1683, v13, v1844, v1925, v2000, v2075, v2151, v2227, v2301, v2376);
        v108[11] = v130;
        v138 = OUTLINED_FUNCTION_8_4(v130, v131, v132, v133, v134, v135, v136, v137, v1365, v1443, v1523, v1603, v1684, v1765, v1845, v1926, v2001, v2076, v2152, v2228, v2302, v2377);
        v108[12] = v138;
        *(v108 + 8) = 0;
        v108[15] = 0;
LABEL_681:
        v972 = OUTLINED_FUNCTION_14_1(v138, v139, v140, v141, v142, v143, v144, v145, v1366, v1444, v1524, v1604, v1685, v1766, v1846, v1927, v2002, v2077, v2153, v2225, v2303, v2374);
        v973 = v972 + 1;
        v108[248] = v972 + 1;
        v981 = OUTLINED_FUNCTION_14_1(v972, v974, v975, v976, v977, v978, v979, v980, v1405, v1485, v1565, v1646, v1726, v1806, v1888, v1964, v2039, v2114, v2190, v2264, v2340, v2413);
        v982 = v981 + 1;
        v108[249] = v981 + 1;
        v108[1] = OUTLINED_FUNCTION_28_0(v981, v983, v984, v985, v986, v987, v988, v989, v1406, v1486, v1566, v1647, v1727, v1807, v1889, v1965, v2040, v2115, v2191, v2265, v2341, v2414) + 1;
        v990 = av1_get_bits(&v2440, v982);
        v108[2] = v990 + 1;
        v998 = v108[236];
        if (v998)
        {
          v999 = 0;
          v1000 = 250;
        }

        else
        {
          v1001 = OUTLINED_FUNCTION_5_7(v990, v991, v992, v993, v994, v995, v996, v997, v1407, v1487, v1567, v1648, v1728, v1808, v1890, v1966, v2041, v2116, v2192, v2266, v2342, v2415, v2440);
          v990 = av1_get_bits(v1001, v1002);
          v108[250] = v990;
          if (!v990)
          {
            goto LABEL_686;
          }

          v1003 = OUTLINED_FUNCTION_9_4(&v2440, 4u);
          v108[251] = v1003 + 2;
          v990 = OUTLINED_FUNCTION_10_3(v1003, v1004, v1005, v1006, v1007, v1008, v1009, v1010, v1407, v1487, v1567, v1648, v1728, v1808, v1890, v1966, v2041, v2116, v2192, v2266, v2342, v2415);
          v999 = v973 + v990 + 3;
          v1000 = 252;
        }

        v108[v1000] = v999;
LABEL_686:
        v1011 = OUTLINED_FUNCTION_5_7(v990, v991, v992, v993, v994, v995, v996, v997, v1407, v1487, v1567, v1648, v1728, v1808, v1890, v1966, v2041, v2116, v2192, v2266, v2342, v2415, v2440);
        v1013 = av1_get_bits(v1011, v1012);
        v108[253] = v1013;
        v1021 = OUTLINED_FUNCTION_5_7(v1013, v1014, v1015, v1016, v1017, v1018, v1019, v1020, v1408, v1488, v1568, v1649, v1729, v1809, v1891, v1967, v2042, v2117, v2193, v2267, v2343, v2416, v2440);
        v1023 = av1_get_bits(v1021, v1022);
        v108[254] = v1023;
        v1031 = OUTLINED_FUNCTION_5_7(v1023, v1024, v1025, v1026, v1027, v1028, v1029, v1030, v1409, v1489, v1569, v1650, v1730, v1810, v1892, v1968, v2043, v2118, v2194, v2268, v2344, v2417, v2440);
        v1033 = av1_get_bits(v1031, v1032);
        v108[255] = v1033;
        if (v998)
        {
          v108[265] = 0;
          *(v108 + 128) = 0;
          *(v108 + 130) = 0;
          *(v108 + 129) = 0;
          v1041 = 2;
          v1042 = 264;
          *(v108 + 131) = 0x200000000;
          goto LABEL_699;
        }

        v1043 = OUTLINED_FUNCTION_5_7(v1033, v1034, v1035, v1036, v1037, v1038, v1039, v1040, v1410, v1490, v1570, v1651, v1731, v1811, v1893, v1969, v2044, v2119, v2195, v2269, v2345, v2418, v2440);
        v1045 = av1_get_bits(v1043, v1044);
        v108[256] = v1045;
        v1053 = OUTLINED_FUNCTION_5_7(v1045, v1046, v1047, v1048, v1049, v1050, v1051, v1052, v1411, v1491, v1571, v1652, v1732, v1812, v1894, v1970, v2045, v2120, v2196, v2270, v2346, v2419, v2440);
        v1055 = av1_get_bits(v1053, v1054);
        v108[257] = v1055;
        v1063 = OUTLINED_FUNCTION_5_7(v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1412, v1492, v1572, v1653, v1733, v1813, v1895, v1971, v2046, v2121, v2197, v2271, v2347, v2420, v2440);
        v1065 = av1_get_bits(v1063, v1064);
        v108[258] = v1065;
        v1073 = OUTLINED_FUNCTION_5_7(v1065, v1066, v1067, v1068, v1069, v1070, v1071, v1072, v1413, v1493, v1573, v1654, v1734, v1814, v1896, v1972, v2047, v2122, v2198, v2272, v2348, v2421, v2440);
        v1075 = av1_get_bits(v1073, v1074);
        v108[259] = v1075;
        v1083 = OUTLINED_FUNCTION_5_7(v1075, v1076, v1077, v1078, v1079, v1080, v1081, v1082, v1414, v1494, v1574, v1655, v1735, v1815, v1897, v1973, v2048, v2123, v2199, v2273, v2349, v2422, v2440);
        v1085 = OUTLINED_FUNCTION_9_4(v1083, v1084);
        v108[260] = v1085;
        if (v1085)
        {
          v1093 = OUTLINED_FUNCTION_5_7(v1085, v1086, v1087, v1088, v1089, v1090, v1091, v1092, v1415, v1495, v1575, v1656, v1736, v1816, v1898, v1974, v2049, v2124, v2200, v2274, v2350, v2423, v2440);
          v1095 = av1_get_bits(v1093, v1094);
          v108[261] = v1095;
          v1103 = OUTLINED_FUNCTION_5_7(v1095, v1096, v1097, v1098, v1099, v1100, v1101, v1102, v1416, v1496, v1576, v1657, v1737, v1817, v1899, v1975, v2050, v2125, v2201, v2275, v2351, v2424, v2440);
          v1085 = av1_get_bits(v1103, v1104);
        }

        else
        {
          v108[261] = 0;
          v108[265] = 0;
        }

        v108[262] = v1085;
        v1105 = OUTLINED_FUNCTION_5_7(v1085, v1086, v1087, v1088, v1089, v1090, v1091, v1092, v1415, v1495, v1575, v1656, v1736, v1816, v1898, v1974, v2049, v2124, v2200, v2274, v2350, v2423, v2440);
        v1107 = av1_get_bits(v1105, v1106);
        if (v1107)
        {
          v108[263] = 2;
        }

        else
        {
          v1108 = OUTLINED_FUNCTION_5_7(v1107, v1034, v1035, v1036, v1037, v1038, v1039, v1040, v1410, v1490, v1570, v1651, v1731, v1811, v1893, v1969, v2044, v2119, v2195, v2269, v2345, v2418, v2440);
          v1107 = av1_get_bits(v1108, v1109);
          v108[263] = v1107;
          if (!v1107)
          {
            goto LABEL_695;
          }
        }

        v1110 = OUTLINED_FUNCTION_5_7(v1107, v1034, v1035, v1036, v1037, v1038, v1039, v1040, v1410, v1490, v1570, v1651, v1731, v1811, v1893, v1969, v2044, v2119, v2195, v2269, v2345, v2418, v2440);
        v1112 = av1_get_bits(v1110, v1111);
        if (!v1112)
        {
          v1113 = OUTLINED_FUNCTION_5_7(v1112, v1034, v1035, v1036, v1037, v1038, v1039, v1040, v1410, v1490, v1570, v1651, v1731, v1811, v1893, v1969, v2044, v2119, v2195, v2269, v2345, v2418, v2440);
          v1033 = av1_get_bits(v1113, v1114);
          goto LABEL_697;
        }

LABEL_695:
        v1033 = 2;
LABEL_697:
        v108[264] = v1033;
        if (!v973)
        {
          goto LABEL_700;
        }

        v1033 = OUTLINED_FUNCTION_10_3(v1033, v1034, v1035, v1036, v1037, v1038, v1039, v1040, v1410, v1490, v1570, v1651, v1731, v1811, v1893, v1969, v2044, v2119, v2195, v2269, v2345, v2418);
        v1041 = v1033 + 1;
        v1042 = 265;
LABEL_699:
        v108[v1042] = v1041;
LABEL_700:
        v1115 = OUTLINED_FUNCTION_5_7(v1033, v1034, v1035, v1036, v1037, v1038, v1039, v1040, v1410, v1490, v1570, v1651, v1731, v1811, v1893, v1969, v2044, v2119, v2195, v2269, v2345, v2418, v2440);
        v1117 = av1_get_bits(v1115, v1116);
        v108[266] = v1117;
        v1125 = OUTLINED_FUNCTION_5_7(v1117, v1118, v1119, v1120, v1121, v1122, v1123, v1124, v1417, v1497, v1577, v1658, v1738, v1818, v1900, v1976, v2051, v2126, v2202, v2276, v2352, v2425, v2440);
        v1127 = av1_get_bits(v1125, v1126);
        v108[267] = v1127;
        v1135 = OUTLINED_FUNCTION_5_7(v1127, v1128, v1129, v1130, v1131, v1132, v1133, v1134, v1418, v1498, v1578, v1659, v1739, v1819, v1901, v1977, v2052, v2127, v2203, v2277, v2353, v2426, v2440);
        v1137 = av1_get_bits(v1135, v1136);
        v108[268] = v1137;
        v1145 = OUTLINED_FUNCTION_5_7(v1137, v1138, v1139, v1140, v1141, v1142, v1143, v1144, v1419, v1499, v1579, v1660, v1740, v1820, v1902, v1978, v2053, v2128, v2204, v2278, v2354, v2427, v2440);
        v1147 = OUTLINED_FUNCTION_9_4(v1145, v1146);
        v108[8] = v1147;
        if (v109 == 1)
        {
          v1155 = 0;
        }

        else
        {
          v1156 = OUTLINED_FUNCTION_5_7(v1147, v1148, v1149, v1150, v1151, v1152, v1153, v1154, v1420, v1500, v1580, v1661, v1741, v1821, v1903, v1979, v2054, v2129, v2205, v2279, v2355, v2428, v2440);
          v1147 = av1_get_bits(v1156, v1157);
          v1155 = v1147;
        }

        v108[271] = v1155;
        v1158 = OUTLINED_FUNCTION_5_7(v1147, v1148, v1149, v1150, v1151, v1152, v1153, v1154, v1420, v1500, v1580, v1661, v1741, v1821, v1903, v1979, v2054, v2129, v2205, v2279, v2355, v2428, v2440);
        v1160 = av1_get_bits(v1158, v1159);
        v108[272] = v1160;
        if (v1160)
        {
          v1168 = OUTLINED_FUNCTION_11_2(v1160, v1161, v1162, v1163, v1164, v1165, v1166, v1167, v1421, v1501, v1581, v1662, v1742, v1822, v1904, v1980, v2055, v2130, v2206, v2280, v2356, v2429);
          v1169 = v1168;
          v108[4] = v1168;
          v1177 = OUTLINED_FUNCTION_11_2(v1168, v1170, v1171, v1172, v1173, v1174, v1175, v1176, v1422, v1502, v1582, v1663, v1743, v1823, v1905, v1981, v2056, v2131, v2207, v2281, v2357, v2430);
          v1178 = v108;
          v1179 = v1177;
          v1178[5] = v1177;
          v1160 = OUTLINED_FUNCTION_11_2(v1177, v1180, v1181, v1182, v1183, v1184, v1185, v1186, v1423, v1503, v1583, v1664, v1744, v1824, v1906, v1982, v2057, v2132, v2208, v2282, v2358, v2431);
          v1178[6] = v1160;
          if (!v1155)
          {
            v1187 = v1169 == 1 && v1179 == 13;
            if (v1187 && !v1160)
            {
              OUTLINED_FUNCTION_23_0();
              v1178[9] = 1;
              if (v109 != 1)
              {
                return 4294954584;
              }

              goto LABEL_777;
            }

LABEL_715:
            v1200 = OUTLINED_FUNCTION_5_7(v1160, v1161, v1162, v1163, v1164, v1165, v1166, v1167, v1421, v1501, v1581, v1662, v1742, v1822, v1904, v1980, v2055, v2130, v2206, v2280, v2356, v2429, v2440);
            v1202 = av1_get_bits(v1200, v1201);
            v1178[9] = v1202;
            if (v109)
            {
              if (v109 == 1)
              {
                OUTLINED_FUNCTION_23_0();
LABEL_774:
                v1199 = 7;
LABEL_775:
                v1178[v1199] = v1198;
                if (v1178[271])
                {
                  v1291 = 0;
LABEL_780:
                  v1178[273] = v1291;
                  v1292 = OUTLINED_FUNCTION_5_7(v1198, v1190, v1191, v1192, v1193, v1194, v1195, v1196, v1421, v1501, v1581, v1662, v1742, v1822, v1904, v1980, v2055, v2130, v2206, v2280, v2356, v2429, v2440);
                  v1294 = av1_get_bits(v1292, v1293);
                  v1178[274] = v1294;
                  v1302 = OUTLINED_FUNCTION_5_7(v1294, v1295, v1296, v1297, v1298, v1299, v1300, v1301, v1430, v1510, v1590, v1671, v1751, v1831, v1913, v1989, v2064, v2139, v2215, v2289, v2365, v2438, v2440);
                  av1_get_bits(v1302, v1303);
LABEL_781:
                  v221 = check_for_overrun(&v2440, v99, v87);
                  if (v221)
                  {
                    return v221;
                  }

                  v13 = v1766;
                  *(v1766 + 3312) = v2374;
                  if (v2441 <= 7)
                  {
                    v29 = 0;
                  }

                  else
                  {
                    v29 = 4294954584;
                  }

                  v91 = 2;
                  v88 = v99;
                  goto LABEL_829;
                }

LABEL_777:
                v1198 = OUTLINED_FUNCTION_4_8(&v2440);
                v1291 = !v334;
                goto LABEL_780;
              }

              if (v1178[269] != 1 || v1178[270] != 1)
              {
                v1198 = 0;
                goto LABEL_774;
              }
            }

            else
            {
              v1178[3] = 1;
              *(v1178 + 269) = 0x100000001;
            }

            v1198 = OUTLINED_FUNCTION_8_4(v1202, v1190, v1191, v1192, v1193, v1194, v1195, v1196, v1421, v1501, v1581, v1662, v1742, v1822, v1904, v1980, v2055, v2130, v2206, v2280, v2356, v2429);
            goto LABEL_774;
          }
        }

        else
        {
          *(v108 + 2) = 0x200000002;
          v108[6] = 2;
          v1178 = v108;
          if (!v1155)
          {
            goto LABEL_715;
          }
        }

        v1188 = OUTLINED_FUNCTION_5_7(v1160, v1161, v1162, v1163, v1164, v1165, v1166, v1167, v1421, v1501, v1581, v1662, v1742, v1822, v1904, v1980, v2055, v2130, v2206, v2280, v2356, v2429, v2440);
        v1197 = av1_get_bits(v1188, v1189);
        v1198 = 0;
        v1178[9] = v1197;
        v1178[3] = 0;
        *(v1178 + 269) = 0x100000001;
        v1178[7] = 0;
        v1199 = 273;
        goto LABEL_775;
      }

      v185 = OUTLINED_FUNCTION_5_7(v122, v123, v124, v125, v126, v127, v128, v129, v1364, v1442, v1522, v1602, v1683, v1764, v1844, v1925, v2000, v2075, v2151, v2227, v2301, v2376, v2440);
      v187 = av1_get_bits(v185, v186);
      v108[237] = v187;
      v1767 = v13;
      if (!v187)
      {
        v355 = 0;
        v356 = 242;
        goto LABEL_662;
      }

      v108[238] = av1_get_bits(&v2440, 0x20u);
      v195 = av1_get_bits(&v2440, 0x20u);
      v108[239] = v195;
      v203 = OUTLINED_FUNCTION_5_7(v195, v196, v197, v198, v199, v200, v201, v202, v1367, v1445, v1525, v1605, v1686, v13, v1847, v1928, v2003, v2078, v2154, v2229, v2304, v2378, v2440);
      v205 = av1_get_bits(v203, v204);
      v108[240] = v205;
      if (!v205)
      {
        goto LABEL_660;
      }

      v213 = 0;
      v214 = 1153;
      while (1)
      {
        v215 = OUTLINED_FUNCTION_5_7(v205, v206, v207, v208, v209, v210, v211, v212, v1362, v1446, v1526, v1606, v1687, v1766, v1848, v1929, v2004, v2079, v2155, v2225, v2305, v2374, v2440);
        v205 = av1_get_bits(v215, v216);
        if (v205)
        {
          break;
        }

        if (++v213 == 32)
        {
          goto LABEL_72;
        }
      }

      if (v213)
      {
        v205 = av1_get_bits(&v2440, v213);
        v499 = v205 + ~(-1 << v213);
        if (v499 == -1)
        {
          v214 = 1153;
          goto LABEL_72;
        }
      }

      else
      {
        v499 = 0;
      }

      v29 = v2440;
      if (!v2440)
      {
        v108 = v2374;
        v2374[241] = v499 + 1;
LABEL_660:
        v899 = OUTLINED_FUNCTION_5_7(v205, v206, v207, v208, v209, v210, v211, v212, v1362, v1446, v1526, v1606, v1687, v1766, v1848, v1929, v2004, v2079, v2155, v2225, v2305, v2374, v2440);
        v187 = av1_get_bits(v899, v900);
        v108[242] = v187;
        if (!v187)
        {
LABEL_663:
          v917 = OUTLINED_FUNCTION_5_7(v187, v188, v189, v190, v191, v192, v193, v194, v1367, v1445, v1525, v1605, v1686, v1767, v1847, v1928, v2003, v2078, v2154, v2229, v2304, v2378, v2440);
          v919 = av1_get_bits(v917, v918);
          v108[247] = v919;
          v138 = OUTLINED_FUNCTION_27_0(v919, v920, v921, v922, v923, v924, v925, v926, v1401, v1481, v1561, v1642, v1722, v1802, v1884, v1960, v2035, v2110, v2186, v2260, v2336, v2409);
          v927 = (v138 + 1);
          v108[10] = v927;
          if (v138 > 0x7FFFFFFE)
          {
            goto LABEL_681;
          }

          v928 = v108 + 11;
          v929 = v108 + 277;
          while (1)
          {
            v930 = av1_get_bits(&v2440, 0xCu);
            v928[3] = v930;
            if (v930 && (!v930 || (v930 & 0xF00) == 0))
            {
              goto LABEL_781;
            }

            v938 = OUTLINED_FUNCTION_10_3(v930, v931, v932, v933, v934, v935, v936, v937, v1366, v1444, v1524, v1604, v1685, v1766, v1846, v1927, v2002, v2077, v2153, v2225, v2303, v2374);
            v939 = v938 + 2;
            *v928 = v938 + 2;
            v947 = OUTLINED_FUNCTION_8_4(v938, v940, v941, v942, v943, v944, v945, v946, v1402, v1482, v1562, v1643, v1723, v1803, v1885, v1961, v2036, v2111, v2187, v2261, v2337, v2410);
            v928[1] = v947;
            if (v939 < 4)
            {
              v138 = 0;
            }

            else
            {
              v948 = OUTLINED_FUNCTION_5_7(v947, v139, v140, v141, v142, v143, v144, v145, v1366, v1444, v1524, v1604, v1685, v1766, v1846, v1927, v2002, v2077, v2153, v2225, v2303, v2374, v2440);
              v138 = av1_get_bits(v948, v949);
            }

            v108 = v2374;
            v928[4] = v138;
            if (v2374[242])
            {
              v138 = OUTLINED_FUNCTION_3_8(&v2440);
              v928[5] = v950;
              if (v138)
              {
                v951 = OUTLINED_FUNCTION_28_0(v138, v139, v140, v141, v142, v143, v144, v145, v1366, v1444, v1524, v1604, v1685, v1766, v1846, v1927, v2002, v2077, v2153, v2225, v2303, v2374);
                *(v929 - 2) = v951;
                v959 = OUTLINED_FUNCTION_28_0(v951, v952, v953, v954, v955, v956, v957, v958, v1403, v1483, v1563, v1644, v1724, v1804, v1886, v1962, v2037, v2112, v2188, v2262, v2338, v2411);
                *(v929 - 1) = v959;
                v967 = OUTLINED_FUNCTION_5_7(v959, v960, v961, v962, v963, v964, v965, v966, v1404, v1484, v1564, v1645, v1725, v1805, v1887, v1963, v2038, v2113, v2189, v2263, v2339, v2412, v2440);
                v138 = av1_get_bits(v967, v968);
                *v929 = v138;
              }
            }

            else
            {
              v928[5] = 0;
            }

            v969 = v108[247];
            if (!v969)
            {
              break;
            }

            v138 = OUTLINED_FUNCTION_3_8(&v2440);
            v928[6] = v970;
            if (v138)
            {
              v138 = OUTLINED_FUNCTION_14_1(v138, v139, v140, v141, v142, v143, v144, v145, v1366, v1444, v1524, v1604, v1685, v1766, v1846, v1927, v2002, v2077, v2153, v2225, v2303, v2374);
              v969 = v138 + 1;
              v971 = 2;
LABEL_679:
              v928[v971] = v969;
            }

            v928 += 7;
            v929 += 3;
            if (!--v927)
            {
              goto LABEL_681;
            }
          }

          v971 = 6;
          goto LABEL_679;
        }

        v108[243] = OUTLINED_FUNCTION_27_0(v187, v188, v189, v190, v191, v192, v193, v194, v1367, v1445, v1525, v1605, v1686, v1767, v1847, v1928, v2003, v2078, v2154, v2229, v2304, v2378) + 1;
        v901 = av1_get_bits(&v2440, 0x20u);
        v108[244] = v901;
        v909 = OUTLINED_FUNCTION_27_0(v901, v902, v903, v904, v905, v906, v907, v908, v1399, v1479, v1559, v1640, v1720, v1800, v1882, v1958, v2033, v2108, v2184, v2258, v2334, v2407);
        v108[245] = v909 + 1;
        v187 = OUTLINED_FUNCTION_27_0(v909, v910, v911, v912, v913, v914, v915, v916, v1400, v1480, v1560, v1641, v1721, v1801, v1883, v1959, v2034, v2109, v2185, v2259, v2335, v2408);
        v355 = v187 + 1;
        v356 = 246;
LABEL_662:
        v108[v356] = v355;
        goto LABEL_663;
      }

      return v29;
    case 2:
    case 0xF:
      goto LABEL_829;
    case 3:
    case 6:
      if ((v15 & 4) != 0)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    case 4:
      goto LABEL_551;
    case 5:
      if ((v15 & 0x10) == 0)
      {
LABEL_28:
        v91 = 0;
        goto LABEL_552;
      }

      LODWORD(v1920) = 8 * (DWORD2(v2441) - v2442) - v2441;
      v157 = v87;
      v2444 = v2441;
      v2445 = v2442;
      v2443 = v2440;
      v158 = DWORD2(v2441);
      v159 = v2442;
      v160 = v2441;
      v161 = av1_get_uleb128(&v2443);
      v29 = v2443;
      if (v2443)
      {
        goto LABEL_820;
      }

      v88 = v1920;
      v171 = v87 - ((8 * (v158 - v159) - v160 - v1920) >> 3);
      if ((v171 + v89) > a2)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_20();
        v1332 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1328, 0xFFFFCE58uLL, "<<<< AV1Bridge >>>>", 0xAE5, v1329, v1330, v1331, v1359);
        v88 = v1920;
        v29 = v1332;
        v91 = 0;
        goto LABEL_829;
      }

      if (v171 < 1)
      {
        goto LABEL_57;
      }

      while (!*(a1 + (v89 - 1 + v171)))
      {
        v172 = __OFSUB__(v171--, 1);
        if ((v171 < 0) ^ v172 | (v171 == 0))
        {
          v171 = 0;
          break;
        }
      }

LABEL_57:
      switch(v161)
      {
        case 1:
          if (v171 <= 5)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_1_20();
            v1337 = 2816;
            goto LABEL_818;
          }

          OUTLINED_FUNCTION_20_1(v161, v162, v163, v164, v165, v166, v167, v168, v169, v1359, v1437, v1517, v1597, v1678, v1759, v1838, v1920, v1995, v2070, v2146, v2225, v2296, v2371, v2440, *(&v2440 + 1), v2441, *(&v2441 + 1), v2442, *(&v2442 + 1), v2443, v2444, v170);
          v371 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
          *(v13 + 3344) = v371;
          if (v371)
          {
            v372 = v371;
            *v371 = OUTLINED_FUNCTION_15_1();
            v373 = OUTLINED_FUNCTION_15_1();
            v372[1] = v373;
            if (!OUTLINED_FUNCTION_6_7(v373, v374, v375, v376, v377, v378, v379, v380, v1371, v1450, v1530, v1611, v1691, v1771, v1852, v1920))
            {
              if ((v15 & 0x100) == 0)
              {
                v381 = *(v13 + 3344);
                if (v381)
                {
                  *(v13 + 3344) = 0;
                  free(v381);
                }
              }

              v29 = 0;
              v184 = 256;
              goto LABEL_827;
            }

            v1338 = *(v13 + 3344);
            if (v1338)
            {
              *(v13 + 3344) = 0;
              goto LABEL_825;
            }
          }

          break;
        case 2:
          if (v171 <= 25)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_1_20();
            v1337 = 2823;
            goto LABEL_818;
          }

          OUTLINED_FUNCTION_20_1(v161, v162, v163, v164, v165, v166, v167, v168, v169, v1359, v1437, v1517, v1597, v1678, v1759, v1838, v1920, v1995, v2070, v2146, v2225, v2296, v2371, v2440, *(&v2440 + 1), v2441, *(&v2441 + 1), v2442, *(&v2442 + 1), v2443, v2444, v170);
          v358 = malloc_type_malloc(0x18uLL, 0x1000040504FFAC1uLL);
          *(v13 + 3360) = v358;
          if (v358)
          {
            v359 = v358;
            v360 = v358 + 2;
            v361 = 3;
            do
            {
              *(v360 - 1) = OUTLINED_FUNCTION_15_1();
              *v360 = OUTLINED_FUNCTION_15_1();
              v360 += 2;
              --v361;
            }

            while (v361);
            *(v359 + 6) = OUTLINED_FUNCTION_15_1();
            *(v359 + 7) = OUTLINED_FUNCTION_15_1();
            *(v359 + 4) = av1_get_bits(&v2446, 0x20u);
            v362 = av1_get_bits(&v2446, 0x20u);
            *(v359 + 5) = v362;
            if (!OUTLINED_FUNCTION_6_7(v362, v363, v364, v365, v366, v367, v368, v369, v1370, v1449, v1529, v1610, v1690, v1770, v1851, v1920))
            {
              if ((v15 & 0x200) == 0)
              {
                v370 = *(v13 + 3360);
                if (v370)
                {
                  *(v13 + 3360) = 0;
                  free(v370);
                }
              }

              v29 = 0;
              v184 = 512;
              goto LABEL_827;
            }

            v1338 = *(v13 + 3360);
            if (v1338)
            {
              *(v13 + 3360) = 0;
LABEL_825:
              free(v1338);
            }
          }

          break;
        case 4:
          if (v171 > 7)
          {
            v173 = av1_get_bits(&v2443, 8u);
            *(v13 + 3376) = v173;
            if (v173 == -1)
            {
              *(v13 + 3377) = av1_get_bits(&v2443, 8u);
            }

            v174 = check_for_overrun(&v2443, v1920, v87);
            if (!v174)
            {
              if ((v15 & 0x40) == 0)
              {
                v88 = v1920;
                if ((v15 & 0x80) == 0)
                {
                  goto LABEL_66;
                }

                OUTLINED_FUNCTION_20_1(v87, v175, v176, v177, v178, v179, v180, v181, v182, v1359, v1437, v1517, v1597, v1678, v1759, v1838, v1920, v1995, v2070, v2146, v2225, v2296, v2371, v2440, *(&v2440 + 1), v2441, *(&v2441 + 1), v2442, *(&v2442 + 1), v2443, v2444, v183);
                LODWORD(v87) = v877;
                if (*(v13 + 3376) != 181)
                {
                  v29 = 0;
LABEL_802:
                  v1318 = *(v13 + 3400);
                  if (v1318)
                  {
                    *(v13 + 3400) = 0;
                    free(v1318);
                    v88 = v1920;
                    LODWORD(v87) = v157;
                  }

                  v184 = 0;
                  goto LABEL_828;
                }

                v878 = v877 - ((8 * (DWORD2(v2447) - v2448) - (v2447 + v88)) >> 3);
                v879 = (v878 + 1);
                if (v878 == -1)
                {
                  fig_log_get_emitter("com.apple.coremedia", "");
                  OUTLINED_FUNCTION_1_20();
                  v1346 = 2646;
                }

                else
                {
                  if (v879 < 0x201)
                  {
                    if (v879 > 7)
                    {
                      v880 = malloc_type_malloc((v878 + 1), 0xC58E25C6uLL);
                      *(v13 + 3400) = v880;
                      if (v880)
                      {
                        *v880 = *(v13 + 3376);
                        v881 = OUTLINED_FUNCTION_15_1();
                        *(v13 + 3378) = v881;
                        *(*(v13 + 3400) + 1) = HIBYTE(v881);
                        *(*(v13 + 3400) + 2) = *(v13 + 3378);
                        v882 = OUTLINED_FUNCTION_15_1();
                        *(v13 + 3380) = v882;
                        *(*(v13 + 3400) + 3) = HIBYTE(v882);
                        *(*(v13 + 3400) + 4) = *(v13 + 3380);
                        if (*(v13 + 3378) == 60 && *(v13 + 3380) == 1)
                        {
                          v883 = OUTLINED_FUNCTION_12_2();
                          *(v884 + 5) = v883;
                          if (v883 == 4)
                          {
                            v885 = OUTLINED_FUNCTION_12_2();
                            *(v886 + 6) = v885;
                            if (v885 == 1)
                            {
                              v887 = OUTLINED_FUNCTION_12_2();
                              *(v888 + 7) = v887;
                              if ((*(*(v13 + 3400) + 7) & 0xC0) == 0x40)
                              {
                                if (v879 != 8)
                                {
                                  for (i = 8; i != v879; ++i)
                                  {
                                    v890 = OUTLINED_FUNCTION_12_2();
                                    *(v898 + i) = v890;
                                  }

                                  v29 = OUTLINED_FUNCTION_6_7(v890, v891, v892, v893, v894, v895, v896, v897, v1398, v1478, v1558, v1639, v1719, v1799, v1881, v1920);
                                  if (!v29)
                                  {
                                    *(v13 + 3384) = v879;
                                    v184 = 128;
LABEL_827:
                                    LODWORD(v87) = v157;
                                    v88 = v1920;
                                    goto LABEL_828;
                                  }

                                  goto LABEL_801;
                                }

                                fig_log_get_emitter("com.apple.coremedia", "");
                                OUTLINED_FUNCTION_1_20();
                                v1352 = 4294954579;
                                v1353 = 2685;
                              }

                              else
                              {
                                fig_log_get_emitter("com.apple.coremedia", "");
                                OUTLINED_FUNCTION_1_20();
                                v1352 = 4294954579;
                                v1353 = 2684;
                              }
                            }

                            else
                            {
                              fig_log_get_emitter("com.apple.coremedia", "");
                              OUTLINED_FUNCTION_1_20();
                              v1352 = 4294954579;
                              v1353 = 2679;
                            }
                          }

                          else
                          {
                            fig_log_get_emitter("com.apple.coremedia", "");
                            OUTLINED_FUNCTION_1_20();
                            v1352 = 4294954579;
                            v1353 = 2675;
                          }

                          goto LABEL_850;
                        }

                        v29 = 0;
                      }

                      else
                      {
                        v29 = 4294954584;
                      }

LABEL_801:
                      LODWORD(v87) = v157;
                      v88 = v1920;
                      goto LABEL_802;
                    }

                    fig_log_get_emitter("com.apple.coremedia", "");
                    OUTLINED_FUNCTION_1_20();
                    v1352 = 4294954584;
                    v1353 = 2648;
LABEL_850:
                    v29 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1348, v1352, "<<<< AV1Bridge >>>>", v1353, v1349, v1350, v1351, v1398);
                    goto LABEL_801;
                  }

                  fig_log_get_emitter("com.apple.coremedia", "");
                  OUTLINED_FUNCTION_1_20();
                  v1346 = 2647;
                }

                v1347 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1342, 0xFFFFCE58uLL, "<<<< AV1Bridge >>>>", v1346, v1343, v1344, v1345, v1398);
                v88 = v1920;
                LODWORD(v87) = v157;
                v29 = v1347;
                goto LABEL_802;
              }

              v2447 = v2444;
              v2448 = v2445;
              v2446 = v2443;
              if (v87 - ((8 * (DWORD2(v2444) - v2445) - (v2444 + v1920)) >> 3) + 1 <= 6)
              {
                fig_log_get_emitter("com.apple.coremedia", "");
                OUTLINED_FUNCTION_1_20();
                v1288 = 4294954584;
                v1289 = 2528;
              }

              else
              {
                v500 = OUTLINED_FUNCTION_15_1();
                v501 = v500;
                *(v13 + 3378) = v500;
                v502 = av1_get_bits(&v2446, 0x20u);
                v29 = 0;
                *(v13 + 3380) = v502;
                if (v501 != 59 || v502 != 2048)
                {
                  goto LABEL_765;
                }

                v503 = OUTLINED_FUNCTION_9_4(&v2446, 2u);
                v511 = OUTLINED_FUNCTION_6_7(v503, v504, v505, v506, v507, v508, v509, v510, v1359, v1437, v1517, v1597, v1678, v1759, v1838, v1920);
                if (v511)
                {
                  goto LABEL_764;
                }

                if (a1 || av1_get_bits(&v2446, 3u) != 6 || OUTLINED_FUNCTION_26_0() != 31 || OUTLINED_FUNCTION_26_0() != 6 || OUTLINED_FUNCTION_16_0() != 1 || OUTLINED_FUNCTION_26_0() != 1 || OUTLINED_FUNCTION_16_0())
                {
                  v29 = 0;
LABEL_765:
                  v1290 = *(v13 + 3400);
                  if (v1290)
                  {
                    *(v13 + 3400) = 0;
                    free(v1290);
                  }

                  v184 = 0;
                  goto LABEL_827;
                }

                if (OUTLINED_FUNCTION_16_0())
                {
                  fig_log_get_emitter("com.apple.coremedia", "");
                  OUTLINED_FUNCTION_1_20();
                  v1288 = 4294954579;
                  v1289 = 2561;
                }

                else if (OUTLINED_FUNCTION_16_0())
                {
                  fig_log_get_emitter("com.apple.coremedia", "");
                  OUTLINED_FUNCTION_1_20();
                  v1288 = 4294954579;
                  v1289 = 2563;
                }

                else if (OUTLINED_FUNCTION_16_0())
                {
                  fig_log_get_emitter("com.apple.coremedia", "");
                  OUTLINED_FUNCTION_1_20();
                  v1288 = 4294954579;
                  v1289 = 2565;
                }

                else if (OUTLINED_FUNCTION_16_0())
                {
                  fig_log_get_emitter("com.apple.coremedia", "");
                  OUTLINED_FUNCTION_1_20();
                  v1288 = 4294954579;
                  v1289 = 2567;
                }

                else
                {
                  if (OUTLINED_FUNCTION_16_0() != 1)
                  {
                    v29 = 4294954584;
                    goto LABEL_765;
                  }

                  v1274 = 0;
                  do
                  {
                    v1275 = av1_get_bits(&v2446, 8u);
                    v1276 = OUTLINED_FUNCTION_9_4(&v2446, 1u);
                    if (OUTLINED_FUNCTION_6_7(v1276, v1277, v1278, v1279, v1280, v1281, v1282, v1283, v1359, v1457, v1537, v1618, v1698, v1778, v1859, v1920))
                    {
                      break;
                    }

                    v1274 = ((v1275 + v1274) << 8) + 256;
                  }

                  while (!v2446);
                  fig_log_get_emitter("com.apple.coremedia", "");
                  OUTLINED_FUNCTION_1_20();
                  v1288 = 4294954582;
                  v1289 = 2573;
                }
              }

              v511 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1284, v1288, "<<<< AV1Bridge >>>>", v1289, v1285, v1286, v1287, v1359);
LABEL_764:
              v29 = v511;
              goto LABEL_765;
            }

            goto LABEL_819;
          }

          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_20();
          v1337 = 2798;
LABEL_818:
          v174 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1333, 0xFFFFCE58uLL, "<<<< AV1Bridge >>>>", v1337, v1334, v1335, v1336, v1359);
LABEL_819:
          v29 = v174;
LABEL_820:
          v91 = 0;
          goto LABEL_547;
        default:
LABEL_66:
          v184 = 0;
          v29 = 0;
LABEL_828:
          v91 = v184 | 0x10;
          goto LABEL_829;
      }

      v184 = 0;
      v29 = 0;
      goto LABEL_827;
    case 7:
      v91 = 0;
      if ((v15 & 4) == 0)
      {
        v29 = 0;
        goto LABEL_829;
      }

      v29 = 0;
      if (*(v13 + 3328))
      {
        goto LABEL_829;
      }

LABEL_31:
      v1517 = v88 >> 3;
      v29 = 4294954584;
      v92 = v2225;
      if (!v2225)
      {
        return v29;
      }

      v93 = *(v13 + 3312);
      if (!v93)
      {
        return v29;
      }

      HIDWORD(v1437) = v15;
      v94 = v2371;
      v1920 = __PAIR64__(v71, v88);
      HIDWORD(v1678) = v87;
      if (v2371[236])
      {
        v95 = 0;
        *(a6 + 232) = 0;
        *(a6 + 260) = 0;
        v1841 = a6 + 232;
        *(a6 + 276) = 1;
        v96 = (a6 + 276);
        goto LABEL_35;
      }

      v146 = OUTLINED_FUNCTION_3_8(&v2440);
      *(a6 + 260) = v154;
      if (!v146)
      {
        v95 = OUTLINED_FUNCTION_8_4(v146, v147, v148, v149, v150, v151, v152, v153, v1359, v1437, v1517, v1597, v1678, v1759, v1838, v1920, v1995, v2070, v2146, v2225, v2296, v2371);
        *(a6 + 232) = v95;
        v97 = 1;
        uleb128 = OUTLINED_FUNCTION_3_8(&v2440);
        v96 = (a6 + 276);
        v1841 = a6 + 232;
        *(a6 + 276) = v222;
        if (!uleb128)
        {
          v98 = 280;
          goto LABEL_77;
        }

LABEL_35:
        if (!v94[242] || v94[240])
        {
          goto LABEL_78;
        }

        v97 = v94[246];
        v98 = 272;
LABEL_77:
        uleb128 = av1_get_bits(&v2440, v97);
        *(a6 + v98) = uleb128;
        v95 = *(a6 + 232);
LABEL_78:
        v1607 = v96;
        if (v95 == 3 || !v95 && *v96 || v94[236])
        {
          v223 = 1;
        }

        else
        {
          uleb128 = OUTLINED_FUNCTION_4_8(&v2440);
          v223 = !v334;
        }

        *(a6 + 284) = v223;
        v224 = OUTLINED_FUNCTION_5_7(uleb128, v63, v64, v65, v66, v67, v68, v69, v1359, v1437, v1517, v1607, v1678, v1759, v1841, v1920, v1995, v2070, v2146, v2225, v2296, v2371, v2440);
        *(a6 + 288) = av1_get_bits(v224, v225);
        v233 = v94[263];
        if (v233 == 2)
        {
          v234 = OUTLINED_FUNCTION_5_7(v233, v226, v227, v228, v229, v230, v231, v232, v1368, v1447, v1527, v1608, v1688, v1768, v1849, v1930, v2005, v2080, v2156, v2230, v2306, v2379, v2440);
          LODWORD(v233) = av1_get_bits(v234, v235);
        }

        *(a6 + 292) = v233;
        if (v233)
        {
          v233 = v94[264];
          if (v233 == 2)
          {
            v236 = OUTLINED_FUNCTION_5_7(v233, v226, v227, v228, v229, v230, v231, v232, v1368, v1447, v1527, v1608, v1688, v1768, v1849, v1930, v2005, v2080, v2156, v2230, v2306, v2379, v2440);
            LODWORD(v233) = av1_get_bits(v236, v237);
          }
        }

        if (*(a6 + 232))
        {
          v238 = v233;
        }

        else
        {
          v238 = 1;
        }

        *(a6 + 296) = v238;
        if (v94[250])
        {
          *(a6 + 268) = av1_get_bits(&v2440, v94[252]);
        }

        if (v94[236])
        {
          v239 = v13;
          v240 = 0;
        }

        else
        {
          OUTLINED_FUNCTION_24_0();
          v239 = v13;
          if (v242 == 3)
          {
            v240 = 1;
          }

          else
          {
            v243 = OUTLINED_FUNCTION_5_7(v241, v226, v227, v228, v229, v230, v231, v232, v1368, v1447, v1527, v1608, v1688, v1768, v1849, v1930, v2005, v2080, v2156, v2230, v2306, v2379, v2440);
            v240 = av1_get_bits(v243, v244);
          }
        }

        *(a6 + 300) = v240;
        v245 = v2379[260];
        if (v245)
        {
          OUTLINED_FUNCTION_9_4(&v2440, v2379[265]);
        }

        else
        {
          v95 = 0;
        }

        *(a6 + 248) = v95;
        LODWORD(v1447) = v240;
        if (!v223 && (OUTLINED_FUNCTION_18_1(), (v247 & 1) != 0))
        {
          v248 = OUTLINED_FUNCTION_10_3(v246, v226, v227, v228, v229, v230, v231, v232, v1368, v1447, v1527, v1608, v1688, v1768, v1849, v1930, v2005, v2080, v2156, v2230, v2306, v2379);
        }

        else
        {
          v248 = 7;
        }

        *(a6 + 304) = v248;
        if (v2379[242])
        {
          v249 = OUTLINED_FUNCTION_5_7(v248, v226, v227, v228, v229, v230, v231, v232, v1368, v1447, v1527, v1608, v1688, v1768, v1849, v1930, v2005, v2080, v2156, v2230, v2306, v2379, v2440);
          v251 = av1_get_bits(v249, v250);
          *(a6 + 308) = v251;
          if (v251)
          {
            v252 = *(v93 + 40);
            if (v252 >= 1)
            {
              v253 = 0;
              v254 = v2379 + 16;
              do
              {
                if (*v254)
                {
                  v255 = *(v254 - 2);
                  if (!v255 || (((1 << (*(a6 + 256) + 8)) | (1 << *(a6 + 252))) & ~v255) == 0)
                  {
                    *(a6 + 312 + 4 * v253) = av1_get_bits(&v2440, v2379[245]);
                    v252 = *(v93 + 40);
                  }
                }

                ++v253;
                v254 += 7;
              }

              while (v253 < v252);
            }
          }
        }

        OUTLINED_FUNCTION_24_0();
        if ((v264 & 1) == 0)
        {
          if (v264 || !*v1608)
          {
            v265 = OUTLINED_FUNCTION_11_2(v256, v257, v258, v259, v260, v261, v262, v263, v1368, v1447, v1527, v1608, v1688, v1768, v1849, v1930, v2005, v2080, v2156, v2230, v2306, v2379);
            *(a6 + 440) = v265;
            if (v245 && v223 && v265 != 255)
            {
              v273 = 8;
              do
              {
                v265 = OUTLINED_FUNCTION_28_0(v265, v266, v267, v268, v269, v270, v271, v272, v1368, v1447, v1527, v1608, v1688, v1768, v1849, v1930, v2005, v2080, v2156, v2230, v2306, v2379);
                --v273;
              }

              while (v273);
            }
          }

          else
          {
            *(a6 + 440) = 255;
          }

          v293 = v239;
          v345 = v239;
          v300 = v2379;
          frame_size = read_frame_size(v345, &v2440, a6, v2379, 0);
          if (*(a6 + 292) && !*(a6 + 456))
          {
            frame_size = OUTLINED_FUNCTION_4_8(&v2440);
            v354 = !v334;
          }

          else
          {
            v354 = 0;
          }

          v357 = 0;
          *(a6 + 464) = v354;
LABEL_254:
          *(a6 + 512) = v357;
          if (v300[236] || *(a6 + 288))
          {
            v395 = 0;
          }

          else
          {
            frame_size = OUTLINED_FUNCTION_4_8(&v2440);
            v395 = v334;
          }

          *(a6 + 516) = v395;
          v396 = OUTLINED_FUNCTION_5_7(frame_size, v347, v348, v349, v350, v351, v352, v353, v1368, v1447, v1527, v1608, v1688, v1768, v1849, v1930, v2005, v2080, v2156, v2230, v2306, v2379, v2440);
          uniform = av1_get_bits(v396, v397);
          *(a6 + 520) = uniform;
          v406 = v300[253];
          v407 = (64 << v406) - 1;
          v408 = v406 + 6;
          LODWORD(v409) = (v407 + *(a6 + 236)) >> v408;
          v410 = *(a6 + 244);
          v411 = 0x1000u >> v408;
          v412 = -1;
          do
          {
            ++v412;
          }

          while ((v411 << v412) < v409);
          *(a6 + 528) = v412;
          if (v409 >= 64)
          {
            v413 = 64;
          }

          else
          {
            v413 = v409;
          }

          v414 = -1;
          do
          {
            ++v414;
          }

          while (1 << v414 < v413);
          v415 = (v410 + v407) >> v408;
          *(a6 + 532) = v414;
          if (v415 >= 64)
          {
            v416 = 64;
          }

          else
          {
            v416 = (v410 + v407) >> v408;
          }

          v417 = -1;
          do
          {
            ++v417;
          }

          while (1 << v417 < v416);
          v1773 = v293;
          v418 = 0x900000u >> (2 * v408);
          *(a6 + 548) = v417;
          v419 = v409 * v415;
          v420 = -1;
          do
          {
            ++v420;
          }

          while ((v418 << v420) < v419);
          v421 = v412;
          if (v420 > v412)
          {
            v421 = -1;
            do
            {
              ++v421;
            }

            while ((v418 << v421) < v419);
          }

          if (uniform)
          {
            while (1)
            {
              *(a6 + 536) = v412;
              if (v412 >= v414)
              {
                break;
              }

              v422 = OUTLINED_FUNCTION_5_7(uniform, v399, v400, v401, v402, v403, v404, v405, v1373, v1452, v1532, v1613, v1693, v1773, v1854, v1933, v2008, v2083, v2159, v2233, v2309, v2382, v2440);
              uniform = av1_get_bits(v422, v423);
              if (!uniform)
              {
                break;
              }

              ++v412;
            }

            if (v409 < 1)
            {
              LODWORD(v425) = 0;
              v92 = v2233;
            }

            else
            {
              v424 = 0;
              v425 = 0;
              v92 = v2233;
              do
              {
                *(a6 + 560 + 2 * v425++) = v424;
                v424 += ((v409 - 1) >> v412) + 1;
              }

              while (v424 < v409);
            }

            *(a6 + 540) = v425;
            v431 = (v421 - v412) & ~((v421 - v412) >> 31);
            *(a6 + 544) = v431;
            while (1)
            {
              *(a6 + 552) = v431;
              if (v431 >= v417)
              {
                break;
              }

              v432 = OUTLINED_FUNCTION_5_7(uniform, v399, v400, v401, v402, v403, v404, v405, v1373, v1452, v1532, v1613, v1693, v1773, v1854, v1933, v2008, v2083, v2159, v2233, v2309, v2382, v2440);
              uniform = av1_get_bits(v432, v433);
              if (!uniform)
              {
                break;
              }

              ++v431;
            }

            if (v415 < 1)
            {
              LODWORD(v435) = 0;
            }

            else
            {
              v434 = 0;
              v435 = 0;
              do
              {
                *(a6 + 690 + 2 * v435++) = v434;
                v434 += ((v415 - 1) >> v431) + 1;
              }

              while (v434 < v415);
            }

            *(a6 + 556) = v435;
          }

          else
          {
            *(a6 + 540) = 0;
            if (v409 < 1)
            {
              LODWORD(v425) = 0;
              v427 = 0;
            }

            else
            {
              v426 = 0;
              v427 = 0;
              v428 = 0;
              do
              {
                if (v409 - v428 >= v411)
                {
                  v399 = v411;
                }

                else
                {
                  v399 = (v409 - v428);
                }

                if (v399 < 2)
                {
                  v429 = 1;
                }

                else
                {
                  uniform = av1_get_uniform(&v2440, v399);
                  v429 = uniform + 1;
                }

                *(a6 + 560 + 2 * v426) = v428;
                v428 += v429;
                if (v427 <= v429)
                {
                  v427 = v429;
                }

                *(a6 + 540) = v426 + 1;
                v302 = v426++ > 0x3E;
              }

              while (!v302 && v428 < v409);
              LODWORD(v425) = v426;
            }

            v412 = -1;
            v92 = v2233;
            do
            {
              ++v412;
            }

            while (1 << v412 < v425);
            *(a6 + 536) = v412;
            if (v421)
            {
              v436 = v421 + 1;
            }

            else
            {
              v436 = 0;
            }

            v437 = v419 >> v436;
            if (v427 <= 1)
            {
              v438 = 1;
            }

            else
            {
              v438 = v427;
            }

            v439 = v437 / v438;
            if (v439 <= 1)
            {
              v440 = 1;
            }

            else
            {
              v440 = v439;
            }

            *(a6 + 556) = 0;
            if (v415 < 1)
            {
              LODWORD(v435) = 0;
            }

            else
            {
              v435 = 0;
              v441 = 0;
              do
              {
                if (v415 - v441 >= v440)
                {
                  v399 = v440;
                }

                else
                {
                  v399 = (v415 - v441);
                }

                if (v399 < 2)
                {
                  v442 = 1;
                }

                else
                {
                  uniform = av1_get_uniform(&v2440, v399);
                  v442 = uniform + 1;
                }

                *(a6 + 690 + 2 * v435) = v441;
                v441 += v442;
                *(a6 + 556) = v435 + 1;
                v302 = v435++ > 0x3E;
              }

              while (!v302 && v441 < v415);
            }

            v431 = -1;
            do
            {
              ++v431;
            }

            while (1 << v431 < v435);
            *(a6 + 552) = v431;
          }

          *(a6 + 2 * v425 + 560) = v409;
          *(a6 + 2 * v435 + 690) = v415;
          v444 = v412 | v431;
          if (v412 | v431)
          {
            v445 = av1_get_bits(&v2440, v412 + v431);
            *(a6 + 820) = v445;
            if (v445 >= v435 * v425)
            {
              return 4294954584;
            }

            uniform = OUTLINED_FUNCTION_8_4(v445, v446, v447, v448, v449, v450, v451, v452, v1373, v1452, v1532, v1613, v1693, v1773, v1854, v1933, v2008, v2083, v2159, v2233, v2309, v2382);
            v444 = uniform + 1;
          }

          else
          {
            *(a6 + 820) = 0;
          }

          *(a6 + 524) = v444;
          v453 = OUTLINED_FUNCTION_11_2(uniform, v399, v400, v401, v402, v403, v404, v405, v1373, v1452, v1532, v1613, v1693, v1773, v1854, v1933, v2008, v2083, v2159, v2233, v2309, v2382);
          *(a6 + 824) = v453;
          v461 = OUTLINED_FUNCTION_5_7(v453, v454, v455, v456, v457, v458, v459, v460, v1374, v1453, v1533, v1614, v1694, v1774, v1855, v1934, v2009, v2084, v2160, v2234, v2310, v2383, v2440);
          v463 = av1_get_bits(v461, v462);
          v471 = v1775;
          if (v463)
          {
            v463 = OUTLINED_FUNCTION_13_2(v463, v464, v465, v466, v467, v468, v469, v470, v1375, v1454, v1534, v1615, v1695, v1775, v1856, v1935, v2010, v2085, v2161, v2235, v2311, v2384);
            v472 = (v463 << 25) >> 25;
          }

          else
          {
            v472 = 0;
          }

          *(a6 + 828) = v472;
          if (!*(v2384 + 1084))
          {
            if (*(v2384 + 1092))
            {
              v463 = OUTLINED_FUNCTION_4_8(&v2440);
              v473 = v334;
            }

            else
            {
              v473 = 1;
            }

            v475 = OUTLINED_FUNCTION_5_7(v463, v464, v465, v466, v467, v468, v469, v470, v1375, v1454, v1534, v1615, v1695, v1775, v1856, v1935, v2010, v2085, v2161, v2235, v2311, v2384, v2440);
            v477 = av1_get_bits(v475, v476);
            if (v477)
            {
              v477 = OUTLINED_FUNCTION_13_2(v477, v478, v479, v480, v481, v482, v483, v484, v1376, v1455, v1535, v1616, v1696, v1776, v1857, v1936, v2011, v2086, v2162, v2236, v2312, v2385);
              LODWORD(v409) = (v477 << 25) >> 25;
            }

            else
            {
              LODWORD(v409) = 0;
            }

            *(a6 + 832) = v409;
            v485 = OUTLINED_FUNCTION_5_7(v477, v478, v479, v480, v481, v482, v483, v484, v1376, v1455, v1535, v1616, v1696, v1776, v1857, v1936, v2011, v2086, v2162, v2236, v2312, v2385, v2440);
            v463 = av1_get_bits(v485, v486);
            if (v463)
            {
              v463 = OUTLINED_FUNCTION_7_5(&v2440);
            }

            else
            {
              v487 = 0;
            }

            *(a6 + 836) = v487;
            if (v473)
            {
              *(a6 + 840) = v409;
            }

            else
            {
              v488 = OUTLINED_FUNCTION_5_7(v463, v464, v465, v466, v467, v468, v469, v470, v1375, v1454, v1534, v1615, v1695, v1775, v1856, v1935, v2010, v2085, v2161, v2235, v2311, v2384, v2440);
              v490 = av1_get_bits(v488, v489);
              if (v490)
              {
                v490 = OUTLINED_FUNCTION_7_5(&v2440);
              }

              else
              {
                v498 = 0;
              }

              *(a6 + 840) = v498;
              v512 = OUTLINED_FUNCTION_5_7(v490, v491, v492, v493, v494, v495, v496, v497, v1377, v1456, v1536, v1617, v1697, v1777, v1858, v1937, v2012, v2087, v2163, v2237, v2313, v2386, v2440);
              v463 = av1_get_bits(v512, v513);
              if (v463)
              {
                v463 = OUTLINED_FUNCTION_7_5(&v2440);
              }

              else
              {
                v487 = 0;
              }
            }

            *(a6 + 844) = v487;
          }

          v514 = OUTLINED_FUNCTION_5_7(v463, v464, v465, v466, v467, v468, v469, v470, v1375, v1454, v1534, v1615, v1695, v1775, v1856, v1935, v2010, v2085, v2161, v2235, v2311, v2384, v2440);
          v516 = av1_get_bits(v514, v515);
          *(a6 + 848) = v516;
          if (v516)
          {
            v524 = OUTLINED_FUNCTION_14_1(v516, v517, v518, v519, v520, v521, v522, v523, v1378, v1458, v1538, v1619, v1699, v1779, v1860, v1938, v2013, v2088, v2164, v2238, v2314, v2387);
            *(a6 + 852) = v524;
            v516 = OUTLINED_FUNCTION_14_1(v524, v525, v526, v527, v528, v529, v530, v531, v1379, v1459, v1539, v1620, v1700, v1780, v1861, v1939, v2014, v2089, v2165, v2239, v2315, v2388);
            *(a6 + 856) = v516;
            if (*(v2387 + 1092))
            {
              v516 = OUTLINED_FUNCTION_14_1(v516, v517, v518, v519, v520, v521, v522, v523, v1378, v1458, v1538, v1619, v1699, v1779, v1860, v1938, v2013, v2088, v2164, v2238, v2314, v2387);
            }

            *(a6 + 860) = v516;
          }

          v532 = OUTLINED_FUNCTION_5_7(v516, v517, v518, v519, v520, v521, v522, v523, v1378, v1458, v1538, v1619, v1699, v1779, v1860, v1938, v2013, v2088, v2164, v2238, v2314, v2387, v2440);
          v534 = OUTLINED_FUNCTION_9_4(v532, v533);
          *(a6 + 864) = v534;
          if (v534)
          {
            v542 = *(a6 + 304);
            if (v542 == 7)
            {
              *(a6 + 868) = 1;
              *(a6 + 872) = 0x100000000;
            }

            else
            {
              v544 = OUTLINED_FUNCTION_5_7(v534, v535, v536, v537, v538, v539, v540, v541, v1380, v1460, v1540, v1621, v1701, v1781, v1862, v1940, v2015, v2090, v2166, v2240, v2316, v2389, v2440);
              v546 = av1_get_bits(v544, v545);
              *(a6 + 868) = v546;
              if (v546)
              {
                v554 = OUTLINED_FUNCTION_5_7(v546, v547, v548, v549, v550, v551, v552, v553, v1381, v1461, v1541, v1622, v1702, v1782, v1863, v1941, v2016, v2091, v2167, v2241, v2317, v2390, v2440);
                v546 = av1_get_bits(v554, v555);
              }

              *(a6 + 872) = v546;
              v556 = OUTLINED_FUNCTION_5_7(v546, v547, v548, v549, v550, v551, v552, v553, v1381, v1461, v1541, v1622, v1702, v1782, v1863, v1941, v2016, v2091, v2167, v2241, v2317, v2390, v2440);
              v534 = av1_get_bits(v556, v557);
              *(a6 + 876) = v534;
              if (!v534)
              {
                v655 = *(v471 + 328 * *(a6 + 4 * v542 + 472) + 3432);
                if (!v655)
                {
                  return 4294954584;
                }

                v534 = memcpy((a6 + 880), (v655 + 880), 0x108uLL);
                if (v453)
                {
LABEL_419:
                  v638 = OUTLINED_FUNCTION_5_7(v534, v535, v536, v537, v538, v539, v540, v541, v1380, v1460, v1540, v1621, v1701, v1781, v1862, v1940, v2015, v2090, v2166, v2240, v2316, v2389, v2440);
                  v640 = av1_get_bits(v638, v639);
                  *(a6 + 1208) = v640;
                  v641 = v1781;
                  if (v640)
                  {
                    *(a6 + 1212) = OUTLINED_FUNCTION_8_4(v640, v535, v536, v537, v538, v539, v540, v541, v1380, v1460, v1540, v1621, v1701, v1781, v1862, v1940, v2015, v2090, v2166, v2240, v2316, v2389);
                    if (!*(a6 + 464))
                    {
                      v642 = OUTLINED_FUNCTION_3_8(&v2440);
                      *(a6 + 1216) = v643;
                      if (v642)
                      {
                        v644 = OUTLINED_FUNCTION_8_4(v642, v535, v536, v537, v538, v539, v540, v541, v1380, v1460, v1540, v1621, v1701, v1781, v1862, v1940, v2015, v2090, v2166, v2240, v2316, v2389);
                        *(a6 + 1220) = v644;
                        v652 = OUTLINED_FUNCTION_5_7(v644, v645, v646, v647, v648, v649, v650, v651, v1389, v1469, v1549, v1630, v1710, v1790, v1871, v1949, v2024, v2099, v2175, v2249, v2325, v2398, v2440);
                        v654 = av1_get_bits(v652, v653);
                        goto LABEL_429;
                      }

LABEL_428:
                      v654 = 0;
                      *(a6 + 1220) = 0;
LABEL_429:
                      *(a6 + 1224) = v654;
                      v656 = !v472 && !*(a6 + 832) && !*(a6 + 836) && !*(a6 + 840) && *(a6 + 844) == 0;
                      *(a6 + 1228) = 1;
                      v657 = 880;
                      v658 = 1176;
                      do
                      {
                        v659 = v453;
                        if (v409)
                        {
                          v660 = *(a6 + v657) + v453;
                          if (v660 >= 0xFF)
                          {
                            v661 = 255;
                          }

                          else
                          {
                            v661 = *(a6 + v657) + v453;
                          }

                          if (v660 >= 0)
                          {
                            v659 = v661;
                          }

                          else
                          {
                            v659 = 0;
                          }
                        }

                        *(a6 + v658) = v659;
                        v662 = v659 == 0 && v656;
                        *(a6 + v658 - 32) = v662;
                        v663 = *(a6 + 1228) & v662;
                        *(a6 + 1228) = v663;
                        v657 += 32;
                        v658 += 4;
                      }

                      while (v657 != 1136);
                      if (v663 || *(a6 + 464))
                      {
                        *(a6 + 1296) = 0;
                        *(a6 + 1232) = 0u;
                        *(a6 + 1248) = 0x100000001;
                        *(a6 + 1256) = default_mode_ref_deltas;
                        *(a6 + 1272) = unk_197165640;
                        *(a6 + 1288) = -1;
                        v664 = v2389;
                      }

                      else
                      {
                        v807 = OUTLINED_FUNCTION_9_4(&v2440, 6u);
                        *(a6 + 1232) = v807;
                        v815 = OUTLINED_FUNCTION_19_1(v807, v808, v809, v810, v811, v812, v813, v814, v1380, v1460, v1540, v1621, v1701, v1781, v1862, v1940, v2015, v2090, v2166, v2240, v2316, v2389);
                        *(a6 + 1236) = v815;
                        v664 = v2402;
                        if (!*(v2402 + 1084) && v409 | v815)
                        {
                          v823 = OUTLINED_FUNCTION_19_1(v815, v816, v817, v818, v819, v820, v821, v822, v1393, v1473, v1553, v1634, v1714, v1794, v1876, v1953, v2028, v2103, v2179, v2253, v2329, v2402);
                          *(a6 + 1240) = v823;
                          v815 = OUTLINED_FUNCTION_19_1(v823, v824, v825, v826, v827, v828, v829, v830, v1394, v1474, v1554, v1635, v1715, v1795, v1877, v1954, v2029, v2104, v2180, v2254, v2330, v2403);
                          *(a6 + 1244) = v815;
                        }

                        v831 = OUTLINED_FUNCTION_10_3(v815, v816, v817, v818, v819, v820, v821, v822, v1393, v1473, v1553, v1634, v1714, v1794, v1876, v1953, v2028, v2103, v2179, v2253, v2329, v2402);
                        *(a6 + 1296) = v831;
                        v839 = OUTLINED_FUNCTION_5_7(v831, v832, v833, v834, v835, v836, v837, v838, v1395, v1475, v1555, v1636, v1716, v1796, v1878, v1955, v2030, v2105, v2181, v2255, v2331, v2404, v2440);
                        v654 = av1_get_bits(v839, v840);
                        *(a6 + 1248) = v654;
                        if (!v654 || (v841 = OUTLINED_FUNCTION_5_7(v654, v535, v536, v537, v538, v539, v540, v541, v1380, v1460, v1540, v1621, v1701, v1781, v1862, v1940, v2015, v2090, v2166, v2240, v2316, v2389, v2440), v654 = av1_get_bits(v841, v842), (*(a6 + 1252) = v654) == 0))
                        {
LABEL_447:
                          if (v664[267] && !*(a6 + 464))
                          {
                            v850 = OUTLINED_FUNCTION_8_4(v654, v535, v536, v537, v538, v539, v540, v541, v1380, v1460, v1540, v1621, v1701, v1781, v1862, v1940, v2015, v2090, v2166, v2240, v2316, v2389);
                            *(a6 + 1300) = v850 + 3;
                            v654 = OUTLINED_FUNCTION_8_4(v850, v851, v852, v853, v854, v855, v856, v857, v1396, v1476, v1556, v1637, v1717, v1797, v1879, v1956, v2031, v2106, v2182, v2256, v2332, v2405);
                            *(a6 + 1304) = v654;
                            if (v654 == 31)
                            {
LABEL_452:
                              if (v664[268] && !*(a6 + 464))
                              {
                                v654 = OUTLINED_FUNCTION_8_4(v654, v535, v536, v537, v538, v539, v540, v541, v1380, v1460, v1540, v1621, v1701, v1781, v1862, v1940, v2015, v2090, v2166, v2240, v2316, v2389);
                                v737 = v654;
                                *(a6 + 1372) = v654;
                                if (v664[271])
                                {
                                  LODWORD(v409) = 0;
                                  *(a6 + 1376) = 0;
                                  v738 = 1;
                                }

                                else
                                {
                                  v859 = OUTLINED_FUNCTION_8_4(v654, v535, v536, v537, v538, v539, v540, v541, v1380, v1460, v1540, v1621, v1701, v1781, v1862, v1940, v2015, v2090, v2166, v2240, v2316, v2389);
                                  v860 = v859;
                                  *(a6 + 1376) = v859;
                                  v654 = OUTLINED_FUNCTION_8_4(v859, v861, v862, v863, v864, v865, v866, v867, v1397, v1477, v1557, v1638, v1718, v1798, v1880, v1957, v2032, v2107, v2183, v2257, v2333, v2406);
                                  LODWORD(v409) = v654;
                                  v738 = v860 == 0;
                                }

                                *(a6 + 1380) = v409;
                                if (v737 || !v738 || v409)
                                {
                                  v868 = v664[253];
                                  v869 = v868 + 6;
                                  *(a6 + 1384) = v868 + 6;
                                  v870 = OUTLINED_FUNCTION_5_7(v654, v535, v536, v537, v538, v539, v540, v541, v1380, v1460, v1540, v1621, v1701, v1781, v1862, v1940, v2015, v2090, v2166, v2240, v2316, v2389, v2440);
                                  v654 = av1_get_bits(v870, v871);
                                  if (v654)
                                  {
                                    v869 = v868 + 7;
                                    *(a6 + 1384) = v868 + 7;
                                    if (!v664[253])
                                    {
                                      v872 = OUTLINED_FUNCTION_5_7(v654, v535, v536, v537, v538, v539, v540, v541, v1380, v1460, v1540, v1621, v1701, v1781, v1862, v1940, v2015, v2090, v2166, v2240, v2316, v2389, v2440);
                                      v654 = av1_get_bits(v872, v873);
                                      v869 += v654;
                                      *(a6 + 1384) = v869;
                                    }
                                  }

                                  *(a6 + 1388) = v869;
                                  if (v409)
                                  {
                                    v874 = 0;
                                  }

                                  else
                                  {
                                    v874 = v738;
                                  }

                                  v71 = HIDWORD(v1940);
                                  if (!v874 && v664[269] == 1 && v664[270] == 1)
                                  {
                                    v875 = OUTLINED_FUNCTION_5_7(v654, v535, v536, v537, v538, v539, v540, v541, v1380, v1460, v1540, v1621, v1701, v1781, v1862, v1940, v2015, v2090, v2166, v2240, v2316, v2389, v2440);
                                    v654 = av1_get_bits(v875, v876);
                                    *(a6 + 1388) = v869 - v654;
                                  }

LABEL_456:
                                  if (v663)
                                  {
                                    v665 = 0;
                                  }

                                  else
                                  {
                                    v654 = OUTLINED_FUNCTION_4_8(&v2440);
                                    if (v334)
                                    {
                                      v665 = 1;
                                    }

                                    else
                                    {
                                      v665 = 2;
                                    }

                                    v71 = HIDWORD(v1940);
                                  }

                                  *(a6 + 1392) = v665;
                                  if (*(a6 + 232))
                                  {
                                    v667 = OUTLINED_FUNCTION_5_7(v654, v535, v536, v537, v538, v539, v540, v541, v1380, v1460, v1540, v1621, v1701, v1781, v1862, v1940, v2015, v2090, v2166, v2240, v2316, v2389, v2440);
                                    v666 = av1_get_bits(v667, v668);
                                    *(a6 + 1396) = v666;
                                    if (v666)
                                    {
                                      OUTLINED_FUNCTION_18_1();
                                      if ((v669 & 1) == 0 || !v664[260])
                                      {
                                        goto LABEL_498;
                                      }

                                      v670 = 0;
                                      v671 = 0;
                                      v672 = 0;
                                      v673 = *(a6 + 248);
                                      v674 = v641 + 3424;
                                      v675 = a6 + 472;
                                      v676 = v664[265];
                                      v677 = 1 << (v676 - 1);
                                      v678 = v677 - 1;
                                      v679 = 0xFFFFFFFFLL;
                                      v535 = 328;
                                      v680 = -1;
                                      do
                                      {
                                        if (v676)
                                        {
                                          v536 = *(v674 + 328 * *(v675 + 4 * v670) + 16);
                                          v538 = (v536 - v673) & v678;
                                          v537 = v538 - ((v536 - v673) & v677);
                                          if (v537 < 1)
                                          {
                                            if ((v537 & 0x80000000) != 0)
                                            {
                                              if (v680 == -1 || (v538 = (v536 - v680) & v678, v537 = (v536 - v680) & v677, v538 > v537))
                                              {
                                                v680 = *(v674 + 328 * *(v675 + 4 * v670) + 16);
                                                v672 = v670;
                                              }
                                            }
                                          }

                                          else if (v679 == -1 || (v538 = (v679 - v536) & v678, v537 = (v679 - v536) & v677, v538 > v537))
                                          {
                                            v679 = *(v674 + 328 * *(v675 + 4 * v670) + 16);
                                            v671 = v670;
                                          }
                                        }

                                        ++v670;
                                      }

                                      while (v670 != 7);
                                      if (v680 != -1 && v679 != -1)
                                      {
                                        goto LABEL_492;
                                      }

                                      if (v680 == -1)
                                      {
                                        goto LABEL_498;
                                      }

                                      v682 = 0;
                                      v671 = 0;
                                      v683 = -1;
                                      v679 = 328;
                                      do
                                      {
                                        if (v676)
                                        {
                                          v535 = *(v674 + 328 * *(v675 + 4 * v682) + 16);
                                          v537 = (v535 - v680) & v678;
                                          v536 = (v535 - v680) & v677;
                                          if (v537 < v536)
                                          {
                                            if (v683 == -1 || (v537 = (v535 - v683) & v678, v536 = (v535 - v683) & v677, v537 > v536))
                                            {
                                              v683 = *(v674 + 328 * *(v675 + 4 * v682) + 16);
                                              v671 = v682;
                                            }
                                          }
                                        }

                                        ++v682;
                                      }

                                      while (v682 != 7);
                                      if (v683 == -1)
                                      {
LABEL_498:
                                        v666 = 0;
                                      }

                                      else
                                      {
LABEL_492:
                                        if (v672 >= v671)
                                        {
                                          v684 = v671;
                                        }

                                        else
                                        {
                                          v684 = v672;
                                        }

                                        *(a6 + 1408) = v684;
                                        if (v672 <= v671)
                                        {
                                          v672 = v671;
                                        }

                                        *(a6 + 1412) = v672;
                                        *(a6 + 1400) = 1;
                                        v685 = OUTLINED_FUNCTION_5_7(v679, v535, v536, v537, v538, v539, v540, v541, v1380, v1460, v1540, v1621, v1701, v1781, v1862, v1940, v2015, v2090, v2166, v2240, v2316, v2389, v2440);
                                        v666 = av1_get_bits(v685, v686);
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v666 = 0;
                                    *(a6 + 1396) = 0;
                                  }

                                  *(a6 + 1404) = v666;
                                  if (!*(a6 + 284) && (OUTLINED_FUNCTION_18_1(), (v687 & 1) != 0))
                                  {
                                    v688 = v664[258];
                                    if (v688)
                                    {
                                      v666 = OUTLINED_FUNCTION_3_8(&v2440);
                                    }
                                  }

                                  else
                                  {
                                    v688 = 0;
                                  }

                                  *(a6 + 1416) = v688;
                                  v689 = OUTLINED_FUNCTION_5_7(v666, v535, v536, v537, v538, v539, v540, v541, v1380, v1460, v1540, v1621, v1701, v1781, v1862, v1940, v2015, v2090, v2166, v2240, v2316, v2389, v2440);
                                  *(a6 + 1420) = av1_get_bits(v689, v690);
                                  for (j = 1424; j != 1676; j += 36)
                                  {
                                    v692 = a6 + j;
                                    *v692 = dav1d_default_wm_params;
                                    *(v692 + 16) = *&dword_197165668;
                                    *(v692 + 32) = 0;
                                  }

                                  OUTLINED_FUNCTION_18_1();
                                  if (v701)
                                  {
                                    v702 = v1759 + 3424;
                                    v703 = (a6 + 1448);
                                    v704 = 1424;
                                    while (1)
                                    {
                                      v705 = OUTLINED_FUNCTION_5_7(bits_subexp, v694, v695, v696, v697, v698, v699, v700, v1359, v1437, v1517, v1597, v1678, v1759, v1838, v1920, v1995, v2070, v2146, v2225, v2296, v2371, v2440);
                                      bits_subexp = av1_get_bits(v705, v706);
                                      if (bits_subexp)
                                      {
                                        break;
                                      }

                                      *(v703 - 6) = 0;
LABEL_529:
                                      v703 += 9;
                                      v704 += 36;
                                      if (v704 == 1676)
                                      {
                                        goto LABEL_530;
                                      }
                                    }

                                    v707 = OUTLINED_FUNCTION_5_7(bits_subexp, v694, v695, v696, v697, v698, v699, v700, v1359, v1437, v1517, v1597, v1678, v1759, v1838, v1920, v1995, v2070, v2146, v2225, v2296, v2371, v2440);
                                    if (av1_get_bits(v707, v708))
                                    {
                                      v709 = 2;
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_4_8(&v2440);
                                      if (v334)
                                      {
                                        v709 = 3;
                                      }

                                      else
                                      {
                                        v709 = 1;
                                      }
                                    }

                                    *(v703 - 6) = v709;
                                    v710 = *(a6 + 304);
                                    v711 = &dav1d_default_wm_params;
                                    if (v710 != 7)
                                    {
                                      v712 = *(v702 + 328 * *(a6 + 472 + 4 * v710) + 8);
                                      if (!v712)
                                      {
                                        return 4294954584;
                                      }

                                      v711 = (v712 + v704);
                                    }

                                    if (v709 <= 1)
                                    {
                                      if (*(a6 + 500))
                                      {
                                        LODWORD(v409) = 9;
                                      }

                                      else
                                      {
                                        LODWORD(v409) = 8;
                                      }

                                      if (*(a6 + 500))
                                      {
                                        v715 = 13;
                                      }

                                      else
                                      {
                                        v715 = 14;
                                      }

                                      v713 = *(v703 - 3);
                                      v714 = *(v703 - 2);
                                    }

                                    else
                                    {
                                      LODWORD(v409) = 12;
                                      v713 = 2 * av1_get_bits_subexp(&v2440, (v711[3] - 0x10000) >> 1, 12) + 0x10000;
                                      *(v703 - 3) = v713;
                                      v714 = 2 * OUTLINED_FUNCTION_21_1(v711[4], v1359, v1437, v1517, v1597, v1678, v1759, v1838, v1920, v1995, v2070, v2146, v2225, v2296, v2371);
                                      *(v703 - 2) = v714;
                                      if (v709 == 3)
                                      {
                                        *(v703 - 1) = 2 * OUTLINED_FUNCTION_21_1(v711[5], v1359, v1437, v1517, v1597, v1678, v1759, v1838, v1920, v1995, v2070, v2146, v2225, v2296, v2371);
                                        v713 = 2 * OUTLINED_FUNCTION_21_1(v711[6] - 0x10000, v1390, v1470, v1550, v1631, v1711, v1791, v1872, v1950, v2025, v2100, v2176, v2250, v2326, v2399) + 0x10000;
                                        v715 = 10;
LABEL_528:
                                        *v703 = v713;
                                        *(v703 - 5) = av1_get_bits_subexp(&v2440, v711[1] >> v715, v409) << v715;
                                        bits_subexp = av1_get_bits_subexp(&v2440, v711[2] >> v715, v409);
                                        *(v703 - 4) = bits_subexp << v715;
                                        v92 = v2225;
                                        v71 = HIDWORD(v1920);
                                        goto LABEL_529;
                                      }

                                      v715 = 10;
                                    }

                                    *(v703 - 1) = -v714;
                                    goto LABEL_528;
                                  }

LABEL_530:
                                  v716 = v2371;
                                  if (v2371[274] && (*v1597 || *(a6 + 280)))
                                  {
                                    v717 = OUTLINED_FUNCTION_3_8(&v2440);
                                    *(a6 + 224) = v718;
                                    v13 = v1759;
                                    if (v717)
                                    {
                                      OUTLINED_FUNCTION_9_4(&v2440, 0x10u);
                                      OUTLINED_FUNCTION_24_0();
                                      if (v727 == 1)
                                      {
                                        v719 = OUTLINED_FUNCTION_3_8(&v2440);
                                        *(a6 + 228) = v728;
                                        if (!v719)
                                        {
                                          v729 = OUTLINED_FUNCTION_10_3(v719, v720, v721, v722, v723, v724, v725, v726, v1359, v1437, v1517, v1597, v1678, v1759, v1838, v1920, v1995, v2070, v2146, v2225, v2296, v2371);
                                          v730 = 472;
                                          v29 = 4294954584;
                                          while (*(a6 + v730) != v729)
                                          {
                                            v730 += 4;
                                            if (v730 == 500)
                                            {
                                              return v29;
                                            }
                                          }

                                          v1273 = *(v13 + 328 * v729 + 3432);
                                          if (!v1273)
                                          {
                                            return 4294954584;
                                          }

                                          uleb128 = memcpy(a6, v1273, 0xE0uLL);
                                          *a6 = v409;
                                          goto LABEL_542;
                                        }
                                      }

                                      else
                                      {
                                        *(a6 + 228) = 1;
                                      }

                                      *a6 = v409;
                                      v788 = OUTLINED_FUNCTION_14_1(v719, v720, v721, v722, v723, v724, v725, v726, v1359, v1437, v1517, v1597, v1678, v1759, v1838, v1920, v1995, v2070, v2146, v2225, v2296, v2371);
                                      *(a6 + 4) = v788;
                                      if (v788 > 14)
                                      {
                                        return 4294954584;
                                      }

                                      v796 = v788;
                                      if (v788 >= 1)
                                      {
                                        v797 = 0;
                                        v798 = (a6 + 9);
                                        do
                                        {
                                          v799 = OUTLINED_FUNCTION_11_2(v788, v789, v790, v791, v792, v793, v794, v795, v1391, v1471, v1551, v1632, v1712, v1792, v1873, v1951, v2026, v2101, v2177, v2251, v2327, v2400);
                                          *(v798 - 1) = v799;
                                          if (v797)
                                          {
                                            if (*(v798 - 3) >= v799)
                                            {
                                              return 4294954584;
                                            }
                                          }

                                          v788 = OUTLINED_FUNCTION_11_2(v799, v800, v801, v802, v803, v804, v805, v806, v1392, v1472, v1552, v1633, v1713, v1793, v1874, v1952, v2027, v2102, v2178, v2252, v2328, v2401);
                                          *v798 = v788;
                                          v798 += 2;
                                        }

                                        while (v796 != ++v797);
                                      }

                                      if (v716[271])
                                      {
                                        *(a6 + 36) = 0;
                                        v1875 = a6 + 36;
                                      }

                                      else
                                      {
                                        v788 = OUTLINED_FUNCTION_3_8(&v2440);
                                        *(a6 + 36) = v1203;
                                        v1875 = a6 + 36;
                                        if (!v788 && (v716[270] != 1 || v796 || v716[269] != 1))
                                        {
                                          v1304 = 0;
                                          v1305 = 1;
                                          while (1)
                                          {
                                            v1306 = v1305;
                                            v788 = OUTLINED_FUNCTION_14_1(v788, v789, v790, v791, v792, v793, v794, v795, v1391, v1471, v1551, v1632, v1712, v1792, v1875, v1951, v2026, v2101, v2177, v2251, v2327, v2400);
                                            *(a6 + 40 + 4 * v1304) = v788;
                                            if (v788 > 10)
                                            {
                                              return 4294954584;
                                            }

                                            if (v788 >= 1)
                                            {
                                              break;
                                            }

LABEL_797:
                                            v1305 = 0;
                                            v1304 = 1;
                                            if ((v1306 & 1) == 0)
                                            {
                                              v716 = v2400;
                                              goto LABEL_721;
                                            }
                                          }

                                          v1307 = 0;
                                          v1308 = v788;
                                          v1309 = (a6 + 49 + 20 * v1304);
                                          while (1)
                                          {
                                            v1310 = OUTLINED_FUNCTION_11_2(v788, v789, v790, v791, v792, v793, v794, v795, v1391, v1471, v1551, v1632, v1712, v1792, v1875, v1951, v2026, v2101, v2177, v2251, v2327, v2400);
                                            *(v1309 - 1) = v1310;
                                            if (v1307)
                                            {
                                              if (*(v1309 - 3) >= v1310)
                                              {
                                                return 4294954584;
                                              }
                                            }

                                            v788 = OUTLINED_FUNCTION_11_2(v1310, v1311, v1312, v1313, v1314, v1315, v1316, v1317, v1431, v1511, v1591, v1672, v1752, v1832, v1914, v1990, v2065, v2140, v2216, v2290, v2366, v2439);
                                            *v1309 = v788;
                                            v1309 += 2;
                                            if (++v1307 >= v1308)
                                            {
                                              goto LABEL_797;
                                            }
                                          }
                                        }
                                      }

                                      *(a6 + 40) = 0;
LABEL_721:
                                      if (v716[269] == 1 && v716[270] == 1 && (*(a6 + 40) != 0) == (*(a6 + 44) == 0))
                                      {
                                        return 4294954584;
                                      }

                                      v1204 = OUTLINED_FUNCTION_8_4(v788, v789, v790, v791, v792, v793, v794, v795, v1391, v1471, v1551, v1632, v1712, v1792, v1875, v1951, v2026, v2101, v2177, v2251, v2327, v2400);
                                      *(a6 + 88) = v1204 + 8;
                                      v1212 = OUTLINED_FUNCTION_8_4(v1204, v1205, v1206, v1207, v1208, v1209, v1210, v1211, v1424, v1504, v1584, v1665, v1745, v1825, v1907, v1983, v2058, v2133, v2209, v2283, v2359, v2432);
                                      *(a6 + 92) = v1212;
                                      v1220 = v1212 + v1212 * v1212;
                                      v1221 = 2 * v1220;
                                      if (v796 && v1221 >= 1)
                                      {
                                        v1222 = (a6 + 96);
                                        v1223 = (2 * v1220);
                                        do
                                        {
                                          v1212 = OUTLINED_FUNCTION_11_2(v1212, v1213, v1214, v1215, v1216, v1217, v1218, v1219, v1425, v1505, v1585, v1666, v1746, v1826, v1908, v1984, v2059, v2134, v2210, v2284, v2360, v2433);
                                          *v1222++ = v1212 ^ 0x80;
                                          --v1223;
                                        }

                                        while (v1223);
                                      }

                                      v1224 = 0;
                                      v1225 = a6 + 40;
                                      v1226 = a6 + 120;
                                      v1227 = 1;
                                      do
                                      {
                                        v1228 = v1227;
                                        if (*(v1225 + 4 * v1224) || (OUTLINED_FUNCTION_24_0(), v1229))
                                        {
                                          v1230 = *(a6 + 4);
                                          if (v1230)
                                          {
                                            v1231 = (v1221 + 1);
                                          }

                                          else
                                          {
                                            v1231 = v1221;
                                          }

                                          if (v1231 >= 1)
                                          {
                                            v1232 = (v1226 + 28 * v1224);
                                            v1233 = v1231;
                                            do
                                            {
                                              v1212 = OUTLINED_FUNCTION_11_2(v1212, v1213, v1214, v1215, v1216, v1217, v1218, v1219, v1425, v1505, v1585, v1666, v1746, v1826, v1908, v1984, v2059, v2134, v2210, v2284, v2360, v2433);
                                              *v1232++ = v1212 ^ 0x80;
                                              --v1233;
                                            }

                                            while (v1233);
                                          }

                                          if (!v1230)
                                          {
                                            *(v1226 + 28 * v1224 + v1231) = 0;
                                          }
                                        }

                                        v1227 = 0;
                                        v1224 = 1;
                                      }

                                      while ((v1228 & 1) != 0);
                                      v1234 = OUTLINED_FUNCTION_8_4(v1212, v1213, v1214, v1215, v1216, v1217, v1218, v1219, v1425, v1505, v1585, v1666, v1746, v1826, v1908, v1984, v2059, v2134, v2210, v2284, v2360, v2433);
                                      *(a6 + 176) = (v1234 + 6);
                                      v1242 = OUTLINED_FUNCTION_8_4(v1234, v1235, v1236, v1237, v1238, v1239, v1240, v1241, v1426, v1506, v1586, v1667, v1747, v1827, v1909, v1985, v2060, v2135, v2211, v2285, v2361, v2434);
                                      v1250 = 0;
                                      *(a6 + 184) = v1242;
                                      v1251 = 1;
                                      v13 = v1828;
                                      v92 = v2286;
                                      do
                                      {
                                        v1252 = v1251;
                                        if (*(v1225 + 4 * v1250))
                                        {
                                          v1253 = OUTLINED_FUNCTION_11_2(v1242, v1243, v1244, v1245, v1246, v1247, v1248, v1249, v1427, v1507, v1587, v1668, v1748, v1828, v1910, v1986, v2061, v2136, v2212, v2286, v2362, v2435);
                                          *(a6 + 188 + 4 * v1250) = v1253 - 128;
                                          *(a6 + 196 + 4 * v1250) = OUTLINED_FUNCTION_11_2(v1253, v1254, v1255, v1256, v1257, v1258, v1259, v1260, v1428, v1508, v1588, v1669, v1749, v1829, v1911, v1987, v2062, v2137, v2213, v2287, v2363, v2436) - 128;
                                          v1242 = av1_get_bits(&v2440, 9u);
                                          *(a6 + 204 + 4 * v1250) = v1242 - 256;
                                        }

                                        v1251 = 0;
                                        v1250 = 1;
                                      }

                                      while ((v1252 & 1) != 0);
                                      v1261 = OUTLINED_FUNCTION_5_7(v1242, v1243, v1244, v1245, v1246, v1247, v1248, v1249, v1427, v1507, v1587, v1668, v1748, v1828, v1910, v1986, v2061, v2136, v2212, v2286, v2362, v2435, v2440);
                                      v1263 = av1_get_bits(v1261, v1262);
                                      *(a6 + 212) = v1263;
                                      v1271 = OUTLINED_FUNCTION_5_7(v1263, v1264, v1265, v1266, v1267, v1268, v1269, v1270, v1429, v1509, v1589, v1670, v1750, v1830, v1912, v1988, v2063, v2138, v2214, v2288, v2364, v2437, v2440);
                                      uleb128 = av1_get_bits(v1271, v1272);
                                      *(a6 + 216) = uleb128;
                                      v71 = HIDWORD(v1920);
LABEL_542:
                                      *(v13 + 3328) = a6;
                                      *(a6 + 252) = v71;
                                      *(a6 + 256) = HIDWORD(v2146);
                                      *(v92 + 12) = 0;
                                      *(v92 + 16) = 0;
                                      if (HIDWORD(v2296) != 6)
                                      {
                                        v731 = OUTLINED_FUNCTION_5_7(uleb128, v63, v155, v65, v66, v67, v68, v69, v1359, v1437, v1517, v1597, v1678, v1759, v1838, v1920, v1995, v2070, v2146, v2225, v2296, v2371, v2440);
                                        av1_get_bits(v731, v732);
                                        v29 = check_for_overrun(&v2440, v1920, v1753);
                                        if (v29)
                                        {
                                          return v29;
                                        }

                                        v91 = 0;
                                        LODWORD(v87) = v1753;
LABEL_547:
                                        v88 = v1920;
LABEL_829:
                                        if (!*(v13 + 3312))
                                        {
                                          goto LABEL_838;
                                        }

                                        v1339 = *(v13 + 3328);
                                        if (!v1339)
                                        {
                                          goto LABEL_838;
                                        }

                                        if (!v1339[65])
                                        {
                                          if (*(v2225 + 16) != v1339[139] * v1339[135])
                                          {
                                            goto LABEL_838;
                                          }

                                          if (!*(v2225 + 12))
                                          {
                                            v91 |= 0x40000000u;
                                            goto LABEL_838;
                                          }

                                          if (a9 == 1)
                                          {
                                            v1340 = v88;
                                            dav1d_submit_frame(v13);
                                            v88 = v1340;
                                          }
                                        }

                                        *(v13 + 3328) = 0;
LABEL_838:
                                        if (*(&v2441 + 1) && !v29)
                                        {
                                          if (a10)
                                          {
                                            *a10 = v87 + (v88 >> 3);
                                          }

                                          v29 = 0;
                                          if (a11)
                                          {
                                            *a11 |= v91;
                                          }
                                        }

                                        return v29;
                                      }

                                      if (*(a6 + 260))
                                      {
                                        v91 = 0;
                                        v29 = 0;
                                        *(v13 + 3328) = 0;
                                        LODWORD(v87) = HIDWORD(v1678);
                                        v88 = v1920;
                                        goto LABEL_838;
                                      }

                                      v733 = v2441;
                                      LODWORD(v2441) = 0;
                                      *(&v2440 + 1) = 0;
                                      v87 = HIDWORD(v1678);
                                      v88 = v1920;
                                      if (v733 <= 7)
                                      {
                                        LOBYTE(v15) = BYTE4(v1437);
                                        LODWORD(v89) = v1517;
                                        if (*(a6 + 556) * *(a6 + 540))
                                        {
                                          v91 = 4;
LABEL_551:
                                          if ((v15 & 4) == 0)
                                          {
LABEL_552:
                                            v29 = 0;
                                            goto LABEL_829;
                                          }

                                          v734 = *(v13 + 3328);
                                          if (v734)
                                          {
                                            v735 = *(v2225 + 12);
                                            if (v735)
                                            {
                                              v736 = v88;
                                            }

                                            else
                                            {
                                              v736 = v88;
                                              if (*(v2225 + 8) < 1)
                                              {
                                                uleb128 = malloc_type_realloc(*v2225, 0x48uLL, 0x1070040C633F987uLL);
                                                if (!uleb128)
                                                {
                                                  return 4294954584;
                                                }

                                                *v2225 = uleb128;
                                                v739 = uleb128 + 72 * *(v2225 + 12);
                                                *(v739 + 64) = 0;
                                                *(v739 + 32) = 0u;
                                                *(v739 + 48) = 0u;
                                                *v739 = 0u;
                                                *(v739 + 16) = 0u;
                                                v735 = *(v2225 + 12);
                                                *(v2225 + 8) = v735 + 1;
                                                v734 = *(v13 + 3328);
                                                if (!v734)
                                                {
                                                  return 4294954584;
                                                }
                                              }

                                              else
                                              {
                                                v735 = 0;
                                              }
                                            }

                                            v740 = v734[139] * v734[135];
                                            v741 = v740 - 1;
                                            if (v740 > 1 && (v742 = OUTLINED_FUNCTION_5_7(uleb128, v63, v87, v65, v66, v67, v68, v69, v1359, v1437, v1517, v1597, v1678, v1759, v1838, v1920, v1995, v2070, v2146, v2225, v2296, v2371, v2440), v744 = v743, LODWORD(v87) = v743, av1_get_bits(v742, v745)))
                                            {
                                              v746 = v734[134];
                                              v747 = v734[138];
                                              v748 = av1_get_bits(&v2440, v747 + v746);
                                              v749 = *v2225;
                                              v750 = v735;
                                              v751 = *v2225 + 72 * v735;
                                              *(v751 + 64) = v748;
                                              LODWORD(v87) = v744;
                                              *(v751 + 68) = av1_get_bits(&v2440, v747 + v746);
                                            }

                                            else
                                            {
                                              v749 = *v2225;
                                              v750 = v735;
                                              v752 = *v2225 + 72 * v735;
                                              *(v752 + 64) = 0;
                                              *(v752 + 68) = v741;
                                            }

                                            v753 = &v749[72 * v750];
                                            v754 = *(v753 + 16);
                                            if (v754 > *(v753 + 17) || v754 != *(v2225 + 16))
                                            {
                                              *(v2225 + 12) = 0;
                                              *(v2225 + 16) = 0;
                                            }

                                            v755 = v2441;
                                            LODWORD(v2441) = 0;
                                            *(&v2440 + 1) = 0;
                                            if (v755 <= 7)
                                            {
                                              v221 = check_for_overrun(&v2440, v736, v87);
                                              if (v221)
                                              {
                                                return v221;
                                              }

                                              v756 = 8 * (DWORD2(v2441) - v2442) - v2441;
                                              if (v89 + v87 < v756 >> 3)
                                              {
                                                fig_log_get_emitter("com.apple.coremedia", "");
                                                OUTLINED_FUNCTION_1_20();
                                                v29 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1324, 0xFFFFCE58uLL, "<<<< AV1Bridge >>>>", 0xBC5, v1325, v1326, v1327, v1359);
                                                v88 = v736;
                                                goto LABEL_838;
                                              }

                                              v757 = *v2225;
                                              v758 = *(v2225 + 12);
                                              v759 = v758.i32[0];
                                              v760 = *v2225 + 72 * v758.i32[0];
                                              v761 = v756 >> 3;
                                              v762 = *(v760 + 68) - *(v760 + 64) + 1;
                                              *v760 = *(&v2441 + 1);
                                              *(v760 + 8) = v89 + v87 - v761;
                                              v763.i32[0] = 1;
                                              v763.i32[1] = v762;
                                              v764 = vadd_s32(v763, v758);
                                              *(v2225 + 12) = v764;
                                              if (v759 < 0)
                                              {
LABEL_597:
                                                v29 = 0;
                                                v91 |= 8u;
                                                v88 = v736;
                                                goto LABEL_829;
                                              }

                                              v765 = 0;
                                              v766 = v2225 + 536;
                                              v767 = v761 + v2070;
                                              v768 = v2225 + 24;
                                              while (1)
                                              {
                                                v769 = &v757[9 * v765];
                                                v770 = *(v769 + 16);
                                                v771 = *(v769 + 17);
                                                if (v770 <= v771)
                                                {
                                                  break;
                                                }

LABEL_596:
                                                if (++v765 == v764.u32[0])
                                                {
                                                  goto LABEL_597;
                                                }
                                              }

                                              v773 = *v769;
                                              v772 = v757[9 * v765 + 1];
                                              while (1)
                                              {
                                                v774 = 8 * v770;
                                                if (v770 == v771)
                                                {
                                                  *(v766 + 8 * v771) = v772;
                                                  v773 += v772;
                                                  if (v770 < 1)
                                                  {
                                                    v772 = 0;
                                                    v777 = *(v13 + 3328);
LABEL_594:
                                                    v787 = (v767 + *(v777 + 524));
                                                    goto LABEL_595;
                                                  }

                                                  v772 = 0;
                                                  v775 = 0;
                                                  v776 = *(v766 + v774 - 8) + *(v768 + v774 - 8);
                                                }

                                                else
                                                {
                                                  v777 = *(v13 + 3328);
                                                  v778 = *(v777 + 524);
                                                  v779 = v772 >= v778;
                                                  v780 = v772 - v778;
                                                  if (!v779)
                                                  {
                                                    return 4294954584;
                                                  }

                                                  if (v778)
                                                  {
                                                    v781 = 0;
                                                    v782 = 0;
                                                    v783 = (v778 - 1);
                                                    v784 = v773;
                                                    do
                                                    {
                                                      v785 = *v784++;
                                                      v782 |= (v785 << v781);
                                                      v781 += 8;
                                                      LODWORD(v778) = v778 - 1;
                                                    }

                                                    while (v778);
                                                    v773 += v783 + 1;
                                                    v786 = v782 + 1;
                                                  }

                                                  else
                                                  {
                                                    v786 = 1;
                                                  }

                                                  v779 = v780 >= v786;
                                                  v772 = v780 - v786;
                                                  if (!v779)
                                                  {
                                                    return 4294954584;
                                                  }

                                                  *(v766 + 8 * v770) = v786;
                                                  v773 += v786;
                                                  if (v770 <= 0)
                                                  {
                                                    goto LABEL_594;
                                                  }

                                                  v776 = *(v766 + v774 - 8) + *(v768 + v774 - 8);
                                                  v775 = *(v777 + 524);
                                                }

                                                v787 = v776 + v775;
LABEL_595:
                                                *(v768 + 8 * v770++) = v787;
                                                if (v771 + 1 == v770)
                                                {
                                                  goto LABEL_596;
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }

                                      return 4294954584;
                                    }
                                  }

                                  else
                                  {
                                    *(a6 + 224) = 0;
                                    v13 = v1759;
                                  }

                                  bzero(a6, 0xE0uLL);
                                  goto LABEL_542;
                                }

                                *(a6 + 1384) = 8;
LABEL_455:
                                v71 = HIDWORD(v1940);
                                goto LABEL_456;
                              }

LABEL_454:
                              *(a6 + 1372) = 0;
                              *(a6 + 1376) = 0;
                              goto LABEL_455;
                            }

                            v858 = (a6 + 1340);
                            v409 = (1 << v654);
                            do
                            {
                              v654 = OUTLINED_FUNCTION_19_1(v654, v535, v536, v537, v538, v539, v540, v541, v1380, v1460, v1540, v1621, v1701, v1781, v1862, v1940, v2015, v2090, v2166, v2240, v2316, v2389);
                              *(v858 - 8) = v654;
                              if (!v664[271])
                              {
                                v654 = OUTLINED_FUNCTION_19_1(v654, v535, v536, v537, v538, v539, v540, v541, v1380, v1460, v1540, v1621, v1701, v1781, v1862, v1940, v2015, v2090, v2166, v2240, v2316, v2389);
                                *v858 = v654;
                              }

                              ++v858;
                              --v409;
                            }

                            while (v409);
LABEL_450:
                            if (v663 && !*(a6 + 456))
                            {
                              goto LABEL_454;
                            }

                            goto LABEL_452;
                          }

LABEL_449:
                          *(a6 + 1304) = 0;
                          *(a6 + 1340) = 0;
                          goto LABEL_450;
                        }

                        v843 = 8;
                        do
                        {
                          v844 = OUTLINED_FUNCTION_5_7(v654, v535, v536, v537, v538, v539, v540, v541, v1380, v1460, v1540, v1621, v1701, v1781, v1862, v1940, v2015, v2090, v2166, v2240, v2316, v2389, v2440);
                          v654 = av1_get_bits(v844, v845);
                          if (v654)
                          {
                            v654 = OUTLINED_FUNCTION_13_2(v654, v535, v536, v537, v538, v539, v540, v541, v1380, v1460, v1540, v1621, v1701, v1781, v1862, v1940, v2015, v2090, v2166, v2240, v2316, v2389);
                          }

                          --v843;
                        }

                        while (v843);
                        v846 = 1;
                        do
                        {
                          v847 = v846;
                          v848 = OUTLINED_FUNCTION_5_7(v654, v535, v536, v537, v538, v539, v540, v541, v1380, v1460, v1540, v1621, v1701, v1781, v1862, v1940, v2015, v2090, v2166, v2240, v2316, v2389, v2440);
                          v654 = av1_get_bits(v848, v849);
                          if (v654)
                          {
                            v654 = OUTLINED_FUNCTION_13_2(v654, v535, v536, v537, v538, v539, v540, v541, v1380, v1460, v1540, v1621, v1701, v1781, v1862, v1940, v2015, v2090, v2166, v2240, v2316, v2389);
                          }

                          v846 = 0;
                        }

                        while ((v847 & 1) != 0);
                      }

                      if (v663)
                      {
                        goto LABEL_449;
                      }

                      goto LABEL_447;
                    }

LABEL_427:
                    *(a6 + 1216) = 0;
                    goto LABEL_428;
                  }

LABEL_426:
                  *(a6 + 1212) = 0;
                  goto LABEL_427;
                }

LABEL_425:
                *(a6 + 1208) = 0;
                v641 = v1781;
                goto LABEL_426;
              }
            }

            v558 = 0;
            *(a6 + 1136) = 0xFFFFFFFF00000000;
            v559 = (a6 + 908);
            do
            {
              v560 = OUTLINED_FUNCTION_5_7(v534, v535, v536, v537, v538, v539, v540, v541, v1380, v1460, v1540, v1621, v1701, v1781, v1862, v1940, v2015, v2090, v2166, v2240, v2316, v2389, v2440);
              v562 = av1_get_bits(v560, v561);
              if (v562)
              {
                v562 = av1_get_bits(&v2440, 9u);
                v570 = (v562 << 23) >> 23;
                *(a6 + 1140) = v558;
              }

              else
              {
                v570 = 0;
              }

              *(v559 - 7) = v570;
              v571 = OUTLINED_FUNCTION_5_7(v562, v563, v564, v565, v566, v567, v568, v569, v1382, v1462, v1542, v1623, v1703, v1783, v1864, v1942, v2017, v2092, v2168, v2242, v2318, v2391, v2440);
              v573 = av1_get_bits(v571, v572);
              if (v573)
              {
                v573 = OUTLINED_FUNCTION_7_5(&v2440);
                *(a6 + 1140) = v558;
              }

              else
              {
                v581 = 0;
              }

              *(v559 - 6) = v581;
              v582 = OUTLINED_FUNCTION_5_7(v573, v574, v575, v576, v577, v578, v579, v580, v1383, v1463, v1543, v1624, v1704, v1784, v1865, v1943, v2018, v2093, v2169, v2243, v2319, v2392, v2440);
              v584 = av1_get_bits(v582, v583);
              if (v584)
              {
                v584 = OUTLINED_FUNCTION_7_5(&v2440);
                *(a6 + 1140) = v558;
              }

              else
              {
                v592 = 0;
              }

              *(v559 - 5) = v592;
              v593 = OUTLINED_FUNCTION_5_7(v584, v585, v586, v587, v588, v589, v590, v591, v1384, v1464, v1544, v1625, v1705, v1785, v1866, v1944, v2019, v2094, v2170, v2244, v2320, v2393, v2440);
              v595 = av1_get_bits(v593, v594);
              if (v595)
              {
                v595 = OUTLINED_FUNCTION_7_5(&v2440);
                *(a6 + 1140) = v558;
              }

              else
              {
                v603 = 0;
              }

              *(v559 - 4) = v603;
              v604 = OUTLINED_FUNCTION_5_7(v595, v596, v597, v598, v599, v600, v601, v602, v1385, v1465, v1545, v1626, v1706, v1786, v1867, v1945, v2020, v2095, v2171, v2245, v2321, v2394, v2440);
              v606 = av1_get_bits(v604, v605);
              if (v606)
              {
                v606 = OUTLINED_FUNCTION_7_5(&v2440);
                *(a6 + 1140) = v558;
              }

              else
              {
                v614 = 0;
              }

              *(v559 - 3) = v614;
              v615 = OUTLINED_FUNCTION_5_7(v606, v607, v608, v609, v610, v611, v612, v613, v1386, v1466, v1546, v1627, v1707, v1787, v1868, v1946, v2021, v2096, v2172, v2246, v2322, v2395, v2440);
              v617 = av1_get_bits(v615, v616);
              if (v617)
              {
                v625 = OUTLINED_FUNCTION_10_3(v617, v618, v619, v620, v621, v622, v623, v624, v1387, v1467, v1547, v1628, v1708, v1788, v1869, v1947, v2022, v2097, v2173, v2247, v2323, v2396);
                *(a6 + 1140) = v558;
                *(a6 + 1136) = 1;
              }

              else
              {
                v625 = 0xFFFFFFFFLL;
              }

              *(v559 - 2) = v625;
              v626 = OUTLINED_FUNCTION_5_7(v625, v618, v619, v620, v621, v622, v623, v624, v1387, v1467, v1547, v1628, v1708, v1788, v1869, v1947, v2022, v2097, v2173, v2247, v2323, v2396, v2440);
              v628 = av1_get_bits(v626, v627);
              *(v559 - 1) = v628;
              if (v628)
              {
                *(a6 + 1140) = v558;
                *(a6 + 1136) = 1;
              }

              v636 = OUTLINED_FUNCTION_5_7(v628, v629, v630, v631, v632, v633, v634, v635, v1388, v1468, v1548, v1629, v1709, v1789, v1870, v1948, v2023, v2098, v2174, v2248, v2324, v2397, v2440);
              v534 = av1_get_bits(v636, v637);
              *v559 = v534;
              if (v534)
              {
                *(a6 + 1140) = v558;
                *(a6 + 1136) = 1;
              }

              ++v558;
              v559 += 8;
            }

            while (v558 != 8);
          }

          else
          {
            bzero((a6 + 880), 0x108uLL);
            for (k = 0; k != 256; k += 32)
            {
              *(a6 + 900 + k) = -1;
            }
          }

          if (v453)
          {
            goto LABEL_419;
          }

          goto LABEL_425;
        }

        *(a6 + 464) = 0;
        if (v264 == 3)
        {
          v274 = 255;
        }

        else
        {
          v274 = OUTLINED_FUNCTION_11_2(v256, v257, v258, v259, v260, v261, v262, v263, v1368, v1447, v1527, v1608, v1688, v1768, v1849, v1930, v2005, v2080, v2156, v2230, v2306, v2379);
        }

        *(a6 + 440) = v274;
        if (v223)
        {
          if (!v245)
          {
            goto LABEL_199;
          }

          v275 = v2379[265];
          v276 = 8;
          do
          {
            v274 = av1_get_bits(&v2440, v275);
            --v276;
          }

          while (v276);
        }

        if (v245)
        {
          v277 = 1;
          v274 = OUTLINED_FUNCTION_3_8(&v2440);
          *(a6 + 468) = v278;
          if (v274)
          {
            v279 = OUTLINED_FUNCTION_10_3(v274, v257, v258, v259, v260, v261, v262, v263, v1368, v1447, v1527, v1608, v1688, v1768, v1849, v1930, v2005, v2080, v2156, v2230, v2306, v2379);
            v280 = v279;
            v281 = a6 + 472;
            *(a6 + 472) = v279;
            *(a6 + 476) = -1;
            v289 = OUTLINED_FUNCTION_10_3(v279, v282, v283, v284, v285, v286, v287, v288, v1369, v1448, v1528, v1609, v1689, v1769, v1850, v1931, v2006, v2081, v2157, v2231, v2307, v2380);
            v290 = 0;
            *(a6 + 484) = v289;
            *(a6 + 496) = -1;
            *(a6 + 488) = -1;
            v291 = v2379[265];
            v292 = 1 << (v291 - 1);
            v293 = v239;
            v294 = (v239 + 3440);
            do
            {
              if (!*(v294 - 1))
              {
                return 4294954584;
              }

              if (v291)
              {
                v295 = ((*v294 - v95) & (v292 - 1)) - ((*v294 - v95) & v292);
              }

              else
              {
                v295 = 0;
              }

              *(&v2446 + v290) = v295 + v292;
              v290 += 4;
              v294 += 82;
            }

            while (v290 != 32);
            v296 = 0;
            v2443 = 0u;
            v2444 = 0u;
            v297 = &v2443;
            *(&v2443 + v280) = 1;
            *(&v2443 + v289) = 1;
            v298 = &v2446;
            v299 = -1;
            v300 = v2379;
            do
            {
              v301 = *(v298 + v296);
              if (*(v297 + v296))
              {
                v302 = 1;
              }

              else
              {
                v302 = v301 < v292;
              }

              if (!v302 && v301 >= v299)
              {
                *(a6 + 496) = v296;
              }

              OUTLINED_FUNCTION_25_0();
            }

            while (!v334);
            if (v299 != -1)
            {
              *(&v2443 + v304) = 1;
            }

            OUTLINED_FUNCTION_17_0();
            do
            {
              v310 = *(v308 + 4 * v306);
              if (*(v309 + 4 * v306))
              {
                v311 = 1;
              }

              else
              {
                v311 = v310 < v305;
              }

              if (!v311 && v310 < v307)
              {
                *(a6 + 488) = v306;
              }

              OUTLINED_FUNCTION_25_0();
            }

            while (!v334);
            if (v307 != 0x7FFFFFFF)
            {
              *(&v2443 + v313) = 1;
            }

            OUTLINED_FUNCTION_17_0();
            do
            {
              v319 = *(v317 + 4 * v315);
              if (*(v318 + 4 * v315))
              {
                v320 = 1;
              }

              else
              {
                v320 = v319 < v314;
              }

              if (!v320 && v319 < v316)
              {
                *(a6 + 492) = v315;
              }

              OUTLINED_FUNCTION_25_0();
            }

            while (!v334);
            if (v316 != 0x7FFFFFFF)
            {
              *(&v2443 + v322) = 1;
            }

            for (m = 1; m != 7; ++m)
            {
              v324 = *(v281 + 4 * m);
              if (v324 < 0)
              {
                v325 = 0;
                v326 = -1;
                do
                {
                  v327 = *(&v2446 + v325);
                  if (*(&v2443 + v325))
                  {
                    v328 = 0;
                  }

                  else
                  {
                    v328 = v327 < v314;
                  }

                  if (v328 && v327 >= v326)
                  {
                    *(v281 + 4 * m) = v325;
                    v324 = v325;
                    v326 = v327;
                  }

                  ++v325;
                }

                while (v325 != 8);
                if (v326 != -1)
                {
                  *(&v2443 + v324) = 1;
                }
              }
            }

            do
            {
              OUTLINED_FUNCTION_25_0();
            }

            while (!v334);
            for (n = 0; n != 28; n += 4)
            {
              if ((*(v281 + n) & 0x80000000) != 0)
              {
                *(v281 + n) = v330;
              }
            }

            v277 = 0;
LABEL_201:
            for (ii = 472; ii != 500; ii += 4)
            {
              if (v277)
              {
                v274 = OUTLINED_FUNCTION_10_3(v274, v257, v258, v259, v260, v261, v262, v263, v1368, v1447, v1527, v1608, v1688, v1768, v1849, v1930, v2005, v2080, v2156, v2230, v2306, v2379);
                *(a6 + ii) = v274;
              }

              if (v300[250])
              {
                v274 = av1_get_bits(&v2440, v300[251]);
                v333 = *(v293 + 3424 + 328 * *(a6 + ii) + 8);
                if (!v333 || *(v333 + 268) != ((*(a6 + 268) + (1 << v300[252]) + ~v274) & ((1 << v300[252]) - 1)))
                {
                  return 4294954584;
                }
              }
            }

            if (v223)
            {
              v334 = 1;
            }

            else
            {
              v334 = v1447 == 0;
            }

            v335 = !v334;
            v336 = read_frame_size(v293, &v2440, a6, v300, v335);
            if (*(a6 + 296))
            {
              v344 = 0;
            }

            else
            {
              v336 = OUTLINED_FUNCTION_4_8(&v2440);
              v344 = !v334;
            }

            *(a6 + 500) = v344;
            v382 = OUTLINED_FUNCTION_5_7(v336, v337, v338, v339, v340, v341, v342, v343, v1368, v1447, v1527, v1608, v1688, v1768, v1849, v1930, v2005, v2080, v2156, v2230, v2306, v2379, v2440);
            v384 = av1_get_bits(v382, v383);
            if (v384)
            {
              v392 = 4;
            }

            else
            {
              v392 = OUTLINED_FUNCTION_8_4(v384, v385, v386, v387, v388, v389, v390, v391, v1372, v1451, v1531, v1612, v1692, v1772, v1853, v1932, v2007, v2082, v2158, v2232, v2308, v2381);
            }

            *(a6 + 504) = v392;
            v393 = OUTLINED_FUNCTION_5_7(v392, v385, v386, v387, v388, v389, v390, v391, v1372, v1451, v1531, v1612, v1692, v1772, v1853, v1932, v2007, v2082, v2158, v2232, v2308, v2381, v2440);
            frame_size = av1_get_bits(v393, v394);
            *(a6 + 508) = frame_size;
            if (!*(a6 + 284))
            {
              v357 = v300[262];
              if (!v357)
              {
                goto LABEL_254;
              }

              v357 = v300[260];
              if (!v357)
              {
                goto LABEL_254;
              }

              OUTLINED_FUNCTION_18_1();
              if (v474)
              {
                frame_size = OUTLINED_FUNCTION_3_8(&v2440);
                goto LABEL_254;
              }
            }

            v357 = 0;
            goto LABEL_254;
          }

LABEL_200:
          v293 = v239;
          v300 = v2379;
          goto LABEL_201;
        }

LABEL_199:
        *(a6 + 468) = 0;
        v277 = 1;
        goto LABEL_200;
      }

      uleb128 = OUTLINED_FUNCTION_9_4(&v2440, 3u);
      *(a6 + 264) = uleb128;
      if (v2371[242] && !v2371[240])
      {
        uleb128 = av1_get_bits(&v2440, v2371[246]);
        *(a6 + 272) = uleb128;
      }

      if (!v2371[250])
      {
        goto LABEL_542;
      }

      uleb128 = av1_get_bits(&v2440, v2371[252]);
      *(a6 + 268) = uleb128;
      v156 = *(v13 + 328 * a1 + 3432);
      if (v156)
      {
        if (*(v156 + 268) == uleb128)
        {
          goto LABEL_542;
        }
      }

      return v29;
    default:
      v29 = 0;
      v91 = 0x40000000;
      goto LABEL_829;
  }
}