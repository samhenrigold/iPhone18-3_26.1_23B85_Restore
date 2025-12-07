uint64_t spptUtil_registerClass(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

uint64_t _figAttachmentsRegisterStreamPlaylistSpecifiers()
{
  FigSessionDataSpecifierGetTypeID();
  FigRuntimeRegisterAttachmentBearerWithTypeID();
  FigContentKeySpecifierGetTypeID();
  FigRuntimeRegisterAttachmentBearerWithTypeID();
  FigMediaSegmentSpecifierGetTypeID();

  return FigRuntimeRegisterAttachmentBearerWithTypeID();
}

CFTypeRef sds_copyDictionaryOfAttachments(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 56);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void spptUtil_createAttachmentDictionaryIfNecessaryAndSetAttachment(__CFDictionary **a1, void *key, void *value)
{
  Mutable = *a1;
  if (!Mutable)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    *a1 = Mutable;
  }

  if (value)
  {

    CFDictionarySetValue(Mutable, key, value);
  }

  else
  {

    CFDictionaryRemoveValue(Mutable, key);
  }
}

CFTypeRef cks_copyDictionaryOfAttachments(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 80);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

CFTypeRef mss_copyDictionaryOfAttachments(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 152);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void rrs_finalize(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    CFRelease(v1);
  }
}

void drs_finalize(void *a1)
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

  v7 = a1[7];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[8];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[9];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[10];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[11];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = a1[14];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = a1[17];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = a1[18];
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = a1[19];
  if (v15)
  {

    CFRelease(v15);
  }
}

void cks_finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[10];
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t cks_equal(uint64_t a1, uint64_t a2)
{
  result = FigCFEqual();
  if (result)
  {
    return *(a1 + 16) == *(a2 + 16) && *(a1 + 32) == *(a2 + 32);
  }

  return result;
}

void mss_finalize(void *a1)
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

  v6 = a1[14];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[15];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[19];
  if (v8)
  {
    CFRelease(v8);
  }

  a1[17] = 0;
  a1[18] = 0;
}

uint64_t FigBufferedAirPlayOutputProxyGetClassID(uint64_t a1, uint64_t a2)
{
  if (FigBufferedAirPlayOutputProxyGetClassID_sRegisterFigBufferedAirPlayOutputProxyBaseTypeOnce != -1)
  {
    FigBufferedAirPlayOutputProxyGetClassID_cold_1();
  }

  return FigBufferedAirPlayOutputProxyGetClassID_sFigBufferedAirPlayOutputProxyClassID;
}

uint64_t __FigBufferedAirPlayOutputProxyGetClassID_block_invoke()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigBufferedAirPlayOutputProxyGetTypeID(uint64_t a1, uint64_t a2)
{
  if (FigBufferedAirPlayOutputProxyGetClassID_sRegisterFigBufferedAirPlayOutputProxyBaseTypeOnce != -1)
  {
    FigBufferedAirPlayOutputProxyGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t FigBufferedAirPlayOutputProxyCreate(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  v19 = 0;
  cf = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2)
  {
    FigBufferedAirPlayOutputProxyCreate_cold_7(&v21);
LABEL_31:
    v10 = v21;
    goto LABEL_12;
  }

  if (!a3)
  {
    FigBufferedAirPlayOutputProxyCreate_cold_6(&v21);
    goto LABEL_31;
  }

  if (FigBufferedAirPlayOutputProxyCreate_onceToken != -1)
  {
    FigBufferedAirPlayOutputProxyCreate_cold_1();
  }

  if (FigBufferedAirPlayOutputProxyGetClassID_sRegisterFigBufferedAirPlayOutputProxyBaseTypeOnce != -1)
  {
    FigBufferedAirPlayOutputProxyGetClassID_cold_1();
  }

  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    goto LABEL_11;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *MEMORY[0x1E695E480];
  *(DerivedStorage + 32) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  *(DerivedStorage + 24) = CFRetain(a2);
  *(DerivedStorage + 64) = FigSimpleMutexCreate();
  v9 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 48) = v9;
  if (!v9)
  {
    v10 = 4294954510;
    goto LABEL_12;
  }

  v6 = FigBufferedAirPlayOverlapLinearTimeMapperCreate(a1, *(DerivedStorage + 32), *(DerivedStorage + 24), (DerivedStorage + 96));
  if (v6 || (CMNotificationCenterGetDefaultLocalCenter(), v6 = FigNotificationCenterAddWeakListener(), v6))
  {
LABEL_11:
    v10 = v6;
    goto LABEL_12;
  }

  FigBufferedAirPlayOutputGetCMBaseObject();
  v13 = v12;
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v14)
  {
    v10 = 4294954514;
    goto LABEL_12;
  }

  v6 = v14(v13, @"LoggingID", a1, &v19);
  if (v6)
  {
    goto LABEL_11;
  }

  *DerivedStorage = 0;
  CFStringGetCString(v19, DerivedStorage, 20, 0x8000100u);
  FigBufferedAirPlayOutputGetCMBaseObject();
  v6 = CMBaseObjectCopyProperty(v15, @"SourceSampleBufferConsumer", a1, DerivedStorage + 40);
  if (v6)
  {
    goto LABEL_11;
  }

  if (qword_1ED4CA428 != -1)
  {
    FigBufferedAirPlayOutputProxyCreate_cold_3();
  }

  if (_MergedGlobals_16)
  {
    v6 = FigSampleBufferConsumerOPTSAutoOrderCreate(v8, *(DerivedStorage + 40), "SBCBAOProxyAutoOrder", (DerivedStorage + 88));
    if (v6)
    {
      goto LABEL_11;
    }
  }

  v16 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 80) = v16;
  if (!v16)
  {
    FigBufferedAirPlayOutputProxyCreate_cold_5(&v21);
    goto LABEL_31;
  }

  v17 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v16);
  *(DerivedStorage + 72) = v17;
  if (!v17)
  {
    FigBufferedAirPlayOutputProxyCreate_cold_4(&v21);
    goto LABEL_31;
  }

  v18 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (v18)
  {
    dispatch_set_context(*(DerivedStorage + 72), v18);
    dispatch_source_set_timer(*(DerivedStorage + 72), 0, 1000000000 * FigBufferedAirPlayOutputProxyCreate_sLinearDebugTriggerSeconds, 0x3B9ACA00uLL);
    dispatch_source_set_event_handler_f(*(DerivedStorage + 72), fbapop_debugPrintTimeIntervalReachedCallback);
    dispatch_source_set_cancel_handler_f(*(DerivedStorage + 72), FigCFRelease_1);
    dispatch_resume(*(DerivedStorage + 72));
    ++FigBufferedAirPlayOutputProxyCreate_idNumber;
    v10 = 0;
    *(DerivedStorage + 56) = FigCFNumberCreateUInt32();
    *(DerivedStorage + 104) = 0;
    *a3 = cf;
    cf = 0;
    goto LABEL_14;
  }

  v10 = 4294954443;
LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_14:
  if (v19)
  {
    CFRelease(v19);
  }

  return v10;
}

uint64_t __FigBufferedAirPlayOutputProxyCreate_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  FigBufferedAirPlayOutputProxyCreate_sLinearDebugTriggerSeconds = result;
  return result;
}

void FigCFRelease_1(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t fbapop_invalidate(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  FigSimpleMutexLock();
  *(DerivedStorage + 104) = 1;
  v2 = *(DerivedStorage + 96);
  if (v2)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v3)
    {
      v3(v2);
    }
  }

  FigSimpleMutexUnlock();
  if (dword_1EAF16AD0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return 0;
}

double fbapop_finalize(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  fbapop_invalidate(a1);
  v3 = *(DerivedStorage + 72);
  if (v3)
  {
    dispatch_source_cancel(*(DerivedStorage + 72));
    dispatch_release(v3);
    *(DerivedStorage + 72) = 0;
  }

  v4 = *(DerivedStorage + 80);
  if (v4)
  {
    dispatch_release(v4);
    *(DerivedStorage + 80) = 0;
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

  v7 = *(DerivedStorage + 40);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 40) = 0;
  }

  v8 = *(DerivedStorage + 56);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 56) = 0;
  }

  v9 = *(DerivedStorage + 88);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 88) = 0;
  }

  v10 = *(DerivedStorage + 96);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 96) = 0;
  }

  v11 = *(DerivedStorage + 48);
  if (v11)
  {
    dispatch_release(v11);
    *(DerivedStorage + 48) = 0;
  }

  FigSimpleMutexDestroy();
  *(DerivedStorage + 64) = 0;
  if (dword_1EAF16AD0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

__CFString *fbapop_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigBufferedAirPlayOutputProxy %p>", a1);
  return Mutable;
}

uint64_t fbapop_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFEqual(a2, @"NumberOfRegisteredRenderPipelines"))
  {
    FigCFDictionaryGetCount();
    SInt64 = FigCFNumberCreateSInt64();
LABEL_6:
    v10 = 0;
    *a4 = SInt64;
    goto LABEL_7;
  }

  if (CFEqual(a2, @"UniqueID"))
  {
    SInt64 = *(DerivedStorage + 56);
    if (!SInt64)
    {
      goto LABEL_6;
    }

LABEL_5:
    SInt64 = CFRetain(SInt64);
    goto LABEL_6;
  }

  if (CFEqual(a2, @"ConnectedRenderPipelineID"))
  {
    SInt64 = fbapop_getConnectedRenderPipelineID(a1);
    if (!SInt64)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  FigBufferedAirPlayOutputGetCMBaseObject();
  v13 = v12;
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v14)
  {
    v10 = v14(v13, a2, a3, a4);
  }

  else
  {
    v10 = 4294954514;
  }

LABEL_7:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t fbapop_setProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  FigBufferedAirPlayOutputGetCMBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v7)
  {
    v8 = v7(v6, a2, a3);
  }

  else
  {
    v8 = 4294954514;
  }

  FigSimpleMutexUnlock();
  return v8;
}

uint64_t fbapop_getConnectedRenderPipelineID(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  FigCFDictionaryApplyBlock();
  v1 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v1;
}

void __fbapop_getConnectedRenderPipelineID_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = *(a3 + 24);
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(v5, @"DownstreamConsumer", *MEMORY[0x1E695E480], &cf);
      v7 = cf;
      if (cf)
      {
        *(*(*(a1 + 32) + 8) + 24) = *(a3 + 32);
        CFRelease(v7);
      }
    }
  }
}

uint64_t fbapop_registerRenderPipeline(uint64_t a1, uint64_t a2, const void *a3, const void *a4, const void *a5, unsigned int **a6)
{
  v38[16] = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    fbapop_registerRenderPipeline_cold_5(v38);
LABEL_30:
    v24 = LODWORD(v38[0]);
    goto LABEL_25;
  }

  if (!a2)
  {
    fbapop_registerRenderPipeline_cold_4(v38);
    goto LABEL_30;
  }

  if (!a5)
  {
    fbapop_registerRenderPipeline_cold_3(v38);
    goto LABEL_30;
  }

  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a6)
  {
    fbapop_registerRenderPipeline_cold_2(v38);
    v24 = LODWORD(v38[0]);
    if (LODWORD(v38[0]))
    {
      goto LABEL_25;
    }

LABEL_22:
    v29 = *a6;
    v30 = CMBaseObjectGetDerivedStorage();
    CFDictionaryGetValue(*(v30 + 32), *v29);
    if (dword_1EAF16AD0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v24 = 0;
    goto LABEL_25;
  }

  v12 = DerivedStorage;
  CMBaseObjectGetDerivedStorage();
  v34 = 0;
  v35 = &v34;
  v36 = 0x2000000000;
  v37 = 0;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 0x40000000;
  v38[2] = __fbapop_findRenderPipelineStateWithID_block_invoke;
  v38[3] = &unk_1E7477570;
  v38[4] = &v34;
  v38[5] = a5;
  FigCFDictionaryApplyBlock();
  v13 = v35[3];
  _Block_object_dispose(&v34, 8);
  if (!v13)
  {
    v14 = fbapop_createAndSaveRenderPipelineState_tokenNumber++;
    v15 = *MEMORY[0x1E695E480];
    FigBufferedAirPlayOutputProxyRPStateCreate(*MEMORY[0x1E695E480]);
    v17 = v16;
    *(v16 + 32) = CFRetain(a5);
    *(v17 + 16) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    *(v17 + 40) = v14;
    *(v17 + 77) = 0;
    *(v17 + 24) = CFRetain(a3);
    v18 = MEMORY[0x1E6960C70];
    *(v17 + 80) = *MEMORY[0x1E6960C70];
    *(v17 + 96) = *(v18 + 16);
    fbapoprp_clearRenderPipelineSynchronizeToTimebaseContext(v17);
    CFDictionarySetValue(*(v12 + 32), v14, v17);
    v19 = CMBaseObjectGetDerivedStorage();
    Value = CFDictionaryGetValue(*(v19 + 32), v14);
    if (qword_1ED4CA428 != -1)
    {
      FigBufferedAirPlayOutputProxyCreate_cold_3();
    }

    if (_MergedGlobals_16)
    {
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (!MutableCopy)
      {
        v24 = 4294954510;
        goto LABEL_21;
      }

      v22 = MutableCopy;
      CFDictionarySetValue(MutableCopy, @"LoggingID", a5);
      v23 = FigBufferedAirPlaySubPipeManagerCreate(v15, *(v12 + 88), *(v12 + 24), a4, v22, Value + 6);
      if (v23)
      {
        v24 = v23;
LABEL_20:
        CFRelease(v22);
        goto LABEL_21;
      }

      CMNotificationCenterGetDefaultLocalCenter();
      v27 = FigNotificationCenterAddWeakListeners();
      if (v27)
      {
        v24 = v27;
        goto LABEL_20;
      }

      if (!dword_1EAF16AD0)
      {
        v24 = 0;
        *a6 = (Value + 40);
        goto LABEL_20;
      }

      v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      v22 = 0;
    }

    v25 = dword_1EAF16AD0;
    *a6 = (Value + 40);
    if (v25)
    {
      v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v24 = 0;
    if (v22)
    {
      goto LABEL_20;
    }

LABEL_21:
    CFRelease(v17);
    if (v24)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (dword_1EAF16AD0)
  {
    v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v24 = 4294947886;
LABEL_25:
  FigSimpleMutexUnlock();
  return v24;
}

uint64_t fbapop_deRegisterRenderPipeline(const void *a1, unsigned int *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v29 = 0;
  v28 = **&MEMORY[0x1E6960C70];
  FigSimpleMutexLock();
  if (!fbapop_tokenIsValid(a1, a2))
  {
    fbapop_deRegisterRenderPipeline_cold_3((DerivedStorage + 64), &time);
    return LODWORD(time.value);
  }

  v5 = *a2;
  v6 = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(v6 + 32), v5);
  v8 = Value;
  if (!Value)
  {
    goto LABEL_26;
  }

  CFRetain(Value);
  if (dword_1EAF16AD0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(v8 + 68) && FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0] && !*(v8 + 64))
  {
    fbapop_invokeCallbackAndReleaseRenderPipelineSetRateAndAnchorTimeContextWithError(a1, v8, -17326);
  }

  fbapop_disconnectRenderPipelineFromBAO(a1, v8);
  if (qword_1ED4CA428 != -1)
  {
    FigBufferedAirPlayOutputProxyCreate_cold_3();
  }

  if (!_MergedGlobals_16)
  {
    goto LABEL_18;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListeners();
  FigBufferedAirPlaySubPipeManagerGetCMBaseObject();
  if (!v10)
  {
    v14 = 4294954516;
    goto LABEL_44;
  }

  v11 = v10;
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 24);
  if (!v12)
  {
    goto LABEL_43;
  }

  v13 = v12(v11);
  if (v13)
  {
LABEL_15:
    v14 = v13;
LABEL_44:
    FigSimpleMutexUnlock();
LABEL_45:
    CFRelease(v8);
    return v14;
  }

  if (FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0] && FigCFDictionaryGetValueIfPresent())
  {
    RenderPipelineStateForMixEventIDWithOverlapRangeType = fbapop_getRenderPipelineStateForMixEventIDWithOverlapRangeType(a1, v29, @"Intro");
  }

  else
  {
LABEL_18:
    RenderPipelineStateForMixEventIDWithOverlapRangeType = 0;
  }

  if (*(v8 + 47))
  {
    FigCFDictionaryApplyBlock();
  }

  v16 = CMBaseObjectGetDerivedStorage();
  CFDictionaryRemoveValue(*(v16 + 32), v5);
  if (qword_1ED4CA428 != -1)
  {
    FigBufferedAirPlayOutputProxyCreate_cold_3();
  }

  if (!_MergedGlobals_16 || !RenderPipelineStateForMixEventIDWithOverlapRangeType || *(RenderPipelineStateForMixEventIDWithOverlapRangeType + 64))
  {
    goto LABEL_26;
  }

  fbapop_disconnectRenderPipelineFromBAO(a1, RenderPipelineStateForMixEventIDWithOverlapRangeType);
  DictionaryValue = FigCFDictionaryGetDictionaryValue();
  CMTimeMakeFromDictionary(&v28, DictionaryValue);
  if (dword_1EAF16AD0)
  {
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v23 = *(RenderPipelineStateForMixEventIDWithOverlapRangeType + 48);
  v24 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v24)
  {
    v24(v23, 1);
  }

  v25 = *(RenderPipelineStateForMixEventIDWithOverlapRangeType + 48);
  v26 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v26)
  {
LABEL_43:
    v14 = 4294954514;
    goto LABEL_44;
  }

  v13 = v26(v25, 1);
  if (v13)
  {
    goto LABEL_15;
  }

LABEL_26:
  CMBaseObjectGetDerivedStorage();
  v30 = 0;
  v31 = &v30;
  v32 = 0x2000000000;
  LODWORD(v33) = 0;
  time.value = MEMORY[0x1E69E9820];
  *&time.timescale = 0x40000000;
  time.epoch = __fbapop_ruleNoConnectedRP_block_invoke;
  v35 = &unk_1E74775B8;
  v36 = &v30;
  FigCFDictionaryApplyBlock();
  v17 = *(v31 + 6);
  _Block_object_dispose(&v30, 8);
  v14 = 0;
  if (v17 != 1)
  {
    if (dword_1EAF16AD0)
    {
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v21 = *(DerivedStorage + 24);
    v22 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v22)
    {
      v14 = v22(v21);
    }

    else
    {
      v14 = 4294954514;
    }
  }

  FigSimpleMutexUnlock();
  if (v8)
  {
    goto LABEL_45;
  }

  return v14;
}

uint64_t fbapop_preparePrebuffering(uint64_t a1, unsigned int *a2)
{
  v18[16] = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a2)
  {
    goto LABEL_8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(DerivedStorage + 32), *a2);
  if (!Value)
  {
    fbapop_preparePrebuffering_cold_2(v18);
    v7 = LODWORD(v18[0]);
    goto LABEL_9;
  }

  v6 = Value;
  CMBaseObjectGetDerivedStorage();
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  LOBYTE(v17) = 1;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 0x40000000;
  v18[2] = __ruleNoConsumerConnected_and_PipelineAllowsPrebuffering_block_invoke;
  v18[3] = &unk_1E74775E0;
  v18[4] = &v14;
  FigCFDictionaryApplyBlock();
  if (!*(v15 + 24))
  {
    _Block_object_dispose(&v14, 8);
LABEL_8:
    v7 = 0;
LABEL_9:
    FigSimpleMutexUnlock();
    return v7;
  }

  v7 = *(v6 + 44);
  _Block_object_dispose(&v14, 8);
  if (!v7)
  {
    goto LABEL_9;
  }

  fbapop_renderPipelineHandleDeferResetIfNeeded(a1, v6);
  if (dword_1EAF16AD0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = fbapop_connectRenderPipelineToBAO(a1, v6, 1);
  if (v7)
  {
    goto LABEL_9;
  }

  if (qword_1ED4CA428 != -1)
  {
    FigBufferedAirPlayOutputProxyCreate_cold_3();
  }

  if (!_MergedGlobals_16)
  {
    goto LABEL_8;
  }

  UInt32 = FigCFNumberCreateUInt32();
  FigBufferedAirPlaySubPipeManagerGetCMBaseObject();
  v12 = v11;
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v13)
  {
    v7 = v13(v12, @"ThreadPriority", UInt32);
  }

  else
  {
    v7 = 4294954514;
  }

  FigSimpleMutexUnlock();
  if (UInt32)
  {
    CFRelease(UInt32);
  }

  return v7;
}

uint64_t __fbapop_setRenderPipelineState_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 44))
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

const char *fbapop_getRPType(uint64_t a1)
{
  if (!a1 || !*(a1 + 68))
  {
    return "";
  }

  if (FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0])
  {
    return " (Intro)";
  }

  return " (Outro)";
}

uint64_t fbapop_setTimebaseToRenderPipelineState(uint64_t a1, uint64_t a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (!*(a2 + 76) || *(a2 + 64) || a3 || !*(a2 + 56))
  {
    v6 = *(a2 + 56);
    *(a2 + 56) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (!v6)
    {
      return 0;
    }

LABEL_6:
    CFRelease(v6);
    return 0;
  }

  fbapop_disconnectRenderPipelineFromBAO(a1, a2);
  v8 = *(a2 + 48);
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v9)
  {
    return 4294954514;
  }

  result = v9(v8, 1);
  if (!result)
  {
    v6 = *(a2 + 56);
    *(a2 + 56) = 0;
    if (!v6)
    {
      return 0;
    }

    goto LABEL_6;
  }

  return result;
}

uint64_t __fbapop_attempConnectNextSynchronizedToTimebaseRenderPipeline_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 112) > 0.0 && (*(a3 + 132) & 1) != 0)
  {
    v3 = *(a3 + 104);
    v4 = *(*(result + 32) + 8);
    if (v3 < *(v4 + 24))
    {
      *(v4 + 24) = v3;
      *(*(*(result + 40) + 8) + 24) = a3;
    }
  }

  return result;
}

void fbapop_renderPipelineHandleDeferResetIfNeeded(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  v4 = *(a2 + 176);
  if (v4)
  {
    if (dword_1EAF16AD0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v4 = *(a2 + 176);
    }

    fbapop_renderPipelineHandleReset(a1, a2, *v4);
  }
}

void fbapop_renderPipelineHandleReset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  v32 = **&MEMORY[0x1E6960C70];
  CMBaseObjectGetDerivedStorage();
  FigCFDictionaryApplyBlock();
  if (!a2 || !*(a2 + 68))
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if (FigCFDictionaryGetBooleanValue() != *MEMORY[0x1E695E4D0])
  {
    if (*(a2 + 68))
    {
      v6 = *MEMORY[0x1E695E4D0];
      if (FigCFDictionaryGetBooleanValue() == v6 && !*(a2 + 64))
      {
        NumberValue = FigCFDictionaryGetNumberValue();
        RenderPipelineStateForMixEventIDWithOverlapRangeType = fbapop_getRenderPipelineStateForMixEventIDWithOverlapRangeType(a1, NumberValue, @"Outro");
        if (RenderPipelineStateForMixEventIDWithOverlapRangeType)
        {
          v27 = RenderPipelineStateForMixEventIDWithOverlapRangeType;
          if (dword_1EAF16AD0)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FigBufferedAirPlaySubPipeManagerRequestRetransmitAtDeadline(*(v27 + 48), 0);
        }

        v30 = *(a2 + 48);
        v31 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (v31)
        {
          v31(v30, 0);
        }
      }
    }

    goto LABEL_7;
  }

  v16 = FigCFDictionaryGetNumberValue();
  v17 = fbapop_getRenderPipelineStateForMixEventIDWithOverlapRangeType(a1, v16, @"Intro");
  v7 = v17;
  if (v17)
  {
    v18 = *(v17 + 24);
    v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v19)
    {
      v19(v18, @"DownstreamConsumer", *MEMORY[0x1E695E480], &cf);
    }

    fbapop_disconnectAllRPConsumer(a1);
    if (!*(v7 + 64))
    {
      v20 = *(v7 + 48);
      v21 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v21)
      {
        v21(v20, 1);
      }

      DictionaryValue = FigCFDictionaryGetDictionaryValue();
      CMTimeMakeFromDictionary(&v32, DictionaryValue);
      if (dword_1EAF16AD0)
      {
        v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v29 = *(v7 + 48);
      time = v32;
      fbapop_requestForRetransmissionToRenderPipeline(a1, v29, &time.value);
    }
  }

LABEL_8:
  v8 = *(a2 + 48);
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v9)
  {
    v9(v8, 1);
  }

  if (*(a2 + 68) && !*(a2 + 64))
  {
    if (dword_1EAF16AD0)
    {
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    CMBaseObjectGetDerivedStorage();
    FigCFDictionaryApplyBlock();
    v11 = *(DerivedStorage + 88);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v12)
    {
      if (!v12(v11))
      {
        v13 = *(DerivedStorage + 24);
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v14)
        {
          v14(v13, a3);
        }
      }
    }
  }

  if (v7 && cf)
  {
    if (dword_1EAF16AD0)
    {
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    fbapop_connectRenderPipelineToBAO(a1, v7, 0);
  }

  fbapoprp_renderPipelineStateReleaseDeferResetContext(a2);
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t fbapop_getRenderPipelineStateForMixEventIDWithOverlapRangeType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  FigCFDictionaryApplyBlock();
  v3 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v3;
}

uint64_t FigBufferedAirPlaySubPipeManagerReset(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigBufferedAirPlaySubPipeManagerRequestRetransmitAtDeadline(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t __fbapop_getRenderPipelineStateForMixEventIDWithOverlapRangeType_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(*(*(result + 32) + 8) + 24))
  {
    v4 = result;
    result = FigCFDictionaryGetBooleanValue();
    if (result == *MEMORY[0x1E695E4D0])
    {
      result = FigCFDictionaryGetValueIfPresent();
      if (result)
      {
        result = FigCFEqual();
        if (result)
        {
          *(*(*(v4 + 32) + 8) + 24) = a3;
        }
      }
    }
  }

  return result;
}

uint64_t fbapop_disconnectRenderPipelineFromBAO(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16AD0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = *(a2 + 24);
  VTable = CMBaseObjectGetVTable();
  v7 = *(VTable + 8);
  result = VTable + 8;
  v8 = *(v7 + 56);
  if (v8)
  {
    return v8(v4, @"DownstreamConsumer", 0);
  }

  return result;
}

double __fbapop_requestForRetransmissionToRenderPipeline_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a3 + 48) == *(a1 + 32))
  {
    v5 = *MEMORY[0x1E695E480];
    UInt64 = FigCFNumberCreateUInt64();
    if (!UInt64)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return result;
    }

    v7 = UInt64;
    Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v9 = Mutable;
      time = *(a1 + 48);
      v10 = CMTimeCopyAsDictionary(&time, v5);
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      *(a3 + 77) = 1;
      CFRelease(v7);
      CFRelease(v9);
      if (!v10)
      {
        return result;
      }

      v12 = v10;
    }

    else
    {
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v12 = v7;
    }

    CFRelease(v12);
  }

  return result;
}

uint64_t FigSampleBufferConsumerFlush(uint64_t a1)
{
  VTable = CMBaseObjectGetVTable();
  v4 = *(VTable + 16);
  result = VTable + 16;
  v5 = *(v4 + 72);
  if (v5)
  {

    return v5(a1);
  }

  return result;
}

double fbapop_startSubPipeManagersForMixEventID(uint64_t a1, uint64_t a2)
{
  v154[16] = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  *v142 = 0;
  *&v142[8] = v142;
  *&v142[16] = 0x2000000000;
  v143 = 0;
  v154[0] = MEMORY[0x1E69E9820];
  v154[1] = 0x40000000;
  v154[2] = __fbapop_rpWithSameMixEventIDAndReadyToMix_block_invoke;
  v154[3] = &unk_1E74774B0;
  v154[4] = v142;
  v154[5] = a2;
  FigCFDictionaryApplyBlock();
  v4 = *(*&v142[8] + 24);
  _Block_object_dispose(v142, 8);
  if (v4 < 2)
  {
    return result;
  }

  CMBaseObjectGetDerivedStorage();
  RenderPipelineStateForMixEventIDWithOverlapRangeType = fbapop_getRenderPipelineStateForMixEventIDWithOverlapRangeType(a1, a2, @"Outro");
  v7 = fbapop_getRenderPipelineStateForMixEventIDWithOverlapRangeType(a1, a2, @"Intro");
  if (!RenderPipelineStateForMixEventIDWithOverlapRangeType || v7 == 0)
  {
    return result;
  }

  v9 = v7;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v140 = 0;
  cf = 0;
  v138 = 0;
  v139 = 0;
  FigBufferedAirPlaySubPipeManagerGetCMBaseObject();
  v12 = v11;
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v14 = &unk_1EAF16000;
  v137 = v9;
  if (!v13 || (v15 = *MEMORY[0x1E695E480], v13(v12, @"ContentStreamFormatDescription", *MEMORY[0x1E695E480], &cf)))
  {
    if (!dword_1EAF16AD0)
    {
      goto LABEL_37;
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    goto LABEL_26;
  }

  FigBufferedAirPlaySubPipeManagerGetCMBaseObject();
  v17 = v16;
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v18 || v18(v17, @"ContentStreamFormatDescription", v15, &v140))
  {
    if (!dword_1EAF16AD0)
    {
      goto LABEL_37;
    }

    v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
LABEL_26:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v20 = 0;
    v14 = &unk_1EAF16000;
    goto LABEL_38;
  }

  v19 = cf;
  v20 = 1;
  if (cf && v140)
  {
    v21 = *(DerivedStorage + 24);
    v22 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (!v22)
    {
      goto LABEL_37;
    }

    if (v22(v21, v19, &v139))
    {
      goto LABEL_37;
    }

    v23 = *(DerivedStorage + 24);
    v24 = v140;
    v25 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (!v25 || v25(v23, v24, &v138))
    {
      goto LABEL_37;
    }

    ChannelLayoutTag = FigEndpointStreamAudioFormatDescriptionGetChannelLayoutTag();
    if (ChannelLayoutTag != FigEndpointStreamAudioFormatDescriptionGetChannelLayoutTag())
    {
      ASBD = FigEndpointStreamAudioFormatDescriptionGetASBD();
      if (!ASBD || (v28 = ASBD, (v29 = FigEndpointStreamAudioFormatDescriptionGetASBD()) == 0))
      {
        v20 = 1;
        goto LABEL_38;
      }

      if (*(v29 + 28) <= *(v28 + 28))
      {
        v135 = v139;
        if (!dword_1EAF16AD0)
        {
LABEL_34:
          v30 = v135;
          goto LABEL_35;
        }

        v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
      }

      else
      {
        v30 = v138;
        if (!dword_1EAF16AD0)
        {
LABEL_35:
          FigBufferedAirPlaySubPipeManagerGetCMBaseObject();
          v37 = v36;
          v38 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v38)
          {
            v20 = v38(v37, @"RecommendedTransportFormatDescription", v30) == 0;
            goto LABEL_38;
          }

LABEL_37:
          v20 = 0;
          goto LABEL_38;
        }

        v135 = v138;
        v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (dword_1EAF16AD0)
      {
        v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
        v30 = v135;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v14 = &unk_1EAF16000;
        goto LABEL_35;
      }

      v14 = &unk_1EAF16000;
      goto LABEL_34;
    }

LABEL_38:
    v19 = cf;
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v140)
  {
    CFRelease(v140);
  }

  if (v139)
  {
    CFRelease(v139);
  }

  if (v138)
  {
    CFRelease(v138);
  }

  v39 = v14[692];
  v136 = RenderPipelineStateForMixEventIDWithOverlapRangeType;
  if (v20)
  {
    if (v39)
    {
      LODWORD(cf) = 0;
      LOBYTE(v140) = 0;
      v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v41 = cf;
      v42 = v140;
      if (os_log_type_enabled(v40, v140))
      {
        v43 = v41;
      }

      else
      {
        v43 = v41 & 0xFFFFFFFE;
      }

      if (v43)
      {
        v44 = v14;
        if (a1)
        {
          v45 = CMBaseObjectGetDerivedStorage();
        }

        else
        {
          v45 = "";
        }

        v46 = RenderPipelineStateForMixEventIDWithOverlapRangeType[4];
        if (*(RenderPipelineStateForMixEventIDWithOverlapRangeType + 68))
        {
          if (FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0])
          {
            v47 = " (Intro)";
          }

          else
          {
            v47 = " (Outro)";
          }
        }

        else
        {
          v47 = "";
        }

        v48 = RenderPipelineStateForMixEventIDWithOverlapRangeType[6];
        *v142 = 136316674;
        *&v142[4] = "fbapop_prepareAndStartSubPipeManagersWithMixEventID";
        *&v142[12] = 2048;
        *&v142[14] = a1;
        *&v142[22] = 2082;
        v143 = v45;
        v144 = 2112;
        v145 = v46;
        v146 = 2080;
        v147 = v47;
        v148 = 2048;
        v149 = v48;
        v150 = 2112;
        v151 = a2;
        _os_log_send_and_compose_impl(v43, 0, v154, 128, &dword_1962D5000, v40, v42, "<<<< FigBufferedAirPlayOutputProxy >>>> %s: [%p] %{public}s rpID[%@]%s prepare SubPipeManager [%p] for MixEventID %@", v142, 72);
        v14 = v44;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v49 = RenderPipelineStateForMixEventIDWithOverlapRangeType[6];
    v50 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v50)
    {
      v51 = v50(v49);
      if (!v51)
      {
        if (v14[692])
        {
          LODWORD(cf) = 0;
          LOBYTE(v140) = 0;
          v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v53 = cf;
          v54 = v140;
          if (os_log_type_enabled(v52, v140))
          {
            v55 = v53;
          }

          else
          {
            v55 = v53 & 0xFFFFFFFE;
          }

          if (v55)
          {
            v56 = v14;
            if (a1)
            {
              v57 = CMBaseObjectGetDerivedStorage();
            }

            else
            {
              v57 = "";
            }

            v67 = v137[4];
            if (*(v137 + 68))
            {
              if (FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0])
              {
                v68 = " (Intro)";
              }

              else
              {
                v68 = " (Outro)";
              }
            }

            else
            {
              v68 = "";
            }

            v69 = v137[6];
            *v142 = 136316674;
            *&v142[4] = "fbapop_prepareAndStartSubPipeManagersWithMixEventID";
            *&v142[12] = 2048;
            *&v142[14] = a1;
            *&v142[22] = 2082;
            v143 = v57;
            v144 = 2112;
            v145 = v67;
            v146 = 2080;
            v147 = v68;
            v148 = 2048;
            v149 = v69;
            v150 = 2112;
            v151 = a2;
            LODWORD(v134) = 72;
            _os_log_send_and_compose_impl(v55, 0, v154, 128, &dword_1962D5000, v52, v54, "<<<< FigBufferedAirPlayOutputProxy >>>> %s: [%p] %{public}s rpID[%@]%s prepare SubPipeManager [%p] for MixEventID %@", v142, v134);
            v14 = v56;
            RenderPipelineStateForMixEventIDWithOverlapRangeType = v136;
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v70 = v137;
        v71 = v137[6];
        v72 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v72)
        {
          v73 = v72(v71);
          if (!v73)
          {
            if (v14[692])
            {
              LODWORD(cf) = 0;
              LOBYTE(v140) = 0;
              v74 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v75 = cf;
              v76 = v140;
              if (os_log_type_enabled(v74, v140))
              {
                v77 = v75;
              }

              else
              {
                v77 = v75 & 0xFFFFFFFE;
              }

              if (v77)
              {
                v78 = v14;
                if (a1)
                {
                  v79 = CMBaseObjectGetDerivedStorage();
                }

                else
                {
                  v79 = "";
                }

                v89 = v136[4];
                if (*(v136 + 68))
                {
                  v90 = a2;
                  if (FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0])
                  {
                    v91 = " (Intro)";
                  }

                  else
                  {
                    v91 = " (Outro)";
                  }
                }

                else
                {
                  v90 = a2;
                  v91 = "";
                }

                v92 = v136[6];
                *v142 = 136316674;
                *&v142[4] = "fbapop_prepareAndStartSubPipeManagersWithMixEventID";
                *&v142[12] = 2048;
                *&v142[14] = a1;
                *&v142[22] = 2082;
                v143 = v79;
                v144 = 2112;
                v145 = v89;
                v146 = 2080;
                v147 = v91;
                v148 = 2048;
                v149 = v92;
                v150 = 2112;
                v151 = v90;
                LODWORD(v134) = 72;
                _os_log_send_and_compose_impl(v77, 0, v154, 128, &dword_1962D5000, v74, v76, "<<<< FigBufferedAirPlayOutputProxy >>>> %s: [%p] %{public}s rpID[%@]%s start SubPipeManager [%p] for MixEventID %@", v142, v134);
                v14 = v78;
                RenderPipelineStateForMixEventIDWithOverlapRangeType = v136;
                a2 = v90;
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v70 = v137;
            }

            v93 = RenderPipelineStateForMixEventIDWithOverlapRangeType[6];
            v94 = *(*(CMBaseObjectGetVTable() + 16) + 48);
            if (v94)
            {
              v95 = v94(v93);
              if (!v95)
              {
                if (v14[692])
                {
                  LODWORD(cf) = 0;
                  LOBYTE(v140) = 0;
                  v96 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v97 = cf;
                  v98 = v140;
                  if (os_log_type_enabled(v96, v140))
                  {
                    v99 = v97;
                  }

                  else
                  {
                    v99 = v97 & 0xFFFFFFFE;
                  }

                  if (v99)
                  {
                    if (a1)
                    {
                      v100 = CMBaseObjectGetDerivedStorage();
                    }

                    else
                    {
                      v100 = "";
                    }

                    v110 = v137[4];
                    if (*(v137 + 68))
                    {
                      if (FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0])
                      {
                        v111 = " (Intro)";
                      }

                      else
                      {
                        v111 = " (Outro)";
                      }
                    }

                    else
                    {
                      v111 = "";
                    }

                    v112 = v137[6];
                    *v142 = 136316674;
                    *&v142[4] = "fbapop_prepareAndStartSubPipeManagersWithMixEventID";
                    *&v142[12] = 2048;
                    *&v142[14] = a1;
                    *&v142[22] = 2082;
                    v143 = v100;
                    v144 = 2112;
                    v145 = v110;
                    v146 = 2080;
                    v147 = v111;
                    v148 = 2048;
                    v149 = v112;
                    v150 = 2112;
                    v151 = a2;
                    LODWORD(v134) = 72;
                    _os_log_send_and_compose_impl(v99, 0, v154, 128, &dword_1962D5000, v96, v98, "<<<< FigBufferedAirPlayOutputProxy >>>> %s: [%p] %{public}s rpID[%@]%s start SubPipeManager [%p] for MixEventID %@", v142, v134);
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v70 = v137;
                }

                v113 = v70[6];
                v114 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                if (v114)
                {
                  v115 = v114(v113);
                  if (!v115)
                  {
                    return result;
                  }

                  v116 = v115;
                }

                else
                {
                  v116 = -12782;
                }

                if (v14[692])
                {
                  LODWORD(cf) = 0;
                  LOBYTE(v140) = 0;
                  v117 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v118 = cf;
                  v119 = v140;
                  if (os_log_type_enabled(v117, v140))
                  {
                    v120 = v118;
                  }

                  else
                  {
                    v120 = v118 & 0xFFFFFFFE;
                  }

                  if (v120)
                  {
                    if (a1)
                    {
                      v121 = CMBaseObjectGetDerivedStorage();
                    }

                    else
                    {
                      v121 = "";
                    }

                    v122 = v70;
                    v123 = v70[4];
                    if (*(v122 + 68))
                    {
                      if (FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0])
                      {
                        v124 = " (Intro)";
                      }

                      else
                      {
                        v124 = " (Outro)";
                      }
                    }

                    else
                    {
                      v124 = "";
                    }

                    v125 = v137[6];
                    *v142 = 136316930;
                    *&v142[4] = "fbapop_prepareAndStartSubPipeManagersWithMixEventID";
                    *&v142[12] = 2048;
                    *&v142[14] = a1;
                    *&v142[22] = 2082;
                    v143 = v121;
                    v144 = 2112;
                    v145 = v123;
                    v146 = 2080;
                    v147 = v124;
                    v148 = 2048;
                    v149 = v125;
                    v150 = 2112;
                    v151 = a2;
                    v152 = 1024;
                    v153 = v116;
                    LODWORD(v134) = 78;
                    _os_log_send_and_compose_impl(v120, 0, v154, 128, &dword_1962D5000, v117, v119, "<<<< FigBufferedAirPlayOutputProxy >>>> %s: [%p] %{public}s rpID[%@]%s failed to start SubPipeManager [%p] for MixEventID %@ err=%d", v142, v134);
                  }

LABEL_175:
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  return result;
                }

                return result;
              }

              v101 = v95;
            }

            else
            {
              v101 = -12782;
            }

            if (!v14[692])
            {
              return result;
            }

            LODWORD(cf) = 0;
            LOBYTE(v140) = 0;
            v102 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v103 = cf;
            v104 = v140;
            if (os_log_type_enabled(v102, v140))
            {
              v105 = v103;
            }

            else
            {
              v105 = v103 & 0xFFFFFFFE;
            }

            if (v105)
            {
              if (a1)
              {
                v106 = CMBaseObjectGetDerivedStorage();
              }

              else
              {
                v106 = "";
              }

              v107 = RenderPipelineStateForMixEventIDWithOverlapRangeType[4];
              if (*(RenderPipelineStateForMixEventIDWithOverlapRangeType + 68))
              {
                if (FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0])
                {
                  v108 = " (Intro)";
                }

                else
                {
                  v108 = " (Outro)";
                }
              }

              else
              {
                v108 = "";
              }

              v109 = RenderPipelineStateForMixEventIDWithOverlapRangeType[6];
              *v142 = 136316930;
              *&v142[4] = "fbapop_prepareAndStartSubPipeManagersWithMixEventID";
              *&v142[12] = 2048;
              *&v142[14] = a1;
              *&v142[22] = 2082;
              v143 = v106;
              v144 = 2112;
              v145 = v107;
              v146 = 2080;
              v147 = v108;
              v148 = 2048;
              v149 = v109;
              v150 = 2112;
              v151 = a2;
              v152 = 1024;
              v153 = v101;
              LODWORD(v134) = 78;
              _os_log_send_and_compose_impl(v105, 0, v154, 128, &dword_1962D5000, v102, v104, "<<<< FigBufferedAirPlayOutputProxy >>>> %s: [%p] %{public}s rpID[%@]%s failed to start SubPipeManager [%p] for MixEventID %@ err=%d", v142, v134);
            }

            goto LABEL_175;
          }

          v80 = v73;
        }

        else
        {
          v80 = -12782;
        }

        if (!v14[692])
        {
          return result;
        }

        LODWORD(cf) = 0;
        LOBYTE(v140) = 0;
        v81 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v82 = cf;
        v83 = v140;
        if (os_log_type_enabled(v81, v140))
        {
          v84 = v82;
        }

        else
        {
          v84 = v82 & 0xFFFFFFFE;
        }

        if (v84)
        {
          if (a1)
          {
            v85 = CMBaseObjectGetDerivedStorage();
          }

          else
          {
            v85 = "";
          }

          v86 = v137[4];
          if (*(v137 + 68))
          {
            if (FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0])
            {
              v87 = " (Intro)";
            }

            else
            {
              v87 = " (Outro)";
            }
          }

          else
          {
            v87 = "";
          }

          v88 = v137[6];
          *v142 = 136316930;
          *&v142[4] = "fbapop_prepareAndStartSubPipeManagersWithMixEventID";
          *&v142[12] = 2048;
          *&v142[14] = a1;
          *&v142[22] = 2082;
          v143 = v85;
          v144 = 2112;
          v145 = v86;
          v146 = 2080;
          v147 = v87;
          v148 = 2048;
          v149 = v88;
          v150 = 2112;
          v151 = a2;
          v152 = 1024;
          v153 = v80;
          LODWORD(v134) = 78;
          _os_log_send_and_compose_impl(v84, 0, v154, 128, &dword_1962D5000, v81, v83, "<<<< FigBufferedAirPlayOutputProxy >>>> %s: [%p] %{public}s rpID[%@]%s failed to prepare SubPipeManager [%p] for MixEventID %@ err=%d", v142, v134);
        }

        goto LABEL_175;
      }

      v58 = v51;
    }

    else
    {
      v58 = -12782;
    }

    if (!v14[692])
    {
      return result;
    }

    LODWORD(cf) = 0;
    LOBYTE(v140) = 0;
    v59 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v60 = cf;
    v61 = v140;
    if (os_log_type_enabled(v59, v140))
    {
      v62 = v60;
    }

    else
    {
      v62 = v60 & 0xFFFFFFFE;
    }

    if (v62)
    {
      if (a1)
      {
        v63 = CMBaseObjectGetDerivedStorage();
      }

      else
      {
        v63 = "";
      }

      v64 = RenderPipelineStateForMixEventIDWithOverlapRangeType[4];
      if (*(RenderPipelineStateForMixEventIDWithOverlapRangeType + 68))
      {
        if (FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0])
        {
          v65 = " (Intro)";
        }

        else
        {
          v65 = " (Outro)";
        }
      }

      else
      {
        v65 = "";
      }

      v66 = RenderPipelineStateForMixEventIDWithOverlapRangeType[6];
      *v142 = 136316930;
      *&v142[4] = "fbapop_prepareAndStartSubPipeManagersWithMixEventID";
      *&v142[12] = 2048;
      *&v142[14] = a1;
      *&v142[22] = 2082;
      v143 = v63;
      v144 = 2112;
      v145 = v64;
      v146 = 2080;
      v147 = v65;
      v148 = 2048;
      v149 = v66;
      v150 = 2112;
      v151 = a2;
      v152 = 1024;
      v153 = v58;
      LODWORD(v134) = 78;
      _os_log_send_and_compose_impl(v62, 0, v154, 128, &dword_1962D5000, v59, v61, "<<<< FigBufferedAirPlayOutputProxy >>>> %s: [%p] %{public}s rpID[%@]%s failed to prepare SubPipeManager [%p] for MixEventID %@ err=%d", v142, v134);
    }

    goto LABEL_175;
  }

  if (v39)
  {
    LODWORD(cf) = 0;
    LOBYTE(v140) = 0;
    v126 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v127 = cf;
    v128 = v140;
    if (os_log_type_enabled(v126, v140))
    {
      v129 = v127;
    }

    else
    {
      v129 = v127 & 0xFFFFFFFE;
    }

    if (v129)
    {
      if (a1)
      {
        v130 = CMBaseObjectGetDerivedStorage();
      }

      else
      {
        v130 = "";
      }

      v131 = RenderPipelineStateForMixEventIDWithOverlapRangeType[4];
      if (*(RenderPipelineStateForMixEventIDWithOverlapRangeType + 68))
      {
        if (FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0])
        {
          v132 = " (Intro)";
        }

        else
        {
          v132 = " (Outro)";
        }
      }

      else
      {
        v132 = "";
      }

      v133 = RenderPipelineStateForMixEventIDWithOverlapRangeType[6];
      *v142 = 136316674;
      *&v142[4] = "fbapop_prepareAndStartSubPipeManagersWithMixEventID";
      *&v142[12] = 2048;
      *&v142[14] = a1;
      *&v142[22] = 2082;
      v143 = v130;
      v144 = 2112;
      v145 = v131;
      v146 = 2080;
      v147 = v132;
      v148 = 2048;
      v149 = v133;
      v150 = 2112;
      v151 = a2;
      _os_log_send_and_compose_impl(v129, 0, v154, 128, &dword_1962D5000, v126, v128, "<<<< FigBufferedAirPlayOutputProxy >>>> %s: [%p] %{public}s rpID[%@]%s failed to handleDifferentMultiChannelLayoutForMixing SubPipeManager [%p] for MixEventID %@", v142, 72);
    }

    goto LABEL_175;
  }

  return result;
}

void __fbapop_rpWithSameMixEventIDAndReadyToMix_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  BOOLean[0] = 0;
  BOOLean[1] = 0;
  FigBufferedAirPlaySubPipeManagerGetCMBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6 && !v6(v5, @"ReadyToMix", *MEMORY[0x1E695E480], BOOLean))
  {
    if (FigCFDictionaryGetValueIfPresent() && FigCFEqual() && CFBooleanGetValue(BOOLean[0]))
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }

    if (BOOLean[0])
    {
      CFRelease(BOOLean[0]);
    }
  }
}

void __fbapop_notifySetRateAndAnchorTimeCompletionForMixEventID_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  if (FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0] && FigCFDictionaryGetValueIfPresent() && FigCFEqual())
  {
    if (dword_1EAF16AD0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    fbapop_invokeCallbackAndReleaseRenderPipelineSetRateAndAnchorTimeContextWithError(*(a1 + 40), a3, 0);
  }
}

void __fbapop_invokeCallbackAndReleaseRenderPipelineSetRateAndAnchorTimeContextWithError_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(a1 + 48);
  v4 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 48);
  v8 = *(v2 + 56);
  v6 = *(v2 + 80);
  v5 = *(v2 + 88);
  v9 = *(v2 + 72);
  v6(v5, v3, &v10, &v8, 0, v4);
  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
  }
}

BOOL fbapop_ruleIsConsumerConnected(uint64_t a1)
{
  cf = 0;
  v1 = *(a1 + 24);
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    return 1;
  }

  v3 = v2(v1, @"DownstreamConsumer", *MEMORY[0x1E695E480], &cf);
  if (!cf)
  {
    return 1;
  }

  v4 = v3 != 0;
  CFRelease(cf);
  return v4;
}

BOOL fbapop_ruleIsOnlyThisConsumerConnected(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v3 = *(a2 + 24);
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4 || v4(v3, @"DownstreamConsumer", *MEMORY[0x1E695E480], &v16))
  {
    goto LABEL_3;
  }

  v8 = v14[3];
  if (v8)
  {
    CFRelease(v14[3]);
    v14[3] = 0;
  }

  FigCFDictionaryApplyBlock();
  if (v8)
  {
    v5 = *(v10 + 24) != 0;
  }

  else
  {
LABEL_3:
    v5 = 1;
  }

  v6 = v14[3];
  if (v6)
  {
    CFRelease(v6);
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v5;
}

void __fbapop_ruleIsOnlyThisConsumerConnected_block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1[6] != a3)
  {
    v4 = *(a3 + 24);
    v5 = *(a1[4] + 8);
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(v4, @"DownstreamConsumer", *MEMORY[0x1E695E480], v5 + 24);
    }

    if (*(*(a1[4] + 8) + 24))
    {
      *(*(a1[5] + 8) + 24) = 1;
      v7 = *(*(a1[4] + 8) + 24);
      if (v7)
      {
        CFRelease(v7);
        *(*(a1[4] + 8) + 24) = 0;
      }
    }
  }
}

uint64_t FigBufferedAirPlayOutputFlushWithinTimeRange(uint64_t a1, _OWORD *a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  v7[2] = a2[2];
  return v4(a1, v7);
}

uint64_t FigBufferedAirPlayOverlapLinearTimeMapperRecordFlushWithinTimeRange(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 16);
  result = VTable + 16;
  v9 = *(v8 + 32);
  if (v9)
  {
    v10 = a3[1];
    v11[0] = *a3;
    v11[1] = v10;
    v11[2] = a3[2];
    return v9(a1, a2, v11);
  }

  return result;
}

uint64_t FigSampleBufferConsumerSendSampleBuffer(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigBufferedAirPlaySubPipeManagerFlushFromTime(uint64_t a1, _OWORD *a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  v7[2] = a2[2];
  return v4(a1, v7);
}

uint64_t __fbapop_findRenderPipelineStateWithID_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  if (v3)
  {
    v5 = result;
    result = CFEqual(*(result + 40), v3);
    if (result)
    {
      *(*(*(v5 + 32) + 8) + 24) = a3;
    }
  }

  return result;
}

void __fbapop_ruleNoConnectedRP_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  v4 = *(a3 + 24);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(v4, @"DownstreamConsumer", *MEMORY[0x1E695E480], &cf);
    v6 = cf;
    if (cf)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      CFRelease(v6);
    }
  }
}

uint64_t fbapop_processOverlapRange(const void *a1, uint64_t a2, const void *a3)
{
  v133 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v128 = *MEMORY[0x1E6960C70];
  v129 = *(MEMORY[0x1E6960C70] + 8);
  cf = 0;
  v7 = *MEMORY[0x1E6960C70];
  *&v110.value = *MEMORY[0x1E6960C70];
  v8 = *(MEMORY[0x1E6960C70] + 16);
  v110.epoch = v8;
  if (a2)
  {
    v104 = DerivedStorage;
    v106 = v7;
    CMBaseObjectGetDerivedStorage();
    *&lhs.value = v106;
    lhs.epoch = v8;
    *&rhs.value = v106;
    rhs.epoch = v8;
    BooleanValue = FigCFDictionaryGetBooleanValue();
    v10 = *MEMORY[0x1E695E4D0];
    v11 = MEMORY[0x1E695E480];
    if (BooleanValue == *MEMORY[0x1E695E4D0])
    {
      FigCFDictionaryGetCMTimeIfPresent();
      FigCFDictionaryGetCMTimeIfPresent();
      v12 = *v11;
      time = lhs;
      Seconds = CMTimeGetSeconds(&time);
      time = rhs;
      v95 = CMTimeGetSeconds(&time);
      v13 = CFStringCreateWithFormat(v12, 0, @"OutroStartTime=%1.3f OutroEndTime=%1.3f ", *&Seconds, *&v95);
    }

    else if (FigCFDictionaryGetBooleanValue() == v10)
    {
      FigCFDictionaryGetCMTimeIfPresent();
      FigCFDictionaryGetCMTimeIfPresent();
      v12 = *v11;
      time = lhs;
      v15 = CMTimeGetSeconds(&time);
      time = rhs;
      v96 = CMTimeGetSeconds(&time);
      v13 = CFStringCreateWithFormat(v12, 0, @"IntroStartTime=%1.3f IntroEndTime=%1.3f ", *&v15, *&v96);
    }

    else
    {
      v12 = *v11;
      v13 = CFStringCreateWithFormat(v12, 0, &stru_1F0B1AFB8);
    }

    allocator = v12;
    if (v13)
    {
      CFRelease(v13);
    }

    NumberValue = FigCFDictionaryGetNumberValue();
    v17 = *(a2 + 68);
    if (a3)
    {
      *(a2 + 68) = a3;
      CFRetain(a3);
      if (!v17)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v17)
      {
        v26 = NumberValue;
        if (FigCFDictionaryGetBooleanValue() == v10)
        {
          if (!*(a2 + 64))
          {
            FigBufferedAirPlaySubPipeManagerGetCMBaseObject();
            v39 = v38;
            v40 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (!v40)
            {
              goto LABEL_47;
            }

            v21 = v40(v39, @"ProcessingState", v12, &cf);
            if (v21)
            {
              goto LABEL_16;
            }

            v103 = FigCFEqual();
            fbapop_disconnectRenderPipelineFromBAO(a1, a2);
            v21 = FigBufferedAirPlaySubPipeManagerReset(*(a2 + 48), 1);
            if (v21)
            {
              goto LABEL_16;
            }

            if (v103)
            {
              DictionaryValue = FigCFDictionaryGetDictionaryValue();
              CMTimeMakeFromDictionary(&v110, DictionaryValue);
              v42 = *(a2 + 48);
              lhs = v110;
              fbapop_requestForRetransmissionToRenderPipeline(a1, v42, &lhs.value);
            }

            if (dword_1EAF16AD0)
            {
              LODWORD(time.value) = 0;
              LOBYTE(type.value) = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              value = time.value;
              v101 = os_log_and_send_and_compose_flags_and_os_log_type;
              v45 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              v46 = value & 0xFFFFFFFE;
              if (v45)
              {
                v46 = value;
              }

              if (v46)
              {
                v99 = v46;
                if (a1)
                {
                  v97 = CMBaseObjectGetDerivedStorage();
                }

                else
                {
                  v97 = "";
                }

                v74 = *(a2 + 32);
                if (*(a2 + 68))
                {
                  v76 = FigCFDictionaryGetBooleanValue();
                  *&v75 = COERCE_DOUBLE(" (Outro)");
                  if (v76 == v10)
                  {
                    *&v75 = COERCE_DOUBLE(" (Intro)");
                  }
                }

                else
                {
                  *&v75 = COERCE_DOUBLE("");
                }

                *&v77 = COERCE_DOUBLE("T");
                LODWORD(rhs.value) = 136316418;
                *(&rhs.value + 4) = "fbapop_processOverlapRange";
                LOWORD(rhs.flags) = 2048;
                *(&rhs.flags + 2) = a1;
                if (!v103)
                {
                  *&v77 = COERCE_DOUBLE("F");
                }

                HIWORD(rhs.epoch) = 2082;
                v117 = v97;
                v118 = 2112;
                v119 = v74;
                v120 = 2080;
                v121 = *&v75;
                v122 = 2080;
                v123 = *&v77;
                LODWORD(v94) = 62;
                _os_log_send_and_compose_impl(v99, 0, &lhs, 128, &dword_1962D5000, v101, 0, "<<<< FigBufferedAirPlayOutputProxy >>>> %s: [%p] %{public}s rpID[%@]%s Intro isn't playing yet. introIsWaitingForMixStart:%s. Disconnected rp downstream consumer.", &rhs, v94);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            fbapop_requestRetransmitForRPWithMixEventID(a1, v26);
            fbapop_invokeCallbackAndReleaseRenderPipelineSetRateAndAnchorTimeContextWithError(a1, a2, -17326);
          }
        }

        else if (!*(a2 + 47))
        {
          fbapop_requestRetransmitForRPWithMixEventID(a1, v26);
        }
      }

      v17 = *(a2 + 68);
      *(a2 + 68) = 0;
      if (!v17)
      {
LABEL_12:
        if (*(a2 + 68))
        {
          *(a2 + 76) = 1;
        }

        FigBufferedAirPlaySubPipeManagerGetCMBaseObject();
        v19 = v18;
        v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v20)
        {
          v21 = v20(v19, @"OverlapRange", a3);
          if (v21)
          {
LABEL_16:
            v22 = v21;
            v23 = 0;
            v24 = 0;
            v25 = 0;
            goto LABEL_49;
          }

          *&v27 = COERCE_DOUBLE(FigCFDictionaryGetNumberValue());
          if (FigCFDictionaryGetBooleanValue() == v10)
          {
            RenderPipelineStateForMixEventIDWithOverlapRangeType = fbapop_getRenderPipelineStateForMixEventIDWithOverlapRangeType(a1, v27, @"Outro");
            v29 = a2;
          }

          else
          {
            if (FigCFDictionaryGetBooleanValue() != v10)
            {
              v23 = 0;
              v24 = 0;
              v25 = 0;
LABEL_85:
              v22 = 0;
              goto LABEL_49;
            }

            v29 = fbapop_getRenderPipelineStateForMixEventIDWithOverlapRangeType(a1, v27, @"Intro");
            RenderPipelineStateForMixEventIDWithOverlapRangeType = a2;
          }

          v25 = 0;
          v102 = *&v27;
          if (RenderPipelineStateForMixEventIDWithOverlapRangeType && v29)
          {
            v30 = *(RenderPipelineStateForMixEventIDWithOverlapRangeType + 68);
            v31 = *(RenderPipelineStateForMixEventIDWithOverlapRangeType + 48);
            CMBaseObjectGetDerivedStorage();
            time.epoch = v8;
            dictionaryRepresentation = 0;
            *&time.value = v106;
            *&type.value = v106;
            type.epoch = v8;
            if (v30)
            {
              if (v31)
              {
                v32 = FigCFDictionaryGetDictionaryValue();
                CMTimeMakeFromDictionary(&time, v32);
                FigBufferedAirPlaySubPipeManagerGetCMBaseObject();
                v34 = v33;
                v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v35)
                {
                  if (!v35(v34, @"MixStartMediaTime", allocator, &dictionaryRepresentation))
                  {
                    CMTimeMakeFromDictionary(&lhs, dictionaryRepresentation);
                    v131 = lhs.value;
                    flags = lhs.flags;
                    timescale = lhs.timescale;
                    epoch = lhs.epoch;
                    if (lhs.flags)
                    {
                      lhs = time;
                      rhs.value = v131;
                      rhs.timescale = timescale;
                      rhs.flags = flags;
                      rhs.epoch = epoch;
                      CMTimeAdd(&type, &lhs, &rhs);
                    }

                    else
                    {
                      type = time;
                    }

                    if (dword_1EAF16AD0)
                    {
                      v113 = 0;
                      v112 = OS_LOG_TYPE_DEFAULT;
                      v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      v49 = v113;
                      v107 = v48;
                      v100 = v112;
                      v50 = os_log_type_enabled(v48, v112);
                      LODWORD(v51) = v49 & 0xFFFFFFFE;
                      if (v50)
                      {
                        v51 = v49;
                      }

                      else
                      {
                        v51 = v51;
                      }

                      if (v51)
                      {
                        v52 = v51;
                        if (a1)
                        {
                          v98 = CMBaseObjectGetDerivedStorage();
                        }

                        else
                        {
                          v98 = "";
                        }

                        lhs = time;
                        v53 = CMTimeGetSeconds(&lhs);
                        lhs.value = v131;
                        lhs.timescale = timescale;
                        lhs.flags = flags;
                        lhs.epoch = epoch;
                        v54 = CMTimeGetSeconds(&lhs);
                        lhs = type;
                        v55 = CMTimeGetSeconds(&lhs);
                        LODWORD(rhs.value) = 136316418;
                        *(&rhs.value + 4) = "fbapop_getMixStartTimeFromSubPipeManagerUsingOverlapRange";
                        LOWORD(rhs.flags) = 2048;
                        *(&rhs.flags + 2) = a1;
                        HIWORD(rhs.epoch) = 2082;
                        v117 = v98;
                        v118 = 2048;
                        v119 = v53;
                        v120 = 2048;
                        v121 = v54;
                        v122 = 2048;
                        v123 = v55;
                        LODWORD(v94) = 62;
                        _os_log_send_and_compose_impl(v52, 0, &lhs, 128, &dword_1962D5000, v107, v100, "<<<< FigBufferedAirPlayOutputProxy >>>> %s: [%p] %{public}s outroStarTime:%1.3f, subPipeMixStartMediaTime:%1.3f, mixStarTime:%1.3f", &rhs, v94);
                      }

                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                    }
                  }
                }
              }
            }

            if (dictionaryRepresentation)
            {
              CFRelease(dictionaryRepresentation);
            }

            v128 = type.value;
            v129 = type.timescale;
            if (type.flags)
            {
              lhs.value = v128;
              lhs.timescale = v129;
              lhs.flags = type.flags;
              lhs.epoch = type.epoch;
              v25 = CMTimeCopyAsDictionary(&lhs, allocator);
              FigBufferedAirPlaySubPipeManagerGetCMBaseObject();
              v57 = v56;
              v58 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (!v58)
              {
                v23 = 0;
                v24 = 0;
                goto LABEL_48;
              }

              v59 = v58(v57, @"MixStartMediaTime", v25);
              if (v59)
              {
LABEL_75:
                v22 = v59;
                v23 = 0;
                v24 = 0;
                goto LABEL_49;
              }
            }

            else
            {
              v25 = 0;
            }

            v59 = fbapop_connectRenderPipelineToBAO(a1, RenderPipelineStateForMixEventIDWithOverlapRangeType, 0);
            if (v59)
            {
              goto LABEL_75;
            }

            v59 = fbapop_connectRenderPipelineToBAO(a1, v29, 0);
            if (v59)
            {
              goto LABEL_75;
            }
          }

          v22 = 0;
          v23 = 0;
          if (!a3 || !RenderPipelineStateForMixEventIDWithOverlapRangeType || !v29)
          {
            v24 = 0;
            goto LABEL_49;
          }

          if (!*(RenderPipelineStateForMixEventIDWithOverlapRangeType + 64) && *(v29 + 64))
          {
            LODWORD(time.value) = 0;
            LOBYTE(type.value) = 0;
            v60 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v61 = time.value;
            value_low = LOBYTE(type.value);
            v108 = v60;
            if (os_log_type_enabled(v60, type.value))
            {
              v63 = v61;
            }

            else
            {
              v63 = v61 & 0xFFFFFFFE;
            }

            if (v63)
            {
              if (a1)
              {
                v64 = CMBaseObjectGetDerivedStorage();
              }

              else
              {
                v64 = "";
              }

              v65 = *(a2 + 32);
              if (*(a2 + 68))
              {
                v66 = FigCFDictionaryGetBooleanValue();
                *&v67 = COERCE_DOUBLE(" (Outro)");
                if (v66 == v10)
                {
                  *&v67 = COERCE_DOUBLE(" (Intro)");
                }
              }

              else
              {
                *&v67 = COERCE_DOUBLE("");
              }

              v68 = *(RenderPipelineStateForMixEventIDWithOverlapRangeType + 32);
              v69 = *(v29 + 32);
              LODWORD(rhs.value) = 136316930;
              *(&rhs.value + 4) = "fbapop_processOverlapRange";
              LOWORD(rhs.flags) = 2048;
              *(&rhs.flags + 2) = a1;
              HIWORD(rhs.epoch) = 2082;
              v117 = v64;
              v118 = 2112;
              v119 = v65;
              v120 = 2080;
              v121 = *&v67;
              v122 = 2112;
              v123 = v102;
              v124 = 2112;
              v125 = v68;
              v126 = 2112;
              v127 = v69;
              LODWORD(v94) = 82;
              _os_log_send_and_compose_impl(v63, 0, &lhs, 128, &dword_1962D5000, v108, value_low, "<<<< FigBufferedAirPlayOutputProxy >>>> %s: [%p] %{public}s rpID[%@]%s Error: Requesting ActiveConfigurationChanged on BAO. Attempted to set outro overlap with mixEventID %@ after intro timebase has already started. Outro: %@, Intro: %@", &rhs, v94);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            MutableCopy = FigCFDictionaryCreateMutableCopy();
            if (MutableCopy)
            {
              v24 = MutableCopy;
              UInt64 = FigCFNumberCreateUInt64();
              if (!UInt64)
              {
                LODWORD(time.value) = 0;
                LOBYTE(type.value) = 0;
                v83 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v84 = time.value;
                v85 = LOBYTE(type.value);
                if (os_log_type_enabled(v83, type.value))
                {
                  v86 = v84;
                }

                else
                {
                  v86 = v84 & 0xFFFFFFFE;
                }

                if (v86)
                {
                  if (a1)
                  {
                    v87 = CMBaseObjectGetDerivedStorage();
                  }

                  else
                  {
                    v87 = "";
                  }

                  v91 = *(a2 + 32);
                  if (*(a2 + 68))
                  {
                    v92 = FigCFDictionaryGetBooleanValue();
                    *&v93 = COERCE_DOUBLE(" (Outro)");
                    if (v92 == v10)
                    {
                      *&v93 = COERCE_DOUBLE(" (Intro)");
                    }
                  }

                  else
                  {
                    *&v93 = COERCE_DOUBLE("");
                  }

                  LODWORD(rhs.value) = 136316162;
                  *(&rhs.value + 4) = "fbapop_processOverlapRange";
                  LOWORD(rhs.flags) = 2048;
                  *(&rhs.flags + 2) = a1;
                  HIWORD(rhs.epoch) = 2082;
                  v117 = v87;
                  v118 = 2112;
                  v119 = v91;
                  v120 = 2080;
                  v121 = *&v93;
                  LODWORD(v94) = 52;
                  _os_log_send_and_compose_impl(v86, 0, &lhs, 128, &dword_1962D5000, v83, v85, "<<<< FigBufferedAirPlayOutputProxy >>>> %s: [%p] %{public}s rpID[%@]%s Failed to allocate tokenNumberRef", &rhs, v94);
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v23 = 0;
                goto LABEL_85;
              }

              v23 = UInt64;
              CFDictionarySetValue(v24, @"Token", UInt64);
              CMNotificationCenterGetDefaultLocalCenter();
              CMNotificationCenterPostNotification();
              v72 = *(v104 + 24);
              v73 = *(*(CMBaseObjectGetVTable() + 16) + 88);
              if (v73)
              {
                v22 = v73(v72);
                goto LABEL_49;
              }

LABEL_48:
              v22 = 4294954514;
              goto LABEL_49;
            }

            LODWORD(time.value) = 0;
            LOBYTE(type.value) = 0;
            v78 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v79 = time.value;
            v80 = LOBYTE(type.value);
            if (os_log_type_enabled(v78, type.value))
            {
              v81 = v79;
            }

            else
            {
              v81 = v79 & 0xFFFFFFFE;
            }

            if (v81)
            {
              if (a1)
              {
                v82 = CMBaseObjectGetDerivedStorage();
              }

              else
              {
                v82 = "";
              }

              v88 = *(a2 + 32);
              if (*(a2 + 68))
              {
                v89 = FigCFDictionaryGetBooleanValue();
                *&v90 = COERCE_DOUBLE(" (Outro)");
                if (v89 == v10)
                {
                  *&v90 = COERCE_DOUBLE(" (Intro)");
                }
              }

              else
              {
                *&v90 = COERCE_DOUBLE("");
              }

              LODWORD(rhs.value) = 136316162;
              *(&rhs.value + 4) = "fbapop_processOverlapRange";
              LOWORD(rhs.flags) = 2048;
              *(&rhs.flags + 2) = a1;
              HIWORD(rhs.epoch) = 2082;
              v117 = v82;
              v118 = 2112;
              v119 = v88;
              v120 = 2080;
              v121 = *&v90;
              LODWORD(v94) = 52;
              _os_log_send_and_compose_impl(v81, 0, &lhs, 128, &dword_1962D5000, v78, v80, "<<<< FigBufferedAirPlayOutputProxy >>>> %s: [%p] %{public}s rpID[%@]%s Failed to allocate notificationPayload", &rhs, v94);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v23 = 0;
          v24 = 0;
          goto LABEL_85;
        }

LABEL_47:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        goto LABEL_48;
      }
    }

    CFRelease(v17);
    goto LABEL_12;
  }

  fbapop_processOverlapRange_cold_1(&lhs);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v22 = LODWORD(lhs.value);
LABEL_49:
  if (cf)
  {
    CFRelease(cf);
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

  return v22;
}

uint64_t __fbapop_requestRetransmitForRPWithMixEventID_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = FigCFDictionaryGetValueIfPresent();
  if (result)
  {
    result = FigCFEqual();
    if (result)
    {
      v5 = *(a3 + 48);
      VTable = CMBaseObjectGetVTable();
      v7 = *(VTable + 16);
      result = VTable + 16;
      v8 = *(v7 + 64);
      if (v8)
      {
        return v8(v5, 0);
      }
    }
  }

  return result;
}

uint64_t fbapop_getMixEventIDForSubPipeManager(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  FigCFDictionaryApplyBlock();
  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __fbapop_setGoActiveOnRPAsync_block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  FigRenderPipelineGetFigBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v5)
  {
    v5(v4, @"GoActive", *v2);
  }

  v6 = *(a1 + 32);
  if (v6)
  {

    CFRelease(v6);
  }
}

void __fbapop_setPriorityOnConnectedPipelines_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  v4 = *(a3 + 24);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(v4, @"DownstreamConsumer", *MEMORY[0x1E695E480], &cf);
    if (cf)
    {
      v6 = *(a1 + 32);
      FigBufferedAirPlaySubPipeManagerGetCMBaseObject();
      v8 = v7;
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v9)
      {
        v9(v8, @"ThreadPriority", v6);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }
}

void __fbapop_setEndOfTrackReachedAndNotifyRenderPipeline_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 48) == *(a1 + 32))
  {
    *(a3 + 46) = 1;
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (MutableCopy)
    {
      v4 = MutableCopy;
      UInt64 = FigCFNumberCreateUInt64();
      if (UInt64)
      {
        v6 = UInt64;
        CFDictionarySetValue(v4, @"Token", UInt64);
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        CFRelease(v4);

        CFRelease(v6);
      }

      else
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        CFRelease(v4);
      }
    }

    else
    {
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

uint64_t __fbapop_getMixEventIDForSubPipeManager_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 48) == *(result + 40))
  {
    v3 = result;
    result = FigCFDictionaryGetValueIfPresent();
    if (result)
    {
      *(*(*(v3 + 32) + 8) + 24) = 0;
    }
  }

  return result;
}

double __fbapop_stopSubPipeManagerWithIntroAndMixEventID_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0] && FigCFDictionaryGetValueIfPresent() && FigCFEqual())
  {
    if (dword_1EAF16AD0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = a3[6];
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v7 || v7(v6))
    {
      if (dword_1EAF16AD0)
      {
        v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  return result;
}

uint64_t __FigBufferedAirPlayAudioChainSubPipeIsSenderSideMixingArchitectureEnabled_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  _MergedGlobals_16 = result;
  return result;
}

uint64_t __fbapop_debugPrintTimeIntervalReachedCallback_block_invoke()
{
  result = FigGetCFPreferenceBooleanWithDefault();
  fbapop_debugPrintTimeIntervalReachedCallback_sDebugEnabled = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(v10, 0, a3, 128, a5, v8, v9, a8);
}

uint64_t OUTLINED_FUNCTION_7_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_9_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_10_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(v10, 0, a3, 128, a5, v8, v9, a8);
}

uint64_t OUTLINED_FUNCTION_18_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_35_2()
{

  return CMBaseObjectGetVTable();
}

BOOL OUTLINED_FUNCTION_39_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

__n128 OUTLINED_FUNCTION_41_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a21, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a22)
{
  result = a22;
  *(v22 + 104) = a22;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, char a14, char a15, char a16)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_43_2(uint64_t a1)
{

  return FigSimpleMutexLock();
}

uint64_t OUTLINED_FUNCTION_45_2(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, __int128 a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  *(v52 + 104) = a2;
  a49 = a18;
  a52 = a34;

  return FigBufferedAirPlayOutputFlushWithinTimeRange(a1, &a48);
}

uint64_t OUTLINED_FUNCTION_46_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, char a16, int a17)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_52_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return CMBaseObjectGetVTable();
}

Float64 OUTLINED_FUNCTION_55_2@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, CMTime *time, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t timea, uint64_t time_8, uint64_t time_16)
{
  time_16 = a1;

  return CMTimeGetSeconds(&timea);
}

CFTypeID OUTLINED_FUNCTION_56_1()
{

  return CFGetTypeID(v0);
}

const void *OUTLINED_FUNCTION_57_1(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *v1;

  return CFDictionaryGetValue(v3, v4);
}

BOOL OUTLINED_FUNCTION_68_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, char a14, os_log_type_t type, int a16)
{

  return os_log_type_enabled(a1, type);
}

const void *OUTLINED_FUNCTION_70_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *v1;

  return CFDictionaryGetValue(v3, v4);
}

uint64_t fcks_remote_ensureClientEstablished()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fcks_remote_ensureClientEstablished_block_invoke;
  block[3] = &unk_1E7477730;
  block[4] = &v3;
  if (fcks_remote_ensureClientEstablished_sFigContentKeySessionRemoteClientSetupOnce != -1)
  {
    dispatch_once(&fcks_remote_ensureClientEstablished_sFigContentKeySessionRemoteClientSetupOnce, block);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t __copy_assignment_8_8_t0w4_pa0_52572_8_pa0_57120_16_pa0_14239_24_pa0_30190_32_pa0_41757_40(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = *(a2 + 40);
  return result;
}

void __fcks_remote_ensureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = Mutable;
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"FigContentKeySession_ServerConnectionDied");
    FigRemote_ShouldConnectToMediaparserdForFileParsing();
    FigRemote_ShouldConnectToMediaplaybackd();
    *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate();
    CFRelease(v3);
  }

  else
  {
    __fcks_remote_ensureClientEstablished_block_invoke_cold_1(a1);
  }
}

uint64_t fcks_remote_deadConnectionCallback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 1) = 1;
  return result;
}

void __fcks_remote_handleKeyResponseErrorCallback_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {

    CFRelease(v4);
  }
}

void __fcks_remote_handleKeyResponseSuccessfullyProcessedCallback_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __fcks_remote_handlePersistentKeyUpdatedCallback_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {

    CFRelease(v4);
  }
}

void __fcks_remote_handleSecureStopDidFinalizeRecordCallback_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40));
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __fcks_remote_externalProtectionStateChangedCallback_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    CFRelease(v3);
  }
}

__CFString *fcks_remote_copyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*DerivedStorage)
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigContentKeySession_Remote %p retainCount: %ld%s allocator: %p, ", a1, v5, v6, v7);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t fcks_remote_getObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    if (*DerivedStorage)
    {
      fcks_remote_getObjectID_cold_1(&v6);
      return v6;
    }

    else if (DerivedStorage[1])
    {
      fcks_remote_getObjectID_cold_2(&v7);
      return v7;
    }

    else
    {
      result = 0;
      *a2 = *(v4 + 1);
    }
  }

  else
  {
    fcks_remote_getObjectID_cold_3(&v8);
    return v8;
  }

  return result;
}

uint64_t fcks_remote_addChildSession(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  v7 = 0;
  if (!a2)
  {
    fcks_remote_addChildSession_cold_3(&v10);
LABEL_11:
    v5 = v10;
    goto LABEL_12;
  }

  ObjectID = fcks_remote_getObjectID(a1, &v9);
  if (ObjectID || (ObjectID = fcks_remote_getObjectID(a2, &v8), ObjectID) || (ObjectID = FigXPCCreateBasicMessage(), ObjectID))
  {
    v5 = ObjectID;
LABEL_12:
    FigXPCRelease();
    return v5;
  }

  UInt64 = FigCFNumberCreateUInt64();
  if (!UInt64)
  {
    fcks_remote_addChildSession_cold_2(&v10);
    goto LABEL_11;
  }

  fcks_remote_addChildSession_cold_1(&v7, UInt64, &v10);
  return v10;
}

uint64_t OUTLINED_FUNCTION_5_5(uint64_t a1, uint64_t a2)
{

  return FigXPCMessageCopyCFString();
}

uint64_t FigCaptionRendererCellStackLayoutRegionSetPosition(uint64_t a1, _OWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a2[1];
  *(DerivedStorage + 8) = *a2;
  *(DerivedStorage + 24) = v4;
  return 0;
}

uint64_t FigCaptionRendererCellStackLayoutRegionGetPosition(uint64_t a1, _OWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 24);
    *a2 = *(DerivedStorage + 8);
    a2[1] = v4;
  }

  return 0;
}

uint64_t FigCaptionRendererCellStackLayoutRegionDigestLayoutInfo(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v32 = 0u;
  v33 = 0u;
  v5 = *(DerivedStorage + 24);
  v30 = *(DerivedStorage + 8);
  v31 = v5;
  FigGeometryMappingConvertPointToPoint();
  v6 = *(MEMORY[0x1E695F058] + 16);
  v30 = *MEMORY[0x1E695F058];
  v31 = v6;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v8 = *(ProtocolVTable + 16);
    if (v8)
    {
      v9 = *(v8 + 72);
      if (v9)
      {
        v9(a1, &v30);
      }
    }
  }

  v10 = FCRGetCEA608CellSize(*(a2 + 704));
  v12 = v11;
  v13 = v31;
  FigCaptionRendererRegionProtocolGetProtocolID();
  v14 = CMBaseObjectGetProtocolVTable();
  if (v14)
  {
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = *(v15 + 56);
      if (v16)
      {
        v16(a1, 0.0, 0.0);
      }
    }
  }

  v17 = *&v32;
  v18 = *&v33;
  FigCaptionRendererRegionProtocolGetProtocolID();
  v19 = CMBaseObjectGetProtocolVTable();
  if (v19)
  {
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = *(v20 + 72);
      if (v21)
      {
        v21(a1, v17, 95.0 - v18);
      }
    }
  }

  FigCaptionRendererRegionProtocolGetProtocolID();
  v22 = CMBaseObjectGetProtocolVTable();
  if (v22)
  {
    v24 = *(v22 + 16);
    if (v24)
    {
      v25 = *(v24 + 24);
      if (v25)
      {
        LODWORD(v23) = vcvtd_n_s64_f64(v10 * 100.0 / *&v13, 5uLL);
        v25(a1, v23);
      }
    }
  }

  FigCaptionRendererStackLayoutRegionProtocolGetProtocolID();
  v26 = CMBaseObjectGetProtocolVTable();
  if (v26)
  {
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = *(v27 + 16);
      if (v28)
      {
        v28(a1, v12 * 100.0 / *(&v13 + 1) / 100.0);
      }
    }
  }

  return 0;
}

void FigCaptionRendererCellStackLayoutRegionFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *FigCaptionRendererCellStackLayoutRegionCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererCellStackLayoutRegion: <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererBaseProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererCellStackLayoutRegion <FigCaptionRendererBaseProtocol> on <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererCellStackLayoutRegion <FigCaptionRendererNodeProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_SetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_GetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_GetChildren(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_HasChildNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v7 = *(ProtocolVTable + 16);
  if (!v7)
  {
    return 4294954508;
  }

  v8 = *(v7 + 32);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v5, a2, a3);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_AddChildNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 40);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_RemoveChildNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 48);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_RemovelAllChildrenNodes(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v3 = *(ProtocolVTable + 16);
  if (!v3)
  {
    return 4294954508;
  }

  v4 = *(v3 + 56);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_SetViewport(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v15 = *(ProtocolVTable + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 64);
  if (!v16)
  {
    return 4294954514;
  }

  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return v16(v9, v11, v12, v13, v14);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_GetViewport(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 72);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_SetFCRBounds(uint64_t a1, __int128 *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 80);
  if (!v6)
  {
    return 4294954514;
  }

  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v10;
  v12[3] = v11;
  return v6(v3, v12);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_GetFCRBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 88);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_SetCGBounds(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v15 = *(ProtocolVTable + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 96);
  if (!v16)
  {
    return 4294954514;
  }

  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return v16(v9, v11, v12, v13, v14);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_GetCGBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 104);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_SetCGSize(uint64_t a1, double a2, double a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 112);
  if (!v10)
  {
    return 4294954514;
  }

  v7.n128_f64[0] = a2;
  v8.n128_f64[0] = a3;

  return v10(v5, v7, v8);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_GetCGSize(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 120);
  if (!v6)
  {
    return 4294954508;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_SetCGOrigin(uint64_t a1, double a2, double a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 128);
  if (!v10)
  {
    return 4294954514;
  }

  v7.n128_f64[0] = a2;
  v8.n128_f64[0] = a3;

  return v10(v5, v7, v8);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_GetCGOrigin(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 136);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_SetPaddings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v15 = *(ProtocolVTable + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 144);
  if (!v16)
  {
    return 4294954514;
  }

  return v16(v13, a2, a3, a4, a5, a6, a7);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_GetInsetCGBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 152);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_PurgeImageCache(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v3 = *(ProtocolVTable + 16);
  if (!v3)
  {
    return 4294954508;
  }

  v4 = *(v3 + 160);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_SetImageCache(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 168);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_GetImageCache(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 176);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_GetImageCacheWidth(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 184);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_GetImageCacheHeight(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 192);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_AllocateImageBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 200);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v7, a2, a3, a4);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_GetImageBuffer(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 208);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_SetNeedRedraw(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 216);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_GetNeedRedraw(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 224);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_SetNeedLayout(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 232);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_GetNeedLayout(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 240);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_HasActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 248);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_SetZOrder(uint64_t a1, double a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v6 = *(ProtocolVTable + 16);
  if (!v6)
  {
    return 4294954508;
  }

  v7 = *(v6 + 256);
  if (!v7)
  {
    return 4294954514;
  }

  v5.n128_f64[0] = a2;

  return v7(v3, v5);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_GetZOrder(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 264);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_ResetNodeTree(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v3 = *(ProtocolVTable + 16);
  if (!v3)
  {
    return 4294954508;
  }

  v4 = *(v3 + 272);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_Draw(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 280);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_Layout(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCellStackLayoutRegionDigestLayoutInfo(a1, a2);
  v5 = *DerivedStorage;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v7 = *(ProtocolVTable + 16);
  if (!v7)
  {
    return 4294954508;
  }

  v8 = *(v7 + 288);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v5, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_ExecActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 296);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_Compose(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = 0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v6 = *(ProtocolVTable + 16);
    if (v6)
    {
      v7 = *(v6 + 248);
      if (v7)
      {
        v7(a1, &v25 + 1);
        if (HIBYTE(v25))
        {
          FigCaptionRendererNodeProtocolGetProtocolID();
          v8 = CMBaseObjectGetProtocolVTable();
          if (v8)
          {
            v9 = *(v8 + 16);
            if (v9)
            {
              v10 = *(v9 + 296);
              if (v10)
              {
                v10(a1, a2);
              }
            }
          }
        }
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v11 = CMBaseObjectGetProtocolVTable();
  if (v11)
  {
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = *(v12 + 240);
      if (v13)
      {
        v13(a1, &v25);
        if (v25)
        {
          FigCaptionRendererNodeProtocolGetProtocolID();
          v14 = CMBaseObjectGetProtocolVTable();
          if (v14)
          {
            v15 = *(v14 + 16);
            if (v15)
            {
              v16 = *(v15 + 288);
              if (v16)
              {
                v16(a1, a2);
              }
            }
          }
        }
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v17 = CMBaseObjectGetProtocolVTable();
  if (v17)
  {
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = *(v18 + 280);
      if (v19)
      {
        v19(a1, a2);
      }
    }
  }

  v20 = *DerivedStorage;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v21 = CMBaseObjectGetProtocolVTable();
  if (!v21)
  {
    return 4294954508;
  }

  v22 = *(v21 + 16);
  if (!v22)
  {
    return 4294954508;
  }

  v23 = *(v22 + 304);
  if (v23)
  {
    return v23(v20, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_OnChildUpdateDisplayRequest(uint64_t a1, __int128 *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 4);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 312);
  if (!v6)
  {
    return 4294954514;
  }

  v11[0] = v8;
  v11[1] = v9;
  v12 = v10;
  return v6(v3, v11);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_AddAction(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 320);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_RemoveAllActions(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v3 = *(ProtocolVTable + 16);
  if (!v3)
  {
    return 4294954508;
  }

  v4 = *(v3 + 328);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_SetActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 336);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_GetActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 344);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_SelectAt(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v11 = *(ProtocolVTable + 16);
  if (!v11)
  {
    return 4294954508;
  }

  v12 = *(v11 + 352);
  if (!v12)
  {
    return 4294954514;
  }

  v9.n128_f64[0] = a3;
  v10.n128_f64[0] = a4;

  return v12(v7, a2, v9, v10);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_UnselectAt(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v11 = *(ProtocolVTable + 16);
  if (!v11)
  {
    return 4294954508;
  }

  v12 = *(v11 + 360);
  if (!v12)
  {
    return 4294954514;
  }

  v9.n128_f64[0] = a3;
  v10.n128_f64[0] = a4;

  return v12(v7, a2, v9, v10);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_IsSelected(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 368);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_BeginScene(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 376);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererNodeProtocol_EndScene(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 384);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

__CFString *FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererRegionProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererCellStackLayoutRegion <FigCaptionRendererRegionProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererRegionProtocol_SetRegionID(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererRegionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererRegionProtocol_GetRegionID(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererRegionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererRegionProtocol_SetWidth(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererRegionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererRegionProtocol_GetWidth(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererRegionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 32);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererRegionProtocol_SetLines(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererRegionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 40);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererRegionProtocol_GetLines(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererRegionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 48);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererRegionProtocol_SetRegionAnchor(uint64_t a1, double a2, double a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererRegionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 56);
  if (!v10)
  {
    return 4294954514;
  }

  v7.n128_f64[0] = a2;
  v8.n128_f64[0] = a3;

  return v10(v5, v7, v8);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererRegionProtocol_GetRegionAnchor(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererRegionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 64);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererRegionProtocol_SetViewportAnchor(uint64_t a1, double a2, double a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererRegionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 72);
  if (!v10)
  {
    return 4294954514;
  }

  v7.n128_f64[0] = a2;
  v8.n128_f64[0] = a3;

  return v10(v5, v7, v8);
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererRegionProtocol_GetViewportAnchor(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererRegionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 80);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

__CFString *FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererStackLayoutRegionProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererCellStackLayoutRegion <FigCaptionRendererStackLayoutRegionProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererCellStackLayoutRegion_FigCaptionRendererStackLayoutRegionProtocol_SetAnimationEnabled(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererStackLayoutRegionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t RegisterFigCaptionRendererCellStackLayoutRegionBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigCreateClosedCaptionRenderPipeline(const opaqueCMFormatDescription *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, const __CFDictionary *a7, CFTypeRef *a8)
{
  cf = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a3)
  {
    v13 = a2 != 0;
  }

  else
  {
    v13 = 0;
  }

  if ((a2 != 0) == (a3 != 0))
  {
    if (a5)
    {
      v14 = a4 != 0;
    }

    else
    {
      v14 = 0;
    }

    if ((a4 != 0) == (a5 != 0))
    {
      v15 = *MEMORY[0x1E695E480];
      FigRenderPipelineGetClassID();
      v16 = CMDerivedObjectCreate();
      if (v16)
      {
        goto LABEL_17;
      }

      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *(DerivedStorage + 1) = 1;
      *(DerivedStorage + 8) = FigSimpleMutexCreate();
      v16 = FigCEA608CaptionDecoderCreate(v15, a1, ccrp_closedCaptionCallbackFromClosedCaptionRenderPipeline, cf, 0, (DerivedStorage + 16));
      if (v16)
      {
        goto LABEL_17;
      }

      if (a1)
      {
        v18 = CFRetain(a1);
      }

      else
      {
        v18 = 0;
      }

      *(DerivedStorage + 32) = v18;
      if (v13 && (*(DerivedStorage + 40) = a2, v19 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (*(DerivedStorage + 48) = v19) == 0))
      {
        FigCreateClosedCaptionRenderPipeline_cold_2(&v30);
      }

      else
      {
        *(DerivedStorage + 24) = 1681272888;
        v20 = *a6;
        *(DerivedStorage + 96) = *(a6 + 2);
        *(DerivedStorage + 80) = v20;
        v30 = *a6;
        v31 = *(a6 + 2);
        FigSimpleRenderPipelineCreateWithCallback(v15, ccrp_feedClosedCaptionSampleToParserAndRenderIfNecessary, 0, cf, &v30, a7, (DerivedStorage + 56));
        if (v16)
        {
LABEL_17:
          v21 = v16;
          goto LABEL_18;
        }

        FigRenderPipelineGetFigBaseObject();
        v24 = v23;
        v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v25)
        {
          v21 = 4294954514;
          goto LABEL_18;
        }

        v16 = v25(v24, @"SourceSampleBufferQueue", v15, DerivedStorage + 64);
        if (v16)
        {
          goto LABEL_17;
        }

        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterAddListener();
        if (!v14 || (*(DerivedStorage + 128) = a4, v26 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (*(DerivedStorage + 136) = v26) != 0))
        {
          v21 = 0;
          *a8 = cf;
          return v21;
        }

        FigCreateClosedCaptionRenderPipeline_cold_1(&v30);
      }
    }

    else
    {
      FigCreateClosedCaptionRenderPipeline_cold_3(&v30);
    }
  }

  else
  {
    FigCreateClosedCaptionRenderPipeline_cold_4(&v30);
  }

  v21 = v30;
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  return v21;
}

void ccrp_closedCaptionCallbackFromClosedCaptionRenderPipeline(uint64_t a1, const __CFDictionary *a2, CMTime *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 40))
  {
    v9 = DerivedStorage;
    v10 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v10)
    {
      v11 = v10;
      cf[0] = 0;
      if (!*(CMBaseObjectGetDerivedStorage() + 144))
      {
        goto LABEL_18;
      }

      FigBytePumpGetFigBaseObject();
      v13 = v12;
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v14)
      {
        goto LABEL_18;
      }

      v16 = v14(v13, 0x1F0B4C778, *MEMORY[0x1E695E480], cf) == 0;
      v15 = *MEMORY[0x1E695E4D0];
      v16 = v16 && v15 == cf[0];
      v17 = v16;
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      v18 = v17 ^ 1;
      if (!a2)
      {
        v18 = 1;
      }

      if ((v18 & 1) == 0)
      {
        MutableCopy = FigCFDictionaryCreateMutableCopy();
        CFDictionarySetValue(MutableCopy, @"H", v15);
        v20 = *(v9 + 40);
        *cf = *&a3->value;
        epoch = a3->epoch;
        v20(a4, a1, MutableCopy, cf, v11);
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }
      }

      else
      {
LABEL_18:
        v21 = *(v9 + 40);
        *cf = *&a3->value;
        epoch = a3->epoch;
        v21(a4, a1, a2, cf, v11);
      }

      CFRelease(v11);
    }
  }
}

void ccrp_feedClosedCaptionSampleToParserAndRenderIfNecessary(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v16, 0, sizeof(v16));
  CMTimebaseGetTime(&v16, *(DerivedStorage + 72));
  if (*DerivedStorage)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v14, v15);
  }

  else
  {
    v5 = CMGetAttachment(a2, *MEMORY[0x1E69604B0], 0);
    v6 = CMGetAttachment(a2, *MEMORY[0x1E6960510], 0);
    FigSimpleMutexLock();
    v7 = *(DerivedStorage + 16);
    if (v7)
    {
      if (v5)
      {
        v12 = v16;
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v8)
        {
          v17 = v12;
          v8(v7, &v17);
        }
      }

      else
      {
        if (v6)
        {
          v13 = v16;
          v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (v9)
          {
            v17 = v13;
            v9(v7, &v17);
          }

          v7 = *(DerivedStorage + 16);
        }

        v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v10 && !v10(v7, a2))
        {
          ccrp_feedCaptionDataToParser(a1);
        }
      }
    }

    FigSimpleMutexUnlock();
  }
}

uint64_t ccrp_resetOutput(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 128))
  {
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v4)
    {
      v5 = v4;
      (*(DerivedStorage + 128))(a2, v4);
      CFRelease(v5);
    }
  }

  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 16);
  if (v6)
  {
    CMTimebaseGetTime(&v9, *(DerivedStorage + 72));
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v7)
    {
      v10 = v9;
      v7(v6, &v10);
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t figClosedCaptionRenderPipelineInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    if (!*DerivedStorage)
    {
      *DerivedStorage = 1;
      ccrp_tearDownFeedingSource(a1);
      if (v3[8])
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterRemoveListener();
        CFRelease(v3[8]);
        v3[8] = 0;
      }

      if (v3[7])
      {
        FigRenderPipelineGetFigBaseObject();
        if (v4)
        {
          v5 = v4;
          v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v6)
          {
            v6(v5);
          }
        }

        CFRelease(v3[7]);
        v3[7] = 0;
      }

      FigSimpleMutexLock();
      v7 = v3[2];
      v3[2] = 0;
      FigSimpleMutexUnlock();
      if (v7)
      {
        CFRelease(v7);
      }

      v8 = v3[9];
      if (v8)
      {
        CFRelease(v8);
        v3[9] = 0;
      }

      v9 = v3[4];
      if (v9)
      {
        CFRelease(v9);
        v3[4] = 0;
      }
    }
  }

  return 0;
}

void figClosedCaptionRenderPipelineFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 1) = 1;
  figClosedCaptionRenderPipelineInvalidate(a1);
  v3 = *(DerivedStorage + 48);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 48) = 0;
  }

  v4 = *(DerivedStorage + 136);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 136) = 0;
  }

  v5 = *(DerivedStorage + 144);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 144) = 0;
  }

  FigSimpleMutexDestroy();
  *(DerivedStorage + 8) = 0;
  v6 = *(DerivedStorage + 120);
  if (v6)
  {
    os_release(v6);
    *(DerivedStorage + 120) = 0;
  }
}

__CFString *figClosedCaptionRenderPipelineCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigClosedCaptionRenderPipeline %p>", a1);
  return Mutable;
}

void figClosedCaptionRenderPipelineCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && (v9 = DerivedStorage, !*DerivedStorage))
  {
    if (CFEqual(@"HDRCrossTalker", a2))
    {
      v11 = *(v9 + 18);
      if (v11)
      {
        v12 = CFRetain(v11);
      }

      else
      {
        v12 = 0;
      }

      *a4 = v12;
    }

    else
    {
      FigRenderPipelineGetFigBaseObject();
      v14 = v13;
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15)
      {

        v15(v14, a2, a3, a4);
      }
    }
  }

  else
  {
    v10 = qword_1EAF16AE8;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 4294954444, "<<<< CCRP >>>>", 735, v4);
  }
}

void figClosedCaptionRenderPipelineSetProperty(uint64_t a1, const void *a2, const __CFDictionary *a3)
{
  v4 = a3;
  values = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v8 = DerivedStorage, *DerivedStorage))
  {
    v9 = qword_1EAF16AE8;
    v10 = v3;
    v11 = 638;
LABEL_4:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954444, "<<<< CCRP >>>>", v11, v10);
    return;
  }

  if (CFEqual(@"Timebase", a2))
  {
    if (v4 && (TypeID = CMTimebaseGetTypeID(), TypeID != CFGetTypeID(v4)))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v54.value, v54.timescale, LODWORD(v54.epoch));
    }

    else
    {
      if (*(v8 + 9))
      {
        ccrp_tearDownFeedingSource(a1);
        CFRelease(*(v8 + 9));
      }

      *(v8 + 9) = v4;
      if (v4)
      {
        CFRetain(v4);
        v13 = CMBaseObjectGetDerivedStorage();
        v14 = dispatch_queue_create("com.apple.coremedia.ccrenderpipeline", 0);
        *(v13 + 104) = v14;
        if (v14)
        {
          v22 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v14);
          *(v13 + 112) = v22;
          if (v22)
          {
            v30 = FigCFWeakReferenceHolderCreateWithReferencedObject();
            dispatch_set_context(*(v13 + 112), v30);
            dispatch_source_set_cancel_handler_f(*(v13 + 112), ccrp_cancelFeedingHandler);
            dispatch_source_set_event_handler_f(*(v13 + 112), ccrp_feedingSourceHandler);
            *(v13 + 120) = voucher_copy();
            dispatch_resume(*(v13 + 112));
            v31 = CMTimebaseAddTimerDispatchSource(*(v13 + 72), *(v13 + 112));
            if (v31)
            {
              figClosedCaptionRenderPipelineSetProperty(v31, v32, v33, v34, v35, v36, v37, v38, v54.value, v54.timescale, v54.flags, v54.epoch);
            }
          }

          else
          {
            figClosedCaptionRenderPipelineSetProperty(0, v23, v24, v25, v26, v27, v28, v29, v54.value, v54.timescale, v54.flags, v54.epoch);
          }
        }

        else
        {
          figClosedCaptionRenderPipelineSetProperty(0, v15, v16, v17, v18, v19, v20, v21, v54.value, v54.timescale, v54.flags, v54.epoch);
        }
      }
    }

    goto LABEL_26;
  }

  if (!CFEqual(@"CCRPP_ClosedCaptionType", a2))
  {
    if (CFEqual(a2, @"CCRPP_TextHighlightArray"))
    {
      if (v4)
      {
        v44 = CFGetTypeID(v4);
        if (v44 != CFArrayGetTypeID())
        {
          v9 = qword_1EAF16AE8;
          v10 = v3;
          v11 = 708;
          goto LABEL_4;
        }

        v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kQTClosedCaptionTextHighlightArrayKey, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      v45 = FigCFWeakReferenceHolderCopyReferencedObject();
      memset(&v55, 0, sizeof(v55));
      CMTimebaseGetTime(&v55, *(v8 + 9));
      v46 = *(v8 + 5);
      v54 = v55;
      v46(a1, 8, v4, &v54, v45);
      if (!v4)
      {
        return;
      }

      v47 = v4;
    }

    else
    {
      if (!CFEqual(a2, @"HDRCrossTalker"))
      {
        goto LABEL_26;
      }

      if (!v4 || (v48 = CFGetTypeID(v4), v48 != FigCrossTalkerGetTypeID()))
      {
        v9 = qword_1EAF16AE8;
        v10 = v3;
        v11 = 716;
        goto LABEL_4;
      }

      v49 = *(v8 + 18);
      *(v8 + 18) = v4;
      CFRetain(v4);
      if (!v49)
      {
        return;
      }

      v47 = v49;
    }

    CFRelease(v47);
    return;
  }

  if (v4)
  {
    v39 = CFGetTypeID(v4);
    if (v39 == CFStringGetTypeID())
    {
      LODWORD(v54.value) = 0;
      valuePtr = 0;
      if (FigClosedCaptionGetClosedCaptionTypeAndChannelNumber(v4, &v54, &valuePtr))
      {
        FigSimpleMutexLock();
        if (*(v8 + 6) == LODWORD(v54.value))
        {
LABEL_54:
          v52 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
          FigBytePumpGetFigBaseObject();
          CMBaseObjectSetProperty(v53, 0x1F0B44258, v52);
          if (v52)
          {
            CFRelease(v52);
          }

          goto LABEL_56;
        }

        v55.value = 0;
        if (LODWORD(v54.value) == 1681272888)
        {
          v40 = FigCEA608CaptionDecoderCreate(*MEMORY[0x1E695E480], *(v8 + 4), ccrp_closedCaptionCallbackFromClosedCaptionRenderPipeline, a1, 0, &v55);
        }

        else
        {
          if (LODWORD(v54.value) != 1681338424)
          {
            v50 = *(v8 + 2);
            *(v8 + 2) = 0;
LABEL_50:
            if (v50)
            {
              CFRelease(v50);
            }

            *(v8 + 6) = v54.value;
            if (v55.value)
            {
              CFRelease(v55.value);
            }

            goto LABEL_54;
          }

          FigCEA708CaptionDecoderCreate(*MEMORY[0x1E695E480], *(v8 + 4), ccrp_closedCaptionCallbackFromClosedCaptionRenderPipeline, a1, 0, &v55);
        }

        if (v40)
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v54.value, v54.timescale, LODWORD(v54.epoch));
LABEL_56:
          FigSimpleMutexUnlock();
          goto LABEL_26;
        }

        value = v55.value;
        v50 = *(v8 + 2);
        *(v8 + 2) = v55.value;
        if (value)
        {
          CFRetain(value);
        }

        goto LABEL_50;
      }
    }
  }

LABEL_26:
  FigRenderPipelineGetFigBaseObject();
  v42 = v41;
  v43 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v43)
  {
    v43(v42, a2, v4);
  }
}

void ccrp_tearDownFeedingSource(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  v3 = *(DerivedStorage + 112);
  if (v3)
  {
    CMTimebaseRemoveTimerDispatchSource(*(DerivedStorage + 72), v3);
    dispatch_source_cancel(*(v2 + 112));
    v4 = *(v2 + 112);
    if (v4)
    {
      dispatch_release(v4);
      *(v2 + 112) = 0;
    }

    v5 = *(v2 + 120);
    if (v5)
    {
      os_release(v5);
      *(v2 + 120) = 0;
    }
  }

  v6 = *(v2 + 104);
  if (v6)
  {
    dispatch_release(v6);
    *(v2 + 104) = 0;
  }
}

void ccrp_cancelFeedingHandler(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void ccrp_feedingSourceHandler(void *a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    os_retain(*(DerivedStorage + 120));
    voucher_adopt();
    FigSimpleMutexLock();
    if (*(DerivedStorage + 16))
    {
      ccrp_feedCaptionDataToParser(v2);
    }

    FigSimpleMutexUnlock();
    v4 = voucher_adopt();
    os_release(v4);

    CFRelease(v2);
  }
}

double ccrp_feedCaptionDataToParser(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  v13 = **&MEMORY[0x1E6960C70];
  v12 = v13;
  if (*(DerivedStorage + 1))
  {
    *(DerivedStorage + 1) = 0;
    CMFormatDescriptionGetMediaType(*(DerivedStorage + 32));
    CMFormatDescriptionGetMediaSubType(*(v2 + 32));
    if (dword_1EAF16AF0)
    {
      LODWORD(v10.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  CMTimebaseGetTime(&lhs, *(v2 + 72));
  rhs = *(v2 + 80);
  CMTimeAdd(&v13, &lhs, &rhs);
  v4 = *(v2 + 16);
  rhs = v13;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v5)
  {
    lhs = rhs;
    if (!v5(v4, &lhs, &v12) && (v12.flags & 1) != 0)
    {
      rhs = v12;
      v10 = *(v2 + 80);
      CMTimeSubtract(&lhs, &rhs, &v10);
      v12 = lhs;
      if (CMTimebaseSetTimerDispatchSourceNextFireTime(*(v2 + 72), *(v2 + 112), &lhs, 0))
      {
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
      }
    }
  }

  return result;
}

uint64_t FigCaptionCommandCreatePropertyList(int a1, const __CFDictionary *a2, CFDictionaryRef *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  HIDWORD(v15) = a1;
  v17 = 0;
  keys = @"command";
  v19 = 0;
  v5 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v15 + 4);
  if (!values)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, values, v17);
    return v9;
  }

  if (a2)
  {
    v19 = @"data";
    v6 = fcc_CommandDictToPropertyList(a2, &v17);
    if (v6)
    {
      v7 = v6;
      v8 = 1;
      goto LABEL_11;
    }

    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v10 = CFDictionaryCreate(v5, &keys, &values, v8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *a3 = v10;
  if (v10)
  {
    v7 = 0;
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, values, v17);
    v7 = v11;
  }

LABEL_11:
  v12 = v8;
  p_values = &values;
  do
  {
    if (*p_values)
    {
      CFRelease(*p_values);
    }

    ++p_values;
    --v12;
  }

  while (v12);
  return v7;
}

uint64_t fcc_CommandDictToPropertyList(const __CFDictionary *a1, CFDictionaryRef *a2)
{
  Count = CFDictionaryGetCount(a1);
  v5 = malloc_type_calloc(8uLL, Count, 0x569CBD7FuLL);
  v6 = malloc_type_calloc(8uLL, Count, 0xA6ED29C8uLL);
  v7 = malloc_type_calloc(1uLL, Count, 0x51C84231uLL);
  v8 = v7;
  v9 = 0;
  if (v5 && v6 && v7)
  {
    CFDictionaryGetKeysAndValues(a1, v5, v6);
    if (Count >= 1)
    {
      v10 = v6;
      v11 = v8;
      v12 = Count;
      do
      {
        v13 = fcc_CommandItemToPropertyList(v10, v11);
        if (v13)
        {
          goto LABEL_11;
        }

        ++v11;
        ++v10;
      }

      while (--v12);
    }

    v14 = CFDictionaryCreate(*MEMORY[0x1E695E480], v5, v6, Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *a2 = v14;
    if (!v14)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21);
LABEL_11:
      v9 = v13;
      goto LABEL_12;
    }

    v9 = 0;
  }

LABEL_12:
  if (v6 && v8 && Count >= 1)
  {
    v15 = v8;
    v16 = v6;
    do
    {
      if (*v15++)
      {
        CFRelease(*v16);
      }

      ++v16;
      --Count;
    }

    while (Count);
  }

  free(v5);
  free(v6);
  free(v8);
  return v9;
}

uint64_t FigSubtitleSampleCreatePropertyList(const __CFDictionary *a1, int a2, int a3, CFDictionaryRef *a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v49 = *MEMORY[0x1E69E9840];
  *keys = 0u;
  v48 = 0u;
  *values = 0u;
  v46 = 0u;
  v16 = MEMORY[0x1E695E480];
  if (!a1 || (v18 = CFDictionaryGetValue(a1, @"SubtitleContent"), CFDictionaryGetValue(a1, @"SubtitleSerializedCaptionGroup"), FigCFDictionaryGetCount() < 1))
  {
    v29 = 0;
    v22 = 0;
    goto LABEL_16;
  }

  if (!v18)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*v16, 0, a1);
    v22 = 0;
    if (MutableCopy)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

  v42 = a4;
  v43 = v8;
  Count = CFArrayGetCount(v18);
  v20 = *v16;
  Mutable = CFArrayCreateMutable(*v16, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigSubtitleSampleCreatePropertyList_cold_1(&value);
    return value;
  }

  v22 = Mutable;
  if (Count < 1)
  {
LABEL_11:
    v27 = CFDictionaryCreateMutableCopy(v20, 0, a1);
    if (v27)
    {
      MutableCopy = v27;
      CFDictionarySetValue(v27, @"SubtitleContent", v22);
      a4 = v42;
LABEL_15:
      keys[0] = @"subtitleSample";
      values[0] = MutableCopy;
      v29 = 1;
LABEL_16:
      *(keys | (8 * v29)) = @"forcedSubtitle";
      v30 = *MEMORY[0x1E695E4D0];
      v31 = *MEMORY[0x1E695E4C0];
      if (a2)
      {
        v32 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v32 = *MEMORY[0x1E695E4C0];
      }

      *(values & 0xFFFFFFFFFFFFFFF7 | (8 * (v29 & 1))) = CFRetain(v32);
      keys[v29 + 1] = @"obeySubtitleFormatting";
      if (a3)
      {
        v33 = v30;
      }

      else
      {
        v33 = v31;
      }

      values[v29 + 1] = CFRetain(v33);
      keys[v29 | 2] = @"textBox";
      v50.origin.x = a5;
      v50.origin.y = a6;
      v50.size.width = a7;
      v50.size.height = a8;
      values[v29 | 2] = CGRectCreateDictionaryRepresentation(v50);
      v34 = v29 + 3;
      v35 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, v29 + 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *a4 = v35;
      if (v35)
      {
        v36 = 0;
        if (!v22)
        {
          goto LABEL_27;
        }
      }

      else
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v41, v42, v43);
        v36 = v37;
        if (!v22)
        {
          goto LABEL_27;
        }
      }

LABEL_26:
      CFRelease(v22);
      goto LABEL_27;
    }

LABEL_34:
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v41, v42, v43);
    goto LABEL_35;
  }

  v23 = 0;
  while (1)
  {
    value = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(v18, v23);
    v25 = fcc_CommandAttributedStringToPropertyList(ValueAtIndex, &value);
    if (v25)
    {
      break;
    }

    v26 = value;
    CFArrayAppendValue(v22, value);
    if (v26)
    {
      CFRelease(v26);
    }

    if (Count == ++v23)
    {
      goto LABEL_11;
    }
  }

LABEL_35:
  v36 = v25;
  v34 = 0;
  if (v22)
  {
    goto LABEL_26;
  }

LABEL_27:
  if (v34)
  {
    v38 = v34;
    v39 = values;
    do
    {
      if (*v39)
      {
        CFRelease(*v39);
      }

      ++v39;
      --v38;
    }

    while (v38);
  }

  return v36;
}

uint64_t fcc_CommandAttributedStringToPropertyList(const __CFAttributedString *a1, CFDictionaryRef *a2)
{
  keys[3] = *MEMORY[0x1E69E9840];
  Length = CFAttributedStringGetLength(a1);
  values[0] = @"isCFAttributedString";
  keys[0] = @"isCFAttributedString";
  keys[1] = @"string";
  values[1] = CFAttributedStringGetString(a1);
  keys[2] = @"attributedTriplets";
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  values[2] = Mutable;
  if (Length >= 1)
  {
    v8 = 0;
    v9 = 257;
    do
    {
      longestEffectiveRange.location = 0;
      longestEffectiveRange.length = 0;
      v27.location = 0;
      v27.length = Length;
      AttributesAndLongestEffectiveRange = CFAttributedStringGetAttributesAndLongestEffectiveRange(a1, v8, v27, &longestEffectiveRange);
      value = AttributesAndLongestEffectiveRange;
      if (AttributesAndLongestEffectiveRange)
      {
        v11 = AttributesAndLongestEffectiveRange;
        v12 = CFNumberCreate(v6, kCFNumberCFIndexType, &longestEffectiveRange);
        if (!v12)
        {
          goto LABEL_14;
        }

        v13 = v12;
        CFArrayAppendValue(Mutable, v12);
        CFRelease(v13);
        v14 = CFNumberCreate(v6, kCFNumberCFIndexType, &longestEffectiveRange.length);
        if (!v14)
        {
          v9 = 265;
LABEL_14:
          emitter = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294967188, "<<<< FigCaptionCommand >>>>", v9, v2);
LABEL_15:
          v19 = v16;
          if (Mutable)
          {
            goto LABEL_16;
          }

          return v19;
        }

        v15 = v14;
        CFArrayAppendValue(Mutable, v14);
        CFRelease(v15);
        v16 = fcc_CommandDictToPropertyList(v11, &value);
        if (v16)
        {
          goto LABEL_15;
        }

        v17 = value;
        CFArrayAppendValue(Mutable, value);
        CFRelease(v17);
      }

      v8 = longestEffectiveRange.length + longestEffectiveRange.location;
    }

    while (longestEffectiveRange.length + longestEffectiveRange.location < Length);
  }

  v18 = CFDictionaryCreate(v6, keys, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *a2 = v18;
  if (!v18)
  {
    v20 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, 4294967188, "<<<< FigCaptionCommand >>>>", 284, v2);
    goto LABEL_15;
  }

  v19 = 0;
  if (Mutable)
  {
LABEL_16:
    CFRelease(Mutable);
  }

  return v19;
}

void FigCaptionCommandCreateFromPropertyList(const __CFDictionary *a1, void *a2, CGColorRef *a3)
{
  if (a2 && a3)
  {
    *a3 = 0;
    if (a1 && (v7 = CFDictionaryGetTypeID(), v7 == CFGetTypeID(a1)))
    {
      Value = CFDictionaryGetValue(a1, @"command");
      if (Value && (v9 = Value, v10 = CFNumberGetTypeID(), v10 == CFGetTypeID(v9)))
      {
        CFNumberGetValue(v9, kCFNumberSInt32Type, a2);
        v11 = CFDictionaryGetValue(a1, @"data");
        if (!v11)
        {
          *a3 = 0;
          return;
        }

        v12 = v11;
        TypeID = CFDictionaryGetTypeID();
        if (TypeID == CFGetTypeID(v12))
        {

          fcc_CommandPropertyListToDict(v12, a3);
          return;
        }

        emitter = fig_log_get_emitter();
        v15 = v3;
        v16 = 766;
      }

      else
      {
        emitter = fig_log_get_emitter();
        v15 = v3;
        v16 = 759;
      }
    }

    else
    {
      emitter = fig_log_get_emitter();
      v15 = v3;
      v16 = 755;
    }
  }

  else
  {
    emitter = fig_log_get_emitter();
    v15 = v3;
    v16 = 750;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 50, "<<<< FigCaptionCommand >>>>", v16, v15);
}

uint64_t fcc_CommandPropertyListToDict(const __CFDictionary *a1, CGColorRef *a2)
{
  v45[1] = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(a1, @"isCGColor");
  if (Value && CFEqual(Value, @"isCGColor"))
  {
    if (!fcc_CommandPropertyListToColor_sColorspace)
    {
      fcc_CommandPropertyListToColor_sColorspace = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    }

    v6 = CFDictionaryGetValue(a1, @"red");
    if (v6 && (v7 = v6, v8 = CFNumberGetTypeID(), v8 == CFGetTypeID(v7)))
    {
      CFNumberGetValue(v7, kCFNumberDoubleType, &valuePtr);
      v9 = CFDictionaryGetValue(a1, @"green");
      if (v9 && (v10 = v9, v11 = CFNumberGetTypeID(), v11 == CFGetTypeID(v10)))
      {
        CFNumberGetValue(v10, kCFNumberDoubleType, &v43);
        v12 = CFDictionaryGetValue(a1, @"blue");
        if (v12 && (v13 = v12, v14 = CFNumberGetTypeID(), v14 == CFGetTypeID(v13)))
        {
          CFNumberGetValue(v13, kCFNumberDoubleType, &v44);
          v15 = CFDictionaryGetValue(a1, @"alpha");
          if (v15 && (v16 = v15, TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(v16)))
          {
            CFNumberGetValue(v16, kCFNumberDoubleType, v45);
            v18 = CGColorCreate(fcc_CommandPropertyListToColor_sColorspace, &valuePtr);
            *a2 = v18;
            if (v18)
            {
              return 0;
            }

            emitter = fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294967188, "<<<< FigCaptionCommand >>>>", 559, v2);
          }

          else
          {
            v39 = fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, 50, "<<<< FigCaptionCommand >>>>", 554, v2);
          }
        }

        else
        {
          v38 = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, 50, "<<<< FigCaptionCommand >>>>", 549, v2);
        }
      }

      else
      {
        v34 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, 50, "<<<< FigCaptionCommand >>>>", 544, v2);
      }
    }

    else
    {
      v32 = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, 50, "<<<< FigCaptionCommand >>>>", 539, v2);
    }

    return v33;
  }

  v20 = CFDictionaryGetValue(a1, @"isCFAttributedString");
  if (!v20 || !CFEqual(v20, @"isCFAttributedString"))
  {
    Count = CFDictionaryGetCount(a1);
    v23 = malloc_type_calloc(8uLL, Count, 0x14634F31uLL);
    v24 = malloc_type_calloc(8uLL, Count, 0x5C7D8FD3uLL);
    v25 = malloc_type_calloc(1uLL, Count, 0xB42332A2uLL);
    v26 = v25;
    v19 = 0;
    if (!v23 || !v24 || !v25)
    {
      goto LABEL_33;
    }

    CFDictionaryGetKeysAndValues(a1, v23, v24);
    if (Count < 1)
    {
LABEL_27:
      v31 = CFDictionaryCreate(*MEMORY[0x1E695E480], v23, v24, Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *a2 = v31;
      if (v31)
      {
        v19 = 0;
        goto LABEL_33;
      }

      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v41, LODWORD(valuePtr), v43);
    }

    else
    {
      v27 = v24;
      v28 = v26;
      v29 = Count;
      while (1)
      {
        v30 = fcc_CommandPropertyListToItem(v27, v28);
        if (v30)
        {
          break;
        }

        ++v28;
        ++v27;
        if (!--v29)
        {
          goto LABEL_27;
        }
      }
    }

    v19 = v30;
LABEL_33:
    if (v24 && v26 && Count >= 1)
    {
      v35 = v26;
      v36 = v24;
      do
      {
        if (*v35++)
        {
          CFRelease(*v36);
        }

        ++v36;
        --Count;
      }

      while (Count);
    }

    free(v23);
    free(v24);
    free(v26);
    return v19;
  }

  return fcc_CommandPropertyListToAttributedString(a1, a2);
}

void FigSubtitleSampleCreateFromPropertyList(const __CFDictionary *a1, const __CFDictionary **a2, Boolean *a3, Boolean *a4, CGRect *a5)
{
  if (a1 && (v11 = CFDictionaryGetTypeID(), v11 == CFGetTypeID(a1)))
  {
    v12 = CFDictionaryGetValue(a1, @"forcedSubtitle");
    if (a3)
    {
      v13 = v12;
      if (v12)
      {
        TypeID = CFBooleanGetTypeID();
        if (TypeID == CFGetTypeID(v13))
        {
          *a3 = CFBooleanGetValue(v13);
        }
      }
    }

    v15 = CFDictionaryGetValue(a1, @"obeySubtitleFormatting");
    if (a4)
    {
      v16 = v15;
      if (v15)
      {
        v17 = CFBooleanGetTypeID();
        if (v17 == CFGetTypeID(v16))
        {
          *a4 = CFBooleanGetValue(v16);
        }
      }
    }

    v18 = CFDictionaryGetValue(a1, @"textBox");
    if (a5)
    {
      v19 = v18;
      if (v18)
      {
        v20 = CFDictionaryGetTypeID();
        if (v20 == CFGetTypeID(v19))
        {
          CGRectMakeWithDictionaryRepresentation(v19, a5);
        }
      }
    }

    v21 = CFDictionaryGetValue(a1, @"subtitleSample");
    if (a2 && v21)
    {
      v22 = *MEMORY[0x1E695E480];
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v21);
      if (!MutableCopy)
      {
        FigSubtitleSampleCreateFromPropertyList_cold_2(&value);
        return;
      }

      v24 = MutableCopy;
      v25 = CFDictionaryGetValue(MutableCopy, @"SubtitleContent");
      if (v25)
      {
        v26 = v25;
        Count = CFArrayGetCount(v25);
        Mutable = CFArrayCreateMutable(v22, 0, MEMORY[0x1E695E9C0]);
        if (!Mutable)
        {
          FigSubtitleSampleCreateFromPropertyList_cold_1(&value);
LABEL_32:
          CFRelease(v24);
          return;
        }

        v29 = Mutable;
        if (Count >= 1)
        {
          v30 = 0;
          while (1)
          {
            value = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(v26, v30);
            fcc_CommandPropertyListToAttributedString(ValueAtIndex, &value);
            if (v32)
            {
              break;
            }

            v33 = value;
            CFArrayAppendValue(v29, value);
            CFRelease(v33);
            if (Count == ++v30)
            {
              goto LABEL_24;
            }
          }

LABEL_30:
          CFRelease(v29);
LABEL_31:
          if (!v24)
          {
            return;
          }

          goto LABEL_32;
        }

LABEL_24:
        CFDictionarySetValue(v24, @"SubtitleContent", v29);
      }

      else
      {
        v29 = 0;
      }

      *a2 = v24;
      v24 = 0;
      if (!v29)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 50, "<<<< FigCaptionCommand >>>>", 795, v5);
  }
}

void fcc_CommandPropertyListToAttributedString(const __CFDictionary *a1, __CFAttributedString **a2)
{
  Value = CFDictionaryGetValue(a1, @"string");
  if (!Value || (v6 = Value, TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(v6)))
  {
    emitter = fig_log_get_emitter();
    v25 = v2;
    v26 = 50;
    v27 = 575;
LABEL_19:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v26, "<<<< FigCaptionCommand >>>>", v27, v25);
    return;
  }

  v8 = CFDictionaryGetValue(a1, @"attributedTriplets");
  if (!v8 || (v9 = v8, v10 = CFArrayGetTypeID(), v10 != CFGetTypeID(v9)))
  {
    emitter = fig_log_get_emitter();
    v25 = v2;
    v26 = 50;
    v27 = 579;
    goto LABEL_19;
  }

  Mutable = CFAttributedStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!Mutable)
  {
    emitter = fig_log_get_emitter();
    v25 = v2;
    v26 = 4294967188;
    v27 = 583;
    goto LABEL_19;
  }

  v12 = Mutable;
  CFAttributedStringBeginEditing(Mutable);
  v32.location = 0;
  v32.length = 0;
  CFAttributedStringReplaceString(v12, v32, v6);
  Count = CFArrayGetCount(v9);
  if (Count < 3)
  {
LABEL_16:
    CFAttributedStringEndEditing(v12);
    *a2 = v12;
  }

  else
  {
    v14 = Count / 3;
    v15 = 2;
    while (1)
    {
      valuePtr = 0;
      cf = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(v9, v15 - 2);
      if (!ValueAtIndex)
      {
        break;
      }

      v17 = ValueAtIndex;
      v18 = CFNumberGetTypeID();
      if (v18 != CFGetTypeID(v17))
      {
        break;
      }

      CFNumberGetValue(v17, kCFNumberIntType, &valuePtr + 4);
      v19 = CFArrayGetValueAtIndex(v9, v15 - 1);
      if (!v19)
      {
        break;
      }

      v20 = v19;
      v21 = CFNumberGetTypeID();
      if (v21 != CFGetTypeID(v20))
      {
        break;
      }

      CFNumberGetValue(v20, kCFNumberIntType, &valuePtr);
      cf = CFArrayGetValueAtIndex(v9, v15);
      if (!cf)
      {
        break;
      }

      v22 = CFDictionaryGetTypeID();
      if (v22 != CFGetTypeID(cf))
      {
        break;
      }

      if (fcc_CommandPropertyListToDict(cf, &cf))
      {
        goto LABEL_24;
      }

      v33.length = valuePtr;
      v33.location = SHIDWORD(valuePtr);
      v23 = cf;
      CFAttributedStringSetAttributes(v12, v33, cf, 0);
      CFRelease(v23);
      v15 += 3;
      if (!--v14)
      {
        goto LABEL_16;
      }
    }

    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", valuePtr, cf, v30);
LABEL_24:
    CFRelease(v12);
  }
}

uint64_t FigSubtitleSampleInsertInfoForRenderer(__CFDictionary *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, uint64_t a10, int a11)
{
  if (a1)
  {
    if (!a11 || (v20 = a2, CGRectIsNull(*&a2)))
    {
      v20 = a6;
      a3 = a7;
      a4 = a8;
      a5 = a9;
    }

    v27.origin.x = v20;
    v27.origin.y = a3;
    v27.size.width = a4;
    v27.size.height = a5;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v27);
    if (DictionaryRepresentation)
    {
      v22 = DictionaryRepresentation;
      CFDictionarySetValue(a1, @"kFigSubtitleRenderer_TextBox", DictionaryRepresentation);
      v23 = MEMORY[0x1E695E4C0];
      if (a11)
      {
        v23 = MEMORY[0x1E695E4D0];
      }

      CFDictionarySetValue(a1, @"kFigSubtitleRenderer_ObeySubtitleFormatting", *v23);
      CFRelease(v22);
      return 0;
    }

    else
    {
      FigSubtitleSampleInsertInfoForRenderer_cold_1(&v25);
      return v25;
    }
  }

  else
  {
    FigSubtitleSampleInsertInfoForRenderer_cold_2(&v26);
    return v26;
  }
}

uint64_t fcc_CommandItemToPropertyList(const __CFDictionary **a1, _BYTE *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  TypeID = CFDictionaryGetTypeID();
  if (TypeID == CFGetTypeID(*a1))
  {
    v6 = fcc_CommandDictToPropertyList(*a1, a1);
    if (v6)
    {
      return v6;
    }

LABEL_41:
    v7 = 0;
    *a2 = 1;
    return v7;
  }

  v8 = CFArrayGetTypeID();
  if (v8 == CFGetTypeID(*a1))
  {
    v9 = *a1;
    Count = CFArrayGetCount(*a1);
    v11 = malloc_type_calloc(8uLL, Count, 0x5EA377D1uLL);
    v12 = malloc_type_calloc(1uLL, Count, 0x289890BFuLL);
    v13 = v12;
    v7 = 0;
    if (!v11 || !v12)
    {
LABEL_32:
      free(v11);
      free(v13);
      goto LABEL_40;
    }

    v47.location = 0;
    v47.length = Count;
    CFArrayGetValues(v9, v47, v11);
    if (Count < 1)
    {
LABEL_11:
      v18 = CFArrayCreate(*MEMORY[0x1E695E480], v11, Count, MEMORY[0x1E695E9C0]);
      *a1 = v18;
      if (v18)
      {
        v7 = 0;
        goto LABEL_27;
      }

      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, values, v41);
    }

    else
    {
      v14 = Count;
      v15 = v13;
      v16 = v11;
      while (1)
      {
        v17 = fcc_CommandItemToPropertyList(v16, v15);
        if (v17)
        {
          break;
        }

        ++v16;
        ++v15;
        if (!--v14)
        {
          goto LABEL_11;
        }
      }
    }

    v7 = v17;
LABEL_27:
    if (Count >= 1)
    {
      v31 = v11;
      v32 = v13;
      do
      {
        if (*v32++)
        {
          CFRelease(*v31);
        }

        ++v31;
        --Count;
      }

      while (Count);
    }

    goto LABEL_32;
  }

  v19 = CGColorGetTypeID();
  if (v19 == CFGetTypeID(*a1))
  {
    v20 = *a1;
    NumberOfComponents = CGColorGetNumberOfComponents(*a1);
    Components = CGColorGetComponents(v20);
    v45 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    keys = @"isCGColor";
    values = @"isCGColor";
    if (NumberOfComponents == 4)
    {
      v23 = Components;
      *&v44 = @"red";
      *(&v44 + 1) = @"green";
      *&v45 = @"blue";
      *(&v45 + 1) = @"alpha";
      v24 = *MEMORY[0x1E695E480];
      for (i = 1; i != 5; ++i)
      {
        v26 = CFNumberCreate(v24, kCFNumberDoubleType, v23);
        *(&values + i) = v26;
        if (!v26)
        {
          emitter = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294967188, "<<<< FigCaptionCommand >>>>", 208, v2);
          goto LABEL_35;
        }

        ++v23;
      }

      v27 = CFDictionaryCreate(v24, &keys, &values, 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *a1 = v27;
      if (v27)
      {
        v7 = 0;
        goto LABEL_36;
      }

      v35 = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, 4294967188, "<<<< FigCaptionCommand >>>>", 215, v2);
    }

    else
    {
      v29 = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, 50, "<<<< FigCaptionCommand >>>>", 197, v2);
    }

LABEL_35:
    v7 = v30;
LABEL_36:
    for (j = 8; j != 40; j += 8)
    {
      v37 = *(&values + j);
      if (v37)
      {
        CFRelease(v37);
      }
    }

LABEL_40:
    if (v7)
    {
      return v7;
    }

    goto LABEL_41;
  }

  v28 = CFAttributedStringGetTypeID();
  if (v28 != CFGetTypeID(*a1))
  {
    return 0;
  }

  v6 = fcc_CommandAttributedStringToPropertyList(*a1, a1);
  if (!v6)
  {
    goto LABEL_41;
  }

  return v6;
}

uint64_t fcc_CommandPropertyListToItem(const __CFDictionary **a1, _BYTE *a2)
{
  TypeID = CFDictionaryGetTypeID();
  if (TypeID == CFGetTypeID(*a1))
  {
    v5 = fcc_CommandPropertyListToDict(*a1, a1);
    if (!v5)
    {
      goto LABEL_22;
    }

    return v5;
  }

  v6 = CFArrayGetTypeID();
  if (v6 != CFGetTypeID(*a1))
  {
    return 0;
  }

  v7 = *a1;
  Count = CFArrayGetCount(*a1);
  v9 = malloc_type_calloc(8uLL, Count, 0x2F0839A3uLL);
  v10 = malloc_type_calloc(1uLL, Count, 0xBEE7E6D6uLL);
  v11 = v10;
  v5 = 0;
  if (v9 && v10)
  {
    v24.location = 0;
    v24.length = Count;
    CFArrayGetValues(v7, v24, v9);
    if (Count < 1)
    {
LABEL_11:
      v16 = CFArrayCreate(*MEMORY[0x1E695E480], v9, Count, MEMORY[0x1E695E9C0]);
      *a1 = v16;
      if (v16)
      {
        v5 = 0;
        goto LABEL_16;
      }

      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, v22, v23);
    }

    else
    {
      v12 = Count;
      v13 = v11;
      v14 = v9;
      while (1)
      {
        v15 = fcc_CommandPropertyListToItem(v14, v13);
        if (v15)
        {
          break;
        }

        ++v14;
        ++v13;
        if (!--v12)
        {
          goto LABEL_11;
        }
      }
    }

    v5 = v15;
LABEL_16:
    if (Count >= 1)
    {
      v17 = v9;
      v18 = v11;
      do
      {
        if (*v18++)
        {
          CFRelease(*v17);
        }

        ++v17;
        --Count;
      }

      while (Count);
    }
  }

  free(v9);
  free(v11);
  if (!v5)
  {
LABEL_22:
    v5 = 0;
    *a2 = 1;
  }

  return v5;
}

uint64_t FigCaptionRendererBasicInputCreate(NSObject *a1, NSObject *a2, NSObject *a3, uint64_t a4, void *a5)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2 || !a3)
  {
    FigCaptionRendererBasicInputCreate_cold_2(__str);
    return *__str;
  }

  if (!a5)
  {
    FigCaptionRendererBasicInputCreate_cold_1(__str);
    return *__str;
  }

  *a5 = 0;
  FigCaptionRendererInputGetClassID();
  v9 = CMDerivedObjectCreate();
  if (!v9)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    DerivedStorage[2] = a1;
    DerivedStorage[3] = a2;
    DerivedStorage[4] = a3;
    DerivedStorage[7] = 0;
    DerivedStorage[5] = 0;
    v9 = FigCaptionSerializerCreate();
    if (!v9)
    {
      snprintf(__str, 0x100uLL, "com.apple.coremedia.ckmediainput.messagequeue<%p>", 0);
      v11 = dispatch_queue_create(__str, 0);
      *DerivedStorage = v11;
      v9 = 0;
      if (v11)
      {
        *a5 = 0;
      }
    }
  }

  return v9;
}

uint64_t FigCaptionRendererBasicInputAddSample(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFRetain(a2);
  }

  v5[0] = DerivedStorage;
  v5[1] = a2;
  if (*DerivedStorage)
  {
    dispatch_sync_f(*DerivedStorage, v5, digestSubtitleSampleDo);
  }

  return 0;
}

uint64_t FigCaptionRendererBasicInputSetLayoutContext(uint64_t a1, uint64_t a2)
{
  v4[0] = CMBaseObjectGetDerivedStorage();
  v4[1] = a2;
  if (*v4[0])
  {
    dispatch_sync_f(*v4[0], v4, setLayoutContextDo);
  }

  return 0;
}

void setLayoutContextDo(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v2 + 56);
  *(v2 + 56) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

void figFCRBasicInput_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 56);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 56) = 0;
  }

  v3 = *(DerivedStorage + 40);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 40) = 0;
  }

  *(DerivedStorage + 32) = 0;
}

__CFString *figFCRBasicInput_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptionRendererBasicInput %p>", a1);
  return Mutable;
}

void OUTLINED_FUNCTION_1_10(void *value)
{

  CFDictionarySetValue(v1, v2, value);
}

uint64_t OUTLINED_FUNCTION_2_9(uint64_t a1)
{

  return CMBaseObjectGetProtocolVTable();
}

void __getDisplayScale_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v1, kCFNumberCGFloatType, &sMaxDisplayScale);
    }

    CFRelease(v1);
  }
}

uint64_t FigIFFPictureCollectionWriterCreateWithMovieSampleDataWriter(const void *a1, const void *a2, const void *a3, const void *a4, CFTypeRef *a5)
{
  cf = 0;
  if (!a1)
  {
    FigIFFPictureCollectionWriterCreateWithMovieSampleDataWriter_cold_4(&v18);
LABEL_17:
    v14 = v18;
    goto LABEL_19;
  }

  if (!a2)
  {
    FigIFFPictureCollectionWriterCreateWithMovieSampleDataWriter_cold_3(&v18);
    goto LABEL_17;
  }

  if (!a5)
  {
    FigIFFPictureCollectionWriterCreateWithMovieSampleDataWriter_cold_2(&v18);
    goto LABEL_17;
  }

  FigPictureCollectionWriterGetClassID();
  v10 = CMDerivedObjectCreate();
  if (v10)
  {
    v14 = v10;
    FigIFFPictureCollectionWriterCreateWithMovieSampleDataWriter_cold_1();
  }

  else
  {
    v16 = 0;
    iffpcwGetWriteFileTypeOptions(a3, 0, &v16);
    if (v11 || ((DerivedStorage = CMBaseObjectGetDerivedStorage(), !a4) ? (v13 = 0) : (v13 = CFRetain(a4)), *DerivedStorage = v13, *(DerivedStorage + 8) = CFRetain(a1), *(DerivedStorage + 16) = CFRetain(a2), *(DerivedStorage + 40) = v16, v11 = IFFItemInformationCreate(a4, (DerivedStorage + 24)), v11))
    {
      v14 = v11;
    }

    else
    {
      v14 = IFFItemHeaderMakerCreateWithIFFItemInformation(a4, *(DerivedStorage + 24), (DerivedStorage + 32));
      if (!v14)
      {
        *a5 = cf;
        return v14;
      }
    }
  }

LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

void iffpcwGetWriteFileTypeOptions(const void *a1, char *a2, char *a3)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != CFDictionaryGetTypeID())
  {
    iffpcwGetWriteFileTypeOptions_cold_1(v11);
    return;
  }

  v9 = 0;
  if (!CFDictionaryGetValueIfPresent(a1, @"WriteFileType", &v9))
  {
    goto LABEL_8;
  }

  if (!FigCFEqual())
  {
    if (!FigCFEqual())
    {
      if (!FigCFEqual())
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11[1]);
        return;
      }

      v7 = 0;
      v8 = 1;
      if (!a2)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_8:
    v8 = 0;
    v7 = 1;
    if (!a2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v7 = 0;
  v8 = 0;
  if (a2)
  {
LABEL_9:
    *a2 = v7;
  }

LABEL_10:
  if (a3)
  {
    *a3 = v8;
  }
}

void iffpcw_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    CFRelease(v4);
  }

  IFFItemHeaderMakerRelease(*(DerivedStorage + 32));
  v5 = *DerivedStorage;
  if (*DerivedStorage)
  {

    CFRelease(v5);
  }
}

__CFString *iffpcw_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<IFFPictureCollectionWriter %p>", a1);
  return Mutable;
}

uint64_t iffpcw_CopyProperty(uint64_t a1, uint64_t a2, const __CFAllocator *a3, CFMutableArrayRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    iffpcw_CopyProperty_cold_3(&v17);
    return v17;
  }

  if (!a4)
  {
    iffpcw_CopyProperty_cold_2(&v17);
    return v17;
  }

  v8 = DerivedStorage;
  if (FigCFEqual())
  {
    v9 = *(v8 + 8);

    return MovieSampleDataWriterCopyMajorBrand(v9, a4);
  }

  else if (FigCFEqual())
  {
    v11 = *(v8 + 8);

    return MovieSampleDataWriterCopyMinorVersion(v11, a4);
  }

  else if (FigCFEqual())
  {
    v12 = *(v8 + 8);

    return MovieSampleDataWriterCopyCompatibleBrands(v12, a4);
  }

  else if (FigCFEqual())
  {
    v16 = 0;
    v17 = 0;
    result = MovieSampleDataWriterGetFirstMediaDataAtomOffset(*(v8 + 8), 1, &v17);
    if (!result)
    {
      result = MovieSampleDataWriterGetLengthOfDefaultByteStream(*(v8 + 8), &v16);
      if (!result)
      {
        Mutable = CFArrayCreateMutable(a3, 2, MEMORY[0x1E695E9C0]);
        if (Mutable)
        {
          v14 = Mutable;
          result = FigCFArrayAppendInt64();
          if (result || (result = FigCFArrayAppendInt64(), result))
          {
            v15 = result;
            CFRelease(v14);
            return v15;
          }

          else
          {
            *a4 = v14;
          }
        }

        else
        {
          iffpcw_CopyProperty_cold_1(&v18);
          return v18;
        }
      }
    }
  }

  else
  {
    return 4294954512;
  }

  return result;
}

uint64_t iffpcw_SetProperty(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = DerivedStorage;
    if (FigCFEqual())
    {
      v7 = *(v6 + 8);

      return MovieSampleDataWriterSetMajorBrand(v7, a3);
    }

    else if (FigCFEqual())
    {
      v9 = *(v6 + 8);

      return MovieSampleDataWriterSetMinorVersion(v9, a3);
    }

    else if (FigCFEqual())
    {
      v10 = *(v6 + 8);

      return MovieSampleDataWriterSetCompatibleBrands(v10, a3);
    }

    else
    {
      return 4294954512;
    }
  }

  else
  {
    iffpcw_SetProperty_cold_1(&v11);
    return v11;
  }
}

void iffpcw_AddPicture(uint64_t a1, int a2, const opaqueCMFormatDescription *a3, const __CFDictionary *a4, _DWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    if (a5)
    {
      v10 = DerivedStorage;
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      v26 = *MEMORY[0x1E695F060];
      CGSizeIfPresent = FigCFDictionaryGetCGSizeIfPresent();
      Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
      v13 = FigCFDictionaryGetInt32IfPresent();
      v23 = a5;
      v25 = a3;
      v24 = a2;
      v14 = v10;
      if (a4)
      {
        Value = CFDictionaryGetValue(a4, @"PixelInformation");
      }

      else
      {
        Value = 0;
      }

      Int16IfPresent = FigCFDictionaryGetInt16IfPresent();
      v17 = FigCFDictionaryGetValue();
      FigCFDictionaryGetBooleanIfPresent();
      v18 = FigCFDictionaryGetValue();
      v19 = FigCFDictionaryGetValue();
      if ((v18 == 0) == (v19 == 0))
      {
        v20 = v19;
        if (v18 && Int16IfPresent)
        {
          iffpcw_AddPicture_cold_1(&v27);
        }

        else
        {
          if (!FigCFDictionaryGetCFIndexIfPresent())
          {
            v21 = 0;
            goto LABEL_14;
          }

          if (v18)
          {
            iffpcw_AddPicture_cold_2(&v27);
          }

          else
          {
            if (!Int16IfPresent)
            {
              v21 = 256;
LABEL_14:
              *(&v22 + 1) = v18;
              *&v22 = Value;
              IFFInformationAddPicture(*(v14 + 24), v24, v25, (4 * (CGSizeIfPresent != 0)) | (8 * (Int32IfPresent != 0)) | (16 * (v13 != 0)) | ((Int16IfPresent != 0) << 6) | ((v18 != 0) << 7) | v21 | 2, 0, v17, 0, 0, *&v26, *(&v26 + 1), v22, v20, v23);
              return;
            }

            iffpcw_AddPicture_cold_3(&v27);
          }
        }
      }

      else
      {
        iffpcw_AddPicture_cold_4(&v27);
      }
    }

    else
    {
      iffpcw_AddPicture_cold_6(&v27);
    }
  }

  else
  {
    iffpcw_AddPicture_cold_7(&v27);
  }
}

uint64_t iffpcw_CopyPictureProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    if (a5)
    {
      return 4294954512;
    }

    v8 = 661;
  }

  else
  {
    v8 = 660;
  }

  v10 = v5;
  v11 = v6;
  iffpcw_CopyPictureProperty_cold_1(v8, &v9);
  return v9;
}

void iffpcw_AddThumbnailToPicture(uint64_t a1, uint64_t a2, uint64_t a3, const opaqueCMFormatDescription *a4, const __CFDictionary *a5, _DWORD *a6)
{
  v9 = a3;
  v10 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    if (a6)
    {
      v12 = DerivedStorage;
      FigCFDictionaryGetBooleanIfPresent();
      Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
      v14 = FigCFDictionaryGetInt32IfPresent();
      if (a5)
      {
        Value = CFDictionaryGetValue(a5, @"PixelInformation");
      }

      else
      {
        Value = 0;
      }

      IFFInformationAddThumbnailToPicture(*(v12 + 24), v10, v9, a4, (8 * (Int32IfPresent != 0)) | (16 * (v14 != 0)) | 2, 0, 0, Value, a6);
    }

    else
    {
      iffpcw_AddThumbnailToPicture_cold_2(&v16);
    }
  }

  else
  {
    iffpcw_AddThumbnailToPicture_cold_3(&v16);
  }
}

uint64_t iffpcw_AddAuxiliaryImageToPicture(uint64_t a1, uint64_t a2, int a3, const opaqueCMFormatDescription *a4, const __CFDictionary *a5, _DWORD *a6)
{
  v10 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    iffpcw_AddAuxiliaryImageToPicture_cold_6(&v34);
    goto LABEL_25;
  }

  if (!a6)
  {
    iffpcw_AddAuxiliaryImageToPicture_cold_5(&v34);
    goto LABEL_25;
  }

  v32 = a3;
  v30 = DerivedStorage;
  v31 = a6;
  if (a5)
  {
    if (CFDictionaryContainsKey(a5, @"AuxiliaryImageType"))
    {
      Value = CFDictionaryGetValue(a5, @"AuxiliaryImageType");
      if (!Value || (v13 = CFGetTypeID(Value), v13 != CFStringGetTypeID()))
      {
        iffpcw_AddAuxiliaryImageToPicture_cold_2(&v34);
        goto LABEL_25;
      }

      CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
      if (!CStringPtrAndBufferToFree)
      {
        iffpcw_AddAuxiliaryImageToPicture_cold_1(&v34);
LABEL_25:
        v27 = v34;
        goto LABEL_20;
      }
    }

    else
    {
      CStringPtrAndBufferToFree = 0;
    }

    v29 = CStringPtrAndBufferToFree;
    if (CFDictionaryContainsKey(a5, @"AuxiliaryImageSubType"))
    {
      v17 = CFDictionaryGetValue(a5, @"AuxiliaryImageSubType");
      if (!v17 || (v18 = v17, v19 = CFGetTypeID(v17), v19 != CFDataGetTypeID()))
      {
        iffpcw_AddAuxiliaryImageToPicture_cold_3(&v34);
        goto LABEL_25;
      }

      BytePtr = CFDataGetBytePtr(v18);
      Length = CFDataGetLength(v18);
    }

    else
    {
      Length = 0;
      BytePtr = 0;
    }
  }

  else
  {
    Length = 0;
    BytePtr = 0;
    v29 = 0;
  }

  v33 = *MEMORY[0x1E695F060];
  CGSizeIfPresent = FigCFDictionaryGetCGSizeIfPresent();
  Int16IfPresent = FigCFDictionaryGetInt16IfPresent();
  v22 = FigCFDictionaryGetValue();
  Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
  v24 = FigCFDictionaryGetInt32IfPresent();
  if (a5)
  {
    v25 = CFDictionaryGetValue(a5, @"PixelInformation");
  }

  else
  {
    v25 = 0;
  }

  IFFInformationAddAuxiliaryImageToPicture(*(v30 + 24), v10, v32, a4, (4 * (CGSizeIfPresent != 0)) | ((Int16IfPresent != 0) << 6) | (8 * (Int32IfPresent != 0)) | (16 * (v24 != 0)), 0, v22, 0, *&v33, *(&v33 + 1), 0, v29, BytePtr, Length, v25, v31);
  v27 = v26;
LABEL_20:
  free(0);
  return v27;
}

double iffpcw_AddGroup(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  if (!a2)
  {
    iffpcw_AddGroup_cold_1(&v19);
    return result;
  }

  v8 = DerivedStorage;
  if (FigCFEqual())
  {
    v14 = 1937007986;
    goto LABEL_6;
  }

  if (FigCFEqual())
  {
    v14 = 1634497650;
LABEL_6:
    IFFInformationAddGroup(*(v8 + 24), v14, &v18, v9, v10, v11, v12, v13);
    if (a4)
    {
      if (!v15)
      {
        *a4 = v18;
      }
    }

    return result;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294949526, "< IFFPictureCollectionWriter >", 887, v4);
}

void iffpcw_AddPictureToGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = *(CMBaseObjectGetDerivedStorage() + 24);

  IFFInformationAddPictureToGroup(v5, v4, v3);
}

double iffpcw_AddGroupProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = *(CMBaseObjectGetDerivedStorage() + 24);

  return IFFInformationAddPropertiesToGroup(v5, v4, a3);
}

double iffpcw_AddGroupToGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = *(CMBaseObjectGetDerivedStorage() + 24);

  return IFFInformationAddGroupToGroup(v5, v4, v3);
}

uint64_t OUTLINED_FUNCTION_5_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a14, uint64_t a16, uint64_t a18, int a20, int a21)
{

  return IFFInformationGetItemExtents(v17, &a21, &a18, &a16, &a14, &a12);
}

uint64_t FigXPCPlaybackCoordinatorServerAssociateCopiedNeighborPlaybackCoordinator(uint64_t a1, const void *a2, uint64_t a3)
{
  v4 = *MEMORY[0x1E695E480];
  if (_MergedGlobals_17 != -1)
  {
    FigXPCPlaybackCoordinatorServerAssociateCopiedNeighborPlaybackCoordinator_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v6 = Instance;
  if (Instance)
  {
    FigXPCPlaybackCoordinatorServerAssociateCopiedNeighborPlaybackCoordinator_cold_3(Instance, v4);
  }

  else if (!FigXPCPlaybackCoordinatorServerAssociateCopiedNeighborPlaybackCoordinator_cold_2(&v10))
  {
    return v10;
  }

  if (a2)
  {
    v7 = CFRetain(a2);
  }

  else
  {
    v7 = 0;
  }

  v6[2] = v7;
  v8 = FigXPCServerAssociateCopiedObjectWithNeighborProcess();
  if (v8)
  {
    CFRelease(v6);
  }

  return v8;
}

BOOL FigXPCPlaybackCoordinatorServerHandlesMessagesForObject(const void *a1)
{
  result = 0;
  if (a1)
  {
    v1 = CFGetTypeID(a1);
    if (v1 == FigPlaybackCoordinatorGetTypeID(v1, v2))
    {
      return 1;
    }
  }

  return result;
}

uint64_t serverXPCCoordinator_handleEndSuspensionProposingNewTime(uint64_t a1, uint64_t a2, xpc_object_t xdict)
{
  v11 = *MEMORY[0x1E6960C70];
  v12 = *(MEMORY[0x1E6960C70] + 16);
  int64 = xpc_dictionary_get_int64(xdict, "SuspensionID");
  FigXPCMessageGetCMTime();
  Value = CFDictionaryGetValue(*(a2 + 40), int64);
  if (Value)
  {
    v7 = Value;
    CFRetain(Value);
    CFDictionaryRemoveValue(*(a2 + 40), int64);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v8)
    {
      v13 = v11;
      v14 = v12;
      v9 = v8(a1, v7, &v13);
    }

    else
    {
      v9 = 4294954514;
    }

    CFRelease(v7);
  }

  else
  {
    serverXPCCoordinator_handleEndSuspensionProposingNewTime_cold_1(&v13);
    return v13;
  }

  return v9;
}

uint64_t serverXPCCoordinator_handleSetWeakMediumAndCallbacks(uint64_t a1, uint64_t a2, void *a3, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  v8 = *(a2 + 24);
  if (v8)
  {
    CFRelease(v8);
    *(a2 + 24) = 0;
  }

  if (FigPlaybackCoordinatorServerMediumGetTypeID_sRegisterFigPlaybackCoordinatorServerMediumTypeOnce != -1)
  {
    serverXPCCoordinator_handleSetWeakMediumAndCallbacks_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v10 = Instance;
  if (Instance)
  {
    *(Instance + 32) = 1;
    *(Instance + 40) = FigSimpleMutexCreate();
    v10[2] = xpc_retain(a3);
    v10[3] = uint64;
  }

  else if (!serverXPCCoordinator_handleSetWeakMediumAndCallbacks_cold_2(&v15))
  {
    return v15;
  }

  v14[0] = 0;
  v14[1] = 0;
  v14[2] = coordinatorServerMedium_broadcastTimelineState;
  v14[3] = coordinatorServerMedium_broadcastParticipantState;
  v14[4] = coordinatorServerMedium_asynchronouslyReloadTimelineState;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v11)
  {
    v12 = v11(a1, v10, v14);
    if (!v12)
    {
      *(a2 + 24) = v10;
      return v12;
    }
  }

  else
  {
    v12 = 4294954514;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v12;
}

uint64_t serverXPCCoordinator_handleCopyParticipantSnapshots(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v3)
  {
    return 4294954514;
  }

  v4 = v3(a1, &cf);
  v5 = cf;
  if (v4)
  {
    v6 = v4;
    if (!cf)
    {
      return v6;
    }

    goto LABEL_4;
  }

  v6 = FigXPCMessageSetTimelineCoordinatorParticipantSnapshots();
  v5 = cf;
  if (cf)
  {
LABEL_4:
    CFRelease(v5);
  }

  return v6;
}

uint64_t serverXPCCoordinator_handleDisconnectFromMedium(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t serverXPCCoordinator_handleAsyncReloadCompletion(uint64_t a1, xpc_object_t xdict)
{
  int64 = xpc_dictionary_get_int64(xdict, "FetchID");
  if (int64)
  {
    if (*(a1 + 24))
    {
      v4 = int64;
      FigSimpleMutexLock();
      v5 = *(a1 + 24);
      if (v4 == v5[6])
      {
        v6 = v5[7];
        v7 = v5[8];
        v5[6] = 0;
        v5[7] = 0;
        v5[8] = 0;
        FigSimpleMutexUnlock();
        if (v7)
        {
          v7(v6);
        }
      }

      else
      {
        FigSimpleMutexUnlock();
      }

      return 0;
    }

    else
    {
      serverXPCCoordinator_handleAsyncReloadCompletion_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    serverXPCCoordinator_handleAsyncReloadCompletion_cold_2(&v10);
    return v10;
  }
}

uint64_t FigXPCPlaybackCoordinatorServerStartAsSubserver(uint64_t a1)
{
  if (gPlaybackCoordinatorServer)
  {
    FigXPCPlaybackCoordinatorServerStartAsSubserver_cold_1(&v3);
    return v3;
  }

  if (!a1)
  {
    FigXPCPlaybackCoordinatorServerStartAsSubserver_cold_2(&v3);
    return v3;
  }

  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = __FigXPCPlaybackCoordinatorServerStartAsSubserver_block_invoke;
  v2[3] = &__block_descriptor_tmp_3;
  v2[4] = a1;
  if (FigXPCPlaybackCoordinatorServerStartAsSubserver_onceToken == -1)
  {
    return 0;
  }

  dispatch_once(&FigXPCPlaybackCoordinatorServerStartAsSubserver_onceToken, v2);
  return 0;
}

uint64_t __ServedPlaybackCoordinatorStateGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CA440 = result;
  return result;
}

double servedPlaybackCoordinatorState_Init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void servedPlaybackCoordinatorState_Finalize(void *a1)
{
  v2 = a1[2];
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (v3)
  {
    v3(v2);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
    a1[2] = 0;
  }

  v5 = a1[3];
  if (v5)
  {
    CFRelease(v5);
    a1[3] = 0;
  }

  v6 = a1[5];
  if (v6)
  {
    CFRelease(v6);
    a1[5] = 0;
  }
}

__CFString *servedPlaybackCoordinatorState_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"ServedPlaybackCoordinatorState %p", a1);
  return Mutable;
}

uint64_t registerFigPlaybackCoordinatorServerMediumType()
{
  result = _CFRuntimeRegisterClass();
  sFigPlaybackCoordinatorServerMediumID = result;
  return result;
}

double FigPlaybackCoordinatorServerMedium_Init(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t FigPlaybackCoordinatorServerMedium_Finalize(void *a1)
{
  coordinatorServerMedium_cancelOutstandingFetchAndRecordNewCallback(a1, 0, 0, 0);
  FigXPCRelease();

  return FigSimpleMutexDestroy();
}

uint64_t coordinatorServerMedium_cancelOutstandingFetchAndRecordNewCallback(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  FigSimpleMutexLock();
  if (a1[8])
  {
    v8 = a1[7];
  }

  else
  {
    v8 = 0;
  }

  v11 = a1[8];
  a1[7] = a2;
  a1[8] = a3;
  v9 = a1[4];
  a1[4] = v9 + 1;
  a1[6] = v9;
  if (a4)
  {
    *a4 = v9;
  }

  result = FigSimpleMutexUnlock();
  if (v11)
  {

    return v11(v8);
  }

  return result;
}

__CFString *FigPlaybackCoordinatorServerMedium_CopyDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigPlaybackCoordinatorServerMedium %p>", a1);
  return Mutable;
}

uint64_t OUTLINED_FUNCTION_5_7()
{

  return CMBaseObjectGetVTable();
}

void CEA608CustomRenderer::~CEA608CustomRenderer(CEA608CustomRenderer *this)
{
  *this = &unk_1F0ADB158;
  v2 = *(this + 13);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 15);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 16);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 18);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 17);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 12);
  if (v8)
  {
    CFRelease(v8);
  }

  CEA608Renderer::~CEA608Renderer(this);
}

{
  CEA608CustomRenderer::~CEA608CustomRenderer(this);

  JUMPOUT(0x19A8D5150);
}

uint64_t CEA608CustomRenderer::SetProperty(CEA608CustomRenderer *this, CFTypeRef cf1, const __CFData *a3)
{
  if (CFEqual(cf1, @"RenderCallback"))
  {
    BytePtr = CFDataGetBytePtr(a3);
    if (BytePtr && *BytePtr)
    {
      if (*(BytePtr + 1))
      {
        *(this + 11) = *BytePtr;
        *(this + 12) = FigCFWeakReferenceHolderCreateWithReferencedObject();
      }
    }

    return 0;
  }

  else
  {

    return TextRendererBase::SetProperty(this, cf1, a3);
  }
}

uint64_t CEA608CustomRenderer::Render(CEA608CustomRenderer *this, CGContext *a2, const CGRect *a3, const CGRect *a4)
{
  v5 = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 16);
  return (*(*this + 216))(this, a2, &v5, a3, a4);
}

void CEA608CustomRenderer::CallRenderCallback(CEA608CustomRenderer *this, uint64_t a2, const __CFDictionary *a3, CMTime *a4)
{
  if (*(this + 11))
  {
    v8 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v8)
    {
      v9 = v8;
      v10 = *(this + 11);
      v11 = *&a4->value;
      epoch = a4->epoch;
      v10(a2, a3, &v11, v8);
      CFRelease(v9);
    }
  }
}

uint64_t CEA608CustomRenderer::RenderAtTime(CEA608CustomRenderer *this, CGContext *a2, CMTime *a3, const CGRect *a4, const CGRect *a5)
{
  v6 = *(this + 8);
  if (v6 == 1)
  {
    v24 = 0;
    theArray = 0;
    v8 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"F", *(this + 13));
    CFDictionarySetValue(Mutable, @"B", *(this + 15));
    CFDictionarySetValue(Mutable, @"U", *(this + 14));
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    v23 = *a3;
    CEA608CustomRenderer::CallRenderCallback(this, 0, Mutable, &v23);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    CEA608CustomRenderer::BuildRowCommandArray(this);
    CEA608CustomRenderer::DetectCaptionElements(this, &theArray, &v24);
    v10 = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
    v11 = theArray;
    if (theArray && CFArrayGetCount(theArray) >= 1)
    {
      v12 = 0;
      do
      {
        v13 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        ValueAtIndex = CFArrayGetValueAtIndex(v11, v12);
        FigCFDictionarySetInt32();
        CFDictionaryAddValue(v13, @"R", ValueAtIndex);
        CFDictionarySetValue(v13, @"U", *(this + 14));
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        CFArrayAppendValue(v10, v13);
        if (v13)
        {
          CFRelease(v13);
        }

        ++v12;
      }

      while (CFArrayGetCount(v11) > v12);
    }

    v15 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(v15, @"F", *(this + 13));
    CFDictionaryAddValue(v15, @"W", v10);
    if (v10)
    {
      CFRelease(v10);
    }

    v23 = *a3;
    CEA608CustomRenderer::CallRenderCallback(this, 6, v15, &v23);
    if (v15)
    {
      CFRelease(v15);
    }

    v16 = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
    v17 = v24;
    if (v24 && CFArrayGetCount(v24) >= 1)
    {
      v18 = 0;
      do
      {
        v19 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v20 = CFArrayGetValueAtIndex(v17, v18);
        FigCFDictionarySetInt32();
        CFDictionaryAddValue(v19, @"R", v20);
        CFArrayAppendValue(v16, v19);
        if (v19)
        {
          CFRelease(v19);
        }

        ++v18;
      }

      while (CFArrayGetCount(v17) > v18);
    }

    v21 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(v21, @"F", *(this + 13));
    CFDictionaryAddValue(v21, @"C", v16);
    if (v16)
    {
      CFRelease(v16);
    }

    v23 = *a3;
    CEA608CustomRenderer::CallRenderCallback(this, 7, v21, &v23);
    if (v21)
    {
      CFRelease(v21);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    CEA608Renderer::Memory::SetDirty(*(this + 4), 0);
    v23 = *a3;
    CEA608CustomRenderer::CallRenderCallback(this, 1, 0, &v23);
    LOBYTE(v6) = *(this + 8);
  }

  *(this + 72) = v6;
  return 0;
}

void CEA608CustomRenderer::BuildRowCommandArray(CEA608CustomRenderer *this)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = 1;
  valuePtr = 1;
  v3 = *MEMORY[0x1E695E480];
  v4 = *MEMORY[0x1E695E4D0];
  v5 = *MEMORY[0x1E695E4C0];
  v6 = @"a";
  allocator = *MEMORY[0x1E695E480];
  do
  {
    if (CEA608Renderer::MemoryRow::IsDirty(*(*(this + 4) + 8 * v2 + 8)))
    {
      CEA608CustomRenderer::EraseRow(this, valuePtr);
      if (CEA608Renderer::MemoryRow::IsDisplayable(*(*(this + 4) + 8 * valuePtr + 8)))
      {
        Mutable = CFAttributedStringCreateMutable(v3, 0);
        if (Mutable)
        {
          v8 = Mutable;
          CFAttributedStringBeginEditing(Mutable);
          v9 = CFStringCreateWithCharacters(v3, *(*(*(this + 4) + 8 * valuePtr + 8) + 256), 32);
          if (v9)
          {
            v10 = v9;
            v44.location = 0;
            v44.length = 0;
            CFAttributedStringReplaceString(v8, v44, v9);
            CFRelease(v10);
          }

          v11 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v12 = 1;
          do
          {
            longestEffectiveRange = 0;
            v39 = 0u;
            v37 = 0;
            CEA608Renderer::MemoryRow::GetStyleForCell(*(*(this + 4) + 8 * valuePtr + 8), v12, &longestEffectiveRange, &v37 + 1, &v37);
            v13 = CEA608Renderer::MemoryRow::GetNextStyleChange(*(*(this + 4) + 8 * valuePtr + 8), v12);
            CFDictionaryRemoveAllValues(v11);
            if (HIBYTE(v37))
            {
              v14 = v4;
            }

            else
            {
              v14 = v5;
            }

            CFDictionarySetValue(v11, @"d", v14);
            if (v37)
            {
              v15 = v4;
            }

            else
            {
              v15 = v5;
            }

            CFDictionarySetValue(v11, v6, v15);
            if (HIBYTE(v37) == 1)
            {
              if (longestEffectiveRange.location)
              {
                *components = vcvtq_f64_f32(*longestEffectiveRange.location);
                v42 = vcvtq_f64_f32(*(longestEffectiveRange.location + 8));
                v16 = CGColorCreate(*(this + 16), components);
                if (v16)
                {
                  v17 = v16;
                  CFDictionarySetValue(v11, @"t", v16);
                  CGColorRelease(v17);
                }
              }

              if (longestEffectiveRange.length)
              {
                *components = vcvtq_f64_f32(*longestEffectiveRange.length);
                v42 = vcvtq_f64_f32(*(longestEffectiveRange.length + 8));
                v18 = CGColorCreate(*(this + 16), components);
                if (v18)
                {
                  v19 = v18;
                  CFDictionarySetValue(v11, @"b", v18);
                  CGColorRelease(v19);
                }
              }

              if (DWORD1(v39) == 1)
              {
                v20 = v4;
              }

              else
              {
                v20 = v5;
              }

              CFDictionarySetValue(v11, @"i", v20);
              if (v39 == 1)
              {
                v21 = v4;
              }

              else
              {
                v21 = v5;
              }

              CFDictionarySetValue(v11, @"u", v21);
              if (DWORD2(v39) == 1)
              {
                v22 = v4;
              }

              else
              {
                v22 = v5;
              }

              CFDictionarySetValue(v11, @"f", v22);
            }

            v45.location = v12 - 1;
            v45.length = v13 - v12;
            CFAttributedStringSetAttributes(v8, v45, v11, 1u);
            v12 = v13;
          }

          while (v13 < 33);
          CFAttributedStringEndEditing(v8);
          if (v11)
          {
            CFRelease(v11);
          }

          v3 = allocator;
          value = CFNumberCreate(allocator, kCFNumberSInt8Type, &valuePtr);
          if (value)
          {
            Length = CFAttributedStringGetLength(v8);
            v24 = 0;
            do
            {
              longestEffectiveRange.location = 0;
              longestEffectiveRange.length = 0;
              v46.length = Length - v24;
              v46.location = v24;
              AttributeAndLongestEffectiveRange = CFAttributedStringGetAttributeAndLongestEffectiveRange(v8, v24, @"d", v46, &longestEffectiveRange);
              if (CFBooleanGetValue(AttributeAndLongestEffectiveRange))
              {
                v26 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (v26)
                {
                  v27 = v26;
                  v28 = v6;
                  v29 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  if (v29)
                  {
                    v30 = v29;
                    CFDictionarySetValue(v27, @"F", *(this + 13));
                    CFDictionarySetValue(v27, @"B", *(this + 15));
                    CFDictionarySetValue(v27, @"U", *(this + 14));
                    FigCFDictionarySetInt32();
                    FigCFDictionarySetInt32();
                    v31 = CFAttributedStringCreateWithSubstring(v3, v8, longestEffectiveRange);
                    CFDictionarySetValue(v27, @"S", v31);
                    CFRelease(v31);
                    ++longestEffectiveRange.location;
                    v32 = CFNumberCreate(allocator, kCFNumberCFIndexType, &longestEffectiveRange);
                    CFDictionarySetValue(v30, @"x", v32);
                    v33 = v32;
                    v3 = allocator;
                    CFRelease(v33);
                    CFDictionarySetValue(v30, @"y", value);
                    CFDictionarySetValue(v27, @"L", v30);
                    CFRelease(v30);
                    ValueAtIndex = CFArrayGetValueAtIndex(*(this + 17), valuePtr - 1);
                    CFArrayAppendValue(ValueAtIndex, v27);
                  }

                  CFRelease(v27);
                  v6 = v28;
                }
              }

              v24 += longestEffectiveRange.length;
            }

            while (v24 < Length);
            CFSetAddValue(*(this + 18), value);
            CFRelease(value);
          }

          CFRelease(v8);
        }
      }
    }

    v2 = ++valuePtr;
  }

  while (valuePtr < 16);
}

void CEA608CustomRenderer::DetectCaptionElements(CEA608CustomRenderer *this, const __CFArray **a2, const __CFArray **a3)
{
  v3 = MEMORY[0x1EEE9AC00](this, a2, a3);
  v43 = v4;
  v44 = v5;
  v52 = *MEMORY[0x1E69E9840];
  v50 = v3;
  Count = CFArrayGetCount(*(v3 + 136));
  bzero(v51, 0x3C00uLL);
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  if (Count >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v50 + 136), v9);
      v12 = CFArrayGetCount(ValueAtIndex);
      if (v12 >= 1)
      {
        v13 = v12;
        v14 = 0;
        v15 = &v51[2 * v10];
        do
        {
          v16 = CFArrayGetValueAtIndex(ValueAtIndex, v14);
          v53.origin.x = CEA608CustomRenderer::GetCellRectFromCommandData(v16, v16);
          *v15 = v53;
          if (!CGRectIsNull(v53))
          {
            CFArrayAppendValue(Mutable, v15);
          }

          ++v14;
          ++v15;
        }

        while (v13 != v14);
        v10 += v14;
      }

      ++v9;
    }

    while (v9 != Count);
  }

  v17 = CFArrayGetCount(Mutable);
  if (v17 > 1)
  {
    v18 = v17;
    while (2)
    {
      v19 = 0;
LABEL_13:
      v20 = CFArrayGetValueAtIndex(Mutable, v19++);
      v21 = v19;
      while (1)
      {
        v22 = CFArrayGetValueAtIndex(Mutable, v21);
        if (CEA608CustomRenderer::DoesRectIntersectOrTounchRect(v22, *v20, *v22))
        {
          break;
        }

        if (++v21 >= v18)
        {
          if (v19 < v18 - 1)
          {
            goto LABEL_13;
          }

          goto LABEL_19;
        }
      }

      *v20 = CGRectUnion(*v20, *v22);
      CFArrayRemoveValueAtIndex(Mutable, v21);
      v18 = CFArrayGetCount(Mutable);
      if (v18 > 1)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:
  v23 = MEMORY[0x1E695E9C0];
  theArray = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
  v46 = CFArrayCreateMutable(v7, 0, v23);
  v45 = CFArrayGetCount(Mutable);
  if (v45 >= 1)
  {
    v24 = 0;
    v25 = MEMORY[0x1E695E9C0];
    do
    {
      v26 = CFArrayCreateMutable(v7, 0, v25);
      v49 = v24;
      v27 = CFArrayGetValueAtIndex(Mutable, v24);
      v28 = *v27;
      v29 = v27[1];
      v30 = v27[2];
      v31 = v27[3];
      v54.origin.x = *v27;
      v54.origin.y = v29;
      v54.size.width = v30;
      v54.size.height = v31;
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v54);
      CFArrayAppendValue(theArray, DictionaryRepresentation);
      v55.origin.x = v28;
      v55.origin.y = v29;
      v55.size.width = v30;
      v55.size.height = v31;
      for (i = CGRectGetMinY(v55); ; ++i)
      {
        v56.origin.x = v28;
        v56.origin.y = v29;
        v56.size.width = v30;
        v56.size.height = v31;
        if (i >= CGRectGetMaxY(v56))
        {
          break;
        }

        v33 = CFArrayCreateMutable(v7, 0, v25);
        v34 = CFArrayGetValueAtIndex(*(v50 + 136), i);
        v35 = CFArrayGetCount(v34);
        if (v35 >= 1)
        {
          v36 = v35;
          for (j = 0; j != v36; ++j)
          {
            v38 = CFArrayGetValueAtIndex(v34, j);
            v57.origin.x = CEA608CustomRenderer::GetCellRectFromCommandData(v38, v38);
            x = v57.origin.x;
            y = v57.origin.y;
            width = v57.size.width;
            height = v57.size.height;
            if (!CGRectIsNull(v57))
            {
              v58.origin.x = v28;
              v58.origin.y = v29;
              v58.size.width = v30;
              v58.size.height = v31;
              v59.origin.x = x;
              v59.origin.y = y;
              v59.size.width = width;
              v59.size.height = height;
              if (CGRectContainsRect(v58, v59))
              {
                CFArrayAppendValue(v33, v38);
              }
            }
          }
        }

        CFArrayAppendValue(v26, v33);
        if (v33)
        {
          CFRelease(v33);
        }
      }

      CFArrayAppendValue(v46, v26);
      if (v26)
      {
        CFRelease(v26);
      }

      if (DictionaryRepresentation)
      {
        CFRelease(DictionaryRepresentation);
      }

      v24 = v49 + 1;
    }

    while (v49 + 1 != v45);
  }

  *v43 = theArray;
  *v44 = v46;
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void CEA608CustomRenderer::EraseRow(CFArrayRef *this, unsigned __int8 a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt8Type, &valuePtr);
  if (CFSetContainsValue(this[18], v3))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(this[17], valuePtr - 1);
    CFArrayRemoveAllValues(ValueAtIndex);
    CFSetRemoveValue(this[18], v3);
  }

  CFRelease(v3);
}

double CEA608CustomRenderer::GetCellRectFromCommandData(CEA608CustomRenderer *this, CFDictionaryRef theDict)
{
  v3 = *MEMORY[0x1E695F050];
  if (CFDictionaryGetValue(theDict, @"L"))
  {
    if (FigCFDictionaryGetInt32IfPresent())
    {
      if (FigCFDictionaryGetInt32IfPresent())
      {
        Value = CFDictionaryGetValue(theDict, @"S");
        if (Value)
        {
          if (CFAttributedStringGetLength(Value))
          {
            return -1;
          }
        }
      }
    }
  }

  return v3;
}

BOOL CEA608CustomRenderer::DoesRectIntersectOrTounchRect(CEA608CustomRenderer *this, CGRect a2, CGRect a3)
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = a2.size.height;
  v8 = a2.size.width;
  v9 = a2.origin.y;
  v10 = a2.origin.x;
  result = 0;
  if (!CGRectIsNull(a2))
  {
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    if (!CGRectIsNull(v26))
    {
      v27.origin.x = v10;
      v27.origin.y = v9;
      v27.size.width = v8;
      v27.size.height = v7;
      MinX = CGRectGetMinX(v27);
      v28.size.height = height;
      v12 = MinX;
      v28.origin.x = x;
      v28.origin.y = y;
      v28.size.width = width;
      rect = v28.size.height;
      if (v12 >= CGRectGetMinX(v28))
      {
        v30.origin.x = x;
        v30.origin.y = y;
        v30.size.width = width;
        v30.size.height = rect;
        MaxX = CGRectGetMaxX(v30);
        v14 = v10;
        v15 = v9;
        v16 = v8;
        v17 = v7;
      }

      else
      {
        v29.origin.x = v10;
        v29.origin.y = v9;
        v29.size.width = v8;
        v29.size.height = v7;
        MaxX = CGRectGetMaxX(v29);
        v14 = x;
        v15 = y;
        v16 = width;
        v17 = rect;
      }

      if (MaxX >= CGRectGetMinX(*&v14))
      {
        v31.origin.x = v10;
        v31.origin.y = v9;
        v31.size.width = v8;
        v31.size.height = v7;
        MinY = CGRectGetMinY(v31);
        v32.origin.x = x;
        v32.origin.y = y;
        v32.size.width = width;
        v32.size.height = rect;
        if (MinY >= CGRectGetMinY(v32))
        {
          v34.origin.x = x;
          v34.origin.y = y;
          v34.size.width = width;
          v34.size.height = rect;
          MaxY = CGRectGetMaxY(v34);
          v20 = v10;
          v21 = v9;
          v22 = v8;
          v23 = v7;
        }

        else
        {
          v33.origin.x = v10;
          v33.origin.y = v9;
          v33.size.width = v8;
          v33.size.height = v7;
          MaxY = CGRectGetMaxY(v33);
          v20 = x;
          v21 = y;
          v22 = width;
          v23 = rect;
        }

        if (MaxY >= CGRectGetMinY(*&v20))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t cea708IsThereValidRowData(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 74;
  while (2)
  {
    for (i = 0; i != 1008; i += 24)
    {
      if (*(v2 + i))
      {
        return 1;
      }
    }

    ++v1;
    v2 += 1010;
    if (v1 != 15)
    {
      continue;
    }

    break;
  }

  return 0;
}

double FigCEA708CaptionDecoderCreate(uint64_t a1, CMFormatDescriptionRef desc, uint64_t a3, uint64_t a4, uint64_t a5, CFTypeRef *a6)
{
  if (a4)
  {
    v7 = a3 != 0;
  }

  else
  {
    v7 = 0;
  }

  if ((a3 != 0) != (a4 != 0))
  {
    FigCEA708CaptionDecoderCreate_cold_3(v20);
    return result;
  }

  if (!desc)
  {
    FigCEA708CaptionDecoderCreate_cold_2(v20);
    return result;
  }

  if (!a6)
  {
    FigCEA708CaptionDecoderCreate_cold_1(v20);
    return result;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  v11 = MediaSubType;
  if (MediaSubType == 1635017571 || MediaSubType == 1664561208)
  {
    FigCaptionDecoderGetClassID();
    v12 = CMDerivedObjectCreate();
    v14 = 0;
    if (!v12)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      bzero(DerivedStorage, 0x7516A8uLL);
      *DerivedStorage = v11;
      if (!v7 || (*(DerivedStorage + 1) = a3, v16 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (*(DerivedStorage + 2) = v16) != 0))
      {
        DerivedStorage[6] = 0;
        *(DerivedStorage + 4) = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
        cea708Initialize(DerivedStorage);
        *a6 = 0;
        return result;
      }

      fig_log_get_emitter();
      result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v19, v20[1]);
      v14 = cf;
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950854, "< CEA708Decoder >", 2460, v6);
  }

  return result;
}

void cea708Initialize(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 112;
  v4 = (a1 + 120);
  do
  {
    *(v3 + 121800 * v2 + 1) = -1;
    v5 = v4;
    v6 = 8;
    do
    {
      bzero(v5, 0x3B78uLL);
      v5 += 15224;
      --v6;
    }

    while (v6);
    ++v2;
    v4 += 121800;
  }

  while (v2 != 63);
  *(a1 + 88) = -1;
  *(a1 + 96) = 0;
  v7 = *(a1 + 104);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 104) = 0;
  }

  v8 = MEMORY[0x1E6960C70];
  *(a1 + 40) = *MEMORY[0x1E6960C70];
  *(a1 + 56) = *(v8 + 16);
  *(a1 + 64) = 0;
  v9 = *(a1 + 72);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 72) = 0;
  }

  *(a1 + 80) = 0x41F0000000000000;
}

void cea708_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = DerivedStorage[13];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[9];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = DerivedStorage[2];
  if (v5)
  {

    CFRelease(v5);
  }
}

__CFString *cea708_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<CEA708CaptionDecoder %p>", a1);
  return Mutable;
}

double cea708_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFNumberRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v8 = DerivedStorage;
    if (FigCFEqual())
    {
      valuePtr = *(v8 + 24) + 1;
      *a4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    }

    else
    {
      emitter = fig_log_get_emitter();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954512, "< CEA708Decoder >", 2245, v4);
    }
  }

  else
  {
    cea708_CopyProperty_cold_1(&v12);
  }

  return result;
}

void cea708_SetProperty(uint64_t a1, uint64_t a2, const __CFNumber *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v7 = DerivedStorage;
    if (FigCFEqual())
    {
      valuePtr = 0;
      if (a3 && (v8 = CFGetTypeID(a3), v8 == CFNumberGetTypeID()))
      {
        CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
        if (*(v7 + 24) != valuePtr - 1)
        {
          *(v7 + 24) = valuePtr - 1;
        }
      }

      else
      {
        cea708_SetProperty_cold_1(&v11);
      }
    }

    else
    {
      emitter = fig_log_get_emitter();

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954512, "< CEA708Decoder >", 2279, v3);
    }
  }

  else
  {
    cea708_SetProperty_cold_2(&v12);
  }
}